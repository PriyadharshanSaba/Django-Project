
import requests
import psycopg2
import csv
from random import randint
import random

#conn_string = "host='localhost' dbname='webmini' user='krash' password='postgres'"
conn_string = "host='localhost' dbname='webmini' user='pd' password='postgres'"
conn = psycopg2.connect(conn_string)
cursor=conn.cursor()

for i in range(1,131):
    x = str(i)
    if len(x)==1:
        x = "00"+x
    elif len(x) == 2:
        x = "0"+x
    usn_id="1MV15CS"+x
    subject_codelist=["15CS71 - Web Technology and its applications","15CS72 - Advanced Computer Architectures","15CS73 - Machine Learning","15CS743 - Information and Network Security","15CS744 - Unix System Programming","15CS753 - Digital Image Processing"]
    subject_chlist=[random.randrange(24, 32) for i in range(6)]
    subject_calist=[subject_chlist[i]-random.randrange(0, 6) for i in range(6)]


    setmarks="INSERT INTO ATTENDS VALUES (%(usn)s,%(s1)s,%(s1ca)s,%(s1ch)s,%(s2)s,%(s2ca)s,%(s2ch)s,%(s3)s,%(s3ca)s,%(s3ch)s,%(s4)s,%(s4ca)s,%(s4ch)s,%(s5)s,%(s5ca)s,%(s5ch)s,%(s6)s,%(s6ca)s,%(s6ch)s);"
    marDATA={'usn':usn_id,'s1':subject_codelist[0],'s1ca':subject_calist[0],'s1ch':subject_chlist[0],'s2':subject_codelist[1],'s2ca':subject_calist[1],'s2ch':subject_chlist[1],'s3':subject_codelist[2],'s3ca':subject_calist[2],'s3ch':subject_chlist[2],'s4':subject_codelist[3],'s4ca':subject_calist[3],'s4ch':subject_chlist[3],'s5':subject_codelist[4],'s5ca':subject_calist[4],'s5ch':subject_chlist[4],'s6':subject_codelist[5],'s6ca':subject_calist[5],'s6ch':subject_chlist[5]}
    cursor.execute(setmarks,marDATA)
    conn.commit()
