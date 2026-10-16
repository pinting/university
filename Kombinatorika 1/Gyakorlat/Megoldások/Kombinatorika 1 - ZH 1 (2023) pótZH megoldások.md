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

Egy $2025 \times 2025$-ös táblázat mezőibe tetszőlegesen beírjuk az 1, 2, 3 számok valamelyikét és kiszámítjuk a 2025 darab sorban, a 2025 darab oszlopban és a főátlóban (mely a bal felső saroktól a jobb alsó sarokig húzódik) az ott lévő számok összegét. Tudjuk, hogy a főátlóban páros sok 2-es szerepel, igaz-e, hogy a kapott összegek között lesz két azonos?

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

Tekintsük a gráf egy **leghosszabb egyszerű útját**:
$$P = v_1 v_2 \dots v_m.$$

1. **A kezdőpont szomszédai mind a pályára illeszkednek:**
   Mivel $P$ maximális hosszúságú egyszerű út a gráfban, a $v_1$ végpont nem köthető össze egyetlen olyan csúccsal sem, amely nem szerepel a $P$ úton (ellenkező esetben a sétát az új csúccsal meghosszabbítva egy $m+1$ csúcsú egyszerű utat kapnánk, ami ellentmondana $P$ maximalitásának).
   Ezért $v_1$ minden szomszédja szükségképpen a $P$ út csúcsai közül kerül ki:
   $$N(v_1) \subseteq \{v_2, v_3, \dots, v_m\}.$$

2. **Legalább három szomszéd az úton:**
   Mivel $G$ egyszerű gráf és minden pont foka legalább $3$, a $v_1$ csúcsnak legalább 3 szomszédja van $P$-n. A közvetlen szomszédja $v_2$, így létezik még legalább két további szomszédja a $P$ úton.
   Jelölje e két szomszédot $v_i$ és $v_j$, ahol indexeikre:
   $$2 < i < j \le m.$$

3. **Három egyszerű kör képzése:**
   A $v_1 v_i$ és $v_1 v_j$ élek a $P$ út szakaszaival három egyszerű kört határoznak meg:
   - $C_1 = v_1 v_2 \dots v_i v_1$, melynek hossza $i$;
   - $C_2 = v_1 v_2 \dots v_j v_1$, melynek hossza $j$;
   - $C_3 = v_1 v_i v_{i+1} \dots v_j v_1$, amely a $v_1 v_i$ élből, a $P$ út $v_i$-től $v_j$-ig tartó szakaszából ($j - i$ darab él) és a $v_j v_1$ élből áll. Ennek hossza:
     $$|C_3| = 1 + (j - i) + 1 = j - i + 2.$$

4. **Paritásvizsgálat:**
   - Ha $i$ páros, akkor $C_1$ egy **páros hosszúságú kör**.
   - Ha $j$ páros, akkor $C_2$ egy **páros hosszúságú kör**.
   - Ha mind $i$, mind $j$ páratlan szám, akkor a különbségük $j - i$ páros szám (két páratlan szám különbsége páros). Ekkor
     $$|C_3| = j - i + 2$$
     szintén **páros szám**, tehát $C_3$ egy **páros hosszúságú kör**.

Mivel minden esetben találunk páros hosszúságú kört, a gráfban **biztosan van páros hosszúságú kör**. $\blacksquare$

::: elmelet
**Elméleti háttér — leghosszabb út technika és körparitás.** Az extremális gráfelmélet egyik legerősebb módszere a leghosszabb út vizsgálata: ha egy $P$ egyszerű út maximális hosszúságú, akkor végpontjaiból nem indulhat él a $P$-n kívüli csúcsokba, így minden szomszédjuk magán a $P$ úton helyezkedik el. Ha a minimális fokszám $\delta(G) \ge 3$, akkor a kezdőpontnak a közvetlen szomszédján kívül még legalább két éle (húrja) vezet az út későbbi pontjaiba, melyek három különböző kört határoznak meg. A három kör hosszai ($i$, $j$ és $j - i + 2$) közül a paritási összefüggések miatt legalább az egyik szükségszerűen páros.
:::

## 7. feladat

Mutasd meg, hogy ha 51 db pozitív egész összege 100, akkor két csoportba oszthatóak úgy, hogy a számok összege mindkét csoportban 50.

**Megoldás.**

Jelölje a megadott számokat $a_1, a_2, \dots, a_{51} \in \mathbb{Z}^+$, összegük $\sum_{i=1}^{51} a_i = 100$.

Rendezzük a számokat tetszőleges rögzített sorrendbe, és tekintsük az első 51 darab részletösszeget (prefixösszeget):
$$s_0 = 0, \quad s_1 = a_1, \quad s_2 = a_1 + a_2, \quad \dots, \quad s_m = \sum_{k=1}^m a_k, \quad \dots, \quad s_{50} = \sum_{k=1}^{50} a_k.$$

Mivel mindegyik $a_i$ pozitív egész ($a_i \ge 1$), a részletösszegek sorozata szigorúan monoton növekvő:
$$0 = s_0 < s_1 < s_2 < \dots < s_{50}.$$
Mivel az összes 51 szám összege 100, és az utolsó szám $a_{51} \ge 1$, az $s_{50}$ összegre:
$$s_{50} = 100 - a_{51} \le 100 - 1 = 99 < 100.$$
Ez a sorozat tehát összesen **51 darab különböző egész számot** tartalmaz, melyek mind a $[0, 99]$ tartományba esnek ($0 \le s_m < 100$).

Tekintsük ezen 51 szám **modulo 50 vett maradékait**:
$$r_m = s_m \bmod 50 \in \{0, 1, 2, \dots, 49\} \quad (m = 0, 1, \dots, 50).$$
A lehetséges maradékosztályok száma pontosan **50**.

Mivel 51 darab számunk van, de csak 50 lehetséges maradékosztály létezik, a **skatulya-elv** szerint van legalább két olyan index, $0 \le i < j \le 50$, amelyekhez azonos maradék tartozik:
$$s_j \equiv s_i \pmod{50} \implies 50 \mid (s_j - s_i).$$

Mivel $s_j > s_i$, a különbségük pozitív, továbbá $s_j < 100$ és $s_i \ge 0$ miatt:
$$0 < s_j - s_i \le s_{50} < 100.$$

A 0 és 100 nyílt intervallumba eső egészek között egyetlenegy 50-nel osztható szám létezik: maga az **50**. Szükségképpen tehát:
$$s_j - s_i = 50.$$

Mivel $s_j - s_i = \sum_{k=i+1}^j a_k = 50$, az $\{a_{i+1}, a_{i+2}, \dots, a_j\}$ számok összege **pontosan 50**.
A megmaradt számok összege szintén:
$$\sum_{k=1}^{51} a_k - 50 = 100 - 50 = \mathbf{50}.$$

Ez a kiválasztás a megadott 51 darab számot pontosan két olyan csoportra osztja, amelyekben az elemek összege 50. $\blacksquare$

::: elmelet
**Elméleti háttér — prefixösszegek és skatulyaelv részösszegekre.** A prefixösszegek módszere a részösszegek keresésének leghatékonyabb eszköze: egymást követő tagok összege két prefixösszeg különbségeként ($s_j - s_i = \sum_{k=i+1}^j a_k$) fejezhető ki. Ha csupán az első 51 prefixösszeget vizsgáljuk ($s_0, s_1, \dots, s_{50}$), akkor a skatulyaelv miatt azonnal kapunk két mod 50 kongruens összeget, miközben $s_{50} < 100$ miatt a különbségük szigorúan 0 és 100 közé esik — így a 100-as határeset vizsgálata nélkül, közvetlenül az 50 adódik.
:::
