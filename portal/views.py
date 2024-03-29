from __future__ import unicode_literals
from django.shortcuts import render
from bs4 import BeautifulSoup
import requests
import psycopg2
from django.template import RequestContext
import re
import mechanize
from pyscri import setUpNewStudentData,check_login_details,putmarksintodb,putMarksCustomSem
from pyscri import studoinfo,verificaMail,detFromDB,addi,connDB
from pyscri.teacha import teacha
import csv
import numpy
from random import randint
import smtplib


conn_string = "host='localhost' dbname='webmini' user='pd' password='postgres'"
conn = psycopg2.connect(conn_string)
cursor=conn.cursor()

def index(request):
    return render(request,'admini/pro.html',{'errorcode':['0']})

def student(request):
    return render(request,'portal/headtest.html',{'errorcode':['1']})

def headtest_incor(request):
    return render(request,'portal/headtest_incor.html')

def login_redirection_stu(request):
    x_id = request.POST['usn']
    request.session['cur_usn'] = x_id.upper()
    #checkLen = check_login_details.checkForID(x_id)
#    if checkLen == 1:
    x_pass=request.POST['psw']
    #conn =psycopg2.connect(dbname='d1v03ol0gs21v5',user='mvsjgtxaoxwmgp',password='7b32ce61d22ce32052e233639448ab315708a2c78884b39932dc9ead1b26ef53',host='ec2-54-235-123-153.compute-1.amazonaws.com',port='5432')
    #checkIT="SELECT USR_PSW FROM student_reg WHERE USR_ID= %(uid)s"

    checkIT="SELECT login_pass,name FROM login WHERE usn= %(uid)s"
    checkDATA={'uid':x_id.upper()}
    cursor.execute(checkIT,checkDATA)
    acknowledgeUSER = cursor.fetchone()
    request.session['cur_usr_nam'] = acknowledgeUSER[1]
    #try:
    #    if x_pass.strip()==(acknowledgeUSER[0]).strip():
    #        return render(request,'portal/red.html',{'name':[acknowledgeUSER[1]]})
    #except:
    #    return render(request,'portal/headtest_incor.html')
    try: #check for non registered users
        if x_pass.strip()==(acknowledgeUSER[0]).strip():
            verf_usr=verifica(x_id)
            if verf_usr == 'Y':
                return render(request,'portal/login_redirection_stu.html',{'name':[acnowledgeUSER[1]]})
            else:
                checkIT="SELECT name FROM login WHERE usn= %(susn)s"
                checkDATA={'susn':x_id.upper()}
                cursor.execute(checkIT,checkDATA)
                sFullName=cursor.fetchone()
                checkIT="SELECT regd_mail FROM genky WHERE USN= %(sn)s"
                checkDATA={'sn':x_id.upper()}
                cursor.execute(checkIT,checkDATA)
                regdMail = cursor.fetchone()
                return render(request,'portal/new_reg_verfiy.html',{'datas':[sFullName[0],regdMail[0]]}) #regdMail[0]

        else:
            return render(request,'portal/headtest_incorrect.html')
    except:
        return render(request,'portal/headtest_incorrect.html',{'alert':["Incorrect USN or Password"]})
    #else:
    #    return render(request,'portal/headtest_incorrect.html',{'alert':["This ID is not register"]})



#red.html
def red(request):
    current_usn = request.session['cur_usr_nam']
    return render(request,'portal/red.html',{'name':[current_usn]})#[name,len(fetched)]})


def getAttendance(request):
    uusn = request.session['cur_usn']
    x= studoinfo.setMarks(uusn)
    co = [None]*6
    for i in range(0,6):
        co[i] = x[2][i]
    xnam=studoinfo.subcodeToSubname(co)
    perAt=map(float,x[3])
    mes=addi.generateMessage_attend(perAt,xnam)
    return render(request,'portal/attend.html',{'datas':[x,xnam,mes]})   #x=( , ,[],[])


def attendanceFromDBMS(request):
    usn = request.session['cur_usn']
    cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    cursor=cn.cursor()
    checkIT="SELECT * FROM ATTENDS WHERE USN_ID = %(uid)s"
    checkDATA={'uid':usn}
    cursor.execute(checkIT,checkDATA)
    fet = cursor.fetchone()
    ch = [0 for chi in range(0,6)]
    ca = [0 for chi in range(0,6)]
    cod = [0 for chi in range(0,6)]
    j=0
    for i in range (1,18,3):
        if fet[i+1] == None or fet[i+2] == None or fet[i] == None:
            cod[j] = 0
            ca[j] = 0
            ch[j] = 0
        else:
            cod[j] = fet[i]
            ca[j] = fet[i+1]
            ch[j] = fet[i+2]
        j = j+1
    cat=map(float,ca)
    cheld=map(float,ch)
    perAt=(numpy.round((numpy.divide(cat,cheld)),4))*100
    xnam=studoinfo.subcodeToSubname(cod)
    return render(request,'portal/attend_preRefresh.html',{'datas':[fet,ca,ch,cod,xnam,perAt]})   #x=( , ,[],[])


####################### NEW USER #######################


def checkForID(x):
    if len(str(x)) == 10:
        return 1
    else:
        return 0

def checkIfExists(ID):
    checkIT="SELECT * FROM login WHERE usn= %(id)s"
    checkDATA={ 'id':ID }
    cursor.execute(checkIT,checkDATA)
    if cursor.fetchone():
        return 1
    else:
        return 0

#testmod.html   |   newRegMod
def registerNewStudent(request):
    new_usrID = request.POST['newusn']
    new_usrID=new_usrID.upper()
    request.session['new_user_ID']=new_usrID
    checkLen = checkForID(new_usrID)
    if checkLen == 1:
        check = checkIfExists(new_usrID)
        if check == 0:
            new_usrPass =request.POST['newpasw']
            request.session['newuserspass']=new_usrPass
            return render(request,'portal/loadingRedirecting.html')
        else:
            return render(request,'portal/headtest_exists.html')
    else:
        return render(request,'portal/headtest_incorrect.html')


def headtestExists(request):
    #User already exists
    return render(request,'portal/headtest_exists.html')



####################### NEW USER #######################



def putmar(request):
    uusn = request.session['cur_usn']

    checkIT="SELECT * FROM six_gpa WHERE usn= %(uid)s"
    checkDATA={'uid': uusn }
    cursor.execute(checkIT,checkDATA)
    x = cursor.fetchall()
    print(x)

    """
    marks = putmarksintodb.getmar(uusn)
    subject_names= putmarksintodb.getSubNam(marks)
    cod = [None]*8
    intern = [None]*8
    extern = [None]*8
    finmar = [None]*8
    j = 0
    for i in range(1,24,3):
        cod[j]=marks[i]
        intern[j]=marks[i+1]
        extern[j]=marks[i+2]
        j=j+1
    finmar=numpy.add(intern,extern)
    sortedArr = numpy.sort(finmar)
    if sortedArr[0] != 0:
        xarr = [None]*(len(sortedArr)+1)
        xarr[0] = 0
        for i in range (1,(len(sortedArr)+1)):
            xarr[i] = sortedArr[i-1]
    else:
        xarr=sortedArr
    rangeMarks0x0 = detFromDB.rangeMarks(uusn[5:7],uusn)
    rangeMarks0x1 = rangeMarks0x0[0]
    cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    cursor=cn.cursor()
    checkITK="SELECT SUB1M,SUB2M,SUB3M,SUB4M,SUB5M,SUB6M,SUB7M,SUB8M FROM SEM4_2017_CBCS15 WHERE USN = %(uid0)s"
    checkDATAK={'uid0':uusn}
    cursor.execute(checkITK,checkDATAK)
    m1 = cursor.fetchone()
    checkIT2="SELECT SUB1I,SUB2I,SUB3I,SUB4I,SUB5I,SUB6I,SUB7I,SUB8I FROM SEM4_2017_CBCS15 WHERE USN = %(uid1)s"
    checkDATA2={'uid1':uusn}
    cursor.execute(checkIT2,checkDATA2)
    m2 = cursor.fetchone()
    myMarks = list(numpy.add(m1,m2))
    #myMarks = rangeMarks0x0[1]
    graphi = 0
    graph_X_Axis = [None]*8
    #label = [0 for li in range(0,8)]
    for xaxis in range(0,8):
        #label[graphi] = ["." for lj in range(0,len(rangeMarks[graphi]))]
        graph_X_Axis[graphi] = len(rangeMarks0x1)
        graphi = graphi + 1
    """
    return render(request,'portal/putmarks.html',{'datas':[x]}) #,{'datas':[cod,subject_names,finmar.tolist(),intern,extern,xarr,rangeMarks0x1,graph_X_Axis,myMarks]}) #8


def internalmar(request):
    uusn = request.session['cur_usn']
    checkIT="SELECT * FROM internals WHERE usn= %(uid)s"
    checkDATA={'uid': uusn }
    cursor.execute(checkIT,checkDATA)
    x = cursor.fetchone()
    return render(request,'portal/internalmar.html',{'datas':[x]})




####################### SET UP NEW USER #######################




def welcomeRedirect(request):
    return render(request,'portal/welcome_page.html')


def fetchAndInsert(usn_id):
    br = mechanize.Browser()
    br.set_handle_robots(False)
    br.open("http://45.112.202.148:9084/SISloginform")
    br.select_form(nr=0)
    login_usn = usn_id
    br.form['txtUserName']=login_usn
    br.form['txtPassword']=login_usn
    sub = br.submit()
    op=br.open("http://45.112.202.148:9084/SISWelcome.jsp")
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

    op_attends=br.open("http://45.112.202.148:9084/acdStdAttViewHndlr?txtAction=ListPage&txtSubAction=ViewList")
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


def insertIntoRegister(usn,password):
    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    insert_userDAT="INSERT INTO login VALUES (%(uid)s,%(uname)s);"
    usr_DATA={'uid':usn,'uname':password}
    cursor.execute(insert_userDAT,usr_DATA)
    conn.commit()
    return



def welcomeNewRege(request):
    newUSN=request.session['new_user_ID']
    request.session['cur_usn'] = newUSN
    newPASSWORD=request.session['newuserspass']
        #try:
    insertIntoRegister(newUSN,newPASSWORD)          #setUpNewStudentData.insertIntoRegister(newUSN,newPASSWORD)
    x=fetchAndInsert(newUSN)    #x=setUpNewStudentData.fetchAndInsert(newUSN)    #[student_name,mail_id,num1,num2,num3]
    q="UPDATE login SET name = %(nam)s WHERE USN=%(uid)s"
    checkDATA={'nam':x[0],'uid':newUSN.upper()}
    cursor.execute(q,checkDATA)
    conn.commit()
    #putMarksCustomSem.main_func(newUSN[-3:],newUSN[-3:],"s4")
    oxo=generateMail(newUSN)
    mai=verificaMail.verfMail(oxo,x[1],x[0])
    temp = str(x[1])
    temp=temp.split("@")
    reg = temp[0]
    regd=reg[0]
    for r in range(1,len(temp[0])):
        if r>=3 and r<((len(temp[0]))-2):
            regd=regd+'*'
        else:
            regd=regd+str(reg[r])
    regd=regd+"@"+temp[1]
    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    checkIT="UPDATE genky SET regd_mail = %(rm)s WHERE USN=%(uid)s"
    checkDATA={'rm':regd,'uid':newUSN.upper()}
    cursor.execute(checkIT,checkDATA)
    conn.commit()
    return render(request,'portal/new_reg_verfiy.html',{'datas':[x[0],regd]})



def verifyUser(request):
    return render(request,'portal/verification_page.html')


def generateMail(usn):
    xo = randint(1000,9999)
    ran = str(xo)
    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    checkIT="INSERT INTO genky (usn,key,verf) VALUES (%(uid)s,%(key)s,%(ver)s)"
    checkDATA={'uid':usn,'key':ran,'ver':'N'}
    cursor.execute(checkIT,checkDATA)
    conn.commit()
    return ran


def verification(request):
    #kgen=request.session['otp_key']
    usn=request.session['cur_usn']
    EntKey = request.POST['otp']
    kgen = verifyCode(usn)
    if EntKey == kgen:
        verifiHit2(usn)
        q = "select name from login where usn= %(uid)s"
        checkDATA={'uid':usn }
        cursor.execute(q,checkDATA)
        name= cursor.fetchone()
        print("here\n\n\n\n\n")
        print(name)
        return render(request,'portal/red.html',{'name':[name[0]]})
    else:
        return render(request,'portal/error.html',{'datas':kgen})


def verifyCode(usn):    #from DB
    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    checkIT="SELECT KEY FROM GENKY WHERE USN = %(uid)s"
    checkDATA={'uid':usn }
    cursor.execute(checkIT,checkDATA)
    otp = cursor.fetchone()
    return otp[0]

def verifiHit2(usn):
    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    checkIT="UPDATE genky SET verf = 'Y' WHERE USN=%(uid)s"
    checkDATA={'uid':usn.upper()}
    cursor.execute(checkIT,checkDATA)
    conn.commit()
    return

def verifica(usn):
    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    checkIT="SELECT verf FROM genky WHERE usn= %(id)s"
    checkDATA={ 'id':usn.upper() }
    try:
        cursor.execute(checkIT,checkDATA)
        fee=cursor.fetchone()
        return fee[0]
    except:
        return 'Y'




####################### Notes #######################




def notes(request):
    fetched = teacha.fetchFilxPath()
    return render(request,'portal/notes.html',{'datas':fetched})

def profile_settings(request):
    return render(request,'portal/profile_settings.html',{'datas':None})

def errorStudentAcc(request):
    return render(request,'portal/error.html',{'datas':'errorStudentAcc'})

def signOut(request):
    request.session.flush()
    return render(request,'portal/headtest.html')

def loadingRedirecting(request):
    return render(request,'portal/new_reg_verfiy.html')

def changePassword(request):
    db=connDB.connect()
    usn=request.session['cur_usn']
    que="SELECT * FROM studentportal.REGISTER WHERE USR_ID=%(uid)s AND USR_PSW=%(np)s"
    dat={'np':request.POST['curPass'],'uid':usn}
    db[1].execute(que,dat)
    #print "data>>>" + str(cur.fetchone())
    if db[1].fetchone()!=None:
        if request.POST['curPass'] == request.POST['newPass']:
            return render(request,'portal/profile_settings.html',{'datas':1})
        else:
            que="UPDATE studentportal.REGISTER SET USR_PSW=%(np)s WHERE USR_ID=%(uid)s"
            dat={'np':request.POST['newPass'],'uid':usn}
            db[1].execute(que,dat)
            db[0].commit()
            return render(request,'portal/profile_settings.html',{'datas':0})
    else:
        return render(request,'portal/profile_settings.html',{'datas':2})

def changeMail(request):
    db=connDB.connect()
    usn=request.session['cur_usn']
    que="SELECT * FROM studentportal.REGISTER WHERE USR_ID=%(uid)s AND USR_PSW=%(np)s"
    dat={'np':request.POST['entPass'],'uid':usn}
    db[1].execute(que,dat)
    #print "data>>>" + str(cur.fetchone())
    if db[1].fetchone()!=None:
        que="UPDATE studentportal.STUD_DET SET MAIL=%(np)s WHERE STUD_USN=%(uid)s"
        dat={'np':request.POST['newMail'],'uid':usn}
        db[1].execute(que,dat)
        db[0].commit()
        return render(request,'portal/profile_settings.html',{'datas':0})
    else:
        return render(request,'portal/profile_settings.html',{'datas':2})

def static_attend_preRefresh(request):
    usn = request.session['cur_usn']
    #cn = psycopg2.connect(user='root', password='Rocky@2009', database='studentportal')
    #cursor=cn.cursor()
    checkIT="SELECT * FROM ATTENDS WHERE usn = %(uid)s"
    checkDATA={'uid':usn}
    cursor.execute(checkIT,checkDATA)
    fet = cursor.fetchone()
    ch = [0 for chi in range(0,6)]
    ca = [0 for chi in range(0,6)]
    cod = [0 for chi in range(0,6)]
    j=0
    for i in range (1,18,3):
        if fet[i+1] == None or fet[i+2] == None or fet[i] == None:
            cod[j] = 0
            ca[j] = 0
            ch[j] = 0
        else:
            cod[j] = fet[i]
            ca[j] = fet[i+1]
            ch[j] = fet[i+2]
        j = j+1
    cat=map(float,ca)
    cheld=map(float,ch)
    perAt=(numpy.round((numpy.divide(cat,cheld)),4))*100
    xnam=cod
    #xnam=studoinfo.subcodeToSubname(cod)
    mes=addi.generateMessage_attend(perAt,xnam)
    return render(request,'portal/static_attend_preRefresh.html',{'datas':[fet,ca,ch,cod,xnam,perAt,mes]})






########### MOBILE SITES ############

def red_mob(request):
    return render(request,'portal/mobile/headtest_mobile.html',{'datas':1})

def index_mob(request):
    return render(request,'admini/mobile/index_mobile.html',{'datas':1})
