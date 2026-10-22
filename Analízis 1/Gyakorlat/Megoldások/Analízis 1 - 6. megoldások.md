# Analízis 1 – 6. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 55. feladat

Bizonyítsuk be, hogy az egész számokból képezhető véges sorozatok száma megszámlálható.

**Megoldás.**

Legyen $\varphi : \mathbb{Z} \to \mathbb{N}^+$ injekció, pl. $\varphi(z) = 2z$, ha $z > 0$, és $\varphi(z) = 1 - 2z$, ha $z \le 0$. Jelölje $p_1 = 2, p_2 = 3, p_3 = 5, \dots$ a prímeket. Rendeljük a $(z_1, \dots, z_k)$ véges sorozathoz a
$$\Phi(z_1, \dots, z_k) = p_1^{\varphi(z_1)} \cdot p_2^{\varphi(z_2)} \cdots p_k^{\varphi(z_k)}$$
természetes számot (az üres sorozathoz az $1$-et). A számelmélet alaptétele (a prímtényezős felbontás egyértelműsége) és $\varphi(z_i) \ge 1$ miatt $\Phi$-ből visszaolvasható a hossz és minden tag, tehát $\Phi$ injektív. Így a véges sorozatok halmaza legfeljebb megszámlálható; mivel végtelen (az egytagú sorozatok már $\mathbb{Z}$-vel ekvivalensek), **megszámlálhatóan végtelen**.

(Másik út: a $k$ hosszú sorozatok halmaza $\mathbb{Z}^k$, ami megszámlálható, és megszámlálható sok megszámlálható halmaz uniója megszámlálható.)

::: elmelet
**Elméleti háttér — megszámlálhatóság: injekciók, kódolás, uniók.**

*Alapfogalmak.* Két halmaz **ekvivalens** (egyenlő számosságú, $A \sim B$), ha van köztük bijekció. $A$ **megszámlálhatóan végtelen**, ha $A \sim \mathbb{N}$; **legfeljebb megszámlálható**, ha véges vagy megszámlálhatóan végtelen.

*Három kényelmes kritérium.* Egy nem üres $A$ halmazra ekvivalensek:

1. $A$ legfeljebb megszámlálható;
2. van $A \to \mathbb{N}$ **injekció**;
3. van $\mathbb{N} \to A$ **szürjekció** (az elemei felsorolhatók, ismétlésekkel is).

Ezért megszámlálhatóság bizonyításához elég egy injektív „kódolást” vagy egy (nem feltétlenül ismétlésmentes) felsorolást adni. Végtelen részhalmaza révén pedig a halmaz legalább megszámlálható.

*A prímhatvány-kódolás (Gödel-számozás).* A $(z_1, \dots, z_k) \mapsto 2^{\varphi(z_1)}3^{\varphi(z_2)}\cdots p_k^{\varphi(z_k)}$ kódolás a **számelmélet alaptételén** (a prímfelbontás egyértelműségén) alapul: a kódból a kitevők, így a tagok visszaolvashatók. A $\varphi(z) \ge 1$ feltétel biztosítja, hogy a hossz is látszódjon (a $k$-adik prím szerepel, a $(k+1)$-edik nem). Ugyanezt a kódolást használta Gödel a nemteljességi tételében formulák számokkal való azonosítására.

*Uniók.* Megszámlálható sok, legfeljebb megszámlálható halmaz uniója legfeljebb megszámlálható. Bizonyítás: ha $A_k = \{a_{k1}, a_{k2}, \dots\}$, akkor $\bigcup_k A_k$ az $(k, j) \mapsto a_{kj}$ szürjekció képe $\mathbb{N} \times \mathbb{N}$-ről, és $\mathbb{N} \times \mathbb{N}$ megszámlálható (átlós felsorolás). (A felsorolások kiválasztása a megszámlálható kiválasztási axiómát használja, ami az analízisben szokásosan megengedett.)

*Következmények.* $\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{Z}^k$, a véges sorozatok, a véges részhalmazok, a polinomok (egész vagy racionális együtthatóval), a véges szövegek (egy véges ábécé fölött) halmaza mind megszámlálható. Ezzel szemben a **végtelen** $0$–$1$ sorozatok halmaza (azaz $\mathcal{P}(\mathbb{N})$) már nem (Cantor átlós érvelése, 62. feladat).
:::

## 56. feladat

Határozzuk meg az alábbi sorozatok határértékét.

(a) $a_n = \sqrt[n]{2n + \sqrt{n}}$, (b) $b_n = \dfrac{n^7 - 6n^6 + 5n^5 - n - 1}{n^3 + n^2 + n + 1}$, (c) $c_n = \dfrac{n^3 + n^2\sqrt{n} - \sqrt{n} + 1}{2n^3 - 6n + \sqrt{n} - 2}$,

(d) $d_n = \sqrt[n]{\dfrac{1}{n} - \dfrac{2}{n^2}}$, (e) $e_n = \sqrt[n]{2^n + 17n^2 + 3^n}$, (f) $f_n = \dfrac{\sqrt{2n + 1}}{\sqrt{3n + 4}}$,

(g) $g_n = \sqrt{\dfrac{n + 1}{n + 2}}$, (h) $h_n = \dfrac{7^n - 7^{-n}}{7^n + 7^{-n}}$, (i) $i_n = \dfrac{(2n + 3)^5 \cdot (18n + 17)^{15}}{(6n + 5)^{20}}$,

(j) $j_n = \dfrac{\sqrt{4n^2 + 2n + 100}}{\sqrt[3]{6n^3 - 7n^2 + 2}}$, (k) $k_n = \dfrac{\sqrt[4]{n^3 + 6}}{\sqrt[3]{n^2 + 3n - 2}}$, (l) $l_n = n \cdot (\sqrt{n + 1} - \sqrt{n})$,

(m) $m_n = \dfrac{2^n + 5^n}{3^n + 1}$, (q) $q_n = n \cdot (\sqrt{n^2 + n} - \sqrt{n^2 - n})$.

**Megoldás.**

(a) $1 \le \sqrt[n]{2n + \sqrt n} \le \sqrt[n]{3n} = \sqrt[n]3\,\sqrt[n]n \to 1$, tehát $a_n \to 1$.

(b) $n^3$-nel osztva: $b_n = \dfrac{n^4 - 6n^3 + 5n^2 - n^{-2} - n^{-3}}{1 + n^{-1} + n^{-2} + n^{-3}} \to +\infty$, hiszen a számláló $n^4(1 - 6/n + \dots) \to +\infty$, a nevező $\to 1$.

(c) $n^3$-nel osztva: $c_n = \dfrac{1 + n^{-1/2} - n^{-5/2} + n^{-3}}{2 - 6n^{-2} + n^{-5/2} - 2n^{-3}} \to \dfrac12$.

(d) Ha $n \ge 4$, akkor $\frac{2}{n^2} \le \frac{1}{2n}$, így $\frac{1}{2n} \le \frac1n - \frac{2}{n^2} \le \frac1n$, és
$$\frac{1}{\sqrt[n]{2n}} \le d_n \le \frac{1}{\sqrt[n]{n}}.$$
Mindkét korlát $1$-hez tart, tehát $d_n \to 1$.

(e) $3 \le \sqrt[n]{2^n + 17n^2 + 3^n} \le 3\sqrt[n]{2 + 17n^2} \to 3$ (ld. 49. a), tehát $e_n \to 3$.

(f) $f_n = \sqrt{\dfrac{2 + 1/n}{3 + 4/n}} \to \sqrt{\dfrac23}$ (ha $x_n \to x \ge 0$, akkor $\sqrt{x_n} \to \sqrt x$).

(g) $g_n = \sqrt{\dfrac{1 + 1/n}{1 + 2/n}} \to 1$.

(h) $7^n$-nel osztva: $h_n = \dfrac{1 - 49^{-n}}{1 + 49^{-n}} \to 1$.

(i) Minden tényezőt $n$-nel osztva:
$$i_n = \frac{(2 + 3/n)^5 (18 + 17/n)^{15}}{(6 + 5/n)^{20}} \to \frac{2^5 \cdot 18^{15}}{6^{20}} = \frac{2^5 \cdot 3^{15} \cdot 6^{15}}{6^{20}} = \frac{2^5 \cdot 3^{15}}{2^5 \cdot 3^5} = 3^{10} = 59\,049.$$

(j) $j_n = \dfrac{n\sqrt{4 + 2/n + 100/n^2}}{n\sqrt[3]{6 - 7/n + 2/n^3}} \to \dfrac{2}{\sqrt[3]{6}}$.

(k) $k_n = \dfrac{n^{3/4}(1 + 6/n^3)^{1/4}}{n^{2/3}(1 + 3/n - 2/n^2)^{1/3}} = n^{1/12} \cdot \dfrac{(1 + 6/n^3)^{1/4}}{(1 + 3/n - 2/n^2)^{1/3}} \to +\infty$, mert $n^{1/12} \to \infty$, a tört pedig $1$-hez tart.

(l) $l_n = \dfrac{n}{\sqrt{n+1} + \sqrt n} \ge \dfrac{n}{2\sqrt{2n}} = \dfrac{\sqrt n}{2\sqrt2} \to +\infty$.

(m) $m_n \ge \dfrac{5^n}{2 \cdot 3^n} = \dfrac12\left(\dfrac53\right)^n \to +\infty$ (mert $3^n + 1 \le 2 \cdot 3^n$).

(q) Gyöktelenítve:
$$q_n = \frac{n \cdot 2n}{\sqrt{n^2+n} + \sqrt{n^2-n}} = \frac{2n}{\sqrt{1 + 1/n} + \sqrt{1 - 1/n}} \ge \frac{2n}{2\sqrt2} \to +\infty.$$

::: elmelet
**Elméleti háttér — határérték-számítás: műveletek, folytonos függvények, domináns tag.**

*Műveleti tételek.* Ha $a_n \to a$, $b_n \to b$ ($a, b \in \mathbb{R}$), akkor $a_n + b_n \to a + b$, $a_nb_n \to ab$, $\frac{a_n}{b_n} \to \frac ab$ ($b \ne 0$). Ezek a bővített számegyenesre is kiterjeszthetők, kivéve a kritikus eseteket.

*Hatványok és gyökök.* Ha $a_n \to a$, akkor $a_n^k \to a^k$ (szorzatszabály), és $a_n \ge 0$, $a \ge 0$ esetén $\sqrt[k]{a_n} \to \sqrt[k]{a}$. Az utóbbi $a > 0$-ra az $x^k - y^k = (x - y)(x^{k-1} + \dots + y^{k-1})$ azonosságból: $|\sqrt[k]{a_n} - \sqrt[k]{a}| \le \frac{|a_n - a|}{\sqrt[k]{a}^{\,k-1}}$; $a = 0$-ra közvetlenül a definícióból. Általános elv (a függvények folytonosságánál): **folytonos függvény felcserélhető a határértékkel**.

*A domináns tag módszere törtekre.* Ha a számlálóban és a nevezőben különböző (akár tört kitevős) hatványok összegei állnak, osszunk a nevező legnagyobb hatványával. A legnagyobb kitevők különbsége dönt: $n^{a}/n^{b} = n^{a - b}$, ami $a > b$-re $\infty$, $a = b$-re $1$, $a < b$-re $0$. A k) részben $\frac34 - \frac23 = \frac1{12} > 0$, ezért a határérték $+\infty$ — bár „nagyon lassan”: $n^{1/12}$ még $n = 10^{12}$-re is csak $10$.

*Szorzat és hatvány domináns tagja.* Az i) rész mutatja: egy polinomszorzat domináns tagja a tényezők domináns tagjainak szorzata, így $(2n + 3)^5(18n + 17)^{15} \sim 2^5 18^{15} n^{20}$. Mivel a nevező is huszadfokú, a határérték a főegyütthatók hányadosa.

*Exponenciálisok.* $a^n$, $b^n$ összegeiben a legnagyobb alap dominál: $\frac{2^n + 5^n}{3^n + 1} \sim \left(\frac53\right)^n \to \infty$, $\frac{7^n - 7^{-n}}{7^n + 7^{-n}} \to 1$. (Az utóbbi a $\tanh(n\ln 7)$ — hiperbolikus tangens —, amely $1$-hez tart.)

*Gyökös különbségek.* Az l), q) részekben gyöktelenítés után a számláló és a nevező nagyságrendje: $l_n \sim \frac{\sqrt n}{2}$, $q_n \sim n$. Itt a gyöktelenítés nélküli „$\infty \cdot 0$” alakból semmi sem olvasható le.
:::

## 57. feladat

Adjunk példákat arra, hogy $a_n - b_n \to 0$, de $a_n/b_n$ nem tart 1-hez, illetve $a_n/b_n \to 1$, de $a_n - b_n$ nem tart 0-hoz.

**Megoldás.**

- $a_n - b_n \to 0$, de $a_n/b_n \not\to 1$: $a_n = \frac2n$, $b_n = \frac1n$. Ekkor $a_n - b_n = \frac1n \to 0$, de $a_n/b_n = 2$.
- $a_n/b_n \to 1$, de $a_n - b_n \not\to 0$: $a_n = n + 1$, $b_n = n$. Ekkor $\frac{a_n}{b_n} = 1 + \frac1n \to 1$, de $a_n - b_n = 1$. (Vagy $a_n = n^2 + n$, $b_n = n^2$: a különbség $n \to \infty$.)

::: elmelet
**Elméleti háttér — aszimptotikus egyenlőség és a különbség.**

*Definíció.* $a_n \sim b_n$ (**aszimptotikusan egyenlők**), ha $\frac{a_n}{b_n} \to 1$. Ez a „relatív hiba” kicsinysége: $\frac{a_n - b_n}{b_n} \to 0$. Ezzel szemben $a_n - b_n \to 0$ az „abszolút hiba” kicsinysége.

*Kapcsolatuk.*

- Ha $b_n$ korlátos *és* $|b_n| \ge c > 0$ (a $0$-tól elválasztott), akkor a kettő ekvivalens: $\frac{a_n}{b_n} - 1 = \frac{a_n - b_n}{b_n}$, és $\frac{1}{|b_n|} \le \frac1c$.
- Nullsorozatoknál az abszolút hiba mindig kicsi, a relatív hiba bármi lehet (az első példa).
- Végtelenbe tartó sorozatoknál a relatív hiba lehet kicsi, miközben az abszolút hiba nagy (a második példa).

*Nevezetes aszimptotikák.* $\sqrt{n+1} - \sqrt n \sim \frac{1}{2\sqrt n}$; $\binom{n}{2} \sim \frac{n^2}{2}$; $1 + 2 + \dots + n \sim \frac{n^2}{2}$; $H_n = 1 + \frac12 + \dots + \frac1n \sim \ln n$; **Stirling-formula:** $n! \sim \sqrt{2\pi n}\left(\frac ne\right)^n$ — itt a két oldal *különbsége* a végtelenbe tart, csak a hányados tart $1$-hez.

*Miért fontos a megkülönböztetés?* Az $\sim$ reláció szorzásra és osztásra „jól viselkedik” ($a_n \sim b_n$, $c_n \sim d_n \Rightarrow a_nc_n \sim b_nd_n$), összeadásra és kivonásra **nem**: $n + 1 \sim n$ és $-n \sim -n$, de $(n + 1) + (-n) = 1 \not\sim 0$. Ezért határozatlan különbségeknél ($\infty - \infty$) nem szabad a tagokat aszimptotikus megfelelőikkel helyettesíteni — ez a határérték-számítás egyik leggyakoribb hibaforrása.
:::

## 58. feladat

Vizsgáljuk meg monotonitás szempontjából a következő sorozatokat! Konvergálnak-e? Ha igen, akkor hova?

a) $a_1 = 1$, $a_{n+1} = \sqrt{2a_n}$; b) $b_1 = 0$, $b_{n+1} = \dfrac{1}{3 - b_n}$.

**Megoldás.**

a) **Korlátosság:** indukcióval $1 \le a_n < 2$. $a_1 = 1$; ha $1 \le a_n < 2$, akkor $a_{n+1} = \sqrt{2a_n} \in [\sqrt2, 2)$.

**Monotonitás:**
$$a_{n+1} - a_n = \sqrt{2a_n} - a_n = \sqrt{a_n}\left(\sqrt2 - \sqrt{a_n}\right) > 0,$$
mert $0 < a_n < 2$. Tehát szigorúan monoton nő.

Monoton és korlátos, így konvergens; legyen $a_n \to A \ge 1$. A rekurzióban határértéket véve $A = \sqrt{2A}$, $A^2 = 2A$, és $A \neq 0$ miatt **$A = 2$**. (Explicit alak: $a_n = 2^{1 - 2^{1-n}}$.)

b) A fixpontok: $x = \frac{1}{3 - x} \iff x^2 - 3x + 1 = 0 \iff x = \frac{3 \pm \sqrt5}{2}$. Legyen $\alpha = \frac{3 - \sqrt5}{2} \approx 0{,}382$; ekkor $\alpha(3 - \alpha) = 1$.

**Korlátosság:** indukcióval $0 \le b_n < \alpha$. $b_1 = 0$. Ha $0 \le b_n < \alpha$, akkor $3 - b_n > 3 - \alpha > 0$, így $0 < b_{n+1} = \frac{1}{3 - b_n} < \frac{1}{3 - \alpha} = \alpha$.

**Monotonitás:** a $g(x) = \frac{1}{3 - x}$ függvény $(-\infty, 3)$-on szigorúan monoton nő. $b_1 = 0 < \frac13 = b_2$, és ha $b_n < b_{n+1}$, akkor $b_{n+1} = g(b_n) < g(b_{n+1}) = b_{n+2}$. Tehát szigorúan monoton nő.

Így konvergens; ha $b_n \to B \in [0, \alpha]$, akkor $B = \frac{1}{3 - B}$, tehát $B$ fixpont, és $B \le \alpha$ miatt **$B = \alpha = \frac{3 - \sqrt5}{2}$**.

::: elmelet
**Elméleti háttér — rekurzív sorozatok és fixpontok részletesen.**

*Az eljárás lépései* ($a_{n+1} = g(a_n)$):

1. **Fixpontok** meghatározása: $x = g(x)$. Ezek a lehetséges határértékek (ha $g$ folytonos).
2. **Invariáns intervallum** keresése, amely tartalmazza a kezdőértéket, és amelyet $g$ önmagába visz; ebből indukcióval korlát.
3. **Monotonitás:** vagy az $a_{n+1} - a_n = g(a_n) - a_n$ előjeléből (a $g(x) - x$ függvény előjele az invariáns intervallumon), vagy — ha $g$ monoton nő — az első két tag összehasonlításából indukcióval.
4. **Konvergencia** a monoton konvergencia tételéből, és a **határérték** a fixpontegyenletből, a korlátok alapján kiválasztva.

*A $g(x) - x$ előjele mint térkép.* Az a) részben $g(x) - x = \sqrt{2x} - x > 0$ a $(0, 2)$ intervallumon: ott a sorozat nő, és a következő fixpont, a $2$ felé halad. A b) részben $g(x) - x = \frac{1 - 3x + x^2}{3 - x}$, ami a $[0, \alpha)$ intervallumon pozitív: a sorozat $\alpha$ felé nő. Általában a fixpontok közötti intervallumokon a sorozat a $g(x) - x$ előjele szerint halad, és — ha a fixpontot nem lépheti át (ezt adja a $g$ monotonitása) — a legközelebbi fixponthoz tart.

*Vonzó és taszító fixpontok.* Ha $g$ differenciálható, és $|g'(A)| < 1$, a fixpont **vonzó** (a közeli kezdőértékekről a sorozat hozzá tart); ha $|g'(A)| > 1$, **taszító**. A b) részben $g'(x) = \frac{1}{(3 - x)^2}$, így $g'(\alpha) = \alpha^2 \approx 0{,}146 < 1$ (vonzó), $g'(\beta) = \beta^2 \approx 6{,}85 > 1$ (taszító), ahol $\beta = \frac{3 + \sqrt5}{2}$. Ez magyarázza, miért nem a $\beta$ a határérték.

*Explicit alak.* Az a) részben $\log_2 a_{n+1} = \frac{1 + \log_2 a_n}{2}$, vagyis $c_n = 1 - \log_2 a_n$-re $c_{n+1} = \frac{c_n}{2}$, $c_1 = 1$, így $c_n = 2^{1-n}$ és $a_n = 2^{1 - 2^{1-n}} \to 2$. Explicit képlet ritkán van; a monoton-korlátos módszer akkor is működik, ha nincs.
:::

## 59. feladat

Bizonyítsuk be, hogy $\mathbb{R} \setminus \mathbb{Q}$ nem megszámlálható, pontosabban $(\mathbb{R} \setminus \mathbb{Q}) \sim \mathbb{R}$.

**Megoldás.**

**Nem megszámlálható:** ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható volna, akkor $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$ két megszámlálható halmaz uniójaként megszámlálható lenne – de $\mathbb{R}$ nem megszámlálható (Cantor).

**$(\mathbb{R} \setminus \mathbb{Q}) \sim \mathbb{R}$ („Hilbert-szálloda"):** legyen $\mathbb{Q} = \{q_1, q_2, \dots\}$ egy felsorolás, és $s_n = \sqrt2 + n$ ($n \in \mathbb{N}$) – ezek különböző irracionális számok; $S = \{s_1, s_2, \dots\}$. Definiáljuk $f : \mathbb{R} \to \mathbb{R} \setminus \mathbb{Q}$-t:
$$f(q_n) = s_{2n}, \qquad f(s_n) = s_{2n-1}, \qquad f(x) = x \text{ egyébként}.$$
$f$ a $\mathbb{Q} \cup S$ halmazt bijektíven képezi $S$-re (a racionálisok a páros, $S$ elemei a páratlan indexű helyekre kerülnek), a maradék $(\mathbb{R}\setminus\mathbb{Q}) \setminus S$ halmazon pedig az identitás. Tehát $f$ bijekció $\mathbb{R}$ és $\mathbb{R} \setminus \mathbb{Q}$ között. $\blacksquare$

::: elmelet
**Elméleti háttér — számosságok: $\mathbb{R}$ nem megszámlálható, és a „Hilbert-szálloda”.**

*Cantor tétele.* $\mathbb{R}$ nem megszámlálható. *Bizonyítás a Cantor-tulajdonsággal:* tegyük fel, hogy $\mathbb{R} = \{x_1, x_2, \dots\}$. Válasszunk $I_1$ zárt intervallumot, amely nem tartalmazza $x_1$-et; $I_1$-ben egy $I_2$ zárt intervallumot, amely nem tartalmazza $x_2$-t; és így tovább. A Cantor-tulajdonság szerint van $\xi \in \bigcap I_n$, de $\xi \ne x_n$ minden $n$-re, mert $x_n \notin I_n$. Ellentmondás. (Alternatíva: Cantor átlós eljárása tizedes törtekkel.)

*Irracionálisak.* Ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható volna, $\mathbb{R}$ két megszámlálható halmaz uniójaként az lenne. Tehát „sokkal több” irracionális szám van, mint racionális — pedig mindkettő sűrű.

*Megszámlálható halmaz elnyelése.* Ha $X$ végtelen, és $C$ megszámlálható, akkor $X \cup C \sim X$. A bizonyítás ötlete (Hilbert-szálloda): $X$-ben kiválasztunk egy megszámlálható $S = \{s_1, s_2, \dots\}$ részhalmazt, és a $C \cup S$ elemeit „összetoljuk” $S$-be: a $C$ elemei a páros, az $S$ elemei a páratlan sorszámú helyekre kerülnek; $X \setminus S$ elemei helyben maradnak. (A szálloda-hasonlat: egy teli, végtelen szállodában minden vendéget a szobaszáma kétszeresébe költöztetünk, és a felszabaduló páratlan szobákba végtelen sok új vendég fér.)

*Számosság-aritmetika.* Ugyanezzel a gondolattal: $\mathbb{R} \sim (0, 1) \sim [0, 1] \sim \mathbb{R} \setminus \mathbb{Q} \sim$ az irracionálisak bármely nyílt intervallumban. A végtelen halmazok számossága nem változik, ha megszámlálható sok elemet hozzáveszünk vagy elhagyunk (feltéve, hogy nem megszámlálható marad a halmaz). A **kontinuumhipotézis** (hogy nincs számosság $\mathbb{N}$ és $\mathbb{R}$ között) a szokásos axiómákból sem nem bizonyítható, sem nem cáfolható (Gödel, Cohen).
:::

## 60*. feladat

*(Ábra: a számegyenesre állított, különböző magasságú és szélességű „T" betűk; mindegyik T szára egy-egy pontban áll a számegyenesen, a T-k nem metszik egymást.)*

a) Tudunk-e az ábrának megfelelően diszjunkt T-betűket rakni a racionális számokra? (A T-betűk magasságát és (nem nulla) szélességét szabadon választhatjuk meg.)

b) Tudunk-e az ábrának megfelelően diszjunkt T-betűket rakni az irracionális számokra?

**Megoldás.**

Egy $x$ pontra állított T-betű: szára az $\{x\} \times [0, h]$ szakasz, kalapja a $[x - w, x + w] \times \{h\}$ szakasz ($h, w > 0$). Két T, az $x < y$ pontokon, akkor metszi egymást, ha az alacsonyabbik (vagy egyforma magasság esetén bármelyik) kalapja eléri a másik szárát: ha $h_y \le h_x$, a metszés feltétele $y - w_y \le x$ (a magasabb kalap az alacsonyabb T fölött halad el).

a) **Igen.** Legyen $\mathbb{Q} = \{q_1, q_2, \dots\}$. A $q_n$-re állított T magassága legyen $h_n = \frac1n$, félszélessége $w_1 = 1$, illetve $n \ge 2$-re
$$w_n = \frac12 \min\{|q_n - q_k| : k < n\} > 0.$$
Ha $k < n$, akkor $T_n$ az alacsonyabb, és kalapja nem éri el $q_k$-t, mert $w_n < |q_n - q_k|$; $T_k$ kalapja pedig $T_n$ fölött halad. Így a T-k páronként diszjunktak.

b) **Nem.** Tegyük fel, hogy minden irracionális $x$-re áll egy $(h_x, w_x)$ méretű T, és ezek diszjunktak. Mivel
$$\mathbb{R} \setminus \mathbb{Q} = \bigcup_{n=1}^{\infty} \left\{x \notin \mathbb{Q} : w_x \ge \tfrac1n\right\},$$
és a bal oldal nem megszámlálható, valamelyik $H_n = \{x : w_x \ge \frac1n\}$ nem megszámlálható. Osszuk a számegyenest $\frac1n$ hosszú $[\frac{k}{n}, \frac{k+1}{n})$ intervallumokra (megszámlálható sok); valamelyikbe $H_n$ legalább két pontja esik: $x < y$, $y - x < \frac1n$. Ha $h_x \ge h_y$, akkor $y$ kalapja ($w_y \ge \frac1n > y - x$) eléri az $x$ szárát a $h_y \le h_x$ magasságban; ha $h_y > h_x$, akkor szimmetrikusan $x$ kalapja metszi $y$ szárát. Ellentmondás.

::: elmelet
**Elméleti háttér — a végtelen skatulyaelv és a megszámlálható konstrukciók.**

*Végtelen skatulyaelv.* Ha egy nem megszámlálható halmazt megszámlálható sok részre bontunk, valamelyik rész nem megszámlálható. (Különben a halmaz megszámlálható sok megszámlálható halmaz uniója, tehát megszámlálható volna.) Hasonlóan: ha végtelen halmazt véges sok részre bontunk, valamelyik rész végtelen.

*A b) rész szerkezete.* A T-k „vastagságát” a $w_x$ félszélesség méri. A nem megszámlálható irracionálishalmazt a $\{w_x \ge \frac1n\}$ részekre bontva a végtelen skatulyaelv ad egy nem megszámlálható $H_n$-t, amelyben minden T legalább $\frac1n$ széles. Egy második skatulyázás (a $\frac1n$ hosszú intervallumok megszámlálhatók) két, egymáshoz $\frac1n$-nél közelebbi pontot ad $H_n$-ben, és ezek T-i ütköznek.

*Az a) rész szerkezete.* Megszámlálható halmazon **egyszerű rekurzióval** dolgozhatunk: a $q_n$-re állított T méreteit csak a korábbi, véges sok T-hez kell igazítani (a minimum pozitív, mert véges sok pozitív szám minimuma). Ugyanez a technika ad például olyan függvényt, amely minden racionális pontban szakad, de az irracionálisakban folytonos (Riemann-függvény), és **nincs** olyan, amely fordítva viselkedik — ennek bizonyítása is egy számossági (Baire-féle) érvelés.

*Hasonló jelenségek.* Bármely diszjunkt, nem degenerált intervallumokból álló halmazrendszer megszámlálható (mindegyik tartalmaz egy racionális számot, és ezek különbözők). A síkban diszjunkt „nyolcasok” rendszere is legfeljebb megszámlálható lehet, míg diszjunkt körvonalakból kontinuum sok van (koncentrikus körök). Az ilyen feladatok közös kulcsa: egy „vastag” objektum mindig tartalmaz egy racionális (megszámlálható halmazból vett) „tanút”.
:::

## 61. feladat

Bizonyítsuk be, hogy az algebrai számok halmaza megszámlálható.

**Megoldás.**

Egy szám algebrai, ha gyöke egy nem nulla, egész együtthatós polinomnak. Az egész együtthatós polinomok az együtthatóik véges sorozatával azonosíthatók, így az 55. feladat szerint megszámlálhatóan sokan vannak: $P_1, P_2, \dots$. Minden nem nulla $P_k$-nak legfeljebb $\deg P_k$ (valós vagy komplex) gyöke van, tehát az algebrai számok halmaza
$$\bigcup_{k} \{x : P_k(x) = 0\}$$
megszámlálható sok véges halmaz uniója, így megszámlálható. Végtelen, mert tartalmazza $\mathbb{Q}$-t ($p/q$ a $qx - p$ gyöke). $\blacksquare$

(Következmény: létezik transzcendens szám, sőt a valós számok „majdnem mind" transzcendensek.)

::: elmelet
**Elméleti háttér — algebrai és transzcendens számok.**

*Definíció.* Egy (valós vagy komplex) szám **algebrai**, ha gyöke egy nem azonosan nulla, egész (ekvivalensen: racionális) együtthatós polinomnak; különben **transzcendens**. Minden racionális szám algebrai ($qx - p$), a $\sqrt2$ is ($x^2 - 2$), a $\sqrt[3]{2} + \sqrt3$ is (az algebrai számok testet alkotnak).

*A gyökök száma.* Egy $d$-edfokú, nem nulla polinomnak legfeljebb $d$ gyöke van: ha $\alpha$ gyök, a polinom osztható $(x - \alpha)$-val (gyöktényező-leválasztás), és a hányados $(d-1)$-edfokú, így indukcióval.

*Cantor érvelése.* Az egész együtthatós polinomok megszámlálhatók (55. feladat), mindegyiknek véges sok gyöke van, így az algebrai számok halmaza megszámlálható. Mivel $\mathbb{R}$ nem megszámlálható, **léteznek transzcendens számok**, sőt a valós számok „szinte mind” transzcendensek (az algebrai számok halmazának Lebesgue-mértéke $0$).

*Konkrét transzcendens számok.* Cantor érve nem mutat meg egyetlen konkrét transzcendens számot sem. Konkrét példák: Liouville száma $\sum_{k=1}^\infty 10^{-k!}$ (1844, az első ismert), $e$ (Hermite, 1873), $\pi$ (Lindemann, 1882 — ebből következik, hogy a kör négyszögesítése körzővel és vonalzóval lehetetlen), $2^{\sqrt2}$ (Gelfond–Schneider). Hogy $e + \pi$ vagy $e\pi$ transzcendens-e, máig nyitott kérdés.

*Egy finomabb számlálás.* A polinomokat a **magasságuk** szerint is felsorolhatjuk: $h(P) = \deg P + \sum |a_i|$. Adott $h$-hoz csak véges sok polinom tartozik, így a $h = 1, 2, 3, \dots$ szerinti felsorolás közvetlenül is megszámlálja a polinomokat — ez a Cantor által használt eredeti módszer.
:::

## 62. feladat

Bizonyítsuk be, hogy $\mathbb{N}$ összes részhalmazainak halmaza kontinuum számosságú.

**Megoldás.**

A Schröder–Bernstein-tétel szerint elég kölcsönösen injektív leképezéseket megadni $\mathcal{P}(\mathbb{N})$ és $\mathbb{R}$ között.

- **$\mathcal{P}(\mathbb{N}) \to \mathbb{R}$:** $A \mapsto \sum_{n \in A} 10^{-n}$, azaz annak a $0$-s és $1$-es jegyekből álló tizedes törtnek az értéke, amelynek $n$-edik jegye $1$ pontosan akkor, ha $n \in A$. Mivel a jegyek között nincs $9$, a tizedes alak egyértelmű, így különböző halmazokhoz különböző szám tartozik: a leképezés injektív.
- **$\mathbb{R} \to \mathcal{P}(\mathbb{N})$:** $x \mapsto \{q \in \mathbb{Q} : q < x\} \subseteq \mathbb{Q}$. Injektív, mert $x < y$ esetén a racionális számok sűrűsége miatt van $q \in \mathbb{Q}$, $x < q < y$, amely $y$ képében benne van, $x$ képében nincs. Mivel $\mathbb{Q} \sim \mathbb{N}$, ez $\mathcal{P}(\mathbb{Q}) \sim \mathcal{P}(\mathbb{N})$ révén injekció $\mathcal{P}(\mathbb{N})$-be.

Tehát $\mathcal{P}(\mathbb{N}) \sim \mathbb{R}$, azaz $\mathcal{P}(\mathbb{N})$ kontinuum számosságú. $\blacksquare$

::: elmelet
**Elméleti háttér — kontinuum számosság, Cantor-tétel és Schröder–Bernstein.**

*Schröder–Bernstein-tétel.* Ha van $f : A \to B$ és $g : B \to A$ injekció, akkor van $A \to B$ bijekció. (Bizonyítás vázlata: az $A$ elemeit aszerint osztályozzuk, hogy az $f$ és $g^{-1}$ felváltott visszakövetése $A$-ban, $B$-ben vagy sehol nem akad el; az első és harmadik osztályon $f$-et, a másodikon $g^{-1}$-et használjuk.) Ezzel a számosságok összehasonlítása „$\le$” értelemben antiszimmetrikus.

*A két injekció.*

- $\mathcal{P}(\mathbb{N}) \hookrightarrow \mathbb{R}$: a karakterisztikus sorozat ($0$–$1$ sorozat) tizedes törtként olvasva. A $10$-es alap és a csak $0$, $1$ jegyek miatt két különböző sorozat különböző számot ad (a $\dots0999\dots = \dots1000\dots$ kétértelműség itt nem fordulhat elő). Kettes alappal ez nem volna injektív ($0{,}0111\ldots_2 = 0{,}1_2$).
- $\mathbb{R} \hookrightarrow \mathcal{P}(\mathbb{Q})$: $x \mapsto \{q \in \mathbb{Q} : q < x\}$, a **Dedekind-szelet**. Injektív a racionálisok sűrűsége miatt. (Dedekind éppen így *konstruálta* a valós számokat a racionálisokból: a valós számok a racionálisok „alsó szeletei”.)

*Cantor tétele.* Semmilyen $A$ halmazra nincs $A \to \mathcal{P}(A)$ szürjekció; így $|\mathcal{P}(A)| > |A|$. *Bizonyítás:* ha $f : A \to \mathcal{P}(A)$, legyen $D = \{a \in A : a \notin f(a)\}$. Ha $D = f(d)$ volna, akkor $d \in D \iff d \notin f(d) = D$ — ellentmondás. Speciálisan $|\mathbb{R}| = |\mathcal{P}(\mathbb{N})| > |\mathbb{N}|$, és $|\mathcal{P}(\mathbb{R})| > |\mathbb{R}|$: a végtelen számosságok sora nem ér véget.

*Kontinuum számosságú halmazok.* $\mathbb{R}$, bármely nem degenerált intervallum, $\mathbb{R}^n$, $\mathbb{C}$, a végtelen $0$–$1$ sorozatok, a valós sorozatok ($\mathbb{R}^{\mathbb{N}}$), a folytonos $\mathbb{R} \to \mathbb{R}$ függvények (ezeket a racionális pontokon felvett értékük meghatározza). Ezzel szemben az összes $\mathbb{R} \to \mathbb{R}$ függvény halmaza már nagyobb számosságú.
:::

## Röpzhra

**Definíciók:** halmazok ekvivalenciája, kontinuum számosság, $\limsup\limits_{n\to\infty} a_n$, $\liminf\limits_{n\to\infty} a_n$, sorozatok sűrűsödési értékei.

**Tételek:** $\lim\limits_{n\to\infty} a_n = a \in \mathbb{R}$ karakterizálása $\limsup$-pal és $\liminf$-fel, $\limsup\limits_{n\to\infty} a_n = a \in \mathbb{R}$ és sűrűsödési értékek.
