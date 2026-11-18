# VII. RÉSZ: VÉGTELEN SOROK

## 35. A sor fogalma

Kezdjük egy példával. Legyen $a_n = \frac{1}{2^n}$, és képezzük az összegeket:
$$s_n = \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^n} = \frac{1}{2}\left(1 + \frac{1}{2} + \dots + \frac{1}{2^{n-1}}\right) = \frac{1}{2} \cdot \frac{1 - \frac{1}{2^n}}{1 - \frac{1}{2}} = 1 - \frac{1}{2^n}.$$
Ez az új sorozat konvergens: $s_n \to 1$. Ezt írjuk úgy, hogy $\sum_{k=1}^\infty \frac{1}{2^k} = 1$. Figyeljük meg, mi történt: a végtelen összeadás fogalmát **visszavezettük** a részletösszegek sorozatának határértékére. Ez az egész elmélet kulcsa.

**Definíció.** $n \ge m$ esetén $\displaystyle \sum_{k=m}^{n} a_k = a_m + \dots + a_n$, és megállapodás szerint $\displaystyle \sum_{k=n}^{n} a_k = a_n$.

**Definíció (végtelen sor).** Rendeljük hozzá az $(a_n)$ sorozathoz az
$$s_n = \sum_{k=1}^n a_k$$
úgynevezett **részletösszegek** sorozatát. Ezt a hozzárendelést $a_1 + a_2 + \dots$-szal vagy $\sum_{k=1}^\infty a_k$-val jelöljük, és **végtelen sornak** (röviden **sornak**) nevezzük.

- Ha $s_n \to s \in \mathbb{R}$, akkor a $\sum_{n=1}^\infty a_n$ sor **konvergens**, és jelölése $\sum_{k=1}^\infty a_k = s$.
- Ha $(s_n)$ divergens, akkor a sor **divergens**.
- Ha $s_n \to +\infty$, akkor a $\sum_{n=1}^\infty a_n = +\infty$ jelölést használjuk.

A sorok indexelése természetesen más értékről is kezdődhet: $\sum_{n=0}^\infty a_n$, $\sum_{k=10}^\infty a_k$ stb.

## 36. A Cauchy-kritérium sorokra és a szükséges feltétel

**Tétel (Cauchy-kritérium sorokra).** A $\sum_{n=1}^\infty a_n$ sor akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_\varepsilon$, hogy minden $m \ge n \ge n_\varepsilon$ esetén
$$\left| \sum_{k=n}^{m} a_k \right| < \varepsilon.$$

*Bizonyítás.* Vegyük észre, hogy
$$\sum_{k=n}^{m} a_k = s_m - s_{n-1},$$
tehát az állítás pontosan a részletösszegek sorozatára vonatkozó Cauchy-kritérium. $\blacksquare$

**Tétel (a konvergencia szükséges feltétele).** Ha $\sum_{k=1}^\infty a_k$ konvergens, akkor $\lim_{k\to\infty} a_k = 0$.

*Bizonyítás.* A Cauchy-kritériumot $m = n$-re alkalmazva $|a_n| < \varepsilon$ minden elég nagy $n$-re. $\blacksquare$

**Figyelem: ez a feltétel nem elégséges!** Láttuk, hogy $\sum_{k=1}^\infty \frac{1}{\sqrt{k}}$ divergens, jóllehet $\frac{1}{\sqrt{k}} \to 0$. Ez a legfontosabb hibaforrás a sorok elméletében.

## 37. Nevezetes sorok

**A mértani (geometriai) sor.** Legyen $a_n = q^n$, $n = 0, 1, 2, \dots$.

- Ha $|q| \ge 1$, akkor $a_n = q^n \not\to 0$, tehát a szükséges feltétel sérül: $\sum_{n=0}^\infty q^n$ **divergens**.
- Ha $|q| < 1$, akkor a részletösszeg zárt alakban felírható, és
$$\lim_{n\to\infty} s_n = \lim_{n\to\infty} \frac{1 - q^{n+1}}{1 - q} = \frac{1}{1-q},$$
hiszen $q^{n+1} \to 0$. Tehát
$$\sum_{n=0}^{\infty} q^n = \frac{1}{1-q} \qquad (|q| < 1).$$

**A $\sum \frac{1}{n^2}$ sor (teleszkopikus becslés).** Minden $n \ge 2$-re
$$\frac{1}{n^2} \le \frac{1}{n(n-1)} = \frac{1}{n-1} - \frac{1}{n}.$$
Ezért
$$\sum_{k=1}^n \frac{1}{k^2} \le 1 + \sum_{k=2}^n \frac{1}{k(k-1)} = 1 + \left(\frac{1}{1} - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{n-1} - \frac{1}{n}\right) = 2 - \frac{1}{n} < 2.$$
A belső tagok páronként kiesnek — innen a „teleszkopikus összeg" elnevezés. A részletösszegek sorozata tehát szigorúan monoton növekedő és felülről korlátos, így a 21. szakasz tétele szerint konvergens:
$$\sum_{n=1}^\infty \frac{1}{n^2} \ \text{konvergens} \qquad \left(\text{ismert, hogy az összeg } \frac{\pi^2}{6}\right).$$

**A harmonikus sor.** A $\sum_{n=1}^\infty \frac{1}{n}$ sor **divergens**, sőt $\sum_{n=1}^\infty \frac{1}{n} = +\infty$.

*Bizonyítás.* Megmutatjuk, hogy a Cauchy-kritérium nem teljesül. Legyen $\varepsilon = \frac{1}{2}$. Bármely $n_\varepsilon$ esetén tekintsük az $n_\varepsilon + 1$ és $2n_\varepsilon$ közötti tagokat: ezek száma $n_\varepsilon$, és mindegyik legalább $\frac{1}{2n_\varepsilon}$, tehát
$$\sum_{k = n_\varepsilon + 1}^{2 n_\varepsilon} \frac{1}{k} \ge n_\varepsilon \cdot \frac{1}{2 n_\varepsilon} = \frac{1}{2} = \varepsilon.$$
Nincs tehát olyan küszöb, amely mellett a Cauchy-feltétel teljesülne. A részletösszegek sorozata szigorúan monoton növekedő, de nem konvergens; ebből következik, hogy nem lehet felülről korlátos (különben a monoton korlátos sorozatokra vonatkozó tétel szerint konvergálna), tehát $s_n \to +\infty$. $\blacksquare$

Ez a legszebb ellenpélda az egész félévben: a tagok nullához tartanak, az összeg mégis minden határon túl nő — csak nagyon lassan.

---
