# Algebra és számelmélet – 8. feladatsor – megoldások

Jelölések: az $A$ mátrix $a_{ij}$ eleméhez tartozó **aldetermináns** $M_{ij}$ (az $i$-edik sor és a $j$-edik oszlop elhagyásával kapott $(n-1) \times (n-1)$-es determináns), az **előjeles aldetermináns** $A^*_{ij} = (-1)^{i+j}M_{ij}$. Az egységmátrix $I$ (a Tankönyvben $E$).

## 1. feladat

Az $((a_{ij}))$ négyszer négyes mátrix determinánsának kiszámításakor mi lesz az alábbi tagok előjele: $a_{14}a_{23}a_{32}a_{41}$, $a_{12}a_{21}a_{34}a_{43}$, $a_{23}a_{41}a_{12}a_{34}$?

**Megoldás.**

Minden tagnál a tényezőket a **sorindex szerint** növekvő sorrendbe rendezzük; ekkor az oszlopindexek egy $\pi \in S_4$ permutációt adnak, és a tag előjele $\operatorname{sgn}\pi = (-1)^{I(\pi)}$, ahol $I(\pi)$ az inverziók száma.

- $a_{14}a_{23}a_{32}a_{41}$: a sorindexek már rendezettek, az oszlopindexek $4\,3\,2\,1$. Ez a „hátulról előre” permutáció, minden pár inverzió: $I = \binom42 = 6$. Az előjel **$+$**.
- $a_{12}a_{21}a_{34}a_{43}$: oszlopindexek $2\,1\,4\,3$; inverziók $(2,1)$ és $(4,3)$, $I = 2$. Az előjel **$+$**.
- $a_{23}a_{41}a_{12}a_{34}$: sorindex szerint rendezve $a_{12}a_{23}a_{34}a_{41}$, az oszlopindexek $2\,3\,4\,1$. Inverziók: $(2,1)$, $(3,1)$, $(4,1)$, $I = 3$. Az előjel **$-$**.

(Ellenőrzés ciklusokkal: $4321 = (14)(23)$, két csere, páros; $2143 = (12)(34)$, páros; $2341 = (1234)$, $4$-ciklus, páratlan.)

::: elmelet
**Elméleti háttér — a determináns Leibniz-féle definíciója.** Egy $n \times n$-es mátrix determinánsa
$$\det A = \sum_{\pi \in S_n} \operatorname{sgn}(\pi)\, a_{1\pi(1)}a_{2\pi(2)}\cdots a_{n\pi(n)}.$$
Minden tag soronként és oszloponként pontosan egy elemet tartalmaz („bástyaelhelyezés”), és $n!$ tag van. Egy szorzat tehát pontosan akkor tagja a determinánsnak, ha a sorindexek is, az oszlopindexek is az $1, \dots, n$ számok egy-egy permutációját adják. Az előjel a $\pi$ permutáció paritása: $\operatorname{sgn}\pi = (-1)^{I(\pi)}$. Ha a tényezőket nem sorindex szerint írtuk fel, előbb rendezzük őket (a szorzás kommutatív, a tag értéke nem változik). Ugyanezt kapjuk, ha a sor- és az oszlopindexek permutációjának előjelét szorozzuk össze, ezért a determináns oszlopok szerint rendezve is ugyanaz ($\det A^T = \det A$).
:::

## 2. feladat

Az $5 \times 5$-ös $((a_{ij}))$ determináns harmadik és ötödik oszlopa egyenlő. Az $a_{15}a_{21}a_{33}a_{44}a_{52}$ tagot melyik tag ejti ki biztosan?

**Megoldás.**

**Az $a_{13}a_{21}a_{35}a_{44}a_{52}$ tag** (amely a determinánsban negatív előjellel szerepel).

A tag oszlopindexei $\pi = 5\,1\,3\,4\,2$. Cseréljük fel benne a $3$-as és az $5$-ös oszlopindexet: $\pi' = 3\,1\,5\,4\,2$, ami az $a_{13}a_{21}a_{35}a_{44}a_{52}$ tagot adja.

- *Az értékük egyenlő.* Mivel a 3. és az 5. oszlop egyenlő, minden sorban $a_{i3} = a_{i5}$; így $a_{13} = a_{15}$ és $a_{35} = a_{33}$, tehát
$$a_{13}a_{21}a_{35}a_{44}a_{52} = a_{15}a_{21}a_{33}a_{44}a_{52}.$$
- *Az előjelük ellentétes.* $\pi' = (3\,5) \circ \pi$, egy csere megfordítja a paritást. Konkrétan: $\pi = 51342$ inverziói $(5,1), (5,3), (5,4), (5,2), (3,2), (4,2)$, $I(\pi) = 6$, előjel $+$; $\pi' = 31542$ inverziói $(3,1), (3,2), (5,4), (5,2), (4,2)$, $I(\pi') = 5$, előjel $-$.

A determinánsban tehát $+a_{15}a_{21}a_{33}a_{44}a_{52} - a_{13}a_{21}a_{35}a_{44}a_{52} = 0$: a két tag kiejti egymást, akármilyenek is a mátrix elemei.

::: elmelet
**Elméleti háttér — miért $0$ a determináns, ha két oszlop egyenlő?** Ez az előző gondolatmenet általánosítása. Ha a $k$-adik és az $\ell$-edik oszlop egyenlő, akkor a $\tau = (k\ \ell)$ cserével a $\pi \mapsto \tau \circ \pi$ megfeleltetés párba állítja az $S_n$ elemeit (kétszer alkalmazva visszaadja $\pi$-t, és fixpontja nincs, mert $\tau\pi \ne \pi$). Egy párban a két tag értéke egyenlő (a két oszlop elemei megegyeznek), előjele ellentétes ($\operatorname{sgn}(\tau\pi) = -\operatorname{sgn}\pi$), így a tagok páronként kiejtik egymást, és $\det A = 0$. Ugyanez sorokra is igaz. Ebből következik, hogy sor többszörösének hozzáadása egy másik sorhoz nem változtat a determinánson: a linearitás miatt a változás egy olyan determináns többszöröse, amelynek két sora egyenlő.
:::

## 3. feladat

Egy $n \times n$-es $A$ mátrix determinánsa 5. Mennyi lesz annak a mátrixnak a determinánsa, amelyet úgy kapunk, hogy az $A$ mátrix első két sorát felcseréljük, majd egy harmadik sorát megszorozzuk 3-mal?

**Megoldás.**

**$-15$.** A két sor cseréje előjelet vált: $5 \to -5$. Egy sor $3$-mal való szorzása a determinánst $3$-szorosára változtatja: $-5 \to -15$. (Mindegy, melyik sort szorozzuk $3$-mal; a feladat $n \ge 3$-at feltételez.)

::: elmelet
**Elméleti háttér — elemi sorműveletek hatása a determinánsra.**

| sorművelet | a determináns |
|:--|:--|
| két sor cseréje | $(-1)$-szeresére változik |
| egy sor szorzása $c$-vel | $c$-szeresére változik |
| egy sor többszörösének hozzáadása egy másik sorhoz | nem változik |

Az első a Leibniz-definícióból jön (a csere minden permutáció paritását megfordítja), a második abból, hogy minden tag pontosan egy elemet tartalmaz az adott sorból (a determináns soronként lineáris), a harmadik az előző feladat elméleti hátteréből. Ugyanezek oszlopokra is érvényesek, mert $\det A^T = \det A$.
:::

## 4. feladat

Legyenek $A$ és $B$ olyan $4 \times 4$-es mátrixok, amelyekre $\det A = 2$ és $\det B = 3$. Számítsuk ki az $A^T B^{-1} A^2$ mátrix determinánsát.

**Megoldás.**

**$\frac{8}{3}$.** A szorzástétel, $\det A^T = \det A$ és $\det B^{-1} = \frac{1}{\det B}$ szerint
$$\det(A^T B^{-1} A^2) = \det A^T \cdot \det B^{-1} \cdot (\det A)^2 = 2 \cdot \frac13 \cdot 4 = \frac83.$$
(A $B^{-1}$ létezik, mert $\det B = 3 \ne 0$.)

::: elmelet
**Elméleti háttér — a determinánsok szorzástétele és következményei.** Bármely két $n \times n$-es mátrixra $\det(AB) = \det A \cdot \det B$. Következmények:

- $\det(A^k) = (\det A)^k$ minden $k \ge 0$ egészre;
- ha $A$ invertálható, akkor $AA^{-1} = I$ miatt $\det A \cdot \det A^{-1} = \det I = 1$, tehát $\det A \ne 0$ és $\det(A^{-1}) = \frac{1}{\det A}$ (így $\det(A^{-k}) = (\det A)^{-k}$ is);
- $\det(A^T) = \det A$ (ez nem a szorzástételből, hanem a Leibniz-definícióból következik).

A mátrixszorzás nem kommutatív, a determinánsok szorzata viszont igen: $\det(AB) = \det(BA)$ akkor is, ha $AB \ne BA$.
:::

## 5. feladat

Legyenek $A, B, C$ olyan $n \times n$-es mátrixok, melyekre $\det A = 5$, $\det B = 2$, $\det C = 4$. Mennyi lesz az $A^2 B^3 C^{-1} A^{-2}$ mátrix determinánsa?

**Megoldás.**

**$2$.** A szorzástétel szerint
$$\det(A^2B^3C^{-1}A^{-2}) = 5^2 \cdot 2^3 \cdot \frac14 \cdot \frac{1}{5^2} = \frac{8}{4} = 2.$$
Bár a mátrixok nem feltétlenül felcserélhetők (tehát $A^2$ és $A^{-2}$ a szorzatban nem ejtik ki egymást), a determinánsok számok, ezek szorzatában már igen.

::: elmelet
**Elméleti háttér — miért nem egyszerűsíthetünk a mátrixszorzatban?** Az $A^2B^3C^{-1}A^{-2}$ szorzatban $A^2$ és $A^{-2}$ nem áll egymás mellett, és mivel a mátrixszorzás nem kommutatív, általában $A^2B^3C^{-1}A^{-2} \ne B^3C^{-1}$. A determináns azonban egy **multiplikatív** függvény a mátrixokról a számokra ($\det(XY) = \det X\det Y$), és a számok szorzása kommutatív — ezért a determinánsok szintjén a tényezők sorrendje közömbös. (A mátrix ugyanakkor *hasonló* a $B^3C^{-1}$ mátrixhoz: $A^2(B^3C^{-1})A^{-2}$, és hasonló mátrixok determinánsa egyenlő.)
:::

## 6. feladat

Számítsuk ki az alábbi determináns értékét úgy, hogy a legalkalmasabb sor vagy oszlop szerint fejtjük ki.
$$\begin{vmatrix} 2 & 0 & -1 & 3 \\ 0 & 0 & 4 & 0 \\ 1 & 5 & -2 & 1 \\ 3 & 0 & 0 & -2 \end{vmatrix}$$

**Megoldás.**

**A determináns értéke $260$.**

A **2. oszlopban** és a **2. sorban** is csak egy nem nulla elem áll. Fejtsük ki a 2. oszlop szerint: egyetlen tag marad, az $a_{32} = 5$ elemé, előjele $(-1)^{3+2} = -1$:
$$\det A = 5 \cdot (-1) \cdot \begin{vmatrix} 2 & -1 & 3 \\ 0 & 4 & 0 \\ 3 & 0 & -2 \end{vmatrix}.$$
A $3 \times 3$-as determinánst a 2. sora szerint fejtjük ki, ahol csak az $4$ nem nulla, előjele $(-1)^{2+2} = +1$:
$$\begin{vmatrix} 2 & -1 & 3 \\ 0 & 4 & 0 \\ 3 & 0 & -2 \end{vmatrix} = 4 \cdot \begin{vmatrix} 2 & 3 \\ 3 & -2 \end{vmatrix} = 4 \cdot (-4 - 9) = -52.$$
Tehát $\det A = -5 \cdot (-52) = 260$.

*Ellenőrzés más sorrendben.* A 2. sor szerint kifejtve: $a_{23} = 4$, előjele $(-1)^{2+3} = -1$, és
$$\det A = -4\begin{vmatrix} 2 & 0 & 3 \\ 1 & 5 & 1 \\ 3 & 0 & -2 \end{vmatrix} = -4 \cdot 5 \cdot \begin{vmatrix} 2 & 3 \\ 3 & -2 \end{vmatrix} = -4 \cdot 5 \cdot (-13) = 260,$$
ahol a $3 \times 3$-ast a középső oszlop szerint fejtettük ki ($a_{22} = 5$, előjel $+$).

::: elmelet
**Elméleti háttér — a kifejtési tétel (Laplace).** Bármely $i$-edik sorra
$$\det A = \sum_{j=1}^{n} a_{ij}A^*_{ij} = \sum_{j=1}^{n} (-1)^{i+j}a_{ij}M_{ij},$$
és ugyanígy bármely oszlop szerint. Az előjelek sakktáblaszerűen váltakoznak, a bal felső sarokban $+$-szal:
$$\begin{pmatrix} + & - & + & - \\ - & + & - & + \\ + & - & + & - \\ - & + & - & + \end{pmatrix}.$$
A kifejtés egy $n \times n$-es determinánst $n$ darab $(n-1) \times (n-1)$-esre vezet vissza, de a nulla elemekhez tartozó tagok kiesnek. Ezért mindig a **legtöbb nullát tartalmazó** sort vagy oszlopot választjuk; ha nincs elég nulla, előbb sorműveletekkel csinálunk.
:::

## 7. feladat

Írjuk fel a
$$A = \begin{pmatrix} 2 & 1 & 4 \\ 0 & 3 & 5 \\ 0 & 0 & 6 \end{pmatrix}$$
mátrix inverzében a második sor harmadik elemét a ferde kifejtési tétel alapján.

**Megoldás.**

**$(A^{-1})_{23} = -\dfrac{5}{18}$.**

A ferde kifejtési tételből kapott képlet szerint $A^{-1} = \frac{1}{\det A}\operatorname{adj}A$, ahol az adjungált $i$-edik sorának $j$-edik eleme az $a_{ji}$-hez tartozó előjeles aldetermináns (az indexek felcserélődnek!):
$$(A^{-1})_{23} = \frac{A^*_{32}}{\det A}.$$

- $\det A = 2 \cdot 3 \cdot 6 = 36$ (felső háromszögmátrix: a főátló szorzata).
- $A^*_{32} = (-1)^{3+2}M_{32}$, ahol $M_{32}$ a 3. sor és a 2. oszlop elhagyásával kapott determináns:
$$M_{32} = \begin{vmatrix} 2 & 4 \\ 0 & 5 \end{vmatrix} = 10, \qquad A^*_{32} = -10.$$

Így $(A^{-1})_{23} = \frac{-10}{36} = -\frac{5}{18}$.

*Ellenőrzés.* Felső háromszögmátrix inverze is felső háromszögmátrix, a főátlóban $\frac12, \frac13, \frac16$-dal. Az $AA^{-1} = I$ egyenlőség 2. sorát a 3. oszloppal szorozva: $3 \cdot x_{23} + 5 \cdot x_{33} = 0$, és $x_{33} = \frac16$, tehát $x_{23} = -\frac{5}{18}$. ✓

::: elmelet
**Elméleti háttér — a ferde kifejtési tétel és az inverz képlete.** Ha egy sor elemeit nem a saját, hanem egy **másik** sor előjeles aldeterminánsaival szorozzuk és összeadjuk, az eredmény $0$:
$$\sum_{j=1}^{n} a_{ij}A^*_{kj} = 0 \qquad (i \ne k).$$
*Miért?* Ez a kifejtési tétel annak a mátrixnak a $k$-adik sora szerint, amelyet $A$-ból úgy kapunk, hogy a $k$-adik sort az $i$-edikkel helyettesítjük; ennek két sora egyenlő, így a determinánsa $0$. A saját sorral szorozva viszont $\det A$ jön ki. A két állítást egyben felírva: $A \cdot \operatorname{adj}A = \det A \cdot I$, ahol $(\operatorname{adj}A)_{ij} = A^*_{ji}$. Ha tehát $\det A \ne 0$, akkor
$$A^{-1} = \frac{1}{\det A}\operatorname{adj}A, \qquad (A^{-1})_{ij} = \frac{A^*_{ji}}{\det A}.$$
Ez a képlet egyetlen elem kiszámítására különösen kényelmes: nem kell az egész inverzet előállítani.
:::

## 8. feladat

Oldjuk meg a Cramer-szabállyal a $2x + y = 3$, $x - y = 0$ egyenletrendszert.

**Megoldás.**

**$x = 1$, $y = 1$.**

Az együtthatómátrix determinánsa
$$D = \begin{vmatrix} 2 & 1 \\ 1 & -1 \end{vmatrix} = -2 - 1 = -3 \ne 0,$$
tehát egyértelmű megoldás van. A $D_x$, illetve $D_y$ determinánst úgy kapjuk, hogy az 1., illetve a 2. oszlopot a jobb oldal $(3, 0)^T$ vektorára cseréljük:
$$D_x = \begin{vmatrix} 3 & 1 \\ 0 & -1 \end{vmatrix} = -3, \qquad D_y = \begin{vmatrix} 2 & 3 \\ 1 & 0 \end{vmatrix} = -3.$$
Így $x = \frac{D_x}{D} = 1$ és $y = \frac{D_y}{D} = 1$. *Ellenőrzés:* $2 + 1 = 3$, $1 - 1 = 0$. ✓

::: elmelet
**Elméleti háttér — a Cramer-szabály.** Ha az $A\mathbf{x} = \mathbf{b}$ egyenletrendszerben $A$ négyzetes és $\det A \ne 0$, akkor a rendszernek egyetlen megoldása van, és
$$x_i = \frac{\det A_i}{\det A},$$
ahol $A_i$ az $A$-ból az $i$-edik oszlop $\mathbf{b}$-re cserélésével kapott mátrix. *Bizonyítás:* $\mathbf{x} = A^{-1}\mathbf{b} = \frac{1}{\det A}\operatorname{adj}A\,\mathbf{b}$, és ennek $i$-edik koordinátája $\frac{1}{\det A}\sum_k A^*_{ki}b_k$, ami éppen $\det A_i$ kifejtése az $i$-edik oszlop szerint. A szabály elméletileg fontos (képletet ad a megoldásra), nagy rendszereknél azonban a Gauss-elimináció sokkal gyorsabb.
:::

## 9. feladat

Legyen $Q$ egy $n \times n$-es ortogonális mátrix (azaz $Q^T Q = I$, ahol $I$ az egységmátrix). Bizonyítsuk be, hogy a $Q$ determinánsa csak $1$ vagy $-1$ lehet.

**Megoldás.**

Vegyük mindkét oldal determinánsát, és használjuk a szorzástételt, valamint a $\det Q^T = \det Q$ azonosságot:
$$1 = \det I = \det(Q^TQ) = \det Q^T \cdot \det Q = (\det Q)^2.$$
Egy valós szám négyzete pontosan akkor $1$, ha a szám $1$ vagy $-1$. $\blacksquare$

Mindkét érték elő is fordul: $\det I = 1$, és a $\begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}$ tükrözés ortogonális, determinánsa $-1$.

::: elmelet
**Elméleti háttér — ortogonális mátrixok.** A $Q^TQ = I$ feltétel azt jelenti, hogy $Q$ oszlopai **ortonormált** rendszert alkotnak (egységhosszúak és páronként merőlegesek), és hogy $Q^{-1} = Q^T$. Az ortogonális mátrixok éppen a távolság- és szögtartó lineáris leképezések (forgatások és tükrözések). A determináns geometriai jelentése az előjeles térfogatváltozás aránya; távolságtartó leképezés nem változtat a térfogaton, ezért $|\det Q| = 1$. A $\det Q = 1$ eset a forgatásoké (irányítástartó), a $\det Q = -1$ a tükrözést is tartalmazóké (irányításváltó).
:::

## 10. feladat

Bizonyítsuk be, hogy ha egy $A$ $n \times n$-es, csupa egész számból álló mátrixnak az inverze is kizárólag egész számokat tartalmaz, akkor $\det A = 1$ vagy $\det A = -1$.

**Megoldás.**

Egész elemű mátrix determinánsa egész szám, hiszen a Leibniz-definíció szerint egész számok szorzatainak $\pm$ előjeles összege. Így $\det A \in \mathbb{Z}$ és $\det A^{-1} \in \mathbb{Z}$. A szorzástétel szerint
$$\det A \cdot \det A^{-1} = \det(AA^{-1}) = \det I = 1.$$
Két egész szám szorzata csak úgy lehet $1$, ha mindkettő $1$ vagy mindkettő $-1$. Tehát $\det A = \pm 1$. $\blacksquare$

*Megjegyzés (a megfordítás).* Ha $A$ egész elemű és $\det A = \pm1$, akkor $A^{-1} = \pm\operatorname{adj}A$, és az adjungált elemei egész elemű aldeterminánsok, tehát egészek. Az egész elemű, egész elemű inverzzel rendelkező mátrixok tehát pontosan a $\pm1$ determinánsú egész mátrixok (ezeket **unimoduláris** mátrixoknak nevezzük).

::: elmelet
**Elméleti háttér — egészség és determináns.** A determináns az elemek egész együtthatós polinomja, ezért egész elemű mátrixé egész. A „két egész szorzata $1$” típusú érvelés az egészek egységeinek ($\pm 1$) meghatározásán alapul: $\mathbb{Z}$-ben csak $1$-nek és $-1$-nek van multiplikatív inverze. Ugyanez a gondolat polinomokra: ha egy polinom-mátrixnak polinom-mátrix az inverze, akkor a determinánsa nem nulla konstans.
:::

## 11. feladat

Legyen $A$ egy $n \times n$-es komplex elemű mátrix, amelyre igaz, hogy $A = -\overline{A}^T$. Mutassuk meg, hogy páratlan $n$ esetén a determináns értéke tisztán képzetes szám vagy nulla.

**Megoldás.**

Számítsuk ki a jobb oldal determinánsát három tulajdonság segítségével:

1. $\det(-M) = (-1)^n\det M$ (mind az $n$ sorból kiemelünk $(-1)$-et);
2. $\det(M^T) = \det M$;
3. $\det(\overline{M}) = \overline{\det M}$, mert a Leibniz-definícióban az elemek szorzatainak összege áll valós ($\pm1$) együtthatókkal, és a konjugálás felcserélhető az összeadással és a szorzással.

Így
$$\det A = \det\big(-\overline{A}^T\big) = (-1)^n\det\big(\overline{A}^T\big) = (-1)^n\det\overline{A} = (-1)^n\,\overline{\det A}.$$
Páratlan $n$-re ez $\det A = -\overline{\det A}$. Ha $\det A = u + vi$ ($u, v \in \mathbb{R}$), akkor $u + vi = -u + vi$, azaz $u = 0$: **a determináns tisztán képzetes vagy nulla**. $\blacksquare$

*Példa.* $n = 1$-re $A = (a)$, és a feltétel $a = -\overline{a}$, vagyis $a$ tisztán képzetes. $n = 3$-ra $A = iI$ teljesíti a feltételt ($-\overline{iI}^T = -(-i)I = iI$), és $\det A = i^3 = -i$.

::: elmelet
**Elméleti háttér — ferdén Hermite-féle mátrixok.** Az $A^* = \overline{A}^T$ az $A$ **adjungáltja** (transzponált konjugáltja). Ha $A^* = A$, a mátrix **Hermite-féle** (önadjungált), ha $A^* = -A$, **ferdén Hermite-féle**. Az előbbi determinánsa mindig valós ($\det A = \overline{\det A}$), az utóbbié páros $n$-re valós, páratlan $n$-re tisztán képzetes. Valós mátrixoknál ez a szimmetrikus, illetve ferdén szimmetrikus ($A^T = -A$) mátrixoknak felel meg, és ugyanez az érvelés azt adja, hogy **páratlan méretű valós ferdén szimmetrikus mátrix determinánsa $0$** (hiszen valós és tisztán képzetes egyszerre).
:::

## 12. feladat

Egy $n \times n$-es determináns kiszámításakor a mátrix minden sorát megfordítjuk. Hogyan változik meg a determináns értéke?

**Megoldás.**

**A determináns $(-1)^{n(n-1)/2}$-szeresére változik**: $n \equiv 0, 1 \pmod 4$ esetén nem változik, $n \equiv 2, 3 \pmod 4$ esetén előjelet vált.

Ha minden sort megfordítunk, az új mátrix $j$-edik oszlopa a régi $(n + 1 - j)$-edik oszlopa: vagyis az oszlopokat a $\rho = \begin{pmatrix} 1 & 2 & \dots & n \\ n & n-1 & \dots & 1 \end{pmatrix}$ permutáció szerint rendeztük át. Ezt az átrendezést szomszédos oszlopcserékkel így érhetjük el: az utolsó oszlopot $n - 1$ cserével előre visszük, majd az (új) utolsót $n - 2$ cserével a második helyre, és így tovább. Összesen
$$(n-1) + (n-2) + \dots + 1 + 0 = \frac{n(n-1)}{2}$$
csere kell, és mindegyik előjelet vált. (Másképp: $\rho$ minden párt megfordít, így $I(\rho) = \binom n2$.)

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $\binom n2$ | 0 | 1 | 3 | 6 | 10 | 15 | 21 | 28 |
| a determináns | marad | $-$ | $-$ | marad | marad | $-$ | $-$ | marad |

Például $n = 2$-re $\begin{vmatrix} b & a \\ d & c \end{vmatrix} = bc - ad = -\begin{vmatrix} a & b \\ c & d \end{vmatrix}$.

::: elmelet
**Elméleti háttér — oszlopok permutálása.** Ha egy mátrix oszlopait a $\sigma$ permutáció szerint rendezzük át, a determináns $\operatorname{sgn}\sigma$-szorosára változik. Ez abból következik, hogy minden permutáció transzpozíciók (sőt szomszédos transzpozíciók) szorzata, és egy csere előjelet vált; a cserék számának paritása pedig egyértelmű ($\operatorname{sgn}\sigma$). A „hátulról előre” permutáció $\binom{n}{2}$ inverziót tartalmaz, előjele $(-1)^{n(n-1)/2}$, ami $n$ szerint $4$-es periódussal $+, -, -, +$.
:::

## 13. feladat (házi feladat)

Bizonyítsuk be a kifejtési tétel segítségével, hogy az alábbi $n \times n$-es úgynevezett tridiagonális determináns értéke éppen $F_{n+1}$, az $(n+1)$-edik Fibonacci-szám.
$$D_n = \begin{vmatrix} 1 & 1 & 0 & \dots & 0 \\ -1 & 1 & 1 & \dots & 0 \\ 0 & -1 & 1 & \dots & 0 \\ \vdots & \vdots & \vdots & \ddots & 1 \\ 0 & 0 & 0 & -1 & 1 \end{vmatrix}$$

**Megoldás.**

(A Fibonacci-számok: $F_1 = F_2 = 1$, $F_{k} = F_{k-1} + F_{k-2}$.) A főátlóban $1$-esek, felette $1$-esek, alatta $-1$-esek állnak, máshol $0$.

**Kezdőértékek.** $D_1 = |1| = 1 = F_2$ és $D_2 = \begin{vmatrix} 1 & 1 \\ -1 & 1 \end{vmatrix} = 1 + 1 = 2 = F_3$.

**Rekurzió ($n \ge 3$).** Fejtsük ki $D_n$-et az **első sor** szerint. Csak az első két elem nem nulla:
$$D_n = 1 \cdot (-1)^{1+1}M_{11} + 1 \cdot (-1)^{1+2}M_{12} = M_{11} - M_{12}.$$

- $M_{11}$: az első sort és oszlopot elhagyva ugyanilyen szerkezetű, $(n-1) \times (n-1)$-es determinánst kapunk, tehát $M_{11} = D_{n-1}$.
- $M_{12}$: az első sort és a második oszlopot elhagyva a megmaradt mátrix első oszlopa (az eredeti első oszlop alsó része) $(-1, 0, \dots, 0)^T$, a jobb alsó $(n-2) \times (n-2)$-es blokk pedig ismét $D_{n-2}$ szerkezetű:
$$M_{12} = \begin{vmatrix} -1 & 1 & 0 & \dots & 0 \\ 0 & 1 & 1 & \dots & 0 \\ 0 & -1 & 1 & \dots & 0 \\ \vdots & \vdots & & \ddots & \vdots \\ 0 & 0 & \dots & -1 & 1 \end{vmatrix}.$$
  Ezt az első oszlop szerint kifejtve: $M_{12} = (-1) \cdot D_{n-2}$.

Így
$$D_n = D_{n-1} - (-D_{n-2}) = D_{n-1} + D_{n-2}.$$

**Indukció.** $D_n$ és $F_{n+1}$ ugyanazt a rekurziót elégíti ki ($F_{n+1} = F_n + F_{n-1}$), és $D_1 = F_2$, $D_2 = F_3$. Erős teljes indukcióval: ha $D_{n-1} = F_n$ és $D_{n-2} = F_{n-1}$, akkor $D_n = F_n + F_{n-1} = F_{n+1}$. Tehát $D_n = F_{n+1}$ minden $n \ge 1$-re. $\blacksquare$

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $D_n$ | 1 | 2 | 3 | 5 | 8 | 13 |

::: elmelet
**Elméleti háttér — tridiagonális determinánsok rekurziója.** Ha egy tridiagonális mátrix főátlójában $a_1, \dots, a_n$, felette $b_1, \dots, b_{n-1}$, alatta $c_1, \dots, c_{n-1}$ áll, akkor az első sor szerinti kifejtés (majd a második tagban az első oszlop szerinti kifejtés) a
$$D_n = a_1 D'_{n-1} - b_1c_1 D''_{n-2}$$
rekurziót adja, ahol $D'$, $D''$ a jobb alsó sarokból kivágott kisebb tridiagonális determinánsok. Állandó átlók esetén ($a_i = a$, $b_ic_i = bc$) ez egy **másodrendű lineáris rekurzió**: $D_n = aD_{n-1} - bc\,D_{n-2}$. Itt $a = 1$, $bc = 1 \cdot (-1) = -1$, így $D_n = D_{n-1} + D_{n-2}$ — a Fibonacci-rekurzió. (A 7. feladatsor 2. feladatában $a = 3$, $bc = 1$ volt, és $D_n = 3D_{n-1} - D_{n-2}$ adódott.) A megoldás egyértelmű, mert egy másodrendű rekurziót az első két tag meghatároz; ezért elég a kezdőértékek egyezését ellenőrizni.
:::

## Házi feladat: az 1. feladatsor 13. feladatának 4. mátrixa

Legyen
$$A = \begin{pmatrix} 1 & -1 & 1 \\ 0 & 2 & -1 \\ 2 & 1 & 0 \end{pmatrix}.$$

**A determináns a definíció szerint.** A Leibniz-képletben $3! = 6$ tag van. A páros permutációk ($123$, $231$, $312$) tagjai pozitív, a páratlanok ($132$, $213$, $321$) tagjai negatív előjellel szerepelnek:
$$\begin{aligned}
\det A &= a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33} - a_{13}a_{22}a_{31} \\
&= 1 \cdot 2 \cdot 0 + (-1)(-1) \cdot 2 + 1 \cdot 0 \cdot 1 - 1 \cdot (-1) \cdot 1 - (-1) \cdot 0 \cdot 0 - 1 \cdot 2 \cdot 2 \\
&= 0 + 2 + 0 + 1 - 0 - 4 = -1.
\end{aligned}$$
Ez szó szerint a Sarrus-szabály: a három „főátló irányú” szorzat a páros, a három „mellékátló irányú” a páratlan permutációké.

**A determináns kifejtési tétellel** (az első oszlop szerint, ahol egy nulla van):
$$\det A = 1 \cdot \begin{vmatrix} 2 & -1 \\ 1 & 0 \end{vmatrix} - 0 + 2 \cdot \begin{vmatrix} -1 & 1 \\ 2 & -1 \end{vmatrix} = 1 \cdot 1 + 2 \cdot (1 - 2) = -1.$$

**Az inverz a ferde kifejtési tételből** ($A^{-1} = \frac{1}{\det A}\operatorname{adj}A$). Az előjeles aldeterminánsok:
$$\begin{aligned}
A^*_{11} &= +\begin{vmatrix} 2 & -1 \\ 1 & 0 \end{vmatrix} = 1, & A^*_{12} &= -\begin{vmatrix} 0 & -1 \\ 2 & 0 \end{vmatrix} = -2, & A^*_{13} &= +\begin{vmatrix} 0 & 2 \\ 2 & 1 \end{vmatrix} = -4, \\
A^*_{21} &= -\begin{vmatrix} -1 & 1 \\ 1 & 0 \end{vmatrix} = 1, & A^*_{22} &= +\begin{vmatrix} 1 & 1 \\ 2 & 0 \end{vmatrix} = -2, & A^*_{23} &= -\begin{vmatrix} 1 & -1 \\ 2 & 1 \end{vmatrix} = -3, \\
A^*_{31} &= +\begin{vmatrix} -1 & 1 \\ 2 & -1 \end{vmatrix} = -1, & A^*_{32} &= -\begin{vmatrix} 1 & 1 \\ 0 & -1 \end{vmatrix} = 1, & A^*_{33} &= +\begin{vmatrix} 1 & -1 \\ 0 & 2 \end{vmatrix} = 2.
\end{aligned}$$
Az adjungált ezek mátrixának **transzponáltja**, így
$$A^{-1} = \frac{1}{-1}\begin{pmatrix} 1 & 1 & -1 \\ -2 & -2 & 1 \\ -4 & -3 & 2 \end{pmatrix} = \begin{pmatrix} -1 & -1 & 1 \\ 2 & 2 & -1 \\ 4 & 3 & -2 \end{pmatrix}.$$
*Ellenőrzés:* $AA^{-1}$ első sora $(1 \cdot (-1) - 2 + 4,\ -1 - 2 + 3,\ 1 + 1 - 2) = (1, 0, 0)$, második sora $(0 + 4 - 4,\ 0 + 4 - 3,\ 0 - 2 + 2) = (0, 1, 0)$, harmadik sora $(-2 + 2 + 0,\ -2 + 2 + 0,\ 2 - 1 + 0) = (0, 0, 1)$. ✓

::: elmelet
**Elméleti háttér — három út ugyanahhoz a determinánshoz.** A Leibniz-definíció $n!$ tagú összeg; $n = 3$-ra a hat tag éppen a Sarrus-szabály hat szorzata (ezért a Sarrus-szabály $4 \times 4$-esre már nem működik: ott $24$ tag van, nem $8$). A kifejtési tétel ugyanezt a hat tagot csoportosítja: az első oszlop szerinti kifejtésben az $a_{i1}$-et tartalmazó két tag alkotja az $a_{i1}A^*_{i1}$ szorzatot. Az inverz képlete a ferde kifejtési tételen múlik: $A\cdot\operatorname{adj}A = \det A \cdot I$. Gyakorlati számolásra $3 \times 3$-nál nagyobb mátrixokra a Gauss–Jordan-elimináció a gyorsabb, de egy-egy elem (7. feladat) vagy paraméteres mátrix inverzéhez a képlet a jobb.
:::
