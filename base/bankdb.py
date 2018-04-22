# coding:utf-8
from base import *
from base.db import DB

class BankDB:
    def __init__(self, db):
        self.db = db

    def add(self,bank:Bank):
        sql = "insert bank(name,address) values (%s,%s)"
        if self.db.modify(sql, (bank.name,bank.address)):
            print(bank.name, "添加成功!")

    def update(self,bank:Bank):
        sql = "update bank set name=%s, address=%s where id=%s"
        if self.db.modify(sql,
                          (bank.name, bank.address,bank.id)):
            print(bank.name, "更新成功!")

    def delete(self,bid):
        sql = "delete from bank where id=%s"
        if self.db.modify(sql, (bid,)):
            print(bid, "此用户已被删除")

    def getAll(self):
        datas = self.db.query("select * from bank")
        _list = []
        for row in datas:
            _list.append(Bank.toBank(**row))

        return _list

    def getById(self, bid):
        datas = self.db.query("select * from bank where id=%s", (bid))
        return Bank.toBank(**datas[0])


if __name__ == '__main__':
    db = DB('127.0.0.1', 'banks')
    bdb = BankDB(db)
    bank = bdb.getById(1)
    print(bank.name, bank.address)

