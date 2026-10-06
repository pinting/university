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
**Elméleti háttér — végtelen határérték.** $a_n \to -\infty$, ha minden $K$ korlátnál a sorozat egy indextől kezdve kisebb: a környezetek szerepét itt a $(-\infty, K)$ félegyenesek veszik át (ezek a $-\infty$ környezetei a bővített számegyenesen). A tagadás a szokásos szabállyal: kvantorcsere, és a $<$ helyett $\ge$.
:::

## 45. feladat

Mutassuk meg, hogy $\lim\limits_{n \to \infty} a_n = \infty$ acsa, ha $\forall K \in \mathbb{R}$-re az $(a_n)$-nek csak véges sok tagja kisebb $K$-nál.

**Megoldás.**

($\Rightarrow$) Legyen $\lim a_n = \infty$ és $K \in \mathbb{R}$. A definíció szerint van $N$, hogy $n \ge N$ esetén $a_n > K$. Így $K$-nál kisebb tag csak az $a_1, \dots, a_{N-1}$ között lehet: véges sok.

($\Leftarrow$) Legyen $K \in \mathbb{R}$ tetszőleges. A feltételt $K + 1$-re alkalmazva csak véges sok $n$ index van, amelyre $a_n < K + 1$; legyen $N$ ezek mindegyikénél nagyobb. Ekkor $n \ge N$ esetén $a_n \ge K + 1 > K$. Tehát $\lim a_n = \infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — „egy indextől kezdve” $\iff$ „csak véges sok kivétel”.** Ha egy tulajdonság egy $N$ indextől kezdve teljesül, akkor kivétel csak az első $N - 1$ tag között lehet (véges sok). Megfordítva, véges sok kivételes indexnek van maximuma, és onnan kezdve nincs kivétel. Ez a megfogalmazás teszi szemléletessé a határérték fogalmát: minden környezeten kívül csak véges sok tag van. (A $K + 1$-es trükk a szigorú és nem szigorú egyenlőtlenség közötti különbséget hidalja át.)
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
**Elméleti háttér — $+\infty$-be tartás bizonyítása alsó becsléssel.** $a_n \to +\infty$ igazolásához $a_n$-t **alulról** becsüljük egy egyszerű, nyilvánvalóan végtelenbe tartó kifejezéssel (pl. $\frac n2$, $\frac{\sqrt n}{C}$), és ebből olvassuk ki az $n_K$ küszöböt. Eszközök: domináns tag kiemelése, a „nagy fél” becslése (az összeg felének minden tagja legalább akkora, mint a középső), és a binomiális tétel egyetlen tagja ($2^n \ge \binom n2$).
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
**Elméleti háttér — konvergens sorozat „véges része” és „farka”.** Egy konvergens sorozat egy indextől kezdve a határérték tetszőlegesen kicsi környezetében marad; a „fej” (az első $N - 1$ tag) véges halmaz, és véges halmaznak mindig van maximuma és minimuma. Ha egy tag a határérték fölött van, a farok egy indextől kezdve alatta marad, így a maximumot a véges fejben kell keresni. Ez a „fej + farok” felbontás sok sorozatos bizonyítás alapja.
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
**Elméleti háttér — a szuprémum sorozatos jellemzése.** $\alpha = \sup A$ esetén minden $c < \alpha$ szám nem felső korlát, tehát van $a \in A$, amelyre $a > c$. Ezt iterálva — mindig az előző tagnál és $\alpha - \frac1n$-nél is nagyobb $c$-t választva — szigorúan növő, $\alpha$-hoz tartó sorozatot kapunk; a konvergenciát a **rendőrelv** adja ($\alpha - \frac1n < a_{n+1} < \alpha$). Az $\alpha \notin A$ feltétel kell ahhoz, hogy a sorozat sose érje el $\alpha$-t (és így mindig lehessen szigorúan növelni).
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
**Elméleti háttér — domináns tag és rendőrelv $n$-edik gyökre.** $\sqrt[n]{\text{összeg}}$ esetén a legnagyobb nagyságrendű tag dominál: alulról becsüljük csak vele, felülről a tagok számával (vagy egy polinommal) szorozva. Kulcs: $\sqrt[n]{c} \to 1$ ($c > 0$) és $\sqrt[n]{n} \to 1$, így polinomiális szorzók $n$-edik gyöke $1$-hez tart. A **rendőrelv**: ha $a_n \le b_n \le c_n$ és $a_n, c_n \to L$, akkor $b_n \to L$.
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
**Elméleti háttér — kritikus határértékek.** A határérték és a műveletek kapcsolatáról szóló tételek a „$0 \cdot \infty$”, „$\infty - \infty$”, „$\frac00$”, „$\frac\infty\infty$” esetekben nem mondanak semmit: ezek **kritikus (határozatlan)** típusok. Kritikusságot példákkal igazolunk: olyan sorozatpárokat adunk, amelyek az adott típusba esnek, de a művelet eredménye különböző határértékű (vagy divergens).
:::

## 51. feladat

Mutassuk meg, hogy ha $a_n \to 0$ és $a_n \neq 0$, akkor $\frac{1}{|a_n|} \to \infty$.

**Megoldás.**

Legyen $K > 0$. Az $a_n \to 0$ definícióját $\varepsilon = \frac1K$-ra alkalmazva van $N$, hogy $n \ge N$ esetén $0 < |a_n| < \frac1K$ (a pozitivitás az $a_n \neq 0$ feltételből jön). Ekkor $\frac{1}{|a_n|} > K$. Tehát $\frac{1}{|a_n|} \to +\infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — $\frac10$ és a reciprok.** A definíciók „összefordítása”: ha $|a_n| < \varepsilon$ egy indextől, akkor $\frac{1}{|a_n|} > \frac1\varepsilon$; $\varepsilon = \frac1K$ választással ez épp a $+\infty$-be tartás definíciója. Előjelről nem tudunk semmit, ezért csak $\frac{1}{|a_n|}$-ről állíthatunk végtelen határértéket ($\frac{1}{a_n}$ váltakozó előjelnél divergens lehet).
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
**Elméleti háttér — korlátosság kontra szélsőértékek.** A korlátosság csak azt mondja, hogy van felső és alsó korlát (így létezik szuprémum és infimum), de nem, hogy ezeket a sorozat el is éri. Két „ellentétes oldalról” közelítő részsorozat egyszerre akadályozza meg a maximum és a minimum létezését — ez csak divergens sorozatnál lehetséges (47. feladat).
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
**Elméleti háttér — standard technikák.** (1) Racionális törtnél **a legmagasabb fokú taggal osztunk** számlálót és nevezőt. (2) Gyökös különbségnél **gyöktelenítés**. (3) Korlátos szorozva nullsorozattal nullsorozat ($|\sin n| \le 1$). (4) $n$-edik gyöknél **rendőrelv** a domináns taggal. (5) Nagyságrendek: $n^k \ll a^n \ll n! \ll n^n$, és ennek becslésekkel való kihasználása. (6) Divergencia igazolása: két különböző határértékű **részsorozat** (konvergens sorozat minden részsorozata ugyanoda tart).
:::

## 54. feladat

Bizonyítsuk be, hogy ha $|a_{n+1} - a_n| \le 2^{-n}$ minden $n$-re, akkor $(a_n)$ konvergens.

**Megoldás.**

A Cauchy-kritériumot ellenőrizzük. Ha $m > n$, akkor a háromszög-egyenlőtlenség és a mértani sor összegképlete szerint
$$|a_m - a_n| \le \sum_{k=n}^{m-1} |a_{k+1} - a_k| \le \sum_{k=n}^{m-1} 2^{-k} < \sum_{k=n}^{\infty} 2^{-k} = 2^{1-n}.$$
Adott $\varepsilon > 0$-hoz válasszunk $N$-et úgy, hogy $2^{1-N} < \varepsilon$. Ekkor minden $m > n \ge N$-re $|a_m - a_n| < \varepsilon$, tehát $(a_n)$ Cauchy-sorozat, így ($\mathbb{R}$ teljessége miatt) konvergens. $\blacksquare$

::: elmelet
**Elméleti háttér — Cauchy-kritérium és teleszkopikus becslés.** $\mathbb R$-ben egy sorozat pontosan akkor konvergens, ha Cauchy-sorozat: $\forall \varepsilon\ \exists N\ \forall m, n \ge N: |a_m - a_n| < \varepsilon$. Két távoli tag különbségét a szomszédos különbségek összegével becsüljük (háromszög-egyenlőtlenség, „teleszkóp”), és ha ezek egy **konvergens sor** (itt mértani sor) tagjaival becsülhetők, akkor a különbség a sor maradékával, vagyis tetszőlegesen kicsivel becsülhető. A kritérium előnye, hogy a határérték ismerete nélkül igazolja a konvergenciát.
:::

## Röpzhra

**Definíciók:** megszámlálhatóan végtelen halmaz, megszámlálható halmaz, algebrai/transzcendens szám.

**Tételek:** határérték és alapműveletek, Bolzano–Weierstrass-tétel és a hozzá szükséges lemma, Cauchy-kritérium.
