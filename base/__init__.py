# coding:utf-8
class User:
    def __init__(self,name, number, phone,uid=0):
        self.id = uid
        self.name = name
        self.number = number
        self.phone = phone

    def __str__(self):
        return "name={}, number={}, phone={}".format(self.name,
                                                     self.number,
                                                     self.phone)

    @classmethod
    def toUser(cls, **user):
        return User(user.get('name'),
                    user.get('number'),
                    user.get('phone'),
                    user.get('id'))


class Bank:
    def __init__(self,name, address,bid=0):
        self.id = bid;
        self.name = name
        self.address = address

    @classmethod
    def toBank(cls, **bank):
        return Bank(bank.get('name'),
                    bank.get('address'),
                    bank.get('id'))


class Card:
    def __init__(self, number, passwd, money, owner, bank):
        self.number = number
        self.passwd = passwd
        self.money = money
        self.user = owner
        self.bank = bank

    @classmethod
    def toCard(cls, **card):
        print(card)
        pass


class Trade:
    def __init__(self, **trade):
        print(trade)
