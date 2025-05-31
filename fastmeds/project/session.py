from project.db import get_product
from project.models import Basket, BasketItem
from project.models import UserInfo, Order, OrderStatus
import pprint

from flask import session

# This module handles session management for user and basket data in a web application.
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
            phone=user_dict['phone'],
            address=user_dict['address'],
            city=user_dict['city'],
            postcode=user_dict['postcode']
        )
    return None

def get_basket():
    basket_data = session.get('basket')
    user = get_user()
    user_id = user.id if user else None
    basket = Basket(user_id)
    if isinstance(basket_data, dict):
            for item in basket_data.get('items', []):
                product_id = item.get('product', {}).get('id')
                if product_id:
                    product = get_product(product_id)
                    if product:
                        basket.add_item(BasketItem(
                            id=str(item.get('id')),
                            product=product,
                            quantity=item.get('quantity', 1)
                        ))
    return basket

# Save the current basket to the session
def _save_basket_to_session(basket):
    session['basket'] = {
        'items': [
            {
                'id': item.id,
                'quantity': item.quantity,
                'product': {
                    'id': item.product.id
                }
            } for item in basket.items
        ]
    }

# Add a product to the basket with a specified quantity
def add_to_basket(product_id, quantity=1):
     basket = get_basket()
     basket.add_item(BasketItem(product=get_product(product_id), quantity=quantity))
     _save_basket_to_session(basket)

# Remove an item from the basket by its ID
def remove_from_basket(basket_item_id):
    basket = get_basket()
    basket.remove_item(basket_item_id)
    _save_basket_to_session(basket)

# Clear the basket by resetting it to an empty state
def empty_basket():
    session['basket'] = {
        'items': []
    }

# Convert the current basket to an order object
def convert_basket_to_order(basket):
    return Order(
        id=None,
        status=OrderStatus.PENDING,
        user=get_user(),
        total_cost=basket.total_cost(),
        items=basket.items
    )
