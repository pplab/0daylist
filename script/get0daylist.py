#!/usr/bin/python3
import sys
import time
import datetime
import random
random.seed()
from ftplib import FTP

# get date of yestoday
Yestoday=datetime.date.today()-datetime.timedelta(days=1)
Y=Yestoday.strftime('%m%d')

# log in ftp
f=FTP('run6.hit.edu.cn')
f.login()
DIR='Warez/0day/'+Y
D=f.nlst(DIR)
for dd in D:
    print(dd)
f.close()
