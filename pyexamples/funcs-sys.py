#!/usr/bin/env python

import os

def get_system_info():
  print 'hello %s' % os.getlogin()
  print 'current directory: ', os.getcwd()
  os.system('df -h')

def showtmp_info():
  for filename in os.listdir("/tmp"):
    print "This is inside /tmp: ", filename

def pathcheck_info():
   mypath = '/tmp'
   myfile = '/etc/passwd'

   #correct
   if os.path.isdir(mypath):
     print 'tmp directory found'
   
   #not correct
   if os.path.isdir(myfile):
     print 'tmp file found'

   #correct
   if os.path.isfile(myfile):
     print 'passwd file found'

   #not correct
   if os.path.isdir(myfile):
     print 'passwd dir found'

def showenv_info():
   home = os.environ['HOME']
   print 'HOME DIR = %s' % home

def main():
  get_system_info()
  pathcheck_info()
  showtmp_info()
  showenv_info()

if __name__ == "__main__":
  main()
