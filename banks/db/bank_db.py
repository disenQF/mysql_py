# coding:utf-8
import pymysql


class DB:
    def __init__(self, dbName):
        self.dbName = dbName
        self.__db = None
        self.connect()

    def connect(self):
        try:
            self.__db = pymysql.connect(host="10.35.163.5",
                                        port=3306,
                                        db=self.dbName,
                                        user="root",
                                        password="root",
                                        charset="utf8",
                                        cursorclass=pymysql.cursors.DictCursor)
            print(self.dbName, '连接成功')
        except Exception as e:
            print(self.dbName, "连接失败")

    def query(self, tableName, *cols, **kwargs):
        if not self.__db:
            print('当前数据库{}未连接'.format(self.dbName))
            return
        # print(cols)
        # print(','.join(cols))
        print(kwargs)
        where = ""
        if kwargs.keys():
            item = kwargs.popitem()
            print(isinstance(item[1], str))
            print(isinstance(item[1], int))
            where = " where {} = '{}'".format(item[0], item[1])

        with self.__db.cursor() as cur:
            sql = "select {} from {} ".format(','.join(cols), tableName + where)
            cur.execute(sql)
            result = cur.fetchall()
        return result

    def querySql(self, sql, args):
        with self.__db.cursor() as cur:
            cur.execute(sql, args)
            return cur.fetchall()

    def add(self, sql, args):
        # 增加记录
        with self.__db.cursor() as cur:
            cur.execute(sql, args)
            self.__db.commit()  # 提交事务
            if cur.rowcount:
                return True
            else:
                return False

    def update(self, sql, args):
        pass

    def delete(self, sql, args):
        pass

    def close(self):
        if self.__db:
            self.__db.close()  # 关闭数据库连接


class User:

    def __init__(self, name, passwd, phone):
        self.name = name
        self.passwd = passwd
        self.phone = phone


class UserDB:
    def __init__(self):
        self.db = DB('banks')

    def add(self, user):
        sql = "insert user(name,number,phone) values(%s,%s,%s)"
        if self.db.add(sql, (user.name, user.passwd, user.phone)):
            print(user.name, '插入成功')

    def __del__(self):
        self.db.close()


if __name__ == '__main__':
    # https://pypi.org/project/PyMySQL/
    # db = DB('banks')
    # # result = db.query('card', 'number','money','passwd', number="9199919292876521")
    # result = db.querySql('select * from card where number = %s', ('9199919292876521',))
    # for row in result:
    #     print(row)

    userDB = UserDB()
    userDB.add(User('江风', '100200198302238765', '17866541234'))
