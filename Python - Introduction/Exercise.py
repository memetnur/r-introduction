# -*- coding: utf-8 -*-
"""
Bismillah
Created on Mon Sep 21 21:48:06 2020

@author: Nurdzane Memeti
"""
#Exercise 1.1

"""1. In a print statement, what happens if you leave out one of the parentheses, or both?
#lösung: SyntaxError: invalid syntax"""
#print(hello world)

"""2,  If you are trying to print a string, what happens if you leave out one of the quotation
marks, or both?
solution: SyntaxError: EOL while scanning string literal
    """
#print("hello World)
"""3. You can use a minus sign to make a negative number like -2. What happens if you
put a plus sign before a number? What about 2++2?
solution: """
2++2
"""4. In math notation, leading zeros are ok, as in 02. What happens if you try this in
Python?
solution:SyntaxError: invalid token"""
#02
 
"""5. What happens if you have two values with no operator between them?
solution: SyntaxError: invalid syntax"""
#2 1

"""Exercise 1.2. Start the Python interpreter and use it as a calculator.
1. How many seconds are there in 42 minutes 42 seconds?
solution: 2742
"""   
a=60
b=45*a+42
print(b)

"""2. How many miles are there in 10 kilometers? Hint: there are 1.61 kilometers in a mile.
solution: """

c=1.61
d=10/c
print(d)


"""3. If you run a 10 kilometer race in 42 minutes 42 seconds, what is your average pace
(time per mile in minutes and seconds)? What is your average speed in miles per
hour?
solution:"""

distKm = 10.0
distMi = (distKm * (1.0 / 1.61))
seconds2 = ((43.0 * 60.0) + 30.0)
hours2 = (43.5 / 3600.0)

def timePerMile(distMi, seconds2):
   print (seconds / distMi, 'seconds per mile')

def avgSpeed(distMi, hours2):
   print (distMi / hours2, 'miles per hour')

timePerMile(distMi, seconds2)
avgSpeed(distMi, hours2)

distance_km=10.0
distance_mile= (distance_km * (1.0/1.61))
seconds=60.0
total_seconds=((42.0*seconds)+42.0)
hours=(total_seconds/3600)

def time_per_mile(distance_mile, total_seconds):
    print(total_seconds/distance_mile, "seconds per mile")

def average_speed(distance_mile, hours):
    print(distance_mile/hours, "miles per hour")
    
"""Exercise 2.1. Repeating my advice from the previous chapter, whenever you learn a new
feature, you should try it out in interactive mode and make errors on purpose to see what
goes wrong.
• We’ve seen that n = 42 is legal. What about 42 = n?
solution: SyntaxError: can't assign to literal"""
n=42
x=y=1

"""Exercise 2.2. Practice using the Python interpreter as a calculator:
1. The volume of a sphere with radius r is 4
3πr3
. What is the volume of a sphere with
radius 5?"""

r=4

def volume_of_sphere(r):
    print("the volume is:",(4.0/3.0)*3.14*r**3)

volume_of_sphere(5)

"""2. Suppose the cover price of a book is $24.95, but bookstores get a 40% discount. Shipping
costs $3 for the first copy and 75 cents for each additional copy. What is the total
wholesale cost for 60 copies?"""

price=24.95
shipping=3.00
shipping2=0.75
n=60.0

def costs(n):
    cover_price= (price* 0.60)
    shipping_costs=(3.00 +(0.75*n-1))
    total_costs=cover_price+shipping_costs
    print("total costs:$ ", total_costs )
    
costs(n)

"""3. If I leave my house at 6:52 am and run 1 mile at an easy pace (8:15 per mile), then 3
miles at tempo (7:12 per mile) and 1 mile at easy pace again, what time do I get home
for breakfast?
"""

import datetime
from datetime import timedelta
"""class datetime.datetime
A combination of a date and a time. Attributes: year, month, day, hour, minute, second, microsecond, and tzinfo."""

startTime = datetime.datetime(2020, 1, 1, 6, 52, 0)
# set datetime y/m/d h:m:s:ms tzinfo
timeSec = (((8.0 * 60.0) + 15.0) * 2.0) + (((7.0 * 60.0) + 12.0) * 3.0)
timeMin = timeSec / 60.0
# not printed, result is 38.1; a 1/10 of a min is 6 seconds
"""class datetime.timedelta
A duration expressing the difference between two date, time, or datetime instances to microsecond resolution."""

timeSpent = datetime.timedelta(minutes=38, seconds=6)
finalTime = startTime + timeSpent

print ('You get home at: ', finalTime)


""" Exercise 3:"""
import math
"""3.14 Exercises
Exercise 3.1. Write a function named right_justify that takes a string named s as a
parameter and prints the string with enough leading spaces so that the last letter of the string
is in column 70 of the display."""

def right_justify(s):
    print((" ")*70,s)

right_justify("nuri")
"""Exercise 3.2. A function object is a value you can assign to a variable or pass as an
argument. For example, do_twice is a function that takes a function object as an argument
and calls it twice:"""






    
