for $producte in distinct-values(//producte)
for $botiga1 in //botiga[producte = $producte]
for $botiga2 in //botiga[producte = $producte and @nom > $botiga1/@nom]
return concat($botiga1/@nom, ' ven el mateix producte que ', $botiga2/@nom, ' i el producte és ', $producte)