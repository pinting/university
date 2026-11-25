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
