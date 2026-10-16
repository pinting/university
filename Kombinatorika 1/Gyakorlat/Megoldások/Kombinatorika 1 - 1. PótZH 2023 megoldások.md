# Kombinatorika 1 – 1. javító ZH (régi) – megoldások

### Kombinatorika 1 normál · 2023. november 25.

Emlékeztetőül, a Fibonacci-sorozat definíciója: $F_0 = 0$, $F_1 = 1$, $n \ge 2$ esetén $F_n = F_{n-1} + F_{n-2}$.

## 1. feladat

a) Hányféleképpen írhatjuk fel a 25-öt pontosan 5 darab pozitív egész szám összegeként, ha figyelembe vesszük az összeadandók sorrendjét is? (Tehát az $1+1+1+1+21$ és az $1+1+21+1+1$ felírásokat különbözőnek tekintjük.)

b) Hányféleképpen írhatjuk fel a 25-öt legalább két darab pozitív egész szám összegeként, ha figyelembe vesszük az összeadandók sorrendjét is?

**Megoldás.**

**a) $\mathbf{\binom{24}{4} = 10\,626}$ féleképpen.**

A feladat az $x_1 + x_2 + x_3 + x_4 + x_5 = 25$ egyenlet pozitív egész ($x_i \ge 1$) megoldásainak száma.
Képzeljünk el 25 darab 1-est egy sorban. Közöttük $25 - 1 = 24$ lehetséges hely van. Ezen 24 hely közül $5 - 1 = 4$ helyre teszünk elválasztójelet:
$$\binom{25 - 1}{5 - 1} = \binom{24}{4} = \frac{24 \cdot 23 \cdot 22 \cdot 21}{24} = 23 \cdot 22 \cdot 21 = \mathbf{10\,626}.$$

*(Vagy új változókkal: $y_i = x_i - 1 \ge 0$, ekkor $y_1 + \dots + y_5 = 20$, megoldásszám $\binom{20 + 5 - 1}{5 - 1} = \binom{24}{4}$.)*

**b) $\mathbf{2^{24} - 1 = 16\,777\,215}$ féleképpen.**

A 25 szám összes lehetséges rendezett felbontásában (kompozíciójában) a 25 darab 1-es közötti 24 hely mindegyikén vagy teszünk vágást, vagy nem. Mivel mind a 24 helyen egymástól függetlenül dönthetünk (2 lehetőség helyenként), az összes kompozíciók száma:
$$2^{24} = 16\,777\,216.$$
Ezek közül pontosan egyetlen olyan felírás van, amelyben a tagok száma nem legalább 2: az 1 tagú felírás, azaz maga a $25$ (ahol egyetlen helyre sem tettünk vágást).
Tehát a legalább két tagú felírások száma:
$$2^{24} - 1 = 16\,777\,216 - 1 = \mathbf{16\,777\,215}.$$

::: elmelet
**Elméleti háttér — kompozíciók és pálcika-golyó módszer.** Egy $n$ szám $k$ darab pozitív egész tag összegére való felbontásainak száma a sorrend figyelembevételével $\binom{n-1}{k-1}$. Az összes pozitív tagú kompozíciók száma tetszőleges tagszám mellett $\sum_{k=1}^n \binom{n-1}{k-1} = 2^{n-1}$.
:::

## 2. feladat

Egy polcon lévő $n$ könyv közül hányféleképpen vehetünk le néhányat, ha nem szeretnénk szomszédos könyveket levenni?

**Megoldás.**

**$\mathbf{F_{n+2}}$ féleképpen (ha a 0 könyv levétele is megengedett), illetve $\mathbf{F_{n+2} - 1}$ féleképpen (ha legalább 1 könyvet le kell venni).**

Jelölje $a_n$ az $\{1, 2, \dots, n\}$ sorozat olyan részhalmazainak számát, amelyek nem tartalmaznak két szomszédos számot.

Bontsuk az eseteket az $n$-edik könyv állapota szerint:
- **Ha az $n$-edik könyvet NEM vesszük le:** ekkor az első $n - 1$ könyv közül kell szomszédmentes részhalmazt választanunk, erre a definíció szerint $a_{n-1}$ lehetőség van.
- **Ha az $n$-edik könyvet LEVESSZÜK:** ekkor az $(n-1)$-edik könyvet a feltétel miatt nem vehetjük le, a maradék első $n - 2$ könyv közül választhatunk szomszédmentesen, erre $a_{n-2}$ lehetőség van.

Ez a két eset egymást kizárja és lefedi az összes esetet, így:
$$a_n = a_{n-1} + a_{n-2}.$$

Nézzük a kezdőértékeket:
- $n = 0$: $a_0 = 1$ (az üres választás: 0 könyv levétele),
- $n = 1$: $a_1 = 2$ (nem veszünk le semmit, vagy levesszük az 1-es könyvet),
- $n = 2$: $a_2 = 3$ ($\emptyset, \{1\}, \{2\}$),
- $n = 3$: $a_3 = 5$ ($\emptyset, \{1\}, \{2\}, \{3\}, \{1, 3\}$).

A Fibonacci-sorozat definíciója szerint $F_0 = 0, F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5, \dots$
Látható, hogy $a_n = F_{n+2}$.
- Ha a „néhány” könyv megengedi a 0 könyv levételét is (üres halmaz), akkor az eredmény: **$F_{n+2}$**.
- Ha legalább egy könyvet le kell venni (nem üres halmaz), akkor az eredmény: **$F_{n+2} - 1$**.

::: elmelet
**Elméleti háttér — szomszédmentes részhalmazok és Fibonacci-rekurzió.** Az utolsó elem szerinti esetszétválasztás közvetlenül a Fibonacci-rekurzióra ($a_n = a_{n-1} + a_{n-2}$) vezet. Ismert összefüggés a binomiális együtthatókkal is: $a_n = \sum_{k \ge 0} \binom{n - k + 1}{k} = F_{n+2}$.
:::

## 3. feladat

Egy $2025 \times 2025$-ös táblázat mezőibe tetszőlegesen beírjuk az 1, 2, 3 számok valamelyikét és kiszámítjuk a 2025 darab sorban, a 2025 darab oszlopban és a főátlóban (mely a bal felső saroktól a jobb alsó sarokig húzódik) az ott lévő számok összegét. Tudjuk, hogy a főátlóban páros sok 2-es szerepel, igaz-e, hogy a kapott összegek közötti lesz két azonos?

**Megoldás.**

**Igaz, biztosan lesz két azonos összeg.**

A kiszámított összegek száma:
$$2025 \text{ (sorösszeg)} + 2025 \text{ (oszlopösszeg)} + 1 \text{ (főátló összege)} = 4051 \text{ darab összeg}.$$

1. **A lehetséges összegek tartománya:**
   Minden sorban, oszlopban és a főátlóban pontosan 2025 darab szám van, és mindegyik szám az $\{1, 2, 3\}$ halmazból való.
   - A legkisebb lehetséges összeg: $2025 \cdot 1 = 2025$ (ha csupa 1-es van).
   - A legnagyobb lehetséges összeg: $2025 \cdot 3 = 6075$ (ha csupa 3-as van).
   A lehetséges összegek száma:
   $$6075 - 2025 + 1 = 4051 \text{ darab lehetséges egész érték}.$$

2. **Indirekt feltevés:**
   Tegyük fel indirekt, hogy a 4051 összeg **mind különböző**.
   Mivel pontosan 4051 összegünk van és pontosan 4051 lehetséges érték a $[2025, 6075]$ intervallumban, a kapott összegeknek a $\{2025, 2026, \dots, 6075\}$ halmaz **minden egyes elemét pontosan egyszer** fel kell venniük!

3. **Paritásvizsgálat:**
   - **A 4051 összeg teljes összege a táblázat mezői alapján:**
     Legyen $S = \sum_{i,j} a_{i,j}$ a táblázat összes mezőjében lévő számok összege.
     Minden mező pontosan egy sorban és egy oszlopban szerepel. Így a 2025 sorösszeg összege $S$, a 2025 oszlopösszeg összege szintén $S$.
     A 4051 összeg összege tehát:
     $$\Sigma_{\text{összes}} = \sum_{i=1}^{2025} (\text{sor}_i) + \sum_{j=1}^{2025} (\text{oszlop}_j) + (\text{főátló}) = S + S + (\text{főátló}) = 2S + (\text{főátló}).$$
     Mivel $2S$ páros egész szám, a teljes összeg paritása **megegyezik a főátló összegének paritásával**:
     $$\Sigma_{\text{összes}} \equiv (\text{főátló}) \pmod 2.$$

   - **A főátló összegének paritása:**
     A főátlóban 2025 darab szám áll az $\{1, 2, 3\}$ halmazból. Modulo 2 vizsgálva:
     $$1 \equiv 1, \quad 3 \equiv 1, \quad 2 \equiv 0 \pmod 2.$$
     Tehát a főátló összege páros $\iff$ páros sok páratlan szám (1-es és 3-as) van benne.
     A feltétel szerint a főátlóban **páros sok 2-es** szerepel.
     Mivel a főátlóban a számok teljes száma 2025 (páratlan), az 1-esek és 3-asok száma:
     $$2025 - (\text{páros}) = \text{PÁRATLAN}.$$
     Mivel páratlan sok páratlan szám van a főátlóban, **a főátló összege PÁRATLAN**:
     $$(\text{főátló}) \equiv 1 \pmod 2 \implies \Sigma_{\text{összes}} \equiv 1 \pmod 2.$$

   - **A $\{2025, \dots, 6075\}$ halmaz elemeinek összege:**
     Ha mind a 4051 szám megjelenne egyszer, az összegük:
     $$\sum_{k=2025}^{6075} k = \frac{2025 + 6075}{2} \cdot 4051 = 4100 \cdot 4051 = 16\,609\,100,$$
     ami **PÁROS** szám (hiszen a 4100 páros)!
     *(Vagy paritással: az intervallum első száma 2025 (páratlan), utolsó száma 6075 (páratlan). A páratlan számok száma $\frac{6075 - 2025}{2} + 1 = 2026$, ami páros, így a páratlan számok összege páros, a párosaké páros, a teljes összeg páros.)*

4. **Ellentmondás:**
   A táblázat mezőinek összeadásából $\Sigma_{\text{összes}}$ páratlan, míg a feltételezett 4051 különböző érték összege páros.
   Ez lehetetlen, tehát az indirekt feltevés hamis: **nem lehet mind a 4051 összeg különböző**, vagyis biztosan van legalább két azonos összeg. $\blacksquare$

::: elmelet
**Elméleti háttér — kettős összegzés és paritási invariáns.** Amikor az értékek elméleti tartománya méretében megegyezik a minták számával, az injektivitás (különbözőség) szürjektivitást kényszerít ki: minden lehetséges értéknek pontosan egyszer kell előfordulnia. Ezt gyakran paritási ellentmondással cáfoljuk: a rendszert leíró összesített invariáns (itt $2S + \text{átló}$) paritása összevethető a teljes értékkészlet összegének paritásával.
:::

## 4. feladat

Adott 6 levél és minden levélhez egy megcímkézett boríték. Hányféleképpen helyezhetjük el a leveleket a megcímkézett borítékokba úgy, hogy semelyik levél se kerüljön a hozzá tartozó borítékba, ha

a) minden borítékba pontosan egy levél kerül?

b) egy borítékba több levél is kerülhet?

**Megoldás.**

**a) Minden borítékba pontosan egy levél kerül:**

**265 féleképpen.**

Ez a klasszikus derangement (fixpontmentes permutáció) feladat 6 elemre ($D_6$).
Jelölje $A_i$ ($i = 1, \dots, 6$) azon bijekciókat, ahol az $i$-edik levél a saját borítékjába kerül.
A logikai szita formula szerint:
$$D_6 = 6! \sum_{k=0}^6 \frac{(-1)^k}{k!} = 720 \left(1 - 1 + \frac{1}{2!} - \frac{1}{3!} + \frac{1}{4!} - \frac{1}{5!} + \frac{1}{6!}\right)$$
$$D_6 = 720 \left(\frac{1}{2} - \frac{1}{6} + \frac{1}{24} - \frac{1}{120} + \frac{1}{720}\right) = 360 - 120 + 30 - 6 + 1 = \mathbf{265}.$$

---

**b) Egy borítékba több levél is kerülhet:**

**$\mathbf{5^6 = 15\,625}$ féleképpen.**

Mivel egy borítékba tetszőlegesen több levél is kerülhet (és boríték üresen is maradhat), a levelek elhelyezése egymástól teljesen független.
Az $i$-edik levél tetszőleges borítékba tehető, kivéve az $i$-edik borítékot.
Mivel 6 boríték van, minden levél számára pontosan $6 - 1 = 5$ megengedett boríték áll rendelkezésre.
A 6 levélre a független döntések száma a szorzási szabály szerint:
$$5^6 = \mathbf{15\,625}.$$

::: elmelet
**Elméleti háttér — derangement és független függvények.** (a) Bijekciók esetén (minden dobozba 1 golyó) a feltételek erősen csatoltak, a megoldást a szitaformula általános derangement-képlete ($n! \sum \frac{(-1)^k}{k!} = [\frac{n!}{e}]$) adja. (b) Általános leképezéseknél a kapacitáskorlát nélkül a komponensek szétesnek független választások szorzatára: minden elem a sajátján kívüli $n - 1$ dobozba mehet, így a válasz $(n - 1)^n$.
:::

## 5. feladat

Keressünk zárt formulát az alábbi kifejezésre és igazoljuk az egyenlőséget a kettős leszámlálás módszerével!
$$\sum_{k=0}^n k^2 \binom{n}{k}$$

[2 pontért megmondjuk, mi a zárt alak]

**Megoldás.**

**A zárt alak: $\mathbf{n(n+1) 2^{n-2}}$ (vagy $n 2^{n-1} + n(n-1)2^{n-2}$).**

**Bizonyítás kettős leszámlálással:**

Tekintsünk egy $n$ fős társaságot. Azt számoljuk meg kétféleképpen, hogy hányféleképpen választhatunk ki a társaságból egy tetszőleges méretű bizottságot, és a bizottság tagjai közül egy **elnököt** és egy **titkárt**, ha az elnök és a titkár **lehet ugyanaz a személy is**.

- **1. számlálás (előbb a bizottság, majd a tisztviselők):**
  Rögzítsük a bizottság létszámát: legyen ez $k$ ($1 \le k \le n$).
  1. A $k$ fős bizottságot $\binom{n}{k}$ módon választhatjuk ki.
  2. A kiválasztott $k$ ember közül az elnököt $k$ módon választhatjuk ki.
  3. A titkárt szintén a bizottság tagjai közül $k$ módon választhatjuk ki (mivel megengedett, hogy ugyanaz a személy töltse be mindkét posztot).
  Ez a bizottság kijelölése után $k \cdot k = k^2$ lehetőség.
  Összegezve az összes $k = 0, 1, \dots, n$ értékre (a $k = 0$ eset 0-t ad):
  $$\sum_{k=0}^n k^2 \binom{n}{k}.$$

- **2. számlálás (előbb a tisztviselők, majd a többi bizottsági tag):**
  Bontsuk a lehetőségeket két diszjunkt esetre:
  1. **Az elnök és a titkár ugyanaz a személy:**
     Ezt a közös tisztséget viselő embert $n$ féleképpen választhatjuk ki az $n$ főből.
     A megmaradt $n - 1$ ember mindegyikéről függetlenül eldöntjük, hogy tagja legyen-e a bizottságnak vagy sem: erre $2^{n-1}$ lehetőség van.
     Ebben az esetben a lehetőségek száma:
     $$n 2^{n-1}.$$
  2. **Az elnök és a titkár két különböző személy:**
     Az elnököt $n$ féleképpen, a titkárt tőle különbözően $n - 1$ féleképpen választhatjuk ki: ez $n(n - 1)$ lehetőség.
     A maradék $n - 2$ ember mindegyikéről függetlenül döntünk a bizottsági tagságról: erre $2^{n-2}$ lehetőség van.
     Ebben az esetben a lehetőségek száma:
     $$n(n - 1) 2^{n-2}.$$

  A két diszjunkt eset összege:
  $$n 2^{n-1} + n(n - 1) 2^{n-2} = n 2^{n-2} \cdot 2 + n(n - 1) 2^{n-2} = n 2^{n-2} (2 + n - 1) = \mathbf{n(n+1) 2^{n-2}}.$$

Mivel mindkét számolás ugyanannak a struktúrának a száma:
$$\sum_{k=0}^n k^2 \binom{n}{k} = n(n+1) 2^{n-2}. \quad \blacksquare$$

*(Algebrai levezetés deriválással: $(1 + x)^n = \sum \binom{n}{k} x^k$. Deriválva: $n(1+x)^{n-1} = \sum k \binom{n}{k} x^{k-1}$. Megszorozva $x$-szel: $nx(1+x)^{n-1} = \sum k \binom{n}{k} x^k$. Újra deriválva: $n(1+x)^{n-1} + n(n-1)x(1+x)^{n-2} = \sum k^2 \binom{n}{k} x^{k-1}$. Behelyettesítve $x = 1$-et: $n 2^{n-1} + n(n-1)2^{n-2} = n(n+1)2^{n-2}$.)*

::: elmelet
**Elméleti háttér — tisztviselő-választás modell és generátorfüggvények.** A $k^2$ szorzó kombinatorikusan egy rendezett pár kiválasztását jelenti a $k$ elemű halmazból. Mivel a pár két eleme lehet azonos vagy különböző, az esetbontás a $k^2 = k(k-1) + k$ azonosság kombinatorikus megfelelője (ahol $\binom{k}{2} = \frac{k(k-1)}{2}$ két különböző elem kiválasztása).
:::

## 6. feladat

Mutasd meg, hogy ha egy egyszerű gráfban minden pont foka legalább három, akkor a gráfban van páros hosszúságú kör!

**Megoldás.**

Tegyük fel indirekt, hogy a gráfban nincs páros hosszúságú kör, azaz **minden kör páratlan hosszúságú**.

Mivel minden pont foka legalább $3 \ge 2$, van kör a gráfban. Legyen $C$ egy **leghosszabb kör** a gráfban, hossza legyen $2k + 1$ ($k \ge 1$):
$$C = v_1 v_2 \dots v_{2k+1} v_1.$$

1. **A körnek nem lehet húrja:**
   Ha $C$-nek volna két nem szomszédos csúcsát összekötő $v_i v_j$ éle (húrja), az a $C$ kört két kisebb körre osztaná: $C_1$-re és $C_2$-re.
   A két kör hosszának összege $|C_1| + |C_2| = (2k + 1) + 2 = 2k + 3$ páratlan szám, így $|C_1|$ és $|C_2|$ közül pontosan az egyik **páros** lenne. Ez ellentmondás, így $C$-nek nem lehet húrja.

2. **Körön kívüli út a kör két pontja között:**
   Mivel $C$-nek nincs húrja, a kör minden csúcsának foka a körön belül 2. Mivel $G$-ben minden fok legalább 3, a kör minden csúcsából indul legalább egy él a körön kívüli pontokba.
   A gráf végessége és a minimális fokszám miatt a körön kívül induló út meghosszabbítható, amíg vissza nem ér a $C$ kör egy másik pontjába. Vegyünk egy olyan egyszerű $P$ utat a körön kívüli csúcsokon, amely a kör két különböző $u$ és $w$ pontját köti össze.

3. **Páros kör előállítása:**
   Az $u$ és $w$ csúcsok a páratlan hosszú $C$ kört két útra bontják ($P_1$ és $P_2$). Mivel $|P_1| + |P_2| = 2k + 1$ páratlan, a két út hossza különböző paritású: az egyik páros, a másik páratlan.
   A $P$ utat hozzáillesztve a $P \cup P_1$ és $P \cup P_2$ körök keletkeznek, melyek hossza $|P| + |P_1|$ és $|P| + |P_2|$. Mivel $|P_1|$ és $|P_2|$ paritása ellentétes, a két kör közül az egyik hossza **biztosan páros**.

Ez ellentmond annak, hogy nincs páros kör, tehát a gráfban **biztosan van páros hosszúságú kör**. $\blacksquare$

::: elmelet
**Elméleti háttér — alternatív utak és körparitás.** Egy páratlan kör két pontja közötti bármilyen harmadik út a kört két kisebb körre bontja, amelyek közül az egyik szükségszerűen páros, a másik páratlan paritású.
:::

## 7. feladat

Mutasd meg, hogy ha 51 db pozitív egész összege 100, akkor két csoportba oszthatóak úgy, hogy a számok összege mindkét csoportban 50.

**Megoldás.**

Jelölje a megadott számokat $a_1, a_2, \dots, a_{51} \in \mathbb{Z}^+$, összegük $\sum_{i=1}^{51} a_i = 100$.

Rendezzük a számokat tetszőleges rögzített sorrendbe, és tekintsük az egymást követő részletösszegeket (prefixösszegeket):
$$s_0 = 0, \quad s_1 = a_1, \quad s_2 = a_1 + a_2, \quad \dots, \quad s_m = \sum_{k=1}^m a_k, \quad \dots, \quad s_{51} = 100.$$
Mivel mindegyik $a_i$ pozitív egész ($a_i \ge 1$), a sorozat szigorúan monoton növekvő:
$$0 = s_0 < s_1 < s_2 < \dots < s_{50} < s_{51} = 100.$$
Ez összesen **52 darab különböző egész szám** a $\{0, 1, \dots, 100\}$ halmazban.

Tekintsük ezen 52 szám **modulo 50 vett maradékait**:
$$r_m = s_m \bmod 50 \in \{0, 1, 2, \dots, 49\} \quad (m = 0, 1, \dots, 51).$$
A lehetséges maradékok száma pontosan **50**.

Mivel 52 darab számunk van, de csak 50 lehetséges maradékosztály, a **skatulya-elv** szerint létezik legalább két olyan index, $0 \le i < j \le 51$, amelyekre a maradék megegyezik:
$$s_j \equiv s_i \pmod{50} \implies 50 \mid (s_j - s_i).$$

Mivel $s_j > s_i$, az $s_j - s_i$ különbség pozitív egész, és
$$1 \le s_j - s_i \le 100.$$
Az 1 és 100 közötti egészek közül csak két szám osztható 50-nel: az **50** és a **100**.

- **Lehet-e $s_j - s_i = 100$?**
  Mivel $0 \le s_i < s_j \le 100$, a különbség csak akkor lehetne 100, ha $s_i = 0$ és $s_j = 100$ (azaz $i = 0$ és $j = 51$).
  Ekkor azonban az $s_0 = 0$ és $s_{51} = 100$ a $0$ maradékú osztályba tartozik.
  Használjuk ki a skatulya-elv erősebb alakját:
  52 darab elemet osztunk szét 50 skatulyába.
  - Ha a $0$ maradékú osztályban van egy harmadik elem is (valamelyik $1 \le m \le 50$-re $s_m \equiv 0 \pmod{50}$), akkor mivel $0 < s_m < 100$, szükségszerűen $s_m = 50$. Ekkor $s_m - s_0 = 50$, és készen vagyunk!
  - Ha a $0$ maradékú osztályban csak a $\{0, 100\}$ két elem van, akkor a maradék $52 - 2 = 50$ darab $s_m$ elem a maradék $50 - 1 = 49$ darab nem-nulla maradékosztályba ($1, 2, \dots, 49$) esik.
    A skatulya-elv szerint ekkor létezik két olyan index $i < j$, amelyre
    $$s_j \equiv s_i \not\equiv 0 \pmod{50}.$$
    Mivel a közös maradék nem nulla, sem $s_i$, sem $s_j$ nem lehet 0 vagy 100, így a különbségük szigorúan kisebb 100-nál:
    $$s_j - s_i < 100.$$
    Mivel $50 \mid (s_j - s_i)$ és $0 < s_j - s_i < 100$, szükségképpen:
    $$s_j - s_i = 50.$$

Mivel $s_j - s_i = \sum_{k=i+1}^j a_k = 50$, az $\{a_{i+1}, a_{i+2}, \dots, a_j\}$ számok összege **pontosan 50**.
A kimaradó számok összege szintén $100 - 50 = \mathbf{50}$.

Ez a két részhalmaz pontosan két 50 összegű csoportra osztja az 51 darab számot. $\blacksquare$

::: elmelet
**Elméleti háttér — prefixösszegek és skatulyaelv részösszegekre.** A prefixösszegek módszere a részösszegek keresésének leghatékonyabb eszköze: az egymást követő tagok összege két prefixösszeg különbségeként ($s_j - s_i = \sum_{k=i+1}^j a_k$) fejezhető ki. Ha a prefixösszegek száma meghaladja az osztó maradékosztályainak számát, a skatulyaelv garantálja a kívánt oszthatóságot.
:::
