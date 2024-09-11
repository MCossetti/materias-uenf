class Pendrive(object):
    def __init__(self, tamanho, interface='2.0'):
        self.tamanho = tamanho
        self.interface = interface

class MP3Player(Pendrive):
    def __init__(self, tamanho, interface='2.0', turner=False):
        super().__init__(tamanho, interface)
        self.turner = turner

mp3 = MP3Player(1024)
print('%s\n%s\n%s' % (mp3.tamanho, mp3.interface, mp3.turner))

