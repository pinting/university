# Analízis 1 – 1. ZH (2024 intenzív B) – megoldások

### B. Sc. I. Mat. Analízis 1 · Első ZH · Intenzív B verzió (2024/25-I. félév)

*(a normál gyakorlatra járó hallgatók NEM ezt írják)*

## 1. feladat

a) $\lim_{n \to +\infty} \frac{5n^2 + 8n + 2}{\sqrt[3]{n^6 + 2024n^2}} = ?$

b) $\lim_{n \to \infty} \sqrt[n]{3n^2 + 5^n} = ?$

c) $\lim_{x \to 3} \frac{x^2 - x - 6}{(x - 3)(x^2 + 5)} = ?$

**Megoldás.**

**a) $\mathbf{5}$.**

*Levezetés:*
A számláló és a nevező aszimptotikus nagyságrendje egyaránt $n^2$, hiszen $\sqrt[3]{n^6} = n^2$.
Osszuk el a számlálót és a nevezőt $n^2$-tel (a nevezőben a köbgyök alá $n^6$-ként visszük be):
$$\frac{5n^2 + 8n + 2}{\sqrt[3]{n^6 + 2024n^2}} = \frac{5 + \frac{8}{n} + \frac{2}{n^2}}{\sqrt[3]{\frac{n^6 + 2024n^2}{n^6}}} = \frac{5 + \frac{8}{n} + \frac{2}{n^2}}{\sqrt[3]{1 + \frac{2024}{n^4}}}.$$
Mivel $\lim_{n \to \infty} \frac{1}{n} = 0$, $\lim_{n \to \infty} \frac{1}{n^2} = 0$, és $\lim_{n \to \infty} \frac{2024}{n^4} = 0$, továbbá a köbgyökfüggvény folytonos:
$$\lim_{n \to +\infty} \frac{5n^2 + 8n + 2}{\sqrt[3]{n^6 + 2024n^2}} = \frac{5 + 0 + 0}{\sqrt[3]{1 + 0}} = \frac{5}{1} = 5.$$

---

**b) $\mathbf{5}$.**

*Levezetés:*
A gyökjel alatt a domináns tag az exponenciális $5^n$, amely gyorsabban növekszik a polinomiális $3n^2$ tagnál.
Alkalmazzuk a rendőrelvet!
Mivel minden $n \ge 1$ esetén $3n^2 > 0$:
$$5^n < 3n^2 + 5^n.$$
Másfelől $n \ge 1$-re $3n^2 \le 5^n$ (hiszen $n=1$-re $3 \le 5$, $n=2$-re $12 \le 25$, $n=3$-ra $27 \le 125$, és indukcióval könnyen látható, hogy $\frac{3(n+1)^2}{3n^2} = (1 + 1/n)^2 \le 4 < 5$).
Így:
$$3n^2 + 5^n \le 5^n + 5^n = 2 \cdot 5^n.$$
Vonjunk $n$-edik gyököt:
$$5 < \sqrt[n]{3n^2 + 5^n} \le \sqrt[n]{2 \cdot 5^n} = 5 \cdot \sqrt[n]{2}.$$
Mivel $\lim_{n \to \infty} \sqrt[n]{2} = 1$, a felső korlát határértéke:
$$\lim_{n \to \infty} \left(5 \cdot \sqrt[n]{2}\right) = 5 \cdot 1 = 5.$$
Mivel az alsó és felső korlát határértéke megegyezik, a rendőrelv szerint:
$$\lim_{n \to \infty} \sqrt[n]{3n^2 + 5^n} = 5.$$

---

**c) $\mathbf{\dfrac{5}{14}}$.**

*Levezetés:*
A számláló határértéke $x \to 3$ esetén: $3^2 - 3 - 6 = 0$.
A nevező határértéke: $(3 - 3)(3^2 + 5) = 0 \cdot 14 = 0$.
Ez egy $\frac{0}{0}$ alakú határozatlanság, amely a közös $(x - 3)$ gyöktényező kiemelésével és egyszerűsítésével azonnal megszűnik.
Bontsuk tényezőkre a számlálót:
$$x^2 - x - 6 = (x - 3)(x + 2).$$
Ha $x \ne 3$, a tört egyszerűsíthető:
$$\frac{x^2 - x - 6}{(x - 3)(x^2 + 5)} = \frac{(x - 3)(x + 2)}{(x - 3)(x^2 + 5)} = \frac{x + 2}{x^2 + 5}.$$
Mivel az $x \mapsto \frac{x + 2}{x^2 + 5}$ racionális törtfüggvény értelmezve van és folytonos az $x = 3$ pontban (a nevezője $3^2 + 5 = 14 \ne 0$):
$$\lim_{x \to 3} \frac{x^2 - x - 6}{(x - 3)(x^2 + 5)} = \lim_{x \to 3} \frac{x + 2}{x^2 + 5} = \frac{3 + 2}{3^2 + 5} = \frac{5}{14}.$$

::: elmelet
**Elméleti háttér — határértékszámítás alapmódszerei:**
- *Vezető tag kiemelése:* Polinomiális és gyökös kifejezéseknél a végtelenben a leggyorsabban növő hatványt emeljük ki, így a maradék tagok $0$-hoz tartanak.
- *Rendőrelv összeg $n$-edik gyökére:* Ha $0 < a_n \le b_n$, akkor $b_n \le a_n + b_n \le 2b_n \implies b_n^{1/n} \le (a_n + b_n)^{1/n} \le 2^{1/n} b_n^{1/n}$. Mivel $\sqrt[n]{2} \to 1$, a határértéket a domináns tag $n$-edik gyöke határozza meg.
- *Függvényhatárérték $0/0$ alaknál:* Ha egy algebrai tört számlálója és nevezője is $0$ az $x = x_0$ helyen, a gyöktényezős felbontás segítségével az $(x - x_0)$ tényező egyszerűsíthető.
:::

## 2. feladat

Legyen $A \stackrel{\text{def}}{=} \{\sqrt{n^2 + \sqrt[3]{n}} - n : n \in \mathbb{N}\}$. Igazoljuk, hogy $A$ alulról korlátos és határozzuk meg $\inf A$-t. Létezik-e $\min A$?

**Megoldás.**

**A halmaz alulról korlátos, infimuma $\mathbf{\inf A = 0}$, de minimuma nem létezik ($\mathbf{\min A}$ nem létezik).**

*Levezetés:*
Legyen $x_n = \sqrt{n^2 + \sqrt[3]{n}} - n$ minden $n \in \mathbb{N}$ ($n \ge 1$) esetén.
1. **Alulról korlátosság és pozitív értékek:**
   Mivel $n \ge 1$, ezért $\sqrt[3]{n} > 0$, amiből következik:
   $$\sqrt{n^2 + \sqrt[3]{n}} > \sqrt{n^2} = n \implies x_n = \sqrt{n^2 + \sqrt[3]{n}} - n > 0.$$
   Tehát az $A$ halmaz minden eleme szigorúan pozitív valós szám ($x_n > 0$).
   Ez azt jelenti, hogy a $0$ egy alsó korlátja $A$-nak (sőt minden $c \le 0$ valós szám is alsó korlát), így **$A$ alulról korlátos**.

2. **A sorozat határértéke és az infimum:**
   Alakítsuk át az $x_n$ kifejezést a számláló gyöktelenítésével:
   $$x_n = \frac{\left(\sqrt{n^2 + \sqrt[3]{n}} - n\right)\left(\sqrt{n^2 + \sqrt[3]{n}} + n\right)}{\sqrt{n^2 + \sqrt[3]{n}} + n} = \frac{n^2 + \sqrt[3]{n} - n^2}{\sqrt{n^2 + \sqrt[3]{n}} + n} = \frac{n^{1/3}}{\sqrt{n^2 + n^{1/3}} + n}.$$
   Osszuk el a számlálót és a nevezőt $n$-nel:
   $$x_n = \frac{n^{1/3 - 1}}{\sqrt{1 + n^{1/3 - 2}} + 1} = \frac{n^{-2/3}}{\sqrt{1 + n^{-5/3}} + 1} = \frac{1}{n^{2/3}\left(\sqrt{1 + n^{-5/3}} + 1\right)}.$$
   Mivel $n \to \infty$ esetén $n^{2/3} \to +\infty$ és a zárójeles nevező tart $2$-höz:
   $$\lim_{n \to \infty} x_n = 0.$$

   Az infimum definíciója szerint:
   - A $0$ alsó korlát, mert $x_n > 0$ minden $n \in \mathbb{N}$-re.
   - Tetszőleges $\varepsilon > 0$-hoz, mivel $\lim_{n \to \infty} x_n = 0$, létezik olyan $n \in \mathbb{N}$, amelyre $x_n < \varepsilon$.
   Ezért a legnagyobb alsó korlát:
   $$\inf A = 0.$$

3. **Létezik-e $\min A$?**
   Egy halmaz minimuma olyan alsó korlát, amely **eleme** a halmaznak.
   Ha létezne minimum, annak szükségképpen meg kellene egyeznie az infimummal: $\min A = \inf A = 0$.
   Azonban minden $n \in \mathbb{N}$ esetén:
   $$x_n > 0,$$
   tehát $0 \notin A$.
   Mivel a halmaz nem tartalmazza az infimumát, **$\min A$ nem létezik**.

::: elmelet
**Elméleti háttér — szuprémum, infimum és szélsőértékek:**
- Egy $H \subset \mathbb{R}$ felülről (alulról) korlátos, nemüres halmaznak a Dedekind-axióma (teljességi tétel) szerint mindig létezik legkisebb felső korlátja $\sup H$ (legnagyobb alsó korlátja $\inf H$).
- A maximum (minimum) akkor és csak akkor létezik, ha a szuprémum (infimum) eleme magának a halmaznak: $\min H$ létezik $\iff \inf H \in H$.
- Ha egy szigorúan pozitív sorozat tagjaiból álló halmaz infimuma $0$, akkor a halmaznak nem lehet minimuma.
:::

## 3. feladat

Igazoljuk, hogy $a, b, c \ge 0$-ra $4abc \le a^2 + 2ab + b^2 c^4$.

**Megoldás.**

Az egyenlőtlenség minden $a, b, c \ge 0$ valós számra teljesül.

*Bizonyítás:*
1. **Ha a változók valamelyike nulla:**
   - Ha $a = 0$, akkor a bal oldal $4abc = 0$, a jobb oldal pedig $b^2 c^4 \ge 0$.
   - Ha $b = 0$, akkor a bal oldal $0$, a jobb oldal $a^2 \ge 0$.
   - Ha $c = 0$, akkor a bal oldal $0$, a jobb oldal $a^2 + 2ab \ge 0$.
   Minden ilyen esetben a bal oldal $0$, a jobb oldal nemnegatív, így az egyenlőtlenség triviálisan fennáll.

2. **Ha $a, b, c > 0$:**
   Csoportosítsuk a jobb oldali tagokat:
   $$a^2 + 2ab + b^2 c^4 = \left(a^2 + b^2 c^4\right) + 2ab.$$
   Alkalmazzuk a számtani és mértani közép közötti egyenlőtlenséget (AM-GM) az $a^2$ és $b^2 c^4$ pozitív tagokra:
   $$a^2 + b^2 c^4 \ge 2\sqrt{a^2 \cdot b^2 c^4} = 2ab c^2.$$
   *(Egyenlőség pontosan akkor áll fenn, ha $a^2 = b^2 c^4$, azaz $a = b c^2$.)*

   Ezt behelyettesítve a jobb oldalra:
   $$a^2 + 2ab + b^2 c^4 \ge 2ab c^2 + 2ab = 2ab\left(c^2 + 1\right).$$

   Most vizsgáljuk a $c^2 + 1$ kifejezést. Mivel $(c - 1)^2 \ge 0$, kifejtve:
   $$c^2 - 2c + 1 \ge 0 \implies c^2 + 1 \ge 2c.$$
   *(Egyenlőség pontosan akkor áll fenn, ha $c = 1$.)*

   Mivel $a > 0$ és $b > 0$, a $2ab > 0$ pozitív tényezővel szorozva az egyenlőtlenség iránya nem változik:
   $$2ab\left(c^2 + 1\right) \ge 2ab(2c) = 4abc.$$

   Összekapcsolva a két lépést:
   $$a^2 + 2ab + b^2 c^4 \ge 2ab\left(c^2 + 1\right) \ge 4abc.$$
   Ezzel az egyenlőtlenséget igazoltuk minden $a, b, c \ge 0$ esetén.

*Egyenlőségvizsgálat:*
Az egyenlőség pontosan akkor teljesül, ha mindkét alkalmazott becslésben egyenlőség áll fenn:
1. $c = 1$, és
2. $a = b c^2 = b \cdot 1^2 = b$.
Tehát pozitív számokra egyenlőség pontosan akkor van, ha $a = b$ és $c = 1$.
*(Ezen kívül ha $a = 0$ és $bc = 0$, vagy $b = 0$ és $a = 0$.)*

::: elmelet
**Elméleti háttér — számtani és mértani közép egyenlőtlenség alkalmazása:**
- Két nemnegatív számra: $x + y \ge 2\sqrt{xy}$, egyenlőség acsa $x = y$.
- Gyakori stratégia, hogy az összetett többváltozós egyenlőtlenségeket két lépésben vezetjük vissza az AM-GM-re: először kiküszöbölünk egy változót vagy csökkentjük a fokszámot ($a^2 + b^2 c^4 \ge 2abc^2$), majd a megmaradt egyváltozós tagot becsüljük ($c^2 + 1 \ge 2c$).
:::

## 4. feladat

Bizonyítsuk be, hogy az $x_1 = 1$, $x_{n+1} = 3 \cdot \sqrt{x_n} + 4$ rekurzióval definiált sorozat monoton növekedő és felülről korlátos. Konvergens-e a sorozat? Ha az, adjuk meg a határértékét.

**Megoldás.**

**A sorozat szigorúan monoton növekvő, felülről korlátos (felső korlátja $16$), ezáltal konvergens, határértéke:**
$$\mathbf{\lim_{n \to \infty} x_n = 16}.$$

*Levezetés:*
1. **Fixpont (lehetséges határérték) megkeresése:**
   Tekintsük az átmenetfüggvényt: $f(x) = 3\sqrt{x} + 4$ az $x \ge 0$ értékekre.
   Ha a sorozat konvergens és határértéke $A$, akkor a gyökfüggvény folytonossága miatt $A$-nak kielégítenie kell az $f(A) = A$ egyenletet:
   $$A = 3\sqrt{A} + 4 \implies A - 4 = 3\sqrt{A}.$$
   Mivel $3\sqrt{A} \ge 0$, szükséges, hogy $A \ge 4$ legyen. Mindkét oldalt négyzetre emelve:
   $$(A - 4)^2 = 9A \implies A^2 - 8A + 16 = 9A \implies A^2 - 17A + 16 = 0.$$
   Szorzattá alakítva:
   $$(A - 16)(A - 1) = 0.$$
   - $A = 1$ esetén $A - 4 = -3 \ne 3\sqrt{1} = 3$, így ez hamis gyök (a négyzetre emelés hozta be).
   - $A = 16$ esetén $16 - 4 = 12 = 3\sqrt{16} = 3 \cdot 4 = 12$, amely valóban megoldás.
   Tehát az egyetlen fixpont $L = 16$.

2. **Monotonitás és korlátosság bizonyítása teljes indukcióval:**
   Állítás: Minden $n \ge 1$ egész számra
   $$1 \le x_n < x_{n+1} < 16.$$
   - **Bázislépés ($n = 1$):**
     $x_1 = 1$.
     $x_2 = 3\sqrt{1} + 4 = 7$.
     Nyilvánvalóan $1 \le 1 < 7 < 16$, azaz $1 \le x_1 < x_2 < 16$ teljesül.
   - **Indukciós feltevés:**
     Tegyük fel, hogy valamely $k \ge 1$-re $x_k < x_{k+1} < 16$.
   - **Indukciós lépés:**
     Mivel a négyzetgyökfüggvény szigorúan monoton növekvő a $[0, +\infty)$ intervallumon, az $f(x) = 3\sqrt{x} + 4$ függvény is szigorúan monoton növekvő. Ezért a függvényt alkalmazva az indukciós feltevés egyenlőtlenségeire:
     $$x_k < x_{k+1} < 16 \implies f(x_k) < f(x_{k+1}) < f(16).$$
     Mivel $f(x_k) = x_{k+1}$, $f(x_{k+1}) = x_{k+2}$, és $f(16) = 3\sqrt{16} + 4 = 16$:
     $$x_{k+1} < x_{k+2} < 16.$$
   A matematikai indukció elve alapján az állítás minden $n \ge 1$-re igaz.

3. **Konvergencia és határérték:**
   - A sorozat **szigorúan monoton növekvő**, mert $x_n < x_{n+1}$ minden $n \ge 1$-re.
   - A sorozat **felülről korlátos**, mert $x_n < 16$ minden $n \ge 1$-re (a $16$ felső korlát).
   - A valós számok alaptétele (monotonitási tétel) szerint minden felülről korlátos monoton növekvő sorozat **konvergens**.
   - Mivel a határértéknek az $f(x) = x$ egyenlet gyökének kell lennie, és $x_n \ge x_2 = 7 > 1$, a határérték csak a $16$ lehet:
     $$\lim_{n \to \infty} x_n = 16.$$

::: elmelet
**Elméleti háttér — rekurziók fixponttételének alkalmazása:**
- Egy $x_{n+1} = f(x_n)$ rekurziónál, ha $f$ folytonos és monoton növekvő egy $[a, b]$ intervallumon úgy, hogy $f(b) = b$ és $x > f(x)$ az $x > b$ helyeken, illetve $f(x) > x$ az $a \le x < b$ helyeken, akkor a $b$ pont **vonzó fixpont**: bármely $x_1 \in [a, b)$ kezdőértékből indulva a sorozat szigorúan monoton növekedve konvergál $b$-hez.
:::

## 5. feladat

Legyen $a_n$ és $b_n$ pozitív tagú sorozat. Igaz-e, hogy ha $\frac{a_n}{b_n}$ monoton, akkor $\frac{a_1 + \dots + a_n}{b_1 + \dots + b_n}$ is monoton?

**Megoldás.**

**Az állítás IGAZ.**

Ha $\frac{a_n}{b_n}$ monoton növekvő (csökkenő), akkor a részletösszegek hányadosa, $\frac{a_1 + \dots + a_n}{b_1 + \dots + b_n}$ is monoton növekvő (csökkenő).

*Bizonyítás:*
Vezessük be a következő jelöléseket:
$$c_n = \frac{a_n}{b_n}, \qquad A_n = \sum_{k=1}^n a_k, \qquad B_n = \sum_{k=1}^n b_k, \qquad S_n = \frac{A_n}{B_n} = \frac{a_1 + \dots + a_n}{b_1 + \dots + b_n}.$$
Mivel a feltétel szerint $a_k, b_k > 0$ minden $k$-ra, $A_n > 0$, $B_n > 0$ és $c_n > 0$.

1. **A differencia átalakítása:**
   Számítsuk ki a két szomszédos tag, $S_{n+1}$ és $S_n$ különbségét:
   $$S_{n+1} - S_n = \frac{A_{n+1}}{B_{n+1}} - \frac{A_n}{B_n} = \frac{A_n + a_{n+1}}{B_n + b_{n+1}} - \frac{A_n}{B_n}$$
   $$= \frac{B_n(A_n + a_{n+1}) - A_n(B_n + b_{n+1})}{B_n(B_n + b_{n+1})} = \frac{B_n A_n + B_n a_{n+1} - A_n B_n - A_n b_{n+1}}{B_n B_{n+1}}$$
   $$= \frac{B_n a_{n+1} - A_n b_{n+1}}{B_n B_{n+1}} = \frac{b_{n+1} B_n \left(\frac{a_{n+1}}{b_{n+1}} - \frac{A_n}{B_n}\right)}{B_n B_{n+1}} = \frac{b_{n+1}}{B_{n+1}} \left(c_{n+1} - S_n\right).$$
   Mivel $b_{n+1} > 0$ és $B_{n+1} > 0$, a tört előjele pozitív: $\frac{b_{n+1}}{B_{n+1}} > 0$.
   Ezért a különbség előjele kizárólag a $\left(c_{n+1} - S_n\right)$ tényező előjelétől függ:
   $$S_{n+1} \ge S_n \iff c_{n+1} \ge S_n.$$

2. **$S_n$ mint súlyozott számtani közép:**
   Írjuk fel az $S_n$ összeget a $c_k = \frac{a_k}{b_k}$ tagok segítségével ($a_k = b_k c_k$):
   $$S_n = \frac{a_1 + a_2 + \dots + a_n}{b_1 + b_2 + \dots + b_n} = \frac{b_1 c_1 + b_2 c_2 + \dots + b_n c_n}{b_1 + b_2 + \dots + b_n}.$$
   Ez a kifejezés a $c_1, c_2, \dots, c_n$ pozitív számok **súlyozott számtani közepe** a pozitív $b_1, \dots, b_n$ súlyokkal.
   Bármely súlyozott számtani közép a legkisebb és a legnagyobb tag közé esik:
   $$\min(c_1, \dots, c_n) \le S_n \le \max(c_1, \dots, c_n).$$

3. **A monotonitás levezetése a két esetben:**
   - **1. eset: ha $\frac{a_n}{b_n}$ monoton növekvő:**
     Ekkor $c_1 \le c_2 \le \dots \le c_n \le c_{n+1}$.
     A maximum tehát $\max(c_1, \dots, c_n) = c_n$, amiből következik:
     $$S_n \le c_n \le c_{n+1} \implies c_{n+1} - S_n \ge 0.$$
     Ezért:
     $$S_{n+1} - S_n = \frac{b_{n+1}}{B_{n+1}} (c_{n+1} - S_n) \ge 0 \implies S_{n+1} \ge S_n.$$
     Tehát az $(S_n)$ sorozat is **monoton növekvő**.
     *(Sőt, ha $c_n$ szigorúan monoton növekvő, akkor $S_n < c_n < c_{n+1}$, így $S_n$ szigorúan monoton növekvő).*

   - **2. eset: ha $\frac{a_n}{b_n}$ monoton csökkenő:**
     Ekkor $c_1 \ge c_2 \ge \dots \ge c_n \ge c_{n+1}$.
     A minimum tehát $\min(c_1, \dots, c_n) = c_n$, így:
     $$S_n \ge c_n \ge c_{n+1} \implies c_{n+1} - S_n \le 0.$$
     Ezért:
     $$S_{n+1} - S_n = \frac{b_{n+1}}{B_{n+1}} (c_{n+1} - S_n) \le 0 \implies S_{n+1} \le S_n.$$
     Tehát az $(S_n)$ sorozat is **monoton csökkenő**.

Mivel mindkét esetben megmarad a monotonitás, az állítás igaz.

::: elmelet
**Elméleti háttér — mediáns egyenlőtlenség és Stolz–Cesàro-tétel:**
- Két pozitív tört mediánsa (mediant) mindig a két tört közé esik: ha $\frac{a}{b} \le \frac{c}{d}$ ($b, d > 0$), akkor $\frac{a}{b} \le \frac{a+c}{b+d} \le \frac{c}{d}$.
- Ennek diszkrét integrális megfelelője a Cesàro–Stolz-tétel alapja: ha az „érintőmeredekség” $\frac{a_n}{b_n} = \frac{A_n - A_{n-1}}{B_n - B_{n-1}}$ monoton, akkor a „húrmeredekség” $\frac{A_n}{B_n}$ is monoton, és a határértékük (ha létezik) megegyezik.
:::

## 6. feladat

Tegyük föl, hogy $1 < a_n < 10$ minden $n$-re. Mutassuk meg, hogy $\liminf (a_n \cdot b_n) = (\liminf a_n) \cdot (\liminf b_n)$ akkor és csak akkor teljesül minden $1 < b_n < 10$ sorozatra, ha $a_n$ konvergens.

**Megoldás.**

A tételt két irányban bizonyítjuk:
1. Ha $a_n$ konvergens, akkor minden megadott $b_n$ sorozatra teljesül az egyenlőség ($\Leftarrow$).
2. Ha $a_n$ nem konvergens, akkor konstruálható olyan $1 < b_n < 10$ sorozat, amelyre az egyenlőség sérül ($\Rightarrow$).

---

### 1. Irány ($\Leftarrow$): Ha $a_n$ konvergens, az egyenlőség teljesül

Tegyük fel, hogy $a_n$ konvergens, és legyen $\lim_{n \to \infty} a_n = A$.
Mivel minden $n$-re $1 < a_n < 10$, a határértékre $1 \le A \le 10$ teljesül, különösen $A > 0$.
Ekkor $\liminf_{n \to \infty} a_n = A$.
Legyen $b_n$ tetszőleges sorozat, amelyre $1 < b_n < 10$. Ekkor $b_n$ korlátos, így létezik véges limesz inferiorja: jelölje $B = \liminf_{n \to \infty} b_n$. Mivel $1 \le b_n \le 10$, ezért $1 \le B \le 10$.

Azt kell megmutatnunk, hogy $\liminf_{n \to \infty} (a_n b_n) = A \cdot B$.
- **Létezik $AB$-hez tartó részsorozat:**
  A limesz inferior definíciója szerint létezik olyan $(b_{n_k})$ részsorozat, amelyre $\lim_{k \to \infty} b_{n_k} = B$.
  Mivel $a_n \to A$, a megfelelő $(a_{n_k})$ részsorozat is $A$-hoz tart. A határértékek szorzási szabálya szerint:
  $$\lim_{k \to \infty} (a_{n_k} b_{n_k}) = A \cdot B.$$
  Ezért $A \cdot B$ az $(a_n b_n)$ sorozat egy torlódási értéke, így az infimumukra:
  $$\liminf_{n \to \infty} (a_n b_n) \le A \cdot B.$$

- **Minden torlódási érték legalább $AB$:**
  Legyen $c$ az $(a_n b_n)$ sorozat tetszőleges torlódási értéke. Ekkor létezik olyan $(n_m)$ részsorozat, amelyre $\lim_{m \to \infty} (a_{n_m} b_{n_m}) = c$.
  Mivel $a_{n_m} \to A > 0$:
  $$b_{n_m} = \frac{a_{n_m} b_{n_m}}{a_{n_m}} \to \frac{c}{A}.$$
  Tehát $\frac{c}{A}$ a $(b_n)$ sorozat egy torlódási értéke, így definíció szerint $\frac{c}{A} \ge \liminf b_n = B$.
  Mivel $A > 0$, beszorozva $A$-val kapjuk:
  $$c \ge A \cdot B.$$
  Mivel minden torlódási érték legalább $AB$, a limesz inferiorra is:
  $$\liminf_{n \to \infty} (a_n b_n) \ge A \cdot B.$$

A két egyenlőtlenségből adódik, hogy $\liminf(a_n b_n) = A \cdot B = (\liminf a_n)(\liminf b_n)$.

---

### 2. Irány ($\Rightarrow$): Ha az egyenlőség minden $1 < b_n < 10$ sorozatra teljesül, akkor $a_n$ szükségképpen konvergens

Bizonyítsunk indirekt módon: tegyük fel, hogy $a_n$ nem konvergens.
Mivel minden $n$-re $1 < a_n < 10$, az $(a_n)$ sorozat korlátos. Egy korlátos sorozat pontosan akkor nem konvergens, ha a limesz inferiorja szigorúan kisebb a limesz szuperiorjánál:
$$\alpha = \liminf_{n \to \infty} a_n < \beta = \limsup_{n \to \infty} a_n.$$
Mivel $1 < a_n < 10$, ezért $1 \le \alpha < \beta \le 10$.
Válasszuk a két érték számtani közepét választóvonalnak:
$$M = \frac{\alpha + \beta}{2}.$$
Ekkor $\alpha < M < \beta$.
Mivel $\alpha$ és $\beta$ torlódási értékek, az $a_n < M$ egyenlőtlenség is, és az $a_n \ge M$ egyenlőtlenség is végtelen sok $n$ indexre teljesül.

Konstruáljunk egy $(b_n)$ sorozatot úgy, hogy kompenzálja $a_n$ ingadozását: legyen $b_n$ nagy ott, ahol $a_n$ kicsi, és kicsi ott, ahol $a_n$ nagy!
Definiáljuk $b_n$-et a következőképpen:
$$b_n = \begin{cases} 8, & \text{ha } a_n < M, \\ 2, & \text{ha } a_n \ge M. \end{cases}$$
Ellenőrizzük a feltételeket:
- Mivel $b_n \in \{2, 8\}$, minden $n$-re $1 < 2 \le b_n \le 8 < 10$ teljesül.
- Mivel mindkét eset végtelen sokszor fordul elő, a $(b_n)$ sorozat torlódási értékei pontosan a $\{2, 8\}$ halmaz, így:
  $$\liminf_{n \to \infty} b_n = 2.$$

Számítsuk ki a feltételezett egyenlőség jobb oldalát:
$$(\liminf a_n) \cdot (\liminf b_n) = \alpha \cdot 2 = 2\alpha.$$

Most becsüljük alulról az $(a_n b_n)$ szorzatsorozat limesz inferiorját:
- Ha $a_n < M$, akkor $b_n = 8$, így $a_n b_n = 8 a_n$.
  Mivel minden elég nagy $n$-re $a_n > \alpha - \varepsilon$ (tetszőleges $\varepsilon > 0$-ra), ezért $8 a_n > 8\alpha - 8\varepsilon$.
- Ha $a_n \ge M$, akkor $b_n = 2$, így:
  $$a_n b_n = 2 a_n \ge 2 M = 2 \left(\frac{\alpha + \beta}{2}\right) = \alpha + \beta.$$

Ezért tetszőleges elég nagy $n$ indexre:
$$a_n b_n \ge \min(8(\alpha - \varepsilon), \alpha + \beta).$$
Határértéket véve $\varepsilon \to 0$ esetén:
$$\liminf_{n \to \infty} (a_n b_n) \ge \min(8\alpha, \alpha + \beta).$$

Hasonlítsuk össze ezt az értéket $2\alpha$-val:
- Mivel $\alpha \ge 1$, ezért $8\alpha > 2\alpha$.
- Mivel $\beta > \alpha$, ezért $\alpha + \beta > \alpha + \alpha = 2\alpha$.
Mindkét ágon szigorúan nagyobb értéket kapunk, mint $2\alpha$, tehát:
$$\liminf_{n \to \infty} (a_n b_n) \ge \min(8\alpha, \alpha + \beta) > 2\alpha = (\liminf a_n) \cdot (\liminf b_n).$$
Ez ellentmond annak, hogy $\liminf (a_n b_n) = (\liminf a_n) \cdot (\liminf b_n)$ teljesül minden megengedett $(b_n)$ sorozatra!

Az ellentmondás abból a feltevésből származott, hogy $a_n$ nem konvergens.
Következésképpen $a_n$-nek konvergensnek kell lennie.

::: elmelet
**Elméleti háttér — szorzatsorozat limesz inferiorja:**
- Általában pozitív sorozatokra csak az alábbi egyenlőtlenség garantált:
  $$\liminf (a_n b_n) \ge (\liminf a_n)(\liminf b_n).$$
- Egyenlőség nem mindig áll fenn: a két sorozat fáziseltolódásával (amikor az egyik kicsi, a másik nagy) a szorzat alsó burkolója megemelhető.
- Az egyenlőség univerzális érvényessége (minden korlátos pozitív tesztsorozatra) pontosan akkor teljesül, ha az egyik sorozat egyetlen pont köré sűrűsödik, azaz konvergens.
:::

## 7. feladat

Legyen $(b_n)$ pozitív számokból álló sorozat. Legyen továbbá $a_1 = 1$, és $a_{n+1} = a_n + \frac{b_n}{a_n}$ minden $n \ge 1$ esetén. Mutassuk meg, hogy $a_n$ pontosan akkor konvergál, ha a $\sum_{i=1}^{\infty} b_i$ sor konvergál.

**Megoldás.**

A feltétel szerint $b_n > 0$ minden $n \ge 1$-re, $a_1 = 1 > 0$, és a rekurzió:
$$a_{n+1} = a_n + \frac{b_n}{a_n} \quad (n \ge 1).$$

1. **A sorozat alapvető tulajdonságai:**
   - Mivel $a_1 = 1 > 0$ és $b_n > 0$, teljes indukcióval azonnal adódik, hogy $a_n > 0$ minden $n \ge 1$-re.
   - A differencia:
     $$a_{n+1} - a_n = \frac{b_n}{a_n} > 0.$$
     Tehát az $(a_n)$ sorozat **szigorúan monoton növekvő**.
   - Mivel monoton növekvő, két eset lehetséges: vagy felülről korlátos és konvergens egy véges $L \ge 1$ határértékhez, vagy felülről nem korlátos és $\lim_{n \to \infty} a_n = +\infty$.

---

2. **1. Irány ($\implies$): Ha $a_n$ konvergens, akkor $\sum_{i=1}^\infty b_i$ konvergens**
   Emeljük négyzetre a rekurziós összefüggést:
   $$a_{k+1}^2 = \left(a_k + \frac{b_k}{a_k}\right)^2 = a_k^2 + 2b_k + \frac{b_k^2}{a_k^2}.$$
   Mivel $\frac{b_k^2}{a_k^2} > 0$, ebből kapjuk:
   $$a_{k+1}^2 - a_k^2 = 2b_k + \frac{b_k^2}{a_k^2} > 2b_k.$$
   Összegezzük ezt az egyenlőtlenséget $k = 1$-től $n-1$-ig:
   $$\sum_{k=1}^{n-1} \left(a_{k+1}^2 - a_k^2\right) > 2 \sum_{k=1}^{n-1} b_k.$$
   A bal oldalon teleszkopikus összeg áll:
   $$a_n^2 - a_1^2 > 2 \sum_{k=1}^{n-1} b_k.$$
   Mivel $a_1 = 1$:
   $$\sum_{k=1}^{n-1} b_k < \frac{a_n^2 - 1}{2}.$$
   Tegyük fel, hogy $(a_n)$ konvergens, azaz létezik véges határértéke: $\lim_{n \to \infty} a_n = L < +\infty$.
   Mivel $a_n$ monoton növekvő, minden $n$-re $a_n \le L$. Ezért:
   $$\sum_{k=1}^{n-1} b_k < \frac{L^2 - 1}{2}.$$
   A pozitív tagú $\sum_{i=1}^\infty b_i$ sor részletösszegei monoton növekednek és felülről korlátosak a $\frac{L^2 - 1}{2}$ konstanssal.
   A monotonitási tétel miatt a részletösszegek sorozata konvergens, azaz:
   $$\sum_{i=1}^{\infty} b_i < +\infty \quad \text{konvergens}.$$

---

3. **2. Irány ($\Longleftarrow$): Ha $\sum_{i=1}^\infty b_i$ konvergens, akkor $a_n$ konvergens**
   Tegyük fel, hogy $\sum_{i=1}^\infty b_i = S < +\infty$ konvergens.
   Mivel $a_n$ szigorúan monoton növekvő és $a_1 = 1$, minden $k \ge 1$ indexre:
   $$a_k \ge a_1 = 1.$$
   Ezért a rekurzióból:
   $$a_{k+1} - a_k = \frac{b_k}{a_k} \le \frac{b_k}{a_1} = b_k.$$
   Összegezzük ezt az egyenlőtlenséget $k = 1$-től $n-1$-ig:
   $$\sum_{k=1}^{n-1} (a_{k+1} - a_k) \le \sum_{k=1}^{n-1} b_k.$$
   A bal oldalon ismét teleszkopikus összeg van:
   $$a_n - a_1 \le \sum_{k=1}^{n-1} b_k.$$
   Mivel $a_1 = 1$ és $\sum_{k=1}^{n-1} b_k < \sum_{k=1}^{\infty} b_k = S$:
   $$a_n \le 1 + S.$$
   Ez azt jelenti, hogy az $(a_n)$ sorozat felülről korlátos (felső korlátja $1 + S$).
   Mivel korábban láttuk, hogy $(a_n)$ monoton növekvő, és most beláttuk, hogy felülről korlátos, a monoton konvergencia tétel alapján az $(a_n)$ sorozat **konvergens**.

---

4. **Következtetés:**
   A két irány egybevetésével igazoltuk, hogy $a_n$ pontosan akkor konvergens, ha a $\sum_{i=1}^\infty b_i$ numerikus sor konvergens.

::: elmelet
**Elméleti háttér — nemlineáris rekurziók és sorok kapcsolata:**
- Teleszkopikus összegezés négyzetre emeléssel: Ha egy sorozat $a_{n+1} - a_n \approx \frac{b_n}{a_n}$ alakban növekszik, a négyzetének növekménye $a_{n+1}^2 - a_n^2 \approx 2b_n$, ami linearizálja a kapcsolatot a sorozat és a sor részletösszegei között.
- Ez az analízisben gyakran alkalmazott módszer az Euler-féle rekurziók aszimptotikájának vizsgálatára (pl. $a_{n+1} = a_n + 1/a_n$ esetén $a_n \sim \sqrt{2n}$).
:::
