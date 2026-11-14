# Kombinatorika 1 – 1. javító ZH (2026)

### Kombinatorika 1 normál · 2026.

Teljes pontszámot csak részletesen indokolt megoldással lehet szerezni! Bizonyítás nélkül alkalmazható minden, a gyakorlaton vagy az előadáson bizonyított állítás, amennyiben azt pontosan kimondjátok (illetve az alkalmazhatóságát az adott helyen megindokoljátok). A jegyszerzéshez összesen legalább 20 pontot el kell érni.

A feladatok megoldása során törekedjünk arra, hogy konkrét végeredményt kapjunk. Nem kell kiszámolni, ha egy számológéppel gyorsan számolható képletet kapunk, az már teljesen jó, de egy sok tagú szumma például ne maradjon a válaszban, az akkor még nincs teljesen kész. Ez alól kivételt képez, ha egy feladatot a logikai szita formulával kell megoldani, abban az esetben elképzelhető, hogy a felírt szummának nincs könnyen megtalálható zárt alakja, szóval az elfogadható végeredménynek. (Természetesen – szokás szerint – alapos indoklás ahhoz is kell!)

## 1. feladat

Az 1, 2, 3, 4, 5, 6 számokból nyolctagú nemcsökkenő sorozatokat készítünk; egy szám többször is szerepelhet. Hány ilyen sorozat van, ha

a) pontosan három különböző szám szerepel benne;

b) mind a hat szám szerepel benne?

A nemcsökkenő feltétel azt jelenti, hogy minden tag legalább akkora, mint az előző.

## 2. feladat

Nyolc különböző személy, köztük Anna, Béla, Csilla és Dénes, egy kerekasztal köré ül. Két ültetést azonosnak tekintünk, ha az egyik az asztal körüli elforgatással a másikba vihető; a tükörképeket nem azonosítjuk. Hány különböző ültetés lehetséges, ha

a) Anna és Béla egymás mellett ül;

b) Anna és Béla egymás mellett ül, de Csilla és Dénes nem ül egymás mellett?

## 3. feladat

Legyen $n \ge 1$ egész. Adj zárt alakot az alábbi összegre, és igazold az eredményt kettős leszámlálással!
$$\sum_{k=0}^{n} k \binom{n}{k}^2.$$

## 4. feladat

a) Egy $1 \times n$ méretű táblát $1 \times 1$-es és $1 \times 2$-es lapokkal fedünk le, átfedés és hézag nélkül. Minden $1 \times 1$-es lap kétféle, minden $1 \times 2$-es lap háromféle színű lehet. A táblát balról jobbra irányítottnak tekintjük, és két lefedés különböző, ha valamely lap helye, mérete vagy színe eltér. Jelölje $a_n$ a lefedések számát, az üres tábla lefedését pedig egy lehetőségnek tekintsük. Állíts fel homogén lineáris rekurziót az $a_n$ sorozatra, és add meg a szükséges kezdőértékeket!

b) Adj zárt képletet a $b_0 = 0, b_1 = 1, b_n = 3b_{n-1} + b_{n-2}$ ($n \ge 2$) homogén lineáris rekurzióval megadott sorozat $n$-edik tagjára!

## 5. feladat

Legyen $n \ge 1$ egész. Bizonyítsd be, hogy minden olyan véges egyszerű gráfban, amelynek legalább $5n$ éle van, és minden csúcsának fokszáma legfeljebb 3, kiválasztható $n$ él úgy, hogy semelyik kettőnek nincs közös végpontja!

## 6. feladat

Nyolc különböző hallgatót négy számozott szemináriumi csoportba osztunk be. Minden hallgató pontosan egy csoportba kerül, egyik csoport sem maradhat üresen, és két kijelölt hallgató, Anna és Béla, nem kerülhet ugyanabba a csoportba. Hány különböző beosztás lehetséges? Egy csoporton belül a hallgatók sorrendje nem számít.

## 7. feladat

a) Egy három sorból és hét oszlopból álló táblázat minden mezőjét pirosra vagy kékre színezzük. Bizonyítsd be, hogy kiválasztható két különböző sor és két különböző oszlop úgy, hogy a négy metszésükben álló mező mind azonos színű legyen! A kiválasztott soroknak és oszlopoknak nem kell szomszédosnak lenniük.

b) Mutasd meg egy megfelelő színezéssel, hogy hat oszlop esetén az állítás már nem feltétlenül igaz!
