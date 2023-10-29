from PySide6.QtCore import QTimer, QTime
from PySide6.QtGui import QPainter, QRasterWindow
from test_03_module import test_03_render
class ACW(QRasterWindow):
    def __init__(self):
        super().__init__()
        self.setTitle("Analog Clock")
        self.resize(200, 200)
        self._timer = QTimer(self)
        self._timer.timeout.connect(self.update)
        self._timer.start(60)
    def paintEvent(self, e):
        with QPainter(self) as p:
            self.render(p)
    def render(self, p):
        test_03_render (p)
clock = None
def Code ():
    global clock
    clock = ACW()
    clock.show()
