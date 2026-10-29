# Analízis 1 – 3. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> *Kézírásos megjegyzések a feladatlapon:*
> - **HF:** Teljes indukció: 23., 24., 25. feladat
> - *Lábjegyzet:* „3. héttől véget érnek a mézes hetek – szep 22 —”

## 23. feladat

Bizonyítsuk be, hogy $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, és $1^2 + 2^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}$.

**Megoldás.**

Mindkét összefüggést a természetes számok halmazán ($n \in \mathbb{N} = \{1, 2, 3, \dots\}$) teljes indukcióval bizonyítjuk.

**1. Az első formula bizonyítása:**
$$S_1(n) = \sum_{k=1}^n k = 1 + 2 + \dots + n = \frac{n(n+1)}{2}.$$

- *Kezdőlépés ($n = 1$):*
  $$S_1(1) = 1, \qquad \frac{1(1+1)}{2} = \frac{2}{2} = 1.$$
  Az állítás $n = 1$-re igaz.
- *Indukciós feltevés:* Tegyük fel, hogy az állítás igaz valamely $n \ge 1$ egészre, azaz
  $$\sum_{k=1}^n k = \frac{n(n+1)}{2}.$$
- *Indukciós lépés:* Megmutatjuk, hogy az állítás $n+1$-re is teljesül:
  $$\sum_{k=1}^{n+1} k = \left(\sum_{k=1}^n k\right) + (n+1) = \frac{n(n+1)}{2} + (n+1).$$
  Kiemelve a közös $(n+1)$ tényezőt:
  $$\sum_{k=1}^{n+1} k = (n+1)\left(\frac{n}{2} + 1\right) = (n+1)\frac{n+2}{2} = \frac{(n+1)((n+1)+1)}{2}.$$
  Ez pontosan az állítás az $n+1$ értékre. A teljes indukció elve szerint az egyenlőség minden $n \in \mathbb{N}$-re fennáll.

---

**2. A második formula bizonyítása:**
$$S_2(n) = \sum_{k=1}^n k^2 = 1^2 + 2^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}.$$

- *Kezdőlépés ($n = 1$):*
  $$S_2(1) = 1^2 = 1, \qquad \frac{1(1+1)(2 \cdot 1 + 1)}{6} = \frac{1 \cdot 2 \cdot 3}{6} = 1.$$
  Az állítás $n = 1$-re igaz.
- *Indukciós feltevés:* Tegyük fel, hogy valamely $n \ge 1$-re
  $$\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6}.$$
- *Indukciós lépés:* Számítsuk ki az összeget $n+1$-re:
  $$\sum_{k=1}^{n+1} k^2 = \left(\sum_{k=1}^n k^2\right) + (n+1)^2 = \frac{n(n+1)(2n+1)}{6} + (n+1)^2.$$
  Kiemeljük az $(n+1)$ tényezőt:
  $$\sum_{k=1}^{n+1} k^2 = (n+1) \left(\frac{n(2n+1)}{6} + (n+1)\right) = \frac{n+1}{6} \left(2n^2 + n + 6n + 6\right) = \frac{n+1}{6} (2n^2 + 7n + 6).$$
  A másodfokú polinom szorzattá alakítása:
  $$2n^2 + 7n + 6 = (n+2)(2n+3) = ((n+1) + 1)(2(n+1) + 1).$$
  Ezt visszahelyettesítve:
  $$\sum_{k=1}^{n+1} k^2 = \frac{(n+1)((n+1) + 1)(2(n+1) + 1)}{6}.$$
  Ez pontosan a kívánt formula $n+1$-re. A teljes indukció elve alapján az állítás minden $n \in \mathbb{N}$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — a teljes indukció és a hatványösszegek meghatározása.**

*A teljes indukció axiómája.* Ha egy $A(n)$ állítás igaz $n = 1$-re, és tetszőleges $n \in \mathbb{N}$ esetén abból, hogy $A(n)$ igaz, következik, hogy $A(n+1)$ is igaz, akkor $A(n)$ minden $n \in \mathbb{N}$-re igaz. Ez a természetes számok Peano-axiómarendszerének része, és ekvivalens a **jólrendezési elvvel** (minden nemüres részhalmaznak van legkisebb eleme).

*Honnan származnak a képletek? (Teleszkopikus összegek módszere).*
A teljes indukció hátránya, hogy a formulát előre ismerni kell. A formulák levezethetők teleszkopikus összegezéssel:
- Az első képlethez: $(k+1)^2 - k^2 = 2k + 1$. Összegezve $k = 1, \dots, n$-re:
  $$\sum_{k=1}^n \left((k+1)^2 - k^2\right) = (n+1)^2 - 1 = 2 \sum_{k=1}^n k + n \implies 2 S_1(n) = n^2 + 2n - n = n(n+1).$$
- A második képlethez: $(k+1)^3 - k^3 = 3k^2 + 3k + 1$. Összegezve $k = 1, \dots, n$-re:
  $$(n+1)^3 - 1 = 3 \sum_{k=1}^n k^2 + 3 \sum_{k=1}^n k + n = 3 S_2(n) + 3 \frac{n(n+1)}{2} + n.$$
  Ebből $S_2(n)$ kifejezésével közvetlenül a $\frac{n(n+1)(2n+1)}{6}$ formulát kapjuk anélkül, hogy előre sejteni kellett volna.
:::

## 24. feladat

Mutassuk meg, hogy $1{,}1^n > n^3$ ha $n$ elég nagy.

**Megoldás.**

Írjuk fel a számot $1{,}1 = 1 + 0{,}1 = 1 + \frac{1}{10}$ alakban. Tetszőleges $n \ge 4$ esetén alkalmazzuk a binomiális tételt:
$$1{,}1^n = (1 + 0{,}1)^n = \sum_{k=0}^n \binom{n}{k} (0{,}1)^k.$$
Mivel minden tag pozitív, az összeget alulról becsülhetjük a $k = 4$ indexű tagjával:
$$1{,}1^n > \binom{n}{4} (0{,}1)^4 = \frac{n(n-1)(n-2)(n-3)}{24} \cdot \frac{1}{10^4} = \frac{n(n-1)(n-2)(n-3)}{240\,000}.$$
Becsüljük a számlálót: ha $n \ge 6$, akkor:
- $n - 1 > \frac{n}{2}$ (mivel $n > 2$),
- $n - 2 > \frac{n}{2}$ (mivel $n > 4$),
- $n - 3 \ge \frac{n}{2}$ (mivel $2n - 6 \ge n \iff n \ge 6$).
Ezért minden $n \ge 6$ esetén:
$$n(n-1)(n-2)(n-3) > n \cdot \frac{n}{2} \cdot \frac{n}{2} \cdot \frac{n}{2} = \frac{n^4}{8}.$$
Ezt behelyettesítve az alsó becslésbe:
$$1{,}1^n > \frac{n^4}{8 \cdot 240\,000} = \frac{n^4}{1\,920\,000}.$$
Osszuk el mindkét oldalt a pozitív $n^3$ számmal:
$$\frac{1{,}1^n}{n^3} > \frac{n}{1\,920\,000}.$$
Ezért ha $n > 1\,920\,000$, akkor $\frac{n}{1\,920\,000} > 1$, vagyis
$$\frac{1{,}1^n}{n^3} > 1 \iff 1{,}1^n > n^3.$$
Választhatunk tehát küszöbindexnek például $N_0 = 1\,920\,000$-et: minden $n > N_0$ esetén az egyenlőtlenség teljesül. $\blacksquare$

*Megjegyzés a legkisebb küszöbről:* Az $1{,}1^n > n^3$ pontosan akkor áll fenn, ha $n \ln(1{,}1) > 3 \ln n$, azaz $\frac{\ln n}{n} < \frac{\ln(1{,}1)}{3} \approx 0{,}03177$. Számolással adódik, hogy $n \ge 162$ esetén már teljesül az egyenlőtlenség ($1{,}1^{162} \approx 4{,}28 \cdot 10^6 > 162^3 \approx 4{,}25 \cdot 10^6$). Az analízisben azonban nem a legélesebb küszöb megtalálása a lényeg, hanem egy konstruktív, érvényes küszöbindex szigorú bizonyítása.

::: elmelet
**Elméleti háttér — exponenciális vs. polinomiális növekedés.**

*Alaptétel.* Bármely $a > 1$ alapú exponenciális függvény gyorsabban nő a végtelenben bármely rögzített fokszámú hatványnál:
$$\forall a > 1, \; \forall k \in \mathbb{N}: \qquad \lim_{n \to \infty} \frac{n^k}{a^n} = 0.$$
*A bizonyítás általános módszere:* Legyen $a = 1 + h$, ahol $h > 0$. A binomiális tétel szerint bármely $n \ge k + 1$ egészre:
$$a^n = (1 + h)^n = \sum_{j=0}^n \binom{n}{j} h^j > \binom{n}{k+1} h^{k+1} = \frac{n(n-1)\dots(n-k)}{(k+1)!} h^{k+1} > c_k \, n^{k+1},$$
ahol $c_k = \frac{h^{k+1}}{2^k (k+1)!} > 0$. Ekkor $\frac{n^k}{a^n} < \frac{n^k}{c_k n^{k+1}} = \frac{1}{c_k n} \to 0$.
A feladatban $k = 3$, ezért a $k+1 = 4$-edik tagot tartottuk meg. Ez az analízis egyik leggyakrabban használt becslési technikája.
:::

## 25. feladat

a) $\binom{n}{0} + \binom{n}{1} + \dots + \binom{n}{n} = ?$

b) $\binom{n}{0} - \binom{n}{1} + - \dots \pm \binom{n}{n} = ?$

**Megoldás.**

Mindkét összefüggés a **binomiális tételből** következik, amely szerint tetszőleges $a, b \in \mathbb{R}$ és $n \in \mathbb{N}$ esetén:
$$(a + b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k = \binom{n}{0} a^n + \binom{n}{1} a^{n-1} b + \dots + \binom{n}{n} b^n.$$

**a) rész:**
Helyettesítsünk $a = 1$ és $b = 1$ értékeket a binomiális tételbe:
$$(1 + 1)^n = \binom{n}{0} 1^n + \binom{n}{1} 1^{n-1} \cdot 1 + \dots + \binom{n}{n} 1^n.$$
Mivel $1^j = 1$ minden $j$-re, azt kapjuk, hogy
$$\binom{n}{0} + \binom{n}{1} + \dots + \binom{n}{n} = 2^n.$$

*Kombinatorikus jelentés:* Egy $n$-elemű $X$ halmaz összes részhalmazának száma $2^n$ (a hatványhalmaz számossága: $|\mathcal{P}(X)| = 2^n$). Mivel a $k$-elemű részhalmazok száma éppen $\binom{n}{k}$, és minden részhalmaz pontosan egy adott elemszámú diszjunkt osztályba tartozik $k = 0, 1, \dots, n$ szerint, az összegük kiadja az összes részhalmaz számát: $\sum_{k=0}^n \binom{n}{k} = 2^n$.

**b) rész:**
Helyettesítsünk $a = 1$ és $b = -1$ értékeket a binomiális tételbe (feltéve, hogy $n \ge 1$):
$$(1 + (-1))^n = \binom{n}{0} 1^n + \binom{n}{1} 1^{n-1} (-1)^1 + \binom{n}{2} 1^{n-2} (-1)^2 + \dots + \binom{n}{n} (-1)^n.$$
A bal oldal $0^n = 0$ (mivel $n \ge 1$), a jobb oldal pedig éppen a feladatbeli alternáló összeg:
$$\binom{n}{0} - \binom{n}{1} + \binom{n}{2} - \dots + (-1)^n \binom{n}{n} = 0.$$
(Megjegyzés: $n = 0$ esetén a tétel összegében egyetlen tag van, $\binom{0}{0} = 1$, de pozitív egész $n$-ekre az érték mindig $0$.)

*Kombinatorikus jelentés:* Átrendezve az egyenletet:
$$\binom{n}{0} + \binom{n}{2} + \binom{n}{4} + \dots = \binom{n}{1} + \binom{n}{3} + \binom{n}{5} + \dots = \frac{2^n}{2} = 2^{n-1}.$$
Ez azt fejezi ki, hogy bármely nemüres véges halmaznak pontosan ugyanannyi páros elemszámú részhalmaza van, mint páratlan elemszámú részhalmaza. $\blacksquare$

::: elmelet
**Elméleti háttér — a binomiális együtthatók és generátorpolinomjuk.**

*A polinom-módszer.* A binomiális együtthatók összegeit gyakran a
$$P(x) = (1 + x)^n = \sum_{k=0}^n \binom{n}{k} x^k$$
polinom segítségével határozzuk meg:
- $x = 1$ helyettesítéssel: $P(1) = \sum_{k=0}^n \binom{n}{k} = 2^n$.
- $x = -1$ helyettesítéssel: $P(-1) = \sum_{k=0}^n (-1)^k \binom{n}{k} = 0$.
- Deriválással és $x = 1$ behelyettesítésével: $P'(x) = n(1+x)^{n-1} = \sum_{k=1}^n k \binom{n}{k} x^{k-1} \implies \sum_{k=1}^n k \binom{n}{k} = n 2^{n-1}$.
Ez a gondolatmenet a **generátorfüggvények módszerének** legegyszerűbb, alapvető példája.
:::

## 26. feladat

Legyenek $f : A \to B$, $g : B \to A$. Mutassuk meg, hogy $g = f^{-1}$ akkor és csak akkor, ha

I. $g \circ f = \mathrm{id}_A$, és II. $f \circ g = \mathrm{id}_B$.

Előadáson szerepelt, hogy I. $\not\Rightarrow$ II. Adjunk példát arra, hogy II. $\not\Rightarrow$ I.

**Megoldás.**

**1. Az ekvivalencia bizonyítása:**

*Inverz definíciója:* Az $f : A \to B$ leképezésnek akkor és csak akkor létezik inverze, ha $f$ bijektív (injektív és szürjektív). Ekkor az inverz az a $f^{-1} : B \to A$ függvény, amelyre minden $b \in B$ esetén $f^{-1}(b) = a \iff f(a) = b$.

$(\Rightarrow)$ Tegyük fel, hogy $f$ bijektív és $g = f^{-1}$.
- Tetszőleges $a \in A$ esetén legyen $b = f(a)$. Az inverz definíciója alapján ekkor $g(b) = a$, így $(g \circ f)(a) = g(f(a)) = g(b) = a = \mathrm{id}_A(a)$. Ez minden $a \in A$-ra fennáll, tehát I. teljesül: $g \circ f = \mathrm{id}_A$.
- Tetszőleges $b \in B$ esetén legyen $a = g(b) = f^{-1}(b)$. Az inverz definíciója alapján ekkor $f(a) = b$, így $(f \circ g)(b) = f(g(b)) = f(a) = b = \mathrm{id}_B(b)$. Ez minden $b \in B$-re fennáll, tehát II. teljesül: $f \circ g = \mathrm{id}_B$.

$(\Leftarrow)$ Tegyük fel, hogy egyszerre teljesül I. ($g \circ f = \mathrm{id}_A$) és II. ($f \circ g = \mathrm{id}_B$). Megmutatjuk, hogy $f$ szükségképpen bijektív és $g = f^{-1}$.
- **Injektivitás:** Legyen $a_1, a_2 \in A$ úgy, hogy $f(a_1) = f(a_2)$. Alkalmazzuk a $g$ leképezést mindkét oldalra:
  $$g(f(a_1)) = g(f(a_2)).$$
  Az I. feltétel ($g \circ f = \mathrm{id}_A$) szerint a bal oldal $a_1$, a jobb oldal $a_2$, így $a_1 = a_2$. Tehát $f$ injektív.
- **Szürjektivitás:** Legyen $b \in B$ tetszőleges. Tekintsük az $a = g(b) \in A$ elemet. A II. feltétel ($f \circ g = \mathrm{id}_B$) szerint:
  $$f(a) = f(g(b)) = (f \circ g)(b) = \mathrm{id}_B(b) = b.$$
  Tehát $b$-nek létezik ősképe ($a = g(b)$), így $f$ szürjektív.
Mivel $f$ injektív és szürjektív, $f$ bijekció, tehát létezik $f^{-1} : B \to A$.
Mivel minden $b \in B$-re az $a = g(b)$ elem teljesíti az $f(a) = b$ egyenletet, és az őskép az injektivitás miatt egyértelmű, szükségképpen $g(b) = f^{-1}(b)$ minden $b \in B$-re, vagyis $g = f^{-1}$.

---

**2. Példa arra, hogy II. $\not\Rightarrow$ I.:**
Olyan $f : A \to B$ és $g : B \to A$ függvényeket kell megadnunk, amelyekre $f \circ g = \mathrm{id}_B$ teljesül, de $g \circ f \neq \mathrm{id}_A$.
(Vegyük észre: $f \circ g = \mathrm{id}_B$ miatt $f$-nek szürjektívnek, $g$-nek pedig injektívnek kell lennie. Ahhoz, hogy $g \circ f \neq \mathrm{id}_A$ legyen, $f$ nem lehet injektív, és $g$ nem lehet szürjektív. Ez csak végtelen halmazon valósítható meg.)

Legyen $A = B = \mathbb{N} = \{1, 2, 3, \dots\}$. Definiáljuk a következő függvényeket:
$$g(n) = n + 1 \quad (\forall n \in \mathbb{N}),$$
$$f(n) = \begin{cases} n - 1, & \text{ha } n > 1, \\ 1, & \text{ha } n = 1. \end{cases}$$
- **A II. feltétel vizsgálata:** Tetszőleges $n \in B = \mathbb{N}$ esetén $g(n) = n + 1 \ge 2 > 1$, ezért
  $$(f \circ g)(n) = f(g(n)) = f(n + 1) = (n + 1) - 1 = n = \mathrm{id}_B(n).$$
  Tehát $f \circ g = \mathrm{id}_B$ **teljesül** (a II. feltétel igaz).
- **Az I. feltétel vizsgálata:** Vizsgáljuk az $n = 1 \in A$ elemet:
  $$(g \circ f)(1) = g(f(1)) = g(1) = 1 + 1 = 2 \neq 1 = \mathrm{id}_A(1).$$
  Tehát $g \circ f \neq \mathrm{id}_A$ (az I. feltétel **hamis**).

Ez a konstrukció igazolja, hogy a II. feltételből önmagában nem következik az I. feltétel. $\blacksquare$

::: elmelet
**Elméleti háttér — balinverz, jobbinverz és kétoldali inverz.**

*Balinverz.* Egy $g : B \to A$ leképezés az $f : A \to B$ **balinverze**, ha $g \circ f = \mathrm{id}_A$.
- Tétel: $f$-nek akkor és csak akkor létezik balinverze, ha $f$ injektív ($A \neq \emptyset$ esetén).
- Ilyenkor $g$ szükségképpen szürjektív.

*Jobbinverz.* Egy $g : B \to A$ leképezés az $f : A \to B$ **jobbinverze**, ha $f \circ g = \mathrm{id}_B$.
- Tétel: $f$-nek akkor és csak akkor létezik jobbinverze, ha $f$ szürjektív (ennek bizonyításához végtelen halmazokon a kiválasztási axióma szükséges: minden $b \in B$-hez kiválasztunk egy ősképet $f^{-1}(\{b\})$-ből).
- Ilyenkor $g$ szükségképpen injektív.

*Kétoldali inverz.* Egy leképezés pontosan akkor invertálható (létezik kétoldali inverze), ha egyszerre létezik bal- és jobbinverze, ami a fentiek szerint pontosan a bijektivitással ekvivalens. Ekkor a bal- és jobbinverzek egybeesnek: ha $g_1 \circ f = \mathrm{id}_A$ és $f \circ g_2 = \mathrm{id}_B$, akkor
$$g_1 = g_1 \circ \mathrm{id}_B = g_1 \circ (f \circ g_2) = (g_1 \circ f) \circ g_2 = \mathrm{id}_A \circ g_2 = g_2.$$

*Véges halmazok vs. végtelen halmazok.* Ha $A$ és $B$ véges halmazok, és $|A| = |B|$, akkor a skatulya-elv miatt egy $f : A \to B$ függvényre az injektivitás, a szürjektivitás és a bijektivitás ekvivalens, így ekkor I. $\iff$ II. A két feltétel elválása a **Dedekind-féle végtelen** jellegzetessége: egy halmaz pontosan akkor végtelen, ha létezik olyan önmagába menő leképezése, amely injektív, de nem szürjektív (pl. $n \mapsto n+1$).
:::

## 27. feladat

Mutassuk meg, hogy $n! > n^{\frac{n}{2}}$ ha $n$ elegendően nagy.

**Megoldás.**

Mivel mindkét oldal pozitív, az egyenlőtlenség ekvivalens a négyzetével:
$$(n!)^2 > \left(n^{n/2}\right)^2 = n^n.$$
Írjuk fel az $(n!)^2$ kifejezést a szorzattényezők előre és hátrafelé való párosításával:
$$(n!)^2 = (1 \cdot 2 \cdot 3 \dots n) \cdot (n \cdot (n-1) \dots 1) = \prod_{k=1}^n k(n - k + 1).$$
Vizsgáljuk meg a szorzat általános tagját: $p_k = k(n - k + 1)$.
Alakítsuk át a különbséget a fix $n$ értéktől:
$$k(n - k + 1) - n = kn - k^2 + k - n = (k - 1)n - k(k - 1) = (k - 1)(n - k).$$
Minden $k \in \{1, 2, \dots, n\}$ esetén $k - 1 \ge 0$ és $n - k \ge 0$, tehát a szorzatuk nemnegatív:
$$k(n - k + 1) \ge n \quad \text{minden } k \in \{1, 2, \dots, n\} \text{ esetén}.$$
Egyenlőség pontosan a széleken áll fenn: $k = 1$ és $k = n$ esetén $(k-1)(n-k) = 0$.
A köztes indexekre, ha $1 < k < n$, mindkét tényező szigorúan pozitív, így
$$k(n - k + 1) > n \quad \text{minden } 1 < k < n \text{ esetén}.$$
Ha $n \ge 3$, akkor létezik legalább egy belső tag (például $k = 2$), ezért a szorzat szigorúan nagyobb:
$$(n!)^2 = \underbrace{1 \cdot n}_{= n} \cdot \left(\prod_{k=2}^{n-1} k(n - k + 1)\right) \cdot \underbrace{n \cdot 1}_{= n} > n \cdot \left(\prod_{k=2}^{n-1} n\right) \cdot n = n \cdot n^{n-2} \cdot n = n^n.$$
Mivel mindkét oldal pozitív, négyzetgyököt vonva:
$$n! > \sqrt{n^n} = n^{n/2} \quad \text{minden } n \ge 3 \text{ esetén}.$$

*Kis értékek ellenőrzése:*
- $n = 1$: $1! = 1$, $1^{1/2} = 1 \implies 1 = 1$ (nem szigorú).
- $n = 2$: $2! = 2$, $2^{2/2} = 2^1 = 2 \implies 2 = 2$ (nem szigorú).
- $n = 3$: $3! = 6$, $3^{3/2} = 3\sqrt{3} \approx 5{,}196 < 6$, itt már teljesül a szigorú egyenlőtlenség.
Tehát az állítás minden $n \ge 3$ esetén igaz (küszöbindexnek választható $N_0 = 2$). $\blacksquare$

::: elmelet
**Elméleti háttér — a faktoriális nagyságrendje és aszimptotikája.**

*A faktoriális növekedési rendje.* A sorozatok összehasonlításakor alapvető a hierarchia:
$$\ln n \ll n \ll n^2 \ll \dots \ll a^n \ll n! \ll n^n \qquad (a > 1).$$
A feladatbeli egyenlőtlenség logaritmizálva:
$$\ln(n!) = \sum_{k=1}^n \ln k > \ln\left(n^{n/2}\right) = \frac{n}{2} \ln n.$$
Mivel triviálisan $n! < n^n$ (hiszen $n! = 1 \cdot 2 \dots n < n \cdot n \dots n$), azt kaptuk, hogy:
$$\frac{1}{2} n \ln n < \ln(n!) < n \ln n \qquad (n \ge 3).$$
Ez mutatja, hogy $\ln(n!)$ nagyságrendje $\Theta(n \ln n)$.

*A Stirling-formula.* Integrálközelítéssel ($\int_1^n \ln x \, dx = n \ln n - n + 1$) pontosabb aszimptotika nyerhető. A pontos aszimptotikus formulát Stirling tétele adja:
$$n! \sim \sqrt{2\pi n} \left(\frac{n}{e}\right)^n,$$
amiből látható, hogy $n!$ sokkal nagyobb $n^{n/2}$-nél: $\frac{n!}{n^{n/2}} \sim \sqrt{2\pi n} \left(\frac{\sqrt{n}}{e}\right)^n \to \infty$.
:::

## 28. feladat

Egy végtelen szállodában a szobák a természetes számokkal, $1, 2, 3, \dots, n, \dots$ vannak számozva.

a) Telt ház van, de érkezik egy új vendég. El tudja-e őt a portás helyezni?

b) Telt ház van és leég a szomszéd szintén vendégekkel tele levő végtelen szálloda. Elhelyezhetők-e annak a vendégei is a mi végtelen szállodánkban?

c) Telt ház van és leég a szomszédos szintén vendégekkel tele levő végtelen emeletes emeletenként végtelen szálloda. Elhelyezhetők-e annak a vendégei is a mi végtelen szállodánkban?

**Megoldás.**

A feladat a híres David Hilbert-féle „végtelen szálloda” (Grand Hotel) gondolatkísérlet, amely a végtelen halmazok sajátos, a véges halmazokétól alapvetően eltérő tulajdonságait szemlélteti. Legyen a szobák halmaza $\mathbb{N} = \{1, 2, 3, \dots\}$.

**a) rész: Egy új vendég elhelyezése.**

**Igen, a portás el tudja helyezni az új vendéget.**
Kérje meg a portás az $n$-edik szobában lakó minden vendéget, hogy költözzön át az $(n+1)$-edik szobába:
$$n \mapsto n + 1 \quad (\forall n \in \mathbb{N}).$$
- Minden eredeti vendégnek lesz új szobája ($1 \to 2$, $2 \to 3$, $3 \to 4$, \dots).
- Senki nem kerül ugyanabba a szobába, mint másvalaki, mert az $n \mapsto n+1$ leképezés injektív: $n_1 + 1 = n_2 + 1 \implies n_1 = n_2$.
- Az 1. szoba felszabadul, mert az $n + 1 = 1$ egyenletnek nincs megoldása $\mathbb{N}$-ben ($n \ge 1 \implies n + 1 \ge 2$).
Az újonnan érkezett vendéget a portás az 1. szobába helyezi el.
Matematikailag: létezik bijekció $\mathbb{N} \cup \{0\} \to \mathbb{N}$ között, például $f(0) = 1$ és $f(n) = n + 1$ ($n \ge 1$).

**b) rész: Egy végtelen szálloda vendégeinek elhelyezése.**

**Igen, elhelyezhetők.**
Jelölje a mi szállodánkban lakó vendégeket $w_1, w_2, w_3, \dots$, a szomszédos, leégett szálloda vendégeit pedig $v_1, v_2, v_3, \dots$.
Kérjük meg a mi szállodánk $n$-edik szobájában lakó vendéget, hogy költözzön a $2n$-edik szobába:
$$w_n \mapsto 2n \quad (\forall n \in \mathbb{N}).$$
Ezzel az összes páratlan számú szoba ($1, 3, 5, \dots, 2k-1, \dots$) felszabadul.
A szomszéd szálloda $k$-adik vendégét költöztessük a $(2k - 1)$-edik szobába:
$$v_k \mapsto 2k - 1 \quad (\forall k \in \mathbb{N}).$$
Mivel minden pozitív egész szám vagy páros vagy páratlan, de sosem mindkettő, és a hozzárendelések injektívek:
- minden vendég kap szobát,
- senki nem kerül közös szobába másvalakivel,
- minden szoba foglalt lesz.
Matematikailag: két diszjunkt megszámlálhatóan végtelen halmaz uniója megszámlálhatóan végtelen ($\mathbb{N} \cup \mathbb{N} \sim \mathbb{N}$).

**c) rész: Végtelen sok végtelen csoport elhelyezése.**

**Igen, elhelyezhetők.**
A leégett szálloda $m$-edik emeletének ($m \in \mathbb{N} = \{1, 2, 3, \dots\}$) $k$-adik szobájában lakó vendéget jelölje $v_{m, k}$ ($k \in \mathbb{N}$). A mi szállodánk eredeti vendégeit tekintsük a „$0$. emelet” lakóinak: $w_n = v_{0, n}$ ($n \in \mathbb{N}$). A vendégek halmaza így indexelhető az $(m, k) \in \mathbb{N}_0 \times \mathbb{N}$ párokkal.

Az elhelyezésre két nevezetes eljárást is adhatunk:

*1. eljárás (Prímszámok hatványai):*
- A mi szállodánk $n$-edik szobájában lakó vendéget költöztessük a $2^n$ szobába: $w_n \mapsto 2^n$.
- A szomszédos szálloda $m$-edik emeletének $k$-adik szobájából érkező vendéget költöztessük a $p_{m+1}^k$ szobába, ahol $p_j$ a $j$-edik prímszám ($p_1 = 2, p_2 = 3, p_3 = 5, p_4 = 7, \dots$):
  $$v_{m, k} \mapsto p_{m+1}^k.$$
A számelmélet alaptétele (a prímtényezős felbontás egyértelműsége) miatt $p_i^k = p_j^l$ csak akkor lehetséges, ha a prímek egyenlők ($p_i = p_j \implies i = j$) és a kitevők is egyenlők ($k = l$). Így két különböző vendég sohasem kapja ugyanazt a szobát! (Bár maradnak üres szobák, pl. a 6-os vagy 10-es szoba, minden vendég elhelyezést nyert.)

*2. eljárás (Bijekció, Cantor-féle átlós felsorolás):*
Rendezzük a vendégeket végtelen táblázatba, ahol a sor az emelet száma, az oszlop a szoba száma. Egy explicit bijekció $\mathbb{N}_0 \times \mathbb{N} \to \mathbb{N}$ között:
$$(m, k) \mapsto 2^m(2k - 1).$$
Mivel minden pozitív egész szám egyértelműen felírható egy 2-hatvány és egy páratlan szám szorzataként, ez a hozzárendelés kölcsönösen egyértelmű (bijekció): minden vendég pontosan egy szobát kap, és egyetlen szoba sem marad üresen. $\blacksquare$

::: elmelet
**Elméleti háttér — megszámlálható halmazok és ekvivalencia.**

*Számosság.* Két halmaz, $A$ és $B$ **ekvivalens** (azonos számosságú, jelölése $A \sim B$), ha létezik közöttük bijekció: $f : A \to B$.

*Megszámlálhatóan végtelen halmaz.* Egy halmaz megszámlálhatóan végtelen, ha ekvivalens a természetes számok $\mathbb{N}$ halmazával. Számossága: $\aleph_0$ („alef-nulla”).
- Az a) rész állítása: $\aleph_0 + 1 = \aleph_0$.
- A b) rész állítása: $\aleph_0 + \aleph_0 = \aleph_0$ (véges sok megszámlálható halmaz egyesítése megszámlálható).
- A c) rész állítása: $\aleph_0 \cdot \aleph_0 = \aleph_0$ (megszámlálható sok megszámlálható halmaz egyesítése megszámlálható). Ennek alapvető következménye a racionális számok halmazának megszámlálhatósága: $|\mathbb{Q}| = \aleph_0$.
:::

## 29. feladat

Legfeljebb mekkora lehet $xy$, ha $x, y \ge 0$ és a) $x + y = 10$; b) $2x + 3y = 10$?

**Megoldás.**

**a) rész:** $x, y \ge 0$ és $x + y = 10$.

Alkalmazzuk a kétváltozós számtani–mértani közép közötti egyenlőtlenséget a nemnegatív $x, y$ számokra:
$$\sqrt{xy} \le \frac{x + y}{2} = \frac{10}{2} = 5.$$
Mivel mindkét oldal nemnegatív, négyzetre emelve:
$$xy \le 5^2 = 25.$$
A számtani–mértani egyenlőtlenségben egyenlőség pontosan akkor áll fenn, ha a változók egyenlők: $x = y$.
Mivel $x + y = 10$, ebből $2x = 10 \implies x = 5$, és így $y = 5$. Ekkor $xy = 5 \cdot 5 = 25$.
Tehát a szorzat lehetséges legnagyobb értéke **$25$**, amit az $x = 5, y = 5$ pontban vesz fel.

---

**b) rész:** $x, y \ge 0$ és $2x + 3y = 10$.

Alakítsuk át az $xy$ szorzatot úgy, hogy a feltételben szereplő tagok, $u = 2x$ és $v = 3y$ szorzata jelenjen meg:
$$xy = \frac{1}{6} (2x \cdot 3y).$$
Mivel $x, y \ge 0$, a tagok nemnegatívak: $2x \ge 0, 3y \ge 0$. A számtani–mértani egyenlőtlenséget a $2x$ és $3y$ tagokra alkalmazva:
$$\sqrt{2x \cdot 3y} \le \frac{2x + 3y}{2} = \frac{10}{2} = 5.$$
Négyzetre emelve mindkét oldalt:
$$2x \cdot 3y \le 25.$$
Ebből $xy$-ra felső becslést kapunk:
$$xy = \frac{2x \cdot 3y}{6} \le \frac{25}{6} = 4\frac{1}{6}.$$
Egyenlőség pontosan akkor teljesül, ha a két tag megegyezik:
$$2x = 3y.$$
Mivel $2x + 3y = 10$, ezért $2x + 2x = 10 \implies 4x = 10 \implies x = \frac{5}{2}$, és $3y = 5 \implies y = \frac{5}{3}$.
Ellenőrzés: $xy = \frac{5}{2} \cdot \frac{5}{3} = \frac{25}{6}$.
Tehát a szorzat lehetséges legnagyobb értéke **$\frac{25}{6}$**, amit az $x = \frac{5}{2}, y = \frac{5}{3}$ pontban ér el. $\blacksquare$

::: elmelet
**Elméleti háttér — a számtani és mértani közép egyenlőtlensége szélsőérték-feladatokban.**

*A tétel.* Nemnegatív $a_1, \dots, a_n$ számokra:
$$\sqrt[n]{a_1 \dots a_n} \le \frac{a_1 + \dots + a_n}{n},$$
és egyenlőség akkor és csak akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$.

*Alkalmazás optimalizálásra.*
1. **Állandó összeg $\implies$ maximális szorzat:** Ha $a_1 + \dots + a_n = K$ állandó, akkor a szorzatuk maximális, ha a tagok mind egyenlők: $a_i = K/n$.
2. **Súlyozott összegek kezelése:** Ha az $a x + b y = C$ feltétel mellett keressük $x y$ maximumát, a szorzatot konstans szorzó erejéig átírjuk $(ax)(by)$ alakra:
   $$xy = \frac{1}{ab} (ax)(by) \le \frac{1}{ab} \left(\frac{ax + by}{2}\right)^2 = \frac{C^2}{4ab}.$$
   A maximumot ott éri el, ahol a két komponens egyenlően osztozik az összegen: $ax = by = C/2$.
:::

## 30. feladat

A következő függvényekről bizonyítsuk be, hogy a megadott $H$-halmazon injektívek:

a) $f(x) = 3x - 7$, $H = \mathbb{R}$;

b) $f(x) = x^2 + 3x - 6$, $H = [-3/2, \infty)$;

c) $f(x) = \frac{x}{x+1}$, $H = (-1, 1)$.

Határozzuk meg, a fenti esetekben az $F : H \to f(H)$ bijekció inverzét!

**Megoldás.**

Egy függvény akkor **injektív** a $H$ halmazon, ha tetszőleges $x_1, x_2 \in H$ esetén $f(x_1) = f(x_2) \implies x_1 = x_2$.
Ha $f$ injektív $H$-n, akkor az $F : H \to f(H)$, $F(x) = f(x)$ megszorítás mindkét irányban kölcsönösen egyértelmű, azaz **bijekció**. Az inverz képletét az $y = f(x)$ egyenletből $x$ kifejezésével kapjuk meg: $x = F^{-1}(y)$.

---

**a) rész:** $f(x) = 3x - 7$, $H = \mathbb{R}$.

- **Injektivitás:** Legyenek $x_1, x_2 \in \mathbb{R}$:
  $$f(x_1) = f(x_2) \iff 3x_1 - 7 = 3x_2 - 7 \iff 3x_1 = 3x_2 \iff x_1 = x_2.$$
  Tehát $f$ injektív $\mathbb{R}$-en. (Sőt $3 > 0$ miatt szigorúan monoton növekvő.)
- **Értékkészlet:** Tetszőleges $y \in \mathbb{R}$ esetén a $3x - 7 = y$ egyenlet megoldása $x = \frac{y + 7}{3} \in \mathbb{R}$, tehát $f(H) = \mathbb{R}$.
- **Inverz függvény:**
  $$F^{-1} : \mathbb{R} \to \mathbb{R}, \qquad F^{-1}(y) = \frac{y + 7}{3}.$$

---

**b) rész:** $f(x) = x^2 + 3x - 6$, $H = [-3/2, \infty)$.

- **Injektivitás:** Alakítsuk a másodfokú kifejezést teljes négyzetté:
  $$f(x) = \left(x + \frac{3}{2}\right)^2 - \frac{9}{4} - 6 = \left(x + \frac{3}{2}\right)^2 - \frac{33}{4}.$$
  Legyenek $x_1, x_2 \in [-3/2, \infty)$ olyanok, hogy $f(x_1) = f(x_2)$. Ekkor:
  $$\left(x_1 + \frac{3}{2}\right)^2 - \frac{33}{4} = \left(x_2 + \frac{3}{2}\right)^2 - \frac{33}{4} \iff \left(x_1 + \frac{3}{2}\right)^2 = \left(x_2 + \frac{3}{2}\right)^2.$$
  Mivel $x_1, x_2 \in [-3/2, \infty)$, ezért $x_1 + \frac{3}{2} \ge 0$ és $x_2 + \frac{3}{2} \ge 0$. Két nemnegatív szám négyzete pontosan akkor egyenlő, ha maguk a számok egyenlők:
  $$x_1 + \frac{3}{2} = x_2 + \frac{3}{2} \iff x_1 = x_2.$$
  Tehát $f$ valóban injektív a megadott $H$ halmazon.
- **Értékkészlet:** Mivel $x \ge -3/2$, az $x + \frac{3}{2}$ kifejezés a $[0, \infty)$ intervallum minden értékét felveszi, így annak négyzete is $[0, \infty)$-et futja be. Ezért:
  $$f(H) = \left[-\frac{33}{4}, \infty\right).$$
- **Inverz függvény:** Legyen $y \in [-\frac{33}{4}, \infty)$. Fejezzük ki $x$-et az $y = f(x)$ összefüggésből:
  $$y = \left(x + \frac{3}{2}\right)^2 - \frac{33}{4} \iff \left(x + \frac{3}{2}\right)^2 = y + \frac{33}{4}.$$
  Mivel $x + \frac{3}{2} \ge 0$, négyzetgyökvonáskor a nemnegatív gyököt kell választani:
  $$x + \frac{3}{2} = \sqrt{y + \frac{33}{4}} \iff x = -\frac{3}{2} + \sqrt{y + \frac{33}{4}}.$$
  Tehát az inverz leképezés:
  $$F^{-1} : \left[-\frac{33}{4}, \infty\right) \to \left[-\frac{3}{2}, \infty\right), \qquad F^{-1}(y) = -\frac{3}{2} + \sqrt{y + \frac{33}{4}}.$$

---

**c) rész:** $f(x) = \frac{x}{x+1}$, $H = (-1, 1)$.

- **Injektivitás:** Alakítsuk át az előírást:
  $$f(x) = \frac{x + 1 - 1}{x + 1} = 1 - \frac{1}{x + 1}.$$
  Legyenek $x_1, x_2 \in (-1, 1)$, és tegyük fel, hogy $f(x_1) = f(x_2)$:
  $$1 - \frac{1}{x_1 + 1} = 1 - \frac{1}{x_2 + 1} \iff \frac{1}{x_1 + 1} = \frac{1}{x_2 + 1} \iff x_1 + 1 = x_2 + 1 \iff x_1 = x_2.$$
  (Közvetlen szorzással: $\frac{x_1}{x_1+1} = \frac{x_2}{x_2+1} \iff x_1(x_2+1) = x_2(x_1+1) \iff x_1 x_2 + x_1 = x_1 x_2 + x_2 \iff x_1 = x_2$.)
  Tehát $f$ injektív a $H$ halmazon.
- **Értékkészlet:** Ha $x \in (-1, 1)$, akkor $x + 1 \in (0, 2)$. A reciprokfüggvény a $(0, 2)$ intervallumon:
  $$\frac{1}{x + 1} \in \left(\frac{1}{2}, \infty\right).$$
  Ezért a függvény értékei:
  $$f(x) = 1 - \frac{1}{x + 1} \in \left(-\infty, 1 - \frac{1}{2}\right) = \left(-\infty, \frac{1}{2}\right).$$
  Tehát $f(H) = \left(-\infty, \frac{1}{2}\right)$.
- **Inverz függvény:** Legyen $y \in (-\infty, \frac{1}{2})$. Fejezzük ki $x$-et az $y$ változóval:
  $$y = \frac{x}{x+1} \iff y(x+1) = x \iff yx + y = x \iff y = x(1 - y).$$
  Mivel $y < \frac{1}{2}$, ezért $1 - y > \frac{1}{2} \neq 0$, így oszthatunk $(1 - y)$-nal:
  $$x = \frac{y}{1 - y}.$$
  (Ellenőrizzük, hogy $x \in (-1, 1)$: $x = \frac{y}{1-y} = \frac{-(1-y) + 1}{1-y} = -1 + \frac{1}{1-y}$. Mivel $1-y > 1/2$, ezért $0 < \frac{1}{1-y} < 2$, így valóban $-1 < x < 1$.)
  Tehát az inverz leképezés:
  $$F^{-1} : \left(-\infty, \frac{1}{2}\right) \to (-1, 1), \qquad F^{-1}(y) = \frac{y}{1 - y}.$$ $\blacksquare$

::: elmelet
**Elméleti háttér — injektivitás, szigorú monotonitás és az inverz függvény.**

*Szigorú monotonitás és injektivitás kapcsolata.* Ha egy $f$ függvény szigorúan monoton növekvő vagy csökkenő egy $H \subseteq \mathbb{R}$ halmazon, akkor szükségképpen injektív is.
- A b) feladatban $f'(x) = 2x + 3 > 0$ a $(-3/2, \infty)$ intervallumon, így ott szigorúan monoton nő.
- A c) feladatban $f(x) = 1 - \frac{1}{x+1}$, ahol $x+1 > 0$ növekvő, a reciprok csökkenő, $-1$-szerese növekvő, tehát $f$ szigorúan monoton nő a $(-1, 1)$ intervallumon.

*Az inverz geometriai jelentése.* A grafikon tükrözése az $y = x$ egyenesre. Értelmezési tartomány és értékkészlet felcserélődik:
$$D(F^{-1}) = R(F) = f(H), \qquad R(F^{-1}) = D(F) = H.$$
Mindig ellenőrizni kell, hogy az inverz képlete valóban a megfelelő halmazt képezi a kívánt tartományba!
:::

## 31. feladat

Bizonyítsuk be, hogy $\left(1 + \frac{1}{n}\right)^{n+1} > \left(1 + \frac{1}{n+1}\right)^{n+2}$.

**Megoldás.**

Jelölje a vizsgált sorozatot $d_n = \left(1 + \frac{1}{n}\right)^{n+1} = \left(\frac{n+1}{n}\right)^{n+1}$. A feladat annak igazolása, hogy a $(d_n)$ sorozat szigorúan monoton csökkenő minden $n \in \mathbb{N}$ esetén.

**1. Bizonyítás a számtani–mértani egyenlőtlenséggel (a reciprokra):**

A bizonyítandó $d_n > d_{n+1}$ egyenlőtlenség mindkét oldalának reciproka:
$$\left(\frac{n}{n+1}\right)^{n+1} < \left(\frac{n+1}{n+2}\right)^{n+2},$$
vagy más alakban:
$$\left(1 - \frac{1}{n+1}\right)^{n+1} < \left(1 - \frac{1}{n+2}\right)^{n+2}.$$
Alkalmazzuk a szigorú számtani–mértani közép közötti egyenlőtlenséget $(n+2)$ darab pozitív számra:
vegyünk $(n+1)$ darab $\left(1 - \frac{1}{n+1}\right)$ számot, és egy darab $1$-est.
Mivel $1 - \frac{1}{n+1} \neq 1$, a számok nem mind egyenlők, így a mértani közép szigorúan kisebb a számtani középnél:
$$\sqrt[n+2]{\left(1 - \frac{1}{n+1}\right)^{n+1} \cdot 1} < \frac{(n+1)\left(1 - \frac{1}{n+1}\right) + 1}{n+2}.$$
Számítsuk ki a jobb oldali számtani közepet:
$$\frac{(n+1) - 1 + 1}{n+2} = \frac{n+1}{n+2} = 1 - \frac{1}{n+2}.$$
Tehát:
$$\sqrt[n+2]{\left(1 - \frac{1}{n+1}\right)^{n+1}} < 1 - \frac{1}{n+2}.$$
Mindkét oldalt az $(n+2)$-edik hatványra emelve (mivel mindkét oldal pozitív):
$$\left(1 - \frac{1}{n+1}\right)^{n+1} < \left(1 - \frac{1}{n+2}\right)^{n+2}.$$
Visszaírva a törteket:
$$\left(\frac{n}{n+1}\right)^{n+1} < \left(\frac{n+1}{n+2}\right)^{n+2}.$$
Mivel mindkét oldal pozitív, reciprokra térve az egyenlőtlenség iránya megfordul:
$$\left(\frac{n+1}{n}\right)^{n+1} > \left(\frac{n+2}{n+1}\right)^{n+2},$$
azaz
$$\left(1 + \frac{1}{n}\right)^{n+1} > \left(1 + \frac{1}{n+1}\right)^{n+2}.$$

---

**2. Alternatív bizonyítás a Bernoulli-egyenlőtlenséggel (a hányadosra):**

Tekintsük a két egymást követő tag hányadosát:
$$\frac{d_n}{d_{n+1}} = \frac{\left(\frac{n+1}{n}\right)^{n+1}}{\left(\frac{n+2}{n+1}\right)^{n+2}} = \frac{n+1}{n+2} \cdot \left(\frac{(n+1)^2}{n(n+2)}\right)^{n+1} = \frac{n+1}{n+2} \cdot \left(\frac{n^2 + 2n + 1}{n^2 + 2n}\right)^{n+1} = \frac{n+1}{n+2} \cdot \left(1 + \frac{1}{n(n+2)}\right)^{n+1}.$$
Alkalmazzuk a szigorú Bernoulli-egyenlőtlenséget az $\left(1 + \frac{1}{n(n+2)}\right)^{n+1}$ kifejezésre, ahol $h = \frac{1}{n(n+2)} > 0$ és a kitevő $n+1 \ge 2$:
$$\left(1 + \frac{1}{n(n+2)}\right)^{n+1} > 1 + \frac{n+1}{n(n+2)} = \frac{n(n+2) + n + 1}{n(n+2)} = \frac{n^2 + 3n + 1}{n(n+2)}.$$
Szorozzuk meg ezt a törtet az elöl álló $\frac{n+1}{n+2}$ tényezővel:
$$\frac{d_n}{d_{n+1}} > \frac{n+1}{n+2} \cdot \frac{n^2 + 3n + 1}{n(n+2)} = \frac{(n+1)(n^2 + 3n + 1)}{n(n+2)^2} = \frac{n^3 + 4n^2 + 4n + 1}{n(n^2 + 4n + 4)} = \frac{n^3 + 4n^2 + 4n + 1}{n^3 + 4n^2 + 4n}.$$
Mivel $1 > 0$, a számláló szigorúan nagyobb a nevezőnél:
$$\frac{d_n}{d_{n+1}} > 1 \iff d_n > d_{n+1}.$$
Ezzel az állítást igazoltuk minden $n \in \mathbb{N}$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — az $e$ szám definíciója és közrefogása.**

*A két nevezetes sorozat.*
- $e_n = \left(1 + \frac{1}{n}\right)^n$ szigorúan monoton **növekvő** (szintén a számtani–mértani egyenlőtlenséggel: $n$ darab $1 + 1/n$ és egy darab $1$ középértékéből).
- $d_n = \left(1 + \frac{1}{n}\right)^{n+1}$ szigorúan monoton **csökkenő** (a feladatban látott módon).

*Kapcsolatuk és határértékük.*
Mivel $1 + 1/n > 1$, nyilvánvalóan $e_n < d_n$. Sőt bármely $n, m \in \mathbb{N}$ esetén:
$$e_n < e_{n+m} < d_{n+m} < d_m.$$
Tehát az $[e_n, d_n]$ intervallumok egymásba skatulyázottak:
$$[e_1, d_1] \supset [e_2, d_2] \supset [e_3, d_3] \supset \dots$$
A hosszuk nullához tart:
$$d_n - e_n = e_n \left(1 + \frac{1}{n} - 1\right) = \frac{e_n}{n} < \frac{4}{n} \to 0.$$
A Cantor-féle közösrész-tétel szerint létezik pontosan egy közös valós szám, amely minden intervallumban benne van:
$$\bigcap_{n=1}^\infty [e_n, d_n] = \{e\}, \qquad e \approx 2{,}71828\dots$$
Ez az $e$ szám (Euler-féle szám) definíciójának egyik legszebb, elemi megalapozása.
:::

## 32*. feladat

$n! > \left(\frac{n}{4}\right)^n$.

**Megoldás.**

Az állítást $n$ szerinti teljes indukcióval bizonyítjuk.

- **Kezdőlépés ($n = 1$):**
  A bal oldal: $1! = 1$.
  A jobb oldal: $\left(\frac{1}{4}\right)^1 = \frac{1}{4}$.
  Mivel $1 > \frac{1}{4}$, az állítás $n = 1$-re igaz.

- **Indukciós feltevés:**
  Tegyük fel, hogy valamely $n \ge 1$ egészre az állítás teljesül, azaz
  $$n! > \left(\frac{n}{4}\right)^n.$$

- **Indukciós lépés:**
  Meg kell mutatnunk, hogy $(n+1)! > \left(\frac{n+1}{4}\right)^{n+1}$.
  A bal oldal a faktoriális definíciója és az indukciós feltevés alapján:
  $$(n+1)! = (n+1) \cdot n! > (n+1) \left(\frac{n}{4}\right)^n.$$
  Tehát elegendő azt igazolni, hogy
  $$(n+1) \left(\frac{n}{4}\right)^n \ge \left(\frac{n+1}{4}\right)^{n+1}.$$
  Írjuk át a jobb oldalt:
  $$\left(\frac{n+1}{4}\right)^{n+1} = \frac{n+1}{4} \cdot \left(\frac{n+1}{4}\right)^n.$$
  Mivel $n+1 > 0$, osszuk el mindkét oldalt $(n+1)$-gyel:
  $$\left(\frac{n}{4}\right)^n \ge \frac{1}{4} \left(\frac{n+1}{4}\right)^n \iff \frac{n^n}{4^n} \ge \frac{(n+1)^n}{4 \cdot 4^n}.$$
  Szorozzuk meg mindkét oldalt a pozitív $4 \cdot 4^n$ számmal:
  $$4 \cdot n^n \ge (n+1)^n \iff 4 \ge \left(\frac{n+1}{n}\right)^n = \left(1 + \frac{1}{n}\right)^n.$$
  Tudjuk, hogy az $e_n = \left(1 + \frac{1}{n}\right)^n$ sorozat határértéke az $e$ szám, és szigorúan monoton nő:
  $$\left(1 + \frac{1}{n}\right)^n < e \approx 2{,}71828 < 4.$$
  (Ha az $e$ szám tulajdonságaira még nem támaszkodhatunk, a binomiális tétellel is közvetlenül adódik:
  $$\left(1 + \frac{1}{n}\right)^n = 1 + n \cdot \frac{1}{n} + \binom{n}{2}\frac{1}{n^2} + \dots + \binom{n}{n}\frac{1}{n^n} < 1 + 1 + \frac{1}{2!} + \frac{1}{3!} + \dots < 1 + \sum_{k=0}^\infty \frac{1}{2^k} = 1 + 2 = 3 < 4.)$$
  Mivel $\left(1 + \frac{1}{n}\right)^n < 4$ minden $n \ge 1$-re fennáll, ezért a fenti egyenlőtlenség-lánc visszafelé is érvényes:
  $$(n+1) \left(\frac{n}{4}\right)^n > \left(\frac{n+1}{4}\right)^{n+1}.$$
  Ezt az indukciós alsó becsléssel összekapcsolva:
  $$(n+1)! = (n+1) n! > (n+1) \left(\frac{n}{4}\right)^n > \left(\frac{n+1}{4}\right)^{n+1}.$$
  A teljes indukció elve szerint az állítás minden $n \in \mathbb{N}$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — faktoriális alsó becslése és kapcsolata a Stirling-formulával.**

*A konstans élessége.* Az indukciós lépésből világosan kiderült, miért működik a bizonyítás a $4$-es nevezővel: az indukciós lépéshez a $C \ge \left(1 + \frac{1}{n}\right)^n$ feltételnek kell teljesülnie. Mivel $\left(1 + \frac{1}{n}\right)^n \to e$, bármely $C \ge e$ konstansra (tehát $C = 3$-ra vagy $C = e$-re is) érvényes, hogy megfelelő kezdőlépés után $n! > \left(\frac{n}{C}\right)^n$. A $C = 4$ választás didaktikai előnye, hogy az $\left(1 + \frac{1}{n}\right)^n < 4$ egyenlőtlenség teljesen triviális, mélyebb analitikus gépezet nélkül is azonnal adódik.

*Stirling-formula kontextusa.* A faktoriális pontos aszimptotikája $n! \sim \sqrt{2\pi n} \left(\frac{n}{e}\right)^n$. Mivel $e \approx 2{,}718 < 4$, a feladatban szereplő alsó korlát sokkal kisebb a valós értéknél:
$$\frac{n!}{(n/4)^n} \sim \sqrt{2\pi n} \left(\frac{4}{e}\right)^n \to \infty,$$
tehát az arányuk exponenciálisan a végtelenbe tart.
:::

## 33*. feladat

Létezik-e $(0, 1]$ és $[0, 1]$ között bijekció?

**Megoldás.**

**Igen, létezik.**

*Konstrukció:*
A $(0, 1]$ félig nyílt intervallum és a $[0, 1]$ zárt intervallum között a különbség mindössze egyetlen pont: a $0$. Véges halmazoknál egyetlen elem hozzáadása megváltoztatja az elemszámot, végtelen halmazoknál azonban a **Hilbert-féle szálloda elve** szerint egy megszámlálható részsorozat eltolásával „helyet csinálhatunk” a hiányzó pontnak.

Válasszunk ki a $(0, 1]$ intervallumban egy megszámlálhatóan végtelen pontsorozatot, például:
$$S = \left\{1, \frac{1}{2}, \frac{1}{3}, \dots, \frac{1}{n}, \dots\right\} = \left\{\frac{1}{n} : n \in \mathbb{N}\right\} \subset (0, 1].$$
Definiáljuk a $g : [0, 1] \to (0, 1]$ leképezést a következő előírással:
- A $0$ pontot küldjük az $1$-be:
  $$g(0) = 1.$$
- Az $S$ halmaz elemeit toljuk el a sorozat következő tagjába:
  $$g\left(\frac{1}{n}\right) = \frac{1}{n+1} \quad (\forall n \in \mathbb{N}).$$
- Minden egyéb pontot hagyjunk helyben:
  $$g(x) = x, \quad \text{ha } x \in [0, 1] \setminus \left(\{0\} \cup S\right).$$

*A leképezés bijektivitásának ellenőrzése:*
1. **Értékkészlet:**
   - $g(0) = 1 \in (0, 1]$.
   - Ha $x = \frac{1}{n} \in S$, akkor $g(x) = \frac{1}{n+1} \in (0, 1]$.
   - Ha $x \in [0, 1] \setminus (\{0\} \cup S)$, akkor $g(x) = x \in (0, 1]$.
   Tehát minden $x \in [0, 1]$-re $g(x) \in (0, 1]$.
2. **Injektivitás:**
   Bontsuk a $[0, 1]$ értelmezési tartományt két diszjunkt részre: $A_1 = \{0\} \cup S$ és $A_2 = [0, 1] \setminus A_1$.
   - Az $A_1$ halmazon a képhalmaz $g(A_1) = \{1, \frac{1}{2}, \frac{1}{3}, \dots\} = S$. Itt a leképezés kölcsönösen egyértelmű, hiszen a pontok sorrendben az $1, \frac{1}{2}, \frac{1}{3}, \dots$ értékeket veszik fel, mindegyiket pontosan egyszer.
   - Az $A_2$ halmazon a leképezés az identitás: $g(A_2) = A_2$, ami szintén injektív.
   - A két képhalmaz diszjunkt: $g(A_1) = S$ és $g(A_2) = (0, 1] \setminus S$, hiszen $A_2$-ből eleve elhagytuk $S$ elemeit.
   Ezért különböző pontok képe sosem egyezhet meg, $g$ injektív.
3. **Szürjektivitás:**
   A képhalmaz a két diszjunkt kép egyesítése:
   $$R(g) = g(A_1) \cup g(A_2) = S \cup \left((0, 1] \setminus S\right) = (0, 1].$$
   Minden pont a $(0, 1]$ halmazból fel van véve, tehát $g$ szürjektív.

Mivel $g : [0, 1] \to (0, 1]$ bijekció, létezik az inverze, $f = g^{-1} : (0, 1] \to [0, 1]$, amely szintén bijekció:
$$f(x) = \begin{cases} 0, & \text{ha } x = 1, \\ \frac{1}{n-1}, & \text{ha } x = \frac{1}{n} \text{ valamely } n \ge 2 \text{ egészre}, \\ x, & \text{ha } x \in (0, 1] \setminus \left\{\frac{1}{n} : n \in \mathbb{N}\right\}. \end{cases}$$
Tehát valóban létezik bijekció $(0, 1]$ és $[0, 1]$ között. $\blacksquare$

::: elmelet
**Elméleti háttér — végtelen halmazok számossága és a topológiai különbségek.**

*Kontínuum számosság.* Bármely két nem elfajuló valós intervallum azonos számosságú, függetlenül attól, hogy nyíltak, zártak, félig nyíltak, korlátosak vagy korlátlanok:
$$(0, 1) \sim [0, 1) \sim (0, 1] \sim [0, 1] \sim \mathbb{R}.$$
Minden ilyen intervallum számossága a **kontínuum számosság**: $|\mathbb{R}| = \mathfrak{c} = 2^{\aleph_0}$.

*Általános elv: elnyelés megszámlálható részhalmazon.* Ha egy $X$ halmaznak van egy végtelen $S = \{s_1, s_2, \dots\} \subseteq X$ megszámlálható részhalmaza, akkor tetszőleges véges vagy megszámlálható pont hozzáadása vagy elvétele nem változtatja meg a számosságot. A hozzáadott pontokat a megszámlálható sorozat elejére illesztjük, a meglévő pontokat pedig eltoljuk (pontosan úgy, mint a Hilbert-szállodában az $n \mapsto n+1$ eltolással).

*Halmazelmélet vs. Topológia.* Bár $(0, 1]$ és $[0, 1]$ között létezik bijekció, **folytonos** bijekció, amelynek az inverze is folytonos (homeomorfizmus), **nem létezik**. Ennek oka a kompaktitás: $[0, 1]$ zárt és korlátos, így a Heine–Borel-tétel szerint kompakt, míg $(0, 1]$ nem kompakt (nem zárt). Folytonos leképezés kompakt halmazt kompakt halmazba visz, így a két halmaz topológiailag lényegesen különbözik.
:::

## Röpzhra

### Definíciók és tételek

- **Rendezett pár:** Az $(a, b)$ rendezett párban a tagok sorrendje számít: $(a, b) = (c, d) \iff a = c \text{ és } b = d$. (Halmazelméleti modellje a Kuratowski-féle definíció: $(a, b) = \{\{a\}, \{a, b\}\}$.)
- **Descartes-szorzat:** Két halmaz, $A$ és $B$ Descartes-szorzata a rendezett párok halmaza:
  $$A \times B = \{(a, b) : a \in A, \; b \in B\}.$$
  Speciálisan $A \times A$ az $A$ önmagával vett szorzata.
- **Reláció:** Egy $R \subseteq A \times B$ halmazt az $A$ és $B$ közötti **bináris relációnak** nevezünk. Ha $(a, b) \in R$, akkor azt mondjuk, hogy $a$ relációban áll $b$-vel (jelölése: $a \, R \, b$).
- **Függvény (leképezés):** Egy $f \subseteq A \times B$ relációt $A$-ból $B$-be képező **függvénynek** nevezünk (jelölése: $f : A \to B$), ha minden $x \in A$ elemhez létezik pontosan egy olyan $y \in B$ elem, amelyre $(x, y) \in f$. Ezt az egyértelmű $y$-t $f(x)$-szel jelöljük. $A = D(f)$ az értelmezési tartomány, $B$ a képtér, $R(f) = f(A) = \{f(x) : x \in A\} \subseteq B$ az értékkészlet.
- **Injektív függvény:** Az $f : A \to B$ függvény **injektív** (egy-egyértelmű), ha különböző elemek képe különböző:
  $$\forall x_1, x_2 \in A: \quad x_1 \neq x_2 \implies f(x_1) \neq f(x_2),$$
  vagy ekvivalensen: $f(x_1) = f(x_2) \implies x_1 = x_2$.
- **Szürjektív függvény:** Az $f : A \to B$ függvény **szürjektív** (ráképezés), ha minden értéket felvesz:
  $$\forall y \in B \; \exists x \in A: \quad f(x) = y \iff R(f) = B.$$
- **Bijektív függvény:** Az $f : A \to B$ függvény **bijektív** (kölcsönösen egyértelmű megfeleltetés), ha egyszerre injektív és szürjektív.
- **Identitás függvény:** Az $A$ halmaz identitásfüggvénye $\mathrm{id}_A : A \to A$, $\mathrm{id}_A(x) = x$ minden $x \in A$-ra.
- **Függvények kompozíciója (összetett függvény):** Ha $f : A \to B$ és $g : B \to C$, akkor $g \circ f : A \to C$ a kompozíciójuk:
  $$(g \circ f)(x) = g(f(x)) \quad (\forall x \in A).$$
- **Inverz függvény:** Ha $f : A \to B$ bijektív, akkor az **inverze** az a $f^{-1} : B \to A$ függvény, amelyre $f^{-1}(y) = x \iff f(x) = y$. Fennáll: $f^{-1} \circ f = \mathrm{id}_A$ és $f \circ f^{-1} = \mathrm{id}_B$.
- **$n$-tagú sorozat:** Az $\{1, 2, \dots, n\}$ halmazon értelmezett függvény: $a : \{1, \dots, n\} \to A$. Értékeit $(a_1, a_2, \dots, a_n)$ formában jelöljük.
- **Végtelen sorozat:** A természetes számok $\mathbb{N} = \{1, 2, 3, \dots\}$ halmazán értelmezett függvény: $a : \mathbb{N} \to A$. Az $n$-edik elemet $a(n)$ helyett $a_n$-nel jelöljük; a sorozatot magát $(a_n)_{n=1}^\infty$ vagy $(a_n)$ jelöli.
- **Monoton növő sorozat:** Egy $(a_n)$ valós számsorozat **monoton növő**, ha minden $n \in \mathbb{N}$ esetén $a_n \le a_{n+1}$. **Szigorúan monoton növő**, ha $a_n < a_{n+1}$.
- **Korlátos sorozat:**
  - *Felülről korlátos:* ha $\exists K \in \mathbb{R}$ úgy, hogy $\forall n \in \mathbb{N}: a_n \le K$.
  - *Alulról korlátos:* ha $\exists k \in \mathbb{R}$ úgy, hogy $\forall n \in \mathbb{N}: a_n \ge k$.
  - *Korlátos:* ha alulról és felülről is korlátos, azaz $\exists M > 0$ úgy, hogy $\forall n \in \mathbb{N}: |a_n| \le M$.
