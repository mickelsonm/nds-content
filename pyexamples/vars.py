#!/usr/bin/env python

NAME='Matt Mickelson'

def modifyname():
  global NAME
  NAME = 'Matt'
  print NAME

def main():
  print NAME
  modifyname()

if __name__ == "__main__":
  main()
