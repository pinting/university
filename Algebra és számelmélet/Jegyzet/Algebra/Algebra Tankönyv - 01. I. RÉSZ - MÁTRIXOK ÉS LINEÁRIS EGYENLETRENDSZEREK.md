# I. RÉSZ: MÁTRIXOK ÉS LINEÁRIS EGYENLETRENDSZEREK

Az első rész a lineáris algebra két alapvető eszközét mutatja be: a **mátrixokat** és a **Gauss-eliminációt**. A mátrix egyszerűen számok téglalap alakú táblázata — mégis meglepően sok minden leírható vele, a boltok bevételeitől a hálózatok útvonalaiig. A Gauss-elimináció pedig az a módszer, amellyel bármely lineáris egyenletrendszert megoldhatunk, és amelyre a félév során újra és újra visszatérünk: ezzel számolunk inverz mátrixot, determinánst és rangot is.

## 1. Mátrixok

Számok négyzetbe rendezésével már sokan találkoztak, például a Sudoku játékban. Ismerünk-e még olyan játékot vagy hétköznapi helyzetet, amelyben négyzetben vagy téglalapban elrendezett számok szerepelnek? (Bűvös négyzetek, órarend, egy bajnokság eredménytáblázata, egy táblázatkezelő munkalapja…)

**Mátrixnak** a matematikában mennyiségek (leginkább számok, de lehetnek függvények vagy kifejezések is) téglalap alakú elrendezését, táblázatát nevezzük.

**Milyen régóta ismertek a mátrixok?** A számok táblázatos elrendezése nagyon régi gondolat. A *Matematika művészete kilenc fejezetben* című kínai mű (*Jiuzhang suanshu*, amelynek anyaga az időszámításunk előtti évszázadokban gyűlt össze, és a Kr. u. 1. századra nyerte el végleges formáját) a lineáris egyenletrendszerek együtthatóit számolótáblán, oszlopokba rendezve írta fel, és lényegében a ma Gauss-eliminációnak nevezett módszerrel oldotta meg őket. Európában Cardano, Leibniz, Cramer és sokan mások (1545-től kezdve) foglalkoztak hasonló táblázatokkal; a *mátrix* szót James Joseph Sylvester vezette be 1850-ben, a mátrixok algebráját pedig Arthur Cayley dolgozta ki 1858-ban.

### 1.1. A mátrixok alaptulajdonságai

**Példák mátrixokra:**
$$A = \begin{pmatrix} 1 & 5 & 3 & 8 \\ 2 & -1 & 4 & 5 \\ 6 & -9 & \sqrt{2} & \pi \end{pmatrix}, \qquad B = \begin{pmatrix} 2 & 5 \\ -1 & 9 \\ 6 & 3 \\ 4 & 8 \end{pmatrix}.$$
Az $A$ mátrixnak $3$ sora és $4$ oszlopa van: $A$ egy $3 \times 4$-es mátrix, jelölésben $A \in \mathbb{R}^{3 \times 4}$; ugyanígy $B \in \mathbb{R}^{4 \times 2}$. (A méret megadásakor mindig a sorok száma áll elöl.)

**Azonos méretű mátrixokat elemenként adunk össze:**
$$\begin{pmatrix} 1 & 5 & 3 \\ 2 & -1 & 4 \end{pmatrix} + \begin{pmatrix} 3 & 2 & 1 \\ -3 & 5 & 2 \end{pmatrix} = \begin{pmatrix} 1 + 3 & 5 + 2 & 3 + 1 \\ 2 - 3 & -1 + 5 & 4 + 2 \end{pmatrix} = \begin{pmatrix} 4 & 7 & 4 \\ -1 & 4 & 6 \end{pmatrix}.$$
Különböző méretű mátrixok összege nincs értelmezve.

**A mátrixok általános jelölése.** Egy $m \times n$-es mátrix $i$-edik sorának $j$-edik elemét $a_{ij}$-vel jelöljük (először a sor, aztán az oszlop indexe):
$$A = \begin{pmatrix} a_{11} & a_{12} & \dots & a_{1n} \\ a_{21} & a_{22} & \dots & a_{2n} \\ \vdots & \vdots & & \vdots \\ a_{m1} & a_{m2} & \dots & a_{mn} \end{pmatrix}.$$
Kerek zárójel helyett szögletes zárójelet is szokás használni.

**Mikor lehet két mátrixot összeszorozni?** Az $A \in \mathbb{R}^{m \times n}$ és $B \in \mathbb{R}^{k \times \ell}$ mátrixokat (ebben a sorrendben) akkor lehet összeszorozni, ha $n = k$, vagyis **az első mátrix oszlopainak száma megegyezik a második mátrix sorainak számával**: $A \in \mathbb{R}^{m \times n}$, $B \in \mathbb{R}^{n \times \ell}$. A szorzat $m \times \ell$-es lesz. (Természetesen $\mathbb{R}$ helyett vehetjük a komplex számok $\mathbb{C}$ halmazát is.)

**A szorzás menete.** A szorzat $i$-edik sorának $j$-edik elemét úgy kapjuk, hogy az $A$ mátrix $i$-edik **sorát** „rátesszük” a $B$ mátrix $j$-edik **oszlopára**, a megfelelő elemeket összeszorozzuk, és a szorzatokat összeadjuk. Szorozzuk össze például az
$$A = \begin{pmatrix} 1 & 5 & 3 & 8 \\ 2 & -1 & 4 & 5 \\ 6 & -9 & 1 & 0 \end{pmatrix} \in \mathbb{R}^{3 \times 4}, \qquad B = \begin{pmatrix} 2 & 5 \\ -1 & 9 \\ 6 & 3 \\ 4 & 8 \end{pmatrix} \in \mathbb{R}^{4 \times 2}$$
mátrixokat! A szorzat $3 \times 2$-es. A kézi számolásnál érdemes a mátrixokat úgy elrendezni, hogy $B$ az $AB$ szorzat helye fölé, $A$ pedig tőle balra kerüljön (ez az úgynevezett **Falk-séma**); így minden elem a neki megfelelő sor és oszlop „metszéspontjába” kerül. Például:
$$(AB)_{11} = 1 \cdot 2 + 5 \cdot (-1) + 3 \cdot 6 + 8 \cdot 4 = 2 - 5 + 18 + 32 = 47,$$
$$(AB)_{22} = 2 \cdot 5 + (-1) \cdot 9 + 4 \cdot 3 + 5 \cdot 8 = 10 - 9 + 12 + 40 = 53.$$
Az összes elemet kiszámolva:
$$\begin{pmatrix} 1 & 5 & 3 & 8 \\ 2 & -1 & 4 & 5 \\ 6 & -9 & 1 & 0 \end{pmatrix}\begin{pmatrix} 2 & 5 \\ -1 & 9 \\ 6 & 3 \\ 4 & 8 \end{pmatrix} = \begin{pmatrix} 47 & 123 \\ 49 & 53 \\ 27 & -48 \end{pmatrix}.$$
(Például a bal alsó elem: $6 \cdot 2 + (-9)(-1) + 1 \cdot 6 + 0 \cdot 4 = 12 + 9 + 6 = 27$. A szorzásjelet itt is, mint máskor, általában ki sem írjuk.) Vegyük észre, hogy a $BA$ szorzat itt nincs értelmezve, hiszen $B$-nek $2$ oszlopa, $A$-nak $3$ sora van.

**Sorvektor és oszlopvektor.** Az $1 \times n$-es mátrixot **sorvektornak**, az $n \times 1$-est **oszlopvektornak** nevezzük; például $\begin{pmatrix} 1 & 11 & -3 & 8 & 7 & 5 \end{pmatrix}$ sorvektor, míg
$$\begin{pmatrix} 2 \\ 4 \\ 5 \\ -3 \end{pmatrix}$$
oszlopvektor.

### Gyakorlati példa: egy bolthálózat bevételei

Lássunk egy mindennapi példát! Egy laptopszerviz kiegészítőket is forgalmaz: laptophűtőt, egeret, pendrive-ot és fejhallgatót. A cég három városban van jelen: Budapesten, Vácon és Egerben. A vezető át szeretné látni a szeptemberi és októberi bevételeket boltonként, ezért két táblázatot (mátrixot) állít fel.

Az **eladások** mátrixa ($E$) a havi eladott mennyiségeket tartalmazza; a sorok a városok, az oszlopok a termékek (hűtő, egér, pendrive, fejhallgató):
$$E = \begin{pmatrix} 10 & 20 & 15 & 12 \\ 5 & 8 & 10 & 6 \\ 7 & 10 & 8 & 9 \end{pmatrix} \begin{matrix} \leftarrow \text{Budapest} \\ \leftarrow \text{Vác} \\ \leftarrow \text{Eger} \end{matrix}$$
(Például $e_{12} = 20$ azt jelenti, hogy a budapesti boltban $20$ egeret adtak el.) Az **árak** mátrixa ($P$) a termékek árát tartalmazza forintban, hónapokra bontva; a sorok a termékek, az oszlopok a hónapok (szeptember, október):
$$P = \begin{pmatrix} 15000 & 16000 \\ 4000 & 5000 \\ 6000 & 5000 \\ 12000 & 13000 \end{pmatrix} \begin{matrix} \leftarrow \text{laptophűtő} \\ \leftarrow \text{egér} \\ \leftarrow \text{pendrive (októberben akciós!)} \\ \leftarrow \text{fejhallgató} \end{matrix}$$

**Miért pont így rendeztük el az adatokat?** Vegyük észre a méreteket! Az $E$ mátrix $3 \times 4$-es, a $P$ mátrix $4 \times 2$-es. A szorzás elvégezhetőségéhez a „belső dimenzióknak” egyezniük kell: mindkét helyen a $4$-es szám, a termékek száma áll. A szorzás során ugyanis a termékek darabszámait párosítjuk a nekik megfelelő árakkal. A szorzat egy $3 \times 2$-es mátrix lesz ($3$ bolt, $2$ hónap bevétele):
$$B = EP = \begin{pmatrix} 464000 & 491000 \\ 239000 & 248000 \\ 301000 & 319000 \end{pmatrix}.$$
Ellenőrzésképpen számoljuk ki a budapesti bolt szeptemberi bevételét (a $B$ mátrix $b_{11}$ elemét):
$$b_{11} = 10 \cdot 15000 + 20 \cdot 4000 + 15 \cdot 6000 + 12 \cdot 12000 = 150000 + 80000 + 90000 + 144000 = 464000 \text{ Ft}.$$
A $B$ eredménymátrix oszlopai a hónapokat, sorai a boltokat jelentik. Jól látható, hogy hiába volt októberben akciós a pendrive, a többi áremelés miatt mindenhol nőtt a bevétel. (Aki táblázatkezelőben dolgozik: a SZORZATÖSSZEG függvény pontosan egy ilyen sor–oszlop szorzást végez.) Képzeljük el, mekkora segítség ez a modell, ha nem $4$ termékünk és $3$ boltunk van, hanem egy országos hálózat $20\,000$ terméke és $50$ áruháza!

### Egy másik alkalmazás: utak számolása hálózatokban

A mátrixszorzás másik látványos alkalmazása a gráfelméletben és a hálózatok elemzésében található. Képzeljünk el egy hálózatot (városokat úthálózattal, vagy számítógépeket egy szerverparkban), amelyet egy irányítatlan, többszörös élek nélküli $G = (V, E)$ gráffal modellezünk, ahol $V = \{v_1, \dots, v_n\}$ a csúcsok (városok) halmaza. A gráf szerkezetét az $n \times n$-es **szomszédsági mátrixszal** írhatjuk le:
$$a_{ij} = \begin{cases} 1, & \text{ha van közvetlen él (út) az } i\text{-edik és a } j\text{-edik csúcs között}, \\ 0, & \text{egyébként.} \end{cases}$$
Legyen egy konkrét, $4$ csúcsú példában az $1$-es város összekötve a $2$-essel és a $3$-assal; a $2$-es az $1$-essel és a $4$-essel; a $3$-as az $1$-essel és a $4$-essel; a $4$-es a $2$-essel és a $3$-assal. (Ez egy négyzet alakú hálózat, ahol a szemközti csúcsok nincsenek közvetlenül összekötve.) A szomszédsági mátrix:
$$A = \begin{pmatrix} 0 & 1 & 1 & 0 \\ 1 & 0 & 0 & 1 \\ 1 & 0 & 0 & 1 \\ 0 & 1 & 1 & 0 \end{pmatrix}.$$
Ha arra vagyunk kíváncsiak, hány pontosan $2$ hosszú (egy átszállást tartalmazó) útvonal van két város között, a sor–oszlop szorzás éppen ezt a leszámlálást végzi el: $(A^2)_{ij} = \sum_k a_{ik} a_{kj}$, és az $a_{ik}a_{kj}$ szorzat pontosan akkor $1$, ha $i \to k \to j$ útvonal. Szorozzuk tehát a mátrixot önmagával:
$$A^2 = \begin{pmatrix} 2 & 0 & 0 & 2 \\ 0 & 2 & 2 & 0 \\ 0 & 2 & 2 & 0 \\ 2 & 0 & 0 & 2 \end{pmatrix}.$$

- $(A^2)_{11} = 2$: az $1$-es városból kétféleképpen térhetünk vissza oda $2$ lépésben ($1 \to 2 \to 1$ és $1 \to 3 \to 1$).
- $(A^2)_{14} = 2$: az $1$-es és a $4$-es város között $2$ kétlépéses útvonal van ($1 \to 2 \to 4$ és $1 \to 3 \to 4$).
- $(A^2)_{12} = 0$: az $1$-esből a $2$-esbe pontosan két lépésben nem lehet eljutni (az út közvetlenül $1$ lépés, a $4$-es felé kerülve pedig $3$).

A módszer teljes indukcióval tetszőleges $k$ lépéshosszra általánosítható: az $A^k$ mátrix $i$-edik sorának $j$-edik eleme mindig a pontosan $k$ hosszú (az $i$-edik csúcsból a $j$-edikbe vezető) sétáink száma. Például
$$A^3 = \begin{pmatrix} 0 & 4 & 4 & 0 \\ 4 & 0 & 0 & 4 \\ 4 & 0 & 0 & 4 \\ 0 & 4 & 4 & 0 \end{pmatrix}:$$
az $1$-esből a $2$-esbe $4$ háromlépéses séta vezet ($1 \to 2 \to 1 \to 2$, $1 \to 3 \to 1 \to 2$, $1 \to 2 \to 4 \to 2$, $1 \to 3 \to 4 \to 2$).

### 1.2. Vektorok és mátrixok alapjai

Az alábbiakban a vektorok és mátrixok legfontosabb fogalmait és műveleteit foglaljuk össze, már általánosabb keretben.

**Vektorok összeadása és skalárral való szorzása.** Legyen $T$ egy tetszőleges számtest (például $\mathbb{R}$, $\mathbb{Q}$ vagy $\mathbb{C}$). A $T$ elemeit **skalároknak** nevezzük.

> **1.1 Definíció.** A $T$ test feletti $n$ dimenziós **oszlopvektorokon** a
> $$v = \begin{pmatrix} a_1 \\ a_2 \\ \vdots \\ a_n \end{pmatrix}$$
> alakú számtáblázatokat értjük, ahol $a_1, \dots, a_n \in T$. Az összes ilyen oszlopvektor halmazát $T^n$-nel jelöljük; az $n$ számot a vektortér **dimenziójának** nevezzük.

Két azonos dimenziójú vektort komponensenként adunk össze, és egy vektort úgy szorzunk egy $\lambda \in T$ skalárral, hogy minden komponensét $\lambda$-val szorozzuk.

> **1.2 Tétel (a vektorműveletek alaptulajdonságai).** Tetszőleges $u, v, w \in T^n$ vektorokra és $\lambda, \mu \in T$ skalárokra:
>
> 1. $(u + v) + w = u + (v + w)$ (az összeadás asszociatív);
> 2. $u + v = v + u$ (az összeadás kommutatív);
> 3. létezik a $0$ nullvektor (minden komponense $0$), amelyre $u + 0 = u$;
> 4. minden $u$-nak van $-u$ ellentettje, amelyre $u + (-u) = 0$;
> 5. $(\lambda + \mu)u = \lambda u + \mu u$;
> 6. $\lambda(u + v) = \lambda u + \lambda v$;
> 7. $(\lambda\mu)u = \lambda(\mu u)$;
> 8. $1 \cdot u = u$ (ahol $1$ a $T$ egységeleme).

Mindegyik tulajdonság komponensenként a $T$-beli számolási szabályokból adódik. (Később ezt a nyolc tulajdonságot axiómának tekintve definiálják az absztrakt **vektortér** fogalmát.)

**Mátrixok és műveleteik.**

> **1.3 Definíció.** Egy $n \times m$-es **mátrix** egy $n$ sorból és $m$ oszlopból álló táblázat, amelynek elemei a $T$ testből valók. Az ilyen mátrixok halmazát $T^{n \times m}$ jelöli.

Az $M \in T^{n \times m}$ mátrix elemeit $a_{ij}$-vel jelöljük ($i$ a sor, $j$ az oszlop indexe). A mátrixok összeadása és skalárral való szorzása a vektorokhoz hasonlóan, elemenként történik. A csupa nulla elemből álló mátrix a **nullmátrix**, jele $0$.

> **1.4 Definíció.** Az $M \in T^{n \times m}$ mátrix **transzponáltja** az az $M^T \in T^{m \times n}$ mátrix, amelyet úgy kapunk, hogy $M$ sorait és oszlopait felcseréljük, vagyis a mátrixot a főátlójára tükrözzük:
> $$(M^T)_{ij} = a_{ji}.$$

Például
$$\begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{pmatrix}^T = \begin{pmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{pmatrix}.$$

A mátrixok legfontosabb művelete a szorzás, amely a **sor–oszlop kompozíció** elvén alapul.

> **1.5 Definíció.** Legyen $M = (a_{ij}) \in T^{n \times m}$ és $N = (b_{ij}) \in T^{m \times k}$. Az $MN$ **szorzatmátrix** $n \times k$-as, és $i$-edik sorának $j$-edik eleme
> $$(MN)_{ij} = a_{i1}b_{1j} + a_{i2}b_{2j} + \dots + a_{im}b_{mj} = \sum_{\ell=1}^m a_{i\ell}\, b_{\ell j}.$$

> **1.6 Tétel (a mátrixszorzás tulajdonságai).** Ha a műveletek a méretek alapján elvégezhetők, akkor
>
> 1. $(MN)K = M(NK)$ (a szorzás **asszociatív**);
> 2. $M(N + K) = MN + MK$ és $(N + K)M = NM + KM$ (mindkét oldali **disztributivitás**);
> 3. létezik az $E_n \in T^{n \times n}$ **egységmátrix** (főátlójában egyesek, máshol nullák), amely a szorzásra nézve kétoldali egységelem: $E_n M = M E_n = M$ (ha $M$ is $n \times n$-es).

Például
$$E_4 = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}.$$

::: kiegeszites
**Kiegészítés: az asszociativitás bizonyítása.** Legyen $M = (a_{ij}) \in T^{n \times m}$, $N = (b_{ij}) \in T^{m \times k}$, $K = (c_{ij}) \in T^{k \times \ell}$. Ekkor
$$\big((MN)K\big)_{ij} = \sum_{r=1}^k (MN)_{ir} c_{rj} = \sum_{r=1}^k\sum_{s=1}^m a_{is}b_{sr}c_{rj}, \qquad \big(M(NK)\big)_{ij} = \sum_{s=1}^m a_{is}(NK)_{sj} = \sum_{s=1}^m\sum_{r=1}^k a_{is}b_{sr}c_{rj}.$$
A két kettős összeg ugyanazokat a tagokat tartalmazza, csak más sorrendben, tehát egyenlők. A disztributivitás hasonlóan, elemenként igazolható. Egy hasznos további szabály: $(MN)^T = N^T M^T$, hiszen $\big((MN)^T\big)_{ij} = (MN)_{ji} = \sum_s a_{js}b_{si} = \sum_s (N^T)_{is}(M^T)_{sj}$.
:::

**Különösen fontos: a mátrixszorzás általában nem kommutatív** ($MN \ne NM$), még négyzetes mátrixok esetén sem. Például
$$\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}\begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix} = \begin{pmatrix} 2 & 1 \\ 1 & 1 \end{pmatrix}, \qquad \text{de} \qquad \begin{pmatrix} 1 & 0 \\ 1 & 1 \end{pmatrix}\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ 1 & 2 \end{pmatrix}.$$
Továbbá a mátrixszorzás **nem nullosztómentes**: könnyen előfordulhat, hogy két nem nulla mátrix szorzata a nullmátrix, például
$$\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}\begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}.$$
A mátrixokkal tehát óvatosan kell számolni: például az $(A + B)^2 = A^2 + 2AB + B^2$ azonosság általában **nem** igaz (a helyes alak $A^2 + AB + BA + B^2$), és $AB = 0$-ból nem következik, hogy $A = 0$ vagy $B = 0$.

> **1.7 Definíció.** Egy $M \in T^{n \times n}$ négyzetes mátrix **invertálható**, ha létezik olyan $M^{-1} \in T^{n \times n}$ mátrix, amelyre
> $$MM^{-1} = M^{-1}M = E_n.$$
> Az $M^{-1}$ mátrixot $M$ **inverzének** nevezzük.

Az inverz, ha létezik, egyértelmű: ha $N$ és $N'$ is inverz, akkor $N = NE = N(MN') = (NM)N' = EN' = N'$. Nem minden nem nulla mátrix invertálható: az előbbi $\begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}$ például nem, hiszen akkor $\begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = M^{-1}M\begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = M^{-1} \cdot 0 = 0$ következne. Hogy pontosan mely mátrixok invertálhatók, és hogyan számolható ki az inverz, azt a 2.6. pontban és a 9. fejezetben látjuk.

## 2. Lineáris egyenletrendszerek és megoldásaik

### 2.1. A Gauss-elimináció egy példán

Oldjuk meg az
$$\begin{aligned} x + 2y - z &= 4 \\ 2x - y + 3z &= 3 \\ 3x + y + 2z &= 7 \end{aligned}$$
egyenletrendszert! Az egyenletrendszert mátrixszorzással így írhatjuk fel:
$$\begin{pmatrix} 1 & 2 & -1 \\ 2 & -1 & 3 \\ 3 & 1 & 2 \end{pmatrix}\begin{pmatrix} x \\ y \\ z \end{pmatrix} = \begin{pmatrix} 4 \\ 3 \\ 7 \end{pmatrix}.$$
Ehelyett röviden csak az úgynevezett **kibővített mátrixot** írjuk fel, amelyben az együtthatók mellé, egy függőleges vonal után, a jobb oldal kerül:
$$\left(\begin{array}{ccc|c} 1 & 2 & -1 & 4 \\ 2 & -1 & 3 & 3 \\ 3 & 1 & 2 & 7 \end{array}\right).$$

**1. lépés.** „Bekarikázunk” egy nem nulla elemet — ez lesz a **vezérelem** (pivot) —, most az első sor első elemét, az $1$-et. A bekarikázott elem oszlopában lévő többi elemet sorműveletekkel kinullázzuk: a 2. sorból kivonjuk az 1. sor kétszeresét, a 3. sorból az 1. sor háromszorosát:
$$\left(\begin{array}{ccc|c} \boxed{1} & 2 & -1 & 4 \\ 0 & -5 & 5 & -5 \\ 0 & -5 & 5 & -5 \end{array}\right).$$

**2. lépés.** Megint bekarikázunk egy nem nulla elemet, de olyat, amelynek sorában és oszlopában még nincs karika: a 2. sor $-5$-ös elemét. Az oszlopában lévő többi elemet kinullázzuk: az 1. sorhoz hozzáadjuk a 2. sor $\frac{2}{5}$-szörösét, a 3. sorból kivonjuk a 2. sort:
$$\left(\begin{array}{ccc|c} \boxed{1} & 0 & 1 & 2 \\ 0 & \boxed{-5} & 5 & -5 \\ 0 & 0 & 0 & 0 \end{array}\right).$$
A sorműveletek között megengedett a sor szorzása és osztása is egy nem nulla számmal (ha nem szeretünk törtekkel számolni, ez fontos). Most a 2. sort elosztjuk $-5$-tel:
$$\left(\begin{array}{ccc|c} 1 & 0 & 1 & 2 \\ 0 & 1 & -1 & 1 \\ 0 & 0 & 0 & 0 \end{array}\right).$$
Több bekarikázható elem nincs (a 3. sor csupa nulla). Az utolsó táblázathoz tartozó egyenletrendszer:
$$x + z = 2, \qquad y - z = 1 \qquad (\text{és } 0 \cdot x + 0 \cdot y + 0 \cdot z = 0).$$

**Kötött és szabad változók.** A bekarikázott elemek oszlopaihoz tartozó változók a **kötött változók** (itt $x$ és $y$), a többi a **szabad változó** (itt $z$). A szabad változókkal kifejezhetjük a kötötteket:
$$x = 2 - z, \qquad y = 1 + z.$$
A **paraméteres megoldás** tehát: $x = 2 - z$, $y = 1 + z$, ahol $z$ tetszőleges szám. Az egyenletrendszernek végtelen sok megoldása van; például $z = 0$-ra $(2, 1, 0)$, $z = 1$-re $(1, 2, 1)$. (Ellenőrzés az elsővel: $2 + 2 - 0 = 4$, $4 - 1 + 0 = 3$, $6 + 1 + 0 = 7$. ✓)

**Miért működik a módszer?** Mert a sorműveletek nem változtatják meg az egyenletrendszer megoldáshalmazát: egy egyenlet nem nulla számmal való szorzása, egy egyenlethez egy másik többszörösének hozzáadása és két egyenlet felcserélése megfordítható lépések, így minden lépés után ugyanazok a megoldások. (A 9. fejezetben látni fogjuk, hogy minden sorművelet egy alkalmas mátrixszal való balról szorzásnak felel meg.)

**A tilos sor.** Ha a Gauss-elimináció során létrejön egy
$$\left(\begin{array}{cccc|c} 0 & 0 & \dots & 0 & c \end{array}\right), \qquad c \ne 0$$
alakú sor, akkor az egyenletrendszernek **nincs megoldása**, hiszen ez a $0 = c$ egyenletnek felel meg. Az ilyen sort **tilos sornak** nevezzük.

### 2.2. A lineáris egyenletrendszerek általános alakja

> **2.1 Definíció.** Egy $n$ egyenletből álló, $m$ ismeretlenes **lineáris egyenletrendszer** általános alakja:
> $$\begin{aligned} a_{11}x_1 + a_{12}x_2 + \dots + a_{1m}x_m &= b_1 \\ a_{21}x_1 + a_{22}x_2 + \dots + a_{2m}x_m &= b_2 \\ &\ \ \vdots \\ a_{n1}x_1 + a_{n2}x_2 + \dots + a_{nm}x_m &= b_n \end{aligned}$$

Tömörebben, mátrixos alakban: $Ax = b$, ahol $A \in T^{n \times m}$ az **együtthatómátrix**, $x \in T^m$ az ismeretlenek oszlopvektora, $b \in T^n$ a jobb oldali konstansok oszlopvektora:
$$\begin{pmatrix} a_{11} & a_{12} & \dots & a_{1m} \\ a_{21} & a_{22} & \dots & a_{2m} \\ \vdots & \vdots & & \vdots \\ a_{n1} & a_{n2} & \dots & a_{nm} \end{pmatrix}\begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_m \end{pmatrix} = \begin{pmatrix} b_1 \\ b_2 \\ \vdots \\ b_n \end{pmatrix}.$$

### 2.3. A megoldások száma és a Gauss-elimináció

Egy lineáris egyenletrendszer megoldásainak számára pontosan három eset lehetséges: **nincs** megoldás, **pontosan egy** megoldás van, vagy **végtelen sok** megoldás van. (Kettő vagy három megoldás például sosem lehet; ennek oka, hogy ha $u$ és $v$ két különböző megoldás, akkor $u + t(v - u)$ is megoldás minden $t$ számra.) A három esetet egyszerű háromváltozós rendszerekkel szemléltetjük.

**1. Pontosan egy megoldás.**
$$x + y + z = 3, \qquad y + z = 2, \qquad z = 1.$$
Alulról felfelé haladva: $z = 1$, $y = 1$, $x = 1$.

**2. Nincs megoldás (ellentmondásos rendszer).**
$$x + y + z = 3, \qquad x + y + z = 4, \qquad z = 1.$$
Az első két egyenlet bal oldala megegyezik, a jobb oldaluk eltér: ugyanannak az összegnek nem lehet egyszerre $3$ és $4$ az értéke. A Gauss-elimináció során itt tilos sor keletkezik ($0 = 1$).

**3. Végtelen sok megoldás (paraméteres megoldás).**
$$x + y + z = 3, \qquad 2x + 2y + 2z = 6, \qquad z = 1.$$
A második egyenlet az első kétszerese, így nem ad új információt (a Gauss-elimináció során kinullázódik). A harmadikat az elsőbe helyettesítve $x + y = 2$. Itt $y$-t szabad változónak választva $x = 2 - y$; mivel $y$ bármilyen valós szám lehet, végtelen sok megoldás van.

**A Gauss-elimináció általában.** A lineáris egyenletrendszerek megoldásának egyik leghatékonyabb algoritmusa a Gauss-elimináció. A rendszer kibővített mátrixán
$$\left(\begin{array}{cccc|c} a_{11} & a_{12} & \dots & a_{1m} & b_1 \\ a_{21} & a_{22} & \dots & a_{2m} & b_2 \\ \vdots & \vdots & & \vdots & \vdots \\ a_{n1} & a_{n2} & \dots & a_{nm} & b_n \end{array}\right)$$
hajtunk végre elemi sorműveleteket. Minden lépésben kiválasztunk egy olyan nem nulla együtthatót, amelynek sorában és oszlopában még nincs vezérelem; ezt a sor leosztásával $1$-re változtatjuk, ő lesz a **vezéregyes**. A vezéregyes oszlopában az összes többi elemet sorműveletekkel kinullázzuk. A cél egy (redukált) **lépcsős alak** kialakítása, például:
$$\left(\begin{array}{cccc|c} 1 & 0 & 0 & 3 & 2 \\ 0 & 1 & 0 & 2 & 1 \\ 0 & 0 & 1 & -2 & 3 \\ 0 & 0 & 0 & 0 & 0 \end{array}\right).$$
Ha az eljárás során tilos sor keletkezik — például
$$\left(\begin{array}{cccc|c} 1 & 0 & 0 & 3 & 2 \\ 0 & 1 & 0 & 2 & 1 \\ 0 & 0 & 1 & -2 & 3 \\ 0 & 0 & 0 & 0 & 3 \end{array}\right)$$
—, akkor az egyenletrendszer ellentmondásos, nincs megoldása.

Amikor az algoritmus véget ér, azokat az ismeretleneket, amelyek oszlopában nincs vezéregyes, **szabad változóknak** nevezzük, a többi **kötött változó**. A kötött változókat egyértelműen ki tudjuk fejezni a szabad változókkal. Az első (nem tilos sort tartalmazó) példában $x_4$ szabad, és
$$x_1 = 2 - 3x_4, \qquad x_2 = 1 - 2x_4, \qquad x_3 = 3 + 2x_4, \qquad x_4 \in T \text{ tetszőleges}.$$
Ha a rendszernek végtelen sok megoldása van, a megoldáshalmazt így, a szabad változók segítségével, paraméteresen írjuk fel.

**Összefoglalva:** ha keletkezik tilos sor, nincs megoldás; ha nem keletkezik, és nincs szabad változó, pontosan egy megoldás van; ha nem keletkezik tilos sor, de van szabad változó, végtelen sok megoldás van (ha a test végtelen, mint $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$).

### 2.4. Az egyenletek és az ismeretlenek számának kapcsolata

Fontos összefüggés: **ha az egyenletek száma szigorúan kisebb, mint az ismeretlenek száma, akkor az egyenletrendszernek nem lehet egyértelmű megoldása.** Ilyenkor vagy egyáltalán nincs megoldás (tilos sor keletkezik), vagy végtelen sok megoldás van (lesz szabad változó).

Ennek oka: az egyértelmű megoldáshoz az kell, hogy ne maradjon szabad változó, vagyis minden ismeretlen oszlopában legyen vezéregyes. Ezek a vezéregyesek mind különböző sorokban helyezkednek el, így ez csak akkor lehetséges, ha legalább annyi sor (egyenlet) van, mint ahány oszlop (ismeretlen).

### 2.5. Homogén lineáris egyenletrendszerek

Egy lineáris egyenletrendszert **homogénnek** nevezünk, ha az egyenletek jobb oldalán minden konstans nulla, például
$$2x + y - z = 0, \qquad x - 3y + 2z = 0, \qquad 4x + 5y + z = 0.$$
Egy homogén rendszer **sosem lehet ellentmondásos**, hiszen a csupa nulla (triviális) megoldás mindig kielégíti. (A fenti rendszernek egyébként csak a triviális megoldása van — ezt a Gauss-eliminációval, vagy később a determinánssal ellenőrizhetjük.) Ebből és az előző pont állításából közvetlenül következik:

> **Tétel.** Ha egy homogén lineáris egyenletrendszerben az egyenletek száma kisebb, mint az ismeretlenek száma, akkor a triviális megoldáson kívül biztosan van nem triviális megoldása is.

Például az $x + y + z = 0$, $x - y + 2z = 0$ rendszer ($2$ egyenlet, $3$ ismeretlen) egy nem triviális megoldása: $x = -3$, $y = 1$, $z = 2$.

### 2.6. Inverz mátrix számítása Gauss-eliminációval

Legyen
$$A = \begin{pmatrix} 2 & -1 & 0 \\ -1 & 2 & -1 \\ 0 & -1 & 2 \end{pmatrix}.$$
A négyzetes mátrixot kiegészítjük az egységmátrixszal:
$$\left(\begin{array}{ccc|ccc} 2 & -1 & 0 & 1 & 0 & 0 \\ -1 & 2 & -1 & 0 & 1 & 0 \\ 0 & -1 & 2 & 0 & 0 & 1 \end{array}\right).$$
Majd Gauss-eliminációt végzünk a bal oldalon álló $A$ mátrixon, de úgy, hogy minden műveletet a **teljes sorra** elvégzünk. A cél: a bal oldalon az egységmátrix jelenjen meg.

**1. lépés.** Bekarikázzuk a bal felső $2$-est, és az első sort $2$-vel osztjuk, hogy a vezérelem $1$ legyen; majd a 2. sorhoz hozzáadjuk az 1. sort:
$$\left(\begin{array}{ccc|ccc} 1 & -1/2 & 0 & 1/2 & 0 & 0 \\ 0 & 3/2 & -1 & 1/2 & 1 & 0 \\ 0 & -1 & 2 & 0 & 0 & 1 \end{array}\right).$$
**2. lépés.** Bekarikázzuk a $3/2$-et (sorában és oszlopában nincs még karika), a 2. sort $\frac{2}{3}$-dal szorozzuk:
$$\left(\begin{array}{ccc|ccc} 1 & -1/2 & 0 & 1/2 & 0 & 0 \\ 0 & 1 & -2/3 & 1/3 & 2/3 & 0 \\ 0 & -1 & 2 & 0 & 0 & 1 \end{array}\right).$$
A vezéregyes alatt és felett kinullázunk: 1. sor $+ \frac{1}{2} \times$ 2. sor, 3. sor $+$ 2. sor:
$$\left(\begin{array}{ccc|ccc} 1 & 0 & -1/3 & 2/3 & 1/3 & 0 \\ 0 & 1 & -2/3 & 1/3 & 2/3 & 0 \\ 0 & 0 & 4/3 & 1/3 & 2/3 & 1 \end{array}\right).$$
**3. lépés.** A 3. sort $\frac{3}{4}$-del szorozzuk, majd 1. sor $+ \frac{1}{3} \times$ 3. sor, 2. sor $+ \frac{2}{3} \times$ 3. sor:
$$\left(\begin{array}{ccc|ccc} 1 & 0 & -1/3 & 2/3 & 1/3 & 0 \\ 0 & 1 & -2/3 & 1/3 & 2/3 & 0 \\ 0 & 0 & 1 & 1/4 & 1/2 & 3/4 \end{array}\right) \longrightarrow \left(\begin{array}{ccc|ccc} 1 & 0 & 0 & 3/4 & 1/2 & 1/4 \\ 0 & 1 & 0 & 1/2 & 1 & 1/2 \\ 0 & 0 & 1 & 1/4 & 1/2 & 3/4 \end{array}\right).$$
Most, hogy a bal oldalon létrejött az egységmátrix, a jobb oldalon megjelenik $A$ inverze:
$$A^{-1} = \begin{pmatrix} 3/4 & 1/2 & 1/4 \\ 1/2 & 1 & 1/2 \\ 1/4 & 1/2 & 3/4 \end{pmatrix} = \frac{1}{4}\begin{pmatrix} 3 & 2 & 1 \\ 2 & 4 & 2 \\ 1 & 2 & 3 \end{pmatrix}.$$
Ellenőrzés (első sor szorozva az első oszloppal): $2 \cdot \frac{3}{4} + (-1)\cdot\frac{1}{2} + 0 \cdot \frac{1}{4} = \frac{3}{2} - \frac{1}{2} = 1$; az első sor szorozva a második oszloppal: $2 \cdot \frac{1}{2} - 1 \cdot 1 + 0 = 0$. ✓

A műveletek során a **sorcsere is megengedett**. Ha nem szeretünk törtekkel számolni, nyugodtan megszorozhatjuk az egész sort egy alkalmas konstanssal, és csak az eljárás legvégén osztjuk a sorokat úgy, hogy a vezérelemek egyesek legyenek.

**Miért működik a módszer?** Minden táblázathoz hozzárendelhetünk egy mátrixegyenletet: ha a táblázat $(L \mid R)$ alakú, akkor a hozzá tartozó egyenlet
$$L \cdot A^{-1} = R.$$
A kiinduló táblázatra ($L = A$, $R = E$) ez igaz. Ezek az egyenletek a megengedett sorműveletek után is mindig érvényben maradnak (egy sorművelet az $L$ és az $R$ ugyanazon sorain ugyanazt a műveletet végzi, ami $L A^{-1}$ soraira ugyanazt a hatást gyakorolja, mint $R$ soraira). Például a 2. lépés végén kapott táblázathoz az
$$\begin{pmatrix} 1 & 0 & -1/3 \\ 0 & 1 & -2/3 \\ 0 & 0 & 4/3 \end{pmatrix} A^{-1} = \begin{pmatrix} 2/3 & 1/3 & 0 \\ 1/3 & 2/3 & 0 \\ 1/3 & 2/3 & 1 \end{pmatrix}$$
egyenlet tartozik. Az utolsó táblázathoz tartozó egyenlet pedig $E \cdot A^{-1} = R$, azaz $A^{-1} = R$.

(Ha a Gauss-elimináció során a bal oldalon nem sikerül az egységmátrixot előállítani — mert valamelyik oszlopban nem találunk vezérelemet —, akkor $A$ nem invertálható. Ezt a 9. fejezetben a determináns segítségével is látni fogjuk: $A$ pontosan akkor invertálható, ha $\det A \ne 0$.)

## Az I. rész összefoglalása

- **Mátrix:** számok téglalap alakú táblázata; $A \in T^{m \times n}$ ($m$ sor, $n$ oszlop). Összeadás elemenként; **szorzás** sor–oszlop szerint: $(AB)_{ij} = \sum_\ell a_{i\ell}b_{\ell j}$, csak ha $A$ oszlopainak száma $B$ sorainak száma.
- A szorzás asszociatív és disztributív, van egységelem ($E_n$), de **nem kommutatív** és **nem nullosztómentes**. $(AB)^T = B^TA^T$.
- Alkalmazások: bevételszámítás (darabszám-mátrix szorozva ármátrixszal), a szomszédsági mátrix $k$-adik hatványa a $k$ hosszú séták számát adja.
- **Gauss-elimináció:** kibővített mátrix, vezérelem, kinullázás sorműveletekkel; tilos sor $\Rightarrow$ nincs megoldás; szabad változó $\Rightarrow$ végtelen sok megoldás; egyébként egyértelmű megoldás. Kevesebb egyenlet, mint ismeretlen $\Rightarrow$ nincs egyértelmű megoldás; homogén rendszernek ilyenkor van nem triviális megoldása.
- **Inverz mátrix:** $(A \mid E) \to (E \mid A^{-1})$ Gauss–Jordan-eliminációval; az invariáns: $L \cdot A^{-1} = R$.

## Feladatok az I. részhez

1. Legyen $A = \begin{pmatrix} 1 & 2 \\ 0 & 1 \end{pmatrix}$ és $B = \begin{pmatrix} 1 & 0 \\ 3 & 1 \end{pmatrix}$. Számítsuk ki $AB$-t és $BA$-t.
2. Oldjuk meg Gauss-eliminációval: $x + y + 2z = 9$, $2x + 4y - 3z = 1$, $3x + 6y - 5z = 0$.
3. Oldjuk meg: $x + 2y + 3z = 6$, $2x + 4y + 7z = 13$. Melyek a szabad változók?
4. Mutassuk meg, hogy az $x + y + z = 1$, $x + 2y + 3z = 2$, $2x + 3y + 4z = 4$ rendszer ellentmondásos.
5. A $\lambda$ paraméter mely értékeire van az $x + y = 1$, $x + \lambda y = \lambda$ rendszernek pontosan egy, végtelen sok, illetve egyetlen megoldása sem?
6. Számítsuk ki Gauss-eliminációval az $\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}$ és az $\begin{pmatrix} 1 & 1 & 0 \\ 0 & 1 & 1 \\ 1 & 0 & 1 \end{pmatrix}$ mátrix inverzét.
7. Legyen $K$ a háromszög gráf (három csúcs, bármely kettő összekötve) szomszédsági mátrixa. Számítsuk ki $K^2$-t és $K^3$-t, és értelmezzük az átlóbeli elemeket.
8. Bizonyítsuk be, hogy ha $A$ és $B$ invertálható $n \times n$-es mátrixok, akkor $AB$ is invertálható, és $(AB)^{-1} = B^{-1}A^{-1}$.

### Megoldási útmutatók

1. $AB = \begin{pmatrix} 7 & 2 \\ 3 & 1 \end{pmatrix}$, $BA = \begin{pmatrix} 1 & 2 \\ 3 & 7 \end{pmatrix}$; tehát $AB \ne BA$.
2. Az elimináció után egyetlen megoldás: $x = 1$, $y = 2$, $z = 3$.
3. A második egyenletből kivonva az első kétszeresét $z = 1$; ekkor $x + 2y = 3$. A szabad változó $y$: $x = 3 - 2y$, $z = 1$, $y$ tetszőleges.
4. Az első két egyenlet összege $2x + 3y + 4z = 3$, ami ellentmond a harmadiknak ($= 4$). Gauss-eliminációval: a harmadik sorból kivonva az első két sor összegét a $(0\ 0\ 0 \mid 1)$ tilos sor adódik.
5. A második egyenletből kivonva az elsőt: $(\lambda - 1)y = \lambda - 1$. Ha $\lambda \ne 1$: $y = 1$, $x = 0$ — pontosan egy megoldás. Ha $\lambda = 1$: a két egyenlet azonos, végtelen sok megoldás ($x = 1 - y$). Megoldhatatlan eset nincs.
6. $\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}^{-1} = \begin{pmatrix} -2 & 1 \\ 3/2 & -1/2 \end{pmatrix}$; $\begin{pmatrix} 1 & 1 & 0 \\ 0 & 1 & 1 \\ 1 & 0 & 1 \end{pmatrix}^{-1} = \frac{1}{2}\begin{pmatrix} 1 & -1 & 1 \\ 1 & 1 & -1 \\ -1 & 1 & 1 \end{pmatrix}$.
7. $K^2 = \begin{pmatrix} 2 & 1 & 1 \\ 1 & 2 & 1 \\ 1 & 1 & 2 \end{pmatrix}$, $K^3 = \begin{pmatrix} 2 & 3 & 3 \\ 3 & 2 & 3 \\ 3 & 3 & 2 \end{pmatrix}$. $(K^2)_{ii} = 2$: minden csúcsnak két szomszédja van (oda-vissza séták). $(K^3)_{ii} = 2$: a csúcsból kétféleképpen lehet a háromszögön körbejárni (két irányban).
8. $(AB)(B^{-1}A^{-1}) = A(BB^{-1})A^{-1} = AEA^{-1} = AA^{-1} = E$, és hasonlóan $(B^{-1}A^{-1})(AB) = E$. A sorrend megfordul — ugyanúgy, mint a zokni és a cipő levételénél.

---
