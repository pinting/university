# Számelmélet Tankönyv

### Elemi számelmélet lépésről lépésre

**Gyarmati Katalin *Elemi Számelmélet* című egyetemi jegyzete alapján**

---

> *„A matematika a tudományok királynője, a számelmélet pedig a matematika királynője.”* — Carl Friedrich Gauss

---

## Előszó

Ez a könyv **Gyarmati Katalin** (ELTE TTK, Matematikai Intézet) *Elemi Számelmélet* című egyetemi jegyzetének (ELTE TTK, 2022) tankönyvszerű feldolgozása. A jegyzet a szerző első éves matematikus hallgatóknak tartott számelmélet-kurzusának teljes anyagát tartalmazza, sőt valamivel túl is lép rajta. **Az anyag felépítése, a fejezetek sorrendje, a definíciók, a tételek és bizonyításaik, a kidolgozott példák és a történeti kitérők Gyarmati Katalin munkáját követik; ennek a könyvnek minden érdeme az övé.** A feldolgozás csak annyit tesz hozzá, amennyit egy tankönyvnek egy előadásra vetíthető jegyzethez képest hozzá kell tennie: lassabban halad, minden új fogalom előtt megmutatja, milyen kérdés teszi szükségessé, a bizonyítások mögötti ötletet is kimondja, és több kidolgozott példát, illetve gyakorló feladatot ad. Az esetleges hibák a feldolgozásból erednek, nem az eredeti jegyzetből.

Gyarmati Katalin jegyzetében főként a következő művekre támaszkodott, amelyeket az érdeklődő olvasónak mi is jó szívvel ajánlunk: Martin Aigner és Günter M. Ziegler: *Bizonyítások a Könyvből*; Gyarmati Edit és Turán Pál: *Számelmélet*; Erdős Pál és Surányi János: *Válogatott fejezetek a számelméletből*; Freud Róbert és Gyarmati Edit: *Számelmélet*; Fried Katalin, Korándi József és Török Judit: *Számelmélet*; Fuchs László: *Bevezetés az algebrába és számelméletbe*; G. H. Hardy és E. M. Wright: *An Introduction to the Theory of Numbers*; Sárközy András: *Számelmélet és alkalmazásai*; Szalay Mihály: *Számelmélet*.

**A számozás megegyezik a jegyzetével.** A könyv 25 fejezete címében és tartalmában a jegyzet azonos számú fejezetének felel meg, és a definíciók, tételek, lemmák, feladatok számozását is átvettük (például a *2.7. Tétel* itt is Eukleidész II. tétele). Így a két szöveg párhuzamosan olvasható: ha a jegyzet egy pontja túl tömörnek tűnik, ugyanazon a számon itt megtalálható a részletesebb kifejtés. A fejezeteket a könnyebb áttekinthetőség kedvéért nyolc nagyobb részbe csoportosítottuk; minden rész végén összefoglalás, gyakorló feladatok és megoldási útmutatók állnak.

### A szürke dobozok

A jegyzet több állítás bizonyítását házi feladatnak (a jegyzet rövidítésével: HF) hagyja, néhányat pedig csak kimond. Ezeket a bizonyításokat — és néhány olyan hasznos kiegészítést, amely a jegyzetben nem szerepel — **kiegészítésként** megírtuk, de világosszürke háttérrel elkülönítettük a szöveg többi részétől, például így:

::: kiegeszites
**Kiegészítés.** Az ilyen dobozok tartalma *nem szerepel* Gyarmati Katalin jegyzetében. A jegyzetben házi feladatként kitűzött vagy bizonyítás nélkül kimondott állítások igazolását, illetve a gondolatmenetek hiányzó lépéseit tartalmazzák. Első olvasáskor átugorhatók, de vizsgára készülve érdemes őket is végigolvasni — a házi feladatokat persze előbb érdemes önállóan megpróbálni.
:::

Ami szürke háttér nélkül szerepel, az a jegyzet anyaga, legfeljebb részletesebben kifejtve. Néhány helyen a történeti adatokat és a „mai rekordokat” (legnagyobb ismert prím, legjobb ismert becslések) pontosítottuk vagy frissítettük; ezeket a szövegben jelezzük.

### Hogyan használjuk ezt a könyvet?

**Lassan és ceruzával.** A számelmélet állításai sokszor annyira egyszerűen hangzanak, hogy az ember hajlamos átsiklani rajtuk. Minden tételt érdemes néhány kis számon kipróbálni, mielőtt a bizonyítását elolvassuk: a példákból gyakran kiderül, *miért* igaz az állítás, és melyik feltétel mire kell.

**A feltételekre figyelve.** A számelméletben a feltételek szinte mindig lényegesek: az Euler–Fermat-tételben az $(a,m) = 1$, a fokszámtételben az, hogy a modulus prím, a kínai maradéktételben az, hogy a modulusok páronként relatív prímek. A könyv a legtöbb ilyen helyen ellenpéldát is mutat arra, mi romlik el a feltétel nélkül.

**A feladatokkal.** Minden rész végén gyakorló feladatok és rövid megoldási útmutatók állnak. Az útmutatót csak akkor nézzük meg, ha már legalább negyedórát gondolkodtunk a feladaton.

### A könyvben használt jelölések

- $\mathbb{N} = \{0, 1, 2, \dots\}$ a természetes számok halmaza (a jegyzethez hasonlóan a $0$-t is természetes számnak tekintjük), $\mathbb{Z}^+ = \{1, 2, 3, \dots\}$ a pozitív egészeké, $\mathbb{Z}$ az egész számoké, $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$ a racionális, valós, illetve komplex számoké.
- $b \mid a$: $b$ osztója $a$-nak; $b \nmid a$: nem osztója.
- $(a, b)$: $a$ és $b$ legnagyobb közös osztója (több számra $(a_1, \dots, a_n)$); $[a, b]$: legkisebb közös többszörösük.
- $a \equiv b \pmod m$, röviden $a \equiv b \ (m)$: $a$ kongruens $b$-vel modulo $m$.
- $[x]$: az $x$ valós szám egészrésze, vagyis a legnagyobb $x$-nél nem nagyobb egész ($[3{,}7] = 3$, $[-3{,}7] = -4$).
- $\log x$: a természetes alapú logaritmus; $\log_2 x$: a kettes alapú.
- $|H|$: a véges $H$ halmaz elemszáma.

A definíciókat és a fontos tételeket a szövegtől elkülönítve, behúzott blokkban szedtük. A bizonyítások végét $\blacksquare$ jelzi.

---

# I. RÉSZ: ALAPOK

Az első rész a számelmélet „ábécéjét” rakja le. Megismerkedünk a teljes indukcióval, a prímszámokkal és a számelmélet alaptételével, a maradékos osztással, az euklideszi algoritmussal és a legnagyobb közös osztóval. Közben kiderül valami, ami elsőre meglepő: a prímszám iskolában tanult definíciója valójában *két különböző* tulajdonságot takar, amelyek az egész számok körében véletlenül egybeesnek, más „számkörökben” viszont szétválnak. A rész végére megértjük, miért.

## 1. Természetes számok

### A legrégebbi számelméleti emlék

A legkorábbi ismert számelméleti emlékünk egy Mezopotámiából származó agyagtábla-töredék, amely körülbelül i. e. 1800-ból való. A ma *Plimpton 322* néven ismert tábla olyan számokat tartalmaz, amelyekből úgynevezett **pitagoraszi számhármasok** olvashatók ki, vagyis olyan $a, b, c$ egész számok, amelyekre
$$a^2 + b^2 = c^2.$$
A táblán szereplő számok jóval nagyobbak annál, hogy egyszerű próbálgatással találták volna meg őket: készítőjüknek tehát valamilyen módszert kellett ismernie. A pitagoraszi számhármasok összes megoldását a 11. fejezetben fogjuk meghatározni — ez lesz az első nem lineáris egyenlet, amelynek az összes egész megoldását felírjuk.

### A Peano-axiómák

A mai számelmélet kiindulópontja a **természetes számok** halmaza:
$$\mathbb{N} = \{0, 1, 2, 3, 4, 5, 6, 7, \dots\}.$$
Ezeket mindenki „ismeri”. Kevésbé ismert, hogy a természetes számokat axiómákkal is le lehet írni, vagyis fel lehet sorolni néhány alapvető tulajdonságot, amelyekből minden más levezethető. A legismertebb ilyen rendszer Giuseppe Peano (1858–1932) olasz matematikus, logikus és nyelvész nevéhez fűződik, aki a matematika axiomatikus megalapozásának egyik úttörője volt.

> **A Peano-axiómák.**
>
> 1. A $0$ természetes szám.
> 2. Minden $n$ természetes számnak van egy **rákövetkezője** (egy $1$-gyel nagyobb szám), amely szintén természetes szám; jele $n'$.
> 3. A $0$ egyetlen természetes számnak sem rákövetkezője.
> 4. Ha $n' = m'$, akkor $n = m$ (különböző természetes számok rákövetkezői különbözők).
> 5. Ha a természetes számok valamely $M$ halmaza tartalmazza a $0$-t, és $n \in M$-ből mindig következik $n' \in M$, akkor $M$ az összes természetes számot tartalmazza.

Az első négy axióma szinte magától értetődő. A legmélyebb az 5. axióma, amelyet **a teljes indukció axiómájának** is neveznek. Szemléletesen azt mondja, hogy a $0$-ból a rákövetkezés ismétlésével minden természetes számhoz eljutunk: a $0$-tól „lépkedve” nincs olyan természetes szám, amely kimaradna.

### A teljes indukció mint bizonyítási módszer

Középiskolából ismert a **teljes indukció**. Ha egy $n$-től függő $A(n)$ állítást minden természetes $n$-re be akarunk bizonyítani, akkor elég két dolgot megmutatni:

- **Kezdő lépés:** $A(0)$ igaz (vagy általában: $A(n_0)$ igaz a legkisebb szóba jövő $n_0$-ra).
- **Indukciós lépés:** minden $k$-ra, ha $A(k)$ igaz (ez az **indukciós feltevés**), akkor $A(k+1)$ is igaz.

Miért működik ez? Legyen $M$ azon természetes számok halmaza, amelyekre $A(n)$ igaz. A kezdő lépés szerint $0 \in M$, az indukciós lépés szerint $k \in M$-ből $k + 1 \in M$ következik. Az 5. axióma szerint ekkor $M = \mathbb{N}$, vagyis az állítás minden természetes számra igaz. A teljes indukció tehát nem „trükk”, hanem a természetes számok egy alapvető tulajdonságának, az 5. axiómának a közvetlen alkalmazása. Ugyanígy igazolható a módszer akkor is, ha a kezdő lépés nem $0$-ról, hanem egy $n_0$ számról indul: ekkor az állítás minden $n \ge n_0$ egészre igaz.

Az első *explicit* teljes indukciós bizonyítás Francesco Maurolicótól (1494–1575), a görög származású szicíliai matematikustól és csillagásztól származik, *Arithmeticorum libri duo* című, 1575-ben megjelent művéből. Ő a következő állítást igazolta:

> **1.1. Állítás.** Az első $n$ páratlan szám összege $n^2$:
> $$1 + 3 + 5 + \dots + (2n - 1) = n^2.$$

A történelmi utat bejárva mi is teljes indukcióval bizonyítjuk az állítást.

*Bizonyítás.* **Kezdő lépés:** $n = 1$-re a bal oldal $1$, a jobb oldal $1^2 = 1$, tehát az állítás igaz.

**Indukciós lépés:** tegyük fel, hogy az állítás igaz $n = k$-ra, azaz
$$1 + 3 + 5 + \dots + (2k - 1) = k^2. \qquad (1.1)$$
Ebből be kell bizonyítanunk, hogy $n = k + 1$-re is igaz, vagyis hogy
$$1 + 3 + 5 + \dots + (2k - 1) + (2(k + 1) - 1) = (k + 1)^2. \qquad (1.2)$$
Adjuk hozzá (1.1) mindkét oldalához a következő páratlan számot, $2(k+1) - 1 = 2k + 1$-et:
$$1 + 3 + 5 + \dots + (2k - 1) + (2k + 1) = k^2 + 2k + 1.$$
A jobb oldalon éppen $(k + 1)^2$ áll, így (1.1)-ből valóban következik (1.2). Ezzel az állítást teljes indukcióval igazoltuk. $\blacksquare$

**Egy kép a képlet mögött.** Az állítás szemléletesen is látható. Rakjunk ki egy $k \times k$-as négyzetet pöttyökből; ha a jobb oldalára és a tetejére egy-egy új sort teszünk, plusz a sarokba egy pöttyöt, akkor $(k+1) \times (k+1)$-es négyzetet kapunk, és éppen $k + k + 1 = 2k + 1$ új pöttyöt használtunk fel. A négyzetszámok tehát úgy „nőnek”, hogy mindig a következő páratlan számot adjuk hozzájuk — ez pontosan az indukciós lépés tartalma.

### Teljes indukció a számelméletben: egy feladat

A köztudatban az elemi számelmélet főként oszthatósági vizsgálatokkal dolgozik. Ritkábban használt, de nagyon erős módszer a teljes indukció is. Lássunk egy példát, amelyben az indukció egy *nagyságrendi becslést* igazol.

> **1.2. Feladat.** Mely $n$ természetes számokra teljesül, hogy $3^n + 4^n = 5^n$?

*Megoldás.* Az első lépés, amely szinte minden számelméleti feladatnál segít: nézzük meg az állítást az első néhány természetes számra!

| $n$ | $3^n + 4^n$ | $5^n$ | egyenlők? |
|---|---|---|---|
| $0$ | $1 + 1 = 2$ | $1$ | nem |
| $1$ | $3 + 4 = 7$ | $5$ | nem |
| $2$ | $9 + 16 = 25$ | $25$ | **igen** |
| $3$ | $27 + 64 = 91$ | $125$ | nem |
| $4$ | $81 + 256 = 337$ | $625$ | nem |
| $5$ | $243 + 1024 = 1267$ | $3125$ | nem |
| $6$ | $729 + 4096 = 4825$ | $15625$ | nem |

A táblázatból azt sejtjük, hogy $n \ge 3$ esetén $5^n$ „elhúz” $3^n + 4^n$-től. Ezt teljes indukcióval igazoljuk:

> **1.3. Állítás.** Ha $n \ge 3$, akkor $3^n + 4^n < 5^n$.

*Bizonyítás.* **Kezdő lépés:** $n = 3$-ra $3^3 + 4^3 = 27 + 64 = 91 < 125 = 5^3$.

**Indukciós lépés:** tegyük fel, hogy valamely $k \ge 3$-ra
$$3^k + 4^k < 5^k. \qquad (1.3)$$
Belátjuk, hogy ekkor $3^{k+1} + 4^{k+1} < 5^{k+1}$. Valóban, (1.3)-at felhasználva:
$$3^{k+1} + 4^{k+1} = 3 \cdot 3^k + 4 \cdot 4^k < 4 \cdot 3^k + 4 \cdot 4^k = 4 \cdot (3^k + 4^k) < 4 \cdot 5^k < 5 \cdot 5^k = 5^{k+1}. \ \blacksquare$$

Figyeljük meg az indukciós lépés ötletét: a bal oldalon a $3^k$-t „rontottuk” $4 \cdot 3^k$-ra, hogy a két tagból közös szorzót emelhessünk ki, és ezzel visszavezettük az állítást az indukciós feltevésre. Az $n = 0, 1, 2$ eseteket a táblázatból már láttuk, így **a feladat egyetlen megoldása $n = 2$.**

**Tanulság.** Ha egy számelméleti feladatban az egyszerű oszthatósági vizsgálatok nem, vagy csak részben vezetnek eredményre, gyakran segít a **nagyságrendi becslés**: megmutatjuk, hogy elég nagy $n$-re az egyik oldal már biztosan nagyobb a másiknál, és a kis eseteket egyenként végignézzük.

### Az erős indukció

A következő fejezetben az indukció egy kissé módosított formáját is használni fogjuk. Az **erős (teljes) indukcióban** az indukciós lépésben nemcsak $A(k-1)$-et, hanem az összes korábbi $A(n_0), A(n_0 + 1), \dots, A(k - 1)$ állítást feltehetjük, és ebből kell $A(k)$-t igazolnunk. Ez a módszer is helyes: ha a $B(k)$ állítás azt jelenti, hogy „$A(n_0), \dots, A(k)$ mind igaz”, akkor a $B$-re vonatkozó közönséges indukció éppen az erős indukció. Akkor hasznos, ha egy szám tulajdonságát nem a *közvetlen elődjéből*, hanem valamilyen *kisebb* számból (például egy osztójából) tudjuk levezetni.

## 2. Prímszámok (alapok)

### Oszthatóság

Az **egész számok** halmaza már nemcsak a $0$-t és a pozitív számokat, hanem a negatívokat is tartalmazza:
$$\mathbb{Z} = \{\dots, -3, -2, -1, 0, 1, 2, 3, \dots\}.$$
Az egész számok körében az összeadás, a kivonás és a szorzás mindig elvégezhető, az osztás azonban nem: $7 : 2$ már nem egész. Ezért érdemes külön nevet adni annak, amikor az osztás „kijön”.

> **2.1–2.2. Definíció (oszthatóság).** Legyen $a, b \in \mathbb{Z}$. Azt mondjuk, hogy $a$ **osztható** $b$-vel (más szóval $b$ **osztója** $a$-nak, illetve $a$ **többszöröse** $b$-nek), ha
> $$\exists\, c \in \mathbb{Z}: \quad a = bc.$$
> Jelölése: $b \mid a$. Ha ilyen $c$ nincs, azt írjuk: $b \nmid a$.

(A $\exists$ jel jelentése „létezik”, a $\forall$ jelé „minden”.)

**Példák.** $3 \mid 12$, mert $12 = 3 \cdot 4$; $-4 \mid 8$, mert $8 = (-4)\cdot(-2)$; $5 \nmid 12$. Minden $a$ egész szám osztója a $0$-nak, hiszen $0 = a \cdot 0$; speciálisan $0 \mid 0$ is igaz. Ez nem mond ellent annak, hogy „nullával nem osztunk”: a $0 \mid 0$ állítás nem osztást jelent, csak azt, hogy van olyan $c$, amelyre $0 = 0 \cdot c$ — és ilyen $c$ van (bármelyik). A definíció szerint viszont $0 \mid a$ csak $a = 0$ esetén igaz.

**Figyelem: a jelölés iránya.** A $b \mid a$ jelölésben az *osztó* áll elöl. A „$3 \mid 12$” jelentése „$3$ osztója $12$-nek”, és nem az, hogy „$3$ osztva $12$-vel”. Ez kezdetben gyakori hibaforrás.

### A prímszámok

Az első néhány prímszám:
$$2, 3, 5, 7, 11, 13, 17, 19, 23, 29, \dots$$
A középiskolában a prímszámokat így definiáltuk:

> **2.3. Definíció (prímszám, Eukleidész).** A $p$ egész szám **prímszám**, ha
>
> (i) $p > 1$, és
>
> (ii) $p$-nek nincs $1$-en és $p$-n kívül más pozitív osztója.

A definíció Eukleidésztől (i. e. 300 körül) származik. Az $1$-et szándékosan zárja ki: ha az $1$ prím volna, a prímtényezős felbontás nem lehetne egyértelmű, hiszen például $6 = 2 \cdot 3 = 1 \cdot 2 \cdot 3 = 1 \cdot 1 \cdot 2 \cdot 3$. Az $1$-nél nagyobb, nem prím egészeket **összetett** számoknak nevezzük.

A modern számelméletben szükségessé vált az oszthatóságot az egész számoknál bővebb számkörökben is vizsgálni. Ilyen számkör például
$$S = \{a + b\sqrt{5} : a, b \in \mathbb{Z}\},$$
amelyben két elem összege és szorzata is $S$-beli. Kiderül, hogy az ilyen számkörökben a prímszám „iskolai” definíciója nem a megfelelő fogalmat adja, ezért a mai számelmélet a prímszámokat kicsit másképp definiálja. Erről a 4. fejezetben lesz szó; addig maradjunk a klasszikus definíciónál.

### A prímtényezős felbontás létezése

> **2.4. Tétel.** Az $1$ kivételével minden pozitív egész szám felírható prímek szorzataként.

(Itt egy prímszámot önmagában is „egytényezős szorzatnak” tekintünk.)

*Bizonyítás.* A tételt $n$-re vonatkozó erős indukcióval igazoljuk.

**Kezdő lépés:** $n = 2$-re igaz, hiszen a $2$ prím, így prímtényezős felbontása önmaga.

**Indukciós lépés:** tegyük fel, hogy az állítást már beláttuk az $n = 2, 3, \dots, k - 1$ számokra, és bizonyítsuk $n = k$-ra. Ha $k$ prím, készen vagyunk. Ha nem, akkor van $1$-en és $k$-n kívül egy $m$ pozitív osztója, $2 \le m \le k - 1$. Ekkor $k = m r$ valamely $r$ pozitív egésszel, és mivel $m \ne 1$ és $m \ne k$, ezért $r = \frac{k}{m}$ sem $k$, sem $1$, vagyis szintén $2 \le r \le k - 1$. Az indukciós feltevés miatt $m$ is és $r$ is előáll prímek szorzataként, így szorzatuk, $k = mr$ is. $\blacksquare$

Figyeljük meg, hogy itt valóban erős indukcióra volt szükség: $k$ felbontását nem $k - 1$ felbontásából, hanem két *kisebb* szám, $m$ és $r$ felbontásából raktuk össze.

### A számelmélet alaptétele

> **2.5. Tétel (a számelmélet alaptétele, SzAT).** Az $1$-nél nagyobb természetes számok felírhatók prímek szorzataként, és ez a felírás a tényezők sorrendjétől eltekintve **egyértelmű**.

Az azonos prímeket hatványba összevonva minden $n > 1$ egyértelműen felírható
$$n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k}$$
alakban, ahol $p_1 < p_2 < \dots < p_k$ prímek és $\alpha_i \ge 1$ egészek. Ezt nevezzük $n$ **kanonikus alakjának**. Például
$$360 = 2^3 \cdot 3^2 \cdot 5, \qquad 2000 = 2^4 \cdot 5^3, \qquad 1001 = 7 \cdot 11 \cdot 13.$$

A tétel *létezési* részét az imént beláttuk; ami hiányzik, az az **egyértelműség**. Ez a következő tételből adódik, amely szintén Eukleidész *Elemek* című művében szerepel.

> **2.6. Tétel (Eukleidész I. tétele).** Ha $p$ prím és $p \mid ab$, akkor $p \mid a$ vagy $p \mid b$.

Eukleidész tehát már ismerte a SzAT-tal lényegében egyenértékű állításokat, de magát a SzAT-ot először Gauss mondta ki explicit módon, 1801-ben, *Disquisitiones Arithmeticae* című művében.

Érdemes megpróbálni Eukleidész I. tételét könyv és internet nélkül, önállóan bebizonyítani. Nem könnyű! A bizonyításhoz szükséges eszközt, az euklideszi algoritmust a 3. fejezetben építjük fel, és a tételt a 4. fejezet elején igazoljuk. Előbb azonban nézzük meg, hogyan következik belőle a prímtényezős felbontás egyértelműsége.

**Eukleidész I. tétele több tényezőre.** Ha $p$ prím és $p \mid a_1 a_2 \cdots a_n$, akkor $p \mid a_i$ valamelyik $i$-re. Ez $n$-re vonatkozó indukcióval adódik: $p \mid a_1 \cdot (a_2 \cdots a_n)$ miatt $p \mid a_1$ vagy $p \mid a_2 \cdots a_n$, és az utóbbi esetben az indukciós feltevés alkalmazható. Speciálisan, ha $p$ osztja a $q_1 q_2 \cdots q_\ell$ prímszorzatot, akkor $p$ osztja valamelyik $q_j$-t; mivel $q_j$ prím, egyetlen $1$-nél nagyobb osztója önmaga, tehát $p = q_j$.

*Az egyértelműség bizonyítása (Eukleidész I. tételének felhasználásával).* Indirekt módon bizonyítunk. Tegyük fel, hogy van olyan $1$-nél nagyobb természetes szám, amelynek két különböző kanonikus alakja van, és legyen $n$ a legkisebb ilyen:
$$n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k} = q_1^{\beta_1} q_2^{\beta_2} \cdots q_\ell^{\beta_\ell},$$
ahol a $p_i$-k egymástól különböző prímek, és a $q_j$-k is. Ekkor $p_1 \mid n = q_1^{\beta_1} \cdots q_\ell^{\beta_\ell}$, így az előbbi megjegyzés szerint $p_1$ egyenlő valamelyik $q_j$-vel; a jelölést alkalmasan választva feltehetjük, hogy $p_1 = q_1$.

Ezután belátjuk, hogy $\alpha_1 = \beta_1$. Ha például $\alpha_1 > \beta_1$ volna, akkor a két oldalt $p_1^{\beta_1}$-gyel elosztva
$$p_1^{\alpha_1 - \beta_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k} = q_2^{\beta_2} \cdots q_\ell^{\beta_\ell}$$
adódna. A bal oldalt $p_1$ osztja, így $p_1$ osztaná a jobb oldalt is, tehát egyenlő volna valamelyik $q_2, \dots, q_\ell$ prímmel. Ez lehetetlen, hiszen $p_1 = q_1$, és a $q_j$-k egymástól különbözők. Ugyanígy $\alpha_1 < \beta_1$ sem lehet. Tehát $p_1 = q_1$ és $\alpha_1 = \beta_1$.

Most mindkét oldalt elosztva $p_1^{\alpha_1}$-gyel, az $n / p_1^{\alpha_1}$ számra két felírást kapunk. Ha $n = p_1^{\alpha_1}$, akkor mindkét oldal $1$, és a két felírás azonos volt — ellentmondás. Egyébként $1 < n / p_1^{\alpha_1} < n$, és $n$ minimalitása miatt ennek a számnak a két felírása megegyezik, így $n$ két felírása is megegyezik. Ez ellentmond annak, hogy $n$-nek két különböző felírása van. $\blacksquare$

**Mire jó a SzAT?** Rengeteg dologra; két egyszerű példa. (1) Ha ismerjük $a$ és $b$ kanonikus alakját, akkor $b \mid a$ pontosan akkor, ha $b$ minden prímtényezője $a$-ban is szerepel, legalább akkora kitevővel. (2) Egy pozitív egész pontosan akkor négyzetszám, ha kanonikus alakjában minden kitevő páros. Mindkettő a felbontás egyértelműségén múlik — ezt a 11. fejezetben ki is fogjuk használni.

### 2.1. Eratoszthenész szitája

Eratoszthenész (i. e. 276 körül – i. e. 194 körül) az észak-afrikai Kürénében született, és az alexandriai könyvtár vezetőjeként működött. Matematikus, földrajztudós, csillagász, filozófus, költő és zenész volt egy személyben; nevéhez fűződik a Föld kerületének első tudományos meghatározása is. Fiatal korában „Bétának” becézték, arra utalva, hogy sok mindennel foglalkozik, de mindenben csak a második legjobb (a béta a görög ábécé második betűje); később sokoldalúságáért inkább „Pentatlosznak”, öttusázónak nevezték.

Eratoszthenész módszere, a **szita**, egy adott határig az összes prímszámot megadja, és finomított változataiban ma is az egyik leghatékonyabb eljárás erre a célra. Nézzük meg, hogyan határozhatjuk meg vele a prímeket $100$-ig.

1. Írjuk fel a számokat $1$-től $100$-ig. Az $1$ nem prím: húzzuk át.
2. Az első át nem húzott szám, a $2$ prím: karikázzuk be, és húzzuk át az összes többi páros számot.
3. Az első át nem húzott szám most a $3$: karikázzuk be, és húzzuk át a $3$ összes (még át nem húzott) többszörösét.
4. Az első át nem húzott szám az $5$: bekarikázzuk, és áthúzzuk a többszöröseit; majd ugyanígy a $7$-tel. (A $7$ többszörösei közül ekkor már csak a $49$ és a $91$ nincs áthúzva, hiszen a többinek van $7$-nél kisebb prímosztója.)
5. A következő bekarikázandó szám a $11$. A $11$ többszöröseit azonban már nem kell áthúzni: az a legkisebb összetett szám, amelynek nincs $11$-nél kisebb prímosztója, a $11^2 = 121$, ez pedig nagyobb $100$-nál. Ezért az összes még jelöletlen szám prím.

Az eredmény a $100$ alatti $25$ prímszám:
$$2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97.$$

Az 5. lépés észrevétele általában is igaz, és nagyon hasznos:

> **Állítás.** Ha az $m > 1$ egész összetett, akkor van olyan $p$ prímosztója, amelyre $p \le \sqrt{m}$.

*Bizonyítás.* Ha $m = ab$ valamely $1 < a \le b < m$ egészekkel, akkor $a^2 \le ab = m$, tehát $a \le \sqrt{m}$, és $a$ bármely prímosztója is legfeljebb $\sqrt{m}$, $m$-nek pedig szintén osztója. $\blacksquare$

Ezért ha $n$-ig akarjuk meghatározni az összes prímet, elég a $[\sqrt{n}]$-nél nem nagyobb prímekkel szitálni. Ugyanebből az is következik, hogy egy $m$ szám prím voltát úgy is eldönthetjük, hogy megnézzük, osztható-e valamelyik $\sqrt{m}$-nél nem nagyobb prímmel. Például a $221$ esetén elég a $2, 3, 5, 7, 11, 13$ prímeket kipróbálni ($\sqrt{221} < 15$): a $13$ osztja, $221 = 13 \cdot 17$. A $223$-at viszont egyik sem osztja, tehát a $223$ prím.

### 2.2. Elemi becslések a prímszámok számára

Eukleidész bebizonyította, hogy a prímszámok száma végtelen. Ezt a tételt szokás **Eukleidész II. tételének** is nevezni.

> **2.7. Tétel (Eukleidész II. tétele).** A természetes számok között végtelen sok prím van.

Erdős Pál gyakran emlegette, hogy Istennek van egy matematikakönyve — „a Könyv” —, amelyben minden tétel legszebb bizonyítása megtalálható. Martin Aigner és Günter M. Ziegler *Bizonyítások a Könyvből* című művükben arra vállalkoztak, hogy ebből a könyvből ízelítőt adjanak; Eukleidész II. tételére hat különböző bizonyítást is közölnek. Mi hármat fogunk megismerni. Az első magáé Eukleidészé.

*1. bizonyítás (Eukleidész).* Indirekt módon bizonyítunk. Tegyük fel, hogy csak véges sok prím létezik: $p_1, p_2, \dots, p_n$. Tekintsük az
$$A = p_1 p_2 \cdots p_n + 1$$
számot. Mivel $A > 1$, a 2.4. Tétel szerint van egy $q$ prímosztója. Ez a $q$ nem lehet egyik $p_i$ sem: ha $q = p_i$ volna, akkor $q$ osztaná a $p_1 p_2 \cdots p_n$ szorzatot is és $A$-t is, így a különbségüket is:
$$q \mid A - p_1 p_2 \cdots p_n = 1,$$
ami lehetetlen, hiszen egyetlen prím sem osztja az $1$-et. Tehát $q$ egy új prím, amely különbözik $p_1, \dots, p_n$-től — vagyis a bizonyítás elején mégsem soroltuk fel az összes prímet. Ez ellentmondás. $\blacksquare$

**Figyelem!** A bizonyítás *nem* azt állítja, hogy $p_1 p_2 \cdots p_n + 1$ prím. Az első néhány esetben az: $2 + 1 = 3$, $2 \cdot 3 + 1 = 7$, $2 \cdot 3 \cdot 5 + 1 = 31$, $2 \cdot 3 \cdot 5 \cdot 7 + 1 = 211$, $2 \cdot 3 \cdot 5 \cdot 7 \cdot 11 + 1 = 2311$ mind prímek, de
$$2 \cdot 3 \cdot 5 \cdot 7 \cdot 11 \cdot 13 + 1 = 30031 = 59 \cdot 509$$
már összetett. A bizonyítás csak annyit használ, hogy $A$-nak van prímosztója, és az nem lehet a felsoroltak közül való.

**Mit mond a bizonyítás a prímek nagyságáról?** Jelölje
$$p_1 = 2,\ p_2 = 3,\ p_3 = 5,\ \dots$$
a prímek növekvő sorozatát, azaz $p_n$ az $n$-edik prím. Eukleidész bizonyításából (ha az első $n$ prímre alkalmazzuk) az következik, hogy $p_1 p_2 \cdots p_n + 1$-nek van $p_n$-nél nagyobb prímosztója, tehát
$$p_{n+1} \le p_1 p_2 \cdots p_n + 1.$$
Ebből teljes indukcióval bebizonyítható, hogy
$$p_n < 2^{2^n}.$$
A teljes indukció kivitelezése a jegyzetben házi feladat (HF).

::: kiegeszites
**Kiegészítés: $p_n < 2^{2^n}$ bizonyítása.** Erős indukciót alkalmazunk. $n = 1$-re $p_1 = 2 < 4 = 2^{2^1}$. Ha az állítás $1, 2, \dots, n$-re igaz, akkor
$$p_{n+1} \le p_1 p_2 \cdots p_n + 1 < 2^{2^1} \cdot 2^{2^2} \cdots 2^{2^n} + 1 = 2^{2^1 + 2^2 + \dots + 2^n} + 1 = 2^{2^{n+1} - 2} + 1 < 2^{2^{n+1}},$$
ahol felhasználtuk, hogy $2^1 + 2^2 + \dots + 2^n = 2^{n+1} - 2$ (mértani sor), az utolsó lépésben pedig azt, hogy $2^{N-2} + 1 < 2^N$ minden $N \ge 2$-re (hiszen $2^N - 2^{N-2} = 3 \cdot 2^{N-2} > 1$). $\blacksquare$
:::

> **2.8. Definíció.** Jelölje $\pi(x)$ az $x$-nél nem nagyobb pozitív prímek számát (vagyis az $\{1, 2, \dots, [x]\}$ halmazba eső prímek számát).

Néhány érték: $\pi(1) = 0$, $\pi(2) = 1$, $\pi(3) = 2$, $\pi(4) = 2$, $\pi(5) = 3$, $\pi(10) = 4$, $\pi(100) = 25$, $\pi(1000) = 168$. A $\pi(x)$ függvény „lépcsős”: minden prímnél eggyel nő, közben állandó.

> **2.9. Állítás.** A $p_n < 2^{2^n}$ becslésből következik, hogy minden $x \ge 2$-re
> $$\pi(x) > \log_2 \log_2 x - 1.$$

::: kiegeszites
**Kiegészítés: a 2.9. Állítás bizonyítása (HF).** Legyen $x \ge 2$ és $n = [\log_2 \log_2 x]$; ekkor $n \ge 0$ és $n > \log_2 \log_2 x - 1$. Ha $n = 0$, akkor $\pi(x) \ge \pi(2) = 1 > 0 = n$. Ha $n \ge 1$, akkor $n \le \log_2 \log_2 x$ miatt $2^{2^n} \le x$, így $p_1 < p_2 < \dots < p_n < 2^{2^n} \le x$, vagyis legalább $n$ prím nem nagyobb $x$-nél: $\pi(x) \ge n$. Mindkét esetben $\pi(x) \ge n > \log_2 \log_2 x - 1$. $\blacksquare$
:::

A 2.9. Állítás nagyon gyenge becslés: $x = 10^{100}$-ra is csak annyit mond, hogy $\pi(x) > 7$. Az igazság ennél sokkal több. Jacques Hadamard és Charles-Jean de la Vallée Poussin 1896-ban, egymástól függetlenül, Bernhard Riemann ötleteire támaszkodva a következőt bizonyította:

> **2.10. Tétel (prímszámtétel).**
> $$\pi(x) \sim \frac{x}{\log x}.$$

A $\sim$ jel jelentése: a két oldal hányadosa $1$-hez tart, ha $x \to \infty$, azaz $\lim_{x \to \infty} \frac{\pi(x)}{x / \log x} = 1$. (Erről a 25. fejezetben részletesen lesz szó.) Szemléletesen: az $x$ körüli számok között „nagyjából minden $\log x$-edik” prím. A bizonyítás komplex függvénytant, a Riemann-féle zéta-függvényt használja, és messze túlmegy könyvünk keretein. Ebben és a 25. fejezetben azonban egyre élesebb *elemi* becsléseket adunk $\pi(x)$-re. A legjobb, amelyet be is bizonyítunk, Csebisev tételének az eredetinél kissé gyengébb formája:

> **2.11. Tétel (Csebisev).** Ha $x \ge 2$, akkor
> $$0{,}34 \cdot \frac{x}{\log x} < \pi(x) < 4 \cdot \frac{x}{\log x}.$$

Ez a prímszámtételt egy konstans szorzó erejéig megközelíti. A felső becslésre adott bizonyításunk Erdős Pál és Kalmár László teljesen elemi gondolatmenete (amelyet ők maguk nem publikáltak, de több könyvben megjelent), az alsó becslésé Edmund Landaué. Mindkettőt Szalay Mihály *Számelmélet* című tankönyvének ismertetése nyomán, a 25. fejezetben mutatjuk be.

### A Fermat-számok

Eukleidész II. tételének második bizonyítása az úgynevezett Fermat-számokat használja.

> **2.12. Definíció.** Az $n$-edik **Fermat-szám**:
> $$F_n \stackrel{\text{def}}{=} 2^{2^n} + 1 \qquad (n = 0, 1, 2, \dots).$$

Az első néhány: $F_0 = 3$, $F_1 = 5$, $F_2 = 17$, $F_3 = 257$, $F_4 = 65537$, $F_5 = 4\,294\,967\,297$. A számok Pierre de Fermat (1601 vagy 1607 – 1665) francia jogászról kapták nevüket, aki bár rengeteget foglalkozott matematikával, foglalkozását tekintve a toulouse-i parlament (a helyi legfelsőbb bíróság) tagja volt. Fermat foglalkozott elsőként ezeknek a számoknak a számelméleti tulajdonságaival.

> **2.13. Tétel.** A Fermat-számok páronként relatív prímek, azaz $n \ne k$ esetén $(F_n, F_k) = 1$.

A bizonyítás a következő azonosságon múlik.

> **2.14. Lemma.** Minden $n \ge 1$-re
> $$F_0 F_1 F_2 \cdots F_{n-1} = F_n - 2 = 2^{2^n} - 1.$$

*Bizonyítás.* Az $a^2 - b^2 = (a - b)(a + b)$ azonosságot ismételten alkalmazva:
$$2^{2^n} - 1 = \left(2^{2^{n-1}} - 1\right)\left(2^{2^{n-1}} + 1\right) = \left(2^{2^{n-2}} - 1\right)\left(2^{2^{n-2}} + 1\right)\left(2^{2^{n-1}} + 1\right) = \dots$$
$$\dots = \left(2^{2^0} - 1\right)\left(2^{2^0} + 1\right)\left(2^{2^1} + 1\right)\cdots\left(2^{2^{n-1}} + 1\right) = 1 \cdot F_0 F_1 \cdots F_{n-1}.$$
A bal oldalon $F_n - 2$ áll, a jobb oldalon $F_0 F_1 \cdots F_{n-1}$. (Ugyanez indukcióval is megy: $n = 1$-re $F_0 = 3 = F_1 - 2$, és ha $F_0 \cdots F_{n-1} = F_n - 2$, akkor $F_0 \cdots F_{n-1} F_n = (F_n - 2) F_n = (2^{2^n} - 1)(2^{2^n} + 1) = 2^{2^{n+1}} - 1 = F_{n+1} - 2$.) $\blacksquare$

Például $F_0 F_1 F_2 = 3 \cdot 5 \cdot 17 = 255 = 257 - 2 = F_3 - 2$.

*A 2.13. Tétel bizonyítása.* Legyen $n > k$, és $d = (F_n, F_k)$. A Fermat-számok páratlanok, így $d$ is páratlan. Mivel $0 \le k \le n - 1$, ezért $F_k$ a $F_0 F_1 \cdots F_{n-1}$ szorzat egyik tényezője; így $d \mid F_k$-ból
$$d \mid F_0 F_1 \cdots F_{n-1} = F_n - 2$$
következik. Másrészt $d \mid F_n$. A két oszthatóságból
$$d \mid F_n - (F_n - 2) = 2.$$
A $2$-nek egyetlen páratlan pozitív osztója van, az $1$; így $d = 1$. $\blacksquare$

*Eukleidész II. tételének 2. bizonyítása.* Vegyük mindegyik Fermat-számnak egy-egy prímosztóját: $q_0 \mid F_0$, $q_1 \mid F_1$, $q_2 \mid F_2$, $\dots$ Mivel a Fermat-számok páronként relatív prímek, a $q_0, q_1, q_2, \dots$ prímek között nem lehet két egyenlő (egy közös prím mindkét megfelelő Fermat-számot osztaná). Végtelen sok különböző prímet kaptunk. $\blacksquare$

Ez a bizonyítás többet is ad: mivel $q_n \le F_n$, és a $q_0, \dots, q_{n-1}$ különböző prímek, a $2^{2^n}$-nél nem nagyobb prímek száma legalább $n$ — ez éppen az előbbi $p_n < 2^{2^n}$ típusú becslés.

> **2.15. Definíció.** Ha az $F_n = 2^{2^n} + 1$ Fermat-szám prím, akkor **Fermat-prímnek** nevezzük.

> **2.16. Feladat.** Igazoljuk, hogy ha $a \in \mathbb{N}$ és $2^a + 1$ prím, akkor $a$ szükségképpen kettőhatvány, vagyis $2^a + 1$ egy $2^{2^n} + 1$ alakú Fermat-prím.

A megoldást a fejezet végén ismertetjük; addig érdemes rajta gondolkodni.

Az ismert Fermat-prímek:
$$F_0 = 3, \quad F_1 = 5, \quad F_2 = 17, \quad F_3 = 257, \quad F_4 = 65537.$$
Fermat azt sejtette, hogy *minden* Fermat-szám prím, de Euler 1732-ben megmutatta, hogy
$$F_5 = 2^{32} + 1 = 4\,294\,967\,297 = 641 \cdot 6\,700\,417.$$
Ma tudjuk, hogy $F_5, F_6, \dots, F_{32}$ mind összetettek, de csak az első 12 Fermat-szám ($F_0, \dots, F_{11}$) prímtényezős felbontását ismerjük teljesen. A Fermat-számokkal kapcsolatban sok sejtés fogalmazódott meg:

> **2.17. Sejtés.** A Fermat-számok között $F_0, F_1, F_2, F_3, F_4$-en kívül nincs több prím.
>
> **2.18. Sejtés.** A Fermat-számok között végtelen sok prím van.
>
> **2.19. Sejtés.** A Fermat-számok között végtelen sok összetett van.

A 2.17. és a 2.18. Sejtés egymás ellentéte — és ma egyiket sem tudjuk bizonyítani vagy cáfolni. Sőt, még a 2.19. Sejtés is nyitott! Mindhárom reménytelenül nehéz; ha valaki mégis próbálkozni akar, a jegyzet szerzője a 2.19. Sejtést javasolja.

### A Mersenne-prímek

A prímek egy másik fontos csoportja Marin Mersenne (1588–1648) francia szerzetes, matematikus és fizikus nevét viseli. Mersenne jóval idősebb volt Fermat-nál, akivel levelezett, de sok más korabeli hírességgel is, többek között Galileo Galileivel. Rendszeresen találkozott a kor tudósaival és filozófusaival, és hosszú levelekben tájékoztatta őket a tudomány és a filozófia újdonságairól. Az elterjedt mondás szerint: *„Mersenne tudomására hozni valamit annyit jelent, mint egész Európa tudomására hozni.”*

> **2.20. Definíció.** Legyen $p$ prím. Ha $2^p - 1$ is prím, akkor $2^p - 1$-et **Mersenne-prímnek** nevezzük.

Például $2^2 - 1 = 3$, $2^3 - 1 = 7$, $2^5 - 1 = 31$, $2^7 - 1 = 127$ Mersenne-prímek, de $2^{11} - 1 = 2047 = 23 \cdot 89$ nem prím — tehát $p$ prím volta még nem elég ahhoz, hogy $2^p - 1$ prím legyen. Fordítva viszont igaz:

> **2.21. Feladat.** Ha $n$ természetes szám és $2^n - 1$ prím, akkor $n$ szükségképpen prím.

A 2.16. és a 2.21. Feladat megoldásához a következő nevezetes azonosságokra van szükség (ez a segítség, ha valaki még nem jött rá a megoldásra). Minden $n \ge 1$ egészre
$$a^n - b^n = (a - b)\left(a^{n-1} + a^{n-2}b + a^{n-3}b^2 + \dots + ab^{n-2} + b^{n-1}\right),$$
**páratlan** $n$-re pedig
$$a^n + b^n = (a + b)\left(a^{n-1} - a^{n-2}b + a^{n-3}b^2 - \dots - ab^{n-2} + b^{n-1}\right),$$
ahol a jobb oldali zárójelben az előjelek felváltva követik egymást. Vigyázat: az utóbbi azonosság csak páratlan $n$-re áll fenn! Páros $n$-re, például $n = 2$-re, $a^2 + b^2$-ből nem emelhető ki $a + b$.

A Mersenne-prímekkel kapcsolatos leghíresebb sejtés:

> **2.22. Sejtés.** Végtelen sok Mersenne-prím létezik.

A Mersenne-prímek a modern számelméletben is fontos szerepet játszanak: a legnagyobb ismert prímszámok szinte mind Mersenne-prímek. Ennek oka, hogy a $2^p - 1$ alakú számokra létezik egy speciális, nagyon gyors prímteszt (a Lucas–Lehmer-teszt). 2024 októberében találták meg az 52. ismert Mersenne-prímet, a $2^{136\,279\,841} - 1$ számot, amely több mint 41 millió jegyű.

### Eukleidész II. tételének harmadik bizonyítása

A következő szép és trükkös bizonyítás alapötlete Eulertől származik (1737), ebben a formában Erdős Pál fedezte fel újra 1938-ban. Megtalálható Hardy és Wright klasszikus könyvében, valamint Aigner és Ziegler már említett művében is. A bizonyítás többet ad, mint a prímek végtelenségét: abból az is kiderül, hogy a prímek reciprokainak összege végtelen, és alsó becslést is ad $\pi(x)$-re.

Jelölje továbbra is $p_1 = 2, p_2 = 3, p_3 = 5, p_4 = 7, \dots$ a prímek növekvő sorozatát. Rögzített $j$ esetén jelölje $N_j(x)$ azoknak az $1$ és $x$ közé eső természetes számoknak a számát, amelyek nem oszthatók a $p_{j+1}, p_{j+2}, \dots$ prímek egyikével sem, vagyis amelyeknek a prímtényezős felbontása
$$p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_j^{\alpha_j}$$
alakú (csak az első $j$ prím szerepelhet benne):
$$N_j(x) = \left|\{m : 1 \le m \le x \text{ és } m = p_1^{\alpha_1} \cdots p_j^{\alpha_j}\}\right|.$$

**A kulcsbecslés: $N_j(x) \le 2^j \sqrt{x}$.** Egy ilyen $m$-et írjunk fel $m = n^2 u$ alakban, ahol $n^2$ az $m$ legnagyobb négyzetszám osztója. Ekkor $u$-nak már nincs $1$-nél nagyobb négyzetszám osztója (különben $n^2$ nem volna a legnagyobb) — az ilyen számokat **négyzetmentesnek** nevezzük —, tehát
$$u = p_1^{\beta_1} p_2^{\beta_2} \cdots p_j^{\beta_j}, \qquad \beta_i \in \{0, 1\}.$$
Mivel minden $\beta_i$ csak kétféle értéket vehet fel, $u$ legfeljebb $2^j$-féle lehet. Másrészt $n^2 \le n^2 u = m \le x$, így $n \le \sqrt{x}$, tehát $n$ legfeljebb $[\sqrt{x}]$-féle lehet. Ezért $m = n^2 u$ legfeljebb $[\sqrt{x}] \cdot 2^j$-féle értéket vehet fel:
$$N_j(x) \le [\sqrt{x}] \cdot 2^j \le 2^j \sqrt{x}.$$

*Eukleidész II. tételének 3. bizonyítása.* Ha csak véges sok prím volna, $p_1, p_2, \dots, p_j$, akkor minden $1$ és $x$ közötti szám ezek szorzataként állna elő, tehát $N_j(x) = [x]$. A becslést felhasználva minden $x \ge 1$ egészre
$$x = N_j(x) \le 2^j \sqrt{x}, \qquad \text{azaz} \qquad \sqrt{x} \le 2^j, \qquad x \le 2^{2j}.$$
A bizonyítás tetszőleges $x$-re működik; $x > 2^{2j}$-t választva ellentmondásra jutunk. $\blacksquare$

> **2.23. Tétel.** A prímek reciprokainak összege végtelen:
> $$\frac{1}{2} + \frac{1}{3} + \frac{1}{5} + \frac{1}{7} + \frac{1}{11} + \dots = \infty.$$

*Bizonyítás.* Indirekt módon tegyük fel, hogy a sor konvergens:
$$\frac{1}{2} + \frac{1}{3} + \frac{1}{5} + \dots = A. \qquad (2.1)$$
Ekkor a részletösszegek $A$-hoz tartanak, így van olyan $j$, amelyre $\frac{1}{p_1} + \dots + \frac{1}{p_j} > A - \frac{1}{2}$, vagyis a sor maradéka
$$\frac{1}{p_{j+1}} + \frac{1}{p_{j+2}} + \dots < \frac{1}{2}.$$
Legyen $x$ pozitív egész. Az $1$ és $x$ közé eső, $p_i$-vel osztható számok száma $\left[\frac{x}{p_i}\right] \le \frac{x}{p_i}$. Így azoknak az $1$ és $x$ közé eső számoknak a száma, amelyek a $p_{j+1}, p_{j+2}, \dots$ prímek *valamelyikével* oszthatók, legfeljebb
$$\frac{x}{p_{j+1}} + \frac{x}{p_{j+2}} + \dots < \frac{x}{2}.$$
A többi szám, amely ezek egyikével sem osztható, tehát több mint $\frac{x}{2}$ darab van; ezek száma éppen $N_j(x)$. Az $N_j(x) \le 2^j \sqrt{x}$ becsléssel:
$$\frac{x}{2} < N_j(x) \le 2^j \sqrt{x}, \qquad \text{azaz} \qquad \sqrt{x} < 2^{j+1}, \qquad x < 2^{2(j+1)}.$$
Ez nagy $x$-re hamis — ellentmondás. $\blacksquare$

**Megjegyzés.** A 2.23. Tétel sokkal többet mond, mint Eukleidész II. tétele: a négyzetszámok reciprokösszege például véges ($\sum 1/n^2 = \pi^2/6$), tehát a prímek „sűrűbben” helyezkednek el a négyzetszámoknál. Ezt a 3. bizonyítás közvetlenül is mutatja.

> **2.24. Tétel.** Minden $n \ge 2$ egész számra
> $$\pi(n) \ge \frac{\log_2 n}{2} = \frac{\log n}{2 \log 2},$$
> és az $n$-edik prímre $p_n \le 4^n$.

Mivel $\pi$ lépcsős függvény, valós $x \ge 2$-re ebből $\pi(x) = \pi([x]) \ge \frac{\log_2 [x]}{2}$ következik. A 2.24. Tételben szereplő becslések nagyon gyengék — valójában $\pi(x) \sim \frac{x}{\log x}$ és $p_n \sim n \log n$ —, de már messze nem triviálisak, bizonyításuk komoly ötletet kíván.

*Bizonyítás.* Most is az $N_j(x) \le 2^j \sqrt{x}$ becslés a kulcs. Legyen $j = \pi(n)$. Ekkor minden $n$-nél nem nagyobb pozitív egész prímtényezői az első $j$ prím közül kerülnek ki, tehát $N_j(n) = n$. Így
$$n = N_{\pi(n)}(n) \le 2^{\pi(n)} \sqrt{n}, \quad \text{azaz} \quad \sqrt{n} \le 2^{\pi(n)}, \quad \text{vagyis} \quad \frac{\log_2 n}{2} = \log_2 \sqrt{n} \le \pi(n).$$
Most írjunk $n$ helyébe $p_n$-et! Mivel $\pi(p_n) = n$:
$$\frac{\log_2 p_n}{2} \le n, \qquad \log_2 p_n \le 2n, \qquad p_n \le 2^{2n} = 4^n. \ \blacksquare$$

A 25. fejezetben visszatérünk $\pi(x)$ becsléséhez, és bebizonyítjuk a 2.11. Tételt.

### 2.3. Prímképletek

Régi álma a matematikusoknak egy olyan „képlet”, amely csupa prímet ad. Vannak olyan polinomok, amelyek a változó sok egymás utáni értékére prímet adnak. A leghíresebb Eulertől (1772) származik:
$$f(x) = x^2 + x + 41.$$
Valóban:
$$f(0) = 41, \quad f(1) = 43, \quad f(2) = 47, \quad f(3) = 53, \quad f(4) = 61, \quad \dots$$
mind prímek. A jegyzet szerzője fiatalkorában gyakran hallotta a mondást: *„Egy fizikus már rég rávágta volna, hogy minden egész helyen prímet vesz fel a polinom.”* Az $x^2 + x + 41$ polinom a $0 \le x \le 39$ helyeken valóban prímeket ad, de $x = 40$-re
$$40^2 + 40 + 41 = 40 \cdot 41 + 41 = 41^2 = 1681,$$
ami nem prím. (Hogy $x = 40$-nél „el kell romlania”, az előre látható: $f(40) = 40 \cdot (40 + 1) + 41 = 41 \cdot 41$.)

Legendre (1798) hasonló polinomja az $x^2 - x + 41$, amely $x = 0$-tól $x = 40$-ig minden egész helyen prímet ad, mégpedig ugyanazt a 40 prímet, mint az $x^2 + x + 41$. A jegyzetben ez házi feladat: miért?

::: kiegeszites
**Kiegészítés: miért ugyanazok a prímek?** Legyen $g(x) = x^2 - x + 41$. Ekkor
$$g(x) = (x - 1)^2 + (x - 1) + 41 = f(x - 1),$$
tehát $g(0), g(1), \dots, g(40)$ éppen $f(-1), f(0), \dots, f(39)$. Itt $f(-1) = 1 - 1 + 41 = 41 = f(0)$, így a $41$ értéket $g$ kétszer veszi fel ($x = 0$-ban és $x = 1$-ben), a többi érték pedig $f(1), \dots, f(39)$. A $41$ felvett érték tehát összesen $40$ különböző prím, ugyanazok, mint $f(0), \dots, f(39)$.
:::

Szintén Legendre találta az $x^2 + x + 17$ polinomot, amely $x = 0$-tól $x = 15$-ig $16$ különböző prímet vesz fel (és $x = 16$-ra $16 \cdot 17 + 17 = 17^2$).

> **2.25. Feladat.** Létezik-e olyan egész együtthatós, egyváltozós, nem konstans polinom, amelynek minden pozitív egész helyen felvett értéke prím?

A választ (nem létezik) a 6. fejezetben, a kongruenciák segítségével bizonyítjuk be.

**Egy meglepő polinom.** Érdekességként megemlítjük, hogy Jurij Matyijaszevics 1970-ben bizonyított tételéből (amely Hilbert 10. problémáját oldotta meg) következik: létezik olyan többváltozós, egész együtthatós polinom, amelynek a változók *nemnegatív egész* értékeire felvett *pozitív* értékei pontosan a prímszámok. Egy ilyen 26 változós, 25-ödfokú polinomot J. P. Jones, D. Sato, H. Wada és D. Wiens adott meg 1976-ban:
$$(k + 2)\Big(1 - (wz + h + j - q)^2 - \big((gk + 2g + k + 1)(h + j) + h - z\big)^2 - \big(16(k+1)^3(k+2)(n+1)^2 + 1 - f^2\big)^2 - (2n + p + q + z - e)^2$$
$$- \big(e^3(e+2)(a+1)^2 + 1 - o^2\big)^2 - \big((a^2 - 1)y^2 + 1 - x^2\big)^2 - \big(16r^2y^4(a^2 - 1) + 1 - u^2\big)^2 - (n + \ell + v - y)^2$$
$$- \big((a^2 - 1)\ell^2 + 1 - m^2\big)^2 - (ai + k + 1 - \ell - i)^2 - \Big(\big((a + u^2(u^2 - a))^2 - 1\big)(n + 4dy)^2 + 1 - (x + cu)^2\Big)^2$$
$$- \big(p + \ell(a - n - 1) + b(2an + 2a - n^2 - 2n - 2) - m\big)^2 - \big(q + y(a - p - 1) + s(2ap + 2a - p^2 - 2p - 2) - x\big)^2$$
$$- \big(z + p\ell(a - p) + t(2ap - p^2 - 1) - pm\big)^2\Big).$$
A működés titka a szerkezetben rejlik: a polinom $(k + 2) \cdot (1 - \text{négyzetek összege})$ alakú, így csak akkor lehet pozitív, ha az összes négyzet $0$ — ekkor viszont az értéke $k + 2$, és a $14$ feltétel együtt éppen azt kódolja, hogy $k + 2$ prím. A polinom gyakorlati prímkeresésre persze teljesen alkalmatlan.

### A Goldbach-sejtés

A számelmélet egyik leghíresebb sejtése Christian Goldbach-tól származik, aki 1742-ben, Eulerhez írt levelében fogalmazta meg:

> **2.26. Sejtés (Goldbach-sejtés).** (I.) Minden $2$-nél nagyobb páros szám előáll két prímszám összegeként.
>
> (II.) Minden $5$-nél nagyobb páratlan szám előáll három prímszám összegeként.

Például $4 = 2 + 2$, $10 = 3 + 7 = 5 + 5$, $100 = 3 + 97$; $9 = 3 + 3 + 3$, $11 = 3 + 3 + 5$. Euler válaszában rámutatott, hogy (I.)-ből következik (II.): ha $n > 5$ páratlan, akkor $n - 3 > 2$ páros, így (I.) szerint $n - 3 = p + q$ két prímmel, tehát $n = 3 + p + q$. Az (I.) állítás, az úgynevezett „erős” Goldbach-sejtés máig nyitott (számítógéppel $4 \cdot 10^{18}$-ig ellenőrizték). A (II.) állítást, a „gyenge” Goldbach-sejtést Harald Helfgott 2013-ban bejelentett bizonyítása igazolta.

### A 2.16. és a 2.21. Feladat megoldása

*A 2.16. Feladat megoldása.* Tegyük fel, hogy $a$ nem kettőhatvány. Ekkor $a$-nak van egy $t \ge 3$ páratlan osztója: $a = tm$, ahol $1 \le m < a$. A páratlan kitevőre vonatkozó azonosság szerint
$$2^a + 1 = (2^m)^t + 1^t = (2^m + 1)\left((2^m)^{t-1} - (2^m)^{t-2} + \dots - 2^m + 1\right).$$
Mivel $1 \le m < a$, ezért $3 \le 2^m + 1 < 2^a + 1$, vagyis $2^m + 1$ valódi osztója $2^a + 1$-nek, így $2^a + 1$ összetett. Tehát ha $2^a + 1$ prím (és $a \ge 1$), akkor $a$ kettőhatvány. ($a = 0$-ra $2^0 + 1 = 2$ prím, és $0$ valóban nem kettőhatvány — a feladat állítása tehát $a \ge 1$-re értendő.) $\blacksquare$

*A 2.21. Feladat megoldása.* Tegyük fel, hogy $n$ összetett: $n = tm$, ahol $1 < t, m < n$. Ekkor
$$2^n - 1 = (2^m)^t - 1^t = (2^m - 1)\left((2^m)^{t-1} + (2^m)^{t-2} + \dots + 1\right).$$
Mivel $2 \le m < n$, ezért $3 \le 2^m - 1 < 2^n - 1$, így $2^m - 1$ valódi osztója $2^n - 1$-nek, tehát $2^n - 1$ összetett. (Az $n = 1$ esetben $2^1 - 1 = 1$ nem prím, $n = 0$-ra pedig $0$.) Vagyis ha $2^n - 1$ prím, akkor $n$ prím. $\blacksquare$

Például $2^{15} - 1 = 32767$-et osztja $2^3 - 1 = 7$ és $2^5 - 1 = 31$ is: $32767 = 7 \cdot 31 \cdot 151$.

## 3. Számelméleti alapfogalmak

### A maradékos osztás

Az egész számok körében az összeadás, a kivonás és a szorzás akárhányszor és egyértelműen elvégezhető, az osztás azonban nem mindig: két egész szám hányadosa általában kivezet az egész számok köréből. Van azonban az osztásnak olyan változata, amely nem igényel törteket: a **maradékos osztás**, amelyet az általános iskolában tanultunk.

Legyen $a$ és $b$ két pozitív egész. Ha $a \ge b$, vonjunk le $b$-t $a$-ból. Ha az $a - b$ különbség még mindig legalább $b$, vonjunk le újra $b$-t, és így tovább, amíg egy $0$ és $b - 1$ közé eső számhoz nem jutunk. Ha közben $q$-szor vontunk le, és $r$ maradt, akkor
$$a = bq + r, \qquad 0 \le r < b.$$
Ekkor azt mondjuk, hogy $a$-t $b$-vel osztva a **hányados** $q$, a **maradék** $r$. Ha $a < b$, akkor egyszer sem vonunk le: $q = 0$, $r = a$. Például $17 = 5 \cdot 3 + 2$: a $17$-et $5$-tel osztva a hányados $3$, a maradék $2$.

A maradékos osztás negatív $a$-ra is kiterjeszthető: ilyenkor $a$-hoz addig adunk $b$-t, amíg egy $0$ és $b - 1$ közé eső számhoz nem jutunk. Például $-17$-hez négyszer adva az $5$-öt $3$-at kapunk, így
$$-17 = 5 \cdot (-4) + 3.$$
**Figyelem:** a maradék mindig *nemnegatív*. A $-17 = 5 \cdot (-3) - 2$ felírás algebrailag helyes, de nem maradékos osztás, mert $-2 < 0$. A számegyenesen szemléltetve: $b$ többszörösei egyenlő közönként helyezkednek el, és $a$ maradéka azt adja meg, mennyivel van $a$ jobbra a tőle balra eső (vagy vele egyenlő) legközelebbi $b$-többszöröstől.

> **3.1. Tétel (Eukleidész, maradékos osztás).** Adott $a$ és $b \ne 0$ egész számokhoz léteznek olyan $q$ és $r$ egészek, hogy
> $$a = bq + r, \qquad 0 \le r < |b|.$$
> Ez a felírás egyértelmű.

Negatív $b$ esetén $q$ helyett $-q$-t írva a pozitív esetre vezethetjük vissza a létezést: például $17 = (-5) \cdot (-3) + 2$ és $-17 = (-5) \cdot 4 + 3$. A létezést tehát a fenti eljárás már megmutatta. Az egyértelműség bizonyításához, ha az alapoktól akarunk kezdeni, néhány nagyon egyszerű állításra van szükségünk.

### Az osztók száma

Láttuk, hogy a $0$-nak minden egész szám osztója. A következő tétel szerint a $0$ az egyetlen szám, amelynek végtelen sok osztója van.

> **3.2. Tétel.** Minden $a \ne 0$ egész számnak véges sok osztója van.

A bizonyítás a következő lemmán alapul.

> **3.3. Lemma.** Ha $a \ne 0$ és $b \mid a$, akkor $|b| \le |a|$.

*Bizonyítás.* Mivel $b \mid a$, van olyan $q$ egész, amelyre $a = bq$. Mivel $a \ne 0$, ezért $q \ne 0$, vagyis $|q| \ge 1$. Ezt $|b|$-vel szorozva $|b|\,|q| \ge |b|$, azaz $|a| = |bq| \ge |b|$. $\blacksquare$

*A 3.2. Tétel bizonyítása.* Ha $a \ne 0$ és $b \mid a$, akkor a lemma szerint $|b| \le |a|$, vagyis $-|a| \le b \le |a|$. A $[-|a|, |a|]$ intervallumban csak véges sok egész van, tehát $a$-nak véges sok osztója van. $\blacksquare$

*A 3.1. Tétel egyértelműségi részének bizonyítása.* Tegyük fel, hogy adott $a$-hoz és $b$-hez két felírás is tartozik:
$$a = bq_1 + r_1, \quad 0 \le r_1 < |b|, \qquad\qquad a = bq_2 + r_2, \quad 0 \le r_2 < |b|. \qquad (3.3)$$
Ekkor $bq_1 + r_1 = bq_2 + r_2$, azaz $b(q_1 - q_2) = r_2 - r_1$, vagyis
$$b \mid r_2 - r_1. \qquad (3.4)$$
Másrészt (3.3) miatt $|r_2 - r_1| < |b|$ (két $[0, |b|)$-beli szám különbsége). Ha $r_2 - r_1 \ne 0$ volna, akkor (3.4)-ből és a 3.3. Lemmából $|b| \le |r_2 - r_1|$ következne, így $|r_2 - r_1| < |b| \le |r_2 - r_1|$, ami ellentmondás. Tehát $r_1 = r_2$, és ekkor $bq_1 = bq_2$, amiből $b \ne 0$-val osztva $q_1 = q_2$. A két felírás tehát azonos. $\blacksquare$

### 3.1. Egységek

Az oszthatóság legalapvetőbb tulajdonságai előtt egy fogalmat vezetünk be, amely az egész számok körében szinte észrevétlen, más számkörökben viszont fontos szerepet kap.

> **3.4. Definíció.** Egy számot **egységnek** nevezünk, ha minden számnak osztója. Az egységeket $\varepsilon$-nal jelöljük.

> **3.5. Tétel.** Az egész számok között két egység van: $1$ és $-1$.

*Bizonyítás.* (i) A $\pm 1$ valóban egység, hiszen minden $a \in \mathbb{Z}$-re $a = 1 \cdot a = (-1) \cdot (-a)$.

(ii) Más egység nincs: ha $\varepsilon$ egység, akkor minden számnak, speciálisan az $1$-nek is osztója: $\varepsilon \mid 1$. A 3.3. Lemma szerint $|\varepsilon| \le 1$, tehát $\varepsilon \in \{-1, 0, 1\}$. A $0$ azonban nem egység (a $0$ egyetlen számnak, a $0$-nak osztója). Így $\varepsilon = \pm 1$. $\blacksquare$

Az oszthatóságot nemcsak az egészek között, hanem más **számkörökben** is vizsgálhatjuk. Két fontos példa a **Gauss-egészek** halmaza
$$G = \mathbb{Z}[i] = \{a + bi : a, b \in \mathbb{Z}\}$$
és a
$$\mathbb{Z}[\sqrt{2}] = \{a + b\sqrt{2} : a, b \in \mathbb{Z}\}$$
halmaz. Mindkettőben két elem összege, különbsége és szorzata újra a halmazba esik; például $(1 + 2i)(3 - i) = 3 - i + 6i - 2i^2 = 5 + 5i$, és $(1 + \sqrt{2})(3 + 2\sqrt{2}) = 3 + 2\sqrt{2} + 3\sqrt{2} + 4 = 7 + 5\sqrt{2}$. Ezekhez kapcsolódik a következő két feladat:

> **3.6. Feladat.** Bizonyítsuk be, hogy $G$-ben négy egység van: $1, -1, i, -i$.
>
> **3.7. Feladat.** Bizonyítsuk be, hogy $\mathbb{Z}[\sqrt{2}]$-ben (i) az $1 + \sqrt{2}$ egység; (ii) végtelen sok egység van.

A feladatok megoldásához először azt kell átgondolni, hogyan érdemes egy $S$ számkörben definiálni az oszthatóságot. Egyáltalán, mi az, hogy „számkör”? Az algebrában már járatos olvasónak eláruljuk, hogy a számkör itt **kommutatív gyűrűt** jelent (erről az *Algebra* tárgyban részletesen lesz szó). Aki még nem tanult haladó algebrát, az a példáinkban szereplő számkörökre gondoljon úgy, mint a valós vagy komplex számok olyan részhalmazaira, amelyekből az összeadás, a kivonás és a szorzás nem vezet ki.

> **3.8. Definíció.** Legyen $S$ egy számkör és $a, b \in S$. Azt mondjuk, hogy $a$ **osztható** $b$-vel ($b \mid a$), ha $\exists c \in S$, amelyre $a = bc$.

A lényeg, hogy a $c$ hányadosnak az $S$ számkörben kell lennie. Ennek meglepő következményei lehetnek: ha $S$ a páros számok halmaza, akkor $S$-ben
$$2 \nmid 2,$$
mert a hányados, az $1$, nem páros szám! Szerencsére az $1$ a legtöbb számkörnek eleme, és ekkor az egységek könnyen jellemezhetők.

> **3.9. Tétel.** Legyen $S$ egy számkör, amelynek az $1$ eleme. Ekkor $\varepsilon \in S$ pontosan akkor egység $S$-ben, ha $\varepsilon \mid 1$.

*Bizonyítás.* Ha $\varepsilon$ egység, akkor minden $S$-beli elemnek, így az $1$-nek is osztója. Fordítva, ha $\varepsilon \mid 1$, akkor van $c \in S$, amelyre $1 = \varepsilon c$; ekkor tetszőleges $a \in S$-re $a = \varepsilon (ca)$, és $ca \in S$, tehát $\varepsilon \mid a$. $\blacksquare$

Ha egy számkör nem tartalmazza az $1$-et (mint a páros számok), akkor abban nincs egység: egy $\varepsilon$ egység önmagának is osztója volna, $\varepsilon = \varepsilon c$, és ebből (ha $\varepsilon \ne 0$) $c = 1 \in S$ következne.

> **3.10. Definíció.** A számkör egy $a$ elemének egységszereseit ($\varepsilon a$ alakú elemeit) $a$ **asszociáltjainak** nevezzük.

Az egészek között $a$ asszociáltjai $a$ és $-a$; a Gauss-egészek között például $1 + 2i$ asszociáltjai $1 + 2i$, $-1 - 2i$, $i(1 + 2i) = -2 + i$ és $-i(1 + 2i) = 2 - i$. Az asszociált elemek az oszthatóság szempontjából „egyformák”: ugyanazoknak az elemeknek osztói, és ugyanazok az elemek osztják őket.

A 3.6. és 3.7. Feladat megoldását a fejezet végén adjuk meg.

### 3.2. Az oszthatóság alaptulajdonságai

> **3.11. Tétel.** Ha az $S$ számkörnek az $1$ eleme (és $S$ a komplex számok része), akkor az oszthatóság
>
> 1. **reflexív:** $a \mid a$ minden $a$-ra;
> 2. **„antiszimmetrikus” az egységektől eltekintve:** ha $a \mid b$ és $b \mid a$, akkor $a$ és $b$ egymás asszociáltjai;
> 3. **tranzitív:** ha $a \mid b$ és $b \mid c$, akkor $a \mid c$.

*Bizonyítás.* 1) $a = a \cdot 1$, és $1 \in S$.

2) Ha $a \mid b$ és $b \mid a$, akkor alkalmas $q, q' \in S$-sel $b = aq$ és $a = bq'$. Így $b = b(qq')$. Ha $b \ne 0$, akkor ebből $qq' = 1$, tehát a 3.9. Tétel szerint $q$ és $q'$ egység, és $b = aq$ az $a$ asszociáltja. Ha $b = 0$, akkor $a = bq' = 0$ is, és $a = b$.

3) Ha $b = aq$ és $c = bq'$, akkor $c = (aq)q' = a(qq')$. $\blacksquare$

Az egészek között a 2. pont azt jelenti, hogy $a \mid b$ és $b \mid a$ esetén $a = \pm b$. Ezért mondjuk, hogy az oszthatóság „az egységektől eltekintve” antiszimmetrikus.

> **3.12. Tétel.** Ha $a \mid b$ és $a \mid c$, akkor
> $$a \mid b + c, \qquad a \mid b - c, \qquad a \mid bk$$
> tetszőleges $k$ egészre. Következésképpen $a \mid bx + cy$ tetszőleges $x, y$ egészekre.

*Bizonyítás.* Alkalmas $q, q'$ egészekkel $b = aq$ és $c = aq'$; így $b + c = a(q + q')$, $b - c = a(q - q')$, $bk = a(qk)$. $\blacksquare$

**Ne próbáljuk megfordítani!** Abból, hogy $a \mid b + c$, *nem* következik, hogy $a \mid b$ és $a \mid c$: például $7 \mid 10 + 4$, de $7 \nmid 10$ és $7 \nmid 4$. Ha viszont $a \mid b + c$ és $a \mid b$, akkor már $a \mid (b + c) - b = c$ — ezt a „ha kettő osztható, a harmadik is” elvet nagyon gyakran használjuk.

### Számrendszerek

A következő tételt középiskolában már tanultuk:

> **3.13. Tétel.** Minden $A > 0$ egész szám egyértelműen felírható
> $$A = a_n 10^n + a_{n-1} 10^{n-1} + \dots + a_1 \cdot 10 + a_0$$
> alakban, ahol $0 \le a_i \le 9$ és $a_n \ne 0$.

Ez a tétel természetesen bármely $b \ge 2$ alapú számrendszerre általánosítható:

> **3.14. Tétel.** Legyen $b \ge 2$ egész. Minden $A > 0$ egész szám egyértelműen felírható
> $$A = a_n b^n + a_{n-1} b^{n-1} + \dots + a_1 b + a_0$$
> alakban, ahol $0 \le a_i \le b - 1$ és $a_n \ne 0$. Jelölése: $A = (a_n a_{n-1} \dots a_1 a_0)_b$.

A számjegyek meghatározására két módszer is ismert.

- **Felülről lefelé:** vegyük a legkisebb olyan $b$-hatványt, amely $A$-nál nagyobb, legyen ez $b^{n+1}$. Ekkor $a_n$ az a számjegy, amelyre $a_n b^n \le A < (a_n + 1) b^n$. Ezután $A - a_n b^n$-re ugyanígy meghatározzuk $a_{n-1}$-et, és így tovább.
- **Alulról felfelé:** az $a_0$ számjegy éppen $A$-nak $b$-vel vett osztási maradéka, hiszen $A = b(a_n b^{n-1} + \dots + a_1) + a_0$ és $0 \le a_0 < b$. A hányadost újra $b$-vel osztva a maradék $a_1$, és így tovább.

A jegyzet a 3.13. és a 3.14. Tételt nem bizonyítja; az alulról felfelé módszer egyébként a bizonyítás vázlata is: a létezés a maradékos osztás ismételt alkalmazásából, az egyértelműség a maradékos osztás egyértelműségéből (3.1. Tétel) adódik, $A$ szerinti indukcióval.

**Kidolgozott példa.** Írjuk fel a $2026$-ot kettes számrendszerben! Az alulról felfelé módszerrel:
$$2026 = 2 \cdot 1013 + 0, \quad 1013 = 2 \cdot 506 + 1, \quad 506 = 2 \cdot 253 + 0, \quad 253 = 2 \cdot 126 + 1,$$
$$126 = 2 \cdot 63 + 0, \quad 63 = 2 \cdot 31 + 1, \quad 31 = 2 \cdot 15 + 1, \quad 15 = 2 \cdot 7 + 1, \quad 7 = 2 \cdot 3 + 1, \quad 3 = 2 \cdot 1 + 1, \quad 1 = 2 \cdot 0 + 1.$$
A maradékokat alulról felfelé olvasva: $2026 = (11111101010)_2$. Ellenőrzés: $1024 + 512 + 256 + 128 + 64 + 32 + 8 + 2 = 2026$.

A történelem során sokféle számrendszert használtak (a babiloniak például hatvanas alapút — innen ered az óra $60$ perce). Ma a tízes mellett a legismertebb a kettes számrendszer. Kevésbé ismert, hogy a kettes számrendszer gondolata már ókori kínai írásokban (a *Változások könyvének* hexagramjaiban) felbukkan; az európai matematikában Leibniz írta le részletesen 1703-ban. Leggyakoribb alkalmazása a számítógépekhez fűződik. A magyar származású Neumann János 1945-ös jelentése, amely a tárolt programú számítógép felépítését írta le (az úgynevezett Neumann-elvek), a kettes számrendszer használatát javasolta; ma szinte minden számítógép így működik.

### A legnagyobb közös osztó

Nagyon fontos számelméleti alapfogalom a legnagyobb közös osztó.

> **3.15. Definíció.** Az $a$ és $b$ egész számok (nem mindkettő $0$) **legnagyobb közös osztójának** azt a $d$ számot nevezzük, amelyre
>
> 1. $d \mid a$ és $d \mid b$ (tehát $d$ közös osztó), és
> 2. $d$ a legnagyobb a közös osztók közül.
>
> Jelölése: $d = (a, b)$.

Például $(12, 18) = 6$, $(7, 12) = 1$, $(0, 5) = 5$. Ha $(a, b) = 1$, akkor $a$-t és $b$-t **relatív prímeknek** nevezzük. A definíció értelmes, mert ha $a \ne 0$, akkor $a$-nak véges sok osztója van (3.2. Tétel), és az $1$ mindig közös osztó.

Gyakran azonban nem az egész számok között keressük a legnagyobb közös osztót, hanem más számkörökben, ahol nem mindig világos, mit jelent a „legnagyobb”. Ennek megértéséhez jöjjön egy feladat:

> **3.16. Feladat.** A $\mathbb{Z}[\sqrt{2}] = \{a + b\sqrt{2} : a, b \in \mathbb{Z}\}$ számkörben (a nagyság szokásos, valós számok közötti értelmében) semelyik két számnak nincs legnagyobb közös osztója.

A megoldást a fejezet végén ismertetjük. Hogy más számkörökben is vizsgálódhassunk, érdemes a legnagyobb közös osztó definícióját úgy átfogalmazni, hogy ne a nagyság, hanem az oszthatóság szerepeljen benne.

> **3.17. Definíció.** Az $a$ és $b$ számok (nem mindkettő $0$) **kitüntetett közös osztójának** nevezzük azt a $\delta$ számot, amelyre
>
> 1. $\delta \mid a$ és $\delta \mid b$ (tehát $\delta$ közös osztó), és
> 2. ha $c \mid a$ és $c \mid b$, akkor $c \mid \delta$ (vagyis $\delta$ az összes közös osztó többszöröse).

A két definíció között lényeges a különbség: a legnagyobb közös osztó a közös osztók közül a *nagyság* szerint legnagyobb, a kitüntetett közös osztó pedig az *oszthatóság* szerint „legnagyobb” — minden közös osztó osztja. Nyilvánvaló, hogy két egész számnak (nem mindkettő $0$) mindig van legnagyobb közös osztója, de a kitüntetett közös osztó létezése egyáltalán nem magától értetődő. Sőt, nem is minden számkörben létezik! Szerencsére a szokásos egész számok között létezik, és előjeltől eltekintve megegyezik a legnagyobb közös osztóval. Ennek bizonyítása azonban nem könnyű.

Először két egyszerű megjegyzés.

- **Ha $\delta$ létezik, akkor $\delta = \pm d$.** Feltehetjük, hogy $\delta > 0$ (különben $-\delta$-t nézzük, amely szintén kitüntetett közös osztó). Mivel $d$ közös osztó, $d \mid \delta$, így a 3.3. Lemma szerint $d \le \delta$. Másrészt $\delta$ közös osztó, $d$ pedig a legnagyobb közös osztó, így $\delta \le d$. Tehát $\delta = d$.
- **A kitüntetett közös osztó — ha létezik — az egységektől eltekintve egyértelmű** (bármely számkörben): ha $\delta_1$ és $\delta_2$ is kitüntetett közös osztó, akkor a definíció 2. pontja szerint $\delta_1 \mid \delta_2$ és $\delta_2 \mid \delta_1$, így a 3.11. Tétel szerint egymás asszociáltjai.

A fő nehézség tehát annak bizonyítása, hogy $\mathbb{Z}$-ben a kitüntetett közös osztó *létezik*. Ezt az euklideszi algoritmus adja meg.

### 3.3. Az euklideszi algoritmus

Az euklideszi algoritmus nevét az ókori görög matematikusról, Eukleidészről kapta, aki az *Elemek* című művében írta le (i. e. 300 körül). Ez az egyik legrégebbi, ma is gyakran használt algoritmus.

Legyen $a$ és $b$ két egész szám, $b \ne 0$. Először elosztjuk $a$-t maradékosan $b$-vel, majd $b$-t a maradékkal, aztán az előző maradékot az új maradékkal, és így tovább — mindig az osztót osztjuk az új maradékkal —, amíg $0$ maradékot nem kapunk:
$$\begin{aligned} a &= b q_1 + r_1, & 0 &< r_1 < |b|, \\ b &= r_1 q_2 + r_2, & 0 &< r_2 < r_1, \\ r_1 &= r_2 q_3 + r_3, & 0 &< r_3 < r_2, \\ &\ \ \vdots \\ r_{n-2} &= r_{n-1} q_n + r_n, & 0 &< r_n < r_{n-1}, \\ r_{n-1} &= r_n q_{n+1} & (r_{n+1} &= 0). \end{aligned}$$
Az eljárás biztosan véget ér véges sok lépésben, hiszen a
$$|b| > r_1 > r_2 > \dots \ge 0$$
sorozat nemnegatív egészekből áll és szigorúan csökken, így nem lehet végtelen. (Ha már $r_1 = 0$, akkor $b \mid a$, és a kitüntetett közös osztó nyilván $b$.)

> **Tétel.** Az euklideszi algoritmus utolsó nem nulla maradéka, $r_n$, az $a$ és $b$ kitüntetett közös osztója.

*Bizonyítás.* **$r_n$ közös osztó.** Alulról felfelé haladunk. Az utolsó egyenlet szerint $r_n \mid r_{n-1}$. Az utolsó előtti egyenletben $r_{n-2} = r_{n-1} q_n + r_n$, és $r_n$ osztja a jobb oldal mindkét tagját, így $r_n \mid r_{n-2}$. Így haladva felfelé, minden lépésben az egyenlet jobb oldalán álló két számot már tudjuk, hogy $r_n$ osztja, tehát a bal oldalt is. A végén $r_n \mid b$ és $r_n \mid a$ adódik.

**$r_n$ minden közös osztónak többszöröse.** Most felülről lefelé haladunk. Legyen $c \mid a$ és $c \mid b$. Az első egyenletből $c \mid a - bq_1 = r_1$; a másodikból $c \mid b - r_1 q_2 = r_2$; és így tovább, minden lépésben $c$ osztja az új maradékot. Végül $c \mid r_n$. $\blacksquare$

**Kidolgozott példa.** Határozzuk meg $(252, 198)$-at!
$$252 = 198 \cdot 1 + 54, \qquad 198 = 54 \cdot 3 + 36, \qquad 54 = 36 \cdot 1 + 18, \qquad 36 = 18 \cdot 2.$$
Az utolsó nem nulla maradék $18$, tehát $(252, 198) = 18$. (Ellenőrzés: $252 = 2^2 \cdot 3^2 \cdot 7$ és $198 = 2 \cdot 3^2 \cdot 11$, a közös rész $2 \cdot 3^2 = 18$.)

Összefoglalva az eddigiek $\mathbb{Z}$-re vonatkozó következményét:

> **3.18. Tétel.** Az egész számok között mindig létezik kitüntetett közös osztó, és előjeltől eltekintve megegyezik a legnagyobb közös osztóval.

Ez nem minden számkörben van így, de mivel az egészek között így van, ezentúl, ha $\mathbb{Z}$ elemeiről beszélünk, a „legnagyobb közös osztó” kifejezést a kitüntetett közös osztóra is használjuk. Különösen: **$(a, b)$ az $a$ és $b$ minden közös osztójának többszöröse.** Ez a tulajdonság a nagyság szerinti definícióból egyáltalán nem látszik!

Szintén az euklideszi algoritmussal igazolható a következő, rendkívül fontos tétel.

> **3.19. Tétel.** Legyenek $a$ és $b$ egész számok, nem mindkettő $0$. Ekkor $(a, b)$ felírható
> $$(a, b) = ax + by$$
> alakban, ahol $x$ és $y$ egész számok.

A tételt gyakran Bézout-azonosságnak is nevezik. Az $x, y$ számok nem egyértelműek: ha $(x, y)$ jó, akkor $(x + b, y - a)$ is. Ha $a, b > 0$ és egyik sem osztója a másiknak, akkor a felírásban $x$ és $y$ közül az egyik szükségképpen pozitív, a másik negatív (két nemnegatív együtthatóval a jobb oldal $0$ vagy legalább $\min(a,b)$ volna, ami nagyobb $(a, b)$-nél; két nempozitívval pedig nempozitív).

*Bizonyítás.* Az euklideszi algoritmusban felülről lefelé haladunk, és minden maradékot
$$r_m = a x_m + b y_m$$
alakban fejezünk ki ($x_m, y_m$ egészek). Kényelmes a jelölés, ha $r_{-1} = a$ és $r_0 = b$; ezekre
$$a = a \cdot 1 + b \cdot 0, \qquad b = a \cdot 0 + b \cdot 1,$$
tehát $x_{-1} = 1$, $y_{-1} = 0$, $x_0 = 0$, $y_0 = 1$. Ezzel az algoritmus minden sora $r_{k-2} = r_{k-1} q_k + r_k$ alakú ($k = 1, 2, \dots, n$). Teljes indukcióval igazoljuk, hogy minden $r_k$ előáll a kívánt alakban. Az $r_{-1}$ és $r_0$ esetén ezt láttuk. Ha $r_{k-2}$-re és $r_{k-1}$-re igaz, akkor
$$r_k = r_{k-2} - r_{k-1} q_k = (a x_{k-2} + b y_{k-2}) - (a x_{k-1} + b y_{k-1}) q_k = a (x_{k-2} - q_k x_{k-1}) + b (y_{k-2} - q_k y_{k-1}),$$
tehát $r_k$-ra is igaz, mégpedig
$$x_k = x_{k-2} - q_k x_{k-1}, \qquad y_k = y_{k-2} - q_k y_{k-1}.$$
Speciálisan az utolsó nem nulla maradék, $r_n = (a, b)$ is előáll ilyen alakban. (Ha $b = 0$, akkor $(a, 0) = |a| = a \cdot (\pm 1) + 0 \cdot 0$.) $\blacksquare$

**Kidolgozott példa (a kiterjesztett euklideszi algoritmus).** Írjuk fel $(252, 198) = 18$-at $252x + 198y$ alakban! Két módszer is kézenfekvő.

*Visszahelyettesítés.* Az algoritmus sorait alulról felfelé használjuk:
$$18 = 54 - 36 = 54 - (198 - 3 \cdot 54) = 4 \cdot 54 - 198 = 4 \cdot (252 - 198) - 198 = 4 \cdot 252 - 5 \cdot 198.$$
Ellenőrzés: $4 \cdot 252 - 5 \cdot 198 = 1008 - 990 = 18$.

*Táblázat (a bizonyítás rekurziója).* Az $x_k = x_{k-2} - q_k x_{k-1}$ és $y_k = y_{k-2} - q_k y_{k-1}$ képletekkel:

| $k$ | $r_k$ | $q_k$ | $x_k$ | $y_k$ |
|---|---|---|---|---|
| $-1$ | $252$ | | $1$ | $0$ |
| $0$ | $198$ | | $0$ | $1$ |
| $1$ | $54$ | $1$ | $1$ | $-1$ |
| $2$ | $36$ | $3$ | $-3$ | $4$ |
| $3$ | $18$ | $1$ | $4$ | $-5$ |

Minden sorban $r_k = 252 x_k + 198 y_k$; az utolsó sor adja: $18 = 252 \cdot 4 + 198 \cdot (-5)$. A táblázatos módszer számítógépes megvalósításra is alkalmas, és nem kell hozzá „visszafelé” haladni.

### Az euklideszi algoritmus gyorsasága

Nagyon fontos, hogy az euklideszi algoritmus **rendkívül gyors**. Ennek alapja a következő feladat.

> **3.20. Feladat.** Az euklideszi algoritmus $r_1, r_2, \dots, r_n$ maradékaira mindig teljesül
> $$r_i < \frac{r_{i-2}}{2}.$$

(Itt $r_{-1} = a$ és $r_0 = b$, ahol feltesszük, hogy $a \ge b > 0$; az állítás $i \ge 1$-re értendő.) Eszerint két lépésenként a maradék legalább a felére csökken, így a maradékok legfeljebb $2\log_2 |b| + 2$ lépésen belül elfogynak. Egy százjegyű számpár legnagyobb közös osztójához tehát legfeljebb néhány száz maradékos osztás kell — szemben azzal, hogy a prímtényezős felbontásukat még a legjobb ismert módszerekkel is nagyon sokáig tartana kiszámolni.

### A fejezet feladatainak megoldása

*A 3.6. Feladat megoldása.* Az $1, -1, i, -i$ egységek $G$-ben, hiszen mindegyik osztója az $1$-nek: $1 = 1 \cdot 1 = (-1)(-1) = i \cdot (-i)$. Most megmutatjuk, hogy más egység nincs. Ha $\varepsilon$ egység, akkor $\varepsilon \mid 1$, azaz van $\delta \in G$, amelyre $\varepsilon \delta = 1$. Mindkét oldal abszolút értékének négyzetét véve (a komplex abszolút érték szorzattartó):
$$|\varepsilon|^2 \cdot |\delta|^2 = 1.$$
Ha $\varepsilon = a + bi$ és $\delta = c + di$, akkor $|\varepsilon|^2 = a^2 + b^2$ és $|\delta|^2 = c^2 + d^2$ pozitív egészek, és szorzatuk $1$; így mindkettő $1$. Tehát $a^2 + b^2 = 1$, ami egész $a, b$ mellett csak $a = \pm 1, b = 0$ vagy $a = 0, b = \pm 1$ esetén teljesül. Vagyis $\varepsilon \in \{1, -1, i, -i\}$. $\blacksquare$

*A 3.7. Feladat megoldása.* (i) Az $1 + \sqrt{2}$ egység, mert osztója az $1$-nek:
$$(1 + \sqrt{2})(-1 + \sqrt{2}) = 2 - 1 = 1,$$
és $-1 + \sqrt{2} \in \mathbb{Z}[\sqrt{2}]$.

(ii) Megmutatjuk, hogy $(1 + \sqrt{2})^n$ minden $n \ge 1$-re egység. Először: $(1 + \sqrt{2})^n \in \mathbb{Z}[\sqrt{2}]$, hiszen a binomiális tétel szerint
$$(1 + \sqrt{2})^n = \sum_{i=0}^n \binom{n}{i} (\sqrt{2})^i = a + b\sqrt{2}$$
alakú, $a, b \in \mathbb{Z}$: páros $i$-re $(\sqrt{2})^i = 2^{i/2}$ egész, páratlan $i$-re $(\sqrt{2})^i = 2^{(i-1)/2}\sqrt{2}$. Ugyanígy $(1 - \sqrt{2})^n \in \mathbb{Z}[\sqrt{2}]$. Ekkor
$$(1 + \sqrt{2})^n (1 - \sqrt{2})^n = \big((1 + \sqrt{2})(1 - \sqrt{2})\big)^n = (-1)^n,$$
tehát $(1 + \sqrt{2})^n \mid (-1)^n$, és így (mivel $(-1)^n \cdot (-1)^n = 1$) $(1 + \sqrt{2})^n \mid 1$: egység. Mivel $1 + \sqrt{2} > 1$, az $(1 + \sqrt{2})^n$ hatványok mind különbözők, tehát végtelen sok egység van. Például $(1 + \sqrt{2})^2 = 3 + 2\sqrt{2}$, és valóban $(3 + 2\sqrt{2})(3 - 2\sqrt{2}) = 9 - 8 = 1$. $\blacksquare$

*A 3.16. Feladat megoldása.* Két számnak azért nincs legnagyobb közös osztója $\mathbb{Z}[\sqrt{2}]$-ben, mert minden közös osztónál található még nagyobb közös osztó. A 3.7. Feladat megoldásában láttuk, hogy $(1 + \sqrt{2})^n$ egység, tehát minden $a, b \in \mathbb{Z}[\sqrt{2}]$-re
$$(1 + \sqrt{2})^n \mid a, \qquad (1 + \sqrt{2})^n \mid b.$$
Vagyis $(1 + \sqrt{2})^n$ minden $(a, b)$ számpárnak közös osztója, és $n \to \infty$ esetén $(1 + \sqrt{2})^n \to \infty$: a közös osztók minden határon túl nőnek, nincs közöttük legnagyobb. $\blacksquare$

(A kitüntetett közös osztó fogalma viszont $\mathbb{Z}[\sqrt{2}]$-ben is értelmes, és ott — a mélyebb elmélet szerint — mindig létezik is.)

*A 3.20. Feladat megoldása.* Két esetet különböztetünk meg. Ha $r_{i-1} \le \frac{r_{i-2}}{2}$, akkor $r_i < r_{i-1} \le \frac{r_{i-2}}{2}$. Ha viszont $r_{i-1} > \frac{r_{i-2}}{2}$, akkor az $i$-edik maradékos osztásban $r_{i-2} = r_{i-1} q_i + r_i$, ahol $q_i \ge 1$, így
$$r_i = r_{i-2} - r_{i-1} q_i \le r_{i-2} - r_{i-1} < r_{i-2} - \frac{r_{i-2}}{2} = \frac{r_{i-2}}{2}. \ \blacksquare$$

## 4. Prímek és felbonthatatlanok

### Eukleidész I. tételének bizonyítása

Most, hogy az euklideszi algoritmus és a 3.19. Tétel a rendelkezésünkre áll, bebizonyíthatjuk Eukleidész I. tételét (2.6. Tétel): ha $p$ prím és $p \mid ab$, akkor $p \mid a$ vagy $p \mid b$.

*A 2.6. Tétel bizonyítása.* Tegyük fel, hogy $p \mid ab$. Ha $p \mid a$, készen vagyunk. Ha $p \nmid a$, tekintsük $(a, p)$-t. Ez osztója $p$-nek, és $p$-nek csak két pozitív osztója van: $1$ és $p$. Ha $(a, p) = p$ volna, akkor $p \mid a$ teljesülne; így
$$(a, p) = 1.$$
A 3.19. Tétel szerint $1 = (a, p)$ felírható $a$ és $p$ lineáris kombinációjaként:
$$1 = ax + py, \qquad x, y \in \mathbb{Z}.$$
Ezt $b$-vel szorozva
$$b = abx + pby.$$
Itt $p \mid ab$, tehát $p \mid abx$, és nyilván $p \mid pby$; így $p$ osztja az összegüket, $b$-t is. $\blacksquare$

Ezzel a számelmélet alaptételének (2.5. Tétel) bizonyítása is teljes. Figyeljük meg a gondolatmenet szerkezetét: **maradékos osztás $\Rightarrow$ euklideszi algoritmus $\Rightarrow$ Bézout-azonosság $\Rightarrow$ Eukleidész I. tétele $\Rightarrow$ SzAT.** Ez a lánc az *Algebra* tárgyban (az euklideszi gyűrűkről szóló fejezetben) majd sokkal általánosabb keretben is működni fog: minden olyan számkörben, amelyben van „jó” maradékos osztás.

**Egy hasznos következmény.** Ha $a \mid bc$ és $(a, b) = 1$, akkor $a \mid c$. (Ugyanaz a bizonyítás: $1 = ax + by$-t $c$-vel szorozva $c = acx + bcy$, és $a$ mindkét tagot osztja.) Ezt a következtetést a könyvben rengetegszer fogjuk használni.

### A modern prímfogalom

A modern számelmélet a prímeket nem a klasszikus módon definiálja, hogy megkülönböztesse azt a két tulajdonságot, amelyről eddig szó volt: (1) hogy $p$-nek az egységeken és önmaga asszociáltjain kívül nincs osztója, illetve (2) hogy $p \mid ab$-ből mindig következik $p \mid a$ vagy $p \mid b$. A következő két definíció tetszőleges számkörben értelmes.

> **4.1. Definíció.** A $0$-tól és az egységektől különböző $f$ szám **felbonthatatlan** (irreducibilis), ha $f = ab$ esetén (ahol $a$ és $b$ a számkör elemei) $a$ vagy $b$ mindig egység.
>
> **4.2. Definíció.** A $0$-tól és az egységektől különböző $p$ szám **prím**, ha $p \mid ab$ esetén (ahol $a$ és $b$ a számkör elemei) mindig teljesül, hogy $p \mid a$ vagy $p \mid b$.

Eukleidész klasszikus definíciója a *felbonthatatlan* számokkal van összhangban: az egészek között a „csak $\pm 1$ és $\pm f$ osztója van” éppen azt jelenti, hogy $f$ minden szorzatra bontásában az egyik tényező egység. A modern értelemben vett prím pedig az Eukleidész I. tételében szereplő tulajdonság.

> **4.3. Tétel.** Ha egy számkörnek eleme az $1$, akkor minden prím felbonthatatlan.

*Bizonyítás.* Legyen $p$ prím, és $p = ab$. Be kell látnunk, hogy $a$ vagy $b$ egység. Mivel $1$ a számkör eleme, $p \mid ab$ teljesül ($ab = p \cdot 1$). Mivel $p$ prím, $p \mid a$ vagy $p \mid b$; szimmetria miatt feltehetjük, hogy $p \mid a$, azaz $a = p a_0$ valamely $a_0$-lal. Ekkor
$$p = ab = p a_0 b,$$
és $p \ne 0$-val egyszerűsítve (a komplex számok körében szabad) $1 = a_0 b$. Tehát $b \mid 1$, így a 3.9. Tétel szerint $b$ egység. $\blacksquare$

A két fogalom kapcsolata tehát: **prím $\Rightarrow$ felbonthatatlan** (minden „tisztességes” számkörben). A megfordítás az egészek között igaz — ez éppen Eukleidész I. tétele:

> **4.4. Tétel.** Az egész számok körében a prímek és a felbonthatatlanok egybeesnek.

Az egész számok körén kívül azonban vannak olyan számkörök, ahol a két fogalom szétválik.

> **4.5. Feladat.** Az $S = \mathbb{Z}[\sqrt{-5}] = \{a + b\sqrt{-5} : a, b \in \mathbb{Z}\}$ számkörben a $2$ felbonthatatlan, de nem prím.

A jegyzetben ez az olvasónak szánt házi feladat, azzal a segítséggel, hogy érdemes a **norma** fogalmát és annak multiplikativitását használni, ahol
$$N(a + b\sqrt{-5}) = a^2 + 5b^2 = |a + b\sqrt{-5}|^2.$$
Az is igaz, hogy ebben a számkörben a számelmélet alaptétele nem teljesül.

::: kiegeszites
**Kiegészítés: a 4.5. Feladat megoldása.** A norma szorzattartó: $N(\alpha\beta) = |\alpha\beta|^2 = |\alpha|^2|\beta|^2 = N(\alpha)N(\beta)$. Ebből: ha $\alpha \mid \beta$, akkor $N(\alpha) \mid N(\beta)$ (az egészek között). Az egységek pontosan az $N(\varepsilon) = 1$ elemek: ha $\varepsilon\delta = 1$, akkor $N(\varepsilon)N(\delta) = 1$, és $N$ értékei nemnegatív egészek; fordítva, $a^2 + 5b^2 = 1$ csak $a = \pm 1$, $b = 0$ esetén teljesül. Tehát az egységek: $\pm 1$.

*A $2$ felbonthatatlan.* Ha $2 = \alpha\beta$, akkor $N(\alpha)N(\beta) = N(2) = 4$. Ha egyik tényező sem egység, akkor $N(\alpha) = N(\beta) = 2$. De $a^2 + 5b^2 = 2$-nek nincs egész megoldása ($b \ne 0$ esetén a bal oldal legalább $5$, $b = 0$ esetén $a^2 = 2$). Tehát az egyik tényező egység.

*A $2$ nem prím.* Egyrészt
$$2 \cdot 3 = 6 = (1 + \sqrt{-5})(1 - \sqrt{-5}),$$
tehát $2 \mid (1 + \sqrt{-5})(1 - \sqrt{-5})$. Másrészt $2 \nmid 1 \pm \sqrt{-5}$, hiszen $\frac{1 \pm \sqrt{-5}}{2} = \frac{1}{2} \pm \frac{1}{2}\sqrt{-5} \notin S$ (az együtthatók nem egészek).

*A SzAT nem teljesül.* Ugyanígy belátható, hogy $3$ és $1 \pm \sqrt{-5}$ is felbonthatatlan (a normájuk $9$, illetve $6$, és nincs $2$ vagy $3$ normájú elem, mert $a^2 + 5b^2 \in \{2, 3\}$-nak nincs egész megoldása). Így a $6 = 2 \cdot 3 = (1 + \sqrt{-5})(1 - \sqrt{-5})$ két lényegesen különböző felbontás felbonthatatlanok szorzatára (a $2$ nem asszociáltja egyik $1 \pm \sqrt{-5}$-nek sem, hiszen az egyetlen egységek a $\pm 1$).

*Megjegyzés.* A jegyzet a 2. fejezetben a valós $\mathbb{Z}[\sqrt{5}] = \{a + b\sqrt{5}\}$ számkört említi. Abban is felbonthatatlan, de nem prím a $2$: itt a szorzattartó norma $N(a + b\sqrt{5}) = a^2 - 5b^2$, és $a^2 - 5b^2 = \pm 2$-nek nincs megoldása (mert $a^2 \equiv 0, 1, 4 \pmod 5$, míg $\pm 2 \equiv 2, 3$), másrészt $2 \cdot 2 = 4 = (\sqrt{5} + 1)(\sqrt{5} - 1)$, de $\frac{\sqrt{5} \pm 1}{2} \notin \mathbb{Z}[\sqrt{5}]$. A fenti, $N = a^2 + 5b^2$ normával dolgozó bizonyítás a $\mathbb{Z}[\sqrt{-5}]$ számkörre vonatkozik.
:::

**Mit tanultunk ebből?** A számelmélet alaptétele — amelyet középiskolában természetesnek veszünk — nem „magától” igaz, hanem az egész számok egy különleges tulajdonságán, a maradékos osztáson és az euklideszi algoritmuson múlik. Ahol ilyen nincs, ott a prím és a felbonthatatlan fogalma szétválhat, és az egyértelmű faktorizáció elromolhat. A $19$. század közepén éppen ez a jelenség okozta, hogy a nagy Fermat-tétel (12. fejezet) több „bizonyítása” hibásnak bizonyult: hallgatólagosan feltették az egyértelmű faktorizációt olyan számkörökben, ahol az nem teljesül. Ennek kezelésére vezette be Ernst Kummer az „ideális számok”, Richard Dedekind pedig az ideálok fogalmát.

## 5. Polinomok racionális gyökei

Hogyan határozzuk meg egy egész együtthatós polinom racionális gyökeit? Keressük például a
$$6x^5 + x^4 - 2x^3 + 6x^2 + x - 2 = 0$$
egyenlet megoldásait. Ötödfokú egyenletre nincs általános megoldóképlet (ezt az *Algebra* tárgyban látjuk majd), de érdemes megnézni, van-e racionális gyök. Legyen $x = \frac{p}{q}$ egy racionális gyök, ahol $(p, q) = 1$ és $q > 0$. Behelyettesítve és $q^5$-nel szorozva:
$$6p^5 + p^4 q - 2p^3 q^2 + 6p^2 q^3 + p q^4 - 2q^5 = 0.$$
Itt a jobb oldalt ($0$-t) $p$ osztja, és a bal oldalon minden tag osztható $p$-vel, kivéve a $-2q^5$-t. Mivel $p$ az összeget és a többi tagot is osztja, $p \mid 2q^5$. Hasonlóan, $q$-ra ugyanezt a gondolatmenetet alkalmazva (most minden tag osztható $q$-val, kivéve $6p^5$-t), $q \mid 6p^5$. Mivel $(p, q) = 1$, ezért $(p, q^5) = (q, p^5) = 1$ is (közös prímosztójuk $p$-nek és $q$-nak is osztója volna), így a 4. fejezet „hasznos következménye” szerint
$$p \mid 2, \qquad q \mid 6.$$
Tehát
$$p \in \{-2, -1, 1, 2\}, \qquad q \in \{1, 2, 3, 6\}.$$
A lehetséges racionális gyökök: $\pm 1, \pm 2, \pm \frac{1}{2}, \pm \frac{1}{3}, \pm \frac{2}{3}, \pm \frac{1}{6}$ (a $\pm\frac{2}{2}$, $\pm\frac{2}{6}$ már szerepelt). Mindet végigpróbálva azt kapjuk, hogy a racionális gyökök:
$$x = \frac{1}{2}, \qquad x = -\frac{2}{3}, \qquad x = -1.$$
Ezt az eljárást **racionális gyöktesztnek** nevezik. Általában is így szól:

> **Tétel (racionális gyökteszt).** Legyen $f(x) = a_n x^n + a_{n-1}x^{n-1} + \dots + a_1 x + a_0$ egész együtthatós polinom, $a_n \ne 0$. Ha a $\frac{p}{q}$ tört, ahol $(p, q) = 1$, gyöke $f$-nek, akkor
> $$p \mid a_0 \qquad \text{és} \qquad q \mid a_n.$$

*Bizonyítás.* $q^n$-nel szorozva $f\left(\frac{p}{q}\right) = 0$-t:
$$a_n p^n + a_{n-1} p^{n-1} q + \dots + a_1 p q^{n-1} + a_0 q^n = 0.$$
Az $a_0 q^n$ kivételével minden tag osztható $p$-vel, így $p \mid a_0 q^n$; mivel $(p, q^n) = 1$, ezért $p \mid a_0$. Ugyanígy az $a_n p^n$ kivételével minden tag osztható $q$-val, így $q \mid a_n p^n$, és $(q, p^n) = 1$ miatt $q \mid a_n$. $\blacksquare$

**Speciális eset.** Ha a polinom főegyütthatója $1$ (normált polinom), akkor $q \mid 1$, tehát *minden racionális gyök egész*, és osztója a konstans tagnak. Például $x^2 - 2$ racionális gyöke csak $\pm 1$ vagy $\pm 2$ lehetne, de egyik sem gyök — tehát $\sqrt{2}$ irracionális. Ezt a 10. fejezetben másképp is bebizonyítjuk.

**A példa befejezése: szorzattá alakítás.** A három gyöknek megfelelő gyöktényezőket kiemelve
$$6x^5 + x^4 - 2x^3 + 6x^2 + x - 2 = 6\left(x - \frac{1}{2}\right)\left(x + \frac{2}{3}\right)(x + 1)(x^2 - x + 1) = (2x - 1)(3x + 2)(x + 1)(x^2 - x + 1).$$
Ellenőrzés: $(2x - 1)(3x + 2)(x + 1) = (6x^2 + x - 2)(x + 1) = 6x^3 + 7x^2 - x - 2$, és
$$(6x^3 + 7x^2 - x - 2)(x^2 - x + 1) = 6x^5 + x^4 - 2x^3 + 6x^2 + x - 2.$$
Az $x^2 - x + 1$ tényező diszkriminánsa $1 - 4 = -3 < 0$, így további valós gyök nincs.

### Polinomok maradékos osztása

Befejezésül ismertetjük a polinomok maradékos osztásának menetét, amely teljesen az egész számok írásbeli osztását utánozza. Az osztandó polinom legmagasabb fokú tagját elosztjuk az osztó polinom legmagasabb fokú tagjával; az eredménnyel visszaszorzunk, és a szorzatot kivonjuk az osztandóból. Az eljárást a kapott különbséggel ismételjük, amíg a maradék foka kisebb nem lesz az osztóénál. Például:
$$(6x^3 - 2x^2 + 6x + 3) : (x^2 - x + 1) = ?$$

1. $6x^3 : x^2 = 6x$. Visszaszorzás: $6x(x^2 - x + 1) = 6x^3 - 6x^2 + 6x$. Kivonás: $(6x^3 - 2x^2 + 6x + 3) - (6x^3 - 6x^2 + 6x) = 4x^2 + 3$.
2. $4x^2 : x^2 = 4$. Visszaszorzás: $4(x^2 - x + 1) = 4x^2 - 4x + 4$. Kivonás: $(4x^2 + 3) - (4x^2 - 4x + 4) = 4x - 1$.
3. A $4x - 1$ foka ($1$) kisebb az osztó fokánál ($2$): megállunk.

A hányados $6x + 4$, a maradék $4x - 1$:
$$6x^3 - 2x^2 + 6x + 3 = (x^2 - x + 1)(6x + 4) + (4x - 1).$$
Ez pontos megfelelője az egészek $a = bq + r$, $0 \le r < |b|$ felírásának; itt a „maradék kisebb az osztónál” feltétel helyett az áll, hogy a maradék *foka* kisebb az osztó fokánál. A polinomok maradékos osztására — és vele együtt az euklideszi algoritmusra — az *Algebra* tárgyban részletesen visszatérünk.

## Az I. rész összefoglalása

- **Teljes indukció** (Peano 5. axiómája): kezdő lépés + indukciós lépés. Az erős indukcióban az összes korábbi esetet feltehetjük. A számelméletben gyakran nagyságrendi becslések igazolására használjuk (1.3. Állítás).
- **Prímszám** (klasszikus értelemben): $p > 1$, és csak $1$ és $p$ a pozitív osztója. **SzAT:** minden $n > 1$ a sorrendtől eltekintve egyértelműen bomlik prímek szorzatára. A létezés erős indukcióból, az egyértelműség Eukleidész I. tételéből ($p \mid ab \Rightarrow p \mid a$ vagy $p \mid b$) következik.
- **Végtelen sok prím van** (Eukleidész II. tétele): három bizonyítás — $p_1 \cdots p_n + 1$; a páronként relatív prím Fermat-számok; az $N_j(x) \le 2^j\sqrt{x}$ becslés. Az utóbbiból: a prímek reciprokösszege végtelen, $\pi(n) \ge \frac{1}{2}\log_2 n$, $p_n \le 4^n$.
- **Fermat-prímek** ($2^{2^n} + 1$) és **Mersenne-prímek** ($2^p - 1$): $2^a + 1$ prím $\Rightarrow$ $a$ kettőhatvány; $2^n - 1$ prím $\Rightarrow$ $n$ prím. Az $a^n \pm b^n$ szorzattá alakítása a kulcs.
- **Maradékos osztás:** $a = bq + r$, $0 \le r < |b|$, egyértelműen. **Euklideszi algoritmus:** az utolsó nem nulla maradék a legnagyobb közös osztó, amely minden közös osztónak többszöröse (kitüntetett közös osztó), és felírható $ax + by$ alakban (Bézout). Az algoritmus gyors: két lépésenként felére csökken a maradék.
- **Számkörök:** egység = az $1$ osztója; asszociált = egységszeres. **Felbonthatatlan:** csak triviálisan bontható szorzatra. **Prím:** $p \mid ab \Rightarrow p \mid a$ vagy $p \mid b$. Prím $\Rightarrow$ felbonthatatlan; $\mathbb{Z}$-ben a kettő egybeesik, $\mathbb{Z}[\sqrt{-5}]$-ben nem ($6 = 2 \cdot 3 = (1 + \sqrt{-5})(1 - \sqrt{-5})$).
- **Racionális gyökteszt:** egész együtthatós polinom $\frac{p}{q}$ ($(p,q) = 1$) gyökére $p \mid a_0$, $q \mid a_n$.

## Feladatok az I. részhez

1. Bizonyítsuk be teljes indukcióval, hogy $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, és hogy $2^n > n^2$ minden $n \ge 5$ egészre.
2. Bizonyítsuk be, hogy $6 \mid n^3 - n$ minden $n$ egészre.
3. Határozzuk meg az euklideszi algoritmussal $(1071, 462)$-t, és írjuk fel $1071x + 462y$ alakban.
4. Bizonyítsuk be, hogy minden $n$ pozitív egészre $(2n + 1, 3n + 1) = 1$.
5. Határozzuk meg a $2x^3 - 3x^2 - 3x + 2$ polinom racionális gyökeit, és bontsuk a polinomot szorzattá.
6. Bizonyítsuk be, hogy végtelen sok $4k + 3$ alakú prím van.
7. Írjuk fel a $2026$-ot hármas számrendszerben.
8. Bizonyítsuk be, hogy a Gauss-egészek körében a $2$ nem felbonthatatlan.
9. Euler 1732-ben megmutatta, hogy $641 \mid F_5 = 2^{32} + 1$. Igazoljuk ezt a $641 = 5 \cdot 2^7 + 1 = 5^4 + 2^4$ felírások segítségével, nagy számok kiszámolása nélkül.
10. Mutassuk meg, hogy $(a, b) = (a - b, b)$, és ennek segítségével adjunk egy „kivonásos” változatot az euklideszi algoritmusra.

### Megoldási útmutatók

1. Az első: $\frac{k(k+1)}{2} + (k + 1) = \frac{(k+1)(k+2)}{2}$. A második: $n = 5$-re $32 > 25$; ha $2^k > k^2$ és $k \ge 5$, akkor $2^{k+1} > 2k^2 \ge (k+1)^2$, mert $k^2 \ge 2k + 1$ teljesül $k \ge 3$-ra ($k^2 - 2k - 1 = (k-1)^2 - 2 \ge 2$). (Megjegyzés: $n = 2, 3, 4$-re az állítás hamis, $n = 1$-re igaz.)
2. $n^3 - n = (n - 1)n(n + 1)$ három szomszédos egész szorzata; ezek között van páros és van $3$-mal osztható. Indukcióval is megy: $(n+1)^3 - (n+1) = (n^3 - n) + 3n(n + 1)$, és $n(n+1)$ páros.
3. $1071 = 2 \cdot 462 + 147$, $462 = 3 \cdot 147 + 21$, $147 = 7 \cdot 21$, tehát $(1071, 462) = 21$. Visszahelyettesítve: $21 = 462 - 3 \cdot 147 = 462 - 3(1071 - 2 \cdot 462) = 7 \cdot 462 - 3 \cdot 1071$.
4. Ha $d$ közös osztó, akkor $d \mid (3n + 1) - (2n + 1) = n$, majd $d \mid (2n + 1) - 2n = 1$.
5. A jelöltek: $\pm 1, \pm 2, \pm \frac{1}{2}$. Gyök: $2$, $-1$ és $\frac{1}{2}$; $2x^3 - 3x^2 - 3x + 2 = (x - 2)(x + 1)(2x - 1)$.
6. Ha csak véges sok volna, $p_1, \dots, p_k$, legyen $N = 4p_1 \cdots p_k - 1$. Ez $4k + 3$ alakú, így van $4k + 3$ alakú prímosztója (páratlan, és ha minden prímosztója $4k + 1$ alakú volna, a szorzatuk is az volna). Ez a prím nem lehet egyik $p_i$ sem, mert akkor $1$-et osztaná.
7. $2026 = 2 \cdot 729 + 568$, $568 = 2 \cdot 243 + 82$, $82 = 1 \cdot 81 + 1$, így $2026 = (2210001)_3$.
8. $2 = (1 + i)(1 - i)$, és $1 \pm i$ nem egység (abszolút értéke $\sqrt{2} \ne 1$). Sőt $2 = -i(1 + i)^2$.
9. $2^{32} = 2^4 \cdot 2^{28} = (641 - 5^4) \cdot 2^{28}$, így $2^{32} + 1 = 641 \cdot 2^{28} - (5 \cdot 2^7)^4 + 1$. Itt $5 \cdot 2^7 = 640 = 641 - 1$, és $1 - 640^4 = (1 - 640)(1 + 640)(1 + 640^2)$ osztható $641$-gyel.
10. A közös osztók halmaza ugyanaz: ha $d \mid a$ és $d \mid b$, akkor $d \mid a - b$; fordítva, ha $d \mid a - b$ és $d \mid b$, akkor $d \mid a$. Az algoritmus: a nagyobb számból vonjuk ki a kisebbet, amíg a kettő egyenlő nem lesz; a közös érték a legnagyobb közös osztó (ez az algoritmus Eukleidész eredeti megfogalmazása).

---

# II. RÉSZ: KONGRUENCIÁK

A második rész a számelmélet egyik legfontosabb eszközét, a **kongruenciát** vezeti be. A kongruencia lényegében annyit jelent, hogy a számoknak csak a maradékát figyeljük egy rögzített számmal osztva — mint az órán, ahol $13$ óra ugyanaz, mint $1$ óra. Kiderül, hogy a maradékokkal majdnem ugyanúgy lehet számolni, mint a számokkal, és ez rengeteg feladatot hihetetlenül leegyszerűsít. A rész csúcspontja az **Euler–Fermat-tétel**, amely a moduláris hatványozás, a lineáris kongruenciák és később a titkosítások alapja lesz.

## 6. Kongruenciák (alapok)

A kongruenciák ma is használatos, kidolgozott elmélete Carl Friedrich Gauss (1777–1855) nevéhez fűződik, aki az 1801-ben megjelent *Disquisitiones Arithmeticae* című művében vezette be a $\equiv$ jelölést. Maga a fogalom azonban sokkal régebbi: közvetve kongruenciákról szól a több mint ezerötszáz éves kínai maradéktétel is, amelyet a 13. fejezetben ismertetünk, és lényegében kongruenciákkal dolgoztak Fermat és Euler is.

> **6.1. Definíció.** Legyen $m$ pozitív egész. Azt mondjuk, hogy
> $$a \equiv b \pmod m, \qquad (6.1)$$
> ha $a$ és $b$ $m$-mel vett osztási maradéka ugyanaz. Más szóval: $m \mid a - b$. Szóban: „$a$ kongruens $b$-vel modulo $m$”. Ha ez nem teljesül, $a \not\equiv b \pmod m$, „$a$ inkongruens $b$-vel”.

A két megfogalmazás valóban ekvivalens: ha $a = mq_1 + r$ és $b = mq_2 + r$ (azonos maradékkal), akkor $a - b = m(q_1 - q_2)$; fordítva, ha $m \mid a - b$ és $b = mq + r$ ($0 \le r < m$), akkor $a = b + mk = m(q + k) + r$, tehát $a$ maradéka is $r$.

**Példák.** $15 \equiv 27 \pmod 6$, mert $6 \mid 15 - 27 = -12$ (mindkettő maradéka $3$); de $16 \not\equiv 27 \pmod 6$. Továbbá $-1 \equiv 6 \pmod 7$, $100 \equiv 1 \pmod{9}$, és minden páros szám kongruens $0$-val, minden páratlan $1$-gyel modulo $2$. A $\pmod 6$ helyett röviden $(6)$-ot is írhatunk.

**Az óra-aritmetika.** A modulusok a való életben is megjelennek. Tegyük fel, hogy egy előadás minden második napon van (a vasárnapot is beleértve), és az első előadás hétfőre esik. Melyik lesz az első előadás, amely keddre esik? Számozzuk a napokat hétfőtől kezdve $0, 1, 2, \dots$-vel; a hét napjai $7$ naponként ismétlődnek, és a keddek éppen a $7$-tel osztva $1$ maradékot adó napok. Az $(x + 1)$-edik előadás a $2x$-edik napra esik, így a
$$2x \equiv 1 \pmod 7$$
kongruencia legkisebb nemnegatív megoldását keressük. Az $x = 0, 1, 2, 3, 4$ eseteket végignézve ($2x = 0, 2, 4, 6, 8$) azt látjuk, hogy a legkisebb megoldás $x = 4$ ($8 = 7 + 1$). Tehát az **ötödik** előadás esik először keddre.

Előfordulnak magasabb fokú kongruenciák is. Például
$$x^2 \equiv 1 \pmod 8$$
megoldásai $x \equiv 1, 3, 5, 7 \pmod 8$, hiszen $1^2 = 1$, $3^2 = 9$, $5^2 = 25$, $7^2 = 49$ mind $1$ maradékot adnak $8$-cal osztva (a páros számok négyzete pedig páros). Egy másodfokú „egyenletnek” tehát itt négy megoldása van! Erre a jelenségre a 14. fejezetben visszatérünk.

Néha akkor is használunk kongruenciát, ha a két oldalon nem egész számok állnak; ekkor $a \equiv b \pmod m$ azt jelenti, hogy $a - b$ az $m$ egész számú többszöröse. Például $\frac{3}{2} \equiv \frac{1}{2} \pmod 1$, vagy a szögeknél $-\pi \equiv \pi \pmod{2\pi}$.

### Maradékosztályok

Rögzített $m$ mellett az egész számok $m$ darab **maradékosztályba** sorolhatók aszerint, hogy $m$-mel osztva $0$, $1$, $\dots$, $m - 1$ maradékot adnak. Az $a$ számot tartalmazó maradékosztály
$$\overline{a} = \{\dots, a - 2m, a - m, a, a + m, a + 2m, \dots\}$$
— ezt a jegyzet $(a)$-val is jelöli. Két szám pontosan akkor van ugyanabban a maradékosztályban, ha kongruensek modulo $m$. A maradékosztály bármelyik elemét a maradékosztály **reprezentánsának** nevezzük. Modulo $7$ például a $\overline{3}$ maradékosztály $\{\dots, -11, -4, 3, 10, 17, \dots\}$.

### A kongruenciák alaptulajdonságai

> **Tétel (a kongruenciák alaptulajdonságai).** Rögzített $m$ modulus mellett:
>
> (i) $a \equiv a$; és ha $a \equiv b$, akkor $b \equiv a$;
>
> (ii) ha $a \equiv b$ és $b \equiv c$, akkor $a \equiv c$;
>
> (iii) ha $a \equiv a'$ és $b \equiv b'$, akkor $a + b \equiv a' + b'$, $a - b \equiv a' - b'$ és $ab \equiv a'b'$;
>
> (iv) ha $a \equiv a'$, $b \equiv b'$ és $x, y \in \mathbb{Z}$, akkor $xa + yb \equiv xa' + yb'$.
>
> Továbbá, ha $p(a, b, c, \dots)$ egész együtthatós többváltozós polinom, és $a \equiv a'$, $b \equiv b'$, $c \equiv c'$, $\dots$, akkor
> $$p(a, b, c, \dots) \equiv p(a', b', c', \dots) \pmod m.$$

A jegyzet ezek bizonyítását az olvasóra bízza; mindegyik néhány soros.

::: kiegeszites
**Kiegészítés: a bizonyítások.** (i) $m \mid 0 = a - a$; ha $m \mid a - b$, akkor $m \mid -(a - b) = b - a$. (ii) Ha $m \mid a - b$ és $m \mid b - c$, akkor $m \mid (a - b) + (b - c) = a - c$. (iii) Az összegre: $(a + b) - (a' + b') = (a - a') + (b - b')$, mindkét tagot osztja $m$; a különbség ugyanígy. A szorzatra a trükk egy tag hozzáadása és levonása:
$$ab - a'b' = ab - a'b + a'b - a'b' = (a - a')b + a'(b - b'),$$
és $m$ mindkét tagot osztja. (iv) A (iii)-ból: $xa \equiv xa'$ (hiszen $x \equiv x$), és összeadjuk.

A polinomokra: a (iii) szorzásra vonatkozó részét ismételten alkalmazva $a^k \equiv (a')^k$, majd tetszőleges $a^k b^\ell c^r \cdots$ szorzatra is kongruencia adódik; egész együtthatóval szorozva (iv) szerint is, végül a tagokat összeadva (iii) szerint. $\blacksquare$
:::

Az alaptulajdonságok azt jelentik, hogy **kongruenciákkal úgy számolhatunk, mint egyenletekkel**: összeadhatjuk, kivonhatjuk, összeszorozhatjuk őket, hatványozhatjuk mindkét oldalt, és bármely tagot kicserélhetjük egy vele kongruens számra. Ez az utóbbi a legfontosabb a gyakorlatban: hosszú számolás közben bármikor „redukálhatunk”, azaz egy számot a maradékával helyettesíthetünk.

**Példa.** Mi a $7^{100}$ utolsó számjegye? Az utolsó jegy a $10$-zel vett maradék. Mivel $7^2 = 49 \equiv -1 \pmod{10}$, ezért $7^4 \equiv (-1)^2 = 1$, és $7^{100} = (7^4)^{25} \equiv 1^{25} = 1 \pmod{10}$. Az utolsó jegy $1$.

Ezekkel az eszközökkel már megoldhatjuk a 2. fejezet nyitva hagyott feladatát.

*A 2.25. Feladat megoldása (nincs „prímpolinom”).* Tegyük fel, hogy van olyan nem konstans $f(x)$ egész együtthatós polinom, amelynek minden pozitív egész helyen felvett értéke prím. Ekkor $f$ főegyütthatója pozitív, hiszen különben elég nagy $x$-re $f(x)$ negatív volna, tehát nem prím. Legyen
$$f(1) = q;$$
ez a feltevés szerint prím. Tekintsük az $f(1 + tq)$ számokat, $t = 1, 2, 3, \dots$ Mivel $1 + tq \equiv 1 \pmod q$, a polinomokra vonatkozó tulajdonság szerint
$$f(1 + tq) \equiv f(1) = q \equiv 0 \pmod q,$$
vagyis $q \mid f(1 + tq)$ minden $t$-re. Mivel $f(1 + tq)$ prím, és osztható a $q$ prímmel, csak $f(1 + tq) = q$ lehet. Másrészt $f$ nem konstans és főegyütthatója pozitív, így $t \to \infty$ esetén $f(1 + tq) \to \infty$. Ez ellentmondás. $\blacksquare$

### Osztás kongruenciákban

Láttuk, hogy az összeadással, kivonással és szorzással ugyanúgy bánhatunk, mint az egyenleteknél. Az **osztással** azonban baj lehet! Például
$$8 \equiv 20 \pmod 6,$$
de mindkét oldalt $4$-gyel osztva
$$2 \not\equiv 5 \pmod 6.$$
Hogyan oszthatunk akkor?

> **6.2. Tétel.** Legyen $a, b, k \in \mathbb{Z}$, $k \ne 0$. Ekkor
> $$ka \equiv kb \pmod m \quad \iff \quad a \equiv b \pmod{\frac{m}{(k, m)}}.$$
> Speciálisan, ha $(k, m) = 1$, akkor $ka \equiv kb \pmod m$-ből $a \equiv b \pmod m$ következik: **a modulushoz relatív prím számmal szabad egyszerűsíteni.**

Az előző példában tehát $8 \equiv 20 \pmod 6$-ot $4$-gyel osztva a modulust is el kell osztani $(4, 6) = 2$-vel:
$$2 \equiv 5 \pmod 3,$$
ami valóban igaz.

*Bizonyítás.* Legyen $d = (k, m)$, $k = k_1 d$ és $m = m_1 d$. Ekkor $(k_1, m_1) = 1$ (ha $k_1$-nek és $m_1$-nek volna $1$-nél nagyobb közös osztója, akkor $d$ nem volna a legnagyobb közös osztó). Így
$$ka \equiv kb \pmod m \iff m \mid k(a - b) \iff m_1 d \mid k_1 d (a - b) \iff m_1 \mid k_1 (a - b).$$
Mivel $(k_1, m_1) = 1$, a 4. fejezet „hasznos következménye” szerint $m_1 \mid k_1(a - b) \iff m_1 \mid a - b$ (a $\Leftarrow$ irány nyilvánvaló). Tehát
$$ka \equiv kb \pmod m \iff a \equiv b \pmod{m_1} = \pmod{\tfrac{m}{(k, m)}}. \ \blacksquare$$

### Teljes maradékrendszer

> **6.3. Definíció.** Modulo $m$ **teljes maradékrendszernek** nevezzük az olyan számhalmazt, amelyet úgy kapunk, hogy mind az $m$ maradékosztályból pontosan egy reprezentánst választunk.

**Példa.** Modulo $10$ teljes maradékrendszer a
$$1, 16, 24, 37, 42, 59, 63, 75, 88, 1000$$
számok halmaza: a maradékaik $1, 6, 4, 7, 2, 9, 3, 5, 8, 0$, mindegyik pontosan egyszer. A „legtermészetesebb” teljes maradékrendszer a $0, 1, \dots, m - 1$, de gyakran kényelmesebb a $0$ körül szimmetrikus választás, például modulo $5$: $-2, -1, 0, 1, 2$.

> **6.4. Tétel.** Adott egész számok pontosan akkor alkotnak teljes maradékrendszert modulo $m$, ha
>
> a) számuk $m$, és
>
> b) közülük bármely kettő inkongruens modulo $m$.

*Bizonyítás.* A feltételek szükségessége nyilvánvaló. Elégségesség: a b) tulajdonság miatt az adott számok mind különböző maradékosztályba esnek, és mivel a) szerint $m$ darab van belőlük, az $m$ maradékosztály mindegyikébe esik egy. $\blacksquare$

> **6.5. Tétel.** Legyen $r_1, r_2, \dots, r_m$ teljes maradékrendszer modulo $m$, továbbá $(a, m) = 1$ és $b$ tetszőleges egész. Ekkor
> $$ar_1 + b,\ ar_2 + b,\ \dots,\ ar_m + b$$
> is teljes maradékrendszer modulo $m$.

*Bizonyítás.* Az új rendszer elemeinek száma is $m$, így a 6.4. Tétel szerint csak azt kell belátni, hogy páronként inkongruensek. Ha valamely $i \ne j$-re
$$ar_i + b \equiv ar_j + b \pmod m$$
volna, akkor $b$-t kivonva $ar_i \equiv ar_j$, és $(a, m) = 1$ miatt a 6.2. Tétel szerint $a$-val egyszerűsíthetünk: $r_i \equiv r_j \pmod m$. Ez ellentmond annak, hogy $r_1, \dots, r_m$ teljes maradékrendszer. $\blacksquare$

**Figyelem!** A tétel $(a, m) \ne 1$ esetén nem igaz: modulo $6$ a $0, 1, 2, 3, 4, 5$ rendszert $2$-vel szorozva $0, 2, 4, 0, 2, 4$ adódik, ami nem teljes maradékrendszer.

### Redukált maradékrendszer és az Euler-féle $\varphi$ függvény

Ha $a \equiv b \pmod m$, akkor $(a, m) = (b, m)$ (hiszen $a = b + km$, és a közös osztók ugyanazok). Így a maradékosztály minden elemére ugyanaz a legnagyobb közös osztó a modulussal.

> **6.6. Definíció.** Az $\overline{a}$ maradékosztályt modulo $m$ **redukált maradékosztálynak** nevezzük, ha $(a, m) = 1$.
>
> **6.7. Definíció.** Modulo $m$ **redukált maradékrendszernek** nevezzük az olyan számhalmazt, amelyet úgy kapunk, hogy minden redukált maradékosztályból pontosan egy reprezentánst választunk.
>
> **6.8. Definíció.** A modulo $m$ redukált maradékrendszer elemeinek számát $\varphi(m)$-mel jelöljük (**Euler-féle $\varphi$ függvény**).

Egyszerűbben, ekvivalens módon:

> **6.9. Definíció.** $\varphi(m)$ az $m$-nél nem nagyobb, $m$-hez relatív prím pozitív egészek száma.

(A két definíció egyezik, mert az $1, 2, \dots, m$ számok teljes maradékrendszert alkotnak, és közülük éppen az $m$-hez relatív prímek esnek redukált maradékosztályba.)

**Példa.** Modulo $30$ redukált maradékrendszer: $1, 7, 11, 13, 17, 19, 23, 29$. Tehát $\varphi(30) = 8$. Modulo $12$: $1, 5, 7, 11$, így $\varphi(12) = 4$. Ha $p$ prím, akkor $1, 2, \dots, p - 1$ mind relatív prím $p$-hez, tehát $\varphi(p) = p - 1$.

> **6.10. Tétel.** Ha az $n$ pozitív egész kanonikus alakja $n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_r^{\alpha_r}$, akkor
> $$\varphi(n) = n\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right)\cdots\left(1 - \frac{1}{p_r}\right).$$

A tételt a 17. fejezetben bizonyítjuk. Az általános képletből és a definícióból is könnyen látható, hogy $p$ prímre $\varphi(p) = p - 1$, és $\varphi(p^\alpha) = p^\alpha - p^{\alpha - 1}$, ha $\alpha \ge 1$ (az $1, \dots, p^\alpha$ számok közül pontosan a $p$ többszörösei, $p^{\alpha-1}$ darab, nem relatív prímek $p^\alpha$-hoz).

**Példák.**
$$\varphi(30) = 30 \cdot \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{5}\right) = 30 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{4}{5} = 8, \qquad \varphi(45) = 45 \cdot \left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{5}\right) = 24.$$

> **6.11. Tétel.** Adott számok pontosan akkor alkotnak redukált maradékrendszert modulo $m$, ha
>
> a) számuk $\varphi(m)$,
>
> b) közülük bármely kettő inkongruens modulo $m$, és
>
> c) mindegyikük relatív prím $m$-hez.

*Bizonyítás.* A szükségesség nyilvánvaló. Elégségesség: b) miatt minden szám más maradékosztályba tartozik (minden maradékosztályból legfeljebb egyet választottunk), c) miatt csak redukált maradékosztályokból választottunk. Mivel a) szerint a számok száma pontosan $\varphi(m)$, ez csak úgy lehet, hogy minden redukált maradékosztályból pontosan egyet választottunk. $\blacksquare$

> **6.12. Tétel.** Ha $r_1, r_2, \dots, r_{\varphi(m)}$ redukált maradékrendszer modulo $m$, és $(a, m) = 1$, akkor
> $$ar_1,\ ar_2,\ \dots,\ ar_{\varphi(m)}$$
> is redukált maradékrendszer modulo $m$.

*Bizonyítás.* A 6.11. Tétel feltételeit ellenőrizzük. A számok száma $\varphi(m)$. Páronként inkongruensek: ha $ar_i \equiv ar_j$, akkor $(a, m) = 1$ miatt egyszerűsíthetünk, $r_i \equiv r_j$, ami ellentmondás. Végül $(r_i, m) = 1$ és $(a, m) = 1$ miatt $(ar_i, m) = 1$ (ha egy $p$ prím osztaná $ar_i$-t és $m$-et, akkor Eukleidész I. tétele szerint $a$-t vagy $r_i$-t is osztaná). $\blacksquare$

**Példa.** Modulo $12$ az $1, 5, 7, 11$ redukált maradékrendszert $5$-tel szorozva $5, 25, 35, 55$, ezek maradékai $5, 1, 11, 7$ — ugyanazok a maradékok, csak más sorrendben. Ez a „keveredés” a következő tétel bizonyításának kulcsa.

### Az Euler–Fermat-tétel

Elérkeztünk a számelmélet egyik legnevezetesebb tételéhez.

> **6.13. Tétel (Euler–Fermat).** Ha $(a, m) = 1$, akkor
> $$a^{\varphi(m)} \equiv 1 \pmod m.$$

A tétel speciális esetének, a kis Fermat-tételnek az eredete 1640-ig nyúlik vissza, amikor Fermat egy levelében bizonyítás nélkül megfogalmazta prímekre vonatkozó állítását. Az első közölt bizonyítást Euler adta 1736-ban (megjelent 1741-ben), az általános, $\varphi$ függvényes alakot pedig Euler 1763-ban bizonyította. Leonhard Euler (1707–1783) a svájci Bázelben született; apja lelkésznek szánta, és a bázeli egyetemen — ahová már 13 évesen beiratkozott — teológiát is tanult. A matematika azonban sokkal jobban érdekelte: Johann Bernoulli, akitől magánórákat kapott, győzte meg Euler apját, hogy fiából neves matematikus lehet.

*Bizonyítás.* Legyen
$$r_1, r_2, \dots, r_{\varphi(m)} \qquad (6.2)$$
redukált maradékrendszer modulo $m$. Mivel $(a, m) = 1$, a 6.12. Tétel szerint
$$ar_1, ar_2, \dots, ar_{\varphi(m)} \qquad (6.3)$$
is redukált maradékrendszer. A (6.2) és (6.3) rendszer tehát ugyanazokból a maradékosztályokból áll, csak más sorrendben, így elemeik szorzata kongruens modulo $m$:
$$r_1 r_2 \cdots r_{\varphi(m)} \equiv (ar_1)(ar_2) \cdots (ar_{\varphi(m)}) = a^{\varphi(m)} \, r_1 r_2 \cdots r_{\varphi(m)} \pmod m.$$
Mivel $(r_i, m) = 1$ minden $i$-re, a 6.2. Tétel szerint az összes $r_i$-vel egyszerűsíthetünk, és
$$1 \equiv a^{\varphi(m)} \pmod m$$
adódik. $\blacksquare$

**FONTOS: a tételben $(a, m) = 1$!** Enélkül az állítás hamis: például $2^{\varphi(4)} = 2^2 = 4 \equiv 0 \not\equiv 1 \pmod 4$. Ha $(a, m) > 1$, akkor $a$ semmilyen pozitív hatványa sem lehet $1$-gyel kongruens, hiszen $(a, m)$ osztaná $a^k$-t és $m$-et, így $1$-et is.

Ha a modulus egy $p$ prím, akkor $\varphi(p) = p - 1$, és a tétel speciális esete:

> **6.14. Tétel (kis Fermat-tétel).** Ha $p$ prím és $(a, p) = 1$ (azaz $p \nmid a$), akkor
> $$a^{p-1} \equiv 1 \pmod p.$$

A kis Fermat-tételt gyakran
$$a^p \equiv a \pmod p$$
alakban mondják ki, ahol $a$ tetszőleges egész. Ez valóban minden $a$-ra igaz: ha $p \nmid a$, akkor a 6.14. Tételt $a$-val szorozzuk; ha $p \mid a$, akkor mindkét oldal $0$ modulo $p$.

**Példák.** (1) $7^{222}$ utolsó jegye: $\varphi(10) = 4$ és $(7, 10) = 1$, tehát $7^4 \equiv 1 \pmod{10}$; $222 = 4 \cdot 55 + 2$, így $7^{222} = (7^4)^{55} \cdot 7^2 \equiv 49 \equiv 9 \pmod{10}$. Az utolsó jegy $9$.

(2) A kis Fermat-tétel megfordítása **nem** igaz: abból, hogy $2^{n-1} \equiv 1 \pmod n$, nem következik, hogy $n$ prím. A legkisebb ellenpélda $n = 341 = 11 \cdot 31$, amelyre $2^{340} \equiv 1 \pmod{341}$. (Az ilyen számokat $2$ alapú álprímeknek nevezik.) A kis Fermat-tétel tehát *összetettségi* tesztként használható — ha $a^{n-1} \not\equiv 1 \pmod n$, akkor $n$ biztosan összetett —, prímtesztként azonban önmagában nem.

### Egy alkalmazás: „prímképletek” exponenciális tagokkal

Az Euler–Fermat-tétel és a kis Fermat-tétel számtalan bizonyításban szerepel. Lássunk egy példát, amely a 2. fejezet „prímképletek” témaköréhez kapcsolódik: a 2.25. Feladatban láttuk, hogy polinom nem adhat csupa prímet. Exponenciális tagokat is megengedve sem jobb a helyzet.

> **6.15. Tétel.** Legyen $P$ egy $k$-változós egész együtthatós polinom, és definiáljuk az $f$ függvényt az
> $$f(n) = P(n, 2^n, 3^n, \dots, k^n)$$
> képlettel. Ha $f(n) \to \infty$, amint $n \to \infty$, akkor $f(n)$ végtelen sok pozitív egész $n$-re összetett.

> **6.16. Megjegyzés.** Az $f(n) \to \infty$ feltétel valóban szükséges: ha $f(n) = 2^n \cdot 3^n - 6^n + 5$, akkor $f(n) = 5$ minden $n$-re, ami mindig prím. (Itt $P(x_1, \dots, x_6) = x_2 x_3 - x_6 + 5$.)

*Bizonyítás.* Indirekt módon tegyük fel, hogy van olyan $N_0$, hogy $n > N_0$ esetén $f(n)$ mindig prím. Mivel $f(n) \to \infty$, választhatunk olyan $n > N_0$-t, amelyre $f(n) = p$ prím és $p > k$. Tekintsük az
$$m = n + t\,p(p - 1) \qquad (t = 1, 2, 3, \dots)$$
számokat. Nyilván $m \equiv n \pmod p$. Másrészt bármely $2 \le a \le k$ egészre $(a, p) = 1$ (hiszen $a \le k < p$), így a kis Fermat-tétel szerint $a^{p-1} \equiv 1 \pmod p$, és
$$a^m = a^n \cdot \left(a^{p-1}\right)^{tp} \equiv a^n \cdot 1^{tp} = a^n \pmod p.$$
Tehát
$$m \equiv n, \quad 2^m \equiv 2^n, \quad 3^m \equiv 3^n, \quad \dots, \quad k^m \equiv k^n \pmod p,$$
és a polinomokra vonatkozó tulajdonság szerint
$$f(m) = P(m, 2^m, \dots, k^m) \equiv P(n, 2^n, \dots, k^n) = f(n) = p \equiv 0 \pmod p.$$
Vagyis $p \mid f(m)$. Mivel $m > N_0$, $f(m)$ prím, és osztja a $p$ prím, ezért $f(m) = p$. Ez minden $t$-re igaz, ugyanakkor $t \to \infty$ esetén $m \to \infty$, így $f(m) \to \infty$ — ellentmondás. $\blacksquare$

## 7. Moduláris hatványozás

Számítsuk ki $2^{331}$ maradékát $17$-tel osztva! Ilyen feladat a titkosítási eljárásokban (24. fejezet) óriási, több száz jegyű számokkal fordul elő, ezért fontos, hogy *gyorsan* el tudjuk végezni.

**1. lépés: a kitevő csökkentése.** A kis Fermat-tétel szerint $2^{16} \equiv 1 \pmod{17}$, így $2^{160} = (2^{16})^{10} \equiv 1$ és $2^{320} \equiv 1 \pmod{17}$. Ezért
$$2^{331} = 2^{320} \cdot 2^{11} \equiv 2^{11} \pmod{17}.$$
(Általában: ha $(a, m) = 1$, akkor a kitevőt modulo $\varphi(m)$ redukálhatjuk.)

**2. lépés: ismételt négyzetre emelés.** Készítsünk táblázatot a $2^{2^k}$ alakú hatványok $17$-es maradékairól. Minden rubrikát az előző négyzetre emelésével, majd redukálásával kapunk:

| hatvány | $2^1$ | $2^2$ | $2^4$ | $2^8$ |
|---|---|---|---|---|
| maradék mod $17$ | $2$ | $4$ | $16 \equiv -1$ | $(-1)^2 = 1$ |

**3. lépés: a kitevő kettes számrendszerben.** $11 = 8 + 2 + 1$, így
$$2^{11} = 2^8 \cdot 2^2 \cdot 2^1 \equiv 1 \cdot 4 \cdot 2 = 8 \pmod{17}.$$
Tehát $2^{331} \equiv 8 \pmod{17}$.

(Itt észrevehettük volna, hogy már $2^8 \equiv 1$, így a kitevőt $8$-cal is redukálhattuk volna: $331 = 8 \cdot 41 + 3$, $2^{331} \equiv 2^3 = 8$. Erről a „legkisebb jó kitevőről”, a **rendről** a 19. fejezetben lesz szó.)

### Az ismételt négyzetre emelés módszere általában

Az $a^k \bmod m$ kiszámítása a következőképpen történik:

1. Írjuk fel $k$-t kettes számrendszerben: $k = 2^{j_1} + 2^{j_2} + \dots + 2^{j_s}$.
2. Számítsuk ki egymás után az $a, a^2, a^4, a^8, \dots, a^{2^{j_1}}$ hatványok maradékát (mindegyik az előző négyzete, redukálva).
3. Szorozzuk össze a szükséges $a^{2^{j_i}}$ maradékokat, minden szorzás után redukálva.

Ha $k$-nak $L$ jegye van kettes számrendszerben ($L \approx \log_2 k$), akkor ez legfeljebb $2L$ szorzás modulo $m$, és a számok közben sosem nőnek $m^2$ fölé. Egy $600$ jegyű kitevőhöz tehát néhány ezer szorzás elég — szemben az $a \cdot a \cdots a$ ismételt szorzással, amely a világegyetem élettartama alatt sem érne véget.

**Kidolgozott példa.** Számítsuk ki $3^{2026}$ maradékát modulo $101$! A $101$ prím, így $3^{100} \equiv 1$, és $2026 = 20 \cdot 100 + 26$ miatt $3^{2026} \equiv 3^{26}$. Most $26 = 16 + 8 + 2$. A négyzetre emelések:
$$3^2 = 9, \quad 3^4 = 81 \equiv -20, \quad 3^8 \equiv (-20)^2 = 400 = 3 \cdot 101 + 97 \equiv -4, \quad 3^{16} \equiv (-4)^2 = 16.$$
Így
$$3^{26} = 3^{16} \cdot 3^8 \cdot 3^2 \equiv 16 \cdot (-4) \cdot 9 = -576 \equiv -576 + 6 \cdot 101 = 30 \pmod{101}.$$
Tehát $3^{2026} \equiv 30 \pmod{101}$. (Figyeljük meg, mennyit segít, hogy negatív maradékokkal is számolhatunk: $-20$ és $-4$ kisebb számok, mint $81$ és $97$.)

## 8. Lineáris kongruencia

Lineáris kongruenciákkal sokoldalú alkalmazhatóságuk miatt már az ókori Indiában is foglalkoztak, például a csillagászatban, az égitestek mozgásának kiszámításakor. A fejezet első részében megnézzük, hogyan oldható meg egy lineáris kongruencia a $\varphi$ függvény segítségével, majd rátérünk Brahmagupta (598–668) indiai matematikus módszerére, amely lényegesen gyorsabb. Brahmaguptáról érdemes megjegyezni, hogy a nullát önálló számként kezelte, és ismertette a negatív számokkal végzett műveletek szabályait is.

Egy $ax \equiv b \pmod m$ alakú kongruenciát **lineáris kongruenciának** nevezünk. Megoldásán azokat az $x$ egészeket értjük, amelyekre teljesül. Ha $x_0$ megoldás, akkor $x_0 + km$ is az, ezért a megoldásokat maradékosztályokként adjuk meg, és **a megoldások számán mindig az eredeti modulus szerint páronként inkongruens megoldások számát értjük.**

> **8.1. Tétel.** Az
> $$ax \equiv b \pmod m$$
> kongruencia pontosan akkor oldható meg, ha
> $$(a, m) \mid b.$$
> Megoldhatóság esetén a megoldások száma (modulo $m$) éppen $(a, m)$.

*Bizonyítás.* **a) Szükségesség.** Ha $x_0$ megoldás, akkor $m \mid ax_0 - b$, vagyis van olyan $y_0$ egész, amelyre $ax_0 - b = my_0$, azaz
$$ax_0 - my_0 = b.$$
Mivel $(a, m) \mid a$ és $(a, m) \mid m$, ezért $(a, m) \mid ax_0 - my_0 = b$.

**b) Elégségesség.** Legyen $d = (a, m)$, és tegyük fel, hogy $d \mid b$, azaz $b = d b'$. A 3.19. Tétel szerint vannak olyan $x^*, y^*$ egészek, amelyekre $d = ax^* + my^*$. Ezt $b'$-vel szorozva
$$b = a(x^* b') + m(y^* b'),$$
vagyis $m \mid b - a(x^* b')$, azaz $a(x^* b') \equiv b \pmod m$. Tehát $x = x^* b'$ megoldás.

**c) A megoldások száma.** Legyen most $d \mid b$, és $a = a'd$, $m = m'd$, $b = b'd$, ahol $(a', m') = 1$. A kongruencia
$$a'd\,x \equiv b'd \pmod{m'd} \qquad (8.1)$$
alakú, és a 6.2. Tétel szerint ($d$-vel osztva a modulus is $d$-vel osztódik) ekvivalens az
$$a' x \equiv b' \pmod{m'} \qquad (8.2)$$
kongruenciával. Megmutatjuk, hogy (8.2)-nek modulo $m'$ pontosan egy megoldása van. Legyen $r_1, \dots, r_{m'}$ teljes maradékrendszer modulo $m'$. Mivel $(a', m') = 1$, a 6.5. Tétel szerint $a' r_1, \dots, a' r_{m'}$ is teljes maradékrendszer, így pontosan egy $r_i$ van, amelyre $a' r_i \equiv b' \pmod{m'}$.

Tehát (8.1) megoldásai pontosan az $x = r_i + km'$ ($k \in \mathbb{Z}$) számok. Ezek közül hány inkongruens modulo $m$? 
$$r_i + k_1 m' \equiv r_i + k_2 m' \pmod{m'd} \iff k_1 m' \equiv k_2 m' \pmod{m'd} \iff k_1 \equiv k_2 \pmod d,$$
ahol az utolsó lépésben a 6.2. Tétellel $m'$-vel egyszerűsítettünk. Tehát a $k = 0, 1, \dots, d - 1$ értékek adják a páronként inkongruens megoldásokat, és ezek száma $d = (a, m)$. $\blacksquare$

**A tétel tartalma a gyakorlatban.** Az $ax \equiv b \pmod m$ megoldásának receptje:

1. Számítsuk ki $d = (a, m)$-et. Ha $d \nmid b$, nincs megoldás.
2. Ha $d \mid b$, osszunk el mindent ($a$-t, $b$-t és $m$-et is) $d$-vel: $a'x \equiv b' \pmod{m'}$, ahol már $(a', m') = 1$.
3. Oldjuk meg ezt (egyetlen megoldás modulo $m'$, legyen $x_0$).
4. Az eredeti kongruencia megoldásai: $x \equiv x_0, x_0 + m', x_0 + 2m', \dots, x_0 + (d-1)m' \pmod m$.

**Példák.** $6x \equiv 4 \pmod 9$ nem oldható meg, mert $(6, 9) = 3 \nmid 4$. (Valóban: $6x$ maradéka modulo $9$ csak $0, 6, 3$ lehet.) A $6x \equiv 9 \pmod{15}$ kongruenciára $(6, 15) = 3 \mid 9$, tehát $3$ megoldás van: $3$-mal osztva $2x \equiv 3 \pmod 5$, amelynek megoldása $x \equiv 4 \pmod 5$ ($2 \cdot 4 = 8 \equiv 3$). Így $x \equiv 4, 9, 14 \pmod{15}$.

A 3. lépésre, vagyis az $(a, m) = 1$ esetre két módszert ismertetünk.

### 8.1. Lineáris kongruencia megoldása $\varphi$-vel

> **8.2. Tétel.** Ha $(a, m) = 1$, akkor az $ax \equiv b \pmod m$ kongruencia egyetlen megoldása
> $$x \equiv a^{\varphi(m) - 1} b \pmod m.$$

*Bizonyítás.* Az előző tétel szerint pontosan egy megoldás van modulo $m$. Az $x = a^{\varphi(m)-1} b$ szám megoldás, mert
$$ax = a^{\varphi(m)} b \equiv 1 \cdot b = b \pmod m \qquad (8.3)$$
az Euler–Fermat-tétel szerint. $\blacksquare$

**Kidolgozott példa.** Oldjuk meg a $21x \equiv 14 \pmod{35}$ kongruenciát! Mivel $(21, 35) = 7 \mid 14$, a kongruencia megoldható, és $7$ inkongruens megoldása van modulo $35$. $7$-tel egyszerűsítve (a modulust is osztva)
$$3x \equiv 2 \pmod 5,$$
amelyben már $(3, 5) = 1$. Ennek egyetlen megoldása
$$x_0 \equiv 3^{\varphi(5) - 1} \cdot 2 = 3^3 \cdot 2 = 54 \equiv 4 \pmod 5.$$
(Ellenőrzés: $3 \cdot 4 = 12 \equiv 2 \pmod 5$.) Tehát az eredeti kongruencia megoldásai:
$$x \equiv 4, 9, 14, 19, 24, 29, 34 \pmod{35}.$$

Ez a módszer könnyen megjegyezhető, de nagy modulusra nem hatékony: $\varphi(m)$ kiszámításához ismernünk kell $m$ prímtényezős felbontását, ami nagy számokra rendkívül lassú.

### 8.2. Lineáris kongruencia megoldása az euklideszi algoritmussal

Most Brahmagupta módszerét ismertetjük (amely Árjabhata V. századi úgynevezett *kuttaka*, „porlasztó” eljárására épült), de a modern terminológiát követve. Tekintsük az
$$ax \equiv b \pmod m \qquad (8.4)$$
kongruenciát, ahol $(a, m) = 1$. Ekkor létezik egy modulo $m$ egyértelműen meghatározott $a^*$ elem (jelölése $a^{-1}$ is), amelyre
$$a a^* \equiv 1 \pmod m;$$
ez az $a$ **inverze** modulo $m$. (Létezése és egyértelműsége a 8.1. Tételből következik a $b = 1$ esetben.) Az előző pont szerint $a^* \equiv a^{\varphi(m) - 1}$, de $a^*$ az euklideszi algoritmussal is meghatározható. Ha $a^*$ megvan, (8.4)-et $a^*$-gal szorozva
$$a^* a x \equiv a^* b, \qquad \text{azaz} \qquad x \equiv a^* b \pmod m.$$

Az inverz meghatározásához írjuk fel $a$-ra és $m$-re az euklideszi algoritmust, és — a 3.19. Tétel bizonyításában látott módon — fejezzük ki az utolsó nem nulla maradékot, $1 = (a, m)$-et:
$$1 = a x_n + m y_n.$$
Ekkor modulo $m$ nézve $a x_n \equiv 1 \pmod m$, vagyis **$x_n$ maradéka modulo $m$ éppen $a^*$.**

**Kidolgozott példa.** Oldjuk meg a $18x \equiv 23 \pmod{25}$ kongruenciát! Az euklideszi algoritmus:
$$25 = 18 \cdot 1 + 7, \quad 18 = 7 \cdot 2 + 4, \quad 7 = 4 \cdot 1 + 3, \quad 4 = 3 \cdot 1 + 1.$$
Visszahelyettesítve:
$$1 = 4 - 3 = 4 - (7 - 4) = 2 \cdot 4 - 7 = 2(18 - 2 \cdot 7) - 7 = 2 \cdot 18 - 5 \cdot 7 = 2 \cdot 18 - 5(25 - 18) = 7 \cdot 18 - 5 \cdot 25.$$
Tehát $18 \cdot 7 \equiv 1 \pmod{25}$, azaz $18^* \equiv 7$. Így
$$x \equiv 7 \cdot 23 = 161 \equiv 11 \pmod{25}.$$
Ellenőrzés: $18 \cdot 11 = 198 = 7 \cdot 25 + 23$. ✓

Brahmagupta módszere azért sokkal gyorsabb a $\varphi$-re épülőnél, mert nincs szükség faktorizálásra (ami $\varphi(m)$ kiszámításához nélkülözhetetlen). Az euklideszi algoritmus pedig rendkívül gyors: a 3.20. Feladat szerint $m$ modulus esetén kevesebb mint $2\log_2 m + 2$ lépésben véget ér.

## 9. Lineáris diofantikus egyenletek

**Diofantikus** (vagy diofantoszi) egyenletnek általában olyan egész együtthatós algebrai egyenletet nevezünk, amelynek a megoldásait az egész számok (esetleg a racionális számok) körében keressük. Egy többismeretlenes, magasabb fokú egyenlet összes egész megoldásának megtalálása általában nagyon nehéz — Matyijaszevics már említett tétele szerint nincs is rá általános algoritmus —, bizonyos speciális esetekben azonban könnyen célhoz érhetünk.

Az alexandriai Diophantosz (Kr. u. 3. század) korának híres feladatmegoldója volt; *Arithmetica* című művében sok ilyen egyenlet szerepel, de legtöbbször megelégedett azzal, hogy felírta az egyenletet, és megadott hozzá egy megoldást. Egy ókori fejtörő Diophantosz sírfelirata is (a *Görög Antológiából*):

> *„Az istenek kegyelméből élete egyhatodát gyermekként töltötte. Eltelt életének még egytizenketted része, és kiserkent szakálla. További hetedrész múltán esküvői gyertyái égtek. Öt évvel a lakodalom után fia született, de ó, jaj! A későn született, gyenge gyermeket elragadta a kegyetlen sors, alighogy apja életének felét leélte. Gyászoló apja a számelméletben keresett vigaszt, ám négy év múlva az ő élete is véget ért.”*

::: kiegeszites
**Kiegészítés: a sírfelirat megfejtése.** Ha Diophantosz $x$ évig élt, akkor
$$\frac{x}{6} + \frac{x}{12} + \frac{x}{7} + 5 + \frac{x}{2} + 4 = x.$$
$84$-gyel szorozva: $14x + 7x + 12x + 420 + 42x + 336 = 84x$, azaz $75x + 756 = 84x$, $x = 84$. Diophantosz tehát a fejtörő szerint $84$ évet élt (14 évig volt gyermek, 21 évesen nőtt szakálla, 33 évesen nősült, 38 évesen lett fia, aki 42 évet élt, és Diophantosz 84 évesen halt meg). Itt persze nem egész megoldást kellett keresni, de az, hogy $x$-nek oszthatónak kell lennie $6$-tal, $12$-vel, $7$-tel és $2$-vel (vagyis $84$-gyel), már önmagában erősen leszűkíti a lehetőségeket.
:::

### Egy példa

Oldjuk meg a
$$43x + 25y = 98 \qquad (9.1)$$
lineáris diofantikus egyenletet, azaz határozzuk meg az összes olyan $x, y$ egészet, amelyre (9.1) teljesül! Mielőtt az általános módszert ismertetnénk, nézzük a példa egy lehetséges megoldását kongruenciákkal. Ha (9.1) teljesül, akkor modulo $25$ nézve ($25y \equiv 0$):
$$43x \equiv 98 \pmod{25}, \qquad \text{azaz} \qquad 18x \equiv 23 \pmod{25}.$$
Ezt a lineáris kongruenciát az előző fejezetben megoldottuk: $x \equiv 11 \pmod{25}$. Tehát az összes megoldás $x$-e $x = 11 + 25t$ alakú, $t \in \mathbb{Z}$. Visszahelyettesítve:
$$43(11 + 25t) + 25y = 98 \ \Longrightarrow\ 473 + 43 \cdot 25t + 25y = 98 \ \Longrightarrow\ 25y = -375 - 43 \cdot 25t \ \Longrightarrow\ y = -15 - 43t.$$
Tehát az összes megoldás
$$x = 11 + 25t, \qquad y = -15 - 43t \qquad (t \in \mathbb{Z}).$$
Ellenőrzés $t = 0$-ra: $43 \cdot 11 + 25 \cdot (-15) = 473 - 375 = 98$. ✓

### Az általános tétel

> **9.1. Tétel.** Legyenek $a, b, c$ rögzített egészek, ahol $a$ és $b$ közül legalább az egyik nem nulla, és tekintsük az
> $$ax + by = c$$
> diofantikus egyenletet.
>
> (i) Az egyenlet pontosan akkor oldható meg, ha $(a, b) \mid c$.
>
> (ii) Megoldhatóság esetén végtelen sok megoldás van. Ha $x_0, y_0$ egy rögzített megoldás, akkor az összes $x', y'$ megoldást az
> $$x' = x_0 + t\,\frac{b}{(a, b)}, \qquad y' = y_0 - t\,\frac{a}{(a, b)} \qquad (t = 0, \pm 1, \pm 2, \dots)$$
> képlet szolgáltatja.
>
> (iii) Egy megoldás az euklideszi algoritmussal kapható meg.

*Bizonyítás.* (i) *Ha van megoldás, akkor $(a, b) \mid c$:* ha $ax_0 + by_0 = c$, akkor $(a, b)$ osztja $a$-t és $b$-t, így $ax_0 + by_0 = c$-t is.

*Ha $(a, b) \mid c$, akkor van megoldás:* legyen $c = (a, b) c_0$. Az euklideszi algoritmussal (3.19. Tétel) találunk olyan $x^*, y^*$ egészeket, amelyekre
$$(a, b) = ax^* + by^*.$$
Ezt $c_0$-lal szorozva $c = a(x^* c_0) + b(y^* c_0)$, tehát $x_0 = x^* c_0$, $y_0 = y^* c_0$ megoldás. Ez egyben a tétel (iii) részét is igazolja.

(ii) A képlettel adott számok megoldások, hiszen
$$a\left(x_0 + t\frac{b}{(a,b)}\right) + b\left(y_0 - t\frac{a}{(a,b)}\right) = ax_0 + by_0 + t\frac{ab - ba}{(a, b)} = c.$$
Megfordítva, legyen $x', y'$ tetszőleges megoldás. Ekkor $ax' + by' = c = ax_0 + by_0$, így
$$a(x' - x_0) = b(y_0 - y'), \qquad \frac{a}{(a,b)}(x' - x_0) = \frac{b}{(a,b)}(y_0 - y'). \qquad (9.2)$$
Itt $\frac{a}{(a,b)}$ osztja a bal oldalt, így a jobb oldalt is. Mivel $\left(\frac{a}{(a,b)}, \frac{b}{(a,b)}\right) = 1$ (ha $e > 1$ közös osztójuk volna, akkor $e(a, b)$ közös osztója volna $a$-nak és $b$-nek), ezért
$$\frac{a}{(a,b)} \mid y_0 - y', \qquad \text{azaz} \qquad y_0 - y' = t\,\frac{a}{(a,b)}, \quad y' = y_0 - t\frac{a}{(a,b)}$$
valamely $t$ egésszel. Ezt (9.2)-be írva és $\frac{a}{(a,b)}$-vel egyszerűsítve (ha $a \ne 0$; az $a = 0$ eset nyilvánvaló):
$$x' - x_0 = t\,\frac{b}{(a,b)}, \qquad x' = x_0 + t\frac{b}{(a,b)}. \ \blacksquare$$

**Geometriai jelentés.** Az $ax + by = c$ egyenlet a síkon egy egyenes, a megoldások pedig az egyenesre eső **rácspontok** (egész koordinátájú pontok). A tétel szerint ilyen rácspont vagy egyáltalán nincs, vagy végtelen sok van, és ezek egyenlő közönként, a $\left(\frac{b}{(a,b)}, -\frac{a}{(a,b)}\right)$ vektor többszöröseivel eltolva követik egymást.

**Kidolgozott példa (szöveges feladat).** Egy postán $7$ és $11$ forintos bélyegek kaphatók. Hogyan ragaszthatunk fel pontosan $100$ forint értékű bélyeget? Az egyenlet $7x + 11y = 100$, ahol most $x, y \ge 0$ egészek. Mivel $(7, 11) = 1$, van egész megoldás. Modulo $11$: $7x \equiv 100 \equiv 1 \pmod{11}$, és $7 \cdot 8 = 56 = 5 \cdot 11 + 1$, így $x \equiv 8 \pmod{11}$. Az összes egész megoldás $x = 8 + 11t$, $y = 4 - 7t$. A nemnegatívitás miatt $t = 0$ az egyetlen lehetőség: **$8$ darab $7$ forintos és $4$ darab $11$ forintos bélyeg** ($56 + 44 = 100$).

### Több ismeretlen

A lineáris diofantikus egyenletek elmélete több ismeretlenre is kiterjeszthető. A megoldhatóságra vonatkozó tétel analogonja:

> **9.2. Tétel.** Az $a_1 x_1 + a_2 x_2 + \dots + a_n x_n = c$ lineáris diofantikus egyenlet (ahol nem minden $a_i$ nulla) pontosan akkor oldható meg, ha
> $$(a_1, a_2, \dots, a_n) \mid c.$$

A jegyzet ezt a tételt nem bizonyítja.

::: kiegeszites
**Kiegészítés: a 9.2. Tétel bizonyításának vázlata.** A szükségesség ugyanúgy megy, mint két változóra. Az elégségességhez elég belátni, hogy $(a_1, \dots, a_n)$ előáll $a_1 x_1 + \dots + a_n x_n$ alakban (ekkor $c_0$-lal szorzunk, mint fent). Ezt $n$ szerinti indukcióval igazoljuk. Felhasználjuk, hogy $(a_1, \dots, a_n) = \big((a_1, \dots, a_{n-1}), a_n\big)$ — mindkét oldal az $a_1, \dots, a_n$ közös osztóinak kitüntetett közös osztója. Ha $d' = (a_1, \dots, a_{n-1}) = a_1 u_1 + \dots + a_{n-1} u_{n-1}$ (indukciós feltevés), és $(d', a_n) = d' v + a_n w$ (3.19. Tétel), akkor
$$(a_1, \dots, a_n) = a_1(u_1 v) + \dots + a_{n-1}(u_{n-1} v) + a_n w. \ \blacksquare$$
:::

## A II. rész összefoglalása

- **Kongruencia:** $a \equiv b \pmod m \iff m \mid a - b \iff$ azonos a maradékuk. Összeadni, kivonni, szorozni, hatványozni szabad; polinomba helyettesítve is megmarad.
- **Osztás:** $ka \equiv kb \pmod m \iff a \equiv b \pmod{m/(k,m)}$; a modulushoz relatív prím számmal szabadon egyszerűsíthetünk.
- **Teljes / redukált maradékrendszer;** $\varphi(m)$ = a modulushoz relatív prím maradékosztályok száma; $\varphi(p^\alpha) = p^\alpha - p^{\alpha-1}$, $\varphi(n) = n\prod_{p \mid n}(1 - 1/p)$. Ha $(a, m) = 1$, akkor $a r_i + b$ is teljes, $a r_i$ is redukált maradékrendszer.
- **Euler–Fermat:** $(a, m) = 1 \Rightarrow a^{\varphi(m)} \equiv 1 \pmod m$. **Kis Fermat:** $a^p \equiv a \pmod p$. A feltétel nélkül hamis; a megfordítás is hamis ($341$).
- **Moduláris hatványozás:** a kitevő redukálása modulo $\varphi(m)$, majd ismételt négyzetre emelés a kitevő kettes számrendszerbeli alakja szerint — kb. $2\log_2 k$ szorzás.
- **Lineáris kongruencia:** $ax \equiv b \pmod m$ pontosan akkor oldható meg, ha $(a, m) \mid b$, és ekkor $(a, m)$ megoldás van. Ha $(a, m) = 1$: $x \equiv a^{\varphi(m)-1} b$, vagy (gyorsabban) az inverz az euklideszi algoritmusból.
- **Lineáris diofantikus egyenlet:** $ax + by = c$ pontosan akkor oldható meg, ha $(a, b) \mid c$; az összes megoldás $x_0 + t\frac{b}{(a,b)}$, $y_0 - t\frac{a}{(a,b)}$.

## Feladatok a II. részhez

1. Mi a $3^{100}$ maradéka $7$-tel osztva?
2. Bizonyítsuk be, hogy $13 \mid 2^{70} + 3^{70}$.
3. Mi a $3^{2026}$ utolsó két számjegye?
4. Oldjuk meg: a) $15x \equiv 25 \pmod{35}$; b) $20x \equiv 8 \pmod{36}$; c) $6x \equiv 4 \pmod 9$.
5. Határozzuk meg $17$ inverzét modulo $43$ az euklideszi algoritmussal, és oldjuk meg a $17x \equiv 5 \pmod{43}$ kongruenciát.
6. Határozzuk meg a következő diofantikus egyenletek összes egész megoldását: a) $12x + 18y = 30$; b) $112x + 70y = 42$; c) $6x + 10y = 7$.
7. Bizonyítsuk be, hogy $30 \mid n^5 - n$ minden $n$ egészre.
8. Bizonyítsuk be, hogy ha $p > 3$ prím, akkor $p^2 \equiv 1 \pmod{24}$.
9. Bizonyítsuk be, hogy ha $(a, m) = 1$, akkor $a$ inverze modulo $m$ egyértelmű maradékosztály.
10. Igazoljuk, hogy egy szám pontosan akkor osztható $9$-cel, ha számjegyeinek összege osztható $9$-cel, és pontosan akkor osztható $11$-gyel, ha számjegyeinek váltakozó előjelű összege ($a_0 - a_1 + a_2 - \dots$) osztható $11$-gyel.

### Megoldási útmutatók

1. $3^6 \equiv 1 \pmod 7$ (kis Fermat), $100 = 6 \cdot 16 + 4$, így $3^{100} \equiv 3^4 = 81 \equiv 4$.
2. $2^{12} \equiv 1$, így $2^{70} \equiv 2^{10} = 1024 \equiv 10 \pmod{13}$; $3^3 = 27 \equiv 1$, így $3^{70} = (3^3)^{23} \cdot 3 \equiv 3$. Összegük $13 \equiv 0$.
3. $\varphi(100) = 40$, $2026 = 40 \cdot 50 + 26$, így $3^{2026} \equiv 3^{26} \pmod{100}$. Ismételt négyzetre emeléssel: $3^2 = 9$, $3^4 = 81$, $3^8 \equiv 61$, $3^{16} \equiv 21$; $3^{26} = 3^{16} \cdot 3^8 \cdot 3^2 \equiv 21 \cdot 61 \cdot 9 \equiv 81 \cdot 9 \equiv 29$. Az utolsó két jegy: $29$.
4. a) $(15, 35) = 5 \mid 25$; $3x \equiv 5 \pmod 7$, $x \equiv 4 \pmod 7$; megoldások: $4, 11, 18, 25, 32 \pmod{35}$. b) $(20, 36) = 4 \mid 8$; $5x \equiv 2 \pmod 9$, $x \equiv 4 \pmod 9$; megoldások: $4, 13, 22, 31 \pmod{36}$. c) $(6, 9) = 3 \nmid 4$: nincs megoldás.
5. $43 = 2 \cdot 17 + 9$, $17 = 9 + 8$, $9 = 8 + 1$; $1 = 9 - 8 = 2 \cdot 9 - 17 = 2 \cdot 43 - 5 \cdot 17$. Tehát $17^{-1} \equiv -5 \equiv 38 \pmod{43}$, és $x \equiv 38 \cdot 5 = 190 \equiv 18 \pmod{43}$ (ellenőrzés: $17 \cdot 18 = 306 = 7 \cdot 43 + 5$).
6. a) $(12, 18) = 6 \mid 30$; $2x + 3y = 5$, egy megoldás $x_0 = y_0 = 1$; az összes: $x = 1 + 3t$, $y = 1 - 2t$. b) $(112, 70) = 14 \mid 42$; $8x + 5y = 3$, egy megoldás $x_0 = 1$, $y_0 = -1$; az összes: $x = 1 + 5t$, $y = -1 - 8t$. c) $(6, 10) = 2 \nmid 7$: nincs megoldás (a bal oldal mindig páros).
7. $30 = 2 \cdot 3 \cdot 5$, és a kis Fermat-tétel ($a^p \equiv a$ alakban) szerint $n^5 \equiv n \pmod 5$; továbbá $n^5 = n \cdot (n^2)^2 \equiv n \pmod 3$ (mert $n^3 \equiv n$, így $n^5 = n^3 \cdot n^2 \equiv n \cdot n^2 = n^3 \equiv n$), és $n^5 \equiv n \pmod 2$. A három relatív prím szám mind osztja $n^5 - n$-et, így a szorzatuk is.
8. $p$ páratlan, így $p^2 - 1 = (p - 1)(p + 1)$ két szomszédos páros szám szorzata, amelyek egyike $4$-gyel is osztható: $8 \mid p^2 - 1$. Továbbá $3 \nmid p$, így $p \equiv \pm 1 \pmod 3$, és $3 \mid p^2 - 1$.
9. Ha $aa^* \equiv 1$ és $aa^{**} \equiv 1$, akkor $a(a^* - a^{**}) \equiv 0$, és $(a, m) = 1$ miatt egyszerűsíthetünk: $a^* \equiv a^{**}$.
10. $10 \equiv 1 \pmod 9$, így $a_n 10^n + \dots + a_0 \equiv a_n + \dots + a_0 \pmod 9$. $10 \equiv -1 \pmod{11}$, így a szám $\equiv a_0 - a_1 + a_2 - \dots \pmod{11}$.

---

# III. RÉSZ: KLASSZIKUS KÉRDÉSEK

A harmadik rész három klasszikus, évezredes kérdést vizsgál, amelyekben a számelmélet eddig felépített eszközei — a SzAT, a paritásvizsgálat, a maradékok — kerülnek alkalmazásra. Melyik szám racionális, és melyik nem? Melyek a derékszögű háromszögek egész oldalhosszai? És miért nincs megoldása az $x^n + y^n = z^n$ egyenletnek $n \ge 3$-ra? Az utolsó kérdésre a teljes választ csak a XX. század végén találták meg; mi az $n = 4$ esetet bizonyítjuk be Fermat saját módszerével.

## 10. Racionális, irracionális?

Az irracionális számok felfedezését általában Hippaszosznak, Püthagorasz egyik tanítványának tulajdonítják, aki az első (talán geometriai) bizonyítást adta $\sqrt{2}$ irracionalitására. A legenda szerint Püthagorasz nem tudta elfogadni az irracionális számok létezését, és Hippaszoszt vízbe fojtatta; más történetek szerint Püthagorasz tanítványai végeztek vele, vagy egyszerűen csak kizárták a közösségükből. Akármi is történt, a felfedezés megrendítette a püthagoreusok világképét, amely szerint „minden szám” — vagyis minden mennyiség egészek arányaként fejezhető ki.

> **10.1. Tétel.** $\sqrt{2}$ irracionális.

*Bizonyítás.* A bizonyításhoz nem szükséges a SzAT. Indirekt módon tegyük fel, hogy $\sqrt{2}$ racionális:
$$\sqrt{2} = \frac{a}{b}, \qquad (a, b) = 1.$$
Ekkor $\sqrt{2}\, b = a$, és négyzetre emelve
$$2b^2 = a^2.$$
Tehát $a^2$ páros. Ekkor $a$ nem lehet páratlan, hiszen páratlan szám négyzete páratlan; így $a$ páros: $a = 2a_0$. Behelyettesítve $2b^2 = 4a_0^2$, azaz
$$b^2 = 2a_0^2,$$
tehát $b^2$ és így $b$ is páros. Ekkor viszont $2 \mid (a, b)$, ami ellentmond $(a, b) = 1$-nek. $\blacksquare$

Hasonlóan, de már a SzAT felhasználásával könnyen igazolhatók a következők is:

> **10.2. Tétel.** Ha az $N$ pozitív egész nem $m$-edik hatvány, akkor $\sqrt[m]{N}$ irracionális.
>
> **10.3. Tétel.** $\log_{10} 2$ irracionális.

A két tétel bizonyítását a jegyzet az olvasóra bízza.

::: kiegeszites
**Kiegészítés: a 10.2. és a 10.3. Tétel bizonyítása.**

*10.2.* Tegyük fel, hogy $\sqrt[m]{N} = \frac{a}{b}$, ahol $a, b$ pozitív egészek és $(a, b) = 1$. Ekkor $N b^m = a^m$. Ha $b > 1$ volna, akkor $b$-nek volna egy $p$ prímosztója; $p \mid a^m$, így Eukleidész I. tétele szerint $p \mid a$, ellentmondásban $(a, b) = 1$-gyel. Tehát $b = 1$ és $N = a^m$, vagyis $N$ $m$-edik hatvány. (A SzAT nyelvén: $N$ pontosan akkor $m$-edik hatvány, ha kanonikus alakjában minden kitevő osztható $m$-mel.)

*10.3.* Mivel $1 < 2 < 10$, ezért $0 < \log_{10} 2 < 1$. Ha $\log_{10} 2 = \frac{p}{q}$ volna pozitív egészekkel, akkor $10^{p/q} = 2$, azaz $10^p = 2^q$. A bal oldal osztható $5$-tel, a jobb oldal nem — ez ellentmond a SzAT-nak. $\blacksquare$
:::

**Mit tudunk más nevezetes számokról?** Ma már sok konstansról tudjuk, hogy irracionális, sőt **transzcendens** (azaz nem gyöke semmilyen nem nulla racionális együtthatós polinomnak). Ilyen például

- $e$ (Hermite, 1873) és $\pi$ (Lindemann, 1882), és ezért $p(e)$ és $p(\pi)$ is minden nem konstans, racionális együtthatós $p$ polinomra;
- $e^{\sqrt{2}}$, $e^{\sqrt{5}}$, $e^{\sqrt[3]{2}}$, általában $e^\alpha$ minden nem nulla algebrai $\alpha$-ra (Lindemann–Weierstrass-tétel);
- a XX. század eredményei közül: $e^\pi$ (Gelfond, 1929), $2^{\sqrt{2}}$ és $e^{\pi\sqrt{2}}$ (a Gelfond–Schneider-tétel, 1934, következményei), valamint $\pi + e^\pi$ (Nyesztyerenko, 1996).

Ugyanakkor ma sem tudjuk bizonyítani, hogy irracionális-e például
$$e + \pi, \quad e\pi, \quad \pi^e, \quad 2^e, \quad \pi^{\sqrt{2}}$$
vagy az Euler–Mascheroni-féle $\gamma$ konstans. (Annyit tudunk, hogy $e + \pi$ és $e\pi$ közül legalább az egyik transzcendens, hiszen ha mindkettő algebrai volna, akkor az $x^2 - (e + \pi)x + e\pi = (x - e)(x - \pi)$ polinom gyökei, $e$ és $\pi$ is algebraiak volnának.)

### $e$ irracionalitása

Elemi úton, viszonylag könnyen bizonyítható $e$ irracionalitása. A következő szép bizonyítás Fouriertől származik (1815-ben jelent meg, Janot de Stainville könyvében). Felhasználjuk az analízisből ismert
$$e = 1 + \frac{1}{1!} + \frac{1}{2!} + \frac{1}{3!} + \dots$$
sorelőállítást.

> **10.4. Tétel.** Az $e$ szám irracionális.

*Bizonyítás.* Tegyük fel, hogy $e$ racionális: $e = \frac{a}{b}$, ahol $a, b$ pozitív egészek. Legyen $k \ge b$ egész. Ekkor $k!\, e = k! \cdot \frac{a}{b}$ egész szám, hiszen $b \mid k!$. Másrészt
$$k!\, e = \underbrace{\left(k! + \frac{k!}{1!} + \frac{k!}{2!} + \dots + \frac{k!}{k!}\right)}_{A} + \underbrace{\left(\frac{k!}{(k+1)!} + \frac{k!}{(k+2)!} + \dots\right)}_{B}.$$
Itt $A$ egész szám, hiszen $j \le k$-ra $\frac{k!}{j!} = (j+1)(j+2)\cdots k$ egész. A $B$-t becsüljük:
$$B = \frac{1}{k+1} + \frac{1}{(k+1)(k+2)} + \frac{1}{(k+1)(k+2)(k+3)} + \dots < \frac{1}{k+1} + \frac{1}{(k+1)^2} + \frac{1}{(k+1)^3} + \dots = \frac{\frac{1}{k+1}}{1 - \frac{1}{k+1}} = \frac{1}{k}.$$
(A második tagtól kezdve a nevezőkben $k + 2, k + 3, \dots$ helyett $k + 1$-et írtunk, ami a törteket növeli; az utolsó lépésben a mértani sor összegképletét használtuk.) Tehát $0 < B < \frac{1}{k} \le 1$. Így $B = k!\,e - A$ két egész szám különbsége, mégis szigorúan $0$ és $1$ közé esik — ellentmondás. $\blacksquare$

A bizonyítás lényege: $e$-t a sorának részletösszegei *túl jól* közelítik ahhoz, hogy $e$ tört lehessen. Egy $\frac{a}{b}$ törtet ugyanis egy $\frac{A}{k!}$ alakú, tőle különböző tört legfeljebb $\frac{1}{b \cdot k!}$ pontossággal közelíthet meg, $e$ közelítései viszont ennél jobbak.

### $\pi$ irracionalitása

$\pi$ irracionalitását az 1760-as években Johann Heinrich Lambert (1728–1777) bizonyította, aki korának neves polihisztora volt. Bár 12 évesen otthagyta az iskolát, önerőből tovább tanult, és később a Porosz Tudományos Akadémia tagja lett. Bizonyítása a tangens függvény lánctört-előállításán alapult. Mi egy sokkal rövidebb, Ivan Niven (1947) módszerén alapuló bizonyítást ismertetünk, sőt kicsit többet igazolunk: $\pi^2$ irracionalitását. A bizonyítás az analízis eszközeit (deriválás, integrálás) használja.

> **10.5. Tétel.** $\pi^2$ irracionális.
>
> **10.6. Következmény.** $\pi$ irracionális.

(A következmény nyilvánvaló: ha $\pi = \frac{a}{b}$ volna, akkor $\pi^2 = \frac{a^2}{b^2}$ is racionális volna.)

*A 10.5. Tétel bizonyítása.* **Előkészületek.** Legyen $n$ pozitív egész, és
$$f(x) = \frac{x^n (1 - x)^n}{n!} = \frac{1}{n!}\sum_{m=n}^{2n} c_m x^m,$$
ahol a $c_m$ együtthatók egészek (a binomiális tétel szerint). Erről a polinomról a következőket tudjuk.

- Ha $0 < x < 1$, akkor $0 < f(x) < \frac{1}{n!}$, hiszen ekkor $0 < x(1 - x) < 1$.
- Az $f$ deriváltjai a $0$ helyen egészek. Valóban, $f^{(m)}(0)$ az $x^m$ együtthatójának $m!$-szorosa, tehát $f^{(m)}(0) = 0$, ha $m < n$ vagy $m > 2n$, és $f^{(m)}(0) = \frac{m!}{n!} c_m \in \mathbb{Z}$, ha $n \le m \le 2n$.
- Ugyanez igaz az $1$ helyen is, mert $f(1 - x) = f(x)$, így $f^{(m)}(1) = (-1)^m f^{(m)}(0)$.

**Az indirekt feltevés.** Tegyük fel, hogy $\pi^2 = \frac{a}{b}$, ahol $a, b$ pozitív egészek. Legyen
$$G(x) = b^n \left(\pi^{2n} f(x) - \pi^{2n-2} f''(x) + \pi^{2n-4} f^{(4)}(x) - \dots + (-1)^n f^{(2n)}(x)\right).$$
Mivel $b^n \pi^{2j} = b^n \left(\frac{a}{b}\right)^j = a^j b^{n-j}$ egész szám $0 \le j \le n$ esetén, és $f$ deriváltjai a $0$ és $1$ helyen egészek, ezért **$G(0)$ és $G(1)$ egész számok.**

**Egy ügyes derivált.** Mivel $f$ foka $2n$, ezért $f^{(2n+2)} \equiv 0$, és $G$ képletében a tagok „teleszkópszerűen” kiesnek:
$$G''(x) + \pi^2 G(x) = b^n \pi^{2n+2} f(x) = \pi^2 a^n f(x).$$
(Valóban: $G''$ a zárójelben minden derivált rendjét kettővel növeli, $\pi^2 G$ pedig minden $\pi$-kitevőt kettővel; az előjelek váltakozása miatt az összegben csak a $b^n \pi^{2n+2} f(x)$ tag marad, és $b^n \pi^{2n+2} = b^n \pi^2 \left(\frac{a}{b}\right)^n = \pi^2 a^n$.) Ebből
$$\frac{d}{dx}\Big(G'(x)\sin \pi x - \pi G(x) \cos \pi x\Big) = \big(G''(x) + \pi^2 G(x)\big)\sin \pi x = \pi^2 a^n f(x) \sin \pi x.$$
(A $G'(x) \cdot \pi\cos \pi x$ és a $-\pi G'(x)\cos \pi x$ tag kiejti egymást.) Integráljuk $0$-tól $1$-ig:
$$\pi^2 \int_0^1 a^n f(x) \sin(\pi x)\, dx = \Big[G'(x)\sin \pi x - \pi G(x)\cos \pi x\Big]_0^1 = \pi\big(G(1) + G(0)\big),$$
hiszen $\sin \pi = \sin 0 = 0$, $\cos \pi = -1$, $\cos 0 = 1$. Tehát
$$\pi \int_0^1 a^n f(x) \sin(\pi x)\, dx = G(0) + G(1)$$
**egész szám.**

**Az ellentmondás.** A $0 < x < 1$ intervallumon $0 < f(x) < \frac{1}{n!}$ és $0 < \sin \pi x \le 1$, ezért
$$0 < \pi \int_0^1 a^n f(x) \sin(\pi x)\, dx < \frac{\pi a^n}{n!}.$$
Mivel $\frac{a^n}{n!} \to 0$, ha $n \to \infty$ (az analízisből ismert), elég nagy $n$-re a jobb oldal kisebb $1$-nél. Ekkor a $G(0) + G(1)$ egész szám szigorúan $0$ és $1$ közé esne — ellentmondás. $\blacksquare$

## 11. Pitagoraszi számhármasok

Az ókorban, Krotón városában (Dél-Itália) Püthagorasz vezetésével híres filozófiai iskola és társaság jött létre. Szigorú életelvekhez kötődött (például vegetarianizmus), szigorú felvételi rendszere volt, és egyszerre volt matematikai iskola és misztériumvallási közösség; férfiakat és nőket egyaránt szívesen láttak.

Pitagorasz tétele szerint ha $a$ és $b$ egy derékszögű háromszög befogói, $c$ pedig az átfogója, akkor $a^2 + b^2 = c^2$. A tétel után kapták nevüket a **pitagoraszi számhármasok**: olyan $a, b, c$ *pozitív egészek*, amelyekre
$$a^2 + b^2 = c^2.$$
Ilyenkor ugyanis az $a, b, c$ számokhoz tartozik egy egész oldalú derékszögű háromszög. A legismertebb a $(3, 4, 5)$. A legrégebbi emlékünk pitagoraszi számhármasokról a már említett, i. e. 1800 körül keletkezett Plimpton 322 babiloni tábla. A pitagoraszi számhármasok egyben az első és egyik legrégebbi példa **nem lineáris** diofantikus egyenletre.

### Visszavezetés primitív hármasokra

Minden pitagoraszi számhármas visszavezethető egy olyanra, amelyben a három szám legnagyobb közös osztója $1$. Legyen ugyanis
$$a^2 + b^2 = c^2, \qquad (11.1)$$
és $d = (a, b, c)$; ekkor $a = da_0$, $b = db_0$, $c = dc_0$, ahol $(a_0, b_0, c_0) = 1$. A (11.1) egyenletet $d^2$-tel osztva
$$a_0^2 + b_0^2 = c_0^2.$$
Ez indokolja a következő elnevezést: az $a, b, c$ pozitív egészekből álló hármas **primitív pitagoraszi számhármas**, ha
$$(a, b, c) = 1 \qquad \text{és} \qquad a^2 + b^2 = c^2.$$

**Egy primitív hármas tagjai páronként relatív prímek:** $(a, b) = (a, c) = (b, c) = 1$. Tegyük fel ugyanis, hogy például $(a, b) > 1$; ekkor $a$-nak és $b$-nek van egy közös $p$ prímosztója. Ekkor $a^2 + b^2 = c^2$ miatt $p \mid c^2$, és Eukleidész I. tétele szerint $p \mid c$. Tehát $p \mid (a, b, c) = 1$ — ellentmondás. Ugyanígy ($p \mid a$ és $p \mid c$ esetén $p \mid c^2 - a^2 = b^2$) adódik $(a, c) = (b, c) = 1$.

A $100$-nál nem nagyobb átfogójú primitív pitagoraszi számhármasok száma $16$ (a kisebbik befogót írtuk előre):

| $(3, 4, 5)$ | $(5, 12, 13)$ | $(8, 15, 17)$ | $(7, 24, 25)$ |
|---|---|---|---|
| $(20, 21, 29)$ | $(12, 35, 37)$ | $(9, 40, 41)$ | $(28, 45, 53)$ |
| $(11, 60, 61)$ | $(16, 63, 65)$ | $(33, 56, 65)$ | $(48, 55, 73)$ |
| $(13, 84, 85)$ | $(36, 77, 85)$ | $(39, 80, 89)$ | $(65, 72, 97)$ |

Megfigyelhetjük, hogy mindegyikben az egyik befogó páros, a másik páratlan, az átfogó páratlan, és a páros befogó mindig osztható $4$-gyel. A következő tétel mindezt megmagyarázza, és az összes primitív hármast felsorolja.

### A paraméteres előállítás

> **11.1. Tétel.** Legyen $a, b, c$ primitív pitagoraszi számhármas, azaz $a, b, c \in \mathbb{Z}^+$, $a^2 + b^2 = c^2$ és $(a, b, c) = 1$. Ekkor léteznek olyan $u, v$ pozitív egészek, amelyekre $u > v$, $(u, v) = 1$, $u \not\equiv v \pmod 2$, és
> $$a = u^2 - v^2, \quad b = 2uv, \quad c = u^2 + v^2,$$
> vagy fordítva: $a = 2uv$, $b = u^2 - v^2$, $c = u^2 + v^2$.

A bizonyításban a következő, a SzAT-ból adódó lemmát használjuk.

> **Lemma.** Ha $x, y$ relatív prím pozitív egészek, és $xy$ négyzetszám, akkor $x$ és $y$ is négyzetszám. Általánosabban: ha két relatív prím pozitív egész szorzata $k$-adik hatvány, akkor mindkettő $k$-adik hatvány.

*Bizonyítás.* Legyen $p$ egy prím, amely $xy$-ban $2\alpha$ kitevővel szerepel (egy négyzetszám kanonikus alakjában minden kitevő páros). Mivel $(x, y) = 1$, $p$ nem oszthatja mindkettőt: vagy $p \nmid x$ és ekkor $p^{2\alpha} \| y$, vagy $p \nmid y$ és $p^{2\alpha} \| x$. Tehát $x$ és $y$ kanonikus alakjában is minden kitevő páros, vagyis mindkettő négyzetszám. Az általános állítás ugyanígy adódik, a „páros” szót „$k$-val osztható”-ra cserélve. $\blacksquare$

(Itt $p^k \| y$ azt jelenti, hogy $p^k \mid y$, de $p^{k+1} \nmid y$.)

*A 11.1. Tétel bizonyítása.* **1. lépés: paritás.** Tudjuk, hogy $(a, b) = 1$, így $a$ és $b$ nem lehet egyszerre páros. Mindkettő páratlan sem lehet: ha $a$ és $b$ páratlan, akkor
$$a^2 \equiv b^2 \equiv 1 \pmod 4, \qquad \text{hiszen} \qquad (2k + 1)^2 = 4k^2 + 4k + 1,$$
így $c^2 = a^2 + b^2 \equiv 2 \pmod 4$. De ekkor $c^2$ páros, tehát $c$ páros, és $c^2$ osztható $4$-gyel — ellentmondás. Tehát $a$ és $b$ közül az egyik páros, a másik páratlan; a szerepeket esetleg felcserélve feltehetjük, hogy **$b$ páros és $a$ páratlan**. Ekkor $c^2 = a^2 + b^2$ páratlan, így $c$ is páratlan.

**2. lépés: szorzattá alakítás.** Átrendezve
$$b^2 = c^2 - a^2 = (c - a)(c + a), \qquad \left(\frac{b}{2}\right)^2 = \frac{c - a}{2} \cdot \frac{c + a}{2},$$
ahol $\frac{b}{2}$, $\frac{c - a}{2}$ és $\frac{c + a}{2}$ pozitív egészek ($c$ és $a$ páratlan, $c > a$).

**3. lépés: a két tényező relatív prím.** Legyen $d = \left(\frac{c - a}{2}, \frac{c + a}{2}\right)$. Ekkor $d$ osztja a két szám összegét és különbségét:
$$d \mid \frac{c - a}{2} + \frac{c + a}{2} = c, \qquad d \mid \frac{c + a}{2} - \frac{c - a}{2} = a,$$
így $d \mid (a, c) = 1$, vagyis $d = 1$.

**4. lépés: mindkét tényező négyzetszám.** A lemma szerint (két relatív prím pozitív egész szorzata négyzetszám) léteznek olyan $u, v$ pozitív egészek, hogy
$$\frac{c + a}{2} = u^2, \qquad \frac{c - a}{2} = v^2,$$
és $v < u$, mert $a > 0$. Mivel $1 = (u^2, v^2)$, ezért $(u, v) = 1$ is.

**5. lépés: visszaszámolás.**
$$a = \frac{c + a}{2} - \frac{c - a}{2} = u^2 - v^2, \qquad c = \frac{c + a}{2} + \frac{c - a}{2} = u^2 + v^2, \qquad \left(\frac{b}{2}\right)^2 = u^2 v^2,$$
azaz $\frac{b}{2} = uv$, $b = 2uv$. Végül, mivel $a = u^2 - v^2$ páratlan, $u$ és $v$ paritása nem lehet azonos. $\blacksquare$

::: kiegeszites
**Kiegészítés: a megfordítás.** Ha $u > v$ pozitív egészek, $(u, v) = 1$ és $u \not\equiv v \pmod 2$, akkor $(u^2 - v^2, 2uv, u^2 + v^2)$ valóban primitív pitagoraszi számhármas. Az egyenlőség azonosság:
$$(u^2 - v^2)^2 + (2uv)^2 = u^4 - 2u^2v^2 + v^4 + 4u^2v^2 = (u^2 + v^2)^2.$$
A primitivitáshoz tegyük fel, hogy a $p$ prím osztja $a = u^2 - v^2$-et és $c = u^2 + v^2$-et. Mivel $u$ és $v$ különböző paritású, $a$ páratlan, így $p \ne 2$. Ekkor $p \mid a + c = 2u^2$ és $p \mid c - a = 2v^2$, tehát $p \mid u$ és $p \mid v$, ellentmondásban $(u, v) = 1$-gyel. Így $(a, c) = 1$, és persze $(a, b, c) = 1$.

Mivel $(u, v) \mapsto (u^2 - v^2, 2uv, u^2 + v^2)$ különböző paraméterpárokra különböző hármasokat ad (hiszen $u^2 = \frac{c + a}{2}$ és $v^2 = \frac{c - a}{2}$ a hármasból visszaolvasható), a primitív pitagoraszi számhármasok (a páros befogó a második helyen) **kölcsönösen egyértelműen** megfelelnek a feltételeknek eleget tevő $(u, v)$ pároknak.
:::

A fenti táblázat $16$ hármasa éppen az $u^2 + v^2 \le 100$ feltételnek eleget tevő paraméterpárokból adódik:

| $u$ | $v$ | $u^2 - v^2$ | $2uv$ | $u^2 + v^2$ |
|---|---|---|---|---|
| $2$ | $1$ | $3$ | $4$ | $5$ |
| $3$ | $2$ | $5$ | $12$ | $13$ |
| $4$ | $1$ | $15$ | $8$ | $17$ |
| $4$ | $3$ | $7$ | $24$ | $25$ |
| $5$ | $2$ | $21$ | $20$ | $29$ |
| $5$ | $4$ | $9$ | $40$ | $41$ |
| $6$ | $1$ | $35$ | $12$ | $37$ |
| $6$ | $5$ | $11$ | $60$ | $61$ |
| $7$ | $2$ | $45$ | $28$ | $53$ |
| $7$ | $4$ | $33$ | $56$ | $65$ |
| $7$ | $6$ | $13$ | $84$ | $85$ |
| $8$ | $1$ | $63$ | $16$ | $65$ |
| $8$ | $3$ | $55$ | $48$ | $73$ |
| $8$ | $5$ | $39$ | $80$ | $89$ |
| $9$ | $2$ | $77$ | $36$ | $85$ |
| $9$ | $4$ | $65$ | $72$ | $97$ |

A tétel azt is megmagyarázza, miért osztható a páros befogó mindig $4$-gyel: $b = 2uv$, és $u, v$ közül az egyik páros.

Mivel minden pitagoraszi számhármas egy primitív hármas többszöröse, általában a következő igaz:

> **11.2. Tétel.** Ha $a, b, c$ pitagoraszi számhármas, akkor léteznek olyan $t, u, v$ pozitív egészek, amelyekre $u > v$, $(u, v) = 1$, $u \not\equiv v \pmod 2$, és
> $$a = (u^2 - v^2)t, \quad b = 2uvt, \quad c = (u^2 + v^2)t,$$
> vagy $a = 2uvt$, $b = (u^2 - v^2)t$, $c = (u^2 + v^2)t$.

## 12. Nagy Fermat-tétel

A matematika minden bizonnyal egyik leghíresebb, ma már megoldott problémája a **Fermat-sejtés**, későbbi nevén a nagy Fermat-tétel. (A fejezet alapja a jegyzetben a kapcsolódó Wikipédia-szócikk rövidített változata.) Pierre de Fermat Diophantosz *Arithmetica* című művét olvasgatta (Claude-Gaspard Bachet 1621-es latin kiadásában), amikor — a pitagoraszi számhármasokról szóló feladat mellé — úgy vélte, megtalálta a következő állítás bizonyítását, és ennek örömére ezt írta a könyv margójára:

> *„Cubum autem in duos cubos, aut quadratoquadratum in duos quadratoquadratos, et generaliter nullam in infinitum ultra quadratum potestatem in duos eiusdem nominis fas est dividere cuius rei demonstrationem mirabilem sane detexi. Hanc marginis exiguitas non caperet.”*

Azaz: *„Lehetetlen egy köbszámot felírni két köbszám összegeként, vagy egy negyedik hatványt két negyedik hatvány összegeként, és általában lehetetlen bármely, a négyzetnél magasabb hatványt felírni két ugyanolyan hatvány összegeként. Erre igazán csodálatos bizonyítást találtam. A margó azonban túl keskeny ahhoz, hogy ideírjam.”*

A margójegyzetet Fermat fia hozta nyilvánosságra 1670-ben, apja halála után. Fermat bizonyítását a mai napig nem találták meg, jegyzetei között sincs nyoma. Számtalan matematikus próbálta rekonstruálni; speciális esetekben sikerült eredményre jutni, de az általános esetre senki sem talált egyszerű bizonyítást. Valószínű, hogy Fermat tévedett, és bizonyításában egy nehéz részt nem gondolt végig elég precízen.

> **12.1. Sejtés (nagy Fermat-tétel).** Az
> $$x^n + y^n = z^n$$
> egyenletnek $n \ge 3$ esetén nincs pozitív egészekből álló megoldása.

**Elég $n = 4$-re és a páratlan prímekre belátni.** Ha $n \ge 3$, akkor $n$ vagy osztható $4$-gyel, vagy van páratlan $p$ prímosztója (ha egyik sem, akkor $n$ csak $1$ vagy $2$ lehet). Ha $n = 4k$ és $x^n + y^n = z^n$, akkor $(x^k)^4 + (y^k)^4 = (z^k)^4$ az $n = 4$ eset megoldása volna; ha $n = pk$, akkor $(x^k)^p + (y^k)^p = (z^k)^p$ az $n = p$ esetté. Tehát ha az állítás $n = 4$-re és minden páratlan prímre igaz, akkor minden $n \ge 3$-ra is.

### 12.1. Az $n = 4$ eset

Fermat egyik nagy felfedezése a **végtelen leszállás módszere**. Ennek segítségével igazolta, hogy az $x^4 + y^4 = z^4$ egyenletnek nincs pozitív egészekből álló megoldása; sőt ennél többet:

> **Tétel (Fermat).** Az $x^4 + y^4 = z^2$ egyenletnek nincs pozitív egészekből álló megoldása.

Ebből az $n = 4$ eset azonnal következik, hiszen $x^4 + y^4 = z^4$ megoldásából $(x, y, z^2)$ az $x^4 + y^4 = z^2$ egyenlet megoldása volna.

**A végtelen leszállás elve.** Megmutatjuk, hogy ha van pozitív egészekből álló megoldás, akkor van olyan is, amelyben $z$ értéke kisebb, de még mindig pozitív egész. Az eljárást folytatva pozitív egészek végtelen, szigorúan csökkenő sorozatát kapnánk, ami lehetetlen. (Ekvivalens megfogalmazás: tekintsük a legkisebb $z$-jű megoldást, és mutassunk nála kisebbet — ellentmondás.)

*Bizonyítás.* Tegyük fel, hogy $x^4 + y^4 = z^2$ pozitív egészekre, és $z$ a lehető legkisebb.

**(a) Relatív prímség.** Ha $(x, y) > 1$, akkor $x$-nek és $y$-nak van közös $p$ prímosztója. Ekkor $p^4 \mid x^4 + y^4 = z^2$, amiből (a SzAT szerint, a kitevőket nézve) $p^2 \mid z$, és
$$\left(\frac{x}{p}\right)^4 + \left(\frac{y}{p}\right)^4 = \left(\frac{z}{p^2}\right)^2$$
egy kisebb $z$-jű megoldás volna. Tehát $(x, y) = 1$. Ebből $(x, z) = (y, z) = 1$ is következik: ha $p \mid x$ és $p \mid z$, akkor $p \mid z^2 - x^4 = y^4$, így $p \mid y$.

**(b) $z$ páratlan.** Ha $z$ páros volna, akkor $(x, z) = (y, z) = 1$ miatt $x$ és $y$ páratlan, és $x^4 + y^4 \equiv 1 + 1 = 2 \pmod 4$, holott $z^2 \equiv 0 \pmod 4$ — ellentmondás. Tehát $z$ páratlan, és ekkor $x$ és $y$ közül pontosan az egyik páros; mondjuk **$x$ páros, $y$ páratlan**.

**(c) Szorzattá alakítás.** Átrendezve
$$x^4 = z^2 - y^4 = (z - y^2)(z + y^2).$$
A jobb oldalon mindkét tényező páros ($z$ és $y$ páratlan), és pozitív ($z > y^2$, mert $z^2 > y^4$). Ha volna $2$-nél nagyobb közös osztójuk — vagyis egy páratlan prím vagy a $4$ —, akkor az osztaná az összegüket, $2z$-t, és a különbségüket, $2y^2$-et is; páratlan $p$ prím esetén $p \mid z$ és $p \mid y$, a $4$ esetén $2 \mid z$ adódna, mindkettő lehetetlen. Így **a két tényező legnagyobb közös osztója $2$**: $z - y^2 = 2A$, $z + y^2 = 2B$, ahol $(A, B) = 1$. Mivel $x$ páros, $x = 2x_1$, és $16x_1^4 = 4AB$, azaz $AB = 4x_1^4$. A relatív prím $A$, $B$ közül az egyik páratlan; a lemma gondolatmenete (a prímkitevőket vizsgálva) szerint a páratlan tényező negyedik hatvány, a páros pedig egy negyedik hatvány $4$-szerese. Ez kétféleképpen valósulhat meg.

**Első eset:** $z - y^2 = 2a^4$, $z + y^2 = 8b^4$ alkalmas $a, b$ pozitív egészekkel, ahol $a$ páratlan. Ekkor kivonva $2y^2 = 8b^4 - 2a^4$, azaz
$$y^2 = 4b^4 - a^4 \equiv -1 \pmod 4,$$
hiszen $a$ páratlan, így $a^4 \equiv 1 \pmod 4$. Ez lehetetlen, mert egy négyzetszám maradéka modulo $4$ csak $0$ vagy $1$ lehet.

**Második eset:** $z - y^2 = 8a^4$, $z + y^2 = 2b^4$ alkalmas $a, b$ pozitív egészekkel, ahol $b$ páratlan. Ekkor $y^2 = b^4 - 4a^4$, azaz
$$4a^4 = b^4 - y^2 = (b^2 - y)(b^2 + y).$$
A két tényező pozitív ($y^2 < b^4$) és páros ($b, y$ páratlan), tehát $2$ közös osztójuk. Ha $2$-nél nagyobb közös osztójuk volna — egy páratlan $p$ prím vagy a $4$ —, akkor az osztaná a különbségüket, $2y$-t, és az összegüket, $2b^2$-et is. A $4$ esetén $y$ páros volna, ami nem igaz; egy páratlan $p$ esetén pedig $p \mid y$ és $p \mid b$, és ekkor $z = 2b^4 - y^2$ miatt $p \mid (y, z)$ — amit kizártunk. Így, mint az előbb, $b^2 - y = 2C$, $b^2 + y = 2D$, $(C, D) = 1$, és $4a^4 = 4CD$, azaz $CD = a^4$. A lemma negyedik hatványokra vonatkozó változata szerint $C = c^4$, $D = d^4$ alkalmas $c, d$ pozitív egészekkel, és
$$c^4 + d^4 = C + D = b^2.$$
Ezzel az eredeti egyenlethez hasonlót kaptunk, a $(c, d, b)$ megoldást. Végül $b < z$: valóban, $y^4 < z^2$ miatt $y^2 < z$, és $z + y^2 = 2b^4$ miatt $2b^4 < 2z$, így $b \le b^4 < z$. Ez ellentmond $z$ minimalitásának. $\blacksquare$

**Egyéb részeredmények.** Az $n = 3$ esetet Euler (1770, egy később kijavított hiánnyal), az $n = 5$ esetet Dirichlet és Legendre (1825), az $n = 7$ esetet Lamé (1839) igazolta. Ernst Kummer 1847-ben az úgynevezett reguláris prímekre bizonyította a sejtést — ehhez éppen a 4. fejezetben látott jelenséget, az egyértelmű faktorizáció hiányát kellett leküzdenie.

### 12.2. A Fermat-tétel bizonyítása

A Fermat-sejtést Andrew Wilesnak sikerült bebizonyítania. A bizonyításon hét évig dolgozott egyedül, teljes titokban. Az első, 1993-as bemutatás után egy elsőre végzetesnek tűnő hibát fedeztek fel, de 1994 őszére Wilesnak — egykori tanítványa, Richard Taylor segítségével — sikerült kijavítania a bizonyítást, amely 1995-ben jelent meg az *Annals of Mathematics* folyóiratban. A teljes bizonyítás (két cikk) mintegy 129 oldal hosszú, és az elliptikus görbék, a moduláris formák és a Galois-reprezentációk mély elméletét használja, tehát messze túlmegy az elemi számelmélet keretein.

### 12.3. Érdekességek

Egy legenda szerint Paul Friedrich Wolfskehl német matematikus életét a Fermat-sejtés mentette meg. Szerelmi csalódás érte, ezért elhatározta, hogy pontban éjfélkor véget vet életének. Hogy addig gyorsabban teljen az idő, a könyvtárában lévő matematikai könyveket és cikkeket olvasgatta, és a kezébe akadt Kummer írása, amely egy hibát mutatott ki Cauchy és Lamé Fermat-sejtésre adott bizonyítási kísérletében. Wolfskehl hajnalig próbálta kijavítani a hibás bizonyítást — és reggelre visszanyerte az életkedvét. Végrendeletében $100\,000$ márka jutalmat ajánlott fel annak, aki bebizonyítja a tételt; a díjat (inflációtól megtépázott összegben) 1997-ben Wiles vehette át.

1994. április 1-jén a matematikusok között körbejárt egy e-mail, amely bejelentette, hogy Noam Elkies, a Harvard Egyetem professzora igen nagy számokból álló ellenpéldát talált a sejtésre. Sok matematikus nem figyelt a dátumra, és továbbküldte kollégáinak a szakszövegnek álcázott tréfát.

## A III. rész összefoglalása

- **Irracionalitás:** $\sqrt{2}$ paritásvizsgálattal; $\sqrt[m]{N}$ (ha $N$ nem $m$-edik hatvány) és $\log_{10} 2$ a SzAT-tal; $e$ a sorfejtés „túl jó” közelítéseivel (Fourier); $\pi^2$ (és így $\pi$) Niven módszerével. Sok nevezetes konstansról (például $e + \pi$) ma sem tudjuk, racionális-e.
- **Pitagoraszi számhármasok:** minden primitív hármas $(u^2 - v^2, 2uv, u^2 + v^2)$ alakú, ahol $u > v > 0$, $(u, v) = 1$, $u \not\equiv v \pmod 2$ (és viszont); a többi ezek többszöröse. A bizonyítás kulcsa: két relatív prím szám szorzata csak úgy lehet négyzetszám, ha mindkettő az.
- **Nagy Fermat-tétel:** $x^n + y^n = z^n$-nek $n \ge 3$-ra nincs pozitív egész megoldása. Elég $n = 4$-re és páratlan prímekre belátni. Az $n = 4$ esetet Fermat végtelen leszállással igazolta (sőt $x^4 + y^4 = z^2$-re is); az általános esetet Wiles (1995).

## Feladatok a III. részhez

1. Bizonyítsuk be, hogy $\sqrt{3}$, $\sqrt{6}$ és $\sqrt{2} + \sqrt{3}$ irracionális.
2. Bizonyítsuk be, hogy $\log_2 3$ irracionális.
3. Határozzuk meg az összes olyan pitagoraszi számhármast, amelyben az egyik befogó $12$.
4. Bizonyítsuk be, hogy minden pitagoraszi számhármasra $60 \mid abc$.
5. Bizonyítsuk be, hogy egy primitív pitagoraszi számhármas átfogója $4k + 1$ alakú.
6. Bizonyítsuk be, hogy az $x^2 + y^2 = 3z^2$ egyenletnek csak az $x = y = z = 0$ egész megoldása van.
7. Bizonyítsuk be, hogy a $0{,}101001000100001\dots$ tizedes tört (az egyesek között rendre $1, 2, 3, \dots$ nulla áll) irracionális.

### Megoldási útmutatók

1. $\sqrt{3}$, $\sqrt{6}$: a 10.2. Tétel ($3$ és $6$ nem négyzetszám). Ha $\sqrt{2} + \sqrt{3} = r$ racionális volna, akkor $r^2 = 5 + 2\sqrt{6}$ miatt $\sqrt{6} = \frac{r^2 - 5}{2}$ is racionális volna.
2. Ha $\log_2 3 = \frac{p}{q}$ ($p, q > 0$), akkor $2^p = 3^q$, ellentmondás a SzAT-tal (vagy egyszerűen: a bal oldal páros, a jobb páratlan).
3. Ha $12 = 2uvt$, akkor $uvt = 6$; ha $12 = (u^2 - v^2)t$, akkor $(u - v)(u + v) \mid 12$ páratlan $u - v$-vel. Az esetek végignézése után: $(5, 12, 13)$, $(9, 12, 15)$, $(12, 16, 20)$, $(12, 35, 37)$.
4. Elég primitív hármasra. A $4$: $b = 2uv$, és $u, v$ egyike páros. A $3$: ha $3 \nmid u$ és $3 \nmid v$, akkor $u^2 \equiv v^2 \equiv 1 \pmod 3$, így $3 \mid u^2 - v^2$. Az $5$: ha $5 \nmid uv$, akkor $u^2, v^2 \in \{1, 4\} \pmod 5$; ha egyenlők, $5 \mid u^2 - v^2$, ha különbözők, $5 \mid u^2 + v^2$.
5. $c = u^2 + v^2$, és $u, v$ közül az egyik páros, a másik páratlan, így $c \equiv 0 + 1 = 1 \pmod 4$.
6. Végtelen leszállás: modulo $3$ a négyzetek maradéka $0$ vagy $1$, így $x^2 + y^2 \equiv 0 \pmod 3$ csak $3 \mid x$, $3 \mid y$ esetén lehet. Ekkor $9 \mid 3z^2$, $3 \mid z$, és $(x/3, y/3, z/3)$ is megoldás. Egy nem nulla megoldásból így végtelen leszállás indulna.
7. Egy racionális szám tizedes tört alakja (véges vagy) végtelen szakaszos. Itt egyre hosszabb nullasorozatok állnak, amelyeket egyes zár le, így nincs periódus: egy $\ell$ hosszú periódus esetén nem lehetne $\ell$-nél hosszabb csupa nulla szakasz, ha a periódusban van egyes, és ha nincs, akkor egy idő után minden jegy nulla volna.

---

# IV. RÉSZ: KONGRUENCIARENDSZEREK ÉS POLINOMKONGRUENCIÁK

Eddig egyetlen, lineáris kongruenciával foglalkoztunk. A negyedik részben előbb több kongruencia *egyidejű* megoldásáról lesz szó (kínai maradéktétel), majd magasabb fokú, polinomos kongruenciákról. Kiderül, hogy összetett modulus esetén a feladat prímhatvány modulusokra, onnan pedig prím modulusra vezethető vissza — és prím modulusra a polinomok úgy viselkednek, mint a valós számok felett: egy $n$-edfokú polinomnak legfeljebb $n$ gyöke van (Lagrange). Ebből két meglepő tétel, Wilson és Wolstenholme tétele is következik.

## 13. Kínai maradéktétel

A számelmélet egyik legrégebbi tétele a **kínai maradéktétel**. Első ismert megfogalmazása a *Szun Cu* (Sunzi) nevéhez kötött kínai matematikai kézikönyvben, a *Sunzi Suanjing*-ben található, amely a Kr. u. 3–5. századból származik. A tétel több kongruenciából álló, úgynevezett **szimultán kongruenciarendszerek** megoldhatóságára ad választ, sőt van olyan változata is, amelynek bizonyítása meg is konstruálja a megoldást — mi is ilyet mutatunk. A kézikönyv híres feladata így szól:

> *„Van valahány dolgunk, de nem tudjuk, mennyi. Ha hármasával számoljuk őket, kettő marad; ha ötösével, három marad; ha hetesével, kettő marad. Hány dolog van?”*

Kongruenciákkal: olyan $x$-et keresünk, amelyre
$$x \equiv 2 \pmod 3, \qquad x \equiv 3 \pmod 5, \qquad x \equiv 2 \pmod 7.$$
A válasz (mint látni fogjuk): $x = 23$, és általában $x \equiv 23 \pmod{105}$.

> **13.1. Tétel (kínai maradéktétel).** Legyenek $m_1, m_2, \dots, m_k > 0$ páronként relatív prímek, $c_1, c_2, \dots, c_k$ pedig tetszőleges egészek. Ekkor az
> $$x \equiv c_1 \pmod{m_1}, \quad x \equiv c_2 \pmod{m_2}, \quad \dots, \quad x \equiv c_k \pmod{m_k}$$
> kongruenciarendszer megoldható, és a megoldások egyetlen maradékosztályt alkotnak modulo $M = m_1 m_2 \cdots m_k$.

A bizonyításhoz egy egyszerű észrevételre lesz szükségünk.

> **Lemma.** Ha $m_1, \dots, m_k$ páronként relatív prímek, és mindegyik osztja $N$-et, akkor a szorzatuk is osztja $N$-et.

*Bizonyítás.* $k$ szerinti indukció: ha $m_1 \cdots m_{k-1} \mid N$, azaz $N = m_1 \cdots m_{k-1} \cdot s$, akkor $m_k \mid m_1 \cdots m_{k-1} s$, és mivel $(m_k, m_1 \cdots m_{k-1}) = 1$ (egy közös prímosztó valamelyik $m_i$-t is osztaná), ezért $m_k \mid s$. Így $m_1 \cdots m_k \mid N$. $\blacksquare$

*A 13.1. Tétel bizonyítása.* **Egyértelműség modulo $M$.** Tegyük fel, hogy $x_1$ és $x_2$ is megoldás. Ekkor minden $i$-re $x_1 \equiv c_i \equiv x_2 \pmod{m_i}$, azaz
$$m_i \mid x_1 - x_2 \qquad (i = 1, \dots, k). \qquad (13.1)$$
A lemma szerint $M = m_1 m_2 \cdots m_k \mid x_1 - x_2$, vagyis $x_1 \equiv x_2 \pmod M$. Fordítva, ha $x_1$ megoldás és $x_2 \equiv x_1 \pmod M$, akkor $x_2$ is megoldás (hiszen $m_i \mid M$). Tehát a megoldások — ha vannak — pontosan egy maradékosztályt alkotnak modulo $M$.

**Létezés.** Legyen
$$M_i = \frac{M}{m_i} = m_1 \cdots m_{i-1} m_{i+1} \cdots m_k,$$
és a megoldást
$$x = a_1 M_1 + a_2 M_2 + \dots + a_k M_k$$
alakban keressük, alkalmas $a_1, \dots, a_k$ egészekkel. Mivel $M_i$ tartalmazza az $m_j$ tényezőt, ha $j \ne i$:
$$M_i \equiv 0 \pmod{m_j} \qquad (j \ne i). \qquad (13.2)$$
Ezért modulo $m_j$ az összegből csak a $j$-edik tag marad, és az $x \equiv c_j \pmod{m_j}$ feltétel ekvivalens azzal, hogy
$$a_j M_j \equiv c_j \pmod{m_j}.$$
Ez egy lineáris kongruencia az $a_j$ ismeretlenre, amely a 8.1. Tétel szerint megoldható, ha $(M_j, m_j) \mid c_j$. Ez pedig teljesül, mert
$$(m_j, M_j) = (m_j, m_1 \cdots m_{j-1} m_{j+1} \cdots m_k) = 1,$$
hiszen $m_j$ a többi $m_i$ mindegyikéhez relatív prím. Tehát minden $j$-re létezik megfelelő $a_j$, és az így kapott
$$x = a_1 M_1 + \dots + a_k M_k$$
megoldás. Az egyértelműség miatt az összes megoldás
$$x \equiv a_1 M_1 + \dots + a_k M_k \pmod{m_1 m_2 \cdots m_k}. \ \blacksquare$$

**A Szun Cu-feladat megoldása a bizonyítás módszerével.** Itt $M = 105$, $M_1 = 35$, $M_2 = 21$, $M_3 = 15$. A három lineáris kongruencia:
$$35 a_1 \equiv 2 \pmod 3, \qquad 21 a_2 \equiv 3 \pmod 5, \qquad 15 a_3 \equiv 2 \pmod 7.$$
Mivel $35 \equiv 2 \pmod 3$, $21 \equiv 1 \pmod 5$ és $15 \equiv 1 \pmod 7$: $2a_1 \equiv 2$, azaz $a_1 \equiv 1$; $a_2 \equiv 3$; $a_3 \equiv 2$. Így
$$x \equiv 35 \cdot 1 + 21 \cdot 3 + 15 \cdot 2 = 128 \equiv 23 \pmod{105}.$$

**Egy másik módszer: egymás utáni behelyettesítés.** Kisebb feladatoknál gyakran gyorsabb a kongruenciákat egyenként „beépíteni”. Az első kongruencia szerint $x = 2 + 3s$. Ezt a másodikba írva: $2 + 3s \equiv 3 \pmod 5$, azaz $3s \equiv 1$, $s \equiv 2 \pmod 5$, $s = 2 + 5r$, így $x = 8 + 15r$. A harmadikba írva: $8 + 15r \equiv 2 \pmod 7$, azaz (mivel $8 \equiv 1$, $15 \equiv 1$) $1 + r \equiv 2$, $r \equiv 1 \pmod 7$. Tehát $x = 8 + 15(1 + 7q) = 23 + 105q$.

**Kidolgozott példa.** Oldjuk meg a
$$3x \equiv 1 \pmod 4, \qquad 2x \equiv 3 \pmod 5, \qquad 5x \equiv 2 \pmod 7 \qquad (13.3)$$
kongruenciarendszert! Fontos előbb megnézni, hogy a kongruenciák *külön-külön* megoldhatók-e: mindhárom az, hiszen $(3, 4) = (2, 5) = (5, 7) = 1$. A modulusok páronként relatív prímek, így a kínai maradéktétel szerint közös megoldás is van, és a bizonyítás alapján az
$$x \equiv 5 \cdot 7 \cdot A + 4 \cdot 7 \cdot B + 4 \cdot 5 \cdot C \pmod{4 \cdot 5 \cdot 7} \qquad (13.4)$$
alakban keresendő. Ezt (13.3)-ba írva, és felhasználva, hogy modulo $4$ csak az első, modulo $5$ csak a második, modulo $7$ csak a harmadik tag marad:
$$3 \cdot 5 \cdot 7 \cdot A \equiv 1 \pmod 4, \qquad 2 \cdot 4 \cdot 7 \cdot B \equiv 3 \pmod 5, \qquad 5 \cdot 4 \cdot 5 \cdot C \equiv 2 \pmod 7.$$
Mivel $105 \equiv 1 \pmod 4$, $56 \equiv 1 \pmod 5$ és $100 \equiv 2 \pmod 7$, ebből
$$A \equiv 1 \pmod 4, \qquad B \equiv 3 \pmod 5, \qquad 2C \equiv 2 \pmod 7, \ \text{azaz}\ C \equiv 1 \pmod 7.$$
(Az utolsónál $(2, 7) = 1$ miatt egyszerűsíthettünk.) Visszaírva (13.4)-be:
$$x \equiv 35 \cdot 1 + 28 \cdot 3 + 20 \cdot 1 = 139 \pmod{140}.$$
Ellenőrzés: $3 \cdot 139 = 417 \equiv 1 \pmod 4$, $2 \cdot 139 = 278 \equiv 3 \pmod 5$, $5 \cdot 139 = 695 = 99 \cdot 7 + 2 \equiv 2 \pmod 7$. ✓

**Mi van, ha a modulusok nem relatív prímek?** Akkor a rendszer vagy megoldhatatlan, vagy a megoldás a modulusok legkisebb közös többszörösére nézve egyértelmű. Például $x \equiv 1 \pmod 4$ és $x \equiv 2 \pmod 6$ nem oldható meg (az első szerint $x$ páratlan, a második szerint páros), míg $x \equiv 1 \pmod 4$ és $x \equiv 3 \pmod 6$ megoldása $x \equiv 9 \pmod{12}$. (Általában két kongruencia, $x \equiv c_1 \pmod{m_1}$ és $x \equiv c_2 \pmod{m_2}$, pontosan akkor oldható meg együtt, ha $(m_1, m_2) \mid c_1 - c_2$.)

**A tétel szerkezeti jelentése.** A kínai maradéktétel azt mondja, hogy egy modulo $M$ maradékosztály „ugyanaz”, mint a modulo $m_1, \dots, m_k$ maradékainak $k$-asa — ráadásul az összeadás és a szorzás is „komponensenként” történik. Ezért egy összetett modulusú feladatot gyakran felbonthatunk prímhatvány modulusú részfeladatokra, amelyeket külön oldunk meg, majd a megoldásokat a kínai maradéktétellel „összeragasztjuk”. A következő fejezet pontosan ezt teszi.

## 14. Magasabb fokú kongruenciák

Legyen $f(x) \in \mathbb{Z}[x]$ egész együtthatós polinom. Az $f(x) \equiv 0 \pmod n$ kongruencia megoldásain azokat az $x$ egészeket értjük, amelyekre $n \mid f(x)$; mivel $x \equiv x' \pmod n$ esetén $f(x) \equiv f(x')$, a megoldások maradékosztályok, és a megoldások számán az inkongruens megoldások számát értjük.

> **14.1. Tétel.** Legyen $n > 1$ egész, $n = p_1^{\alpha_1} \cdots p_k^{\alpha_k}$ a kanonikus alakja, és $f(x) \in \mathbb{Z}[x]$. Az
> $$f(x) \equiv 0 \pmod n \qquad (14.1)$$
> kongruencia pontosan akkor oldható meg, ha a
> $$f(x) \equiv 0 \pmod{p_1^{\alpha_1}}, \quad f(x) \equiv 0 \pmod{p_2^{\alpha_2}}, \quad \dots, \quad f(x) \equiv 0 \pmod{p_k^{\alpha_k}} \qquad (14.2)$$
> kongruenciák mindegyike megoldható. Ha ezek egy-egy megoldása $h_1, h_2, \dots, h_k$, akkor az
> $$x \equiv h_1 \pmod{p_1^{\alpha_1}}, \quad \dots, \quad x \equiv h_k \pmod{p_k^{\alpha_k}}$$
> rendszer (a kínai maradéktétel szerint egyértelmű) megoldása megoldása (14.1)-nek, és (14.1) összes megoldása így kapható meg.

*Bizonyítás.* A kongruenciát oszthatósággá átírva azonnal látszik: $n \mid f(x)$ pontosan akkor teljesül, ha minden $i$-re $p_i^{\alpha_i} \mid f(x)$ (a 13. fejezet lemmája szerint, mert a prímhatványok páronként relatív prímek). Ha pedig $x \equiv h_i \pmod{p_i^{\alpha_i}}$, akkor $f(x) \equiv f(h_i) \equiv 0 \pmod{p_i^{\alpha_i}}$. $\blacksquare$

**Következmény.** Ha (14.2)-ben a $i$-edik kongruenciának $N_i$ megoldása van, akkor (14.1) megoldásainak száma $N_1 N_2 \cdots N_k$ (minden választás egy-egy különböző megoldást ad modulo $n$).

**Példa.** $x^2 \equiv 4 \pmod{35}$: modulo $5$ a megoldások $x \equiv \pm 2$, modulo $7$ is $x \equiv \pm 2$. A négy kombinációt a kínai maradéktétellel összerakva: $x \equiv 2, 12, 23, 33 \pmod{35}$. (Például $x \equiv 2 \pmod 5$, $x \equiv -2 \pmod 7$ megoldása $x \equiv 12$: $12^2 = 144 = 4 \cdot 35 + 4$.) Egy másodfokú kongruenciának tehát itt négy megoldása van.

A kínai maradéktétel miatt tehát a megoldás megkeresése visszavezethető
$$f(x) \equiv 0 \pmod{p^\alpha}$$
típusú kongruenciák vizsgálatára, ahol $p$ prím és $\alpha \ge 1$.

### 14.1. Prímhatvány modulusú kongruenciák

A prímhatvány modulusú kongruencia egyszerűen visszavezethető prím modulusúra. Ezt egy példán mutatjuk be.

**Példa.** Oldjuk meg az
$$x^3 + 4x \equiv 21 \pmod{125} \qquad (14.3)$$
kongruenciát! Ha $125 \mid x^3 + 4x - 21$, akkor $25$ és $5$ is osztja, tehát
$$x^3 + 4x \equiv 21 \pmod{25}, \qquad (14.4)$$
$$x^3 + 4x \equiv 21 \equiv 1 \pmod 5. \qquad (14.5)$$
A stratégia: előbb (14.5)-öt oldjuk meg, majd a megoldások közül kikeressük (illetve „felemeljük”) azokat, amelyek (14.4)-nek is eleget tesznek, végül (14.3)-at.

**Modulo 5.** Prím modulusú kongruencia esetén általában nincs jobb módszer, mint egy teljes maradékrendszer elemeit végigpróbálni. Az $x \in \{0, \pm 1, \pm 2\}$ értékeket behelyettesítve ($f(x) = x^3 + 4x$): $f(0) = 0$, $f(1) = 5 \equiv 0$, $f(-1) = -5 \equiv 0$, $f(2) = 16 \equiv 1$, $f(-2) = -16 \equiv 4$. Egyedül
$$x \equiv 2 \pmod 5$$
a megoldás.

**Modulo 25.** Írjuk $x$-et $x = 5t + 2$ alakba ($t \in \mathbb{Z}$), és helyettesítsük (14.4)-be:
$$(5t + 2)^3 + 4(5t + 2) \equiv 21 \pmod{25}.$$
A binomiális tétel szerint $(5t + 2)^3 = 125t^3 + 3 \cdot 25t^2 \cdot 2 + 3 \cdot 5t \cdot 4 + 8$; a $25$-tel osztható tagok $0$-val kongruensek, így elfelejthetjük őket:
$$60t + 8 + 20t + 8 \equiv 21 \pmod{25}, \qquad 80t \equiv 5 \pmod{25}.$$
$5$-tel osztva (a modulus is osztódik): $16t \equiv 1 \pmod 5$, azaz $t \equiv 1 \pmod 5$. Tehát $t = 5\ell + 1$, és
$$x = 5t + 2 = 5(5\ell + 1) + 2 = 25\ell + 7.$$

**Modulo 125.** Most $x = 25\ell + 7$-et írjuk (14.3)-ba:
$$(25\ell + 7)^3 + 4(25\ell + 7) \equiv 21 \pmod{125}.$$
A $125$-tel osztható tagokat elhagyva ($(25\ell)^2$ és $(25\ell)^3$ ilyen):
$$3 \cdot 7^2 \cdot 25\ell + 7^3 + 4 \cdot 25\ell + 28 \equiv 21 \pmod{125},$$
$$(3 \cdot 49 + 4) \cdot 25\ell + 371 \equiv 21, \qquad 151 \cdot 25\ell \equiv -350 \pmod{125}.$$
$25$-tel osztva: $151\ell \equiv -14 \pmod 5$, azaz $\ell \equiv 1 \pmod 5$ (mert $151 \equiv 1$, $-14 \equiv 1$). Tehát $\ell = 5k + 1$, és
$$x = 25(5k + 1) + 7 = 125k + 32.$$
Az eredeti kongruencia megoldása: $x \equiv 32 \pmod{125}$. (Ellenőrzés: $32^3 + 4 \cdot 32 - 21 = 32768 + 128 - 21 = 32875 = 263 \cdot 125$.) ✓

Általában az eljárás során egy-egy lépésben több megoldást is kaphatunk, vagy éppen az is előfordulhat, hogy egy modulo $p$ megoldás nem emelhető fel. Fontos, hogy a diszkusszió során minden esetet alaposan végignézzünk.

::: kiegeszites
**Kiegészítés: mikor egyértelmű a felemelés?** A példában minden lépésben egy lineáris kongruenciát kaptunk a következő „jegyre”, amelynek együtthatója ($80/5 = 16 \equiv 1$, illetve $151 \equiv 1$) nem volt osztható $5$-tel. Ez nem véletlen: ha $x = h + p^j t$, akkor a Taylor-formula (vagy a binomiális tétel) szerint
$$f(h + p^j t) \equiv f(h) + f'(h)\, p^j t \pmod{p^{j+1}},$$
ahol $f'$ a (formális) derivált. Így a $f(h + p^j t) \equiv 0 \pmod{p^{j+1}}$ feltétel a $\frac{f(h)}{p^j} + f'(h) t \equiv 0 \pmod p$ lineáris kongruenciává egyszerűsödik. Ha **$p \nmid f'(h)$**, ennek pontosan egy megoldása van $t$-re: a modulo $p$ megoldás egyértelműen felemelhető modulo $p^2, p^3, \dots$ megoldássá (ez a **Hensel-lemma**). A példában $f'(x) = 3x^2 + 4$, és $f'(2) = 16 \not\equiv 0 \pmod 5$. Ha viszont $p \mid f'(h)$, akkor a felemelés vagy lehetetlen, vagy $p$-féleképpen lehetséges — ilyenkor kell igazán vigyázni.
:::

### 14.2. Fokszámredukció

Prím modulus esetén egy magas fokú polinom foka a modulusnál kisebbre csökkenthető.

> **14.2. Tétel.** Ha $p$ prím és $f(x) \in \mathbb{Z}[x]$, akkor létezik olyan $g$ egész együtthatós polinom, amelynek foka legfeljebb $p - 1$ (vagy $g$ a nullapolinom), és minden $c \in \mathbb{Z}$-re
> $$f(c) \equiv g(c) \pmod p.$$

> **14.3. Megjegyzés.** A tételből következik, hogy az $f(x) \equiv 0 \pmod p$ és a $g(x) \equiv 0 \pmod p$ kongruenciáknak ugyanazok a megoldásai.

*Bizonyítás.* Az $f$ polinomban, ahol csak lehet, cseréljük az $x^p$ tényezőt $x$-re (azaz $x^k$-t, ha $k \ge p$, cseréljük $x^{k - p + 1}$-re), és ismételjük ezt, ameddig lehetséges. Minden lépésben valamelyik kitevő csökken, így az eljárás véget ér, és a kapott $g$ polinom foka legfeljebb $p - 1$ (vagy minden együttható kiesik). Mivel $p$ prím, a kis Fermat-tétel szerint bármely $c \in \mathbb{Z}$-re $c^p \equiv c \pmod p$, így minden csere a $c$ helyen vett értéket modulo $p$ változatlanul hagyja: $f(c) \equiv g(c) \pmod p$. $\blacksquare$

(Az egyértelműség — amelyet a jegyzet zárójelben említ — abban az értelemben igaz, hogy két legfeljebb $(p-1)$-edfokú polinom, amely minden helyen ugyanazt a maradékot adja, modulo $p$ együtthatónként megegyezik; ez a következő, 14.4. Tételből adódik, a különbségükre alkalmazva.)

**Példa.** Modulo $5$ az $f(x) = x^7 + 3x^5 + x^2 + 2$ polinom helyett vizsgálhatjuk a
$$g(x) = x^3 + 3x + x^2 + 2 = x^3 + x^2 + 3x + 2$$
polinomot ($x^7 = x^5 \cdot x^2 \to x \cdot x^2 = x^3$, $x^5 \to x$). A $0, 1, 2, 3, 4$ helyeken $g$ értékei modulo $5$: $2, 2, 0, 2, 4$. Tehát $f(x) \equiv 0 \pmod 5$ egyetlen megoldása $x \equiv 2$. (Közvetlenül: $f(2) = 128 + 96 + 4 + 2 = 230 = 46 \cdot 5$.)

### 14.3. A fokszámtétel

A fokszámtétel megalkotója Joseph-Louis Lagrange (1736–1813), olasz születésű (torinói) francia matematikus, aki csillagászattal és fizikával is foglalkozott. Legfontosabb műve a *Mécanique analytique* (Analitikus mechanika, 1788), amely hamar alapművé vált. Apja a szárd király hivatalában volt kincstárnok, de rizikós üzletekbe fogva elveszítette a vagyonát. Lagrange később így emlékezett: *„Ha gazdag lettem volna, aligha adtam volna a fejem a matematikára.”*

> **14.4. Tétel (fokszámtétel, Lagrange).** Legyen $p$ prím, és $f(x) = a_n x^n + \dots + a_1 x + a_0$ egész együtthatós, legfeljebb $n$-edfokú polinom, amelynek van $p$-vel nem osztható együtthatója. Ekkor az
> $$f(x) \equiv 0 \pmod p$$
> kongruenciának legfeljebb $n$ megoldása van (modulo $p$).

*Bizonyítás.* A $p$-vel osztható együtthatójú tagok modulo $p$ nem számítanak, ezért elhagyhatjuk őket; ezzel a fok legfeljebb csökken. Feltehetjük tehát, hogy $f$ foka $n$ és $p \nmid a_n$. A tételt $n$ szerinti teljes indukcióval bizonyítjuk.

**Kezdő lépés:** $n = 0$-ra $f = a_0$ és $p \nmid a_0$, tehát nincs megoldás. (Az $n = 1$ eset is nyilvánvaló: $a_1 x \equiv -a_0$, $(a_1, p) = 1$, egyetlen megoldás.)

**Indukciós lépés:** tegyük fel, hogy az állítás $(k - 1)$-edfokú polinomokra igaz, és legyen $f$ $k$-adfokú, $p \nmid a_k$. Ha az
$$f(x) \equiv 0 \pmod p \qquad (14.6)$$
kongruenciának nincs megoldása, az állítás igaz. Tegyük fel, hogy van egy $x_1$ megoldása: $f(x_1) \equiv 0 \pmod p$. Ekkor
$$f(x) - f(x_1) = a_k(x^k - x_1^k) + a_{k-1}(x^{k-1} - x_1^{k-1}) + \dots + a_1(x - x_1),$$
és a jobb oldal minden tagjából kiemelhető $x - x_1$ (az $x^j - x_1^j = (x - x_1)(x^{j-1} + x^{j-2}x_1 + \dots + x_1^{j-1})$ azonosság szerint):
$$f(x) - f(x_1) = (x - x_1)\, g(x),$$
ahol $g(x) \in \mathbb{Z}[x]$ egy $(k-1)$-edfokú polinom, főegyütthatója $a_k$, tehát $p \nmid$ főegyüttható. Ha most $x$ megoldása (14.6)-nak, akkor
$$p \mid f(x) - f(x_1) = (x - x_1) g(x),$$
így Eukleidész I. tétele szerint
$$p \mid x - x_1 \qquad \text{vagy} \qquad p \mid g(x). \qquad (14.8)$$
Az indukciós feltevés szerint a $g(x) \equiv 0 \pmod p$ kongruenciának legfeljebb $k - 1$ megoldása van, így (14.8) miatt (14.6)-nak legfeljebb $1 + (k - 1) = k$ megoldása lehet. $\blacksquare$

> **14.5. Megjegyzés.** A fokszámtételben nagyon fontos, hogy a modulus prím; ellenkező esetben a tétel nem igaz. Az $x^2 - 1 \equiv 0 \pmod 8$ kongruencia bal oldalán másodfokú polinom áll, de a kongruenciának négy megoldása van modulo $8$: $x \equiv 1, 3, 5, 7$. A bizonyításban ott romlik el a dolog, hogy összetett modulusra nem igaz Eukleidész I. tétele: $8 \mid (3 - 1)(3 + 1) = 8$, de $8 \nmid 2$ és $8 \nmid 4$.

**Egy fontos következmény.** Ha egy legfeljebb $n$-edfokú $f$ polinomnak modulo $p$ több mint $n$ megoldása van, akkor *minden* együtthatója osztható $p$-vel. (Ez a fokszámtétel kontrapozíciója.) A következő két fejezet mindkét tétele ezen múlik.

## 15. Wilson tétele

A Wilson-tétel első írásos formája Ibn al-Hajszamtól (latinosan Alhazen, kb. 965–1040), arab matematikustól, fizikustól és csillagásztól származik. A történet szerint az egyiptomi kalifa megbízta, hogy a Nílus — a terméshez szükséges — évenkénti áradását folyamszabályozással biztosítsa. Amikor a munka nem járt sikerrel, Ibn al-Hajszam a kalifa haragjától tartva őrültséget színlelt; a kalifa halála után elkobzott vagyonát visszakapta, és haláláig Egyiptomban élt.

Jóval később, a XVIII. században került újra napfényre a tétel, amikor Edward Waring 1770-ben, *Meditationes Algebraicae* című könyvében közölte tanítványa, John Wilson felfedezését. Sem Waring, sem Wilson nem tudta bebizonyítani a tételt; az első bizonyítást Lagrange adta 1771-ben.

> **15.1. Tétel (Wilson).** Ha $p$ prím, akkor
> $$(p - 1)! \equiv -1 \pmod p.$$

**Példák.** $p = 5$: $4! = 24 = 25 - 1 \equiv -1$. $p = 7$: $6! = 720 = 7 \cdot 103 - 1 \equiv -1$. $p = 11$: $10! = 3628800 \equiv -1 \pmod{11}$.

*1. bizonyítás (párosítással).* $p = 2$ és $p = 3$ esetén a kongruencia közvetlenül ellenőrizhető: $1! = 1 \equiv -1 \pmod 2$, $2! = 2 \equiv -1 \pmod 3$. Legyen tehát $p \ge 5$. Az $1, 2, \dots, p - 1$ számokat megpróbáljuk úgy párokba állítani, hogy az egy párban álló számok szorzata $1$-gyel legyen kongruens modulo $p$.

Legyen $1 \le j \le p - 1$. A
$$jx \equiv 1 \pmod p$$
kongruencia egyértelműen megoldható, mert $(j, p) = 1 \mid 1$; a megoldás $x \not\equiv 0$, így választható az $1, \dots, p - 1$ számok közül. Ez az $x$ legyen $j$ **párja** (vagyis $j$ inverze modulo $p$). A párosítás szimmetrikus: ha $x$ a $j$ párja, akkor $j$ az $x$ párja.

Mikor lehet $j$ párja önmaga? Ha $x \equiv j$, akkor
$$j^2 \equiv 1 \pmod p, \quad p \mid j^2 - 1 = (j - 1)(j + 1), \quad p \mid j - 1 \ \text{vagy}\ p \mid j + 1,$$
azaz $j \equiv 1$ vagy $j \equiv -1 \equiv p - 1 \pmod p$. Tehát csak az $1$-nek és a $p - 1$-nek lehet önmaga a párja. A $2, 3, \dots, p - 2$ számok így olyan párokba rendezhetők, amelyekben a két szám különböző, és szorzatuk $1$-gyel kongruens. A párok szorzatait összeszorozva
$$2 \cdot 3 \cdots (p - 2) \equiv 1 \pmod p,$$
és ezt $(p - 1)$-gyel szorozva
$$(p - 1)! \equiv p - 1 \equiv -1 \pmod p. \ \blacksquare$$

**Példa a párosításra.** $p = 11$ esetén a párok: $(2, 6)$, $(3, 4)$, $(5, 9)$, $(7, 8)$, hiszen $12, 12, 45, 56$ mind $1$-gyel kongruens modulo $11$. Az $1$ és a $10$ magában marad. Így $10! \equiv 1 \cdot 1 \cdot 1 \cdot 1 \cdot 1 \cdot 10 \equiv -1$.

*2. bizonyítás (a fokszámtétellel).* Legyen
$$f(x) = x^{p-1} - 1, \qquad g(x) = (x - 1)(x - 2)\cdots(x - (p - 1)).$$
A kis Fermat-tétel szerint $f$-nek gyöke modulo $p$ az $1, 2, \dots, p - 1$ maradékosztályok mindegyike; nyilvánvalóan $g$-nek is. Tehát $f(x) - g(x)$-nek is gyöke az $1, 2, \dots, p - 1$, azaz $p - 1$ darab különböző maradékosztály. Mindkét polinom normált és $(p-1)$-edfokú, így $f - g$ foka legfeljebb $p - 2$. A fokszámtétel szerint vagy legfeljebb $p - 2$ gyöke van, vagy minden együtthatója osztható $p$-vel. Mivel most $p - 1$ gyöke van, **$f - g$ minden együtthatója osztható $p$-vel**:
$$f(x) \equiv g(x) \pmod p \quad \text{(együtthatónként)}.$$
A két polinom konstans tagja tehát kongruens modulo $p$:
$$-1 \equiv (-1)(-2)\cdots(-(p - 1)) = (-1)^{p-1} (p - 1)! \pmod p.$$
Ha $p$ páratlan, akkor $(-1)^{p-1} = 1$, és $(p - 1)! \equiv -1$; a $p = 2$ esetet pedig már láttuk. $\blacksquare$

::: kiegeszites
**Kiegészítés: a Wilson-tétel megfordítása.** Ha $n > 1$ és $(n - 1)! \equiv -1 \pmod n$, akkor $n$ prím. Valóban, ha $n$ összetett, akkor van egy $d$ osztója, $1 < d < n$; ez szerepel az $1, 2, \dots, n - 1$ számok között, így $d \mid (n - 1)!$. Ha $n \mid (n - 1)! + 1$ volna, akkor $d \mid (n-1)! + 1$ is teljesülne, és így $d \mid 1$ — ellentmondás. A Wilson-tétel tehát *jellemzi* a prímeket. Prímtesztként mégsem használható, mert $(n - 1)!$ kiszámítása (akár modulo $n$ is) nagyon lassú.
:::

**Wilson-prímek.** Egy $p$ prímet **Wilson-prímnek** nevezünk, ha nemcsak $p$, hanem $p^2$ is osztja $(p - 1)! + 1$-et. A jelenleg ismert Wilson-prímek: $5$, $13$ és $563$. (Például $4! + 1 = 25$, és $12! + 1 = 479\,001\,601 = 169 \cdot 2\,834\,329$.) Számítógépes vizsgálatok szerint (E. Costa, R. Gerbicz és D. Harvey, 2014) $2 \cdot 10^{13}$-ig nincs több Wilson-prím; a sejtés szerint mégis végtelen sok van.

## 16. Wolstenholme tétele

Joseph Wolstenholme angol matematikus 1862-ben a Wilson-tételhez hasonló jellegű állítást bizonyított.

> **16.1. Tétel (Wolstenholme).** Legyen $p \ge 5$ prím. Az
> $$1 + \frac{1}{2} + \frac{1}{3} + \dots + \frac{1}{p - 1}$$
> tört (legegyszerűbb alakjának) számlálója osztható $p^2$-tel.

**Példák.** $p = 5$: $1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} = \frac{25}{12}$, a számláló $25 = 5^2$. $p = 7$: $1 + \frac{1}{2} + \dots + \frac{1}{6} = \frac{49}{20}$, a számláló $49 = 7^2$. $p = 11$: az összeg $\frac{7381}{2520}$, és $7381 = 11^2 \cdot 61$. (Ellenpélda $p = 3$-ra: $1 + \frac{1}{2} = \frac{3}{2}$, a számláló csak $3$-mal osztható.)

*Bizonyítás.* Legyen $f$ és $g$ ugyanaz, mint a Wilson-tétel 2. bizonyításában:
$$f(x) = x^{p-1} - 1, \qquad g(x) = (x - 1)(x - 2)\cdots(x - (p - 1)) = x^{p-1} + A_1 x^{p-2} + \dots + A_{p-2} x + A_{p-1}.$$
Nyilván $A_{p-1} = (-1)^{p-1}(p - 1)! = (p - 1)!$ (mert $p$ páratlan).

**1. lépés: egy egzakt egyenlőség.** Írjunk $x$ helyébe $p$-t! Egyrészt
$$g(p) = (p - 1)(p - 2)\cdots(p - (p - 1)) = (p - 1)!,$$
másrészt
$$g(p) = p^{p-1} + A_1 p^{p-2} + \dots + A_{p-2}\, p + A_{p-1}.$$
Mivel $A_{p-1} = (p - 1)!$, a kettőt összevetve
$$0 = p^{p-1} + A_1 p^{p-2} + \dots + A_{p-3}\, p^2 + A_{p-2}\, p. \qquad (*)$$

**2. lépés: az együtthatók oszthatósága.** A Wilson-tétel 2. bizonyításában láttuk, hogy $f(x) \equiv g(x) \pmod p$ együtthatónként, azaz
$$x^{p-1} - 1 \equiv x^{p-1} + A_1 x^{p-2} + \dots + A_{p-2} x + A_{p-1} \pmod p.$$
Az együtthatókat összehasonlítva:
$$p \mid A_1, A_2, \dots, A_{p-2}.$$

**3. lépés.** Térjünk vissza $(*)$-hoz, és nézzük modulo $p^3$! A bal oldal $0$. A jobb oldalon az első tag $p^{p-1}$, amely $p \ge 5$ miatt osztható $p^3$-nel; az $A_i p^{p-1-i}$ tagok ($1 \le i \le p - 3$) is oszthatók $p^3$-nel, hiszen $p \mid A_i$ és $p - 1 - i \ge 2$. Így az utolsó tag is osztható $p^3$-nel: $p^3 \mid A_{p-2}\, p$, vagyis
$$p^2 \mid A_{p-2}.$$

**4. lépés: kapcsolat a harmonikus összeggel.** $A_{p-2}$ a $g(x) = (x - 1)\cdots(x - (p-1))$ szorzatban $x$ együtthatója. Ezt úgy kapjuk, hogy a $p - 1$ tényező közül egyből az $x$-et, a többiből a konstanst választjuk:
$$A_{p-2} = \sum_{k=1}^{p-1} \prod_{j \ne k} (-j) = (-1)^{p-2} \sum_{k=1}^{p-1} \frac{(p - 1)!}{k} = -(p - 1)! \left(1 + \frac{1}{2} + \dots + \frac{1}{p - 1}\right).$$
Ha a harmonikus összeg legegyszerűbb alakja $\frac{N}{D}$, akkor $D \mid (p - 1)!$ miatt $p \nmid D$, és $N \cdot (p - 1)! = -A_{p-2} \cdot D$. Itt $p^2 \mid A_{p-2}$, így $p^2 \mid N \cdot (p - 1)!$, és mivel $(p, (p - 1)!) = 1$, ezért $p^2 \mid N$. $\blacksquare$

(Figyeljük meg, hol kellett $p \ge 5$: a 3. lépésben, hogy az első tag, $p^{p-1}$ osztható legyen $p^3$-nel.)

### További tételek binomiális együtthatókról

A következő érdekes, binomiális együtthatókra vonatkozó tételek szintén Wolstenholme nevéhez fűződnek. Ezeket nem bizonyítjuk.

> **16.2. Tétel (Wolstenholme).** Ha $p \ge 5$ prím, akkor
> $$\binom{2p - 1}{p - 1} \equiv 1 \pmod{p^3}.$$

Például $p = 5$: $\binom{9}{4} = 126 = 125 + 1$; $p = 7$: $\binom{13}{6} = 1716 = 5 \cdot 343 + 1$.

A tétel egy általánosítása Wilhelm Ljunggrentől (1952) származik:

> **16.3. Tétel.** Ha $p \ge 5$ prím és $0 \le b \le a$ egészek, akkor
> $$\binom{ap}{bp} \equiv \binom{a}{b} \pmod{p^3}.$$

(Az $a = 2$, $b = 1$ eset: $\binom{2p}{p} = 2\binom{2p-1}{p-1} \equiv 2 = \binom{2}{1}$, ami a 16.2. Tétellel ekvivalens. A $p \ge 5$ feltétel itt is lényeges: $p = 3$-ra $\binom{6}{3} = 20$ és $\binom{2}{1} = 2$, de $27 \nmid 18$.)

Egy $p$ prímet **Wolstenholme-prímnek** nevezünk, ha
$$\binom{2p - 1}{p - 1} \equiv 1 \pmod{p^4}.$$
Jelenleg csak két Wolstenholme-prím ismert, a $16843$ és a $2124679$; számítógéppel az összes prímet megvizsgálták $10^9$-ig (R. J. McIntosh és E. L. Roettger, 2007), és eddig a határig biztosan nincs több.

**Lucas tétele.** Érdekes tulajdonsága a binomiális együtthatóknak Édouard Lucas 1878-ban bizonyított tétele is. Eszerint ha $p$ prím, $a = n_1 p + n_0$ és $b = m_1 p + m_0$, ahol $0 \le n_0, m_0 \le p - 1$, akkor
$$\binom{a}{b} \equiv \binom{n_1}{m_1}\binom{n_0}{m_0} \pmod p.$$
Többszörösen alkalmazva: ha $a = (n_r \dots n_1 n_0)_p$ és $b = (m_r \dots m_1 m_0)_p$ a $p$-alapú számrendszerbeli alakok, akkor
$$\binom{a}{b} \equiv \binom{n_r}{m_r}\binom{n_{r-1}}{m_{r-1}}\cdots\binom{n_0}{m_0} \pmod p$$
(ahol $\binom{n}{m} = 0$, ha $m > n$). **Példák.** $\binom{10}{3} = 120$ modulo $3$: $10 = (101)_3$, $3 = (010)_3$, így $\binom{10}{3} \equiv \binom{1}{0}\binom{0}{1}\binom{1}{0} = 0$, és valóban $3 \mid 120$. $\binom{12}{5} = 792$ modulo $5$: $12 = (22)_5$, $5 = (10)_5$, így $\binom{12}{5} \equiv \binom{2}{1}\binom{2}{0} = 2$, és valóban $792 = 158 \cdot 5 + 2$.

## A IV. rész összefoglalása

- **Kínai maradéktétel:** páronként relatív prím $m_1, \dots, m_k$ modulusokra az $x \equiv c_i \pmod{m_i}$ rendszer mindig megoldható, és a megoldás egyetlen maradékosztály modulo $m_1 \cdots m_k$. Konstrukció: $x = \sum a_i M_i$, $M_i = M / m_i$, $a_i M_i \equiv c_i \pmod{m_i}$; vagy egymás utáni behelyettesítés.
- **Polinomkongruencia összetett modulusra:** $f(x) \equiv 0 \pmod n$ visszavezethető a prímhatvány-tényezőkre; a megoldásszámok összeszorzódnak.
- **Prímhatvány modulus:** modulo $p$ megoldásból „jegyenként” felemelés modulo $p^2, p^3, \dots$; ha $p \nmid f'(h)$, a felemelés egyértelmű (Hensel).
- **Prím modulus:** a fok $p - 1$ alá redukálható ($x^p \to x$); **Lagrange fokszámtétele:** egy modulo $p$ nem nulla, legfeljebb $n$-edfokú polinomnak legfeljebb $n$ gyöke van. Összetett modulusra hamis ($x^2 \equiv 1 \pmod 8$).
- **Wilson:** $(p - 1)! \equiv -1 \pmod p$ (párosítás az inverzekkel; vagy $x^{p-1} - 1 \equiv \prod (x - j)$ együtthatónként). Megfordítva is igaz, tehát jellemzi a prímeket.
- **Wolstenholme:** $p \ge 5$ esetén $1 + \frac{1}{2} + \dots + \frac{1}{p-1}$ számlálója osztható $p^2$-tel; $\binom{2p-1}{p-1} \equiv 1 \pmod{p^3}$. **Lucas:** $\binom{a}{b} \equiv \prod \binom{n_i}{m_i} \pmod p$ a $p$-alapú jegyekkel.

## Feladatok a IV. részhez

1. Oldjuk meg: $x \equiv 1 \pmod 3$, $x \equiv 2 \pmod 4$, $x \equiv 3 \pmod 5$.
2. Egy kosárban tojások vannak. Kettesével, hármasával, négyesével, ötösével, illetve hatosával kivéve rendre $1, 2, 3, 4, 5$ tojás marad, hetesével kivéve egy sem. Legalább hány tojás van a kosárban?
3. Hány megoldása van az $x^2 \equiv 1 \pmod{105}$ kongruenciának? Adjuk meg a megoldásokat.
4. Oldjuk meg az $x^2 \equiv 2 \pmod{49}$ kongruenciát.
5. Oldjuk meg az $x^2 + x + 7 \equiv 0 \pmod{27}$ kongruenciát. Miben különbözik ez a 14.1. pont példájától?
6. Mi a $16!$ maradéka $19$-cel osztva?
7. Legyen $p$ páratlan prím. Bizonyítsuk be, hogy $\left(\left(\frac{p-1}{2}\right)!\right)^2 \equiv (-1)^{\frac{p+1}{2}} \pmod p$. Következtessük ki, hogy ha $p \equiv 1 \pmod 4$, akkor az $x^2 \equiv -1 \pmod p$ kongruencia megoldható.
8. Bizonyítsuk be a fokszámtétel segítségével, hogy ha $p$ prím és $d \mid p - 1$, akkor az $x^d \equiv 1 \pmod p$ kongruenciának pontosan $d$ megoldása van. (Útmutatás: $x^{p-1} - 1 = (x^d - 1) \cdot h(x)$.)

### Megoldási útmutatók

1. Behelyettesítéssel: $x = 1 + 3s$; $1 + 3s \equiv 2 \pmod 4$-ből $s \equiv 3$, $x = 10 + 12r$; $10 + 12r \equiv 3 \pmod 5$-ből $2r \equiv 3$, $r \equiv 4$; $x \equiv 58 \pmod{60}$.
2. A feltételek: $x \equiv -1 \pmod{2, 3, 4, 5, 6}$, azaz $x \equiv -1 \pmod{60}$, és $x \equiv 0 \pmod 7$. $x = 60k - 1 \equiv 4k - 1 \equiv 0 \pmod 7$-ből $k \equiv 2$; a legkisebb: $x = 119$ (általában $119 + 420t$).
3. $105 = 3 \cdot 5 \cdot 7$, mindegyik prím modulusra két megoldás ($\pm 1$), összesen $2^3 = 8$: $x \equiv 1, 29, 34, 41, 64, 71, 76, 104 \pmod{105}$.
4. Modulo $7$: $x \equiv \pm 3$. $x = 3 + 7t$: $9 + 42t \equiv 2 \pmod{49}$, $42t \equiv -7$, $6t \equiv -1 \pmod 7$, $t \equiv 1$; $x \equiv 10$. A másik: $x \equiv -10 \equiv 39 \pmod{49}$.
5. Modulo $3$: $x \equiv 1$. Itt $f'(x) = 2x + 1$, és $f'(1) = 3 \equiv 0 \pmod 3$: a Hensel-lemma nem alkalmazható. Modulo $9$: $x = 1 + 3t$-re $f(x) = 9 + 9t + 9t^2 \equiv 0$, tehát mindhárom $t$ jó: $x \equiv 1, 4, 7 \pmod 9$. Modulo $27$ közvetlen ellenőrzéssel csak az $x \equiv 4 \pmod 9$ ág emelhető fel, mégpedig háromféleképpen: $x \equiv 4, 13, 22 \pmod{27}$. A felemelés tehát itt nem egyértelmű.
6. Wilson: $18! \equiv -1 \pmod{19}$, és $18 \cdot 17 \equiv (-1)(-2) = 2$, így $2 \cdot 16! \equiv -1 \equiv 18$, $16! \equiv 9 \pmod{19}$.
7. $(p - 1)! = \prod_{j=1}^{(p-1)/2} j(p - j) \equiv \prod_{j=1}^{(p-1)/2} (-j^2) = (-1)^{\frac{p-1}{2}}\left(\left(\frac{p-1}{2}\right)!\right)^2$, és ez Wilson szerint $\equiv -1$. Ha $p = 4k + 1$, akkor $(-1)^{\frac{p+1}{2}} = -1$, így $x = \left(\frac{p-1}{2}\right)!$ megoldása $x^2 \equiv -1$-nek. (Például $p = 13$: $6! = 720 \equiv 5$, és $5^2 = 25 \equiv -1 \pmod{13}$.)
8. Ha $p - 1 = dk$, akkor $x^{p-1} - 1 = (x^d - 1)(x^{d(k-1)} + \dots + x^d + 1)$, ahol a második tényező foka $p - 1 - d$. A bal oldalnak $p - 1$ gyöke van (kis Fermat), a jobb oldali tényezőknek a fokszámtétel szerint legfeljebb $d$, illetve $p - 1 - d$. Eukleidész I. tétele szerint minden gyök valamelyik tényezőnek gyöke, így $x^d - 1$-nek legalább $(p - 1) - (p - 1 - d) = d$ gyöke van, tehát pontosan $d$.

---

# V. RÉSZ: SZÁMELMÉLETI FÜGGVÉNYEK

Az ötödik rész olyan függvényekkel foglalkozik, amelyek minden pozitív egészhez egy számot rendelnek: hány osztója van, mennyi az osztóinak összege, hány prímtényezője van, hány nála kisebb, hozzá relatív prím szám van. Kiderül, hogy ezek többsége **multiplikatív**, és ezért elég a prímhatványokon ismerni őket. Ebből adódik az Euler-féle $\varphi$ függvény képletének (6.10. Tétel) bizonyítása, és ezzel oldjuk meg a tökéletes számok több mint kétezer éves kérdésének páros felét is.

## 17. Számelméleti függvények

Számelméleti függvényekkel már sokszor találkoztunk, csak nem neveztük őket így.

> **17.1. Definíció.** Az $f(n)$ függvényt **számelméleti függvénynek** nevezzük, ha értelmezési tartománya a pozitív egészek halmaza. Értékkészlete lehet valós vagy komplex.

Számelméleti függvény például bármely polinomfüggvény, a logaritmusfüggvény (a pozitív egészekre megszorítva), vagy a már definiált Euler-féle $\varphi$ függvény. Néhány speciális típust sokkal gyakrabban használunk, mint a többit:

> **17.2. Definíció.** Az $f(n)$ számelméleti függvényt **multiplikatívnak** nevezzük, ha
> $$f(ab) = f(a) f(b)$$
> minden $(a, b) = 1$ számpárra. Ha az összefüggés tetszőleges $a, b$ pozitív egészekre érvényes, akkor $f$ **teljesen multiplikatív**.
>
> **17.3. Definíció.** Az $f(n)$ számelméleti függvényt **additívnak** nevezzük, ha
> $$f(ab) = f(a) + f(b)$$
> minden $(a, b) = 1$ számpárra. Ha az összefüggés tetszőleges $a, b$ pozitív egészekre érvényes, akkor $f$ **teljesen additív**.

Például a $\varphi$ függvény multiplikatív (ezt hamarosan bebizonyítjuk), de nem teljesen multiplikatív: $\varphi(4) = 2 \ne 1 = \varphi(2)\varphi(2)$. A $\log n$ függvény teljesen additív, az $f(n) = n^k$ teljesen multiplikatív.

> **17.4. Tétel.** Ha $f$ nem azonosan nulla multiplikatív függvény, akkor $f(1) = 1$.

*Bizonyítás.* Minden $a$-ra $(a, 1) = 1$, így $f(a) = f(1 \cdot a) = f(1) f(a)$. Mivel $f \not\equiv 0$, van olyan $a$, amelyre $f(a) \ne 0$; ezzel osztva $f(1) = 1$. $\blacksquare$

> **17.5. Tétel.** Ha $g$ additív függvény, akkor $g(1) = 0$.

*Bizonyítás.* $g(a) = g(1 \cdot a) = g(1) + g(a)$, és mindkét oldalból $g(a)$-t kivonva $g(1) = 0$. $\blacksquare$

A multiplikatív és additív függvényeket a prímhatvány helyeken felvett értékeik meghatározzák:

> **17.6. Tétel.** Ha $n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_r^{\alpha_r}$ (kanonikus alak), $f$ multiplikatív és $g$ additív, akkor
> $$f(n) = f(p_1^{\alpha_1}) f(p_2^{\alpha_2}) \cdots f(p_r^{\alpha_r}), \qquad g(n) = g(p_1^{\alpha_1}) + g(p_2^{\alpha_2}) + \dots + g(p_r^{\alpha_r}).$$
>
> **17.7. Tétel.** Ha $s$ teljesen multiplikatív és $t$ teljesen additív, akkor
> $$s(n) = s(p_1)^{\alpha_1} \cdots s(p_r)^{\alpha_r}, \qquad t(n) = \alpha_1 t(p_1) + \dots + \alpha_r t(p_r).$$
> Ezeket tehát elég a prímeken ismerni.

*Bizonyítás.* Mindkettő a SzAT és a definíciók közvetlen következménye: a különböző prímek hatványai páronként relatív prímek, így a multiplikativitást (additivitást) ismételten alkalmazhatjuk; teljes multiplikativitás esetén pedig $s(p^\alpha) = s(p \cdots p) = s(p)^\alpha$. $\blacksquare$

> **17.8. Tétel.** Két multiplikatív függvény szorzata és hányadosa (ha értelmezve van) is multiplikatív.
>
> **17.9. Tétel.** Két additív függvény összege és különbsége is additív.

::: kiegeszites
**Kiegészítés: a 17.8. és 17.9. Tétel bizonyítása (HF).** Ha $f, h$ multiplikatív és $(a, b) = 1$, akkor
$$(fh)(ab) = f(ab)h(ab) = f(a)f(b)h(a)h(b) = (fh)(a) \cdot (fh)(b),$$
és ugyanígy, ha $h$ sehol sem nulla, $\frac{f}{h}(ab) = \frac{f(a)f(b)}{h(a)h(b)} = \frac{f}{h}(a)\frac{f}{h}(b)$. Additív $g, k$ esetén $(g \pm k)(ab) = g(a) + g(b) \pm (k(a) + k(b)) = (g \pm k)(a) + (g \pm k)(b)$. $\blacksquare$
:::

### 17.1. Nevezetes függvények

A legelterjedtebb nevezetes számelméleti függvények:
$$d(n), \quad \sigma(n), \quad \mu(n), \quad \omega(n), \quad \Omega(n), \quad \varphi(n).$$

> **17.10. Definíció.** $d(n)$ az $n$ pozitív osztóinak száma.
>
> **17.11. Definíció.** $\sigma(n)$ az $n$ pozitív osztóinak összege.
>
> **17.12. Definíció (Möbius-függvény).** Legyen $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$ a kanonikus alak. Ekkor
> $$\mu(n) = \begin{cases} 1, & \text{ha } n = 1, \\ (-1)^r, & \text{ha } \alpha_1 = \alpha_2 = \dots = \alpha_r = 1, \\ 0, & \text{ha van olyan } p \text{ prím, hogy } p^2 \mid n. \end{cases}$$

Egy szám **négyzetmentes**, ha nincs $1$-nél nagyobb négyzetszám osztója (azaz nincs olyan $p$ prím, hogy $p^2 \mid n$). A Möbius-függvény tehát a nem négyzetmentes számokon $0$, a négyzetmentes számokon pedig $\pm 1$ aszerint, hogy páros vagy páratlan sok prímtényezőjük van. Példák: $\mu(10) = \mu(2 \cdot 5) = (-1)^2 = 1$, $\mu(20) = 0$ (mert $4 \mid 20$), $\mu(30) = (-1)^3 = -1$.

> **17.13. Definíció.** $\omega(n)$ az $n$ különböző prímosztóinak száma, $\Omega(n)$ pedig a prímosztók száma multiplicitással számolva. Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor
> $$\omega(n) = r, \qquad \Omega(n) = \alpha_1 + \alpha_2 + \dots + \alpha_r.$$
>
> **17.14. Definíció (Euler-féle $\varphi$ függvény).** $\varphi(n)$ az $1, 2, \dots, n$ számok közül az $n$-hez relatív prímek száma.

Az első néhány érték:

| $n$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $d(n)$ | $1$ | $2$ | $2$ | $3$ | $2$ | $4$ | $2$ | $4$ | $3$ | $4$ | $2$ | $6$ |
| $\sigma(n)$ | $1$ | $3$ | $4$ | $7$ | $6$ | $12$ | $8$ | $15$ | $13$ | $18$ | $12$ | $28$ |
| $\mu(n)$ | $1$ | $-1$ | $-1$ | $0$ | $-1$ | $1$ | $-1$ | $0$ | $0$ | $1$ | $-1$ | $0$ |
| $\omega(n)$ | $0$ | $1$ | $1$ | $1$ | $1$ | $2$ | $1$ | $1$ | $1$ | $2$ | $1$ | $2$ |
| $\Omega(n)$ | $0$ | $1$ | $1$ | $2$ | $1$ | $2$ | $1$ | $3$ | $2$ | $2$ | $1$ | $3$ |
| $\varphi(n)$ | $1$ | $1$ | $2$ | $2$ | $4$ | $2$ | $6$ | $4$ | $6$ | $4$ | $10$ | $4$ |

Érdemes a táblázatban ellenőrizni a multiplikativitást: például $d(12) = d(4)d(3) = 3 \cdot 2 = 6$, $\sigma(12) = \sigma(4)\sigma(3) = 7 \cdot 4 = 28$, de $d(12) \ne d(2)d(6) = 2 \cdot 4 = 8$ — a $2$ és a $6$ nem relatív prímek.

> **17.15. Tétel.** A $d(n)$, $\sigma(n)$, $\mu(n)$ és $\varphi(n)$ függvények multiplikatívak.

A $d$ és $\sigma$ multiplikativitásának bizonyításához a következő lemmát használjuk.

> **17.16. Lemma.** Legyen $(a, b) = 1$. Ekkor $ab$ minden $c$ pozitív osztója egyértelműen előáll
> $$c = a'b', \qquad a' \mid a, \ b' \mid b$$
> alakban.

*Bizonyítás.* Legyen $a = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$ és $b = q_1^{\beta_1} \cdots q_s^{\beta_s}$. Mivel $(a, b) = 1$, a $p_i$ és $q_j$ prímek mind különbözők, így $ab$ kanonikus alakja $p_1^{\alpha_1} \cdots p_r^{\alpha_r} q_1^{\beta_1} \cdots q_s^{\beta_s}$. Ha $c \mid ab$, akkor a SzAT szerint
$$c = p_1^{\alpha_1'} \cdots p_r^{\alpha_r'} \, q_1^{\beta_1'} \cdots q_s^{\beta_s'}, \qquad 0 \le \alpha_i' \le \alpha_i, \quad 0 \le \beta_j' \le \beta_j.$$
Így az $a' = p_1^{\alpha_1'} \cdots p_r^{\alpha_r'}$ és $b' = q_1^{\beta_1'} \cdots q_s^{\beta_s'}$ választás megfelelő, és egyértelmű is, hiszen $a'$ csak a $p_i$-ket, $b'$ csak a $q_j$-ket tartalmazhatja, és a kitevőket $c$ meghatározza. $\blacksquare$

*A 17.15. Tétel bizonyítása $d$-re és $\sigma$-ra.* Legyen $(a, b) = 1$, $a$ osztói $a_1, \dots, a_k$ (tehát $d(a) = k$), $b$ osztói $b_1, \dots, b_\ell$ ($d(b) = \ell$). A lemma szerint $ab$ osztói pontosan az
$$a_1 b_1, \dots, a_1 b_\ell, \quad a_2 b_1, \dots, a_2 b_\ell, \quad \dots, \quad a_k b_1, \dots, a_k b_\ell \qquad (17.4)$$
számok, és ezek mind különbözők (a felírás egyértelműsége miatt). Ezért
$$d(ab) = k\ell = d(a) d(b),$$
és az osztók összege
$$\sigma(ab) = \sum_{i=1}^{k}\sum_{j=1}^{\ell} a_i b_j = \left(\sum_{i=1}^k a_i\right)\left(\sum_{j=1}^\ell b_j\right) = \sigma(a)\sigma(b). \ \blacksquare$$

*A $\mu$ multiplikativitása.* Legyen $(a, b) = 1$. Ha $a = 1$ vagy $b = 1$, az állítás $\mu(1) = 1$ miatt nyilvánvaló. Ha $a$ nem négyzetmentes (van $p^2 \mid a$), akkor $p^2 \mid ab$ is, így $\mu(ab) = 0 = \mu(a)\mu(b)$; ugyanígy, ha $b$ nem négyzetmentes. Végül ha mindkettő négyzetmentes, $a = p_1 \cdots p_r$ és $b = q_1 \cdots q_s$ (különböző prímek), akkor $ab = p_1 \cdots p_r q_1 \cdots q_s$ is négyzetmentes, és
$$\mu(ab) = (-1)^{r+s} = (-1)^r(-1)^s = \mu(a)\mu(b). \ \blacksquare$$

*A $\varphi$ multiplikativitása.* Legyen $(a, b) = 1$. $\varphi(ab)$ az $ab$-nél nem nagyobb pozitív egészek között az $ab$-hez relatív prímek száma. Mivel $(a, b) = 1$, egy szám pontosan akkor relatív prím $ab$-hez, ha $a$-hoz is és $b$-hez is relatív prím (egy közös prímosztó $ab$-vel osztaná $a$-t vagy $b$-t, és viszont). Rendezzük az $1, 2, \dots, ab$ számokat egy $b$ sorból és $a$ oszlopból álló táblázatba:
$$\begin{matrix} 1 & 2 & \cdots & a \\ a + 1 & a + 2 & \cdots & 2a \\ \vdots & & & \vdots \\ (b-1)a + 1 & (b-1)a + 2 & \cdots & ba \end{matrix}$$
Az $r$-edik oszlopban az $r, a + r, 2a + r, \dots, (b - 1)a + r$ számok állnak; ezek mind kongruensek $r$-rel modulo $a$, tehát vagy mind relatív prímek $a$-hoz, vagy egyik sem. Az $a$-hoz relatív prím oszlopok száma tehát $\varphi(a)$.

Egy ilyen oszlop elemei a $0, 1, \dots, b - 1$ teljes maradékrendszerből (modulo $b$) úgy keletkeznek, hogy az elemeit a $b$-hez relatív prím $a$-val szorozzuk, és hozzáadjuk $r$-t. A 6.5. Tétel szerint így újra teljes maradékrendszert kapunk modulo $b$. Egy teljes maradékrendszerben pontosan $\varphi(b)$ elem relatív prím $b$-hez. Tehát mind a $\varphi(a)$ „jó” oszlopban pontosan $\varphi(b)$ olyan szám van, amely $b$-hez is relatív prím, így összesen
$$\varphi(ab) = \varphi(a)\varphi(b). \ \blacksquare$$

**Példa a táblázatra.** $a = 3$, $b = 4$: az $1, \dots, 12$ számok három oszlopba rendezve: $(1, 4, 7, 10)$, $(2, 5, 8, 11)$, $(3, 6, 9, 12)$. A $3$-hoz relatív prím oszlopok az első kettő; ezekben a $4$-hez relatív prímek: $1, 7$ és $5, 11$. Összesen $4 = \varphi(3)\varphi(4) = 2 \cdot 2$ szám, és valóban $\varphi(12) = 4$.

**Additív függvények.**

> **17.17. Tétel.** Az $\Omega(n)$ függvény teljesen additív, az $\omega(n)$ függvény additív (de nem teljesen additív).

::: kiegeszites
**Kiegészítés: a 17.17. Tétel bizonyítása (HF).** Ha $a = \prod p^{\alpha_p}$ és $b = \prod p^{\beta_p}$ (minden prímre, véges sok nem nulla kitevővel), akkor $ab = \prod p^{\alpha_p + \beta_p}$, így $\Omega(ab) = \sum(\alpha_p + \beta_p) = \Omega(a) + \Omega(b)$ — tetszőleges $a, b$-re. Ha $(a, b) = 1$, akkor $a$ és $b$ prímosztói különbözők, és $ab$ különböző prímosztói ezek uniója, így $\omega(ab) = \omega(a) + \omega(b)$. Teljesen additív azonban nem: $\omega(4) = 1 \ne 2 = \omega(2) + \omega(2)$. $\blacksquare$
:::

### Explicit képletek

A multiplikativitás miatt elég a prímhatványokon kiszámolni a függvényeket.

> **17.18. Tétel (a 6.10. Tétel).** Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor
> $$\varphi(n) = n\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right)\cdots\left(1 - \frac{1}{p_r}\right) = n\prod_{p \mid n}\left(1 - \frac{1}{p}\right),$$
> és $\varphi(1) = 1$.

*Bizonyítás.* A multiplikativitás miatt $\varphi(n) = \varphi(p_1^{\alpha_1}) \cdots \varphi(p_r^{\alpha_r})$. Egy $p^k$ prímhatványra ($k \ge 1$) az $1 \le x \le p^k$ számok közül azok nem relatív prímek $p^k$-hoz, amelyek oszthatók $p$-vel; ezek a $p, 2p, \dots, p^{k-1} \cdot p$ számok, $p^{k-1}$ darab. Így
$$\varphi(p^k) = p^k - p^{k-1} = p^k\left(1 - \frac{1}{p}\right).$$
Ezeket összeszorozva
$$\varphi(n) = p_1^{\alpha_1}\left(1 - \frac{1}{p_1}\right) \cdots p_r^{\alpha_r}\left(1 - \frac{1}{p_r}\right) = n\left(1 - \frac{1}{p_1}\right)\cdots\left(1 - \frac{1}{p_r}\right). \ \blacksquare$$

> **17.19. Tétel.** Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor $d(n) = (\alpha_1 + 1)(\alpha_2 + 1)\cdots(\alpha_r + 1)$, és $d(1) = 1$.

*Bizonyítás.* A multiplikativitás miatt elég $d(p^k)$-t meghatározni: $p^k$ osztói $1, p, p^2, \dots, p^k$, tehát $d(p^k) = k + 1$. $\blacksquare$

> **17.20. Tétel.** Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor
> $$\sigma(n) = \frac{p_1^{\alpha_1 + 1} - 1}{p_1 - 1} \cdot \frac{p_2^{\alpha_2 + 1} - 1}{p_2 - 1} \cdots \frac{p_r^{\alpha_r + 1} - 1}{p_r - 1},$$
> és $\sigma(1) = 1$.

*Bizonyítás.* Elég $\sigma(p^k)$-t meghatározni, ami a mértani sor összegképlete szerint
$$\sigma(p^k) = 1 + p + p^2 + \dots + p^k = \frac{p^{k+1} - 1}{p - 1}. \ \blacksquare$$

**Kidolgozott példa.** Adjuk meg $d(2000)$, $\sigma(2000)$, $\mu(2000)$, $\omega(2000)$, $\Omega(2000)$ és $\varphi(2000)$ értékét! A kanonikus alak: $2000 = 2^4 \cdot 5^3$. Tehát
$$d(2000) = (4 + 1)(3 + 1) = 20, \qquad \sigma(2000) = \frac{2^5 - 1}{2 - 1} \cdot \frac{5^4 - 1}{5 - 1} = 31 \cdot 156 = 4836,$$
$$\mu(2000) = 0, \qquad \omega(2000) = 2, \qquad \Omega(2000) = 4 + 3 = 7, \qquad \varphi(2000) = 2000 \cdot \frac{1}{2} \cdot \frac{4}{5} = 800.$$

### 17.2. Multiplikatív függvény összegzési függvénye is multiplikatív

> **17.21. Tétel.** Ha $f(n)$ multiplikatív, akkor a
> $$g(n) = \sum_{d \mid n} f(d)$$
> összegzési függvény is multiplikatív. (Az összegzés $n$ összes pozitív osztójára történik.)

*Bizonyítás.* Legyen $(n_1, n_2) = 1$. A 17.16. Lemma szerint $n_1 n_2$ minden $c$ osztója pontosan egyféleképpen írható $c = d_1 d_2$ alakban, ahol $d_1 \mid n_1$ és $d_2 \mid n_2$. Ezért
$$g(n_1 n_2) = \sum_{c \mid n_1 n_2} f(c) = \sum_{d_1 \mid n_1}\sum_{d_2 \mid n_2} f(d_1 d_2).$$
Mivel $d_1 \mid n_1$, $d_2 \mid n_2$ és $(n_1, n_2) = 1$, ezért $(d_1, d_2) = 1$, így $f(d_1 d_2) = f(d_1) f(d_2)$, és
$$g(n_1 n_2) = \sum_{d_1 \mid n_1}\sum_{d_2 \mid n_2} f(d_1)f(d_2) = \left(\sum_{d_1 \mid n_1} f(d_1)\right)\left(\sum_{d_2 \mid n_2} f(d_2)\right) = g(n_1)g(n_2). \ \blacksquare$$

(Megjegyezzük, hogy a $d$ és $\sigma$ multiplikativitása is következik ebből a tételből: $d(n) = \sum_{d \mid n} 1$ és $\sigma(n) = \sum_{d \mid n} d$, és az $f(n) = 1$, illetve $f(n) = n$ függvények multiplikatívak.)

A következő tétel fontos és hasznos példa arra, hogyan határozható meg egy összegzési függvény explicit képlettel. Később, a 20.4. Tétel bizonyításában is használjuk.

> **17.22. Tétel.** Minden $n$ pozitív egészre
> $$\sum_{d \mid n} \varphi(d) = n.$$

**Példa.** $n = 12$: az osztók $1, 2, 3, 4, 6, 12$, és $\varphi(1) + \varphi(2) + \varphi(3) + \varphi(4) + \varphi(6) + \varphi(12) = 1 + 1 + 2 + 2 + 2 + 4 = 12$.

*Bizonyítás.* A $\varphi$ multiplikatív, így a 17.21. Tétel szerint a $g(n) = \sum_{d \mid n}\varphi(d)$ függvény is az. Ha tehát $n = p_1^{\alpha_1}\cdots p_r^{\alpha_r}$, akkor
$$g(n) = g(p_1^{\alpha_1}) \cdots g(p_r^{\alpha_r}). \qquad (17.11)$$
Egy prímhatványra:
$$g(p^\alpha) = \varphi(1) + \varphi(p) + \varphi(p^2) + \dots + \varphi(p^\alpha) = 1 + (p - 1) + (p^2 - p) + \dots + (p^\alpha - p^{\alpha-1}) = p^\alpha,$$
mert az összeg „teleszkópos”. Ezt (17.11)-be írva $g(n) = p_1^{\alpha_1} \cdots p_r^{\alpha_r} = n$. $\blacksquare$

::: kiegeszites
**Kiegészítés: egy leszámlálásos bizonyítás.** Tekintsük az
$$\frac{1}{n}, \frac{2}{n}, \dots, \frac{n}{n}$$
törteket, és hozzuk mindegyiket legegyszerűbb alakra. Mindegyik $\frac{a}{d}$ alakú lesz, ahol $d \mid n$, $1 \le a \le d$ és $(a, d) = 1$; és megfordítva, minden ilyen $\frac{a}{d}$ tört pontosan egyszer fordul elő (mint $\frac{a \cdot n/d}{n}$). Egy rögzített $d \mid n$ nevezőhöz pontosan $\varphi(d)$ ilyen számláló tartozik. Az $n$ darab törtet a nevezőjük szerint csoportosítva: $n = \sum_{d \mid n}\varphi(d)$. (Például $n = 6$-ra: $\frac{1}{6}, \frac{1}{3}, \frac{1}{2}, \frac{2}{3}, \frac{5}{6}, \frac{1}{1}$ — a nevezők $6, 3, 2, 3, 6, 1$, és $\varphi(6) + \varphi(3) + \varphi(2) + \varphi(1) = 2 + 2 + 1 + 1 = 6$.) $\blacksquare$
:::

### A Möbius-féle megfordítási formula

Fontos ismerni a **Möbius-féle megfordítási formulát** is: ha ismerjük egy függvény összegzési függvényét, abból visszakaphatjuk magát a függvényt.

> **17.23. Tétel (Möbius-féle megfordítás).** Legyen $f(n)$ számelméleti függvény, és
> $$g(n) = \sum_{d \mid n} f(d).$$
> Ekkor $g$-ből $f$ a következő képlettel határozható meg:
> $$f(n) = \sum_{d \mid n} \mu(d)\, g\!\left(\frac{n}{d}\right).$$

*Bizonyítás.* Először kiszámoljuk a $\mu$ összegzési függvényét. A $\mu$ multiplikatív, így a 17.21. Tétel szerint $\delta(n) = \sum_{d \mid n}\mu(d)$ is az. Prímhatványra ($\alpha \ge 1$):
$$\delta(p^\alpha) = \mu(1) + \mu(p) + \mu(p^2) + \dots + \mu(p^\alpha) = 1 - 1 + 0 + \dots + 0 = 0.$$
Tehát
$$\sum_{d \mid n}\mu(d) = \delta(n) = \begin{cases} 1, & \text{ha } n = 1, \\ 0, & \text{ha } n > 1. \end{cases}$$
Ezt felhasználva:
$$\sum_{d \mid n}\mu(d)\, g\!\left(\frac{n}{d}\right) = \sum_{d \mid n}\mu(d)\sum_{d' \mid \frac{n}{d}} f(d') = \sum_{d' \mid n} f(d') \sum_{d \mid \frac{n}{d'}} \mu(d) = \sum_{d' \mid n} f(d')\,\delta\!\left(\frac{n}{d'}\right) = f(n).$$
A második lépésben az összegzés sorrendjét cseréltük fel: mindkét kettős összeg pontosan azokon a $(d, d')$ párokon fut végig, amelyekre $dd' \mid n$. Az utolsó lépésben csak a $d' = n$ tag marad meg. $\blacksquare$

**Példa.** A 17.22. Tétel szerint a $\varphi$ összegzési függvénye $g(n) = n$. A megfordítási formula szerint tehát
$$\varphi(n) = \sum_{d \mid n}\mu(d)\frac{n}{d}.$$
Ha $n = p_1^{\alpha_1} \cdots p_r^{\alpha_r}$, akkor csak a négyzetmentes $d$-k (a $p_i$-k különböző részszorzatai) adnak nem nulla tagot, és
$$\varphi(n) = n\left(1 - \sum_i \frac{1}{p_i} + \sum_{i < j}\frac{1}{p_i p_j} - \dots\right) = n\prod_{i=1}^r\left(1 - \frac{1}{p_i}\right)$$
— ez a 17.18. Tétel egy újabb bizonyítása (lényegében a logikai szita formulája).

## 18. Tökéletes számok

A tökéletes számok definíciója már Eukleidész *Elemek* című művében (IX. könyv) felbukkan; az *Elemek* első angol nyelvű kiadását Sir Henry Billingsley készítette 1570-ben.

> **18.1. Definíció.** Az $n$ pozitív egész **tökéletes szám**, ha pozitív osztóinak összege a szám kétszerese:
> $$\sigma(n) = 2n.$$

Ez ugyanaz, mint hogy a szám *önmagánál kisebb* osztóinak összege éppen önmaga. Tökéletes szám például a $6, 28, 496, 8128$. Az első kettőre ellenőrizzük:
$$2 \cdot 6 = 1 + 2 + 3 + 6, \qquad 2 \cdot 28 = 1 + 2 + 4 + 7 + 14 + 28.$$
A sor folytatható: az első 48 (páros) tökéletes szám éppen a $2^{p-1}(2^p - 1)$ alakú számok azokra a $p$ prímekre, amelyekre $2^p - 1$ Mersenne-prím, nevezetesen
$$p = 2, 3, 5, 7, 13, 17, 19, 31, 61, 89, 107, 127, 521, 607, 1279, 2203, 2281, 3217, 4253, 4423, 9689, 9941, 11213, 19937,$$
$$21701, 23209, 44497, 86243, 110503, 132049, 216091, 756839, 859433, 1257787, 1398269, 2976221, 3021377,$$
$$6972593, 13466917, 20996011, 24036583, 25964951, 30402457, 32582657, 37156667, 42643801, 43112609, 57885161.$$
(Ez az OEIS-ben az A000043 sorozat. Azóta négy további Mersenne-prímet találtak; a legutóbbi a 2. fejezetben említett $2^{136\,279\,841} - 1$.)

A következőt már Eukleidész is tudta:

> **18.2. Tétel (Eukleidész).** Ha $2^p - 1$ Mersenne-prím, akkor $2^{p-1}(2^p - 1)$ tökéletes szám.

*Bizonyítás.* Legyen $q = 2^p - 1$ (prím) és $m = 2^{p-1} q$; ez a kanonikus alak. A $\sigma$ explicit képlete szerint
$$\sigma(m) = \frac{2^p - 1}{2 - 1} \cdot \frac{q^2 - 1}{q - 1} = (2^p - 1)(q + 1) = (2^p - 1) \cdot 2^p = 2 \cdot 2^{p-1}(2^p - 1) = 2m. \ \blacksquare$$

Ennél azonban több is mondható. Ibn al-Hajszam azt sejtette, hogy *minden* páros tökéletes szám ilyen alakú. Ezt Euler bizonyította be a XVIII. században (a bizonyítás csak halála után, 1849-ben jelent meg):

> **18.3. Tétel (Euler).** Minden páros tökéletes szám $2^{p-1}(2^p - 1)$ alakú, ahol $2^p - 1$ Mersenne-prím.

(Emlékeztetünk: ha $2^p - 1$ prím, akkor a 2.21. Feladat szerint $p$ is szükségképpen prím.)

*Bizonyítás.* Legyen $m$ páros tökéletes szám, és írjuk $m = 2^\alpha \cdot b$ alakba, ahol $b$ páratlan és $\alpha \ge 1$. Mivel $\sigma$ multiplikatív és $(2^\alpha, b) = 1$:
$$\sigma(m) = \sigma(2^\alpha)\sigma(b) = (2^{\alpha+1} - 1)\sigma(b).$$
Másrészt $m$ tökéletes, így $\sigma(m) = 2m = 2^{\alpha+1} b$. Tehát
$$2^{\alpha+1} b = (2^{\alpha+1} - 1)\sigma(b), \qquad \frac{b}{\sigma(b)} = \frac{2^{\alpha+1} - 1}{2^{\alpha+1}}.$$
A jobb oldali tört nem egyszerűsíthető (a számláló páratlan, a nevező kettőhatvány), ezért
$$b = (2^{\alpha+1} - 1)c, \qquad \sigma(b) = 2^{\alpha+1} c$$
alkalmas $c$ pozitív egésszel. Ha $c > 1$ volna, akkor $b$-nek az $1$, a $c$ és a $b$ három különböző osztója volna ($c < b$, mert $2^{\alpha+1} - 1 \ge 3$), így
$$\sigma(b) \ge 1 + c + b = 1 + c + (2^{\alpha+1} - 1)c = 2^{\alpha+1}c + 1 > \sigma(b),$$
ellentmondás. Tehát $c = 1$, azaz $b = 2^{\alpha+1} - 1$ és $\sigma(b) = 2^{\alpha+1} = b + 1$. Egy $b > 1$ számra $\sigma(b) = b + 1$ pontosan akkor teljesül, ha $b$-nek csak az $1$ és önmaga osztója, vagyis ha **$b$ prím**. Így $2^{\alpha+1} - 1$ Mersenne-prím, $\alpha + 1$ prím (2.21. Feladat), és $p = \alpha + 1$ jelöléssel
$$m = 2^\alpha b = 2^{p-1}(2^p - 1). \ \blacksquare$$

A páros tökéletes számok tehát pontosan megfelelnek a Mersenne-prímeknek. A páratlanokról szinte semmit sem tudunk: máig egyetlen páratlan tökéletes számot sem találtak (számítógépes vizsgálatok szerint ha létezik, nagyobb $10^{1500}$-nál), ezért úgy gondoljuk, hogy a következő sejtés igaz:

> **18.4. Sejtés.** Nem létezik páratlan tökéletes szám.

### Barátságos számok

A tökéletes számokhoz kapcsolódó fogalom a barátságos számpár.

> **18.5. Definíció.** Az $a \ne b$ pozitív egészek **barátságos számpárt** alkotnak, ha az egyik szám önmagánál kisebb osztóinak összege éppen a másik, és viszont:
> $$\sigma(a) - a = b, \qquad \sigma(b) - b = a.$$

(Ezzel ekvivalens: $\sigma(a) = \sigma(b) = a + b$.) Például a $220$ és a $284$ barátságos számok: a $220$ valódi osztói $1, 2, 4, 5, 10, 11, 20, 22, 44, 55, 110$, ezek összege $284$; a $284$ valódi osztói $1, 2, 4, 71, 142$, ezek összege $220$. Az első tíz barátságos számpár (a kisebbik tag szerint rendezve):
$$(220, 284), \ (1184, 1210), \ (2620, 2924), \ (5020, 5564), \ (6232, 6368),$$
$$(10744, 10856), \ (12285, 14595), \ (17296, 18416), \ (63020, 76084), \ (66928, 66992).$$
(Ez az OEIS A259180 sorozata.)

Szábit ibn Kurra (meghalt 901-ben) a IX. században megadta barátságos számpárok egy paraméteres alakját. Ezzel persze nem sorolta fel az összes barátságos számpárt (az $(1184, 1210)$ például nem ilyen alakú), de azt könnyű belátni, hogy az ilyen alakú számok valóban barátságosak.

> **18.6. Tétel (Szábit ibn Kurra).** Legyen $n \ge 2$ egész, és
> $$x = 3 \cdot 2^n - 1, \qquad y = 3 \cdot 2^{n-1} - 1, \qquad z = 9 \cdot 2^{2n-1} - 1.$$
> Ha $x$, $y$ és $z$ prímek, akkor az
> $$a = 2^n \cdot x \cdot y \qquad \text{és} \qquad b = 2^n \cdot z$$
> számok barátságos számpárt alkotnak.

A bizonyítást a jegyzet az olvasóra bízza.

::: kiegeszites
**Kiegészítés: a 18.6. Tétel bizonyítása.** $x$, $y$, $z$ páratlan prímek, és $x \ne y$, így $a = 2^n x y$ és $b = 2^n z$ kanonikus alakok. A $\sigma$ multiplikativitása szerint
$$\sigma(a) = (2^{n+1} - 1)(x + 1)(y + 1) = (2^{n+1} - 1) \cdot 3 \cdot 2^n \cdot 3 \cdot 2^{n-1} = 9 \cdot 2^{2n-1}(2^{n+1} - 1),$$
$$\sigma(b) = (2^{n+1} - 1)(z + 1) = 9 \cdot 2^{2n-1}(2^{n+1} - 1).$$
Tehát $\sigma(a) = \sigma(b)$. Már csak azt kell belátni, hogy ez $a + b$:
$$a + b = 2^n(xy + z) = 2^n\big((3 \cdot 2^n - 1)(3 \cdot 2^{n-1} - 1) + 9 \cdot 2^{2n-1} - 1\big) = 2^n\big(9 \cdot 2^{2n} - 9 \cdot 2^{n-1}\big) = 9 \cdot 2^{2n-1}(2^{n+1} - 1).$$
(A belső zárójelben $9 \cdot 2^{2n-1} - 3 \cdot 2^n - 3 \cdot 2^{n-1} + 1 + 9 \cdot 2^{2n-1} - 1 = 9 \cdot 2^{2n} - 9 \cdot 2^{n-1}$.) $\blacksquare$

$n = 2$-re $x = 11$, $y = 5$, $z = 71$ prímek, és $a = 4 \cdot 55 = 220$, $b = 4 \cdot 71 = 284$. $n = 4$-re ($x = 47$, $y = 23$, $z = 1151$) a $(17296, 18416)$ párt kapjuk (ezt Fermat találta meg 1636-ban), $n = 7$-re ($x = 383$, $y = 191$, $z = 73727$) pedig a $(9363584, 9437056)$ párt (Descartes, 1638). Más $n \le 7$ esetén a három szám valamelyike összetett.
:::

Érdemes még megemlíteni a **hiányos** és a **bővelkedő** számok fogalmát:

> **18.7. Definíció.** Az $n$ pozitív egész **hiányos**, ha $\sigma(n) < 2n$, és **bővelkedő**, ha $\sigma(n) > 2n$.

Például a prímek és a prímhatványok mind hiányosak ($\sigma(p^k) = \frac{p^{k+1} - 1}{p - 1} < 2p^k$), a $12$ bővelkedő ($\sigma(12) = 28 > 24$). A legkisebb páratlan bővelkedő szám a $945$ ($\sigma(945) = 1920 > 1890$). A hiányos és bővelkedő számoknak sok érdekes tulajdonsága van, de ezek vizsgálata túlmegy könyvünk keretein.

## Az V. rész összefoglalása

- **Multiplikatív** függvény: $f(ab) = f(a)f(b)$, ha $(a, b) = 1$; ekkor $f(1) = 1$, és $f$-et a prímhatványokon felvett értékei meghatározzák. **Additív:** $g(ab) = g(a) + g(b)$, ha $(a, b) = 1$.
- **Nevezetes függvények** ($n = \prod p_i^{\alpha_i}$): $d(n) = \prod(\alpha_i + 1)$; $\sigma(n) = \prod \frac{p_i^{\alpha_i + 1} - 1}{p_i - 1}$; $\varphi(n) = n\prod(1 - \frac{1}{p_i})$; $\mu(n) = (-1)^r$ négyzetmentes $n$-re, különben $0$; $\omega(n) = r$; $\Omega(n) = \sum \alpha_i$. Az első négy multiplikatív, $\omega$ additív, $\Omega$ teljesen additív.
- **Összegzési függvény:** ha $f$ multiplikatív, akkor $\sum_{d \mid n} f(d)$ is az. Speciálisan $\sum_{d \mid n}\varphi(d) = n$ és $\sum_{d \mid n}\mu(d) = [n = 1]$.
- **Möbius-féle megfordítás:** $g(n) = \sum_{d \mid n} f(d) \iff f(n) = \sum_{d \mid n}\mu(d)\,g(n/d)$.
- **Tökéletes számok:** $\sigma(n) = 2n$. Eukleidész–Euler: a páros tökéletes számok pontosan a $2^{p-1}(2^p - 1)$ számok, ahol $2^p - 1$ Mersenne-prím. Páratlan tökéletes szám nem ismert. **Barátságos számpár:** $\sigma(a) = \sigma(b) = a + b$; Szábit ibn Kurra képlete.

## Feladatok az V. részhez

1. Számítsuk ki: $d(360)$, $\sigma(360)$, $\varphi(360)$, $\mu(360)$, $\omega(360)$, $\Omega(360)$.
2. Bizonyítsuk be, hogy $d(n)$ pontosan akkor páratlan, ha $n$ négyzetszám.
3. Melyik a legkisebb pozitív egész, amelynek pontosan $9$ pozitív osztója van?
4. Határozzuk meg az összes olyan $n$-et, amelyre $\varphi(n) = 12$.
5. Bizonyítsuk be, hogy a $\varphi(n) = 14$ egyenletnek nincs megoldása.
6. Bizonyítsuk be, hogy $\sigma(n)$ pontosan akkor páratlan, ha $n$ négyzetszám vagy egy négyzetszám kétszerese.
7. Bizonyítsuk be, hogy $\sum_{d \mid n}\frac{\mu(d)}{d} = \frac{\varphi(n)}{n}$.
8. Bizonyítsuk be, hogy minden páros tökéletes szám háromszögszám, azaz $\frac{k(k+1)}{2}$ alakú.

### Megoldási útmutatók

1. $360 = 2^3 \cdot 3^2 \cdot 5$: $d = 4 \cdot 3 \cdot 2 = 24$; $\sigma = 15 \cdot 13 \cdot 6 = 1170$; $\varphi = 360 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{4}{5} = 96$; $\mu = 0$; $\omega = 3$; $\Omega = 6$.
2. $d(n) = \prod(\alpha_i + 1)$ pontosan akkor páratlan, ha minden $\alpha_i$ páros. (Szemléletesen: az osztók $d \leftrightarrow n/d$ párokba állíthatók, és csak $d = \sqrt{n}$ esetén esik egybe a pár két tagja.)
3. $d(n) = 9 = 9$ vagy $3 \cdot 3$, így $n = p^8$ vagy $n = p^2 q^2$. A legkisebb: $2^2 \cdot 3^2 = 36$ (a $2^8 = 256$ nagyobb).
4. Ha $p^\alpha \| n$, akkor $p^{\alpha - 1}(p - 1) \mid 12$, ezért $p - 1 \mid 12$, azaz $p \in \{2, 3, 5, 7, 13\}$, és a kitevők is erősen korlátozottak. Az esetek végignézésével: $n \in \{13, 21, 26, 28, 36, 42\}$.
5. Ha $p \mid n$ páratlan prím, akkor $p - 1 \mid 14$, tehát $p - 1 \in \{2, 14\}$, $p \in \{3\}$ (a $15$ nem prím). Ha $3 \mid n$, akkor $\varphi(n)$ tényezői között $\varphi(3^\alpha) = 2 \cdot 3^{\alpha-1}$ szerepel; mivel $9 \nmid 14$ és $3 \nmid 14$, $\alpha = 1$, és $n = 3 \cdot 2^k$ vagy $2^k$, amelyekre $\varphi(n)$ kettőhatvány — nem $14$.
6. $\sigma(2^k) = 2^{k+1} - 1$ mindig páratlan. Páratlan $p$-re $\sigma(p^k) = 1 + p + \dots + p^k$ pontosan akkor páratlan, ha a $k + 1$ páratlan tag száma páratlan, azaz $k$ páros. Tehát $\sigma(n)$ pontosan akkor páratlan, ha minden páratlan prím kitevője páros: $n = 2^k m^2$, ami $k$ paritásától függően négyzetszám vagy négyzetszám kétszerese.
7. A Möbius-megfordítás példájában láttuk, hogy $\varphi(n) = \sum_{d \mid n}\mu(d)\frac{n}{d}$; osszunk $n$-nel.
8. $2^{p-1}(2^p - 1) = \frac{(2^p - 1) \cdot 2^p}{2}$, tehát $k = 2^p - 1$-gyel háromszögszám.

---

# VI. RÉSZ: REND, PRIMITÍV GYÖK, DISZKRÉT LOGARITMUS

A hatodik részben a hatványok maradékait vizsgáljuk közelebbről. Az Euler–Fermat-tétel szerint $a^{\varphi(m)} \equiv 1$, de gyakran már egy kisebb kitevő is $1$-et ad; a legkisebb ilyen kitevő a **rend**. Azok a számok, amelyeknek a rendje a lehető legnagyobb, a **primitív gyökök**: ezek hatványai az összes redukált maradékosztályt befutják, így segítségükkel a szorzás összeadássá alakítható — ez a **diszkrét logaritmus**. A rész végén megnézzük, hogyan épül erre a modern kriptográfia egyik alapköve, a Diffie–Hellman-kulcscsere.

## 19. Rend

Az Euler–Fermat-tételből következik, hogy ha $(a, m) = 1$, akkor van olyan $t$ pozitív egész, amelyre
$$a^t \equiv 1 \pmod m, \qquad (19.1)$$
például $t = \varphi(m)$ vagy $t = k\varphi(m)$. Az azonban egyáltalán nem biztos, hogy a legkisebb ilyen pozitív $t$ éppen $\varphi(m)$: az esetek többségében van $\varphi(m)$-nél kisebb pozitív $t$ is.

> **19.1. Definíció.** Legyen $(a, m) = 1$. Az $a$ **rendje** modulo $m$ az a legkisebb $t$ pozitív egész, amelyre
> $$a^t \equiv 1 \pmod m,$$
> vagyis $a^t \equiv 1$, de $0 < i < t$ esetén $a^i \not\equiv 1 \pmod m$. Jelölése: $o_m(a)$ (olvasva: „ordó $a$ modulo $m$”).

**Példa.** $o_{10}(3) = 4$, mert
$$3^1 \equiv 3, \quad 3^2 \equiv 9, \quad 3^3 \equiv 7, \quad 3^4 \equiv 1 \pmod{10}.$$

Modulo $7$ az $a$ hatványainak maradékai (a sor végén az $a$ rendje):

| $a$ | $a^1$ | $a^2$ | $a^3$ | $a^4$ | $a^5$ | $a^6$ | $o_7(a)$ |
|---|---|---|---|---|---|---|---|
| $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ |
| $2$ | $2$ | $4$ | $1$ | $2$ | $4$ | $1$ | $3$ |
| $3$ | $3$ | $2$ | $6$ | $4$ | $5$ | $1$ | $6$ |
| $4$ | $4$ | $2$ | $1$ | $4$ | $2$ | $1$ | $3$ |
| $5$ | $5$ | $4$ | $6$ | $2$ | $3$ | $1$ | $6$ |
| $6$ | $6$ | $1$ | $6$ | $1$ | $6$ | $1$ | $2$ |

Minden sorban a hatványok periodikusan ismétlődnek, és a periódus hossza éppen a rend; az első $1$-es helye adja meg a rendet. Modulo $17$ az $a = 1, 2, \dots, 16$ számok rendjei:

| $a$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $o_{17}(a)$ | $1$ | $8$ | $16$ | $4$ | $16$ | $16$ | $16$ | $8$ |

| $a$ | $9$ | $10$ | $11$ | $12$ | $13$ | $14$ | $15$ | $16$ |
|---|---|---|---|---|---|---|---|---|
| $o_{17}(a)$ | $8$ | $16$ | $16$ | $16$ | $4$ | $16$ | $8$ | $2$ |

Megfigyelhetjük, hogy minden rend osztója $\varphi(17) = 16$-nak. Ezt hamarosan bebizonyítjuk.

Az Euler–Fermat-tétel következménye:

> **19.2. Állítás.** Ha $(a, m) = 1$, akkor $o_m(a) \le \varphi(m)$.

A rend definíciójából világos:

> **19.3. Állítás.** Ha $(a, m) = (b, m) = 1$ és $a \equiv b \pmod m$, akkor $o_m(a) = o_m(b)$.

Ha $(a, m) > 1$, a rend nem létezik: legyen $d = (a, m) > 1$; ekkor $d \mid a^t$ minden $t \ge 1$-re, így $d \nmid a^t - 1$. Ha viszont $a^t \equiv 1 \pmod m$ volna, akkor $d \mid m \mid a^t - 1$ — ellentmondás.

### 19.1. A rend alaptulajdonságai

> **19.4. Tétel.** Legyen $(a, m) = 1$ és $t \in \mathbb{N}$. Ekkor
> $$a^t \equiv 1 \pmod m \iff o_m(a) \mid t.$$

*Bizonyítás.* Ha $o_m(a) \mid t$, azaz $t = o_m(a) \cdot x$, akkor
$$a^t = \left(a^{o_m(a)}\right)^x \equiv 1^x = 1 \pmod m.$$
Megfordítva, tegyük fel, hogy $a^t \equiv 1$. Osszuk el $t$-t maradékosan $o_m(a)$-val: $t = o_m(a)\, x + y$, ahol $0 \le y < o_m(a)$. Ekkor
$$1 \equiv a^t = \left(a^{o_m(a)}\right)^x a^y \equiv a^y \pmod m. \qquad (19.2)$$
De $y < o_m(a)$, és a rend a legkisebb *pozitív* kitevő, amelyre a hatvány $1$; így csak $y = 0$ lehet, vagyis $o_m(a) \mid t$. $\blacksquare$

> **19.5. Tétel.** Legyen $(a, m) = 1$ és $u, v \in \mathbb{N}$. Ekkor
> $$a^u \equiv a^v \pmod m \iff u \equiv v \pmod{o_m(a)}.$$

*Bizonyítás.* Szimmetria miatt feltehetjük, hogy $u \ge v$. Mivel $(a, m) = 1$, a kongruenciát $a^v$-vel egyszerűsíthetjük (6.2. Tétel), majd a 19.4. Tételt alkalmazzuk:
$$a^u \equiv a^v \iff a^{u-v} \equiv 1 \iff o_m(a) \mid u - v \iff u \equiv v \pmod{o_m(a)}. \ \blacksquare$$

A 19.5. Tétel azt mondja, hogy **a hatványok kitevőjével modulo a rend számolhatunk** — ez pontosítja a 7. fejezet „a kitevőt modulo $\varphi(m)$ redukálhatjuk” megjegyzését.

> **19.6. Tétel.** Ha $(a, m) = 1$, akkor $o_m(a) \mid \varphi(m)$.

*Bizonyítás.* Az Euler–Fermat-tétel szerint $a^{\varphi(m)} \equiv 1$, így a 19.4. Tétel szerint $o_m(a) \mid \varphi(m)$. $\blacksquare$

**Kidolgozott példa.** Számítsuk ki $13$ rendjét modulo $59$! Mivel $(13, 59) = 1$, a rend létezik, és a 19.6. Tétel szerint osztója $\varphi(59) = 58 = 2 \cdot 29$-nek:
$$o_{59}(13) \in \{1, 2, 29, 58\}.$$
Végignézzük az eseteket: $13^1 \not\equiv 1$; $13^2 = 169 = 3 \cdot 59 - 8 \equiv -8 \not\equiv 1$. A $13^{29}$-et ismételt négyzetre emeléssel számoljuk ki:
$$13^4 \equiv (-8)^2 = 64 \equiv 5, \quad 13^8 \equiv 5^2 = 25, \quad 13^{16} \equiv 25^2 = 625 = 10 \cdot 59 + 35 \equiv -24 \pmod{59},$$
és $29 = 16 + 8 + 4 + 1$ miatt
$$13^{29} = 13^{16} \cdot 13^8 \cdot 13^4 \cdot 13 \equiv (-24) \cdot 25 \cdot 5 \cdot 13 \equiv -1 \not\equiv 1 \pmod{59}.$$
(Részletesen: $(-24) \cdot 25 = -600 \equiv -600 + 590 = -10$; $-10 \cdot 5 = -50 \equiv 9$; $9 \cdot 13 = 117 = 2 \cdot 59 - 1 \equiv -1$.) Kizárásos alapon $o_{59}(13) = 58$.

## 20. Primitív gyökök

A primitív gyököket Gauss definiálta a *Disquisitiones Arithmeticae* (1801) című művében. A fogalomnak ma is nagy jelentősége van a kriptográfiai alkalmazások miatt, de a maradékosztályok gyors összeszorzásánál is hasznos; erről a következő fejezetekben lesz szó.

> **20.1. Definíció.** A $g$ számot **primitív gyöknek** nevezzük modulo $m$, ha
> $$o_m(g) = \varphi(m).$$

Egy szám primitív gyök voltát tehát úgy ellenőrizzük, hogy kiszámoljuk a rendjét. Az előző fejezet modulo $17$ táblázata szerint a rend $8$ esetben maximális ($= \varphi(17) = 16$), így modulo $17$ összesen $8$ primitív gyök van:
$$3, 5, 6, 7, 10, 11, 12, 14.$$
Modulo $7$ a primitív gyökök a $3$ és az $5$.

**Hogyan ellenőrizzük gyorsan?** Ha $(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1$-et fölösleges ellenőrizni (az Euler–Fermat-tétel miatt igaz). Mivel $o_m(a) \mid \varphi(m)$, csak azt kell ellenőrizni, hogy $\varphi(m)$ valódi osztóira $a^d \not\equiv 1$. Sőt, ennél kevesebb is elég:

::: kiegeszites
**Kiegészítés: elég a maximális valódi osztókat ellenőrizni.** Legyen $(a, m) = 1$, és $q_1, \dots, q_s$ a $\varphi(m)$ különböző prímosztói. Ekkor $a$ pontosan akkor primitív gyök, ha
$$a^{\varphi(m)/q_i} \not\equiv 1 \pmod m \qquad (i = 1, \dots, s).$$
Valóban, ha $t = o_m(a) < \varphi(m)$, akkor $t$ valódi osztója $\varphi(m)$-nek, így $\frac{\varphi(m)}{t} > 1$-nek van egy $q_i$ prímosztója; ekkor $t \mid \frac{\varphi(m)}{q_i}$, és a 19.4. Tétel szerint $a^{\varphi(m)/q_i} \equiv 1$. Például modulo $23$ ($\varphi(23) = 22 = 2 \cdot 11$) az $5$ primitív gyök, mert $5^{11} \equiv -1 \not\equiv 1$ és $5^2 = 25 \equiv 2 \not\equiv 1 \pmod{23}$.
:::

> **20.2. Tétel.** A $g$ szám pontosan akkor primitív gyök modulo $m$, ha az
> $$1, g, g^2, \dots, g^{\varphi(m) - 1}$$
> számok redukált maradékrendszert alkotnak modulo $m$.

*Bizonyítás.* Tegyük fel, hogy $g$ primitív gyök. A 6.11. Tétel szerint három dolgot kell ellenőrizni. A számok száma $\varphi(m)$, és $(g, m) = 1$ miatt mindegyik relatív prím $m$-hez. Páronként inkongruensek: ha $0 \le i < j \le \varphi(m) - 1$ és $g^i \equiv g^j$, akkor a 19.5. Tétel szerint $i \equiv j \pmod{\varphi(m)}$, ami ezekre az $i, j$-kre csak $i = j$ esetén lehet.

Megfordítva, ha a fenti hatványok redukált maradékrendszert alkotnak, akkor $(g, m) = 1$, tehát $o_m(g)$ létezik, és $o_m(g) \le \varphi(m)$. A $g, g^2, \dots, g^{\varphi(m)-1}$ hatványok egyike sem lehet $1$-gyel kongruens, hiszen az $1 = g^0$ is a rendszerben van, és az elemek páronként inkongruensek. Tehát $o_m(g) = \varphi(m)$. $\blacksquare$

**Ez a primitív gyökök lényege:** egy primitív gyök hatványai *minden* redukált maradékosztályt pontosan egyszer előállítanak. Modulo $7$ például a $3$ hatványai: $3^0 = 1$, $3^1 = 3$, $3^2 \equiv 2$, $3^3 \equiv 6$, $3^4 \equiv 4$, $3^5 \equiv 5$ — mind a hat nem nulla maradék.

### Mely modulusokra létezik primitív gyök?

> **20.3. Tétel.** Az $m > 1$ modulusra nézve pontosan akkor létezik primitív gyök, ha
> $$m = 2, \quad m = 4, \quad m = p^\alpha \quad \text{vagy} \quad m = 2p^\alpha,$$
> ahol $p$ páratlan prím és $\alpha \ge 1$ egész.

Például $m \le 30$ esetén primitív gyök pontosan a $2, 3, 4, 5, 6, 7, 9, 10, 11, 13, 14, 17, 18, 19, 22, 23, 25, 26, 27, 29$ modulusokra létezik; a $8, 12, 15, 16, 20, 21, 24, 28, 30$ modulusokra nem. Modulo $8$ például minden páratlan szám négyzete $1$, tehát minden redukált maradékosztály rendje legfeljebb $2 < \varphi(8) = 4$.

A tételt teljes általánosságában nem bizonyítjuk. Először (a jegyzet vázlatos gondolatmenetét pontosítva) belátjuk, hogy ha $m$ nem ilyen alakú, akkor nincs primitív gyök. A másik irányt — hogy ilyen alakú $m$-re van — csak abban az esetben látjuk be, amikor $m$ prím; ez a 20.4. Tétel következménye lesz.

*A „csak akkor” irány bizonyítása.* Ha $m$ nem a felsorolt alakok egyike, akkor két eset lehetséges.

**A) $m = 2^k$, $k \ge 3$.** Megmutatjuk, hogy minden páratlan $a$-ra $a^{2^{k-2}} \equiv 1 \pmod{2^k}$. Mivel $\varphi(2^k) = 2^{k-1}$, ebből következik, hogy minden rend legfeljebb $\frac{\varphi(m)}{2}$. Indukció $k$ szerint: $k = 3$-ra $a^2 \equiv 1 \pmod 8$, hiszen $a^2 - 1 = (a - 1)(a + 1)$ két szomszédos páros szám szorzata, így osztható $8$-cal. Ha $a^{2^{k-2}} = 1 + 2^k s$, akkor négyzetre emelve
$$a^{2^{k-1}} = 1 + 2^{k+1}s + 2^{2k}s^2 \equiv 1 \pmod{2^{k+1}}.$$

**B) $m = uv$, ahol $(u, v) = 1$ és $u, v > 2$.** (Ilyen felbontás van, ha $m$-nek két különböző páratlan prímosztója van — legyen $u$ az egyik prímhatvány-tényező —, vagy ha $m = 2^k p^\alpha$ alakú $k \ge 2$-vel: $u = 2^k$, $v = p^\alpha$.) Ekkor $\varphi(u)$ és $\varphi(v)$ páros (mert $u, v > 2$ — ez a képletből látszik), így legkisebb közös többszörösükre
$$L = [\varphi(u), \varphi(v)] \le \frac{\varphi(u)\varphi(v)}{2} = \frac{\varphi(m)}{2}.$$
Ha $(a, m) = 1$, akkor az Euler–Fermat-tétel szerint $a^{\varphi(u)} \equiv 1 \pmod u$ és $a^{\varphi(v)} \equiv 1 \pmod v$, így (mivel $L$ mindkettőnek többszöröse) $a^L \equiv 1 \pmod u$ és $\pmod v$, és a 13. fejezet lemmája szerint $a^L \equiv 1 \pmod m$. Tehát minden rend legfeljebb $L < \varphi(m)$.

Mindkét esetben nincs olyan elem, amelynek rendje $\varphi(m)$, tehát nincs primitív gyök. (Végül vegyük észre, hogy minden $m$, amely nem $2, 4, p^\alpha, 2p^\alpha$ alakú, valóban az A) vagy a B) esetbe tartozik: ha van két különböző páratlan prímosztója, B); ha egy páratlan prímosztója van, akkor $m = 2^k p^\alpha$ és $k \ge 2$, ez is B); ha nincs páratlan prímosztója, akkor $m = 2^k$ és $k \ge 3$, ez A).) $\blacksquare$

### Az adott rendű elemek száma prím modulus esetén

A következő tétel pontosan megadja, hány elemnek van adott rendje modulo $p$.

> **20.4. Tétel.** Legyen $p$ prím, és jelölje $h(d)$ az $1, 2, \dots, p - 1$ számok közül azoknak a számát, amelyek rendje modulo $p$ éppen $d$. Ekkor $h(d) = 0$, ha $d \nmid p - 1$, továbbá
> $$h(d) = \varphi(d), \qquad \text{ha } d \mid p - 1.$$

**Példa.** Modulo $13$ ($p - 1 = 12$): $h(1) = 1$, $h(2) = 1$, $h(3) = 2$, $h(4) = 2$, $h(6) = 2$, $h(12) = 4$ — éppen $\varphi(1), \varphi(2), \varphi(3), \varphi(4), \varphi(6), \varphi(12)$, és összegük $12$.

A tételből következik a 20.3. Tétel speciális esete: **ha $m = p$ prím, akkor létezik primitív gyök**, hiszen $h(p - 1) = \varphi(p - 1) \ge 1$. Sőt, ekkor a primitív gyökök száma (modulo $p$) éppen $\varphi(p - 1) = \varphi(\varphi(p))$.

*Bizonyítás.* Mivel minden rend osztója $\varphi(p) = p - 1$-nek, $h(d) = 0$, ha $d \nmid p - 1$. Minden $x \in \{1, \dots, p - 1\}$-nek pontosan egy rendje van, ezért
$$\sum_{d \mid p - 1} h(d) = p - 1. \qquad (20.1)$$

**Állítás: $h(d) \le \varphi(d)$ minden $d \mid p - 1$-re.** Ha nincs $d$-edrendű elem, akkor $h(d) = 0 \le \varphi(d)$. Tegyük fel, hogy van egy $d$-edrendű $a$ elem. Az
$$x^d \equiv 1 \pmod p \qquad (20.2)$$
kongruenciának a fokszámtétel (14.4. Tétel) szerint legfeljebb $d$ megoldása van. Az $a^0, a^1, \dots, a^{d-1}$ hatványok páronként inkongruensek (19.5. Tétel), és mind megoldásai (20.2)-nek, hiszen $(a^t)^d = (a^d)^t \equiv 1$. Tehát (20.2) megoldásai *pontosan* ezek. Minden $d$-edrendű elem megoldása (20.2)-nek, így szükségképpen $a^t$ alakú valamely $0 \le t \le d - 1$-gyel. Melyik $a^t$-nek $d$ a rendje? A 19.4. Tétel szerint
$$(a^t)^x \equiv 1 \iff a^{tx} \equiv 1 \iff d \mid tx \iff \frac{d}{(t, d)} \mid x,$$
tehát $a^t$ rendje $\frac{d}{(t, d)}$, ami pontosan akkor $d$, ha $(t, d) = 1$. Ilyen $t$ a $0, 1, \dots, d - 1$ számok között $\varphi(d)$ darab van. Így ebben az esetben $h(d) = \varphi(d)$; összességében tehát mindig $h(d) \le \varphi(d)$.

**Befejezés.** (20.1)-et és a 17.22. Tételt ($\sum_{d \mid n}\varphi(d) = n$, amelyet itt 20.5. Lemmaként idézünk) felhasználva:
$$p - 1 = \sum_{d \mid p - 1} h(d) \le \sum_{d \mid p - 1}\varphi(d) = p - 1.$$
Itt egyenlőségnek kell állnia, ami csak úgy lehet, ha minden $d \mid p - 1$-re $h(d) = \varphi(d)$. $\blacksquare$

> **20.6. Tétel.** Legyen $p$ prím és $g$ primitív gyök modulo $p$.
>
> (i) A $g^i$ hatvány pontosan akkor primitív gyök, ha $(i, p - 1) = 1$.
>
> (ii) A páronként inkongruens primitív gyökök száma $\varphi(p - 1)$.

*Bizonyítás.* (i) A 20.4. Tétel bizonyításában látott módon $g^i$ rendje $\frac{p-1}{(i, p - 1)}$, ami pontosan akkor $p - 1$, ha $(i, p - 1) = 1$. (Másképp: $g^i$ primitív gyök $\iff$ $g^i, g^{2i}, \dots, g^{(p-1)i}$ redukált maradékrendszer modulo $p$ $\iff$ $i, 2i, \dots, (p - 1)i$ teljes maradékrendszer modulo $p - 1$ $\iff$ $(i, p - 1) = 1$.)

(ii) A 20.2. Tétel szerint minden redukált maradékosztály $g^i$ alakú pontosan egy $0 \le i \le p - 2$-vel, és (i) szerint közülük $\varphi(p - 1)$ primitív gyök. $\blacksquare$

**Példa.** Modulo $17$ a $3$ primitív gyök, és $(i, 16) = 1$ pontosan a páratlan $i$-kre; így a primitív gyökök $3^1, 3^3, 3^5, \dots, 3^{15}$, vagyis (kiszámolva) $3, 10, 5, 11, 14, 7, 12, 6$ — a táblázatból látott $8$ szám.

**Egy hasznos megjegyzés.** Ha $p$ páratlan prím és $g$ primitív gyök modulo $p$, akkor
$$g^{\frac{p-1}{2}} \equiv -1 \pmod p.$$
Valóban, a kis Fermat-tétel szerint $p \mid g^{p-1} - 1 = \left(g^{\frac{p-1}{2}} - 1\right)\left(g^{\frac{p-1}{2}} + 1\right)$, és az első tényezőt $p$ nem oszthatja, mert $g$ rendje $p - 1 > \frac{p-1}{2}$. Így $g^{\frac{p-1}{2} + a} \equiv -g^a \pmod p$ is teljesül: a hatványtáblázat második fele az első fele ellentettje. (Modulo $17$: $3^8 \equiv 16 \equiv -1$.)

## 21. Diszkrét logaritmus (index)

Gauss a logaritmusfüggvény moduláris megfelelőjét is megalkotta.

> **21.1. Definíció.** Legyen $p$ prím, $g$ primitív gyök modulo $p$, és $(a, p) = 1$. Az $a$ szám $g$ alapú **diszkrét logaritmusán** vagy **indexén** azt a $0 \le k \le p - 2$ egészet értjük, amelyre
> $$a \equiv g^k \pmod p.$$
> Jelölése: $k = \operatorname{ind}_g a$.

A definíció értelmes: a 20.2. Tétel szerint minden redukált maradékosztály pontosan egy ilyen $k$-val áll elő. Ha $a \equiv b \pmod p$, akkor nyilván $\operatorname{ind}_g a = \operatorname{ind}_g b$. A 19.5. Tétel szerint (hiszen $o_p(g) = p - 1$)
$$g^s \equiv g^t \pmod p \iff s \equiv t \pmod{p - 1}.$$
Ebből adódnak a logaritmusazonosságok megfelelői:

> **Tétel.** Ha $(a, p) = (b, p) = 1$, akkor
> $$\operatorname{ind}_g(ab) \equiv \operatorname{ind}_g a + \operatorname{ind}_g b \pmod{p - 1}, \qquad \operatorname{ind}_g(a^k) \equiv k \operatorname{ind}_g a \pmod{p - 1}.$$

*Bizonyítás.* $g^{\operatorname{ind} a + \operatorname{ind} b} = g^{\operatorname{ind} a}\, g^{\operatorname{ind} b} \equiv ab \equiv g^{\operatorname{ind}(ab)}$, és a kitevők a 19.5. Tétel szerint modulo $p - 1$ kongruensek. A második ugyanígy: $g^{k \operatorname{ind} a} \equiv a^k$. $\blacksquare$

A valós logaritmussal ellentétben azonban ha ábrázoljuk a diszkrét logaritmus függvényt, akkor a megszokott sima görbe helyett szabálytalanul szétszórt pontokat kapunk, amelyek eloszlása véletlenszerűnek tűnik. Modulo $31$ például a $g = 3$ primitív gyökkel $\operatorname{ind}_3 2 = 24$, $\operatorname{ind}_3 5 = 20$, $\operatorname{ind}_3 7 = 28$, $\operatorname{ind}_3 10 = 14$ — és valóban $24 + 20 = 44 \equiv 14 \pmod{30}$, ahogy $10 = 2 \cdot 5$ miatt lennie kell. Éppen ez a „véletlenszerűség” teszi a diszkrét logaritmust alkalmassá kriptográfiai célokra (22. fejezet).

**Hatvány- és indextáblázat modulo 13.** A $g = 2$ primitív gyök modulo $13$. A hatványtáblázat:

| $j$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $2^j \bmod 13$ | $1$ | $2$ | $4$ | $8$ | $3$ | $6$ | $12$ | $11$ | $9$ | $5$ | $10$ | $7$ |

Az indextáblázatot úgy kapjuk, hogy a moduláris hatványozás inverz műveletét végezzük, azaz a két sor szerepét felcseréljük (például mivel a hatványtáblázatban a $9$ alatt az $5$ áll, az indextáblázatban az $5$ alatt áll a $9$):

| $a$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $\operatorname{ind}_2 a$ | $0$ | $1$ | $4$ | $2$ | $9$ | $5$ | $11$ | $3$ | $8$ | $10$ | $7$ | $6$ |

### 21.1. Binom kongruenciák megoldása indextáblázattal

Az $x^k \equiv a$ alakú kongruenciákat **binom kongruenciáknak** nevezzük. Megoldásukat egy példán mutatjuk be.

**Példa.** Oldjuk meg az
$$5x^{22} \equiv 6 \pmod{13}$$
kongruenciát! Először megnézzük, hogy $x \equiv 0$ megoldás-e: nem ($0 \not\equiv 6$). Elég tehát az $(x, 13) = 1$ esetet vizsgálni; ekkor $\operatorname{ind} x$ létezik, és nyugodtan írhatunk minden számot a primitív gyök hatványaként. Válasszuk a $g = 2$ primitív gyököt és a fenti táblázatokat. Ekkor
$$2^{\operatorname{ind}_2 5} \cdot \left(2^{\operatorname{ind}_2 x}\right)^{22} \equiv 2^{\operatorname{ind}_2 6}, \qquad 2^{\operatorname{ind}_2 5 + 22\operatorname{ind}_2 x} \equiv 2^{\operatorname{ind}_2 6} \pmod{13},$$
így a kitevők kongruensek modulo $o_{13}(2) = \varphi(13) = 12$:
$$\operatorname{ind}_2 5 + 22\operatorname{ind}_2 x \equiv \operatorname{ind}_2 6 \pmod{12}.$$
Az indextáblázatból $\operatorname{ind}_2 5 = 9$, $\operatorname{ind}_2 6 = 5$:
$$9 + 22\operatorname{ind}_2 x \equiv 5 \pmod{12}, \qquad 22\operatorname{ind}_2 x \equiv -4 \equiv 8, \qquad 10\operatorname{ind}_2 x \equiv 8 \pmod{12}.$$
Ez lineáris kongruencia; $(10, 12) = 2 \mid 8$, tehát két megoldása van. $2$-vel osztva $5\operatorname{ind}_2 x \equiv 4 \pmod 6$, amelynek megoldása $\operatorname{ind}_2 x \equiv 2 \pmod 6$ ($5 \cdot 2 = 10 \equiv 4$). Tehát
$$\operatorname{ind}_2 x \equiv 2 \ \text{vagy}\ 8 \pmod{12}, \qquad x \equiv 2^2 \ \text{vagy}\ 2^8 \pmod{13},$$
és a hatványtáblázat szerint
$$x \equiv 4 \ \text{vagy}\ 9 \pmod{13}.$$
(Ellenőrzés: $4^{22} \equiv 4^{10}$, mert $4^{12} \equiv 1$; $4^{10} = 2^{20} \equiv 2^8 \equiv 9$, és $5 \cdot 9 = 45 \equiv 6$. ✓)

**Indextáblázatok a gyakorlatban.** Régebben előre elkészített indextáblázatokat használtak a maradékosztályok szorzásához (C. G. J. Jacobi például 1839-ben adott ki ilyen táblázatokat az $1000$ alatti prímekre). Az alapgondolat ugyanaz, mint a logaritmustábláé: ha $(a, m) = (b, m) = 1$, akkor
$$ab \equiv g^{\operatorname{ind} a} \cdot g^{\operatorname{ind} b} = g^{\operatorname{ind} a + \operatorname{ind} b} \pmod m,$$
így a szorzás összeadássá egyszerűsödik. A táblázatot egy modulusra elég egyszer elkészíteni, utána bármely szorzáshoz használható. Természetesen ez csak akkor működik, ha modulo $m$ létezik primitív gyök, azaz $m = 2, 4, p^\alpha$ vagy $2p^\alpha$ ($p$ páratlan prím).

### A binom kongruenciák megoldhatósága

> **21.2. Tétel.** Legyen $p$ prím és $(a, p) = 1$. Az
> $$x^k \equiv a \pmod p \qquad (21.1)$$
> kongruencia pontosan akkor oldható meg, ha
> $$a^{\frac{p-1}{(k, p-1)}} \equiv 1 \pmod p. \qquad (21.2)$$
> Megoldhatóság esetén a páronként inkongruens megoldások száma $(k, p - 1)$.

*Bizonyítás.* Rögzítsünk egy $g$ primitív gyököt, és keressük a megoldást $x \equiv g^{\operatorname{ind} x}$ alakban (az $x \equiv 0$ nem megoldás, mert $p \nmid a$). Ekkor (21.1) a $g^{k \operatorname{ind} x} \equiv g^{\operatorname{ind} a}$ alakba írható, ami a 19.5. Tétel szerint ekvivalens a
$$k \operatorname{ind} x \equiv \operatorname{ind} a \pmod{p - 1} \qquad (21.3)$$
lineáris kongruenciával az $\operatorname{ind} x$ ismeretlenre. Ez a 8.1. Tétel szerint pontosan akkor oldható meg, ha
$$(k, p - 1) \mid \operatorname{ind} a, \qquad (21.4)$$
és ekkor $(k, p - 1)$ megoldása van modulo $p - 1$; ezek az $x \equiv g^{\operatorname{ind} x}$ megfeleltetés révén $(k, p - 1)$ inkongruens $x$-et adnak modulo $p$.

Végül megmutatjuk, hogy (21.4) ekvivalens (21.2)-vel. Legyen $e = (k, p - 1)$. Ekkor
$$a^{\frac{p-1}{e}} \equiv \left(g^{\operatorname{ind} a}\right)^{\frac{p-1}{e}} = g^{\operatorname{ind} a \cdot \frac{p-1}{e}} \pmod p,$$
és a 19.4. Tétel szerint ez pontosan akkor $\equiv 1$, ha
$$p - 1 \ \Big|\ \operatorname{ind} a \cdot \frac{p-1}{e} \iff \frac{p-1}{e} \cdot e \ \Big|\ \operatorname{ind} a \cdot \frac{p-1}{e} \iff e \mid \operatorname{ind} a. \ \blacksquare$$

**Példa.** Oldható-e az $x^3 \equiv 5 \pmod{13}$ kongruencia? Itt $(3, 12) = 3$, és $5^{12/3} = 5^4 = 625 = 48 \cdot 13 + 1 \equiv 1$, tehát megoldható, és $3$ megoldása van. Az indextáblázattal: $3\operatorname{ind}_2 x \equiv \operatorname{ind}_2 5 = 9 \pmod{12}$, azaz $\operatorname{ind}_2 x \equiv 3 \pmod 4$, tehát $\operatorname{ind}_2 x \in \{3, 7, 11\}$, és $x \equiv 8, 11, 7 \pmod{13}$. (Ellenőrzés: $7^3 = 343 = 26 \cdot 13 + 5$.)

## 22. Diffie–Hellman-kulcscsere

Ha a modulus nagyon nagy, a diszkrét logaritmus kiszámítása — a moduláris hatványozással ellentétben — nagyon lassú. Erre a különbségre épül a kriptográfia egyik leghíresebb eljárása, a **Diffie–Hellman-kulcscsere** (Whitfield Diffie és Martin Hellman, 1976), amely Ralph Merkle egy ötletén alapul. Ez a nyilvános kulcsú kriptográfia egyik legfontosabb fejezete: a felek úgy állapodnak meg egy közös titkos kulcsban, hogy *teljes kommunikációjuk nyilvános*, mégsem tudja más kitalálni a kulcsot.

Tegyük fel, hogy Aliz és Bob, akik egymástól távol vannak (mondjuk más-más országban), attól tartanak, hogy a csatornát, amelyen kommunikálnak (telefon vagy e-mail), lehallgatják. Hogyan állapodhatnak meg egy közös titkos kulcsban? Tekintsük a legegyszerűbb esetet, amikor a közös kulcs egy (véletlen) nem nulla maradékosztály modulo $p$, ahol $p$ egy nagy prím.

**Az eljárás.**

1. Aliz és Bob nyilvánosan megállapodik egy $p$ prímben és egy $g$ primitív gyökben modulo $p$. (Az sem feltétlenül szükséges, hogy $g$ primitív gyök legyen; elég, ha a rendje nagyon nagy.)
2. Aliz választ egy titkos $a$ egészet ($1 \le a \le p - 1$), Bob egy titkos $b$-t. Ezeket soha senkinek nem mondják el.
3. Aliz kiszámítja és nyilvánosan elküldi Bobnak $A \equiv g^a \pmod p$-t; Bob ugyanígy elküldi Aliznak $B \equiv g^b \pmod p$-t.
4. Aliz kiszámítja $B^a \equiv (g^b)^a = g^{ab}$-t, Bob pedig $A^b \equiv (g^a)^b = g^{ab}$-t. **A közös titkos kulcs $g^{ab} \bmod p$.**

Mindkét számolás egyetlen gyors moduláris hatványozás (7. fejezet).

**Egy játékpélda.** Legyen $p = 23$ és $g = 5$ (primitív gyök modulo $23$). Aliz titkos száma $a = 6$, Bobé $b = 15$. Aliz elküldi az $A = 5^6 \bmod 23 = 8$ számot, Bob a $B = 5^{15} \bmod 23 = 19$ számot. Aliz kiszámítja $19^6 \bmod 23 = 2$-t, Bob $8^{15} \bmod 23 = 2$-t: a közös kulcs $2$. (A valóságban $p$ több száz jegyű.)

**Mit lát a lehallgató?** Tegyük fel, hogy Éva lehallgatja a csatornát. Az $a$ és $b$ számokat nem ismeri — Aliz és Bob „fejben tartotta” őket —, de megszerzi a
$$p, \quad g, \quad g^a \bmod p, \quad g^b \bmod p$$
értékeket. A közös kulcs kiszámításához a következő problémát kell megoldania.

> **Diffie–Hellman-probléma (DHP).** A $p$ prím, a $g$ primitív gyök, valamint $g^a$ és $g^b \pmod p$ ismeretében számítsuk ki $g^{ab} \pmod p$-t.
>
> **Sejtés.** A Diffie–Hellman-problémára nincs gyors algoritmus.

Az eljárás biztonsága azon múlik, hogy Éva — elegendően nagy $p$ esetén — még nagyon gyors számítógépekkel sem tudja belátható időn belül megoldani a DHP-t. Egy szorosan kapcsolódó probléma:

> **Diszkrét logaritmus probléma (DLP).** Adott $c$ ($p \nmid c$) és $g$ primitív gyök esetén számítsuk ki azt az $x$-et, amelyre $c \equiv g^x \pmod p$.

Világos, hogy ha a DLP-re volna gyors algoritmus, akkor a DHP-re is: $g^a$-ból kiszámítanánk $a = \operatorname{ind}_g(g^a)$-t, majd moduláris hatványozással $(g^b)^a = g^{ab}$-t. Fordítva azonban nem világos, hogy a DHP gyors megoldásából következne-e a DLP gyors megoldása. Az általános feltételezés az, hogy a két probléma lényegében ekvivalens, de ez csak sejtés.

Az eljárás könnyen általánosítható tetszőleges (nagy) ciklikus csoportokra, ahol a primitív gyök szerepét a csoport generátoreleme veszi át. A gyakorlatban ma sokszor elliptikus görbéken definiált csoportokat használnak, mert ugyanakkora biztonsághoz ott sokkal kisebb számok is elegendők.

## A VI. rész összefoglalása

- **Rend:** $o_m(a)$ a legkisebb $t > 0$, amelyre $a^t \equiv 1 \pmod m$ (csak $(a, m) = 1$ esetén létezik). $a^t \equiv 1 \iff o_m(a) \mid t$; $a^u \equiv a^v \iff u \equiv v \pmod{o_m(a)}$; $o_m(a) \mid \varphi(m)$. Az $a^k$ rendje $\frac{o_m(a)}{(k, o_m(a))}$.
- **Primitív gyök:** $o_m(g) = \varphi(m)$; ekvivalensen $g$ hatványai redukált maradékrendszert alkotnak. Pontosan $m = 2, 4, p^\alpha, 2p^\alpha$ esetén létezik. Ellenőrzés: $g^{\varphi(m)/q} \not\equiv 1$ minden $q \mid \varphi(m)$ prímre.
- **Prím modulus:** minden $d \mid p - 1$-re pontosan $\varphi(d)$ darab $d$-edrendű elem van; a primitív gyökök száma $\varphi(p - 1)$, és $g^i$ pontosan akkor primitív gyök, ha $(i, p - 1) = 1$. $g^{(p-1)/2} \equiv -1$.
- **Index:** $a \equiv g^{\operatorname{ind} a}$; $\operatorname{ind}(ab) \equiv \operatorname{ind} a + \operatorname{ind} b$, $\operatorname{ind}(a^k) \equiv k \operatorname{ind} a \pmod{p - 1}$. A binom kongruencia lineárissá válik: $x^k \equiv a \pmod p$ pontosan akkor oldható meg, ha $a^{(p-1)/(k, p-1)} \equiv 1$, és ekkor $(k, p - 1)$ megoldása van.
- **Diffie–Hellman:** nyilvános $p, g$; titkos $a, b$; nyilvános $g^a, g^b$; közös kulcs $g^{ab}$. Biztonsága a DHP (és a vele rokon DLP) nehézségén múlik.

## Feladatok a VI. részhez

1. Határozzuk meg modulo $11$ minden nem nulla maradékosztály rendjét, és soroljuk fel a primitív gyököket.
2. Bizonyítsuk be, hogy ha $o_m(a) = t$, akkor $o_m(a^k) = \frac{t}{(t, k)}$.
3. Mutassuk meg, hogy modulo $15$ nincs primitív gyök, közvetlenül a rendek kiszámításával.
4. A modulo $13$ indextáblázat segítségével oldjuk meg: a) $x^5 \equiv 3 \pmod{13}$; b) $x^4 \equiv 2 \pmod{13}$.
5. Legyen $p$ prím. Bizonyítsuk be primitív gyök segítségével, hogy
$$1^k + 2^k + \dots + (p - 1)^k \equiv \begin{cases} -1 \pmod p, & \text{ha } p - 1 \mid k, \\ 0 \pmod p, & \text{ha } p - 1 \nmid k. \end{cases}$$
6. Végezzük el a Diffie–Hellman-kulcscserét a $p = 11$, $g = 2$, $a = 4$, $b = 7$ adatokkal.
7. Bizonyítsuk be, hogy ha $p$ páratlan prím és $g$ primitív gyök modulo $p$, akkor az $x^2 \equiv a \pmod p$ ($p \nmid a$) kongruencia pontosan akkor oldható meg, ha $\operatorname{ind}_g a$ páros.

### Megoldási útmutatók

1. A rendek ($a = 1, \dots, 10$): $1, 10, 5, 5, 5, 10, 10, 10, 5, 2$. Primitív gyökök: $2, 6, 7, 8$ (számuk $\varphi(10) = 4$).
2. $(a^k)^x \equiv 1 \iff t \mid kx \iff \frac{t}{(t,k)} \mid \frac{k}{(t,k)}x \iff \frac{t}{(t,k)} \mid x$, mert $\left(\frac{t}{(t,k)}, \frac{k}{(t,k)}\right) = 1$.
3. $\varphi(15) = 8$, a redukált maradékok $1, 2, 4, 7, 8, 11, 13, 14$, rendjeik $1, 4, 2, 4, 4, 2, 4, 2$ — egyik sem $8$. (A 20.3. Tétel B) esete: $15 = 3 \cdot 5$, $[\varphi(3), \varphi(5)] = 4$.)
4. a) $(5, 12) = 1$, egy megoldás: $5\operatorname{ind} x \equiv \operatorname{ind} 3 = 4 \pmod{12}$; $5^{-1} \equiv 5 \pmod{12}$, így $\operatorname{ind} x \equiv 20 \equiv 8$, $x \equiv 2^8 \equiv 9$. b) $(4, 12) = 4$, és $2^{12/4} = 8 \not\equiv 1$, tehát nincs megoldás (az indexekkel: $4\operatorname{ind} x \equiv \operatorname{ind} 2 = 1 \pmod{12}$, és $4 \nmid 1$).
5. Az $1, \dots, p - 1$ maradékok éppen $g^0, g^1, \dots, g^{p-2}$, így az összeg $\sum_{j=0}^{p-2} (g^k)^j$. Ha $p - 1 \mid k$, minden tag $1$, az összeg $p - 1 \equiv -1$. Különben $g^k \not\equiv 1$, és a mértani sor összegképlete szerint $(g^k - 1) \cdot S = g^{k(p-1)} - 1 \equiv 0$, ahonnan ($g^k - 1$-gyel egyszerűsítve) $S \equiv 0$.
6. $A = 2^4 = 16 \equiv 5$, $B = 2^7 = 128 \equiv 7$; Aliz: $7^4 = 2401 \equiv 3$, Bob: $5^7 \equiv 3 \pmod{11}$. A közös kulcs $3$.
7. Ha $x \equiv g^y$, akkor $x^2 \equiv g^{2y}$, és $g^{2y} \equiv a \iff 2y \equiv \operatorname{ind} a \pmod{p - 1}$, ami pontosan akkor oldható meg, ha $(2, p - 1) = 2 \mid \operatorname{ind} a$. (Ez a 21.2. Tétel $k = 2$ esete, és a következő fejezet kiindulópontja.)

---

# VII. RÉSZ: MÁSODFOKÚ KONGRUENCIÁK ÉS TITKOSÍTÁS

A hetedik rész a másodfokú kongruenciákkal foglalkozik: mikor van egy számnak „négyzetgyöke” modulo $p$? A választ a Legendre-szimbólum és Gauss híres **kvadratikus reciprocitási tétele** adja, amely a számelmélet egyik legszebb és legmélyebb eredménye. A rész második fejezete a titkosításokról szól: a klasszikus helyettesítő rejtjelektől a Vernam-féle eljáráson át a ma is használt RSA-ig — utóbbi teljes egészében az Euler–Fermat-tételen alapul.

## 23. Másodfokú kongruenciák

Másodfokú kongruenciákat a történelem során sokan tanulmányoztak — Fermat, Euler, Lagrange, Legendre —, de szisztematikus leírásukat először Gauss adta meg. Mivel Fermat korában még nem voltak matematikai folyóiratok, sok akkori eredmény levelezésekből maradt ránk.

Egy általános $ax^2 + bx + c \equiv 0 \pmod p$ kongruencia ($p$ páratlan prím, $p \nmid a$) teljes négyzetté alakítással ($4a$-val szorozva: $(2ax + b)^2 \equiv b^2 - 4ac$) mindig $y^2 \equiv D \pmod p$ alakra hozható, ezért elég az $x^2 \equiv a$ alakú kongruenciákat vizsgálni. Kiindulópontunk a binom kongruenciákra vonatkozó 21.2. Tétel; ezt a $k = 2$ kitevőre alkalmazva (és $(2, p - 1) = 2$-t felhasználva) a következőt kapjuk:

> **23.1. Tétel.** Legyen $p$ páratlan prím és $(a, p) = 1$. Az
> $$x^2 \equiv a \pmod p \qquad (23.1)$$
> kongruencia megoldhatóságának szükséges és elégséges feltétele, hogy
> $$a^{\frac{p-1}{2}} \equiv 1 \pmod p \qquad (23.2)$$
> teljesüljön. Ha (23.2) fennáll, akkor a megoldások száma $2$.

De vajon mely $a$ maradékosztályokra oldható meg a (23.1) kongruencia? Ez a kérdés motiválja a következő definíciót.

> **23.2. Definíció.** Legyen $m$ pozitív egész, $a$ egy maradékosztály modulo $m$. Ha az
> $$x^2 \equiv a \pmod m$$
> kongruenciának van megoldása, akkor azt mondjuk, hogy $a$ **kvadratikus maradék** modulo $m$; ha nincs megoldása, akkor $a$ **kvadratikus nemmaradék** modulo $m$.

**Példa.** Határozzuk meg a kvadratikus maradékokat modulo $7$! Ehhez táblázatot készítünk:

| $x$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $x^2 \bmod 7$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |

A táblázatból leolvasható, hogy a modulo $7$ kvadratikus maradékok a $0, 1, 2, 4$ maradékosztályok, a kvadratikus nemmaradékok a $3, 5, 6$. Hasonló táblázat modulo $11$:

| $x$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $x^2 \bmod 11$ | $0$ | $1$ | $4$ | $9$ | $5$ | $3$ | $3$ | $5$ | $9$ | $4$ | $1$ |

A modulo $11$ kvadratikus maradékok a $0, 1, 3, 4, 5, 9$, a nemmaradékok a $2, 6, 7, 8, 10$ maradékosztályok. Megfigyelhetjük a szimmetriát: $x^2 \equiv (-x)^2$, ezért a táblázat második fele az első tükörképe.

Ilyen táblázatot összetett modulusra is készíthetünk; az alábbi táblázat az $m \le 50$ modulusokra adja meg az összes kvadratikus maradékot (a $0, 1, \dots, m - 1$ reprezentánsokkal). A legérdekesebb és legtöbbet vizsgált eset azonban az, amikor a modulus prím.

| $m$ | kvadratikus maradékok mod $m$ | $m$ | kvadratikus maradékok mod $m$ |
|---|----------------------------|---|----------------------------|
| $1$ | 0 | $26$ | 0, 1, 3, 4, 9, 10, 12, 13, 14, 16, 17, 22, 23, 25 |
| $2$ | 0, 1 | $27$ | 0, 1, 4, 7, 9, 10, 13, 16, 19, 22, 25 |
| $3$ | 0, 1 | $28$ | 0, 1, 4, 8, 9, 16, 21, 25 |
| $4$ | 0, 1 | $29$ | 0, 1, 4, 5, 6, 7, 9, 13, 16, 20, 22, 23, 24, 25, 28 |
| $5$ | 0, 1, 4 | $30$ | 0, 1, 4, 6, 9, 10, 15, 16, 19, 21, 24, 25 |
| $6$ | 0, 1, 3, 4 | $31$ | 0, 1, 2, 4, 5, 7, 8, 9, 10, 14, 16, 18, 19, 20, 25, 28 |
| $7$ | 0, 1, 2, 4 | $32$ | 0, 1, 4, 9, 16, 17, 25 |
| $8$ | 0, 1, 4 | $33$ | 0, 1, 3, 4, 9, 12, 15, 16, 22, 25, 27, 31 |
| $9$ | 0, 1, 4, 7 | $34$ | 0, 1, 2, 4, 8, 9, 13, 15, 16, 17, 18, 19, 21, 25, 26, 30, 32, 33 |
| $10$ | 0, 1, 4, 5, 6, 9 | $35$ | 0, 1, 4, 9, 11, 14, 15, 16, 21, 25, 29, 30 |
| $11$ | 0, 1, 3, 4, 5, 9 | $36$ | 0, 1, 4, 9, 13, 16, 25, 28 |
| $12$ | 0, 1, 4, 9 | $37$ | 0, 1, 3, 4, 7, 9, 10, 11, 12, 16, 21, 25, 26, 27, 28, 30, 33, 34, 36 |
| $13$ | 0, 1, 3, 4, 9, 10, 12 | $38$ | 0, 1, 4, 5, 6, 7, 9, 11, 16, 17, 19, 20, 23, 24, 25, 26, 28, 30, 35, 36 |
| $14$ | 0, 1, 2, 4, 7, 8, 9, 11 | $39$ | 0, 1, 3, 4, 9, 10, 12, 13, 16, 22, 25, 27, 30, 36 |
| $15$ | 0, 1, 4, 6, 9, 10 | $40$ | 0, 1, 4, 9, 16, 20, 24, 25, 36 |
| $16$ | 0, 1, 4, 9 | $41$ | 0, 1, 2, 4, 5, 8, 9, 10, 16, 18, 20, 21, 23, 25, 31, 32, 33, 36, 37, 39, 40 |
| $17$ | 0, 1, 2, 4, 8, 9, 13, 15, 16 | $42$ | 0, 1, 4, 7, 9, 15, 16, 18, 21, 22, 25, 28, 30, 36, 37, 39 |
| $18$ | 0, 1, 4, 7, 9, 10, 13, 16 | $43$ | 0, 1, 4, 6, 9, 10, 11, 13, 14, 15, 16, 17, 21, 23, 24, 25, 31, 35, 36, 38, 40, 41 |
| $19$ | 0, 1, 4, 5, 6, 7, 9, 11, 16, 17 | $44$ | 0, 1, 4, 5, 9, 12, 16, 20, 25, 33, 36, 37 |
| $20$ | 0, 1, 4, 5, 9, 16 | $45$ | 0, 1, 4, 9, 10, 16, 19, 25, 31, 34, 36, 40 |
| $21$ | 0, 1, 4, 7, 9, 15, 16, 18 | $46$ | 0, 1, 2, 3, 4, 6, 8, 9, 12, 13, 16, 18, 23, 24, 25, 26, 27, 29, 31, 32, 35, 36, 39, 41 |
| $22$ | 0, 1, 3, 4, 5, 9, 11, 12, 14, 15, 16, 20 | $47$ | 0, 1, 2, 3, 4, 6, 7, 8, 9, 12, 14, 16, 17, 18, 21, 24, 25, 27, 28, 32, 34, 36, 37, 42 |
| $23$ | 0, 1, 2, 3, 4, 6, 8, 9, 12, 13, 16, 18 | $48$ | 0, 1, 4, 9, 16, 25, 33, 36 |
| $24$ | 0, 1, 4, 9, 12, 16 | $49$ | 0, 1, 2, 4, 8, 9, 11, 15, 16, 18, 22, 23, 25, 29, 30, 32, 36, 37, 39, 43, 44, 46 |
| $25$ | 0, 1, 4, 6, 9, 11, 14, 16, 19, 21, 24 | $50$ | 0, 1, 4, 6, 9, 11, 14, 16, 19, 21, 24, 25, 26, 29, 31, 34, 36, 39, 41, 44, 46, 49 |

### A Legendre-szimbólum

> **23.3. Definíció.** Legyen $p$ páratlan prím és $(a, p) = 1$. A **Legendre-szimbólum** értéke
> $$\left(\frac{a}{p}\right) = \begin{cases} 1, & \text{ha } a \text{ kvadratikus maradék modulo } p, \\ -1, & \text{ha } a \text{ kvadratikus nemmaradék modulo } p. \end{cases}$$
> Ha $p \mid a$, akkor az $\left(\frac{a}{p}\right) = \left(\frac{0}{p}\right)$ szimbólumot vagy nem értelmezik, vagy értékét $0$-nak definiálják.

(A jelölés nem tört: $\left(\frac{a}{p}\right)$-t „$a$ per $p$ Legendre-szimbólumnak” olvassuk.) A Legendre-szimbólumnak számos számelméleti bizonyításban fontos szerepe van, és — túl az elméleti eredményeken — kriptográfiai alkalmazásai is vannak.

**Hány kvadratikus maradék van?** Legyen $p$ páratlan prím, és tekintsük az $1^2, 2^2, \dots, (p - 1)^2$ számokat modulo $p$. Ezek között
$$x^2 \equiv y^2 \pmod p \iff p \mid (x - y)(x + y) \iff x \equiv \pm y \pmod p,$$
vagyis $1 \le x, y \le p - 1$ esetén $x^2 \equiv y^2$ pontosan akkor, ha $y = x$ vagy $y = p - x$. Az $1^2, \dots, (p - 1)^2$ sorozat tehát pontosan $\frac{p-1}{2}$ különböző maradékot tartalmaz, mindegyiket kétszer. Vagyis **a nem nulla kvadratikus maradékok száma $\frac{p-1}{2}$, és ugyanennyi a kvadratikus nemmaradékok száma.** Modulo $p$ tehát a nem nulla maradékok pontosan fele kvadratikus maradék.

Ez az egyszerű tény motiválta, hogy a Legendre-szimbólum jól alkalmazható **pszeudovéletlen** (véletlennek tűnő) objektumok konstrukciójára. Christian Mauduit és Sárközy András 1997-ben a következő konstrukciót adta meg véges, $\pm 1$-ekből álló pszeudovéletlen sorozatokra:
$$E_{p-1} = \left(\left(\frac{1}{p}\right), \left(\frac{2}{p}\right), \dots, \left(\frac{p-1}{p}\right)\right).$$
Például $p = 11$-re a sorozat
$$+1, -1, +1, +1, +1, -1, -1, -1, +1, -1.$$
A sorozatban ugyanannyi $+1$ van, mint $-1$, és nagy $p$-re a sorozat „mintázatai” is hasonlóan viselkednek, mint egy valódi véletlen sorozatéi. Erre a 24. fejezetben visszatérünk.

### Az Euler-féle kritérium

Eddig ahhoz, hogy eldöntsük, kvadratikus maradék-e egy szám modulo $m$, egy teljes maradékrendszeren végigfuttattuk $x$-et, és megnéztük $x^2$ lehetséges maradékait. Ha csak egyetlen $a$ számról akarjuk ezt eldönteni, ez a módszer nagy $p$-re meglehetősen lassú. Euler 1761-ben ennél gyorsabb módszert talált prím modulusra, amelyben a Legendre-szimbólum kiszámításának alapja egy moduláris hatványozás (7. fejezet). Később lesz szó egy még gyorsabb módszerről is; előbb lássuk az úgynevezett Euler-lemmát.

> **23.4. Lemma (Euler-lemma).** Legyen $p$ páratlan prím és $(a, p) = 1$. Ekkor
> $$\left(\frac{a}{p}\right) \equiv a^{\frac{p-1}{2}} \pmod p.$$

*Bizonyítás.* Ha $\left(\frac{a}{p}\right) = 1$, akkor a 23.1. Tétel szerint valóban $a^{\frac{p-1}{2}} \equiv 1 = \left(\frac{a}{p}\right)$. Ha $\left(\frac{a}{p}\right) = -1$, akkor a 23.1. Tétel szerint $a^{\frac{p-1}{2}} \not\equiv 1$, azaz $p \nmid a^{\frac{p-1}{2}} - 1$. A kis Fermat-tétel szerint viszont
$$p \mid a^{p-1} - 1 = \left(a^{\frac{p-1}{2}} - 1\right)\left(a^{\frac{p-1}{2}} + 1\right),$$
így Eukleidész I. tétele szerint $p \mid a^{\frac{p-1}{2}} + 1$, azaz $a^{\frac{p-1}{2}} \equiv -1 = \left(\frac{a}{p}\right)$. $\blacksquare$

**Példa.** Kvadratikus maradék-e a $3$ modulo $11$? $3^5 = 243 = 22 \cdot 11 + 1 \equiv 1$, tehát igen (valóban $5^2 = 25 \equiv 3$). És a $2$? $2^5 = 32 \equiv -1$, tehát nem.

Az Euler-lemma következményei:

> **23.5. Tétel.** Legyen $p$ páratlan prím, $(a, p) = (b, p) = 1$. Ekkor
>
> (a) $a \equiv b \pmod p$ esetén $\left(\frac{a}{p}\right) = \left(\frac{b}{p}\right)$;
>
> (b) $\left(\frac{ab}{p}\right) = \left(\frac{a}{p}\right)\left(\frac{b}{p}\right)$ (**multiplikativitás**);
>
> (c) $\left(\frac{1}{p}\right) = 1$, és általában $\left(\frac{a^2}{p}\right) = 1$;
>
> (d) $\left(\frac{-1}{p}\right) = (-1)^{\frac{p-1}{2}} = \begin{cases} 1, & \text{ha } p = 4k + 1 \text{ alakú}, \\ -1, & \text{ha } p = 4k + 3 \text{ alakú}. \end{cases}$

A jegyzet a bizonyítás kivitelezését az olvasóra bízza; az Euler-lemmát, a kis Fermat-tételt és azt kell használni, hogy a Legendre-szimbólum értéke csak $\pm 1$ lehet.

::: kiegeszites
**Kiegészítés: a 23.5. Tétel bizonyítása.** (a) A definícióból nyilvánvaló (a kvadratikus maradék tulajdonság a maradékosztályé). (b) Az Euler-lemma szerint
$$\left(\frac{ab}{p}\right) \equiv (ab)^{\frac{p-1}{2}} = a^{\frac{p-1}{2}} b^{\frac{p-1}{2}} \equiv \left(\frac{a}{p}\right)\left(\frac{b}{p}\right) \pmod p.$$
Mindkét oldal $\pm 1$, és $1 \not\equiv -1 \pmod p$ (mert $p > 2$), így a kongruenciából egyenlőség következik. (c) $x = a$ megoldása $x^2 \equiv a^2$-nek. (d) Az Euler-lemma szerint $\left(\frac{-1}{p}\right) \equiv (-1)^{\frac{p-1}{2}}$, és itt is mindkét oldal $\pm 1$. A $(-1)^{\frac{p-1}{2}}$ pontosan akkor $1$, ha $\frac{p-1}{2}$ páros, azaz $p \equiv 1 \pmod 4$. $\blacksquare$

A (b) tulajdonság figyelemre méltó: **két kvadratikus nemmaradék szorzata kvadratikus maradék.** (Modulo $7$: $3 \cdot 5 = 15 \equiv 1$, $3 \cdot 6 = 18 \equiv 4$.) A (d) tulajdonság pedig azt mondja, hogy a $-1$ pontosan a $4k + 1$ alakú prímek szerint kvadratikus maradék — ez Fermat egyik híres tételének kulcsa: egy $p$ páratlan prím pontosan akkor írható fel két négyzetszám összegeként, ha $p \equiv 1 \pmod 4$.
:::

### A kvadratikus reciprocitási tétel

A fejezetben (kicsit később) a következőket fogjuk igazolni:

> **23.6. Tétel (Gauss).** Ha $p$ páratlan prím, akkor
> $$\left(\frac{2}{p}\right) = (-1)^{\frac{p^2 - 1}{8}} = \begin{cases} 1, & \text{ha } p = 8k \pm 1 \text{ alakú}, \\ -1, & \text{ha } p = 8k \pm 3 \text{ alakú}. \end{cases}$$
>
> **23.7. Tétel (Gauss kvadratikus reciprocitási tétele).** Ha $p$ és $q$ különböző páratlan prímek, akkor
> $$\left(\frac{p}{q}\right) = (-1)^{\frac{p-1}{2}\cdot\frac{q-1}{2}}\left(\frac{q}{p}\right) = \begin{cases} \left(\frac{q}{p}\right), & \text{ha } p \text{ vagy } q \ \ 4k + 1 \text{ alakú}, \\ -\left(\frac{q}{p}\right), & \text{ha } p \text{ és } q \text{ is } 4k + 3 \text{ alakú}. \end{cases}$$

A reciprocitási tétel első pillantásra meglepő: azt állítja, hogy két teljesen különböző kérdés — „négyzetszám-e $p$ modulo $q$?” és „négyzetszám-e $q$ modulo $p$?” — válasza szorosan összefügg. Például $\left(\frac{5}{7}\right) = \left(\frac{7}{5}\right)$, mert $5 \equiv 1 \pmod 4$: valóban, mindkettő $-1$ (modulo $7$ a négyzetek $1, 2, 4$; modulo $5$ a négyzetek $1, 4$, és $7 \equiv 2$).

Gauss — aki a tételt „aranytételnek” (*theorema aureum*) nevezte — nyolc különböző bizonyítást adott rá (hatot publikált, kettő a hagyatékában maradt). Ma ennél sokkal több ismert: Franz Lemmermeyer gyűjteménye több mint háromszáz különböző bizonyítást tart számon.

Mielőtt a tételeket bebizonyítanánk, lássunk egy példát a használatukra.

**Kidolgozott példa.** Megoldható-e az $x^2 \equiv -42 \pmod{61}$ kongruencia? (A $61$ prím.) Ehhez meg kell határozni a $\left(\frac{-42}{61}\right)$ Legendre-szimbólum értékét. Az első lépésben faktorizálunk, és a multiplikativitást használjuk:
$$\left(\frac{-42}{61}\right) = \left(\frac{-1}{61}\right)\left(\frac{2}{61}\right)\left(\frac{3}{61}\right)\left(\frac{7}{61}\right). \qquad (23.3)$$
A tényezőket a 23.5., 23.6. és 23.7. Tétel segítségével számoljuk ki:

- $\left(\frac{-1}{61}\right) = (-1)^{30} = 1$, mert $61 = 4 \cdot 15 + 1$.
- $\left(\frac{2}{61}\right) = -1$, mert $61 = 8 \cdot 8 - 3$, azaz $8k - 3$ alakú.
- $\left(\frac{3}{61}\right) = \left(\frac{61}{3}\right) = \left(\frac{1}{3}\right) = 1$ (reciprocitás, $61 \equiv 1 \pmod 4$; majd $61 \equiv 1 \pmod 3$).
- $\left(\frac{7}{61}\right) = \left(\frac{61}{7}\right) = \left(\frac{5}{7}\right) = \left(\frac{7}{5}\right) = \left(\frac{2}{5}\right) = -1$ (reciprocitás kétszer; $61 \equiv 5 \pmod 7$, $7 \equiv 2 \pmod 5$, és $5 = 8 - 3$).

Ezeket (23.3)-ba írva
$$\left(\frac{-42}{61}\right) = 1 \cdot (-1) \cdot 1 \cdot (-1) = 1.$$
Tehát az $x^2 \equiv -42 \pmod{61}$ kongruencia megoldható (két megoldása van). A megoldások egyébként $x \equiv 18$ és $x \equiv 43 \pmod{61}$: valóban $18^2 = 324 = 5 \cdot 61 + 19$, és $19 \equiv -42 \pmod{61}$.

A fenti algoritmusnak van egy lassú lépése: a faktorizálás, ugyanis a faktorizációs algoritmusok nagy számokra nagyon lassúak. Ezen a Jacobi-szimbólum segít (a fejezet utolsó részében).

### A Gauss-lemma

A 23.6. és a 23.7. Tétel bizonyítása Gauss következő lemmáján alapul.

> **23.8. Lemma (Gauss-lemma).** Legyen $p$ páratlan prím, $(a, p) = 1$. Tekintsük az
> $$a, \ 2a, \ 3a, \ \dots, \ \frac{p-1}{2}\,a$$
> számok legkisebb nemnegatív maradékait modulo $p$. Ha $n$ jelöli azoknak a maradékoknak a számát, amelyek nagyobbak $\frac{p}{2}$-nél, akkor
> $$\left(\frac{a}{p}\right) = (-1)^n.$$

**Példa.** $p = 11$, $a = 3$: a $3, 6, 9, 12, 15$ számok maradékai $3, 6, 9, 1, 4$. Ezek közül $\frac{11}{2} = 5{,}5$-nél nagyobb: $6$ és $9$, tehát $n = 2$, és $\left(\frac{3}{11}\right) = (-1)^2 = 1$ — összhangban a fenti példával.

*Bizonyítás.* Legyenek $r_1, \dots, r_n$ azok a maradékok, amelyek nagyobbak $\frac{p}{2}$-nél, a többiek pedig $s_1, \dots, s_k$; ekkor $n + k = \frac{p-1}{2}$. (Egyik maradék sem $0$, mert $p \nmid ja$.) A
$$p - r_1, \ p - r_2, \ \dots, \ p - r_n$$
számok különbözők, és $1$ és $\frac{p}{2}$ közé esnek, akárcsak az $s_j$-k. Megmutatjuk, hogy $p - r_i \ne s_j$. Ha $p - r_i = s_j$ volna, ahol $r_i \equiv \varrho a$ és $s_j \equiv \sigma a$ ($1 \le \varrho, \sigma \le \frac{p-1}{2}$), akkor
$$p - \varrho a \equiv \sigma a, \quad (\varrho + \sigma)a \equiv 0, \quad \varrho + \sigma \equiv 0 \pmod p,$$
ahol $(a, p) = 1$ miatt egyszerűsíthettünk. Ez lehetetlen, mert $2 \le \varrho + \sigma \le p - 1$. Tehát a
$$p - r_1, \ \dots, \ p - r_n, \ s_1, \ \dots, \ s_k$$
számok páronként különbözők, mind az $1, 2, \dots, \frac{p-1}{2}$ számok közül valók, és éppen $\frac{p-1}{2}$ darab van belőlük: ezek tehát éppen az $1, 2, \dots, \frac{p-1}{2}$ számok, más sorrendben. Összeszorozva őket:
$$(p - r_1)\cdots(p - r_n)\, s_1 \cdots s_k = 1 \cdot 2 \cdots \frac{p-1}{2}.$$
Modulo $p$ nézve ($p - r_i \equiv -r_i$):
$$(-1)^n r_1 \cdots r_n\, s_1 \cdots s_k \equiv \left(\frac{p-1}{2}\right)! \pmod p.$$
A bal oldalon az $r_i$-k és $s_j$-k szorzata éppen az $a, 2a, \dots, \frac{p-1}{2}a$ számok szorzatával kongruens:
$$(-1)^n\, a \cdot 2a \cdots \frac{p-1}{2}a = (-1)^n a^{\frac{p-1}{2}}\left(\frac{p-1}{2}\right)! \equiv \left(\frac{p-1}{2}\right)! \pmod p.$$
A $\left(\frac{p-1}{2}\right)!$ szám relatív prím $p$-hez, így egyszerűsíthetünk: $(-1)^n a^{\frac{p-1}{2}} \equiv 1$, azaz $a^{\frac{p-1}{2}} \equiv (-1)^n$. Végül az Euler-lemmát alkalmazva
$$\left(\frac{a}{p}\right) \equiv a^{\frac{p-1}{2}} \equiv (-1)^n \pmod p,$$
és mivel mindkét oldal $\pm 1$, egyenlőség áll fenn. $\blacksquare$

> **23.9. Lemma.** Ha $p$ páratlan prím és $(a, 2p) = 1$ (azaz $a$ páratlan és $p \nmid a$), akkor
> $$\left(\frac{a}{p}\right) = (-1)^t, \qquad \text{ahol} \qquad t = \sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right];$$
> továbbá
> $$\left(\frac{2}{p}\right) = (-1)^{\frac{p^2-1}{8}}.$$

*Bizonyítás.* Ugyanazt a jelölést használjuk, mint a Gauss-lemmában. Az $r_i$ és $s_j$ számok a $ja$ számok $p$-vel vett osztási maradékai, a hányados pedig $\left[\frac{ja}{p}\right]$. Így
$$\sum_{j=1}^{(p-1)/2} ja = p\sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right] + \sum_{i=1}^n r_i + \sum_{j=1}^k s_j.$$
Másrészt, mivel a $p - r_i$ és $s_j$ számok éppen $1, \dots, \frac{p-1}{2}$,
$$\sum_{j=1}^{(p-1)/2} j = \sum_{i=1}^n (p - r_i) + \sum_{j=1}^k s_j = np - \sum_{i=1}^n r_i + \sum_{j=1}^k s_j.$$
A kettőt kivonva:
$$(a - 1)\sum_{j=1}^{(p-1)/2} j = p\left(\sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right] - n\right) + 2\sum_{i=1}^n r_i.$$
Itt $\sum_{j=1}^{(p-1)/2} j = \frac{1}{2}\cdot\frac{p-1}{2}\cdot\frac{p+1}{2} = \frac{p^2 - 1}{8}$. Modulo $2$ nézve (és $p \equiv 1 \pmod 2$-t felhasználva):
$$(a - 1)\frac{p^2 - 1}{8} \equiv \sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right] - n \pmod 2.$$
Ha $a$ páratlan, a bal oldal páros, így $n \equiv t \pmod 2$, és a Gauss-lemma szerint $\left(\frac{a}{p}\right) = (-1)^n = (-1)^t$. Ha $a = 2$, akkor $\left[\frac{2j}{p}\right] = 0$ minden $1 \le j \le \frac{p-1}{2}$-re (hiszen $2j < p$), így $n \equiv \frac{p^2 - 1}{8} \pmod 2$, és a Gauss-lemma szerint $\left(\frac{2}{p}\right) = (-1)^{\frac{p^2-1}{8}}$. $\blacksquare$

*A 23.6. Tétel bizonyítása.* A képlet a 23.9. Lemma második része. A második alak: $p = 8k \pm 1$ esetén $\frac{p^2 - 1}{8} = 8k^2 \pm 2k$ páros, $p = 8k \pm 3$ esetén $\frac{p^2 - 1}{8} = 8k^2 \pm 6k + 1$ páratlan. $\blacksquare$

*A 23.7. Tétel bizonyítása (rácspontokkal).* Legyen $S$ azoknak az $(x, y)$ egész pároknak a halmaza, amelyekre
$$1 \le x \le \frac{p-1}{2}, \qquad 1 \le y \le \frac{q-1}{2}.$$
$S$ elemszáma $\frac{p-1}{2}\cdot\frac{q-1}{2}$. Bontsuk $S$-et két diszjunkt részre: $S_1$ elemei azok a párok, amelyekre $qx > py$, $S_2$ elemei azok, amelyekre $qx < py$. A $qx = py$ eset nem fordulhat elő, mert ekkor $p \mid qx$, így $p \mid x$ volna, holott $1 \le x < p$. Tehát ez valódi felbontás. (Szemléletesen: az $S$ téglalap rácspontjait az $y = \frac{q}{p}x$ egyenes két részre vágja, és egyik rácspont sem esik az egyenesre.)

$S_1$ elemei azok a párok, amelyekre $1 \le x \le \frac{p-1}{2}$ és $1 \le y < \frac{qx}{p}$. (Az $y \le \frac{q-1}{2}$ feltétel itt automatikusan teljesül, mert $\frac{qx}{p} < \frac{q}{2}$.) Rögzített $x$-hez $\left[\frac{qx}{p}\right]$ ilyen $y$ van, így
$$|S_1| = \sum_{x=1}^{(p-1)/2}\left[\frac{qx}{p}\right].$$
Ugyanígy $S_2$ elemei azok, amelyekre $1 \le y \le \frac{q-1}{2}$ és $1 \le x < \frac{py}{q}$, így
$$|S_2| = \sum_{y=1}^{(q-1)/2}\left[\frac{py}{q}\right].$$
Tehát
$$\sum_{x=1}^{(p-1)/2}\left[\frac{qx}{p}\right] + \sum_{y=1}^{(q-1)/2}\left[\frac{py}{q}\right] = \frac{p-1}{2}\cdot\frac{q-1}{2}.$$
A 23.9. Lemma szerint (mindkét prím páratlan) az első összeg $\left(\frac{q}{p}\right)$, a második $\left(\frac{p}{q}\right)$ kitevője. Így
$$\left(\frac{q}{p}\right)\left(\frac{p}{q}\right) = (-1)^{\frac{p-1}{2}\cdot\frac{q-1}{2}},$$
ami (mivel $\left(\frac{q}{p}\right)^2 = 1$) a bizonyítandó állítás. $\blacksquare$

### 23.1. A Jacobi-szimbólum

A Legendre-szimbólum kiszámításának leglassabb lépése az, amikor a „számlálót” prímtényezőkre bontjuk. Ez megkerülhető az úgynevezett Jacobi-szimbólummal.

> **23.10. Definíció.** Legyen $P > 1$ páratlan szám, $P = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k}$ a kanonikus alakja, és $a$ egy $P$-hez relatív prím egész. A **Jacobi-szimbólum**:
> $$\left(\frac{a}{P}\right) \stackrel{\text{def}}{=} \left(\frac{a}{p_1}\right)^{\alpha_1}\left(\frac{a}{p_2}\right)^{\alpha_2}\cdots\left(\frac{a}{p_k}\right)^{\alpha_k},$$
> ahol a jobb oldalon Legendre-szimbólumok szorzata áll.

Ha $P$ prím, a definícióból következően a Jacobi- és a Legendre-szimbólum egybeesik. **Figyelem!** Összetett $P$-re az $x^2 \equiv a \pmod P$ kongruencia megoldhatósága *nem* olvasható le a Jacobi-szimbólumról. Például az
$$x^2 \equiv 2 \pmod{15}$$
kongruencia nem oldható meg (hiszen akkor $x^2 \equiv 2 \pmod 3$ is teljesülne, ami nem lehetséges), mégis
$$\left(\frac{2}{15}\right) = \left(\frac{2}{3}\right)\left(\frac{2}{5}\right) = (-1)(-1) = 1.$$
(Annyi igaz, hogy ha $\left(\frac{a}{P}\right) = -1$, akkor a kongruencia biztosan nem oldható meg, mert valamelyik $\left(\frac{a}{p_i}\right) = -1$.)

A Jacobi-szimbólum tulajdonságait a következő tétel foglalja össze; a lényeg, hogy **ugyanazok a számolási szabályok érvényesek rá, mint a Legendre-szimbólumra.**

> **23.11. Tétel.** Legyen $P$ pozitív páratlan szám, és $(a, P) = (b, P) = 1$. Ekkor
>
> (a) $a \equiv b \pmod P$ esetén $\left(\frac{a}{P}\right) = \left(\frac{b}{P}\right)$;
>
> (b) $\left(\frac{ab}{P}\right) = \left(\frac{a}{P}\right)\left(\frac{b}{P}\right)$;
>
> (c) $\left(\frac{1}{P}\right) = 1$, $\left(\frac{a^2}{P}\right) = 1$;
>
> (d) $\left(\frac{-1}{P}\right) = (-1)^{\frac{P-1}{2}}$, azaz $1$, ha $P$ $4k + 1$ alakú, és $-1$, ha $4k + 3$ alakú;
>
> (e) $\left(\frac{2}{P}\right) = (-1)^{\frac{P^2-1}{8}}$, azaz $1$, ha $P$ $8k \pm 1$ alakú, és $-1$, ha $8k \pm 3$ alakú;
>
> (f) ha $P$ és $Q$ relatív prím pozitív páratlan számok, akkor $\left(\frac{P}{Q}\right) = (-1)^{\frac{P-1}{2}\cdot\frac{Q-1}{2}}\left(\frac{Q}{P}\right)$.

Mivel (f) nemcsak prímekre, hanem páratlan összetett számokra is fennáll, **a számlálót nem kell prímtényezőkre bontani — csak a kettőhatványt kell leválasztani** (az (e) szabállyal). Az eljárás hasonlít az euklideszi algoritmusra, és ugyanolyan gyors.

**Példa.** Számítsuk ki újra $\left(\frac{-42}{61}\right)$ értékét! Mivel $61$ prím, a Jacobi- és a Legendre-szimbólum egybeesik, de most csak Jacobi-szimbólumokkal számolunk, faktorizálás nélkül (a $21$-et nem bontjuk fel):
$$\left(\frac{-42}{61}\right) = \left(\frac{-1}{61}\right)\left(\frac{2}{61}\right)\left(\frac{21}{61}\right) = 1 \cdot (-1) \cdot \left(\frac{21}{61}\right) = -\left(\frac{61}{21}\right) = -\left(\frac{19}{21}\right) = -\left(\frac{21}{19}\right) = -\left(\frac{2}{19}\right) = -(-1) = 1.$$
(A lépések: reciprocitás, mert $61 \equiv 1 \pmod 4$; $61 \equiv 19 \pmod{21}$; reciprocitás, mert $21 \equiv 1 \pmod 4$; $21 \equiv 2 \pmod{19}$; végül $19 = 8 \cdot 2 + 3$.)

*A 23.11. Tétel bizonyítása.* Az (a), (b), (c) rész a Legendre-szimbólum megfelelő tulajdonságainak és a definíciónak egyszerű következménye. A (d), (e), (f) részhez a következő segédállítást használjuk.

> **Segédállítás.** Ha $u, v$ páratlan egészek, akkor
> $$\frac{uv - 1}{2} \equiv \frac{u - 1}{2} + \frac{v - 1}{2} \pmod 2, \qquad \frac{u^2v^2 - 1}{8} \equiv \frac{u^2 - 1}{8} + \frac{v^2 - 1}{8} \pmod 2.$$

*Bizonyítás.* Az első két oldal különbsége $\frac{uv - 1 - (u - 1) - (v - 1)}{2} = \frac{(u - 1)(v - 1)}{2}$, ami páros, mert $u - 1$ és $v - 1$ is páros. A második két oldal különbsége $\frac{(u^2 - 1)(v^2 - 1)}{8}$, ami páros, mert $u^2 - 1$ és $v^2 - 1$ is osztható $8$-cal (páratlan szám négyzete $8k + 1$ alakú). $\blacksquare$

A segédállítást többször alkalmazva: ha $P = p_1 p_2 \cdots p_r$ (a prímtényezők között azonosak is lehetnek), akkor
$$\frac{P - 1}{2} \equiv \sum_{i=1}^r \frac{p_i - 1}{2}, \qquad \frac{P^2 - 1}{8} \equiv \sum_{i=1}^r \frac{p_i^2 - 1}{8} \pmod 2.$$

(d) $\left(\frac{-1}{P}\right) = \prod_i \left(\frac{-1}{p_i}\right) = \prod_i (-1)^{\frac{p_i - 1}{2}} = (-1)^{\sum_i \frac{p_i - 1}{2}} = (-1)^{\frac{P-1}{2}}$.

(e) Ugyanígy: $\left(\frac{2}{P}\right) = \prod_i (-1)^{\frac{p_i^2 - 1}{8}} = (-1)^{\frac{P^2 - 1}{8}}$.

(f) Legyen $P = p_1 \cdots p_r$ és $Q = q_1 \cdots q_s$ (azonos prímek is lehetnek, de $p_i \ne q_j$, mert $(P, Q) = 1$). A Jacobi-szimbólum multiplikativitása (mindkét „emeletben”) miatt
$$\left(\frac{P}{Q}\right)\left(\frac{Q}{P}\right) = \prod_{i, j}\left(\frac{p_i}{q_j}\right)\left(\frac{q_j}{p_i}\right) = \prod_{i, j}(-1)^{\frac{p_i - 1}{2}\cdot\frac{q_j - 1}{2}} = (-1)^{\left(\sum_i \frac{p_i - 1}{2}\right)\left(\sum_j \frac{q_j - 1}{2}\right)} = (-1)^{\frac{P - 1}{2}\cdot\frac{Q - 1}{2}},$$
ahol a második lépésben a kvadratikus reciprocitási tételt alkalmaztuk minden $(p_i, q_j)$ párra. $\blacksquare$

(A jegyzet az (e) és (f) részt kissé eltérő úton, a $4k + 3$, illetve $8k \pm 3$ alakú prímtényezők számának paritását vizsgálva igazolja; a gondolat ugyanaz.)

### 23.2. Négyzetgyökvonás modulo $p$

Eddig arról volt szó, mikor oldható meg az $x^2 \equiv a \pmod p$ kongruencia, de arról nem, hogyan lehet — ha megoldható — egy megoldást megtalálni. Elsőre talán meglepő, de erre is vannak gyors algoritmusok. Ilyen például a **Tonelli–Shanks-algoritmus**, amelyet Daniel Shanks 1973-ban publikált, és aki ezt írta róla:

> *„Azért késtem leírni a történelmi utalásokat, mert kölcsönadtam egy barátomnak a Dickson-féle History 1. kötetét, és soha nem kaptam vissza.”*

Leonard Dickson könyve szerint az algoritmus egy (redundánsabb) változata már 1891-ben létezett, Alberto Tonelli nevéhez kötődően. Ismert egy másik algoritmus is, René Peralta módszere (1986), amelynek egy ügyes, $2 \times 2$-es mátrixokon alapuló ismertetését Robin Chapman adta meg. Mindkét algoritmus megtalálható Gyarmati Katalin *Számítógépes számelmélet* című egyetemi jegyzetében (6.4. és 6.5. fejezet).

::: kiegeszites
**Kiegészítés: a $p \equiv 3 \pmod 4$ eset.** Ha $p \equiv 3 \pmod 4$ és $a$ kvadratikus maradék modulo $p$, akkor egy megoldás egyszerű képlettel megadható:
$$x \equiv a^{\frac{p+1}{4}} \pmod p.$$
Valóban, $\frac{p+1}{4}$ egész, és az Euler-lemma szerint
$$x^2 = a^{\frac{p+1}{2}} = a \cdot a^{\frac{p-1}{2}} \equiv a \cdot 1 = a \pmod p.$$
Például $x^2 \equiv 2 \pmod{23}$: $\left(\frac{2}{23}\right) = 1$ ($23 = 8 \cdot 3 - 1$), és $x \equiv 2^6 = 64 \equiv 18$; valóban $18^2 = 324 = 14 \cdot 23 + 2$. A másik megoldás $-18 \equiv 5$. A $p \equiv 1 \pmod 4$ eset (például a fenti $p = 61$) nehezebb; erre szolgálnak a Tonelli–Shanks- és Peralta-féle algoritmusok.
:::

## 24. Titkosítások

### 24.1. A monoalfabetikus rejtjel

A történelem során az egyik leggyakoribb titkosítási mód a **monoalfabetikus rejtjel** volt: minden betűt egy szimbólummal helyettesítenek, de ugyanazt a betűt mindig ugyanazzal. Ennek egy egyszerű formáját (minden betűt az ábécében három hellyel későbbire cserélve) már Julius Caesar is használta.

Rejtjelfejtők a mai napig gyakran kerülnek olyan helyzetbe, hogy monoalfabetikus rejtjelet kell megfejteniük — nemcsak titkosításoknál, hanem például akkor is, ha egy ismeretlen történelmi írásmódot szeretnének megfejteni. Szemléltetésül gondoljunk a székely–magyar rovásírásra: aki nem tudja, melyik jel melyik betűnek felel meg, annak a megfejtés akár órákba is telhet, de nem lehetetlen. A magyar nyelvben például a leggyakoribb betű az E, így a titkosított szövegben a leggyakrabban előforduló szimbólum valószínűleg az E-nek felel meg; hasonlóan azonosíthatók a következő leggyakoribb betűk, az A és a T jelei. Ezután rövid szavakat is érdemes vizsgálni: a magyarban nagyon gyakori az „az” névelő, vagyis az A jelét gyakran követi a Z jele. Ezt a módszert **gyakoriságelemzésnek** nevezzük.

Ha az olvasónak van kedve és ideje, érdemes elolvasnia a rejtjelezés egyik leghíresebb irodalmi megjelenését, Edgar Allan Poe *Az aranybogár* (1843) című novelláját, amelyben lényegében egy monoalfabetikus rejtjel megfejtése történik.

### 24.2. A Vernam-féle titkosító eljárás

A modern titkosítási rendszerek első lépése, hogy a szöveget számsorozattal írják le; például minden betűhöz hozzárendelünk egy rögzített hosszú $0$–$1$ sorozatot (a jegyzet ehhez egy $6$ bites kódtáblázatot ad meg, amelyben például $\text{A} = 000001$, $\text{B} = 000010$). Az így kódolt szöveg azonban betűgyakoriság-elemzéssel könnyen visszafejthető (a magyar szövegben az E kódja fordul elő a leggyakrabban), ezért ezt a számsorozatot titkosítani kell.

A **Vernam-féle titkosító eljárás** (Gilbert Vernam, 1917) során a bitsorozatként leírt üzenetet bitenként összeadjuk egy titkos kulcssorozattal:
$$\begin{aligned} \text{Üzenet:} &\quad (a_1, \dots, a_N) \in \{0, 1\}^N \\ \oplus\ \text{Titkos kulcs:} &\quad (e_1, \dots, e_N) \in \{0, 1\}^N \\ \text{Kódolt üzenet:} &\quad (f_1, \dots, f_N) \in \{0, 1\}^N, \qquad f_i = a_i \oplus e_i, \end{aligned}$$
ahol az összeadás modulo $2$ történik:
$$0 \oplus 0 = 0, \qquad 1 \oplus 1 = 0, \qquad 0 \oplus 1 = 1, \qquad 1 \oplus 0 = 1.$$
A visszafejtés ugyanígy megy: $f_i \oplus e_i = a_i \oplus e_i \oplus e_i = a_i$, hiszen $e_i \oplus e_i = 0$.

**Példa.** Üzenet: $101100$, kulcs: $011010$; a kódolt üzenet $110110$. A címzett ugyanazzal a kulccsal: $110110 \oplus 011010 = 101100$.

Ha a kulcs **valódi véletlen sorozat**, akkor a titkosítás során az üzenet minden bitje (egymástól függetlenül) azonos valószínűséggel változik meg, illetve marad változatlan; a kódolt üzenet ezért semmilyen információt nem árul el az üzenetről. Claude Shannon 1949-ben bebizonyította, hogy ez a módszer (ha a kulcsot csak egyszer használják) **tökéletes biztonságot** nyújt. Az eljárás fő hátránya, hogy a titkos kulcsnak ugyanolyan hosszúnak kell lennie, mint az üzenetnek, és egy kulcsot nem szabad kétszer felhasználni.

Valódi véletlen sorozatot előállítani hosszú, fáradságos és költséges folyamat. Ezen ma úgy segítenek, hogy számítógépekkel és számelméleti algoritmusokkal véletlennek tűnő, úgynevezett **pszeudovéletlen sorozatokat** állítanak elő. A területen írt első közös cikkükben (1997) Mauduit és Sárközy a már látott Legendre-szimbólumos konstrukciót adta meg:
$$E_{p-1} = \left(\left(\frac{1}{p}\right), \left(\frac{2}{p}\right), \dots, \left(\frac{p-1}{p}\right)\right).$$
Ez a konstrukció azonban minden $p$ prímre csak egyetlen sorozatot ad. Egy ügyes ötlettel Jeffrey Hoffstein és Daniel Lieman úgy terjesztette ki, hogy minden $p$ prímhez sok sorozatot kapjunk, megadva ezzel pszeudovéletlen sorozatoknak egy nagy családját:
$$E_p(f) = \left(\left(\frac{f(1)}{p}\right), \left(\frac{f(2)}{p}\right), \dots, \left(\frac{f(p)}{p}\right)\right),$$
ahol $f$ egész együtthatós polinom, és most $\left(\frac{0}{p}\right) \stackrel{\text{def}}{=} 1$. Például $p = 11$, $f(x) = x^2 + 1$ esetén a sorozat
$$-1, +1, -1, -1, +1, +1, -1, -1, +1, -1, +1.$$
Hoffstein és Lieman nem bizonyítottak semmit a sorozat pszeudovéletlen tulajdonságairól, csak állították, hogy erősen pszeudovéletlen. Louis Goubin, Christian Mauduit és Sárközy András (2004) bebizonyították, hogy néhány nem túl erős kikötést téve az $f$ polinomra, ezek a sorozatok statisztikai vizsgálatokkal nem különböztethetők meg a valódi véletlen sorozatoktól.

Ha a Vernam-féle eljárás kulcsaként a fenti, Legendre-szimbólummal megadott sorozatot használjuk, a feleknek elég a $p$ prímben és az $f$ polinom együtthatóiban megállapodniuk. Ezekben a számokban megállapodhatnak például a Diffie–Hellman-kulcscsere segítségével (22. fejezet), vagy a híres RSA-eljárással, amelyről a következő pontban lesz szó.

### 24.3. Az RSA

Ron Rivest, Adi Shamir és Leonard Adleman 1977-ben alkotta meg az egyik legismertebb titkosítási eljárást, az RSA-t (a név a szerzők nevének kezdőbetűiből ered; a cikk 1978-ban jelent meg). Az RSA évtizedek óta számtalan informatikai és kommunikációs rendszerben játszik jelentős szerepet. Az alkalmazás során nagyon fontos a körültekintő megvalósítás, és hogy az alapvető biztonsági szempontok mellett az apróságoknak tűnő dolgokra is ügyeljünk: ilyen például, hogy az algoritmusban szereplő $p$ és $q$ prímek ne legyenek túl közel egymáshoz; de más fontos feltételek is vannak, amelyek részletezésére nem térünk ki.

**A kulcsok előállítása.**

1. Legyen $N = pq$ két nagy, véletlenszerűen választott prím szorzata; ez az **RSA-modulus**. Ma $N$ tipikus hossza legalább $2048$ bit, ami $617$ decimális jegynek felel meg. (Az ajánlott kulcsméret a számítógépek és a faktorizációs módszerek fejlődésével folyamatosan nőtt: $512$, majd $1024$, ma legalább $2048$ bit.)
2. Mivel $N = pq$, ezért $\varphi(N) = (p - 1)(q - 1)$.
3. Válasszunk egy $e$ egészet, amelyre $(e, \varphi(N)) = 1$, és számítsuk ki azt a $d$-t, amelyre
$$ed \equiv 1 \pmod{\varphi(N)}.$$
(Ez egy lineáris kongruencia, amelyet az euklideszi algoritmussal gyorsan megoldunk.) Az $e$ a **nyilvános**, a $d$ a **titkos** (privát) kitevő.
4. Az $(N, e)$ pár a **nyilvános kulcs**, az $(N, d)$ pár a **titkos kulcs**. Az utóbbit csak az ismeri, akinek a titkosított üzeneteket küldik, és aki majd visszafejti őket.

**Titkosítás és visszafejtés.** Az üzenetet tekinthetjük egy $0 < M < N$ egész számnak. (Az egyszerűség kedvéért tegyük fel, hogy $(M, N) = 1$; ez az üzenet esetleges kis módosításával elérhető. Valójában erre a feltételre nincs szükség, csak az általános esetben a visszafejtés helyességének bizonyítása pár sorral hosszabb.)

- **A titkosított üzenet:** $C \equiv M^e \pmod N$ (ez az **RSA-függvény**).
- **A visszafejtés:** $M \equiv C^d \pmod N$.

Miért helyes a visszafejtés? Mivel $ed \equiv 1 \pmod{\varphi(N)}$, van olyan $k$ nemnegatív egész, amelyre $ed = k\varphi(N) + 1$. Az Euler–Fermat-tétel szerint
$$C^d \equiv (M^e)^d = M^{k\varphi(N) + 1} = \left(M^{\varphi(N)}\right)^k M \equiv 1^k \cdot M = M \pmod N.$$

**Egy játékpélda.** $p = 61$, $q = 53$, $N = 3233$, $\varphi(N) = 60 \cdot 52 = 3120$. Legyen $e = 17$ ($(17, 3120) = 1$); ekkor $d = 2753$, mert $17 \cdot 2753 = 46801 = 15 \cdot 3120 + 1$. Az $M = 65$ üzenet titkosítva $C = 65^{17} \bmod 3233 = 2790$, és visszafejtve $2790^{2753} \bmod 3233 = 65$.

::: kiegeszites
**Kiegészítés: a visszafejtés $(M, N) > 1$ esetén is helyes.** Elég belátni, hogy $M^{ed} \equiv M$ modulo $p$ és modulo $q$ is; ekkor a kínai maradéktétel (pontosabban a 13. fejezet lemmája) szerint modulo $N = pq$ is. Modulo $p$: ha $p \mid M$, akkor mindkét oldal $0$. Ha $p \nmid M$, akkor a kis Fermat-tétel szerint $M^{p-1} \equiv 1$, és mivel $p - 1 \mid \varphi(N) \mid ed - 1$, ezért $M^{ed} = M \cdot M^{ed-1} \equiv M \pmod p$. Modulo $q$ ugyanígy.
:::

**Miért biztonságos?** Az RSA-ban az $M \mapsto M^e \bmod N$ leképezés **egyirányú függvény** (pontosabban „csapóajtós” függvény): a titkosítás a nyilvános kulcs ismeretében moduláris hatványozással gyorsan elvégezhető — időigénye $O\big(\log e\,(\log N)^2\big)$ bitművelet —, az invertálás azonban a $d$ titkos kitevő ismerete nélkül nagyon nehéz. Az RSA elleni támadások nagy része arra irányul, hogy $d$ ismerete nélkül hogyan lehetne invertálni az RSA-függvényt, vagyis: ha csak az $(N, e, C)$ hármas ismert (és $p$, $q$, $d$ titkos), vissza tudjuk-e állítani $C$-ből az eredeti $M$ üzenetet.

Ha $p$-t és $q$-t ismernénk, $d$ könnyen kiszámolható volna: az $ex \equiv 1 \pmod{(p-1)(q-1)}$ lineáris kongruencia megoldása. De $p$ és $q$ titkos, csak $N = pq$ ismert, és $p$, $q$ meghatározásához $N$-et faktorizálni kell, ami nagy $N$ esetén nagyon-nagyon lassú. Ha $p$ és $q$ elég nagyok, $N$ faktorizálása még a mai számítógépekkel is (például évezredekig) tartana. Míg a faktorizálásra nem ismert gyors algoritmus, a fordított irányú műveletre — $p$ és $q$ ismeretében $N = pq$ kiszámítására — nagyon gyors algoritmusok vannak. Az RSA-ról bővebben (a helytelen alkalmazások buktatóiról is) Gyarmati Katalin *Számítógépes számelmélet* című jegyzetében olvashatunk.

## A VII. rész összefoglalása

- **Kvadratikus maradék** modulo $m$: olyan $a$, amelyre $x^2 \equiv a \pmod m$ megoldható. Modulo $p$ (páratlan prím) a nem nulla maradékok fele kvadratikus maradék.
- **Legendre-szimbólum:** $\left(\frac{a}{p}\right) = \pm 1$. **Euler-lemma:** $\left(\frac{a}{p}\right) \equiv a^{(p-1)/2} \pmod p$. Multiplikatív; $\left(\frac{-1}{p}\right) = (-1)^{(p-1)/2}$; $\left(\frac{2}{p}\right) = (-1)^{(p^2-1)/8}$.
- **Kvadratikus reciprocitás:** $\left(\frac{p}{q}\right)\left(\frac{q}{p}\right) = (-1)^{\frac{p-1}{2}\cdot\frac{q-1}{2}}$. Bizonyítás: Gauss-lemma ($\left(\frac{a}{p}\right) = (-1)^n$, $n$ = a $\frac{p}{2}$-nél nagyobb maradékok száma az $a, 2a, \dots, \frac{p-1}{2}a$ között) és rácspontszámlálás.
- **Jacobi-szimbólum:** összetett páratlan „nevezőre” kiterjesztve ugyanazok a szabályok érvényesek, így faktorizálás nélkül, az euklideszi algoritmushoz hasonlóan gyorsan számolható; de összetett modulusra nem dönti el a megoldhatóságot.
- **Négyzetgyökvonás modulo $p$:** Tonelli–Shanks, Peralta; $p \equiv 3 \pmod 4$ esetén $x \equiv a^{(p+1)/4}$.
- **Titkosítások:** monoalfabetikus rejtjel (gyakoriságelemzéssel törhető); Vernam ($\oplus$ véletlen kulccsal tökéletesen biztonságos; pszeudovéletlen kulcs: Legendre-sorozatok); **RSA:** $N = pq$, $ed \equiv 1 \pmod{\varphi(N)}$, $C = M^e$, $M = C^d \bmod N$; biztonsága a faktorizálás nehézségén múlik.

## Feladatok a VII. részhez

1. Döntsük el, megoldható-e az $x^2 \equiv 150 \pmod{1009}$ kongruencia ($1009$ prím).
2. Számítsuk ki a $\left(\frac{1001}{9907}\right)$ Legendre-szimbólumot ($9907$ prím) a) faktorizálással, b) Jacobi-szimbólumokkal.
3. Bizonyítsuk be, hogy ha $p > 3$ prím, akkor $\left(\frac{-3}{p}\right) = 1 \iff p \equiv 1 \pmod 3$.
4. Bizonyítsuk be, hogy végtelen sok $4k + 1$ alakú prím van. (Útmutatás: $(2p_1 \cdots p_k)^2 + 1$.)
5. Határozzuk meg az $x^2 \equiv 2 \pmod{119}$ kongruencia összes megoldását.
6. RSA kis számokkal: $p = 5$, $q = 11$, $e = 3$. Határozzuk meg $d$-t, titkosítsuk az $M = 7$ üzenetet, és ellenőrizzük a visszafejtést.
7. Miért nem szabad a Vernam-eljárásban ugyanazt a kulcsot két üzenethez felhasználni? (Útmutatás: mit kap a lehallgató, ha a két kódolt üzenetet bitenként összeadja?)

### Megoldási útmutatók

1. $\left(\frac{150}{1009}\right) = \left(\frac{2}{1009}\right)\left(\frac{3}{1009}\right)\left(\frac{25}{1009}\right)$. Itt $1009 \equiv 1 \pmod 8$, így $\left(\frac{2}{1009}\right) = 1$; $\left(\frac{3}{1009}\right) = \left(\frac{1009}{3}\right) = \left(\frac{1}{3}\right) = 1$; $\left(\frac{25}{1009}\right) = 1$. Tehát megoldható.
2. a) $1001 = 7 \cdot 11 \cdot 13$. $\left(\frac{7}{9907}\right) = -\left(\frac{9907}{7}\right) = -\left(\frac{2}{7}\right) = -1$ (mindkettő $4k + 3$ alakú); $\left(\frac{11}{9907}\right) = -\left(\frac{9907}{11}\right) = -\left(\frac{7}{11}\right) = -\left(-\left(\frac{11}{7}\right)\right) = \left(\frac{4}{7}\right) = 1$; $\left(\frac{13}{9907}\right) = \left(\frac{9907}{13}\right) = \left(\frac{1}{13}\right) = 1$. A szorzat: $-1$. b) $\left(\frac{1001}{9907}\right) = \left(\frac{9907}{1001}\right)$ (mert $1001 \equiv 1 \pmod 4$) $= \left(\frac{898}{1001}\right) = \left(\frac{2}{1001}\right)\left(\frac{449}{1001}\right)$; $1001 \equiv 1 \pmod 8$, így az első tényező $1$; $\left(\frac{449}{1001}\right) = \left(\frac{1001}{449}\right) = \left(\frac{103}{449}\right) = \left(\frac{449}{103}\right) = \left(\frac{37}{103}\right) = \left(\frac{103}{37}\right) = \left(\frac{29}{37}\right) = \left(\frac{37}{29}\right) = \left(\frac{8}{29}\right) = \left(\frac{2}{29}\right)^3 = -1$ ($29 \equiv 5 \pmod 8$). Az eredmény: $-1$.
3. $\left(\frac{-3}{p}\right) = \left(\frac{-1}{p}\right)\left(\frac{3}{p}\right) = (-1)^{\frac{p-1}{2}} \cdot (-1)^{\frac{p-1}{2}}\left(\frac{p}{3}\right) = \left(\frac{p}{3}\right)$, ami pontosan akkor $1$, ha $p \equiv 1 \pmod 3$.
4. Ha $q \mid N = (2p_1 \cdots p_k)^2 + 1$ prím, akkor $q$ páratlan, és $(2p_1 \cdots p_k)^2 \equiv -1 \pmod q$, tehát $\left(\frac{-1}{q}\right) = 1$, így $q \equiv 1 \pmod 4$; és $q \ne p_i$.
5. $119 = 7 \cdot 17$. Modulo $7$: $x \equiv \pm 3$; modulo $17$: $x \equiv \pm 6$ ($36 \equiv 2$). A négy kombináció a kínai maradéktétellel: $x \equiv 11, 45, 74, 108 \pmod{119}$.
6. $N = 55$, $\varphi(N) = 40$, $3d \equiv 1 \pmod{40}$, $d = 27$. $C = 7^3 = 343 \equiv 13 \pmod{55}$, és $13^{27} \equiv 7 \pmod{55}$.
7. Ha $f = a \oplus e$ és $f' = a' \oplus e$, akkor $f \oplus f' = a \oplus a'$: a kulcs kiesik, és a két üzenet bitenkénti összegéből gyakoriságelemzéssel már sok minden kiolvasható.

---

# VIII. RÉSZ: A PRÍMSZÁMOK ELOSZLÁSA

Az utolsó rész visszatér oda, ahonnan a 2. fejezetben elindultunk: hány prím van $x$-ig? Bebizonyítjuk Csebisev tételét, amely a prímszámtételt egy konstans szorzó erejéig megközelíti, és áttekintjük, mit tud ma a matematika a prímek eloszlásáról — a prímszámtételtől a Riemann-sejtésen át a prímhézagok XXI. századi áttöréseiig.

## 25. Prímszámok száma

A fejezetben főként $\pi(x)$-re adunk minél élesebb becsléseket; a létező legélesebb becslések bizonyítása azonban messze túlmegy könyvünk keretein, mert mély és technikás analízisbeli eszközöket kíván. A fejezet bizonyításainak és történeti áttekintésének egy részét Gyarmati Katalin Szalay Mihály *Számelmélet* című tankönyve alapján készítette, kisebb kiegészítésekkel.

### Történeti áttekintés

Adrien-Marie Legendre már 1798-ban azt sejtette, hogy $\pi(x)$ jól közelíthető egy
$$\frac{x}{A\log x + B}$$
alakú kifejezéssel, ahol $A$ és $B$ állandók. A sejtés igazolása felé Pafnutyij Lvovics Csebisev tette meg az első nagy lépést 1848 és 1852 között, annak bizonyításával, hogy $\pi(x)$ az $\frac{x}{\log x}$ két konstansszorosa közé esik. Tételét a következő formában mi is igazoljuk:

> **25.1. Tétel (Csebisev).** Ha $x \ge 2$, akkor
> $$0{,}34 \cdot \frac{x}{\log x} < \pi(x) < 4 \cdot \frac{x}{\log x}.$$

Csebisevnek azonban nem sikerült bizonyítania a
$$\lim_{x \to \infty}\frac{\pi(x)}{x / \log x}$$
határérték létezését — csak azt, hogy *ha* létezik, akkor szükségképpen $1$. Több mint negyven évet kellett várni, amíg a határérték létezését sikerült belátni. Ezt először Jacques Hadamard és Charles-Jean de la Vallée Poussin igazolta, egymástól függetlenül, 1896-ban:

> **25.2. Tétel (prímszámtétel).**
> $$\lim_{x \to \infty}\frac{\pi(x)}{x / \log x} = 1.$$

A prímszámtétel segítségével az $n$-edik prím nagyságára is becslést nyerhetünk:

> **25.3. Tétel.** Ha $p_1 = 2, p_2 = 3, p_3 = 5, \dots$ a prímek növekvő sorozata, akkor
> $$\lim_{n \to \infty}\frac{p_n}{n \log n} = 1.$$

(Ez a prímszámtételből adódik, $x = p_n$ helyettesítéssel: $n = \pi(p_n) \sim \frac{p_n}{\log p_n}$, és ebből — logaritmust véve — $\log p_n \sim \log n$, így $p_n \sim n \log p_n \sim n \log n$.)

Sőt, de la Vallée Poussin 1899-ben többet is igazolt: megbecsülte a prímszámtétel hibatagját.

> **25.4. Tétel.** Léteznek olyan $c_1$ és $c_2$ pozitív állandók, hogy
> $$\left|\pi(x) - \int_2^x \frac{dt}{\log t}\right| < c_1\, x\, e^{-c_2\sqrt{\log x}}.$$

### Az integrállogaritmus

Elsőre talán rejtélyes, miért jobb közelítése $\pi(x)$-nek az
$$\operatorname{Li}(x) = \int_2^x \frac{dt}{\log t}$$
**integrállogaritmus**, mint az $\frac{x}{\log x}$. Szemléletes magyarázat: a prímszámtétel szerint a $t$ szám környékén a prímek „sűrűsége” körülbelül $\frac{1}{\log t}$, és ezt a sűrűséget $2$-től $x$-ig összegezve (integrálva) $\operatorname{Li}(x)$-et kapjuk. Azt, hogy a prímek száma jól közelíthető ezzel az integrállal, már Gauss sejtette 1792 táján, 15 évesen — igaz, erre csak egy 72 éves korában (1849-ben) írt levelében utalt.

A $[2, 3000]$ intervallumon $\pi(x)$, $\operatorname{Li}(x)$ és $\frac{x}{\log x}$ grafikonját együtt ábrázolva jól látszik, hogy $\operatorname{Li}(x)$ sokkal közelebb van $\pi(x)$-hez, mint $\frac{x}{\log x}$. A kapcsolatot igazán akkor értjük meg, ha $\operatorname{Li}(x)$-et parciálisan integráljuk. Mivel $\left(\frac{t}{\log t}\right)' = \frac{1}{\log t} - \frac{1}{(\log t)^2}$, ezért
$$\int_2^x \frac{dt}{\log t} = \frac{x}{\log x} - \frac{2}{\log 2} + \int_2^x \frac{dt}{(\log t)^2}.$$
Még egyszer parciálisan integrálva, felhasználva, hogy $\left(\frac{t}{(\log t)^2}\right)' = \frac{1}{(\log t)^2} - \frac{2}{(\log t)^3}$:
$$\int_2^x \frac{dt}{\log t} = \frac{x}{\log x} + \frac{x}{(\log x)^2} + 2\int_2^x \frac{dt}{(\log t)^3} - \frac{2}{\log 2} - \frac{2}{(\log 2)^2}.$$
Az eljárást folytatva egyre finomabb közelítéseit kapjuk $\operatorname{Li}(x)$-nek: a főtag $\frac{x}{\log x}$, de a második, $\frac{x}{(\log x)^2}$ nagyságrendű tag is jelentős — ezért jobb közelítés $\operatorname{Li}(x)$.

**Egy évszázados tévedés.** Gauss és mások számításai alapján (Gauss a prímeket $3$ millióig összeszámolta) sokáig úgy tűnt, hogy (a legkisebb értékektől eltekintve) minden $x$-re $\pi(x) < \operatorname{Li}(x)$. Ezt a sejtést csak 1914-ben cáfolta John Edensor Littlewood: megmutatta, hogy $\pi(x) - \operatorname{Li}(x)$ végtelen sokszor előjelet vált. Az első előjelváltás azonban óriási számnál következik be: számítógépes vizsgálatok szerint $10^{19}$ alatt még nincs ellenpélda, másrészt Chao és Plymen 2005-ben igazolta, hogy van $10^{317}$-nél kisebb ellenpélda.

### A Csebisev-tétel bizonyítása

Az előbb említett tételek közül csak Csebisev tételét bizonyítjuk, hiszen csak annak bizonyítása érhető el elemi eszközökkel. A 25.1. Tétel felső becslésének bizonyítása a következő, önmagában is érdekes tételen alapul.

> **25.5. Tétel.** Minden $x \ge 1$ valós számra az $x$-nél nem nagyobb prímek szorzata
> $$\prod_{p \le x} p < 4^x.$$

*Bizonyítás (Erdős Pál és Kalmár László).* Feltehetjük, hogy $x = n$ egész szám (a bal oldal $[x]$-től függ, a jobb oldal $x$-szel nő). Teljes indukcióval bizonyítunk. Az $n = 1$ és $n = 2$ eset nyilvánvaló ($1 < 4$, $2 < 16$). Legyen $n \ge 3$, és tegyük fel, hogy az állítás minden $n$-nél kisebb pozitív egészre igaz.

**Ha $n$ páros,** akkor $n \ge 4$ miatt $n$ összetett, így
$$\prod_{p \le n} p = \prod_{p \le n - 1} p < 4^{n-1} < 4^n.$$

**Ha $n$ páratlan,** $n = 2k + 1$ ($k \ge 1$), akkor a szorzatot két részre bontjuk:
$$\prod_{p \le 2k+1} p = \left(\prod_{p \le k + 1} p\right)\left(\prod_{k + 2 \le p \le 2k + 1} p\right). \qquad (25.1)$$
Az indukciós feltevés szerint (mivel $k + 1 < 2k + 1$) az első zárójelben álló szorzat kisebb, mint $4^{k+1}$. A második zárójelben álló prímek mind osztói a
$$(k + 2)(k + 3)\cdots(2k + 1) = \frac{(2k + 1)!}{(k + 1)!} = k!\binom{2k + 1}{k}$$
számnak. Mivel ezek a prímek nagyobbak $k$-nál, relatív prímek $k!$-hoz, így (Eukleidész I. tétele szerint) osztói $\binom{2k+1}{k}$-nak; különböző prímek lévén a szorzatuk is osztója. Becsüljük tehát $\binom{2k+1}{k}$-t:
$$\binom{2k + 1}{k} = \frac{(2k+1)!}{k!\,(k+1)!} = \frac{(2 \cdot 4 \cdots 2k)\cdot(3 \cdot 5 \cdots (2k + 1))}{k!\,(k+1)!} = \frac{2^k \cdot 3 \cdot 5 \cdots (2k + 1)}{2 \cdot 3 \cdots (k + 1)} < \frac{2^k \cdot 4 \cdot 6 \cdots (2k + 2)}{2 \cdot 3 \cdots (k + 1)} = 2^k \cdot 2^k = 4^k.$$
(A harmadik lépésben $2 \cdot 4 \cdots 2k = 2^k k!$-sal egyszerűsítettünk, a negyedikben a páratlan tényezőket eggyel nagyobbra cseréltük, végül $4 \cdot 6 \cdots (2k + 2) = 2^k \cdot 2 \cdot 3 \cdots (k+1)$.) Így (25.1) alapján
$$\prod_{p \le 2k + 1} p < 4^{k+1} \cdot 4^k = 4^{2k + 1},$$
ami éppen a bizonyítandó állítás. $\blacksquare$

(Ugyanez a becslés rövidebben is megkapható: $\binom{2k+1}{k} = \binom{2k+1}{k+1}$, és ez a két tag szerepel az $(1 + 1)^{2k+1} = 2^{2k+1}$ binomiális kifejtésében, így $2\binom{2k+1}{k} \le 2^{2k+1}$, azaz $\binom{2k+1}{k} \le 4^k$.)

*A 25.1. Tétel felső becslésének bizonyítása (Erdős és Kalmár).* A 25.5. Tétel szerint
$$4^x > \prod_{\sqrt{x} < p \le x} p \ge \left(\sqrt{x}\right)^{\pi(x) - \pi(\sqrt{x})} \ge \left(\sqrt{x}\right)^{\pi(x) - \sqrt{x}},$$
hiszen a szorzatban $\pi(x) - \pi(\sqrt{x})$ darab, $\sqrt{x}$-nél nagyobb tényező áll, és $\pi(\sqrt{x}) \le \sqrt{x}$. A két szélső mennyiség logaritmusát véve:
$$x \log 4 > \big(\pi(x) - \sqrt{x}\big)\frac{\log x}{2}, \qquad \pi(x) < \frac{(2\log 4)\, x}{\log x} + \sqrt{x} = \left(2\log 4 + \frac{\log x}{\sqrt{x}}\right)\frac{x}{\log x}.$$
Itt $\frac{\log x}{\sqrt{x}} < 0{,}8$ minden $x \ge 2$-re. Valóban, az $h(x) = \frac{\log x}{\sqrt{x}}$ függvény deriváltja $h'(x) = \frac{2 - \log x}{2x^{3/2}}$, így $h$ az $x = e^2$ helyen veszi fel a maximumát, amely $h(e^2) = \frac{2}{e} \approx 0{,}736 < 0{,}8$. (A jegyzet ezt úgy ellenőrzi, hogy $x = 2, 3, \dots, 8$-ra kiszámolja, $x \ge 8$-ra pedig $h$ csökkenő.) Tehát, mivel $2\log 4 \approx 2{,}773$,
$$\pi(x) < (2\log 4 + 0{,}8)\frac{x}{\log x} < 4\frac{x}{\log x}. \ \blacksquare$$

**Az alsó becslés** bizonyítása Edmund Landau munkája. Ehhez a **Legendre-formulát** használjuk, amely megadja, hogy egy prím milyen kitevővel szerepel $n!$ kanonikus alakjában.

> **25.6. Lemma (Legendre-formula).** Legyen $n$ pozitív egész, $p$ prím, és $k$ az a nemnegatív egész, amelyre $p^k \le n < p^{k+1}$. Ekkor $n!$ kanonikus alakjában $p$ kitevője
> $$\left[\frac{n}{p}\right] + \left[\frac{n}{p^2}\right] + \left[\frac{n}{p^3}\right] + \dots + \left[\frac{n}{p^k}\right].$$

*Bizonyítás.* Az $n!$ az $1, 2, \dots, n$ számok szorzata. Ezek közül $\left[\frac{n}{p}\right]$ darab osztható $p$-vel; mindegyik legalább $1$-gyel járul hozzá a kitevőhöz. A számok között $p^2$-tel oszthatók is vannak, $\left[\frac{n}{p^2}\right]$ darab; ezek még egy-egy egyest adnak hozzá. Az eljárást folytatva a kitevőhöz hozzáadjuk még a $p^3, \dots, p^k$-nal osztható számok számát, és ezzel készen vagyunk, hiszen $p^{k+1}$-nel osztható szám már nincs az $1, \dots, n$ között. (Így minden $m \le n$ szám pontosan annyiszor számít, ahányadik hatványa $p$-nek osztja.) $\blacksquare$

**Példa.** A $100!$ kanonikus alakjában a $2$ kitevője $50 + 25 + 12 + 6 + 3 + 1 = 97$, az $5$ kitevője $20 + 4 = 24$. Ezért a $100!$ pontosan $24$ nullára végződik.

*A 25.1. Tétel alsó becslésének bizonyítása (Landau).* Tekintsük a $\binom{2n}{n}$ binomiális együtthatót, és írjuk fel kanonikus alakját:
$$\binom{2n}{n} = \frac{(2n)!}{(n!)^2} = \prod_{p \le 2n} p^{\beta_p}. \qquad (25.2)$$
(Csak $2n$-nél nem nagyobb prímek szerepelhetnek, mert csak ezek osztják $(2n)!$-t.) A Legendre-formula szerint
$$\beta_p = \sum_{j=1}^{k_p}\left(\left[\frac{2n}{p^j}\right] - 2\left[\frac{n}{p^j}\right]\right),$$
ahol $p^{k_p} \le 2n < p^{k_p + 1}$. Minden $y$ valós számra $[2y] - 2[y] \in \{0, 1\}$ (ha $y = [y] + \{y\}$, akkor $[2y] - 2[y] = [2\{y\}]$, ami $0$ vagy $1$), így
$$\beta_p \le \sum_{j=1}^{k_p} 1 = k_p, \qquad \text{tehát} \qquad p^{\beta_p} \le p^{k_p} \le 2n.$$
Ezt (25.2)-be írva (a szorzatnak $\pi(2n)$ tényezője van):
$$\binom{2n}{n} = \prod_{p \le 2n} p^{\beta_p} \le (2n)^{\pi(2n)}.$$
Most alulról is becsüljük ugyanezt a binomiális együtthatót:
$$\binom{2n}{n} = \frac{(2 \cdot 4 \cdots 2n)\cdot(1 \cdot 3 \cdot 5 \cdots (2n - 1))}{n!\,n!} = \frac{2^n \cdot 3 \cdot 5 \cdots (2n - 1)}{n!} \ge \frac{2^n \cdot 2 \cdot 4 \cdots (2n - 2)}{n!} = \frac{2^n \cdot 2^{n-1}(n - 1)!}{n!} = \frac{2^{2n-1}}{n} = \frac{2^{2n}}{2n}.$$
A két becslést összevetve
$$(2n)^{\pi(2n)} \ge \frac{2^{2n}}{2n}, \qquad \text{azaz} \qquad \pi(2n)\log(2n) \ge 2n\log 2 - \log(2n),$$
ahonnan
$$\pi(2n) + 1 \ge \log 2 \cdot \frac{2n}{\log(2n)}.$$
Ezzel páros egészekre lényegében beláttuk az alsó becslést. Tetszőleges $x \ge 2$ valós számra legyen $n = \left[\frac{x}{2}\right] \ge 1$; ekkor $2n \le x < 2n + 2$, tehát $2n > x - 2$ és $\log(2n) \le \log x$. Így
$$\pi(x) \ge \pi(2n) \ge \log 2 \cdot \frac{2n}{\log(2n)} - 1 \ge \log 2 \cdot \frac{x - 2}{\log x} - 1 = \log 2 \cdot \frac{x}{\log x} - \frac{2\log 2}{\log x} - 1 \ge \log 2 \cdot \frac{x}{\log x} - 3,$$
ahol az utolsó lépésben $\log x \ge \log 2$-t használtuk. Végül $\log 2 \approx 0{,}693$, és
$$\log 2 \cdot \frac{x}{\log x} - 3 > 0{,}34\,\frac{x}{\log x} \iff (\log 2 - 0{,}34)\frac{x}{\log x} > 3,$$
ami teljesül, ha $\frac{x}{\log x} > 8{,}5$, például minden $x \ge 29$-re. A kis $x$-ekre ($2 \le x < 29$) az állítás közvetlenül ellenőrizhető (például $x = 2$-re $\pi(2) = 1 > 0{,}34 \cdot \frac{2}{\log 2} \approx 0{,}98$; a legszorosabb eset ez, a többi kényelmesebben teljesül). Ezzel a 25.1. Tétel bizonyítását befejeztük. $\blacksquare$

### Bertrand posztulátuma

Ha a 25.1. Tételnél kicsit élesebb becslést tudnánk adni (mondjuk $0{,}75\frac{x}{\log x} < \pi(x) < 1{,}5\frac{x}{\log x}$ alakút), abból — elég nagy $n$-re — kijönne, hogy $\pi(n) < \pi(2n)$, vagyis hogy $n$ és $2n$ közé mindig esik prím. Ezt Joseph Bertrand sejtette először 1845-ben (ellenőrizte $n < 3\,000\,000$-ig), ezért **Bertrand-posztulátumként** ismert; a sejtést Csebisev igazolta 1852-ben.

> **25.7. Tétel (Csebisev).** Minden $n$ pozitív egészre van olyan $p$ prím, amelyre $n < p \le 2n$.

A tételnek elemi bizonyítása is ismert (Srinivasa Ramanujan 1919-ben, Erdős Pál 1932-ben adott ilyet; az utóbbi Aigner és Ziegler könyvében is megtalálható).

### A Riemann-sejtés

A prímszámok eloszlásához kapcsolódik a matematika talán leghíresebb nyitott kérdése, a **Riemann-sejtés**, amelyet Bernhard Riemann 1859-ben, a prímszámok számáról írt — egyetlen számelméleti témájú — dolgozatában fogalmazott meg. Riemann eredményei, noha nagy részüket nem bizonyította, óriási hatással voltak a számelméletre. A sejtés pontos ismertetése túlmegy könyvünk keretein; annyit említünk, hogy a
$$\zeta(s) = \sum_{n=1}^\infty \frac{1}{n^s}$$
sor ($\operatorname{Re} s > 1$-re konvergens) analitikus kiterjesztésének, a **Riemann-féle zéta-függvénynek** az úgynevezett nem triviális gyökeiről szól: azt állítja, hogy ezek mind a komplex számsík $\operatorname{Re} s = \frac{1}{2}$ egyenesén helyezkednek el. Helge von Koch 1901-es eredménye szerint a sejtés ekvivalens azzal, hogy létezik olyan $c$ pozitív konstans, amelyre
$$|\pi(x) - \operatorname{Li}(x)| < c\sqrt{x}\log x \qquad (x \ge 2).$$
A Riemann-sejtés tehát lényegében azt mondja, hogy a prímszámtétel hibatagja a lehető legkisebb.

### Éles explicit becslések

Noha $\operatorname{Li}(x)$ lényegesen jobb közelítése $\pi(x)$-nek, mint $\frac{x}{\log x}$, sok alkalmazásban elég $\pi(x)$-et $\frac{x}{\log x}$-szel közelíteni. Az ilyen típusú becslések között is vannak élesebbek és kevésbé élesek; ezek közül említünk néhányat (bizonyítás nélkül).

- J. B. Rosser és L. Schoenfeld (1962): ha $x \ge 17$, akkor
$$\frac{x}{\log x} < \pi(x) < 1{,}25506\,\frac{x}{\log x}$$
(a felső becslés minden $x > 1$-re igaz).
- P. Dusart (2018): minden $x > 1$-re
$$\pi(x) \le \frac{x}{\log x}\left(1 + \frac{1}{\log x} + \frac{2}{(\log x)^2} + \frac{7{,}59}{(\log x)^3}\right).$$
- Az $n$-edik prímre, $n \ge 6$ esetén:
$$n\big(\log(n\log n) - 1\big) < p_n < n\log(n\log n),$$
ahol a felső becslés Rossertől, az alsó Dusarttól (1999) származik.

Érdemes ismerni a prímek eloszlásával kapcsolatos további fontos eredményeket is, például **Mertens három tételét** (1874), amelyek közül az egyik szerint $\sum_{p \le x}\frac{1}{p} = \log\log x + M + o(1)$ — ez a 2.23. Tétel (a prímek reciprokösszege végtelen) kvantitatív változata.

### Prímek számtani sorozatokban

> **25.8. Tétel (Dirichlet, 1837).** Ha $a$ és $b$ relatív prím egészek, $b \ne 0$, akkor az
> $$a, \ a + b, \ a + 2b, \ \dots$$
> számtani sorozat végtelen sok prímet tartalmaz.

Speciális eseteket már láttunk: a $4k + 3$ és a $4k + 1$ alakú prímek végtelenségét (I. és VII. rész feladatai). Az általános bizonyítás nagyon mély, messze túlmegy könyvünk keretein. Ugyanígy bizonyítás nélkül említjük a modern számelmélet egyik legfontosabb, prímekkel kapcsolatos eredményét, amely Ben Greentől és Terence Taótól származik (2004, megjelent 2008-ban):

> **25.9. Tétel (Green–Tao).** A prímszámok között van tetszőlegesen hosszú számtani sorozat.

(Például $3, 5, 7$ vagy $5, 11, 17, 23, 29$ öt prímből álló számtani sorozat.)

### Prímhézagok

Fontos modern eredmények kapcsolódnak a prímhézagok becsléséhez is. Jelölje $d_n$ az $(n + 1)$-edik és az $n$-edik prím különbségét:
$$d_n = p_{n+1} - p_n.$$
A prímszámtételből azonnal következik, hogy $d_n$ „átlagosan” $\log n$ nagyságú, és így végtelen sokszor kisebb, mint $(1 + \varepsilon)\log n$. Ezt a becslést folyamatosan javították (Erdős, Bombieri és Davenport, Maier és mások). 2005 körül áttörő eredményt ért el Daniel Goldston, **Pintz János** és Cem Yıldırım: bebizonyították, hogy tetszőleges $\varepsilon > 0$ esetén végtelen sokszor teljesül
$$d_n < \varepsilon \log n,$$
sőt (egy 2010-ben megjelent folytatásban) végtelen sokszor $d_n < (\log n)^{1/2 + \varepsilon}$ is.

Ezután sikerült bebizonyítani, hogy $d_n$ végtelen sokszor kisebb egy *konstansnál*! Jitang Csang (Yitang Zhang) 2013-ban igazolta, hogy $d_n$ végtelen sokszor kisebb $70$ milliónál. Ezt a korlátot James Maynard és Terence Tao módszereivel a Polymath 8b nevű közös kutatási projekt (2014) $246$-ra csökkentette:
$$d_n \le 246 \qquad \text{végtelen sok } n\text{-re}.$$
Megközelítettük tehát, de még nem bizonyítottuk be a híres **ikerprím-sejtést**, amely szerint végtelen sok olyan $p$ prím van, amelyre $p + 2$ is prím (vagyis $d_n = 2$ végtelen sokszor).

## A VIII. rész összefoglalása

- **Csebisev:** $0{,}34\frac{x}{\log x} < \pi(x) < 4\frac{x}{\log x}$. A felső becslés kulcsa (Erdős–Kalmár): $\prod_{p \le x} p < 4^x$, mert a $(k+1, 2k+1]$ intervallum prímjeinek szorzata osztja $\binom{2k+1}{k} < 4^k$-t. Az alsó becslés (Landau): $\binom{2n}{n}$ minden prímhatvány-tényezője legfeljebb $2n$ (Legendre-formula), és $\binom{2n}{n} \ge \frac{4^n}{2n}$.
- **Prímszámtétel** (Hadamard, de la Vallée Poussin, 1896): $\pi(x) \sim \frac{x}{\log x}$, $p_n \sim n\log n$; jobb közelítés $\operatorname{Li}(x)$. A Riemann-sejtés a hibatag nagyságrendjéről szól.
- **Bertrand-posztulátum:** $n$ és $2n$ között mindig van prím. **Dirichlet:** relatív prím $a, b$-re az $a + kb$ sorozatban végtelen sok prím van. **Green–Tao:** tetszőlegesen hosszú számtani sorozatok a prímek között. **Prímhézagok:** $p_{n+1} - p_n \le 246$ végtelen sokszor.

## Feladatok a VIII. részhez

1. Hány nullára végződik a $2026!$?
2. Igazoljuk a Legendre-formula segítségével, hogy $\binom{2n}{n}$ osztható minden $n < p \le 2n$ prímmel, de nem osztható egyetlen $\frac{2n}{3} < p \le n$ prímmel sem (ha $n \ge 3$).
3. Bizonyítsuk be, hogy minden $y$ valós számra $[2y] - 2[y] \in \{0, 1\}$.
4. A 25.5. Tétel segítségével mutassuk meg, hogy $\pi(x) < 2\log 4 \cdot \frac{x}{\log x} + \sqrt{x}$, és számítsuk ki a jobb oldalt $x = 10^6$-ra. Vessük össze a valódi értékkel: $\pi(10^6) = 78498$.
5. Mutassuk meg, hogy minden $n \ge 2$-re $\binom{2n}{n} < 4^n$, és $\binom{2n}{n} \ge \frac{4^n}{2n}$.

### Megoldási útmutatók

1. Az $5$ kitevője: $\left[\frac{2026}{5}\right] + \left[\frac{2026}{25}\right] + \left[\frac{2026}{125}\right] + \left[\frac{2026}{625}\right] = 405 + 81 + 16 + 3 = 505$; a $2$ kitevője ennél nagyobb, így $505$ nullára végződik.
2. Ha $n < p \le 2n$, akkor $p$ kitevője $(2n)!$-ban $1$, $(n!)^2$-ben $0$. Ha $\frac{2n}{3} < p \le n$ és $n \ge 3$, akkor $p^2 > \frac{4n^2}{9} \ge 2n$ (mert $n \ge 4{,}5$-re $\frac{4n^2}{9} \ge 2n$; $n = 3$ és $n = 4$ esetén az egyetlen szóba jövő prím $p = 3$, és $p^2 = 9 > 2n$), így $p$ kitevője $\left[\frac{2n}{p}\right] - 2\left[\frac{n}{p}\right] = 2 - 2 = 0$.
3. $y = m + t$, $m = [y]$, $0 \le t < 1$: $[2y] - 2[y] = [2t] \in \{0, 1\}$.
4. A bizonyításban kapott becslés: $\pi(10^6) < 2{,}7726 \cdot \frac{10^6}{13{,}8155} + 1000 \approx 201\,687$. A valódi érték $78\,498$; a becslés tehát kb. $2{,}6$-szoros. (Összehasonlításul $\frac{10^6}{\log 10^6} \approx 72\,382$, $\operatorname{Li}(10^6) \approx 78\,626$.)
5. $\binom{2n}{n}$ az $(1 + 1)^{2n} = 4^n$ binomiális kifejtés egyik ($n \ge 1$-re nem az egyetlen) tagja, így kisebb $4^n$-nél. Az alsó becslést a fejezetben láttuk: $\binom{2n}{n} \ge \frac{2^{2n-1}}{n}$. (Másképp: a $2n + 1$ binomiális együttható közül $\binom{2n}{n}$ a legnagyobb, összegük $4^n$, így $\binom{2n}{n} \ge \frac{4^n}{2n + 1}$.)

---

# UTÓSZÓ

Ezzel a jegyzet és a könyv végére értünk. A két fejezettel ezelőtti RSA-tól visszatekintve érdemes végigkövetni, milyen hosszú, egymásra épülő gondolatmenet vezetett ide:

$$\text{maradékos osztás} \longrightarrow \text{euklideszi algoritmus} \longrightarrow \text{Bézout} \longrightarrow \text{Eukleidész I. tétele} \longrightarrow \text{SzAT}$$
$$\longrightarrow \text{kongruenciák} \longrightarrow \text{Euler–Fermat} \longrightarrow \text{moduláris hatványozás, lineáris kongruenciák} \longrightarrow \text{RSA}.$$

Egy másik szál a fokszámtételen át a primitív gyökökhöz, a diszkrét logaritmushoz és a Diffie–Hellman-kulcscseréhez vezetett; egy harmadik a Legendre-szimbólumhoz és Gauss „aranytételéhez”, a kvadratikus reciprocitáshoz; egy negyedik Eukleidész végtelen sok prímjétől Csebisev tételéig és a mai kutatások határáig.

A számelmélet különleges helyet foglal el a matematikában: kérdései olyan egyszerűek, hogy egy általános iskolás is megérti őket, a válaszok pedig olykor évszázadokig váratnak magukra — a Fermat-sejtésre 358 évet kellett várni, a Goldbach-sejtés és az ikerprím-sejtés ma is nyitott. Ugyanakkor a „legtisztább” matematikának tartott terület eredményei ma minden bankkártyás fizetésben és minden titkosított üzenetben ott vannak.

A könyv anyaga, felépítése és szelleme Gyarmati Katalin *Elemi Számelmélet* című egyetemi jegyzetéből származik; a szerző a jegyzetet ezzel a mondattal zárja, amelyet mi is szívesen átveszünk: *további kellemes időtöltést kívánunk!*
