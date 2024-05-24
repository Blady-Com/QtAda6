class PCA :
    def __init__ (self, v):
        self.a = v

    def GA (self):
        return self.a

    def SQR (self):
        return self.GA () * self.GA ()

class PCB (PCA):
    def GA (self):
        return super().GA () + 2

if __name__ == "__main__":
    x= PCA (6)
    print (x.a)
    print (x.GA())
    print (x.SQR())
    y= PCB (8)
    print (y.a)
    print (y.GA())
    print (y.SQR())
    print (PCA.__base__)
    print (PCB.__base__)
    help (PCB)
