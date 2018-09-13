import pymysql
##connect db and the return of cursor will be a dict.
config = {
    'host': 'localhost',
    'port': 3306,
    'user': 'root',
    'passwd': '351227',
    'db': 'user',
    'cursorclass':pymysql.cursors.DictCursor
}
conn = pymysql.connect(**config)
## initial cursor
cursor = conn.cursor(cursorclass=mdb.cursors.DictCursor)

def query(query_str,cursor):
    try:
        # execute sql language
        cursor.execute(sql)
        # get the results of the sql language
        results = cursor.fetchall()
        return results,cursor
    except:
        print("Error: unable to fecth data")
