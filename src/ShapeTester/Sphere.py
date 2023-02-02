import math
class Sphere:


  #Variables
  l = 0
  w = 0
  h = 0
  rad = 0
  pi = 0

  #Constructor
  def __init__(self):
    self.rad = 0
    self.pi = 3.14

  # How to calculate the Volume of the shape
  def calcVol(self):
    vol = (4/3) * math.pi * (self.rad ** 3)
    return vol

  # How to calculate the Surface Area of the shape
  def calcSA(self):
    sa = 4 * math.pi * (self.rad ** 2)
    return sa