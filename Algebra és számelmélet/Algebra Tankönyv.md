# Algebra Tankönyv

### Felsőbb fokú algebra kezdőknek, lépésről lépésre

**Gyarmati Katalin *Előadásvázlatok felsőbb fokú algebrából kezdőknek* című jegyzete alapján**

---

> *„Az algebra nem más, mint írásba foglalt geometria; a geometria nem más, mint alakba öntött algebra.”* — Sophie Germain

---

## Előszó

Ez a könyv **Gyarmati Katalin** (ELTE TTK, Matematikai Intézet) *Előadásvázlatok felsőbb fokú algebrából kezdőknek* című egyetemi jegyzetének (ELTE TTK, 2026) tankönyvszerű feldolgozása. A jegyzet a szerző sokéves oktatói munkájának és tapasztalatainak összefoglalása, és — ahogy bevezetőjében maga írja — Kiss Emil átfogó algebra-diasoraira is épül, amelyek tanulmányozását mi is jó szívvel ajánljuk. **Az anyag felépítése, a fejezetek sorrendje, a definíciók, a tételek és bizonyításaik, a kidolgozott példák és a történeti kitérők Gyarmati Katalin munkáját követik; ennek a könyvnek minden érdeme az övé.** A feldolgozás azt teszi hozzá, amit egy tankönyvnek egy előadásvázlathoz képest hozzá kell tennie: lassabban halad, minden új fogalom előtt megmutatja, milyen kérdés teszi szükségessé, a bizonyítások mögötti ötletet is kimondja, és több kidolgozott példát, illetve gyakorló feladatot ad. Az esetleges hibák a feldolgozásból erednek, nem az eredeti jegyzetből.

**A számozás megegyezik a jegyzetével.** A könyv 21 fejezete címében és tartalmában a jegyzet azonos számú fejezetének felel meg, és a definíciók, tételek, feladatok számozását is átvettük (például az *1.5 Definíció* itt is a mátrixszorzás definíciója). A fejezeteket hat nagyobb részbe csoportosítottuk; minden rész végén összefoglalás, gyakorló feladatok és megoldási útmutatók állnak.

Az *Algebra* és a *Számelmélet* tárgy anyaga sok ponton összekapcsolódik (maradékos osztás, euklideszi algoritmus, a számelmélet alaptétele, kongruenciák, a kis Fermat-tétel). Ahol ez segít, utalunk a párhuzamos *Számelmélet Tankönyv* (Gyarmati Katalin *Elemi Számelmélet* című jegyzetének feldolgozása) megfelelő fejezeteire.

### A szürke dobozok

A jegyzet néhány állítást bizonyítás nélkül közöl, vagy a bizonyítást csak vázolja. Ezeket a bizonyításokat — és néhány olyan hasznos kiegészítést, amely a jegyzetben nem szerepel — **kiegészítésként** megírtuk, de világosszürke háttérrel elkülönítettük a szöveg többi részétől, például így:

::: kiegeszites
**Kiegészítés.** Az ilyen dobozok tartalma *nem szerepel* Gyarmati Katalin jegyzetében. Első olvasáskor átugorhatók, de vizsgára készülve érdemes őket is végigolvasni: gyakran éppen ezekben derül ki, *miért* igaz valami.
:::

Ami szürke háttér nélkül szerepel, az a jegyzet anyaga, legfeljebb részletesebben kifejtve. Néhány helyen — ahol a történeti adatok vagy egy-egy számolás pontosítást igényelt — a javított változatot közöljük.

### Hogyan használjuk ezt a könyvet?

**Számolva.** Az algebra első félévének anyaga nagyrészt *technika*: Gauss-elimináció, determinánsszámítás, komplex számokkal való műveletek, polinomosztás. Ezeket csak úgy lehet megtanulni, ha az ember sokat számol. A kidolgozott példákat érdemes letakarni, önállóan végigszámolni, és csak utána összevetni.

**A fogalmak mögé nézve.** A félév második felében (csoportok, gyűrűk, testek, euklideszi gyűrűk) a technika mögül előbukkan a *szerkezet*: kiderül, hogy az egész számok, a polinomok és a maradékosztályok ugyanazoknak a szabályoknak engedelmeskednek. Érdemes minden új fogalomnál végiggondolni, melyik korábban látott példára illik rá, és melyikre nem.

**A feladatokkal.** Minden rész végén gyakorló feladatok és rövid megoldási útmutatók állnak. Az útmutatót csak akkor nézzük meg, ha már legalább negyedórát gondolkodtunk a feladaton.

### A könyvben használt jelölések

- $\mathbb{N} = \{0, 1, 2, \dots\}$, $\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$: a természetes, egész, racionális, valós, illetve komplex számok halmaza.
- $T$: egy tetszőleges **számtest** (például $\mathbb{Q}$, $\mathbb{R}$ vagy $\mathbb{C}$); $T^n$ a $T$ feletti $n$ komponensű oszlopvektorok, $T^{n \times m}$ az $n \times m$-es mátrixok halmaza.
- $E_n$ vagy $I$: az $n \times n$-es egységmátrix; $A^T$: az $A$ mátrix transzponáltja; $\det A$ vagy $|A|$: determináns.
- $\deg f$: az $f$ polinom foka; $R[x]$: az $R$ feletti polinomok halmaza.
- $\mathbb{Z}_m$: a modulo $m$ maradékosztályok halmaza.
- $(a, b)$ vagy $\operatorname{lnko}(a, b)$: legnagyobb közös osztó.

A definíciókat és a fontos tételeket a szövegtől elkülönítve, behúzott blokkban szedtük. A bizonyítások végét $\blacksquare$ jelzi.

---

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

# II. RÉSZ: POLINOMOK ÉS KOMPLEX SZÁMOK

A második rész a polinomokkal és a komplex számokkal foglalkozik. A két téma szorosan összefügg: a komplex számokat éppen azért vezették be, hogy bizonyos polinomegyenleteknek (például $x^2 = -1$-nek) legyen megoldása, és a rész csúcspontja, az **algebra alaptétele** azt mondja ki, hogy a komplex számok körében már *minden* polinomegyenletnek van megoldása. Közben megtanuljuk a polinomok formális kezelését, a gyöktényező kiemelését, a Horner-elrendezést, a komplex számok trigonometrikus alakját és az egységgyököket — utóbbiakkal geometriai feladatokat is megoldunk.

## 3. Polinomok

Kezdetben a matematikusok nem használtak szimbólumokat: az egyenleteket és a teljes levezetéseket is szöveges formában írták le (ezt **retorikus algebrának** nevezik). Például a mai
$$x^2 - x + 7 = 0$$
egyenlet helyett ilyen mondatot jegyeztek le: *„az ismeretlen négyzete, mínusz az ismeretlen, plusz hét egyenlő nullával.”* Ez rendkívül nehézkessé és időigényessé tette a hosszabb számításokat. A matematikai szimbolika megjelenése tette lehetővé az algebra robbanásszerű fejlődését.

Néhány ma megszokott jelölés eredete:

| Jelölés | Kinek köszönhető? | Mikor? |
|---|---|---|
| $+$ és $-$ (nyomtatásban) | Johannes Widmann | 1489 |
| $=$ | Robert Recorde | 1557 |
| betűk ismeretlenekre és adott mennyiségekre | François Viète | 1591 |
| $\times$ | William Oughtred | 1631 |
| $x, y, z$ az ismeretlenekre; $x^3, x^4$ (kitevős írásmód) | René Descartes | 1637 |
| $f(x)$ (függvényjelölés) | Leonhard Euler | 1734 |

(A $+$ jel a latin *et* „és” szó rövidítéséből alakult ki, egyes források szerint már Nicole Oresme XIV. századi írásaiban. Az $x^2$ írásmód csak lassan szorította ki az $xx$-et: Descartes még $xx$-et írt, és Gauss is gyakran így jelölte a négyzetet.)

A polinomok története évezredekre nyúlik vissza, a geometriai problémák megoldásától a modern absztrakt algebráig. A fejlődés középpontjában a $P(x) = 0$ egyenletek gyökeinek megtalálása állt.

- **Kezdetek.** A babiloniak (kb. i. e. 2000–1600) már foglalkoztak másodfokú problémákkal; explicit képletet nem használtak, de ismerték a megoldás módszerét. Az indiai matematikusok közül Brahmagupta (628) már általános szabályt adott a másodfokú egyenlet megoldására.
- **Arab algebra.** Az *algebra* szó al-Hvárizmi (kb. 820) könyvének címéből, az *al-dzsabr* („helyreállítás”, a negatív tagok átvitele a másik oldalra) szóból származik. Omar Hajjám perzsa matematikus (XI. század) a harmadfokú egyenletek gyökeit kúpszeletek metszéspontjaiként geometriailag meg tudta határozni, de algebrai képletet nem adott.
- **Az itáliai reneszánsz (XVI. század).** A harmadfokú egyenletet először Scipione del Ferro oldotta meg, majd Niccolò Tartaglia fedezte fel újra; Gerolamo Cardano 1545-ben publikálta a megoldást az *Ars Magna* című művében. A negyedfokú egyenlet általános megoldását Cardano tanítványa, Lodovico Ferrari találta meg, és az is az *Ars Magná*-ban jelent meg. (Erről a 17. fejezetben részletesen lesz szó.)
- **Jelölések és elméleti alapok (XVI–XVIII. század).** Viète bevezette a betűk használatát az ismeretlenek és az adott mennyiségek jelölésére, Descartes a ma használatos kitevős írásmódot.
- **Az ötöd- és magasabb fokú egyenletek (XIX. század).** Paolo Ruffini (1799, hiányosan) és Niels Henrik Abel (1824) bebizonyította, hogy az általános ötödfokú egyenlet nem oldható meg gyökjelekkel. Évariste Galois (1832 előtt) kidolgozta azt az elméletet, amely csoportok és testek segítségével teljes képet ad arról, mikor oldható meg egy egyenlet gyökjelekkel.

Polinomfüggvényeket érdemes grafikusan is megvizsgálni; erre kiváló például a Desmos ingyenes online függvényábrázoló programja.

A modern matematikában a polinomokat nem csupán függvényekként, hanem **együtthatósorozatok által meghatározott formális kifejezésekként** kezeljük. Ez a megközelítés lehetővé teszi, hogy tetszőleges számtestek, sőt gyűrűk felett is építkezzünk.

### 3.1. Alapfogalmak és a formális definíció

> **3.1 Definíció.** **Egyváltozós polinomnak** nevezzük az
> $$f(x) = a_0 + a_1x + a_2x^2 + \dots + a_nx^n = \sum_{j=0}^n a_jx^j$$
> formális kifejezést, ahol $n \ge 0$ egész, az $a_0, a_1, \dots, a_n$ **együtthatók** pedig egy adott számhalmazból (például $\mathbb{Z}$, $\mathbb{Q}$ vagy $\mathbb{R}$) származnak. Az $x$ neve **változó** (határozatlan).

Az $a_jx^j$ kifejezés a polinom egy **tagja**, ahol $a_j$ az $x^j$ együtthatója; az $a_0 = a_0x^0$ tag a **konstans tag**. A nulla együtthatójú tagokat igény szerint (akár végtelen hosszan) kiírhatjuk: megállapodás szerint $a_{n+1} = a_{n+2} = \dots = 0$. Ezáltal bármely két polinom felírható „azonos tagszámmal”.

> **3.2 Definíció.** Két polinom **egyenlő**, ha a megfelelő együtthatóik megegyeznek, azaz $x^j$ együtthatója a két polinomban ugyanaz minden $j \ge 0$-ra.

Jelölések: $\mathbb{Z}[x]$ az egész együtthatós, $\mathbb{Q}[x]$ a racionális együtthatós, $\mathbb{R}[x]$ a valós együtthatós polinomok halmaza; hasonlóan $\mathbb{C}[x]$.

> **3.3 Definíció.** A **nullapolinom** az a polinom, amelynek minden együtthatója nulla; jele $0$. Azokat a polinomokat, amelyekben $x^j$ együtthatója minden $j \ge 1$-re nulla, **konstans polinomoknak** nevezzük.

### 3.2. Műveletek és a polinom foka

Legyen $f(x) = \sum_{j=0}^n a_jx^j$ és $g(x) = \sum_{j=0}^n b_jx^j$ (a rövidebbet nullákkal kiegészítve). Ekkor

- **összeg:** $(f + g)(x) = \sum_{j=0}^n (a_j + b_j)x^j$;
- **különbség:** $(f - g)(x) = \sum_{j=0}^n (a_j - b_j)x^j$;
- **szorzat:** $(fg)(x) = \sum_{k=0}^{2n} c_kx^k$, ahol
$$c_k = \sum_{j + \ell = k} a_jb_\ell = \sum_{j=0}^k a_jb_{k-j}.$$

A szorzat képlete egyszerűen a „mindenkit mindenkivel összeszorzunk, és összevonjuk az azonos kitevőjű tagokat” szabály formalizálása. Például
$$(1 + 2x)(3 - x + x^2) = 3 - x + x^2 + 6x - 2x^2 + 2x^3 = 3 + 5x - x^2 + 2x^3,$$
ahol például $c_1 = a_0b_1 + a_1b_0 = 1 \cdot (-1) + 2 \cdot 3 = 5$.

> **3.4 Definíció.** Ha az $f(x) = a_0 + a_1x + \dots + a_nx^n$ polinomban $a_n \ne 0$, akkor $f$ **foka** $n$; jele $\deg f$ (vagy $\operatorname{gr} f$). Az $a_nx^n$ a polinom **főtagja**, $a_n$ a **főegyütthatója**. Ha a főegyüttható $1$, a polinomot **normáltnak** nevezzük.

**Megjegyzés.** A definíció értelmében a nullapolinomnak nincs foka (néha $-\infty$-nek tekintik). A nem nulla konstans polinomok foka $0$.

> **3.5 Tétel.** A polinomműveletek és a fokszámok között az alábbi összefüggések állnak fenn (nem nulla polinomokra, ha az együtthatók egy számtestből valók):
>
> 1. $\deg(fg) = \deg f + \deg g$ (szorzásnál a fokok összeadódnak);
> 2. $\deg(f + g) \le \max(\deg f, \deg g)$, és ha $\deg f \ne \deg g$, akkor egyenlőség áll fenn (ha $f + g \ne 0$).

*Bizonyítás.* 1. Ha $\deg f = n$, $\deg g = m$, akkor a szorzatban $x^{n+m}$ együtthatója $a_nb_m \ne 0$ (két nem nulla szám szorzata nem nulla), magasabb kitevőjű tag pedig nincs. 2. Az összegben $\max(n, m)$-nél magasabb kitevőjű tag nincs; ha $n > m$, akkor $x^n$ együtthatója $a_n + 0 = a_n \ne 0$. $\blacksquare$

**Figyelem:** az 1. pont azon múlik, hogy a főegyütthatók szorzata nem nulla. Olyan „számkörben”, ahol két nem nulla elem szorzata lehet nulla, ez elromlik: például $\mathbb{Z}_6$-ban (a modulo $6$ maradékosztályok körében) $(2x + 1)(3x + 1) = 6x^2 + 5x + 1 = 5x + 1$, mert $6 = 0$; itt két elsőfokú polinom szorzata elsőfokú.

> **3.6 Következmény.** A fokszámtétel közvetlen következményei (számtest feletti polinomokra):
>
> 1. A polinomok szorzása **nullosztómentes**: nem nulla polinomok szorzata sem lehet a nullapolinom.
> 2. Egy $f \in \mathbb{R}[x]$ polinomnak pontosan akkor van reciproka (multiplikatív inverze) a polinomok között, ha $f$ nem nulla konstans.

(A 2. pont indoklása: ha $fg = 1$, akkor $\deg f + \deg g = 0$, így $\deg f = 0$. Például $x$-nek nincs polinom reciproka: $\frac{1}{x}$ nem polinom.)

### 3.3. Polinomfüggvény és a gyöktényező kiemelhetősége

A formális polinomokhoz természetes módon rendelhetünk függvényeket.

> **3.7 Definíció.** Legyen $f(x) = \sum_{j=0}^n a_jx^j$ és $b$ egy tetszőleges szám. Az $f$ polinom $b$ helyen vett **helyettesítési értéke** az
> $$f^*(b) = a_0 + a_1b + a_2b^2 + \dots + a_nb^n$$
> szám. Az $f$-hez tartozó $f^*$ **polinomfüggvény** az a leképezés, amely minden $b$ számhoz az $f^*(b)$ értéket rendeli.

(A gyakorlatban a csillagot el szoktuk hagyni, és egyszerűen $f(b)$-t írunk.) Könnyen belátható, hogy a formális műveletek összeférnek a behelyettesítéssel: $(f + g)^*(b) = f^*(b) + g^*(b)$ és $(fg)^*(b) = f^*(b)g^*(b)$.

::: kiegeszites
**Kiegészítés: miért kell megkülönböztetni a polinomot és a polinomfüggvényt?** A valós vagy komplex számok felett két különböző polinomhoz mindig különböző polinomfüggvény tartozik (ez a 3.11. Tételből következik). Véges számkörökben azonban ez nem így van: $\mathbb{Z}_2$ felett (ahol csak a $0$ és az $1$ elem van, és $1 + 1 = 0$) az $f(x) = x^2 + x$ polinom nem a nullapolinom, de a hozzá tartozó függvény azonosan nulla, hiszen $f(0) = 0$ és $f(1) = 1 + 1 = 0$. Általában $\mathbb{Z}_p$ felett az $x^p - x$ polinomfüggvény azonosan nulla (ez a kis Fermat-tétel), holott a polinom nem nulla. Ezért definiáljuk a polinomot formálisan, az együtthatóival.
:::

> **3.8 Definíció.** A $b$ szám **gyöke** az $f$ polinomnak, ha $f^*(b) = 0$.

> **3.9 Tétel (a gyöktényező kiemelhetősége).** A $b$ szám pontosan akkor gyöke az $f$ polinomnak, ha létezik olyan $q$ polinom, amelyre
> $$f(x) = (x - b)\,q(x).$$
> Az $x - b$ polinomot a $b$ gyökhöz tartozó **gyöktényezőnek** nevezzük.

*Bizonyítás.* Ha $f(x) = (x - b)q(x)$, akkor $f^*(b) = (b - b)q^*(b) = 0 \cdot q^*(b) = 0$, tehát $b$ gyök.

Megfordítva, legyen $b$ gyöke az $f(x) = \sum_{j=0}^n a_jx^j$ polinomnak, azaz $f^*(b) = \sum_{j=0}^n a_jb^j = 0$. Vizsgáljuk az $f(x) - f^*(b)$ különbséget (ami most $f(x)$-szel egyenlő):
$$f(x) = f(x) - f^*(b) = \sum_{j=0}^n a_jx^j - \sum_{j=0}^n a_jb^j = \sum_{j=1}^n a_j(x^j - b^j).$$
(A $j = 0$ tag kiesik, hiszen $a_0 - a_0 = 0$.) Minden $j \ge 1$-re alkalmazzuk a jól ismert
$$x^j - b^j = (x - b)\left(x^{j-1} + x^{j-2}b + \dots + xb^{j-2} + b^{j-1}\right) = (x - b)\sum_{i=0}^{j-1}x^{j-i-1}b^i$$
azonosságot. A közös $x - b$ tényezőt kiemelve
$$f(x) = (x - b)\sum_{j=1}^n a_j\sum_{i=0}^{j-1}x^{j-i-1}b^i = (x - b)\,q(x), \qquad q(x) = \sum_{j=1}^n\sum_{i=0}^{j-1}a_jb^ix^{j-i-1}. \ \blacksquare$$

**Példa.** Az $f(x) = x^3 - 6x^2 + 11x - 6$ polinomnak gyöke az $1$ ($1 - 6 + 11 - 6 = 0$), így $x - 1$ kiemelhető: $f(x) = (x - 1)(x^2 - 5x + 6) = (x - 1)(x - 2)(x - 3)$. A $q$ hányadost a gyakorlatban nem a bizonyítás képletével, hanem polinomosztással vagy a Horner-elrendezéssel (3.8. pont) számoljuk ki.

### 3.4. A szumma és a produktum jelölés

A hosszabb összegek és szorzatok tömör felírására a $\sum$ (szumma) és a $\prod$ (produktum) jelölést használjuk:
$$\sum_{j=1}^n a_j = a_1 + a_2 + \dots + a_n, \qquad \prod_{j=1}^n a_j = a_1 \cdot a_2 \cdots a_n.$$
Megállapodások:

- Az egytagú összeg és szorzat magával a taggal egyenlő.
- Az **üres összeg** (ha az alsó index nagyobb a felsőnél) értéke definíció szerint $0$.
- Az **üres szorzat** értéke definíció szerint $1$. (Például $0! = 1$, és $a^0 = 1$.)

Ezek a megállapodások nem önkényesek: biztosítják, hogy az olyan szabályok, mint $\sum_{j=1}^{n+1} a_j = \sum_{j=1}^n a_j + a_{n+1}$ és $\prod_{j=1}^{n+1} a_j = \left(\prod_{j=1}^n a_j\right)a_{n+1}$, $n = 0$-ra is érvényesek maradjanak.

### 3.5. A gyökök száma és a polinomok azonossági tétele

A polinomok elméletének egyik legfontosabb kérdése, hogy a fokszám hogyan korlátozza a gyökök számát.

> **3.10 Tétel.** Ha $R$ kommutatív, egységelemes és nullosztómentes gyűrű (úgynevezett **integritási tartomány**; ilyen például $\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$), akkor minden nem nulla $f \in R[x]$ polinomnak legfeljebb annyi gyöke van $R$-ben, mint amennyi a foka.

(A gyűrű fogalmát a 11. fejezetben definiáljuk; addig gondoljunk egyszerűen a felsorolt számkörökre. A „nullosztómentes” azt jelenti, hogy két nem nulla elem szorzata sosem nulla.)

*Bizonyítás.* A polinom $n = \deg f$ foka szerinti teljes indukcióval bizonyítunk.

**Kezdő lépés:** ha $n = 0$, akkor $f(x) = a_0 \ne 0$ nem nulla konstans, aminek nincs gyöke: $0$ gyöke van, ami megegyezik a fokszámmal.

**Indukciós lépés:** tegyük fel, hogy az állítás minden legfeljebb $(n-1)$-edfokú polinomra igaz, és legyen $f$ $n$-edfokú. Ha $f$-nek nincs gyöke $R$-ben, az állítás triviálisan teljesül. Ha van egy $\alpha \in R$ gyöke, akkor a 3.9. Tétel szerint $f(x) = (x - \alpha)g(x)$, ahol $g$ pontosan $(n-1)$-edfokú. Legyen $\beta$ az $f$ tetszőleges gyöke. Ekkor
$$0 = f(\beta) = (\beta - \alpha)g(\beta).$$
Mivel a gyűrű nullosztómentes, ebből $\beta - \alpha = 0$ vagy $g(\beta) = 0$ következik. Vagyis $f$ minden $\alpha$-tól különböző gyöke a $g$ polinomnak is gyöke. Az indukciós feltevés szerint $g$-nek legfeljebb $n - 1$ gyöke van, így $f$ gyökeinek száma legfeljebb $1 + (n - 1) = n$. $\blacksquare$

**Megjegyzés.** Ha a gyűrű nem nullosztómentes, a tétel nem igaz. Tekintsük ellenpéldaként a $\mathbb{Z}_8$ feletti $f(x) = x^2 - 1$ polinomot. Ez másodfokú, de $\mathbb{Z}_8$ elemeit végighelyettesítve négy különböző gyökét találjuk:
$$1^2 = 1, \qquad 3^2 = 9 \equiv 1, \qquad 5^2 = 25 \equiv 1, \qquad 7^2 = 49 \equiv 1 \pmod 8.$$
Ez a nullosztók jelenlétének közvetlen következménye: például $(3 - 1)(3 + 1) = 2 \cdot 4 = 8 \equiv 0 \pmod 8$, holott egyik tényező sem nulla. (Ugyanezt a jelenséget a *Számelmélet Tankönyv* 14. fejezetében, Lagrange fokszámtételénél láttuk.)

A tételből egyenesen következik a polinomok egyértelműségére vonatkozó alapvető állítás:

> **3.11 Tétel (a polinomok azonossági tétele).** Ha két, legfeljebb $n$-edfokú $f, g \in R[x]$ polinom egy $R$ integritási tartomány legalább $n + 1$ különböző helyén ugyanazt az értéket veszi fel, akkor a két polinom azonos, azaz a megfelelő együtthatóik megegyeznek.

*Bizonyítás.* Tekintsük a $h = f - g$ különbségpolinomot, amely legfeljebb $n$-edfokú (vagy nulla). A feltétel szerint van $n + 1$ különböző $c_1, \dots, c_{n+1} \in R$ elem, amelyre $f(c_i) = g(c_i)$, vagyis $h(c_i) = 0$. Tehát $h$-nak legalább $n + 1$ különböző gyöke van. A 3.10. Tétel szerint egy nem nulla polinom gyökeinek száma nem haladhatja meg a fokszámát; mivel itt $n + 1 > n$, $h$ csak a nullapolinom lehet. Így $f = g$. $\blacksquare$

**Következmény.** Végtelen integritási tartomány (például $\mathbb{R}$) felett két polinom pontosan akkor egyenlő, ha a hozzájuk tartozó polinomfüggvények egyenlők. Ezt használjuk ki, amikor polinomazonosságokat „behelyettesítéssel” igazolunk.

### 3.6. Többszörös gyökök és a gyöktényezős alak

> **3.12 Definíció.** Azt mondjuk, hogy a $c \in R$ elem az $f \in R[x]$ polinomnak **legalább $k$-szoros gyöke** ($k \ge 1$), ha az $(x - c)^k$ polinom osztja $f$-et, azaz van olyan $g \in R[x]$, hogy $f(x) = (x - c)^kg(x)$. Ha $(x - c)^k \mid f$, de $(x - c)^{k+1} \nmid f$, akkor $c$ **pontosan $k$-szoros** gyöke $f$-nek; ekkor $k$ a gyök **multiplicitása**.

Például az $f(x) = x^3 - 3x + 2 = (x - 1)^2(x + 2)$ polinomnak az $1$ kétszeres, a $-2$ egyszeres gyöke.

> **3.13 Következmény (gyöktényezős alak).** Ha az $n$-edfokú, nem nulla $f \in R[x]$ polinom összes különböző gyöke $R$-ben $c_1, c_2, \dots, c_m$, és ezek multiplicitása rendre $k_1, k_2, \dots, k_m$, akkor
> $$f(x) = (x - c_1)^{k_1}(x - c_2)^{k_2}\cdots(x - c_m)^{k_m}\,q(x),$$
> ahol $q \in R[x]$ olyan polinom, amelynek már nincs gyöke $R$-ben. A multiplicitások összege legfeljebb a polinom foka: $\sum_{i=1}^m k_i \le n$.

### 3.7. Binomiális együtthatók és a binomiális tétel

> **3.14 Definíció.** Legyenek $n, k$ nemnegatív egészek. Az $\binom{n}{k}$ **binomiális együttható** („$n$ alatt a $k$”):
> $$\binom{n}{k} = \frac{n!}{k!\,(n - k)!}, \quad \text{ha } 0 \le k \le n, \qquad \text{és} \qquad \binom{n}{k} = 0, \quad \text{ha } k > n.$$
> (Megállapodás szerint $0! = 1$.)

Kombinatorikai jelentése: $\binom{n}{k}$ az $n$ elemű halmaz $k$ elemű részhalmazainak száma.

> **3.15 Tétel (binomiális tétel).** Ha $a$ és $b$ egy gyűrű egymással **felcserélhető** elemei ($ab = ba$), akkor minden $n \ge 0$ egészre
> $$(a + b)^n = \sum_{j=0}^n \binom{n}{j}a^{n-j}b^j = \binom{n}{0}a^n + \binom{n}{1}a^{n-1}b + \binom{n}{2}a^{n-2}b^2 + \dots + \binom{n}{n}b^n.$$

A felcserélhetőség feltétele nem formalitás: mátrixokra, ahol $AB \ne BA$ lehet, már $(A + B)^2 = A^2 + AB + BA + B^2$ sem egyezik $A^2 + 2AB + B^2$-tel.

::: kiegeszites
**Kiegészítés: a binomiális tétel bizonyításának vázlata.** Az $(a + b)^n = (a + b)(a + b)\cdots(a + b)$ szorzatot kibontva minden tagot úgy kapunk, hogy mind az $n$ tényezőből kiválasztjuk vagy az $a$-t, vagy a $b$-t. Ha $j$ tényezőből a $b$-t választjuk, a tag (a felcserélhetőség miatt átrendezve) $a^{n-j}b^j$, és ilyen választás annyi van, ahányféleképpen az $n$ tényező közül kiválasztható az a $j$, amelyből $b$-t veszünk: $\binom{n}{j}$. (Indukcióval is igazolható, a $\binom{n}{j} + \binom{n}{j-1} = \binom{n+1}{j}$ Pascal-azonosság felhasználásával.)
:::

### 3.8. Polinomok hatékony kiértékelése: a Horner-elrendezés

A gyakorlati számítások során rendkívül fontos, hogy egy polinom helyettesítési értékét a lehető legkevesebb művelettel számoljuk ki. Tekintsük az
$$f(x) = a_nx^n + a_{n-1}x^{n-1} + \dots + a_1x + a_0$$
polinomot. Ha a helyettesítési értéket közvetlenül a definíció alapján számoljuk ki egy $x = c$ helyen, akkor először elő kell állítanunk a $c^2, c^3, \dots, c^n$ hatványokat — ez önmagában $n - 1$ szorzás —, majd minden $a_ic^i$ taghoz még egy szorzás kell (újabb $n$ szorzás): összesen $2n - 1$ szorzás. (Ha a hatványokat naivan, egyenként számolnánk, az nagyságrendileg $n^2$ szorzás volna.) A szorzások száma azonban pontosan $n$-re csökkenthető a polinom ötletes átzárójelezésével:
$$f(x) = \Big(\dots\big((a_nx + a_{n-1})x + a_{n-2}\big)x + \dots + a_1\Big)x + a_0.$$
Ezt a szerkezetet **Horner-elrendezésnek** (Horner-sémának) nevezzük. A számolás belülről kifelé halad, lépésenként egy szorzással és egy összeadással.

A gyakorlatban egy kétsoros táblázatot töltünk ki: az első sorba a polinom együtthatói kerülnek, a második sor elemeit rekurzívan számoljuk ki ($x = c$):
$$b_{n-1} = a_n, \qquad b_{k-1} = b_k\,c + a_k \quad (k = n-1, \dots, 1), \qquad f(c) = b_0\,c + a_0.$$

**Kidolgozott példa.** Legyen $f(x) = 2x^4 - 3x^3 + x - 5$ és $c = 2$. (Figyelem: az $x^2$ együtthatója $0$, ezt is be kell írni!)

| | $2$ | $-3$ | $0$ | $1$ | $-5$ |
|---|---|---|---|---|---|
| $c = 2$ | $2$ | $2 \cdot 2 - 3 = 1$ | $1 \cdot 2 + 0 = 2$ | $2 \cdot 2 + 1 = 5$ | $5 \cdot 2 - 5 = 5$ |

Tehát $f(2) = 5$. (Ellenőrzés: $2 \cdot 16 - 3 \cdot 8 + 2 - 5 = 32 - 24 - 3 = 5$.)

**A Horner-elrendezés többet is ad.** A második sor első $n$ eleme ($b_{n-1}, \dots, b_0$) éppen az $f(x)$ polinom $(x - c)$-vel való osztásakor keletkező **hányadospolinom** együtthatói, az utolsó elem pedig a **maradék**, amely $f(c)$:
$$f(x) = (x - c)\left(b_{n-1}x^{n-1} + \dots + b_1x + b_0\right) + f(c).$$
A példában: $2x^4 - 3x^3 + x - 5 = (x - 2)(2x^3 + x^2 + 2x + 5) + 5$. (Ez a 3.9. Tétel kiszámítható változata: ha $f(c) = 0$, akkor a hányados éppen a $q$ polinom.)

Ha a módszert ismételten alkalmazzuk a kapott hányadosokra, könnyen meghatározható a gyökök **multiplicitása** is. Például $f(x) = x^3 - 3x + 2$ és $c = 1$:

| | $1$ | $0$ | $-3$ | $2$ |
|---|---|---|---|---|
| $c = 1$ | $1$ | $1$ | $-2$ | $0$ |
| $c = 1$ | $1$ | $2$ | $0$ | |
| $c = 1$ | $1$ | $3$ | | |

Az első sor szerint $f(1) = 0$ és $f(x) = (x - 1)(x^2 + x - 2)$; a második szerint a hányadosnak is gyöke az $1$: $x^2 + x - 2 = (x - 1)(x + 2)$; a harmadik sorban a maradék $3 \ne 0$, így $x + 2$-nek már nem gyöke. Tehát az $1$ pontosan kétszeres gyök, és $f(x) = (x - 1)^2(x + 2)$.

## 4. Komplex számok

Feljegyzéseink szerint az alexandriai Hérón (Kr. u. 1. század), görög matematikus és mérnök volt az első, akinek egy számításában (egy csonka gúla térfogatának meghatározásakor) felbukkant egy negatív szám négyzetgyöke — ő azonban továbblépett rajta. Jóval később Rafael Bombelli volt az, aki először fogalmazta meg a komplex számokkal való számolás (például a szorzás) szabályait, 1572-ben megjelent *L'Algebra* című könyvében — éppen a harmadfokú egyenletek megoldóképlete kényszerítette erre (lásd a 17. fejezetet).

Hérón sok felfedezés és találmány szerzője volt. A geometriában tőle származik a háromszög területének az oldalakból való kiszámítása (Hérón-képlet), és ő írta le az első gőzzel hajtott szerkezetet, az **aiolipüliszt** (gőzgömböt), valamint egy szél hajtotta orgonát is.

### 4.1. A komplex számok bevezetése és alaptulajdonságai

A számkörök bővítése a matematika történetében mindig valamilyen megoldhatatlannak tűnő probléma felmerülésekor történt. Ahogy az $n + 3 = 1$ egyenletnek nincs megoldása a természetes számok körében (ez vezetett a negatív számokhoz), úgy a valós számok körében sem találunk megoldást az $r^2 = -1$ egyenletre, hiszen minden valós szám négyzete nemnegatív. Ezt a hiányosságot egy új „szám”, az $i$ bevezetésével orvosoljuk, amelyre
$$i^2 = -1.$$

> **4.1 Definíció.** **Komplex számnak** nevezzük a $z = a + bi$ alakú kifejezéseket, ahol $a$ és $b$ valós számok. A komplex számok halmazát $\mathbb{C}$-vel jelöljük.

Az $a$ valós szám a $z$ **valós része** ($\operatorname{Re} z = a$), a $b$ valós szám a $z$ **képzetes (imaginárius) része** ($\operatorname{Im} z = b$). **Figyelem!** A képzetes rész maga a $b$ valós szám, és nem a $bi$ kifejezés! Két komplex szám, $a + bi$ és $c + di$ pontosan akkor egyenlő, ha a valós és a képzetes részük is megegyezik: $a = c$ és $b = d$. A valós számokat is komplex számnak tekintjük: $a = a + 0i$. A $bi$ alakú számokat **tisztán képzetes** számoknak nevezzük.

> **4.2 Definíció (műveletek).** A komplex számok körében az összeadást, kivonást és szorzást a szokásos algebrai szabályok szerint végezzük, figyelembe véve, hogy $i^2 = -1$:
>
> - **összeadás:** $(a + bi) + (c + di) = (a + c) + (b + d)i$;
> - **kivonás:** $(a + bi) - (c + di) = (a - c) + (b - d)i$;
> - **szorzás:** $(a + bi)(c + di) = ac + adi + bci + bdi^2 = (ac - bd) + (ad + bc)i$.

Minden $z = a + bi$-nek van (egyetlen) ellentettje, $-z = (-a) + (-b)i$, amelyre $z + (-z) = 0$. **Példák:** $(2 + 3i) + (1 - 5i) = 3 - 2i$; $(2 + 3i)(1 - 5i) = 2 - 10i + 3i - 15i^2 = 17 - 7i$; $i^3 = i^2 \cdot i = -i$, $i^4 = 1$.

**Hogyan osztunk komplex számmal?** Egy $w$ komplex szám $u$ reciprokát a $wu = 1$ egyenlet definiálja; jele $u = \frac{1}{w}$. Az osztás a reciprokkal való szorzás: $\frac{z}{w} = z \cdot \frac{1}{w}$. A reciprok kiszámításához a nevezőben lévő $a + bi$-t érdemes $a - bi$-vel bővíteni:
$$\frac{1}{a + bi} = \frac{a - bi}{(a + bi)(a - bi)} = \frac{a - bi}{a^2 - (bi)^2} = \frac{a - bi}{a^2 + b^2} = \frac{a}{a^2 + b^2} + \frac{-b}{a^2 + b^2}\,i.$$
Ez a kifejezés pontosan akkor értelmes, ha $a + bi \ne 0$, mert ekkor $a$ és $b$ közül legalább az egyik nem nulla, így a nevező $a^2 + b^2 > 0$. Tehát **minden nem nulla komplex számnak van reciproka**, és lehet vele osztani.

**Példa.** $\dfrac{3 + 4i}{1 - 2i} = \dfrac{(3 + 4i)(1 + 2i)}{(1 - 2i)(1 + 2i)} = \dfrac{3 + 6i + 4i + 8i^2}{1 + 4} = \dfrac{-5 + 10i}{5} = -1 + 2i$. (Ellenőrzés: $(-1 + 2i)(1 - 2i) = -1 + 2i + 2i - 4i^2 = 3 + 4i$. ✓)

### 4.2. Konjugált és abszolút érték

A reciprok kiszámításánál használt trükk egy nagyon fontos fogalomhoz vezet.

> **4.3 Definíció.** A $z = a + bi$ komplex szám **konjugáltja** a $\bar{z} = a - bi$ komplex szám. A $z = a + bi$ **abszolút értéke** a $|z| = \sqrt{a^2 + b^2}$ nemnegatív valós szám.

Könnyen ellenőrizhető a rendkívül hasznos összefüggés, amelyet a reciproknál is kihasználtunk:
$$z\bar{z} = (a + bi)(a - bi) = a^2 + b^2 = |z|^2.$$
Így $\frac{1}{z} = \frac{\bar{z}}{|z|^2}$, ha $z \ne 0$.

> **4.4 Tétel (a konjugálás alaptulajdonságai).** Tetszőleges $z, w \in \mathbb{C}$ számokra:
>
> 1. a konjugálás kölcsönösen egyértelmű, és $\bar{\bar{z}} = z$;
> 2. $\bar{z} = z$ pontosan akkor, ha $z$ valós;
> 3. $\overline{z + w} = \bar{z} + \bar{w}$ (a konjugálás összegtartó);
> 4. $\overline{zw} = \bar{z} \cdot \bar{w}$ (a konjugálás szorzattartó).

*Bizonyítás.* 1. és 2. közvetlenül a definícióból adódik ($a - (-b)i = a + bi$; $a + bi = a - bi \iff b = 0$). 3. Legyen $z = a + bi$, $w = c + di$. Ekkor $\overline{z + w} = \overline{(a + c) + (b + d)i} = (a + c) - (b + d)i$, és $\bar{z} + \bar{w} = (a - bi) + (c - di) = (a + c) - (b + d)i$ — a kettő megegyezik. 4. Hasonlóan: $\overline{zw} = \overline{(ac - bd) + (ad + bc)i} = (ac - bd) - (ad + bc)i$, és $\bar{z}\bar{w} = (a - bi)(c - di) = (ac - bd) - (ad + bc)i$. $\blacksquare$

**Következmény: az abszolút érték szorzattartó.** $|zw|^2 = zw\overline{zw} = z\bar{z}\,w\bar{w} = |z|^2|w|^2$, tehát $|zw| = |z|\,|w|$.

A valós számoknál megszoktuk, hogy egy szorzat csak akkor nulla, ha valamelyik tényezője nulla. Ez a kedvező tulajdonság a komplex számok körében is megmarad.

> **4.5 Tétel.** A komplex számok szorzása nullosztómentes: két komplex szám szorzata csak akkor nulla, ha valamelyik tényező nulla.

*Bizonyítás.* Tegyük fel, hogy $zw = 0$, de $z \ne 0$. Mivel $z \ne 0$, van reciproka, $u$ ($uz = 1$). Ezzel megszorozva $w$-t, az asszociativitást felhasználva:
$$w = 1 \cdot w = (uz)w = u(zw) = u \cdot 0 = 0. \ \blacksquare$$

### 4.3. A komplex számok geometriai ábrázolása és a trigonometrikus alak

Ahogy a valós számokat egy egyenes pontjaiként képzeljük el, úgy a komplex számok ábrázolására a **sík** pontjait használhatjuk. A $z = a + bi$ komplex számot a koordináta-rendszer $(a, b)$ pontjával, illetve az origóból ebbe a pontba mutató helyvektorral azonosítjuk. Ezt a síkot **komplex számsíknak** (Gauss-számsíknak) nevezzük. Az $x$-tengelyen a valós számok helyezkednek el (**valós tengely**), az $y$-tengelyen a tisztán képzetes számok (**képzetes tengely**).

Mivel a komplex számok összeadása komponensenként történik, a komplex számok összeadása geometriailag pontosan a megfelelő síkvektorok összeadása (a paralelogramma-szabály szerint).

A $z = a + bi$ szám origótól mért távolsága a Pitagorasz-tétel szerint éppen
$$|z| = r = \sqrt{a^2 + b^2},$$
ezért nevezzük a szám **hosszának** is. A $z \ne 0$ komplex szám helyvektorának a valós tengely pozitív felével bezárt irányított szögét a szám **szögének** (argumentumának) nevezzük, jele $\alpha = \arg z$. Alapértelmezés szerint a szöget a $[0°, 360°)$, radiánban a $[0, 2\pi)$ intervallumból választjuk. A trigonometria alapjai szerint a koordináták kifejezhetők a hossz és a szög segítségével:
$$a = r\cos\alpha, \qquad b = r\sin\alpha.$$

> **4.6 Definíció.** A $z \ne 0$ komplex szám **trigonometrikus alakja**
> $$z = r(\cos\alpha + i\sin\alpha),$$
> ahol $r = |z| > 0$ a szám hossza, $\alpha = \arg z$ pedig a szöge.

**Megjegyzés.** A $z = 0$ szám hossza $0$, de a szöge határozatlan, így a nullának nincs trigonometrikus alakja.

> **4.7 Állítás (a trigonometrikus alak egyértelműsége).** Ha $r, s > 0$, akkor $r(\cos\alpha + i\sin\alpha) = s(\cos\beta + i\sin\beta)$ pontosan akkor teljesül, ha $r = s$, és $\alpha - \beta$ a $360°$ (azaz $2\pi$) egész számú többszöröse.

**Példa.** Írjuk fel a $z = 1 - i$ számot trigonometrikus alakban! A hossza $r = \sqrt{1^2 + (-1)^2} = \sqrt{2}$. A valós része pozitív, a képzetes része negatív, így a pont a negyedik síknegyedben van, és a szöge $\alpha = 315°$ (vagy a sokszor „barátságosabb” $-45°$):
$$1 - i = \sqrt{2}(\cos 315° + i\sin 315°) = \sqrt{2}\big(\cos(-45°) + i\sin(-45°)\big).$$

**Példa.** A $-4$ valós szám hossza $4$, és a negatív valós tengelyen fekszik, így szöge $180°$ (azaz $\pi$):
$$-4 = 4(\cos 180° + i\sin 180°) = 4(\cos\pi + i\sin\pi).$$

**A szög kiszámítása általában.** Ha $a \ne 0$, akkor $\operatorname{tg}\alpha = \frac{b}{a}$, de az $\operatorname{arctg}\frac{b}{a}$ érték csak a $(-90°, 90°)$ intervallumba esik; ha $a < 0$, akkor ehhez még $180°$-ot kell adni. Mindig érdemes ábrát készíteni, és megnézni, melyik síknegyedben van a szám!

### 4.4. Szorzás, hatványozás és a geometriai jelentés

A trigonometrikus alak igazi előnye a szorzás és a hatványozás rendkívüli leegyszerűsödése.

> **4.8 Tétel.** Komplex számok szorzásakor a hosszak összeszorzódnak, a szögek pedig összeadódnak: ha $z = r(\cos\alpha + i\sin\alpha)$ és $w = s(\cos\beta + i\sin\beta)$, akkor
> $$zw = rs\big(\cos(\alpha + \beta) + i\sin(\alpha + \beta)\big).$$

*Bizonyítás.* A szorzatot az algebrai alaknál tanult szabály szerint kifejtve:
$$zw = rs\big[(\cos\alpha\cos\beta - \sin\alpha\sin\beta) + i(\sin\alpha\cos\beta + \cos\alpha\sin\beta)\big].$$
A jól ismert addíciós tételek ($\cos\alpha\cos\beta - \sin\alpha\sin\beta = \cos(\alpha + \beta)$ és $\sin\alpha\cos\beta + \cos\alpha\sin\beta = \sin(\alpha + \beta)$) alkalmazásával azonnal adódik az állítás. $\blacksquare$

Az osztás hasonlóan végezhető: osztáskor a hosszakat elosztjuk, a szögeket kivonjuk egymásból ($w \ne 0$):
$$\frac{z}{w} = \frac{r}{s}\big(\cos(\alpha - \beta) + i\sin(\alpha - \beta)\big).$$

> **4.9 Tétel (forgatva nyújtás).** Ha $w \ne 0$ rögzített komplex szám, akkor az $f(z) = zw$ leképezés a komplex számsík egy **forgatva nyújtása**: a $z$ vektort a $w$ szögével ($\beta$) elforgatja az origó körül, és a $w$ hosszával ($s$) megnyújtja. (A $z \mapsto z + w$ leképezés pedig a $w$ vektorral való eltolásnak felel meg.)

Speciálisan: **az $i$-vel való szorzás $90°$-os elforgatás** az origó körül, hiszen $i = \cos 90° + i\sin 90°$.

> **4.10 Tétel (Moivre-képlet).** Tetszőleges $n \in \mathbb{Z}$ egészre és $z = r(\cos\alpha + i\sin\alpha)$ komplex számra
> $$z^n = r^n\big(\cos(n\alpha) + i\sin(n\alpha)\big).$$
> Hatványozáskor tehát a hosszt a kitevőre emeljük, a szöget pedig megszorozzuk a kitevővel.

(Pozitív $n$-re a 4.8. Tétel ismételt alkalmazásával, indukcióval adódik; $n = 0$-ra mindkét oldal $1$; negatív $n$-re az osztás szabályából, hiszen $z^{-1} = \frac{1}{r}(\cos(-\alpha) + i\sin(-\alpha))$.)

**Kidolgozott példa.** Számítsuk ki $(1 - i)^{1526}$ értékét! Az $1 - i$ trigonometrikus alakja $\sqrt{2}(\cos 315° + i\sin 315°)$. A Moivre-képlet szerint
$$(1 - i)^{1526} = (\sqrt{2})^{1526}\big[\cos(1526 \cdot 315°) + i\sin(1526 \cdot 315°)\big].$$
Itt $(\sqrt{2})^{1526} = 2^{763}$, a szög pedig $1526 \cdot 315° = 480690°$. Keressük meg ennek a főértékét $360°$-os osztással: $480690° = 1335 \cdot 360° + 90°$. Mivel a szög $360°$ egész számú többszörösével való változtatása nem módosítja a trigonometrikus függvények értékét,
$$(1 - i)^{1526} = 2^{763}(\cos 90° + i\sin 90°) = 2^{763}\,i.$$
(Ellenőrzés más úton: $(1 - i)^2 = 1 - 2i + i^2 = -2i$, így $(1 - i)^{1526} = (-2i)^{763} = -2^{763}\,i^{763} = -2^{763}\,i^3 = 2^{763}\,i$, mert $763 = 4 \cdot 190 + 3$ és $i^3 = -i$.)

**Feladat (szögek összege komplex számokkal).** Adott egy $1 \times 8$-as téglalap (magassága $1$, szélessége $8$). A bal alsó sarkából kiindulva behúzzuk a bal oldali $1 \times 3$-as, $1 \times 5$-ös és $1 \times 8$-as résztéglalapok átlóit. Határozzuk meg ezen átlók alsó oldallal bezárt $\alpha$, $\beta$, $\gamma$ szögeinek összegét!

*Megoldás.* Az átlók végpontjainak koordinátáiból felírhatjuk a megfelelő komplex számokat: $z_1 = 3 + i$ (szöge $\alpha$), $z_2 = 5 + i$ (szöge $\beta$), $z_3 = 8 + i$ (szöge $\gamma$). Szorzáskor a szögek összeadódnak, így a keresett szögösszeg a szorzat szöge:
$$\arg(z_1z_2z_3) = \alpha + \beta + \gamma.$$
Számoljuk ki a szorzatot algebrai alakban: $(3 + i)(5 + i) = 15 + 3i + 5i + i^2 = 14 + 8i$, és $(14 + 8i)(8 + i) = 112 + 14i + 64i + 8i^2 = 104 + 78i$. Mivel mindhárom szög kisebb $30°$-nál (hiszen tangensük legfeljebb $\frac{1}{3} < \operatorname{tg} 30° \approx 0{,}577$), összegük kisebb $90°$-nál, így a szorzat szöge maga az összeg (nem kell $360°$-ot levonni):
$$\alpha + \beta + \gamma = \operatorname{arctg}\frac{78}{104} = \operatorname{arctg}\frac{3}{4} \approx 36{,}87°.$$
(Egy klasszikus rokon feladat: $\operatorname{arctg} 1 + \operatorname{arctg}\frac{1}{2} + \operatorname{arctg}\frac{1}{3} = 90°$, mert $(1 + i)(2 + i)(3 + i) = 10i$.)

### 4.5. Gyökvonás komplex számból

A valós számokkal ellentétben, ahol negatív számból nem vonható páros fokú gyök, a komplex számok világában a gyökvonás **mindig elvégezhető**, és többértékű: egy nem nulla komplex számnak pontosan $n$ darab $n$-edik gyöke van.

> **4.11 Tétel (a gyökvonás képlete).** Ha $z = r(\cos\alpha + i\sin\alpha) \ne 0$ és $n \ge 1$ egész, akkor a $z$ szám $n$-edik gyökei (azaz a $w^n = z$ egyenlet megoldásai)
> $$w_k = \sqrt[n]{r}\left(\cos\frac{\alpha + 2k\pi}{n} + i\sin\frac{\alpha + 2k\pi}{n}\right), \quad \text{fokokban:} \quad w_k = \sqrt[n]{r}\left(\cos\frac{\alpha + k \cdot 360°}{n} + i\sin\frac{\alpha + k \cdot 360°}{n}\right),$$
> ahol $k \in \mathbb{Z}$, és $\sqrt[n]{r}$ a pozitív valós $r$ szám (egyértelmű) pozitív valós $n$-edik gyöke.

(Hogy ezek valóban $n$-edik gyökök, a Moivre-képletből látszik: $w_k^n = r(\cos(\alpha + 2k\pi) + i\sin(\alpha + 2k\pi)) = z$. Hogy más $n$-edik gyök nincs: ha $w = s(\cos\beta + i\sin\beta)$ és $w^n = z$, akkor a 4.7. Állítás szerint $s^n = r$ és $n\beta - \alpha$ a $2\pi$ egész többszöröse, ami éppen a fenti alakot adja.)

> **4.12 Tétel (az $n$-edik gyökök száma és elhelyezkedése).** Minden nem nulla komplex számnak pontosan $n$ különböző $n$-edik gyöke van. Ezek a komplex számsíkon egy origó középpontú, $\sqrt[n]{r}$ sugarú körbe írt szabályos $n$-szög csúcsaiban helyezkednek el.

*Bizonyítás.* Ha a képletben két index, $m$ és $k$ különbsége osztható $n$-nel, $m = k + n\ell$, akkor a hozzájuk tartozó szögek különbsége
$$\frac{\alpha + 2m\pi}{n} - \frac{\alpha + 2k\pi}{n} = \frac{2(m - k)\pi}{n} = \ell \cdot 2\pi,$$
tehát a két index ugyanazt a komplex számot adja. Ezért elég a $k = 0, 1, \dots, n - 1$ értékeket vizsgálni. Ha viszont $m - k$ nem osztható $n$-nel, a szögkülönbség nem $2\pi$ többszöröse, így (4.7. Állítás) a gyökök különbözők. Tehát pontosan $n$ gyök van.

Vezessük be az $\varepsilon = \cos\frac{2\pi}{n} + i\sin\frac{2\pi}{n}$ jelölést. Látható, hogy a szomszédos gyökökre $w_{k+1} = w_k \cdot \varepsilon$. A 4.9. Tétel szerint az $\varepsilon$-nal való szorzás éppen $\frac{2\pi}{n}$ szögű elforgatás (ami a szabályos $n$-szög középponti szöge), így a gyökök valóban egy szabályos $n$-szög csúcsait alkotják. $\blacksquare$

**Kidolgozott példa.** Határozzuk meg $\sqrt[4]{-4}$ összes értékét! A $-4$ trigonometrikus alakja $4(\cos 180° + i\sin 180°)$. A képlet szerint
$$w_k = \sqrt[4]{4}\left(\cos\frac{180° + k \cdot 360°}{4} + i\sin\frac{180° + k \cdot 360°}{4}\right) = \sqrt{2}\big(\cos(45° + k \cdot 90°) + i\sin(45° + k \cdot 90°)\big).$$
A $k = 0, 1, 2, 3$ értékeket behelyettesítve:
$$w_0 = \sqrt{2}\left(\tfrac{\sqrt{2}}{2} + i\tfrac{\sqrt{2}}{2}\right) = 1 + i, \qquad w_1 = \sqrt{2}(\cos 135° + i\sin 135°) = -1 + i,$$
$$w_2 = \sqrt{2}(\cos 225° + i\sin 225°) = -1 - i, \qquad w_3 = \sqrt{2}(\cos 315° + i\sin 315°) = 1 - i.$$
Geometriailag ez a négy gyök egy origó középpontú négyzet csúcsait alkotja. Vegyük észre, hogy $w_1 = i \cdot w_0$, hiszen $i(1 + i) = -1 + i$: az $i$-vel való szorzás $90°$-kal forgatja el a csúcsokat. (Ellenőrzés: $(1 + i)^2 = 2i$, és $(2i)^2 = -4$. ✓)

### Kitekintés: az $e^{i\alpha}$ jelölés

A komplex függvénytanban (másod- vagy harmadévben) szerepelni fog, hogy $\alpha$ valós számra
$$e^{i\alpha} \stackrel{\text{def}}{=} \cos\alpha + i\sin\alpha.$$
Ezzel a trigonometrikus alak $z = re^{i\alpha}$ alakban írható, és a 4.8. Tétel egyszerűen az $e^{i\alpha}e^{i\beta} = e^{i(\alpha + \beta)}$ szabály. Speciálisan
$$e^{2\pi i} = \cos 2\pi + i\sin 2\pi = 1, \qquad e^{\pi i} = \cos\pi + i\sin\pi = -1.$$
Eddig nem követtünk el hibát. De vajon hol a hiba a következőben? Minden $\alpha$ valós számra
$$\cos\alpha + i\sin\alpha = e^{i\alpha} = e^{2\pi i \cdot \frac{\alpha}{2\pi}} = \left(e^{2\pi i}\right)^{\frac{\alpha}{2\pi}} = 1^{\frac{\alpha}{2\pi}} = 1.$$

::: kiegeszites
**Kiegészítés: a megoldás.** A hiba a negyedik egyenlőségjelnél van: az $(e^{a})^{b} = e^{ab}$ hatványozási azonosság valós $a, b$-re igaz, komplex kitevőkre azonban nem használható gondolkodás nélkül. A komplex hatványozás ugyanis — a gyökvonáshoz hasonlóan — **többértékű**: a $w^c$ kifejezést $e^{c\log w}$-ként definiálják, ahol $\log w$ a komplex logaritmus, amely csak $2\pi i$ egész többszörösei erejéig határozott (hiszen $e^{2\pi i k} = 1$ minden egész $k$-ra). Az $1^{\frac{\alpha}{2\pi}}$ kifejezés tehát nem egyetlen szám, hanem az $e^{\frac{\alpha}{2\pi}\cdot 2\pi i k} = e^{i\alpha k}$ ($k \in \mathbb{Z}$) számok halmaza, amelyek között ott van az $1$ ($k = 0$) is, és a $\cos\alpha + i\sin\alpha$ is ($k = 1$). Az egyenlőséglánc tehát két különböző „ágat” kevert össze. (Ugyanez a jelenség valós számoknál is fellép: $(-1)^{2 \cdot \frac{1}{2}} = -1$, de $\left((-1)^2\right)^{1/2} = 1$.)
:::

## 5. Komplex egységgyökök és geometriai alkalmazásaik

Az előző fejezetekben láthattuk, milyen szép algebrai tulajdonságai vannak a komplex számoknak, és hogyan függnek össze a polinomokkal. Ebben a fejezetben visszatérünk a geometriához, és megmutatjuk, hogyan használhatjuk a komplex számokat — különösen az egységgyököket — arra, hogy első ránézésre bonyolultnak tűnő geometriai problémákat meglepően egyszerű algebrai lépésekkel bizonyítsunk be.

### Az $n$-edik egységgyökök

A valós számok körében a gyökvonás sokszor fejfájást okoz (negatív számból nem vonhatunk páros fokú gyököt). A komplex számok világában minden sokkal szebb és szimmetrikusabb.

> **5.1 Definíció (komplex egységgyökök).** Az $1$ szám $n$-edik gyökeit **$n$-edik egységgyököknek** nevezzük. Ezek pontosan a $z^n = 1$ egyenlet megoldásai.

Mivel $1 = 1(\cos 0° + i\sin 0°)$, a 4.11. Tétel szerint az $n$-edik egységgyökök
$$\varepsilon_k = \cos\frac{2k\pi}{n} + i\sin\frac{2k\pi}{n}, \qquad k = 0, 1, \dots, n - 1.$$
Pontosan $n$ különböző egységgyök van; geometriailag ezek az egységsugarú körön helyezkednek el, és egy szabályos $n$-szöget alkotnak, amelynek egyik csúcsa az $1$. Vegyük észre, hogy $\varepsilon_k = \varepsilon_1^k$: minden $n$-edik egységgyök az első, $\varepsilon_1$ hatványa.

**Példa: a negyedik egységgyökök** ($n = 4$):
$$\varepsilon_0 = 1, \qquad \varepsilon_1 = \cos\frac{\pi}{2} + i\sin\frac{\pi}{2} = i, \qquad \varepsilon_2 = \cos\pi + i\sin\pi = -1, \qquad \varepsilon_3 = \cos\frac{3\pi}{2} + i\sin\frac{3\pi}{2} = -i.$$

**Példa: a hatodik egységgyökök** ($n = 6$) egy szabályos hatszöget feszítenek ki:
$$\varepsilon_0 = 1, \quad \varepsilon_1 = \tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i, \quad \varepsilon_2 = -\tfrac{1}{2} + \tfrac{\sqrt{3}}{2}i, \quad \varepsilon_3 = -1, \quad \varepsilon_4 = -\tfrac{1}{2} - \tfrac{\sqrt{3}}{2}i, \quad \varepsilon_5 = \tfrac{1}{2} - \tfrac{\sqrt{3}}{2}i.$$

> **5.2 Tétel (gyökvonás egységgyökök segítségével).** Ha a $z \ne 0$ komplex számnak $w_0$ az egyik $n$-edik gyöke, akkor $z$ összes $n$-edik gyökét megkapjuk, ha $w_0$-t végigszorozzuk az $n$-edik egységgyökökkel: $\varepsilon_kw_0$ ($k = 0, 1, \dots, n - 1$).

*Bizonyítás.* $w^n = z \iff w^n = w_0^n \iff \left(\frac{w}{w_0}\right)^n = 1$, ami pontosan azt jelenti, hogy $\frac{w}{w_0}$ egy $n$-edik egységgyök. $\blacksquare$

Például a $-4$ negyedik gyökei (4.5. pont) a $w_0 = 1 + i$ gyök és az $1, i, -1, -i$ egységgyökök szorzatai.

::: kiegeszites
**Kiegészítés: az egységgyökök összege.** Ha $n \ge 2$, akkor az $n$-edik egységgyökök összege $0$:
$$1 + \varepsilon_1 + \varepsilon_1^2 + \dots + \varepsilon_1^{n-1} = \frac{\varepsilon_1^n - 1}{\varepsilon_1 - 1} = 0,$$
hiszen $\varepsilon_1^n = 1$ és $\varepsilon_1 \ne 1$ (mértani sor összegképlete). Geometriailag: a szabályos $n$-szög csúcsaiba mutató vektorok összege a nullvektor (a sokszög súlypontja a kör középpontja). Valós részt véve például $1 + \cos\frac{2\pi}{5} + \cos\frac{4\pi}{5} + \cos\frac{6\pi}{5} + \cos\frac{8\pi}{5} = 0$.
:::

### Geometria a komplex számsíkon

Ahhoz, hogy igazi geometriai feladatokat megoldjunk, két eszközt kell nagyon biztosan használnunk: a távolságot és a forgatást.

**1. Távolság és háromszög-egyenlőtlenség.** Minden $z, w \in \mathbb{C}$ esetén a két pont távolsága a komplex számsíkon $|z - w|$. A jól ismert háromszög-egyenlőtlenség itt is érvényes: $|z + w| \le |z| + |w|$.

**2. Forgatás egy pont körül.** Ha egy vektort az origó körül akarunk elforgatni, egyszerűen megszorozzuk egy olyan komplex számmal, amelynek abszolút értéke $1$, szöge pedig a forgatás szöge. De mi a helyzet, ha egy tetszőleges $w$ pont körül akarjuk a $z$ pontot $+90°$-kal elforgatni? Gondoljunk bele lépésenként:

1. Először toljuk a középpontot az origóba: a vektor most $z - w$.
2. Forgassuk el $90°$-kal! Ez $i$-vel való szorzás: $i(z - w)$.
3. Végül toljuk vissza az egészet a helyére, azaz adjuk hozzá $w$-t.

Az elforgatott pont tehát
$$i(z - w) + w.$$
Általában, $\varphi$ szögű elforgatás a $w$ pont körül: $z \mapsto w + (z - w)(\cos\varphi + i\sin\varphi)$.

### Példa: a négyszöges feladat

Nézzünk egy klasszikus geometriai feladatot, amely tisztán euklideszi módszerekkel (szögszámolgatással, egybevágósággal) elég hosszadalmas és fárasztó lenne. Komplex számokkal alig pár sor!

> **5.3 Feladat (Van Aubel tétele).** Egy tetszőleges négyszög oldalaira kifelé négyzeteket rajzolunk. Kössük össze a szemközti oldalakra rajzolt négyzetek középpontjait. Igazoljuk, hogy a két kapott szakasz merőleges egymásra, és egyenlő hosszú!

*Bizonyítás.* Helyezzük a négyszöget a komplex számsíkra! Jelölje a csúcsokat (pozitív, azaz az óramutató járásával ellentétes körüljárás szerint) $A, B, C, D$, az $AB$, $BC$, $CD$, $DA$ oldalakra kifelé rajzolt négyzetek középpontjait rendre $X, Y, U, V$.

**Az $X$ középpont meghatározása.** Az $AB$ oldalra kifelé (a pozitív körüljárás miatt a négyszögtől jobbra, az $A \to B$ irányból nézve) rajzolt négyzet $X$ középpontjából az $XB$ és $XA$ szakasz egyenlő hosszú és merőleges; a $B$ pontot $X$ körül $+90°$-kal elforgatva éppen az $A$ pontot kapjuk. Az előbb tanult forgatási képlet szerint:
$$A = i(B - X) + X \ \Longrightarrow\ A - iB = X(1 - i) \ \Longrightarrow\ X = \frac{A - Bi}{1 - i}.$$
(Ellenőrzés egy egyszerű esetben: ha $A = 0$ és $B = 1$, a négyszög a valós tengely fölött van, a kifelé rajzolt négyzet alatta, középpontja $\frac{1}{2} - \frac{1}{2}i$; a képlet $\frac{-i}{1 - i} = \frac{-i(1 + i)}{2} = \frac{1 - i}{2}$-t ad. ✓) Teljesen analóg módon a másik három középpont:
$$Y = \frac{B - Ci}{1 - i}, \qquad U = \frac{C - Di}{1 - i}, \qquad V = \frac{D - Ai}{1 - i}.$$

**A két szakasz.** A szóban forgó szakaszok $XU$ és $YV$; ezeket a komplex számsíkon az $U - X$ és $V - Y$ vektorok reprezentálják:
$$U - X = \frac{(C - Di) - (A - Bi)}{1 - i}, \qquad V - Y = \frac{(D - Ai) - (B - Ci)}{1 - i}.$$
Ahhoz, hogy a két szakasz merőleges és egyenlő hosszú, elég megmutatni, hogy az $U - X$ vektor $+90°$-os elforgatottja pontosan a $V - Y$ vektor, vagyis hogy $i(U - X) = V - Y$. Szorozzuk be $U - X$-et $i$-vel:
$$i(U - X) = \frac{iC - Di^2 - iA + Bi^2}{1 - i} = \frac{iC + D - iA - B}{1 - i} = \frac{(D - Ai) - (B - Ci)}{1 - i} = V - Y.$$
Tehát valóban $i(U - X) = V - Y$: a $V - Y$ vektor az $U - X$ vektor $90°$-os elforgatottja, így a két szakasz egyenlő hosszú és merőleges. $\blacksquare$

Két sor algebra, és megoldottunk egy összetett geometriai problémát! A módszer ereje abban rejlik, hogy a forgatás egyetlen szorzás, és az algebrai számolás „magától” elvégzi a geometriai esetszétválasztásokat.

## 6. Az algebra alaptétele

> **6.1 Tétel (az algebra alaptétele).** Minden nem konstans, komplex együtthatós polinomnak van gyöke a komplex számok között.

A bizonyításhoz az analízis eszközeire (például a komplex függvénytanból ismert Liouville-tételre vagy topológiai módszerekre) van szükség; jó azonban tudni, hogy ez a tétel a komplex függvénytan és a magasabb algebra egyik legfontosabb sarokköve. Érdekesség, hogy bár a tétel neve *az algebra alaptétele*, tisztán algebrai módszerekkel nem bizonyítható: minden ismert bizonyítás felhasznál valamilyen analitikus tényt — a „legalgebraibb” bizonyítások is legalább azt, hogy egy páratlan fokú valós együtthatós polinomnak van valós gyöke (ami a Bolzano-tétel következménye), hiszen maguk a valós és komplex számok is határérték-jellegű fogalmakra (a teljességre) épülnek.

::: kiegeszites
**Kiegészítés: egy bizonyítás vázlata a Liouville-tétellel.** A komplex függvénytan Liouville-tétele szerint ha egy függvény az egész komplex síkon differenciálható (komplex értelemben) és korlátos, akkor konstans. Tegyük fel, hogy a nem konstans $p$ polinomnak nincs gyöke. Ekkor $\frac{1}{p}$ az egész síkon differenciálható; mivel $|p(z)| \to \infty$, ha $|z| \to \infty$, az $\frac{1}{p}$ függvény korlátos is. Liouville tétele szerint $\frac{1}{p}$ konstans, tehát $p$ is az — ellentmondás.
:::

A tétel azonnali és talán legfontosabb következménye, hogy a komplex számok teste **algebrailag zárt**. Ha a tételt a gyöktényező kiemelhetőségével (3.9. Tétel) kombináljuk, teljes indukcióval adódik a következő állítás, amelyet a gyakorlatban sokszor szintén az algebra alaptételének neveznek:

> **6.2 Következmény.** Minden $n \ge 1$-edfokú, komplex együtthatós $p(z) = a_nz^n + a_{n-1}z^{n-1} + \dots + a_1z + a_0$ polinom ($a_n \ne 0$) pontosan $n$ darab lineáris tényező szorzatára bontható a komplex számok körében:
> $$p(z) = a_n(z - c_1)(z - c_2)\cdots(z - c_n),$$
> ahol $c_1, \dots, c_n \in \mathbb{C}$ a polinom gyökei (amelyek között egyenlők is lehetnek; ekkor többszörös gyökről beszélünk).

*Bizonyítás (indukcióval).* $n = 1$-re $p(z) = a_1(z - c_1)$ a $c_1 = -\frac{a_0}{a_1}$ gyökkel. Ha $n \ge 2$, a 6.1. Tétel szerint van egy $c_1$ gyök, és $p(z) = (z - c_1)q(z)$, ahol $q$ $(n-1)$-edfokú, főegyütthatója $a_n$; erre alkalmazzuk az indukciós feltevést. $\blacksquare$

Más szóval: egy $n$-edfokú komplex polinomnak — multiplicitással számolva — **pontosan $n$ gyöke** van.

Történeti szempontból is izgalmas a tétel: az első, ma is lényegében elfogadott (bár egy topológiai hiányosságot még tartalmazó) bizonyítását Carl Friedrich Gauss adta meg 1799-ben, doktori disszertációjában. (A hiányt Alexander Ostrowski pótolta 1920-ban; Jean-Robert Argand 1806-os bizonyítása lényegében már teljes volt.)

A komplex számoknak és a polinomok fenti tulajdonságainak számos alkalmazása van a fizikában és a mérnöki tudományokban: váltóáramú áramkörök leírása, rezgések és hullámok vizsgálata, lineáris differenciálegyenletek megoldása, kvantummechanikai számítások, telekommunikáció és jelfeldolgozás.

## A II. rész összefoglalása

- **Polinom:** formális kifejezés, az együtthatói határozzák meg. $\deg(fg) = \deg f + \deg g$ (nullosztómentes együtthatókörben), $\deg(f + g) \le \max$. A polinom és a polinomfüggvény véges számkörök felett különbözhet.
- **Gyöktényező:** $b$ gyök $\iff$ $(x - b) \mid f$. Integritási tartományban egy $n$-edfokú polinomnak legfeljebb $n$ gyöke van; két legfeljebb $n$-edfokú polinom, amely $n + 1$ helyen egyezik, azonos. Nullosztók esetén hamis ($x^2 - 1$ négy gyöke $\mathbb{Z}_8$-ban).
- **Horner-elrendezés:** $n$ szorzással kiszámítja $f(c)$-t, és megadja az $(x - c)$-vel való osztás hányadosát; ismételve a multiplicitást.
- **Komplex számok:** $a + bi$, $i^2 = -1$; konjugált $\bar{z}$, abszolút érték $|z|$, $z\bar{z} = |z|^2$; osztás a konjugálttal bővítve. Nullosztómentes test.
- **Trigonometrikus alak:** $z = r(\cos\alpha + i\sin\alpha)$; szorzáskor a hosszak szorzódnak, a szögek összeadódnak (forgatva nyújtás); **Moivre:** $z^n = r^n(\cos n\alpha + i\sin n\alpha)$. Az $n$-edik gyökök egy szabályos $n$-szöget alkotnak.
- **Egységgyökök:** $\varepsilon_k = \cos\frac{2k\pi}{n} + i\sin\frac{2k\pi}{n}$; az összes $n$-edik gyök $w_0\varepsilon_k$. Forgatás $w$ körül: $z \mapsto w + (z - w)(\cos\varphi + i\sin\varphi)$; ezzel a geometriai feladatok algebraivá válnak (Van Aubel tétele).
- **Az algebra alaptétele:** minden nem konstans komplex polinomnak van komplex gyöke; így minden $n$-edfokú komplex polinom $n$ elsőfokú tényező szorzata.

## Feladatok a II. részhez

1. Számítsuk ki: $(2 + i)(3 - 4i)$, $\frac{5 + 5i}{1 + 2i}$, $|3 - 4i|$, $i^{2026}$.
2. Írjuk fel $-1 + i\sqrt{3}$ trigonometrikus alakját, és számítsuk ki $(-1 + i\sqrt{3})^9$-et.
3. Határozzuk meg $8i$ köbgyökeit algebrai alakban.
4. Számítsuk ki a Horner-elrendezéssel $f(x) = x^4 - 2x^3 + 3x - 4$ értékét az $x = 3$ helyen, és adjuk meg az $(x - 3)$-mal való osztás hányadosát.
5. Hányszoros gyöke a $2$ az $x^4 - 5x^3 + 6x^2 + 4x - 8$ polinomnak? Bontsuk a polinomot gyöktényezőkre.
6. Az ötödik egységgyökök összegéből kiindulva mutassuk meg, hogy $\cos 72° = \frac{\sqrt{5} - 1}{4}$.
7. Adjunk meg egy legalacsonyabb fokú, valós együtthatós polinomot, amelynek gyöke az $1$ és a $2 + i$.
8. Bizonyítsuk be a paralelogramma-azonosságot: $|z + w|^2 + |z - w|^2 = 2\big(|z|^2 + |w|^2\big)$. Mi a geometriai jelentése?
9. Bizonyítsuk be komplex számokkal, hogy $\operatorname{arctg} 1 + \operatorname{arctg} 2 + \operatorname{arctg} 3 = 180°$.
10. Forgassuk el a $3 + 4i$ pontot az $1 + i$ pont körül $+90°$-kal.

### Megoldási útmutatók

1. $10 - 5i$; $\frac{(5 + 5i)(1 - 2i)}{5} = 3 - i$; $5$; $i^{2026} = i^{2} = -1$ ($2026 = 4 \cdot 506 + 2$).
2. $|{-1} + i\sqrt{3}| = 2$, a szög $120°$: $2(\cos 120° + i\sin 120°)$. A kilencedik hatvány $2^9(\cos 1080° + i\sin 1080°) = 512$.
3. $8i = 8(\cos 90° + i\sin 90°)$, a köbgyökök $2(\cos(30° + k \cdot 120°) + i\sin(30° + k \cdot 120°))$: $\sqrt{3} + i$, $-\sqrt{3} + i$, $-2i$.
4. A második sor: $1, 1, 3, 12, 32$. Tehát $f(3) = 32$, a hányados $x^3 + x^2 + 3x + 12$.
5. Ismételt Horner-elrendezéssel: háromszoros gyök; $x^4 - 5x^3 + 6x^2 + 4x - 8 = (x - 2)^3(x + 1)$.
6. A valós részek összege $0$: $1 + 2\cos 72° + 2\cos 144° = 0$. Mivel $\cos 144° = 2\cos^2 72° - 1$, a $c = \cos 72°$ jelöléssel $4c^2 + 2c - 1 = 0$, és $c > 0$ miatt $c = \frac{-1 + \sqrt{5}}{4}$.
7. A $2 + i$ mellett $2 - i$ is gyök kell legyen (valós együtthatók!), így $(x - 1)(x - 2 - i)(x - 2 + i) = (x - 1)(x^2 - 4x + 5) = x^3 - 5x^2 + 9x - 5$.
8. $|z \pm w|^2 = (z \pm w)(\bar{z} \pm \bar{w}) = |z|^2 \pm (z\bar{w} + \bar{z}w) + |w|^2$; összeadva a középső tagok kiesnek. Geometriailag: egy paralelogramma átlóinak négyzetösszege egyenlő az oldalak négyzetösszegével.
9. $(1 + i)(1 + 2i)(1 + 3i) = (-1 + 3i)(1 + 3i) = -10$, aminek szöge $180°$; a három szög mindegyike $0°$ és $90°$ közé esik, így összegük $0°$ és $270°$ közötti, és szöge $180°$ — tehát pontosan $180°$.
10. $i\big((3 + 4i) - (1 + i)\big) + (1 + i) = i(2 + 3i) + 1 + i = -2 + 3i$.

---

# III. RÉSZ: DETERMINÁNSOK ÉS LINEÁRIS ALGEBRA

A harmadik rész a **determinánssal** foglalkozik: azzal a számmal, amelyet minden négyzetes mátrixhoz hozzárendelünk, és amely egyszerre dönti el, hogy egy egyenletrendszer egyértelműen megoldható-e, hogy egy mátrix invertálható-e, és hogy egy lineáris leképezés hányszorosára nagyítja a területet (térfogatot). Előbb a $2 \times 2$-es és $3 \times 3$-as esettel ismerkedünk meg, majd a permutációk segítségével tetszőleges méretre általánosítunk. A rész végén a **rang** fogalmán keresztül teljes választ adunk arra, mikor oldható meg egy lineáris egyenletrendszer.

## 7. Determinánsok (I. rész)

A determinánsokat a matematika számos területén alkalmazzák: az egyenletek elméletében, a mátrixalgebrában, a geometriában és a differenciálegyenletek elméletében. De vajon mikor és hol bukkantak fel először?

### Seki Kówa és az első determináns

A történelemkönyvek szerint a japán matematikus, Seki Kówa (más néven Seki Takakazu) 1683-ban használt először determinánsokat, mégpedig ahhoz, hogy két másodfokú egyenlet közös megoldását megkeresse:
$$a_{11}x^2 + a_{12}x + c_1 = 0, \qquad a_{21}x^2 + a_{22}x + c_2 = 0. \qquad (7.1)$$
A második egyenletet $a_{11}$-gyel szorozva, majd kivonva belőle az első egyenlet $a_{21}$-szeresét, az $x^2$-es tag kiesik:
$$(a_{11}a_{22} - a_{21}a_{12})x + (c_2a_{11} - c_1a_{21}) = 0. \qquad (7.2)$$
Ez az egyenlet már elsőfokú! Az itt $x$ együtthatójaként feltűnő $a_{11}a_{22} - a_{21}a_{12}$ értéket nevezzük ma az
$$\begin{pmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{pmatrix}$$
$2 \times 2$-es mátrix determinánsának. Valóban, (7.2)-ből (ha a determináns nem nulla)
$$x = -\frac{\det\begin{pmatrix} a_{11} & c_1 \\ a_{21} & c_2 \end{pmatrix}}{\det\begin{pmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{pmatrix}}.$$
(7.1)-ből nemcsak az $x^2$-es, hanem a konstans tagot is kiejthetjük: a második egyenletet $c_1$-gyel szorozva és kivonva belőle az első $c_2$-szeresét
$$(c_1a_{21} - c_2a_{11})x^2 + (c_1a_{22} - c_2a_{12})x = 0$$
adódik. Ha $x \ne 0$, oszthatunk vele, és (ha a nevező nem nulla)
$$x = -\frac{\det\begin{pmatrix} c_1 & a_{12} \\ c_2 & a_{22} \end{pmatrix}}{\det\begin{pmatrix} c_1 & a_{11} \\ c_2 & a_{21} \end{pmatrix}}.$$
A két kifejezés egyenlősége tehát szükséges feltétele annak, hogy a két másodfokú egyenletnek legyen (nem nulla) közös gyöke — ez a mai **rezultáns** fogalmának őse.

A determinánsoknak a lineáris egyenletekhez is közük van. Ehhez kapcsolódik az első gyakorló feladatunk:

> **7.1 Feladat.** Legyenek $a_{11}, a_{12}, a_{21}, a_{22}, b_1, b_2$ adott valós vagy komplex számok. Ha az
> $$a_{11}x_1 + a_{12}x_2 = b_1, \qquad a_{21}x_1 + a_{22}x_2 = b_2$$
> egyenletrendszernek egyértelmű megoldása van, írjuk fel a megoldást két determináns hányadosaként!

(A megoldás a 7.4. Tétel, a Cramer-szabály.)

### 7.1. Bevezetés és történet

- A $\det A$ egy **szám**, amelyet minden négyzetes $A$ mátrixhoz hozzárendelünk.
- **Alkalmazás:** egy $n$ egyenletből álló, $n$ ismeretlenes lineáris egyenletrendszernek pontosan akkor van egyértelmű megoldása, ha az együtthatómátrix determinánsa nem nulla.
- **Történet:** a fogalom Gottfried Wilhelm Leibniz munkáiban gyökerezik, a modern elmélet és a „determináns” elnevezés pedig Augustin-Louis Cauchytól (1812) származik.

A determinánst gyakran a mátrixelmélet melléktermékének gondolják, a valóságban azonban a determináns **több mint másfél évszázaddal megelőzte** a mátrix fogalmát! Kezdetben nem volt több, mint egy segédeszköz az egyenletrendszerek kezelésére. Leibniz már az 1670-es évek végétől kezdve kéziratos jegyzeteiben lineáris egyenletrendszerek megoldhatóságát vizsgálta együtthatók szorzatösszegeivel — lényegében determinánsokkal —, és 1693-ban Guillaume de l'Hôpitalnak írt levelében le is írt egy ilyen feltételt; ezek a jegyzetek azonban sokáig kiadatlanok maradtak. Japánban tőle függetlenül, nagyjából ugyanebben az időben Seki is eljutott a fogalomhoz.

Gabriel Cramer svájci matematikus 1750-ben publikálta a ma is ismert módszert az egyenletrendszerek megoldására, a **Cramer-szabályt**. A fordulatot Augustin-Louis Cauchy hozta el a XIX. század elején. Cauchy 1812-ben publikált értekezésében a determinánst leválasztotta az egyenletrendszerekről, és önálló fogalomként vizsgálta.

- Ő adta a fogalomnak a ma is használt nevét, a **determinánst** (a latin *determinare*, „meghatározni” igéből, hiszen meghatározza az egyenletrendszer megoldhatóságát). (Gauss 1801-ben már használta a szót, de más értelemben: a másodfokú formák diszkriminánsára.)
- Ő bizonyította a determinánsok főbb tulajdonságait (linearitás, sorcsere hatása stb.), köztük — Jacques Binet-vel egy időben — a kulcsfontosságú **szorzástételt**: $\det(AB) = \det A \cdot \det B$.

Cauchy átfogó és szigorú tárgyalásával a determináns elnyerte helyét a matematikában, mint a lineáris algebra egyik központi fogalma, amely azt méri, hogyan változik meg a terület vagy térfogat egy lineáris leképezés során.

### 7.2. A $2 \times 2$-es determináns

> **Definíció.** Az $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ mátrix **determinánsa**
> $$\det A = \begin{vmatrix} a & b \\ c & d \end{vmatrix} = ad - bc.$$

(Szemléletesen: a főátló szorzatából kivonjuk a mellékátló szorzatát.) **Példa:**
$$\begin{vmatrix} 5 & 2 \\ 3 & 4 \end{vmatrix} = 5 \cdot 4 - 2 \cdot 3 = 14.$$

> **7.2 Tétel.** Ha $A$ és $B$ két $2 \times 2$-es mátrix, akkor szorzatuk determinánsa a determinánsaik szorzata:
> $$\det(AB) = \det A \cdot \det B.$$

*Bizonyítás.* Legyen $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ és $B = \begin{pmatrix} e & f \\ g & h \end{pmatrix}$.

*A determinánsok szorzata:* $\det A = ad - bc$, $\det B = eh - fg$, így
$$\det A \cdot \det B = (ad - bc)(eh - fg) = adeh - adfg - bceh + bcfg. \qquad (7.4)$$
*A szorzat determinánsa:* először a szorzatot képezzük:
$$AB = \begin{pmatrix} ae + bg & af + bh \\ ce + dg & cf + dh \end{pmatrix},$$
majd a determinánsát:
$$\det(AB) = (ae + bg)(cf + dh) - (af + bh)(ce + dg).$$
Kifejtve: $(ae + bg)(cf + dh) = acef + adeh + bcfg + bdgh$, és $(af + bh)(ce + dg) = acef + adfg + bceh + bdgh$. Különbségük
$$\det(AB) = adeh + bcfg - adfg - bceh. \qquad (7.6)$$
(7.4) és (7.6) összevetéséből $\det(AB) = \det A \cdot \det B$. $\blacksquare$

> **7.3 Tétel (geometriai jelentés).** Egy $2 \times 2$-es mátrix determinánsának abszolút értéke megegyezik a mátrix oszlopvektorai által kifeszített paralelogramma területével.

*Bizonyítás.* Legyen $\mathbf{a} = \begin{pmatrix} a_1 \\ a_2 \end{pmatrix}$ és $\mathbf{b} = \begin{pmatrix} b_1 \\ b_2 \end{pmatrix}$. Belátjuk, hogy az általuk kifeszített paralelogramma $T$ területére
$$T = \left|\det\begin{pmatrix} a_1 & b_1 \\ a_2 & b_2 \end{pmatrix}\right| = |a_1b_2 - a_2b_1|.$$

*A terület geometriai képlete.* Egy paralelogramma területe két szomszédos oldal hosszának és a közbezárt $\theta$ szög szinuszának szorzata: $T = \|\mathbf{a}\| \cdot \|\mathbf{b}\| \cdot \sin\theta$. Ebből, a $\sin^2\theta = 1 - \cos^2\theta$ azonosságot felhasználva,
$$T^2 = \|\mathbf{a}\|^2\|\mathbf{b}\|^2\sin^2\theta = \|\mathbf{a}\|^2\|\mathbf{b}\|^2 - \big(\|\mathbf{a}\|\|\mathbf{b}\|\cos\theta\big)^2.$$

*Kapcsolat a skaláris szorzattal.* A skaláris szorzat definíciója szerint $\mathbf{a} \cdot \mathbf{b} = \|\mathbf{a}\|\|\mathbf{b}\|\cos\theta$, így
$$T^2 = \|\mathbf{a}\|^2\|\mathbf{b}\|^2 - (\mathbf{a} \cdot \mathbf{b})^2.$$
Komponensekkel: $\|\mathbf{a}\|^2 = a_1^2 + a_2^2$, $\|\mathbf{b}\|^2 = b_1^2 + b_2^2$, $\mathbf{a} \cdot \mathbf{b} = a_1b_1 + a_2b_2$. Behelyettesítve és kifejtve:
$$T^2 = (a_1^2 + a_2^2)(b_1^2 + b_2^2) - (a_1b_1 + a_2b_2)^2 = a_1^2b_2^2 + a_2^2b_1^2 - 2a_1a_2b_1b_2 = (a_1b_2 - a_2b_1)^2.$$
(A kifejtésben az $a_1^2b_1^2$ és $a_2^2b_2^2$ tagok kiestek.) Gyököt vonva $T = |a_1b_2 - a_2b_1| = |\det A|$. $\blacksquare$

**Példa.** A $(3, 1)$ és $(1, 2)$ vektorok által kifeszített paralelogramma területe $\left|\begin{smallmatrix} 3 & 1 \\ 1 & 2 \end{smallmatrix}\right| = 6 - 1 = 5$. (A determináns *előjele* is jelent valamit: pozitív, ha az $\mathbf{a}$-ból $\mathbf{b}$-be az óramutató járásával ellentétesen, $180°$-nál kisebb szögben lehet elfordulni — vagyis az irányítást jelzi.)

> **7.4 Tétel (Cramer-szabály $2 \times 2$-es esetben).** Tekintsük az
> $$a_{11}x_1 + a_{12}x_2 = b_1, \qquad a_{21}x_1 + a_{22}x_2 = b_2$$
> egyenletrendszert, és legyen $D = \begin{vmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{vmatrix} = a_{11}a_{22} - a_{12}a_{21}$. Ha $D \ne 0$, akkor az egyenletrendszernek pontosan egy megoldása van:
> $$x_1 = \frac{D_1}{D}, \qquad x_2 = \frac{D_2}{D}, \qquad \text{ahol} \qquad D_1 = \begin{vmatrix} b_1 & a_{12} \\ b_2 & a_{22} \end{vmatrix}, \qquad D_2 = \begin{vmatrix} a_{11} & b_1 \\ a_{21} & b_2 \end{vmatrix}.$$
> ($D_i$-t úgy kapjuk, hogy $D$-ben az $i$-edik oszlopot kicseréljük a jobb oldalra.)

*Bizonyítás.* Az ismeretleneket eliminációval határozzuk meg. *$x_1$ meghatározása:* az első egyenletet $a_{22}$-vel, a másodikat $a_{12}$-vel szorozzuk:
$$a_{11}a_{22}x_1 + a_{12}a_{22}x_2 = b_1a_{22}, \qquad a_{21}a_{12}x_1 + a_{22}a_{12}x_2 = b_2a_{12}.$$
Kivonva a másodikat az elsőből, $x_2$ kiesik: $(a_{11}a_{22} - a_{21}a_{12})x_1 = b_1a_{22} - b_2a_{12}$, azaz $D \cdot x_1 = D_1$. Mivel $D \ne 0$, $x_1 = \frac{D_1}{D}$.

*$x_2$ meghatározása:* az első egyenletet $a_{21}$-gyel, a másodikat $a_{11}$-gyel szorozzuk, és a másodikból kivonjuk az elsőt: $(a_{22}a_{11} - a_{12}a_{21})x_2 = b_2a_{11} - b_1a_{21}$, azaz $D \cdot x_2 = D_2$, így $x_2 = \frac{D_2}{D}$.

Végül behelyettesítéssel ellenőrizhető, hogy ez valóban megoldás; tehát pontosan egy megoldás van. $\blacksquare$

**Példa.** $2x + 3y = 8$, $x - y = -1$. Itt
$$D = \begin{vmatrix} 2 & 3 \\ 1 & -1 \end{vmatrix} = -5, \quad D_1 = \begin{vmatrix} 8 & 3 \\ -1 & -1 \end{vmatrix} = -5, \quad D_2 = \begin{vmatrix} 2 & 8 \\ 1 & -1 \end{vmatrix} = -10,$$
így $x = \frac{-5}{-5} = 1$, $y = \frac{-10}{-5} = 2$.

### 7.3. A $3 \times 3$-as determináns

> **Sarrus-szabály.** Az $A = \begin{pmatrix} a & b & c \\ d & e & f \\ g & h & i \end{pmatrix}$ mátrix determinánsa
> $$\det A = (aei + bfg + cdh) - (ceg + afh + bdi).$$

Megjegyezhető így: írjuk a mátrix mellé az első két oszlopát még egyszer; a három „főátló-irányú” (balról jobbra lefelé haladó) hármas szorzatának összegéből vonjuk ki a három „mellékátló-irányú” hármas szorzatának összegét. **Ez a szabály csak $3 \times 3$-as mátrixokra érvényes!** (Egy $4 \times 4$-es mátrixra hasonló „átlós” szabály nem ad helyes eredményt.)

**Példa.**
$$\begin{vmatrix} 2 & 1 & 3 \\ 0 & -1 & 4 \\ 1 & 2 & 1 \end{vmatrix} = \big(2 \cdot (-1) \cdot 1 + 1 \cdot 4 \cdot 1 + 3 \cdot 0 \cdot 2\big) - \big(3 \cdot (-1) \cdot 1 + 2 \cdot 4 \cdot 2 + 1 \cdot 0 \cdot 1\big) = 2 - 13 = -11.$$

> **Kifejtési tétel (Laplace).** A determináns tetszőleges sora vagy oszlopa szerint kifejthető. Az első sor szerinti kifejtés:
> $$\det A = a\begin{vmatrix} e & f \\ h & i \end{vmatrix} - b\begin{vmatrix} d & f \\ g & i \end{vmatrix} + c\begin{vmatrix} d & e \\ g & h \end{vmatrix}.$$
> Az előjelek a $(-1)^{i+j}$ szabályt követik („sakktábla-minta”):
> $$\begin{pmatrix} + & - & + \\ - & + & - \\ + & - & + \end{pmatrix}.$$

**Példa.** Ugyanezt a determinánst az első oszlop szerint kifejtve (ahol egy $0$ is van, ami csökkenti a munkát):
$$2\begin{vmatrix} -1 & 4 \\ 2 & 1 \end{vmatrix} - 0 \cdot \begin{vmatrix} 1 & 3 \\ 2 & 1 \end{vmatrix} + 1 \cdot \begin{vmatrix} 1 & 3 \\ -1 & 4 \end{vmatrix} = 2(-1 - 8) + (4 + 3) = -18 + 7 = -11.$$

**Geometriai jelentés.** Térben $|\det A|$ a mátrix oszlopvektorai által kifeszített **paralelepipedon térfogata**.

### 7.4. A determinánsok alaptulajdonságai

A $2 \times 2$-es és $3 \times 3$-as determinánsokra könnyű ellenőrizni a következőket (a 9. fejezetben tetszőleges méretre bebizonyítjuk őket):

1. **Transzponálás:** $\det(A^T) = \det A$. (Ezért minden sorokra vonatkozó tulajdonság az oszlopokra is igaz.)
2. **Skalárszoros:** ha egy oszlopot (vagy sort) $\lambda$-val szorzunk, a determináns $\lambda$-szorosára változik.
3. **Sorcsere:** két sor (vagy oszlop) felcserélése a determináns előjelét megváltoztatja.
4. **Azonos sorok:** ha két sor (vagy oszlop) megegyezik, a determináns $0$.
5. **Elemi sorművelet:** ha egy sorhoz hozzáadjuk egy másik sor $\lambda$-szorosát, a determináns nem változik.
6. **Háromszögmátrix:** ha $A$ felső (vagy alsó) háromszögmátrix (a főátló alatt, illetve fölött csupa nulla áll), akkor $\det A$ a főátlóbeli elemek szorzata:
$$\det\begin{pmatrix} a & b & c \\ 0 & e & f \\ 0 & 0 & i \end{pmatrix} = aei.$$

Az $n \times n$-es determináns definíciója $n \ge 4$ esetén kissé bonyolultabb (bár kiszámítására több viszonylag egyszerű módszer is van). Az új definícióhoz előbb a **permutáció** és az **inverziószám** fogalmát kell bevezetnünk.

## 8. Permutációk definíciója és szorzása

> **Definíció.** Az $X = \{1, 2, \dots, n\}$ halmaz önmagára való kölcsönösen egyértelmű (bijektív) leképezéseit **permutációknak** nevezzük. Az $n$ elemű halmaz összes permutációjának halmazát $S_n$-nel jelöljük; elemszáma $|S_n| = n!$.

**Jelölés.** A permutációkat leggyakrabban **kétsoros írásmóddal** adjuk meg: a felső sorba az elemek kerülnek $1$-től $n$-ig, az alsóba a hozzájuk rendelt képek. Például $S_4$-ben
$$\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}$$
azt jelenti, hogy $\pi(1) = 3$, $\pi(2) = 1$, $\pi(3) = 4$, $\pi(4) = 2$.

**Permutációk szorzása (kompozíciója).** Mivel a permutációk függvények, szorzatuk a függvénykompozíció: **jobbról balra** haladva hajtjuk végre a leképezéseket, $(\pi\sigma)(x) = \pi(\sigma(x))$. Ha
$$\pi = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 3 & 1 \end{pmatrix}, \qquad \sigma = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 1 & 3 \end{pmatrix},$$
akkor
$$\pi\sigma = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 3 & 1 \end{pmatrix}\begin{pmatrix} 1 & 2 & 3 \\ 2 & 1 & 3 \end{pmatrix} = \begin{pmatrix} 1 & 2 & 3 \\ 3 & 2 & 1 \end{pmatrix}.$$
(Magyarázat: vegyük például az $1$-et. A jobb oldali $\sigma$ az $1$-et a $2$-be viszi, a bal oldali $\pi$ a $2$-t a $3$-ba. Így a szorzat az $1$-et a $3$-ba viszi.)

> **8.1 Tétel.** A permutációk szorzása **asszociatív**: $(\pi\sigma)\tau = \pi(\sigma\tau)$. Általában azonban **nem kommutatív**: $\pi\sigma \ne \sigma\pi$.

Az asszociativitás a függvénykompozíció asszociativitásából adódik: mindkét oldal az $x$-et $\pi(\sigma(\tau(x)))$-be viszi. A nem kommutativitásra az előbbi példa is jó: $\sigma\pi$ az $1$-et $\sigma(\pi(1)) = \sigma(2) = 1$-be viszi, tehát
$$\sigma\pi = \begin{pmatrix} 1 & 2 & 3 \\ 1 & 3 & 2 \end{pmatrix} \ne \pi\sigma.$$

**Identikus és inverz permutáció.** Az $\mathrm{id}$ identikus permutáció minden elemet helyben hagy (a két sor megegyezik); bármely $\pi$-re $\pi \cdot \mathrm{id} = \mathrm{id} \cdot \pi = \pi$. Minden $\pi$-nek van $\pi^{-1}$ inverze, amelyre $\pi\pi^{-1} = \pi^{-1}\pi = \mathrm{id}$. Kétsoros megadásnál az inverzet úgy kapjuk, hogy a két sort felcseréljük, majd az oszlopokat a felső sor szerint újra növekvő sorrendbe rendezzük. Például
$$\begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}^{-1} = \begin{pmatrix} 3 & 1 & 4 & 2 \\ 1 & 2 & 3 & 4 \end{pmatrix} = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 4 & 1 & 3 \end{pmatrix}.$$

### 8.1. Ciklusok és transzpozíciók (cserék)

**Ciklus.** Azokat a permutációkat, amelyek néhány elemet „körbevisznek”, a többit pedig helyben hagyják, **ciklusoknak** nevezzük. Például az $(1\ 3\ 4)$ ciklus jelentése: $1 \mapsto 3$, $3 \mapsto 4$, $4 \mapsto 1$, a többi elem a helyén marad. A ciklus **hossza** a benne szereplő elemek száma.

> **8.2 Tétel (ciklusfelbontás).** Minden permutáció felbontható közös elem nélküli (diszjunkt) ciklusok szorzatára, és ez a felbontás a tényezők sorrendjétől eltekintve egyértelmű.

A felbontás menete: induljunk el az $1$-től, és kövessük a képeit, amíg vissza nem érünk; ez az első ciklus. Ezután egy még nem szereplő elemtől indulunk, és így tovább. **Példa:**
$$\begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 \\ 3 & 5 & 4 & 1 & 2 & 6 \end{pmatrix} = (1\ 3\ 4)(2\ 5)(6),$$
hiszen $1 \to 3 \to 4 \to 1$, $2 \to 5 \to 2$, $6 \to 6$. Az egy hosszúságú ciklusokat el szoktuk hagyni: $(1\ 3\ 4)(2\ 5)$. (Diszjunkt ciklusok egymással felcserélhetők, ezért a sorrendjük mindegy.)

**Csere (transzpozíció).** A $2$ hosszúságú ciklusokat **cseréknek** (transzpozícióknak) nevezzük: két elemet felcserélnek, a többit helyben hagyják. Bármely permutáció felírható cserék szorzataként (például egy ciklus: $(1\ 2\ 3) = (1\ 3)(1\ 2)$, jobbról balra olvasva), de ez a felírás nem egyértelmű.

### 8.2. Inverziók és a permutáció előjele

**Inverzió.** Azt mondjuk, hogy egy $(i, j)$ számpár **inverzióban áll** a $\pi$ permutációban, ha $i < j$, de $\pi(i) > \pi(j)$. (A kétsoros írásmódban: az alsó sorban a nagyobb szám megelőzi a kisebbet.) Az inverziók számát $I(\pi)$ jelöli.

**Példa.** $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}$. Az alsó sor: $3, 1, 4, 2$. Az inverzióban álló párok (az alsó sor értékeivel): $(3, 1)$, $(3, 2)$, $(4, 2)$. Tehát $I(\pi) = 3$.

**Páros és páratlan permutációk, előjel.** Egy permutáció **páros**, ha inverzióinak száma páros, és **páratlan**, ha páratlan. A permutáció **előjele** (szignuma):
$$\operatorname{sgn}(\pi) = (-1)^{I(\pi)}.$$
A páros permutációk előjele $+1$, a páratlanoké $-1$.

> **8.3 Tétel (szorzástétel).** Bármely két $\pi, \sigma \in S_n$ permutációra
> $$\operatorname{sgn}(\pi\sigma) = \operatorname{sgn}(\pi)\operatorname{sgn}(\sigma).$$

*Bizonyítás.* A permutáció előjele elegáns algebrai alakban is felírható:
$$\operatorname{sgn}(\pi) = \prod_{1 \le i < j \le n}\frac{\pi(j) - \pi(i)}{j - i}.$$
Valóban: ebben a szorzatban minden olyan tényező negatív, amely egy inverziónak felel meg, a többi pozitív. Mivel $\pi$ bijekció, a $\{\pi(i), \pi(j)\}$ párok éppen az összes kételemű részhalmazt futják be, így a számlálóban és a nevezőben minden elempár különbsége pontosan egyszer szerepel (legfeljebb előjelben eltérve). Tehát a szorzat abszolút értéke $1$, előjele pedig pontosan $(-1)^{I(\pi)}$.

Ezt a képletet használva:
$$\operatorname{sgn}(\pi\sigma) = \prod_{i < j}\frac{\pi(\sigma(j)) - \pi(\sigma(i))}{j - i} = \prod_{i < j}\left(\frac{\pi(\sigma(j)) - \pi(\sigma(i))}{\sigma(j) - \sigma(i)} \cdot \frac{\sigma(j) - \sigma(i)}{j - i}\right).$$
A második tényezők szorzata pontosan $\operatorname{sgn}(\sigma)$. Az első tényezők szorzatában az $u = \sigma(i)$, $v = \sigma(j)$ jelöléssel minden $\frac{\pi(v) - \pi(u)}{v - u}$ alakú tört pontosan egyszer szerepel (a $\frac{\pi(v) - \pi(u)}{v - u}$ tört szimmetrikus $u$-ban és $v$-ben, így nem számít, hogy $u < v$ vagy $u > v$), tehát a szorzatuk definíció szerint $\operatorname{sgn}(\pi)$. Így $\operatorname{sgn}(\pi\sigma) = \operatorname{sgn}(\pi)\operatorname{sgn}(\sigma)$. $\blacksquare$

**Fontos permutációk előjele.**

- Az **identikus permutáció** előjele $+1$ (inverziója nincs).
- Az **inverz permutáció** előjele megegyezik az eredetiével: $\operatorname{sgn}(\pi^{-1}) = \operatorname{sgn}(\pi)$, hiszen szorzatuk az identitás, amelynek előjele $+1$.
- A **cserék** (transzpozíciók) páratlan permutációk, előjelük $-1$ (lásd alább).
- Egy **$k$ hosszú ciklus** felírható $k - 1$ csere szorzataként (például $(1\ 2\ 3) = (1\ 3)(1\ 2)$, általában $(a_1\ a_2\ \dots\ a_k) = (a_1\ a_k)\cdots(a_1\ a_3)(a_1\ a_2)$), így előjele $(-1)^{k-1}$. Tehát **a páros hosszú ciklus páratlan permutáció, a páratlan hosszú ciklus pedig páros!**

**Miért páratlan egy csere?** Cseréljük fel az identikus permutációban az $i$-edik és a $j$-edik elemet ($i < j$), és számoljuk össze az inverziókat. Azokkal az elemekkel kapcsolatban, amelyek $i$ előtt vagy $j$ után állnak, nem változik semmi. A változás csak az $i$ és $j$ között álló $k = j - i - 1$ elemet, valamint a felcserélt két elemet érinti:

- a $j$ elem az $i$-edik pozícióba kerül, és megelőzi a köztes $k$ elemet, amelyek mind kisebbek nála: ez $k$ inverzió;
- az $i$ elem a $j$-edik pozícióba kerül, a köztes $k$ elem mögé, amelyek mind nagyobbak nála: ez is $k$ inverzió;
- végül maga a $(j, i)$ pár is inverzióban áll: $1$ inverzió.

Összesen $2k + 1$ inverzió keletkezett, ami páratlan; így a csere előjele $(-1)^{2k+1} = -1$.

**Példa.** A $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}$ permutáció ciklusfelbontása $(1\ 3\ 4\ 2)$ — egy $4$ hosszú ciklus —, így előjele $(-1)^3 = -1$. Ez egyezik az inverziószámból kapott $(-1)^{I(\pi)} = (-1)^3$ értékkel.

::: kiegeszites
**Kiegészítés: a páros és páratlan permutációk száma.** Ha $n \ge 2$, akkor $S_n$-ben ugyanannyi páros permutáció van, mint páratlan, azaz $\frac{n!}{2}$. Valóban, a $\pi \mapsto (1\ 2)\pi$ leképezés kölcsönösen egyértelmű $S_n$-en (önmaga inverze), és a 8.3. Tétel szerint minden páros permutációt páratlanba visz és viszont. Például $S_3$-ban a páros permutációk: $\mathrm{id}$, $(1\ 2\ 3)$, $(1\ 3\ 2)$; a páratlanok: $(1\ 2)$, $(1\ 3)$, $(2\ 3)$.
:::

## 9. A determinánsok alaptulajdonságai (II. rész)

A determináns fogalmát a $2 \times 2$-es és $3 \times 3$-as esetekből kiindulva szeretnénk kiterjeszteni tetszőleges $n \times n$-es mátrixokra úgy, hogy a korábban megismert alaptulajdonságok (a sorokban való linearitás és a sorcserénél bekövetkező előjelváltás) az általános esetben is érvényben maradjanak. Bebizonyítható, hogy a korábbi tulajdonságokat megőrző általánosítás pontosan egyféleképpen tehető meg. Ez az egyértelműség vezet a következő, Leibniztől származó, elsőre talán mesterkéltnek tűnő, de valójában nagyon mély szerkezetű definícióhoz.

> **9.1 Definíció.** Az $n \times n$-es $A = [a_{i,j}]$ mátrix **determinánsa**
> $$\det A = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\, a_{1,\pi(1)}\, a_{2,\pi(2)} \cdots a_{n,\pi(n)}.$$

**Mit jelent ez?** Minden tag egy olyan $n$ tényezős szorzat, amely **minden sorból és minden oszlopból pontosan egy elemet** tartalmaz (az $i$-edik sorból a $\pi(i)$-edik oszlopbelit); ilyen „bástyaelhelyezés” éppen $n!$ van, és mindegyik szorzatot a megfelelő permutáció előjelével látjuk el.

**Ellenőrzés kis méretekre.** $n = 2$-re $S_2 = \{\mathrm{id}, (1\ 2)\}$, így $\det A = a_{11}a_{22} - a_{12}a_{21}$ — a régi definíció. $n = 3$-ra a hat permutáció: az identitás és a két háromciklus, $(1\ 2\ 3)$ és $(1\ 3\ 2)$, páros; a három csere páratlan. A tagok:
$$a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32} - a_{13}a_{22}a_{31} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33},$$
ami pontosan a Sarrus-szabály. Egy $4 \times 4$-es determináns már $24$, egy $10 \times 10$-es $3\,628\,800$ tagú összeg — ezért a definíciót szinte sosem használjuk közvetlen számolásra, hanem a belőle levezetett tulajdonságokat.

### A determináns tulajdonságai

**1. Transzponálás.** A determináns értéke megegyezik a transzponált mátrix determinánsával:
$$\det(A^T) = \det A.$$
Ebből következik, hogy **minden sorokra vonatkozó tulajdonság érvényes az oszlopokra is.**

*Indoklás.* Az $A^T$ mátrix $i$-edik sorának $j$-edik eleme az eredeti $a_{j,i}$ elem, így a definíció szerint
$$\det(A^T) = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\, a_{\pi(1),1}\, a_{\pi(2),2} \cdots a_{\pi(n),n}.$$
Egy tag tényezőit (amelyek számok, tehát szorzásuk kommutatív) átrendezhetjük úgy, hogy az *első* indexek kerüljenek növekvő sorrendbe. Ha $\pi$ az $i$-t $\pi(i)$-be viszi, akkor $\pi^{-1}$ a $\pi(i)$-t viszi $i$-be, így
$$a_{\pi(1),1}\, a_{\pi(2),2} \cdots a_{\pi(n),n} = a_{1,\pi^{-1}(1)}\, a_{2,\pi^{-1}(2)} \cdots a_{n,\pi^{-1}(n)}.$$
Az inverz permutáció előjele megegyezik az eredetiével, így
$$\det(A^T) = \sum_{\pi \in S_n}\operatorname{sgn}(\pi^{-1})\, a_{1,\pi^{-1}(1)} \cdots a_{n,\pi^{-1}(n)}.$$
Amikor $\pi$ befutja $S_n$ összes elemét, $\pi^{-1}$ is pontosan egyszer veszi fel $S_n$ minden elemét (az inverzképzés kölcsönösen egyértelmű). A fenti összeg tehát ugyanazokból a tagokból áll, mint $\det A$ definíciója, legfeljebb más sorrendben. Így $\det(A^T) = \det A$. $\blacksquare$

**2. Sorcsere (váltakozó tulajdonság).** Ha a mátrix két sorát (vagy oszlopát) felcseréljük, a determináns előjele megváltozik.

*Indoklás.* Tegyük fel, hogy $A$ $k$-adik és $\ell$-edik sorát felcserélve kapjuk a $B$ mátrixot: $b_{k,m} = a_{\ell,m}$, $b_{\ell,m} = a_{k,m}$, és $i \notin \{k, \ell\}$-re $b_{i,m} = a_{i,m}$. A definíció szerint
$$\det B = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\, b_{1,\pi(1)} \cdots b_{n,\pi(n)} = \sum_{\pi \in S_n}\operatorname{sgn}(\pi) \cdots a_{\ell,\pi(k)} \cdots a_{k,\pi(\ell)} \cdots.$$
Legyen $\tau = (k\ \ell)$ csere és $\sigma = \pi \circ \tau$. Ekkor $\sigma(\ell) = \pi(k)$ és $\sigma(k) = \pi(\ell)$, a többi helyen $\sigma(i) = \pi(i)$, így minden tag $a_{1,\sigma(1)} \cdots a_{n,\sigma(n)}$ alakú. A szorzástétel szerint $\operatorname{sgn}(\sigma) = \operatorname{sgn}(\pi)\operatorname{sgn}(\tau) = -\operatorname{sgn}(\pi)$. Amikor $\pi$ befutja $S_n$-et, $\sigma = \pi \circ \tau$ is pontosan egyszer befutja (a cserével való jobbról szorzás bijekció). Tehát
$$\det B = \sum_{\sigma \in S_n} -\operatorname{sgn}(\sigma)\, a_{1,\sigma(1)} \cdots a_{n,\sigma(n)} = -\det A.$$
Oszlopcserére ugyanez az 1. pont miatt automatikusan igaz. $\blacksquare$

**3. Két azonos sor.** Ha a mátrixnak két azonos sora (vagy oszlopa) van, a determinánsa nulla.

*Indoklás.* Cseréljük fel a két azonos sort! A kapott mátrix hajszálpontosan megegyezik $A$-val, így determinánsa $\det A$. Másrészt a 2. pont szerint a csere után a determináns $-\det A$. Tehát $\det A = -\det A$, azaz $2\det A = 0$, és mivel valós (vagy komplex) számok felett dolgozunk, $\det A = 0$. $\blacksquare$

**4. Skalárszoros kiemelése (homogenitás).** Ha egy sort (vagy oszlopot) $\lambda$-val szorzunk, a determináns $\lambda$-szorosára változik:
$$\det(\dots, \lambda r_i, \dots) = \lambda\det(\dots, r_i, \dots).$$
(A definíció minden tagjában pontosan egy tényező származik az $i$-edik sorból, így minden tagból kiemelhető a $\lambda$.) **Figyelem:** $\det(\lambda A) = \lambda^n\det A$, hiszen ekkor mind az $n$ sort $\lambda$-val szoroztuk! (Például $\det\left(2\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}\right) = 4 \cdot (-2) = -8$.)

**5. Linearitás egy sorban.** Ha egy sor két vektor összege, a determináns két determináns összegeként bontható fel:
$$\det(\dots, r_i + r_i', \dots) = \det(\dots, r_i, \dots) + \det(\dots, r_i', \dots).$$
(Minden tagban egyetlen tényező jön az $i$-edik sorból, és $a + a'$ alakú; a szorzat kifejtése két tagra bomlik.) **Fontos:** ez csak *egy* sorra igaz; általában $\det(A + B) \ne \det A + \det B$.

**6. Elemi sorművelet.** Ha a mátrix egyik sorának (oszlopának) $\lambda$-szorosát hozzáadjuk egy másik sorhoz (oszlophoz), a determináns **nem változik**:
$$\det(\dots, r_i, \dots, r_j + \lambda r_i, \dots) = \det(\dots, r_i, \dots, r_j, \dots).$$
Ez a legfontosabb tulajdonság a Gauss-elimináció szempontjából!

*Indoklás.* Az 5. pont (a $j$-edik sorra alkalmazva) szerint a módosított mátrix determinánsa két determináns összege: az első maga $\det A$, a második egy olyan mátrixé, amelynek $j$-edik sorában $\lambda r_i$ áll. Ebből a 4. pont szerint $\lambda$ kiemelhető, és egy olyan mátrix marad, amelynek $i$-edik és $j$-edik sora is $r_i$, azaz két sora azonos. A 3. pont szerint ennek determinánsa $0$, így a második tag $\lambda \cdot 0 = 0$, és csak $\det A$ marad. Oszlopokra az 1. pont miatt ugyanígy. $\blacksquare$

**7. Egységmátrix és diagonális mátrix.** $\det E = 1$, és egy diagonális mátrix determinánsa az átlóbeli elemek szorzata. Általánosabban: **egy felső (vagy alsó) háromszögmátrix determinánsa a főátlóbeli elemek szorzata.** (A definíció egyetlen nem nulla tagja az identikus permutációhoz tartozó: ha $\pi \ne \mathrm{id}$, akkor van olyan $i$, amelyre $\pi(i) < i$, és felső háromszögmátrixban $a_{i,\pi(i)} = 0$.)

**8. Szorzástétel.** $\det(AB) = \det A \cdot \det B$. (Később bizonyítjuk.)

**9. Inverz mátrix.** Ha $A$ invertálható, akkor $\det A \ne 0$, és
$$\det(A^{-1}) = \frac{1}{\det A}.$$
*Indoklás.* $AA^{-1} = E$, így a 8. pont szerint $\det A \cdot \det(A^{-1}) = \det E = 1$. Két szám szorzata csak akkor lehet $1$, ha egyik sem nulla; ezért $\det A \ne 0$, és $\det(A^{-1}) = \frac{1}{\det A}$. $\blacksquare$

### Determináns számítása Gauss-eliminációval

Az elemi sorműveletek hatása a determinánsra:

1. egy sor $\lambda$-szorosának hozzáadása egy másik sorhoz: a determináns **nem változik**;
2. két sor felcserélése: a determináns **előjelet vált**;
3. egy sor szorzása $\lambda$-val: a determináns $\lambda$-val szorzódik (ezt kerülni szoktuk).

Ezért a determinánst úgy számoljuk ki leggyorsabban, hogy a mátrixot sorműveletekkel **felső háromszög alakra** hozzuk (a lépések hatását nyomon követve), és összeszorozzuk a főátló elemeit.

**Kidolgozott példa.** Számítsuk ki a
$$B = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 5 & 8 & 11 \\ 3 & 8 & 14 & 21 \\ 4 & 11 & 21 & 32 \end{pmatrix}$$
mátrix determinánsát! *1. szakasz* (az első oszlop kinullázása): $S_2 \to S_2 - 2S_1$, $S_3 \to S_3 - 3S_1$, $S_4 \to S_4 - 4S_1$:
$$\begin{pmatrix} 1 & 2 & 3 & 4 \\ 0 & 1 & 2 & 3 \\ 0 & 2 & 5 & 9 \\ 0 & 3 & 9 & 16 \end{pmatrix}.$$
*2. szakasz* (a második oszlop, a $(2,2)$ pozíciójú $1$-es vezérelemmel): $S_3 \to S_3 - 2S_2$, $S_4 \to S_4 - 3S_2$:
$$\begin{pmatrix} 1 & 2 & 3 & 4 \\ 0 & 1 & 2 & 3 \\ 0 & 0 & 1 & 3 \\ 0 & 0 & 3 & 7 \end{pmatrix}.$$
*3. szakasz:* $S_4 \to S_4 - 3S_3$:
$$U = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 0 & 1 & 2 & 3 \\ 0 & 0 & 1 & 3 \\ 0 & 0 & 0 & -2 \end{pmatrix}.$$
Az $U$ felső háromszögmátrix, így $\det U = 1 \cdot 1 \cdot 1 \cdot (-2) = -2$. Mivel kizárólag olyan sorműveleteket használtunk, amelyek nem változtatják a determinánst (nem volt sorcsere és sorszorzás), $\det B = \det U = -2$.

### 9.1. A determinánsok kifejtési tétele (Laplace-féle kifejtés)

A kifejtési tétel segítségével egy $n \times n$-es determináns kiszámítását $(n-1) \times (n-1)$-es determinánsok kiszámítására vezethetjük vissza. Ehhez két fogalomra van szükség.

**Aldetermináns.** Hagyjuk el az $n \times n$-es $A$ mátrix $i$-edik sorát és $j$-edik oszlopát. A visszamaradó $(n-1) \times (n-1)$-es mátrix determinánsát az $a_{i,j}$ elemhez tartozó **aldeterminánsnak** nevezzük, és $\det(A_{i,j})$-vel jelöljük.

**Előjeles aldetermináns.** Az $a_{i,j}$ elemhez tartozó előjeles aldetermináns (más néven kofaktor):
$$A_{i,j}^* = (-1)^{i+j}\det(A_{i,j}).$$
(Az előjeleket „sakktábla-mintázat” szerint is elképzelhetjük: a bal felső sarokban $+$, mellette és alatta $-$, és így tovább váltakozva.)

> **9.2 Tétel (Laplace-féle kifejtési tétel).** A determináns értéke megkapható úgy, hogy egy tetszőleges sor (vagy oszlop) minden elemét megszorozzuk a hozzá tartozó előjeles aldeterminánssal, és a szorzatokat összeadjuk. Az $i$-edik sor szerinti kifejtés:
> $$\det A = \sum_{j=1}^n a_{i,j}A^*_{i,j} = \sum_{j=1}^n (-1)^{i+j}a_{i,j}\det(A_{i,j}).$$

*Bizonyítás.* **1. lépés (linearitás).** Az $A$ mátrix $i$-edik sorvektora a standard bázisvektorok lineáris kombinációja:
$$(a_{i,1}, a_{i,2}, \dots, a_{i,n}) = a_{i,1}(1, 0, \dots, 0) + a_{i,2}(0, 1, \dots, 0) + \dots + a_{i,n}(0, \dots, 0, 1).$$
Mivel a determináns az $i$-edik sorában additív, és a skalár kiemelhető (5. és 4. tulajdonság), $\det A$ felbontható $n$ determináns összegére:
$$\det A = \sum_{j=1}^n a_{i,j}\det\big(B^{(j)}\big),$$
ahol a $B^{(j)}$ mátrix $i$-edik sora $(0, \dots, 0, 1, 0, \dots, 0)$, az $1$-es a $j$-edik helyen, a többi sor pedig változatlan.

**2. lépés ($\det B^{(j)}$ kiszámítása).** Be kell látnunk, hogy $\det B^{(j)} = (-1)^{i+j}\det(A_{i,j})$. Vigyük a $j$-edik oszlopban lévő $1$-est a mátrix bal felső sarkába úgy, hogy közben csak **szomszédos** sorokat és oszlopokat cserélünk (így a többi elem egymáshoz viszonyított sorrendje nem keveredik össze). Az $i$-edik sort felcseréljük az $(i-1)$-edikkel, majd az azelőttivel, és így tovább, amíg az első helyre nem kerül: ez $i - 1$ szomszédos sorcsere. Ezután a $j$-edik oszlopot toljuk balra egyesével, amíg az első helyre nem ér: $j - 1$ szomszédos oszlopcsere. Összesen $i + j - 2$ cserét végeztünk, és mindegyik előjelet vált; így a determináns $(-1)^{i+j-2} = (-1)^{i+j}$-szeresére változott.

**3. lépés (a visszamaradó mátrix).** A cserék után kapott mátrix bal felső eleme $1$, az első sorának többi eleme $0$, a jobb alsó $(n-1) \times (n-1)$-es blokkban pedig — a szomszédos cserék miatt az eredeti sorrendben — pontosan az $i$-edik sor és $j$-edik oszlop törlésével kapott mátrix áll. Ennek a mátrixnak a determinánsa a definíció szerint $\det(A_{i,j})$: az első sorból csak az $1$-est választó permutációk adnak nem nulla tagot, és ezek pontosan a jobb alsó blokk permutációinak felelnek meg, ugyanazzal az előjellel. (Az első oszlop többi eleme nem számít, hiszen ezeket egy olyan tagban kellene használni, amely az első sorból egy $0$-t választ.)

Így $\det B^{(j)} = (-1)^{i+j}\det(A_{i,j})$, és ezt az 1. lépésbe írva kapjuk a kifejtési tételt. Mivel $\det A = \det(A^T)$, a tétel oszlopok szerinti kifejtésre is érvényes. $\blacksquare$

**Kidolgozott példa.** Számítsuk ki a
$$M = \begin{pmatrix} 1 & 0 & 2 & 0 \\ 3 & 1 & 0 & 1 \\ 0 & 2 & 1 & 0 \\ 1 & 0 & 0 & 1 \end{pmatrix}$$
determinánsát a negyedik oszlop szerint kifejtve! Ebben az oszlopban csak két nem nulla elem van: $a_{2,4} = 1$ (előjel $(-1)^{2+4} = +$) és $a_{4,4} = 1$ (előjel $+$). Így
$$\det M = 1 \cdot \begin{vmatrix} 1 & 0 & 2 \\ 0 & 2 & 1 \\ 1 & 0 & 0 \end{vmatrix} + 1 \cdot \begin{vmatrix} 1 & 0 & 2 \\ 3 & 1 & 0 \\ 0 & 2 & 1 \end{vmatrix} = (-4) + 13 = 9.$$
(Az első aldetermináns a harmadik sora szerint kifejtve $1 \cdot \left|\begin{smallmatrix} 0 & 2 \\ 2 & 1 \end{smallmatrix}\right| = -4$; a második Sarrus-szabállyal $1 + 0 + 12 - 0 - 0 - 0 = 13$.) **Tanulság:** a kifejtést mindig a legtöbb nullát tartalmazó sor vagy oszlop szerint érdemes végezni.

Bár determinánsok kiszámítására nem ez a leggyorsabb módszer (hanem a Gauss-elimináció), kis méretű mátrixok esetén ez is praktikus. Szimbólumokat tartalmazó mátrixokhoz már komolyabb programra van szükség; ilyen például a nyílt forráskódú SageMath, amelyben például a következő kód egy szimbolikus $2 \times 2$-es determinánst számol ki:

```
x, y = var('x, y')
M = Matrix(SR, [[x^2 + 2, y], [x^2, y^2 - y]])
M.det()
```

### 9.2. A determinánsok szorzástétele

A tétel előtt egy megjegyzés: **a Gauss-elimináció sorműveletei egy mátrixszal való balról szorzással írhatók le.** Ha például egy $4 \times 4$-es $A$ mátrix harmadik sorából kivonjuk az első sor négyszeresét, akkor a kapott $B$ mátrixra
$$B = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ -4 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} A = VA,$$
ahol a $V$ mátrix csak magától az elimináció lépésétől függ (az egységmátrixon végrehajtott ugyanazon sorművelet eredménye). Két sor cseréje is ilyen: például a második és harmadik sor cseréje a
$$V = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}$$
mátrixszal való balról szorzásnak felel meg. Ha több elimináció-lépést végzünk, rendre $V_1, V_2, \dots, V_s$-sel szorzunk balról, ami egyetlen $V = V_sV_{s-1}\cdots V_1$ mátrixszal való balról szorzással is felírható. Hasonlóan, **az oszlopműveletek egy alkalmas mátrixszal való jobbról szorzásnak** felelnek meg.

> **9.3 Tétel (a determinánsok szorzástétele).** Ha $A, B \in T^{n \times n}$, akkor
> $$\det(AB) = \det A \cdot \det B.$$

*Bizonyítás.* **1. lépés: $A$ háromszög alakra hozása.** Az $A$ mátrixon végezzünk Gauss-eliminációt **kizárólag** „egy sorhoz egy másik sor többszörösét adjuk” típusú sorműveletekkel, amíg egy $A_1$ felső háromszögmátrixot nem kapunk. (Ez mindig lehetséges: ha egy oszlopban a vezérelem helyén $0$ áll, de alatta van nem nulla elem, akkor annak a sornak a hozzáadásával nem nullát hozhatunk létre a vezérelem helyén; ha alatta is minden $0$, az oszlop már rendben van.) Ezek a lépések nem változtatják a determinánst: $\det A_1 = \det A$. A lépések együtt egy $V$ mátrixszal való balról szorzást jelentenek: $A_1 = VA$.

Ha ugyanezeket a lépéseket a $C = AB$ mátrixon végezzük, egy $C_1 = VC$ mátrixot kapunk, amelyre $\det C_1 = \det C$, és
$$C_1 = VC = VAB = A_1B.$$

**2. lépés: $B$ háromszög alakra hozása oszlopműveletekkel.** A $B$ mátrixon végezzünk hasonló **oszlopműveleteket** (egy oszlophoz egy másik oszlop többszörösét adjuk), amíg egy $B_1$ felső háromszögmátrixot nem kapunk. (Ezúttal az utolsó sorral kezdünk: az utolsó oszlop elemével kinullázzuk az utolsó sor többi elemét, majd az utolsó előtti sorban az utolsó előtti oszlop elemével, és így tovább.) Ekkor $\det B_1 = \det B$, és $B_1 = BR$ alkalmas $R$ mátrixszal. Ugyanezeket a lépéseket $C_1$-en végezve $C_2 = C_1R$, $\det C_2 = \det C_1$, és
$$C_2 = C_1R = A_1BR = A_1B_1.$$

**3. lépés: háromszögmátrixok.** Összefoglalva: $C_2 = A_1B_1$, ahol $\det C_2 = \det C_1 = \det C$, $\det A_1 = \det A$ és $\det B_1 = \det B$. Két felső háromszögmátrix szorzata is felső háromszögmátrix, és a főátlójában a megfelelő átlóelemek szorzatai állnak (hiszen $(A_1B_1)_{ii} = \sum_k (A_1)_{ik}(B_1)_{ki}$, és itt csak a $k = i$ tag nem nulla). Felső háromszögmátrixokra tehát a szorzástétel triviálisan teljesül:
$$\det C_2 = \prod_i (A_1)_{ii}(B_1)_{ii} = \det A_1 \cdot \det B_1.$$
Vagyis $\det C = \det A \cdot \det B$. $\blacksquare$

### Az adjungált mátrix és az inverz

**Ferde kifejtés.** Fejtsük ki $A$ determinánsát az $i$-edik sor szerint, de az $a_{i,j}$ elemeket ne a saját előjeles aldeterminánsukkal, hanem egy **másik**, $k$-adik sor ($k \ne i$) megfelelő előjeles aldeterminánsaival szorozzuk. Ekkor mindig $0$-t kapunk:
$$\sum_{j=1}^n a_{i,j}A^*_{k,j} = 0 \qquad (k \ne i). \qquad (9.1)$$
Ennek oka: a bal oldal pontosan annak a mátrixnak a $k$-adik sora szerinti kifejtése, amelyet $A$-ból úgy kapunk, hogy a $k$-adik sort kicseréljük az $i$-edik sorra (az $A^*_{k,j}$ aldeterminánsok nem függnek a $k$-adik sortól). Ennek a mátrixnak két azonos sora van ($i$ és $k$), így determinánsa nulla.

> **9.4 Definíció.** Az $A \in T^{n \times n}$ mátrix **adjungáltja** az az $n \times n$-es $\operatorname{adj} A$ mátrix, amelynek $i$-edik sorában a $j$-edik elem az $a_{j,i}$ elemhez tartozó előjeles aldetermináns:
> $$(\operatorname{adj} A)_{i,j} = A^*_{j,i} = (-1)^{i+j}\det(A_{j,i}).$$
> **Vigyázat!** Az indexek fel vannak cserélve: az adjungált az előjeles aldeterminánsok mátrixának *transzponáltja*.

> **9.5 Tétel.** Az $A \in T^{n \times n}$ mátrixnak pontosan akkor van inverze, ha $\det A \ne 0$. Ekkor
> $$A^{-1} = \frac{1}{\det A}\operatorname{adj} A.$$

*Bizonyítás.* Ha $\det A = 0$, akkor nincs inverz: ha $B$ inverz volna, akkor $AB = E$ miatt a szorzástétel szerint $\det A \cdot \det B = \det E = 1$, ami $0 \cdot \det B = 1$-et jelentene — lehetetlen.

Legyen most $\det A \ne 0$. Belátjuk, hogy $A \cdot \operatorname{adj} A = \det A \cdot E$. Legyen $C = A \cdot \operatorname{adj} A$; a mátrixszorzás definíciója szerint
$$C_{i,j} = \sum_{k=1}^n a_{i,k}(\operatorname{adj} A)_{k,j} = \sum_{k=1}^n a_{i,k}A^*_{j,k}.$$
- **Főátló ($i = j$):** $C_{i,i} = \sum_k a_{i,k}A^*_{i,k}$ pontosan az $i$-edik sor szerinti Laplace-kifejtés, tehát $C_{i,i} = \det A$.
- **Főátlón kívül ($i \ne j$):** $C_{i,j} = \sum_k a_{i,k}A^*_{j,k}$ ferde kifejtés, tehát (9.1) szerint $C_{i,j} = 0$.

Így $A \cdot \operatorname{adj} A = \det A \cdot E$, és $\det A$-val osztva $A \cdot \frac{1}{\det A}\operatorname{adj} A = E$. Ugyanígy (oszlopok szerinti kifejtéssel) $\frac{1}{\det A}\operatorname{adj} A \cdot A = E$. $\blacksquare$

**Példák.** $2 \times 2$-es mátrixra:
$$\begin{pmatrix} a & b \\ c & d \end{pmatrix}^{-1} = \frac{1}{ad - bc}\begin{pmatrix} d & -b \\ -c & a \end{pmatrix} \qquad (ad - bc \ne 0)$$
— a főátló elemeit felcseréljük, a mellékátlóét ellentettjükre változtatjuk, és osztunk a determinánssal. A 2.6. pont $A = \begin{pmatrix} 2 & -1 & 0 \\ -1 & 2 & -1 \\ 0 & -1 & 2 \end{pmatrix}$ mátrixára $\det A = 4$ és
$$\operatorname{adj} A = \begin{pmatrix} 3 & 2 & 1 \\ 2 & 4 & 2 \\ 1 & 2 & 3 \end{pmatrix}, \qquad A^{-1} = \frac{1}{4}\begin{pmatrix} 3 & 2 & 1 \\ 2 & 4 & 2 \\ 1 & 2 & 3 \end{pmatrix},$$
egyezésben a Gauss-eliminációval kapott eredménnyel. (Például $(\operatorname{adj} A)_{1,1} = \left|\begin{smallmatrix} 2 & -1 \\ -1 & 2 \end{smallmatrix}\right| = 3$, $(\operatorname{adj} A)_{1,2} = -\left|\begin{smallmatrix} -1 & 0 \\ -1 & 2 \end{smallmatrix}\right| = 2$.)

### A Cramer-szabály

> **Tétel (Cramer-szabály).** Tekintsük az
> $$a_{11}x_1 + \dots + a_{1n}x_n = b_1, \quad \dots, \quad a_{n1}x_1 + \dots + a_{nn}x_n = b_n$$
> lineáris egyenletrendszert, azaz $Ax = b$-t, ahol $\det A \ne 0$. Ekkor a rendszernek pontosan egy megoldása van, és
> $$x_i = \frac{\det A_i}{\det A} \qquad (i = 1, 2, \dots, n),$$
> ahol az $A_i$ mátrixot úgy kapjuk $A$-ból, hogy az $i$-edik oszlopát kicseréljük a $b$ vektorra.

*Bizonyítás (determinánstulajdonságokkal).* Mivel $\det A \ne 0$, $A$ invertálható, így $x = A^{-1}b$ az egyetlen megoldás. Jelölje $\mathbf{a}_1, \dots, \mathbf{a}_n$ az $A$ oszlopvektorait. Mivel $x$ megoldás, $b$ az oszlopvektorok lineáris kombinációja:
$$x_1\mathbf{a}_1 + x_2\mathbf{a}_2 + \dots + x_n\mathbf{a}_n = b.$$
Vizsgáljuk $\det A_j$-t, ahol $A_j = [\mathbf{a}_1, \dots, \mathbf{a}_{j-1}, b, \mathbf{a}_{j+1}, \dots, \mathbf{a}_n]$. A $b$ helyére a lineáris kombinációt írva, és a $j$-edik oszlopban a linearitást alkalmazva:
$$\det A_j = \sum_{i=1}^n x_i\det[\mathbf{a}_1, \dots, \mathbf{a}_{j-1}, \mathbf{a}_i, \mathbf{a}_{j+1}, \dots, \mathbf{a}_n].$$
Ha $i \ne j$, a mátrixnak két azonos oszlopa van ($\mathbf{a}_i$ a $j$-edik és a saját $i$-edik helyén), így determinánsa $0$. Ha $i = j$, a mátrix maga $A$. Tehát az összegből csak az $i = j$ tag marad: $\det A_j = x_j\det A$, és $\det A$-val osztva kapjuk az állítást. $\blacksquare$

**Kidolgozott példa.** Oldjuk meg: $x + y + z = 6$, $2x - y + z = 3$, $x + 2y - z = 2$. Itt
$$\det A = \begin{vmatrix} 1 & 1 & 1 \\ 2 & -1 & 1 \\ 1 & 2 & -1 \end{vmatrix} = 7, \qquad \det A_1 = \begin{vmatrix} 6 & 1 & 1 \\ 3 & -1 & 1 \\ 2 & 2 & -1 \end{vmatrix} = 7, \qquad \det A_2 = \begin{vmatrix} 1 & 6 & 1 \\ 2 & 3 & 1 \\ 1 & 2 & -1 \end{vmatrix} = 14, \qquad \det A_3 = \begin{vmatrix} 1 & 1 & 6 \\ 2 & -1 & 3 \\ 1 & 2 & 2 \end{vmatrix} = 21.$$
Tehát $x = 1$, $y = 2$, $z = 3$. (A Cramer-szabály elméleti szempontból nagyon fontos, mert *képletet* ad a megoldásra; gyakorlati számolásra nagyobb rendszereknél azonban a Gauss-elimináció sokkal gyorsabb.)

### A Vandermonde-determináns

A **Vandermonde-determináns** a következő alakú $n \times n$-es mátrix determinánsa, ahol $x_1, \dots, x_n$ tetszőleges skalárok:
$$V(x_1, x_2, \dots, x_n) = \det\begin{pmatrix} 1 & x_1 & x_1^2 & \dots & x_1^{n-1} \\ 1 & x_2 & x_2^2 & \dots & x_2^{n-1} \\ \vdots & \vdots & \vdots & & \vdots \\ 1 & x_n & x_n^2 & \dots & x_n^{n-1} \end{pmatrix}.$$

> **Tétel.** A Vandermonde-determináns értéke a különbségek szorzata:
> $$V(x_1, x_2, \dots, x_n) = \prod_{1 \le i < j \le n}(x_j - x_i).$$

Például $V(1, 2, 3) = (2 - 1)(3 - 1)(3 - 2) = 2$, és $V(1, 2, 3, 4) = 1 \cdot 2 \cdot 3 \cdot 1 \cdot 2 \cdot 1 = 12$. Speciálisan **a Vandermonde-determináns pontosan akkor nem nulla, ha az $x_i$-k páronként különbözők.**

*Bizonyítás (a polinomgyökök módszerével).* $n$-re vonatkozó teljes indukcióval bizonyítunk. Az $n = 2$ eset triviális: $V(x_1, x_2) = \left|\begin{smallmatrix} 1 & x_1 \\ 1 & x_2 \end{smallmatrix}\right| = x_2 - x_1$. Tegyük fel, hogy a tétel $n - 1$-re igaz, és vizsgáljuk az $n$-es esetet.

Ha az $x_1, \dots, x_{n-1}$ számok között van két egyenlő, akkor a mátrixnak két azonos sora van, így mindkét oldal $0$. Tegyük fel tehát, hogy $x_1, \dots, x_{n-1}$ páronként különbözők.

1. **A determináns mint polinom.** Tekintsük $V(x_1, \dots, x_n)$-et az $x_n$ változó polinomjaként, rögzített $x_1, \dots, x_{n-1}$ mellett: $P(x_n) = V(x_1, \dots, x_n)$. Az utolsó sor szerint kifejtve látszik, hogy $P$ legfeljebb $(n-1)$-edfokú polinom.
2. **A gyökök.** Ha $x_n = x_i$ valamely $i \in \{1, \dots, n-1\}$-re, akkor a mátrix $i$-edik és $n$-edik sora megegyezik, így $P(x_i) = 0$. Tehát $x_1, \dots, x_{n-1}$ mind gyökei $P$-nek.
3. **Szorzattá bontás.** Mivel $P$ legfeljebb $(n-1)$-edfokú, és $n - 1$ különböző gyökét ismerjük, a gyöktényezők kiemelésével
$$P(x_n) = C \cdot (x_n - x_1)(x_n - x_2)\cdots(x_n - x_{n-1}),$$
ahol $C$ az $x_n^{n-1}$ tag együtthatója.
4. **A főegyüttható.** A determinánst az utolsó sor szerint kifejtve az $x_n^{n-1}$ tag együtthatója az $(n, n)$ pozícióhoz tartozó előjeles aldetermináns, az előjel $(-1)^{n+n} = +1$. Ez az aldetermináns éppen az $(n-1) \times (n-1)$-es Vandermonde-determináns: $C = V(x_1, \dots, x_{n-1})$, ami az indukciós feltevés szerint $\prod_{1 \le i < j \le n-1}(x_j - x_i)$.
5. **Összefoglalás.** Visszahelyettesítve:
$$V(x_1, \dots, x_n) = \left(\prod_{1 \le i < j \le n-1}(x_j - x_i)\right)\cdot\prod_{i=1}^{n-1}(x_n - x_i) = \prod_{1 \le i < j \le n}(x_j - x_i). \ \blacksquare$$

A Vandermonde-determináns a 16. fejezetben, az interpolációnál kap majd jelentőséget: azt garantálja, hogy $n$ különböző helyen előírt értékekhez pontosan egy legfeljebb $(n-1)$-edfokú polinom tartozik.

## 10. Lineáris algebra

A lineáris függetlenség gyökerei a XIX. század első felében keresendők, amikor a matematikusok a vektorterek és a dimenzió elméletét kezdték kidolgozni. Hermann Grassmann volt az első, aki rendszerezte az $n$ dimenziós terekkel kapcsolatos elképzeléseket, *Ausdehnungslehre* (Kiterjedéstan, 1844) című művében. Bár munkáját hosszú ideig nem értették meg, ő fektette le a vektortér, a lineáris kombináció, a függetlenség és a dimenzió alapjait — a mai precíz terminológia nélkül. Lényegében megfogalmazta, hogy a tér dimenziója a maximális lineárisan független vektorrendszer elemszáma.

### Vektorok lineáris kombinációja és függetlensége

> **10.1 Definíció (lineáris kombináció).** A $v_1, v_2, \dots, v_k$ vektorok **lineáris kombinációjának** nevezzük a
> $$v = c_1v_1 + c_2v_2 + \dots + c_kv_k$$
> alakú vektorokat, ahol $c_1, \dots, c_k$ tetszőleges skalárok (a test elemei).

**Példa.** A $v_1 = (1, 0, 2)$ és $v_2 = (3, 1, 0)$ vektorok lineáris kombinációja ($c_1 = 2$, $c_2 = -1$):
$$v = 2v_1 + (-1)v_2 = (2 - 3,\ 0 - 1,\ 4 - 0) = (-1, -1, 4).$$

> **10.2 Definíció (lineáris függetlenség).** A $v_1, \dots, v_k$ vektorrendszer **lineárisan független**, ha a belőlük képzett lineáris kombináció csak triviális módon adhatja a nullvektort:
> $$c_1v_1 + c_2v_2 + \dots + c_kv_k = 0 \iff c_1 = c_2 = \dots = c_k = 0.$$
> Ellenkező esetben a vektorrendszer **lineárisan függő**.

**Kapcsolat a lineáris egyenletrendszerekkel.** A $c_1v_1 + \dots + c_kv_k = b$ vektoregyenlet egy $Ac = b$ alakú lineáris egyenletrendszer, ahol $A$ oszlopai a $v_i$ vektorok, és $c = (c_1, \dots, c_k)^T$ a keresett skalárok. **A vektorok pontosan akkor lineárisan függetlenek, ha az $Ac = 0$ homogén rendszernek csak a triviális megoldása van.** Ebből és a 2.5. pont tételéből például következik, hogy $T^n$-ben $n$-nél több vektor mindig lineárisan függő (hiszen ekkor a homogén rendszerben kevesebb az egyenlet, mint az ismeretlen).

> **10.3 Tétel.** A $v_1, \dots, v_k$ ($k \ge 2$) vektorrendszer pontosan akkor lineárisan függő, ha legalább az egyik vektora kifejezhető a többi lineáris kombinációjaként.

*Bizonyítás.* Ha $v_j = c_1v_1 + \dots + c_{j-1}v_{j-1} + c_{j+1}v_{j+1} + \dots + c_kv_k$, akkor
$$c_1v_1 + \dots + c_{j-1}v_{j-1} + (-1)v_j + c_{j+1}v_{j+1} + \dots + c_kv_k = 0$$
nem triviális előállítása a nullvektornak ($v_j$ együtthatója $-1 \ne 0$). Fordítva, ha $c_1v_1 + \dots + c_kv_k = 0$ és valamelyik $c_j \ne 0$, akkor $c_j$-vel osztva $v_j$ kifejezhető a többi vektorral. $\blacksquare$

### A rang

> **10.4 Definíció (vektorrendszer rangja).** A $v_1, \dots, v_k$ vektorrendszer **rangja** ($\operatorname{rang}(v_1, \dots, v_k)$) a rendszerből kiválasztható lineárisan független vektorok maximális száma.

**A rang a Gauss-elimináció lépései során nem változik.** Ha a vektorokat egy mátrix soraiként írjuk fel, akkor a Gauss-elimináció lépései — egy vektorhoz egy másik skalárszorosának hozzáadása, egy vektor nem nulla számmal való szorzása, a vektorok sorrendjének cseréje — elemi sorműveletek, és ezek nem változtatják meg, hogy a sorok által „kifeszített” vektorok halmaza (a lineáris kombinációk összessége) mi; így a független vektorok maximális száma sem változik.

**Példa: egy négydimenziós vektorrendszer rangja.** Legyen
$$w_1 = (1, 0, 1, 0), \quad w_2 = (0, 1, 1, 1), \quad w_3 = (1, 1, 2, 1), \quad w_4 = (2, 1, 3, 1).$$
Írjuk a vektorokat egy mátrix soraiba, és végezzünk Gauss-eliminációt! Az első oszlop kinullázása ($S_3 \leftarrow S_3 - S_1$, $S_4 \leftarrow S_4 - 2S_1$), majd a második oszlopé ($S_3 \leftarrow S_3 - S_2$, $S_4 \leftarrow S_4 - S_2$):
$$\begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 1 & 1 \\ 1 & 1 & 2 & 1 \\ 2 & 1 & 3 & 1 \end{pmatrix} \to \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & 1 & 1 & 1 \\ 0 & 1 & 1 & 1 \end{pmatrix} \to \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}.$$
A lépcsős alak két nem nulla sort tartalmaz, ezek nyilván függetlenek: **a vektorrendszer rangja $2$.** (Valóban: $w_3 = w_1 + w_2$ és $w_4 = 2w_1 + w_2$.)

A rang modern fogalmát, mint egy mátrix maximálisan lineárisan független sorainak (vagy oszlopainak) számát, Ferdinand Georg Frobenius vezette be 1879-ben, a lineáris egyenletrendszerek megoldásainak szerkezetét vizsgálva.

> **10.5 Definíció (mátrixrangok).** Legyen $A$ egy $m \times n$-es mátrix.
>
> - **Sorrang:** $\operatorname{rang}_{\text{sor}}(A)$ a sorvektorok rangja.
> - **Oszloprang:** $\operatorname{rang}_{\text{oszlop}}(A)$ az oszlopvektorok rangja.
> - **Determinánsrang:** $\operatorname{rang}_{\det}(A)$ a legnagyobb olyan $k$, amelyre $A$-nak van nem nulla $k \times k$-as aldeterminánsa (azaz $k$ sor és $k$ oszlop kiválasztásával kapott, nem nulla determinánsú négyzetes részmátrixa).

> **10.6 Tétel (rangtétel).** Minden mátrixra a sorrang, az oszloprang és a determinánsrang megegyezik. Ezt a közös értéket nevezzük a mátrix **rangjának**:
> $$\operatorname{rang}_{\text{sor}}(A) = \operatorname{rang}_{\text{oszlop}}(A) = \operatorname{rang}_{\det}(A) = \operatorname{rang}(A).$$

Például a fenti $4 \times 4$-es mátrix rangja $2$: a bal felső $\left|\begin{smallmatrix} 1 & 0 \\ 0 & 1 \end{smallmatrix}\right| = 1 \ne 0$, de minden $3 \times 3$-as aldetermináns $0$, és a négy oszlop közül is csak két független van.

### A lineáris egyenletrendszerek megoldhatósága

Tekintsük az $Ax = b$ egyenletrendszert, és jelölje $[A \mid b]$ a kibővített mátrixot.

> **10.7 Tétel (Kronecker–Capelli-tétel).** A lineáris egyenletrendszer pontosan akkor oldható meg, ha az együtthatómátrix rangja megegyezik a kibővített mátrix rangjával:
> $$\operatorname{rang}(A) = \operatorname{rang}([A \mid b]).$$
> A megoldások száma ($n$ ismeretlen esetén):
>
> 1. ha $\operatorname{rang}(A) \ne \operatorname{rang}([A \mid b])$, nincs megoldás;
> 2. ha $\operatorname{rang}(A) = \operatorname{rang}([A \mid b]) = r$, akkor
>    - $r = n$ esetén pontosan egy megoldás van;
>    - $r < n$ esetén végtelen sok megoldás van ($n - r$ szabad paraméterrel).

A tétel a Gauss-elimináció nyelvén: a tilos sor megjelenése azt jelenti, hogy a kibővített mátrix rangja eggyel nagyobb, mint az együtthatómátrixé ($b$ nem fejezhető ki $A$ oszlopaival); a szabad változók száma pedig $n - r$.

**Példa.** Az $x + 2y + 3z = 1$, $2x + 4y + 6z = 2$, $x + z = 0$ rendszerben $\operatorname{rang}(A) = 2$ (a második sor az első kétszerese), és a kibővített mátrix rangja is $2$. Tehát a rendszer megoldható, és $3 - 2 = 1$ szabad paraméter van: $x = -z$, $y = \frac{1}{2} - z$, $z$ tetszőleges. Ha viszont a második egyenlet jobb oldala $3$ volna, a kibővített mátrix rangja $3$ lenne, és nem volna megoldás.

### A rangtétel bizonyítása

**Az oszloprang nem változik sorműveletek során.** Rendezzük az oszlopvektorokat mátrixba; legyen ez $M$, oszlopai $v_1, \dots, v_k$. Ha például az első sorból kivonjuk a második $\alpha$-szorosát, az új oszlopvektorok
$$v_j' = \begin{pmatrix} a_{1j} - \alpha a_{2j} \\ a_{2j} \\ \vdots \\ a_{mj} \end{pmatrix} \qquad (j = 1, \dots, k).$$
Nyilvánvalóan
$$\lambda_1v_1 + \dots + \lambda_kv_k = 0 \iff \lambda_1v_1' + \dots + \lambda_kv_k' = 0,$$
hiszen az új rendszer első komponense a régi első és második komponensének kombinációja, a többi változatlan (és a lépés visszafordítható). Vagyis az oszlopvektorok közötti lineáris összefüggések nem változnak a sorműveletek során — ez az oszlopvektorok bármely részhalmazára is igaz —, így az oszloprang sem változik. (Sorcserére és sor nem nulla számmal való szorzására ugyanez nyilvánvaló.)

**Az oszloprang oszlopműveletek során sem változik.** Ha az oszlopvektorok helyett a $v_1 - \alpha v_2, v_2, \dots, v_k$ vektorokat vesszük, akkor ezek ugyanazokat a lineáris kombinációkat állítják elő, mint az eredetiek ($v_1 = (v_1 - \alpha v_2) + \alpha v_2$), így a maximális független részrendszer elemszáma ugyanaz.

**Ugyanez igaz a sorrangra** (az előző két állítás a transzponáltra alkalmazva) **és a determinánsrangra.**

::: kiegeszites
**Kiegészítés: a determinánsrang invarianciája.** Tegyük fel, hogy az $i$-edik sor $\lambda$-szorosát hozzáadjuk a $j$-edik sorhoz. Az új mátrix egy tetszőleges $k \times k$-as aldeterminánsa vagy (a) nem tartalmazza a $j$-edik sort — ekkor változatlan; vagy (b) a $j$-edik és az $i$-edik sort is tartalmazza — ekkor a 6. determinánstulajdonság szerint változatlan; vagy (c) a $j$-edik sort tartalmazza, de az $i$-ediket nem — ekkor a linearitás szerint egyenlő a régi aldetermináns és $\lambda$-szor egy olyan $k \times k$-as determináns összegével, amelyet a régi mátrix sorainak kiválasztásával kapunk (előjeltől eltekintve egy régi aldetermináns). Ha tehát a régi mátrix minden $k \times k$-as aldeterminánsa $0$ volt, akkor az újé is. Mivel a lépés visszafordítható (a $-\lambda$-szoros hozzáadásával), a determinánsrang nem változik. Sorcsere és nem nulla számmal való szorzás az aldeterminánsokat legfeljebb előjelben vagy nem nulla szorzóban változtatja meg; oszlopműveletekre pedig a transzponálással érvelhetünk.
:::

**Normálalak.** A Gauss-elimináció lépéseivel — sor- és oszlopműveleteket (sor- és oszlopcserét is) megengedve — minden mátrix a következő alakra hozható:
$$\begin{pmatrix} E_r & 0 \\ 0 & 0 \end{pmatrix},$$
ahol a bal felső sarokban egy $r \times r$-es egységmátrix áll, máshol csupa nulla. (A sorműveletekkel lépcsős alakra hozunk, majd a vezéregyesek segítségével oszlopműveletekkel kinullázzuk a soraik többi elemét, végül oszlopcserékkel a vezéregyeseket a főátlóba rendezzük.) Ennek a mátrixnak a sorrangja, oszloprangja és determinánsrangja is nyilvánvalóan $r$ — a benne lévő egyesek száma. Mivel egyik rang sem változott a lépések során, az eredeti mátrix sor-, oszlop- és determinánsrangja is megegyezik. $\blacksquare$

## A III. rész összefoglalása

- **$2 \times 2$:** $ad - bc$; $|\det|$ = a két oszlopvektor által kifeszített paralelogramma területe. **$3 \times 3$:** Sarrus-szabály (csak itt!), kifejtés sor/oszlop szerint; $|\det|$ = paralelepipedon térfogata.
- **Permutációk:** $S_n$, $|S_n| = n!$; szorzás = kompozíció (jobbról balra); asszociatív, nem kommutatív. Ciklusfelbontás; csere = transzpozíció. **Előjel:** $\operatorname{sgn}\pi = (-1)^{I(\pi)}$, multiplikatív; csere: $-1$; $k$ hosszú ciklus: $(-1)^{k-1}$.
- **Determináns (Leibniz):** $\det A = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\prod_i a_{i,\pi(i)}$. Tulajdonságok: $\det A^T = \det A$; sorcsere $\Rightarrow$ előjelváltás; két azonos sor $\Rightarrow 0$; soronként lineáris; sor többszörösének hozzáadása nem változtat; háromszögmátrixé az átló szorzata; $\det(\lambda A) = \lambda^n\det A$.
- **Számolás:** Gauss-eliminációval háromszög alakra; vagy Laplace-kifejtéssel a sok nullát tartalmazó sor/oszlop szerint.
- **Szorzástétel:** $\det(AB) = \det A\det B$. **Inverz:** létezik $\iff \det A \ne 0$; $A^{-1} = \frac{1}{\det A}\operatorname{adj}A$ (ferde kifejtés!). **Cramer:** $x_i = \frac{\det A_i}{\det A}$. **Vandermonde:** $\prod_{i<j}(x_j - x_i)$.
- **Rang:** sorrang = oszloprang = determinánsrang (normálalak). **Kronecker–Capelli:** $Ax = b$ megoldható $\iff \operatorname{rang} A = \operatorname{rang}[A \mid b]$; a szabad paraméterek száma $n - \operatorname{rang} A$.

## Feladatok a III. részhez

1. Számítsuk ki: $\begin{vmatrix} 3 & -2 \\ 4 & 5 \end{vmatrix}$ és $\begin{vmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 10 \end{vmatrix}$.
2. Mekkora az $(1, 1)$, $(4, 2)$, $(2, 5)$ csúcsú háromszög területe?
3. Legyen $\alpha = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 2 & 4 & 1 & 5 & 3 \end{pmatrix}$ és $\sigma = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 3 & 1 & 2 & 5 & 4 \end{pmatrix}$. Számítsuk ki $\alpha\sigma$-t, írjuk fel mindhárom permutáció ciklusfelbontását, és ellenőrizzük a szorzástételt.
4. Hány inverziója van az $\begin{pmatrix} 1 & 2 & \dots & n \\ n & n-1 & \dots & 1 \end{pmatrix}$ permutációnak? Mikor páros?
5. Számítsuk ki Gauss-eliminációval: $\begin{vmatrix} 2 & 1 & 0 & 1 \\ 1 & 3 & 1 & 0 \\ 0 & 1 & 4 & 1 \\ 1 & 0 & 1 & 5 \end{vmatrix}$.
6. Számítsuk ki az $\begin{pmatrix} 2 & 1 \\ 5 & 3 \end{pmatrix}$ mátrix inverzét az adjungált segítségével.
7. Bizonyítsuk be, hogy egy egész elemű négyzetes mátrix inverze pontosan akkor egész elemű, ha a determinánsa $\pm 1$.
8. A $\lambda$ paraméter függvényében határozzuk meg az $\begin{pmatrix} 1 & 1 & 1 \\ 1 & \lambda & 1 \\ 1 & 1 & \lambda \end{pmatrix}$ mátrix rangját.
9. Számítsuk ki a $V(-1, 1, 2)$ Vandermonde-determinánst a definíció szerint és a képlettel is.
10. Legyen $A$ $n \times n$-es, $\det A = 3$. Mennyi $\det(2A)$, $\det(A^{-1})$, $\det(A^TA)$ és $\det(A^5)$?

### Megoldási útmutatók

1. $15 + 8 = 23$; Sarrus-szabállyal $(50 + 84 + 96) - (105 + 48 + 80) = 230 - 233 = -3$.
2. Két oldalvektor: $(3, 1)$ és $(1, 4)$; a paralelogramma területe $\left|\begin{smallmatrix} 3 & 1 \\ 1 & 4 \end{smallmatrix}\right| = 11$, a háromszögé ennek fele, $5{,}5$.
3. $\alpha\sigma = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 1 & 2 & 4 & 3 & 5 \end{pmatrix} = (3\ 4)$. $\alpha = (1\ 2\ 4\ 5\ 3)$ (páros, $4$ inverzió), $\sigma = (1\ 3\ 2)(4\ 5)$ (páratlan, $3$ inverzió), $\alpha\sigma$ páratlan ($1$ inverzió): $(+1)(-1) = -1$. ✓
4. Minden pár inverzióban áll: $\binom{n}{2} = \frac{n(n-1)}{2}$. Páros, ha $n \equiv 0$ vagy $1 \pmod 4$.
5. Az eredmény $72$. (Például az első két sort felcserélve — előjelváltás! — és az első oszlopot kinullázva, majd továbbhaladva felső háromszög alakra jutunk.)
6. $\det = 1$, így az inverz $\begin{pmatrix} 3 & -1 \\ -5 & 2 \end{pmatrix}$.
7. Ha $A$ és $A^{-1}$ is egész elemű, akkor $\det A$ és $\det A^{-1}$ egész számok, szorzatuk $1$, tehát $\det A = \pm 1$. Fordítva, ha $\det A = \pm 1$, akkor $A^{-1} = \pm\operatorname{adj}A$, és az adjungált elemei egész elemű aldeterminánsok.
8. $\det = (\lambda - 1)^2$. Ha $\lambda \ne 1$, a rang $3$; ha $\lambda = 1$, minden sor $(1, 1, 1)$, a rang $1$.
9. $\begin{vmatrix} 1 & -1 & 1 \\ 1 & 1 & 1 \\ 1 & 2 & 4 \end{vmatrix} = 6$, és $(1 - (-1))(2 - (-1))(2 - 1) = 2 \cdot 3 \cdot 1 = 6$.
10. $2^n \cdot 3$; $\frac{1}{3}$; $9$; $243$.

---

# IV. RÉSZ: ALGEBRAI STRUKTÚRÁK

Az eddigiekben sokféle „számolható” objektummal találkoztunk: egész számokkal, maradékosztályokkal, polinomokkal, mátrixokkal, permutációkkal, komplex számokkal. Mindegyiken volt valamilyen összeadás és/vagy szorzás, és ezek hol ugyanazoknak a szabályoknak engedelmeskedtek, hol nem (a mátrixszorzás például nem kommutatív, $\mathbb{Z}_8$-ban vannak nullosztók). A negyedik rész ezeket a közös vonásokat **absztrakt fogalmakká** formálja: csoport, gyűrű, test. Ennek a szemléletnek az ereje, hogy egy tételt egyszer kell bebizonyítani, és utána minden olyan struktúrában érvényes, amely kielégíti a feltételeket. A rész végén az euklideszi gyűrűkben a számelmélet alaptételét is általános formában igazoljuk.

## 11. Csoportok, gyűrűk, testek

### Történeti áttekintés

1. A modern algebra alapstruktúrái — a csoportok, gyűrűk és testek — a XIX. században születtek meg, bár hasonló ötleteket már korábban is használtak.
2. A legelső struktúra, a **csoport** elmélete a magasabb fokú algebrai egyenletek megoldhatóságának rejtélyéből nőtt ki.
3. Évariste Galois francia matematikus 1830 körül jött rá, hogy egy egyenlet gyökjelekkel való megoldhatósága a gyökök közötti felcserélések (szimmetriák) **csoportjától** függ.
4. A **testek** (például a racionális, valós, komplex számok) fogalma a számelméletben gyökerezik: a cél a számolási szabályok általánosítása volt.
5. A test fogalmát (*Körper*) Richard Dedekind vezette be 1871-ben — még a komplex számok olyan részhalmazaiként, amelyek zártak a négy alapműveletre —; az absztrakt, axiomatikus definíciót Heinrich Weber adta meg 1893-ban.
6. A **gyűrűk** a harmadik típusú struktúrák, amelyek a testekhez hasonlóan két műveletet (összeadást és szorzást) használnak, de a szorzásra nézve nem feltétlenül van minden elemnek inverze. Tanulmányozásuk az algebrai számelméletből ered: Dedekind 1871-ben definiálta egy számtest egészeinek gyűrűjét, és bevezette az **ideál** fogalmát, amely a gyűrűelmélet alapja lett (a „gyűrű”, *Zahlring* elnevezés David Hilberttől származik, 1897).
7. A XX. század elején Emmy Noether tette teljessé a gyűrűelmélet absztrakcióját: általános axiómákból, minden konkrét példától függetlenül építette fel.
8. Ez az absztrakt algebrai „forradalom” tette lehetővé, hogy a matematikusok egyszerre vizsgálhassák az összes hasonló tulajdonságú rendszert.
9. Ma ezek a struktúrák adják a lineáris algebra (testek mint skalárok) és a modern kódelmélet és kriptográfia (véges testek) alapját.

### Gyengébb struktúrák: grupoid, félcsoport, monoid

A XX. században, különösen Emmy Noether munkája nyomán, a matematikusok a csoportnál gyengébb algebrai szabályrendszereket is vizsgálni kezdték. Ez segít megérteni, melyik szabály (axióma) pontosan milyen tulajdonságért felelős. Bár a következő fogalmak (grupoid, félcsoport, monoid) nem első éves vizsgaanyagok, érdemes ismerni őket, mert algebrai cikkekben gyakran találkozunk velük.

Ha adott egy $G$ halmaz és rajta egy $\oplus$ kétváltozós művelet (azaz minden $a, b \in G$ párhoz egy $a \oplus b \in G$ elem), akkor a $\langle G, \oplus\rangle$ struktúrát **grupoidnak** nevezzük.

**Példa.** $\langle \mathbb{Z}, \oplus\rangle$, ahol
$$a \oplus b = ab + a + b$$
minden $a, b \in \mathbb{Z}$-re (itt $+$ és $\cdot$ a szokásos összeadás és szorzás).

*Asszociatív-e a művelet,* azaz $a \oplus (b \oplus c) = (a \oplus b) \oplus c$ minden $a, b, c$-re? Számoljunk:
$$a \oplus (b \oplus c) = a \oplus (bc + b + c) = a(bc + b + c) + a + (bc + b + c) = abc + ab + ac + bc + a + b + c,$$
$$(a \oplus b) \oplus c = (ab + a + b) \oplus c = (ab + a + b)c + (ab + a + b) + c = abc + ab + ac + bc + a + b + c.$$
A kettő megegyezik, tehát **a művelet asszociatív.** Az asszociatív grupoidot **félcsoportnak** nevezzük.

A $\langle G, \oplus\rangle$ grupoidban $e$ **egységelem**, ha minden $g \in G$-re $e \oplus g = g \oplus e = g$. *Van-e egységelem a példánkban?* Ha $e$ egységelem, akkor minden $a$-ra $a \oplus e = ae + a + e = a$, azaz $e(a + 1) = 0$, ami minden $a$-ra csak $e = 0$ esetén teljesül. A $0$ valóban egységelem: $a \oplus 0 = 0 \oplus a = a \cdot 0 + a + 0 = a$. Az egységelemes félcsoportot **monoidnak** nevezzük.

::: kiegeszites
**Kiegészítés: mi van a példa mögött?** Vegyük észre, hogy $a \oplus b = ab + a + b = (a + 1)(b + 1) - 1$. Ha tehát minden számot eggyel eltolunk ($\varphi(a) = a + 1$), akkor $\varphi(a \oplus b) = \varphi(a)\varphi(b)$: a $\oplus$ művelet „álruhás” szorzás. Ez azonnal megmagyarázza az asszociativitást (a szorzás asszociatív), azt, hogy az egységelem a $0$ (mert $\varphi(0) = 1$), és azt is, hogy mely elemeknek van inverze: azoknak, amelyekre $a + 1$-nek van egész reciproka, azaz $a + 1 = \pm 1$, $a \in \{0, -2\}$.
:::

Lássuk viszont, mi a vizsgaanyag!

> **11.1 Definíció.** A $\langle G, \oplus\rangle$ struktúra **csoport** a $\oplus$ kétváltozós műveletre nézve, ha teljesülnek a következők:
>
> 1. $\oplus$ **asszociatív**: minden $a, b, c \in G$-re $a \oplus (b \oplus c) = (a \oplus b) \oplus c$;
> 2. van **egységelem**: van olyan $e \in G$, hogy minden $g \in G$-re $g \oplus e = e \oplus g = g$;
> 3. minden elemnek van **inverze**: minden $a \in G$-hez van olyan $b \in G$, hogy $a \oplus b = b \oplus a = e$.

*Csoport-e az előbbi $\langle \mathbb{Z}, \oplus\rangle$?* Az egységelem csak a $0$ lehet. Kérdés, hogy minden $a \in \mathbb{Z}$-hez van-e olyan $b \in \mathbb{Z}$, amelyre $ab + a + b = 0$, azaz $b(a + 1) = -a$, $b = -\frac{a}{a + 1}$. Például $a = 1$ inverze csak $-\frac{1}{2}$ lehetne, ami nem egész. Tehát a $\langle \mathbb{Z}, \oplus\rangle$ monoid **nem csoport.**

**Kommutatív csoport**, más néven **Abel-csoport** az olyan csoport, amelyben a művelet kommutatív: $a \oplus b = b \oplus a$ minden $a, b$-re.

**Példák Abel-csoportokra:** $\langle \mathbb{Z}, +\rangle$, $\langle \mathbb{Q}, +\rangle$, $\langle \mathbb{R}, +\rangle$, $\langle \mathbb{C}, +\rangle$, $\langle \mathbb{Z}_m, +\rangle$, $\langle \mathbb{C}[x], +\rangle$, az $n \times m$-es valós mátrixok a mátrixösszeadással, $\langle \mathbb{Q} \setminus \{0\}, \cdot\rangle$, $\langle \mathbb{R} \setminus \{0\}, \cdot\rangle$, és az $n$-edik komplex egységgyökök $\langle\{\varepsilon : \varepsilon^n = 1\}, \cdot\rangle$. (Ellenőrizzük például az utolsót: két egységgyök szorzata és egy egységgyök reciproka is egységgyök, az $1$ egységelem.)

**Nem csoportok:** $\langle \mathbb{N}, +\rangle$ (az $1$-nek nincs inverze), $\langle \mathbb{Z}, \cdot\rangle$ (a $2$-nek nincs inverze), $\langle \mathbb{Q}, \cdot\rangle$ (a $0$-nak nincs inverze).

**Példák nem kommutatív csoportokra:**

1. Az $n$ elemű permutációk $S_n$ csoportja a kompozícióra nézve ($n \ge 3$ esetén nem kommutatív, lásd a 8. fejezetet). Ezt **szimmetrikus csoportnak** nevezzük.
2. Egy szabályos $n$-szög szimmetriáinak csoportja, a $D_n$ **diédercsoport**: $n$ forgatás (a $0°$-osat is beleértve) és $n$ tükrözés, összesen $2n$ elem, a művelet az egymás utáni végrehajtás. Ez $n \ge 3$ esetén nem kommutatív, mert egy forgatás és egy tükrözés sorrendje általában megváltoztatja a végeredményt. Egy STOP-tábla (szabályos nyolcszög) szimmetriái például a $16$ elemű $D_8$ csoportot alkotják.

> **11.2 Feladat.** Adjuk meg az $n \times n$-es, $K$ test feletti mátrixoknak egy olyan részhalmazát, amely a mátrixszorzással csoportot alkot!

*Megoldás.* A $K$ feletti invertálható (nem szinguláris) $n \times n$-es mátrixok halmaza:
$$GL(n, K) = \{A \in K^{n \times n} \mid \det A \ne 0\}.$$
Ez csoport: két invertálható mátrix szorzata invertálható (szorzástétel, illetve $(AB)^{-1} = B^{-1}A^{-1}$), az egységmátrix benne van, minden elem inverze is invertálható, a mátrixszorzás asszociatív. Hasonlóan csoport az $1$ determinánsú mátrixok halmaza:
$$SL(n, K) = \{A \in K^{n \times n} \mid \det A = 1\}.$$
($GL$ = *general linear*, $SL$ = *special linear*.) Mindkettő $n \ge 2$ esetén nem kommutatív csoport.

> **11.3 Feladat.** Mely $m \ge 2$ természetes számokra csoport $\langle \mathbb{Z}_m \setminus \{0\}, \cdot\rangle$?

*Megoldás.* Pontosan akkor, ha $m$ prím.

1. A struktúra akkor csoport, ha a halmaz zárt a szorzásra, és minden elemének van multiplikatív inverze modulo $m$ (az asszociativitás és az egységelem, az $1$, megvan).
2. Egy $a$ elemnek pontosan akkor van inverze $\mathbb{Z}_m$-ben, ha $(a, m) = 1$ (ez a lineáris kongruenciák elméletéből ismert: az $ax \equiv 1 \pmod m$ kongruencia pontosan ekkor oldható meg).
3. Ahhoz tehát, hogy $\mathbb{Z}_m \setminus \{0\}$ minden eleme ($1, 2, \dots, m - 1$) invertálható legyen, minden $m$-nél kisebb pozitív számnak relatív prímnek kell lennie $m$-hez.
4. Ez pontosan a prímszámokra teljesül: ha $m$ összetett, $m = ab$ ($1 < a, b < m$), akkor $(a, m) = a > 1$, így $a$ nem invertálható — sőt ekkor a halmaz a szorzásra sem zárt, hiszen $a \cdot b = 0 \notin \mathbb{Z}_m \setminus \{0\}$.
5. Tehát $\langle \mathbb{Z}_m \setminus \{0\}, \cdot\rangle$ pontosan akkor csoport, ha $m$ prím.

### Gyűrűk és testek

> **11.4 Definíció.** Az $\langle R, \oplus, \otimes\rangle$ struktúra **gyűrű**, ha az $R$ halmazon két kétváltozós művelet adott, egy összeadás ($\oplus$) és egy szorzás ($\otimes$), és teljesülnek a következők: $\langle R, \oplus\rangle$ kommutatív csoport; a szorzás asszociatív:
> $$a \otimes (b \otimes c) = (a \otimes b) \otimes c;$$
> és érvényes mindkét oldali disztributivitás:
> $$a \otimes (b \oplus c) = (a \otimes b) \oplus (a \otimes c), \qquad (a \oplus b) \otimes c = (a \otimes c) \oplus (b \otimes c).$$

> **11.5 Definíció.** Egy gyűrű **kommutatív**, ha a szorzás kommutatív.
>
> **11.6 Definíció.** Egy gyűrű **egységelemes**, ha a szorzásra nézve van egységelem; jele $1$.
>
> **11.7 Definíció.** Az $R$ gyűrű **nulleleme** az $\langle R, \oplus\rangle$ csoport egységeleme: $a \oplus 0 = 0 \oplus a = a$ minden $a \in R$-re.
>
> **11.8 Definíció.** **Test** az olyan egységelemes, kommutatív gyűrű (amelyben $1 \ne 0$), amelyben minden nem nulla elemnek van inverze a szorzásra nézve.

Általában egy gyűrűben az összeadást egyszerűen $+$-szal, a szorzást $\cdot$-tal jelöljük.

**Példák.** Gyűrű: $\mathbb{Z}$, $\mathbb{Z}_m$, $\mathbb{Z}[x]$, $\mathbb{R}[x]$, a Gauss-egészek $\mathbb{Z}[i]$, az $n \times n$-es valós mátrixok (ez utóbbi nem kommutatív, $n \ge 2$-re). Test: $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$, és — mint hamarosan látjuk — $\mathbb{Z}_p$, ha $p$ prím. Nem test: $\mathbb{Z}$ (a $2$-nek nincs inverze), $\mathbb{R}[x]$ (az $x$-nek nincs inverze), $\mathbb{Z}_6$.

> **11.9 Feladat.** Bizonyítsuk be, hogy ha $R$ gyűrű, akkor minden $a, b \in R$-re
>
> 1. $0 \cdot a = a \cdot 0 = 0$;
> 2. $(-a)b = a(-b) = -ab$;
> 3. ha $R$ egységelemes, és $a$ és $b$ invertálható, akkor $ab$ is az, és inverze $b^{-1}a^{-1}$.

*Megoldás.* 1. A disztributivitás szerint $0a = (0 + 0)a = 0a + 0a$; mindkét oldalhoz $-(0a)$-t adva $0 = 0a$. Hasonlóan $a0 = 0$.

2. $(-a)b + ab = (-a + a)b = 0b = 0$, tehát $(-a)b$ az $ab$ additív inverze: $(-a)b = -ab$. Hasonlóan $a(-b) = -ab$.

3. $(ab)(b^{-1}a^{-1}) = a(bb^{-1})a^{-1} = a \cdot 1 \cdot a^{-1} = aa^{-1} = 1$, és ugyanígy $(b^{-1}a^{-1})(ab) = 1$. (A sorrend megfordul — ezt a mátrixoknál már láttuk.)

> **11.10 Definíció.** Az $R$ gyűrű **nullosztómentes**, ha $ab = 0$ esetén $a = 0$ vagy $b = 0$. (Ha $a \ne 0$, $b \ne 0$, de $ab = 0$, akkor $a$-t és $b$-t **nullosztóknak** nevezzük.)

> **11.11 Feladat.** Minden test nullosztómentes.

*Megoldás.* Tegyük fel indirekt módon, hogy egy testben $ab = 0$, ahol $a \ne 0$ és $b \ne 0$. Mivel $a \ne 0$, van $a^{-1}$ inverze. Az $ab = 0$ egyenlőséget balról $a^{-1}$-gyel szorozva $a^{-1}(ab) = a^{-1} \cdot 0 = 0$; az asszociativitás miatt $(a^{-1}a)b = 1 \cdot b = b$, tehát $b = 0$ — ellentmondás. $\blacksquare$

> **11.12 Definíció.** **Integritási tartomány** a kommutatív, egységelemes, nullosztómentes gyűrű.

Integritási tartomány például $\mathbb{Z}$, $\mathbb{Z}[i]$, $\mathbb{R}[x]$, és minden test. **Nem** nullosztómentes például $\mathbb{Z}_6$, hiszen ott $2 \cdot 3 = 0$, de $2 \ne 0$ és $3 \ne 0$; és nem nullosztómentes a $2 \times 2$-es mátrixok gyűrűje sem.

> **11.13 Tétel.** $\mathbb{Z}_n$ ($n \ge 2$) pontosan akkor nullosztómentes, ha $n$ prím.

*Bizonyítás.* 1. Ha $n$ összetett, $n = ab$ ($1 < a, b < n$), akkor $\mathbb{Z}_n$-ben $a \cdot b = 0$, de $a \ne 0$ és $b \ne 0$; tehát $\mathbb{Z}_n$ nem nullosztómentes.

2. Ha $n$ prím, tegyük fel, hogy $\mathbb{Z}_n$-ben $ab = 0$, azaz $ab \equiv 0 \pmod n$, és $a \ne 0$. Mivel $n$ prím, $(a, n) = 1$, így a kis Fermat-tétel szerint $a^{n-1} \equiv 1 \pmod n$. Az $ab \equiv 0$ kongruenciát $a^{n-2}$-vel szorozva
$$a^{n-1}b \equiv 0, \qquad b \equiv 0 \pmod n.$$
Tehát $\mathbb{Z}_n$ nullosztómentes. (Eukleidész I. tételével rövidebben: $n \mid ab$ és $n \nmid a$ esetén $n \mid b$.) $\blacksquare$

> **11.14 Következmény.** $\mathbb{Z}_n$ pontosan akkor test, ha $n$ prím.

*Bizonyítás.* Ha $n$ prím és $a \ne 0$ $\mathbb{Z}_n$-ben, akkor $a \not\equiv 0 \pmod n$, azaz $(a, n) = 1$, és a kis Fermat-tétel szerint $a \cdot a^{n-2} = a^{n-1} \equiv 1$: $a$ inverze $a^{n-2}$. Minden nem nulla elemnek van tehát inverze. Ha $n$ összetett, az előző tétel szerint $\mathbb{Z}_n$ nem nullosztómentes, így (11.11. Feladat) nem test. $\blacksquare$

**Példa: az inverzek $\mathbb{Z}_7$-ben.** $1^{-1} = 1$, $2^{-1} = 4$ (mert $2 \cdot 4 = 8 \equiv 1$), $3^{-1} = 5$ ($15 \equiv 1$), $4^{-1} = 2$, $5^{-1} = 3$, $6^{-1} = 6$ ($36 \equiv 1$). A $\mathbb{Z}_7$ test tehát egy hételemű „számkör”, amelyben a négy alapművelet ugyanúgy elvégezhető, mint a racionális számok között — ezért lehet benne például lineáris egyenletrendszereket Gauss-eliminációval megoldani.

## 12. Polinomgyűrűk

Legyen $R$ gyűrű. Ekkor
$$R[x] = \{a_nx^n + a_{n-1}x^{n-1} + \dots + a_1x + a_0 : n \in \mathbb{N},\ a_i \in R\},$$
ahol az összeadást és a szorzást a polinomokra vonatkozó szokásos módon definiáljuk (3. fejezet). Könnyen ellenőrizhető, hogy $R[x]$ maga is gyűrű, az $R$ feletti **polinomgyűrű**.

> **12.1 Tétel.** Ha $R$ nullosztómentes gyűrű, akkor $R[x]$ is az.

*Bizonyítás.* Legyenek $f, g \in R[x]$ nem nulla polinomok, főegyütthatóik $a$ és $b$; ezek nem nullák. Mivel $R$ nullosztómentes, $ab \ne 0$. Az $fg$ polinom főegyütthatója (a legmagasabb fokú tag együtthatója) éppen $ab$, így $fg$ nem a nullapolinom. $\blacksquare$

> **12.2 Tétel.** Ha az $f \in R[x]$ polinomnak $\alpha$ gyöke ($R$ kommutatív, egységelemes), akkor van olyan $g \in R[x]$, amelyre $f(x) = (x - \alpha)g(x)$.

*Bizonyítás.* Legyen $f(x) = a_nx^n + \dots + a_1x + a_0$. Mivel $f(\alpha) = 0$,
$$f(x) = f(x) - f(\alpha) = \sum_{i=1}^n a_i(x^i - \alpha^i) = \sum_{i=1}^n a_i(x - \alpha)\left(x^{i-1} + x^{i-2}\alpha + \dots + x\alpha^{i-2} + \alpha^{i-1}\right) = (x - \alpha)g(x),$$
ahol $g(x) = \sum_{i=1}^n a_i\left(x^{i-1} + x^{i-2}\alpha + \dots + \alpha^{i-1}\right)$. $\blacksquare$

> **12.3 Tétel.** Ha $R$ kommutatív, egységelemes és nullosztómentes gyűrű (integritási tartomány), és $\alpha_1, \dots, \alpha_r$ az $f \in R[x]$ polinom különböző gyökei, akkor
> $$f(x) = (x - \alpha_1)(x - \alpha_2)\cdots(x - \alpha_r)\,g(x)$$
> alkalmas $g \in R[x]$ polinommal.

(Indukcióval: $f = (x - \alpha_1)f_1$, és $\alpha_2, \dots, \alpha_r$ gyökei $f_1$-nek is, mert $0 = f(\alpha_j) = (\alpha_j - \alpha_1)f_1(\alpha_j)$, és $\alpha_j - \alpha_1 \ne 0$ miatt a nullosztómentesség szerint $f_1(\alpha_j) = 0$.)

**Nem nullosztómentes gyűrűben a tétel nem igaz.** Például $R = \mathbb{Z}_8$-ban $x^2 - 1 = (x - 1)(x + 1)$, de $x^2 - 1$-nek a $3$ is gyöke, amely nem szerepel ebben a szorzatban; sőt $(x - 1)(x - 3)$ nem is osztója $x^2 - 1$-nek $\mathbb{Z}_8[x]$-ben, holott $1$ és $3$ is gyök. Más kérdés, hogy $\mathbb{Z}_8[x]$-ben
$$x^2 - 1 = (x - 1)(x + 1) = (x - 3)(x + 3),$$
hiszen $(x - 3)(x + 3) = x^2 - 9 = x^2 - 1$ — a polinomok szorzattá bontása itt nem egyértelmű.

> **12.4 Tétel.** Ha $R$ integritási tartomány, akkor
>
> 1. minden nem nulla polinomnak legfeljebb annyi gyöke van, amennyi a foka;
> 2. ha két legfeljebb $n$-edfokú polinom több mint $n$ helyen megegyezik, akkor azonosak.

(Ez a 3.10. és a 3.11. Tétel, most már a gyűrűk nyelvén.)

**Többszörös gyökök és a derivált.** Egy $f(x) = \sum a_jx^j$ polinom (formális) **deriváltja** $f'(x) = \sum ja_jx^{j-1}$; a szokásos deriválási szabályok (összeg, szorzat) formálisan is érvényesek.

> **12.5 Tétel.** Ha $\alpha$ az $f$ polinomnak legalább $k$-szoros gyöke ($k \ge 1$), akkor $f'$-nek legalább $(k-1)$-szeres gyöke.

*Bizonyítás.* Ha $f(x) = (x - \alpha)^kg(x)$, akkor a szorzat deriválási szabálya szerint
$$f'(x) = k(x - \alpha)^{k-1}g(x) + (x - \alpha)^kg'(x) = (x - \alpha)^{k-1}\big(kg(x) + (x - \alpha)g'(x)\big). \ \blacksquare$$

Következmény: ha $\alpha$ többszörös gyöke $f$-nek, akkor $f'$-nek is gyöke. (Például $f = x^3 - 3x + 2 = (x - 1)^2(x + 2)$, $f' = 3x^2 - 3 = 3(x - 1)(x + 1)$: az $1$ közös gyök.)

### Valós és komplex együtthatós polinomok

> **12.6 Tétel.** Ha egy valós együtthatós $f$ polinomnak $\alpha$ gyöke, akkor $\bar{\alpha}$ is gyöke.

*Bizonyítás.* Legyen $f(x) = a_nx^n + \dots + a_1x + a_0$, $a_i \in \mathbb{R}$, és $f(\alpha) = a_n\alpha^n + \dots + a_1\alpha + a_0 = 0$. Mindkét oldalt konjugálva, és felhasználva, hogy a konjugálás összeg- és szorzattartó (4.4. Tétel):
$$\bar{a}_n\bar{\alpha}^n + \dots + \bar{a}_1\bar{\alpha} + \bar{a}_0 = 0.$$
Mivel az $a_i$-k valósak, $\bar{a}_i = a_i$, így $f(\bar{\alpha}) = 0$. $\blacksquare$

A tétel szerint egy valós együtthatós $f$ polinom nem valós gyökei párokba rendezhetők: $\alpha$ párja $\bar{\alpha}$. Ha $f$ összes gyöke (multiplicitással; az algebra alaptétele szerint ennyi van) valós gyökök: $\alpha_1, \dots, \alpha_s$, nem valósak: $\alpha_{s+1}, \bar{\alpha}_{s+1}, \dots, \alpha_r, \bar{\alpha}_r$, akkor (normált $f$ esetén)
$$f(x) = \prod_{j=1}^s(x - \alpha_j)\prod_{j=s+1}^r(x - \alpha_j)(x - \bar{\alpha}_j).$$
Itt az $x - \alpha_j$ ($j \le s$) és az $(x - \alpha_j)(x - \bar{\alpha}_j)$ tényezők mind valós együtthatósak, hiszen $\alpha_j = a + bi$ esetén
$$(x - \alpha_j)(x - \bar{\alpha}_j) = x^2 - (\alpha_j + \bar{\alpha}_j)x + \alpha_j\bar{\alpha}_j = x^2 - 2ax + (a^2 + b^2).$$
**Tehát minden valós együtthatós polinom első- és másodfokú valós együtthatós polinomok szorzatára bomlik.**

> **12.7 Definíció.** Egy $T$ test (vagy integritási tartomány) feletti $f$ polinom **irreducibilis** $T$ felett, ha nem írható fel két kisebb fokú, $T$ feletti polinom szorzataként.

(Az egészek felett ezt a definíciót úgy értjük, hogy $f$ nem bontható két kisebb fokú *egész együtthatós* polinom szorzatára; így például $2x + 2 = 2(x + 1)$ irreducibilisnek számít, bár egy konstans kiemelhető belőle.)

Az előbbiek szerint **$\mathbb{R}$ felett csak első- és másodfokú irreducibilis polinomok vannak**; egy valós másodfokú polinom pontosan akkor irreducibilis $\mathbb{R}$ felett, ha a **diszkriminánsa negatív** (különben van valós gyöke, és a gyöktényező kiemelhető).

> **12.8 Tétel (az algebra alaptétele).** Minden nem konstans komplex együtthatós polinomnak van komplex gyöke.

(Nem bizonyítjuk; lásd a 6. fejezetet.)

> **12.9 Következmény.** Minden komplex együtthatós, legalább elsőfokú polinom elsőfokú polinomok szorzatára bomlik. Tehát $\mathbb{C}[x]$-ben pontosan az elsőfokú polinomok irreducibilisek.

**Összefoglalva, az irreducibilis polinomok:**

- **$\mathbb{C}[x]$-ben:** pontosan az elsőfokú polinomok, például $x + \sqrt{2} - i$.
- **$\mathbb{R}[x]$-ben:** pontosan az elsőfokúak és a negatív diszkriminánsú másodfokúak, például $x^2 + \sqrt{3}$ (diszkriminánsa $-4\sqrt{3} < 0$).
- **$\mathbb{Q}[x]$-ben és $\mathbb{Z}[x]$-ben:** bármilyen fokú irreducibilis polinom van, például $x^3 + x + 1$ (harmadfokú, és nincs racionális gyöke — a racionális gyökteszt szerint csak $\pm 1$ jöhetne szóba —, így nem bontható alacsonyabb fokúak szorzatára, hiszen az egyik tényező elsőfokú volna). Itt az irreducibilitás eldöntésére ugyan léteznek általános (de lassú) algoritmusok, a gyakorlatban azonban speciális **irreducibilitási kritériumokat** használunk; a leghíresebbet a következő fejezetben ismertetjük.

### Kitekintés: a Frobenius-azonosság $\mathbb{Z}_p[x]$-ben

Végül egy érdekesség. A $\mathbb{Z}_p$ maradékosztálytestben ($p$ prím) érvényes az úgynevezett **Frobenius-azonosság** (angolul tréfásan *freshman's dream*, „az elsőévesek álma”):
$$(a + b)^p = a^p + b^p.$$
*Bizonyítás.* A binomiális tétel szerint $(a + b)^p = \sum_{k=0}^p\binom{p}{k}a^{p-k}b^k$, ahol $\binom{p}{k} = \frac{p!}{k!(p-k)!}$. Ha $1 \le k \le p - 1$, akkor a számlálóban szerepel a $p$ prímtényező, a nevezőben viszont nem (mert $k! $ és $(p - k)!$ minden tényezője kisebb $p$-nél), így $p \mid \binom{p}{k}$, és ezek a tagok $\mathbb{Z}_p$-ben eltűnnek. Csak a $k = 0$ és $k = p$ tag marad: $a^p + b^p$. $\blacksquare$

**Átvitel $\mathbb{Z}_p[x]$-re.** Ha $P(x) = \sum_{k=0}^n c_kx^k \in \mathbb{Z}_p[x]$, akkor a Frobenius-azonosság ismételt alkalmazásával (és mivel $\mathbb{Z}_p[x]$ is kommutatív, $p \cdot 1 = 0$-val)
$$\big(P(x)\big)^p = \left(\sum_{k=0}^n c_kx^k\right)^p = \sum_{k=0}^n (c_kx^k)^p = \sum_{k=0}^n c_k^px^{kp} = \sum_{k=0}^n c_kx^{kp} = P(x^p),$$
ahol az utolsó előtti lépésben a kis Fermat-tételt ($c_k^p = c_k$ $\mathbb{Z}_p$-ben) használtuk. Például $\mathbb{Z}_3[x]$-ben $(x + 1)^3 = x^3 + 1$ — valóban, $(x + 1)^3 = x^3 + 3x^2 + 3x + 1$, és $3 = 0$.

## 13. A Schönemann–Eisenstein-féle irreducibilitási kritérium

Az irreducibilitási kritériumok közül a leghíresebb a **Schönemann–Eisenstein-kritérium**. Elsőként Theodor Schönemann publikálta 1846-ban (egy általánosabb formában), később azonban sokáig a tőle függetlenül publikáló Gotthold Eisenstein nevén vált ismertté. Eisenstein az eredményt 1850-ben közölte — ugyanabban a folyóiratban (*Crelle-féle Journal*), mint Schönemann —, és az Schönemann tételének speciális esete volt; nagyobb ismertsége miatt mégis az „Eisenstein-kritérium” elnevezés terjedt el. Az elsőbbség Schönemanné, ezért a XX. században egyre gyakoribbá vált a történelmileg pontosabb Schönemann–Eisenstein-kritérium elnevezés.

> **13.1 Tétel (Schönemann–Eisenstein-kritérium).** Legyen $p$ prím, és $f(x) = a_nx^n + a_{n-1}x^{n-1} + \dots + a_1x + a_0$ egész együtthatós polinom, amelyre
>
> - $p \nmid a_n$,
> - $p \mid a_{n-1}, a_{n-2}, \dots, a_1, a_0$,
> - $p^2 \nmid a_0$.
>
> Ekkor $f$ irreducibilis (nem bontható két kisebb fokú egész együtthatós polinom szorzatára).

*Bizonyítás.* Indirekt módon tegyük fel, hogy $f = gh$, ahol
$$g(x) = b_rx^r + \dots + b_1x + b_0, \qquad h(x) = c_sx^s + \dots + c_1x + c_0$$
egész együtthatós polinomok, és $r, s \ge 1$ (így $r, s < n$, hiszen $r + s = n$).

**A konstans tagok.** $a_0 = b_0c_0$, és $p \mid a_0$, így $p \mid b_0$ vagy $p \mid c_0$; szimmetria miatt feltehetjük, hogy $p \mid b_0$. Mivel $p^2 \nmid a_0 = b_0c_0$, ekkor $p \nmid c_0$.

**Az első „rossz” együttható.** Nem lehet, hogy $p$ a $g$ minden együtthatóját osztja, mert akkor $f = gh$ minden együtthatóját, így $a_n$-et is osztaná. Legyen tehát $i$ a legkisebb olyan index, amelyre $p \nmid b_i$; ekkor
$$p \mid b_0, b_1, \dots, b_{i-1}, \qquad p \nmid b_i, \qquad 1 \le i \le r < n.$$

**Az ellentmondás.** Tekintsük $f$ $x^i$-es együtthatóját. A szorzás szabálya szerint (ahol $c_k = 0$, ha $k > s$)
$$a_i = b_0c_i + b_1c_{i-1} + \dots + b_{i-1}c_1 + b_ic_0.$$
Szemléletesen: rendezzük $g$ és $h$ együtthatóit egy $(r + 1) \times (s + 1)$-es téglalap két oldalára, és az egységnégyzetekbe írjuk a megfelelő $b_jc_k$ szorzatokat; $a_i$ az egyik „ferde átló” mentén álló szorzatok összege. Itt $p \mid b_0, \dots, b_{i-1}$ miatt az utolsó kivételével minden tag osztható $p$-vel; az utolsó tag, $b_ic_0$ viszont nem, hiszen $p \nmid b_i$ és $p \nmid c_0$ (Eukleidész I. tétele). Tehát
$$p \nmid a_i.$$
Mivel $i \le r < n$, az $a_i$ nem a főegyüttható, így a feltétel szerint $p \mid a_i$ — ellentmondás. $\blacksquare$

**Példa.** Az $x^4 + 3x^3 + 6x^2 + 9x + 21$ polinom irreducibilis $\mathbb{Z}[x]$-ben: a $p = 3$ választással $3 \nmid 1$, de $3 \mid 3, 6, 9, 21$, és $9 \nmid 21$.

**További példák.** $x^n - 2$ minden $n \ge 1$-re irreducibilis ($p = 2$) — így minden fokszámban van irreducibilis polinom $\mathbb{Q}$ felett. Az $x^4 + 1$-re a kritérium közvetlenül nem alkalmazható, de az $x \to x + 1$ helyettesítés után igen: $(x + 1)^4 + 1 = x^4 + 4x^3 + 6x^2 + 4x + 2$, amely $p = 2$-vel Eisenstein-polinom. (Ha $f(x)$ felbontható volna, $f(x + 1)$ is felbontható volna, ugyanakkora fokú tényezőkre.) Ugyanezt a trükköt használja a következő, első ránézésre meglepő állítás.

> **13.2 Következmény.** Ha $p$ prím, akkor az
> $$f(x) = x^{p-1} + x^{p-2} + \dots + x + 1$$
> polinom irreducibilis $\mathbb{Z}[x]$-ben.

*Bizonyítás.* Az $f(x)$ polinom pontosan akkor irreducibilis, amikor $f(x + 1)$. Mivel $f(x) = \frac{x^p - 1}{x - 1}$,
$$f(x + 1) = \frac{(x + 1)^p - 1}{x} = \sum_{i=0}^{p-1}\binom{p}{i + 1}x^i = x^{p-1} + \binom{p}{p-1}x^{p-2} + \dots + \binom{p}{2}x + \binom{p}{1}.$$
(Ugyanez a jegyzetben közvetlenül is levezetésre kerül: $f(x + 1) = \sum_{k=0}^{p-1}(x + 1)^k$, és itt $x^i$ együtthatója $\binom{p-1}{i} + \binom{p-2}{i} + \dots + \binom{i}{i} = \binom{p}{i+1}$.) Itt $p \nmid \binom{p}{p} = 1$ (főegyüttható), $p \mid \binom{p}{i+1}$, ha $0 \le i \le p - 2$, és végül $p^2 \nmid \binom{p}{1} = p$. Tehát $f(x + 1)$ — és így $f(x)$ is — irreducibilis. $\blacksquare$

**A felhasznált azonosság.** $\binom{p-1}{i} + \binom{p-2}{i} + \dots + \binom{i}{i} = \binom{p}{i+1}$ (a „hokiütő-azonosság”) kombinatorikusan így látható: $\binom{p}{i+1}$ azt adja meg, hányféleképpen választhatunk ki $i + 1$ elemet az $\{1, 2, \dots, p\}$ halmazból. Jelölje $j$ a kiválasztott legnagyobb elemet; ez az $\{i + 1, i + 2, \dots, p\}$ halmaz eleme lehet, és a $j$-n kívüli $i$ elemet a $j$-nél kisebbek közül $\binom{j - 1}{i}$-féleképpen választhatjuk. Így
$$\sum_{j=i+1}^p\binom{j - 1}{i} = \binom{p}{i + 1}.$$

**Példa.** $p = 5$: $f(x) = x^4 + x^3 + x^2 + x + 1$, és $f(x + 1) = x^4 + 5x^3 + 10x^2 + 10x + 5$, amely $p = 5$-tel Eisenstein-polinom.

Ez a polinom a 18. fejezetben a $\Phi_p(x)$ körosztási polinomként tér vissza, gyökei a primitív $p$-edik egységgyökök.

## 14. Az euklideszi gyűrűk (faktorizáció és a számelmélet alaptétele)

A *Számelmélet* tárgyban láttuk, hogy az egész számok körében a számelmélet alaptétele (az egyértelmű prímfaktorizáció) a maradékos osztáson és az euklideszi algoritmuson múlik. Most megmutatjuk, hogy **minden olyan gyűrűben, amelyben „jó” maradékos osztás van, ugyanez a gondolatmenet működik.**

### Az euklideszi gyűrű fogalma

Egy $R$ integritási tartományt (kommutatív, egységelemes, nullosztómentes gyűrűt) **euklideszi gyűrűnek** nevezünk, ha létezik egy $\nu: R \setminus \{0\} \to \mathbb{N}$ függvény, az úgynevezett **euklideszi norma**, amelyre teljesül a

**maradékos osztás tétele:** bármely $a \in R$ és $b \in R \setminus \{0\}$ elemhez léteznek olyan $q, r \in R$ elemek (hányados és maradék), hogy
$$a = qb + r, \qquad \text{ahol} \quad r = 0 \quad \text{vagy} \quad \nu(r) < \nu(b).$$

**Fontos példák:**

- az **egész számok** gyűrűje, $\mathbb{Z}$, a $\nu(n) = |n|$ abszolút értékkel;
- **test fölötti polinomgyűrű**, $K[x]$, a $\nu(f) = \deg f$ fokszámmal (a polinomok maradékos osztása, lásd a *Számelmélet Tankönyv* 5. fejezetét: a maradék foka kisebb az osztó fokánál).

### Emlékeztető: egységek, felbonthatatlanok, prímek

Legyen $R$ integritási tartomány. Egy $u \in R$ elem **egység** (invertálható), ha osztója az $1$-nek, azaz van olyan $v \in R$, hogy $uv = vu = 1$. A következő definíciók $R$ nem nulla, nem egység elemeire vonatkoznak.

> **14.1 Definíció.** Egy $p \in R$ nem nulla, nem egység elem **felbonthatatlan** (irreducibilis), ha minden $p = ab$ felbontásban ($a, b \in R$) $a$ vagy $b$ egység.
>
> **14.2 Definíció.** Egy $p \in R$ nem nulla, nem egység elem **prím**, ha minden $a, b \in R$-re: $p \mid ab$ esetén $p \mid a$ vagy $p \mid b$.
>
> **14.3 Definíció.** Két elem, $a$ és $b$ **asszociált** ($a \sim b$), ha van olyan $u \in R$ egység, hogy $a = ub$. (Ekvivalens: $a \mid b$ és $b \mid a$.)

Hamarosan látni fogjuk, hogy **euklideszi gyűrűben a két fogalom egybeesik: prím $\iff$ felbonthatatlan.** (Az egyik irány, prím $\Rightarrow$ felbonthatatlan, minden integritási tartományban igaz; a *Számelmélet Tankönyv* 4.3. Tétele.)

**Példák.** $\mathbb{Z}$-ben az egységek $\pm 1$, a felbonthatatlanok a $\pm p$ prímszámok. $K[x]$-ben az egységek a nem nulla konstansok, a felbonthatatlanok az irreducibilis polinomok; asszociáltak például $x^2 + 1$ és $3x^2 + 3$.

### A számelmélet alaptétele euklideszi gyűrűkben

> **Tétel (egyértelmű faktorizáció).** Euklideszi gyűrűben minden nem nulla, nem egység elem felbontható felbonthatatlan elemek szorzatára, és ez a felbontás a tényezők sorrendjétől és asszociáltságától eltekintve egyértelmű.

A bizonyításnak két lépése van; mindkettőben kulcsszerepet játszik a norma, illetve a maradékos osztásból következő euklideszi algoritmus.

**1. lépés: a felbontás létezése.** A norma segítségével megmutatjuk, hogy a szorzattá bontás nem folytatódhat a végtelenségig.

1. Legyen $a \in R$ nem nulla, nem egység. Ha $a$ nem felbonthatatlan, akkor $a = a_1b_1$, ahol sem $a_1$, sem $b_1$ nem egység.
2. Ekkor a normák szigorúan csökkennek: $\nu(a_1) < \nu(a)$ és $\nu(b_1) < \nu(a)$ (lásd az alábbi kiegészítést).
3. A tényezőket tovább bontva a normák szigorúan csökkenő sorozatot alkotnak a nemnegatív egészek között.
4. Mivel nemnegatív egészekből nincs végtelen szigorúan csökkenő sorozat, a folyamat véges sok lépésben megáll: $a$ felírható véges sok felbonthatatlan elem szorzataként.

::: kiegeszites
**Kiegészítés: miért csökken a norma?** A fenti 2. lépés a definícióból önmagában nem következik; szükség van egy további, a gyakorlatban mindig teljesülő tulajdonságra: $\nu(a) \le \nu(ab)$ minden $a, b \ne 0$-ra. (Ez igaz a fenti példákra: $|a| \le |ab|$ az egészekre, $\deg a \le \deg(ab)$ a polinomokra, $N(a) \le N(ab)$ a Gauss-egészekre. Egyébként bebizonyítható, hogy minden euklideszi norma helyett választható ilyen tulajdonságú; a tankönyvek többsége ezt a feltételt a definícióba is beleveszi.) Ezzel: legyen $a = a_1b_1$, ahol $b_1$ nem egység. Osszuk el $a_1$-et maradékosan $a$-val: $a_1 = qa + r$. Ekkor $r = a_1 - qa_1b_1 = a_1(1 - qb_1)$. Itt $1 - qb_1 \ne 0$, különben $qb_1 = 1$, és $b_1$ egység volna; így $r \ne 0$, tehát $\nu(r) < \nu(a)$. Másrészt $\nu(a_1) \le \nu(a_1(1 - qb_1)) = \nu(r)$. Így $\nu(a_1) < \nu(a)$. $\blacksquare$
:::

**2. lépés: az egyértelműség (felbonthatatlan $\Rightarrow$ prím).** Az egyértelműséghez azt kell igazolni, hogy a felbonthatatlan elemek prímtulajdonságúak.

Először is: euklideszi gyűrűben bármely két elemnek van **legnagyobb közös osztója** (kitüntetett közös osztója), és az előáll $ax + by$ alakban. Ez szó szerint ugyanúgy bizonyítható, mint az egész számokra: az euklideszi algoritmus (ismételt maradékos osztás) véget ér, mert a maradékok normái szigorúan csökkennek, az utolsó nem nulla maradék a kitüntetett közös osztó, és visszahelyettesítéssel $ax + by$ alakba írható.

*Levezetés.*

1. Legyen $p$ felbonthatatlan, $p \mid ab$, és tegyük fel, hogy $p \nmid a$.
2. A $p$ és $a$ legnagyobb közös osztója osztója $p$-nek; mivel $p$ felbonthatatlan, ez vagy egység, vagy $p$ asszociáltja. Az utóbbi nem lehet, mert akkor $p \mid a$ volna. Tehát $\operatorname{lnko}(p, a) \sim 1$.
3. A kiterjesztett euklideszi algoritmus szerint $\operatorname{lnko}(p, a)$ előáll $px + ay$ alakban; így van olyan $u$ egység, hogy $u = px + ay$.
4. Szorozzuk meg az egyenlőséget $b$-vel: $ub = pxb + ayb$.
5. Mivel $p \mid ab$, azaz $ab = pc$ valamilyen $c$-re: $ub = pxb + pcy = p(xb + cy)$.
6. Tehát $p \mid ub$, és mivel $u$ egység, $p \mid b$ (szorozzunk $u^{-1}$-gyel).
7. Vagyis $p \mid ab$ esetén $p \mid a$ vagy $p \mid b$: a felbonthatatlan elem prím.

**Az egyértelműség befejezése.** Ha
$$p_1p_2\cdots p_k = q_1q_2\cdots q_m$$
két felbontás felbonthatatlan elemek szorzatára, akkor $p_1$ osztja a jobb oldalt. Mivel $p_1$ prím, osztania kell valamelyik $q_j$-t, mondjuk $q_1$-et. Mivel $q_1$ is felbonthatatlan, $q_1 = p_1u$ egy $u$ egységgel, azaz $p_1$ és $q_1$ asszociáltak. $p_1$-gyel egyszerűsítve (nullosztómentesség!) $p_2\cdots p_k = (uq_2)\cdots q_m$, és az eljárást ismételve (indukcióval) kapjuk, hogy $k = m$, és a tényezők — megfelelő sorrendben — páronként asszociáltak. $\blacksquare$

### Példák euklideszi gyűrűkre

1. **$\mathbb{Z}$**, az egész számok gyűrűje: $\nu(n) = |n|$.
2. **$K[x]$**, test fölötti polinomgyűrű ($K = \mathbb{Q}, \mathbb{R}, \mathbb{C}, \mathbb{Z}_p, \dots$): $\nu(f) = \deg f$. **Példa:** $\mathbb{Q}[x]$-ben $\operatorname{lnko}(x^3 - 1, x^2 - 1)$: $x^3 - 1 = x \cdot (x^2 - 1) + (x - 1)$, $x^2 - 1 = (x + 1)(x - 1)$, tehát a legnagyobb közös osztó $x - 1$.
3. **$\mathbb{Z}[i]$, a Gauss-egészek gyűrűje:** $\mathbb{Z}[i] = \{a + bi \mid a, b \in \mathbb{Z}\}$, a norma $\nu(a + bi) = a^2 + b^2$ (az abszolút érték négyzete). **Példa a maradékos osztásra:** osszuk el $7 + 2i$-t $2 - i$-vel! A komplex hányados $\frac{7 + 2i}{2 - i} = \frac{(7 + 2i)(2 + i)}{5} = \frac{12 + 11i}{5} = 2{,}4 + 2{,}2i$; ezt a legközelebbi Gauss-egészre kerekítve $q = 2 + 2i$, és $r = (7 + 2i) - (2 - i)(2 + 2i) = (7 + 2i) - (6 + 2i) = 1$. Valóban $\nu(r) = 1 < 5 = \nu(2 - i)$. (A kerekítés miatt mindig $\nu(r) \le \frac{1}{2}\nu(b)$, ezért működik a maradékos osztás.)
4. **Más kvadratikus egészgyűrűk.** A $\mathbb{Z}[\sqrt{d}] = \{a + b\sqrt{d}\}$ alakú gyűrűk közül csak néhány euklideszi; a norma ilyenkor $\nu(a + b\sqrt{d}) = |a^2 - db^2|$. Euklideszi például $\mathbb{Z}[\sqrt{-2}] = \mathbb{Z}[i\sqrt{2}]$, valamint ($d > 0$) $\mathbb{Z}[\sqrt{2}]$ és $\mathbb{Z}[\sqrt{3}]$; továbbá az úgynevezett Eisenstein-egészek gyűrűje, $\mathbb{Z}[\omega]$, ahol $\omega = \frac{-1 + \sqrt{-3}}{2}$. **Nem** euklideszi viszont például $\mathbb{Z}[\sqrt{-5}]$: ebben — ahogy a *Számelmélet Tankönyv* 4.5. Feladatában láttuk — nem is egyértelmű a faktorizáció: $6 = 2 \cdot 3 = (1 + \sqrt{-5})(1 - \sqrt{-5})$. Ugyanígy nem egyértelmű a faktorizáció $\mathbb{Z}[\sqrt{-3}]$-ban: $4 = 2 \cdot 2 = (1 + \sqrt{-3})(1 - \sqrt{-3})$ — ezért kell helyette a „nagyobb” $\mathbb{Z}[\omega]$ gyűrűt venni.

Erre a kérdéskörre harmadévben, a *Számelmélet 2* tárgyban térünk vissza, ahol bebizonyítjuk, hogy a Gauss-egészek, $\mathbb{Z}[\sqrt{-2}]$ és az Eisenstein-egészek euklideszi gyűrűt alkotnak.

## A IV. rész összefoglalása

- **Grupoid** (művelet) $\subset$ **félcsoport** (asszociatív) $\subset$ **monoid** (egységelem) $\subset$ **csoport** (minden elemnek inverze). **Abel-csoport:** kommutatív. Példák: $\langle\mathbb{Z}, +\rangle$, $\langle\mathbb{Z}_p \setminus \{0\}, \cdot\rangle$ ($p$ prím), $S_n$, $D_n$, $GL(n, K)$, $SL(n, K)$.
- **Gyűrű:** $\langle R, +\rangle$ Abel-csoport, a szorzás asszociatív, disztributív. **Integritási tartomány:** kommutatív, egységelemes, nullosztómentes. **Test:** minden nem nulla elem invertálható; minden test nullosztómentes. $\mathbb{Z}_n$ pontosan akkor test (és pontosan akkor nullosztómentes), ha $n$ prím.
- **Polinomgyűrű:** $R$ nullosztómentes $\Rightarrow$ $R[x]$ is; gyöktényező kiemelhető; integritási tartományban legfeljebb $\deg f$ gyök. Többszörös gyök $f'$-nek is gyöke. Valós polinom komplex gyökei konjugált párokban állnak.
- **Irreducibilis polinomok:** $\mathbb{C}$ felett csak elsőfokúak; $\mathbb{R}$ felett első- és negatív diszkriminánsú másodfokúak; $\mathbb{Q}$ felett minden fokban vannak. **Schönemann–Eisenstein:** $p \nmid a_n$, $p \mid a_i$ ($i < n$), $p^2 \nmid a_0$ $\Rightarrow$ irreducibilis. $1 + x + \dots + x^{p-1}$ irreducibilis ($x \to x + 1$).
- **Frobenius:** $\mathbb{Z}_p$-ben $(a + b)^p = a^p + b^p$, $\mathbb{Z}_p[x]$-ben $P(x)^p = P(x^p)$.
- **Euklideszi gyűrű:** van maradékos osztás egy $\nu$ normára nézve ($\mathbb{Z}$, $K[x]$, $\mathbb{Z}[i]$, …). Benne van lnko és euklideszi algoritmus, felbonthatatlan = prím, és érvényes az egyértelmű faktorizáció (SzAT). $\mathbb{Z}[\sqrt{-5}]$-ben nem.

## Feladatok a IV. részhez

1. Csoport-e $\mathbb{Z}$ az $a \circ b = a + b + 1$ műveletre? Ha igen, mi az egységelem, és mi az $a$ inverze?
2. Csoportot alkotnak-e a mátrixszorzásra a $\begin{pmatrix} a & b \\ 0 & c \end{pmatrix}$ alakú valós mátrixok, ahol $ac \ne 0$? Kommutatív-e ez a csoport?
3. Készítsük el $\mathbb{Z}_{11}$ nem nulla elemeinek inverztáblázatát, és oldjuk meg $\mathbb{Z}_7$-ben a $3x + 5 = 1$ egyenletet.
4. Oldjuk meg a $\mathbb{Z}_5$ test felett az $x + 2y = 1$, $2x + y = 0$ egyenletrendszert.
5. Bizonyítsuk be, hogy irreducibilisek $\mathbb{Z}[x]$-ben: a) $x^5 - 6x^3 + 9x + 3$; b) $2x^4 + 10x^2 - 15x + 5$.
6. Bontsuk fel az $x^4 + 4$ polinomot valós együtthatós másodfokú tényezők szorzatára. Miért tanulságos ez a példa, ha tudjuk, hogy $x^4 + 4$-nek nincs racionális gyöke?
7. Mutassuk meg, hogy az $x^2 + 1$ polinom irreducibilis $\mathbb{Z}_3$ felett, de felbontható $\mathbb{Z}_5$ felett.
8. Végezzük el a Gauss-egészek körében a $11 + 7i$ maradékos osztását $3 + 2i$-vel.
9. Határozzuk meg az $f(x) = x^3 - 3x + 2$ és $f'(x)$ legnagyobb közös osztóját az euklideszi algoritmussal. Mit árul el ez $f$ gyökeiről?
10. Bizonyítsuk be, hogy egy véges integritási tartomány mindig test. (Útmutatás: rögzített $a \ne 0$-ra az $x \mapsto ax$ leképezés injektív.)

### Megoldási útmutatók

1. Igen, Abel-csoport: a művelet asszociatív és kommutatív, az egységelem $-1$ ($a + (-1) + 1 = a$), az $a$ inverze $-a - 2$ ($a + (-a - 2) + 1 = -1$). (Az $a \mapsto a + 1$ eltolás az összeadásba viszi át.)
2. Igen: két ilyen mátrix szorzata is ilyen, $\begin{pmatrix} a & b \\ 0 & c \end{pmatrix}\begin{pmatrix} a' & b' \\ 0 & c' \end{pmatrix} = \begin{pmatrix} aa' & ab' + bc' \\ 0 & cc' \end{pmatrix}$; az inverz $\begin{pmatrix} 1/a & -b/(ac) \\ 0 & 1/c \end{pmatrix}$. Nem kommutatív (például $\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ és $\begin{pmatrix} 2 & 0 \\ 0 & 1 \end{pmatrix}$ nem cserélhető fel).
3. $1^{-1} = 1$, $2^{-1} = 6$, $3^{-1} = 4$, $4^{-1} = 3$, $5^{-1} = 9$, $6^{-1} = 2$, $7^{-1} = 8$, $8^{-1} = 7$, $9^{-1} = 5$, $10^{-1} = 10$. $\mathbb{Z}_7$-ben $3x = 1 - 5 = -4 = 3$, így $x = 1$.
4. A második egyenletből $y = -2x = 3x$; az elsőbe írva $7x = 2x = 1$, $x = 3$ (mert $2 \cdot 3 = 6 = 1$), $y = 9 = 4$. Ellenőrzés: $3 + 8 = 11 = 1$, $6 + 4 = 10 = 0$.
5. a) $p = 3$: $3 \nmid 1$, $3 \mid -6, 9, 3$, $9 \nmid 3$. b) $p = 5$: $5 \nmid 2$, $5 \mid 10, -15, 5$, $25 \nmid 5$.
6. $x^4 + 4 = (x^2 + 2)^2 - 4x^2 = (x^2 - 2x + 2)(x^2 + 2x + 2)$. Tanulság: egy polinom gyök nélkül is lehet reducibilis — csak a második és harmadik fokú polinomokra igaz, hogy „nincs gyöke $\Rightarrow$ irreducibilis”.
7. $\mathbb{Z}_3$-ban $0^2 + 1 = 1$, $1^2 + 1 = 2$, $2^2 + 1 = 5 = 2$, nincs gyök, és másodfokú polinomnál ez elég. $\mathbb{Z}_5$-ben $2^2 = 4 = -1$, így $x^2 + 1 = (x - 2)(x + 2)$.
8. $\frac{11 + 7i}{3 + 2i} = \frac{(11 + 7i)(3 - 2i)}{13} = \frac{47 - i}{13} \approx 3{,}62 - 0{,}08i$; $q = 4$, $r = 11 + 7i - 4(3 + 2i) = -1 - i$, és $\nu(r) = 2 < 13$.
9. $f' = 3x^2 - 3$. $f = \frac{x}{3}f' + (-2x + 2)$, majd $f' = (-\frac{3}{2}x - \frac{3}{2})(-2x + 2)$; a legnagyobb közös osztó (normálva) $x - 1$. Tehát $1$ többszörös gyöke $f$-nek (valóban $f = (x - 1)^2(x + 2)$).
10. Ha $a \ne 0$ és $ax = ay$, akkor $a(x - y) = 0$, nullosztómentesség miatt $x = y$. Egy véges halmaz injektív önleképezése szürjektív is, így van olyan $x$, hogy $ax = 1$.

---

# V. RÉSZ: POLINOMEGYENLETEK

Az ötödik rész visszatér a polinomokhoz, most már az eddig felépített eszközökkel. Megnézzük, hogyan függenek össze egy polinom gyökei az együtthatóival (Viète-formulák), hogyan lehet adott értékeket felvevő polinomot konstruálni (interpoláció), hogyan oldották meg a reneszánsz matematikusai a harmad- és negyedfokú egyenletet, és miért nem lehet ugyanezt ötödfokúra megtenni. Végül a körosztási polinomokkal megalapozzuk az utolsó rész, a szerkeszthetőség tárgyalását.

## 15. A gyökök és együtthatók közötti összefüggések: Viète-formulák

Ez a fejezet az algebra egyik alapvető és legszebb eredményét mutatja be: a gyökök és az együtthatók közötti szoros kapcsolatot, amelyet **Viète-formuláknak** nevezünk (François Viète, XVI. század). Megértésükhöz kulcsfontosságú az elemi szimmetrikus polinomok fogalma.

### Alapfogalmak

Tekintsünk egy $n$-edfokú, komplex együtthatós, **normált** polinomot ($a_n = 1$):
$$P(x) = x^n + a_{n-1}x^{n-1} + a_{n-2}x^{n-2} + \dots + a_1x + a_0 \in \mathbb{C}[x].$$
Az algebra alaptétele szerint ennek a polinomnak pontosan $n$ gyöke van $\mathbb{C}$-ben (multiplicitással számolva); jelöljük ezeket $\lambda_1, \lambda_2, \dots, \lambda_n$-nel. Ekkor a polinom **gyöktényezős alakja**
$$P(x) = (x - \lambda_1)(x - \lambda_2)\cdots(x - \lambda_n).$$

### Az elemi szimmetrikus polinomok

> **Definíció.** Legyenek $\lambda_1, \dots, \lambda_n$ változók. A **$k$-adik elemi szimmetrikus polinom** ($e_k(\lambda_1, \dots, \lambda_n)$ vagy röviden $e_k$) az összes $\binom{n}{k}$ darab, $k$ különböző változóból képezhető szorzat összege:
> $$e_k(\lambda_1, \dots, \lambda_n) = \sum_{1 \le i_1 < i_2 < \dots < i_k \le n}\lambda_{i_1}\lambda_{i_2}\cdots\lambda_{i_k}.$$
> (Megállapodás szerint $e_0 = 1$.)

A „szimmetrikus” jelző arra utal, hogy a változók tetszőleges permutációja nem változtat az értéken. **Példák** ($n = 4$, a változók $\lambda_1, \lambda_2, \lambda_3, \lambda_4$):

- $e_1 = \lambda_1 + \lambda_2 + \lambda_3 + \lambda_4$;
- $e_2 = \lambda_1\lambda_2 + \lambda_1\lambda_3 + \lambda_1\lambda_4 + \lambda_2\lambda_3 + \lambda_2\lambda_4 + \lambda_3\lambda_4$ ($6$ tag);
- $e_3 = \lambda_1\lambda_2\lambda_3 + \lambda_1\lambda_2\lambda_4 + \lambda_1\lambda_3\lambda_4 + \lambda_2\lambda_3\lambda_4$;
- $e_4 = \lambda_1\lambda_2\lambda_3\lambda_4$.

### A Viète-formulák

> **Tétel (Viète-formulák).** Ha a normált $P(x) = x^n + a_{n-1}x^{n-1} + \dots + a_0$ polinom gyökei $\lambda_1, \dots, \lambda_n$, akkor minden $k = 1, \dots, n$-re
> $$a_{n-k} = (-1)^k e_k(\lambda_1, \dots, \lambda_n).$$
> Részletesen:
> $$a_{n-1} = -(\lambda_1 + \lambda_2 + \dots + \lambda_n), \qquad a_{n-2} = +(\lambda_1\lambda_2 + \lambda_1\lambda_3 + \dots), \qquad a_{n-3} = -(\lambda_1\lambda_2\lambda_3 + \dots), \qquad \dots, \qquad a_0 = (-1)^n\lambda_1\lambda_2\cdots\lambda_n.$$

*Bizonyítás.* Bontsuk ki a $P(x) = (x - \lambda_1)\cdots(x - \lambda_n)$ szorzatot! Minden tagot úgy kapunk, hogy mind az $n$ tényezőből vagy az $x$-et, vagy a $-\lambda_i$-t választjuk. Az $x^{n-k}$-s tagokat úgy kapjuk, hogy $k$ tényezőből a $-\lambda_i$-t, a többi $n - k$-ból az $x$-et választjuk. Ezek összege
$$\sum_{1 \le i_1 < \dots < i_k \le n}(-\lambda_{i_1})\cdots(-\lambda_{i_k})\,x^{n-k} = (-1)^k\left(\sum_{1 \le i_1 < \dots < i_k \le n}\lambda_{i_1}\cdots\lambda_{i_k}\right)x^{n-k} = (-1)^ke_k\,x^{n-k}.$$
Az $x^{n-k}$ együtthatóját a polinom eredeti alakjával összehasonlítva (3.2. Definíció): $a_{n-k} = (-1)^ke_k$. $\blacksquare$

**Nem normált polinomok.** Ha a főegyüttható $a_n \ne 1$, akkor $Q(x) = a_nx^n + a_{n-1}x^{n-1} + \dots + a_0$-t $a_n$-nel osztva normált polinomot kapunk, ugyanazokkal a gyökökkel, így
$$\frac{a_{n-k}}{a_n} = (-1)^ke_k(\lambda_1, \dots, \lambda_n).$$
Különösen:
$$\lambda_1 + \dots + \lambda_n = -\frac{a_{n-1}}{a_n}, \qquad \lambda_1\lambda_2\cdots\lambda_n = (-1)^n\frac{a_0}{a_n}.$$

**Példák.** (1) Másodfokú eset: az $ax^2 + bx + c$ polinom gyökeire $\lambda_1 + \lambda_2 = -\frac{b}{a}$ és $\lambda_1\lambda_2 = \frac{c}{a}$ — ezt a középiskolából ismerjük.

(2) Az $x^3 - 6x^2 + 11x - 6$ polinom gyökei $1, 2, 3$, és valóban $e_1 = 1 + 2 + 3 = 6$, $e_2 = 1 \cdot 2 + 1 \cdot 3 + 2 \cdot 3 = 11$, $e_3 = 1 \cdot 2 \cdot 3 = 6$; az együtthatók $-6 = -e_1$, $11 = e_2$, $-6 = -e_3$.

(3) **Gyökök kiszámolása nélkül:** mennyi az $x^3 - 2x + 5 = 0$ egyenlet gyökeinek négyzetösszege? $e_1 = 0$, $e_2 = -2$, így
$$\lambda_1^2 + \lambda_2^2 + \lambda_3^2 = (\lambda_1 + \lambda_2 + \lambda_3)^2 - 2(\lambda_1\lambda_2 + \lambda_1\lambda_3 + \lambda_2\lambda_3) = e_1^2 - 2e_2 = 0 + 4 = 4.$$

A Viète-formulák alapozzák meg a **szimmetrikus polinomok alaptételét**, amely szerint bármely szimmetrikus polinom kifejezhető az elemi szimmetrikus polinomok polinomjaként. (A (3) példában a $\lambda_1^2 + \lambda_2^2 + \lambda_3^2 = e_1^2 - 2e_2$ felírás ilyen.) Ez a tény kulcsfontosságú a Galois-elméletben: eszerint a gyökök bármely szimmetrikus kifejezése kiszámolható az együtthatókból, a gyökök ismerete nélkül.

### Hatványösszegek és a Newton-azonosságok

*(A következő rész nem vizsgaanyag, de nagyon fontos.)*

Az elemi szimmetrikus polinomok ($e_k$) és a gyökök **hatványösszegei** ($p_k$) között szoros kapcsolat van, amelyet a **Newton-azonosságok** írnak le. A $k$-adik hatványösszeg:
$$p_k(\lambda_1, \dots, \lambda_n) = \sum_{i=1}^n\lambda_i^k = \lambda_1^k + \lambda_2^k + \dots + \lambda_n^k.$$

> **Tétel (Newton-azonosságok).** Minden $k = 1, 2, \dots, n$-re
> $$p_k - e_1p_{k-1} + e_2p_{k-2} - \dots + (-1)^{k-1}e_{k-1}p_1 + (-1)^kk\,e_k = 0.$$

Ezek az azonosságok rekurzívan biztosítják, hogy az $\{e_1, \dots, e_n\}$ és a $\{p_1, \dots, p_n\}$ rendszer kölcsönösen kifejezhető egymásból (racionális együtthatókkal).

**Példa: $e_1, e_2, e_3$ kifejezése a hatványösszegekkel.**

- $k = 1$: $p_1 - e_1 = 0$, azaz $e_1 = p_1$.
- $k = 2$: $p_2 - e_1p_1 + 2e_2 = 0$; $e_1 = p_1$-et behelyettesítve $e_2 = \frac{1}{2}(p_1^2 - p_2)$.
- $k = 3$: $p_3 - e_1p_2 + e_2p_1 - 3e_3 = 0$, azaz $3e_3 = p_3 - e_1p_2 + e_2p_1$. Behelyettesítve:
$$3e_3 = p_3 - p_1p_2 + \frac{1}{2}(p_1^2 - p_2)p_1 = p_3 - \frac{3}{2}p_1p_2 + \frac{1}{2}p_1^3, \qquad e_3 = \frac{1}{6}p_1^3 - \frac{1}{2}p_1p_2 + \frac{1}{3}p_3.$$

**Ellenőrzés az $(1, 2, 3)$ gyökökkel:** $p_1 = 6$, $p_2 = 14$, $p_3 = 36$, és $\frac{216}{6} - \frac{6 \cdot 14}{2} + \frac{36}{3} = 36 - 42 + 12 = 6 = e_3$. ✓ Fordítva, a Newton-azonossággal a hatványösszegek az együtthatókból számolhatók: $p_3 = e_1p_2 - e_2p_1 + 3e_3 = 6 \cdot 14 - 11 \cdot 6 + 18 = 36 = 1 + 8 + 27$. ✓

::: kiegeszites
**Kiegészítés: a Newton-azonosságok bizonyítása (generátorfüggvénnyel).** Az érdeklődő olvasónak részletezzük a jegyzetben szereplő bizonyítást.

*1. Generátorfüggvény és logaritmikus derivált.* Legyen
$$E(t) = t^nP(1/t) = \sum_{k=0}^n(-1)^ke_kt^k = \prod_{i=1}^n(1 - \lambda_it).$$
Logaritmikus deriváltja (kis $|t|$-re):
$$\frac{E'(t)}{E(t)} = \sum_{i=1}^n\frac{d}{dt}\ln(1 - \lambda_it) = \sum_{i=1}^n\frac{-\lambda_i}{1 - \lambda_it}.$$

*2. Mértani sor.* Az $\frac{1}{1 - r} = \sum_{k=0}^\infty r^k$ képletet ($r = \lambda_it$) használva:
$$\frac{E'(t)}{E(t)} = \sum_{i=1}^n(-\lambda_i)\sum_{k=0}^\infty(\lambda_it)^k = -\sum_{k=0}^\infty\left(\sum_{i=1}^n\lambda_i^{k+1}\right)t^k = -\sum_{j=1}^\infty p_jt^{j-1}.$$

*3. Együtthatók összehasonlítása.* $E(t)$-vel szorozva $E'(t) = -E(t)\sum_{j \ge 1}p_jt^{j-1}$, azaz
$$\sum_{k=1}^n(-1)^kk\,e_kt^{k-1} = -\left(\sum_{i=0}^n(-1)^ie_it^i\right)\left(\sum_{j=1}^\infty p_jt^{j-1}\right).$$
A $t^{k-1}$ együtthatóját összehasonlítva ($k \le n$): a bal oldalon $(-1)^kk\,e_k$, a jobb oldalon $-\sum_{i=0}^{k-1}(-1)^ie_ip_{k-i}$. Tehát (mivel $e_0 = 1$)
$$(-1)^kk\,e_k = -\big(p_k - e_1p_{k-1} + e_2p_{k-2} - \dots + (-1)^{k-1}e_{k-1}p_1\big),$$
ami átrendezve éppen a Newton-azonosság. $\blacksquare$
:::

## 16. Interpoláció

Az **interpoláció** — ismeretlen értékek becslése ismert adatok alapján — már az ókori görögök és babiloniak csillagászati táblázataiban is megjelent, tudományos módszerré azonban csak később vált. A XVII. században James Gregory és Isaac Newton dolgozta ki az első szisztematikus módszereket (a csillagászati és logaritmustáblák hiányainak kitöltésére és hibáinak kiszűrésére); a legfontosabb áttörést a **Newton-féle (előre) differenciaformula** hozta, az első általános módszer egy függvény közelítésére ismert pontjain keresztül. Az interpolációs polinom egy másik, elegáns, közvetlenül a megadott pontokból felírható formáját Joseph-Louis Lagrange tette ismertté 1795-ben (lényegében ugyanezt a képletet Edward Waring már 1779-ben közölte). Az interpoláció fejlődése szorosan összekapcsolódott a differenciaszámítással és a numerikus analízis kialakulásával, hiszen gépek híján minden számítást kézzel végeztek. 1901-ben Carl Runge rámutatott a magas fokú interpolációs polinomok korlátaira (**Runge-jelenség**: egyenlő közű alappontok esetén a fokszámot növelve a közelítés a széleken egyre rosszabb lehet), ami a ma is használt jobb közelítési módszerek (például a spline-függvények) felé terelte a kutatást.

A következőkben a Lagrange- és a Newton-féle interpolációval ismerkedünk meg.

### Lagrange-interpoláció

**A feladat:** olyan polinomot keresünk, amely előre megadott helyeken előre megadott értékeket vesz fel. Adottak az $a_1, a_2, \dots, a_n$ **különböző** számok (alappontok) és a $b_1, b_2, \dots, b_n$ értékek, és olyan $f$ polinomot keresünk, amelyre
$$f(a_1) = b_1, \quad f(a_2) = b_2, \quad \dots, \quad f(a_n) = b_n.$$

A következő polinom megfelel:
$$f(x) = \sum_{i=1}^n b_i\,\frac{(x - a_1)\cdots(x - a_{i-1})(x - a_{i+1})\cdots(x - a_n)}{(a_i - a_1)\cdots(a_i - a_{i-1})(a_i - a_{i+1})\cdots(a_i - a_n)}.$$
Valóban: az $i$-edik tagban szereplő tört (az **$i$-edik Lagrange-alappolinom**, $\ell_i(x)$) az $a_i$ helyen $1$ (a számláló és a nevező megegyezik), minden más $a_j$ helyen pedig $0$ (a számlálóban szerepel az $x - a_j$ tényező). Így $f(a_j) = b_j\ell_j(a_j) = b_j$. A nevezők nem nullák, mert az alappontok különbözők.

**Egyértelműség.** A kapott $f$ foka legfeljebb $n - 1$, és **ez az egyetlen legfeljebb $(n-1)$-edfokú polinom**, amely a feltételeket teljesíti: ha $g$ is ilyen volna, akkor $f - g$ legfeljebb $(n-1)$-edfokú, és $n$ különböző gyöke van ($a_1, \dots, a_n$), így a polinomok azonossági tétele (3.11. Tétel) szerint $f = g$. (Ez a Vandermonde-determináns nem nulla voltával is belátható: az együtthatókra felírt lineáris egyenletrendszer mátrixa éppen egy Vandermonde-mátrix.)

**Kidolgozott példa.** Keressünk olyan legfeljebb másodfokú polinomot, amelyre $f(1) = 1$, $f(2) = 3$, $f(3) = 7$!
$$f(x) = 1 \cdot \frac{(x - 2)(x - 3)}{(1 - 2)(1 - 3)} + 3 \cdot \frac{(x - 1)(x - 3)}{(2 - 1)(2 - 3)} + 7 \cdot \frac{(x - 1)(x - 2)}{(3 - 1)(3 - 2)}$$
$$= \frac{(x - 2)(x - 3)}{2} - 3(x - 1)(x - 3) + \frac{7(x - 1)(x - 2)}{2} = x^2 - x + 1.$$
(Ellenőrzés: $1 - 1 + 1 = 1$, $4 - 2 + 1 = 3$, $9 - 3 + 1 = 7$. ✓)

### Newton-interpoláció

A Lagrange-interpoláció hátránya: ha az $n$-edik mérési eredmény után jön egy $(n+1)$-edik is, vagyis most már az
$$f(a_{n+1}) = b_{n+1}$$
egyenletnek is teljesülnie kell, akkor sajnos elölről kell kezdeni a számolást (minden alappolinom megváltozik).

**A megoldás: Newton-interpoláció.** Az $a_1, \dots, a_n$ helyeken már megfelelő $f_0$ polinomhoz egy **korrekciós tagot** adunk:
$$f(x) = f_0(x) + c\,g(x), \qquad g(x) = (x - a_1)(x - a_2)\cdots(x - a_n).$$
A korrekciós tag a régi $a_1, \dots, a_n$ helyeken $0$, tehát nem rontja el a régi értékeket; a $c$ konstanst pedig úgy választjuk meg, hogy
$$f(a_{n+1}) = f_0(a_{n+1}) + c\,g(a_{n+1}) = b_{n+1},$$
azaz
$$c = \frac{b_{n+1} - f_0(a_{n+1})}{g(a_{n+1})} = \frac{b_{n+1} - f_0(a_{n+1})}{(a_{n+1} - a_1)\cdots(a_{n+1} - a_n)}.$$
(A nevező nem nulla, mert az új alappont különbözik a régiektől.) Ugyanezt az eljárást az első alapponttól kezdve lépésenként alkalmazva kapjuk a **Newton-féle interpolációs polinomot**:
$$f(x) = c_0 + c_1(x - a_1) + c_2(x - a_1)(x - a_2) + \dots + c_{n-1}(x - a_1)\cdots(x - a_{n-1}).$$
(A $c_k$ együtthatók az úgynevezett **osztott differenciák**.)

**Példa (folytatás).** Az előbbi $f_0(x) = x^2 - x + 1$ polinomhoz jöjjön egy új adat: $f(4) = 14$. Most $f_0(4) = 13$, $g(x) = (x - 1)(x - 2)(x - 3)$, $g(4) = 6$, így
$$c = \frac{14 - 13}{6} = \frac{1}{6}, \qquad f(x) = x^2 - x + 1 + \frac{(x - 1)(x - 2)(x - 3)}{6}.$$
Ez a négy feltételt teljesítő (egyetlen) legfeljebb harmadfokú polinom.

## 17. Az itáliai reneszánsz: titkok, párbajok és magasabb fokú egyenletek

A másodfokú egyenlet ($ax^2 + bx + c = 0$) megoldása már az ókor óta ismert volt, a harmadfokú ($ax^3 + bx^2 + cx + d = 0$) viszont több mint ezer éven át ellenállt a matematikusoknak.

### Tartaglia és Cardano titka

- **Scipione del Ferro** (bolognai professzor) 1515 körül találta meg először egy speciális harmadfokú egyenlettípus ($x^3 + px = q$) megoldását, de titokban tartotta, és csak halála előtt árulta el tanítványának, Antonio Fiorénak.
- **Niccolò Fontana**, ismertebb nevén **Tartaglia** („dadogó” — gyermekkori sebesülése miatt dadogott) tőle függetlenül fedezte fel újra a képletet 1535 körül, amikor Fiore nyilvános matematikai párbajra hívta ki; Tartaglia megoldotta Fiore összes feladatát, és fölényesen győzött.
- **Gerolamo Cardano** 1539-ben szigorú titoktartási fogadalom ellenében kapta meg a képletet Tartagliától.

**A képlet nyilvánosságra kerül.** Cardano később megtudta, hogy a képletet del Ferro már Tartaglia előtt ismerte, ezért nem érezte magát kötve a fogadalomhoz: 1545-ben publikálta a harmadfokú egyenlet megoldóképletét *Ars Magna* („A nagy művészet”) című könyvében (megemlítve del Ferro és Tartaglia érdemeit). Tartaglia ezt sosem bocsátotta meg. A képlet egyben a komplex számok elméletének matematikai gyökere lett (lásd lejjebb a *casus irreducibilist*).

**Ferrari és a negyedfokú egyenlet.** Cardano tanítványa, **Lodovico Ferrari** oldotta meg a negyedfokú egyenletet. Zseniális ötlete az volt, hogy a negyedfokú egyenletet egy ügyes átalakítással **harmadfokúra vezette vissza**, amelyet már meg tudtak oldani. Ez is az *Ars Magná*-ban jelent meg; így 1545-re lezárult az alacsony fokú egyenletek megoldóképleteinek korszaka.

### Az ötödfokú egyenlet drámai megálljt parancsol

A matematikusok közel három évszázadon át hiába keresték az ötödfokú egyenlet ($ax^5 + \dots = 0$) megoldóképletét.

**Abel: a lehetetlenség bizonyítása.** A fiatal norvég matematikus, **Niels Henrik Abel** 1824-ben közölte bizonyítását (Paolo Ruffini 1799-es, hiányos gondolatmenetét teljessé téve), miszerint az ötöd- vagy magasabb fokú egyenletekre *általában* nem létezik olyan megoldóképlet, amely csak az alapműveleteket és gyökvonásokat használna (**Abel–Ruffini-tétel**). Ez nem azt jelenti, hogy egyetlen ötödfokú egyenlet sem oldható meg gyökjelekkel ($x^5 - 2 = 0$ például igen), hanem hogy nincs *minden* ötödfokú egyenletre működő képlet.

**Galois: a mélyebb igazság felfedezése.** A francia **Évariste Galois** dolgozta ki a témában a legmélyebb elméletet:

- megmutatta, milyen feltételek mellett oldható meg egy *adott* egyenlet gyökjelekkel (akkor és csak akkor, ha a gyökeinek szimmetriáit leíró csoport egy bizonyos tulajdonsággal, „feloldhatósággal” rendelkezik);
- munkája a csoportelmélet alkalmazásán alapult, és ezzel megszületett a modern absztrakt algebra;
- Galois mindössze 20 évesen, 1832-ben vesztette életét egy párbajban; elméletét csak halála után, 1846-ban publikálta Joseph Liouville.

### A harmadfokú egyenlet megoldóképlete

Tekintsünk egy
$$x^3 + a_2x^2 + a_1x + a_0 = 0$$
egyenletet (általános harmadfokú egyenlet esetén előbb osztunk a főegyütthatóval). **1. lépés: a négyzetes tag eltüntetése.** Írjunk $x$ helyébe $y - \frac{a_2}{3}$-at! Ekkor
$$\left(y - \frac{a_2}{3}\right)^3 + a_2\left(y - \frac{a_2}{3}\right)^2 + a_1\left(y - \frac{a_2}{3}\right) + a_0 = 0,$$
és a zárójeleket kifejtve az $y^2$-es tagok kiesnek ($-3 \cdot \frac{a_2}{3}y^2 + a_2y^2 = 0$):
$$y^3 + \left(a_1 - \frac{a_2^2}{3}\right)y + \left(\frac{2a_2^3}{27} - \frac{a_1a_2}{3} + a_0\right) = 0.$$
Tehát elegendő a **hiányos harmadfokú egyenletet** megoldani:
$$y^3 + ay + b = 0, \qquad a = a_1 - \frac{a_2^2}{3}, \qquad b = \frac{2a_2^3}{27} - \frac{a_1a_2}{3} + a_0.$$

**2. lépés: a Cardano-féle ötlet.** Keressük $y$-t $y = u + v$ alakban! Adott $y$-hoz $u$-t és $v$-t sokféleképpen választhatjuk, ezt a szabadságot fogjuk kihasználni. Behelyettesítve:
$$(u + v)^3 + a(u + v) + b = 0, \qquad u^3 + v^3 + 3uv(u + v) + a(u + v) + b = 0,$$
$$u^3 + v^3 + (3uv + a)(u + v) + b = 0. \qquad (17.1)$$
Mivel $u$-t és $v$-t szabadon választhattuk, feltehetjük, hogy úgy választjuk őket, hogy
$$3uv = -a$$
teljesüljön. Ekkor (17.1)-ből $u^3 + v^3 + b = 0$ marad. Tehát
$$u^3 + v^3 = -b, \qquad u^3v^3 = \left(-\frac{a}{3}\right)^3.$$
A Viète-formulák szerint $u^3$ és $v^3$ tehát a
$$z^2 + bz - \left(\frac{a}{3}\right)^3 = 0$$
másodfokú egyenlet gyökei (ezt az egyenletet nevezik a harmadfokú egyenlet **rezolvensének**):
$$u^3, v^3 = -\frac{b}{2} \pm \sqrt{\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3}.$$
Így
$$y = u + v = \sqrt[3]{-\frac{b}{2} + \sqrt{\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3}} + \sqrt[3]{-\frac{b}{2} - \sqrt{\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3}}.$$
Ez a harmadfokú egyenlet **Cardano-képlete**. (A komplex köbgyökök háromértékűek; a két köbgyököt úgy kell párosítani, hogy $uv = -\frac{a}{3}$ teljesüljön. Így pontosan három gyököt kapunk: ha $u_0, v_0$ egy jó pár, akkor a többi $u_0\varepsilon$, $v_0\varepsilon^2$ és $u_0\varepsilon^2$, $v_0\varepsilon$, ahol $\varepsilon$ primitív harmadik egységgyök.)

**Kidolgozott példa.** Oldjuk meg az $x^3 + 6x - 20 = 0$ egyenletet! Itt $a = 6$, $b = -20$, így
$$\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 = 100 + 8 = 108, \qquad u^3 = 10 + \sqrt{108} = 10 + 6\sqrt{3}, \qquad v^3 = 10 - 6\sqrt{3}.$$
Mivel $(1 + \sqrt{3})^3 = 1 + 3\sqrt{3} + 9 + 3\sqrt{3} = 10 + 6\sqrt{3}$ és $(1 - \sqrt{3})^3 = 10 - 6\sqrt{3}$, valamint $(1 + \sqrt{3})(1 - \sqrt{3}) = -2 = -\frac{a}{3}$, a valós gyök
$$x = (1 + \sqrt{3}) + (1 - \sqrt{3}) = 2.$$
(Ellenőrzés: $8 + 12 - 20 = 0$. A másik két gyök az $x^2 + 2x + 10$ tényező gyökei: $-1 \pm 3i$.)

### A *casus irreducibilis*

A **casus irreducibilis** („redukálhatatlan eset”) a harmadfokú egyenletnek az az esete, amikor **három különböző valós gyöke** van. Ekkor — bármilyen meglepő — a Cardano-képletben a négyzetgyökjel alatt negatív szám áll, $\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 < 0$, így a valós gyökök kifejezéséhez is elengedhetetlen a komplex számok használata. A XVI. században ez a jelenség játszott kulcsszerepet a komplex számok elfogadásában: rámutatott, hogy a „képzetes” számok nem csupán fölösleges furcsaságok, hanem a valós gyökök kiszámításához is szükségesek.

**Bombelli példája.** Az $x^3 - 15x - 4 = 0$ egyenletnek $x = 4$ gyöke ($64 - 60 - 4 = 0$), és a másik két gyöke ($-2 \pm \sqrt{3}$) is valós. A Cardano-képlet viszont ($a = -15$, $b = -4$) ezt adja:
$$\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 = 4 - 125 = -121, \qquad x = \sqrt[3]{2 + \sqrt{-121}} + \sqrt[3]{2 - \sqrt{-121}} = \sqrt[3]{2 + 11i} + \sqrt[3]{2 - 11i}.$$
Rafael Bombelli (1572) vette észre, hogy $(2 + i)^3 = 8 + 12i - 6 - i = 2 + 11i$, így a két köbgyök $2 + i$ és $2 - i$, összegük pedig éppen a valós $4$. Ez volt az első alkalom, hogy valaki a „lehetetlen” négyzetgyökökkel bátran tovább számolt — és helyes eredményt kapott.

### A negyedfokú egyenlet visszavezetése harmadfokúra (Ferrari módszere)

**Az egyenlet egyszerűsítése.** A teljes negyedfokú egyenlet $ax^4 + bx^3 + cx^2 + dx + e = 0$. Az $a$-val való osztás után:
$$x^4 + Px^3 + Qx^2 + Rx + S = 0.$$

**A harmadfokú tag eltüntetése.** Az $x = y - \frac{P}{4}$ helyettesítés eltünteti az $x^3$-ös tagot, és az úgynevezett **hiányos negyedfokú egyenletet** kapjuk:
$$y^4 + Ay^2 + By + C = 0,$$
ahol $A, B, C$ az eredeti együtthatóktól függenek. (Ha $B = 0$, az egyenlet $y^2$-ben másodfokú — ún. bikvadratikus —, és közvetlenül megoldható; tegyük fel ezért, hogy $B \ne 0$.)

**Ferrari trükkje: négyzetre kiegészítés egy paraméterrel.** Átcsoportosítva $y^4 + Ay^2 = -By - C$. Adjuk hozzá mindkét oldalhoz a $2\lambda y^2 + \lambda^2$ kifejezést, ahol $\lambda$ egy egyelőre szabad paraméter:
$$y^4 + 2\lambda y^2 + \lambda^2 = (2\lambda - A)y^2 - By + (\lambda^2 - C),$$
azaz a bal oldal teljes négyzet:
$$(y^2 + \lambda)^2 = (2\lambda - A)y^2 - By + (\lambda^2 - C).$$

**A jobb oldal is legyen teljes négyzet.** A jobb oldal $y$-ban másodfokú; akkor teljes négyzet, ha a diszkriminánsa nulla:
$$(-B)^2 - 4(2\lambda - A)(\lambda^2 - C) = 0.$$
Ezt kifejtve kapjuk a $\lambda$-ra vonatkozó **rezolvens harmadfokú egyenletet**:
$$8\lambda^3 - 4A\lambda^2 - 8C\lambda + (4AC - B^2) = 0.$$
Ezt a Cardano-képlettel megoldva kapunk egy $\lambda_0$ gyököt. (Mivel $B \ne 0$, $2\lambda_0 - A \ne 0$.)

**A megoldás befejezése.** $\lambda_0$-t visszahelyettesítve a jobb oldal teljes négyzet: $(2\lambda_0 - A)\left(y - \frac{B}{2(2\lambda_0 - A)}\right)^2$, így az egyenlet két négyzet különbségeként írható:
$$(y^2 + \lambda_0)^2 - \left(\sqrt{2\lambda_0 - A}\,\Big(y - \frac{B}{2(2\lambda_0 - A)}\Big)\right)^2 = 0.$$
Az $u^2 - v^2 = (u - v)(u + v)$ azonosságot alkalmazva az egyenlet **két másodfokú egyenletre bomlik**, amelyeket a megoldóképlettel megoldunk. Végül az $x = y - \frac{P}{4}$ visszahelyettesítéssel kapjuk az eredeti gyököket.

**Kidolgozott példa.** Oldjuk meg az $x^4 - 2x^2 - 8x - 3 = 0$ egyenletet! Itt nincs $x^3$-ös tag, így $y = x$, $A = -2$, $B = -8$, $C = -3$. A rezolvens:
$$8\lambda^3 + 8\lambda^2 + 24\lambda + (24 - 64) = 0, \qquad \lambda^3 + \lambda^2 + 3\lambda - 5 = 0,$$
amelynek egy gyöke $\lambda_0 = 1$ ($1 + 1 + 3 - 5 = 0$). Ekkor
$$(x^2 + 1)^2 = (2 + 2)x^2 + 8x + (1 + 3) = 4x^2 + 8x + 4 = (2x + 2)^2.$$
Tehát $x^2 + 1 = \pm(2x + 2)$, azaz
$$x^2 - 2x - 1 = 0 \quad \text{vagy} \quad x^2 + 2x + 3 = 0,$$
és a gyökök: $x = 1 \pm \sqrt{2}$, illetve $x = -1 \pm i\sqrt{2}$. (Ellenőrzés: $(x^2 - 2x - 1)(x^2 + 2x + 3) = x^4 - 2x^2 - 8x - 3$.)

## 18. A körosztási polinomok elmélete

A **körosztási polinomok** (ciklotomikus polinomok — a görög *kyklos* „kör” és *temnein* „vágni” szavakból) a matematika legszebb kapcsolódási pontjain helyezkednek el, az algebra, a geometria és a számelmélet határán.

Vizsgálatuk csúcspontja Carl Friedrich Gauss nevéhez fűződik, aki 1796-ban, 18 évesen, az egységgyökök segítségével bebizonyította a **szabályos 17-szög** euklideszi (körzővel és vonalzóval való) szerkeszthetőségét. Ez a felfedezés forradalmasította a szerkesztési feladatok elméletét: több mint kétezer év után ez volt az első új szabályos sokszög, amelynek szerkeszthetőségét igazolták (az ókori görögök a szabályos $3$-, $4$-, $5$- és $15$-szöget, valamint az oldalszámok duplázásával kapottakat tudták megszerkeszteni). Később a $\Phi_p(x)$ polinomok irreducibilitása vált alapvető fontosságúvá, amelyet a Schönemann–Eisenstein-kritérium elegánsan igazol (13. fejezet). A körosztási testek a Galois-elmélet egyik legalapvetőbb példáját alkotják: Galois-csoportjuk kommutatív (Abel-féle). Ernst Kummer a körosztási testeket használta a nagy Fermat-tétel részleges (reguláris prímkitevőkre vonatkozó) bizonyításához.

Mi most a körosztási polinomoknak csak a legalapvetőbb tulajdonságait nézzük meg.

### Egységgyökök, rend és primitív egységgyökök

Az **$n$-edik egységgyökök** azok a komplex számok, amelyek az $x^n - 1 = 0$ egyenlet gyökei (5. fejezet):
$$E_n = \left\{e^{\frac{2\pi ik}{n}} = \cos\frac{2\pi k}{n} + i\sin\frac{2\pi k}{n} \ \Big|\ k = 0, 1, \dots, n - 1\right\}.$$

- Egy $\varepsilon$ egységgyök **rendje** az a legkisebb $k$ pozitív egész, amelyre $\varepsilon^k = 1$.
- Egy $\varepsilon$ $n$-edik egységgyök **primitív $n$-edik egységgyök**, ha a rendje pontosan $n$ (vagyis hatványai az összes $n$-edik egységgyököt előállítják).
- **Számuk:** az $\varepsilon_k = e^{2\pi ik/n}$ egységgyök pontosan akkor primitív, ha $(k, n) = 1$; a primitív $n$-edik egységgyökök száma tehát $\varphi(n)$ (Euler-féle $\varphi$ függvény).

(Az utolsó állítás indoklása: $\varepsilon_k^m = 1 \iff n \mid km \iff \frac{n}{(k,n)} \mid m$, tehát $\varepsilon_k$ rendje $\frac{n}{(k, n)}$; ez a *Számelmélet Tankönyv* rendre vonatkozó tételeinek pontos megfelelője.) **Példa:** a hatodik egységgyökök közül primitív a $k = 1$ és $k = 5$-höz tartozó, $\frac{1}{2} \pm \frac{\sqrt{3}}{2}i$; az $\varepsilon_2, \varepsilon_4$ harmadrendű, $\varepsilon_3 = -1$ másodrendű, $\varepsilon_0 = 1$ elsőrendű.

### A körosztási polinom

> **18.1 Definíció.** Az **$n$-edik körosztási polinom**, $\Phi_n(x)$, az a normált polinom, amelynek gyökei pontosan a primitív $n$-edik egységgyökök (mindegyik egyszeres gyökként):
> $$\Phi_n(x) = \prod_{\substack{1 \le k \le n \\ (k, n) = 1}}\left(x - e^{\frac{2\pi ik}{n}}\right).$$
> Foka $\deg\Phi_n = \varphi(n)$.

> **18.2 Tétel (faktorizációs tétel).** Az $x^n - 1$ polinom felbomlik az $n$ osztóihoz tartozó körosztási polinomok szorzatára:
> $$x^n - 1 = \prod_{d \mid n}\Phi_d(x).$$

*Bizonyítás (vázlat).*

1. Az $x^n - 1$ gyökei pontosan az összes $n$-edik egységgyökök (mindegyik egyszeres gyök).
2. Minden $\varepsilon \in E_n$ rendje egy olyan $d$, amely osztója $n$-nek ($\varepsilon^n = 1$ miatt).
3. Minden $\varepsilon$ pontosan egy $d$-re primitív $d$-edik egységgyök (a saját rendjére).
4. Ezért az $n$-edik egységgyökök halmaza felbomlik a primitív $d$-edik egységgyökök halmazainak diszjunkt uniójára, ahol $d$ befutja $n$ osztóit. Mivel mindkét oldal normált, és ugyanazok az (egyszeres) gyökei, a két oldal egyenlő. $\blacksquare$

(A fokszámokat összehasonlítva éppen a $\sum_{d \mid n}\varphi(d) = n$ azonosságot kapjuk — a *Számelmélet Tankönyv* 17.22. Tételét.)

A faktorizációs tételből rekurzívan kiszámolhatók a körosztási polinomok:
$$\Phi_n(x) = \frac{x^n - 1}{\prod_{d \mid n,\ d < n}\Phi_d(x)}.$$
**Példák:**
$$\Phi_1(x) = x - 1, \qquad \Phi_2(x) = \frac{x^2 - 1}{\Phi_1(x)} = x + 1, \qquad \Phi_3(x) = \frac{x^3 - 1}{\Phi_1(x)} = x^2 + x + 1,$$
$$\Phi_4(x) = \frac{x^4 - 1}{\Phi_1(x)\Phi_2(x)} = \frac{x^4 - 1}{x^2 - 1} = x^2 + 1, \qquad \Phi_6(x) = \frac{x^6 - 1}{\Phi_1(x)\Phi_2(x)\Phi_3(x)} = \frac{x^6 - 1}{(x^3 - 1)(x + 1)} = x^2 - x + 1.$$
Továbbá prím $p$-re $\Phi_p(x) = \frac{x^p - 1}{x - 1} = x^{p-1} + x^{p-2} + \dots + x + 1$, például $\Phi_5(x) = x^4 + x^3 + x^2 + x + 1$; és $\Phi_8(x) = x^4 + 1$, $\Phi_{12}(x) = x^4 - x^2 + 1$.

::: kiegeszites
**Kiegészítés: a körosztási polinomok együtthatói egészek.** Ez a rekurzióból indukcióval következik: ha minden $d < n$-re $\Phi_d \in \mathbb{Z}[x]$ normált, akkor a nevezőben álló $\prod_{d \mid n, d < n}\Phi_d$ egész együtthatós normált polinom, és egy egész együtthatós polinomot egész együtthatós *normált* polinommal maradék nélkül osztva a hányados is egész együtthatós (a polinomosztás során csak a főegyütthatóval, $1$-gyel kell osztani). Meglepő módon a kis $n$-ekre az együtthatók mind $0$, $1$ vagy $-1$; az első kivétel $\Phi_{105}$, amelyben a $-2$ együttható is előfordul.
:::

> **18.3 Tétel (az irreducibilitás tétele).** Minden $\Phi_n(x)$ körosztási polinom irreducibilis a racionális együtthatós polinomok gyűrűjében, $\mathbb{Q}[x]$-ben.

**Megjegyzés.** A tétel általános bizonyítása (prím $n$-re már Gauss igazolta, az általános esetet Richard Dedekind bizonyította 1857-ben) a $\mathbb{Z}[x]$-beli irreducibilitás belátásán (az úgynevezett Gauss-lemma alkalmazásán) és a gyökök tulajdonságain alapul; ez az algebrai számelmélet egyik fontos tétele. Prím $n = p$ esetén a 13.2. Következményben bebizonyítottuk.

## Az V. rész összefoglalása

- **Viète-formulák:** normált polinom gyökeire $a_{n-k} = (-1)^ke_k(\lambda_1, \dots, \lambda_n)$; például a gyökök összege $-\frac{a_{n-1}}{a_n}$, szorzata $(-1)^n\frac{a_0}{a_n}$. A gyökök szimmetrikus kifejezései az együtthatókból kiszámolhatók. **Newton-azonosságok:** $p_k - e_1p_{k-1} + \dots + (-1)^kke_k = 0$.
- **Interpoláció:** $n$ különböző alappontra pontosan egy legfeljebb $(n-1)$-edfokú polinom vesz fel előírt értékeket. Lagrange-alak: $\sum b_i\ell_i(x)$; Newton-alak: új pont esetén $c\,(x - a_1)\cdots(x - a_n)$ korrekció.
- **Harmadfokú egyenlet:** $x = y - \frac{a_2}{3}$, majd $y = u + v$, $3uv = -a$; $u^3, v^3$ egy másodfokú rezolvens gyökei (Cardano-képlet). *Casus irreducibilis:* három valós gyök esetén a képlet komplex számokon keresztül vezet (Bombelli). **Negyedfokú:** Ferrari — négyzetre kiegészítés egy $\lambda$ paraméterrel, harmadfokú rezolvens. **Ötöd- és magasabb fokra** nincs általános gyökképlet (Abel–Ruffini); Galois-elmélet.
- **Körosztási polinomok:** $\Phi_n$ gyökei a primitív $n$-edik egységgyökök, $\deg\Phi_n = \varphi(n)$, $x^n - 1 = \prod_{d \mid n}\Phi_d$, egész együtthatósak és irreducibilisek $\mathbb{Q}$ felett.

## Feladatok az V. részhez

1. Ellenőrizzük a Viète-formulákat az $x^3 + 2x^2 - 5x - 6$ polinomon, ha tudjuk, hogy gyökei $-1$, $2$ és $-3$. Mennyi a $2x^3 - 3x^2 + 4x - 5$ polinom gyökei reciprokainak összege?
2. Legyenek $\lambda_1, \lambda_2, \lambda_3$ az $x^3 - x - 1$ polinom gyökei. Számítsuk ki $\lambda_1^2 + \lambda_2^2 + \lambda_3^2$ és $\lambda_1^3 + \lambda_2^3 + \lambda_3^3$ értékét a gyökök kiszámolása nélkül.
3. Keressük meg azt a legfeljebb másodfokú polinomot, amelyre $f(0) = 1$, $f(1) = 3$, $f(2) = 9$. Egészítsük ki Newton-módszerrel úgy, hogy $f(3) = 20$ is teljesüljön.
4. Oldjuk meg a Cardano-képlettel az $x^3 - 3x - 18 = 0$ egyenletet.
5. Az $x = y - 1$ helyettesítéssel hozzuk hiányos alakra az $x^3 + 3x^2 - 6x - 8 = 0$ egyenletet, és oldjuk meg.
6. Számítsuk ki $\Phi_9(x)$-et és $\Phi_{10}(x)$-et a faktorizációs tétel segítségével.
7. Bizonyítsuk be, hogy ha $p$ prím és $k \ge 1$, akkor $\Phi_{p^k}(x) = \Phi_p\left(x^{p^{k-1}}\right)$, és ezért $\Phi_{p^k}(1) = p$.

### Megoldási útmutatók

1. $e_1 = -2 = -a_2$, $e_2 = -2 + 3 - 6 = -5 = a_1$, $e_3 = 6 = -a_0$. ✓ A reciprokok összege $\frac{e_2}{e_3}$, ahol $e_2 = \frac{4}{2} = 2$ és $e_3 = -\frac{-5}{2} = \frac{5}{2}$; tehát $\frac{4}{5}$.
2. $e_1 = 0$, $e_2 = -1$, $e_3 = 1$. $p_2 = e_1^2 - 2e_2 = 2$; a Newton-azonosság szerint $p_3 = e_1p_2 - e_2p_1 + 3e_3 = 0 - 0 + 3 = 3$.
3. $f(x) = 2x^2 + 1$. Newton-kiegészítés: $f(3) = 19$ helyett $20$ kell, $g(3) = 3 \cdot 2 \cdot 1 = 6$, így $c = \frac{1}{6}$, és az új polinom $2x^2 + 1 + \frac{x(x - 1)(x - 2)}{6}$.
4. $a = -3$, $b = -18$; $\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 = 81 - 1 = 80$; $u^3 = 9 + 4\sqrt{5}$, $v^3 = 9 - 4\sqrt{5}$. Mivel $\left(\frac{3 + \sqrt{5}}{2}\right)^3 = 9 + 4\sqrt{5}$, a valós gyök $\frac{3 + \sqrt{5}}{2} + \frac{3 - \sqrt{5}}{2} = 3$; a másik kettő $x^2 + 3x + 6 = 0$ gyökei: $\frac{-3 \pm i\sqrt{15}}{2}$.
5. $a = -6 - 3 = -9$, $b = 2 + 6 - 8 = 0$: $y^3 - 9y = 0$, $y \in \{0, 3, -3\}$, így $x \in \{-1, 2, -4\}$.
6. $\Phi_9 = \frac{x^9 - 1}{\Phi_1\Phi_3} = \frac{x^9 - 1}{x^3 - 1} = x^6 + x^3 + 1$. $\Phi_{10} = \frac{x^{10} - 1}{\Phi_1\Phi_2\Phi_5} = \frac{x^{10} - 1}{(x^5 - 1)(x + 1)} = \frac{x^5 + 1}{x + 1} = x^4 - x^3 + x^2 - x + 1$.
7. A primitív $p^k$-adik egységgyökök pontosan azok a $z$-k, amelyekre $z^{p^{k-1}}$ primitív $p$-edik egységgyök; ezért $\Phi_p(x^{p^{k-1}})$ gyökei éppen ezek, és mindkét polinom normált, $\varphi(p^k) = p^{k-1}(p - 1)$-edfokú. $x = 1$-et helyettesítve $\Phi_p(1) = 1 + 1 + \dots + 1 = p$.

---

# VI. RÉSZ: GEOMETRIAI SZERKESZTÉSEK

Az utolsó rész az egész félév anyagát egy régi, gyönyörű kérdésre alkalmazza: mit lehet megszerkeszteni körzővel és vonalzóval? Az algebrai nyelvre lefordított kérdésben a testek, a polinomok irreducibilitása (Schönemann–Eisenstein), a lineáris algebra (dimenzió) és a körosztási polinomok egyaránt szerepet kapnak — és a válasz kétezer éves rejtélyeket old meg.

## 19. Geometriai szerkesztések az algebra szemüvegén keresztül

Az ókori görög matematikusokat évezredeken át lázban tartotta néhány, látszólag rendkívül egyszerű geometriai feladat. Kikötésük szerint kizárólag egy ideális **körzőt** (amely „összecsukódik”, amint felemelik a papírról) és egy ideális **vonalzót** (amelyen nincsenek jelölések, így csak egyenesek húzására alkalmas) volt szabad használni. Három híres probléma különösen makacsnak bizonyult:

- **A kockakettőzés (déloszi probléma):** hogyan szerkeszthető egy adott kockánál pontosan kétszer akkora térfogatú kocka éle?
- **A szögharmadolás:** hogyan osztható fel egy tetszőleges szög három egyenlő részre?
- **A kör négyszögesítése:** hogyan szerkeszthető egy adott körrel egyenlő területű négyzet?

Bár a görögök zseniális geometriai trükköket ismertek, ezeket a feladatokat a megkövetelt eszközökkel nem tudták megoldani. Több mint kétezer évet kellett várni, amíg a XIX. században kiderült: a megoldás kulcsa nem a geometriában, hanem az **absztrakt algebrában** és a testbővítések elméletében rejlik — és a válasz mindhárom esetben az, hogy **a szerkesztés lehetetlen**.

### 19.1. A szerkeszthető számok teste

Hogyan fordíthatjuk le a körző és a vonalzó mozdulatait a matematika nyelvére? Tegyük fel, hogy adott két pont a síkon; tekintsük ezeket a komplex számsík $0$ és $1$ pontjának. Minden lépésben egyeneseket húzhatunk meglévő pontokon át, vagy köröket rajzolhatunk, amelyek középpontja és egy kerületi pontja már ismert. Az új pontokat ezen egyenesek és körök metszéspontjaiként kapjuk.

> **19.1 Definíció.** Egy $\alpha \in \mathbb{C}$ komplex számot **szerkeszthető számnak** nevezünk, ha (a komplex számsík pontjaként) véges sok lépésben megszerkeszthető körzővel és vonalzóval, a $0$ és $1$ pontokból kiindulva. (Ez ekvivalens azzal, hogy valós és képzetes része, mint szakaszhossz, szerkeszthető az egységszakaszból.)

Ha megnézzük a szerkesztési lépések algebrai megfelelőit, azt látjuk, hogy

1. két egyenes metszéspontja egy (kétismeretlenes) lineáris egyenletrendszer megoldása — ehhez csak a négy alapművelet ($+, -, \cdot, /$) kell;
2. egy egyenes és egy kör, vagy két kör metszéspontja egy másodfokú egyenletre vezet — ehhez négyzetgyökvonás is szükséges.

Fordítva, a négy alapművelet és a négyzetgyökvonás meg is szerkeszthető (párhuzamos szelők tétele, magasságtétel stb.). Ebből adódik a szerkeszthető számok legfontosabb algebrai tulajdonsága:

> **19.2 Tétel.** A szerkeszthető komplex számok halmaza **testet** alkot, amely a négyzetgyökvonásra is zárt: ha $\alpha, \beta$ szerkeszthető, akkor $\alpha + \beta$, $\alpha - \beta$, $\alpha\beta$, $\alpha/\beta$ ($\beta \ne 0$) és $\sqrt{\alpha}$ is az.

Ez azt jelenti, hogy egy szám pontosan akkor szerkeszthető, ha a racionális számokból kiindulva, az alapműveletek és véges sok egymásba ágyazott négyzetgyökvonás segítségével felírható. Például
$$\sqrt{1 + \sqrt{2}}, \qquad \frac{\sqrt{3} + \sqrt{5}}{2}, \qquad \sqrt{2 + \sqrt{2 + \sqrt{2}}}$$
szerkeszthetők. De vajon mi a helyzet a köbgyökökkel?

## 20. Az algebrai szám foka és a szerkeszthetőség kritériuma

Ahhoz, hogy egy $\alpha$ számról eldöntsük, felírható-e (egymásba ágyazott) négyzetgyökökkel, meg kell vizsgálnunk a hozzá tartozó legkisebb fokú polinomot.

> **20.1 Definíció.** Egy $\alpha \in \mathbb{C}$ számot **algebrai számnak** nevezünk, ha gyöke egy nem nulla, racionális együtthatós polinomnak. Az $\alpha$ **minimálpolinomja** az a legalacsonyabb fokú, normált $m(x) \in \mathbb{Q}[x]$ polinom, amelynek $\alpha$ gyöke. Az $\alpha$ algebrai szám **foka** a minimálpolinomjának foka; jele $\deg\alpha$.

Például $\sqrt{2}$ minimálpolinomja $x^2 - 2$, foka $2$; $\sqrt[3]{2}$ minimálpolinomja $x^3 - 2$ (lásd alább), foka $3$; egy racionális szám foka $1$. A minimálpolinom mindig irreducibilis $\mathbb{Q}$ felett (ha szorzatra bomlana, valamelyik tényezőnek $\alpha$ gyöke volna, és az kisebb fokú volna); megfordítva, ha egy normált, irreducibilis $\mathbb{Q}$ feletti polinomnak $\alpha$ gyöke, akkor az $\alpha$ minimálpolinomja.

Mivel a testbővítések általános elméletét még nem tanultuk, nézzük meg, mit jelent mindez a gyakorlatban, a **lineáris algebra** nyelvén! Amikor egy számhalmazhoz (például a racionális számok $\mathbb{Q}$ testéhez) hozzávesszük egy elemének négyzetgyökét (mondjuk $\sqrt{2}$-t), akkor az így kapott
$$\mathbb{Q}(\sqrt{2}) = \{a + b\sqrt{2} : a, b \in \mathbb{Q}\}$$
halmazt tekinthetjük $\mathbb{Q}$ feletti vektortérnek. Ez a halmaz a szorzásra és az osztásra is zárt (tehát testet alkot), hiszen
$$(a_1 + b_1\sqrt{2})(a_2 + b_2\sqrt{2}) = (a_1a_2 + 2b_1b_2) + (a_1b_2 + a_2b_1)\sqrt{2},$$
$$\frac{a_1 + b_1\sqrt{2}}{a_2 + b_2\sqrt{2}} = \frac{(a_1 + b_1\sqrt{2})(a_2 - b_2\sqrt{2})}{a_2^2 - 2b_2^2} = \frac{a_1a_2 - 2b_1b_2}{a_2^2 - 2b_2^2} + \frac{a_2b_1 - a_1b_2}{a_2^2 - 2b_2^2}\sqrt{2}$$
(a nevező nem nulla, ha $a_2 + b_2\sqrt{2} \ne 0$, mert $\sqrt{2}$ irracionális). Vegyük észre, hogy ez a vektortér pontosan **kétdimenziós**: az $\{1, \sqrt{2}\}$ elemek lineárisan független bázist alkotnak (egyetlen racionális számmal sem tudjuk kifejezni $\sqrt{2}$-t).

Ha ebből a testből veszünk egy újabb négyzetgyököt (például $\sqrt{1 + \sqrt{2}}$-t, amely nincs benne $\mathbb{Q}(\sqrt{2})$-ben), akkor az új vektortér dimenziója $\mathbb{Q}$ felett az előző kétszerese, $2 \times 2 = 4$ lesz (bázisa például $1, \sqrt{2}, \beta, \sqrt{2}\beta$, ahol $\beta = \sqrt{1 + \sqrt{2}}$).

Mivel a szerkesztés minden egyes lépése (körök és egyenesek metszéspontjainak kiszámítása) legfeljebb egy újabb négyzetgyökvonást jelent, az egymás után végrehajtott lépésekkel kapott számtestek dimenziója $\mathbb{Q}$ felett minden lépésben **legfeljebb megduplázódik** (vagy változatlan marad). Így véges sok négyzetgyökvonás után olyan testhez jutunk, amelynek dimenziója a racionális számok felett szükségképpen $2$ egy hatványa: $1, 2, 4, 8, 16, \dots$ Ha egy $\alpha$ szám benne van ebben a testben, akkor az ő „generálási mérete”, a minimálpolinomjának foka sem lehet nagyobb a teljes tér dimenziójánál, sőt (a testbővítések úgynevezett fokszámtétele szerint) **osztója** annak. Ebből a lineáris algebrai összefüggésből következik a Pierre Wantzel által 1837-ben bizonyított kritérium:

> **20.2 Tétel (Wantzel-kritérium).** Ha az $\alpha$ algebrai szám szerkeszthető körzővel és vonalzóval, akkor $\alpha$ foka a racionális számtest felett szükségképpen $2$ valamely nemnegatív egész kitevős hatványa:
> $$\deg\alpha = 2^m \qquad (m \in \mathbb{N}).$$

**Megjegyzés.** A megfordítás általában nem igaz (ennek pontos feltételét a Galois-elmélet adja meg, másod- vagy harmadévben), de a tétel kiválóan alkalmas arra, hogy bizonyos számokról bebizonyítsuk: **lehetetlen őket megszerkeszteni.**

### 20.1. Az ókori problémák algebrai bukása

**A kockakettőzés (déloszi probléma).** Egy egységnyi élű kocka térfogata $1$. A kétszer akkora térfogatú kocka $x$ élhosszára $x^3 = 2$, azaz $x = \sqrt[3]{2}$. Ennek $\mathbb{Q}$ feletti minimálpolinomja $f(x) = x^3 - 2$, amely a Schönemann–Eisenstein-kritérium szerint ($p = 2$) irreducibilis $\mathbb{Q}[x]$-ben. Így $\sqrt[3]{2}$ foka pontosan $3$, ami nem kettőhatvány. A Wantzel-kritérium szerint tehát: **a kockakettőzés körzővel és vonalzóval lehetetlen!**

**A szögharmadolás rejtélye.** Felosztható-e minden szög három egyenlő részre? Megmutatjuk, hogy a $60°$-os szög **nem** harmadolható, azaz a $20°$-os szög nem szerkeszthető. A trigonometriából ismert háromszoros szög képlete:
$$\cos(3\alpha) = 4\cos^3\alpha - 3\cos\alpha.$$
Ha $\alpha = 20°$, akkor $3\alpha = 60°$, és $\cos 60° = \frac{1}{2}$. Legyen $x = \cos 20°$; ekkor
$$\frac{1}{2} = 4x^3 - 3x \quad \Longrightarrow \quad 8x^3 - 6x - 1 = 0.$$
Az $y = 2x$ helyettesítéssel az egyenlet $y^3 - 3y - 1 = 0$ alakú. A racionális gyökteszt szerint ennek racionális gyöke csak $\pm 1$ lehetne, de $1 - 3 - 1 = -3 \ne 0$ és $-1 + 3 - 1 = 1 \ne 0$; egy harmadfokú polinom pedig, amelynek nincs racionális gyöke, irreducibilis $\mathbb{Q}$ felett (ha felbontható volna, lenne elsőfokú tényezője, azaz racionális gyöke). Tehát $y = 2\cos 20°$ — és így $\cos 20°$ is — pontosan harmadfokú algebrai szám. Mivel a fok nem $2^m$ alakú, a Wantzel-kritérium szerint $\cos 20°$ nem szerkeszthető.

> **20.3 Következmény.** Mivel egy szög szerkesztése ekvivalens a koszinuszának (mint szakaszhossznak) a szerkesztésével, **a tetszőleges szög harmadolása körzővel és vonalzóval általában lehetetlen.** (Bizonyos szögeké persze lehetséges: például a $90°$-os szög harmadolható, mert a $30°$-os szög szerkeszthető.)

**A kör négyszögesítése.** Az egységsugarú kör területe $\pi$, így a vele egyenlő területű négyzet oldala $\sqrt{\pi}$. Ha ez szerkeszthető volna, akkor $\pi = (\sqrt{\pi})^2$ is szerkeszthető, tehát algebrai szám volna. Ferdinand von Lindemann azonban 1882-ben bebizonyította, hogy **$\pi$ transzcendens** (nem gyöke semmilyen nem nulla racionális együtthatós polinomnak). Így a kör négyszögesítése is lehetetlen — ehhez azonban már a Wantzel-kritériumnál jóval mélyebb eszköz kell.

## 21. Gauss diadala: a szabályos 17-szög szerkeszthetősége

Carl Friedrich Gauss még tinédzser volt, amikor 1796-ban rájött, hogy a szabályos $n$-szög szerkeszthetősége teljesen egyenértékű az $x^n - 1 = 0$ egyenlet gyökeinek, az $n$-edik egységgyököknek a szerkeszthetőségével (a szabályos $n$-szög csúcsai az egységkörön éppen ezek). Tudjuk, hogy a primitív $n$-edik egységgyökök a $\Phi_n(x)$ körosztási polinom gyökei, amelynek foka $\varphi(n)$, és amely irreducibilis; így egy primitív $n$-edik egységgyök foka éppen $\varphi(n)$.

Gauss megmutatta, hogy a szabályos $n$-szög pontosan akkor szerkeszthető, ha a $\Phi_n(x)$ körosztási polinom gyökei egymásba ágyazott másodfokú bővítésekkel elérhetők, ami csakis akkor lehetséges, ha **$\varphi(n)$ maga is $2$ hatványa**. Ez elvezet a ritka és különleges **Fermat-prímekhez**, amelyek $F_k = 2^{2^k} + 1$ alakúak ($k \in \mathbb{N}$); ilyen prím például a $3, 5, 17, 257, 65537$. (A *Számelmélet Tankönyv* 2. fejezete szerint ha $2^a + 1$ prím, akkor $a$ kettőhatvány; és $p$ prímre $\varphi(p) = p - 1$ pontosan akkor kettőhatvány, ha $p$ Fermat-prím.)

> **21.1 Tétel (Gauss–Wantzel-tétel).** A szabályos $n$-szög ($n \ge 3$) pontosan akkor szerkeszthető körzővel és vonalzóval, ha $n$ felírható $2$ egy hatványának és tetszőleges számú **különböző** Fermat-prímnek a szorzataként:
> $$n = 2^k \cdot p_1 \cdot p_2 \cdots p_r.$$

(Az elégségességet Gauss bizonyította 1801-ben, a szükségességet Wantzel 1837-ben. A feltétel ekvivalens azzal, hogy $\varphi(n)$ kettőhatvány.)

Ezért szerkeszthető a szabályos háromszög ($\varphi(3) = 2$), a szabályos ötszög ($\varphi(5) = 4$), és a híres szabályos 17-szög is, hiszen $\varphi(17) = 16 = 2^4$. Nem szerkeszthető viszont például a szabályos hétszög ($\varphi(7) = 6$) és a szabályos kilencszög ($\varphi(9) = 6$ — ez egyben a $20°$-os szög szerkeszthetetlenségének újabb bizonyítéka, hiszen a kilencszög középponti szöge $40°$). A $40$-nél nem nagyobb $n$-ek közül a szabályos $n$-szög pontosan a következő esetekben szerkeszthető:
$$n = 3, 4, 5, 6, 8, 10, 12, 15, 16, 17, 20, 24, 30, 32, 34, 40.$$

**Gauss képlete.** Gauss konkrétan meg is adta $\cos\frac{2\pi}{17}$ értékét egymásba ágyazott négyzetgyökökkel:
$$16\cos\frac{2\pi}{17} = -1 + \sqrt{17} + \sqrt{34 - 2\sqrt{17}} + 2\sqrt{17 + 3\sqrt{17} - \sqrt{34 - 2\sqrt{17}} - 2\sqrt{34 + 2\sqrt{17}}}.$$
Mivel csak négyzetgyökök szerepelnek benne, a 19.2. Tétel szerint $\cos\frac{2\pi}{17}$ szerkeszthető, és vele a szabályos 17-szög is. Gauss állítólag annyira büszke volt erre a felfedezésére, hogy azt kérte, a sírkövére egy szabályos 17-szöget véssenek (a braunschweigi Gauss-emlékmű talapzatán végül egy 17-ágú csillag látható).

## A VI. rész összefoglalása

- **Szerkeszthető számok:** a $0$-ból és $1$-ből körzővel és vonalzóval kapható komplex számok; testet alkotnak, amely zárt a négyzetgyökvonásra. Egy szám pontosan akkor szerkeszthető, ha racionálisokból alapműveletekkel és véges sok egymásba ágyazott négyzetgyökvonással megkapható.
- **Algebrai szám foka:** a minimálpolinom (legkisebb fokú normált $\mathbb{Q}$-beli polinom) foka. **Wantzel:** szerkeszthető szám foka $2$-hatvány. (Indok: minden négyzetgyökvonás legfeljebb megduplázza a dimenziót $\mathbb{Q}$ felett.)
- **A három ókori probléma:** a kockakettőzés ($\sqrt[3]{2}$, foka $3$) és a szögharmadolás ($\cos 20°$, foka $3$) lehetetlen; a kör négyszögesítése is ($\pi$ transzcendens, Lindemann 1882).
- **Gauss–Wantzel:** a szabályos $n$-szög pontosan akkor szerkeszthető, ha $n = 2^k p_1 \cdots p_r$ különböző Fermat-prímekkel, azaz ha $\varphi(n)$ kettőhatvány. Így szerkeszthető a 17-szög (Gauss, 1796), de nem szerkeszthető a 7- és a 9-szög.

## Feladatok a VI. részhez

1. Mutassuk meg, hogy $\sqrt{2 + \sqrt{3}}$ szerkeszthető, és határozzuk meg a minimálpolinomját. Mennyi a foka?
2. Határozzuk meg $\sqrt{2} + \sqrt{3}$ minimálpolinomját.
3. Szerkeszthető-e $\sqrt[3]{3}$? És $\sqrt[4]{3}$?
4. Az $51$, $85$, $255$, $257$, $1000$ számok közül melyikre szerkeszthető a szabályos $n$-szög?
5. Mutassuk meg, hogy a $3°$-os szög szerkeszthető, a $40°$-os viszont nem.
6. Bizonyítsuk be, hogy a szabályos ötszög szerkeszthető, közvetlenül a $\cos 72° = \frac{\sqrt{5} - 1}{4}$ képlet segítségével (II. rész, 6. feladat).

### Megoldási útmutatók

1. Csak négyzetgyököket tartalmaz, tehát szerkeszthető. $x^2 = 2 + \sqrt{3}$, $(x^2 - 2)^2 = 3$, azaz $x^4 - 4x^2 + 1 = 0$. Ez irreducibilis $\mathbb{Q}$ felett (nincs racionális gyöke, és az $(x^2 + ax + b)(x^2 - ax + b)$ alakú felbontás $b = \pm 1$, $a^2 = 6$ vagy $a^2 = 2$ miatt nem lehet racionális, az $(x^2 + b)(x^2 + d)$ alakú pedig $b, d = -2 \pm \sqrt{3}$ miatt szintén nem), így a fok $4 = 2^2$. (Egyébként $\sqrt{2 + \sqrt{3}} = \frac{\sqrt{6} + \sqrt{2}}{2}$.)
2. $x = \sqrt{2} + \sqrt{3}$, $x^2 = 5 + 2\sqrt{6}$, $(x^2 - 5)^2 = 24$: $x^4 - 10x^2 + 1$ (irreducibilis; a fok $4$).
3. $\sqrt[3]{3}$ nem: $x^3 - 3$ Eisenstein-polinom ($p = 3$), a fok $3$. $\sqrt[4]{3} = \sqrt{\sqrt{3}}$ igen: két egymásba ágyazott négyzetgyök.
4. $51 = 3 \cdot 17$, $85 = 5 \cdot 17$, $255 = 3 \cdot 5 \cdot 17$, $257$ (Fermat-prím) — mind szerkeszthető; $1000 = 2^3 \cdot 5^3$ nem, mert az $5$ többször szerepel ($\varphi(1000) = 400$ nem kettőhatvány).
5. $3° = 18° - 15°$; a $36°$ (szabályos ötszög) felezésével kapjuk a $18°$-ot, a $15° = 60° - 45°$ is szerkeszthető, és szögek különbsége szerkeszthető. A $40°$ nem: ha szerkeszthető volna, a felezésével a $20°$ is az volna (vagy: a szabályos kilencszög középponti szöge $40°$, és $\varphi(9) = 6$).
6. A $\cos 72°$ csak négyzetgyököt tartalmaz, tehát szerkeszthető, így a $72°$-os középponti szög és vele a szabályos ötszög is.

---

# UTÓSZÓ

Ezzel a félév anyagának végére értünk. Érdemes visszatekinteni, milyen utat jártunk be. A mátrixokkal és a Gauss-eliminációval kezdtük — egy számolási technikával, amely a kínai *Kilenc fejezet* óta lényegében változatlan. A polinomokkal és a komplex számokkal megértettük, miért van minden polinomegyenletnek megoldása a komplex számok körében, és hogyan alakítja a forgatás algebrává a geometriát. A determinánsok és a rang teljes választ adtak a lineáris egyenletrendszerek megoldhatóságára. Az absztrakt struktúrák — csoport, gyűrű, test, euklideszi gyűrű — megmutatták, hogy az egész számok, a polinomok és a maradékosztályok ugyanazoknak a törvényeknek engedelmeskednek, és hogy a számelmélet alaptétele mindenhol érvényes, ahol „jó” maradékos osztás van. Végül a reneszánsz megoldóképleteitől Galoisig, a körosztási polinomoktól Gauss 17-szögéig eljutottunk oda, hogy a lineáris algebra egyetlen dimenzióérve kétezer éves geometriai rejtélyeket döntött el.

Az algebra igazi ereje éppen ebben a szemléletben rejlik: ha egy problémát a megfelelő struktúra nyelvére fordítunk le, a megoldás sokszor szinte magától adódik. Ez a gondolkodásmód a matematika minden további területén — a Galois-elmélettől a kódelméletig és a kriptográfiáig — elkísér majd.

A könyv anyaga, felépítése és szelleme Gyarmati Katalin *Előadásvázlatok felsőbb fokú algebrából kezdőknek* című jegyzetéből származik, amelyet a szerző ezzel a jókívánsággal zár, és amelyet mi is szívesen átveszünk: *kellemes szünetet és sok sikert a vizsgákhoz!*
