# Analízis 1 – 4. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 34. feladat

Legyen $a_1 = 1$ és $a_{n+1} = \sqrt{2a_n + 3}$. Bizonyítsuk be, hogy $a_n \le a_{n+1}$ $\forall n \in \mathbb{N}$-re.

**Megoldás.**

A sorozat jól definiált, mert indukcióval $a_n > 0$, így $2a_n + 3 > 0$. Teljes indukcióval igazoljuk, hogy $a_n \le a_{n+1}$.

*Kezdőlépés:* $a_1 = 1$, $a_2 = \sqrt{5} > 1$.

*Indukciós lépés:* ha $a_n \le a_{n+1}$, akkor $2a_n + 3 \le 2a_{n+1} + 3$, és mivel a négyzetgyökfüggvény monoton nő,
$$a_{n+1} = \sqrt{2a_n + 3} \le \sqrt{2a_{n+1} + 3} = a_{n+2}. \qquad \blacksquare$$

*Kiegészítés:* indukcióval $a_n \le 3$ is igaz ($a_n \le 3 \Rightarrow a_{n+1} \le \sqrt{9} = 3$), így a sorozat monoton és korlátos, tehát konvergens. Ha $a_n \to A$, akkor $A = \sqrt{2A + 3}$, azaz $A^2 - 2A - 3 = (A - 3)(A + 1) = 0$, és $A \ge 1$ miatt $A = 3$.

::: elmelet
**Elméleti háttér — rekurzív sorozatok monotonitása indukcióval.** Ha $a_{n+1} = f(a_n)$ és $f$ **monoton növő**, akkor a monotonitás „öröklődik”: $a_n \le a_{n+1} \Rightarrow f(a_n) \le f(a_{n+1})$, azaz $a_{n+1} \le a_{n+2}$. Így elég az első két tagot összehasonlítani. Hasonlóan egy $f$-invariáns intervallum ($f([1,3]) \subseteq [1,3]$) korlátot ad. A **monoton és korlátos sorozat konvergens** (teljességi axióma), a határérték pedig az $A = f(A)$ fixpontegyenletből jön (ha $f$ folytonos).
:::

## 35. feladat

Keressünk olyan $N_0$ számot, hogy $\forall n > N_0$ esetén teljesüljön, hogy

a) $\sqrt{n+1} - \sqrt{n} < \frac{1}{100}$, b) $\sqrt{n^2 + 5} - n < 0{,}01$.

**Megoldás.**

a) Gyöktelenítéssel
$$\sqrt{n+1} - \sqrt{n} = \frac{1}{\sqrt{n+1} + \sqrt{n}} < \frac{1}{2\sqrt{n}}.$$
Ez legfeljebb $\frac{1}{100}$, ha $2\sqrt{n} \ge 100$, azaz $n \ge 2500$. Tehát **$N_0 = 2499$** megfelel. Ez a legjobb küszöb is: $n = 2499$-re $\sqrt{2500} + \sqrt{2499} < 100$, így ott az egyenlőtlenség nem teljesül.

b) Hasonlóan
$$\sqrt{n^2 + 5} - n = \frac{5}{\sqrt{n^2 + 5} + n} < \frac{5}{2n},$$
ami $n \ge 250$ esetén legfeljebb $0{,}01$. Tehát **$N_0 = 249$** megfelel. (Ez is optimális: $n = 249$-re $\sqrt{62\,006} + 249 \approx 498{,}01 < 500$.)

::: elmelet
**Elméleti háttér — gyöktelenítés.** A $\sqrt{u} - \sqrt{v}$ alakú különbségeket az $(x - y)(x + y) = x^2 - y^2$ azonossággal alakítjuk át: $\sqrt u - \sqrt v = \frac{u - v}{\sqrt u + \sqrt v}$. Így a „$\infty - \infty$” típusú kifejezésből egy jól becsülhető tört lesz, amelynek nevezőjét alulról egyszerű kifejezéssel ($2\sqrt n$, $2n$) becsüljük. Küszöbindexhez elég egy felső becslés, amelyből $N_0$ kiolvasható.
:::

## 36. feladat

Előadáson szerepelt, hogy $\lim\limits_{n \to \infty} \frac{(-1)^n}{2n} = 0$. Adjunk $\varepsilon = 0{,}01$-hoz $n_\varepsilon$-t. Illetve általában $\varepsilon > 0$-hoz $n_\varepsilon$-t.

**Megoldás.**

$\left|\frac{(-1)^n}{2n} - 0\right| = \frac{1}{2n} < \varepsilon \iff n > \frac{1}{2\varepsilon}$.

- $\varepsilon = 0{,}01$: $n > 50$, tehát **$n_\varepsilon = 51$** (minden $n \ge 51$-re teljesül).
- Általában: **$n_\varepsilon = \left\lfloor \frac{1}{2\varepsilon} \right\rfloor + 1$** jó választás (az arkhimédészi tulajdonság garantálja, hogy ilyen egész létezik).

::: elmelet
**Elméleti háttér — a konvergencia definíciója.** $a_n \to a$, ha $\forall \varepsilon > 0\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon: |a_n - a| < \varepsilon$. Az $n_\varepsilon$ megtalálása az $|a_n - a| < \varepsilon$ egyenlőtlenség $n$-re való megoldása (vagy felső becslés után megoldása); az **arkhimédészi tulajdonság** garantálja, hogy az így kapott valós korlátnál van nagyobb egész.
:::

## 37. feladat

a) Mondjuk ki, hogy $a_n \not\to a$.

b) Mondjuk ki, hogy $(a_n)$ divergens.

**Megoldás.**

a) $a_n \not\to a$:
$$\exists \varepsilon > 0\ \forall N \in \mathbb{N}\ \exists n \ge N : |a_n - a| \ge \varepsilon,$$
azaz van olyan $\varepsilon$-környezete $a$-nak, amelyen kívül a sorozatnak végtelen sok tagja van.

b) $(a_n)$ divergens, azaz semmilyen valós számhoz nem tart:
$$\forall a \in \mathbb{R}\ \exists \varepsilon > 0\ \forall N \in \mathbb{N}\ \exists n \ge N : |a_n - a| \ge \varepsilon.$$

::: elmelet
**Elméleti háttér — kvantoros állítás tagadása.** Tagadáskor a kvantorok felcserélődnek ($\forall \leftrightarrow \exists$), a sorrendjük megmarad, és a végén álló feltételt tagadjuk ($<$ helyett $\ge$). Divergencia = „semmilyen $a \in \mathbb R$-hez nem tart”, ezért a tagadás elé egy $\forall a$ kerül. Szemléletesen: $a_n \not\to a$ akkor, ha van olyan környezete $a$-nak, amelyen kívül **végtelen sok** tag van.
:::

## 38. feladat

Határozzuk meg az alábbi sorozatok határértékét, és adjunk meg adott $\varepsilon > 0$-hoz $n_\varepsilon$-t:

a) $1/\sqrt{n}$; b) $1/\sqrt[3]{n}$; c) $(2n+1)/(n+1)$; d) $1/(n - \sqrt{n})$; e) $(1 + \dots + n)/n^2$; f) $\sqrt[n]{7}$; g) $n \cdot \left(\sqrt{1 + (1/n)} - 1\right)$; h) $\sqrt{n^2+1} + \sqrt{n^2-1} - 2n$; i) $\sqrt[3]{n+2} - \sqrt[3]{n-2}$; j) $\sqrt[n]{n}$.

**Megoldás.**

A becslésekben mindig olyan $n_\varepsilon$-t adunk, amelytől kezdve $|a_n - a| < \varepsilon$.

a) $\frac{1}{\sqrt n} \to 0$: $\frac{1}{\sqrt n} < \varepsilon \iff n > \frac{1}{\varepsilon^2}$, $n_\varepsilon = \lfloor 1/\varepsilon^2 \rfloor + 1$.

b) $\frac{1}{\sqrt[3]{n}} \to 0$: $\frac{1}{\sqrt[3]n} < \varepsilon \iff n > \frac{1}{\varepsilon^3}$, $n_\varepsilon = \lfloor 1/\varepsilon^3 \rfloor + 1$.

c) $\frac{2n+1}{n+1} = 2 - \frac{1}{n+1} \to 2$: $\frac{1}{n+1} < \varepsilon \iff n > \frac1\varepsilon - 1$, pl. $n_\varepsilon = \lfloor 1/\varepsilon \rfloor + 1$.

d) $\frac{1}{n - \sqrt n} \to 0$ (a sorozat $n \ge 2$-re értelmes). Ha $n \ge 4$, akkor $\sqrt n \le \frac n2$, így $n - \sqrt n \ge \frac n2$ és $\frac{1}{n - \sqrt n} \le \frac{2}{n} < \varepsilon$, ha $n > \frac2\varepsilon$. $n_\varepsilon = \max\{4, \lfloor 2/\varepsilon \rfloor + 1\}$.

e) $\frac{1 + \dots + n}{n^2} = \frac{n(n+1)}{2n^2} = \frac12 + \frac{1}{2n} \to \frac12$: $\frac{1}{2n} < \varepsilon \iff n > \frac{1}{2\varepsilon}$.

f) $\sqrt[n]{7} \to 1$: írjuk $\sqrt[n]7 = 1 + h_n$, $h_n > 0$. A Bernoulli-egyenlőtlenséggel $7 = (1 + h_n)^n \ge 1 + nh_n$, így $0 < h_n \le \frac6n$. Tehát $|\sqrt[n]7 - 1| < \varepsilon$, ha $n > \frac{6}{\varepsilon}$.

g) $n\left(\sqrt{1 + \frac1n} - 1\right) = \dfrac{n \cdot \frac1n}{\sqrt{1 + \frac1n} + 1} = \dfrac{1}{\sqrt{1 + \frac1n} + 1} \to \frac12$. Jelölje $s = \sqrt{1 + \frac1n}$. Ekkor
$$\left|\frac{1}{s+1} - \frac12\right| = \frac{s - 1}{2(s+1)} \le \frac{s-1}{4} = \frac{1/n}{4(s + 1)} \le \frac{1}{8n},$$
ami $< \varepsilon$, ha $n > \frac{1}{8\varepsilon}$.

h) $\sqrt{n^2+1} + \sqrt{n^2-1} - 2n = \left(\sqrt{n^2+1} - n\right) - \left(n - \sqrt{n^2-1}\right) = \dfrac{1}{\sqrt{n^2+1} + n} - \dfrac{1}{n + \sqrt{n^2 - 1}} \to 0$. Becslés: $|h_n| \le \frac{1}{2n} + \frac1n = \frac{3}{2n} < \varepsilon$, ha $n > \frac{3}{2\varepsilon}$.

i) Az $A^3 - B^3 = (A - B)(A^2 + AB + B^2)$ azonossággal ($A = \sqrt[3]{n+2}$, $B = \sqrt[3]{n-2}$, $n \ge 2$, így $B \ge 0$):
$$\sqrt[3]{n+2} - \sqrt[3]{n-2} = \frac{4}{A^2 + AB + B^2} \le \frac{4}{A^2} \le \frac{4}{n^{2/3}} \to 0,$$
és ez $< \varepsilon$, ha $n > \left(\frac4\varepsilon\right)^{3/2}$.

j) $\sqrt[n]{n} \to 1$: írjuk $\sqrt[n]n = 1 + h_n$, $h_n \ge 0$. A binomiális tétel szerint ($n \ge 2$) $n = (1 + h_n)^n \ge 1 + \binom n2 h_n^2$, így $h_n^2 \le \frac{n - 1}{n(n-1)/2} = \frac2n$, azaz $0 \le h_n \le \sqrt{2/n}$. Tehát $|\sqrt[n]n - 1| < \varepsilon$, ha $n > \frac{2}{\varepsilon^2}$.

::: elmelet
**Elméleti háttér — becslési technikák határértékhez.** A definíció ellenőrzéséhez $|a_n - a|$-t egy egyszerű, nullához tartó kifejezéssel (pl. $\frac Cn$, $\frac{C}{\sqrt n}$) becsüljük felülről. Eszközök: (1) **gyöktelenítés** ($\sqrt u - \sqrt v$, illetve köbgyökökre $A^3 - B^3 = (A - B)(A^2 + AB + B^2)$); (2) **Bernoulli-egyenlőtlenség** $\sqrt[n]{a} = 1 + h_n$ esetén ($a \ge 1 + nh_n$); (3) **binomiális tétel** egy kiválasztott tagja, ha a lineáris becslés nem elég ($\sqrt[n]n$-nél a $\binom n2 h_n^2$ tag); (4) a nevező alulról becslése (pl. $n - \sqrt n \ge \frac n2$, ha $n \ge 4$).
:::

## 39. feladat

a) Mutassuk meg, hogy $a_n \to a$ acsa, ha $(a_n - a) \to 0$.

b) Mutassuk meg, hogy $a_n \to 0$ acsa, ha $|a_n| \to 0$.

c) Bizonyítandó, hogy ha $(a_n)$ konvergens, akkor $(|a_n|)$ is konvergens. Igaz-e az állítás megfordítása?

**Megoldás.**

a) Az $a_n \to a$ definíciója: $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - a| < \varepsilon$. Az $(a_n - a) \to 0$ definíciója: $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |(a_n - a) - 0| < \varepsilon$. A két formula szó szerint ugyanaz.

b) $|a_n - 0| = |a_n| = \big||a_n| - 0\big|$, tehát a két definíció ismét azonos.

c) A fordított háromszög-egyenlőtlenség szerint $\big||a_n| - |a|\big| \le |a_n - a|$. Ha $a_n \to a$, akkor adott $\varepsilon$-hoz ugyanaz az $N$ jó $|a_n| \to |a|$-hoz is. **A megfordítás nem igaz:** $a_n = (-1)^n$ divergens, de $|a_n| = 1 \to 1$. (A b) rész szerint az $a = 0$ speciális esetben viszont a megfordítás is igaz.)

::: elmelet
**Elméleti háttér — definíciók egyezése és a fordított háromszög-egyenlőtlenség.** Két fogalom ekvivalenciáját sokszor elég a definíciók összevetésével látni (a) és b)). A $||x| - |y|| \le |x - y|$ fordított háromszög-egyenlőtlenség azt mutatja, hogy az abszolútérték-függvény „nem növeli a távolságot” (1-Lipschitz), ezért konvergens sorozatból konvergenset csinál. A megfordítás nem igaz, mert az abszolút érték „elfelejti” az előjelet.
:::

## 40. feladat

a) Készítendő divergens $(a_n)$ sorozat, melyre $a_{n+1} - a_n \to 0$.

b) Tegyük fel, hogy $a_{n+1} - a_n \to 0$. Következik-e ebből, hogy $a_{2n} - a_n \to 0$?

**Megoldás.**

a) $a_n = \sqrt{n}$: $a_{n+1} - a_n = \frac{1}{\sqrt{n+1} + \sqrt n} \to 0$, de $a_n \to +\infty$, tehát divergens.

b) **Nem következik.** Ugyanez a példa: $a_{2n} - a_n = \sqrt{2n} - \sqrt n = (\sqrt2 - 1)\sqrt n \to +\infty$. (Egy másik példa a harmonikus részletösszegek sorozata: $H_n = 1 + \frac12 + \dots + \frac1n$; ekkor $H_{n+1} - H_n = \frac{1}{n+1} \to 0$, de $H_{2n} - H_n = \sum_{k=n+1}^{2n} \frac1k \ge n \cdot \frac{1}{2n} = \frac12$.)

::: elmelet
**Elméleti háttér — szomszédos tagok különbsége nem elég a konvergenciához.** A Cauchy-kritérium szerint $(a_n)$ pontosan akkor konvergens, ha $|a_m - a_n|$ **tetszőleges** elég nagy $m, n$-re kicsi. Az $a_{n+1} - a_n \to 0$ feltétel csak a szomszédos tagokról szól; sok kicsi lépés összeadódhat (a $\sqrt n$ vagy a harmonikus sor részletösszegei lassan, de korlátlanul nőnek). Ellenpéldával cáfolunk: egyetlen sorozat elég.
:::

## 41. feladat

Hogyan viszonyulnak az $a_n \to a$ állításhoz a következő állítások?

a) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| \le 5\varepsilon$;

b) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < \varepsilon^2$;

c) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < 1 + \varepsilon$;

d) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| \le \sqrt{\varepsilon}$;

e) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < \varepsilon - 1$;

f) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < \frac{1}{\varepsilon}$;

g) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - \varepsilon| \le 10$.

**Megoldás.**

a) **Ekvivalens** az $a_n \to a$-val. Ha $a_n \to a$, akkor $|a_n - a| < \varepsilon \le 5\varepsilon$. Megfordítva, adott $\varepsilon'$-höz alkalmazzuk a feltételt $\varepsilon = \varepsilon'/10$-zel: $|a_n - a| \le \varepsilon'/2 < \varepsilon'$.

b) **Ekvivalens.** Ha $a_n \to a$, alkalmazzuk a definíciót $\varepsilon^2$-tel. Megfordítva, adott $\varepsilon'$-höz válasszuk $\varepsilon = \sqrt{\varepsilon'}$-t.

c) **Gyengébb:** $a_n \to a$-ból következik, de fordítva nem. Pl. $a_n = a + \frac{(-1)^n}{2}$ esetén $|a_n - a| = \frac12 < 1 + \varepsilon$ mindig, de $a_n \not\to a$. (Az állítás azzal ekvivalens, hogy $\limsup |a_n - a| \le 1$.)

d) **Ekvivalens.** Ha $a_n \to a$, alkalmazzuk a definíciót $\sqrt\varepsilon$-nal. Megfordítva, adott $\varepsilon'$-höz válasszuk $\varepsilon = \varepsilon'^2/4$-et: $|a_n - a| \le \varepsilon'/2 < \varepsilon'$.

e) **Egyetlen sorozatra sem teljesül:** $\varepsilon \le 1$ esetén $\varepsilon - 1 \le 0$, és $|a_n - a| < \varepsilon - 1 \le 0$ lehetetlen. Formálisan tehát az állításból (mint hamis állításból) minden következik, $a_n \to a$-ból viszont nem következik.

f) **Ekvivalens.** Ha $a_n \to a$, alkalmazzuk a definíciót $1/\varepsilon$-nal. Megfordítva, adott $\varepsilon'$-höz alkalmazzuk a feltételt $\varepsilon = 1/\varepsilon'$-vel: $|a_n - a| < \varepsilon'$. (A kulcs: a feltétel *minden* $\varepsilon$-ra szól, a nagy $\varepsilon$-ok adják a kis hibakorlátot.)

g) **Egyetlen sorozatra sem teljesül** (és $a$-tól független). $\varepsilon = 100$-ra egy indextől kezdve $a_n \ge 90$, míg $\varepsilon = \frac12$-re egy indextől kezdve $a_n \le 10{,}5$ – a kettő egyszerre lehetetlen.

::: elmelet
**Elméleti háttér — a definíció „robusztussága”.** Ha az $\varepsilon$ helyett egy $g(\varepsilon)$ hibakorlát áll, ahol $g$ **minden** pozitív értéket felvesz a $0$ körül, vagy legalább $g(\varepsilon) \to 0$, ha $\varepsilon \to 0$ (pl. $5\varepsilon$, $\varepsilon^2$, $\sqrt\varepsilon$, sőt $\frac1\varepsilon$, ha $\varepsilon \to \infty$), akkor az állítás ekvivalens a konvergenciával: a kívánt $\varepsilon'$-höz megfelelő $\varepsilon$-t választunk. Ha a hibakorlát nem tud tetszőlegesen kicsi lenni ($1 + \varepsilon$), az állítás gyengébb; ha pedig lehetetlen feltételt ír elő ($\varepsilon - 1 < 0$), akkor egyetlen sorozatra sem teljesül.
:::

## 42*. feladat

Bontsuk fel a számegyenest végtelen sok páronként diszjunkt sűrű halmaz egyesítésére.

**Megoldás.**

Legyen $A_k = \{q + k\sqrt2 : q \in \mathbb{Q}\}$, $k = 1, 2, 3, \dots$, és $A_0 = \mathbb{R} \setminus \bigcup_{k \ge 1} A_k$.

- **Diszjunktak:** ha $q + k\sqrt2 = q' + l\sqrt2$ és $k \ne l$, akkor $\sqrt2 = \frac{q' - q}{k - l} \in \mathbb{Q}$ volna – ellentmondás. $A_0$ definíció szerint diszjunkt a többitől.
- **Sűrűek:** $A_k = \mathbb{Q} + k\sqrt2$ a racionális számok eltoltja, és $\mathbb{Q}$ sűrű, tehát $A_k$ is az: az $(a, b)$ intervallumba eső $A_k$-elemekhez vegyünk racionális $q$-t az $(a - k\sqrt2, b - k\sqrt2)$ intervallumból. $A_0 \supseteq \mathbb{Q}$ (hiszen $A_k$ elemei $k \ge 1$-re irracionálisak), így $A_0$ is sűrű.
- **Egyesítésük** $\mathbb{R}$.

Tehát $\mathbb{R} = A_0 \cup A_1 \cup A_2 \cup \dots$ végtelen sok, páronként diszjunkt, sűrű halmaz egyesítése.

::: elmelet
**Elméleti háttér — sűrűség és eltolás.** Egy $A \subseteq \mathbb R$ halmaz **sűrű**, ha minden nyílt intervallum tartalmazza egy elemét. $\mathbb Q$ sűrű, és eltolással ($\mathbb Q + c$) a sűrűség megmarad. Az irracionális $\sqrt2$ különböző egész többszöröseivel eltolt példányok diszjunktak (különben $\sqrt2$ racionális volna). A maradék $A_0$ sűrűsége abból jön, hogy tartalmaz egy sűrű halmazt ($\mathbb Q$).
:::

## 43*. feladat

Adjunk meg olyan számsorozatot, melyben minden természetes szám végtelen sokszor szerepel.

**Megoldás.**

Például
$$1;\ 1, 2;\ 1, 2, 3;\ 1, 2, 3, 4;\ 1, 2, 3, 4, 5;\ \dots$$
azaz a $k$-adik blokk az $1, 2, \dots, k$ számokból áll. Az $m$ természetes szám minden $k \ge m$ blokkban szerepel, tehát végtelen sokszor. (Ha a $0$-t is természetes számnak tekintjük, a blokkok legyenek $0, 1, \dots, k$.)

Képlettel is: írjuk fel $n$-et $n = 2^a(2b + 1)$ alakban; legyen $x_n = a$. Ekkor minden $a \ge 0$ végtelen sokszor szerepel (minden páratlan $2b+1$-hez egyszer).

::: elmelet
**Elméleti háttér — megszámlálható sok megszámlálható halmaz felsorolása.** A blokkos felsorolás ugyanaz az ötlet, mint $\mathbb N \times \mathbb N$ megszámlálhatóságának bizonyításában: véges blokkokat sorolunk fel egymás után, és minden elem végtelen sok blokkban szerepel. A $2^a(2b+1)$ felírás egy explicit bijekció $\mathbb N$ és $\mathbb N_0 \times \mathbb N_0$ között (a számelmélet alaptétele miatt egyértelmű), és ennek első koordinátája adja a sorozatot.
:::

## Röpzhra

**Definíciók:** $\lim a_n = a$, $\lim a_n = +\infty$, sorozat átrendezése.

**Tételek:** $a_n \to a$-val ekvivalens tulajdonság $B(a, \varepsilon)$-beli tagokkal, $a_n \to a$ és korlátosság, monoton növő sorozatok és konvergencia, rendőrelv.
