# Kombinatorika 1 – Házi feladat (2026.11.20-ra)

### Kombinatorika 1 normál · Házi feladat (a következő röpZH anyaga) · 2026.11.20.

*(Megjegyzés: Az eredeti feladatlapon szereplő 1. feladat szó szerint megegyezik az [5. feladatsor] 86. feladatával, ezért a duplikáció elkerülése végett itt csak a 2. feladat szerepel.)*

## 1. feladat (az eredeti lap 2. feladata)

A $G$ egyszerű, élsúlyozott gráfban legyen $T_1$ és $T_2$ két különböző minimális feszítőfa. Bizonyítsd be, hogy minden $k$ pozitív egészre ugyanannyi $k$ súlyú él szerepel $T_1$-ben, mint $T_2$-ben.

*Megjegyzés:* A gyakorlaton megbeszélt feladatok állításait bizonyítás nélkül szabadon felhasználhatod. Azt is szabadon felhasználhatod, hogy a Kruskal-algoritmus minimális feszítőfát határoz meg, és hogy minden minimális feszítőfa megkapható a Kruskal-algoritmussal, az azonos súlyú élek megfelelő sorrendű választásával. (Ezek csak lehetőségek, nincs rájuk feltétlenül szükség.)

**Példa egy rossz megoldásra:** A Kruskal-algoritmus megadja a minimális összsúlyt. Mivel $T_1$ és $T_2$ is minimális feszítőfa, összsúlyuk ugyanannyi. Mindkét fának $|V(G)| - 1$ éle van, tehát ugyanannyi élsúlyt adunk össze. Ha valamelyik $k$ súly különböző számban fordulna elő a két fában, akkor az összeadandók nem egyeznének meg, ezért az összegük sem lehetne azonos. Ez ellentmond annak, hogy a két minimális feszítőfa összsúlya egyenlő. Tehát minden $k$ súlyú élből ugyanannyi van a két fában.

*Ez nem jó megoldás*, nem nehéz ugyanis olyan $G$ gráfot konstruálni, melyben van $2 + 2 + 2$ és $1 + 2 + 3$ élsúlyú feszítőfa is. Az összeg és az összeadandók száma tehát általában nem határozza meg a súlyok eloszlását. A feladat pont azt megmutatni, hogy minimális súlyú feszítőfánál viszont egyértelmű a súlyok eloszlása (tehát a bekezdés eleji $G$ gráfban a $6$ súlyú feszítőfák nem minimális súlyúak).
