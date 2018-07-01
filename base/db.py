# coding:utf-8
import pymysql

class DB:
    def __init__(self, server, dbName):
        self.server = server
        self.dbName = dbName
        self.__db = None
        self.connect()

    def connect(self):
        try:
            self.__db = pymysql.connect(host=self.server,
                                        port=3306,
                                        db=self.dbName,
                                        user="root",
                                        password="root",
                                        charset="utf8",
                                        cursorclass=pymysql.cursors.DictCursor)
            print(self.dbName, '连接成功')
        except Exception as e:
            print(self.dbName, "连接失败")


    def query(self, sql, args=None):
        with self.__db.cursor() as cur:
            cur.execute(sql, args)
            return cur.fetchall()

    def modify(self, sql, args):
        # 增加记录
        with self.__db.cursor() as cur:
            cur.execute(sql, args)
            self.__db.commit()  # 提交事务
            if cur.rowcount:
                return True
            else:
                return False

    def close(self):
        if self.__db:
            self.__db.close()  # 关闭数据库连接

