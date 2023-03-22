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

if __name__ == '__main__':
    run_sql()