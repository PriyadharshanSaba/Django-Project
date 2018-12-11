import psycopg2
import csv
from random import randint
import mechanize
from bs4 import BeautifulSoup
import requests


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





def mech(usn_id):
    br = mechanize.Browser()
    br.set_handle_robots(False)
    br.open("http://45.112.202.148:9084/SISloginform")
    br.select_form(nr=0)
    login_usn = usn_id
    br.form['txtUserName']=login_usn
    br.form['txtPassword']=login_usn
    sub = br.submit()
    op=br.open("http://45.112.202.150:9084/SISWelcome.jsp")
    soup = BeautifulSoup(op.read(),"lxml")
    i=1
    num1= "Null"
    num2= "Null"
    num3= "Null"
    for font in soup.findAll('font',{'size':3}):
        if i==2:
            student_name = font.text
            #student_name=student_name.upper()
        elif i==24:
            num = str(font.text)
            #num = num.split()
            try:
                num = num.split(",")
                num1=num[0].split(" ")
                for c in range(0,len(num1)):
                    if len(num1[c])==0 or num1[c]=='\r\n':
                        pass
                    else:
                        num1=num1[c]
                        break
            except:
                num1="Null"

            try:
                num2=num[1]
            except:
                num2="Null"

            try:
                num3=num[2]
            except:
                num3="Null"

        elif i==26:
            email=str(font.text)
            email=email.split(" ")
            for z in range(0,len(email)):
                if len(email[z])==0 or email[z]=='\r\n':
                    pass
                else:
                    mail_id=email[z]
                    break
        i=i+1

    op_attends=br.open("http://45.112.202.150:9084/acdStdAttViewHndlr?txtAction=ListPage&txtSubAction=ViewList")
    soup = BeautifulSoup(op_attends.read(),"lxml")
    #subject_namelist = [None]*6
    subject_codelist = [None]*6
    i=0
    j=0
    for td in soup.findAll('td',{'width':'53%'}):
        if j>0:
            temp=td.text.split("   ")
            temp=temp[0].split(" - ")
            #subject_namelist[i]=temp[1]
            subject_codelist[i]=temp[0]
            i=i+1
        j=j+1

    subject_chlist = [None]*10
    i=0
    j=0
    for td in soup.findAll('td',{'width':'9%'}):
        if j>2 and j%2==0:
            subject_chlist[i]=td.text
            i=i+1
        j=j+1

    subject_calist = [None]*10
    i=0
    j=0
    for td in soup.findAll('td',{'width':'8%'}):
        if j>1:
            subject_calist[i]=td.text
            i=i+1
        j=j+1

    subject_attends = [None]*10
    i=0
    j=0
    for td in soup.findAll('td',{'width':'18%'}):
        if j>0:
            subject_attends[i]=td.text
            i=i+1
        j=j+1
    #return name,num,subject_codelist,subject_attends

    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    #insert_userDAT="INSERT INTO STUD_DET VALUES (%(uid)s,%(uname)s,%(uphone1)s,%(uphone2)s,%(uphone3)s,%(umail)s)"
    #usr_DATA={'uid':usn_id,'uname':student_name,'uphone1':num1,'uphone2':num2,'uphone3':num3,'umail':mail_id}
    #cursor.execute(insert_userDAT,usr_DATA)
    #cn.commit()
    #setmarks="INSERT INTO ATTENDS VALUES (%(uusn)s,%(s1)s,%(s1ca)s,%(s1ch)s,%(s2)s,%(s2ca)s,%(s2ch)s,%(s3)s,%(s3ca)s,%(s3ch)s,%(s4)s,%(s4ca)s,%(s4ch)s,%(s5)s,%(s5ca)s,%(s5ch)s,%(s6)s,%(s6ca)s,%(s6ch)s);"
    #marDATA={'uusn':usn_id,'s1':subject_codelist[0],'s1ca':subject_calist[0],'s1ch':subject_chlist[0],'s2':subject_codelist[1],'s2ca':subject_calist[1],'s2ch':subject_chlist[1],'s3':subject_codelist[2],'s3ca':subject_calist[2],'s3ch':subject_chlist[2],'s4':subject_codelist[3],'s4ca':subject_calist[3],'s4ch':subject_chlist[3],'s5':subject_codelist[4],'s5ca':subject_calist[4],'s5ch':subject_chlist[4],'s6':subject_codelist[5],'s6ca':subject_calist[5],'s6ch':subject_chlist[5]}
    #cursor.execute(setmarks,marDATA)
    #cn.commit()
    return student_name,mail_id,num1,num2,num3

conn_string = "host='localhost' dbname='webmini' user='pd' password='postgres'"
conn = psycopg2.connect(conn_string)
cursor=conn.cursor()

#stu()
#sixthsem()
#internals()
mech("1MV15CS088")

cursor.close()
