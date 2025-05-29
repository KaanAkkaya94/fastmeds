from project.db import get_item
from project.models import Basket, BasketItem
from project.models import UserInfo, Order, OrderStatus
import pprint

from flask import session

def get_user():
    user_dict = session.get('user')
    if user_dict:
        return UserInfo(
            id=str(user_dict['user_id']),
            username=session.get('username'),
            userpassword=session.get('userpassword'),
            firstname=user_dict['firstname'],
            surname=user_dict['surname'],
            email=user_dict['email'],
            phone=user_dict['phone']
        )
    return None


def get_basket():
    basket_data = session.get('basket')
    user = get_user()
    user_id = user.id if user else None
    basket = Basket(user_id)
    if isinstance(basket_data, dict):
        for item_data in basket_data.get('items', []):
            item_id = item_data.get('item', {}).get('id')
            if item_id:
                item_obj = get_item(item_id)
                if item_obj:
                    basket.add_item(BasketItem(
                        id=str(item_data.get('id')),
                        item=item_obj,
                        quantity=item_data.get('quantity', 1)
                    ))
    return basket

def _save_basket_to_session(basket):
    session['basket'] = {
        'items': [
            {
                'id': item.id,
                'quantity': item.quantity,
                'item': {
                    'id': item.item.id
                }
            } for item in basket.items
        ]
    }

def add_to_basket(item_id, quantity=1):
     basket = get_basket()
     basket.add_item(BasketItem(item=get_item(item_id), quantity=quantity))
     _save_basket_to_session(basket)

def remove_from_basket(basket_item_id):
    basket = get_basket()
    basket.remove_item(basket_item_id)
    _save_basket_to_session(basket)

def empty_basket():
    session['basket'] = {
        'items': []
    }

def convert_basket_to_order(basket):
    return Order(
        id=None,
        status=OrderStatus.PENDING,
        user=get_user(),
        total_cost=basket.total_cost(),
        items=basket.items
    )
