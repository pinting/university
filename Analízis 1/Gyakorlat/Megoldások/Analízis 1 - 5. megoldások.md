# Analízis 1 – 5. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 44. feladat

Mondjuk ki a $\lim\limits_{n \to \infty} a_n = -\infty$ definícióját és annak tagadását.

**Megoldás.**

**Definíció:** $\lim_{n\to\infty} a_n = -\infty$, ha
$$\forall K \in \mathbb{R}\ \exists N \in \mathbb{N}\ \forall n \ge N : a_n < K.$$

**Tagadás:** $\lim a_n \ne -\infty$, ha
$$\exists K \in \mathbb{R}\ \forall N \in \mathbb{N}\ \exists n \ge N : a_n \ge K,$$
azaz van olyan $K$, amelynél nem kisebb tagja végtelen sok van a sorozatnak.

::: elmelet
**Elméleti háttér — tágabb értelemben vett határérték és a környezetek egységes nyelve.**

*Környezetek a bővített számegyenesen.* $\overline{\mathbb R} = \mathbb R \cup \{-\infty, +\infty\}$. Egy $a \in \mathbb R$ pont környezetei a $(a - \varepsilon, a + \varepsilon)$ intervallumok, a $+\infty$ környezetei a $(K, +\infty)$, a $-\infty$ környezetei a $(-\infty, K)$ félegyenesek. Ezzel a három definíció egyetlen mondatba foglalható:

> $a_n \to A \in \overline{\mathbb{R}}$, ha $A$ minden $U$ környezetéhez van $N$, hogy $n \ge N$ esetén $a_n \in U$.

*A $-\infty$ definíciója.* $a_n \to -\infty$, ha $\forall K\ \exists N\ \forall n \ge N: a_n < K$. Elég negatív $K$-kat nézni (ha a definíció minden negatív $K$-ra teljesül, akkor nagyobbakra is). Ekvivalensen: $-a_n \to +\infty$.

*Tagadás és szemléletes jelentés.* $a_n \not\to -\infty$ pontosan akkor, ha van egy $K$, amelynél nem kisebb tag végtelen sok van — vagyis van egy **alulról korlátos részsorozat**. Például a $(-1)^n n$ sorozat nem tart $-\infty$-hez (a páros indexű tagok $+\infty$-hez tartanak), és $+\infty$-hez sem.

*Kapcsolat a korlátossággal.* Ha $a_n \to -\infty$, a sorozat felülről korlátos, de alulról nem. A megfordítás nem igaz: a $-n$ és $0$ felváltva ($0, -2, 0, -4, \dots$) felülről korlátos, alulról nem, mégsem tart $-\infty$-hez — a „csak véges sok kivétel” feltétel hiányzik.

*Hibalehetőség.* A $-\infty$ nem valós szám, ezért „$|a_n - (-\infty)| < \varepsilon$” értelmetlen; a végtelen határértéket mindig a $K$-s definícióval kezeljük.
:::

## 45. feladat

Mutassuk meg, hogy $\lim\limits_{n \to \infty} a_n = \infty$ acsa, ha $\forall K \in \mathbb{R}$-re az $(a_n)$-nek csak véges sok tagja kisebb $K$-nál.

**Megoldás.**

($\Rightarrow$) Legyen $\lim a_n = \infty$ és $K \in \mathbb{R}$. A definíció szerint van $N$, hogy $n \ge N$ esetén $a_n > K$. Így $K$-nál kisebb tag csak az $a_1, \dots, a_{N-1}$ között lehet: véges sok.

($\Leftarrow$) Legyen $K \in \mathbb{R}$ tetszőleges. A feltételt $K + 1$-re alkalmazva csak véges sok $n$ index van, amelyre $a_n < K + 1$; legyen $N$ ezek mindegyikénél nagyobb. Ekkor $n \ge N$ esetén $a_n \ge K + 1 > K$. Tehát $\lim a_n = \infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — „majdnem minden” tag: egy indextől kezdve $\iff$ véges sok kivétellel.**

*Terminológia.* Azt mondjuk, hogy egy tulajdonság a sorozat **majdnem minden** tagjára teljesül, ha csak véges sok tagra nem teljesül. Ez ekvivalens azzal, hogy egy indextől kezdve minden tagra teljesül: ha $n \ge N$-re teljesül, a kivételek az $1, \dots, N - 1$ indexek között vannak; ha pedig a kivételes indexek véges halmaza $E$, akkor $N = \max E + 1$ (vagy $N = 1$, ha $E = \emptyset$) jó küszöb.

*A határérték-definíciók ezen a nyelven.*

- $a_n \to a \iff$ minden $\varepsilon > 0$-ra majdnem minden tag az $(a - \varepsilon, a + \varepsilon)$ környezetben van;
- $a_n \to +\infty \iff$ minden $K$-ra majdnem minden tag nagyobb $K$-nál;
- $s$ **sűrűsödési értéke** a sorozatnak $\iff$ minden $\varepsilon > 0$-ra **végtelen sok** tag van $(s - \varepsilon, s + \varepsilon)$-ban.

A konvergencia és a sűrűsödési érték közti különbség tehát pontosan a „majdnem minden” és a „végtelen sok” különbsége.

*A $K + 1$-trükk.* A feladat feltétele „$a_n < K$ csak véges sokszor”, vagyis majdnem minden tagra $a_n \ge K$; a definícióhoz $a_n > K$ kell. A szigorú egyenlőtlenséget a feltétel $K + 1$-re való alkalmazásával kapjuk. Általános tanulság: a definíciókban a $<$ és $\le$ (illetve $>$ és $\ge$) felcserélhető, mert a korlát kis eltolásával egyikből a másik következik.

*Átrendezés.* Ha egy sorozat tagjait átrendezzük (bijektív indexcserével), a „majdnem minden tag” tulajdonság megmarad — ezért az átrendezés nem változtat a határértéken. Ugyanígy véges sok tag elhagyása, hozzávétele vagy megváltoztatása sem.
:::

## 46. feladat

Adjunk meg adott $K$-hoz $n_K$-t a következő sorozatok esetében:

a) $n - \sqrt{n}$; b) $(1 + \dots + n)/n$; c) $(\sqrt{1} + \sqrt{2} + \dots + \sqrt{n})/n$; d) $\dfrac{n^2 - 10n}{10n + 100}$; e) $2^n/n$.

**Megoldás.**

Feltehető $K > 0$. Olyan $n_K$-t adunk, amelytől kezdve $a_n > K$.

a) $n - \sqrt n = \sqrt n(\sqrt n - 1)$. Ha $n \ge 4$, akkor $\sqrt n - 1 \ge \frac{\sqrt n}{2}$, így $n - \sqrt n \ge \frac n2 > K$, ha $n > 2K$. **$n_K = \max\{4, \lfloor 2K \rfloor + 1\}$.**

b) $\frac{1 + \dots + n}{n} = \frac{n+1}{2} > K \iff n > 2K - 1$. **$n_K = \lfloor 2K \rfloor$** (vagy bármely nagyobb).

c) Az $\frac{n}{2} \le k \le n$ indexű tagokból legalább $\frac n2$ darab van, és mindegyik legalább $\sqrt{n/2}$. Így
$$\frac{\sqrt1 + \dots + \sqrt n}{n} \ge \frac{1}{n} \cdot \frac{n}{2} \sqrt{\frac n2} = \frac{\sqrt n}{2\sqrt2} > K, \quad \text{ha } n > 8K^2.$$
**$n_K = \lfloor 8K^2 \rfloor + 1$.**

d) Ha $n \ge 20$, akkor $10n \le \frac{n^2}{2}$, tehát $n^2 - 10n \ge \frac{n^2}{2}$, és $100 \le 5n$, tehát $10n + 100 \le 15n$. Így
$$\frac{n^2 - 10n}{10n + 100} \ge \frac{n^2/2}{15n} = \frac{n}{30} > K, \quad \text{ha } n > 30K.$$
**$n_K = \max\{20, \lfloor 30K \rfloor + 1\}$.**

e) A binomiális tétel szerint $n \ge 2$-re $2^n = (1 + 1)^n \ge \binom n2 = \frac{n(n-1)}{2}$, így $\frac{2^n}{n} \ge \frac{n - 1}{2} > K$, ha $n > 2K + 1$. **$n_K = \lfloor 2K \rfloor + 2$.**

::: elmelet
**Elméleti háttér — $+\infty$-be tartás igazolása és nevezetes alsó becslések.**

*Majoráns elv végtelen határértékre.* Ha egy indextől $a_n \ge b_n$ és $b_n \to +\infty$, akkor $a_n \to +\infty$ (ugyanazzal a küszöbbel, vagy annál későbbivel). Ezért elég $a_n$-t egy egyszerű, „nyilvánvalóan” végtelenbe tartó $b_n$-nel alulról becsülni, és a $b_n > K$ egyenlőtlenséget megoldani.

*Becslési fogások.*

1. **Domináns tag kiemelése:** $n - \sqrt n = \sqrt n(\sqrt n - 1)$; ha a kisebb rendű tag a domináns tag legfeljebb felét „eszi meg”, az eredmény legalább a domináns tag fele.
2. **A „nagy fél” módszer:** egy $n$ tagú, növő tagú összeg legalább az utolsó $\frac n2$ tag összege, és az mindegyik legalább a középső tag. Így $\sum_{k=1}^n \sqrt k \ge \frac n2\sqrt{\frac n2}$ (pontosan $\sum \sqrt k \approx \frac23 n^{3/2}$).
3. **Racionális kifejezésnél** a számlálót alulról, a nevezőt felülről becsüljük egy-egy egytagú kifejezéssel (pl. $n^2 - 10n \ge \frac{n^2}{2}$, $10n + 100 \le 15n$ elég nagy $n$-re).
4. **Binomiális tétel:** $2^n = (1 + 1)^n \ge \binom{n}{k}$ bármely $k$-ra, így $2^n$ minden polinomot legyőz: $\frac{2^n}{n^k} \ge \frac{\binom{n}{k+1}}{n^k} \to \infty$.

*A küszöb formája.* Egy $n > f(K)$ feltételből $n_K = \lfloor f(K) \rfloor + 1$ adódik; ha az alkalmazott becslés csak $n \ge n_0$-ra érvényes, a küszöb $\max\{n_0, \lfloor f(K) \rfloor + 1\}$. Ezt a maximumot nem szabad elfelejteni — a becslés érvényességi tartománya is része az érvelésnek.

*Összevetés a műveleti szabályokkal.* Ha nem kell explicit küszöb, a $+\infty$ határérték gyorsabban adódik: például $\frac{n^2 - 10n}{10n + 100} = n \cdot \frac{1 - 10/n}{10 + 100/n}$, ahol a második tényező $\frac{1}{10} > 0$-hoz tart, így a szorzat $+\infty$-hez (a „$\infty \cdot c$, $c > 0$” típus nem kritikus).
:::

## 47. feladat

Bizonyítandó, hogy egy konvergens sorozatnak mindig van legkisebb vagy legnagyobb tagja.

**Megoldás.**

Legyen $a_n \to a$. Ha minden tag $a$, akkor minden tag egyszerre legkisebb és legnagyobb. Különben van $a_m \ne a$; tegyük fel, hogy $a_m > a$ (az $a_m < a$ eset szimmetrikus, és ott legkisebb tagot kapunk).

Legyen $\varepsilon = a_m - a > 0$. A konvergencia miatt van $N$, hogy $n \ge N$ esetén $a_n < a + \varepsilon = a_m$. Ebből $m < N$ (különben $a_m < a_m$ volna). Legyen $M = \max\{a_1, \dots, a_{N-1}\}$ – véges halmaz maximuma, és $M \ge a_m$. Ekkor:

- $n < N$ esetén $a_n \le M$ (definíció szerint),
- $n \ge N$ esetén $a_n < a_m \le M$.

Tehát $M$ a sorozat legnagyobb tagja. $\blacksquare$

Példák: $\frac1n$-nek van legnagyobb tagja ($1$), de legkisebb nincs; $\frac{(-1)^n}{n}$-nek mindkettő van.

::: elmelet
**Elméleti háttér — konvergens sorozat szerkezete: korlátosság és szélsőértékek.**

*Konvergens sorozat korlátos.* Ha $a_n \to a$, akkor $\varepsilon = 1$-hez van $N$, hogy $n \ge N$-re $|a_n| < |a| + 1$, így minden tag abszolút értéke legfeljebb $\max\{|a_1|, \dots, |a_{N-1}|, |a| + 1\}$. Ez a „fej + farok” módszer legegyszerűbb alkalmazása.

*A feladat állítása élesebb.* Nem csak korlátok vannak, hanem a sorozat **el is éri** valamelyik szélső értékét: ha van a határérték fölötti tag, a maximum létezik; ha van alatta levő, a minimum. A bizonyítás kulcsa, hogy a farok egy indextől kezdve a határérték egy olyan környezetében marad, amely a kiválasztott tagot már nem tartalmazza, így a maximumot a véges fejben lehet megkeresni.

*Pontosabban:* ha $a_n \to a$, akkor

- ha van $a_m > a$, a sorozatnak van legnagyobb tagja;
- ha van $a_m < a$, van legkisebb tagja;
- ha egyik sincs, a sorozat állandó, és mindkettő van.

Így mindkét szélső tag hiánya csak divergens sorozatnál fordulhat elő (52. feladat).

*A sorozat értékkészletének lezártja.* Konvergens sorozat esetén a $\{a_n\}$ halmaz szuprémuma vagy maximum (eléri), vagy éppen a határérték ($\frac1n$-nél az infimum $0 = \lim$). Általában: $\sup\{a_n\} \in \{a_n\} \cup \{\lim a_n\}$.

*Kapcsolat a későbbi tételekkel.* Ugyanez a gondolat jelenik meg a Weierstrass-tételben (zárt intervallumon folytonos függvény felveszi a maximumát): ott a Bolzano–Weierstrass-tétel biztosítja, hogy egy maximumhoz tartó sorozatnak legyen konvergens részsorozata, és a folytonosság, hogy a határpontban a függvény felvegye az értéket.
:::

## 48. feladat

Bizonyítsuk be, hogy ha $A \subset \mathbb{R}$, $A \neq \emptyset$ és $\sup A = \alpha \notin A$, akkor létezik olyan $(a_n)$ sorozat, amelyre $\forall n \in \mathbb{N}$-re $a_n \in A$, $(a_n)$ szigorúan monoton növekedő és $a_n \to \alpha$. Igaz-e az állítás akkor is, ha $\alpha \in A$?

**Megoldás.**

**Konstrukció.** Legyen $a_1 \in A$ tetszőleges; mivel $\alpha \notin A$, $a_1 < \alpha$. Ha $a_n < \alpha$ már adott, legyen
$$c_n = \max\left\{a_n,\ \alpha - \frac1n\right\} < \alpha.$$
Mivel $c_n < \alpha = \sup A$, a $c_n$ nem felső korlát, így van $a_{n+1} \in A$, amelyre $a_{n+1} > c_n$. Mivel $a_{n+1} \le \alpha$ és $\alpha \notin A$, $a_{n+1} < \alpha$.

Ekkor $a_{n+1} > a_n$ (szigorúan monoton nő), és $\alpha - \frac1n < a_{n+1} < \alpha$, tehát a rendőrelv szerint $a_n \to \alpha$. $\blacksquare$

**Ha $\alpha \in A$, az állítás nem igaz általában:** $A = \{0\}$ esetén $\sup A = 0 \in A$, de $A$-ban nincs szigorúan monoton növő sorozat. (Lehet igaz is, pl. $A = [0, 1]$ és $a_n = 1 - \frac1n$; ez akkor teljesül, ha $\alpha$ balról torlódási pontja $A$-nak.)

::: elmelet
**Elméleti háttér — a szuprémum sorozatos jellemzése és a rendőrelv.**

*Sorozatos jellemzés.* Legyen $A \ne \emptyset$ felülről korlátos. Ekkor $\alpha = \sup A$ pontosan akkor, ha $\alpha$ felső korlát, és van olyan $a_n \in A$ sorozat, amelyre $a_n \to \alpha$. (Ha $\alpha$ felső korlát és $a_n \to \alpha$, akkor minden $\alpha' < \alpha$-hoz van $a_n > \alpha'$, így $\alpha'$ nem felső korlát. Megfordítva, a szuprémum definíciója minden $n$-re ad egy $a_n \in A$-t az $(\alpha - \frac1n, \alpha]$ intervallumban.) A feladat ennek egy élesítése: a sorozat **szigorúan monoton** is választható, ha $\alpha \notin A$.

*A konstrukció két célja egyszerre.* A $c_n = \max\{a_n, \alpha - \frac1n\}$ választás egyetlen lépésben két dolgot biztosít: az új tag nagyobb az előzőnél (monotonitás), és közelebb van $\alpha$-hoz $\frac1n$-nél (konvergencia). Ez a „két feltétel maximumán túllépés” gyakori technika rekurzív konstrukcióknál.

*Rendőrelv.* Ha egy indextől $a_n \le b_n \le c_n$, és $a_n \to L$, $c_n \to L$, akkor $b_n \to L$. *Bizonyítás:* adott $\varepsilon$-hoz egy indextől $L - \varepsilon < a_n$ és $c_n < L + \varepsilon$, így $L - \varepsilon < b_n < L + \varepsilon$. Végtelen határértékre „egyoldali rendőrelv” is van: ha $a_n \le b_n$ és $a_n \to +\infty$, akkor $b_n \to +\infty$.

*Torlódási pont.* Az $\alpha$ pont az $A$ halmaz **torlódási pontja**, ha minden környezete végtelen sok $A$-beli pontot tartalmaz; ekvivalensen van $A \setminus \{\alpha\}$-beli, $\alpha$-hoz tartó sorozat. A feladat szerint ha $\sup A \notin A$, akkor a szuprémum torlódási pont (sőt balról). Ha $\sup A \in A$, akkor $\sup A$ lehet **izolált pont** is (mint $A = \{0\}$ vagy $A = [0, 1] \cup \{2\}$ esetén a $2$) — ekkor nincs hozzá tartó szigorúan monoton sorozat. Ez a fogalom a függvények határértékének definíciójában (az értelmezési tartomány torlódási pontjában vett határérték) lesz fontos.
:::

## 49. feladat

a) $\sqrt[n]{2^n + 3^n + 1000n^3} \to ?$ b) $\dfrac{1}{n^2} + \dfrac{2}{n^2} + \dots + \dfrac{n}{n^2} \to ?$ c) $\sqrt[n]{1 + \frac{1}{2} + \dots + \frac{1}{n}} \to ?$

**Megoldás.**

a) $\sqrt[n]{2^n + 3^n + 1000n^3} \to 3$. Becslés:
$$3 = \sqrt[n]{3^n} \le \sqrt[n]{2^n + 3^n + 1000n^3} \le \sqrt[n]{3^n(2 + 1000n^3)} = 3\sqrt[n]{2 + 1000n^3}.$$
Továbbá $1 \le \sqrt[n]{2 + 1000n^3} \le \sqrt[n]{1002}\cdot\left(\sqrt[n]{n}\right)^3 \to 1 \cdot 1 = 1$. A rendőrelv szerint a határérték $3$.

b) $\frac{1 + 2 + \dots + n}{n^2} = \frac{n(n+1)}{2n^2} = \frac12 + \frac{1}{2n} \to \frac12$.

c) $1 \le 1 + \frac12 + \dots + \frac1n \le n$, így $1 \le \sqrt[n]{1 + \frac12 + \dots + \frac1n} \le \sqrt[n]{n} \to 1$. A határérték $1$.

::: elmelet
**Elméleti háttér — $n$-edik gyökök határértéke és a domináns tag elve.**

*Alaphatárértékek.* $\sqrt[n]{c} \to 1$ minden $c > 0$-ra és $\sqrt[n]{n} \to 1$ (38. f, j). Ezekből $\sqrt[n]{n^k} = (\sqrt[n]{n})^k \to 1$ és $\sqrt[n]{P(n)} \to 1$ minden pozitív értékű polinomra: polinomiális tényezők az $n$-edik gyök alatt „eltűnnek”.

*A domináns tag elve.* Ha $a_1, \dots, a_k > 0$ rögzített számok, akkor
$$\sqrt[n]{a_1^n + a_2^n + \dots + a_k^n} \to \max\{a_1, \dots, a_k\}.$$
*Bizonyítás:* legyen $M$ a maximum; ekkor $M^n \le \sum a_i^n \le kM^n$, így $M \le \sqrt[n]{\sum a_i^n} \le \sqrt[n]{k}\,M \to M$, és a rendőrelv adja az állítást. A feladatban polinomiális tag ($1000n^3$) is szerepel, de az $n$-edik gyök alatt ez is csak egy $1$-hez tartó szorzót ad. (Ez a $\max$-norma közelítése: $\|x\|_p \to \|x\|_\infty$, ha $p \to \infty$.)

*Számtani átlagok.* Az $\frac{1}{n^2}\sum_{k=1}^n k$ típusú kifejezéseknél zárt összegképletet használunk ($\sum k = \frac{n(n+1)}{2}$, $\sum k^2 = \frac{n(n+1)(2n+1)}{6}$). Ezek Riemann-összegek előfutárai: $\frac1n\sum_{k=1}^n \frac kn \to \int_0^1 x\,dx = \frac12$.

*A harmonikus összeg nagyságrendje.* $1 \le H_n = 1 + \frac12 + \dots + \frac1n \le n$, ami a c) részhez elég. Pontosabban $H_n \approx \ln n + \gamma$ ($\gamma \approx 0{,}577$ az Euler–Mascheroni-állandó), így $H_n \to \infty$, de nagyon lassan; az $n$-edik gyök alatt pedig ez is $1$-hez tartó szorzót ad: $\sqrt[n]{H_n} \to 1$.
:::

## 50. feladat

Példák konstruálásával mutassuk meg, hogy ha $a_n \to 0$ és $b_n \to +\infty$, akkor $a_n b_n$ kritikus.

**Megoldás.**

$a_n \to 0$, $b_n \to +\infty$ esetén az $a_n b_n$ szorzat bármi lehet („$0 \cdot \infty$" kritikus típus):

| $a_n$ | $b_n$ | $a_n b_n$ | határérték |
|:---:|:---:|:---:|:---:|
| $\frac{c}{n}$ | $n$ | $c$ | $c$ (tetszőleges valós) |
| $\frac1n$ | $n^2$ | $n$ | $+\infty$ |
| $-\frac1n$ | $n^2$ | $-n$ | $-\infty$ |
| $\frac{1}{n^2}$ | $n$ | $\frac1n$ | $0$ |
| $\frac{(-1)^n}{n}$ | $n$ | $(-1)^n$ | nincs határérték |

Tehát a tényezők határértékéből nem lehet következtetni a szorzatéra.

::: elmelet
**Elméleti háttér — határérték és műveletek; kritikus típusok.**

*A műveleti tételek.* Ha $a_n \to a$ és $b_n \to b$ (véges határértékek), akkor $a_n \pm b_n \to a \pm b$, $a_nb_n \to ab$, és $b \ne 0$ esetén $\frac{a_n}{b_n} \to \frac ab$. Végtelen határértékekre a bővített számegyenesen érvényes szabályok: $a + \infty = \infty$ ($a > -\infty$), $a \cdot \infty = \infty$ ($a > 0$), $\frac{a}{\pm\infty} = 0$ ($a$ véges), stb.

*Kritikus (határozatlan) típusok.* A következő esetekben a tagok határértékéből **nem** határozható meg a művelet eredményének határértéke:
$$\infty - \infty, \qquad 0 \cdot (\pm\infty), \qquad \frac00, \qquad \frac{\pm\infty}{\pm\infty}, \qquad \frac{a}{0}\ (a \ne 0),$$
valamint hatványoknál $1^\infty$, $0^0$, $\infty^0$. A kritikusságot úgy mutatjuk meg, hogy **ugyanabba a típusba** eső sorozatpárokra **különböző** eredményeket (vagy divergenciát) mutatunk — elég öt jól választott példa, mint a táblázatban.

*Hogyan oldjuk fel a kritikus alakot?* Átalakítással, amely a „harcban álló” tényezők nagyságrendjét összeveti: kiemelés, gyöktelenítés, egyszerűsítés, nevezetes határértékek ($\frac{n^k}{a^n} \to 0$ stb.). A $0 \cdot \infty$ alak például $\frac{0}{0}$ vagy $\frac{\infty}{\infty}$ alakra írható: $a_nb_n = \frac{a_n}{1/b_n}$.

*Miért fontos a tényezők nagyságrendje?* A $0 \cdot \infty$ szorzat határértékét az dönti el, hogy $a_n$ „milyen gyorsan” tart $0$-hoz ahhoz képest, ahogy $b_n$ a végtelenbe. Ez a későbbi L'Hospital-szabály és a Taylor-polinomos közelítés motivációja: a határozatlan alakok kiszámítása a nagyságrendek pontos összevetése.
:::

## 51. feladat

Mutassuk meg, hogy ha $a_n \to 0$ és $a_n \neq 0$, akkor $\frac{1}{|a_n|} \to \infty$.

**Megoldás.**

Legyen $K > 0$. Az $a_n \to 0$ definícióját $\varepsilon = \frac1K$-ra alkalmazva van $N$, hogy $n \ge N$ esetén $0 < |a_n| < \frac1K$ (a pozitivitás az $a_n \neq 0$ feltételből jön). Ekkor $\frac{1}{|a_n|} > K$. Tehát $\frac{1}{|a_n|} \to +\infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — nullsorozat reciproka és a $\frac{1}{0}$ alak.**

*Állítás és megfordítása.* Ha $a_n \to 0$ és $a_n \ne 0$, akkor $\frac{1}{|a_n|} \to +\infty$; megfordítva, ha $b_n \to \pm\infty$, akkor $\frac{1}{b_n} \to 0$. A bizonyítás a két definíció „szótára”: $|a_n| < \varepsilon \iff \frac{1}{|a_n|} > \frac{1}{\varepsilon}$, és a $K = \frac1\varepsilon$ megfeleltetés kölcsönösen egyértelmű a pozitív számok között.

*Előjeles változat.* Ha $a_n \to 0$ és egy indextől $a_n > 0$, akkor $\frac{1}{a_n} \to +\infty$ (jelölés: $a_n \to 0^+$); ha $a_n < 0$, akkor $-\infty$. Ha $a_n$ előjele végtelen sokszor változik, $\frac{1}{a_n}$ divergens és tágabb értelemben sincs határértéke (például $a_n = \frac{(-1)^n}{n}$, $\frac{1}{a_n} = (-1)^n n$). Ezért a $\frac{c}{0}$ ($c \ne 0$) alak **nem** feltétlenül végtelen — csak az abszolút érték az.

*A $\frac{a}{0}$ alak a kritikusak között.* A $\frac{1}{a_n}$ határértéke ($+\infty$, $-\infty$ vagy nincs) az előjeltől függ, így a $\frac{c}{0}$ típus kritikus, de „jól kezelhető”: az abszolút érték mindig végtelenbe tart.

*Hol használjuk?* Függvényhatárértékeknél: $\lim_{x \to 0^+}\frac1x = +\infty$, $\lim_{x \to 0^-}\frac1x = -\infty$, így $\lim_{x \to 0}\frac1x$ nem létezik — ez a féloldali határértékek egyik legegyszerűbb példája. Az átviteli elv szerint ez éppen a feladat állításának függvényes változata.
:::

## 52. feladat

Van-e olyan sorozat, amelyik korlátos, de se minimuma, se maximuma nincs?

**Megoldás.**

**Van.** Például $a_n = (-1)^n\left(1 - \frac1n\right)$: tagjai $0, \frac12, -\frac23, \frac34, -\frac45, \dots$

- Korlátos: $|a_n| < 1$.
- A páros indexű tagok $1 - \frac1n$ szigorúan nőnek és tartanak $1$-hez, de sosem érik el, így $\sup = 1$, és maximum nincs (minden pozitív tagnál van nagyobb).
- Hasonlóan a páratlan indexű tagok szigorúan csökkennek $-1$-hez, így minimum sincs.

(A 47. feladat szerint egy ilyen sorozat szükségképpen divergens.)

::: elmelet
**Elméleti háttér — korlátosság, szuprémum és elérhetőség.**

*Szuprémum és maximum különbsége.* Egy korlátos sorozat tagjainak halmazára a teljességi axióma szerint mindig létezik $\sup$ és $\inf$; a maximum és a minimum viszont csak akkor, ha ezeket a sorozat fel is veszi. A $\sup$ el nem éréséhez az kell, hogy legyen egy szigorúan növő részsorozat, amely a $\sup$-hoz tart — és ez a $\sup$ ekkor a sorozat egy **sűrűsödési értéke**.

*A példa szerkezete.* A $(-1)^n\left(1 - \frac1n\right)$ sorozatnak két sűrűsödési értéke van, $1$ és $-1$; a páros indexű részsorozat alulról közelít az $1$-hez, a páratlan indexű felülről a $-1$-hez. Mivel egyik szélső értéket sem éri el, sem maximuma, sem minimuma nincs.

*limsup és liminf.* Korlátos sorozatra $\limsup a_n$ a legnagyobb, $\liminf a_n$ a legkisebb sűrűsödési érték; itt $\limsup = 1 = \sup$ és $\liminf = -1 = \inf$. Általában $\inf a_n \le \liminf a_n \le \limsup a_n \le \sup a_n$, és a sorozat pontosan akkor konvergens, ha $\liminf = \limsup$ (véges).

*Összefüggés a 47. feladattal.* Ha egy sorozatnak sem maximuma, sem minimuma nincs, akkor $\sup a_n$ és $\inf a_n$ is sűrűsödési érték. Ha konvergens volna, mindkettő a határértékkel egyezne, tehát $\sup = \inf$, és a sorozat állandó volna — de állandó sorozatnak van maximuma. Így az ilyen sorozat szükségképpen divergens.

*Bolzano–Weierstrass.* Minden korlátos sorozatnak van konvergens részsorozata — ezért a korlátos sorozatoknak mindig van legalább egy sűrűsödési értéke. A példában kettő is van; egy korlátos sorozatnak akár végtelen sok (sőt kontinuum sok) sűrűsödési értéke is lehet.
:::

## 53. feladat

Határozzuk meg az alábbi sorozatok határértékét.

a) $a_n = \dfrac{3n + 16}{4n - 25}$, b) $b_n = n \cdot \left(\sqrt{1 + \dfrac{1}{n}} - 1\right)$, c) $c_n = \dfrac{1}{n} \cdot \dfrac{n^2 + 1}{n^3 + 1}$, d) $d_n = \dfrac{5 - 2n^2}{4 + n}$,

e) $e_n = \dfrac{\sin(n) + n}{n}$, f) $f_n = \dfrac{2n^3 + 3\sqrt{n}}{1 - n^3}$, g) $g_n = \sqrt[n]{n + 5^n}$, h) $h_n = \dfrac{2^n + n!}{n^n - n^{1000}}$,

i) $i_n = \sqrt[n]{n^n - 5^n}$, j) $j_n = \dfrac{\sin(n)}{n}$, k) $k_n = \dfrac{5n^2 + (-1)^n}{8n}$, l) $l_n = \dfrac{6n + 2n^2 \cdot (-1)^n}{n^2}$.

**Megoldás.**

a) $a_n = \dfrac{3 + 16/n}{4 - 25/n} \to \dfrac34$.

b) $b_n = n\left(\sqrt{1 + \frac1n} - 1\right) = \dfrac{1}{\sqrt{1 + \frac1n} + 1} \to \dfrac12$ (gyöktelenítés, ld. 38. g).

c) $c_n = \dfrac{n^2 + 1}{n(n^3 + 1)} = \dfrac{1/n^2 + 1/n^4}{1 + 1/n^3} \to 0$.

d) $d_n = \dfrac{5 - 2n^2}{4 + n} \to -\infty$. Ha $n \ge 4$, akkor $5 - 2n^2 \le -n^2$ és $0 < 4 + n \le 2n$, így $d_n \le -\frac{n^2}{2n} = -\frac n2 \to -\infty$.

e) $e_n = 1 + \dfrac{\sin n}{n} \to 1$, mert $\left|\frac{\sin n}{n}\right| \le \frac1n \to 0$.

f) $f_n = \dfrac{2 + 3n^{-5/2}}{n^{-3} - 1} \to \dfrac{2}{-1} = -2$.

g) $5 = \sqrt[n]{5^n} \le \sqrt[n]{n + 5^n} \le \sqrt[n]{2 \cdot 5^n} = 5\sqrt[n]2 \to 5$, mert $n \le 5^n$. Tehát $g_n \to 5$.

h) $h_n \to 0$. Ha $n \ge 1001$, akkor $n^{n - 1000} \ge 2$, így $n^n - n^{1000} \ge \frac{n^n}{2} > 0$. Továbbá $n \ge 4$-re $2^n \le n!$, így a számláló legfeljebb $2 \cdot n!$. Tehát
$$0 < h_n \le \frac{2\,n!}{n^n/2} = 4 \cdot \frac{n!}{n^n} = 4 \cdot \frac1n \cdot \frac2n \cdots \frac nn \le \frac{4}{n} \to 0.$$

i) $i_n = \sqrt[n]{n^n - 5^n} = n\sqrt[n]{1 - (5/n)^n}$ (értelmes $n \ge 5$-re). Ha $n \ge 10$, akkor $(5/n)^n \le 2^{-n} \le \frac12$, így $\sqrt[n]{1 - (5/n)^n} \ge \sqrt[n]{1/2} \ge \frac12$, és $i_n \ge \frac n2 \to +\infty$.

j) $|j_n| = \left|\frac{\sin n}{n}\right| \le \frac1n \to 0$, tehát $j_n \to 0$.

k) $k_n \ge \dfrac{5n^2 - 1}{8n} \ge \dfrac{4n^2}{8n} = \dfrac n2 \to +\infty$.

l) $l_n = \dfrac6n + 2(-1)^n$: a páros indexű részsorozat $2$-höz, a páratlan indexű $-2$-höz tart, tehát $(l_n)$ **divergens** (nincs határértéke).

::: elmelet
**Elméleti háttér — a határérték-számítás alapeszközei.**

*1. Racionális törtek.* Ha $p(n) = a_kn^k + \dots$ és $q(n) = b_ln^l + \dots$ ($a_k, b_l \ne 0$), akkor $\frac{p(n)}{q(n)}$ határértéke $k < l$ esetén $0$, $k = l$ esetén $\frac{a_k}{b_l}$, $k > l$ esetén $\pm\infty$ ($\frac{a_k}{b_l}$ előjele szerint). Bizonyítás: osszunk $n^l$-lel (vagy $n^k$-val), és alkalmazzuk a műveleti tételeket, $\frac{1}{n^j} \to 0$ ($j \ge 1$).

*2. Korlátos szor nullsorozat.* Ha $|b_n| \le C$ és $a_n \to 0$, akkor $a_nb_n \to 0$, mert $|a_nb_n| \le C|a_n|$. Ez kezeli a $\sin n$, $(-1)^n$ típusú „oszcilláló” tényezőket ($\frac{\sin n}{n} \to 0$); figyeljünk, hogy a $\sin n$ maga divergens, tehát a műveleti tétel nem alkalmazható közvetlenül.

*3. Rendőrelv.* $n$-edik gyököknél a domináns taggal alulról és a tagok számával szorozva felülről becslünk ($5 \le \sqrt[n]{n + 5^n} \le 5\sqrt[n]2$).

*4. Nagyságrendek.* $n^k \ll a^n \ll n! \ll n^n$ ($a > 1$). Az $\frac{n!}{n^n} = \frac1n \cdot \frac2n \cdots \frac nn \le \frac1n$ becslés és a $2^n \le n!$ ($n \ge 4$) indukciós egyenlőtlenség elég a h) részhez.

*5. Részsorozatok és divergencia.* Konvergens sorozat minden részsorozata ugyanahhoz tart. Ezért ha két részsorozat különböző határértékű (az l) részben a páros és páratlan indexűek: $2$ és $-2$), a sorozat divergens. Megfordítva: ha a páros és a páratlan indexű részsorozat **ugyanahhoz** tart, akkor a sorozat is (mert e két részsorozat lefedi az összes indexet).

*6. Kiemelés $n$-edik gyökből.* $\sqrt[n]{n^n - 5^n} = n\sqrt[n]{1 - (5/n)^n}$: a domináns tagot kiemeljük, a maradékot alulról becsüljük. Hasonló alakok gyakran előfordulnak a gyökkritérium alkalmazásakor sorok konvergenciájánál.

*Ellenőrzés.* Egy kiszámolt határértéket érdemes nagy $n$-re numerikusan is megnézni: például $a_{1000} = \frac{3016}{3975} \approx 0{,}759$, közel a $\frac34$-hez.
:::

## 54. feladat

Bizonyítsuk be, hogy ha $|a_{n+1} - a_n| \le 2^{-n}$ minden $n$-re, akkor $(a_n)$ konvergens.

**Megoldás.**

A Cauchy-kritériumot ellenőrizzük. Ha $m > n$, akkor a háromszög-egyenlőtlenség és a mértani sor összegképlete szerint
$$|a_m - a_n| \le \sum_{k=n}^{m-1} |a_{k+1} - a_k| \le \sum_{k=n}^{m-1} 2^{-k} < \sum_{k=n}^{\infty} 2^{-k} = 2^{1-n}.$$
Adott $\varepsilon > 0$-hoz válasszunk $N$-et úgy, hogy $2^{1-N} < \varepsilon$. Ekkor minden $m > n \ge N$-re $|a_m - a_n| < \varepsilon$, tehát $(a_n)$ Cauchy-sorozat, így ($\mathbb{R}$ teljessége miatt) konvergens. $\blacksquare$

::: elmelet
**Elméleti háttér — Cauchy-kritérium, teleszkopikus becslés, mértani sor.**

*A Cauchy-kritérium.* Egy valós sorozat pontosan akkor konvergens, ha Cauchy-sorozat. A „$\Leftarrow$” irány bizonyításának vázlata: (1) a Cauchy-sorozat korlátos ($\varepsilon = 1$-gyel); (2) a Bolzano–Weierstrass-tétel szerint van konvergens részsorozata, $a_{n_k} \to a$; (3) a Cauchy-tulajdonság miatt az egész sorozat is $a$-hoz tart: $|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a|$, és mindkét tag kicsi, ha $n$ és $k$ elég nagy. A kritérium a $\mathbb{R}$ teljességén múlik: $\mathbb{Q}$-ban a $\sqrt2$ tizedes közelítései Cauchy-sorozatot alkotnak, mégsincs racionális határértékük.

*Teleszkopikus becslés.* $a_m - a_n = \sum_{k=n}^{m-1}(a_{k+1} - a_k)$, így a háromszög-egyenlőtlenséggel
$$|a_m - a_n| \le \sum_{k=n}^{m-1}|a_{k+1} - a_k|.$$
Ha a jobb oldali tagok egy **konvergens sor** tagjaival becsülhetők, akkor a jobb oldal a sor maradéka, amely $0$-hoz tart.

*Mértani sor.* $\sum_{k=n}^\infty q^k = \frac{q^n}{1 - q}$ ($|q| < 1$); itt $q = \frac12$-del $\sum_{k \ge n}2^{-k} = 2^{1-n}$. A $2^{1-N} < \varepsilon$ küszöb $N > 1 + \log_2\frac1\varepsilon$.

*Általánosítás (abszolút konvergencia).* Ha $\sum |a_{k+1} - a_k| < \infty$, akkor $(a_n)$ konvergens — ez a sorok elméletében az **abszolút konvergenciából következik a konvergencia** tétel. Fordítva nem igaz: a $\sum \frac{(-1)^k}{k}$ sor részletösszegei konvergálnak, pedig $\sum \frac1k = \infty$.

*Kontrakció.* Ha $|a_{n+1} - a_n| \le q\,|a_n - a_{n-1}|$ valamely $q < 1$-re, akkor $|a_{n+1} - a_n| \le q^{n-1}|a_2 - a_1|$, és a fenti érvelés szerint a sorozat konvergens. Ez a **Banach-féle fixponttétel** magja, amely rekurzív sorozatok ($a_{n+1} = f(a_n)$, $|f'| \le q < 1$) konvergenciáját biztosítja.
:::

## Röpzhra

**Definíciók:** megszámlálhatóan végtelen halmaz, megszámlálható halmaz, algebrai/transzcendens szám.

**Tételek:** határérték és alapműveletek, Bolzano–Weierstrass-tétel és a hozzá szükséges lemma, Cauchy-kritérium.
