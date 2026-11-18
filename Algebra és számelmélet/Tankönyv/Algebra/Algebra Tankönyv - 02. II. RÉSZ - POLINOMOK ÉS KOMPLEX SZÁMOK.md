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
