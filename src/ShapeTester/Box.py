class Box:
  
  #variables
  l = 0
  w = 0
  h = 0

  #constructor
  def __init__(self):
    self.l = 0
    self.w = 0
    self.h = 0

  # How to calculate the Volume of the shape
  def calcVol(self):
    vol = self.l * self.w * self.h
    return vol

  # How to calculate the Surface Area of the shape
  def calcSA(self):
    sa = 2*(self.l * self.w) + 2*(self.l * self.h) + 2*(self.h * self.w)
    return sa