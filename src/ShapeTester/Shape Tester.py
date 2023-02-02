import math
from Box import Box
from Sphere import Sphere
from Pyramid import Pyramid

# Imports
b1 = Box()
s1 = Sphere()
p1 = Pyramid()

print("Hello, this is a Shapemaker game \nThere's 3 shapes that you can choose from: \n")

shapeChoice = int(input('If you want the Box, Press 1 \n\nIf you want the Pyramid, Press 2 \n\nIf you want the Sphere, Press 3 \n\nEnter Here: '))

# Box
if shapeChoice == 1:
    b1.l = int(input('Enter value for box length: '))
print(b1.l)
b1.w = int(input('Enter value for box width: '))
print(b1.w)
b1.h = int(input('Enter value for box height: '))
print(b1.h)
print('Box Volume: ', b1.calcVol())

# Sphere
if shapeChoice == 2:
    s1.l = int(input('Enter value for sphere length: '))
print(s1.l)
s1.w = int(input('Enter value for sphere width: '))
print(s1.w)
s1.h = int(input('Enter value for sphere radius: '))
print(s1.h)
print('Sphere Volume: ', s1.calcVol())

# Pyramid
if shapeChoice == 3:
    p1.l = int(input('Enter value for box length:'))
print(p1.l)
p1.w = int(input('Enter value for box width: '))
print(p1.w)
p1.h = int(input('Enter value for box height:'))
print(p1.h)
print('Box Volume: ', p1.calcVol())
