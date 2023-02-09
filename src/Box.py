class Box:

  # Variables
  l = 0.0
  w = 0.0
  h = 0.0

  # Constructor
  def __init__(self):
    self.l = 0.0
    self.w = 0.0
    self.h = 0.0

  # How to calculate the Volume of the shape
  def calcVol(self):
    vol = float(self.l) * float(self.w) * float(self.h)
    return vol

  # How to calculate the Surface Area of the shape
  def calcSA(self):
    sa = 2 * (float(self.l) * float(self.w)) + 2 * (float(self.l) * float(self.h)) + 2 *(float(self.h) * float(self.w))
    return sa
