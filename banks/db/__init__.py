# coding:utf-8
import pymysql


def queryStu():
    # 1. 连接数据库
    conn = pymysql.connect(host="10.35.163.5",
                           user="root",
                           password="root",
                           db="stus",
                           port=3306,
                           charset="utf8")
    print('数据库连接成功!')

    # 2. 创建数据库的游标操作对象
    cursor = cur = conn.cursor()

    # 3. 通过游标对象执行SQL语句
    #cur.execute("select * from stu_view")
    #cur.execute("select name,clazz_id from stu")
    cur.execute("use banks")
    cur.execute("show tables")
    # 4. 从游标对象中读取查询结果的数据
    datas = cur.fetchall()
    # print(datas)
    # print(type(datas))

    # 5. 打印查询结果的数据
    for stu in datas:
        print(stu)

    #6. 增加银行
    # cur.execute("insert into bank(name,address) values('{0}','{1}')"
    #             .format('西安银行','电子二路251号'))
    # print(cur.fetchone())
    # print(cur.rowcount) # 执行insert /update/delete 语句之后，返回影响的行数

    conn.commit()  # 提交事务


if __name__ == '__main__':
    queryStu()