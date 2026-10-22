# Algebra és számelmélet – Gyakorlófeladatok

Ez a dokumentum az **ELTE TTK Matematika BSc** *Algebra és számelmélet* kurzusához készült gyakorlófeladatsorokat tartalmazza. Minden példafeladathoz két önálló, iker-gyakorlófeladat (`GyS.E.1` és `GyS.E.2`) tartozik, amelyek elmélyítik és ellenőrzik az adott témakör megértését. A feladatok részletes kidolgozása a *Gyakorlófeladatok Megoldások* kötetben található.

---

# Az 1. feladatsorhoz — Mátrixaritmetika, Gauss-elimináció és lineáris egyenletrendszerek

## Gy1.1.1. feladat

Oldjuk meg Gauss-eliminációval az alábbi lineáris egyenletrendszert:
$$\begin{aligned}
x + 2y - z &= 3 \\
3x - y + 2z &= 1 \\
2x - 3y + 3z &= -2
\end{aligned}$$

## Gy1.1.2. feladat

Oldjuk meg az alábbi lineáris egyenletrendszert:
$$\begin{aligned}
2x_1 + x_2 - x_3 + x_4 &= 3 \\
4x_1 + 2x_2 - 2x_3 + 3x_4 &= 7 \\
-2x_1 - x_2 + x_3 + 2x_4 &= 0
\end{aligned}$$

## Gy1.2.1. feladat

Létezik-e olyan valós lineáris egyenletrendszer, amelynek pontosan 2026 megoldása van? És $\mathbb{Z}_2$ vagy $\mathbb{Z}_3$ felett?

## Gy1.2.2. feladat

Mutassuk meg, hogy ha egy homogén lineáris egyenletrendszerben több ismeretlen van, mint egyenlet, akkor létezik nemtriviális megoldása.

## Gy1.3.1. feladat

Adott 5 valós szám úgy, hogy közülük bármelyik 4 összege rendre $10, 11, 12, 13, 14$. Határozzuk meg a számokat!

## Gy1.3.2. feladat

Oldjuk meg az alábbi egyenletrendszert a valós számok körében:
$$\begin{aligned}
x_1 + x_2 + x_3 + x_4 &= 10 \\
x_1 + x_2 + x_3 + x_5 &= 11 \\
x_1 + x_2 + x_4 + x_5 &= 12 \\
x_1 + x_3 + x_4 + x_5 &= 13 \\
x_2 + x_3 + x_4 + x_5 &= 14
\end{aligned}$$

## Gy1.4.1. feladat

Határozzuk meg, hogy a valós $a$ paraméter mely értékeire van $0, 1$, illetve végtelen sok megoldása az alábbi egyenletrendszernek:
$$\begin{aligned}
ax + y &= 1 \\
x + ay &= a
\end{aligned}$$

## Gy1.4.2. feladat

Mely valós $k$ értékekre van végtelen sok megoldása a következő egyenletrendszernek?
$$\begin{aligned}
x + y + kz &= 1 \\
x + ky + z &= 1 \\
kx + y + z &= 1
\end{aligned}$$

## Gy1.5.1. feladat

Legyen $A \in \mathbb{R}^{n \times n}$. Igazoljuk, hogy ha az $A\mathbf{x} = \mathbf{0}$ rendszernek létezik nemnulla komplex megoldása, akkor $\det(A) = 0$.

## Gy1.5.2. feladat

Mutassuk meg, hogy ha egy valós együtthatós $A\mathbf{x} = \mathbf{b}$ rendszernek a komplex számok felett pontosan 1 megoldása van, akkor az a megoldás szükségszerűen valós!

## Gy1.6.1. feladat

Legyen $A \in \mathbb{R}^{3 \times 2}$, $B \in \mathbb{R}^{2 \times 4}$, $C \in \mathbb{R}^{4 \times 3}$. Milyen méretűek az alábbi kifejezések, amennyiben léteznek?
a) $ABC$
b) $CBA$
c) $A^T C^T B^T$
d) $B C A + I_2$

## Gy1.6.2. feladat

Számítsuk ki az $AB$ és $BA$ szorzatokat, ha
$$A = \begin{pmatrix} 1 \\ -2 \\ 3 \end{pmatrix}, \qquad B = \begin{pmatrix} 2 & 4 & -1 \end{pmatrix}.$$

## Gy1.7.1. feladat

Számítsuk ki az $A^2 - 3A + 2I_2$ mátrixot, ha $A = \begin{pmatrix} 2 & 1 \\ -1 & 3 \end{pmatrix}$.

## Gy1.7.2. feladat

Igazoljuk, hogy tetszőleges $A \in \mathbb{R}^{n \times n}$ mátrix felírható egy szimmetrikus és egy ferdén szimmetrikus (antiszimmetrikus) mátrix összegeként!

## Gy1.8.1. feladat

Bizonyítsuk be, hogy két alsó háromszögmátrix szorzata alsó háromszögmátrix!

## Gy1.8.2. feladat

Legyen $U$ egy szigorúan felső háromszögmátrix (főátlójában és alatta csupa nulla áll). Igazoljuk, hogy $U^2$ főátlója feletti első mellékátlójában is csupa nulla áll!

## Gy1.9.1. feladat

Bizonyítsuk be az indexes jelöléssel a mátrixszorzás bal oldali disztributivitását: ha $A \in \mathbb{R}^{n \times m}$ és $B, C \in \mathbb{R}^{m \times k}$, akkor $A(B + C) = AB + AC$.

## Gy1.9.2. feladat

Igaz-e, hogy ha $AB = AC$ és $A \ne 0$, akkor $B = C$? Adjunk bizonyítást vagy ellenpéldát!

## Gy1.10.1. feladat

Határozzuk meg az $X \in \mathbb{R}^{2 \times 2}$ mátrixot, ha
$$\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} X = \begin{pmatrix} 5 & 6 \\ 7 & 8 \end{pmatrix}.$$

## Gy1.10.2. feladat

Létezik-e olyan $2 \times 2$-es $X$ mátrix, amelyre
$$\begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} X = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}?$$

## Gy1.11.1. feladat

Keressük meg az összes olyan $A \in \mathbb{R}^{2 \times 2}$ mátrixot, amely kommutál a $J = \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}$ mátrixszal ($AJ = JA$)!

## Gy1.11.2. feladat

Határozzuk meg azokat a $2 \times 2$-es valós mátrixokat, amelyek minden $2 \times 2$-es valós mátrixszal kommutálnak!

## Gy1.12.1. feladat

Legyen $N \in \mathbb{R}^{3 \times 3}$ a nilpotens léptetőmátrix:
$$N = \begin{pmatrix} 0 & 1 & 0 \\ 0 & 0 & 1 \\ 0 & 0 & 0 \end{pmatrix}.$$
Számítsuk ki az $(I_3 - N)^{-1}$ mátrix inverzét a geometriai sor formula segítségével!

## Gy1.12.2. feladat

Bizonyítsuk be, hogy ha $AB = BA$ és $A$, $B$ nilpotens mátrixok, akkor $A + B$ is nilpotens mátrix! Igaz marad-e az állítás, ha $AB \ne BA$?

## Gy1.13.1. feladat

Invertáljuk az alábbi $3 \times 3$-as felső egység-háromszögmátrixot Gauss–Jordan-eliminációval:
$$M = \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 4 \\ 0 & 0 & 1 \end{pmatrix}.$$

## Gy1.13.2. feladat

Mely valós $x$ értékekre invertálható a $K = \begin{pmatrix} 1 & x \\ x & 9 \end{pmatrix}$ mátrix? Adjuk meg az inverzet ezen $x$-ekre!

## Gy1.14.1. feladat

Bizonyítsuk be, hogy ha $A \in \mathbb{R}^{n \times n}$ invertálható, akkor tetszőleges $k \in \mathbb{N}$ esetén $A^k$ is invertálható, és $(A^k)^{-1} = (A^{-1})^k$.

## Gy1.14.2. feladat

Tegyük fel, hogy $A, B \in \mathbb{R}^{n \times n}$ olyanok, hogy $AB$ invertálható. Következik-e ebből, hogy $A$ és $B$ külön-külön is invertálható?

## Gy1.15.1. feladat

Bizonyítsuk be, hogy ha $A$ invertálható ferdén szimmetrikus mátrix ($A^T = -A$), akkor az inverze $A^{-1}$ is ferdén szimmetrikus!

## Gy1.15.2. feladat

Igazoljuk, hogy tetszőleges $A \in \mathbb{R}^{n \times m}$ mátrix esetén az $A A^T$ és $A^T A$ mátrixok mindegyike szimmetrikus!

## Gy1.16.1. feladat

Egy invertálható $A$ mátrix harmadik sorát megszorozzuk egy $\lambda \ne 0$ számmal. Hogyan változik meg az inverz mátrix?

## Gy1.16.2. feladat

Egy $A$ mátrix első sorához hozzáadjuk a második sorának 3-szorosát. Hogyan változik az inverz mátrix?

## Gy1.17.1. feladat

Igazoljuk, hogy ha egy $A \in \mathbb{R}^{n \times n}$ négyzetes mátrixra az $A\mathbf{x} = \mathbf{0}$ egyenletnek van nemtriviális megoldása, akkor létezik olyan $\mathbf{b} \in \mathbb{R}^n$, amelyre az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek nincs megoldása!

## Gy1.17.2. feladat

Legyen $A \in \mathbb{R}^{3 \times 4}$. Lehetséges-e, hogy az $A\mathbf{x} = \mathbf{b}$ egyenletrendszernek pontosan egy megoldása legyen? Indokoljuk válaszunkat!

---

# Az 2. feladatsorhoz — Mátrixinverz, mátrixegyenletek és altér / rang

## Gy2.1.1. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ egészre
$$1^2 + 3^2 + 5^2 + \dots + (2n - 1)^2 = \frac{n(2n - 1)(2n + 1)}{3}.$$

## Gy2.1.2. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$-re
$$\frac{1}{1 \cdot 2} + \frac{1}{2 \cdot 3} + \dots + \frac{1}{n(n + 1)} = \frac{n}{n + 1}.$$

## Gy2.2.1. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$-re
$$1^3 + 3^3 + 5^3 + \dots + (2n - 1)^3 = n^2 (2n^2 - 1).$$

## Gy2.2.2. feladat

Számítsuk ki a $\sum_{k=1}^n k(k + 1)(k + 2)$ összeget!

## Gy2.3.1. feladat

Igazoljuk teljes indukcióval, hogy minden $n \ge 1$ egészre $64 \mid 9^n - 8n - 1$.

## Gy2.3.2. feladat

Bizonyítsuk be teljes indukcióval, hogy $133 \mid 11^{n+1} + 12^{2n-1}$ minden $n \ge 1$ egészre.

## Gy2.4.1. feladat

Bizonyítsuk be, hogy a $\binom{2n}{n}$ binomiális együttható minden $n \ge 1$-re páros!

## Gy2.4.2. feladat

Határozzuk meg a 2 legmagasabb hatványát, amely még osztja az $n!$-t $n = 100$ esetén!

## Gy2.5.1. feladat

Mutassuk meg, hogy $2025 \mid 2026^n - 1$ minden $n \ge 1$ egészre!

## Gy2.5.2. feladat

Bizonyítsuk be, hogy $2^{30} - 1$ osztható 31-gyel és 7-tel is!

## Gy2.6.1. feladat

Mutassuk meg, hogy ha $a^n - 1$ prímszám ($a \ge 2, n \ge 2$), akkor szükségképpen $a = 2$ és $n$ prímszám!

## Gy2.6.2. feladat

Ellenőrizzük, hogy $2^p - 1$ prím-e a $p = 2, 3, 5, 7$ értékekre!

## Gy2.7.1. feladat

Mutassuk meg, hogy ha $a^n + 1$ prímszám ($a \ge 2, n \ge 1$), akkor vagy $a$ páros és $n$ kettőhatvány, vagy $a$ páratlan és $n = 1$ ($a + 1 = 2$).

## Gy2.7.2. feladat

Igazoljuk, hogy bármely két különböző Fermat-szám relatív prím: ha $k \ne m$, akkor $(F_k, F_m) = 1$!

## Gy2.8.1. feladat

Igazoljuk, hogy ha $f \mid g$ és $g \mid f$ a valós polinomok körében, akkor létezik olyan $c \in \mathbb{R} \setminus \{0\}$ konstans, amelyre $f(x) = c \cdot g(x)$!

## Gy2.8.2. feladat

Igazoljuk, hogy az $x - 1 \mid x^n - 1$ és $x + 1 \mid x^n - 1$ (ha $n$ páros) oszthatóságok közvetlenül következnek a Horner-elrendezésből vagy a gyöktesztből!

## Gy2.9.1. feladat

Igazoljuk, hogy végtelen sok $3k - 1$ (azaz $3k + 2$) alakú prímszám létezik!

## Gy2.9.2. feladat

Mutassuk meg, hogy ha egy $N$ természetes szám prímtényezős felbontásában minden prím $4k + 1$ alakú, akkor $N \equiv 1 \pmod 4$!

## Gy2.10.1. feladat

Határozzuk meg az összes olyan $\overline{1x2y}$ alakú négyjegyű számot, amely osztható 36-tal!

## Gy2.10.2. feladat

Milyen számjegyekre teljesül, hogy $15 \mid \overline{7x4y}$?

## Gy2.11.1. feladat

Egy nyolcjegyű szám alakja $\overline{abcdabcd}$. Bizonyítsuk be, hogy osztható 73-mal és 137-tel!

## Gy2.11.2. feladat

Döntsük el a hármas blokkok szabályával, hogy a $915\,824$ szám osztható-e 7-tel, 11-gyel, illetve 13-mal!

## Gy2.12.1. feladat

Hány oldalú az a konvex sokszög, amelynek átlóinak száma páratlan prímszám?

## Gy2.12.2. feladat

Létezik-e olyan konvex sokszög, amelynek pontosan annyi átlója van, mint ahány oldala?

## Gy2.13.1. feladat

Határozzuk meg az összes olyan pozitív egész $n$ számot, amelyre $n^4 + 4$ prímszám!

## Gy2.13.2. feladat

Mely egész $n$ számokra lesz az $n^3 - 8$ kifejezés értéke prímszám?

## Gy2.14.1. feladat

Melyek azok a $p$ prímek, amelyek felírhatók $p = n^3 + 1$ alakban ($n \in \mathbb{N}$)? Számítsuk ki $n$ és $p$ értékét!

## Gy2.14.2. feladat

Létezik-e olyan $n$ természetes szám, amelyre $n^4 - 1$ prímszám?

## Gy2.15.1. feladat

Határozzuk meg az összes olyan $n \in \mathbb{N}$ számot, amelyre $n^2 + 4n + 12$ egy négyzetszám!

## Gy2.15.2. feladat

Mely $n \ge 0$ egészre lesz $n^2 + 2n$ négyzetszám?

## Gy2.16.1. feladat

Bizonyítsuk be, hogy $42 \mid n^7 - n$ minden $n$ egész számra!

## Gy2.16.2. feladat

Igazoljuk, hogy minden páratlan $n$ egész számra $24 \mid n(n^2 - 1)$!

## Gy2.17.1. feladat

Igazoljuk, hogy $13 \mid 3a + 4b \iff 13 \mid 2a + 7b$ minden $a, b \in \mathbb{Z}$ esetén!

## Gy2.17.2. feladat

Ha $19 \mid 3x + 5y$, következik-e ebből, hogy $19 \mid 4x + y$?

## Gy2.18.1. feladat

Igazoljuk, hogy ha egy háromjegyű szám osztható 27-tel, akkor bármelyik ciklikus permutációja is osztható 27-tel!

## Gy2.18.2. feladat

Igaz-e, hogy ha $7 \mid \overline{abc}$, akkor $7 \mid \overline{bca}$ is mindig teljesül? Adjunk bizonyítást vagy ellenpéldát!

## Gy2.19.1. feladat

Mely $p$ prímekre lesz $p, p + 10, p + 14$ mind prím?

## Gy2.19.2. feladat

Létezik-e olyan $p > 3$ prím, amelyre $p$ és $8p^2 + 1$ is prím?

## Gy2.20.1. feladat

Létezik-e három olyan különböző prímszám, amelyek összege és négyzetösszege is prímszám?

## Gy2.20.2. feladat

Mutassuk meg, hogy nem létezik négy különböző prímszám, amelyek négyzetösszege prímszám!

## Gy2.21.1. feladat

Oldjuk meg a prímek halmazán a $p^2 - 2q^2 = 1$ egyenletet!

## Gy2.21.2. feladat

Oldjuk meg a prímszámok körében a $p^2 - 5q^2 = 4$ egyenletet!

## Gy2.22.1. feladat

Igazoljuk, hogy végtelen sok $n$ esetén $13 \mid 2^n + 3^n$!

## Gy2.22.2. feladat

Létezik-e olyan $n$, amelyre $7 \mid 2^n + 5^n$?

---

# Az 3. feladatsorhoz — Oszthatóság az egész számok körében, Euklideszi algoritmus, l.n.k.o. és l.k.k.t.

## Gy3.1.1. feladat

Számítsuk ki a $\sum_{k=1}^{n} (6k - 3)$ összeget!

## Gy3.1.2. feladat

Mennyi az értéke a $\sum_{k=0}^{50} (-1)^k \binom{100}{2k}$ összegnek? Fejezzük ki zárt alakban a komplex binomiális tétel segítségével!

## Gy3.2.1. feladat

Alakítsuk szorzattá a valós számok felett az $x^4 + 64$ kifejezést!

## Gy3.2.2. feladat

Bontsuk fel racionális tényezők szorzatára az $x^6 + 1$ polinomot!

## Gy3.3.1. feladat

Gyöktelenítsük az alábbi tört nevezőjét:
$$\frac{4}{\sqrt[3]{4} - \sqrt[3]{2}}.$$

## Gy3.3.2. feladat

Gyöktelenítsük az $\frac{1}{1 + \sqrt{2} + \sqrt{3}}$ tört nevezőjét!

## Gy3.4.1. feladat

Oldjuk meg a valós számok körében az $x^3 - 3x^2 + 3x - 28 = 0$ egyenletet!

## Gy3.4.2. feladat

Határozzuk meg az $x^3 + 9x^2 + 27x + 26 = 0$ egyenlet összes komplex gyökét!

## Gy3.5.1. feladat

Oldjuk meg a valós számok körében az $u + v = 10, uv = 21$ egyenletrendszert!

## Gy3.5.2. feladat

Mely valós $c$ értékekre van valós megoldása az $u + v = 4, uv = c$ egyenletrendszernek?

## Gy3.6.1. feladat

Határozzuk meg az $(x^2 - 3x + 2)^3$ polinom fokszámát és konstans tagját!

## Gy3.6.2. feladat

Számítsuk ki a $(2x^2 - x + 1)(x^3 - 2)$ polinom együtthatóinak összegét anélkül, hogy kibontanánk a szorzatot!

## Gy3.7.1. feladat

Határozzuk meg az $x^4$ együtthatóját az $(1 + 2x - x^2)(3 - x + 2x^2 + 4x^3)$ szorzatban!

## Gy3.7.2. feladat

Mennyi az $x^3$ együtthatója az $(1 + x + x^2)^4$ polinomban?

## Gy3.8.1. feladat

Lehetséges-e, hogy két ötödfokú polinom összege nulladfokú legyen? Adjunk példát!

## Gy3.8.2. feladat

Tudjuk, hogy $\deg(f) = 5$ és $\deg(f - g) = 2$. Mennyi lehet $\deg(g)$?

## Gy3.9.1. feladat

Két polinom szorzata 8-adfokú, összegük 6-odfokú. Mik lehetnek a fokszámok?

## Gy3.9.2. feladat

Létezik-e olyan két polinom, amelyek szorzata 6-odfokú, összegük pedig 7-edfokú?

## Gy3.10.1. feladat

Emeljük ki az $(x - 3)$ gyöktényezőt az $x^3 - 4x^2 - 3x + 18$ polinomból, és határozzuk meg a gyökök multiplicitását!

## Gy3.10.2. feladat

Bontsuk fel elsőfokú valós tényezők szorzatára az $x^3 - 7x + 6$ polinomot!

## Gy3.11.1. feladat

Számítsuk ki a Horner-elrendezéssel a $P(x) = 2x^4 - 3x^3 + 5x - 7$ polinom helyettesítési értékét a $c = -2$ helyen, és adjuk meg a hányadospolinomot!

## Gy3.11.2. feladat

Döntsük el Horner-módszerrel, hogy $x - 3$ osztója-e a $Q(x) = x^4 - 2x^3 - 2x^2 - 2x - 3$ polinomnak!

## Gy3.12.1. feladat

Iterált Hornerrel határozzuk meg a 2 gyök multiplicitását az $f(x) = x^4 - 4x^3 + 6x^2 - 4x$ polinomban!

## Gy3.12.2. feladat

Hányszoros gyöke a $-2$ az $x^4 + 8x^3 + 24x^2 + 32x + 16$ polinomnak?

## Gy3.13.1. feladat

Írjuk fel az $f(x) = x^3 - 3x + 2$ polinomot $(x - 1)$ hatványai szerint!

## Gy3.13.2. feladat

Írjuk fel a $P(x) = x^3 + 4x^2 + 6x + 5$ polinomot $(x + 1)$ hatványai szerint!

## Gy3.14.1. feladat

Hány szorzást igényel egy 100-adfokú polinom kiértékelése Horner-elrendezéssel és naiv módszerrel?

## Gy3.14.2. feladat

Hány összeadásra van szükség a Horner-módszernél egy $n$-edfokú polinom esetén?

## Gy3.15.1. feladat

Létezik-e olyan egész együtthatós $f(x)$ polinom, amelyre $f(3) = 5$ és $f(8) = 20$?

## Gy3.15.2. feladat

Bizonyítsuk be, hogy ha $P(x) \in \mathbb{Z}[x]$, és $P(0)$ valamint $P(1)$ mindketten páratlan számok, akkor $P(x)$-nek nem lehet egész gyöke!

## Gy3.16.1. feladat

Mutassuk meg, hogy az $f(x) = x^2 - x + 41$ polinom értéke $x = 41$ és $x = 42$ esetén összetett szám!

## Gy3.16.2. feladat

Bizonyítsuk be, hogy ha $P(x) \in \mathbb{Z}[x]$ nem konstans, akkor a $|P(n)|$ értékek között végtelen sok összetett szám van!

## Gy3.17.1. feladat

Mutassuk meg, hogy az $x^2 + 1$ polinom helyettesítési értékeinek ($n^2 + 1$) végtelen sok különböző prímosztója van!

## Gy3.17.2. feladat

Bizonyítsuk be, hogy nem létezik olyan nem konstans egész együtthatós polinom, amelynek értékei csak 2- és 3-hatványok szorzatai lennének!

## Gy3.18.1. feladat

Ha $c$ háromszoros gyöke $f$-nek és háromszoros gyöke $g$-nek, mit mondhatunk $c$ multiplicitásáról $f + g$-ben?

## Gy3.18.2. feladat

Legyen $f(x) = (x - 1)^2 (x + 2)$ és $g(x) = (x - 1)^3 (x - 3)$. Határozzuk meg az $x = 1$ gyök multiplicitását az $f^2 + g$ polinomban!

## Gy3.19.1. feladat

Határozzuk meg a $k$ valós paraméter értékét úgy, hogy az $x^2 - 6x + k = 0$ egyenletnek kétszeres gyöke legyen!

## Gy3.19.2. feladat

Bizonyítsuk be, hogy az $x^3 - 3x + 2$ polinomnak van többszörös gyöke a derivált segítségével!

## Gy3.20.1. feladat

Soroljuk fel a $3x^3 - 5x + 2 = 0$ egyenlet összes lehetséges racionális gyökét a gyökteszt alapján!

## Gy3.20.2. feladat

Mutassuk meg, hogy az $x^3 + 3x - 5 = 0$ egyenletnek nincs racionális gyöke!

## Gy3.21.1. feladat

Határozzuk meg a $2x^3 + 3x^2 - 8x + 3 = 0$ egyenlet összes racionális gyökét!

## Gy3.21.2. feladat

Bontsuk irreducibilis tényezőkre $\mathbb{Q}$ felett a $3x^3 - x^2 - 3x + 1$ polinomot!

---

# Az 4. feladatsorhoz — Prímszámok, felbonthatatlanok, a számelmélet alaptétele és az Euler-féle phi-függvény

## Gy4.1.1. feladat

Bizonyítsuk be, hogy az $x^2 - 5y^2 = 2$ diofantoszi egyenletnek nincs egész megoldása!

## Gy4.1.2. feladat

Lehet-e két négyzetszám összege $7 \pmod 8$ alakú?

## Gy4.2.1. feladat

Határozzuk meg a $7^{2026}$ szám utolsó számjegyét!

## Gy4.2.2. feladat

Mi a $2^{2026}$ utolsó számjegye?

## Gy4.3.1. feladat

Milyen számjegyre végződik a $9^{99} + 6^{66}$ összeg?

## Gy4.3.2. feladat

Határozzuk meg a $2^{100} + 3^{100} + 4^{100} + 5^{100}$ összeg utolsó számjegyét!

## Gy4.4.1. feladat

Lehet-e $1! + 2! + 3! + \dots + n!$ négyzetszám valamely $n \ge 1$ egészre?

## Gy4.4.2. feladat

Milyen maradékot ad $1! + 2! + \dots + 100!$ osztva 12-vel?

## Gy4.5.1. feladat

Milyen maradékot adhat öt egymást követő egész szám négyzetösszege 5-tel osztva? Lehet-e négyzetszám?

## Gy4.5.2. feladat

Mutassuk meg, hogy két egymást követő egész szám négyzetösszege sohasem ad 3 maradékot 4-gyel osztva!

## Gy4.6.1. feladat

Számítsuk ki az euklideszi algoritmussal a $(525, 231)$ értéket, és fejezzük ki lineáris kombinációként!

## Gy4.6.2. feladat

Keressünk olyan $x, y \in \mathbb{Z}$ egészeket, amelyekre $37x + 16y = 1$!

## Gy4.7.1. feladat

Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ esetén $(2n + 1, 9n + 4) = 1$!

## Gy4.7.2. feladat

Mutassuk meg, hogy a $\frac{12n + 1}{30n + 2}$ tört semmilyen $n \in \mathbb{N}$ esetén sem egyszerűsíthető!

## Gy4.8.1. feladat

Határozzuk meg a $(5n + 2, 3n + 1)$ legnagyobb közös osztó lehetséges értékeit!

## Gy4.8.2. feladat

Határozzuk meg a $(2n + 5, n + 1)$ értékét a pozitív egész $n$ függvényében!

## Gy4.9.1. feladat

Számítsuk ki az euklideszi algoritmussal az $f(x) = x^3 - 1$ és $g(x) = x^2 - 1$ polinomok legnagyobb közös osztóját!

## Gy4.9.2. feladat

Határozzuk meg az $x^4 + x^2 + 1$ és $x^3 - 1$ polinomok legnagyobb közös osztóját!

## Gy4.10.1. feladat

Ha $(a, b) = 1$, mik a lehetséges értékei az $(a + 2b, 2a + b)$ legnagyobb közös osztónak?

## Gy4.10.2. feladat

Igazoljuk, hogy ha $(a, b) = 1$, akkor $(a + b, a^2 - ab + b^2)$ lehetséges értékei csak 1 vagy 3!

## Gy4.11.1. feladat

Határozzuk meg az összes olyan $x \le y$ pozitív egész párt, amelyre $(x, y) = 12$ és $[x, y] = 360$!

## Gy4.11.2. feladat

Létezik-e olyan $x, y$ pozitív egész pár, amelyre $(x, y) = 10$ és $[x, y] = 205$?

## Gy4.12.1. feladat

Mely $n \in \mathbb{N}^+$ számokra teljesül, hogy $n + 2 \mid n^2 + 2n + 7$?

## Gy4.12.2. feladat

Mely $n$ egész számokra lesz az $\frac{2n + 5}{n - 1}$ tört értéke egész szám?

## Gy4.13.1. feladat

Igaz-e, hogy ha $d \mid 5x + 3y$ és $d \mid 3x + 2y$, akkor $d \mid x$ és $d \mid y$?

## Gy4.13.2. feladat

Adjunk ellenpéldát arra az állításra, hogy ha $d \mid 3x + y$ és $d \mid x + 3y$, akkor $d \mid x$ és $d \mid y$!

## Gy4.14.1. feladat

Számítsuk ki az $(F_{12}, F_{18})$ legnagyobb közös osztót a Fibonacci-lnko tétel segítségével!

## Gy4.14.2. feladat

Mutassuk meg mátrixszorzással a Cassini-azonosságot!

## Gy4.15.1. feladat

Igazoljuk, hogy ha $p$ és $q$ 3-nál nagyobb prímszámok, akkor $24 \mid p^2 - q^2$!

## Gy4.15.2. feladat

Igaz-e, hogy ha $p \ge 5$ prím, akkor $p^4 \equiv 1 \pmod{240}$?

## Gy4.16.1. feladat

Hány pozitív osztója van a 3600 számnak? Páros vagy páratlan ez a szám?

## Gy4.16.2. feladat

Melyek azok a számok, amelyeknek pontosan 3 pozitív osztójuk van?

## Gy4.17.1. feladat

Hány nullára végződik a $1000!$ szám a tízes számrendszerben?

## Gy4.17.2. feladat

Mutassuk meg, hogy $2^n \nmid n!$ semmilyen $n \ge 1$ egész számra!

## Gy4.18.1. feladat

Becsüljük meg alulról a $\sum_{p \le x} \frac{1}{p}$ összeget a fenti Euler-egyenlőtlenség logaritmizálásával!

## Gy4.18.2. feladat

Igazoljuk, hogy $\prod_{p} \left(1 - \frac{1}{p^2}\right) = \frac{6}{\pi^2}$!

---

# Az 5. feladatsorhoz — Komplex számok algebrai és trigonometrikus alakja, Moivre-formula, gyökvonás és geometriai alkalmazások

## Gy5.1.1. feladat

Bizonyítsuk be, hogy a komplex számok szorzása kommutatív: $xy = yx$ minden $x, y \in \mathbb{C}$ esetén!

## Gy5.1.2. feladat

Határozzuk meg a $z = a + bi \ne 0$ komplex szám multiplikatív inverzét algebrai alakban!

## Gy5.2.1. feladat

Számítsuk ki a $\frac{1 + 3i}{2 - i} + \frac{1 - 3i}{2 + i}$ kifejezés pontos értékét!

## Gy5.2.2. feladat

Mennyi az értéke az $(1 + i)^{20}$ kifejezésnek?

## Gy5.3.1. feladat

Igazoljuk, hogy ha $|z| = 1$ és $z \ne 1$, akkor a $\frac{z + 1}{z - 1}$ szám tiszta képzetes!

## Gy5.3.2. feladat

Határozzuk meg az összes olyan $z \in \mathbb{C}$ számot, amelyre $z + \frac{1}{z} \in \mathbb{R}$!

## Gy5.4.1. feladat

Számítsuk ki az $i \cdot i^2 \cdot i^3 \dots i^{100}$ szorzat értékét!

## Gy5.4.2. feladat

Mennyi az értéke a $\sum_{k=1}^{4n} k \cdot i^k$ összegnek?

## Gy5.5.1. feladat

Oldjuk meg a $2z - 3\overline{z} = -2 + 15i$ egyenletet $\mathbb{C}$-ben!

## Gy5.5.2. feladat

Oldjuk meg az $i z + 2\overline{z} = 1 + 2i$ egyenletet!

## Gy5.6.1. feladat

Oldjuk meg a $z = (3 + 4i)\overline{z}$ egyenletet!

## Gy5.6.2. feladat

Határozzuk meg az összes olyan $z \in \mathbb{C}$ számot, amelyre $\operatorname{Re}(z) = z + \overline{z}$!

## Gy5.7.1. feladat

Tegyük fel, hogy $(a + bi)^5 = 8 - 6i$ ($a, b \in \mathbb{R}$). Mennyi $(a^2 + b^2)^5$ értéke?

## Gy5.7.2. feladat

Ha $(x + iy)^3 = 1 + i$, mennyi $x^2 + y^2$ pontos értéke?

## Gy5.8.1. feladat

Oldjuk meg a következő rendszert $\mathbb{C}$-ben a Cramer-szabállyal:
$$\begin{aligned}
z + iw &= 1 \\
iz + w &= 1
\end{aligned}$$

## Gy5.8.2. feladat

Oldjuk meg a $z + 2w = 5, \quad 2z + 4w = 10 + 2i$ rendszert $\mathbb{C}$-ben!

## Gy5.9.1. feladat

Írjuk fel a $65 = 5 \cdot 13$ számot kétféleképpen két négyzetszám összegeként a fenti azonossággal!

## Gy5.9.2. feladat

Előállhat-e a 2026 két négyzetszám összegeként?

## Gy5.10.1. feladat

Oldjuk meg az $x^2 - 2x + 5 = 0$ egyenletet, és írjuk fel a gyöktényezős alakját!

## Gy5.10.2. feladat

Oldjuk meg az $x^2 + 2ix + 3 = 0$ egyenletet!

## Gy5.11.1. feladat

Vonjunk négyzetgyököt algebrai alakban a $z = -3 + 4i$ komplex számból!

## Gy5.11.2. feladat

Oldjuk meg az $x^2 - 2x + (1 - 2i) = 0$ egyenletet!

## Gy5.12.1. feladat

Hozzuk trigonometrikus alakra a $z = 1 - i$ komplex számot!

## Gy5.12.2. feladat

Hozzuk trigonometrikus alakra az $1 + \cos\alpha + i\sin\alpha$ számot ($-\pi < \alpha < \pi$)!

## Gy5.13.1. feladat

Legyen $u = 4\left(\cos\frac{\pi}{3} + i\sin\frac{\pi}{3}\right)$ és $v = 2\left(\cos\frac{\pi}{6} + i\sin\frac{\pi}{6}\right)$. Számítsuk ki az $u \cdot v$ és $\frac{u}{v}$ értékét trigonometrikus és algebrai alakban is!

## Gy5.13.2. feladat

Legyen $u = \sqrt{2}\left(\cos\frac{3\pi}{4} + i\sin\frac{3\pi}{4}\right)$ és $v = 2\sqrt{2}\left(\cos\frac{\pi}{2} + i\sin\frac{\pi}{2}\right)$. Számítsuk ki az $u \cdot v$ és $\frac{u}{v}$ értékét trigonometrikus alakban, a szögeket a $[0, 2\pi)$ intervallumban megadva!

## Gy5.14.1. feladat

Mennyi $-\sin(40^\circ) + i\cos(40^\circ)$ szöge? Ha $z$ szöge $40^\circ$, határozzuk meg a $\frac{i z^3}{\overline{z}^2}$ komplex szám szögét!

## Gy5.14.2. feladat

Tegyük fel, hogy $|u| = 1$ és $\arg u = 30^\circ$. Számítsuk ki a $\frac{u^5}{\overline{u}^3}$ komplex szám abszolút értékét és algebrai alakját!

## Gy5.15.1. feladat

A Moivre-formula és a binomiális tétel segítségével fejezzük ki $\cos(4x)$-et és $\sin(4x)$-et $\cos x$ és $\sin x$ hatványaival, majd írjuk fel $\cos(4x)$-et kizárólag $\cos x$ polinomjaként!

## Gy5.15.2. feladat

A Moivre-formula segítségével fejezzük ki $\cos(5x)$-et kizárólag $\cos x$ hatványaival!

## Gy5.16.1. feladat

Számítsuk ki a $\left(\sin\frac{\pi}{8} - i\cos\frac{\pi}{8}\right)^8$ és a $\left(1 + \cos\frac{\pi}{3} + i\sin\frac{\pi}{3}\right)^6$ kifejezések pontos értékét!

## Gy5.16.2. feladat

Számítsuk ki a $\left(1 - \cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\right)^8$ kifejezés algebrai alakját!

## Gy5.17.1. feladat

A Moivre-képlet segítségével számítsuk ki az $(\sqrt{3} - i)^9$ komplex szám pontos algebrai alakját!

## Gy5.17.2. feladat

A Moivre-képlet segítségével számítsuk ki az $(-1 - i\sqrt{3})^{10}$ komplex szám pontos algebrai alakját!

## Gy5.18.1. feladat

Oldjuk meg a komplex számok halmazán az $x^4 = 16$ és az $x^3 = -8i$ egyenleteket!

## Gy5.18.2. feladat

Oldjuk meg az $x^6 = 1 - i\sqrt{3}$ egyenletet, és adjuk meg a gyököket trigonometrikus alakban!

## Gy5.19.1. feladat

Határozzuk meg a $z = -8 - 8\sqrt{3}i$ komplex szám összes harmadik gyökét trigonometrikus alakban!

## Gy5.19.2. feladat

Határozzuk meg a $z = -16$ komplex szám összes negyedik gyökét algebrai alakban!

## Gy5.20.1. feladat

Legyen $\varepsilon = \cos\frac{2\pi}{5} + i\sin\frac{2\pi}{5}$ primitív 5-ödik egységgyök. Számítsuk ki az $1 + \varepsilon^2 + \varepsilon^4 + \varepsilon^6 + \varepsilon^8$ összeg pontos értékét!

## Gy5.20.2. feladat

Bizonyítsuk be, hogy ha $\varepsilon$ primitív 6-odik egységgyök, akkor $\sum_{j=0}^{5} (-1)^j \varepsilon^j = 0$!

## Gy5.21.1. feladat

A komplex számok és a binomiális tétel segítségével határozzuk meg az $U_n = \sum_{k=0}^{n} (-1)^k \binom{n}{k} \cos(kx)$ összeg zárt alakját!

## Gy5.21.2. feladat

Határozzuk meg az $S = \sum_{k=0}^n \binom{n}{k} \cos^2(kx)$ összeg zárt alakját az $S_{2n} = \sum_{k=0}^n \binom{n}{k} \cos(2kx)$ összegre visszavezetve!

## Gy5.22.1. feladat

Határozzuk meg és jellemezzük geometriailag a következő halmazokat: $\{z : |z - 3i| \ge 2\}$, $\{z : |z - 2| = |z + 4i|\}$ és $\{z : z + \overline{z} = 6\}$!

## Gy5.22.2. feladat

Határozzuk meg azon $z \in \mathbb{C}$ pontok halmazát, amelyekre $\operatorname{Re}\left(\frac{z - 1}{z + 1}\right) = 0$ ($z \neq -1$)!

## Gy5.23.1. feladat

Milyen geometriai transzformációnak felel meg a $z \mapsto (\sqrt{3} + i)z$ leképezés a komplex síkon?

## Gy5.23.2. feladat

Határozzuk meg a $z \mapsto -i z + 2$ leképezés fixpontját és geometriai jellegét!

## Gy5.24.1. feladat

A paralelogramma-azonosság felhasználásával vezessük le az $a, b, c$ oldalú háromszög $c$ oldalhoz tartozó $s_c$ súlyvonalának hosszára vonatkozó formulát: $s_c^2 = \frac{2a^2 + 2b^2 - c^2}{4}$!

## Gy5.24.2. feladat

Bizonyítsuk be komplex számok segítségével, hogy egy paralelogramma akkor és csak akkor rombusz, ha átlói merőlegesek egymásra!

---

# Az 6. feladatsorhoz — Kongruenciák, Diofantoszi egyenletek, Kínai maradéktétel, Euler–Fermat és Hensel-lemma

## Gy6.1.1. feladat

Bizonyítsuk be, hogy ha $a \equiv b \pmod m$, akkor tetszőleges $k \in \mathbb{N}$ esetén $a^k \equiv b^k \pmod m$, és tetszőleges egész együtthatós polinomra $P(a) \equiv P(b) \pmod m$!

## Gy6.1.2. feladat

Bizonyítsuk be, hogy ha $ca \equiv cb \pmod m$ és $d = \operatorname{lnko}(c, m)$, akkor $a \equiv b \pmod{m/d}$. Igaz-e, hogy $(c, m) = 1$ esetén egyszerűsíthetünk $c$-vel?

## Gy6.2.1. feladat

Adjunk meg egy-egy teljes maradékrendszert modulo 5, amely (1) csupa 3-mal osztható számból áll, (2) csupa páros pozitív számból áll, illetve (3) csupa prímszámból áll!

## Gy6.2.2. feladat

Döntsük el, hogy a $\{14, 20, 26, 32, 38, 44\}$ halmaz teljes maradékrendszert alkot-e modulo 6! Válaszunkat indokoljuk meg!

## Gy6.3.1. feladat

Redukált maradékrendszert alkot-e a $\{1, 5, 7, 11, 13, 17, 19, 23\}$ halmaz modulo 24?

## Gy6.3.2. feladat

Határozzuk meg $\varphi(20)$ értékét, és adjunk meg egy olyan redukált maradékrendszert modulo 20, amely csupa 20-nál nagyobb számból áll!

## Gy6.4.1. feladat

Határozzuk meg a $3^{2026}$ szám utolsó két számjegyét!

## Gy6.4.2. feladat

Határozzuk meg a $9^{2026}$ szám utolsó két számjegyét!

## Gy6.5.1. feladat

Oldjuk meg az $x^2 \equiv 1 \pmod 8$ kongruenciát! Hány inkongruens megoldás van modulo 8?

## Gy6.5.2. feladat

Mutassuk meg, hogy ha $p$ és $q$ különböző páratlan prímek és $m = pq$, akkor az $x^2 \equiv 1 \pmod m$ kongruenciának pontosan 4 inkongruens megoldása van modulo $m$!

## Gy6.6.1. feladat

Számítsuk ki a $11^{1005} \pmod{19}$ és a $7^{162} \pmod{20}$ maradékokat!

## Gy6.6.2. feladat

Számítsuk ki a $13^{2026} \pmod{15}$ és a $4^{203} \pmod{13}$ kifejezések pontos maradékait!

## Gy6.7.1. feladat

Bizonyítsuk be, hogy az $n^5 - n$ kifejezés minden $n \in \mathbb{Z}$ esetén osztható 30-cal!

## Gy6.7.2. feladat

Bizonyítsuk be, hogy minden $n$ egész szám esetén $n^{13} - n$ osztható 2730-cal!

## Gy6.8.1. feladat

Mutassuk meg, hogy ha $m$ páratlan, akkor létezhet olyan $a_i$ és $b_i$ teljes maradékrendszer, amelyek összege szintén teljes maradékrendszert alkot! Mutassunk konkrét példát $m = 3$ és $m = 5$ esetén!

## Gy6.8.2. feladat

Legyen $m$ páros egész szám, és $a_1, \dots, a_m$ egy teljes maradékrendszer modulo $m$. Alkot-e a $2a_1, 2a_2, \dots, 2a_m$ halmaz teljes maradékrendszert modulo $m$? Válaszunkat indokoljuk!

## Gy6.9.1. feladat

Igazoljuk, hogy ha $p = 4k + 1$ alakú prím, akkor az $x = \left(\frac{p-1}{2}\right)!$ számra teljesül, hogy $x^2 \equiv -1 \pmod p$ (felhasználva a Wilson-tételt)!

## Gy6.9.2. feladat

Bizonyítsuk be, hogy végtelen sok $4k + 1$ alakú prímszám létezik annak felhasználásával, hogy $x^2 + 1$ minden páratlan prímosztója $4k+1$ alakú!

## Gy6.10.1. feladat

Oldjuk meg a $7x \equiv 5 \pmod{29}$ és a $12x \equiv 18 \pmod{30}$ kongruenciákat!

## Gy6.10.2. feladat

Oldjuk meg a $21x \equiv 14 \pmod{35}$ és a $9x \equiv 4 \pmod{26}$ kongruenciákat!

## Gy6.11.1. feladat

Egy boltban 400 és 700 forintos füzeteket vásároltak összesen 8900 forintért. Mindkét fajtából vettek legalább egyet. Hány darabot vásárolhattak az egyes füzetekből?

## Gy6.11.2. feladat

Egy cukrászdában 250 Ft-os pogácsát és 600 Ft-os süteményt árulnak. Lehetséges-e pontosan 6150 Ft értékben vásárolni úgy, hogy mindkettőből veszünk legalább egyet? Ha igen, hányféleképpen?

## Gy6.12.1. feladat

Oldjuk meg az egész számok halmazán a (1) $18x + 42y = 114$ és a (2) $25x + 40y = 73$ egyenleteket!

## Gy6.12.2. feladat

Oldjuk meg a $21x + 49y = 105$ diofantoszi egyenletet az egész számok halmazán!

## Gy6.13.1. feladat

Bizonyítsuk be, hogy $\sqrt[3]{12}$ irracionális szám!

## Gy6.13.2. feladat

Bizonyítsuk be, hogy $\sqrt{2} + \sqrt{3}$ irracionális szám!

## Gy6.14.1. feladat

Határozzuk meg az összes olyan primitív pitagoraszi számhármast, amelyben az egyik szám 21!

## Gy6.14.2. feladat

Határozzuk meg az összes olyan primitív pitagoraszi számhármast, amelyben a páros befogó 24!

## Gy6.15.1. feladat

Keressük meg az összes olyan egész oldalú derékszögű háromszöget, amelynek területe kétszerese a kerületének ($T = 2K$)!

## Gy6.15.2. feladat

Létezik-e olyan derékszögű háromszög egész oldalhosszakkal, amelyben a kerület mérőszáma kétszerese a területének ($K = 2T$)?

## Gy6.16.1. feladat

Mutassuk meg, hogy az $x^4 + y^4 = z^2$ egyenlet pozitív egész megoldhatatlanságából közvetlenül következik a Nagy Fermat-tétel $n = 4$ esete ($x^4 + y^4 = z^4$)!

## Gy6.16.2. feladat

Igazoljuk, hogy ha egy $F(x, y, z) = x^n + y^n - z^n$ kifejezésnek van pozitív egész gyöke, akkor $n$ semelyik osztójára sem lehet igaz a Fermat-tétel!

## Gy6.17.1. feladat

Oldjuk meg a következő kongruenciarendszert: $x \equiv 2 \pmod 3$, $x \equiv 3 \pmod 5$, $x \equiv 1 \pmod 7$!

## Gy6.17.2. feladat

Oldjuk meg a következő kongruenciarendszert: $x \equiv 3 \pmod 4$, $x \equiv 1 \pmod 5$, $x \equiv 2 \pmod 9$!

## Gy6.18.1. feladat

Határozzuk meg a legkisebb pozitív egész számot, amely 4-gyel osztva 1-et, 5-tel osztva 2-t, 7-tel osztva pedig 4-et ad maradékul!

## Gy6.18.2. feladat

Határozzuk meg a legkisebb pozitív egész számot, amely 3-mal osztva 1-et, 5-tel osztva 4-et, 11-gyel osztva pedig 7-et ad maradékul!

## Gy6.19.1. feladat

Egy hadsereg katonáit felsorakoztatják. Ha 7-esével állnak sorba, 2 marad ki; ha 9-esével, 4 marad ki; ha 11-esével, 6 marad ki. Legalább hány katona van a seregben?

## Gy6.19.2. feladat

Egy könyvtárban a könyveket polcokra rendezik. Ha polconként 5 könyvet tesznek fel, 3 marad kimaradva. Ha polconként 7-et, akkor 5 marad ki, ha pedig 8-at, akkor 1 marad ki. Legalább hány könyv van?

## Gy6.20.1. feladat

Oldjuk meg az $x^3 + 2x + 9 \equiv 0 \pmod{27}$ kongruenciát!

## Gy6.20.2. feladat

Oldjuk meg az $x^2 + x + 7 \equiv 0 \pmod{25}$ kongruenciát!

---

# Az 7. feladatsorhoz — Determinánsok alaptulajdonságai, Gauss-módszer, kifejtési tétel és permutációk

## Gy7.1.1. feladat

Számítsuk ki a $\begin{vmatrix} 2 & -3 \\ 5 & 1 \end{vmatrix}$ és a $\begin{vmatrix} 1 & 0 & 2 \\ 2 & -1 & 3 \\ 4 & 1 & 8 \end{vmatrix}$ determinánsok értékét Gauss-eliminációval és kifejtéssel is!

## Gy7.1.2. feladat

Számítsuk ki az alábbi $4 \times 4$-es felső háromszögmátrix determinánsát: $D = \begin{vmatrix} 2 & 1 & 5 & -3 \\ 0 & 3 & 4 & 1 \\ 0 & 0 & -1 & 7 \\ 0 & 0 & 0 & 5 \end{vmatrix}$!

## Gy7.2.1. feladat

Számítsuk ki a $\begin{vmatrix} x & y & y \\ y & x & y \\ y & y & x \end{vmatrix}$ determináns értékét és a $V(1, 2, 3, 4)$ Vandermonde-determinánst!

## Gy7.2.2. feladat

Számítsuk ki az $n \times n$-es tridiagonális $D_n = \begin{vmatrix} 2 & 1 & 0 & \dots \\ 1 & 2 & 1 & \dots \\ 0 & 1 & 2 & \dots \\ \vdots & \ddots & \ddots & \ddots \end{vmatrix}$ determináns értékét!

## Gy7.3.1. feladat

Legyen $A \in \mathbb{R}^{3 \times 3}$ olyan mátrix, amelyre $\det A = -2$. Számítsuk ki $\det(-2A)$ és $\det(A^3)$ értékét!

## Gy7.3.2. feladat

Egy $C \in \mathbb{R}^{5 \times 5}$ mátrix determinánsa 4. Számítsuk ki $\det(2C^{-1})$ értékét!

## Gy7.4.1. feladat

Igazoljuk, hogy ha egy $3 \times 3$-as mátrix elemei $a_{ij} = i + 2j$, akkor determinánsa 0!

## Gy7.4.2. feladat

Legyen $n \ge 3$. Igazoljuk, hogy az $a_{ij} = i + j$ elemekből álló $n \times n$-es mátrix determinánsa 0!

## Gy7.5.1. feladat

Egy $n \times n$-es mátrix ($n \ge 3$) minden sora számtani sorozat. Mutassuk meg, hogy a determinánsa 0!

## Gy7.5.2. feladat

Egy $n \times n$-es mátrix ($n \ge 4$) minden oszlopa egy másodfokú polinom értékeit tartalmazza: $a_{ij} = A_j i^2 + B_j i + C_j$. Mutassuk meg, hogy determinánsa 0!

## Gy7.6.1. feladat

Egy egész számokból álló négyzetes mátrixban minden sorösszeg páros. Igazoljuk, hogy a mátrix determinánsa is páros szám!

## Gy7.6.2. feladat

Egy egész elemű mátrixban minden oszlop összege osztható $p$-vel, ahol $p$ prímszám. Igazoljuk, hogy a determináns értéke osztható $p$-vel!

## Gy7.7.1. feladat

Egy $3 \times 3$-as determináns elemei számjegyek. A sorokból balról jobbra kiolvasott háromjegyű számok mindegyike osztható 17-tel. Igazoljuk, hogy a determináns értéke is osztható 17-tel!

## Gy7.7.2. feladat

Egy $4 \times 4$-es mátrix oszlopaiból felülről lefelé kiolvasott négyjegyű számok mind oszthatók 19-cel. Igazoljuk, hogy a mátrix determinánsa osztható 19-cel!

## Gy7.8.1. feladat

Határozzuk meg a $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 \\ 2 & 4 & 6 & 1 & 3 & 5 \end{pmatrix}$ permutáció inverziószámát és előjelét!

## Gy7.8.2. feladat

Hány inverzió van a $\sigma = (n, 1, 2, \dots, n-1)$ és a $\tau = (2, 3, \dots, n, 1)$ ciklikus eltolásokban?

## Gy7.9.1. feladat

Hány inverzió lehet maximum egy 5 elemű halmaz egy páratlan permutációjában?

## Gy7.9.2. feladat

Határozzuk meg egy 7 elemű halmaz páros, illetve páratlan permutációinak maximális inverziószámát!

## Gy7.10.1. feladat

Adjuk meg a $\sigma = (123)(345)(12)(45)$ permutáció diszjunkt ciklusfelbontását és előjelét!

## Gy7.10.2. feladat

Számítsuk ki a $\pi = (12345)^3$ hatvány ciklusfelbontását és előjelét!

## Gy7.11.1. feladat

Igazoljuk, hogy tetszőleges ciklus felírható közös kezdőpontú transzpozíciók szorzataként is: $(x_1 x_2 \dots x_k) = (x_1 x_k)(x_1 x_{k-1}) \dots (x_1 x_2)$!

## Gy7.11.2. feladat

Írjuk fel az $(1 4 3 2)$ ciklust szomszédos transzpozíciók szorzataként a 7.11 feladat formulája alapján!

## Gy7.12.1. feladat

Konjugáljuk a $\sigma = (123)(45)$ permutációt az $f = (14)(25)$ permutációval a fenti tétel segítségével!

## Gy7.12.2. feladat

Hány elem van a $\sigma = (12)(345)$ permutáció konjugált osztályában az $S_5$ szimmetrikus csoportban?

## Gy7.13.1. feladat

Írjuk fel a $\pi = \begin{pmatrix} 1 & 2 & 3 \\ 3 & 1 & 2 \end{pmatrix}$ permutáció $P_\pi$ mátrixát, és határozzuk meg determinánsát!

## Gy7.13.2. feladat

Igazoljuk, hogy tetszőleges $\pi \in S_n$ permutációra $\det(P_\pi) \in \{+1, -1\}$, és a páros permutációk mátrixai az $SO(n)$ speciális ortogonális csoportba esnek!

---

# Az 8. feladatsorhoz — A determináns Leibniz-definíciója, Cramer-szabály, adjungált mátrix és speciális determinánsok

## Gy8.1.1. feladat

Egy $4 \times 4$-es mátrix determinánsában mi lesz az $a_{13}a_{24}a_{31}a_{42}$ és az $a_{31}a_{14}a_{42}a_{23}$ tagok előjele?

## Gy8.1.2. feladat

Egy $5 \times 5$-ös mátrix determinánsában határozzuk meg az $a_{15}a_{24}a_{33}a_{42}a_{51}$ és az $a_{13}a_{21}a_{35}a_{44}a_{52}$ tagok előjelét!

## Gy8.2.1. feladat

Egy $4 \times 4$-es mátrix 1. és 3. sora megegyezik. Az $a_{12}a_{24}a_{31}a_{43}$ tagot melyik tag ejti ki biztosan a determinánsban?

## Gy8.2.2. feladat

Egy $5 \times 5$-ös mátrix 2. és 4. oszlopa egyenlő. Melyik tag ejti ki az $a_{12}a_{23}a_{34}a_{41}a_{55}$ tagot?

## Gy8.3.1. feladat

Legyen $A \in \mathbb{R}^{4 \times 4}$ olyan mátrix, amelyre $\det A = 7$. Mennyi lesz annak a mátrixnak a determinánsa, amelyet úgy kapunk, hogy a 2. és 4. sort felcseréljük, majd az 1. sort $(-2)$-vel, a 3. sort pedig $5$-tel megszorozzuk?

## Gy8.3.2. feladat

Egy $4 \times 4$-es mátrix determinánsa $-4$. Egymás után 3 sorcserét hajtunk végre, majd a mátrix minden elemét megszorozzuk 2-vel. Mennyi lesz az új determináns értéke?

## Gy8.4.1. feladat

Legyenek $A$ és $B$ olyan $3 \times 3$-as mátrixok, amelyekre $\det A = 3$ és $\det B = -2$. Számítsuk ki $\det(A^{-1} B^T A^3)$ és $\det(2 A B^{-1})$ értékét!

## Gy8.4.2. feladat

Legyenek $A, B \in \mathbb{R}^{4 \times 4}$ olyan mátrixok, amelyekre $\det A = -1$ és $\det B = 4$. Számítsuk ki a $\det((A^2 B)^T (B^{-1})^2)$ kifejezés értékét!

## Gy8.5.1. feladat

Legyenek $A, B, C \in \mathbb{R}^{n \times n}$ mátrixok, amelyekre $\det A = 3$, $\det B = -1$, $\det C = 6$. Mennyi $\det(B^5 A C^{-1} B^{-3})$ értéke?

## Gy8.5.2. feladat

Legyenek $X, Y \in \mathbb{R}^{n \times n}$ mátrixok, amelyekre $\det X = 7$ és $\det Y = 2$. Mennyi a $\det(X Y X^{-1} Y^2 X^2 Y^{-3} X^{-2})$ determináns értéke?

## Gy8.6.1. feladat

Számítsuk ki a legalkalmasabb kifejtéssel a következő determinánst: $D = \begin{vmatrix} 3 & 1 & 0 & -2 \\ 0 & 0 & 0 & 5 \\ 2 & -1 & 4 & 1 \\ 1 & 0 & 0 & 3 \end{vmatrix}$!

## Gy8.6.2. feladat

Számítsuk ki a $D = \begin{vmatrix} 0 & 2 & 0 & 0 \\ 4 & -1 & 3 & 2 \\ 0 & 5 & 0 & -3 \\ 1 & 0 & 2 & 0 \end{vmatrix}$ determináns értékét kifejtéssel!

## Gy8.7.1. feladat

Határozzuk meg az $A = \begin{pmatrix} 1 & 2 & 0 \\ 0 & 4 & 3 \\ 0 & 0 & 5 \end{pmatrix}$ mátrix inverzében az $(A^{-1})_{12}$ és $(A^{-1})_{23}$ elemeket az adjungált képlettel!

## Gy8.7.2. feladat

Határozzuk meg az $A = \begin{pmatrix} 3 & 1 & 2 \\ 0 & 2 & 1 \\ 0 & 0 & 4 \end{pmatrix}$ mátrix inverzének első sor harmadik elemét, azaz $(A^{-1})_{13}$-at!

## Gy8.8.1. feladat

Oldjuk meg a Cramer-szabállyal a $\begin{cases} 3x - 2y = 7 \\ 2x + 3y = 9 \end{cases}$ egyenletrendszert!

## Gy8.8.2. feladat

Oldjuk meg a Cramer-szabállyal az alábbi $3 \times 3$-as rendszert: $\begin{cases} x + y + z = 6 \\ 2x - y + z = 3 \\ x + 2y - z = 2 \end{cases}$!

## Gy8.9.1. feladat

Legyen $U \in \mathbb{C}^{n \times n}$ unitér mátrix (azaz $U^* U = I$, ahol $U^* = \overline{U}^T$). Igazoljuk, hogy $|\det U| = 1$, azaz a determinánsa a komplex egységkörön helyezkedik el!

## Gy8.9.2. feladat

Legyen $A \in \mathbb{R}^{3 \times 3}$ egy $3 \times 3$-as forgatásmátrix ($\det A = 1, A^T A = I$). Igazoljuk, hogy $\lambda = 1$ sajátértéke $A$-nak (Euler tétele a forgástengelyről)!

## Gy8.10.1. feladat

Döntsük el, hogy az $A = \begin{pmatrix} 3 & 5 \\ 2 & 3 \end{pmatrix}$ és a $B = \begin{pmatrix} 2 & 1 \\ 4 & 3 \end{pmatrix}$ mátrixoknak egész elemű-e az inverze!

## Gy8.10.2. feladat

Igazoljuk, hogy ha $A \in \mathbb{Z}^{n \times n}$ és $\det A = 1$, akkor az $A \mathbf{x} = \mathbf{b}$ egyenletrendszernek tetszőleges egész $\mathbf{b} \in \mathbb{Z}^n$ vektor esetén létezik egész megoldása!

## Gy8.11.1. feladat

Bizonyítsuk be, hogy ha $A$ egy páratlan méretű valós ferdén szimmetrikus mátrix ($A^T = -A$, $A \in \mathbb{R}^{n \times n}$, $n$ páratlan), akkor $\det A = 0$!

## Gy8.11.2. feladat

Igazoljuk, hogy tetszőleges $n$-re egy $H \in \mathbb{C}^{n \times n}$ Hermite-féle mátrix ($H = \overline{H}^T$) determinánsa valós szám!

## Gy8.12.1. feladat

Hogyan változik meg egy $n \times n$-es mátrix determinánsa, ha a sorait és az oszlopait is megfordítjuk (középpontos tükrözés a mátrix középpontjára)?

## Gy8.12.2. feladat

Hogyan változik egy $n \times n$-es determináns, ha a sorait ciklikusan eltoljuk lefelé egy pozícióval (azaz az 1. sor a 2.-ba, a 2. a 3.-ba, ..., az $n$-edik az 1. sorba kerül)?

## Gy8.13.1. feladat

Bizonyítsuk be, hogy az alábbi tridiagonális determináns szintén a Fibonacci-számokat állítja elő: $D_n = \begin{vmatrix} 1 & -1 & 0 & \dots \\ 1 & 1 & -1 & \dots \\ 0 & 1 & 1 & \dots \\ \vdots & \ddots & \ddots & \ddots \end{vmatrix} = F_{n+1}$!

## Gy8.13.2. feladat

Számítsuk ki a $D_n = \begin{vmatrix} 3 & 2 & 0 & \dots \\ 1 & 3 & 2 & \dots \\ 0 & 1 & 3 & \dots \\ \vdots & \ddots & \ddots & \ddots \end{vmatrix}$ determináns zárt alakját!

---
