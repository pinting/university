# Analízis 1 – 2. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Osztályozás:** 2 db. zh (várható időpontok: 1. ZH. évfolyam vagy csoportzh (a tanteremhelyzet függvényében): november 3-a kedd, 14:00–16:00 (vagy 3-a kedd 16:15–18:00), 2. ZH. csoportzh: december 9-e szerda, 10:15–12:00), $6 \le$ röpzh $\le 10$, a legrosszabb kettő eredményét eldobom, gyakorlati jegy = 40% 1.zh + 40% 2.zh + 20% rzh ± (órai munka).
>
> **Javítási/pótlási lehetőség:** a pótzhn (várható időpont: december 17-e csütörtök, 14:00–16:00).
>
> A gyakorlatokon való részvétel kötelező. Ha valaki a gyakorlatok 1/4-énél (azaz 6 alkalomnál) többről hiányzik, akkor a gyakorlatvezető csak rendkívüli, igazolt esetben, többletfeladatok teljesítésének előírása után adhat gyakorlati jegyet. Ha valaki a gyakorlatoknak több mint a harmadánál (azaz 8 alkalomnál) többről hiányzik, akkor a gyakorlat érvénytelen.

## 11. feladat

A Cantor-tulajdonságban megköveteltük, hogy az egymásba skatulyázott intervallumsorozat korlátos, zárt és nemüres intervallumokból álljon. Ellenőrizzük, hogy a Cantor-tulajdonság állítása nem marad igaz, ha bármelyik feltételt elhagyjuk.

**Megoldás.**

A Cantor-tulajdonság: ha $I_1 \supseteq I_2 \supseteq \dots$ korlátos, zárt, nemüres intervallumok, akkor $\bigcap_{n} I_n \neq \emptyset$. Minden feltételhez mutatunk ellenpéldát, amelyben a többi feltétel teljesül, de a metszet üres.

- **Korlátosság elhagyása:** $I_n = [n, \infty)$. Zártak, nemüresek, egymásba skatulyázottak, de $\bigcap_n I_n = \emptyset$: bármely $x \in \mathbb{R}$-hez az arkhimédészi tulajdonság szerint van $n > x$, és $x \notin I_n$.
- **Zártság elhagyása:** $I_n = (0, \frac{1}{n}]$ (vagy $(0, \frac1n)$). Korlátosak, nemüresek, egymásba skatulyázottak, de $\bigcap_n I_n = \emptyset$: ha $x \le 0$, akkor $x \notin I_1$; ha $x > 0$, akkor van $n$, hogy $\frac1n < x$, és $x \notin I_n$.
- **Nemüresség elhagyása:** ha valamelyik $I_n = \emptyset$ (pl. az „$[1, 0]$" intervallum), akkor a metszet nyilván üres. Ez triviális, de mutatja, hogy a feltétel nem hagyható el.

(Megjegyzés: az *egymásba skatulyázottság* is lényeges: $I_n = [n, n]$ korlátos, zárt, nemüres intervallumok, de metszetük üres.)

## 12. feladat

Bizonyítsuk be, hogy $\lg 6$ irracionális!

**Megoldás.**

$\lg 6 = \log_{10} 6 > 0$, mert $6 > 1$. Tegyük fel, hogy $\lg 6 = \frac{p}{q}$, ahol $p, q$ pozitív egészek. Ekkor $10^{p/q} = 6$, azaz
$$10^p = 6^q \iff 2^p \cdot 5^p = 2^q \cdot 3^q.$$
Mivel $q \ge 1$, a jobb oldal osztható 3-mal, a bal oldal viszont nem (a prímtényezős felbontás egyértelmű, és abban csak a 2 és az 5 szerepel). Ellentmondás, tehát $\lg 6$ irracionális. $\blacksquare$

## 13. feladat

30 gyerek egy $5 \times 6$-os téglalap alakú rács pontjaiban áll. Minden sorból kiválasztjuk a legmagasabbat, majd ezek közül a legalacsonyabbat. Legyen ez a gyerek $A$. Ezután minden oszlopból kiválasztjuk a legalacsonyabbat, majd ezek közül a legmagasabbat. Legyen ez a gyerek $B$. Hogyan viszonyul egymáshoz $A$ és $B$ magassága?

**Megoldás.**

**$B$ nem magasabb $A$-nál**, azaz $m(B) \le m(A)$ (ahol $m$ a magasság).

Legyen $A$ az $i$-edik sorban, $B$ a $j$-edik oszlopban, és legyen $C$ az $i$-edik sor és a $j$-edik oszlop metszéspontjában álló gyerek. Mivel $A$ a saját sorának legmagasabbja, $m(C) \le m(A)$. Mivel $B$ a saját oszlopának legalacsonyabbja, $m(B) \le m(C)$. Így
$$m(B) \le m(C) \le m(A).$$

Mindkét eset előfordulhat. Ha minden gyerek egyforma magas, egyenlőség áll. Szigorú egyenlőtlenségre példa: az $(i, j)$ pozícióban álló gyerek legyen 2 egység magas, ha $i + j$ páratlan, és 1 egység, ha $i + j$ páros (sakktábla-mintázat). Ekkor minden sorban a legmagasabb 2 egység, tehát $m(A) = 2$; minden oszlopban a legalacsonyabb 1 egység, tehát $m(B) = 1 < 2$. (Különböző magasságokkal is elérhető: kissé „zavarjuk meg" a magasságokat.) Ha minden magasság különböző, akkor vagy $A = B$, vagy $B$ alacsonyabb.

## 14. feladat

Ha létezik, akkor $\sup H$ egyértelmű.

**Megoldás.**

A szuprémum a legkisebb felső korlát. Tegyük fel, hogy $s$ és $s'$ is szuprémuma $H$-nak. A trichotómia szerint $s < s'$, $s = s'$ vagy $s > s'$.

Ha $s < s'$ volna, akkor $s$ olyan felső korlát lenne, amely kisebb $s'$-nél, ellentmondva annak, hogy $s'$ a *legkisebb* felső korlát. Ugyanígy $s > s'$ sem lehet. Tehát $s = s'$. $\blacksquare$

## 15. feladat

Bizonyítsuk be, hogy $x^2 + \frac{1}{x^2} \ge 2$, ha $x \neq 0$.

**Megoldás.**

Ha $x \ne 0$, akkor
$$x^2 + \frac{1}{x^2} - 2 = \left(x - \frac{1}{x}\right)^2 \ge 0,$$
amiből az állítás következik. Egyenlőség pontosan akkor van, ha $x = \frac1x$, azaz $x = \pm 1$. (Ugyanez a számtani–mértani közép egyenlőtlenségből: $\frac{x^2 + 1/x^2}{2} \ge \sqrt{x^2 \cdot \frac{1}{x^2}} = 1$.)

## 16. feladat

Bizonyítsuk be, hogy a) $n! \le n^n$, b) $n! \le \left(\frac{n+1}{2}\right)^n$.

**Megoldás.**

a) $n! = 1 \cdot 2 \cdots n$, és minden tényező legfeljebb $n$, így $n! \le n \cdot n \cdots n = n^n$.

b) A számtani–mértani közép egyenlőtlenség az $1, 2, \dots, n$ számokra:
$$\sqrt[n]{1 \cdot 2 \cdots n} \le \frac{1 + 2 + \dots + n}{n} = \frac{n(n+1)/2}{n} = \frac{n+1}{2}.$$
Mindkét oldalt $n$-edik hatványra emelve: $n! \le \left(\frac{n+1}{2}\right)^n$. $\blacksquare$

(Másik bizonyítás: párosítsuk a $k$ és $n + 1 - k$ tényezőket; $k(n+1-k) \le \left(\frac{n+1}{2}\right)^2$, és $(n!)^2 = \prod_{k=1}^n k(n+1-k)$.)

## 17. feladat

Mutassuk meg, hogy ha $A, B \subset \mathbb{R}$, $A \neq \emptyset$, $B \neq \emptyset$, akkor $\sup (A + B) = \sup A + \sup B$.

**Megoldás.**

Itt $A + B = \{a + b : a \in A,\ b \in B\}$.

*Ha $A$ és $B$ felülről korlátos*, legyen $s = \sup A$, $t = \sup B$.

- $s + t$ felső korlát: minden $a \in A$, $b \in B$ esetén $a + b \le s + t$.
- Legkisebb: legyen $\varepsilon > 0$. A szuprémum definíciója miatt van $a \in A$, amelyre $a > s - \frac{\varepsilon}{2}$, és van $b \in B$, amelyre $b > t - \frac{\varepsilon}{2}$. Ekkor $a + b > s + t - \varepsilon$, tehát $s + t - \varepsilon$ nem felső korlát.

Így $\sup(A + B) = s + t$.

*Ha pl. $A$ felülről nem korlátos*, akkor $A + B$ sem: rögzített $b \in B$ és tetszőleges $K$ esetén van $a \in A$, $a > K - b$, és $a + b > K$. Ekkor mindkét oldal $+\infty$ (a bővített számegyenesen), tehát az egyenlőség ebben az értelemben is fennáll. $\blacksquare$

## 18. feladat

a) Bizonyítsuk be, hogy $(1 + x)^r \le 1 + rx$, ha $r \in \mathbb{Q}$, $0 < r < 1$ és $x \ge -1$.

b) Bizonyítsuk be, hogy $(1 + x)^r \ge 1 + rx$, ha $r \in \mathbb{Q}$, $r > 1$ és $x \ge -1$.

**Megoldás.**

a) Legyen $r = \frac{p}{q}$, ahol $0 < p < q$ egészek, és $x \ge -1$, így $1 + x \ge 0$. Alkalmazzuk a számtani–mértani közép egyenlőtlenséget a következő $q$ darab nemnegatív számra: $p$ darab $(1 + x)$ és $q - p$ darab $1$:
$$(1+x)^{p/q} = \sqrt[q]{(1+x)^p \cdot 1^{q-p}} \le \frac{p(1+x) + (q - p)}{q} = 1 + \frac{p}{q}x = 1 + rx.$$

b) Legyen $r > 1$ racionális, $x \ge -1$.

- Ha $1 + rx < 0$, akkor a jobb oldal negatív, a bal oldal $(1+x)^r \ge 0$, kész.
- Ha $1 + rx \ge 0$: legyen $y = rx \ge -1$. Az a) részt az $\frac{1}{r} \in (0, 1)$ racionális kitevővel és $y$-nal alkalmazva:
$$(1 + y)^{1/r} \le 1 + \frac{y}{r} = 1 + x.$$
Mindkét oldal nemnegatív, és a $t \mapsto t^r$ függvény $[0, \infty)$-en monoton nő, így $r$-edik hatványra emelve $1 + y \le (1 + x)^r$, azaz $1 + rx \le (1 + x)^r$. $\blacksquare$

## 19. feladat

Mutassuk meg, hogy az arkhimédészi és a Cantor-tulajdonságokból / axiómákból levezethető a teljességi tulajdonság / axióma.

**Megoldás.**

Tegyük fel, hogy a rendezett testben teljesül az arkhimédészi és a Cantor-tulajdonság. Legyen $H \neq \emptyset$ felülről korlátos; megmutatjuk, hogy van szuprémuma.

**Felezéses eljárás.** Legyen $h \in H$ és $a_0 = h - 1$ (ez *nem* felső korlát), $b_0$ pedig egy felső korlát. Ha $[a_n, b_n]$ már adott, legyen $c = \frac{a_n + b_n}{2}$; ha $c$ felső korlát, akkor $[a_{n+1}, b_{n+1}] = [a_n, c]$, különben $[a_{n+1}, b_{n+1}] = [c, b_n]$. Indukcióval minden $n$-re: $a_n$ nem felső korlát, $b_n$ felső korlát, és $b_n - a_n = \frac{b_0 - a_0}{2^n}$.

Az intervallumok korlátosak, zártak, nemüresek és egymásba skatulyázottak, így a Cantor-tulajdonság miatt van $\xi \in \bigcap_n [a_n, b_n]$.

Az **arkhimédészi tulajdonság** miatt bármely $\delta > 0$-hoz van $n$, amelyre $\frac{b_0 - a_0}{2^n} < \delta$ (hiszen $2^n \ge n$, és van $n > \frac{b_0 - a_0}{\delta}$).

- **$\xi$ felső korlát:** ha volna $h \in H$, $h > \xi$, akkor $\delta = h - \xi$-hez választva $n$-et: $b_n \le \xi + (b_n - a_n) < \xi + \delta = h$, tehát $b_n$ nem volna felső korlát – ellentmondás.
- **$\xi$ a legkisebb felső korlát:** ha $\eta < \xi$ is felső korlát volna, akkor $\delta = \xi - \eta$-hoz választva $n$-et: $a_n \ge \xi - (b_n - a_n) > \xi - \delta = \eta$. Mivel $\eta$ felső korlát, az $a_n > \eta$ is az lenne – ellentmondás.

Tehát $\xi = \sup H$. $\blacksquare$

(Az arkhimédészi tulajdonság nem hagyható el: nem arkhimédészi rendezett testekben a felezett intervallumok hossza nem tart 0-hoz.)

## 20. feladat

Adott felszínű téglatestek közül melyiknek a legnagyobb a térfogata?

**Megoldás.**

Legyenek az élek $a, b, c > 0$, a felszín $F = 2(ab + bc + ca)$ rögzített, a térfogat $V = abc$. A számtani–mértani közép egyenlőtlenség az $ab$, $bc$, $ca$ számokra:
$$V^{2/3} = \sqrt[3]{ab \cdot bc \cdot ca} \le \frac{ab + bc + ca}{3} = \frac{F}{6}.$$
Tehát $V \le \left(\frac{F}{6}\right)^{3/2}$, és egyenlőség pontosan akkor áll, ha $ab = bc = ca$, azaz $a = b = c$. **Adott felszínű téglatestek közül a kocka térfogata a legnagyobb** (élhossza $\sqrt{F/6}$).

## 21. feladat

Mutassuk meg, hogy $100^n < n!$, ha $n$ elegendően nagy.

**Megoldás.**

**Explicit küszöb:** $n > 20\,000$ esetén $100^n < n!$.

Az $n!$ szorzatban a $\lceil n/2 \rceil \le k \le n$ tényezők száma legalább $\frac{n}{2}$, és mindegyikük legalább $\frac{n}{2}$; a többi tényező legalább $1$. Így
$$n! \ge \left(\frac{n}{2}\right)^{n/2}.$$
Ha $n > 20\,000$, akkor $\frac{n}{2} > 10\,000 = 100^2$, így
$$n! \ge \left(\frac{n}{2}\right)^{n/2} > \left(100^2\right)^{n/2} = 100^n. \qquad \blacksquare$$

(Megjegyzés: a $c_n = \frac{100^n}{n!}$ sorozatra $\frac{c_{n+1}}{c_n} = \frac{100}{n+1}$, ami $n \ge 199$-re legfeljebb $\frac12$; így $c_n \to 0$, ami szintén mutatja az állítást, csak kevésbé explicit küszöbbel.)

## 22. feladat

Keressünk olyan $N_0$ számot, hogy $\forall n > N_0$ esetén teljesüljön, hogy

a) $\left(1 + \frac{1}{n}\right)^n \ge 2$, b) $\sqrt[n]{2} < 1{,}01$.

**Megoldás.**

a) A Bernoulli-egyenlőtlenség szerint $\left(1 + \frac1n\right)^n \ge 1 + n \cdot \frac{1}{n} = 2$ **minden** $n \ge 1$-re, tehát bármely $N_0$ (pl. $N_0 = 0$) megfelel.

b) $\sqrt[n]{2} < 1{,}01 \iff 2 < 1{,}01^n$. A Bernoulli-egyenlőtlenség szerint $1{,}01^n \ge 1 + \frac{n}{100}$, ami $n > 100$ esetén $2$-nél nagyobb. Tehát **$N_0 = 100$ megfelel.**

(A legjobb küszöb: $1{,}01^n > 2 \iff n > \frac{\ln 2}{\ln 1{,}01} \approx 69{,}66$, tehát $n \ge 70$-re teljesül, $N_0 = 69$. A feladat azonban csak *egy* megfelelő $N_0$-t kér.)

## Röpzhra

Cantor-féle tulajdonság/axióma, számtani/mértani/harmonikus közepek definíciója és a köztük fennálló egyenlőtlenségek, Bernoulli-egyenlőtlenség.
