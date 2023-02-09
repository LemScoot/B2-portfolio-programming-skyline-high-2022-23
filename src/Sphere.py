import math

class Sphere:

  # Variables
  rad = 0.0
  pi = math.pi

  # Constructor
  def __init__(self):
    self.rad = 0.0
    self.pi = math.pi

  # How to calculate the Volume of the shape
  def calcVol(self):
    vol = (4/3) * math.pi * self.rad ** 3
    return vol

  # How to calculate the Surface Area of the shape
  def calcSA(self):
    sa = 4 * math.pi * self.rad ** 2
    return sa
