# Analízis 1 – 10. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 99. feladat

Bizonyítsuk be, hogy ha $f$ folytonos egy pontban, akkor $|f|$ is folytonos ugyanitt. Fordítva, $|f|$ folytonosságából következik-e $f$ folytonossága?

**Megoldás.**

**$f$ folytonos $\Rightarrow$ $|f|$ folytonos.** A fordított háromszög-egyenlőtlenség szerint
$$\big||f(x)| - |f(a)|\big| \le |f(x) - f(a)|.$$
Ha $\varepsilon > 0$-hoz $\delta$ olyan, hogy $|x - a| < \delta$, $x \in D(f)$ esetén $|f(x) - f(a)| < \varepsilon$, akkor ugyanez a $\delta$ jó $|f|$-re is. $\blacksquare$

**A megfordítás nem igaz.** Legyen
$$f(x) = \begin{cases} 1 & \text{ha } x \ge 0, \\ -1 & \text{ha } x < 0. \end{cases}$$
Ekkor $|f| \equiv 1$ mindenhol folytonos, de $f$ a $0$-ban nem folytonos ($f(-\frac1n) = -1 \not\to 1 = f(0)$). (Sőt, $f(x) = 1$, ha $x \in \mathbb{Q}$, és $-1$ különben: ez sehol sem folytonos, $|f|$ pedig konstans.)

(Egy esetben mégis igaz a megfordítás: ha $f(a) = 0$. Ekkor $|f(x) - f(a)| = \big||f(x)| - |f(a)|\big|$, így $|f|$ folytonossága $a$-ban éppen $f$ folytonossága.)

::: elmelet
**Elméleti háttér — kompozíció és folytonosság; mit őriz meg a $|\cdot|$.**

*Kompozíció.* Ha $f$ folytonos $a$-ban és $h$ folytonos $f(a)$-ban, akkor $h \circ f$ folytonos $a$-ban. *Bizonyítás:* $\varepsilon$-hoz $h$ folytonossága ad $\eta$-t ($|u - f(a)| < \eta \Rightarrow |h(u) - h(f(a))| < \varepsilon$), $\eta$-hoz $f$ folytonossága ad $\delta$-t ($|x - a| < \delta \Rightarrow |f(x) - f(a)| < \eta$). A $h(u) = |u|$ esetben $\eta = \varepsilon$, mert $|u|$ 1-Lipschitz (fordított háromszög-egyenlőtlenség).

*Lipschitz-függvények.* Ha $|h(u) - h(v)| \le L|u - v|$, akkor $h \circ f$ minden olyan pontban folytonos, ahol $f$, és $\delta$ a $\frac{\varepsilon}{L}$-hez tartozó $f$-beli $\delta$. Ilyen az $|\cdot|$ ($L = 1$), a $\max(\cdot, 0)$, a $\sin$ és a $\cos$ ($L = 1$).

*A megfordítás és a „$0$ pont”.* A megfordítás általában hamis, mert $|\cdot|$ nem injektív. Ott viszont igaz, ahol $f(a) = 0$: az $|f(x) - 0| = ||f(x)| - 0|$ azonosság miatt a két folytonosság ugyanazt jelenti. Más pontokban is igaz, ha tudjuk, hogy $f$ egy környezetben állandó előjelű (ott $f = \pm|f|$). A tanulság: $|f|$ folytonossága csak az előjelváltások helyén „hallgat el” információt.

*A $\pm 1$ értékű Dirichlet-típusú példa.* $f = 2D - 1$ sehol sem folytonos, $|f| \equiv 1$ mindenhol az. Ez a legélesebb ellenpélda: a kompozíció egy *mindenhol* szakadó függvényből *mindenhol* folytonosat csinál.

*Kapcsolat a pozitív és negatív részhez.* $f^+ = \max(f, 0)$ és $f^- = \max(-f, 0)$; $f = f^+ - f^-$ és $|f| = f^+ + f^-$. A 100. feladat szerint ezek folytonosak, ha $f$ az — ezt az integrálelméletben (a Lebesgue-integrál felépítésénél) gyakran használjuk.
:::

## 100. feladat

Bizonyítsuk be, hogy ha $f$ és $g$ folytonosak az $a$ pontban, akkor $\max(f, g)$ és $\min(f, g)$ is azok.

**Megoldás.**

Minden $u, v \in \mathbb{R}$-re
$$\max(u, v) = \frac{u + v + |u - v|}{2}, \qquad \min(u, v) = \frac{u + v - |u - v|}{2}$$
(ha $u \ge v$, a számláló $2u$, illetve $2v$; ha $u < v$, fordítva). Így
$$\max(f, g) = \frac{f + g + |f - g|}{2}, \qquad \min(f, g) = \frac{f + g - |f - g|}{2}.$$
$f - g$ folytonos $a$-ban, a 99. feladat szerint $|f - g|$ is, és folytonos függvények összege, különbsége, konstansszorosa folytonos. $\blacksquare$

::: elmelet
**Elméleti háttér — a $\max$ és $\min$ algebrai alakja; hálóműveletek.**

*A képlet eredete.* Két szám számtani közepe $\frac{u + v}{2}$, a fél távolságuk $\frac{|u - v|}{2}$; a nagyobbik szám a közép plusz a fél távolság, a kisebbik a közép mínusz a fél távolság:
$$\max(u, v) = \frac{u + v}{2} + \frac{|u - v|}{2}, \qquad \min(u, v) = \frac{u + v}{2} - \frac{|u - v|}{2}.$$

*A folytonosság öröklődése.* Mivel a $\max$ és a $\min$ a $+$, $-$, $\cdot\frac12$ és $|\cdot|$ műveletekből épül fel, és ezek mind „folytonosságot őrzők”, a $\max(f, g)$ és $\min(f, g)$ is folytonos, ahol $f$ és $g$ az. Indukcióval: véges sok folytonos függvény maximuma és minimuma folytonos.

*Végtelen sok függvény?* Végtelen sok folytonos függvény szuprémuma már nem feltétlenül folytonos: $f_n(x) = \min(1, nx)$ a $[0, 1]$-en, $\sup_n f_n = 1$ az $x > 0$ helyeken és $0$ az $x = 0$-ban — szakad. (Folytonos függvények szuprémuma mindig **alulról félig folytonos**.)

*Lipschitz-tulajdonság.* $|\max(u, v) - \max(u', v')| \le \max(|u - u'|, |v - v'|)$, vagyis a $\max$ egy „1-Lipschitz” kétváltozós függvény; ez a becslés közvetlenül is adja a folytonosságot.

*Alkalmazások.* A **vágás**: $\max(m, \min(f, M))$ az $f$-et az $[m, M]$ sávba „vágja”, és megőrzi a folytonosságot. Az **abszolút érték** maga is $\max(f, -f)$. Darabonként lineáris függvények (töröttvonalak) mindig felírhatók lineáris függvények $\max$-$\min$ kombinációjaként — így folytonosságuk is innen jön.
:::

## 101. feladat

Bizonyítsuk be, hogy ha $f, g \in C[0, 1]$ és $\forall x \in \mathbb{Q} \cap [0, 1]$-re $f(x) = g(x)$, akkor $\forall x \in [0, 1]$-re $f(x) = g(x)$.

**Megoldás.**

Legyen $x \in [0, 1]$ tetszőleges. A racionális számok sűrűk, ezért van olyan $r_n \in \mathbb{Q} \cap [0, 1]$ sorozat, amelyre $r_n \to x$. (Pl. $r_n = [nx]/n$: $0 \le r_n \le x$ és $x - \frac1n < r_n \le x$.) $f$ és $g$ folytonos $x$-ben, így az átviteli elv szerint
$$f(x) = \lim_{n \to \infty} f(r_n) = \lim_{n \to \infty} g(r_n) = g(x),$$
mert $f(r_n) = g(r_n)$ minden $n$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — sűrű halmaz és folytonos függvények egyértelműsége.**

*A tétel.* Ha $f, g$ folytonosak egy $I$ intervallumon, és egy $I$-ben sűrű $S$ halmazon egyenlők, akkor $I$-n mindenhol egyenlők. Ekvivalensen: egy folytonos függvény, amely egy sűrű halmazon $0$, azonosan $0$.

*A bizonyítás két eleme.*

1. **Sűrűség $\Rightarrow$ approximáló sorozat:** minden $x \in I$-hez van $r_n \in S$, $r_n \to x$. A racionálisokra explicit is: $r_n = \frac{[nx]}{n}$, hiszen $nx - 1 < [nx] \le nx$ miatt $x - \frac1n < r_n \le x$.
2. **Folytonosság $\Rightarrow$ sorozatos megőrzés:** $f(r_n) \to f(x)$ (átviteli elv).

*Következmények és alkalmazások.*

- **Függvényegyenletek:** ha $f$ folytonos és $f(x + y) = f(x) + f(y)$ (Cauchy-egyenlet), akkor előbb az egészekre, majd a racionálisokra $f(q) = qf(1)$ adódik, és a tétel szerint $f(x) = cx$ minden valós $x$-re. Folytonosság nélkül vannak „vad” megoldások is (kiválasztási axiómával).
- **A hatványozás kiterjesztése:** $a^x$-et először racionális $x$-re definiáljuk, majd valós $x$-re folytonos kiterjesztéssel; a tétel garantálja, hogy legfeljebb egy ilyen folytonos kiterjesztés van.
- **Számosság:** egy folytonos $\mathbb R \to \mathbb R$ függvényt a racionális pontokon felvett értékei (megszámlálhatóan sok szám) meghatároznak, ezért a folytonos függvények halmaza kontinuum számosságú — „sokkal kevesebb”, mint az összes függvényé.

*Miért kell a folytonosság?* A Dirichlet-függvény és a $0$ függvény a racionálisokon nem egyezik, de az irracionálisokon (ami szintén sűrű) igen — és mégis különbözők. A folytonosság nélkül egy sűrű halmazon felvett értékek semmit sem árulnak el a többiről.
:::

## 102. feladat

Tegyük fel, hogy $f$ monoton növő $[a, b]$-ben és minden $f(a)$ és $f(b)$ közötti értéket felvesz. Mutassuk meg, hogy $f \in C[a, b]$.

**Megoldás.**

**Jobbról folytonosság $c \in [a, b)$-ben.** Legyen $\varepsilon > 0$.

- Ha $f(c) = f(b)$, akkor a monotonitás miatt $f$ konstans $[c, b]$-n, így $c$-ben jobbról folytonos.
- Ha $f(c) < f(b)$, legyen $y = \min\{f(c) + \frac\varepsilon2,\ f(b)\}$. Ekkor $f(a) \le f(c) < y \le f(b)$, tehát a feltétel szerint van olyan $\xi \in [a, b]$, amelyre $f(\xi) = y$. Mivel $f(\xi) > f(c)$ és $f$ monoton nő, $\xi > c$. Legyen $\delta = \xi - c > 0$. Ha $c \le x < c + \delta$, akkor
$$f(c) \le f(x) \le f(\xi) = y < f(c) + \varepsilon.$$
  Tehát $|f(x) - f(c)| < \varepsilon$.

**Balról folytonosság $c \in (a, b]$-ben** ugyanígy, $y = \max\{f(c) - \frac\varepsilon2,\ f(a)\}$ választással: ha $f(c) = f(a)$, akkor $f$ konstans $[a, c]$-n; különben $f(a) \le y < f(c)$, a felvevő hely $\xi < c$, és $\xi < x \le c$ esetén $f(c) - \varepsilon < y = f(\xi) \le f(x) \le f(c)$.

Mindkét oldalról folytonos minden belső pontban, a végpontokban a megfelelő oldalról, tehát $f \in C[a, b]$. $\blacksquare$

(Szemléletesen: monoton függvénynek csak **ugrásos** szakadása lehet, és egy ugrás kihagy egy egész értékintervallumot. Ezt zárja ki a feltétel.)

::: elmelet
**Elméleti háttér — monoton függvények: féloldali határértékek, ugrások, Darboux-tulajdonság.**

*Féloldali határértékek létezése.* Ha $f$ monoton nő $I$-n és $c$ belső pont, akkor
$$f(c - 0) = \sup_{x < c} f(x), \qquad f(c + 0) = \inf_{x > c} f(x),$$
és $f(c - 0) \le f(c) \le f(c + 0)$. *Bizonyítás:* a $\{f(x) : x < c\}$ halmaz felülről korlátos ($f(c)$-vel), szuprémuma $s$; adott $\varepsilon$-hoz van $x_0 < c$, $f(x_0) > s - \varepsilon$, és a monotonitás miatt $x_0 < x < c$-re $s - \varepsilon < f(x) \le s$.

*A szakadások szerkezete.* Monoton függvény $c$-ben pontosan akkor folytonos, ha $f(c - 0) = f(c) = f(c + 0)$; különben **ugrás** van (elsőfajú szakadás), és az ugrás nagysága $f(c + 0) - f(c - 0) > 0$. Másodfajú szakadása monoton függvénynek nem lehet.

*Ugrás $\Rightarrow$ kihagyott értékek.* Ha $f(c) < f(c + 0)$, akkor az $(f(c), f(c + 0))$ intervallum értékeit $f$ nem veszi fel: $x \le c$-re $f(x) \le f(c)$, $x > c$-re $f(x) \ge f(c + 0)$. Ez a feladat érvelésének „belső magja”: a Darboux-tulajdonság kizárja az ugrásokat.

*Megszámlálható sok szakadás.* Az ugrások hézagai páronként diszjunkt nyílt intervallumok, mindegyikben van racionális szám, így egy monoton függvény szakadási helyeinek halmaza legfeljebb megszámlálható. (Lehet végtelen és sűrű is: $f(x) = \sum_{q_n < x} 2^{-n}$, ahol $(q_n)$ a racionálisok felsorolása — ez szigorúan nő, és pontosan a racionálisokban szakad.)

*Összefoglalva monoton $f : [a, b] \to \mathbb R$-re:* folytonos $\iff$ Darboux-tulajdonságú $\iff$ értékkészlete az $[f(a), f(b)]$ intervallum. Általános függvényekre az első implikáció ($\Rightarrow$, Bolzano) igaz, a második nem (110. feladat).
:::

## 103. feladat

Van-e olyan $(5, +\infty)$-en folytonos függvény, melyre $\lim\limits_{x \to 5+0} f(x) = +\infty$, de $f$ az 5 egyetlen pontozott jobboldali környezetében sem monoton.

**Megoldás.**

**Van.** Legyen
$$f(x) = \frac{1}{x - 5}\left(2 + \sin\frac{1}{x - 5}\right), \qquad x > 5.$$

- *Folytonos* $(5, \infty)$-en, mert folytonos függvények szorzata és kompozíciója.
- *$+\infty$-hez tart:* $2 + \sin(\dots) \ge 1$, ezért $f(x) \ge \frac{1}{x - 5} \to +\infty$, ha $x \to 5 + 0$.
- *Nem monoton* egyetlen $(5, 5 + \delta)$ környezetben sem. Legyen $t = \frac{1}{x - 5}$, ekkor $f = t(2 + \sin t)$, és $x \mapsto t$ szigorúan fogyó bijekció $(5, 5 + \delta) \to (\frac1\delta, \infty)$. Legyen $t_n = \frac\pi2 + 2n\pi$ és $s_n = \frac{3\pi}2 + 2n\pi$. Ekkor
$$t_n(2 + \sin t_n) = 3t_n = \tfrac{3\pi}2 + 6n\pi, \qquad s_n(2 + \sin s_n) = s_n = \tfrac{3\pi}2 + 2n\pi.$$
  $n \ge 1$-re $t_n < s_n < t_{n+1}$, és a hozzájuk tartozó függvényértékek: nagy, kicsi, nagy ($\tfrac{3\pi}2 + 6n\pi > \tfrac{3\pi}2 + 2n\pi < \tfrac{3\pi}2 + 6(n+1)\pi$). Adott $\delta$-hoz $n$-et elég nagynak választva $t_n > \frac1\delta$, így a megfelelő három $x$ pont $(5, 5 + \delta)$-ban van. Ott $f$ értékei fel-le-fel váltakoznak, tehát $f$ nem monoton.

::: elmelet
**Elméleti háttér — végtelen határérték, oszcilláció és „lokális” tulajdonságok.**

*A határérték mint „aszimptotikus” információ.* $\lim_{x\to 5+0}f(x) = +\infty$ azt jelenti, hogy minden $P$-hez van egy jobboldali félkörnyezet, ahol $f > P$. Ez a függvény *nagyságáról* szól, nem a *változásáról*: a monotonitás, a deriválhatóság, a konvexitás mind független tőle.

*A konstrukció elve: „alsó becslés $\times$ oszcilláló, korlátos, pozitív tényező”.* Ha $g(x) \to +\infty$ és $1 \le h(x) \le 3$, akkor $g(x)h(x) \ge g(x) \to +\infty$. A $h(x) = 2 + \sin\frac{1}{x - 5}$ minden környezetben végtelen sokszor oszcillál $1$ és $3$ között, és a szorzat ezt az oszcillációt — felnagyítva — örökli. A $t = \frac{1}{x - 5}$ helyettesítés a „$x \to 5 + 0$” vizsgálatot „$t \to +\infty$”-re alakítja, ahol az oszcilláció szokásos periodikus.

*Nem monotonitás igazolása.* Egy függvény egy intervallumon **nem monoton**, ha van benne $x_1 < x_2 < x_3$, amelyre $f(x_2) > \max(f(x_1), f(x_3))$ vagy $f(x_2) < \min(f(x_1), f(x_3))$ (egy „csúcs” vagy „völgy”). A feladatban ilyen hármasok minden félkörnyezetben vannak.

*Kapcsolódó jelenségek.*

- $x\sin\frac1x \to 0$, de a $0$ egyetlen környezetében sem monoton;
- $x^2\sin\frac1x$ ($0$-ban $0$) differenciálható a $0$-ban ($f'(0) = 0$), mégsem monoton semmilyen környezetben — tehát $f'(0) > 0$ sem garantálná a lokális monotonitást, ha $f'$ nem folytonos (vö. $x + 2x^2\sin\frac1x$);
- folytonos, sehol sem monoton függvények is léteznek (Weierstrass sehol sem differenciálható függvénye).

*Tanulság.* A határérték-definíció „$\forall$ korlát $\exists$ környezet” szerkezete semmit sem mond a környezeten belüli viselkedésről. Ha monotonitásra van szükség (például integrálok becslésénél), azt külön kell igazolni.
:::

## 104. feladat

a) Legyen $f$ konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = \infty$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

b\*) Legyen $f$ szigorúan konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = \infty$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

c) Legyen $f$ konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = 0$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

**Megoldás.**

**a) Igen.** $f(x) = -x$ lineáris, tehát konvex (a konvexitási egyenlőtlenség egyenlőséggel teljesül), és $\lim_{-\infty} f = +\infty$, $\lim_{+\infty} f = -\infty$.

**b) Igen.** Legyen $f(x) = \sqrt{x^2 + 1} - 2x$.

- *Határértékek:* $x < 0$-ra $f(x) \ge -2x \to +\infty$ ($x \to -\infty$). $x \ge 0$-ra $\sqrt{x^2 + 1} \le x + 1$ (négyzetre emelve $x^2 + 1 \le x^2 + 2x + 1$), így $f(x) \le 1 - x \to -\infty$ ($x \to +\infty$).
- *Szigorú konvexitás:* a $-2x$ lineáris tag nem változtat rajta, elég $h(x) = \sqrt{x^2 + 1}$-re belátni. Legyen $x \ne y$, $\lambda \in (0, 1)$, $\mu = 1 - \lambda$. Mindkét oldal pozitív, ezért elég a négyzeteket összehasonlítani. Az $1 = (\lambda + \mu)^2$ felírással
$$h(\lambda x + \mu y)^2 = \lambda^2 x^2 + \mu^2 y^2 + 2\lambda\mu xy + \lambda^2 + \mu^2 + 2\lambda\mu,$$
$$\big(\lambda h(x) + \mu h(y)\big)^2 = \lambda^2(x^2 + 1) + \mu^2(y^2 + 1) + 2\lambda\mu\sqrt{(x^2 + 1)(y^2 + 1)}.$$
  A különbség $2\lambda\mu\big[\sqrt{(x^2 + 1)(y^2 + 1)} - (xy + 1)\big]$. Mivel $(x^2 + 1)(y^2 + 1) - (xy + 1)^2 = (x - y)^2 > 0$, a gyök nagyobb $|xy + 1| \ge xy + 1$-nél, tehát a különbség pozitív: $h(\lambda x + \mu y) < \lambda h(x) + \mu h(y)$.

(Ha az exponenciális függvény már ismert: $f(x) = e^{-x} - x$ is jó.)

**c) Nem.** Megmutatjuk, hogy ekkor $f$ monoton növő és $f \ge 0$.

Konvex függvényre $z < x < y$ esetén a húrok meredeksége nő:
$$\frac{f(x) - f(z)}{x - z} \le \frac{f(y) - f(x)}{y - x}.$$
Tegyük fel, hogy valamely $x < y$-ra $f(x) > f(y)$, azaz $m = \frac{f(x) - f(y)}{y - x} > 0$. Ekkor minden $z < x$-re $\frac{f(x) - f(z)}{x - z} \le -m$, vagyis
$$f(z) \ge f(x) + m(x - z) \xrightarrow{z \to -\infty} +\infty,$$
ellentmondásban $\lim_{-\infty} f = 0$-val. Tehát $f$ monoton növő. Ekkor $z < x$-re $f(z) \le f(x)$, és $z \to -\infty$-nel $0 \le f(x)$. Így $f \ge 0$, és $\lim_{+\infty} f = -\infty$ lehetetlen. (Sőt, $\lim_{+\infty} f$ létezik, és $[0, \infty]$-beli.)

::: elmelet
**Elméleti háttér — konvex függvények globális viselkedése.**

*A három húr lemma.* Konvex $f$-re $z < x < y$ esetén
$$\frac{f(x) - f(z)}{x - z} \le \frac{f(y) - f(z)}{y - z} \le \frac{f(y) - f(x)}{y - x}.$$
Következmény: a $x \mapsto \frac{f(x) - f(x_0)}{x - x_0}$ meredekség monoton nő, így konvex függvénynek minden belső pontban léteznek egyoldali deriváltjai, és $f'_-(x) \le f'_+(x)$.

*Konvex függvény alakja a végtelenben.* Egy $\mathbb{R}$-en konvex függvény a következő három típus egyike:

1. monoton nő (ha minden húr meredeksége $\ge 0$);
2. monoton fogy;
3. előbb fogy, aztán nő (van minimumhelye vagy minimumtartománya).

Ha valahol negatív meredekségű húr van, akkor attól balra a függvény legalább lineárisan nő a $-\infty$ felé haladva ($f(z) \ge f(x) + m(x - z)$): ez a c) rész kulcsa. Ha tehát $\lim_{-\infty}f$ véges, nincs negatív meredekség, és $f$ monoton nő.

*Konvex függvény és érintő.* Konvex függvény grafikonja minden támasztóegyenese (érintője) **felett** van: $f(x) \ge f(x_0) + m(x - x_0)$ minden $m \in [f'_-(x_0), f'_+(x_0)]$-ra. Ezért konvex függvény legalább egy lineáris függvénnyel alulról becsülhető — de ez a lineáris függvény lehet csökkenő, így $+\infty$-ben $-\infty$-hez tarthat (a)–b) rész).

*Szigorú konvexitás bizonyítása.* A b) részben a négyzetre emelés ötlete: mindkét oldal pozitív, így az egyenlőtlenség a négyzetek közötti egyenlőtlenséggel ekvivalens, és az a **Cauchy–Schwarz-egyenlőtlenségre** vezet: $(x^2 + 1)(y^2 + 1) \ge (xy + 1)^2$, egyenlőség pontosan $x = y$-ra. Geometriailag $\sqrt{x^2 + 1}$ a $(x, 1)$ vektor hossza, és a konvexitás a háromszög-egyenlőtlenség: $\|\lambda u + \mu v\| \le \lambda\|u\| + \mu\|v\|$ (minden norma konvex). Ha a deriválás már ismert: $h''(x) = (x^2 + 1)^{-3/2} > 0$.

*Lineáris tag hozzáadása.* $f$ (szigorúan) konvex $\iff$ $f + (ax + b)$ (szigorúan) konvex — a konvexitás csak a „görbületről” szól, egy lineáris tag pedig nem görbít.
:::

## 105. feladat

Mutassuk meg, hogy az $x^7 - 3x^2 + 5 = 0$ egyenletnek van valós gyöke.

**Megoldás.**

$p(x) = x^7 - 3x^2 + 5$ polinom, tehát mindenhol folytonos.
$$p(-1) = -1 - 3 + 5 = 1 > 0, \qquad p(-2) = -128 - 12 + 5 = -135 < 0.$$
A Bolzano-tétel szerint van $c \in (-2, -1)$, amelyre $p(c) = 0$. $\blacksquare$

(Általában: minden páratlan fokszámú valós polinomnak van valós gyöke, mert $\pm\infty$-ben ellentétes előjelű végtelenhez tart.)

::: elmelet
**Elméleti háttér — a Bolzano-tétel és a gyökök lokalizálása.**

*Bolzano-tétel.* Ha $f \in C[a, b]$ és $f(a)f(b) < 0$, akkor van $c \in (a, b)$, $f(c) = 0$. *Bizonyítás (intervallumfelezés):* legyen $[a_0, b_0] = [a, b]$; ha $f$ a felezőpontban $0$, kész; különben azt a felét tartjuk meg, amelynek végpontjaiban $f$ előjele különböző. A Cantor-tulajdonság adta $c$ közös pontra $f(a_n) \to f(c)$ és $f(b_n) \to f(c)$, valamint $f(a_n)f(b_n) < 0$, így $f(c)^2 \le 0$, azaz $f(c) = 0$.

*Numerikus módszer.* A bizonyítás egyben algoritmus (**bisection**): $n$ lépés után a gyököt $\frac{b - a}{2^n}$ pontossággal ismerjük. A feladatban: $p(-1) = 1$, $p(-2) = -135$, $p(-1{,}5) \approx -17{,}1 - 6{,}75 + 5 < 0$, tehát a gyök a $(-1{,}5;\ -1)$-ben van; $p(-1{,}25) \approx -4{,}77 - 4{,}69 + 5 < 0$, így $(-1{,}25;\ -1)$-ben; és így tovább.

*Páratlan fokú polinomok.* Ha $\deg p = n$ páratlan, a főegyüttható pozitív, akkor $p(x) \to +\infty$ ($x \to \infty$) és $p(x) \to -\infty$ ($x \to -\infty$), így van $x_1$, ahol $p < 0$, és $x_2$, ahol $p > 0$; a Bolzano-tétel szerint van valós gyök. Páros fokra ez nem igaz ($x^2 + 1$).

*Hány gyök van?* A Bolzano-tétel csak létezést ad. A gyökök számához más eszköz kell: monotonitás (szigorúan monoton függvénynek legfeljebb egy gyöke van), a derivált előjelvizsgálata, vagy a Descartes-féle előjelszabály. Itt $p'(x) = 7x^6 - 6x$, és a vizsgálat azt mutatja, hogy $p$-nek pontosan egy valós gyöke van.

*Miért fontos a folytonosság és az intervallum?* $f(x) = \frac1x$ a $[-1, 1]$ végpontjain ellentétes előjelű, mégsincs gyöke (nem folytonos a $0$-ban). A $\mathbb{Q}$-n értelmezett $x^2 - 2$ a $[1, 2] \cap \mathbb Q$ végpontjain ellentétes előjelű, és nincs racionális gyöke — a Bolzano-tétel a valós számok teljességén múlik.
:::

## 106. feladat

Tegyük föl, hogy $f \in C[a, b]$ és $x_1, \dots, x_n \in [a, b]$. Mutassuk meg, hogy $\exists\, c \in [a, b]$, hogy $f(c) = \dfrac{f(x_1) + \dots + f(x_n)}{n}$.

**Megoldás.**

Legyen $A = \frac{f(x_1) + \dots + f(x_n)}{n}$, és válasszunk indexeket úgy, hogy $f(x_i) = \min_k f(x_k)$ és $f(x_j) = \max_k f(x_k)$. A számtani közép a legkisebb és a legnagyobb érték között van:
$$f(x_i) \le A \le f(x_j).$$
Ha $x_i = x_j$, akkor minden érték egyenlő, és $c = x_i$ jó. Különben $f$ folytonos az $x_i$ és $x_j$ által határolt zárt intervallumon, amely része $[a, b]$-nek. A Bolzano-tétel (közbülsőérték-tétel) szerint ott felveszi az $f(x_i)$ és $f(x_j)$ közötti $A$ értéket. $\blacksquare$

::: elmelet
**Elméleti háttér — a közbülsőérték-tétel és az átlagérték.**

*Közbülsőérték-tétel.* Ha $f \in C[\alpha, \beta]$ és $y$ az $f(\alpha)$ és $f(\beta)$ között van, akkor van $c \in [\alpha, \beta]$, $f(c) = y$. (A Bolzano-tétel az $f - y$ függvényre.) Következmény a Weierstrass-tétellel együtt: **folytonos függvény korlátos zárt intervallumon felvett értékeinek halmaza a $[\min f, \max f]$ intervallum**.

*Az átlag a szélsők között van.* Bármely $u_1, \dots, u_n$ számokra $\min u_i \le \frac{u_1 + \dots + u_n}{n} \le \max u_i$, sőt súlyozott átlagra is ($\sum p_iu_i$, $p_i \ge 0$, $\sum p_i = 1$). Így bármely súlyozott átlag is felvétetik: van $c$, amelyre $f(c) = \sum p_if(x_i)$.

*Az integrál középértéktétele.* Ennek folytonos változata: ha $f \in C[a, b]$, akkor van $c \in [a, b]$, amelyre
$$f(c) = \frac{1}{b - a}\int_a^b f(x)\,dx,$$
mert az integrálközép is a minimum és a maximum között van. A feladat ennek „diszkrét” előzménye: a függvényértékek átlagát a függvény valahol felveszi.

*Miért kell a folytonosság?* Az $f = \operatorname{sgn}$ a $[-1, 1]$-en a $-1$ és $1$ pontokban $-1$, illetve $1$, átlaguk $0$ — ezt ugyan felveszi ($c = 0$), de az $f(x) = 1$ ($x \ge 0$), $-1$ ($x < 0$) függvény a $0$ átlagot nem veszi fel. Ugrásos függvénynél az értékkészlet „lyukas” lehet.

*Általánosítás: összefüggő halmazok.* Folytonos függvény összefüggő halmazt összefüggő halmazba visz (topológiai alak). $\mathbb{R}$-ben az összefüggő halmazok éppen az intervallumok, így a közbülsőérték-tétel ennek speciális esete.
:::

## 107. feladat

Tegyük fel, hogy $f, g \in C[0, 1]$ és $(f(0) - g(0))(f(1) - g(1)) < 0$. Mutassuk meg, hogy az $f(x) = g(x)$ egyenletnek van megoldása a $(0, 1)$-ben.

**Megoldás.**

$h = f - g \in C[0, 1]$, és a feltétel szerint $h(0) \cdot h(1) < 0$. A Bolzano-tétel szerint van $c \in (0, 1)$, amelyre $h(c) = 0$, azaz $f(c) = g(c)$. ($c$ nem végpont, mert $h(0) \ne 0$ és $h(1) \ne 0$.) $\blacksquare$

::: elmelet
**Elméleti háttér — egyenletek megoldhatósága folytonossági érvekkel.**

*Visszavezetés zérushely-keresésre.* Az $f(x) = g(x)$ egyenlet megoldásai a $h = f - g$ zérushelyei. Ha $h$ folytonos és a két végpontban ellentétes előjelű, a Bolzano-tétel megoldást garantál a nyílt intervallumban. A grafikus jelentés: két folytonos grafikon, amelyek közül az egyik a bal végen fent, a jobb végen lent van, metszi egymást.

*Tipikus alkalmazások.*

- **Fixpont:** $f(x) = x$ (109. feladat): $h(x) = f(x) - x$.
- **Egyenlő magasság:** ha egy hegymászó reggel 8-kor indul és este 8-ra felér a csúcsra, másnap reggel 8-kor ugyanazon az úton lefelé indul, akkor van olyan időpont, amikor mindkét napon ugyanott volt ($h = $ a két nap pozícióinak különbsége).
- **Átellenes pontok:** az egyenlítő mentén mindig van két átellenes pont, ahol a hőmérséklet ugyanaz ($h(\theta) = T(\theta) - T(\theta + \pi)$, és $h(\theta + \pi) = -h(\theta)$).
- **Húrtétel:** ha $f \in C[0, 1]$ és $f(0) = f(1)$, akkor minden $n$-re van $x$, amelyre $f(x) = f(x + \frac1n)$ (a $g(x) = f(x + \frac1n) - f(x)$ értékeinek összege a $0, \frac1n, \dots$ pontokban $0$, így nem lehet mind azonos előjelű).

*Szigorú egyenlőtlenség a végpontokban.* A $(f(0) - g(0))(f(1) - g(1)) < 0$ feltétel kizárja, hogy a megoldás egy végpont legyen; ha csak $\le 0$ állna, a megoldás $[0, 1]$-ben lenne (esetleg a végpontban).

*Egyértelműség.* Ha $h$ ráadásul szigorúan monoton, pontosan egy megoldás van. Ez gyakran a deriváltból látszik ($h' > 0$), vagy abból, hogy $f$ nő és $g$ fogy.
:::

## 108. feladat

a) T.f.h. $f \in C[a, b]$. Mutassuk meg, hogy ha $f$ minden $R(f)$-beli értéket pontosan egyszer vesz fel, akkor szigorúan monoton.

b) Létezik-e $f \in C[a, b]$, mely minden $R(f)$-beli értéket pontosan kétszer vesz fel?

c) T.f.h. $f \in C[a, b]$. Mutassuk meg, hogy ha $f$ minden $R(f)$-beli értéket legfeljebb kétszer vesz fel, akkor három szigorúan monoton darabból áll.

**Megoldás.**

**a)** A feltétel szerint $f$ injektív.

*Lemma: ha $x < y < z$, akkor $f(y)$ szigorúan $f(x)$ és $f(z)$ között van.* A három érték injektivitás miatt különböző. Tegyük fel, hogy $f(y) > \max\{f(x), f(z)\}$, és legyen $\max\{f(x), f(z)\} < v < f(y)$. A Bolzano-tétel szerint $v$-t $f$ felveszi $(x, y)$-ban és $(y, z)$-ben is, ez két különböző hely – ellentmondás. Ugyanígy $f(y) < \min\{f(x), f(z)\}$ sem lehet.

Legyen most (pl.) $f(a) < f(b)$; a másik eset $-f$-re visszavezethető. Belátjuk, hogy $x < y$ esetén $f(x) < f(y)$.

- A lemma szerint minden $a < x < b$-re $f(a) < f(x) < f(b)$. Így ha $x = a$ vagy $y = b$, kész vagyunk.
- Ha $a < x < y$: a lemma az $(a, x, y)$ hármasra azt adja, hogy $f(x)$ szigorúan $f(a)$ és $f(y)$ között van. Mivel $f(a) < f(x)$, csak $f(x) < f(y)$ lehet. $\blacksquare$

**b) Nem létezik.** Tegyük fel, hogy $f$ ilyen. $f$ nem konstans (különben minden értéket végtelen sokszor venne fel), így a Weierstrass-tétel szerinti $m = \min f$ és $M = \max f$ különbözők. Mindkettőt pontosan két helyen veszi fel, ez négy különböző pont, közülük legfeljebb kettő végpont. Van tehát olyan szélsőértékhely, amely $(a, b)$-be esik. Feltehetjük, hogy ez maximumhely (különben $-f$-et nézzük), legyen ez $\xi$, a másik maximumhely $\eta$. Feltehetjük azt is, hogy $\eta > \xi$ (különben az $x \mapsto a + b - x$ tükrözést alkalmazzuk).

Mivel $M$-et csak $\xi$-ben és $\eta$-ban veszi fel, $f(a) < M$ ($a < \xi$), és a $w = \frac{\xi + \eta}2$ pontban is $f(w) < M$. Legyen
$$\max\{f(a), f(w)\} < y < M.$$
A Bolzano-tétel szerint $f$ felveszi $y$-t az $(a, \xi)$, a $(\xi, w)$ és a $(w, \eta)$ intervallumban is, ez három különböző hely – ellentmondás. $\blacksquare$

**c)** Belátjuk: vannak $a \le c_1 \le c_2 \le b$ pontok, hogy $f$ szigorúan monoton az $[a, c_1]$, $[c_1, c_2]$, $[c_2, b]$ intervallumokon (azaz legfeljebb három szigorúan monoton darabból áll).

*0. lépés.* $f$ semmilyen (nem elfajuló) részintervallumon sem konstans, különben ott egy értéket végtelen sokszor venne fel.

*1. lépés (öt pont).* Nincsenek olyan $x_1 < x_2 < x_3 < x_4 < x_5$ pontok, amelyekre $y_i = f(x_i)$ jelöléssel
$$y_1 < y_2 > y_3 < y_4 > y_5$$
(és $-f$-re alkalmazva: a fordított, $y_1 > y_2 < y_3 > y_4 < y_5$ minta sem lehetséges).

- Ha $y_1 < y_4$: legyen $\max\{y_1, y_3\} < v < \min\{y_2, y_4\}$. Ezt $f$ felveszi $(x_1, x_2)$-ben, $(x_2, x_3)$-ban és $(x_3, x_4)$-ben – háromszor.
- Ha $y_5 < y_2$: legyen $\max\{y_3, y_5\} < v < \min\{y_2, y_4\}$. Ezt felveszi $(x_2, x_3)$-ban, $(x_3, x_4)$-ben és $(x_4, x_5)$-ben – háromszor.
- Ha egyik sem: $y_2 \le y_5 < y_4 \le y_1 < y_2$, ellentmondás.

*2. lépés (legfeljebb két belső szélsőértékhely).* Legyen $T$ a $(a, b)$-beli lokális szélsőértékhelyek halmaza. Ha $t \in T$, akkor $f(t)$-t legfeljebb még egy helyen veszi fel, így $t$ egy kis pontozott környezetében $f(x) \ne f(t)$: a lokális szélsőérték **szigorú**. Tegyük fel, hogy $t_1 < t_2 < t_3 \in T$. Válasszunk $u_i < t_i < v_i$ pontokat olyan közel, hogy $v_1 < u_2$, $v_2 < u_3$, és $f(u_i), f(v_i) < f(t_i)$, ha $t_i$ maximumhely, illetve $>$, ha minimumhely. A
$$u_1 < t_1 < v_1 < u_2 < t_2 < v_2 < u_3 < t_3 < v_3$$
pontsorozatban a szomszédos értékek közötti „lépések” előjele minden $t_i$-nél szigorúan vált. (Ha két szomszédos érték egyenlő, pl. $f(v_1) = f(u_2)$, hagyjuk el $u_2$-t: a $v_1 \to t_2$ lépés előjele ugyanaz, mint az $u_2 \to t_2$ lépésé.) Legalább három előjelváltás van, tehát legalább négy azonos előjelű „szakasz”. Ezek végpontjait véve öt pontot kapunk szigorúan váltakozó értékekkel – ez az 1. lépés szerint lehetetlen. Tehát $|T| \le 2$.

*3. lépés.* Legyenek $c_1 \le c_2$ a $T$ elemei (ha kevesebb van, a hiányzókat $b$-nek vesszük). Legyen $[\alpha, \beta]$ az $[a, c_1]$, $[c_1, c_2]$, $[c_2, b]$ intervallumok egyike; ennek belsejében nincs $T$-beli pont. $f$ injektív $[\alpha, \beta]$-n: ha $\alpha \le x < z \le \beta$ és $f(x) = f(z)$ volna, akkor $f$ nem konstans $[x, z]$-n (0. lépés), így a Weierstrass-tétel szerint felvett maximuma vagy minimuma eltér $f(x)$-től. Ezt egy $s \in (x, z)$ belső pontban veszi fel, ami lokális szélsőértékhely, tehát $s \in T \cap (\alpha, \beta)$ – ellentmondás. Az a) rész szerint $f$ szigorúan monoton $[\alpha, \beta]$-n. $\blacksquare$

(Három darab tényleg kellhet: a $(0, 2)$, $(1, 3)$, $(2, 0)$, $(3, 1)$ pontokat összekötő töröttvonal minden értéket legfeljebb kétszer vesz fel, és fel–le–fel halad.)

::: elmelet
**Elméleti háttér — injektív folytonos függvények és a „csúcsok” számolása.**

*Alaptétel.* Intervallumon folytonos és injektív függvény szigorúan monoton. A bizonyítás kulcslemmája: ha $x < y < z$, akkor $f(y)$ szigorúan $f(x)$ és $f(z)$ között van — különben egy, a „csúcs” ($f(y)$) és a két szomszéd közötti értéket a függvény a csúcs mindkét oldalán felvenné (Bolzano), ellentmondva az injektivitásnak.

*Következmények.* (1) Folytonos, szigorúan monoton függvény inverze is folytonos és szigorúan monoton (a 98. feladat elméleti háttere). (2) Egy folytonos függvény, amely minden értéket pontosan egyszer vesz fel, „nem fordulhat vissza”. (3) Nincs olyan folytonos $f : \mathbb{R} \to \mathbb{R}$, amely minden értékét pontosan kétszer venné fel (a b) rész $\mathbb R$-re is kiterjeszthető, bár a bizonyítás ott más, mert nincs maximum). Ezzel szemben minden értéket pontosan **háromszor** felvevő folytonos függvény $\mathbb R$-en létezik (cikcakkos „lépcső”).

*A b) rész érvelésének szerkezete.* (1) Weierstrass-tétel: van minimum és maximum. (2) Számolás: 4 szélsőértékhely, legfeljebb 2 végpont, így van belső szélsőértékhely. (3) Egy belső maximumhely közelében az éppen a maximum alatti értékeket a függvény mindkét oldalon felveszi; a második maximumhely további két felvételt ad — összesen három. A „csúcs mindkét oldalán felvett értékek” gondolata minden ilyen számolás alapja.

*A c) rész: lokális szélsőértékek és monoton darabok.* A legfeljebb kétszeres felvétel miatt minden lokális szélsőérték szigorú, és legfeljebb két belső lokális szélsőértékhely lehet (különben a „hullámok” egy értéket háromszor kényszerítenének ki). A szélsőértékhelyek között a függvény injektív, így az alaptétel szerint szigorúan monoton. Ugyanez az érvelés általánosabban is működik: ha egy folytonos függvény minden értéket legfeljebb $k$-szor vesz fel, akkor véges sok szigorúan monoton darabból áll, és a darabok száma $k$-val felülről becsülhető.

*Differenciálható esetben* a monoton darabok határai a derivált előjelváltásainak helyei; a folytonossági érvelés azonban deriválhatóság nélkül is működik — ez a Bolzano- és a Weierstrass-tétel ereje.
:::

## 109. feladat

Egy kukac alszik a $[0, 1]$ intervallumban. Először egyenletesen elnyúlik a 0 és 1 között (egyik vége a 0-ban a másik vége az 1-ben). Majd felébred és fészkelődni kezd. A fészkelődés után is a $[0, 1]$-ben marad és nem szakad el. Mutassuk meg, hogy van olyan pontja, amelyik ugyanoda került a fészkelődés után, ahol eredetileg volt.

**Megoldás.**

*Modell.* A kukac eredetileg $x$-ben levő pontja a fészkelődés után az $f(x)$ helyre kerül. Mivel a kukac a $[0, 1]$-ben marad, $f : [0, 1] \to [0, 1]$; mivel nem szakad el, $f$ folytonos. Olyan $c$ pontot keresünk, amelyre $f(c) = c$ (**fixpont**).

Legyen $g(x) = f(x) - x$, ez folytonos $[0, 1]$-en, és
$$g(0) = f(0) \ge 0, \qquad g(1) = f(1) - 1 \le 0.$$
Ha $g(0) = 0$ vagy $g(1) = 0$, akkor $c = 0$, illetve $c = 1$ jó. Különben $g(0) > 0 > g(1)$, és a Bolzano-tétel szerint van $c \in (0, 1)$, amelyre $g(c) = 0$, azaz $f(c) = c$. $\blacksquare$

::: elmelet
**Elméleti háttér — fixponttételek.**

*Egydimenziós Brouwer-tétel.* Minden folytonos $f : [a, b] \to [a, b]$ függvénynek van fixpontja. A $g(x) = f(x) - x$ a végpontokban $g(a) \ge 0$, $g(b) \le 0$, így a Bolzano-tétel szerint van zérushelye. A modellezés lépései: (1) a fizikai feltételek („a kukac a $[0, 1]$-ben marad”, „nem szakad el”) matematikai tulajdonságokká fordítása ($f : [0,1] \to [0,1]$, folytonos); (2) a kérdés („van-e helyben maradt pont”) egyenletté fordítása ($f(c) = c$).

*Mi kell hozzá?* Mindkét feltétel lényeges:

- folytonosság nélkül: $f(x) = 1$ ($x < \frac12$), $0$ ($x \ge \frac12$) — nincs fixpont;
- ha a kép nem marad az intervallumban: $f(x) = x + 1$ — nincs fixpont;
- nyílt intervallumon: $f(x) = \frac x2$ a $(0, 1)$-en — a fixpont ($0$) kiesett.

*Magasabb dimenzióban.* **Brouwer fixponttétele:** a zárt $n$ dimenziós gömb (vagy kocka) minden folytonos önmagába képezésének van fixpontja. Szemléletes következmények: egy pohár víz megkeverése után mindig van egy pont, amely ugyanott van; egy térképet az ábrázolt ország területére leejtve van egy pont, amely pontosan a valódi helye fölött fekszik. A bizonyítás $n \ge 2$-re már topológiai eszközöket igényel (Sperner-lemma vagy homológia).

*Banach fixponttétele.* Ha $f$ **kontrakció** ($|f(x) - f(y)| \le q|x - y|$, $q < 1$) egy zárt intervallumon, akkor a fixpont **egyértelmű**, és az $x_{n+1} = f(x_n)$ iteráció bármely kezdőpontból hozzá konvergál. Ez konstruktív (algoritmust ad), a Brouwer-tétel csak létezést.
:::

## 110. feladat

Egy függvény Darboux tulajdonságú az $I \subset \mathbb{R}$ intervallumban, ha $\forall a, b \in I$, $a < b$-re teljesül, hogy minden olyan $y$-hoz, ami $f(a)$ és $f(b)$ közé esik található $c \in (a, b)$, hogy $f(c) = y$.

a) Mutassuk meg, hogy a folytonos függvények rendelkeznek a Darboux tulajdonsággal.

b) Adjunk példát olyan függvényre, ami rendelkezik a Darboux tulajdonsággal $I = \mathbb{R}$-en, de nem folytonos.

c\*) Adjunk példát olyan függvényre, ami rendelkezik a Darboux tulajdonsággal $I = \mathbb{R}$-en, de egyetlen pontban sem folytonos.

**Megoldás.**

**a)** Legyen $f$ folytonos $I$-n, $a < b \in I$, és $y$ szigorúan $f(a)$ és $f(b)$ között. $f \in C[a, b]$, és $h = f - y$ a két végpontban ellentétes előjelű. A Bolzano-tétel szerint van $c \in (a, b)$, amelyre $h(c) = 0$, azaz $f(c) = y$. $\blacksquare$

**b)** Legyen
$$f(x) = \begin{cases} \sin\dfrac1x & \text{ha } x \ne 0, \\ 0 & \text{ha } x = 0. \end{cases}$$

- *Nem folytonos a $0$-ban:* $x_n = \frac{1}{\pi/2 + 2n\pi} \to 0$, de $f(x_n) = 1 \not\to 0 = f(0)$.
- *Darboux-tulajdonságú.* Először: minden $\varepsilon > 0$-ra $f$ a $(0, \varepsilon)$ intervallumon felvesz minden $[-1, 1]$-beli értéket. Ha $y = \sin\theta$, $\theta \in [-\frac\pi2, \frac\pi2]$, akkor $x = \frac{1}{\theta + 2n\pi} \in (0, \varepsilon)$ elég nagy $n$-re, és $f(x) = y$. $f$ páratlan, ezért ugyanez igaz $(-\varepsilon, 0)$-ra is.

  Legyen $a < b$ és $y$ szigorúan $f(a)$ és $f(b)$ között; ekkor $y \in (-1, 1)$.
  - Ha $0 \notin [a, b]$, akkor $f$ folytonos $[a, b]$-n, és alkalmazható az a) rész.
  - Ha $0 \in [a, b]$, akkor $(a, b)$ tartalmaz egy $(0, \varepsilon)$ vagy $(-\varepsilon, 0)$ intervallumot (ha $a < 0$, akkor az utóbbit, ha $a = 0$, az előbbit), és ott $f$ minden $[-1, 1]$-beli értéket felvesz, így $y$-t is.

**c\*)** Minden $x \in \mathbb{R}$-re írjuk fel a törtrészét kettes számrendszerben: $\{x\} = 0{,}d_1 d_2 d_3 \dots_{(2)}$, ahol $d_k \in \{0, 1\}$, és nem csupa 1-es a jegyek vége (így a felírás egyértelmű). Legyen
$$f(x) = \limsup_{n \to \infty} \frac{d_1 + d_2 + \dots + d_n}{n} \in [0, 1],$$
az első $n$ jegy átlagának limesz szuperiorja.

*Kulcsállítás: $f$ minden nyílt intervallumon minden $[0, 1]$-beli értéket felvesz.* Legyen $(a, b)$ tetszőleges és $y \in [0, 1]$.

1. Van olyan $p \in \mathbb{Z}$, $m \in \mathbb{N}$, hogy $J = [\frac{p}{2^m}, \frac{p + 1}{2^m}) \subset (a, b)$ (elég $\frac1{2^m} < \frac{b - a}2$). A $J$-beli számok törtrészének első $m$ kettedes jegye rögzített. Az $(m + 1)$-edik jegytől kezdve viszont bármilyen (nem csupa 1-esre végződő) $0$–$1$ sorozat előfordul: $x = \frac{p}{2^m} + \frac{t}{2^m}$, $t \in [0, 1)$ esetén ezek a jegyek éppen $t$ jegyei.
2. Válasszunk egy $(e_k)$ $0$–$1$ sorozatot, amelynek átlagai $y$-hoz tartanak, és nem végződik csupa 1-esre. $y < 1$-re pl. $e_k = [ky] - [(k - 1)y]$: ekkor $e_1 + \dots + e_n = [ny]$, és $\frac{[ny]}{n} \to y$. (Csupa 1-esre végződés esetén valamely $n_0$-tól $[ny] = n - \text{konst}$ volna, ami $y < 1$-re lehetetlen.) $y = 1$-re legyen $e_k = 0$, ha $k$ kettő-hatvány, különben $1$.
3. Az 1. pont szerinti $x \in J$, amelynek jegyei az $(m + 1)$-edik helytől $e_1, e_2, \dots$, kielégíti:
$$\frac{d_1 + \dots + d_{m+n}}{m + n} = \frac{(d_1 + \dots + d_m) + (e_1 + \dots + e_n)}{m + n} \to y,$$
   mert az első zárójel korlátos ($\le m$). Tehát $f(x) = y$.

*Következmények.*

- **Darboux-tulajdonságú:** $R(f) \subseteq [0, 1]$, így ha $y$ az $f(a)$ és $f(b)$ között van, akkor $y \in [0, 1]$, és a kulcsállítás szerint $(a, b)$-ben felvétetik.
- **Sehol sem folytonos:** bármely $x_0$ bármely környezetében $f$ felveszi a $0$-t és az $1$-et is, így van olyan $x$, amelyre $|f(x) - f(x_0)| \ge \frac12$. $\varepsilon = \frac12$-hez tehát nincs jó $\delta$.

(Ismert másik példa a **Conway-féle 13-as számrendszerbeli függvény**, amely ugyanígy minden intervallumon minden valós értéket felvesz. Kiválasztási axiómával is készíthető ilyen függvény: az $x + \mathbb{Q}$ mellékosztályok mind sűrűk, és kontinuum sokan vannak, így egy $\varphi : \mathbb{R}/\mathbb{Q} \to \mathbb{R}$ bijekcióval $f(x) = \varphi(x + \mathbb{Q})$ minden intervallumon minden értéket felvesz.)

::: elmelet
**Elméleti háttér — a Darboux-tulajdonság helye a folytonossághoz képest.**

*Definíció és viszony.* Egy függvény **Darboux-tulajdonságú** egy intervallumon, ha bármely két felvett érték közötti minden értéket is felvesz a megfelelő pontok között; ekvivalensen: intervallum képe intervallum. A Bolzano-tétel szerint folytonos $\Rightarrow$ Darboux. A megfordítás hamis, és a kudarc fokozatai:

1. **Egy szakadás:** $\sin\frac1x$ ($0$-ban $0$) — a $0$ minden környezetében minden $[-1, 1]$-beli értéket felvesz, ezért a „lyuk” nem akadályozza a közbülsőértékek felvételét.
2. **Sehol sem folytonos:** a c) rész függvénye minden intervallumon minden $[0, 1]$-beli értéket felvesz (a kettedes jegyek átlagának limsupja „tetszőlegesen hangolható” a jegyek végének megválasztásával).

*Mikor ekvivalens?* Monoton függvényekre (102. feladat), és olyan függvényekre, amelyeknek minden szinthalmaza zárt (ekkor a Darboux-tulajdonság már folytonosságot ad).

*Deriváltak.* **Darboux tétele:** ha $f$ differenciálható egy intervallumon, akkor $f'$ Darboux-tulajdonságú — akkor is, ha $f'$ nem folytonos. Például $f(x) = x^2\sin\frac1x$ ($f(0) = 0$) deriváltja $2x\sin\frac1x - \cos\frac1x$, $f'(0) = 0$: ez szakad a $0$-ban, mégis Darboux-tulajdonságú. Következmény: egy ugrásos függvény (pl. $\operatorname{sgn}$) **nem lehet** derivált függvény.

*A c) rész konstrukciójának ötlete.* A kettedes tört **első véges sok jegye** határozza meg, melyik kis intervallumban van a szám; a **végtelen sok hátralevő jegy** viszont szabadon választható, és egy „aszimptotikus” mennyiség (az átlag limsupja) csak ezektől függ. Ezért minden intervallumban minden érték elérhető. Ugyanez a gondolat — lokálisan a véges kezdet, globálisan a végtelen „farok” — jelenik meg a limsup tulajdonságaiban is (véges sok tag nem befolyásolja).

*Mérhetőség.* A c) rész függvénye mérhető (Lebesgue értelemben), sőt a „szinte minden” $x$-re $f(x) = \frac12$ (Borel normálisszám-tétele: majdnem minden szám kettedes jegyeinek átlaga $\frac12$-hez tart). A függvény tehát „majdnem mindenhol” konstans, és mégis minden intervallumon minden értéket felvesz.
:::

## Röpzhra

**Definíciók:** folytonosság, féloldali folytonosság, $f \in C[a, b]$.

**Tételek:** határérték és alapműveletek, határérték és kompozíció, egyenlőtlenségek és határérték (két tétel), átviteli elv folytonos függvényekre.
