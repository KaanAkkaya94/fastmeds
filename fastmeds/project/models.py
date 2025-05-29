from dataclasses import dataclass, field
from datetime import datetime
from typing import List
from enum import Enum
from uuid import uuid4



@dataclass
class Category:
    id: str
    name: str

@dataclass
class Item:
    id: str
    name: str
    description: str
    category: Category
    price: float


class OrderStatus(Enum):
    PENDING = 'Pending'
    CONFIRMED = 'Confirmed'
    CANCELLED = 'Cancelled'


@dataclass
class UserInfo:
    id: str
    username: str
    userpassword: str
    firstname: str
    surname: str
    email: str
    phone: str


@dataclass 
class BasketItem:
    item: Item
    quantity: int = 1
    id: str = field(default_factory=lambda: str(uuid4()))

    def total_price(self):
        return self.item.price * self.quantity

    def increment_quantity(self):
        self.quantity += 1

    def decrement_quantity(self):
        if self.quantity > 1:
            self.quantity -= 1

@dataclass
class Basket:
    userID: int
    items: List[BasketItem] = field(default_factory=lambda: [])

    def add_item(self, item: BasketItem):
        self.items.append(item)

    def remove_item(self, item_id: str):
        self.items = [item for item in self.items if item.id != item_id]

    def get_item(self, item_id: str):
        for item in self.items:
            if item.id == item_id:
                return item
        return None

    def empty(self):
        self.items = []

    def total_cost(self):
        return sum(item.total_price() for item in self.items)


@dataclass
class Order:
    id: str
    status: OrderStatus
    user: UserInfo
    total_cost: float = 0.0
    items: List[BasketItem] = field(
        default_factory=list,
        init=True)
    date: datetime = field(
        default_factory=lambda: datetime.now(),
        init=True)
    

@dataclass
class UserAccount:
    username: str
    password: str
    email: str
    info: UserInfo


    
