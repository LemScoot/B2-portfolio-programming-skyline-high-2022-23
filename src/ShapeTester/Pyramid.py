class Pyramid:
  
  # variables
  l = 0
  w = 0
  s = 0

  # constructor
  def __init__(self):
    self.l = 0
    self.w = 0
    self.s = 0

  # How to calculate the Volume of the shape
  def calcVol(self):
    vol = (self.l * self.s * self.w)*(1/3)
    return vol

  # How to calculate the Surface Area of the shape
  def calcSA(self):
    sa = 2 * ((self.l * self.w) * self.s) + pow((self.l * self.w), 2)
    return sa