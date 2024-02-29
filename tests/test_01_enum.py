from enum import Enum, IntEnum, Flag, IntFlag, auto

class ColorE(Enum):
    RED = 1
    GREEN = 2
    BLUE = 3

class NumberIE(IntEnum):
    ONE = 1
    TWO = 2
    THREE = 3
    
class ColorF(Flag):
    RED = auto()
    GREEN = auto()
    BLUE = auto()

class ColorIF(IntFlag):
    RED = auto()
    GREEN = auto()
    BLUE = auto()

if __name__ == "__main__":
    print (ColorE.BLUE.value)
    print (NumberIE.TWO.value)
    print (ColorF.RED.value)
    print (ColorIF.GREEN.value)
