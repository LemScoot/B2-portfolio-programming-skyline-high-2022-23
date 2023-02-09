# Liam Scott | Feb 7, 2023 | Shape Tester

# Imports 
from Box import Box
from Pyramid import Pyramid
from Sphere import Sphere

b1 = Box()
s1 = Sphere()
p1 = Pyramid()

print("Welcome to Shape Tester made my Liam Scott\nThis is an application where you enter values and see what the \nvolume and surface area is of that created shape.\n\nHave Fun!!")

# Box things
b1.l = input('\nEnter Value for Box length: ')
print(b1.l)
b1.w = input('Enter Value for Box width: ')
print(b1.w)
b1.h = input('Enter Value for Box height: ')
print(b1.h)
print('Box Volume: ', b1.calcVol())
print('Box Surface Area: ', b1.calcSA())

# Pyramid things
p1.l = input('\nEnter Value for Pyramid length: ')
print(p1.l)
p1.w = input('Enter Value for Pyramid width: ')
print(b1.w)
p1.s = input('Enter Value for Pyramid height: ')
print(p1.s)
print('Pyramid Volume: ', p1.calcVol())
print('Pyramid Surface Area: ', p1.calcSA())

# Sphere things
s1.w = input('\nEnter Value for Sphere radius: ')
print(s1.rad)
s1.s = input('Enter Value for Sphere PI value: ')
print(s1.pi)
print('Sphere Volume: ', s1.calcVol())
print('Sphere Surface Area: ', s1.calcSA())