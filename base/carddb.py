# coding:utf-8
from base import *
from base.db import DB
from base.userdb import UserDB
from base.bankdb import BankDB


class CardDB:
    def __init__(self, db):
        self.db = db

    def add(self, card: Card):
        sql = "insert card(number,money,passwd, user_id, bank_id) values (%s,%s,md5(%s), %s,%s)"
        if self.db.modify(sql, (card.number, card.money, card.passwd, card.user.id, card.bank.id)):
            print(card.number, "添加成功!")

    def updatePasswd(self, number, oldPasswd, newPasswd):
        # 修改密码, card的状态必须是正常的,参考banks.sql

        sql = "update card set passwd=md5(%s) where number=%s and passwd=md5(%s) and state='Y'"
        if self.db.modify(sql, (newPasswd, number, oldPasswd)):
            print(number, "密码更新成功!")
        else:
            print(number, "修改密码失败!请保证银行卡未被注销或口令正确。")

    def updateMoney(self, number, passwd, money):
        # 修改金额
        sql = "update card set money=%s where id=%s and passwd=md5(%s) and state='Y'"
        if self.db.modify(sql,
                          (money, number, passwd)):
            print(number, "金额更新成功!")

    def delete(self, number):
        sql = "update card set state='N' where number=%s"
        if self.db.modify(sql, (number,)):
            print(number, "此卡已注销")

    def getAll(self):
        datas = self.db.query("select * from card")
        _list = []

        udb = UserDB(self.db)
        bdb = BankDB(self.db)
        for row in datas:
            row["user"] = udb.getById(row.get('user_id'))
            row["bank"] = bdb.getById(row.get('bank_id'))
            _list.append(Card.toCard(**row))

        return _list

    def getByNumberAndPasswd(self, number, passwd):
        data = self.db.query("select * from card where number=%s and passwd=%s and state='Y'", (number, passwd))
        return Card.toCard(**data)


if __name__ == '__main__':
    db = DB('127.0.0.1', 'banks')
    cdb = CardDB(db)

    udb = UserDB(db)  # user库
    bdb = BankDB(db)  # bank库

    # user = udb.getById(3)
    # bank = bdb.getById(2)
    #
    # # 添加银行卡
    # card = Card('9876543211100', '123', 10000, user, bank)
    # cdb.add(card)

    # 修改密码
    #cdb.updatePasswd('9876543211100', '123', '456')


    # 注销银行卡
    cdb.delete('9876543211100')

    # 注销后不能再对此卡进行修改操作
    cdb.updateMoney('9876543211100','456',90000)

    # 查询所有银行卡信息
    for card in cdb.getAll():
        print(card.number, card.money, card.user.name, card.bank.name)

    db.close() # 关闭连接