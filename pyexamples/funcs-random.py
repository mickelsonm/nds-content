#!/usr/bin/env python

from random import randint

def get_random_number():
  randx = randint(0,9)
  print 'your random number is %d' % randx

def main():
  get_random_number()

if __name__ == "__main__":
  main()
