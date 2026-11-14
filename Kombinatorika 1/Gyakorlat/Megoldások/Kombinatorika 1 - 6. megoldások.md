# Kombinatorika 1 – 6. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

Alapfogalmak és tételek a feladatsorhoz:
- **Séta (walk):** Csúcsok és élek váltakozó sorozata: $v_0, e_1, v_1, e_2, \dots, e_k, v_k$, ahol $e_i = \{v_{i-1}, v_i\}$. A séta hossza az élek száma ($k$). Ismétlődhetnek benne csúcsok és élek is.
- **Vonal (trail):** Olyan séta, amelyben minden él különböző (élismétlés nélküli séta).
- **Út (path):** Olyan séta, amelyben minden csúcs különböző (csúcsismétlés nélküli séta). Minden út vonal is egyben.
- **Zárt séta, zárt vonal (körvonal), kör:** Ha $v_0 = v_k$. A **kör** (cycle) olyan zárt séta ($k \ge 3$), amelyben a kezdő- és végpont kivételével minden csúcs különböző, és minden él különböző.
- **Euler-vonal:**
  - **Zárt Euler-vonal:** Olyan zárt vonal, amely a gráf *minden élét* pontosan egyszer tartalmazza. Létezésének szükséges és elégséges feltétele: a gráf (az izolált csúcsoktól eltekintve) összefüggő, és minden csúcsának foka páros.
  - **Nyílt Euler-vonal:** Olyan nyílt vonal, amely a gráf minden élét pontosan egyszer tartalmazza. Feltétele: a gráf összefüggő, és pontosan két páratlan fokú csúcsa van (a vonal ezek között halad).
- **Hamilton-út és Hamilton-kör:**
  - **Hamilton-út:** Olyan út, amely a gráf *minden csúcsát* pontosan egyszer tartalmazza.
  - **Hamilton-kör:** Olyan kör, amely a gráf minden csúcsát pontosan egyszer tartalmazza.
- **Csúcstörlős szükséges feltétel (Toughness):**
  - Ha $G$-ben van Hamilton-kör, akkor tetszőleges nem üres $S \subset V$ csúcshalmaz elhagyása után a megmaradó gráf komponenseinek száma:
    $$c(G - S) \le |S|.$$
  - Ha $G$-ben van Hamilton-út, akkor tetszőleges $S \subset V$ esetén:
    $$c(G - S) \le |S| + 1.$$
- **Dirac-tétel:** Ha egy $n \ge 3$ csúcsú egyszerű gráfban minden csúcs foka legalább $\frac{n}{2}$ ($\delta(G) \ge \frac{n}{2}$), akkor a gráf tartalmaz Hamilton-kört.
- **Ore-tétel:** Ha egy $n \ge 3$ csúcsú egyszerű gráfban bármely két nem szomszédos $u, v$ csúcsra $d(u) + d(v) \ge n$, akkor a gráf tartalmaz Hamilton-kört.

---

## 89. feladat

Rajzold fel azt az egyszerű gráfot, amelynek csúcsai az $A = \{1, 2, 3\}$ halmaz részhalmazai, és amelyben két *különböző* csúcsot akkor köt össze él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat!

a) Milyen hosszú a legrövidebb séta az $\{1, 2\}$ és az $\{1, 3\}$ csúcs között?

b) Milyen hosszú a leghosszabb út ebben a gráfban?

c) Milyen hosszú a leghosszabb séta a gráfban?

d) Van-e olyan négy hosszú vonal az $\{1, 2\}$ és a $\{2\}$ csúcs között, amely nem út?

e) Van-e négy, öt, illetve hat hosszú kör a gráfban? És olyan hat hosszú zárt vonal (körvonal), amely nem kör?

**Megoldás.**

A gráf csúcshalmaza $\mathcal{P}(\{1, 2, 3\})$, összesen $2^3 = 8$ csúcs:
- $\emptyset$ (0 elemű),
- $\{1\}, \{2\}, \{3\}$ (1 eleműek),
- $\{1, 2\}, \{1, 3\}, \{2, 3\}$ (2 eleműek),
- $\{1, 2, 3\}$ (3 elemű).

Az élek a valódi tartalmazási relációknak felelnek meg:
- Az $\emptyset$ részhalmaza az összes többi 7 részhalmaznak, így foka $d(\emptyset) = 7$.
- Az $\{1, 2, 3\}$ tartalmazza az összes többi 7 részhalmazt, így foka $d(\{1, 2, 3\}) = 7$.
- Bármely $\{i\}$ egyelemű részhalmaz szomszédai: $\emptyset$, $\{1, 2, 3\}$, valamint a két őt tartalmazó kételemű halmaz (foka $1 + 1 + 2 = 4$).
- Bármely $\{i, j\}$ kételemű részhalmaz szomszédai: $\emptyset$, $\{1, 2, 3\}$, valamint az ő két egyelemű részhalmaza $\{i\}$ és $\{j\}$ (foka $1 + 1 + 2 = 4$).

**a)** Az $\{1, 2\}$ és $\{1, 3\}$ csúcsok nem szomszédosak (egyik sem tartalmazza a másikat), így nem létezik 1 hosszú séta. Létezik viszont 2 hosszú út (és így séta is) köztük, például az $\{1\}$ közös részhalmazon át:
$$\{1, 2\} - \{1\} - \{1, 3\}$$
(továbbá az $\emptyset$ és az $\{1, 2, 3\}$ csúcsokon keresztül is). Tehát a legrövidebb séta hossza **2**.

**b)** Az út definíció szerint nem ismételhet csúcsot. Mivel a gráfnak 8 csúcsa van, egy egyszerű út legfeljebb $8 - 1 = 7$ élből állhat. Megadható 7 hosszú út, amely a gráf összes csúcsát bejárja (Hamilton-út):
$$\{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1\} - \{1, 2\} - \emptyset - \{1, 2, 3\}.$$
Minden szomszédos pár tartalmazza a másikat, és mind a 8 csúcs pontosan egyszer szerepel. Tehát a leghosszabb út hossza **7**.

**c)** A séta ismételhet csúcsokat és éleket is. Mivel a gráf összefüggő és tartalmaz éleket (sőt köröket is), tetszőleges élen ide-oda lépkedve **tetszőlegesen hosszú séta** készíthető (nincs maximális hossz, a hossz tetszőlegesen nagy egész szám lehet).

**d)** **Igen, van.** A vonal élismétlés nélküli séta. Olyan 4 élből álló vonalat keresünk $\{1, 2\}$ és $\{2\}$ között, amelyben legalább egy csúcs ismétlődik.
Tekintsük az alábbi élsorozatot:
1. $e_1 = \{\{1, 2\}, \emptyset\}$
2. $e_2 = \{\emptyset, \{1, 2, 3\}\}$
3. $e_3 = \{\{1, 2, 3\}, \{1, 2\}\}$
4. $e_4 = \{\{1, 2\}, \{2\}\}$

Ez a séta a következő csúcsokat érinti sorrendben:
$$\{1, 2\} \to \emptyset \to \{1, 2, 3\} \to \{1, 2\} \to \{2\}.$$
A 4 él mind különböző, tehát ez egy vonal. Hossza 4, végpontjai $\{1, 2\}$ és $\{2\}$, és a kezdő $\{1, 2\}$ csúcs a 3. lépés után újra megjelenik (csúcsismétlés), így **nem út**.

**e)**
- **4 hosszú kör:** Létezik, például:
  $$\{1\} - \{1, 2\} - \{2\} - \emptyset - \{1\}.$$
  (Mind a 4 csúcs különböző, az egymást követők tartalmazzák egymást).
- **5 hosszú kör:** Létezik, például:
  $$\emptyset - \{1\} - \{1, 2\} - \{1, 2, 3\} - \{2, 3\} - \emptyset.$$
  (5 különböző csúcs, a szomszédosak tartalmazzák egymást: $\emptyset \subset \{1\} \subset \{1, 2\} \subset \{1, 2, 3\} \supset \{2, 3\} \supset \emptyset$).
- **6 hosszú kör:** Létezik, például az 1 és 2 elemű halmazok alternálásával:
  $$\{1\} - \{1, 2\} - \{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1\}.$$
- **6 hosszú zárt vonal, amely nem kör:**
  Két olyan 3 hosszú kört (háromszöget) veszünk, amelyeknek pontosan egy közös csúcsuk van, így élük nem közös. Legyen a közös csúcs az $\emptyset$:
  - 1. háromszög: $\emptyset - \{1\} - \{1, 2\} - \emptyset$ (élek: $\{\emptyset, \{1\}\}$, $\{\{1\}, \{1, 2\}\}$, $\{\{1, 2\}, \emptyset\}$).
  - 2. háromszög: $\emptyset - \{3\} - \{2, 3\} - \emptyset$ (élek: $\{\emptyset, \{3\}\}$, $\{\{3\}, \{2, 3\}\}$, $\{\{2, 3\}, \emptyset\}$).
  Ezek élei mind különbözők. A zárt séta:
  $$\emptyset \to \{1\} \to \{1, 2\} \to \emptyset \to \{3\} \to \{2, 3\} \to \emptyset.$$
  Ez 6 hosszú zárt vonal, de nem kör, mert az $\emptyset$ csúcsot kétszer is érinti a bejárás során.

---

## 90. feladat

a) Van-e olyan hatcsúcsú, 3-reguláris egyszerű gráf, amelyben nincs Hamilton-kör?

b) Mutass példát olyan 3-reguláris egyszerű összefüggő gráfra, amelyben nincs Hamilton-út!

**Megoldás.**

**a)** **Nincs ilyen gráf.**
Legyen $G$ egy 6 csúcsú, 3-reguláris egyszerű gráf.
A komplementere, $\overline{G}$ szintén egyszerű gráf 6 csúcson, és minden csúcsának foka $6 - 1 - 3 = 2$, vagyis $\overline{G}$ 2-reguláris gráf.
A 6 csúcsú 2-reguláris gráfok diszjunkt körök uniói. A 6 felbontásai legalább 3 hosszú körök összegeként:
1. Egyetlen 6 hosszú kör: $\overline{G} \cong C_6$.
2. Két diszjunkt 3 hosszú kör: $\overline{G} \cong C_3 \cup C_3$.

Vizsgáljuk meg mindkét esetet:
1. Ha $\overline{G} \cong C_3 \cup C_3$: ekkor a komplementer gráf a $K_{3,3}$ teljes páros gráf. A $K_{3,3}$ páros gráfban ($A = \{a_1, a_2, a_3\}, B = \{b_1, b_2, b_3\}$) létezik Hamilton-kör, például:
   $$a_1 - b_1 - a_2 - b_2 - a_3 - b_3 - a_1.$$
2. Ha $\overline{G} \cong C_6$: jelölje a komplementer kör csúcsait sorban $1, 2, 3, 4, 5, 6$. Ekkor $G$-ben pontosan azok a csúcspárok vannak összekötve, amelyek nem szomszédosak a $C_6$-ban. Könnyen találunk benne Hamilton-kört:
   $$1 - 3 - 5 - 2 - 6 - 4 - 1.$$
   Ellenőrzés: a használt élek különbségei mod 6: $|3-1|=2$, $|5-3|=2$, $|2-5|=3$, $|6-2|=4 \equiv 2$, $|4-6|=2$, $|1-4|=3$. Egyik sem 1 mod 6, tehát mind élei $G$-nek!

Mivel nincs más 6 csúcsú 3-reguláris egyszerű gráf, **minden 6 csúcsú 3-reguláris egyszerű gráfban van Hamilton-kör**.

**b)** Olyan összefüggő, 3-reguláris egyszerű gráfot keresünk, amelyben nincs Hamilton-út.
Alkalmazzuk a csúcstörlős szükséges feltételt: ha egy gráfban létezik Hamilton-út, akkor tetszőleges $S \subset V$ esetén $c(G - S) \le |S| + 1$.
Ha találunk egy olyan gráfot, amelyben egyetlen csúcs elhagyásával legalább 3 komponens keletkezik ($|S| = 1$ mellett $c(G - S) \ge 3 > 2$), abban nem létezhet Hamilton-út!

**Konstrukció:**
Készítsünk egy olyan 5 csúcsú $H$ részgráfot, amelyben egy kitüntetett $u$ csúcs foka 2, a többi 4 csúcs foka pedig 3:
- Vegyünk 5 csúcsot: $\{u, a, b, c, d\}$.
- Kössük össze a teljes $K_5$ éleivel, majd hagyjunk el belőle 3 élt: az $u$-ból induló $ua$ és $ub$ éleket, valamint a $cd$ élt.
- Ekkor az élek száma $\binom{5}{2} - 3 = 10 - 3 = 7$.
- A fokszámok: $d(u) = 4 - 2 = 2$ (szomszédai $c$ és $d$); $d(a) = 4 - 1 = 3$; $d(b) = 4 - 1 = 3$; $d(c) = 4 - 1 = 3$; $d(d) = 4 - 1 = 3$.
- Tehát $H$-ban $u$ foka 2, minden más csúcs foka 3.

Most vegyünk egy független $w$ csúcsot, és 3 darab diszjunkt másolatot $H$-ból: $H_1, H_2, H_3$, kitüntetett csúcsaik rendre $u_1, u_2, u_3$.
Kössük össze $w$-t az $u_1, u_2, u_3$ csúcsokkal!
- A gráf csúcsszáma $1 + 3 \times 5 = 16$.
- $w$ foka 3 (szomszédai $u_1, u_2, u_3$).
- Minden $u_i$ foka $2 + 1 = 3$ lett.
- A többi csúcs foka már eredetileg is 3 volt.
- A kapott $G$ gráf egyszerű, összefüggő és 3-reguláris!

**Miért nincs benne Hamilton-út?**
Ha elhagyjuk az $S = \{w\}$ egyelemű csúcshalmazt, a $G - \{w\}$ gráf a három független $H_1, H_2, H_3$ komponensre esik szét, így:
$$c(G - \{w\}) = 3 > |\{w\}| + 1 = 2.$$
A csúcstörlős kritérium miatt a gráfban **nem létezhet Hamilton-út**.

---

## 91. feladat

Az alábbi gráfok közül melyekben van nyílt, illetve zárt Euler-vonal? Mindhárom esetben $V = \{1, 2, \dots, 102\}$, és az élhalmaz:

a) $E_1 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 2\}$;

b) $E_2 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \le 3\}$;

c) $E_3 = \{\{i, j\} : 1 \le i < j \le 102, \ j - i \text{ páros}\}$.

**Megoldás.**

Euler tétele szerint egy összefüggő gráfban:
- pontosan akkor van zárt Euler-vonal, ha minden csúcs foka páros;
- pontosan akkor van nyílt Euler-vonal, ha pontosan 2 csúcs foka páratlan (a többi páros).

**a)** $E_1$: az $i$ és $j$ csúcs akkor van összekötve, ha különbségük 1 vagy 2.
A csúcsok fokszámai:
- Az 1-es csúcs szomszédai: 2, 3 $\implies d(1) = 2$ (páros).
- A 2-es csúcs szomszédai: 1, 3, 4 $\implies d(2) = 3$ (**páratlan**).
- Minden $3 \le i \le 100$ csúcs szomszédai: $i-2, i-1, i+1, i+2 \implies d(i) = 4$ (páros).
- A 101-es csúcs szomszédai: 99, 100, 102 $\implies d(101) = 3$ (**páratlan**).
- A 102-es csúcs szomszédai: 100, 101 $\implies d(102) = 2$ (páros).

A gráf összefüggő (az $1 - 2 - 3 - \dots - 102$ út benne van), és pontosan két páratlan fokú csúcsa van (a 2 és a 101).
Ezért a gráfban **zárt Euler-vonal nincs**, de **nyílt Euler-vonal van** (a 2 és a 101 csúcsok között).

**b)** $E_2$: a különbség legfeljebb 3.
A csúcsok fokszámai:
- $d(1) = 3$ (szomszédai: 2, 3, 4) — **páratlan**.
- $d(2) = 4$ (szomszédai: 1, 3, 4, 5) — páros.
- $d(3) = 5$ (szomszédai: 1, 2, 4, 5, 6) — **páratlan**.
- $d(100) = 5$ (szomszédai: 97, 98, 99, 101, 102) — **páratlan**.
- $d(101) = 4$ — páros.
- $d(102) = 3$ — **páratlan**.

A páratlan fokú csúcsok száma legalább 4 (az 1, 3, 100, 102 csúcsok mind páratlanok). Mivel a páratlan csúcsok száma nem 0 és nem 2, a gráfban **sem zárt, sem nyílt Euler-vonal nincs**.

**c)** $E_3$: $j - i$ páros.
Két szám különbsége pontosan akkor páros, ha azonos a paritásuk.
Tehát a páratlan számok mind össze vannak kötve az összes többi páratlan számmal, a páros számok pedig az összes többi páros számmal, de páratlan és páros szám között egyetlen él sincs!
A gráf két diszjunkt teljes gráf uniója: egy $K_{51}$ az $\{1, 3, 5, \dots, 101\}$ halmazon, és egy másik $K_{51}$ a $\{2, 4, 6, \dots, 102\}$ halmazon.
Mivel mindkét komponensben van él ($51 \ge 2$), egyetlen séta sem járhatja be mindkét komponens éleit.
A gráf nem összefüggő (két külön éllel rendelkező komponense van), így **sem zárt, sem nyílt Euler-vonal nincs**.

---

## 92. feladat

Van-e Hamilton-kör az alábbi gráfokban? És Hamilton-út?

**Megoldás.**

**1. gráf (házikó alakú gráf, 5 csúcs):**
A gráf egy alsó 4 csúcsú teljes részgráfból ($K_4$) és egy felső csúcsból áll, amely a $K_4$ két felső csúcsához kapcsolódik.
Jelölje a csúcsokat: $T$ (felső tetőcsúcs), $TL, TR$ (felső bal és jobb), $BL, BR$ (alsó bal és jobb).
- **Hamilton-kör:** Létezik:
  $$T - TL - BL - BR - TR - T.$$
  Ez az 5 csúcsú egyszerű kör mind az 5 csúcsot tartalmazza.
- **Hamilton-út:** Mivel van Hamilton-kör, annak bármelyik élét elhagyva **Hamilton-út is van**.

**2. gráf (pillangó / két $K_4$ egyetlen közös csúccsal, 7 csúcs):**
A bal oldali 3 csúcs a központi $C$ csúccsal egy $K_4$-et alkot, a jobb oldali 3 csúcs szintén a $C$ csúccsal egy $K_4$-et alkot. A két részgráf kizárólag a $C$ csúcsban találkozik.
- **Hamilton-kör:** Ha elhagyjuk az $S = \{C\}$ csúcsot, a megmaradó gráf 2 komponensre esik: $c(G - \{C\}) = 2 > |\{C\}| = 1$. A csúcstörlős feltétel miatt **nincs Hamilton-kör**.
- **Hamilton-út:** Létezik: bejárjuk a bal oldali $K_4$ három külső csúcsát, átmegyünk $C$-be, majd bejárjuk a jobb oldali $K_4$ három külső csúcsát:
  $$L_1 - L_2 - L_3 - C - R_1 - R_2 - R_3.$$
  Ez 7 csúcsú út, tehát **van Hamilton-út**.

**3. gráf (két $K_4$ és egy háromszög egy közös $C$ csúccsal, 9 csúcs):**
A központi $C$ vágócsúcs, amelyhez két diszjunkt $K_4$ és egy diszjunkt háromszög csatlakozik (a külső csúcsok száma $3 + 3 + 2 = 8$).
- Ha töröljük az $S = \{C\}$ csúcsot ($|S| = 1$), a gráf 3 komponensre esik szét:
  $$c(G - \{C\}) = 3.$$
- Hamilton-kör esetén $c(G - S) \le |S| = 1$ kellene, de $3 > 1$, így **nincs Hamilton-kör**.
- Hamilton-út esetén $c(G - S) \le |S| + 1 = 2$ kellene, de $3 > 2$, így **Hamilton-út sincs**.

**4. gráf (17 csúcsú rács-szerű, koncentrikus körökből álló gráf):**
A gráf csúcsai:
- Külső 8-as kör: $O_1, O_2, \dots, O_8$.
- Belső 8-as kör: $I_1, I_2, \dots, I_8$.
- Középpont: $M$.
Összeköttetések: a páros indexű külső csúcsok össze vannak kötve a megfelelő belső csúcsokkal ($O_{2k} - I_{2k}$), és a 4 belső páros csúcs össze van kötve $M$-mel ($I_{2k} - M$).

*1. észrevétel (Párosság):*
A gráf páros! Színezzük a csúcsokat két színnel ($A$ és $B$):
- $A$ osztály: a külső kör páratlan csúcsai ($O_1, O_3, O_5, O_7$) és a belső kör páros csúcsai ($I_2, I_4, I_6, I_8$). Mérete: $|A| = 4 + 4 = 8$.
- $B$ osztály: a külső kör páros csúcsai ($O_2, O_4, O_6, O_8$), a belső kör páratlan csúcsai ($I_1, I_3, I_5, I_7$), valamint a középpont $M$. Mérete: $|B| = 4 + 4 + 1 = 9$.
Minden él $A$ és $B$ között fut, így a gráf valóban páros.
Mivel a két színosztály elemszáma különböző ($|A| = 8 \ne 9 = |B|$), a gráfban **nem létezhet Hamilton-kör** (hiszen egy Hamilton-kör váltakozva látogatná az $A$ és $B$ osztályokat, amihez $|A| = |B|$ szükséges).

*2. észrevétel (Hamilton-út hiánya csúcstörléssel):*
Tekintsük az $S = \{I_2, I_4, I_6, I_8\}$ csúcshalmazt ($|S| = 4$).
Ha töröljük az $S$-beli 4 csúcsot a gráfból:
- $M$ izolált csúcs lesz (1 komponens),
- $I_1, I_3, I_5, I_7$ mind izolált csúcsok lesznek (4 különálló komponens),
- a külső csúcsok a külső körön keresztül összefüggők maradnak (1 komponens).
Így a komponensek száma:
$$c(G - S) = 1 + 4 + 1 = 6.$$
A Hamilton-út létezésének szükséges feltétele szerint $c(G - S) \le |S| + 1$ kellene legyen, de:
$$6 > 4 + 1 = 5.$$
Tehát a 4. gráfban **Hamilton-út sem létezik**.

---

## 93. feladat

a) Mutass ellenpéldát a Dirac-tétel megfordítására!

b) Mutass olyan gráfot, amelyben van Hamilton-kör, és ezt az Ore-tétel segítségével be tudod bizonyítani, de a Dirac-tétellel nem!

c) Mutasd meg, hogy az Ore-tétel feltétele nem szükséges a Hamilton-kör létezéséhez!

**Megoldás.**

**a)** A Dirac-tétel azt mondja ki, hogy ha egy $n \ge 3$ csúcsú egyszerű gráfban minden csúcs foka $d(v) \ge \frac{n}{2}$, akkor van benne Hamilton-kör.
A tétel megfordítása így hangzana: *„Ha egy egyszerű gráfban van Hamilton-kör, akkor minden csúcs foka legalább $\frac{n}{2}$.”*
**Ellenpélda:** Tetszőleges $C_n$ körgráf, ahol $n \ge 5$ (például $C_5$).
A $C_5$ gráfban van Hamilton-kör (maga a kör), de minden csúcs foka $2$, ami szigorúan kisebb, mint $\frac{n}{2} = \frac{5}{2} = 2.5$. Tehát a megfordítás hamis.

**b)** Olyan gráfot keresünk, amelyre teljesül az Ore-feltétel ($d(u) + d(v) \ge n$ minden nem szomszédos párra), de van olyan csúcsa, amelynek foka kisebb, mint $\frac{n}{2}$ (így a Dirac-tétel nem alkalmazható).
**Példa:** Legyen $n = 5$, és tekintsük a $G$ gráfot az $\{1, 2, 3, 4, 5\}$ csúcshalmazon úgy, hogy a $\{2, 3, 4, 5\}$ csúcsok egy $K_4$-et alkotnak, az $1$-es csúcs pedig csak a $2$ és $3$ csúcsokkal van összekötve.
- Fokszámok:
  $d(1) = 2$,
  $d(2) = 4$,
  $d(3) = 4$,
  $d(4) = 3$,
  $d(5) = 3$.
- Mivel $d(1) = 2 < \frac{5}{2} = 2.5$, a **Dirac-tétel nem alkalmazható**.
- A nem szomszédos csúcspárok kizárólag az $\{1, 4\}$ és $\{1, 5\}$:
  $d(1) + d(4) = 2 + 3 = 5 \ge 5$,
  $d(1) + d(5) = 2 + 3 = 5 \ge 5$.
  Minden nem szomszédos pár fokszámösszege legalább $n = 5$, így az **Ore-tétel alkalmazható**, és garantálja a Hamilton-kör létezését (amely valóban létezik, pl. $1 - 2 - 4 - 5 - 3 - 1$).

**c)** Az Ore-tétel feltétele nem szükséges: tekintsük újra az $n \ge 5$ csúcsú $C_n$ kört (pl. $C_5$).
Van benne Hamilton-kör, de bármely két nem szomszédos csúcs fokszámösszege $2 + 2 = 4 < 5 = n$. Tehát van Hamilton-kör anélkül, hogy az Ore-feltétel teljesülne.

---

## 94. feladat

a) Mutass olyan gráfot, amelyben minden csúcs foka páros, még sincs benne zárt Euler-vonal!

b) Mutass olyan gráfot, amely nem összefüggő, de van benne zárt Euler-vonal!

**Megoldás.**

**a)** Vegyünk két diszjunkt háromszöget: $G = C_3 \cup C_3$.
Ebben a gráfban 6 csúcs van, és minden csúcs foka pontosan 2 (tehát páros). Ennek ellenére nincs zárt Euler-vonal, mivel a gráf nem összefüggő, így egyetlen séta nem tartalmazhatja mindkét diszjunkt háromszög éleit.

**b)** Euler tétele megengedi, hogy a gráfban legyenek olyan komponensek, amelyek egyetlen izolált csúcsból állnak (nem tartalmaznak élt).
Legyen $G$ egy 3 hosszú kör és egy izolált csúcs uniója:
$$V = \{1, 2, 3, 4\}, \qquad E = \{\{1, 2\}, \{2, 3\}, \{3, 1\}\}.$$
A 4-es csúcs foka 0, így a gráf nem összefüggő (két komponense van: $\{1, 2, 3\}$ és $\{4\}$).
Ugyanakkor az $1 - 2 - 3 - 1$ zárt séta a gráf **összes élét** pontosan egyszer tartalmazza, vagyis definíció szerint zárt Euler-vonal!

---

## 95. feladat

a) Mutass olyan egyszerű gráfot, amelyben nincs Hamilton-út, de a csúcstörlős kritériummal ezt nem lehet kimutatni!

b) Adj analóg példát Hamilton-körre is, legalább három csúcson!

c) Mutass olyan egyszerű gráfot, amelyben van Hamilton-út és zárt Euler-vonal, de nincs Hamilton-kör!

**Megoldás.**

**a)** Olyan egyszerű gráfot kell megadnunk, amelyben **nincs Hamilton-út**, de **minden** $S \subset V$ csúcshalmazra teljesül a csúcstörlős szükséges feltétel:
$$c(G - S) \le |S| + 1.$$

**Konstrukció:**
Tekintsünk két kitüntetett csúcsot, $x$-et és $y$-t, amelyeket összekötünk egymással.
Csatoljunk hozzájuk 3 darab független komponenst: $C_1, C_2, C_3$.
Mindegyik $C_i$ legyen egy olyan 4 csúcsú gráf ($v_{i,1}, v_{i,2}, v_{i,3}, v_{i,4}$), amely a $K_4$-ből egyetlen él elhagyásával keletkezik (a hiányzó él $\{v_{i,2}, v_{i,4}\}$).
Mindhárom komponensben $x$-et kössük össze $v_{i,1}$-gyel, $y$-t pedig $v_{i,3}$-mal.
A gráf összesen $2 + 3 \times 4 = 14$ csúcsú.

*Miért nincs benne Hamilton-út?*
Egy Hamilton-útnak mindhárom $C_1, C_2, C_3$ komponenst be kell járnia. Mivel a komponensek között csak $x$-en és $y$-on keresztül lehet átjárni, és egy út $x$-et legfeljebb egyszer, $y$-t is legfeljebb egyszer érintheti:
- Legfeljebb két komponens tartalmazhatja az út végpontjait (egyikben indul, másikban végződik).
- A harmadik (közbenső) komponensbe az útnak az egyik kitüntetett csúcson (pl. $x$-en át $v_{i,1}$-nél) be kell lépnie, és a másikon (pl. $y$-on át $v_{i,3}$-nál) ki kell lépnie, miközben bejárja a komponens *összes* csúcsát!
Azonban a $K_4 \setminus \{v_{i,2}, v_{i,4}\}$ gráfban a $v_{i,2}$ és $v_{i,4}$ csúcsok szomszédai kizárólag a $\{v_{i,1}, v_{i,3}\}$ csúcspár. Ezért bármely $v_{i,1}$-ből induló és $v_{i,3}$-ban végződő egyszerű út legfeljebb az egyiküket tudja meglátogatni ($v_{i,1} - v_{i,2} - v_{i,3}$ vagy $v_{i,1} - v_{i,4} - v_{i,3}$), de mindkettőt egyszerre sosem!
Így egyik komponens sem tud közbenső komponensként viselkedni, tehát a gráfban **nincs Hamilton-út**.

*Miért nem mutatja ezt ki a csúcstörlős feltétel?*
Az $S = \{x, y\}$ törlésével ($|S| = 2$) a megmaradó gráf komponenseinek száma 3 ($C_1, C_2, C_3$).
A feltétel szerint $c(G - S) \le |S| + 1 = 2 + 1 = 3$, ami teljesül!
Minden más $S$ részhalmazra szintén igazolható (akár gépi ellenőrzéssel is), hogy $c(G - S) \le |S| + 1$, tehát a csúcstörlős feltétellel a Hamilton-út hiánya nem mutatható ki.

**b)** Hamilton-körre az analóg tulajdonság: a gráfban nincs Hamilton-kör, de minden $S \subset V$ esetén $c(G - S) \le |S|$.
A klasszikus példa a **Petersen-gráf** ($n = 10$ csúcs, 15 él):
- Ismert tétel, hogy a Petersen-gráfban **nincs Hamilton-kör** (például a külső 5-szög és belső 5-ágú csillag közötti küllők paritásos számlálásával igazolható).
- Ugyanakkor a Petersen-gráf 3-szorosan összefüggő, és tetszőleges $S \subset V$ csúcshalmazra $c(G - S) \le |S|$, vagyis a csúcstörlős kritérium nem tudja kimutatni a Hamilton-kör hiányát.

**c)** Olyan gráfot keresünk, amelyben van Hamilton-út és zárt Euler-vonal, de nincs Hamilton-kör.
**Példa:** A „pillangó gráf” (két háromszög egy közös csúccsal):
Legyen $V = \{v, a_1, a_2, b_1, b_2\}$, és az élek a két háromszög élei: $v - a_1 - a_2 - v$ és $v - b_1 - b_2 - v$.
- **Zárt Euler-vonal:** Minden csúcs foka páros ($d(v) = 4$, $d(a_1) = d(a_2) = d(b_1) = d(b_2) = 2$), és a gráf összefüggő, így van zárt Euler-vonal:
  $$v - a_1 - a_2 - v - b_1 - b_2 - v.$$
- **Hamilton-út:** Létezik:
  $$a_1 - a_2 - v - b_1 - b_2.$$
  Ez mind az 5 csúcsot bejárja.
- **Hamilton-kör nincs:** Ha töröljük a $v$ csúcsot, a gráf 2 komponensre esik ($c(G - \{v\}) = 2 > |\{v\}| = 1$), így a csúcstörlős feltétel miatt nem tartalmazhat Hamilton-kört.

---

## 96. feladat

A bal oldali palotaalaprajz szerint a) legkevesebb hány ajtót kell befalazni ahhoz, hogy tehessünk olyan sétát, amely során minden megmaradó ajtón pontosan egyszer megyünk át? b) És ha még vissza is akarunk érni a kiindulási terembe?

**Megoldás.**

Készítsük el a palota duális gráfját: a csúcsok a szobák, és két csúcs között pontosan akkor fut él, ha a megfelelő két szoba között van ajtó.
Az alaprajz szerint a palotában 14 szoba és 22 ajtó található.
Számoljuk meg a szobák fokszámait (az ajtók számát):
- A 4 belső/középső terem mindegyike pontosan 3 ajtóval rendelkezik ($d = 3$, **páratlan**).
- A többi 10 terem (folyosók, sarokszobák stb.) mindegyike páros számú ajtóval (2 vagy 4) rendelkezik.

Tehát a palotában pontosan **4 páratlan fokú terem** van.
Egy ajtó befalazása egy él törlését jelenti a gráfból, ami pontosan a két érintett szoba fokszámát csökkenti 1-gyel, így azok paritását az ellenkezőjére változtatja.

**a)** Olyan séta, amely minden megmaradó ajtón pontosan egyszer megy át: ez egy (nyílt vagy zárt) Euler-vonal.
Euler tétele szerint ehhez a páratlan fokú csúcsok száma legfeljebb 2 lehet.
Jelenleg 4 páratlan csúcs van, így legalább egy befalazás szükséges.
Ha befalazzuk a két felső középső terem közötti ajtót:
- e két terem foka $3$-ról $2$-re csökken (páros lesz),
- a másik két belső terem foka változatlanul 3 marad (páratlan),
- a többi terem foka páros marad.
Így pontosan 2 páratlan fokú terem marad, a gráf összefüggő marad, tehát létezik nyílt Euler-séta.
Ezért legkevesebb **1 ajtót** kell befalazni.

**b)** Ha vissza is akarunk érni a kiindulási terembe, akkor zárt Euler-vonalra van szükség.
Ehhez az összes csúcs fokszámának párosnak kell lennie (0 páratlan csúcs).
Egy ajtó befalazása legfeljebb 2 csúcs paritását változtathatja páratlanról párosra, így a 4 páratlan csúcs megszüntetéséhez legalább $\frac{4}{2} = 2$ ajtó befalazása szükséges.
Ez meg is valósítható:
1. Befalazzuk a két felső belső terem közötti ajtót (mindkettő páros lesz).
2. Befalazzuk a két alsó belső terem közötti ajtót (mindkettő páros lesz).
Ekkor mind a 14 terem foka páros lesz, és a palota összefüggő marad, így létezik zárt Euler-séta.
Ezért legkevesebb **2 ajtót** kell befalazni.

---

## 97. feladat

Mutasd meg, hogy a jobb oldali gráfban a) van Hamilton-út és Hamilton-kör (például a csúcsok megfelelő felsorolásával); b) nincs olyan Hamilton-kör, amelyben az $X$ és az $Y$ szomszédos!

**Megoldás.**

A gráf 12 csúcsú: 10 külső csúcs ($A, B, C, D, E, F, G, H, I, J$) egy tízszög mentén, valamint 2 belső csúcs ($X, Y$).

**a)** **Hamilton-kör és Hamilton-út létezése:**
Adjuk meg a csúcsok egy olyan ciklikus felsorolását, ahol minden szomszédos pár között van él:
$$A - X - J - H - B - D - F - Y - I - G - E - C - A.$$
Ellenőrizzük az éleket a megadott gráfban:
1. $A - X$: él (van)
2. $X - J$: él (van)
3. $J - H$: él (van)
4. $H - B$: él (van)
5. $B - D$: él (van)
6. $D - F$: él (van)
7. $F - Y$: él (van)
8. $Y - I$: él (van)
9. $I - G$: él (van)
10. $G - E$: él (van)
11. $E - C$: él (van)
12. $C - A$: él (van)
Mind a 12 csúcs pontosan egyszer szerepel, és a kör bezárul. Ez egy **Hamilton-kör**.
Egy tetszőleges élét (pl. $C - A$) elhagyva a kapott sorozat **Hamilton-út**.

**b)** **Nincs olyan Hamilton-kör, amelyben $X$ és $Y$ szomszédos:**
Vizsgáljuk meg a 10 külső csúcs közötti éleket:
- A páratlan betűk halmaza $C_1 = \{A, C, E, G, I\}$ egy 5 hosszú kört alkot belső átlókkal: az élek $A-C, C-E, E-G, G-I, I-A$, valamint átlók mint $C-G$. Egyetlen él sem megy $C_1$-ből a páros betűk felé!
- A páros betűk halmaza $C_2 = \{B, D, F, H, J\}$ szintén egy 5 hosszú kört alkot átlókkal ($B-D, D-F, F-H, H-J, J-B$).
- A külső csúcsok között **egyetlen él sincs $C_1$ és $C_2$ között**! A $G - \{X, Y\}$ részgráf két diszjunkt összefüggő komponensre esik: $C_1$-re és $C_2$-re.

Tegyük fel indirekt, hogy létezik olyan $H$ Hamilton-kör, amelyben $X$ és $Y$ szomszédos (azaz $H$ tartalmazza az $\{X, Y\}$ élt).
- Ekkor az $\{X, Y\}$ él a kör egyik éle mindkét csúcsnál.
- Mivel egy körben minden csúcs foka pontosan 2, $X$-nek a körben pontosan egyetlen további éle van a külső csúcsok felé (legyen ez egy $u \in C_1 \cup C_2$ csúcs felé mutató él).
- Hasonlóan, $Y$-nak a körben pontosan egyetlen további éle van a külső csúcsok felé (legyen ez egy $v \in C_1 \cup C_2$ felé mutató él).
- Ha a $H$ körből elhagyjuk az $X$ és $Y$ csúcsokat, a megmaradt csúcsok egyetlen összefüggő utat kell alkossanak $u$ és $v$ között a $G - \{X, Y\}$ gráfban.
Azonban $G - \{X, Y\}$-ban nincsenek élek $C_1$ és $C_2$ között:
- Ha $u$ és $v$ mindketten $C_1$-ben lennének, az út sosem érhetné el $C_2$-t, így $C_2$ csúcsai kimaradnának a körből.
- Ha $u$ és $v$ mindketten $C_2$-ben lennének, $C_1$ csúcsai maradnának ki.
- Ha az egyik $C_1$-ben, a másik $C_2$-ben van, akkor nem létezhet köztük összefüggő út $G - \{X, Y\}$-ban.
Mindegyik eset ellentmondásra vezet, így **nem létezhet olyan Hamilton-kör, amelyben $X$ és $Y$ szomszédos**. $\blacksquare$

---

## 98. feladat

Tíz házaspár mindegyik tagjára igaz, hogy a maradék kilenc házaspár mindegyikének legalább egyik tagját ismeri. Az ismeretség kölcsönös, és mindenki ismeri a saját házastársát is. Bizonyítsd be, hogy a húsz személy leültethető egy húszszemélyes, kör alakú asztalhoz úgy, hogy mindenki ismerje mindkét szomszédját!

**Megoldás.**

Készítsünk ismeretségi gráfot:
- A csúcsok a személyek: $n = 10 \times 2 = 20$ csúcs.
- Két csúcs között él fut, ha a két személy ismeri egymást.
- A feladat kérdése az, hogy van-e Hamilton-kör ebben a 20 csúcsú egyszerű gráfban.

Becsüljük meg egy tetszőleges $P$ személy fokszámát (az ismerőseinek számát):
1. $P$ ismeri a saját házastársát: ez legalább 1 személy.
2. A maradék 9 házaspár mindegyikéből ismeri legalább az egyik tagot: ez további legalább 9 személy.
Tehát bármely $P$ csúcs foka:
$$d(P) \ge 1 + 9 = 10.$$

Mivel a csúcsszám $n = 20 \ge 3$, és minden csúcsra:
$$d(P) \ge 10 = \frac{20}{2} = \frac{n}{2},$$
a **Dirac-tétel** feltétele teljesül!
A Dirac-tétel értelmében a gráfban létezik Hamilton-kör.
A Hamilton-kör mentén leültetve a személyeket az asztal köré, mindenki mindkét mellette ülő szomszédját ismerni fogja. $\blacksquare$

---

## 99. feladat

Hány Hamilton-út, illetve Hamilton-kör van a $K_{n,n}$ teljes páros gráfban, ha $n \ge 2$? Két utat vagy kört akkor tekintünk különbözőnek, ha eltér az élhalmazuk.

**Megoldás.**

Jelölje a két színosztályt $A = \{a_1, \dots, a_n\}$ és $B = \{b_1, \dots, b_n\}$.

**1. Hamilton-körök száma:**
Egy Hamilton-kör $2n$ csúcsú, és felváltva kell látogatnia $A$ és $B$ csúcsait:
$$a_{i_1} - b_{j_1} - a_{i_2} - b_{j_2} - \dots - a_{i_n} - b_{j_n} - a_{i_1}.$$
- A ciklikus elforgatások kiküszöbölésére rögzítsük a kezdőcsúcsot: legyen ez az $a_1 \in A$ csúcs.
- A maradék $n-1$ darab $A$-beli csúcs sorrendje $(n-1)!$-féleképpen választható meg.
- Az $n$ darab $B$-beli csúcs beiktatási sorrendje $n!$-féleképpen választható meg.
- Mivel a kört a két ellentétes körüljárási irányban bejárva ugyanazt az élhalmazt kapjuk, osztanunk kell 2-vel:
$$\text{Hamilton-körök száma} = \frac{(n-1)! \cdot n!}{2}.$$

**2. Hamilton-utak száma:**
Egy Hamilton-út $2n$ csúcsot tartalmaz, így $2n-1$ éle van. Felváltva látogatja $A$ és $B$ csúcsait:
- Vagy $A$-ban kezdődik és $B$-ben végződik: $a_{i_1}, b_{j_1}, \dots, a_{i_n}, b_{j_n}$.
  Az $A$ csúcsainak sorrendje $n!$, a $B$ csúcsainak sorrendje $n!$, ez $n! \cdot n! = (n!)^2$ lehetőség.
- Vagy $B$-ben kezdődik és $A$-ban végződik: $b_{j_1}, a_{i_1}, \dots, b_{j_n}, a_{i_n}$.
  Ez szintén $(n!)^2$ lehetőség.
Összesen $2 \cdot (n!)^2$ irányított csúcssorozat van.
Mivel két utat akkor tekintünk azonosnak, ha megegyezik az élhalmazuk, és egy irányítatlan utat pontosan a két végpontja felől indulva olvashatunk ki (az egyik $A$-ban, a másik $B$-ben kezdődik), minden élhalmaz pontosan 2 irányított sorozatnak felel meg.
Ezért:
$$\text{Hamilton-utak száma} = \frac{2 \cdot (n!)^2}{2} = (n!)^2.$$

---

## 100. feladat

Az $F$ fának 17 csúcsa van, és minden csúcsának fokszáma 1 vagy 4. Határozd meg, legalább hány élt kell $F$-be behúzni ahhoz, hogy a keletkező egyszerű gráfnak legyen zárt Euler-vonala!

**Megoldás.**

Legyen a fa csúcsszáma $n = 17$. Egy $n$ csúcsú fa éleinek száma $e = n - 1 = 16$.
A fokszámösszeg a kézfogási lemma szerint:
$$\sum_{v \in V} d_F(v) = 2e = 32.$$
Jelölje $k$ a 4-edfokú csúcsok, $\ell$ pedig az 1-edfokú csúcsok (levelek) számát:
$$k + \ell = 17,$$
$$4k + \ell = 32.$$
A második egyenletből kivonva az elsőt: $3k = 15 \implies k = 5$, és így $\ell = 17 - 5 = 12$.
Tehát a fának **5 darab páros (4-edfokú)** és **12 darab páratlan (1-edfokú)** csúcsa van.

Olyan új $E'$ élhalmazt akarunk behúzni, hogy a keletkező $G = (V, E \cup E')$ egyszerű gráfban minden csúcs foka páros legyen (hiszen $G$ összefüggő, mivel tartalmazza az $F$ fát).
Jelölje $d_{E'}(v)$ a behúzott élek számát a $v$ csúcsnál:
- Ha $v$ 4-edfokú volt $F$-ben, akkor $d_G(v) = 4 + d_{E'}(v)$ párosságához $d_{E'}(v)$-nek **párosnak** kell lennie ($\ge 0$).
- Ha $v$ 1-edfokú volt $F$-ben, akkor $d_G(v) = 1 + d_{E'}(v)$ párosságához $d_{E'}(v)$-nek **páratlannak** kell lennie ($\ge 1$).

A behúzott élek fokszámösszege a 12 levélre:
$$\sum_{u \text{ levél}} d_{E'}(u) \ge 12 \times 1 = 12.$$
Mivel a behúzott élek fokszámösszege $2|E'|$:
$$2|E'| = \sum_{v \in V} d_{E'}(v) \ge \sum_{u \text{ levél}} d_{E'}(u) \ge 12 \implies |E'| \ge 6.$$
Tehát legalább **6 élt** be kell húzni.

Megmutatjuk, hogy 6 él behúzása elegendő:
Ha a 12 levelet párokba állítjuk, és behúzunk közéjük 6 független élt (egy teljes párosítást a leveleken):
- Ekkor minden levél foka $1 + 1 = 2$ (páros) lesz.
- Az 5 belső csúcs foka változatlanul 4 (páros) marad.
- A keletkező gráf egyszerű marad, mert két levél semmiképp sem volt szomszédos az $F$ fában (ha két levél szomszédos lenne egy fában, akkor a fának csak 2 csúcsa lenne, de itt $n = 17$).
Így a keletkező egyszerű gráf minden csúcsa páros fokú és összefüggő, tehát van benne zárt Euler-vonal.
A minimális élszám tehát **6**.

---

## 101. feladat

Bizonyítsd be, hogy ha egy $n \ge 3$ csúcsú egyszerű $G$ gráf kielégíti az Ore-tétel feltételét, vagyis bármely két nem szomszédos csúcsának fokszámösszege legalább $n$, akkor

a) bármely két csúcsának távolsága legfeljebb kettő;

b) a csúcsok legalább felének fokszáma legalább $n/2$.

**Megoldás.**

**a)** Legyen $u, v \in V$ két tetszőleges különböző csúcs.
- Ha $u$ és $v$ szomszédosak, akkor köztük a távolság 1, ami $\le 2$.
- Ha $u$ és $v$ nem szomszédosak:
  Az Ore-feltétel szerint $d(u) + d(v) \ge n$.
  Mind $u$, mind $v$ szomszédai a maradék $V \setminus \{u, v\}$ halmazban találhatók, amelynek mérete $|V \setminus \{u, v\}| = n - 2$.
  A skatulyaelv (vagy a szita-formula) szerint a közös szomszédaik száma:
  $$|N(u) \cap N(v)| = |N(u)| + |N(v)| - |N(u) \cup N(v)| \ge n - (n - 2) = 2 \ge 1.$$
  Mivel van közös szomszédjuk (sőt legalább kettő is), jelöljön egyet $w \in N(u) \cap N(v)$.
  Ekkor $u - w - v$ egy 2 hosszú út $u$ és $v$ között, tehát $\text{dist}(u, v) \le 2$. $\blacksquare$

**b)** Legyen $S = \{v \in V : d(v) < n/2\}$ a kis fokszámú csúcsok halmaza, és legyen $k = |S|$.
Azt kell belátnunk, hogy a csúcsok legalább fele legalább $n/2$ fokú, azaz $k \le n/2$.

Tegyük fel indirekt, hogy $k > n/2$.
1. Először belátjuk, hogy **$S$-ben bármely két csúcs szomszédos**:
   Ha létezne két nem szomszédos $u, v \in S$ csúcs, akkor az Ore-tétel szerint $d(u) + d(v) \ge n$ lenne.
   Azonban a definíció szerint $d(u) < n/2$ és $d(v) < n/2$, amiből
   $$d(u) + d(v) < \frac{n}{2} + \frac{n}{2} = n,$$
   ami ellentmondás!
   Tehát az $S$ halmaz feszített részgráfja teljes gráf: $G[S] \cong K_k$.
2. Mivel $S$ egy $k$ méretű teljes gráf, minden $v \in S$ csúcsnak már $S$-en belül van legalább $k - 1$ szomszédja, így:
   $$d(v) \ge k - 1.$$
3. Vizsgáljuk meg a $k > n/2$ feltételt:
   - Ha $n$ páros ($n = 2m$): $k > m \implies k \ge m + 1$, amiből $d(v) \ge k - 1 \ge m = n/2$, ami ellentmond annak, hogy $v \in S$ (hiszen $d(v) < n/2$).
   - Ha $n$ páratlan ($n = 2m + 1$): $n/2 = m + 0.5$. $k > n/2 \implies k \ge m + 1$.
     - Ha $k \ge m + 2$, akkor $d(v) \ge k - 1 \ge m + 1 > n/2$, ami ellentmondás.
     - Ha $k = m + 1$: ekkor $k - 1 = m$. Mivel $v \in S$, $d(v) < m + 0.5$, azaz $d(v) \le m$. Mivel $d(v) \ge k - 1 = m$, ebből következik, hogy **minden $v \in S$ csúcsra $d(v) = m$**.
       Ez azt jelenti, hogy az $S$-beli csúcsoknak **egyáltalán nincs élük $S$-en kívülre** (csak az $S$-beli $k-1=m$ másik csúcshoz kapcsolódnak).
       Ekkor $S$ a gráf egy izolált komponense.
       A gráf többi csúcsának halmaza $V \setminus S$, amelynek mérete $n - k = (2m + 1) - (m + 1) = m \ge 1$ (mivel $n \ge 3 \implies m \ge 1$).
       Válasszunk egy $u \in S$ és egy $w \in V \setminus S$ csúcsot! Mivel nincsenek élek $S$ és $V \setminus S$ között, $u$ és $w$ nem szomszédosak.
       Az Ore-feltétel szerint:
       $$d(u) + d(w) \ge n = 2m + 1.$$
       Mivel $d(u) = m$, ebből $d(w) \ge (2m + 1) - m = m + 1$ következne.
       Azonban $w$-nek sincs éle $S$ felé, így $w$ csak a $V \setminus S$ halmaz többi csúcsához kapcsolódhat, amiből legfeljebb $|V \setminus S| - 1 = m - 1$ darab van!
       Így $d(w) \le m - 1 < m + 1$, ami ellentmondás!

Minden esetben ellentmondásra jutottunk, tehát feltevésünk hamis volt: $k \le n/2$.
Így legalább $n - k \ge n/2$ csúcs fokszáma legalább $n/2$. $\blacksquare$

---

## 102. feladat

Legyen $G$ csúcshalmaza $\{1, 2, \dots, 100\}$. Van-e $G$-ben Hamilton-út, ha két *különböző* $i, j$ csúcsot pontosan az alábbi feltétel teljesülésekor kötünk össze?

a) $0 < |i - j| \le 2$;

b) $|i - j| = 2 \text{ vagy } 3$;

c) $i \mid j \text{ vagy } j \mid i$;

d) $|i - j| > 23$.

**Megoldás.**

**a)** **Van Hamilton-út.**
A feltétel megengedi az 1 különbségű szomszédokat is, így az
$$1 - 2 - 3 - \dots - 100$$
sorozat minden szomszédos elemére $|(i+1) - i| = 1 \le 2$, ami egy triviális Hamilton-út. (Sőt a páros és páratlan számokon oda-vissza lépkedve Hamilton-kör is készíthető).

**b)** **Van Hamilton-út.**
Konstruálhatunk explicit Hamilton-utat:
Például induljunk ki az alábbi 6 elemű blokkból:
$$1, 3, 5, 2, 4, 6$$
(a lépések: $+2, +2, -3, +2, +2$, mind megengedettek).
Ezt követően 4-esével lépegetünk előre az alábbi mintával minden $k \ge 1$ esetén:
a $4k+2$ csúcsról a következő 4-es blokkba lépünk:
$$(4k+2) \xrightarrow{+2} (4k+4) \xrightarrow{+2} (4k+6) \xrightarrow{-3} (4k+3) \xrightarrow{+2} (4k+5) \xrightarrow{+2} (4k+7) \dots$$
A lépések mind $+2$ vagy $-3$ távolságúak, mindegyik 4-es csoportban minden csúcsot pontosan egyszer érintünk, és a 100 csúcs teljes egészében bejárható. Tehát létezik Hamilton-út.

**c)** **Nincs Hamilton-út.**
Tekintsük az 50-nél nagyobb prímszámokat $\{1, 2, \dots, 100\}$-ban:
$$53, 59, 61, 67, 71, 73, 79, 83, 89, 97.$$
Összesen 10 ilyen prím van.
Egy tetszőleges $p > 50$ prím osztói csak az 1 és a $p$. Többszörösei a halmazban: $1 \cdot p = p$ és $2p > 100$, tehát a halmazban nincs nála nagyobb többszöröse.
Ez azt jelenti, hogy **bármely $p > 50$ prímnek az egész gráfban egyetlen szomszédja van: az 1-es szám**!
A gráfban tehát legalább 10 darab olyan 1-fokú (levél) csúcs van, amelyek mind kizárólag az 1-es csúcshoz csatlakoznak.
Egy egyszerű útban egyetlen csúcsnak legfeljebb 2 szomszédja lehet. Az 1-es csúcson keresztül legfeljebb 2 levél látogatható meg (az egyik lehet az út kezdőpontja, a másik a végpontja).
A maradék legalább 8 levél-prímet egyetlen egyszerű út sem tudja meglátogatni!
(Formálisan a csúcstörlős feltétellel: $S = \{1\}$ elhagyásával a 10 darab prím mind izolált komponenssé válik, így $c(G - \{1\}) \ge 10 > |\{1\}| + 1 = 2$).
Tehát a gráfban **nem létezik Hamilton-út**.

**d)** **Van Hamilton-út.**
A csúcsok száma $n = 100$. Két csúcs pontosan akkor van összekötve, ha $|i - j| \ge 24$.
Bármely $i \in \{1, \dots, 100\}$ esetén azok a $j \ne i$ csúcsok, amelyek *nincsenek* összekötve $i$-vel, kielégítik a $|i - j| \le 23$ egyenlőtlenséget.
Legfeljebb 23 darab nála kisebb és legfeljebb 23 darab nála nagyobb szám lehet, így a nem-szomszédok száma legfeljebb $23 + 23 = 46$.
Ezért minden $i$ csúcs foka:
$$d(i) \ge (100 - 1) - 46 = 53.$$
Mivel $n = 100$ és minden csúcsra:
$$d(i) \ge 53 \ge 50 = \frac{n}{2},$$
a **Dirac-tétel** szerint a gráfban nemcsak Hamilton-út, hanem **Hamilton-kör is van**!

---

## Házi feladat

## 103. feladat (házi feladat)

$G$ egy százcsúcsú egyszerű összefüggő $2k$-reguláris gráf, vagyis minden csúcsának foka $2k$. Bizonyítsd be, hogy $G$ néhány élét ki lehet színezni pirosra úgy, hogy minden csúcsra pontosan $k$ piros él illeszkedjen!

**Megoldás.**

Mivel $G$ összefüggő és minden csúcsának foka $2k$ (páros szám), Euler tétele értelmében a gráfban létezik egy $W$ **zárt Euler-vonal**:
$$v_0, e_1, v_1, e_2, v_2, \dots, e_m, v_0,$$
ahol $m$ a gráf összes éleinek száma:
$$m = \frac{100 \cdot 2k}{2} = 100k.$$
Mivel 100 páros, az élek $m = 100k$ száma **páros szám**.

Színezzük ki az éleket a zárt Euler-vonal mentén haladva felváltva pirosra és kékre:
- $e_1$ piros,
- $e_2$ kék,
- $e_3$ piros,
- és így tovább, általában $e_{2i-1}$ piros, $e_{2i}$ kék minden $i = 1, \dots, 50k$ esetén.
Mivel $m$ páros, az utolsó $e_m$ él kék lesz, így a zárt vonalon a paritás nem törik meg ($e_m$ kék, a rákövetkező $e_1$ piros).

Vizsgáljuk meg a csúcsokra illeszkedő élek színeit:
- A zárt Euler-vonal minden $v$ csúcsot pontosan $k$-szor látogat meg (mivel minden látogatáskor 2 illeszkedő élet használ el, és a fokszám $2k$).
- Bármelyik látogatás során a vonal egy belépő élen ($e_t$) érkezik $v$-be, és egy kilépő élen ($e_{t+1}$) távozik.
- Mivel a színek szigorúan alternálnak a vonal mentén, az $\{e_t, e_{t+1}\}$ élpár közül az egyik szükségképpen **piros**, a másik pedig **kék**.
- (A kezdő $v_0$ csúcsnál a befejező él $e_m$ kék, a kezdő él $e_1$ piros, így ott is 1 piros és 1 kék él keletkezik).

Mivel minden csúcsot pontosan $k$-szor látogatunk meg, és minden látogatás pontosan 1 piros és 1 kék élet ad a csúcsnak, a bejárás végén minden csúcsra **pontosan $k$ darab piros él** és $k$ darab kék él fog illeszkedni. $\blacksquare$

---

## 104. feladat (házi feladat)

Egy sakktáblát szeretnénk bejárni lóugrásban úgy, hogy minden mezőre pontosan egyszer lépjünk. Lehetséges-e ez, ha a tábla a) $4 \times 4$-es; b) $5 \times 5$-ös; c) $3 \times 5$-ös? És ha zárt bejárást szeretnénk, vagyis az utolsó mezőről egy lóugrással vissza is akarunk érkezni az elsőre?

**Megoldás.**

A sakktábla mezőit a szokásos módon színezzük fekete és fehér színekre.
Mivel a huszár minden lépéssel megváltoztatja a mező színét (fehérről feketére vagy feketéről fehérre lép), a **huszárgráf páros gráf**.
- Zárt bejárás (Hamilton-kör) csak páros számú mező esetén létezhet, és szükséges hozzá, hogy a fekete és fehér mezők száma megegyezzen.
- Nyílt bejárás (Hamilton-út) esetén a két színosztály mezőszámának különbsége legfeljebb 1 lehet.

**a) $4 \times 4$-es tábla (16 mező):**
- **Zárt bejárás (Hamilton-kör):** **Nem lehetséges.**
- **Nyílt bejárás (Hamilton-út):** **Nem lehetséges.**

*Bizonyítás csúcstörléssel:*
Tekintsük a 4 belső mezőt: $S = \{(2,2), (2,3), (3,2), (3,3)\}$ ($|S| = 4$).
A 4 sarokmező ($(1,1), (1,4), (4,1), (4,4)$) mindegyikéből egy huszár kizárólag a 4 belső mező valamelyikére tud lépni!
Például az $(1,1)$ szomszédai a táblán csak a $(2,3)$ és a $(3,2)$.
Ha töröljük az $S$ halmaz 4 csúcsát:
- a 4 sarokmező mindegyike izolált ponttá válik (4 komponens);
- a maradék 8 peremmező 4 darab diszjunkt él-párt alkot (pl. $(1,2)$ és $(3,1)$ össze vannak kötve, de más elérhető szomszédjuk nincs $G - S$-ben), ami további 4 komponenst jelent.
Így $G - S$ komponenseinek száma:
$$c(G - S) = 4 + 4 = 8.$$
A Hamilton-út létezésének szükséges feltétele szerint $c(G - S) \le |S| + 1$ kellene, de:
$$8 > 4 + 1 = 5.$$
Ezért a $4 \times 4$-es táblán **sem nyílt, sem zárt bejárás nem lehetséges**.

**b) $5 \times 5$-ös tábla (25 mező):**
- **Zárt bejárás:** **Nem lehetséges**, mert a mezők száma (25) páratlan, így páros gráfban nem tartalmazhat Hamilton-kört.
- **Nyílt bejárás:** **Lehetséges.**
  Explicit bejárási sorrend a mezők sorszámozásával ($1$-től $25$-ig):

$$\begin{array}{|c|c|c|c|c|}
\hline
1 & 12 & 25 & 18 & 3 \\ \hline
22 & 17 & 2 & 13 & 24 \\ \hline
11 & 8 & 23 & 4 & 19 \\ \hline
16 & 21 & 6 & 9 & 14 \\ \hline
7 & 10 & 15 & 20 & 5 \\ \hline
\end{array}$$

Könnyen ellenőrizhető, hogy minden $k \to k+1$ lépés szabályos huszárlépés, és a tábla minden mezője pontosan egyszer szerepel.

**c) $3 \times 5$-ös tábla (15 mező):**
- **Zárt bejárás:** **Nem lehetséges**, mert a mezők száma (15) páratlan.
- **Nyílt bejárás:** **Nem lehetséges.**

*Bizonyítás csúcstörléssel:*
Színezzük a mezőket sakktáblaszerűen úgy, hogy a sarkok feketék legyenek. Ekkor 8 fekete és 7 fehér mező van.
A 4 sarokmező ($(1,1), (1,5), (3,1), (3,5)$) mindegyike fekete.
A sarkok szomszédai mind fehérek:
- $(1,1)$ szomszédai: $(2,3)$ és $(3,2)$;
- $(1,5)$ szomszédai: $(2,3)$ és $(3,4)$;
- $(3,1)$ szomszédai: $(2,3)$ és $(1,2)$;
- $(3,5)$ szomszédai: $(2,3)$ és $(1,4)$.
Válasszuk ki az alábbi 5 fehér mezőből álló halmazt:
$$S = \{(1,2), (1,4), (2,3), (3,2), (3,4)\} \qquad (|S| = 5).$$
Ha ezt az 5 csúcsot töröljük a gráfból, a 4 fekete sarokmező mindegyike izolált ponttá válik, és a középső oszlop fekete mezői is leválnak, összesen $c(G - S) = 7$ komponens keletkezik.
A Hamilton-útra vonatkozó feltétel szerint $c(G - S) \le |S| + 1$ kellene, de:
$$7 > 5 + 1 = 6.$$
Ezért a $3 \times 5$-ös táblán **sem nyílt, sem zárt bejárás nem lehetséges**.

---

## 105. feladat (házi feladat)

Legyen $n \ge 1$. A $G$ gráf $2^n$ csúcsa egy $n$ elemű halmaz részhalmazainak felel meg. Két *különböző* csúcs között akkor megy irányítatlan él, ha a megfelelő részhalmazok közül az egyik tartalmazza a másikat.

a) Hány éle van $G$-nek?

b) Van-e benne nyílt vagy zárt Euler-vonal?

c) És Hamilton-kör?

**Megoldás.**

**a)** A gráf élei a rendezetlen $\{X, Y\}$ részhalmazpároknak felelnek meg, ahol $X \subsetneq Y$ vagy $Y \subsetneq X$.
Minden él pontosan egy olyan $(X, Y)$ rendezett párt határoz meg, amelyre $X \subsetneq Y$.
Számoljuk meg az összes olyan $(X, Y)$ párt, amelyre $X \subseteq Y$:
Az alaphalmaz minden egyes $i \in \{1, \dots, n\}$ elemére pontosan 3 lehetőség van:
1. $i \notin Y$ (és így $i \notin X$ sem),
2. $i \in Y$, de $i \notin X$,
3. $i \in X$ és $i \in Y$.
Ezért összesen $3^n$ darab olyan $(X, Y)$ pár van, ahol $X \subseteq Y$.
Ezek közül pontosan $2^n$ esetben egyezik meg a két halmaz ($X = Y$).
Így a szigorú tartalmazást ($X \subsetneq Y$) kielégítő párok száma:
$$\text{Élek száma} = 3^n - 2^n.$$

*(Ellenőrzés: $n=1$-re $3^1 - 2^1 = 1$; $n=3$-ra $3^3 - 2^3 = 27 - 8 = 19$, összhangban a 89. feladattal).*

**b)** Számítsuk ki egy tetszőleges $k$-elemű $X$ csúcs fokszámát ($0 \le k \le n$):
- $X$ valódi részhalmazainak száma: $2^k - 1$.
- $X$-et valódi részként tartalmazó bővebb halmazok száma: $2^{n-k} - 1$.
Ezért a fokszám:
$$d(X) = (2^k - 1) + (2^{n-k} - 1) = 2^k + 2^{n-k} - 2.$$

Vizsgáljuk meg $d(X)$ paritását:
- Ha $k = 0$ ($X = \emptyset$): $d(\emptyset) = 2^0 + 2^n - 2 = 2^n - 1$, ami **páratlan** minden $n \ge 1$ esetén.
- Ha $k = n$ ($X$ a teljes halmaz): $d(V) = 2^n + 2^0 - 2 = 2^n - 1$, ami szintén **páratlan** minden $n \ge 1$ esetén.
- Ha $1 \le k \le n - 1$: ekkor mind $k \ge 1$, mind $n - k \ge 1$, így $2^k$ és $2^{n-k}$ is páros számok. Ekkor $d(X) = 2^k + 2^{n-k} - 2$ két páros szám összege mínusz 2, ami **páros**!

Ez azt jelenti, hogy:
- **Minden $n \ge 1$ esetén pontosan két csúcs foka páratlan** (az üres halmaz és a teljes halmaz), az összes többi $2^n - 2$ csúcs foka páros.
- A gráf összefüggő, mivel minden csúcs össze van kötve az üres halmazzal.
Ezért:
- **Zárt Euler-vonal sosem létezik** (mindig van páratlan fokú csúcs).
- **Nyílt Euler-vonal minden $n \ge 1$ esetén létezik** (amely az $\emptyset$ és a teljes halmaz között fut).

**c)**
- **$n = 1$ esetén:** A gráfnak 2 csúcsa van ($\emptyset$ és $\{1\}$). Egy egyszerű körhöz legalább 3 csúcs szükséges, így $n = 1$-re **nincs Hamilton-kör**.
- **$n \ge 2$ esetén:** **Mindig van Hamilton-kör.**
  *Bizonyítás:* A hiperkockagráf ($Q_n$) csúcsai szintén a részhalmazok, és két halmaz akkor szomszédos, ha szimmetrikus differenciájuk 1 elemű (azaz az egyik úgy keletkezik a másikból, hogy hozzáadunk vagy elhagyunk egyetlen elemet).
  Mivel ha $|Y \setminus X| = 1$ és $X \subset Y$, akkor az egyik tartalmazza a másikat, a $Q_n$ hiperkocka minden éle éle a mi $G$ korunknak is (azaz $Q_n \subseteq G$).
  Ismert tétel, hogy a $Q_n$ hiperkockában minden $n \ge 2$ esetén létezik Hamilton-kör (ezt adja meg a bináris Gray-kód).
  Mivel $Q_n$ részgráfja $G$-nek, a $Q_n$-beli Hamilton-kör a $G$ gráfban is Hamilton-kör!
  *(Például $n=2$-re: $\emptyset - \{1\} - \{1, 2\} - \{2\} - \emptyset$; $n=3$-ra: $\emptyset - \{1\} - \{1, 2\} - \{2\} - \{2, 3\} - \{3\} - \{1, 3\} - \{1, 2, 3\} - \emptyset$).*
