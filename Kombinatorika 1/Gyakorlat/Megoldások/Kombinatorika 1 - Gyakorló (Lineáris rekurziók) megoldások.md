# Kombinatorika 1 – Gyakorló feladatsor: Lineáris rekurziók – megoldások

### Kombinatorika 1 normál · Gyakorló feladatsor megoldásai

## 1. feladat

Oldd meg az alábbi rekurziókat!
a) $a_1 = 2, a_2 = 7, a_n = 2a_{n-1} + 3a_{n-2}$ ($n > 2$);
b) $a_1 = 2, a_2 = 6, a_n = 2a_{n-1} - 2a_{n-2}$ ($n > 2$);
c) $a_1 = 1, a_2 = 3, a_n = 10a_{n-1} - 25a_{n-2}$ ($n > 2$).

**Megoldás.**

**a)** A karakterisztikus egyenlet:
$$r^2 - 2r - 3 = 0 \iff (r - 3)(r + 1) = 0 \implies r_1 = 3, \quad r_2 = -1.$$
Mivel a gyökök különbözők, az általános megoldás $a_n = c_1 \cdot 3^n + c_2 \cdot (-1)^n$. A kezdőfeltételekből ($n = 1, 2$):
$$\begin{aligned}
n &= 1: & 3c_1 - c_2 &= 2, \\
n &= 2: & 9c_1 + c_2 &= 7.
\end{aligned}$$
A két egyenletet összeadva $12c_1 = 9 \implies c_1 = \frac{3}{4}$, innen $c_2 = \frac{9}{4} - 2 = \frac{1}{4}$. Tehát minden $n \ge 1$-re:
$$a_n = \frac{3}{4} \cdot 3^n + \frac{1}{4} \cdot (-1)^n = \mathbf{\frac{3^{n+1} + (-1)^n}{4}}.$$
*(Megjegyzés: $a_0 = \frac{3 + 1}{4} = 1$-re is teljesül a rekurzió, hiszen $2a_1 + 3a_0 = 4 + 3 = 7 = a_2$.)*

**b)** A karakterisztikus egyenlet:
$$r^2 - 2r + 2 = 0 \implies r_{1,2} = \frac{2 \pm \sqrt{4 - 8}}{2} = 1 \pm i.$$
Mivel a két komplex gyök különböző, itt is $a_n = c_1(1 + i)^n + c_2(1 - i)^n$ alakban keressük a megoldást. (Számolási könnyebbségként a rekurzióból meghatározhatjuk $a_0$-t is: $a_2 = 2a_1 - 2a_0 \implies 6 = 4 - 2a_0 \implies a_0 = -1$.) Ekkor $n = 0$ és $n = 1$-re:
$$\begin{aligned}
n &= 0: & c_1 + c_2 &= -1, \\
n &= 1: & (1 + i)c_1 + (1 - i)c_2 &= (c_1 + c_2) + i(c_1 - c_2) = 2.
\end{aligned}$$
Behelyettesítve $c_1 + c_2 = -1$-et: $i(c_1 - c_2) = 3 \implies c_1 - c_2 = -3i$. Innen $c_1 = \frac{-1 - 3i}{2}$ és $c_2 = \frac{-1 + 3i}{2}$, így a komplex alak minden $n \ge 1$-re:
$$a_n = \mathbf{\frac{(-1 - 3i)(1 + i)^n + (-1 + 3i)(1 - i)^n}{2}}.$$

*Trigonometrikus (valós) alak:* Írjuk fel az $1 \pm i$ gyököket trigonometrikus alakban: $|1 \pm i| = \sqrt{2}$, szögük $\pm\frac{\pi}{4}$, tehát $(1 \pm i)^n = 2^{n/2}\left(\cos\frac{n\pi}{4} \pm i\sin\frac{n\pi}{4}\right)$. Behelyettesítve:
$$a_n = 2^{n/2}\left[(c_1 + c_2)\cos\frac{n\pi}{4} + i(c_1 - c_2)\sin\frac{n\pi}{4}\right] = \mathbf{2^{n/2}\left(3\sin\frac{n\pi}{4} - \cos\frac{n\pi}{4}\right)} \qquad (n \ge 1).$$

*Kifejtés maradékosztályonként:* Mivel $(1 \pm i)^4 = (\pm 2i)^2 = -4$, az $n = 4k + r$ ($k \ge 0$, $r \in \{1, 2, 3, 4\}$) alakú indexekre $a_{4k+r} = (-4)^k a_r$:
- $a_{4k+1} = 2(-4)^k$,
- $a_{4k+2} = 6(-4)^k$,
- $a_{4k+3} = 8(-4)^k$,
- $a_{4k+4} = 4(-4)^k$.

**c)** A karakterisztikus egyenlet:
$$r^2 - 10r + 25 = 0 \iff (r - 5)^2 = 0,$$
tehát $r = 5$ **kétszeres gyök**. Ekkor az általános megoldás $a_n = (c_1 + c_2 n)\cdot 5^n$. A kezdőfeltételekből ($n = 1, 2$):
$$\begin{aligned}
n &= 1: & 5(c_1 + c_2) &= 1 \implies c_1 + c_2 = \frac{1}{5}, \\
n &= 2: & 25(c_1 + 2c_2) &= 3 \implies c_1 + 2c_2 = \frac{3}{25}.
\end{aligned}$$
Kivonva az elsőből a másodikat (vagy a másodikból az elsőt): $c_2 = \frac{3}{25} - \frac{5}{25} = -\frac{2}{25}$, majd $c_1 = \frac{5}{25} + \frac{2}{25} = \frac{7}{25}$. Tehát minden $n \ge 1$-re:
$$a_n = \left(\frac{7}{25} - \frac{2}{25}n\right) 5^n = \mathbf{(7 - 2n)5^{n-2}}.$$

::: elmelet
**Elméleti háttér — a másodrendű karakterisztikus egyenlet három esete.** Az $a_n = c_1 a_{n-1} + c_2 a_{n-2}$ rekurzió karakterisztikus egyenlete $r^2 - c_1 r - c_2 = 0$:
1. Ha két különböző valós gyök van ($r_1 \neq r_2$), $a_n = A r_1^n + B r_2^n$.
2. Ha két konjugált komplex gyök van ($r_{1,2} = \rho e^{\pm i\varphi}$), a komplex alak ugyanúgy érvényes, amely valós formában $\rho^n(u\cos(n\varphi) + v\sin(n\varphi))$ oszcilláló sorozatot ad.
3. Ha $r_0$ kétszeres gyök, az alaptér bázisa $r_0^n$ és $n r_0^n$, így $a_n = (A + Bn)r_0^n$.
:::

---

## 2. feladat

Jelölje $a_n$ az alábbi objektumok számát ($a_1, a_2$, rekurzió $a_n$-re, valamint $a_0$):
a) $n$ betűs $\{a, b, c\}$-szavak $bb$ nélkül;
b) $\{1, \dots, n\}$ részhalmazai két szomszédos szám nélkül;
c) $n$ euró elköltése $1$ eurós fagyi / $1$ eurós képeslap / $2$ eurós buszjeggyel;
d) $n$ betűs $\{a, b, c\}$-szavak $bc$ nélkül.

**Megoldás.**

Mindegyik esetben $a_0 = \mathbf{1}$ (egy üres szó / az üres halmaz / $0$ euró elköltése egyetlen mód, azaz „nem vásárolunk semmit”), és az alábbi rekurziók $n \ge 2$-re érvényesek.

**a) $\{a, b, c\}$-szavak $bb$ nélkül:**
- Kis értékek: $a_0 = 1$, $a_1 = \mathbf{3}$ ($a, b, c$), $a_2 = 3^2 - 1 = \mathbf{8}$ (csak $bb$ tiltott).
- Rekurzió ($n \ge 2$): Nézzük egy jó $n$ betűs szó **első** betűjét (vagy utolsó betűjét):
  - Ha az első betű $a$ vagy $c$ ($2$ lehetőség), a maradék $(n - 1)$ betű tetszőleges jó szó lehet: $2a_{n-1}$ lehetőség.
  - Ha az első betű $b$, akkor a második betű nem lehet $b$, így a második betű $a$ vagy $c$ ($2$ lehetőség), az ezután következő $(n - 2)$ betű pedig ismét tetszőleges jó szó: $2a_{n-2}$ lehetőség.
  A két eset kizárja egymást:
  $$\mathbf{a_n = 2a_{n-1} + 2a_{n-2}} \qquad (n \ge 2).$$

**b) Szomszédos elemeket nem tartalmazó részhalmazok az $\{1, \dots, n\}$-ből:**
- Kis értékek: $a_0 = 1$, $a_1 = \mathbf{2}$ ($\emptyset, \{1\}$), $a_2 = \mathbf{3}$ ($\emptyset, \{1\}, \{2\}$).
- Rekurzió ($n \ge 2$): Döntsünk az $n$ szám beválasztásáról:
  - Ha $n \notin R$, akkor $R \subseteq \{1, \dots, n - 1\}$ tetszőleges jó részhalmaz: $a_{n-1}$ lehetőség.
  - Ha $n \in R$, akkor $(n - 1) \notin R$, így $R \setminus \{n\} \subseteq \{1, \dots, n - 2\}$ tetszőleges jó részhalmaz: $a_{n-2}$ lehetőség.
  Összesen (ez éppen a Fibonacci-sorozat eltolva, $a_n = F_{n+2}$):
  $$\mathbf{a_n = a_{n-1} + a_{n-2}} \qquad (n \ge 2).$$

**c) $n$ euró elköltése ($1$ € fagyi, $1$ € képeslap, $2$ € buszjegy):**
- Kis értékek: $a_0 = 1$, $a_1 = \mathbf{2}$ (fagyi vagy képeslap), $a_2 = 2 \cdot 2 + 1 = \mathbf{5}$ (két $1$ €-s vásárlás $4$-féleképpen + $1$ buszjegy).
- Rekurzió ($n \ge 2$): Az első napon választott termék ára szerint:
  - Ha $1$ euróst veszünk ($2$-féle: fagyi vagy képeslap), a maradék $n - 1$ euróra $a_{n-1}$ mód marad: $2a_{n-1}$.
  - Ha $2$ euróst veszünk ($1$-féle: buszjegy), a maradék $n - 2$ euróra $a_{n-2}$ mód marad: $a_{n-2}$.
  Összesen:
  $$\mathbf{a_n = 2a_{n-1} + a_{n-2}} \qquad (n \ge 2).$$

**d) $\{a, b, c\}$-szavak $bc$ nélkül ($cb$ megengedett):**
- Kis értékek: $a_0 = 1$, $a_1 = \mathbf{3}$ ($a, b, c$), $a_2 = 3^2 - 1 = \mathbf{8}$ (csak $bc$ tiltott).
- Rekurzió ($n \ge 2$): Elemezzük egy $bc$-mentes $n$-betűs szó első betűjét ($n \ge 2$):
  - Ha az első betű $a$ vagy $c$, elé tehetjük tetszőleges jó $(n - 1)$-betűs szó elé, hiszen sem $a\dots$, sem $c\dots$ kezdet nem hoz létre $bc$ részszót! Ez **$2a_{n-1}$** szó.
  - Ha az első betű $b$, akkor a maradék $(n - 1)$ hosszú szó jó kell legyen, *és nem kezdődhet $c$-vel*. Az összes jó $(n - 1)$ hosszú szó száma $a_{n-1}$, és pontosan $a_{n-2}$ darab kezdődik közülük $c$-vel (mivel minden jó $(n - 2)$-betűs szó elé szabad $c$-t írni!). Így a $b$-vel kezdődő jó szavak száma $a_{n-1} - a_{n-2}$.
  Összeadva a két csoportot:
  $$a_n = 2a_{n-1} + (a_{n-1} - a_{n-2}) = \mathbf{3a_{n-1} - a_{n-2}} \qquad (n \ge 2).$$
  *(Ellenőrzés: $a_2 = 3 \cdot 3 - 1 = 8$; $a_3 = 3 \cdot 8 - 3 = 21$, és valóban a $27$ hárombetűs szóból a $bc*$ ($3$) és $*bc$ ($3$) szavak diszjunktak, így $27 - 6 = 21$ jó szó van.)*

::: elmelet
**Elméleti háttér — rekurziófelírás esetszétválasztással és kivonással.** Az **a–c)** típusoknál az első lépés rögzítése azonnal kisebb hosszúságú azonos típusú feladatra redukál. A **d)** feladat trükkje különösen fontos: egy tiltott $bc$ párnál a $b$-vel kezdődő folytatások száma nem közvetlenül $k \cdot a_{n-2}$, hanem „összes $(n-1)$-es jó szó mínusz $c$-vel kezdődő jó szavak” ($a_{n-1} - a_{n-2}$), ami először vezet negatív ($-a_{n-2}$) tagot tartalmazó rekurzióhoz!
:::

---

## 3. feladat

Adj meg olyan rekurziót, melynek megoldása
a) $a_n = 5 \cdot 2^n - 3 \cdot 5^n$;
b) $a_n = n \cdot \pi^n$!

**Megoldás.**

**a)** A képlet két exponenciális tag lineáris kombinációja, amelyek alapjai $r_1 = 2$ és $r_2 = 5$. Ezért olyan másodrendű lineáris rekurziót keresünk, amelynek a karakterisztikus gyökei $2$ és $5$:
$$(r - 2)(r - 5) = r^2 - 7r + 10 = 0 \implies r^2 = 7r - 10.$$
Ennek megfelelő rekurzió:
$$a_n = 7a_{n-1} - 10a_{n-2} \qquad (n \ge 3).$$
Számoljuk ki a kezdeti értékeket ($n = 1, 2$):
$$a_1 = 5 \cdot 2 - 3 \cdot 5 = 10 - 15 = -5, \qquad a_2 = 5 \cdot 4 - 3 \cdot 25 = 20 - 75 = -55.$$
*(Vagy $a_0 = 5 - 3 = 2, a_1 = -5$-tel már $n \ge 2$-től érvényes.)*

**Válasz:** $a_1 = -5$, $a_2 = -55$, és $n \ge 3$-ra $\mathbf{a_n = 7a_{n-1} - 10a_{n-2}}$.

**b)** Az $a_n = n \cdot \pi^n$ alak ($0 \cdot \pi^n + 1 \cdot n\pi^n$) akkor jelenik meg a megoldásban, ha $r = \pi$ **kétszeres gyöke** a karakterisztikus egyenletnek:
$$(r - \pi)^2 = r^2 - 2\pi r + \pi^2 = 0 \implies r^2 = 2\pi r - \pi^2.$$
Ennek megfelelő rekurzió:
$$a_n = 2\pi a_{n-1} - \pi^2 a_{n-2} \qquad (n \ge 3).$$
Kezdeti értékek ($n = 1, 2$):
$$a_1 = 1 \cdot \pi^1 = \pi, \qquad a_2 = 2 \cdot \pi^2 = 2\pi^2.$$
*(Megjegyzés: $a_0 = 0$-val már $n \ge 2$-re is működik.)*

**Válasz:** $a_1 = \pi$, $a_2 = 2\pi^2$, és $n \ge 3$-ra $\mathbf{a_n = 2\pi a_{n-1} - \pi^2 a_{n-2}}$.

::: elmelet
**Elméleti háttér — rekurzió visszaállítása zárt alakból.** A $(r - r_1)(r - r_2) = 0$ vagy többszörös gyök esetén $(r - r_0)^k = 0$ karakterisztikus polinom kibontása közvetlenül megadja a legkisebb rendű homogén lineáris rekurziót, az adott képlet $n = 1, 2, \dots$-re való behelyettesítése pedig egyértelműen rögzíti a kezdőfeltételeket.
:::

---

## 4. feladat

Jelölje $a_n$ azt, hogy hányféleképpen költhet el egy gyerek $n$ eurót, ha minden nap egy vagy két gombóc fagyit vesz a hatféléből, gombóconként $2$ euróért (a két gombóc sorrendje nem számít, és egyforma ízek is választhatók). Add meg $a_n$-et rekurzióval! *(Megoldani nem kell.)*

**Megoldás.**

Mivel egy gombóc ára $2$ euró, a gyerek naponta:
- vagy **egy gombócot** vesz **$2$ euróért**: erre $\binom{6}{1} = 6$-féle lehetőség van (a $6$ ízből $1$);
- vagy **két gombócot** vesz **$4$ euróért**: mivel a két gombóc sorrendje nem számít, és azonos íz is választható, ez $6$-ból $2$ ismétléses kombinációja (vagy $6$ különböző ízű gombócpár $+$ $6$ egyforma ízű gombócpár):
  $$\binom{6 + 2 - 1}{2} = \binom{7}{2} = 15 + 6 = 21 \text{ lehetőség}.$$

**Kezdőértékek ($0 \le n \le 3$):**
- $a_0 = \mathbf{1}$ ($0$ eurót $1$-féleképpen költ el: nem vesz semmit).
- $a_1 = \mathbf{0}$, $a_3 = \mathbf{0}$ (valójában minden páratlan $n$-re $a_n = 0$, mert minden vásárlás páros összegű).
- $a_2 = \mathbf{6}$ ($2$ euróból pontosan $1$ napon vesz $1$ gombócot).

**Rekurzió ($n \ge 4$):** Ha $n \ge 4$, nézzük az első napi vásárlást:
- Ha az első nap $1$ gombócot vesz ($2$ euró, $6$ lehetőség), marad $n - 2$ eurója: $6a_{n-2}$ mód.
- Ha az első nap $2$ gombócot vesz ($4$ euró, $21$ lehetőség), marad $n - 4$ eurója: $21a_{n-4}$ mód.

Így a rekurzió és a hozzá tartozó kezdőfeltételek:
$$\mathbf{a_0 = 1, \quad a_1 = 0, \quad a_2 = 6, \quad a_3 = 0, \qquad a_n = 6a_{n-2} + 21a_{n-4} \quad (n \ge 4).}$$

*(Megjegyzés: ha gombóconként $1$ egységnyi párokra — azaz $k = n/2$ gombócra — indexeljük át páros $n = 2k$ esetén a $b_k = a_{2k}$ sorozatot, akkor a $b_0 = 1$, $b_1 = 6$, $b_k = 6b_{k-1} + 21b_{k-2}$ másodrendű rekurziót kapjuk.)*

::: elmelet
**Elméleti háttér — magasabb rendű és páros lépésközű rekurziók.** Amikor az egyes döntések költsége több napra/lépésre ugrik ($2$ euró és $4$ euró), a rekurzió rendje a legnagyobb lépésköz (itt $4$), ezért $4$ kezdőértékre van szükség az egyértelmű meghatározáshoz. A $2$ fagyigombóc sorrendnélküli és ismétlést megengedő választása az ismétléses kombináció ($\binom{n+k-1}{k}$) szép alkalmazása.
:::
