#!/usr/bin/env python

def forloop_example():
  for num in range(1,11):
    print num

def foreachloop_example():
  things = ['RAM','CPU','MOTHERBOARD']
  for thing in things:
    print thing

def whileloop_example():
  count = 0
  while(count < 10):
    print 'The count is:', count
    count = count + 1

def main():
  forloop_example()
  foreachloop_example()
  whileloop_example()

if __name__ == "__main__":
  main()
