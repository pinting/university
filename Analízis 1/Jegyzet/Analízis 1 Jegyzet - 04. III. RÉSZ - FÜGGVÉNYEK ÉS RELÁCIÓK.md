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

**A függvény mint reláció.** Ez a definíció lehetővé teszi, hogy a függvény fogalmát is halmazelméletileg precízzé tegyük. Egy $f : A \to B$ függvényt azonosíthatunk a **grafikonjával**, az $\{(a, f(a)) : a \in A\} \subset A \times B$ relációval. Egy $R \subset A \times B$ reláció pontosan akkor grafikonja egy függvénynek, ha minden $a \in A$-hoz **pontosan egy** olyan $b$ van, amelyre $(a, b) \in R$. Geometriailag: minden függőleges egyenes legfeljebb egy (az $A$ minden pontjában pontosan egy) pontban metszi. (Az egységkör, $\{(x,y) : x^2 + y^2 = 1\}$, ezért nem függvény grafikonja: az $x = 0$ egyenes két pontban metszi.)

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
