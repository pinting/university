# Analízis 1 Tankönyv

### Bevezetés a differenciál- és integrálszámítás alapfogalmaiba, lépésről lépésre

---

> *„A matematikát nem nézni kell, hanem csinálni.”*

---

## Előszó

Ez a könyv az *Analízis 1 Jegyzet* tankönyvváltozata. A jegyzet tömör: kimondja a definíciókat és a tételeket, és többnyire végig is vezeti a bizonyításokat, de feltételezi, hogy az olvasó az előadáson már hallotta a magyarázatot, látta a rajzokat, és tudja, *miért* éppen így épül fel az anyag. Ez a könyv ezt a hiányzó réteget pótolja. Ugyanazt az utat járja be, ugyanabban a sorrendben, de lassabban: minden új fogalom előtt megmutatja, milyen kérdés teszi szükségessé, minden definíció után példákon és ellenpéldákon próbálja ki, és minden bizonyításnál elmondja a mögötte álló ötletet is, nemcsak a lépéseit.

**A számozás megegyezik a jegyzetével.** Az 1–86. szakasz címe és tartalma a jegyzet azonos számú szakaszának felel meg, így a kettő párhuzamosan olvasható: ha a jegyzet egy pontja túl tömörnek tűnik, ugyanazon a számon itt megtalálható a részletes kifejtés. Egyetlen kiegészítés van: a könyv egy rövid *Előkészületek* résszel kezdődik (A–D. szakasz), amely a matematikai logika és a halmazok nyelvét foglalja össze. Erre azért van szükség, mert az analízis definíciói — különösen a határértéké — hosszú, kvantorokkal teli mondatok, és ezek olvasását, tagadását külön meg kell tanulni.

### Hogyan használjuk ezt a könyvet?

**Lassan.** Egy matematikai szöveg nem regény. Egy definíciót akkor értettünk meg, ha (1) el tudjuk mondani a saját szavainkkal, (2) tudunk rá példát és ellenpéldát mondani, és (3) tudjuk, mit jelent a tagadása. Egy tételt akkor értettünk meg, ha tudjuk, melyik feltétele mire kell, és mi romlik el, ha elhagyjuk. Ezért a könyv szinte minden tétel után megmutatja, miért nem lehet a feltételeken lazítani.

**Ceruzával.** A számolásokat érdemes papíron követni. Ahol a szöveg azt írja, „könnyen ellenőrizhető”, ott valóban ellenőrizni kell.

**A feladatokkal.** Minden rész végén gyakorló feladatok és rövid megoldási útmutatók állnak. Az útmutatót csak akkor nézzük meg, ha már legalább negyedórát gondolkodtunk a feladaton — a megértés ugyanis nagyrészt ebben a negyedórában történik.

### A könyvben használt jelölések

A szövegben a következő típusú egységek fordulnak elő:

- **Definíció** — egy új fogalom pontos jelentésének rögzítése. Definíciót nem bizonyítunk: megállapodunk benne.
- **Tétel** — bizonyított állítás. Kisebb jelentőségű tételeket **állításnak**, más tételek bizonyítását előkészítő segédtételeket **lemmának**, egy tételből közvetlenül adódó állításokat **következménynek** nevezünk.
- **Bizonyítás** — a tétel igazolása. Végét a $\blacksquare$ jel mutatja.
- **Példa**, **Kidolgozott példa** — a fogalmak kipróbálása konkrét eseteken.
- **Megjegyzés**, **Figyelem** — magyarázat, tipikus hibák, történeti háttér.

A definíciókat és a fontos tételeket a szövegtől elkülönítve, behúzott blokkban szedtük, hogy ismétléskor könnyen megtalálhatók legyenek.

---

# ELŐKÉSZÜLETEK: A MATEMATIKA NYELVE

Mielőtt a valós számokról bármit mondanánk, tisztáznunk kell, *hogyan* fogunk beszélni. A matematikai nyelv a hétköznapi nyelv egy szigorúbb változata: ugyanazokat a szavakat használja („és”, „vagy”, „ha … akkor”, „minden”, „van olyan”), de mindegyiknek pontosan rögzített jelentést ad. Ez a rész rövid; a benne szereplő szabályokat azonban az egész félév során folyamatosan használni fogjuk.

## A. Állítások és logikai műveletek

**Állításnak** nevezünk minden olyan kijelentést, amelyről egyértelműen eldönthető, hogy igaz vagy hamis. „A $7$ prímszám” igaz állítás; „$2 + 2 = 5$” hamis állítás; „Az $x$ szám pozitív” viszont nem állítás, amíg nem tudjuk, mi az $x$ — ez egy *változótól függő* állítás (állításforma), amely bizonyos $x$-ekre igaz, másokra hamis.

Állításokból logikai műveletekkel újabb állításokat képezhetünk. Legyen $A$ és $B$ két állítás.

- **Tagadás (negáció):** „nem $A$”, jelölése $\neg A$ vagy $\overline{A}$. Pontosan akkor igaz, ha $A$ hamis.
- **Konjunkció:** „$A$ és $B$”, jelölése $A \wedge B$. Pontosan akkor igaz, ha mindkettő igaz.
- **Diszjunkció:** „$A$ vagy $B$”, jelölése $A \vee B$. Pontosan akkor igaz, ha legalább az egyik igaz. A matematikai „vagy” tehát **megengedő**: ha mindkettő igaz, a „vagy” is igaz. (A hétköznapi nyelvben a „vagy” néha kizáró — „vagy jössz, vagy maradsz” —, a matematikában soha.)
- **Implikáció:** „ha $A$, akkor $B$”, jelölése $A \implies B$. Ez **csak akkor hamis, ha $A$ igaz és $B$ hamis**; minden más esetben igaz.
- **Ekvivalencia:** „$A$ akkor és csak akkor, ha $B$”, jelölése $A \iff B$. Pontosan akkor igaz, ha $A$ és $B$ igazságértéke megegyezik. Rövidítése: „acsa”.

Az implikáció igazságtáblája szokatlannak tűnhet, ezért nézzük meg közelebbről:

| $A$ | $B$ | $A \implies B$ |
|---|---|---|
| igaz | igaz | igaz |
| igaz | hamis | **hamis** |
| hamis | igaz | igaz |
| hamis | hamis | igaz |

Az utolsó két sor szerint hamis feltételből bármi következik. Ez egy ígérettel szemléltethető: „Ha holnap esik az eső, elviszlek autóval.” Ha nem esik az eső, akkor az ígéretet nem szegtem meg, akár elviszlek, akár nem. Az ígéret egyetlen esetben sérül: ha esik, és mégsem viszlek el.

**Szükséges és elégséges feltétel.** Az $A \implies B$ implikációt úgy is mondjuk, hogy „$A$ **elégséges** feltétele $B$-nek”, illetve „$B$ **szükséges** feltétele $A$-nak”. Például: „ha egy szám osztható $4$-gyel, akkor páros”. A $4$-gyel való oszthatóság elégséges a párossághoz (de nem szükséges: a $6$ páros, de nem osztható $4$-gyel); a párosság szükséges a $4$-gyel való oszthatósághoz (de nem elégséges). Az $A \iff B$ ekvivalencia azt jelenti, hogy $A$ szükséges **és** elégséges feltétele $B$-nek.

**Megfordítás és kontrapozíció.** Az $A \implies B$ implikáció **megfordítása** a $B \implies A$ implikáció, **kontrapozíciója** pedig a $\neg B \implies \neg A$ implikáció. A kettő között óriási a különbség:

- A kontrapozíció **mindig ekvivalens** az eredeti állítással. („Ha $4 \mid n$, akkor $n$ páros” ugyanazt mondja, mint „ha $n$ páratlan, akkor $4 \nmid n$”.)
- A megfordítás **nem feltétlenül** igaz. („Ha $n$ páros, akkor $4 \mid n$” hamis.)

Az analízis tételeinek jelentős része implikáció, és a félév során rendszeresen meg fogjuk vizsgálni, igaz-e a megfordításuk. Legtöbbször nem az — és az ellenpéldák legalább annyira tanulságosak, mint maguk a tételek.

**A tagadás szabályai.** Két szabályt (De Morgan azonosságait) érdemes fejben tartani:
$$\neg(A \wedge B) \iff (\neg A) \vee (\neg B), \qquad \neg(A \vee B) \iff (\neg A) \wedge (\neg B).$$
Ezen kívül az implikáció tagadása:
$$\neg(A \implies B) \iff A \wedge \neg B.$$
Szóval: „ha $A$, akkor $B$” akkor hamis, ha $A$ teljesül, $B$ pedig mégsem.

## B. Kvantorok és tagadásuk

A változótól függő állításokból kétféleképpen készíthetünk igazi állítást.

- **Univerzális kvantor:** „minden $x$-re $P(x)$”, jelölése $\forall x : P(x)$. Akkor igaz, ha $P(x)$ minden szóba jövő $x$-re igaz.
- **Egzisztenciális kvantor:** „van olyan $x$, amelyre $P(x)$”, jelölése $\exists x : P(x)$. Akkor igaz, ha legalább egy $x$-re igaz.

Gyakran a változó egy halmazból fut: $\forall x \in \mathbb{R} : x^2 \ge 0$ (igaz), $\exists x \in \mathbb{R} : x^2 = 2$ (igaz, de ezt majd csak a félév közepén tudjuk bebizonyítani!), $\exists x \in \mathbb{Q} : x^2 = 2$ (hamis — ez lesz a 2. szakasz tétele).

**A kvantorok sorrendje számít.** Hasonlítsuk össze:
$$\text{(a)} \quad \forall n \in \mathbb{N}\ \exists m \in \mathbb{N} : m > n, \qquad\qquad \text{(b)} \quad \exists m \in \mathbb{N}\ \forall n \in \mathbb{N} : m > n.$$
Az (a) azt mondja, hogy minden természetes számnál van nagyobb természetes szám — ez igaz (például $m = n + 1$). A (b) azt mondja, hogy van egy olyan természetes szám, amely *minden* természetes számnál nagyobb — ez hamis (önmagánál sem nagyobb). Az (a)-ban az $m$ függhet az $n$-től; a (b)-ben egyetlen $m$-nek kell minden $n$-re működnie. Ez a különbség az analízisben döntő lesz: a határérték definíciójában a küszöbindex függhet a megadott pontosságtól, és ezt a függést a kvantorok sorrendje fejezi ki.

**A kvantoros állítások tagadása.** A szabály egyszerű és gépiesen alkalmazható: **a tagadás „átugrik” a kvantorokon, és közben mindegyiket megfordítja** ($\forall$-ból $\exists$ lesz és viszont), a végén pedig a kvantormentes részt tagadjuk:
$$\neg\big(\forall x : P(x)\big) \iff \exists x : \neg P(x), \qquad \neg\big(\exists x : P(x)\big) \iff \forall x : \neg P(x).$$
Az első szabály szerint „nem igaz, hogy minden hattyú fehér” ugyanaz, mint „van nem fehér hattyú”. A második szerint „nem igaz, hogy van repülő ló” ugyanaz, mint „egyetlen ló sem repül”.

**Kidolgozott példa.** Később (a 18. szakaszban) így fogjuk definiálni, hogy az $(a_n)$ sorozat az $a$ számhoz tart:
$$\forall \varepsilon > 0\ \ \exists n_0 \in \mathbb{N}\ \ \forall n \ge n_0 : \ |a_n - a| < \varepsilon.$$
Most még nem kell értenünk, mit jelent; gyakoroljuk a tagadását. A szabály szerint mindhárom kvantor megfordul, és a végén a $<$ jelből $\ge$ lesz:
$$\exists \varepsilon > 0\ \ \forall n_0 \in \mathbb{N}\ \ \exists n \ge n_0 : \ |a_n - a| \ge \varepsilon.$$
Szavakban: van egy olyan $\varepsilon$ tűrés, hogy akármilyen késői $n_0$ indextől indulunk, utána is mindig találunk olyan tagot, amely legalább $\varepsilon$-nyira van $a$-tól. Ez a mondat a félév során sokszor elő fog kerülni, valahányszor azt akarjuk megmutatni, hogy valami *nem* tart valahova.

Figyeljük meg, hogy a kvantorok mellett álló korlátozások ($\varepsilon > 0$, $n \ge n_0$) a tagadásnál **nem változnak**: a tagadás a „$\varepsilon > 0$”-ból nem csinál „$\varepsilon \le 0$”-t. A korlátozás csak azt mondja meg, melyik halmazból fut a változó.

## C. Halmazok

A **halmaz** fogalmát nem definiáljuk, hanem alapfogalomnak tekintjük: dolgok összessége, amelyről minden dologról eldönthető, hogy beletartozik-e. Ha $x$ eleme az $A$ halmaznak, azt $x \in A$-val jelöljük, ha nem eleme, akkor $x \notin A$-val.

Halmazt megadhatunk elemei felsorolásával, mint $\{1, 2, 3\}$, vagy egy tulajdonsággal, mint
$$\{x \in \mathbb{R} : x^2 < 2\},$$
ami azon valós számok halmaza, amelyeknek a négyzete kisebb $2$-nél. A kettőspont (vagy függőleges vonal) olvasata: „amelyekre”.

**Alapfogalmak.**

- $A \subset B$ ($A$ **részhalmaza** $B$-nek), ha $A$ minden eleme $B$-nek is eleme: $\forall x : (x \in A \implies x \in B)$. Ebben a könyvben a $\subset$ jel megengedi az egyenlőséget is.
- $A = B$, ha $A \subset B$ és $B \subset A$. Két halmaz egyenlőségét tehát gyakran úgy bizonyítjuk, hogy mindkét tartalmazást külön igazoljuk.
- Az **üres halmaz**, $\emptyset$, az a halmaz, amelynek nincs eleme. Minden halmaznak részhalmaza (hiszen az „$x \in \emptyset \implies x \in B$” implikáció feltétele mindig hamis, tehát az implikáció mindig igaz).

**Műveletek.**
$$A \cup B = \{x : x \in A \vee x \in B\} \quad (\text{unió}), \qquad A \cap B = \{x : x \in A \wedge x \in B\} \quad (\text{metszet}),$$
$$A \setminus B = \{x : x \in A \wedge x \notin B\} \quad (\text{különbség}).$$
Végtelen sok halmaz uniója és metszete is értelmes: ha $A_1, A_2, \dots$ halmazok, akkor
$$\bigcup_{n=1}^{\infty} A_n = \{x : \exists n,\ x \in A_n\}, \qquad \bigcap_{n=1}^{\infty} A_n = \{x : \forall n,\ x \in A_n\}.$$

**Példa.** Legyen $A_n = \left(0, \frac{1}{n}\right)$, azaz azon $x$ valós számok halmaza, amelyekre $0 < x < \frac{1}{n}$. Ekkor $\bigcup_n A_n = (0, 1)$ (hiszen $A_1$ a legbővebb), míg a metszet üres: ha $x > 0$, akkor elég nagy $n$-re $\frac{1}{n} < x$, tehát $x \notin A_n$. (Az, hogy „elég nagy $n$-re $\frac{1}{n} < x$”, az arkhimédészi tulajdonság, amelyet a 9. szakaszban bizonyítunk.) Ezt a példát a 9. szakaszban újra elő fogjuk venni.

## D. Bizonyítási módszerek

Egy matematikai állítás bizonyítása olyan érvelés, amely az elfogadott alapállításokból (axiómákból) és a már bizonyított tételekből, logikai lépések láncolatával jut el az állításig. Néhány gyakori bizonyítási séma:

**Direkt bizonyítás.** Az $A \implies B$ bizonyításához feltesszük $A$-t, és lépésről lépésre levezetjük $B$-t.

**Indirekt bizonyítás (ellentmondással).** Feltesszük, hogy a bizonyítandó állítás hamis, és ebből ellentmondásra jutunk (olyan állításra, amely egyszerre igaz és hamis, vagy ellentmond egy ismert ténynek). Mivel az ellentmondás lehetetlen, a feltevésünk hamis volt, vagyis az állítás igaz. A 2. szakaszban így bizonyítjuk, hogy $\sqrt{2}$ nem racionális.

**Kontrapozíció.** Az $A \implies B$ helyett a vele ekvivalens $\neg B \implies \neg A$ állítást bizonyítjuk. Ez akkor hasznos, ha a „$B$ nem teljesül” feltevésből könnyebb dolgozni, mint az „$A$ teljesül”-ből. Az 50. szakasz átviteli elvének egyik iránya így készül.

**Ellenpélda.** Egy „minden $x$-re $P(x)$” alakú állítás cáfolatához elég **egyetlen** olyan $x$-et mutatni, amelyre $P(x)$ hamis. Ez a tagadás szabályából következik: $\neg \forall x\, P(x) \iff \exists x\, \neg P(x)$. Ezzel szemben egy „minden $x$-re” állítást **nem lehet** példák felsorolásával bizonyítani, akárhány példát is nézünk meg.

**Teljes indukció.** Természetes számokra vonatkozó állítássorozatok bizonyítására szolgál; az 5. szakaszban részletesen tárgyaljuk.

**Egy jótanács.** Bizonyítás olvasásakor mindig kérdezzük meg: *hol használtuk fel a feltételeket?* Ha egy feltétel sehol sem szerepelt, akkor vagy fölösleges volt, vagy — sokkal valószínűbb — nem értettük meg a bizonyítást.

---

# I. RÉSZ: A VALÓS SZÁMOK

Az analízis a valós számokra épül, ezért az első feladatunk annak tisztázása, mit tudunk róluk. Középiskolából mindenki „ismeri” a valós számokat: a számegyenes pontjai, tizedes törtek, amelyekkel lehet számolni. Ez a kép azonban pontatlan, és éppen ott hallgat, ahol a legérdekesebb kérdések kezdődnek: mit jelent egy végtelen tizedes tört? Miért van $\sqrt{2}$? Miért van egy szám, amelynek a négyzete $2$, de nincs olyan *tört*, amelynek a négyzete $2$?

Ebben a részben a valós számokat **axiómákkal** írjuk le: felsoroljuk azokat a tulajdonságokat, amelyeket elfogadunk, és minden mást ezekből vezetünk le. A rész csúcspontja a **teljességi axióma** (8. szakasz), amely az egész analízis motorja lesz.

## 1. Bevezetés: mi az analízis?

Az analízis — hagyományos nevén **differenciál- és integrálszámítás**, angol nyelvterületen *calculus* — a függvények viselkedését vizsgálja a **határérték** fogalmán keresztül. Mielőtt bármit definiálnánk, nézzük meg azt a két klasszikus problémát, amelyből az egész tudományág kinőtt. Mindkettőben ugyanaz a nehézség rejlik: egy véges eljárást végtelen sokszor kell finomítanunk, és a kérdés az, hogy a finomítások „végén” mi áll.

### A területszámítás problémája

Hogyan számíthatjuk ki egy egységsugarú kör területét? A sokszögek területét ki tudjuk számolni, hiszen háromszögekre bonthatók. Írjunk tehát a körbe szabályos $n$-szöget! Ez $n$ darab egybevágó egyenlő szárú háromszögre bontható, amelyek szára $1$ (a kör sugara), szárszöge pedig $\frac{2\pi}{n}$ (radiánban). Egy ilyen háromszög területe $\frac{1}{2}\cdot 1 \cdot 1 \cdot \sin\frac{2\pi}{n}$, így a sokszög területe
$$T_n = \frac{n}{2}\sin\frac{2\pi}{n}.$$
Néhány érték: $T_4 = 2$, $T_6 \approx 2{,}598$, $T_{12} = 3$, $T_{100} \approx 3{,}1395$, $T_{1000} \approx 3{,}14157$. Ahogy $n$ nő, a sokszög egyre jobban kitölti a kört, és a $T_n$ számok egyre közelebb kerülnek egy bizonyos számhoz, amelyet $\pi$-vel jelölünk.

De mit jelent pontosan az, hogy a $T_n$ számok „egyre közelebb kerülnek” $\pi$-hez? Egyik $T_n$ sem egyenlő $\pi$-vel, és nincs „utolsó” sokszög. Archimédész (i. e. 250 körül) ezt a módszert **kimerítésnek** nevezte, és lényegében helyesen használta, de pontos fogalmi alapokat nem tudott neki adni. Ezt az alapot a 18. szakaszban rakjuk le, a sorozat határértékének definíciójával. (A 70. szakaszban pedig azt is be fogjuk látni, hogy $T_n \to \pi$ valóban teljesül: ehhez a $\frac{\sin x}{x} \to 1$ határértékre lesz szükség.)

### A pillanatnyi sebesség problémája

Ejtsünk le egy követ. A fizika szerint (a légellenállást elhanyagolva, és a nehézségi gyorsulást $10\ \mathrm{m/s^2}$-re kerekítve) $t$ másodperc alatt
$$s(t) = 5t^2$$
métert esik. Mekkora a sebessége pontosan az $1$. másodpercben?

Az **átlagsebességet** ki tudjuk számolni: a $[1, 1+h]$ időintervallumban a megtett út $s(1+h) - s(1)$, az eltelt idő $h$, tehát az átlagsebesség
$$\frac{s(1+h) - s(1)}{h} = \frac{5(1+h)^2 - 5}{h} = \frac{5 + 10h + 5h^2 - 5}{h} = 10 + 5h.$$
Néhány érték: $h = 1$-re $15$, $h = 0{,}1$-re $10{,}5$, $h = 0{,}01$-re $10{,}05$, $h = 0{,}001$-re $10{,}005$ méter/másodperc. Úgy tűnik, hogy a *pillanatnyi* sebesség $10$ m/s. Csakhogy $h = 0$-t nem helyettesíthetünk be az eredeti törtbe: $\frac{0}{0}$ értelmetlen. A $10 + 5h$ alakba persze behelyettesíthetünk, de csak azért jutottunk el ide, mert $h \neq 0$ esetén egyszerűsítettünk $h$-val.

A kérdés tehát: **hogyan beszélhetünk egy hányados „végső” értékéről anélkül, hogy valaha is behelyettesítenénk a tiltott értéket?** A válasz ismét a határérték lesz, ezúttal függvényekre (45–46. szakasz), és belőle születik a **derivált** fogalma (66. szakasz).

### Mi kell a válaszhoz?

Mindkét problémához két alapfogalomra lesz szükségünk: a **határértékre** és a **folytonosságra**. Ezek precíz megfogalmazásához viszont először azt kell pontosan tudnunk, milyen számokkal dolgozunk — és itt egy meglepetés vár ránk. A racionális számok (a törtek) **nem elegendők**: a 2. szakaszban látni fogjuk, hogy a legegyszerűbb geometriai mennyiségek egyike sem racionális. A határértékekhez olyan számkörre van szükség, amelyben „nincsenek lyukak”. Ez lesz a valós számok teste.

### Egy kis történelem

A gondolat csírái a görögöknél jelennek meg (Archimédész kimerítéses módszere), de a tényleges kalkulus a XVII. században születik meg. Isaac Newton az 1665-ös pestisjárvány idején dolgozta ki alapgondolatait, amikor a Cambridge-i Egyetemet bezárták, és ő hazaköltözött; ugyanebben az időszakban, tőle függetlenül Gottfried Wilhelm Leibniz is eljutott a differenciál- és integrálszámításhoz. A két felfedezés prioritási vitája évtizedekre megmérgezte az angol és a kontinentális matematika viszonyát. (A mai jelöléseink, például a $\frac{dy}{dx}$, nagyrészt Leibniztől származnak.)

A kalkulust a XVIII. században rendkívül sikeresen alkalmazták — de az alapjai bizonytalanok maradtak. Mit jelent egy „végtelenül kicsiny” mennyiség? Egyszerre nulla is, meg nem is? A **szilárd alapokat** csak a XIX. században fektették le: Augustin-Louis Cauchy az $\varepsilon$–$\delta$ típusú definíciókkal, Karl Weierstrass a teljes „aritmetizálással”, Richard Dedekind pedig a valós számok megkonstruálásával. Ez a könyv ezt a XIX. századi, szigorú utat követi.

## 2. Számhalmazok és a √2 irracionalitása

A valós számok axiomatikus megalapozását — azt, hogy létezik a következő szakaszokban leírt tulajdonságokkal rendelkező számkör, és ez lényegében egyértelmű — más tárgyra hagyjuk. Itt az axiómákat adottnak vesszük, és azt vizsgáljuk, mire elegendők. Először azonban idézzük fel a már ismert számhalmazokat.

> **Definíció (alapvető számhalmazok).**
>
> - $\mathbb{N} = \{1, 2, 3, \dots\}$ a **természetes számok** halmaza.
> - $\mathbb{Z} = \{\dots, -2, -1, 0, 1, 2, \dots\}$ az **egész számok** halmaza.
> - $\mathbb{Q} = \left\{ \frac{p}{q} : p, q \in \mathbb{Z},\ q \neq 0 \right\}$ a **racionális számok** halmaza.

(Egyes szerzők a nullát is természetes számnak tekintik; ez pusztán megállapodás kérdése. Ebben a könyvben $0 \notin \mathbb{N}$.)

Nyilvánvalóan $\mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q}$. Mindegyik bővítésnek megvolt az oka: az $\mathbb{N}$-ben nem lehet korlátlanul kivonni ($3 - 5 \notin \mathbb{N}$), a $\mathbb{Z}$-ben nem lehet korlátlanul osztani ($1 : 2 \notin \mathbb{Z}$). A $\mathbb{Q}$-ban viszont a négy alapművelet — a nullával való osztás kivételével — nem vezet ki a halmazból. Sőt, a racionális számok **sűrűn** helyezkednek el: bármely két racionális szám között van további racionális szám, hiszen ha $a < b$ racionálisak, akkor
$$a < \frac{a+b}{2} < b,$$
és $\frac{a+b}{2}$ is racionális. Ezt az eljárást ismételve azt kapjuk, hogy bármely két racionális szám között **végtelen sok** racionális szám van.

Mindezek alapján azt gondolhatnánk, hogy a racionális számok „kitöltik” a számegyenest. A következő tétel megmutatja, hogy ez nincs így.

> **Tétel.** Nincs olyan racionális szám, amelynek a négyzete $2$. Röviden: $\sqrt{2} \notin \mathbb{Q}$.

Miért fontos ez? Pitagorasz tétele szerint az egységnyi oldalú négyzet átlójának $d$ hosszára $d^2 = 1^2 + 1^2 = 2$. A tétel tehát azt mondja, hogy **a négyzet átlójának hossza nem írható fel két egész szám hányadosaként**. A legenda szerint ez a felfedezés annyira megrázta a püthagoreusokat — akik szerint „minden szám” (értsd: minden arány egész számok aránya) —, hogy a felfedezőjét, Hippaszoszt a tengerbe vetették.

Két bizonyítást is adunk; mindkettő **indirekt** (lásd a D. szakaszt): feltesszük, hogy az állítás hamis, és ellentmondásra jutunk.

*Első bizonyítás (a párosság segítségével).* Tegyük fel indirekt, hogy $\sqrt{2} = \frac{p}{q}$, ahol $p, q$ egész számok és $q \neq 0$. Feltehetjük, hogy a tört **már egyszerűsített alakban** van, vagyis $p$ és $q$ nem mindketten párosak (ha mindkettő páros volna, egyszerűsíthetnénk $2$-vel, és ezt addig ismételhetjük, amíg az egyikük páratlan nem lesz).

Négyzetre emelve és $q^2$-tel szorozva:
$$2q^2 = p^2.$$
A bal oldal páros, tehát $p^2$ páros. Ebből következik, hogy $p$ is páros — hiszen páratlan szám négyzete páratlan: $(2k+1)^2 = 4k^2 + 4k + 1$. Legyen tehát $p = 2k$. Behelyettesítve
$$2q^2 = 4k^2 \implies q^2 = 2k^2,$$
tehát $q^2$ is páros, és ugyanígy $q$ is páros. Ez ellentmond annak, hogy $p$ és $q$ nem mindketten párosak. $\blacksquare$

*Második bizonyítás (a prímfelbontás egyértelműségével).* Ismét induljunk a $2q^2 = p^2$ egyenlőségből, de most ne tegyük fel, hogy a tört egyszerűsített. Vizsgáljuk meg, hányszor szerepel a $2$-es prímtényező a két oldal prímfelbontásában. A jobb oldalon $p^2$ áll; ha $p$-ben a $2$ kitevője $a$, akkor $p^2$-ben $2a$, ami **páros**. A bal oldalon, ha $q$-ban a $2$ kitevője $b$, akkor $2q^2$-ben $2b + 1$, ami **páratlan**. A számelmélet alaptétele szerint a prímfelbontás egyértelmű, tehát a két kitevőnek meg kellene egyeznie — páros szám azonban nem lehet egyenlő páratlannal. Ellentmondás. $\blacksquare$

A második bizonyítás előnye, hogy azonnal általánosítható: ugyanígy látható be, hogy ha $n$ pozitív egész, de nem négyzetszám, akkor $\sqrt{n}$ irracionális (lásd az 1. feladatot a rész végén).

**Mit tanultunk ebből?** Ha a számegyenest csak a racionális számokkal azonosítanánk, akkor a négyzet átlóját felmérve a számegyenesre, a végpont egy „lyukba” esne. A racionális számok tehát — bármilyen sűrűn helyezkednek is el — **nem töltik ki** a számegyenest. Ezt a lyukat kell betömni, és erre szolgál majd a teljességi axióma (8. szakasz). Hangsúlyozzuk: egyelőre csak annyit tudunk, hogy *racionális* szám nem lehet $\sqrt{2}$; azt, hogy egyáltalán *létezik* olyan valós szám, amelynek négyzete $2$, csak az 54. szakaszban fogjuk bebizonyítani.

## 3. A rendezés axiómái

A valós számok rendszerét egy **struktúrával** írjuk le:
$$(\mathbb{R},\ 0,\ 1,\ +,\ \cdot,\ <).$$
Ez a jelölés azt fejezi ki, hogy van egy $\mathbb{R}$ halmaz, benne két kitüntetett elem ($0$ és $1$), két művelet (az összeadás és a szorzás) és egy reláció (a „kisebb”). Ezekről háromféle axiómát követelünk meg: testaxiómákat, rendezési axiómákat és a teljességi axiómát.

**A testaxiómák** a négy alapművelet középiskolából ismert szabályait foglalják össze. Minden $a, b, c \in \mathbb{R}$ esetén:

- az összeadás és a szorzás **kommutatív**: $a + b = b + a$, $ab = ba$;
- **asszociatív**: $(a+b)+c = a+(b+c)$, $(ab)c = a(bc)$;
- **disztributív**: $a(b + c) = ab + ac$;
- van **nullelem** és **egységelem**: $a + 0 = a$, $a \cdot 1 = a$, és $0 \neq 1$;
- van **ellentett**: minden $a$-hoz van $-a$, amelyre $a + (-a) = 0$;
- van **reciprok**: minden $a \neq 0$-hoz van $a^{-1} = \frac{1}{a}$, amelyre $a \cdot a^{-1} = 1$.

Ezekből levezethető minden szokásos algebrai azonosság (például $0 \cdot a = 0$, $(-a)(-b) = ab$, $(a+b)^2 = a^2 + 2ab + b^2$); ezeket ismertnek tekintjük. Érdemes azonban tudni, hogy a testaxiómák önmagukban kevesek: a racionális számok is kielégítik őket, sőt olyan furcsa „számkörök” is, amelyekben $1 + 1 = 0$. Az analízis szempontjából a lényeges axiómák a **rendezési** és a **teljességi** axiómák.

**Jelölések.** $a > b$ jelentése: $b < a$. Továbbá $a \le b$ jelentése: $a < b$ vagy $a = b$. Egy szám **pozitív**, ha $a > 0$, **negatív**, ha $a < 0$, **nemnegatív**, ha $a \ge 0$.

> **A rendezési axiómák.**
>
> - **$R_1$ (trichotómia).** Bármely $a, b \in \mathbb{R}$ esetén az $a < b$, $a = b$, $b < a$ állítások közül **pontosan egy** teljesül.
> - **$R_2$ (tranzitivitás).** Ha $a < b$ és $b < c$, akkor $a < c$.
> - **$R_3$ (összeadással való összeférhetőség).** Ha $a < b$, akkor minden $c$-re $a + c < b + c$.
> - **$R_4$ (szorzással való összeférhetőség).** Ha $a < b$ és $c > 0$, akkor $ac < bc$.

Ezek a szabályok annyira természetesek, hogy elsőre fölöslegesnek tűnhet kimondani őket. A tanulság éppen az, hogy **minden** egyenlőtlenségekre vonatkozó számolási szabály, amit iskolában tanultunk, ebből a négy axiómából (és a testaxiómákból) levezethető. Nézzünk néhányat — ezek a levezetések egyben jó gyakorlatot nyújtanak az axiomatikus gondolkodásban.

> **Állítás (az egyenlőtlenségek alapvető szabályai).** Minden $a, b, c, d \in \mathbb{R}$ esetén:
>
> 1. $a < b \iff 0 < b - a$.
> 2. Ha $a < b$ és $c < d$, akkor $a + c < b + d$.
> 3. Ha $a < b$ és $c < 0$, akkor $ac > bc$ (negatív számmal szorozva az egyenlőtlenség megfordul).
> 4. Ha $a \neq 0$, akkor $a^2 > 0$. Speciálisan $1 > 0$.
> 5. Ha $0 < a < b$, akkor $0 < \frac{1}{b} < \frac{1}{a}$.

*Bizonyítás.*

1. Ha $a < b$, akkor $R_3$ szerint, $c = -a$-t hozzáadva, $a + (-a) < b + (-a)$, azaz $0 < b - a$. Megfordítva, ha $0 < b - a$, akkor $c = a$-t hozzáadva $a < b$.

2. $R_3$ szerint $a + c < b + c$ (a $c$-t adtuk hozzá) és $b + c < b + d$ (a $b$-t adtuk hozzá a $c < d$ egyenlőtlenséghez). $R_2$ szerint $a + c < b + d$.

3. Ha $c < 0$, akkor az 1. pont szerint $0 < 0 - c = -c$. Az $R_4$ axiómát a pozitív $-c$ számmal alkalmazva $a(-c) < b(-c)$, azaz $-ac < -bc$. Mindkét oldalhoz $ac + bc$-t adva ($R_3$): $bc < ac$.

4. Ha $a > 0$, akkor $R_4$ szerint (a $0 < a$ egyenlőtlenséget $a$-val szorozva) $0 \cdot a < a \cdot a$, azaz $0 < a^2$. Ha $a < 0$, akkor $-a > 0$, így az előző eset szerint $0 < (-a)^2 = a^2$. Mivel a testaxiómák szerint $1 \neq 0$, ezért $1 = 1^2 > 0$.

5. Először: $\frac{1}{a} > 0$. Valóban, ha $\frac{1}{a} < 0$ volna, akkor a 3. pont szerint az $a > 0$ egyenlőtlenséget a negatív $\frac{1}{a}$-val szorozva $1 = a \cdot \frac{1}{a} < 0 \cdot \frac{1}{a} = 0$ adódna, ellentmondásban a 4. ponttal; $\frac{1}{a} = 0$ pedig nem lehet, mert akkor $1 = a \cdot \frac{1}{a} = 0$ volna. Hasonlóan $\frac{1}{b} > 0$, tehát $\frac{1}{ab} = \frac{1}{a}\cdot\frac{1}{b} > 0$. Az $a < b$ egyenlőtlenséget a pozitív $\frac{1}{ab}$-vel szorozva $\frac{1}{b} < \frac{1}{a}$. $\blacksquare$

Érdemes megfigyelni, hogy a 4. pont egy olyan tényt igazol, amelyet sosem kérdőjeleztünk meg: hogy $1$ pozitív. Az axiómák szempontjából ez nem magától értetődő — be kellett bizonyítani. Ugyanígy az is, hogy negatív számmal szorozva megfordul az egyenlőtlenség: ez **nem** külön axióma, hanem $R_3$ és $R_4$ következménye. Az $R_4$-ben szereplő $c > 0$ feltétel tehát nem elhagyható, de nem is kell mellé egy „negatív” változatot külön kimondani.

## 4. Abszolút érték és háromszög-egyenlőtlenség

Az analízis alapvetően a **távolságról** szól. Amikor azt mondjuk, hogy „$x$ közel van $a$-hoz”, azt értjük alatta, hogy az $x$ és $a$ közötti távolság kicsi. A számegyenesen két pont távolsága a különbségük abszolút értéke, ezért az abszolút érték nem másodlagos technikai eszköz, hanem az egész tárgyalás központi jelölése.

> **Definíció (abszolút érték).** Egy $x \in \mathbb{R}$ szám abszolút értéke
> $$|x| = \begin{cases} x & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -x & \text{ha } x < 0. \end{cases}$$

Az első két eset természetesen összevonható: $|x| = x$, ha $x \ge 0$. Például $|3| = 3$, $|-3| = 3$, $|0| = 0$. A definícióból azonnal látszik, hogy $|x| \ge 0$ minden $x$-re, és $|x| = 0$ pontosan akkor, ha $x = 0$.

**Geometriai jelentés.** $|x|$ az $x$ pont távolsága a $0$-tól a számegyenesen, és általában
$$|x - a| = \text{az } x \text{ és } a \text{ pontok távolsága}.$$
Ez a jelentés teszi lehetővé, hogy a „közelséget” egyenlőtlenségekkel fejezzük ki.

> **Állítás (az abszolút érték alaptulajdonságai).** Minden $a, b, x \in \mathbb{R}$ és $r > 0$ esetén
>
> 1. $|x| = |-x|$, továbbá $-|x| \le x \le |x|$;
> 2. $|ab| = |a| \cdot |b|$;
> 3. $|x| < r \iff -r < x < r$; és ugyanígy $|x| \le r \iff -r \le x \le r$.

*Bizonyítás.* Az 1. és 2. pont esetszétválasztással közvetlenül adódik a definícióból (a 2. pontnál négy esetet kell megnézni aszerint, hogy $a$ és $b$ nemnegatív vagy negatív).

A 3. pont: ha $x \ge 0$, akkor $|x| < r$ azt jelenti, hogy $x < r$; a $-r < x$ pedig automatikusan teljesül, hiszen $-r < 0 \le x$. Ha $x < 0$, akkor $|x| < r$ azt jelenti, hogy $-x < r$, azaz $-r < x$; az $x < r$ pedig automatikusan teljesül, hiszen $x < 0 < r$. Mindkét esetben a két állítás ugyanazt jelenti. $\blacksquare$

A 3. pontot a távolság nyelvén is érdemes kimondani, mert ez lesz a leggyakrabban használt átalakításunk:
$$|x - a| < r \iff a - r < x < a + r.$$
Vagyis az $a$-tól $r$-nél kisebb távolságra lévő pontok éppen az $(a - r, a + r)$ nyílt intervallum pontjai.

**Kidolgozott példa.** Oldjuk meg a $|2x - 1| < 5$ egyenlőtlenséget! A 3. pont szerint ez ekvivalens a
$$-5 < 2x - 1 < 5$$
kettős egyenlőtlenséggel. Mindhárom részhez $1$-et adva $-4 < 2x < 6$, majd $2$-vel osztva $-2 < x < 3$. A megoldáshalmaz tehát a $(-2, 3)$ intervallum. Ellenőrzésképpen: az eredeti egyenlőtlenség $|x - \tfrac{1}{2}| < \tfrac{5}{2}$ alakban azt mondja, hogy $x$ az $\frac{1}{2}$-től $\frac{5}{2}$-nél kisebb távolságra van — és valóban, $\frac{1}{2} - \frac{5}{2} = -2$, $\frac{1}{2} + \frac{5}{2} = 3$.

Most következik az analízis talán leggyakrabban használt egyenlőtlensége.

> **Tétel (háromszög-egyenlőtlenség).** Minden $a, b \in \mathbb{R}$ esetén
> $$|a + b| \le |a| + |b|.$$

**Miért ez a neve?** Síkvektorokra az $|\underline{a} + \underline{b}| \le |\underline{a}| + |\underline{b}|$ egyenlőtlenség azt fejezi ki, hogy egy háromszögben bármely oldal legfeljebb akkora, mint a másik kettő összege. A valós számegyenes ennek egydimenziós esete.

*Bizonyítás.* Az alaptulajdonságok 1. pontja szerint
$$-|a| \le a \le |a| \qquad \text{és} \qquad -|b| \le b \le |b|.$$
Ezeket összeadva (az előző szakasz 2. szabályának gyenge változatával):
$$-\big(|a| + |b|\big) \le a + b \le |a| + |b|.$$
Az alaptulajdonságok 3. pontja szerint (az $r = |a| + |b|$ választással) ez pontosan azt jelenti, hogy $|a + b| \le |a| + |b|$. $\blacksquare$

(Ha $|a| + |b| = 0$, akkor $a = b = 0$, és az állítás triviális; a 3. pontot $r > 0$-ra mondtuk ki, de a gyenge egyenlőtlenséges változat $r = 0$-ra is nyilvánvalóan igaz.)

Érdemes megjegyezni, mikor áll egyenlőség: pontosan akkor, ha $a$ és $b$ azonos előjelű (vagy valamelyik nulla). Ha ellentétes előjelűek, akkor az összeadásnál „kioltják” egymást, és szigorú egyenlőtlenség áll: például $|3 + (-5)| = 2 < 8 = |3| + |-5|$.

A háromszög-egyenlőtlenségnek egy fordított változatára is gyakran lesz szükség.

> **Következmény (fordított háromszög-egyenlőtlenség).** Minden $a, b \in \mathbb{R}$ esetén
> $$\big|\,|a| - |b|\,\big| \le |a - b|.$$

*Bizonyítás.* Írjuk $a$-t $a = (a - b) + b$ alakba, és alkalmazzuk a háromszög-egyenlőtlenséget:
$$|a| = |(a - b) + b| \le |a - b| + |b| \implies |a| - |b| \le |a - b|.$$
A szerepeket felcserélve ugyanígy $|b| - |a| \le |b - a| = |a - b|$. A két egyenlőtlenség együtt azt mondja, hogy $|a| - |b|$ a $[-|a-b|, |a-b|]$ intervallumba esik, ami éppen az állítás. $\blacksquare$

A bizonyításban alkalmazott fogás — **„adjunk hozzá és vonjunk ki ugyanazt”** — az analízis egyik legfontosabb technikája; a félév során tucatszor fogjuk használni. Távolságok nyelvén: ha az $a$-tól $b$-ig akarunk eljutni, és tudjuk, mennyi az út $a$-tól $c$-ig és $c$-től $b$-ig, akkor
$$|a - b| = |(a - c) + (c - b)| \le |a - c| + |c - b|.$$
Ez a „kitérő” a közbülső $c$ ponton keresztül.

## 5. Teljes indukció

A háromszög-egyenlőtlenséget két tagra bizonyítottuk. Mi a helyzet három, négy, vagy általában $n$ taggal? Három tagra még könnyű:
$$|a_1 + a_2 + a_3| = |(a_1 + a_2) + a_3| \le |a_1 + a_2| + |a_3| \le |a_1| + |a_2| + |a_3|.$$
Látszik, hogy ugyanez a lépés négy, öt, … tagra is megismételhető. De hogyan lehet ezt **minden** $n$-re egyszerre bebizonyítani, anélkül hogy végtelen sok lépést írnánk le? Erre szolgál a teljes indukció.

> **A teljes indukció (TIND) elve.** Legyen $A_1, A_2, A_3, \dots$ állítások egy sorozata. Ha
>
> 1. **(kezdőlépés)** $A_1$ igaz, és
> 2. **(indukciós lépés)** minden $n \in \mathbb{N}$ esetén az $A_n \implies A_{n+1}$ implikáció igaz,
>
> akkor $A_n$ minden $n \in \mathbb{N}$-re igaz.

**A dominó-hasonlat.** Képzeljünk el egy végtelen hosszú dominósort. Ha (1) az első dominó eldől, és (2) bármelyik dominó eldőlése magával rántja a következőt, akkor mindegyik dominó eldől. Egyik feltétel sem hagyható el: ha az első nem dől el, semmi sem történik; ha pedig valahol túl nagy a rés két dominó között, a lánc ott megszakad.

Fontos megérteni, mit kell az indukciós lépésben bizonyítani: **nem** azt, hogy $A_{n+1}$ igaz, hanem azt, hogy **ha** $A_n$ igaz, **akkor** $A_{n+1}$ is igaz. Az $A_n$ igazságát tehát *feltehetjük* — ezt nevezzük **indukciós feltevésnek** —, és ebből kell levezetnünk $A_{n+1}$-et.

**Kidolgozott példa.** Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ esetén
$$1 + 2 + \dots + n = \frac{n(n+1)}{2}.$$
Legyen $A_n$ ez az állítás.

*Kezdőlépés:* $n = 1$-re a bal oldal $1$, a jobb oldal $\frac{1 \cdot 2}{2} = 1$. Igaz.

*Indukciós lépés:* tegyük fel, hogy $A_n$ igaz, azaz $1 + \dots + n = \frac{n(n+1)}{2}$. Ekkor
$$1 + \dots + n + (n+1) = \frac{n(n+1)}{2} + (n + 1) = \frac{n(n+1) + 2(n+1)}{2} = \frac{(n+1)(n+2)}{2},$$
ami éppen $A_{n+1}$. A TIND elve szerint az állítás minden $n$-re igaz. $\blacksquare$

**Az indukció nem mindig $1$-től indul.** Ha a kezdőlépést $n_0$-ra igazoljuk, az indukciós lépést pedig minden $n \ge n_0$-ra, akkor az állítás minden $n \ge n_0$-ra igaz. Példa: $2^n \ge n^2$ igaz $n = 1, 2$-re ($2 \ge 1$, $4 \ge 4$), hamis $n = 3$-ra ($8 < 9$), de igaz minden $n \ge 4$-re. Ez utóbbit indukcióval látjuk be: $n = 4$-re $16 \ge 16$. Ha pedig $n \ge 4$ és $2^n \ge n^2$, akkor
$$2^{n+1} = 2\cdot 2^n \ge 2n^2 = n^2 + n^2 \ge n^2 + 2n + 1 = (n+1)^2,$$
ahol az utolsó előtti lépésben azt használtuk, hogy $n \ge 3$ esetén $n^2 \ge 3n = 2n + n \ge 2n + 1$.

Most már kimondhatjuk és bizonyíthatjuk a háromszög-egyenlőtlenség általános alakját.

> **Tétel (általánosított háromszög-egyenlőtlenség).** Minden $n \in \mathbb{N}$ és minden $a_1, \dots, a_n \in \mathbb{R}$ esetén
> $$|a_1 + a_2 + \dots + a_n| \le |a_1| + |a_2| + \dots + |a_n|.$$

*Bizonyítás.* Legyen $A_n$ az az állítás, hogy a fenti egyenlőtlenség tetszőleges $n$ darab valós számra teljesül.

*Kezdőlépés.* $n = 1$-re az állítás $|a_1| \le |a_1|$, ami igaz.

*Indukciós lépés.* Tegyük fel, hogy $A_n$ igaz, és legyen $a_1, \dots, a_{n+1}$ tetszőleges. Csoportosítsuk az összeget úgy, hogy az első $n$ tag egyetlen számot alkosson:
$$|\underbrace{a_1 + \dots + a_n}_{A} + \underbrace{a_{n+1}}_{B}| \le |a_1 + \dots + a_n| + |a_{n+1}|,$$
ahol a kéttagú háromszög-egyenlőtlenséget alkalmaztuk az $A$ és $B$ számokra. Az indukciós feltevés szerint az első tag tovább becsülhető:
$$|a_1 + \dots + a_n| + |a_{n+1}| \le |a_1| + \dots + |a_n| + |a_{n+1}|.$$
Ezzel $A_{n+1}$-et igazoltuk, tehát a TIND elve szerint az állítás minden $n$-re fennáll. $\blacksquare$

## 6. A bővített számegyenes és az intervallumok

A félév során gyakran mondunk majd olyasmit, hogy egy sorozat „minden határon túl nő” vagy „a végtelenbe tart”. Ehhez kényelmes jelölésre van szükség.

> **Definíció (bővített számegyenes).** Vezessünk be két új **szimbólumot**, $+\infty$-t és $-\infty$-t, amelyek nem valós számok. A rendezést kiterjesztjük rájuk azzal a megállapodással, hogy
> $$-\infty < x < +\infty \qquad \text{minden } x \in \mathbb{R} \text{ esetén}.$$
> A $\overline{\mathbb{R}} = \mathbb{R} \cup \{+\infty, -\infty\}$ halmazt **bővített számegyenesnek** nevezzük.

**Figyelem: $\pm\infty$ nem szám!** Nem lehet velük korlátozás nélkül számolni. Mennyi volna $+\infty - (+\infty)$? Ha $\infty$ szám volna, akkor $0$ — de a 26. szakaszban látni fogjuk, hogy két „végtelenbe tartó” mennyiség különbsége bármi lehet. Ezért a $\pm\infty$ szimbólumokkal csak ott számolunk, ahol ezt tétel indokolja. Egyetlen szerepük, hogy bizonyos fordulatokat tömören kimondhassunk.

A számegyenes leggyakrabban használt részhalmazai az intervallumok.

> **Definíció (intervallumok).** Ha $a, b \in \mathbb{R}$ és $a \le b$, akkor
> $$[a, b] = \{x \in \mathbb{R} : a \le x \le b\} \quad \text{(zárt intervallum)},$$
> $$(a, b) = \{x \in \mathbb{R} : a < x < b\} \quad \text{(nyílt intervallum)},$$
> $$[a, b) = \{x \in \mathbb{R} : a \le x < b\}, \qquad (a, b] = \{x \in \mathbb{R} : a < x \le b\} \quad \text{(félig zárt intervallumok)}.$$
> Végtelen hosszú intervallumok (félegyenesek):
> $$[a, +\infty) = \{x : x \ge a\}, \quad (a, +\infty) = \{x : x > a\}, \quad (-\infty, a] = \{x : x \le a\}, \quad (-\infty, a) = \{x : x < a\},$$
> és $(-\infty, +\infty) = \mathbb{R}$.

A szögletes zárójel azt jelzi, hogy a végpont az intervallumhoz tartozik, a kerek, hogy nem. A $\pm\infty$ mellé mindig kerek zárójel kerül, hiszen ezek nem valós számok, tehát nem lehetnek az intervallum elemei. Az $[a, b]$ intervallumot, ha $a, b \in \mathbb{R}$, **korlátos zárt intervallumnak** nevezzük; ezek a félév során különleges szerepet kapnak (54. szakasz).

Az intervallumokat egyetlen tulajdonsággal is jellemezhetjük: **egy $I \subset \mathbb{R}$ halmaz pontosan akkor intervallum, ha bármely két pontjával együtt a köztük lévő összes pontot is tartalmazza**, azaz ha $x, y \in I$ és $x < z < y$, akkor $z \in I$. (Ezt a jellemzést a teljességi axióma segítségével lehet bizonyítani; az 54. szakaszban fogjuk használni.)

## 7. Korlátosság, maximum és minimum

Most olyan fogalmakat vezetünk be, amelyekkel egy számhalmaz „kiterjedését” írhatjuk le. Ezek vezetnek el a teljességi axiómához.

> **Definíció (korlátok).** Legyen $H \subset \mathbb{R}$.
>
> - A $K \in \mathbb{R}$ szám a $H$ **felső korlátja**, ha minden $h \in H$ esetén $h \le K$.
> - A $k \in \mathbb{R}$ szám a $H$ **alsó korlátja**, ha minden $h \in H$ esetén $h \ge k$.
> - $H$ **felülről korlátos**, ha van felső korlátja; **alulról korlátos**, ha van alsó korlátja; **korlátos**, ha alulról és felülről is korlátos.

**Példák.**

- $H = (0, 1]$: felső korlát például $1$, $2$, $100$; alsó korlát például $0$, $-5$. Korlátos.
- $H = \mathbb{N}$: alsó korlát például $1$ vagy $0$. Felső korlátja nincs (ez az arkhimédészi tulajdonság, 9. szakasz). Tehát alulról korlátos, felülről nem.
- $H = \mathbb{Z}$: se alulról, se felülről nem korlátos.
- $H = \emptyset$: **minden** valós szám felső és alsó korlátja is (hiszen nincs olyan eleme, amely megsértené a feltételt).

Figyeljük meg, hogy a felső korlát **nem egyértelmű**: ha $K$ felső korlát, akkor minden nála nagyobb szám is az. A korlát fogalma tehát önmagában nem írja le pontosan a halmaz „tetejét”.

> **Állítás.** $H$ pontosan akkor korlátos, ha létezik olyan $K \in \mathbb{R}$, hogy minden $h \in H$ esetén $|h| \le K$.

*Bizonyítás.* Ha $|h| \le K$ minden $h$-ra, akkor a 4. szakasz szerint $-K \le h \le K$, tehát $-K$ alsó, $K$ felső korlát. Megfordítva, ha $m$ alsó és $M$ felső korlát, azaz $m \le h \le M$ minden $h \in H$-ra, akkor legyen $K = \max\{|m|, |M|\}$. Ekkor
$$-K \le -|m| \le m \le h \le M \le |M| \le K,$$
tehát $|h| \le K$. $\blacksquare$

A korlátok között kitüntetett szerepe van annak, amelyik maga is a halmazban van.

> **Definíció (maximum, minimum).** Legyen $H \subset \mathbb{R}$. Ha létezik olyan $M \in H$ elem, amelyre minden $h \in H$ esetén $h \le M$, akkor $M$-et a $H$ **legnagyobb elemének** vagy **maximumának** nevezzük; jelölése $\max H$. Hasonlóan, ha létezik $m \in H$, amelyre minden $h \in H$-ra $h \ge m$, akkor $m$ a $H$ **legkisebb eleme** vagy **minimuma**; jelölése $\min H$.

A döntő mozzanat: **a maximumnak eleme kell legyen a halmaznak.** A maximum tehát olyan felső korlát, amely maga is a halmazhoz tartozik.

Ha a maximum létezik, akkor egyértelmű: ha $M_1$ és $M_2$ is maximum volna, akkor $M_2 \in H$ miatt $M_2 \le M_1$, és $M_1 \in H$ miatt $M_1 \le M_2$, tehát $M_1 = M_2$.

**Példák.**

- $H = (0, 1]$: $\max H = 1$, hiszen $1 \in H$ és minden elem legfeljebb $1$. Ugyanakkor $\min H$ **nem létezik**: ha $h \in (0, 1]$ tetszőleges, akkor $\frac{h}{2}$ is a halmazban van, és kisebb $h$-nál, tehát $h$ nem lehet a legkisebb elem.
- $H = (0, 1)$: sem maximuma, sem minimuma nincs, jóllehet korlátos.
- $H = \left\{ 1, \frac{1}{2}, \frac{1}{3}, \dots \right\} = \left\{ \frac{1}{n} : n \in \mathbb{N} \right\}$: $\max H = 1$, minimuma nincs (hiszen $\frac{1}{n+1} < \frac{1}{n}$).
- Minden nem üres **véges** halmaznak van maximuma és minimuma (ez indukcióval könnyen belátható az elemszám szerint).

**Egy fontos megfigyelés.** Ha $\max H$ létezik, akkor felső korlátja $H$-nak. Sőt, ha $b$ tetszőleges felső korlátja $H$-nak, akkor $\max H \le b$, hiszen $\max H \in H$, és $b$ minden $H$-beli elemnél nagyobb vagy egyenlő. Vagyis
$$\max H \text{ a } H \text{ legkisebb felső korlátja}.$$
Ez a megfigyelés mutatja meg, hogyan érdemes általánosítani. A maximum gyakran nem létezik (lásd a $(0,1)$ példát), a **legkisebb felső korlát** azonban — mint mindjárt látni fogjuk — mindig létezik, ha a halmaz nem üres és felülről korlátos. Egy feltétellel: ha $\mathbb{R}$-ben dolgozunk, nem $\mathbb{Q}$-ban.

### A racionális számok hiányossága

Vizsgáljuk meg a
$$H = \{x \in \mathbb{Q} : x^2 < 2\}$$
halmazt a racionális számok körében. Ez nem üres ($1 \in H$), és felülről korlátos: például $2$ felső korlát, hiszen ha $x > 2$, akkor $x^2 > 4 > 2$, tehát $x \notin H$. Azt állítjuk, hogy **$H$-nak nincs $\mathbb{Q}$-beli legkisebb felső korlátja.** Ehhez megmutatjuk, hogy bármely racionális felső korlát mellett van nála kisebb racionális felső korlát is.

*1. lépés: ha $s > 0$ racionális és $s^2 < 2$, akkor $s$ nem felső korlát.* Keresünk egy kis pozitív racionális $h$-t úgy, hogy $(s + h)^2 < 2$ is teljesüljön. Legyen
$$h = \min\left\{\frac{1}{2},\ \frac{2 - s^2}{2s + 1}\right\}.$$
Ez pozitív racionális szám (hiszen $2 - s^2 > 0$). A minimumban szereplő $\frac{1}{2}$ csak azt biztosítja, hogy $h < 1$ legyen, és így $h^2 < h$. Ekkor
$$(s + h)^2 = s^2 + 2sh + h^2 < s^2 + 2sh + h = s^2 + h(2s + 1) \le s^2 + (2 - s^2) = 2.$$
Tehát $s + h \in H$ és $s + h > s$, vagyis $s$ valóban nem felső korlát.

*2. lépés: ha $s$ racionális felső korlát, akkor $s^2 > 2$.* Mivel $1 \in H$, ezért $s \ge 1 > 0$. Az 1. lépés szerint $s^2 < 2$ nem lehet; $s^2 = 2$ pedig a 2. szakasz tétele szerint lehetetlen. Tehát $s^2 > 2$.

*3. lépés: ha $s$ racionális felső korlát, akkor van nála kisebb racionális felső korlát.* Legyen
$$t = s - \frac{s^2 - 2}{2s} = \frac{s^2 + 2}{2s}.$$
Ez racionális, és $t < s$, mert $s^2 - 2 > 0$ és $2s > 0$. Továbbá
$$t^2 - 2 = \frac{(s^2+2)^2 - 8s^2}{4s^2} = \frac{s^4 - 4s^2 + 4}{4s^2} = \frac{(s^2 - 2)^2}{4s^2} > 0,$$
tehát $t^2 > 2$, és $t > 0$. Ha most $x \in H$, akkor $x^2 < 2 < t^2$, amiből $x < t$ (ha $x \ge t > 0$ volna, akkor $x^2 \ge t^2$ adódna). Tehát $t$ is felső korlát.

Összefoglalva: a $\mathbb{Q}$-ban dolgozva a $H$ halmaz felső korlátjai között **nincs legkisebb**. Szemléletesen: a „legkisebb felső korlát” a $\sqrt{2}$ volna, de az nem racionális, így a $\mathbb{Q}$-ban egy lyuk tátong a helyén. (A 3. lépésben szereplő $s \mapsto \frac{s^2 + 2}{2s} = \frac{1}{2}\left(s + \frac{2}{s}\right)$ átalakítás egyébként a négyzetgyökvonás ősi babiloni módszere: $s = 2$-ből indulva $\frac{3}{2}$, $\frac{17}{12}$, $\frac{577}{408}, \dots$ adódik, amelyek rohamosan közelítik a $\sqrt{2} = 1{,}41421\dots$ értéket.)

## 8. A teljességi axióma: szuprémum és infimum

Elérkeztünk a valós számok legfontosabb tulajdonságához. Az előző szakaszban láttuk, hogy a $\mathbb{Q}$-ban egy nem üres, felülről korlátos halmaznak nem feltétlenül van legkisebb felső korlátja. A valós számok éppen abban különböznek a racionálisaktól, hogy ott ez mindig létezik.

> **Teljességi axióma.** Ha $H \subset \mathbb{R}$, $H \neq \emptyset$ és $H$ felülről korlátos, akkor $H$-nak van legkisebb felső korlátja. Ezt a számot a $H$ **szuprémumának** (felső határának) nevezzük, és $\sup H$-val jelöljük.

Részletezve: az $s = \sup H$ számra (a) $s$ felső korlátja $H$-nak, és (b) ha $K$ a $H$ bármely felső korlátja, akkor $s \le K$.

A szuprémum egyértelmű: ha $s_1$ és $s_2$ is legkisebb felső korlát volna, akkor mindkettő felső korlát, így a „legkisebb” tulajdonságból $s_1 \le s_2$ és $s_2 \le s_1$, tehát $s_1 = s_2$.

**Miért éppen ez az axióma?** Ez az, ami a $\sqrt{2}$-nél tátongó lyukat betömi. Ha a $H = \{x \in \mathbb{R} : x^2 < 2\}$ halmazt most a valós számok körében nézzük, akkor van szuprémuma, és — mint később belátjuk — ennek négyzete éppen $2$. A teljességi axióma tehát azt fejezi ki, hogy **a valós számegyenesen nincsenek lyukak**. A könyv hátralévő részében szinte minden fontos tétel visszavezethető erre az egyetlen axiómára — ezt a láncot a könyv végén, az Utószóban még egyszer végigkövetjük.

A szuprémumot a gyakorlatban rendszerint a következő jellemzés segítségével kezeljük.

> **Tétel (a szuprémum $\varepsilon$-os jellemzése).** Legyen $H \neq \emptyset$ felülről korlátos, és $s \in \mathbb{R}$. Ekkor $s = \sup H$ pontosan akkor, ha
>
> 1. $s$ felső korlátja $H$-nak, azaz minden $h \in H$-ra $h \le s$; és
> 2. minden $\varepsilon > 0$-hoz létezik olyan $h \in H$, amelyre $h > s - \varepsilon$.

A 2. feltétel szavakban: **$s$-nél akármilyen kicsivel kisebb szám már nem felső korlát**, vagyis bármilyen közel megyünk $s$-hez alulról, mindig találunk halmazbeli elemet.

*Bizonyítás.* Ha $s = \sup H$, akkor $s$ felső korlát (1. feltétel). Legyen $\varepsilon > 0$. Mivel $s - \varepsilon < s$, és $s$ a **legkisebb** felső korlát, ezért $s - \varepsilon$ nem felső korlát. Ez a felső korlát definíciójának tagadása szerint azt jelenti, hogy van olyan $h \in H$, amelyre $h > s - \varepsilon$ (2. feltétel).

Megfordítva, tegyük fel, hogy $s$ teljesíti az 1. és 2. feltételt. Az 1. szerint felső korlát; azt kell látnunk, hogy a legkisebb. Legyen $K < s$ tetszőleges; megmutatjuk, hogy $K$ nem felső korlát. Az $\varepsilon = s - K > 0$ választással a 2. feltétel szerint van olyan $h \in H$, amelyre $h > s - \varepsilon = K$. Tehát $K$ valóban nem felső korlát, így minden felső korlát legalább $s$. $\blacksquare$

**Kidolgozott példa.** Mutassuk meg, hogy $\sup\,(0, 1) = 1$. Az $1$ felső korlát, hiszen az intervallum minden eleme kisebb $1$-nél. Legyen $\varepsilon > 0$; keresnünk kell egy $h \in (0,1)$ elemet, amelyre $h > 1 - \varepsilon$. Ha $\varepsilon \ge 1$, akkor $h = \frac{1}{2}$ jó, hiszen $\frac{1}{2} > 0 \ge 1 - \varepsilon$. Ha $0 < \varepsilon < 1$, akkor $h = 1 - \frac{\varepsilon}{2}$ jó: ez a $(0,1)$ intervallumban van, és $1 - \frac{\varepsilon}{2} > 1 - \varepsilon$. A jellemzés szerint tehát $\sup\,(0,1) = 1$.

Az alsó oldalon ugyanez a helyzet, de ezt már nem kell külön axiómaként kimondani: következik a teljességi axiómából.

> **Tétel (az infimum létezése).** Ha $H \subset \mathbb{R}$, $H \neq \emptyset$ és $H$ alulról korlátos, akkor $H$-nak van legnagyobb alsó korlátja. Ezt a $H$ **infimumának** (alsó határának) nevezzük; jelölése $\inf H$.

**Az ötlet:** tükrözzük a halmazt a $0$-ra. A tükrözés az alsó korlátokat felső korlátokká, a legnagyobbat a legkisebbé változtatja.

*Bizonyítás.* Tekintsük a tükrözött halmazt:
$$-H = \{-h : h \in H\}.$$
Ez nem üres, és felülről korlátos: ha $k$ alsó korlátja $H$-nak, azaz $k \le h$ minden $h \in H$-ra, akkor $-h \le -k$, tehát $-k$ felső korlátja $-H$-nak. A teljességi axióma szerint tehát létezik $M = \sup(-H)$. Legyen $m = -M$. Megmutatjuk, hogy $m$ a $H$ legnagyobb alsó korlátja.

*$m$ alsó korlát:* minden $h \in H$ esetén $-h \in -H$, tehát $-h \le M$, azaz $h \ge -M = m$.

*$m$ a legnagyobb alsó korlát:* tegyük fel indirekt, hogy létezik $m' > m$ alsó korlát. Ekkor minden $h \in H$-ra $m' \le h$, tehát $-h \le -m'$, azaz $-m'$ felső korlátja $-H$-nak. Csakhogy $m < m'$ miatt $-m' < -m = M$, vagyis találtunk $M$-nél kisebb felső korlátot $-H$-hoz. Ez ellentmond annak, hogy $M$ a legkisebb felső korlát. $\blacksquare$

Az infimumra is érvényes az $\varepsilon$-os jellemzés, értelemszerűen megfordítva: $m = \inf H$ pontosan akkor, ha $m$ alsó korlát, és minden $\varepsilon > 0$-hoz van olyan $h \in H$, amelyre $h < m + \varepsilon$.

**Kiterjesztés a bővített számegyenesre.** Ha a $\pm\infty$ szimbólumokat is megengedjük, akkor **minden** valós számhalmaznak lesz szuprémuma és infimuma:

- ha $H \neq \emptyset$ felülről nem korlátos, akkor $\sup H = +\infty$;
- ha $H \neq \emptyset$ alulról nem korlátos, akkor $\inf H = -\infty$;
- $\sup \emptyset = -\infty$ és $\inf \emptyset = +\infty$.

Az üres halmazra vonatkozó megállapodás elsőre meghökkentő ($\sup \emptyset < \inf \emptyset$!), de következetes: az üres halmaznak minden valós szám felső korlátja, így a „legkisebb felső korlát” csak $-\infty$ lehet.

**A maximum és a szuprémum viszonya.** Ha $\max H$ létezik, akkor $\max H = \sup H$ — ezt az előző szakasz végén láttuk. A megfordítás nem igaz: $\sup\,(0,1) = 1$, de $\max\,(0,1)$ nem létezik. A szuprémum tehát a maximum általánosítása, amely akkor is létezik, amikor a halmaz nem éri el a saját „tetejét”. Pontosan: **a szuprémum akkor és csak akkor maximum, ha eleme a halmaznak.**

## 9. Az arkhimédészi és a Cantor-féle tulajdonság

A teljességi axióma két olyan következménnyel jár, amelyek önmagukban is alapvetők. Sok tankönyv ezeket külön axiómaként mondja ki; mi levezetjük őket.

> **Tétel (arkhimédészi tulajdonság).** Minden $x \in \mathbb{R}$-hez létezik olyan $n \in \mathbb{N}$, amelyre $n > x$.

Szemléletesen: a természetes számok „minden határon túl nőnek”, nincs olyan valós szám, amely az egész $\mathbb{N}$ fölött volna. Ez annyira nyilvánvalónak tűnik, hogy bizonyításra sem érdemesnek látszik — mégis bizonyításra szorul, és éppen a teljességből következik. (Léteznek olyan rendezett testek, amelyekben nem igaz! Ezekben vannak „végtelenül nagy” elemek, amelyek minden természetes számnál nagyobbak.)

*Bizonyítás.* Indirekt. Tegyük fel, hogy van olyan $x \in \mathbb{R}$, amelyre minden $n \in \mathbb{N}$ esetén $n \le x$. Ekkor $\mathbb{N}$ nem üres és felülről korlátos ($x$ felső korlát), így a teljességi axióma szerint létezik
$$c = \sup \mathbb{N} \in \mathbb{R}.$$
Mivel $c$ felső korlát, minden $n \in \mathbb{N}$-re $n \le c$. Ez minden természetes számra igaz, tehát az $n + 1$ természetes számra is: $n + 1 \le c$, azaz
$$n \le c - 1 \qquad \text{minden } n \in \mathbb{N}\text{-re}.$$
Eszerint $c - 1$ is felső korlátja $\mathbb{N}$-nek. Csakhogy $c - 1 < c$, ami ellentmond annak, hogy $c$ a **legkisebb** felső korlát. $\blacksquare$

A tételnek több hasznos átfogalmazása van, amelyeket a félév során folyamatosan használni fogunk.

> **Következmények.**
>
> 1. Minden $\varepsilon > 0$-hoz van olyan $n \in \mathbb{N}$, amelyre $\frac{1}{n} < \varepsilon$.
> 2. Ha $a > 0$ és $b \in \mathbb{R}$, akkor van olyan $n \in \mathbb{N}$, amelyre $na > b$.
> 3. Ha $x \ge 0$ és minden $n \in \mathbb{N}$-re $x \le \frac{1}{n}$, akkor $x = 0$.

*Bizonyítás.* 1. Az arkhimédészi tulajdonság szerint van $n > \frac{1}{\varepsilon}$; erre $\frac{1}{n} < \varepsilon$ (a 3. szakasz 5. szabálya szerint). 2. Legyen $n > \frac{b}{a}$; ekkor $na > b$. 3. Ha $x > 0$ volna, akkor az 1. pont szerint ($\varepsilon = x$) volna olyan $n$, amelyre $\frac{1}{n} < x$, ellentmondásban a feltevéssel. $\blacksquare$

A 2. pont a tétel eredeti, Archimédésztől származó megfogalmazása: akármilyen kicsi is egy $a$ szakasz, elég sokszor felmérve túlléphetünk bármely $b$ távolságon. A 3. pont pedig egy gyakran használt bizonyítási fogás alapja: **ha egy nemnegatív mennyiség minden pozitív számnál kisebb vagy egyenlő, akkor nulla.**

Az arkhimédészi tulajdonság fontos következménye a racionális számok sűrűsége.

> **Tétel (a racionális és az irracionális számok sűrűsége).** Bármely két különböző valós szám között van racionális szám és irracionális szám is.

*Bizonyítás.* Legyen $a < b$. Az 1. következmény szerint van olyan $n \in \mathbb{N}$, amelyre $\frac{1}{n} < b - a$, azaz $na + 1 < nb$. Legyen $m$ a legkisebb olyan egész szám, amely nagyobb $na$-nál. (Ilyen létezik: az arkhimédészi tulajdonság szerint van $na$-nál nagyobb egész, és van $na$-nál kisebb egész is, a köztük lévő véges sok egész közül pedig kiválaszthatjuk a legkisebbet, amely $na$-nál nagyobb.) Ekkor $m - 1 \le na < m$, tehát
$$na < m \le na + 1 < nb \implies a < \frac{m}{n} < b.$$
Az $\frac{m}{n}$ racionális szám tehát $a$ és $b$ közé esik.

Az irracionális számhoz alkalmazzuk az előzőt az $\frac{a}{\sqrt{2}} < \frac{b}{\sqrt{2}}$ számokra (feltéve, hogy már tudjuk: $\sqrt{2}$ létezik, ezt az 54. szakaszban bizonyítjuk). Van köztük $q$ racionális szám, és feltehetjük, hogy $q \neq 0$ (ha a talált szám éppen $0$ volna, alkalmazzuk az eljárást a $\left(0, \frac{b}{\sqrt{2}}\right)$ intervallumra). Ekkor $a < q\sqrt{2} < b$, és $q\sqrt{2}$ irracionális, hiszen ha racionális volna, akkor $\sqrt{2} = \frac{q\sqrt{2}}{q}$ is az volna. $\blacksquare$

A racionális és az irracionális számok tehát „összekeveredve”, mindenütt sűrűn helyezkednek el a számegyenesen. (Az 5. részben látni fogjuk, hogy mégis lényegesen több irracionális szám van, mint racionális!)

Most a teljességi axióma második nevezetes következménye.

> **Tétel (Cantor-féle közösrész-tulajdonság).** Ha
> $$[a_1, b_1] \supset [a_2, b_2] \supset [a_3, b_3] \supset \dots$$
> egymásba skatulyázott korlátos zárt intervallumok sorozata, akkor van olyan valós szám, amely mindegyik intervallumban benne van:
> $$\bigcap_{n=1}^{\infty} [a_n, b_n] \neq \emptyset.$$

Szemléletesen: ha egyre kisebb, egymásba ágyazott zárt intervallumaink vannak, akkor ezek nem „zsugorodhatnak semmivé” — mindig marad legalább egy közös pont. A $\mathbb{Q}$-ban ez nem igaz: a $\sqrt{2}$ tizedes közelítéseiből képzett $[1; 2] \supset [1{,}4;\ 1{,}5] \supset [1{,}41;\ 1{,}42] \supset \dots$ intervallumoknak a $\mathbb{Q}$-ban nincs közös pontja, hiszen az egyetlen „jelölt” a $\sqrt{2}$ volna.

*Bizonyítás.* Az egymásba skatulyázottság azt jelenti, hogy a bal végpontok növekednek, a jobb végpontok csökkennek:
$$a_1 \le a_2 \le a_3 \le \dots \qquad \text{és} \qquad b_1 \ge b_2 \ge b_3 \ge \dots,$$
és persze minden $n$-re $a_n \le b_n$.

**Az ötlet:** a közös pontot a bal végpontok szuprémumaként keressük meg.

Legyen $A = \{a_n : n \in \mathbb{N}\}$. Ez nem üres, és felülről korlátos: $a_n \le b_n \le b_1$ minden $n$-re. A teljességi axióma szerint létezik
$$c = \sup A.$$
Azt állítjuk, hogy minden $b_n$ felső korlátja $A$-nak. Legyen $n$ rögzített, és $a_k$ az $A$ tetszőleges eleme.

- Ha $k \le n$, akkor $a_k \le a_n \le b_n$.
- Ha $k > n$, akkor $a_k \le b_k \le b_n$.

Mindkét esetben $a_k \le b_n$, tehát $b_n$ valóban felső korlát. Mivel $c$ a **legkisebb** felső korlát, ebből $c \le b_n$ következik minden $n$-re. Másrészt $c$ felső korlát, így $a_n \le c$ minden $n$-re. Összefoglalva
$$a_n \le c \le b_n \qquad \text{minden } n \in \mathbb{N}\text{-re},$$
azaz $c$ minden intervallumban benne van. $\blacksquare$

**Miért kell, hogy az intervallumok korlátosak és zártak legyenek?** Mindkét feltétel lényeges:

- A **nyílt** intervallumok $\left(0, \frac{1}{n}\right)$ sorozata egymásba skatulyázott, de a metszet üres (lásd a C. szakasz példáját): minden $x > 0$-hoz van $n$, amelyre $\frac{1}{n} < x$ — és ez éppen az arkhimédészi tulajdonság.
- A **nem korlátos** zárt intervallumok $[n, +\infty)$ sorozata is egymásba skatulyázott, de a metszet üres: minden $x$-hez van $n > x$.

**Az axiómarendszer rugalmassága.** Megmutatható, hogy a teljességi axióma **ekvivalens** az arkhimédészi és a Cantor-féle tulajdonság együttesével:
$$\text{Teljességi axióma} \iff \big(\text{arkhimédészi tulajdonság} \wedge \text{Cantor-féle tulajdonság}\big).$$
Az egyik irányt most láttuk. Ez azt jelenti, hogy a valós számok felépíthetők úgy is, hogy a szuprémum létezése helyett ezt a két tulajdonságot posztuláljuk — ugyanoda jutunk.

---

## Az I. rész összefoglalása

- A racionális számok sűrűn helyezkednek el, mégis „lyukasak”: $\sqrt{2} \notin \mathbb{Q}$.
- A valós számokat a testaxiómák, a rendezési axiómák ($R_1$–$R_4$) és a teljességi axióma írja le. Minden egyenlőtlenségekre vonatkozó számolási szabály az axiómákból vezethető le.
- Az $|x - a|$ az $x$ és $a$ távolsága; $|x - a| < r \iff a - r < x < a + r$. A háromszög-egyenlőtlenség, $|a + b| \le |a| + |b|$, és a „hozzáadunk és kivonunk” fogás az analízis legfontosabb eszközei közé tartozik.
- A teljes indukció a természetes számokra vonatkozó állítássorozatok bizonyítási módszere.
- A teljességi axióma szerint minden nem üres, felülről korlátos valós halmaznak van szuprémuma (legkisebb felső korlátja). Az $\varepsilon$-os jellemzés: $s = \sup H$ akkor és csak akkor, ha $s$ felső korlát, és minden $\varepsilon > 0$-ra van $h \in H$, $h > s - \varepsilon$.
- A teljességből következik az arkhimédészi tulajdonság (a természetes számok nem korlátosak), a racionális számok sűrűsége és a Cantor-féle tulajdonság (egymásba skatulyázott korlátos zárt intervallumoknak van közös pontja).

## Feladatok az I. részhez

1. Bizonyítsuk be, hogy $\sqrt{3}$ irracionális! Általánosabban: ha $n \in \mathbb{N}$ nem négyzetszám, akkor $\sqrt{n} \notin \mathbb{Q}$.
2. Oldjuk meg a valós számok körében: a) $|x + 3| \le 2$; b) $|x - 1| > 4$; c) $|x - 1| < |x + 1|$.
3. Bizonyítsuk be teljes indukcióval, hogy minden $n \in \mathbb{N}$-re $1^2 + 2^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}$.
4. Határozzuk meg a következő halmazok szuprémumát, infimumát, és döntsük el, van-e maximumuk, illetve minimumuk: a) $\left\{\frac{1}{n} : n \in \mathbb{N}\right\}$; b) $\left\{(-1)^n + \frac{1}{n} : n \in \mathbb{N}\right\}$; c) $\left\{\frac{n}{n+1} : n \in \mathbb{N}\right\}$.
5. Legyen $A, B \subset \mathbb{R}$ nem üres, felülről korlátos, és $A + B = \{a + b : a \in A,\ b \in B\}$. Bizonyítsuk be, hogy $\sup(A + B) = \sup A + \sup B$.
6. Mutassuk meg, hogy ha $A \subset B$ és $A \neq \emptyset$, $B$ felülről korlátos, akkor $\sup A \le \sup B$.
7. Az $\left[0, \frac{1}{n}\right]$ intervallumok egymásba skatulyázottak. Mi a metszetük? És a $\left(0, \frac{1}{n}\right]$ intervallumoké? Miért nem mond ellent ez utóbbi a Cantor-féle tulajdonságnak?

### Megoldási útmutatók

1. Kövessük a 2. szakasz második bizonyítását: ha $\sqrt{n} = \frac{p}{q}$, akkor $nq^2 = p^2$. Mivel $n$ nem négyzetszám, van olyan $r$ prím, amelynek kitevője $n$ prímfelbontásában páratlan. Ekkor $r$ kitevője a bal oldalon páratlan, a jobb oldalon páros — ellentmondás.
2. a) $-2 \le x + 3 \le 2$, azaz $x \in [-5, -1]$. b) $x - 1 > 4$ vagy $x - 1 < -4$, azaz $x \in (-\infty, -3) \cup (5, +\infty)$. c) Geometriailag: $x$ közelebb van $1$-hez, mint $-1$-hez, azaz $x > 0$. Számolással: mindkét oldal nemnegatív, négyzetre emelve $x^2 - 2x + 1 < x^2 + 2x + 1$, azaz $x > 0$.
3. Az indukciós lépésben: $\frac{n(n+1)(2n+1)}{6} + (n+1)^2 = \frac{(n+1)\big(n(2n+1) + 6(n+1)\big)}{6} = \frac{(n+1)(2n^2 + 7n + 6)}{6} = \frac{(n+1)(n+2)(2n+3)}{6}$.
4. a) $\sup = \max = 1$; $\inf = 0$ (az arkhimédészi tulajdonság szerint minden $\varepsilon > 0$-ra van $\frac{1}{n} < \varepsilon$), minimum nincs. b) Az elemek: $0, \frac{3}{2}, -\frac{2}{3}, \frac{5}{4}, -\frac{4}{5}, \dots$. A páros indexű elemek $1 + \frac{1}{n} \le \frac{3}{2}$, a páratlan indexűek $-1 + \frac{1}{n} \le 0$, tehát $\sup = \max = \frac{3}{2}$. Minden elem nagyobb $-1$-nél, és a páratlan indexű elemek tetszőlegesen megközelítik a $-1$-et, így $\inf = -1$, minimum nincs. c) $\frac{n}{n+1} = 1 - \frac{1}{n+1}$; $\inf = \min = \frac{1}{2}$, $\sup = 1$, maximum nincs.
5. $\sup A + \sup B$ felső korlátja $A + B$-nek, mert $a + b \le \sup A + \sup B$. Adott $\varepsilon > 0$-hoz van $a \in A$, $a > \sup A - \frac{\varepsilon}{2}$, és $b \in B$, $b > \sup B - \frac{\varepsilon}{2}$; ekkor $a + b > \sup A + \sup B - \varepsilon$. Az $\varepsilon$-os jellemzés szerint kész.
6. $\sup B$ felső korlátja $B$-nek, tehát $A$-nak is; így a legkisebb felső korlát, $\sup A$, legfeljebb ekkora.
7. Az első metszet $\{0\}$ (a $0$ mindegyikben benne van; ha $x > 0$, akkor elég nagy $n$-re $\frac{1}{n} < x$). A második metszet üres. Ez nem mond ellent a tételnek, mert a $\left(0, \frac{1}{n}\right]$ intervallumok nem zártak.

---

# II. RÉSZ: NEVEZETES EGYENLŐTLENSÉGEK

Az algebrában a fő eszköz az egyenlőség: egyenleteket rendezünk, azonosságokat alkalmazunk. Az analízisben a helyzet más. A határértékek, a közelítések világában ritkán tudunk valamit pontosan kiszámolni; ehelyett **becslünk**: megmutatjuk, hogy egy mennyiség kisebb egy másiknál, vagy hogy két mennyiség eltérése tetszőlegesen kicsivé tehető. Az analízis igazi eszköze tehát az **egyenlőtlenség**.

Ebben a részben három klasszikus egyenlőtlenséget bizonyítunk: a számtani és mértani közép közötti egyenlőtlenséget, a harmonikus közepet is bevonó kiterjesztését, valamint a Bernoulli-egyenlőtlenséget. Mindhárom újra és újra elő fog kerülni — elsőként már a 17. szakaszban, ahol az $e$ szám definíciójához vezetnek.

## 10. A számtani és a mértani közép

Ha két szám „átlagáról” beszélünk, legtöbbször a számtani közepükre gondolunk. Az átlagnak azonban többféle értelmes fogalma van, és mindegyik más-más helyzetben természetes.

> **Definíció (közepek).** Legyenek $a_1, \dots, a_n$ pozitív valós számok.
>
> - A **számtani közepük** $\displaystyle S = \frac{a_1 + a_2 + \dots + a_n}{n}$.
> - A **mértani (geometriai) közepük** $\displaystyle m = \sqrt[n]{a_1 a_2 \cdots a_n}$.
> - A **harmonikus közepük** $\displaystyle h = \frac{n}{\frac{1}{a_1} + \frac{1}{a_2} + \dots + \frac{1}{a_n}}$.

(Az $n$-edik gyök létezését pozitív számokra egyelőre elfogadjuk; bizonyítását az 54. szakaszban adjuk meg.)

**Mikor melyik a természetes?** A számtani közép az összeget őrzi meg: ha minden $a_k$-t $S$-re cserélünk, az összeg nem változik. A mértani közép a **szorzatot** őrzi meg: ha minden $a_k$-t $m$-re cserélünk, a szorzat nem változik. Ha például egy befektetés értéke az első évben $a_1$-szeresére, a másodikban $a_2$-szeresére nő, akkor az „átlagos” éves növekedési szorzó az a $q$, amelyre $q^2 = a_1 a_2$, vagyis a mértani közép. (Ha az első évben $50\%$-ot nő, a másodikban $50\%$-ot csökken, akkor $a_1 = 1{,}5$ és $a_2 = 0{,}5$; a számtani közép $1$, ami azt sugallná, hogy a befektetés értéke nem változott — valójában $1{,}5 \cdot 0{,}5 = 0{,}75$, azaz $25\%$-ot veszítettünk, és az átlagos szorzó $\sqrt{0{,}75} \approx 0{,}866$.)

**Két szám esete, geometriailag.** Legyen $a, b > 0$. Rajzoljunk egy $a + b$ átmérőjű félkört, és az átmérőn jelöljük be azt a pontot, amely azt $a$ és $b$ hosszú részekre osztja. Az ebben a pontban emelt merőleges félkörig tartó szakaszának hossza — a magasságtétel szerint — $\sqrt{ab}$, a félkör sugara pedig $\frac{a+b}{2}$. Mivel egy félkörben semmilyen ilyen merőleges szakasz nem lehet hosszabb a sugárnál, $\sqrt{ab} \le \frac{a+b}{2}$, és egyenlőség csak akkor van, ha a merőlegest a középpontban emeljük, azaz $a = b$.

Ez az egyenlőtlenség tetszőleges számú tagra is igaz.

> **Tétel (a számtani és a mértani közép közötti egyenlőtlenség).** Ha $a_1, \dots, a_n$ pozitív számok, akkor
> $$\sqrt[n]{a_1 a_2 \cdots a_n} \le \frac{a_1 + a_2 + \dots + a_n}{n},$$
> és egyenlőség akkor és csak akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$.

A bizonyítás előtt nézzük meg, miért nem működik a szokásos teljes indukció. Ha tudjuk az állítást $n$ számra, és $n + 1$ számra akarjuk igazolni, akkor nem világos, hogyan használhatnánk fel az $n$-tagú esetet: az $n+1$-edik gyök és az $n$-edik gyök nem illeszkedik egymáshoz. Augustin-Louis Cauchy szellemes ötlete az volt, hogy az indukciót **két irányban** végezzük: először nagy lépésekkel felfelé ugrunk (a kettőhatványokon), majd egyesével visszafelé lépkedve töltjük ki a hézagokat.

Jelölje $A_n$ az $n$ számra vonatkozó állítást (az egyenlőség esetével együtt). Az $A_1$ triviális. A bizonyítás három lépésből áll:

- **I.** $A_2$ igaz.
- **II.** Ha $A_{k}$ igaz, akkor $A_{2k}$ is igaz. Ebből I. segítségével $A_2, A_4, A_8, \dots$, vagyis $A_{2^k}$ minden $k$-ra adódik.
- **III.** Ha $A_n$ igaz és $l < n$, akkor $A_l$ is igaz.

Ez a három lépés valóban elég: ha $l$ tetszőleges természetes szám, válasszunk egy $2^k > l$ kettőhatványt (például $k = l$ megfelel, hiszen $2^l > l$). A II. lépés szerint $A_{2^k}$ igaz, a III. lépés szerint pedig ebből $A_l$ is.

*Bizonyítás.*

**I. lépés: két szám esete.** Azt kell látnunk, hogy $a, b > 0$ esetén $\sqrt{ab} \le \frac{a+b}{2}$. Mindkét oldal pozitív, tehát az egyenlőtlenség ekvivalens a négyzetre emelt alakkal (pozitív számok körében $x \le y \iff x^2 \le y^2$):
$$ab \le \frac{(a+b)^2}{4} = \frac{a^2 + 2ab + b^2}{4}.$$
Átrendezve ez azt jelenti, hogy
$$0 \le \frac{a^2 - 2ab + b^2}{4} = \frac{(a - b)^2}{4},$$
ami igaz, hiszen négyzetszám nemnegatív. Egyenlőség pontosan akkor áll, ha $(a - b)^2 = 0$, azaz $a = b$.

**II. lépés: megduplázás.** Tegyük fel, hogy $A_k$ igaz, és legyen $a_1, \dots, a_{2k}$ pozitív. Osszuk a számokat két egyenlő, $k$ elemű csoportra, és legyen
$$\alpha = \sqrt[k]{a_1 \cdots a_k}, \qquad \beta = \sqrt[k]{a_{k+1} \cdots a_{2k}}$$
a két csoport mértani közepe. Az indukciós feltevés szerint
$$\alpha \le \frac{a_1 + \dots + a_k}{k}, \qquad \beta \le \frac{a_{k+1} + \dots + a_{2k}}{k}.$$
Az összes szám mértani közepét a két csoport mértani közepéből rakhatjuk össze, hiszen
$$\sqrt[2k]{a_1 \cdots a_{2k}} = \sqrt{\sqrt[k]{a_1 \cdots a_k}\cdot\sqrt[k]{a_{k+1}\cdots a_{2k}}} = \sqrt{\alpha\beta}.$$
Erre az I. lépést alkalmazva, majd a két indukciós becslést felhasználva:
$$\sqrt{\alpha\beta} \le \frac{\alpha + \beta}{2} \le \frac{1}{2}\left(\frac{a_1 + \dots + a_k}{k} + \frac{a_{k+1} + \dots + a_{2k}}{k}\right) = \frac{a_1 + \dots + a_{2k}}{2k}.$$
Ez éppen $A_{2k}$ egyenlőtlensége. Egyenlőség csak akkor állhat, ha mindhárom becslésben egyenlőség áll: $\alpha = \beta$, és mindkét csoporton belül minden szám egyenlő. Ekkor az első csoport minden eleme $\alpha$, a második minden eleme $\beta = \alpha$, tehát mind a $2k$ szám egyenlő.

**III. lépés: visszafelé lépés.** Legyen $l < n$, tegyük fel, hogy $A_n$ igaz, és legyen $a_1, \dots, a_l$ pozitív. Jelölje
$$s = \frac{a_1 + \dots + a_l}{l}$$
ezek számtani közepét. **A trükk:** egészítsük ki az $l$ számot $n$ számra úgy, hogy a hiányzó $n - l$ helyre magát a számtani közepet, $s$-et írjuk. Alkalmazzuk $A_n$-t az
$$a_1, \dots, a_l, \underbrace{s, s, \dots, s}_{n - l \text{ darab}}$$
számokra. A számtani közepük
$$\frac{a_1 + \dots + a_l + (n - l)s}{n} = \frac{ls + (n-l)s}{n} = s,$$
vagyis a kiegészítés a számtani közepet nem változtatta meg — éppen ezért választottuk így. $A_n$ szerint tehát
$$\sqrt[n]{a_1 \cdots a_l \cdot s^{n-l}} \le s.$$
Emeljük mindkét oldalt az $n$-edik hatványra, és osszunk $s^{n-l} > 0$-val:
$$a_1 \cdots a_l \cdot s^{n-l} \le s^n \implies a_1 \cdots a_l \le s^l.$$
Végül vonjunk $l$-edik gyököt:
$$\sqrt[l]{a_1 \cdots a_l} \le s = \frac{a_1 + \dots + a_l}{l},$$
ami éppen $A_l$ egyenlőtlensége. Egyenlőség pontosan akkor áll, ha az $A_n$-ben egyenlőség volt, azaz ha az $a_1, \dots, a_l, s, \dots, s$ számok mind egyenlők — vagyis $a_1 = \dots = a_l$ (és akkor ez a közös érték automatikusan $s$). $\blacksquare$

**Kidolgozott példa 1.** Ha $x > 0$, akkor
$$x + \frac{1}{x} \ge 2,$$
és egyenlőség csak $x = 1$-re áll. Valóban, az $x$ és $\frac{1}{x}$ számokra alkalmazva a tételt: $\frac{x + \frac{1}{x}}{2} \ge \sqrt{x \cdot \frac{1}{x}} = 1$.

**Kidolgozott példa 2 (szélsőérték-feladat deriválás nélkül).** Az adott $2p$ kerületű téglalapok közül melyiknek legnagyobb a területe? Ha az oldalak $a$ és $b$, akkor $a + b = p$, és a terület
$$ab = \left(\sqrt{ab}\right)^2 \le \left(\frac{a+b}{2}\right)^2 = \frac{p^2}{4},$$
egyenlőséggel pontosan akkor, ha $a = b$. A maximális területű téglalap tehát a **négyzet**. Hasonlóan: adott térfogatú téglatestek közül a kocka felszíne a legkisebb. Ezek a feladatok később, a differenciálszámítás eszközeivel is megoldhatók lesznek (77. szakasz), de a közepek közötti egyenlőtlenség gyakran gyorsabb.

## 11. A harmonikus közép

**Egy motiváló feladat.** Egy autó $A$-ból $B$-be $60$ km/h, visszafelé $40$ km/h sebességgel halad. Mekkora az átlagsebessége a teljes úton? A kézenfekvő válasz, $50$ km/h, **hibás**. Ha a távolság $d$, akkor odafelé $\frac{d}{60}$, visszafelé $\frac{d}{40}$ órát utazik, tehát az átlagsebesség
$$\frac{2d}{\frac{d}{60} + \frac{d}{40}} = \frac{2}{\frac{1}{60} + \frac{1}{40}} = 48 \text{ km/h}.$$
Ez éppen a $60$ és a $40$ harmonikus közepe. A harmonikus közép tehát akkor természetes, amikor **azonos mennyiségekre** (itt: azonos távolságokra) vonatkozó **arányokat** (itt: sebességeket) átlagolunk. Hogy az eredmény kisebb lett, mint a számtani közép, az nem véletlen: a lassabb szakaszon több időt töltünk, ezért annak nagyobb a súlya.

A harmonikus és a mértani közép viszonyához nem kell új bizonyítás: elég a számtani–mértani egyenlőtlenséget a **reciprokokra** alkalmazni.

> **Tétel (a mértani és a harmonikus közép közötti egyenlőtlenség).** Pozitív $a_1, \dots, a_n$ számokra
> $$\frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}} \le \sqrt[n]{a_1 \cdots a_n},$$
> és egyenlőség pontosan akkor áll, ha $a_1 = \dots = a_n$.

*Bizonyítás.* Alkalmazzuk a számtani–mértani egyenlőtlenséget az $\frac{1}{a_1}, \dots, \frac{1}{a_n}$ pozitív számokra:
$$\sqrt[n]{\frac{1}{a_1} \cdots \frac{1}{a_n}} \le \frac{\frac{1}{a_1} + \dots + \frac{1}{a_n}}{n}.$$
A bal oldal $\frac{1}{\sqrt[n]{a_1 \cdots a_n}}$, azaz a mértani közép reciproka; a jobb oldal a harmonikus közép reciproka. Pozitív számok reciprokát véve az egyenlőtlenség megfordul (3. szakasz, 5. szabály):
$$\sqrt[n]{a_1 \cdots a_n} \ge \frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}.$$
Egyenlőség pontosan akkor áll, ha a reciprokok egyenlők, azaz ha az $a_k$ számok egyenlők. $\blacksquare$

A két tételt összevetve a három közép sorrendje mindig
$$h \le m \le S,$$
és bármelyik helyen pontosan akkor áll egyenlőség, ha mindegyik szám egyenlő. (A 44. szakaszban egy negyedik közepet, a **négyzetes közepet** is megismerünk, amely mindhárom fenti középnél legalább akkora.)

## 12. A Bernoulli-egyenlőtlenség

Az $(1 + x)^n$ hatványt a binomiális tétellel kifejthetjük:
$$(1 + x)^n = 1 + nx + \binom{n}{2}x^2 + \dots + x^n.$$
Ha $x \ge 0$, akkor a jobb oldalon minden tag nemnegatív, tehát nyilvánvalóan $(1+x)^n \ge 1 + nx$: az első két tagot megtartjuk, a többit elhagyjuk. A Bernoulli-egyenlőtlenség azt mondja, hogy ez a durva, de rendkívül hasznos becslés bizonyos **negatív** $x$-ekre is érvényben marad.

> **Tétel (Bernoulli-egyenlőtlenség).** Ha $x \ge -1$, akkor minden $n \in \mathbb{N}$ esetén
> $$(1+x)^n \ge 1 + nx.$$

*Bizonyítás (teljes indukcióval).*

*Kezdőlépés.* $n = 1$ esetén $(1+x)^1 = 1 + 1 \cdot x$, tehát egyenlőség áll.

*Indukciós lépés.* Tegyük fel, hogy $(1+x)^n \ge 1 + nx$. Ekkor
$$(1+x)^{n+1} = (1+x)\cdot(1+x)^n \ge (1+x)(1+nx).$$
Itt felhasználtuk az indukciós feltevést **és** azt, hogy $1 + x \ge 0$. Ez utóbbi pontosan az $x \ge -1$ feltétel: ha $1 + x$ negatív volna, akkor vele szorozva az egyenlőtlenség megfordulna. Kibontva a jobb oldalt:
$$(1+x)(1+nx) = 1 + nx + x + nx^2 = 1 + (n+1)x + nx^2 \ge 1 + (n+1)x,$$
mert $nx^2 \ge 0$. Ezzel az állítást $(n+1)$-re is igazoltuk. $\blacksquare$

Az indukciós lépésből az is kiolvasható, mikor áll egyenlőség: $n \ge 2$ esetén pontosan akkor, ha $x = 0$ (különben $nx^2 > 0$ miatt szigorú az egyenlőtlenség).

**Kell-e az $x \ge -1$ feltétel?** Páros $n$-re nem kellene ($n = 2$-re $(1+x)^2 = 1 + 2x + x^2 \ge 1 + 2x$ minden $x$-re igaz), páratlan $n$-re viszont igen. Például $n = 3$, $x = -4$ esetén
$$(1 + x)^3 = (-3)^3 = -27, \qquad 1 + 3x = -11,$$
és $-27 < -11$. A feltétel tehát általában nem hagyható el.

**Szemléletes jelentés.** Az $y = (1 + x)^n$ grafikonjához az $x = 0$ pontban húzott érintő éppen az $y = 1 + nx$ egyenes (ezt majd a differenciálszámításban látjuk be). A Bernoulli-egyenlőtlenség tehát azt mondja, hogy a grafikon az érintője fölött halad — ez a **konvexitás** jele, amellyel a 42. és a 81. szakaszban foglalkozunk.

**Kidolgozott példa 1.** Minden $n \in \mathbb{N}$-re
$$\left(1 + \frac{1}{n}\right)^n \ge 1 + n \cdot \frac{1}{n} = 2.$$
Ez az $e$ számot definiáló sorozat első becslése; a 17. szakaszban folytatjuk.

**Kidolgozott példa 2 (előzetes).** Ha $q > 1$, akkor a $q^n$ hatványok minden határon túl nőnek. Írjuk ugyanis $q$-t $q = 1 + b$ alakba, ahol $b > 0$. A Bernoulli-egyenlőtlenség szerint
$$q^n = (1 + b)^n \ge 1 + nb,$$
és az arkhimédészi tulajdonság szerint $1 + nb$ — elég nagy $n$-re — bármely adott számnál nagyobb. Ezt a becslést a 22. és a 61. szakaszban fogjuk felhasználni.

**Kiterjesztés racionális kitevőre.** Megmutatható (és a hatványozás tárgyalása után, a 79. szakasz konvexitási eszközeivel magától értetődővé válik), hogy ha $x \ge -1$ és $r$ racionális, akkor
$$0 < r < 1 \implies (1+x)^r \le 1 + rx, \qquad r > 1 \implies (1+x)^r \ge 1 + rx,$$
és mindkét esetben egyenlőség pontosan akkor áll, ha $x = 0$. (Az $r = \frac{1}{2}$ esetben ez a jól ismert $\sqrt{1 + x} \le 1 + \frac{x}{2}$ becslés.)

---

## A II. rész összefoglalása

- Pozitív számokra a harmonikus, a mértani és a számtani közép sorrendje $h \le m \le S$; egyenlőség csak akkor, ha minden szám egyenlő.
- A számtani–mértani egyenlőtlenség bizonyítása Cauchy kétirányú indukciójával megy: felfelé a kettőhatványokon, majd visszafelé egyesével, a hiányzó helyeket a számtani középpel kitöltve.
- A Bernoulli-egyenlőtlenség, $(1 + x)^n \ge 1 + nx$ ($x \ge -1$), az egyik legegyszerűbb és leghasznosabb becslés; az $x \ge -1$ feltétel az indukciós lépésben az $(1+x)$-szel való szorzásnál kell.

## Feladatok a II. részhez

1. Bizonyítsuk be, hogy pozitív $a, b, c$ esetén $(a + b)(b + c)(c + a) \ge 8abc$.
2. Egy kerékpáros egy emelkedőn $10$ km/h-val megy fel, majd ugyanazon az úton $30$ km/h-val jön le. Mennyi az átlagsebessége?
3. Bizonyítsuk be, hogy minden $n \ge 2$ egészre $n! < \left(\frac{n+1}{2}\right)^n$.
4. Bizonyítsuk be a Bernoulli-egyenlőtlenség segítségével, hogy minden $n \in \mathbb{N}$-re $\left(1 - \frac{1}{n^2}\right)^n \ge 1 - \frac{1}{n}$.
5. Adott $V$ térfogatú téglatestek közül melyiknek a legkisebb a felszíne?
6. Bizonyítsuk be, hogy ha $a_1, \dots, a_n > 0$ és $a_1 a_2 \cdots a_n = 1$, akkor $a_1 + \dots + a_n \ge n$.

### Megoldási útmutatók

1. A három tényezőre külön-külön: $a + b \ge 2\sqrt{ab}$, $b + c \ge 2\sqrt{bc}$, $c + a \ge 2\sqrt{ca}$. A pozitív oldalú egyenlőtlenségeket összeszorozva $(a+b)(b+c)(c+a) \ge 8\sqrt{a^2b^2c^2} = 8abc$.
2. A $10$ és a $30$ harmonikus közepe: $\frac{2}{\frac{1}{10} + \frac{1}{30}} = 15$ km/h.
3. Alkalmazzuk a számtani–mértani egyenlőtlenséget az $1, 2, \dots, n$ számokra: $\sqrt[n]{n!} \le \frac{1 + 2 + \dots + n}{n} = \frac{n+1}{2}$. Mivel $n \ge 2$ esetén a számok nem mind egyenlők, az egyenlőtlenség szigorú.
4. Az $x = -\frac{1}{n^2} \ge -1$ választással $(1 + x)^n \ge 1 + nx = 1 - \frac{1}{n}$.
5. Ha az élek $a, b, c$, akkor $abc = V$, a felszín $2(ab + bc + ca)$. A számtani–mértani egyenlőtlenség szerint $\frac{ab + bc + ca}{3} \ge \sqrt[3]{a^2b^2c^2} = V^{2/3}$, egyenlőséggel pontosan akkor, ha $ab = bc = ca$, azaz $a = b = c$. A kocka felszíne a legkisebb.
6. $\frac{a_1 + \dots + a_n}{n} \ge \sqrt[n]{a_1 \cdots a_n} = 1$.

---

# III. RÉSZ: FÜGGVÉNYEK ÉS RELÁCIÓK

Az analízis a függvények tudománya. Mielőtt a függvények határértékéről, folytonosságáról vagy deriváltjáról beszélnénk, tisztáznunk kell magát a függvény fogalmát, és azokat az alapvető tulajdonságokat (injektivitás, szürjektivitás, invertálhatóság), amelyekre később folyamatosan hivatkozni fogunk. Ebben a részben azt is látni fogjuk, hogy a **sorozat** — a IV. rész főszereplője — nem más, mint egy speciális függvény.

## 13. A függvény fogalma

Középiskolában a függvényt rendszerint képlettel adták meg: $f(x) = x^2$, $g(x) = \sin x$. A képlet azonban csak az egyik módja a függvény megadásának. A lényeg a **hozzárendelés**: minden bemenethez pontosan egy kimenet tartozik.

> **Definíció (függvény).** Legyenek $A$ és $B$ halmazok. Ha az $A$ minden $a$ eleméhez hozzá van rendelve a $B$ egy és csak egy eleme, amelyet $f(a)$-val jelölünk, akkor ezt a hozzárendelést **függvénynek** nevezzük, és így jelöljük: $f : A \to B$.
>
> - Az $A$ halmaz az $f$ **értelmezési tartománya**, jelölése $D(f)$.
> - Az $f(a)$ az $f$ függvény $a$ helyen felvett **értéke** (az $a$ **képe**).
> - Az $R(f) = \{f(a) : a \in A\}$ halmaz az $f$ **értékkészlete**.

A definíció két követelményt tartalmaz: (1) **minden** $a \in A$-hoz tartozzon érték, és (2) **csak egy** érték tartozzon hozzá. A $B$ halmaz szerepe annyi, hogy megmondja, hová képez a függvény; nem kell, hogy minden elemét felvegye. Ezért különböztetjük meg $B$-t az értékkészlettől: mindig $R(f) \subset B$, de az egyenlőség nem feltétlenül áll.

**Példák.**

- $f : \mathbb{R} \to \mathbb{R}$, $f(x) = x^2$. Itt $D(f) = \mathbb{R}$, $R(f) = [0, +\infty)$ (minden nemnegatív szám előáll négyzetként — ezt a gyökvonás létezése garantálja, 54. szakasz), és $R(f) \neq \mathbb{R}$.
- Rendeljük minden magyar állampolgárhoz a születési évét. Ez függvény, hiszen mindenkinek pontosan egy születési éve van.
- Rendeljük minden pozitív számhoz azokat a számokat, amelyeknek ő a négyzete: $4 \mapsto \pm 2$. Ez **nem** függvény, mert a $4$-hez két érték tartozna. (A $\sqrt{\phantom{x}}$ függvényt éppen úgy definiáljuk, hogy a két lehetőség közül mindig a nemnegatívat választjuk.)

**Jelölési megjegyzés.** Szigorúan véve $f$ a függvény, $f(x)$ pedig egy szám, a függvény értéke az $x$ helyen. A gyakorlatban mégis gyakran mondjuk, hogy „az $x^2$ függvény” — ezt a pontatlanságot mi is megengedjük, ha nem okoz félreértést. A precíz jelölés: $x \mapsto x^2$ (olvasd: „$x$-hez $x^2$-et rendelő függvény”).

**Természetes értelmezési tartomány.** Ha egy függvényt csak képlettel adunk meg, és nem mondjuk meg az értelmezési tartományát, akkor megállapodás szerint a valós számok azon legbővebb halmazát értjük alatta, amelyen a képlet értelmes. Például $f(x) = \frac{1}{x - 1}$ esetén $D(f) = \mathbb{R} \setminus \{1\}$; $g(x) = \sqrt{1 - x^2}$ esetén $D(g) = [-1, 1]$, mert a gyök alatt nemnegatív számnak kell állnia.

## 14. Injektív, szürjektív, bijektív függvények; az inverz

Gyakran szeretnénk egy függvényt „visszafelé” alkalmazni: adott értékből visszakövetkeztetni arra, hogy melyik helyen vette fel a függvény. Ez nem mindig lehetséges. Két dolog romolhat el: lehet, hogy egy értéket **több** helyen is felvesz a függvény (ekkor nem tudjuk, melyikre gondoljunk), és lehet, hogy egy $B$-beli értéket **egyáltalán nem** vesz fel (ekkor nincs mire gondolni). A következő definíciók ezt a két problémát választják szét.

> **Definíció.** Az $f : A \to B$ függvény
>
> - **injektív** (kölcsönösen egyértelmű „befelé”), ha különböző helyeken különböző értéket vesz fel: minden $a_1, a_2 \in A$, $a_1 \neq a_2$ esetén $f(a_1) \neq f(a_2)$;
> - **szürjektív** (ráképezés), ha minden $B$-beli értéket felvesz: $R(f) = B$;
> - **bijektív** (kölcsönösen egyértelmű), ha injektív és szürjektív is.

Az injektivitást gyakran a kontrapozíciós alakjában ellenőrizzük: **$f$ injektív, ha $f(a_1) = f(a_2)$-ből mindig következik $a_1 = a_2$.**

**Grafikus szemléltetés.** Valós függvényekre: $f$ pontosan akkor injektív, ha minden vízszintes egyenes legfeljebb egy pontban metszi a grafikonját; és $f : A \to B$ pontosan akkor szürjektív, ha minden $y \in B$ magasságban húzott vízszintes egyenes legalább egy pontban metszi.

**Példák.** Figyeljük meg, hogy a tulajdonságok az értelmezési tartománytól és a $B$ halmaztól is függnek!

- $f : \mathbb{R} \to \mathbb{R}$, $f(x) = x^2$: nem injektív ($f(-1) = f(1)$), nem szürjektív (a $-1$-et nem veszi fel).
- $f : [0, +\infty) \to \mathbb{R}$, $f(x) = x^2$: injektív (nemnegatív számok négyzetei különbözők, ha a számok különbözők), de nem szürjektív.
- $f : [0, +\infty) \to [0, +\infty)$, $f(x) = x^2$: bijektív.
- $f : \mathbb{R} \to \mathbb{R}$, $f(x) = 2x + 3$: bijektív. Injektív, mert $2x_1 + 3 = 2x_2 + 3$-ból $x_1 = x_2$; szürjektív, mert tetszőleges $y$-ra $x = \frac{y - 3}{2}$ esetén $f(x) = y$.

> **Definíció (halmaz képe).** Ha $f : A \to B$ és $H \subset A$, akkor a $H$ **képe** az $f(H) = \{f(x) : x \in H\}$ halmaz. Speciálisan $R(f) = f(A)$.

Például $f(x) = x^2$ esetén $f\big([-1, 2]\big) = [0, 4]$ és $f\big((1, 3)\big) = (1, 9)$.

> **Definíció (inverz függvény).** Ha $f : A \to B$ bijektív, akkor az a hozzárendelés, amely minden $b \in B$ elemhez azt az egyértelműen meghatározott $a \in A$ elemet rendeli, amelyre $f(a) = b$, az $f$ **inverz függvénye**; jelölése $f^{-1}$.

A bijektivitás mindkét fele szükséges: a **szürjektivitás** biztosítja, hogy minden $b$-hez legyen ilyen $a$, az **injektivitás**, hogy csak egy legyen. Az inverzre
$$D(f^{-1}) = R(f) = B, \qquad R(f^{-1}) = D(f) = A,$$
$f^{-1}$ maga is bijektív, és $(f^{-1})^{-1} = f$. Az inverz definíciója tömören:
$$f^{-1}(b) = a \iff f(a) = b.$$

**Hogyan számoljuk ki az inverzt?** Az $y = f(x)$ egyenletet oldjuk meg $x$-re. Az $f(x) = 2x + 3$ példában $y = 2x + 3$-ból $x = \frac{y - 3}{2}$, tehát $f^{-1}(y) = \frac{y-3}{2}$. (Ha szokás szerint ismét $x$-szel jelöljük a változót: $f^{-1}(x) = \frac{x - 3}{2}$.) Az $f : [0, +\infty) \to [0, +\infty)$, $f(x) = x^2$ függvény inverze a négyzetgyökfüggvény: $f^{-1}(x) = \sqrt{x}$.

**Az inverz grafikonja.** Ha $(a, b)$ az $f$ grafikonjának pontja, azaz $f(a) = b$, akkor $f^{-1}(b) = a$, tehát $(b, a)$ az $f^{-1}$ grafikonjának pontja. Az $(a,b) \mapsto (b,a)$ csere az $y = x$ egyenesre való tükrözés, így **az inverz grafikonja az eredeti grafikon tükörképe az $y = x$ egyenesre.**

**Figyelem: $f^{-1}$ nem $\frac{1}{f}$!** A $\sin^{-1}$ jelölés például az arkusz szinusz függvényt jelenti (59. szakasz), nem az $\frac{1}{\sin x}$-et. Ezt a kétértelműséget elkerülendő a reciprokot mindig törttel írjuk.

## 15. Kompozíció és az identikus függvény

Függvényeket „egymás után kapcsolhatunk”: először alkalmazzuk az egyiket, majd az eredményre a másikat.

> **Definíció (összetett függvény, kompozíció).** Legyen $f : A \to B$ és $g : C \to D$. Az $f$ és $g$ **kompozíciója** a $g \circ f$ függvény, amelyre
> $$(g \circ f)(a) = g\big(f(a)\big),$$
> és amely azokon az $a \in A$ helyeken értelmezett, ahol $f(a) \in C$.

A jelölésben a sorrend fordított: $g \circ f$ azt jelenti, hogy **először $f$-et**, majd $g$-t alkalmazzuk (ahogy a $g(f(a))$ képletben is belülről kifelé haladunk). A $g$ a **külső**, az $f$ a **belső** függvény.

A leggyakoribb eset az, amikor $f : X \to Y$ és $g : Y \to Z$; ekkor $g \circ f : X \to Z$ az egész $X$-en értelmezett, és $R(g \circ f) \subset R(g)$.

**Példa.** Legyen $f(x) = x^2 + 1$ és $g(x) = \sqrt{x}$. Ekkor
$$(g \circ f)(x) = \sqrt{x^2 + 1} \quad (x \in \mathbb{R}), \qquad (f \circ g)(x) = (\sqrt{x})^2 + 1 = x + 1 \quad (x \ge 0).$$
A két kompozíció különbözik: **a kompozíció nem kommutatív.** Az értelmezési tartományok is mások: $f \circ g$ csak ott értelmes, ahol $g$ értelmes, azaz $x \ge 0$-ra. A kompozíció viszont **asszociatív**: $h \circ (g \circ f) = (h \circ g) \circ f$, hiszen mindkét oldal az $x \mapsto h(g(f(x)))$ függvény.

A differenciálszámításban a kompozíció kulcsszerepet játszik: a **láncszabály** (68. szakasz) éppen azt mondja meg, hogyan kell összetett függvényt deriválni. Ezért fontos, hogy egy bonyolult képletben felismerjük a kompozíciót. Például $\sin(x^2)$-ben a belső függvény $x^2$, a külső $\sin$; míg $\sin^2 x = (\sin x)^2$-ben a belső $\sin$, a külső a négyzetre emelés.

> **Definíció (identikus függvény).** Az $\mathrm{id}_A : A \to A$, $\mathrm{id}_A(a) = a$ függvényt az $A$ halmaz **identikus függvényének** (identitásának) nevezzük.

Ha $f : A \to B$ bijektív, akkor az inverz definíciójából azonnal adódik, hogy
$$f^{-1} \circ f = \mathrm{id}_A, \qquad f \circ f^{-1} = \mathrm{id}_B.$$
Szavakban: ha alkalmazzuk a függvényt, majd az inverzét, visszajutunk oda, ahonnan elindultunk — és fordítva. Ez a tulajdonság jellemzi is az inverzt.

> **Tétel.** Legyen $f : A \to B$ és $g : B \to A$. Ekkor $f$ bijektív és $g = f^{-1}$ akkor és csak akkor, ha egyszerre teljesül
> $$\text{(I)}\quad g \circ f = \mathrm{id}_A \qquad \text{és} \qquad \text{(II)}\quad f \circ g = \mathrm{id}_B.$$

*Bizonyítás.* Ha $f$ bijektív és $g = f^{-1}$, akkor (I) és (II) a fenti megjegyzés.

Megfordítva, tegyük fel, hogy (I) és (II) teljesül.

*$f$ injektív:* ha $f(a_1) = f(a_2)$, akkor $g$-t alkalmazva $g(f(a_1)) = g(f(a_2))$, ami (I) szerint azt jelenti, hogy $a_1 = a_2$.

*$f$ szürjektív:* ha $b \in B$ tetszőleges, akkor (II) szerint $f(g(b)) = b$, tehát $b$-t felveszi az $f$ a $g(b)$ helyen.

*$g = f^{-1}$:* minden $b \in B$-re $f(g(b)) = b$, tehát $g(b)$ éppen az az (egyértelmű) elem, amelyet $f$ a $b$-be visz, azaz $g(b) = f^{-1}(b)$. $\blacksquare$

A bizonyításból az is kiolvasható, hogy a két feltétel más-más dolgot biztosít: (I)-ből az $f$ **injektivitása**, (II)-ből a **szürjektivitása** következik. Ezért egyik feltétel sem hagyható el.

**Ellenpélda: (I) teljesül, (II) nem.** Legyen $A = B = \mathbb{N}$,
$$f(n) = n + 1, \qquad g(n) = \begin{cases} n - 1 & \text{ha } n > 1, \\ 1 & \text{ha } n = 1. \end{cases}$$
Ekkor minden $n \in \mathbb{N}$-re $g(f(n)) = g(n + 1) = n$, tehát (I) fennáll. Ugyanakkor $f(g(1)) = f(1) = 2 \neq 1$, tehát (II) nem teljesül. Az ok: $f$ injektív, de nem szürjektív (az $1$-et nem veszi fel), így nincs inverze. (Fordított szerepekkel, $f$ és $g$ felcserélésével, olyan példát kapunk, amelyben (II) teljesül, de (I) nem.)

## 16. Rendezett n-esek, sorozatok, Descartes-szorzat, relációk

Ebben a szakaszban néhány halmazelméleti fogalmat rögzítünk. Különösen fontos számunkra, hogy a **sorozat** fogalmát a függvény fogalmára vezetjük vissza: így minden, amit a függvényekről tudunk, a sorozatokra is érvényes lesz.

> **Definíció ($n$-tagú sorozat, rendezett $n$-es).** Az $\{1, 2, \dots, n\}$ halmazon értelmezett függvényeket **$n$-tagú sorozatoknak** vagy **rendezett $n$-eseknek** nevezzük. Ha $a : \{1, \dots, n\} \to A$, akkor a szokásos jelölés
> $$(a(1), a(2), \dots, a(n)) = (a_1, a_2, \dots, a_n).$$
> Az $n = 2$ eset a **rendezett pár**, az $n = 3$ eset a **rendezett hármas**.

A rendezett párban a sorrend számít: $(1, 2) \neq (2, 1)$, míg halmazként $\{1, 2\} = \{2, 1\}$. Két rendezett pár akkor és csak akkor egyenlő, ha az első és a második koordinátájuk is megegyezik.

> **Definíció (Descartes-szorzat).** Az $A$ és $B$ halmazok **Descartes-szorzata** (direkt szorzata) azon $(a, b)$ rendezett párok halmaza, amelyekre $a \in A$ és $b \in B$:
> $$A \times B = \{(a, b) : a \in A,\ b \in B\}.$$

A legismertebb példa az $\mathbb{R} \times \mathbb{R} = \mathbb{R}^2$, a koordinátasík: minden pontját egy $(x, y)$ számpár írja le. René Descartes, akiről a fogalmat elnevezték, éppen ezzel a felismeréssel alapozta meg a koordinátageometriát. Hasonlóan $[0,1] \times [0,1]$ az egységnégyzet.

Formálisan $(A \times A) \times A \neq A \times (A \times A)$ (az egyik elemei $((a,b),c)$, a másiké $(a,(b,c))$ alakúak), de mindkettő természetes módon azonosítható a rendezett hármasok halmazával, ezért a zárójeleket elhagyjuk, és $A \times A \times A = A^3$-ról beszélünk.

> **Definíció (végtelen sorozat).** A természetes számok $\mathbb{N}$ halmazán értelmezett függvényeket **(végtelen) sorozatoknak** nevezzük. Ha $a : \mathbb{N} \to A$, akkor jelölése
> $$(a_1, a_2, a_3, \dots) = (a_n)_{n=1}^{\infty} = (a_n).$$
> Az $a_n = a(n)$ szám a sorozat **$n$-edik tagja**, $n$ pedig az **indexe**.

Egy sorozat tehát egy végtelen „lista”, amelyben a sorrend számít, és ugyanaz az érték többször is előfordulhat. Például a $\big((-1)^n\big)$ sorozat $(-1, 1, -1, 1, \dots)$, amelynek értékkészlete csak a kételemű $\{-1, 1\}$ halmaz. A sorozat és az értékkészlete tehát nagyon különböző dolog!

Végül a relációk. Sok matematikai fogalom két dolog közötti viszonyt fejez ki: „kisebb”, „osztója”, „párhuzamos”, „egyenlő”. Ezek közös absztrakciója a reláció.

> **Definíció (reláció).** **Relációnak** nevezünk minden olyan halmazt, amelynek elemei rendezett párok. Ha $R \subset A \times B$, akkor $R$ az $A$ és $B$ közötti reláció. Ha $(a, b) \in R$, akkor azt mondjuk, hogy $a$ és $b$ **$R$-relációban állnak**, és ezt gyakran $a\,R\,b$-vel jelöljük.

**Példák.**

- A „kisebb” reláció a valós számokon: $\{(x, y) \in \mathbb{R}^2 : x < y\}$. Ez a koordinátasíkon az $y = x$ egyenes feletti nyílt félsík.
- Az **oszthatósági** reláció: $(n, m) \in \mathbb{N} \times \mathbb{N}$ akkor áll relációban, ha $n$ osztója $m$-nek, jelölése $n \mid m$.

**A függvény mint reláció.** Ez a definíció lehetővé teszi, hogy a függvény fogalmát is halmazelméletileg precízzé tegyük. Egy $f : A \to B$ függvényt azonosíthatunk a **grafikonjával**, az $\{(a, f(a)) : a \in A\} \subset A \times B$ relációval. Egy $R \subset A \times B$ reláció pontosan akkor grafikonja egy függvénynek, ha minden $a \in A$-hoz **pontosan egy** olyan $b$ van, amelyre $(a, b) \in R$. Geometriailag: minden függőleges egyenes pontosan egy pontban metszi. (Az egységkör, $\{(x,y) : x^2 + y^2 = 1\}$, ezért nem függvény grafikonja: az $x = 0$ egyenes két pontban metszi.)

**Ekvivalenciarelációk.** Az $A$ halmazon értelmezett $\sim$ relációt **ekvivalenciarelációnak** nevezzük, ha minden $a, b, c \in A$-ra

- **reflexív:** $a \sim a$;
- **szimmetrikus:** ha $a \sim b$, akkor $b \sim a$;
- **tranzitív:** ha $a \sim b$ és $b \sim c$, akkor $a \sim c$.

Az ekvivalenciareláció a „bizonyos szempontból egyformák” fogalom absztrakciója. Például két egész szám akkor álljon relációban, ha $3$-mal osztva ugyanazt a maradékot adják: ez ekvivalenciareláció. Az egyenlőség maga is ekvivalenciareláció. A „kisebb” viszont nem az (nem reflexív, nem szimmetrikus). Az ekvivalenciarelációkkal a 32. szakaszban, a halmazok számosságának összehasonlításánál találkozunk újra.

---

## A III. rész összefoglalása

- A függvény hozzárendelés, amely az értelmezési tartomány minden eleméhez pontosan egy értéket rendel. Az értékkészlet a ténylegesen felvett értékek halmaza.
- Injektív: különböző helyeken különböző értékek. Szürjektív: minden célbeli értéket felvesz. Bijektív: mindkettő. Csak bijekciónak van inverze, és az inverz grafikonja az $y = x$ egyenesre vett tükörkép.
- A kompozíció, $(g \circ f)(x) = g(f(x))$, asszociatív, de nem kommutatív. $g = f^{-1}$ pontosan akkor, ha $g \circ f$ és $f \circ g$ is identitás.
- A sorozat az $\mathbb{N}$-en értelmezett függvény. A reláció rendezett párok halmaza; a függvény azonosítható a grafikonjával.

## Feladatok a III. részhez

1. Határozzuk meg a természetes értelmezési tartományt és az értékkészletet: a) $f(x) = \sqrt{4 - x^2}$; b) $g(x) = \frac{1}{x - 1}$.
2. Injektív, szürjektív, bijektív-e az $\mathbb{R} \to \mathbb{R}$ függvényként tekintett a) $x^3$; b) $x^2 + x$; c) $|x|$?
3. Számítsuk ki az $f(x) = \frac{x + 1}{x - 1}$ ($x \neq 1$) függvény inverzét. Mi a meglepő az eredményben?
4. Bizonyítsuk be, hogy injektív függvények kompozíciója injektív, és szürjektív függvények kompozíciója szürjektív.
5. Adjunk meg olyan $f$ és $g$ függvényt, amelyre $g \circ f$ injektív, de $g$ nem az.
6. Az $\mathbb{R}$-en legyen $x \sim y$, ha $|x - y| < 1$. Reflexív, szimmetrikus, tranzitív-e ez a reláció?

### Megoldási útmutatók

1. a) $4 - x^2 \ge 0 \iff x \in [-2, 2]$; az értékkészlet $[0, 2]$ (a grafikon egy $2$ sugarú félkör). b) $D(g) = \mathbb{R} \setminus \{1\}$, $R(g) = \mathbb{R} \setminus \{0\}$ (minden $y \neq 0$ felvétetik az $x = 1 + \frac{1}{y}$ helyen, a $0$ nem).
2. a) Bijektív: szigorúan monoton növekedő, tehát injektív; szürjektív, mert minden valós számnak van köbgyöke (ezt az 54. szakaszban bizonyítjuk). b) Sem nem injektív ($f(0) = f(-1) = 0$), sem nem szürjektív: $x^2 + x = \left(x + \frac{1}{2}\right)^2 - \frac{1}{4} \ge -\frac{1}{4}$. c) Egyik sem.
3. $y = \frac{x+1}{x-1}$-ből $y(x - 1) = x + 1$, $x(y - 1) = y + 1$, $x = \frac{y + 1}{y - 1}$. Tehát $f^{-1} = f$ (az $\mathbb{R} \setminus \{1\}$ halmazon): a függvény önmaga inverze, azaz $f \circ f = \mathrm{id}$.
4. Ha $a \neq b$, akkor $f(a) \neq f(b)$, és ebből $g(f(a)) \neq g(f(b))$. Szürjektivitás: ha $z$ adott, van $y$ úgy, hogy $g(y) = z$, és van $x$ úgy, hogy $f(x) = y$.
5. Például $f : \{0\} \to \mathbb{R}$, $f(0) = 0$, és $g(x) = x^2$. Az egyetlen pontból álló halmazon értelmezett $g \circ f$ triviálisan injektív, $g$ nem.
6. Reflexív és szimmetrikus, de nem tranzitív: $0 \sim 0{,}6$ és $0{,}6 \sim 1{,}2$, de $0 \not\sim 1{,}2$.

---

# IV. RÉSZ: SZÁMSOROZATOK

Elérkeztünk a félév első igazán analitikus fogalmához, a **határértékhez**. Az 1. szakaszban láttuk, hogy mind a területszámítás, mind a pillanatnyi sebesség problémája azon múlik, hogy precízen ki tudjuk-e mondani: egy végtelen folyamat során kapott számok „egyre közelebb kerülnek” egy bizonyos számhoz. A legegyszerűbb végtelen folyamat a **sorozat**: számok végtelen listája, $a_1, a_2, a_3, \dots$. Ebben a részben a sorozatok határértékét definiáljuk, és felépítjük a határértékekkel való számolás teljes eszköztárát.

A rész a félév egyik leghosszabb és legfontosabb része. Ha valamit nagyon alaposan meg kell érteni, akkor ez az: a függvények határértéke, a folytonosság és a derivált mind a sorozatok határértékére épül.

## 17. Monotonitás, korlátosság; az (eₙ) sorozat

A 16. szakasz szerint egy valós sorozat egy $a : \mathbb{N} \to \mathbb{R}$ függvény; az $n$-edik tagot $a_n$-nel jelöljük. Sorozatot többféleképpen adhatunk meg:

- **explicit képlettel**, például $a_n = \frac{1}{n}$, $b_n = (-1)^n$, $c_n = \frac{n^2 + 1}{2n - 1}$;
- **rekurzióval**, azaz az első tag(ok) és egy szabály megadásával, amely az előző tagokból megmondja a következőt; például $a_1 = 2$, $a_{n+1} = \frac{1}{2}\left(a_n + \frac{2}{a_n}\right)$ — ez a 7. szakasz végén említett babiloni gyökvonó eljárás;
- **szöveges leírással**, például „$p_n$ az $n$-edik prímszám”.

A sorozatok két legegyszerűbb globális tulajdonsága a monotonitás és a korlátosság.

> **Definíció (monotonitás).** Az $(a_n)$ sorozat
>
> - **monoton növekedő**, ha minden $n \in \mathbb{N}$-re $a_n \le a_{n+1}$;
> - **monoton csökkenő**, ha minden $n$-re $a_n \ge a_{n+1}$;
> - **szigorúan monoton növekedő**, illetve **csökkenő**, ha a fenti egyenlőtlenségek szigorúak ($a_n < a_{n+1}$, illetve $a_n > a_{n+1}$);
> - **monoton**, ha monoton növekedő vagy monoton csökkenő.

A monotonitás ellenőrzésére két szokásos módszer van: megvizsgáljuk az $a_{n+1} - a_n$ **különbség** előjelét, vagy — pozitív tagú sorozatnál — összehasonlítjuk az $\frac{a_{n+1}}{a_n}$ **hányadost** az $1$-gyel.

**Példa.** Legyen $a_n = \frac{n}{n+1}$. Ekkor
$$a_{n+1} - a_n = \frac{n+1}{n+2} - \frac{n}{n+1} = \frac{(n+1)^2 - n(n+2)}{(n+1)(n+2)} = \frac{1}{(n+1)(n+2)} > 0,$$
tehát a sorozat szigorúan monoton növekedő.

> **Definíció (korlátosság).** Az $(a_n)$ sorozat **felülről korlátos**, **alulról korlátos**, illetve **korlátos**, ha az $\{a_n : n \in \mathbb{N}\}$ halmaz ilyen; vagyis például korlátos, ha van olyan $K$, hogy minden $n$-re $|a_n| \le K$.

**Négy alappélda.** A következő négy sorozatot érdemes egész félévben szem előtt tartani, mert ezek szolgálnak majd a leggyakrabban ellenpéldaként:

| sorozat | monotonitás | korlátosság | szemléletes viselkedés |
|---|---|---|---|
| $a_n = \frac{1}{n}$ | szigorúan monoton csökkenő | korlátos | egyre közelebb kerül $0$-hoz |
| $b_n = (-1)^n$ | nem monoton | korlátos | ide-oda ugrál $-1$ és $1$ között |
| $c_n = n$ | szigorúan monoton növekedő | alulról korlátos, felülről nem | minden határon túl nő |
| $d_n = (-1)^n n$ | nem monoton | se alulról, se felülről nem korlátos | egyre nagyobb kilengésekkel ugrál |

### Az $e$ számhoz vezető sorozatok

Most egy olyan sorozatot vizsgálunk, amely az analízis egyik legfontosabb állandójához, az $e$ számhoz vezet. Az eredete egy pénzügyi kérdés. Tegyük be $1$ forintot egy bankba évi $100\%$-os kamatra. Egy év múlva $2$ forintunk lesz. Ha a bank félévente tőkésít ($50\%$-ot fél év után, majd újabb $50\%$-ot a megnövelt összegre), akkor $\left(1 + \frac{1}{2}\right)^2 = 2{,}25$ forintunk lesz. Ha havonta tőkésít, akkor $\left(1 + \frac{1}{12}\right)^{12} \approx 2{,}613$, ha naponta, akkor $\left(1 + \frac{1}{365}\right)^{365} \approx 2{,}7146$. Általában $n$ részre osztva az évet
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
forintunk lesz. Kérdés: mi történik, ha egyre sűrűbben tőkésítünk? Nő-e a pénzünk minden határon túl, vagy van egy felső határ?

> **Állítás.** Az $e_n = \left(1 + \frac{1}{n}\right)^n$ sorozat szigorúan monoton növekedő.

*Bizonyítás.* Azt kell megmutatnunk, hogy $e_n < e_{n+1}$, azaz
$$\left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n+1}\right)^{n+1}.$$
**Az ötlet:** a bal oldalt fogjuk fel $n + 1$ szám szorzataként, és alkalmazzuk rá a számtani–mértani egyenlőtlenséget. Vegyünk $n$ darab $\left(1 + \frac{1}{n}\right)$ számot és egy darab $1$-est. Ezek nem mind egyenlők, tehát az egyenlőtlenség szigorú:
$$\sqrt[n+1]{\left(1 + \tfrac{1}{n}\right)^n \cdot 1} < \frac{n\left(1 + \frac{1}{n}\right) + 1}{n+1} = \frac{n + 1 + 1}{n+1} = 1 + \frac{1}{n+1}.$$
Mindkét oldalt az $(n+1)$-edik hatványra emelve (pozitív számokról van szó) éppen a kívánt egyenlőtlenséget kapjuk. $\blacksquare$

Vagyis a sűrűbb tőkésítés mindig jobban megéri. De vajon korlátos-e a sorozat? Ehhez egy másik sorozatot is bevezetünk.

> **Állítás.** A $d_n = \left(1 + \frac{1}{n}\right)^{n+1}$ sorozat szigorúan monoton csökkenő.

*Bizonyítás.* Most a reciprokokkal dolgozunk: $\frac{1}{d_n} = \left(\frac{n}{n+1}\right)^{n+1}$. Alkalmazzuk a számtani–mértani egyenlőtlenséget $n + 1$ darab $\frac{n}{n+1}$ számra és egy darab $1$-esre (összesen $n + 2$ számra, nem mind egyenlők):
$$\sqrt[n+2]{\left(\frac{n}{n+1}\right)^{n+1}\cdot 1} < \frac{(n+1)\cdot\frac{n}{n+1} + 1}{n+2} = \frac{n+1}{n+2}.$$
Az $(n+2)$-edik hatványra emelve
$$\left(\frac{n}{n+1}\right)^{n+1} < \left(\frac{n+1}{n+2}\right)^{n+2}, \qquad \text{azaz} \qquad \frac{1}{d_n} < \frac{1}{d_{n+1}}.$$
Pozitív számok reciprokát véve az egyenlőtlenség megfordul: $d_n > d_{n+1}$. $\blacksquare$

A két sorozat összefüggése: $d_n = e_n \cdot \left(1 + \frac{1}{n}\right) > e_n$. Ebből és a monotonitásokból minden $n$-re
$$2 = e_1 \le e_n < d_n \le d_1 = 4.$$
Az $(e_n)$ sorozat tehát **monoton növekedő és felülről korlátos** (például $4$-gyel), a $(d_n)$ sorozat pedig **monoton csökkenő és alulról korlátos**. A két sorozat közrefogja egymást.

Numerikusan:
$$e_1 = 2, \quad e_2 = 2{,}25, \quad e_{10} \approx 2{,}5937, \quad e_{100} \approx 2{,}7048, \quad e_{1000} \approx 2{,}7169,$$
és a sorozat egyre közelebb kerül a
$$e = 2{,}718281828\dots$$
számhoz. Hangsúlyozzuk: ez egyelőre **puszta tapasztalat**, nem bizonyítás. Ahhoz előbb tisztáznunk kell, mit jelent az, hogy „egyre közelebb kerül”. A pénzügyi kérdésre a válasz tehát: a pénzünk nem nő korlátlanul, akármilyen sűrűn tőkésítünk is, legfeljebb $e \approx 2{,}718$ forintunk lehet. (A „folytonos kamatozás” pontos tárgyalása a 86. szakasz differenciálegyenleteinél jön elő.)

## 18. A sorozat határértéke

### Mit jelent az, hogy „egyre közelebb kerül”?

Az $a_n = \frac{1}{n}$ sorozatról azt mondanánk, hogy „egyre közelebb kerül a $0$-hoz”. De vigyázat: ez a sorozat a $-1$-hez is egyre közelebb kerül! Hiszen $\left|\frac{1}{n} - (-1)\right| = 1 + \frac{1}{n}$, ami $n$ növekedtével csökken. Mégsem akarjuk azt mondani, hogy a sorozat a $-1$-hez tart. Mi a különbség? Az, hogy a $0$-hoz a sorozat **tetszőlegesen közel** kerül, a $-1$-hez viszont soha nem kerül $1$-nél közelebb.

Egy második finomság: az $1, 0, 1, 0, 1, 0, \dots$ sorozat tetszőlegesen közel kerül a $0$-hoz (sőt végtelen sokszor el is éri), mégsem akarjuk azt mondani, hogy a $0$-hoz tart, hiszen mindig visszaugrik az $1$-re. A helyes megfogalmazásban tehát az is benne kell legyen, hogy a sorozat **egy idő után ott is marad**, közel a határértékhez.

Ezt a két követelményt — tetszőlegesen közel, és egy idő után ott is marad — fogja össze a következő definíció.

> **Definíció (határérték).** Az $(a_n)$ sorozat **határértéke** az $a \in \mathbb{R}$ szám, ha minden $\varepsilon > 0$ számhoz létezik olyan $n_0 \in \mathbb{N}$ küszöbindex, hogy minden $n \ge n_0$ esetén
> $$|a_n - a| < \varepsilon.$$
> Ekkor azt mondjuk, hogy $(a_n)$ **tart** (konvergál) $a$-hoz.

Kvantorokkal:
$$\forall \varepsilon > 0\ \ \exists n_0 \in \mathbb{N}\ \ \forall n \ge n_0 : \ |a_n - a| < \varepsilon.$$

**A definíció mint játék.** Érdemes a definíciót egy kétszereplős játékként elképzelni. A „kételkedő” megad egy tetszőlegesen kicsi pozitív $\varepsilon$ tűrést. A „bizonyító” erre egy $n_0$ küszöbindexszel válaszol. A bizonyító akkor nyer, ha az $n_0$-adik tagtól kezdve **minden** tag az $a$-tól $\varepsilon$-nál kisebb távolságra van. Az $a_n \to a$ állítás azt jelenti, hogy a bizonyítónak **minden** $\varepsilon$-ra van nyerő válasza. A sorrend a lényeg: **először** adják meg az $\varepsilon$-t, és **utána** keressük az $n_0$-t, amely tehát függhet $\varepsilon$-tól. Kisebb $\varepsilon$-hoz általában nagyobb $n_0$ kell. (Ezért írjuk néha $n_\varepsilon$-t vagy $n_0(\varepsilon)$-t.)

Néhány megjegyzés:

- Az $n_0$ **nem egyértelmű**: ha egy $n_0$ jó, akkor minden nála nagyobb szám is jó. Nem kell tehát a „legjobb” küszöböt megkeresni, elég **egy** megfelelőt mutatni — és ezt gyakran durva becslésekkel érjük el.
- Az $n \ge n_0$ helyett $n > n_0$ is írható; ez lényegtelen.
- A határérték csak a sorozat **végső** viselkedésétől függ; az, hogy az első ezer tag mit csinál, nem számít.

**Környezetek.** Az $|a_n - a| < \varepsilon$ feltétel a 4. szakasz szerint azt jelenti, hogy
$$a_n \in B(a, \varepsilon) = (a - \varepsilon,\ a + \varepsilon).$$
A $B(a, \varepsilon)$ halmazt az $a$ pont **$\varepsilon$ sugarú környezetének** nevezzük. (Más jelöléssel $U_\varepsilon(a)$, a német *Umgebung* szóból; a $B$ az angol *ball*, gömb szóból ered, hiszen magasabb dimenzióban ez egy gömb.) A definíció tehát így is mondható: **az $a$ bármely környezetéhez van olyan küszöb, amelytől kezdve a sorozat minden tagja ebben a környezetben van.**

**Jelölések.**
$$\lim_{n \to \infty} a_n = a, \qquad \lim a_n = a, \qquad a_n \to a \ \ (n \to \infty), \qquad a_n \to a.$$
A „lim” a latin *limes* (határ) szóból származik.

> **Definíció.** Ha az $(a_n)$ sorozatnak van (véges) határértéke, akkor a sorozat **konvergens**. Ha nem konvergens, akkor **divergens**.

### Kidolgozott példák

**1. példa: $\lim \frac{1}{n} = 0$.** Legyen $\varepsilon > 0$ adott. Azt kell elérnünk, hogy $\left|\frac{1}{n} - 0\right| = \frac{1}{n} < \varepsilon$ teljesüljön minden elég nagy $n$-re. Ez pontosan akkor igaz, ha $n > \frac{1}{\varepsilon}$. Az arkhimédészi tulajdonság szerint van olyan $n_0 \in \mathbb{N}$, amelyre $n_0 > \frac{1}{\varepsilon}$. Ekkor minden $n \ge n_0$-ra $n > \frac{1}{\varepsilon}$, tehát $\frac{1}{n} < \varepsilon$. $\blacksquare$

(Ez a példa egyben megmutatja, hogy az arkhimédészi tulajdonság pontosan azt jelenti: $\frac{1}{n} \to 0$. A határérték-számítás legelső lépése is a teljességi axiómán múlik!)

**2. példa: $\lim \frac{n+1}{2n+3} = \frac{1}{2}$.** Először számoljuk ki az eltérést:
$$\left|\frac{n+1}{2n+3} - \frac{1}{2}\right| = \left|\frac{2(n+1) - (2n+3)}{2(2n+3)}\right| = \frac{1}{2(2n+3)}.$$
Ezt kell $\varepsilon$ alá szorítanunk. Pontos megoldás helyett **becsüljünk felülről valami egyszerűbbel**:
$$\frac{1}{2(2n+3)} < \frac{1}{4n}.$$
Ha tehát $\frac{1}{4n} < \varepsilon$, azaz $n > \frac{1}{4\varepsilon}$, akkor az eltérés is kisebb $\varepsilon$-nál. Legyen $n_0$ egy $\frac{1}{4\varepsilon}$-nál nagyobb természetes szám; ez jó küszöb. $\blacksquare$

A példa tanulsága a **becslés** módszere: nem kell az $|a_n - a| < \varepsilon$ egyenlőtlenséget pontosan megoldanunk; elég $|a_n - a|$-t felülről becsülni egy olyan kifejezéssel, amelyről könnyű látni, hogy elég nagy $n$-re $\varepsilon$ alá kerül.

**3. példa: $\lim \frac{(-1)^n}{2n} = 0$.** Itt $\left|\frac{(-1)^n}{2n} - 0\right| = \frac{1}{2n}$, tehát $n > \frac{1}{2\varepsilon}$ esetén az eltérés $\varepsilon$ alatt van. Például $\varepsilon = 0{,}01$ esetén $\frac{1}{2n} < 0{,}01 \iff n > 50$, tehát $n_0 = 51$ jó küszöb (és minden nagyobb szám is). A sorozat tagjai felváltva pozitívak és negatívak, de egyre kisebb kilengéssel, és egy idő után mind a $(-0{,}01;\ 0{,}01)$ sávba esnek.

**4. példa: az állandó sorozat.** Ha $a_n = c$ minden $n$-re, akkor $|a_n - c| = 0 < \varepsilon$ minden $n$-re, tehát $n_0 = 1$ bármely $\varepsilon$-ra jó: $a_n \to c$.

### Divergencia

Hogyan mutatjuk meg, hogy egy sorozat **nem** tart egy adott $a$-hoz? A definíció tagadásával (B. szakasz):
$$a_n \not\to a \iff \exists \varepsilon > 0\ \ \forall n_0\ \ \exists n \ge n_0 : |a_n - a| \ge \varepsilon.$$
Vagyis van egy olyan $\varepsilon$, hogy **végtelen sok** tag (akármilyen késői küszöbtől is indulunk, mindig van utána) legalább $\varepsilon$-nyira van $a$-tól. Egy sorozat pedig akkor **divergens**, ha **semmilyen** $a$-hoz nem tart.

**5. példa: a $\big((-1)^n\big)$ sorozat divergens.** Tegyük fel indirekt, hogy $(-1)^n \to a$ valamely $a$-ra. Az $\varepsilon = 1$-hez tartozó küszöbtől kezdve minden tag az $(a - 1, a + 1)$ intervallumban van, amelynek hossza $2$. Csakhogy ennek az intervallumnak tartalmaznia kellene a $-1$-et és az $1$-et is (hiszen a sorozat mindkettőt végtelen sokszor felveszi), és ezek távolsága éppen $2$. Egy $2$ hosszúságú *nyílt* intervallum nem tartalmazhat két, egymástól $2$ távolságra lévő pontot. Ellentmondás. Pontosabban: $|1 - (-1)| = 2$, de ha mindkettő az $a$-tól $1$-nél kisebb távolságra volna, akkor a háromszög-egyenlőtlenség szerint $|1 - (-1)| \le |1 - a| + |a - (-1)| < 1 + 1 = 2$ volna. $\blacksquare$

**6. példa: az $(n)$ sorozat divergens.** Ha $n \to a$ volna, akkor az $\varepsilon = 1$-hez tartozó $n_0$-tól kezdve minden $n$-re $n < a + 1$ teljesülne. Az arkhimédészi tulajdonság szerint azonban van $a + 1$-nél nagyobb természetes szám, sőt $n_0$-nál nagyobb is van ilyen. Ellentmondás. $\blacksquare$

**7. példa:** $\big((-1)^n n\big)$ is divergens; ez a 19. szakasz egyik tételéből azonnal következik majd (konvergens sorozat korlátos).

## 19. A határérték alaptulajdonságai

A definíció közvetlen alkalmazása fáradságos. Ebben és a következő szakaszokban olyan tételeket bizonyítunk, amelyek segítségével a határértékekkel „számolni” lehet. Elsőként egy átfogalmazást.

> **Tétel (átfogalmazás véges sok kivétellel).** A következő két állítás ekvivalens:
>
> - **(A)** $a_n \to a$.
> - **(B)** Minden $\varepsilon > 0$ esetén a sorozatnak csak **véges sok** (indexű) tagja esik a $B(a, \varepsilon)$ környezeten kívülre.

*Bizonyítás.* **(A) $\Rightarrow$ (B):** legyen $\varepsilon > 0$. A definíció szerint van olyan $n_0$, hogy $n \ge n_0$ esetén $a_n \in B(a, \varepsilon)$. A környezeten kívül tehát legfeljebb az $a_1, \dots, a_{n_0 - 1}$ tagok lehetnek, ami véges sok.

**(B) $\Rightarrow$ (A):** legyen $\varepsilon > 0$. A (B) szerint csak véges sok olyan $n$ index van, amelyre $a_n \notin B(a, \varepsilon)$. Legyen $n_0$ ezek legnagyobbikánál eggyel nagyobb (ha nincs ilyen index, akkor $n_0 = 1$). Ekkor minden $n \ge n_0$-ra $a_n \in B(a, \varepsilon)$. $\blacksquare$

Ez az átfogalmazás azt mondja, hogy **a határérték szempontjából a sorozat eleje közömbös**: véges sok tag megváltoztatása nem befolyásolja, hogy a sorozat konvergens-e, és ha igen, mi a határértéke. (A „véges sok indexű” kifejezés azért fontos, mert ugyanaz az érték végtelen sok indexen is előfordulhat: a $\big((-1)^n\big)$ sorozat az $1$ körüli $\frac{1}{2}$ sugarú környezeten kívül végtelen sok tagot hagy — a páratlan indexűeket —, noha ezek mind ugyanazt a $-1$ értéket veszik fel.)

> **Tétel (a határérték egyértelműsége).** Ha $a_n \to a$ és $a_n \to b$, akkor $a = b$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $a \neq b$, és legyen $\varepsilon = \frac{|a - b|}{2} > 0$. Ekkor a $B(a, \varepsilon)$ és $B(b, \varepsilon)$ környezetek **diszjunktak**: ha egy $x$ mindkettőben benne volna, akkor
$$|a - b| \le |a - x| + |x - b| < \varepsilon + \varepsilon = |a - b|$$
volna, ami lehetetlen. Mivel $a_n \to a$, van olyan $n_1$, hogy $n \ge n_1$ esetén $a_n \in B(a, \varepsilon)$; és mivel $a_n \to b$, van olyan $n_2$, hogy $n \ge n_2$ esetén $a_n \in B(b, \varepsilon)$. Ha $n \ge \max\{n_1, n_2\}$, akkor $a_n$ mindkét környezetben benne van — ellentmondás. $\blacksquare$

A bizonyításban egy gyakran használt fogással éltünk: **ha két feltétel közül az egyik $n_1$-től, a másik $n_2$-től kezdve teljesül, akkor $\max\{n_1, n_2\}$-től kezdve mindkettő teljesül.** Ugyanez véges sok feltételre is működik.

A határérték egyértelműsége teszi jogossá a $\lim a_n$ jelölést: ha van határérték, akkor csak egy van, így értelmes „a” határértékről beszélni.

> **Tétel.** Ha $(a_n)$ konvergens, akkor korlátos.

*Bizonyítás.* Legyen $a_n \to a$. Alkalmazzuk a definíciót $\varepsilon = 1$-re: van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < 1$, és ekkor a háromszög-egyenlőtlenség szerint
$$|a_n| = |(a_n - a) + a| \le |a_n - a| + |a| < 1 + |a|.$$
A küszöb előtti véges sok tag közül van abszolút értékben legnagyobb. Így a
$$K = \max\big\{|a_1|,\ |a_2|,\ \dots,\ |a_{n_0 - 1}|,\ 1 + |a|\big\}$$
szám minden $n$-re $|a_n| \le K$-t biztosít. $\blacksquare$

**A megfordítás hamis:** a $\big((-1)^n\big)$ sorozat korlátos, de divergens. A tétel kontrapozíciója viszont hasznos: **ha egy sorozat nem korlátos, akkor divergens.** Így például $\big((-1)^n n\big)$ divergens.

> **Tétel.** Ha $a_n \to a$, akkor $a_{n+1} - a_n \to 0$.

*Bizonyítás.* Legyen $\varepsilon > 0$. Mivel $a_n \to a$, van olyan $n_0$, hogy minden $n \ge n_0$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ugyanerre az $n$-re $n + 1 \ge n_0$ is teljesül, tehát $|a_{n+1} - a| < \frac{\varepsilon}{2}$ is. A „hozzáadunk és kivonunk” fogással:
$$|a_{n+1} - a_n| = |(a_{n+1} - a) + (a - a_n)| \le |a_{n+1} - a| + |a - a_n| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon. \qquad \blacksquare$$

Figyeljük meg a bizonyítás egy fontos technikai elemét: az $\varepsilon$-t **előre kettéosztottuk**, mert tudtuk, hogy a végén két kicsi tag összegét kell becsülnünk. Ezt a fogást ($\frac{\varepsilon}{2}$-trükk) a továbbiakban rendszeresen alkalmazzuk. (Egyenértékű megoldás: $\varepsilon$-nal dolgozunk, a végén $2\varepsilon$-t kapunk, és megjegyezzük, hogy mivel $\varepsilon$ tetszőleges volt, $2\varepsilon$ is tetszőlegesen kicsi.)

**Figyelem — a megfordítás hamis!** Abból, hogy $a_{n+1} - a_n \to 0$, **nem** következik, hogy $(a_n)$ konvergens. A szomszédos tagok egyre közelebb kerülhetnek egymáshoz úgy is, hogy a sorozat lassan, de minden határon túl nő. Ellenpéldát a 28. szakaszban adunk ($a_n = \sum_{k=1}^n \frac{1}{\sqrt{k}}$); egy egyszerűbb, de később tárgyalt példa a $\sqrt{n}$, amelyre $\sqrt{n+1} - \sqrt{n} = \frac{1}{\sqrt{n+1} + \sqrt{n}} \to 0$.

> **Tétel (a rendezés öröklődése).** Ha minden $n$-re $a_n \le b_n$, továbbá $a_n \to a$ és $b_n \to b$, akkor $a \le b$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $b < a$, és legyen
$$\varepsilon = \frac{a - b}{2} > 0.$$
Ekkor az $a$ és a $b$ $\varepsilon$ sugarú környezete diszjunkt, sőt, a $b$ körüli teljes egészében az $a$ körülitől balra esik: a kettő határa a $\frac{a + b}{2}$ felezőpont. Elég nagy $n$-re (ha $n$ mindkét küszöbnél nagyobb) $a_n \in B(a, \varepsilon)$ és $b_n \in B(b, \varepsilon)$, azaz
$$a_n > a - \varepsilon = \frac{a+b}{2}, \qquad b_n < b + \varepsilon = \frac{a+b}{2}.$$
Eszerint $b_n < \frac{a+b}{2} < a_n$, ami ellentmond az $a_n \le b_n$ feltevésnek. $\blacksquare$

Természetesen elég, ha az $a_n \le b_n$ egyenlőtlenség csak egy küszöbtől kezdve teljesül (a sorozatok eleje közömbös).

**Figyelem — a szigorú egyenlőtlenség nem öröklődik!** Ha minden $n$-re $a_n < b_n$, abból csak $a \le b$ következik, **nem** $a < b$. Ellenpélda: $a_n = \frac{1}{2n}$ és $b_n = \frac{1}{n}$. Itt $a_n < b_n$ minden $n$-re, mégis $\lim a_n = \lim b_n = 0$. Határátmenetnél a szigorú egyenlőtlenség „elmosódhat” egyenlőséggé.

**Speciális eset.** Ha $a_n \to a$ és minden $n$-re $a_n \ge 0$, akkor $a \ge 0$ (a $b_n \equiv 0$ választással). Ha egy sorozat tagjai egy $[c, d]$ zárt intervallumban vannak, akkor a határértéke is ott van. Ezt úgy is mondjuk, hogy **a zárt intervallumokból határátmenettel nem lehet kilépni** — ezt a tényt az 54. szakaszban fel fogjuk használni.

**További hasznos ekvivalenciák.** A definícióból közvetlenül látszik, hogy
$$a_n \to a \iff a_n - a \to 0, \qquad a_n \to 0 \iff |a_n| \to 0,$$
hiszen mindhárom esetben ugyanazt a $|a_n - a| < \varepsilon$, illetve $|a_n| < \varepsilon$ egyenlőtlenséget kell vizsgálni. Ezen felül: ha $a_n \to a$, akkor $|a_n| \to |a|$, ugyanis a fordított háromszög-egyenlőtlenség szerint $\big||a_n| - |a|\big| \le |a_n - a|$. Ennek megfordítása $a \neq 0$ esetén nem igaz: $\big|(-1)^n\big| \to 1$, de $(-1)^n$ divergens.

## 20. Részsorozatok

Egy sorozatból kiválaszthatunk végtelen sok tagot úgy, hogy a sorrendjüket megtartjuk. Például a $\big((-1)^n\big)$ sorozat páros indexű tagjai az $1, 1, 1, \dots$ sorozatot alkotják.

> **Definíció (részsorozat).** Legyen $(a_n)$ egy sorozat, és legyen $n_1 < n_2 < n_3 < \dots$ természetes számok egy szigorúan növekedő sorozata. Ekkor a $b_k = a_{n_k}$ ($k = 1, 2, \dots$) sorozatot az $(a_n)$ **részsorozatának** nevezzük.

A definícióban két dolog lényeges: (1) végtelen sok tagot választunk ki, és (2) a kiválasztott tagok **eredeti sorrendjükben** követik egymást (az indexek szigorúan nőnek). Nem szabad tehát tagot megismételni, sem a sorrendet felcserélni.

**Egy hasznos megfigyelés:** minden $k$-ra $n_k \ge k$. Ez teljes indukcióval látható: $n_1 \ge 1$, és ha $n_k \ge k$, akkor $n_{k+1} > n_k \ge k$, tehát $n_{k+1} \ge k + 1$ (egészekről van szó).

**Példák.**

- $a_n = (-1)^n$, $n_k = 2k$: $b_k = (-1)^{2k} = 1$, az azonosan $1$ sorozat. $n_k = 2k - 1$: az azonosan $-1$ sorozat.
- $a_n = \frac{1}{n}$, $n_k = k^2$: $b_k = \frac{1}{k^2}$.
- $a_n = n$: a prímszámok sorozata ($2, 3, 5, 7, 11, \dots$) részsorozata.

Az első példa egy fontos jelenséget mutat: **a $\big((-1)^n\big)$ sorozat divergens, de van konvergens részsorozata.** Ez a megfigyelés lesz a Bolzano–Weierstrass-tétel (27. szakasz) csírája.

> **Tétel.** Ha $a_n \to a$, akkor $(a_n)$ minden részsorozata is $a$-hoz tart.

*Bizonyítás.* Legyen $(a_{n_k})$ részsorozat és $\varepsilon > 0$. Van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \varepsilon$. Ha $k \ge n_0$, akkor $n_k \ge k \ge n_0$, tehát $|a_{n_k} - a| < \varepsilon$. Így $k_0 = n_0$ jó küszöb a részsorozathoz. $\blacksquare$

**A tétel fő alkalmazása a divergencia bizonyítása.** A tétel kontrapozíciója szerint: **ha egy sorozatnak van két különböző határértékű részsorozata, vagy van divergens részsorozata, akkor a sorozat divergens.** Például a $\big((-1)^n\big)$ sorozat páros indexű részsorozata $1$-hez, a páratlan indexű $-1$-hez tart, tehát a sorozat divergens — ez sokkal rövidebb, mint a 18. szakasz 5. példájában adott bizonyítás.

**Példa.** Az $a_n = (-1)^n + \frac{1}{n}$ sorozat divergens, mert $a_{2k} = 1 + \frac{1}{2k} \to 1$, míg $a_{2k-1} = -1 + \frac{1}{2k-1} \to -1$. (Itt felhasználtuk, hogy konvergens sorozatok összege a határértékek összegéhez tart; ezt a 25. szakaszban bizonyítjuk.)

## 21. Monoton és korlátos sorozatok

Eddig, ha egy sorozat konvergenciáját akartuk igazolni, előre ismernünk kellett a határértéket. A következő tétel az első olyan eszköz, amely a határérték ismerete nélkül garantálja a konvergenciát. Ez az a hely, ahol a teljességi axióma először közvetlenül munkába lép.

> **Tétel (monoton korlátos sorozatok konvergenciája).** Ha $(a_n)$ monoton növekedő és felülről korlátos, akkor konvergens, és
> $$\lim_{n \to \infty} a_n = \sup\{a_n : n \in \mathbb{N}\}.$$
> Hasonlóan: monoton csökkenő, alulról korlátos sorozat konvergens, és határértéke a tagjai halmazának infimuma.

**Szemléletesen:** egy felfelé haladó, de egy plafon alatt maradó sorozat nem tud „elszökni”, és nem is tud ide-oda ugrálni, tehát valahová meg kell érkeznie. Hogy hová? A tagok legkisebb felső korlátjához.

*Bizonyítás.* Az $\{a_n : n \in \mathbb{N}\}$ halmaz nem üres és felülről korlátos, tehát a teljességi axióma szerint létezik $a = \sup\{a_n\}$. Megmutatjuk, hogy $a_n \to a$.

Legyen $\varepsilon > 0$. A szuprémum $\varepsilon$-os jellemzése (8. szakasz) szerint $a - \varepsilon$ már nem felső korlát, tehát van olyan $n_0$ index, amelyre
$$a_{n_0} > a - \varepsilon.$$
A monotonitás miatt minden $n \ge n_0$-ra
$$a - \varepsilon < a_{n_0} \le a_n,$$
másrészt $a$ felső korlát, tehát $a_n \le a < a + \varepsilon$. Így minden $n \ge n_0$-ra $a_n \in (a - \varepsilon, a + \varepsilon)$, ami éppen a konvergencia definíciója.

A csökkenő esetben ugyanígy járunk el az infimummal (vagy alkalmazzuk az előzőt a $(-a_n)$ sorozatra). $\blacksquare$

**Miért alapvető ez a tétel?** Mert a racionális számok körében **nem igaz**. A $\sqrt{2}$ tizedes közelítései,
$$1;\ 1{,}4;\ 1{,}41;\ 1{,}414;\ 1{,}4142;\ \dots$$
monoton növekedő, felülről korlátos (például $2$-vel) racionális sorozatot alkotnak, de a $\mathbb{Q}$-ban nincs határértékük, hiszen az egyetlen lehetséges határérték a $\sqrt{2}$ volna. A tétel tehát a teljességi axióma egy átfogalmazása: valójában **ekvivalens** is vele (ha az arkhimédészi tulajdonságot is feltesszük).

**Első alkalmazás: az $e$ szám létezése.** A 17. szakaszban beláttuk, hogy az $e_n = \left(1 + \frac{1}{n}\right)^n$ sorozat monoton növekedő és felülről korlátos ($e_n < 4$). A tétel szerint tehát **konvergens**. A határértékét $e$-vel jelöljük:
$$e = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n.$$
Ugyanígy a $d_n = \left(1 + \frac{1}{n}\right)^{n+1}$ sorozat monoton csökkenő és alulról korlátos, tehát szintén konvergens. Hogy a két határérték megegyezik, azt a 63. szakaszban bizonyítjuk be (bár a 25. szakasz szorzatszabályával már ott is kiolvasható lesz, hiszen $d_n = e_n \cdot \left(1 + \frac{1}{n}\right)$).

## 22. Tágabb értelemben vett határérték

Az $a_n = n$ és $b_n = \sqrt{n}$ sorozatok divergensek, de nem „rendetlenül”: egyre nagyobbak lesznek, minden határon túl. Szemléletesen „a végtelenbe tartanak”. Ezt a viselkedést is érdemes precízen megfogalmazni, mert lényegesen különbözik a $\big((-1)^n\big)$ sorozat ugrálásától.

> **Definíció ($+\infty$ és $-\infty$ mint határérték).** Az $(a_n)$ sorozat határértéke $+\infty$, ha minden $K \in \mathbb{R}$-hez létezik olyan $n_0$, hogy minden $n \ge n_0$ esetén $a_n > K$. Jelölése: $\lim a_n = +\infty$ vagy $a_n \to +\infty$.
>
> Hasonlóan, $\lim a_n = -\infty$, ha minden $K \in \mathbb{R}$-hez van olyan $n_0$, hogy minden $n \ge n_0$ esetén $a_n < K$.

A játék-hasonlat itt is működik: a kételkedő megad egy akármilyen nagy $K$ „plafont”, a bizonyító pedig olyan küszöbindexet mutat, amelytől kezdve a sorozat minden tagja a plafon fölött van.

**Környezetek a végtelenben.** Ha a $+\infty$ **$K$-környezetének** a
$$B(+\infty, K) = (K, +\infty)$$
félegyenest nevezzük, akkor a definíció ugyanúgy hangzik, mint a véges esetben: a $+\infty$ bármely környezetéhez van olyan küszöb, amelytől kezdve a sorozat minden tagja ebben a környezetben van. Hasonlóan $B(-\infty, K) = (-\infty, K)$. Ez az egységes nyelv a IX. részben, a függvényhatárértékeknél válik igazán hasznossá.

**Szóhasználat.** Ha $a_n \to +\infty$, akkor azt mondjuk, hogy a sorozat **$+\infty$-hez divergál** (vagy „tágabb értelemben” konvergál). Figyelem: az ilyen sorozat **divergens**, hiszen a konvergencia definíciójában véges határérték szerepel! A $\pm\infty$ határértékű sorozatoknak tehát van határértékük (a bővített számegyenesen), de nem konvergensek.

**Példák.**

- $a_n = n \to +\infty$: adott $K$-hoz az arkhimédészi tulajdonság szerint van $n_0 > K$, és $n \ge n_0$-ra $n > K$.
- $b_n = \sqrt{n} \to +\infty$: adott $K > 0$-hoz legyen $n_0 > K^2$; ekkor $n \ge n_0$ esetén $\sqrt{n} > K$.
- $c_n = n^2 - 10n \to +\infty$: becslés kell. Ha $n \ge 20$, akkor $10n \le \frac{n^2}{2}$, tehát $n^2 - 10n \ge \frac{n^2}{2} \ge \frac{n}{2}$, ami adott $K$-nál nagyobb, ha $n > 2K$. Így $n_0 = \max\{20, \text{egy } 2K\text{-nál nagyobb egész}\}$ jó.
- $d_n = (-1)^n n$ nem tart sem $+\infty$-hez, sem $-\infty$-hez: a páratlan indexű tagjai negatívak, tehát nem lehetnek minden $K = 0$-nál nagyobbak egy küszöbtől kezdve; hasonlóan a páros indexűek miatt nem tart $-\infty$-hez.

**A sorozatok osztályozása.** Minden valós sorozatra **pontosan egy** teljesül az alábbiak közül:

| eset | elnevezés | van-e határérték $\overline{\mathbb{R}}$-ben? |
|---|---|---|
| $a_n \to a \in \mathbb{R}$ | konvergens | igen |
| $a_n \to +\infty$ | divergens ($+\infty$-hez divergál) | igen |
| $a_n \to -\infty$ | divergens ($-\infty$-hez divergál) | igen |
| egyik sem | divergens (oszcillálva divergál) | nem |

> **Tétel.** A következők ekvivalensek:
>
> - **(A)** $\lim a_n = +\infty$.
> - **(B)** Minden $K \in \mathbb{R}$-re a sorozatnak csak véges sok tagja kisebb vagy egyenlő $K$-nál.

A bizonyítás szó szerint ugyanaz, mint a 19. szakasz első tételéé, a $B(a, \varepsilon)$ környezet helyett a $B(+\infty, K)$ környezettel.

A 21. szakasz tétele most kiegészíthető úgy, hogy **minden monoton sorozatnak van határértéke** a bővített számegyenesen.

> **Tétel.** Ha $(a_n)$ monoton növekedő és felülről nem korlátos, akkor $a_n \to +\infty$. Hasonlóan, monoton csökkenő, alulról nem korlátos sorozat $-\infty$-hez tart.
>
> Következésképpen minden monoton növekedő sorozatra $\lim a_n = \sup\{a_n : n \in \mathbb{N}\} \in \overline{\mathbb{R}}$.

*Bizonyítás.* Legyen $K \in \mathbb{R}$. Mivel a sorozat felülről nem korlátos, $K$ nem felső korlát, tehát van olyan $n_0$, amelyre $a_{n_0} > K$. A monotonitás miatt minden $n \ge n_0$-ra $a_n \ge a_{n_0} > K$. $\blacksquare$

### Nevezetes határértékek: a mértani sorozat

> **Tétel.** Legyen $q \in \mathbb{R}$. Ekkor
> $$\lim_{n\to\infty} q^n = \begin{cases} +\infty & \text{ha } q > 1, \\ 1 & \text{ha } q = 1, \\ 0 & \text{ha } |q| < 1, \end{cases}$$
> és $q \le -1$ esetén a $(q^n)$ sorozatnak nincs határértéke.

*Bizonyítás.* **$q > 1$:** írjuk $q = 1 + b$ alakba, ahol $b > 0$. A Bernoulli-egyenlőtlenség szerint
$$q^n = (1 + b)^n \ge 1 + nb.$$
Adott $K$-hoz válasszunk $n_0$-t úgy, hogy $1 + n_0 b > K$ (arkhimédészi tulajdonság). Ekkor $n \ge n_0$-ra $q^n \ge 1 + nb \ge 1 + n_0 b > K$.

**$q = 1$:** állandó sorozat.

**$|q| < 1$:** ha $q = 0$, triviális. Ha $0 < |q| < 1$, akkor $\frac{1}{|q|} > 1$, írjuk $\frac{1}{|q|} = 1 + b$ alakba ($b > 0$). A Bernoulli-egyenlőtlenség szerint
$$|q^n - 0| = |q|^n = \frac{1}{(1+b)^n} \le \frac{1}{1 + nb} < \frac{1}{nb},$$
ami kisebb $\varepsilon$-nál, ha $n > \frac{1}{b\varepsilon}$.

**$q \le -1$:** a páros indexű részsorozat $q^{2k} = (q^2)^k$, ami $q^2 \ge 1$ miatt $1$-hez vagy $+\infty$-hez tart; a páratlan indexű részsorozat $q^{2k+1} = q \cdot q^{2k} \le -1$. Két részsorozatnak különböző a viselkedése, így (a 20. szakasz gondolatmenete szerint, $\overline{\mathbb{R}}$-beli határértékekre is) nincs határérték. $\blacksquare$


## 23. Átrendezések és a sorozat megváltoztatása

A 19. szakaszban láttuk, hogy véges sok tag megváltoztatása nem befolyásolja a határértéket. Most megnézzük, milyen más beavatkozásokat „bír ki” a határérték.

> **Definíció (átrendezés).** Ha $(a_n)$ sorozat és $f : \mathbb{N} \to \mathbb{N}$ **bijekció**, akkor a $b_n = a_{f(n)}$ sorozatot az $(a_n)$ **átrendezésének** nevezzük.

Az átrendezés tehát ugyanazokat a tagokat tartalmazza, mindegyiket pontosan egyszer, csak más sorrendben. Például az $a_2, a_1, a_4, a_3, a_6, a_5, \dots$ sorozat (a szomszédos párok felcserélése) átrendezés. A részsorozattal szemben itt minden tag megmarad, de a sorrend megváltozhat.

> **Tétel.** Ha $a_n \to \alpha \in \overline{\mathbb{R}}$, és a $(b_n)$ sorozat az alábbi eljárások véges sokszori alkalmazásával keletkezik az $(a_n)$-ből, akkor $b_n \to \alpha$:
>
> 1. **(I)** átrendezés;
> 2. **(II)** egyes (akár végtelen sok) tagok megismétlése, mindegyiké csak véges sokszor;
> 3. **(III)** véges sok tag hozzávétele;
> 4. **(IV)** véges sok tag elhagyása.

*Bizonyítás.* Mind a négy esetben a 19. és a 22. szakasz „véges sok kivétel” jellemzését használjuk: $a_n \to \alpha$ pontosan akkor, ha az $\alpha$ bármely $V$ környezetén kívül a sorozatnak csak véges sok indexű tagja van. (Véges $\alpha$-ra $V = B(\alpha, \varepsilon)$, végtelenre $V = B(\pm\infty, K)$.) Legyen $V$ az $\alpha$ egy környezete, és $E = \{n : a_n \notin V\}$ a „kivételes” indexek véges halmaza.

**(I)** A $(b_n)$ kivételes indexei azok az $n$-ek, amelyekre $a_{f(n)} \notin V$, azaz $f(n) \in E$. Mivel $f$ bijekció, ezek éppen az $f^{-1}(E)$ halmaz elemei, amely ugyanannyi elemű, mint $E$, tehát véges.

**(II)** Minden kivételes tag legfeljebb véges sokszor fordul elő az új sorozatban, és véges sok ilyen tag van, így az új sorozatban is csak véges sok kivételes indexű tag lesz.

**(III)** és **(IV)** A kivételes tagok száma legfeljebb véges sokkal nő, illetve nem nő. $\blacksquare$

**Miért fontos ez?** Mert azt mutatja, hogy a sorozat határértéke **nem a sorrendtől**, hanem lényegében a tagok „végső eloszlásától” függ. Ez a megnyugtató tény a **végtelen soroknál** gyökeresen megváltozik: ott (a VII. részben röviden említjük) egy konvergens sor tagjainak átrendezése az összeget is megváltoztathatja. A különbség oka, hogy egy sorozatnál az egyes tagokat nézzük, egy sornál viszont a tagok **összegét**, és az összegzés sorrendje végtelen sok tag esetén számít.

## 24. A rendőrelv

A gyakorlatban gyakran előfordul, hogy egy bonyolult sorozat határértékét nem tudjuk közvetlenül kiszámolni, de két egyszerűbb sorozat közé tudjuk szorítani. Ha a két szélső sorozat ugyanoda tart, akkor a középsőnek sincs más választása.

> **Tétel (rendőrelv, más néven közrefogási elv).** Ha van olyan $n_0$, hogy minden $n \ge n_0$ esetén
> $$a_n \le b_n \le c_n,$$
> továbbá $\lim a_n = \lim c_n = a \in \mathbb{R}$, akkor $\lim b_n = a$.

A név szemléletes: ha két rendőr egy gyanúsítottat két oldalról közrefog, és mindketten a rendőrőrsre mennek, akkor a gyanúsított is oda kerül.

*Bizonyítás.* Legyen $\varepsilon > 0$. Van olyan $n_1$, hogy $n \ge n_1$ esetén $|a_n - a| < \varepsilon$, és van olyan $n_2$, hogy $n \ge n_2$ esetén $|c_n - a| < \varepsilon$. Legyen $N = \max\{n_0, n_1, n_2\}$. Ekkor minden $n \ge N$-re mindhárom feltétel teljesül, tehát
$$a - \varepsilon < a_n \le b_n \le c_n < a + \varepsilon,$$
azaz $|b_n - a| < \varepsilon$. $\blacksquare$

Végtelen határértékre elég egy „rendőr”:

> **Tétel (félrendőrelv).** Ha minden $n \ge n_0$-ra $a_n \le b_n$, és $a_n \to +\infty$, akkor $b_n \to +\infty$. Hasonlóan, ha $b_n \le c_n$ és $c_n \to -\infty$, akkor $b_n \to -\infty$.

*Bizonyítás.* Adott $K$-hoz van $n_1$, hogy $n \ge n_1$-re $a_n > K$; ekkor $n \ge \max\{n_0, n_1\}$-re $b_n \ge a_n > K$. $\blacksquare$

### Alkalmazások: nevezetes határértékek

A rendőrelv segítségével néhány, a későbbiekben gyakran használt határértéket számolunk ki. (A pozitív számok $n$-edik gyökének létezését itt is elfogadjuk; az 54. szakaszban bizonyítjuk.)

> **Tétel.** Ha $a > 0$, akkor $\displaystyle \lim_{n\to\infty} \sqrt[n]{a} = 1$.

*Bizonyítás.* **$a \ge 1$ eset.** Ekkor $\sqrt[n]{a} \ge 1$ (különben $a = (\sqrt[n]{a})^n < 1$ volna). Írjuk $\sqrt[n]{a} = 1 + h_n$ alakba, ahol $h_n \ge 0$. A Bernoulli-egyenlőtlenség szerint
$$a = (1 + h_n)^n \ge 1 + n h_n \implies 0 \le h_n \le \frac{a - 1}{n}.$$
A jobb oldal $0$-hoz tart, így a rendőrelv szerint $h_n \to 0$, azaz $\sqrt[n]{a} \to 1$.

**$0 < a < 1$ eset.** Ekkor $\frac{1}{a} > 1$, tehát az előző eset szerint $\sqrt[n]{1/a} \to 1$, és $\sqrt[n]{a} = \frac{1}{\sqrt[n]{1/a}} \to \frac{1}{1} = 1$ a hányados határértékére vonatkozó tétel szerint (25. szakasz). $\blacksquare$

> **Tétel.** $\displaystyle \lim_{n\to\infty} \sqrt[n]{n} = 1$.

*Bizonyítás.* Most a Bernoulli-egyenlőtlenség nem elég erős (az $n \ge 1 + nh_n$ becslésből csak $h_n \le 1$ adódna), ezért a binomiális tételből a **harmadik** tagot tartjuk meg. Legyen $\sqrt[n]{n} = 1 + h_n$, $h_n \ge 0$. Ha $n \ge 2$, akkor
$$n = (1 + h_n)^n = 1 + nh_n + \binom{n}{2}h_n^2 + \dots + h_n^n \ge \binom{n}{2}h_n^2 = \frac{n(n-1)}{2}h_n^2,$$
mert minden elhagyott tag nemnegatív. Innen
$$h_n^2 \le \frac{2}{n-1}, \qquad 0 \le h_n \le \sqrt{\frac{2}{n-1}}.$$
A jobb oldal $0$-hoz tart (adott $\varepsilon$-ra $n - 1 > \frac{2}{\varepsilon^2}$ esetén $\varepsilon$ alatt van), így a rendőrelv szerint $h_n \to 0$. $\blacksquare$

**Kidolgozott példa: $\displaystyle \lim_{n\to\infty} \sqrt[n]{2^n + n^2}$.** Tudjuk (5. szakasz), hogy $n \ge 4$ esetén $n^2 \le 2^n$. Ezért ilyen $n$-ekre
$$2 = \sqrt[n]{2^n} \le \sqrt[n]{2^n + n^2} \le \sqrt[n]{2 \cdot 2^n} = 2\sqrt[n]{2}.$$
A bal oldal állandóan $2$, a jobb oldal $2 \cdot 1 = 2$-höz tart. A rendőrelv szerint a határérték $2$.

**Általános fogás.** Ugyanígy látható, hogy $\sqrt[n]{a^n + b^n} \to \max\{a, b\}$, ha $a, b > 0$: a nagyobbik tag „dominál”. Például $\sqrt[n]{3^n + 5^n} \to 5$, hiszen $5 \le \sqrt[n]{3^n + 5^n} \le \sqrt[n]{2} \cdot 5$.

## 25. Műveletek és határérték

Eddig minden határértéket a definícióból vagy a rendőrelvből számoltunk ki. Most bebizonyítjuk, hogy a határérték „felcserélhető” az alapműveletekkel. Ettől kezdve a legtöbb határértéket egyszerű lépések sorozatával, ismert határértékekből tudjuk összerakni.

> **Tétel (határérték és műveletek).** Ha $a_n \to a \in \mathbb{R}$ és $b_n \to b \in \mathbb{R}$, akkor
>
> 1. **(I)** $a_n + b_n \to a + b$, és $c \cdot a_n \to c \cdot a$ minden $c \in \mathbb{R}$-re;
> 2. **(II)** $a_n b_n \to ab$;
> 3. **(III)** ha $b_n \neq 0$ minden $n$-re és $b \neq 0$, akkor $\dfrac{a_n}{b_n} \to \dfrac{a}{b}$.
>
> Továbbá:
>
> 4. **(IV)** ha $a_n \to 0$ és $(b_n)$ korlátos (nem feltétlenül konvergens), akkor $a_n b_n \to 0$.

*Bizonyítás.*

**(I) — az összeg.** Legyen $\varepsilon > 0$. Válasszunk küszöböt úgy (a két küszöb maximumát véve), hogy elég nagy $n$-re $|a_n - a| < \frac{\varepsilon}{2}$ és $|b_n - b| < \frac{\varepsilon}{2}$ teljesüljön. Ekkor
$$|(a_n + b_n) - (a + b)| = |(a_n - a) + (b_n - b)| \le |a_n - a| + |b_n - b| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$
A konstansszoros a (II) speciális esete ($b_n \equiv c$).

**(IV) — nullsorozat szorozva korlátossal.** Legyen $|b_n| \le K$ minden $n$-re ($K > 0$). Adott $\varepsilon > 0$-hoz elég nagy $n$-re $|a_n| < \frac{\varepsilon}{K}$, és ekkor
$$|a_n b_n| = |a_n| \cdot |b_n| < \frac{\varepsilon}{K} \cdot K = \varepsilon.$$

**(II) — a szorzat.** Az ötlet: a szorzat eltérését két olyan tagra bontjuk, amelyek mindegyikében szerepel egy „kicsi” tényező. A „hozzáadunk és kivonunk” fogással:
$$a_n b_n - ab = a_n b_n - a_n b + a_n b - ab = a_n(b_n - b) + b(a_n - a).$$
Itt $(a_n)$ konvergens, tehát korlátos (19. szakasz), és $b_n - b \to 0$; a (IV) szerint az első tag $0$-hoz tart. A második tagban $b$ állandó és $a_n - a \to 0$, tehát az is $0$-hoz tart. Az (I) szerint az összegük is $0$-hoz tart, azaz $a_n b_n \to ab$.

**(III) — a hányados.** Elég belátni, hogy $\frac{1}{b_n} \to \frac{1}{b}$; ebből (II) szerint
$$\frac{a_n}{b_n} = a_n \cdot \frac{1}{b_n} \to a \cdot \frac{1}{b} = \frac{a}{b}.$$
A nehézség az, hogy a nevezőben álló $b_n$ nem lehet „túl kicsi”, különben a reciproka nagy volna. Ezt a következőképpen biztosítjuk. Mivel $b_n \to b \neq 0$, az $\varepsilon = \frac{|b|}{2}$ választással van olyan $n_1$, hogy $n \ge n_1$ esetén $|b_n - b| < \frac{|b|}{2}$, és ekkor a fordított háromszög-egyenlőtlenség szerint
$$|b_n| \ge |b| - |b - b_n| > |b| - \frac{|b|}{2} = \frac{|b|}{2}.$$
Vagyis a nevező egy küszöbtől kezdve „nem omlik össze”: abszolút értéke $\frac{|b|}{2}$ fölött marad. Ekkor
$$\left|\frac{1}{b_n} - \frac{1}{b}\right| = \frac{|b - b_n|}{|b_n|\cdot|b|} \le \frac{|b_n - b|}{\frac{|b|}{2}\cdot|b|} = \frac{2}{|b|^2}\,|b_n - b|.$$
Itt $\frac{2}{|b|^2}$ állandó, $|b_n - b| \to 0$, tehát a jobb oldal $0$-hoz tart, és így (a rendőrelv szerint) a bal oldal is. $\blacksquare$

**Figyelem:** a tétel csak akkor alkalmazható, ha **mindkét** sorozat konvergens. Például $a_n = n$ és $b_n = -n$ esetén $a_n + b_n = 0 \to 0$, de ebből semmit sem tudunk az $(a_n)$ és $(b_n)$ határértékéről, és fordítva: az összeg határértékét nem kaphatjuk meg az (I) szabállyal, mert egyik sorozat sem konvergens. (Erről szól a következő szakasz.)

### Kidolgozott példák

**1. Racionális törtek.** Számítsuk ki $\displaystyle \lim_{n\to\infty} \frac{3n^2 + 2n}{5n^2 - 1}$-et. A számláló és a nevező is $+\infty$-hez tart, így a hányadosszabály közvetlenül nem alkalmazható. A fogás: **osszuk el a számlálót és a nevezőt a nevező legmagasabb fokú tagjával**:
$$\frac{3n^2 + 2n}{5n^2 - 1} = \frac{3 + \frac{2}{n}}{5 - \frac{1}{n^2}} \to \frac{3 + 0}{5 - 0} = \frac{3}{5}.$$
Itt felhasználtuk, hogy $\frac{1}{n} \to 0$, és ebből a szorzatszabály szerint $\frac{1}{n^2} = \frac{1}{n}\cdot\frac{1}{n} \to 0$. Általában: két azonos fokú polinom hányadosának határértéke a főegyütthatók hányadosa; ha a számláló foka kisebb, a határérték $0$; ha nagyobb, akkor $\pm\infty$ (lásd a következő szakaszt).

**2. Exponenciális kifejezések.** $\displaystyle \lim_{n\to\infty} \frac{3^n + 2^n}{3^{n+1} - 2^n}$: osszunk $3^n$-nel:
$$\frac{1 + \left(\frac{2}{3}\right)^n}{3 - \left(\frac{2}{3}\right)^n} \to \frac{1 + 0}{3 - 0} = \frac{1}{3},$$
mert $\left(\frac{2}{3}\right)^n \to 0$ (22. szakasz).

**3. Korlátos szorozva nullsorozattal.** $\displaystyle \lim_{n\to\infty} \frac{(-1)^n n}{n^2 + 1} = 0$, hiszen $\frac{(-1)^n n}{n^2+1} = (-1)^n \cdot \frac{n}{n^2+1}$, ahol $\big((-1)^n\big)$ korlátos és $\frac{n}{n^2 + 1} = \frac{1/n}{1 + 1/n^2} \to 0$.

**4. Rekurzív sorozat.** Legyen $a_1 = 1$ és $a_{n+1} = \sqrt{2 + a_n}$. Ez a sorozat
$$1,\ \sqrt{3} \approx 1{,}732,\ \sqrt{2 + \sqrt{3}} \approx 1{,}932,\ \dots$$
Úgy tűnik, növekszik, és $2$ alatt marad. Bizonyítsuk ezt be, majd számítsuk ki a határértéket!

*Korlátosság:* teljes indukcióval $0 < a_n < 2$. Az $n = 1$ eset igaz. Ha $0 < a_n < 2$, akkor $a_{n+1} = \sqrt{2 + a_n} < \sqrt{4} = 2$ és $a_{n+1} > 0$.

*Monotonitás:* $a_{n+1} > a_n \iff 2 + a_n > a_n^2$ (pozitív számokról lévén szó, a négyzetre emelés ekvivalens átalakítás) $\iff a_n^2 - a_n - 2 < 0 \iff (a_n - 2)(a_n + 1) < 0$, ami $0 < a_n < 2$ miatt igaz.

*A határérték:* a sorozat monoton növekedő és felülről korlátos, tehát a 21. szakasz szerint konvergens; legyen $L = \lim a_n$. Ekkor $a_{n+1} \to L$ is (részsorozat), és $a_{n+1}^2 = 2 + a_n$. Mindkét oldal határértékét véve (a bal oldalon a szorzatszabállyal):
$$L^2 = 2 + L \implies L^2 - L - 2 = 0 \implies L = 2 \ \text{vagy} \ L = -1.$$
Mivel minden tag pozitív, $L \ge 0$, tehát $L = 2$.

**Fontos:** a határérték kiszámításának ez a módja („írjunk $L$-et $a_n$ és $a_{n+1}$ helyére”) **csak akkor jogos, ha már tudjuk, hogy a sorozat konvergens!** Ellenpélda: $a_1 = 2$, $a_{n+1} = a_n^2$. Ha gondolkodás nélkül $L = L^2$-et írnánk, $L = 0$ vagy $L = 1$ adódna — holott a sorozat $2, 4, 16, 256, \dots$, ami $+\infty$-hez tart.

### Műveletek végtelen határértékkel

> **Tétel.** Ha $a_n \to +\infty$ és $(b_n)$ alulról korlátos, akkor $a_n + b_n \to +\infty$.

*Bizonyítás.* Legyen $b_n \ge K_0$ minden $n$-re. Adott $K$-hoz van olyan $n_0$, hogy $n \ge n_0$ esetén $a_n > K - K_0$. Ekkor
$$a_n + b_n > (K - K_0) + K_0 = K. \qquad \blacksquare$$

Mivel minden konvergens és minden $+\infty$-hez tartó sorozat alulról korlátos, ebből két szokásos „szimbolikus” szabály következik:
$$a_n \to +\infty,\ b_n \to b \in \mathbb{R} \implies a_n + b_n \to +\infty \qquad (\text{„}+\infty + b = +\infty\text{”}),$$
$$a_n \to +\infty,\ b_n \to +\infty \implies a_n + b_n \to +\infty \qquad (\text{„}+\infty + \infty = +\infty\text{”}).$$
Az idézőjelek arra figyelmeztetnek, hogy ezek nem valódi számolási szabályok (a $\pm\infty$ nem szám), hanem a fenti tétel rövidítései.

## 26. Kritikus (határozatlan) határértékek

A műveleti szabályoknak vannak „lyukai”: olyan esetek, amikor a tagok határértékének ismerete **semmit sem árul el** az eredmény határértékéről. Ezeket nevezzük **kritikus** vagy **határozatlan** eseteknek.

**Az $\infty - \infty$ eset.** Ha $a_n \to +\infty$ és $b_n \to -\infty$, akkor az $a_n + b_n$ összeg bármit csinálhat:

- $a_n = n$, $b_n = -n$: az összeg $0 \to 0$;
- $a_n = n + c$, $b_n = -n$: az összeg $c \to c$ (tetszőleges valós szám kijöhet);
- $a_n = 2n$, $b_n = -n$: az összeg $n \to +\infty$;
- $a_n = n$, $b_n = -2n$: az összeg $-n \to -\infty$;
- $a_n = n + (-1)^n$, $b_n = -n$: az összeg $(-1)^n$, amelynek nincs határértéke.

A tanulság: ilyenkor a kifejezést **át kell alakítani**, mielőtt határértéket számolunk.

**Kidolgozott példa: $\lim\left(\sqrt{n^2 + n} - n\right)$.** Ez $\infty - \infty$ alakú. A fogás: **szorozzunk és osszunk a „konjugálttal”**, és használjuk az $(x - y)(x + y) = x^2 - y^2$ azonosságot:
$$\sqrt{n^2 + n} - n = \frac{(\sqrt{n^2+n} - n)(\sqrt{n^2+n} + n)}{\sqrt{n^2+n} + n} = \frac{n}{\sqrt{n^2+n} + n} = \frac{1}{\sqrt{1 + \frac{1}{n}} + 1}.$$
Mivel $1 \le \sqrt{1 + \frac{1}{n}} \le 1 + \frac{1}{n}$ (a jobb oldali becslés négyzetre emeléssel ellenőrizhető), a rendőrelv szerint $\sqrt{1 + \frac{1}{n}} \to 1$, és így a határérték $\frac{1}{1 + 1} = \frac{1}{2}$. Meglepő: két, végtelenhez tartó mennyiség különbsége egy véges, nem nulla számhoz tart.

**További tételek a szorzatra és a reciprokra.**

> **Tétel.**
>
> 1. Ha $a_n \to a > 0$ és $b_n \to +\infty$, akkor $a_n b_n \to +\infty$. (Ha $a < 0$, akkor $-\infty$-hez tart.)
> 2. Ha $a_n \to +\infty$ és $b_n \to +\infty$, akkor $a_n b_n \to +\infty$.
> 3. Ha $|a_n| \to +\infty$, akkor $\frac{1}{a_n} \to 0$.
> 4. Ha $a_n \to 0$ és $a_n \neq 0$ minden $n$-re, akkor $\frac{1}{|a_n|} \to +\infty$.

*Bizonyítás.* 1. Az $\varepsilon = \frac{a}{2}$ választással egy küszöbtől kezdve $a_n > \frac{a}{2} > 0$. Adott $K > 0$-hoz elég nagy $n$-re $b_n > \frac{2K}{a}$, és ekkor $a_n b_n > \frac{a}{2}\cdot\frac{2K}{a} = K$.

2. Elég nagy $n$-re $a_n > 1$ és $b_n > K$ (ha $K > 0$), tehát $a_n b_n > K$.

3. Adott $\varepsilon > 0$-hoz elég nagy $n$-re $|a_n| > \frac{1}{\varepsilon}$, azaz $\left|\frac{1}{a_n}\right| < \varepsilon$.

4. Adott $K > 0$-hoz elég nagy $n$-re $|a_n| < \frac{1}{K}$, azaz $\frac{1}{|a_n|} > K$. $\blacksquare$

**A $0 \cdot \infty$ eset kritikus.** Ha $a_n \to 0$ és $b_n \to +\infty$, a szorzat bármit csinálhat: $\frac{1}{n} \cdot n = 1$; $\frac{1}{n} \cdot n^2 = n \to +\infty$; $\frac{1}{n^2}\cdot n = \frac{1}{n} \to 0$; $\frac{(-1)^n}{n} \cdot n = (-1)^n$ (nincs határérték). Ugyanígy kritikus a $\frac{\infty}{\infty}$ és a $\frac{0}{0}$ eset — ezek ugyanis szorzatként felírva $0 \cdot \infty$ alakúak. A 83. szakaszban a L'Hospital-szabály hatékony eszközt ad majd ezek kezelésére (függvényekre).

**Figyelem a 4. ponthoz:** abból, hogy $a_n \to 0$, nem következik, hogy $\frac{1}{a_n} \to +\infty$ — csak az abszolút értékére igaz. Például $a_n = \frac{(-1)^n}{n}$ esetén $\frac{1}{a_n} = (-1)^n n$, aminek nincs határértéke.

**Összefoglaló táblázatok.** Az összeg határértéke ($a_n$ határértéke a sorokban, $b_n$-é az oszlopokban; $a, b \in \mathbb{R}$):

| $\lim(a_n + b_n)$ | $b$ | $+\infty$ | $-\infty$ |
|---|---|---|---|
| $a$ | $a + b$ | $+\infty$ | $-\infty$ |
| $+\infty$ | $+\infty$ | $+\infty$ | **kritikus** |
| $-\infty$ | $-\infty$ | **kritikus** | $-\infty$ |

A szorzat határértéke:

| $\lim(a_n b_n)$ | $b > 0$ | $0$ | $b < 0$ | $+\infty$ | $-\infty$ |
|---|---|---|---|---|---|
| $a > 0$ | $ab$ | $0$ | $ab$ | $+\infty$ | $-\infty$ |
| $0$ | $0$ | $0$ | $0$ | **kritikus** | **kritikus** |
| $a < 0$ | $ab$ | $0$ | $ab$ | $-\infty$ | $+\infty$ |
| $+\infty$ | $+\infty$ | **kritikus** | $-\infty$ | $+\infty$ | $-\infty$ |
| $-\infty$ | $-\infty$ | **kritikus** | $+\infty$ | $-\infty$ | $+\infty$ |

Érdemes nem bemagolni, hanem megérteni ezeket a táblázatokat: a nem kritikus mezők mindegyike a fenti tételekből adódik, a kritikus mezőkre pedig a fenti példák mutatják, hogy bármi előfordulhat.

## 27. A Bolzano–Weierstrass-tétel

A 20. szakaszban láttuk, hogy a divergens $\big((-1)^n\big)$ sorozatnak is van konvergens részsorozata. Vajon ez véletlen? A következő tétel szerint nem: **minden korlátos sorozatból kiválasztható konvergens részsorozat.** Ez az analízis egyik legfontosabb „létezési” tétele; a 28. és az 54. szakaszban alapvető szerepet játszik.

A bizonyítás egy meglepő lemmára épül.

> **Lemma.** Minden valós sorozatnak van monoton részsorozata.

**Az ötlet.** Képzeljük el a sorozat tagjait hegycsúcsokként egy tájban, ahol $a_n$ az $n$-edik csúcs magassága. Nevezzük az $a_k$ tagot **kilátópontnak** (csúcselemnek), ha belőle előre nézve „a tengerig ellátunk”, vagyis utána már soha nem jön magasabb csúcs: minden $m > k$-ra $a_m \le a_k$.

*Bizonyítás.* Két eset lehetséges.

**a) eset: végtelen sok kilátópont van.** Legyenek ezek indexei $k_1 < k_2 < k_3 < \dots$. Mivel $a_{k_1}$ kilátópont és $k_2 > k_1$, ezért $a_{k_2} \le a_{k_1}$; hasonlóan $a_{k_3} \le a_{k_2}$, és így tovább. Az $(a_{k_j})$ részsorozat tehát **monoton csökkenő**.

**b) eset: csak véges sok kilátópont van.** Ekkor van olyan $s$ index, hogy egyetlen $m \ge s$ indexű tag sem kilátópont. Egy nem kilátópontra a definíció tagadása szerint van olyan későbbi tag, amely **szigorúan magasabb**: ha $a_m$ nem kilátópont, akkor van $m' > m$, hogy $a_{m'} > a_m$. Induljunk $k_1 = s$-ből. Mivel $a_{k_1}$ nem kilátópont, van $k_2 > k_1$, amelyre $a_{k_2} > a_{k_1}$. Mivel $k_2 > s$, $a_{k_2}$ sem kilátópont, tehát van $k_3 > k_2$, amelyre $a_{k_3} > a_{k_2}$. És így tovább: a kapott $(a_{k_j})$ részsorozat **szigorúan monoton növekedő**. $\blacksquare$

> **Tétel (Bolzano–Weierstrass).** Minden korlátos valós sorozatnak van konvergens részsorozata.

*Bizonyítás.* A lemma szerint a sorozatnak van monoton részsorozata. Ez a részsorozat korlátos (hiszen az egész sorozat az), és a korlátos monoton sorozatok a 21. szakasz tétele szerint konvergensek. $\blacksquare$

A rövid bizonyítás mögött hosszú lánc áll: a 21. szakasz tétele a szuprémum létezésén, vagyis a **teljességi axiómán** múlik. A $\mathbb{Q}$-ban a Bolzano–Weierstrass-tétel nem igaz: a $\sqrt{2}$ tizedes közelítéseinek sorozata korlátos, de egyetlen részsorozata sem konvergál racionális számhoz.

**Egy második bizonyítás (felezéssel).** Érdemes egy másik bizonyítást is látni, mert szemléletes, és a Cantor-féle tulajdonságot (9. szakasz) használja. Legyen a sorozat minden tagja az $[A, B]$ intervallumban. Felezzük meg az intervallumot: a két fél közül legalább az egyik a sorozat **végtelen sok** (indexű) tagját tartalmazza; legyen ez $[A_1, B_1]$. Ezt ismét felezzük, és kiválasztunk egy végtelen sok tagot tartalmazó $[A_2, B_2]$ felet, és így tovább. Az egymásba skatulyázott $[A_k, B_k]$ intervallumok hossza $\frac{B - A}{2^k}$, és a Cantor-tulajdonság szerint van egy közös $c$ pontjuk. Most válasszunk indexeket: $n_1$ legyen olyan, hogy $a_{n_1} \in [A_1, B_1]$; $n_2 > n_1$ olyan, hogy $a_{n_2} \in [A_2, B_2]$ (ilyen van, mert ott végtelen sok tag van); és így tovább. Ekkor $a_{n_k}$ és $c$ is az $[A_k, B_k]$ intervallumban van, tehát
$$|a_{n_k} - c| \le \frac{B - A}{2^k} \to 0,$$
vagyis $a_{n_k} \to c$. (A $\frac{1}{2^k} \to 0$ határérték a 22. szakasz mértani sorozatos tételéből következik.)

A nem korlátos sorozatokra is van megfelelő állítás.

> **Tétel.** Ha $(a_n)$ felülről nem korlátos, akkor van $+\infty$-hez tartó részsorozata. Ha alulról nem korlátos, akkor van $-\infty$-hez tartó részsorozata.

*Bizonyítás.* Először egy megfigyelés: ha a sorozat felülről nem korlátos, akkor bármely $K$-ra és bármely $N$ indexre van olyan $n > N$, amelyre $a_n > K$. (Különben az $N$ utáni tagok mind legfeljebb $K$-k volnának, az első $N$ tag pedig véges sok, így a sorozat felülről korlátos volna.) Ezt felhasználva válasszunk $n_1$-et úgy, hogy $a_{n_1} > 1$; majd $n_2 > n_1$-et úgy, hogy $a_{n_2} > 2$; általában $n_k > n_{k-1}$-et úgy, hogy $a_{n_k} > k$. Ekkor $a_{n_k} > k$ minden $k$-ra, így a félrendőrelv szerint $a_{n_k} \to +\infty$. $\blacksquare$

**Összefoglalva:** minden valós sorozatnak van olyan részsorozata, amelynek van határértéke a bővített számegyenesen. (Ha korlátos, akkor a Bolzano–Weierstrass-tétel szerint; ha nem, akkor az utóbbi tétel szerint.)

## 28. A Cauchy-kritérium

Térjünk vissza a 19. szakaszban ígért ellenpéldához. Legyen
$$a_n = 1 + \frac{1}{\sqrt{2}} + \frac{1}{\sqrt{3}} + \dots + \frac{1}{\sqrt{n}} = \sum_{k=1}^n \frac{1}{\sqrt{k}}.$$
Az összeg mind az $n$ tagja legalább akkora, mint a legkisebb, $\frac{1}{\sqrt{n}}$, tehát
$$a_n \ge n \cdot \frac{1}{\sqrt{n}} = \sqrt{n} \to +\infty,$$
így a félrendőrelv szerint $a_n \to +\infty$; a sorozat divergens. Másrészt
$$a_{n+1} - a_n = \frac{1}{\sqrt{n+1}} \to 0.$$
Ez bizonyítja, hogy
$$a_{n+1} - a_n \to 0 \quad \not\Longrightarrow \quad (a_n) \text{ konvergens}.$$
A szomszédos tagok közeledése tehát nem elég a konvergenciához. A sorozat úgy „szökik el” a végtelenbe, hogy közben egyre kisebb lépéseket tesz — de ezek a lépések összeadódnak.

**Mi a helyes feltétel?** Az, hogy ne csak a szomszédos tagok, hanem **bármely két elég késői tag** közel legyen egymáshoz. Ha ugyanis egy sorozat konvergál, akkor egy idő után minden tagja közel van a határértékhez, tehát egymáshoz is. A meglepő az, hogy ez a feltétel elégséges is.

> **Tétel (Cauchy-kritérium).** Az $(a_n)$ sorozat akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_0$, hogy minden $n, m \ge n_0$ esetén
> $$|a_n - a_m| < \varepsilon.$$

Az ilyen tulajdonságú sorozatokat **Cauchy-sorozatoknak** nevezzük. A tétel tehát így is mondható: a valós számok körében egy sorozat pontosan akkor konvergens, ha Cauchy-sorozat.

*Bizonyítás.*

**($\Rightarrow$) Szükségesség.** Legyen $a_n \to a$. Adott $\varepsilon > 0$-hoz van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ekkor minden $n, m \ge n_0$-ra
$$|a_n - a_m| = |(a_n - a) + (a - a_m)| \le |a_n - a| + |a - a_m| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$

**($\Leftarrow$) Elégségesség.** Ez a nehezebb irány, és itt kell a teljesség (a Bolzano–Weierstrass-tételen keresztül). A terv: (1) a Cauchy-sorozat korlátos; (2) tehát van konvergens részsorozata; (3) és a Cauchy-tulajdonság miatt az egész sorozat ugyanoda tart.

*1. lépés: a sorozat korlátos.* Alkalmazzuk a feltételt $\varepsilon = 1$-re: van olyan $n_1$, hogy minden $n, m \ge n_1$-re $|a_n - a_m| < 1$. Speciálisan ($n = n_1$-gyel) minden $m \ge n_1$-re $|a_m - a_{n_1}| < 1$, azaz $|a_m| < |a_{n_1}| + 1$. Az első $n_1 - 1$ tag véges sok, így
$$K = \max\big\{|a_1|,\ \dots,\ |a_{n_1 - 1}|,\ |a_{n_1}| + 1\big\}$$
korlátja a sorozatnak.

*2. lépés: van konvergens részsorozat.* A Bolzano–Weierstrass-tétel szerint van olyan $(a_{n_k})$ részsorozat és $a \in \mathbb{R}$, hogy $a_{n_k} \to a$.

*3. lépés: az egész sorozat $a$-hoz tart.* Legyen $\varepsilon > 0$. Van olyan $n_0$, hogy minden $n, m \ge n_0$-ra $|a_n - a_m| < \frac{\varepsilon}{2}$, és van olyan $k_0$, hogy minden $k \ge k_0$-ra $|a_{n_k} - a| < \frac{\varepsilon}{2}$. Válasszunk egy olyan $k$-t, amelyre egyszerre $k \ge k_0$ és $n_k \ge n_0$ (ilyen van, hiszen $n_k \ge k$). Ekkor minden $n \ge n_0$-ra a $m = n_k$ választással
$$|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon. \qquad \blacksquare$$

**Miért értékes ez a tétel?** Mert **a határérték ismerete nélkül** dönt a konvergenciáról: a feltételben csak a sorozat tagjai szerepelnek. A 21. szakasz tétele is ilyen volt, de az csak monoton sorozatokra működött; a Cauchy-kritérium minden sorozatra.

**Kidolgozott példa.** Tegyük fel, hogy minden $n$-re $|a_{n+1} - a_n| \le \frac{1}{2^n}$. Ekkor $(a_n)$ konvergens. Valóban, ha $m > n$, akkor a háromszög-egyenlőtlenséggel (az $a_n$-től $a_m$-ig egyesével lépkedve):
$$|a_m - a_n| \le |a_m - a_{m-1}| + \dots + |a_{n+1} - a_n| \le \frac{1}{2^{m-1}} + \dots + \frac{1}{2^n}.$$
A jobb oldal egy mértani sorozat összege:
$$\frac{1}{2^n}\left(1 + \frac{1}{2} + \dots + \frac{1}{2^{m-1-n}}\right) < \frac{1}{2^n} \cdot 2 = \frac{1}{2^{n-1}}.$$
Adott $\varepsilon > 0$-hoz van olyan $n_0$, hogy $\frac{1}{2^{n_0 - 1}} < \varepsilon$ (hiszen $\frac{1}{2^n} \to 0$), és ekkor minden $m > n \ge n_0$-ra $|a_m - a_n| < \varepsilon$. A Cauchy-kritérium szerint a sorozat konvergens — anélkül, hogy tudnánk, mi a határértéke!

Vessük össze a $\sum \frac{1}{\sqrt{k}}$ példával: ott a lépések, $\frac{1}{\sqrt{n+1}}$, túl lassan csökkennek, ezért az összegük végtelen; itt a lépések, $\frac{1}{2^n}$, olyan gyorsan csökkennek, hogy az összegük véges marad. Ez a gondolat a VII. részben, a végtelen soroknál teljesedik ki.

---

## A IV. rész összefoglalása

- $a_n \to a$, ha minden $\varepsilon > 0$-hoz van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \varepsilon$. Az $n_0$ függhet $\varepsilon$-tól. A határérték egyértelmű, csak a sorozat végétől függ, és a konvergens sorozat korlátos.
- A határérték öröklődik részsorozatokra; két különböző határértékű részsorozat divergenciát bizonyít.
- A rendezés gyenge egyenlőtlenségként öröklődik, szigorúként nem.
- Monoton korlátos sorozat konvergens (a határérték a szuprémum/infimum) — ez a teljességi axióma első nagy következménye. Ebből: az $e = \lim\left(1 + \frac{1}{n}\right)^n$ létezik.
- A $\pm\infty$ határérték környezetekkel ugyanúgy definiálható; minden monoton sorozatnak van határértéke $\overline{\mathbb{R}}$-ben.
- Eszközök: rendőrelv; műveleti szabályok (összeg, szorzat, hányados); nullsorozat szorozva korlátossal nullsorozat. Kritikus esetek: $\infty - \infty$, $0 \cdot \infty$, $\frac{0}{0}$, $\frac{\infty}{\infty}$ — ezekben átalakítás kell.
- Nevezetes határértékek: $q^n \to 0$ ($|q| < 1$), $\sqrt[n]{a} \to 1$ ($a > 0$), $\sqrt[n]{n} \to 1$.
- Bolzano–Weierstrass: korlátos sorozatnak van konvergens részsorozata. Cauchy-kritérium: a konvergencia ekvivalens azzal, hogy a késői tagok egymáshoz közel vannak.

## Feladatok a IV. részhez

1. A definíció alapján bizonyítsuk be, hogy $\frac{3n + 1}{n + 2} \to 3$. Adjunk meg egy megfelelő küszöbindexet $\varepsilon = 0{,}01$-hez.
2. Bizonyítsuk be, hogy az $a_n = (-1)^n \frac{n}{n+1}$ sorozat divergens.
3. Számítsuk ki a határértékeket: a) $\frac{2n^3 - n + 1}{n^3 + 4n^2}$; b) $\sqrt{n^2 + 3n} - n$; c) $\frac{3^n + 2^n}{3^{n+1} - 2^n}$; d) $\sqrt[n]{3^n + 5^n}$; e) $\frac{n^2 + 1}{n + 5}$.
4. Legyen $a_1 = 1$, $a_{n+1} = \sqrt{6 + a_n}$. Bizonyítsuk be, hogy a sorozat konvergens, és számítsuk ki a határértékét.
5. Bizonyítsuk be, hogy ha $a_n \to a > 0$, akkor egy küszöbtől kezdve $a_n > \frac{a}{2}$.
6. Adjunk meg egy-egy olyan $(a_n)$, $(b_n)$ sorozatpárt, amelyre $a_n \to 0$, $b_n \to +\infty$, és $a_n b_n$ határértéke a) $5$; b) $+\infty$; c) nem létezik.
7. (*Cesàro-tétel*) Bizonyítsuk be, hogy ha $a_n \to a$, akkor $\frac{a_1 + a_2 + \dots + a_n}{n} \to a$. Mutassuk meg, hogy a megfordítás nem igaz.

### Megoldási útmutatók

1. $\left|\frac{3n+1}{n+2} - 3\right| = \frac{5}{n + 2} < \frac{5}{n}$, ami kisebb $\varepsilon$-nál, ha $n > \frac{5}{\varepsilon}$. Pontosabban $\frac{5}{n+2} < 0{,}01 \iff n > 498$, tehát $n_0 = 499$ jó.
2. A páros indexű részsorozat $\frac{2k}{2k+1} \to 1$-hez, a páratlan indexű $-\frac{2k-1}{2k} \to -1$-hez tart.
3. a) $2$. b) $\frac{3n}{\sqrt{n^2 + 3n} + n} = \frac{3}{\sqrt{1 + 3/n} + 1} \to \frac{3}{2}$. c) $\frac{1}{3}$ (lásd a 25. szakasz 2. példáját). d) $5$. e) $\frac{n^2 + 1}{n + 5} = \frac{n + 1/n}{1 + 5/n}$, a számláló $+\infty$-hez, a nevező $1$-hez tart, a határérték $+\infty$.
4. Indukcióval $0 < a_n < 3$; $a_{n+1} > a_n \iff 6 + a_n > a_n^2 \iff (3 - a_n)(a_n + 2) > 0$. Monoton növekedő, korlátos, tehát konvergens; $L^2 = 6 + L$, $L \ge 0$, így $L = 3$.
5. Alkalmazzuk a definíciót $\varepsilon = \frac{a}{2}$-re: egy küszöbtől kezdve $a_n > a - \frac{a}{2} = \frac{a}{2}$.
6. a) $a_n = \frac{5}{n}$, $b_n = n$. b) $a_n = \frac{1}{n}$, $b_n = n^2$. c) $a_n = \frac{2 + (-1)^n}{n}$, $b_n = n$: a szorzat $2 + (-1)^n$.
7. Legyen $\varepsilon > 0$, és $N$ olyan, hogy $n \ge N$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ekkor $n > N$-re
$$\left|\frac{a_1 + \dots + a_n}{n} - a\right| \le \frac{|a_1 - a| + \dots + |a_{N} - a|}{n} + \frac{(n - N)\frac{\varepsilon}{2}}{n}.$$
Az első tag számlálója rögzített szám, így elég nagy $n$-re az első tag is $\frac{\varepsilon}{2}$ alatt van. A megfordításra ellenpélda: $a_n = (-1)^n$, amelynek számtani közepei $0$-hoz tartanak.

---

# V. RÉSZ: MEGSZÁMLÁLHATÓSÁG

Ebben a rövid részben egy látszólag kitérőnek tűnő kérdéssel foglalkozunk: hogyan lehet végtelen halmazok „méretét” összehasonlítani? A válasz Georg Cantortól származik (1870-es évek), és alapjaiban változtatta meg a matematikáról való gondolkodást. Kiderül, hogy a végtelen nem egyféle: **több valós szám van, mint racionális**, noha mindkettőből végtelen sok van. Ennek az analízisben is komoly következményei vannak — például az 56. szakaszban egy monoton függvény szakadási helyeinek számát fogjuk ezzel megbecsülni.

## 29. Megszámlálható halmazok; ℚ megszámlálható

Véges halmazok elemszámát megszámlálással állapítjuk meg: az elemeket sorra „megcímkézzük” az $1, 2, \dots, n$ számokkal. Ez valójában egy bijekció az $\{1, \dots, n\}$ halmaz és a vizsgált halmaz között. Cantor ötlete az volt, hogy ugyanezt végtelen halmazokra is megpróbáljuk: **sorba rendezhetők-e a halmaz elemei** úgy, mint a természetes számok?

> **Definíció.** Az $A$ halmaz **megszámlálhatóan végtelen**, ha elemei egy sorozatba rendezhetők úgy, hogy minden elem pontosan egyszer szerepel; azaz létezik $f : \mathbb{N} \to A$ bijekció. Ekkor az elemek $a_1 = f(1), a_2 = f(2), \dots$ alakban felsorolhatók.
>
> Az $A$ halmaz **megszámlálható**, ha véges vagy megszámlálhatóan végtelen. Ha egy halmaz nem megszámlálható, akkor **megszámlálhatatlan** (nem megszámlálható).

**Példák.**

- $\mathbb{N}$ megszámlálhatóan végtelen (az $f(n) = n$ bijekcióval).
- A páros természetes számok halmaza is az: $f(n) = 2n$. Figyeljük meg: **egy végtelen halmaz bijekcióban állhat egy valódi részhalmazával** — ez a véges halmazoknál lehetetlen, a végteleneknek viszont jellemző tulajdonsága.
- $\mathbb{Z}$ megszámlálhatóan végtelen: a felsorolás $0, 1, -1, 2, -2, 3, -3, \dots$. Képlettel: $f(n) = \frac{n}{2}$, ha $n$ páros, és $f(n) = -\frac{n-1}{2}$, ha $n$ páratlan.

**A Hilbert-szálloda.** David Hilbert szemléletes példája: egy szállodának végtelen sok szobája van, $1, 2, 3, \dots$ számokkal, és mind foglalt. Érkezik egy új vendég. Van-e hely? Igen: mindenki költözzön az eggyel nagyobb számú szobába ($n \mapsto n + 1$), és az $1$-es szoba felszabadul. Ha megszámlálhatóan végtelen sok új vendég érkezik, az is megoldható: mindenki költözzön a kétszeres számú szobába ($n \mapsto 2n$), és felszabadul az összes páratlan szoba. A véges halmazokra vonatkozó intuíciónk („ha minden szoba foglalt, nincs több hely”) a végtelenre nem érvényes.

Néhány egyszerű, de hasznos tény (bizonyításukat csak vázoljuk):

> **Állítás.**
>
> 1. Megszámlálható halmaz minden részhalmaza megszámlálható.
> 2. Két (vagy véges sok) megszámlálható halmaz uniója megszámlálható.
> 3. Megszámlálhatóan sok megszámlálható halmaz uniója is megszámlálható.

*Bizonyításvázlat.* 1. Ha $A = \{a_1, a_2, \dots\}$ és $B \subset A$, akkor soroljuk fel $B$ elemeit abban a sorrendben, ahogy az $A$ felsorolásában előfordulnak. 2. Ha $A = \{a_1, a_2, \dots\}$ és $B = \{b_1, b_2, \dots\}$, akkor $a_1, b_1, a_2, b_2, \dots$ felsorolja $A \cup B$-t (a már szerepelt elemeket kihagyva). 3. Legyen $A_k = \{a_{k1}, a_{k2}, a_{k3}, \dots\}$, $k = 1, 2, \dots$. Írjuk az elemeket egy végtelen táblázatba, amelynek $k$-adik sorában az $A_k$ elemei állnak, és járjuk be a táblázatot **átlósan**:
$$a_{11};\quad a_{12}, a_{21};\quad a_{13}, a_{22}, a_{31};\quad a_{14}, a_{23}, a_{32}, a_{41};\quad \dots$$
Minden átlón véges sok elem van, és minden elem előbb-utóbb sorra kerül (az $a_{kj}$ a $(k + j - 1)$-edik átlón van). A már szerepelt elemeket kihagyjuk. $\blacksquare$

Most következik az első meglepetés. A racionális számok sűrűn helyezkednek el a számegyenesen (9. szakasz): bármely két szám között végtelen sok van belőlük. Azt gondolnánk, hogy ezért „sokkal több” racionális szám van, mint természetes. Pedig nem.

> **Tétel.** $\mathbb{Q}$ megszámlálhatóan végtelen.

*Első bizonyítás (menetekben).* Konstruáljuk meg a felsorolást „menetekben”. Az **$n$-edik menetben** soroljuk fel azokat a $[-n, n]$ intervallumba eső, legfeljebb $n$ nevezőjű törteket, amelyeket korábban még nem soroltunk fel, növekvő sorrendben.

- 1. menet ($[-1, 1]$, nevező $1$): $-1,\ 0,\ 1$.
- 2. menet ($[-2, 2]$, nevező legfeljebb $2$): $-2,\ -\frac{3}{2},\ -\frac{1}{2},\ \frac{1}{2},\ \frac{3}{2},\ 2$.
- 3. menet ($[-3, 3]$, nevező legfeljebb $3$): $-3,\ -\frac{8}{3},\ -\frac{5}{2},\ -\frac{7}{3},\ \dots$, és így tovább.

Minden menetben csak **véges sok** új törtet írunk fel (hiszen véges sok nevező és egy korlátos intervallum van), és minden racionális szám előbb-utóbb sorra kerül: ha $\frac{p}{q}$ racionális ($q > 0$), akkor legkésőbb a $\max\{|p|, q\}$-adik menetben felírjuk. A menetek egymás után fűzésével a $\mathbb{Q}$ minden eleme pontosan egyszer szerepel egy sorozatban:
$$-1,\ 0,\ 1,\ -2,\ -\tfrac{3}{2},\ -\tfrac{1}{2},\ \tfrac{1}{2},\ \tfrac{3}{2},\ 2,\ \dots \qquad \blacksquare$$

*Második bizonyítás (átlós bejárás).* A pozitív racionális számokat írjuk egy táblázatba: a $q$-adik sorba a $\frac{1}{q}, \frac{2}{q}, \frac{3}{q}, \dots$ törtek kerülnek. Az előző állítás 3. pontjának átlós bejárása minden pozitív törtet felsorol (az ismétlődőket, mint $\frac{2}{4} = \frac{1}{2}$, kihagyjuk). A negatívakat és a nullát a $\mathbb{Z}$ felsorolásához hasonlóan illesztjük be. Rövidebben: $\mathbb{Q} = \bigcup_{q=1}^{\infty}\left\{\frac{p}{q} : p \in \mathbb{Z}\right\}$ megszámlálhatóan sok megszámlálható halmaz uniója. $\blacksquare$

## 30. Algebrai és transzcendens számok

A racionális számok a legegyszerűbb egyenletek, a $qx - p = 0$ alakú elsőfokú egyenletek gyökei. Természetes általánosítás a magasabb fokú egyenletek gyökeit is bevonni.

> **Definíció.** Egy $\alpha$ (valós vagy komplex) szám **algebrai**, ha gyöke egy nem azonosan nulla, **egész együtthatós** polinomnak, azaz van olyan $a_n x^n + \dots + a_1 x + a_0$ polinom ($a_k \in \mathbb{Z}$, nem mind nulla), amelyre $a_n\alpha^n + \dots + a_1\alpha + a_0 = 0$.
>
> Egy szám **transzcendens**, ha nem algebrai.

**Példák algebrai számokra.**

- Minden racionális szám algebrai: $\frac{p}{q}$ gyöke a $qx - p$ polinomnak.
- $\sqrt{2}$ gyöke az $x^2 - 2$ polinomnak; $\sqrt[3]{5}$ az $x^3 - 5$-nek.
- Az aranymetszés aránya, $\frac{1 + \sqrt{5}}{2}$, gyöke az $x^2 - x - 1$ polinomnak.
- $\sqrt{2} + \sqrt{3}$ is algebrai: ha $\alpha = \sqrt{2} + \sqrt{3}$, akkor $\alpha^2 = 5 + 2\sqrt{6}$, tehát $(\alpha^2 - 5)^2 = 24$, azaz $\alpha$ gyöke az $x^4 - 10x^2 + 1$ polinomnak.

Vajon minden valós szám algebrai? Az, hogy egy konkrét szám transzcendens, általában rendkívül nehéz kérdés: az első konkrét transzcendens számot Joseph Liouville konstruálta 1844-ben, az $e$ transzcendenciáját Charles Hermite bizonyította 1873-ban, a $\pi$-ét Ferdinand von Lindemann 1882-ben (ezzel végleg eldőlt, hogy a kör négyszögesítése körzővel és vonalzóval lehetetlen). Ezek a bizonyítások messze túlmutatnak a bevezető analízis keretein. Cantor azonban egy egészen más úton, egyetlen konkrét transzcendens szám megadása nélkül megmutatta, hogy **transzcendens számok léteznek, sőt, „majdnem minden” valós szám az.** Ennek első lépése a következő tétel.

> **Tétel.** Az algebrai számok halmaza megszámlálható.

*Bizonyítás.* Egy $p(x) = a_n x^n + \dots + a_0$ egész együtthatós, nem azonosan nulla polinom **magasságának** nevezzük a
$$h(p) = n + |a_n| + |a_{n-1}| + \dots + |a_0|$$
pozitív egész számot. Adott $h$ magasságú polinomból csak **véges sok** van: a fokszám legfeljebb $h$, és minden együttható abszolút értéke legfeljebb $h$, ami véges sok lehetőség. Minden nem azonosan nulla polinomnak véges sok gyöke van (egy $n$-edfokúnak legfeljebb $n$). Ezért a legfeljebb $h$ magasságú polinomok gyökeinek $G_h$ halmaza véges. Az algebrai számok halmaza
$$\bigcup_{h=1}^{\infty} G_h,$$
megszámlálhatóan sok véges halmaz uniója, ami a 29. szakasz állítása szerint megszámlálható. (Konkrétan: soroljuk fel előbb $G_1$ elemeit, majd $G_2$ új elemeit, és így tovább.) $\blacksquare$

## 31. ℝ nem megszámlálható

Most jön a döntő lépés: a valós számok **nem** rendezhetők sorozatba. Akármilyen ügyes felsorolással próbálkozunk, mindig marad ki valós szám.

> **Tétel (Cantor, 1874).** $\mathbb{R}$ nem megszámlálható.

*Bizonyítás (a Cantor-féle tulajdonság segítségével).* Indirekt. Tegyük fel, hogy a valós számok felsorolhatók: $\mathbb{R} = \{c_1, c_2, c_3, \dots\}$. Egymásba skatulyázott zárt intervallumokat fogunk konstruálni úgy, hogy az $n$-edik intervallum már **ne tartalmazza** a $c_n$ számot. Így a felsorolás minden tagját sorra „kizárjuk”.

- Válasszunk egy $[a_1, b_1]$ korlátos zárt intervallumot ($a_1 < b_1$), amely nem tartalmazza $c_1$-et. (Például $[c_1 + 1, c_1 + 2]$.)
- Ha az $[a_{n-1}, b_{n-1}]$ intervallum már megvan, osszuk három egyenlő részre:
$$\left[a_{n-1},\ a_{n-1} + \tfrac{d}{3}\right], \quad \left[a_{n-1} + \tfrac{d}{3},\ a_{n-1} + \tfrac{2d}{3}\right], \quad \left[a_{n-1} + \tfrac{2d}{3},\ b_{n-1}\right], \qquad d = b_{n-1} - a_{n-1}.$$
A $c_n$ szám legfeljebb kettőben lehet benne ezek közül (két szomszédosban, ha éppen egy osztópontra esik), tehát **a szélső két harmad közül legalább az egyik nem tartalmazza $c_n$-et**. Legyen ez $[a_n, b_n]$.

Így egymásba skatulyázott korlátos zárt intervallumok $[a_1, b_1] \supset [a_2, b_2] \supset \dots$ sorozatát kapjuk, amelyre minden $n$-re $c_n \notin [a_n, b_n]$. A Cantor-féle tulajdonság (9. szakasz) szerint van olyan $c$ valós szám, amely mindegyik intervallumban benne van. Ez a $c$ nem lehet egyenlő egyik $c_n$-nel sem, hiszen $c \in [a_n, b_n]$, de $c_n \notin [a_n, b_n]$. Tehát $c$ olyan valós szám, amely kimaradt a felsorolásból — ellentmondás. $\blacksquare$

**Egy másik bizonyítás: Cantor átlós módszere (1891).** Elég megmutatni, hogy már a $(0, 1)$ intervallum sem megszámlálható. Tegyük fel, hogy elemei felsorolhatók, és írjuk fel mindegyiket végtelen tizedes tört alakban:
$$\begin{aligned} c_1 &= 0{,}\mathbf{d_{11}}\,d_{12}\,d_{13}\dots \\ c_2 &= 0{,}d_{21}\,\mathbf{d_{22}}\,d_{23}\dots \\ c_3 &= 0{,}d_{31}\,d_{32}\,\mathbf{d_{33}}\dots \end{aligned}$$
Készítsünk egy új $c = 0{,}e_1 e_2 e_3 \dots$ számot úgy, hogy minden $n$-re $e_n \neq d_{nn}$ (az átlóban álló számjegyeket megváltoztatjuk), például $e_n = 5$, ha $d_{nn} \neq 5$, és $e_n = 4$, ha $d_{nn} = 5$. Ekkor $c$ az $n$-edik jegyében különbözik $c_n$-től, tehát egyetlen $c_n$-nel sem egyenlő. (Az $5$ és $4$ jegyek választása azt biztosítja, hogy $c$ tizedes tört alakja egyértelmű legyen, és ne lépjen fel a $0{,}1999\dots = 0{,}2000\dots$ típusú kétértelműség.) Ez az **átlós módszer** a matematika egyik legtermékenyebb gondolata; ugyanez a gondolat áll Gödel nemteljességi tételének és Turing megállási problémájának hátterében is.

> **Következmények.**
>
> 1. Az irracionális számok halmaza, $\mathbb{R} \setminus \mathbb{Q}$, nem megszámlálható.
> 2. **Léteznek transzcendens számok**, sőt a transzcendens számok halmaza nem megszámlálható.

*Bizonyítás.* 1. Ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható volna, akkor $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R}\setminus\mathbb{Q})$ két megszámlálható halmaz uniójaként megszámlálható volna. 2. Ugyanígy: $\mathbb{R}$ az algebrai valós számok (megszámlálható halmaz) és a transzcendens valós számok uniója. $\blacksquare$

Ez a gondolatmenet hihetetlenül erős: egyetlen transzcendens szám felírása nélkül bizonyítja, hogy belőlük „sokkal több” van, mint algebrai számból. Egyes kortársak éppen ezért gyanakodva fogadták — egy létezési bizonyítás, amely nem mutat meg semmit?

## 32. Számosság

A megszámlálhatóság fogalmát általánosíthatjuk: két halmazt akkor tekintünk „egyforma méretűnek”, ha elemeik párba állíthatók.

> **Definíció.** Az $A$ és $B$ halmazok **ekvivalensek** (azonos **számosságúak**), ha létezik $\varphi : A \to B$ bijekció. Jelölése: $A \sim B$.

Ez a reláció ekvivalenciareláció (16. szakasz):

- **reflexív:** $A \sim A$ (az identitással);
- **szimmetrikus:** ha $\varphi : A \to B$ bijekció, akkor $\varphi^{-1} : B \to A$ is az;
- **tranzitív:** ha $\varphi : A \to B$ és $\psi : B \to C$ bijekció, akkor $\psi \circ \varphi : A \to C$ is az (a III. rész 4. feladata szerint).

Ezzel a nyelvvel:

- $A$ megszámlálhatóan végtelen $\iff A \sim \mathbb{N}$;
- $A$ **kontinuum számosságú** $\iff A \sim \mathbb{R}$.

**Példák kontinuum számosságú halmazokra.**

- **Bármely két nyílt intervallum ekvivalens.** Az $(a, b)$ és $(c, d)$ intervallumok között a $\varphi(x) = c + \frac{d - c}{b - a}(x - a)$ lineáris függvény bijekció.
- **$(-1, 1) \sim \mathbb{R}$.** A $\varphi(x) = \frac{x}{1 - |x|}$ függvény bijekció $(-1, 1)$ és $\mathbb{R}$ között; az inverze $\psi(y) = \frac{y}{1 + |y|}$. (Ellenőrizzük: ha $|x| < 1$, akkor $\varphi(x)$ előjele megegyezik $x$-ével, és $\psi(\varphi(x)) = \frac{x/(1-|x|)}{1 + |x|/(1-|x|)} = \frac{x}{1 - |x| + |x|} = x$; hasonlóan $\varphi(\psi(y)) = y$. A 15. szakasz tétele szerint tehát $\varphi$ bijekció.) Következésképpen **minden nyílt intervallum kontinuum számosságú** — egy akármilyen rövid intervallumnak „ugyanannyi” pontja van, mint az egész számegyenesnek.
- **$[0, 1] \sim (0, 1)$.** Itt a Hilbert-szálloda fogását használjuk: a $0$-nak és az $1$-nek „helyet csinálunk” a $\frac{1}{n}$ alakú számok elcsúsztatásával. Legyen
$$\varphi(0) = \frac{1}{2}, \qquad \varphi(1) = \frac{1}{3}, \qquad \varphi\!\left(\frac{1}{n}\right) = \frac{1}{n + 2} \ \ (n \ge 2),$$
és minden más $x$-re $\varphi(x) = x$. Ez bijekció $[0, 1]$ és $(0, 1)$ között.

> **Tétel.** $\mathbb{R} \setminus \mathbb{Q} \sim \mathbb{R}$, azaz az irracionális számok halmaza kontinuum számosságú.

*Bizonyítás.* Ismét a Hilbert-szálloda fogását alkalmazzuk: az irracionális számok közül kiválasztunk megszámlálhatóan sokat, és ezek „elcsúsztatásával” helyet csinálunk a racionális számoknak. Legyen
$$d_n = \frac{\sqrt{2}}{n} \qquad (n \in \mathbb{N});$$
ezek különböző irracionális számok (ha $\frac{\sqrt{2}}{n}$ racionális volna, $\sqrt{2}$ is az volna). Soroljuk fel a racionális számokat: $\mathbb{Q} = \{q_1, q_2, \dots\}$. Definiáljuk a $\varphi : \mathbb{R} \setminus \mathbb{Q} \to \mathbb{R}$ függvényt így:
$$\varphi(d_{2n}) = d_n, \qquad \varphi(d_{2n-1}) = q_n, \qquad \varphi(x) = x \ \text{ minden más irracionális } x\text{-re}.$$
A páros indexű $d$-k a $d$-kre, a páratlan indexűek a racionális számokra, a többi irracionális szám önmagára képeződik. Ez a három halmaz ($\{d_n\}$, $\mathbb{Q}$, a többi irracionális szám) diszjunkt, és együtt kiadja $\mathbb{R}$-et, így $\varphi$ bijekció. $\blacksquare$

**Kitekintés.** Felmerül a kérdés: van-e a megszámlálható és a kontinuum között „köztes” számosság? Vagyis van-e olyan $H \subset \mathbb{R}$ halmaz, amely se nem megszámlálható, se nem kontinuum számosságú? Ez a híres **kontinuumhipotézis**, Hilbert 1900-as problémalistájának első pontja. A válasz meghökkentő: Kurt Gödel (1940) és Paul Cohen (1963) munkái szerint a halmazelmélet szokásos axiómáiból **sem bizonyítani, sem cáfolni nem lehet**. Az is ismert (Cantor tétele), hogy nincs „legnagyobb” számosság: bármely halmaz összes részhalmazainak halmaza nagyobb számosságú, mint maga a halmaz.

---

## Az V. rész összefoglalása

- Egy halmaz megszámlálhatóan végtelen, ha elemei sorozatba rendezhetők ($A \sim \mathbb{N}$). Végtelen halmaz bijekcióban állhat valódi részhalmazával (Hilbert-szálloda).
- $\mathbb{Z}$, $\mathbb{Q}$ és az algebrai számok halmaza megszámlálható; megszámlálhatóan sok megszámlálható halmaz uniója megszámlálható.
- $\mathbb{R}$ nem megszámlálható (Cantor; két bizonyítás: egymásba skatulyázott intervallumokkal és átlós módszerrel). Ebből következik a transzcendens számok létezése.
- A számosság-ekvivalencia ekvivalenciareláció; minden nyílt intervallum, sőt $\mathbb{R}\setminus\mathbb{Q}$ is kontinuum számosságú.

## Feladatok az V. részhez

1. Adjunk meg explicit bijekciót $\mathbb{N}$ és a páros egészek ($\{0, \pm 2, \pm 4, \dots\}$) halmaza között.
2. Bizonyítsuk be, hogy $\mathbb{N} \times \mathbb{N}$ megszámlálható.
3. Megszámlálható-e $\mathbb{N}$ véges részhalmazainak halmaza?
4. Adjunk meg bijekciót $(0, 1)$ és $(0, +\infty)$ között.
5. Bizonyítsuk be, hogy a $0$ és $1$ jegyekből álló végtelen sorozatok halmaza nem megszámlálható.
6. Megszámlálható-e azon valós számok halmaza, amelyek tizedes tört alakjában csak véges sok nem nulla jegy van?

### Megoldási útmutatók

1. Például $f(n) = n$, ha $n$ páros, és $f(n) = -(n - 1)$, ha $n$ páratlan: $f(1) = 0$, $f(2) = 2$, $f(3) = -2$, $f(4) = 4$, $f(5) = -4, \dots$
2. Átlós bejárás: $(1,1);\ (1,2), (2,1);\ (1,3), (2,2), (3,1);\ \dots$ Képlettel is megadható: $(m, n) \mapsto \frac{(m + n - 1)(m + n - 2)}{2} + m$.
3. Igen: az $n$ elemű részhalmazok $A_n$ halmaza megszámlálható (például mert $A_n$ beágyazható $\mathbb{N}^n$-be), és a véges részhalmazok halmaza $\bigcup_n A_n$ (plusz az üres halmaz).
4. Például $x \mapsto \frac{x}{1 - x}$; inverze $y \mapsto \frac{y}{1 + y}$.
5. Átlós módszer: ha $s_1, s_2, \dots$ felsorolná őket, akkor az az $s$ sorozat, amelynek $n$-edik jegye $1 - (s_n \text{ } n\text{-edik jegye})$, egyik $s_n$-nel sem egyezik meg.
6. Igen: ezek racionális számok, és a $\mathbb{Q}$ részhalmazát alkotják.

---

# VI. RÉSZ: LIMESZ SZUPERIOR ÉS INFERIOR

Egy sorozatnak nem feltétlenül van határértéke. A $\big((-1)^n\big)$ sorozat például ide-oda ugrál, de „rendezetten”: a tagjai felhalmozódnak a $-1$ és az $1$ körül. Jó volna egy olyan fogalom, amely **minden** sorozatra értelmes, és leírja, hol helyezkedik el a sorozat „végső” viselkedése akkor is, ha nincs határértéke. Erre szolgál a limesz szuperior és a limesz inferior: két szám, amely mindig létezik a bővített számegyenesen, és amelyek egybeesése éppen a határérték létezését jelenti.

## 33. A limsup és a liminf definíciója

**Az ötlet.** Nézzük a sorozatnak csak az $n$-edik tagtól kezdődő „farkát”: $a_n, a_{n+1}, a_{n+2}, \dots$. Ennek a farok-halmaznak vesszük a szuprémumát és az infimumát. Ahogy $n$ nő, egyre kevesebb tagot nézünk, tehát a szuprémum nem nőhet, az infimum nem csökkenhet. A kettő egy-egy monoton sorozatot alkot, és a monoton sorozatoknak mindig van határértékük.

> **Definíció.** Legyen $(a_n)$ tetszőleges valós sorozat. Minden $n \in \mathbb{N}$-re legyen
> $$M_n = \sup\{a_k : k \ge n\} \in \overline{\mathbb{R}}, \qquad m_n = \inf\{a_k : k \ge n\} \in \overline{\mathbb{R}}.$$

Mivel $\{a_k : k \ge n+1\} \subset \{a_k : k \ge n\}$, és szűkebb halmaz szuprémuma legfeljebb, infimuma legalább akkora (I. rész, 6. feladat), ezért
$$M_{n+1} \le M_n \qquad \text{és} \qquad m_{n+1} \ge m_n.$$
Az $(M_n)$ sorozat tehát monoton csökkenő, az $(m_n)$ monoton növekedő, így a 22. szakasz szerint mindkettőnek van határértéke $\overline{\mathbb{R}}$-ben. (Ha a sorozat felülről nem korlátos, akkor minden $M_n = +\infty$, és az $(M_n)$ sorozat az állandó $+\infty$; ezt az esetet is megengedjük.)

> **Definíció.** Az $(a_n)$ sorozat
>
> - **limesz szuperiorja** (felső határértéke): $\displaystyle \limsup_{n\to\infty} a_n = \overline{\lim_{n\to\infty}}\, a_n = \lim_{n\to\infty} M_n \in \overline{\mathbb{R}}$;
> - **limesz inferiorja** (alsó határértéke): $\displaystyle \liminf_{n\to\infty} a_n = \underline{\lim}_{n\to\infty}\, a_n = \lim_{n\to\infty} m_n \in \overline{\mathbb{R}}$.

Mivel $(M_n)$ csökkenő és $(m_n)$ növekedő, a 22. szakasz szerint egyben
$$\limsup a_n = \inf_n M_n = \inf_n \sup_{k \ge n} a_k, \qquad \liminf a_n = \sup_n m_n = \sup_n \inf_{k \ge n} a_k.$$

**Alapvető összefüggések.**

- Minden $n$-re $m_n \le a_n \le M_n$, tehát (a rendezés öröklődése szerint, $\overline{\mathbb{R}}$-ben is)
$$\liminf a_n \le \limsup a_n.$$

- Tükrözéssel: $\sup\{-a_k\} = -\inf\{a_k\}$, ezért
$$\liminf a_n = -\limsup\,(-a_n).$$
Elég tehát a limsup tulajdonságait bizonyítani; a liminf-re vonatkozók tükrözéssel adódnak.

### Kidolgozott példák

**1. $a_n = (-1)^n$.** Minden farok tartalmazza a $-1$-et és az $1$-et is, tehát $M_n = 1$ és $m_n = -1$ minden $n$-re. Így $\limsup (-1)^n = 1$ és $\liminf (-1)^n = -1$.

**2. $a_n = (-1)^n\left(1 + \frac{1}{n}\right)$.** A tagok: $-2,\ \frac{3}{2},\ -\frac{4}{3},\ \frac{5}{4},\ -\frac{6}{5}, \dots$. A pozitív (páros indexű) tagok $1 + \frac{1}{k}$ alakúak, csökkennek, és $1$-hez tartanak; a negatív (páratlan indexű) tagok $-\left(1 + \frac{1}{k}\right)$ alakúak, növekednek, és $-1$-hez tartanak. Az $n$-edik farok szuprémuma a farok legelső páros indexű tagja: $M_n = 1 + \frac{1}{n}$, ha $n$ páros, és $M_n = 1 + \frac{1}{n+1}$, ha $n$ páratlan. Így $M_n \to 1$, azaz $\limsup a_n = 1$; hasonlóan $\liminf a_n = -1$. Figyeljük meg, hogy a sorozat egyetlen tagja sem egyenlő $1$-gyel — a limsup nem feltétlenül tagja a sorozatnak.

**3. $a_n = n$.** Minden $M_n = +\infty$, és $m_n = n \to +\infty$. Tehát $\limsup n = \liminf n = +\infty$.

**4. A racionális számok felsorolása.** Legyen $(q_n)$ a $[0, 1] \cap \mathbb{Q}$ halmaz egy felsorolása (ilyen a 29. szakasz szerint létezik). Minden farok a $[0,1] \cap \mathbb{Q}$ halmazból csak véges sok elemet hagy ki, így a szuprémuma $1$, az infimuma $0$ (hiszen $0$ és $1$ körül minden környezetben végtelen sok racionális szám van, és ezek közül csak véges sokat hagytunk ki). Tehát $\limsup q_n = 1$ és $\liminf q_n = 0$.

### A határérték és a limsup, liminf kapcsolata

> **Tétel.** $\displaystyle \lim_{n\to\infty} a_n = a \in \overline{\mathbb{R}} \iff \limsup_{n\to\infty} a_n = \liminf_{n\to\infty} a_n = a$.

Vagyis a határérték létezése pontosan azt jelenti, hogy a sorozat felső és alsó végső viselkedése egybeesik.

*Bizonyítás.* **($\Leftarrow$)** Tegyük fel, hogy $\liminf a_n = \limsup a_n = a$. Mivel $m_n \le a_n \le M_n$, és $m_n \to a$, $M_n \to a$, a rendőrelv (illetve végtelen $a$ esetén a félrendőrelv) szerint $a_n \to a$.

**($\Rightarrow$)** Legyen először $a \in \mathbb{R}$, és $\varepsilon > 0$. Van olyan $N$, hogy $k \ge N$ esetén $a - \varepsilon < a_k < a + \varepsilon$. Ekkor $n \ge N$-re a farok minden eleme az $(a - \varepsilon, a + \varepsilon)$ intervallumban van, így
$$a - \varepsilon \le m_n \le M_n \le a + \varepsilon.$$
Határátmenettel $a - \varepsilon \le \liminf a_n \le \limsup a_n \le a + \varepsilon$. Mivel ez minden $\varepsilon > 0$-ra igaz, a liminf és a limsup is egyenlő $a$-val.

Ha $a = +\infty$, akkor minden $K$-hoz van $N$, hogy $k \ge N$ esetén $a_k > K$, tehát $n \ge N$-re $m_n \ge K$. Így $m_n \to +\infty$, és mivel $M_n \ge m_n$, $M_n \to +\infty$ is. Az $a = -\infty$ eset tükrözéssel adódik. $\blacksquare$

### Egy hasznos jellemzés

A gyakorlatban a következő átfogalmazás a legkényelmesebb (véges limsup esetén):

> **Tétel.** Legyen $L \in \mathbb{R}$. Ekkor $\limsup a_n = L$ pontosan akkor, ha minden $\varepsilon > 0$ esetén
>
> 1. csak véges sok $n$-re teljesül $a_n \ge L + \varepsilon$ (azaz egy küszöbtől kezdve $a_n < L + \varepsilon$), és
> 2. végtelen sok $n$-re teljesül $a_n > L - \varepsilon$.

Szavakban: $L$ fölé a sorozat (bármilyen kis ráhagyással) csak véges sokszor ugrik ki, de $L$ alá (bármilyen kis ráhagyással) sem szorul végleg. A bizonyítás a definícióból közvetlenül adódik: az 1. feltétel azt mondja, hogy egy $n$-től kezdve $M_n \le L + \varepsilon$; a 2. pedig azt, hogy minden $n$-re $M_n > L - \varepsilon$ (különben az $n$-edik farokban már minden tag legfeljebb $L - \varepsilon$ volna). A kettő együtt azt jelenti, hogy $M_n \to L$.

## 34. Sűrűsödési értékek

A limsup a sorozat „legnagyobb végső értéke”. Ezt a részsorozatok nyelvén is meg lehet fogalmazni.

> **Definíció.** Az $\alpha \in \overline{\mathbb{R}}$ az $(a_n)$ sorozat **sűrűsödési értéke** (torlódási értéke), ha van olyan $(a_{n_k})$ részsorozat, amelyre $a_{n_k} \to \alpha$.

Ekvivalens megfogalmazás véges $\alpha$-ra: **$\alpha$ bármely környezetében a sorozatnak végtelen sok (indexű) tagja van.** (Ha van $\alpha$-hoz tartó részsorozat, ennek egy küszöbtől kezdve minden tagja a környezetben van. Megfordítva, ha minden $B\!\left(\alpha, \frac{1}{k}\right)$ környezetben végtelen sok tag van, akkor választhatunk $n_1 < n_2 < \dots$ indexeket úgy, hogy $a_{n_k} \in B\!\left(\alpha, \frac{1}{k}\right)$, és ekkor $a_{n_k} \to \alpha$.)

**Példák.**

- A $\big((-1)^n\big)$ sorozat sűrűsödési értékei: $-1$ és $1$.
- A $0, 1, 0, 1, 2, 0, 1, 2, 3, 0, 1, 2, 3, 4, \dots$ sorozat sűrűsödési értékei: minden nemnegatív egész szám és $+\infty$.
- A 33. szakasz 4. példájának $(q_n)$ sorozata: a sűrűsödési értékek halmaza a teljes $[0, 1]$ intervallum, hiszen minden $x \in [0, 1]$ bármely környezetében végtelen sok racionális szám van a $[0,1]$-ből.
- Konvergens sorozatnak egyetlen sűrűsödési értéke van, maga a határérték (20. szakasz).

A 27. szakasz eredménye most így fogalmazható: **minden sorozatnak van legalább egy sűrűsödési értéke** a bővített számegyenesen. A következő tétel ennél sokkal többet mond.

> **Tétel.** Minden $(a_n)$ sorozatra a $\limsup a_n$ maga is sűrűsödési érték, és minden sűrűsödési értéknél nagyobb vagy egyenlő. Vagyis
> $$\limsup_{n\to\infty} a_n = \max\{\alpha \in \overline{\mathbb{R}} : \alpha \text{ az } (a_n) \text{ sűrűsödési értéke}\}.$$
> Hasonlóan, $\liminf a_n$ a legkisebb sűrűsödési érték.

A tétel tehát azt is állítja, hogy a sűrűsödési értékek halmazának **van** legnagyobb eleme (nemcsak szuprémuma).

*Bizonyítás.* Jelölje $L = \limsup a_n$.

*1. Minden sűrűsödési érték legfeljebb $L$.* Legyen $a_{n_k} \to \alpha$. Mivel $a_{n_k}$ az $n_k$-adik farokban van, $a_{n_k} \le M_{n_k}$. Az $(M_{n_k})$ az $(M_n)$ részsorozata, tehát szintén $L$-hez tart. A rendezés öröklődése szerint $\alpha \le L$.

*2. $L$ sűrűsödési érték.* Három esetet különböztetünk meg.

- $L = +\infty$: ekkor minden $M_n = +\infty$ (hiszen $M_n$ csökkenő és $+\infty$-hez tart), azaz a sorozat felülről nem korlátos. A 27. szakasz szerint van $+\infty$-hez tartó részsorozata.
- $L = -\infty$: ekkor $a_n \le M_n \to -\infty$, a félrendőrelv szerint az egész sorozat $-\infty$-hez tart, ami tehát sűrűsödési érték.
- $L \in \mathbb{R}$: az előző szakasz jellemzése szerint minden $k$-ra egy küszöbtől kezdve $a_n < L + \frac{1}{k}$, és végtelen sok $n$-re $a_n > L - \frac{1}{k}$. Így minden $k$-ra végtelen sok olyan index van, amelyre $|a_n - L| < \frac{1}{k}$. Válasszunk ezekből szigorúan növekedő $n_1 < n_2 < \dots$ indexeket úgy, hogy $|a_{n_k} - L| < \frac{1}{k}$; ekkor $a_{n_k} \to L$. $\blacksquare$

**Összefoglalva** a sorozat végső viselkedését három szám írja le: a liminf (a legkisebb sűrűsödési érték), a limsup (a legnagyobb sűrűsödési érték), és a határérték, amely pontosan akkor létezik, ha a kettő egybeesik — azaz ha a sorozatnak egyetlen sűrűsödési értéke van.

---

## A VI. rész összefoglalása

- $\limsup a_n = \lim_{n\to\infty} \sup_{k\ge n} a_k$, $\liminf a_n = \lim_{n\to\infty} \inf_{k \ge n} a_k$; mindkettő minden sorozatra létezik $\overline{\mathbb{R}}$-ben, és $\liminf \le \limsup$.
- $\lim a_n$ akkor és csak akkor létezik, ha $\liminf a_n = \limsup a_n$, és ekkor mindhárom egyenlő.
- A limsup a legnagyobb, a liminf a legkisebb sűrűsödési érték (részsorozat-határérték).

## Feladatok a VI. részhez

1. Számítsuk ki a limsup és liminf értékét: a) $a_n = \frac{(-1)^n n}{n + 1}$; b) $a_n = n^{(-1)^n}$; c) $a_n = \sin\frac{n\pi}{2}$ (használjuk a $\sin$ ismert értékeit).
2. Bizonyítsuk be, hogy korlátos sorozatokra $\limsup(a_n + b_n) \le \limsup a_n + \limsup b_n$. Adjunk példát szigorú egyenlőtlenségre.
3. Mutassuk meg, hogy ha $a_n \to a \in \mathbb{R}$, akkor tetszőleges korlátos $(b_n)$ sorozatra $\limsup(a_n + b_n) = a + \limsup b_n$.
4. Adjunk meg olyan sorozatot, amelynek sűrűsödési értékei pontosan az $\frac{1}{k}$ ($k \in \mathbb{N}$) számok és a $0$.

### Megoldási útmutatók

1. a) $1$ és $-1$. b) A páros indexű részsorozat $n \to +\infty$, a páratlan indexű $\frac{1}{n} \to 0$; limsup $= +\infty$, liminf $= 0$. c) A sorozat $1, 0, -1, 0, 1, 0, -1, \dots$, így limsup $= 1$, liminf $= -1$.
2. Minden $k \ge n$-re $a_k + b_k \le \sup_{j \ge n} a_j + \sup_{j \ge n} b_j$, tehát $\sup_{k \ge n}(a_k + b_k) \le M_n(a) + M_n(b)$; határátmenettel kész. Szigorú egyenlőtlenség: $a_n = (-1)^n$, $b_n = (-1)^{n+1}$: bal oldal $0$, jobb oldal $2$.
3. A 2. feladat szerint $\le$; a másik irány a 2. feladatot az $(a_n + b_n)$ és $(-a_n)$ sorozatokra alkalmazva: $\limsup b_n \le \limsup(a_n + b_n) + \limsup(-a_n) = \limsup(a_n + b_n) - a$.
4. Például az $1;\ 1, \frac{1}{2};\ 1, \frac{1}{2}, \frac{1}{3};\ 1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4};\ \dots$ sorozat: minden $\frac{1}{k}$ végtelen sokszor szerepel, és a $0$ is sűrűsödési érték (az egyes blokkok utolsó tagjai $0$-hoz tartanak). Más sűrűsödési érték nincs, mert ha $x \notin \{0\} \cup \left\{\frac{1}{k}\right\}$, akkor $x$-nek van olyan környezete, amely a sorozatnak egyetlen értékét sem tartalmazza.

---

# VII. RÉSZ: VÉGTELEN SOROK

„Össze lehet-e adni végtelen sok számot?” A kérdés az ókor óta foglalkoztatja a gondolkodókat. Zénón híres paradoxona szerint Akhilleusz sosem éri utol a teknősbékát: amíg odaér, ahol a teknős volt, az már továbbment, és így tovább, végtelen sokszor. A paradoxon feloldása az, hogy végtelen sok egyre rövidebb időtartam összege lehet véges. Ebben a részben ezt a gondolatot tesszük precízzé: a végtelen összeget a **részletösszegek sorozatának határértékeként** definiáljuk. Így minden, amit a IV. részben a sorozatokról tanultunk, közvetlenül alkalmazható lesz.

## 35. A sor fogalma

**Egy bevezető példa.** Egy négyzet alakú torta felét megesszük, majd a maradék felét, majd annak a felét, és így tovább. Mennyi tortát eszünk meg összesen? Az első $n$ lépés után
$$s_n = \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^n}$$
részt ettünk meg, és $\frac{1}{2^n}$ rész maradt, tehát $s_n = 1 - \frac{1}{2^n}$. (Ezt a mértani sorozat összegképletével is megkaphatjuk:
$$s_n = \frac{1}{2}\left(1 + \frac{1}{2} + \dots + \frac{1}{2^{n-1}}\right) = \frac{1}{2}\cdot\frac{1 - \frac{1}{2^n}}{1 - \frac{1}{2}} = 1 - \frac{1}{2^n}.)$$
Ez az új sorozat konvergens: $s_n \to 1$. Ezt fejezzük ki úgy, hogy
$$\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \dots = \sum_{k=1}^{\infty}\frac{1}{2^k} = 1.$$
Figyeljük meg, mi történt: a végtelen összeadás fogalmát **visszavezettük** a véges összegek sorozatának határértékére. Ez az egész elmélet kulcsa.

> **Definíció (véges összeg).** Ha $n \ge m$, akkor $\displaystyle \sum_{k=m}^{n} a_k = a_m + a_{m+1} + \dots + a_n$.

> **Definíció (végtelen sor).** Legyen $(a_n)$ egy sorozat, és képezzük az
> $$s_n = \sum_{k=1}^{n} a_k = a_1 + a_2 + \dots + a_n$$
> **részletösszegek** sorozatát. Az $(a_n)$ sorozatból képzett **végtelen sor** (röviden **sor**) az $(s_n)$ részletösszeg-sorozat; jelölése $\sum_{k=1}^\infty a_k$ vagy $a_1 + a_2 + \dots$. Az $a_k$ számok a sor **tagjai**.
>
> - Ha $s_n \to s \in \mathbb{R}$, akkor a sor **konvergens**, és az $s$ számot a sor **összegének** nevezzük: $\sum_{k=1}^\infty a_k = s$.
> - Ha $(s_n)$ divergens, akkor a sor **divergens**. Ha $s_n \to +\infty$ (vagy $-\infty$), akkor azt írjuk, hogy $\sum_{k=1}^\infty a_k = +\infty$ (vagy $-\infty$).

**Két különböző sorozat.** Egy sorral kapcsolatban mindig két sorozatot kell megkülönböztetni: a **tagok** sorozatát, $(a_n)$-t, és a **részletösszegek** sorozatát, $(s_n)$-t. A sor konvergenciája az utóbbi konvergenciáját jelenti! A $\sum \frac{1}{2^k}$ sor tagjai $0$-hoz tartanak, a részletösszegei $1$-hez — a sor összege $1$, nem $0$.

A $\sum a_k$ jelölés kétértelmű: jelenti magát a sort (a részletösszegek sorozatát) és, konvergencia esetén, az összegét is. Ez a szövegkörnyezetből mindig kiderül.

A sorok indexelése más értékről is kezdődhet: $\sum_{n=0}^\infty a_n$, $\sum_{k=10}^\infty a_k$ stb. Véges sok tag elhagyása vagy hozzávétele a sor konvergenciáját nem befolyásolja (csak az összegét), hiszen a részletösszegek csak egy állandóval változnak meg.

**Műveletek.** A sorozatokra vonatkozó műveleti tételekből (25. szakasz) azonnal következik: ha $\sum a_k = A$ és $\sum b_k = B$ konvergensek, akkor
$$\sum_{k=1}^\infty (a_k + b_k) = A + B, \qquad \sum_{k=1}^\infty c\, a_k = cA,$$
hiszen a részletösszegekre ugyanez igaz. (Szorzatra viszont nincs ilyen egyszerű szabály: $\sum a_k b_k$ **nem** $AB$.)

### Teleszkopikus sorok

**Kidolgozott példa.** Számítsuk ki a
$$\sum_{k=1}^{\infty}\frac{1}{k(k+1)} = \frac{1}{1\cdot 2} + \frac{1}{2\cdot 3} + \frac{1}{3\cdot 4} + \dots$$
sor összegét! A kulcs a **parciális törtekre bontás**:
$$\frac{1}{k(k+1)} = \frac{1}{k} - \frac{1}{k+1}.$$
Ezért a részletösszeg
$$s_n = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{n} - \frac{1}{n+1}\right) = 1 - \frac{1}{n+1},$$
hiszen minden belső tag kétszer szerepel, ellentétes előjellel, és kiesik. (Mint egy összecsukódó távcső — innen a **teleszkopikus** elnevezés.) Tehát $s_n \to 1$, azaz
$$\sum_{k=1}^{\infty}\frac{1}{k(k+1)} = 1.$$

**Tizedes törtek mint sorok.** Egy végtelen tizedes tört valójában egy sor: $0{,}d_1d_2d_3\dots = \sum_{k=1}^\infty \frac{d_k}{10^k}$. Például
$$0{,}999\dots = \frac{9}{10} + \frac{9}{100} + \dots = \frac{9}{10}\cdot\frac{1}{1 - \frac{1}{10}} = 1$$
(a mértani sor összegképletével, lásd a 37. szakaszt). A $0{,}999\dots = 1$ egyenlőség, amely sokakat zavarba ejt, tehát egyszerűen azt jelenti, hogy a $0{,}9;\ 0{,}99;\ 0{,}999; \dots$ részletösszegek $1$-hez tartanak.

## 36. A Cauchy-kritérium sorokra és a szükséges feltétel

Mivel egy sor konvergenciája a részletösszeg-sorozat konvergenciáját jelenti, a 28. szakasz Cauchy-kritériuma közvetlenül alkalmazható. Csak azt kell észrevenni, hogy két részletösszeg különbsége maga is egy (véges) összeg:
$$s_m - s_{n-1} = (a_1 + \dots + a_m) - (a_1 + \dots + a_{n-1}) = a_n + a_{n+1} + \dots + a_m = \sum_{k=n}^{m} a_k.$$

> **Tétel (Cauchy-kritérium sorokra).** A $\sum a_k$ sor akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_0$, hogy minden $m \ge n \ge n_0$ esetén
> $$\left|\sum_{k=n}^{m} a_k\right| = |a_n + a_{n+1} + \dots + a_m| < \varepsilon.$$

Szavakban: a sor pontosan akkor konvergens, ha az elég késői **szeletek** (egymás utáni tagok összegei) tetszőlegesen kicsik — akármilyen hosszúak is. A „hosszúság” itt a lényeg: nem elég, hogy az egyes tagok kicsik, a tetszőlegesen sok egymás utáni tag összegének is kicsinek kell lennie.

*Bizonyítás.* Ez szó szerint a 28. szakasz Cauchy-kritériuma az $(s_n)$ sorozatra, a fenti azonosság felhasználásával. $\blacksquare$

Ebből egy egyszerű, de alapvető szükséges feltétel adódik.

> **Tétel (a konvergencia szükséges feltétele).** Ha a $\sum a_k$ sor konvergens, akkor $a_k \to 0$.

*Bizonyítás.* Alkalmazzuk a Cauchy-kritériumot $m = n$-re: minden $\varepsilon > 0$-hoz van $n_0$, hogy $n \ge n_0$ esetén $|a_n| < \varepsilon$. Ez éppen $a_n \to 0$. (Más úton: $a_n = s_n - s_{n-1} \to s - s = 0$.) $\blacksquare$

A tétel kontrapozíciója gyakran használható divergencia bizonyítására: **ha a tagok nem tartanak $0$-hoz, a sor divergens.** Például $\sum \frac{n}{n+1}$ divergens, mert $\frac{n}{n+1} \to 1 \neq 0$; és $\sum (-1)^n$ is divergens.

**Figyelem: ez a feltétel nem elégséges!** Abból, hogy $a_k \to 0$, **nem** következik, hogy a sor konvergens. A 28. szakaszban már láttuk, hogy $\sum \frac{1}{\sqrt{k}} = +\infty$, pedig $\frac{1}{\sqrt{k}} \to 0$. Ez a sorok elméletének legfontosabb, és leggyakrabban elkövetett hibája: a „tagok nullához tartanak, tehát a sor konvergens” következtetés **hamis**. A tagok nullához tartása csak annyit garantál, hogy a sor „esélyes” a konvergenciára; a döntéshez finomabb vizsgálat kell.

### Pozitív tagú sorok

Különösen egyszerű a helyzet, ha a sor tagjai nemnegatívak. Ekkor a részletösszegek sorozata **monoton növekedő** ($s_{n+1} = s_n + a_{n+1} \ge s_n$), így a 21. és 22. szakasz szerint:

> **Tétel.** Ha minden $k$-ra $a_k \ge 0$, akkor a $\sum a_k$ sor pontosan akkor konvergens, ha a részletösszegek sorozata korlátos. Ha nem korlátos, akkor $\sum a_k = +\infty$.

Ebből azonnal adódik az egyik leghasznosabb konvergenciakritérium:

> **Következmény (összehasonlító kritérium).** Legyen $0 \le a_k \le b_k$ minden $k$-ra.
>
> - Ha $\sum b_k$ konvergens, akkor $\sum a_k$ is konvergens (**majoráns kritérium**).
> - Ha $\sum a_k = +\infty$, akkor $\sum b_k = +\infty$ (**minoráns kritérium**).

*Bizonyítás.* A részletösszegekre $\sum_{k=1}^n a_k \le \sum_{k=1}^n b_k$. Ha a jobb oldal korlátos, a bal is az; ha a bal nem korlátos, a jobb sem. $\blacksquare$

## 37. Nevezetes sorok

### A mértani (geometriai) sor

Legyen $q \in \mathbb{R}$, és tekintsük a $\sum_{n=0}^\infty q^n = 1 + q + q^2 + \dots$ sort. A részletösszegekre (ha $q \neq 1$) a jól ismert képlet érvényes:
$$s_n = 1 + q + \dots + q^n = \frac{1 - q^{n+1}}{1 - q}.$$
(Ellenőrzés: $(1 - q)(1 + q + \dots + q^n) = 1 + q + \dots + q^n - q - q^2 - \dots - q^{n+1} = 1 - q^{n+1}$, teleszkopikusan.)

> **Tétel (mértani sor).** A $\sum_{n=0}^\infty q^n$ sor pontosan akkor konvergens, ha $|q| < 1$, és ekkor
> $$\sum_{n=0}^{\infty} q^n = \frac{1}{1 - q}.$$

*Bizonyítás.* Ha $|q| < 1$, akkor a 22. szakasz szerint $q^{n+1} \to 0$, így
$$s_n = \frac{1 - q^{n+1}}{1 - q} \to \frac{1}{1 - q}.$$
Ha $|q| \ge 1$, akkor $|q^n| = |q|^n \ge 1$, tehát a tagok nem tartanak $0$-hoz, és a szükséges feltétel szerint a sor divergens. $\blacksquare$

Általánosabban, ha az első tag $a$ és a hányados $q$, akkor $|q| < 1$ esetén $\sum_{n=0}^\infty aq^n = \frac{a}{1 - q}$. Például
$$\sum_{n=1}^\infty \frac{1}{3^n} = \frac{1/3}{1 - 1/3} = \frac{1}{2}, \qquad 0{,}\overline{12} = \frac{12}{100} + \frac{12}{100^2} + \dots = \frac{12/100}{1 - 1/100} = \frac{12}{99} = \frac{4}{33}.$$

**Akhilleusz és a teknős.** Ha Akhilleusz $10$-szer olyan gyors, mint a teknős, és a teknős $100$ méter előnnyel indul, akkor Akhilleusz $100 + 10 + 1 + 0{,}1 + \dots$ méter megtétele után éri utol, és ez a mértani sor összege: $\frac{100}{1 - 1/10} = 111{,}\overline{1}$ méter. Zénón paradoxona azon a (rejtett) feltevésen múlt, hogy végtelen sok szakasz összege szükségképpen végtelen.

### A $\sum \frac{1}{n^2}$ sor

> **Tétel.** A $\displaystyle \sum_{n=1}^\infty \frac{1}{n^2}$ sor konvergens, és összege legfeljebb $2$.

*Bizonyítás.* A sor pozitív tagú, tehát elég belátni, hogy a részletösszegei korlátosak. A trükk: minden $n \ge 2$-re
$$\frac{1}{n^2} < \frac{1}{n(n-1)} = \frac{1}{n-1} - \frac{1}{n},$$
és az utóbbi sor teleszkopikus. Ezért
$$\sum_{k=1}^{n}\frac{1}{k^2} < 1 + \sum_{k=2}^{n}\left(\frac{1}{k-1} - \frac{1}{k}\right) = 1 + \left(1 - \frac{1}{n}\right) < 2.$$
A részletösszegek tehát szigorúan monoton növekedők és felülről korlátosak, így a sor konvergens. $\blacksquare$

Az összeg pontos értéke $\frac{\pi^2}{6} \approx 1{,}6449$. Ezt Leonhard Euler fedezte fel 1734-ben (a „bázeli probléma” megoldásaként), de a bizonyítás eszközei túlmutatnak ezen a könyvön. Ugyanígy (a majoráns kritériummal) konvergens $\sum \frac{1}{n^p}$ minden $p \ge 2$-re, hiszen $\frac{1}{n^p} \le \frac{1}{n^2}$.

### A harmonikus sor

> **Tétel.** A $\displaystyle \sum_{n=1}^\infty \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \dots$ **harmonikus sor** divergens, sőt $\sum_{n=1}^\infty \frac{1}{n} = +\infty$.

Ez a félév egyik legszebb ellenpéldája: a tagok nullához tartanak, az összeg mégis minden határon túl nő. Két bizonyítást is adunk.

*Első bizonyítás (a Cauchy-kritériummal).* Megmutatjuk, hogy a Cauchy-feltétel $\varepsilon = \frac{1}{2}$-re nem teljesül. Bármely $n$ esetén tekintsük az $n+1$-edik és a $2n$-edik tag közötti szeletet: ebben $n$ tag van, és mindegyik legalább $\frac{1}{2n}$, tehát
$$\frac{1}{n+1} + \frac{1}{n+2} + \dots + \frac{1}{2n} \ge n\cdot\frac{1}{2n} = \frac{1}{2}.$$
Akármilyen késői küszöböt is választunk, mindig van utána $\frac{1}{2}$-nél nem kisebb szelet. A sor tehát divergens; mivel pozitív tagú, a részletösszegei $+\infty$-hez tartanak. $\blacksquare$

*Második bizonyítás (csoportosítással; Nicole Oresme, XIV. század).* Csoportosítsuk a tagokat kettőhatvány hosszúságú blokkokba:
$$1 + \frac{1}{2} + \underbrace{\left(\frac{1}{3} + \frac{1}{4}\right)}_{\ge 2\cdot\frac{1}{4} = \frac{1}{2}} + \underbrace{\left(\frac{1}{5} + \dots + \frac{1}{8}\right)}_{\ge 4\cdot\frac{1}{8} = \frac{1}{2}} + \underbrace{\left(\frac{1}{9} + \dots + \frac{1}{16}\right)}_{\ge 8 \cdot \frac{1}{16} = \frac{1}{2}} + \dots$$
Minden blokk összege legalább $\frac{1}{2}$, ezért
$$s_{2^k} \ge 1 + \frac{k}{2} \to +\infty. \qquad \blacksquare$$

A harmonikus sor **nagyon lassan** divergál: az első millió tag összege csak körülbelül $14{,}39$, és ahhoz, hogy a részletösszeg meghaladja a $100$-at, körülbelül $1{,}5 \cdot 10^{43}$ tagra van szükség. (Később látni fogjuk, hogy $s_n$ nagyjából $\ln n$-nel egyenlő.) A tanulság: numerikus kísérletekből a sorok konvergenciájára nem lehet következtetni.

A minoráns kritérium szerint a harmonikus sor divergenciájából azonnal következik, hogy $\sum \frac{1}{\sqrt{n}}$ is divergens, hiszen $\frac{1}{\sqrt{n}} \ge \frac{1}{n}$.

**Kitekintés: a sorrend számít!** A $1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots$ váltakozó előjelű harmonikus sor konvergens (összege $\ln 2$). Bernhard Riemann azonban megmutatta, hogy tagjait alkalmas sorrendbe rakva **bármilyen** előre megadott összeget elérhetünk, sőt divergens sort is kaphatunk. Ez éles ellentétben áll a sorozatokkal, amelyek határértékét az átrendezés nem változtatja meg (23. szakasz). Az ok: a pozitív és a negatív tagok külön-külön végtelen összeget adnak, és a sorrend megválasztásával szabályozhatjuk, melyik „végtelen” mikor érvényesül. A sorok átrendezésének részletes elmélete a következő félév anyaga.

---

## A VII. rész összefoglalása

- A $\sum a_k$ sor a részletösszegek $s_n = a_1 + \dots + a_n$ sorozata; konvergenciája $(s_n)$ konvergenciáját jelenti, összege $\lim s_n$.
- Cauchy-kritérium: a sor pontosan akkor konvergens, ha a késői szeletek $|a_n + \dots + a_m|$ tetszőlegesen kicsik.
- Szükséges feltétel: konvergens sor tagjai $0$-hoz tartanak. **Nem elégséges** (harmonikus sor).
- Pozitív tagú sor pontosan akkor konvergens, ha részletösszegei korlátosak; ebből az összehasonlító kritérium.
- Nevezetes sorok: $\sum q^n = \frac{1}{1-q}$ ($|q| < 1$); $\sum \frac{1}{n(n+1)} = 1$ (teleszkopikus); $\sum \frac{1}{n^2}$ konvergens; $\sum \frac{1}{n} = +\infty$.

## Feladatok a VII. részhez

1. Számítsuk ki: a) $\sum_{n=0}^\infty \left(\frac{2}{3}\right)^n$; b) $\sum_{n=1}^\infty \frac{2^n + 3^n}{6^n}$; c) $\sum_{n=1}^\infty \frac{1}{(n+1)(n+2)}$.
2. Írjuk fel a $0{,}3\overline{7}$ szakaszos tizedes törtet tört alakban.
3. Konvergensek-e a következő sorok? a) $\sum \frac{n}{2n + 1}$; b) $\sum \frac{1}{n^3}$; c) $\sum \frac{1}{n\cdot 2^n}$; d) $\sum \frac{1}{2n - 1}$.
4. Bizonyítsuk be, hogy ha $\sum a_n$ konvergens és $\sum b_n$ divergens, akkor $\sum (a_n + b_n)$ divergens. Mit mondhatunk két divergens sor összegéről?
5. Számítsuk ki a $\sum_{n=1}^\infty \frac{1}{n(n+1)(n+2)}$ sor összegét. (Útmutatás: $\frac{1}{n(n+1)(n+2)} = \frac{1}{2}\left(\frac{1}{n(n+1)} - \frac{1}{(n+1)(n+2)}\right)$.)

### Megoldási útmutatók

1. a) $\frac{1}{1 - 2/3} = 3$. b) $\sum \left(\frac{1}{3}\right)^n + \sum\left(\frac{1}{2}\right)^n = \frac{1}{2} + 1 = \frac{3}{2}$. c) Teleszkopikus: $\frac{1}{n+1} - \frac{1}{n+2}$, az összeg $\frac{1}{2}$.
2. $0{,}3\overline{7} = \frac{3}{10} + \frac{7}{100}\cdot\frac{1}{1 - 1/10} = \frac{3}{10} + \frac{7}{90} = \frac{34}{90} = \frac{17}{45}$.
3. a) Divergens, a tagok $\frac{1}{2}$-hez tartanak. b) Konvergens, majoráns: $\frac{1}{n^2}$. c) Konvergens, majoráns: $\frac{1}{2^n}$. d) Divergens: $\frac{1}{2n-1} \ge \frac{1}{2n}$, és $\sum \frac{1}{2n} = \frac{1}{2}\sum \frac{1}{n} = +\infty$.
4. Ha $\sum(a_n + b_n)$ konvergens volna, akkor $\sum b_n = \sum(a_n + b_n) - \sum a_n$ is konvergens volna. Két divergens sor összege lehet konvergens ($\sum 1 + \sum(-1)$) és divergens is.
5. Teleszkopikus: az összeg $\frac{1}{2}\cdot\frac{1}{1\cdot 2} = \frac{1}{4}$.

---

# VIII. RÉSZ: VALÓS FÜGGVÉNYEK

A sorozatok után most a függvényekre térünk át. Ebben a részben még nem határértékekkel foglalkozunk, hanem a valós függvények „statikus” tulajdonságaival: hogyan adhatók meg, milyen alapvető típusaik vannak, és milyen globális tulajdonságaik (paritás, periodicitás, korlátosság, monotonitás, szélsőértékek, konvexitás) lehetnek. A rész végén a konvexitás fogalmát részletesen kidolgozzuk, mert ez később, a differenciálszámításban (79–81. szakasz), az egyik legfontosabb eszközünk lesz.

## 38. Alapfogalmak és műveletek

> **Definíció.** Az $f : X \to \mathbb{R}$ függvényt **valós értékű** függvénynek nevezzük. Ha ezen felül $X \subset \mathbb{R}$, akkor **egyváltozós valós függvényről** beszélünk.

A továbbiakban, hacsak mást nem mondunk, „függvényen” egyváltozós valós függvényt értünk.

> **Definíció (megszorítás).** Ha $f : X \to Y$ és $A \subset X$, akkor az $f$ **$A$-ra való megszorítása** (leszűkítése) az a $g : A \to Y$ függvény, amelyre minden $x \in A$-ra $g(x) = f(x)$. Jelölése $f|_A$.

A megszorítás ugyanaz a hozzárendelési szabály, csak kisebb értelmezési tartományon. A 14. szakaszban láttuk, hogy ez a tulajdonságokat lényegesen megváltoztathatja: az $x \mapsto x^2$ függvény $\mathbb{R}$-en nem injektív, de a $[0, +\infty)$-re vett megszorítása már az.

> **Definíció (őskép).** Ha $f : X \to \mathbb{R}$ és $A \subset \mathbb{R}$, akkor az $A$ halmaz **ősképe**
> $$f^{-1}(A) = \{x \in X : f(x) \in A\},$$
> azaz azon helyek halmaza, ahol a függvény $A$-beli értéket vesz fel.

**Figyelem:** az ősképhez az $f$-nek **nem kell injektívnek lennie**. Az $f^{-1}$ szimbólum itt egy *halmazra* hat, és nem az inverz függvényt jelöli (amely nem is feltétlenül létezik). Például $g(x) = x^2$ esetén
$$g^{-1}(\{4\}) = \{-2, 2\}, \qquad g^{-1}(\{4, 16\}) = \{-4, -2, 2, 4\}, \qquad g^{-1}\big((-\infty, 0)\big) = \emptyset, \qquad g^{-1}\big([0, 1]\big) = [-1, 1].$$
Az őskép-jelölés az egyenletek és egyenlőtlenségek nyelvén is olvasható: $f^{-1}(\{c\})$ az $f(x) = c$ egyenlet megoldáshalmaza, $f^{-1}\big((0, +\infty)\big)$ az $f(x) > 0$ egyenlőtlenségé.

> **Definíció (grafikon).** Az $f$ függvény **grafikonja** a
> $$\operatorname{graph}(f) = \{(x, y) \in \mathbb{R}^2 : x \in D(f),\ y = f(x)\}$$
> síkbeli ponthalmaz.

A grafikon rajzolása a függvény megértésének leghatékonyabb eszköze — de csak szemléltetésre szolgál. A grafikonról leolvasott tulajdonságokat mindig bizonyítani kell, hiszen a rajz pontatlan, és bizonyos függvényeknek (mint a Dirichlet-függvény, lásd a következő szakaszt) a grafikonja nem is rajzolható le értelmesen.

> **Definíció (műveletek függvényekkel).** Ha $f$ és $g$ valós függvények, akkor
> $$(f \pm g)(x) = f(x) \pm g(x), \qquad (f \cdot g)(x) = f(x)\cdot g(x), \qquad D(f \pm g) = D(f \cdot g) = D(f) \cap D(g),$$
> továbbá
> $$\left(\frac{f}{g}\right)(x) = \frac{f(x)}{g(x)}, \qquad D\!\left(\frac{f}{g}\right) = \big(D(f) \cap D(g)\big) \setminus g^{-1}(\{0\}).$$

A műveletek tehát **pontonként** értendők. A hányados értelmezési tartományából ki kell venni a nevező zérushelyeit, azaz a $g^{-1}(\{0\})$ halmazt — itt hasznos az őskép jelölése.

## 39. Elemi függvények

Most felsoroljuk azokat a függvényeket, amelyekkel a legtöbbet fogunk dolgozni. (A trigonometrikus, exponenciális és logaritmusfüggvények precíz bevezetése a XI. részben történik.)

**Polinomfüggvények.** A
$$p(x) = a_n x^n + a_{n-1}x^{n-1} + \dots + a_1 x + a_0, \qquad a_n \neq 0$$
alakú függvények; $n$ a polinom **foka**, $a_n$ a **főegyütthatója**. Speciális esetek:

- az **állandó függvény** $x \mapsto c$; ha $c \neq 0$, ez nulladfokú polinom, az azonosan nulla polinomnak pedig **nincs foka**;
- a **lineáris függvények** $x \mapsto ax + b$; grafikonjuk egyenes, $a$ a meredekség;
- a **hatványfüggvények** $x \mapsto x^n$.

**Racionális törtfüggvények.** Két polinom hányadosa: $R(x) = \frac{p(x)}{q(x)}$, ahol $q$ nem az azonosan nulla polinom. Értelmezési tartománya $\mathbb{R}$-ből a $q$ zérushelyeinek (véges sok pont) elhagyásával adódik. Példák: $\frac{1}{x}$, $\frac{x^2 + 5}{x^3 - 7x + 3}$.

A következő függvények „szakaszonként” vannak megadva, és a félév során fontos példák és ellenpéldák lesznek.

> **Definíció (előjelfüggvény).**
> $$\operatorname{sgn}(x) = \begin{cases} 1 & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -1 & \text{ha } x < 0. \end{cases}$$

A grafikon két nyílt félegyenesből (az $y = -1$ és az $y = 1$ magasságban) és az origóból áll. Hasznos összefüggés: $|x| = x \cdot \operatorname{sgn}(x)$.

> **Definíció (egészrész-függvény).** Ha $x \in \mathbb{R}$, akkor $[x]$ (más jelöléssel $\lfloor x \rfloor$) az az egyértelműen meghatározott egész szám, amelyre
> $$[x] \le x < [x] + 1.$$

Vagyis $[x]$ a legnagyobb olyan egész, amely nem nagyobb $x$-nél. Például $[2{,}7] = 2$, $[3] = 3$, de $[-1{,}2] = -2$, **nem** $-1$! (A negatív számoknál a „levágjuk a tizedesjegyeket” szabály hibás eredményt ad.) A létezés és egyértelműség az arkhimédészi tulajdonságból következik (9. szakasz). A grafikon **lépcsős**: minden $[k, k+1)$ intervallumon az állandó $k$ érték, a lépcsőfokok bal végpontja a grafikonhoz tartozik, jobb végpontja nem.

> **Definíció (törtrész-függvény).** $\{x\} = x - [x]$.

Az értékkészlet $[0, 1)$. Például $\{2{,}7\} = 0{,}7$, de $\{-1{,}2\} = -1{,}2 - (-2) = 0{,}8$. A grafikon **fűrészfog** alakú: minden $[k, k+1)$ intervallumon az $y = x - k$ egyenes egy szakasza, amely $0$-ból indul és $1$ felé emelkedik, de azt nem éri el.

> **Definíció (Dirichlet-függvény).**
> $$D(x) = \begin{cases} 1 & \text{ha } x \in \mathbb{Q}, \\ 0 & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}. \end{cases}$$

Mivel a racionális és az irracionális számok is mindenütt sűrűn helyezkednek el (9. szakasz), a Dirichlet-függvény minden intervallumon végtelen sokszor „ugrál” $0$ és $1$ között. A grafikonját nem lehet lerajzolni: két, „pontokkal teleszórt” vízszintes egyenesből áll. Ez a függvény lesz a standard ellenpéldánk: látni fogjuk, hogy sehol sem folytonos, és egyetlen pontban sincs határértéke.

## 40. Globális tulajdonságok

> **Definíció (paritás).** Legyen $f$ olyan függvény, amelynek értelmezési tartománya szimmetrikus a $0$-ra ($x \in D(f) \iff -x \in D(f)$). Az $f$
>
> - **páros**, ha minden $x \in D(f)$-re $f(-x) = f(x)$;
> - **páratlan**, ha minden $x \in D(f)$-re $f(-x) = -f(x)$.

**Szemléletesen:** a páros függvény grafikonja az $y$ tengelyre, a páratlané az origóra szimmetrikus.

**Példák.** $x^2$, $x^4$, $|x|$ és az állandó függvények párosak; $x$, $x^3$, $\frac{1}{x}$, $\operatorname{sgn}(x)$ páratlanok. Az azonosan nulla függvény egyszerre páros és páratlan (és ez az egyetlen ilyen). A legtöbb függvény se nem páros, se nem páratlan, például $x + 1$ vagy $[x]$. Az elnevezés a hatványfüggvényekből ered: $x^n$ páros $n$-re páros, páratlan $n$-re páratlan.

Hasznos szabályok: két páros vagy két páratlan függvény szorzata páros, egy páros és egy páratlan függvény szorzata páratlan (ugyanúgy, mint a $(-1)^k$ hatványoknál). Továbbá minden szimmetrikus értelmezési tartományú függvény egyértelműen felbontható egy páros és egy páratlan függvény összegére (lásd az 1. feladatot).

> **Definíció (periodicitás).** Az $f$ függvény **periodikus** a $p \neq 0$ **periódussal**, ha $x \in D(f) \iff x + p \in D(f)$, és minden $x \in D(f)$-re
> $$f(x + p) = f(x).$$

Ha $p$ periódus, akkor $-p$, $2p$, $3p, \dots$ is az. A legkisebb pozitív periódust (ha létezik) **alapperiódusnak** nevezzük. Példák: a $\{x\}$ törtrész-függvény $1$ szerint periodikus, hiszen $[x + 1] = [x] + 1$, és így $\{x + 1\} = \{x\}$. A $\sin$ és $\cos$ alapperiódusa $2\pi$ (58. szakasz). A Dirichlet-függvénynek minden pozitív racionális szám periódusa (racionális számot hozzáadva racionálisból racionális, irracionálisból irracionális lesz), így alapperiódusa nincs.

> **Definíció (korlátosság halmazon).** Az $f$ függvény **korlátos** (alulról, illetve felülről korlátos) az $A \subset D(f)$ halmazon, ha az $f(A)$ képhalmaz ilyen.

**Példa.** $f(x) = \frac{1}{x}$ korlátos az $[1, +\infty)$ halmazon (ott $0 < f(x) \le 1$), de nem korlátos a $(0, 1)$ halmazon (ott tetszőlegesen nagy értékeket vesz fel, hiszen $f\left(\frac{1}{n}\right) = n$).

> **Definíció (monotonitás).** Az $f$ függvény az $A \subset D(f)$ halmazon
>
> - **monoton növekedő**, ha minden $x, y \in A$, $x < y$ esetén $f(x) \le f(y)$;
> - **monoton csökkenő**, ha minden $x, y \in A$, $x < y$ esetén $f(x) \ge f(y)$;
> - **szigorúan monoton növekedő** (csökkenő), ha $x < y$ esetén $f(x) < f(y)$ (illetve $f(x) > f(y)$).

Szigorúan monoton függvény **injektív**, hiszen $x \neq y$ esetén vagy $x < y$, vagy $y < x$, és mindkét esetben $f(x) \neq f(y)$. Ezért a szigorúan monoton függvényeknek van inverzük (az értékkészletükön), és ez az inverz is szigorúan monoton, ugyanolyan irányban. Ezt a tényt az 55. és a XI. részben, az inverz függvények (gyökök, logaritmus, arkuszfüggvények) bevezetésénél fogjuk kihasználni.

**Figyelem:** a monotonitás egy halmazra vonatkozik. Az $\frac{1}{x}$ függvény szigorúan monoton csökkenő a $(-\infty, 0)$ intervallumon és a $(0, +\infty)$ intervallumon is, de **nem** monoton csökkenő az $\mathbb{R} \setminus \{0\}$ halmazon, hiszen $-1 < 1$, mégis $\frac{1}{-1} < \frac{1}{1}$.

> **Definíció (abszolút szélsőérték).** Az $a \in A \subset D(f)$ hely az $f$-nek az $A$-ra vonatkozó **(abszolút) maximumhelye**, ha minden $x \in A$-ra $f(x) \le f(a)$; **minimumhelye**, ha minden $x \in A$-ra $f(x) \ge f(a)$. Az $f(a)$ érték a **maximum**, illetve **minimum**. Ha $x \neq a$ esetén szigorú egyenlőtlenség áll, akkor **szigorú** maximum-, illetve minimumhelyről beszélünk.

Egy függvénynek nem feltétlenül van maximuma, még akkor sem, ha korlátos: az $f(x) = x$ függvénynek a $(0, 1)$ intervallumon nincs maximuma (a felvett értékek szuprémuma $1$, de ezt nem veszi fel). Az 54. szakasz Weierstrass-tétele megmondja, mikor garantált a szélsőérték létezése.

## 41. Egy lokális tulajdonság

Az előző szakasz tulajdonságai **globálisak**: egy egész halmazon nézik a függvényt. Az analízisben legalább ilyen fontosak a **lokális** tulajdonságok, amelyek csak egy pont tetszőlegesen kis környezetében vizsgálják a függvényt.

> **Definíció (lokális szélsőérték).** Az $a$ hely az $f$ **lokális maximumhelye**, ha van olyan $\delta > 0$, hogy $B(a, \delta) \subset D(f)$, és minden $x \in B(a, \delta)$-ra $f(x) \le f(a)$. Hasonlóan definiáljuk a **lokális minimumhelyet**, valamint a **szigorú** lokális maximum- és minimumhelyet ($x \neq a$ esetén szigorú egyenlőtlenséggel).

Vagyis a lokális maximumhelyen a függvényérték egy kis környezetben a legnagyobb — de lehet, hogy messzebb van nagyobb érték is.

**Példák.**

- $f(x) = x^2$: a $0$ szigorú lokális (sőt abszolút) minimumhely.
- $f(x) = x^3 - 3x$: a $-1$ lokális maximumhely ($f(-1) = 2$), az $1$ lokális minimumhely ($f(1) = -2$), de egyik sem abszolút, hiszen a függvény $+\infty$ és $-\infty$ felé is minden határon túl nő, illetve csökken. (Ezt a 73. szakasz eszközeivel könnyen igazolhatjuk.)
- Az állandó függvénynek minden pont lokális maximum- és minimumhelye is (de nem szigorú).
- $f(x) = x$ a $[0, 1]$ intervallumon: az $1$ abszolút maximumhely, de **nem** lokális maximumhely a fenti definíció szerint, mert az $1$-nek nincs olyan teljes környezete, amely $D(f)$-ben volna. Ez nem pedantéria: a 73. szakaszban látni fogjuk, hogy lokális szélsőértékhelyen (ha a függvény ott differenciálható) a derivált nulla — itt pedig a derivált $1$. A végpontokat tehát mindig külön kell vizsgálni.

## 42. Konvexitás

Tekintsük az $x^2$, a $\sqrt{x}$ és az $x$ függvényeket a $(0, +\infty)$ intervallumon. Mindhárom szigorúan monoton növekedő, a grafikonjuk mégis lényegesen különbözik: az $x^2$ grafikonja „felfelé hajlik”, a $\sqrt{x}$-é „lefelé hajlik”, az $x$-é egyenes. A monotonitás ezt a különbséget nem látja; egy új fogalomra van szükség, amely a **görbületet** írja le.

**Az ötlet: húrok.** Kössük össze a grafikon két pontját egy **húrral** (szakasszal).

- Az $x^2$ esetében a grafikon a két pont között mindig a **húr alatt** halad.
- A $\sqrt{x}$ esetében a grafikon mindig a **húr fölött** halad.
- Az $x^3$ függvénynél ($\mathbb{R}$-en) mindkettő előfordul: ha mindkét pont pozitív, a grafikon a húr alatt van, ha mindkettő negatív, fölötte; ha az egyik negatív, a másik pozitív, a húr **átmetszheti** a grafikont.

Formalizáljuk. Az $(a, f(a))$ és $(b, f(b))$ pontokon átmenő egyenes (húr) egyenlete
$$h_{a,b}(x) = f(a) + \frac{f(b) - f(a)}{b - a}(x - a).$$
Ez egy lineáris függvény, amelyre $h_{a,b}(a) = f(a)$ és $h_{a,b}(b) = f(b)$; a $\frac{f(b) - f(a)}{b - a}$ hányados a húr **meredeksége**.

> **Definíció (konvexitás).** Az $f$ függvény **konvex** az $I$ intervallumon, ha bármely $a, b \in I$, $a < b$ esetén a grafikon az $[a, b]$ intervallum fölött a húr alatt (vagy rajta) halad:
> $$f(x) \le f(a) + \frac{f(b) - f(a)}{b - a}(x - a) = h_{a,b}(x) \qquad \text{minden } x \in [a, b]\text{-re}.$$
> Az $f$ **konkáv**, ha itt $\le$ helyett $\ge$ áll (a grafikon a húr fölött halad). Az $f$ **szigorúan konvex**, illetve **szigorúan konkáv**, ha $a < x < b$ esetén szigorú egyenlőtlenség áll.

**Szóhasználat.** A konvex függvényt néha „felülről nézve homorúnak”, a konkávat „domborúnak” mondják; a magyar szakirodalom ebben nem egységes, ezért mi a konvex/konkáv szavakat használjuk. Emlékeztető: a konvex függvény grafikonja olyan, mint egy **mosolygó száj** (vagy egy edény, amely megtartja a vizet), a konkávé olyan, mint egy **szomorú száj**.

A húr egyenlete a $b$ ponttól is felírható: $h_{a,b}(x) = f(b) + \frac{f(b) - f(a)}{b - a}(x - b)$ — ez ugyanaz az egyenes, és a bizonyításokban mindkét alakot használni fogjuk.

**Példák.**

- A lineáris függvény ($f(x) = mx + c$) konvex és konkáv is, hiszen a grafikonja maga a húr. (Ezek az egyetlen ilyen függvények.)
- Az $f(x) = x^2$ szigorúan konvex $\mathbb{R}$-en. Ezt a 44. szakaszban egy kényelmes jellemzéssel fogjuk igazolni; a definícióból is látható: $a < x < b$ esetén
$$h_{a,b}(x) - x^2 = a^2 + (a + b)(x - a) - x^2 = (x - a)(a + b) - (x - a)(x + a) = (x - a)(b - x) > 0.$$

> **Állítás.** Ha $f$ konvex, akkor $-f$ konkáv (és fordítva).

*Bizonyítás.* Az $-f$ húrja $-h_{a,b}$, és az $f(x) \le h_{a,b}(x)$ egyenlőtlenséget $(-1)$-gyel szorozva $-f(x) \ge -h_{a,b}(x)$. $\blacksquare$

Ez a megfigyelés végig érvényes: minden konvexitásra vonatkozó tételnek van konkáv párja, amely $-f$-re alkalmazva adódik. Ezért a továbbiakban rendszerint csak a konvex esetet bizonyítjuk.

## 43. A Jensen-egyenlőtlenség

A konvexitás definíciója kényelmesebb alakba írható, ha az $[a, b]$ intervallum pontjait „súlyozott átlagként” írjuk fel.

**Az $[x, y]$ intervallum pontjai.** Legyen $x < y$, és $p, q > 0$, $p + q = 1$. Ekkor
$$x = px + qx < px + qy < py + qy = y,$$
tehát a $px + qy$ szám az $[x, y]$ intervallum egy belső pontja. Sőt, minden belső pont előáll így: ha $x < z < y$, akkor a
$$p = \frac{y - z}{y - x}, \qquad q = \frac{z - x}{y - x}$$
súlyok pozitívak, összegük $1$, és
$$px + qy = \frac{(y - z)x + (z - x)y}{y - x} = \frac{yx - zx + zy - xy}{y - x} = \frac{z(y - x)}{y - x} = z.$$
A $px + qy$ tehát az $x$ és $y$ **súlyozott átlaga**: ha $p$ nagy, közel van $x$-hez, ha $q$ nagy, közel van $y$-hoz; $p = q = \frac{1}{2}$-re a felezőpont. A $z$ pont pontosan $q : p$ arányban osztja az $[x, y]$ szakaszt, hiszen $z - x = q(y - x)$ és $y - z = p(y - x)$.

> **Tétel (Jensen-egyenlőtlenség).** Az $I$ intervallumon értelmezett $f$ függvény akkor és csak akkor konvex $I$-n, ha minden $x, y \in I$ és minden $p, q > 0$, $p + q = 1$ esetén
> $$f(px + qy) \le p\,f(x) + q\,f(y).$$
> (Szigorú konvexitás esetén $x \neq y$-ra szigorú egyenlőtlenség áll. Sok könyv $p = t$, $q = 1 - t$ jelöléssel írja: $f(tx + (1-t)y) \le tf(x) + (1-t)f(y)$, $t \in (0,1)$.)

**Szavakban:** a súlyozott átlag helyén felvett függvényérték legfeljebb akkora, mint a függvényértékek ugyanolyan súlyozású átlaga. Geometriailag: a grafikon $px + qy$ pontja alatt (vagy rajta) van a húr megfelelő pontja, amelynek magassága éppen $pf(x) + qf(y)$.

*Bizonyítás.*

**($\Rightarrow$)** Legyen $f$ konvex. Ha $x = y$, egyenlőség áll. Legyen $x < y$ (az $x > y$ eset a szerepek cseréjével adódik), és alkalmazzuk a konvexitás definícióját az $[x, y]$ intervallum $z = px + qy$ pontjában. Mivel $z - x = q(y - x)$:
$$f(px + qy) \le f(x) + \frac{f(y) - f(x)}{y - x}\cdot q(y - x) = f(x) + q\big(f(y) - f(x)\big) = (1 - q)f(x) + qf(y) = pf(x) + qf(y).$$

**($\Leftarrow$)** Tegyük fel, hogy a Jensen-egyenlőtlenség teljesül, és legyen $a < z < b$ az $I$ pontjai. A fenti számolás szerint $z = pa + qb$ a $p = \frac{b - z}{b - a}$, $q = \frac{z - a}{b - a}$ súlyokkal. A feltevés szerint
$$f(z) \le pf(a) + qf(b) = f(a) + q\big(f(b) - f(a)\big) = f(a) + \frac{f(b) - f(a)}{b - a}(z - a),$$
ami éppen a konvexitás definíciója. $\blacksquare$

A Jensen-egyenlőtlenség igazi ereje abban áll, hogy **tetszőleges számú** pontra általánosítható.

> **Tétel (Jensen-egyenlőtlenség több tagra).** Az $I$ intervallumon értelmezett $f$ akkor és csak akkor konvex, ha minden $x_1, \dots, x_n \in I$ és minden $p_1, \dots, p_n > 0$, $p_1 + \dots + p_n = 1$ esetén
> $$f(p_1x_1 + \dots + p_nx_n) \le p_1f(x_1) + \dots + p_nf(x_n).$$

*Bizonyítás.* Az „akkor” irány az $n = 2$ eset. A „csak akkor” irányt $n$ szerinti teljes indukcióval igazoljuk; $n = 1$ triviális, $n = 2$ az előző tétel. Tegyük fel, hogy az állítás igaz $n$ pontra, és legyen $x_1, \dots, x_{n+1} \in I$, $p_1 + \dots + p_{n+1} = 1$. Legyen $P = p_1 + \dots + p_n = 1 - p_{n+1} > 0$, és
$$y = \frac{p_1}{P}x_1 + \dots + \frac{p_n}{P}x_n.$$
Az $\frac{p_k}{P}$ súlyok pozitívak és összegük $1$, tehát $y$ az $x_1, \dots, x_n$ egy súlyozott átlaga, így $y \in I$ (a legkisebb és legnagyobb $x_k$ közé esik). Ekkor
$$p_1x_1 + \dots + p_{n+1}x_{n+1} = Py + p_{n+1}x_{n+1},$$
és $P + p_{n+1} = 1$. A kéttagú Jensen-egyenlőtlenséget, majd az indukciós feltevést alkalmazva:
$$f(Py + p_{n+1}x_{n+1}) \le Pf(y) + p_{n+1}f(x_{n+1}) \le P\sum_{k=1}^{n}\frac{p_k}{P}f(x_k) + p_{n+1}f(x_{n+1}) = \sum_{k=1}^{n+1}p_kf(x_k). \qquad \blacksquare$$

A súlyokat egyenlőnek választva ($p_k = \frac{1}{n}$) a gyakran használt alakot kapjuk:
$$f\!\left(\frac{x_1 + \dots + x_n}{n}\right) \le \frac{f(x_1) + \dots + f(x_n)}{n}.$$
„Konvex függvényre az átlag képe legfeljebb akkora, mint a képek átlaga.” A 80. szakaszban ebből vezetjük le — a logaritmusfüggvény konkávitását felhasználva — a számtani–mértani egyenlőtlenség egy új bizonyítását, valamint a Young- és a Hölder-egyenlőtlenséget.

> **Definíció (gyenge konvexitás).** Ha a Jensen-egyenlőtlenség a $p = q = \frac{1}{2}$ súlyokra teljesül,
> $$f\!\left(\frac{x + y}{2}\right) \le \frac{f(x) + f(y)}{2} \qquad \text{minden } x, y \in I\text{-re},$$
> akkor $f$-et **gyengén konvexnek** (felezőpontban konvexnek) nevezzük.

Nyilvánvalóan konvex $\implies$ gyengén konvex. A megfordítás **nem** igaz, de az ellenpélda konstrukciója nem egyszerű: a $\mathbb{R}$ mint $\mathbb{Q}$ feletti vektortér úgynevezett Hamel-bázisán alapul, és a kapott függvény „vadul” viselkedik. Az 57. szakaszban látni fogjuk, hogy **folytonos** gyengén konvex függvény már konvex — a patológiát tehát a folytonosság hiánya okozza.

## 44. Konvexitás és a differenciahányados

A következő jellemzés az egész konvexitás-elmélet motorja: a konvexitást a **húrok meredekségének** monotonitására vezeti vissza. Ebből fogjuk levezetni a konvex függvények folytonosságát (57. szakasz) és a deriválttal való kapcsolatukat (79. szakasz).

Először egy szemléletes lemma, amelyet „három húr lemmának” is neveznek.

> **Lemma (három húr).** Legyen $f$ konvex az $I$ intervallumon, és $a < x < b$ az $I$ pontjai. Ekkor
> $$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(a)}{b - a} \le \frac{f(b) - f(x)}{b - x}.$$

Szavakban: a grafikon három pontja által meghatározott három húr közül a bal oldali a legkevésbé meredek, a jobb oldali a legmeredekebb, a „hosszú” húr pedig a kettő között van.

*Bizonyítás.* Jelölje $s = \frac{f(b) - f(a)}{b - a}$ a hosszú húr meredekségét. A konvexitás szerint
$$f(x) \le f(a) + s(x - a).$$
Ebből $f(a)$-t kivonva és a pozitív $x - a$-val osztva az első egyenlőtlenséget kapjuk. A húr egyenletét a $b$ pontból felírva:
$$f(x) \le f(b) + s(x - b) \implies f(b) - f(x) \ge s(b - x),$$
és a pozitív $b - x$-szel osztva a második egyenlőtlenséget kapjuk. $\blacksquare$

> **Tétel.** Az $f$ akkor és csak akkor konvex az $I$ intervallumon, ha minden $a \in I$-re az
> $$m_a(x) = \frac{f(x) - f(a)}{x - a}$$
> függvény (a rögzített $a$ pontból induló húrok meredeksége) monoton növekedő az $I \setminus \{a\}$ halmazon.

**Szemléletesen:** rögzítsünk egy pontot a grafikonon, és forgassunk körülötte egy szelőt úgy, hogy a másik metszéspont balról jobbra végigvándorol a grafikonon. A konvexitás azt jelenti, hogy közben a szelő meredeksége soha nem csökken.

*Bizonyítás.*

**($\Rightarrow$)** Legyen $f$ konvex, $a \in I$, és $x < y$ az $I \setminus \{a\}$ pontjai. Azt kell megmutatnunk, hogy $m_a(x) \le m_a(y)$. Az $a$ helyzete szerint három eset van; mindegyikben a három húr lemmát alkalmazzuk három, növekvő sorrendbe rendezett pontra.

- **$a < x < y$:** a lemma első egyenlőtlensége (az $a < x < y$ pontokra) szerint $m_a(x) \le m_a(y)$.
- **$x < y < a$:** a lemma (az $x < y < a$ pontokra) második és harmadik tagját összehasonlítva $\frac{f(a) - f(x)}{a - x} \le \frac{f(a) - f(y)}{a - y}$; ez éppen $m_a(x) \le m_a(y)$, hiszen $m_a(x) = \frac{f(x) - f(a)}{x - a} = \frac{f(a) - f(x)}{a - x}$.
- **$x < a < y$:** a lemma (az $x < a < y$ pontokra) első és harmadik tagja szerint $\frac{f(a) - f(x)}{a - x} \le \frac{f(y) - f(a)}{y - a}$, azaz $m_a(x) \le m_a(y)$.

**($\Leftarrow$)** Ha minden $a$-ra $m_a$ monoton növekedő, akkor $a < x < b$ esetén $m_a(x) \le m_a(b)$, azaz
$$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(a)}{b - a}.$$
A pozitív $x - a$-val szorozva és $f(a)$-t hozzáadva éppen a konvexitás definícióját kapjuk. $\blacksquare$

Szigorú konvexitás esetén ugyanígy: $f$ pontosan akkor szigorúan konvex, ha minden $m_a$ szigorúan monoton növekedő.

**Példák.**

- $f(x) = x^2$: $m_a(x) = \frac{x^2 - a^2}{x - a} = x + a$, ami szigorúan monoton növekedő; tehát $x^2$ szigorúan konvex $\mathbb{R}$-en.
- $f(x) = \frac{1}{x}$ a $(0, +\infty)$-en: $m_a(x) = \frac{\frac{1}{x} - \frac{1}{a}}{x - a} = \frac{a - x}{ax(x - a)} = -\frac{1}{ax}$, ami rögzített $a > 0$ mellett szigorúan monoton növekedő $x$-ben. Tehát $\frac{1}{x}$ szigorúan konvex a $(0, +\infty)$-en.
- $f(x) = x^3$: $m_a(x) = x^2 + ax + a^2$, amely például $a = 0$-ra az $x^2$, és ez nem monoton $\mathbb{R}$-en. Tehát $x^3$ nem konvex $\mathbb{R}$-en. (A $[0, +\infty)$-en viszont konvex, a $(-\infty, 0]$-n konkáv.)

**Alkalmazás: a négyzetes közép.** Alkalmazzuk a Jensen-egyenlőtlenséget az $f(x) = x^2$ konvex függvényre, egyenlő súlyokkal: tetszőleges $a_1, \dots, a_n$ valós számokra
$$\left(\frac{a_1 + \dots + a_n}{n}\right)^2 \le \frac{a_1^2 + \dots + a_n^2}{n}.$$
Gyököt vonva (és felhasználva, hogy $t \le |t| = \sqrt{t^2}$):
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}.$$
A jobb oldalon álló mennyiség a számok **négyzetes közepe**. A II. rész közepei így egy négyes lánccá bővülnek: pozitív számokra
$$h \le m \le S \le Q,$$
ahol $Q$ a négyzetes közép. (A fizikában a négyzetes közép az „effektív érték”, például a váltakozó áram effektív feszültsége.)

---

## A VIII. rész összefoglalása

- Az őskép, $f^{-1}(A)$, injektivitás nélkül is értelmes; a függvényműveletek pontonként értendők.
- Fontos példák: polinomok, racionális törtfüggvények, $\operatorname{sgn}$, $[x]$, $\{x\}$, Dirichlet-függvény.
- Globális tulajdonságok: paritás, periodicitás, korlátosság, monotonitás, abszolút szélsőérték. Lokális szélsőérték: egy (teljes) környezetben vett szélsőérték.
- $f$ konvex, ha a grafikon a húrok alatt halad. Ekvivalens: a Jensen-egyenlőtlenség, $f(px + qy) \le pf(x) + qf(y)$; és az, hogy a rögzített pontból induló húrok meredeksége monoton növekedő.
- A Jensen-egyenlőtlenség tetszőleges sok pontra érvényes; az $x^2$-re alkalmazva a számtani és a négyzetes közép közötti egyenlőtlenséget adja.

## Feladatok a VIII. részhez

1. Legyen $f$ szimmetrikus értelmezési tartományú. Bizonyítsuk be, hogy $g(x) = \frac{f(x) + f(-x)}{2}$ páros, $h(x) = \frac{f(x) - f(-x)}{2}$ páratlan, és $f = g + h$. Bontsuk fel így az $f(x) = x^2 + x + 1$ függvényt.
2. Rajzoljuk fel (vázlatosan) a következő függvények grafikonját: a) $[2x]$; b) $\{-x\}$; c) $x - |x|$; d) $\operatorname{sgn}(x^2 - 1)$.
3. Bizonyítsuk be, hogy $|x|$ konvex $\mathbb{R}$-en.
4. Bizonyítsuk be, hogy két konvex függvény összege és maximuma is konvex. Igaz-e ez a szorzatra?
5. Alkalmazzuk a Jensen-egyenlőtlenséget a $(0, +\infty)$-en konvex $\frac{1}{x}$ függvényre, és vezessük le belőle a harmonikus és a számtani közép közötti egyenlőtlenséget.
6. Mutassuk meg, hogy ha $f$ konvex és monoton növekedő, $g$ konvex, akkor $f \circ g$ konvex (feltéve, hogy a kompozíció értelmes).

### Megoldási útmutatók

1. $g(-x) = g(x)$ és $h(-x) = -h(x)$ közvetlenül látszik. $x^2 + x + 1 = (x^2 + 1) + x$.
2. a) Lépcső, $\frac{1}{2}$ szélességű lépcsőfokokkal. b) $\{-x\} = 1 - \{x\}$, ha $x \notin \mathbb{Z}$, és $0$, ha $x \in \mathbb{Z}$: tükrözött fűrészfog. c) $0$, ha $x \ge 0$, és $2x$, ha $x < 0$. d) $1$, ha $|x| > 1$; $0$, ha $|x| = 1$; $-1$, ha $|x| < 1$.
3. A háromszög-egyenlőtlenség szerint $|px + qy| \le p|x| + q|y|$, ami a Jensen-egyenlőtlenség.
4. Összeg: a két Jensen-egyenlőtlenség összeadásával. Maximum: $\max(f, g)(px + qy) \le \max\big(pf(x) + qf(y),\ pg(x) + qg(y)\big) \le p\max(f,g)(x) + q\max(f,g)(y)$. Szorzatra nem: $x$ és $x^2$ konvex $\mathbb{R}$-en, de $x^3$ nem.
5. $\frac{1}{\frac{x_1 + \dots + x_n}{n}} \le \frac{\frac{1}{x_1} + \dots + \frac{1}{x_n}}{n}$, és mindkét oldal reciprokát véve $\frac{n}{\frac{1}{x_1} + \dots + \frac{1}{x_n}} \le \frac{x_1 + \dots + x_n}{n}$, azaz $h \le S$.
6. $f(g(px + qy)) \le f(pg(x) + qg(y)) \le pf(g(x)) + qf(g(y))$; az első lépésben $g$ konvexitását és $f$ monotonitását, a másodikban $f$ konvexitását használtuk.

---

# IX. RÉSZ: FÜGGVÉNYEK HATÁRÉRTÉKE

A sorozatoknál azt vizsgáltuk, mi történik, ha az index „a végtelenbe tart”. Függvényeknél a kérdés általánosabb: mi történik a függvényértékekkel, ha a változó **egy adott ponthoz közeledik**? Ez az a kérdés, amely az 1. szakaszban a pillanatnyi sebesség problémájánál felmerült: hogyan viselkedik az átlagsebesség, ha az időintervallum hossza nullához tart — anélkül, hogy a nullát valaha is behelyettesítenénk?

A függvény határértékének definíciója a sorozatéhoz hasonló, de egy döntő ponton más: a „küszöbindex” szerepét egy „sugár” veszi át, amely megmondja, milyen közel kell lennie a változónak a vizsgált ponthoz. Ez az **$\varepsilon$–$\delta$ definíció**, Cauchy és Weierstrass öröksége.

## 45. Motiváció és a pontozott környezet

**1. példa: a pillanatnyi sebesség.** Legyen $s(t) = t^2$ az út–idő függvény, és kérdezzük a $t_0$ időpontbeli pillanatnyi sebességet. Az átlagsebesség a $[t_0, t]$ (vagy $[t, t_0]$) intervallumon
$$f(t) = \frac{s(t) - s(t_0)}{t - t_0} = \frac{t^2 - t_0^2}{t - t_0}, \qquad t \neq t_0.$$
Ez a függvény a $t_0$ pontban **nincs értelmezve** (a nevező nulla volna). Minden más pontban viszont
$$f(t) = \frac{(t - t_0)(t + t_0)}{t - t_0} = t + t_0,$$
tehát ha $t$ közel van $t_0$-hoz, akkor $f(t)$ közel van $2t_0$-hoz. A pillanatnyi sebesség $2t_0$ — ezt szeretnénk precízen kimondani, anélkül hogy $f(t_0)$-ra hivatkoznánk, hiszen az nem létezik.

**2. példa: egy „rossz” függvényérték.** Legyen $f(x) = (\operatorname{sgn} x)^2$, azaz $f(0) = 0$ és $f(x) = 1$, ha $x \neq 0$. A $0$ közelében (de nem a $0$-ban) minden érték $1$. Azt szeretnénk mondani, hogy „$f$ a $0$-ban $1$-hez tart”, noha a $0$-ban felvett értéke $0$. A határérték tehát nem azonos a függvényértékkel.

**3. példa: nincs határérték.** Legyen $f(x) = \{x\}$ (törtrész). A $0$-hoz balról közeledve (azaz negatív $x$-ekkel, mint $-0{,}1$, $-0{,}01$, $-0{,}001$) az értékek $0{,}9$, $0{,}99$, $0{,}999$, tehát $1$-hez közelednek; jobbról közeledve ($0{,}1$, $0{,}01, \dots$) az értékek $0$-hoz közelednek. Nincs olyan szám, amelyhez „minden irányból” közelednének.

A három példa tanulsága: **a határérték azt írja le, hogyan viselkedik a függvény a pont közelében, függetlenül attól, hogy mi történik magában a pontban** — sőt akkor is, ha ott nincs is értelmezve. Ezért a definícióban a pontot ki kell hagyni a környezetből.

> **Definíció (pontozott környezet).** Az $a \in \mathbb{R}$ pont **pontozott (lyukas) $\delta$ sugarú környezete**
> $$\dot{B}(a, \delta) = B(a, \delta) \setminus \{a\} = (a - \delta, a) \cup (a, a + \delta).$$

Az $x \in \dot{B}(a, \delta)$ feltétel egyenlőtlenséggel: $0 < |x - a| < \delta$. A „$0 <$” rész fejezi ki, hogy $x \neq a$.

## 46. A határérték definíciója

> **Definíció.** Az $f$ függvénynek az $a \in \mathbb{R}$ helyen vett **határértéke** a $b \in \mathbb{R}$ szám, ha
>
> - **(I)** van olyan $\delta_0 > 0$, hogy $\dot{B}(a, \delta_0) \subset D(f)$, és
> - **(II)** minden $\varepsilon > 0$-hoz van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$ esetén
> $$|f(x) - b| < \varepsilon.$$
>
> Jelölése: $\displaystyle \lim_{x \to a} f(x) = b$, vagy $f(x) \to b$, ha $x \to a$.

Kvantorokkal a (II) feltétel:
$$\forall \varepsilon > 0\ \ \exists \delta > 0\ \ \forall x : \ 0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon.$$

**A feltételek szerepe.**

- Az **(I)** feltétel azt biztosítja, hogy a kérdés egyáltalán értelmes: a függvénynek értelmezve kell lennie az $a$ körül (legalábbis egy pontozott környezetben). Az $a$-ban magában nem kell értelmezve lennie.
- A **(II)** a lényeg: akármilyen kicsi $\varepsilon$ tűrést írnak elő a függvényértékekre, meg tudjuk mondani, mennyire kell $x$-nek $a$-hoz közel lennie ($\delta$), hogy a tűrés teljesüljön.

**Összevetés a sorozatokkal.** A sorozatoknál a „késői” indexeket az $n \ge n_0$ feltétel írta le, itt az „$a$-hoz közeli” helyeket a $0 < |x - a| < \delta$ feltétel. A játék ugyanaz: a kételkedő megad egy $\varepsilon$-t, a bizonyító válaszol egy $\delta$-val. A $\delta$ függhet $\varepsilon$-tól (néha $\delta_\varepsilon$-t írunk), és **nem egyértelmű**: ha egy $\delta$ jó, akkor minden nála kisebb pozitív szám is jó.

**Szemléletes jelentés.** Rajzoljunk a $b$ magasságban egy vízszintes sávot $b - \varepsilon$ és $b + \varepsilon$ között. A definíció azt mondja: bármilyen keskeny is ez a sáv, tudunk az $a$ körül olyan keskeny függőleges sávot ($a - \delta$ és $a + \delta$ között) kijelölni, hogy a grafikon ezen belül — magát az $x = a$ függőleges egyenest leszámítva — teljes egészében a vízszintes sávban fut.

### Kidolgozott példák

**1. példa: $\lim_{x \to 5} x = 5$.** Itt $|f(x) - 5| = |x - 5|$, tehát adott $\varepsilon$-hoz $\delta = \varepsilon$ jó: ha $0 < |x - 5| < \varepsilon$, akkor $|f(x) - 5| < \varepsilon$. Ugyanígy $\lim_{x \to a} x = a$ minden $a$-ra, és $\lim_{x\to a} c = c$ az állandó függvényre (itt bármely $\delta$ jó).

**2. példa: $\lim_{x \to 1} \frac{x^2 - 1}{x - 1} = 2$.** A függvény az $1$-ben nincs értelmezve, de minden más pontban $\frac{x^2 - 1}{x - 1} = x + 1$. Ezért ha $x \neq 1$, akkor $|f(x) - 2| = |x + 1 - 2| = |x - 1|$, és $\delta = \varepsilon$ jó. Ez a példa mutatja, miért kell a pontozott környezet: a határérték kiszámításához éppen azt használtuk ki, hogy $x \neq 1$, és így egyszerűsíthettünk $x - 1$-gyel.

**3. példa: $\lim_{x \to 2} x^3 = 8$.** Itt már becslés kell. Szorzattá alakítva
$$|x^3 - 8| = |x - 2|\cdot|x^2 + 2x + 4|.$$
Az első tényező kicsi, ha $x$ közel van $2$-höz; a második tényezőt **korlátoznunk** kell. Szűkítsük le a vizsgálatot a $|x - 2| < 1$ esetre: ekkor $1 < x < 3$, tehát $x^2 < 9$ és $2x < 6$, így
$$|x^2 + 2x + 4| < 9 + 6 + 4 = 19.$$
Ezért $|x - 2| < 1$ esetén $|x^3 - 8| < 19|x - 2|$. Ezt akkor tudjuk $\varepsilon$ alá szorítani, ha $|x - 2| < \frac{\varepsilon}{19}$. Legyen tehát
$$\delta = \min\left\{1,\ \frac{\varepsilon}{19}\right\}.$$
Ha $0 < |x - 2| < \delta$, akkor egyrészt $|x - 2| < 1$, így érvényes a becslés, másrészt $|x - 2| < \frac{\varepsilon}{19}$, így
$$|x^3 - 8| < 19 \cdot \frac{\varepsilon}{19} = \varepsilon. \qquad \blacksquare$$

**A minimum-trükk** tipikus: a $\delta$ egyik komponense ($1$) a becslés érvényességét biztosítja, a másik ($\frac{\varepsilon}{19}$) a kívánt pontosságot. Később a műveleti szabályok (51. szakasz) és a folytonosság (53. szakasz) segítségével az ilyen határértékeket sokkal gyorsabban kiszámoljuk majd; de érdemes legalább egyszer a definícióból is végigcsinálni.

**4. példa: $\lim_{x \to 4} \sqrt{x} = 2$.** A „gyöktelenítés” fogásával:
$$|\sqrt{x} - 2| = \frac{|(\sqrt{x} - 2)(\sqrt{x} + 2)|}{\sqrt{x} + 2} = \frac{|x - 4|}{\sqrt{x} + 2} \le \frac{|x - 4|}{2}.$$
Tehát $\delta = \min\{4, 2\varepsilon\}$ jó (a $4$ azért kell, hogy $x \ge 0$ legyen, és a gyök értelmes).

**5. példa: $\lim_{x \to 0}\operatorname{sgn}(x)$ nem létezik.** Tegyük fel, hogy a határérték $b$. Az $\varepsilon = 1$-hez van olyan $\delta$, hogy $0 < |x| < \delta$ esetén $|\operatorname{sgn}(x) - b| < 1$. Az $x = \frac{\delta}{2}$ helyen ebből $|1 - b| < 1$, az $x = -\frac{\delta}{2}$ helyen $|-1 - b| < 1$ adódik. A háromszög-egyenlőtlenség szerint ekkor $2 = |1 - (-1)| \le |1 - b| + |b - (-1)| < 2$, ellentmondás.

**További példák (ellenőrizzük!):**
$$\lim_{x \to 0}(\operatorname{sgn} x)^2 = 1, \qquad \lim_{x \to 0}\{x\} \text{ nem létezik}, \qquad \lim_{x \to 1/2}\{x\} = \frac{1}{2}.$$

## 47. Féloldali határértékek és az egységes séma

A $\operatorname{sgn}$ függvény a $0$-ban jobbról az $1$-hez, balról a $-1$-hez „tart”. Az ilyen viselkedés leírására szolgálnak a féloldali határértékek: ezekben a pontnak csak az egyik oldalát vizsgáljuk.

> **Definíció (jobb oldali határérték).** Az $f$ függvénynek az $a$ helyen vett **jobb oldali határértéke** a $b \in \mathbb{R}$ szám, ha
>
> - **(I)** van olyan $\delta_0 > 0$, hogy $(a, a + \delta_0) \subset D(f)$, és
> - **(II)** minden $\varepsilon > 0$-hoz van olyan $\delta > 0$, hogy minden $x \in (a, a + \delta)$ esetén $|f(x) - b| < \varepsilon$.
>
> Jelölése: $\displaystyle \lim_{x \to a+0} f(x) = b$, $\displaystyle\lim_{x\to a+} f(x) = b$, vagy röviden $f(a + 0) = b$.
>
> A **bal oldali határértéket**, $\lim_{x \to a-0} f(x) = f(a - 0)$-t, ugyanígy definiáljuk az $(a - \delta, a)$ intervallumokkal.

**Példák.** $\lim_{x \to 0+0}\operatorname{sgn}(x) = 1$, $\lim_{x \to 0-0}\operatorname{sgn}(x) = -1$. A törtrész-függvényre: $\{0 + 0\} = 0$, $\{0 - 0\} = 1$. Az egészrész-függvényre minden $k \in \mathbb{Z}$-ben $[k - 0] = k - 1$ és $[k + 0] = k$.

> **Tétel.** $\displaystyle \lim_{x \to a} f(x) = b \iff \lim_{x \to a-0} f(x) = \lim_{x \to a+0} f(x) = b$.

*Bizonyítás.* ($\Rightarrow$) Ha a kétoldali határérték $b$, akkor az ahhoz tartozó $\delta$ a féloldali definíciókban is jó, hiszen $(a, a + \delta)$ és $(a - \delta, a)$ is része $\dot{B}(a, \delta)$-nak.

($\Leftarrow$) Adott $\varepsilon$-hoz a jobb oldali határérték egy $\delta_1$-et, a bal oldali egy $\delta_2$-t ad. Legyen $\delta = \min\{\delta_1, \delta_2\}$. Ha $x \in \dot{B}(a, \delta)$, akkor vagy $x \in (a, a + \delta_1)$, vagy $x \in (a - \delta_2, a)$, és mindkét esetben $|f(x) - b| < \varepsilon$. $\blacksquare$

A tétel gyakorlati jelentősége: a határérték nemlétezésének egyik legegyszerűbb bizonyítása, ha megmutatjuk, hogy a két féloldali határérték különbözik (vagy valamelyik nem létezik). Így $\lim_{x \to 0}\operatorname{sgn}(x)$ és $\lim_{x \to 0}\{x\}$ nemlétezése azonnal adódik.

### Az egységes definíciós séma

Eddig három határérték-típust láttunk ($x \to a$, $x \to a + 0$, $x \to a - 0$), és hamarosan továbbiak jönnek ($x \to \pm\infty$, illetve végtelen határértékek). Ahelyett, hogy mindegyiket külön definiálnánk, foglaljuk őket egyetlen sablonba a **környezetek** nyelvén. Vezessük be a következő jelöléseket:
$$\dot{B}(a + 0, \delta) = (a, a + \delta), \qquad \dot{B}(a - 0, \delta) = (a - \delta, a).$$

> **Definíció (egységes séma).** Legyen $\alpha$ a következők valamelyike: $a - 0$, $a$, $a + 0$ (később: $\pm\infty$ is), és legyen $\beta \in \mathbb{R}$ (később: $\pm\infty$ is). Azt mondjuk, hogy $\lim_{x \to \alpha} f(x) = \beta$, ha
>
> - **(I)** $f$ értelmezve van az $\alpha$ egy $\dot{U}_0$ pontozott környezetében, és
> - **(II)** a $\beta$ bármely $V$ környezetéhez van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U}$-ra $f(x) \in V$.

**Példa a séma kibontására.** A $\lim_{x \to a-0} f(x) = b$ esetben: $\dot{U}_0 = (a - \delta_0, a)$, $V = B(b, \varepsilon)$, $\dot{U} = (a - \delta, a)$, és a séma pontosan a bal oldali határérték definícióját adja.

## 48. Végtelen határértékek és határérték a végtelenben

A séma ereje abban áll, hogy a $\pm\infty$ esetekre is kiterjeszthető — pusztán a megfelelő „környezetek” megadásával. A 22. szakaszban már bevezettük:
$$B(+\infty, K) = (K, +\infty), \qquad B(-\infty, K) = (-\infty, K).$$
Megállapodás szerint $\dot{B}(\pm\infty, K) = B(\pm\infty, K)$ — a végtelenben nincs mit „kipontozni”, hiszen $\pm\infty$ nem eleme a környezetnek.

### Végtelen határérték

Tekintsük az $f(x) = \frac{1}{x^2}$ függvényt a $0$ körül. Ha $x$ közel van $0$-hoz, akkor $f(x)$ nagyon nagy: $f(0{,}1) = 100$, $f(0{,}01) = 10\,000$. Azt mondjuk, hogy $f$ a $0$-ban $+\infty$-hez tart. A sémában $\alpha = 0$, $\beta = +\infty$, $V = (K, +\infty)$, és kibontva:

> **Definíció.** $\displaystyle \lim_{x \to a} f(x) = +\infty$, ha (I) $f$ értelmezve van $a$ egy pontozott környezetében, és (II) minden $K \in \mathbb{R}$-hez van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$-ra $f(x) > K$.

**Példa.** $\lim_{x \to 0}\frac{1}{x^2} = +\infty$. Adott $K > 0$-hoz legyen $\delta = \frac{1}{\sqrt{K}}$. Ha $0 < |x| < \delta$, akkor $x^2 < \frac{1}{K}$, tehát $\frac{1}{x^2} > K$.

**Példa.** Az $\frac{1}{x}$ függvénynek a $0$-ban nincs (kétoldali) határértéke, de a féloldaliak léteznek:
$$\lim_{x \to 0+0}\frac{1}{x} = +\infty, \qquad \lim_{x \to 0-0}\frac{1}{x} = -\infty.$$

### Határérték a végtelenben

Az $\frac{1}{x}$ függvény értékei egyre közelebb kerülnek a $0$-hoz, ha $x$ minden határon túl nő. Itt a változó tart a végtelenbe: $\alpha = +\infty$.

> **Definíció.** $\displaystyle \lim_{x \to +\infty} f(x) = b$, ha (I) van olyan $K_0$, hogy $(K_0, +\infty) \subset D(f)$, és (II) minden $\varepsilon > 0$-hoz van olyan $K$, hogy minden $x > K$-ra $|f(x) - b| < \varepsilon$.

Ez nagyon hasonlít a sorozatok határértékére — a különbség csak annyi, hogy $x$ nemcsak egész értékeken fut. (Valóban: ha $\lim_{x \to +\infty} f(x) = b$, akkor az $a_n = f(n)$ sorozat is $b$-hez tart; a megfordítás nem igaz, gondoljunk a $\{x\}$ függvényre, amelyre $f(n) = 0$ minden $n$-re, de $\lim_{x \to +\infty}\{x\}$ nem létezik.)

**Példa.** $\lim_{x \to +\infty}\frac{2x + 1}{x + 3} = 2$. Valóban, $x > 0$ esetén
$$\left|\frac{2x + 1}{x + 3} - 2\right| = \frac{5}{x + 3} < \frac{5}{x},$$
ami kisebb $\varepsilon$-nál, ha $x > \frac{5}{\varepsilon}$. Tehát $K = \frac{5}{\varepsilon}$ jó.

### Tizenöt típus, egy definíció

Összesen tehát **15 féle** határérték definiálható:

- $\alpha$ lehet: $-\infty$, $a - 0$, $a$, $a + 0$, $+\infty$ (öt lehetőség);
- $\beta$ lehet: $-\infty$, $b$, $+\infty$ (három lehetőség).

A tanulság: nem tizenöt különböző definíciót kell megtanulni, hanem **egyet**, a környezetek nyelvén. Bármelyik esetre a definíciót úgy kapjuk, hogy a sémába beírjuk a megfelelő környezeteket:

| | környezet |
|---|---|
| $a$ (pontozott) | $\dot{B}(a, \delta) = (a - \delta, a) \cup (a, a + \delta)$ |
| $a + 0$ | $(a, a + \delta)$ |
| $a - 0$ | $(a - \delta, a)$ |
| $+\infty$ | $(K, +\infty)$ |
| $-\infty$ | $(-\infty, K)$ |
| $b$ (értékoldalon) | $B(b, \varepsilon) = (b - \varepsilon, b + \varepsilon)$ |

**Példa.** $\lim_{x \to -\infty} f(x) = +\infty$ kibontva: minden $K$-hoz van olyan $L$, hogy minden $x < L$-re $f(x) > K$. (Például $f(x) = x^2$.)

## 49. Torlódási pont és leszűkített határérték

Néha egy függvény határértékét csak egy részhalmazon szeretnénk vizsgálni. A féloldali határérték is ilyen: az $a + 0$-beli határérték az $a$-tól jobbra eső pontokra szorítkozik. A következő definíció ezt általánosítja.

> **Definíció (torlódási pont).** Az $\alpha \in \overline{\mathbb{R}}$ az $A \subset \mathbb{R}$ halmaz **torlódási pontja**, ha az $\alpha$ minden környezetében az $A$-nak végtelen sok pontja van.

**Példák.** A $(0, 1)$ intervallum torlódási pontjai a $[0, 1]$ pontjai. Az $\left\{\frac{1}{n} : n \in \mathbb{N}\right\}$ halmaznak egyetlen torlódási pontja van, a $0$ (amely nem is eleme a halmaznak). Az $\mathbb{N}$ egyetlen torlódási pontja $+\infty$. A $\mathbb{Q}$ torlódási pontjai: minden valós szám és $\pm\infty$. Véges halmaznak nincs torlódási pontja.

> **Definíció (leszűkített határérték).** Legyen $\alpha \in \overline{\mathbb{R}}$ az $A$ halmaz torlódási pontja, és $A \subset D(f)$. Az $f$ függvény határértéke **az $A$-ra szorítkozva** $\gamma \in \overline{\mathbb{R}}$, ha a $\gamma$ minden $V$ környezetéhez van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U} \cap A$-ra $f(x) \in V$. Jelölése:
> $$\lim_{\substack{x \to \alpha \\ x \in A}} f(x) = \gamma.$$

A torlódási pont feltétele biztosítja, hogy $\dot{U} \cap A$ sosem üres, tehát a definíció nem válik üressé.

**Megjegyzés.** A féloldali határérték ennek speciális esete: $\lim_{x \to a + 0} f(x) = \lim_{x \to a,\ x \in (a, a + \delta_0)} f(x)$.

**Példa (a Dirichlet-függvény).** Minden $c \in \mathbb{R}$-re
$$\lim_{\substack{x \to c \\ x \in \mathbb{Q}}} D(x) = 1, \qquad \lim_{\substack{x \to c \\ x \in \mathbb{R}\setminus\mathbb{Q}}} D(x) = 0,$$
hiszen a racionális pontokon a függvény állandóan $1$, az irracionálisakon állandóan $0$ (és $c$ mindkét halmaznak torlódási pontja, a 9. szakasz sűrűségi tétele szerint). Mindkét leszűkített határérték létezik, de különbözők — ezért (lásd az alábbi megjegyzést) a nem leszűkített határérték egyetlen pontban sem létezik.

Általánosan: **ha a határérték létezik, akkor bármely olyan halmazra szorítkozva is létezik és ugyanannyi, amelynek $\alpha$ torlódási pontja.** (A definícióban szereplő $\dot{U}$ az $A$-ra szorítkozva is megfelel.) Ezért két különböző leszűkített határérték a határérték nemlétezését bizonyítja.

## 50. Az átviteli elv

Most egy olyan tételt bizonyítunk, amely összeköti a függvények és a sorozatok határértékét. Ennek köszönhetően **minden sorozatokra bizonyított tétel „átvihető” a függvényekre**: a rendőrelv, a műveleti szabályok, a rendezés öröklődése — mind.

**Motiváló példák.**

- $\lim_{x \to 2} x^2 = 4$; és valóban, ha $a_n = 2 + \frac{1}{n}$, akkor $a_n^2 = 4 + \frac{4}{n} + \frac{1}{n^2} \to 4$.
- De vigyázat: egyetlen sorozat nem elég. Az $u_n = \frac{1}{n} \to 0$ sorozatra $\{u_n\} = \frac{1}{n} \to 0$, a $v_n = -\frac{1}{n} \to 0$ sorozatra viszont $\{v_n\} = 1 - \frac{1}{n} \to 1$, és $\lim_{x \to 0}\{x\}$ nem létezik.
- Hasonlóan, $D\!\left(\frac{1}{n}\right) = 1 \to 1$ (hiszen $\frac{1}{n}$ racionális), de $D\!\left(\frac{\sqrt{2}}{n}\right) = 0 \to 0$, és $\lim_{x \to 0} D(x)$ nem létezik.

A tanulság: a helyes állításban **minden** olyan sorozatot figyelembe kell venni, amely a ponthoz tart.

> **Tétel (átviteli elv, Heine-féle jellemzés).** Tegyük fel, hogy $f$ értelmezve van az $\alpha$ egy $\dot{U}$ pontozott környezetében. Ekkor
> $$\lim_{x \to \alpha} f(x) = \gamma \iff \text{minden olyan } (a_n) \text{ sorozatra, amelyre } a_n \in \dot{U} \text{ és } a_n \to \alpha, \text{ teljesül, hogy } f(a_n) \to \gamma.$$

Itt $\alpha$ és $\gamma$ a bővített számegyenes bármely elemei lehetnek (a 15 típus bármelyike). Fontos, hogy az $a_n$ sorozat tagjai a **pontozott** környezetben vannak, vagyis $a_n \neq \alpha$.

*Bizonyítás (az $\alpha = a \in \mathbb{R}$, $\gamma = b \in \mathbb{R}$ esetben; a többi eset ugyanígy megy, a megfelelő környezetekkel).*

**($\Rightarrow$)** Tegyük fel, hogy $\lim_{x \to a} f(x) = b$, és legyen $a_n \to a$, $a_n \in \dot{U}$ (tehát $a_n \neq a$). Legyen $\varepsilon > 0$. A határérték definíciója szerint van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$-ra $|f(x) - b| < \varepsilon$. Mivel $a_n \to a$, van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \delta$; és mivel $a_n \neq a$, ez azt jelenti, hogy $a_n \in \dot{B}(a, \delta)$. Ekkor $|f(a_n) - b| < \varepsilon$. Tehát $f(a_n) \to b$.

**($\Leftarrow$)** Ezt **kontrapozícióval** bizonyítjuk (D. szakasz): megmutatjuk, hogy ha $f(x) \not\to b$, akkor van olyan $a_n \to a$, $a_n \in \dot{U}$ sorozat, amelyre $f(a_n) \not\to b$.

A határérték definíciójának tagadása (B. szakasz):
$$\exists \varepsilon > 0\ \ \forall \delta > 0\ \ \exists x \in \dot{B}(a, \delta) : |f(x) - b| \ge \varepsilon.$$
Alkalmazzuk ezt a $\delta = \frac{1}{n}$ értékekre ($n = 1, 2, \dots$; elég nagy $n$-re $\dot{B}\left(a, \frac{1}{n}\right) \subset \dot{U}$): minden $n$-hez van olyan $a_n$, amelyre
$$0 < |a_n - a| < \frac{1}{n} \qquad \text{és} \qquad |f(a_n) - b| \ge \varepsilon.$$
Az így kapott sorozatra $a_n \to a$ (a rendőrelv szerint), $a_n \neq a$, és $a_n \in \dot{U}$ (elég nagy $n$-re) — de $f(a_n) \not\to b$, hiszen minden tag legalább $\varepsilon$ távolságra van $b$-től. $\blacksquare$

**Fő alkalmazás: a határérték nemlétezésének bizonyítása.** Elég **két** olyan, $\alpha$-hoz tartó sorozatot találni, amelyekre a képsorozatok különböző határértékhez tartanak (vagy egy olyat, amelyre a képsorozat divergens).

**Kidolgozott példa: $\lim_{x \to 0}\left\{\frac{1}{x}\right\}$ nem létezik.** Legyen $a_n = \frac{1}{n}$ és $b_n = \frac{1}{n + \frac{1}{2}}$. Mindkét sorozat $0$-hoz tart, és nem veszi fel a $0$-t. Ugyanakkor
$$\left\{\frac{1}{a_n}\right\} = \{n\} = 0 \to 0, \qquad \left\{\frac{1}{b_n}\right\} = \left\{n + \frac{1}{2}\right\} = \frac{1}{2} \to \frac{1}{2}.$$
A két képsorozat határértéke különbözik, tehát a függvényhatárérték nem létezik.

## 51. Határérték és műveletek; kompozíció

Az átviteli elv segítségével a sorozatokra vonatkozó műveleti szabályok (25. szakasz) azonnal átvihetők a függvényekre.

> **Tétel (határérték és műveletek).** Ha $\lim_{x \to \alpha} f(x) = b$ és $\lim_{x \to \alpha} g(x) = c$ ($b, c \in \mathbb{R}$), akkor
>
> 1. $\displaystyle \lim_{x \to \alpha}\big(f(x) + g(x)\big) = b + c$;
> 2. $\displaystyle \lim_{x \to \alpha} f(x)g(x) = bc$;
> 3. ha $c \neq 0$, akkor $\displaystyle \lim_{x \to \alpha}\frac{f(x)}{g(x)} = \frac{b}{c}$.

*Bizonyítás.* Mindhárom pontban ugyanaz a minta. Nézzük például a 2. pontot. Legyen $a_n \to \alpha$ tetszőleges sorozat a közös pontozott környezetből. Az átviteli elv ($\Rightarrow$ irány) szerint $f(a_n) \to b$ és $g(a_n) \to c$. A sorozatokra vonatkozó szorzattétel szerint $f(a_n)g(a_n) \to bc$. Mivel ez minden ilyen sorozatra igaz, az átviteli elv ($\Leftarrow$ irány) szerint $\lim_{x \to \alpha} f(x)g(x) = bc$.

A 3. pontban még azt is meg kell jegyezni, hogy $c \neq 0$ miatt $g(x) \neq 0$ az $\alpha$ egy pontozott környezetében (ezt az előjeltartás biztosítja, lásd az 53. szakaszt), így a hányados ott értelmes. $\blacksquare$

Ez a bizonyítási minta — **sorozatra visszavezetni, ott alkalmazni a kész tételt, majd visszatérni** — végig ismétlődik. Ugyanígy kapjuk meg a végtelen határértékekre vonatkozó szabályokat (26. szakasz táblázatai), és a következőt:

> **Tétel (rendőrelv függvényekre).** Ha az $\alpha$ egy pontozott környezetében $f(x) \le g(x) \le h(x)$, és $\lim_{x \to \alpha} f(x) = \lim_{x \to \alpha} h(x) = b$, akkor $\lim_{x \to \alpha} g(x) = b$.

### Kidolgozott példák

**1. Polinomok és racionális törtfüggvények.** Az $\lim_{x \to a} x = a$ és $\lim_{x \to a} c = c$ határértékekből a műveleti szabályokkal minden $p$ polinomra $\lim_{x \to a} p(x) = p(a)$, és minden $R = \frac{p}{q}$ racionális törtfüggvényre, ha $q(a) \neq 0$, $\lim_{x \to a} R(x) = R(a)$. Például
$$\lim_{x \to 2}\frac{x^2 + 1}{x - 3} = \frac{5}{-1} = -5.$$

**2. „Lyukas” racionális törtfüggvények.** Ha a nevező az $a$-ban nulla, először egyszerűsíteni kell:
$$\lim_{x \to 3}\frac{x^2 - 9}{x^2 - 5x + 6} = \lim_{x \to 3}\frac{(x - 3)(x + 3)}{(x - 3)(x - 2)} = \lim_{x \to 3}\frac{x + 3}{x - 2} = 6.$$

**3. Határérték a végtelenben.** Ugyanúgy, mint a sorozatoknál, osztunk a legmagasabb hatvánnyal:
$$\lim_{x \to +\infty}\frac{3x^2 - x}{x^2 + 1} = \lim_{x \to +\infty}\frac{3 - \frac{1}{x}}{1 + \frac{1}{x^2}} = 3.$$

**4. Rendőrelv.** $\lim_{x \to 0} x\,D(x) = 0$, hiszen $0 \le |x\,D(x)| \le |x|$, és $|x| \to 0$. Meglepő: a Dirichlet-függvénynek sehol sincs határértéke, de az $x$-szel szorozva a $0$-ban már van.

### Az összetett függvény határértéke

A gyakorlatban gyakran helyettesítéssel számolunk határértéket: például $\lim_{x \to 0}(1 + x^2)^3$-nál a $t = 1 + x^2$ helyettesítéssel, $t \to 1$, a $t^3 \to 1$ határértékre jutunk. Ennek jogosságát a következő tétel adja meg.

> **Tétel (az összetett függvény határértéke).** Tegyük fel, hogy
>
> - $\lim_{x \to \alpha} g(x) = \gamma$ ($\gamma \in \overline{\mathbb{R}}$),
> - az $\alpha$ egy pontozott környezetében $g(x) \neq \gamma$, és
> - $\lim_{t \to \gamma} f(t) = \beta$.
>
> Ekkor $\displaystyle \lim_{x \to \alpha} f(g(x)) = \beta$.

*Bizonyítás.* Legyen $a_n \to \alpha$ tetszőleges sorozat a pontozott környezetből. Legyen $t_n = g(a_n)$. Az átviteli elv szerint $t_n \to \gamma$, és a második feltétel szerint $t_n \neq \gamma$. Mivel $\lim_{t \to \gamma} f(t) = \beta$, az átviteli elv (most $f$-re alkalmazva) szerint $f(t_n) \to \beta$, azaz $f(g(a_n)) \to \beta$. Mivel ez minden ilyen $(a_n)$ sorozatra igaz, az átviteli elv szerint $\lim_{x \to \alpha} f(g(x)) = \beta$. $\blacksquare$

**Miért kell a $g(x) \neq \gamma$ feltétel?** Mert az $f$ határértéke a $\gamma$-ban nem függ $f(\gamma)$-tól, a kompozíció viszont felveheti ezt az értéket. Ellenpélda: legyen $g(x) = 0$ (állandó) és $f(t) = (\operatorname{sgn} t)^2$. Ekkor $\lim_{x \to 0} g(x) = 0$ és $\lim_{t \to 0} f(t) = 1$, de $f(g(x)) = f(0) = 0$ minden $x$-re, tehát $\lim_{x \to 0} f(g(x)) = 0 \neq 1$. (Az 53. szakaszban látni fogjuk, hogy ha $f$ **folytonos** a $\gamma$-ban, akkor a feltétel elhagyható.)

**Szimbolikus szabályok.** A szokásos rövidítések — $\infty + \infty = \infty$, $\infty \cdot a = \infty$ ($a > 0$), $\frac{1}{\infty} = 0$ és társaik — ezekre a tételekre utalnak, de nem helyettesítik őket. A kritikus esetekben ($\infty - \infty$, $0 \cdot \infty$, $\frac{0}{0}$, $\frac{\infty}{\infty}$, lásd a 26. szakasz táblázatait) nincs ilyen szabály; ezekben a függvényt át kell alakítani, vagy — a XIII. részben — a L'Hospital-szabályt kell alkalmazni.

---

## A IX. rész összefoglalása

- $\lim_{x \to a} f(x) = b$: minden $\varepsilon > 0$-hoz van $\delta > 0$, hogy $0 < |x - a| < \delta$ esetén $|f(x) - b| < \varepsilon$. A határérték független a függvény $a$-beli értékétől.
- A kétoldali határérték pontosan akkor létezik, ha a két féloldali létezik és egyenlő.
- Az egységes séma (környezetekkel) mind a 15 határérték-típust lefedi.
- Leszűkített határérték: csak egy halmaz pontjain vizsgáljuk a függvényt. Két különböző leszűkített határérték a határérték nemlétezését jelenti.
- Átviteli elv: $\lim_{x \to \alpha} f(x) = \gamma$ pontosan akkor, ha minden $a_n \to \alpha$ ($a_n \neq \alpha$) sorozatra $f(a_n) \to \gamma$. Ezzel a sorozatokra bizonyított tételek (műveletek, rendőrelv) átvihetők, és nemlétezés is bizonyítható.
- Összetett függvény határértéke: helyettesítés, a $g(x) \neq \gamma$ feltétellel.

## Feladatok a IX. részhez

1. Az $\varepsilon$–$\delta$ definíció alapján bizonyítsuk be: a) $\lim_{x \to 3}(2x + 1) = 7$; b) $\lim_{x \to 1} x^2 = 1$; c) $\lim_{x \to 0+0}\sqrt{x} = 0$.
2. Számítsuk ki: a) $\lim_{x \to 2}\frac{x^2 - 4}{x - 2}$; b) $\lim_{x \to 0}\frac{\sqrt{1 + x} - 1}{x}$; c) $\lim_{x \to +\infty}\frac{3x^2 - x}{x^2 + 1}$; d) $\lim_{x \to +\infty}\left(\sqrt{x^2 + x} - x\right)$; e) $\lim_{x \to 1}\frac{x^3 - 1}{x - 1}$.
3. Határozzuk meg az egészrész-függvény féloldali határértékeit a $k \in \mathbb{Z}$ pontokban, és mutassuk meg, hogy $\lim_{x \to 1/2}[x] = 0$.
4. Az átviteli elv segítségével mutassuk meg, hogy a Dirichlet-függvénynek egyetlen pontban sincs határértéke.
5. Bizonyítsuk be, hogy $\lim_{x \to 0} x\left[\frac{1}{x}\right] = 1$.
6. Számítsuk ki a $\lim_{x \to 0+0}\frac{1}{x}$, $\lim_{x \to 0-0}\frac{1}{x^3}$ és $\lim_{x \to 3+0}\frac{x}{x - 3}$ határértékeket.

### Megoldási útmutatók

1. a) $|2x + 1 - 7| = 2|x - 3|$, $\delta = \frac{\varepsilon}{2}$. b) $|x^2 - 1| = |x - 1||x + 1| < 3|x - 1|$, ha $|x - 1| < 1$; $\delta = \min\{1, \frac{\varepsilon}{3}\}$. c) $0 < x < \varepsilon^2$ esetén $\sqrt{x} < \varepsilon$; $\delta = \varepsilon^2$.
2. a) $4$. b) $\frac{\sqrt{1 + x} - 1}{x} = \frac{1}{\sqrt{1 + x} + 1} \to \frac{1}{2}$ (a gyökfüggvény $1$-beli határértéke a 4. példához hasonlóan adódik). c) $3$. d) $\frac{x}{\sqrt{x^2 + x} + x} = \frac{1}{\sqrt{1 + 1/x} + 1} \to \frac{1}{2}$. e) $x^2 + x + 1 \to 3$.
3. $[k - 0] = k - 1$, $[k + 0] = k$. A $\frac{1}{2}$ körül, $\delta = \frac{1}{2}$-del, a függvény állandóan $0$.
4. Ha $c \in \mathbb{R}$, legyen $r_n$ racionális, $s_n$ irracionális, mindkettő $c$-hez tart, és egyik sem egyenlő $c$-vel (a 9. szakasz sűrűségi tétele szerint ilyenek vannak, például $r_n \in \left(c, c + \frac{1}{n}\right)$). Ekkor $D(r_n) = 1$, $D(s_n) = 0$.
5. $x > 0$ esetén $\frac{1}{x} - 1 < \left[\frac{1}{x}\right] \le \frac{1}{x}$, így $1 - x < x\left[\frac{1}{x}\right] \le 1$. $x < 0$ esetén az $x$-szel való szorzás megfordítja az egyenlőtlenségeket: $1 \le x\left[\frac{1}{x}\right] < 1 - x$. A rendőrelv szerint mindkét oldalról $1$ a határérték.
6. $+\infty$; $-\infty$; $+\infty$ (a számláló $3$-hoz, a nevező pozitív értékeken $0$-hoz tart).

---

# X. RÉSZ: FOLYTONOSSÁG

A határérték fogalma — szándékosan — független attól, hogy a függvény magában a vizsgált pontban milyen értéket vesz fel. A folytonosság éppen azt követeli meg, hogy a kettő **megegyezzék**: a függvény oda tartson, ahol van. Szemléletesen a folytonos függvény grafikonja „egy vonással, a ceruza felemelése nélkül” megrajzolható — bár, mint látni fogjuk, ez a szemléletes kép csak intervallumon értelmezett függvényekre igaz, és ott is csak nagyjából.

Ebben a részben bebizonyítjuk a folytonos függvények három nagy tételét (korlátosság, Weierstrass-féle maximumtétel, Bolzano-féle közbülsőérték-tétel). Mindhárom a teljességi axiómán múlik, és mindhárom alapvető szerepet játszik majd a differenciálszámításban.

## 52. A folytonosság fogalma

> **Definíció.** Az $f$ függvény **folytonos** az $a \in \mathbb{R}$ helyen, ha $f$ értelmezve van $a$ egy környezetében, és
> $$\lim_{x \to a} f(x) = f(a).$$

A definíció három követelményt foglal magában: (1) $f$ értelmezve van az $a$-ban (és körülötte), (2) létezik a $\lim_{x \to a} f(x)$ határérték, és (3) ez egyenlő $f(a)$-val. Ha bármelyik sérül, a függvény nem folytonos az $a$-ban.

**$\varepsilon$–$\delta$ alakban.** A határérték definícióját kibontva: $f$ pontosan akkor folytonos $a$-ban, ha minden $\varepsilon > 0$-hoz van olyan $\delta > 0$, hogy minden $x \in B(a, \delta)$ esetén
$$|f(x) - f(a)| < \varepsilon.$$
Figyeljük meg, hogy itt már **nem pontozott** környezet szerepel: az $x = a$ esetben az egyenlőtlenség triviálisan teljesül, hiszen $|f(a) - f(a)| = 0$. Szavakban: **ha $x$ elég közel van $a$-hoz, akkor $f(x)$ tetszőlegesen közel van $f(a)$-hoz**. A bemenet kis megváltozása a kimenet kis megváltozását okozza.

**A folytonosság mint „mérhetőség”.** Egy gyakorlati szemléltetés: ha egy fizikai mennyiséget csak közelítőleg tudunk megmérni, akkor a belőle kiszámított $f$ érték csak akkor megbízható, ha $f$ folytonos — vagyis ha kis mérési hiba kis számítási hibát okoz. A $\operatorname{sgn}$ függvény a $0$-ban nem ilyen: egy akármilyen kicsi mérési hiba az eredményt $0$-ról $\pm 1$-re változtathatja.

> **Definíció (féloldali folytonosság).** Az $f$ **jobbról**, illetve **balról folytonos** az $a$-ban, ha (a megfelelő oldali környezetben értelmezett, és)
> $$\lim_{x \to a+0} f(x) = f(a), \qquad \text{illetve} \qquad \lim_{x \to a-0} f(x) = f(a).$$

> **Tétel.** $f$ pontosan akkor folytonos $a$-ban, ha ott jobbról és balról is folytonos.

Ez a 47. szakasz tételének közvetlen következménye.

> **Definíció (leszűkített folytonosság).** Ha $a \in A \subset D(f)$ és $a$ az $A$ torlódási pontja, akkor $f$ **folytonos $a$-ban az $A$-ra szorítkozva**, ha $\lim_{x \to a,\ x \in A} f(x) = f(a)$.

> **Definíció (folytonosság intervallumon).** Az $f$ **folytonos az $(\alpha, \beta)$ nyílt intervallumon** ($-\infty \le \alpha < \beta \le +\infty$), ha annak minden pontjában folytonos. Jelölése: $f \in C(\alpha, \beta)$.
>
> Az $f$ **folytonos az $[a, b]$ zárt intervallumon**, ha $(a, b)$ minden pontjában folytonos, az $a$-ban jobbról, a $b$-ben balról folytonos. Jelölése: $f \in C[a, b]$.

A végpontokban tett megkülönböztetés nem pedantéria: ha például $f(x) = \sqrt{x}$, akkor $f$ a $0$-tól balra nincs is értelmezve, így a $0$-beli (kétoldali) folytonosságról nem is beszélhetünk — a jobb oldali folytonosság viszont teljesül. Általában: **$f \in C[a,b]$ pontosan akkor, ha $f$ az $[a,b]$ minden pontjában folytonos az $[a,b]$-re szorítkozva.**

**Példák.**

- Az állandó függvény és az $f(x) = x$ függvény mindenütt folytonos (46. szakasz, 1. példa).
- A $\sqrt{x}$ folytonos a $[0, +\infty)$ intervallumon. (A $0$-ban jobbról: a IX. rész 1.c) feladata; az $a > 0$ pontokban a 46. szakasz 4. példájához hasonlóan: $|\sqrt{x} - \sqrt{a}| = \frac{|x - a|}{\sqrt{x} + \sqrt{a}} \le \frac{|x - a|}{\sqrt{a}}$.)
- A $\operatorname{sgn}$ függvény a $0$-ban nem folytonos (nincs határértéke), minden más pontban folytonos (ott lokálisan állandó).
- A $(\operatorname{sgn} x)^2$ a $0$-ban nem folytonos: a határérték létezik ($1$), de nem egyenlő a függvényértékkel ($0$).
- A Dirichlet-függvény **sehol sem** folytonos (sehol sincs határértéke).
- Az $f(x) = x\,D(x)$ függvény **pontosan egy** pontban, a $0$-ban folytonos: ott $\lim_{x \to 0} x D(x) = 0 = f(0)$ (51. szakasz, 4. példa); minden $c \neq 0$ pontban viszont nincs határértéke (a racionális pontokon vett leszűkítés $c$-hez, az irracionálisokon vett $0$-hoz tart). Ez a példa megmutatja, mennyire pontatlan a „ceruza felemelése nélkül” kép.
- Az egészrész-függvény, $[x]$, folytonos a $\left[0, \frac{1}{2}\right]$ intervallumon (ott állandóan $0$), de **nem** folytonos a $[0, 1]$ intervallumon: az $1$-ben balról a határérték $0$, a függvényérték viszont $1$ — a függvény „ugrik”. Minden $k \in \mathbb{Z}$ pontban jobbról folytonos, de balról nem.

## 53. Műveletek és folytonosság

A határértékre vonatkozó műveleti szabályokból (51. szakasz) azonnal adódik:

> **Tétel.** Ha $f$ és $g$ folytonos az $a$-ban, akkor $f + g$, $f - g$ és $f \cdot g$ is folytonos az $a$-ban; ha ezen felül $g(a) \neq 0$, akkor $\frac{f}{g}$ is folytonos az $a$-ban.

*Bizonyítás (a szorzatra).* $\lim_{x \to a} f(x)g(x) = \lim_{x\to a} f(x)\cdot\lim_{x \to a} g(x) = f(a)g(a)$. $\blacksquare$

> **Következmény.** Minden polinom folytonos $\mathbb{R}$-en, és minden racionális törtfüggvény folytonos az értelmezési tartománya minden pontjában.

*Bizonyítás.* Az állandó függvény és az $x \mapsto x$ folytonos; minden polinom ezekből véges sok összeadással és szorzással áll elő. A racionális törtfüggvényekre a hányadosszabály alkalmazható ott, ahol a nevező nem nulla. $\blacksquare$

### Előjeltartás és egyenlőtlenségek

A következő tételek azt fejezik ki, hogy a határérték és a folytonosság „tiszteli” az egyenlőtlenségeket.

> **Tétel (egyenlőtlenség öröklődése a környezetre).** Ha
> $$\lim_{x \to \alpha} f(x) = b < c = \lim_{x \to \alpha} g(x),$$
> akkor az $\alpha$-nak van olyan $\dot{U}$ pontozott környezete, amelyben $f(x) < g(x)$.

*Bizonyítás.* Legyen $\varepsilon = \frac{c - b}{2}$. Van olyan pontozott környezet, amelyben $f(x) < b + \varepsilon = \frac{b + c}{2}$, és van olyan, amelyben $g(x) > c - \varepsilon = \frac{b + c}{2}$. A két környezet metszetében (ez is pontozott környezete $\alpha$-nak) $f(x) < \frac{b+c}{2} < g(x)$. $\blacksquare$

> **Tétel (egyenlőtlenség öröklődése a határértékre).** Ha az $\alpha$ egy pontozott környezetében $f(x) \le g(x)$, és létezik $\lim_{x \to \alpha} f(x) = b$ és $\lim_{x \to \alpha} g(x) = c$, akkor $b \le c$.

*Bizonyítás.* Legyen $x_n \to \alpha$ egy sorozat a pontozott környezetből. Ekkor $f(x_n) \le g(x_n)$, és az átviteli elv szerint $f(x_n) \to b$, $g(x_n) \to c$. A sorozatokra vonatkozó rendezési tétel (19. szakasz) szerint $b \le c$. $\blacksquare$

A két tételt a $g$, illetve az $f$ helyére állandót írva a következő hasznos állításokat kapjuk:

> **Következmények (előjeltartás).**
>
> 1. Ha $f$ folytonos az $a$-ban és $f(a) > 0$, akkor van olyan $\delta > 0$, hogy minden $x \in B(a, \delta)$-ra $f(x) > 0$.
> 2. Ha az $a$ egy pontozott környezetében $f(x) \ge 0$, és $\lim_{x \to a} f(x) = b$, akkor $b \ge 0$.

Figyeljük meg az aszimmetriát (ugyanúgy, mint a sorozatoknál a 19. szakaszban): a **szigorú** egyenlőtlenség átöröklődik egy környezetre, de a határátmenet során csak a **gyenge** egyenlőtlenség marad meg. Például $f(x) = x^2 > 0$ minden $x \neq 0$-ra, de $\lim_{x \to 0} x^2 = 0$, ami nem pozitív.

### Átviteli elv a folytonosságra

> **Tétel (átviteli elv a folytonosságra).** Tegyük fel, hogy $f$ értelmezve van az $a$ egy környezetében. Ekkor $f$ pontosan akkor folytonos $a$-ban, ha minden $a_n \to a$ sorozatra (a környezetből) $f(a_n) \to f(a)$.

(Itt már nem kell kikötni, hogy $a_n \neq a$, hiszen ha $a_n = a$, akkor $f(a_n) = f(a)$.)

**Következmény: folytonos függvény és a lim felcserélhető.** Ha $f$ folytonos az $a = \lim a_n$ pontban, akkor
$$\lim_{n\to\infty} f(a_n) = f\!\left(\lim_{n\to\infty} a_n\right).$$
Például
$$\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)^3 = \left(\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)\right)^3 = 2^3 = 8.$$
**De vigyázat, ha a függvény nem folytonos!**
$$\lim_{n\to\infty}\left\{1 - \frac{1}{n}\right\} = \lim_{n\to\infty}\left(1 - \frac{1}{n}\right) = 1, \qquad \text{miközben} \qquad \left\{\lim_{n\to\infty}\left(1 - \frac{1}{n}\right)\right\} = \{1\} = 0.$$

### Folytonosság és kompozíció

> **Tétel.** Ha $\lim_{x \to \alpha} g(x) = b \in \mathbb{R}$ és $f$ folytonos $b$-ben, akkor
> $$\lim_{x \to \alpha} f(g(x)) = f(b) = f\!\left(\lim_{x \to \alpha} g(x)\right).$$

*Bizonyítás.* Legyen $a_n \to \alpha$ tetszőleges sorozat a pontozott környezetből. Az átviteli elv szerint $g(a_n) \to b$, és mivel $f$ folytonos $b$-ben, a folytonosságra vonatkozó átviteli elv szerint $f(g(a_n)) \to f(b)$. (Itt nem kell a $g(a_n) \neq b$ feltétel, mert a folytonosságnál az $a_n = a$ eset is megengedett.) Ismét az átviteli elvet alkalmazva kapjuk az állítást. $\blacksquare$

Ez a tétel az 51. szakasz kompozíciós tételének erősebb változata: ha a külső függvény folytonos, a $g(x) \neq \gamma$ feltétel elhagyható.

> **Következmény.** Ha $g$ folytonos $a$-ban és $f$ folytonos $g(a)$-ban, akkor $f \circ g$ folytonos $a$-ban.

Szavakban: **folytonos függvények kompozíciója folytonos.** Például $\sqrt{1 + x^2}$ mindenütt folytonos, hiszen $1 + x^2$ polinom, a $\sqrt{\phantom{x}}$ pedig a pozitív számokon folytonos.

## 54. Korlátos zárt intervallumon folytonos függvények

Most következik az elmélet három gyöngyszeme. Mindhárom „nyilvánvalónak” tűnik, ha folytonos függvény grafikonjára gondolunk — és mindhárom lényegesen használja a **teljességi axiómát** (a Bolzano–Weierstrass-tételen vagy a szuprémum létezésén keresztül). A racionális számok körében mindhárom hamis volna! Továbbá mindhárom lényegesen használja azt is, hogy az intervallum **korlátos és zárt**: ha bármelyik feltételt elhagyjuk, az állítás megdől.

### Első tétel: korlátosság

> **Tétel.** Ha $f \in C[a, b]$, akkor $f$ korlátos $[a, b]$-n.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $f$ nem korlátos az $[a, b]$-n. Ekkor minden $n \in \mathbb{N}$-hez van olyan $x_n \in [a, b]$, amelyre
$$|f(x_n)| > n.$$
Az $(x_n)$ sorozat korlátos (hiszen $[a, b]$-ben halad), tehát a **Bolzano–Weierstrass-tétel** szerint van konvergens részsorozata: $x_{n_k} \to c$. Mivel minden $x_{n_k} \in [a, b]$, és a zárt intervallumból határátmenettel nem lehet kilépni (19. szakasz), $c \in [a, b]$. Mivel $f$ folytonos $c$-ben (az $[a, b]$-re szorítkozva), az átviteli elv szerint
$$f(x_{n_k}) \to f(c) \in \mathbb{R}.$$
Konvergens sorozat korlátos, tehát az $(f(x_{n_k}))$ sorozat korlátos. Ez ellentmond annak, hogy $|f(x_{n_k})| > n_k \ge k$, ami minden határon túl nő. $\blacksquare$

**A feltételek szükségessége.**

- **Zártság:** $f(x) = \frac{1}{x}$ folytonos a $(0, 1]$ intervallumon, de nem korlátos.
- **Korlátosság:** $f(x) = x$ folytonos a $[0, +\infty)$ intervallumon, de nem korlátos.
- **Folytonosság:** az $f(x) = \frac{1}{x}$ ($x \neq 0$), $f(0) = 0$ függvény a $[-1, 1]$-en értelmezett, de nem korlátos.

A bizonyításban a zártság ott kellett, hogy $c \in [a, b]$ legyen, a korlátosság a Bolzano–Weierstrass-tétel alkalmazásához, a folytonosság az $f(x_{n_k}) \to f(c)$-hez.

### Második tétel: a maximum és a minimum létezése

Az első tétel szerint egy $f \in C[a, b]$ függvény értékkészletének van szuprémuma és infimuma. A második tétel szerint ezeket **fel is veszi**.

> **Tétel (Weierstrass maximumtétele).** Ha $f \in C[a, b]$, akkor $f$-nek van maximuma és minimuma az $[a, b]$-n: vannak olyan $x_{\max}, x_{\min} \in [a, b]$ helyek, hogy minden $x \in [a, b]$-re
> $$f(x_{\min}) \le f(x) \le f(x_{\max}).$$

*Bizonyítás.* Az előző tétel szerint $f$ korlátos, tehát létezik $M = \sup\{f(x) : x \in [a, b]\} \in \mathbb{R}$. Azt kell megmutatnunk, hogy van olyan hely, ahol $f(x) = M$.

Tegyük fel indirekt, hogy $f$ sehol sem veszi fel $M$-et, azaz minden $x \in [a, b]$-re $f(x) < M$. Ekkor a
$$g(x) = \frac{1}{M - f(x)}$$
függvény jól definiált (a nevező sehol sem nulla, sőt pozitív), és folytonos az $[a, b]$-n, hiszen folytonos függvények hányadosa. Az előző tétel szerint tehát $g$ is korlátos: van olyan $K > 0$, hogy minden $x$-re $g(x) \le K$, azaz
$$\frac{1}{M - f(x)} \le K \implies M - f(x) \ge \frac{1}{K} \implies f(x) \le M - \frac{1}{K}.$$
Eszerint $M - \frac{1}{K}$ felső korlátja az értékkészletnek, holott $M$ a **legkisebb** felső korlát, és $M - \frac{1}{K} < M$. Ellentmondás.

A minimum létezése az előzőből következik, ha $-f$-re alkalmazzuk. $\blacksquare$

**Szemléletesen** a bizonyítás azt használja ki, hogy ha $f$ „megközelíti, de nem éri el” az $M$-et, akkor $\frac{1}{M - f}$ minden határon túl nőne — márpedig folytonos függvény korlátos zárt intervallumon nem tud minden határon túl nőni.

**A feltételek szükségessége.**

- **Zártság:** $f(x) = x$ a $(0, 1)$-en folytonos és korlátos, de se maximuma, se minimuma nincs.
- **Folytonosság:** az $f(x) = x$ ($0 \le x < 1$), $f(1) = 0$ függvény a $[0, 1]$-en korlátos, értékkészletének szuprémuma $1$, de ezt sehol sem veszi fel.

A Weierstrass-tétel a differenciálszámításban kulcsszerepet kap: a 74. szakaszban erre épül a Rolle-tétel, és rajta keresztül az összes középértéktétel; a 77. szakaszban pedig ez garantálja, hogy a szélsőérték-feladatoknak egyáltalán van megoldásuk.

### Harmadik tétel: a közbülső értékek felvétele

> **Tétel (Bolzano–Darboux, közbülsőérték-tétel).** Ha $f \in C[a, b]$, akkor $f$ felvesz minden $f(a)$ és $f(b)$ közötti értéket: ha $c$ az $f(a)$ és $f(b)$ közé esik, akkor van olyan $\xi \in [a, b]$, amelyre $f(\xi) = c$.

**Szemléletesen:** ha egy folytonos görbe az $y = c$ egyenes alatt indul és fölötte végződik, akkor valahol át kell metszenie az egyenest. Egy speciális eset: ha $f(a)$ és $f(b)$ ellentétes előjelű, akkor $f$-nek van zérushelye $(a, b)$-ben (**Bolzano-tétel**).

*Bizonyítás.* Feltehetjük, hogy $f(a) < c < f(b)$ (ha $c$ egyenlő valamelyik végponti értékkel, készen vagyunk; az $f(a) > c > f(b)$ eset $-f$-re visszavezethető). **Az ötlet:** keressük meg a „legutolsó” olyan helyet, ahol $f$ még legfeljebb $c$. Legyen
$$H = \{x \in [a, b] : f(x) \le c\}.$$
Ez nem üres ($a \in H$), és felülről korlátos ($b$ felső korlát). Legyen
$$\xi = \sup H.$$
Nyilván $a \le \xi \le b$. Megmutatjuk, hogy $f(\xi) = c$.

*Először: $f(\xi) \le c$.* A szuprémum $\varepsilon$-os jellemzése szerint minden $n$-re van olyan $x_n \in H$, amelyre $\xi - \frac{1}{n} < x_n \le \xi$. Ekkor $x_n \to \xi$ (rendőrelv), és $f(x_n) \le c$ (mert $x_n \in H$). Az $f$ folytonossága miatt $f(x_n) \to f(\xi)$, és a rendezés öröklődése szerint $f(\xi) \le c$. Speciálisan $f(\xi) \le c < f(b)$, tehát $\xi \neq b$, vagyis $\xi < b$.

*Másodszor: $f(\xi) \ge c$.* Mivel $\xi = \sup H$ és $\xi < b$, a $(\xi, b]$ intervallum egyetlen pontja sincs $H$-ban, azaz minden $x \in (\xi, b]$-re $f(x) > c$. A jobb oldali határértéket véve, a folytonosság és a rendezés öröklődése szerint
$$f(\xi) = \lim_{x \to \xi+0} f(x) \ge c.$$

A kettőből $f(\xi) = c$. $\blacksquare$

**A feltételek szükségessége.** A folytonosság nem hagyható el: a $\operatorname{sgn}$ függvény a $[-1, 1]$-en $-1$-től $1$-ig „jut el”, de a $\frac{1}{2}$ értéket nem veszi fel. És a $\mathbb{Q}$-ban a tétel hamis: az $f(x) = x^2 - 2$ függvény a racionális számok körében $f(0) < 0 < f(2)$ ellenére sehol sem nulla.

### A közbülsőérték-tétel alkalmazásai

**1. A gyökvonás létezése.** Végre bebizonyíthatjuk, amit az egész félév során feltételeztünk!

> **Következmény.** Ha $a \ge 0$ és $k \in \mathbb{N}$, akkor létezik egyetlen olyan $b \ge 0$ szám, amelyre $b^k = a$. Ezt jelöljük $\sqrt[k]{a}$-val.

*Bizonyítás.* *Létezés:* legyen $f(x) = x^k$, ami polinom, tehát folytonos a $[0, a + 1]$ intervallumon. Itt $f(0) = 0 \le a$ és
$$f(a + 1) = (a + 1)^k \ge 1 + k a \ge 1 + a > a$$
(a Bernoulli-egyenlőtlenség szerint). A Bolzano–Darboux-tétel szerint van olyan $b \in [0, a + 1]$, amelyre $b^k = a$. *Egyértelműség:* a $[0, +\infty)$-en az $x^k$ szigorúan monoton növekedő (ha $0 \le x < y$, akkor $x^k < y^k$, indukcióval), tehát injektív. $\blacksquare$

Ez az a pillanat, amikor $\sqrt{2}$ létezését végre **bebizonyítottuk**. A félév elején (2. szakasz) csak annyit tudtunk, hogy nem racionális; most már tudjuk, hogy valós számként létezik — és ez a teljességi axióma következménye.

**2. Páratlan fokú polinomok gyökei.** *Minden páratlan fokú valós polinomnak van valós gyöke.* Legyen $p(x) = a_n x^n + \dots + a_0$, $n$ páratlan, és feltehetjük, hogy $a_n > 0$. Ekkor
$$p(x) = x^n\left(a_n + \frac{a_{n-1}}{x} + \dots + \frac{a_0}{x^n}\right),$$
ahol a zárójel $a_n > 0$-hoz tart, ha $x \to \pm\infty$, míg $x^n \to \pm\infty$ (páratlan $n$ miatt az előjel öröklődik). Tehát $\lim_{x \to +\infty} p(x) = +\infty$ és $\lim_{x \to -\infty} p(x) = -\infty$. Van tehát olyan $A < 0 < B$, hogy $p(A) < 0 < p(B)$, és a Bolzano-tétel szerint $p$-nek van gyöke $(A, B)$-ben. (Páros fokszámra ez nem igaz: $x^2 + 1$-nek nincs valós gyöke.)

**3. A felezési módszer.** A Bolzano-tétel bizonyítása nem konstruktív, de a tétel alapján egy egyszerű numerikus eljárás készíthető. Keressük az $f(x) = x^3 + x - 1$ függvény gyökét. Mivel $f(0) = -1 < 0 < 1 = f(1)$, van gyök a $[0, 1]$-ben. Felezzük az intervallumot: $f(0{,}5) = -0{,}375 < 0$, tehát a gyök a $[0{,}5;\ 1]$-ben van. $f(0{,}75) \approx 0{,}172 > 0$, tehát a $[0{,}5;\ 0{,}75]$-ben. $f(0{,}625) \approx -0{,}131 < 0$, tehát a $[0{,}625;\ 0{,}75]$-ben. És így tovább: minden lépésben feleződik az intervallum, tehát $n$ lépés után a gyököt $2^{-n}$ pontossággal ismerjük. (A gyök $\approx 0{,}6823$.) A módszer helyességét a Cantor-tulajdonság biztosítja.

**4. Fixpont-tétel.** *Ha $f : [0, 1] \to [0, 1]$ folytonos, akkor van olyan $\xi$, amelyre $f(\xi) = \xi$* (fixpont). Valóban, a $g(x) = f(x) - x$ függvény folytonos, $g(0) = f(0) \ge 0$ és $g(1) = f(1) - 1 \le 0$, tehát a Bolzano-tétel szerint van zérushelye.

### Az értékkészlet

> **Tétel.** Ha $f \in C[a, b]$, akkor az értékkészlete korlátos zárt intervallum (vagy egyetlen pont):
> $$f\big([a, b]\big) = \left[\min_{[a,b]} f,\ \max_{[a,b]} f\right].$$

*Bizonyítás.* A Weierstrass-tétel szerint a minimum és a maximum létezik; legyenek $x_{\min}$ és $x_{\max}$ a felvételi helyek. A köztük lévő intervallumon a Bolzano–Darboux-tételt alkalmazva a minimum és a maximum közötti minden érték is felvétetik. Más érték pedig nem lehet, hiszen minden érték a minimum és a maximum között van. $\blacksquare$

> **Tétel.** Ha $I$ tetszőleges intervallum (nyílt, zárt, félig nyílt, korlátos vagy nem) és $f$ folytonos $I$-n, akkor $f(I)$ is intervallum.

*Bizonyítás.* A 6. szakasz jellemzése szerint azt kell megmutatni, hogy ha $y_1 < y < y_2$ és $y_1, y_2 \in f(I)$, akkor $y \in f(I)$. Legyen $y_1 = f(x_1)$, $y_2 = f(x_2)$, ahol $x_1, x_2 \in I$. Az $x_1$ és $x_2$ által határolt zárt intervallum része $I$-nek, és ezen $f$ folytonos; a Bolzano–Darboux-tétel szerint $f$ felveszi rajta az $y$ értéket. $\blacksquare$

**A végpontok viselkedése tetszőleges lehet.**

- $I = (-1, 1)$, $f(x) = x^2$: $f(I) = [0, 1)$ — nyílt intervallum képe félig zárt.
- $I = (0, 1)$, $f(x) = \frac{1}{x}$: $f(I) = (1, +\infty)$ — korlátos intervallum képe nem korlátos.
- $I = \mathbb{R}$, $f(x) = \frac{1}{1 + x^2}$: $f(I) = (0, 1]$ — nem korlátos intervallum képe korlátos.

Csak a korlátos **zárt** intervallumok képe garantáltan korlátos zárt intervallum.

## 55. Az inverz függvény folytonossága

A XI. részben az elemi függvények inverzeit (gyökök, logaritmus, arkuszfüggvények) fogjuk bevezetni. Ehhez tudnunk kell, hogy egy folytonos, szigorúan monoton függvény inverze is folytonos. Ezt bizonyítjuk most.

> **Tétel.** Ha $f$ szigorúan monoton növekedő és folytonos az $[a, b]$-n, akkor
>
> - **a)** $R(f) = [f(a), f(b)]$;
> - **b)** $f$ invertálható, azaz létezik $f^{-1} : [f(a), f(b)] \to [a, b]$;
> - **c)** $f^{-1}$ szigorúan monoton növekedő;
> - **d)** $f^{-1}$ folytonos a $[f(a), f(b)]$-n.

*Bizonyítás.* **a)** A monotonitás miatt a minimum $f(a)$, a maximum $f(b)$, így az előző szakasz tétele szerint $R(f) = [f(a), f(b)]$.

**b)** Szigorúan monoton függvény injektív (40. szakasz), és az a) szerint szürjektív az $[f(a), f(b)]$-re, tehát bijektív.

**c)** Legyen $y_1 < y_2$, és $x_1 = f^{-1}(y_1)$, $x_2 = f^{-1}(y_2)$. Ha $x_1 \ge x_2$ volna, akkor $f$ monotonitása miatt $y_1 = f(x_1) \ge f(x_2) = y_2$ volna, ellentmondás. Tehát $x_1 < x_2$.

**d)** Legyen $y \in (f(a), f(b))$ belső pont, és $x = f^{-1}(y) \in (a, b)$. (A végpontokban a féloldali folytonosság ugyanígy igazolható.) Legyen $\varepsilon > 0$ olyan kicsi, hogy $a < x - \varepsilon$ és $x + \varepsilon < b$ (ha nagyobb $\varepsilon$-t kapunk, elég egy kisebbre igazolni). A szigorú monotonitás miatt
$$f(x - \varepsilon) < y < f(x + \varepsilon).$$
Legyen
$$\delta = \min\{f(x + \varepsilon) - y,\ y - f(x - \varepsilon)\} > 0.$$
Ha $|t - y| < \delta$, akkor $f(x - \varepsilon) < t < f(x + \varepsilon)$, és a c) pont szerint (az $f^{-1}$ monoton növekedő)
$$x - \varepsilon < f^{-1}(t) < x + \varepsilon,$$
azaz $|f^{-1}(t) - f^{-1}(y)| < \varepsilon$. Ez pontosan az $f^{-1}$ folytonossága $y$-ban. $\blacksquare$

**Szemléletesen** a d) pont bizonyítása így szól: ha az $x$ körül egy $\varepsilon$ sugarú vízszintes sávot rajzolunk az $f^{-1}$ értékeinek, akkor az $f$ ezt a sávot egy (nem feltétlenül szimmetrikus) intervallumra képezi az $y$ körül, és ennek a belsejében megtalálható egy $\delta$ sugarú szimmetrikus környezet.

**Megjegyzés.** Ugyanez érvényes szigorúan monoton **csökkenő** függvényekre (az inverz is csökkenő és folytonos), valamint tetszőleges (nyílt, félig nyílt, nem korlátos) intervallumon értelmezett folytonos, szigorúan monoton függvényekre: ilyenkor az értékkészlet is intervallum (54. szakasz), és az inverz azon folytonos. Ez a tétel alapozza meg a XI. részben a $\sqrt[k]{x}$, a $\log_a x$, az arkusz- és az area függvények folytonosságát.

## 56. Szakadási helyek

Ha egy függvény nem folytonos egy pontban, érdemes megvizsgálni, „hogyan” nem folytonos.

> **Definíció.** Tegyük fel, hogy $f$ értelmezve van az $a$ egy pontozott környezetében. Ha $f$ nem folytonos $a$-ban (beleértve azt az esetet is, ha $a$-ban nincs értelmezve), akkor $a$ az $f$ **szakadási helye**.

**A szakadások osztályozása.**

**i) Megszüntethető szakadás.** Létezik a $\lim_{x \to a} f(x) = b \in \mathbb{R}$ véges határérték, de az $f$ vagy nincs értelmezve $a$-ban, vagy $f(a) \neq b$. Ilyenkor $f$-et az $a$ pontban $b$-nek (át)definiálva a függvény folytonossá válik — innen a név. Példák: $(\operatorname{sgn} x)^2$ a $0$-ban; $\frac{x^2 - 1}{x - 1}$ az $1$-ben (itt $f(1) := 2$ választással folytonos függvényt kapunk, az $x + 1$-et).

**ii) Ugrás.** A kétoldali határérték nem létezik, de mindkét féloldali határérték létezik és véges:
$$f(a - 0) \in \mathbb{R}, \qquad f(a + 0) \in \mathbb{R}, \qquad f(a - 0) \neq f(a + 0).$$
Az $f(a + 0) - f(a - 0)$ különbség az **ugrás nagysága**. Példák: $\operatorname{sgn}$ a $0$-ban (ugrás: $2$), $[x]$ és $\{x\}$ az egész helyeken.

Az i) és ii) típusú szakadási helyeket együtt **elsőfajú** szakadási helyeknek nevezzük: ezekben mindkét féloldali határérték létezik és véges. Minden más szakadás **másodfajú**.

**Másodfajú szakadások.**

- $\frac{1}{x}$ a $0$-ban: a féloldali határértékek végtelenek.
- $\left\{\frac{1}{x}\right\}$ a $0$-ban: a féloldali határértékek nem is léteznek (az 50. szakasz példája); a függvény a $0$ felé haladva egyre sűrűbben „végigszalad” a $[0, 1)$ intervallumon.
- A Dirichlet-függvény minden pontban.

A monoton függvények szakadásai különösen egyszerűek.

> **Tétel.** Ha $f$ monoton a $(c, d)$ intervallumon és $a \in (c, d)$, akkor a féloldali határértékek léteznek és végesek. Monoton növekedő $f$ esetén
> $$f(a - 0) = \sup_{x < a} f(x) \le f(a) \le \inf_{x > a} f(x) = f(a + 0).$$

*Bizonyítás (a bal oldali határérték, növekedő eset).* A $\{f(x) : c < x < a\}$ halmaz nem üres, és $f(a)$ felső korlátja (a monotonitás miatt). Legyen
$$b = \sup\{f(x) : c < x < a\} \le f(a).$$
Legyen $\varepsilon > 0$. A szuprémum $\varepsilon$-os jellemzése szerint van olyan $x_1 \in (c, a)$, amelyre $f(x_1) > b - \varepsilon$. Legyen $\delta = a - x_1 > 0$. A monotonitás miatt minden $x \in (x_1, a) = (a - \delta, a)$-ra
$$b - \varepsilon < f(x_1) \le f(x) \le b,$$
azaz $|f(x) - b| < \varepsilon$. Tehát $f(a - 0) = b$. A jobb oldali határérték ugyanígy, az infimummal. $\blacksquare$

Vegyük észre: ez a bizonyítás szinte szó szerint megegyezik a monoton korlátos sorozatokra vonatkozó tételével (21. szakasz).

> **Következmény.** Monoton függvénynek csak **elsőfajú** szakadási helye lehet (és azok is mind ugrások).

> **Tétel.** Ha $f$ monoton a $(c, d)$ intervallumon, akkor ott legfeljebb **megszámlálhatóan sok** szakadási helye van.

*Bizonyítás.* Legyen $f$ növekedő. Ha $a$ szakadási hely, akkor az előző tétel szerint $f(a - 0) \le f(a) \le f(a + 0)$, és ezek nem mind egyenlők, tehát $f(a - 0) < f(a + 0)$. Az $\big(f(a - 0), f(a + 0)\big)$ nyílt intervallum tehát nem üres, és a racionális számok sűrűsége miatt választhatunk benne egy $r(a)$ racionális számot.

Ha $a < a'$ két szakadási hely, akkor a hozzájuk tartozó „ugrás-intervallumok” diszjunktak: ha $a < x < a'$ tetszőleges, akkor a monotonitás miatt
$$f(a + 0) \le f(x) \le f(a' - 0).$$
Ezért $r(a) < f(a + 0) \le f(a' - 0) < r(a')$, tehát $r(a) \neq r(a')$. Az $a \mapsto r(a)$ hozzárendelés tehát **injektív** leképezés a szakadási helyek halmazáról $\mathbb{Q}$-ba. Mivel $\mathbb{Q}$ megszámlálható, a szakadási helyek halmaza is az (a 29. szakasz állítása szerint egy megszámlálható halmaz részhalmazával áll bijekcióban). $\blacksquare$

Ez a gondolatmenet a félév egyik legelegánsabb érve: a **megszámlálhatóságot** — egy látszólag tisztán halmazelméleti fogalmat — arra használjuk, hogy egy analízisbeli halmaz méretét megbecsüljük. (Megjegyezzük, hogy a megszámlálhatóan sok szakadás valóban előfordulhat: van olyan monoton függvény, amely minden racionális pontban ugrik.)

## 57. Konvexitás és folytonosság

A 42–44. szakaszban a konvexitást a húrok segítségével jellemeztük. Most megmutatjuk, hogy ebből — meglepő módon — a folytonosság is következik, legalábbis nyílt intervallumon.

Emlékeztetőül: $h_{a,b}(x) = f(a) + \frac{f(b) - f(a)}{b - a}(x - a)$ a húr egyenlete, amely lineáris, tehát folytonos függvény, és $h_{a,b}(a) = f(a)$, $h_{a,b}(b) = f(b)$.

> **Lemma.** Legyen $f$ konvex az $I$ intervallumon, $a, b \in I$, $a < b$, és $x \in I \setminus [a, b]$. Ekkor
> $$f(x) \ge h_{a,b}(x).$$

Vagyis: a húr az $[a, b]$ intervallum fölött a grafikon **fölött** halad, azon kívül viszont a grafikon **alatt** (a húr meghosszabbítása a grafikon alá kerül).

*Bizonyítás.* Legyen először $x > b$. A 44. szakasz szerint $m_a$ monoton növekedő, így
$$m_a(x) = \frac{f(x) - f(a)}{x - a} \ge \frac{f(b) - f(a)}{b - a} = m_a(b).$$
A pozitív $x - a$-val szorozva és $f(a)$-t hozzáadva: $f(x) \ge f(a) + \frac{f(b) - f(a)}{b - a}(x - a) = h_{a,b}(x)$.

Ha $x < a$, akkor $m_b$ monotonitását használjuk: $x < a$ miatt $m_b(x) \le m_b(a)$, azaz
$$\frac{f(x) - f(b)}{x - b} \le \frac{f(a) - f(b)}{a - b}.$$
A negatív $x - b$-vel szorozva az egyenlőtlenség megfordul: $f(x) - f(b) \ge \frac{f(b) - f(a)}{b - a}(x - b)$, azaz $f(x) \ge h_{a,b}(x)$ (a húr $b$-ből felírt alakja szerint). $\blacksquare$

> **Tétel.** Ha $f$ konvex az $I$ **nyílt** intervallumon, akkor $f$ folytonos $I$-n.

*Bizonyítás.* Legyen $c \in I$. Mivel $I$ nyílt, választhatunk $a, b \in I$ pontokat úgy, hogy $a < c < b$. Megmutatjuk, hogy $f$ jobbról folytonos $c$-ben. Legyen $x \in (c, b)$. Ekkor

- a lemma szerint (a $[a, c]$ húrra, hiszen $x \notin [a, c]$): $h_{a,c}(x) \le f(x)$;
- a konvexitás definíciója szerint (a $[c, b]$ húrra, hiszen $x \in [c, b]$): $f(x) \le h_{c,b}(x)$.

Tehát a grafikon a $c$ pont jobb oldalán két egyenes közé szorul:
$$h_{a,c}(x) \le f(x) \le h_{c,b}(x).$$
Ha $x \to c + 0$, akkor a két szélső tag — lineáris függvények lévén — $h_{a,c}(c) = f(c)$-hez, illetve $h_{c,b}(c) = f(c)$-hez tart. A rendőrelv szerint $f(x) \to f(c)$. A bal oldali folytonosság ugyanígy igazolható (az $x \in (a, c)$ pontokra a szerepek felcserélésével). $\blacksquare$

**Az $I$ nyíltsága lényeges.** Zárt intervallum végpontjában a konvex függvény „felugorhat” anélkül, hogy elveszítené a konvexitását. Például az
$$f(x) = \begin{cases} 0 & \text{ha } 0 < x < 1, \\ 1 & \text{ha } x = 0 \text{ vagy } x = 1 \end{cases}$$
függvény konvex a $[0, 1]$-en (minden húr a grafikon fölött vagy rajta halad), de a két végpontban nem folytonos.

> **Következmény.** Folytonos függvényre a gyenge konvexitás és a konvexitás ekvivalens.

*Bizonyításvázlat.* A konvexitásból a gyenge konvexitás nyilvánvaló. Megfordítva, legyen $f$ folytonos és gyengén konvex. A számtani–mértani egyenlőtlenség bizonyításának II. lépéséhez (10. szakasz) hasonlóan, a felezőpontos egyenlőtlenséget ismételten alkalmazva indukcióval adódik, hogy
$$f\!\left(\frac{x_1 + \dots + x_{2^n}}{2^n}\right) \le \frac{f(x_1) + \dots + f(x_{2^n})}{2^n}.$$
Ha itt $k$ darab $x$-et és $2^n - k$ darab $y$-t írunk, akkor a $t = \frac{k}{2^n}$ alakú („diadikus”) súlyokra megkapjuk a Jensen-egyenlőtlenséget: $f(tx + (1 - t)y) \le tf(x) + (1 - t)f(y)$. Egy tetszőleges $t \in (0, 1)$ súlyhoz válasszunk $t_m \to t$ diadikus számokat; mivel $f$ folytonos, az egyenlőtlenség mindkét oldala folytonosan függ $t$-től, így határátmenettel a $t$-re is érvényes. $\blacksquare$

A 43. szakaszban említett, „Hamel-bázissal” konstruált gyengén konvex, de nem konvex függvény tehát szükségképpen **sehol sem folytonos** — sőt egyetlen intervallumon sem korlátos.

---

## A X. rész összefoglalása

- $f$ folytonos $a$-ban, ha $\lim_{x \to a} f(x) = f(a)$; azaz minden $\varepsilon$-hoz van $\delta$, hogy $|x - a| < \delta \implies |f(x) - f(a)| < \varepsilon$.
- Folytonos függvények összege, szorzata, hányadosa (nem nulla nevezővel) és kompozíciója folytonos; a polinomok és a racionális törtfüggvények folytonosak. Folytonos függvény és a határérték felcserélhető.
- Előjeltartás: ha $f(a) > 0$ és $f$ folytonos $a$-ban, akkor $a$ egy környezetében $f > 0$.
- Korlátos zárt intervallumon folytonos függvény korlátos, felveszi a maximumát és a minimumát (Weierstrass), és minden közbülső értéket (Bolzano–Darboux). Ebből: létezik $\sqrt[k]{a}$; páratlan fokú polinomnak van gyöke; folytonos függvény intervallumot intervallumra képez.
- Folytonos, szigorúan monoton függvény inverze is folytonos.
- Szakadások: megszüntethető, ugrás (elsőfajú), másodfajú. Monoton függvénynek csak ugrásai lehetnek, és legfeljebb megszámlálhatóan sok.
- Nyílt intervallumon konvex függvény folytonos.

## Feladatok a X. részhez

1. Hol folytonos az $f(x) = x\,D(x)$ és a $g(x) = x^2 D(x)$ függvény?
2. Határozzuk meg az $a$ paramétert úgy, hogy az $f(x) = x^2$ ($x \le 1$), $f(x) = ax + 3$ ($x > 1$) függvény folytonos legyen.
3. Bizonyítsuk be, hogy az $x^5 - 3x + 1 = 0$ egyenletnek van gyöke a $(0, 1)$ és az $(1, 2)$ intervallumban is.
4. Osztályozzuk a szakadási helyeket: a) $[x]$; b) $\frac{\sin x}{x}$ (a $\sin$ folytonosságát és a 70. szakasz $\frac{\sin x}{x} \to 1$ határértékét felhasználva); c) $\frac{1}{x^2 - 1}$; d) $\frac{|x|}{x}$.
5. Bizonyítsuk be, hogy ha $f, g \in C[a, b]$, $f(a) < g(a)$ és $f(b) > g(b)$, akkor van olyan $\xi \in (a, b)$, amelyre $f(\xi) = g(\xi)$.
6. Igaz-e, hogy ha $f$ folytonos a $(0, 1)$-en és korlátos, akkor felveszi a maximumát? És ha $f$ folytonos a $[0, +\infty)$-en, és $\lim_{x \to +\infty} f(x) = 0$, $f(0) = 1$?

### Megoldási útmutatók

1. Mindkettő csak a $0$-ban folytonos (a $c \neq 0$ pontokban a racionális, illetve irracionális pontokra szorítkozott határértékek különböznek).
2. Az $1$-ben a bal oldali határérték és a függvényérték $1$, a jobb oldali határérték $a + 3$; folytonosság pontosan akkor, ha $a = -2$.
3. $f(0) = 1 > 0$, $f(1) = -1 < 0$, $f(2) = 27 > 0$, és alkalmazzuk a Bolzano-tételt mindkét intervallumon.
4. a) Ugrás minden egész helyen. b) Megszüntethető szakadás a $0$-ban ($f(0) := 1$). c) Másodfajú a $\pm 1$-ben (végtelen féloldali határértékek). d) Ugrás a $0$-ban ($-1$-ről $1$-re; a $0$-ban nincs értelmezve).
5. Alkalmazzuk a Bolzano-tételt a $h = f - g$ függvényre: $h(a) < 0 < h(b)$.
6. Az első nem igaz: $f(x) = x$ a $(0, 1)$-en. A második igaz: van olyan $K$, hogy $x > K$ esetén $f(x) < 1$; a $[0, K]$-n a Weierstrass-tétel szerint $f$ felveszi a maximumát, ami legalább $f(0) = 1$, tehát ez az egész $[0, +\infty)$-en is maximum.

---

# XI. RÉSZ: AZ ELEMI FÜGGVÉNYEK

A középiskolából ismert függvények — szögfüggvények, hatványok, exponenciális és logaritmusfüggvények — eddig is fel-felbukkantak a példákban, de precíz definíciójuk még hiányzik. Mit jelent például $2^{\sqrt{2}}$? Az $2^3 = 2 \cdot 2 \cdot 2$, és $2^{1/2} = \sqrt{2}$ értelmes, de egy irracionális kitevőt nem lehet „ennyiszer összeszorozni”. Ebben a részben ezeket a függvényeket sorra felépítjük, és az eddigi eszközeinkkel (teljességi axióma, folytonosság, inverz függvény tétele) igazoljuk alapvető tulajdonságaikat.

## 58. Trigonometrikus függvények

A szögfüggvények precíz definíciójához a körív hosszát kellene definiálni, ehhez pedig integrálszámítás kell (a következő félév anyaga). Most a körív hosszát **szemléletből elfogadjuk**, és erre építjük a definíciót. (A trigonometrikus függvények egy teljesen precíz, geometriától független felépítése hatványsorokkal lehetséges; a 85. szakaszban látni fogjuk ezeket a sorokat.)

**Radián.** A szögeket ívmértékben (radiánban) mérjük: egy szög mértéke az egységsugarú körből kimetszett ív hossza. A teljes kör kerülete $2\pi$, így $360° = 2\pi$, $180° = \pi$, $90° = \frac{\pi}{2}$. Az analízisben **mindig radiánban** számolunk; meglátjuk (70. szakasz), hogy a $\sin' = \cos$ szabály csak így igaz.

> **Definíció.** Legyen $x \in [0, 2\pi)$. Mérjünk fel az egységkörre egy $x$ hosszúságú ívet az $(1, 0)$ pontból kiindulva, pozitív irányban (az óramutató járásával ellentétesen). Az ív $P$ végpontjának első koordinátája $\cos x$, második koordinátája $\sin x$.
>
> Tetszőleges $x \in \mathbb{R}$-re, ha $2k\pi \le x < 2(k + 1)\pi$ valamely $k \in \mathbb{Z}$-re, legyen
> $$\sin x = \sin(x - 2k\pi), \qquad \cos x = \cos(x - 2k\pi).$$

A második rész azt fejezi ki, hogy ha az íven „többször körbe megyünk”, ugyanoda érkezünk; negatív $x$ esetén pedig az óramutató járásával megegyező irányban haladunk.

**Alapvető tulajdonságok.** A definícióból közvetlenül:

- **Periodicitás:** $\sin(x + 2\pi) = \sin x$, $\cos(x + 2\pi) = \cos x$.
- **Korlátosság:** $-1 \le \sin x \le 1$, $-1 \le \cos x \le 1$.
- **Nevezetes értékek:** $\cos 0 = 1$, $\sin 0 = 0$; $\cos\frac{\pi}{2} = 0$, $\sin\frac{\pi}{2} = 1$; $\cos\pi = -1$, $\sin\pi = 0$. Általában $\cos(k\pi) = (-1)^k$, $\sin(k\pi) = 0$ ($k \in \mathbb{Z}$). Továbbá (szabályos háromszögekből és négyzetből) $\sin\frac{\pi}{6} = \frac{1}{2}$, $\sin\frac{\pi}{4} = \frac{\sqrt{2}}{2}$, $\sin\frac{\pi}{3} = \frac{\sqrt{3}}{2}$.
- **Monotonitás:** a $\cos$ szigorúan monoton csökkenő a $[0, \pi]$-n (ahogy $P$ a felső félkörön balra halad, első koordinátája csökken), és szigorúan monoton növekedő a $[\pi, 2\pi]$-n.

> **Tétel („Pitagorasz-tétel” a körön).** Minden $x$-re
> $$\sin^2 x + \cos^2 x = 1.$$

Ez közvetlenül abból következik, hogy a $P = (\cos x, \sin x)$ pont az egységkörön van, azaz origótól mért távolsága $1$.

**Paritás és tükrözések.** A $-x$ ívhez tartozó pont a $P$ tükörképe az $x$ tengelyre, ezért
$$\cos(-x) = \cos x \quad (\text{páros}), \qquad \sin(-x) = -\sin x \quad (\text{páratlan}).$$
A $\frac{\pi}{2} - x$ ívhez tartozó pont a $P$ tükörképe az $y = x$ egyenesre (amely felcseréli a koordinátákat), ezért
$$\cos\!\left(\frac{\pi}{2} - x\right) = \sin x, \qquad \sin\!\left(\frac{\pi}{2} - x\right) = \cos x.$$
Ebből adódik, hogy a $\sin$ grafikonja a $\cos$ grafikonjának $\frac{\pi}{2}$-vel jobbra tolt képe, és így a $\sin$ szigorúan monoton növekedő a $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-n, csökkenő a $\left[\frac{\pi}{2}, \frac{3\pi}{2}\right]$-n.

### Az addíciós képletek

> **Tétel (addíciós képletek).** Minden $x, y \in \mathbb{R}$-re
> $$\cos(x - y) = \cos x\cos y + \sin x\sin y, \qquad \cos(x + y) = \cos x\cos y - \sin x\sin y,$$
> $$\sin(x + y) = \sin x\cos y + \cos x\sin y, \qquad \sin(x - y) = \sin x\cos y - \cos x\sin y.$$

*Bizonyítás.* Legyen $P = (\cos x, \sin x)$ és $Q = (\cos y, \sin y)$; ezek az egységkörön vannak, és a köztük lévő ív hossza $x - y$ (a szögek különbsége). Ha a kört elforgatjuk úgy, hogy $Q$ az $(1, 0)$ pontba kerüljön, akkor $P$ a $(\cos(x - y), \sin(x - y))$ pontba kerül. A forgatás a távolságokat megtartja, ezért
$$|PQ|^2 = (\cos x - \cos y)^2 + (\sin x - \sin y)^2 = (\cos(x - y) - 1)^2 + \sin^2(x - y).$$
Bontsuk ki mindkét oldalt, és használjuk a $\sin^2 + \cos^2 = 1$ azonosságot:
$$2 - 2(\cos x\cos y + \sin x\sin y) = 2 - 2\cos(x - y).$$
Ebből az első képlet adódik. A második az elsőből $y$ helyett $-y$-t írva (a paritást felhasználva). A $\sin$ képletei a $\sin t = \cos\left(\frac{\pi}{2} - t\right)$ azonosságból: $\sin(x + y) = \cos\left(\left(\frac{\pi}{2} - x\right) - y\right) = \cos\left(\frac{\pi}{2} - x\right)\cos y + \sin\left(\frac{\pi}{2} - x\right)\sin y = \sin x \cos y + \cos x\sin y$. $\blacksquare$

**Következmények.** $y = x$-et írva a **kétszeres szögek** képletei:
$$\sin 2x = 2\sin x\cos x, \qquad \cos 2x = \cos^2 x - \sin^2 x = 2\cos^2 x - 1 = 1 - 2\sin^2 x.$$
Ezekből a **linearizáló** (félszög-) képletek:
$$\cos^2 x = \frac{1 + \cos 2x}{2}, \qquad \sin^2 x = \frac{1 - \cos 2x}{2}.$$
Végül a **különbség szorzattá alakítása**, amelyre a folytonosság és a derivált kiszámításánál lesz szükség:
$$(\otimes) \qquad \sin x - \sin y = 2\sin\frac{x - y}{2}\cos\frac{x + y}{2}.$$
*Bizonyítás:* legyen $u = \frac{x + y}{2}$ és $v = \frac{x - y}{2}$, így $x = u + v$, $y = u - v$. Az addíciós képletekkel
$$\sin(u + v) - \sin(u - v) = (\sin u\cos v + \cos u\sin v) - (\sin u\cos v - \cos u\sin v) = 2\cos u\sin v. \qquad \blacksquare$$

### A szinusz becslése és a folytonosság

> **Tétel.** **a)** Ha $x > 0$, akkor $\sin x < x$. **b)** Ha $x \neq 0$, akkor $|\sin x| < |x|$.

*Bizonyítás.* **a)** Ha $x \ge \frac{\pi}{2}$, az állítás triviális, hiszen $\sin x \le 1 < \frac{\pi}{2} \le x$. Legyen $0 < x < \frac{\pi}{2}$. Tekintsük az egységkörön az $(1, 0)$ ponttól $x$ és $-x$ ív-távolságra lévő $P$ és $P'$ pontokat. A $PP'$ húr hossza $2\sin x$ (a $P$ és $P'$ egymás tükörképei az $x$ tengelyre, második koordinátájuk $\pm\sin x$), a köztük lévő ív hossza $2x$. Mivel **két pont között a legrövidebb út az egyenes szakasz** (és ez a tulajdonság beépül az ívhossz definíciójába), $2\sin x < 2x$.

**b)** Ha $x > 0$, akkor $0 < \sin x < x$ ($x < \pi$-re), illetve $|\sin x| \le 1 < x$ ($x \ge \pi$-re). Ha $x < 0$, a páratlanság szerint $|\sin x| = |\sin(-x)| < |-x| = |x|$. $\blacksquare$

> **Tétel (Lipschitz-tulajdonság).** Minden $x, y \in \mathbb{R}$-re
> $$|\sin x - \sin y| \le |x - y|, \qquad |\cos x - \cos y| \le |x - y|.$$

*Bizonyítás.* A $(\otimes)$ képlet és az előző tétel szerint
$$|\sin x - \sin y| = 2\left|\sin\frac{x - y}{2}\right|\cdot\left|\cos\frac{x + y}{2}\right| \le 2\cdot\frac{|x - y|}{2}\cdot 1 = |x - y|.$$
A koszinuszra a $\cos x = \sin\left(\frac{\pi}{2} - x\right)$ azonosság szerint
$$|\cos x - \cos y| = \left|\sin\left(\tfrac{\pi}{2} - x\right) - \sin\left(\tfrac{\pi}{2} - y\right)\right| \le |y - x|. \qquad \blacksquare$$

> **Következmény.** A $\sin$ és a $\cos$ folytonos $\mathbb{R}$-en. Sőt, adott $\varepsilon > 0$-hoz a $\delta = \varepsilon$ választás **minden** pontban megfelelő.

(Az utóbbi tulajdonságot **egyenletes folytonosságnak** nevezzük: a $\delta$ nem függ a vizsgált ponttól. Ennek jelentősége a következő félévben, az integrálszámításban mutatkozik meg.)

> **Definíció.** $\displaystyle \operatorname{tg} x = \tan x = \frac{\sin x}{\cos x}$, $\displaystyle \operatorname{ctg} x = \cot x = \frac{\cos x}{\sin x}$.

A $\tan$ értelmezési tartománya $\mathbb{R} \setminus \left\{\frac{\pi}{2} + k\pi : k \in \mathbb{Z}\right\}$ (a $\cos$ zérushelyein kívül), a $\cot$-é $\mathbb{R}\setminus\{k\pi : k \in \mathbb{Z}\}$. Mindkettő $\pi$ szerint periodikus (hiszen $\sin(x + \pi) = -\sin x$ és $\cos(x + \pi) = -\cos x$), páratlan, és a hányadosszabály szerint folytonos az értelmezési tartománya minden pontjában. A $\tan$ a $\left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$-n szigorúan monoton növekedő (a számláló nő, a pozitív nevező a $[0, \frac{\pi}{2})$-n csökken; a negatív oldalra a páratlanság viszi át), és a végpontokban $\pm\infty$-hez tart.

## 59. Az arkusz (ciklometrikus) függvények

A $\sin x = \frac{1}{2}$ egyenletnek végtelen sok megoldása van: $\frac{\pi}{6}$, $\frac{5\pi}{6}$, $\frac{\pi}{6} + 2\pi, \dots$ A periodikus függvények tehát **nem injektívek**, így nem invertálhatók. Ha azonban alkalmas intervallumra szorítjuk őket, ahol szigorúan monotonok, akkor az 55. szakasz tétele szerint folytonos, szigorúan monoton inverzük van. A szokásos választás:

- $\sin|_{[-\pi/2,\ \pi/2]}$: szigorúan monoton növekedő, értékkészlete $[-1, 1]$;
- $\cos|_{[0,\ \pi]}$: szigorúan monoton csökkenő, értékkészlete $[-1, 1]$;
- $\tan|_{(-\pi/2,\ \pi/2)}$: szigorúan monoton növekedő, értékkészlete $\mathbb{R}$;
- $\cot|_{(0,\ \pi)}$: szigorúan monoton csökkenő, értékkészlete $\mathbb{R}$.

> **Definíció (arkuszfüggvények).** Az előbbi megszorítások inverzei:
> $$\arcsin : [-1, 1] \to \left[-\frac{\pi}{2}, \frac{\pi}{2}\right], \qquad \arccos : [-1, 1] \to [0, \pi],$$
> $$\operatorname{arctg} = \arctan : \mathbb{R} \to \left(-\frac{\pi}{2}, \frac{\pi}{2}\right), \qquad \operatorname{arcctg} = \operatorname{arccot} : \mathbb{R} \to (0, \pi).$$

Szavakban: $\arcsin y$ az a $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-beli szög (ív), amelynek szinusza $y$. Az elnevezés a latin *arcus* (ív) szóból ered. Az 55. szakasz szerint mind a négy függvény folytonos és szigorúan monoton.

**Példák.** $\arcsin\frac{1}{2} = \frac{\pi}{6}$, $\arcsin(-1) = -\frac{\pi}{2}$, $\arccos\frac{1}{2} = \frac{\pi}{3}$, $\arccos(-1) = \pi$, $\arctan 1 = \frac{\pi}{4}$, $\lim_{x \to +\infty}\arctan x = \frac{\pi}{2}$.

**Vigyázat:** $\sin(\arcsin y) = y$ minden $y \in [-1, 1]$-re, de $\arcsin(\sin x) = x$ **csak** $x \in \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-re igaz. Például $\arcsin(\sin\pi) = \arcsin 0 = 0 \neq \pi$.

**Összefüggések.**
$$\arccos x = \frac{\pi}{2} - \arcsin x \qquad (x \in [-1, 1]).$$
*Bizonyítás:* legyen $t = \frac{\pi}{2} - \arcsin x$. Mivel $\arcsin x \in \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$, ezért $t \in [0, \pi]$; és $\cos t = \sin(\arcsin x) = x$. Az $\arccos x$ az egyetlen $[0, \pi]$-beli szám, amelynek koszinusza $x$, tehát $t = \arccos x$. $\blacksquare$ Hasonlóan $\operatorname{arccot} x = \frac{\pi}{2} - \arctan x$.

**Hasznos azonosság:** $\cos(\arcsin x) = \sqrt{1 - x^2}$. Valóban, ha $t = \arcsin x$, akkor $\cos^2 t = 1 - \sin^2 t = 1 - x^2$, és $t \in \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$ miatt $\cos t \ge 0$, tehát a pozitív gyököt kell venni. Ezt az azonosságot a 70. szakaszban, az $\arcsin$ deriválásánál használjuk.

## 60. Hatványozás

A hatványozást lépésről lépésre terjesztjük ki: a természetes kitevőkről az egészekre, majd a racionálisakra, végül a valósakra. Minden lépést ugyanaz a cél vezérel: **a hatványozás azonosságai maradjanak érvényben.**

**Természetes kitevő.** $a^n = \underbrace{a \cdot a \cdots a}_{n}$. Ha $0 < a < b$, akkor minden $n$-re $a^n < b^n$ (indukcióval: $a^n = a\cdot a^{n-1} < a\cdot b^{n-1} < b\cdot b^{n-1}$). A pozitív számok $k$-adik gyökének létezését és egyértelműségét az 54. szakaszban láttuk be.

**A hatványazonosságok.** Ha $a, b > 0$ és $x, y \in \mathbb{N}$, akkor (indukcióval)
$$\text{I.}\ \ (ab)^x = a^x b^x, \qquad \text{II.}\ \ a^{x + y} = a^x a^y, \qquad \text{III.}\ \ (a^x)^y = a^{xy}.$$

**1. lépés: egész kitevő.** Ha a II. azonosság érvényben marad, akkor $a^{x + 0} = a^x\cdot a^0$, amiből $a^0 = 1$; és $a^{x + (-x)} = a^0 = 1$, amiből $a^{-x} = \frac{1}{a^x}$. Ezért **definiáljuk** (ha $a \neq 0$):
$$a^0 = 1, \qquad a^{-n} = \frac{1}{a^n}.$$
Az azonosságok egész kitevőkre is érvényesek (esetszétválasztással ellenőrizhető). A $0$ alapra: $0^n = 0$ ($n \in \mathbb{N}$), megállapodás szerint $0^0 = 1$, negatív kitevőre nem értelmezzük.

**2. lépés: racionális kitevő.** Ha a III. azonosság érvényben marad, akkor $\left(a^{p/q}\right)^q = a^p$, tehát $a^{p/q}$-nak az $a^p$ szám $q$-adik gyökének kell lennie. Legyen $a > 0$, $p \in \mathbb{Z}$, $q \in \mathbb{N}$:
$$a^{p/q} = \sqrt[q]{a^p}.$$
(A pozitív gyököt választjuk. A negatív alapot innentől kizárjuk, mert például $(-8)^{1/3} = -2$, de $(-8)^{2/6} = \sqrt[6]{64} = 2$ — a definíció függne a tört alakjától.)

> **Tétel (a definíció jó).** Ha $a > 0$ és $\frac{n}{m} = \frac{p}{q}$ ($m, q \in \mathbb{N}$), akkor $\sqrt[m]{a^n} = \sqrt[q]{a^p}$.

*Bizonyítás.* Emeljük mindkét számot az $mq$-adik hatványra (egész kitevős azonosságokkal):
$$\left(\sqrt[m]{a^n}\right)^{mq} = (a^n)^q = a^{nq}, \qquad \left(\sqrt[q]{a^p}\right)^{mq} = (a^p)^m = a^{pm}.$$
Mivel $nq = pm$, a két hatvány egyenlő. A pozitív számok körében az $mq$-adik hatványra emelés injektív, tehát maguk a számok is egyenlők. $\blacksquare$

> **Tétel.** A hatványazonosságok (I.–III.) érvényesek, ha $a, b > 0$ és $x, y \in \mathbb{Q}$.

*Bizonyítás (a II. azonosság).* Legyen $x = \frac{p}{q}$, $y = \frac{r}{s}$. Emeljük mindkét oldalt a $qs$-edik hatványra:
$$\left(a^{\frac{p}{q} + \frac{r}{s}}\right)^{qs} = \left(a^{\frac{ps + rq}{qs}}\right)^{qs} = a^{ps + rq}, \qquad \left(a^{p/q}a^{r/s}\right)^{qs} = \left(a^{p/q}\right)^{qs}\left(a^{r/s}\right)^{qs} = a^{ps}a^{rq} = a^{ps + rq}.$$
A két pozitív szám $qs$-edik hatványa egyenlő, tehát maguk is egyenlők. A többi azonosság ugyanígy. $\blacksquare$

> **Tétel (monotonitás racionális kitevőre).** Ha $a > 0$ és $r \in \mathbb{Q}$, akkor $a^r > 0$. Ha $r_1 < r_2$ racionálisak, akkor
> $$a > 1 \implies a^{r_1} < a^{r_2}, \qquad 0 < a < 1 \implies a^{r_1} > a^{r_2}.$$

*Bizonyítás.* A pozitivitás a definícióból látszik. Legyen $a > 1$. Először: ha $r = \frac{p}{q} > 0$, akkor $a^r > 1$. Valóban, $a^p > 1$, és ha $\sqrt[q]{a^p} \le 1$ volna, akkor $q$-adik hatványra emelve $a^p \le 1$ adódna. Ebből
$$a^{r_2} = a^{r_1}\cdot a^{r_2 - r_1} > a^{r_1},$$
hiszen $a^{r_2 - r_1} > 1$. A $0 < a < 1$ eset az $\frac{1}{a} > 1$ alapra visszavezethető. $\blacksquare$

**3. lépés: valós kitevő.** Mennyi legyen $2^{\sqrt{2}}$? A monotonitás alapján a racionális közelítésekből:
$$2^{1} < 2^{1{,}4} < 2^{1{,}41} < 2^{1{,}414} < \dots < 2^{\sqrt{2}}\ (?) < \dots < 2^{1{,}415} < 2^{1{,}42} < 2^{1{,}5}.$$
A $2^{\sqrt{2}}$ értékét tehát „alulról” és „felülről” is közelíthetjük racionális kitevős hatványokkal. A teljességi axióma ezt a közelítést precízzé teszi.

> **Definíció.** Ha $a > 1$ és $x \in \mathbb{R}$, akkor
> $$a^x = \sup\underbrace{\{a^r : r \in \mathbb{Q},\ r < x\}}_{A_x} = \inf\underbrace{\{a^s : s \in \mathbb{Q},\ s > x\}}_{B_x}.$$
> Ha $0 < a < 1$, akkor $a^x = \left(\frac{1}{a}\right)^{-x}$; és $1^x = 1$.

A definícióhoz két dolgot kell igazolni: hogy a szuprémum és az infimum létezik, és hogy **egyenlők** (különben a definíció nem volna egyértelmű). Racionális $x$-re pedig azt is, hogy az új definíció egybeesik a régivel.

> **Tétel.** Ha $a > 1$ és $x \in \mathbb{R}$, akkor $\sup A_x = \inf B_x$. Ha $x$ racionális, ez a közös érték a korábban definiált $a^x$.

*Bizonyítás.* Az $A_x$ és $B_x$ halmazok nem üresek (az arkhimédészi tulajdonság szerint van $x$-nél kisebb és nagyobb racionális szám). Ha $r < x < s$ racionálisak, akkor a monotonitás szerint $a^r < a^s$: minden $A_x$-beli elem kisebb minden $B_x$-belinél. Ezért $B_x$ bármely eleme felső korlátja $A_x$-nek, így $\sup A_x$ létezik és $\sup A_x \le a^s$ minden $s > x$ racionálisra; tehát $\sup A_x$ alsó korlátja $B_x$-nek, és így
$$\sup A_x \le \inf B_x.$$
Az egyenlőséghez rögzítsünk egy $s_0 > x$ racionális számot. Legyen $n \in \mathbb{N}$, és válasszunk (a racionális számok sűrűsége szerint) olyan $r < x < s < s_0$ racionális számokat, amelyekre $s - r < \frac{1}{n}$. Ekkor
$$0 \le \inf B_x - \sup A_x \le a^s - a^r = a^r\left(a^{s - r} - 1\right) \le a^{s_0}\left(a^{1/n} - 1\right).$$
Itt felhasználtuk, hogy $a^r < a^{s_0}$ és $a^{s - r} < a^{1/n}$. A 24. szakasz szerint $a^{1/n} = \sqrt[n]{a} \to 1$, tehát a jobb oldal $0$-hoz tart. Mivel a bal oldali nemnegatív szám minden $n$-re legfeljebb ekkora, egyenlő $0$-val.

Ha $x$ racionális, akkor a régi $a^x$ a monotonitás miatt $A_x$ minden eleménél nagyobb és $B_x$ minden eleménél kisebb, tehát $\sup A_x \le a^x \le \inf B_x$, és a kettő egyenlősége miatt mindhárom egyenlő. $\blacksquare$

> **Tétel.** Minden $a > 0$ és $x \in \mathbb{R}$ esetén $a^x > 0$. Ha $x_1 < x_2$, akkor
> $$a > 1 \implies a^{x_1} < a^{x_2}, \qquad 0 < a < 1 \implies a^{x_1} > a^{x_2}.$$

*Bizonyítás ($a > 1$).* Egy $r < x$ racionális számra $a^x \ge a^r > 0$. Ha $x_1 < x_2$, válasszunk racionális számokat úgy, hogy $x_1 < r_1 < r_2 < x_2$. Ekkor
$$a^{x_1} \le a^{r_1} < a^{r_2} \le a^{x_2},$$
ahol az első egyenlőtlenség az infimumos, az utolsó a szuprémumos definícióból, a középső a racionális kitevős monotonitásból adódik. $\blacksquare$

## 61. Az exponenciális és a hatványfüggvény

> **Tétel (folytonosság).** Ha $a > 0$ és $x_n \to x$, akkor $a^{x_n} \to a^x$. Következésképpen az $x \mapsto a^x$ függvény folytonos $\mathbb{R}$-en.

*Bizonyítás ($a > 1$; a $0 < a < 1$ eset az $\frac{1}{a}$ alapra visszavezethető, $a = 1$ triviális).* Legyen $\varepsilon > 0$. A szuprémum és az infimum $\varepsilon$-os jellemzése szerint vannak olyan $r < x < s$ racionális számok, amelyekre
$$a^x - \varepsilon < a^r \qquad \text{és} \qquad a^s < a^x + \varepsilon.$$
Mivel $x_n \to x$ és $r < x < s$, egy $n_0$-tól kezdve $x_n \in (r, s)$. A szigorú monotonitás miatt ekkor
$$a^x - \varepsilon < a^r < a^{x_n} < a^s < a^x + \varepsilon,$$
azaz $|a^{x_n} - a^x| < \varepsilon$. Az átviteli elv szerint a függvény folytonos. $\blacksquare$

**Alternatív definíció.** Az $a^x$-et úgy is definiálhattuk volna, hogy veszünk egy $x_n \to x$ racionális sorozatot, és $a^x := \lim a^{x_n}$. Ehhez azonban meg kellett volna mutatni, hogy a határérték létezik, **és** hogy nem függ az $(x_n)$ sorozat választásától. A szuprémumos definíció ezt a kettős kötelezettséget kerüli el; utólag pedig a folytonossági tétel azt is megmutatja, hogy a két definíció egybeesik.

> **Tétel.** A hatványazonosságok érvényesek, ha $a, b > 0$ és $x, y \in \mathbb{R}$:
> $$(ab)^x = a^x b^x, \qquad a^{x + y} = a^x a^y, \qquad (a^x)^y = a^{xy}.$$

*Bizonyítás.* Legyenek $r_n \to x$ és $s_n \to y$ racionális sorozatok. A folytonosság és a racionális eset szerint
$$(ab)^x = \lim (ab)^{r_n} = \lim a^{r_n}b^{r_n} = a^x b^x, \qquad a^{x + y} = \lim a^{r_n + s_n} = \lim a^{r_n}a^{s_n} = a^x a^y.$$
A harmadik azonosságnál két lépésben haladunk. Először racionális $y = \frac{p}{q}$-ra: a második azonosságot ismételten alkalmazva $(a^x)^p = a^{xp}$, és ennek $q$-adik gyöke $(a^x)^{p/q} = a^{xp/q}$ (mert $\left(a^{xp/q}\right)^q = a^{xp}$). Tetszőleges valós $y$-ra, $s_n \to y$ racionális sorozattal, a $b = a^x$ alapú és az $a$ alapú exponenciális függvény folytonossága szerint
$$(a^x)^y = \lim (a^x)^{s_n} = \lim a^{xs_n} = a^{xy}. \qquad \blacksquare$$

> **Definíció.** Legyen $a > 0$ rögzített. Az $x \mapsto a^x$ ($x \in \mathbb{R}$) függvény az **$a$ alapú exponenciális függvény** (jelölése $\exp_a$ is). Ha viszont $b \in \mathbb{R}$ rögzített, akkor az $x \mapsto x^b$ ($x > 0$) függvény a **$b$ kitevőjű hatványfüggvény**.

A kettő megkülönböztetése lényeges: az elsőben a **kitevő** a változó, a másodikban az **alap**. A deriválási szabályaik is egészen mások lesznek: $(2^x)' = 2^x\ln 2$, míg $(x^2)' = 2x$.

> **Tétel (az exponenciális függvény tulajdonságai).**
>
> - Ha $a > 1$: $a^x > 0$, a függvény szigorúan monoton növekedő és folytonos, és
> $$\lim_{x \to +\infty} a^x = +\infty, \qquad \lim_{x \to -\infty} a^x = 0.$$
>
> - Ha $0 < a < 1$: $a^x > 0$, szigorúan monoton csökkenő és folytonos, és $\lim_{x \to +\infty} a^x = 0$, $\lim_{x \to -\infty} a^x = +\infty$.
>
> Mindkét esetben az értékkészlet $(0, +\infty)$.

*Bizonyítás ($a > 1$).* A pozitivitást, a monotonitást és a folytonosságot már beláttuk. A 22. szakasz szerint $a^n \to +\infty$. Adott $K$-hoz van olyan $N$, hogy $a^N > K$, és a monotonitás miatt minden $x > N$-re $a^x > a^N > K$; tehát $\lim_{x \to +\infty} a^x = +\infty$. Ha $x \to -\infty$, akkor $a^x = \frac{1}{a^{-x}}$, ahol $a^{-x} \to +\infty$, tehát $a^x \to 0$. Az értékkészlet az 54. szakasz szerint intervallum, amely tetszőlegesen nagy és tetszőlegesen kicsi pozitív számokat tartalmaz, de csak pozitívakat; tehát $(0, +\infty)$. $\blacksquare$

> **Tétel (a hatványfüggvény tulajdonságai).** A $(0, +\infty)$-en:
>
> - ha $b > 0$: $x^b$ szigorúan monoton növekedő és folytonos, $\lim_{x \to 0+0} x^b = 0$, $\lim_{x \to +\infty} x^b = +\infty$;
> - ha $b < 0$: $x^b$ szigorúan monoton csökkenő és folytonos, $\lim_{x \to 0+0} x^b = +\infty$, $\lim_{x \to +\infty} x^b = 0$.

*Bizonyítás ($b > 0$).* Ha $t > 1$, akkor $t^b > t^0 = 1$ (az exponenciális függvény monotonitása). Így $0 < x < y$ esetén
$$y^b = \left(\frac{y}{x}\cdot x\right)^b = \left(\frac{y}{x}\right)^b x^b > x^b.$$
A határértékek: $x > K^{1/b}$ esetén $x^b > K$; $0 < x < \varepsilon^{1/b}$ esetén $x^b < \varepsilon$. A folytonosság: legyen $x_0 > 0$ és $0 < \varepsilon < x_0^b$, továbbá
$$A = (x_0^b - \varepsilon)^{1/b}, \qquad B = (x_0^b + \varepsilon)^{1/b};$$
a monotonitás miatt $A < x_0 < B$. Ha $A < x < B$, akkor $x_0^b - \varepsilon = A^b < x^b < B^b = x_0^b + \varepsilon$. Tehát $\delta = \min\{x_0 - A, B - x_0\}$ jó. $\blacksquare$

(Később, a 72. szakaszban, a hatványfüggvény folytonossága egyszerűbben is adódik az $x^b = e^{b\ln x}$ alakból.)

## 62. A logaritmusfüggvények

Legyen $a > 0$, $a \neq 1$. Az $a^x$ függvény szigorúan monoton és folytonos $\mathbb{R}$-en, értékkészlete $(0, +\infty)$. Az 55. szakasz tétele szerint tehát van folytonos és szigorúan monoton inverze.

> **Definíció.** Az $x \mapsto a^x$ függvény inverze az **$a$ alapú logaritmus**, jelölése $\log_a$. Azaz
> $$(*) \qquad \log_a x = y \iff a^y = x \qquad (x > 0,\ y \in \mathbb{R}).$$

Szavakban: $\log_a x$ az a kitevő, amelyre $a$-t emelve $x$-et kapunk. Például $\log_2 8 = 3$, $\log_{10} 0{,}01 = -2$, $\log_a 1 = 0$, $\log_a a = 1$. Az inverz definíciója szerint
$$a^{\log_a x} = x \quad (x > 0), \qquad \log_a(a^y) = y \quad (y \in \mathbb{R}).$$

**Tulajdonságok.**

1. $D(\log_a) = (0, +\infty)$, $R(\log_a) = \mathbb{R}$.
2. $\log_a$ folytonos a $(0, +\infty)$-en (55. szakasz).
3. Ha $a > 1$, akkor $\log_a$ szigorúan monoton növekedő; ha $0 < a < 1$, akkor szigorúan monoton csökkenő.
4. Ha $a > 1$, akkor
$$\lim_{x \to +\infty}\log_a x = +\infty, \qquad \lim_{x \to 0+0}\log_a x = -\infty;$$
ha $0 < a < 1$, a két határérték felcserélődik.

*Bizonyítás (4., $a > 1$).* Adott $K$-hoz, ha $x > a^K$, akkor a monotonitás miatt $\log_a x > \log_a(a^K) = K$. Hasonlóan, ha $0 < x < a^K$, akkor $\log_a x < K$. $\blacksquare$

**5. A logaritmus azonosságai.** Ha $a > 0$, $a \neq 1$ és $x, y > 0$, $t \in \mathbb{R}$, akkor
$$\log_a(xy) = \log_a x + \log_a y, \qquad \log_a\frac{x}{y} = \log_a x - \log_a y, \qquad \log_a(x^t) = t\log_a x.$$

*Bizonyítás.* Minden azonosságot a hatványazonosságokra és $(*)$-ra vezetünk vissza. Az elsőre:
$$a^{\log_a x + \log_a y} = a^{\log_a x}\cdot a^{\log_a y} = xy = a^{\log_a(xy)}.$$
Mivel az $a^t$ függvény injektív, a kitevők egyenlők. A harmadikra:
$$a^{\log_a(x^t)} = x^t = \left(a^{\log_a x}\right)^t = a^{t\log_a x},$$
és ismét az injektivitás. A második az első két azonosságból ($\frac{x}{y} = x\cdot y^{-1}$). $\blacksquare$

A logaritmus tehát a **szorzást összeadássá**, a hatványozást szorzássá alakítja. Ez volt a logaritmus feltalálásának (John Napier, 1614) gyakorlati oka: a logarléc és a logaritmustáblák a XX. század második feléig a mérnöki számolás alapeszközei voltak.

> **Tétel (áttérés más alapra).** Ha $a, b > 0$, $a, b \neq 1$, akkor minden $x > 0$-ra
> $$\log_a x = \frac{\log_b x}{\log_b a}.$$

*Bizonyítás.* Legyen $y = \log_a x$, azaz $a^y = x$. Mindkét oldal $b$ alapú logaritmusát véve, a harmadik azonossággal: $y\log_b a = \log_b x$. $\blacksquare$

Minden logaritmus tehát egyetlen „alaplogaritmus” konstansszorosa; a következő szakaszban látjuk, melyik a legtermészetesebb alap.

## 63. Az e szám és a természetes logaritmus

A 17. szakaszban beláttuk, hogy az
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekedő, a
$$d_n = \left(1 + \frac{1}{n}\right)^{n+1}$$
sorozat szigorúan monoton csökkenő, és $e_n < d_n$. A 21. szakasz szerint mindkettő konvergens. Most megmutatjuk, hogy ugyanahhoz a számhoz tartanak — és ezzel a két sorozat egymásba skatulyázott intervallumokat ad ($[e_n, d_n]$), amelyek egyetlen közös pontja az $e$.

> **Állítás.** Minden $n, m \in \mathbb{N}$-re $e_n < d_m$.

*Bizonyítás.* Ha $n = m$, akkor $d_n = e_n\left(1 + \frac{1}{n}\right) > e_n$. Ha $m < n$, akkor $e_n < d_n < d_m$ (a $d$ csökkenése miatt). Ha $m > n$, akkor $e_n < e_m < d_m$ (az $e$ növekedése miatt). $\blacksquare$

> **Tétel.** $\displaystyle \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^{n+1}$.

*Bizonyítás.* Legyen $e = \lim e_n$ és $f = \lim d_n$. Rögzített $m$ mellett minden $n$-re $e_n < d_m$, tehát határátmenettel $e \le d_m$; majd $m \to \infty$-nel $e \le f$. A másik irányhoz:
$$0 \le f - e \le d_n - e_n = \left(1 + \frac{1}{n}\right)^n\cdot\frac{1}{n} = \frac{e_n}{n} < \frac{4}{n},$$
mert $e_n < d_1 = 4$. Ez minden $n$-re igaz, tehát $f - e = 0$. $\blacksquare$

(A 25. szakasz szorzatszabályával rövidebben is: $d_n = e_n\cdot\left(1 + \frac{1}{n}\right) \to e \cdot 1$.)

> **Definíció.**
> $$e = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n = 2{,}718281828459\dots$$

A becslés: $e_n < e < d_n$ minden $n$-re. Például $n = 1000$-re $2{,}7169 < e < 2{,}7196$. Ez a közelítés lassú; a 85. szakaszban egy sokkal gyorsabbat ismerünk meg, az $e = \sum_{n=0}^\infty \frac{1}{n!}$ sort.

> **Definíció.** Az $e$ alapú logaritmust **természetes logaritmusnak** nevezzük, jelölése $\ln x$ (a *logarithmus naturalis* rövidítése; egyes szerzőknél egyszerűen $\log x$).

Az áttérési képlet szerint $\log_a x = \frac{\ln x}{\ln a}$, és $a^x = e^{x\ln a}$ (hiszen $a = e^{\ln a}$). Az, hogy miért éppen az $e$ a „természetes” alap, a 72. szakaszban derül ki: az $e^x$ az egyetlen exponenciális függvény, amely **megegyezik a saját deriváltjával**, és a $\ln x$ deriváltja a lehető legegyszerűbb, $\frac{1}{x}$.

## 64. Hiperbolikus függvények

Az exponenciális függvényből néhány olyan függvényt építhetünk, amely meglepő módon a szögfüggvényekhez hasonlóan viselkedik.

> **Definíció.**
> $$\operatorname{sh} x = \frac{e^x - e^{-x}}{2} \quad (\text{szinusz hiperbolikusz}), \qquad \operatorname{ch} x = \frac{e^x + e^{-x}}{2} \quad (\text{koszinusz hiperbolikusz}).$$
> (Más jelöléssel $\sinh x$ és $\cosh x$.)

**Alaptulajdonságok.**

- Mindkettő folytonos $\mathbb{R}$-en (folytonos függvények összege és különbsége).
- Az $\operatorname{sh}$ páratlan, a $\operatorname{ch}$ páros: $\operatorname{sh}(-x) = \frac{e^{-x} - e^x}{2} = -\operatorname{sh} x$, és hasonlóan $\operatorname{ch}(-x) = \operatorname{ch} x$. Valójában ez a felbontás éppen az $e^x$ páros és páratlan részre bontása (VIII. rész, 1. feladat): $e^x = \operatorname{ch} x + \operatorname{sh} x$.
- $\operatorname{sh}$ szigorúan monoton növekedő, hiszen $e^x$ szigorúan nő és $e^{-x}$ szigorúan csökken, így a különbségük szigorúan nő.
- $\operatorname{sh} 0 = 0$, $\operatorname{ch} 0 = 1$, és
$$\lim_{x \to +\infty}\operatorname{sh} x = +\infty, \qquad \lim_{x \to -\infty}\operatorname{sh} x = -\infty, \qquad \lim_{x \to \pm\infty}\operatorname{ch} x = +\infty.$$

> **Tétel (hiperbolikus alapazonosság).** $\operatorname{ch}^2 x - \operatorname{sh}^2 x = 1$.

*Bizonyítás.*
$$\left(\frac{e^x + e^{-x}}{2}\right)^2 - \left(\frac{e^x - e^{-x}}{2}\right)^2 = \frac{(e^{2x} + 2 + e^{-2x}) - (e^{2x} - 2 + e^{-2x})}{4} = \frac{4}{4} = 1. \qquad \blacksquare$$

**Az elnevezés magyarázata.** Az azonosság szerint minden $t$-re az $(\operatorname{ch} t, \operatorname{sh} t)$ pont az
$$x^2 - y^2 = 1$$
egyenletű **hiperbolán** van — pontosan úgy, ahogy a $(\cos t, \sin t)$ pont az $x^2 + y^2 = 1$ egyenletű **körön**. (Sőt, a $t$ paraméter mindkét esetben egy terület kétszerese: a kör, illetve a hiperbola egy szektoráé.) A komplex függvénytanban a párhuzam még szorosabb: $\cos x = \frac{e^{ix} + e^{-ix}}{2}$ és $\sin x = \frac{e^{ix} - e^{-ix}}{2i}$.

**A láncgörbe.** A két végén felfüggesztett, saját súlya alatt belógó lánc vagy kötél alakja egy $y = c\operatorname{ch}\frac{x}{c}$ görbe (láncgörbe). Galilei még parabolának gondolta; a helyes választ Leibniz, Huygens és Johann Bernoulli adta meg 1691-ben.

**Következmények.** $\operatorname{ch} x \ge 1$ minden $x$-re (hiszen $\operatorname{ch}^2 x = 1 + \operatorname{sh}^2 x \ge 1$ és $\operatorname{ch} x > 0$), és
$$\operatorname{ch} x = \sqrt{1 + \operatorname{sh}^2 x}.$$
Ebből adódik, hogy $\operatorname{ch}$ szigorúan monoton növekedő a $[0, +\infty)$-en (ott $\operatorname{sh} x \ge 0$ szigorúan nő, így $\operatorname{sh}^2 x$ is), és szigorúan monoton csökkenő a $(-\infty, 0]$-n.

> **Tétel (addíciós képletek).**
> $$\operatorname{sh}(x \pm y) = \operatorname{sh} x\operatorname{ch} y \pm \operatorname{ch} x\operatorname{sh} y, \qquad \operatorname{ch}(x \pm y) = \operatorname{ch} x\operatorname{ch} y \pm \operatorname{sh} x\operatorname{sh} y.$$

*Bizonyítás (az első, $+$ előjellel).* A jobb oldalt kibontva:
$$\frac{(e^x - e^{-x})(e^y + e^{-y}) + (e^x + e^{-x})(e^y - e^{-y})}{4} = \frac{2e^{x + y} - 2e^{-x - y}}{4} = \operatorname{sh}(x + y),$$
hiszen a vegyes tagok ($e^{x - y}$ és $e^{-x + y}$) kiesnek. A többi ugyanígy. $\blacksquare$

Figyeljük meg az előjelet a $\operatorname{ch}$ képletében: a trigonometrikus $\cos(x + y) = \cos x\cos y - \sin x\sin y$ képlettel szemben itt **nincs** előjelváltás. Következmény: $\operatorname{sh} 2x = 2\operatorname{sh} x\operatorname{ch} x$ és $\operatorname{ch} 2x = \operatorname{ch}^2 x + \operatorname{sh}^2 x$.

> **Definíció.**
> $$\operatorname{th} x = \frac{\operatorname{sh} x}{\operatorname{ch} x} = \frac{e^x - e^{-x}}{e^x + e^{-x}}, \qquad \operatorname{cth} x = \frac{\operatorname{ch} x}{\operatorname{sh} x} \quad (x \neq 0).$$

A $\operatorname{th}$ értelmezett $\mathbb{R}$-en (a nevező mindig pozitív), páratlan, szigorúan monoton növekedő (ez az $\operatorname{th} x = 1 - \frac{2}{e^{2x} + 1}$ alakból látszik), és
$$\lim_{x \to +\infty}\operatorname{th} x = 1, \qquad \lim_{x \to -\infty}\operatorname{th} x = -1,$$
tehát értékkészlete a $(-1, 1)$ intervallum. A $\operatorname{cth}$-ra $\lim_{x \to \pm\infty}\operatorname{cth} x = \pm 1$ és $\lim_{x \to 0\pm 0}\operatorname{cth} x = \pm\infty$.

## 65. Az area függvények

A hiperbolikus függvények inverzeit **area** függvényeknek nevezzük (a latin *area*, terület szóból, utalva a hiperbolaszektor területére). A trigonometrikus esettel szemben itt az inverzek **zárt alakban**, logaritmussal felírhatók.

> **Definíció (area szinusz hiperbolikusz).** Az $\operatorname{sh} : \mathbb{R} \to \mathbb{R}$ függvény szigorúan monoton növekedő, folytonos, és értékkészlete $\mathbb{R}$ (a határértékei $\pm\infty$, és az 54. szakasz szerint az értékkészlet intervallum). Inverze, az $\operatorname{arsh} : \mathbb{R} \to \mathbb{R}$ függvény, folytonos és szigorúan monoton növekedő, és
> $$\operatorname{arsh} x = \ln\left(x + \sqrt{x^2 + 1}\right).$$

*Bizonyítás (a képlet).* Oldjuk meg az $y = \operatorname{sh} x$ egyenletet $x$-re. Az $u = e^x > 0$ jelöléssel
$$y = \frac{u - u^{-1}}{2} \implies u^2 - 2yu - 1 = 0 \implies u = y \pm \sqrt{y^2 + 1}.$$
Mivel $\sqrt{y^2 + 1} > |y|$, a „$-$” előjelű gyök negatív volna, tehát $u = y + \sqrt{y^2 + 1}$, és $x = \ln u = \ln\left(y + \sqrt{y^2 + 1}\right)$. $\blacksquare$

> **Definíció (area koszinusz hiperbolikusz).** A $\operatorname{ch}$ a $[0, +\infty)$-en szigorúan monoton növekedő, értékkészlete $[1, +\infty)$. A $\operatorname{ch}|_{[0, +\infty)}$ megszorítás inverze az $\operatorname{arch} : [1, +\infty) \to [0, +\infty)$ függvény, és
> $$\operatorname{arch} x = \ln\left(x + \sqrt{x^2 - 1}\right).$$

(A bizonyítás ugyanígy: $u^2 - 2yu + 1 = 0$, $u = y \pm \sqrt{y^2 - 1}$; a $[0, +\infty)$-re szorítkozás miatt $x \ge 0$, azaz $u \ge 1$, és ez a „$+$” előjelű gyököt jelenti, hiszen a két gyök szorzata $1$.)

> **Definíció (area tangens hiperbolikusz).** A $\operatorname{th}$ inverze az $\operatorname{arth} : (-1, 1) \to \mathbb{R}$ folytonos, szigorúan monoton növekedő bijekció, és
> $$\operatorname{arth} x = \frac{1}{2}\ln\frac{1 + x}{1 - x}.$$

*Bizonyítás.* Legyen $y = \operatorname{th} x = \frac{e^x - e^{-x}}{e^x + e^{-x}}$, ahol $|y| < 1$. A nevezővel felszorozva:
$$e^x - e^{-x} = y(e^x + e^{-x}) \implies (1 - y)e^x = (1 + y)e^{-x}.$$
Szorozzunk $e^x$-szel: $(1 - y)e^{2x} = 1 + y$, tehát
$$e^{2x} = \frac{1 + y}{1 - y} \implies x = \frac{1}{2}\ln\frac{1 + y}{1 - y}. \qquad \blacksquare$$

Hasonlóan értelmezhető az $\operatorname{arcth}$, a $\operatorname{cth}$ inverze: $\operatorname{arcth} x = \frac{1}{2}\ln\frac{x + 1}{x - 1}$ ($|x| > 1$).

---

## A XI. rész összefoglalása

- A $\sin$ és $\cos$ az egységkörön definiált, $2\pi$ szerint periodikus függvények; $\sin^2 + \cos^2 = 1$, érvényesek az addíciós képletek, és $|\sin x| \le |x|$. A $|\sin x - \sin y| \le |x - y|$ becslésből a folytonosság adódik.
- Az arkuszfüggvények a szögfüggvények alkalmas (monoton) megszorításainak inverzei.
- A hatványozást lépésenként terjesztjük ki: egész, racionális, majd valós kitevőre (szuprémummal), úgy, hogy az azonosságok megmaradjanak. Az $a^x$ folytonos, szigorúan monoton ($a \neq 1$), értékkészlete $(0, +\infty)$.
- A logaritmus az exponenciális függvény inverze; a szorzást összeadássá alakítja. Áttérési képlet: $\log_a x = \frac{\ln x}{\ln a}$.
- $e = \lim\left(1 + \frac{1}{n}\right)^n = \lim\left(1 + \frac{1}{n}\right)^{n+1}$; $\ln = \log_e$.
- $\operatorname{sh}$, $\operatorname{ch}$: $\operatorname{ch}^2 - \operatorname{sh}^2 = 1$ (hiperbola); az inverzeik (area függvények) logaritmussal kifejezhetők.

## Feladatok a XI. részhez

1. Számítsuk ki: a) $\arcsin\left(-\tfrac{\sqrt{3}}{2}\right)$; b) $\arccos\left(-\tfrac{\sqrt{2}}{2}\right)$; c) $\arctan(-1)$; d) $\arcsin\left(\sin\tfrac{3\pi}{4}\right)$.
2. Bizonyítsuk be, hogy $\sin(\arccos x) = \sqrt{1 - x^2}$ és $\cos(\arctan x) = \frac{1}{\sqrt{1 + x^2}}$.
3. Számítsuk ki: a) $8^{2/3}$; b) $\log_2 \frac{1}{32}$; c) $\log_9 27$; d) $e^{3\ln 2}$.
4. Oldjuk meg: a) $2^x = 5$; b) $\log_3(x + 1) + \log_3(x - 1) = 1$; c) $\operatorname{sh} x = \frac{3}{4}$.
5. Bizonyítsuk be, hogy $\operatorname{ch} 2x = \operatorname{ch}^2 x + \operatorname{sh}^2 x = 2\operatorname{ch}^2 x - 1$.
6. Bizonyítsuk be, hogy $\cos x - \cos y = -2\sin\frac{x + y}{2}\sin\frac{x - y}{2}$.
7. Bizonyítsuk be, hogy ha $a > 1$, akkor $\lim_{x \to 0} a^x = 1$, a definícióból kiindulva (az $a^{1/n} \to 1$ határérték és a monotonitás felhasználásával).

### Megoldási útmutatók

1. a) $-\frac{\pi}{3}$. b) $\frac{3\pi}{4}$. c) $-\frac{\pi}{4}$. d) $\sin\frac{3\pi}{4} = \frac{\sqrt{2}}{2}$, tehát az eredmény $\frac{\pi}{4}$ (nem $\frac{3\pi}{4}$!).
2. Ha $t = \arccos x \in [0, \pi]$, akkor $\sin t \ge 0$ és $\sin^2 t = 1 - x^2$. Ha $t = \arctan x \in \left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$, akkor $\cos t > 0$, és $\frac{1}{\cos^2 t} = 1 + \tan^2 t = 1 + x^2$.
3. a) $4$. b) $-5$. c) $\frac{3}{2}$ (mert $9^{3/2} = 27$). d) $8$.
4. a) $x = \log_2 5 = \frac{\ln 5}{\ln 2} \approx 2{,}32$. b) $x > 1$ és $(x + 1)(x - 1) = 3$, tehát $x = 2$. c) $x = \operatorname{arsh}\frac{3}{4} = \ln\left(\frac{3}{4} + \frac{5}{4}\right) = \ln 2$.
5. Az addíciós képletből $y = x$-szel, majd a $\operatorname{sh}^2 x = \operatorname{ch}^2 x - 1$ azonossággal.
6. Az $u = \frac{x+y}{2}$, $v = \frac{x - y}{2}$ jelöléssel $\cos(u + v) - \cos(u - v) = -2\sin u\sin v$.
7. Adott $\varepsilon$-hoz van $n$, hogy $a^{1/n} < 1 + \varepsilon$, és ekkor $a^{-1/n} = \frac{1}{a^{1/n}} > \frac{1}{1 + \varepsilon} > 1 - \varepsilon$. A monotonitás miatt $|x| < \frac{1}{n}$ esetén $1 - \varepsilon < a^{-1/n} < a^x < a^{1/n} < 1 + \varepsilon$.

---

# XII. RÉSZ: DIFFERENCIÁLSZÁMÍTÁS

Most visszatérünk a könyv legelső kérdéseinek egyikéhez: mekkora egy mozgó test **pillanatnyi** sebessége? Az 1. szakaszban az átlagsebességet ki tudtuk számolni, a pillanatnyit csak sejteni tudtuk. A határérték fogalmával felfegyverkezve most precíz választ adhatunk. A válasz — a **derivált** — az analízis talán legfontosabb fogalma: a fizikában sebesség és gyorsulás, a geometriában az érintő meredeksége, a közgazdaságtanban határköltség, a biológiában növekedési ráta. Mindegyik ugyanannak a gondolatnak egy-egy megjelenése: **a változás pillanatnyi mértéke**.

## 66. A derivált fogalma

### Két kérdés, egy válasz

**A pillanatnyi sebesség.** Ha $s(t)$ a megtett út a $t$ időpontig, akkor a $[t_0, t]$ intervallumon az átlagsebesség $\frac{s(t) - s(t_0)}{t - t_0}$. A pillanatnyi sebesség ennek a határértéke:
$$v(t_0) = \lim_{t \to t_0}\frac{s(t) - s(t_0)}{t - t_0}.$$

**Az érintő meredeksége.** Egy görbe érintőjét középiskolában a kör esetében úgy definiálták, mint az egyetlen közös ponttal rendelkező egyenest. Általános görbékre ez a definíció használhatatlan (az $y = x^3$ görbét az $x$ tengely az origóban érinti, mégis „átmetszi”; egy szinuszgörbe érintője végtelen sok pontban metszheti a görbét). A helyes gondolat: vegyük a görbe két pontját, $(a, f(a))$-t és $(x, f(x))$-et, és húzzuk meg a rajtuk átmenő **szelőt**. Ennek meredeksége
$$\frac{f(x) - f(a)}{x - a}.$$
Ha most $x$-et közelítjük $a$-hoz, a szelő egyre inkább az érintő helyzetébe fordul. Az érintő meredeksége tehát a szelőmeredekségek határértéke.

A fizikai és a geometriai kérdés **ugyanarra a határértékre** vezet. Ez nem véletlen: az út–idő grafikon érintőjének meredeksége éppen a pillanatnyi sebesség.

> **Definíció (derivált).** Az $f$ függvény **differenciálható** az $a$ pontban, ha $f$ értelmezve van $a$ egy környezetében, és a
> $$f'(a) = \lim_{x \to a}\frac{f(x) - f(a)}{x - a}$$
> határérték **létezik és véges**. Az $f'(a)$ számot az $f$ függvény $a$-beli **deriváltjának** vagy **differenciálhányadosának** nevezzük.

A $\frac{f(x) - f(a)}{x - a}$ törtet **differenciahányadosnak** nevezzük; jelölése $\frac{\Delta f}{\Delta x}$ vagy $\frac{\Delta y}{\Delta x}$ (a $\Delta$ a „különbség, megváltozás” jele). A derivált tehát a differenciahányados határértéke: **a függvényérték megváltozásának és a változó megváltozásának aránya, amikor az utóbbi nullához tart**.

**A $h$-s alak.** A $h = x - a$ helyettesítéssel (az 51. szakasz kompozíciós tétele szerint) ugyanez a határérték így is írható:
$$f'(a) = \lim_{h \to 0}\frac{f(a + h) - f(a)}{h}.$$
Számolásnál gyakran ez a kényelmesebb.

**Jelölések.** $f'(a)$ (Lagrange), $\dot{f}(a)$ (Newton; a fizikában időszerinti deriváltra), $\left.\frac{df}{dx}\right|_{x = a}$ (Leibniz). Ha $y = f(x)$, akkor $y'(a)$ vagy $\left.\frac{dy}{dx}\right|_{x = a}$. A Leibniz-féle $\frac{dy}{dx}$ jelölés a $\frac{\Delta y}{\Delta x}$ határértékére utal; bár nem valódi tört, gyakran úgy viselkedik, mintha az volna (lásd a 68–69. szakaszt).

> **Definíció (érintő).** Ha $f$ differenciálható $a$-ban, akkor az
> $$y = f(a) + f'(a)(x - a)$$
> egyenest a grafikon $(a, f(a))$ pontbeli **érintőjének** nevezzük.

Ez az az egyenes, amely átmegy az $(a, f(a))$ ponton, és meredeksége $f'(a)$.

> **Definíció (derivált függvény).** Az $f$ **derivált függvénye** az az $f'$ függvény, amely azokban a pontokban értelmezett, ahol $f$ differenciálható, és értéke ott $f'(x)$.

### Kidolgozott példák

**1. Lineáris függvény.** $f(x) = mx + b$:
$$f'(x) = \lim_{h \to 0}\frac{m(x + h) + b - (mx + b)}{h} = \lim_{h \to 0}\frac{mh}{h} = m.$$
A lineáris függvény deriváltja a meredeksége, és az érintője önmaga — ahogy lennie kell. Speciálisan az állandó függvény deriváltja $0$.

**2. A négyzetfüggvény.** $f(x) = x^2$:
$$f'(x) = \lim_{h \to 0}\frac{(x + h)^2 - x^2}{h} = \lim_{h \to 0}\frac{2xh + h^2}{h} = \lim_{h \to 0}(2x + h) = 2x.$$
Az 1. szakasz kövének sebessége tehát, ha $s(t) = 5t^2$, a $t$ időpontban $10t$; az $1$. másodpercben $10$ m/s, ahogy a numerikus kísérlet sugallta.

**3. A reciprokfüggvény.** $f(x) = \frac{1}{x}$, $x \neq 0$:
$$f'(x) = \lim_{h \to 0}\frac{\frac{1}{x + h} - \frac{1}{x}}{h} = \lim_{h \to 0}\frac{x - (x + h)}{h\,x(x + h)} = \lim_{h \to 0}\frac{-1}{x(x + h)} = -\frac{1}{x^2}.$$

**4. A négyzetgyökfüggvény.** $f(x) = \sqrt{x}$, $x > 0$, gyöktelenítéssel:
$$f'(x) = \lim_{h \to 0}\frac{\sqrt{x + h} - \sqrt{x}}{h} = \lim_{h \to 0}\frac{(x + h) - x}{h(\sqrt{x + h} + \sqrt{x})} = \lim_{h \to 0}\frac{1}{\sqrt{x + h} + \sqrt{x}} = \frac{1}{2\sqrt{x}}.$$
(Itt a $\sqrt{\phantom{x}}$ folytonosságát használtuk.)

> **Tétel.** Minden $n \in \mathbb{N}$-re $(x^n)' = nx^{n - 1}$.

*Bizonyítás.* Az $y^n - x^n$ különbség szorzattá alakítható:
$$y^n - x^n = (y - x)\left(y^{n-1} + y^{n-2}x + \dots + yx^{n-2} + x^{n-1}\right).$$
(Ez a mértani sorozat összegképletének egy alakja; kibontással ellenőrizhető, a tagok teleszkopikusan kiesnek.) Ezért
$$\lim_{y \to x}\frac{y^n - x^n}{y - x} = \lim_{y \to x}\left(y^{n-1} + y^{n-2}x + \dots + x^{n-1}\right) = n x^{n-1},$$
hiszen a zárójelben $n$ tag áll, és mindegyik $x^{n-1}$-hez tart. $\blacksquare$

### Differenciálhatóság és folytonosság

> **Tétel.** Ha $f$ differenciálható $a$-ban, akkor folytonos $a$-ban.

*Bizonyítás.* Írjuk a különbséget szorzat alakba ($x \neq a$):
$$f(x) - f(a) = \frac{f(x) - f(a)}{x - a}\cdot(x - a) \to f'(a)\cdot 0 = 0 \qquad (x \to a),$$
a szorzat határértékére vonatkozó tétel szerint (mindkét tényezőnek van véges határértéke). Tehát $f(x) \to f(a)$. $\blacksquare$

Figyeljük meg, hogy a bizonyítás lényegesen kihasználta a derivált **végességét**.

**A megfordítás hamis: folytonos $\not\Rightarrow$ differenciálható.** A klasszikus ellenpélda $f(x) = |x|$ a $0$-ban. Itt
$$\frac{f(x) - f(0)}{x - 0} = \frac{|x|}{x} = \operatorname{sgn}(x) \qquad (x \neq 0),$$
amelynek a $0$-ban nincs határértéke (jobbról $1$, balról $-1$). A grafikon az origóban „töréspontot” mutat: két különböző irányú egyenes találkozik, és nincs egyértelmű érintő.

Egy másik típusú ellenpélda: $f(x) = \sqrt[3]{x}$ a $0$-ban. Itt
$$\frac{\sqrt[3]{x} - 0}{x - 0} = \frac{1}{\sqrt[3]{x^2}} \to +\infty,$$
a differenciahányados határértéke létezik, de végtelen. A grafikonnak van érintője — a függőleges $y$ tengely —, de ennek meredeksége nem valós szám. Ilyenkor azt mondjuk, hogy a függvény deriváltja **végtelen**, de a függvény nem differenciálható.

**Történeti megjegyzés.** Sokáig úgy hitték, hogy a folytonos függvények „legfeljebb néhány sarokponttól eltekintve” differenciálhatók; számos „bizonyítás” is született erre. Weierstrass azonban 1872-ben olyan folytonos függvényt konstruált, amely **sehol sem** differenciálható (a konstrukció és története megtalálható Szőkefalvi-Nagy Béla *Valós függvények és függvénysorok* című könyvében). A felfedezés megdöbbentette a kor matematikusait; Charles Hermite így írt egy levelében: *„Rémülettel és borzalommal fordulok el ettől a siralmas fekélytől: függvények, amelyeknek nincs deriváltjuk.”* Ma tudjuk, hogy bizonyos értelemben a „legtöbb” folytonos függvény ilyen — a szép, differenciálható függvények a kivételek.

> **Definíció (féloldali derivált).** Az $f$ **jobbról differenciálható** $a$-ban, ha értelmezve van az $[a, a + \delta)$-n, és a
> $$f'_+(a) = \lim_{x \to a+0}\frac{f(x) - f(a)}{x - a}$$
> határérték létezik és véges. Hasonlóan definiáljuk a **bal oldali deriváltat**, $f'_-(a)$-t.

**Példa.** $|x|$ esetén $f'_+(0) = 1$ és $f'_-(0) = -1$.

Nyilvánvalóan (a 47. szakasz szerint): **$f'(a)$ pontosan akkor létezik, ha mindkét féloldali derivált létezik és egyenlő.**

## 67. Differenciálási szabályok

A deriváltat ritkán számoljuk a definícióból. Ehelyett — ahogy a határértékeknél — szabályokat bizonyítunk, amelyekkel bonyolult függvények deriváltja egyszerűbbekéből összerakható.

> **Tétel (differenciálási szabályok).** Legyen $f$ és $g$ differenciálható $a$-ban, és $c \in \mathbb{R}$. Ekkor $cf$, $f \pm g$ és $f\cdot g$ is differenciálható $a$-ban, és
>
> 1. $(cf)'(a) = c\,f'(a)$;
> 2. $(f \pm g)'(a) = f'(a) \pm g'(a)$;
> 3. $(f\cdot g)'(a) = f'(a)g(a) + f(a)g'(a)$ **(szorzatszabály)**.
>
> Ha ezen felül $g(a) \neq 0$, akkor $\frac{1}{g}$ és $\frac{f}{g}$ is differenciálható $a$-ban, és
>
> 4. $\displaystyle\left(\frac{1}{g}\right)'(a) = -\frac{g'(a)}{g(a)^2}$;
> 5. $\displaystyle\left(\frac{f}{g}\right)'(a) = \frac{f'(a)g(a) - f(a)g'(a)}{g(a)^2}$ **(hányadosszabály)**.

*Bizonyítás.*

**1. és 2.** A differenciahányadosok:
$$\frac{cf(x) - cf(a)}{x - a} = c\cdot\frac{f(x) - f(a)}{x - a}, \qquad \frac{(f + g)(x) - (f + g)(a)}{x - a} = \frac{f(x) - f(a)}{x - a} + \frac{g(x) - g(a)}{x - a},$$
és a határérték-szabályok szerint ezek $cf'(a)$-hoz, illetve $f'(a) + g'(a)$-hoz tartanak.

**3. (szorzatszabály).** A bevált fogás: adjunk hozzá és vonjunk ki egy alkalmas tagot ($f(a)g(x)$-et):
$$\frac{f(x)g(x) - f(a)g(a)}{x - a} = \frac{f(x)g(x) - f(a)g(x) + f(a)g(x) - f(a)g(a)}{x - a} = \frac{f(x) - f(a)}{x - a}\cdot g(x) + f(a)\cdot\frac{g(x) - g(a)}{x - a}.$$
Ha $x \to a$, akkor az első tag $f'(a)g(a)$-hoz tart — itt felhasználtuk, hogy $g$ **differenciálható, tehát folytonos** $a$-ban, így $g(x) \to g(a)$ —, a második tag pedig $f(a)g'(a)$-hoz.

**4.** Mivel $g$ folytonos $a$-ban és $g(a) \neq 0$, az előjeltartás szerint $a$ egy környezetében $g(x) \neq 0$, így $\frac{1}{g}$ ott értelmezett. Közös nevezőre hozva:
$$\frac{\frac{1}{g(x)} - \frac{1}{g(a)}}{x - a} = \frac{g(a) - g(x)}{(x - a)\,g(x)g(a)} = -\frac{g(x) - g(a)}{x - a}\cdot\frac{1}{g(x)g(a)} \to -g'(a)\cdot\frac{1}{g(a)^2}.$$

**5.** A 3. és 4. pont alkalmazása az $f\cdot\frac{1}{g}$ szorzatra:
$$\left(\frac{f}{g}\right)' = f'\cdot\frac{1}{g} + f\cdot\left(-\frac{g'}{g^2}\right) = \frac{f'g - fg'}{g^2}. \qquad \blacksquare$$

**Figyelem:** a szorzat deriváltja **nem** a deriváltak szorzata! $(x\cdot x)' = (x^2)' = 2x$, míg $x'\cdot x' = 1$. A szorzatszabály szemléletes magyarázata: ha egy téglalap oldalai $f$ és $g$, és mindkettő kicsit megnő ($\Delta f$, $\Delta g$), akkor a terület megváltozása $f\Delta g + g\Delta f + \Delta f\Delta g$; az utolsó tag „másodrendűen kicsi”, és a határátmenetnél eltűnik.

**Kidolgozott példák.**

- $\left(3x^4 - 5x^2 + 7\right)' = 12x^3 - 10x$ (az 1., 2. szabály és az $(x^n)'$ képlet).
- $\left((x^2 + 1)(x^3 - x)\right)' = 2x(x^3 - x) + (x^2 + 1)(3x^2 - 1) = 5x^4 - 1$. (Ellenőrzés kibontással: $(x^2 + 1)(x^3 - x) = x^5 - x$, aminek deriváltja valóban $5x^4 - 1$.)
- $\left(\frac{x}{x^2 + 1}\right)' = \frac{1\cdot(x^2 + 1) - x\cdot 2x}{(x^2 + 1)^2} = \frac{1 - x^2}{(x^2 + 1)^2}$.
- Negatív egész kitevőre: $(x^{-n})' = \left(\frac{1}{x^n}\right)' = -\frac{nx^{n-1}}{x^{2n}} = -nx^{-n-1}$. Tehát az $(x^k)' = kx^{k-1}$ képlet minden $k \in \mathbb{Z}$-re érvényes ($x \neq 0$).

## 68. A láncszabály

Hogyan deriváljuk a $(x^2 + 1)^{13}$ függvényt? Kibontani reménytelen. Ez egy **összetett függvény**: a belső függvény $x^2 + 1$, a külső $u^{13}$. A láncszabály megmondja, hogyan kell ilyen függvényt deriválni.

**Az ötlet.** Ha $h = g \circ f$, akkor
$$\frac{h(x) - h(a)}{x - a} = \frac{g(f(x)) - g(f(a))}{f(x) - f(a)}\cdot\frac{f(x) - f(a)}{x - a}.$$
Az első tényező a $g$ differenciahányadosa az $f(a)$ pontban, és $g'(f(a))$-hoz tart; a második $f'(a)$-hoz. Ez kész bizonyításnak tűnik, de van egy hibája: **az $f(x) - f(a)$ nevező nulla lehet** akár $a$-hoz tetszőlegesen közeli $x$-ekre is (például ha $f$ állandó, vagy ha $f(x) = x^2\sin\frac{1}{x}$ típusú függvény, amely végtelen sokszor felveszi az $f(0)$ értéket a $0$ körül). A hibát egy ügyes átfogalmazással küszöböljük ki, amely egyáltalán nem használ hányadost.

> **Tétel (a differenciálhatóság ekvivalens jellemzése).** Az $f$ pontosan akkor differenciálható $a$-ban, ha létezik olyan, az $a$-ban **folytonos** $f^*$ függvény (az $a$ egy környezetében értelmezve), amelyre
> $$f(x) - f(a) = f^*(x)\,(x - a)$$
> minden $x$-re ebben a környezetben. Ekkor $f'(a) = f^*(a)$.

Az $f^*$ függvény szemléletesen az $(a, f(a))$ ponton és az $(x, f(x))$ ponton átmenő szelő meredeksége, kiegészítve az $a$-ban az érintő meredekségével.

*Bizonyítás.* **($\Rightarrow$)** Ha $f'(a)$ létezik, definiáljuk
$$f^*(x) = \frac{f(x) - f(a)}{x - a} \quad (x \neq a), \qquad f^*(a) = f'(a).$$
Ekkor az egyenlőség $x \neq a$-ra a definícióból, $x = a$-ra triviálisan ($0 = 0$) teljesül. A derivált definíciója éppen azt mondja, hogy $\lim_{x \to a} f^*(x) = f'(a) = f^*(a)$, azaz $f^*$ folytonos $a$-ban.

**($\Leftarrow$)** Ha $f^*$ folytonos $a$-ban, akkor $x \neq a$-ra $\frac{f(x) - f(a)}{x - a} = f^*(x) \to f^*(a)$, tehát a derivált létezik, és $f'(a) = f^*(a)$. $\blacksquare$

> **Tétel (láncszabály).** Ha $f$ differenciálható az $a$ pontban, $g$ pedig az $f(a)$ pontban, akkor $h = g \circ f$ differenciálható $a$-ban, és
> $$h'(a) = g'(f(a))\cdot f'(a).$$

*Bizonyítás.* Az előző tétel szerint vannak olyan $f^*$ (az $a$-ban folytonos) és $g^*$ (az $f(a)$-ban folytonos) függvények, hogy
$$f(x) - f(a) = f^*(x)(x - a), \qquad g(u) - g(f(a)) = g^*(u)\big(u - f(a)\big),$$
és $f^*(a) = f'(a)$, $g^*(f(a)) = g'(f(a))$. A második egyenlőségbe $u = f(x)$-et helyettesítve, majd az elsőt felhasználva:
$$h(x) - h(a) = g(f(x)) - g(f(a)) = g^*(f(x))\big(f(x) - f(a)\big) = \underbrace{g^*(f(x))\,f^*(x)}_{h^*(x)}\,(x - a).$$
Itt sehol sem osztottunk! Már csak azt kell látnunk, hogy $h^*$ folytonos $a$-ban. Az $f$ differenciálható, tehát folytonos $a$-ban; $g^*$ folytonos $f(a)$-ban; így az 53. szakasz szerint $g^* \circ f$ folytonos $a$-ban. Az $f^*$ is folytonos $a$-ban, tehát a szorzatuk, $h^*$ is. Az ekvivalens jellemzés szerint $h$ differenciálható $a$-ban, és
$$h'(a) = h^*(a) = g^*(f(a))\cdot f^*(a) = g'(f(a))\cdot f'(a). \qquad \blacksquare$$

**Röviden:** $\big(g(f(x))\big)' = g'(f(x))\cdot f'(x)$ — **a külső függvény deriváltja a belső függvénynél, szorozva a belső függvény deriváltjával.**

**A Leibniz-jelöléssel** a láncszabály különösen sugalmazó: ha $u = f(x)$ és $z = g(u)$, akkor
$$\frac{dz}{dx} = \frac{dz}{du}\cdot\frac{du}{dx},$$
mintha a $du$-k „egyszerűsödnének”. Ez természetesen csak emlékeztető, nem bizonyítás — de nagyon jó emlékeztető. Szemléletesen: ha $z$ kétszer olyan gyorsan változik, mint $u$, és $u$ háromszor olyan gyorsan, mint $x$, akkor $z$ hatszor olyan gyorsan változik, mint $x$.

**Kidolgozott példák.**

- $\left((x^2 + 1)^{13}\right)'$: a külső függvény $g(u) = u^{13}$, $g'(u) = 13u^{12}$; a belső $f(x) = x^2 + 1$, $f'(x) = 2x$. Tehát
$$\left((x^2 + 1)^{13}\right)' = 13(x^2 + 1)^{12}\cdot 2x = 26x(x^2 + 1)^{12}.$$

- $\left(\sqrt{1 - x^2}\right)' = \frac{1}{2\sqrt{1 - x^2}}\cdot(-2x) = -\frac{x}{\sqrt{1 - x^2}}$ ($|x| < 1$).
- $\left(\frac{1}{(3x - 1)^2}\right)' = -2(3x - 1)^{-3}\cdot 3 = -\frac{6}{(3x - 1)^3}$.
- Többszörös kompozíció: $\left(\sqrt{1 + (x^2 + 1)^3}\right)' = \frac{1}{2\sqrt{1 + (x^2 + 1)^3}}\cdot 3(x^2 + 1)^2\cdot 2x$. Belülről kifelé haladva minden „rétegnél” szorzunk a réteg deriváltjával.

## 69. Az inverz függvény deriváltja

Ha egy függvény deriváltját ismerjük, ki tudjuk-e számolni az inverzéét? Geometriailag a válasz kézenfekvő: az inverz grafikonja az eredeti tükörképe az $y = x$ egyenesre (14. szakasz). A tükrözés egy $m$ meredekségű egyenest $\frac{1}{m}$ meredekségűbe visz (hiszen felcseréli a $\Delta x$ és $\Delta y$ szerepét). Ezért az inverz érintőjének meredeksége az eredeti érintő meredekségének reciproka kell legyen — feltéve, hogy az nem nulla (a vízszintes érintő tükörképe függőleges, annak meredeksége nem valós szám).

> **Tétel (az inverz függvény deriváltja).** Legyen $f$ szigorúan monoton és folytonos az $[a, b]$-n, $c \in (a, b)$, és tegyük fel, hogy $f$ differenciálható $c$-ben, és $f'(c) \neq 0$. Ekkor $\varphi = f^{-1}$ differenciálható a $d = f(c)$ pontban, és
> $$\varphi'(d) = \frac{1}{f'(c)} = \frac{1}{f'(\varphi(d))}.$$

*Bizonyítás.* Az 55. szakasz szerint $\varphi$ folytonos, tehát $\lim_{v \to d}\varphi(v) = \varphi(d) = c$. A szigorú monotonitás miatt $\varphi$ injektív, így $v \neq d$ esetén $\varphi(v) \neq c$ — ez teszi lehetővé a helyettesítést. A $\varphi$ differenciahányadosát írjuk fel úgy, hogy $u = \varphi(v)$, azaz $v = f(u)$:
$$\frac{\varphi(v) - \varphi(d)}{v - d} = \frac{u - c}{f(u) - f(c)} = \frac{1}{\frac{f(u) - f(c)}{u - c}}.$$
Ha $v \to d$, akkor $u = \varphi(v) \to c$ (és $u \neq c$), tehát az 51. szakasz kompozíciós tétele szerint a jobb oldal $\frac{1}{f'(c)}$-hez tart (itt használjuk ki, hogy $f'(c) \neq 0$). $\blacksquare$

**Memoriter (Leibniz-jelöléssel).** Ha $y = f(x)$ és $x = \varphi(y)$, akkor
$$\frac{dx}{dy} = \frac{1}{\frac{dy}{dx}}.$$
(Ez a láncszabályból is „kiolvasható”: a $\varphi(f(x)) = x$ azonosságot deriválva $\varphi'(f(x))\cdot f'(x) = 1$ — de ehhez előre tudni kellene, hogy $\varphi$ differenciálható; ezt a tétel biztosítja.)

**Kidolgozott példa: a gyökfüggvények deriváltja.** Legyen $k \in \mathbb{N}$, és $\varphi(y) = \sqrt[k]{y}$ ($y > 0$), amely az $f(x) = x^k$ ($x > 0$) függvény inverze. Itt $f'(x) = kx^{k-1} \neq 0$, tehát
$$\varphi'(y) = \frac{1}{f'(\varphi(y))} = \frac{1}{k\left(\sqrt[k]{y}\right)^{k-1}} = \frac{1}{k}\,y^{-\frac{k-1}{k}} = \frac{1}{k}\,y^{\frac{1}{k} - 1}.$$
Vagyis $\left(x^{1/k}\right)' = \frac{1}{k}x^{\frac{1}{k} - 1}$ — ugyanaz a szabály, mint az egész kitevőkre! Speciálisan $(\sqrt{x})' = \frac{1}{2\sqrt{x}}$, egyezésben a 66. szakasz 4. példájával. A láncszabállyal ebből $\left(x^{p/q}\right)' = \left(\left(x^{1/q}\right)^p\right)' = p\left(x^{1/q}\right)^{p-1}\cdot\frac{1}{q}x^{\frac{1}{q} - 1} = \frac{p}{q}x^{\frac{p}{q} - 1}$. A 72. szakaszban látni fogjuk, hogy az $(x^a)' = ax^{a-1}$ szabály minden valós $a$-ra érvényes.

**Mi történik, ha $f'(c) = 0$?** Az $f(x) = x^3$ inverze $\sqrt[3]{x}$, és $f'(0) = 0$. A 66. szakaszban láttuk, hogy $\sqrt[3]{x}$ a $0$-ban nem differenciálható (a derivált végtelen) — összhangban a geometriai képpel: a vízszintes érintő tükörképe függőleges.

## 70. Elemi függvények deriváltjai I: polinomok és trigonometrikus függvények

> **Tétel.** $(a_nx^n + \dots + a_1x + a_0)' = na_nx^{n-1} + \dots + 2a_2x + a_1$.

*Bizonyítás.* Az összeg- és konstansszoros-szabályból és az $(x^k)' = kx^{k-1}$ képletből, tagonként. $\blacksquare$

A polinomok deriváltja tehát ismét polinom, eggyel kisebb fokú. A trigonometrikus függvények deriválásához két nevezetes határértékre van szükség.

> **Tétel (nevezetes határérték).**
> $$\lim_{x \to 0}\frac{\sin x}{x} = 1.$$

Vegyük észre, hogy ez a határérték éppen a $\sin$ függvény $0$-beli deriváltja: $\frac{\sin x - \sin 0}{x - 0} \to \sin'(0)$. A tétel tehát azt mondja, hogy a $\sin$ grafikonja az origóban $45°$-os szögben metszi az $x$ tengelyt — és ez csak radiánban mérve igaz! (Fokban mérve a határérték $\frac{\pi}{180}$ volna.)

*Bizonyítás.* Legyen $0 < x < \frac{\pi}{2}$. Az alapvető geometriai egyenlőtlenség:
$$\sin x < x < \tan x.$$
Az első egyenlőtlenséget az 58. szakaszban láttuk be. A második a következő megfontolásból adódik: tekintsük az egységkörön az $(1, 0)$ pontot és az $x$ ívhez tartozó $P$ pontot, és húzzuk meg a körhöz az $(1, 0)$ pontban az érintőt; ezt a $P$-n átmenő origó-kezdetű félegyenes a $(1, \tan x)$ pontban metszi. Az $x$ hosszúságú ív a $\tan x$ hosszú érintőszakasz és a $P$-beli érintőszakasz „belsejében” fut, és **ha egy konvex alakzatot egy másik tartalmaz, akkor a tartalmazó kerülete nagyobb** — ebből $x < \tan x$. (Egy másik szemléltetés területekkel: az egységkör $x$ szögű körcikkének területe $\frac{x}{2}$, és ez a körcikk tartalmazza az $(0,0), (1,0), P$ háromszöget, amelynek területe $\frac{\sin x}{2}$, és benne van a $(0,0), (1,0), (1, \tan x)$ háromszögben, amelynek területe $\frac{\tan x}{2}$.)

Osszuk el az egyenlőtlenséget a pozitív $\sin x$-szel:
$$1 < \frac{x}{\sin x} < \frac{1}{\cos x},$$
majd vegyük a reciprokokat (ami megfordítja az irányt):
$$\cos x < \frac{\sin x}{x} < 1.$$
Ha $x \to 0 + 0$, akkor $\cos x \to \cos 0 = 1$ (folytonosság), tehát a rendőrelv szerint
$$\lim_{x \to 0+0}\frac{\sin x}{x} = 1.$$
A bal oldali határértékhez vegyük észre, hogy $\frac{\sin x}{x}$ **páros** függvény: $\frac{\sin(-x)}{-x} = \frac{-\sin x}{-x} = \frac{\sin x}{x}$. Tehát a bal oldali határérték is $1$. $\blacksquare$

**Visszatérés a kör területéhez.** Az 1. szakaszban a körbe írt szabályos $n$-szög területe $T_n = \frac{n}{2}\sin\frac{2\pi}{n}$ volt. Most már be tudjuk bizonyítani, hogy $T_n \to \pi$:
$$T_n = \pi\cdot\frac{\sin\frac{2\pi}{n}}{\frac{2\pi}{n}} \to \pi\cdot 1 = \pi,$$
az átviteli elv szerint, hiszen $\frac{2\pi}{n} \to 0$. Archimédész kimerítéses módszere tehát valóban a kör területéhez vezet.

> **Tétel.** $\displaystyle \lim_{x \to 0}\frac{\cos x - 1}{x} = 0$, azaz $\cos'(0) = 0$.

*Bizonyítás.* A félszögképlet szerint $1 - \cos x = 2\sin^2\frac{x}{2}$, tehát
$$\frac{\cos x - 1}{x} = -\frac{2\sin^2\frac{x}{2}}{x} = -\sin\frac{x}{2}\cdot\frac{\sin\frac{x}{2}}{\frac{x}{2}} \to -0\cdot 1 = 0,$$
ahol a második tényezőre az előző tételt alkalmaztuk ($\frac{x}{2} \to 0$ helyettesítéssel). $\blacksquare$

> **Tétel.** Minden $x \in \mathbb{R}$-re $\sin' x = \cos x$ és $\cos' x = -\sin x$.

*Bizonyítás.* Az addíciós képlettel:
$$\frac{\sin(x + h) - \sin x}{h} = \frac{\sin x\cos h + \cos x\sin h - \sin x}{h} = \cos x\cdot\frac{\sin h}{h} + \sin x\cdot\frac{\cos h - 1}{h} \to \cos x\cdot 1 + \sin x\cdot 0 = \cos x.$$
A koszinuszra a $\cos x = \sin\left(\frac{\pi}{2} - x\right)$ azonosságból, a láncszabállyal:
$$(\cos x)' = \cos\left(\frac{\pi}{2} - x\right)\cdot(-1) = -\sin x. \qquad \blacksquare$$

**Szemléletesen:** a $\sin$ ott a legmeredekebb, ahol nulla (a $\cos$ ott $\pm 1$), és ott vízszintes az érintője, ahol maximuma vagy minimuma van (a $\cos$ ott $0$). Ha a $\sin$ grafikonját „lederiváljuk”, $\frac{\pi}{2}$-vel balra tolt képét, azaz a $\cos$-t kapjuk.

> **Tétel.** $\displaystyle \tan' x = \frac{1}{\cos^2 x} = 1 + \tan^2 x$ és $\displaystyle \cot' x = -\frac{1}{\sin^2 x}$ (az értelmezési tartományukon).

*Bizonyítás.* A hányadosszabállyal:
$$(\tan x)' = \frac{\cos x\cos x - \sin x(-\sin x)}{\cos^2 x} = \frac{\cos^2 x + \sin^2 x}{\cos^2 x} = \frac{1}{\cos^2 x},$$
$$(\cot x)' = \frac{-\sin x\sin x - \cos x\cos x}{\sin^2 x} = -\frac{1}{\sin^2 x}. \qquad \blacksquare$$

> **Tétel (az arkuszfüggvények deriváltjai).** Ha $-1 < x < 1$, akkor
> $$(\arcsin x)' = \frac{1}{\sqrt{1 - x^2}}, \qquad (\arccos x)' = -\frac{1}{\sqrt{1 - x^2}};$$
> továbbá minden $x \in \mathbb{R}$-re
> $$(\arctan x)' = \frac{1}{1 + x^2}, \qquad (\operatorname{arccot} x)' = -\frac{1}{1 + x^2}.$$

*Bizonyítás.* **$\arcsin$:** a $\sin$ a $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-n szigorúan monoton, és a belső pontokban $\sin' t = \cos t > 0$. Az inverz deriválási szabálya szerint, $t = \arcsin x$ jelöléssel,
$$(\arcsin x)' = \frac{1}{\cos(\arcsin x)} = \frac{1}{\sqrt{1 - x^2}},$$
az 59. szakasz $\cos(\arcsin x) = \sqrt{1 - x^2}$ azonossága szerint.

**$\arccos$:** az $\arccos x = \frac{\pi}{2} - \arcsin x$ azonosságból.

**$\arctan$:** a $\tan$ a $\left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$-n szigorúan monoton növekedő, és $\tan' t = 1 + \tan^2 t \neq 0$. Tehát
$$(\arctan x)' = \frac{1}{1 + \tan^2(\arctan x)} = \frac{1}{1 + x^2}.$$
**$\operatorname{arccot}$:** az $\operatorname{arccot} x = \frac{\pi}{2} - \arctan x$ azonosságból. $\blacksquare$

Figyelemre méltó: az arkuszfüggvények (amelyek „transzcendens” függvények) deriváltjai **algebrai** kifejezések. Ez a következő félév integrálszámításában lesz fontos: például $\frac{1}{1 + x^2}$ primitív függvénye az $\arctan x$.

## 71. Az e szám mint függvényhatárérték

Az exponenciális és a logaritmusfüggvény deriválásához az $e$ szám sorozatos definícióját függvényhatárértékké kell átalakítanunk. A sorozat csak egész $n$-ekre ad információt; nekünk tetszőleges valós $x \to \pm\infty$-re (és $t \to 0$-ra) kell.

> **Tétel.**
> $$\lim_{x \to +\infty}\left(1 + \frac{1}{x}\right)^x = \lim_{x \to -\infty}\left(1 + \frac{1}{x}\right)^x = e.$$

*Bizonyítás.* **$x \to +\infty$.** Az átviteli elvet használjuk. Legyen $x_n \to +\infty$ tetszőleges sorozat (feltehetjük, hogy $x_n \ge 1$), és legyen $k_n = [x_n]$, tehát $k_n \le x_n < k_n + 1$ és $k_n \to +\infty$. Mivel $1 + \frac{1}{t}$ csökken, és a hatványozás az alapban és (egynél nagyobb alapra) a kitevőben is monoton növekedő, ezért
$$\left(1 + \frac{1}{k_n + 1}\right)^{k_n} < \left(1 + \frac{1}{x_n}\right)^{x_n} < \left(1 + \frac{1}{k_n}\right)^{k_n + 1}.$$
(Balra kisebb alap és kisebb kitevő, jobbra nagyobb alap és nagyobb kitevő.) A két szélső sorozat:
$$\left(1 + \frac{1}{k_n + 1}\right)^{k_n} = \left(1 + \frac{1}{k_n + 1}\right)^{k_n + 1}\cdot\left(1 + \frac{1}{k_n + 1}\right)^{-1} \to e\cdot 1 = e,$$
$$\left(1 + \frac{1}{k_n}\right)^{k_n + 1} = \left(1 + \frac{1}{k_n}\right)^{k_n}\cdot\left(1 + \frac{1}{k_n}\right) \to e\cdot 1 = e.$$
(Itt felhasználtuk, hogy ha $k_n \to +\infty$ egészek, akkor $\left(1 + \frac{1}{k_n}\right)^{k_n} \to e$: adott $\varepsilon$-hoz van olyan $M$, hogy minden $m \ge M$ egészre $\left|\left(1 + \frac{1}{m}\right)^m - e\right| < \varepsilon$, és egy idő után $k_n \ge M$.) A rendőrelv szerint minden $x_n \to +\infty$ sorozatra $\left(1 + \frac{1}{x_n}\right)^{x_n} \to e$, tehát az átviteli elv szerint kész.

**$x \to -\infty$.** Írjuk $x = -y$ alakba, ahol $y \to +\infty$:
$$\left(1 - \frac{1}{y}\right)^{-y} = \left(\frac{y}{y - 1}\right)^{y} = \left(1 + \frac{1}{y - 1}\right)^{y - 1}\cdot\left(1 + \frac{1}{y - 1}\right).$$
Ha $y \to +\infty$, akkor $y - 1 \to +\infty$, így az első tényező az előző eset szerint $e$-hez, a második $1$-hez tart. $\blacksquare$

> **Tétel.** Minden $b \in \mathbb{R}$-re $\displaystyle\lim_{x \to \pm\infty}\left(1 + \frac{b}{x}\right)^x = e^b$.

*Bizonyítás.* A $b = 0$ eset triviális. Ha $b \neq 0$, helyettesítsünk $u = \frac{x}{b}$-t; ha $x \to +\infty$, akkor $u \to \pm\infty$ ($b$ előjelétől függően). Ekkor
$$\left(1 + \frac{b}{x}\right)^x = \left[\left(1 + \frac{1}{u}\right)^u\right]^b \to e^b,$$
az előző tétel, a kompozíciós tétel és a $t \mapsto t^b$ hatványfüggvény folytonossága szerint. $\blacksquare$

Ez a „folytonos kamatozás” képlete: ha évi $b$ (pl. $b = 0{,}05$, azaz $5\%$) kamatot $x$ részletben tőkésítenek, akkor egy év alatt a tőke $\left(1 + \frac{b}{x}\right)^x$-szeresére nő, ami $x \to \infty$ esetén $e^b$-hez tart.

> **Tétel.** $\displaystyle \lim_{t \to 0}(1 + t)^{1/t} = e$.

*Bizonyítás.* Az $x = \frac{1}{t}$ helyettesítéssel: ha $t \to 0 + 0$, akkor $x \to +\infty$, és $(1 + t)^{1/t} = \left(1 + \frac{1}{x}\right)^x \to e$; ha $t \to 0 - 0$, akkor $x \to -\infty$, és ugyanez az eredmény. A két féloldali határérték egyenlő, tehát a kétoldali is. $\blacksquare$

## 72. A logaritmus és az exponenciális függvény deriváltja

> **Tétel.** Ha $a > 0$, $a \neq 1$, akkor
> $$\lim_{h \to 0}\frac{\log_a(1 + h)}{h} = \log_a e.$$

*Bizonyítás.* A logaritmus azonosságai és folytonossága szerint
$$\frac{\log_a(1 + h)}{h} = \log_a\left((1 + h)^{1/h}\right) \to \log_a e,$$
az előző szakasz utolsó tétele és a kompozíciós tétel szerint. $\blacksquare$

> **Tétel.** A $\log_a$ függvény differenciálható minden $x > 0$-ban, és
> $$(\log_a x)' = \frac{\log_a e}{x} = \frac{1}{x\ln a}.$$
> Speciálisan
> $$(\ln x)' = \frac{1}{x}.$$

*Bizonyítás.* A differenciahányadost az $1$-beli viselkedésre vezetjük vissza:
$$\frac{\log_a(x + h) - \log_a x}{h} = \frac{\log_a\left(1 + \frac{h}{x}\right)}{h} = \frac{1}{x}\cdot\frac{\log_a\left(1 + \frac{h}{x}\right)}{\frac{h}{x}}.$$
Ha $h \to 0$, akkor $\frac{h}{x} \to 0$, és az előző tétel szerint a jobb oldal $\frac{1}{x}\log_a e$-hez tart. Végül az áttérési képlet szerint $\log_a e = \frac{\ln e}{\ln a} = \frac{1}{\ln a}$. $\blacksquare$

A természetes logaritmus tehát éppen az a logaritmus, amelynek deriváltja a lehető legegyszerűbb, $\frac{1}{x}$ — ez magyarázza a „természetes” elnevezést.

> **Tétel.** Ha $a > 0$, akkor $a^x$ differenciálható $\mathbb{R}$-en, és
> $$(a^x)' = a^x\ln a. \qquad \text{Speciálisan} \qquad (e^x)' = e^x.$$

*Bizonyítás.* Az $a = 1$ eset triviális. Ha $a \neq 1$, akkor $\varphi(x) = a^x$ az $f(y) = \log_a y$ függvény inverze, és $f'(y) = \frac{1}{y\ln a} \neq 0$. Az inverz deriválási szabálya szerint
$$\varphi'(x) = \frac{1}{f'(\varphi(x))} = \frac{1}{\frac{1}{a^x\ln a}} = a^x\ln a. \qquad \blacksquare$$

Az $e^x$ tehát az a függvény, amely **megegyezik a saját deriváltjával**: minden pontban akkora a meredeksége, mint az értéke. Ez a tulajdonság teszi az analízis legfontosabb függvényévé; a 86. szakaszban látni fogjuk, hogy (konstansszorzótól eltekintve) ez az egyetlen ilyen függvény.

> **Tétel.** Minden $a \in \mathbb{R}$-re és $x > 0$-ra $(x^a)' = a\,x^{a - 1}$.

*Bizonyítás.* Írjuk át exponenciális alakba ($x = e^{\ln x}$ miatt $x^a = e^{a\ln x}$), és alkalmazzuk a láncszabályt:
$$(x^a)' = \left(e^{a\ln x}\right)' = e^{a\ln x}\cdot\frac{a}{x} = x^a\cdot\frac{a}{x} = a\,x^{a - 1}. \qquad \blacksquare$$

Ezzel a hatványfüggvény deriválási szabálya **tetszőleges valós kitevőre** igazolva van: például $\left(x^{\sqrt{2}}\right)' = \sqrt{2}\,x^{\sqrt{2} - 1}$.

**Kidolgozott példa (a „kettős” hatvány).** Mennyi $(x^x)'$, ha $x > 0$? Se nem hatványfüggvény (a kitevő is változik), se nem exponenciális (az alap is változik). Az exponenciális átírás itt is segít:
$$(x^x)' = \left(e^{x\ln x}\right)' = e^{x\ln x}\left(1\cdot\ln x + x\cdot\frac{1}{x}\right) = x^x(\ln x + 1).$$
Általában az $f(x)^{g(x)}$ alakú függvényeket mindig $e^{g(x)\ln f(x)}$ alakba írva deriváljuk.

**A hiperbolikus és az area függvények deriváltjai.** Az $(e^x)' = e^x$ és $(e^{-x})' = -e^{-x}$ szabályokból:
$$(\operatorname{sh} x)' = \operatorname{ch} x, \qquad (\operatorname{ch} x)' = \operatorname{sh} x, \qquad (\operatorname{th} x)' = \frac{\operatorname{ch}^2 x - \operatorname{sh}^2 x}{\operatorname{ch}^2 x} = \frac{1}{\operatorname{ch}^2 x}.$$
(Figyeljük meg: a $\operatorname{ch}$ deriváltjában nincs mínusz előjel, szemben a $\cos$-éval.) Az inverz deriválási szabályával, például:
$$(\operatorname{arsh} x)' = \frac{1}{\operatorname{ch}(\operatorname{arsh} x)} = \frac{1}{\sqrt{1 + \operatorname{sh}^2(\operatorname{arsh} x)}} = \frac{1}{\sqrt{1 + x^2}},$$
és hasonlóan $(\operatorname{arch} x)' = \frac{1}{\sqrt{x^2 - 1}}$ ($x > 1$), $(\operatorname{arth} x)' = \frac{1}{1 - x^2}$ ($|x| < 1$). (Ugyanezt az eredményt a 65. szakasz logaritmusos képleteinek deriválásával is megkaphatjuk.)

### Deriválttáblázat

Összefoglalásként az elemi függvények deriváltjai (mindegyik az értelmezési tartomány belsejében érvényes):

| $f(x)$ | $f'(x)$ | | $f(x)$ | $f'(x)$ |
|---|---|---|---|---|
| $c$ | $0$ | | $\arcsin x$ | $\frac{1}{\sqrt{1 - x^2}}$ |
| $x^a$ | $ax^{a-1}$ | | $\arccos x$ | $-\frac{1}{\sqrt{1 - x^2}}$ |
| $e^x$ | $e^x$ | | $\arctan x$ | $\frac{1}{1 + x^2}$ |
| $a^x$ | $a^x\ln a$ | | $\operatorname{arccot} x$ | $-\frac{1}{1 + x^2}$ |
| $\ln x$ | $\frac{1}{x}$ | | $\operatorname{sh} x$ | $\operatorname{ch} x$ |
| $\log_a x$ | $\frac{1}{x\ln a}$ | | $\operatorname{ch} x$ | $\operatorname{sh} x$ |
| $\sin x$ | $\cos x$ | | $\operatorname{th} x$ | $\frac{1}{\operatorname{ch}^2 x}$ |
| $\cos x$ | $-\sin x$ | | $\operatorname{arsh} x$ | $\frac{1}{\sqrt{x^2 + 1}}$ |
| $\tan x$ | $\frac{1}{\cos^2 x}$ | | $\operatorname{arch} x$ | $\frac{1}{\sqrt{x^2 - 1}}$ |
| $\cot x$ | $-\frac{1}{\sin^2 x}$ | | $\operatorname{arth} x$ | $\frac{1}{1 - x^2}$ |

A szabályokkal (összeg, szorzat, hányados, láncszabály, inverz) együtt ezzel **minden** elemi függvény deriváltja kiszámolható. A deriválás tehát — szemben a következő félév integrálásával — teljesen gépies eljárás.

---

## A XII. rész összefoglalása

- $f'(a) = \lim_{x \to a}\frac{f(x) - f(a)}{x - a}$: a pillanatnyi változási sebesség, az érintő meredeksége. Érintő: $y = f(a) + f'(a)(x - a)$.
- Differenciálható $\implies$ folytonos; a megfordítás hamis ($|x|$; sőt sehol sem differenciálható folytonos függvény is létezik).
- Szabályok: $(f + g)' = f' + g'$, $(fg)' = f'g + fg'$, $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$, láncszabály: $(g \circ f)' = (g' \circ f)\cdot f'$, inverz: $(f^{-1})'(d) = \frac{1}{f'(f^{-1}(d))}$.
- A láncszabály bizonyítása a $f(x) - f(a) = f^*(x)(x - a)$ jellemzésen alapul, amely elkerüli a nullával való osztást.
- Nevezetes határértékek: $\frac{\sin x}{x} \to 1$, $\frac{\cos x - 1}{x} \to 0$, $(1 + t)^{1/t} \to e$, $\left(1 + \frac{b}{x}\right)^x \to e^b$.
- $\sin' = \cos$, $\cos' = -\sin$, $(e^x)' = e^x$, $(\ln x)' = \frac{1}{x}$, $(x^a)' = ax^{a-1}$ minden valós $a$-ra.

## Feladatok a XII. részhez

1. A definíció alapján számítsuk ki: a) $(x^3)'$ az $x = 2$ pontban; b) $\left(\frac{1}{x^2}\right)'$.
2. Deriváljuk: a) $x^3\sin x$; b) $\frac{x^2 - 1}{x^2 + 1}$; c) $\sqrt{x^2 + 1}$; d) $\sin^2(3x)$; e) $e^{-x^2}$; f) $\ln(\ln x)$; g) $\arctan\frac{1}{x}$; h) $x^{\sin x}$ ($x > 0$).
3. Írjuk fel az $f(x) = \ln x$ grafikonjának érintőjét az $x = e$ pontban.
4. Hol differenciálható az $f(x) = |x^2 - 1|$ függvény? Számítsuk ki a féloldali deriváltakat a kritikus pontokban.
5. Bizonyítsuk be, hogy az $f(x) = x|x|$ függvény mindenütt differenciálható, és számítsuk ki a deriváltját.
6. Mutassuk meg, hogy $\left(\arctan x + \arctan\frac{1}{x}\right)' = 0$ ($x \neq 0$). Mit sejtünk a függvényről? (A 76. szakaszban igazolni is fogjuk.)
7. Az inverz deriválási szabályával számítsuk ki az $f(x) = x^3 + x$ függvény inverzének deriváltját a $2$ pontban.

### Megoldási útmutatók

1. a) $\frac{(2 + h)^3 - 8}{h} = 12 + 6h + h^2 \to 12$. b) $\frac{\frac{1}{(x + h)^2} - \frac{1}{x^2}}{h} = \frac{-(2x + h)}{x^2(x + h)^2} \to -\frac{2}{x^3}$.
2. a) $3x^2\sin x + x^3\cos x$. b) $\frac{2x(x^2 + 1) - (x^2 - 1)2x}{(x^2 + 1)^2} = \frac{4x}{(x^2 + 1)^2}$. c) $\frac{x}{\sqrt{x^2 + 1}}$. d) $2\sin(3x)\cos(3x)\cdot 3 = 3\sin(6x)$. e) $-2xe^{-x^2}$. f) $\frac{1}{x\ln x}$ ($x > 1$). g) $\frac{1}{1 + 1/x^2}\cdot\left(-\frac{1}{x^2}\right) = -\frac{1}{x^2 + 1}$. h) $x^{\sin x}\left(\cos x\ln x + \frac{\sin x}{x}\right)$.
3. $f(e) = 1$, $f'(e) = \frac{1}{e}$, tehát $y = 1 + \frac{1}{e}(x - e) = \frac{x}{e}$. (Az érintő átmegy az origón!)
4. A $\pm 1$ kivételével mindenütt (ott $x^2 - 1$ vagy $1 - x^2$ alakú). Az $1$-ben $f'_+(1) = 2$, $f'_-(1) = -2$; a $-1$-ben $f'_+(-1) = -2$, $f'_-(-1) = 2$. Ezekben nem differenciálható.
5. $x \neq 0$-ra $f(x) = \pm x^2$, $f'(x) = 2|x|$. A $0$-ban $\frac{x|x|}{x} = |x| \to 0$, tehát $f'(0) = 0$. Összesen $f'(x) = 2|x|$.
6. $\frac{1}{1 + x^2} - \frac{1}{x^2 + 1} = 0$ (a 2.g) feladat szerint). A függvény a $(0, +\infty)$-en és a $(-\infty, 0)$-n is állandó: ott rendre $\frac{\pi}{2}$, illetve $-\frac{\pi}{2}$ (behelyettesítve $x = \pm 1$-et).
7. $f(1) = 2$, $f'(1) = 3\cdot 1 + 1 = 4$, tehát $(f^{-1})'(2) = \frac{1}{4}$.

---

# XIII. RÉSZ: A DIFFERENCIÁLSZÁMÍTÁS ALKALMAZÁSAI

Az előző részben megtanultuk kiszámolni a deriváltat. Most azt vizsgáljuk, mire jó. A derivált **lokális** információ: egyetlen pontban mondja meg a függvény változásának sebességét. A differenciálszámítás igazi ereje abban áll, hogy ebből a lokális információból **globális** következtetéseket vonhatunk le: monotonitásról, szélsőértékekről, konvexitásról, egyenlőtlenségekről, határértékekről, sőt a függvény értékeinek közelítéséről. A híd a lokális és a globális között a **középértéktétel** (74. szakasz) — és rajta keresztül végső soron ismét a teljességi axióma.

## 73. Lokális növekedés és szélsőérték

> **Definíció.** Az $f$ függvény **lokálisan növekedő** az $a$ helyen, ha van olyan $\delta > 0$, hogy $(a - \delta, a + \delta) \subset D(f)$, és
>
> - minden $x \in (a - \delta, a)$-ra $f(x) \le f(a)$,
> - minden $x \in (a, a + \delta)$-ra $f(x) \ge f(a)$.
>
> **Szigorúan lokálisan növekedő**, ha itt szigorú egyenlőtlenségek állnak. Hasonlóan definiáljuk a (szigorúan) lokálisan csökkenő fogalmat.

Szavakban: az $a$-tól balra (közel) a függvény legfeljebb $f(a)$, jobbra legalább $f(a)$. Ez csak az $a$ ponthoz viszonyít; azt nem mondja, hogy a függvény a környezetben monoton volna.

Ha $f$ (szigorúan) monoton növekedő egy $(c, d)$ intervallumon, akkor annak minden pontjában (szigorúan) lokálisan növekedő. **A megfordítás hamis**: a lokális növekedés jóval gyengébb tulajdonság, mint bármely környezetbeli monotonitás. Két példa:

**a)** Legyen $f(x) = \frac{1}{x}$, ha $x \neq 0$, és $f(0) = 0$. Ez szigorúan lokálisan nő a $0$-ban (balról minden érték negatív, jobbról minden érték pozitív), holott a $0$ semmilyen környezetében nem monoton — mindkét oldalon csökken.

**b)** Legyen $f(x) = x\sin^2\frac{1}{x}$, ha $x \neq 0$, és $f(0) = 0$. Ekkor $x > 0$-ra $f(x) \ge 0$, $x < 0$-ra $f(x) \le 0$, tehát $f$ lokálisan nő a $0$-ban. De a $0$ egyetlen környezetében sem monoton: a pozitív oldalon az $x = \frac{1}{k\pi}$ pontokban nulla, közöttük pozitív, tehát végtelen sokszor „fel-le” mozog.

> **Tétel (a szélsőérték szükséges feltétele, Fermat-tétel).** Tegyük fel, hogy $f$ differenciálható az $a$-ban.
>
> 1. Ha $f$ lokálisan nő $a$-ban, akkor $f'(a) \ge 0$.
> 2. Ha $f$ lokálisan csökken $a$-ban, akkor $f'(a) \le 0$.
> 3. Ha $f$-nek lokális szélsőértéke van $a$-ban, akkor $f'(a) = 0$.

*Bizonyítás.* **1.** Ha $f$ lokálisan nő $a$-ban, akkor $a$ egy pontozott környezetében a differenciahányados nemnegatív: $x > a$-ra a számláló $f(x) - f(a) \ge 0$ és a nevező pozitív; $x < a$-ra a számláló $\le 0$ és a nevező negatív. A határérték öröklődése szerint (53. szakasz) $f'(a) \ge 0$.

**2.** Ugyanígy, fordított előjelekkel.

**3.** Legyen $a$ lokális maximumhely. Az $a$-tól jobbra $f(x) \le f(a)$, így ott a differenciahányados $\le 0$, és határátmenettel $f'(a) = f'_+(a) \le 0$. Az $a$-tól balra is $f(x) \le f(a)$, de most a nevező negatív, így a differenciahányados $\ge 0$, és $f'(a) = f'_-(a) \ge 0$. A kettőből $f'(a) = 0$. A minimum esete hasonló. $\blacksquare$

**Geometriailag** a 3. pont azt mondja, hogy a sima görbe „csúcsán” és „völgyében” az érintő **vízszintes**. Ez a szélsőérték-keresés alapja: **a lehetséges lokális szélsőértékhelyeket az $f'(x) = 0$ egyenlet megoldásai között kell keresni** (feltéve, hogy a függvény differenciálható). Az $f'(x) = 0$ megoldásait **stacionárius** (kritikus) pontoknak nevezzük.

**Fontos figyelmeztetések.**

- **A megfordítás hamis.** $f(x) = x^3$ esetén $f'(0) = 0$, de a $0$-ban nincs szélsőérték (a függvény szigorúan nő). Az $f'(a) = 0$ feltétel tehát **szükséges, de nem elégséges**. Az 1. és 2. pont sem fordítható meg: $f(x) = x^2$ esetén $f'(0) = 0 \ge 0$, de $f$ nem lokálisan növekedő a $0$-ban.
- **A tétel csak differenciálható pontokra szól.** Az $|x|$ függvénynek a $0$-ban minimuma van, de ott nem is differenciálható. A szélsőértékhelyek tehát lehetnek olyan pontokban is, ahol a derivált nem létezik.
- **A tétel csak belső pontokra szól.** Az $f(x) = x$ függvény a $[0, 1]$-en az $1$-ben veszi fel a maximumát, pedig $f'(1) = 1 \neq 0$. A lokális szélsőérték definíciója ugyanis teljes környezetet követel meg (41. szakasz). A végpontokat ezért mindig külön kell megvizsgálni.

> **Tétel (elégséges feltétel a szigorú lokális monotonitásra).** Ha $f$ differenciálható $a$-ban és
>
> 1. $f'(a) > 0$, akkor $f$ szigorúan lokálisan nő $a$-ban;
> 2. $f'(a) < 0$, akkor $f$ szigorúan lokálisan csökken $a$-ban.

*Bizonyítás (1.).* Mivel
$$\lim_{x \to a}\frac{f(x) - f(a)}{x - a} = f'(a) > 0,$$
az előjeltartás (53. szakasz) szerint $a$ egy $\dot{B}(a, \delta)$ pontozott környezetében a differenciahányados pozitív. Ez pontosan azt jelenti, hogy $x > a$ esetén $f(x) > f(a)$, és $x < a$ esetén $f(x) < f(a)$. $\blacksquare$

**Ez sem fordítható meg:** $f(x) = x^3$ szigorúan lokálisan nő a $0$-ban, mégis $f'(0) = 0$. És vigyázat: a tétel **nem** mondja, hogy $f'(a) > 0$ esetén $f$ monoton volna $a$ egy környezetében! (Van olyan függvény, amelyre $f'(0) = 1$, mégis a $0$ minden környezetében végtelen sokszor változtatja a monotonitását; ilyen az $f(x) = x + 2x^2\sin\frac{1}{x}$, $f(0) = 0$.)

## 74. Középértéktételek

Ez a három tétel a differenciálszámítás gerince. Mindhárom azt mondja ki, hogy ha egy függvény egy intervallumon „összességében” valahogyan változik, akkor van olyan pont, ahol a **pillanatnyi** változás pontosan ilyen.

> **Tétel (Rolle-tétel).** Ha $f \in C[a, b]$, $f$ differenciálható az $(a, b)$-n, és $f(a) = f(b)$, akkor van olyan $c \in (a, b)$, amelyre
> $$f'(c) = 0.$$

**Szemléletesen:** ha egy sima görbe ugyanabban a magasságban kezdődik és végződik, akkor valahol vízszintes az érintője. Fizikailag: ha egy feldobott labda ugyanoda esik vissza, ahonnan elindult, akkor valamikor (a pálya tetején) a függőleges sebessége nulla.

*Bizonyítás.* Ha $f$ állandó, akkor $f'(c) = 0$ minden $c \in (a, b)$-re. Ha nem állandó, akkor van olyan $x_0 \in (a, b)$, amelyre $f(x_0) \neq f(a)$; legyen például $f(x_0) > f(a)$ (a másik eset a minimummal ugyanígy megy). Mivel $f \in C[a, b]$, a **Weierstrass-tétel** (54. szakasz) szerint $f$ felveszi a maximumát valamely $c \in [a, b]$ pontban. Ez a pont nem lehet $a$ vagy $b$, hiszen ott az érték $f(a) = f(b) < f(x_0) \le f(c)$. Tehát $c \in (a, b)$ belső pont, ahol $f$-nek (abszolút, tehát lokális) maximuma van; az előző szakasz szerint $f'(c) = 0$. $\blacksquare$

Figyeljük meg, hogy a bizonyítás lényegében a Weierstrass-tételre, így végső soron a Bolzano–Weierstrass-tételre és a **teljességi axiómára** támaszkodik.

**A feltételek szükségessége.**

- **A belső pontokbeli differenciálhatóság:** $f(x) = |x|$ a $[-1, 1]$-en folytonos, $f(-1) = f(1)$, de a deriváltja sehol sem nulla (a $0$-ban nem is létezik).
- **A végpontokbeli folytonosság:** $f(x) = x$ a $[0, 1)$-en, $f(1) = 0$: differenciálható a $(0, 1)$-en, $f(0) = f(1)$, de $f' \equiv 1$.

> **Tétel (Lagrange-féle középértéktétel).** Ha $f \in C[a, b]$ és $f$ differenciálható az $(a, b)$-n, akkor van olyan $c \in (a, b)$, amelyre
> $$f'(c) = \frac{f(b) - f(a)}{b - a}.$$

**Szemléletesen:** van olyan belső pont, ahol az **érintő párhuzamos a végpontokat összekötő húrral**. Fizikailag: ha egy autó $2$ óra alatt $200$ km-t tett meg, akkor valamikor pontosan $100$ km/h-val haladt. (Egy autópálya-szakaszos sebességmérés pontosan ezen a tételen alapul: ha az átlagsebesség meghaladta a megengedettet, akkor valamikor a pillanatnyi is.)

*Bizonyítás.* „Fordítsuk el” a függvényt úgy, hogy a húr vízszintes legyen, és alkalmazzuk a Rolle-tételt. Legyen
$$g(x) = f(x) - \frac{f(b) - f(a)}{b - a}(x - a),$$
vagyis vonjuk ki $f$-ből a húr meredekségével arányos lineáris tagot. Ekkor $g \in C[a, b]$, $g$ differenciálható $(a, b)$-n, és
$$g(a) = f(a), \qquad g(b) = f(b) - \big(f(b) - f(a)\big) = f(a).$$
A Rolle-tétel szerint van olyan $c \in (a, b)$, amelyre
$$0 = g'(c) = f'(c) - \frac{f(b) - f(a)}{b - a}. \qquad \blacksquare$$

A Lagrange-tétel gyakran így használatos: **$f(b) - f(a) = f'(c)(b - a)$ valamely $c$-re $a$ és $b$ között.** Ez lehetővé teszi, hogy a függvényértékek különbségét a derivált segítségével becsüljük.

**Kidolgozott példa.** Bizonyítsuk be, hogy minden $x, y$-ra $|\sin x - \sin y| \le |x - y|$. (Ezt az 58. szakaszban geometriailag láttuk be; most egyetlen sorban kapjuk meg.) A Lagrange-tétel szerint $\sin x - \sin y = \cos c\cdot(x - y)$ valamely $c$-re, és $|\cos c| \le 1$. Általában: **ha $|f'| \le M$ egy intervallumon, akkor ott $|f(x) - f(y)| \le M|x - y|$.**

> **Tétel (Cauchy-féle középértéktétel).** Ha $f, g \in C[a, b]$, mindkettő differenciálható az $(a, b)$-n, és minden $x \in (a, b)$-re $g'(x) \neq 0$, akkor van olyan $c \in (a, b)$, amelyre
> $$\frac{f'(c)}{g'(c)} = \frac{f(b) - f(a)}{g(b) - g(a)}.$$

**Szemléletesen:** ha a síkban egy pont az $(g(t), f(t))$ pályán mozog, akkor a jobb oldal a kezdő- és végpontot összekötő húr meredeksége, a bal oldal pedig a pálya érintőjének meredeksége a $c$ időpontban. A tétel tehát a Lagrange-tétel „paraméteres görbékre” vonatkozó változata.

**Megjegyzés.** A $g(x) = x$ választással a Lagrange-tételt kapjuk vissza; az pedig $f(a) = f(b)$ esetén a Rolle-tétel. A három tétel tehát egyre általánosabb — mégis mindegyik a Rolle-tételből bizonyítható.

**Figyelem:** a Cauchy-tételt nem lehet úgy bizonyítani, hogy a Lagrange-tételt külön alkalmazzuk $f$-re és $g$-re, és elosztjuk az eredményeket: a két alkalmazás általában **különböző** $c$ pontokat adna.

*Bizonyítás.* Először: $g(b) \neq g(a)$, különben a Rolle-tétel szerint volna olyan pont, ahol $g' = 0$. Legyen
$$h(x) = f(x) - \frac{f(b) - f(a)}{g(b) - g(a)}\big(g(x) - g(a)\big).$$
Ekkor $h \in C[a, b]$, differenciálható $(a, b)$-n, $h(a) = f(a)$ és $h(b) = f(b) - (f(b) - f(a)) = f(a)$. A Rolle-tétel szerint van olyan $c \in (a, b)$, amelyre
$$0 = h'(c) = f'(c) - \frac{f(b) - f(a)}{g(b) - g(a)}\,g'(c).$$
Mivel $g'(c) \neq 0$, oszthatunk vele, és kész. $\blacksquare$

A Cauchy-féle középértéktételre két fontos helyen lesz szükségünk: a L'Hospital-szabály (83. szakasz) és a Taylor-formula (84. szakasz) bizonyításában.

## 75. A Darboux-tulajdonság

> **Definíció.** A $g : I \to \mathbb{R}$ függvény **Darboux-tulajdonságú** az $I$ intervallumon, ha bármely $a < b$, $a, b \in I$ esetén $g$ felvesz minden $g(a)$ és $g(b)$ közötti értéket az $(a, b)$ intervallumban.

A Bolzano–Darboux-tétel (54. szakasz) szerint minden folytonos függvény Darboux-tulajdonságú. **A megfordítás nem igaz** — és éppen ez teszi a következő tételt meglepővé: a deriváltak akkor is Darboux-tulajdonságúak, ha nem folytonosak.

> **Definíció.** Az $f$ **differenciálható az $[a, b]$-n**, ha minden $c \in (a, b)$-ben differenciálható, az $a$-ban jobbról, a $b$-ben balról differenciálható.

> **Tétel (Darboux-tétel).** Ha $f$ differenciálható az $[a, b]$-n, akkor $f'$ felvesz minden $f'_+(a)$ és $f'_-(b)$ közötti értéket. Következésképpen, ha $f$ differenciálható egy $I$ intervallumon, akkor $f'$ Darboux-tulajdonságú $I$-n.

*Bizonyítás.* Legyen például $f'_+(a) < d < f'_-(b)$ (a fordított eset $-f$-re visszavezethető). **Az ötlet:** a $g(x) = f(x) - dx$ függvény deriváltja $f' - d$, és azt kell megmutatnunk, hogy ez valahol nulla — azaz $g$-nek valahol belső szélsőértéke van.

A $g$ differenciálható, tehát folytonos az $[a, b]$-n, így a Weierstrass-tétel szerint felveszi a minimumát valamely $c \in [a, b]$ pontban. Megmutatjuk, hogy $c$ belső pont.

- $g'_+(a) = f'_+(a) - d < 0$. Az előjeltartás szerint van olyan $\delta > 0$, hogy minden $x \in (a, a + \delta)$-ra $\frac{g(x) - g(a)}{x - a} < 0$, azaz $g(x) < g(a)$. Tehát az $a$ nem minimumhely.
- $g'_-(b) = f'_-(b) - d > 0$. Hasonlóan van $x \in (b - \delta, b)$, amelyre $\frac{g(x) - g(b)}{x - b} > 0$, és itt a nevező negatív, így $g(x) < g(b)$. Tehát a $b$ sem minimumhely.

Így $c \in (a, b)$, ahol $g$-nek lokális minimuma van, tehát $g'(c) = 0$, azaz $f'(c) = d$. $\blacksquare$

**Példa: egy nem folytonos derivált.** Legyen
$$f(x) = \begin{cases} x^2\sin\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ha $x \neq 0$, a szabályokkal $f'(x) = 2x\sin\frac{1}{x} + x^2\cos\frac{1}{x}\cdot\left(-\frac{1}{x^2}\right) = 2x\sin\frac{1}{x} - \cos\frac{1}{x}$. A $0$-ban a definícióból:
$$f'(0) = \lim_{x \to 0}\frac{x^2\sin\frac{1}{x}}{x} = \lim_{x \to 0} x\sin\frac{1}{x} = 0,$$
mert $|x\sin\frac{1}{x}| \le |x|$. Tehát $f$ mindenütt differenciálható, de $f'$ nem folytonos a $0$-ban: a $2x\sin\frac{1}{x}$ tag $0$-hoz tart, a $\cos\frac{1}{x}$ tagnak viszont nincs határértéke a $0$-ban (az $x_n = \frac{1}{2n\pi}$ és $y_n = \frac{1}{(2n+1)\pi}$ sorozatokon $1$-et, illetve $-1$-et vesz fel). A Darboux-tétel szerint $f'$ mégis Darboux-tulajdonságú.

**Megjegyzés.** Ha $f'$ folytonos volna, a Darboux-tételre nem volna szükség: a Bolzano–Darboux-tétel közvetlenül alkalmazható volna $f'$-re. A Darboux-tétel értéke éppen abban áll, hogy **a folytonosság feltevése nélkül** működik.

**Alkalmazás.** Létezik-e olyan $f$, amelyre minden $x$-re $f'(x) = \operatorname{sgn} x$? **Nem** — mert a $\operatorname{sgn}$ nem Darboux-tulajdonságú (a $[-1, 1]$-en a $\frac{1}{2}$ értéket nem veszi fel), márpedig minden derivált az. Általában: **egy derivált függvénynek nem lehet ugrása.** (A következő félévben ennek az lesz a következménye, hogy az $\operatorname{sgn}$ függvénynek nincs primitív függvénye.)

**Alkalmazás: előjeltáblázatok jogossága.** Ha egy derivált függvénynek egy intervallumon nincs zérushelye, akkor ott állandó előjelű (különben a Darboux-tétel szerint valahol nulla volna). Ezért szabad a függvényvizsgálatnál a derivált zérushelyei közötti intervallumokon egy-egy pontban kiszámolni az előjelet (77. és 82. szakasz).

## 76. Monotonitási feltételek

A Lagrange-tétel legfontosabb következménye: a derivált előjeléből a függvény monotonitására következtethetünk.

> **Tétel.** Legyen $f \in C[a, b]$, differenciálható az $(a, b)$-n. Ekkor
> $$f \text{ monoton növekedő } [a, b]\text{-n} \iff f'(x) \ge 0 \text{ minden } x \in (a, b)\text{-re},$$
> és hasonlóan a csökkenő esetben $f' \le 0$-val.

*Bizonyítás (növekedő eset).* **($\Rightarrow$)** Ha $f$ monoton nő, akkor minden $c \in (a, b)$-ben lokálisan nő, tehát a 73. szakasz szerint $f'(c) \ge 0$.

**($\Leftarrow$)** Legyen $a \le x_1 < x_2 \le b$. A Lagrange-tétel szerint az $[x_1, x_2]$-n van olyan $c \in (x_1, x_2)$, amelyre
$$f(x_2) - f(x_1) = f'(c)(x_2 - x_1) \ge 0. \qquad \blacksquare$$

A tétel természetesen tetszőleges (nyílt, félig nyílt, nem korlátos) intervallumra is érvényes, hiszen a bizonyítás csak két pont közötti zárt intervallumot használ.

> **Tétel.** Ha $f \in C[a, b]$, differenciálható az $(a, b)$-n, és ott $f' \equiv 0$, akkor $f$ állandó az $[a, b]$-n.

*Bizonyítás.* Az előző tétel szerint $f$ monoton növekedő és monoton csökkenő is, tehát állandó. (Közvetlenül: a Lagrange-tétel szerint $f(x) - f(a) = f'(c)(x - a) = 0$ minden $x$-re.) $\blacksquare$

Ez a látszólag jelentéktelen állítás alapvető. Erre épül a következő félévben a határozatlan integrál (primitív függvény) egyértelműsége — **két függvénynek pontosan akkor ugyanaz a deriváltja egy intervallumon, ha konstansban különböznek** —, és a 86. szakaszban a differenciálegyenletek megoldásainak leírása. Fontos, hogy **intervallumról** van szó: az $\mathbb{R} \setminus \{0\}$-on az $\operatorname{sgn}$ függvény deriváltja azonosan nulla, mégsem állandó.

> **Tétel (szigorú monotonitás elégséges feltétele).** Ha $f \in C[a, b]$, differenciálható az $(a, b)$-n, és ott $f'(x) > 0$ (illetve $f'(x) < 0$), akkor $f$ szigorúan monoton növekedő (illetve csökkenő) az $[a, b]$-n.

*Bizonyítás.* A Lagrange-tétel szerint $x_1 < x_2$ esetén $f(x_2) - f(x_1) = f'(c)(x_2 - x_1) > 0$. $\blacksquare$

**Ez nem fordítható meg:** $f(x) = x^3$ szigorúan monoton növekedő $\mathbb{R}$-en, mégis $f'(0) = 0$. A pontos jellemzés:

> **Tétel.** Legyen $f \in C[a, b]$, differenciálható az $(a, b)$-n. Ekkor $f$ szigorúan monoton növekedő az $[a, b]$-n pontosan akkor, ha
>
> - minden $x \in (a, b)$-re $f'(x) \ge 0$, és
> - nincs olyan $[c, d] \subset [a, b]$, $c < d$ részintervallum, amelyen $f' \equiv 0$.

*Bizonyítás.* $f$ szigorúan monoton nő pontosan akkor, ha monoton nő **és** semmilyen részintervallumon nem állandó (ha $x_1 < x_2$ és $f(x_1) = f(x_2)$, akkor a monotonitás miatt $f$ az $[x_1, x_2]$-n állandó). Az előző tételek szerint ez pontosan a fenti két feltétel. $\blacksquare$

Az $x^3$ példa tanulsága tehát: a derivált **izolált** zérushelyei megengedettek, csak egy egész intervallumon nem tűnhet el.

### Egyenlőtlenségek bizonyítása deriválással

A monotonitási tételek hatékony módszert adnak egyenlőtlenségek bizonyítására: **ha $f(a) = g(a)$ és $x > a$-ra $f'(x) \ge g'(x)$, akkor $x \ge a$-ra $f(x) \ge g(x)$** (alkalmazzuk a tételt az $f - g$ függvényre).

**1. példa: $e^x \ge 1 + x$ minden $x$-re.** Legyen $h(x) = e^x - 1 - x$. Ekkor $h(0) = 0$ és $h'(x) = e^x - 1$, ami $x > 0$-ra pozitív, $x < 0$-ra negatív. Tehát $h$ a $(-\infty, 0]$-n szigorúan csökken, a $[0, +\infty)$-en szigorúan nő, így a $0$-ban van a minimuma: $h(x) \ge h(0) = 0$, egyenlőséggel csak $x = 0$-ra.

**2. példa: $\ln(1 + x) \le x$ minden $x > -1$-re.** Ez az előző példából logaritmálással adódik ($1 + x \le e^x$, és a $\ln$ szigorúan monoton növekedő).

**3. példa: $\arctan x + \arctan\frac{1}{x} = \frac{\pi}{2}$, ha $x > 0$.** A XII. rész 6. feladata szerint a bal oldal deriváltja $0$ a $(0, +\infty)$ intervallumon, tehát ott állandó; az $x = 1$ helyen az értéke $\frac{\pi}{4} + \frac{\pi}{4} = \frac{\pi}{2}$.

## 77. Szélsőérték-feladatok

A gyakorlati alkalmazások jelentős része optimalizálás: valamit maximalizálni (hasznot, térfogatot, hatásfokot) vagy minimalizálni (költséget, időt, anyagfelhasználást) kell. A differenciálszámítás erre szisztematikus módszert ad.

> **Állítás (az eljárás korlátos zárt intervallumon).** Ha $f \in C[a, b]$, differenciálható az $(a, b)$-n, és $f'(x) = 0$ pontosan az $x_1, \dots, x_n \in (a, b)$ pontokban, akkor
> $$\max_{[a, b]} f = \max\{f(a),\ f(b),\ f(x_1),\ \dots,\ f(x_n)\},$$
> és hasonlóan a minimumra.

*Bizonyítás.* A Weierstrass-tétel szerint a maximum létezik. Ha egy belső pontban van, akkor ott lokális maximum is van, tehát a Fermat-tétel szerint ott $f' = 0$, azaz a pont valamelyik $x_k$. Különben a maximum valamelyik végpontban van. $\blacksquare$

Ha $f$ néhány pontban nem differenciálható, azokat is fel kell venni a „jelöltek” listájára.

**Kidolgozott példa 1.** Írjunk az egységsugarú gömbbe maximális térfogatú hengert!

*Megoldás.* Legyen a henger magasságának fele $h$, alapkörének sugara $r$. A gömbbe írás feltétele (a henger tengelymetszetében, Pitagorasz tétele szerint):
$$h^2 + r^2 = 1 \implies r^2 = 1 - h^2.$$
A térfogat tehát egyetlen változó függvénye:
$$V(h) = r^2\pi\cdot 2h = 2\pi h(1 - h^2) = 2\pi(h - h^3), \qquad h \in [0, 1].$$
A derivált $V'(h) = 2\pi(1 - 3h^2)$, ami a $(0, 1)$-ben pontosan a $h = \frac{1}{\sqrt{3}}$ helyen nulla. A jelöltek: $V(0) = 0$, $V(1) = 0$, és
$$V\!\left(\frac{1}{\sqrt{3}}\right) = 2\pi\left(\frac{1}{\sqrt{3}} - \frac{1}{3\sqrt{3}}\right) = \frac{4\pi}{3\sqrt{3}}.$$
A maximális térfogatú henger magassága tehát $\frac{2}{\sqrt{3}}$, alapkörének sugara $\sqrt{\frac{2}{3}}$, térfogata $\frac{4\pi}{3\sqrt{3}} \approx 2{,}418$ — a gömb térfogatának $\frac{1}{\sqrt{3}} \approx 57{,}7\%$-a.

**Kidolgozott példa 2 (a konzervdoboz).** Adott $V$ térfogatú, henger alakú, fedeles dobozok közül melyik készíthető a legkevesebb anyagból?

*Megoldás.* Ha az alapkör sugara $r$, a magasság $m$, akkor $V = \pi r^2 m$, így $m = \frac{V}{\pi r^2}$, és a felszín
$$A(r) = 2\pi r^2 + 2\pi r m = 2\pi r^2 + \frac{2V}{r}, \qquad r \in (0, +\infty).$$
Itt az intervallum nem korlátos és nem zárt, ezért a Weierstrass-tétel nem alkalmazható közvetlenül. A derivált
$$A'(r) = 4\pi r - \frac{2V}{r^2} = \frac{4\pi r^3 - 2V}{r^2},$$
ami pontosan az $r_0 = \sqrt[3]{\frac{V}{2\pi}}$ helyen nulla, előtte negatív, utána pozitív. Tehát $A$ a $(0, r_0]$-n szigorúan csökken, a $[r_0, +\infty)$-en szigorúan nő, így az $r_0$-ban **abszolút** minimuma van. Ekkor $m = \frac{V}{\pi r_0^2} = \frac{2\pi r_0^3}{\pi r_0^2} = 2r_0$: **az optimális doboz magassága egyenlő az átmérőjével.** (A boltok polcain lévő konzervek többsége nem ilyen — a gyártásnál más szempontok is számítanak.)

**A végpontokról soha nem szabad megfeledkezni!** Legyen $f(h) = h - h^3$ a $[-10, 10]$ intervallumon. A stacionárius pontok $\pm\frac{1}{\sqrt{3}}$, ahol $f\left(\pm\frac{1}{\sqrt{3}}\right) = \pm\frac{2}{3\sqrt{3}} \approx \pm 0{,}385$. A végpontokban azonban
$$f(-10) = -10 + 1000 = 990, \qquad f(10) = 10 - 1000 = -990.$$
A maximum tehát a **végpontban** van ($990$), a minimum a másik végpontban ($-990$); a belső stacionárius pontok csak lokális szélsőértékek.

**Nem korlátos vagy nem zárt intervallumon** az abszolút szélsőérték nem feltétlenül létezik; ilyenkor a monotonitási viszonyokat és a „végpontokbeli” határértékeket kell vizsgálni. Ehhez szolgál a következő tétel.

> **Tétel (elsőrendű elégséges feltétel).** Legyen $f$ folytonos $a$-ban és differenciálható az $a$ egy pontozott környezetében. Ha
> $$f'(x) \le 0 \text{ az } (a - \delta, a)\text{-n} \qquad \text{és} \qquad f'(x) \ge 0 \text{ az } (a, a + \delta)\text{-n},$$
> akkor $f$-nek lokális minimuma van $a$-ban. (Szigorú egyenlőtlenségek esetén szigorú lokális minimum; fordított előjelek esetén lokális maximum.)

*Bizonyítás.* A 76. szakasz szerint $f$ monoton csökkenő az $(a - \delta, a]$-n és monoton növekedő az $[a, a + \delta)$-n (a folytonosság miatt a végpont is hozzávehető). Tehát mindkét oldalon $f(x) \ge f(a)$. $\blacksquare$

Röviden: **a derivált előjelváltása dönt.** Ha a derivált negatívból pozitívba vált, minimum; ha pozitívból negatívba, maximum; ha nem vált előjelet (mint az $x^3$ a $0$-ban), nincs szélsőérték.

**Kidolgozott példa 3.** Legyen $f(h) = h - h^3$ a $[-1, +\infty)$ intervallumon. A derivált $f'(h) = 1 - 3h^2$ lefelé nyíló parabola, gyökei $\pm\frac{1}{\sqrt{3}}$. Készítsünk **előjeltáblázatot** (a Darboux-tétel szerint jogosan: a derivált a zérushelyei között nem vált előjelet):

| $h$ | $-1 \le h < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < h < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3} < h$ |
|---|---|---|---|---|---|
| $f'(h)$ | $-$ | $0$ | $+$ | $0$ | $-$ |
| $f$ | csökken | lok. min. | nő | lok. max. | csökken |

Mivel $f(-1) = 0 < f\left(\frac{1}{\sqrt{3}}\right)$, és a $\left[-1, -\frac{1}{\sqrt{3}}\right]$ szakaszon $f \le f(-1) = 0$, a $\frac{1}{\sqrt{3}}$ az abszolút maximumhely. Abszolút minimum viszont nincs, mert $\lim_{h \to +\infty} f(h) = -\infty$; a $-\frac{1}{\sqrt{3}}$ csak lokális minimumhely.

## 78. Magasabb rendű deriváltak és a Leibniz-szabály

Ha egy függvény deriváltja maga is differenciálható, deriválhatjuk még egyszer. Fizikai példa: ha $s(t)$ az út, akkor $s'(t)$ a sebesség, $s''(t)$ pedig a **gyorsulás** (a sebesség változásának sebessége). Newton második törvénye, $F = ma = ms''$, egy második deriváltról szóló egyenlet.

> **Definíció.** Ha $f'$ differenciálható $a$-ban, akkor $(f')'(a)$ az $f$ $a$-beli **második deriváltja**; jelölése $f''(a)$, $f^{(2)}(a)$, $\left.\frac{d^2f}{dx^2}\right|_{x = a}$. Indukcióval: ha $f^{(k)}$ differenciálható $a$-ban, akkor $f^{(k+1)}(a) = \left(f^{(k)}\right)'(a)$ a **$(k + 1)$-edik derivált**. Megállapodás szerint $f^{(0)} = f$.

**Példák.**

- $f(x) = x^n$: $f'(x) = nx^{n-1}$, $f''(x) = n(n - 1)x^{n-2}$, és általában
$$f^{(k)}(x) = n(n - 1)\cdots(n - k + 1)\,x^{n - k} \quad (k \le n), \qquad f^{(n)}(x) = n!, \qquad f^{(k)} \equiv 0 \ (k > n).$$
Egy $n$-edfokú polinom $(n + 1)$-edik deriváltja tehát azonosan nulla.

- $(e^x)^{(n)} = e^x$ minden $n$-re.
- $\sin' = \cos$, $\sin'' = -\sin$, $\sin''' = -\cos$, $\sin^{(4)} = \sin$: a deriváltak négyesével ismétlődnek. Tömören: $\sin^{(n)}(x) = \sin\left(x + \frac{n\pi}{2}\right)$.
- A második derivált nem mindig létezik. Legyen $f(x) = x|x|$. A XII. rész 5. feladata szerint $f'(x) = 2|x|$, ami a $0$-ban nem differenciálható. Tehát $f''(x) = 2$, ha $x > 0$, $f''(x) = -2$, ha $x < 0$, és $f''(0)$ nem létezik.

> **Tétel (másodrendű elégséges feltétel).** Legyen $f$ differenciálható az $a$ egy környezetében, és tegyük fel, hogy létezik $f''(a)$.
>
> 1. Ha $f'(a) = 0$ és $f''(a) > 0$, akkor $a$ szigorú lokális **minimumhely**.
> 2. Ha $f'(a) = 0$ és $f''(a) < 0$, akkor $a$ szigorú lokális **maximumhely**.

*Bizonyítás (1.).* Mivel $(f')'(a) = f''(a) > 0$, a 73. szakasz elégséges feltétele szerint (az $f'$ függvényre alkalmazva) $f'$ szigorúan lokálisan nő $a$-ban. Tehát van olyan $\delta > 0$, hogy
$$f'(x) < f'(a) = 0 \text{ az } (a - \delta, a)\text{-n}, \qquad f'(x) > f'(a) = 0 \text{ az } (a, a + \delta)\text{-n}.$$
Az előző szakasz elsőrendű feltétele szerint $a$ szigorú lokális minimumhely. $\blacksquare$

**Szemléletesen:** ha $f''(a) > 0$, a grafikon az $a$ körül „felfelé görbül” (konvex, lásd a következő szakaszt), így a vízszintes érintőjű pont csak völgy lehet.

**A tétel nem dönt, ha $f''(a) = 0$.** Ekkor mindhárom eset előfordulhat:
$$f_1(x) = x^3 \ (\text{nincs szélsőérték}), \qquad f_2(x) = x^4 \ (\text{minimum}), \qquad f_3(x) = -x^4 \ (\text{maximum}),$$
és mindháromra $f'(0) = f''(0) = 0$. Ilyenkor magasabb rendű deriváltakat kell vizsgálni:

> **Általánosítás.** Ha $f'(a) = f''(a) = \dots = f^{(2k - 1)}(a) = 0$ és $f^{(2k)}(a) > 0$ (illetve $< 0$), akkor $a$ szigorú lokális minimumhely (illetve maximumhely). Ha viszont az első el nem tűnő derivált **páratlan** rendű, akkor nincs szélsőérték.

(A bizonyítás a 84. szakasz Taylor-formulájával a legegyszerűbb: a függvény az $a$ közelében úgy viselkedik, mint $\frac{f^{(m)}(a)}{m!}(x - a)^m$, ahol $m$ az első el nem tűnő derivált rendje.) A $x^4$ példában az első el nem tűnő derivált $f^{(4)}(0) = 24 > 0$, tehát minimum; az $x^3$-ban $f'''(0) = 6$, páratlan rendű, tehát nincs szélsőérték.

> **Tétel (magasabb rendű deriválási szabályok).** Ha $f$ és $g$ $n$-szer differenciálható $a$-ban, akkor $f + g$ és $f\cdot g$ is, és
>
> 1. $(f + g)^{(n)} = f^{(n)} + g^{(n)}$;
> 2. **(Leibniz-szabály)**
> $$(f\cdot g)^{(n)} = \sum_{k=0}^{n}\binom{n}{k}f^{(k)}g^{(n - k)}.$$

*Bizonyítás (a Leibniz-szabály, $n$ szerinti teljes indukcióval).* $n = 1$-re ez a szorzatszabály: $(fg)' = f'g + fg'$. Tegyük fel, hogy $n$-re igaz, és deriváljuk mindkét oldalt a szorzatszabállyal:
$$(fg)^{(n + 1)} = \sum_{k=0}^{n}\binom{n}{k}\left(f^{(k+1)}g^{(n-k)} + f^{(k)}g^{(n-k+1)}\right).$$
Gyűjtsük össze az azonos $f^{(j)}g^{(n + 1 - j)}$ alakú tagokat. Egy ilyen tag kétszer keletkezik: az első összegből $k = j - 1$-re, $\binom{n}{j-1}$ együtthatóval, és a második összegből $k = j$-re, $\binom{n}{j}$ együtthatóval (a szélső $j = 0$ és $j = n + 1$ esetekben csak egyszer, $1$ együtthatóval). A Pascal-azonosság szerint
$$\binom{n}{j - 1} + \binom{n}{j} = \binom{n + 1}{j},$$
tehát $(fg)^{(n+1)} = \sum_{j=0}^{n+1}\binom{n+1}{j}f^{(j)}g^{(n + 1 - j)}$. $\blacksquare$

A Leibniz-szabály szerkezete pontosan a **binomiális tétel** szerkezete — $(a + b)^n = \sum\binom{n}{k}a^kb^{n-k}$ —, csak a hatványok helyén deriváltak állnak.

**Példa.** $(x^2e^x)^{(10)}$: mivel $(x^2)^{(k)} = 0$, ha $k \ge 3$, csak három tag marad:
$$(x^2e^x)^{(10)} = \binom{10}{0}x^2e^x + \binom{10}{1}2x\,e^x + \binom{10}{2}2\,e^x = (x^2 + 20x + 90)e^x.$$

## 79. Konvexitás és a derivált

A 42–44. szakaszban a konvexitást a húrok segítségével definiáltuk és jellemeztük. Differenciálható függvényekre sokkal kényelmesebb jellemzés is van: a derivált monotonitása.

> **Tétel.** Legyen $f$ differenciálható az $I$ intervallumon. Ekkor
>
> 1. $f$ pontosan akkor konvex (konkáv) $I$-n, ha $f'$ monoton növekedő (csökkenő) $I$-n;
> 2. $f$ pontosan akkor szigorúan konvex (konkáv) $I$-n, ha $f'$ szigorúan monoton növekedő (csökkenő) $I$-n.

**Szemléletesen:** ahogy balról jobbra haladunk egy konvex grafikonon, az érintő egyre meredekebb lesz — „felfelé fordul”.

*Bizonyítás (1., konvex eset).*

**($\Rightarrow$)** Legyen $f$ konvex, $a, b \in I$, $a < b$. A 44. szakasz szerint az $a$-ból induló húrok meredeksége, $m_a(x) = \frac{f(x) - f(a)}{x - a}$, monoton növekedő. Ezért minden $x \in (a, b)$-re
$$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(a)}{b - a},$$
és $x \to a + 0$ határátmenettel (a bal oldal $f'(a)$-hoz tart)
$$(\otimes) \qquad f'(a) \le \frac{f(b) - f(a)}{b - a}.$$
Hasonlóan a $b$-ből induló húrok meredeksége, $m_b(x) = \frac{f(x) - f(b)}{x - b}$, is monoton növekedő, így $x \in (a, b)$-re $m_b(a) \le m_b(x)$, és $x \to b - 0$ határátmenettel
$$(\otimes\otimes) \qquad \frac{f(b) - f(a)}{b - a} \le f'(b).$$
A kettőt összerakva $f'(a) \le f'(b)$.

**($\Leftarrow$)** Legyen $f'$ monoton növekedő, és $a < x < b$ az $I$ pontjai. A Lagrange-tétel szerint vannak $u \in (a, x)$ és $v \in (x, b)$ pontok, amelyekre
$$f'(u) = \frac{f(x) - f(a)}{x - a}, \qquad f'(v) = \frac{f(b) - f(x)}{b - x}.$$
Mivel $u < v$, $f'(u) \le f'(v)$, tehát
$$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(x)}{b - x}.$$
A pozitív nevezőkkel felszorozva és rendezve:
$$f(x)(b - x) + f(x)(x - a) \le f(a)(b - x) + f(b)(x - a) \implies f(x)(b - a) \le f(a)(b - a) + \big(f(b) - f(a)\big)(x - a),$$
azaz
$$f(x) \le f(a) + \frac{f(b) - f(a)}{b - a}(x - a),$$
ami éppen a konvexitás definíciója. A szigorú eset ugyanígy megy. $\blacksquare$

Ha $f$ kétszer differenciálható, akkor $f'$ monotonitását a 76. szakasz szerint $f''$ előjele jellemzi:

> **Tétel (a második derivált próbája).** Legyen $f$ kétszer differenciálható az $I$ intervallumon. Ekkor
> $$f \text{ konvex } I\text{-n} \iff f'' \ge 0 \text{ az } I\text{-n}, \qquad f \text{ konkáv } I\text{-n} \iff f'' \le 0 \text{ az } I\text{-n};$$
> továbbá ha $f'' > 0$ ($f'' < 0$) az $I$ belsejében, akkor $f$ szigorúan konvex (konkáv).

**A szigorú esetben nincs megfordítás.** $f(x) = x^4$ szigorúan konvex (hiszen $f'(x) = 4x^3$ szigorúan monoton növekedő), mégis $f''(0) = 0$.

**Példák.**

- $e^x$: $(e^x)'' = e^x > 0$, tehát **szigorúan konvex** $\mathbb{R}$-en.
- $\ln x$: $(\ln x)'' = -\frac{1}{x^2} < 0$, tehát **szigorúan konkáv** a $(0, +\infty)$-en.
- $x^p$ a $(0, +\infty)$-en: $(x^p)'' = p(p - 1)x^{p-2}$, tehát $p > 1$ vagy $p < 0$ esetén szigorúan konvex, $0 < p < 1$ esetén szigorúan konkáv. (Ebből kapjuk a 12. szakaszban említett racionális kitevős Bernoulli-egyenlőtlenséget is, a 81. szakaszban bizonyítandó érintő-tulajdonság segítségével.)
- $\sin x$: $\sin'' x = -\sin x$, tehát a $\sin$ szigorúan konkáv a $[0, \pi]$-n (ott $\sin \ge 0$), és szigorúan konvex a $[\pi, 2\pi]$-n.


## 80. A Young-, a Hölder- és a Cauchy–Bunyakovszkij-egyenlőtlenség

A logaritmus konkávitása és a Jensen-egyenlőtlenség (43. szakasz) együtt rendkívül erős eszközt ad egyenlőtlenségek bizonyítására. Először egy régi ismerőst bizonyítunk újra.

**A számtani–mértani egyenlőtlenség, újra.** A $\ln$ konkáv, tehát a Jensen-egyenlőtlenség megfordítva érvényes rá: pozitív $a_1, \dots, a_n$ számokra és $p_1 + \dots + p_n = 1$ pozitív súlyokra
$$\ln(p_1a_1 + \dots + p_na_n) \ge p_1\ln a_1 + \dots + p_n\ln a_n = \ln\left(a_1^{p_1}\cdots a_n^{p_n}\right).$$
Mivel $\ln$ szigorúan monoton növekedő, ebből
$$a_1^{p_1}a_2^{p_2}\cdots a_n^{p_n} \le p_1a_1 + p_2a_2 + \dots + p_na_n.$$
Ez a **súlyozott** számtani–mértani egyenlőtlenség; a $p_k = \frac{1}{n}$ választással a 10. szakasz tételét kapjuk vissza — Cauchy trükkös indukciója nélkül, egyetlen sorban. (Persze a mélyebb munkát most a konkávitás és a deriválás végezte el.)

> **Tétel (Young-egyenlőtlenség).** Ha $a, b > 0$, $p, q > 1$ és $\frac{1}{p} + \frac{1}{q} = 1$, akkor
> $$ab \le \frac{a^p}{p} + \frac{b^q}{q}.$$

*Bizonyítás.* Alkalmazzuk a súlyozott számtani–mértani egyenlőtlenséget az $a^p$ és $b^q$ számokra, az $\frac{1}{p}$ és $\frac{1}{q}$ súlyokkal:
$$(a^p)^{1/p}(b^q)^{1/q} \le \frac{1}{p}a^p + \frac{1}{q}b^q,$$
és a bal oldal éppen $ab$. $\blacksquare$

A $p = q = 2$ esetben ez a jól ismert $ab \le \frac{a^2 + b^2}{2}$ egyenlőtlenség.

> **Tétel (Hölder-egyenlőtlenség).** Ha $p, q > 1$, $\frac{1}{p} + \frac{1}{q} = 1$, és $a_k, b_k \ge 0$ ($k = 1, \dots, n$), akkor
> $$a_1b_1 + \dots + a_nb_n \le \underbrace{\left(a_1^p + \dots + a_n^p\right)^{1/p}}_{A}\cdot\underbrace{\left(b_1^q + \dots + b_n^q\right)^{1/q}}_{B}.$$

*Bizonyítás.* Ha $A = 0$ vagy $B = 0$, akkor minden $a_k$ vagy minden $b_k$ nulla, és az állítás triviális. Egyébként **normáljuk** a számokat: alkalmazzuk a Young-egyenlőtlenséget az $\frac{a_k}{A}$ és $\frac{b_k}{B}$ párokra:
$$\frac{a_k}{A}\cdot\frac{b_k}{B} \le \frac{1}{p}\cdot\frac{a_k^p}{A^p} + \frac{1}{q}\cdot\frac{b_k^q}{B^q}.$$
Összegezzük $k = 1, \dots, n$-re:
$$\frac{a_1b_1 + \dots + a_nb_n}{AB} \le \frac{1}{p}\cdot\frac{a_1^p + \dots + a_n^p}{A^p} + \frac{1}{q}\cdot\frac{b_1^q + \dots + b_n^q}{B^q} = \frac{1}{p} + \frac{1}{q} = 1,$$
hiszen $A^p = a_1^p + \dots + a_n^p$ és $B^q = b_1^q + \dots + b_n^q$. $AB$-vel szorozva kész. $\blacksquare$

Figyeljük meg a bizonyítás szépségét: a normálás után a jobb oldal **pontosan $1$** lesz — ezért szól a feltétel éppen így: $\frac{1}{p} + \frac{1}{q} = 1$.

**Speciális eset ($p = q = 2$): a Cauchy–Bunyakovszkij-egyenlőtlenség.**
$$a_1b_1 + \dots + a_nb_n \le \sqrt{a_1^2 + \dots + a_n^2}\cdot\sqrt{b_1^2 + \dots + b_n^2}.$$
(Az abszolút értékekre alkalmazva tetszőleges előjelű számokra is érvényes.) Vektoros alakban ez azt mondja, hogy **a skaláris szorzat legfeljebb akkora, mint a hosszak szorzata**:
$$\underline{a}\cdot\underline{b} \le \|\underline{a}\|\cdot\|\underline{b}\|.$$
Síkvektorokra ez a $\underline{a}\cdot\underline{b} = \|\underline{a}\|\|\underline{b}\|\cos\varphi$ képletből és a $\cos\varphi \le 1$ egyenlőtlenségből ismert; a tétel szerint tetszőleges dimenzióban igaz. Ez teszi lehetővé, hogy $n$ dimenzióban is szögeket definiáljunk, és belőle következik a vektorokra vonatkozó háromszög-egyenlőtlenség is.

## 81. Érintő és inflexiós pontok

A konvexitást eddig a húrokkal (a grafikon a húrok **alatt** van) és a derivált monotonitásával jellemeztük. Most egy harmadik, szemléletes jellemzést adunk az érintőkkel.

> **Tétel (az érintő jellemzése).** Legyen $f$ differenciálható az $I$ intervallumon. Ekkor $f$ pontosan akkor konvex $I$-n, ha minden $a \in I$-re az $a$-beli érintő a grafikon **alatt** halad:
> $$f(x) \ge f(a) + f'(a)(x - a) \qquad \text{minden } x, a \in I\text{-re}.$$

*Bizonyítás.* **($\Rightarrow$)** Legyen $f$ konvex. Ha $x > a$, akkor a 79. szakasz $(\otimes)$ egyenlőtlensége (a $b = x$ választással) szerint $f'(a) \le \frac{f(x) - f(a)}{x - a}$, amiből szorzással $f(a) + f'(a)(x - a) \le f(x)$. Ha $x < a$, akkor a $(\otimes\otimes)$ egyenlőtlenség (az $x, a$ párra) szerint $\frac{f(a) - f(x)}{a - x} \le f'(a)$, amiből $f(a) - f(x) \le f'(a)(a - x)$, és átrendezve ismét $f(a) + f'(a)(x - a) \le f(x)$.

**($\Leftarrow$)** Legyen $a < b$. A feltételt az $(a, b)$ és a $(b, a)$ szereposztással felírva:
$$f(b) \ge f(a) + f'(a)(b - a) \implies \frac{f(b) - f(a)}{b - a} \ge f'(a),$$
$$f(a) \ge f(b) + f'(b)(a - b) \implies \frac{f(b) - f(a)}{b - a} \le f'(b).$$
Tehát $f'(a) \le f'(b)$: az $f'$ monoton növekedő, így a 79. szakasz szerint $f$ konvex. $\blacksquare$

**Alkalmazások.** Ez a tétel egy csapásra rengeteg egyenlőtlenséget ad:

- $e^x$ konvex, az $x = 0$-beli érintője $y = 1 + x$, tehát $e^x \ge 1 + x$ (a 76. szakasz 1. példája, most egyetlen sorban).
- $\ln x$ konkáv, az $x = 1$-beli érintője $y = x - 1$, tehát $\ln x \le x - 1$.
- $(1 + x)^p$ a $(-1, +\infty)$-en $p > 1$ esetén konvex, az $x = 0$-beli érintője $1 + px$; tehát $(1 + x)^p \ge 1 + px$ — ez a Bernoulli-egyenlőtlenség tetszőleges $p > 1$ valós kitevőre. $0 < p < 1$ esetén a függvény konkáv, és az egyenlőtlenség megfordul (12. szakasz).

### Inflexiós pontok

> **Definíció (inflexiós pont).** Az $a$ az $f$ **inflexiós helye**, ha $f$-nek van (véges vagy végtelen) deriváltja $a$-ban, és van olyan $\delta > 0$, hogy $f$ konvex az $(a - \delta, a]$-n és konkáv az $[a, a + \delta)$-n, vagy fordítva.

Az inflexiós pont tehát a **görbületváltás** helye: a grafikon itt „átfordul” a felfelé görbülésből a lefelé görbülésbe (vagy fordítva). Geometriailag az érintő itt **átmetszi** a grafikont.

**Példák.** A $0$ inflexiós helye az $x^3$ függvénynek (balra konkáv, jobbra konvex), és a $\sqrt[3]{x}$-nek is (balra konvex, jobbra konkáv; itt a derivált végtelen, az érintő függőleges). Az $|x|$-nek viszont a $0$ nem inflexiós helye (mindkét oldalon konvex, és nincs is deriváltja). (Az inflexiós pont definíciója a szakirodalomban nem teljesen egységes; egyes szerzők nem engedik meg a végtelen deriváltat.)

> **Tétel (szükséges feltétel).** Ha $f$ kétszer differenciálható $a$-ban, és $a$ az $f$ inflexiós helye, akkor $f''(a) = 0$.

*Bizonyítás.* Legyen például $f$ konvex az $(a - \delta, a]$-n és konkáv az $[a, a + \delta)$-n. Ekkor $f'$ monoton növekedő az $(a - \delta, a]$-n és monoton csökkenő az $[a, a + \delta)$-n, tehát az $a$ az $f'$ függvény lokális maximumhelye. A Fermat-tétel szerint $(f')'(a) = f''(a) = 0$. $\blacksquare$

A feltétel nem elégséges: $f(x) = x^4$ esetén $f''(0) = 0$, de a $0$ nem inflexiós hely (mindkét oldalon konvex).

> **Tétel (elégséges feltétel előjelváltással).** Ha $f$ kétszer differenciálható az $a$ egy környezetében, és $f''$ az $a$-ban **előjelet vált** (az $a$ egyik oldalán $\ge 0$, a másikon $\le 0$), akkor $a$ inflexiós hely.

*Bizonyítás.* A 79. szakasz szerint ahol $f'' \ge 0$, ott $f$ konvex, ahol $f'' \le 0$, ott konkáv. $\blacksquare$

> **Tétel (a harmadik derivált próbája).** Ha $f$ háromszor differenciálható $a$-ban, $f''(a) = 0$ és $f'''(a) \neq 0$, akkor $a$ inflexiós hely.

*Bizonyítás.* Ha $f'''(a) > 0$, akkor a 73. szakasz szerint (az $f''$-re alkalmazva) $f''$ szigorúan lokálisan nő $a$-ban: balra negatív, jobbra pozitív. Az előző tétel szerint $a$ inflexiós hely. A $f'''(a) < 0$ eset hasonló. $\blacksquare$

**Megjegyzés.** Az $f(x) = x^5$ függvénynek a $0$ inflexiós helye (balra konkáv, jobbra konvex), holott $f''(0) = f'''(0) = f^{(4)}(0) = 0$; csak $f^{(5)}(0) = 120 \neq 0$. Ez vezet az általános szabályhoz:

> **Tétel (magasabb rendű próba).** Legyen $f$ elég sokszor differenciálható $a$-ban, és legyen $f^{(m)}(a)$ ($m \ge 2$) az első nem nulla derivált a másodiktól kezdve: $f''(a) = \dots = f^{(m-1)}(a) = 0$, $f^{(m)}(a) \neq 0$.
>
> - Ha $m$ **páratlan**, akkor $a$ inflexiós hely.
> - Ha $m$ **páros**, akkor $f$ az $a$ egy környezetében szigorúan konvex ($f^{(m)}(a) > 0$) vagy szigorúan konkáv ($f^{(m)}(a) < 0$).

Vagyis: **az első el nem tűnő (legalább másodrendű) derivált rendjének paritása dönt.** (A 78. szakasz szélsőérték-szabályában ugyanez a gondolat szerepelt, az első deriválttól kezdve számolva.)

## 82. Teljes függvényvizsgálat

Az eddigi eszközök segítségével egy függvény grafikonját „biztos kézzel” fel tudjuk rajzolni: nemcsak néhány pontot számolunk ki, hanem tudjuk, hol nő, hol csökken, hol görbül felfelé vagy lefelé, és mi történik a „végeken”. A vizsgálat szokásos menete:

1. **Értelmezési tartomány**, $D(f)$.
2. **Folytonosság**: hol folytonos a függvény?
3. **Határértékek** a szakadási helyeken, az értelmezési tartomány határpontjaiban és a $\pm\infty$-ben.
4. **Monotonitás**: $f'$ előjele.
5. **Szélsőértékek**: lokális és abszolút szélsőértékhelyek és -értékek.
6. **Konvexitás**: $f''$ előjele.
7. **Inflexiós pontok**.
8. **További tulajdonságok**: paritás, periodicitás, zérushelyek, **aszimptoták**.

> **Definíció (aszimptota).** Ha
> $$\lim_{x \to +\infty}\big(f(x) - (mx + b)\big) = 0,$$
> akkor az $y = mx + b$ egyenes az $f$ **aszimptotája** a $+\infty$-ben (ha $m \neq 0$, **ferde aszimptotának** is nevezzük). Hasonlóan a $-\infty$-ben. Ha valamely $a$-ban egy féloldali határérték $\pm\infty$, akkor az $x = a$ egyenes **függőleges aszimptota**.

**Hogyan találjuk meg a ferde aszimptotát?** Ha $y = mx + b$ aszimptota a $+\infty$-ben, akkor $\frac{f(x)}{x} - m - \frac{b}{x} \to 0$, tehát
$$m = \lim_{x \to +\infty}\frac{f(x)}{x}, \qquad b = \lim_{x \to +\infty}\big(f(x) - mx\big).$$
Ha mindkét határérték létezik és véges, akkor van aszimptota; ha bármelyik nem létezik vagy végtelen, akkor nincs.

**Példák.** $f(x) = e^{-x} + x + 5$: itt $f(x) - (x + 5) = e^{-x} \to 0$ a $+\infty$-ben, tehát $y = x + 5$ aszimptota. Az $\arctan$-nak a $-\infty$-ben az $y = -\frac{\pi}{2}$, a $+\infty$-ben az $y = \frac{\pi}{2}$ vízszintes egyenes az aszimptotája.

### Kidolgozott példa 1: az Agnesi-görbe

**Történeti megjegyzés.** A görbe Maria Gaetana Agnesi olasz matematikusnőről kapta a nevét, aki 1748-ban írt nagy hatású analízis-tankönyvében tárgyalta. Angol neve, *witch of Agnesi* („Agnesi boszorkánya”) egy fordítási félreértésből ered: az olasz *la versiera* („a fordulat”, a görbe neve) szót összekeverték az *avversiera* („ördöngös asszony”) szóval.

Legyen
$$f(x) = \frac{1}{1 + x^2}.$$

**1–3. Alapadatok.** $D(f) = \mathbb{R}$, $f$ folytonos (racionális törtfüggvény, a nevező sehol sem nulla), és
$$\lim_{x \to \pm\infty}f(x) = 0,$$
tehát az $y = 0$ egyenes aszimptota mindkét irányban. A függvény **páros**, és mindenütt pozitív.

**4–7. Deriváltak.**
$$f'(x) = -\frac{2x}{(1 + x^2)^2},$$
$$f''(x) = \frac{-2(1 + x^2)^2 + 2x\cdot 2(1 + x^2)\cdot 2x}{(1 + x^2)^4} = \frac{-2(1 + x^2) + 8x^2}{(1 + x^2)^3} = \frac{6x^2 - 2}{(1 + x^2)^3}.$$
Zérushelyek: $f'(x) = 0 \iff x = 0$; $f''(x) = 0 \iff x = \pm\frac{1}{\sqrt{3}}$.

**Vizsgálati táblázat.** (A nevezők pozitívak, így az előjeleket a számlálók döntik el.)

| | $x < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < x < 0$ | $0$ | $0 < x < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $x > \frac{1}{\sqrt3}$ |
|---|---|---|---|---|---|---|---|
| $f'$ | $+$ | $+$ | $+$ | $0$ | $-$ | $-$ | $-$ |
| $f''$ | $+$ | $0$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f$ | nő, konvex | **infl.** | nő, konkáv | **max.** | csökken, konkáv | **infl.** | csökken, konvex |

**Összefoglalás.**

- $f$ szigorúan monoton növekedő a $(-\infty, 0]$-n, szigorúan monoton csökkenő a $[0, +\infty)$-en.
- Szigorúan konvex a $\left(-\infty, -\frac{1}{\sqrt{3}}\right]$ és a $\left[\frac{1}{\sqrt{3}}, +\infty\right)$ intervallumon, szigorúan konkáv a $\left[-\frac{1}{\sqrt{3}}, \frac{1}{\sqrt{3}}\right]$-n.
- Abszolút maximuma a $0$-ban van: $f(0) = 1$. Abszolút minimuma **nincs** (az infimum $0$, de nem vétetik fel). Az értékkészlet $(0, 1]$.
- Inflexiós helyek: $\pm\frac{1}{\sqrt{3}}$, ahol $f = \frac{3}{4}$.

A grafikon egy harang alakú görbe, amely a $0$ fölött a legmagasabb, és mindkét irányban az $x$ tengelyhez simul.

### Kidolgozott példa 2: ferde aszimptota

Legyen $f(x) = \dfrac{x^2}{x - 1}$.

**Alapadatok.** $D(f) = \mathbb{R}\setminus\{1\}$, ott folytonos. Polinomosztással
$$f(x) = x + 1 + \frac{1}{x - 1}.$$
Ebből azonnal leolvasható: $f(x) - (x + 1) = \frac{1}{x - 1} \to 0$, ha $x \to \pm\infty$, tehát **$y = x + 1$ ferde aszimptota** mindkét irányban; és $\lim_{x \to 1 \pm 0}f(x) = \pm\infty$, tehát **$x = 1$ függőleges aszimptota**.

**Deriváltak.**
$$f'(x) = 1 - \frac{1}{(x - 1)^2} = \frac{x(x - 2)}{(x - 1)^2}, \qquad f''(x) = \frac{2}{(x - 1)^3}.$$
Stacionárius pontok: $x = 0$ és $x = 2$. Az $f'$ előjele: $x < 0$-ra $+$, $(0, 1)$-en és $(1, 2)$-n $-$, $x > 2$-re $+$. Az $f''$ előjele: $x < 1$-re $-$, $x > 1$-re $+$.

**Eredmény.** Lokális maximum a $0$-ban ($f(0) = 0$), lokális minimum a $2$-ben ($f(2) = 4$). A függvény konkáv a $(-\infty, 1)$-en, konvex az $(1, +\infty)$-en; inflexiós pontja nincs (a görbületváltás helye, az $1$, nincs az értelmezési tartományban). Érdekesség: a **lokális maximum kisebb, mint a lokális minimum** ($0 < 4$) — a két ág között a függőleges aszimptota „szakítja meg” a grafikont. Abszolút szélsőérték nincs.

## 83. A L'Hospital-szabály

A 26. szakaszban láttuk, hogy a $\frac{0}{0}$ és $\frac{\infty}{\infty}$ alakú határértékek **kritikusak**: a számláló és a nevező határértékéből semmi sem következik. Eddig ilyenkor ügyes átalakításokkal (egyszerűsítés, gyöktelenítés, nevezetes határértékek) boldogultunk. A L'Hospital-szabály általános módszert ad: **a hányados helyett a deriváltak hányadosának határértékét számoljuk.**

**Miért működhet ez?** Ha $f(a) = g(a) = 0$, és mindkét függvény differenciálható $a$-ban, $g'(a) \neq 0$, akkor
$$\frac{f(x)}{g(x)} = \frac{f(x) - f(a)}{g(x) - g(a)} = \frac{\frac{f(x) - f(a)}{x - a}}{\frac{g(x) - g(a)}{x - a}} \to \frac{f'(a)}{g'(a)}.$$
Szemléletesen: $a$ közelében mindkét függvény jól közelíthető az érintőjével, $f(x) \approx f'(a)(x - a)$ és $g(x) \approx g'(a)(x - a)$, és a hányadosukban az $(x - a)$ kiesik. A tétel ennél általánosabb: nem kell, hogy $f'(a)$ és $g'(a)$ létezzen, elég a $\frac{f'}{g'}$ hányados határértéke.

**Történeti megjegyzés.** A szabály névadója Guillaume-François-Antoine de l'Hôpital márki, aki 1696-ban megírta az első differenciálszámítási tankönyvet. A szabályt azonban valójában tanára, Johann Bernoulli fedezte fel, aki egy szerződésben — rendszeres fizetségért cserébe — átengedte matematikai eredményei közlésének jogát l'Hôpitalnak. Bernoulli később keservesen panaszkodott, hogy a szabályt nem az ő nevén ismerik.

> **Tétel (L'Hospital-szabály).** Legyen $f$ és $g$ differenciálható az $\alpha$ egy $\dot{U}$ pontozott környezetében, ahol $g'(x) \neq 0$, és teljesüljön az alábbiak egyike:
>
> - **(1)** $\displaystyle \lim_{x \to \alpha}f(x) = \lim_{x \to \alpha}g(x) = 0$ (a $\frac{0}{0}$ eset), vagy
> - **(2)** $\displaystyle \lim_{x \to \alpha}|g(x)| = +\infty$ (a $\frac{\ast}{\infty}$ eset).
>
> Ha létezik a
> $$\lim_{x \to \alpha}\frac{f'(x)}{g'(x)} = A$$
> határérték, akkor létezik a $\displaystyle\lim_{x \to \alpha}\frac{f(x)}{g(x)}$ határérték is, és értéke $A$.

**Megjegyzés.** A tétel mind a tizenöt határérték-típusra érvényes: $\alpha$ lehet $a - 0$, $a$, $a + 0$, $\pm\infty$, és $A$ lehet valós szám vagy $\pm\infty$.

*Bizonyítás (az $\alpha = a + 0$, $A = b \in \mathbb{R}$, (1) esetben).* Legyen $\varepsilon > 0$. A feltevés szerint van olyan $\delta > 0$, hogy minden $x \in (a, a + \delta)$-ra
$$\left|\frac{f'(x)}{g'(x)} - b\right| < \frac{\varepsilon}{2}.$$
Terjesszük ki $f$-et és $g$-t az $a$-ra $f(a) = g(a) = 0$-val; ekkor az (1) feltétel miatt mindkettő jobbról folytonos $a$-ban. Legyen $x \in (a, a + \delta)$. Az $[a, x]$ intervallumon alkalmazzuk a **Cauchy-féle középértéktételt**: van olyan $c \in (a, x)$, amelyre
$$\frac{f(x)}{g(x)} = \frac{f(x) - f(a)}{g(x) - g(a)} = \frac{f'(c)}{g'(c)}.$$
Mivel $c \in (a, a + \delta)$, ezért
$$\left|\frac{f(x)}{g(x)} - b\right| = \left|\frac{f'(c)}{g'(c)} - b\right| < \frac{\varepsilon}{2} < \varepsilon.$$
Ez minden $x \in (a, a + \delta)$-ra igaz, tehát $\frac{f(x)}{g(x)} \to b$. $\blacksquare$

(A (2) esetben a bizonyítás hasonló, de technikásabb: az $[y, x]$ intervallumra alkalmazzuk a Cauchy-tételt, és azt használjuk ki, hogy $y \to a$ esetén $g(y)$ „elnyomja” a rögzített $f(x)$ és $g(x)$ értékeket. A $\pm\infty$-beli esetek a $t = \frac{1}{x}$ helyettesítéssel visszavezethetők a véges esetre.)

A bizonyítás a Cauchy-féle középértéktételen áll vagy bukik — ezért volt szükség rá a 74. szakaszban.

### Kidolgozott példák

**1. A nevezetes határértékek újra.** $\lim_{x \to 0}\frac{\sin x}{x} = \lim_{x \to 0}\frac{\cos x}{1} = 1$. **Vigyázat:** ez nem bizonyítás! A $\sin' = \cos$ képlet levezetéséhez éppen ezt a határértéket használtuk (70. szakasz), így ez körben forgó érvelés volna. Ellenőrzésnek viszont jó.

**2. Kétszeri alkalmazás.** $\lim_{x \to 0}\frac{1 - \cos x}{x^2}$: mindkettő $0$-hoz tart, tehát
$$\lim_{x \to 0}\frac{1 - \cos x}{x^2} \overset{\text{L'H}}{=} \lim_{x \to 0}\frac{\sin x}{2x} \overset{\text{L'H}}{=} \lim_{x \to 0}\frac{\cos x}{2} = \frac{1}{2}.$$
(A második lépés helyett a $\frac{\sin x}{x} \to 1$ határértéket is használhattuk volna.) Fontos: a második alkalmazás előtt **ellenőrizni kell**, hogy az új hányados is kritikus alakú — itt $\frac{\sin x}{2x}$ valóban $\frac{0}{0}$.

**3. Növekedési sorrend.** Minden $a > 0$-ra
$$\lim_{x \to +\infty}\frac{\ln x}{x^a} \overset{\text{L'H}}{=} \lim_{x \to +\infty}\frac{1/x}{ax^{a-1}} = \lim_{x \to +\infty}\frac{1}{ax^a} = 0,$$
és minden $n \in \mathbb{N}$-re ($n$-szeri alkalmazással)
$$\lim_{x \to +\infty}\frac{x^n}{e^x} = \lim_{x \to +\infty}\frac{nx^{n-1}}{e^x} = \dots = \lim_{x \to +\infty}\frac{n!}{e^x} = 0.$$
Vagyis: **a logaritmus lassabban nő bármely (pozitív kitevős) hatványnál, a hatványok pedig lassabban nőnek az exponenciális függvénynél.** Ez a „növekedési hierarchia” a függvényvizsgálatoknál és az algoritmusok futásidejének elemzésénél is alapvető.

**4. A $0 \cdot \infty$ eset.** Először törtté alakítunk:
$$\lim_{x \to 0+0}x\ln x = \lim_{x \to 0+0}\frac{\ln x}{1/x} \overset{\text{L'H}}{=} \lim_{x \to 0+0}\frac{1/x}{-1/x^2} = \lim_{x \to 0+0}(-x) = 0.$$
(A másik átalakítás, $\frac{x}{1/\ln x}$, sokkal bonyolultabb deriváltakhoz vezetne. Érdemes úgy átalakítani, hogy a deriválás egyszerűsítsen.)

**5. A $0^0$, $1^\infty$, $\infty^0$ esetek.** Ezeket exponenciális alakra hozzuk: $f^g = e^{g\ln f}$, és a kitevő határértékét számoljuk ki.
$$\lim_{x \to 0+0}x^x = \lim_{x \to 0+0}e^{x\ln x} = e^0 = 1,$$
az előző példa és az $e^x$ folytonossága szerint. Hasonlóan
$$\lim_{x \to 0}(1 + \sin x)^{1/x} = \lim_{x \to 0}e^{\frac{\ln(1 + \sin x)}{x}} = e^1 = e,$$
mert $\lim_{x \to 0}\frac{\ln(1 + \sin x)}{x} \overset{\text{L'H}}{=} \lim_{x \to 0}\frac{\cos x}{1 + \sin x} = 1$.

**Gyakori hibák.**

- **Nem kritikus alakra alkalmazni.** $\lim_{x \to 0}\frac{x + 1}{x + 2} = \frac{1}{2}$, de a deriváltak hányadosa $\frac{1}{1} = 1$. A szabály csak $\frac{0}{0}$ vagy $\frac{\ast}{\infty}$ alakra érvényes!
- **A hányados deriváltját venni** a deriváltak hányadosa helyett. A szabályban $\frac{f'}{g'}$ áll, nem $\left(\frac{f}{g}\right)'$.
- **A megfordítás hamis:** ha $\lim\frac{f'}{g'}$ nem létezik, abból nem következik, hogy $\lim\frac{f}{g}$ sem létezik. Például $\lim_{x \to +\infty}\frac{x + \sin x}{x} = 1$ (hiszen $\frac{\sin x}{x} \to 0$), de a deriváltak hányadosa, $\frac{1 + \cos x}{1}$, oszcillál. Ilyenkor a szabály egyszerűen nem alkalmazható.

## 84. Taylor-polinomok és a Taylor-formula

Ha $f$ differenciálható $a$-ban, akkor $a$ közelében jól közelíthető az érintőjével:
$$f(x) \approx T_1(x) = f(a) + f'(a)(x - a).$$
Az érintő az az **elsőfokú** polinom, amely $a$-ban ugyanazt az értéket és ugyanazt a deriváltat veszi fel, mint $f$. Kézenfekvő kérdés: ha **magasabb fokú** polinomot használunk, és több deriváltban is megköveteljük az egyezést, jobb közelítést kapunk-e? És mekkora a hiba?

**Melyik polinom ez?** Keressük azt a legfeljebb $n$-edfokú
$$p(x) = c_0 + c_1(x - a) + c_2(x - a)^2 + \dots + c_n(x - a)^n$$
polinomot, amelyre $p^{(k)}(a) = f^{(k)}(a)$ minden $k = 0, 1, \dots, n$-re. Deriváljuk $p$-t $k$-szor, és helyettesítsünk $x = a$-t: a $(x - a)^j$ tagok $j < k$ esetén eltűnnek a deriválás során, $j > k$ esetén $x = a$-ban nullák, és csak a $j = k$ tag marad: $\left((x - a)^k\right)^{(k)} = k!$. Tehát $p^{(k)}(a) = k!\,c_k$, és a feltétel szerint
$$c_k = \frac{f^{(k)}(a)}{k!}.$$

> **Definíció (Taylor-polinom).** Ha $f$ $n$-szer differenciálható az $a$ pontban, akkor a
> $$T_n(x) = \sum_{k=0}^{n}\frac{f^{(k)}(a)}{k!}(x - a)^k = f(a) + f'(a)(x - a) + \frac{f''(a)}{2!}(x - a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x - a)^n$$
> polinomot az $f$ függvény $a$ körüli **$n$-edik Taylor-polinomjának** nevezzük.

A fenti számolás szerint ez az egyetlen legfeljebb $n$-edfokú polinom, amelynek $a$-beli deriváltjai a $0$-adiktól az $n$-edikig megegyeznek $f$-éivel. (Az $a = 0$ körüli Taylor-polinomot **Maclaurin-polinomnak** is nevezik.)

**Példák.**

- $f(x) = e^x$, $a = 0$: minden derivált $1$ a $0$-ban, tehát $T_n(x) = 1 + x + \frac{x^2}{2!} + \dots + \frac{x^n}{n!}$.
- $f(x) = \sin x$, $a = 0$: a deriváltak a $0$-ban $0, 1, 0, -1, 0, 1, \dots$, tehát $T_3(x) = T_4(x) = x - \frac{x^3}{6}$.
- $f(x) = \ln(1 + x)$, $a = 0$: $f^{(k)}(x) = (-1)^{k-1}\frac{(k-1)!}{(1 + x)^k}$, tehát $T_n(x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \dots + (-1)^{n-1}\frac{x^n}{n}$.

**A legjobb közelítés.** Megmutatható, hogy a Taylor-polinomra
$$\lim_{x \to a}\frac{f(x) - T_n(x)}{(x - a)^n} = 0,$$
vagyis a hiba „gyorsabban tűnik el”, mint $(x - a)^n$ (ez a **Peano-féle maradéktag**; $n$-szeri L'Hospital-alkalmazással vagy a lenti Taylor-formulával igazolható). Sőt, $T_n$ az **egyetlen** legfeljebb $n$-edfokú polinom ezzel a tulajdonsággal: ha két ilyen polinom volna, a különbségükre, $q(x) = \sum d_k(x - a)^k$-ra, $\frac{q(x)}{(x - a)^n} \to 0$ teljesülne; az $x \to a$ határátmenet sorra $d_0 = 0$-t, majd $(x - a)$-val osztva $d_1 = 0$-t, és így tovább adja. A Taylor-polinom tehát a lehető **legjobb** $n$-edfokú közelítés az $a$ közelében.

A gyakorlatban azonban nem elég tudni, hogy a hiba „kicsi”; azt is tudni akarjuk, **mennyire** kicsi. Erre szolgál a következő tétel, amely a Lagrange-féle középértéktétel messzemenő általánosítása.

> **Tétel (Taylor-formula Lagrange-féle maradéktaggal).** Legyen $f$ $(n + 1)$-szer differenciálható az $a$ és $x$ által határolt zárt intervallumon. Ekkor van olyan $c$ szigorúan $a$ és $x$ között, hogy
> $$f(x) = \underbrace{\sum_{k=0}^{n}\frac{f^{(k)}(a)}{k!}(x - a)^k}_{T_n(x)} + \underbrace{\frac{f^{(n+1)}(c)}{(n + 1)!}(x - a)^{n+1}}_{\text{Lagrange-féle maradéktag}}.$$

**Figyeljük meg a szerkezetet:** a maradéktag pontosan olyan, mint a Taylor-polinom következő, $(n + 1)$-edik tagja volna — csak a derivált nem az $a$-ban, hanem egy ismeretlen $c$ köztes pontban van kiértékelve. $n = 0$-ra a tétel éppen a Lagrange-féle középértéktétel: $f(x) = f(a) + f'(c)(x - a)$.

Ugyanilyen feltételek mellett van olyan $d$ is $a$ és $x$ között, hogy
$$f(x) = T_n(x) + \frac{f^{(n+1)}(d)}{n!}(x - d)^n(x - a) \qquad (\text{Cauchy-féle maradéktag}).$$

*Bizonyítás (a Lagrange-féle maradéktag, $a < x$ esetén).* Rögzítsük $x$-et, és tekintsük a $t \in [a, x]$ változó következő segédfüggvényét: az $f$ $t$ körüli Taylor-polinomját az $x$ pontban kiértékelve, mínusz $f(x)$:
$$R(t) = \left[f(t) + \frac{f'(t)}{1!}(x - t) + \frac{f''(t)}{2!}(x - t)^2 + \dots + \frac{f^{(n)}(t)}{n!}(x - t)^n\right] - f(x).$$
Két megfigyelés: $R(x) = f(x) - f(x) = 0$ (minden $(x - t)$-s tag eltűnik), és $R(a) = T_n(x) - f(x)$ — vagyis $-R(a)$ éppen a keresett hiba.

Deriváljuk $R$-t $t$ szerint. A $\frac{f^{(k)}(t)}{k!}(x - t)^k$ tag deriváltja a szorzatszabállyal
$$\frac{f^{(k+1)}(t)}{k!}(x - t)^k - \frac{f^{(k)}(t)}{(k - 1)!}(x - t)^{k - 1}.$$
Összegezve $k = 0, 1, \dots, n$-re (a $k = 0$ tag deriváltja egyszerűen $f'(t)$), a tagok **teleszkopikusan** kiesnek — minden tag második fele kioltja az előző tag első felét —, és csak az utolsó tag első fele marad:
$$R'(t) = \frac{f^{(n+1)}(t)}{n!}(x - t)^n.$$

Most legyen $h(t) = (x - t)^{n+1}$; erre $h(x) = 0$, $h(a) = (x - a)^{n+1}$, és $h'(t) = -(n + 1)(x - t)^n \neq 0$ a $(a, x)$-en. Alkalmazzuk a **Cauchy-féle középértéktételt** az $R$ és $h$ függvényekre az $[a, x]$-en: van olyan $c \in (a, x)$, amelyre
$$\frac{R(x) - R(a)}{h(x) - h(a)} = \frac{R'(c)}{h'(c)}.$$
A bal oldal $\frac{-R(a)}{-(x - a)^{n+1}} = \frac{R(a)}{(x - a)^{n+1}}$, a jobb oldal pedig — az $(x - c)^n \neq 0$ tényezővel egyszerűsítve —
$$\frac{\frac{f^{(n+1)}(c)}{n!}(x - c)^n}{-(n + 1)(x - c)^n} = -\frac{f^{(n+1)}(c)}{(n + 1)!}.$$
Tehát $R(a) = -\frac{f^{(n+1)}(c)}{(n + 1)!}(x - a)^{n+1}$, és mivel $R(a) = T_n(x) - f(x)$, éppen a kívánt formulát kapjuk. $\blacksquare$

### A Taylor-formula alkalmazása: közelítő számítás hibabecsléssel

**1. példa: az $e$ szám.** Az $e^x$ függvényre, $a = 0$, $x = 1$, a Taylor-formula szerint valamely $c \in (0, 1)$-re
$$e = 1 + 1 + \frac{1}{2!} + \dots + \frac{1}{n!} + \frac{e^c}{(n + 1)!}.$$
Mivel $e^c < e < 3$, a hiba kisebb, mint $\frac{3}{(n + 1)!}$. $n = 7$-re ez $\frac{3}{40320} < 0{,}0001$, és
$$1 + 1 + \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \frac{1}{120} + \frac{1}{720} + \frac{1}{5040} \approx 2{,}71825.$$
Tehát $e \approx 2{,}7183$, négy tizedesjegy pontossággal — mindössze nyolc tag összeadásával. Összehasonlításul: az $\left(1 + \frac{1}{n}\right)^n$ sorozattal ugyanehhez a pontossághoz $n \approx 10\,000$ kellene.

**2. példa: $\sin 0{,}5$.** A $\sin$ $0$ körüli Taylor-polinomja $T_4(x) = x - \frac{x^3}{6}$, és a maradéktag $\frac{\sin^{(5)}(c)}{5!}x^5$, ahol $|\sin^{(5)}(c)| = |\cos c| \le 1$. Tehát
$$\sin 0{,}5 \approx 0{,}5 - \frac{0{,}125}{6} \approx 0{,}47917, \qquad |\text{hiba}| \le \frac{0{,}5^5}{120} \approx 0{,}00026.$$
(A valódi érték $0{,}479426\dots$, a hiba valóban kb. $0{,}00026$.)

**A differenciál.** Az $n = 1$ esetben a közelítés lineáris:
$$f(a + h) - f(a) \approx f'(a)\,h.$$
A $h \mapsto f'(a)h$ lineáris függvényt az $f$ $a$-beli **differenciáljának** nevezzük, jelölése $df$; ez a függvényérték megváltozásának **lineáris főrésze**. A fizikában és a mérnöki gyakorlatban állandóan használt „$\sin x \approx x$, ha $x$ kicsi” közelítés is ez: $\sin x - \sin 0 \approx \cos 0\cdot x = x$. A Taylor-formula szerint a hiba legfeljebb $\frac{|x|^3}{6}$ (hiszen $T_1 = T_2$ a $\sin$-ra) — például $x = 0{,}1$-re legfeljebb $0{,}00017$.

## 85. Taylor-sorok és hatványsorok

Ha a Taylor-polinomok egyre jobb közelítést adnak, kézenfekvő a kérdés: ha $n \to \infty$, „elérik-e” a függvényt? Vagyis igaz-e, hogy
$$f(x) = \sum_{n=0}^{\infty}\frac{f^{(n)}(a)}{n!}(x - a)^n\ ?$$
A jobb oldalon álló sort az $f$ $a$ körüli **Taylor-sorának** nevezzük. A válasz nem mindig igen — de van egy egyszerű elégséges feltétel.

Először egy segédtétel, amely a faktoriális gyors növekedését mondja ki.

> **Lemma.** Minden rögzített $k \in \mathbb{R}$-re $\displaystyle\lim_{n\to\infty}\frac{k^n}{n!} = 0$.

*Bizonyítás.* Legyen $a_n = \frac{|k|^n}{n!}$, és $N$ egy $2|k|$-nál nagyobb egész. Ha $n \ge N$, akkor
$$a_{n+1} = a_n\cdot\frac{|k|}{n + 1} \le \frac{a_n}{2},$$
tehát indukcióval $a_n \le \frac{a_N}{2^{n - N}}$ minden $n \ge N$-re. A jobb oldal $0$-hoz tart, így a rendőrelv szerint $a_n \to 0$. $\blacksquare$

Szavakban: **a faktoriális gyorsabban nő bármely exponenciálisnál.** (A növekedési hierarchia tehát: logaritmus $\ll$ hatvány $\ll$ exponenciális $\ll$ faktoriális.)

> **Tétel (elégséges feltétel a Taylor-sorba fejthetőségre).** Legyen $I$ az $a$ és $x$ által határolt zárt intervallum. Tegyük fel, hogy $f$ az $I$-n akárhányszor differenciálható, és a deriváltjai **egyenletesen korlátosak**: van olyan $M$, hogy
> $$|f^{(n)}(y)| \le M \qquad \text{minden } y \in I \text{ és minden } n \in \mathbb{N} \text{ esetén}.$$
> Ekkor $f(x)$ egyenlő a Taylor-sorának összegével: $f(x) = \sum_{n=0}^\infty\frac{f^{(n)}(a)}{n!}(x - a)^n$.

*Bizonyítás.* A Taylor-formula szerint minden $n$-re van $c_n \in I$, hogy
$$|f(x) - T_n(x)| = \left|\frac{f^{(n+1)}(c_n)}{(n + 1)!}(x - a)^{n+1}\right| \le M\cdot\frac{|x - a|^{n+1}}{(n + 1)!}.$$
A lemma szerint (a $k = |x - a|$ választással) a jobb oldal $0$-hoz tart, tehát a Taylor-polinomok — azaz a Taylor-sor részletösszegei — $f(x)$-hez tartanak. $\blacksquare$

### A nevezetes sorok

**Az exponenciális sor.** Az $e^x$ minden deriváltja $e^x$, és az $x$ és $0$ közötti intervallumon $e^y \le \max(1, e^x) = M$. A tétel szerint tehát minden $x \in \mathbb{R}$-re
$$e^x = \sum_{n=0}^{\infty}\frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots$$
Speciálisan $x = 1$-re
$$e = \sum_{n=0}^{\infty}\frac{1}{n!} = 1 + 1 + \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \dots,$$
és ez a sor nagyon gyorsan konvergál, ahogy az előző szakasz 1. példájában láttuk.

**A trigonometrikus sorok.** A $\sin$ és a $\cos$ minden deriváltja $\pm\sin$ vagy $\pm\cos$, tehát abszolút értékben legfeljebb $1$. A tétel $M = 1$-gyel minden $x$-re alkalmazható:
$$\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^nx^{2n+1}}{(2n + 1)!},$$
$$\cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^nx^{2n}}{(2n)!}.$$
(A $\sin$ sorában csak páratlan, a $\cos$-éban csak páros kitevők szerepelnek — összhangban azzal, hogy a $\sin$ páratlan, a $\cos$ páros függvény.)

**A hiperbolikus sorok.** Az $e^x$ és $e^{-x}$ sorát összeadva, illetve kivonva (a sorok tagonként összeadhatók, 35. szakasz):
$$\operatorname{sh}x = x + \frac{x^3}{3!} + \frac{x^5}{5!} + \dots, \qquad \operatorname{ch}x = 1 + \frac{x^2}{2!} + \frac{x^4}{4!} + \dots$$
Figyeljük meg: **ugyanazok a tagok, mint a $\sin$ és a $\cos$ soraiban, csak váltakozó előjelek nélkül.** Ez a legmélyebb magyarázata a trigonometrikus és a hiperbolikus függvények közötti párhuzamnak. (Komplex számokkal: ha az $e^x$ sorába $x$ helyett $ix$-et írunk, és felhasználjuk, hogy $i^2 = -1$, akkor a valós rész a $\cos x$, a képzetes rész a $\sin x$ sorát adja — ez az **Euler-formula**, $e^{ix} = \cos x + i\sin x$.)

**Kitekintés: az $e$ irracionális.** Az exponenciális sor segítségével egyszerű bizonyítás adható. Tegyük fel, hogy $e = \frac{p}{q}$ ($p, q \in \mathbb{N}$). Mivel $2 < e < 1 + 1 + \frac{1}{2} + \frac{1}{4} + \dots = 3$, $e$ nem egész, tehát $q \ge 2$. Tekintsük az
$$a = q!\left(e - \sum_{k=0}^{q}\frac{1}{k!}\right) = q!\sum_{k=q+1}^{\infty}\frac{1}{k!}$$
számot. Egyrészt $a$ **egész**: $q!e = (q - 1)!\,p$, és $k \le q$ esetén $\frac{q!}{k!}$ egész. Másrészt $a > 0$, és
$$a = \frac{1}{q + 1} + \frac{1}{(q + 1)(q + 2)} + \dots < \frac{1}{q + 1} + \frac{1}{(q + 1)^2} + \dots = \frac{1}{q} \le \frac{1}{2}.$$
Egy $0$ és $\frac{1}{2}$ közé eső egész szám nem létezik — ellentmondás. Tehát $e$ irracionális. $\blacksquare$

**Figyelem: a Taylor-sor nem mindig a függvényt adja vissza!** Augustin-Louis Cauchy ellenpéldája:
$$f(x) = \begin{cases} e^{-1/x^2} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Megmutatható, hogy ez a függvény akárhányszor differenciálható, és **minden** deriváltja nulla a $0$-ban. A $0$ körüli Taylor-sora tehát azonosan nulla — a függvény viszont csak a $0$-ban nulla. A tétel feltétele (a deriváltak egyenletes korlátossága) itt nem teljesül: a magasabb deriváltak a $0$ közelében rohamosan nőnek.

### Hatványsorok

> **Definíció (hatványsor).** Ha $x_0 \in \mathbb{R}$ és $a_n \in \mathbb{R}$ ($n = 0, 1, \dots$), akkor a
> $$\sum_{n=0}^{\infty}a_n(x - x_0)^n = a_0 + a_1(x - x_0) + a_2(x - x_0)^2 + \dots$$
> sort **$x_0$ körüli hatványsornak** nevezzük. Minden olyan $x$-re, amelyre konvergens, az összege egy számot ad; így a hatványsor egy függvényt definiál.

A hatványsor tehát a polinom „végtelen fokú” általánosítása. A Taylor-sor egy speciális hatványsor, amelynek együtthatói $a_n = \frac{f^{(n)}(x_0)}{n!}$.

**Példák.**
$$\sum_{n=0}^{\infty}\frac{x^n}{n!} = e^x \quad (x \in \mathbb{R}), \qquad \sum_{n=0}^{\infty}x^n = \frac{1}{1 - x} \quad (-1 < x < 1).$$
Az utóbbi a mértani sor (37. szakasz) — most azonban **függvényként** olvassuk: az $\frac{1}{1 - x}$ függvény a $(-1, 1)$ intervallumon egy hatványsor összegeként áll elő, azon kívül pedig a hatványsor divergens (noha a függvény ott is értelmezett, $x = 1$ kivételével). A hatványsorok konvergenciájának részletes elmélete (konvergenciasugár, tagonkénti deriválás és integrálás) a következő félév anyaga.

## 86. Differenciálegyenletek

A differenciálszámítás legfontosabb alkalmazása talán az, hogy a természet törvényeit **differenciálegyenletek** formájában írhatjuk fel: a fizika, a kémia, a biológia és a közgazdaságtan számos törvénye azt mondja meg, hogyan **változik** egy mennyiség, nem azt, hogy mennyi. A feladat ilyenkor a változás törvényéből magát a mennyiséget meghatározni.

> **Definíció.** **Differenciálegyenletnek** nevezünk minden olyan egyenletet, amely egy ismeretlen **függvény** és annak deriváltjai közötti összefüggést fejez ki. A **megoldás** egy olyan differenciálható függvény, amely az egyenletet (egy intervallum minden pontjában) kielégíti.

### A szabadesés

A $t = 0$ időpontban $h_0$ magasságból, nyugalomból elejtett test sebessége (a légellenállást elhanyagolva) $v(t) = -gt$, ahol $g \approx 9{,}81\ \mathrm{m/s^2}$ (a negatív előjel azt jelzi, hogy a test lefelé mozog). Milyen magasan van a test a $t$ időpontban?

Mivel a sebesség a magasság deriváltja:
$$h'(t) = -gt.$$
Ez egy differenciálegyenlet. Keressük az összes olyan $h$ függvényt, amelyre teljesül.

**Egy megoldás** „visszafelé deriválással” (a következő félévben: integrálással) található:
$$h_1(t) = -\frac{gt^2}{2}, \qquad \text{hiszen} \qquad \left(-\frac{gt^2}{2}\right)' = -gt.$$
Mivel az állandó függvény deriváltja $0$, a $-\frac{gt^2}{2} + C$ alakú függvények is megoldások, tetszőleges $C \in \mathbb{R}$-re. **De vannak-e más megoldások?**

> **Állítás.** A $h'(t) = -gt$ egyenlet összes megoldása (egy intervallumon) $h(t) = -\frac{gt^2}{2} + C$ alakú, $C \in \mathbb{R}$.

*Bizonyítás.* Legyen $h$ tetszőleges megoldás. Ekkor
$$\big(h(t) - h_1(t)\big)' = h'(t) - h_1'(t) = -gt - (-gt) = 0$$
minden $t$-re. A 76. szakasz szerint (azonosan nulla deriváltú függvény egy intervallumon állandó) $h(t) - h_1(t) = C$ valamely $C$-re. $\blacksquare$

Itt látszik, miért volt fontos az a látszólag jelentéktelen tétel: **ez garantálja, hogy a megoldásokat maradéktalanul leírtuk.**

**A kezdetiérték-probléma.** A $C$ állandót a kezdeti feltétel rögzíti: $h(0) = h_0$ miatt $C = h_0$, tehát az egyetlen megoldás
$$h(t) = h_0 - \frac{gt^2}{2}.$$
Ez a jól ismert képlet; most azonban **bebizonyítottuk**, hogy a sebességből egyértelműen következik. (Például $h_0 = 20$ m magasról a test akkor ér földet, amikor $h(t) = 0$, azaz $t = \sqrt{\frac{2h_0}{g}} \approx 2{,}02$ s múlva.)

### Exponenciális növekedés és bomlás

Sok folyamatban a változás sebessége **arányos a jelenlévő mennyiséggel**: egy baktériumtenyészet annál gyorsabban szaporodik, minél több baktérium van; egy radioaktív anyagból annál több bomlik el időegység alatt, minél több van belőle; egy bankszámla annál több kamatot hoz, minél nagyobb rajta az összeg. Ha $f(t)$ a mennyiség a $t$ időpontban, akkor
$$f'(t) = k\,f(t), \qquad k \in \mathbb{R} \text{ állandó}.$$

> **Állítás.** Ha $f$ differenciálható az $I$ intervallumon, és ott $f' = kf$, akkor van olyan $C$ állandó, hogy
> $$f(t) = C\,e^{kt} \qquad \text{minden } t \in I\text{-re}.$$

*Bizonyítás.* **Ezek megoldások:** $\left(Ce^{kt}\right)' = Cke^{kt} = k\cdot Ce^{kt}$.

**Csak ezek a megoldások.** Legyen $f$ tetszőleges megoldás, és tekintsük a
$$g(t) = f(t)\,e^{-kt}$$
segédfüggvényt. A szorzatszabállyal
$$g'(t) = \underbrace{f'(t)}_{= kf(t)}e^{-kt} + f(t)\cdot(-k)e^{-kt} = kf(t)e^{-kt} - kf(t)e^{-kt} = 0.$$
Tehát $g$ állandó az $I$-n: $g(t) = C$, azaz $f(t) = Ce^{kt}$. $\blacksquare$

A $C$ az $f(0)$ kezdeti érték. A $k > 0$ eset az **exponenciális növekedés**, a $k < 0$ eset az **exponenciális csökkenés** (bomlás). A $k = 1$, $C = 1$ esetben ez azt mondja, hogy **az $e^x$ az egyetlen olyan függvény, amely megegyezik a saját deriváltjával és a $0$-ban $1$** — ahogy a 72. szakaszban ígértük.

**Folytonos kamatozás.** Ha egy számlán a pénz „folyamatosan” kamatozik évi $r$ kamatlábbal, akkor az egyenleg növekedési sebessége $r$-szerese az egyenlegnek: $f' = rf$. Tehát $f(t) = f(0)e^{rt}$. Egy év alatt a tőke $e^r$-szeresére nő — összhangban a 71. szakasz $\left(1 + \frac{r}{n}\right)^n \to e^r$ határértékével és a 17. szakasz bevezető példájával ($r = 1$-re $e \approx 2{,}718$).

### Alkalmazás: radioaktív kormeghatározás

A légkörben keletkező $^{14}\mathrm{C}$ szénizotóp radioaktív; felezési ideje $T = 5700$ év. Az élő szervezetek folyamatosan cserélik a szenet a környezetükkel, ezért bennük a $^{14}\mathrm{C}$ aránya állandó; az elpusztulás után azonban a $^{14}\mathrm{C}$ bomlani kezd, és az arányából meghatározható, mennyi idő telt el. (A módszert Willard Libby dolgozta ki, 1960-ban Nobel-díjat kapott érte.)

**Mennyi a $k$ bomlási állandó?** A bomlás sebessége arányos a mennyiséggel, tehát $f(t) = Ce^{kt}$. A felezési idő definíciója szerint $f(t + T) = \frac{1}{2}f(t)$:
$$Ce^{k(t + T)} = \frac{1}{2}Ce^{kt} \implies e^{kT} = \frac{1}{2} \implies k = \frac{\ln\frac{1}{2}}{T} = -\frac{\ln 2}{T} \approx -1{,}216\cdot 10^{-4}\ \frac{1}{\text{év}}.$$

**Hány százalék $^{14}\mathrm{C}$ bomlik el 2000 év alatt?**
$$\frac{f(t + 2000)}{f(t)} = e^{2000k} = e^{-\frac{2000\ln 2}{5700}} = 2^{-2000/5700} \approx 0{,}784,$$
tehát körülbelül $21{,}6\%$ bomlik el.

**Milyen idős az a lelet, amelyben a $^{14}\mathrm{C}$-nek már csak $30\%$-a van meg?** $e^{kt} = 0{,}3$, tehát
$$t = \frac{\ln 0{,}3}{k} = -\frac{5700\,\ln 0{,}3}{\ln 2} \approx 9900 \text{ év}.$$

### Alkalmazás: Newton lehűlési törvénye

Egy állandó $T_\infty$ hőmérsékletű szobába helyezett tárgy hőmérséklet-változásának sebessége arányos a tárgy és a környezet hőmérséklet-különbségével:
$$T'(t) = k\big(T(t) - T_\infty\big), \qquad k < 0.$$
Ez nem pontosan $f' = kf$ alakú, de azzá tehető: vezessük be az $f(t) = T(t) - T_\infty$ függvényt (a hőmérséklet-különbséget). Ekkor $f'(t) = T'(t) = kf(t)$, tehát $f(t) = Ce^{kt}$, ahol $C = f(0) = T_0 - T_\infty$. Így
$$T(t) = T_\infty + (T_0 - T_\infty)e^{kt}.$$
A hőmérséklet-különbség exponenciálisan csökken, és a tárgy hőmérséklete a szoba hőmérsékletéhez tart.

**Kidolgozott példa.** Egy $100\,^\circ\mathrm{C}$-os leves áll egy $20\,^\circ\mathrm{C}$-os szobában. Egy perc múlva $95\,^\circ\mathrm{C}$-os. Milyen meleg lesz $10$ perc múlva? Mikor lesz $45\,^\circ\mathrm{C}$-os (azaz ehető)?

Itt $T_0 = 100$, $T_\infty = 20$, tehát $T(t) = 20 + 80e^{kt}$ ($t$ percben). A $k$ meghatározása az első perc adatából:
$$T(1) = 20 + 80e^k = 95 \implies e^k = \frac{75}{80} = 0{,}9375 \implies k = \ln 0{,}9375 \approx -0{,}06454.$$

**10 perc múlva:**
$$T(10) = 20 + 80e^{10k} = 20 + 80\cdot 0{,}9375^{10} \approx 20 + 80\cdot 0{,}5245 \approx 61{,}96\,^\circ\mathrm{C}.$$

**Mikor lesz $45\,^\circ\mathrm{C}$?**
$$45 = 20 + 80e^{kt} \implies e^{kt} = \frac{25}{80} \implies t = \frac{\ln\frac{25}{80}}{k} \approx \frac{-1{,}1632}{-0{,}06454} \approx 18{,}02 \text{ perc}.$$

---

## A XIII. rész összefoglalása

- **Fermat-tétel:** differenciálható függvény belső lokális szélsőértékhelyén $f' = 0$. Szükséges, nem elégséges feltétel; a végpontokat és a nem differenciálható pontokat külön kell vizsgálni.
- **Középértéktételek** (Rolle $\subset$ Lagrange $\subset$ Cauchy): $f(b) - f(a) = f'(c)(b - a)$. Ezek alakítják a lokális információt globálissá; a Weierstrass-tételen keresztül a teljességi axiómán múlnak.
- **Darboux-tétel:** minden derivált Darboux-tulajdonságú (nem lehet ugrása).
- **Monotonitás:** $f' \ge 0 \iff f$ nő; $f' > 0 \implies f$ szigorúan nő; $f' \equiv 0 \implies f$ állandó (intervallumon).
- **Szélsőérték:** a derivált előjelváltása vagy $f'(a) = 0$, $f''(a) \neq 0$ dönt.
- **Konvexitás:** $f$ konvex $\iff f'$ nő $\iff f'' \ge 0$ $\iff$ az érintők a grafikon alatt vannak. Inflexiós pont: görbületváltás; szükséges feltétel $f'' = 0$.
- **L'Hospital-szabály:** $\frac{0}{0}$ és $\frac{\ast}{\infty}$ esetben $\lim\frac{f}{g} = \lim\frac{f'}{g'}$ (ha az utóbbi létezik).
- **Taylor-formula:** $f(x) = T_n(x) + \frac{f^{(n+1)}(c)}{(n+1)!}(x - a)^{n+1}$; egyenletesen korlátos deriváltak esetén a Taylor-sor előállítja a függvényt ($e^x$, $\sin$, $\cos$, $\operatorname{sh}$, $\operatorname{ch}$).
- **Differenciálegyenletek:** $f' = kf \iff f = Ce^{kt}$; a megoldások egyértelműsége az „$f' \equiv 0 \implies f$ állandó” tételen múlik.

## Feladatok a XIII. részhez

1. Határozzuk meg az $f(x) = x^3 - 6x^2 + 9x + 1$ függvény lokális szélsőértékeit és monotonitási intervallumait.
2. Bizonyítsuk be, hogy $x \ge 0$ esetén $x - \frac{x^3}{6} \le \sin x \le x$.
3. Bizonyítsuk be, hogy az $x^4 - 4x + 1 = 0$ egyenletnek pontosan két valós gyöke van.
4. Számítsuk ki: a) $\lim_{x \to 0}\frac{e^x - 1 - x}{x^2}$; b) $\lim_{x \to 0}\frac{x - \sin x}{x^3}$; c) $\lim_{x \to +\infty}x^{1/x}$; d) $\lim_{x \to 0+0}x^2\ln x$.
5. Írjuk fel az $f(x) = \ln(1 + x)$ függvény harmadfokú Taylor-polinomját a $0$ körül, és becsüljük meg vele $\ln 1{,}1$ értékét. Adjunk felső becslést a hibára.
6. Végezzünk teljes függvényvizsgálatot: $f(x) = x\,e^{-x}$.
7. Írjunk egy $1$ sugarú félkörbe maximális területű téglalapot (az egyik oldala a félkör átmérőjén fekszik).
8. Oldjuk meg az $y' = -2y$, $y(0) = 3$ kezdetiérték-problémát.
9. Bizonyítsuk be a Lagrange-tétel segítségével, hogy $x > 0$ esetén $\frac{x}{1 + x} < \ln(1 + x) < x$.

### Megoldási útmutatók

1. $f'(x) = 3x^2 - 12x + 9 = 3(x - 1)(x - 3)$. $f$ nő a $(-\infty, 1]$-en és a $[3, +\infty)$-en, csökken az $[1, 3]$-on. Lokális maximum: $f(1) = 5$; lokális minimum: $f(3) = 1$.
2. A jobb oldal az 58. szakasz tétele. A bal oldalhoz legyen $g(x) = \sin x - x + \frac{x^3}{6}$; $g(0) = 0$, $g'(x) = \cos x - 1 + \frac{x^2}{2}$. Ennek nemnegativitásához legyen $h(x) = \cos x - 1 + \frac{x^2}{2}$: $h(0) = 0$, $h'(x) = x - \sin x \ge 0$. Tehát $h \ge 0$, így $g' \ge 0$, így $g \ge 0$.
3. $f'(x) = 4x^3 - 4 = 0 \iff x = 1$. $f$ szigorúan csökken a $(-\infty, 1]$-en, szigorúan nő az $[1, +\infty)$-en, $f(1) = -2 < 0$, és $\lim_{x \to \pm\infty}f(x) = +\infty$. Mindkét szakaszon pontosan egy gyök van (Bolzano-tétel + szigorú monotonitás).
4. a) $\frac{1}{2}$ (kétszeri L'Hospital). b) $\frac{1}{6}$ (háromszori L'Hospital, vagy a Taylor-polinom: $x - \sin x = \frac{x^3}{6} + \dots$). c) $x^{1/x} = e^{\frac{\ln x}{x}} \to e^0 = 1$. d) $\frac{\ln x}{x^{-2}} \to \frac{1/x}{-2x^{-3}} = -\frac{x^2}{2} \to 0$.
5. $T_3(x) = x - \frac{x^2}{2} + \frac{x^3}{3}$; $\ln 1{,}1 \approx 0{,}1 - 0{,}005 + 0{,}000333 = 0{,}095333$. A maradéktag $\frac{f^{(4)}(c)}{4!}x^4$, ahol $|f^{(4)}(c)| = \frac{6}{(1 + c)^4} \le 6$; a hiba legfeljebb $\frac{6}{24}\cdot 0{,}1^4 = 0{,}000025$. (A valódi érték $0{,}0953102\dots$)
6. $D(f) = \mathbb{R}$; $f'(x) = (1 - x)e^{-x}$, $f''(x) = (x - 2)e^{-x}$. Nő a $(-\infty, 1]$-en, csökken az $[1, +\infty)$-en; abszolút maximum: $f(1) = \frac{1}{e}$. Konkáv a $(-\infty, 2]$-n, konvex a $[2, +\infty)$-en; inflexió a $2$-ben ($f(2) = \frac{2}{e^2}$). $\lim_{x \to +\infty}f(x) = 0$ (L'Hospital: $\frac{x}{e^x} \to 0$), tehát $y = 0$ aszimptota; $\lim_{x \to -\infty}f(x) = -\infty$. Zérushely: $x = 0$.
7. Ha a téglalap csúcsai $(\pm x, 0)$ és $(\pm x, \sqrt{1 - x^2})$, akkor $A(x) = 2x\sqrt{1 - x^2}$, $x \in [0, 1]$. $A'(x) = \frac{2(1 - 2x^2)}{\sqrt{1 - x^2}} = 0 \iff x = \frac{1}{\sqrt{2}}$; ekkor $A = 1$. (A végpontokban $A = 0$.)
8. $y(x) = 3e^{-2x}$.
9. A Lagrange-tétel szerint $\ln(1 + x) - \ln 1 = \frac{1}{1 + c}\cdot x$ valamely $c \in (0, x)$-re, és $\frac{1}{1 + x} < \frac{1}{1 + c} < 1$.

---

# UTÓSZÓ

Ezzel bezárult a kör. A könyv elején két kérdést tettünk fel: mekkora a kör területe, és mekkora egy mozgó test pillanatnyi sebessége? Mindkettőre választ kaptunk. A kör területét a 70. szakaszban a körbe írt sokszögek területének határértékeként igazoltuk; a pillanatnyi sebesség pedig a derivált, amelyet nemcsak kiszámolni tudunk, hanem azt is meg tudjuk indokolni, miért helyes, amit csinálunk.

A területszámítás általános elmélete — tetszőleges görbék alatti terület — a következő félévre marad: ott az **integrálszámítás** ugyanezt az utat járja be még egyszer, a közelítő összegektől a határértéken át a szigorú fogalomig. Az alapok azonban már készen állnak, és a két fogalom, a derivált és az integrál, végül egyetlen tételben, a **Newton–Leibniz-formulában** fog találkozni.

Érdemes még egyszer végigkövetni a gondolatmenet gerincét, hogy lássuk: az analízis nem különálló trükkök gyűjteménye, hanem egyetlen, hosszú érvelés:

$$\text{Teljességi axióma} \longrightarrow \text{szuprémum, infimum} \longrightarrow \text{monoton korlátos sorozat konvergens} \longrightarrow \text{Bolzano–Weierstrass}$$
$$\longrightarrow \text{Cauchy-kritérium};\ \ \text{Weierstrass maximumtétele};\ \ \text{Bolzano–Darboux} \longrightarrow \text{Rolle} \longrightarrow \text{Lagrange} \longrightarrow \text{Cauchy}$$
$$\longrightarrow \text{monotonitás},\ \text{konvexitás},\ \text{L'Hospital},\ \text{Taylor-formula} \longrightarrow \text{differenciálegyenletek}.$$

Mindez egyetlen axiómából, amely annyit mond ki, hogy **a számegyenesen nincsenek lyukak**.

Aki eddig eljutott, és a feladatokat is megoldotta, az nemcsak egy tárgy anyagát sajátította el, hanem egy gondolkodásmódot is: hogy egy állítást csak akkor fogadunk el, ha bizonyítottuk; hogy egy definíciót csak akkor értünk, ha példát és ellenpéldát is tudunk rá mondani; és hogy a „nyilvánvaló” gyakran a legmélyebb tételeket rejti. Ez a gondolkodásmód a matematika minden további területén — és jóval azon túl is — hasznos lesz.
