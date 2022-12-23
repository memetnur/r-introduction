# -*- coding: utf-8 -*-
"""
Bismillah
Created on Mon Sep 21 23:04:35 2020

@author: Nurdzane Memeti
"""
import math
# Solves quadratic equation:
# a*x^2 + b*x + c = 0
#def solve_quadratic(a, b, c):
# d = b**2 - 4*a*c # Discriminant
# print(d)
# d = math.sqrt(d)
# print(d)
# x1 = (-b + d) / 2*a
# x2 = (-b -d) / 2*a
# print(x1, x2)
#u = 1; v = 1; w = 6
#solve_quadratic(u, v, w)
##print(d)

def r(n):
 if n == 10:
     return
 else:
     print(n)
     r(n+1) 



def count(i):
    for j in range(i):
        print(j+1) 
count(3)

def cond(var):
    if var < 200:
        print("Expression value is less than 200")
    if var == 150:
        print("Which is 150")
    elif var == 100:
        print("Which is 100")
    elif var == 50:
        print("Which is 50")
    elif var < 50:
        print("Expression value is less than 50")
    else:
        print("Could not find true expression")
        
cond(200)
cond(199)
cond(150)
cond(50)
cond(10)
