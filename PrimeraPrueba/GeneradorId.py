import random


def generar(self):
    cadena = '123456790abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    id=''
    for i in range(50):
        id+=random.choice(cadena)
    return id