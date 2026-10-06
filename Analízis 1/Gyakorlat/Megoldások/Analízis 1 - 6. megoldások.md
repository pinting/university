# Analízis 1 – 6. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 55. feladat

Bizonyítsuk be, hogy az egész számokból képezhető véges sorozatok száma megszámlálható.

**Megoldás.**

Legyen $\varphi : \mathbb{Z} \to \mathbb{N}^+$ injekció, pl. $\varphi(z) = 2z$, ha $z > 0$, és $\varphi(z) = 1 - 2z$, ha $z \le 0$. Jelölje $p_1 = 2, p_2 = 3, p_3 = 5, \dots$ a prímeket. Rendeljük a $(z_1, \dots, z_k)$ véges sorozathoz a
$$\Phi(z_1, \dots, z_k) = p_1^{\varphi(z_1)} \cdot p_2^{\varphi(z_2)} \cdots p_k^{\varphi(z_k)}$$
természetes számot (az üres sorozathoz az $1$-et). A számelmélet alaptétele (a prímtényezős felbontás egyértelműsége) és $\varphi(z_i) \ge 1$ miatt $\Phi$-ből visszaolvasható a hossz és minden tag, tehát $\Phi$ injektív. Így a véges sorozatok halmaza legfeljebb megszámlálható; mivel végtelen (az egytagú sorozatok már $\mathbb{Z}$-vel ekvivalensek), **megszámlálhatóan végtelen**.

(Másik út: a $k$ hosszú sorozatok halmaza $\mathbb{Z}^k$, ami megszámlálható, és megszámlálható sok megszámlálható halmaz uniója megszámlálható.)

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

## 57. feladat

Adjunk példákat arra, hogy $a_n - b_n \to 0$, de $a_n/b_n$ nem tart 1-hez, illetve $a_n/b_n \to 1$, de $a_n - b_n$ nem tart 0-hoz.

**Megoldás.**

- $a_n - b_n \to 0$, de $a_n/b_n \not\to 1$: $a_n = \frac2n$, $b_n = \frac1n$. Ekkor $a_n - b_n = \frac1n \to 0$, de $a_n/b_n = 2$.
- $a_n/b_n \to 1$, de $a_n - b_n \not\to 0$: $a_n = n + 1$, $b_n = n$. Ekkor $\frac{a_n}{b_n} = 1 + \frac1n \to 1$, de $a_n - b_n = 1$. (Vagy $a_n = n^2 + n$, $b_n = n^2$: a különbség $n \to \infty$.)

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

## 59. feladat

Bizonyítsuk be, hogy $\mathbb{R} \setminus \mathbb{Q}$ nem megszámlálható, pontosabban $(\mathbb{R} \setminus \mathbb{Q}) \sim \mathbb{R}$.

**Megoldás.**

**Nem megszámlálható:** ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható volna, akkor $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$ két megszámlálható halmaz uniójaként megszámlálható lenne – de $\mathbb{R}$ nem megszámlálható (Cantor).

**$(\mathbb{R} \setminus \mathbb{Q}) \sim \mathbb{R}$ („Hilbert-szálloda"):** legyen $\mathbb{Q} = \{q_1, q_2, \dots\}$ egy felsorolás, és $s_n = \sqrt2 + n$ ($n \in \mathbb{N}$) – ezek különböző irracionális számok; $S = \{s_1, s_2, \dots\}$. Definiáljuk $f : \mathbb{R} \to \mathbb{R} \setminus \mathbb{Q}$-t:
$$f(q_n) = s_{2n}, \qquad f(s_n) = s_{2n-1}, \qquad f(x) = x \text{ egyébként}.$$
$f$ a $\mathbb{Q} \cup S$ halmazt bijektíven képezi $S$-re (a racionálisok a páros, $S$ elemei a páratlan indexű helyekre kerülnek), a maradék $(\mathbb{R}\setminus\mathbb{Q}) \setminus S$ halmazon pedig az identitás. Tehát $f$ bijekció $\mathbb{R}$ és $\mathbb{R} \setminus \mathbb{Q}$ között. $\blacksquare$

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

## 61. feladat

Bizonyítsuk be, hogy az algebrai számok halmaza megszámlálható.

**Megoldás.**

Egy szám algebrai, ha gyöke egy nem nulla, egész együtthatós polinomnak. Az egész együtthatós polinomok az együtthatóik véges sorozatával azonosíthatók, így az 55. feladat szerint megszámlálhatóan sokan vannak: $P_1, P_2, \dots$. Minden nem nulla $P_k$-nak legfeljebb $\deg P_k$ (valós vagy komplex) gyöke van, tehát az algebrai számok halmaza
$$\bigcup_{k} \{x : P_k(x) = 0\}$$
megszámlálható sok véges halmaz uniója, így megszámlálható. Végtelen, mert tartalmazza $\mathbb{Q}$-t ($p/q$ a $qx - p$ gyöke). $\blacksquare$

(Következmény: létezik transzcendens szám, sőt a valós számok „majdnem mind" transzcendensek.)

## 62. feladat

Bizonyítsuk be, hogy $\mathbb{N}$ összes részhalmazainak halmaza kontinuum számosságú.

**Megoldás.**

A Schröder–Bernstein-tétel szerint elég kölcsönösen injektív leképezéseket megadni $\mathcal{P}(\mathbb{N})$ és $\mathbb{R}$ között.

- **$\mathcal{P}(\mathbb{N}) \to \mathbb{R}$:** $A \mapsto \sum_{n \in A} 10^{-n}$, azaz annak a $0$-s és $1$-es jegyekből álló tizedes törtnek az értéke, amelynek $n$-edik jegye $1$ pontosan akkor, ha $n \in A$. Mivel a jegyek között nincs $9$, a tizedes alak egyértelmű, így különböző halmazokhoz különböző szám tartozik: a leképezés injektív.
- **$\mathbb{R} \to \mathcal{P}(\mathbb{N})$:** $x \mapsto \{q \in \mathbb{Q} : q < x\} \subseteq \mathbb{Q}$. Injektív, mert $x < y$ esetén a racionális számok sűrűsége miatt van $q \in \mathbb{Q}$, $x < q < y$, amely $y$ képében benne van, $x$ képében nincs. Mivel $\mathbb{Q} \sim \mathbb{N}$, ez $\mathcal{P}(\mathbb{Q}) \sim \mathcal{P}(\mathbb{N})$ révén injekció $\mathcal{P}(\mathbb{N})$-be.

Tehát $\mathcal{P}(\mathbb{N}) \sim \mathbb{R}$, azaz $\mathcal{P}(\mathbb{N})$ kontinuum számosságú. $\blacksquare$

## Röpzhra

**Definíciók:** halmazok ekvivalenciája, kontinuum számosság, $\limsup\limits_{n\to\infty} a_n$, $\liminf\limits_{n\to\infty} a_n$, sorozatok sűrűsödési értékei.

**Tételek:** $\lim\limits_{n\to\infty} a_n = a \in \mathbb{R}$ karakterizálása $\limsup$-pal és $\liminf$-fel, $\limsup\limits_{n\to\infty} a_n = a \in \mathbb{R}$ és sűrűsödési értékek.
