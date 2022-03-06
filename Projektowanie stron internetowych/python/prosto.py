dc = float(input('Podaj długość: '))
sc = float(input('Podaj szerokość: '))
wc = float(input('Podaj wyskość: '))

pl = 2 * (dc * sc + dc * wc + sc * wc)

vol = dc * sc * wc


print(" Pole prostopadłościanu = %.2f " %pl)
print(" Objętość prostopadłościanu = %.2f" %vol);
