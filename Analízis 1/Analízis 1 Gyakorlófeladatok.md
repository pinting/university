# Analízis 1 – Gyakorlófeladatok

### I. Mat. BSc Analízis 1 · gyakorlófeladatok önálló munkához

Ez a gyűjtemény a gyakorlati feladatlapok (1., 2., 4–10. feladatlap) mind a 99 feladatához **két-két önálló gyakorlófeladatot** tartalmaz (összesen $198$ feladat: Gy1.1–Gy10.2, Gy11.1–Gy22.2, Gy34.1–Gy43.2, Gy44.1–Gy54.2, Gy55.1–Gy62.2, Gy63.1–Gy75.2, Gy76.1–Gy87.2, Gy88.1–Gy98.2, Gy99.1–Gy110.2; a 3. feladatlap kimarad).

A feladatok az egyetemi zárthelyikre és vizsgákra való felkészülést szolgálják az ELTE TTK BSc Analízis 1 tantervéhez illeszkedve. A részletes, lépésről lépésre kidolgozott megoldások és a mély elméleti háttér-összefoglalók a kísérő kötetben találhatók: `Gyakorlófeladatok Megoldások.md`.

Jelölések: $\mathbb{N} = \{1, 2, 3, \dots\}$; $[x]$ az egészrész, $\{x\} = x - [x]$ a törtrész; $D$ a Dirichlet-függvény ($D(x) = 1$, ha $x \in \mathbb{Q}$, különben $0$); $R$ a Riemann-függvény ($R(\frac pq) = \frac1q$ egyszerűsített törtre, $R(0) = 0$, irracionálisra $0$).
# Az 1. feladatlaphoz

## Gy1.1. feladat

Az abszolút érték alaptulajdonságai és a rendezési axiómák alapján lássuk be az alábbi állításokat minden $x, y \in \mathbb{R}$ esetén:

a) $|x - y| \ge |x| - |y|$;

b) $|x - y| = |x| + |y|$ pontosan akkor teljesül, ha $xy \le 0$;

c) ha $|x - 2| < 1$ és $|y - 3| < 2$, akkor mutassuk meg, hogy $|x - y + 1| < 3$ és $|xy| < 15$.

## Gy1.2. feladat

a) Bizonyítsuk be, hogy tetszőleges $x, y, z \in \mathbb{R}$ esetén
$$|x + y + z| \le |x| + |y| + |z|,$$
és adjuk meg a pontos feltételét annak, hogy mikor áll fenn egyenlőség!

b) Tegyük fel, hogy $|x - 1| < \frac{1}{2}$. Adjunk éles felső becslést $\left|\frac{1}{x} - 1\right|$-re és $|x^2 - 1|$-re!

## Gy2.1. feladat

Legyen $a \in \mathbb{Q}$, $a \ne 0$ tetszőleges nemnulla racionális szám, és $c \in \mathbb{R} \setminus \mathbb{Q}$ tetszőleges irracionális szám.

a) Döntsük el, hogy az alábbi számok szükségképpen irracionálisak-e, racionálisak-e, vagy bármelyik előfordulhat:
$$c - a, \qquad \frac{a}{c}, \qquad c^3, \qquad c + \sqrt{2}.$$

b) Bizonyítsuk be indirekt úton, hogy $\sqrt{6} - \sqrt{2}$ irracionális!

## Gy2.2. feladat

a) Létezik-e két olyan $x, y \in \mathbb{R} \setminus \mathbb{Q}$ irracionális szám, amelyek összege és szorzata is racionális?

b) Létezhetnek-e olyan $c, d \in \mathbb{R} \setminus \mathbb{Q}$ irracionális számok, amelyekre a $c^d$ hatvány racionális szám?

c) Bizonyítsuk be a számelmélet alaptétele alapján, hogy $\sqrt[3]{5}$ és $\log_3 2$ irracionálisak!

## Gy3.1. feladat

Mutassuk meg, hogy $2^n > n^3$, ha $n \ge N_0$. Adjuk meg a lehető legkisebb $N_0 \in \mathbb{N}$ küszöbindexet, és végezzük el a teljes indukciós bizonyítást!

## Gy3.2. feladat

a) Mutassuk meg teljes indukcióval, hogy $n! > 3^n$ minden $n \ge N_0$ esetén, és határozzuk meg a legkisebb $N_0 \in \mathbb{N}$ értéket!

b) Igazoljuk a binomiális tétel segítségével, hogy minden $n \ge 1$ természetes számra:
$$\left(1 + \frac{1}{n}\right)^n < 3.$$

## Gy4.1. feladat

A binomiális tétel és elemi átalakítások segítségével számítsuk ki zárt alakban az alábbi összegeket:

a) $\displaystyle\sum_{k=0}^n 3^k \binom{n}{k}$;

b) $\displaystyle\sum_{k=0}^{\lfloor n/2 \rfloor} \binom{n}{2k}$ (a páros indexű binomiális együtthatók összege);

c) $\displaystyle\sum_{k=0}^n \frac{1}{k+1} \binom{n}{k}$.

## Gy4.2. feladat

a) Bizonyítsuk be algebrai átalakítással, hogy minden $n \ge 2$ és $k \ge 2$ esetén
$$k(k-1)\binom{n}{k} = n(n-1)\binom{n-2}{k-2}.$$

b) Ennek felhasználásával határozzuk meg zárt alakban a $\displaystyle\sum_{k=1}^n k^2 \binom{n}{k}$ összeg értékét!

## Gy5.1. feladat

Döntsük el az alábbi halmazokról, hogy alulról, illetve felülről korlátosak-e, és határozzuk meg az infimumukat, szuprémumukat, minimumukat és maximumukat (amennyiben léteznek):

a) $A = \left\{\dfrac{3n - 1}{n + 2} : n \in \mathbb{N}\right\}$;

b) $B = \{x \in \mathbb{R} : x^2 - 5x + 6 < 0\}$;

c) $C = \left\{\dfrac{(-1)^n}{n} + 1 : n \in \mathbb{N}\right\}$;

d) $D = \{x \in \mathbb{Q} : x^2 < 7\}$.

## Gy5.2. feladat

Határozzuk meg az alábbi halmazok infimumát, szuprémumát, minimumát és maximumát (amennyiben léteznek), és állapítsuk meg korlátosságukat:

a) $A = \left\{\dfrac{1}{2^n} + \dfrac{1}{3^m} : n, m \in \mathbb{N}\right\}$;

b) $B = \left\{x \in \mathbb{R} : \dfrac{2x - 1}{x + 1} \le 1\right\}$;

c) $C = \{n^2 - 10n : n \in \mathbb{N}\}$;

d) $D = \{x \in \mathbb{Q} : x > 0 \text{ és } x^3 > 2\}$.

## Gy6.1. feladat

Legyen $H \subset \mathbb{R}$ nem üres halmaz. Fogalmazzuk meg szabatos magyar mondatban, hogy a $H$ halmaz milyen analitikai tulajdonságát fejezik ki az alábbi logikai formulák:

a) $(\exists K \in \mathbb{R})(\forall x \in H)(x \ge K)$;

b) $(\forall x \in H)(\exists y \in H)(y > x)$;

c) $(\forall x \in \mathbb{R})(\exists y \in H)(y > x)$;

d) $(\forall \varepsilon > 0)(\exists x, y \in H)(x \ne y \text{ és } |x - y| < \varepsilon)$.

## Gy6.2. feladat

Írjuk fel logikai kvantorok ($\forall, \exists$) segítségével az alábbi kijelentéseket a $H \subset \mathbb{R}$ nem üres halmazra, majd képezzük a tagadásukat kvantorokkal és szabatos szöveges megfogalmazással is:

a) $H$ alulról korlátos;

b) $H$-nak van legkisebb eleme (minimuma);

c) $H$ korlátos.

## Gy7.1. feladat

Határozzuk meg – precíz bizonyítással – az alábbi halmazok infimumát, szuprémumát, minimumát és maximumát (amennyiben léteznek):

a) $A = \left\{\dfrac{2n}{3n + 1} : n \in \mathbb{N}\right\}$;

b) $B = \left\{\dfrac{1}{n} + \dfrac{(-1)^m}{m} : n, m \in \mathbb{N}\right\}$;

c) $C = \{x \in \mathbb{R} : |x - 2| + |x + 1| < 5\}$;

d) $D = \left\{\dfrac{m}{n} : m, n \in \mathbb{N},\ m < 2n\right\}$.

## Gy7.2. feladat

Határozzuk meg – amennyiben léteznek – az alábbi halmazok infimumát, szuprémumát, minimumát és maximumát:

a) $S_1 = \left\{\dfrac{4n - 1}{n + 1} : n \in \mathbb{N}\right\}$;

b) $S_2 = \left\{x + \dfrac{4}{x} : x > 0\right\}$;

c) $S_3 = \left\{\dfrac{1}{2^n} - \dfrac{1}{3^m} : n, m \in \mathbb{N}\right\}$;

d) $S_4 = \{x \in \mathbb{Q} : x^2 \le 5\}$.

## Gy8.1. feladat

Legyenek $A, B \subset \mathbb{R}$ nem üres, felülről korlátos halmazok.

a) Bizonyítsuk be, hogy $\sup(A \cup B) = \max\{\sup A, \sup B\}$.

b) Tegyük fel, hogy $A \cap B \ne \emptyset$. Bizonyítsuk be, hogy $\sup(A \cap B) \le \min\{\sup A, \sup B\}$, és mutassunk példát olyan halmazokra, ahol szigorú egyenlőtlenség áll fenn!

c) Legyen $A \setminus B \ne \emptyset$. Igaz-e, hogy $\sup(A \setminus B) \le \sup A$? Lehetséges-e egyenlőség úgy, hogy $B$ tartalmaz olyan elemet, amely nagyobb $A \setminus B$ minden eleménél?

## Gy8.2. feladat

Legyenek $A, B \subset (0, \infty)$ nem üres, korlátos halmazok úgy, hogy $\inf A > 0$ és $\inf B > 0$. Jelölje:
$$A^{-1} = \left\{\frac{1}{a} : a \in A\right\}, \qquad \frac{A}{B} = \left\{\frac{a}{b} : a \in A,\ b \in B\right\}.$$

a) Bizonyítsuk be, hogy $\sup(A^{-1}) = \dfrac{1}{\inf A}$ és $\inf(A^{-1}) = \dfrac{1}{\sup A}$.

b) Fejezzük ki $\sup(A/B)$-t és $\inf(A/B)$-t a $\sup A, \inf A, \sup B, \inf B$ értékek segítségével!

c) Mutassuk meg, hogy ha $A \subset B$, akkor $\inf B \le \inf A \le \sup A \le \sup B$.

## Gy9.1. feladat

Egy bolha ugrál a számegyenesen: a $0$ origóból indul, és minden lépésben egy rögzített, de ismeretlen $v \in \mathbb{N}$ pozitív egész sebességgel lép jobbra. Így az $n$-edik ugrás után ($n = 1, 2, \dots$) a helyzete pontosan:
$$x_n = n \cdot v.$$
Minden ugrás után lecsaphatunk egyetlen egész koordinátájú pontra.

a) Adjunk meg egy olyan explicit stratégiát, amellyel a bolhát véges sok lépésben biztosan lecsapjuk!

b) Tegyük fel, hogy előre tudjuk: a sebesség legfeljebb $M$, azaz $v \in \{1, 2, \dots, M\}$. Legfeljebb hány lépés szükséges a biztos lecsapáshoz az a) pontbeli stratégiával?

## Gy9.2. feladat

Tegyük fel, hogy a bolha a számegyenesen egy ismeretlen $x_0 \in \mathbb{Z}$ kezdőpontból indul, és minden lépésben egy ismeretlen egész értékű $v \in \mathbb{Z}$ sebességgel lép, így az $n$-edik lépés után a helyzete $x_n = x_0 + n \cdot v$ ($n = 1, 2, \dots$).

a) Bizonyítsuk be a halmazelmélet megszámlálhatósági tételei alapján, hogy létezik olyan lecsapási stratégia, amellyel a bolhát véges sok lépésben biztosan lecsapjuk!

b) Mi a helyzet, ha a bolha a sík rácspontjain mozog konstans rácsvektor-sebességgel:
$$(x_n, y_n) = (x_0 + n v_x, y_0 + n v_y), \quad \text{ahol } (x_0, y_0, v_x, v_y) \in \mathbb{Z}^4?$$

## Gy10.1. feladat

A derékszögű koordinátarendszer első síknegyedében ($x \ge 0, y \ge 0$ egész rácspontok) az origóból indulva lépkedünk: minden lépésben $(1, 0)$ jobbra vagy $(0, 1)$ fel irányban lépünk egyet. Tegyük fel, hogy minden $n \ge 1$ esetén az $x + y = n$ átlón legfeljebb $1$ rácspont van eltorlaszolva (mérgezett pont).

Bizonyítsuk be a Kőnig-lemma (vagy gráfelméleti elérhetőség) segítségével, hogy létezik az origóból induló, végtelen hosszú akadálymentes útvonal!

## Gy10.2. feladat

Tegyük fel, hogy a sík rácspontjain az origóból indulva lépkedünk jobbra $(1, 0)$ és fel $(0, 1)$ lépésekkel.

a) Határozzuk meg az origóból a $(k, n - k)$ rácspontba, illetve az $x + y = n$ átlóra vezető különböző monoton utak számát!

b) Tegyük fel, hogy a síkban véges sok pont mérgezett (vagy olyan ritkán helyezkednek el, hogy minden $N$-re létezik legalább egy $N$ hosszúságú akadálymentes út az origóból). Mutassuk meg részletesen a skatulya-elvvel, hogy létezik végtelen akadálymentes út!

# A 2. feladatlaphoz

## Gy11.1. feladat

a) Mondjuk ki a Cantor-féle metszettételt, és bizonyítsuk be a valós számok szuprémum-tulajdonságának (teljességi axiómájának) felhasználásával!

b) Igazoljuk, hogy ha a zárt intervallumok hosszsorozata nullához tart, azaz $\lim_{n\to\infty} (b_n - a_n) = 0$, akkor a metszet pontosan egyetlen pontból áll!

## Gy11.2. feladat

Vizsgáljuk meg az alábbi halmazsorozatok metszetét! Állapítsuk meg, hogy melyik feltétel nem teljesül a Cantor-féle metszettétel feltetelei közül, és adjuk meg a metszeteket:

a) $I_n = \left(0, \frac{1}{n}\right]$;

b) $J_n = [n, +\infty)$;

c) $K_n = \left(1 - \frac{1}{n}, 1 + \frac{1}{n}\right)$.

## Gy12.1. feladat

a) Bizonyítsuk be a számelmélet alaptételének felhasználásával, hogy $\log_2 10$ irracionális!

b) Döntsük el, hogy $\log_8 16$ racionális vagy irracionális, és határozzuk meg a pontos értékét!

c) Bizonyítsuk be, hogy $\log_6 9$ irracionális!

## Gy12.2. feladat

a) Bizonyítsuk be általánosan, hogy ha $p$ és $q$ két különböző prímszám, akkor $\log_p q$ szükségképpen irracionális!

b) Mutassunk példát olyan $a, b \in \mathbb{R} \setminus \mathbb{Q}$ irracionális számokra, amelyekre a $\log_a b$ kifejezés racionális!

## Gy13.1. feladat

Legyen $A = (a_{i, j}) \in \mathbb{R}^{n \times m}$ egy valós mátrix.

a) Bizonyítsuk be az általános diszkrét minimax egyenlőtlenséget:
$$\max_{1 \le i \le n} \min_{1 \le j \le m} a_{i, j} \le \min_{1 \le j \le m} \max_{1 \le i \le n} a_{i, j}.$$

b) Mutassunk példát olyan $2 \times 2$-es mátrixra, ahol szigorú egyenlőtlenség áll fenn!

c) Mikor áll fenn egyenlőség? Fogalmazzuk meg a nyeregpont fogalmát!

## Gy13.2. feladat

Legyen $f(x, y) = (x - y)^2$ az egységngyzeten értelmezve: $x, y \in [0, 1]$.

Számítsuk ki expliciten a
$$\min_{x \in [0, 1]} \max_{y \in [0, 1]} (x - y)^2 \qquad \text{és} \qquad \max_{y \in [0, 1]} \min_{x \in [0, 1]} (x - y)^2$$
értékeket! Értelmezzük az eredményt a minimax egyenlőtlenség fényében!

## Gy14.1. feladat

a) Bizonyítsuk be, hogy ha egy nem üres $H \subset \mathbb{R}$ halmaznak létezik szuprémuma, akkor az szükségképpen egyértelmű!

b) Igazoljuk, hogy ha $H \subset \mathbb{R}$ nem üres és alulról korlátos, akkor létezik infimuma, és
$$\inf H = -\sup(-H), \quad \text{ahol } -H = \{-x : x \in H\}.$$

## Gy14.2. feladat

Legyen $H \subset \mathbb{R}$ nem üres, korlátos halmaz. Definiáljuk a $H$ halmaz átmérőjét az alábbi módon:
$$\operatorname{diam}(H) = \sup \{|x - y| : x, y \in H\}.$$

Bizonyítsuk be, hogy $\operatorname{diam}(H) = \sup H - \inf H$.

## Gy15.1. feladat

a) Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenséggel, hogy minden $x > 0$ valós számra:
$$x^3 + \frac{2}{x\sqrt{x}} \ge 3.$$
Mikor áll fenn egyenlőség?

b) Igazoljuk, hogy minden $a, b, c \in \mathbb{R}$ valós számra fennáll:
$$a^4 + b^4 + c^4 \ge abc(a + b + c).$$

## Gy15.2. feladat

a) Mutassuk meg, hogy tetszőleges $a, b > 0$ esetén $\dfrac{a}{b} + \dfrac{b}{a} \ge 2$, és pontosan mikor áll fenn egyenlőség!

b) Bizonyítsuk be, hogy ha $a, b, c > 0$ és $abc = 1$, akkor
$$(a + 1)(b + 1)(c + 1) \ge 8.$$

## Gy16.1. feladat

a) Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenség felhasználásával, hogy minden $n \ge 2$ egész számra:
$$n! < \left(\frac{n+1}{2}\right)^n.$$

b) Igazoljuk, hogy minden $n \in \mathbb{N}$ esetén $(n!)^2 \ge n^n$.

## Gy16.2. feladat

a) Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ természetes számra:
$$\frac{1}{2} \cdot \frac{3}{4} \cdot \frac{5}{6} \cdots \frac{2n - 1}{2n} \le \frac{1}{\sqrt{3n + 1}}.$$

b) Mutassuk meg ennek alapján, hogy $\lim_{n\to\infty} \prod_{k=1}^n \frac{2k-1}{2k} = 0$!

## Gy17.1. feladat

Legyenek $A, B \subset \mathbb{R}$ nem üres, korlátos halmazok.

a) Bizonyítsuk be részletesen a definíció alapján, hogy
$$\sup(A + B) = \sup A + \sup B, \quad \text{ahol } A + B = \{a + b : a \in A,\ b \in B\}.$$

b) Igazoljuk, hogy $\inf(A - B) = \inf A - \sup B$, ahol $A - B = \{a - b : a \in A,\ b \in B\}$.

## Gy17.2. feladat

Legyen $A = (0, 2)$ és $B = [1, 3]$.

a) Határozzuk meg explicit intervallumként az $A + B$, $A - B$ és $A \cdot B = \{ab : a \in A, b \in B\}$ halmazokat!

b) Határozzuk meg ezen halmazok infimumát, szuprémumát, minimumát és maximumát!

## Gy18.1. feladat

a) Bizonyítsuk be teljes indukcióval a Bernoulli-egyenlőtlenséget: minden $x \ge -1$ valós számra és $n \in \mathbb{N}$ természetes számra
$$(1 + x)^n \ge 1 + nx.$$

b) Mutassuk meg, hogy ha $x > 0$ és $n \ge 2$, akkor a binomiális tételből következik:
$$(1 + x)^n > 1 + nx + \frac{n(n-1)}{2} x^2.$$
Ennek felhasználásával bizonyítsuk be, hogy $\lim_{n\to\infty} \sqrt[n]{n} = 1$!

## Gy18.2. feladat

a) Legyen $r \in \mathbb{Q}$ racionális kitevő, $0 < r < 1$. Bizonyítsuk be a súlyozott számtani és mértani közepek közötti egyenlőtlenség (vagy elemi közepek) segítségével, hogy minden $x > -1, x \ne 0$ esetén
$$(1 + x)^r < 1 + rx.$$

b) Igazoljuk a Young-egyenlőtlenséget: minden $a, b > 0$ és $0 < \alpha < 1$ esetén
$$a^\alpha b^{1-\alpha} \le \alpha a + (1 - \alpha)b,$$
és adjuk meg az egyenlőség feltételét!

## Gy19.1. feladat

A valós számok szuprémum-axiómájából (minden nem üres, felülről korlátos valós halmaznak van szuprémuma $\mathbb{R}$-ben) vezessük le részletesen az alábbi alapvető tulajdonságokat:

a) Az Arkhimédész-féle tulajdonságot: minden $x \in \mathbb{R}$ valós számhoz létezik olyan $n \in \mathbb{N}$ természetes szám, amelyre $n > x$.

b) A Cantor-féle metszettételt korlátos, zárt intervallumok beágyazott sorozataira.

## Gy19.2. feladat

Tegyük fel, hogy egy tetszőleges rendezett testben teljesül az Arkhimédész-féle tulajdonság és a Cantor-féle metszettétel (hogy zárt, egymásba ágyazott intervallumok metszete nem üres).

Bizonyítsuk be az intervallumfelezési eljárás segítségével, hogy ebben a testben minden nem üres, felülről korlátos halmaznak létezik szuprémuma (azaz a szuprémum-tulajdonság is teljesül)!

## Gy20.1. feladat

a) Legyen egy téglatest felszíne rögzített $A > 0$. Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenséggel, hogy a téglatest térfogata akkor maximális, ha a téglatest kocka, és fejezzük ki a maximális térfogatot $A$ segítségével!

b) Határozzuk meg az $x y^2$ szorzat maximumát, ha $x, y > 0$ és $x + y = 6$!

## Gy20.2. feladat

a) Adott $V > 0$ térfogatú téglatestek közül melyiknek a legkisebb a teljes felszíne, és mekkora ez a minimális felszín?

b) Egy téglalap alakú telket az egyik oldalán meglévő egyenes kőfal határol, a többi három oldalát összesen $L$ hosszúságú kerítéssel kerítjük el. Mekkora a bekeríthető maximális terület, és mik a téglalap optimális oldalai?

## Gy21.1. feladat

a) Mutassuk meg részletesen, hogy tetszőleges rögzített $a > 0$ valós szám esetén
$$\lim_{n\to\infty} \frac{a^n}{n!} = 0.$$
Ennek felhasználásával igazoljuk, hogy van olyan küszöbindex, amelytől kezdve $100^n < n!$, és adjunk meg egy explicit felső becslést erre a küszöbindexre!

b) Bizonyítsuk be a binomiális tétel segítségével, hogy minden rögzített $k \in \mathbb{N}$ esetén
$$\lim_{n\to\infty} \frac{n^k}{2^n} = 0.$$

## Gy21.2. feladat

Rendezzük növekvő nagyságrendi sorrendbe az alábbi sorozatokat $n \to \infty$ esetén (úgy, hogy ha $a_n \ll b_n$, azaz $\lim_{n\to\infty} \frac{a_n}{b_n} = 0$, akkor $a_n$ megelőzze $b_n$-et), és indokoljuk a lépéseket:
$$n^{100}, \quad 2^{\sqrt{n}}, \quad 2^n, \quad 3^n, \quad \sqrt{n!}, \quad n!, \quad n^n.$$

## Gy22.1. feladat

A sorozathatárérték $\varepsilon$-$N_0$ definíciója alapján igazoljuk az alábbi határértékeket, tetszőleges $\varepsilon > 0$-hoz megadva egy megfelelő $N_0(\varepsilon)$ küszöbindexet:

a) $\lim_{n\to\infty} \dfrac{3n - 2}{5n + 1} = \dfrac{3}{5}$;

b) $\lim_{n\to\infty} \dfrac{2n^2 + 3}{n^2 - 1} = 2$.

Számítsuk ki a legkisebb egész küszöbindexet mindkét esetben konkrétan $\varepsilon = 0{,}01$ mellett!

## Gy22.2. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg adott $\varepsilon > 0$-hoz alkalmas $N_0(\varepsilon)$ küszöbindexet:

a) $a_n = \dfrac{1}{\sqrt{n + 1} + \sqrt{n}}$;

b) $b_n = \sqrt[n]{5} - 1$.

# A 4. feladatlaphoz

## Gy34.1. feladat

Legyen $a_1 = 0$ és minden $n \ge 1$ esetén
$$a_{n+1} = \sqrt{12 + a_n}.$$

a) Bizonyítsuk be teljes indukcióval, hogy a sorozat felülről korlátos, pontosabban $a_n < 4$ minden $n \in \mathbb{N}$ esetén!

b) Igazoljuk, hogy a sorozat szigorúan monoton növekvő!

c) Mutassuk meg, hogy a sorozat konvergens, és számítsuk ki a határértékét!

## Gy34.2. feladat

Legyen $x_1 = 3$ és minden $n \ge 1$ esetén
$$x_{n+1} = \frac{1}{2}\left(x_n + \frac{5}{x_n}\right)$$
(Babiloni gyökvonó algoritmus $\sqrt{5}$-re).

a) Bizonyítsuk be az AM–GM egyenlőtlenséggel, hogy $x_n \ge \sqrt{5}$ minden $n \ge 2$ esetén!

b) Mutassuk meg, hogy a sorozat monoton csökken $n \ge 2$-re!

c) Igazoljuk, hogy a sorozat konvergens, és $\lim_{n\to\infty} x_n = \sqrt{5}$!

## Gy35.1. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg explicit küszöbindexet konkrétan $\varepsilon = 0{,}01$ mellett:

a) $a_n = \sqrt{n + 2} - \sqrt{n}$;

b) $b_n = \sqrt{n^2 + 4n} - n$.

## Gy35.2. feladat

a) Számítsuk ki a $\lim_{n\to\infty} \left(\sqrt{4n^2 + 3n} - 2n\right)$ határértéket!

b) Határozzuk meg a $\lim_{n\to\infty} \left(\sqrt[3]{n + 1} - \sqrt[3]{n}\right)$ határértéket, és adjunk meg hozzá tetszőleges $\varepsilon > 0$-ra alkalmas $N_0(\varepsilon)$ küszöbindexet!

## Gy36.1. feladat

a) Bizonyítsuk be a tételt: ha a $(b_n)$ sorozat korlátos, és az $(a_n)$ sorozat nullsorozat ($\lim_{n\to\infty} a_n = 0$), akkor a szorzatuk is nullsorozat, azaz
$$\lim_{n\to\infty} (a_n b_n) = 0.$$

b) Ennek felhasználásával számítsuk ki a $\lim_{n\to\infty} \dfrac{\sin(n^2 + 1)}{n}$ határértéket, és adjunk meg tetszőleges $\varepsilon > 0$-hoz alkalmas $N_0(\varepsilon)$ küszöbindexet!

## Gy36.2. feladat

A rendőrelv (csendőrelv) felhasználásával határozzuk meg az alábbi sorozatok határértékét:

a) $a_n = \dfrac{[n \sqrt{2}]}{n}$;

b) $b_n = \sum_{k=1}^n \dfrac{1}{n^2 + k} = \dfrac{1}{n^2 + 1} + \dfrac{1}{n^2 + 2} + \dots + \dfrac{1}{n^2 + n}$.

## Gy37.1. feladat

a) Írjuk fel kvantorokkal a $\lim_{n\to\infty} a_n = A$ állítást, majd képezzük a formális tagadását ($a_n \not\to A$) kvantorokkal és szabatos szöveges megfogalmazással!

b) A definíció tagadása alapján bizonyítsuk be, hogy a $c_n = (-1)^n$ sorozatnak nem határértéke az $A = 1$ szám, sőt semmilyen valós szám sem lehet határértéke!

## Gy37.2. feladat

a) Írjuk fel logikai kvantorokkal annak tagadását, hogy az $(a_n)$ sorozat Cauchy-sorozat!

b) Igazoljuk a fenti tagadás alapján, hogy az
$$a_n = \sin\left(\frac{n\pi}{2}\right)$$
sorozat divergens!

## Gy38.1. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg tetszőleges $\varepsilon > 0$-hoz alkalmas $N_0(\varepsilon)$ küszöbindexet:

a) $a_n = \dfrac{4n + 3}{2n - 1}$;

b) $b_n = \dfrac{1}{n^2 + 2n}$.

## Gy38.2. feladat

Számítsuk ki a konvergencia műveleti szabályai és nevezetes tételei alapján az alábbi határértékeket:

a) $\lim_{n\to\infty} \dfrac{\sqrt{9n^2 + 5n} - 3n}{\sqrt{4n^2 + 1} - 2n}$;

b) $\lim_{n\to\infty} \sqrt[n]{3^n + 4^n}$.

## Gy39.1. feladat

a) Bizonyítsuk be a határérték definíciója alapján, hogy $\lim_{n\to\infty} a_n = A$ pontosan akkor teljesül, ha $\lim_{n\to\infty} |a_n - A| = 0$.

b) Igazoljuk a fordított háromszög-egyenlőtlenség segítségével, hogy ha $\lim_{n\to\infty} a_n = A$, akkor $\lim_{n\to\infty} |a_n| = |A|$. Igaz-e a tétel megfordítása?

## Gy39.2. feladat

a) Bizonyítsuk be a definíció alapján, hogy ha $\lim_{n\to\infty} a_n = A$ és $\lim_{n\to\infty} b_n = B$, akkor
$$\lim_{n\to\infty} (a_n + b_n) = A + B.$$

b) Igaz-e, hogy ha $\lim_{n\to\infty} (a_n b_n) = 0$, akkor legalább az egyik sorozat nullsorozat ($\lim a_n = 0$ vagy $\lim b_n = 0$)? Válaszunkat indokoljuk!

## Gy40.1. feladat

a) Konstruáljunk olyan divergens számsorozatot, amelyre $\lim_{n\to\infty} (a_{n+1} - a_n) = 0$, és felülről nem korlátos ($a_n \to +\infty$)!

b) Konstruáljunk olyan korlátos divergens számsorozatot, amelyre szintén $\lim_{n\to\infty} (b_{n+1} - b_n) = 0$, de a sorozat mégsem konvergens!

## Gy40.2. feladat

a) Mutassuk meg, hogy a harmonikus sor részletösszegeire, $H_n = \sum_{k=1}^n \frac{1}{k}$ esetén $H_{n+1} - H_n \to 0$, de $H_n \to +\infty$ (Oresme-féle bizonyítás)!

b) Bizonyítsuk be, hogy ha egy $(a_n)$ sorozatra teljesül, hogy $|a_{n+1} - a_n| \le 2^{-n}$ minden $n \in \mathbb{N}$ esetén, akkor $(a_n)$ konvergens!

## Gy41.1. feladat

Vizsgáljuk meg, hogy az alábbi formulák milyen tulajdonságát fejezik ki az $(a_n)$ valós számsorozatnak:

a) $(\exists N_0 \in \mathbb{N})(\forall \varepsilon > 0)(\forall n > N_0)(|a_n - A| < \varepsilon)$;

b) $(\exists \varepsilon > 0)(\exists N_0 \in \mathbb{N})(\forall n > N_0)(|a_n - A| < \varepsilon)$;

c) $(\forall N_0 \in \mathbb{N})(\forall \varepsilon > 0)(\exists n > N_0)(|a_n - A| < \varepsilon)$.

## Gy41.2. feladat

Tekintsük az alábbi állítást:
„Minden $k \in \mathbb{N}$ természetes számhoz létezik olyan $N_k \in \mathbb{N}$ küszöbindex, hogy minden $n > N_k$ esetén $|a_n - A| < \frac{1}{k}$.”

Bizonyítsuk be, hogy ez az állítás logikailag ekvivalens a $\lim_{n\to\infty} a_n = A$ standard $\varepsilon$-os definíciójával!

## Gy42.1. feladat

a) Bizonyítsuk be, hogy a diadikus racionális számok halmaza,
$$D = \left\{\frac{m}{2^n} : m \in \mathbb{Z},\ n \in \mathbb{N}\right\}$$
sűrű $\mathbb{R}$-ben (azaz tetszőleges $a < b$ valós számokhoz létezik $d \in D$, amelyre $a < d < b$)!

b) Igazoljuk, hogy $\mathbb{R}$ felbontható két diszjunkt, $\mathbb{R}$-ben sűrű halmaz egyesítésére!

## Gy42.2. feladat

Bontsuk fel a valós számok $\mathbb{R}$ halmazát megszámlálhatóan végtelen sok páronként diszjunkt, $\mathbb{R}$-ben sűrű halmaz egyesítésére:
$$\mathbb{R} = \bigcup_{k=1}^\infty H_k, \quad \text{ahol } H_i \cap H_j = \emptyset \ (i \ne j) \text{ és } \overline{H_k} = \mathbb{R} \ \forall k.$$

## Gy43.1. feladat

a) Konstruáljunk olyan számsorozatot, amelyben minden racionális szám ($\mathbb{Q}$) végtelen sokszor szerepel sorozattagként!

b) Mi ennek a sorozatnak a torlódási pontjainak (részsorozat-határértékeinek) a halmaza a kiterjesztett valós számegyenesen ($\overline{\mathbb{R}}$)?

## Gy43.2. feladat

a) Konstruáljunk olyan korlátos számsorozatot, amelynek a torlódási pontjainak halmaza pontosan a $\{-1, 0, 1\}$ három pontból áll!

b) Konstruáljunk olyan számsorozatot, amelynek torlódási pontjai pontosan a $[0, 1]$ zárt intervallum pontjai!

# Az 5. feladatlaphoz

## Gy44.1. feladat

a) Mondjuk ki kvantorokkal a $\lim_{n\to\infty} a_n = -\infty$ definícióját, és képezzük a formális tagadását kvantorokkal és szabatos magyar szöveggel!

b) A definíció alapján bizonyítsuk be, hogy $\lim_{n\to\infty} (3 - n^2) = -\infty$, és tetszőleges $K \in \mathbb{R}$ esetén adjunk meg explicit $N_K$ küszöbindexet!

## Gy44.2. feladat

a) Mutassuk meg a definíciók tagadása alapján, hogy az $a_n = (-1)^n n$ sorozatnak sem $+\infty$, sem $-\infty$ nem határértéke!

b) Igaz-e, hogy ha egy sorozat felülről nem korlátos, akkor határértéke szükségképpen $+\infty$? Hozzunk indokolt ellenpéldát!

## Gy45.1. feladat

Bizonyítsuk be, hogy a valós számsorozatok körében az alábbi két állítás ekvivalens:

(i) $\lim_{n\to\infty} a_n = +\infty$ (a standard definíció: minden $K \in \mathbb{R}$-re létezik küszöbindex);

(ii) Minden $M \in \mathbb{N}$ természetes számhoz létezik olyan $N_M \in \mathbb{N}$ küszöbindex, hogy minden $n > N_M$ esetén $a_n > M$.

## Gy45.2. feladat

Bizonyítsuk be, hogy az $(a_n)$ számsorozatra $\lim_{n\to\infty} a_n = +\infty$ pontosan akkor teljesül, ha tetszőleges $c \in \mathbb{R}$ valós szám esetén a sorozatnak csak véges sok tagja esik a $(-\infty, c]$ félegyenesbe!

## Gy46.1. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg tetszőleges $K > 0$ valós korláthoz explicit $N_K$ küszöbindexet:

a) $a_n = n^2 - 6n$;

b) $b_n = \dfrac{n^2 + 1}{n + 3}$.

## Gy46.2. feladat

Határozzuk meg az alábbi sorozatok határértékét, és adjunk meg adott $K > 0$-hoz alkalmas $N_K$ küszöbindexet:

a) $c_n = 2^n - n^2$;

b) $d_n = \sqrt{n^2 + 10n}$.

## Gy47.1. feladat

a) Bizonyítsuk be, hogy ha egy $(a_n)$ számsorozat határértéke $+\infty$, akkor a sorozat értékkészletének létezik legkisebb eleme (azaz a sorozatnak van minimuma)!

b) Igazoljuk, hogy ha $\lim_{n\to\infty} a_n = -\infty$, akkor a sorozatnak létezik legnagyobb tagja (maximuma)!

## Gy47.2. feladat

a) Mutassunk példát olyan konvergens sorozatra, amelynek sem legkisebb, sem legnagyobb tagja nincs!

b) Bizonyítsuk be, hogy ha egy konvergens sorozatra $\lim_{n\to\infty} a_n = A$, és létezik olyan $n_1 \in \mathbb{N}$ index, amelyre $a_{n_1} > A$, akkor a sorozatnak szükségképpen van legnagyobb tagja (maximuma)!

## Gy48.1. feladat

Legyen $A \subset \mathbb{R}$ nem üres, felülről korlátos halmaz, és tegyük fel, hogy $\alpha = \sup A \notin A$ (a halmaznak nincs maximuma).

Bizonyítsuk be részletesen, hogy létezik olyan $(a_n)_{n=1}^\infty \subset A$ sorozat, amely szigorúan monoton növekvő és $\lim_{n\to\infty} a_n = \alpha$!

## Gy48.2. feladat

Legyen $B \subset \mathbb{R}$ nem üres, alulról korlátos halmaz, és $\beta = \inf B \notin B$.

a) Konstruáljunk olyan szigorúan monoton csökkenő $(b_n) \subset B$ sorozatot, amelyre $\lim_{n\to\infty} b_n = \beta$!

b) Tegyük fel, hogy $H \subset \mathbb{R}$ felülről korlátos, és $\sup H \in H$ (létezik maximum). Mikor választható $H$-ból szigorúan monoton növekvő sorozat, amely $\sup H$-hoz tart?

## Gy49.1. feladat

Számítsuk ki az alábbi sorozatok határértékét a rendőrelv és elemi azonosságok segítségével:

a) $\lim_{n\to\infty} \sqrt[n]{2^n + 5^n + 100n^4}$;

b) $\lim_{n\to\infty} \left(\dfrac{1}{n^2} + \dfrac{3}{n^2} + \dfrac{5}{n^2} + \dots + \dfrac{2n - 1}{n^2}\right)$.

## Gy49.2. feladat

Határozzuk meg az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} \sqrt[n]{\dfrac{3^n + 7^n}{2^n + 5^n}}$;

b) $\lim_{n\to\infty} \sum_{k=1}^n \dfrac{k^2}{n^3} = \lim_{n\to\infty} \left(\dfrac{1^2}{n^3} + \dfrac{2^2}{n^3} + \dots + \dfrac{n^2}{n^3}\right)$.

## Gy50.1. feladat

Konstruáljunk olyan $(a_n)$ és $(b_n)$ valós számsorozatokat, amelyekre $\lim_{n\to\infty} a_n = 0$ és $\lim_{n\to\infty} b_n = +\infty$, és a szorzatuk határértéke:

a) $\lim_{n\to\infty} (a_n b_n) = 0$;

b) $\lim_{n\to\infty} (a_n b_n) = 5$;

c) $\lim_{n\to\infty} (a_n b_n) = +\infty$;

d) a $\lim_{n\to\infty} (a_n b_n)$ határérték nem létezik (a szorzat korlátos és oszcillál)!

## Gy50.2. feladat

Konstruáljunk olyan $(a_n)$ és $(b_n)$ valós számsorozatokat, amelyekre $\lim_{n\to\infty} a_n = +\infty$ és $\lim_{n\to\infty} b_n = +\infty$, és a különbségükre:

a) $\lim_{n\to\infty} (a_n - b_n) = 0$;

b) $\lim_{n\to\infty} (a_n - b_n) = -\infty$;

c) $\lim_{n\to\infty} (a_n - b_n) = 7$;

d) az $(a_n - b_n)$ sorozat korlátos, de nem létezik határértéke!

## Gy51.1. feladat

a) Bizonyítsuk be a definíció alapján, hogy ha $\lim_{n\to\infty} a_n = 0$ és minden $n \in \mathbb{N}$ esetén $a_n \ne 0$, akkor
$$\lim_{n\to\infty} \frac{1}{|a_n|} = +\infty.$$

b) Igaz-e, hogy ha $\lim_{n\to\infty} a_n = 0$ és $a_n \ne 0$, akkor $\lim_{n\to\infty} \frac{1}{a_n} = +\infty$? Milyen ellenpéldát tudunk adni, és mi a helyes tétel?

## Gy51.2. feladat

a) Mutassuk meg a definíció alapján, hogy ha $\lim_{n\to\infty} a_n = +\infty$, akkor $\lim_{n\to\infty} \dfrac{1}{a_n} = 0$.

b) Legyen $a_n > 0$ pozitív számsorozat. Bizonyítsuk be, hogy ha $\lim_{n\to\infty} \dfrac{a_{n+1}}{a_n} = L > 1$, akkor $\lim_{n\to\infty} a_n = +\infty$!

## Gy52.1. feladat

a) Igazoljuk részletesen, hogy egy konvergens valós számsorozatnak NEM létezhet olyan esete, ahol sem minimuma, sem maximuma nincs (azaz minden konvergens sorozatnak van legalább egy szélsőértéke)!

b) Adjunk meg olyan korlátos és divergens számsorozatot, amelynek sem legkisebb, sem legnagyobb tagja nincs!

## Gy52.2. feladat

Legyen $(a_n)$ egy tetszőleges korlátos számsorozat, és jelölje:
$$\alpha = \inf_{n \in \mathbb{N}} a_n, \qquad \beta = \sup_{n \in \mathbb{N}} a_n.$$

a) Bizonyítsuk be az általános egyenlőtlenséget:
$$\alpha \le \liminf_{n\to\infty} a_n \le \limsup_{n\to\infty} a_n \le \beta.$$

b) Konstruáljunk olyan korlátos sorozatot, amelyre mind a három egyenlőtlenség SZIGORÚ, azaz:
$$\alpha < \liminf_{n\to\infty} a_n < \limsup_{n\to\infty} a_n < \beta!$$

## Gy53.1. feladat

Számítsuk ki az alábbi sorozatok határértékét a határérték műveleti szabályai alapján:

a) $\lim_{n\to\infty} \dfrac{3n^3 - 4n + 2}{5n^3 + n^2 - 7}$;

b) $\lim_{n\to\infty} \dfrac{4^n - 2^n}{4^{n+1} + 5 \cdot 3^n}$;

c) $\lim_{n\to\infty} \dfrac{(n+2)! + (n+1)!}{(n+3)!}$.

## Gy53.2. feladat

Határozzuk meg az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} n \left(\sqrt{n^2 + 2} - \sqrt{n^2 - 1}\right)$;

b) $\lim_{n\to\infty} \dfrac{1 + \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^n}}{1 + \frac{1}{3} + \frac{1}{9} + \dots + \frac{1}{3^n}}$.

## Gy54.1. feladat

Legyen $(a_n)$ egy valós számsorozat, amelyre teljesül, hogy minden $n \ge 1$ esetén
$$|a_{n+1} - a_n| \le \frac{1}{n(n+1)}.$$

a) Bizonyítsuk be teleszkópikus összegzéssel, hogy $(a_n)$ Cauchy-sorozat, így konvergens!

b) Mutassuk meg, hogy a határértékre fennáll a $|L - a_1| \le 1$ becslés!

## Gy54.2. feladat

Tegyük fel, hogy az $(a_n)$ számsorozatra a lépésközök abszolút értékeiből képzett sor konvergens, azaz
$$\sum_{n=1}^\infty |a_{n+1} - a_n| < +\infty$$
(korlátos ingadozású sorozat).

Bizonyítsuk be, hogy az $(a_n)$ sorozat szükségképpen konvergens!

# A 6. feladatlaphoz

## Gy55.1. feladat

a) Bizonyítsuk be, hogy az egész számokból képezhető véges sorozatok halmaza,
$$S = \bigcup_{k=1}^\infty \mathbb{Z}^k$$
megszámlálhatóan végtelen!

b) Igazoljuk, hogy a racionális számok összes véges részhalmazainak halmaza, $\mathcal{P}_{\text{fin}}(\mathbb{Q})$ megszámlálható!

## Gy55.2. feladat

a) Mutassuk meg részletesen, hogy a racionális együtthatós polinomok halmaza, $\mathbb{Q}[x]$ megszámlálható!

b) Bizonyítsuk be, hogy a sík azon köreinek a halmaza, amelyek középpontjának mindkét koordinátája racionális és sugara is racionális, megszámlálható!

## Gy56.1. feladat

A nevezetes $\lim_{n\to\infty} \left(1 + \frac{c}{n}\right)^n = e^c$ határérték felhasználásával számítsuk ki az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} \left(1 + \frac{3}{n}\right)^n$;

b) $\lim_{n\to\infty} \left(\frac{n - 2}{n + 1}\right)^n$;

c) $\lim_{n\to\infty} \left(1 + \frac{1}{2n}\right)^n$.

## Gy56.2. feladat

Határozzuk meg az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} \left(\dfrac{2n + 3}{2n - 1}\right)^{3n + 2}$;

b) $\lim_{n\to\infty} \left(1 - \dfrac{1}{n^2}\right)^n$.

## Gy57.1. feladat

Konstruáljunk konkrét valós számsorozatokat, amelyek bemutatják az aszimptotikus ekvivalencia ($a_n \sim b_n \iff \frac{a_n}{b_n} \to 1$) és a különbség nullához tartása ($a_n - b_n \to 0$) közötti függetlenséget:

a) $a_n - b_n \to 0$, de $\lim_{n\to\infty} \frac{a_n}{b_n} \ne 1$;

b) $\lim_{n\to\infty} \frac{a_n}{b_n} = 1$, de $a_n - b_n \to +\infty$!

## Gy57.2. feladat

Tegyük fel, hogy $a_n > 0$ és $b_n > 0$ minden $n$-re, és $\lim_{n\to\infty} \frac{a_n}{b_n} = 1$.

a) Igaz-e, hogy ekkor a hatványaik hányadosára is $\lim_{n\to\infty} \frac{a_n^n}{b_n^n} = 1$? Hozzunk indokolt ellenpéldát!

b) Bizonyítsuk be, hogy ha léteznek a véges $\lim_{n\to\infty} a_n = A > 0$ és $\lim_{n\to\infty} b_n = B > 0$ határértékek, akkor
$$a_n - b_n \to 0 \iff \frac{a_n}{b_n} \to 1.$$

## Gy58.1. feladat

a) Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenséggel, hogy az
$$a_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekvő!

b) Igazoljuk hasonló módon az AM–GM egyenlőtlenséggel, hogy a
$$b_n = \left(1 + \frac{1}{n}\right)^{n+1}$$
sorozat szigorúan monoton csökkenő!

## Gy58.2. feladat

a) Mutassuk meg, hogy minden $n \in \mathbb{N}$ esetén
$$\left(1 + \frac{1}{n}\right)^n < e < \left(1 + \frac{1}{n}\right)^{n+1}.$$

b) Ennek természetes alapú logaritmusát véve bizonyítsuk be, hogy minden $n \ge 1$ egészre:
$$\frac{1}{n + 1} < \ln\left(1 + \frac{1}{n}\right) < \frac{1}{n}!$$

## Gy59.1. feladat

a) Konstruáljunk explicit bijekciót a zárt $[0, 1]$ és a nyílt $(0, 1)$ intervallumok között!

b) Bizonyítsuk be a fenti konstrukció és a számossági tételek segítségével, hogy az irracionális számok $\mathbb{R} \setminus \mathbb{Q}$ halmaza kontinuum számosságú!

## Gy59.2. feladat

a) Konstruáljunk explicit bijekciót a $(0, 1)$ nyílt intervallum és a teljes valós számegyenes $\mathbb{R}$ között!

b) Bizonyítsuk be, hogy tetszőleges két nem elfajuló $[a, b]$ és $[c, d]$ zárt intervallum azonos számosságú ($a < b$ és $c < d$)!

## Gy60.1. feladat

a) Bizonyítsuk be, hogy az euklideszi síkban elhelyezett, páronként diszjunkt pozitív sugarú körlapokból álló tetszőleges rendszer szükségképpen legfeljebb megszámlálható!

b) Igazoljuk ugyanezt a számegyenesre állított, páronként diszjunkt „T” alakú betűk rendszerére (ahol a T betűk vízszintes és függőleges szára is pozitív hosszúságú szakasz)!

## Gy60.2. feladat

a) Legfeljebb hány páronként diszjunkt „8-as” alakzat (két pontban érintkező pozitív sugarú körvonal) helyezhető el a síkban?

b) Igazoljuk, hogy egy tetszőleges monoton növekvő $f : \mathbb{R} \to \mathbb{R}$ függvény szakadási pontjainak halmaza legfeljebb megszámlálható!

## Gy61.1. feladat

a) Bizonyítsuk be, hogy a $\xi = \sqrt{3} - \sqrt{5}$ szám algebrai, megadva egy olyan nemnulla racionális együtthatós polinomot, amelynek $\xi$ gyöke!

b) Mutassuk meg részletesen, hogy az algebrai számok $\mathbb{A}$ halmaza megszámlálhatóan végtelen!

## Gy61.2. feladat

a) Bizonyítsuk be a Cantor-tétel és számossági megfontolások segítségével, hogy léteznek transzcendens valós számok, sőt a transzcendens számok halmaza kontinuum számosságú!

b) Igazoljuk, hogy a $\eta = \sqrt[3]{2} + \sqrt{2}$ szám algebrai!

## Gy62.1. feladat

a) Bizonyítsuk be Cantor tételét tetszőleges $A$ halmazra: nincsen olyan $f : A \to \mathcal{P}(A)$ leképezés, amely szürjektív lenne, így $|A| < |\mathcal{P}(A)|$!

b) Igazoljuk, hogy a természetes számok hatványhalmaza, $\mathcal{P}(\mathbb{N})$ kölcsönösen egyértelműen megfeleltethető a végtelen $0$–$1$ sorozatok $\{0, 1\}^\mathbb{N}$ halmazával!

## Gy62.2. feladat

a) Bizonyítsuk be Cantor diagonális módszerével közvetlenül, hogy a nyílt $(0, 1)$ intervallum valós számai nem alkotnak megszámlálható halmazt!

b) Mutassuk meg, hogy a természetes számok hatványhalmazának számossága megegyezik a valós számok számosságával:
$$|\mathcal{P}(\mathbb{N})| = |\mathbb{R}| = \mathfrak{c}.$$

# A 7. feladatlaphoz

## Gy63.1. feladat

Határozzuk meg az alábbi sorozatok torlódási pontjainak halmazát, valamint a $\liminf$ és $\limsup$ értéküket:

a) $a_n = (-1)^n \dfrac{2n - 1}{n + 2}$;

b) $b_n = \cos\left(\dfrac{n\pi}{3}\right) + \dfrac{1}{n}$.

## Gy63.2. feladat

Számítsuk ki a $\liminf$ és $\limsup$ értékeket a kiterjesztett valós számegyenesen ($\overline{\mathbb{R}}$):

a) $c_n = \left(1 + (-1)^n\right) n$;

b) $d_n = \left(1 + \dfrac{(-1)^n}{n}\right)^n$.

## Gy64.1. feladat

Bizonyítsuk be részletesen az analízis alaptételét véges határértékre: egy tetszőleges $(a_n)$ valós számsorozatra
$$\lim_{n\to\infty} a_n = A \in \mathbb{R} \iff \liminf_{n\to\infty} a_n = \limsup_{n\to\infty} a_n = A.$$

## Gy64.2. feladat

Bizonyítsuk be a tételt végtelen határértékre: egy tetszőleges $(a_n)$ számsorozatra
$$\lim_{n\to\infty} a_n = -\infty \iff \limsup_{n\to\infty} a_n = -\infty.$$

## Gy65.1. feladat

Legyen $(a_n)$ felülről korlátos valós számsorozat, és jelölje $S = \limsup_{n\to\infty} a_n \in \mathbb{R}$.

a) Bizonyítsuk be, hogy $S$ torlódási pontja az $(a_n)$ sorozatnak (azaz létezik olyan $(a_{n_k})$ részsorozat, amelyre $\lim_{k\to\infty} a_{n_k} = S$)!

b) Igazoljuk, hogy semelyik $S$-nél szigorúan nagyobb valós szám nem lehet torlódási pontja a sorozatnak!

## Gy65.2. feladat

Legyenek $(a_n)$ és $(b_n)$ korlátos valós számsorozatok.

a) Bizonyítsuk be az alábbi szubadditivitási egyenlőtlenséget:
$$\limsup_{n\to\infty} (a_n + b_n) \le \limsup_{n\to\infty} a_n + \limsup_{n\to\infty} b_n.$$

b) Mutassunk példát olyan korlátos sorozatokra, ahol a fenti egyenlőtlenségben szigorú reláció ($<$) áll fenn!

## Gy66.1. feladat

Bizonyítsuk be részletesen a $\limsup_{n\to\infty} a_n = A \in \mathbb{R}$ alábbi ekvivalens környezetes jellemzését:

(i) Minden $\varepsilon > 0$ esetén az $a_n > A + \varepsilon$ egyenlőtlenség csak véges sok $n \in \mathbb{N}$ indexre teljesül;

(ii) Minden $\varepsilon > 0$ esetén az $a_n > A - \varepsilon$ egyenlőtlenség végtelen sok $n \in \mathbb{N}$ indexre teljesül.

## Gy66.2. feladat

Fogalmazzuk meg és bizonyítsuk be a Gy66.1 feladat duális állítását a $\liminf_{n\to\infty} a_n = A \in \mathbb{R}$ határértékre!

## Gy67.1. feladat

Számítsuk ki az alábbi végtelen sorok összegét:

a) $\displaystyle\sum_{n=1}^\infty \frac{5 \cdot 2^{n+1}}{3^n}$;

b) $\displaystyle\sum_{n=1}^\infty \frac{2}{n(n+1)}$;

c) $\displaystyle\sum_{n=0}^\infty \frac{(-1)^n + 2^n}{5^n}$.

## Gy67.2. feladat

Határozzuk meg az alábbi sorok összegét:

a) $\displaystyle\sum_{n=1}^\infty \frac{1}{(2n - 1)(2n + 1)}$;

b) $\displaystyle\sum_{n=2}^\infty \ln\left(1 - \frac{1}{n^2}\right)$.

## Gy68.1. feladat

a) Bizonyítsuk be a végtelen sorok konvergenciájának szükséges feltételét: ha a $\sum_{n=1}^\infty a_n$ sor konvergens, akkor $\lim_{n\to\infty} a_n = 0$!

b) Mutassuk meg a harmonikus sor $\sum_{n=1}^\infty \frac{1}{n}$ példáján, hogy az $a_n \to 0$ feltétel NEM elégséges a konvergenciához!

## Gy68.2. feladat

a) Mondjuk ki és bizonyítsuk be a Cauchy-féle konvergenciakritériumot végtelen számsorokra!

b) Alkalmazzuk a kritériumot annak igazolására, hogy a $\displaystyle\sum_{n=1}^\infty \frac{\cos(n^2)}{n^2}$ sor konvergens!

## Gy69.1. feladat

Írjuk le analitikus formulákkal az alábbi függvényeket az adott intervallumokon, és határozzuk meg szakadási pontjaikat:

a) $f(x) = \{x\} = x - [x]$ a $[-2, 2]$ intervallumon;

b) $g(x) = [x] - [-x]$ az $\mathbb{R}$ halmazon;

c) $h(x) = x \left[\dfrac{1}{x}\right]$ a $(0, 1]$ intervallumon.

## Gy69.2. feladat

a) Határozzuk meg az $f(x) = \left\{\dfrac{1}{x}\right\}$ függvény szakadási pontjainak halmazát a $(0, 1]$ intervallumon!

b) Számítsuk ki a rendőrelv segítségével a $\lim_{x\to 0+} x \left[\dfrac{1}{x}\right]$ határértéket!

## Gy70.1. feladat

a) Konstruáljunk olyan $f : [0, 1] \to \mathbb{R}$ korlátos függvényt, amelynek nincs maximuma!

b) Konstruáljunk olyan $g : [0, 1] \to \mathbb{R}$ korlátos függvényt, amelynek sem minimuma, sem maximuma nincs!

## Gy70.2. feladat

a) Konstruáljunk olyan $f : [0, 1] \to \mathbb{R}$ függvényt, amely alulról korlátos, de felülről nem korlátos!

b) Mi a különbség a fenti példa és a Weierstraß-tétel állítása között? Fogalmazzuk meg pontosan a tételt!

## Gy71.1. feladat

Tekintsük az alábbi törtlineáris függvényt a maximális értelmezési tartományán:
$$f(x) = \frac{4x - 1}{2x + 3}.$$

a) Határozzuk meg az értelmezési tartományát és értékkészletét!

b) Keressük meg az inverzfüggvényét, és igazoljuk az $f(f^{-1}(y)) = y$ azonosságot!

## Gy71.2. feladat

a) Tekintsük a $g(x) = x^2 - 6x + 8$ függvényt a $[3, \infty)$ intervallumon. Bizonyítsuk be, hogy szigorúan monoton növekvő, és határozzuk meg az inverzfüggvényét!

b) Keressük meg a szinusz hiperbolikusz függvény, $\operatorname{sh} x = \dfrac{e^x - e^{-x}}{2}$ inverzét az egész $\mathbb{R}$ halmazon!

## Gy72.1. feladat

Létezik-e olyan monoton $f : [0, 1] \to \mathbb{R}$ függvény, amelynek értékkészlete:

a) $R(f) = (0, 1)$ (nyílt intervallum);

b) $R(f) = [0, 1] \cup [2, 3]$ (két diszjunkt zárt intervallum uniója)?

Válaszainkat részletesen indokoljuk!

## Gy72.2. feladat

a) Bizonyítsuk be a tételt: ha az $f : [a, b] \to \mathbb{R}$ monoton növekvő függvény értékkészlete a teljes $[f(a), f(b)]$ zárt intervallum, akkor $f$ szükségképpen folytonos!

b) Létezhet-e olyan szigorúan monoton függvény, amelynek értékkészlete pontosan a racionális számok $\mathbb{Q}$ halmaza?

## Gy73.1. feladat

Döntsük el az alábbi függvényekről, hogy párosak-e, páratlanok-e, vagy egyik sem a maximális értelmezési tartományukon:

a) $f(x) = x^4 \cos(3x) + x^2$;

b) $g(x) = \ln\left(\dfrac{1 - x}{1 + x}\right)$ a $(-1, 1)$ intervallumon;

c) $h(x) = \dfrac{x}{e^x - 1} + \dfrac{x}{2}$ az $\mathbb{R} \setminus \{0\}$ halmazon!

## Gy73.2. feladat

a) Bizonyítsuk be az alábbi algebrai szabályokat függvények szorzatára:
(i) Két páratlan függvény szorzata páros;
(ii) Egy páros és egy páratlan függvény szorzata páratlan.

b) Mit állíthatunk két szigorúan monoton növekvő függvény összegéről, illetve kompozíciójáról? Bizonyítsuk be az állításokat!

## Gy74.1. feladat

a) Bizonyítsuk be, hogy tetszőleges, az origóra szimmetrikus $D \subseteq \mathbb{R}$ halmazon értelmezett $f : D \to \mathbb{R}$ függvény egyértelműen felbontható egy páros és egy páratlan függvény összegére:
$$f(x) = f_p(x) + f_{pt}(x), \quad \text{ahol } f_p \text{ páros, } f_{pt} \text{ páratlan}!$$

b) Határozzuk meg ezt a felbontást konkrétan az $f(x) = 2x^3 - 5x^2 + 4x - 7$ polinom esetén!

## Gy74.2. feladat

a) Határozzuk meg az $f(x) = e^{2x}$ függvény páros és páratlan komponensét, és fejezzük ki őket hiperbolikus függvények segítségével!

b) Írjuk fel az $f(x) = \dfrac{1}{x - 1}$ függvény páros és páratlan felbontását a $(-1, 1)$ intervallumon!

## Gy75.1. feladat

a) Bizonyítsuk be, hogy létezik olyan $f : \mathbb{R} \to \mathbb{R}$ függvény, amelynek grafikonja sűrű a síkban, azaz
$$\overline{\{(x, f(x)) : x \in \mathbb{R}\}} = \mathbb{R}^2!$$

b) Lehet-e egy ilyen függvény folytonos egyetlen pontban is?

## Gy75.2. feladat

a) Konstruáljunk olyan $f : (0, 1) \to \mathbb{R}$ függvényt, amely a $(0, 1)$ intervallum semelyik nyílt részintervallumán sem korlátos!

b) Létezik-e olyan $g : \mathbb{R} \to \mathbb{R}$ függvény, amely Darboux-tulajdonságú (minden intervallum képe intervallum), mégis a számegyenes minden pontjában szakad?

# A 8. feladatlaphoz

## Gy76.1. feladat

a) Létezik-e olyan nem konstans $f : \mathbb{R} \to \mathbb{R}$ függvény, amely minden racionális szám szerint periodikus, azaz
$$f(x + q) = f(x) \quad \text{minden } x \in \mathbb{R} \text{ és } q \in \mathbb{Q} \text{ esetén}?$$

b) Bizonyítsuk be, hogy ha egy ilyen függvény FOLYTONOS legalább egyetlen $x_0 \in \mathbb{R}$ pontban, akkor szükségképpen az egész számegyenesen azonosan konstans!

## Gy76.2. feladat

a) Határozzuk meg az $f(x) = \sin(2x) + \cos(3x)$ függvény legkisebb pozitív periódusát!

b) Bizonyítsuk be, hogy a $g(x) = \sin x + \sin(\sqrt{2}x)$ függvénynek nem létezik nemnulla periódusa (nem periodikus)!

## Gy77.1. feladat

a) Bizonyítsuk be, hogy tetszőleges $f : \mathbb{R} \to \mathbb{R}$ függvény esetén a szigorú lokális maximumhelyek halmaza legfeljebb megszámlálható!

b) Következtessünk ebből arra, hogy nem létezik olyan függvény, amelynek minden pontban szigorú lokális maximuma van!

## Gy77.2. feladat

a) Mutassunk példát olyan függvényre, amelynek nem szigorú (gyenge) lokális maximumhelyei kontinuum sokan vannak!

b) Konstruáljunk olyan $f : \mathbb{R} \to \mathbb{R}$ függvényt, amelynek szigorú lokális maximumhelyei megszámlálhatóan végtelen sűrű halmazt alkotnak a számegyenesen!

## Gy78.1. feladat

a) Írjuk fel a konvexitás három pontra vonatkozó differenciahányadosos jellemzését (a szelő meredekségek monotonitását)!

b) Bizonyítsuk be a különbségi hányados módszerével, hogy az $f(x) = x^2$ függvény szigorúan konvex a teljes $\mathbb{R}$ számegyenesen!

## Gy78.2. feladat

a) Bizonyítsuk be a különbségi hányadosok segítségével, hogy az $f(x) = -\sqrt{x}$ függvény szigorúan konvex a $[0, \infty)$ intervallumon (azaz a négyzetgyökfüggvény szigorúan konkáv)!

b) Igazoljuk, hogy két konvex függvény összege konvex, és ha legalább az egyik szigorúan konvex, akkor az összeg szigorúan konvex!

## Gy79.1. feladat

Bizonyítsuk be teljes indukcióval a Jensen-egyenlőtlenséget tetszőleges véges sok tagra:
ha $f : I \to \mathbb{R}$ konvex függvény, akkor minden $n \ge 2$ egész számra, tetszőleges $x_1, \dots, x_n \in I$ pontokra és tetszőleges $\lambda_1, \dots, \lambda_n \ge 0$ súlyokra ($\sum_{i=1}^n \lambda_i = 1$) érvényes:
$$f\left(\sum_{i=1}^n \lambda_i x_i\right) \le \sum_{i=1}^n \lambda_i f(x_i)!$$

## Gy79.2. feladat

Alkalmazzuk a Jensen-egyenlőtlenséget az $f(x) = -\ln x$ szigorúan konvex függvényre az $x_i > 0$ pontokban és $\lambda_i > 0$ súlyokkal ($\sum \lambda_i = 1$), és vezessük le belőle a súlyozott számtani és mértani közepek közötti általános egyenlőtlenséget!

## Gy80.1. feladat

a) Bizonyítsuk be a Jensen-egyenlőtlenség segítségével a számtani és négyzetes közepek közötti egyenlőtlenséget tetszőleges valós $a_1, \dots, a_n \in \mathbb{R}$ számokra:
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}!$$

b) Mutassuk meg, hogy ha $x_1, \dots, x_n > 0$ és $\sum_{i=1}^n x_i = 1$, akkor
$$\sum_{i=1}^n x_i^2 \ge \frac{1}{n},$$
és határozzuk meg az egyenlőség pontos feltételét!

## Gy80.2. feladat

a) Bizonyítsuk be a harmonikus és számtani közép közötti egyenlőtlenséget tetszőleges $a_1, \dots, a_n > 0$ számokra:
$$\frac{n}{\sum_{i=1}^n \frac{1}{a_i}} \le \frac{\sum_{i=1}^n a_i}{n}!$$

b) Igazoljuk, hogy ha $x, y, z > 0$ és $x + y + z = 1$, akkor
$$\left(1 + \frac{1}{x}\right)\left(1 + \frac{1}{y}\right)\left(1 + \frac{1}{z}\right) \ge 64!$$

## Gy81.1. feladat

a) Bizonyítsuk be, hogy ha egy $f : I \to \mathbb{R}$ konvex függvény nem szigorúan konvex, akkor létezik olyan $[a, b] \subset I$ nem elfajuló intervallum ($a < b$), amelyen $f$ affin lineáris (azaz $f(x) = mx + c$ minden $x \in [a, b]$ esetén)!

b) Mutassunk példát folytonos, konvex, de nem szigorúan konvex függvényre!

## Gy81.2. feladat

a) Bizonyítsuk be, hogy ha egy nyílt intervallumon konvex $f : (a, b) \to \mathbb{R}$ függvénynek létezik lokális maximumhelye, akkor a függvény szükségképpen konstans az egész $(a, b)$ intervallumon!

b) Igaz-e ugyanez az állítás zárt intervallumon értelmezett konvex függvényre? Hozzunk ellenpéldát!

## Gy82.1. feladat

a) Bizonyítsuk be a szelők meredekségének monotonitása alapján, hogy ha $f : (a, b) \to \mathbb{R}$ konvex függvény egy nyílt intervallumon, akkor minden belső zárt $[c, d] \subset (a, b)$ részintervallumon Lipschitz-folytonos, így szükségképpen folytonos!

b) Mutassunk példát zárt $[0, 1]$ intervallumon konvex függvényre, amely a végpontban NEM folytonos!

## Gy82.2. feladat

Legyen $f : (a, b) \to \mathbb{R}$ konvex függvény nyílt intervallumon.

a) Bizonyítsuk be, hogy minden $x \in (a, b)$ pontban léteznek a bal és jobb oldali féloldali deriváltak, és érvényes:
$$f'_-(x) \le f'_+(x)!$$

b) Igazoljuk, hogy az $x \mapsto f'_+(x)$ és $x \mapsto f'_-(x)$ függvények monoton növekvőek!

## Gy83.1. feladat

A függvényhatárérték $\varepsilon$-$\delta$ definíciója alapján igazoljuk az alábbi határértékeket, tetszőleges $\varepsilon > 0$-hoz megadva egy megfelelő $\delta(\varepsilon) > 0$ értéket:

a) $\lim_{x\to 3} (4x - 5) = 7$;

b) $\lim_{x\to 2} (x^2 + 3x) = 10$.

## Gy83.2. feladat

Határozzuk meg az alábbi határértékeket, és a definíció alapján adjunk meg adott $\varepsilon > 0$-hoz alkalmas $\delta(\varepsilon) > 0$ értéket:

a) $\lim_{x\to 1} \dfrac{2x + 1}{x + 2} = 1$;

b) $\lim_{x\to 4} \sqrt{x} = 2$.

## Gy84.1. feladat

a) Mondjuk ki és bizonyítsuk be a Cauchy- és Heine-féle határérték-definíciók ekvivalenciáját (Heine-féle átviteli elv)!

b) Az átviteli elv segítségével bizonyítsuk be, hogy a $\lim_{x\to 0} \cos\left(\frac{1}{x}\right)$ határérték nem létezik!

## Gy84.2. feladat

a) Mutassuk meg, hogy $\lim_{x\to a} f(x) = b \iff \lim_{h\to 0} f(a + h) = b$.

b) Az átviteli elv segítségével bizonyítsuk be, hogy a Dirichlet-függvénynek,
$$D(x) = \begin{cases} 1, & \text{ha } x \in \mathbb{Q}, \\ 0, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q} \end{cases}$$
semelyik valós $a \in \mathbb{R}$ pontban sem létezik határértéke!

## Gy85.1. feladat

Határozzuk meg az alábbi halmazok belső pontjainak halmazát $(\operatorname{int} H)$, torlódási pontjainak halmazát $(H')$, határpontjainak halmazát $(\partial H)$ és izolált pontjainak halmazát:

a) $A = (0, 1] \cup \{2\}$;

b) $B = \mathbb{Q} \cap [0, 1]$;

c) $C = \left\{\dfrac{1}{n} : n \in \mathbb{N}\right\}$.

## Gy85.2. feladat

a) Határozzuk meg a $H = \left\{\dfrac{1}{n} + \dfrac{1}{m} : n, m \in \mathbb{N}\right\}$ halmaz torlódási pontjainak halmazát ($H'$), valamint a másodrendű torlódási pontjait ($H''$)!

b) Bizonyítsuk be általánosan, hogy tetszőleges $H \subset \mathbb{R}$ halmaz esetén a torlódási pontok $H'$ halmaza mindig zárt halmaz $\mathbb{R}$-ben!

## Gy86.1. feladat

a) Bizonyítsuk be a jeltartási tételt: ha $\lim_{x\to a} f(x) = b > 0$, akkor létezik olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta) \cap D(f)$ esetén
$$f(x) > \frac{b}{2} > 0!$$

b) Igazoljuk, hogy ha $\lim_{x\to a} f(x) = b$ és $\lim_{x\to a} g(x) = c$ úgy, hogy $b < c$, akkor létezik olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$ esetén
$$f(x) < g(x)!$$

## Gy86.2. feladat

a) Tegyük fel, hogy $f(x) < g(x)$ egy $a$ körüli pontozott környezetben, és mindkét függvénynek létezik határértéke $a$-ban. Következik-e ebből, hogy a határértékekre is szigorú egyenlőtlenség áll fenn: $\lim_{x\to a} f(x) < \lim_{x\to a} g(x)$? Hozzunk ellenpéldát!

b) Mondjuk ki és bizonyítsuk be a rendőrelvet függvényhatárértékekre!

## Gy87.1. feladat

Tekintsük a Riemann-függvényt ($R : \mathbb{R} \to \mathbb{R}$):
$$R(x) = \begin{cases}
\dfrac{1}{q}, & \text{ha } x = \dfrac{p}{q} \in \mathbb{Q} \text{ egyszerűsített tört } (p \in \mathbb{Z}, q \in \mathbb{N}), \\
1, & \text{ha } x = 0, \\
0, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}.
\end{cases}$$

a) Bizonyítsuk be az $\varepsilon$-$\delta$ definíció alapján, hogy a Riemann-függvénynek minden $a \in \mathbb{R}$ pontban létezik határértéke, és az azonosan nulla: $\lim_{x\to a} R(x) = 0$!

b) Állapítsuk meg, hogy mely pontokban folytonos, és mely pontokban szakad a Riemann-függvény!

## Gy87.2. feladat

Tekintsük az alábbi függvényt:
$$f(x) = x \cdot D(x) = \begin{cases} x, & \text{ha } x \in \mathbb{Q}, \\ 0, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}, \end{cases}$$
ahol $D(x)$ a Dirichlet-függvény.

a) Számítsuk ki a $\lim_{x\to 0} f(x)$ határértéket a rendőrelv segítségével!

b) Határozzuk meg az $f$ függvény folytonossági pontjainak és szakadási pontjainak halmazát!

# A 9. feladatlaphoz

## Gy88.1. feladat

Definiáljuk a következő határértékeket a precíz küszöbszámos / környezetes definíció alapján, és adjunk mindegyikre konkrét példafüggvényt az értelmezési tartomány pontos megadásával:
a) $\lim\limits_{x\to a-0} f(x) = -\infty$;
b) $\lim\limits_{x\to-\infty} f(x) = b$ ($b \in \mathbb{R}$);
c) $\lim\limits_{x\to+\infty} f(x) = +\infty$.

## Gy88.2. feladat

a) Írjuk fel a kétoldali véges határérték ($\lim\limits_{x\to a} f(x) = b$, $a, b \in \mathbb{R}$) definícióját, és bizonyítsuk be, hogy ez pontosan akkor áll fenn, ha a bal és jobb oldali határérték is létezik, és megegyezik $b$-vel.
b) Definiáljuk a $\lim\limits_{x\to-\infty} f(x) = +\infty$ határértéket, és mutassuk meg a definíció alapján, hogy $\lim\limits_{x\to-\infty} (2x^2 - 4x) = +\infty$.

## Gy89.1. feladat

Írjuk fel az alábbi állítások formális kvantoros tagadását, majd fogalmazzuk meg a tagadást az átviteli elv segítségével (sorozatok nyelvére lefordítva):
a) $\lim\limits_{x\to a} f(x) = b$ ($a, b \in \mathbb{R}$);
b) $\lim\limits_{x\to+\infty} f(x) = +\infty$.

## Gy89.2. feladat

a) Mondjuk ki a $\lim\limits_{x\to a-0} f(x) = b$ egyoldali határérték tagadását és sorozatos megfelelőjét.
b) Az átviteli elv segítségével bizonyítsuk be, hogy az $f(x) = \sin\left(\frac{1}{x}\right)$ ($x \ne 0$) függvénynek nem létezik határértéke a $0$ pontban.

## Gy90.1. feladat

Számítsuk ki az alábbi határértékeket:
a) $\lim\limits_{x\to 0} \frac{(1 + 2x)^5 - (1 + 10x)}{x^2 + 3x^3}$;
b) $\lim\limits_{x\to+\infty} \frac{4x^4 - 2x^2 + 7}{5x^4 + 3x^3 - 1}$;
c) $\lim\limits_{x\to-\infty} \frac{3x}{\sqrt{4x^2 + x} - x}$.

## Gy90.2. feladat

Számítsuk ki az alábbi határértékeket:
a) $\lim\limits_{x\to 3} \frac{x^3 - 27}{x^2 - 5x + 6}$;
b) $\lim\limits_{x\to 0} \frac{\sin(5x)}{\tan(3x)}$;
c) $\lim\limits_{x\to 0} \frac{1 - \cos(4x)}{x \sin(2x)}$.

## Gy91.1. feladat

Legyen $H \subseteq \mathbb{R}$ olyan halmaz, amelynek nincs torlódási pontja $\mathbb{R}$-ben (azaz $H' = \emptyset$).
a) Bizonyítsuk be, hogy $H$ minden korlátos részhalmaza véges.
b) Lássuk be, hogy $H$ legfeljebb megszámlálható.
c) Adjunk példát olyan végtelen $H$ halmazra, amelynek minden pontja izolált pont, de van torlódási pontja.

## Gy91.2. feladat

a) Bizonyítsuk be, hogy ha egy $H \subseteq \mathbb{R}$ halmaz zárt és minden pontja izolált pontja $H$-nak, akkor $H$-nak nincs torlódási pontja $\mathbb{R}$-ben ($H' = \emptyset$).
b) Igazoljuk, hogy tetszőleges páronként diszjunkt, nem üres nyílt intervallumokból álló $\mathcal{I} = \{ I_\alpha : \alpha \in A \}$ rendszer legfeljebb megszámlálható.

## Gy92.1. feladat

a) Legyen $f : \mathbb{R} \to \mathbb{R}$ periodikus függvény $p > 0$ periódussal. Tegyük fel, hogy létezik a $\lim\limits_{x\to-\infty} f(x) = c$ határérték. Bizonyítsuk be, hogy $f(x) = c$ minden $x \in \mathbb{R}$-re (azaz $f$ azonosan konstans).
b) Legyen $g : (0, \infty) \to \mathbb{R}$ olyan függvény, amelyre $g(3x) = g(x)$ minden $x > 0$ esetén, és $\lim\limits_{x\to+\infty} g(x) = A$. Bizonyítsuk be, hogy $g(x) = A$ minden $x > 0$-ra.

## Gy92.2. feladat

a) Legyen $f : \mathbb{R} \to \mathbb{R}$ folytonos, 1 szerint periodikus függvény (azaz $f(x+1) = f(x)$ minden $x$-re). Számítsuk ki a $\lim\limits_{x\to\infty} \frac{f(x)}{x}$ határértéket!
b) Igazoljuk, hogy ha egy $g : [0, 1] \to \mathbb{R}$ folytonos függvény kielégíti a $g(x^2) = g(x)$ egyenlőséget minden $x \in [0, 1]$ esetén, akkor $g$ konstans függvény.

## Gy93.1. feladat

Számítsuk ki az alábbi határértékeket helyettesítéssel vagy gyöktelenítéssel:
a) $\lim\limits_{x\to 1} \frac{\sqrt[5]{x} - 1}{\sqrt[3]{x} - 1}$;
b) $\lim\limits_{x\to 0} \frac{\sqrt{1 + 3x} - \sqrt{1 - 2x}}{x}$;
c) $\lim\limits_{x\to 7} \frac{\sqrt{x + 2} - 3}{x - 7}$.

## Gy93.2. feladat

Számítsuk ki az alábbi határértékeket:
a) $\lim\limits_{x\to +\infty} \left( \sqrt{x^2 + 6x + 2} - x \right)$;
b) $\lim\limits_{x\to -\infty} \left( \sqrt{x^2 - 8x} + x \right)$;
c) $\lim\limits_{x\to 0} \frac{\sqrt[3]{1 + 2x} - 1}{x}$.

## Gy94.1. feladat

Határozzuk meg az alábbi függvények folytonossági pontjainak halmazát $\mathbb{R}$-en, és adjunk részletes indoklást:
a) $f(x) = \begin{cases} 2x^2 + 1, & \text{ha } x \in \mathbb{Q}, \\ 3x, & \text{ha } x \notin \mathbb{Q}; \end{cases}$
b) $g(x) = [x] \cdot \sin(\pi x)$;
c) $h(x) = x \cdot D(x)$, ahol $D$ a Dirichlet-függvény ($D(x) = 1$, ha $x \in \mathbb{Q}$, és $0$, ha $x \notin \mathbb{Q}$).

## Gy94.2. feladat

Határozzuk meg az alábbi függvények szakadási pontjait, és osztályozzuk őket (megszüntethető szakadás, elsőfajú ugrásszakadás, másodfajú szakadás):
a) $f(x) = \begin{cases} \frac{x^2 - 4}{|x - 2|}, & \text{ha } x \ne 2, \\ 4, & \text{ha } x = 2; \end{cases}$
b) $g(x) = \{x\} = x - [x]$ (törtrészfüggvény);
c) $h(x) = \begin{cases} \cos\left(\frac{1}{x}\right), & \text{ha } x \ne 0, \\ 0, & \text{ha } x = 0. \end{cases}$

## Gy95.1. feladat

Legyen $R : \mathbb{R} \to \mathbb{R}$ a standard Riemann-függvény:
$$R(x) = \begin{cases} \frac{1}{q}, & \text{ha } x = \frac{p}{q} \in \mathbb{Q} \text{ egyszerűsített tört alakban } (q \in \mathbb{N}, p \in \mathbb{Z}, \operatorname{lnko}(p, q) = 1), \\ 0, & \text{ha } x \notin \mathbb{Q} \text{ vagy } x = 0. \end{cases}$$
a) Létezik-e a $\lim\limits_{x\to 0} \frac{R(x)}{|x|^{1/3}}$ határérték?
b) Létezik-e a $\lim\limits_{x\to 0} \frac{R(x)}{x^3}$ határérték?
c) Bizonyítsuk be, hogy tetszőleges $\alpha \in (0, 1)$ esetén $\lim\limits_{x\to 0} \frac{R(x)}{|x|^\alpha} = 0$.

## Gy95.2. feladat

Legyen $R : \mathbb{R} \to \mathbb{R}$ a Riemann-függvény.
a) Határozzuk meg $R$ összes folytonossági pontját és szakadási pontját $\mathbb{R}$-en.
b) Bizonyítsuk be, hogy $R$ egyetlen pontban sem differenciálható.

## Gy96.1. feladat

A folytonosság Cauchy-féle $\varepsilon$-$\delta$ definíciója alapján adjunk meg tetszőleges $\varepsilon > 0$-hoz alkalmas $\delta > 0$-t:
a) $f(x) = \frac{3x + 1}{2x - 1}$ az $a = 2$ pontban;
b) $g(x) = \sqrt{2x + 5}$ az $a = 2$ pontban.

## Gy96.2. feladat

a) Igazoljuk a definíció alapján ($\varepsilon$-$\delta$ módszerrel), hogy az $f(x) = x^3$ függvény folytonos egy tetszőlegesen rögzített $a \in \mathbb{R}$ pontban.
b) Mutassuk meg a definíció alapján, hogy a $g(x) = \frac{1}{x^2}$ függvény folytonos az $a = 1$ pontban.

## Gy97.1. feladat

a) Konstruáljunk olyan $f, g : \mathbb{R} \to \mathbb{R}$ függvényeket, amelyek egyike sem folytonos az $x = 0$ pontban, de az összegük $f + g$ és a szorzatuk $f \cdot g$ is folytonos a $0$ pontban.
b) Igaz-e, hogy ha $f \circ g$ folytonos az $a$ pontban, akkor $g$ is szükségszerűen folytonos $a$-ban? Válaszunkat indokoljuk!

## Gy97.2. feladat

Legyen $f : \mathbb{R} \to \mathbb{R}$ tetszőleges függvény.
a) Igaz-e, hogy ha $f^2$ folytonos $\mathbb{R}$-en és $f(x) \ne 0$ minden $x \in \mathbb{R}$-re, akkor $f$ folytonos $\mathbb{R}$-en?
b) Bizonyítsuk be, hogy ha $f : \mathbb{R} \to \mathbb{R}$ folytonos és $f(x) \ne 0$ minden $x \in \mathbb{R}$ esetén, akkor az $\frac{1}{f}$ reciprokfüggvény is folytonos $\mathbb{R}$-en.

## Gy98.1. feladat

Legyen $f(x) = x^5 + 2x^3 + 4x - 1$.
a) Bizonyítsuk be, hogy $f$ szigorúan monoton növekvő $\mathbb{R}$-en, értékkészlete $R(f) = \mathbb{R}$, és rendelkezik folytonos $f^{-1} : \mathbb{R} \to \mathbb{R}$ inverzfüggvénnyel.
b) Számítsuk ki $f^{-1}(-1)$ és $f^{-1}(6)$ pontos értékét.

## Gy98.2. feladat

Legyen $f : [0, \infty) \to [1, \infty)$, $f(x) = x^2 + 2x + 1 = (x + 1)^2$.
a) Igazoljuk, hogy $f$ bijekció a $[0, \infty)$ és $[1, \infty)$ intervallumok között, és írjuk fel az inverz függvény $f^{-1}(y)$ képletét expliciten.
b) Bizonyítsuk be közvetlenül az inverz függvény képletéből és az $\varepsilon$-$\delta$ definícióból, hogy $f^{-1}$ folytonos az $[1, \infty)$ halmazon.

# A 10. feladatlaphoz

## Gy99.1. feladat

a) Bizonyítsuk be a definíció alapján, hogy ha egy $f : \mathbb{R} \to \mathbb{R}$ függvény folytonos az $a \in \mathbb{R}$ pontban, akkor az $|f|$ és $f^2$ függvények is folytonosak az $a$ pontban.
b) Mutassuk meg, hogy ha $f$ folytonos $a$-ban és $f(a) > 0$, akkor a $g(x) = \sqrt{f(x)}$ függvény is folytonos az $a$ pontban.

## Gy99.2. feladat

a) Mutassuk meg, hogy az $|f|$ függvény folytonosságából nem következik $f$ folytonossága (adjunk ellenpéldát).
b) Bizonyítsuk be, hogy ha $f : \mathbb{R} \to \mathbb{R}$ folytonos az $a$ pontban, akkor a $g(x) = \sqrt[3]{f(x)}$ függvény is folytonos az $a$ pontban, függetlenül attól, hogy $f(a)$ pozitív, nulla vagy negatív.

## Gy100.1. feladat

Legyenek $f, g : \mathbb{R} \to \mathbb{R}$ folytonos függvények az $a \in \mathbb{R}$ pontban.
a) Igazoljuk a következő algebrai azonosságot:
$$\min\{f(x), g(x)\} = \frac{f(x) + g(x) - |f(x) - g(x)|}{2},$$
és ebből vezessük le, hogy a $\min\{f, g\}$ függvény folytonos az $a$ pontban.
b) Igazoljuk, hogy az $f^-(x) = \max\{-f(x), 0\}$ negatív részfüggvény folytonos az $a$ pontban, és írjuk fel $f$-et az $f^+ = \max\{f, 0\}$ pozitív rész és az $f^-$ különbségeként.

## Gy100.2. feladat

Legyenek $f_1, f_2, \dots, f_n : \mathbb{R} \to \mathbb{R}$ folytonos függvények az $a \in \mathbb{R}$ pontban.
a) Bizonyítsuk be teljes indukcióval, hogy az $M_n(x) = \max\{f_1(x), f_2(x), \dots, f_n(x)\}$ függvény is folytonos $a$-ban.
b) Legyen $f(x) = \max\{x, x^2, x^3\}$. Írjuk fel $f(x)$ explicit formuláját a valós számegyenes különböző szakaszain, és igazoljuk, hogy $f$ folytonos $\mathbb{R}$-en.

## Gy101.1. feladat

Legyen $f : \mathbb{R} \to \mathbb{R}$ folytonos függvény, amely kielégíti a Cauchy-féle additív függvényegyenletet:
$$f(x + y) = f(x) + f(y) \quad \forall x, y \in \mathbb{R}.$$
a) Bizonyítsuk be, hogy $f(0) = 0$, és $f(n \cdot x) = n \cdot f(x)$ minden $n \in \mathbb{Z}$ esetén.
b) Igazoljuk, hogy $f(r \cdot x) = r \cdot f(x)$ minden racionális $r \in \mathbb{Q}$ esetén.
c) A folytonosság felhasználásával mutassuk meg, hogy létezik olyan $c \in \mathbb{R}$ konstans, amelyre $f(x) = c \cdot x$ minden $x \in \mathbb{R}$-re.

## Gy101.2. feladat

a) Határozzuk meg az összes olyan folytonos $g : \mathbb{R} \to \mathbb{R}$ függvényt, amely kielégíti a $g(x + y) = g(x) \cdot g(y)$ egyenletet minden $x, y \in \mathbb{R}$ esetén, és $g$ nem azonosan nulla.
b) Határozzuk meg az összes olyan folytonos $h : (0, \infty) \to \mathbb{R}$ függvényt, amelyre $h(x \cdot y) = h(x) + h(y)$ minden $x, y > 0$ esetén.

## Gy102.1. feladat

Legyen $f : [a, b] \to \mathbb{R}$ monoton növekvő függvény.
a) Mutassuk meg, hogy minden $x_0 \in (a, b)$ belső pontban léteznek a véges egyoldali határértékek, és fennáll az
$$f(x_0 - 0) \le f(x_0) \le f(x_0 + 0)$$
egyenlőtlenség.
b) Bizonyítsuk be, hogy $f$-nek kizárólag legfeljebb elsőfajú szakadása (ugrásszakadása) lehet, és a szakadási pontok halmaza legfeljebb megszámlálható.

## Gy102.2. feladat

a) Konstruáljunk olyan szigorúan monoton növekvő $f : [0, 1] \to \mathbb{R}$ függvényt, amelynek megszámlálhatóan végtelen sok szakadási pontja van.
b) Igaz-e, hogy egy tetszőleges (nem feltétlenül monoton) $f : \mathbb{R} \to \mathbb{R}$ függvény elsőfajú szakadási pontjainak halmaza mindig legfeljebb megszámlálható?

## Gy103.1. feladat

a) Mutassuk meg, hogy az $f(x) = x + 2\sin x$ függvény folytonos a $[0, \infty)$ félegyenesen, $\lim\limits_{x\to\infty} f(x) = +\infty$, de $f$ egyetlen $[K, \infty)$ alakú félegyenesen sem monoton.
b) Konstruáljunk olyan folytonos $g : [0, \infty) \to \mathbb{R}$ függvényt, amelyre $\lim\limits_{x\to\infty} g(x) = +\infty$, és $g(x) = 0$ megszámlálhatóan végtelen sok pontban.

## Gy103.2. feladat

a) Legyen $f : [0, \infty) \to \mathbb{R}$ folytonos függvény, amelyre $\lim\limits_{x\to\infty} f(x) = 0$. Bizonyítsuk be, hogy $f$ korlátos a $[0, \infty)$ félegyenesen, és ha létezik olyan $x_0 \ge 0$, amelyre $f(x_0) > 0$, akkor $f$ felveszi a maximumát $[0, \infty)$-en.
b) Adjunk példát olyan folytonos $g : [0, \infty) \to \mathbb{R}$ függvényre, amelyre $\lim\limits_{x\to\infty} g(x) = 0$, de $g$ nem veszi fel a maximumát.

## Gy104.1. feladat

a) Bizonyítsuk be, hogy ha egy $f : \mathbb{R} \to \mathbb{R}$ konvex függvény felülről korlátos, akkor $f$ konstans függvény.
b) Igaz-e az állítás, ha $\mathbb{R}$ helyett a $(0, \infty)$ félegyenesen tekintünk felülről korlátos és konvex függvényt?

## Gy104.2. feladat

Legyen $f : \mathbb{R} \to \mathbb{R}$ konvex függvény.
a) Mutassuk meg, hogy ha létezik a véges $\lim\limits_{x\to+\infty} f(x) = L \in \mathbb{R}$ határérték, akkor $f$ monoton csökkenő $\mathbb{R}$-en.
b) Igaz-e, hogy ha egy $f : \mathbb{R} \to \mathbb{R}$ konvex függvény alulról korlátos, akkor konstans? Adjunk konkrét példákat!

## Gy105.1. feladat

Tekintsük a $2x^5 + 5x^3 + 2x - 3 = 0$ egyenletet.
a) Bizonyítsuk be a Bolzano-tétel (középértéktétel) segítségével, hogy az egyenletnek létezik valós megoldása a $(0, 1)$ nyílt intervallumban.
b) Mutassuk meg, hogy az egyenletnek a teljes $\mathbb{R}$-en pontosan egy valós gyöke van.

## Gy105.2. feladat

a) Bizonyítsuk be, hogy minden páratlan fokú valós együtthatós polinomnak létezik legalább egy valós gyöke.
b) Mutassuk meg, hogy a $\cos x = x$ egyenletnek létezik valós megoldása, és ez a megoldás a $\left(0, \frac{\pi}{2}\right)$ intervallumba esik, továbbá a teljes $\mathbb{R}$-en egyértelmű.

## Gy106.1. feladat

a) Legyen $f : [a, b] \to \mathbb{R}$ folytonos függvény, és legyenek $x_1, x_2, x_3 \in [a, b]$ tetszőleges pontok. Bizonyítsuk be, hogy létezik olyan $c \in [a, b]$, amelyre:
$$f(c) = \frac{f(x_1) + 2f(x_2) + 3f(x_3)}{6}.$$
b) Általánosítsuk az állítást: ha $x_1, x_2, \dots, x_n \in [a, b]$ és a $p_1, p_2, \dots, p_n \ge 0$ súlyokra $\sum_{i=1}^n p_i = 1$, akkor létezik olyan $c \in [a, b]$, amelyre:
$$f(c) = \sum_{i=1}^n p_i f(x_i).$$

## Gy106.2. feladat

Egy futó 1 óra alatt pontosan 12 kilométert tesz meg egyenes pályán úgy, hogy az elmozdulás-idő függvénye folytonos.
a) Bizonyítsuk be, hogy a futás során létezik olyan félórás (30 perces) egybefüggő időtartam, amely alatt a futó pontosan 6 kilométert tett meg.
b) Általánosítsuk: tetszőleges $n \in \mathbb{N}$ esetén van olyan $\frac{1}{n}$ órás intervallum, amely alatt a futó pontosan $\frac{12}{n}$ kilométert futott.

## Gy107.1. feladat

a) Legyen $f : [0, 1] \to [0, 1]$ folytonos függvény. Bizonyítsuk be a Bolzano-tétel segítségével, hogy $f$-nek létezik fixpontja, azaz létezik olyan $c \in [0, 1]$, amelyre $f(c) = c$.
b) Igazoljuk, hogy létezik olyan $d \in [0, 1]$ pont is, amelyre $f(d) = d^2$.

## Gy107.2. feladat

Legyenek $f, g : [a, b] \to [a, b]$ folytonos függvények, és tegyük fel, hogy $f(a) \le g(a)$ és $f(b) \ge g(b)$.
a) Bizonyítsuk be, hogy a két függvény grafikonja metszi egymást, azaz létezik olyan $c \in [a, b]$, amelyre $f(c) = g(c)$.
b) Mutassuk meg, hogy ha $f$ szigorúan monoton növekvő és $g$ szigorúan monoton csökkenő, akkor a metszéspont egyértelmű.

## Gy108.1. feladat

a) Bizonyítsuk be, hogy ha egy $f : [a, b] \to \mathbb{R}$ folytonos függvény injektív, akkor szükségképpen szigorúan monoton.
b) Adjunk példát olyan intervallumon értelmezett injektív függvényre, amely nem monoton (miért nem mond ez ellent az a) rész állításának?).

## Gy108.2. feladat

Legyen $f : [a, b] \to \mathbb{R}$ folytonos, nem konstans függvény, amelyre $f(a) = f(b)$.
a) Bizonyítsuk be, hogy $f$ nem injektív, és van olyan $y_0 \in \mathbb{R}$ érték, amelyet $f$ legalább kétszer vesz fel az $[a, b]$ intervallumban.
b) Mutassuk meg, hogy létezik olyan $c \in (a, b)$ belső pont, amelyben $f$-nek lokális szélsőértéke van.

## Gy109.1. feladat

Egy túrázó reggel 8 órakor indul a hegy lábától egy hegyi ösvényen felfelé, és este 18 órakor ér fel a hegycsúcsra. Éjszaka fent alszik, majd másnap reggel 8 órakor elindul lefelé ugyanezen az ösvényen, és este 18 órakor ér vissza a hegy lábához. (A mozgása során meg-megállhat, sebessége változhat, de a helyzete az idő folytonos függvénye.)
a) Bizonyítsuk be, hogy létezik a napnak egy olyan időpontja (óra, perc, másodperc pontossággal), amikor a túrázó mindkét napon pontosan az ösvény ugyanazon pontján tartózkodott.
b) Igaz marad-e az állítás, ha a túrázó a lefelé utat rövidebb idő alatt teszi meg (pl. reggel 8-tól délután 14 óráig)?

## Gy109.2. feladat

a) Legyen $f : [0, 1] \to [0, 1]$ folytonos függvény. Bizonyítsuk be, hogy létezik olyan $c \in [0, 1]$, amelyre $f(c) = 1 - c^2$.
b) Legyen $f : [0, 2] \to \mathbb{R}$ folytonos függvény, amelyre $f(0) = f(2)$. Mutassuk meg, hogy létezik olyan $c \in [0, 1]$, amelyre $f(c + 1) = f(c)$ (1 hosszúságú vízszintes húr létezése).

## Gy110.1. feladat

Tekintsük az alábbi esetenként definiált függvényt:
$$f(x) = \begin{cases} \sin\left(\frac{1}{x}\right), & \text{ha } x \ne 0, \\ 0, & \text{ha } x = 0. \end{cases}$$
a) Mutassuk meg, hogy $f$ nem folytonos a $0$ pontban.
b) Bizonyítsuk be, hogy $f$ ennek ellenére rendelkezik a Darboux-tulajdonsággal (középértéktulajdonsággal) a teljes $\mathbb{R}$-en, azaz bármely intervallum $f$ általi képe intervallum!

## Gy110.2. feladat

a) Mutassuk meg, hogy a deriváltfüggvények mindig rendelkeznek a Darboux-tulajdonsággal, még akkor is, ha nem folytonosak (Darboux tétele deriváltakra).
b) Bizonyítsuk be, hogy ha egy $f : [a, b] \to \mathbb{R}$ függvény Darboux-tulajdonságú és injektív, akkor $f$ szükségképpen szigorúan monoton és folytonos.

