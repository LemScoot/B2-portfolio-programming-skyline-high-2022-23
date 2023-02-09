class Pyramid:

  # variables
  l = 0.0
  w = 0.0
  s = 0.0

  # constructor
  def __init__(self):
    self.l = 0.0
    self.w = 0.0
    self.s = 0.0

  # How to calculate the Volume of the shape
  def calcVol(self):
    vol = float(self.l) * float(self.w) * float(self.s) / 3
    return vol

  # How to calculate the Surface Area of the shape
  def calcSA(self):
    sa = 2 * float(self.l) * float(self.w) * float(self.s) + pow(float(self.l) * float(self.w), 2)
    return sa
