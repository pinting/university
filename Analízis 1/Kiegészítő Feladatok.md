# Analízis 1 – Kiegészítő feladatok

### I. Mat. BSc Analízis 1 · 2026/27 első félév · gyakorló feladatok megoldással és elméleti háttérrel

Ez a gyűjtemény a gyakorlati feladatlapok (1., 2., 4–10. feladatlap) minden feladatához egy-egy **új, hasonló feladatot** ad. A **K$n$.** feladat az eredeti $n$. feladat „párja”: ugyanazt a módszert vagy elméleti eszközt gyakoroltatja, de más adatokkal vagy más irányból. A feladatok sorrendje és csoportosítása a feladatlapokét követi (a 3. feladatlap hiányzik, ezért a K23–K33 számok kimaradnak), így összesen $99$ feladat van.

Minden feladat után részletes **megoldás** következik, majd szürke dobozban az **elméleti háttér**: a felhasznált definíciók és tételek, sokszor bizonyítással, továbbá a tipikus hibák és a kapcsolódó fogalmak. Javasolt használat: először önállóan megoldani a feladatot, és csak utána elolvasni a megoldást és a dobozt.

Jelölések: $\mathbb{N} = \{1, 2, 3, \dots\}$; $[x]$ az egészrész, $\{x\} = x - [x]$ a törtrész; $D$ a Dirichlet-függvény ($D(x) = 1$, ha $x \in \mathbb{Q}$, különben $0$); $R$ a Riemann-függvény ($R(\frac pq) = \frac1q$ egyszerűsített törtre, $R(0) = 1$, irracionálisra $0$).

# Az 1. feladatlaphoz

## K1. feladat

Az abszolút érték definíciója és a rendezési axiómák alapján mutassuk meg, hogy minden $x, y \in \mathbb{R}$ esetén

a) $\big||x| - |y|\big| \le |x - y|$;

b) $|x + y| = |x| + |y|$ pontosan akkor, ha $xy \ge 0$;

c) ha $|x - 3| < 2$ és $|y + 1| < 1$, akkor $|x + y - 2| < 3$ és $|xy| < 10$.

**Megoldás.**

a) A háromszög-egyenlőtlenséget az $x = (x - y) + y$ felbontásra alkalmazva $|x| \le |x - y| + |y|$, azaz $|x| - |y| \le |x - y|$. A szerepeket felcserélve $|y| - |x| \le |y - x| = |x - y|$. A két egyenlőtlenség együtt: $-|x - y| \le |x| - |y| \le |x - y|$, ami az $|u| \le c \iff -c \le u \le c$ szabály szerint éppen $\big||x| - |y|\big| \le |x - y|$. $\blacksquare$

b) Mindkét oldal nemnegatív, ezért az egyenlőség ekvivalens a négyzetek egyenlőségével:
$$|x + y|^2 = (x + y)^2 = x^2 + 2xy + y^2, \qquad (|x| + |y|)^2 = x^2 + 2|x|\,|y| + y^2 = x^2 + 2|xy| + y^2.$$
Ezek pontosan akkor egyenlők, ha $xy = |xy|$, vagyis ha $xy \ge 0$. $\blacksquare$

c) $x + y - 2 = (x - 3) + (y + 1)$, így a háromszög-egyenlőtlenség szerint $|x + y - 2| \le |x - 3| + |y + 1| < 2 + 1 = 3$. A második becsléshez: $|x - 3| < 2$-ből $1 < x < 5$, tehát $|x| < 5$; $|y + 1| < 1$-ből $-2 < y < 0$, tehát $|y| < 2$. Így $|xy| = |x|\,|y| < 10$.

::: elmelet
**Elméleti háttér — az abszolút érték „szabályai”.**

- $|x| = \max\{x, -x\} \ge 0$; $|x| = 0 \iff x = 0$; $|xy| = |x||y|$; $|x|^2 = x^2$; $\sqrt{x^2} = |x|$.
- $|u| \le c \iff -c \le u \le c$ (ezzel bontjuk két egyenlőtlenségre).
- **Háromszög-egyenlőtlenség:** $|x + y| \le |x| + |y|$, egyenlőség pontosan $xy \ge 0$ esetén (b) rész). Általánosan $|x_1 + \dots + x_n| \le |x_1| + \dots + |x_n|$ (indukció).
- **Fordított háromszög-egyenlőtlenség:** $\big||x| - |y|\big| \le |x - y|$ — az abszolútérték-függvény „nem növeli a távolságot”, ezért konvergens sorozatból konvergenset, folytonos függvényből folytonosat csinál.

*A becslések technikája.* A c) részben a „cél-kifejezést” ($x + y - 2$) az ismert mennyiségek ($x - 3$, $y + 1$) kombinációjaként írtuk fel, majd a háromszög-egyenlőtlenséget alkalmaztuk. Ez a „hozzáadunk és elveszünk” fogás az analízis legtöbb becslésének alapja, például $|a_nb_n - ab| = |a_n(b_n - b) + b(a_n - a)| \le |a_n||b_n - b| + |b||a_n - a|$ a szorzat határértékének bizonyításában.

*Négyzetre emelés.* Nemnegatív számok között $u = v \iff u^2 = v^2$ és $u \le v \iff u^2 \le v^2$ — ezért abszolút értékes egyenlőségeknél és egyenlőtlenségeknél gyakran kényelmes négyzetre emelni (b) rész). Előjeles számoknál ez hibás következtetésekhez vezet ($-3 < 2$, de $9 > 4$).
:::

## K2. feladat

Legyen $a \ne 0$ racionális, $c$ irracionális. Mit mondhatunk az $\frac{a}{c}$, $\frac{c}{a}$, $c^2$, $c + c^2$ és (ha $c > 0$) $\sqrt{c}$ számokról? Bizonyítsuk be továbbá, hogy $\sqrt{2} + \sqrt{3}$ irracionális.

**Megoldás.**

- $\frac{a}{c}$ **irracionális**: ha $\frac ac = r \in \mathbb{Q}$ volna, akkor $r \ne 0$ (mert $a \ne 0$), és $c = \frac ar \in \mathbb{Q}$ lenne.
- $\frac{c}{a}$ **irracionális**: ha $\frac ca = r \in \mathbb Q$, akkor $c = ra \in \mathbb Q$.
- $c^2$ **lehet racionális és irracionális is**: $(\sqrt2)^2 = 2$, de $(\sqrt[3]{2})^2 = \sqrt[3]{4}$ irracionális (ha $\sqrt[3]{4} = \frac pq$ volna, $p^3 = 4q^3$, a $2$ kitevője a bal oldalon $3$-mal, a jobb oldalon $3$-mal osztva $2$ maradékot adna — ellentmondás).
- $c + c^2$ **lehet mindkettő**: $c = \sqrt2$-re $2 + \sqrt2$ irracionális; $c = \frac{\sqrt5 - 1}{2}$-re $c^2 = \frac{6 - 2\sqrt5}{4} = 1 - c$, így $c + c^2 = 1$.
- $\sqrt{c}$ **mindig irracionális**: ha $\sqrt c = r \in \mathbb{Q}$, akkor $c = r^2 \in \mathbb{Q}$.

*$\sqrt2 + \sqrt3$ irracionalitása.* Tegyük fel, hogy $\sqrt2 + \sqrt3 = r \in \mathbb{Q}$. Négyzetre emelve $5 + 2\sqrt6 = r^2$, tehát $\sqrt6 = \frac{r^2 - 5}{2} \in \mathbb{Q}$. A $\sqrt6$ azonban irracionális (ha $\sqrt6 = \frac pq$ egyszerűsített tört, $p^2 = 6q^2$, így $2 \mid p$, $p = 2p'$, $2p'^2 = 3q^2$, így $2 \mid q$ — ellentmondás). Tehát $\sqrt2 + \sqrt3$ irracionális. $\blacksquare$

::: elmelet
**Elméleti háttér — zártság és „visszafordítás”.**

*A $\mathbb{Q}$ test.* Zárt a négy alapműveletre (nullával való osztást kivéve). Ezért ha egy kifejezésből az irracionális $c$ racionális műveletekkel kifejezhető, és a kifejezés racionális volna, $c$ is racionális lenne. Ez a „visszafordítás” módszere: $\frac{a}{c}$-ből $c = \frac{a}{a/c}$, $\sqrt c$-ből $c = (\sqrt c)^2$.

*Ahol nincs visszafordítás.* A $c \mapsto c^2$ és $c \mapsto c + c^2$ nem fordítható vissza racionális műveletekkel (négyzetgyökvonás kellene), ezért ott konkrét példák döntenek. Az $x^2 + x - 1 = 0$ gyöke, a $\frac{\sqrt5 - 1}{2} \approx 0{,}618$ (az aranymetszés aránya) éppen azért ad racionális $c + c^2$-et, mert egy racionális együtthatós másodfokú egyenlet gyöke — vagyis **algebrai szám**.

*Irracionalitás négyzetre emeléssel.* Gyökök összegének irracionalitását úgy bizonyítjuk, hogy egy alkalmas hatványra emeléssel a gyökök számát csökkentjük, amíg egy ismert irracionális szám (itt $\sqrt6$) nem marad. Ugyanez a számolás mutatja, hogy $\sqrt2 + \sqrt3$ gyöke az $x^4 - 10x^2 + 1$ polinomnak: $(r^2 - 5)^2 = 24$.

*Általános tétel.* $\sqrt{m}$ ($m \in \mathbb N$) pontosan akkor racionális, ha $m$ négyzetszám; $\sqrt[k]{m}$ pontosan akkor, ha $m$ teljes $k$-adik hatvány. (A számelmélet alaptételéből: egy racionális szám $k$-adik hatványában minden prím kitevője osztható $k$-val.)
:::

## K3. feladat

Mutassuk meg, hogy $3^n > n^3$, ha $n \ge N_0$. Adjuk meg a lehető legkisebb $N_0$-t!

**Megoldás.**

| $n$ | 1 | 2 | 3 | 4 | 5 |
|:---:|:---:|:---:|:---:|:---:|:---:|
| $3^n$ | 3 | 9 | 27 | 81 | 243 |
| $n^3$ | 1 | 8 | 27 | 64 | 125 |

Az egyenlőtlenség $n = 1, 2$-re igaz, $n = 3$-ra nem ($27 = 27$), $n = 4$-re igaz. Teljes indukcióval megmutatjuk, hogy minden $n \ge 4$-re igaz; így a legkisebb $N_0 = 4$.

*Kezdőlépés:* $81 > 64$.

*Indukciós lépés:* ha $3^n > n^3$ valamely $n \ge 4$-re, akkor
$$3^{n+1} = 3 \cdot 3^n > 3n^3 \ge (n + 1)^3,$$
ahol az utolsó lépés $n \ge 3$-ra igaz: $\left(\frac{n+1}{n}\right)^3 = \left(1 + \frac1n\right)^3 \le \left(\frac43\right)^3 = \frac{64}{27} < 3$. $\blacksquare$

::: elmelet
**Elméleti háttér — indukció „hányados-becsléssel”.**

*A lépés mint arány.* Az $a_n > b_n \Rightarrow a_{n+1} > b_{n+1}$ lépést gyakran úgy kezeljük, hogy összevetjük a két oldal **növekedési arányát**: $\frac{a_{n+1}}{a_n} = 3$ és $\frac{b_{n+1}}{b_n} = \left(1 + \frac1n\right)^3$. Ha egy indextől a bal oldal aránya nagyobb, az előny megmarad: $a_{n+1} = 3a_n > 3b_n \ge \left(1 + \frac1n\right)^3 b_n = b_{n+1}$.

*A küszöb két összetevője.* (1) Ahonnan a segédegyenlőtlenség ($\left(1 + \frac1n\right)^3 \le 3$) igaz: $n \ge 3$. (2) Ahol a kezdőlépés teljesül: $n = 4$. A küszöb ezek közül a nagyobb, és a minimalitáshoz kell az $n = 3$-beli kudarc. Figyelem: a kisebb $n$-ekre ($1$, $2$) az állítás ugyan igaz, de nem *minden* $n \ge 1$-re, ezért a legkisebb jó $N_0$ a $4$.

*Általánosan.* Minden $a > 1$ és $k$ esetén $a^n > n^k$ egy indextől: $\frac{(n+1)^k}{n^k} \to 1 < a$. Vagyis **az exponenciális függvény minden hatványfüggvénynél gyorsabban nő**, amit a sorozatok fejezetében így fogalmazunk meg: $\frac{n^k}{a^n} \to 0$. (Itt $3^n$ és $n^3$ — a két függvény grafikonja az $n = 3$ helyen éppen „érinti” egymást az egész pontokon.)
:::

## K4. feladat

A binomiális tétel segítségével bizonyítsuk be, hogy minden $n \ge 1$-re

a) $\displaystyle\sum_{k=0}^n \binom nk = 2^n$; b) $\displaystyle\sum_{k=0}^n (-1)^k\binom nk = 0$; c) $\displaystyle\sum_{k=1}^n k\binom nk = n2^{n-1}$.

**Megoldás.**

A binomiális tétel: $(a + b)^n = \sum_{k=0}^n \binom nk a^{n-k}b^k$.

a) $a = b = 1$: $2^n = (1 + 1)^n = \sum_{k=0}^n \binom nk$.

b) $a = 1$, $b = -1$: $0 = (1 - 1)^n = \sum_{k=0}^n \binom nk(-1)^k$ (itt kell $n \ge 1$, mert $0^0 = 1$).

c) Először a „kiemelési azonosság”: $1 \le k \le n$ esetén
$$k\binom nk = \frac{k \cdot n!}{k!\,(n-k)!} = \frac{n \cdot (n-1)!}{(k-1)!\,(n-k)!} = n\binom{n-1}{k-1}.$$
Ezzel és az a) résszel ($n - 1$-re):
$$\sum_{k=1}^n k\binom nk = n\sum_{k=1}^n\binom{n-1}{k-1} = n\sum_{j=0}^{n-1}\binom{n-1}{j} = n2^{n-1}. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — binomiális azonosságok három módszerrel.**

1. **Behelyettesítés a binomiális tételbe:** $(1 + x)^n = \sum\binom nk x^k$ egy polinomazonosság; konkrét $x$ értékekkel ($1$, $-1$, …) összegképleteket kapunk. A b) rész jelentése: páros és páratlan elemszámú részhalmazból ugyanannyi van ($2^{n-1}$).
2. **Algebrai átalakítás:** a $k\binom nk = n\binom{n-1}{k-1}$ azonosság a $k$ szorzót „beolvasztja” az együtthatóba, majd indexeltolással egy ismert összegre vezet.
3. **Kombinatorikus (kettős leszámlálás):** $\sum k\binom nk$ megszámolja a (bizottság, elnök) párokat egy $n$ fős társaságban; ha előbb az elnököt választjuk ($n$ mód), a többiekről szabadon döntünk ($2^{n-1}$).

*A deriválás módszere (előre tekintve).* A $(1 + x)^n = \sum\binom nkx^k$ azonosságot deriválva $n(1 + x)^{n-1} = \sum k\binom nkx^{k-1}$, és $x = 1$-et helyettesítve a c) részt kapjuk. Így generátorfüggvényekkel szinte minden ilyen összeg kezelhető.

*Az analízisben.* A binomiális tétel a nevezetes határértékek bizonyításának egyik fő eszköze: $(1 + h)^n \ge 1 + nh$ (Bernoulli), $(1 + h)^n \ge \binom n2h^2$ (ebből $\sqrt[n]n \to 1$), és az $\left(1 + \frac1n\right)^n$ sorozat vizsgálata.
:::

## K5. feladat

Döntsük el az alábbi halmazokról, hogy alulról, illetve felülről korlátosak-e, korlátosak-e, és van-e legkisebb, illetve legnagyobb elemük:

a) $\{n^2 : n \in \mathbb{N}\}$, b) a negatív számok halmaza, c) $(-3, 7]$, d) $\{\frac{(-1)^n}{n} : n \in \mathbb{N}\}$, e) $\{x \in \mathbb{R} : x^2 < 5\}$, f) $\{x \in \mathbb{Q} : x^2 < 5\}$, g) $\{\frac{1}{x} : x > 0\}$, h) $\{x \in \mathbb{Q} : x \ge \sqrt{3}\}$.

**Megoldás.**

a) Alulról korlátos (min. $1$), felülről nem ($n^2 \ge n$, és $\mathbb N$ nem korlátos). Legnagyobb elem nincs.

b) $(-\infty, 0)$: felülről korlátos ($0$), alulról nem. Sem legnagyobb (ha $x < 0$, akkor $\frac x2$ nagyobb negatív szám), sem legkisebb elem nincs.

c) Korlátos; minimum nincs (ha $x \in (-3, 7]$, akkor $\frac{x - 3}{2}$ kisebb eleme), maximum $7$.

d) Az elemek: $-1, \frac12, -\frac13, \frac14, \dots$; korlátos ($|x| \le 1$). Minimum $-1$ ($n = 1$), maximum $\frac12$ ($n = 2$): minden más pozitív elem $\frac{1}{2k} \le \frac14$, minden negatív elem kisebb.

e) $(-\sqrt5, \sqrt5)$: korlátos, se minimuma, se maximuma (nyílt intervallum).

f) Korlátos (például $\pm 3$ korlátok), se minimuma, se maximuma: $\sqrt5 \notin \mathbb Q$, így ha $q$ racionális és $q^2 < 5$, akkor $q < \sqrt5$, és a racionálisok sűrűsége miatt van $q < q' < \sqrt5$ racionális; ugyanígy alulról.

g) $\{\frac1x : x > 0\} = (0, \infty)$: alulról korlátos, felülről nem; se minimum, se maximum.

h) Alulról korlátos ($\sqrt3$), felülről nem; **minimum nincs**: $\sqrt3 \notin \mathbb Q$, így minden elem $q > \sqrt3$, és van közéjük eső racionális szám. Az infimum $\sqrt3$.

::: elmelet
**Elméleti háttér — korlátok, szélsőelemek, és a sűrűség szerepe.**

*Definíciók.* $K$ felső korlát: $\forall x \in H: x \le K$; a maximum egy olyan felső korlát, amely eleme $H$-nak. Korlátos $\iff$ $\exists K: \forall x \in H: |x| \le K$.

*Hogyan bizonyítunk?*

- **Korlátosság:** egy konkrét korlát megadása ($|{(-1)^n}/{n}| \le 1$).
- **Nem korlátosság:** minden $K$-hoz egy nála nagyobb elem — az arkhimédészi tulajdonság szerint például $n > K$, $n^2 \ge n$.
- **Szélsőelem hiánya:** minden elemhez egy nagyobb (kisebb) elem a halmazban ($\frac x2$, $\frac{x + 7}{2}$, egy közbeeső racionális szám).

*A sűrűség.* Bármely $a < b$ valós számok között van racionális szám. Ezért ha a halmaz „természetes határa” irracionális ($\sqrt5$, $\sqrt3$), és a halmaz csak racionálisokat tartalmaz, akkor a határ felé mindig lehet még közelebb menni: nincs szélsőelem, a szuprémum/infimum pedig az irracionális határ — amely nincs a halmazban.

*A $\mathbb{Q}$ hiányossága.* A $\{x \in \mathbb Q : x^2 < 5\}$ halmaznak a racionális számok körében nincs legkisebb felső korlátja. Ez mutatja, hogy a racionális számokra nem teljesül a teljességi axióma — a valós számok ezt a hiányt pótolják.
:::

## K6. feladat

Legyen $H \subseteq \mathbb{R}$ nem üres halmaz. A $H$ milyen tulajdonságait fejezik ki az alábbi állítások?

a) $(\exists x \in \mathbb{R})(\forall y \in H)(y \ge x)$; b) $(\forall x \in H)(\exists y \in H)(y < x)$; c) $(\exists x \in H)(\forall y \in H)(y \le x)$; d) $(\forall \varepsilon > 0)(\exists y \in H)(y < \varepsilon)$.

**Megoldás.**

a) Van olyan valós szám, amelynél $H$ minden eleme nem kisebb: **$H$ alulról korlátos**.

b) $H$ minden eleménél van kisebb eleme: **$H$-nak nincs legkisebb eleme** (minimuma).

c) Van olyan eleme, amelynél minden elem kisebb vagy egyenlő: **$H$-nak van legnagyobb eleme** (maximuma).

d) Minden pozitív számnál van kisebb eleme. Ez pontosan azt jelenti, hogy **$\inf H \le 0$** (beleértve azt az esetet is, ha $H$ alulról nem korlátos, $\inf H = -\infty$). Valóban: ha $\inf H \le 0$, akkor minden $\varepsilon > 0$ nagyobb az infimumnál, tehát nem alsó korlát, így van $y \in H$, $y < \varepsilon$. Megfordítva, ha $\inf H = c > 0$ volna, $\varepsilon = c$-re minden $y \in H$ esetén $y \ge c$ — ellentmondás.

::: elmelet
**Elméleti háttér — kvantorok és szélsőérték-fogalmak.**

*Szótár.* A legfontosabb fogalmak kvantoros alakja:

| tulajdonság | formula |
|:--|:--|
| alulról korlátos | $\exists x\ \forall y \in H: y \ge x$ |
| van minimuma | $\exists x \in H\ \forall y \in H: y \ge x$ |
| nincs minimuma | $\forall x \in H\ \exists y \in H: y < x$ |
| $\inf H = c$ | $\forall y \in H: y \ge c$ és $\forall \varepsilon > 0\ \exists y \in H: y < c + \varepsilon$ |

A minimum és az alsó korlát között csak annyi a különbség, hogy az $x$-et $H$-ból vagy $\mathbb{R}$-ből választjuk.

*Tagadás.* „Van minimuma” tagadása: $\forall x \in H\ \exists y \in H: y < x$ — a kvantorok cserélődnek, és a $\ge$ helyett $<$ áll. A b) és a „van minimuma” állítás egymás tagadásai.

*Az infimum $\varepsilon$-os jellemzésének egy fele.* A d) állítás az „$\inf H \le 0$” tulajdonság: az infimum jellemzésének második feltétele $c = 0$-val. Ha hozzávesszük, hogy $0$ alsó korlát ($\forall y \in H: y \ge 0$), akkor együtt $\inf H = 0$-t kapjuk. Így bizonyítjuk például, hogy $\inf\{\frac1n\} = 0$: minden elem pozitív, és (arkhimédészi tulajdonság) minden $\varepsilon$-nál van kisebb elem.
:::

## K7. feladat

Határozzuk meg — ha léteznek — az alábbi halmazok szuprémumát, infimumát, maximumát és minimumát:
$$A = [-1, 3), \quad B = \left\{1 - \frac1n : n \in \mathbb N\right\}, \quad C = \left\{\frac{n}{n+1} + (-1)^n : n \in \mathbb N\right\},$$
$$D = \left\{\frac1n - \frac1m : n, m \in \mathbb N\right\}, \quad E = \{x \in \mathbb Q : 0 < x < 1\}, \quad F = \left\{\frac{n+1}{n} : n \in \mathbb N\right\}.$$

**Megoldás.**

**$A$:** $\min A = \inf A = -1$, $\sup A = 3$, maximum nincs.

**$B$:** az elemek $0, \frac12, \frac23, \dots$; $\min B = \inf B = 0$; $\sup B = 1$ (minden elem $< 1$, és $1 - \frac1n > 1 - \varepsilon$, ha $n > \frac1\varepsilon$), maximum nincs.

**$C$:** páros $n$-re az elem $\frac{n}{n+1} + 1 \in [\frac53, 2)$, szigorúan nő és $2$-höz tart; páratlan $n$-re $\frac{n}{n+1} - 1 = -\frac{1}{n+1} \in [-\frac12, 0)$. Így $\min C = \inf C = -\frac12$ ($n = 1$), $\sup C = 2$, maximum nincs.

**$D$:** minden elem $\frac1n - \frac1m < \frac1n \le 1$, és $> -\frac1m \ge -1$. Az $n = 1$, $m \to \infty$ választással $1 - \frac1m \to 1$, tehát $\sup D = 1$; szimmetria miatt ($n$ és $m$ cseréje) $\inf D = -1$. Egyik sem eleme: maximum és minimum nincs.

**$E$:** $\sup E = 1$, $\inf E = 0$ (a racionálisok sűrűsége miatt mindkét végponthoz tetszőlegesen közeli racionális szám van), maximum és minimum nincs.

**$F$:** $\frac{n+1}{n} = 1 + \frac1n$: $\max F = \sup F = 2$, $\inf F = 1$, minimum nincs.

::: elmelet
**Elméleti háttér — szuprémum keresése a gyakorlatban.**

*A recept.* 1. Sejtsük meg a szuprémumot (az elemek „tartanak valamihez”, vagy egy határ adódik). 2. Igazoljuk, hogy felső korlát. 3. Igazoljuk, hogy kisebb szám már nem az: mutassunk a halmazban egy sorozatot, amely a sejtett értékhez tart (vagy adott $\varepsilon$-hoz egy elemet $s - \varepsilon$ fölött). 4. Döntsük el, eleme-e a halmaznak (ha igen, maximum).

*Részhalmazokra bontás.* A $C$-hez hasonló, „$(-1)^n$-t tartalmazó” halmazokat a páros és páratlan indexű elemekre bontjuk; ekkor $\sup C = \max\{\sup C_{\text{ps}}, \sup C_{\text{ptl}}\}$ és $\inf C = \min\{\inf C_{\text{ps}}, \inf C_{\text{ptl}}\}$ (az unióra vonatkozó szabály).

*Kétindexes halmazok.* A $D$ típusú halmazoknál ($\{f(n) + g(m)\}$) a két index függetlenül választható, ezért $\sup D = \sup_n\frac1n + \sup_m\left(-\frac1m\right) = 1 + 0$: az összeghalmaz szuprémuma a szuprémumok összege. Ugyanígy az infimum.

*Szuprémum és maximum.* A szuprémum mindig létezik nem üres, felülről korlátos halmazra (teljességi axióma), a maximum nem. A szuprémum pontosan akkor maximum, ha eleme a halmaznak.
:::

## K8. feladat

Legyenek $A, B \subseteq (0, \infty)$ nem üres, felülről korlátos halmazok, és $A \cdot B = \{ab : a \in A,\ b \in B\}$. Mutassuk meg, hogy $\sup(A \cdot B) = \sup A \cdot \sup B$. Igaz-e ez tetszőleges (nem csak pozitív elemű) korlátos halmazokra?

**Megoldás.**

Legyen $s = \sup A > 0$, $t = \sup B > 0$.

- *$st$ felső korlát:* $0 < a \le s$ és $0 < b \le t$ miatt $ab \le st$ (pozitív számok egyenlőtlenségei összeszorozhatók).
- *Nincs kisebb felső korlát:* legyen $0 < \varepsilon < st$. Válasszunk $\eta \in (0, \min\{s, t\})$ számot, amelyre $(s - \eta)(t - \eta) > st - \varepsilon$ (ilyen van, mert $(s - \eta)(t - \eta) = st - \eta(s + t) + \eta^2 \ge st - \eta(s + t)$, és elég $\eta < \frac{\varepsilon}{s + t}$). A szuprémum jellemzése szerint van $a \in A$, $a > s - \eta > 0$, és $b \in B$, $b > t - \eta > 0$; ekkor $ab > (s - \eta)(t - \eta) > st - \varepsilon$.

Tehát $\sup(A \cdot B) = st$. $\blacksquare$

**Tetszőleges halmazokra nem igaz:** $A = B = \{-2, 1\}$ esetén $A \cdot B = \{4, -2, 1\}$, $\sup(A \cdot B) = 4$, de $\sup A \cdot \sup B = 1$.

::: elmelet
**Elméleti háttér — szuprémum és műveletek.**

*A bizonyítás két része* — mint mindig a szuprémumnál: (1) felső korlát, (2) nincs kisebb. A (2)-ben a hibát „szét kell osztani” a tényezők között: szorzatnál nem $\frac\varepsilon2$-re, hanem egy alkalmas $\eta$-ra, amelyet a $(s - \eta)(t - \eta) = st - \eta(s + t) + \eta^2$ kifejtés alapján választunk. Ez ugyanaz a gondolat, mint a szorzat határértékének bizonyításában.

*A pozitivitás szerepe.* Egyenlőtlenségeket csak nemnegatív számok esetén szabad összeszorozni ($a \le s$, $b \le t \Rightarrow ab \le st$, ha $a, b \ge 0$). Negatív elemeknél a „legnagyobb szorzat” két nagy abszolút értékű negatív számból is keletkezhet — ezt mutatja az ellenpélda. Általános (korlátos) halmazokra
$$\sup(A \cdot B) = \max\{\sup A\sup B,\ \sup A\inf B,\ \inf A\sup B,\ \inf A\inf B\}.$$

*Rokon szabályok.* $\sup(A + B) = \sup A + \sup B$; $\sup(cA) = c\sup A$ ($c > 0$); $\sup(-A) = -\inf A$; pozitív elemű $A$-ra $\sup\{\frac1a\} = \frac{1}{\inf A}$ (ha $\inf A > 0$). Mindegyik ugyanazzal a kétlépéses módszerrel bizonyítható.
:::

## K9. feladat

Az egész számokon egy bolha ugrál: egy ismeretlen $p \in \mathbb Z$ pontból indul, és minden másodpercben ugyanazzal az ismeretlen $v \in \mathbb{Z}$ lépéssel ugrik (a $k$-adik másodpercben tehát a $p + kv$ pontban van). Minden másodpercben rácsaphatunk egy egész számra. Van-e olyan stratégia, amellyel biztosan eltaláljuk a bolhát?

**Megoldás.**

**Van.** A bolha mozgását a $(p, v) \in \mathbb{Z} \times \mathbb{Z}$ számpár egyértelműen meghatározza. $\mathbb Z \times \mathbb Z$ megszámlálható, tehát elemei felsorolhatók: $(p_1, v_1), (p_2, v_2), \dots$ (például a $\max(|p|, |v|) = 0, 1, 2, \dots$ „négyzetes héjak” szerint, mindegyik héj véges sok elemét tetszőleges sorrendben).

**Stratégia:** a $k$-adik másodpercben a $p_k + kv_k$ pontra csapunk.

A bolha valódi paraméterei szerepelnek a felsorolásban, mondjuk $(p, v) = (p_K, v_K)$. A $K$-adik másodpercben a bolha a $p_K + Kv_K$ pontban van, és mi éppen oda csapunk — tehát legkésőbb ekkor eltaláljuk. $\blacksquare$

::: elmelet
**Elméleti háttér — megszámlálhatóság mint „minden hipotézis sorra kerül”.**

*A stratégia lényege.* Nem tudjuk, melyik pályán mozog a bolha, de a lehetséges pályák (hipotézisek) halmaza megszámlálható. Minden időpontban egy-egy hipotézist tesztelünk úgy, hogy a teszt — ha a hipotézis igaz — biztos találatot ad. Mivel minden hipotézis véges időn belül sorra kerül, a valódi is.

*Megszámlálható halmazok.* $\mathbb Z$, $\mathbb Z^2$, $\mathbb{Z}^k$, $\mathbb Q$, a véges sorozatok halmaza mind megszámlálható. Megszámlálható sok megszámlálható halmaz uniója megszámlálható. Így a stratégia akkor is működne, ha a bolha mozgása egy tetszőleges egész együtthatós polinom szerint történne ($p + kv + k^2w$), vagy ha a bolha a síkon mozogna.

*Hol a határ?* Ha a bolha valós helyről, valós lépésközzel ugrálna (és valós pontokra csaphatnánk), a hipotézisek halmaza $\mathbb{R}^2$ volna, amely nem megszámlálható, és ilyen biztos stratégia nem létezik: bármely stratégia megszámlálhatóan sok csapása csak megszámlálhatóan sok pályát „fed le”.
:::

## K10. feladat

Legyen $G$ egy végtelen sok csúcsú, összefüggő gráf, amelyben minden csúcs foka véges. Mutassuk meg, hogy $G$ bármely $v$ csúcsából indul egy végtelen út (König-lemma).

**Megoldás.**

Jelölje $L_k$ a $v$-től (legrövidebb úton) pontosan $k$ távolságra levő csúcsok halmazát; $L_0 = \{v\}$.

**Minden $L_k$ véges, és mindegyik nem üres.** Indukcióval: $L_0$ véges; ha $L_k$ véges, akkor $L_{k+1}$ minden eleme egy $L_k$-beli csúcs szomszédja, és véges sok véges fokú csúcsnak véges sok szomszédja van. Mivel $G$ összefüggő, minden csúcs valamelyik $L_k$-ban van; ha egy $L_k$ üres volna, utána mind üres lenne, és $G$ véges sok véges halmaz uniójaként véges volna. Tehát minden $L_k \neq \emptyset$.

**A végtelen út.** Nevezzünk egy $u$ csúcsot *jónak*, ha végtelen sok olyan csúcs van, amelyhez $v$-ből vezet $u$-n átmenő legrövidebb út. A $v$ jó (minden csúcs ilyen). Ha $u \in L_k$ jó, akkor van jó szomszédja $L_{k+1}$-ben: az $u$-n átmenő legrövidebb utak (az $u$ kivételével) $u$ valamelyik $L_{k+1}$-beli szomszédján haladnak tovább; ezek véges sokan vannak, így ha mindegyikükön csak véges sok csúcshoz vezető út menne át, $u$-n is csak véges sok menne át. Az $u_0 = v$, majd mindig egy jó szomszédot választva $u_0, u_1, u_2, \dots$ ($u_k \in L_k$) végtelen út, mert a csúcsok különböző $L_k$-kban vannak. $\blacksquare$

::: elmelet
**Elméleti háttér — a König-lemma és a kompaktság.**

*A lemma.* Végtelen, lokálisan véges (minden csúcs véges fokú), összefüggő gráfban minden csúcsból indul végtelen út. Egyenértékű fa-alakja: végtelen, véges elágazású gyökeres fában van a gyökértől induló végtelen ág.

*A bizonyítás mintája.* „Mindig a végtelen részt választjuk”: ha egy végtelen halmazt véges sok részre osztunk, valamelyik rész végtelen (végtelen skatulyaelv). Ezt lépésenként alkalmazva egy végtelen sorozatot (utat) építünk.

*Miért kell a véges fok?* Egy csillag, amelynek középpontja végtelen sok levélhez kapcsolódik, végtelen és összefüggő, mégsincs benne végtelen út (minden út legfeljebb két élű).

*Ugyanez az analízisben.* A Bolzano–Weierstrass-tétel bizonyítása (korlátos sorozat intervallumának felezése, mindig azt a felét választva, amelyben végtelen sok tag van) pontosan ez a gondolat. Mindkettő a **kompaktság** megnyilvánulása: véges szintű információból („minden szinten van folytatás”) végtelen objektumot konstruálunk.
:::

# A 2. feladatlaphoz

## K11. feladat

a) Mutassuk meg, hogy ha $[a_1, b_1] \supseteq [a_2, b_2] \supseteq \dots$ korlátos, zárt intervallumok, és $b_n - a_n \to 0$, akkor a metszetük pontosan egy pontból áll.

b) Mi a $\bigcap_{n=1}^\infty \left[-\frac1n, 1 + \frac1n\right]$ halmaz?

c) Adjunk példát egymásba skatulyázott nyílt intervallumokra, amelyek metszete nem üres, és olyanokra is, amelyek metszete üres.

**Megoldás.**

a) A Cantor-tulajdonság szerint a metszet nem üres. Ha $x < y$ is benne volna, akkor minden $n$-re $a_n \le x < y \le b_n$, tehát $b_n - a_n \ge y - x > 0$ — ellentmondás a $b_n - a_n \to 0$ feltétellel (van olyan $n$, amelyre $b_n - a_n < y - x$). Tehát pontosan egy közös pont van. $\blacksquare$

b) $[0, 1]$. Ha $x \in [0, 1]$, minden intervallumban benne van. Ha $x < 0$, van $n$, amelyre $-\frac1n > x$ (arkhimédészi tulajdonság), és ekkor $x$ nincs a $n$-edik intervallumban; ha $x > 1$, hasonlóan $1 + \frac1n < x$ valamely $n$-re.

c) $\bigcap_n \left(-\frac1n, \frac1n\right) = \{0\}$ nem üres; $\bigcap_n\left(0, \frac1n\right) = \emptyset$ (minden $x > 0$-hoz van $\frac1n < x$, és $x \le 0$ egyikben sincs).

::: elmelet
**Elméleti háttér — egymásba skatulyázott intervallumok.**

*Cantor-tulajdonság.* Egymásba skatulyázott, korlátos, zárt, nem üres intervallumok metszete nem üres. Bizonyítás a teljességi axiómából: $\xi = \sup_n a_n$ minden intervallumban benne van, mert $a_n \le \xi \le b_m$ minden $n, m$-re. Valójában $\bigcap [a_n, b_n] = [\sup a_n, \inf b_n]$.

*Egyetlen közös pont.* Ha a hosszak $0$-hoz tartanak, $\sup a_n = \inf b_n$, és a metszet egyetlen pont. Ez az **intervallumfelezés** módszerének alapja: a Bolzano-tétel, a Bolzano–Weierstrass-tétel és a teljességi axióma ekvivalens alakjainak bizonyításában a felezett intervallumok egyetlen közös pontja adja a keresett számot.

*Nyílt intervallumok.* Nyílt intervallumoknál a metszet lehet üres (ha a közös határpontot mind kihagyják), de lehet nem üres is; a zártság garantálja, hogy a határpont benne legyen. A b) részben a metszet egy zárt intervallum — **zárt halmazok tetszőleges metszete zárt**, míg nyílt halmazok végtelen metszete nem feltétlenül nyílt (a c) első példája: $\{0\}$).
:::

## K12. feladat

Bizonyítsuk be, hogy a) $\log_2 3$ irracionális; b) $\log_4 8$ racionális; c) $\lg 5$ irracionális.

**Megoldás.**

a) $\log_2 3 > 0$. Ha $\log_2 3 = \frac pq$ ($p, q \in \mathbb N$), akkor $2^{p/q} = 3$, azaz $2^p = 3^q$. A bal oldal páros, a jobb oldal páratlan ($p, q \ge 1$) — ellentmondás.

b) $4^{3/2} = (\sqrt4)^3 = 8$, tehát $\log_4 8 = \frac32 \in \mathbb{Q}$.

c) $\lg 5 > 0$. Ha $\lg 5 = \frac pq$, akkor $10^p = 5^q$, azaz $2^p5^p = 5^q$. A bal oldal páros ($p \ge 1$), a jobb páratlan — ellentmondás. $\blacksquare$

::: elmelet
**Elméleti háttér — logaritmusok racionalitása.**

*A módszer.* $\log_a b = \frac pq$ $\iff$ $a^p = b^q$ (pozitív egész $p, q$ esetén, ha a logaritmus pozitív). Így a kérdés egy egész számok közötti egyenletre vezet, amelyet a **számelmélet alaptétele** (egyértelmű prímfelbontás) dönt el: $a^p = b^q$ pontosan akkor teljesülhet, ha $a$ és $b$ prímtényezői ugyanazok, és a kitevőik arányosak.

*Általános szabály.* $\log_a b \in \mathbb{Q}$ pontosan akkor, ha $a = c^m$ és $b = c^k$ valamely $c > 0$-ra és egészekre (például $\log_4 8 = \log_{2^2}2^3 = \frac32$, $\log_{27}9 = \frac23$). Ha $a$-ban és $b$-ben különböző prímek szerepelnek (mint $2$ és $3$, vagy $10 = 2 \cdot 5$ és $5$), a logaritmus irracionális.

*Paritásos érvelés.* Gyakran elég egyetlen prím (itt a $2$) kitevőjét vizsgálni, vagy egyszerűen a paritást: páros szám nem lehet egyenlő páratlannal.

*Kitekintés.* A Gelfond–Schneider-tétel szerint az irracionális algebrai logaritmusok, mint $\log_2 3$, sőt transzcendensek — ennek bizonyítása azonban messze túlmutat az alapkurzuson.
:::

## K13. feladat

Legyen $f : X \times Y \to \mathbb{R}$ korlátos függvény. Mutassuk meg, hogy
$$\sup_{y \in Y}\inf_{x \in X} f(x, y) \le \inf_{x \in X}\sup_{y \in Y} f(x, y),$$
és mutassunk példát szigorú egyenlőtlenségre az $X = Y = [0, 1]$, $f(x, y) = (x - y)^2$ választással.

**Megoldás.**

Rögzített $x_0 \in X$, $y_0 \in Y$ mellett
$$\inf_{x \in X} f(x, y_0) \le f(x_0, y_0) \le \sup_{y \in Y} f(x_0, y).$$
A bal oldal csak $y_0$-tól, a jobb csak $x_0$-tól függ. Rögzített $y_0$-ra a bal oldal alsó korlátja a jobb oldali kifejezésnek, mint $x_0$ függvényének, így legfeljebb az infimuma: $\inf_x f(x, y_0) \le \inf_{x_0}\sup_y f(x_0, y)$. Ez minden $y_0$-ra igaz, tehát a bal oldalak szuprémumára is. $\blacksquare$

*A példa.* $f(x, y) = (x - y)^2$ a $[0, 1]^2$-en.

- Rögzített $y$-ra $\inf_x (x - y)^2 = 0$ ($x = y$), így $\sup_y\inf_x f = 0$.
- Rögzített $x$-re $\sup_y (x - y)^2 = \max\{x^2, (1 - x)^2\}$ (a távolabbi végpont), amelynek minimuma $x = \frac12$-nél $\frac14$. Így $\inf_x\sup_y f = \frac14$.

Tehát $0 < \frac14$: szigorú egyenlőtlenség.

::: elmelet
**Elméleti háttér — a minimax-egyenlőtlenség.**

*Állítás:* $\sup_y\inf_x f \le \inf_x\sup_y f$ mindig igaz. A bizonyítás egyetlen „közvetítő” értéken, $f(x_0, y_0)$-on keresztül megy, majd a szabad változók szerint szuprémumot/infimumot veszünk.

*Játékelméleti jelentés.* Ha az „$x$-játékos” minimalizálni, az „$y$-játékos” maximalizálni akarja $f$-et, akkor a $\sup_y\inf_x$ az, amit $y$ biztosan elérhet, ha előbb lép (és $x$ reagál), a $\inf_x\sup_y$ pedig az, amit $x$ biztosan tarthat, ha ő lép előbb. **Aki később lép, az jár jobban** — ezért a második nem kisebb. Egyenlőség akkor van, ha van **nyeregpont**. A példában $x = \frac12$ a „középre állás” stratégiája.

*Neumann minimax-tétele.* Ha $f$ konvex $x$-ben, konkáv $y$-ban (és a halmazok kompakt konvexek), egyenlőség áll. A példában $f = (x - y)^2$ $y$-ban is konvex, ezért nincs egyenlőség.

*Az analízisben.* A $\liminf a_n = \sup_N\inf_{n\ge N}a_n$ és a $\limsup a_n = \inf_N\sup_{n \ge N}a_n$ is ilyen szerkezetű; a $\liminf \le \limsup$ egyenlőtlenség ugyanezzel az érveléssel látható.
:::

## K14. feladat

a) Mutassuk meg, hogy ha $H \neq \emptyset$ alulról korlátos, akkor $\inf H = -\sup(-H)$, ahol $-H = \{-x : x \in H\}$.

b) Bizonyítsuk be, hogy egy sorozatnak legfeljebb egy határértéke lehet.

**Megoldás.**

a) $-H$ felülről korlátos: ha $K$ alsó korlátja $H$-nak, akkor $-K$ felső korlátja $-H$-nak. Legyen $s = \sup(-H)$. Ekkor minden $x \in H$-ra $-x \le s$, azaz $x \ge -s$: a $-s$ alsó korlátja $H$-nak. Ha $c > -s$ is alsó korlát volna, akkor $-c < s$ felső korlátja volna $-H$-nak, ellentmondva annak, hogy $s$ a legkisebb felső korlát. Tehát $-s$ a legnagyobb alsó korlát: $\inf H = -\sup(-H)$. $\blacksquare$

b) Tegyük fel, hogy $a_n \to A$ és $a_n \to B$, $A \ne B$. Legyen $\varepsilon = \frac{|A - B|}{2} > 0$. Van $N_1$, hogy $n \ge N_1$ esetén $|a_n - A| < \varepsilon$, és $N_2$, hogy $n \ge N_2$ esetén $|a_n - B| < \varepsilon$. Az $n = \max\{N_1, N_2\}$ indexre
$$|A - B| \le |A - a_n| + |a_n - B| < 2\varepsilon = |A - B|,$$
ellentmondás. Tehát $A = B$. $\blacksquare$

::: elmelet
**Elméleti háttér — tükrözés és egyértelműség.**

*Tükrözés.* Az $x \mapsto -x$ leképezés megfordítja a rendezést: felső korlátokat alsó korlátokba, maximumot minimumba, szuprémumot infimumba visz. Ezért minden szuprémumra bizonyított tétel infimumra is érvényes („dualitás”), és az infimum létezése (alulról korlátos halmazra) a szuprémum-axiómából következik. Hasonlóan $\liminf a_n = -\limsup(-a_n)$.

*Egyértelműségi bizonyítások.* A határérték egyértelműségének kulcsa: két különböző pontnak vannak **diszjunkt környezetei** (a $\frac{|A - B|}{2}$ sugarúak). Egy sorozat tagjai egy indextől mindkét környezetben volnának — lehetetlen. Ez a „Hausdorff-tulajdonság”, amely minden távolsággal rendelkező térben igaz. Függvények határértékének egyértelműsége ugyanígy bizonyítható (ott kell, hogy a pont torlódási pont legyen, különben a környezetekben nem is volna függvényérték).

*Miért fontos?* Csak egyértelmű objektumnak adhatunk nevet: a $\lim a_n$, $\sup H$ jelölések azért értelmesek, mert legfeljebb egy ilyen szám van.
:::

## K15. feladat

Bizonyítsuk be, hogy

a) $a^2 + b^2 + c^2 \ge ab + bc + ca$ minden valós $a, b, c$-re, és egyenlőség pontosan $a = b = c$ esetén áll;

b) $x + \frac4x \ge 4$ minden $x > 0$-ra.

**Megoldás.**

a) A különbség kétszerese teljes négyzetek összege:
$$2(a^2 + b^2 + c^2) - 2(ab + bc + ca) = (a - b)^2 + (b - c)^2 + (c - a)^2 \ge 0.$$
Egyenlőség pontosan akkor, ha mindhárom négyzet $0$, azaz $a = b = c$. $\blacksquare$

b) $x > 0$-ra $x + \frac4x - 4 = \frac{x^2 - 4x + 4}{x} = \frac{(x - 2)^2}{x} \ge 0$, egyenlőség $x = 2$-re. (Számtani–mértani közép: $\frac{x + 4/x}{2} \ge \sqrt{x \cdot \frac4x} = 2$.)

::: elmelet
**Elméleti háttér — négyzetösszeg-módszer (SOS) és a közepek.**

*Négyzetösszeg.* Egy polinom-egyenlőtlenség legtisztább bizonyítása, ha a különbséget négyzetek nemnegatív együtthatós összegeként írjuk fel. Az egyenlőség esete ebből közvetlenül leolvasható: minden négyzetnek $0$-nak kell lennie. Az a) rész egyenlőtlensége ekvivalens azzal, hogy $(a + b + c)^2 \le 3(a^2 + b^2 + c^2)$ — vagyis a számtani közép legfeljebb a négyzetes közép.

*Számtani–mértani közép két tagra.* $u, v \ge 0$: $\frac{u + v}{2} \ge \sqrt{uv}$, mert a különbség $\frac{(\sqrt u - \sqrt v)^2}{2}$. Ha a **szorzat állandó** (itt $x \cdot \frac4x = 4$), az összeg alulról becsülhető, és a minimumot az egyenlő tagok ($x = \frac4x$) adják.

*Szélsőérték-keresés.* A b) rész egy szélsőérték-feladat: az $f(x) = x + \frac4x$ függvény minimuma $(0, \infty)$-en $4$, az $x = 2$ helyen. Ugyanezt később a deriválással is megkapjuk ($f'(x) = 1 - \frac{4}{x^2} = 0$), de a közepes módszer elemi és rögtön globális minimumot ad.
:::

## K16. feladat

Bizonyítsuk be, hogy minden $n \in \mathbb{N}$-re a) $(n!)^2 \ge n^n$; b) $n! \ge 2^{n-1}$.

**Megoldás.**

a) Párosítsuk a tényezőket: $(n!)^2 = \prod_{k=1}^n k \cdot \prod_{k=1}^n(n + 1 - k) = \prod_{k=1}^n k(n + 1 - k)$. Minden tényezőre
$$k(n + 1 - k) - n = kn + k - k^2 - n = (k - 1)(n - k) \ge 0,$$
mert $1 \le k \le n$. Így $(n!)^2 \ge n \cdot n \cdots n = n^n$. $\blacksquare$

b) $n! = 1 \cdot 2 \cdot 3 \cdots n$, és a $2, 3, \dots, n$ tényezők mindegyike legalább $2$, tehát $n! \ge 2^{n-1}$. (Indukcióval: $1! = 1 = 2^0$, és $(n+1)! = (n + 1)n! \ge 2 \cdot 2^{n-1}$.) $\blacksquare$

::: elmelet
**Elméleti háttér — a faktoriális becslései.**

*Felső és alsó becslések egy helyen:*
$$2^{n-1} \le n! \quad (\text{b}), \qquad n^{n/2} \le n! \quad (\text{a}), \qquad n! \le \left(\frac{n+1}{2}\right)^n \le n^n.$$
A felső becslés a számtani–mértani közép egyenlőtlenségből jön, az alsó a „párosítás” módszeréből.

*A párosítás módszere.* A $k$ és $n + 1 - k$ tényezők szorzata a $k$ függvényében egy lefelé nyíló parabola, amely a széleken ($k = 1$ vagy $k = n$) a legkisebb ($n$), középen a legnagyobb ($\approx \frac{(n+1)^2}{4}$). Így minden pár legalább $n$, legfeljebb $\left(\frac{n+1}{2}\right)^2$ — ez egyszerre adja az alsó és a felső becslést.

*Stirling-formula.* $n! \sim \sqrt{2\pi n}\left(\frac{n}{e}\right)^n$. Ehhez képest $n^{n/2}$ nagyon gyenge alsó becslés, de már elég ahhoz, hogy a faktoriális minden exponenciálisnál gyorsabban nőjön: $\frac{a^n}{n!} \le \frac{a^n}{n^{n/2}} = \left(\frac{a}{\sqrt n}\right)^n \to 0$.
:::

## K17. feladat

Legyenek $A, B \subseteq \mathbb{R}$ nem üres, korlátos halmazok. Mutassuk meg, hogy a) $\inf(A + B) = \inf A + \inf B$; b) $\sup(A - B) = \sup A - \inf B$, ahol $A - B = \{a - b : a \in A,\ b \in B\}$.

**Megoldás.**

a) Legyen $i = \inf A$, $j = \inf B$. Minden $a + b$-re $a + b \ge i + j$, tehát $i + j$ alsó korlát. Adott $\varepsilon > 0$-hoz van $a \in A$, $a < i + \frac\varepsilon2$, és $b \in B$, $b < j + \frac\varepsilon2$; így $a + b < i + j + \varepsilon$, vagyis $i + j + \varepsilon$ nem alsó korlát. Tehát $\inf(A + B) = i + j$.

b) $A - B = A + (-B)$, és $\sup(-B) = -\inf B$ (a K14. a) duálisa). A szuprémumra vonatkozó összegszabály szerint
$$\sup(A - B) = \sup A + \sup(-B) = \sup A - \inf B. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — az összeghalmaz és a „$\frac\varepsilon2$-trükk”.**

*Az összeghalmaz.* $A + B$ minden elemét egy $A$-beli és egy $B$-beli elem összegeként kapjuk, és a két választás **független**. Ezért a szélsőértékek külön-külön optimalizálhatók: $\sup(A + B) = \sup A + \sup B$, $\inf(A + B) = \inf A + \inf B$.

*A $\frac\varepsilon2$-trükk.* A megengedett $\varepsilon$ hibát előre szétosztjuk: mindkét halmazból $\frac\varepsilon2$-nél jobb közelítést választunk, az összeg hibája kisebb $\varepsilon$-nál. Ugyanez a gondolat a határértékek összegszabályában: $|(a_n + b_n) - (a + b)| \le |a_n - a| + |b_n - b| < \frac\varepsilon2 + \frac\varepsilon2$.

*Különbség.* A b) rész tanulsága: a különbség szuprémumához az egyik halmaz szuprémuma és a másik **infimuma** kell — mert a legnagyobb különbséget „a legnagyobbból a legkisebbet kivonva” kapjuk. Ezért hibás a $\sup(A - B) = \sup A - \sup B$ „szabály” (például $A = B = [0, 1]$-re a bal oldal $1$, a hibás jobb oldal $0$).

*Átmérő.* A $\sup(A - A) = \sup A - \inf A$ a halmaz **átmérője** — a legnagyobb távolság két eleme között.
:::

## K18. feladat

a) Bizonyítsuk be, hogy ha $x \ge 0$ és $n \ge 2$ egész, akkor $(1 + x)^n \ge 1 + nx + \frac{n(n-1)}{2}x^2$.

b) Ebből vezessük le, hogy $\frac{n}{2^n} \le \frac{2}{n - 1}$ ($n \ge 2$), és így $\frac{n}{2^n} \to 0$.

**Megoldás.**

a) *1. bizonyítás (binomiális tétel):* $(1 + x)^n = \sum_{k=0}^n\binom nkx^k$, és $x \ge 0$ miatt minden tag nemnegatív, így az első három tag összege alsó becslés: $1 + nx + \binom n2x^2$.

*2. bizonyítás (indukció):* $n = 2$-re egyenlőség. Ha $n$-re igaz, akkor ($1 + x > 0$)
$$(1 + x)^{n+1} \ge \left(1 + nx + \tfrac{n(n-1)}{2}x^2\right)(1 + x) = 1 + (n+1)x + \left(\tfrac{n(n-1)}{2} + n\right)x^2 + \tfrac{n(n-1)}{2}x^3,$$
és $\frac{n(n-1)}{2} + n = \frac{(n+1)n}{2}$, a köbös tag pedig nemnegatív. $\blacksquare$

b) $x = 1$-gyel: $2^n \ge \frac{n(n-1)}{2}$ (a többi tagot is elhagyva), tehát $\frac{n}{2^n} \le \frac{2n}{n(n-1)} = \frac{2}{n - 1}$. Mivel $\frac{2}{n-1} \to 0$, a rendőrelv szerint $\frac{n}{2^n} \to 0$ (és $\frac{n}{2^n} > 0$).

::: elmelet
**Elméleti háttér — a binomiális kifejtés csonkításai.**

*Alsó becslések.* $x \ge 0$ esetén a binomiális kifejtés minden tagja nemnegatív, így bármely részösszeg alsó becslés:
$$(1 + x)^n \ge 1 + nx \ (\text{Bernoulli}), \qquad (1 + x)^n \ge \binom n2x^2, \qquad (1 + x)^n \ge \binom nkx^k.$$
A „$k$-adik tag” becslése $n^k$ nagyságrendű, ezért ezzel minden $n^{k-1}$-es polinomot le lehet győzni: $\frac{n^{k-1}}{(1+x)^n} \le \frac{n^{k-1}}{\binom nk x^k} \to 0$.

*Nevezetes határértékek ebből.*

- $\frac{n^k}{a^n} \to 0$ ($a > 1$): $a = 1 + x$, és a $(k+1)$-edik tag;
- $\sqrt[n]n \to 1$: $n = (1 + h_n)^n \ge \binom n2h_n^2$, így $h_n \le \sqrt{\frac{2}{n - 1}}$;
- $q^n \to 0$ ($0 < q < 1$): $\frac1q = 1 + x$, Bernoulli.

*Negatív $x$.* $-1 \le x < 0$-ra a binomiális kifejtés tagjai váltakozó előjelűek, így a csonkítás nem ad automatikusan becslést; a Bernoulli-egyenlőtlenség ($x \ge -1$) ott is igaz, de a háromtagú nem (például $x = -1$, $n = 3$: bal oldal $0$, jobb oldal $1 - 3 + 3 = 1$).
:::

## K19. feladat

Vezessük le a teljességi (szuprémum-) axiómából a) az arkhimédészi tulajdonságot, b) a Cantor-tulajdonságot.

**Megoldás.**

a) *Arkhimédészi tulajdonság:* minden $x \in \mathbb R$-hez van $n \in \mathbb N$, $n > x$. Tegyük fel indirekt, hogy van olyan $x$, amelyre minden $n \le x$: ekkor $\mathbb{N}$ felülről korlátos, így létezik $s = \sup\mathbb N$. Az $s - 1$ nem felső korlát, tehát van $n \in \mathbb{N}$, $n > s - 1$. De akkor $n + 1 \in \mathbb N$ és $n + 1 > s$ — ellentmondás. $\blacksquare$

b) *Cantor-tulajdonság:* legyen $[a_1, b_1] \supseteq [a_2, b_2] \supseteq \dots$. A skatulyázottság miatt $a_n \le a_m \le b_m$, ha $n \le m$, és $a_n \le b_n \le b_m$, ha $n > m$: tehát **minden** $a_n \le b_m$. Az $A = \{a_n\}$ halmaz nem üres és felülről korlátos (bármely $b_m$-mel), így létezik $\xi = \sup A$. Ekkor $a_n \le \xi$ minden $n$-re (felső korlát), és $\xi \le b_m$ minden $m$-re (mert $b_m$ felső korlát, $\xi$ a legkisebb). Tehát $\xi \in [a_n, b_n]$ minden $n$-re: a metszet nem üres. $\blacksquare$

::: elmelet
**Elméleti háttér — a teljesség és következményei.**

*A teljességi axióma ereje.* A valós számok rendezett test axiómái mellé egyetlen további axiómát veszünk (minden nem üres, felülről korlátos halmaznak van szuprémuma), és ebből következik:

1. az arkhimédészi tulajdonság (a) rész);
2. a Cantor-tulajdonság (b) rész);
3. a monoton korlátos sorozatok konvergenciája;
4. a Bolzano–Weierstrass-tétel;
5. a Cauchy-kritérium;
6. a Bolzano-tétel, a Weierstrass-tétel (folytonos függvényekre).

A 2. feladatlap 19. feladata a megfordítást mutatja: az 1. és 2. együtt a teljességi axiómát adja. A $\mathbb{Q}$-ban az 1. igaz, a 2. nem — ezért a $\mathbb Q$ nem teljes.

*Az indirekt érvelés mintája.* Az a) részben a szuprémum létezéséből egy „túl nagy” elemet ($n + 1 > s$) konstruálunk. Ugyanez a minta mutatja, hogy $\{\frac1n\}$ infimuma $0$, és hogy $2^n$ felülről nem korlátos.

*Valódi különbség.* Léteznek nem arkhimédészi rendezett testek (végtelen kicsi elemekkel), ezek nem teljesek. A teljességi axióma tehát nem „magától értetődő”: ez különbözteti meg a valós számokat minden más rendezett testtől (a valós számok az egyetlen teljes rendezett test, izomorfia erejéig).
:::

## K20. feladat

a) Adott kerületű téglalapok közül melyiknek a legnagyobb a területe?

b) Adott $V$ térfogatú téglatestek közül melyiknek a legkisebb a felszíne?

**Megoldás.**

a) Legyenek az oldalak $a, b > 0$, a kerület $2(a + b) = K$ rögzített. A számtani–mértani közép szerint
$$T = ab \le \left(\frac{a + b}{2}\right)^2 = \frac{K^2}{16},$$
egyenlőség pontosan $a = b$ esetén. **A négyzet területe a legnagyobb** ($\frac{K^2}{16}$).

b) Élek $a, b, c > 0$, $abc = V$. A felszín $F = 2(ab + bc + ca)$. A számtani–mértani közép az $ab$, $bc$, $ca$ számokra:
$$\frac{ab + bc + ca}{3} \ge \sqrt[3]{(abc)^2} = V^{2/3}, \qquad F \ge 6V^{2/3},$$
egyenlőség pontosan $ab = bc = ca$, azaz $a = b = c = \sqrt[3]V$ esetén. **A kocka felszíne a legkisebb.**

::: elmelet
**Elméleti háttér — feltételes szélsőérték a közepek egyenlőtlenségével.**

*A két „irány”.* A számtani–mértani egyenlőtlenség, $\frac{u_1 + \dots + u_k}{k} \ge \sqrt[k]{u_1\cdots u_k}$, kétféleképpen használható:

- rögzített **összeg** mellett a **szorzat** felülről becsülhető (a) rész: maximum);
- rögzített **szorzat** mellett az **összeg** alulról becsülhető (b) rész: minimum).

Mindkét esetben az egyenlőség (az összes $u_i$ egyenlő) adja a szélsőértéket — feltéve, hogy ez megvalósítható.

*A változók megválasztása.* A b) részben nem az élekre ($a, b, c$), hanem a **lapterületekre** ($ab, bc, ca$) alkalmaztuk az egyenlőtlenséget, mert ezek összege a célfüggvény, szorzatuk pedig a feltételből ($V^2$) állandó. A jó változók megtalálása a módszer kulcsa.

*Izoperimetrikus jelenség.* Adott kerületű síkidomok közül a kör, adott felszínű testek közül a gömb zárja be a legnagyobb területet/térfogatot. A téglalapok (téglatestek) körében ugyanez a szimmetrikus alakzat (négyzet, kocka) — a „szimmetria optimalizál” elv egy elemi esete.
:::

## K21. feladat

Mutassuk meg, hogy $n^{10} < 2^n$, ha $n$ elegendően nagy, és adjunk meg egy konkrét küszöböt.

**Megoldás.**

**Állítás:** $n \ge 59$-re $n^{10} < 2^n$.

*Kezdőlépés:* $59^{10} = 511\,116\,753\,300\,641\,401 < 576\,460\,752\,303\,423\,488 = 2^{59}$.

*Indukciós lépés* ($n \ge 59$): ha $n^{10} < 2^n$, akkor
$$(n+1)^{10} = n^{10}\left(1 + \frac1n\right)^{10} < 2^n \cdot 2 = 2^{n+1},$$
ha $\left(1 + \frac1n\right)^{10} \le 2$. Ez $n \ge 15$-re igaz: $\left(1 + \frac1n\right)^{10} \le \left(1 + \frac{1}{15}\right)^{10}$, és a Bernoulli-egyenlőtlenség megfordított alakja helyett elég a binomiális tétel: $\left(1 + \frac1{15}\right)^{10} = \sum_{k=0}^{10}\binom{10}{k}15^{-k} \le \sum_{k=0}^{10}\frac{10^k}{k!\,15^k} \le \sum_{k=0}^{\infty}\frac{(2/3)^k}{k!} \le 1 + \frac23 + \frac{(2/3)^2}{2}\cdot\frac{1}{1 - 1/3} = 1 + 0{,}667 + 0{,}333 = 2$. $\blacksquare$

(A küszöb éles: $58^{10} = 430\,804\,206\,899\,405\,824 > 2^{58} = 288\,230\,376\,151\,711\,744$.)

::: elmelet
**Elméleti háttér — explicit küszöb exponenciális kontra hatvány esetén.**

*Két lépés.* (1) A **hányados** $\frac{(n+1)^{10}/n^{10}}{2^{n+1}/2^n} = \frac{(1 + 1/n)^{10}}{2}$ egy indextől ($n \ge 15$) $1$ alatt van, tehát az $\frac{n^{10}}{2^n}$ sorozat onnan csökken. (2) Egy **konkrét helyen** ellenőrizzük, hogy a hányados már $1$ alatt van; onnan indukcióval minden későbbi $n$-re is.

*A $\binom{n}{k} \le \frac{n^k}{k!}$ becslés.* $\binom{10}{k} = \frac{10 \cdot 9 \cdots (10 - k + 1)}{k!} \le \frac{10^k}{k!}$, és ezért $\left(1 + \frac{a}{N}\right)^N \le \sum_k\frac{a^k}{k!} = e^a$ — itt $a = \frac{10}{15}$, és $e^{2/3} \approx 1{,}948 < 2$. A számolás az exponenciális sort csonkítja, és a maradékot mértani sorral becsüli.

*Növekedési rendek.* Bármely $k$-ra és $a > 1$-re $n^k < a^n$ egy indextől, de a küszöb nagyon nagy lehet ($n^{10}$ és $2^n$ esetén $59$, $n^{100}$ esetén már $997$). Az aszimptotikus állítás ($\frac{n^k}{a^n} \to 0$) nem mond semmit a küszöb nagyságáról.
:::

## K22. feladat

Keressünk olyan $N_0$-t, hogy minden $n > N_0$-ra a) $\sqrt[n]{3} < 1{,}01$; b) $\sqrt[n]{n} < 1{,}1$.

**Megoldás.**

a) $\sqrt[n]3 < 1{,}01 \iff 3 < 1{,}01^n$. A Bernoulli-egyenlőtlenség szerint $1{,}01^n \ge 1 + \frac{n}{100}$, ami $n > 200$ esetén nagyobb $3$-nál. **$N_0 = 200$ megfelel.** (A pontos küszöb $\frac{\ln 3}{\ln 1{,}01} \approx 110{,}4$, azaz $n \ge 111$.)

b) $\sqrt[n]n < 1{,}1 \iff n < 1{,}1^n$. A binomiális tétel szerint ($n \ge 2$)
$$1{,}1^n = (1 + 0{,}1)^n > \binom n2 \cdot 0{,}01 = \frac{n(n-1)}{200},$$
ami legalább $n$, ha $n - 1 \ge 200$. **$N_0 = 200$ megfelel.** (A pontos küszöb $n \ge 39$; a Bernoulli-egyenlőtlenség, $1{,}1^n \ge 1 + \frac{n}{10}$, itt nem elég, mert $1 + \frac{n}{10} < n$.)

::: elmelet
**Elméleti háttér — $\sqrt[n]{a} \to 1$ és $\sqrt[n]{n} \to 1$ kvantitatívan.**

*$\sqrt[n]a$.* Ha $a > 1$ és $\sqrt[n]a = 1 + h_n$, akkor $a = (1 + h_n)^n \ge 1 + nh_n$, tehát $0 < h_n \le \frac{a - 1}{n}$. Így $\sqrt[n]a < 1 + \varepsilon$, ha $n > \frac{a - 1}{\varepsilon}$. Ez egy egyszerű, lineáris küszöb.

*$\sqrt[n]n$.* Itt a Bernoulli-becslés túl gyenge ($n \ge 1 + nh_n$ csak $h_n < 1$-et adna), ezért a kifejtés **négyzetes tagját** használjuk: $n \ge \binom n2h_n^2$, ahonnan $h_n \le \sqrt{\frac{2}{n - 1}}$. A küszöb $\varepsilon$-ban négyzetes: $n > 1 + \frac{2}{\varepsilon^2}$.

*Miért mások a küszöbök?* A $\sqrt[n]a - 1$ körülbelül $\frac{\ln a}{n}$, a $\sqrt[n]n - 1$ körülbelül $\frac{\ln n}{n}$ — az utóbbi lassabban tart $0$-hoz. A becslésekben ez úgy jelenik meg, hogy a második esetben „erősebb fegyver” (magasabb fokú tag) kell.

*Nem kell a legjobb küszöb.* A konvergencia definíciójához elég **egy** megfelelő $N_0$; egyszerű, ellenőrizhető becslés többet ér egy pontos, de nehezen igazolható küszöbnél.
:::

# A 4. feladatlaphoz

## K34. feladat

Legyen $a_1 = 1$ és $a_{n+1} = \sqrt{6 + a_n}$. Bizonyítsuk be, hogy a sorozat monoton nő és korlátos, és határozzuk meg a határértékét.

**Megoldás.**

*Jól definiált:* indukcióval $a_n > 0$, így $6 + a_n > 0$.

*Korlátos:* indukcióval $1 \le a_n < 3$. $a_1 = 1$; ha $1 \le a_n < 3$, akkor $\sqrt7 \le a_{n+1} = \sqrt{6 + a_n} < \sqrt9 = 3$.

*Monoton nő:* $a_2 = \sqrt7 > 1 = a_1$. Ha $a_n \le a_{n+1}$, akkor $6 + a_n \le 6 + a_{n+1}$, és a négyzetgyök monotonitása miatt $a_{n+1} \le a_{n+2}$.

*Határérték:* monoton és korlátos, tehát konvergens; legyen $a_n \to A$, ahol $1 \le A \le 3$. A rekurzióban határt véve (a négyzetgyök folytonos) $A = \sqrt{6 + A}$, azaz $A^2 - A - 6 = (A - 3)(A + 2) = 0$, és $A \ge 1$ miatt **$A = 3$**.

::: elmelet
**Elméleti háttér — a „monoton + korlátos” módszer.**

*A lépések:* (1) jól definiáltság; (2) invariáns intervallum ($f([1, 3]) \subseteq [1, 3]$, itt $f(x) = \sqrt{6 + x}$) — ez korlátot ad; (3) monotonitás (növő $f$ esetén az első két tag összehasonlítása + indukció); (4) a **monoton konvergencia tétele** (monoton, korlátos sorozat konvergens, határértéke a $\sup$, illetve $\inf$); (5) a határérték a **fixpontegyenletből** ($A = f(A)$), a korlátok alapján kiválasztva a megfelelő gyököt.

*Miért kell előbb a konvergencia?* A fixpontegyenlet csak azt mondja meg, *mi lehet* a határérték, ha van. Divergens sorozatra a formális számolás értelmetlen eredményt adhat.

*A konvergencia sebessége.* $|a_{n+1} - 3| = \frac{|a_n - 3|}{\sqrt{6 + a_n} + 3} \le \frac{|a_n - 3|}{\sqrt7 + 3} < \frac{|a_n - 3|}{5}$: a hiba lépésenként legalább ötödére csökken, a sorozat nagyon gyorsan konvergál. Ez a kontrakció elve (Banach-fixponttétel): ha $|f'| \le q < 1$ a fixpont környezetében, az iteráció mértani sebességgel konvergál.

*Általánosítás.* Az $a_{n+1} = \sqrt{c + a_n}$ ($c > 0$) sorozat határértéke $\frac{1 + \sqrt{1 + 4c}}{2}$; a „végtelen gyökkifejezés” $\sqrt{6 + \sqrt{6 + \sqrt{6 + \dots}}} = 3$.
:::

## K35. feladat

Keressünk olyan $N_0$-t, hogy minden $n > N_0$-ra a) $\sqrt{n + 4} - \sqrt n < 0{,}01$; b) $\left|\sqrt{n^2 + 3n} - n - \frac32\right| < 0{,}01$.

**Megoldás.**

a) Gyöktelenítve
$$\sqrt{n + 4} - \sqrt n = \frac{4}{\sqrt{n + 4} + \sqrt n} < \frac{4}{2\sqrt n} = \frac{2}{\sqrt n},$$
ami legfeljebb $0{,}01$, ha $\sqrt n \ge 200$, azaz $n \ge 40\,000$. **$N_0 = 39\,999$ megfelel.**

b) Legyen $s = \sqrt{n^2 + 3n}$. Ekkor $s - n = \frac{3n}{s + n}$, és
$$\frac{3n}{s + n} - \frac32 = \frac{6n - 3s - 3n}{2(s + n)} = \frac{3(n - s)}{2(s + n)} = -\frac{3}{2(s + n)} \cdot \frac{3n}{s + n} = -\frac{9n}{2(s + n)^2}.$$
Mivel $s + n > 2n$, ennek abszolút értéke kisebb, mint $\frac{9n}{8n^2} = \frac{9}{8n}$, ami legfeljebb $0{,}01$, ha $n \ge 112{,}5$. **$N_0 = 112$ megfelel.**

::: elmelet
**Elméleti háttér — gyöktelenítés, és a hiba „második rendje”.**

*Gyöktelenítés.* $\sqrt u - \sqrt v = \frac{u - v}{\sqrt u + \sqrt v}$: a különbség kicsi, ha $u - v$ kicsi a gyökök összegéhez képest. Az a) részben $u - v = 4$ állandó, a nevező $\sqrt n$ rendben nő, így a különbség $\frac{2}{\sqrt n}$ rendben csökken.

*A határérték és a hibája.* A b) részben $\sqrt{n^2 + 3n} - n \to \frac32$ (ez $\sqrt{n^2 + an + b} - n \to \frac a2$ speciális esete), és a gyöktelenítés kétszeri alkalmazásával a **hibát** is kiszámoltuk: $\frac{9n}{2(s + n)^2} \approx \frac{9}{8n}$. A hiba tehát $\frac1n$ rendű.

*Taylor-szemlélet.* $\sqrt{n^2 + 3n} = n\sqrt{1 + \frac3n} \approx n\left(1 + \frac{3}{2n} - \frac{9}{8n^2}\right) = n + \frac32 - \frac{9}{8n}$ — az $\sqrt{1 + x} \approx 1 + \frac x2 - \frac{x^2}{8}$ közelítésből. A gyöktelenítéses számolás ennek elemi, pontos megfelelője.

*Küszöb és becslés.* Mindkét esetben egy egyszerűbb felső becslést oldottunk meg; az így kapott $N_0$ megfelelő, de nem feltétlenül a legkisebb. A konvergencia bizonyításához ez elég.
:::

## K36. feladat

Mutassuk meg a definíció alapján, hogy $\lim\limits_{n \to \infty}\dfrac{3n - 1}{n + 2} = 3$; adjunk meg $\varepsilon = 0{,}01$-hoz, illetve általában $\varepsilon > 0$-hoz $n_\varepsilon$-t.

**Megoldás.**

$$\left|\frac{3n - 1}{n + 2} - 3\right| = \left|\frac{3n - 1 - 3n - 6}{n + 2}\right| = \frac{7}{n + 2} < \varepsilon \iff n > \frac7\varepsilon - 2.$$

- $\varepsilon = 0{,}01$: $n > 698$, tehát **$n_\varepsilon = 699$**.
- Általában **$n_\varepsilon = \left\lfloor \frac7\varepsilon \right\rfloor$** (vagy bármely nagyobb egész) jó, hiszen $\left\lfloor\frac7\varepsilon\right\rfloor > \frac7\varepsilon - 2$.

::: elmelet
**Elméleti háttér — a definíció és a racionális sorozatok.**

*A definíció.* $a_n \to a$, ha minden $\varepsilon > 0$-hoz van $n_\varepsilon$, hogy $n \ge n_\varepsilon$ esetén $|a_n - a| < \varepsilon$. Racionális törtsorozatoknál $a_n - a$ közös nevezőre hozva egyetlen tört, amelynek számlálója alacsonyabb fokú, mint a nevezője — így $|a_n - a|$ közvetlenül becsülhető.

*Általános eset.* Ha $a_n = \frac{\alpha n + \beta}{\gamma n + \delta}$ ($\gamma \ne 0$), akkor $a_n - \frac\alpha\gamma = \frac{\beta\gamma - \alpha\delta}{\gamma(\gamma n + \delta)}$, és a küszöb $\frac{1}{\varepsilon}$ rendű. Magasabb fokú számláló/nevező esetén a különbség számlálója $1$-gyel alacsonyabb fokú, és a küszöb ugyanígy kiolvasható.

*Az egészrész.* Az $n > c$ feltételt kielégítő legkisebb természetes szám $\lfloor c \rfloor + 1$ (ha $c \ge 0$). Az arkhimédészi tulajdonság garantálja a létezését. A küszöb nem egyértelmű — bármely nagyobb is jó —, ezért a „legjobb” küszöbre nincs szükség.
:::

## K37. feladat

Írjuk fel kvantorokkal a következő állításokat: a) $(a_n)$ nem korlátos; b) $(a_n)$ nem Cauchy-sorozat; c) $a_n \not\to +\infty$.

**Megoldás.**

a) „Korlátos”: $\exists K \in \mathbb{R}\ \forall n \in \mathbb{N}: |a_n| \le K$. Tagadása:
$$\forall K \in \mathbb{R}\ \exists n \in \mathbb{N}: |a_n| > K.$$

b) „Cauchy-sorozat”: $\forall \varepsilon > 0\ \exists N\ \forall m, n \ge N: |a_m - a_n| < \varepsilon$. Tagadása:
$$\exists \varepsilon > 0\ \forall N\ \exists m, n \ge N: |a_m - a_n| \ge \varepsilon.$$

c) „$a_n \to +\infty$”: $\forall K\ \exists N\ \forall n \ge N: a_n > K$. Tagadása:
$$\exists K\ \forall N\ \exists n \ge N: a_n \le K,$$
azaz van olyan $K$, amelynél nem nagyobb tag végtelen sok van (van felülről korlátos részsorozat).

::: elmelet
**Elméleti háttér — tagadás és jelentés.**

*Szabály.* $\neg\forall \equiv \exists\neg$, $\neg\exists \equiv \forall\neg$; a kvantorok sorrendje megmarad, és a magállítást tagadjuk.

*Szemléletes jelentések.*

- Nem korlátos: a sorozat tagjai tetszőlegesen nagy abszolút értékűek lehetnek — ekkor van $\pm\infty$-hez tartó részsorozat.
- Nem Cauchy: van egy $\varepsilon$, hogy tetszőlegesen messze is található két tag, amelyek legalább $\varepsilon$ távolságra vannak — ekkor a sorozat (a Cauchy-kritérium szerint) divergens. Ebből indukcióval kiválasztható $n_1 < m_1 < n_2 < m_2 < \dots$, hogy $|a_{m_k} - a_{n_k}| \ge \varepsilon$.
- Nem tart $+\infty$-hez: van egy szint, amely alá végtelen sokszor visszaesik.

*Figyelem.* „Nem korlátos” nem jelenti, hogy „$\to +\infty$ vagy $\to -\infty$”: az $a_n = (-1)^nn$ vagy a $0, 1, 0, 2, 0, 3, \dots$ sorozat nem korlátos, mégsincs (tágabb értelemben sem) határértéke.
:::

## K38. feladat

Határozzuk meg a következő sorozatok határértékét, és adjunk meg adott $\varepsilon > 0$-hoz $n_\varepsilon$-t:

a) $\frac{5}{n^2}$; b) $\frac{3n - 2}{n + 1}$; c) $\frac{1}{n^2 - n}$ ($n \ge 2$); d) $\frac{1^2 + 2^2 + \dots + n^2}{n^3}$; e) $\sqrt[n]{5}$; f) $\sqrt{n + 1} - \sqrt{n - 1}$; g) $n\left(\sqrt{n^2 + 2} - n\right)$; h) $\sqrt[3]{n + 1} - \sqrt[3]{n}$; i) $\frac{2^n + 1}{2^n}$; j) $\sqrt[n]{2n}$.

**Megoldás.**

a) $\to 0$: $\frac5{n^2} < \varepsilon \iff n > \sqrt{5/\varepsilon}$.

b) $\frac{3n - 2}{n + 1} = 3 - \frac{5}{n + 1} \to 3$: $\frac{5}{n+1} < \varepsilon$, ha $n > \frac5\varepsilon$.

c) $\to 0$: $n \ge 2$-re $n^2 - n \ge \frac{n^2}{2}$ (ez $n \ge 2$-vel ekvivalens), így $\frac{1}{n^2 - n} \le \frac{2}{n^2} < \varepsilon$, ha $n > \sqrt{2/\varepsilon}$ (és $n \ge 2$).

d) $\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}$, így $\frac{1^2 + \dots + n^2}{n^3} = \frac13 + \frac{1}{2n} + \frac{1}{6n^2} \to \frac13$. A hiba $\frac{1}{2n} + \frac{1}{6n^2} \le \frac{2}{3n} < \varepsilon$, ha $n > \frac{2}{3\varepsilon}$.

e) $\to 1$: $\sqrt[n]5 = 1 + h_n$, Bernoulli: $5 \ge 1 + nh_n$, tehát $0 < h_n \le \frac4n < \varepsilon$, ha $n > \frac4\varepsilon$.

f) $\to 0$: $\sqrt{n+1} - \sqrt{n-1} = \frac{2}{\sqrt{n+1} + \sqrt{n-1}} \le \frac{2}{\sqrt n} < \varepsilon$, ha $n > \frac{4}{\varepsilon^2}$.

g) $\to 1$: $n(\sqrt{n^2 + 2} - n) = \frac{2n}{s + n}$, ahol $s = \sqrt{n^2 + 2}$. Ekkor $\left|\frac{2n}{s + n} - 1\right| = \frac{s - n}{s + n}$, és $s - n = \frac{2}{s + n} \le \frac1n$, $s + n \ge 2n$, így a hiba legfeljebb $\frac{1}{2n^2} < \varepsilon$, ha $n > \frac{1}{\sqrt{2\varepsilon}}$.

h) $\to 0$: $A = \sqrt[3]{n+1}$, $B = \sqrt[3]n$ jelöléssel $A - B = \frac{1}{A^2 + AB + B^2} \le \frac{1}{3B^2} = \frac{1}{3n^{2/3}} < \varepsilon$, ha $n > (3\varepsilon)^{-3/2}$.

i) $\to 1$: $\left|\frac{2^n + 1}{2^n} - 1\right| = \frac{1}{2^n} \le \frac1n < \varepsilon$, ha $n > \frac1\varepsilon$ (mert $2^n \ge n$).

j) $\to 1$: $\sqrt[n]{2n} = 1 + h_n$; a binomiális tétel szerint $2n = (1 + h_n)^n \ge \binom n2h_n^2$, így $h_n^2 \le \frac{4}{n - 1}$, $h_n \le \frac{2}{\sqrt{n - 1}} < \varepsilon$, ha $n > 1 + \frac{4}{\varepsilon^2}$.

::: elmelet
**Elméleti háttér — a becslés mint mesterség.**

*Az általános séma.* $|a_n - a| \le b_n$, ahol $b_n$ egyszerű és $0$-hoz tart; a küszöb a $b_n < \varepsilon$ egyenlőtlenségből. A becslésnek nem kell pontosnak lennie — csak $0$-hoz kell tartania.

*Eszköztár.*

1. **Átalakítás:** $\frac{3n - 2}{n + 1} = 3 - \frac{5}{n + 1}$; összegképletek ($\sum k^2 = \frac{n(n+1)(2n+1)}{6}$).
2. **Nevező alulról:** $n^2 - n \ge \frac{n^2}{2}$ ($n \ge 2$); $\sqrt{n+1} + \sqrt{n-1} \ge \sqrt n$.
3. **Gyöktelenítés:** négyzetgyökre $(x - y)(x + y)$, köbgyökre $(x - y)(x^2 + xy + y^2)$.
4. **Bernoulli** ($\sqrt[n]a = 1 + h_n$, $a \ge 1 + nh_n$) és a **binomiális tétel négyzetes tagja** ($\sqrt[n]{n}$, $\sqrt[n]{2n}$, ahol a lineáris tag kevés).
5. **Exponenciális kontra lineáris:** $2^n \ge n$, így $\frac{1}{2^n} \le \frac1n$.

*Nevezetes határértékek összefoglalva:* $\frac{1}{n^p} \to 0$ ($p > 0$); $\sqrt[n]{a} \to 1$ ($a > 0$); $\sqrt[n]{n} \to 1$, sőt $\sqrt[n]{n^k} \to 1$; $q^n \to 0$ ($|q| < 1$); $\frac{n^k}{a^n} \to 0$ ($a > 1$); $\frac{a^n}{n!} \to 0$. Ezekre a határérték-számításban hivatkozhatunk.

*Riemann-összeg előzetes.* A d) rész $\frac1n\sum_{k=1}^n\left(\frac kn\right)^2$, ami az $\int_0^1 x^2\,dx = \frac13$ integrál közelítő összege — a határérték nem véletlenül $\frac13$.
:::

## K39. feladat

a) Mutassuk meg, hogy ha $a_n \to a$, akkor $a_n^2 \to a^2$.

b) Következik-e $a_n^2 \to a^2$-ből, hogy $a_n \to a$?

c) Mutassuk meg, hogy ha $a_n \ge 0$ és $a_n \to a$, akkor $\sqrt{a_n} \to \sqrt a$.

**Megoldás.**

a) Konvergens sorozat korlátos: $|a_n| \le K$. Ekkor
$$|a_n^2 - a^2| = |a_n - a|\,|a_n + a| \le (K + |a|)\,|a_n - a|.$$
Adott $\varepsilon$-hoz a konvergencia ad $N$-et, hogy $n \ge N$-re $|a_n - a| < \frac{\varepsilon}{K + |a| + 1}$; ekkor $|a_n^2 - a^2| < \varepsilon$. $\blacksquare$

b) **Nem:** $a_n = (-1)^n$-re $a_n^2 = 1 \to 1$, de $(a_n)$ divergens. (Ha $a = 0$, akkor igen: $a_n^2 \to 0 \iff |a_n| \to 0 \iff a_n \to 0$.)

c) $a \ge 0$, mert nemnegatív sorozat határértéke nemnegatív. Ha $a = 0$: adott $\varepsilon$-hoz egy indextől $a_n < \varepsilon^2$, így $\sqrt{a_n} < \varepsilon$. Ha $a > 0$:
$$|\sqrt{a_n} - \sqrt a| = \frac{|a_n - a|}{\sqrt{a_n} + \sqrt a} \le \frac{|a_n - a|}{\sqrt a} \to 0. \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — konvergencia és folytonos függvények.**

*Az általános elv.* Ha $f$ folytonos az $a$ pontban, és $a_n \to a$ (a tagok $f$ értelmezési tartományában vannak), akkor $f(a_n) \to f(a)$ — ez a folytonosság sorozatos (Heine-) jellemzése. A feladat ennek speciális esetei az $x^2$ és a $\sqrt x$ függvényre, közvetlen bizonyítással.

*A bizonyítások szerkezete.* (1) $|f(a_n) - f(a)|$-t $|a_n - a|$ szorzataként írjuk fel ($x^2 - y^2 = (x - y)(x + y)$, gyöktelenítés); (2) a másik tényezőt korlátozzuk (konvergens sorozat korlátos; $\sqrt{a_n} + \sqrt a \ge \sqrt a > 0$). Ez **Lipschitz-típusú becslés**: $|f(a_n) - f(a)| \le C|a_n - a|$.

*Az $a = 0$ eset külön.* A $\sqrt x$ a $0$-ban nem Lipschitz (függőleges érintő), ezért ott más becslés kell: $\sqrt{a_n} < \varepsilon \iff a_n < \varepsilon^2$. A küszöb itt $\varepsilon^2$-hez tartozik — a konvergencia „lassabb”.

*Megfordítás.* $f(a_n) \to f(a)$-ból $a_n \to a$ csak akkor következik, ha $f$ injektív és inverze folytonos (például $f(x) = x^3$ vagy $\sqrt x$ a $[0, \infty)$-en). Az $x^2$ a $\mathbb{R}$-en nem injektív, innen az ellenpélda.
:::

## K40. feladat

a) Adjunk meg olyan divergens sorozatot, amelyre $a_{2n} - a_n \to 0$.

b) Mutassuk meg, hogy ha $a_{n+1} - a_n \to 0$, akkor $\frac{a_n}{n} \to 0$.

**Megoldás.**

a) $a_n = \ln(\ln n)$ ($n \ge 2$; $a_1$ tetszőleges). Ekkor $a_n \to +\infty$ (divergens), és
$$a_{2n} - a_n = \ln\frac{\ln 2n}{\ln n} = \ln\left(1 + \frac{\ln 2}{\ln n}\right) \to \ln 1 = 0,$$
mert $\ln n \to \infty$ és a $\ln$ folytonos.

b) Legyen $\varepsilon > 0$, és $N$ olyan, hogy $k \ge N$-re $|a_{k+1} - a_k| < \varepsilon$. Ekkor $n > N$-re a teleszkopikus felbontás szerint
$$|a_n - a_N| \le \sum_{k=N}^{n-1}|a_{k+1} - a_k| < (n - N)\varepsilon,$$
így
$$\left|\frac{a_n}{n}\right| \le \frac{|a_N|}{n} + \frac{n - N}{n}\varepsilon < \frac{|a_N|}{n} + \varepsilon.$$
Az első tag $0$-hoz tart, tehát egy indextől $< \varepsilon$, és ott $\left|\frac{a_n}{n}\right| < 2\varepsilon$. Mivel $\varepsilon$ tetszőleges volt, $\frac{a_n}{n} \to 0$. $\blacksquare$

::: elmelet
**Elméleti háttér — különbségek, átlagok és a Cesàro-elv.**

*Mit mond a szomszédos különbség?* Az $a_{n+1} - a_n \to 0$ nem garantál konvergenciát (lásd $\sqrt n$, $\ln n$), de korlátozza a növekedést: $a_n = o(n)$, vagyis $a_n$ lassabban nő minden lineáris függvénynél (b) rész). Az $a_{2n} - a_n \to 0$ még erősebb (ekkor $a_n$ például $\ln\ln n$-nél nem nőhet sokkal gyorsabban), de konvergenciát ez sem ad.

*A bizonyítás technikája.* „Fej + farok”: az első $N$ tag hatása ($\frac{|a_N|}{n}$) elhal, mert rögzített mennyiséget osztunk $n$-nel; a farokban a kis lépések összege legfeljebb $(n - N)\varepsilon$. Ez a **Cesàro-féle** gondolatmenet.

*Stolz–Cesàro-tétel.* Ha $b_n$ szigorúan nő és $b_n \to \infty$, továbbá $\frac{a_{n+1} - a_n}{b_{n+1} - b_n} \to L$, akkor $\frac{a_n}{b_n} \to L$. A feladat a $b_n = n$, $L = 0$ eset. Következmény: ha $x_n \to L$, akkor az átlagok is: $\frac{x_1 + \dots + x_n}{n} \to L$.

*A Cauchy-kritériummal szemben.* A konvergenciához **minden** távoli tagpár közelsége kell ($|a_m - a_n| < \varepsilon$, ha $m, n \ge N$); a szomszédos, vagy akár a $2n$-edik és $n$-edik tag közelsége kevés.
:::

## K41. feladat

Hogyan viszonyulnak az $a_n \to a$ állításhoz a következők?

a) $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - a| < \frac{\varepsilon}{n}$;

b) $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - a| < 3 + \varepsilon$;

c) $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - a| < \varepsilon^3$;

d) $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - a| \le \varepsilon + \frac1n$;

e) $\exists \varepsilon > 0\ \forall n: |a_n - a| < \varepsilon$;

f) $\forall \varepsilon > 0\ \forall N\ \exists n \ge N: |a_n - a| < \varepsilon$;

g) $\exists N\ \forall \varepsilon > 0\ \forall n \ge N: |a_n - a| < \varepsilon$.

**Megoldás.**

a) **Erősebb**: ebből következik a konvergencia ($\frac\varepsilon n \le \varepsilon$), de fordítva nem: $a_n = a + \frac{1}{\sqrt n}$ konvergál $a$-hoz, de $\frac{1}{\sqrt n} < \frac\varepsilon n \iff \sqrt n < \varepsilon$ nagy $n$-re hamis. Az állítás azzal ekvivalens, hogy $n(a_n - a) \to 0$.

b) **Gyengébb**: a konvergenciából következik, fordítva nem ($a_n = a + 2(-1)^n$). Jelentése: $\limsup|a_n - a| \le 3$.

c) **Ekvivalens**: adott $\varepsilon'$-höz $\varepsilon = \sqrt[3]{\varepsilon'}$; fordítva a definíciót $\varepsilon^3$-nel alkalmazzuk.

d) **Ekvivalens**: a konvergenciából nyilván következik. Fordítva, adott $\varepsilon'$-höz alkalmazzuk $\varepsilon = \frac{\varepsilon'}{3}$-mal; $n \ge \max\{N, \frac{3}{\varepsilon'} + 1\}$ esetén $|a_n - a| \le \frac{\varepsilon'}3 + \frac{\varepsilon'}{3} < \varepsilon'$.

e) **Gyengébb**: ez a sorozat **korlátossága** (az $a$ körüli $\varepsilon$ sugarú intervallum tartalmazza az összes tagot).

f) **Gyengébb**: minden környezetbe végtelen sok tag esik — $a$ a sorozat **sűrűsödési értéke**.

g) **Erősebb**: az $N$ nem függ $\varepsilon$-tól, így $n \ge N$-re $|a_n - a|$ minden pozitív számnál kisebb, azaz $a_n = a$: a sorozat **egy indextől állandó**.

::: elmelet
**Elméleti háttér — a kvantorok sorrendje és a hibakorlát alakja.**

*Hibakorlát.* Ha a definícióban $\varepsilon$ helyett $g(\varepsilon)$ áll, ahol $g$ pozitív és tetszőlegesen kicsivé tehető, az állítás ekvivalens a konvergenciával ($\varepsilon^3$; $\varepsilon + \frac1n$, mert a $\frac1n$ tag $n$ növelésével eltüntethető). Ha a korlát nem tehető kicsivé ($3 + \varepsilon$), gyengébb állítást kapunk; ha a korlát $n$-nel is csökken ($\frac\varepsilon n$), erősebbet — ekkor a konvergencia **sebességéről** is mondunk valamit.

*A kvantorok sorrendje.* Ugyanazok a kvantorok más sorrendben teljesen más fogalmakat adnak:

| formula | fogalom |
|:--|:--|
| $\forall\varepsilon\ \exists N\ \forall n \ge N$ | konvergencia |
| $\forall\varepsilon\ \forall N\ \exists n \ge N$ | sűrűsödési érték |
| $\exists N\ \forall\varepsilon\ \forall n \ge N$ | egy indextől állandó |
| $\exists\varepsilon\ \forall n$ | korlátosság |

*Konvergenciasebesség.* Az a) állítás $|a_n - a| = o(\frac1n)$; általában a numerikus analízisben a sebességet $|a_n - a| \le Cq^n$ (lineáris konvergencia) vagy $|a_{n+1} - a| \le C|a_n - a|^2$ (kvadratikus, mint a Newton-módszernél) típusú becslésekkel mérik.
:::

## K42. feladat

Mutassuk meg, hogy a $\{m + n\sqrt2 : m, n \in \mathbb{Z}\}$ halmaz sűrű $\mathbb{R}$-ben.

**Megoldás.**

Jelölje $G$ a halmazt; $G$ zárt az összeadásra, kivonásra és az egészekkel való szorzásra.

*1. $G$-ben vannak tetszőlegesen kicsi pozitív elemek.* Legyen $N \in \mathbb{N}$. Tekintsük a $\{k\sqrt2\}$ törtrészeket $k = 0, 1, \dots, N$-re: ez $N + 1$ szám a $[0, 1)$-ben. Osszuk a $[0, 1)$-et $N$ darab $\frac1N$ hosszú intervallumra; a skatulyaelv szerint valamelyikbe kettő esik: $\{k\sqrt2\}$ és $\{l\sqrt2\}$, $k \ne l$. Ekkor
$$g = (k - l)\sqrt2 - ([k\sqrt2] - [l\sqrt2]) \in G, \qquad 0 < |g| < \frac1N,$$
ahol $g \ne 0$, mert $\sqrt2$ irracionális ($k \ne l$). $|g|$ vagy $-|g|$ is eleme $G$-nek, így van $G$-ben $0 < d < \frac1N$ elem.

*2. Sűrűség.* Legyen $(a, b)$ tetszőleges intervallum, és $N$ olyan, hogy $\frac1N < b - a$. Az 1. lépés szerinti $d$-vel a $\{jd : j \in \mathbb{Z}\} \subseteq G$ pontok egymástól $d < b - a$ távolságra vannak, így valamelyik $(a, b)$-be esik: $j = \left[\frac ad\right] + 1$-re $a < jd \le a + d < b$. $\blacksquare$

::: elmelet
**Elméleti háttér — az $\mathbb{R}$ additív részcsoportjai és a Kronecker-tétel.**

*Részcsoportok.* $\mathbb R$ minden additív részcsoportja vagy **diszkrét** (valamely $p \ge 0$ egész többszöröseinek halmaza), vagy **sűrű**. Ha van legkisebb pozitív eleme, diszkrét; ha nincs, vannak tetszőlegesen kicsi pozitív elemei, és ezek többszörösei sűrűn lefedik a számegyenest (2. lépés).

*$\mathbb Z + \alpha\mathbb Z$.* Pontosan akkor sűrű, ha $\alpha$ irracionális. (Racionális $\alpha = \frac pq$ esetén $\mathbb{Z} + \alpha\mathbb{Z} = \frac1q\mathbb{Z}$ diszkrét.) Ekvivalens megfogalmazás (**Kronecker-tétel**): irracionális $\alpha$-ra a $\{n\alpha\}$ törtrészek sűrűek a $[0, 1]$-ben (sőt Weyl tétele szerint egyenletes eloszlásúak).

*A skatulyaelv szerepe.* A Dirichlet-féle approximációs tétel ugyanebből a gondolatmenetből adódik: minden $N$-re van $1 \le q \le N$ és $p$, hogy $|q\alpha - p| < \frac1N$, így $\left|\alpha - \frac pq\right| < \frac{1}{qN} \le \frac{1}{q^2}$.

*Alkalmazások.* A $\sin n$ sorozat sűrűsödési értékeinek halmaza a $[-1, 1]$, mert $\{n \bmod 2\pi\}$ sűrű a $[0, 2\pi]$-ben ($\pi$ irracionális). Egy periodikus folytonos függvény két összemérhetetlen periódussal konstans.
:::

## K43. feladat

Adjunk meg olyan sorozatot, amelynek sűrűsödési értékei pontosan a $[0, 1]$ intervallum pontjai.

**Megoldás.**

A sorozat blokkokból áll; a $k$-adik blokk ($k = 1, 2, \dots$) a $\frac0k, \frac1k, \dots, \frac kk$ számok:
$$0, 1;\ 0, \tfrac12, 1;\ 0, \tfrac13, \tfrac23, 1;\ 0, \tfrac14, \tfrac24, \tfrac34, 1;\ \dots$$

- *Minden $x \in [0, 1]$ sűrűsödési érték:* a $k$-adik blokkban van $\frac jk$, amelyre $\left|x - \frac jk\right| \le \frac{1}{2k}$. Ha $\varepsilon > 0$, minden $k > \frac{1}{2\varepsilon}$ blokkban van egy $\varepsilon$-nál közelebbi tag, tehát végtelen sok.
- *Más sűrűsödési érték nincs:* minden tag $[0, 1]$-ben van, és egy zárt intervallumban levő sorozat részsorozatainak határértéke is ott van (egyenlőtlenség határátmenetben megmarad).

::: elmelet
**Elméleti háttér — sűrűsödési értékek halmaza.**

*Definíció.* $s$ sűrűsödési érték, ha van hozzá tartó részsorozat $\iff$ minden környezetébe végtelen sok tag esik. A sűrűsödési értékek $S$ halmaza mindig **zárt**: ha $s_k \in S$ és $s_k \to s$, akkor $s$ minden környezete tartalmaz egy $s_k$-t a környezetével együtt, így végtelen sok tagot.

*Mi lehet $S$?* Bármely nem üres zárt halmaz előáll egy sorozat sűrűsödési értékeinek halmazaként (ha a $\pm\infty$-t is megengedjük, akkor bármely zárt halmaz $\overline{\mathbb R}$-ben). A konstrukció: soroljuk fel a halmaz egy megszámlálható sűrű részhalmazát (itt a $[0, 1]$-beli racionálisokat) úgy, hogy minden elem végtelen sokszor szerepeljen.

*Kapcsolat a limsup-pal.* Korlátos sorozatra $\limsup = \max S$, $\liminf = \min S$; itt $\limsup = 1$, $\liminf = 0$. A sorozat divergens, mert $S$ több elemű (konvergens sorozatnál $S$ egyelemű).

*A „blokkos felsorolás” technikája.* Ugyanez a módszer bizonyítja, hogy $\mathbb N \times \mathbb N$ megszámlálható, és ad olyan sorozatot, amelyben minden természetes szám végtelen sokszor szerepel (43. feladat).
:::

# Az 5. feladatlaphoz

## K44. feladat

Mondjuk ki a $\lim\limits_{n\to\infty}a_n = +\infty$ definícióját és tagadását. Mutassunk példát felülről nem korlátos sorozatra, amely nem tart $+\infty$-hez.

**Megoldás.**

**Definíció:** $\forall K \in \mathbb R\ \exists N\ \forall n \ge N: a_n > K$.

**Tagadás:** $\exists K \in \mathbb R\ \forall N\ \exists n \ge N: a_n \le K$ — vagyis van egy szint, amelynél nem nagyobb tag végtelen sok van.

**Példa:** $a_n = n$, ha $n$ páros, és $a_n = 0$, ha $n$ páratlan. Felülről nem korlátos (a páros indexű tagok tetszőlegesen nagyok), de $K = 0$-ra végtelen sok tag $\le 0$, tehát $a_n \not\to +\infty$.

::: elmelet
**Elméleti háttér — „nem korlátos” és „végtelenbe tart”.**

*A különbség kvantorokban.*

- Felülről nem korlátos: $\forall K\ \exists n: a_n > K$ — *van* nagy tag.
- $a_n \to +\infty$: $\forall K\ \exists N\ \forall n \ge N: a_n > K$ — egy indextől *minden* tag nagy.

Az utóbbiból következik az előbbi, fordítva nem. A „végtelen sok tag nagy” és a „majdnem minden tag nagy” különbsége ugyanaz, mint a sűrűsödési érték és a határérték különbsége.

*Kapcsolat a limsup/liminf-fel.* Felülről nem korlátos $\iff$ $\limsup a_n = +\infty$; $a_n \to +\infty$ $\iff$ $\liminf a_n = +\infty$. A példában $\limsup = +\infty$, $\liminf = 0$.

*Részsorozatok.* Ha egy sorozat felülről nem korlátos, van $+\infty$-hez tartó részsorozata (indukcióval választunk $a_{n_k} > k$, $n_k > n_{k-1}$ tagokat). Ez a Bolzano–Weierstrass-tétel „végtelen” kiegészítése: **minden sorozatnak van tágabb értelemben konvergens részsorozata**.
:::

## K45. feladat

Mutassuk meg, hogy $\lim\limits_{n\to\infty}a_n = -\infty$ pontosan akkor, ha minden $K \in \mathbb{R}$-re a sorozatnak csak véges sok tagja nagyobb vagy egyenlő $K$-nál.

**Megoldás.**

($\Rightarrow$) Ha $a_n \to -\infty$ és $K$ adott, van $N$, hogy $n \ge N$-re $a_n < K$; így $K$-nál nem kisebb tag csak $a_1, \dots, a_{N-1}$ között lehet.

($\Leftarrow$) Legyen $K$ adott. A feltétel szerint csak véges sok $n$-re $a_n \ge K$; legyen $N$ ezeknél nagyobb (ha nincs ilyen $n$, $N = 1$). Ekkor $n \ge N$-re $a_n < K$, tehát $a_n \to -\infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — véges sok kivétel.**

*„Egy indextől” = „véges sok kivétellel”.* Egy tulajdonság pontosan akkor teljesül egy indextől kezdve, ha csak véges sok indexre nem teljesül: a véges kivételhalmaznak van maximuma, utána nincs kivétel. Ez a megfogalmazás az átrendezéssel szemben is invariáns — ezért egy sorozat átrendezése nem változtat a határértékén.

*Egységes kép.* Minden határérték-fogalom így fogalmazható: $a_n \to A$ ($A \in \overline{\mathbb R}$) $\iff$ $A$ minden környezetén kívül csak véges sok tag van. A $-\infty$ környezetei a $(-\infty, K)$ félegyenesek; „kívül” lenni annyi, mint $\ge K$-nak lenni.

*Szigorú és nem szigorú egyenlőtlenség.* Itt a feltétel ($a_n \ge K$ véges sokszor) és a definíció ($a_n < K$ egy indextől) pontosan illeszkednek. Ha a feltétel $a_n > K$-val szólna, a $K - 1$-re alkalmazva kapnánk a szigorú egyenlőtlenséget — a korlát kis eltolása mindig megoldja a $<$ és $\le$ közti különbséget.
:::

## K46. feladat

Adjunk meg adott $K > 0$-hoz $n_K$-t, amelytől kezdve a sorozat tagjai nagyobbak $K$-nál:

a) $n - 3\sqrt n$; b) $\frac{n^2 + 1}{n + 1}$; c) $\frac{\sqrt1 + \sqrt2 + \dots + \sqrt n}{\sqrt n}$; d) $\frac{3^n}{n^2}$; e) $\frac{n!}{2^n}$.

**Megoldás.**

a) $n - 3\sqrt n = \sqrt n(\sqrt n - 3)$. Ha $n \ge 36$, akkor $\sqrt n - 3 \ge \frac{\sqrt n}{2}$, így $n - 3\sqrt n \ge \frac n2 > K$, ha $n > 2K$. **$n_K = \max\{36, \lfloor 2K \rfloor + 1\}$.**

b) $n + 1 \le 2n$ miatt $\frac{n^2 + 1}{n + 1} \ge \frac{n^2}{2n} = \frac n2 > K$, ha $n > 2K$. **$n_K = \lfloor 2K \rfloor + 1$.**

c) A $\frac n2 \le k \le n$ indexű tagokból legalább $\frac n2$ van, mindegyik legalább $\sqrt{n/2}$. Így a kifejezés legalább $\frac{1}{\sqrt n}\cdot\frac n2\sqrt{\frac n2} = \frac{n}{2\sqrt2} > K$, ha $n > 2\sqrt2K$. **$n_K = \lfloor 2\sqrt2K \rfloor + 1$.**

d) A binomiális tétel szerint $3^n = (1 + 2)^n \ge \binom n3 2^3 = \frac{4n(n-1)(n-2)}{3}$ ($n \ge 3$), így
$$\frac{3^n}{n^2} \ge \frac{4(n - 1)(n - 2)}{3n} \ge \frac{4}{3}\cdot\frac{n - 2}{2} = \frac{2(n - 2)}{3},$$
mert $\frac{n-1}{n} \ge \frac12$. Ez nagyobb $K$-nál, ha $n > \frac{3K}{2} + 2$. **$n_K = \max\{3, \lfloor\frac{3K}{2}\rfloor + 3\}$.**

e) $n \ge 4$-re $\frac{n!}{2^n} = \frac{1 \cdot 2 \cdot 3}{2^3}\prod_{k=4}^n\frac k2 \ge \frac34 \cdot 2^{n-3} \ge \frac34(n - 2)$ (mert $\frac k2 \ge 2$, és $2^m \ge m + 1$). Ez nagyobb $K$-nál, ha $n > \frac{4K}{3} + 2$. **$n_K = \max\{4, \lfloor\frac{4K}{3}\rfloor + 3\}$.**

::: elmelet
**Elméleti háttér — alsó becslések végtelen határértékhez.**

*Majoráns elv.* Ha egy indextől $a_n \ge b_n$ és $b_n \to +\infty$, akkor $a_n \to +\infty$. Ezért elég egyszerű, „lineáris” alsó becslést találni ($\frac n2$, $\frac{n}{2\sqrt2}$, $\frac{2(n-2)}{3}$).

*Technikák.*

1. **A domináns tag „felének” megtartása:** ha a kisebb rendű tag ($3\sqrt n$) legfeljebb a domináns tag ($n$) fele, a különbség legalább a fele — ez egy kikötést ad ($n \ge 36$).
2. **A nevező felülről becslése** ($n + 1 \le 2n$).
3. **„Nagy fél”** az összegekben: az utolsó $\frac n2$ tag mindegyike legalább a középső tag.
4. **A binomiális tétel egy tagja** exponenciálisra: $3^n \ge \binom n32^3$, ami köbös, így $n^2$-nél gyorsabban nő.
5. **Szorzat tényezőnkénti becslése** faktoriálisnál: $\frac k2 \ge 2$, ha $k \ge 4$.

*Növekedési sorrend.* $\sqrt n \ll n \ll n^2 \ll 3^n \ll n!$; a d) és e) rész a skála „magasabb fokain” mutatja ugyanezt a technikát.
:::

## K47. feladat

Bizonyítsuk be, hogy ha $a_n \to +\infty$, akkor a sorozatnak van legkisebb tagja. Igaz-e, hogy van legnagyobb tagja?

**Megoldás.**

Legyen $K = a_1$. Mivel $a_n \to +\infty$, van $N$, hogy $n \ge N$ esetén $a_n > a_1$. Legyen $m = \min\{a_1, a_2, \dots, a_{N-1}\}$ (véges halmaz minimuma; ha $N = 1$, akkor $m = a_1$). Ekkor $m \le a_1$, és

- $n < N$-re $a_n \ge m$ (definíció szerint),
- $n \ge N$-re $a_n > a_1 \ge m$.

Tehát $m$ a sorozat legkisebb tagja. $\blacksquare$

Legnagyobb tag **nincs**: a sorozat felülről nem korlátos, így minden tagnál van nagyobb.

::: elmelet
**Elméleti háttér — a „fej és farok” módszer.**

*A gondolat.* Egy tulajdonság (itt: „nagyobb, mint $a_1$”) egy indextől kezdve teljesül; a véges „fej” halmaznak mindig van minimuma és maximuma, a „farok” pedig a tulajdonság miatt nem tud versenyezni vele. Így a sorozat szélsőértéke a fejben található.

*Hasonló állítások.*

- Konvergens sorozatnak van legnagyobb vagy legkisebb tagja (5. feladatlap, 47. feladat).
- Ha $a_n \to 0$ és minden tag pozitív, van legnagyobb tag (a farok egy indextől $a_1$ alatt van).
- Ha $a_n \to -\infty$, van legnagyobb tag.

*Függvényekre.* Ha $f$ folytonos $[a, \infty)$-en és $\lim_{x\to\infty}f(x) = +\infty$, akkor $f$-nek van minimuma: a „farok” egy $[K, \infty)$ félegyenesen $f(a)$ fölött van, a „fejen” ($[a, K]$) pedig a Weierstrass-tétel ad minimumot. Ez a sorozatos érvelés folytonos megfelelője.
:::

## K48. feladat

a) Legyen $A \ne \emptyset$ alulról korlátos, és $\alpha = \inf A \notin A$. Mutassuk meg, hogy van olyan szigorúan fogyó $(a_n)$ sorozat $A$-ban, amelyre $a_n \to \alpha$.

b) Mutassuk meg, hogy ha $A$ felülről nem korlátos, van olyan szigorúan növő $(a_n)$ sorozat $A$-ban, amelyre $a_n \to +\infty$.

**Megoldás.**

a) Legyen $a_1 \in A$ tetszőleges ($a_1 > \alpha$, mert $\alpha \notin A$). Ha $a_n > \alpha$ már adott, legyen $c_n = \min\{a_n, \alpha + \frac1n\} > \alpha$. Mivel $c_n > \inf A$, nem alsó korlát, tehát van $a_{n+1} \in A$, $a_{n+1} < c_n$; és $a_{n+1} > \alpha$ ($\alpha$ alsó korlát, és nem eleme $A$-nak). Így $a_{n+1} < a_n$ és $\alpha < a_{n+1} < \alpha + \frac1n$, tehát a rendőrelv szerint $a_n \to \alpha$. $\blacksquare$

b) Legyen $a_1 \in A$. Ha $a_n$ adott, a $\max\{a_n, n\}$ nem felső korlát, tehát van $a_{n+1} \in A$, $a_{n+1} > \max\{a_n, n\}$. Ekkor $(a_n)$ szigorúan nő, és $a_{n+1} > n \to \infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — szuprémum/infimum sorozatos jellemzése.**

*Állítás.* $\alpha = \inf A$ pontosan akkor, ha $\alpha$ alsó korlát, és van $A$-beli sorozat, amely $\alpha$-hoz tart. Ha $\alpha \notin A$, a sorozat szigorúan fogyónak is választható; ha $\alpha \in A$, akkor az állandó $\alpha$ sorozat is jó, de szigorúan monoton nem feltétlenül létezik (például $A = \{0\} \cup [1, 2]$).

*Konstrukciós technika.* A rekurzív lépésben egy olyan $c_n$ korlátot választunk, amely egyszerre szolgálja a **monotonitást** ($c_n \le a_n$) és a **konvergenciát** ($c_n \le \alpha + \frac1n$); a $\min$ (illetve $\max$) a két feltétel „metszete”. Végtelen határértéknél a $\max\{a_n, n\}$ ugyanezt teszi.

*Torlódási pontok.* Az a) rész szerint ha $\inf A \notin A$, akkor $\inf A$ az $A$ torlódási pontja. Általában a szuprémum és az infimum vagy eleme a halmaznak, vagy torlódási pontja — ezért egy **zárt** halmaz (amely tartalmazza torlódási pontjait) korlátos esetben mindig tartalmazza a szuprémumát és infimumát, vagyis van maximuma és minimuma.
:::

## K49. feladat

Határozzuk meg a határértékeket: a) $\sqrt[n]{5^n + 4^n + n^{10}}$; b) $\dfrac{1 + 2 + \dots + n}{n^2 + 1}$; c) $\sqrt[n]{1 + \frac{1}{\sqrt2} + \dots + \frac{1}{\sqrt n}}$.

**Megoldás.**

a) $5 \le \sqrt[n]{5^n + 4^n + n^{10}} \le \sqrt[n]{5^n(2 + n^{10})} = 5\sqrt[n]{2 + n^{10}}$, és $1 \le \sqrt[n]{2 + n^{10}} \le \sqrt[n]{3n^{10}} = \sqrt[n]3\,(\sqrt[n]n)^{10} \to 1$. A rendőrelv szerint a határérték **$5$**.

b) $\frac{n(n+1)/2}{n^2 + 1} = \frac{1 + 1/n}{2(1 + 1/n^2)} \to \frac12$.

c) $1 \le 1 + \frac{1}{\sqrt2} + \dots + \frac{1}{\sqrt n} \le n$, így $1 \le \sqrt[n]{\dots} \le \sqrt[n]n \to 1$: a határérték **$1$**.

::: elmelet
**Elméleti háttér — $n$-edik gyök alatti összegek.**

*Domináns tag elve.* Ha a gyök alatt $c_1^n + \dots + c_k^n$ ($c_i > 0$) és polinomiális tagok állnak, a határérték $\max c_i$; a polinomiális tényezők ($n^{10}$) $n$-edik gyöke $1$-hez tart. Bizonyítás: rendőrelv a $M^n \le \text{összeg} \le (\text{tagok száma vagy polinom}) \cdot M^n$ becsléssel.

*„Lassan növő” összegek.* Ha az összeg legfeljebb polinomiálisan nő (például $\sum\frac{1}{\sqrt k} \approx 2\sqrt n$, vagy $\sum\frac1k \approx \ln n$), az $n$-edik gyöke $1$-hez tart. Ez a gyökkritérium szempontjából fontos: a $\sum a_n$ sor konvergenciáját a $\sqrt[n]{a_n}$ határértéke dönti el, és polinomiális szorzók ezen nem változtatnak.

*Számtani összeg.* $1 + 2 + \dots + n = \frac{n(n+1)}{2}$ (Gauss); ezután racionális törtről van szó, ahol a főtagok aránya ($\frac{n^2/2}{n^2}$) adja a határértéket.
:::

## K50. feladat

Példák konstruálásával mutassuk meg, hogy ha $a_n \to +\infty$ és $b_n \to +\infty$, akkor $a_n - b_n$ és $\frac{a_n}{b_n}$ is „kritikus”.

**Megoldás.**

*$\infty - \infty$:*

| $a_n$ | $b_n$ | $a_n - b_n$ | határérték |
|:---:|:---:|:---:|:---:|
| $n + c$ | $n$ | $c$ | $c$ |
| $2n$ | $n$ | $n$ | $+\infty$ |
| $n$ | $2n$ | $-n$ | $-\infty$ |
| $n + (-1)^n$ | $n$ | $(-1)^n$ | nincs |

*$\frac\infty\infty$:*

| $a_n$ | $b_n$ | $\frac{a_n}{b_n}$ | határérték |
|:---:|:---:|:---:|:---:|
| $cn$ ($c > 0$) | $n$ | $c$ | $c$ |
| $n^2$ | $n$ | $n$ | $+\infty$ |
| $n$ | $n^2$ | $\frac1n$ | $0$ |
| $(2 + (-1)^n)n$ | $n$ | $2 + (-1)^n$ | nincs |

A tényezők határértékéből tehát semmilyen következtetés nem vonható le.

::: elmelet
**Elméleti háttér — kritikus határértékek és feloldásuk.**

*A kritikus típusok:* $\infty - \infty$, $0 \cdot \infty$, $\frac00$, $\frac\infty\infty$, valamint hatványokban $1^\infty$, $0^0$, $\infty^0$. Nem kritikus például $\infty + \infty = \infty$, $c \cdot \infty = \infty$ ($c > 0$), $\frac{c}{\infty} = 0$.

*Kritikusság igazolása.* Elég két (vagy több) példát adni ugyanarra a típusra, különböző eredménnyel. A táblázatok azt mutatják, hogy minden lehetséges kimenetel (bármely valós szám, $\pm\infty$, divergencia) előfordul.

*Feloldás.* Kritikus alaknál a „versenyző” mennyiségek nagyságrendjét kell összevetni: kiemelés ($n^2 - n = n^2(1 - \frac1n)$), gyöktelenítés, egyszerűsítés, nevezetes határértékek. Például $\frac{a_n}{b_n}$-nél, ha $a_n \sim cb_n$ ($a_n$ és $b_n$ „ugyanolyan gyorsan” nő), a határérték $c$; ha $a_n \ll b_n$, akkor $0$.

*A $1^\infty$ típus.* $\left(1 + \frac1n\right)^n \to e$, $\left(1 + \frac1n\right)^{n^2} \to \infty$, $\left(1 + \frac{1}{n^2}\right)^n \to 1$ — ugyanaz a „$1^\infty$” alak, különböző eredmény.
:::

## K51. feladat

a) Mutassuk meg, hogy ha $a_n \to +\infty$, akkor $\frac{1}{a_n} \to 0$.

b) Mutassuk meg, hogy ha $a_n \to 0$ és $a_n > 0$ minden $n$-re, akkor $\frac{1}{a_n} \to +\infty$.

c) Adjunk példát olyan nem nulla tagú nullsorozatra, amelyre $\frac{1}{a_n}$-nek tágabb értelemben sincs határértéke.

**Megoldás.**

a) Legyen $\varepsilon > 0$. $K = \frac1\varepsilon$-hoz van $N$, hogy $n \ge N$-re $a_n > \frac1\varepsilon > 0$; ekkor $0 < \frac{1}{a_n} < \varepsilon$.

b) Legyen $K > 0$. $\varepsilon = \frac1K$-hoz van $N$, hogy $n \ge N$-re $0 < a_n < \frac1K$; ekkor $\frac{1}{a_n} > K$.

c) $a_n = \frac{(-1)^n}{n}$: $\frac{1}{a_n} = (-1)^nn$, amely sem $+\infty$-hez, sem $-\infty$-hez nem tart (a páros indexű részsorozat $+\infty$-hez, a páratlan $-\infty$-hez tart).

::: elmelet
**Elméleti háttér — a reciprok és az előjel.**

*„Szótár” a definíciók között.* $|x| < \varepsilon \iff \frac{1}{|x|} > \frac1\varepsilon$ ($x \ne 0$). A $K \leftrightarrow \frac1\varepsilon$ megfeleltetés a végtelen és a nulla határértéket egymásba fordítja.

*Előjel.* Ha $a_n \to 0$, akkor $\frac{1}{|a_n|} \to +\infty$ mindig; $\frac{1}{a_n}$ határértéke viszont az előjeltől függ: egy indextől pozitív tagokra $+\infty$, negatívakra $-\infty$, váltakozó előjelre nincs határérték. Ezért a $\frac{c}{0}$ alak (ahol $c \ne 0$) „félig kritikus”: az abszolút érték biztosan végtelen, az előjel nem.

*Függvényekre* (átviteli elv): $\lim_{x\to 0+}\frac1x = +\infty$, $\lim_{x \to 0-}\frac1x = -\infty$, és $\lim_{x\to0}\frac1x$ nem létezik — de $\lim_{x\to0}\frac{1}{|x|} = +\infty$.
:::

## K52. feladat

Adjunk meg olyan korlátos sorozatot, amelynek nincs se legnagyobb, se legkisebb tagja, és pontosan három sűrűsödési értéke van.

**Megoldás.**

Legyen
$$a_{3k} = 1 - \frac{1}{3k}, \qquad a_{3k+1} = -1 + \frac{1}{3k+1}, \qquad a_{3k+2} = 0 \qquad (k \ge 0,\ \text{az } a_0 \text{ tagot nem használjuk}).$$

- Korlátos: $|a_n| < 1$.
- A három részsorozat határértéke $1$, $-1$, $0$, és mivel ezek indexhalmazai lefedik $\mathbb{N}$-et, más sűrűsödési érték nincs: a sűrűsödési értékek **pontosan $\{-1, 0, 1\}$**.
- Legnagyobb tag nincs: minden tag $< 1$, és az $a_{3k}$ tagok szigorúan nőnek, $1$-hez tartanak; így minden taghoz van nagyobb. Ugyanígy legkisebb tag sincs.

::: elmelet
**Elméleti háttér — szélsőértékek, sűrűsödési értékek és részsorozatok.**

*Véges sok részsorozatra bontás.* Ha az indexhalmazt véges sok részre bontjuk ($n \bmod 3$), és mindegyik részsorozat konvergens, akkor a sűrűsödési értékek pontosan ezek határértékei. (Minden részsorozatnak végtelen sok tagja esik valamelyik osztályba, így annak határértékéhez tart egy további részsorozata.)

*Mikor nincs maximum?* Ha a $\sup$ nem eleme a tagok halmazának — ekkor a $\sup$ egy sűrűsödési érték, amelyhez egy részsorozat alulról közelít. A példában $\sup = 1 = \limsup$ és $\inf = -1 = \liminf$, és egyiket sem éri el a sorozat.

*Általános tény.* Korlátos sorozatra $\inf a_n \le \liminf a_n \le \limsup a_n \le \sup a_n$; ha a sorozatnak nincs maximuma, akkor $\sup a_n = \limsup a_n$, ha nincs minimuma, akkor $\inf a_n = \liminf a_n$. A középső sűrűsödési érték ($0$) a szélsőértékek szempontjából közömbös.
:::

## K53. feladat

Határozzuk meg a határértékeket:

a) $\frac{5n^2 - 3n + 1}{2n^2 + 7}$; b) $n\left(\sqrt{n^2 + 4} - n\right)$; c) $\frac{n^3 + 1}{n^4 - 2}$; d) $\frac{1 - 4n^3}{n^2 + 3}$; e) $\frac{\cos n + 2n}{n + 1}$; f) $\frac{3n^4 - \sqrt n}{1 - 2n^4}$; g) $\sqrt[n]{n^2 + 3^n}$; h) $\frac{3^n + n!}{n^n + 2^n}$; i) $\sqrt[n]{n^n + 2^n}$; j) $\frac{(-1)^nn}{n^2 + 1}$; k) $\frac{2n + (-1)^nn}{n}$; l) $\frac{n^2 + (-1)^n}{3n}$.

**Megoldás.**

a) $n^2$-tel osztva: $\frac{5 - 3/n + 1/n^2}{2 + 7/n^2} \to \frac52$.

b) Gyöktelenítve: $\frac{4n}{\sqrt{n^2 + 4} + n} = \frac{4}{\sqrt{1 + 4/n^2} + 1} \to 2$.

c) $n^4$-nel osztva: $\frac{1/n + 1/n^4}{1 - 2/n^4} \to 0$.

d) $n \ge 2$-re $1 - 4n^3 \le -3n^3$ és $n^2 + 3 \le 2n^2$, így a kifejezés $\le -\frac{3n^3}{2n^2} = -\frac{3n}{2} \to -\infty$.

e) $\frac{\cos n}{n + 1} \to 0$ (korlátos szor nullsorozat) és $\frac{2n}{n + 1} \to 2$, így a határérték $2$.

f) $n^4$-nel osztva: $\frac{3 - n^{-7/2}}{n^{-4} - 2} \to -\frac32$.

g) $3 \le \sqrt[n]{n^2 + 3^n} \le \sqrt[n]{2 \cdot 3^n} = 3\sqrt[n]2 \to 3$ (mert $n^2 \le 3^n$): a határérték $3$.

h) $n \ge 7$-re $3^n \le n!$ ($3^7 = 2187 < 5040$, és a lépésnél $3 \le n + 1$), így $0 < h_n \le \frac{2\,n!}{n^n} \le \frac2n \to 0$ (mert $\frac{n!}{n^n} = \frac1n\cdot\frac2n\cdots\frac nn \le \frac1n$). A határérték $0$.

i) $\sqrt[n]{n^n + 2^n} \ge \sqrt[n]{n^n} = n \to +\infty$.

j) $\left|\frac{(-1)^nn}{n^2 + 1}\right| \le \frac1n \to 0$: a határérték $0$.

k) $2 + (-1)^n$: a páros indexű részsorozat $3$, a páratlan $1$ — **divergens**.

l) $\frac{n^2 + (-1)^n}{3n} \ge \frac{n^2 - 1}{3n} \ge \frac{n}{6}$ ($n \ge 2$-re $n^2 - 1 \ge \frac{n^2}{2}$) $\to +\infty$.

::: elmelet
**Elméleti háttér — a határérték-számítás eszközei egy helyen.**

1. **Racionális törtek:** osztás a nevező legmagasabb fokú tagjával; a fokszámok összevetése dönt (kisebb számlálófok: $0$; egyenlő: főegyütthatók hányadosa; nagyobb: $\pm\infty$).
2. **Gyökös különbségek:** gyöktelenítés, majd osztás a domináns taggal.
3. **Korlátos szor nullsorozat** nullsorozat ($\cos n$, $(-1)^n$ tényezők).
4. **$n$-edik gyök:** rendőrelv a domináns taggal; $\sqrt[n]{c} \to 1$, $\sqrt[n]{n} \to 1$.
5. **Nagyságrendek:** $n^k \ll a^n \ll n! \ll n^n$; konkrét egyenlőtlenségek: $3^n \le n!$ ($n \ge 7$), $\frac{n!}{n^n} \le \frac1n$.
6. **Divergencia:** két különböző határértékű részsorozat.
7. **Végtelen határérték:** alsó (felső) becslés egy egyszerű végtelenbe tartó sorozattal.

*Stratégia.* Előbb azonosítsuk a típust (racionális? gyökös? exponenciális? oszcilláló?), aztán a megfelelő eszközt. A műveleti tételeket csak akkor alkalmazzuk, ha a tényezők határértéke létezik, és nem kritikus a típus.
:::

## K54. feladat

a) Bizonyítsuk be, hogy ha $|a_{n+1} - a_n| \le \frac{1}{n^2}$ minden $n$-re, akkor $(a_n)$ konvergens.

b) Következik-e a konvergencia az $|a_{n+1} - a_n| \le \frac1n$ feltételből?

**Megoldás.**

a) Cauchy-kritérium. Ha $m > n \ge 2$, akkor
$$|a_m - a_n| \le \sum_{k=n}^{m-1}|a_{k+1} - a_k| \le \sum_{k=n}^{m-1}\frac{1}{k^2} < \sum_{k=n}^{m-1}\frac{1}{k(k-1)} = \sum_{k=n}^{m-1}\left(\frac{1}{k-1} - \frac1k\right) = \frac{1}{n - 1} - \frac{1}{m - 1} < \frac{1}{n - 1}.$$
Adott $\varepsilon$-hoz $N > 1 + \frac1\varepsilon$ választással $m > n \ge N$ esetén $|a_m - a_n| < \varepsilon$: a sorozat Cauchy, tehát konvergens. $\blacksquare$

b) **Nem**: $a_n = 1 + \frac12 + \dots + \frac{1}{n-1}$ (harmonikus részletösszegek) esetén $a_{n+1} - a_n = \frac1n$, de $a_n \to +\infty$ (mert $a_{2^k + 1} \ge 1 + \frac k2$).

::: elmelet
**Elméleti háttér — Cauchy-kritérium és összegezhető lépések.**

*Teleszkopikus becslés.* $|a_m - a_n| \le \sum_{k=n}^{m-1}|a_{k+1} - a_k|$. Ha a lépések egy **konvergens sor** tagjaival becsülhetők, a jobb oldal a sor maradéka, ami $0$-hoz tart — így a sorozat Cauchy.

*A $\sum\frac{1}{k^2}$ konvergenciája.* $\frac{1}{k^2} < \frac{1}{k(k-1)} = \frac{1}{k-1} - \frac1k$, és az utóbbi teleszkopikus: $\sum_{k=2}^{\infty}\frac{1}{k(k-1)} = 1$. Tehát $\sum\frac{1}{k^2} < 2$ (valójában $\frac{\pi^2}{6} \approx 1{,}645$). A $\sum\frac1k$ viszont divergens: $\frac{1}{2^j + 1} + \dots + \frac{1}{2^{j+1}} \ge \frac12$.

*A határvonal.* A $\sum\frac{1}{k^p}$ sor pontosan akkor konvergens, ha $p > 1$. Ezért $|a_{n+1} - a_n| \le \frac{C}{n^p}$ ($p > 1$) konvergenciát ad, $p = 1$ már nem. (A $p = 1$ esetben a sorozat lehet konvergens is, például $a_n = \sum_{k<n}\frac{(-1)^k}{k}$, de ez nem következik a feltételből.)

*Abszolút konvergencia.* A gondolat általánosan: $\sum|a_{k+1} - a_k| < \infty \Rightarrow (a_n)$ konvergens. A sorok nyelvén: abszolút konvergens sor konvergens.
:::

# A 6. feladatlaphoz

## K55. feladat

Bizonyítsuk be, hogy a) $\mathbb{N}$ véges részhalmazainak halmaza megszámlálható; b) a racionális együtthatós polinomok halmaza megszámlálható.

**Megoldás.**

a) Rendeljük minden véges $A \subseteq \mathbb N$ halmazhoz a $\Phi(A) = \sum_{k \in A}2^{k-1}$ számot ($\Phi(\emptyset) = 0$). A kettes számrendszerbeli felírás egyértelműsége miatt $\Phi$ bijekció a véges részhalmazok és $\mathbb{N}_0 = \{0, 1, 2, \dots\}$ között: az $m$ szám kettes jegyei pontosan megadják, mely $k$-k tartoznak a halmazhoz. Tehát a véges részhalmazok halmaza megszámlálhatóan végtelen. $\blacksquare$

b) Egy $d$-edfokú (vagy alacsonyabb fokú) racionális együtthatós polinomot az $(a_0, \dots, a_d) \in \mathbb{Q}^{d+1}$ együtthatók határoznak meg. $\mathbb{Q}^{d+1}$ megszámlálható (megszámlálható halmaz véges hatványa), és a polinomok halmaza $\bigcup_{d=0}^{\infty}\mathbb{Q}^{d+1}$ képe: megszámlálható sok megszámlálható halmaz uniója, tehát megszámlálható. Végtelen, mert a konstans polinomok már $\mathbb{Q}$-val ekvivalensek. $\blacksquare$

::: elmelet
**Elméleti háttér — megszámlálható halmazok építőkövei.**

*Zártsági tulajdonságok.* Ha $A$ és $B$ megszámlálható, akkor megszámlálható: $A \cup B$, $A \times B$, $A^k$, a megszámlálható sok megszámlálható halmaz uniója, $A$ véges részhalmazainak és véges sorozatainak halmaza. Ezekből szinte minden „diszkrét” objektumhalmaz megszámlálhatósága következik.

*Bijekció a kettes számrendszerrel.* A véges részhalmazok és a nemnegatív egészek közti $A \mapsto \sum_{k\in A}2^{k-1}$ bijekció a karakterisztikus vektor ($0$–$1$ sorozat) kettes számként való olvasása. **Végtelen** részhalmazokra ugyanez a $0$–$1$ sorozatok, illetve a $[0, 1]$ számainak kettes tört alakjához vezet — és ezek már nem megszámlálhatók (Cantor). A véges/végtelen különbség itt a megszámlálható/kontinuum különbségével esik egybe.

*Alkalmazás.* A racionális együtthatós polinomok gyökei az algebrai számok, így ezek is megszámlálhatók (61. feladat).
:::

## K56. feladat

Határozzuk meg a határértékeket:

(a) $\sqrt[n]{3n + 5}$; (b) $\frac{2n^5 - n + 1}{n^2 + 4}$; (c) $\frac{n^2 + n\sqrt n}{3n^2 - 1}$; (d) $\sqrt[n]{\frac{1}{n^2} + \frac{1}{n^3}}$; (e) $\sqrt[n]{4^n + 5n^3 + 2^n}$; (f) $\frac{\sqrt{3n + 2}}{\sqrt{5n - 1}}$; (g) $\sqrt{\frac{2n + 1}{n + 3}}$; (h) $\frac{3^n - 3^{-n}}{3^n + 3^{-n}}$; (i) $\frac{(n + 1)^4(2n - 1)^6}{(3n + 2)^{10}}$; (j) $\frac{\sqrt{9n^2 + n}}{\sqrt[3]{8n^3 + 1}}$; (k) $\frac{\sqrt[4]{n^4 + n}}{\sqrt{n^2 + 3}}$; (l) $n^2\left(\sqrt{n^2 + 1} - n\right)$; (m) $\frac{3^n + 4^n}{2^n + 5^n}$; (q) $n\left(\sqrt{n^2 + 2n} - \sqrt{n^2 - 2n}\right)$.

**Megoldás.**

(a) $1 \le \sqrt[n]{3n + 5} \le \sqrt[n]{8n} = \sqrt[n]8\sqrt[n]n \to 1$: határérték $1$.

(b) $n^2$-tel osztva a számláló $2n^3 - \frac1n + \frac1{n^2} \to +\infty$, a nevező $1 + \frac{4}{n^2} \to 1$: $+\infty$.

(c) $n^2$-tel osztva: $\frac{1 + n^{-1/2}}{3 - n^{-2}} \to \frac13$.

(d) $\frac{1}{n^2} \le \frac{1}{n^2} + \frac{1}{n^3} \le \frac{2}{n^2}$, így $\frac{1}{(\sqrt[n]n)^2} \le d_n \le \frac{\sqrt[n]2}{(\sqrt[n]n)^2}$; mindkét korlát $1$-hez tart: határérték $1$.

(e) $4 \le \sqrt[n]{\dots} \le \sqrt[n]{4^n(2 + 5n^3)} = 4\sqrt[n]{2 + 5n^3} \to 4$: határérték $4$.

(f) $\sqrt{\frac{3 + 2/n}{5 - 1/n}} \to \sqrt{\frac35}$.

(g) $\sqrt{\frac{2 + 1/n}{1 + 3/n}} \to \sqrt2$.

(h) $3^n$-nel osztva: $\frac{1 - 9^{-n}}{1 + 9^{-n}} \to 1$.

(i) Minden tényezőt $n$-nel osztva: $\frac{(1 + 1/n)^4(2 - 1/n)^6}{(3 + 2/n)^{10}} \to \frac{2^6}{3^{10}} = \frac{64}{59\,049}$.

(j) $\frac{n\sqrt{9 + 1/n}}{n\sqrt[3]{8 + 1/n^3}} \to \frac{3}{2}$.

(k) $\frac{n\sqrt[4]{1 + n^{-3}}}{n\sqrt{1 + 3n^{-2}}} \to 1$.

(l) $n^2\left(\sqrt{n^2 + 1} - n\right) = \frac{n^2}{\sqrt{n^2 + 1} + n} \ge \frac{n^2}{2n + 1} \ge \frac{n^2}{3n} = \frac n3 \to +\infty$.

(m) $5^n$-nel osztva: $\frac{(3/5)^n + (4/5)^n}{(2/5)^n + 1} \to \frac{0}{1} = 0$.

(q) Gyöktelenítve: $\frac{n \cdot 4n}{\sqrt{n^2 + 2n} + \sqrt{n^2 - 2n}} \ge \frac{4n^2}{2\sqrt{2}\,n} = \sqrt2\,n \to +\infty$ (mert $\sqrt{n^2 \pm 2n} \le \sqrt{2}\,n$, ha $n \ge 2$).

::: elmelet
**Elméleti háttér — a határérték-számítás „receptkönyve”.**

*1. Domináns tag kiemelése.* Összegben (akár gyök alatt is) a leggyorsabban növő tagot emeljük ki: $\sqrt{9n^2 + n} = n\sqrt{9 + \frac1n}$, $4^n + 5n^3 + 2^n = 4^n\left(1 + \frac{5n^3}{4^n} + \frac{1}{2^n}\right)$. Ezután a zárójeles rész határértéke a műveleti tételekkel számolható.

*2. Gyökök és határérték.* Ha $x_n \to x \ge 0$, akkor $\sqrt[k]{x_n} \to \sqrt[k]{x}$ (a gyökfüggvény folytonos), így a határértéket „bevihetjük a gyök alá”.

*3. Hatványok szorzata.* Egy polinomszorzat főtagja a főtagok szorzata: $(n + 1)^4(2n - 1)^6 \sim 2^6n^{10}$. Ha a számláló és a nevező foka egyenlő, a határérték a főegyütthatók hányadosa.

*4. Exponenciálisok.* $a^n$ és $b^n$ ($0 < a < b$) közül $b^n$ dominál: $\frac{a^n}{b^n} = \left(\frac ab\right)^n \to 0$. Ezért $\frac{3^n + 4^n}{2^n + 5^n} \sim \left(\frac45\right)^n \to 0$.

*5. $n$-edik gyök.* Polinomiális szorzók és osztók $n$-edik gyöke $1$-hez tart; ezért $\sqrt[n]{\frac{1}{n^2}} \to 1$ — egy $0$-hoz tartó sorozat $n$-edik gyöke is lehet $1$!

*6. Gyöktelenítés* a „$\infty - \infty$” és „$\infty \cdot 0$” alakoknál ((l), (q)), majd a domináns tagok összevetése.
:::

## K57. feladat

Jelölje $a_n \sim b_n$, hogy $\frac{a_n}{b_n} \to 1$ (aszimptotikus egyenlőség). Igazak-e a következők?

a) Ha $a_n \sim b_n$ és $b_n \sim c_n$, akkor $a_n \sim c_n$.

b) Ha $a_n \sim b_n$, akkor $a_n + c_n \sim b_n + c_n$.

c) Ha $a_n \sim b_n$, akkor $a_n^2 \sim b_n^2$.

**Megoldás.**

a) **Igaz:** $\frac{a_n}{c_n} = \frac{a_n}{b_n}\cdot\frac{b_n}{c_n} \to 1 \cdot 1 = 1$.

b) **Hamis:** $a_n = n + 1$, $b_n = n$, $c_n = -n$. Ekkor $a_n \sim b_n$, de $a_n + c_n = 1$ és $b_n + c_n = 0$ — a hányados nem is értelmes. (Másik példa: $c_n = -n + \frac1n$: $\frac{1 + 1/n}{1/n} = n + 1 \to \infty$.)

c) **Igaz:** $\frac{a_n^2}{b_n^2} = \left(\frac{a_n}{b_n}\right)^2 \to 1$.

::: elmelet
**Elméleti háttér — aszimptotikus egyenlőség.**

*Tulajdonságok.* A $\sim$ reláció reflexív, szimmetrikus és tranzitív (ekvivalenciareláció a nem nulla tagú sorozatokon), és kompatibilis a szorzással, osztással és hatványozással: $a_n \sim b_n$, $c_n \sim d_n \Rightarrow a_nc_n \sim b_nd_n$, $\frac{a_n}{c_n} \sim \frac{b_n}{d_n}$, $a_n^k \sim b_n^k$.

*Az összeadással nem kompatibilis.* Ha két nagy, egymáshoz közeli mennyiség kivonásakor a főtagok kiesnek („kiejtés”), a maradék már nem a főtagok különbsége — ezért kritikus az $\infty - \infty$. A b) rész ezt mutatja: a $c_n$ hozzáadásával a „domináns rész” eltűnik, és a korábban elhanyagolható különbség lesz a meghatározó.

*Mikor szabad összeadni?* Ha $a_n \sim b_n$, $c_n \sim d_n$ és minden tag pozitív, akkor $a_n + c_n \sim b_n + d_n$ (mert a relatív hibák súlyozott átlaga kicsi). Előjelváltás esetén vigyázni kell.

*Gyakorlati haszon.* Hányadosok és szorzatok határértékénél a tényezőket aszimptotikus megfelelőikre cserélhetjük ($\sqrt{n^2 + 1} \sim n$, $\sin\frac1n \sim \frac1n$), különbségeknél nem.
:::

## K58. feladat

Vizsgáljuk monotonitás és konvergencia szempontjából a sorozatokat, és határozzuk meg a határértéküket:

a) $a_1 = 1$, $a_{n+1} = \frac12\left(a_n + \frac{4}{a_n}\right)$; b) $b_1 = 0$, $b_{n+1} = \frac{1}{2 - b_n}$.

**Megoldás.**

a) Indukcióval $a_n > 0$, tehát a sorozat értelmes.

- *Alsó korlát $n \ge 2$-re:* a számtani–mértani közép szerint $a_{n+1} = \frac{a_n + 4/a_n}{2} \ge \sqrt{a_n \cdot \frac4{a_n}} = 2$.
- *Monotonitás $n \ge 2$-re:* $a_{n+1} - a_n = \frac{4/a_n - a_n}{2} = \frac{4 - a_n^2}{2a_n} \le 0$, mert $a_n \ge 2$.

Tehát $a_2 = \frac52$-től kezdve monoton fogyó és alulról korlátos, így konvergens; ha $a_n \to A \ge 2$, akkor $A = \frac12\left(A + \frac4A\right)$, azaz $A^2 = 4$, **$A = 2$**.

b) *Sejtés és bizonyítás:* $b_1 = 0$, $b_2 = \frac12$, $b_3 = \frac23$, $b_4 = \frac34$; indukcióval $b_n = \frac{n - 1}{n}$: ha $b_n = \frac{n-1}{n}$, akkor $b_{n+1} = \frac{1}{2 - \frac{n-1}{n}} = \frac{n}{n + 1}$. Tehát a sorozat szigorúan nő, korlátos ($0 \le b_n < 1$), és **$b_n \to 1$**.

(A fixpontegyenlet $x = \frac{1}{2 - x} \iff (x - 1)^2 = 0$ — kétszeres fixpont, ezért a konvergencia lassú: $|b_n - 1| = \frac1n$.)

::: elmelet
**Elméleti háttér — rekurzív sorozatok: Newton-iteráció és kétszeres fixpont.**

*A Babilóniai módszer.* Az a) rész rekurziója a $\sqrt4 = 2$ közelítésére szolgáló Newton–Héron-módszer: $a_{n+1} = \frac12\left(a_n + \frac{c}{a_n}\right) \to \sqrt c$. A konvergencia **kvadratikus**: $a_{n+1} - \sqrt c = \frac{(a_n - \sqrt c)^2}{2a_n}$, így a helyes jegyek száma lépésenként nagyjából megduplázódik. Ez az $f(x) = x^2 - c$ függvény Newton-iterációja, $x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}$.

*Monotonitás „egy lépés után”.* A sorozat nem monoton az elejétől ($a_1 = 1 < a_2 = 2{,}5$), de az első lépés után igen. Egy sorozat konvergenciája szempontjából véges sok tag közömbös, így elég „egy indextől” monotonitást és korlátosságot igazolni.

*Explicit képlet.* A b) részben a rekurzió **törtlineáris** ($x \mapsto \frac{1}{2 - x}$), és az ilyen rekurziók gyakran explicit megoldhatók; ha nem látjuk a mintát, a monoton-korlátos módszer akkor is működik ($b_n < 1$ indukcióval, és $b_{n+1} - b_n = \frac{(1 - b_n)^2}{2 - b_n} > 0$).

*Vonzás sebessége és a derivált.* Egyszeres fixpontnál, ahol $|g'(A)| < 1$, a konvergencia mértani ($|x_n - A| \approx C|g'(A)|^n$); ha $g'(A) = 0$ (Newton), kvadratikus; ha $g'(A) = 1$ (a b) rész: $g'(1) = \frac{1}{(2-1)^2} = 1$), csak lassú, $\frac1n$-es. A fixpont „minősége” határozza meg a konvergencia sebességét.
:::

## K59. feladat

a) Adjunk meg bijekciót a $[0, 1]$ és a $(0, 1)$ intervallum között. b) Mutassuk meg, hogy $(0, 1) \sim \mathbb{R}$.

**Megoldás.**

a) „Hilbert-szálloda”: legyen $S = \{\frac12, \frac13, \frac14, \dots\}$. Definiáljuk $f : [0, 1] \to (0, 1)$-et:
$$f(0) = \frac12, \qquad f(1) = \frac13, \qquad f\left(\frac1n\right) = \frac{1}{n + 2} \ (n \ge 2), \qquad f(x) = x \text{ egyébként}.$$
$f$ a $\{0, 1\} \cup S$ halmazt bijektíven képezi $S$-re ($0 \mapsto \frac12$, $1 \mapsto \frac13$, $\frac12 \mapsto \frac14$, $\frac13 \mapsto \frac15$, …), a többi pontot helyben hagyja; tehát bijekció $[0, 1]$ és $(0, 1)$ között.

b) $g : (0, 1) \to \mathbb{R}$, $g(x) = \frac{2x - 1}{x(1 - x)}$ szigorúan monoton nő (például mert $g(x) = \frac{1}{1 - x} - \frac1x$, és mindkét tag nő), folytonos, és $\lim_{x \to 0+}g = -\infty$, $\lim_{x\to1-}g = +\infty$. A Bolzano-tétel szerint minden valós értéket felvesz, tehát $g$ bijekció. (Másik példa: $x \mapsto \tan\left(\pi x - \frac\pi2\right)$.) $\blacksquare$

::: elmelet
**Elméleti háttér — számosság és a végtelen halmazok „rugalmassága”.**

*Egyenlő számosság.* $A \sim B$, ha van közöttük bijekció. Végtelen halmazok egyenlő számosságúak lehetnek valódi részhalmazukkal ($\mathbb{N} \sim 2\mathbb{N}$, $[0, 1] \sim (0, 1)$) — ez Dedekind szerint a végtelenség definíciója is lehet.

*Hilbert-szálloda.* Végtelen halmazból megszámlálható sok elemet elhagyni vagy hozzávenni nem változtat a számosságon (ha a halmaz nem megszámlálható marad): egy megszámlálható részhalmazt „eltolunk” ($\frac1n \mapsto \frac{1}{n + 2}$), és a felszabaduló helyekre tesszük a többletelemeket.

*Intervallumok és $\mathbb R$.* Bármely két nem degenerált intervallum (nyílt, zárt, félig nyílt, korlátos vagy nem) egyenlő számosságú: korlátos nyílt intervallumok között lineáris bijekció van, a nyílt intervallum és $\mathbb{R}$ között szigorúan monoton, végtelenbe tartó folytonos függvény, a végpontokat pedig a Hilbert-szálloda kezeli. A **Schröder–Bernstein-tétellel** ez még egyszerűbb: elég injekciókat mutatni mindkét irányban.

*Folytonos bijekció?* $[0, 1]$ és $(0, 1)$ között nincs *folytonos* bijekció (a folytonos kép kompakt volna, így lenne maximuma); a bijekció tehát szükségképpen szakadásos — a számosság a „puszta halmaz” tulajdonsága, a topológiát nem veszi figyelembe.
:::

## K60. feladat

a) Legfeljebb hány páronként diszjunkt, nem degenerált (pozitív hosszúságú) intervallum lehet $\mathbb{R}$-ben?

b) Lehet-e kontinuum sok páronként diszjunkt nyílt körlap a síkon? És kontinuum sok páronként diszjunkt körvonal?

**Megoldás.**

a) **Legfeljebb megszámlálhatóan sok** (és megszámlálhatóan sok lehet is: $(n, n + 1)$, $n \in \mathbb{Z}$). Minden nem degenerált intervallum tartalmaz racionális számot; válasszunk mindegyikből egyet. Mivel az intervallumok diszjunktak, különböző intervallumokhoz különböző racionális szám tartozik: ez injekció a $\mathbb{Q}$-ba, tehát az intervallumok halmaza legfeljebb megszámlálható.

b) **Körlapokból nem**: minden nyílt körlap tartalmaz racionális koordinátájú pontot, és diszjunkt körlapokhoz különböző pontok tartoznak; $\mathbb{Q}^2$ megszámlálható, így legfeljebb megszámlálhatóan sok diszjunkt körlap van. **Körvonalakból igen**: az origó középpontú, $r > 0$ sugarú körök páronként diszjunktak, és kontinuum sokan vannak.

::: elmelet
**Elméleti háttér — „vastag” objektumok és racionális tanúk.**

*Az elv.* Ha minden objektum tartalmaz egy nyílt halmazt (pozitív hosszúságú intervallumot, nyílt körlapot), akkor tartalmaz egy elemet a megszámlálható, sűrű $\mathbb{Q}$ (illetve $\mathbb{Q}^2$) halmazból. Diszjunkt objektumokhoz különböző „tanúk” tartoznak, így ilyen objektumokból legfeljebb megszámlálhatóan sok lehet. A körvonalak nem tartalmaznak nyílt halmazt („vékonyak”), ezért rájuk az elv nem alkalmazható.

*Következmények.*

- $\mathbb{R}$ minden nyílt halmaza legfeljebb megszámlálhatóan sok diszjunkt nyílt intervallum uniója.
- Monoton függvény szakadásai legfeljebb megszámlálhatóan sokan vannak (az ugrások diszjunkt intervallumai).
- A szigorú lokális szélsőértékhelyek halmaza megszámlálható (8. feladatlap, 77. feladat).

*Finomabb esetek.* A T-betűk (6. feladatlap) és a „nyolcasok” (két érintkező kör) is „félig vastagok”; ezeknél a végtelen skatulyaelv kell: egy nem megszámlálható családban van nem megszámlálható sok „legalább $\frac1n$ méretű” elem, és ezek közül kettő túl közel kerül egymáshoz.
:::

## K61. feladat

a) Mutassuk meg, hogy $\sqrt2 + \sqrt3$ algebrai szám. b) Mutassuk meg, hogy a legfeljebb másodfokú, egész együtthatós polinomok valós gyökeinek halmaza megszámlálható, és ebből következtessünk arra, hogy van olyan valós szám, amely egyetlen ilyen polinomnak sem gyöke.

**Megoldás.**

a) Legyen $x = \sqrt2 + \sqrt3$. Ekkor $x^2 = 5 + 2\sqrt6$, $(x^2 - 5)^2 = 24$, azaz
$$x^4 - 10x^2 + 1 = 0.$$
Tehát $x$ gyöke egy egész együtthatós, nem nulla polinomnak: algebrai. $\blacksquare$

b) A legfeljebb másodfokú, nem nulla egész együtthatós polinomok az $(a, b, c) \in \mathbb{Z}^3 \setminus \{(0,0,0)\}$ együtthatóhármasokkal azonosíthatók ($ax^2 + bx + c$); $\mathbb{Z}^3$ megszámlálható. Minden ilyen polinomnak legfeljebb $2$ gyöke van. A gyökök halmaza tehát megszámlálható sok, legfeljebb kételemű halmaz uniója: megszámlálható. Mivel $\mathbb{R}$ nem megszámlálható, van olyan valós szám, amely egyiknek sem gyöke (például $\sqrt[3]{2}$ ilyen, de a létezéshez erre nincs szükség). $\blacksquare$

::: elmelet
**Elméleti háttér — algebrai számok.**

*Definíció és példák.* Egy szám algebrai, ha gyöke egy nem nulla egész együtthatós polinomnak. A $\sqrt2 + \sqrt3$ minimálpolinomja $x^4 - 10x^2 + 1$ (foka $4$); általában az algebrai számok összege, szorzata, hányadosa is algebrai (testet alkotnak), de ennek bizonyítása lineáris algebrát igényel.

*Megszámlálás.* Az egész együtthatós polinomok megszámlálhatók (a fokszám szerinti uniók), mindegyiknek véges sok gyöke van, így az algebrai számok halmaza megszámlálható. Cantor ebből következtetett 1874-ben a **transzcendens számok** létezésére — anélkül, hogy egyet is megmutatott volna.

*Konkrét transzcendens számok.* Liouville (1844): $\sum 10^{-k!}$; Hermite (1873): $e$; Lindemann (1882): $\pi$. A b) részben a „legfeljebb másodfokú” korlát miatt még $\sqrt[3]2$ sem gyök — a fokszám szerinti hierarchia minden szintje megszámlálható.

*A számlálás finomítása.* Egy polinom „magassága” $h = \deg P + \sum|a_i|$; adott $h$-hoz véges sok polinom tartozik, így a $h = 1, 2, \dots$ szerinti felsorolás közvetlenül megadja az algebrai számok egy sorozatba rendezését.
:::

## K62. feladat

a) Bizonyítsuk be Cantor átlós módszerével, hogy a végtelen $0$–$1$ sorozatok halmaza nem megszámlálható.

b) Mutassuk meg, hogy a természetes számok szigorúan növő sorozatainak halmaza sem megszámlálható.

**Megoldás.**

a) Tegyük fel, hogy a $0$–$1$ sorozatok felsorolhatók: $s^{(1)}, s^{(2)}, \dots$, ahol $s^{(k)} = (s^{(k)}_1, s^{(k)}_2, \dots)$. Legyen $t_n = 1 - s^{(n)}_n$ („az átló megfordítása”). A $t = (t_1, t_2, \dots)$ sorozat $0$–$1$ sorozat, de minden $k$-ra eltér $s^{(k)}$-tól a $k$-adik helyen. Tehát nem szerepel a felsorolásban — ellentmondás. $\blacksquare$

b) Egy szigorúan növő $n_1 < n_2 < \dots$ sorozat egyértelműen megfelel az értékkészletének, egy végtelen $A \subseteq \mathbb{N}$ részhalmaznak (és fordítva, minden végtelen részhalmaz elemei növő sorrendben egy ilyen sorozatot adnak). A végtelen részhalmazok a $0$–$1$ sorozatok közül azoknak felelnek meg, amelyekben végtelen sok $1$-es van. Ha ezek megszámlálhatók volnának, akkor a véges sok $1$-est tartalmazó sorozatokkal (ezek a véges részhalmazok, megszámlálhatóan sok, K55) együtt az összes $0$–$1$ sorozat is megszámlálható volna — ellentmondás az a) résszel. $\blacksquare$

::: elmelet
**Elméleti háttér — az átlós módszer.**

*A gondolat.* Bármely felsorolásból konstruálunk egy elemet, amely „mindenkitől különbözik”: a $k$-adik elemtől a $k$-adik koordinátában. Ez az érvelés nemcsak a $0$–$1$ sorozatokra, hanem a valós számokra (tizedes tört alakban, ügyelve a $0{,}999\ldots = 1$ kétértelműségre), és általában a **Cantor-tételre** is működik: semmilyen $A \to \mathcal{P}(A)$ leképezés nem szürjektív (a $D = \{a : a \notin f(a)\}$ halmaz az „átló megfordítása”).

*Számosságok.* $|\{0,1\}^{\mathbb N}| = |\mathcal{P}(\mathbb N)| = |\mathbb{R}| = \mathfrak{c}$ (kontinuum), és $\mathfrak c > \aleph_0 = |\mathbb{N}|$. A b) rész szerint már a „növő indexsorozatok” — vagyis egy sorozat részsorozatainak — halmaza is kontinuum számosságú.

*Hol jelenik meg az átlós módszer máshol?* A megállási probléma eldönthetetlenségében (Turing), Gödel nemteljességi tételében, és a Russell-paradoxonban („azon halmazok halmaza, amelyek nem elemei önmaguknak”) is ugyanez a szerkezet dolgozik.
:::

# A 7. feladatlaphoz

## K63. feladat

Határozzuk meg a $\liminf$-et és a $\limsup$-ot:

a) $a_n = \left(1 + (-1)^n\right)\frac{n}{n + 1}$; b) $b_n = \sin\frac{n\pi}{3}$; c) $1, \frac12, 2, \frac13, 3, \frac14, 4, \dots$

**Megoldás.**

a) Páratlan $n$-re $a_n = 0$, páros $n$-re $a_n = \frac{2n}{n + 1} \to 2$. Sűrűsödési értékek: $\{0, 2\}$; **$\liminf = 0$, $\limsup = 2$**.

b) A sorozat $6$ szerint periodikus: $n = 1, \dots, 6$-ra $\frac{\sqrt3}{2}, \frac{\sqrt3}{2}, 0, -\frac{\sqrt3}2, -\frac{\sqrt3}2, 0$. Sűrűsödési értékek: $\{-\frac{\sqrt3}{2}, 0, \frac{\sqrt3}{2}\}$; **$\liminf = -\frac{\sqrt3}2$, $\limsup = \frac{\sqrt3}2$**.

c) A páratlan indexű tagok $1, 2, 3, \dots \to +\infty$, a páros indexűek $\frac12, \frac13, \dots \to 0$. **$\liminf = 0$, $\limsup = +\infty$**.

::: elmelet
**Elméleti háttér — $\limsup$, $\liminf$ és részsorozatok.**

*Definíció.* $\limsup a_n = \lim_{n\to\infty}\sup_{k\ge n}a_k = \inf_n\sup_{k \ge n}a_k$, és $\liminf$ hasonlóan; mindkettő mindig létezik a bővített számegyenesen. Korlátos sorozatra a legnagyobb és a legkisebb sűrűsödési érték.

*Gyakorlati számolás.* Ha az indexhalmaz véges sok részre bontható (paritás, maradékosztályok), és a részsorozatok (tágabb értelemben) konvergensek, a $\limsup$ a részsorozat-határértékek maximuma, a $\liminf$ a minimuma. Periodikus sorozatnál a sűrűsödési értékek pontosan a periódusban felvett értékek.

*Végtelen értékek.* $\limsup a_n = +\infty \iff$ a sorozat felülről nem korlátos. A c) példában a $\liminf$ véges, a $\limsup$ végtelen: a sorozat „egyik lába” a végtelenbe szalad, a másik a $0$-hoz tart.

*Kapcsolat a határértékkel.* $\lim a_n$ létezik (tágabb értelemben) $\iff \liminf = \limsup$. Mindhárom példa divergens, mert $\liminf < \limsup$.
:::

## K64. feladat

Bizonyítsuk be, hogy $\lim\limits_{n\to\infty}a_n = +\infty$ pontosan akkor, ha $\liminf\limits_{n\to\infty}a_n = +\infty$.

**Megoldás.**

Legyen $m_n = \inf_{k \ge n}a_k$ (monoton növő), $\liminf a_n = \lim m_n$.

($\Rightarrow$) Adott $K$-hoz van $N$, hogy $k \ge N$-re $a_k > K + 1$; ekkor $n \ge N$-re $m_n \ge K + 1 > K$. Tehát $m_n \to +\infty$.

($\Leftarrow$) Ha $m_n \to +\infty$, akkor adott $K$-hoz van $N$, hogy $n \ge N$-re $m_n > K$, és mivel $a_n \ge m_n$, $a_n > K$. Tehát $a_n \to +\infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — a $\liminf$ és a végtelen határérték.**

*A farok infimuma.* $m_n = \inf_{k\ge n}a_k$ a sorozat $n$-edik farkának „legrosszabb” tagja; $a_n \ge m_n$ mindig. Az $a_n \to +\infty$ azt jelenti, hogy egy indextől *minden* tag nagy — vagyis a farok infimuma is nagy. Ezért egyezik a két fogalom.

*Párhuzam a véges esettel.* $a_n \to a \in \mathbb R \iff \liminf a_n = \limsup a_n = a$; $a_n \to +\infty \iff \liminf a_n = +\infty$ (ekkor automatikusan $\limsup = +\infty$ is). Egységesen: $a_n \to A \in \overline{\mathbb R} \iff \liminf a_n = \limsup a_n = A$.

*A $+1$ trükk.* A ($\Rightarrow$) irányban $a_k > K + 1$-ből az infimumra csak $m_n \ge K + 1$ (nem szigorú) adódik — az infimum „elveszítheti” a szigorú egyenlőtlenséget. A korlát eltolása ezt kezeli.
:::

## K65. feladat

Bizonyítsuk be, hogy ha $\liminf\limits_{n\to\infty}a_n = a \in \mathbb{R}$, akkor $a$ a sorozat legkisebb sűrűsödési értéke.

**Megoldás.**

Legyen $m_n = \inf_{k\ge n}a_k \uparrow a$ (így $m_n \le a$ minden $n$-re).

*$a$ sűrűsödési érték.* Legyen $\varepsilon > 0$ és $N$ tetszőleges. Van $N' \ge N$, amelyre $m_{N'} > a - \varepsilon$. Mivel $m_{N'} \le a < a + \varepsilon$, az infimum definíciója szerint van $k \ge N'$, $a_k < a + \varepsilon$; és $a_k \ge m_{N'} > a - \varepsilon$. Tehát tetszőlegesen nagy indexű tag van az $(a - \varepsilon, a + \varepsilon)$-ban: végtelen sok.

*Minden sűrűsödési érték $\ge a$.* Ha $a_{n_j} \to x$, akkor $a_{n_j} \ge m_{n_j} \to a$, és határátmenettel $x \ge a$.

Tehát $a$ a sűrűsödési értékek minimuma. $\blacksquare$

::: elmelet
**Elméleti háttér — dualitás $\limsup$ és $\liminf$ között.**

*Tükrözés.* $\liminf a_n = -\limsup(-a_n)$, és $x$ pontosan akkor sűrűsödési értéke $(a_n)$-nek, ha $-x$ sűrűsödési értéke $(-a_n)$-nek. Ezért a $\limsup$-ra bizonyított állítás (a legnagyobb sűrűsödési érték) tükrözéssel azonnal adja a $\liminf$-re vonatkozót. A megoldás a közvetlen bizonyítást mutatja, amely a $\limsup$-os bizonyítás „tükörképe”.

*A két lépés logikája.* (1) Létezés: $a$-hoz tartó részsorozat van (minden környezetében végtelen sok tag). (2) Szélsőség: más részsorozat-határérték nem lehet kisebb (egyenlőtlenség határátmenetben). Ez a „$\min$ = $\inf$, ha eléri” séma.

*Következmény.* Korlátos sorozat sűrűsödési értékeinek $S$ halmaza mindig tartalmazza a minimumát és a maximumát ($\liminf$, $\limsup$) — ez $S$ zártságának egy speciális esete.
:::

## K66. feladat

Mutassuk meg, hogy $\liminf\limits_{n\to\infty}a_n = a \in \mathbb{R}$ pontosan akkor, ha minden $\varepsilon > 0$-ra $a_n < a - \varepsilon$ csak véges sok $n$-re, és $a_n < a + \varepsilon$ végtelen sok $n$-re teljesül.

**Megoldás.**

$m_n = \inf_{k\ge n}a_k$, $\liminf a_n = \lim m_n$.

($\Rightarrow$) Ha $m_n \uparrow a$ és $\varepsilon > 0$: van $N$, hogy $m_N > a - \varepsilon$, így $n \ge N$-re $a_n \ge m_N > a - \varepsilon$ — csak véges sok $n$-re lehet $a_n < a - \varepsilon$. Másrészt minden $N$-re $m_N \le a < a + \varepsilon$, így van $k \ge N$, $a_k < a + \varepsilon$: végtelen sok ilyen $k$ van.

($\Leftarrow$) Adott $\varepsilon$-ra van $N$, hogy $n \ge N$-re $a_n \ge a - \varepsilon$, így $m_n \ge a - \varepsilon$. Mivel végtelen sok $k$-ra $a_k < a + \varepsilon$, minden $n$-re van ilyen $k \ge n$, tehát $m_n < a + \varepsilon$. Így $n \ge N$-re $|m_n - a| \le \varepsilon$: $m_n \to a$. $\blacksquare$

::: elmelet
**Elméleti háttér — a $\liminf$ $\varepsilon$-os jellemzése.**

*A két feltétel jelentése.* (1) $a - \varepsilon$ „aszimptotikus alsó korlát”: csak véges sok tag esik alá. (2) $a + \varepsilon$ már nem ilyen: végtelen sok tag esik alá. Ez az infimum $\varepsilon$-os jellemzésének „végtelenbeli” változata: „minden elem” helyett „majdnem minden elem”, „van elem” helyett „végtelen sok elem”.

*Használat.* A $\liminf a_n \ge c$ igazolásához elég, hogy minden $\varepsilon$-ra egy indextől $a_n > c - \varepsilon$; a $\liminf a_n \le c$-hez elég egy részsorozat, amely $c$-hez (vagy kisebbhez) tart.

*Összefoglaló táblázat* ($a \in \mathbb{R}$, $\varepsilon > 0$ tetszőleges):

| | $a - \varepsilon$ alatt | $a + \varepsilon$ fölött |
|:--|:--|:--|
| $\lim a_n = a$ | véges sok tag | véges sok tag |
| $\liminf a_n = a$ | véges sok tag | — (de $a + \varepsilon$ alatt végtelen sok) |
| $\limsup a_n = a$ | — (de $a - \varepsilon$ fölött végtelen sok) | véges sok tag |
:::

## K67. feladat

Számítsuk ki a sorok összegét: a) $\displaystyle\sum_{n=1}^{\infty}\frac{3 \cdot (-1)^n}{4^n}$; b) $\displaystyle\sum_{n=1}^{\infty}\frac{1}{n(n + 2)}$; c) $\displaystyle\sum_{n=1}^{\infty}\frac{1}{4n^2 - 1}$.

**Megoldás.**

a) Mértani sor $q = -\frac14$ hányadossal, első tag $-\frac34$:
$$\sum_{n=1}^\infty 3\left(-\frac14\right)^n = \frac{-3/4}{1 + 1/4} = -\frac35.$$

b) $\frac{1}{n(n+2)} = \frac12\left(\frac1n - \frac{1}{n + 2}\right)$. A részletösszeg teleszkopikus (két lépéssel „ugró” kiejtéssel):
$$S_N = \frac12\left(1 + \frac12 - \frac{1}{N + 1} - \frac{1}{N + 2}\right) \to \frac12\cdot\frac32 = \frac34.$$

c) $\frac{1}{4n^2 - 1} = \frac{1}{(2n - 1)(2n + 1)} = \frac12\left(\frac{1}{2n - 1} - \frac{1}{2n + 1}\right)$, így
$$S_N = \frac12\left(1 - \frac{1}{2N + 1}\right) \to \frac12.$$

::: elmelet
**Elméleti háttér — mértani és teleszkopikus sorok.**

*Mértani sor.* $\sum_{n=k}^\infty q^n = \frac{q^k}{1 - q}$, ha $|q| < 1$; negatív $q$ esetén is érvényes (a tagok váltakozó előjelűek). A képlet: „első tag osztva $(1 - \text{hányados})$”.

*Teleszkopikus sor.* Ha $a_n = b_n - b_{n+m}$ (a kiejtés $m$ lépéssel „ugrik”), akkor $S_N = b_1 + \dots + b_m - (b_{N+1} + \dots + b_{N+m})$, és ha $b_n \to 0$, a sor összege $b_1 + \dots + b_m$. A b) részben $m = 2$: $\frac12\left(1 + \frac12\right) = \frac34$.

*Parciális törtek.* $\frac{1}{(n + \alpha)(n + \beta)} = \frac{1}{\beta - \alpha}\left(\frac{1}{n + \alpha} - \frac{1}{n + \beta}\right)$ ($\alpha \ne \beta$). Ez a racionális függvények integrálásánál is ugyanígy használatos.

*Összegezhetőség és kiejtés.* Egy végtelen sor tagjait nem szabad tetszőlegesen átrendezni vagy zárójelezni — a teleszkopikus kiejtést mindig a **véges** részletösszegeken végezzük el, és csak utána veszünk határértéket. (A $\sum(-1)^n$ sor „zárójelezésével” $0$-t vagy $1$-et is kaphatnánk, pedig divergens.)
:::

## K68. feladat

Bizonyítsuk be, hogy (korlátos sorozatokra) $\limsup(x_n + y_n) \le \limsup x_n + \limsup y_n$, és adjunk példát szigorú egyenlőtlenségre. Mutassuk meg, hogy ha $y_n \to y$, akkor $\limsup(x_n + y_n) = \limsup x_n + y$.

**Megoldás.**

*Egyenlőtlenség.* $M_n(\cdot) = \sup_{k\ge n}(\cdot)_k$ jelöléssel minden $k \ge n$-re $x_k + y_k \le M_n(x) + M_n(y)$, így $M_n(x + y) \le M_n(x) + M_n(y)$, és határátmenettel az állítás.

*Szigorú példa:* $x_n = (-1)^n$, $y_n = (-1)^{n+1}$: $\limsup(x_n + y_n) = 0 < 2 = 1 + 1$.

*Konvergens $y_n$.* Az egyenlőtlenség szerint $\limsup(x_n + y_n) \le \limsup x_n + y$. Másrészt $x_n = (x_n + y_n) + (-y_n)$, így ugyanezzel $\limsup x_n \le \limsup(x_n + y_n) + \limsup(-y_n) = \limsup(x_n + y_n) - y$. A kettő együtt egyenlőséget ad. $\blacksquare$

::: elmelet
**Elméleti háttér — a $\limsup$ szubadditivitása.**

*Szubadditivitás.* A szuprémum szubadditív: $\sup(a + b) \le \sup a + \sup b$ ugyanazon indexhalmazon, mert az összeg maximuma nem lehet nagyobb a maximumok összegénél (de lehet kisebb, ha a maximumok különböző helyeken vannak). Ez öröklődik a farkakra és a határértékre.

*Egyenlőség konvergens tagnál.* Konvergens sorozat hozzáadása „eltolja” a sorozatot: a sűrűsödési értékek mind $y$-nal tolódnak, így a $\limsup$ is. A bizonyítás a „visszafelé alkalmazott egyenlőtlenség” trükkje: $x = (x + y) - y$.

*Az egyenlőtlenség-lánc* (korlátos sorozatokra):
$$\liminf x + \liminf y \le \liminf(x + y) \le \liminf x + \limsup y \le \limsup(x + y) \le \limsup x + \limsup y.$$
Ezek mindegyike lehet szigorú, és mindegyik egyenlőséggé válik, ha valamelyik sorozat konvergens.
:::

## K69. feladat

Ábrázoljuk és írjuk le az alábbi függvényeket: a) $f(x) = [x] + [-x]$; b) $g(x) = \{2x\} - 2\{x\}$.

**Megoldás.**

a) Ha $x \in \mathbb{Z}$, akkor $[-x] = -x = -[x]$, így $f(x) = 0$. Ha $x \notin \mathbb Z$, akkor $[x] < x < [x] + 1$, így $-[x] - 1 < -x < -[x]$, tehát $[-x] = -[x] - 1$ és $f(x) = -1$. A függvény tehát a $-1$ értékű konstans, kivéve az egész helyeket, ahol $0$: „pontozott” egyenes. Minden egész helyen megszüntethető szakadása van ($\lim_{x\to n}f(x) = -1 \ne 0$).

b) $\{2x\} - 2\{x\} = (2x - [2x]) - 2(x - [x]) = 2[x] - [2x]$. Ha $\{x\} < \frac12$, akkor $[2x] = 2[x]$, és $g(x) = 0$; ha $\{x\} \ge \frac12$, akkor $[2x] = 2[x] + 1$, és $g(x) = -1$. A függvény $1$ szerint periodikus, a $[k, k + \frac12)$ intervallumokon $0$, a $[k + \frac12, k + 1)$ intervallumokon $-1$ — egy „négyszögjel”.

::: elmelet
**Elméleti háttér — egészrész és törtrész azonosságai.**

*Alapazonosságok.* $[x + n] = [x] + n$ ($n \in \mathbb{Z}$); $\{x\}$ $1$ szerint periodikus; $[-x] = -[x]$, ha $x \in \mathbb Z$, és $-[x] - 1$ különben; $[2x] = 2[x] + [2\{x\}]$ (Hermite-azonosság speciális esete: $[x] + [x + \frac12] = [2x]$).

*Esetszétválasztás a törtrész szerint.* Az egészrészes kifejezések vizsgálatánál az $x = [x] + \{x\}$ felbontás után a törtrész helye ($\{x\} \in [0, \frac12)$ vagy $[\frac12, 1)$ stb.) dönti el a képletet. Ez egy periodikus függvény egyetlen periódusának vizsgálatára vezeti vissza a feladatot.

*Folytonosság.* $[x]$ az egész helyeken ugrik (jobbról folytonos), $\{x\}$ is. Az a) függvény szakadásai „megszüntethetők”, a b) függvényé ugrások ($k$-ban és $k + \frac12$-ben). A „négyszögjel” a Fourier-sorok klasszikus példája.

*Kapcsolat a sorozatokkal.* A $[nx]$, $\{nx\}$ sorozatok fontos szerepet játszanak a diofantikus approximációban (K42) és az egyenletes eloszlás elméletében.
:::

## K70. feladat

a) Adjunk meg $[0, 1]$-en értelmezett, felülről nem korlátos függvényt. b) Adjunk meg $[0, 1]$-en értelmezett korlátos függvényt, amelynek sem legnagyobb, sem legkisebb értéke nincs.

**Megoldás.**

a) $f(x) = \frac1x$ ($0 < x \le 1$), $f(0) = 0$. Minden $K > 1$-re $f\left(\frac{1}{K}\right) = K$, és $f\left(\frac{1}{2K}\right) = 2K > K$, tehát felülről nem korlátos.

b) $g(x) = x$, ha $0 < x < 1$, és $g(0) = g(1) = \frac12$. Értékkészlete $(0, 1)$ (a $\frac12$-et már a belsejében is felveszi), amelynek nincs maximuma és minimuma, bár korlátos ($\sup = 1$, $\inf = 0$).

::: elmelet
**Elméleti háttér — a Weierstrass-tétel feltételei.**

*Weierstrass tétele.* Ha $f$ folytonos a korlátos, zárt $[a, b]$ intervallumon, akkor korlátos, és felveszi a maximumát és a minimumát. Mindkét példa szükségképpen szakadásos: az a) a $0$-ban (ott végtelen „ugrás”), a b) a két végpontban.

*Két különböző kudarc.* (1) **Korlátosság** sérül: folytonosság nélkül a függvény egy pont közelében „elszállhat” (a). (2) **Szélsőérték** nem vétetik fel: korlátos, de a $\sup$ csak megközelíthető (b). Folytonos függvénynél zárt intervallumon egyik sem fordulhat elő; nyílt intervallumon mindkettő igen ($\frac1x$ a $(0, 1]$-en; $x$ a $(0, 1)$-en).

*A bizonyítás kulcsa.* A Weierstrass-tétel bizonyításában egy maximalizáló sorozat ($f(x_n) \to \sup f$) Bolzano–Weierstrass szerint konvergens részsorozatot tartalmaz, a zártság miatt a határ az intervallumban van, a folytonosság miatt ott $f$ felveszi a $\sup$-ot. A példák pontosan a „folytonosság” lépésnél buknak el: a határpontban a függvényérték „rossz”.
:::

## K71. feladat

a) Keressük meg az $f(x) = \frac{3x + 1}{x - 2}$ függvény inverzét az $\mathbb{R} \setminus \{2\}$ halmazon. b) Keressük meg a $g(x) = x^2 + 2x$ függvény inverzét a $[-1, \infty)$ intervallumon.

**Megoldás.**

a) $y = \frac{3x + 1}{x - 2} \iff y(x - 2) = 3x + 1 \iff x(y - 3) = 2y + 1$. Ha $y \ne 3$: $x = \frac{2y + 1}{y - 3}$. Az $y = 3$ értéket $f$ nem veszi fel ($3x - 6 = 3x + 1$ lehetetlen). Tehát $f : \mathbb{R}\setminus\{2\} \to \mathbb R \setminus \{3\}$ bijekció, és
$$f^{-1}(x) = \frac{2x + 1}{x - 3}, \qquad D(f^{-1}) = \mathbb{R}\setminus\{3\}.$$

b) $g(x) = (x + 1)^2 - 1$, amely a $[-1, \infty)$-en szigorúan nő, értékkészlete $[-1, \infty)$. $y = (x + 1)^2 - 1 \iff (x + 1)^2 = y + 1$, és $x + 1 \ge 0$ miatt $x = -1 + \sqrt{y + 1}$. Tehát
$$g^{-1}(x) = -1 + \sqrt{x + 1}, \qquad D(g^{-1}) = [-1, \infty).$$

::: elmelet
**Elméleti háttér — inverz függvény és a leszűkítés.**

*Az inverz létezése.* Csak injektív függvénynek van inverze; ha egy függvény nem injektív (mint $x^2 + 2x$ a $\mathbb{R}$-en), egy olyan intervallumra **szűkítjük**, ahol az (itt a csúcstól jobbra eső $[-1, \infty)$). A négyzetgyökfüggvény is így keletkezik: az $x^2$ inverze a $[0, \infty)$-en.

*Kiszámítás.* Az $y = f(x)$ egyenletet $x$-re oldjuk meg; a megoldhatóság feltétele adja az értékkészletet (és így $f^{-1}$ értelmezési tartományát). A b) részben a két gyök közül ($-1 \pm \sqrt{y + 1}$) a leszűkítés választja ki a megfelelőt.

*Törtlineáris függvények.* $\frac{ax + b}{cx + d}$ inverze $\frac{dx - b}{-cx + a}$; itt $a = 3$, $b = 1$, $c = 1$, $d = -2$: $\frac{-2x - 1}{-x + 3} = \frac{2x + 1}{x - 3}$. Az $f$ értékkészletéből a vízszintes aszimptota ($y = \frac ac = 3$) hiányzik, az inverz értelmezési tartományából ugyanez.

*Grafikon.* Az inverz grafikonja az eredeti tükörképe az $y = x$ egyenesre; folytonos, szigorúan monoton függvény inverze is az.
:::

## K72. feladat

Létezik-e olyan monoton $f : [0, 1] \to \mathbb{R}$ függvény, amelynek értékkészlete

a) $[0, 1] \cap \mathbb{Q}$; b) $\{0\} \cup [1, 2]$; c) $[0, 1] \cup \{2\}$; d) $\mathbb{N} \cup \{0\}$?

**Megoldás.**

a) **Nem.** Tegyük fel, hogy $f$ monoton nő (fogyóra hasonlóan). Ekkor $f(0) = 0$, $f(1) = 1$. Egy monoton függvény által ki nem hagyott értékek: ha $f$ egy $c$ pontban ugrik, akkor a $(f(c - 0), f(c + 0))$ intervallumból legfeljebb egy érték ($f(c)$) vétetik fel. Mivel az értékkészlet $[0,1]$ bármely nem degenerált részintervallumában tartalmaz pontot (racionálisat), egy ugrás nem hagyhat ki egy egész intervallumot — tehát nincs ugrás, $f$ folytonos. De akkor a Bolzano-tétel szerint minden $[0, 1]$-beli értéket felvesz, az irracionálisakat is. Ellentmondás.

b) **Igen:** $f(0) = 0$, $f(x) = 1$, ha $0 < x < \frac12$, és $f(x) = 2x$, ha $\frac12 \le x \le 1$. Ez monoton nő, értékkészlete $\{0\} \cup [1, 2]$. (Az egyszerűbb $f(x) = 1 + x$ ($x > 0$) nem jó: értékkészlete $\{0\} \cup (1, 2]$, az $1$ hiányzik — ezért kell a konstans szakasz.)

c) **Igen:** $f(x) = 2x$, ha $0 \le x \le \frac12$; $f(x) = 1$, ha $\frac12 < x < 1$; $f(1) = 2$. Monoton nő, értékkészlete $[0, 1] \cup \{2\}$. (Az $f(x) = x$ ($x < 1$), $f(1) = 2$ választásnál az $1$ hiányozna.)

d) **Nem:** monoton függvény $[0, 1]$-en korlátos ($f(0)$ és $f(1)$ közé esik), de $\mathbb{N}\cup\{0\}$ nem korlátos.

::: elmelet
**Elméleti háttér — monoton függvények értékkészlete.**

*Korlátok.* Monoton $f : [a, b] \to \mathbb{R}$ esetén $R(f) \subseteq [f(a), f(b)]$ (növőre), tehát az értékkészlet korlátos, és van minimuma és maximuma.

*Ugrások.* Monoton függvénynek minden pontban léteznek az egyoldali határértékei; szakadás csak ugrás lehet, amely egy értékintervallumot (legfeljebb egy pont kivételével) kihagy. Ezért egy monoton függvény értékkészlete: $[f(a), f(b)]$ mínusz megszámlálhatóan sok diszjunkt „hézag” (intervallum, esetleg egy belső ponttal).

*Mikor nincs hézag?* Ha az értékkészlet „sűrű” a $[f(a), f(b)]$-ben (mint a $\mathbb Q \cap [0, 1]$), nem lehet hézag, tehát a függvény folytonos, és akkor az értékkészlet a teljes intervallum. Ez a 10. feladatlap 102. feladatának (monoton és Darboux-tulajdonságú $\Rightarrow$ folytonos) egy változata.

*Konstrukció.* Ha egy értéket (itt az $1$-et) egy hézag határán *el kell érni*, a függvényt egy darabon konstansnak választjuk — ezért kell a nem szigorú monotonitás. Egy izolált értéket (a $0$ vagy a $2$) egyetlen pontban, ugrással veszünk fel.
:::

## K73. feladat

Döntsük el, párosak vagy páratlanok-e (vagy egyik sem) az alábbi függvények:

a) $x^3\sin x$; b) $|x| + x^2$; c) $\frac{x^3 - x}{x^2 + 1}$; d) $x[x]$; e) $\frac{e^x - e^{-x}}{2}$; f) $\ln\frac{1 - x}{1 + x}$ ($|x| < 1$).

**Megoldás.**

a) **Páros**: páratlan $\cdot$ páratlan ($x^3$ és $\sin x$): $(-x)^3\sin(-x) = x^3\sin x$.

b) **Páros**: páros + páros.

c) **Páratlan**: a számláló páratlan, a nevező páros, a hányados páratlan.

d) **Egyik sem**: legyen $d(x) = x[x]$. Ekkor $d(\frac12) = \frac12 \cdot 0 = 0$, de $d(-\frac12) = -\frac12 \cdot (-1) = \frac12$. Mivel $\frac12 \ne d(\frac12)$ és $\frac12 \ne -d(\frac12)$, a függvény se nem páros, se nem páratlan.

e) **Páratlan**: $\frac{e^{-x} - e^{x}}{2} = -\frac{e^x - e^{-x}}{2}$ (ez a $\sinh x$).

f) **Páratlan**: $\ln\frac{1 + x}{1 - x} = -\ln\frac{1 - x}{1 + x}$.

::: elmelet
**Elméleti háttér — paritás vizsgálata.**

*Módszer.* Behelyettesítjük a $-x$-et, és összevetjük $f(x)$-szel. A „egyik sem” bizonyításához **egy** konkrét $x$ elég, amelyre $f(-x) \ne f(x)$, és **egy** (lehet ugyanaz), amelyre $f(-x) \ne -f(x)$.

*Szabályok.* Szorzatnál és hányadosnál a paritások „előjelszabály” szerint kombinálódnak (páratlan $\cdot$ páratlan = páros); összegnél azonos paritás öröklődik; kompozícióban páros belső függvény mindig páros eredményt ad.

*Nevezetes páros/páratlan függvények.* Páros: $\cos$, $\cosh$, $|x|$, $x^{2k}$, $e^{-x^2}$. Páratlan: $\sin$, $\tan$, $\sinh$, $\tanh$, $\arctan$, $x^{2k+1}$, $\operatorname{sgn}$. A d) részben az egészrész „elrontja” a szimmetriát: $[-x] \ne -[x]$ nem egész $x$-re.

*Az értelmezési tartomány.* Paritásról csak $0$-ra szimmetrikus értelmezési tartomány esetén beszélhetünk — ezért kell az f) részben a $|x| < 1$ kikötés (a $(-1, 1)$ szimmetrikus).
:::

## K74. feladat

Bontsuk fel páros és páratlan függvény összegére: a) $f(x) = x^3 + 2x^2 - x + 5$; b) $g(x) = \frac{1}{x^2 + x + 1}$; c) $h(x) = e^x$.

**Megoldás.**

A felbontás: $p(x) = \frac{f(x) + f(-x)}{2}$ (páros rész), $q(x) = \frac{f(x) - f(-x)}{2}$ (páratlan rész).

a) A páros fokú tagok adják a páros részt: $p(x) = 2x^2 + 5$, $q(x) = x^3 - x$.

b) $g(-x) = \frac{1}{x^2 - x + 1}$, és $(x^2 + x + 1)(x^2 - x + 1) = (x^2 + 1)^2 - x^2 = x^4 + x^2 + 1$. Így
$$p(x) = \frac{x^2 + 1}{x^4 + x^2 + 1}, \qquad q(x) = \frac{-x}{x^4 + x^2 + 1}.$$

c) $p(x) = \frac{e^x + e^{-x}}{2} = \cosh x$, $q(x) = \frac{e^x - e^{-x}}{2} = \sinh x$.

::: elmelet
**Elméleti háttér — a páros–páratlan felbontás.**

*Létezés és egyértelműség.* Minden $0$-ra szimmetrikus értelmezési tartományú függvény egyértelműen felbomlik páros és páratlan részre. Egyértelműség: ha két felbontás volna, a különbségük egyszerre páros és páratlan, tehát azonosan $0$.

*Polinomokra* a felbontás a páros és páratlan fokú tagok szétválasztása; *hatványsorokra* ugyanígy — így kapjuk a $\cosh$ és $\sinh$ (illetve komplex esetben a $\cos$ és $i\sin$) függvényeket az $e^x$ felbontásaként. Euler-formula: $e^{ix} = \cos x + i\sin x$ — a valós és képzetes rész itt éppen a páros és a páratlan rész.

*Racionális függvényekre* a $g(x)$ és $g(-x)$ közös nevezőre hozásával kapjuk a felbontást; a közös nevező páros (itt $x^4 + x^2 + 1$), ezért a számláló paritása dönti el a részek paritását.

*Lineáris algebra.* A $T: f(x) \mapsto f(-x)$ lineáris leképezés, $T^2 = I$; sajátértékei $\pm1$, sajátalterei a páros, illetve páratlan függvények, és a felbontás a sajátalterekre való vetítés.
:::

## K75. feladat

a) Adjunk meg olyan $f : \mathbb{R} \to \mathbb{R}$ függvényt, amely minden $(a, b)$ intervallumon végtelen sok különböző értéket vesz fel, de az értékkészlete megszámlálható.

b) Mutassuk meg, hogy ugyanez a függvény minden intervallumon felülről nem korlátos.

**Megoldás.**

a) Legyen $f\left(\frac pq\right) = q$, ha $\frac pq$ egyszerűsített tört ($q \ge 1$; $f(0) = 1$), és $f(x) = 0$, ha $x$ irracionális. Az értékkészlet $\{0\} \cup \mathbb{N}$, megszámlálható. Bármely $(a, b)$ intervallumban és bármely $N$-re csak véges sok olyan tört van, amelynek nevezője legfeljebb $N$; mivel az intervallumban végtelen sok racionális szám van, ezek nevezői nem lehetnek mind $\le N$. Így $f$ az intervallumon tetszőlegesen nagy értékeket felvesz — tehát végtelen sok különbözőt.

b) Ugyanez az érvelés: minden $N$-hez van az intervallumban $N$-nél nagyobb nevezőjű tört, ahol $f > N$. $\blacksquare$

::: elmelet
**Elméleti háttér — a Riemann-függvény „reciproka”.**

*A kulcslemma.* Korlátos intervallumban csak véges sok legfeljebb $N$ nevezőjű tört van. Ebből a Riemann-függvényre ($R(\frac pq) = \frac1q$) az következik, hogy mindenütt $0$ a határértéke; a „reciprokra” ($f = \frac1R$ a racionálisokon) pedig az, hogy minden intervallumon felülről nem korlátos.

*Lokálisan nem korlátos függvények.* Egy függvény, amely minden intervallumon nem korlátos, sehol sem folytonos (folytonos függvény egy pont környezetében korlátos), és nem Riemann-integrálható semmilyen intervallumon. Ugyanakkor a racionálisok halmaza „kicsi” (megszámlálható, nullmértékű), így a függvény „majdnem mindenhol” $0$ — Lebesgue-integrálja $0$.

*Számosság és viselkedés.* Megszámlálható értékkészlet mellett is lehet a függvény nagyon „vad”: a viselkedést nem az értékek száma, hanem az eloszlásuk dönti el. A 7. feladatlap 75. feladata ennek a végletét mutatja (minden intervallumon minden érték).
:::

# A 8. feladatlaphoz

## K76. feladat

a) Mutassuk meg, hogy az $f(x) = \{x\} + \{2x\}$ függvény periodikus, és határozzuk meg a legkisebb pozitív periódusát.

b) Bizonyítsuk be, hogy ha egy folytonos $g : \mathbb{R} \to \mathbb{R}$ függvénynek van két periódusa, $p$ és $r$, amelyekre $\frac pr$ irracionális, akkor $g$ konstans.

**Megoldás.**

a) $\{x + 1\} = \{x\}$ és $\{2x + 2\} = \{2x\}$, így $1$ periódus. Ha $0 < p < 1$ is periódus volna, akkor $f(p) = f(0) = 0$ kellene, de $f(p) = \{p\} + \{2p\} \ge \{p\} = p > 0$. Tehát a legkisebb pozitív periódus **$1$**.

b) A periódusok halmaza (a $0$-val együtt) additív részcsoport: $mp + nr$ ($m, n \in \mathbb{Z}$) mind periódus (ha nem $0$). Mivel $\frac pr \notin \mathbb Q$, a K42. feladat gondolatmenete szerint (a $\{k\frac pr\}$ törtrészekre alkalmazott skatulyaelvvel) az $\{mp + nr\}$ halmaz sűrű $\mathbb{R}$-ben. Legyen $x \in \mathbb{R}$ tetszőleges, és $t_k = m_kp + n_kr \to x$ egy ilyen sorozat. Ekkor $g(t_k) = g(0)$ minden $k$-ra, és a folytonosság miatt $g(x) = \lim g(t_k) = g(0)$. Tehát $g$ konstans. $\blacksquare$

::: elmelet
**Elméleti háttér — periódusok és sűrű részcsoportok.**

*A periódusok csoportja.* Ha $p$ és $r$ periódus, akkor $p \pm r$ és $-p$ is az; a periódusok a $0$-val együtt $\mathbb{R}$ egy additív részcsoportját alkotják. Ez vagy diszkrét ($\{kp_0\}$, ahol $p_0$ a legkisebb pozitív periódus), vagy sűrű.

*Folytonos függvény és sűrű periódushalmaz.* Ha a periódusok sűrűek, akkor $g$ egy sűrű halmazon ($g(0)$ eltoltjain) állandó, és a folytonosság miatt mindenütt. Ezért egy nem konstans folytonos periodikus függvénynek van legkisebb pozitív periódusa. Folytonosság nélkül ez nem igaz: a Dirichlet-függvény periódusai a racionális számok, legkisebb pozitív periódusa nincs.

*Következmény.* $f(x) = \sin x + \sin(\sqrt2x)$ nem periodikus. Ha $T \ne 0$ periódusa volna, akkor $f''(x) = -\sin x - 2\sin(\sqrt2x)$ is $T$-periodikus volna, így $2f + f'' = \sin x$ és $-(f + f'') = \sin(\sqrt2x)$ is. Ekkor $T$ a $2\pi$-nek és a $\sqrt2\pi$-nek is egész többszöröse volna, ami lehetetlen, mert a két szám aránya irracionális.

*A legkisebb periódus meghatározása.* Egy jelölt ($1$) periódus voltát közvetlenül ellenőrizzük; minimalitásához elég megmutatni, hogy kisebb pozitív $p$-re valamely pontban (itt a $0$-ban) $f(x + p) \ne f(x)$.
:::

## K77. feladat

a) Bizonyítsuk be, hogy bármely $f : \mathbb{R} \to \mathbb{R}$ függvény szigorú lokális minimumhelyeinek halmaza megszámlálható.

b) Létezik-e olyan függvény, amelynek minden racionális pont szigorú lokális maximumhelye?

**Megoldás.**

a) Ha $x$ szigorú lokális minimumhely, válasszunk racionális végpontú $(p_x, q_x) \ni x$ intervallumot, amelyben $x$-től különböző pontokban $f > f(x)$. Ha két különböző pontnak, $x$-nek és $x'$-nek ugyanaz az intervallum jutna, mindkettő benne volna, így $f(x') > f(x)$ és $f(x) > f(x')$ — ellentmondás. Az $x \mapsto (p_x, q_x)$ tehát injekció $\mathbb{Q}^2$-be, és a szigorú lokális minimumhelyek halmaza megszámlálható. $\blacksquare$

b) **Igen**, a Riemann-függvény: $R(\frac pq) = \frac1q$, irracionálisra $0$. Egy $\frac pq$ pont körül elég kicsi környezetben (véges sok kis nevezőjű tört elkerülhető) minden pont nevezője nagyobb $q$-nál, vagy irracionális, így ott $R < \frac1q$. Ez összhangban van az a) résszel, hiszen $\mathbb{Q}$ megszámlálható.

::: elmelet
**Elméleti háttér — megszámlálhatóság racionális környezetekkel.**

*Az elv.* Minden pont minden környezete tartalmaz racionális végpontú intervallumot, amely a pontot tartalmazza, és ilyen intervallumból csak megszámlálhatóan sok van. Ha egy tulajdonság miatt két pont nem kaphatja ugyanazt az intervallumot, a pontok halmaza megszámlálható.

*Szigorú és nem szigorú szélsőérték.* A szigorúság kell: a konstans függvénynek minden pont (nem szigorú) lokális szélsőértékhelye. A Riemann-függvény irracionális pontjai nem szigorú lokális minimumhelyek, és ezekből kontinuum sok van — ez nem mond ellent a tételnek.

*Hasonló tételek.* Megszámlálható: monoton függvény szakadási helyei; egy függvény azon pontjai, ahol a két egyoldali határérték létezik, de különbözik; a sík diszjunkt nyílt körlapjainak bármely családja. A közös gondolat: minden ilyen objektumhoz egy racionális „tanú” rendelhető injektíven.
:::

## K78. feladat

Bizonyítsuk be a különbségi hányados módszerével, hogy

a) $\frac1x$ szigorúan konvex $(0, \infty)$-en;

b) $x^3$ konkáv $(-\infty, 0]$-n és konvex $[0, \infty)$-en;

c) $|x|$ konvex, de nem szigorúan konvex $\mathbb{R}$-en.

**Megoldás.**

Emlékeztető: $f$ (szigorúan) konvex $\iff$ minden $a$-ra $m_a(x) = \frac{f(x) - f(a)}{x - a}$ (szigorúan) nő; konkáv $\iff$ $m_a$ fogy.

a) $a > 0$-ra $m_a(x) = \frac{1/x - 1/a}{x - a} = \frac{a - x}{ax(x - a)} = -\frac{1}{ax}$, ami $x > 0$-ban szigorúan nő (mert $\frac{1}{ax}$ szigorúan fogy). Tehát $\frac1x$ szigorúan konvex.

b) $m_a(x) = \frac{x^3 - a^3}{x - a} = x^2 + ax + a^2$. Ha $a, x \le 0$: a $x \mapsto x^2 + ax + a^2$ parabola csúcsa az $x = -\frac a2 \ge 0$ helyen van, így a $(-\infty, 0]$-n fogy: $x^3$ konkáv. Ha $a, x \ge 0$: a csúcs $-\frac a2 \le 0$, így a $[0, \infty)$-en nő: $x^3$ konvex. (Ha $a = 0$, a csúcs a $0$-ban van, és az állítás mindkét oldalon igaz.)

c) $|x|$ konvex: $|\lambda x + (1 - \lambda)y| \le \lambda|x| + (1 - \lambda)|y|$ a háromszög-egyenlőtlenség. Nem szigorúan: $x = 1$, $y = 2$, $\lambda = \frac12$-re mindkét oldal $\frac32$ (a $[0, \infty)$-en $|x| = x$ lineáris).

::: elmelet
**Elméleti háttér — konvexitás, konkávitás, inflexió.**

*A különbségi hányados.* A $m_a(x)$ a $(a, f(a))$ és $(x, f(x))$ pontokat összekötő húr meredeksége. Konvex függvény grafikonján a húrok egyre meredekebbek (a „jobbra forduló” görbe), konkávon egyre laposabbak.

*Inflexiós pont.* Ahol a függvény konvexből konkávba (vagy fordítva) vált, ott **inflexiós pontja** van; $x^3$-nak a $0$-ban. Kétszer differenciálható függvénynél ott $f''$ előjelet vált (szükséges feltétel: $f''(x_0) = 0$).

*Hasznos tények.* Konvex függvények összege és pozitív számszorosa konvex; konvex függvények maximuma konvex ($|x| = \max\{x, -x\}$); lineáris függvény konvex és konkáv is (nem szigorúan). A $\frac1x$ szigorú konvexitásából jön a számtani és harmonikus közép közötti egyenlőtlenség (K80).

*Differenciálható esetben* (későbbi eszköz): $f$ konvex $\iff f'$ monoton nő $\iff f'' \ge 0$. Például $\left(\frac1x\right)'' = \frac{2}{x^3} > 0$ a $(0, \infty)$-en, $(x^3)'' = 6x$ előjele a $0$-ban vált.
:::

## K79. feladat

Legyen $f$ konvex az $I$ intervallumon. Bizonyítsuk be a Jensen-egyenlőtlenség egyenlő súlyú változatát,
$$f\left(\frac{x_1 + \dots + x_n}{n}\right) \le \frac{f(x_1) + \dots + f(x_n)}{n} \qquad (x_i \in I),$$
Cauchy „előre–hátra” indukciójával: előbb $n = 2^k$-ra, majd tetszőleges $n$-re.

**Megoldás.**

*$n = 2^k$-ra indukcióval $k$ szerint.* $k = 1$ a konvexitás definíciója ($\lambda = \frac12$). Ha $2^k$-ra igaz, akkor $2^{k+1}$ pontra, a két fél átlagát $A$-val és $B$-vel jelölve,
$$f\left(\frac{A + B}{2}\right) \le \frac{f(A) + f(B)}{2} \le \frac12\left(\frac{\sum_{i \le 2^k}f(x_i)}{2^k} + \frac{\sum_{i > 2^k}f(x_i)}{2^k}\right) = \frac{\sum_{i=1}^{2^{k+1}}f(x_i)}{2^{k+1}}.$$

*Visszafelé lépés: ha $n$-re igaz, akkor $n - 1$-re is.* Legyen $x_1, \dots, x_{n-1}$ adott, $A = \frac{x_1 + \dots + x_{n-1}}{n - 1}$, és vegyük hozzá $x_n = A$-t. Ekkor az $n$ pont átlaga is $A$, így az $n$ tagú egyenlőtlenség szerint
$$f(A) \le \frac{f(x_1) + \dots + f(x_{n-1}) + f(A)}{n} \implies (n - 1)f(A) \le f(x_1) + \dots + f(x_{n-1}).$$
Mivel minden $n$-hez van nála nagyobb $2^k$, és onnan lépésenként visszafelé haladhatunk, az állítás minden $n$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Cauchy-féle indukció.**

*A módszer.* Ha egy állítás (1) igaz $2^k$-ra minden $k$-ra („előre”: duplázással), és (2) $n$-ről $n - 1$-re öröklődik („hátra”), akkor minden $n$-re igaz. Cauchy ezzel bizonyította a számtani–mértani közép egyenlőtlenséget; a Jensen-egyenlőtlenség ennek általánosítása.

*A „visszafelé” lépés trükkje.* Egy új pontot adunk hozzá, amely éppen a többi átlaga — így az átlag nem változik, és az egyenlőtlenségből a hozzáadott tag „kiejthető”.

*A két bizonyítás összevetése.* A súlyozott Jensen-egyenlőtlenség közvetlen indukciója (8. feladatlap) a súlyok újranormálásával dolgozik; a Cauchy-indukció csak a felezést ($\lambda = \frac12$) használja. Ezért a Cauchy-féle bizonyítás azt is mutatja: ha egy **folytonos** függvényre csak a $f\left(\frac{x + y}{2}\right) \le \frac{f(x) + f(y)}{2}$ (középponti konvexitás) teljesül, akkor minden racionális $\lambda$-ra, és a folytonosság miatt minden valós $\lambda$-ra is konvex.

*Alkalmazás.* $f(x) = -\ln x$ (konvex) választással a számtani–mértani közép egyenlőtlenséget kapjuk: $\ln\frac{\sum x_i}{n} \ge \frac{\sum\ln x_i}{n} = \ln\sqrt[n]{x_1\cdots x_n}$.
:::

## K80. feladat

Bizonyítsuk be a Jensen-egyenlőtlenség segítségével, hogy pozitív $a_1, \dots, a_n$ számokra
$$\frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}} \le \frac{a_1 + \dots + a_n}{n},$$
és vezessük le, hogy $(a_1 + \dots + a_n)\left(\frac{1}{a_1} + \dots + \frac{1}{a_n}\right) \ge n^2$.

**Megoldás.**

A K78. a) szerint $f(x) = \frac1x$ konvex $(0, \infty)$-en. A Jensen-egyenlőtlenség az $\frac1n$ súlyokkal:
$$\frac{1}{\frac{a_1 + \dots + a_n}{n}} \le \frac{\frac{1}{a_1} + \dots + \frac{1}{a_n}}{n}.$$
Mindkét oldal pozitív; reciprokot véve (ami megfordítja az egyenlőtlenséget):
$$\frac{a_1 + \dots + a_n}{n} \ge \frac{n}{\frac{1}{a_1} + \dots + \frac1{a_n}}.$$
Ezt átrendezve (a két pozitív mennyiség szorzatára) $(a_1 + \dots + a_n)\left(\frac{1}{a_1} + \dots + \frac{1}{a_n}\right) \ge n^2$. Egyenlőség pontosan akkor, ha minden $a_i$ egyenlő (a szigorú konvexitás miatt). $\blacksquare$

::: elmelet
**Elméleti háttér — a harmonikus közép és a közepek láncolata.**

*Harmonikus közép.* $H = \frac{n}{\sum 1/a_i}$ a reciprokok számtani közepének reciproka. Alkalmazása: ha egy utat egyenlő hosszú szakaszokban $v_1, \dots, v_n$ sebességgel teszünk meg, az átlagsebesség a sebességek harmonikus közepe.

*A közepek láncolata.* Pozitív számokra
$$\min a_i \le H \le G \le A \le Q \le \max a_i,$$
ahol $G$ a mértani, $A$ a számtani, $Q$ a négyzetes közép; mindegyik egyenlőség pontosan akkor áll, ha minden szám egyenlő. Mindegyik egyenlőtlenség a Jensen-egyenlőtlenségből jön egy alkalmas konvex függvénnyel ($\frac1x$, $-\ln x$, $x^2$).

*Cauchy–Schwarz.* A második egyenlőtlenség a Cauchy–Schwarz-egyenlőtlenség, $\left(\sum u_iv_i\right)^2 \le \sum u_i^2\sum v_i^2$, speciális esete $u_i = \sqrt{a_i}$, $v_i = \frac{1}{\sqrt{a_i}}$ választással.
:::

## K81. feladat

Legyen $f$ konvex az $(a, b)$ intervallumon, és $c \in (a, b)$ lokális maximumhelye $f$-nek. Mutassuk meg, hogy $f$ konstans $c$ egy környezetében. Lehet-e $c$ szigorú lokális maximumhely?

**Megoldás.**

Mivel $c$ lokális maximumhely, van $\delta > 0$, hogy $(c - \delta, c + \delta) \subseteq (a, b)$, és ott $f(x) \le f(c)$. Legyen $0 < h < \delta$. A konvexitás szerint ($c$ a $c - h$ és $c + h$ felezőpontja)
$$f(c) \le \frac{f(c - h) + f(c + h)}{2} \le \frac{f(c) + f(c)}{2} = f(c).$$
Tehát mindenhol egyenlőség áll, és $f(c - h) + f(c + h) = 2f(c)$, ahol mindkét tag legfeljebb $f(c)$: így $f(c - h) = f(c + h) = f(c)$. Mivel ez minden $0 < h < \delta$-ra igaz, $f$ konstans a $(c - \delta, c + \delta)$-n. $\blacksquare$

Szigorú lokális maximumhely tehát **nem lehet** (konvex függvénynek egy belső pontban): ott a környező pontokban $f$ egyenlő volna $f(c)$-vel.

(Globálisan nem kell konstansnak lennie: $\max\{0, x\}$ konvex a $(-1, 1)$-en, és a $-\frac12$ lokális maximumhelye, de a $(0, 1)$-en nem konstans.)

::: elmelet
**Elméleti háttér — konvex függvények szélsőértékei.**

*Minimum.* Konvex függvény **lokális minimuma globális minimum**: ha $c$ lokális minimumhely és $x$ tetszőleges, a $c$ és $x$ közötti húr a $c$ közelében $f$ fölött van, ami csak akkor lehetséges, ha $f(x) \ge f(c)$. Szigorúan konvex függvény minimumhelye (ha van) egyértelmű. Ezért konvex optimalizálásnál nincs „csapda” lokális minimum.

*Maximum.* Konvex függvény belsejében nem lehet szigorú maximum, és ha van lokális maximum, a függvény ott „lapos”. Egy korlátos zárt intervallumon a konvex függvény maximuma mindig valamelyik **végpontban** vétetik fel: $f(\lambda a + (1 - \lambda)b) \le \max\{f(a), f(b)\}$.

*A felezőponti egyenlőtlenség ereje.* A bizonyítás csak a $\lambda = \frac12$ esetet használta: $f(c) \le \frac{f(c - h) + f(c + h)}{2}$. Ez a „középponti konvexitás” a második differenciahányadosra vonatkozó $f(c - h) - 2f(c) + f(c + h) \ge 0$ feltétel, amelynek határértéke (ha létezik) $h^2f''(c)$ — innen a $f'' \ge 0$ jellemzés.
:::

## K82. feladat

Bizonyítsuk be a különbségi hányados módszerével, hogy a) $x\sqrt{x}$ szigorúan konvex $[0, \infty)$-en; b) $\frac{1}{\sqrt x}$ szigorúan konvex $(0, \infty)$-en.

**Megoldás.**

a) Legyen $u = \sqrt x$, $v = \sqrt a$ ($u \ne v$, $u, v \ge 0$). Ekkor
$$m_a(x) = \frac{u^3 - v^3}{u^2 - v^2} = \frac{u^2 + uv + v^2}{u + v} = u + \frac{v^2}{u + v}.$$
Rögzített $v$-re ez $u$-ban szigorúan nő: ha $0 \le u_1 < u_2$, akkor
$$\left(u_2 + \frac{v^2}{u_2 + v}\right) - \left(u_1 + \frac{v^2}{u_1 + v}\right) = (u_2 - u_1)\left(1 - \frac{v^2}{(u_1 + v)(u_2 + v)}\right) > 0,$$
mert $(u_1 + v)(u_2 + v) > v^2$ ($u_2 > 0$). Mivel $u = \sqrt x$ szigorúan nő $x$-ben, $m_a$ szigorúan nő: $x\sqrt x$ szigorúan konvex.

b) $a, x > 0$-ra
$$m_a(x) = \frac{\frac{1}{\sqrt x} - \frac{1}{\sqrt a}}{x - a} = \frac{\sqrt a - \sqrt x}{\sqrt{ax}\,(x - a)} = -\frac{1}{\sqrt{ax}\,(\sqrt x + \sqrt a)},$$
ahol a nevező $x$-ben szigorúan nő, így a negatív előjelű tört szigorúan nő: $\frac{1}{\sqrt x}$ szigorúan konvex. $\blacksquare$

::: elmelet
**Elméleti háttér — hatványfüggvények konvexitása.**

*Az $x^\alpha$ függvény a $(0, \infty)$-en:* $\alpha > 1$ vagy $\alpha < 0$ esetén szigorúan konvex, $0 < \alpha < 1$ esetén szigorúan konkáv, $\alpha \in \{0, 1\}$ esetén lineáris. A feladat az $\alpha = \frac32$ és $\alpha = -\frac12$ esetet mutatja, a 8. feladatlap 78., 82. feladata az $\alpha = k$ és $\alpha = \frac1k$ esetet.

*A helyettesítés technikája.* Tört kitevőnél a $u = \sqrt[k]{x}$ helyettesítés a húr meredekségét $\frac{u^m - v^m}{u^k - v^k}$ alakra hozza, ami polinomosztással egyszerűsíthető; a monotonitást a $\frac{\text{polinom}}{\text{polinom}}$ kifejezés vizsgálata adja.

*Alkalmazás: hatványközepek.* Az $x^\alpha$ konvexitásából a Jensen-egyenlőtlenség adja a hatványközepek közötti egyenlőtlenséget: $M_r \le M_s$, ha $r < s$. A $\frac{1}{\sqrt x}$ konvexitása például azt adja, hogy $\frac{1}{\sqrt{\text{átlag}}} \le \text{átlag}\left(\frac{1}{\sqrt{\cdot}}\right)$.
:::

## K83. feladat

Adott $\varepsilon > 0$-hoz alkalmas $\delta$-t keresve határozzuk meg a határértékeket:

a) $\lim\limits_{x \to 3}(x^2 - 2x)$; b) $\lim\limits_{x \to 1}\frac{1}{x + 1}$; c) $\lim\limits_{x \to 4}\sqrt x$; d) $\lim\limits_{x \to 2}\frac{x^2 - 4}{x^2 - 3x + 2}$; e) $\lim\limits_{x \to 0}x^2\left[\frac1x\right]$; f) $\lim\limits_{x \to 0}x\sin\frac1x$.

**Megoldás.**

a) Határérték $3$. $|x^2 - 2x - 3| = |x - 3|\,|x + 1|$; ha $|x - 3| < 1$, akkor $|x + 1| < 5$. **$\delta = \min\{1, \frac\varepsilon5\}$.**

b) Határérték $\frac12$. $\left|\frac{1}{x + 1} - \frac12\right| = \frac{|1 - x|}{2|x + 1|}$; ha $|x - 1| < 1$, akkor $x + 1 > 1$, így a kifejezés $< \frac{|x - 1|}{2}$. **$\delta = \min\{1, 2\varepsilon\}$.**

c) Határérték $2$. $|\sqrt x - 2| = \frac{|x - 4|}{\sqrt x + 2} \le \frac{|x - 4|}{2}$ ($x \ge 0$). **$\delta = \min\{4, 2\varepsilon\}$.**

d) $x \ne 1, 2$-re $\frac{(x - 2)(x + 2)}{(x - 1)(x - 2)} = \frac{x + 2}{x - 1}$, határérték $4$. $\left|\frac{x + 2}{x - 1} - 4\right| = \frac{3|x - 2|}{|x - 1|}$; ha $|x - 2| < \frac12$, akkor $|x - 1| > \frac12$, így $< 6|x - 2|$. **$\delta = \min\{\frac12, \frac\varepsilon6\}$.**

e) Határérték $0$. $x^2[\frac1x] = x - x^2\{\frac1x\}$, így $|x^2[\frac1x]| \le |x| + x^2 \le 2|x|$, ha $|x| \le 1$. **$\delta = \min\{1, \frac\varepsilon2\}$.**

f) Határérték $0$. $|x\sin\frac1x| \le |x|$. **$\delta = \varepsilon$.**

::: elmelet
**Elméleti háttér — az $\varepsilon$–$\delta$ technika összefoglalva.**

*A definíció.* $\lim_{x\to a}f(x) = b$, ha $\forall\varepsilon > 0\ \exists\delta > 0$: $0 < |x - a| < \delta$, $x \in D(f)$ esetén $|f(x) - b| < \varepsilon$.

*A recept.* (1) $|f(x) - b|$-ből emeljük ki $|x - a|$-t (polinomoknál mindig lehet: $f(x) - f(a)$ osztható $x - a$-val). (2) **Lokalizáljunk**: kössük ki, hogy $|x - a| < r$, és ezen becsüljük a maradék tényezőt egy $C$ konstanssal (törtnél a nevezőt alulról). (3) $\delta = \min\{r, \frac\varepsilon C\}$.

*Korlátos szor nullába tartó.* Az e)–f) részekben egy korlátos tényező ($\{\frac1x\}$, $\sin\frac1x$) szorzódik egy $0$-hoz tartóval; a határérték $0$, és a $\delta$ a nullába tartó tényező becsléséből jön. Figyelem: $\sin\frac1x$-nek a $0$-ban nincs határértéke, a szorzatnak mégis van.

*Egyszerűsítés.* A d) részben a $\frac00$ alakot a közös $(x - 2)$ tényezővel egyszerűsítve oldjuk fel; ez megengedett, mert a határérték csak a pont *környezetétől* függ, és ott $x \ne 2$.
:::

## K84. feladat

Mutassuk meg, hogy a) $\lim\limits_{x\to a}f(x) = b \iff \lim\limits_{h\to0}f(a + h) = b$; b) $\lim\limits_{x \to a}f(x) = b \iff \lim\limits_{x \to a}|f(x) - b| = 0$.

**Megoldás.**

a) A két definíció ugyanaz az $x = a + h$ helyettesítéssel: $0 < |x - a| < \delta \iff 0 < |h| < \delta$, és $f(x) = f(a + h)$. (A $D(f)$-re vonatkozó feltételek is megfelelnek egymásnak: $a + h \in D(f) \iff x \in D(f)$.)

b) $\lim_{x\to a}|f(x) - b| = 0$ definíciója: $\forall\varepsilon\ \exists\delta: 0 < |x - a| < \delta \Rightarrow \big||f(x) - b| - 0\big| < \varepsilon$, azaz $|f(x) - b| < \varepsilon$ — szó szerint a $\lim_{x\to a}f(x) = b$ definíciója. $\blacksquare$

::: elmelet
**Elméleti háttér — eltolás és nullára redukálás.**

*Eltolás.* A határérték eltolásra invariáns: a $0$-beli határértékek vizsgálata az általános esetet is lefedi. Ezt használjuk a differenciálhányados definíciójában: $f'(a) = \lim_{h \to 0}\frac{f(a + h) - f(a)}{h}$.

*Redukció nullára.* Egy határérték mindig visszavezethető egy „nullába tartó” kifejezésre ($|f(x) - b| \to 0$). Ez a sorozatoknál is így van ($a_n \to a \iff |a_n - a| \to 0$), és a becslések (rendőrelv, „korlátos szor nullába tartó”) nullába tartó kifejezésekre a legkényelmesebbek.

*Kompozíció.* Az a) rész a kompozíció határértékéről szóló tétel speciális esete: ha $\varphi(h) = a + h$, akkor $\varphi(h) \to a$ és $\varphi(h) \ne a$ ($h \ne 0$), így $\lim_{h\to0}f(\varphi(h)) = \lim_{x\to a}f(x)$.
:::

## K85. feladat

Határozzuk meg a következő halmazok torlódási pontjait: a) $\mathbb{Z}$; b) $\{\frac1n + \frac1m : n, m \in \mathbb{N}\}$; c) $\{(-1)^n + \frac1n : n \in \mathbb{N}\}$; d) $\mathbb{Q} \cap [0, 1]$; e) $(0, 1) \cup \{2\}$.

**Megoldás.**

a) Nincs: minden $x$-nek van olyan pontozott környezete, amelyben nincs egész szám.

b) $\{0\} \cup \{\frac1n : n \in \mathbb{N}\}$. A $\frac1n$ torlódási pont, mert $\frac1n + \frac1m \to \frac1n$ ($m \to \infty$), és ezek az elemek különböznek $\frac1n$-től; a $0$ is ($n = m \to \infty$). Más torlódási pont nincs: tegyük fel, hogy különböző $\frac{1}{n_j} + \frac{1}{m_j}$ elemek ($n_j \le m_j$) egy $x$ ponthoz tartanak. Ha $(m_j)$ korlátos volna, $(n_j)$ is az, és csak véges sok különböző elem volna. Így egy részsorozatra $m_j \to \infty$. Ha ezen belül $(n_j)$ korlátos, egy további részsorozatra $n_j = n$ állandó, és az elemek $\frac1n$-hez tartanak; ha $n_j \to \infty$, akkor $0$-hoz. Tehát $x = \frac1n$ vagy $x = 0$.

c) $\{-1, 1\}$: a páros indexűek $1 + \frac1n \to 1$, a páratlanok $-1 + \frac1n \to -1$.

d) $[0, 1]$: minden $[0, 1]$-beli pont minden környezetében végtelen sok racionális szám van; a $[0, 1]$-en kívüli pontoknak van olyan környezete, amely nem metszi a halmazt.

e) $[0, 1]$; a $2$ izolált pont.

::: elmelet
**Elméleti háttér — torlódási pontok és izolált pontok.**

*Definíció.* $a$ torlódási pontja $H$-nak, ha minden pontozott környezete tartalmaz $H$-beli pontot (ekvivalensen végtelen sokat; ekvivalensen van $a$-hoz tartó, $H \setminus\{a\}$-beli sorozat). $H$ egy eleme izolált pont, ha nem torlódási pont.

*Sorozatok halmazai.* Ha $H = \{a_n\}$ egy sorozat tagjainak halmaza, a torlódási pontok „majdnem” a sorozat sűrűsödési értékei — azzal a különbséggel, hogy egy végtelen sokszor ismétlődő érték sűrűsödési érték, de nem feltétlenül torlódási pont (például az állandó sorozat).

*Kétindexes halmazok.* $\{f(n) + g(m)\}$ típusú halmazoknál a torlódási pontokat úgy kapjuk, hogy az egyik indexet rögzítjük, a másikat végtelenbe küldjük (és mindkettőt): így a b) részben a $\frac1n + 0$ és $0 + 0$ értékek jelennek meg.

*Zárt halmazok.* A halmaz és torlódási pontjainak uniója a **lezárt**; a halmaz zárt, ha tartalmazza torlódási pontjait. A d)–e) példák nem zártak (a lezártjuk $[0, 1]$, illetve $[0, 1] \cup \{2\}$).
:::

## K86. feladat

a) Mutassuk meg, hogy ha $\lim\limits_{x\to a}f(x) = b > 0$, akkor $a$-nak van olyan pontozott környezete, amelyben $f(x) > \frac b2$.

b) Mutassuk meg, hogy ha $a$ egy pontozott környezetében $f(x) \le g(x)$, és létezik $\lim_{x\to a}f(x) = b$ és $\lim_{x\to a}g(x) = c$, akkor $b \le c$. Következik-e szigorú egyenlőtlenségből szigorú egyenlőtlenség?

**Megoldás.**

a) $\varepsilon = \frac b2$-höz van $\delta$, hogy $0 < |x - a| < \delta$ esetén $|f(x) - b| < \frac b2$, így $f(x) > b - \frac b2 = \frac b2$.

b) Ha $b > c$ volna, a 8. feladatlap 86. feladata szerint (a szerepeket cserélve) $a$ egy pontozott környezetében $g(x) < f(x)$ lenne, ellentmondásban a feltétellel (a két környezet metszete is pontozott környezet, és nem üres, mert $a$ torlódási pont). Tehát $b \le c$. $\blacksquare$

Szigorú egyenlőtlenség nem öröklődik: $f(x) = 0 < g(x) = x^2$ ($x \ne 0$), de $\lim_{x\to0}f = \lim_{x\to0}g = 0$.

::: elmelet
**Elméleti háttér — határérték és rendezés.**

*Előjeltartás.* Ha a határérték pozitív, a függvény a pont egy környezetében pozitív (sőt a határérték felénél nagyobb). Ezt használjuk például a hányados határértékénél (a nevező $c \ne 0$ határértéke miatt a nevező a pont közelében nem $0$, sőt $|g(x)| > \frac{|c|}{2}$), és a Bolzano-tétel bizonyításában.

*Egyenlőtlenség határátmenetben.* Gyenge egyenlőtlenség ($\le$) megmarad, szigorú ($<$) nem — ugyanúgy, mint sorozatoknál ($\frac1n > 0$, de a határérték $0$). Ezért egy határértékre csak $\ge 0$-t következtethetünk pozitív függvényből.

*Rendőrelv.* Ha egy pontozott környezetben $f \le h \le g$, és $\lim f = \lim g = b$, akkor $\lim h = b$. A b) rész ennek „fél” változata, és a rendőrelv ebből a $h$ határértékének létezésével együtt következik.
:::

## K87. feladat

Legyen $f(x) = x$, ha $x \in \mathbb{Q}$, és $f(x) = -x$, ha $x \notin \mathbb{Q}$. Hol folytonos $f$? Hol van határértéke? Van-e lokális szélsőértéke? Mi az $f \circ f$ függvény?

**Megoldás.**

*Határérték és folytonosság.* Az $a$ pontban racionális sorozat mentén $f(x_n) = x_n \to a$, irracionális mentén $f(y_n) = -y_n \to -a$. Ha $a \ne 0$, ezek különböznek, így $\lim_{x \to a}f(x)$ nem létezik, és $f$ nem folytonos. Az $a = 0$-ban $|f(x)| = |x|$, így $\lim_{x\to0}f(x) = 0 = f(0)$: **$f$ csak a $0$-ban folytonos** ($\delta = \varepsilon$).

*Szélsőérték.* A $0$-ban nincs lokális szélsőérték: minden környezetében van pozitív (pozitív racionális $x$) és negatív (pozitív irracionális $x$, ahol $f(x) = -x < 0$) érték. Más $a$-ban sem: $a > 0$ racionálisra a közeli nagyobb racionálisok nagyobb, a közeli irracionálisok negatív értéket adnak; hasonlóan a többi esetben. **Nincs lokális szélsőértéke.**

*$f \circ f$:* ha $x \in \mathbb{Q}$, akkor $f(x) = x \in \mathbb{Q}$, és $f(f(x)) = x$; ha $x \notin \mathbb{Q}$, akkor $f(x) = -x \notin \mathbb Q$, és $f(f(x)) = -(-x) = x$. Tehát **$f \circ f = \mathrm{id}$**: $f$ önmaga inverze, bijekció $\mathbb{R}$-en.

::: elmelet
**Elméleti háttér — Dirichlet-típusú függvények.**

*Folytonossági pontok.* Ha $f = g$ a racionálisokon és $f = h$ az irracionálisokon ($g$, $h$ folytonos), akkor $f$ pontosan a $g(a) = h(a)$ egyenlet megoldásaiban folytonos. Itt $a = -a \iff a = 0$. Az átviteli elv a két sűrű halmazból vett sorozatokkal dönti el ezt.

*Involúció.* $f \circ f = \mathrm{id}$, tehát $f$ bijekció, amely egyetlen pont kivételével mindenhol szakad. Ez mutatja, hogy egy bijekció inverze lehet „csúnya” — folytonos szigorúan monoton függvények inverze viszont mindig folytonos.

*Monotonitás.* $f$ semmilyen intervallumon nem monoton (minden intervallumban vannak racionális és irracionális pontok, amelyek felváltva „fel-le” ugráltatják az értékeket). Ez összhangban van azzal, hogy egy monoton függvénynek csak megszámlálhatóan sok szakadási pontja lehet.
:::

# A 9. feladatlaphoz

## K88. feladat

Definiáljuk a következő határértékeket, és adjunk mindegyikre példát: a) $\lim\limits_{x\to a+0}f(x) = +\infty$; b) $\lim\limits_{x\to+\infty}f(x) = -\infty$; c) $\lim\limits_{x\to-\infty}f(x) = -\infty$.

**Megoldás.**

a) $a$ jobb oldali torlódási pontja $D(f)$-nek, és $\forall P\ \exists\delta > 0\ \forall x \in D(f),\ a < x < a + \delta: f(x) > P$. *Példa:* $\frac{1}{x - a}$.

b) $D(f)$ felülről nem korlátos, és $\forall P\ \exists K\ \forall x \in D(f),\ x > K: f(x) < P$. *Példa:* $-x$, vagy $\sqrt x - x$.

c) $D(f)$ alulról nem korlátos, és $\forall P\ \exists K\ \forall x \in D(f),\ x < K: f(x) < P$. *Példa:* $x$, vagy $x^3$.

::: elmelet
**Elméleti háttér — a környezetes séma.**

*Egységes definíció.* $\lim_{x\to\alpha}f(x) = \beta$, ha $\beta$ minden $V$ környezetéhez $\alpha$-nak van olyan $\dot U$ pontozott (egyoldali esetben fél-) környezete, hogy $f(\dot U \cap D(f)) \subseteq V$. A végtelen környezetei: $(K, \infty)$, illetve $(-\infty, K)$; a $P$ és $K$ betűk a $V$, illetve $\dot U$ szerepét játsszák.

*Tizenöt eset.* $\alpha \in \{a, a - 0, a + 0, +\infty, -\infty\}$ és $\beta \in \{b, +\infty, -\infty\}$: $15$ definíció, egyetlen sémából.

*Átfogalmazások.* $\lim_{x\to+\infty}f(x) = \lim_{t \to 0+0}f\left(\frac1t\right)$; $\lim_{x\to-\infty}f(x) = \lim_{x\to+\infty}f(-x)$. Így a végtelenbeli határértékek véges pontbeli határértékekre vezethetők vissza.

*Aszimptoták.* A függőleges aszimptota ($x = a$) egy egyoldali végtelen határértéket jelent (a) rész), a vízszintes ($y = b$) a végtelenbeli véges határértéket.
:::

## K89. feladat

Mondjuk ki a) $\lim\limits_{x\to+\infty}f(x) = b$ és b) $\lim\limits_{x \to a+0}f(x) = -\infty$ tagadását, valamint sorozatos átfogalmazásukat.

**Megoldás.**

a) Tagadás: $\exists\varepsilon > 0\ \forall K\ \exists x \in D(f),\ x > K: |f(x) - b| \ge \varepsilon$. Sorozatokkal: van olyan $x_n \to +\infty$, $x_n \in D(f)$ sorozat, amelyre $|f(x_n) - b| \ge \varepsilon$ minden $n$-re (így $f(x_n) \not\to b$).

b) Tagadás: $\exists P\ \forall\delta > 0\ \exists x \in D(f),\ a < x < a + \delta: f(x) \ge P$. Sorozatokkal: van olyan $x_n \to a$, $x_n > a$, $x_n \in D(f)$ sorozat, amelyre $f(x_n) \ge P$ minden $n$-re.

::: elmelet
**Elméleti háttér — tagadás és átviteli elv.**

*A tagadás sémája.* $\forall V\ \exists \dot U\ \forall x \in \dot U$ tagadása $\exists V\ \forall\dot U\ \exists x \in \dot U$: „van egy környezet, amelyből a függvényértékek minden pontozott környezetben kilógnak”.

*Sorozatos alak.* A „$\forall\dot U\ \exists x$” rész a $\frac1n$ sugarú (illetve $(n, \infty)$) környezetekre alkalmazva egy $x_n \to \alpha$ sorozatot ad, amelyre $f(x_n) \notin V$. Ez az **átviteli elv** bizonyításának kulcslépése, és egyben a határérték nemlétezésének legkényelmesebb igazolási módja.

*Példa.* $\sin x$-nek nincs határértéke $+\infty$-ben: $x_n = 2n\pi$ mentén $0$, $y_n = 2n\pi + \frac\pi2$ mentén $1$. Bármely $b$-re legalább az egyik sorozat legalább $\frac12$ távolságra marad $b$-től.
:::

## K90. feladat

Határozzuk meg: a) $\lim\limits_{x\to0}\frac{(1 + x)^4 - (1 + 4x)}{x^2 - x^3}$; b) $\lim\limits_{x\to\infty}\frac{2x^5 - x + 1}{3x^5 + x^2}$; c) $\lim\limits_{x\to-\infty}\frac{x}{\sqrt{x^2 + 1}}$; d) $\lim\limits_{x\to2}\frac{x^3 - 8}{x^2 - 4}$.

**Megoldás.**

a) $(1 + x)^4 - (1 + 4x) = 6x^2 + 4x^3 + x^4$; $x^2$-tel egyszerűsítve $\frac{6 + 4x + x^2}{1 - x} \to 6$.

b) $x^5$-nel osztva: $\frac{2 - x^{-4} + x^{-5}}{3 + x^{-3}} \to \frac23$.

c) $x < 0$-ra $\sqrt{x^2 + 1} = |x|\sqrt{1 + x^{-2}} = -x\sqrt{1 + x^{-2}}$, így $\frac{x}{\sqrt{x^2 + 1}} = \frac{-1}{\sqrt{1 + x^{-2}}} \to -1$.

d) $\frac{(x - 2)(x^2 + 2x + 4)}{(x - 2)(x + 2)} = \frac{x^2 + 2x + 4}{x + 2} \to \frac{12}{4} = 3$.

::: elmelet
**Elméleti háttér — racionális és gyökös kifejezések határértéke.**

*$\frac00$ alak egy véges pontban.* A számláló és a nevező közös gyöktényezőjét ($x - a$) egyszerűsítjük. A gyöktényező leválasztása: polinomosztás, Horner-elrendezés, nevezetes azonosságok ($x^3 - a^3 = (x - a)(x^2 + ax + a^2)$). A binomiális tétel ($(1 + x)^n = 1 + nx + \binom n2x^2 + \dots$) a $0$ körüli kifejtést adja.

*$\frac\infty\infty$ a végtelenben.* Osztás a nevező legmagasabb fokú tagjával; azonos fokszámnál a határérték a főegyütthatók hányadosa.

*$\sqrt{x^2} = |x|$.* A $-\infty$-ben $|x| = -x$, ezért a c) rész határértéke $-1$, míg a $+\infty$-ben $+1$. Ez a leggyakoribb hiba a gyökös határértékeknél.

*Derivált-szemlélet.* $\lim_{x\to2}\frac{x^3 - 8}{x^2 - 4} = \frac{(x^3)'|_{x=2}}{(x^2)'|_{x=2}} = \frac{12}{4}$ — a L'Hospital-szabály előfutára; az a) részben a $x^2$ együtthatója a $(1 + x)^4$ második deriváltjának fele a $0$-ban.
:::

## K91. feladat

Bizonyítsuk be, hogy ha egy $H \subseteq \mathbb R$ halmaz minden pontja izolált pontja $H$-nak, akkor $H$ megszámlálható. Adjunk példát végtelen ilyen halmazra.

**Megoldás.**

Minden $h \in H$-hoz van olyan $\delta_h > 0$, hogy $(h - \delta_h, h + \delta_h) \cap H = \{h\}$. Válasszunk racionális végpontú $(p_h, q_h)$ intervallumot, amelyre $h \in (p_h, q_h) \subseteq (h - \delta_h, h + \delta_h)$. Ha $h \ne h'$, akkor $(p_h, q_h) \ne (p_{h'}, q_{h'})$, mert a $(p_h, q_h)$ intervallum $H$-ból csak a $h$-t tartalmazza. Az $h \mapsto (p_h, q_h)$ tehát injekció $\mathbb{Q}^2$-be, így $H$ megszámlálható. $\blacksquare$

*Példák:* $\mathbb{Z}$, $\{\frac1n : n \in \mathbb{N}\}$ (minden eleme izolált, bár a $0$ torlódási pont — de nem eleme).

::: elmelet
**Elméleti háttér — diszkrét halmazok és megszámlálhatóság.**

*Diszkrét halmaz.* Ha egy halmaz minden pontja izolált, a halmaz **diszkrét**. A tétel szerint $\mathbb{R}$-ben minden diszkrét halmaz megszámlálható. (Általánosabban: egy szeparábilis metrikus tér — amelyben van megszámlálható sűrű halmaz — minden diszkrét részhalmaza megszámlálható.)

*Kapcsolat a 91. feladattal.* Ott egy korlátos halmaznak egyetlen torlódási pontja volt; azon kívül minden pont izolált, és ezért a halmaz megszámlálható. Mindkét érvelés lényege: az izolált pontokhoz diszjunkt (vagy legalább különböző) racionális „tanúk” rendelhetők.

*Nem megszámlálható halmazok.* A tétel kontrapozíciója: minden nem megszámlálható $H \subseteq \mathbb R$ halmaznak van olyan eleme, amely $H$ torlódási pontja — sőt, „szinte minden” eleme ilyen (a kondenzációs pontok tétele).
:::

## K92. feladat

a) Bizonyítsuk be, hogy ha $f : \mathbb{R} \to \mathbb{R}$ periodikus, és létezik a $\lim_{x\to\infty}f(x) = b$ véges határérték, akkor $f \equiv b$.

b) Bizonyítsuk be, hogy ha $f : (0, \infty) \to \mathbb{R}$, $f(2x) = f(x)$ minden $x$-re, és $\lim_{x\to0+0}f(x) = b$, akkor $f \equiv b$.

**Megoldás.**

a) Legyen $p > 0$ periódus és $x$ tetszőleges. Az $x_n = x + np \to \infty$ sorozatra az átviteli elv szerint $f(x_n) \to b$, de $f(x_n) = f(x)$ minden $n$-re. Tehát $f(x) = b$.

b) Legyen $x > 0$ tetszőleges. Indukcióval $f\left(\frac{x}{2^n}\right) = f(x)$ (mert $f(y) = f(2y)$ az $y = \frac{x}{2^{n}}$-re). Az $\frac{x}{2^n} \to 0+0$ sorozatra az átviteli elv szerint $f\left(\frac{x}{2^n}\right) \to b$, tehát $f(x) = b$. $\blacksquare$

::: elmelet
**Elméleti háttér — függvényegyenletek és az átviteli elv.**

*A módszer.* Ha egy függvényegyenlet (periodicitás, $f(2x) = f(x)$, stb.) egy pont értékét egy sorozat mentén „szállítja” egy olyan helyre, ahol a határérték ismert, az átviteli elv rögzíti a pont értékét.

*Ellenpéldák a feltételek nélkül.* Határérték nélkül az ilyen függvények lehetnek nem konstansok: $\sin x$ periodikus; $f(x) = \sin(2\pi\log_2 x)$ kielégíti az $f(2x) = f(x)$ egyenletet (mert $\log_2 2x = 1 + \log_2 x$), és nem konstans — de a $0$-ban nincs határértéke.

*Folytonosság a $0$-ban.* Ha a b) részben $f$ a $[0, \infty)$-en értelmezett és a $0$-ban folytonos, akkor $f \equiv f(0)$. A folytonosság (vagy a határérték létezése) a „végtelen sok lépés” utáni értéket köti a kiindulóhoz.

*Kapcsolat.* A Cauchy-egyenlet ($f(x + y) = f(x) + f(y)$) folytonos megoldásainak meghatározása (K101) ugyanígy működik: a racionális pontokon az egyenletből, máshol a folytonosságból (sorozatokkal) kapjuk az értéket.
:::

## K93. feladat

Határozzuk meg: a) $\lim\limits_{x\to1}\frac{\sqrt[3]{x} - 1}{\sqrt[4]{x} - 1}$; b) $\lim\limits_{x\to0}\frac{\sqrt{1 + x} - 1}{x}$.

**Megoldás.**

a) Legyen $t = \sqrt[12]{x}$ ($x > 0$); ekkor $\sqrt[3]x = t^4$, $\sqrt[4]x = t^3$, és $x \to 1$, $x \ne 1$ esetén $t \to 1$, $t \ne 1$. Így
$$\frac{t^4 - 1}{t^3 - 1} = \frac{(t - 1)(t^3 + t^2 + t + 1)}{(t - 1)(t^2 + t + 1)} = \frac{t^3 + t^2 + t + 1}{t^2 + t + 1} \to \frac43.$$

b) Gyöktelenítve: $\frac{\sqrt{1 + x} - 1}{x} = \frac{(1 + x) - 1}{x(\sqrt{1 + x} + 1)} = \frac{1}{\sqrt{1 + x} + 1} \to \frac12$.

::: elmelet
**Elméleti háttér — helyettesítés és gyöktelenítés határértékben.**

*Helyettesítés.* Ha $t = \varphi(x)$ folytonos, injektív, és $x \to a$ esetén $t \to b$, $t \ne b$, akkor $\lim_{x\to a}g(\varphi(x)) = \lim_{t\to b}g(t)$. A gyökkitevők legkisebb közös többszöröse ($\operatorname{lkkt}(3, 4) = 12$) a gyököket egész hatványokká teszi.

*A $\frac{t^m - 1}{t^n - 1} \to \frac mn$ ($t \to 1$) szabály.* Általánosan $\lim_{x\to1}\frac{x^r - 1}{x^s - 1} = \frac rs$ minden racionális (sőt valós) $r, s \ne 0$-ra. Itt $r = \frac13$, $s = \frac14$: $\frac{1/3}{1/4} = \frac43$.

*Derivált-szemlélet.* A b) rész a $\sqrt x$ függvény deriváltja az $1$-ben: $\lim_{h\to0}\frac{\sqrt{1 + h} - 1}{h} = \frac{1}{2\sqrt1} = \frac12$. A differenciálhányadosok éppen ilyen „$\frac00$ típusú” határértékek, és a gyöktelenítés az elemi kiszámításuk eszköze.
:::

## K94. feladat

Hol folytonosak? a) a Dirichlet-függvény; b) $f(x) = x^2$, ha $x \in \mathbb{Q}$, és $f(x) = 2x - 1$, ha $x \notin \mathbb{Q}$; c) $g(x) = x[x]$.

**Megoldás.**

a) **Sehol.** Bármely $a$-ban racionális sorozat mentén $D \to 1$, irracionális mentén $D \to 0$, így nincs határérték.

b) **Csak az $x = 1$-ben.** Racionális sorozat mentén $f \to a^2$, irracionális mentén $f \to 2a - 1$; a kettő pontosan akkor egyezik, ha $a^2 - 2a + 1 = (a - 1)^2 = 0$, azaz $a = 1$. Ott $f(1) = 1$, és $|f(x) - 1| \le \max\{|x^2 - 1|, |2x - 2|\} = |x - 1|\max\{|x + 1|, 2\} \le 3|x - 1|$, ha $|x - 1| < 1$; tehát $\delta = \min\{1, \frac\varepsilon3\}$.

c) **A nem nulla egész helyeken nem folytonos, máshol igen.** Nem egész $x_0$ egy környezetében $[x]$ állandó, így $g(x) = cx$ folytonos. A $0$-ban: $[0, 1)$-en $g = 0$, $[-1, 0)$-on $g = -x$, mindkettő $0$-hoz tart, és $g(0) = 0$: folytonos. Egy $n \ne 0$ egészben a bal oldali határérték $n(n - 1)$, a jobb oldali $n \cdot n$, és $n^2 \ne n(n - 1)$ ($n \ne 0$): ugrás.

::: elmelet
**Elméleti háttér — folytonossági pontok meghatározása.**

*Sűrű halmazokon különböző képletek.* Ha $f = g$ a racionálisokon és $f = h$ az irracionálisokon ($g$, $h$ folytonos), akkor $f$ folytonossági pontjai pontosan a $g = h$ egyenlet megoldásai. Az indok az átviteli elv: minden pont racionális és irracionális sorozatok határértéke is.

*Egészrészes függvények.* A $[\varphi(x)]$ tényező ott lokálisan konstans, ahol $\varphi(x_0)$ nem egész; szakadás csak az „egész értékű” helyeken lehet. Ott a két egyoldali határértéket külön számoljuk, és összevetjük; ha a „rossz” tényező szorzója $0$ (mint $x[x]$-ben a $0$-ban), a szakadás eltűnhet.

*Folytonossági pontok halmaza.* Bármely függvény folytonossági pontjainak halmaza $G_\delta$ (megszámlálható sok nyílt halmaz metszete); így lehet $\emptyset$ (Dirichlet), egyetlen pont (b), megszámlálható sok pont elhagyásával kapott halmaz (c), vagy az irracionálisak halmaza (Riemann-függvény) — de nem lehet pontosan $\mathbb Q$.
:::

## K95. feladat

Létezik-e a) $\lim\limits_{x\to0}\frac{R(x)}{\sqrt{|x|}}$, b) $\lim\limits_{x\to0}\frac{R(x)}{x^2}$? ($R$ a Riemann-függvény.)

**Megoldás.**

a) **Létezik, és $0$.** Ha $x$ irracionális, a hányados $0$. Ha $x = \frac pq \ne 0$ egyszerűsített tört, akkor $\frac{R(x)}{\sqrt{|x|}} = \frac{1/q}{\sqrt{|p|/q}} = \frac{1}{\sqrt{|p|\,q}} \le \frac{1}{\sqrt q}$. Adott $\varepsilon$-hoz a $(-1, 1)$-ben csak véges sok $\frac{1}{\varepsilon^2}$-nél nem nagyobb nevezőjű nem nulla tört van; $\delta$-t ezeknek a $0$-tól vett távolságánál kisebbre választva, $0 < |x| < \delta$ esetén vagy $x$ irracionális, vagy a nevezője $q > \frac{1}{\varepsilon^2}$, így a hányados $< \varepsilon$.

b) **Nem létezik.** Az $x_n = \frac1n$ sorozat mentén $\frac{R(x_n)}{x_n^2} = \frac{1/n}{1/n^2} = n \to \infty$, az $y_n = \frac{\sqrt2}{n}$ (irracionális) sorozat mentén $0 \to 0$.

::: elmelet
**Elméleti háttér — milyen gyorsan tart a Riemann-függvény a $0$-hoz?**

*A kulcs.* A $0$ közelében a racionális $x = \frac pq$ pontokban $R(x) = \frac1q$, és $|x| \ge \frac1q$ (ha $p \ne 0$). Tehát $R(x) \le |x|$ — a „legrosszabb” pontok az $\frac1n$ alakúak, ahol egyenlőség áll. Ezért:

- $\frac{R(x)}{|x|^\alpha} \to 0$, ha $\alpha < 1$ (a) rész, $\alpha = \frac12$);
- $\frac{R(x)}{|x|}$-nek nincs határértéke (9. feladatlap, 95. feladat: az $\frac1n$ pontokban $1$, az irracionálisakban $0$);
- $\frac{R(x)}{|x|^\alpha}$ nem korlátos, ha $\alpha > 1$ (b) rész).

*Nemlétezés.* Két, a $0$-hoz tartó sorozat különböző határértékkel (itt $\infty$ és $0$) elég. A b) részben a hányados még tágabb értelemben sem tart sehova.

*Kapcsolat a differenciálhatósággal.* Egy függvény a $0$-ban differenciálható $0$ deriválttal, ha $\frac{f(x) - f(0)}{x} \to 0$; az ilyen „hányados-határértékek” azt mérik, milyen „rendben” tart a függvény az értékéhez.
:::

## K96. feladat

A folytonosság definíciója alapján adjunk meg $\varepsilon > 0$-hoz alkalmas $\delta$-t: a) $\frac{2x - 1}{x + 1}$, $a = 1$; b) $\sqrt{x + 3}$, $a = 1$.

**Megoldás.**

a) $f(1) = \frac12$, és
$$\left|\frac{2x - 1}{x + 1} - \frac12\right| = \frac{|4x - 2 - x - 1|}{2|x + 1|} = \frac{3|x - 1|}{2|x + 1|}.$$
Ha $|x - 1| < 1$, akkor $x + 1 > 1$, így a kifejezés $< \frac32|x - 1|$. **$\delta = \min\{1, \frac{2\varepsilon}{3}\}$.**

b) $f(1) = 2$, és $x \ge -3$-ra
$$|\sqrt{x + 3} - 2| = \frac{|x - 1|}{\sqrt{x + 3} + 2} \le \frac{|x - 1|}{2}.$$
**$\delta = 2\varepsilon$** (minden $x \in D(f)$-re).

::: elmelet
**Elméleti háttér — folytonosság és Lipschitz-becslések.**

*Folytonosság.* $f$ folytonos $a$-ban, ha minden $\varepsilon$-hoz van $\delta$, hogy $|x - a| < \delta$, $x \in D(f)$ esetén $|f(x) - f(a)| < \varepsilon$. A gyakorlatban egy $|f(x) - f(a)| \le C|x - a|$ becslést keresünk az $a$ egy környezetében; ekkor $\delta = \min\{r, \frac\varepsilon C\}$.

*Lokális és globális becslés.* A b) részben a $C = \frac12$ becslés **minden** $x$-re érvényes (a nevező mindig legalább $2$), így nem kell lokalizálni. Az a) részben a nevező a $-1$ közelében elfajul, ezért egy környezetre kell szorítkozni.

*Folytonos függvények algebrája.* Mindkét függvény folytonossága a műveleti szabályokból is következik (racionális függvény a nevező zérushelyén kívül, illetve folytonos függvények kompozíciója). A $\delta$ kiszámítása a definíció „kvantitatív” megértését szolgálja.
:::

## K97. feladat

a) Legyen $f$ folytonos, $g$ nem folytonos az $a$ pontban. Mit mondhatunk $f \circ g$-ről és $g \circ f$-ről?

b) Következik-e $f^2$ folytonosságából $f$ folytonossága? És $f^3$ folytonosságából?

**Megoldás.**

a) **Semmi biztosat.** $f \circ g$: ha $f$ konstans, $f \circ g$ konstans, tehát folytonos; ha $f(x) = x$, akkor $f \circ g = g$ nem folytonos. $g \circ f$: ha $f(x) = x$ és $g = \operatorname{sgn}$, $a = 0$, akkor $g \circ f = \operatorname{sgn}$ nem folytonos a $0$-ban; ha $f \equiv 1$ (konstans), akkor $g \circ f \equiv g(1)$ folytonos.

b) **$f^2$-ből nem:** $f = 2D - 1$ ($1$ a racionálisokon, $-1$ az irracionálisakon) sehol sem folytonos, de $f^2 \equiv 1$. **$f^3$-ből igen:** $f = \sqrt[3]{f^3}$, és a köbgyökfüggvény folytonos $\mathbb{R}$-en, így folytonos függvények kompozíciójaként $f$ folytonos.

::: elmelet
**Elméleti háttér — kompozíció és folytonosság.**

*Tétel.* Ha $g$ folytonos $a$-ban és $f$ folytonos $g(a)$-ban, akkor $f \circ g$ folytonos $a$-ban. A feltételek megsértése nem jelenti automatikusan, hogy a kompozíció szakad — csak azt, hogy a tétel nem garantálja a folytonosságot.

*„Visszafelé” következtetés.* Ha $h \circ f$ folytonos, és $h$ invertálható **folytonos inverzzel**, akkor $f = h^{-1} \circ (h \circ f)$ folytonos. A $h(x) = x^3$ inverze ($\sqrt[3]{x}$) folytonos $\mathbb{R}$-en; a $h(x) = x^2$ nem injektív, így nincs inverze, és a következtetés hibás.

*Folytonos inverz.* Intervallumon folytonos, szigorúan monoton függvény inverze folytonos — ezért folytonosak a gyökfüggvények, a logaritmus, az $\arcsin$, $\arctan$. Ezek teszik lehetővé a „visszafelé” következtetéseket a fenti módon.
:::

## K98. feladat

Mutassuk meg, hogy az $f(x) = x^3 + x$ függvény szigorúan monoton nő $\mathbb{R}$-en, értékkészlete $\mathbb{R}$, és inverze folytonos. Számítsuk ki $f^{-1}(2)$-t és $f^{-1}(10)$-et.

**Megoldás.**

*Szigorú monotonitás:* $x^3$ és $x$ is szigorúan nő, így az összegük is.

*Értékkészlet:* $f$ folytonos (polinom), és $\lim_{x\to\pm\infty}f(x) = \pm\infty$. Adott $y$-hoz van $a$, hogy $f(a) < y$, és $b$, hogy $f(b) > y$; a Bolzano-tétel szerint van $c \in (a, b)$, $f(c) = y$. Tehát $R(f) = \mathbb R$.

*Inverz:* szigorúan monoton, így injektív; az inverz szigorúan nő, értékkészlete (az $f$ értelmezési tartománya, $\mathbb{R}$) intervallum, ezért (monoton függvény, intervallum értékkészlettel) folytonos.

*Értékek:* $f(1) = 2$, tehát $f^{-1}(2) = 1$; $f(2) = 10$, tehát $f^{-1}(10) = 2$.

::: elmelet
**Elméleti háttér — szigorúan monoton, folytonos függvények inverze.**

*A tétel.* Ha $f$ egy $I$ intervallumon folytonos és szigorúan monoton, akkor $f(I)$ intervallum (Bolzano), és $f^{-1} : f(I) \to I$ folytonos és ugyanolyan irányban szigorúan monoton.

*A bizonyítás vázlata.* $f^{-1}$ monoton; értékkészlete az $I$ intervallum; monoton függvény, amelynek értékkészlete intervallum, nem ugorhat (egy ugrás kihagyna egy értékintervallumot), tehát folytonos.

*Explicit inverz?* Az $x^3 + x = y$ egyenlet a Cardano-képlettel megoldható, de a tétel explicit képlet nélkül is biztosítja az inverz létezését és folytonosságát (sőt differenciálhatóságát is: $(f^{-1})'(y) = \frac{1}{f'(x)} = \frac{1}{3x^2 + 1}$). Ez az **inverzfüggvény-tétel** egydimenziós esete.

*Numerikus inverz.* A Bolzano-tétel bizonyítása (intervallumfelezés) algoritmust is ad $f^{-1}(y)$ tetszőleges pontosságú kiszámítására.
:::

# A 10. feladatlaphoz

## K99. feladat

a) Mutassuk meg, hogy ha $f$ folytonos $a$-ban, akkor $f^2$ és $\sqrt{|f|}$ is folytonos ott.

b) Következik-e $f^2$ folytonosságából $f$ folytonossága?

**Megoldás.**

a) $f^2 = f \cdot f$ folytonos függvények szorzata. $\sqrt{|f|}$ a $|f|$ (folytonos, 10. feladatlap 99. feladat) és a $[0, \infty)$-en folytonos $\sqrt{\cdot}$ függvény kompozíciója, tehát folytonos.

b) **Nem**: $f(x) = 1$, ha $x \ge 0$, és $-1$, ha $x < 0$; $f^2 \equiv 1$ folytonos, $f$ a $0$-ban nem. (Kivétel: ha $f(a) = 0$, akkor $f^2$ folytonosságából $|f(x)| = \sqrt{f(x)^2} \to 0$, tehát $f$ folytonos $a$-ban.)

::: elmelet
**Elméleti háttér — folytonosság megőrzése és elvesztése.**

*Megőrzés.* Folytonos függvényekből a négy alapművelettel (osztásnál nem nulla nevezővel), kompozícióval, abszolút értékkel, $\max$-szal, $\min$-nel, gyökvonással (nemnegatív függvényre) folytonos függvényt kapunk.

*Elvesztés.* Ha a művelet nem injektív (négyzetre emelés, abszolút érték), a folytonosság „felfelé” nem öröklődik: a kép folytonossága nem jelenti az eredetiét. A $0$ érték különleges: ott a $|f|$ és az $f^2$ folytonossága a $f$ folytonosságával ekvivalens, mert a $0$ az egyetlen szám, amelynek abszolút értéke $0$.

*Gyökfüggvény folytonossága.* $|\sqrt u - \sqrt v| \le \sqrt{|u - v|}$ ($u, v \ge 0$), így a négyzetgyök egyenletesen folytonos a $[0, \infty)$-en (de nem Lipschitz a $0$-ban).
:::

## K100. feladat

Legyenek $f, g, h$ folytonosak $a$-ban. Mutassuk meg, hogy $\max\{f, g, h\}$ és $f^+ = \max\{f, 0\}$ is folytonos $a$-ban, és fejezzük ki $|f|$-et $f^+$ és $f^- = \max\{-f, 0\}$ segítségével.

**Megoldás.**

$\max\{u, v\} = \frac{u + v + |u - v|}{2}$, így $\max\{f, g\}$ folytonos (10. feladatlap 100. feladat), és $\max\{f, g, h\} = \max\{\max\{f, g\}, h\}$ szintén. $f^+ = \max\{f, 0\}$ a konstans $0$ függvénnyel vett maximum, tehát folytonos; ugyanígy $f^-$. Végül $f = f^+ - f^-$ és
$$|f| = f^+ + f^-,$$
mert ahol $f \ge 0$, ott $f^+ = f$, $f^- = 0$; ahol $f < 0$, ott $f^+ = 0$, $f^- = -f$. $\blacksquare$

::: elmelet
**Elméleti háttér — pozitív és negatív rész.**

*Felbontás.* Minden valós függvény felbomlik két nemnegatív függvény különbségére: $f = f^+ - f^-$, ahol $f^+ = \max\{f, 0\} = \frac{|f| + f}{2}$, $f^- = \max\{-f, 0\} = \frac{|f| - f}{2}$. Ez a felbontás „minimális” abban az értelemben, hogy ha $f = g - h$ ($g, h \ge 0$), akkor $g \ge f^+$ és $h \ge f^-$.

*Folytonosság.* $f^\pm$ folytonos, ha $f$ az. Az integrálelméletben (Lebesgue-integrál) a nemnegatív függvények integrálját definiáljuk először, és az általános függvény integrálja $\int f = \int f^+ - \int f^-$.

*Véges sok függvény maximuma* indukcióval folytonos; végtelen sok folytonos függvény szuprémuma viszont már nem feltétlenül (csak alulról félig folytonos).
:::

## K101. feladat

Legyen $f : \mathbb{R} \to \mathbb{R}$ folytonos, és $f(x + y) = f(x) + f(y)$ minden $x, y$-ra (Cauchy-egyenlet). Mutassuk meg, hogy $f(x) = cx$, ahol $c = f(1)$.

**Megoldás.**

*Egészekre.* $f(0) = f(0 + 0) = 2f(0)$, így $f(0) = 0$. Indukcióval $f(nx) = nf(x)$ ($n \in \mathbb{N}$), és $0 = f(x + (-x)) = f(x) + f(-x)$ miatt $f(-x) = -f(x)$; tehát $f(nx) = nf(x)$ minden $n \in \mathbb{Z}$-re. Speciálisan $f(n) = nc$.

*Racionálisakra.* Ha $q = \frac mn$, akkor $nf(q) = f(nq) = f(m) = mc$, így $f(q) = qc$.

*Valósakra.* Legyen $x \in \mathbb{R}$, és $q_k \in \mathbb Q$, $q_k \to x$. A folytonosság miatt $f(x) = \lim f(q_k) = \lim cq_k = cx$. $\blacksquare$

::: elmelet
**Elméleti háttér — sűrű halmazon való egyezés.**

*Az elv.* Két folytonos függvény, amely egy sűrű halmazon (itt $\mathbb Q$-n) egyezik, mindenhol egyezik. A bizonyítás: az átviteli elv a sűrű halmazból vett sorozatokkal.

*Cauchy-egyenlet.* Az additív függvények a racionális számokon mindig lineárisak ($f(q) = qf(1)$); a folytonosság (vagy akár csak a monotonitás, korlátosság egy intervallumon, mérhetőség) kiterjeszti ezt az egész $\mathbb R$-re. Folytonosság nélkül — a kiválasztási axiómával, $\mathbb R$ mint $\mathbb Q$ fölötti vektortér bázisával (Hamel-bázis) — vannak nem lineáris additív függvények; ezek grafikonja sűrű a síkban.

*Rokon egyenletek* (folytonos megoldásokkal): $f(x + y) = f(x)f(y) \Rightarrow f(x) = a^x$ (vagy $0$); $f(xy) = f(x) + f(y)$ ($x, y > 0$) $\Rightarrow f(x) = c\ln x$; $f(xy) = f(x)f(y) \Rightarrow f(x) = x^\alpha$. Mind visszavezethetők a Cauchy-egyenletre.
:::

## K102. feladat

a) Bizonyítsuk be, hogy egy monoton $f : [a, b] \to \mathbb{R}$ függvénynek legfeljebb megszámlálhatóan sok szakadási pontja van.

b) Adjunk meg olyan monoton növő függvényt a $[0, 1]$-en, amely pontosan az $\frac1n$ ($n \ge 2$) pontokban szakad.

**Megoldás.**

a) Legyen $f$ monoton nő. Minden pontban léteznek az egyoldali határértékek, és $c$ pontosan akkor szakadási pont, ha $f(c - 0) < f(c + 0)$ (belső pontban; a végpontban a megfelelő egyoldali határértékkel). Rendeljünk minden szakadási ponthoz egy racionális számot a $(f(c - 0), f(c + 0))$ intervallumból. Ha $c < d$ szakadási pontok, akkor $f(c + 0) \le f(d - 0)$ (monotonitás), így a két intervallum diszjunkt, és a hozzárendelt racionális számok különbözők. Ez injekció $\mathbb{Q}$-ba: a szakadási pontok legfeljebb megszámlálhatóan sokan vannak. $\blacksquare$

b) Legyen $f(x) = \sum_{n \ge 2,\ 1/n \le x}2^{-n}$ (az üres összeg $0$). Ez monoton nő (nagyobb $x$-re több tag), a $\frac1n$ pontban $2^{-n}$-nel ugrik (jobbról folytonos, balról nem), máshol folytonos: egy nem $\frac1n$ alakú $x > 0$ pont egy környezetében a $\frac1n$-ek közül csak véges sok (sőt egy elég kis környezetben egy sem) van, így ott $f$ állandó; a $0$-ban pedig $f(x) \le \sum_{n \ge 1/x}2^{-n} \le 2^{1 - 1/x} \to 0 = f(0)$, ha $x \to 0+0$.

::: elmelet
**Elméleti háttér — monoton függvények szakadásai.**

*Egyoldali határértékek.* Monoton növő $f$-re $f(c - 0) = \sup_{x < c}f(x)$, $f(c + 0) = \inf_{x > c}f(x)$, és $f(c - 0) \le f(c) \le f(c + 0)$. Szakadás csak ugrás lehet, az ugrás nagysága $f(c + 0) - f(c - 0) > 0$.

*Megszámlálhatóság.* A diszjunkt „ugrás-intervallumok” mindegyike tartalmaz racionális számot — ez a „racionális tanú” elv (K60). Korlátos esetben az ugrások összege is véges: $\sum_c (f(c + 0) - f(c - 0)) \le f(b) - f(a)$.

*Ugrásfüggvények.* Bármely megszámlálható $\{c_n\}$ halmazra és $\sum d_n < \infty$ pozitív számokra az $f(x) = \sum_{c_n \le x}d_n$ monoton nő, és pontosan a $c_n$ pontokban ugrik ($d_n$-nel). Ha $\{c_n\}$ a racionálisok felsorolása, egy olyan szigorúan monoton függvényt kapunk, amely pontosan a racionálisokban szakad.

*Lebesgue tétele.* Monoton függvény majdnem mindenütt differenciálható — a szakadások „ritkák” (megszámlálhatók), a nem differenciálható pontok halmaza nullmértékű.
:::

## K103. feladat

Van-e olyan $(0, \infty)$-en folytonos $f$ függvény, amelyre $\lim_{x\to\infty}f(x) = +\infty$, de $f$ egyetlen $(K, \infty)$ félegyenesen sem monoton?

**Megoldás.**

**Van:** $f(x) = x + 2\sin x$.

- *Folytonos* (folytonos függvények összege).
- *$+\infty$-hez tart:* $f(x) \ge x - 2 \to \infty$.
- *Nem monoton* egyetlen $(K, \infty)$-en sem. Legyen $x_k = 2k\pi + \frac\pi2$ és $y_k = 2k\pi + \frac{3\pi}{2}$. Ekkor
$$f(x_k) = 2k\pi + \tfrac\pi2 + 2 \approx 2k\pi + 3{,}57, \qquad f(y_k) = 2k\pi + \tfrac{3\pi}{2} - 2 \approx 2k\pi + 2{,}71.$$
  Tehát $x_k < y_k < x_{k+1}$, de $f(x_k) > f(y_k) < f(x_{k+1})$: fel-le váltakozás. Elég nagy $k$-ra mindhárom pont $(K, \infty)$-ben van, így $f$ ott nem monoton.

::: elmelet
**Elméleti háttér — határérték kontra monotonitás.**

*A konstrukció elve.* Egy végtelenbe tartó, monoton „trend” ($x$) mellé egy korlátos, oszcilláló tagot ($2\sin x$) adunk. A határérték a trendtől függ, a monotonitás a „meredekségek” versenyétől: ha az oszcilláló tag meredeksége (itt $2\cos x$, abszolút értékben akár $2$) legyőzi a trend meredekségét ($1$), a függvény helyenként csökken.

*Differenciálható esetben.* $f'(x) = 1 + 2\cos x$, ami minden $(2k\pi + \frac{2\pi}{3}, 2k\pi + \frac{4\pi}{3})$ intervallumon negatív — a monotonitás deriválttal így ellenőrizhető. Ha az oszcilláló tag kisebb ($x + \frac12\sin x$), a függvény szigorúan nő ($f' \ge \frac12 > 0$).

*Tanulság.* $\lim_{x\to\infty}f(x) = +\infty$ nem jelenti, hogy $f$ „végül” monoton. Hasonlóan $\lim a_n = +\infty$ esetén sem kell a sorozatnak monotonnak lennie (például $n + 2(-1)^n$).
:::

## K104. feladat

a) Bizonyítsuk be, hogy ha $f$ konvex $\mathbb{R}$-en és felülről korlátos, akkor konstans.

b) Bizonyítsuk be, hogy ha $f$ konvex $(0, \infty)$-en és $\lim_{x\to\infty}f(x) = 0$, akkor $f$ monoton fogyó és $f \ge 0$.

**Megoldás.**

Használjuk a három húr lemmát: $z < x < y$ esetén $\frac{f(x) - f(z)}{x - z} \le \frac{f(y) - f(x)}{y - x}$.

a) Tegyük fel, hogy $f$ nem konstans: van $x < y$, $f(x) \ne f(y)$. Ha $f(y) > f(x)$, legyen $m = \frac{f(y) - f(x)}{y - x} > 0$. Minden $z > y$-ra (a lemma az $x < y < z$ hármasra) $\frac{f(z) - f(y)}{z - y} \ge m$, azaz $f(z) \ge f(y) + m(z - y) \to \infty$ — ellentmondás a felülről korlátossággal. Ha $f(y) < f(x)$, akkor $m < 0$, és minden $z < x$-re $f(z) \ge f(x) + |m|(x - z) \to \infty$ ($z \to -\infty$) — szintén ellentmondás. $\blacksquare$

b) Ha valahol $x < y$ és $f(x) < f(y)$, akkor az a) rész első esete szerint $f(z) \to \infty$ ($z \to \infty$), ellentmondás. Tehát $f$ monoton fogyó. Ekkor $f(x) \ge f(z)$ minden $z > x$-re, és $z \to \infty$-nel $f(x) \ge 0$. $\blacksquare$

::: elmelet
**Elméleti háttér — konvex függvények „lineáris növekedése”.**

*A három húr lemma következménye.* Konvex függvény grafikonja egy húron túl a húr egyenesének meghosszabbítása **fölött** halad. Ha tehát valahol pozitív meredekségű húr van, a függvény attól jobbra legalább lineárisan nő; ha negatív, balra.

*Liouville-típusú tétel.* $\mathbb{R}$-en konvex és felülről korlátos függvény konstans — ez a komplex függvénytan Liouville-tételének (korlátos egész függvény konstans) „valós, konvex” megfelelője.

*Konvex függvény a végtelenben.* Egy $(0, \infty)$-en konvex függvényre a $\lim_{x\to\infty}\frac{f(x)}{x}$ mindig létezik ($\overline{\mathbb R}$-ben), és $\lim_{x\to\infty}f(x)$ is létezik. Ha a határérték véges, a függvény végül monoton fogyó — a b) rész ennek egy esete. (Példa: $\frac1x$, $e^{-x}$.)
:::

## K105. feladat

a) Mutassuk meg, hogy az $x^5 + 3x - 1 = 0$ egyenletnek pontosan egy valós gyöke van, és ez a $(0, 1)$ intervallumba esik.

b) Mutassuk meg, hogy a $\cos x = x$ egyenletnek van megoldása a $(0, \frac\pi2)$ intervallumban.

**Megoldás.**

a) $p(x) = x^5 + 3x - 1$ folytonos, $p(0) = -1 < 0$, $p(1) = 3 > 0$, így a Bolzano-tétel szerint van gyök $(0, 1)$-ben. $p$ szigorúan nő ($x^5$ és $3x$ is szigorúan nő), ezért legfeljebb egy gyöke van. Tehát pontosan egy van.

b) $h(x) = \cos x - x$ folytonos, $h(0) = 1 > 0$, $h(\frac\pi2) = -\frac\pi2 < 0$; a Bolzano-tétel szerint van $c \in (0, \frac\pi2)$, $\cos c = c$. $\blacksquare$

::: elmelet
**Elméleti háttér — létezés és egyértelműség.**

*Létezés: Bolzano-tétel.* Folytonos függvény, amely egy intervallum végpontjain ellentétes előjelű, felveszi a $0$-t. Egyenletek megoldhatóságát így vezetjük vissza előjelvizsgálatra.

*Egyértelműség: monotonitás.* Szigorúan monoton függvénynek legfeljebb egy gyöke van (injektív). Együtt: **folytonos és szigorúan monoton függvénynek, amely előjelet vált, pontosan egy gyöke van**.

*Fixpont-egyenletek.* A $\cos x = x$ a $\cos$ függvény fixpontja (Dottie-szám, $\approx 0{,}739$). A $\cos$ a $[0, 1]$-et önmagába képezi, és ott kontrakció ($|\sin x| \le \sin 1 < 1$), így az $x_{n+1} = \cos x_n$ iteráció bármely kezdőpontból ehhez konvergál (egy számológépen a $\cos$ gomb ismételt nyomogatásával kipróbálható).

*Numerikus közelítés.* Intervallumfelezéssel a gyök tetszőleges pontossággal közelíthető: $p(0{,}5) = 0{,}53 > 0$, így a gyök $(0;\ 0{,}5)$-ben; $p(0{,}25) \approx -0{,}249 < 0$, így $(0{,}25;\ 0{,}5)$-ben; stb. (A gyök $\approx 0{,}332$.)
:::

## K106. feladat

a) Legyen $f \in C[a, b]$, $x_1, \dots, x_n \in [a, b]$, és $p_1, \dots, p_n \ge 0$, $\sum p_i = 1$. Mutassuk meg, hogy van $c \in [a, b]$, amelyre $f(c) = \sum p_if(x_i)$.

b) Legyen $f \in C[0, 1]$ és $f(0) = f(1)$. Mutassuk meg, hogy van $x \in [0, \frac12]$, amelyre $f(x) = f(x + \frac12)$.

**Megoldás.**

a) A súlyozott átlag a legkisebb és a legnagyobb $f(x_i)$ között van: $\min_i f(x_i) \le \sum p_if(x_i) \le \max_if(x_i)$. A minimumot és a maximumot felvevő két pont között $f$ folytonos, így a közbülsőérték-tétel szerint felveszi a közbülső értéket.

b) Legyen $g(x) = f(x + \frac12) - f(x)$ a $[0, \frac12]$-en; folytonos. $g(0) + g(\frac12) = f(\frac12) - f(0) + f(1) - f(\frac12) = f(1) - f(0) = 0$. Ha $g(0) = 0$, kész ($x = 0$). Különben $g(0)$ és $g(\frac12)$ ellentétes előjelű, és a Bolzano-tétel szerint van $x \in (0, \frac12)$, $g(x) = 0$. $\blacksquare$

::: elmelet
**Elméleti háttér — közbülsőérték-tétel alkalmazásai.**

*Átlagértékek.* Folytonos függvény bármely súlyozott átlagát felveszi az értelmezési tartomány valamely pontjában — mert az átlag a szélső értékek között van. Ennek folytonos megfelelője az **integrál középértéktétele**: $\int_a^bf = f(c)(b - a)$ valamely $c$-re.

*Húrtétel.* A b) rész a **húrtétel** $n = 2$ esete: ha $f(0) = f(1)$, akkor minden $n \in \mathbb{N}$-re van $x$, amelyre $f(x) = f(x + \frac1n)$ (a $g(x) = f(x + \frac1n) - f(x)$ értékeinek összege a $0, \frac1n, \dots, \frac{n-1}{n}$ pontokban $0$, így nem lehetnek mind azonos előjelűek). Meglepő módon nem $\frac1n$ alakú hosszra ez már nem igaz (Lévy tétele).

*Szemléletes jelentés.* Ha egy kiránduló egy kör alakú túrát tesz (ugyanoda tér vissza), van két, fél távnyira levő pont, ahol ugyanolyan magasan volt.
:::

## K107. feladat

a) Legyen $f \in C[0, 1]$ és $0 \le f \le 1$. Mutassuk meg, hogy van $c \in [0, 1]$, amelyre $f(c) = c^2$.

b) Mutassuk meg, hogy a $2^x = 3x$ egyenletnek van megoldása a $(0, 1)$ intervallumban.

**Megoldás.**

a) $h(x) = f(x) - x^2$ folytonos; $h(0) = f(0) \ge 0$ és $h(1) = f(1) - 1 \le 0$. Ha valamelyik $0$, kész; különben a Bolzano-tétel szerint van $c \in (0, 1)$, $h(c) = 0$.

b) $h(x) = 2^x - 3x$ folytonos; $h(0) = 1 > 0$, $h(1) = 2 - 3 = -1 < 0$. A Bolzano-tétel szerint van megoldás $(0, 1)$-ben. $\blacksquare$

::: elmelet
**Elméleti háttér — egyenletek megoldhatósága folytonossággal.**

*Visszavezetés.* $F(x) = G(x)$ megoldásai a $h = F - G$ zérushelyei; ha $h$ folytonos és a végpontokban ellentétes előjelű (vagy valamelyik végpontban $0$), van megoldás.

*Fixpont-típusú érvelés.* Az a) rész a 109. feladat (fixponttétel) általánosítása: ha $f$ a $[0, 1]$-et önmagába képezi, bármely olyan folytonos $g$ függvény grafikonját metszi, amely a $(0, 0)$-ból az $(1, 1)$-be megy (itt $g(x) = x^2$). Geometriailag: az $f$ grafikonja a négyzet bal oldaláról a jobb oldalára jut, a $g$ grafikonja az alsó bal sarokból a felső jobbra — ezek metszik egymást.

*Transzcendens egyenletek.* A $2^x = 3x$ egyenlet nem oldható meg zárt alakban elemi függvényekkel; a Bolzano-tétel a létezést, az intervallumfelezés a numerikus közelítést adja. (Két megoldása van: egy a $(0, 1)$-ben, $\approx 0{,}458$, és egy a $(3, 4)$-ben, $\approx 3{,}313$.)
:::

## K108. feladat

a) Legyen $f \in C[a, b]$ nem konstans, és $f(a) = f(b)$. Mutassuk meg, hogy van olyan érték, amelyet $f$ legalább kétszer felvesz, sőt végtelen sok ilyen érték van.

b) Mutassuk meg, hogy ha $f : \mathbb{R} \to \mathbb{R}$ folytonos és injektív, akkor szigorúan monoton.

**Megoldás.**

a) $f$ nem konstans, így van $x_0 \in (a, b)$, $f(x_0) \ne f(a)$; mondjuk $f(x_0) > f(a)$. Minden $y \in (f(a), f(x_0))$ értéket a Bolzano-tétel szerint $f$ felvesz az $(a, x_0)$-ban és az $(x_0, b)$-ben is (mert $f(b) = f(a) < y < f(x_0)$). Így minden ilyen $y$ legalább kétszer vétetik fel — és ezekből végtelen sok van. $\blacksquare$

b) Elég megmutatni, hogy minden $[c, d]$ intervallumon szigorúan monoton, és az irány nem függ az intervallumtól. A 10. feladatlap 108. a) feladata szerint $[c, d]$-n szigorúan monoton (növő, ha $f(c) < f(d)$). Ha két intervallumon különböző irányú volna, tekintsünk egy őket tartalmazó $[c', d']$ intervallumot: azon $f$ szigorúan monoton, és ennek iránya mindkét részintervallumon ugyanaz — ellentmondás. $\blacksquare$

::: elmelet
**Elméleti háttér — injektivitás és monotonitás.**

*A „csúcs-lemma”.* Ha egy folytonos függvénynek van belső „csúcsa” (érték, amely mindkét oldali szomszédnál nagyobb), a csúcs alatti közeli értékeket a függvény mindkét oldalon felveszi. Ezért egy folytonos függvény, amely nem szigorúan monoton, nem injektív — és ez a bizonyítás a b) részhez is.

*Következmények.*

- Zárt görbe (periodikus függvény egy periódusa, $f(a) = f(b)$) mindig „visszafordul”, így értékeket ismétel.
- Folytonos bijekció $\mathbb{R}$-en (vagy intervallumon) szigorúan monoton, inverze is folytonos és szigorúan monoton.
- Nincs olyan folytonos függvény, amely minden értéket pontosan kétszer venne fel (10. feladatlap, 108. b)).

*Topológiai szemlélet.* Az $\mathbb R$-ből egy pontot elhagyva két darab marad; a folytonos injekció ezt a tulajdonságot megőrzi, és ez kényszeríti ki a monotonitást. Magasabb dimenzióban (a síkon) nincs ilyen megszorítás: vannak nem „monoton” folytonos injekciók (például forgatások).
:::

## K109. feladat

a) Legyen $f : [0, 1] \to [0, 1]$ folytonos. Mutassuk meg, hogy van $c$, amelyre $f(c) = 1 - c$.

b) Egy turista reggel 8-kor elindul a hegy aljáról, és este 8-kor felér a csúcsra. Másnap reggel 8-kor ugyanazon az úton elindul lefelé, és este 8-kor leér. Mutassuk meg, hogy van olyan időpont, amikor mindkét napon ugyanott volt.

**Megoldás.**

a) $h(x) = f(x) - (1 - x)$ folytonos; $h(0) = f(0) - 1 \le 0$, $h(1) = f(1) \ge 0$. A Bolzano-tétel szerint (ha egyik sem $0$) van $c \in (0, 1)$, $h(c) = 0$.

b) Jelölje $u(t)$ és $d(t)$ a turista helyét (az úton mért távolságot a hegy aljától) az első, illetve a második napon a $t \in [8, 20]$ időpontban; ezek folytonosak (a turista nem „ugrik”). $h(t) = u(t) - d(t)$: $h(8) = 0 - L = -L < 0$ ($L$ az út hossza), $h(20) = L - 0 = L > 0$. A Bolzano-tétel szerint van $t_0$, amelyre $h(t_0) = 0$, azaz $u(t_0) = d(t_0)$. $\blacksquare$

::: elmelet
**Elméleti háttér — modellezés és a fixponttétel változatai.**

*A modellezés lépései.* (1) A mozgást egy folytonos függvénnyel írjuk le (a folytonosság a „nem ugrik” fizikai feltétel); (2) a kérdést egy egyenletté fordítjuk; (3) a különbségfüggvényre alkalmazzuk a Bolzano-tételt.

*Fixpont és „antifixpont”.* Az a) rész a fixponttétel ($f(c) = c$) tükrözött változata: a $g(x) = 1 - f(x)$ függvény is a $[0, 1]$-et önmagába képezi, és $g$ fixpontja éppen $f(c) = 1 - c$. Általában bármely folytonos $\varphi : [0, 1] \to [0, 1]$ bijekcióval a $\varphi^{-1} \circ f$ fixpontja ad megoldást az $f(c) = \varphi(c)$ egyenletre.

*A turista-feladat szépsége.* Egy egyszerű „trükk” (a két napot egyszerre képzeljük el: egy turista felfelé, egy lefelé indul egyszerre — valahol találkozniuk kell) egy matematikailag precíz Bolzano-érvelés. A sebességekről semmit nem kellett feltennünk.
:::

## K110. feladat

a) Legyen $g(x) = \sin\frac1x$, ha $x \ne 0$, és $g(0) = c$. Mutassuk meg, hogy $g$ pontosan akkor Darboux-tulajdonságú $\mathbb{R}$-en, ha $c \in [-1, 1]$.

b) Bizonyítsuk be, hogy egy Darboux-tulajdonságú $f : \mathbb{R} \to \mathbb{R}$ függvény, amely csak racionális értékeket vesz fel, konstans.

**Megoldás.**

a) *Ha $c \in [-1, 1]$:* a 10. feladatlap 110. b) feladatának bizonyítása szó szerint működik: a $0$-t tartalmazó intervallumok tartalmaznak $(0, \varepsilon)$ vagy $(-\varepsilon, 0)$ alakú részintervallumot, amelyen $g$ minden $[-1, 1]$-beli értéket felvesz, és bármely két felvett érték közti szám $[-1, 1]$-ben van. *Ha $c \notin [-1, 1]$*, mondjuk $c > 1$: a $[0, \frac{2}{\pi}]$ intervallum végpontjaiban $g(0) = c$ és $g(\frac2\pi) = \sin\frac\pi2 = 1$, de a köztük levő $\frac{1 + c}{2} \in (1, c)$ értéket $g$ nem veszi fel (a $0$-n kívül $|g| \le 1$). Tehát nem Darboux-tulajdonságú.

b) Ha $f$ nem konstans, van $a < b$, $f(a) \ne f(b)$. A két racionális érték között van irracionális $y$; a Darboux-tulajdonság szerint $f$ felvenné $y$-t valahol $(a, b)$-ben — ellentmondás. Tehát $f$ konstans. $\blacksquare$

::: elmelet
**Elméleti háttér — a Darboux-tulajdonság ereje és korlátai.**

*Darboux-tulajdonság:* intervallum képe intervallum. Minden folytonos függvény ilyen (Bolzano), és minden derivált függvény is ilyen (Darboux tétele), akkor is, ha nem folytonos.

*Értékkészlet.* Egy Darboux-függvény értékkészlete intervallum (esetleg egyetlen pont). Ezért ha az értékkészlet „lyukas” — csak racionális számokat, csak egészeket, véges sok értéket tartalmaz —, a függvény konstans. Ez a b) rész, és ugyanez az érvelés mutatja: egy folytonos, egész értékű függvény egy intervallumon konstans.

*Az a) rész tanulsága.* A $\sin\frac1x$ a $0$ minden környezetében „minden értéket felvesz $[-1, 1]$-ből”, ezért a $0$-beli érték bármilyen $[-1, 1]$-beli választása megőrzi a Darboux-tulajdonságot — de a folytonosságot egyik sem (a $0$-ban nincs határérték). Ha $c$ kívül esik a $[-1, 1]$-en, a $c$ és a közeli értékek közé eső számok kimaradnak.

*Alkalmazás.* A „deriváltnak nem lehet ugrása” állítás (Darboux tétele) egyik következménye: a $\operatorname{sgn}$ függvény nem derivált függvény — egyetlen differenciálható függvénynek sem ez a deriváltja.
:::
