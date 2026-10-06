# Analízis 1 – 1. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Osztályozás:** 2 db. zh (várható időpontok: 1. ZH. évfolyam vagy csoportzh (a tanteremhelyzet függvényében): november 3-a kedd, 14:00–16:00 (vagy 3-a kedd 16:15–18:00), 2. ZH. csoportzh: december 9-e szerda, 10:15–12:00), $6 \le$ röpzh $\le 10$, a legrosszabb kettő eredményét eldobom, gyakorlati jegy = 40% 1.zh + 40% 2.zh + 20% rzh ± (órai munka).
>
> **Javítási/pótlási lehetőség:** a pótzhn (várható időpont: december 17-e csütörtök, 14:00–16:00).
>
> A gyakorlatokon való részvétel kötelező. Ha valaki a gyakorlatok 1/4-énél (azaz 6 alkalomnál) többről hiányzik, akkor a gyakorlatvezető csak rendkívüli, igazolt esetben, többletfeladatok teljesítésének előírása után adhat gyakorlati jegyet. Ha valaki a gyakorlatoknak több mint a harmadánál (azaz 8 alkalomnál) többről hiányzik, akkor a gyakorlat érvénytelen.

## 1. feladat

Az egyenlőtlenségre vonatkozó definíciókat használva mutassuk meg, hogy

a) $0 = |x|$ acsa $x = 0$;

b) $|a \cdot b| = |a| \cdot |b|$;

c) $|x - a| < \varepsilon$ acsa $a - \varepsilon < x < a + \varepsilon$.

**Megoldás.**

Az abszolút érték definíciója: $|x| = x$, ha $x \ge 0$, és $|x| = -x$, ha $x < 0$. Ebből azonnal $|x| \ge 0$ minden $x$-re.

a) Ha $x = 0$, akkor $x \ge 0$ miatt $|x| = x = 0$. Megfordítva, legyen $|x| = 0$. Ha $x \ge 0$, akkor $x = |x| = 0$. Ha $x < 0$ volna, akkor $|x| = -x > 0$ lenne, ellentmondás. Tehát $x = 0$.

b) Esetszétválasztás az előjelek szerint.

- $a \ge 0$, $b \ge 0$: ekkor $ab \ge 0$, így $|ab| = ab = |a|\,|b|$.
- $a \ge 0$, $b < 0$: ekkor $ab \le 0$, így $|ab| = -ab = a \cdot (-b) = |a|\,|b|$. (Ha $ab = 0$, akkor $|ab| = 0 = -ab$ is igaz.)
- $a < 0$, $b \ge 0$: szimmetrikus az előzővel: $|ab| = -ab = (-a)\,b = |a|\,|b|$.
- $a < 0$, $b < 0$: ekkor $ab > 0$, így $|ab| = ab = (-a)(-b) = |a|\,|b|$.

c) Először belátjuk: ha $\varepsilon > 0$, akkor $|y| < \varepsilon \iff -\varepsilon < y < \varepsilon$.

Ha $y \ge 0$, akkor $|y| = y$, és $-\varepsilon < 0 \le y$ mindig teljesül, tehát mindkét oldal $y < \varepsilon$-nal ekvivalens. Ha $y < 0$, akkor $|y| = -y$, és $y < 0 < \varepsilon$ mindig teljesül, tehát mindkét oldal $-y < \varepsilon$, azaz $y > -\varepsilon$ állítással ekvivalens.

Ezt $y = x - a$-ra alkalmazva:
$$|x - a| < \varepsilon \iff -\varepsilon < x - a < \varepsilon \iff a - \varepsilon < x < a + \varepsilon,$$
ahol az utolsó lépésben mindhárom oldalhoz $a$-t adtunk (az egyenlőtlenség ekkor megmarad). $\blacksquare$

::: elmelet
**Elméleti háttér — abszolút érték és esetszétválasztás.** Az abszolút értéket esetekkel definiáljuk ($|x| = x$, ha $x \ge 0$; $|x| = -x$, ha $x < 0$), ezért a tulajdonságait is esetszétválasztással bizonyítjuk, a rendezési axiómák (például: egyenlőtlenség mindkét oldalához ugyanazt adva az egyenlőtlenség megmarad) felhasználásával. A c) rész a **távolság** nyelvén: $|x - a| < \varepsilon$ azt jelenti, hogy $x$ az $a$ körüli $\varepsilon$ sugarú nyílt intervallumban, a $K_\varepsilon(a) = (a - \varepsilon, a + \varepsilon)$ környezetben van — ez lesz a határérték-definíciók alapja.
:::

## 2. feladat

Legyen $a, b$ racionális, $c, d$ irracionális. Mit mondhatunk $a + b$, $a + c$, $c + d$, $ab$, $ac$ és $cd$-ről?

**Megoldás.**

- $a + b \in \mathbb{Q}$ és $ab \in \mathbb{Q}$, mert $\mathbb{Q}$ test, zárt az összeadásra és a szorzásra.
- $a + c$ **mindig irracionális**: ha $a + c = r \in \mathbb{Q}$ volna, akkor $c = r - a \in \mathbb{Q}$ lenne, ellentmondás.
- $ac$: ha $a = 0$, akkor $ac = 0$ racionális; ha $a \neq 0$, akkor $ac$ **irracionális**, mert $ac = r \in \mathbb{Q}$ esetén $c = r/a \in \mathbb{Q}$ volna.
- $c + d$ **lehet racionális és irracionális is**: $\sqrt{2} + (-\sqrt{2}) = 0 \in \mathbb{Q}$, míg $\sqrt{2} + \sqrt{2} = 2\sqrt{2} \notin \mathbb{Q}$ (az előző pont szerint, hiszen $2 \neq 0$ racionális).
- $cd$ **szintén lehet mindkettő**: $\sqrt{2}\cdot\sqrt{2} = 2 \in \mathbb{Q}$, míg $\sqrt{2}\cdot\sqrt{3} = \sqrt{6} \notin \mathbb{Q}$.

Az utóbbi igazolása: ha $\sqrt{6} = p/q$ lenne ($p, q \in \mathbb{N}$, relatív prímek), akkor $p^2 = 6q^2$, így $2 \mid p^2$, tehát $2 \mid p$, $p = 2p'$, és $4p'^2 = 6q^2$, azaz $2p'^2 = 3q^2$. Ekkor $2 \mid 3q^2$, tehát $2 \mid q$ – ellentmondás a relatív prímséggel.

::: elmelet
**Elméleti háttér — $\mathbb{Q}$ test, indirekt bizonyítás.** A racionális számok **testet** alkotnak: zártak az összeadásra, kivonásra, szorzásra és (nem nulla számmal való) osztásra. Ezért ha egy racionális és egy irracionális szám összege (illetve nem nulla racionálissal vett szorzata) racionális volna, a művelet „visszafordításával” az irracionális számot racionálisként fejeznénk ki — ellentmondás. Két irracionális szám esetén nincs ilyen zártság (az irracionálisak nem alkotnak testet), ezért konkrét példák mutatják, hogy mindkét eset előfordulhat.
:::

## 3. feladat

Mutassuk meg, hogy $2^n > n^2$, ha $n \ge N_0$. Adjuk meg a lehető legkisebb $N_0$-t!

**Megoldás.**

Az első néhány érték:

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $2^n$ | 2 | 4 | 8 | 16 | 32 | 64 |
| $n^2$ | 1 | 4 | 9 | 16 | 25 | 36 |

Tehát $n = 2, 3, 4$ esetén nem igaz az állítás, $n = 5$-re igaz. Teljes indukcióval megmutatjuk, hogy minden $n \ge 5$-re $2^n > n^2$.

*Kezdőlépés:* $n = 5$: $32 > 25$.

*Indukciós lépés:* tegyük fel, hogy $2^n > n^2$ valamely $n \ge 5$-re. Ekkor
$$2^{n+1} = 2 \cdot 2^n > 2n^2 = n^2 + n^2 \ge n^2 + 2n + 1 = (n+1)^2,$$
ahol felhasználtuk, hogy $n^2 \ge 2n + 1$, ami $(n-1)^2 \ge 2$ miatt minden $n \ge 3$-ra igaz.

Mivel $n = 4$-re az egyenlőtlenség nem teljesül, a lehető legkisebb küszöb $N_0 = 5$.

::: elmelet
**Elméleti háttér — teljes indukció tetszőleges kezdőponttól.** Ha $P(N_0)$ igaz, és minden $n \ge N_0$-ra $P(n) \Rightarrow P(n+1)$, akkor $P(n)$ minden $n \ge N_0$-ra igaz. Az indukciós lépésben gyakran egy **segédegyenlőtlenség** kell (itt $n^2 \ge 2n + 1$), amely csak elég nagy $n$-re igaz — ez határozza meg, honnan indulhat az indukció. A küszöb minimalitásához egy ellenpélda kell közvetlenül alatta ($n = 4$).
:::

## 4. feladat

Bizonyítsuk be az úgynevezett *binomiális tételt*, azaz hogy
$$(a + b)^n = \binom{n}{0} a^n + \binom{n}{1} a^{n-1} b + \dots + \binom{n}{n} b^n.$$

**Megoldás.**

Először a **Pascal-azonosságot** igazoljuk: $1 \le k \le n$ esetén $\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}$. Valóban,
$$\binom{n}{k} + \binom{n}{k-1} = \frac{n!}{k!\,(n-k)!} + \frac{n!}{(k-1)!\,(n-k+1)!} = \frac{n!\,\big((n-k+1) + k\big)}{k!\,(n-k+1)!} = \frac{(n+1)!}{k!\,(n+1-k)!}.$$

A tételt $n$ szerinti indukcióval bizonyítjuk; tömören: $(a+b)^n = \sum_{k=0}^{n} \binom{n}{k} a^{n-k} b^k$.

*Kezdőlépés:* $n = 1$: $(a+b)^1 = \binom{1}{0}a + \binom{1}{1}b$. (Az $n = 0$ eset is igaz: $1 = \binom{0}{0}$.)

*Indukciós lépés:* tegyük fel az állítást $n$-re. Ekkor
$$(a+b)^{n+1} = (a+b)\sum_{k=0}^{n}\binom{n}{k}a^{n-k}b^k = \sum_{k=0}^{n}\binom{n}{k}a^{n+1-k}b^k + \sum_{k=0}^{n}\binom{n}{k}a^{n-k}b^{k+1}.$$
A második összegben $j = k + 1$ új indexet bevezetve az $\sum_{j=1}^{n+1}\binom{n}{j-1}a^{n+1-j}b^j$ alakot kapjuk. A két összeget összevonva:
$$(a+b)^{n+1} = a^{n+1} + \sum_{k=1}^{n}\left[\binom{n}{k} + \binom{n}{k-1}\right]a^{n+1-k}b^k + b^{n+1} = \sum_{k=0}^{n+1}\binom{n+1}{k}a^{n+1-k}b^k,$$
a Pascal-azonosság és $\binom{n+1}{0} = \binom{n+1}{n+1} = 1$ miatt. $\blacksquare$

::: elmelet
**Elméleti háttér — indukció és indexeltolás.** A binomiális tétel indukciós bizonyításának két kulcsa: (1) a $(a+b)$-vel való szorzás két összegre bontja a kifejezést, és az egyikben az összegzési index eltolásával ($j = k+1$) azonos hatványokat gyűjtünk össze; (2) az együtthatók összeadására a **Pascal-azonosság** ($\binom nk + \binom n{k-1} = \binom{n+1}{k}$) adja a következő sor együtthatóit. Kombinatorikusan: $x^{n-k}y^k$ együtthatója annyi, ahányféleképpen az $n$ tényezőből kiválasztható az a $k$, amelyből $y$-t veszünk.
:::

## 5. feladat

Döntsük el az alábbi halmazokról, hogy alulról korlátosak-e, felülről korlátosak-e, korlátosak-e, és hogy van-e legkisebb illetve legnagyobb elemük?

a) prímszámok halmaza, b) pozitív számok halmaza, c) $[-5, -2)$, d) $\{\frac{1}{n} : n \in \mathbb{N}\}$, e) $\{x \in \mathbb{R} : x \le 73\}$, f) $\{x \in \mathbb{Q} : x \le 73\}$, g) $\{x \in \mathbb{R} : x \le \sqrt{2}\}$, h) $\{x \in \mathbb{Q} : x \le \sqrt{2}\}$.

**Megoldás.**

Jelölés: „a.k." = alulról korlátos, „f.k." = felülről korlátos.

a) **Prímszámok:** a.k. (pl. 2 alsó korlát), nem f.k. (végtelen sok prím van – Eukleidész), tehát nem korlátos. Legkisebb elem: $2$; legnagyobb nincs.

b) **Pozitív számok** $(0, \infty)$: a.k. (0 alsó korlát), nem f.k. (az arkhimédészi tulajdonság szerint bármely $K$-nál van nagyobb természetes szám), nem korlátos. Legkisebb elem nincs (ha $x > 0$, akkor $x/2$ kisebb pozitív szám), legnagyobb sincs.

c) $[-5, -2)$: korlátos. Minimum: $-5$. Maximum nincs: ha $x \in [-5, -2)$, akkor $\frac{x + (-2)}{2}$ is a halmazban van, és nagyobb $x$-nél. (A szuprémum $-2$.)

d) $\{\frac{1}{n} : n \in \mathbb{N}\}$: korlátos ($0 < \frac1n \le 1$). Maximum: $1$ ($n = 1$). Minimum nincs: $\frac{1}{n+1} < \frac{1}{n}$. Az infimum $0$: ha $\varepsilon > 0$, az **arkhimédészi tulajdonság** miatt van $n > 1/\varepsilon$, azaz $\frac{1}{n} < \varepsilon$, így semmilyen pozitív szám nem alsó korlát.

e) $\{x \in \mathbb{R} : x \le 73\} = (-\infty, 73]$: f.k., nem a.k., maximum $73$, minimum nincs.

f) $\{x \in \mathbb{Q} : x \le 73\}$: f.k., nem a.k. (tartalmazza a $-n$ egészeket), maximum $73$ (hiszen $73 \in \mathbb{Q}$), minimum nincs.

g) $\{x \in \mathbb{R} : x \le \sqrt{2}\}$: f.k., nem a.k., maximum $\sqrt{2}$, minimum nincs.

h) $\{x \in \mathbb{Q} : x \le \sqrt{2}\}$: f.k. (pl. $\sqrt2$ vagy $2$ felső korlát), nem a.k., minimum nincs. **Maximum sincs:** $\sqrt{2} \notin \mathbb{Q}$, így a halmaz minden $q$ eleme $q < \sqrt{2}$, és $\mathbb{Q}$ sűrűsége miatt van $q'$ racionális szám, amelyre $q < q' < \sqrt{2}$. A szuprémum $\sqrt{2}$, de az nem eleme a halmaznak.

::: elmelet
**Elméleti háttér — korlátok, minimum, maximum.** $K$ **felső korlát**, ha $\forall x \in H: x \le K$; a **maximum** olyan felső korlát, amely eleme $H$-nak. Nemlétezést mindig úgy bizonyítunk, hogy minden elemhez mutatunk nagyobbat (illetve kisebbet) a halmazban. Két alapeszköz: az **arkhimédészi tulajdonság** (bármely valós számnál van nagyobb természetes szám, ekvivalensen $\forall \varepsilon > 0\ \exists n: \frac1n < \varepsilon$) és $\mathbb{Q}$ **sűrűsége** (bármely két valós szám között van racionális). Az utóbbi miatt nincs a $\{q \in \mathbb Q : q \le \sqrt2\}$ halmaznak maximuma.
:::

## 6. feladat

Legyen $H$ egy valós számokból álló halmaz. A $H$ halmaz milyen tulajdonságait fejezik ki az alábbi állítások?

a) $(\forall x \in \mathbb{R})(\exists y \in H)(x < y)$;

b) $(\forall x \in H)(\exists y \in \mathbb{R})(x < y)$;

c) $(\forall x \in H)(\exists y \in H)(x < y)$.

**Megoldás.**

a) Bármely valós számnál van nagyobb eleme $H$-nak: **$H$ felülről nem korlátos** (és így nem üres).

b) $H$ minden eleménél van nagyobb valós szám – ez **minden** $H \subset \mathbb{R}$-re igaz (pl. $y = x + 1$), tehát **semmit sem mond** $H$-ról.

c) $H$ minden eleménél van nagyobb eleme $H$-nak: **$H$-nak nincs legnagyobb eleme** (maximuma). Pl. $(-\infty, 1)$ teljesíti, $(-\infty, 1]$ nem. (Ha $H \neq \emptyset$, ebből következik, hogy $H$ végtelen; az üres halmaz üresen teljesíti.)

::: elmelet
**Elméleti háttér — kvantorok sorrendje.** A kvantoros állítás jelentését az határozza meg, hogy **mi függhet mitől**: $\forall x\ \exists y$ esetén $y$ választása függhet $x$-től. Az a) rész a „felülről korlátos” definíciójának ($\exists K\ \forall y \in H: y \le K$) tagadása. A b) részben az $y$-t $\mathbb{R}$-ből választjuk, ezért mindig van ($x + 1$). A c) rész a maximum létezésének ($\exists y \in H\ \forall x \in H: x \le y$) tagadása — a kvantorok tagadáskor felcserélődnek.
:::

## 7. feladat

Legyen $A = (0, 1)$, $B = [-\sqrt{2}, \sqrt{2}]$,
$$C^+ = \left\{\frac{1}{2^n} + \frac{1}{2^m} : n \in \mathbb{N},\ m \in \mathbb{N}\right\}, \quad C^- = \left\{\frac{1}{2^n} - \frac{1}{2^m} : n \in \mathbb{N},\ m \in \mathbb{N}\right\},$$
$$D = \left\{\frac{1}{n} + m : n \in \mathbb{N},\ m \in \mathbb{N}\right\}, \quad E = \left\{\frac{1}{n} : n \in \mathbb{N}\right\}, \quad F = \left\{-\frac{1}{n} : n \in \mathbb{N}\right\}.$$
Határozzuk meg – amennyiben léteznek – a fenti halmazok szuprémumát, infimumát, maximumát, minimumát.

**Megoldás.**

Itt $\mathbb{N} = \{1, 2, 3, \dots\}$.

**$A = (0, 1)$:** $\sup A = 1$, $\inf A = 0$, maximum és minimum nincs (nyílt intervallum: $x \in A$ esetén $\frac{x+1}{2}$ és $\frac{x}{2}$ is $A$-ban van).

**$B = [-\sqrt2, \sqrt2]$:** $\max B = \sup B = \sqrt{2}$, $\min B = \inf B = -\sqrt{2}$.

**$C^+$:** mivel $\frac{1}{2^n} \le \frac12$, minden elem $\le 1$, és $n = m = 1$-re az elem éppen $1$: $\max C^+ = \sup C^+ = 1$. Minden elem pozitív, és $\inf C^+ = 0$: adott $\varepsilon > 0$-hoz (arkhimédészi tulajdonság) van $n$, amelyre $\frac{2}{2^n} < \varepsilon$, és akkor $\frac{1}{2^n} + \frac{1}{2^n} < \varepsilon$. Minimum nincs (a $0$ nem eleme).

**$C^-$:** $\frac{1}{2^n} - \frac{1}{2^m} < \frac{1}{2^n} \le \frac12$, tehát $\frac12$ felső korlát, és nem eleme a halmaznak. Az $n = 1$, $m \to \infty$ választással az $\frac12 - \frac{1}{2^m}$ elemek tetszőlegesen megközelítik $\frac12$-et, így $\sup C^- = \frac12$, maximum nincs. A halmaz szimmetrikus a $0$-ra ($n$ és $m$ felcserélésével az elem előjelet vált), így $\inf C^- = -\frac12$, minimum nincs.

**$D$:** $\frac1n + m > m \ge 1$, és $m = 1$, $n \to \infty$ esetén az elemek tetszőlegesen közel kerülnek $1$-hez: $\inf D = 1$, minimum nincs. $D$ felülről nem korlátos ($m$ tetszőleges), így szuprémuma (a valós számok között) és maximuma nincs.

**$E$:** $\max E = \sup E = 1$, $\inf E = 0$, minimum nincs (ld. 5. d).

**$F = -E$:** $\min F = \inf F = -1$, $\sup F = 0$, maximum nincs.

::: elmelet
**Elméleti háttér — a szuprémum jellemzése.** $s = \sup H$ pontosan akkor, ha (1) $s$ felső korlát, és (2) $\forall \varepsilon > 0\ \exists x \in H: x > s - \varepsilon$ (semmi kisebb nem felső korlát). Az infimumra ugyanez megfordítva. A szuprémum létezését nem üres, felülről korlátos halmazra a **teljességi axióma** garantálja; a maximum pontosan akkor létezik, ha $\sup H \in H$. A (2) feltétel ellenőrzéséhez általában az arkhimédészi tulajdonságot használjuk (az $\frac{1}{2^n}$, $\frac1n$ tagok tetszőlegesen kicsik lesznek).
:::

## 8. feladat

Legyen $A \cap B \neq \emptyset$. Mit tudunk mondani $\sup A$, $\sup B$ és $\sup(A \cup B)$, $\sup(A \cap B)$, illetve $\sup(A \setminus B)$ kapcsolatáról?

**Megoldás.**

**$\sup(A \cup B) = \max\{\sup A, \sup B\}$** (ha valamelyik nem korlátos felülről, akkor az unió sem, és mindkét oldal $+\infty$). Bizonyítás: legyen $s = \max\{\sup A, \sup B\}$. Ekkor minden $x \in A \cup B$-re $x \le s$, tehát $s$ felső korlát. Ha $s' < s$, és mondjuk $s = \sup A$, akkor van $a \in A \subset A \cup B$, amelyre $a > s'$, így $s'$ nem felső korlát. Tehát $s$ a legkisebb felső korlát.

**$\sup(A \cap B) \le \min\{\sup A, \sup B\}$**, mert $A \cap B \subset A$ és $A \cap B \subset B$, a részhalmaz szuprémuma pedig nem nagyobb (a feltétel szerint $A \cap B \ne \emptyset$, így a szuprémum létezik, ha $A$ vagy $B$ korlátos). Egyenlőség nem feltétlenül áll: $A = \{0, 2\}$, $B = \{0, 3\}$ esetén $\sup(A \cap B) = 0 < 2 = \min\{2, 3\}$.

**$\sup(A \setminus B)$:** ha $A \setminus B \neq \emptyset$, akkor $\sup(A \setminus B) \le \sup A$, és lehet egyenlőség is, szigorú egyenlőtlenség is: $A = \{1, 2\}$, $B = \{2\}$: $\sup(A \setminus B) = 1 < 2$; $A = \{1, 3\}$, $B = \{1\}$: $\sup(A \setminus B) = 3 = \sup A$. $\sup B$-vel nincs általános összefüggés (az előző két példában egyszer kisebb, egyszer nagyobb nála). Ha $A \subset B$, akkor $A \setminus B = \emptyset$, és a szuprémum nem is értelmezett. Mindig igaz viszont, hogy $A \setminus B \ne \emptyset$ esetén $\sup A = \max\{\sup(A \setminus B), \sup(A \cap B)\}$, hiszen $A = (A \setminus B) \cup (A \cap B)$.

::: elmelet
**Elméleti háttér — a szuprémum monoton és „uniótartó”.** Ha $A \subseteq B$, akkor $B$ minden felső korlátja $A$-nak is felső korlátja, így $\sup A \le \sup B$. Unióra pontosan $\sup(A \cup B) = \max\{\sup A, \sup B\}$: a nagyobbik felső korlátja mindkét halmaznak, és ennél kisebb szám már az egyik halmaznak sem felső korlátja. Metszetre és különbségre csak egyenlőtlenség igaz, ezért ott ellenpéldák mutatják, hogy egyenlőség nem várható.
:::

## 9*. feladat

A négyzetrácspontokon egy bolha ugrál. Az origóból indul, és egyforma hosszú és egyforma irányú ugrásokat hajt végre. Minden ugrás után mi rácsaphatunk egy rácspontra. Van-e olyan stratégia, amivel biztosan le tudjuk csapni?

**Megoldás.**

**Van ilyen stratégia.** A bolha ugrásvektora egy rögzített, ismeretlen $v = (a, b) \in \mathbb{Z}^2$ (az egyforma hosszú és irányú ugrások miatt minden ugrás ugyanaz a vektor), így a $k$-adik ugrás után a $k \cdot v$ rácsponton van.

A $\mathbb{Z}^2$ halmaz megszámlálható, tehát sorba rendezhető: $v_1, v_2, v_3, \dots$ (pl. a $\max(|a|, |b|) = 0, 1, 2, \dots$ „négyzetes héjak" szerint, mindegyik héj véges sok pontját valamilyen sorrendben). **Stratégia:** a $k$-adik ugrás után a $k \cdot v_k$ pontra csapunk le.

A bolha tényleges ugrásvektora szerepel a felsorolásban, mondjuk $v = v_K$. A $K$-adik ugrás után a bolha a $K \cdot v_K$ pontban van, és mi éppen oda csapunk – tehát legkésőbb ekkor eltaláljuk.

::: elmelet
**Elméleti háttér — megszámlálhatóság.** Egy halmaz **megszámlálható**, ha elemei sorozatba rendezhetők ($\mathbb{N}$-ről vett szürjekció van rá). $\mathbb{Z}^2$ ilyen: „héjanként” sorolhatók fel az elemei, és minden héj véges. A stratégia lényege, hogy a $k$-adik lépésben a $k$-adik **lehetséges ugrásvektor hipotézisét** teszteljük: mivel a tényleges vektor valamikor sorra kerül, és akkor pont a megfelelő időpontban csapunk, biztosan eltaláljuk. Ez az ötlet (minden lehetőség véges időn belül sorra kerül) a megszámlálhatóság tipikus alkalmazása.
:::

## 10*. feladat

A derékszögű koordinátarendszerben bizonyos rácspontokat megmérgeztek úgy, hogy minden $n$-re az $x + y \le n$ tartományban legfeljebb $n$ mérgezett pont van. Egy bolha az origóból indulva ugrál, mindig vagy a $(0, 1)$, vagy az $(1, 0)$ vektorral ugrik. Bizonyítsuk be, hogy létezik olyan végtelen útvonal, ami elkerüli a mérgezett pontokat.

**Megoldás.**

Jelölje $D_n = \{(x, y) \in \mathbb{Z}^2 : x, y \ge 0,\ x + y = n\}$ az $n$-edik „átlót" ($n + 1$ pont), és $p_n$ a $D_n$-en lévő mérgezett pontok számát. A bolha minden ugrással a következő átlóra lép. A feltétel: $p_0 + p_1 + \dots + p_n \le n$ minden $n$-re; speciálisan $p_0 = 0$, az origó nincs megmérgezve.

Legyen $R_n \subseteq D_n$ azon pontok halmaza, ahová a bolha az origóból mérgezett pont érintése nélkül eljuthat. **Állítás:** $|R_n| \ge n + 1 - (p_0 + \dots + p_n) \ge 1$.

*Bizonyítás indukcióval.* $R_0 = \{(0,0)\}$, $|R_0| = 1 = 1 - p_0$. Tegyük fel, hogy $|R_n| = r \ge 1$, és $R_n$ pontjainak $x$-koordinátái $x_1 < x_2 < \dots < x_r$. Ezekből egy ugrással a $D_{n+1}$ azon pontjaiba juthatunk, amelyek $x$-koordinátája $x_i$ (felfelé ugrás) vagy $x_i + 1$ (jobbra ugrás). Az $\{x_1, \dots, x_r, x_r + 1\}$ halmaz már $r + 1$ különböző elemű, tehát legalább $r + 1$ pont érhető el $D_{n+1}$-en, ezek közül legfeljebb $p_{n+1}$ mérgezett. Így
$$|R_{n+1}| \ge r + 1 - p_{n+1} \ge (n + 1 - p_0 - \dots - p_n) + 1 - p_{n+1} = n + 2 - (p_0 + \dots + p_{n+1}) \ge 1.$$

**Végtelen út (König-lemma).** Nevezzünk egy biztonságosan elérhető $P$ pontot *jónak*, ha $P$-ből minden későbbi átlóra el lehet jutni biztonságos úton. Az origó jó, mert minden $R_N$ nemüres. Ha $P$ jó, akkor (legfeljebb kettő) biztonságos szomszédja közül valamelyik jó: ha egyik sem volna az, akkor mindegyik szomszédból csak egy-egy véges $N_Q$ átlóig lehetne eljutni, és $P$-ből sem lehetne $\max N_Q$-nál messzebbre jutni – ellentmondás. Így az origóból indulva lépésenként mindig jó pontra ugorva egy végtelen, mérgezett pontot elkerülő utat kapunk. $\blacksquare$

::: elmelet
**Elméleti háttér — indukció és König-lemma.** Az első rész indukciója egy **számolási invariánst** tart fenn: minden átlón legalább $1$ elérhető pont marad, mert az elérhető pontok száma lépésenként legalább eggyel nő, a mérgezettek pedig a feltétel szerint ennél lassabban gyűlnek. A második rész a **König-lemma** gondolata: egy végtelen, de minden csúcsban véges elágazású fában (itt: a biztonságos utak fája) van végtelen út, mert mindig tovább lehet lépni egy olyan csúcsba, amelynek „végtelen sok leszármazottja” van.
:::

## Röpzhra

Háromszög-egyenlőtlenség, felső/alsó korlát, korlátos halmaz, min, max, teljességi tulajdonság/axióma, Arkhimédész-féle tulajdonság/axióma.
