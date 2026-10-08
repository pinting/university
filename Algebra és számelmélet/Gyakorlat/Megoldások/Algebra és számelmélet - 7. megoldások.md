# Algebra és számelmélet – 7. feladatsor – megoldások

## 1. feladat

Számítsuk ki az alábbi determinánsokat a felső háromszög alakra hozás módszerével, azaz Gauss-eliminációval, az első sor, illetve az utolsó oszlop szerinti kifejtéssel, végül a $3 \times 3$-asokat a Sarrus-szabállyal is.
$$\begin{vmatrix} -1 & 4 \\ 2 & 3 \end{vmatrix} \quad \begin{vmatrix} 0 & 2 & -1 \\ 4 & 1 & 3 \\ 2 & -3 & 2 \end{vmatrix} \quad \begin{vmatrix} x_1 & y_1 & z_1 \\ x_2 & y_2 & z_2 \\ x_3 & y_3 & z_3 \end{vmatrix} \quad \begin{vmatrix} 1 & 2 & 3 & 4 \\ 1 & 2 & 3 & 0 \\ 1 & 2 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{vmatrix} \quad \begin{vmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{vmatrix}$$

**Megoldás.**

**(a) $\begin{vmatrix} -1 & 4 \\ 2 & 3 \end{vmatrix} = -11$.**

- *Gauss:* $S_2 \leftarrow S_2 + 2S_1$: $\begin{vmatrix} -1 & 4 \\ 0 & 11 \end{vmatrix} = (-1) \cdot 11 = -11$.
- *Első sor szerint:* $(-1) \cdot 3 - 4 \cdot 2 = -11$.
- *Utolsó oszlop szerint:* $4 \cdot (-1)^{1+2} \cdot 2 + 3 \cdot (-1)^{2+2} \cdot (-1) = -8 - 3 = -11$.

**(b) $\begin{vmatrix} 0 & 2 & -1 \\ 4 & 1 & 3 \\ 2 & -3 & 2 \end{vmatrix} = 10$.**

- *Gauss:* $S_1 \leftrightarrow S_2$ (előjelváltás), majd $S_3 \leftarrow S_3 - \frac12 S_1$, végül $S_3 \leftarrow S_3 + \frac74 S_2$:
$$-\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 2 & -3 & 2 \end{vmatrix} = -\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 0 & -\frac72 & \frac12 \end{vmatrix} = -\begin{vmatrix} 4 & 1 & 3 \\ 0 & 2 & -1 \\ 0 & 0 & -\frac54 \end{vmatrix} = -4 \cdot 2 \cdot \left(-\tfrac54\right) = 10.$$
- *Első sor szerint:* $0 \cdot \begin{vmatrix} 1 & 3 \\ -3 & 2 \end{vmatrix} - 2\begin{vmatrix} 4 & 3 \\ 2 & 2 \end{vmatrix} + (-1)\begin{vmatrix} 4 & 1 \\ 2 & -3 \end{vmatrix} = 0 - 2 \cdot 2 - (-14) = 10$.
- *Utolsó oszlop szerint* (előjelek $+, -, +$): $(-1)\begin{vmatrix} 4 & 1 \\ 2 & -3 \end{vmatrix} - 3\begin{vmatrix} 0 & 2 \\ 2 & -3 \end{vmatrix} + 2\begin{vmatrix} 0 & 2 \\ 4 & 1 \end{vmatrix} = 14 + 12 - 16 = 10$.
- *Sarrus:* $(0 \cdot 1 \cdot 2 + 2 \cdot 3 \cdot 2 + (-1) \cdot 4 \cdot (-3)) - ((-1) \cdot 1 \cdot 2 + 0 \cdot 3 \cdot (-3) + 2 \cdot 4 \cdot 2) = 24 - 14 = 10$.

**(c) Az általános $3 \times 3$-as determináns.**

- *Sarrus:*
$$x_1y_2z_3 + y_1z_2x_3 + z_1x_2y_3 - z_1y_2x_3 - x_1z_2y_3 - y_1x_2z_3.$$
- *Első sor szerint:* $x_1(y_2z_3 - z_2y_3) - y_1(x_2z_3 - z_2x_3) + z_1(x_2y_3 - y_2x_3)$. Kibontva ugyanaz a hat tag.
- *Utolsó oszlop szerint:* $z_1(x_2y_3 - y_2x_3) - z_2(x_1y_3 - y_1x_3) + z_3(x_1y_2 - y_1x_2)$. Szintén ugyanaz.
- *Gauss:* ha $x_1 \neq 0$, akkor $S_2 \leftarrow S_2 - \frac{x_2}{x_1}S_1$ és $S_3 \leftarrow S_3 - \frac{x_3}{x_1}S_1$ után
$$x_1 \begin{vmatrix} y_2 - \frac{x_2}{x_1}y_1 & z_2 - \frac{x_2}{x_1}z_1 \\ y_3 - \frac{x_3}{x_1}y_1 & z_3 - \frac{x_3}{x_1}z_1 \end{vmatrix} = \frac{1}{x_1}\Big[(x_1y_2 - x_2y_1)(x_1z_3 - x_3z_1) - (x_1z_2 - x_2z_1)(x_1y_3 - x_3y_1)\Big].$$
  Kibontva az $x_1^2$-et nem tartalmazó tagok ($x_2y_1x_3z_1$ kétszer, ellentétes előjellel) kiesnek. $x_1$-gyel osztva a fenti hattagú kifejezést kapjuk. ($x_1 = 0$ esetén először sorcserével kell nem nulla elemet a bal felső sarokba vinni.)

**(d) $\begin{vmatrix} 1 & 2 & 3 & 4 \\ 1 & 2 & 3 & 0 \\ 1 & 2 & 0 & 0 \\ 1 & 0 & 0 & 0 \end{vmatrix} = 24$.**

- *Gauss:* $S_1 \leftarrow S_1 - S_2$, $S_2 \leftarrow S_2 - S_3$, $S_3 \leftarrow S_3 - S_4$, ebben a sorrendben, így mindig még változatlan sort vonunk ki. A sorok: $(0,0,0,4)$, $(0,0,3,0)$, $(0,2,0,0)$, $(1,0,0,0)$. Két sorcsere ($S_1 \leftrightarrow S_4$, $S_2 \leftrightarrow S_3$, előjel $+$) után a determináns $\operatorname{diag}(1, 2, 3, 4)$, értéke $24$.
- *Első sor szerint:* az $M_{11}$, $M_{12}$, $M_{13}$ aldeterminánsok mind 0-k (van csupa 0 soruk vagy oszlopuk). Így a determináns
$$-4\begin{vmatrix} 1 & 2 & 3 \\ 1 & 2 & 0 \\ 1 & 0 & 0 \end{vmatrix} = -4 \cdot (-6) = 24,$$
  ahol a $3 \times 3$-as Sarrus-szabállyal $0 + 0 + 0 - (3 \cdot 2 \cdot 1 + 0 + 0) = -6$.
- *Utolsó oszlop szerint:* egyetlen nem nulla elem, az $a_{14} = 4$, előjele $(-1)^{1+4} = -1$. Ugyanazt kapjuk: $-4 \cdot (-6) = 24$.

**(e) $\begin{vmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{vmatrix} = -1$.**

- *Gauss (sorcserékkel):* $S_1 \leftrightarrow S_3$, majd $S_2 \leftrightarrow S_3$, majd $S_3 \leftrightarrow S_4$ után az egységmátrixot kapjuk. Ez 3 csere, tehát a determináns $(-1)^3 = -1$.
- *Első sor szerint:* csak $a_{12} = 1 \neq 0$, előjele $-$:
$$-\begin{vmatrix} 0 & 0 & 1 \\ 1 & 0 & 0 \\ 0 & 1 & 0 \end{vmatrix} = -1.$$
  A $3 \times 3$-as Sarrus-szabállyal $1 \cdot 1 \cdot 1 = 1$.
- *Utolsó oszlop szerint:* csak $a_{24} = 1$, előjele $(-1)^{2+4} = +$:
$$\begin{vmatrix} 0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 1 \end{vmatrix} = -1.$$
  Sarrusszal: egyetlen nem nulla szorzat a mellékátlós irányú $a_{12}a_{21}a_{33} = 1$, negatív előjellel.

(Ez permutációmátrix: a $\begin{pmatrix} 1&2&3&4 \\ 2&4&1&3 \end{pmatrix}$ permutációé, amelynek 3 inverziója van, ezért páratlan.)

::: elmelet
**Elméleti háttér — a determináns kiszámításának módszerei.** (1) **Elemi sorműveletek:** sor többszörösének hozzáadása nem változtat, sorcsere előjelet vált, sor $c$-szerese $c$-vel szorozza a determinánst; háromszögmátrix determinánsa a főátló szorzata. (2) **Kifejtési tétel:** $\det A = \sum_j (-1)^{i+j}a_{ij}M_{ij}$ bármely $i$-edik sor (vagy oszlop) szerint — érdemes a legtöbb nullát tartalmazó sort választani. (3) **Sarrus-szabály** csak $3 \times 3$-asra. Mindhárom ugyanazt adja, mert mindegyik a permutációs definícióból ($\sum_\sigma \operatorname{sgn}\sigma\prod a_{i\sigma(i)}$) vezethető le. Permutációmátrix determinánsa a permutáció előjele.
:::

## 2. feladat

Számítsuk ki az alábbi determinánsokat.
$$\begin{vmatrix} 1 & 1 & \dots & 1 \\ 1 & 2 & \dots & 2 \\ \vdots & \vdots & \ddots & \vdots \\ 1 & 2 & \dots & n \end{vmatrix} \quad \begin{vmatrix} 1 & 1 & \dots & 1 \\ y_1 & y_2 & \dots & y_n \\ \vdots & \vdots & \ddots & \vdots \\ y_1^{n-1} & y_2^{n-1} & \dots & y_n^{n-1} \end{vmatrix} \quad \begin{vmatrix} a & b & \dots & b \\ b & a & \dots & b \\ \vdots & \vdots & \ddots & \vdots \\ b & b & \dots & a \end{vmatrix} \quad \begin{vmatrix} 3 & 1 & 0 & \dots & 0 \\ 1 & 3 & 1 & \ddots & \vdots \\ 0 & 1 & 3 & \ddots & 0 \\ \vdots & \ddots & \ddots & \ddots & 1 \\ 0 & \dots & 0 & 1 & 3 \end{vmatrix}$$

**Megoldás.**

**(a) $\det = 1$.** Az $(i, j)$ elem $\min(i, j)$. Alulról felfelé haladva vonjuk ki minden sorból az előtte levőt: $S_i \leftarrow S_i - S_{i-1}$ ($i = n, n-1, \dots, 2$). Az $i$-edik sor $(0, \dots, 0, 1, \dots, 1)$ lesz, az első $1$ az $i$-edik helyen. Felső háromszögmátrixot kapunk csupa 1 főátlóval, így a determináns $1$.

**(b) Vandermonde-determináns:**
$$V(y_1, \dots, y_n) = \prod_{1 \le i < j \le n} (y_j - y_i).$$
*Bizonyítás $n$ szerinti indukcióval.* $n = 1$-re $1$, ez stimmel. Alulról felfelé vonjuk ki minden sorból az előző sor $y_1$-szeresét: $S_k \leftarrow S_k - y_1 S_{k-1}$ ($k = n, \dots, 2$). Ez nem változtat a determinánson. Az első oszlop $(1, 0, \dots, 0)^T$ lesz, a $j$-edik oszlop $k$-adik eleme ($k \ge 2$) pedig $y_j^{k-1} - y_1 y_j^{k-2} = y_j^{k-2}(y_j - y_1)$. Kifejtve az első oszlop szerint, majd a $j$-edik oszlopból kiemelve $(y_j - y_1)$-et:
$$V(y_1, \dots, y_n) = \prod_{j=2}^n (y_j - y_1) \cdot V(y_2, \dots, y_n),$$
és ebből indukcióval adódik az állítás.

**(c) $\det = (a + (n - 1)b)(a - b)^{n-1}$.**

1. Adjuk az első oszlophoz az összes többit. Az első oszlop minden eleme $a + (n-1)b$ lesz; ezt kiemeljük.
2. Az első oszlop így csupa $1$. Minden további sorból vonjuk ki az első sort.

A $k$-adik sor ($k \ge 2$) $(0, \dots, 0, a - b, 0, \dots, 0)$ lesz, $a - b$ a főátlóban. A kapott háromszögmátrix determinánsa $1 \cdot (a - b)^{n-1}$.

**(d) $D_n = F_{2n+2}$** (Fibonacci-számok, $F_1 = F_2 = 1$). Zárt alakban
$$D_n = \frac{1}{\sqrt5}\left[\left(\frac{3 + \sqrt5}{2}\right)^{n+1} - \left(\frac{3 - \sqrt5}{2}\right)^{n+1}\right].$$
Kifejtés az első sor szerint, majd a második tagban az első oszlop szerint:
$$D_n = 3D_{n-1} - 1 \cdot 1 \cdot D_{n-2}, \qquad D_1 = 3,\ D_2 = 8\ (\text{és } D_0 = 1).$$
Így $D_3 = 21$, $D_4 = 55$, $D_5 = 144$, … A $\lambda^2 - 3\lambda + 1 = 0$ karakterisztikus egyenlet gyökei $\lambda_{1,2} = \frac{3 \pm \sqrt5}{2}$. A kezdőértékekből $D_n = \frac{\lambda_1^{n+1} - \lambda_2^{n+1}}{\lambda_1 - \lambda_2}$, és $\lambda_1 - \lambda_2 = \sqrt5$. Mivel $\lambda_1 = \varphi^2$, $\lambda_2 = \psi^2$ ($\varphi, \psi = \frac{1 \pm \sqrt5}{2}$), a Binet-képlet szerint ez éppen $F_{2n+2}$.

::: elmelet
**Elméleti háttér — speciális determinánsok.** Általános $n \times n$-es determinánsnál a cél sor-/oszlopműveletekkel **háromszög alakot** vagy **rekurziót** kapni. Tipikus fogások: szomszédos sorok kivonása (lépcsős mátrix); minden oszlop összeadása egy oszlopba és a közös tényező kiemelése (ha minden sorösszeg ugyanaz); az előző sor többszörösének kivonása (Vandermonde: indukcióval $\prod_{i<j}(y_j - y_i)$); tridiagonális mátrixnál kifejtés az első sor szerint, ami **másodrendű lineáris rekurziót** ad, amelyet a karakterisztikus egyenlettel oldunk meg.
:::

## 3. feladat

Ha egy $B \in \mathbb{R}^{4 \times 4}$ mátrixra $\det B = 3$, akkor mennyi $\det(B + B + B)$?

**Megoldás.**

$B + B + B = 3B$. Egy $4 \times 4$-es mátrix minden elemét 3-mal szorozva mind a 4 sorából kiemelhetünk egy 3-ast:
$$\det(3B) = 3^4 \det B = 81 \cdot 3 = \mathbf{243}.$$
(Nem $3 \cdot 3 = 9$, és nem $3 \det B$!)

::: elmelet
**Elméleti háttér — a determináns homogenitása.** A determináns minden sorában **lineáris** (multilineáris függvény). Ezért egy sor $c$-szerese a determinánst $c$-szeresére változtatja, és ha mind az $n$ sort $c$-vel szorozzuk, $\det(cA) = c^n\det A$. A determináns nem lineáris a mátrixban, csak soronként!
:::

## 4. feladat (házi feladat)

Számítsuk ki az alábbi $3 \times 3$-as determináns értékét, ha tudjuk, hogy az elemei a bal felső sarokból jobbrafelé olvasva egy számtani sorozatot alkotnak:
$$\begin{vmatrix} a & a + d & a + 2d \\ a + 3d & a + 4d & a + 5d \\ a + 6d & a + 7d & a + 8d \end{vmatrix}.$$

**Megoldás.**

Vonjuk ki az első sort a második és a harmadik sorból:
$$\begin{vmatrix} a & a + d & a + 2d \\ 3d & 3d & 3d \\ 6d & 6d & 6d \end{vmatrix}.$$
A harmadik sor a második kétszerese, tehát **a determináns $0$** (bármely $a$, $d$ esetén).

::: elmelet
**Elméleti háttér — lineárisan összefüggő sorok.** Ha a sorok lineárisan összefüggők (valamelyik sor a többi lineáris kombinációja), a determináns $0$. Sor kivonása egy másikból nem változtatja a determinánst, és ha két arányos sor jön létre, az egyiket a másik többszörösével kinullázhatjuk.
:::

## 5. feladat

Egy $2026 \times 2026$-os determináns minden oszlopa számtani sorozat. Mennyi az értéke?

**Megoldás.**

Legyen a $j$-edik oszlop $c_j, c_j + d_j, c_j + 2d_j, \dots$. Ekkor a sorokra $S_3 - S_2 = S_2 - S_1 = (d_1, \dots, d_{2026})$, azaz
$$S_1 - 2S_2 + S_3 = 0.$$
A sorok lineárisan összefüggők, tehát **a determináns $0$**. (Konkrétan $S_3 \leftarrow S_3 - 2S_2 + S_1$ után csupa 0 sort kapunk. Ehhez legalább 3 sor kell; $2026 \ge 3$.)

::: elmelet
**Elméleti háttér — összefüggés és determináns.** Ha az oszlopok számtani sorozatok, akkor a sorok között **lineáris összefüggés** van ($S_1 - 2S_2 + S_3 = 0$, minden oszlopban a második differencia $0$). Egy sorművelettel csupa nulla sort hozunk létre, így a determináns $0$. ($\det A \ne 0 \iff$ a sorok lineárisan függetlenek.)
:::

## 6. feladat

Egy egész elemű determinánsban minden sorösszeg osztható 13-mal. Igazoljuk, hogy a determináns értéke is osztható 13-mal.

**Megoldás.**

Adjuk az utolsó oszlophoz az összes többi oszlopot; ez nem változtat a determinánson. Az utolsó oszlop $i$-edik eleme az $i$-edik sorösszeg lesz, ami $13k_i$ alakú ($k_i \in \mathbb{Z}$). Ebből az oszlopból kiemelhetjük a 13-at:
$$\det A = 13 \cdot \det A',$$
ahol $A'$ is egész elemű, így $\det A'$ egész (a determináns az elemek szorzatainak előjeles összege). Tehát $13 \mid \det A$. $\blacksquare$

::: elmelet
**Elméleti háttér — oszlopműveletek és egész determináns.** Oszlopok összeadása nem változtatja a determinánst (a determináns a transzponáltra is ugyanaz, tehát oszlopokra is érvényesek a sorszabályok). Ha egy oszlop minden eleme osztható $13$-mal, a $13$ kiemelhető, és a maradék determináns egész, mert **egész elemű mátrix determinánsa egész** (egész számok szorzatainak előjeles összege).
:::

## 7. feladat

Egy 3x3-as determináns egyjegyű számokból áll. Minden oszlopban a három számjegyből felülről lefelé összeolvasott háromjegyű szám osztható 11-gyel. Igazoljuk, hogy a determináns is osztható 11-gyel.

**Megoldás.**

Legyenek a sorok $S_1, S_2, S_3$; a $j$-edik oszlop számjegyei felülről $a_j, b_j, c_j$, és $11 \mid 100a_j + 10b_j + c_j$. Cseréljük $S_3$-at $100 S_1 + 10 S_2 + S_3$-ra. (Más sorok többszörösét adjuk hozzá, így a determináns nem változik.) Az új harmadik sor elemei éppen a $100a_j + 10b_j + c_j$ háromjegyű számok, mind oszthatók 11-gyel. Ebből a sorból kiemelve a 11-et, egész elemű determinánst kapunk, tehát $11 \mid \det$. $\blacksquare$

(Ugyanez mod 11-gyel: $100 \equiv 1$, $10 \equiv -1$, így $a_j - b_j + c_j \equiv 0 \pmod{11}$. Ekkor $S_3 \leftarrow S_1 - S_2 + S_3$ után a harmadik sor minden eleme osztható 11-gyel.)

::: elmelet
**Elméleti háttér — sorok egész kombinációja.** A $S_3 \leftarrow 100S_1 + 10S_2 + S_3$ művelet nem változtatja a determinánst (más sorok többszörösét adjuk hozzá). Az oszlopokban így a számjegyekből összeolvasott számok jelennek meg, amelyek a feltétel szerint oszthatók $11$-gyel, és a $11$ kiemelhető. Ugyanez kongruenciával: a determináns elemenként modulo $11$ számolható ($\det$ polinom az elemekben).
:::

## 8. feladat

Hány inverzió van az alábbi permutációkban, illetve a 'hátulról előre' permutációban?
$$\begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 3 & 1 & 4 & 2 & 8 & 5 & 7 & 6 \end{pmatrix} \quad \begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 \\ 8 & 2 & 4 & 6 & 1 & 3 & 5 & 7 \end{pmatrix} \quad \begin{pmatrix} a & b & c & d & e \\ b & e & a & c & d \end{pmatrix}$$

**Megoldás.**

Inverzió: olyan $i < j$ pár, amelyre $\sigma(i) > \sigma(j)$. Minden elemhez megszámoljuk, hány nála kisebb áll utána.

- $3\,1\,4\,2\,8\,5\,7\,6$: $3 \to 2$ ($1, 2$), $4 \to 1$, $8 \to 3$ ($5, 7, 6$), $7 \to 1$. **Összesen 7 inverzió** (páratlan).
- $8\,2\,4\,6\,1\,3\,5\,7$: $8 \to 7$, $2 \to 1$, $4 \to 2$, $6 \to 3$. **Összesen 13 inverzió** (páratlan).
- $\begin{pmatrix} a&b&c&d&e \\ b&e&a&c&d \end{pmatrix}$, az $a < b < c < d < e$ sorrenddel ez $2\,5\,1\,3\,4$: $2 \to 1$, $5 \to 3$. **Összesen 4 inverzió** (páros).
- **„Hátulról előre"** ($n, n-1, \dots, 1$): bármely két elem inverzióban áll, így **$\binom n2 = \frac{n(n-1)}{2}$ inverzió**. 8 elemre $28$, 5 elemre $10$.

::: elmelet
**Elméleti háttér — inverziók és a permutáció paritása.** Egy $(i, j)$ pár **inverzió**, ha $i < j$, de $\sigma(i) > \sigma(j)$. A permutáció **előjele** $(-1)^{\text{inverziók száma}}$. Gyors számolás: minden elemhez megszámoljuk, hány nála kisebb áll tőle jobbra. A fordított sorrendben minden pár inverzió: $\binom n2$.
:::

## 9. feladat

Hány inverzió lehet maximum egy 6 elemű halmaz egy páros permutációjában?

**Megoldás.**

6 elemű permutációban legfeljebb $\binom62 = 15$ inverzió lehet, és ez csak a „hátulról előre" permutációban teljesül. A 15 viszont páratlan. 14 inverzió elérhető: $6\,5\,4\,3\,1\,2$ (a két utolsó elem cseréje egy inverziót megszüntet). **A maximum 14.**

::: elmelet
**Elméleti háttér — paritás és szomszédos csere.** Két szomszédos elem cseréje pontosan eggyel változtatja az inverziók számát, tehát a paritást is. A maximális ($\binom n2$ inverziójú) permutációból egy szomszédos csere a paritást megfordítja — ha a maximum rossz paritású, egy cserével megkapjuk a legnagyobb jó paritásút.
:::

## 10. feladat

Adjuk meg a 9. feladatban szereplő és az alábbi permutációk diszjunkt ciklusfelbontását és előjelét:
$$(135)(24)(531)(14), \qquad (1357246)(357)(1357246)^{-1}, \qquad [(12)(13)(14)]^{2026}.$$

**Megoldás.**

A feladatlap a „9. feladatban szereplő" permutációkat említi. Ilyenek csak a 8. feladatban vannak, nyilván azokra gondol.

**A 8. feladat permutációi:**

- $3\,1\,4\,2\,8\,5\,7\,6$: $1 \to 3 \to 4 \to 2 \to 1$, $5 \to 8 \to 6 \to 5$, $7$ fix. Ciklusfelbontás **$(1342)(586)$**. Előjel: a 4-ciklus páratlan, a 3-ciklus páros, tehát **páratlan ($-1$)**; ez egyezik a 7 inverzióval.
- $8\,2\,4\,6\,1\,3\,5\,7$: $1 \to 8 \to 7 \to 5 \to 1$, $3 \to 4 \to 6 \to 3$, $2$ fix. Ciklusfelbontás **$(1875)(346)$**, **páratlan**; 13 inverzió.
- $a \to b \to e \to d \to c \to a$: **$(abedc)$**, 5-ciklus, **páros**; 4 inverzió.

(Egy $k$ hosszú ciklus előjele $(-1)^{k-1}$.)

**A szorzatok.** Jobbról balra komponálunk: a jobb szélső ciklust alkalmazzuk először.

- $(135)(24)(531)(14)$: $1 \xrightarrow{(14)} 4 \xrightarrow{(24)} 2$, $2 \xrightarrow{(24)} 4 \xrightarrow{(135)} 4$, $4 \xrightarrow{(14)} 1 \xrightarrow{(531)} 5 \xrightarrow{(135)} 1$. A 3 és az 5 fix. Eredmény **$(124)$**, **páros**. (Balról jobbra komponálva az inverzét, $(142)$-t kapjuk; az előjel ugyanaz.)
- $(1357246)(357)(1357246)^{-1}$: konjugálás. $\tau\,(357)\,\tau^{-1} = (\tau(3)\ \tau(5)\ \tau(7))$, ahol $\tau = (1357246)$, és $\tau(3) = 5$, $\tau(5) = 7$, $\tau(7) = 2$. Eredmény **$(572) = (257)$**, 3-ciklus, **páros**. (Balról jobbra komponálva $(135)$ jön ki; az előjel ugyanaz.)
- $[(12)(13)(14)]^{2026}$: $(12)(13)(14) = (1432)$, mert $1 \to 4$, $4 \to 3$, $3 \to 2$, $2 \to 1$. Ez 4-ciklus, rendje 4. $2026 = 4 \cdot 506 + 2$, így az eredmény $(1432)^2 =$ **$(13)(24)$**, **páros**. (Balról jobbra komponálva $(1234)$ a szorzat, a négyzete ugyanúgy $(13)(24)$.)

::: elmelet
**Elméleti háttér — ciklusfelbontás, kompozíció, konjugálás.** Minden permutáció egyértelműen felbomlik diszjunkt ciklusok szorzatára (elemeket követve a $\sigma$ szerint, amíg vissza nem érünk). Egy $k$ hosszú ciklus előjele $(-1)^{k-1}$ (ennyi transzpozíció szorzata), az előjel multiplikatív. A kompozíciót a konvenció szerint **jobbról balra** számoljuk. **Konjugálás:** $\tau(a_1 \dots a_k)\tau^{-1} = (\tau(a_1) \dots \tau(a_k))$ — csak „átnevezi” az elemeket, a ciklustípus (és így az előjel) megmarad. Hatványozásnál a ciklus rendjével (hosszával) redukáljuk a kitevőt.
:::

## 11. feladat

Igazoljuk, hogy $(x_1 \dots x_k) = (x_1 x_2)(x_2 x_3) \dots (x_{k-2} x_{k-1})(x_{k-1} x_k)$.

**Megoldás.**

Jobbról balra komponálunk (a jobb szélső transzpozíciót alkalmazzuk először), és megnézzük, hová viszi a jobb oldal az egyes elemeket. Jelölje $\tau_j = (x_j x_{j+1})$, így a jobb oldal $\tau_1 \tau_2 \cdots \tau_{k-1}$, és először $\tau_{k-1}$ hat.

- **$x_i$, ahol $1 \le i \le k - 1$:** a $\tau_{k-1}, \dots, \tau_{i+1}$ transzpozíciók csak az $x_{i+1}, \dots, x_k$ elemeket mozgatják, így $x_i$-t helyben hagyják. Ezután $\tau_i$ az $x_i$-t $x_{i+1}$-be viszi. A még hátralevő $\tau_{i-1}, \dots, \tau_1$ csak az $x_1, \dots, x_i$ elemeket mozgatják, $x_{i+1}$-et nem. Tehát $x_i \mapsto x_{i+1}$.
- **$x_k$:** $\tau_{k-1}$ az $x_k$-t $x_{k-1}$-be viszi, $\tau_{k-2}$ ezt $x_{k-2}$-be, …, végül $\tau_1$ az $x_2$-t $x_1$-be. Tehát $x_k \mapsto x_1$.
- **Minden más elemet** egyik transzpozíció sem mozdít el, ezek fixek.

Ez pontosan az $x_1 \mapsto x_2 \mapsto \dots \mapsto x_k \mapsto x_1$ ciklus, azaz $(x_1 \dots x_k)$. $\blacksquare$

*Indukcióval is megy:* $k = 2$-re az állítás triviális, és az előzőhöz hasonló követéssel $(x_1 \dots x_{k-1})(x_{k-1} x_k) = (x_1 \dots x_k)$: az $x_{k-1}$ előbb $x_k$-ba megy, amit a $(k-1)$-ciklus fixen hagy; az $x_k$ előbb $x_{k-1}$-be, majd $x_1$-be; a többi $x_i$ pedig $x_{i+1}$-be.

**Következmény.** Egy $k$ hosszú ciklus $k - 1$ transzpozíció szorzata, ezért az előjele $(-1)^{k-1}$. (Balról jobbra komponálva a szorzat a fordított ciklust, $(x_k \dots x_1)$-et adná; ekkor a transzpozíciókat fordított sorrendben kell felírni. Az előjel mindkét konvencióban ugyanaz.)

::: elmelet
**Elméleti háttér — ciklus felbontása transzpozíciókra.** Permutációk szorzatánál egy elem útját követjük a tényezőkön keresztül, a konvenció szerint **jobbról balra** (mint függvénykompozíciónál, $(\sigma\tau)(x) = \sigma(\tau(x))$). Egy $k$-ciklus $k - 1$ szomszédos transzpozícióra bomlik, és mivel minden permutáció diszjunkt ciklusok szorzata, **minden permutáció transzpozíciók szorzata**. A felbontás nem egyértelmű, de a transzpozíciók számának paritása igen; ez adja az előjelet: $\operatorname{sgn}(x_1 \dots x_k) = (-1)^{k-1}$.
:::

## 12. feladat

Mutassuk meg, hogy $f \circ (x_1 \dots x_k) \circ f^{-1} = (f(x_1) \dots f(x_k))$ (itt $f \in S_n$ és $(x_1 \dots x_k)$ egy tetszőleges ciklus $S_n$-ben).

**Megoldás.**

Legyen $\sigma = (x_1 \dots x_k)$, és az indexeket modulo $k$ értjük ($x_{k+1} = x_1$). Mivel $f$ bijekció, az $f(x_1), \dots, f(x_k)$ elemek különbözők, így a jobb oldal valódi $k$-ciklus. Megmutatjuk, hogy a két oldal minden $y \in \{1, \dots, n\}$ elemen ugyanazt adja.

- **Ha $y = f(x_i)$ valamely $i$-re:** $f^{-1}(y) = x_i$, $\sigma(x_i) = x_{i+1}$, tehát
$$(f \circ \sigma \circ f^{-1})(y) = f(x_{i+1}).$$
  A jobb oldal is $f(x_i)$-t $f(x_{i+1})$-be viszi.
- **Ha $y \notin \{f(x_1), \dots, f(x_k)\}$:** akkor $f^{-1}(y) \notin \{x_1, \dots, x_k\}$, ezért $\sigma$ fixen hagyja, és
$$(f \circ \sigma \circ f^{-1})(y) = f(f^{-1}(y)) = y.$$
  A jobb oldal $y$-t szintén fixen hagyja, hiszen nem szerepel a ciklusban.

Tehát $f \circ (x_1 \dots x_k) \circ f^{-1} = (f(x_1) \dots f(x_k))$. $\blacksquare$

**Következmény.** Ha $\pi = c_1 c_2 \cdots c_r$ diszjunkt ciklusok szorzata, akkor
$$f \pi f^{-1} = (f c_1 f^{-1})(f c_2 f^{-1}) \cdots (f c_r f^{-1}),$$
mert a közbülső $f^{-1} f$ tényezők kiesnek. A jobb oldali ciklusok is diszjunktak, mert $f$ injektív. A konjugálás tehát a ciklusok elemeit „átnevezi” $f$ szerint, a **ciklustípust megőrzi**, így az előjelet is. (Ezt használtuk a 10. feladat második szorzatánál.)

::: elmelet
**Elméleti háttér — konjugálás $S_n$-ben.** Az $f \sigma f^{-1}$ permutáció ugyanazt csinálja az $f(x)$ elemekkel, amit $\sigma$ az $x$ elemekkel: „$f$-fel átcímkézzük” a pontokat, alkalmazzuk $\sigma$-t, majd visszacímkézünk. Ezért konjugált permutációk ciklustípusa (a ciklushosszak multihalmaza) azonos, és meg is fordítható: két azonos ciklustípusú permutáció mindig konjugált. Az előjel konjugálásra invariáns, hiszen $\operatorname{sgn}(f\sigma f^{-1}) = \operatorname{sgn} f \cdot \operatorname{sgn} \sigma \cdot \operatorname{sgn} f^{-1} = \operatorname{sgn} \sigma$.
:::

## 13. feladat

Adott a $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 4 & 1 & 3 \end{pmatrix}$ permutáció. Írjuk fel a hozzá tartozó $P_\pi$ permutációs mátrixot (amelynek az $i$-edik sorában a $\pi(i)$-edik oszlopban áll 1-es, máshol 0), majd számítsuk ki a determinánsát. Hogyan kapcsolódik a kapott determináns a permutáció inverziószámához?

**Megoldás.**

$\pi(1) = 2$, $\pi(2) = 4$, $\pi(3) = 1$, $\pi(4) = 3$, tehát
$$P_\pi = \begin{pmatrix} 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \end{pmatrix}.$$
(Ez éppen az 1. feladat (e) részének mátrixa.)

**A determináns: $\det P_\pi = -1$.**

- *A permutációs definícióval:* $\det A = \sum_{\sigma \in S_4} \operatorname{sgn}\sigma \cdot a_{1\sigma(1)} a_{2\sigma(2)} a_{3\sigma(3)} a_{4\sigma(4)}$. A $P_\pi$ mátrixban $a_{i\sigma(i)} = 1$ pontosan akkor, ha $\sigma(i) = \pi(i)$, különben $0$. Így egyetlen nem nulla tag van, a $\sigma = \pi$-hez tartozó, és értéke $\operatorname{sgn}\pi \cdot 1$.
- *Az inverziók:* a $2\,4\,1\,3$ sorban az inverziók $(2, 1)$, $(4, 1)$ és $(4, 3)$, tehát $I(\pi) = 3$, és $\operatorname{sgn}\pi = (-1)^3 = -1$.
- *Ellenőrzés sorcserékkel:* $S_1 \leftrightarrow S_3$, $S_2 \leftrightarrow S_3$, $S_3 \leftrightarrow S_4$ után egységmátrixot kapunk. Ez 3 csere, tehát $\det P_\pi = (-1)^3 \det I = -1$.
- *Ciklusfelbontással:* $\pi = (1243)$, ami 4-ciklus, tehát páratlan.

**A kapcsolat.** Tetszőleges $\pi \in S_n$-re ugyanígy
$$\det P_\pi = \operatorname{sgn}\pi = (-1)^{I(\pi)},$$
ahol $I(\pi)$ az inverziók száma: a determináns $1$, ha $\pi$ páros, és $-1$, ha páratlan.

::: elmelet
**Elméleti háttér — permutációs mátrixok.** A $P_\pi$ mátrix minden sorában és oszlopában pontosan egy $1$-es áll. A determináns permutációs (Leibniz-) definíciójában $\det A = \sum_\sigma \operatorname{sgn}\sigma \prod_i a_{i\sigma(i)}$ minden tag egy „bástyaelhelyezésnek” felel meg (soronként és oszloponként egy elem). $P_\pi$-nél ezek közül egyetlen helyen áll csupa $1$-es, a $\pi$-hez tartozón, így $\det P_\pi = \operatorname{sgn}\pi = (-1)^{I(\pi)}$. Ezért a determináns definíciójában szereplő előjel éppen az inverziószám paritása.
:::
