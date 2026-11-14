# Kombinatorika 1 – 1. javító ZH (2026) – megoldások

### Kombinatorika 1 normál · 2026.

## 1. feladat

Az 1, 2, 3, 4, 5, 6 számokból nyolctagú nemcsökkenő sorozatokat készítünk; egy szám többször is szerepelhet. Hány ilyen sorozat van, ha

a) pontosan három különböző szám szerepel benne;

b) mind a hat szám szerepel benne?

A nemcsökkenő feltétel azt jelenti, hogy minden tag legalább akkora, mint az előző.

**Megoldás.**

Egy nyolctagú nemcsökkenő sorozatban a tagok nagyság szerint rendezettek: $1 \le x_1 \le x_2 \le \dots \le x_8 \le 6$.
Egy ilyen sorozatot egyértelműen meghatároz az, hogy az egyes számjegyeket hányszor használjuk fel. Ha az $i \in \{1, 2, \dots, 6\}$ szám előfordulási száma $k_i \ge 0$, akkor:
$$k_1 + k_2 + k_3 + k_4 + k_5 + k_6 = 8.$$

**a)** Pontosan három különböző szám szerepel a sorozatban:
1. Válasszuk ki a 6 lehetséges szám közül azt a 3 számot, amelyik szerepel a sorozatban: erre $\binom{6}{3}$-féle lehetőség van.
2. A kiválasztott 3 szám előfordulási száma legyen $y_1, y_2, y_3$. Mivel pontosan ezek a számok szerepelnek, mindegyikük előfordulási száma legalább 1:
   $$y_1 + y_2 + y_3 = 8, \qquad y_i \ge 1 \text{ egész}.$$
   A pozitív egész megoldások száma (8 elem közé 2 elválasztófal elhelyezése a lehetséges 7 helyre):
   $$\binom{8-1}{3-1} = \binom{7}{2} = \frac{7 \cdot 6}{2} = 21.$$
3. Mivel a számok sorrendje a nemcsökkenő feltétel miatt kötött, az előfordulási számok egyértelműen meghatározzák a sorozatot.

Ezért a lehetséges sorozatok száma:
$$\binom{6}{3} \cdot \binom{7}{2} = 20 \cdot 21 = \mathbf{420}.$$

**b)** Mind a hat szám szerepel a sorozatban:
Ekkor mind a 6 szám előfordulási száma legalább 1:
$$k_1 + k_2 + k_3 + k_4 + k_5 + k_6 = 8, \qquad k_i \ge 1 \text{ egész}.$$
A pozitív egész megoldások száma (8 elem közé 5 elválasztófal a 7 lehetséges helyre):
$$\binom{8-1}{6-1} = \binom{7}{5} = \binom{7}{2} = \mathbf{21}.$$

---

## 2. feladat

Nyolc különböző személy, köztük Anna, Béla, Csilla és Dénes, egy kerekasztal köré ül. Két ültetést azonosnak tekintünk, ha az egyik az asztal körüli elforgatással a másikba vihető; a tükörképeket nem azonosítjuk. Hány különböző ültetés lehetséges, ha

a) Anna és Béla egymás mellett ül;

b) Anna és Béla egymás mellett ül, de Csilla és Dénes nem ül egymás mellett?

**Megoldás.**

Összesen 8 személy ül a kerekasztal körül. Elforgatás erejéig $n$ különböző személyt $(n-1)!$-féleképpen ültethetünk le.

**a)** Anna és Béla egymás mellett ül:
- Fogjuk össze Annát és Bélát egyetlen blokkba: $\{A, B\}$.
- Ezzel a blokkal és a többi 6 személlyel együtt összesen $1 + 6 = 7$ egységet kell leültetnünk a kerekasztal köré.
- 7 egység leültetése az asztal körüli forgatások erejéig $(7-1)! = 6! = 720$-féleképpen lehetséges.
- A blokkon belül Anna és Béla kétféle sorrendben ülhet egymás mellett ($AB$ vagy $BA$).
Ezért a keresett ültetések száma:
$$2 \cdot 6! = 2 \cdot 720 = \mathbf{1440}.$$

**b)** Anna és Béla egymás mellett ül, de Csilla és Dénes nem:
Alkalmazzuk a komplementer módszert: az a) részben kiszámított összes olyan ültetésből, ahol $A$ és $B$ egymás mellett ül (1440), vonjuk ki azokat, ahol $A$ és $B$ **is**, valamint $C$ és $D$ **is** egymás mellett ül!
- Tekintsük az $\{A, B\}$ és a $\{C, D\}$ blokkokat, valamint a maradék 4 független személyt.
- Összesen $1 + 1 + 4 = 6$ egység ül a kerekasztal körül: ezek $(6-1)! = 5! = 120$-féleképpen rendezhetők el.
- Az $\{A, B\}$ blokkon belüli sorrend 2-féle, a $\{C, D\}$ blokkon belüli sorrend szintén 2-féle lehet.
- Azon ültetések száma tehát, ahol mindkét pár egymás mellett ül:
  $$2 \cdot 2 \cdot 5! = 4 \cdot 120 = 480.$$

Ezért a feltételnek megfelelő ültetések száma:
$$1440 - 480 = \mathbf{960}.$$

---

## 3. feladat

Legyen $n \ge 1$ egész. Adj zárt alakot az alábbi összegre, és igazold az eredményt kettős leszámlálással!
$$\sum_{k=0}^{n} k \binom{n}{k}^2.$$

**Megoldás.**

**Zárt alak meghatározása:**
Használjuk fel a $k \binom{n}{k} = n \binom{n-1}{k-1}$ összefüggést és a binomiális együtthatók szimmetriáját $\binom{n}{k} = \binom{n}{n-k}$:
$$\sum_{k=0}^{n} k \binom{n}{k}^2 = \sum_{k=1}^{n} k \binom{n}{k} \binom{n}{n-k} = \sum_{k=1}^{n} n \binom{n-1}{k-1} \binom{n}{n-k} = n \sum_{k=1}^{n} \binom{n-1}{k-1} \binom{n}{n-k}.$$
A belső összeg a Vandermonde-azonosság alapján egy $(n-1) + n = 2n-1$ elemű halmazból választ ki $(k-1) + (n-k) = n-1$ elemet, így értéke $\binom{2n-1}{n-1}$.
Tehát a zárt alak:
$$n \binom{2n-1}{n-1}.$$

**Bizonyítás kettős leszámlálással:**
Tegyük fel, hogy egy intézményben $n$ nő és $n$ férfi dolgozik (összesen $2n$ személy).
Szeretnénk megalakítani egy **$n$ tagú bizottságot**, amelynek **elnöke egy nő**.
Számoljuk meg ezen bizottságok lehetséges összeállításait kétféle módon!

- **1. számolási mód (a nők száma szerint bontva):**
  Tegyük fel, hogy a kiválasztott bizottságban pontosan $k$ nő van ($1 \le k \le n$).
  Ekkor a bizottság többi tagja férfi, azaz pontosan $n - k$ férfit kell választani az $n$ férfi közül:
  - A $k$ nő kiválasztása az $n$ nő közül: $\binom{n}{k}$-féleképpen történhet.
  - A bizottság női elnökének kijelölése a beválasztott $k$ nő közül: $k$-féleképpen lehetséges.
  - A maradék $n - k$ férfi kiválasztása az $n$ férfi közül: $\binom{n}{n-k} = \binom{n}{k}$-féleképpen történhet.
  Egy adott $k$ esetén a lehetőségek száma $k \binom{n}{k} \binom{n}{k} = k \binom{n}{k}^2$.
  Összegezve az összes lehetséges $k \in \{0, 1, \dots, n\}$ értékre (a $k=0$ tag értéke 0):
  $$\sum_{k=0}^{n} k \binom{n}{k}^2.$$

- **2. számolási mód (először az elnököt választva):**
  - Először válasszuk ki a bizottság női elnökét az $n$ nő közül: erre $n$ lehetőség van.
  - Ezután a bizottság maradék $n - 1$ tagját kell kiválasztanunk a fennmaradó összes személy közül.
  A fennmaradó személyek száma: $(n - 1)$ nő és $n$ férfi, összesen $(n - 1) + n = 2n - 1$ személy.
  Ezek közül $n - 1$ további tagot választunk tetszőlegesen: erre $\binom{2n-1}{n-1}$ lehetőség van.
  Összesen így:
  $$n \binom{2n-1}{n-1}$$
  lehetőség adódik.

Mivel mindkét gondolatmenet ugyanazt a halmazt (az $n$ tagú, női elnökkel rendelkező bizottságokat) számlálja meg, a két kifejezés szükségképpen egyenlő:
$$\sum_{k=0}^{n} k \binom{n}{k}^2 = \mathbf{n \binom{2n-1}{n-1}}.$$ $\blacksquare$

---

## 4. feladat

a) Egy $1 \times n$ méretű táblát $1 \times 1$-es és $1 \times 2$-es lapokkal fedünk le, átfedés és hézag nélkül. Minden $1 \times 1$-es lap kétféle, minden $1 \times 2$-es lap háromféle színű lehet. A táblát balról jobbra irányítottnak tekintjük, és két lefedés különböző, ha valamely lap helye, mérete vagy színe eltér. Jelölje $a_n$ a lefedések számát, az üres tábla lefedését pedig egy lehetőségnek tekintsük. Állíts fel homogén lineáris rekurziót az $a_n$ sorozatra, és add meg a szükséges kezdőértékeket!

b) Adj zárt képletet a $b_0 = 0, b_1 = 1, b_n = 3b_{n-1} + b_{n-2}$ ($n \ge 2$) homogén lineáris rekurzióval megadott sorozat $n$-edik tagjára!

**Megoldás.**

**a)** Tekintsük az $1 \times n$ tábla legutolsó (jobb szélső) lapját ($n \ge 2$):
1. Ha a jobb szélső lap egy $1 \times 1$-es lap:
   - A lap mérete 1, így a maradék $1 \times (n-1)$-es táblát kell lefedni, amelyre $a_{n-1}$ lehetőség van.
   - Az utolsó $1 \times 1$-es lap 2 különböző színű lehet.
   - Ez $2 a_{n-1}$ lehetőséget ad.
2. Ha a jobb szélső lap egy $1 \times 2$-es lap:
   - A lap mérete 2, így a maradék $1 \times (n-2)$-es táblát kell lefedni, amelyre $a_{n-2}$ lehetőség van.
   - Az utolsó $1 \times 2$-es lap 3 különböző színű lehet.
   - Ez $3 a_{n-2}$ lehetőséget ad.

Mivel a két eset kölcsönösen kizárja egymást és minden esetet lefed, a rekurzió:
$$a_n = 2a_{n-1} + 3a_{n-2} \qquad (n \ge 2).$$

A kezdőértékek:
- $a_0 = \mathbf{1}$ (az üres tábla lefedése a megfogalmazás szerint 1 lehetőség).
- $a_1 = \mathbf{2}$ (egy darab $1 \times 1$-es lap 2 színben).

*(Megjegyzés: a rekurzióból $a_2 = 2 a_1 + 3 a_0 = 2 \cdot 2 + 3 \cdot 1 = 7$, ami megegyezik a két darab $1 \times 1$-es lap ($2 \times 2 = 4$) és egy darab $1 \times 2$-es lap (3) együttesével).*

**b)** A rekurzió: $b_n - 3b_{n-1} - b_{n-2} = 0$ ($n \ge 2$), kezdőértékekkel: $b_0 = 0, b_1 = 1$.
A karakterisztikus egyenlet:
$$x^2 - 3x - 1 = 0.$$
A másodfokú egyenlet gyökei a megoldóképlettel:
$$x_{1,2} = \frac{3 \pm \sqrt{(-3)^2 - 4 \cdot 1 \cdot (-1)}}{2} = \frac{3 \pm \sqrt{13}}{2}.$$
Mivel a két gyök különböző, az általános megoldás alakja:
$$b_n = c_1 \left(\frac{3 + \sqrt{13}}{2}\right)^n + c_2 \left(\frac{3 - \sqrt{13}}{2}\right)^n.$$

Határozzuk meg a konstansokat a kezdőértékekből:
- $n = 0$:
  $$b_0 = c_1 + c_2 = 0 \implies c_2 = -c_1.$$
- $n = 1$:
  $$b_1 = c_1 \left(\frac{3 + \sqrt{13}}{2}\right) - c_1 \left(\frac{3 - \sqrt{13}}{2}\right) = c_1 \cdot \sqrt{13} = 1 \implies c_1 = \frac{1}{\sqrt{13}}, \quad c_2 = -\frac{1}{\sqrt{13}}.$$

A zárt képlet tehát:
$$b_n = \mathbf{\frac{1}{\sqrt{13}} \left[ \left(\frac{3 + \sqrt{13}}{2}\right)^n - \left(\frac{3 - \sqrt{13}}{2}\right)^n \right]}.$$

---

## 5. feladat

Legyen $n \ge 1$ egész. Bizonyítsd be, hogy minden olyan véges egyszerű gráfban, amelynek legalább $5n$ éle van, és minden csúcsának fokszáma legfeljebb 3, kiválasztható $n$ él úgy, hogy semelyik kettőnek nincs közös végpontja!

**Megoldás.**

Olyan élek halmazát, amelyek közül semelyik kettőnek nincs közös végpontja, **független élhalmaznak** vagy **párosításnak** (matching) nevezzük. Azt kell bizonyítanunk, hogy $G$-ben létezik legalább $n$ méretű párosítás.

Válasszunk ki egy **maximális párosítást** $M$-et $G$-ben (azaz olyan párosítást, amely nem bővíthető további éllel). Jelölje $k = |M|$ az $M$-beli élek számát.
A párosításban szereplő csúcsok halmaza $V(M)$, amelynek elemszáma $|V(M)| = 2k$.

Mivel $M$ maximális párosítás, a gráf **minden egyes $e \in E(G)$ élének legalább az egyik végpontja $V(M)$-be esik**.
(Ha ugyanis létezne olyan él, amelynek egyik végpontja sincs benne $V(M)$-ben, akkor ez az él hozzávehető lenne $M$-hez, független élhalmazt alkotva, ami ellentmondana $M$ maximalitásának).

Számoljuk meg, hogy az $M$-beli élek csúcsaira legfeljebb hány él illeszkedhet a teljes gráfban:
Tekintsünk egy tetszőleges $e = \{u, v\} \in M$ párosításbeli élt:
- Az $u$ csúcs foka legfeljebb 3, így az $e$ élen kívül legfeljebb $3 - 1 = 2$ egyéb él illeszkedik $u$-ra.
- A $v$ csúcs foka legfeljebb 3, így az $e$ élen kívül legfeljebb $3 - 1 = 2$ egyéb él illeszkedik $v$-re.
- Maga az $e = \{u, v\}$ él mindkét csúcsra illeszkedik, de a gráfban ez egyetlen él.
Ezért az $\{u, v\}$ csúcspárra illeszkedő élek száma a gráfban legfeljebb:
$$1 + (d(u) - 1) + (d(v) - 1) \le 1 + 2 + 2 = 5.$$

Mivel a gráf minden éle illeszkedik legalább egy $e \in M$ él végpontjára, a gráf összes éleinek száma legfeljebb az egyes párosításbeli élekhez tartozó csúcspárokra illeszkedő élek összege:
$$|E(G)| \le \sum_{e \in M} 5 = 5 \cdot |M| = 5k.$$

A feladat feltétele szerint a gráfban legalább $5n$ él van:
$$5k \ge |E(G)| \ge 5n \implies k \ge n.$$
Tehát a maximális párosítás éleinek száma legalább $n$.
Ennek a párosításnak bármely $n$ elemű részhalmaza pontosan $n$ olyan élt ad, amelyek közül semelyik kettőnek sincs közös végpontja. $\blacksquare$

---

## 6. feladat

Nyolc különböző hallgatót négy számozott szemináriumi csoportba osztunk be. Minden hallgató pontosan egy csoportba kerül, egyik csoport sem maradhat üresen, és két kijelölt hallgató, Anna és Béla, nem kerülhet ugyanabba a csoportba. Hány különböző beosztás lehetséges? Egy csoporton belül a hallgatók sorrendje nem számít.

**Megoldás.**

Nyolc különböző elemet osztunk be 4 számozott csoportba úgy, hogy egyik csoport sem üres. Ez megegyezik a 8 elemű halmazból a 4 elemű halmazba képező **szürjektív függvények** számával, amely $4! \cdot S(8, 4)$, ahol $S(n, k)$ a másodfajú Stirling-szám.

Alkalmazzuk a komplementer módszert: az összes lehetséges (egyik csoportot sem üresen hagyó) beosztás számából vonjuk ki azokat, ahol Anna és Béla **ugyanabba a csoportba** kerül!

**1. Összes megengedett beosztás Anna és Béla feltétele nélkül:**
A logikai szita-formulával a szürjektív leképezések száma 8 elemből 4 számozott csoportba:
$$\sum_{j=0}^{4} (-1)^j \binom{4}{j} (4 - j)^8 = \binom{4}{0} 4^8 - \binom{4}{1} 3^8 + \binom{4}{2} 2^8 - \binom{4}{3} 1^8$$
$$= 1 \cdot 65536 - 4 \cdot 6561 + 6 \cdot 256 - 4 \cdot 1$$
$$= 65536 - 26244 + 1536 - 4 = 40824.$$

**2. Azon beosztások száma, ahol Anna és Béla ugyanabba a csoportba kerül:**
Tekintsük Annát és Bélát egyetlen összevont hallgatónak. Ekkor $8 - 1 = 7$ különböző entitást kell beosztanunk a 4 számozott csoportba úgy, hogy egyik se legyen üres:
$$\sum_{j=0}^{4} (-1)^j \binom{4}{j} (4 - j)^7 = \binom{4}{0} 4^7 - \binom{4}{1} 3^7 + \binom{4}{2} 2^7 - \binom{4}{3} 1^7$$
$$= 1 \cdot 16384 - 4 \cdot 2187 + 6 \cdot 128 - 4 \cdot 1$$
$$= 16384 - 8748 + 768 - 4 = 8400.$$

**3. A keresett beosztások száma:**
$$40824 - 8400 = \mathbf{32\,424}.$$

---

## 7. feladat

a) Egy három sorból és hét oszlopból álló táblázat minden mezőjét pirosra vagy kékre színezzük. Bizonyítsd be, hogy kiválasztható két különböző sor és két különböző oszlop úgy, hogy a négy metszésükben álló mező mind azonos színű legyen! A kiválasztott soroknak és oszlopoknak nem kell szomszédosnak lenniük.

b) Mutasd meg egy megfelelő színezéssel, hogy hat oszlop esetén az állítás már nem feltétlenül igaz!

**Megoldás.**

**a)** Tekintsük a $3 \times 7$-es táblázat oszlopait.
Minden oszlopban 3 mező van, és mindegyik piros (P) vagy kék (K) színű.
A skatulyaelv miatt minden oszlopban van legalább két azonos színű mező (hiszen 3 mező és 2 szín van).
Rögzítsünk minden oszlopban egy azonos színű mezőpárt (ha mindhárom mező azonos színű, válasszunk tetszőlegesen kettőt közülük).

Egy ilyen azonos színű mezőpár:
- A sorindexek tekintetében a 3 sor közül $\binom{3}{2} = 3$-féle sorpárban helyezkedhet el: $\{1, 2\}$, $\{1, 3\}$ vagy $\{2, 3\}$.
- A közös szín 2-féle lehet: piros vagy kék.
Ezért összesen legfeljebb
$$\binom{3}{2} \cdot 2 = 3 \cdot 2 = 6$$
különböző (sorpár, szín) típusú konfiguráció létezik.

A táblázatban azonban **7 oszlop** van.
Mivel $7 > 6$, a skatulyaelv alapján létezik legalább két olyan oszlop, amelyben az azonos színű pár **ugyanabban a sorpárban és ugyanolyan színű**.
Ez a két oszlop és a kiválasztott sorpár pontosan egy olyan $2 \times 2$-es részhálót (téglalapot) határoz meg, amelynek mind a 4 mezője azonos színű. $\blacksquare$

**b)** 6 oszlop esetén az állítás nem feltétlenül igaz: készíthető olyan $3 \times 6$-os színezés, amely nem tartalmaz monokromatikus téglalapot.
Használjuk fel, hogy 6 oszlop van, és a 6 lehetséges (sorpár, szín) konfiguráció mindegyikét pontosan egy-egy oszlopban valósítjuk meg!

Tekintsük az alábbi $3 \times 6$-os táblázatot:

$$\begin{pmatrix}
P & P & K & K & K & P \\
P & K & P & K & P & K \\
K & P & P & P & K & K
\end{pmatrix}$$

Ellenőrizzük mind a 3 lehetséges sorpárt:
- **1. és 2. sor:**
  - Mindkettő piros ($P, P$): kizárólag az 1. oszlopban fordul elő (1 oszlop).
  - Mindkettő kék ($K, K$): kizárólag a 4. oszlopban fordul elő (1 oszlop).
- **1. és 3. sor:**
  - Mindkettő piros ($P, P$): kizárólag a 2. oszlopban fordul elő (1 oszlop).
  - Mindkettő kék ($K, K$): kizárólag az 5. oszlopban fordul elő (1 oszlop).
- **2. és 3. sor:**
  - Mindkettő piros ($P, P$): kizárólag a 3. oszlopban fordul elő (1 oszlop).
  - Mindkettő kék ($K, K$): kizárólag a 6. oszlopban fordul elő (1 oszlop).

Mivel semelyik sorpárban sincs két olyan oszlop, ahol a mezők színe azonos (akár mindkettő piros, akár mindkettő kék) lenne, a táblázatban **egyetlen olyan $2 \times 2$-es részháló sincs, amelynek mind a 4 mezője azonos színű**.
Ez a színezés igazolja, hogy 6 oszlopra az állítás nem feltétlenül igaz. $\blacksquare$
