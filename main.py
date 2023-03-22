import sqlite3
import os
import sys

sql_path = os.path.join(os.path.dirname(__file__), 'main.sql')

def run_sql():
    conn = sqlite3.connect('./db.sqlite')
    c = conn.cursor()
    with open(sql_path, 'r') as f:
        c.executescript(f.read())
    conn.commit()
    conn.close()

def run_query():
    conn = sqlite3.connect('./db.sqlite')
    c = conn.cursor()
    c.execute("UPDATE production SET Field = UPPER(substr(Field, 1, 1)) || LOWER(substr(Field, 2, LENGTH(Field)))")
    print(c.fetchall())
    conn.commit()
    conn.close()

if __name__ == '__main__':
    run_query()