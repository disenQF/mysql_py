# coding:utf-8
from base import *
from base.db import DB

class UserDB:
    def __init__(self, db):
        self.db = db

    def add(self,user:User):
        sql = "insert user(name,number,phone) values (%s,%s,%s)"
        if self.db.modify(sql, (user.name,user.number,user.phone)):
            print(user.name, "添加成功!")

    def update(self,user:User):
        sql = "update user set name=%s, number=%s, phone=%s where id=%s"
        if self.db.modify(sql,
                          (user.name,user.number,user.phone, user.id)):
            print(user.name, "更新成功!")

    def delete(self,uid):
        sql = "delete from user where id=%s"
        if self.db.modify(sql, (uid,)):
            print(uid, "此用户已被删除")

    def getAll(self):
        datas = self.db.query("select * from user")
        user_list = []
        for row in datas:
            user_list.append(User.toUser(**row))

        return user_list

    def getById(self, uid):
        userData = self.db.query("select * from user where id=%s", (uid))
        return User.toUser(**userData[0])

    def __del__(self):
        self.db.close()


if __name__ == '__main__':
    db = DB('127.0.0.1', 'banks')
    udb = UserDB(db)
    users = udb.getAll()
    for user in users:
        print(user.name, user.phone)

    print('----查询 用户id 为1 的用户----')
    u1 = udb.getById(1)
    print(u1.name, u1.phone,u1.number)

    # print('---修改 --')
    # u1.name= "吴河"
    # udb.update(u1)
    # print(udb.getById(1))

    #print('--新增用户-')
    #udb.add(User('江伟', '000111198408092384', '15699870654')) # id =5

    print('删除用户')
    udb.delete(5)
