import psycopg2
import csv
from random import randint



def sixthsem():
    i = 0
    with open("6sem_mar.csv", 'r') as f:
        for x in f:
            print(x)
            if i==0:
                i=1
                continue

            else:
                row = x.split(',')
                q = "insert into six_gpa values (%(usn)s,%(nam)s,%(i1)s,%(e1)s,%(i2)s,%(e2)s,%(i3)s,%(e3)s,%(i4)s,%(e4)s,%(i5)s,%(e5)s,%(i6)s,%(e6)s,%(i7)s,%(e7)s,%(i8)s,%(e8)s)"
                checkDATA={'usn':row[0], 'nam':row[1], 'i1':(row[2]), 'e1': (row[3]),'i2':(row[4]), 'e2': (row[5]),'i3':(row[6]), 'e3': (row[7]),'i4':(row[8]), 'e4': (row[9]),'i5':(row[10]), 'e5': (row[11]),'i6':(row[12]), 'e6': (row[13]),'i7':(row[14]), 'e7': (row[15]),'i8':(row[16]), 'e8': (row[17])}
                try:
                    cursor.execute(q,checkDATA)
                    conn.commit()
                    print("done")
                except:
                    continue

def stu():
    i = 0
    with open("6sem_mar.csv", 'r') as f:
        for x in f:
            print(x)
            if i==0:
                i=1
                continue
            else:
                row = x.split(',')
                q = "insert into login values (%(usn)s,%(psw)s,%(name)s)"
                passw = row[0][-3:]
                checkDATA={'usn':row[0], 'psw':passw, 'name':row[1]}
                try:
                    cursor.execute(q,checkDATA)
                    conn.commit()
                    print("done")
                except:
                    continue

def internals():
    i = 0
    with open("6sem_mar.csv", 'r') as f:
        for x in f:
            print(x)
            if i==0:
                i=1
                continue
            else:
                row = x.split(',')
                q = "insert into internals values (%(usn)s,%(s1)s,%(s2)s,%(s3)s,%(s4)s,%(s5)s,%(l1)s,%(l2)s)"
                checkDATA={'usn':row[0], 's1':randint(16, 20), 's2':randint(16, 20),'s3':randint(16, 20),'s4':randint(16, 20),'s5':randint(16, 20),'l1':randint(16, 20),'l2':randint(16, 20)}
                try:
                    cursor.execute(q,checkDATA)
                    conn.commit()
                    print("done")
                except:
                    continue

conn_string = "host='localhost' dbname='webmini' user='pd' password='postgres'"
conn = psycopg2.connect(conn_string)
cursor=conn.cursor()

#stu()
#sixthsem()
internals()

cursor.close()
