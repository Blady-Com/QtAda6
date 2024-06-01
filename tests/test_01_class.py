class PCA :
    def __init__ (self, v):
        self.a = v

    def GA (self):
        return self.a

    def SQR (self):
        return self.GA () * self.GA ()

    def VC (self, h):
        return self.SQR () * h

class PCB (PCA):
    def GA (self):
        return super().GA () + 2

    def VC (self, h):
        return self.SQR () * h // 2

if __name__ == "__main__":
    x= PCA (5)
    print (x.a)
    print (x.GA())
    print (x.SQR())
    print (x.VC(6))
    y= PCB (10)
    print (y.a)
    print (y.GA())
    print (y.SQR())
    print (y.VC(6))
    print (PCA.__base__)
    print (PCB.__base__)
#    help (PCB)
