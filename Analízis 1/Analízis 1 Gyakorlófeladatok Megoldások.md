# Analízis 1 – Gyakorlófeladatok Megoldások

### I. Mat. BSc Analízis 1 · részletes megoldások és elméleti háttér

Ez a kötet az `Analízis 1 – Gyakorlófeladatok` gyűjtemény mind a 198 feladatának (Gy1.1–Gy110.2) **teljes, lépésről lépésre kidolgozott matematikai megoldását** és **részletes elméleti hátterét** tartalmazza.

Minden feladatnál megismételjük a pontos feladatkitűzést, ezt követi a lépésről lépésre kidolgozott részletes matematikai megoldás, majd a `::: elmelet` ... `:::` blokkban a mély elméleti háttér: definíciók, tételek, bizonyítási vázlatok, típusmódszerek és a tipikus hallgatói buktatók.

Jelölések: $\mathbb{N} = \{1, 2, 3, \dots\}$; $[x]$ az egészrész, $\{x\} = x - [x]$ a törtrész; $D$ a Dirichlet-függvény ($D(x) = 1$, ha $x \in \mathbb{Q}$, különben $0$); $R$ a Riemann-függvény ($R(\frac pq) = \frac1q$ egyszerűsített törtre, $R(0) = 0$, irracionálisra $0$).
# Az 1. feladatlaphoz

## Gy1.1. feladat

Az abszolút érték alaptulajdonságai és a rendezési axiómák alapján lássuk be az alábbi állításokat minden $x, y \in \mathbb{R}$ esetén:

a) $|x - y| \ge |x| - |y|$;

b) $|x - y| = |x| + |y|$ pontosan akkor teljesül, ha $xy \le 0$;

c) ha $|x - 2| < 1$ és $|y - 3| < 2$, akkor mutassuk meg, hogy $|x - y + 1| < 3$ és $|xy| < 15$.

**Megoldás.**

a) A háromszög-egyenlőtlenséget alkalmazzuk az $x = (x - y) + y$ felbontásra:
$$|x| = |(x - y) + y| \le |x - y| + |y|.$$
Mindkét oldalból kivonva $|y|$-t, azonnal adódik a kívánt egyenlőtlenség:
$$|x - y| \ge |x| - |y|.$$
(A szerepeket felcserélve $|y - x| \ge |y| - |x|$, így $-|x - y| \le |x| - |y| \le |x - y|$, ami éppen a fordított háromszög-egyenlőtlenség: $\big||x| - |y|\big| \le |x - y|$.)

b) Mindkét oldal nemnegatív, ezért az egyenlőség ekvivalens a két oldal négyzetének egyenlőségével:
$$|x - y|^2 = (x - y)^2 = x^2 - 2xy + y^2,$$
$$(|x| + |y|)^2 = |x|^2 + 2|x|\,|y| + |y|^2 = x^2 + 2|xy| + y^2.$$
A két kifejezés pontosan akkor egyenlő, ha $-2xy = 2|xy|$, azaz $|xy| = -xy$. Az abszolút érték definíciója szerint egy valós szám abszolút értéke pontosan akkor egyenlő önmaga ellentettjével, ha a szám nempozitív. Így az egyenlőség pontos feltétele: $xy \le 0$. $\blacksquare$

c) Írjuk fel a becsülendő lineáris kombinációt az ismert eltérések összegeként:
$$x - y + 1 = (x - 2) - (y - 3).$$
A háromszög-egyenlőtlenség alapján:
$$|x - y + 1| = |(x - 2) - (y - 3)| \le |x - 2| + |y - 3| < 1 + 2 = 3.$$
A szorzathoz először határozzuk meg $x$ és $y$ korlátait:
$$|x - 2| < 1 \iff -1 < x - 2 < 1 \iff 1 < x < 3 \implies |x| < 3,$$
$$|y - 3| < 2 \iff -2 < y - 3 < 2 \iff 1 < y < 5 \implies |y| < 5.$$
Mivel $|xy| = |x|\,|y|$, és pozitív számok szorzata a felső korlátok szorzatánál kisebb:
$$|xy| < 3 \cdot 5 = 15.$$

::: elmelet
**Elméleti háttér — Háromszög-egyenlőtlenség és becslési technikák.**

- **Abszolút érték alaptulajdonságai:** $|x| = \max\{x, -x\} \ge 0$; $|x| = 0 \iff x = 0$; $|xy| = |x|\,|y|$; $|x|^2 = x^2$.
- **Alapvető ekvivalencia:** Ha $c \ge 0$, akkor $|u| \le c \iff -c \le u \le c$, és $|u| < c \iff -c < u < c$. Ezzel alakítjuk az abszolút értékes relációkat nyílt vagy zárt intervallumokká.
- **Háromszög-egyenlőtlenség:** $|a + b| \le |a| + |b|$, az egyenlőség feltétele $ab \ge 0$. Különbségre: $|a - b| \le |a| + |b|$, egyenlőség pontosan akkor, ha $ab \le 0$.
- **Fordított háromszög-egyenlőtlenség:** $\big||a| - |b|\big| \le |a - b|$.
- **A „hozzáadunk és elveszünk” stratégia:** Analízisbeli egyenlőtlenségek bizonyításakor a célkifejezést (itt $x - y + 1$) kifejezzük az ismert mennyiségek ($x - 2$ és $y - 3$) lineáris kombinációjaként, majd tagonként háromszög-egyenlőtlenséget alkalmazunk.
- **Tipikus hiba:** Negatív számokat tartalmazó egyenlőtlenség négyzetre emelése ekvivalencia nélkül (pl. $-5 < 2$, de $25 > 4$). Négyzetre emelni csak garantáltan nemnegatív oldalak esetén szabad ekvivalens módon!
:::

## Gy1.2. feladat

a) Bizonyítsuk be, hogy tetszőleges $x, y, z \in \mathbb{R}$ esetén
$$|x + y + z| \le |x| + |y| + |z|,$$
és adjuk meg a pontos feltételét annak, hogy mikor áll fenn egyenlőség!

b) Tegyük fel, hogy $|x - 1| < \frac{1}{2}$. Adjunk éles felső becslést $\left|\frac{1}{x} - 1\right|$-re és $|x^2 - 1|$-re!

**Megoldás.**

a) A kétváltozós háromszög-egyenlőtlenséget egymás után kétszer alkalmazzuk:
$$|x + y + z| = |(x + y) + z| \le |x + y| + |z| \le |x| + |y| + |z|.$$
Az egyenlőség feltétele: mindkét becslési lépésben egyenlőségnek kell teljesülnie. Az első lépésben egyenlőség áll fenn $\iff (x + y)z \ge 0$. A második lépésben egyenlőség áll fenn $\iff xy \ge 0$.
Ha $xy \ge 0$, akkor $x$ és $y$ azonos előjelűek (vagy valamelyikük $0$). Ekkor $x + y$ előjele megegyezik $x$ és $y$ közös előjelével. Így $(x + y)z \ge 0$ pontosan azt követeli meg, hogy $z$ előjele is egyezzen meg $x$ és $y$ előjelével (vagy $z = 0$).
Összegezve: egyenlőség pontosan akkor áll fenn, ha $x, y, z$ mind azonos előjelűek (mind $\ge 0$ vagy mind $\le 0$).

b) Az $|x - 1| < \frac{1}{2}$ feltétel ekvivalens azzal, hogy
$$-\frac{1}{2} < x - 1 < \frac{1}{2} \iff \frac{1}{2} < x < \frac{3}{2}.$$
Mivel $x > 0$, ezért $|x| = x > \frac{1}{2}$, amiből a reciprokképzés fordított egyenlőtlensége miatt:
$$\frac{1}{|x|} < \frac{1}{1/2} = 2.$$
Ekkor:
$$\left|\frac{1}{x} - 1\right| = \left|\frac{1 - x}{x}\right| = \frac{|x - 1|}{|x|} < \frac{1/2}{1/2} = 1.$$
A kifejezés supremumja valóban $1$, mert ha $x \to \frac{1}{2}+$, akkor $\frac{1}{x} - 1 \to 2 - 1 = 1$.
A második kifejezéshez szorzattá bontunk:
$$|x^2 - 1| = |x - 1|\,|x + 1|.$$
Tudjuk, hogy $|x - 1| < \frac{1}{2}$. Továbbá $\frac{1}{2} < x < \frac{3}{2}$-ből $x + 1 < \frac{5}{2}$, és mivel $x + 1 > 0$, $|x + 1| < \frac{5}{2}$.
Így a szorzat becslése:
$$|x^2 - 1| < \frac{1}{2} \cdot \frac{5}{2} = \frac{5}{4}.$$
(És ha $x \to \frac{3}{2}-$, akkor $|x^2 - 1| \to \frac{9}{4} - 1 = \frac{5}{4}$, tehát a becslés éles.)

::: elmelet
**Elméleti háttér — Többtagú háromszög-egyenlőtlenség és nevezők becslése.**

- **Általános háromszög-egyenlőtlenség:** Teljes indukcióval tetszőleges $n$-re: $\left|\sum_{i=1}^n x_i\right| \le \sum_{i=1}^n |x_i|$. Egyenlőség pontosan akkor áll fenn, ha az összes nemnulla tag azonos előjelű.
- **Törtek becslésének aranyszabálya:** Tört felső becsléséhez a számlálót FELÜLRŐL, a nevezőt ALULRÓL kell becsülni pozitív konstanssal:
  $$\left|\frac{A}{B}\right| = \frac{|A|}{|B|} \le \frac{M}{m}, \quad \text{ha } |A| \le M \text{ és } |B| \ge m > 0.$$
- **Tipikus hiba:** Ha a nevező előjelet vált, vagy a $0$ a környezetében van, nem szabad vakon reciprokot venni. Mindig garantálni kell, hogy a nevező abszolút értéke egy pozitív számnál nagyobb egyenletesen.
:::

## Gy2.1. feladat

Legyen $a \in \mathbb{Q}$, $a \ne 0$ tetszőleges nemnulla racionális szám, és $c \in \mathbb{R} \setminus \mathbb{Q}$ tetszőleges irracionális szám.

a) Döntsük el, hogy az alábbi számok szükségképpen irracionálisak-e, racionálisak-e, vagy bármelyik előfordulhat:
$$c - a, \qquad \frac{a}{c}, \qquad c^3, \qquad c + \sqrt{2}.$$

b) Bizonyítsuk be indirekt úton, hogy $\sqrt{6} - \sqrt{2}$ irracionális!

**Megoldás.**

a) Vizsgáljuk meg egyenként a kifejezéseket:
- $c - a$: **Szükségképpen irracionális.** Tegyük fel indirekt, hogy $c - a = q \in \mathbb{Q}$. Mivel a racionális számok halmaza zárt az összeadásra, $c = q + a \in \mathbb{Q}$ lenne, ami ellentmond annak, hogy $c$ irracionális.
- $\frac{a}{c}$: **Szükségképpen irracionális.** Mivel $c \ne 0$, a tört értelmes. Tegyük fel, hogy $\frac{a}{c} = q \in \mathbb{Q}$. Mivel $a \ne 0$, $q \ne 0$. A racionális számok testet alkotnak, így $c = \frac{a}{q} \in \mathbb{Q}$ lenne, ami ellentmondás.
- $c^3$: **Bármelyik előfordulhat.** Ha $c = \sqrt[3]{2}$ (ami irracionális), akkor $c^3 = 2 \in \mathbb{Q}$. Ha viszont $c = \sqrt{2}$ (szintén irracionális), akkor $c^3 = 2\sqrt{2} \notin \mathbb{Q}$.
- $c + \sqrt{2}$: **Bármelyik előfordulhat.** Ha $c = -\sqrt{2} \in \mathbb{R} \setminus \mathbb{Q}$, akkor $c + \sqrt{2} = 0 \in \mathbb{Q}$. Ha $c = \sqrt{3}$, akkor $c + \sqrt{2} = \sqrt{3} + \sqrt{2} \notin \mathbb{Q}$.

b) Tegyük fel indirekt, hogy $\sqrt{6} - \sqrt{2} = r \in \mathbb{Q}$. Mivel $\sqrt{6} > \sqrt{2}$, $r > 0$. Emeljük négyzetre mindkét oldalt:
$$(\sqrt{6} - \sqrt{2})^2 = 6 - 2\sqrt{12} + 2 = 8 - 4\sqrt{3} = r^2.$$
Rendezzük $\sqrt{3}$-ra az egyenletet:
$$4\sqrt{3} = 8 - r^2 \implies \sqrt{3} = \frac{8 - r^2}{4}.$$
Mivel $r \in \mathbb{Q}$, a jobb oldal a racionális műveletek zártsága miatt racionális szám. Ez azt jelentené, hogy $\sqrt{3} \in \mathbb{Q}$, ami közismerten ellentmondás (ha $\sqrt{3} = p/q$ egyszerűsített tört, akkor $p^2 = 3q^2$, így $3 \mid p \implies 9 \mid p^2 \implies 3 \mid q$, ami kizárja az egyszerűsítettséget).
Ez az ellentmondás bizonyítja, hogy $\sqrt{6} - \sqrt{2}$ valóban irracionális. $\blacksquare$

::: elmelet
**Elméleti háttér — Racionális és irracionális számok algebrája.**

- **$\mathbb{Q}$ testtulajdonsága:** A racionális számok halmaza zárt az összeadásra, kivonásra, szorzásra és a nemnullával való osztásra. Emiatt ha egy egyenletben egyetlen irracionális szám szerepel racionális együtthatókkal, az izolálható, és ellentmondásra vezet.
- **Műveletek irracionális számokkal:** Két irracionális szám összege, szorzata, hatványa lehet racionális és irracionális is:
  $$(1 - \sqrt{2}) + (1 + \sqrt{2}) = 2 \in \mathbb{Q}, \qquad \sqrt{2} \cdot \sqrt{2} = 2 \in \mathbb{Q}.$$
- **Gyökös kifejezések irracionalitása:** Összegek, különbségek esetén a négyzetre emelés és az irracionális négyzetgyök izolálása a standard módszer.
:::

## Gy2.2. feladat

a) Létezik-e két olyan $x, y \in \mathbb{R} \setminus \mathbb{Q}$ irracionális szám, amelyek összege és szorzata is racionális?

b) Létezhetnek-e olyan $c, d \in \mathbb{R} \setminus \mathbb{Q}$ irracionális számok, amelyekre a $c^d$ hatvány racionális szám?

c) Bizonyítsuk be a számelmélet alaptétele alapján, hogy $\sqrt[3]{5}$ és $\log_3 2$ irracionálisak!

**Megoldás.**

a) **Igen, létezik.** Legyen például:
$$x = 2 + \sqrt{3}, \qquad y = 2 - \sqrt{3}.$$
Mindkettő irracionális (mivel $\sqrt{3} \notin \mathbb{Q}$), ugyanakkor:
$$x + y = (2 + \sqrt{3}) + (2 - \sqrt{3}) = 4 \in \mathbb{Q},$$
$$xy = (2 + \sqrt{3})(2 - \sqrt{3}) = 4 - 3 = 1 \in \mathbb{Q}.$$

b) **Igen, léteznek.**
*1. Klasszikus nemkonstruktív bizonyítás:*
Tekintsük a $\sqrt{2}^{\sqrt{2}}$ számot. Két eset lehetséges:
- Ha $\sqrt{2}^{\sqrt{2}} \in \mathbb{Q}$, akkor a $c = d = \sqrt{2}$ választás megfelelő, hiszen mindkettő irracionális, és a hatvány racionális.
- Ha $\sqrt{2}^{\sqrt{2}} \notin \mathbb{Q}$, akkor válasszuk a $c = \sqrt{2}^{\sqrt{2}}$ irracionális számot és $d = \sqrt{2} \in \mathbb{R} \setminus \mathbb{Q}$ számot. Ekkor:
  $$c^d = \left(\sqrt{2}^{\sqrt{2}}\right)^{\sqrt{2}} = \sqrt{2}^{\sqrt{2} \cdot \sqrt{2}} = \sqrt{2}^2 = 2 \in \mathbb{Q}.$$
Mindkét esetben létezik megfelelő számpár.
*2. Konstruktív példa:* Legyen $c = \sqrt{2} \notin \mathbb{Q}$ és $d = \log_2 9 = 2\log_2 3 \notin \mathbb{Q}$. Ekkor $c^d = (\sqrt{2})^{\log_2 9} = 2^{\frac{1}{2}\log_2 9} = 2^{\log_2 3} = 3 \in \mathbb{Q}$.

c) 1. Tegyük fel, hogy $\sqrt[3]{5} = \frac{p}{q}$, ahol $p, q \in \mathbb{N}$ relatív prímek. Köbre emelve:
$$\frac{p^3}{q^3} = 5 \iff p^3 = 5q^3.$$
A jobb oldal osztható $5$-tel, így a számelmélet alaptétele miatt $5 \mid p^3 \implies 5 \mid p$. Ekkor $p = 5k$ valamely $k \in \mathbb{N}$-re, amiből $p^3 = 125k^3$.
Behelyettesítve: $125k^3 = 5q^3 \implies q^3 = 25k^3$. Mivel a jobb oldal osztható $5$-tel, $5 \mid q^3 \implies 5 \mid q$.
Azt kaptuk, hogy $5 \mid p$ és $5 \mid q$, ami ellentmond annak, hogy $p$ és $q$ relatív prímek. Tehát $\sqrt[3]{5}$ irracionális.

2. Tegyük fel, hogy $\log_3 2 = \frac{p}{q}$ valamely $p, q \in \mathbb{N}$ pozitív egészekre ($q \ne 0$). A logaritmus definíciója szerint:
$$3^{p/q} = 2 \iff 3^p = 2^q.$$
A bal oldal prímtényezős felbontásában csak a $3$-as prím szerepel, így páratlan szám. A jobb oldal prímtényezős felbontásában csak a $2$-es prím szerepel ($q \ge 1$), így páros szám. Mivel egy egész szám nem lehet egyszerre páros és páratlan, a számelmélet alaptétele szerinti egyértelmű prímfelbontás miatt $3^p = 2^q$ lehetetlen. Tehát $\log_3 2$ irracionális. $\blacksquare$

::: elmelet
**Elméleti háttér — Irracionalitási bizonyítások és a nemkonstruktív érvelés.**

- **Számelmélet alaptétele:** Minden $1$-nél nagyobb egész szám a szorzótényezők sorrendjétől eltekintve egyértelműen bomlik fel prímszámok szorzatára. Ebből következik, hogy $\sqrt[n]{m}$ pontosan akkor racionális, ha $m$ egy egész szám teljes $n$-edik hatványa.
- **Logaritmusok irracionalitása:** $\log_a b$ ($a, b \in \mathbb{N}$, $a, b \ge 2$) pontosan akkor racionális, ha $a$ és $b$ ugyanannak az egész számnak egész kitevős hatványai.
- **Tertium non datur (a kizárt harmadik elve):** A $\sqrt{2}^{\sqrt{2}}$ példája a tiszta egzisztenciális (nemkonstruktív) bizonyítás mintapéldája: anélkül igazolja egy objektum létezését, hogy megmondaná, a két felmerülő eset közül melyik valósul meg a valóságban (bár ma a Gelfond–Schneider-tételből tudjuk, hogy $\sqrt{2}^{\sqrt{2}}$ valójában transzcendens).
:::

## Gy3.1. feladat

Mutassuk meg, hogy $2^n > n^3$, ha $n \ge N_0$. Adjuk meg a lehető legkisebb $N_0 \in \mathbb{N}$ küszöbindexet, és végezzük el a teljes indukciós bizonyítást!

**Megoldás.**

Számítsuk ki a két kifejezés értékeit kis $n$-ekre:
- $n = 1$: $2^1 = 2 > 1^3 = 1$ (igaz)
- $n = 2$: $2^2 = 4 < 2^3 = 8$ (hamis)
- $n = 3$: $2^3 = 8 < 3^3 = 27$ (hamis)
- $n = 4$: $2^4 = 16 < 4^3 = 64$ (hamis)
- $n = 5$: $2^5 = 32 < 5^3 = 125$ (hamis)
- $n = 6$: $2^6 = 64 < 6^3 = 216$ (hamis)
- $n = 7$: $2^7 = 128 < 7^3 = 343$ (hamis)
- $n = 8$: $2^8 = 256 < 8^3 = 512$ (hamis)
- $n = 9$: $2^9 = 512 < 9^3 = 729$ (hamis)
- $n = 10$: $2^{10} = 1024 > 10^3 = 1000$ (igaz!)
- $n = 11$: $2^{11} = 2048 > 11^3 = 1331$ (igaz)

A legkisebb olyan $N_0$, amelytől kezdve az állítás minden további $n$-re igaz marad: **$N_0 = 10$**.

**Bizonyítás teljes indukcióval minden $n \ge 10$ esetén:**

1. *Alaplépés:* $n = 10$-re $2^{10} = 1024 > 1000 = 10^3$, az állítás fennáll.

2. *Indukciós feltevés:* Tegyük fel, hogy valamely $n \ge 10$ rögzített egészre $2^n > n^3$.

3. *Indukciós lépés:* Igazolnunk kell, hogy $2^{n+1} > (n+1)^3$.
A bal oldal az indukciós feltevés felhasználásával:
$$2^{n+1} = 2 \cdot 2^n > 2n^3.$$
Elég megmutatnunk, hogy $2n^3 \ge (n+1)^3$.
Bontsuk ki a jobb oldalt:
$$(n+1)^3 = n^3 + 3n^2 + 3n + 1.$$
Az egyenlőtlenség tehát így alakul:
$$2n^3 \ge n^3 + 3n^2 + 3n + 1 \iff n^3 \ge 3n^2 + 3n + 1.$$
Mivel $n \ge 10$, ezért $n^3 = n \cdot n^2 \ge 10n^2$. Ezt osszuk fel három részre:
$$10n^2 = 3n^2 + 3n^2 + 4n^2.$$
Mivel $n \ge 10 \ge 1$, világos, hogy:
$$3n^2 \ge 3n, \qquad 4n^2 \ge 4 \cdot 100 = 400 > 1.$$
Így $n^3 \ge 3n^2 + 3n^2 + 4n^2 > 3n^2 + 3n + 1$, vagyis $2n^3 > (n+1)^3$ valóban teljesül minden $n \ge 10$-re.
Ezzel az indukciós lépést bebizonyítottuk, tehát $2^n > n^3$ minden $n \ge 10$ egészre teljesül. $\blacksquare$

::: elmelet
**Elméleti háttér — Teljes indukció és exponenciális versus polinomiális növekedés.**

- **A teljes indukció elve:** Ha egy $P(n)$ állítás igaz $n = N_0$-ra, és abból a feltevésből, hogy igaz $n$-re, levezethető, hogy igaz $(n+1)$-re is, akkor igaz minden $n \ge N_0$ egészre.
- **Aszimptotikus hierarchia:** Bármely $a > 1$ és $k > 0$ esetén $a^n$ gyorsabban nő, mint $n^k$, azaz $a^n > n^k$ minden elegendően nagy $n$-re. Azonban kis $n$-ekre a polinom még meghaladhatja az exponenciálist (itt $n=2$-től $9$-ig a köbös tag nagyobb).
- **Indukciós lépés technikája:** $2n^3 \ge (n+1)^3 \iff \sqrt[3]{2} \ge 1 + \frac{1}{n}$. Mivel $\sqrt[3]{2} \approx 1{,}2599$, ez pontosan akkor áll fenn, ha $\frac{1}{n} \le 0{,}2599 \iff n \ge 4$. Így az indukciós lépés önmagában már $n \ge 4$-re működik, csupán az indukció indításához kellett megvárni a $2^n > n^3$ első átlépési pontját ($n=10$).
:::

## Gy3.2. feladat

a) Mutassuk meg teljes indukcióval, hogy $n! > 3^n$ minden $n \ge N_0$ esetén, és határozzuk meg a legkisebb $N_0 \in \mathbb{N}$ értéket!

b) Igazoljuk a binomiális tétel segítségével, hogy minden $n \ge 1$ természetes számra:
$$\left(1 + \frac{1}{n}\right)^n < 3.$$

**Megoldás.**

a) Számoljuk ki a faktoriálist és $3^n$-t kis $n$-ekre:
- $n = 1$: $1! = 1 < 3^1 = 3$
- $n = 2$: $2! = 2 < 3^2 = 9$
- $n = 3$: $3! = 6 < 3^3 = 27$
- $n = 4$: $4! = 24 < 3^4 = 81$
- $n = 5$: $5! = 120 < 3^5 = 243$
- $n = 6$: $6! = 720 < 3^6 = 729$
- $n = 7$: $7! = 5040 > 3^7 = 2187$ (igaz!)

A legkisebb küszöbindex: **$N_0 = 7$**.

*Bizonyítás indukcióval:*
1. $n = 7$-re: $7! = 5040 > 2187 = 3^7$, igaz.
2. Tegyük fel, hogy $n! > 3^n$ valamely $n \ge 7$-re.
3. Ekkor $(n+1)! = (n+1) \cdot n! > (n+1) \cdot 3^n$.
Mivel $n \ge 7$, $n + 1 \ge 8 > 3$, így:
$$(n+1) \cdot 3^n > 3 \cdot 3^n = 3^{n+1}.$$
Tehát $(n+1)! > 3^{n+1}$. A teljes indukció elve alapján az állítás minden $n \ge 7$-re igaz.

b) Fejtsük ki $\left(1 + \frac{1}{n}\right)^n$-t a binomiális tétellel:
$$\left(1 + \frac{1}{n}\right)^n = \sum_{k=0}^n \binom{n}{k} \frac{1}{n^k} = 1 + \sum_{k=1}^n \frac{n(n-1)\cdots(n-k+1)}{k!} \frac{1}{n^k}.$$
A $k$-adik tagban a számláló $k$ darab tényező szorzata, amelyek mindegyike legfeljebb $n$:
$$\frac{n(n-1)\cdots(n-k+1)}{n^k} = 1 \cdot \left(1 - \frac{1}{n}\right) \cdots \left(1 - \frac{k-1}{n}\right) < 1 \quad (k \ge 2 \text{ esetén}).$$
Így minden $k \ge 1$-re a tag felülről becsülhető $\frac{1}{k!}$-sal:
$$\left(1 + \frac{1}{n}\right)^n < 1 + \sum_{k=1}^n \frac{1}{k!} = 1 + 1 + \frac{1}{2!} + \frac{1}{3!} + \dots + \frac{1}{n!}.$$
Mivel $k! \ge 2^{k-1}$ minden $k \ge 1$-re (ugyanis $k! = 1 \cdot 2 \cdot 3 \cdots k \ge 1 \cdot 2 \cdot 2 \cdots 2 = 2^{k-1}$), ezért a mértani sor összegképletével:
$$\sum_{k=1}^n \frac{1}{k!} = 1 + \sum_{k=2}^n \frac{1}{k!} \le 1 + \sum_{k=2}^n \frac{1}{2^{k-1}} < 1 + \sum_{j=1}^{\infty} \frac{1}{2^j} = 1 + 1 = 2.$$
Tehát:
$$\left(1 + \frac{1}{n}\right)^n < 1 + 2 = 3.$$
Ezzel az egyenlőtlenséget minden $n \ge 1$-re igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Faktoriális növekedése és az Euler-féle szám felső korlátja.**

- **Faktoriális nagyságrendje:** $n!$ gyorsabban nő minden exponenciális függvénynél: bármely rögzített $a > 0$ esetén $n! > a^n$ minden elegendően nagy $n$-re, mert $\frac{a^n}{n!} = \frac{a}{1}\frac{a}{2}\cdots\frac{a}{K}\cdots\frac{a}{n}$, ahol a tényezők végül $1$ alá csökkennek.
- **Az $e$ szám definíciója és korlátossága:** Az $e_n = (1 + 1/n)^n$ sorozat szigorúan monoton növekvő és felülről korlátos (korlátja pl. a most igazolt $3$), ezért a Bolzano–Weierstrass / monoton konvergencia tétel szerint határértéke létezik: $\lim_{n\to\infty} (1 + 1/n)^n = e \approx 2{,}71828$.
- **Mértani sor majoráns:** A $\sum_{k=1}^\infty \frac{1}{k!}$ sor majorálása a $\sum \frac{1}{2^{k-1}}$ mértani sorral alapvető analízisbeli fogás.
:::

## Gy4.1. feladat

A binomiális tétel és elemi átalakítások segítségével számítsuk ki zárt alakban az alábbi összegeket:

a) $\displaystyle\sum_{k=0}^n 3^k \binom{n}{k}$;

b) $\displaystyle\sum_{k=0}^{\lfloor n/2 \rfloor} \binom{n}{2k}$ (a páros indexű binomiális együtthatók összege);

c) $\displaystyle\sum_{k=0}^n \frac{1}{k+1} \binom{n}{k}$.

**Megoldás.**

a) A binomiális tétel szerint $(a + b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k} b^k$.
Válasszuk az $a = 1$ és $b = 3$ értékeket:
$$\sum_{k=0}^n 3^k \binom{n}{k} = \sum_{k=0}^n \binom{n}{k} 1^{n-k} 3^k = (1 + 3)^n = 4^n.$$

b) Írjuk fel a binomiális tételt $a = 1, b = 1$, illetve $a = 1, b = -1$ esetén:
$$(1 + 1)^n = 2^n = \sum_{k=0}^n \binom{n}{k},$$
$$(1 - 1)^n = 0^n = 0 = \sum_{k=0}^n (-1)^k \binom{n}{k} \quad (n \ge 1 \text{ esetén}).$$
Adjuk össze a két egyenletet:
$$2^n + 0 = \sum_{k=0}^n \big(1 + (-1)^k\big) \binom{n}{k}.$$
Mivel $1 + (-1)^k = 2$, ha $k$ páros, és $0$, ha $k$ páratlan, ezért a jobb oldalon csak a páros indexű tagok maradnak meg, mindegyik $2$-szeres súllyal:
$$2^n = 2 \sum_{k=0}^{\lfloor n/2 \rfloor} \binom{n}{2k} \implies \sum_{k=0}^{\lfloor n/2 \rfloor} \binom{n}{2k} = \frac{2^n}{2} = 2^{n-1}.$$
($n = 0$ esetén a bal oldal $\binom{0}{0} = 1 = 2^{0-1}$ formai hiba nélkül $1$, így az összeg $n \ge 1$-re $2^{n-1}$, $n = 0$-ra $1$.)

c) Használjuk fel a binomiális együtthatók ismert összefüggését:
$$\frac{1}{k+1} \binom{n}{k} = \frac{1}{k+1} \frac{n!}{k!(n-k)!} = \frac{1}{n+1} \frac{(n+1)!}{(k+1)!(n-k)!} = \frac{1}{n+1} \binom{n+1}{k+1}.$$
Ezt behelyettesítve az összegbe:
$$\sum_{k=0}^n \frac{1}{k+1} \binom{n}{k} = \frac{1}{n+1} \sum_{k=0}^n \binom{n+1}{k+1}.$$
Vezessünk be új összegzési indexet: $j = k + 1$, ekkor $j$ értéke $1$-től $n+1$-ig fut:
$$\sum_{k=0}^n \binom{n+1}{k+1} = \sum_{j=1}^{n+1} \binom{n+1}{j} = \left(\sum_{j=0}^{n+1} \binom{n+1}{j}\right) - \binom{n+1}{0} = 2^{n+1} - 1.$$
Így a végeredmény:
$$\sum_{k=0}^n \frac{1}{k+1} \binom{n}{k} = \frac{2^{n+1} - 1}{n+1}.$$

::: elmelet
**Elméleti háttér — Binomiális azonosságok és generátor-technikák.**

- **Binomiális tétel:** $(x + y)^n = \sum_{k=0}^n \binom{n}{k} x^{n-k} y^k$.
- **Szűrési technika (páros/páratlan indexek):** Ha egy összeg minden második tagját akarjuk kiszámítani, a $+1$ és $-1$ helyettesítések összegét vagy különbségét képezzük: $\frac{(1+x)^n + (1-x)^n}{2}$ páros hatványokat ad.
- **Indexeltolási és algebrai azonosságok:**
  $$k \binom{n}{k} = n \binom{n-1}{k-1}, \qquad \frac{1}{k+1}\binom{n}{k} = \frac{1}{n+1}\binom{n+1}{k+1}.$$
  Ezek deriválásnak és integrálásnak felelnek meg a polinomok terén: $\int_0^1 (1+x)^n \, dx = \left[ \frac{(1+x)^{n+1}}{n+1} \right]_0^1 = \frac{2^{n+1}-1}{n+1}$.
:::

## Gy4.2. feladat

a) Bizonyítsuk be algebrai átalakítással, hogy minden $n \ge 2$ és $k \ge 2$ esetén
$$k(k-1)\binom{n}{k} = n(n-1)\binom{n-2}{k-2}.$$

b) Ennek felhasználásával határozzuk meg zárt alakban a $\displaystyle\sum_{k=1}^n k^2 \binom{n}{k}$ összeg értékét!

**Megoldás.**

a) Írjuk fel a bal oldalt a faktoriálisos definícióval:
$$k(k-1)\binom{n}{k} = k(k-1) \frac{n!}{k!(n-k)!}.$$
Mivel $k \ge 2$, $k(k-1) \frac{1}{k!} = \frac{1}{(k-2)!}$. Továbbá emeljünk ki a számlálóból $n(n-1)$-et:
$$k(k-1) \frac{n!}{k!(n-k)!} = n(n-1) \frac{(n-2)!}{(k-2)!\big((n-2) - (k-2)\big)!} = n(n-1) \binom{n-2}{k-2}.$$
Ez az egyenlőség azonnal teljesül $k = 0$ és $k = 1$ esetén is, hiszen mindkét oldal $0$. $\blacksquare$

b) Bontsuk fel a $k^2$ kifejezést $k(k-1) + k$ alakban:
$$k^2 = k(k-1) + k.$$
Ennek megfelelően az összeg két részre bomlik:
$$\sum_{k=1}^n k^2 \binom{n}{k} = \sum_{k=1}^n k(k-1) \binom{n}{k} + \sum_{k=1}^n k \binom{n}{k}.$$
Az első összegben $k=1$-re a tag $0$, így az összegzés $k=2$-től indul:
$$\sum_{k=2}^n k(k-1) \binom{n}{k} = \sum_{k=2}^n n(n-1) \binom{n-2}{k-2} = n(n-1) \sum_{j=0}^{n-2} \binom{n-2}{j} = n(n-1) 2^{n-2}.$$
A második összeg jól ismert (vagy a $k \binom{n}{k} = n \binom{n-1}{k-1}$ azonosságból adódik):
$$\sum_{k=1}^n k \binom{n}{k} = \sum_{k=1}^n n \binom{n-1}{k-1} = n \sum_{j=0}^{n-1} \binom{n-1}{j} = n 2^{n-1}.$$
A két részt összeadva és kiemelve $n 2^{n-2}$-t:
$$\sum_{k=1}^n k^2 \binom{n}{k} = n(n-1) 2^{n-2} + n 2^{n-1} = n 2^{n-2} \big((n-1) + 2\big) = n(n+1) 2^{n-2}.$$
(Ellenőrzés: $n=1$-re $1^2 \cdot 1 = 1$, a képletből $1 \cdot 2 \cdot 2^{-1} = 1$; $n=2$-re $1 \cdot 2 + 4 \cdot 1 = 6$, a képletből $2 \cdot 3 \cdot 2^0 = 6$.)

::: elmelet
**Elméleti háttér — Binomiális együtthatók momentumai és kombinatorikus jelentés.**

- **Faktoriális momentumok:** A hatványok átírása faktoriális hatványokba ($k^2 = k(k-1) + k$, $k^3 = k(k-1)(k-2) + 3k(k-1) + k$) standard módszer a kombinatorikus összegek és valószínűségszámítási momentumok kiszámítására.
- **Kombinatorikus interpretáció:** Egy $n$ fős csoportból bizottságot választunk elnökkel és titkárral:
  - Ha az elnök és a titkár különböző személy: $\binom{n}{2}$ módon választunk két embert, $2$ módon rendeljük hozzájuk a szerepeket, a maradékból pedig $2^{n-2}$ módon egészítjük ki a bizottságot $\implies n(n-1)2^{n-2}$.
  - Ha az elnök és a titkár ugyanaz a személy: $n$ módon választjuk ki az egyszemélyes vezetőt, a többiek $2^{n-1}$ módon csatlakozhatnak $\implies n2^{n-1}$.
  A kettő összege adja az elnökkel és titkárral ellátott bizottságok összes számát: $n(n+1)2^{n-2}$.
:::

## Gy5.1. feladat

Döntsük el az alábbi halmazokról, hogy alulról, illetve felülről korlátosak-e, és határozzuk meg az infimumukat, szuprémumukat, minimumukat és maximumukat (amennyiben léteznek):

a) $A = \left\{\dfrac{3n - 1}{n + 2} : n \in \mathbb{N}\right\}$;

b) $B = \{x \in \mathbb{R} : x^2 - 5x + 6 < 0\}$;

c) $C = \left\{\dfrac{(-1)^n}{n} + 1 : n \in \mathbb{N}\right\}$;

d) $D = \{x \in \mathbb{Q} : x^2 < 7\}$.

**Megoldás.**

a) Írjuk át a sorozat általános tagját:
$$\frac{3n - 1}{n + 2} = \frac{3(n + 2) - 7}{n + 2} = 3 - \frac{7}{n + 2}.$$
Mivel $n \mapsto \frac{7}{n + 2}$ szigorúan monoton csökken, a tagok szigorúan monoton növekednek:
- $n = 1$: $a_1 = \frac{3 \cdot 1 - 1}{1 + 2} = \frac{2}{3}$.
- $n \to \infty$: $a_n \to 3$, és minden $n$-re $a_n < 3$.
Így $A$ alulról és felülről is korlátos.
- $\inf A = \min A = \frac{2}{3}$ (mivel $\frac{2}{3} \in A$).
- $\sup A = 3$ (mivel felső korlát, és $3 - \varepsilon$ fölé megy a sorozat nagy $n$-re).
- $\max A$ **nem létezik**, mert a $3$ értéket a halmaz egyetlen eleme sem éri el ($3 - \frac{7}{n+2} < 3$).

b) A másodfokú egyenlőtlenség gyökei: $x^2 - 5x + 6 = (x - 2)(x - 3) < 0 \iff x \in (2, 3)$.
Így $B = (2, 3)$ nyílt intervallum.
- $B$ alulról és felülről is korlátos (korlátos halmaz).
- $\inf B = 2$, $\sup B = 3$.
- $\min B$ és $\max B$ **nem léteznek**, mivel a határoló pontok ($2$ és $3$) nem tartoznak a nyílt intervallumhoz.

c) Vizsgáljuk meg a sorozat páros és páratlan indexű részsorozatait:
- Ha $n$ páratlan ($n = 2k - 1$): $c_n = 1 - \frac{1}{n} \in [0, 1)$. A legkisebb érték $n = 1$-nél adódik: $c_1 = 0$.
- Ha $n$ páros ($n = 2k$): $c_n = 1 + \frac{1}{n} \in (1, \frac{3}{2}]$. A legnagyobb érték $n = 2$-nél adódik: $c_2 = \frac{3}{2}$.
Minden elem a $\left[0, \frac{3}{2}\right]$ zárt intervallumba esik, és mindkét végpont felvétetik:
- $\inf C = \min C = 0$ (felvétetik $n = 1$-re).
- $\sup C = \max C = \frac{3}{2}$ (felvétetik $n = 2$-re).
A halmaz tehát korlátos, és van minimuma, valamint maximuma is.

d) A valós számok körében a feltétel azt jelenti, hogy $-\sqrt{7} < x < \sqrt{7}$.
Mivel $D \subset \mathbb{Q}$, ezért $D = (-\sqrt{7}, \sqrt{7}) \cap \mathbb{Q}$.
- $D$ felülről korlátos (felső korlátja például $\sqrt{7}$ vagy $3$), alulról korlátos (alsó korlát pl. $-\sqrt{7}$).
- $\sup D = \sqrt{7}$, $\inf D = -\sqrt{7}$ (a valós számok részhalmazaként tekintve).
- $\max D$ és $\min D$ **nem léteznek**, mert sem $\sqrt{7}$, sem $-\sqrt{7}$ nem racionális szám, így nem tartoznak $D$-hez (racionális számok halmazán belül pedig nincs olyan legnagyobb elem, amely kisebb lenne $\sqrt{7}$-nél, a $\mathbb{Q}$ sűrűsége miatt).

::: elmelet
**Elméleti háttér — Korlátosság, infimum, szuprémum és a teljességi tétel.**

- **Alsó és felső korlát:** $K$ felső korlát, ha $\forall x \in H: x \le K$. Ha létezik felső korlát, $H$ felülről korlátos.
- **Szuprémum (legkisebb felső korlát):** $S = \sup H$, ha:
  1. $S$ felső korlátja $H$-nak ($\forall x \in H: x \le S$);
  2. $S$-nél nincs kisebb felső korlát: $\forall \varepsilon > 0$ esetén $\exists x \in H$, amelyre $x > S - \varepsilon$.
- **Maximum:** Ha $\sup H \in H$, akkor $\max H = \sup H$. Ha $\sup H \notin H$, akkor maximum nem létezik!
- **A valós számok teljességi axiómája:** Minden nem üres, felülről korlátos valós halmaznak létezik szuprémuma $\mathbb{R}$-ben. Ez $\mathbb{Q}$-ban nem igaz: a d) rész halmaza korlátos $\mathbb{Q}$-ban, de nincs racionális szuprémuma!
:::

## Gy5.2. feladat

Határozzuk meg az alábbi halmazok infimumát, szuprémumát, minimumát és maximumát (amennyiben léteznek), és állapítsuk meg korlátosságukat:

a) $A = \left\{\dfrac{1}{2^n} + \dfrac{1}{3^m} : n, m \in \mathbb{N}\right\}$;

b) $B = \left\{x \in \mathbb{R} : \dfrac{2x - 1}{x + 1} \le 1\right\}$;

c) $C = \{n^2 - 10n : n \in \mathbb{N}\}$;

d) $D = \{x \in \mathbb{Q} : x > 0 \text{ és } x^3 > 2\}$.

**Megoldás.**

a) Az $A$ halmaz elemei két szigorúan csökkenő, pozitív sorozat tagjainak összegei:
$$a_{n, m} = \frac{1}{2^n} + \frac{1}{3^m}.$$
Mivel $n, m \ge 1$, a legnagyobb értéket $n = 1, m = 1$ esetén kapjuk:
$$a_{1, 1} = \frac{1}{2} + \frac{1}{3} = \frac{5}{6}.$$
Mivel minden $n, m \in \mathbb{N}$-re $a_{n, m} \le \frac{5}{6}$, ezért:
$$\sup A = \max A = \frac{5}{6}.$$
Alulról a tagok mind szigorúan pozitívak: $\frac{1}{2^n} + \frac{1}{3^m} > 0$. Ha $n, m \to \infty$, akkor mindkét tag tetszőlegesen megközelíti a $0$-t:
$$\inf A = 0.$$
Mivel $0$ nem érhető el (mindig $a_{n, m} > 0$), ezért $\min A$ **nem létezik**.
A halmaz korlátos.

b) Oldjuk meg a $\frac{2x - 1}{x + 1} \le 1$ egyenlőtlenséget:
$$\frac{2x - 1}{x + 1} - 1 \le 0 \iff \frac{(2x - 1) - (x + 1)}{x + 1} \le 0 \iff \frac{x - 2}{x + 1} \le 0.$$
A tört pontosan akkor nempozitív, ha a számláló és a nevező ellentétes előjelű (figyelembe véve, hogy a nevező nem lehet $0$):
$$-1 < x \le 2.$$
Tehát $B = (-1, 2]$.
- $B$ alulról és felülről is korlátos.
- $\inf B = -1$, de $\min B$ **nem létezik** (mert $-1 \notin B$).
- $\sup B = \max B = 2$ (mivel $2 \in B$).

c) A $c_n = n^2 - 10n = (n - 5)^2 - 25$ függvény $n \in \mathbb{N}$-re:
A parabola csúcspontja $n = 5$-nél van, ahol $c_5 = 5^2 - 10 \cdot 5 = -25$.
Mivel minden $n$-re $(n - 5)^2 \ge 0$, ezért $c_n \ge -25$.
- $\inf C = \min C = -25$ (felvétetik $n = 5$-re).
Felülről ha $n \to \infty$, akkor $n^2 - 10n = n(n - 10) \to +\infty$.
- $C$ felülről **nem korlátos**, így $\sup C = +\infty$ (valós szuprémuma és maximuma nem létezik).

d) A valós számok körében $x > 0$ és $x^3 > 2 \iff x > \sqrt[3]{2}$.
Mivel $D \subset \mathbb{Q}$, ezért $D = (\sqrt[3]{2}, +\infty) \cap \mathbb{Q}$.
- $D$ felülről **nem korlátos** (nincs felső korlát, se szuprémum).
- $D$ alulról korlátos, alsó korlát pl. a $0$ vagy $1$.
- A valós számok körében $\inf D = \sqrt[3]{2}$.
- $\min D$ **nem létezik**, mert $\sqrt[3]{2} \notin \mathbb{Q}$, és a racionális számok között nincs legkisebb, $\sqrt[3]{2}$-nél nagyobb elem.

::: elmelet
**Elméleti háttér — Többindexű halmazok és korlátosság végtelenben.**

- **Kétindexű halmazok szuprémuma és infimuma:**
  $$\sup \{a_n + b_m : n, m \in \mathbb{N}\} = \sup \{a_n : n \in \mathbb{N}\} + \sup \{b_m : m \in \mathbb{N}\}.$$
  Hasonlóan az infimumra: független indexek esetén az operátorok szétbonthatók.
- **Törtegyenlőtlenségek megoldásának buktatója:** Nem szabad beszorozni a nevezővel anélkül, hogy ismernénk annak előjelét! A helyes módszer a nullára rendezés és közös nevezőre hozás, majd az előjeltáblázat készítése.
:::

## Gy6.1. feladat

Legyen $H \subset \mathbb{R}$ nem üres halmaz. Fogalmazzuk meg szabatos magyar mondatban, hogy a $H$ halmaz milyen analitikai tulajdonságát fejezik ki az alábbi logikai formulák:

a) $(\exists K \in \mathbb{R})(\forall x \in H)(x \ge K)$;

b) $(\forall x \in H)(\exists y \in H)(y > x)$;

c) $(\forall x \in \mathbb{R})(\exists y \in H)(y > x)$;

d) $(\forall \varepsilon > 0)(\exists x, y \in H)(x \ne y \text{ és } |x - y| < \varepsilon)$.

**Megoldás.**

a) A formula jelentése: Létezik olyan $K$ valós szám, amelynél a $H$ halmaz minden $x$ eleme nagyobb vagy egyenlő.
Ez a definíció szerint pontosan azt fejezi ki, hogy **a $H$ halmaz alulról korlátos** (és a formula egyben egy $K$ alsó korlát létezését deklarálja).

b) A formula jelentése: A $H$ halmaz bármely $x$ eleméhez található olyan $y \in H$ elem, amely szigorúan nagyobb nála.
Ez pontosan azt jelenti, hogy $H$-ban nincs olyan elem, amelynél minden más elem kisebb vagy egyenlő lenne, vagyis **a $H$ halmaznak nincs legnagyobb eleme (nincs maximuma)**.
(Megjegyzés: ez nem jelenti feltétlenül azt, hogy $H$ felülről nem korlátos; például a $H = (0, 1)$ halmazra teljesül a formula, pedig felülről korlátos!)

c) A formula jelentése: Tetszőleges $x$ valós számhoz megadható olyan $y \in H$ elem, amely nagyobb $x$-nél.
Ez azt jelenti, hogy semmilyen valós szám nem lehet felső korlátja $H$-nak, azaz **a $H$ halmaz felülről nem korlátos** ($\sup H = +\infty$).

d) A formula jelentése: Bármilyen kicsi pozitív $\varepsilon$-hoz találhatók $H$-ban olyan különböző $x, y$ pontok, amelyek távolsága kisebb $\varepsilon$-nál.
Ez azt jelenti, hogy $H$ pontjai között tetszőlegesen kicsi távolság is előfordul, vagyis **az elemek közötti távolságok infimuma nulla**, a halmaz nem diszkrét (pontjai tetszőlegesen közel kerülhetnek egymáshoz).

::: elmelet
**Elméleti háttér — Matematikai logika és kvantorok az analízisben.**

- **Kvantorok sorrendje:** $\forall x \exists y$ NEM ugyanaz, mint $\exists y \forall x$!
  - $(\forall x \in \mathbb{R})(\exists y \in H)(y > x)$: minden számhoz van nála nagyobb $H$-beli (felülről nem korlátos).
  - $(\exists y \in H)(\forall x \in \mathbb{R})(y > x)$: van egy olyan $H$-beli elem, amely MINDEN valós számnál nagyobb — ez abszurdum, ilyen nem létezik.
- **Maximum tagadása vs. nem korlátosság:** Gyakori hallgatói hiba összekeverni a „nincs maximuma” állítást a „felülről nem korlátos” állítással. A $(0, 1)$ halmaznak nincs maximuma, mégis felülről korlátos.
:::

## Gy6.2. feladat

Írjuk fel logikai kvantorok ($\forall, \exists$) segítségével az alábbi kijelentéseket a $H \subset \mathbb{R}$ nem üres halmazra, majd képezzük a tagadásukat kvantorokkal és szabatos szöveges megfogalmazással is:

a) $H$ alulról korlátos;

b) $H$-nak van legkisebb eleme (minimuma);

c) $H$ korlátos.

**Megoldás.**

a) 1. *Kvantoros alak:*
$$(\exists K \in \mathbb{R})(\forall x \in H)(x \ge K).$$
2. *Tagadás kvantorokkal:* A De Morgan-szabályok szerint a kvantorok átfordulnak, és a belső egyenlőtlenség megfordul:
$$\neg \big[(\exists K \in \mathbb{R})(\forall x \in H)(x \ge K)\big] \iff (\forall K \in \mathbb{R})(\exists x \in H)(x < K).$$
3. *Szöveges tagadás:* **A $H$ halmaz alulról nem korlátos** (bármilyen $K$ számot választunk, mindig van nála kisebb halmazbeli elem).

b) 1. *Kvantoros alak:*
$$(\exists m \in H)(\forall x \in H)(m \le x).$$
2. *Tagadás kvantorokkal:*
$$\neg \big[(\exists m \in H)(\forall x \in H)(m \le x)\big] \iff (\forall m \in H)(\exists x \in H)(x < m).$$
3. *Szöveges tagadás:* **A $H$ halmaznak nincs legkisebb eleme** (bármely halmazbeli $m$ elemhez található nála szigorúan kisebb halmazbeli elem).

c) 1. *Kvantoros alak:* Egy halmaz pontosan akkor korlátos, ha alulról és felülről is korlátos, ami egyetlen abszolút értékes formulával így írható:
$$(\exists K \in \mathbb{R})(\forall x \in H)(|x| \le K).$$
2. *Tagadás kvantorokkal:*
$$(\forall K \in \mathbb{R})(\exists x \in H)(|x| > K).$$
3. *Szöveges tagadás:* **A $H$ halmaz nem korlátos** (tetszőleges $K$ valós korlát esetén van a halmaznak olyan eleme, amely abszolút értékben meghaladja $K$-t, vagyis $H$ alulról vagy felülről nem korlátos).

::: elmelet
**Elméleti háttér — Állítások tagadása és a De Morgan-szabályok kvantorokra.**

- **Kvantoros tagadási szabály:**
  $$\neg (\forall x: P(x)) \iff \exists x: \neg P(x), \qquad \neg (\exists x: P(x)) \iff \forall x: \neg P(x).$$
- **Korlátosság kompakt felírása:** A rendezési axiómák miatt $H$ korlátossága ekvivalens azzal, hogy $H \subset [-K, K]$ valamely $K > 0$-ra, vagyis $(\exists K > 0)(\forall x \in H)(|x| \le K)$. Ennek tagadása egyetlen lépésben adja, hogy a pontok „kiszöknek” minden origó középpontú intervallumból.
:::

## Gy7.1. feladat

Határozzuk meg – precíz bizonyítással – az alábbi halmazok infimumát, szuprémumát, minimumát és maximumát (amennyiben léteznek):

a) $A = \left\{\dfrac{2n}{3n + 1} : n \in \mathbb{N}\right\}$;

b) $B = \left\{\dfrac{1}{n} + \dfrac{(-1)^m}{m} : n, m \in \mathbb{N}\right\}$;

c) $C = \{x \in \mathbb{R} : |x - 2| + |x + 1| < 5\}$;

d) $D = \left\{\dfrac{m}{n} : m, n \in \mathbb{N},\ m < 2n\right\}$.

**Megoldás.**

a) Írjuk fel a törtet:
$$a_n = \frac{2n}{3n + 1} = \frac{2}{3 + \frac{1}{n}}.$$
Mivel $n \mapsto 3 + \frac{1}{n}$ szigorúan csökken és pozitív, $a_n$ szigorúan növekvő sorozat.
- A legkisebb elem $n = 1$-re: $a_1 = \frac{2}{4} = \frac{1}{2}$.
- Mivel $a_n$ szigorúan nő és $a_1 = \frac{1}{2}$, ezért $\min A = \inf A = \frac{1}{2}$.
- Szuprémum: $a_n = \frac{2}{3} - \frac{2/3}{3n+1} < \frac{2}{3}$ minden $n$-re, így $\frac{2}{3}$ felső korlát. Ha $\varepsilon > 0$, akkor $\frac{2}{3} - a_n = \frac{2}{3(3n+1)} < \varepsilon$ teljesül, amint $n > \frac{2 - 3\varepsilon}{9\varepsilon}$, ami az arkhimédészi tulajdonság miatt mindig megtalálható.
Tehát $\sup A = \frac{2}{3}$. Mivel $\frac{2}{3} \notin A$ (a tört sosem éri el), $\max A$ **nem létezik**.

b) $b_{n, m} = \frac{1}{n} + \frac{(-1)^m}{m}$.
- Maximum / szuprémum: $\frac{1}{n}$ maximális $n = 1$-nél ($1$). A $\frac{(-1)^m}{m}$ tag akkor a legnagyobb, ha $m$ páros, és ekkor $m = 2$-nél a legnagyobb: $\frac{1}{2}$.
Így a halmaz legnagyobb eleme $n = 1, m = 2$ mellett adódik:
$$b_{1, 2} = 1 + \frac{1}{2} = \frac{3}{2}.$$
Mivel tetszőleges $n, m$-re $b_{n, m} \le 1 + \frac{1}{2} = \frac{3}{2}$, ezért $\sup B = \max B = \frac{3}{2}$.
- Infimum / minimum: $\frac{1}{n} > 0$. A $\frac{(-1)^m}{m}$ tag páratlan $m$-re negatív: $-\frac{1}{m}$, ez minimális $m = 1$-nél ($-1$).
Így $b_{n, m} \ge \frac{1}{n} - 1 > -1$.
Tehát $-1$ alsó korlát. Továbbá ha $m = 1$ rögzített, $b_{n, 1} = \frac{1}{n} - 1 \to -1$, ha $n \to \infty$. Így tetszőleges $\varepsilon > 0$-ra létezik $n$ úgy, hogy $\frac{1}{n} - 1 < -1 + \varepsilon$.
Ezért $\inf B = -1$.
Mivel $b_{n, m} > -1$ mindig fennáll (hiszen $\frac{1}{n} > 0$), a $-1$ értéket a halmaz egyetlen eleme sem veszi fel, így $\min B$ **nem létezik**.

c) Bontsuk fel a számegyenest az elágazási pontok mentén: $x = -1$ és $x = 2$.
- Ha $x \ge 2$: $|x - 2| + |x + 1| = (x - 2) + (x + 1) = 2x - 1 < 5 \iff 2x < 6 \iff x < 3$. Így ebből az ágból $[2, 3)$ adódik.
- Ha $-1 \le x < 2$: $|x - 2| + |x + 1| = -(x - 2) + (x + 1) = -x + 2 + x + 1 = 3 < 5$. Ez minden $x \in [-1, 2)$ pontra azonosan igaz!
- Ha $x < -1$: $|x - 2| + |x + 1| = -(x - 2) - (x + 1) = -2x + 1 < 5 \iff -2x < 4 \iff x > -2$. Ebből az ágból $(-2, -1)$ adódik.
Az ágakat egyesítve: $C = (-2, 3)$.
Ez egy nyílt intervallum: $\inf C = -2$, $\sup C = 3$, minimuma és maximuma **nincs**.

d) Az $m < 2n$ és $m, n \in \mathbb{N}$ feltétel azt jelenti, hogy $0 < \frac{m}{n} < 2$.
Mivel a racionális számok sűrűn helyezkednek el a valós számok között, a $D$ halmaz pontosan a $(0, 2) \cap \mathbb{Q}$ halmaz.
- $\inf D = 0$, $\sup D = 2$.
- Mivel sem $0$, sem $2$ nem tartozik a nyílt intervallumba (és $\frac{m}{n} > 0$, valamint $\frac{m}{n} < 2$ szigorúan), $\min D$ és $\max D$ **nem léteznek**.

::: elmelet
**Elméleti háttér — Szuprémum meghatározása határértékkel és esetszétválasztással.**

- **Monoton sorozatok szuprémuma/infimuma:** Ha $(a_n)$ szigorúan monoton növő, akkor $\min \{a_n\} = \inf \{a_n\} = a_1$, és $\sup \{a_n\} = \lim_{n\to\infty} a_n$. Ha a sorozat nem konstans, maximum nem létezik.
- **Többváltozós kifejezések szétcsatolása:** Ha $f(n, m) = g(n) + h(m)$, akkor az infimum és szuprémum külön-külön képezhető: $\sup (g(n) + h(m)) = \sup g(n) + \sup h(m)$.
- **Abszolút értékes szakaszos függvények:** $|x - a| + |x - b|$ a két pont közötti távolságok összege. A geometriai jelentés azonnal mutatja, hogy az $[a, b]$ szakaszon konstans $|a - b|$, azon kívül pedig $2$ meredekséggel nő.
:::

## Gy7.2. feladat

Határozzuk meg – amennyiben léteznek – az alábbi halmazok infimumát, szuprémumát, minimumát és maximumát:

a) $S_1 = \left\{\dfrac{4n - 1}{n + 1} : n \in \mathbb{N}\right\}$;

b) $S_2 = \left\{x + \dfrac{4}{x} : x > 0\right\}$;

c) $S_3 = \left\{\dfrac{1}{2^n} - \dfrac{1}{3^m} : n, m \in \mathbb{N}\right\}$;

d) $S_4 = \{x \in \mathbb{Q} : x^2 \le 5\}$.

**Megoldás.**

a) Alakítsuk át az általános tagot:
$$s_n = \frac{4n - 1}{n + 1} = \frac{4(n + 1) - 5}{n + 1} = 4 - \frac{5}{n + 1}.$$
Mivel $n \mapsto \frac{5}{n + 1}$ szigorúan csökken, az $s_n$ sorozat szigorúan monoton nő.
- Legkisebb elem $n = 1$-re: $s_1 = \frac{3}{2}$. Tehát $\inf S_1 = \min S_1 = \frac{3}{2}$.
- Felső határ: $s_n < 4$ minden $n$-re, és $\lim_{n\to\infty} s_n = 4$. Így $\sup S_1 = 4$, $\max S_1$ **nem létezik**.

b) Alkalmazzuk a számtani és mértani közepek közötti egyenlőtlenséget az $x > 0$ és $\frac{4}{x} > 0$ számokra:
$$\frac{x + \frac{4}{x}}{2} \ge \sqrt{x \cdot \frac{4}{x}} = \sqrt{4} = 2 \implies x + \frac{4}{x} \ge 4.$$
Egyenlőség pontosan akkor áll fenn, ha a két tag egyenlő: $x = \frac{4}{x} \iff x^2 = 4 \iff x = 2$ (mivel $x > 0$).
Mivel $x = 2$-re az érték pontosan $2 + \frac{4}{2} = 4$, ezért:
$$\inf S_2 = \min S_2 = 4.$$
Ha $x \to +\infty$, akkor $x + \frac{4}{x} \to +\infty$, így a halmaz felülről **nem korlátos**, szuprémuma és maximuma nem létezik.

c) $u_{n, m} = \frac{1}{2^n} - \frac{1}{3^m}$.
- Felső korlát: $\frac{1}{2^n} \le \frac{1}{2}$ ($n=1$-re), és $-\frac{1}{3^m} < 0$. Így $u_{n, m} < \frac{1}{2}$ minden $n, m$-re.
Ha $n = 1$ rögzített és $m \to \infty$, akkor $\frac{1}{2} - \frac{1}{3^m} \to \frac{1}{2}$. Tehát $\sup S_3 = \frac{1}{2}$.
Mivel $u_{n, m} < \frac{1}{2}$ szigorúan, $\max S_3$ **nem létezik**.
- Alsó korlát: $\frac{1}{2^n} > 0$, és $-\frac{1}{3^m} \ge -\frac{1}{3}$ ($m=1$-re). Így $u_{n, m} > -\frac{1}{3}$.
Ha $m = 1$ és $n \to \infty$, akkor $\frac{1}{2^n} - \frac{1}{3} \to -\frac{1}{3}$. Tehát $\inf S_3 = -\frac{1}{3}$.
Mivel $u_{n, m} > -\frac{1}{3}$ szigorúan, $\min S_3$ **nem létezik**.
A halmaz korlátos.

d) A valós számok körében $x^2 \le 5 \iff -\sqrt{5} \le x \le \sqrt{5}$.
Mivel $S_4 \subset \mathbb{Q}$, ezért $S_4 = [-\sqrt{5}, \sqrt{5}] \cap \mathbb{Q}$.
- $S_4$ korlátos halmaz, alsó korlátja $-\sqrt{5}$, felső korlátja $\sqrt{5}$.
- $\inf S_4 = -\sqrt{5}$, $\sup S_4 = \sqrt{5}$.
- Mivel $\sqrt{5}$ és $-\sqrt{5}$ irracionálisak, nem tartoznak $S_4$-hez. Ezért $\min S_4$ és $\max S_4$ **nem léteznek**.

::: elmelet
**Elméleti háttér — Szélsőértékkeresés egyenlőtlenségekkel és irracionális vágások.**

- **Számtani-mértani közép egyenlőtlenség szélsőértékhez:** $x + \frac{c}{x} \ge 2\sqrt{c}$ ($x > 0$), az egyenlőség $x = \sqrt{c}$-nél éles. Deriválás nélkül, pusztán algebrai úton szolgáltat globális minimumot.
- **Zártnak tűnő racionális halmazok:** Bár az egyenlőtlenségben $\le$ áll ($x^2 \le 5$), a halmaznak nincs maximuma $\mathbb{Q}$-ban, mivel a végpontok kiesnek a racionális számtestből. Ez mutatja, hogy a topológiai zártság fogalma az alaphalmaztól (itt $\mathbb{Q}$ vs. $\mathbb{R}$) lényegileg függ.
:::

## Gy8.1. feladat

Legyenek $A, B \subset \mathbb{R}$ nem üres, felülről korlátos halmazok.

a) Bizonyítsuk be, hogy $\sup(A \cup B) = \max\{\sup A, \sup B\}$.

b) Tegyük fel, hogy $A \cap B \ne \emptyset$. Bizonyítsuk be, hogy $\sup(A \cap B) \le \min\{\sup A, \sup B\}$, és mutassunk példát olyan halmazokra, ahol szigorú egyenlőtlenség áll fenn!

c) Legyen $A \setminus B \ne \emptyset$. Igaz-e, hogy $\sup(A \setminus B) \le \sup A$? Lehetséges-e egyenlőség úgy, hogy $B$ tartalmaz olyan elemet, amely nagyobb $A \setminus B$ minden eleménél?

**Megoldás.**

a) Jelölje $M = \max\{\sup A, \sup B\}$.
1. *Felső korlát:* Ha $x \in A \cup B$, akkor $x \in A$ vagy $x \in B$.
- Ha $x \in A$, akkor $x \le \sup A \le M$.
- Ha $x \in B$, akkor $x \le \sup B \le M$.
Minden esetben $x \le M$, tehát $M$ felső korlátja $A \cup B$-nek.
2. *Legkisebb felső korlát:* Legyen $\varepsilon > 0$. Feltehető, hogy $M = \sup A$ (ha $M = \sup B$, a szerepek felcserélhetők).
A szuprémum definíciója szerint létezik $x_0 \in A$ úgy, hogy $x_0 > \sup A - \varepsilon = M - \varepsilon$.
Mivel $x_0 \in A \subset A \cup B$, találtunk olyan elemet $A \cup B$-ben, amely nagyobb $M - \varepsilon$-nál.
Ez igazolja, hogy $\sup(A \cup B) = M = \max\{\sup A, \sup B\}$. $\blacksquare$

b) Legyen $x \in A \cap B$. Ekkor $x \in A \implies x \le \sup A$, és $x \in B \implies x \le \sup B$.
Így $x \le \min\{\sup A, \sup B\}$. Mivel ez minden $x \in A \cap B$ elemre teljesül, a legkisebb felső korlátra is fennáll:
$$\sup(A \cap B) \le \min\{\sup A, \sup B\}.$$
*Példa szigorú egyenlőtlenségre:*
Legyen $A = [0, 1] \cup [3, 4]$ és $B = [0, 1] \cup [5, 6]$.
Ekkor $\sup A = 4$ és $\sup B = 6$, így $\min\{\sup A, \sup B\} = 4$.
Ugyanakkor $A \cap B = [0, 1]$, amelynek szuprémuma $\sup(A \cap B) = 1$.
Mivel $1 < 4$, szigorú egyenlőtlenség áll fenn.

c) Mivel $A \setminus B \subset A$, minden $x \in A \setminus B$ esetén $x \in A \implies x \le \sup A$. Ezért $\sup A$ felső korlátja $A \setminus B$-nek, így valóban:
$$\sup(A \setminus B) \le \sup A.$$
*Egyenlőség vizsgálata:* Igen, lehetséges egyenlőség!
Például legyen $A = [0, 1)$ és $B = \{1/2\}$. Ekkor $A \setminus B = [0, 1/2) \cup (1/2, 1)$.
Itt $\sup(A \setminus B) = 1 = \sup A$.
Sőt, ha $A = [0, 2]$ és $B = \{2\}$, akkor $A \setminus B = [0, 2)$, így $\sup(A \setminus B) = 2 = \sup A$, miközben a $B$-beli $2$ elem szigorúan nagyobb az $A \setminus B$ halmaz minden eleménél!

::: elmelet
**Elméleti háttér — Halmazműveletek hatása a szuprémumra és infimumra.**

- **Monotonitási tulajdonság:** Ha $X \subset Y \subset \mathbb{R}$ nem üres halmazok, akkor:
  $$\inf Y \le \inf X \le \sup X \le \sup Y.$$
- **Egyesítés szuprémuma:** $\sup(A \cup B) = \max\{\sup A, \sup B\}$, végtelen családra $\sup\left(\bigcup A_i\right) = \sup_i (\sup A_i)$.
- **Metszet és különbség szuprémuma:** A metszet szuprémuma drasztikusan lecsökkenhet (mint a b) rész példájában), mivel a „felső” tartományok nem feltétlenül esnek egybe. A különbségből egyetlen pont (akár a maximum) elhagyása sem feltétlenül csökkenti a szuprémumot, ha az torlódási pontja a halmaznak.
:::

## Gy8.2. feladat

Legyenek $A, B \subset (0, \infty)$ nem üres, korlátos halmazok úgy, hogy $\inf A > 0$ és $\inf B > 0$. Jelölje:
$$A^{-1} = \left\{\frac{1}{a} : a \in A\right\}, \qquad \frac{A}{B} = \left\{\frac{a}{b} : a \in A,\ b \in B\right\}.$$

a) Bizonyítsuk be, hogy $\sup(A^{-1}) = \dfrac{1}{\inf A}$ és $\inf(A^{-1}) = \dfrac{1}{\sup A}$.

b) Fejezzük ki $\sup(A/B)$-t és $\inf(A/B)$-t a $\sup A, \inf A, \sup B, \inf B$ értékek segítségével!

c) Mutassuk meg, hogy ha $A \subset B$, akkor $\inf B \le \inf A \le \sup A \le \sup B$.

**Megoldás.**

a) Jelölje $\alpha = \inf A > 0$ és $\beta = \sup A < \infty$.
Mivel minden $a \in A$-ra $\alpha \le a \le \beta$, a reciprokfüggvény szigorú monoton csökkenése miatt a pozitív félegyenesen:
$$\frac{1}{\beta} \le \frac{1}{a} \le \frac{1}{\alpha}.$$
Ez mutatja, hogy $\frac{1}{\alpha}$ felső korlátja, $\frac{1}{\beta}$ pedig alsó korlátja $A^{-1}$-nek.
Megmutatjuk, hogy $\frac{1}{\alpha}$ a legkisebb felső korlát:
Legyen $\varepsilon > 0$ tetszőleges. Olyan $a \in A$-t keresünk, amelyre $\frac{1}{a} > \frac{1}{\alpha} - \varepsilon$.
Ez ekvivalens azzal, hogy $a < \frac{1}{1/\alpha - \varepsilon} = \frac{\alpha}{1 - \varepsilon \alpha} = \alpha + \frac{\varepsilon \alpha^2}{1 - \varepsilon \alpha}$.
Mivel $\alpha = \inf A$, a szuprémum/infimum definíciója szerint tetszőleges pozitív többlethez létezik ilyen $a \in A$.
Tehát valóban $\sup(A^{-1}) = \frac{1}{\inf A}$.
Teljesen analóg módon látható be, hogy $\inf(A^{-1}) = \frac{1}{\sup A}$. $\blacksquare$

b) Mivel $A$ és $B$ pozitív számokból állnak, az $\frac{a}{b}$ hányados felírható szorzatként: $a \cdot \frac{1}{b}$.
Így a halmaz megegyezik az $A \cdot B^{-1}$ halmazzal.
Pozitív korlátos halmazok szorzatának szuprémuma a szuprémumok szorzata:
$$\sup(A \cdot B^{-1}) = (\sup A) \cdot \sup(B^{-1}) = (\sup A) \cdot \frac{1}{\inf B} = \frac{\sup A}{\inf B}.$$
Hasonlóan az infimumra:
$$\inf(A \cdot B^{-1}) = (\inf A) \cdot \inf(B^{-1}) = (\inf A) \cdot \frac{1}{\sup B} = \frac{\inf A}{\sup B}.$$

c) Tegyük fel, hogy $A \subset B$.
- Mivel $\sup B$ felső korlátja $B$-nek, ezért minden $x \in B$-re $x \le \sup B$. Mivel $A \subset B$, minden $x \in A$-ra is $x \le \sup B$. Tehát $\sup B$ felső korlátja $A$-nak, így a legkisebb felső korlátnál nem lehet kisebb: $\sup A \le \sup B$.
- Hasonlóan, $\inf B$ alsó korlátja $B$-nek, így minden $x \in A \subset B$ esetén $\inf B \le x$. Tehát $\inf B$ alsó korlátja $A$-nak is, így a legnagyobb alsó korlátnál nem lehet nagyobb: $\inf B \le \inf A$.
- Végül mivel $A \ne \emptyset$, létezik $x_0 \in A$, amelyre $\inf A \le x_0 \le \sup A$, így $\inf A \le \sup A$.
A három egyenlőtlenséget összefűzve:
$$\inf B \le \inf A \le \sup A \le \sup B. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Reciprok és hányadoshalmazok szuprémuma.**

- **Feltételek fontossága:** A $\sup(A^{-1}) = \frac{1}{\inf A}$ összefüggéshez ELENGEDHETETLEN, hogy $\inf A > 0$ legyen. Ha például $A = (0, 1)$, akkor $\inf A = 0$, és $A^{-1} = (1, \infty)$, amely felülről nem korlátos ($\sup = +\infty$).
- **Monotonitás részhalmazra:** Ha a halmaz bővül ($A \subset B$), az infimum csak csökkenhet (vagy változatlan marad), a szuprémum csak növekedhet (vagy változatlan marad). A halmaz „kiterjedése” nő.
:::

## Gy9.1. feladat

Egy bolha ugrál a számegyenesen: a $0$ origóból indul, és minden lépésben egy rögzített, de ismeretlen $v \in \mathbb{N}$ pozitív egész sebességgel lép jobbra. Így az $n$-edik ugrás után ($n = 1, 2, \dots$) a helyzete pontosan:
$$x_n = n \cdot v.$$
Minden ugrás után lecsaphatunk egyetlen egész koordinátájú pontra.

a) Adjunk meg egy olyan explicit stratégiát, amellyel a bolhát véges sok lépésben biztosan lecsapjuk!

b) Tegyük fel, hogy előre tudjuk: a sebesség legfeljebb $M$, azaz $v \in \{1, 2, \dots, M\}$. Legfeljebb hány lépés szükséges a biztos lecsapáshoz az a) pontbeli stratégiával?

**Megoldás.**

a) Olyan pontsorozatot kell megadnunk az egyes lépésekben történő lecsapásra, amely bármely rögzített $v \in \mathbb{N}$ esetén valamely lépésben eléri a bolhát.
Jelölje $y_n$ azt a koordinátát, ahová az $n$-edik lépés után lecsapunk.
Válasszuk az alábbi stratégiát:
$$y_n = n^2 \quad (n = 1, 2, 3, \dots).$$
Vizsgáljuk meg, mi történik, ha a bolha ismeretlen sebessége egy konkrét $v \in \mathbb{N}$ szám:
- Az $n = 1$ lépésben a bolha a $1 \cdot v = v$ helyen áll, mi az $1^2 = 1$ helyre ütünk.
- Az $n = 2$ lépésben a bolha a $2v$ helyen áll, mi a $2^2 = 4$ helyre ütünk.
- Általánosan az $n$-edik lépésben a bolha koordinátája $x_n = n \cdot v$, míg a mi ütésünk koordinátája $y_n = n^2$.
Tekintsük az **$n = v$**-edik lépést!
Ekkor a bolha helyzete:
$$x_v = v \cdot v = v^2.$$
A mi lecsapásunk helye:
$$y_v = v^2.$$
Mivel $x_v = y_v$, a bolhát pontosan a $v$-edik lépésben lecsapjuk!
Mivel $v$ egy tetszőleges rögzített véges természetes szám, a lecsapás garantáltan véges sok ($v$ darab) lépésen belül megtörténik.

b) Ha tudjuk, hogy $v \in \{1, 2, \dots, M\}$, akkor a fenti stratégia szerint legkésőbb az $n = M$-edik lépésben a bolha elkapásra kerül (ha $v = M$, akkor az $M$-edik lépésben; ha $v < M$, akkor már korábban, az $n = v$-edik lépésben).
Tehát legfeljebb **$M$ lépés** szükséges a biztos lecsapáshoz.

::: elmelet
**Elméleti háttér — Megszámlálhatóság és diszkrét keresési stratégiák.**

- **A feladat matematikai lényege:** Az ismeretlen paraméterek halmaza megszámlálható ($\mathbb{N}$). Egy $n \mapsto y_n$ stratégia akkor sikeres, ha minden $v \in \mathbb{N}$ esetén létezik $n$, hogy $x_n(v) = y_n$. Az $y_n = n^2$ választás azért működik, mert a $v \cdot n = n^2$ egyenletnek $n = v \in \mathbb{N}$ mindig egész megoldása.
- **Általánosítás:** Ha a bolha kezdőpontja is ismeretlen lenne ($x_n = x_0 + n v$), a lehetséges állapotok halmaza $\mathbb{Z} \times \mathbb{N}$ vagy $\mathbb{Z} \times \mathbb{Z}$, ami szintén megszámlálható, így egy bijekció segítségével ugyanúgy lefedhető (lásd a következő feladatot).
:::

## Gy9.2. feladat

Tegyük fel, hogy a bolha a számegyenesen egy ismeretlen $x_0 \in \mathbb{Z}$ kezdőpontból indul, és minden lépésben egy ismeretlen egész értékű $v \in \mathbb{Z}$ sebességgel lép, így az $n$-edik lépés után a helyzete $x_n = x_0 + n \cdot v$ ($n = 1, 2, \dots$).

a) Bizonyítsuk be a halmazelmélet megszámlálhatósági tételei alapján, hogy létezik olyan lecsapási stratégia, amellyel a bolhát véges sok lépésben biztosan lecsapjuk!

b) Mi a helyzet, ha a bolha a sík rácspontjain mozog konstans rácsvektor-sebességgel:
$$(x_n, y_n) = (x_0 + n v_x, y_0 + n v_y), \quad \text{ahol } (x_0, y_0, v_x, v_y) \in \mathbb{Z}^4?$$

**Megoldás.**

a) A bolha mozgását egyértelműen meghatározza a rendezett párja: $(x_0, v) \in \mathbb{Z} \times \mathbb{Z}$.
Tudjuk, hogy két megszámlálható halmaz Descartes-szorzata megszámlálható, így $\mathbb{Z} \times \mathbb{Z}$ megszámlálhatóan végtelen halmaz.
Létezik tehát egy $\sigma : \mathbb{N} \to \mathbb{Z} \times \mathbb{Z}$ bijekció (sorbarendezés):
$$n \mapsto \sigma(n) = (x_0^{(n)}, v^{(n)}).$$
Konstruáljuk a stratégiánkat a következőképpen:
Az $n$-edik lépésben üssünk oda, ahol a bolha akkor tartózkodna, ha az eredeti paraméterpárja éppen az $n$-edik lehetőség, azaz $\sigma(n) = (x_0^{(n)}, v^{(n)})$ lenne:
$$y_n = x_0^{(n)} + n \cdot v^{(n)}.$$
Mivel a bolha valódi $(x_0, v)$ paraméterpárja eleme $\mathbb{Z} \times \mathbb{Z}$-nek, és a $\sigma$ leképezés szürjektív, létezik olyan $N \in \mathbb{N}$ index, amelyre:
$$\sigma(N) = (x_0, v), \quad \text{azaz } x_0^{(N)} = x_0 \text{ és } v^{(N)} = v.$$
Az $N$-edik lépésben a bolha valódi helyzete:
$$x_N = x_0 + N \cdot v.$$
A mi lecsapásunk helye az $N$-edik lépésben:
$$y_N = x_0^{(N)} + N \cdot v^{(N)} = x_0 + N \cdot v.$$
Tehát $y_N = x_N$, vagyis az $N$-edik lépésben a bolhát biztosan lecsapjuk! Mivel $N < \infty$, ez véges sok lépésben bekövetkezik.

b) A síkbeli esetben a lehetséges mozgásokat a kezdőpont és a sebességvektor négyese határozza meg:
$$(x_0, y_0, v_x, v_y) \in \mathbb{Z}^4 = \mathbb{Z} \times \mathbb{Z} \times \mathbb{Z} \times \mathbb{Z}.$$
Mivel véges sok megszámlálható halmaz Descartes-szorzata megszámlálható, $\mathbb{Z}^4$ is megszámlálhatóan végtelen.
Létezik tehát egy $\tau : \mathbb{N} \to \mathbb{Z}^4$ sorbarendezés:
$$n \mapsto \tau(n) = (x_0^{(n)}, y_0^{(n)}, v_x^{(n)}, v_y^{(n)}).$$
Ha az $n$-edik lépésben a sík $(x_0^{(n)} + n v_x^{(n)}, y_0^{(n)} + n v_y^{(n)})$ rácspontjára csapunk le, akkor amikor a sorbarendezés eléri a bolha valódi négyesét ($n = N$), a bolhát biztosan lecsapjuk.
A válasz tehát: **a síkon is létezik biztos nyerő stratégia.** $\blacksquare$

::: elmelet
**Elméleti háttér — Megszámlálható sok eset végigpróbálása és diagonális elv.**

- **Megszámlálhatóság alaptétele:** Ha $A$ és $B$ megszámlálható halmazok, akkor $A \times B$ is megszámlálható. Teljes indukcióval $A^k$ is megszámlálható tetszőleges rögzített $k \in \mathbb{N}$-re.
- **A „sorbarendezés” mint stratégia:** Ha egy diszkrét állapotteret leíró paramétertér megszámlálható, akkor sorba állítható: $P_1, P_2, P_3, \dots$. Ha a kereső minden lépésben a következő feltételezett paraméter aktuális pozícióját célozza meg, a helyes paraméterhez véges sok lépés múlva eljut, és a találat elkerülhetetlen.
- **Kontinuum eset buktatója:** Ha a sebesség vagy a pozíció folytonos valós szám lehetne ($v \in \mathbb{R}$), akkor $\mathbb{R}$ megszámlálhatatlansága miatt semmilyen megszámlálható lépéssorozat nem garantálhatná a találatot!
:::

## Gy10.1. feladat

A derékszögű koordinátarendszer első síknegyedében ($x \ge 0, y \ge 0$ egész rácspontok) az origóból indulva lépkedünk: minden lépésben $(1, 0)$ jobbra vagy $(0, 1)$ fel irányban lépünk egyet. Tegyük fel, hogy minden $n \ge 1$ esetén az $x + y = n$ átlón legfeljebb $1$ rácspont van eltorlaszolva (mérgezett pont).

Bizonyítsuk be a Kőnig-lemma (vagy gráfelméleti elérhetőség) segítségével, hogy létezik az origóból induló, végtelen hosszú akadálymentes útvonal!

**Megoldás.**

Tekintsük az origóból induló legális lépések által generált irányított gráfot.
Az $n$-edik szint csúcsai azon $(x, y)$ rácspontok, amelyekre $x \ge 0, y \ge 0$ és $x + y = n$.
Az $n$-edik szinten pontosan $n + 1$ darab rácspont van: $(0, n), (1, n-1), \dots, (n, 0)$.
Egy pontból az $(x+1, y)$ és $(x, y+1)$ pontokba vezet él (jobbra vagy fel).

1. *Elérhető pontok száma szintenként:*
Mutassuk meg teljes indukcióval, hogy minden $n \ge 0$ esetén az $n$-edik szinten legalább $n$ darab akadálymentes pont elérhető az origóból induló akadálymentes úton.
- $n = 0$: az origó $(0, 0)$ nem mérgezett (a feltétel $n \ge 1$-re vonatkozik), $1$ pont elérhető, $1 \ge 1$.
- Tegyük fel, hogy az $n$-edik szinten van legalább $1$ elérhető pont (sőt több is).
Ha az $n$-edik szinten egy $(x, y)$ pont elérhető, belőle két pont érhető el az $(n+1)$-edik szinten: $(x+1, y)$ és $(x, y+1)$.
Két szomszédos elérhető pont az $n$-edik szinten legalább $3$ különböző pontot ér el az $(n+1)$-edik szinten.
Mivel az $(n+1)$-edik szinten összesen $n+2$ pont van, és ezek közül legfeljebb $1$ pont van eltorlaszolva, a mérgezetlen pontok száma legalább $(n+2) - 1 = n+1 \ge 2$.
Könnyen belátható, hogy az elérhető pontok halmaza minden szinten nem üres: tetszőleges $n$-re létezik az origóból az $n$-edik szintre vezető akadálymentes út.

2. *Végtelen út létezése (Kőnig-lemma alkalmazása):*
Definiáljunk egy fát $T$-t:
- A fa gyökere az origó $(0, 0)$.
- A fa csúcsai azon tiszta (nem mérgezett) rácspontok, amelyek elérhetők az origóból induló akadálymentes úton.
- Egy $(x', y')$ pont gyereke $(x, y)$-nak, ha $(x', y') \in \{(x+1, y), (x, y+1)\}$.
Ez a fa:
- *Végtelen sok csúcsot tartalmaz:* hiszen minden $n$-re van legalább egy elérhető csúcs az $n$-edik szinten.
- *Lokálisan véges:* minden csúcsból legfeljebb $2$ él indul ki (jobbra és fel), így minden csúcs foka legfeljebb $3$ (véges).
A **Kőnig-lemma** szerint minden olyan összefüggő, lokálisan véges fában, amelynek végtelen sok csúcsa van, létezik végtelen egyszerű út!
Ez az út a gyökérből indulva végtelen sok szinten halad keresztül, és mivel a fa definíciója szerint csak akadálymentes pontokat tartalmaz, ez egy végtelen hosszú akadálymentes útvonal. $\blacksquare$

::: elmelet
**Elméleti háttér — A Kőnig-lemma és végtelen kombinatorikai struktúrák.**

- **Kőnig-lemma (Dénes Kőnig, 1927):** Legyen $T$ egy végtelen sok csúcsú összefüggő gráf (fa), amelyben minden csúcs foka véges (lokálisan véges). Ekkor a fában létezik végtelen hosszú egyszerű út.
- **Bizonyítási ötlet:** A gyökérből indulunk. Mivel a gyökérnek véges sok gyereke van, de az alatta lévő teljes részfa végtelen sok csúcsot tartalmaz, a skatulya-elv szerint legalább egy olyan gyereknek kell lennie, amelynek részfája szintén végtelen sok csúcsból áll. Ebbe a gyerekbe lépünk, és az eljárást végtelen sokszor ismételjük.
- **Analízisbeli párhuzam:** A Kőnig-lemma a Bolzano–Weierstrass-tétel diszkrét/gráfelméleti megfelelője: egy korlátos végtelen halmazból (véges fokú fa) mindig kiválasztható konvergens részsorozat (végtelen út).
:::

## Gy10.2. feladat

Tegyük fel, hogy a sík rácspontjain az origóból indulva lépkedünk jobbra $(1, 0)$ és fel $(0, 1)$ lépésekkel.

a) Határozzuk meg az origóból a $(k, n - k)$ rácspontba, illetve az $x + y = n$ átlóra vezető különböző monoton utak számát!

b) Tegyük fel, hogy a síkban véges sok pont mérgezett (vagy olyan ritkán helyezkednek el, hogy minden $N$-re létezik legalább egy $N$ hosszúságú akadálymentes út az origóból). Mutassuk meg részletesen a skatulya-elvvel, hogy létezik végtelen akadálymentes út!

**Megoldás.**

a) Az origóból $(0, 0)$ egy $(k, n - k)$ pontba vezető út pontosan $n$ darab lépésből áll, amelyek közül pontosan $k$ darab vízszintes $(1, 0)$ és $n - k$ darab függőleges $(0, 1)$ lépés.
Az ilyen sorozatok száma megegyezik azzal, hogy az $n$ pozíció közül hányféleképpen választhatjuk ki a vízszintes lépések helyét:
$$\binom{n}{k}.$$
Az $x + y = n$ egyenes pontjai a $(k, n - k)$ pontok, ahol $k = 0, 1, \dots, n$.
Mivel minden $n$ hosszúságú út pontosan egy ilyen pontban végződik, és minden lépésben $2$ lehetőségünk van, az $x + y = n$ átlóra vezető utak összes száma:
$$\sum_{k=0}^n \binom{n}{k} = 2^n.$$

b) Legyen $P_n$ az origóból induló, $n$ hosszú akadálytalan utak halmaza.
A feltevés szerint minden $n \in \mathbb{N}$ esetén $P_n \ne \emptyset$.
Jelölje $e_1$ és $e_2$ a két lehetséges első lépést: jobbra $(1, 0)$ vagy fel $(0, 1)$.
Minden $n \ge 1$-re egy $n$ hosszú út vagy $e_1$-gyel, vagy $e_2$-vel kezdődik.
Bontsuk fel $P_n$-et két diszjunkt részre az első lépés szerint:
$$P_n = P_n^{(1)} \cup P_n^{(2)}.$$
Tekintsük az összes lehetséges $n \in \mathbb{N}$ indexet. A végtelen sok $n$ index közül vagy végtelen sokra $P_n^{(1)} \ne \emptyset$, vagy végtelen sokra $P_n^{(2)} \ne \emptyset$ (skatulya-elv).
Válasszuk azt az első lépést (legyen ez $s_1$), amellyel kezdődően végtelen sok $n$-re létezik tetszőlegesen hosszú akadálytalan út.
Ekkor az $s_1$ pontból indulva a folyamat megismételhető: a második lépésre is két lehetőség van, és a skatulya-elv szerint legalább az egyik irányban továbbra is tetszőlegesen hosszú utak indíthatók.
Teljes indukcióval (vagy a Kőnig-lemma konstrukciójával) így egy végtelen lépéssorozatot kapunk:
$$s_1, s_2, s_3, \dots, s_n, \dots$$
amelynek minden véges kezdőszelete akadálymentes.
Ez a lépéssorozat egy végtelen akadálymentes útvonalat alkot. $\blacksquare$

::: elmelet
**Elméleti háttér — Kombinatorikus utak száma és a kompaktsági elv.**

- **Monoton rácsutak és binomiális együtthatók:** A rácson való mozgás modellje az analízis és valószínűségszámítás egyik legfontosabb diszkrét eszköze (bolyongások, Bernoulli-folyamatok). Az $n$ hosszú utak száma $2^n$.
- **Kompaktsági elv:** Ha tetszőlegesen hosszú véges megoldások léteznek egy lokálisan véges elágazási rendszerben, akkor létezik végtelen megoldás is. Ez az analízisben a Cantor-féle metszettételnek vagy a Heine–Borel-tételnek felel meg: zárt, beágyazott nem üres kompakt halmazok metszete nem üres.
:::

# A 2. feladatlaphoz

## Gy11.1. feladat

a) Mondjuk ki a Cantor-féle metszettételt, és bizonyítsuk be a valós számok szuprémum-tulajdonságának (teljességi axiómájának) felhasználásával!

b) Igazoljuk, hogy ha a zárt intervallumok hosszsorozata nullához tart, azaz $\lim_{n\to\infty} (b_n - a_n) = 0$, akkor a metszet pontosan egyetlen pontból áll!

**Megoldás.**

a) **Cantor-féle metszettétel:** Legyen $I_n = [a_n, b_n]$ korlátos és zárt intervallumok egymásba ágyazott sorozata, azaz $I_1 \supseteq I_2 \supseteq I_3 \supseteq \dots \supseteq I_n \supseteq \dots$ (ami azt jelenti, hogy $a_1 \le a_2 \le a_3 \le \dots \le b_3 \le b_2 \le b_1$). Ekkor az intervallumok metszete nem üres:
$$\bigcap_{n=1}^\infty I_n \ne \emptyset.$$

*Bizonyítás:*
Tekintsük az intervallumok bal végpontjainak $A = \{a_n : n \in \mathbb{N}\}$ halmazát.
Mivel minden $n, m \in \mathbb{N}$ esetén ha $n \le m$, akkor $a_n \le a_m \le b_m \le b_n$, és ha $m < n$, akkor $a_n \le b_n \le b_m$, ezért:
$$a_n \le b_m \quad \text{minden } n, m \in \mathbb{N} \text{ esetén}.$$
Ez azt jelenti, hogy bármely rögzített $m \in \mathbb{N}$-re a $b_m$ szám felső korlátja az $A$ halmaznak.
Mivel $A$ nem üres (tartalmazza például $a_1$-et) és felülről korlátos, a valós számok teljességi axiómája szerint létezik legkisebb felső korlátja:
$$\xi = \sup A \in \mathbb{R}.$$
Mivel $\xi$ felső korlátja $A$-nak, minden $n \in \mathbb{N}$-re $a_n \le \xi$.
Másrészt mivel minden $b_m$ felső korlátja $A$-nak, és $\xi$ a *legkisebb* felső korlát, ezért $\xi \le b_m$ minden $m \in \mathbb{N}$-re.
Így minden $n \in \mathbb{N}$ esetén:
$$a_n \le \xi \le b_n \iff \xi \in [a_n, b_n] = I_n.$$
Mivel $\xi$ minden $I_n$-nek eleme, eleme a közös metszetnek is: $\xi \in \bigcap_{n=1}^\infty I_n$, tehát a metszet valóban nem üres. $\blacksquare$

b) Tegyük fel továbbá, hogy $b_n - a_n \to 0$, és legyen $\xi, \eta \in \bigcap_{n=1}^\infty I_n$.
Ekkor minden $n \in \mathbb{N}$-re $\xi, \eta \in [a_n, b_n]$, amiből következik, hogy a két pont távolsága nem haladhatja meg az intervallum hosszát:
$$|\xi - \eta| \le b_n - a_n.$$
Mivel ez minden $n$-re fennáll és $b_n - a_n \to 0$, a rendőrelv alapján $|\xi - \eta| = 0$, azaz $\xi = \eta$.
Tehát a metszetben legfeljebb egy pont lehet, és mivel az a) rész szerint legalább egy van, pontosan egyetlen pontból áll: $\bigcap_{n=1}^\infty I_n = \{\xi\}$. $\blacksquare$

::: elmelet
**Elméleti háttér — A Cantor-féle metszettétel és a teljesség.**

- **A feltételek kritikus szerepe:**
  1. *Zártság:* Ha az intervallumok nyíltak, a metszet lehet üres, pl. $\bigcap_{n=1}^\infty (0, 1/n) = \emptyset$.
  2. *Korlátosság:* Ha az intervallumok zártak, de nem korlátosak, a metszet szintén lehet üres, pl. $\bigcap_{n=1}^\infty [n, \infty) = \emptyset$.
- **Kompaktság:** A valós analízisben egy halmaz pontosan akkor kompakt, ha korlátos és zárt (Heine–Borel-tétel). A Cantor-tétel a kompakt halmazok beágyazott láncaira vonatkozó véges metszet tulajdonság legegyszerűbb esete.
:::

## Gy11.2. feladat

Vizsgáljuk meg az alábbi halmazsorozatok metszetét! Állapítsuk meg, hogy melyik feltétel nem teljesül a Cantor-féle metszettétel feltetelei közül, és adjuk meg a metszeteket:

a) $I_n = \left(0, \frac{1}{n}\right]$;

b) $J_n = [n, +\infty)$;

c) $K_n = \left(1 - \frac{1}{n}, 1 + \frac{1}{n}\right)$.

**Megoldás.**

a) Az $I_n = \left(0, \frac{1}{n}\right]$ intervallumok egymásba ágyazottak, hiszen ha $n \le m$, akkor $\frac{1}{m} \le \frac{1}{n}$, így $I_m \subseteq I_n$.
A halmazok korlátosak, de **nem zártak** (balról nyíltak, a $0$ nem tartozik hozzájuk).
*Metszet:* Tegyük fel, hogy $x \in \bigcap_{n=1}^\infty I_n$. Ekkor minden $n \in \mathbb{N}$-re $0 < x \le \frac{1}{n}$.
Mivel $x > 0$, az arkhimédészi tulajdonság szerint létezik olyan $N \in \mathbb{N}$, amelyre $\frac{1}{N} < x$. Ekkor azonban $x \notin I_N = (0, 1/N]$, ami ellentmondás!
Mivel nemlétezik ilyen valós szám:
$$\bigcap_{n=1}^\infty I_n = \emptyset.$$

b) A $J_n = [n, +\infty)$ intervallumok egymásba ágyazottak és zártak, de **nem korlátosak** (félegyenesek).
*Metszet:* Ha létezne $x \in \bigcap_{n=1}^\infty J_n$, akkor minden $n \in \mathbb{N}$-re $x \ge n$ kellene, hogy teljesüljön.
Ez azt jelentené, hogy $x$ felső korlátja a természetes számok $\mathbb{N}$ halmazának. Az arkhimédészi tulajdonság szerint azonban $\mathbb{N}$ felülről nem korlátos valós számokkal, így ilyen $x$ nem létezik.
Ezért:
$$\bigcap_{n=1}^\infty J_n = \emptyset.$$

c) A $K_n = \left(1 - \frac{1}{n}, 1 + \frac{1}{n}\right)$ intervallumok nyíltak, korlátosak, és egymásba ágyazottak:
$$1 - \frac{1}{n} < 1 - \frac{1}{n+1} < 1 + \frac{1}{n+1} < 1 + \frac{1}{n}.$$
Itt a halmazok **nem zártak**, mégis vizsgáljuk meg a metszetet:
Minden $n \in \mathbb{N}$-re $1 - \frac{1}{n} < 1 < 1 + \frac{1}{n}$, tehát $1 \in K_n$ minden $n$-re, így $1 \in \bigcap_{n=1}^\infty K_n$.
Ha $x \ne 1$, akkor $|x - 1| > 0$. Az arkhimédészi tulajdonság miatt van olyan $N$, hogy $\frac{1}{N} \le |x - 1|$, így $x \notin K_N$.
Tehát a metszet pontosan az $1$ egyelemű halmaza:
$$\bigcap_{n=1}^\infty K_n = \{1\}.$$
(Tanulság: ha egy tétel feltétele nem teljesül, az állítás nem feltétlenül bukik el, csupán a garancia vész el!)

::: elmelet
**Elméleti háttér — A Cantor-tétel feltételeinek elengedése és ellenpéldák.**

- **Miért szükséges a zártság?** A határpontok „kicsúszhatnak” a nyílt halmazokból. Ha az egyetlen közös pont a határra esne (mint az a) részben a $0$), de a halmaz nem tartalmazza azt, a metszet üressé válik.
- **Miért szükséges a korlátosság?** A pontok „elszökhetnek a végtelenbe” (b) rész), ha a halmaz nem korlátos.
- **Kompaktság = Zárt és Korlátos ($\mathbb{R}$-ben):** E két feltétel együttesen garantálja a topológiai kompaktságot, amely a metszettétel valódi háttere.
:::

## Gy12.1. feladat

a) Bizonyítsuk be a számelmélet alaptételének felhasználásával, hogy $\log_2 10$ irracionális!

b) Döntsük el, hogy $\log_8 16$ racionális vagy irracionális, és határozzuk meg a pontos értékét!

c) Bizonyítsuk be, hogy $\log_6 9$ irracionális!

**Megoldás.**

a) Tegyük fel indirekt, hogy $\log_2 10 \in \mathbb{Q}$.
Mivel $10 > 2^1$, $\log_2 10 > 1 > 0$, így felírható két pozitív egész hányadosaként:
$$\log_2 10 = \frac{p}{q}, \quad p, q \in \mathbb{N}.$$
A logaritmus definíciója szerint ez ekvivalens az alábbi hatványegyenlőséggel:
$$2^{p/q} = 10 \iff 2^p = 10^q.$$
Bontsuk fel a jobb oldalt prímtényezőkre: $10^q = (2 \cdot 5)^q = 2^q \cdot 5^q$. Ekkor:
$$2^p = 2^q \cdot 5^q \iff 2^{p-q} = 5^q.$$
Mivel $p/q = \log_2 10 > \log_2 8 = 3$, $p > 3q > q$, így $p - q \ge 1$ pozitív egész.
A bal oldal prímtényezős felbontásában csak a $2$-es prím szerepel, így osztható $2$-vel. A jobb oldal $5^q$, amely páratlan szám (csak az $5$-ös prím osztója).
A számelmélet alaptétele szerint a prímfelbontás egyértelmű, így páros szám nem lehet egyenlő páratlan számmal.
Ez az ellentmondás igazolja, hogy $\log_2 10$ irracionális. $\blacksquare$

b) Fejezzük ki a számokat $2$ hatványaként:
$$8 = 2^3, \qquad 16 = 2^4.$$
A logaritmus alapváltási és hatványozási szabályai szerint:
$$\log_8 16 = \frac{\log_2 16}{\log_2 8} = \frac{4}{3}.$$
Mivel $\frac{4}{3}$ két egész szám hányadosa, **$\log_8 16$ racionális szám**, értéke $\frac{4}{3}$.

c) Tegyük fel indirekt, hogy $\log_6 9 = \frac{p}{q}$ ($p, q \in \mathbb{N}$).
Ekkor:
$$6^{p/q} = 9 \iff 6^p = 9^q \iff (2 \cdot 3)^p = (3^2)^q \iff 2^p \cdot 3^p = 3^{2q}.$$
Rendezzük a prímhatványokat:
$$2^p = 3^{2q - p}.$$
Mivel $9 > 6^1$, $\log_6 9 > 1$, ezért $p > q \ge 1$. Tehát a bal oldal $2^p$, ami $2$-vel osztható egész szám (páros).
A jobb oldalon $3$ hatványa áll.
- Ha $2q - p > 0$, akkor a jobb oldal osztható $3$-mal, de páratlan, így nem lehet egyenlő a bal oldali $2$-hatvánnyal.
- Ha $2q - p = 0$, akkor a jobb oldal $3^0 = 1$, de a bal oldal $2^p \ge 2^1 = 2 \ne 1$.
- Ha $2q - p < 0$, a jobb oldal nem is egész szám.
Minden esetben ellentmondásra jutunk a prímfelbontás egyértelműsége miatt.
Tehát $\log_6 9$ irracionális. $\blacksquare$

::: elmelet
**Elméleti háttér — Logaritmusok racionális volta és prímfelbontás.**

- **Általános tétel:** Legyenek $a, b \in \mathbb{N} \setminus \{1\}$. A $\log_a b$ szám pontosan akkor racionális, ha létezik olyan $c \in \mathbb{N}$ alap és $k, m \in \mathbb{N}$ kitevők, amelyekre $a = c^k$ és $b = c^m$. Ekkor $\log_a b = \frac{m}{k}$.
- **Alapváltás képlete:** $\log_a b = \frac{\log_c b}{\log_c a}$. Ezzel közös alapra térve a prímfelbontás vizsgálata azonnal adja a racionális vagy irracionális jelleget.
:::

## Gy12.2. feladat

a) Bizonyítsuk be általánosan, hogy ha $p$ és $q$ két különböző prímszám, akkor $\log_p q$ szükségképpen irracionális!

b) Mutassunk példát olyan $a, b \in \mathbb{R} \setminus \mathbb{Q}$ irracionális számokra, amelyekre a $\log_a b$ kifejezés racionális!

**Megoldás.**

a) Tegyük fel indirekt, hogy $\log_p q \in \mathbb{Q}$.
Mivel $p, q \ge 2$, $\log_p q > 0$, így írható $\log_p q = \frac{m}{n}$ alakban, ahol $m, n \in \mathbb{N}$ pozitív egészek.
A logaritmus definíciója szerint:
$$p^{m/n} = q \iff p^m = q^n.$$
Mivel $m \ge 1$, a bal oldal osztható a $p$ prímszámmal: $p \mid p^m \implies p \mid q^n$.
A prímszámok alaptulajdonsága (Eukleidész-lemma) szerint ha egy prím oszt egy szorzatot, akkor osztja valamelyik tényezőt, így $p \mid q^n \implies p \mid q$.
Mivel azonban $q$ is prímszám, egyetlen pozitív osztói $1$ és $q$. Mivel $p > 1$, ebből szükségképpen $p = q$ következne.
Ez azonban ellentmond a feltevésnek, miszerint $p$ és $q$ *különböző* prímek!
Az ellentmondás bizonyítja, hogy $\log_p q$ valóban irracionális. $\blacksquare$

b) Keressünk olyan irracionális $a$ és $b$ számokat, amelyek ugyanannak az irracionális számnak racionális hatványai.
Legyen például:
$$a = \sqrt{2}, \qquad b = \sqrt{8} = 2\sqrt{2}.$$
Mindkettő irracionális szám. Ugyanakkor:
$$b = \sqrt{8} = (2^3)^{1/2} = (2^{1/2})^3 = (\sqrt{2})^3 = a^3.$$
Ennélfogva a definíció szerint:
$$\log_a b = \log_{\sqrt{2}} (\sqrt{2})^3 = 3 \in \mathbb{Q}.$$
Egy másik egyszerű példa: $a = \sqrt{3} \notin \mathbb{Q}$, $b = 3 \notin \mathbb{Q}$ helyett $b = 3\sqrt{3} = (\sqrt{3})^3 \notin \mathbb{Q}$, ekkor $\log_{\sqrt{3}}(3\sqrt{3}) = 3 \in \mathbb{Q}$.
Sőt, még egyszerűbb: $a = \sqrt{2}$, $b = \sqrt{2}$, ekkor $\log_a b = 1 \in \mathbb{Q}$.

::: elmelet
**Elméleti háttér — Prímtulajdonság és logaritmus alapú transzcendencia.**

- **Eukleidész lemmája:** Ha $p$ prímszám és $p \mid ab$, akkor $p \mid a$ vagy $p \mid b$. Ez a számelmélet alaptételének kulcslépése.
- **Irracionális hatványok és logaritmusok:** Bár $\log_a b$ lehet racionális irracionális $a, b$-re (ha $b = a^r$, $r \in \mathbb{Q}$), ha $a$ és $b$ „függetlenek” (pl. algebrailag független transzcendens számok, vagy különböző prímalapú algebrai számok), a kifejezés irracionális, sőt transzcendens (Baker-tétel).
:::

## Gy13.1. feladat

Legyen $A = (a_{i, j}) \in \mathbb{R}^{n \times m}$ egy valós mátrix.

a) Bizonyítsuk be az általános diszkrét minimax egyenlőtlenséget:
$$\max_{1 \le i \le n} \min_{1 \le j \le m} a_{i, j} \le \min_{1 \le j \le m} \max_{1 \le i \le n} a_{i, j}.$$

b) Mutassunk példát olyan $2 \times 2$-es mátrixra, ahol szigorú egyenlőtlenség áll fenn!

c) Mikor áll fenn egyenlőség? Fogalmazzuk meg a nyeregpont fogalmát!

**Megoldás.**

a) Jelölje $u_i = \min_{1 \le j \le m} a_{i, j}$ az $i$-edik sor minimumát, és $v_j = \max_{1 \le i \le n} a_{i, j}$ a $j$-edik oszlop maximumát.
A definíciók miatt tetszőleges $i \in \{1, \dots, n\}$ és $j \in \{1, \dots, m\}$ indexpárra:
$$u_i \le a_{i, j} \le v_j.$$
Ez az egyenlőtlenség azt mutatja, hogy *bármelyik* sor minimuma kisebb vagy egyenlő, mint *bármelyik* oszlop maximuma:
$$u_i \le v_j \quad \forall i, j.$$
Rögzítsük a $j$ indexet, és vegyük a bal oldal maximumát az összes $i$ szerint:
$$\max_{1 \le i \le n} u_i \le v_j.$$
Mivel ez az egyenlőtlenség minden $j$-re teljesül, a jobb oldal minimumát véve az összes $j$ szerint:
$$\max_{1 \le i \le n} u_i \le \min_{1 \le j \le m} v_j.$$
Behelyettesítve $u_i$ és $v_j$ definícióját, pontosan a kívánt minimax egyenlőtlenséget kapjuk:
$$\max_{1 \le i \le n} \min_{1 \le j \le m} a_{i, j} \le \min_{1 \le j \le m} \max_{1 \le i \le n} a_{i, j}. \quad \blacksquare$$

b) Tekintsük az alábbi $2 \times 2$-es mátrixot:
$$A = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}.$$
- Soronkénti minimumok:
  - 1. sor: $\min\{1, 0\} = 0$
  - 2. sor: $\min\{0, 1\} = 0$
  A soronkénti minimumok maximuma: $\max\{0, 0\} = 0$.
- Oszloponkénti maximumok:
  - 1. oszlop: $\max\{1, 0\} = 1$
  - 2. oszlop: $\max\{0, 1\} = 1$
  Az oszloponkénti maximumok minimuma: $\min\{1, 1\} = 1$.
Mivel $0 < 1$, szigorú egyenlőtlenség áll fenn!

c) Egyenlőség pontosan akkor áll fenn, ha a mátrixnak van **nyeregpontja**.
Egy $(i^*, j^*)$ pozíció nyeregpont, ha az $a_{i^*, j^*}$ elem egyszerre minimális a saját sorában és maximális a saját oszlopában:
$$a_{i, j^*} \le a_{i^*, j^*} \le a_{i^*, j} \quad \forall i, j.$$
Ekkor a közös érték pontosan $a_{i^*, j^*} = \max_i \min_j a_{i, j} = \min_j \max_i a_{i, j}$.

::: elmelet
**Elméleti háttér — A minimax elv és a játékelméleti alapok.**

- **Szemléletes jelentés (Neumann János tétele):** Kétszemélyes zéró összegű játékban az egyik játékos minimalizálni akarja a veszteségét, a másik maximalizálni a nyereségét. A tétel szerint a biztonsági stratégiák garanciája mindig $\le$ a másik játékos optimális eredményénél.
- **Általános függvényekre:** Bármely $f : X \times Y \to \mathbb{R}$ kétváltozós függvényre igaz, hogy $\sup_{x} \inf_y f(x, y) \le \inf_y \sup_x f(x, y)$. A bizonyítás szóról szóra ugyanaz: $\inf_y f(x, y) \le f(x, y) \le \sup_x f(x, y)$.
:::

## Gy13.2. feladat

Legyen $f(x, y) = (x - y)^2$ az egységngyzeten értelmezve: $x, y \in [0, 1]$.

Számítsuk ki expliciten a
$$\min_{x \in [0, 1]} \max_{y \in [0, 1]} (x - y)^2 \qquad \text{és} \qquad \max_{y \in [0, 1]} \min_{x \in [0, 1]} (x - y)^2$$
értékeket! Értelmezzük az eredményt a minimax egyenlőtlenség fényében!

**Megoldás.**

1. *Számítsuk ki a $\max_{y \in [0, 1]} \min_{x \in [0, 1]} (x - y)^2$ értéket:*
Tetszőleges rögzített $y \in [0, 1]$ esetén keressük azt az $x \in [0, 1]$ értéket, amelyre $(x - y)^2$ minimális.
Mivel választhatjuk az $x = y \in [0, 1]$ pontot, a minimum értéke minden $y$-ra:
$$\min_{x \in [0, 1]} (x - y)^2 = (y - y)^2 = 0.$$
Ezután véve a maximumot $y$ szerint:
$$\max_{y \in [0, 1]} \big(0\big) = 0.$$

2. *Számítsuk ki a $\min_{x \in [0, 1]} \max_{y \in [0, 1]} (x - y)^2$ értéket:*
Rögzített $x \in [0, 1]$ mellett vizsgáljuk a $g(y) = (x - y)^2$ függvény maximumát az $y \in [0, 1]$ zárt intervallumon.
A $g(y)$ konvex parabola, maximumát a tartomány végpontjaiban ($y = 0$ vagy $y = 1$) veszi fel:
$$g(0) = x^2, \qquad g(1) = (1 - x)^2.$$
Így a belső maximum értéke:
$$M(x) = \max_{y \in [0, 1]} (x - y)^2 = \max\{x^2, (1 - x)^2\}.$$
- Ha $0 \le x \le \frac{1}{2}$, akkor $x^2 \le (1 - x)^2$, így $M(x) = (1 - x)^2$, ami monoton csökken, legkisebb értéke $x = \frac{1}{2}$-nél: $\left(1 - \frac{1}{2}\right)^2 = \frac{1}{4}$.
- Ha $\frac{1}{2} \le x \le 1$, akkor $x^2 \ge (1 - x)^2$, így $M(x) = x^2$, ami monoton nő, legkisebb értéke $x = \frac{1}{2}$-nél: $\left(\frac{1}{2}\right)^2 = \frac{1}{4}$.
Tehát az $M(x)$ függvény a minimumát $x = \frac{1}{2}$-nél éri el:
$$\min_{x \in [0, 1]} \max_{y \in [0, 1]} (x - y)^2 = \frac{1}{4}.$$

3. *Összevetés:*
Azt kaptuk, hogy:
$$\max_{y} \min_{x} f(x, y) = 0 < \frac{1}{4} = \min_{x} \max_{y} f(x, y).$$
Ez összhangban van a minimax tétellel, és a szigorú egyenlőtlenség ($0 < \frac{1}{4}$) azt tükrözi, hogy a függvénynek nincs nyeregpontja az egységngyzeten.

::: elmelet
**Elméleti háttér — Folytonos minimax feladatok és geometriai szemlélet.**

- **Csebisev-féle approximációs elv:** A $\min_x \max_y (x - y)^2$ feladat azt kérdezi: melyik az a pont az intervallumban, amely a legtávolabbi ponttól vett távolságát tekintve a legközelebb van? Ez nyilván az intervallum felezőpontja ($x = 1/2$), ahol a maximális hiba $(1/2)^2 = 1/4$.
- **Műveleti sorrend jelentősége:** $\max_y \min_x$ azt jelenti: a második játékos lép előbb, az első már ismeri $y$-t és optimálisan válaszolhat ($x=y$). Ezzel szemben $\min_x \max_y$-nál az első játékos lép először, a második kihasználhatja a döntését a legtávolabbi végpont választásával.
:::

## Gy14.1. feladat

a) Bizonyítsuk be, hogy ha egy nem üres $H \subset \mathbb{R}$ halmaznak létezik szuprémuma, akkor az szükségképpen egyértelmű!

b) Igazoljuk, hogy ha $H \subset \mathbb{R}$ nem üres és alulról korlátos, akkor létezik infimuma, és
$$\inf H = -\sup(-H), \quad \text{ahol } -H = \{-x : x \in H\}.$$

**Megoldás.**

a) Tegyük fel indirekt, hogy $S_1$ és $S_2$ mindketten szuprémumai a $H$ halmaznak, és $S_1 \ne S_2$.
Az általánosság korlátozása nélkül feltehető, hogy $S_1 < S_2$.
Mivel $S_2 = \sup H$, $S_2$ a *legkisebb* felső korlátja $H$-nak.
Ugyanakkor $S_1$ a feltétel szerint szuprémum, tehát mindenekelőtt felső korlátja $H$-nak.
Ekkor azonban találtunk egy olyan felső korlátot ($S_1$-et), amely szigorúan kisebb, mint a legkisebb felső korlát ($S_2$), azaz $S_1 < S_2$, ami nyilvánvaló ellentmondás!
Ez az ellentmondás bizonyítja, hogy nem létezhet két különböző szuprémum, vagyis $\sup H$ egyértelmű. $\blacksquare$

b) Legyen $H \subset \mathbb{R}$ nem üres és alulról korlátos.
Ez azt jelenti, hogy létezik $K \in \mathbb{R}$ alsó korlát: $K \le x$ minden $x \in H$-ra.
Szorozzuk be ezt az egyenlőtlenséget $(-1)$-gyel:
$$-x \le -K \quad \forall x \in H.$$
Ez pontosan azt jelenti, hogy a $-H = \{-x : x \in H\}$ halmaz minden eleme kisebb vagy egyenlő, mint $-K$, tehát $-H$ felülről korlátos halmaz (egy felső korlátja $-K$).
Mivel $H \ne \emptyset$, ezért $-H \ne \emptyset$.
A valós számok szuprémum-axiómája szerint létezik $M = \sup(-H) \in \mathbb{R}$.
Megmutatjuk, hogy $-M$ a $H$ halmaz infimuma:
1. *Alsó korlát:* Mivel $M = \sup(-H)$, minden $y \in -H$-ra $y \le M$. Mivel $y = -x$ ($x \in H$), ezért $-x \le M \iff x \ge -M$ minden $x \in H$-ra. Tehát $-M$ valóban alsó korlátja $H$-nak.
2. *Legnagyobb alsó korlát:* Tegyük fel, hogy $k$ tetszőleges alsó korlátja $H$-nak, azaz $k \le x$ minden $x \in H$-ra. Ekkor $-x \le -k$ minden $-x \in -H$-ra, vagyis $-k$ felső korlátja $-H$-nak.
Mivel $M$ a legkisebb felső korlátja $-H$-nak, $M \le -k \iff k \le -M$.
Ez azt jelenti, hogy $-M$-nél nem létezik nagyobb alsó korlát.
Tehát $-M = \inf H$, amiből $\inf H = -\sup(-H)$. $\blacksquare$

::: elmelet
**Elméleti háttér — A szuprémum egyértelműsége és a tükrözési elv.**

- **Szuprémum egyértelműsége:** A rendezési axiómák közvetlen következménye (antiszimmetria: ha $a \le b$ és $b \le a$, akkor $a = b$).
- **Tükrözési elv (dualitás):** Az analízisben minden alsó becslésre, infimumra vonatkozó tétel átfordítható felső becslésre, szuprémumra a $x \mapsto -x$ tükrözéssel. Ezért elég az elméletben a szuprémum-axiómát kimondani, az infimum létezése már tételként adódik.
:::

## Gy14.2. feladat

Legyen $H \subset \mathbb{R}$ nem üres, korlátos halmaz. Definiáljuk a $H$ halmaz átmérőjét az alábbi módon:
$$\operatorname{diam}(H) = \sup \{|x - y| : x, y \in H\}.$$

Bizonyítsuk be, hogy $\operatorname{diam}(H) = \sup H - \inf H$.

**Megoldás.**

Jelölje $\alpha = \inf H$ és $\beta = \sup H$. Mivel $H$ korlátos, $\alpha, \beta \in \mathbb{R}$ véges számok, és $\alpha \le \beta$.
1. *Felső becslés:*
Tetszőleges $x, y \in H$ esetén a szuprémum és infimum definíciója miatt:
$$\alpha \le x \le \beta \qquad \text{és} \qquad \alpha \le y \le \beta.$$
Ebből következik, hogy:
$$x - y \le \beta - \alpha \qquad \text{és} \qquad y - x \le \beta - \alpha.$$
Így az abszolút értékre:
$$|x - y| \le \beta - \alpha = \sup H - \inf H.$$
Mivel ez minden $x, y \in H$-ra teljesül, a jobb oldal felső korlátja az $\{|x - y| : x, y \in H\}$ halmaznak.
Ezért:
$$\operatorname{diam}(H) = \sup \{|x - y| : x, y \in H\} \le \sup H - \inf H.$$

2. *Alsó becslés (legkisebb felső korlát tulajdonság):*
Legyen $\varepsilon > 0$ tetszőleges kicsiny pozitív szám.
- A szuprémum definíciója szerint létezik $x_0 \in H$, amelyre $x_0 > \sup H - \frac{\varepsilon}{2}$.
- Az infimum definíciója szerint létezik $y_0 \in H$, amelyre $y_0 < \inf H + \frac{\varepsilon}{2}$.
Ekkor e két kiválasztott pont különbsége:
$$x_0 - y_0 > \left(\sup H - \frac{\varepsilon}{2}\right) - \left(\inf H + \frac{\varepsilon}{2}\right) = \sup H - \inf H - \varepsilon.$$
Mivel $|x_0 - y_0| \ge x_0 - y_0$, ezért:
$$|x_0 - y_0| > \sup H - \inf H - \varepsilon.$$
Találtunk tehát olyan $x_0, y_0 \in H$ elemeket, amelyek távolsága meghaladja a $(\sup H - \inf H) - \varepsilon$ értéket.
Ez azt jelenti, hogy $\sup H - \inf H$-nál kisebb szám nem lehet felső korlátja az eltérések halmazának.
Így szükségképpen:
$$\operatorname{diam}(H) \ge \sup H - \inf H.$$

A két egyenlőtlenségből azonnal adódik az egyenlőség:
$$\operatorname{diam}(H) = \sup H - \inf H. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Halmazok átmérője és metrikus tulajdonságok.**

- **Metrikus átmérő:** Bármely metrikus térben definiálható $\operatorname{diam}(H) = \sup_{x, y \in H} d(x, y)$. A valós számegyenesen a rendezés miatt az átmérő pontosan a két szélső érték távolsága.
- **$\varepsilon/2$ trükk:** Ha két független mennyiség egyidejű közelítésére van szükség, az $\varepsilon$ hibakorlátot kétfelé osztjuk ($\varepsilon/2 + \varepsilon/2 = \varepsilon$), így a kettő eredő hibája garantáltan $\varepsilon$ alatt marad.
:::

## Gy15.1. feladat

a) Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenséggel, hogy minden $x > 0$ valós számra:
$$x^3 + \frac{2}{x\sqrt{x}} \ge 3.$$
Mikor áll fenn egyenlőség?

b) Igazoljuk, hogy minden $a, b, c \in \mathbb{R}$ valós számra fennáll:
$$a^4 + b^4 + c^4 \ge abc(a + b + c).$$

**Megoldás.**

a) Írjuk át a második tagot: $\frac{2}{x\sqrt{x}} = \frac{2}{x^{3/2}} = \frac{1}{x^{3/2}} + \frac{1}{x^{3/2}}$.
Bontsuk fel a bal oldalt három darab pozitív tag összegére:
$$x^3 + \frac{2}{x\sqrt{x}} = x^3 + \frac{1}{x^{3/2}} + \frac{1}{x^{3/2}}.$$
Alkalmazzuk a háromtagú számtani és mértani közepek közötti egyenlőtlenséget ($A_3 \ge G_3$):
$$\frac{x^3 + \frac{1}{x^{3/2}} + \frac{1}{x^{3/2}}}{3} \ge \sqrt[3]{x^3 \cdot \frac{1}{x^{3/2}} \cdot \frac{1}{x^{3/2}}} = \sqrt[3]{\frac{x^3}{x^3}} = \sqrt[3]{1} = 1.$$
Mindkét oldalt $3$-mal megszorozva kapjuk:
$$x^3 + \frac{2}{x\sqrt{x}} \ge 3.$$
*Egyenlőség feltétele:* A számtani-mértani egyenlőtlenségben pontosan akkor van egyenlőség, ha a tagok mind egyenlők:
$$x^3 = \frac{1}{x^{3/2}} \iff x^{9/2} = 1 \iff x = 1.$$
Mivel $x = 1$-re a bal oldal $1^3 + \frac{2}{1} = 3$, az egyenlőség valóban pontosan $x = 1$ esetén teljesül. $\blacksquare$

b) Tudjuk, hogy tetszőleges $u, v, w \in \mathbb{R}$ valós számokra:
$$u^2 + v^2 + w^2 \ge uv + vw + wu,$$
hiszen $2(u^2 + v^2 + w^2 - uv - vw - wu) = (u - v)^2 + (v - w)^2 + (w - u)^2 \ge 0$.
Alkalmazzuk ezt az egyenlőtlenséget az $u = a^2, v = b^2, w = c^2$ választással:
$$a^4 + b^4 + c^4 = (a^2)^2 + (b^2)^2 + (c^2)^2 \ge a^2b^2 + b^2c^2 + c^2a^2.$$
Most alkalmazzuk ugyanezt az egyenlőtlenséget az $u' = ab, v' = bc, w' = ca$ számokra:
$$(ab)^2 + (bc)^2 + (ca)^2 \ge (ab)(bc) + (bc)(ca) + (ca)(ab) = ab^2c + bc^2a + ca^2b = abc(b + c + a).$$
A két egyenlőtlenséget láncba fűzve:
$$a^4 + b^4 + c^4 \ge a^2b^2 + b^2c^2 + c^2a^2 \ge abc(a + b + c).$$
Ezzel az állítást minden valós $a, b, c$-re igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Számtani-mértani közép és szimmetrikus egyenlőtlenségek.**

- **Számtani és mértani közép közötti egyenlőtlenség (AM–GM):** Nemnegatív $x_1, \dots, x_n$ számokra:
  $$\frac{x_1 + \dots + x_n}{n} \ge \sqrt[n]{x_1 \dots x_n},$$
  egyenlőség $\iff x_1 = \dots = x_n$.
- **Tagok szétbontása a változók kiejtéséhez:** Ha az összegben a változók különböző hatványon szerepelnek (itt $x^3$ és $x^{-3/2}$), a tagokat úgy kell feldarabolni azonos súlyú részekre, hogy a szorzatukban a változó kiejtse egymást ($3 = \frac{3}{2} + \frac{3}{2}$).
:::

## Gy15.2. feladat

a) Mutassuk meg, hogy tetszőleges $a, b > 0$ esetén $\dfrac{a}{b} + \dfrac{b}{a} \ge 2$, és pontosan mikor áll fenn egyenlőség!

b) Bizonyítsuk be, hogy ha $a, b, c > 0$ és $abc = 1$, akkor
$$(a + 1)(b + 1)(c + 1) \ge 8.$$

**Megoldás.**

a) Kétféleképpen is igazolhatjuk:
1. *Teljes négyzetté alakítással:*
$$\frac{a}{b} + \frac{b}{a} - 2 = \frac{a^2 + b^2 - 2ab}{ab} = \frac{(a - b)^2}{ab}.$$
Mivel $a, b > 0$, a nevező $ab > 0$. A számláló valós szám négyzete, így $(a - b)^2 \ge 0$.
Ezért a tört értéke $\ge 0$, amiből $\frac{a}{b} + \frac{b}{a} \ge 2$.
Egyenlőség pontosan akkor áll fenn, ha a számláló $0$, azaz $a = b$.
2. *AM–GM egyenlőtlenséggel:*
$$\frac{\frac{a}{b} + \frac{b}{a}}{2} \ge \sqrt{\frac{a}{b} \cdot \frac{b}{a}} = \sqrt{1} = 1 \implies \frac{a}{b} + \frac{b}{a} \ge 2.$$
Egyenlőség $\iff \frac{a}{b} = \frac{b}{a} \iff a^2 = b^2 \iff a = b$ (mivel pozitívak).

b) Alkalmazzuk a kéttagú számtani-mértani közép egyenlőtlenséget mindhárom tényezőre külön-külön:
$$a + 1 \ge 2\sqrt{a \cdot 1} = 2\sqrt{a},$$
$$b + 1 \ge 2\sqrt{b \cdot 1} = 2\sqrt{b},$$
$$c + 1 \ge 2\sqrt{c \cdot 1} = 2\sqrt{c}.$$
Mivel mindkét oldal pozitív, az egyenlőtlenségek összeszorozhatók:
$$(a + 1)(b + 1)(c + 1) \ge 2\sqrt{a} \cdot 2\sqrt{b} \cdot 2\sqrt{c} = 8\sqrt{abc}.$$
Mivel a feltétel szerint $abc = 1$, ezért $\sqrt{abc} = \sqrt{1} = 1$.
Behelyettesítve kapjuk:
$$(a + 1)(b + 1)(c + 1) \ge 8 \cdot 1 = 8.$$
Egyenlőség pontosan akkor teljesül, ha mindhárom rész-egyenlőtlenségben egyenlőség van, azaz $a = 1, b = 1, c = 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Tényezőnkénti becslés és feltételes egyenlőtlenségek.**

- **Pozitív egyenlőtlenségek szorzása:** Ha $0 \le A \le B$ és $0 \le C \le D$, akkor $AC \le BD$. Ez a művelet nemnegatív számokra mindig megőrzi az irányt.
- **Feltételes szimmetria:** Ha a kifejezés szimmetrikus a változókban és a feltétel is az ($abc = 1$), az egyenlőség rendszerint az összes változó egyenlőségekor ($a = b = c = 1$) következik be.
:::

## Gy16.1. feladat

a) Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenség felhasználásával, hogy minden $n \ge 2$ egész számra:
$$n! < \left(\frac{n+1}{2}\right)^n.$$

b) Igazoljuk, hogy minden $n \in \mathbb{N}$ esetén $(n!)^2 \ge n^n$.

**Megoldás.**

a) Tekintsük az első $n$ darab pozitív egész számot: $1, 2, 3, \dots, n$.
Mivel $n \ge 2$, ezen számok nem mind egyenlők.
Alkalmazzuk rájuk a szigorú számtani és mértani közép közötti egyenlőtlenséget:
$$\sqrt[n]{1 \cdot 2 \cdot 3 \cdots n} < \frac{1 + 2 + 3 + \dots + n}{n}.$$
A bal oldalon a mértani közép éppen $\sqrt[n]{n!}$.
A jobb oldalon az első $n$ természetes szám összege $\frac{n(n+1)}{2}$, így:
$$\frac{1 + 2 + \dots + n}{n} = \frac{\frac{n(n+1)}{2}}{n} = \frac{n+1}{2}.$$
Ezt behelyettesítve:
$$\sqrt[n]{n!} < \frac{n+1}{2}.$$
Mindkét oldalt $n$-edik hatványra emelve (mivel mindkét oldal pozitív, a reláció iránya megmarad):
$$n! < \left(\frac{n+1}{2}\right)^n. \quad \blacksquare$$

b) Írjuk fel az $(n!)^2$ szorzatot úgy, hogy a tényezőket párba állítjuk:
$$(n!)^2 = (1 \cdot 2 \cdots n) \cdot (n \cdots 2 \cdot 1) = \prod_{k=1}^n k(n - k + 1).$$
Vizsgáljuk meg a $k$-adik tényezőpárt: $f(k) = k(n - k + 1) = kn - k^2 + k$.
Alakítsuk teljes négyzetté vagy becsüljük alulról:
$$k(n - k + 1) - n = kn - k^2 + k - n = k(n - k) - (n - k) = (k - 1)(n - k).$$
Mivel $1 \le k \le n$, mindkét tényező nemnegatív: $k - 1 \ge 0$ és $n - k \ge 0$.
Ezért a szorzatuk:
$$(k - 1)(n - k) \ge 0 \implies k(n - k + 1) \ge n.$$
Mivel ez az egyenlőtlenség minden $k \in \{1, 2, \dots, n\}$ indexre teljesül, a tagok szorzata:
$$(n!)^2 = \prod_{k=1}^n k(n - k + 1) \ge \prod_{k=1}^n n = n^n.$$
Mindkét oldalból négyzetgyököt vonva kapjuk, hogy $n! \ge n^{n/2}$.
Ezzel az állítást igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Faktoriális becslések közepekkel és szimmetrikus párosítással.**

- **Gauss-féle összegzés és AM–GM:** Az $1, 2, \dots, n$ számtani sorozat összege $\frac{n(n+1)}{2}$, mértani közepe $\sqrt[n]{n!}$. Ez adja az egyik legegyszerűbb analitikus felső becslést $n!$-ra.
- **Párosítási technika (inverzió):** A sorozat előre és hátrafelé olvasott szorzata ($k(n-k+1)$) szimmetrikus parabola, minimuma a végpontokban van ($k=1$ és $k=n$), ahol értéke pontosan $n$. Így minden pár $\ge n$, ami azonnal adja $(n!)^2 \ge n^n$.
:::

## Gy16.2. feladat

a) Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ természetes számra:
$$\frac{1}{2} \cdot \frac{3}{4} \cdot \frac{5}{6} \cdots \frac{2n - 1}{2n} \le \frac{1}{\sqrt{3n + 1}}.$$

b) Mutassuk meg ennek alapján, hogy $\lim_{n\to\infty} \prod_{k=1}^n \frac{2k-1}{2k} = 0$!

**Megoldás.**

a) Jelölje $P_n = \prod_{k=1}^n \frac{2k - 1}{2k}$.
*1. Alaplépés ($n = 1$):*
Bal oldal: $P_1 = \frac{1}{2}$. Jobb oldal: $\frac{1}{\sqrt{3 \cdot 1 + 1}} = \frac{1}{\sqrt{4}} = \frac{1}{2}$.
Mivel $\frac{1}{2} \le \frac{1}{2}$, az állítás $n = 1$-re egyenlőséggel teljesül.

*2. Indukciós feltevés:* Tegyük fel, hogy valamely $n \ge 1$-re $P_n \le \frac{1}{\sqrt{3n + 1}}$.

*3. Indukciós lépés:* Vizsgáljuk $P_{n+1}$-et:
$$P_{n+1} = P_n \cdot \frac{2n + 1}{2n + 2} \le \frac{1}{\sqrt{3n + 1}} \frac{2n + 1}{2n + 2}.$$
Azt kell belátnunk, hogy ez legfeljebb $\frac{1}{\sqrt{3(n+1) + 1}} = \frac{1}{\sqrt{3n + 4}}$, azaz:
$$\frac{2n + 1}{(2n + 2)\sqrt{3n + 1}} \le \frac{1}{\sqrt{3n + 4}}.$$
Mivel minden tag pozitív, emeljünk négyzetre:
$$\frac{(2n + 1)^2}{(2n + 2)^2 (3n + 1)} \le \frac{1}{3n + 4}.$$
Keresztbeszorozva:
$$(2n + 1)^2 (3n + 4) \le (2n + 2)^2 (3n + 1).$$
Bontsuk ki mindkét oldalt:
$$(4n^2 + 4n + 1)(3n + 4) = 12n^3 + 16n^2 + 12n^2 + 16n + 3n + 4 = 12n^3 + 28n^2 + 19n + 4.$$
Jobb oldal:
$$(4n^2 + 8n + 4)(3n + 1) = 12n^3 + 4n^2 + 24n^2 + 8n + 12n + 4 = 12n^3 + 28n^2 + 20n + 4.$$
A két oldalt összevetve az egyenlőtlenség:
$$12n^3 + 28n^2 + 19n + 4 \le 12n^3 + 28n^2 + 20n + 4 \iff 19n \le 20n \iff 0 \le n.$$
Mivel $n \ge 1$, ez nyilvánvalóan teljesül!
Ezzel az indukciós lépést igazoltuk, így az egyenlőtlenség minden $n \ge 1$-re fennáll. $\blacksquare$

b) Mivel a szorzat minden tényezője pozitív, $0 < P_n$.
Az a) részben bizonyított felső becsléssel együtt:
$$0 < P_n \le \frac{1}{\sqrt{3n + 1}}.$$
Mivel $\lim_{n\to\infty} \frac{1}{\sqrt{3n + 1}} = 0$, a rendőrelv (csendőrelv) alapján:
$$\lim_{n\to\infty} P_n = \lim_{n\to\infty} \prod_{k=1}^n \frac{2k - 1}{2k} = 0. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Wallis-féle szorzat és megerősített indukciós feltevés.**

- **Wallis-szorzat háttere:** Ez a szorzat a $\binom{2n}{n} / 4^n$ központi binomiális együtthatóval egyezik meg. Aszimptotikusan $P_n \sim \frac{1}{\sqrt{\pi n}}$ (Stirling-formula).
- **Indukciós hipotézis megerősítése:** Ha csak azt akarnánk igazolni indukcióval, hogy $P_n \le \frac{1}{\sqrt{2n}}$, az indukciós lépés megbukna! A szigorúbb $\frac{1}{\sqrt{3n+1}}$ becslés azért működik, mert a nevező növekedési üteme jobban illeszkedik a szorzótényezőhöz. Az indukcióban néha könnyebb erősebb állítást bizonyítani!
:::

## Gy17.1. feladat

Legyenek $A, B \subset \mathbb{R}$ nem üres, korlátos halmazok.

a) Bizonyítsuk be részletesen a definíció alapján, hogy
$$\sup(A + B) = \sup A + \sup B, \quad \text{ahol } A + B = \{a + b : a \in A,\ b \in B\}.$$

b) Igazoljuk, hogy $\inf(A - B) = \inf A - \sup B$, ahol $A - B = \{a - b : a \in A,\ b \in B\}$.

**Megoldás.**

a) Jelölje $\alpha = \sup A$ és $\beta = \sup B$.
1. *Felső korlát:*
Legyen $z \in A + B$ tetszőleges elem. Ekkor $z = a + b$ valamely $a \in A$ és $b \in B$ esetén.
Mivel $\alpha$ felső korlátja $A$-nak és $\beta$ felső korlátja $B$-nek:
$$a \le \alpha \qquad \text{és} \qquad b \le \beta.$$
A két egyenlőtlenséget összeadva:
$$z = a + b \le \alpha + \beta.$$
Mivel ez minden $z \in A + B$-re teljesül, $\alpha + \beta$ felső korlátja $A + B$-nek.

2. *Legkisebb felső korlát:*
Legyen $\varepsilon > 0$ tetszőleges kicsiny valós szám.
- Mivel $\alpha = \sup A$, létezik olyan $a_0 \in A$, amelyre $a_0 > \alpha - \frac{\varepsilon}{2}$.
- Mivel $\beta = \sup B$, létezik olyan $b_0 \in B$, amelyre $b_0 > \beta - \frac{\varepsilon}{2}$.
Tekintsük a $z_0 = a_0 + b_0 \in A + B$ elemet. Ekkor:
$$z_0 = a_0 + b_0 > \left(\alpha - \frac{\varepsilon}{2}\right) + \left(\beta - \frac{\varepsilon}{2}\right) = (\alpha + \beta) - \varepsilon.$$
Találtunk olyan $A + B$-beli elemet, amely nagyobb $(\alpha + \beta) - \varepsilon$-nál.
Ez azt jelenti, hogy $\alpha + \beta$-nál kisebb szám nem lehet felső korlátja $A + B$-nek.
Tehát valóban $\sup(A + B) = \alpha + \beta = \sup A + \sup B$. $\blacksquare$

b) Vegyük észre, hogy az $A - B$ halmaz felírható összegként:
$$A - B = A + (-B), \quad \text{ahol } -B = \{-b : b \in B\}.$$
Korábban igazoltuk, hogy $\inf(X + Y) = \inf X + \inf Y$ (vagy az infimum definíciójával analóg módon látható be, mint a szuprémumé az a) részben).
Továbbá a tükrözési elv szerint:
$$\inf(-B) = -\sup B.$$
Ezeket egyesítve:
$$\inf(A - B) = \inf\big(A + (-B)\big) = \inf A + \inf(-B) = \inf A + (-\sup B) = \inf A - \sup B. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Minkowski-összeg és szuprémum additivitása.**

- **Minkowski-összeg:** Halmazok algebrai összege: $A + B = \{a + b : a \in A, b \in B\}$. Fontos, hogy ez NEM az unió, hanem az elempárok összegeinek halmaza.
- **Additivitás:** A szuprémum és infimum additív művelet a Minkowski-összegre: $\sup(A+B) = \sup A + \sup B$ és $\inf(A+B) = \inf A + \inf B$.
- **Kivonás szabálya:** $\sup(A - B) = \sup A - \inf B$ és $\inf(A - B) = \inf A - \sup B$. A kivonás megfordítja az operátort a levont halmaznál!
:::

## Gy17.2. feladat

Legyen $A = (0, 2)$ és $B = [1, 3]$.

a) Határozzuk meg explicit intervallumként az $A + B$, $A - B$ és $A \cdot B = \{ab : a \in A, b \in B\}$ halmazokat!

b) Határozzuk meg ezen halmazok infimumát, szuprémumát, minimumát és maximumát!

**Megoldás.**

a) 1. *Összeghalmaz ($A + B$):*
Az $a \in (0, 2)$ és $b \in [1, 3]$ feltételek mellett az összeg legkisebb értékei a bal végpontok közelében, legnagyobbjai a jobb végpontok közelében adódnak:
$$0 + 1 < a + b < 2 + 3 \iff 1 < a + b < 5.$$
Mivel $A$ nyílt intervallum, a végpontok nem érhetők el:
$$A + B = (1, 5).$$

2. *Különbséghalmaz ($A - B$):*
Az $a - b$ kifejezés akkor a legkisebb, ha $a$ minimális és $b$ maximális: $0 - 3 = -3$.
Akkor a legnagyobb, ha $a$ maximális és $b$ minimális: $2 - 1 = 1$.
Mivel $a \in (0, 2)$ nyílt, a végpontok nem érhetők el:
$$A - B = (-3, 1).$$

3. *Szorzathalmaz ($A \cdot B$):*
Mivel mindkét halmaz nemnegatív valós számokból áll:
$$a \in (0, 2), \quad b \in [1, 3] \implies 0 \cdot 1 < ab < 2 \cdot 3 \iff 0 < ab < 6.$$
Tetszőleges $y \in (0, 6)$ esetén ha választunk egy $b \in [1, 3]$ számot, amelyre $y/b \in (0, 2)$ (például $b = 2$, ekkor $y/2 \in (0, 3)$, de $b$ alkalmas megválasztásával bármely érték kikeverhető), így a szorzat teljes nyílt intervallumot ad:
$$A \cdot B = (0, 6).$$

b) A kapott halmazok alapján:
- $A + B = (1, 5)$:
  - $\inf(A + B) = 1$, $\sup(A + B) = 5$.
  - $\min$ és $\max$ **nem léteznek** (nyílt intervallum).
- $A - B = (-3, 1)$:
  - $\inf(A - B) = -3$, $\sup(A - B) = 1$.
  - $\min$ és $\max$ **nem léteznek**.
- $A \cdot B = (0, 6)$:
  - $\inf(A \cdot B) = 0$, $\sup(A \cdot B) = 6$.
  - $\min$ és $\max$ **nem léteznek**.

::: elmelet
**Elméleti háttér — Intervallumok aritmetikája.**

- **Intervallumaritmetika:**
  $$(a_1, a_2) + [b_1, b_2] = (a_1 + b_1, a_2 + b_2).$$
  Ha legalább az egyik összeadandó intervallum nyílt, az összegintervallum is nyílt lesz az adott végponton.
- **Szorzat szuprémuma pozitív halmazokra:** $\sup(A \cdot B) = \sup A \cdot \sup B = 2 \cdot 3 = 6$, és $\inf(A \cdot B) = \inf A \cdot \inf B = 0 \cdot 1 = 0$. Ez összhangban van a kapott $(0, 6)$ eredménnyel.
:::

## Gy18.1. feladat

a) Bizonyítsuk be teljes indukcióval a Bernoulli-egyenlőtlenséget: minden $x \ge -1$ valós számra és $n \in \mathbb{N}$ természetes számra
$$(1 + x)^n \ge 1 + nx.$$

b) Mutassuk meg, hogy ha $x > 0$ és $n \ge 2$, akkor a binomiális tételből következik:
$$(1 + x)^n > 1 + nx + \frac{n(n-1)}{2} x^2.$$
Ennek felhasználásával bizonyítsuk be, hogy $\lim_{n\to\infty} \sqrt[n]{n} = 1$!

**Megoldás.**

a) *1. Alaplépés:* $n = 1$ esetén $(1 + x)^1 = 1 + x = 1 + 1 \cdot x$, egyenlőség teljesül.
*2. Indukciós feltevés:* Tegyük fel, hogy valamely $n \ge 1$-re $(1 + x)^n \ge 1 + nx$.
*3. Indukciós lépés:* Mivel $x \ge -1$, ezért $1 + x \ge 0$. Így az indukciós feltevés mindkét oldalát megszorozhatjuk $(1 + x)$-szel anélkül, hogy az egyenlőtlenség iránya megfordulna:
$$(1 + x)^{n+1} = (1 + x)^n (1 + x) \ge (1 + nx)(1 + x).$$
Bontsuk fel a jobb oldalt:
$$(1 + nx)(1 + x) = 1 + x + nx + nx^2 = 1 + (n+1)x + nx^2.$$
Mivel $n \ge 1$ és $x^2 \ge 0$, a $nx^2$ tag nemnegatív: $nx^2 \ge 0$.
Ezért elhagyva ezt a tagot:
$$1 + (n+1)x + nx^2 \ge 1 + (n+1)x.$$
Összefűzve:
$$(1 + x)^{n+1} \ge 1 + (n+1)x.$$
A teljes indukció elve szerint az egyenlőtlenség minden $n \in \mathbb{N}$ esetén igaz. $\blacksquare$

b) Fejtsük ki $(1 + x)^n$-t a binomiális tétellel:
$$(1 + x)^n = \sum_{k=0}^n \binom{n}{k} x^k = 1 + nx + \binom{n}{2} x^2 + \sum_{k=3}^n \binom{n}{k} x^k.$$
Mivel $x > 0$, minden binomiális tag szigorúan pozitív. Ha $n \ge 2$, elhagyva a $k \ge 3$ indexű tagokat:
$$(1 + x)^n > 1 + nx + \binom{n}{2} x^2 = 1 + nx + \frac{n(n-1)}{2} x^2. \quad \blacksquare$$

*A $\lim_{n\to\infty} \sqrt[n]{n} = 1$ határérték bizonyítása:*
Mivel $n > 1$ esetén $\sqrt[n]{n} > 1$, írhatjuk:
$$\sqrt[n]{n} = 1 + \alpha_n, \quad \text{ahol } \alpha_n > 0.$$
Mindkét oldalt $n$-edik hatványra emelve ($n \ge 2$):
$$n = (1 + \alpha_n)^n > 1 + n\alpha_n + \frac{n(n-1)}{2} \alpha_n^2 > \frac{n(n-1)}{2} \alpha_n^2.$$
Mindkét oldalt leosztva $n$-nel ($n \ge 2 > 0$):
$$1 > \frac{n-1}{2} \alpha_n^2 \implies \alpha_n^2 < \frac{2}{n-1} \implies 0 < \alpha_n < \sqrt{\frac{2}{n-1}}.$$
Mivel $\lim_{n\to\infty} \sqrt{\frac{2}{n-1}} = 0$, a rendőrelv alapján:
$$\lim_{n\to\infty} \alpha_n = 0 \implies \lim_{n\to\infty} \sqrt[n]{n} = \lim_{n\to\infty} (1 + \alpha_n) = 1. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — A Bernoulli-egyenlőtlenség és a másodrendű binomiális becslés.**

- **Bernoulli-egyenlőtlenség alkalmazása:** Elsőrendű alsó becslést ad hatványokra. Elengedhetetlen feltétele, hogy $1 + x \ge 0 \iff x \ge -1$, különben az indukciós szorzás megfordítaná az egyenlőtlenséget!
- **Miért kell a másodfokú tag $\sqrt[n]{n}$-hez?** Az elsőrendű becslésből csak $n = (1+\alpha_n)^n \ge 1 + n\alpha_n \implies \alpha_n \le \frac{n-1}{n} < 1$ adódna, ami NEM tart nullához! A másodfokú tag $\binom{n}{2}\alpha_n^2 \sim \frac{n^2}{2}\alpha_n^2$ nagyságrendű, ami leosztva $n$-nel már $0$-hoz szorítja $\alpha_n$-et.
:::

## Gy18.2. feladat

a) Legyen $r \in \mathbb{Q}$ racionális kitevő, $0 < r < 1$. Bizonyítsuk be a súlyozott számtani és mértani közepek közötti egyenlőtlenség (vagy elemi közepek) segítségével, hogy minden $x > -1, x \ne 0$ esetén
$$(1 + x)^r < 1 + rx.$$

b) Igazoljuk a Young-egyenlőtlenséget: minden $a, b > 0$ és $0 < \alpha < 1$ esetén
$$a^\alpha b^{1-\alpha} \le \alpha a + (1 - \alpha)b,$$
és adjuk meg az egyenlőség feltételét!

**Megoldás.**

a) Írjuk fel az $r$ racionális számot egyszerűsített tört alakban: $r = \frac{p}{q}$, ahol $p, q \in \mathbb{N}$ és $0 < p < q$.
Alkalmazzuk a $q$-tagú számtani és mértani közép közötti egyenlőtlenséget a következő számokra:
- $p$ darab darab $(1 + x)$ értékű számra,
- és $q - p$ darab $1$ értékű számra.
Mivel $x > -1$ és $x \ne 0$, ezért $1 + x > 0$ és $1 + x \ne 1$. Így a vizsgált $q$ darab szám nem mind egyenlő, tehát szigorú egyenlőtlenség áll fenn:
$$\sqrt[q]{\underbrace{(1 + x) \cdots (1 + x)}_{p \text{ db}} \cdot \underbrace{1 \cdots 1}_{q - p \text{ db}}} < \frac{\overbrace{(1 + x) + \dots + (1 + x)}^{p \text{ db}} + \overbrace{1 + \dots + 1}^{q - p \text{ db}}}{q}.$$
A bal oldalon a mértani közép:
$$\sqrt[q]{(1 + x)^p \cdot 1^{q-p}} = \left((1 + x)^p\right)^{1/q} = (1 + x)^{p/q} = (1 + x)^r.$$
A jobb oldalon a számtani közép:
$$\frac{p(1 + x) + (q - p) \cdot 1}{q} = \frac{p + px + q - p}{q} = \frac{q + px}{q} = 1 + \frac{p}{q}x = 1 + rx.$$
A kettőt összevetve pontosan a kívánt egyenlőtlenséget kapjuk:
$$(1 + x)^r < 1 + rx. \quad \blacksquare$$

b) Legyen $x = \frac{a}{b} - 1$. Mivel $a, b > 0$, ezért $1 + x = \frac{a}{b} > 0$, így $x > -1$.
- Ha $a = b$, akkor $x = 0$, és a bal oldal $a^\alpha a^{1-\alpha} = a$, a jobb oldal $\alpha a + (1 - \alpha)a = a$, egyenlőség áll fenn.
- Ha $a \ne b$, akkor $x \ne 0$. Alkalmazzuk az a) részben bizonyított egyenlőtlenséget $r = \alpha \in (0, 1)$ mellett:
$$(1 + x)^\alpha < 1 + \alpha x.$$
Behelyettesítve $1 + x = \frac{a}{b}$-t:
$$\left(\frac{a}{b}\right)^\alpha < 1 + \alpha \left(\frac{a}{b} - 1\right).$$
Szorozzuk meg mindkét oldalt a pozitív $b$ számmal:
$$\frac{a^\alpha}{b^\alpha} \cdot b < b + \alpha(a - b) \iff a^\alpha b^{1-\alpha} < b + \alpha a - \alpha b = \alpha a + (1 - \alpha)b.$$
Egyenlőség pontosan akkor áll fenn, ha $a = b$. $\blacksquare$

::: elmelet
**Elméleti háttér — Törtkitevős Bernoulli- és Young-egyenlőtlenség.**

- **Bernoulli-egyenlőtlenség tört kitevőre:**
  - Ha $r > 1$ vagy $r < 0$: $(1 + x)^r \ge 1 + rx$ (az egyenlőtlenség iránya azonos az egész kitevős esettel).
  - Ha $0 < r < 1$: $(1 + x)^r \le 1 + rx$ (az egyenlőtlenség MEGORDUL, mert az $u \mapsto u^r$ függvény szigorúan konkáv!).
- **Young-egyenlőtlenség:** A Hölder-egyenlőtlenség alapköve: ha $p, q > 1$ és $\frac{1}{p} + \frac{1}{q} = 1$, akkor $ab \le \frac{a^p}{p} + \frac{b^q}{q}$ (ez éppen $\alpha = 1/p$ helyettesítéssel adódik).
:::

## Gy19.1. feladat

A valós számok szuprémum-axiómájából (minden nem üres, felülről korlátos valós halmaznak van szuprémuma $\mathbb{R}$-ben) vezessük le részletesen az alábbi alapvető tulajdonságokat:

a) Az Arkhimédész-féle tulajdonságot: minden $x \in \mathbb{R}$ valós számhoz létezik olyan $n \in \mathbb{N}$ természetes szám, amelyre $n > x$.

b) A Cantor-féle metszettételt korlátos, zárt intervallumok beágyazott sorozataira.

**Megoldás.**

a) Tegyük fel indirekt, hogy az Arkhimédész-féle tulajdonság nem teljesül.
Ez azt jelenti, hogy létezik olyan $x_0 \in \mathbb{R}$ valós szám, amelynél semelyik természetes szám sem nagyobb, azaz:
$$n \le x_0 \quad \text{minden } n \in \mathbb{N} \text{ esetén}.$$
Ez a feltevés pontosan azt fejezi ki, hogy a természetes számok $\mathbb{N} = \{1, 2, 3, \dots\}$ halmaza felülről korlátos $\mathbb{R}$-ben (egy felső korlátja $x_0$).
Mivel $\mathbb{N}$ nem üres ($1 \in \mathbb{N}$), a teljességi (szuprémum-) axióma szerint létezik szuprémuma:
$$S = \sup \mathbb{N} \in \mathbb{R}.$$
Mivel $S$ a legkisebb felső korlát, az $S - 1 < S$ szám már nem lehet felső korlátja $\mathbb{N}$-nek.
A szuprémum definíciója szerint létezik olyan $n_0 \in \mathbb{N}$ elem, amely meghaladja ezt:
$$n_0 > S - 1.$$
Adjunk hozzá mindkét oldalhoz $1$-et:
$$n_0 + 1 > S.$$
Mivel $n_0 \in \mathbb{N}$, a természetes számok definíciója (rákövetkező elem) miatt $n_0 + 1 \in \mathbb{N}$ is természetes szám.
Azt kaptuk tehát, hogy az $n_0 + 1 \in \mathbb{N}$ elem szigorúan nagyobb, mint $S$, ami ellentmond annak, hogy $S = \sup \mathbb{N}$ felső korlátja $\mathbb{N}$-nek!
Ez az ellentmondás igazolja, hogy $\mathbb{N}$ nem lehet felülről korlátos, tehát az Arkhimédész-féle tulajdonság valóban fennáll. $\blacksquare$

b) Legyen $I_n = [a_n, b_n]$ korlátos zárt intervallumok beágyazott lánca ($I_1 \supseteq I_2 \supseteq \dots$).
Ekkor $a_1 \le a_2 \le \dots \le a_n \le \dots \le b_n \le \dots \le b_2 \le b_1$.
Tekintsük az alsó végpontok $A = \{a_n : n \in \mathbb{N}\}$ halmazát.
Mivel minden $n, m$-re $a_n \le b_m$, bármely $b_m$ felső korlátja $A$-nak.
Mivel $A \ne \emptyset$, a szuprémum-axióma alapján létezik $\xi = \sup A \in \mathbb{R}$.
- Mivel $\xi = \sup A$, minden $n$-re $a_n \le \xi$.
- Mivel minden $b_m$ felső korlát és $\xi$ a legkisebb felső korlát, minden $m$-re $\xi \le b_m$.
Így minden $n \in \mathbb{N}$ esetén $a_n \le \xi \le b_n \iff \xi \in I_n$.
Ezért $\xi \in \bigcap_{n=1}^\infty I_n$, tehát a metszet nem üres. $\blacksquare$

::: elmelet
**Elméleti háttér — A valós számok axiómarendszere és teljessége.**

- **Dedekind-teljesség:** A szuprémum-axióma az analízis sarokköve. Megkülönbözteti $\mathbb{R}$-et $\mathbb{Q}$-tól (amely arkhimédészi rendezett test, de nem teljes).
- **Arkhimédészi tulajdonság következményei:**
  1. $\forall \varepsilon > 0 \, \exists n \in \mathbb{N}: \frac{1}{n} < \varepsilon$.
  2. $\mathbb{Q}$ sűrű $\mathbb{R}$-ben: bármely $a < b$ valós számok között van racionális szám.
:::

## Gy19.2. feladat

Tegyük fel, hogy egy tetszőleges rendezett testben teljesül az Arkhimédész-féle tulajdonság és a Cantor-féle metszettétel (hogy zárt, egymásba ágyazott intervallumok metszete nem üres).

Bizonyítsuk be az intervallumfelezési eljárás segítségével, hogy ebben a testben minden nem üres, felülről korlátos halmaznak létezik szuprémuma (azaz a szuprémum-tulajdonság is teljesül)!

**Megoldás.**

Legyen $H$ egy nem üres, felülről korlátos halmaz.
Mivel $H \ne \emptyset$, választhatunk egy tetszőleges $x_0 \in H$ elemet.
Mivel $H$ felülről korlátos, létezik egy $K$ felső korlát.
Legyen $a_1 = x_0$ és $b_1 = \max\{x_0, K\}$. Ekkor $a_1 \le b_1$, és a konstrukció miatt:
- $b_1$ felső korlátja $H$-nak,
- $a_1 \in H$, így $a_1$-nél van $H$-beli elem (maga $a_1$).

Konstruáljuk meg az egymásba ágyazott intervallumok sorozatát felezéssel:
Tegyük fel, hogy az $[a_n, b_n]$ intervallumot már definiáltuk úgy, hogy:
1. $b_n$ felső korlátja $H$-nak,
2. $a_n$ nem felső korlátja $H$-nak (vagy $a_n \in H$), azaz van olyan $h \in H$, amelyre $h \ge a_n$.
Tekintsük az intervallum $c_n = \frac{a_n + b_n}{2}$ felezőpontját. Két eset lehetséges:
- **1. eset:** $c_n$ felső korlátja $H$-nak.
  Ekkor válasszuk az $a_{n+1} = a_n$ és $b_{n+1} = c_n$ végpontokat.
- **2. eset:** $c_n$ nem felső korlátja $H$-nak (létezik $h \in H$, hogy $h > c_n$).
  Ekkor válasszuk az $a_{n+1} = c_n$ és $b_{n+1} = b_n$ végpontokat.

Mindkét esetben:
- $[a_{n+1}, b_{n+1}] \subset [a_n, b_n]$,
- $b_{n+1}$ felső korlátja $H$-nak,
- $a_{n+1}$ nem felső korlátja $H$-nak (van nála nagyobb halmazbeli elem),
- az intervallum hossza: $b_{n+1} - a_{n+1} = \frac{b_n - a_n}{2} = \frac{b_1 - a_1}{2^n}$.

A Cantor-féle metszettétel szerint létezik $\xi \in \bigcap_{n=1}^\infty [a_n, b_n]$.
Megmutatjuk, hogy $\xi = \sup H$:
1. *$\xi$ felső korlátja $H$-nak:* Tegyük fel indirekt, hogy létezik $h \in H$, amelyre $h > \xi$.
Ekkor $h - \xi > 0$. Az Arkhimédész-féle tulajdonság miatt létezik $N \in \mathbb{N}$ úgy, hogy $\frac{b_1 - a_1}{2^N} < h - \xi$.
Mivel $\xi \in [a_N, b_N]$, ezért $b_N - \xi \le b_N - a_N < h - \xi \implies b_N < h$.
Ez azonban ellentmond annak, hogy $b_N$ felső korlátja $H$-nak! Tehát $\xi$ valóban felső korlát.
2. *$\xi$ a legkisebb felső korlát:* Tegyük fel, hogy $\xi' < \xi$.
Ekkor $\xi - \xi' > 0$. Ismét az Arkhimédész-tulajdonság miatt létezik olyan $N$, hogy $b_N - a_N < \xi - \xi'$.
Mivel $\xi \le b_N$, ebből $a_N > \xi'$. Mivel a konstrukció szerint $a_N$-nél van nagyobb $H$-beli elem, $\xi'$ nem lehet felső korlátja $H$-nak.
Tehát $\xi = \sup H$. A szuprémum-tulajdonságot ezzel levezettük. $\blacksquare$

::: elmelet
**Elméleti háttér — Intervallumfelezés és a teljességi axiómák ekvivalenciája.**

- **Ekvivalens teljességi megfogalmazások egy arkhimédészi rendezett testben:**
  1. Szuprémum-tulajdonság (Dedekind).
  2. Cantor-féle metszettétel.
  3. Cauchy-teljesség (minden Cauchy-sorozat konvergens).
  4. Bolzano–Weierstrass-tétel (minden korlátos sorozatnak van konvergens részsorozata).
- **Intervallumfelezés (Bisection method):** Nemcsak elméleti ekvivalencia-bizonyítás, hanem a numerikus analízis egyik legrobusztusabb gyökkereső algoritmusa (a hiba lépésenként feleződik).
:::

## Gy20.1. feladat

a) Legyen egy téglatest felszíne rögzített $A > 0$. Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenséggel, hogy a téglatest térfogata akkor maximális, ha a téglatest kocka, és fejezzük ki a maximális térfogatot $A$ segítségével!

b) Határozzuk meg az $x y^2$ szorzat maximumát, ha $x, y > 0$ és $x + y = 6$!

**Megoldás.**

a) Jelölje a téglatest éleit $a, b, c > 0$.
A felszín: $A = 2(ab + bc + ca)$, így $ab + bc + ca = \frac{A}{2}$.
A térfogat: $V = abc$.
Alkalmazzuk a háromtagú számtani és mértani közép közötti egyenlőtlenséget az $ab, bc, ca$ pozitív számokra:
$$\frac{ab + bc + ca}{3} \ge \sqrt[3]{(ab)(bc)(ca)} = \sqrt[3]{a^2 b^2 c^2} = \sqrt[3]{V^2} = V^{2/3}.$$
Behelyettesítve az ismert felszínt:
$$\frac{A/2}{3} = \frac{A}{6} \ge V^{2/3}.$$
Mivel mindkét oldal pozitív, emeljük $\frac{3}{2}$-ik hatványra:
$$V \le \left(\frac{A}{6}\right)^{3/2} = \frac{A\sqrt{A}}{6\sqrt{6}}.$$
Egyenlőség pontosan akkor áll fenn, ha a számtani-mértani egyenlőtlenségben szereplő tagok mind egyenlők:
$$ab = bc = ca \iff a = b = c.$$
Ez pontosan azt jelenti, hogy a téglatest **kocka**.
Ekkor az él hossza $a = \sqrt{\frac{A}{6}}$, és a maximális térfogat $V_{\max} = a^3 = \left(\frac{A}{6}\right)^{3/2}$. $\blacksquare$

b) A vizsgálandó szorzat $x y^2 = x \cdot y \cdot y$.
A változók összege $x + y = 6$.
Ahhoz, hogy az AM–GM egyenlőtlenség alkalmazásakor a tagok összege konstans legyen, az $y$ tagot két egyenlő részre bontjuk: $\frac{y}{2} + \frac{y}{2} = y$.
Így az összeg:
$$x + \frac{y}{2} + \frac{y}{2} = x + y = 6.$$
Alkalmazzuk a számtani és mértani közép közötti egyenlőtlenséget az $x, \frac{y}{2}, \frac{y}{2}$ pozitív számokra:
$$\frac{x + \frac{y}{2} + \frac{y}{2}}{3} \ge \sqrt[3]{x \cdot \frac{y}{2} \cdot \frac{y}{2}} = \sqrt[3]{\frac{xy^2}{4}}.$$
A bal oldal értéke: $\frac{6}{3} = 2$.
Így:
$$2 \ge \sqrt[3]{\frac{xy^2}{4}} \implies 2^3 = 8 \ge \frac{xy^2}{4} \implies xy^2 \le 32.$$
Egyenlőség pontosan akkor áll fenn, ha a három tag egyenlő:
$$x = \frac{y}{2} = \frac{y}{2}.$$
Mivel $x + y = 6$, $x + 2x = 6 \implies 3x = 6 \implies x = 2$, amiből $y = 4$.
Mivel $x = 2 > 0$ és $y = 4 > 0$ megengedett értékek, a szorzat maximális értéke **$32$**, amelyet az $(x, y) = (2, 4)$ pontban vesz fel.

::: elmelet
**Elméleti háttér — Geometriai izoperimetrikus feladatok és súlyozott szorzatok.**

- **Izoperimetrikus elv:** Rögzített felszínű testek közül a legszimmetrikusabb rendelkezik a legnagyobb térfogattal (téglatesteknél a kocka, általánosan a gömb).
- **Együtthatók beállítása szorzatokhoz:** Ha $x^\alpha y^\beta$ maximumát keressük $c_1 x + c_2 y = K$ feltétel mellett, a tagokat $\alpha$ és $\beta$ darab azonos részre bontjuk, hogy az AM–GM egyenlőség feltétele ($x$-tagok $=$ $y$-tagok) automatikusan kielégüljön.
:::

## Gy20.2. feladat

a) Adott $V > 0$ térfogatú téglatestek közül melyiknek a legkisebb a teljes felszíne, és mekkora ez a minimális felszín?

b) Egy téglalap alakú telket az egyik oldalán meglévő egyenes kőfal határol, a többi három oldalát összesen $L$ hosszúságú kerítéssel kerítjük el. Mekkora a bekeríthető maximális terület, és mik a téglalap optimális oldalai?

**Megoldás.**

a) Jelölje a téglatest éleit $a, b, c > 0$.
A térfogat rögzített: $abc = V$.
A felszín: $A = 2(ab + bc + ca)$.
Alkalmazzuk a számtani és mértani közepek közötti egyenlőtlenséget az $ab, bc, ca$ pozitív számokra:
$$\frac{ab + bc + ca}{3} \ge \sqrt[3]{(ab)(bc)(ca)} = \sqrt[3]{(abc)^2} = \sqrt[3]{V^2}.$$
Szorozzuk meg mindkét oldalt $6$-tal:
$$A = 2(ab + bc + ca) \ge 6 \sqrt[3]{V^2}.$$
Egyenlőség pontosan akkor áll fenn, ha $ab = bc = ca \iff a = b = c = \sqrt[3]{V}$.
Tehát a felszín akkor minimális, ha a téglatest **kocka**, és a minimális felszín értéke:
$$A_{\min} = 6 V^{2/3}.$$

b) Jelölje a kőfallal párhuzamos oldal hosszát $x > 0$, a kőfalra merőleges két oldal hosszát pedig $y > 0$.
A felhasznált kerítés hossza:
$$x + 2y = L.$$
A bekerített terület:
$$T = x \cdot y.$$
Alkalmazzuk a számtani és mértani közép közötti egyenlőtlenséget az $x$ és $2y$ pozitív számokra:
$$\frac{x + 2y}{2} \ge \sqrt{x \cdot (2y)} = \sqrt{2xy} = \sqrt{2T}.$$
Mivel $x + 2y = L$, a bal oldal $\frac{L}{2}$.
Négyzetre emelve:
$$\frac{L^2}{4} \ge 2T \implies T \le \frac{L^2}{8}.$$
Egyenlőség pontosan akkor áll fenn, ha a két tag egyenlő:
$$x = 2y.$$
Mivel $x + 2y = L$, ebből $2y + 2y = L \implies 4y = L \implies y = \frac{L}{4}$, és $x = \frac{L}{2}$.
A bekeríthető maximális terület tehát:
$$T_{\max} = \frac{L^2}{8},$$
az optimális oldalhosszak: a kőfallal párhuzamos oldal $x = \frac{L}{2}$, a rá merőleges oldalak $y = \frac{L}{4}$.

::: elmelet
**Elméleti háttér — Szélsőértékkeresés deriválás nélkül.**

- **Duális feladatok:** Az „adott felszínhez maximális térfogat” és az „adott térfogathoz minimális felszín” feladatok egymás duálisai; mindkettő optimumát ugyanaz a geometriai alakzat (a kocka) szolgáltatja.
- **Peremfeltételek és asszimmetria:** A kőfal jelenléte megtöri a téglalap szimmetriáját ($x$ egyszer, $y$ kétszer szerepel a kerületben). Az AM–GM módszer ekkor is azonnal alkalmazható az $x$ és $2y$ tagok egyenlőségét megkövetelve, anélkül, hogy deriválást kellene végezni.
:::

## Gy21.1. feladat

a) Mutassuk meg részletesen, hogy tetszőleges rögzített $a > 0$ valós szám esetén
$$\lim_{n\to\infty} \frac{a^n}{n!} = 0.$$
Ennek felhasználásával igazoljuk, hogy van olyan küszöbindex, amelytől kezdve $100^n < n!$, és adjunk meg egy explicit felső becslést erre a küszöbindexre!

b) Bizonyítsuk be a binomiális tétel segítségével, hogy minden rögzített $k \in \mathbb{N}$ esetén
$$\lim_{n\to\infty} \frac{n^k}{2^n} = 0.$$

**Megoldás.**

a) Válasszunk egy olyan $M \in \mathbb{N}$ egész számot, amelyre $M > a$ (az arkhimédészi tulajdonság szerint ilyen létezik, $a = 100$ esetén például $M = 100$).
Tetszőleges $n > M$ esetén bontsuk fel a törtet szorzattényezőkre:
$$\frac{a^n}{n!} = \left(\frac{a}{1} \cdot \frac{a}{2} \cdots \frac{a}{M}\right) \cdot \left(\frac{a}{M+1} \cdot \frac{a}{M+2} \cdots \frac{a}{n}\right).$$
Jelölje $C = \frac{a^M}{M!}$ az első $M$ tényező szorzatát, amely egy rögzített pozitív konstans.
A második csoportban minden nevező nagyobb vagy egyenlő, mint $M + 1$, így mivel $a < M + 1$:
$$\frac{a}{M+j} \le \frac{a}{M+1} = q < 1 \quad \text{minden } j \ge 1 \text{ esetén}.$$
Mivel a második csoportban $n - M$ darab tényező van:
$$0 < \frac{a^n}{n!} \le C \cdot q^{n - M} = \frac{C}{q^M} \cdot q^n.$$
Mivel $0 < q < 1$, a mértani sorozat határértéke $\lim_{n\to\infty} q^n = 0$.
A rendőrelv alapján ezért:
$$\lim_{n\to\infty} \frac{a^n}{n!} = 0.$$
*Küszöbindex $a = 100$ esetén:*
Azt szeretnénk, hogy $\frac{100^n}{n!} < 1$.
Írjuk fel a hányadost $n = 300$ esetén ($M = 100$):
Az $n = 100$-ig a tényezők $\le 100$, de $n = 101$-től $n = 300$-ig minden tényező $\frac{100}{100 + j} \le \frac{100}{101}$.
Még egyszerűbb becslés: párosítsuk az $100^n$ és $n!$ tényezőit a szélektől:
$k(n - k + 1) \ge 100^2 = 10000$ amint a szélső tagok elérik ezt.
Ha $n = 272$, akkor már $100^{272} < 272!$.
Explicit biztonságos küszöbindexként például az **$N_0 = 300$** megfelel, hiszen az $n \ge 300$ tartományban a tényezők több mint kétharmada legfeljebb $\frac{1}{2}$, ami bőven kompenzálja az első száz tag növekményét.

b) Legyen $n > k + 1$. A binomiális tétel szerint:
$$2^n = (1 + 1)^n = \sum_{j=0}^n \binom{n}{j} > \binom{n}{k+1}.$$
Írjuk ki a binomiális együtthatót:
$$\binom{n}{k+1} = \frac{n(n-1)\cdots(n-k)}{(k+1)!}.$$
Ha $n \ge 2k$, akkor a számláló minden tényezője legalább $\frac{n}{2}$:
$$n(n-1)\cdots(n-k) > \left(\frac{n}{2}\right)^{k+1} = \frac{n^{k+1}}{2^{k+1}}.$$
Így $2^n > \frac{n^{k+1}}{(k+1)! 2^{k+1}}$, amiből átrendezéssel:
$$0 < \frac{n^k}{2^n} < \frac{n^k}{\frac{n^{k+1}}{(k+1)! 2^{k+1}}} = \frac{(k+1)! 2^{k+1}}{n}.$$
Mivel $k$ rögzített, a számláló konstans. Ha $n \to \infty$, a jobb oldal tart $0$-hoz:
$$\lim_{n\to\infty} \frac{(k+1)! 2^{k+1}}{n} = 0.$$
A rendőrelv alapján ezért:
$$\lim_{n\to\infty} \frac{n^k}{2^n} = 0. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Aszimptotikus hierarchia és nagyságrendek összehasonlítása.**

- **Alapvető nagyságrendi skála ($n \to \infty$):**
  $$\ln n \ll n^\alpha \ll a^n \ll n! \ll n^n \quad (\alpha > 0, a > 1).$$
  Bármely balra lévő sorozat és egy jobbra lévő sorozat hányadosa $0$-hoz tart.
- **Hányados-kritérium sorozatokra:** Ha $x_n > 0$ és $\lim_{n\to\infty} \frac{x_{n+1}}{x_n} = q < 1$, akkor $\lim_{n\to\infty} x_n = 0$.
  Itt $\frac{a^{n+1}/(n+1)!}{a^n/n!} = \frac{a}{n+1} \to 0 < 1$, ami azonnal adja az a) rész állítását!
:::

## Gy21.2. feladat

Rendezzük növekvő nagyságrendi sorrendbe az alábbi sorozatokat $n \to \infty$ esetén (úgy, hogy ha $a_n \ll b_n$, azaz $\lim_{n\to\infty} \frac{a_n}{b_n} = 0$, akkor $a_n$ megelőzze $b_n$-et), és indokoljuk a lépéseket:
$$n^{100}, \quad 2^{\sqrt{n}}, \quad 2^n, \quad 3^n, \quad \sqrt{n!}, \quad n!, \quad n^n.$$

**Megoldás.**

Hasonlítsuk össze a sorozatok növekedési ütemét exponenciális vagy logaritmikus skálán:

1. **$2^{\sqrt{n}}$ és $n^{100}$ viszonya:**
Írjuk át $n^{100}$-at $2$ alapú hatványként: $n^{100} = 2^{100 \log_2 n}$.
Mivel $\lim_{n\to\infty} \frac{100 \log_2 n}{\sqrt{n}} = 0$ (a gyökfüggvény gyorsabban nő a logaritmusnál), ezért elegendően nagy $n$-re $100 \log_2 n < \sqrt{n}$, tehát:
$$n^{100} \ll 2^{\sqrt{n}}.$$

2. **$2^{\sqrt{n}}$ és $2^n$ viszonya:**
A kitevők aránya: $\frac{\sqrt{n}}{n} = \frac{1}{\sqrt{n}} \to 0$, így:
$$2^{\sqrt{n}} \ll 2^n.$$

3. **$2^n$ és $3^n$ viszonya:**
A hányadosuk: $\frac{2^n}{3^n} = \left(\frac{2}{3}\right)^n \to 0$, mivel $\frac{2}{3} < 1$. Tehát:
$$2^n \ll 3^n.$$

4. **$3^n$ és $\sqrt{n!}$ viszonya:**
A hányados négyzete: $\frac{(3^n)^2}{n!} = \frac{9^n}{n!}$.
A Gy21.1 feladat szerint bármely konstans alapra $\frac{a^n}{n!} \to 0$, így $\frac{9^n}{n!} \to 0$, amiből gyökvonással $\frac{3^n}{\sqrt{n!}} \to 0$. Tehát:
$$3^n \ll \sqrt{n!}.$$

5. **$\sqrt{n!}$ és $n!$ viszonya:**
A hányadosuk: $\frac{\sqrt{n!}}{n!} = \frac{1}{\sqrt{n!}} \to 0$, így:
$$\sqrt{n!} \ll n!.$$

6. **$n!$ és $n^n$ viszonya:**
A hányados:
$$\frac{n!}{n^n} = \frac{1}{n} \cdot \frac{2}{n} \cdots \frac{n}{n} \le \frac{1}{n} \to 0.$$
Így:
$$n! \ll n^n.$$

**Végső növekvő sorrend:**
$$n^{100} \ll 2^{\sqrt{n}} \ll 2^n \ll 3^n \ll \sqrt{n!} \ll n! \ll n^n.$$

::: elmelet
**Elméleti háttér — Növekedési rendek és a kitevőbe emelés elve.**

- **Kitevők összehasonlítása:** Ha $a_n = 2^{\alpha_n}$ és $b_n = 2^{\beta_n}$, akkor $\frac{a_n}{b_n} \to 0 \iff \beta_n - \alpha_n \to +\infty$.
- **Stirling-formula tájékozódáshoz:** $n! \approx \sqrt{2\pi n} \left(\frac{n}{e}\right)^n$, ebből $\sqrt{n!} \approx (2\pi n)^{1/4} \left(\frac{n}{e}\right)^{n/2}$, ami lényegesen meghaladja a konstans alapú $a^n$ exponenciálisokat.
:::

## Gy22.1. feladat

A sorozathatárérték $\varepsilon$-$N_0$ definíciója alapján igazoljuk az alábbi határértékeket, tetszőleges $\varepsilon > 0$-hoz megadva egy megfelelő $N_0(\varepsilon)$ küszöbindexet:

a) $\lim_{n\to\infty} \dfrac{3n - 2}{5n + 1} = \dfrac{3}{5}$;

b) $\lim_{n\to\infty} \dfrac{2n^2 + 3}{n^2 - 1} = 2$.

Számítsuk ki a legkisebb egész küszöbindexet mindkét esetben konkrétan $\varepsilon = 0{,}01$ mellett!

**Megoldás.**

a) 1. *Becslés:*
Tekintsük az $|a_n - A|$ eltérést:
$$\left|\frac{3n - 2}{5n + 1} - \frac{3}{5}\right| = \left|\frac{5(3n - 2) - 3(5n + 1)}{5(5n + 1)}\right| = \left|\frac{15n - 10 - 15n - 3}{5(5n + 1)}\right| = \left|\frac{-13}{5(5n + 1)}\right| = \frac{13}{5(5n + 1)}.$$
Azt szeretnénk, hogy ez kisebb legyen $\varepsilon$-nál:
$$\frac{13}{5(5n + 1)} < \varepsilon \iff 5(5n + 1) > \frac{13}{\varepsilon} \iff 25n + 5 > \frac{13}{\varepsilon} \iff n > \frac{\frac{13}{\varepsilon} - 5}{25} = \frac{13}{25\varepsilon} - \frac{1}{5}.$$
Választhatjuk küszöbindexnek az alábbi egészrészes kifejezést:
$$N_0(\varepsilon) = \max\left\{0, \left\lfloor \frac{13}{25\varepsilon} - \frac{1}{5} \right\rfloor\right\}.$$
Ekkor minden $n > N_0(\varepsilon)$ esetén $|a_n - 3/5| < \varepsilon$.
2. *Konkrét érték $\varepsilon = 0{,}01 = \frac{1}{100}$ esetén:*
$$\frac{13}{25 \cdot 0{,}01} - \frac{1}{5} = \frac{13}{0{,}25} - 0{,}2 = 52 - 0{,}2 = 51{,}8.$$
A legkisebb megfelelő egész küszöbindex: **$N_0 = 51$** (így minden $n \ge 52$-re teljesül).

b) 1. *Becslés ($n \ge 2$ mellett):*
$$\left|\frac{2n^2 + 3}{n^2 - 1} - 2\right| = \left|\frac{2n^2 + 3 - 2(n^2 - 1)}{n^2 - 1}\right| = \left|\frac{2n^2 + 3 - 2n^2 + 2}{n^2 - 1}\right| = \frac{5}{n^2 - 1}.$$
A feltétel:
$$\frac{5}{n^2 - 1} < \varepsilon \iff n^2 - 1 > \frac{5}{\varepsilon} \iff n^2 > \frac{5}{\varepsilon} + 1 \iff n > \sqrt{\frac{5}{\varepsilon} + 1}.$$
Küszöbindexként választható:
$$N_0(\varepsilon) = \left\lfloor \sqrt{\frac{5}{\varepsilon} + 1} \right\rfloor.$$
2. *Konkrét érték $\varepsilon = 0{,}01$ esetén:*
$$\sqrt{\frac{5}{0{,}01} + 1} = \sqrt{500 + 1} = \sqrt{501} \approx 22{,}38.$$
A legkisebb egész küszöbindex: **$N_0 = 22$** (így minden $n \ge 23$-ra teljesül).

::: elmelet
**Elméleti háttér — A véges határérték definíciója és a küszöbindex-keresés algoritmusa.**

- **Definíció:** $\lim_{n\to\infty} a_n = A \iff \forall \varepsilon > 0 \, \exists N_0 \in \mathbb{N} \, \forall n > N_0: |a_n - A| < \varepsilon$.
- **Módszertani lépések:**
  1. Felírjuk az $|a_n - A|$ abszolút értékes kifejezést.
  2. Közös nevezőre hozzuk, a számlálót összevonjuk.
  3. Felső becslést alkalmazunk (számlálót felülről, nevezőt alulról), hogy $n$-re könnyen rendezhető formát kapjunk, vagy közvetlenül megoldjuk az egyenlőtlenséget $n$-re.
  4. A küszöbindex az alsó korlát egészrésze: $N_0 = \lfloor f(\varepsilon) \rfloor$.
:::

## Gy22.2. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg adott $\varepsilon > 0$-hoz alkalmas $N_0(\varepsilon)$ küszöbindexet:

a) $a_n = \dfrac{1}{\sqrt{n + 1} + \sqrt{n}}$;

b) $b_n = \sqrt[n]{5} - 1$.

**Megoldás.**

a) 1. *Határérték:*
Mivel $\sqrt{n + 1} + \sqrt{n} \to +\infty$, a reciproka $0$-hoz tart: $\lim_{n\to\infty} a_n = 0$.
(Gyöktelenítve $\sqrt{n+1} - \sqrt{n}$, amiből szintén látható.)
2. *Küszöbindex keresése:*
A távolság a $0$-tól:
$$|a_n - 0| = \frac{1}{\sqrt{n + 1} + \sqrt{n}}.$$
Becsüljük felülről a kifejezést úgy, hogy a nevezőt csökkentjük: $\sqrt{n + 1} + \sqrt{n} > 2\sqrt{n}$.
Így:
$$|a_n - 0| < \frac{1}{2\sqrt{n}}.$$
Azt szeretnénk, hogy $\frac{1}{2\sqrt{n}} < \varepsilon$:
$$\frac{1}{2\sqrt{n}} < \varepsilon \iff 2\sqrt{n} > \frac{1}{\varepsilon} \iff \sqrt{n} > \frac{1}{2\varepsilon} \iff n > \frac{1}{4\varepsilon^2}.$$
Megfelelő küszöbindex:
$$N_0(\varepsilon) = \left\lfloor \frac{1}{4\varepsilon^2} \right\rfloor.$$
Minden $n > N_0(\varepsilon)$ esetén $|a_n - 0| < \frac{1}{2\sqrt{n}} < \varepsilon$.

b) 1. *Határérték:*
Jól ismert, hogy tetszőleges $c > 0$ esetén $\lim_{n\to\infty} \sqrt[n]{c} = 1$, így:
$$\lim_{n\to\infty} b_n = \lim_{n\to\infty} (\sqrt[n]{5} - 1) = 1 - 1 = 0.$$
2. *Küszöbindex keresése:*
Mivel $5 > 1$, $\sqrt[n]{5} > 1$, így $b_n = \sqrt[n]{5} - 1 > 0$.
A távolság: $|b_n - 0| = \sqrt[n]{5} - 1$.
Jelölje $\beta_n = \sqrt[n]{5} - 1$. Ekkor $1 + \beta_n = \sqrt[n]{5}$.
Emeljük $n$-edik hatványra és alkalmazzuk a Bernoulli-egyenlőtlenséget:
$$5 = (1 + \beta_n)^n \ge 1 + n\beta_n.$$
Ebből kifejezve $\beta_n$-et:
$$n\beta_n \le 5 - 1 = 4 \implies \beta_n \le \frac{4}{n}.$$
Így az eltérés felülről becsülhető:
$$|b_n - 0| \le \frac{4}{n}.$$
Azt szeretnénk, hogy $\frac{4}{n} < \varepsilon \iff n > \frac{4}{\varepsilon}$.
Alkalmas küszöbindex:
$$N_0(\varepsilon) = \left\lfloor \frac{4}{\varepsilon} \right\rfloor.$$
Minden $n > N_0(\varepsilon)$ esetén $|b_n - 0| \le \frac{4}{n} < \varepsilon$. $\blacksquare$

::: elmelet
**Elméleti háttér — Gyökös sorozatok határértéke és a Bernoulli-egyenlőtlenség szerepe.**

- **Bernoulli-egyenlőtlenség mint inverz becslés:** A $\sqrt[n]{c} - 1$ eltérés becslésére közvetlenül nehéz lenne egyenlőtlenséget megoldani. A trükk: $n$-edik hatványra emelünk, és a Bernoulli-egyenlőtlenséggel $1 + n\beta_n \le c \implies \beta_n \le \frac{c - 1}{n}$ lineáris becslést kapunk!
- **Nevező csökkentése:** A tört egyszerűsítésére és a küszöbindex kényelmes kiszámítására gyakran alkalmazzuk, hogy a bonyolult nevezőt egy egyszerűbb, kisebb pozitív kifejezéssel helyettesítjük ($\sqrt{n+1} + \sqrt{n} > 2\sqrt{n}$).
:::

# A 4. feladatlaphoz

## Gy34.1. feladat

Legyen $a_1 = 0$ és minden $n \ge 1$ esetén
$$a_{n+1} = \sqrt{12 + a_n}.$$

a) Bizonyítsuk be teljes indukcióval, hogy a sorozat felülről korlátos, pontosabban $a_n < 4$ minden $n \in \mathbb{N}$ esetén!

b) Igazoljuk, hogy a sorozat szigorúan monoton növekvő!

c) Mutassuk meg, hogy a sorozat konvergens, és számítsuk ki a határértékét!

**Megoldás.**

a) Teljes indukcióval igazoljuk, hogy $0 \le a_n < 4$ minden $n \in \mathbb{N}$ esetén.
1. *Alaplépés:* $n = 1$-re $a_1 = 0$, így $0 \le 0 < 4$ teljesül.
2. *Indukciós feltevés:* Tegyük fel, hogy $0 \le a_n < 4$ valamely $n \ge 1$-re.
3. *Indukciós lépés:* Vizsgáljuk $a_{n+1}$-et:
$$a_{n+1} = \sqrt{12 + a_n}.$$
Mivel $a_n \ge 0$, a gyök alatt $12 + a_n \ge 12 > 0$, így $a_{n+1} > 0$.
Másrészt az indukciós feltevés szerint $a_n < 4$, amiből:
$$12 + a_n < 12 + 4 = 16.$$
Mivel az $x \mapsto \sqrt{x}$ függvény szigorúan monoton növekvő a $[0, \infty)$-en:
$$a_{n+1} = \sqrt{12 + a_n} < \sqrt{16} = 4.$$
Tehát $0 \le a_{n+1} < 4$.
Az indukció elve alapján minden $n \in \mathbb{N}$ esetén $a_n < 4$, a sorozat felülről korlátos. $\blacksquare$

b) A szigorú monoton növekedést, azaz hogy $a_n < a_{n+1}$ minden $n \in \mathbb{N}$-re, szintén teljes indukcióval látjuk be:
1. $n = 1$-re: $a_1 = 0$ és $a_2 = \sqrt{12 + 0} = \sqrt{12} \approx 3{,}46$. Mivel $0 < \sqrt{12}$, $a_1 < a_2$ igaz.
2. Tegyük fel, hogy $a_n < a_{n+1}$.
3. Ekkor mindkét oldalhoz $12$-t adva és négyzetgyököt vonva (mivel a gyökfüggvény szigorúan monoton nő):
$$12 + a_n < 12 + a_{n+1} \implies \sqrt{12 + a_n} < \sqrt{12 + a_{n+1}} \iff a_{n+1} < a_{n+2}.$$
Tehát a sorozat minden $n$-re szigorúan monoton növekszik. $\blacksquare$

c) Mivel az $(a_n)$ sorozat monoton növekvő és felülről korlátos (korlátja $4$), a monoton konvergencia tétel (Weierstrass-tétel) értelmében konvergens:
$$\lim_{n\to\infty} a_n = L \in \mathbb{R}.$$
Mivel $a_n \ge 0$ minden $n$-re, $L \ge 0$.
A rekurziós összefüggés mindkét oldalának határértékét véve (felhasználva, hogy a négyzetgyökfüggvény folytonos):
$$\lim_{n\to\infty} a_{n+1} = \lim_{n\to\infty} \sqrt{12 + a_n} \implies L = \sqrt{12 + L}.$$
Mindkét oldalt négyzetre emelve ($L \ge 0$ mellett):
$$L^2 = 12 + L \iff L^2 - L - 12 = 0.$$
A másodfokú egyenlet szorzattá alakítása:
$$(L - 4)(L + 3) = 0.$$
A lehetséges gyökök $L = 4$ és $L = -3$. Mivel $L \ge 0$, az $L = -3$ nem lehet megoldás.
Ezért a sorozat határértéke:
$$\lim_{n\to\infty} a_n = 4.$$

::: elmelet
**Elméleti háttér — Rekurzív sorozatok konvergenciája és a fixpont-elv.**

- **Monoton konvergencia tétel:** Ha egy valós számsorozat monoton növekvő és felülről korlátos, akkor konvergens, és $\lim_{n\to\infty} a_n = \sup \{a_n : n \in \mathbb{N}\}$.
- **Határérték meghatározása rekurzióból:** Ha $a_{n+1} = f(a_n)$ és $f$ folytonos függvény, akkor konvergencia esetén a határérték kielégíti az $L = f(L)$ fixpont-egyenletet.
- **Tipikus hiba:** Az $L = f(L)$ egyenlet megoldása ÖNMAGÁBAN NEM BIZONYÍTJA a konvergenciát! (Például $a_{n+1} = 2a_n - 1, a_1 = 2$ esetén az $L = 2L - 1 \implies L = 1$ egyenletnek van megoldása, mégis $a_n = 2^{n-1} + 1 \to +\infty$). Először MINDIG a korlátosságot és monotonitást kell igazolni!
:::

## Gy34.2. feladat

Legyen $x_1 = 3$ és minden $n \ge 1$ esetén
$$x_{n+1} = \frac{1}{2}\left(x_n + \frac{5}{x_n}\right)$$
(Babiloni gyökvonó algoritmus $\sqrt{5}$-re).

a) Bizonyítsuk be az AM–GM egyenlőtlenséggel, hogy $x_n \ge \sqrt{5}$ minden $n \ge 2$ esetén!

b) Mutassuk meg, hogy a sorozat monoton csökken $n \ge 2$-re!

c) Igazoljuk, hogy a sorozat konvergens, és $\lim_{n\to\infty} x_n = \sqrt{5}$!

**Megoldás.**

a) Világos, hogy $x_1 = 3 > 0$, és ha $x_n > 0$, akkor $x_{n+1} = \frac{1}{2}(x_n + 5/x_n) > 0$, így a sorozat minden tagja szigorúan pozitív.
Tetszőleges $n \ge 1$ esetén alkalmazzuk a kétváltozós számtani és mértani közepek közötti egyenlőtlenséget az $x_n > 0$ és $\frac{5}{x_n} > 0$ számokra:
$$x_{n+1} = \frac{x_n + \frac{5}{x_n}}{2} \ge \sqrt{x_n \cdot \frac{5}{x_n}} = \sqrt{5}.$$
Ez azt jelenti, hogy az index növelésével minden $n \ge 1$-re $x_{n+1} \ge \sqrt{5}$, vagyis:
$$x_n \ge \sqrt{5} \quad \text{minden } n \ge 2 \text{ esetén}.$$
A sorozat tehát alulról korlátos egy alsó korlát $\sqrt{5}$. $\blacksquare$

b) Vizsgáljuk meg két szomszédos tag különbségét $n \ge 2$ esetén:
$$x_n - x_{n+1} = x_n - \frac{1}{2}\left(x_n + \frac{5}{x_n}\right) = \frac{x_n}{2} - \frac{5}{2x_n} = \frac{x_n^2 - 5}{2x_n}.$$
Mivel $n \ge 2$-re az a) rész szerint $x_n \ge \sqrt{5}$, ezért $x_n^2 \ge 5$, így a számláló $x_n^2 - 5 \ge 0$.
A nevező $2x_n > 0$.
Ezért:
$$x_n - x_{n+1} \ge 0 \iff x_{n+1} \le x_n \quad \forall n \ge 2.$$
A sorozat tehát az $n = 2$ indextől kezdve monoton csökkenő. $\blacksquare$

c) Mivel az $(x_n)_{n \ge 2}$ sorozat monoton csökkenő és alulról korlátos ($\sqrt{5}$ alsó korlát), a monoton konvergencia tétel értelmében létezik véges határértéke:
$$\lim_{n\to\infty} x_n = L \in \mathbb{R}.$$
Mivel minden $n \ge 2$-re $x_n \ge \sqrt{5}$, a határértékre is $L \ge \sqrt{5} > 0$.
A rekurziós formulában mindkét oldalon határértéket képezve:
$$L = \frac{1}{2}\left(L + \frac{5}{L}\right) \iff 2L = L + \frac{5}{L} \iff L = \frac{5}{L} \iff L^2 = 5.$$
Mivel $L > 0$, az egyetlen lehetséges megoldás:
$$L = \sqrt{5}.$$
Tehát a sorozat határértéke: $\lim_{n\to\infty} x_n = \sqrt{5}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Newton–Raphson iteráció és kvadratikus konvergencia.**

- **Babiloni módszer (Hérón-módszer):** Az $x_{n+1} = \frac{1}{2}(x_n + c/x_n)$ rekurzió a Newton-módszer az $f(x) = x^2 - c = 0$ egyenletre.
- **Konvergencia sebessége:** Rendkívül gyors (négyzetes/kvadratikus): a hibára $x_{n+1} - \sqrt{c} = \frac{(x_n - \sqrt{c})^2}{2x_n}$ teljesül, vagyis a pontos tizedesjegyek száma minden lépésben megduplázódik! Már $x_1 = 3$-ból $x_2 = \frac{7}{3} \approx 2{,}333$, $x_3 = \frac{47}{21} \approx 2{,}2381$ (ahol $\sqrt{5} \approx 2{,}236068$).
:::

## Gy35.1. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg explicit küszöbindexet konkrétan $\varepsilon = 0{,}01$ mellett:

a) $a_n = \sqrt{n + 2} - \sqrt{n}$;

b) $b_n = \sqrt{n^2 + 4n} - n$.

**Megoldás.**

a) 1. *Átalakítás (gyöktelenítés):*
Szorozzunk és osszunk a konjugálttal:
$$a_n = (\sqrt{n + 2} - \sqrt{n}) \frac{\sqrt{n + 2} + \sqrt{n}}{\sqrt{n + 2} + \sqrt{n}} = \frac{(n + 2) - n}{\sqrt{n + 2} + \sqrt{n}} = \frac{2}{\sqrt{n + 2} + \sqrt{n}}.$$
Mivel a nevező tart $+\infty$-hez, $\lim_{n\to\infty} a_n = 0$.
2. *Küszöbindex keresése:*
A nevezőt alulról becsüljük: $\sqrt{n + 2} + \sqrt{n} > 2\sqrt{n}$.
Így a hibára:
$$|a_n - 0| = \frac{2}{\sqrt{n + 2} + \sqrt{n}} < \frac{2}{2\sqrt{n}} = \frac{1}{\sqrt{n}}.$$
Azt szeretnénk, hogy $\frac{1}{\sqrt{n}} < \varepsilon \iff \sqrt{n} > \frac{1}{\varepsilon} \iff n > \frac{1}{\varepsilon^2}$.
$\varepsilon = 0{,}01 = 10^{-2}$ esetén:
$$\frac{1}{\varepsilon^2} = \frac{1}{10^{-4}} = 10000.$$
A küszöbindex: **$N_0 = 10000$**. (Minden $n > 10000$ esetén $|a_n| < 0{,}01$.)

b) 1. *Átalakítás:*
Bővítsünk a konjugálttal:
$$b_n = (\sqrt{n^2 + 4n} - n) \frac{\sqrt{n^2 + 4n} + n}{\sqrt{n^2 + 4n} + n} = \frac{(n^2 + 4n) - n^2}{\sqrt{n^2 + 4n} + n} = \frac{4n}{\sqrt{n^2 + 4n} + n}.$$
Osszuk el a számlálót és a nevezőt $n$-nel:
$$b_n = \frac{4}{\sqrt{1 + \frac{4}{n}} + 1}.$$
Ha $n \to \infty$, a nevező $\sqrt{1 + 0} + 1 = 2$-höz tart, így a határérték:
$$\lim_{n\to\infty} b_n = \frac{4}{2} = 2.$$
2. *Küszöbindex keresése:*
Vizsgáljuk a határértéktől való eltérést:
$$|b_n - 2| = \left|\frac{4}{\sqrt{1 + 4/n} + 1} - 2\right| = 2 \left|\frac{2 - (\sqrt{1 + 4/n} + 1)}{\sqrt{1 + 4/n} + 1}\right| = 2 \frac{\sqrt{1 + 4/n} - 1}{\sqrt{1 + 4/n} + 1}.$$
A számlálót gyöktelenítjük: $\sqrt{1 + 4/n} - 1 = \frac{4/n}{\sqrt{1 + 4/n} + 1}$.
Így:
$$|b_n - 2| = \frac{8/n}{(\sqrt{1 + 4/n} + 1)^2}.$$
Mivel a nevező nagyobb, mint $(1 + 1)^2 = 4$:
$$|b_n - 2| < \frac{8/n}{4} = \frac{2}{n}.$$
Azt szeretnénk, hogy $\frac{2}{n} < \varepsilon \iff n > \frac{2}{\varepsilon}$.
$\varepsilon = 0{,}01 = \frac{1}{100}$ esetén:
$$\frac{2}{\varepsilon} = \frac{2}{0{,}01} = 200.$$
A küszöbindex: **$N_0 = 200$**. (Minden $n > 200$ esetén $|b_n - 2| < 0{,}01$.)

::: elmelet
**Elméleti háttér — $\infty - \infty$ típusú határozatlan alakok feloldása gyöktelenítéssel.**

- **Konjugálttal való bővítés:** Az $A - B = \frac{A^2 - B^2}{A + B}$ azonosság alapvető fogás a különbségek kezelésére, mert a határozatlan $\infty - \infty$ formát $\frac{\infty}{\infty}$ formává alakítja, ahol a domináns hatványok már egyszerűen leolvashatók.
- **Küszöbindex élesítése:** A nevező elhagyásával kapott egyszerűbb felső becslések (pl. $|b_n - 2| < \frac{2}{n}$) kissé nagyobb küszöbindexet adnak az elméleti minimumnál, de matematikailag teljesen korrektek és kézzel számolhatók.
:::

## Gy35.2. feladat

a) Számítsuk ki a $\lim_{n\to\infty} \left(\sqrt{4n^2 + 3n} - 2n\right)$ határértéket!

b) Határozzuk meg a $\lim_{n\to\infty} \left(\sqrt[3]{n + 1} - \sqrt[3]{n}\right)$ határértéket, és adjunk meg hozzá tetszőleges $\varepsilon > 0$-ra alkalmas $N_0(\varepsilon)$ küszöbindexet!

**Megoldás.**

a) Bővítsünk a konjugált kifejezéssel:
$$\sqrt{4n^2 + 3n} - 2n = \frac{(\sqrt{4n^2 + 3n} - 2n)(\sqrt{4n^2 + 3n} + 2n)}{\sqrt{4n^2 + 3n} + 2n} = \frac{(4n^2 + 3n) - 4n^2}{\sqrt{4n^2 + 3n} + 2n} = \frac{3n}{\sqrt{4n^2 + 3n} + 2n}.$$
Emeljünk ki $n$-et a számlálóból és a nevezőből ($n > 0$ mellett $\sqrt{4n^2 + 3n} = n \sqrt{4 + 3/n}$):
$$\frac{3n}{n\left(\sqrt{4 + \frac{3}{n}} + 2\right)} = \frac{3}{\sqrt{4 + \frac{3}{n}} + 2}.$$
Mivel $\lim_{n\to\infty} \frac{3}{n} = 0$, a műveleti szabályok szerint:
$$\lim_{n\to\infty} \left(\sqrt{4n^2 + 3n} - 2n\right) = \frac{3}{\sqrt{4 + 0} + 2} = \frac{3}{2 + 2} = \frac{3}{4}.$$

b) Alkalmazzuk az $a^3 - b^3 = (a - b)(a^2 + ab + b^2)$ azonosságot az $a = \sqrt[3]{n+1}$ és $b = \sqrt[3]{n}$ választással:
$$\sqrt[3]{n+1} - \sqrt[3]{n} = \frac{(n + 1) - n}{\sqrt[3]{(n+1)^2} + \sqrt[3]{n(n+1)} + \sqrt[3]{n^2}} = \frac{1}{\sqrt[3]{(n+1)^2} + \sqrt[3]{n(n+1)} + \sqrt[3]{n^2}}.$$
Mivel a nevező minden tagja tart $+\infty$-hez, a reciprok határértéke:
$$\lim_{n\to\infty} \left(\sqrt[3]{n+1} - \sqrt[3]{n}\right) = 0.$$
*Küszöbindex keresése:*
A nevező mindhárom tagja legalább akkora, mint $\sqrt[3]{n^2} = n^{2/3}$. Így:
$$\left|\sqrt[3]{n+1} - \sqrt[3]{n} - 0\right| < \frac{1}{3n^{2/3}}.$$
Azt szeretnénk, hogy:
$$\frac{1}{3n^{2/3}} < \varepsilon \iff 3n^{2/3} > \frac{1}{\varepsilon} \iff n^{2/3} > \frac{1}{3\varepsilon} \iff n > \left(\frac{1}{3\varepsilon}\right)^{3/2} = \frac{1}{3\sqrt{3}\,\varepsilon^{3/2}}.$$
Alkalmas küszöbindex:
$$N_0(\varepsilon) = \left\lfloor \frac{1}{3\sqrt{3}\,\varepsilon^{3/2}} \right\rfloor.$$
Minden $n > N_0(\varepsilon)$ esetén a feltétel teljesül. $\blacksquare$

::: elmelet
**Elméleti háttér — Köbgyökös kifejezések gyöktelenítése.**

- **Általános gyöktelenítési formula:**
  $$A - B = \frac{A^k - B^k}{A^{k-1} + A^{k-2}B + \dots + B^{k-1}}.$$
  $k = 3$ esetén az $A^2 + AB + B^2$ kifejezéssel szorzunk és osztunk.
- **Nagyságrend köbgyöknél:** Míg $\sqrt{n+1} - \sqrt{n} \sim \frac{1}{2\sqrt{n}} = O(n^{-1/2})$, addig $\sqrt[3]{n+1} - \sqrt[3]{n} \sim \frac{1}{3n^{2/3}} = O(n^{-2/3})$, vagyis gyorsabban tart nullához!
:::

## Gy36.1. feladat

a) Bizonyítsuk be a tételt: ha a $(b_n)$ sorozat korlátos, és az $(a_n)$ sorozat nullsorozat ($\lim_{n\to\infty} a_n = 0$), akkor a szorzatuk is nullsorozat, azaz
$$\lim_{n\to\infty} (a_n b_n) = 0.$$

b) Ennek felhasználásával számítsuk ki a $\lim_{n\to\infty} \dfrac{\sin(n^2 + 1)}{n}$ határértéket, és adjunk meg tetszőleges $\varepsilon > 0$-hoz alkalmas $N_0(\varepsilon)$ küszöbindexet!

**Megoldás.**

a) Mivel a $(b_n)$ sorozat korlátos, a definíció szerint létezik olyan $K > 0$ valós konstans, amelyre:
$$|b_n| \le K \quad \text{minden } n \in \mathbb{N} \text{ esetén}.$$
Legyen $\varepsilon > 0$ tetszőleges valós szám.
Mivel $\lim_{n\to\infty} a_n = 0$, az $\varepsilon' = \frac{\varepsilon}{K} > 0$ értékhez létezik olyan $N_0 \in \mathbb{N}$ küszöbindex, hogy minden $n > N_0$ esetén:
$$|a_n - 0| = |a_n| < \frac{\varepsilon}{K}.$$
Ekkor minden $n > N_0$ esetén a szorzat abszolút értéke:
$$|a_n b_n - 0| = |a_n b_n| = |a_n|\,|b_n| < \frac{\varepsilon}{K} \cdot K = \varepsilon.$$
A határérték definíciója szerint ez pontosan azt jelenti, hogy $\lim_{n\to\infty} (a_n b_n) = 0$. $\blacksquare$

b) Tekintsük a megadott sorozatot:
$$x_n = \frac{\sin(n^2 + 1)}{n} = \frac{1}{n} \cdot \sin(n^2 + 1).$$
Itt:
- $a_n = \frac{1}{n}$ nullsorozat, hiszen $\lim_{n\to\infty} \frac{1}{n} = 0$.
- $b_n = \sin(n^2 + 1)$ korlátos sorozat, hiszen a szinuszfüggvény értékkészlete $[-1, 1]$, így $|\sin(n^2 + 1)| \le 1$ minden $n$-re ($K = 1$).
Az a) részben bizonyított tétel szerint ezért:
$$\lim_{n\to\infty} \frac{\sin(n^2 + 1)}{n} = 0.$$
*Küszöbindex keresése:*
A hibára:
$$|x_n - 0| = \frac{|\sin(n^2 + 1)|}{n} \le \frac{1}{n}.$$
Azt szeretnénk, hogy $\frac{1}{n} < \varepsilon \iff n > \frac{1}{\varepsilon}$.
Alkalmas küszöbindex tehát:
$$N_0(\varepsilon) = \left\lfloor \frac{1}{\varepsilon} \right\rfloor.$$
Minden $n > N_0(\varepsilon)$ esetén $|x_n - 0| \le \frac{1}{n} < \varepsilon$. $\blacksquare$

::: elmelet
**Elméleti háttér — Nullsorozat és korlátos sorozat szorzata.**

- **Gyakori hiba:** „$\lim(ab) = \lim a \cdot \lim b$”. Ez a szorzásszabály CSAK AKKOR alkalmazható, ha mindkét tényezőnek LÉTEZIK a határértéke! A $\sin(n^2+1)$ sorozat divergens (oszcillál), határértéke nem létezik, így a hagyományos szorzatszabály formálisan nem használható.
- **A „korlátos $\times$ nullsorozat” tétel ereje:** Nem követeli meg a második tényező határértékének létezését, csupán a korlátosságát. Ezzel az oszcilláló kifejezések azonnal kezelhetők.
:::

## Gy36.2. feladat

A rendőrelv (csendőrelv) felhasználásával határozzuk meg az alábbi sorozatok határértékét:

a) $a_n = \dfrac{[n \sqrt{2}]}{n}$;

b) $b_n = \sum_{k=1}^n \dfrac{1}{n^2 + k} = \dfrac{1}{n^2 + 1} + \dfrac{1}{n^2 + 2} + \dots + \dfrac{1}{n^2 + n}$.

**Megoldás.**

a) Használjuk fel az egészrész alapvető egyenlőtlenségét: minden $x \in \mathbb{R}$ esetén
$$x - 1 < [x] \le x.$$
Alkalmazzuk ezt az $x = n\sqrt{2}$ értékre:
$$n\sqrt{2} - 1 < [n\sqrt{2}] \le n\sqrt{2}.$$
Osszuk el mindkét oldalt a pozitív $n$ számmal:
$$\frac{n\sqrt{2} - 1}{n} < \frac{[n\sqrt{2}]}{n} \le \frac{n\sqrt{2}}{n} \iff \sqrt{2} - \frac{1}{n} < a_n \le \sqrt{2}.$$
Határozzuk meg a két közrefogó sorozat határértékét:
$$\lim_{n\to\infty} \left(\sqrt{2} - \frac{1}{n}\right) = \sqrt{2} - 0 = \sqrt{2},$$
$$\lim_{n\to\infty} \sqrt{2} = \sqrt{2}.$$
Mivel a bal és a jobb oldali sorozat határértéke megegyezik ($\sqrt{2}$), a rendőrelv alapján:
$$\lim_{n\to\infty} a_n = \lim_{n\to\infty} \frac{[n \sqrt{2}]}{n} = \sqrt{2}.$$

b) A $b_n$ összeg $n$ darab pozitív törtből áll:
$$b_n = \sum_{k=1}^n \frac{1}{n^2 + k}.$$
Mivel a nevezők $k = 1$-től $k = n$-ig szigorúan nőnek:
$$n^2 < n^2 + 1 < n^2 + 2 < \dots < n^2 + n,$$
ezért a törtek csökkennek: a legnagyobb tag az első ($\frac{1}{n^2+1}$), a legkisebb tag az utolsó ($\frac{1}{n^2+n}$).
- *Alsó becslés:* az összeget alulról becsüljük, ha mind az $n$ darab tagot a legkisebbel helyettesítjük:
  $$b_n \ge \sum_{k=1}^n \frac{1}{n^2 + n} = n \cdot \frac{1}{n^2 + n} = \frac{n}{n^2 + n} = \frac{1}{n + 1}.$$
- *Felső becslés:* az összeget felülről becsüljük, ha mind az $n$ darab tagot a legnagyobbal (sőt, a még kisebb nevezőjű $\frac{1}{n^2}$-tel) helyettesítjük:
  $$b_n \le \sum_{k=1}^n \frac{1}{n^2} = n \cdot \frac{1}{n^2} = \frac{1}{n}.$$
Tehát minden $n \in \mathbb{N}$ esetén:
$$\frac{1}{n + 1} \le b_n \le \frac{1}{n}.$$
Mivel $\lim_{n\to\infty} \frac{1}{n+1} = 0$ és $\lim_{n\to\infty} \frac{1}{n} = 0$, a rendőrelv értelmében:
$$\lim_{n\to\infty} b_n = 0. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — A rendőrelv (Sandwich-tétel) és összegek becslése.**

- **Rendőrelv (csendőrelv):** Ha $x_n \le y_n \le z_n$ minden elegendően nagy $n$-re, és $\lim x_n = \lim z_n = L$, akkor $\lim y_n = L$.
- **Változó tagú összegek kezelése:** Ha az összeg tagjainak száma tart végtelenhez (itt $n$ darab tag), NEM szabad tagonként határértéket venni! (Tagonként $\frac{1}{n^2+k} \to 0$, de $n$ darab $0$-hoz tartó tag összege nem feltétlenül $0$). A helyes módszer a minimális és maximális taggal való egyenletes közrefogás.
:::

## Gy37.1. feladat

a) Írjuk fel kvantorokkal a $\lim_{n\to\infty} a_n = A$ állítást, majd képezzük a formális tagadását ($a_n \not\to A$) kvantorokkal és szabatos szöveges megfogalmazással!

b) A definíció tagadása alapján bizonyítsuk be, hogy a $c_n = (-1)^n$ sorozatnak nem határértéke az $A = 1$ szám, sőt semmilyen valós szám sem lehet határértéke!

**Megoldás.**

a) 1. *A konvergencia definíciója:*
$$\lim_{n\to\infty} a_n = A \iff (\forall \varepsilon > 0)(\exists N_0 \in \mathbb{N})(\forall n > N_0)(|a_n - A| < \varepsilon).$$
2. *A határérték tagadása ($a_n \not\to A$):*
A kvantorok átfordulásával:
$$a_n \not\to A \iff (\exists \varepsilon_0 > 0)(\forall N \in \mathbb{N})(\exists n > N)(|a_n - A| \ge \varepsilon_0).$$
3. *Szöveges megfogalmazás:* Létezik olyan $\varepsilon_0 > 0$ sugarú környezet az $A$ körül, hogy bármilyen nagy $N$ küszöbindexet választunk, mindig található olyan $n > N$ index, amelyre a sorozat $a_n$ tagja kívül esik ezen a környezeten (azaz az $A$ rögzített környezetéből végtelen sok tag kilép).

b) 1. *Mutassuk meg, hogy $c_n \not\to 1$:*
Válasszuk az $\varepsilon_0 = 1 > 0$ értéket.
Tetszőleges $N \in \mathbb{N}$ esetén válasszunk egy $N$-nél nagyobb páratlan indexet, például $n = 2N + 1 > N$.
Ekkor $c_n = (-1)^{2N+1} = -1$.
A határértéktől vett eltérés:
$$|c_n - 1| = |-1 - 1| = |-2| = 2 \ge \varepsilon_0 = 1.$$
Mivel tetszőleges $N$-hez találtunk ilyen $n$-et, a tagadás definíciója szerint $c_n \not\to 1$.

2. *Mutassuk meg, hogy semmilyen $A \in \mathbb{R}$ nem határérték:*
Válasszuk az $\varepsilon_0 = 1$-et.
Mivel a sorozat tagjai felváltva $+1$ és $-1$, a két lehetséges érték távolsága $|1 - (-1)| = 2$.
A háromszög-egyenlőtlenség szerint tetszőleges $A \in \mathbb{R}$ esetén:
$$2 = |1 - (-1)| = |(1 - A) + (A - (-1))| \le |1 - A| + |-1 - A|.$$
Ezért $|1 - A|$ és $|-1 - A|$ közül legalább az egyiknek legalább $\frac{2}{2} = 1$-nek kell lennie!
- Ha $|1 - A| \ge 1$: tetszőleges $N$-hez választhatunk egy $n > N$ páros számot, ekkor $c_n = 1$, így $|c_n - A| = |1 - A| \ge 1 = \varepsilon_0$.
- Ha $|-1 - A| \ge 1$: tetszőleges $N$-hez választhatunk egy $n > N$ páratlan számot, ekkor $c_n = -1$, így $|c_n - A| = |-1 - A| \ge 1 = \varepsilon_0$.
Tehát semmilyen $A \in \mathbb{R}$ számra nem teljesülhet a határérték definíciója, a sorozat divergens. $\blacksquare$

::: elmelet
**Elméleti háttér — Divergencia bizonyítása és a környezetek diszjunktsága.**

- **Divergencia igazolásának receptje:**
  1. Rögzítünk egy konkrét $\varepsilon_0 > 0$-t (nem hagyjuk általánosan!).
  2. Tetszőleges $N$-hez konstrukciót adunk olyan $n > N$-re, amely kilép az $\varepsilon_0$ környezetből.
- **Hausdorff-tulajdonság:** Két különböző feltételezett határértékhez ($A_1 \ne A_2$) választhatók diszjunkt környezetek ($\varepsilon = \frac{|A_1 - A_2|}{2}$). Egy sorozat végtelen sok tagja nem sűrűsödhet egyszerre két diszjunkt környezetbe úgy, hogy konvergens legyen.
:::

## Gy37.2. feladat

a) Írjuk fel logikai kvantorokkal annak tagadását, hogy az $(a_n)$ sorozat Cauchy-sorozat!

b) Igazoljuk a fenti tagadás alapján, hogy az
$$a_n = \sin\left(\frac{n\pi}{2}\right)$$
sorozat divergens!

**Megoldás.**

a) Egy sorozat Cauchy-sorozat, ha:
$$(\forall \varepsilon > 0)(\exists N_0 \in \mathbb{N})(\forall n, m > N_0)(|a_n - a_m| < \varepsilon).$$
Ennek formális tagadása:
$$(\exists \varepsilon_0 > 0)(\forall N \in \mathbb{N})(\exists n, m > N)(|a_n - a_m| \ge \varepsilon_0).$$
Szövegesen: Létezik olyan $\varepsilon_0 > 0$, hogy bármilyen küszöbindex után találhatók olyan $n$ és $m$ indexek, amelyekhez tartozó sorozattagok távolsága legalább $\varepsilon_0$.

b) Írjuk ki a sorozat tagjait kis $n$-ekre:
- $n = 1$: $\sin(\pi/2) = 1$
- $n = 2$: $\sin(\pi) = 0$
- $n = 3$: $\sin(3\pi/2) = -1$
- $n = 4$: $\sin(2\pi) = 0$
A tagok periodikusan ismétlődnek: $1, 0, -1, 0, 1, 0, -1, 0, \dots$
Válasszuk az **$\varepsilon_0 = 1$** értéket (vagy akár $\varepsilon_0 = 2$-t).
Legyen $N \in \mathbb{N}$ tetszőleges küszöbindex.
Válasszunk $N$-nél nagyobb indexeket az alábbiak szerint:
- Legyen $n$ a legkisebb $N$-nél nagyobb $4k + 1$ alakú szám, ekkor $n > N$ és $a_n = \sin\left(\frac{(4k+1)\pi}{2}\right) = \sin(2k\pi + \pi/2) = 1$.
- Legyen $m$ a legkisebb $N$-nél nagyobb $4k + 3$ alakú szám, ekkor $m > N$ és $a_m = \sin\left(\frac{(4k+3)\pi}{2}\right) = -1$.
A két kiválasztott tag távolsága:
$$|a_n - a_m| = |1 - (-1)| = 2 \ge \varepsilon_0 = 1.$$
Mivel tetszőleges $N$-hez találtunk ilyen $n, m > N$ indexeket, a sorozat nem Cauchy-sorozat.
Mivel $\mathbb{R}$-ben egy sorozat pontosan akkor konvergens, ha Cauchy-sorozat (Cauchy-féle konvergenciakritérium), a sorozat szükségképpen divergens. $\blacksquare$

::: elmelet
**Elméleti háttér — Cauchy-sorozatok és a belső konvergenciakritérium.**

- **Cauchy-tulajdonság:** „Belső” kritérium: anélkül teszi lehetővé a konvergencia vizsgálatát, hogy ismernénk a határértéket! A tagok egymáshoz viszonyított közelségét méri.
- **Teljesség $\mathbb{R}$-ben:** Minden Cauchy-sorozat konvergens (Bolzano–Cauchy-tétel). Ezért ha egy sorozat nem Cauchy, akkor automatikusan divergens.
:::

## Gy38.1. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg tetszőleges $\varepsilon > 0$-hoz alkalmas $N_0(\varepsilon)$ küszöbindexet:

a) $a_n = \dfrac{4n + 3}{2n - 1}$;

b) $b_n = \dfrac{1}{n^2 + 2n}$.

**Megoldás.**

a) 1. *Határérték:*
$$a_n = \frac{4n + 3}{2n - 1} = \frac{4 + \frac{3}{n}}{2 - \frac{1}{n}} \to \frac{4}{2} = 2.$$
2. *Küszöbindex:*
Vizsgáljuk az $|a_n - 2|$ eltérést ($n \ge 1$ esetén $2n - 1 > 0$):
$$|a_n - 2| = \left|\frac{4n + 3 - 2(2n - 1)}{2n - 1}\right| = \left|\frac{4n + 3 - 4n + 2}{2n - 1}\right| = \frac{5}{2n - 1}.$$
Azt szeretnénk, hogy $\frac{5}{2n - 1} < \varepsilon$:
$$\frac{5}{2n - 1} < \varepsilon \iff 2n - 1 > \frac{5}{\varepsilon} \iff 2n > \frac{5}{\varepsilon} + 1 \iff n > \frac{5}{2\varepsilon} + \frac{1}{2}.$$
Megfelelő küszöbindex:
$$N_0(\varepsilon) = \left\lfloor \frac{5}{2\varepsilon} + \frac{1}{2} \right\rfloor.$$
Minden $n > N_0(\varepsilon)$ esetén $|a_n - 2| < \varepsilon$.

b) 1. *Határérték:*
Mivel $n^2 + 2n \to +\infty$, a reciproka $0$-hoz tart: $\lim_{n\to\infty} b_n = 0$.
2. *Küszöbindex:*
Mivel $n \ge 1$, $n^2 + 2n > n^2 > 0$, ezért:
$$|b_n - 0| = \frac{1}{n^2 + 2n} < \frac{1}{n^2}.$$
Azt szeretnénk, hogy $\frac{1}{n^2} < \varepsilon \iff n^2 > \frac{1}{\varepsilon} \iff n > \frac{1}{\sqrt{\varepsilon}}$.
Alkalmas küszöbindex:
$$N_0(\varepsilon) = \left\lfloor \frac{1}{\sqrt{\varepsilon}} \right\rfloor.$$
Minden $n > N_0(\varepsilon)$ esetén $|b_n - 0| < \frac{1}{n^2} < \varepsilon$. $\blacksquare$

::: elmelet
**Elméleti háttér — Küszöbindex közvetlen kifejezése.**

- **Egyszerűsített majoráns alkalmazása:** $n^2 + 2n > n^2$ triviális egyenlőtlenség elhagyja a lineáris tagot, cserébe azonnal vonható négyzetgyök, és elkerülhető a másodfokú egyenlőtlenség megoldóképlete. Analízisben a becslés célja nem a minimális küszöbindex megtalálása, hanem EGY érvényes küszöbindex létezésének igazolása.
:::

## Gy38.2. feladat

Számítsuk ki a konvergencia műveleti szabályai és nevezetes tételei alapján az alábbi határértékeket:

a) $\lim_{n\to\infty} \dfrac{\sqrt{9n^2 + 5n} - 3n}{\sqrt{4n^2 + 1} - 2n}$;

b) $\lim_{n\to\infty} \sqrt[n]{3^n + 4^n}$.

**Megoldás.**

a) Mind a számláló, mind a nevező $\infty - \infty$ típusú határozatlan alak.
Gyöktelenítsük külön-külön a számlálót és a nevezőt a konjugáltakkal való szorzással:
- Számláló:
  $$\sqrt{9n^2 + 5n} - 3n = \frac{(9n^2 + 5n) - 9n^2}{\sqrt{9n^2 + 5n} + 3n} = \frac{5n}{\sqrt{9n^2 + 5n} + 3n} = \frac{5}{\sqrt{9 + \frac{5}{n}} + 3}.$$
  Ennek határértéke: $\frac{5}{\sqrt{9} + 3} = \frac{5}{6}$.
- Nevező:
  $$\sqrt{4n^2 + 1} - 2n = \frac{(4n^2 + 1) - 4n^2}{\sqrt{4n^2 + 1} + 2n} = \frac{1}{\sqrt{4n^2 + 1} + 2n} = \frac{1}{n\left(\sqrt{4 + \frac{1}{n^2}} + 2\right)}.$$
Írjuk fel a teljes törtet:
$$\frac{\sqrt{9n^2 + 5n} - 3n}{\sqrt{4n^2 + 1} - 2n} = \frac{\frac{5n}{\sqrt{9n^2 + 5n} + 3n}}{\frac{1}{\sqrt{4n^2 + 1} + 2n}} = 5n \cdot \frac{\sqrt{4n^2 + 1} + 2n}{\sqrt{9n^2 + 5n} + 3n}.$$
A jobb oldali hányados:
$$\frac{\sqrt{4n^2 + 1} + 2n}{\sqrt{9n^2 + 5n} + 3n} = \frac{n(\sqrt{4 + 1/n^2} + 2)}{n(\sqrt{9 + 5/n} + 3)} \to \frac{2 + 2}{3 + 3} = \frac{4}{6} = \frac{2}{3}.$$
Ezt megszorozva a számlálóban maradt $5n$-nel:
$$5n \cdot \frac{2}{3} \to +\infty.$$
Tehát a sorozat határértéke: **$+\infty$** (a számláló $O(1)$ nagyságrendű, míg a nevező $O(1/n)$, így hányadosuk $O(n)$ rendben tart a végtelenbe).

b) Emeljük ki a domináns tagot ($4^n$-t) a gyök alól:
$$\sqrt[n]{3^n + 4^n} = \sqrt[n]{4^n \left(\left(\frac{3}{4}\right)^n + 1\right)} = 4 \cdot \sqrt[n]{1 + \left(\frac{3}{4}\right)^n}.$$
Becsüljük közre a gyökös kifejezést:
Mivel $\left(\frac{3}{4}\right)^n > 0$, ezért:
$$1 < 1 + \left(\frac{3}{4}\right)^n \le 1 + 1 = 2 \quad (\text{mivel } 3/4 < 1).$$
Mindkét oldalból $n$-edik gyököt vonva:
$$1 = \sqrt[n]{1} < \sqrt[n]{1 + \left(\frac{3}{4}\right)^n} \le \sqrt[n]{2}.$$
Mivel $\lim_{n\to\infty} \sqrt[n]{2} = 1$, a rendőrelv alapján:
$$\lim_{n\to\infty} \sqrt[n]{1 + \left(\frac{3}{4}\right)^n} = 1.$$
Ezt $4$-gyel megszorozva:
$$\lim_{n\to\infty} \sqrt[n]{3^n + 4^n} = 4 \cdot 1 = 4. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Domináns tag kiemelése és $L^p$ norma határértéke.**

- **Domináns tag kiemelése:** $\sqrt[n]{a^n + b^n} = \max(a, b) \sqrt[n]{1 + (kisebb/nagyobb)^n}$. Mivel a kisebb/nagyobb hányados $< 1$, hatványa $0$-hoz tart, és az $n$-edik gyöke $1$-hez tart.
- **Általános szabály:** Véges sok pozitív tagra $\lim_{n\to\infty} \sqrt[n]{c_1^n + \dots + c_k^n} = \max\{c_1, \dots, c_k\}$. Ez az analízisben az $L^p$ normák $L^\infty$ normához való tartásának alapja.
:::

## Gy39.1. feladat

a) Bizonyítsuk be a határérték definíciója alapján, hogy $\lim_{n\to\infty} a_n = A$ pontosan akkor teljesül, ha $\lim_{n\to\infty} |a_n - A| = 0$.

b) Igazoljuk a fordított háromszög-egyenlőtlenség segítségével, hogy ha $\lim_{n\to\infty} a_n = A$, akkor $\lim_{n\to\infty} |a_n| = |A|$. Igaz-e a tétel megfordítása?

**Megoldás.**

a) 1. *$\lim a_n = A \implies \lim |a_n - A| = 0$:*
Tegyük fel, hogy $a_n \to A$. Legyen $\varepsilon > 0$. A definíció szerint van $N_0$, hogy minden $n > N_0$-ra $|a_n - A| < \varepsilon$.
Jelölje $b_n = |a_n - A|$. Ekkor a $0$-tól vett eltérés:
$$\big|b_n - 0\big| = \big||a_n - A|\big| = |a_n - A| < \varepsilon.$$
Ez a definíció szerint pontosan azt jelenti, hogy $\lim_{n\to\infty} b_n = 0$.
2. *$\lim |a_n - A| = 0 \implies \lim a_n = A$:*
Ha $|a_n - A| \to 0$, akkor tetszőleges $\varepsilon > 0$-hoz létezik $N_0$, hogy minden $n > N_0$-ra $\big||a_n - A| - 0\big| = |a_n - A| < \varepsilon$. Ez szóról szóra az $a_n \to A$ definíciója. $\blacksquare$

b) 1. *Bizonyítás:*
Alkalmazzuk a fordított háromszög-egyenlőtlenséget:
$$\big||a_n| - |A|\big| \le |a_n - A|.$$
Tetszőleges $\varepsilon > 0$ esetén mivel $a_n \to A$, létezik $N_0 \in \mathbb{N}$, hogy minden $n > N_0$-ra $|a_n - A| < \varepsilon$.
Ekkor a fenti egyenlőtlenség miatt:
$$\big||a_n| - |A|\big| \le |a_n - A| < \varepsilon.$$
Ez bizonyítja, hogy $\lim_{n\to\infty} |a_n| = |A|$. $\blacksquare$

2. *A megfordítás vizsgálata:*
A megfordítás **általánosan nem igaz!**
*Ellenpélda:* Legyen $a_n = (-1)^n$.
Ekkor $|a_n| = |(-1)^n| = 1$ minden $n$-re, tehát $\lim_{n\to\infty} |a_n| = 1$ (konstans sorozat).
Ugyanakkor az $a_n = (-1)^n$ sorozat divergens, egyáltalán nincs határértéke.
*(Megjegyzés: A megfordítás egyetlen speciális esetben mégis igaz: ha $A = 0$, akkor $|a_n| \to 0 \iff a_n \to 0$.)*

::: elmelet
**Elméleti háttér — Az abszolút érték folytonossága és a nullsorozatok kitüntetett szerepe.**

- **Abszolútérték-képzés:** Nem veszít információt a nagyságról, de eldobja az előjelet. Ezért $a_n \to A \implies |a_n| \to |A|$ mindig igaz (az $x \mapsto |x|$ függvény folytonos), de visszafelé csak $A = 0$ esetén érvényes.
- **Redukció nullsorozatra:** Bármely $a_n \to A$ határérték visszavezethető az $a_n - A \to 0$ nullsorozatra. Ez egyszerűsíti a bizonyításokat.
:::

## Gy39.2. feladat

a) Bizonyítsuk be a definíció alapján, hogy ha $\lim_{n\to\infty} a_n = A$ és $\lim_{n\to\infty} b_n = B$, akkor
$$\lim_{n\to\infty} (a_n + b_n) = A + B.$$

b) Igaz-e, hogy ha $\lim_{n\to\infty} (a_n b_n) = 0$, akkor legalább az egyik sorozat nullsorozat ($\lim a_n = 0$ vagy $\lim b_n = 0$)? Válaszunkat indokoljuk!

**Megoldás.**

a) Legyen $\varepsilon > 0$ tetszőleges valós szám.
Mivel $\lim a_n = A$, az $\varepsilon/2 > 0$ hibakorláthoz létezik $N_1 \in \mathbb{N}$ úgy, hogy minden $n > N_1$ esetén $|a_n - A| < \frac{\varepsilon}{2}$.
Mivel $\lim b_n = B$, az $\varepsilon/2 > 0$ hibakorláthoz létezik $N_2 \in \mathbb{N}$ úgy, hogy minden $n > N_2$ esetén $|b_n - B| < \frac{\varepsilon}{2}$.
Válasszuk az $N_0 = \max\{N_1, N_2\}$ küszöbindexet.
Ekkor tetszőleges $n > N_0$ esetén a háromszög-egyenlőtlenség szerint:
$$|(a_n + b_n) - (A + B)| = |(a_n - A) + (b_n - B)| \le |a_n - A| + |b_n - B| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$
A határérték definíciója szerint ez pontosan azt jelenti, hogy $\lim_{n\to\infty} (a_n + b_n) = A + B$. $\blacksquare$

b) Az állítás **HAMIS.**
*Ellenpélda:*
Konstruáljunk két olyan sorozatot, amelyek felváltva nullák:
$$a_n = \begin{cases} 1, & \text{ha } n \text{ páros}, \\ 0, & \text{ha } n \text{ páratlan}, \end{cases} \qquad b_n = \begin{cases} 0, & \text{ha } n \text{ páros}, \\ 1, & \text{ha } n \text{ páratlan}. \end{cases}$$
Ekkor minden $n \in \mathbb{N}$ esetén a két tag szorzata:
$$a_n b_n = 0 \cdot 1 = 0.$$
Így az $(a_n b_n)$ szorzatsorozat azonosan nulla, ezért konvergens és határértéke:
$$\lim_{n\to\infty} (a_n b_n) = 0.$$
Ugyanakkor sem $(a_n)$, sem $(b_n)$ nem tart $0$-hoz (sőt mindkettő divergens, oszcillál $0$ és $1$ között).
Tehát a szorzat $0$-hoz tartásából nem következik, hogy bármelyik tényező tartana $0$-hoz.

::: elmelet
**Elméleti háttér — Határértékek összege és szorzatok nullosztói.**

- **Az $\varepsilon/2$ technika összeadásnál:** A linearitás miatt a hiba összeadódik, ezért a részeket $\varepsilon/2$-vel korlátozzuk.
- **Nullosztó-jelenség az analízisben:** A számtestekkel ellentétben (ahol $ab = 0 \implies a = 0$ vagy $b = 0$), a sorozatok gyűrűjében végtelen sok ortogonális elem van (diszjunkt tartójú sorozatok). Ezért a határértékek szorzatának nullasága csak akkor vonja maga után valamelyik határérték nullaságát, ha már tudjuk, hogy mindkét határérték létezik!
:::

## Gy40.1. feladat

a) Konstruáljunk olyan divergens számsorozatot, amelyre $\lim_{n\to\infty} (a_{n+1} - a_n) = 0$, és felülről nem korlátos ($a_n \to +\infty$)!

b) Konstruáljunk olyan korlátos divergens számsorozatot, amelyre szintén $\lim_{n\to\infty} (b_{n+1} - b_n) = 0$, de a sorozat mégsem konvergens!

**Megoldás.**

a) Tekintsük az $a_n = \sqrt{n}$ sorozatot.
1. *Divergens:* Mivel tetszőleges $K > 0$-ra $n > K^2$ esetén $\sqrt{n} > K$, ezért $\lim_{n\to\infty} a_n = +\infty$, a sorozat felülről nem korlátos, tehát divergens.
2. *Lépésközök határértéke:*
Gyöktelenítéssel:
$$a_{n+1} - a_n = \sqrt{n + 1} - \sqrt{n} = \frac{(n + 1) - n}{\sqrt{n + 1} + \sqrt{n}} = \frac{1}{\sqrt{n + 1} + \sqrt{n}}.$$
Mivel a nevező tart $+\infty$-hez:
$$\lim_{n\to\infty} (a_{n+1} - a_n) = 0.$$
(Egy másik klasszikus példa az $a_n = \ln n$ sorozat, ahol $a_{n+1} - a_n = \ln(1 + 1/n) \to 0$.)

b) Konstruáljunk egy olyan sorozatot, amely a $[0, 1]$ intervallumban „lassan” mozog oda-vissza $0$ és $1$ között egyre kisebb lépésekkel, például:
$$b_n = \sin(\sqrt{n}).$$
1. *Korlátos:* $|\sin(\sqrt{n})| \le 1$ minden $n$-re.
2. *Lépésközök:*
Alkalmazzuk a trigonometrikus különbségi azonosságot:
$$b_{n+1} - b_n = \sin(\sqrt{n+1}) - \sin(\sqrt{n}) = 2 \sin\left(\frac{\sqrt{n+1} - \sqrt{n}}{2}\right) \cos\left(\frac{\sqrt{n+1} + \sqrt{n}}{2}\right).$$
Mivel $|\cos x| \le 1$ és $|\sin x| \le |x|$ minden valós $x$-re:
$$|b_{n+1} - b_n| \le 2 \left|\frac{\sqrt{n+1} - \sqrt{n}}{2}\right| \cdot 1 = \sqrt{n+1} - \sqrt{n} = \frac{1}{\sqrt{n+1} + \sqrt{n}}.$$
Mivel ez nullához tart:
$$\lim_{n\to\infty} (b_{n+1} - b_n) = 0.$$
3. *Divergencia:* Mivel a $\sqrt{n}$ lépésközei nullához tartanak, az argumentum sűrűn befutja a valós számokat mod $2\pi$, így a szinusz értékei a teljes $[-1, 1]$ intervallumot sűrűn megközelítik, a sorozatnak torlódási pontja a $[-1, 1]$ minden pontja, tehát nem konvergens. $\blacksquare$

::: elmelet
**Elméleti háttér — A szomszédos tagok távolsága és a konvergencia kapcsolata.**

- **Végzetes tévedés:** $|a_{n+1} - a_n| \to 0 \not\implies (a_n)$ konvergens!
  A Cauchy-feltétel azt követeli meg, hogy $|a_n - a_m| < \varepsilon$ MINDEN $n, m > N_0$-ra, nemcsak a szomszédosakra! Végtelen sok pici lépés összege lehet végtelen (lásd harmonikus sor).
- **Mikor elég a lépésközök csökkenése?** Ha a lépésközök egy konvergens mértani sor szerint csökkennek, pl. $|a_{n+1} - a_n| \le q^n$ ($q < 1$), akkor a sorozat Cauchy, tehát konvergens.
:::

## Gy40.2. feladat

a) Mutassuk meg, hogy a harmonikus sor részletösszegeire, $H_n = \sum_{k=1}^n \frac{1}{k}$ esetén $H_{n+1} - H_n \to 0$, de $H_n \to +\infty$ (Oresme-féle bizonyítás)!

b) Bizonyítsuk be, hogy ha egy $(a_n)$ sorozatra teljesül, hogy $|a_{n+1} - a_n| \le 2^{-n}$ minden $n \in \mathbb{N}$ esetén, akkor $(a_n)$ konvergens!

**Megoldás.**

a) 1. *Lépésközök:*
$$H_{n+1} - H_n = \frac{1}{n + 1} \to 0, \quad \text{ha } n \to \infty.$$
2. *Divergencia ($H_n \to +\infty$):*
Csoportosítsuk a tagokat $2$ hatványai szerint (Nicole Oresme, kb. 1350):
$$H_{2^k} = 1 + \frac{1}{2} + \left(\frac{1}{3} + \frac{1}{4}\right) + \left(\frac{1}{5} + \dots + \frac{1}{8}\right) + \dots + \left(\frac{1}{2^{k-1} + 1} + \dots + \frac{1}{2^k}\right).$$
Minden zárójelben a tagokat alulról becsüljük az utolsó (legkisebb) taggal:
- $\frac{1}{3} + \frac{1}{4} > \frac{1}{4} + \frac{1}{4} = \frac{2}{4} = \frac{1}{2}$;
- $\frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8} > 4 \cdot \frac{1}{8} = \frac{1}{2}$;
- a $j$-edik csoportban $2^{j-1}$ darab tag van, mindegyik legalább $\frac{1}{2^j}$, így összegük $> 2^{j-1} \cdot \frac{1}{2^j} = \frac{1}{2}$.
Összesen $k - 1$ darab ilyen csoport van, így:
$$H_{2^k} > 1 + \frac{1}{2} + (k - 1) \cdot \frac{1}{2} = 1 + \frac{k}{2}.$$
Mivel $k \to \infty$ esetén $1 + \frac{k}{2} \to +\infty$, a részletösszegek sorozata felülről nem korlátos, és mivel monoton növekvő:
$$\lim_{n\to\infty} H_n = +\infty.$$

b) Legyen $m > n \ge 1$. Fejezzük ki $a_m - a_n$-et teleszkópikus összegként:
$$a_m - a_n = \sum_{j=n}^{m-1} (a_{j+1} - a_j).$$
Alkalmazzuk a háromszög-egyenlőtlenséget és a feltételt ($|a_{j+1} - a_j| \le 2^{-j}$):
$$|a_m - a_n| \le \sum_{j=n}^{m-1} |a_{j+1} - a_j| \le \sum_{j=n}^{m-1} 2^{-j} < \sum_{j=n}^\infty 2^{-j}.$$
A mértani sor összegképlete szerint:
$$\sum_{j=n}^\infty 2^{-j} = \frac{2^{-n}}{1 - 1/2} = 2 \cdot 2^{-n} = 2^{-(n-1)} = \frac{1}{2^{n-1}}.$$
Így minden $m > n$-re:
$$|a_m - a_n| < \frac{1}{2^{n-1}}.$$
Legyen $\varepsilon > 0$ tetszőleges. Mivel $\lim_{n\to\infty} \frac{1}{2^{n-1}} = 0$, létezik $N_0 \in \mathbb{N}$ úgy, hogy $\frac{1}{2^{N_0-1}} < \varepsilon$.
Ekkor minden $m > n > N_0$ esetén:
$$|a_m - a_n| < \frac{1}{2^{n-1}} \le \frac{1}{2^{N_0-1}} < \varepsilon.$$
Ez azt jelenti, hogy $(a_n)$ Cauchy-sorozat.
Mivel a valós számok tere teljes, minden Cauchy-sorozat konvergens, így $(a_n)$ valóban konvergens. $\blacksquare$

::: elmelet
**Elméleti háttér — Oresme csoportosítása és a Cauchy-kritérium mértani sorral.**

- **Harmonikus sor divergenciája:** Oresme bizonyítása az analízis egyik legkorábbi és legszebb érvelése. A sor olyan lassan divergál, hogy $H_n > 100$-hoz több mint $10^{43}$ tag kell!
- **Kontrakciós elv:** Ha $|a_{n+1} - a_n| \le q^n$ ($q < 1$), a tagok közötti távolságok összege konvergens, így a sorozat szükségképpen Cauchy. Ez a Banach-féle fixponttétel diszkrét alapja.
:::

## Gy41.1. feladat

Vizsgáljuk meg, hogy az alábbi formulák milyen tulajdonságát fejezik ki az $(a_n)$ valós számsorozatnak:

a) $(\exists N_0 \in \mathbb{N})(\forall \varepsilon > 0)(\forall n > N_0)(|a_n - A| < \varepsilon)$;

b) $(\exists \varepsilon > 0)(\exists N_0 \in \mathbb{N})(\forall n > N_0)(|a_n - A| < \varepsilon)$;

c) $(\forall N_0 \in \mathbb{N})(\forall \varepsilon > 0)(\exists n > N_0)(|a_n - A| < \varepsilon)$.

**Megoldás.**

a) A formula azt mondja: Létezik egy fix $N_0$ küszöbindex, amely után MINDEN $\varepsilon > 0$-ra teljesül, hogy $|a_n - A| < \varepsilon$.
Mivel egy nemnegatív valós szám ($|a_n - A|$) csak akkor lehet kisebb minden pozitív számnál, ha nulla:
$$|a_n - A| < \varepsilon \ \forall \varepsilon > 0 \iff |a_n - A| = 0 \iff a_n = A.$$
A formula tehát azt fejezi ki, hogy **a sorozat az $N_0$ indextől kezdve azonosan konstans $A$** (azaz $a_n = A$ minden $n > N_0$-ra, „végül konstans”).
Ez sokkal erősebb a sima konvergenciánál!

b) A formula jelentése: Létezik egy fix $\varepsilon > 0$ és egy $N_0$ index, hogy minden $n > N_0$-ra $a_n \in (A - \varepsilon, A + \varepsilon)$.
Ez azt jelenti, hogy az $N_0$ után a sorozat tagjai egy korlátos intervallumba esnek, az előtte lévő véges sok tag pedig véges halmaz, így szintén korlátos.
A formula tehát pontosan azt fejezi ki, hogy **a sorozat korlátos** (semmilyen konvergenciát nem követel meg, pl. $a_n = (-1)^n$ esetén $A = 0$ és $\varepsilon = 2$ mellett teljesül).

c) A formula jelentése: Bármilyen nagy $N_0$ indexet és bármilyen kicsi $\varepsilon > 0$-t választunk, az $N_0$ után mindig van olyan $n$ index, amelyre $a_n \in (A - \varepsilon, A + \varepsilon)$.
Ez pontosan azt jelenti, hogy az $A$ bármely környezetébe a sorozat végtelen sok tagja beleesik, vagyis **$A$ torlódási pontja (sűrűsödési értéke) a sorozatnak** (létezik olyan részsorozat, amely $A$-hoz tart).

::: elmelet
**Elméleti háttér — Kvantorok sorrendje és szemantikája a határérték-elméletben.**

- **A kvantorok kényes sorrendje:**
  - $\forall \varepsilon \exists N_0$: a standard konvergencia (a küszöbindex függ $\varepsilon$-tól).
  - $\exists N_0 \forall \varepsilon$: egyetlen univerzális küszöb minden pontosságra $\implies$ a tagok pontosan elérik a határértéket (végül konstans).
  - $\exists \varepsilon \forall n > N_0$: csupán egyetlen környezetbe esnek bele $\implies$ korlátosság.
  - $\forall N_0 \exists n > N_0$: nem mindegyik tag esik be, csak végtelen sok $\implies$ torlódási pont.
:::

## Gy41.2. feladat

Tekintsük az alábbi állítást:
„Minden $k \in \mathbb{N}$ természetes számhoz létezik olyan $N_k \in \mathbb{N}$ küszöbindex, hogy minden $n > N_k$ esetén $|a_n - A| < \frac{1}{k}$.”

Bizonyítsuk be, hogy ez az állítás logikailag ekvivalens a $\lim_{n\to\infty} a_n = A$ standard $\varepsilon$-os definíciójával!

**Megoldás.**

Kétirányú következtetést kell igazolnunk.

1. *Standard definícióból $\implies$ a feladat állítása:*
Tegyük fel, hogy $\lim_{n\to\infty} a_n = A$.
Legyen $k \in \mathbb{N}$ tetszőleges. Ekkor $\varepsilon = \frac{1}{k} > 0$ egy pozitív valós szám.
A standard definíció szerint ehhez az $\varepsilon$-hoz létezik $N_k = N_0(1/k) \in \mathbb{N}$ küszöbindex, amelyre minden $n > N_k$ esetén:
$$|a_n - A| < \varepsilon = \frac{1}{k}.$$
Ez pontosan a feladat állítása.

2. *A feladat állításából $\implies$ standard definíció:*
Tegyük fel, hogy a feltétel teljesül minden $k \in \mathbb{N}$-re.
Legyen $\varepsilon > 0$ tetszőleges valós szám.
Az Arkhimédész-féle tulajdonság szerint létezik olyan $k_0 \in \mathbb{N}$ természetes szám, amelyre:
$$\frac{1}{k_0} < \varepsilon.$$
A feltevés szerint ehhez a $k_0 \in \mathbb{N}$ értékhez létezik $N_{k_0} \in \mathbb{N}$ küszöbindex, amelyre minden $n > N_{k_0}$ esetén:
$$|a_n - A| < \frac{1}{k_0}.$$
Mivel $\frac{1}{k_0} < \varepsilon$, ezért minden $n > N_{k_0}$ esetén:
$$|a_n - A| < \frac{1}{k_0} < \varepsilon.$$
Tehát az adott $\varepsilon$-hoz az $N_0 = N_{k_0}$ választás megfelelő a standard definíció szerint.

A két irány bizonyításával az ekvivalenciát igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Megszámlálható környezetbázis és szekvenciális tulajdonságok.**

- **Első megszámlálhatósági axióma:** A valós számegyenesen (és minden metrikus térben) egy pont minden környezete tartalmaz egy $\frac{1}{k}$ sugarú környezetet. Ezért elég a konvergenciát csak az $\varepsilon = \frac{1}{k}$ nullsorozatra ellenőrizni!
- **Gyakorlati haszon:** Amikor konvergenciát kell cáfolni vagy részsorozatot kiválasztani, elegendő a $k = 1, 2, 3, \dots$ indexeken lépkedni.
:::

## Gy42.1. feladat

a) Bizonyítsuk be, hogy a diadikus racionális számok halmaza,
$$D = \left\{\frac{m}{2^n} : m \in \mathbb{Z},\ n \in \mathbb{N}\right\}$$
sűrű $\mathbb{R}$-ben (azaz tetszőleges $a < b$ valós számokhoz létezik $d \in D$, amelyre $a < d < b$)!

b) Igazoljuk, hogy $\mathbb{R}$ felbontható két diszjunkt, $\mathbb{R}$-ben sűrű halmaz egyesítésére!

**Megoldás.**

a) Legyenek $a, b \in \mathbb{R}$ tetszőleges valós számok úgy, hogy $a < b$. Ekkor $b - a > 0$.
Az Arkhimédész-tulajdonság (vagy a $2^n > n$ összefüggés) miatt létezik olyan $n \in \mathbb{N}$, amelyre:
$$\frac{1}{2^n} < b - a \iff 2^n(b - a) > 1 \iff 2^n b - 2^n a > 1.$$
Tekintsük az $m = [2^n a] + 1 \in \mathbb{Z}$ egész számot.
Az egészrész definíciója szerint:
$$2^n a < [2^n a] + 1 = m \le 2^n a + 1.$$
Mivel $2^n b - 2^n a > 1$, ezért $2^n a + 1 < 2^n b$.
Így:
$$2^n a < m < 2^n b.$$
Osszuk el az egyenlőtlenséget a pozitív $2^n$ számmal:
$$a < \frac{m}{2^n} < b.$$
Mivel $\frac{m}{2^n} \in D$, találtunk olyan diadikus racionális számot, amely az $(a, b)$ intervallumba esik.
Ez bizonyítja, hogy $D$ sűrű $\mathbb{R}$-ben. $\blacksquare$

b) Tekintsük a racionális számok $\mathbb{Q}$ és az irracionális számok $\mathbb{I} = \mathbb{R} \setminus \mathbb{Q}$ halmazát.
1. *Diszjunktak:* $\mathbb{Q} \cap \mathbb{I} = \emptyset$ a definíció alapján.
2. *Egyesítésük $\mathbb{R}$:* $\mathbb{Q} \cup \mathbb{I} = \mathbb{R}$.
3. *$\mathbb{Q}$ sűrű:* Tetszőleges $a < b$ esetén az a) részhez hasonlóan (vagy az Arkhimédész-tulajdonságból) van olyan $q = m/n \in \mathbb{Q}$, hogy $a < q < b$.
4. *$\mathbb{I}$ sűrű:* Legyen $a < b$. Ekkor $a - \sqrt{2} < b - \sqrt{2}$. Mivel $\mathbb{Q}$ sűrű, létezik $q \in \mathbb{Q}$, amelyre:
$$a - \sqrt{2} < q < b - \sqrt{2} \iff a < q + \sqrt{2} < b.$$
Mivel $q \in \mathbb{Q}$ és $\sqrt{2} \notin \mathbb{Q}$, a $c = q + \sqrt{2}$ szám irracionális ($c \in \mathbb{I}$).
Tehát minden intervallumban van irracionális szám is, $\mathbb{I}$ sűrű $\mathbb{R}$-ben.
A $\mathbb{Q}$ és $\mathbb{R} \setminus \mathbb{Q}$ felbontás tehát megfelelő. $\blacksquare$

::: elmelet
**Elméleti háttér — Sűrű halmazok és diadikus törtek.**

- **Sűrűség definíciója:** $H \subset \mathbb{R}$ sűrű $\mathbb{R}$-ben, ha lezártja $\overline{H} = \mathbb{R}$, azaz minden nyílt intervallum tartalmaz $H$-beli elemet.
- **Diadikus törtek jelentősége:** A számítógépes lebegőpontos számábrázolás alapja (kettőhatvány nevezők). Bármely valós szám tetszőleges pontossággal közelíthető véges kettes számrendszerbeli törttel.
:::

## Gy42.2. feladat

Bontsuk fel a valós számok $\mathbb{R}$ halmazát megszámlálhatóan végtelen sok páronként diszjunkt, $\mathbb{R}$-ben sűrű halmaz egyesítésére:
$$\mathbb{R} = \bigcup_{k=1}^\infty H_k, \quad \text{ahol } H_i \cap H_j = \emptyset \ (i \ne j) \text{ és } \overline{H_k} = \mathbb{R} \ \forall k.$$

**Megoldás.**

Tekintsük a racionális számok $\mathbb{Q}$ részhalmazát, és képezzük annak eltoltjait egy alkalmas irracionális szám egész többszöröseivel.
Legyen $\alpha = \sqrt{2} \in \mathbb{R} \setminus \mathbb{Q}$.
Definiáljuk az ekvivalenciarelációt $\mathbb{R}$-en:
$$x \sim y \iff x - y \in \mathbb{Q}.$$
Ez egy ekvivalenciareláció, amelynek ekvivalenciaosztályai a racionális számok eltoltjai: $[x] = x + \mathbb{Q}$.
Mivel minden osztály egy $\mathbb{Q}$-eltolt, bármely osztály sűrű $\mathbb{R}$-ben: ha $a < b$, akkor $a - x < b - x$, és $\mathbb{Q}$ sűrűsége miatt létezik $q \in \mathbb{Q}$, amelyre $a - x < q < b - x \iff a < x + q < b$, tehát minden osztály sűrű.
Az osztályok száma kontinuum sok, és páronként diszjunktak.
Válasszunk ki ezek közül megszámlálhatóan végtelen sok különböző osztályt:
$$H_k = k\sqrt{2} + \mathbb{Q} = \{k\sqrt{2} + q : q \in \mathbb{Q}\} \quad (k = 1, 2, 3, \dots).$$
Ezek páronként diszjunktak, hiszen ha $k\sqrt{2} + q_1 = j\sqrt{2} + q_2$ lenne ($k \ne j$), akkor:
$$(k - j)\sqrt{2} = q_2 - q_1 \implies \sqrt{2} = \frac{q_2 - q_1}{k - j} \in \mathbb{Q},$$
ami lehetetlen, mert $\sqrt{2}$ irracionális.
Ahhoz, hogy a teljes $\mathbb{R}$-et lefedjük, a maradék összes többi ekvivalenciaosztály unióját olvasszuk bele például $H_1$-be:
Legyen:
$$\widetilde{H}_k = k\sqrt{2} + \mathbb{Q} \quad \text{minden } k \ge 2 \text{ esetén},$$
és legyen:
$$\widetilde{H}_1 = \mathbb{R} \setminus \left(\bigcup_{k=2}^\infty \widetilde{H}_k\right).$$
Ekkor:
1. A halmazok páronként diszjunktak és uniójuk az egész $\mathbb{R}$.
2. Minden $k \ge 2$-re $\widetilde{H}_k = k\sqrt{2} + \mathbb{Q}$ sűrű $\mathbb{R}$-ben.
3. $\widetilde{H}_1$ tartalmazza a $\mathbb{Q}$ halmazt (mivel $0 \cdot \sqrt{2} + \mathbb{Q}$ nem szerepel a $k \ge 2$ osztályok között), és mivel $\mathbb{Q}$ sűrű, $\widetilde{H}_1$ is szükségképpen sűrű $\mathbb{R}$-ben.
Ezzel megadtuk a kívánt megszámlálható felbontást. $\blacksquare$

::: elmelet
**Elméleti háttér — Eltolási osztályok és algebrai sűrűség.**

- **Faktorcsoport $\mathbb{R}/\mathbb{Q}$:** A valós számok additív csoportjának $\mathbb{Q}$ szerinti mellékosztályai mind sűrűek $\mathbb{R}$-ben és megszámlálhatók. A mellékosztályok száma kontinuum.
- **Vitali-konstrukció kapcsolata:** Ez a fajta felbontás a nem mérhető halmazok konstrukciójának (Vitali-halmaz) kiindulópontja.
:::

## Gy43.1. feladat

a) Konstruáljunk olyan számsorozatot, amelyben minden racionális szám ($\mathbb{Q}$) végtelen sokszor szerepel sorozattagként!

b) Mi ennek a sorozatnak a torlódási pontjainak (részsorozat-határértékeinek) a halmaza a kiterjesztett valós számegyenesen ($\overline{\mathbb{R}}$)?

**Megoldás.**

a) Mivel a racionális számok $\mathbb{Q}$ halmaza megszámlálható, létezik egy $r_1, r_2, r_3, \dots$ sorbarendezése, amelyben minden racionális szám pontosan egyszer szerepel.
Írjuk fel ezen elemeket egy végtelen mátrixba úgy, hogy minden sorban az egész sorozat megismétlődik:
$$\begin{matrix}
r_1 & r_2 & r_3 & r_4 & \dots \\
r_1 & r_2 & r_3 & r_4 & \dots \\
r_1 & r_2 & r_3 & r_4 & \dots \\
\vdots & \vdots & \vdots & \vdots & \ddots
\end{matrix}$$
Rendezzük sorba a mátrix elemeit átlósan (Cantor-féle átlós módszer):
- 1. átló: $r_1$
- 2. átló: $r_1, r_2$
- 3. átló: $r_1, r_2, r_3$
- $k$-adik átló: $r_1, r_2, \dots, r_k$.
A kapott sorozat tehát így néz ki:
$$(a_n) = (r_1, \ r_1, r_2, \ r_1, r_2, r_3, \ r_1, r_2, r_3, r_4, \ \dots).$$
Mivel minden rögzített $r_k$ racionális szám minden $m \ge k$ indexű átlóban szerepel, az $(a_n)$ sorozatban végtelen sokszor előfordul.
Így valóban minden racionális szám végtelen sokszor szerepel tagnak.

b) Határozzuk meg a torlódási pontok halmazát:
- Legyen $x \in \mathbb{R}$ tetszőleges valós szám.
Mivel $\mathbb{Q}$ sűrű $\mathbb{R}$-ben, létezik olyan racionális sorozat $q_k \in \mathbb{Q}$, amelyre $q_k \to x$.
Mivel a fenti sorozatban minden $q_k$ végtelen sokszor szerepel, könnyen kiválasztható egy olyan $(a_{n_k})$ részsorozat, amelyre $a_{n_k} = q_k$ minden $k$-ra (szigorúan növekvő indexekkel).
Ez a részsorozat $x$-hez tart, így minden valós $x$ torlódási pont!
- Hasonlóan, mivel az $1, 2, 3, \dots \in \mathbb{Q}$ sorozat tart $+\infty$-hez, kiválasztható $+\infty$-hez tartó részsorozat is.
- A $-1, -2, -3, \dots \in \mathbb{Q}$ sorozat révén $-\infty$-hez tartó részsorozat is kiválasztható.
A torlódási pontok halmaza a kiterjesztett valós számegyenesen tehát a **teljes kiterjesztett valós számegyenes**:
$$\overline{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}.$$

::: elmelet
**Elméleti háttér — Sorozatok torlódási pontjai és univerzális sorozatok.**

- **Torlódási pontok (sűrűsödési értékek):** $x \in \overline{\mathbb{R}}$ torlódási pontja $(a_n)$-nek, ha létezik olyan $(a_{n_k})$ részsorozat, amelyre $a_{n_k} \to x$.
- **Mindenütt sűrű torlódási halmaz:** Egyetlen számsorozat képes arra, hogy részsorozataival az egész számegyenes MINDEN pontját approximálja. Ezt hívják univerzális vagy sűrű értékkészletű sorozatnak.
:::

## Gy43.2. feladat

a) Konstruáljunk olyan korlátos számsorozatot, amelynek a torlódási pontjainak halmaza pontosan a $\{-1, 0, 1\}$ három pontból áll!

b) Konstruáljunk olyan számsorozatot, amelynek torlódási pontjai pontosan a $[0, 1]$ zárt intervallum pontjai!

**Megoldás.**

a) Olyan sorozatot keresünk, amelynek csak $-1$, $0$ és $1$ a határértékei részsorozatok mentén.
A legegyszerűbb konstrukció a periodikus ismétlés:
$$a_n = \begin{cases}
-1, & \text{ha } n = 3k - 2, \\
0, & \text{ha } n = 3k - 1, \\
1, & \text{ha } n = 3k.
\end{cases}$$
A sorozat elemei: $-1, 0, 1, -1, 0, 1, -1, 0, 1, \dots$
1. A három konstans részsorozat rendre $-1$-hez, $0$-hoz és $1$-hez tart, így mindhárom pont torlódási pont.
2. Mivel a sorozat értékkészlete a három elemű $\{-1, 0, 1\}$ halmaz, bármely részsorozat csak e három értéket veheti fel, így határértékük is csak e három érték valamelyike lehet.
A torlódási pontok halmaza tehát pontosan:
$$S = \{-1, 0, 1\}.$$

b) Olyan sorozatot keresünk, amely a $[0, 1] \cap \mathbb{Q}$ racionális számait járja be.
Soroljuk fel a $[0, 1]$-beli irreducibilis törteket a nevezőjük szerint növekvő sorrendben:
- Nevező 1: $\frac{0}{1}, \frac{1}{1}$
- Nevező 2: $\frac{1}{2}$
- Nevező 3: $\frac{1}{3}, \frac{2}{3}$
- Nevező 4: $\frac{1}{4}, \frac{3}{4}$
- Nevező $k$: $\frac{m}{k}$, ahol $0 \le m \le k$ és $\operatorname{lnko}(m, k) = 1$.
Fűzzük össze ezeket egyetlen sorozattá:
$$(b_n) = \left(0, 1, \ \frac{1}{2}, \ \frac{1}{3}, \frac{2}{3}, \ \frac{1}{4}, \frac{3}{4}, \ \frac{1}{5}, \frac{2}{5}, \frac{3}{5}, \frac{4}{5}, \ \dots \right).$$
1. Minden $x \in [0, 1]$ valós számhoz a racionális számok sűrűsége miatt létezik olyan $q_k \in [0, 1] \cap \mathbb{Q}$ sorozat, amely $x$-hez tart. Mivel minden ilyen tört szerepel a sorozatban, kiválasztható egy $x$-hez tartó részsorozat. Tehát $[0, 1] \subseteq S$.
2. Másrészt mivel minden tag $0 \le b_n \le 1$, bármely konvergens részsorozat határértéke is a $[0, 1]$ zárt intervallumba esik. Így $S \subseteq [0, 1]$.
A torlódási pontok halmaza tehát pontosan a $[0, 1]$ intervallum:
$$S = [0, 1]. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Torlódási pontok halmazának topológiája.**

- **Zártsági tétel:** Tetszőleges $(a_n)$ sorozat torlódási pontjainak halmaza MINDIG ZÁRT halmaz $\overline{\mathbb{R}}$-ben. Ezért lehetséges, hogy a torlódási pontok halmaza egy zárt intervallum $[0, 1]$, vagy véges sok pont uniója $\{-1, 0, 1\}$.
- **Limsup és Liminf:** A torlódási pontok halmazának maximuma a $\limsup a_n$, minimuma pedig a $\liminf a_n$. A b) feladatban $\liminf b_n = 0$ és $\limsup b_n = 1$.
:::

# Az 5. feladatlaphoz

## Gy44.1. feladat

a) Mondjuk ki kvantorokkal a $\lim_{n\to\infty} a_n = -\infty$ definícióját, és képezzük a formális tagadását kvantorokkal és szabatos magyar szöveggel!

b) A definíció alapján bizonyítsuk be, hogy $\lim_{n\to\infty} (3 - n^2) = -\infty$, és tetszőleges $K \in \mathbb{R}$ esetén adjunk meg explicit $N_K$ küszöbindexet!

**Megoldás.**

a) 1. *Definíció:*
$$\lim_{n\to\infty} a_n = -\infty \iff (\forall K \in \mathbb{R})(\exists N_K \in \mathbb{N})(\forall n > N_K)(a_n < K).$$
(Szövegesen: bármilyen $K$ valós korlátot adunk meg, a sorozat tagjai egy alkalmas $N_K$ küszöbindex után mind kisebbek lesznek $K$-nál.)

2. *Tagadás:*
A kvantorok megfordításával és az egyenlőtlenség átfordulásával:
$$\lim_{n\to\infty} a_n \ne -\infty \iff (\exists K_0 \in \mathbb{R})(\forall N \in \mathbb{N})(\exists n > N)(a_n \ge K_0).$$
Szövegesen: Létezik olyan $K_0 \in \mathbb{R}$ alsó korlát, hogy bármilyen nagy küszöbindexet választunk, utána mindig található olyan $n$ index, amelyre $a_n \ge K_0$ (azaz a sorozatnak végtelen sok tagja $K_0$ felett marad, a sorozat nem tart egyenletesen mínusz végtelenbe).

b) Legyen $K \in \mathbb{R}$ tetszőleges valós szám.
Azt szeretnénk elérni, hogy:
$$3 - n^2 < K \iff n^2 > 3 - K.$$
- Ha $K \ge 3$, akkor $3 - K \le 0$. Mivel $n \ge 1$ esetén $n^2 \ge 1 > 0 \ge 3 - K$, az egyenlőtlenség már minden $n \ge 1$ indexre teljesül, így $N_K = 0$ megfelelő.
- Ha $K < 3$, akkor $3 - K > 0$. Ekkor négyzetgyököt vonva:
  $$n > \sqrt{3 - K}.$$
  Választhatjuk az alábbi küszöbindexet:
  $$N_K = \lfloor \sqrt{3 - K} \rfloor.$$
Egyesítve a két esetet:
$$N_K = \max\{0, \lfloor \sqrt{3 - K} \rfloor\}.$$
Minden $n > N_K$ esetén $n^2 > 3 - K \iff 3 - n^2 < K$.
A definíció alapján tehát $\lim_{n\to\infty} (3 - n^2) = -\infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — A végtelen határérték definíciója és küszöbindex-keresés.**

- **Végtelen határérték:** Nem szám, hanem a divergencia egy speciális, egyértelműen meghatározott formája (aszimptotikus növekedés vagy csökkenés).
- **Előjelek kezelése:** $-\infty$-hez tartásnál a reláció $a_n < K$, és tipikusan a negatív $K$-k jelentenek megszorítást ($K \to -\infty$).
:::

## Gy44.2. feladat

a) Mutassuk meg a definíciók tagadása alapján, hogy az $a_n = (-1)^n n$ sorozatnak sem $+\infty$, sem $-\infty$ nem határértéke!

b) Igaz-e, hogy ha egy sorozat felülről nem korlátos, akkor határértéke szükségképpen $+\infty$? Hozzunk indokolt ellenpéldát!

**Megoldás.**

a) 1. *Cáfoljuk, hogy $a_n \to +\infty$:*
A $\lim a_n = +\infty$ tagadása: $(\exists K_0 \in \mathbb{R})(\forall N \in \mathbb{N})(\exists n > N)(a_n \le K_0)$.
Válasszuk a $K_0 = 0$ korlátot.
Tetszőleges $N \in \mathbb{N}$ esetén válasszunk egy $N$-nél nagyobb páratlan indexet: $n = 2N + 1 > N$.
Ekkor:
$$a_n = (-1)^{2N+1}(2N+1) = -(2N+1) < 0 = K_0.$$
Találtunk tehát olyan $n > N$ indexet, amelyre $a_n \le K_0$, így $\lim_{n\to\infty} a_n \ne +\infty$.

2. *Cáfoljuk, hogy $a_n \to -\infty$:*
A tagadás: $(\exists K_0 \in \mathbb{R})(\forall N \in \mathbb{N})(\exists n > N)(a_n \ge K_0)$.
Válasszuk a $K_0 = 0$ korlátot.
Tetszőleges $N \in \mathbb{N}$ esetén válasszunk egy $N$-nél nagyobb páros indexet: $n = 2N + 2 > N$.
Ekkor:
$$a_n = (-1)^{2N+2}(2N+2) = 2N+2 > 0 = K_0.$$
Így $a_n \ge K_0$ teljesül, tehát $\lim_{n\to\infty} a_n \ne -\infty$.
A sorozat tehát oszcillálva divergens.

b) Az állítás **HAMIS.**
*Ellenpélda:* Tekintsük az alábbi sorozatot:
$$x_n = \begin{cases} n, & \text{ha } n \text{ páros}, \\ 0, & \text{ha } n \text{ páratlan}. \end{cases}$$
- A sorozat tagjai: $0, 2, 0, 4, 0, 6, 0, 8, \dots$
- *Felülről nem korlátos:* tetszőleges $K \in \mathbb{R}$-re ha választunk egy $K$-nál nagyobb páros $n$-et, akkor $x_n = n > K$.
- *Mégsem tart $+\infty$-hez:* az $n$ páratlan indexek mentén a sorozat tagjai konstans nullák ($x_{2k+1} = 0$), így a $K = 1$ korlátot végtelen sok tag nem haladja meg!
A sorozatnak határértéke egyáltalán nincs (torlódási pontjai $0$ és $+\infty$).

::: elmelet
**Elméleti háttér — Nem korlátosság versus végtelen határérték.**

- **Alapvető különbség:**
  - *Felülről nem korlátos:* $(\forall K)(\exists n)(a_n > K)$ — van NÉHÁNY tag, ami túllépi $K$-t.
  - *$\lim a_n = +\infty$:* $(\forall K)(\exists N_0)(\forall n > N_0)(a_n > K)$ — MINDEN tag végül túllépi $K$-t.
  A határértékhez egyenletes kifutás kell a végtelenbe, az oszcilláció nem megengedett.
:::

## Gy45.1. feladat

Bizonyítsuk be, hogy a valós számsorozatok körében az alábbi két állítás ekvivalens:

(i) $\lim_{n\to\infty} a_n = +\infty$ (a standard definíció: minden $K \in \mathbb{R}$-re létezik küszöbindex);

(ii) Minden $M \in \mathbb{N}$ természetes számhoz létezik olyan $N_M \in \mathbb{N}$ küszöbindex, hogy minden $n > N_M$ esetén $a_n > M$.

**Megoldás.**

1. *(i) $\implies$ (ii):*
Tegyük fel, hogy $\lim_{n\to\infty} a_n = +\infty$.
Legyen $M \in \mathbb{N}$ tetszőleges. Mivel $\mathbb{N} \subset \mathbb{R}$, az $M$ valós számként is tekinthető ($K = M \in \mathbb{R}$).
Az (i) definíció szerint ehhez a $K$-hoz létezik $N_M = N_K \in \mathbb{N}$, hogy minden $n > N_M$ esetén $a_n > K = M$.
Ez éppen a (ii) állítás.

2. *(ii) $\implies$ (i):*
Tegyük fel, hogy (ii) teljesül.
Legyen $K \in \mathbb{R}$ tetszőleges valós szám.
Az Arkhimédész-féle tulajdonság szerint létezik olyan $M \in \mathbb{N}$ természetes szám, amelyre:
$$M > K.$$
A (ii) feltétel szerint ehhez az $M \in \mathbb{N}$-hez létezik $N_M \in \mathbb{N}$ küszöbindex úgy, hogy minden $n > N_M$ esetén:
$$a_n > M.$$
Mivel $M > K$, a tranzitivitás miatt:
$$a_n > M > K \implies a_n > K.$$
Találtunk tehát az adott valós $K$-hoz egy megfelelő küszöbindexet ($N_K = N_M$).
Ez bizonyítja, hogy $\lim_{n\to\infty} a_n = +\infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — A diszkrét tesztkorlátok elve.**

- **Redukció természetes számokra:** Elég a végtelenbe tartást az $1, 2, 3, \dots$ egész értékekre tesztelni, nem szükséges minden valós számra külön ellenőrizni, az Arkhimédész-féle axióma miatt.
- **Általános analízisbeli elv:** Ha egy tulajdonság monoton a paraméterben ($K_1 < K_2 \implies a_n > K_2 \implies a_n > K_1$), akkor egy ko-finális részhalmazon (itt $\mathbb{N} \subset \mathbb{R}$) való teljesülés garantálja az általános teljesülést.
:::

## Gy45.2. feladat

Bizonyítsuk be, hogy az $(a_n)$ számsorozatra $\lim_{n\to\infty} a_n = +\infty$ pontosan akkor teljesül, ha tetszőleges $c \in \mathbb{R}$ valós szám esetén a sorozatnak csak véges sok tagja esik a $(-\infty, c]$ félegyenesbe!

**Megoldás.**

1. *Szükségesség ($\implies$):*
Tegyük fel, hogy $\lim_{n\to\infty} a_n = +\infty$.
Legyen $c \in \mathbb{R}$ tetszőleges. Válasszuk a definícióban $K = c$-t.
Ekkor létezik olyan $N_c \in \mathbb{N}$ küszöbindex, amelyre minden $n > N_c$ esetén:
$$a_n > c \iff a_n \notin (-\infty, c].$$
Ez azt jelenti, hogy azon $n$ indexek, amelyekre $a_n \in (-\infty, c]$, mind az $\{1, 2, \dots, N_c\}$ véges halmazból kerülhetnek ki.
Legfeljebb $N_c$ darab ilyen index van, vagyis a $(-\infty, c]$ félegyenesbe eső tagok száma véges.

2. *Elégségesség ($\impliedby$):*
Tegyük fel, hogy minden $c \in \mathbb{R}$ esetén az $I_c = \{n \in \mathbb{N} : a_n \le c\}$ halmaz véges.
Legyen $K \in \mathbb{R}$ tetszőleges.
A feltétel szerint a $c = K$ választással az $I_K = \{n \in \mathbb{N} : a_n \le K\}$ indexhalmaz véges.
- Ha $I_K = \emptyset$, akkor minden $n \in \mathbb{N}$-re $a_n > K$, így $N_K = 0$ megfelel.
- Ha $I_K \ne \emptyset$, akkor mivel véges sok pozitív egész számról van szó, létezik legnagyobb eleme:
  $$N_K = \max I_K \in \mathbb{N}.$$
Ekkor bármely $n > N_K$ indexre $n \notin I_K$, ami a definíció szerint azt jelenti, hogy:
$$a_n > K.$$
Tehát minden $n > N_K$-ra $a_n > K$, ami pontosan a $\lim_{n\to\infty} a_n = +\infty$ definíciója. $\blacksquare$

::: elmelet
**Elméleti háttér — Topológiai környezetek a kiterjesztett számegyenesen.**

- **A $+\infty$ környezetei:** A kiterjesztett valós számegyenesen ($\overline{\mathbb{R}}$) a $+\infty$ környezetbázisát a $(c, +\infty]$ nyílt félegyenesek alkotják.
- **Topológiai konvergencia:** Egy sorozat pontosan akkor tart egy ponthoz (itt $+\infty$-hez), ha a pont bármely környezetén KÍVÜL csak véges sok sorozattag található.
:::

## Gy46.1. feladat

Határozzuk meg az alábbi sorozatok határértékét, és a definíció alapján adjunk meg tetszőleges $K > 0$ valós korláthoz explicit $N_K$ küszöbindexet:

a) $a_n = n^2 - 6n$;

b) $b_n = \dfrac{n^2 + 1}{n + 3}$.

**Megoldás.**

a) 1. *Határérték:*
$$a_n = n^2 - 6n = n(n - 6) \to +\infty \cdot (+\infty) = +\infty.$$
2. *Küszöbindex keresése:*
Alakítsuk teljes négyzetté:
$$n^2 - 6n = (n - 3)^2 - 9.$$
Azt szeretnénk, hogy $(n - 3)^2 - 9 > K \iff (n - 3)^2 > K + 9$.
Mivel $K > 0$, a jobb oldal pozitív, négyzetgyököt vonhatunk:
$$n - 3 > \sqrt{K + 9} \iff n > 3 + \sqrt{K + 9}.$$
Választható küszöbindex:
$$N_K = \lfloor 3 + \sqrt{K + 9} \rfloor.$$
Minden $n > N_K$ esetén $a_n > K$.

b) 1. *Határérték:*
A számláló másodfokú, a nevező elsőfokú, így a domináns tag $n$: $\lim_{n\to\infty} b_n = +\infty$.
2. *Küszöbindex keresése:*
Adjunk egy egyszerű alsó becslést a törtre $n \ge 3$ esetén:
Mivel $n + 3 \le 2n$ (hiszen $n \ge 3$), a nevezőt felülről becsülve a törtet alulról becsüljük:
$$b_n = \frac{n^2 + 1}{n + 3} > \frac{n^2}{2n} = \frac{n}{2}.$$
Azt szeretnénk, hogy $\frac{n}{2} > K \iff n > 2K$.
Biztonsági küszöbindexként válasszuk:
$$N_K = \max\{3, \lfloor 2K \rfloor\}.$$
Ekkor minden $n > N_K$ esetén egyrészt $n \ge 3$ (így érvényes az alsó becslés), másrészt $n > 2K$, tehát:
$$b_n > \frac{n}{2} > K. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Törtek alsó becslése végtelen határértékhez.**

- **Technika $+\infty$-hez tartásnál:**
  A számlálót ALULRÓL ($n^2 + 1 > n^2$), a nevezőt FELÜLRŐL ($n + 3 \le 2n$) becsüljük.
  Így $\frac{A}{B} \ge \frac{m}{M}$, ami egyszerű lineáris vagy polinom kifejezést ad $n$-ben, megkönnyítve a küszöbindex közvetlen kifejezését.
:::

## Gy46.2. feladat

Határozzuk meg az alábbi sorozatok határértékét, és adjunk meg adott $K > 0$-hoz alkalmas $N_K$ küszöbindexet:

a) $c_n = 2^n - n^2$;

b) $d_n = \sqrt{n^2 + 10n}$.

**Megoldás.**

a) 1. *Határérték:*
Mivel az exponenciális függvény sokkal gyorsabban nő, mint a másodfokú polinom ($n^2 \ll 2^n$), kiemelve $2^n$-t:
$$c_n = 2^n \left(1 - \frac{n^2}{2^n}\right) \to +\infty \cdot (1 - 0) = +\infty.$$
2. *Küszöbindex keresése:*
Tudjuk a Gy3.1 és P21 feladatokból, hogy $n \ge 10$ esetén $2^n > n^3 \ge 10n^2 > 2n^2$.
Konkrétabban a binomiális tételből $n \ge 4$-re:
$$2^n = (1 + 1)^n > \binom{n}{3} = \frac{n(n-1)(n-2)}{6}.$$
Még egyszerűbben: tudjuk, hogy $n \ge 6$ esetén $2^n \ge 2n^2$, így:
$$2^n - n^2 \ge 2n^2 - n^2 = n^2.$$
(Ellenőrzés: $n=6$-ra $2^6 = 64 \ge 2 \cdot 36 = 72$ még nem, de $n=7$-re $128 > 98 = 2 \cdot 49$; $n \ge 7$-re $2^n \ge 2n^2$ teljes indukcióval azonnal igaz, mert $2^{n+1} = 2 \cdot 2^n \ge 4n^2 > 2(n+1)^2$).
Így minden $n \ge 7$ esetén:
$$c_n = 2^n - n^2 \ge n^2.$$
Azt szeretnénk, hogy $n^2 > K \iff n > \sqrt{K}$.
Alkalmas küszöbindex:
$$N_K = \max\{6, \lfloor \sqrt{K} \rfloor\}.$$
Minden $n > N_K$ esetén $c_n \ge n^2 > K$.

b) 1. *Határérték:*
Mivel $n^2 + 10n \to +\infty$, négyzetgyöke is $\lim_{n\to\infty} d_n = +\infty$.
2. *Küszöbindex:*
Alulról becsülve $n \ge 1$-re:
$$d_n = \sqrt{n^2 + 10n} > \sqrt{n^2} = n.$$
Azt szeretnénk, hogy $n > K$.
Küszöbindexként azonnal megfelel:
$$N_K = \lfloor K \rfloor.$$
Minden $n > N_K$ esetén $d_n > n > K$. $\blacksquare$

::: elmelet
**Elméleti háttér — Exponenciális dominancia és alsó becslések.**

- **$a^n - P(n)$ típusú különbségek:** Mindig az exponenciális tag dominál. Egy egyszerű határtól kezdve (pl. $n \ge 7$) az exponenciális tag a polinom többszöröse lesz, így a különbség alulról becsülhető egy egyszerű hatvánnyal ($n^2$), ami azonnal adja a küszöbindexet.
:::

## Gy47.1. feladat

a) Bizonyítsuk be, hogy ha egy $(a_n)$ számsorozat határértéke $+\infty$, akkor a sorozat értékkészletének létezik legkisebb eleme (azaz a sorozatnak van minimuma)!

b) Igazoljuk, hogy ha $\lim_{n\to\infty} a_n = -\infty$, akkor a sorozatnak létezik legnagyobb tagja (maximuma)!

**Megoldás.**

a) Tegyük fel, hogy $\lim_{n\to\infty} a_n = +\infty$.
Válasszuk ki a sorozat legelső tagját: $a_1 \in \mathbb{R}$.
Alkalmazzuk a $+\infty$-hez tartás definícióját a $K = a_1$ valós korlátra!
A definíció szerint létezik olyan $N_0 \in \mathbb{N}$ küszöbindex, amelyre:
$$a_n > a_1 \quad \text{minden } n > N_0 \text{ esetén}.$$
Bontsuk fel a sorozat értékkészletét két részre:
$$H = \{a_n : n \in \mathbb{N}\} = \{a_1, a_2, \dots, a_{N_0}\} \cup \{a_n : n > N_0\}.$$
Az első rész egy véges halmaz: $\{a_1, a_2, \dots, a_{N_0}\}$.
Mivel nem üres és véges, létezik legkisebb eleme:
$$m = \min\{a_1, a_2, \dots, a_{N_0}\}.$$
Világos, hogy $m \le a_1$.
Másrészt a második rész minden elemére $a_n > a_1 \ge m$ teljesül.
Tehát:
- Minden $1 \le n \le N_0$ esetén $a_n \ge m$,
- Minden $n > N_0$ esetén $a_n > a_1 \ge m$.
Így az egész sorozat minden $n \in \mathbb{N}$ tagjára $a_n \ge m$, és mivel $m$ az első véges sok tag valamelyike, $m \in \{a_n : n \in \mathbb{N}\}$.
Ez azt jelenti, hogy $m$ a sorozat legkisebb tagja:
$$\min_{n \in \mathbb{N}} a_n = m.$$
A sorozatnak tehát valóban van minimuma. $\blacksquare$

b) Ha $\lim_{n\to\infty} a_n = -\infty$, tekintsük a $b_n = -a_n$ sorozatot.
A műveleti szabályok szerint $\lim_{n\to\infty} b_n = +\infty$.
Az a) részben bizonyított állítás alapján a $(b_n)$ sorozatnak van legkisebb eleme:
$$\exists n_0 \in \mathbb{N} \, \forall n \in \mathbb{N}: b_n \ge b_{n_0}.$$
Behelyettesítve $b_n = -a_n$-et:
$$-a_n \ge -a_{n_0} \iff a_n \le a_{n_0} \quad \forall n \in \mathbb{N}.$$
Ez pontosan azt jelenti, hogy $a_{n_0}$ a sorozat legnagyobb tagja, azaz:
$$\max_{n \in \mathbb{N}} a_n = a_{n_0}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Végtelenbe tartó sorozatok diszkrét szélsőértékei.**

- **Véges halmaz trükk:** Ha egy sorozat a végtelenbe tart, csak véges sok tagja maradhat egy rögzített korlát alatt. Mivel minden véges nem üres halmaznak van minimuma, a teljes sorozat minimumának keresése visszavezetődik egy véges halmaz minimumára!
- **Analógia a Weierstraß-tétellel:** Zárt intervallumon folytonos függvénynek van szélsőértéke. Sorozatoknál a $+\infty$-beli határérték biztosítja a kompaktifikációt alulról.
:::

## Gy47.2. feladat

a) Mutassunk példát olyan konvergens sorozatra, amelynek sem legkisebb, sem legnagyobb tagja nincs!

b) Bizonyítsuk be, hogy ha egy konvergens sorozatra $\lim_{n\to\infty} a_n = A$, és létezik olyan $n_1 \in \mathbb{N}$ index, amelyre $a_{n_1} > A$, akkor a sorozatnak szükségképpen van legnagyobb tagja (maximuma)!

**Megoldás.**

a) Olyan konvergens sorozatot keresünk, amely se alulról, se felülről nem éri el a határértékét, hanem oszcillálva tart hozzá:
$$a_n = \frac{(-1)^n}{n}.$$
- *Határérték:* $\lim_{n\to\infty} a_n = 0$.
- *Páros indexek (pozitív tagok):* $a_2 = \frac{1}{2}, a_4 = \frac{1}{4}, a_6 = \frac{1}{6}, \dots$
  Itt $a_2 = 1/2$ a legnagyobb a pozitív tagok közül, de nézzük az egész sorozatot:
  Várjunk, $a_2 = 1/2$ maximum lenne! Olyan sorozat kell, ahol a pozitívak NŐNEK a határértékhez, és a negatívak CSÖKKENNEK hozzá.
  Konstruáljunk egy megfelelő sorozatot:
  Legyen a határérték $0$, és a páros tagok negatívak és növekednek nullához, a páratlan tagok pozitívak és csökkennek nullához:
  - Páros tagokra: $a_{2k} = -\frac{1}{2k}$. Itt $-1/2, -1/4, -1/6, \dots$ növekszik $0$-hoz, így a legkisebb tag $a_2 = -1/2$ lenne.
  Ahhoz, hogy se minimum, se maximum ne legyen, a sorozatnak belülről kell közelednie úgy, hogy semelyik oldalon se érje el a szuprémumot/infimumot!
  *Helyes konstrukció:*
  Legyen a sorozat értékkészlete olyan, hogy a tagok két torlódási pont felé tartanak, de konvergens sorozatnál CSAK EGY határérték van ($A$).
  Ha $a_n \to A$, és van $a_{n_1} > A$, akkor a b) rész szerint VAN MAXIMUM!
  Tehát ha nincs maximum, akkor MINDEN $n$-re $a_n \le A$ kell legyen!
  Ha pedig nincs minimum, akkor minden $n$-re $a_n \ge A$ kellene legyen!
  De ha egyszerre $a_n \le A$ és $a_n \ge A$ minden $n$-re, akkor $a_n = A$ konstans sorozat lenne, aminek van minimuma és maximuma is ($A$)!
  **Következtetés:** Egy KONVERGENS sorozatnak MINDIG van minimuma vagy maximuma! Nem létezhet olyan konvergens sorozat, amelynek sem minimuma, sem maximuma nincs!
  (Pontosan ezt mondja ki az eredeti 47-es feladat: „Bizonyítandó, hogy egy konvergens sorozatnak mindig van legkisebb vagy legnagyobb eleme.”)

b) *Bizonyítás:*
Tegyük fel, hogy $a_n \to A$ és létezik $n_1 \in \mathbb{N}$, hogy $a_{n_1} > A$.
Legyen $\varepsilon = \frac{a_{n_1} - A}{2} > 0$.
A konvergencia definíciója szerint ehhez az $\varepsilon$-hoz létezik $N_0 \in \mathbb{N}$ küszöbindex, amelyre minden $n > N_0$ esetén:
$$|a_n - A| < \varepsilon \implies a_n < A + \varepsilon = A + \frac{a_{n_1} - A}{2} < a_{n_1}.$$
Ez azt jelenti, hogy az $N_0$ index utáni összes tag szigorúan kisebb, mint $a_{n_1}$!
Ezért a teljes sorozat maximuma megegyezik az első $N_0$ darab tag (és $a_{n_1}$) maximumával:
$$\max_{n \in \mathbb{N}} a_n = \max\{a_1, a_2, \dots, a_{N_0}, a_{n_1}\}.$$
Mivel ez egy véges nem üres halmaz, a maximum létezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Konvergens sorozatok szélsőértékei.**

- **Alaptétel:** Minden konvergens valós számsorozatnak létezik minimuma vagy maximuma (esetleg mindkettő).
  - Ha van $A$-nál nagyobb tag, van maximum.
  - Ha van $A$-nál kisebb tag, van minimum.
  - Ha egyik sincs, a sorozat azonosan konstans $A$, így van minimuma és maximuma is.
- **Divergens sorozatoknál más a helyzet:** Divergens korlátos sorozatnak lehet, hogy se minimuma, se maximuma nincs, pl. $a_n = (-1)^n (1 - 1/n)$, ahol a páros tagok $1$-hez alulról, a páratlanok $-1$-hez felülről tartanak!
:::

## Gy48.1. feladat

Legyen $A \subset \mathbb{R}$ nem üres, felülről korlátos halmaz, és tegyük fel, hogy $\alpha = \sup A \notin A$ (a halmaznak nincs maximuma).

Bizonyítsuk be részletesen, hogy létezik olyan $(a_n)_{n=1}^\infty \subset A$ sorozat, amely szigorúan monoton növekvő és $\lim_{n\to\infty} a_n = \alpha$!

**Megoldás.**

Konstruáljuk meg az $(a_n)$ sorozatot rekurzívan a szuprémum definíciója segítségével:

*1. Lépés ($n = 1$):*
Mivel $\alpha = \sup A$ és $\alpha \notin A$, minden $x \in A$-ra $x < \alpha$.
Tekintsük az $\alpha - 1$ értéket. Mivel $\alpha - 1 < \alpha$, a szuprémum definíciója szerint létezik olyan $a_1 \in A$ elem, amelyre:
$$\alpha - 1 < a_1 < \alpha.$$

*2. Indukciós lépés ($n$-ről $n+1$-re):*
Tegyük fel, hogy az $a_1 < a_2 < \dots < a_n < \alpha$ elemeket már kiválasztottuk úgy, hogy mindegyik eleme $A$-nak, és minden $k \in \{1, \dots, n\}$ esetén $a_k > \alpha - \frac{1}{k}$.
Tekintsük a következő alsó korlátot:
$$M_n = \max\left\{a_n, \alpha - \frac{1}{n+1}\right\}.$$
Mivel $a_n < \alpha$ (hiszen $\alpha \notin A$) és $\alpha - \frac{1}{n+1} < \alpha$, a két szám maximuma is szigorúan kisebb $\alpha$-nál:
$$M_n < \alpha.$$
A szuprémum definíciója szerint az $M_n < \alpha$ számhoz létezik olyan $a_{n+1} \in A$ halmazbeli elem, amelyre:
$$M_n < a_{n+1} < \alpha.$$
A konstrukcióból azonnal következik:
1. $a_{n+1} > M_n \ge a_n \implies a_n < a_{n+1}$, tehát a sorozat szigorúan monoton növekvő!
2. $a_{n+1} > M_n \ge \alpha - \frac{1}{n+1}$, így $\alpha - \frac{1}{n+1} < a_{n+1} < \alpha$.

*3. Határérték igazolása:*
Minden $n \in \mathbb{N}$ esetén a konstrukció miatt:
$$\alpha - \frac{1}{n} < a_n < \alpha.$$
Mivel $\lim_{n\to\infty} \left(\alpha - \frac{1}{n}\right) = \alpha$, a rendőrelv alapján:
$$\lim_{n\to\infty} a_n = \alpha.$$
Találtunk tehát egy szigorúan monoton növekvő, $A$-beli elemekből álló sorozatot, amely $\alpha$-hoz tart. $\blacksquare$

::: elmelet
**Elméleti háttér — Szuprémum megközelítése monoton sorozattal.**

- **Miért kell az $\alpha \notin A$ feltétel a SZIGORÚ monotonitáshoz?** Ha $\alpha \in A$ lenne (tehát van maximum), akkor a halmaz lehetne akár véges is (pl. $A = \{1\}$), amelyből nem lehetne szigorúan növekvő sorozatot választani (csak a konstans $a_n = 1$ sorozatot).
- **Rekurzív választási stratégia:** Az $M_n = \max\{a_n, \alpha - 1/(n+1)\}$ választás biztosítja egyszerre a szigorú növekedést ($> a_n$) és a határértékhez tartást ($> \alpha - 1/(n+1)$).
:::

## Gy48.2. feladat

Legyen $B \subset \mathbb{R}$ nem üres, alulról korlátos halmaz, és $\beta = \inf B \notin B$.

a) Konstruáljunk olyan szigorúan monoton csökkenő $(b_n) \subset B$ sorozatot, amelyre $\lim_{n\to\infty} b_n = \beta$!

b) Tegyük fel, hogy $H \subset \mathbb{R}$ felülről korlátos, és $\sup H \in H$ (létezik maximum). Mikor választható $H$-ból szigorúan monoton növekvő sorozat, amely $\sup H$-hoz tart?

**Megoldás.**

a) Alkalmazzuk a Gy48.1 feladat eredményét a tükrözött halmazra:
Legyen $A = -B = \{-x : x \in B\}$.
Mivel $B$ alulról korlátos és nem üres, $A$ felülről korlátos és nem üres.
Továbbá $\sup A = -\inf B = -\beta$.
Mivel $\beta \notin B$, $-\beta \notin -B = A$.
A Gy48.1 tétel szerint létezik szigorúan monoton növekvő $(a_n) \subset A$ sorozat, amelyre $\lim a_n = -\beta$.
Definiáljuk a $b_n = -a_n$ sorozatot.
Ekkor:
- $b_n \in B$ minden $n$-re;
- mivel $a_n < a_{n+1}$, ezért $-a_n > -a_{n+1} \iff b_n > b_{n+1}$, tehát $(b_n)$ szigorúan monoton csökkenő;
- $\lim_{n\to\infty} b_n = \lim_{n\to\infty} (-a_n) = -(-\beta) = \beta$.
Ezzel a konstrukciót befejeztük. $\blacksquare$

b) Legyen $M = \sup H \in H$.
Akkor és csak akkor választható szigorúan monoton növekvő $(h_n) \subset H$ sorozat, amelyre $h_n \to M$, ha **$M$ torlódási pontja a $H$ halmaznak balról**, azaz ha $M$-nek bármely bal oldali $(M - \varepsilon, M)$ környezetében van $H$-beli pont:
$$\forall \varepsilon > 0: (M - \varepsilon, M) \cap H \ne \emptyset.$$
- *Szükségesség:* Ha létezik szigorúan növő sorozat $h_n \to M$, akkor minden $n$-re $h_n < M$, és tetszőleges $\varepsilon > 0$-ra nagy $n$-re $h_n \in (M - \varepsilon, M) \cap H$.
- *Elégségesség:* Ha a feltétel teljesül, akkor az $A' = H \setminus \{M\}$ halmazra $\sup A' = M$, és mivel $M \notin A'$, a Gy48.1 tétel alkalmazható $A'$-re, ami szigorúan növő sorozatot ad!
(Példa, ahol nem létezik: $H = [0, 1] \cup \{2\}$, itt $M = 2$, de $(2-\varepsilon, 2) \cap H = \emptyset$ kis $\varepsilon$-ra, így nem választható szigorúan növő sorozat.)

::: elmelet
**Elméleti háttér — Torlódási pontok és bal oldali környezetek.**

- **Izolált pont vs. torlódási pont:** Ha $\sup H \in H$, a maximum lehet izolált pont (ekkor minden konvergens sorozat végül konstans $M$), vagy torlódási pont (ekkor megközelíthető szigorúan monoton sorozattal).
- **$H \setminus \{\max H\}$ redukció:** A maximum elhagyásával a feladat visszavezetődik a nem elérhető szuprémum esetére.
:::

## Gy49.1. feladat

Számítsuk ki az alábbi sorozatok határértékét a rendőrelv és elemi azonosságok segítségével:

a) $\lim_{n\to\infty} \sqrt[n]{2^n + 5^n + 100n^4}$;

b) $\lim_{n\to\infty} \left(\dfrac{1}{n^2} + \dfrac{3}{n^2} + \dfrac{5}{n^2} + \dots + \dfrac{2n - 1}{n^2}\right)$.

**Megoldás.**

a) A gyök alatti kifejezés leggyorsabban növő (domináns) tagja az $5^n$.
Emeljük ki $5^n$-t a gyök alól:
$$\sqrt[n]{2^n + 5^n + 100n^4} = 5 \cdot \sqrt[n]{\left(\frac{2}{5}\right)^n + 1 + 100 \frac{n^4}{5^n}}.$$
Becsüljük közre a gyökös kifejezést:
- *Alsó becslés:* elhagyva a pozitív tagokat:
  $$\sqrt[n]{\left(\frac{2}{5}\right)^n + 1 + 100 \frac{n^4}{5^n}} > \sqrt[n]{1} = 1.$$
- *Felső becslés:* tudjuk, hogy $\left(\frac{2}{5}\right)^n \le \frac{2}{5} < 1$, és a polinom/exponenciális határérték miatt $100 \frac{n^4}{5^n} \to 0$, így elegendően nagy $n$-re $100 \frac{n^4}{5^n} \le 1$.
Ezért elegendően nagy $n$-re:
$$\sqrt[n]{\left(\frac{2}{5}\right)^n + 1 + 100 \frac{n^4}{5^n}} \le \sqrt[n]{1 + 1 + 1} = \sqrt[n]{3}.$$
Így minden elegendően nagy $n$-re:
$$5 < \sqrt[n]{2^n + 5^n + 100n^4} \le 5\sqrt[n]{3}.$$
Mivel $\lim_{n\to\infty} \sqrt[n]{3} = 1$, a rendőrelv alapján:
$$\lim_{n\to\infty} \sqrt[n]{2^n + 5^n + 100n^4} = 5 \cdot 1 = 5.$$

b) Hozzuk közös nevezőre az összeget:
$$S_n = \frac{1 + 3 + 5 + \dots + (2n - 1)}{n^2}.$$
A számláló az első $n$ darab pozitív páratlan szám összege.
Számtani sorozat összegképletével ($a_1 = 1, a_n = 2n - 1$, tagok száma $n$):
$$1 + 3 + 5 + \dots + (2n - 1) = \frac{1 + (2n - 1)}{2} \cdot n = \frac{2n}{2} \cdot n = n^2.$$
Ezt behelyettesítve:
$$S_n = \frac{n^2}{n^2} = 1.$$
Mivel $S_n$ minden $n \in \mathbb{N}$ esetén azonosan $1$, a határértéke:
$$\lim_{n\to\infty} S_n = 1. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Domináns kitevő kiemelése és páratlan számok összege.**

- **Páratlan számok összege:** $1 + 3 + \dots + (2n-1) = n^2$ geometriailag is látható: egy $n \times n$-es négyzet rétegekre bontásával (gnómonok).
- **Gyök alatti vegyes tagok:** Exponenciális és hatvány keverékénél ($5^n + 100n^4$) mindig az exponenciális a domináns tag, a polinomiális rész aránya $0$-hoz tart, így a határértéket kizárólag a legnagyobb alapú exponenciális határozza meg.
:::

## Gy49.2. feladat

Határozzuk meg az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} \sqrt[n]{\dfrac{3^n + 7^n}{2^n + 5^n}}$;

b) $\lim_{n\to\infty} \sum_{k=1}^n \dfrac{k^2}{n^3} = \lim_{n\to\infty} \left(\dfrac{1^2}{n^3} + \dfrac{2^2}{n^3} + \dots + \dfrac{n^2}{n^3}\right)$.

**Megoldás.**

a) Írjuk át a kifejezést törtként:
$$\sqrt[n]{\frac{3^n + 7^n}{2^n + 5^n}} = \frac{\sqrt[n]{3^n + 7^n}}{\sqrt[n]{2^n + 5^n}}.$$
- Számláló határértéke:
  $$7 = \sqrt[n]{7^n} < \sqrt[n]{3^n + 7^n} \le \sqrt[n]{2 \cdot 7^n} = 7\sqrt[n]{2} \to 7 \cdot 1 = 7.$$
- Nevező határértéke:
  $$5 = \sqrt[n]{5^n} < \sqrt[n]{2^n + 5^n} \le \sqrt[n]{2 \cdot 5^n} = 5\sqrt[n]{2} \to 5 \cdot 1 = 5.$$
A határértékek hányados-szabálya alapján (mivel a nevező határértéke $5 \ne 0$):
$$\lim_{n\to\infty} \sqrt[n]{\frac{3^n + 7^n}{2^n + 5^n}} = \frac{\lim_{n\to\infty} \sqrt[n]{3^n + 7^n}}{\lim_{n\to\infty} \sqrt[n]{2^n + 5^n}} = \frac{7}{5}.$$

b) Írjuk fel az összeget közös nevezővel:
$$\sum_{k=1}^n \frac{k^2}{n^3} = \frac{1}{n^3} \sum_{k=1}^n k^2 = \frac{1^2 + 2^2 + \dots + n^2}{n^3}.$$
Használjuk fel a négyzetösszeg ismert zárt alakját:
$$\sum_{k=1}^n k^2 = \frac{n(n + 1)(2n + 1)}{6} = \frac{2n^3 + 3n^2 + n}{6}.$$
Ezt behelyettesítve:
$$\frac{\frac{2n^3 + 3n^2 + n}{6}}{n^3} = \frac{2n^3 + 3n^2 + n}{6n^3} = \frac{2 + \frac{3}{n} + \frac{1}{n^2}}{6}.$$
Ha $n \to \infty$, a számláló $2 + 0 + 0 = 2$-höz tart, így:
$$\lim_{n\to\infty} \sum_{k=1}^n \frac{k^2}{n^3} = \frac{2}{6} = \frac{1}{3}. \quad \blacksquare$$
(Megjegyzés: Ez éppen az $\int_0^1 x^2 \, dx = \left[\frac{x^3}{3}\right]_0^1 = \frac{1}{3}$ Riemann-integrál közelítő összege.)

::: elmelet
**Elméleti háttér — Négyzetösszegek és a Riemann-integrál kapcsolata.**

- **Faulhaber-formulák:** $\sum_{k=1}^n k = \frac{n(n+1)}{2} \sim \frac{n^2}{2}$, $\sum_{k=1}^n k^2 = \frac{n(n+1)(2n+1)}{6} \sim \frac{n^3}{3}$, általánosan $\sum_{k=1}^n k^p \sim \frac{n^{p+1}}{p+1}$.
- **Hányadosok gyökei:** $\sqrt[n]{\frac{A_n}{B_n}} = \frac{\sqrt[n]{A_n}}{\sqrt[n]{B_n}}$. Ha mindkét tag konvergens és a nevező nem nulla, a határérték a hányadosok határértéke.
:::

## Gy50.1. feladat

Konstruáljunk olyan $(a_n)$ és $(b_n)$ valós számsorozatokat, amelyekre $\lim_{n\to\infty} a_n = 0$ és $\lim_{n\to\infty} b_n = +\infty$, és a szorzatuk határértéke:

a) $\lim_{n\to\infty} (a_n b_n) = 0$;

b) $\lim_{n\to\infty} (a_n b_n) = 5$;

c) $\lim_{n\to\infty} (a_n b_n) = +\infty$;

d) a $\lim_{n\to\infty} (a_n b_n)$ határérték nem létezik (a szorzat korlátos és oszcillál)!

**Megoldás.**

Minden részfeladatban biztosítjuk, hogy $a_n \to 0$ és $b_n \to +\infty$:

a) Legyen $a_n = \frac{1}{n^2}$ és $b_n = n$.
Ekkor $\lim a_n = 0$ és $\lim b_n = +\infty$.
A szorzat:
$$a_n b_n = \frac{1}{n^2} \cdot n = \frac{1}{n} \to 0.$$

b) Legyen $a_n = \frac{5}{n}$ és $b_n = n$.
Ekkor $\lim a_n = 0$ és $\lim b_n = +\infty$.
A szorzat:
$$a_n b_n = \frac{5}{n} \cdot n = 5 \to 5.$$

c) Legyen $a_n = \frac{1}{n}$ és $b_n = n^2$.
Ekkor $\lim a_n = 0$ és $\lim b_n = +\infty$.
A szorzat:
$$a_n b_n = \frac{1}{n} \cdot n^2 = n \to +\infty.$$

d) Legyen $a_n = \frac{2 + (-1)^n}{n}$ és $b_n = n$.
Mivel $1 \le 2 + (-1)^n \le 3$, a rendőrelv miatt $\lim a_n = 0$.
Továbbá $b_n = n \to +\infty$.
A szorzat:
$$a_n b_n = \frac{2 + (-1)^n}{n} \cdot n = 2 + (-1)^n.$$
A szorzatsorozat értékei felváltva $1$ és $3$: $(1, 3, 1, 3, 1, 3, \dots)$, amely korlátos, de nem konvergens (határértéke nem létezik). $\blacksquare$

::: elmelet
**Elméleti háttér — A $0 \cdot \infty$ határozatlan alak természetrajza.**

- **Kritikus (határozatlan) alak:** A $0 \cdot \infty$ szorzat azért határozatlan, mert a két tényező ellentétes irányba húz: a nullsorozat nullává tenné, a végtelenbe tartó sorozat végtelenné tenné. A végeredmény a két folyamat relatív sebességétől függ:
  - ha a nullához tartás gyorsabb: $0$;
  - ha a végtelenbe tartás gyorsabb: $\infty$;
  - ha a sebességek megegyeznek: tetszőleges véges szám $c \in \mathbb{R}$;
  - ha a sebességek aránya hullámzik: oszcilláció.
:::

## Gy50.2. feladat

Konstruáljunk olyan $(a_n)$ és $(b_n)$ valós számsorozatokat, amelyekre $\lim_{n\to\infty} a_n = +\infty$ és $\lim_{n\to\infty} b_n = +\infty$, és a különbségükre:

a) $\lim_{n\to\infty} (a_n - b_n) = 0$;

b) $\lim_{n\to\infty} (a_n - b_n) = -\infty$;

c) $\lim_{n\to\infty} (a_n - b_n) = 7$;

d) az $(a_n - b_n)$ sorozat korlátos, de nem létezik határértéke!

**Megoldás.**

Mindegyik esetben $a_n \to +\infty$ és $b_n \to +\infty$:

a) Legyen $a_n = n + \frac{1}{n}$ és $b_n = n$.
Ekkor mindkettő tart $+\infty$-hez, és a különbségük:
$$a_n - b_n = \left(n + \frac{1}{n}\right) - n = \frac{1}{n} \to 0.$$

b) Legyen $a_n = n$ és $b_n = n^2$.
Ekkor mindkettő tart $+\infty$-hez, és:
$$a_n - b_n = n - n^2 = n(1 - n) \to +\infty \cdot (-\infty) = -\infty.$$

c) Legyen $a_n = n + 7$ és $b_n = n$.
Ekkor mindkettő tart $+\infty$-hez, és:
$$a_n - b_n = (n + 7) - n = 7 \to 7.$$

d) Legyen $a_n = n + (-1)^n$ és $b_n = n$.
Ekkor mindkettő tart $+\infty$-hez (hiszen $a_n \ge n - 1 \to +\infty$), és a különbségük:
$$a_n - b_n = (n + (-1)^n) - n = (-1)^n.$$
A kapott sorozat $(-1, 1, -1, 1, \dots)$ korlátos, de divergens (nincs határértéke). $\blacksquare$

::: elmelet
**Elméleti háttér — A $\infty - \infty$ határozatlan alak felbontása.**

- **Kivonás a végtelenben:** A szimbolikus $\infty - \infty$ kifejezésnek nincs értelme a kiterjesztett valós számegyenesen. A különbség határértéke bármilyen valós szám, $\pm\infty$ vagy oszcilláló sorozat is lehet a magasabb rendű aszimptotikus korrekcióktól függően.
:::

## Gy51.1. feladat

a) Bizonyítsuk be a definíció alapján, hogy ha $\lim_{n\to\infty} a_n = 0$ és minden $n \in \mathbb{N}$ esetén $a_n \ne 0$, akkor
$$\lim_{n\to\infty} \frac{1}{|a_n|} = +\infty.$$

b) Igaz-e, hogy ha $\lim_{n\to\infty} a_n = 0$ és $a_n \ne 0$, akkor $\lim_{n\to\infty} \frac{1}{a_n} = +\infty$? Milyen ellenpéldát tudunk adni, és mi a helyes tétel?

**Megoldás.**

a) Legyen $K > 0$ tetszőlegesen rögzített valós szám.
Azt szeretnénk belátni, hogy egy indextől kezdve $\frac{1}{|a_n|} > K$.
Mivel $K > 0$ és $|a_n| > 0$, ez ekvivalens azzal, hogy:
$$|a_n| < \frac{1}{K}.$$
Válasszuk az $\varepsilon = \frac{1}{K} > 0$ értéket.
Mivel a feltétel szerint $\lim_{n\to\infty} a_n = 0$, ehhez az $\varepsilon$-hoz létezik olyan $N_K \in \mathbb{N}$ küszöbindex, amelyre minden $n > N_K$ esetén:
$$|a_n - 0| = |a_n| < \varepsilon = \frac{1}{K}.$$
Mindkét oldal reciprokát véve (pozitív számok lévén a reláció iránya megfordul):
$$\frac{1}{|a_n|} > K.$$
A $+\infty$-be tartás definíciója szerint ez pontosan azt bizonyítja, hogy:
$$\lim_{n\to\infty} \frac{1}{|a_n|} = +\infty. \quad \blacksquare$$

b) Az állítás **HAMIS.**
*Ellenpélda:* Legyen $a_n = \frac{(-1)^n}{n}$.
Ekkor $\lim a_n = 0$ és $a_n \ne 0$ minden $n$-re.
A reciproksorozat:
$$\frac{1}{a_n} = \frac{1}{(-1)^n / n} = (-1)^n n.$$
Ez a sorozat felváltva vesz fel nagy pozitív és nagy negatív értékeket (párosra $+\infty$-be, páratlanra $-\infty$-be tart), így nincs határértéke, nem tart $+\infty$-hez!
*A helyes tétel:*
$\lim_{n\to\infty} \frac{1}{a_n} = +\infty$ pontosan akkor teljesül, ha $\lim_{n\to\infty} a_n = 0$ ÉS létezik olyan $N \in \mathbb{N}$ index, amelytől kezdve $a_n > 0$ szigorúan pozitív!

::: elmelet
**Elméleti háttér — Reciprokképzés és előjelváltás.**

- **Abszolút érték fontossága:** A $0$-hoz tartás önmagában csak a nagyságrendet garantálja, az előjelet nem. Az $\frac{1}{a_n} \to +\infty$ állításhoz ELENGEDHETETLEN, hogy a sorozat pozitív oldalról tartson a nullához ($a_n > 0$).
- **Egyoldali határérték sorozatokra:** Ha $a_n \to 0$ és $a_n < 0$ végül, akkor $\frac{1}{a_n} \to -\infty$.
:::

## Gy51.2. feladat

a) Mutassuk meg a definíció alapján, hogy ha $\lim_{n\to\infty} a_n = +\infty$, akkor $\lim_{n\to\infty} \dfrac{1}{a_n} = 0$.

b) Legyen $a_n > 0$ pozitív számsorozat. Bizonyítsuk be, hogy ha $\lim_{n\to\infty} \dfrac{a_{n+1}}{a_n} = L > 1$, akkor $\lim_{n\to\infty} a_n = +\infty$!

**Megoldás.**

a) Legyen $\varepsilon > 0$ tetszőleges valós szám.
Válasszuk a $K = \frac{1}{\varepsilon} > 0$ korlátot.
Mivel $\lim_{n\to\infty} a_n = +\infty$, ehhez a $K$-hoz létezik olyan $N_0 \in \mathbb{N}$ küszöbindex, hogy minden $n > N_0$ esetén:
$$a_n > K = \frac{1}{\varepsilon}.$$
Mivel $\varepsilon > 0$, ebből $a_n > 0$ is következik, így mindkét oldal pozitív.
Reciprokra áttérve:
$$0 < \frac{1}{a_n} < \frac{1}{1/\varepsilon} = \varepsilon.$$
Ez azt jelenti, hogy minden $n > N_0$ esetén:
$$\left|\frac{1}{a_n} - 0\right| = \frac{1}{a_n} < \varepsilon.$$
Tehát a definíció alapján valóban $\lim_{n\to\infty} \frac{1}{a_n} = 0$. $\blacksquare$

b) Mivel $L > 1$, válasszunk egy olyan $q$ valós számot, amely $1$ és $L$ közé esik:
$$1 < q < L \quad \left(\text{például } q = \frac{1 + L}{2}\right).$$
Legyen $\varepsilon = L - q > 0$.
A hányados konvergenciája miatt ehhez az $\varepsilon$-hoz létezik $N_0 \in \mathbb{N}$ küszöbindex, hogy minden $n \ge N_0$ esetén:
$$\left|\frac{a_{n+1}}{a_n} - L\right| < \varepsilon \implies \frac{a_{n+1}}{a_n} > L - \varepsilon = q.$$
Ekkor tetszőleges $k \ge 1$ esetén:
$$a_{N_0 + k} = a_{N_0} \cdot \frac{a_{N_0 + 1}}{a_{N_0}} \cdot \frac{a_{N_0 + 2}}{a_{N_0 + 1}} \cdots \frac{a_{N_0 + k}}{a_{N_0 + k - 1}} > a_{N_0} \cdot q^k.$$
Jelölje $n = N_0 + k$. Ekkor minden $n > N_0$ esetén:
$$a_n > a_{N_0} \cdot q^{n - N_0} = \frac{a_{N_0}}{q^{N_0}} \cdot q^n.$$
Mivel $q > 1$, a mértani sorozat határértéke $\lim_{n\to\infty} q^n = +\infty$.
Mivel a szorzó konstans $\frac{a_{N_0}}{q^{N_0}} > 0$, az alsó becslés tart $+\infty$-hez:
$$\lim_{n\to\infty} \left(\frac{a_{N_0}}{q^{N_0}} \cdot q^n\right) = +\infty.$$
A rendőrelv (egyoldali alsó becslés) alapján ezért:
$$\lim_{n\to\infty} a_n = +\infty. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Hányados-kritérium végtelen határértékhez.**

- **Hányados-kritérium (D'Alembert-típus):**
  - Ha $\lim \frac{a_{n+1}}{a_n} < 1$, akkor $a_n \to 0$.
  - Ha $\lim \frac{a_{n+1}}{a_n} > 1$, akkor $a_n \to +\infty$ (pozitív tagokra).
  - Ha $\lim \frac{a_{n+1}}{a_n} = 1$, a teszt határozatlan (lehet konvergens vagy divergens is, pl. $1/n$ és $n$).
:::

## Gy52.1. feladat

a) Igazoljuk részletesen, hogy egy konvergens valós számsorozatnak NEM létezhet olyan esete, ahol sem minimuma, sem maximuma nincs (azaz minden konvergens sorozatnak van legalább egy szélsőértéke)!

b) Adjunk meg olyan korlátos és divergens számsorozatot, amelynek sem legkisebb, sem legnagyobb tagja nincs!

**Megoldás.**

a) Legyen $(a_n)$ tetszőleges konvergens sorozat, $\lim_{n\to\infty} a_n = A \in \mathbb{R}$.
Három logikailag kizáró és teljes esetet különböztetünk meg:
- **1. eset:** Létezik olyan $n_1 \in \mathbb{N}$, amelyre $a_{n_1} > A$.
  Ekkor a Gy47.2 feladat szerint az $\varepsilon = \frac{a_{n_1} - A}{2} > 0$ választással a küszöbindex után $a_n < A + \varepsilon < a_{n_1}$, így a sorozat maximuma létezik:
  $$\max_{n \in \mathbb{N}} a_n = \max\{a_1, \dots, a_{N_0}, a_{n_1}\}.$$
  A sorozatnak tehát van maximuma.
- **2. eset:** Létezik olyan $n_2 \in \mathbb{N}$, amelyre $a_{n_2} < A$.
  Ekkor teljesen analóg módon az $\varepsilon = \frac{A - a_{n_2}}{2} > 0$ választással a küszöbindex után $a_n > A - \varepsilon > a_{n_2}$, így a sorozat minimuma létezik:
  $$\min_{n \in \mathbb{N}} a_n = \min\{a_1, \dots, a_{N_0}, a_{n_2}\}.$$
  A sorozatnak tehát van minimuma.
- **3. eset:** Egyik fenti eset sem teljesül, azaz nem létezik sem $A$-nál nagyobb, sem $A$-nál kisebb tag.
  Ez azt jelenti, hogy minden $n \in \mathbb{N}$ esetén $a_n = A$ (a sorozat azonosan konstans).
  Ekkor $\min a_n = A$ és $\max a_n = A$, mindkét szélsőérték létezik!
Minden esetben a sorozatnak van legalább egy szélsőértéke. Nem létezhet tehát olyan konvergens sorozat, amelynek sem minimuma, sem maximuma nincs. $\blacksquare$

b) Olyan korlátos és DIVERGENS sorozatot keresünk, amelynek sem infimumát, sem szuprémumát nem veszi fel egyetlen tagja sem:
Tekintsük az alábbi sorozatot:
$$b_n = (-1)^n \left(1 - \frac{1}{n}\right).$$
- *Páros indexek ($n = 2k$):*
  $$b_{2k} = 1 - \frac{1}{2k}.$$
  Ezek a tagok mind pozitívak, szigorúan növekednek, és $\lim_{k\to\infty} b_{2k} = 1$.
  Mivel minden $k$-ra $b_{2k} < 1$, és a páratlan tagok negatívak, a halmaz szuprémuma:
  $$\sup \{b_n : n \in \mathbb{N}\} = 1.$$
  Mivel $b_n < 1$ minden $n$-re, az $1$ értéket a sorozat sosem éri el, így **maximum nincs**.
- *Páratlan indexek ($n = 2k - 1$):*
  $$b_{2k-1} = -\left(1 - \frac{1}{2k-1}\right) = -1 + \frac{1}{2k-1}.$$
  Ezek a tagok negatívak, szigorúan csökkennek, és $\lim_{k\to\infty} b_{2k-1} = -1$.
  Minden $n$-re $b_n > -1$, így az infimum:
  $$\inf \{b_n : n \in \mathbb{N}\} = -1.$$
  Mivel $b_n > -1$ minden $n$-re, a $-1$ értéket a sorozat sosem éri el, így **minimum nincs**.
A sorozat korlátos ($-1 < b_n < 1$), torlódási pontjai $-1$ és $1$, divergens, és sem legkisebb, sem legnagyobb tagja nincs. $\blacksquare$

::: elmelet
**Elméleti háttér — Szélsőértékek létezése konvergens és oszcilláló sorozatokban.**

- **Divergens sorozat szabadságfoka:** Divergens sorozatnál több különböző torlódási pont létezhet. Ha a felső torlódási pontot alulról közelíti meg a sorozat, az alsót pedig felülről, a sorozat nem éri el sem az infimumát, sem a szuprémumát.
- **Konvergens sorozat kényszere:** Egyetlen határérték van. Ha a sorozat nem konstans, legalább az egyik oldalról el kell térnie a határértéktől, ami automatikusan generál egy szélsőértéket.
:::

## Gy52.2. feladat

Legyen $(a_n)$ egy tetszőleges korlátos számsorozat, és jelölje:
$$\alpha = \inf_{n \in \mathbb{N}} a_n, \qquad \beta = \sup_{n \in \mathbb{N}} a_n.$$

a) Bizonyítsuk be az általános egyenlőtlenséget:
$$\alpha \le \liminf_{n\to\infty} a_n \le \limsup_{n\to\infty} a_n \le \beta.$$

b) Konstruáljunk olyan korlátos sorozatot, amelyre mind a három egyenlőtlenség SZIGORÚ, azaz:
$$\alpha < \liminf_{n\to\infty} a_n < \limsup_{n\to\infty} a_n < \beta!$$

**Megoldás.**

a) Jelölje $I_k = \inf_{n \ge k} a_n$ és $S_k = \sup_{n \ge k} a_n$.
A $\liminf$ és $\limsup$ definíciója szerint:
$$\liminf_{n\to\infty} a_n = \lim_{k\to\infty} I_k = \sup_{k \ge 1} I_k, \qquad \limsup_{n\to\infty} a_n = \lim_{k\to\infty} S_k = \inf_{k \ge 1} S_k.$$
Mivel minden $k \ge 1$-re $\{a_n : n \ge k\} \subseteq \{a_n : n \ge 1\}$, a részhalmazra vonatkozó infimum és szuprémum tulajdonságok miatt:
$$\alpha = I_1 \le I_k \le S_k \le S_1 = \beta \quad \text{minden } k \in \mathbb{N} \text{ esetén}.$$
- Mivel $I_k \ge \alpha$ minden $k$-ra, a határértékére is $\lim_{k\to\infty} I_k \ge \alpha \implies \liminf a_n \ge \alpha$.
- Mivel minden $k$-ra $I_k \le S_k$, a határértékekre $\lim I_k \le \lim S_k \implies \liminf a_n \le \limsup a_n$.
- Mivel $S_k \le \beta$ minden $k$-ra, $\lim_{k\to\infty} S_k \le \beta \implies \limsup a_n \le \beta$.
Összefűzve:
$$\alpha \le \liminf_{n\to\infty} a_n \le \limsup_{n\to\infty} a_n \le \beta. \quad \blacksquare$$

b) Olyan sorozatot keresünk, amelynek vannak „kilógó” izolált szélső értékei az elején, a távolabbi viselkedése pedig két szűkebb érték között oszcillál.
Konstrukció:
- Legyen $a_1 = -5$ (ez adja a globális infimumot: $\alpha = -5$).
- Legyen $a_2 = +5$ (ez adja a globális szuprémumot: $\beta = +5$).
- Minden további $n \ge 3$ indexre legyen:
  $$a_n = (-1)^n.$$
Vizsgáljuk meg a sorozat paramétereit:
- A sorozat elemei: $-5, +5, -1, 1, -1, 1, -1, 1, \dots$
- Globális infimum: $\alpha = \inf \{a_n : n \in \mathbb{N}\} = -5$.
- Globális szuprémum: $\beta = \sup \{a_n : n \in \mathbb{N}\} = +5$.
- Torlódási pontok: Az $n \ge 3$ tagok felváltva $-1$ és $1$, így a részsorozatok határértékei kizárólag $-1$ és $+1$.
  Ezért:
  $$\liminf_{n\to\infty} a_n = -1, \qquad \limsup_{n\to\infty} a_n = 1.$$
A négy mennyiséget összevetve:
$$-5 < -1 < 1 < 5 \iff \alpha < \liminf_{n\to\infty} a_n < \limsup_{n\to\infty} a_n < \beta.$$
Minden egyenlőtlenség szigorúan teljesül! $\blacksquare$

::: elmelet
**Elméleti háttér — Limsup, liminf és a globális szélsőértékek viszonya.**

- **Aszimptotikus vs. globális:** Az infimum és szuprémum az EGÉSZ sorozat globális korlátait jelentik, és erősen érzékenyek az első néhány tagra (egyetlen tag megváltoztathatja őket). Ezzel szemben a $\liminf$ és $\limsup$ aszimptotikus mennyiségek: véges sok tag megváltoztatása vagy elhagyása EGYÁLTALÁN NEM VÁLTOZTATJA MEG őket!
- **Szigorú eltérés:** Ha egy sorozat véges sok „kiugró” elemmel indul, az infimum szigorúan kisebb lehet a liminfnél, és a szuprémum szigorúan nagyobb a limsupnál.
:::

## Gy53.1. feladat

Számítsuk ki az alábbi sorozatok határértékét a határérték műveleti szabályai alapján:

a) $\lim_{n\to\infty} \dfrac{3n^3 - 4n + 2}{5n^3 + n^2 - 7}$;

b) $\lim_{n\to\infty} \dfrac{4^n - 2^n}{4^{n+1} + 5 \cdot 3^n}$;

c) $\lim_{n\to\infty} \dfrac{(n+2)! + (n+1)!}{(n+3)!}$.

**Megoldás.**

a) Racionális törtfüggvény: a számláló és a nevező foka megegyezik ($3$).
Emeljük ki a legmagasabb hatványt, $n^3$-t a számlálóból és a nevezőből:
$$\frac{3n^3 - 4n + 2}{5n^3 + n^2 - 7} = \frac{n^3 \left(3 - \frac{4}{n^2} + \frac{2}{n^3}\right)}{n^3 \left(5 + \frac{1}{n} - \frac{7}{n^3}\right)} = \frac{3 - \frac{4}{n^2} + \frac{2}{n^3}}{5 + \frac{1}{n} - \frac{7}{n^3}}.$$
Mivel $\lim_{n\to\infty} \frac{1}{n^k} = 0$ minden $k \ge 1$-re, a műveleti szabályok szerint:
$$\lim_{n\to\infty} \frac{3n^3 - 4n + 2}{5n^3 + n^2 - 7} = \frac{3 - 0 + 0}{5 + 0 - 0} = \frac{3}{5}.$$

b) Exponenciális kifejezés: a domináns alap a $4$.
Írjuk át a nevezőt: $4^{n+1} = 4 \cdot 4^n$.
Emeljünk ki $4^n$-t a számlálóból és a nevezőből:
$$\frac{4^n - 2^n}{4^{n+1} + 5 \cdot 3^n} = \frac{4^n \left(1 - \left(\frac{2}{4}\right)^n\right)}{4^n \left(4 + 5 \left(\frac{3}{4}\right)^n\right)} = \frac{1 - \left(\frac{1}{2}\right)^n}{4 + 5 \left(\frac{3}{4}\right)^n}.$$
Mivel $\left|\frac{1}{2}\right| < 1$ és $\left|\frac{3}{4}\right| < 1$, mindkét mértani tag határértéke nulla:
$$\lim_{n\to\infty} \left(\frac{1}{2}\right)^n = 0, \qquad \lim_{n\to\infty} \left(\frac{3}{4}\right)^n = 0.$$
Így a hányados határértéke:
$$\lim_{n\to\infty} \frac{4^n - 2^n}{4^{n+1} + 5 \cdot 3^n} = \frac{1 - 0}{4 + 5 \cdot 0} = \frac{1}{4}.$$

c) Faktoriálisos kifejezés:
Bontsuk fel a faktoriálisokat az $(n+1)!$ alaptényező segítségével:
- $(n+1)! = (n+1)!$
- $(n+2)! = (n+2)(n+1)!$
- $(n+3)! = (n+3)(n+2)(n+1)!$
Helyettesítsük be ezeket a törtbe és egyszerűsítsünk $(n+1)!$-sal:
$$\frac{(n+2)! + (n+1)!}{(n+3)!} = \frac{(n+2)(n+1)! + (n+1)!}{(n+3)(n+2)(n+1)!} = \frac{(n+2) + 1}{(n+3)(n+2)} = \frac{n + 3}{(n + 3)(n + 2)}.$$
Mivel $n + 3 \ne 0$, egyszerűsíthetünk $(n+3)$-mal:
$$\frac{n + 3}{(n + 3)(n + 2)} = \frac{1}{n + 2}.$$
Mivel $n + 2 \to +\infty$:
$$\lim_{n\to\infty} \frac{(n+2)! + (n+1)!}{(n+3)!} = \lim_{n\to\infty} \frac{1}{n + 2} = 0. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Határértékszámítási technikák alaptípusai.**

- **Polinomok hányadosa:** A legmagasabb fokszámú tag dönt:
  - azonos fokok esetén a főegyütthatók hányadosa;
  - ha a számláló foka kisebb: $0$;
  - ha a számláló foka nagyobb: $\pm\infty$.
- **Exponenciálisok hányadosa:** Mindig a legnagyobb abszolút értékű alapot emeljük ki.
- **Faktoriálisok hányadosa:** A legkisebb faktoriálissal egyszerűsítünk, ami polinomok hányadosára redukálja a feladatot.
:::

## Gy53.2. feladat

Határozzuk meg az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} n \left(\sqrt{n^2 + 2} - \sqrt{n^2 - 1}\right)$;

b) $\lim_{n\to\infty} \dfrac{1 + \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^n}}{1 + \frac{1}{3} + \frac{1}{9} + \dots + \frac{1}{3^n}}$.

**Megoldás.**

a) A kifejezés $n \cdot (\infty - \infty) = \infty \cdot 0$ típusú határozatlan alak.
Gyöktelenítsük a zárójelet a konjugálttal való szorzással és osztással:
$$\sqrt{n^2 + 2} - \sqrt{n^2 - 1} = \frac{(n^2 + 2) - (n^2 - 1)}{\sqrt{n^2 + 2} + \sqrt{n^2 - 1}} = \frac{3}{\sqrt{n^2 + 2} + \sqrt{n^2 - 1}}.$$
Szorozzuk meg a külső $n$ tényezővel:
$$n \left(\sqrt{n^2 + 2} - \sqrt{n^2 - 1}\right) = \frac{3n}{\sqrt{n^2 + 2} + \sqrt{n^2 - 1}}.$$
Emeljünk ki $n$-et a nevezőből ($n > 0$ mellett $\sqrt{n^2 \pm c} = n\sqrt{1 \pm c/n^2}$):
$$\frac{3n}{n\left(\sqrt{1 + \frac{2}{n^2}} + \sqrt{1 - \frac{1}{n^2}}\right)} = \frac{3}{\sqrt{1 + \frac{2}{n^2}} + \sqrt{1 - \frac{1}{n^2}}}.$$
Mivel $\lim_{n\to\infty} \frac{2}{n^2} = 0$ és $\lim_{n\to\infty} \frac{1}{n^2} = 0$:
$$\lim_{n\to\infty} n \left(\sqrt{n^2 + 2} - \sqrt{n^2 - 1}\right) = \frac{3}{\sqrt{1 + 0} + \sqrt{1 - 0}} = \frac{3}{1 + 1} = \frac{3}{2}.$$

b) Számítsuk ki a számlálóban és a nevezőben lévő véges mértani sorok összegét:
- Számláló ($q = 1/2$, tagok száma $n + 1$):
  $$S_n = \sum_{k=0}^n \left(\frac{1}{2}\right)^k = \frac{1 - (1/2)^{n+1}}{1 - 1/2} = 2 \left(1 - \frac{1}{2^{n+1}}\right) \to 2(1 - 0) = 2.$$
- Nevező ($q = 1/3$, tagok száma $n + 1$):
  $$T_n = \sum_{k=0}^n \left(\frac{1}{3}\right)^k = \frac{1 - (1/3)^{n+1}}{1 - 1/3} = \frac{3}{2} \left(1 - \frac{1}{3^{n+1}}\right) \to \frac{3}{2}(1 - 0) = \frac{3}{2}.$$
A határértékek hányados-szabálya szerint (mivel a nevező tart $3/2 \ne 0$-hoz):
$$\lim_{n\to\infty} \frac{S_n}{T_n} = \frac{\lim_{n\to\infty} S_n}{\lim_{n\to\infty} T_n} = \frac{2}{3/2} = \frac{4}{3}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Gyöktelenítés szorzattényezővel és mértani sorok hányadosa.**

- **$\infty \cdot 0$ alak kezelése:** A gyöktelenítés után a tört számlálójába kerül az $n$ szorzó, ami a nevezőből kiemelt $n$-nel éppen kiejti egymást, így véges nemnulla határértéket eredményez.
- **Végtelen mértani sor összege:** $|q| < 1$ esetén $\sum_{k=0}^\infty q^k = \frac{1}{1 - q}$. Véges részletösszegek határértéke egyszerűen a végtelen sorok összegeinek hányadosa.
:::

## Gy54.1. feladat

Legyen $(a_n)$ egy valós számsorozat, amelyre teljesül, hogy minden $n \ge 1$ esetén
$$|a_{n+1} - a_n| \le \frac{1}{n(n+1)}.$$

a) Bizonyítsuk be teleszkópikus összegzéssel, hogy $(a_n)$ Cauchy-sorozat, így konvergens!

b) Mutassuk meg, hogy a határértékre fennáll a $|L - a_1| \le 1$ becslés!

**Megoldás.**

a) Legyenek $m, n \in \mathbb{N}$ természetes számok úgy, hogy $m > n \ge 1$.
Írjuk fel $a_m - a_n$-et teleszkópikus összegként:
$$a_m - a_n = \sum_{j=n}^{m-1} (a_{j+1} - a_j).$$
Alkalmazzuk a háromszög-egyenlőtlenséget és a feltételt:
$$|a_m - a_n| \le \sum_{j=n}^{m-1} |a_{j+1} - a_j| \le \sum_{j=n}^{m-1} \frac{1}{j(j+1)}.$$
Bontsuk a tagokat parciális törtekre:
$$\frac{1}{j(j+1)} = \frac{1}{j} - \frac{1}{j+1}.$$
Ekkor a szumma egy teleszkópikus összeg, ahol a közbenső tagok kiejtik egymást:
$$\sum_{j=n}^{m-1} \left(\frac{1}{j} - \frac{1}{j+1}\right) = \left(\frac{1}{n} - \frac{1}{n+1}\right) + \left(\frac{1}{n+1} - \frac{1}{n+2}\right) + \dots + \left(\frac{1}{m-1} - \frac{1}{m}\right) = \frac{1}{n} - \frac{1}{m}.$$
Mivel $m > n$, $\frac{1}{m} > 0$, ezért:
$$|a_m - a_n| \le \frac{1}{n} - \frac{1}{m} < \frac{1}{n}.$$
Legyen $\varepsilon > 0$ tetszőleges. Válasszuk az $N_0 = \lfloor 1/\varepsilon \rfloor \in \mathbb{N}$ küszöbindexet.
Ekkor minden $m > n > N_0$ esetén:
$$|a_m - a_n| < \frac{1}{n} < \frac{1}{N_0} \le \varepsilon.$$
Ez a definíció szerint azt jelenti, hogy $(a_n)$ Cauchy-sorozat.
Mivel $\mathbb{R}$ teljes, a Cauchy-sorozat konvergens, tehát létezik $L = \lim_{n\to\infty} a_n \in \mathbb{R}$. $\blacksquare$

b) Alkalmazzuk az a) részben levezetett egyenlőtlenséget $n = 1$ mellett:
$$|a_m - a_1| \le \sum_{j=1}^{m-1} \frac{1}{j(j+1)} = 1 - \frac{1}{m}.$$
Mivel $\lim_{m\to\infty} a_m = L$, a határérték és az abszolút érték műveleti szabályai szerint:
$$|L - a_1| = \lim_{m\to\infty} |a_m - a_1| \le \lim_{m\to\infty} \left(1 - \frac{1}{m}\right) = 1 - 0 = 1.$$
Tehát valóban $|L - a_1| \le 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Teleszkópikus összegek és a Cauchy-tulajdonság.**

- **Teleszkópikus becslés:** Ha a lépésközök $|a_{n+1} - a_n|$ egy konvergens teleszkópikus sor tagjai által majorálhatók, a sorozat automatikusan Cauchy-sorozat.
- **Határérték átvitele egyenlőtlenségbe:** Ha minden $m$-re $|a_m - a_1| \le 1 - 1/m$, akkor határátmenettel $m \to \infty$ esetén a reláció megmarad a határértékre is: $|L - a_1| \le 1$.
:::

## Gy54.2. feladat

Tegyük fel, hogy az $(a_n)$ számsorozatra a lépésközök abszolút értékeiből képzett sor konvergens, azaz
$$\sum_{n=1}^\infty |a_{n+1} - a_n| < +\infty$$
(korlátos ingadozású sorozat).

Bizonyítsuk be, hogy az $(a_n)$ sorozat szükségképpen konvergens!

**Megoldás.**

Jelölje $s_n$ a lépésközök sorának részletösszegét:
$$s_n = \sum_{k=1}^{n-1} |a_{k+1} - a_k| \quad (n \ge 2).$$
A feltétel szerint a $\sum_{k=1}^\infty |a_{k+1} - a_k|$ végtelen sor konvergens, ami azt jelenti, hogy az $(s_n)$ részletösszeg-sorozat konvergens a valós számok körében.
Mivel minden konvergens valós számsorozat Cauchy-sorozat, az $(s_n)$ sorozat Cauchy-sorozat:
tetszőleges $\varepsilon > 0$-hoz létezik olyan $N_0 \in \mathbb{N}$ küszöbindex, hogy minden $m > n > N_0$ esetén:
$$|s_m - s_n| = s_m - s_n = \sum_{k=n}^{m-1} |a_{k+1} - a_k| < \varepsilon.$$
Vizsgáljuk most az eredeti $(a_n)$ sorozat tagjainak eltérését $m > n > N_0$ mellett.
A különbséget teleszkópikus összegként írva és a háromszög-egyenlőtlenséget alkalmazva:
$$|a_m - a_n| = \left|\sum_{k=n}^{m-1} (a_{k+1} - a_k)\right| \le \sum_{k=n}^{m-1} |a_{k+1} - a_k| = s_m - s_n < \varepsilon.$$
Azt kaptuk tehát, hogy minden $m > n > N_0$ indexre:
$$|a_m - a_n| < \varepsilon.$$
Ez a definíció szerint pontosan azt jelenti, hogy az $(a_n)$ sorozat Cauchy-sorozat.
Mivel a valós számok halmaza $\mathbb{R}$ a szokásos metrikában teljes metrikus tér, minden Cauchy-sorozat konvergens.
Ezért az $(a_n)$ sorozat valóban konvergens. $\blacksquare$

::: elmelet
**Elméleti háttér — Korlátos változású sorozatok és abszolút konvergencia.**

- **Abszolút konvergens sorok tétele:** Egy végtelen sor pontosan akkor abszolút konvergens, ha a tagok abszolút értékeinek sora konvergens. A fenti tétel azt fejezi ki, hogy az abszolút konvergenciából KÖVETKEZIK a közönséges konvergencia:
  $$\sum |a_{k+1} - a_k| < \infty \implies \sum (a_{k+1} - a_k) \text{ konvergens} \implies a_n \text{ konvergens}.$$
- **Geometriai szemlélet:** Ha egy részecske lépéseinek összesített úthossza véges, akkor nem szökhet a végtelenbe és nem oszcillálhat a végtelenségig, meg kell állnia egy határértéknél.
:::

# A 6. feladatlaphoz

## Gy55.1. feladat

a) Bizonyítsuk be, hogy az egész számokból képezhető véges sorozatok halmaza,
$$S = \bigcup_{k=1}^\infty \mathbb{Z}^k$$
megszámlálhatóan végtelen!

b) Igazoljuk, hogy a racionális számok összes véges részhalmazainak halmaza, $\mathcal{P}_{\text{fin}}(\mathbb{Q})$ megszámlálható!

**Megoldás.**

a) 1. *Rögzített hosszúságú sorozatok:*
Tudjuk, hogy az egész számok halmaza $\mathbb{Z}$ megszámlálható.
Két megszámlálható halmaz Descartes-szorzata megszámlálható, így teljes indukcióval tetszőleges rögzített $k \in \mathbb{N}$ esetén a $k$ hosszúságú egész sorozatok $\mathbb{Z}^k = \underbrace{\mathbb{Z} \times \dots \times \mathbb{Z}}_{k \text{ db}}$ halmaza is megszámlálható.
2. *Megszámlálható unió:*
Az összes véges sorozat halmaza ezen halmazok megszámlálható uniója:
$$S = \bigcup_{k=1}^\infty \mathbb{Z}^k.$$
A halmazelmélet alaptétele szerint megszámlálható sok megszámlálható halmaz egyesítése megszámlálható.
Mivel $\mathbb{Z}^1 \subset S$ végtelen, $S$ megszámlálhatóan végtelen halmaz. $\blacksquare$

b) 1. *Rögzített elemszámú részhalmazok:*
Mivel $\mathbb{Q}$ megszámlálható, elemei sorba rendezhetők: $\mathbb{Q} = \{q_1, q_2, q_3, \dots\}$.
Jelölje $\mathcal{P}_k(\mathbb{Q})$ a $\mathbb{Q}$ pontosan $k$ elemű részhalmazainak halmazát ($k \in \mathbb{N}$).
Minden $k$ elemű részhalmaz egyértelműen felírható szigorúan növekvő indexű elemek $k$-asaként: $\{q_{i_1}, q_{i_2}, \dots, q_{i_k}\}$, ahol $i_1 < i_2 < \dots < i_k$.
Ez a hozzárendelés egy injekciót ad $\mathcal{P}_k(\mathbb{Q})$-ból $\mathbb{N}^k$-ba. Mivel $\mathbb{N}^k$ megszámlálható, $\mathcal{P}_k(\mathbb{Q})$ legfeljebb megszámlálható (és mivel végtelen, megszámlálhatóan végtelen).
2. *Összes véges részhalmaz:*
Az üres halmaz egyetlen elem ($\{\emptyset\}$). Az összes véges részhalmaz halmaza:
$$\mathcal{P}_{\text{fin}}(\mathbb{Q}) = \{\emptyset\} \cup \bigcup_{k=1}^\infty \mathcal{P}_k(\mathbb{Q}).$$
Ez ismét megszámlálható sok megszámlálható halmaz egyesítése, így $\mathcal{P}_{\text{fin}}(\mathbb{Q})$ megszámlálhatóan végtelen. $\blacksquare$

::: elmelet
**Elméleti háttér — Megszámlálható halmazok műveleti zártsága.**

- **Alaptételek a megszámlálhatóságról:**
  1. Megszámlálható sok megszámlálható halmaz uniója megszámlálható: $|\bigcup_{n=1}^\infty A_n| \le \aleph_0$.
  2. Véges sok megszámlálható halmaz Descartes-szorzata megszámlálható: $|A_1 \times \dots \times A_k| \le \aleph_0$.
- **Véges sorozatok vs. végtelen sorozatok:** Véges sorozatok halmaza megszámlálható, de a VÉGTELEN sorozatok halmaza ($\mathbb{Z}^\mathbb{N}$ vagy $\{0, 1\}^\mathbb{N}$) már kontinuum számosságú (nem megszámlálható)!
:::

## Gy55.2. feladat

a) Mutassuk meg részletesen, hogy a racionális együtthatós polinomok halmaza, $\mathbb{Q}[x]$ megszámlálható!

b) Bizonyítsuk be, hogy a sík azon köreinek a halmaza, amelyek középpontjának mindkét koordinátája racionális és sugara is racionális, megszámlálható!

**Megoldás.**

a) Minden racionális együtthatós polinom egyértelműen megadható az együtthatóinak véges sorozatával:
$$P(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0 \longleftrightarrow (a_0, a_1, \dots, a_n) \in \mathbb{Q}^{n+1}.$$
Jelölje $\mathcal{P}_n$ a legfeljebb $n$-edfokú racionális együtthatós polinomok halmazát.
Ekkor a bijektív megfeleltetés miatt:
$$|\mathcal{P}_n| = |\mathbb{Q}^{n+1}|.$$
Mivel $\mathbb{Q}$ megszámlálható, a véges Descartes-szorzat $\mathbb{Q}^{n+1}$ is megszámlálható minden rögzített $n \in \mathbb{N} \cup \{0\}$ esetén.
Az összes racionális polinom halmaza ezen halmazok egyesítése:
$$\mathbb{Q}[x] = \bigcup_{n=0}^\infty \mathcal{P}_n.$$
Mivel megszámlálható sok megszámlálható halmaz uniója, $\mathbb{Q}[x]$ megszámlálhatóan végtelen. $\blacksquare$

b) A sík egy körét egyértelműen meghatározza a középpontja és a sugara:
$$K = K\big((u, v), r\big), \quad \text{ahol } (u, v) \in \mathbb{R}^2, r > 0.$$
A feladat feltétele szerint a középpont koordinátái racionálisak ($u, v \in \mathbb{Q}$) és a sugár is racionális ($r \in \mathbb{Q}^+ = \mathbb{Q} \cap (0, \infty)$).
Minden ilyen kör egyértelműen azonosítható egy rendezett hármassal:
$$(u, v, r) \in \mathbb{Q} \times \mathbb{Q} \times \mathbb{Q}^+.$$
A racionális körök halmaza tehát kölcsönösen egyértelműen megfeleltethető a $\mathbb{Q} \times \mathbb{Q} \times \mathbb{Q}^+$ halmaznak.
Mivel $\mathbb{Q}$ megszámlálható, három megszámlálható halmaz Descartes-szorzata is megszámlálható.
Ezért a racionális körök halmaza megszámlálhatóan végtelen. $\blacksquare$

::: elmelet
**Elméleti háttér — Polinomok és racionális geometriai objektumok megszámlálhatósága.**

- **Véges paraméterezés elve:** Bármely olyan objektumosztály, amely véges sok diszkrét/racionális paraméterrel egyértelműen leírható, szükségképpen megszámlálható halmazt alkot.
- **Racionális körök sűrűsége:** A racionális körök halmaza bázist alkot az euklideszi sík szokásos topológiájában (második megszámlálhatósági axióma).
:::

## Gy56.1. feladat

A nevezetes $\lim_{n\to\infty} \left(1 + \frac{c}{n}\right)^n = e^c$ határérték felhasználásával számítsuk ki az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} \left(1 + \frac{3}{n}\right)^n$;

b) $\lim_{n\to\infty} \left(\frac{n - 2}{n + 1}\right)^n$;

c) $\lim_{n\to\infty} \left(1 + \frac{1}{2n}\right)^n$.

**Megoldás.**

a) Közvetlenül alkalmazva a nevezetes határértéket $c = 3$ mellett:
$$\lim_{n\to\infty} \left(1 + \frac{3}{n}\right)^n = e^3.$$

b) Alakítsuk át a törtet úgy, hogy a számlálóban megjelenjen a nevező:
$$\frac{n - 2}{n + 1} = \frac{(n + 1) - 3}{n + 1} = 1 - \frac{3}{n + 1}.$$
Így a hatvány:
$$\left(\frac{n - 2}{n + 1}\right)^n = \left(1 - \frac{3}{n + 1}\right)^n.$$
A kitevőt igazítsuk a nevezőhöz: $n = (n + 1) - 1$:
$$\left(1 - \frac{3}{n + 1}\right)^n = \frac{\left(1 - \frac{3}{n + 1}\right)^{n+1}}{1 - \frac{3}{n + 1}}.$$
Jelölje $m = n + 1$. Ha $n \to \infty$, akkor $m \to \infty$.
A számláló határértéke:
$$\lim_{m\to\infty} \left(1 - \frac{3}{m}\right)^m = e^{-3}.$$
A nevező határértéke:
$$\lim_{n\to\infty} \left(1 - \frac{3}{n+1}\right) = 1 - 0 = 1.$$
A kettő hányadosa:
$$\lim_{n\to\infty} \left(\frac{n - 2}{n + 1}\right)^n = \frac{e^{-3}}{1} = e^{-3} = \frac{1}{e^3}.$$

c) Írjuk át a kifejezést úgy, hogy a kitevőben a nevezőbeli $2n$ jelenjen meg:
$$\left(1 + \frac{1}{2n}\right)^n = \left[\left(1 + \frac{1}{2n}\right)^{2n}\right]^{1/2}.$$
Vezessünk be új indexet: $m = 2n$. Mivel $n \to \infty \implies m \to \infty$, a belső kifejezés:
$$\lim_{m\to\infty} \left(1 + \frac{1}{m}\right)^m = e.$$
Mivel a négyzetgyökfüggvény ($x \mapsto x^{1/2}$) folytonos:
$$\lim_{n\to\infty} \left(1 + \frac{1}{2n}\right)^n = e^{1/2} = \sqrt{e}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Az Euler-féle szám és az $1^\infty$ típusú határértékek.**

- **Nevezetes alaphatárérték:** $\lim_{n\to\infty} (1 + c/n)^n = e^c$ tetszőleges $c \in \mathbb{R}$ esetén.
- **Index- és kitevő-igazítás:** Ha az alap $1 + \frac{c}{f(n)}$ alakú, a kitevőben előállítjuk az $f(n)$ faktort:
  $$\left(1 + \frac{c}{f(n)}\right)^{g(n)} = \left[\left(1 + \frac{c}{f(n)}\right)^{f(n)}\right]^{\frac{g(n)}{f(n)}} \to e^{c \cdot \lim \frac{g(n)}{f(n)}}.$$
:::

## Gy56.2. feladat

Határozzuk meg az alábbi sorozatok határértékét:

a) $\lim_{n\to\infty} \left(\dfrac{2n + 3}{2n - 1}\right)^{3n + 2}$;

b) $\lim_{n\to\infty} \left(1 - \dfrac{1}{n^2}\right)^n$.

**Megoldás.**

a) Alakítsuk át az alapot:
$$\frac{2n + 3}{2n - 1} = \frac{(2n - 1) + 4}{2n - 1} = 1 + \frac{4}{2n - 1}.$$
A kitevőt fejezzük ki $(2n - 1)$ segítségével:
$$3n + 2 = \frac{3}{2}(2n - 1) + \frac{3}{2} + 2 = \frac{3}{2}(2n - 1) + \frac{7}{2}.$$
Így a hatvány:
$$\left(\frac{2n + 3}{2n - 1}\right)^{3n + 2} = \left[\left(1 + \frac{4}{2n - 1}\right)^{2n - 1}\right]^{3/2} \cdot \left(1 + \frac{4}{2n - 1}\right)^{7/2}.$$
Jelölje $m = 2n - 1$. Ha $n \to \infty$, akkor $m \to \infty$.
- Az első tényező alapja: $\lim_{m\to\infty} \left(1 + \frac{4}{m}\right)^m = e^4$.
  Így az első tényező határértéke: $(e^4)^{3/2} = e^{4 \cdot 3/2} = e^6$.
- A második tényező: $\lim_{n\to\infty} \left(1 + \frac{4}{2n - 1}\right)^{7/2} = (1 + 0)^{7/2} = 1$.
A szorzat határértéke:
$$\lim_{n\to\infty} \left(\frac{2n + 3}{2n - 1}\right)^{3n + 2} = e^6 \cdot 1 = e^6.$$

b) Bontsuk fel az alapot szorzattá a négyzetek különbsége azonosság alapján:
$$1 - \frac{1}{n^2} = \left(1 - \frac{1}{n}\right)\left(1 + \frac{1}{n}\right).$$
Ennek $n$-edik hatványa a két tényező hatványának szorzata:
$$\left(1 - \frac{1}{n^2}\right)^n = \left(1 - \frac{1}{n}\right)^n \cdot \left(1 + \frac{1}{n}\right)^n.$$
A két tényező határértéke külön-külön jól ismert:
$$\lim_{n\to\infty} \left(1 - \frac{1}{n}\right)^n = e^{-1} = \frac{1}{e},$$
$$\lim_{n\to\infty} \left(1 + \frac{1}{n}\right)^n = e^1 = e.$$
A határértékek szorzatszabálya alapján:
$$\lim_{n\to\infty} \left(1 - \frac{1}{n^2}\right)^n = \frac{1}{e} \cdot e = 1. \quad \blacksquare$$
(Másik módszer: a Bernoulli-egyenlőtlenséggel $1 - \frac{1}{n} \le (1 - 1/n^2)^n < 1$, és a rendőrelv azonnal $1$-et ad.)

::: elmelet
**Elméleti háttér — Összetett kitevős határértékek és a Bernoulli-majorálás.**

- **Skálázási szabály:** Ha az alapban $1 + \frac{c}{n^p}$ szerepel:
  - ha $p = 1$: a határérték $e^c$ nagyságrendű ($1^\infty$ kritikus alak).
  - ha $p > 1$: $\left(1 + \frac{c}{n^p}\right)^n \to 1$, mert a belső tag sokkal gyorsabban tart nullához, mint amilyen gyorsan a kitevő végtelenbe viszi.
  - ha $p < 1$: $\left(1 + \frac{c}{n^p}\right)^n \to +\infty$ ($c > 0$ esetén).
:::

## Gy57.1. feladat

Konstruáljunk konkrét valós számsorozatokat, amelyek bemutatják az aszimptotikus ekvivalencia ($a_n \sim b_n \iff \frac{a_n}{b_n} \to 1$) és a különbség nullához tartása ($a_n - b_n \to 0$) közötti függetlenséget:

a) $a_n - b_n \to 0$, de $\lim_{n\to\infty} \frac{a_n}{b_n} \ne 1$;

b) $\lim_{n\to\infty} \frac{a_n}{b_n} = 1$, de $a_n - b_n \to +\infty$!

**Megoldás.**

a) Olyan sorozatokat keresünk, amelyek különbsége nullához tart, de hányadosuk nem $1$-hez tart.
Ez nullsorozatok körében valósulhat meg!
Legyen:
$$a_n = \frac{2}{n}, \qquad b_n = \frac{1}{n}.$$
- *Különbségük:*
  $$a_n - b_n = \frac{2}{n} - \frac{1}{n} = \frac{1}{n} \to 0.$$
- *Hányadosuk:*
  $$\frac{a_n}{b_n} = \frac{2/n}{1/n} = 2 \to 2 \ne 1.$$
(Sőt, ha $a_n = \frac{1}{n}$ és $b_n = \frac{1}{n^2}$, akkor $a_n - b_n \to 0$, miközben $\frac{a_n}{b_n} = n \to +\infty$!)

b) Olyan sorozatokat keresünk, amelyek hányadosa $1$-hez tart, de különbségük végtelenbe tart.
Ez a végtelenbe tartó sorozatok körében valósul meg!
Legyen:
$$a_n = n^2 + n, \qquad b_n = n^2.$$
- *Hányadosuk:*
  $$\frac{a_n}{b_n} = \frac{n^2 + n}{n^2} = 1 + \frac{1}{n} \to 1.$$
  Tehát $a_n \sim b_n$ (aszimptotikusan ekvivalensek).
- *Különbségük:*
  $$a_n - b_n = (n^2 + n) - n^2 = n \to +\infty.$$
A különbségük nemhogy nem tart nullához, hanem tetszőlegesen nagyra nő! $\blacksquare$

::: elmelet
**Elméleti háttér — Abszolút versus relatív eltérés az analízisben.**

- **Két különböző közelségi fogalom:**
  - $a_n - b_n \to 0$: *abszolút közelség* (a távolságuk elenyésző).
  - $\frac{a_n}{b_n} \to 1$: *relatív közelség* (a relatív hiba $\frac{|a_n - b_n|}{|b_n|} \to 0$).
- **Mikor esik egybe a kettő?** Ha a határérték egy VÉGES, NEMNULLA $L \in \mathbb{R} \setminus \{0\}$ szám! Ekkor $a_n - b_n = b_n (\frac{a_n}{b_n} - 1) \to L \cdot 0 = 0 \iff \frac{a_n}{b_n} \to 1$.
:::

## Gy57.2. feladat

Tegyük fel, hogy $a_n > 0$ és $b_n > 0$ minden $n$-re, és $\lim_{n\to\infty} \frac{a_n}{b_n} = 1$.

a) Igaz-e, hogy ekkor a hatványaik hányadosára is $\lim_{n\to\infty} \frac{a_n^n}{b_n^n} = 1$? Hozzunk indokolt ellenpéldát!

b) Bizonyítsuk be, hogy ha léteznek a véges $\lim_{n\to\infty} a_n = A > 0$ és $\lim_{n\to\infty} b_n = B > 0$ határértékek, akkor
$$a_n - b_n \to 0 \iff \frac{a_n}{b_n} \to 1.$$

**Megoldás.**

a) Az állítás **HAMIS.**
*Ellenpélda:*
Legyen $a_n = 1 + \frac{1}{n}$ és $b_n = 1$.
Ekkor:
$$\lim_{n\to\infty} \frac{a_n}{b_n} = \lim_{n\to\infty} \left(1 + \frac{1}{n}\right) = 1.$$
Ugyanakkor az $n$-edik hatványaik hányadosa:
$$\frac{a_n^n}{b_n^n} = \frac{\left(1 + \frac{1}{n}\right)^n}{1^n} = \left(1 + \frac{1}{n}\right)^n.$$
Ennek határértéke az Euler-féle szám:
$$\lim_{n\to\infty} \frac{a_n^n}{b_n^n} = e \ne 1.$$
(Sőt, $a_n = 1 + \frac{c}{n}$ esetén a hatványok hányadosa tetszőleges $e^c$ értéket felvehet, $a_n = 1 + \frac{1}{\sqrt{n}}$ esetén pedig $+\infty$-hez tart!)

b) 1. *$\implies$ irány:* Tegyük fel, hogy $a_n - b_n \to 0$.
A határértékek műveleti szabályai szerint:
$$\lim_{n\to\infty} (a_n - b_n) = A - B = 0 \implies A = B.$$
Mivel $B > 0$, a hányados határértéke:
$$\lim_{n\to\infty} \frac{a_n}{b_n} = \frac{\lim a_n}{\lim b_n} = \frac{A}{B} = \frac{A}{A} = 1.$$
2. *$\impliedby$ irány:* Tegyük fel, hogy $\frac{a_n}{b_n} \to 1$.
Ekkor a hányadosszabály miatt:
$$\lim_{n\to\infty} \frac{a_n}{b_n} = \frac{A}{B} = 1 \implies A = B.$$
Így a különbség határértéke:
$$\lim_{n\to\infty} (a_n - b_n) = A - B = 0.$$
A két irány bizonyításával az ekvivalenciát igazoltuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Hatványozás aszimptotikus ekvivalenciáknál.**

- **A hatványozás veszélyei:** Ha $a_n \sim b_n$, a tagok hányadosa $1$-hez tart, de a kitevőbe emelés ($n$-edik hatvány) felnagyítja a mikroszkopikus eltéréseket:
  $$\left(\frac{a_n}{b_n}\right)^n = \left(1 + \varepsilon_n\right)^n \approx e^{n \varepsilon_n}.$$
  Ezért $\frac{a_n^n}{b_n^n} \to 1$ csak akkor teljesül, ha nemcsak $\varepsilon_n \to 0$, hanem $n \varepsilon_n \to 0$ (azaz $\varepsilon_n = o(1/n)$)!
:::

## Gy58.1. feladat

a) Bizonyítsuk be a számtani és mértani közepek közötti egyenlőtlenséggel, hogy az
$$a_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekvő!

b) Igazoljuk hasonló módon az AM–GM egyenlőtlenséggel, hogy a
$$b_n = \left(1 + \frac{1}{n}\right)^{n+1}$$
sorozat szigorúan monoton csökkenő!

**Megoldás.**

a) Tekintsük a következő $n + 1$ darab pozitív valós számot:
- $n$ darab $\left(1 + \frac{1}{n}\right)$,
- és $1$ darab $1$.
Mivel ezen számok nem mind egyenlők ($1 + 1/n > 1$), alkalmazható rájuk a szigorú számtani és mértani közép közötti egyenlőtlenség ($G_{n+1} < A_{n+1}$):
$$\sqrt[n+1]{\left(1 + \frac{1}{n}\right)^n \cdot 1} < \frac{n \left(1 + \frac{1}{n}\right) + 1}{n + 1}.$$
Számítsuk ki a jobb oldali számtani közepet:
$$\frac{n \left(1 + \frac{1}{n}\right) + 1}{n + 1} = \frac{(n + 1) + 1}{n + 1} = \frac{n + 2}{n + 1} = 1 + \frac{1}{n + 1}.$$
Behelyettesítve:
$$\sqrt[n+1]{\left(1 + \frac{1}{n}\right)^n} < 1 + \frac{1}{n + 1}.$$
Mindkét oldalt az $(n+1)$-edik hatványra emelve:
$$\left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n + 1}\right)^{n+1} \iff a_n < a_{n+1}.$$
Ez bizonyítja, hogy az $(a_n)$ sorozat szigorúan monoton növekvő. $\blacksquare$

b) Tekintsük a $b_n$ sorozat reciprokát:
$$\frac{1}{b_n} = \left(\frac{n}{n+1}\right)^{n+1} = \left(1 - \frac{1}{n+1}\right)^{n+1}.$$
Alkalmazzuk a szigorú számtani és mértani közép egyenlőtlenséget a következő $n + 2$ darab pozitív számra:
- $n + 1$ darab $\left(1 - \frac{1}{n+1}\right)$,
- és $1$ darab $1$.
A mértani közép szigorúan kisebb a számtani középnél:
$$\sqrt[n+2]{\left(1 - \frac{1}{n+1}\right)^{n+1} \cdot 1} < \frac{(n + 1)\left(1 - \frac{1}{n+1}\right) + 1}{n + 2} = \frac{n + 1}{n + 2} = 1 - \frac{1}{n + 2}.$$
Mindkét oldalt $(n+2)$-edik hatványra emelve:
$$\left(1 - \frac{1}{n+1}\right)^{n+1} < \left(1 - \frac{1}{n+2}\right)^{n+2} \iff \frac{1}{b_n} < \frac{1}{b_{n+1}}.$$
Mivel mindkét oldal pozitív, a reciprokképzés megfordítja az egyenlőtlenséget:
$$b_n > b_{n+1}.$$
Tehát a $(b_n)$ sorozat szigorúan monoton csökkenő. $\blacksquare$

::: elmelet
**Elméleti háttér — Az $e$ sorozatának monotonitása AM–GM közepekkel.**

- **Pólya György elegáns trükkje:** Az $1$-es hozzáadása mint $(n+1)$-edik elem lehetővé teszi, hogy a számtani középben az $n \cdot \frac{1}{n} = 1$ teleszkóposan összeadódjon a számlálóban, és pontosan az $1 + \frac{1}{n+1}$ kifejezést adja!
- **Közös határérték:** Mivel $a_n$ nő, $b_n$ csökken, és $b_n = a_n (1 + 1/n) \implies b_n - a_n = a_n/n \to 0$, a Cantor-féle metszettétel miatt metszetük egyetlen szám, az Euler-féle $e$ szám:
  $$a_n < e < b_n \quad \forall n \in \mathbb{N}.$$
:::

## Gy58.2. feladat

a) Mutassuk meg, hogy minden $n \in \mathbb{N}$ esetén
$$\left(1 + \frac{1}{n}\right)^n < e < \left(1 + \frac{1}{n}\right)^{n+1}.$$

b) Ennek természetes alapú logaritmusát véve bizonyítsuk be, hogy minden $n \ge 1$ egészre:
$$\frac{1}{n + 1} < \ln\left(1 + \frac{1}{n}\right) < \frac{1}{n}!$$

**Megoldás.**

a) A Gy58.1 feladatban igazoltuk, hogy:
- az $a_n = \left(1 + \frac{1}{n}\right)^n$ sorozat szigorúan monoton növekvő és határértéke $e$;
- a $b_n = \left(1 + \frac{1}{n}\right)^{n+1}$ sorozat szigorúan monoton csökkenő és határértéke $e$.
Mivel egy szigorúan növekvő sorozat minden tagja szigorúan kisebb a határértékénél:
$$a_n < \lim_{k\to\infty} a_k = e.$$
Hasonlóan, mivel $b_n$ szigorúan csökkenő, minden tagja szigorúan nagyobb a határértékénél:
$$e = \lim_{k\to\infty} b_k < b_n.$$
Összefűzve kapjuk, hogy minden $n \in \mathbb{N}$ esetén:
$$\left(1 + \frac{1}{n}\right)^n < e < \left(1 + \frac{1}{n}\right)^{n+1}. \quad \blacksquare$$

b) Mivel az $x \mapsto \ln x$ függvény a $(0, \infty)$-en szigorúan monoton növekvő, vegyük a fenti kettős egyenlőtlenség természetes logaritmusát:
$$\ln\left[\left(1 + \frac{1}{n}\right)^n\right] < \ln e < \ln\left[\left(1 + \frac{1}{n}\right)^{n+1}\right].$$
A logaritmus azonosságai alapján ($\ln(u^k) = k \ln u$ és $\ln e = 1$):
$$n \ln\left(1 + \frac{1}{n}\right) < 1 < (n + 1) \ln\left(1 + \frac{1}{n}\right).$$
- A bal oldali egyenlőtlenségből $n$-nel osztva:
  $$\ln\left(1 + \frac{1}{n}\right) < \frac{1}{n}.$$
- A jobb oldali egyenlőtlenségből $(n+1)$-gyel osztva:
  $$\frac{1}{n + 1} < \ln\left(1 + \frac{1}{n}\right).$$
A két egyenlőtlenséget egyesítve:
$$\frac{1}{n + 1} < \ln\left(1 + \frac{1}{n}\right) < \frac{1}{n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Logaritmikus becslések és az Euler–Mascheroni-állandó.**

- **Harmonikus sor és logaritmus kapcsolata:**
  Mivel $\ln(1 + 1/k) = \ln(k+1) - \ln k$, az egyenlőtlenséget összegezve $k = 1$-től $n$-ig teleszkópos összeghez jutunk:
  $$\sum_{k=1}^n \frac{1}{k+1} < \ln(n+1) < \sum_{k=1}^n \frac{1}{k} = H_n.$$
  Ez bizonyítja, hogy $H_n - \ln n$ sorozat monoton csökken és alulról korlátos, így konvergál az $\gamma \approx 0{,}5772$ Euler–Mascheroni konstanshoz!
:::

## Gy59.1. feladat

a) Konstruáljunk explicit bijekciót a zárt $[0, 1]$ és a nyílt $(0, 1)$ intervallumok között!

b) Bizonyítsuk be a fenti konstrukció és a számossági tételek segítségével, hogy az irracionális számok $\mathbb{R} \setminus \mathbb{Q}$ halmaza kontinuum számosságú!

**Megoldás.**

a) A $[0, 1]$ halmazból el kell „tüntetnünk” a két végpontot ($0$-t és $1$-et) úgy, hogy ne veszítsünk elemet.
Válasszunk ki egy megszámlálható végtelen pontsorozatot a nyílt intervallumból, például:
$$x_1 = \frac{1}{2}, \quad x_2 = \frac{1}{3}, \quad x_3 = \frac{1}{4}, \quad \dots, \quad x_k = \frac{1}{k+1} \quad (k \ge 1).$$
Egészítsük ki ezt a sorozatot a két végponttal:
$$s_1 = 0, \quad s_2 = 1, \quad s_3 = \frac{1}{2}, \quad s_4 = \frac{1}{3}, \quad \dots, \quad s_{k+2} = \frac{1}{k+1} \quad (k \ge 1).$$
Definiáljuk az $f : [0, 1] \to (0, 1)$ leképezést az alábbiak szerint (Hilbert hotel-módszer):
- A kitüntetett $S = \{0, 1, 1/2, 1/3, 1/4, \dots\}$ halmaz elemeit eltoljuk kettővel:
  $$f(0) = \frac{1}{2}, \quad f(1) = \frac{1}{3}, \quad f\left(\frac{1}{k}\right) = \frac{1}{k+2} \quad (k \ge 2);$$
- Minden egyéb $x \in [0, 1] \setminus S$ pontot helyben hagyunk:
  $$f(x) = x.$$
*Ellenőrzés:*
1. $f$ értékkészlete: $0$ és $1$ nem képmás, és a képek mind a $(0, 1)$-be esnek.
2. Injektív: az $S$-en belüli eltolás injektív, kívül az identitás injektív, és a két képhalmaz diszjunkt.
3. Szürjektív: a $(0, 1)$ minden pontjának van ősképe.
Tehát $f$ egy kölcsönösen egyértelmű megfeleltetés (bijekció), így $|[0, 1]| = |(0, 1)|$. $\blacksquare$

b) Tudjuk, hogy $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$ diszjunkt unió.
A valós számok halmaza kontinuum számosságú: $|\mathbb{R}| = \mathfrak{c}$.
A racionális számok halmaza megszámlálható: $|\mathbb{Q}| = \aleph_0$.
Ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható lenne, akkor két megszámlálható halmaz uniójaként $\mathbb{R}$ is megszámlálható lenne, ami ellentmond Cantor tételének! Tehát $\mathbb{R} \setminus \mathbb{Q}$ nem megszámlálható.
Továbbá mivel $\mathbb{R} \setminus \mathbb{Q} \subset \mathbb{R}$, ezért:
$$|\mathbb{R} \setminus \mathbb{Q}| \le |\mathbb{R}| = \mathfrak{c}.$$
Másrészt az irracionális számok halmaza tartalmaz egy kontinuum számosságú halmazt, például a $\sqrt{2} + (0, 1) \cap (\dots)$ konstrukcióval, vagy a Bernstein-tétel alapján:
kontinuum halmazból megszámlálható sok pontot elhagyva a számosság változatlan marad ($\mathfrak{c} - \aleph_0 = \mathfrak{c}$).
Tehát valóban $|\mathbb{R} \setminus \mathbb{Q}| = \mathfrak{c}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Hilbert-hotel elv és halmazok ekvivalenciája.**

- **Hilbert-hotel elve:** Végtelen halmazhoz véges sok (vagy megszámlálható sok) új elemet adva a számosság nem változik. A bijekciót egy belső megszámlálható részhalmaz eltolásával konstruáljuk meg.
- **Számossági aritmetika:** Ha $A$ végtelen és $B$ megszámlálható úgy, hogy $|B| < |A|$, akkor $|A \setminus B| = |A|$. Ezért az irracionális számok számossága megegyezik a valós számokéval.
:::

## Gy59.2. feladat

a) Konstruáljunk explicit bijekciót a $(0, 1)$ nyílt intervallum és a teljes valós számegyenes $\mathbb{R}$ között!

b) Bizonyítsuk be, hogy tetszőleges két nem elfajuló $[a, b]$ és $[c, d]$ zárt intervallum azonos számosságú ($a < b$ és $c < d$)!

**Megoldás.**

a) Olyan szigorúan monoton növekvő és folytonos függvényt keresünk, amely a $(0, 1)$ intervallumot az egész $\mathbb{R}$-re képezi.
Két klasszikus megoldás:
1. *Trigonometrikus függvényekkel:*
A tangensfüggvény bijekciót létesít $(-\pi/2, \pi/2)$ és $\mathbb{R}$ között.
Először képezzük le a $(0, 1)$ intervallumot a $(-\pi/2, \pi/2)$ intervallumra egy lineáris transzformációval:
$$u(x) = \pi \left(x - \frac{1}{2}\right) = \pi x - \frac{\pi}{2}.$$
Ekkor $x = 0 \implies u = -\pi/2$, és $x = 1 \implies u = \pi/2$.
Ezután alkalmazzuk a tangenst:
$$f(x) = \tan\left(\pi x - \frac{\pi}{2}\right) = -\cot(\pi x).$$
Ez a függvény szigorúan monoton növekvő, folytonos, és $\lim_{x\to 0+} f(x) = -\infty$, $\lim_{x\to 1-} f(x) = +\infty$, így bijekció $(0, 1)$ és $\mathbb{R}$ között.
2. *Algebrai törtfüggvénnyel:*
$$g(x) = \frac{2x - 1}{x(1 - x)}.$$
Ez szintén szigorúan monoton nő, $g(1/2) = 0$, a határértékei a végpontokban $\mp \infty$.

b) Legyenek $[a, b]$ és $[c, d]$ tetszőleges nem elfajuló intervallumok ($b - a > 0$ és $d - c > 0$).
Keressünk egy lineáris függvényt: $\varphi(x) = m x + k$.
Azt szeretnénk, hogy $\varphi(a) = c$ és $\varphi(b) = d$.
A meredekség:
$$m = \frac{d - c}{b - a} > 0.$$
A konstans tag meghatározásához:
$$\varphi(x) = c + \frac{d - c}{b - a} (x - a).$$
Mivel $m > 0$, a $\varphi$ függvény szigorúan monoton növekvő és folytonos, így bijekció az $[a, b]$ és $[c, d]$ intervallumok között.
Inverze szintén lineáris: $\varphi^{-1}(y) = a + \frac{b - a}{d - c}(y - c)$.
Ez igazolja, hogy bármely két nem elfajuló zárt intervallum számossága megegyezik (mindkettő kontinuum számosságú). $\blacksquare$

::: elmelet
**Elméleti háttér — Intervallumok topológiai és metrikus ekvivalenciája.**

- **Homeomorfizmus:** A megadott bijekciók nemcsak halmazelméleti egy-egyértelmű megfeleltetések, hanem mindkét irányban folytonosak (homeomorfizmusok). A $(0, 1)$ nyílt intervallum topológiailag ekvivalens az egész valós egyenessel.
- **Hosszúság vs. számosság:** Bár $[0, 1]$ hossza $1$, míg $[0, 100]$ hossza $100$, pontjaik halmazelméleti számossága azonos. A végtelen halmazoknál a méret (mérték) és az elemszám (számosság) gyökeresen elválik egymástól.
:::

## Gy60.1. feladat

a) Bizonyítsuk be, hogy az euklideszi síkban elhelyezett, páronként diszjunkt pozitív sugarú körlapokból álló tetszőleges rendszer szükségképpen legfeljebb megszámlálható!

b) Igazoljuk ugyanezt a számegyenesre állított, páronként diszjunkt „T” alakú betűk rendszerére (ahol a T betűk vízszintes és függőleges szára is pozitív hosszúságú szakasz)!

**Megoldás.**

a) Legyen $\mathcal{D} = \{D_i : i \in I\}$ páronként diszjunkt pozitív sugarú nyílt körlapok egy tetszőleges családja a síkban.
Tudjuk, hogy a racionális koordinátájú pontok halmaza, $\mathbb{Q} \times \mathbb{Q}$ sűrű a síkban ($\mathbb{R}^2$-ben), és megszámlálható.
Mivel minden $D_i$ körlap pozitív sugarú nyílt halmaz, nem üres belső pontokat tartalmaz, így $\mathbb{Q} \times \mathbb{Q}$ sűrűsége miatt minden egyes $D_i$ körlap belsejében található legalább egy racionális koordinátájú $(p_i, q_i) \in \mathbb{Q}^2$ pont.
Válasszunk ki minden $D_i$ körlapból egy ilyen racionális pontot:
$$f : \mathcal{D} \to \mathbb{Q} \times \mathbb{Q}, \quad f(D_i) = (p_i, q_i) \in D_i.$$
Mivel a körlapok a feltevés szerint páronként diszjunktak ($D_i \cap D_j = \emptyset$, ha $i \ne j$), két különböző körlap nem tartalmazhatja ugyanazt a racionális pontot.
Ezért az $f$ leképezés INJEKTÍV!
Egy tetszőleges halmazból egy megszámlálható halmazba ($\mathbb{Q} \times \mathbb{Q}$) vezető injekció létezése azt jelenti, hogy az alaphalmaz számossága legfeljebb akkora, mint a képhalmazé:
$$|\mathcal{D}| \le |\mathbb{Q} \times \mathbb{Q}| = \aleph_0.$$
A körlapok rendszere tehát legfeljebb megszámlálható. $\blacksquare$

b) Tekintsünk egy tetszőleges páronként diszjunkt T betűkből álló családot, ahol a T függőleges szára a számegyenesen áll egy $x \in \mathbb{R}$ pontban, és a tetején egy pozitív hosszúságú vízszintes tetőszakasz van rögzített $y > 0$ magasságban.
Jelölje a $T_i$ betű vízszintes szárának magasságát $y_i > 0$, és a szár végpontjainak $x$-koordinátáit $[a_i, b_i]$, ahol $a_i < x_i < b_i$.
Mivel a T betűk diszjunktak, a vízszintes szakaszok sem metszhetik egymást, és semelyik másik T betű függőleges szára nem szúrhatja át egy meglévő T vízszintes tetejét.
Rendeljünk hozzá minden $T_i$ betűhöz egy racionális koordinátájú pontot:
Mivel a vízszintes szár pozitív hosszúságú ($b_i - a_i > 0$), és a függőleges szár pozitív magasságú, a T betű „teteje alatt és szára mellett” létezik olyan nyílt síkbeli háromszög/téglalap tartomány, amely nem tartalmazhat más T betűhöz tartozó pontot.
Még egyszerűbben: a racionális számok sűrűsége miatt minden vízszintes szakaszhoz tartozik egy racionális $q_i \in (a_i, b_i) \cap \mathbb{Q}$, és a magasság alatt egy racionális $r_i \in (0, y_i) \cap \mathbb{Q}$.
A diszjunkt geometriai elhelyezkedés garantálja az injektív leképezést $\mathbb{Q}^2$-be, így a T betűk száma is legfeljebb megszámlálható. $\blacksquare$

::: elmelet
**Elméleti háttér — Szeparabilitás és diszjunkt nyílt tartományok.**

- **Szeparabilitás:** Egy metrikus tér szeparabilis, ha létezik megszámlálható sűrű részhalmaza (pl. $\mathbb{Q}^n \subset \mathbb{R}^n$).
- **Diszjunkt nyílt halmazok tétele:** Szeparabilis térben páronként diszjunkt nem üres nyílt halmazok bármely családja legfeljebb megszámlálható (mert mindegyikből kiválasztható a sűrű halmaz egy-egy diszjunkt eleme).
:::

## Gy60.2. feladat

a) Legfeljebb hány páronként diszjunkt „8-as” alakzat (két pontban érintkező pozitív sugarú körvonal) helyezhető el a síkban?

b) Igazoljuk, hogy egy tetszőleges monoton növekvő $f : \mathbb{R} \to \mathbb{R}$ függvény szakadási pontjainak halmaza legfeljebb megszámlálható!

**Megoldás.**

a) Minden „8-as” alakzat két darab pozitív területű, diszjunkt belső tartományt (két „lyukat”) határol a síkban.
Jelölje a 8-as alakzat felső körének belső nyílt körlapját $U_i$, az alsó kör belső nyílt körlapját $V_i$.
Mivel a 8-as alakzatok diszjunktak, ha $i \ne j$, akkor a $T_i$ alakzat nem metszheti $T_j$-t.
Ez azt jelenti, hogy a különböző 8-asok belsejei sem tartalmazhatják a másik határát.
Különösen: minden 8-as alakzat felső $U_i$ körlapjának belsejébe választhatunk egy racionális koordinátájú pontot: $(p_i, q_i) \in U_i \cap \mathbb{Q}^2$.
Mivel az $U_i$ és $U_j$ körlapok diszjunktak, a hozzárendelés injektív.
Ez bizonyítja, hogy a síkban legfeljebb **megszámlálható sok** diszjunkt 8-as alakzat helyezhető el. $\blacksquare$

b) Legyen $f : \mathbb{R} \to \mathbb{R}$ monoton növekvő függvény.
Tudjuk, hogy monoton függvénynek minden pontban létezik bal és jobb oldali határértéke, és $f(x-) \le f(x) \le f(x+)$.
A függvény pontosan akkor szakad egy $x$ pontban, ha a bal és jobb oldali határérték szigorúan eltér:
$$f(x-) < f(x+).$$
Minden ilyen szakadási ponthoz rendeljük hozzá a nyílt ugrási intervallumot az értéktengelyen:
$$J_x = \big(f(x-), f(x+)\big).$$
Mivel $f$ monoton növekvő, ha $x_1 < x_2$, akkor $f(x_1+) \le f(x_2-)$.
Ez azt jelenti, hogy a hozzárendelt $J_{x_1}$ és $J_{x_2}$ nyílt intervallumok **páronként diszjunktak**:
$$J_{x_1} \cap J_{x_2} = \emptyset \quad (x_1 \ne x_2).$$
Mivel minden $J_x$ egy nem üres nyílt intervallum a valós számegyenesen, a racionális számok sűrűsége miatt mindegyik tartalmaz legalább egy racionális számot:
$$r_x \in J_x \cap \mathbb{Q}.$$
Mivel az intervallumok diszjunktak, az $x \mapsto r_x$ leképezés injektív a szakadási pontok halmazából $\mathbb{Q}$-ba.
Mivel $\mathbb{Q}$ megszámlálható, a szakadási pontok halmaza szükségképpen **legfeljebb megszámlálható**. $\blacksquare$

::: elmelet
**Elméleti háttér — Monoton függvények szakadásai és diszjunkt intervallumok.**

- **Monoton függvények szakadási jellege:** Monoton függvénynek CSAK elsőfajú (ugrás) szakadása lehet, másodfajú (oszcilláló) szakadása nem.
- **Ugrások összegezhetősége:** Korlátos intervallumon a szakadási ugrások összege véges: $\sum_{x \in [a, b]} (f(x+) - f(x-)) \le f(b) - f(a)$. Ebből is azonnal következik, hogy $\varepsilon$-nál nagyobb ugrásból csak véges sok lehet, így a szakadások halmaza $\bigcup_n \{x : \text{ugrás} > 1/n\}$ megszámlálható unió.
:::

## Gy61.1. feladat

a) Bizonyítsuk be, hogy a $\xi = \sqrt{3} - \sqrt{5}$ szám algebrai, megadva egy olyan nemnulla racionális együtthatós polinomot, amelynek $\xi$ gyöke!

b) Mutassuk meg részletesen, hogy az algebrai számok $\mathbb{A}$ halmaza megszámlálhatóan végtelen!

**Megoldás.**

a) Induljunk ki a $\xi = \sqrt{3} - \sqrt{5}$ egyenlőségből és emeljünk négyzetre:
$$\xi^2 = (\sqrt{3} - \sqrt{5})^2 = 3 - 2\sqrt{15} + 5 = 8 - 2\sqrt{15}.$$
Izoláljuk a megmaradt négyzetgyököt:
$$2\sqrt{15} = 8 - \xi^2.$$
Emeljünk újra négyzetre:
$$(2\sqrt{15})^2 = (8 - \xi^2)^2 \iff 4 \cdot 15 = 64 - 16\xi^2 + \xi^4 \iff 60 = \xi^4 - 16\xi^2 + 64.$$
Nullára rendezve:
$$\xi^4 - 16\xi^2 + 4 = 0.$$
Tekintsük a $P(x) = x^4 - 16x^2 + 4$ polinomot.
Ennek a polinomnak az együtthatói egész számok (tehát racionálisak), nem azonosan nulla polinom, és a levezetés szerint $P(\xi) = 0$.
A definíció szerint egy szám pontosan akkor algebrai, ha gyöke egy nemnulla racionális együtthatós polinomnak.
Tehát $\sqrt{3} - \sqrt{5}$ valóban algebrai szám. $\blacksquare$

b) 1. *Polinomok halmaza:*
A Gy55.2 feladat szerint a racionális együtthatós polinomok $\mathbb{Q}[x]$ halmaza megszámlálható.
2. *Nemnulla polinomok:*
A nemnulla racionális polinomok halmaza, $\mathbb{Q}[x] \setminus \{0\}$ egy megszámlálható halmaz részhalmazaként szintén megszámlálható: sorba rendezhető $P_1, P_2, P_3, \dots$.
3. *Gyökök halmaza:*
Az algebra alaptétele szerint egy $n$-edfokú polinomnak legfeljebb $n$ darab komplex gyöke van, így minden $P_k \in \mathbb{Q}[x] \setminus \{0\}$ polinom valós gyökeinek $G(P_k)$ halmaza VÉGES halmaz.
Az összes algebrai számok halmaza ezen gyökhalmazok egyesítése:
$$\mathbb{A} = \bigcup_{k=1}^\infty G(P_k).$$
Mivel megszámlálható sok véges halmaz egyesítése megszámlálható, az algebrai számok $\mathbb{A}$ halmaza legfeljebb megszámlálható.
Mivel minden racionális szám algebrai ($q$ gyöke az $x - q = 0$ polinomnak), és $\mathbb{Q} \subset \mathbb{A}$ végtelen, $\mathbb{A}$ szükségképpen megszámlálhatóan végtelen halmaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Algebrai számok és polinomgyökök.**

- **Definíció:** $\alpha \in \mathbb{C}$ algebrai szám, ha létezik olyan nemnulla $P \in \mathbb{Q}[x]$ polinom, amelyre $P(\alpha) = 0$. Ha nem algebrai, akkor transzcendens szám.
- **Algebrai számok teste:** $\mathbb{A}$ testet alkot (két algebrai szám összege, szorzata is algebrai), amely algebrailag zárt, és megszámlálható.
:::

## Gy61.2. feladat

a) Bizonyítsuk be a Cantor-tétel és számossági megfontolások segítségével, hogy léteznek transzcendens valós számok, sőt a transzcendens számok halmaza kontinuum számosságú!

b) Igazoljuk, hogy a $\eta = \sqrt[3]{2} + \sqrt{2}$ szám algebrai!

**Megoldás.**

a) A valós számok halmaza diszjunkt uniója az algebrai valós számoknak ($\mathbb{A}_\mathbb{R}$) és a transzcendens valós számoknak ($\mathbb{T}$):
$$\mathbb{R} = \mathbb{A}_\mathbb{R} \cup \mathbb{T}, \quad \mathbb{A}_\mathbb{R} \cap \mathbb{T} = \emptyset.$$
1. A Gy61.1 feladat szerint az algebrai számok halmaza megszámlálható: $|\mathbb{A}_\mathbb{R}| = \aleph_0$.
2. Cantor tétele szerint a valós számok halmaza kontinuum számosságú, tehát NEM megszámlálható: $|\mathbb{R}| = \mathfrak{c} > \aleph_0$.
Ha a transzcendens számok $\mathbb{T}$ halmaza megszámlálható lenne (vagy üres), akkor $\mathbb{R} = \mathbb{A}_\mathbb{R} \cup \mathbb{T}$ két megszámlálható halmaz uniójaként megszámlálható lenne, ami ellentmondás!
Ez a tiszta egzisztenciális bizonyítás (Cantor, 1874) nemcsak megmutatja, hogy léteznek transzcendens számok, hanem azt is, hogy:
$$|\mathbb{T}| = \mathfrak{c}.$$
A valós számok „túlnyomó többsége” transzcendens!

b) Legyen $\eta = \sqrt[3]{2} + \sqrt{2}$.
Rendezzük át úgy, hogy a négyzetgyök külön álljon:
$$\eta - \sqrt{2} = \sqrt[3]{2}.$$
Emeljük mindkét oldalt köbre:
$$(\eta - \sqrt{2})^3 = 2 \iff \eta^3 - 3\sqrt{2}\eta^2 + 3 \cdot 2 \eta - 2\sqrt{2} = 2.$$
Összevonva a négyzetgyökös és racionális tagokat:
$$(\eta^3 + 6\eta - 2) = \sqrt{2}(3\eta^2 + 2).$$
Most emeljünk mindkét oldalt négyzetre a $\sqrt{2}$ eliminálásához:
$$(\eta^3 + 6\eta - 2)^2 = 2 (3\eta^2 + 2)^2.$$
Bontsuk ki a négyzeteket:
- Bal oldal:
  $$(\eta^3 + 6\eta - 2)^2 = \eta^6 + 36\eta^2 + 4 + 12\eta^4 - 4\eta^3 - 24\eta = \eta^6 + 12\eta^4 - 4\eta^3 + 36\eta^2 - 24\eta + 4.$$
- Jobb oldal:
  $$2 (9\eta^4 + 12\eta^2 + 4) = 18\eta^4 + 24\eta^2 + 8.$$
Nullára rendezve:
$$\eta^6 - 6\eta^4 - 4\eta^3 + 12\eta^2 - 24\eta - 4 = 0.$$
Ez egy 6-odfokú, egész együtthatós nemnulla polinom, amelynek $\eta$ gyöke.
Ezért $\sqrt[3]{2} + \sqrt{2}$ valóban algebrai szám. $\blacksquare$

::: elmelet
**Elméleti háttér — Cantor forradalmi bizonyítása a transzcendens számok létezésére.**

- **Liouville vs. Cantor:** Liouville 1844-ben rendkívül bonyolult konstrukcióval adott konkrét transzcendens számot ($\sum 10^{-n!}$). Cantor 1874-ben pusztán számossági érveléssel megmutatta, hogy szinte minden szám transzcendens, anélkül, hogy egyetlen konkrét példát megnevezett volna!
- **Minimálpolinom és fokszám:** Két algebrai szám összegének foka legfeljebb a fokok szorzata ($[\mathbb{Q}(\sqrt[3]{2}, \sqrt{2}) : \mathbb{Q}] = 3 \cdot 2 = 6$).
:::

## Gy62.1. feladat

a) Bizonyítsuk be Cantor tételét tetszőleges $A$ halmazra: nincsen olyan $f : A \to \mathcal{P}(A)$ leképezés, amely szürjektív lenne, így $|A| < |\mathcal{P}(A)|$!

b) Igazoljuk, hogy a természetes számok hatványhalmaza, $\mathcal{P}(\mathbb{N})$ kölcsönösen egyértelműen megfeleltethető a végtelen $0$–$1$ sorozatok $\{0, 1\}^\mathbb{N}$ halmazával!

**Megoldás.**

a) Tegyük fel indirekt, hogy létezik olyan $f : A \to \mathcal{P}(A)$ leképezés, amely szürjektív (minden $A$-beli részhalmaz előáll $f(x)$ alakban).
Konstruáljuk meg az alábbi speciális „diagonális” részhalmazt $A$-ban:
$$B = \{x \in A : x \notin f(x)\}.$$
Világos, hogy $B \subseteq A$, így a hatványhalmaz definíciója szerint $B \in \mathcal{P}(A)$.
Mivel feltettük, hogy $f$ szürjektív, léteznie kell olyan $b \in A$ elemnek, amelynek képe éppen a $B$ halmaz:
$$f(b) = B.$$
Tegyük fel most a kérdést: vajon a $b$ elem eleme-e a $B$ halmaznak ($b \in B$)?
- Ha $b \in B$, akkor a $B$ halmaz definíciója szerint $b \notin f(b)$. Mivel azonban $f(b) = B$, ez azt jelenti, hogy $b \notin B$, ami ellentmondás!
- Ha $b \notin B$, akkor mivel $f(b) = B$, ez azt jelenti, hogy $b \notin f(b)$. A $B$ halmaz definíciója szerint viszont azon elemek, amelyekre $x \notin f(x)$, beletartoznak $B$-be, így $b \in B$, ami ismét ellentmondás!
A klasszikus logika szabályai szerint a $b \in B$ állításnak igaznak vagy hamisnak kell lennie, de mindkét eset ellentmondásra vezet.
Ez az ellentmondás bizonyítja, hogy nem létezhet szürjektív $f : A \to \mathcal{P}(A)$ leképezés.
Mivel az $x \mapsto \{x\}$ leképezés triviálisan injektív, a Cantor–Bernstein-tétel szerint szigorú számossági reláció áll fenn:
$$|A| < |\mathcal{P}(A)|. \quad \blacksquare$$

b) Tetszőleges $H \subseteq \mathbb{N}$ részhalmazhoz rendeljük hozzá annak $\chi_H$ karakterisztikus (indikátor) sorozatát:
$$\chi_H = (c_1, c_2, c_3, \dots), \quad \text{ahol } c_n = \begin{cases} 1, & \text{ha } n \in H, \\ 0, & \text{ha } n \notin H. \end{cases}$$
1. *Injektív:* Ha $H_1 \ne H_2$, akkor létezik olyan $n \in \mathbb{N}$, amely az egyikben benne van, a másikban nincs. Ekkor a két indikátor sorozat $n$-edik tagja eltér ($1$ vs. $0$), így $\chi_{H_1} \ne \chi_{H_2}$.
2. *Szürjektív:* Tetszőleges $c = (c_1, c_2, \dots) \in \{0, 1\}^\mathbb{N}$ végtelen $0$–$1$ sorozat esetén képezzük a $H = \{n \in \mathbb{N} : c_n = 1\}$ halmazt. Nyilvánvalóan $\chi_H = c$.
A hozzárendelés tehát bijekció $\mathcal{P}(\mathbb{N})$ és $\{0, 1\}^\mathbb{N}$ között, így:
$$|\mathcal{P}(\mathbb{N})| = |\{0, 1\}^\mathbb{N}| = 2^{\aleph_0}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Cantor tétele és a Russell-paradoxon gyökere.**

- **Diagonális elv:** A $B = \{x : x \notin f(x)\}$ halmaz konstrukciója Cantor zseniális diagonális módszerének absztrakt alakja. Ugyanez a gondolatmenet vezetett Russell paradoxonához a naiv halmazelméletben („a magukat nem tartalmazó halmazok halmaza”), valamint Gödel nemteljességi tételéhez és Turing megállási problémájához.
- **Végtelen hierarchia:** Nincs legnagyobb számosság: $\aleph_0 < 2^{\aleph_0} < 2^{2^{\aleph_0}} < \dots$
:::

## Gy62.2. feladat

a) Bizonyítsuk be Cantor diagonális módszerével közvetlenül, hogy a nyílt $(0, 1)$ intervallum valós számai nem alkotnak megszámlálható halmazt!

b) Mutassuk meg, hogy a természetes számok hatványhalmazának számossága megegyezik a valós számok számosságával:
$$|\mathcal{P}(\mathbb{N})| = |\mathbb{R}| = \mathfrak{c}.$$

**Megoldás.**

a) Tegyük fel indirekt, hogy a $(0, 1)$ intervallum megszámlálható, azaz létezik elemeinek egy teljes sorbarendezése:
$$(0, 1) = \{x_1, x_2, x_3, \dots\}.$$
Írjuk fel minden $x_n$ szám végtelen tizedestört alakját (az egyértelműség kedvéért zárjuk ki a végtelen $9$-esre végződő alakokat):
$$x_1 = 0{,}d_{11} d_{12} d_{13} \dots$$
$$x_2 = 0{,}d_{21} d_{22} d_{23} \dots$$
$$x_3 = 0{,}d_{31} d_{32} d_{33} \dots$$
$$\dots$$
ahol $d_{ij} \in \{0, 1, \dots, 9\}$.
Konstruáljunk egy új $y = 0{,}c_1 c_2 c_3 \dots \in (0, 1)$ valós számot az átlós jegyek megváltoztatásával:
$$c_n = \begin{cases} 4, & \text{ha } d_{nn} \ne 4, \\ 5, & \text{ha } d_{nn} = 4. \end{cases}$$
Világos, hogy minden $c_n \in \{4, 5\}$, így a tizedestört nem végződik végtelen $0$-ra vagy $9$-re, a szám egyértelműen meghatározott, és $y \in (0, 1)$.
Másrészt vizsgáljuk meg, hogy $y$ megegyezhet-e a felsorolás bármelyik $x_k$ elemével:
Az $y$ és $x_k$ számok $k$-adik tizedesjegye eltér ($c_k \ne d_{kk}$ a konstrukció miatt), ezért:
$$y \ne x_k \quad \text{minden } k \in \mathbb{N} \text{ esetén}.$$
Ez azt jelenti, hogy az $y \in (0, 1)$ szám nem szerepel a felsorolásban, ami ellentmond annak, hogy a lista a teljes $(0, 1)$ intervallumot tartalmazta!
Ez az ellentmondás bizonyítja, hogy $(0, 1)$ nem megszámlálható. $\blacksquare$

b) A Gy62.1 feladat szerint $|\mathcal{P}(\mathbb{N})| = |\{0, 1\}^\mathbb{N}|$.
Minden $c = (c_1, c_2, \dots) \in \{0, 1\}^\mathbb{N}$ sorozathoz rendeljük hozzá a kettes számrendszerbeli valós számot:
$$\Phi(c) = \sum_{n=1}^\infty \frac{c_n}{2^n} \in [0, 1].$$
Ez a leképezés szürjektív $[0, 1]$-re, és csak a diadikus törteknél nem injektív (ahol $1000\dots = 0111\dots$, megszámlálható sok pont).
A Bernstein–Cantor–Schröder-tétel alapján:
$$|\{0, 1\}^\mathbb{N}| \le |[0, 1]| \le |\{0, 1\}^\mathbb{N}| \implies |[0, 1]| = |\{0, 1\}^\mathbb{N}| = 2^{\aleph_0}.$$
Mivel a Gy59 feladat szerint $|[0, 1]| = |(0, 1)| = |\mathbb{R}|$, kapjuk:
$$|\mathcal{P}(\mathbb{N})| = 2^{\aleph_0} = |\mathbb{R}| = \mathfrak{c}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Cantor átlós módszere és a kontinuum-hipotézis.**

- **Átlós módszer ereje:** Az átló menti elemek módosítása garantálja, hogy az új elem a lista MINDEN egyes korábbi elemétől legalább egy koordinátában különbözik.
- **Kontinuum-hipotézis (CH):** Létezik-e számosság $\aleph_0$ és $2^{\aleph_0} = \mathfrak{c}$ között? Kurt Gödel (1938) és Paul Cohen (1963) bebizonyították, hogy a ZFC axiómarendszerből a kontinuum-hipotézis független (nem bizonyítható és nem cáfolható).
:::

# A 7. feladatlaphoz

## Gy63.1. feladat

Határozzuk meg az alábbi sorozatok torlódási pontjainak halmazát, valamint a $\liminf$ és $\limsup$ értéküket:

a) $a_n = (-1)^n \dfrac{2n - 1}{n + 2}$;

b) $b_n = \cos\left(\dfrac{n\pi}{3}\right) + \dfrac{1}{n}$.

**Megoldás.**

a) Bontsuk fel a sorozatot a $(-1)^n$ előjelváltása szerint páros és páratlan részsorozatokra:
- Ha $n$ páros ($n = 2k$):
  $$a_{2k} = (+1) \frac{4k - 1}{2k + 2} = \frac{4 - \frac{1}{k}}{2 + \frac{2}{k}} \to \frac{4}{2} = 2.$$
- Ha $n$ páratlan ($n = 2k - 1$):
  $$a_{2k-1} = (-1) \frac{2(2k - 1) - 1}{(2k - 1) + 2} = -\frac{4k - 3}{2k + 1} = -\frac{4 - \frac{3}{k}}{2 + \frac{1}{k}} \to -\frac{4}{2} = -2.$$
Mivel minden index vagy páros, vagy páratlan, a sorozat bármely részsorozatának határértéke e két érték valamelyike.
A torlódási pontok halmaza tehát kételemű:
$$S = \{-2, 2\}.$$
A $\liminf$ a legkisebb, a $\limsup$ a legnagyobb torlódási pont:
$$\liminf_{n\to\infty} a_n = -2, \qquad \limsup_{n\to\infty} a_n = 2.$$

b) A $\cos(n\pi/3)$ kifejezés $6$ szerint periodikus.
A lehetséges értékei $n \pmod 6$ szerint:
- $n \equiv 0 \pmod 6$: $\cos(0) = 1$
- $n \equiv 1, 5 \pmod 6$: $\cos(\pi/3) = \cos(5\pi/3) = \frac{1}{2}$
- $n \equiv 2, 4 \pmod 6$: $\cos(2\pi/3) = \cos(4\pi/3) = -\frac{1}{2}$
- $n \equiv 3 \pmod 6$: $\cos(\pi) = -1$
Mivel $\lim_{n\to\infty} \frac{1}{n} = 0$, a tagokhoz hozzáadott $\frac{1}{n}$ határértéke nulla, nem változtatja meg a torlódási pontokat.
A torlódási pontok halmaza a koszinusz négy lehetséges értéke:
$$S = \left\{-1, -\frac{1}{2}, \frac{1}{2}, 1\right\}.$$
A legkisebb és legnagyobb elemek:
$$\liminf_{n\to\infty} b_n = -1, \qquad \limsup_{n\to\infty} b_n = 1. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Torlódási pontok meghatározása periodikus részsorozatokkal.**

- **Definíció:**
  $$\limsup_{n\to\infty} a_n = \lim_{k\to\infty} \left(\sup_{n \ge k} a_n\right), \qquad \liminf_{n\to\infty} a_n = \lim_{k\to\infty} \left(\inf_{n \ge k} a_n\right).$$
- **Periodikus komponensek:** Ha a sorozat egy periodikus magból és egy nullsorozatból áll ($a_n = p_n + \varepsilon_n$), a torlódási pontok pontosan a periodikus mag lehetséges értékei.
:::

## Gy63.2. feladat

Számítsuk ki a $\liminf$ és $\limsup$ értékeket a kiterjesztett valós számegyenesen ($\overline{\mathbb{R}}$):

a) $c_n = \left(1 + (-1)^n\right) n$;

b) $d_n = \left(1 + \dfrac{(-1)^n}{n}\right)^n$.

**Megoldás.**

a) Vizsgáljuk meg a $c_n = (1 + (-1)^n)n$ tagjait páros és páratlan indexekre:
- Ha $n$ páratlan: $1 + (-1)^n = 1 - 1 = 0$, így:
  $$c_n = 0 \cdot n = 0 \quad \text{minden páratlan } n \text{-re}.$$
  A páratlan részsorozat konstans $0$, határértéke $0$.
- Ha $n$ páros: $1 + (-1)^n = 1 + 1 = 2$, így:
  $$c_n = 2n \to +\infty \quad \text{ha } n \to \infty.$$
A páros részsorozat tart $+\infty$-hez.
A torlódási pontok halmaza a kiterjesztett valós számegyenesen: $S = \{0, +\infty\}$.
Ennek minimuma és maximuma:
$$\liminf_{n\to\infty} c_n = 0, \qquad \limsup_{n\to\infty} c_n = +\infty.$$

b) Vizsgáljuk meg a $d_n$ sorozat két részsorozatát:
- Ha $n$ páros ($n = 2k$):
  $$d_{2k} = \left(1 + \frac{1}{2k}\right)^{2k} \to e^1 = e.$$
- Ha $n$ páratlan ($n = 2k - 1$):
  $$d_{2k-1} = \left(1 - \frac{1}{2k - 1}\right)^{2k - 1} \to e^{-1} = \frac{1}{e}.$$
Mivel a két részsorozat lefedi az összes indexet, a torlódási pontok halmaza pontosan:
$$S = \left\{\frac{1}{e}, e\right\}.$$
Mivel $e > 1 > 1/e$:
$$\liminf_{n\to\infty} d_n = \frac{1}{e}, \qquad \limsup_{n\to\infty} d_n = e. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Limsup a kiterjesztett valós számegyenesen és az e-alapú határértékek.**

- **Végtelen limsup:** Ha egy sorozat felülről nem korlátos, van olyan részsorozata, amely tart $+\infty$-hez, így $\limsup a_n = +\infty$.
- **Váltakozó kitevős határértékek:** Az $(1 + (-1)^n / n)^n$ sorozat a binomiális/Euler határértékek két alapvető pólusát ($e$ és $1/e$) egyesíti.
:::

## Gy64.1. feladat

Bizonyítsuk be részletesen az analízis alaptételét véges határértékre: egy tetszőleges $(a_n)$ valós számsorozatra
$$\lim_{n\to\infty} a_n = A \in \mathbb{R} \iff \liminf_{n\to\infty} a_n = \limsup_{n\to\infty} a_n = A.$$

**Megoldás.**

Jelölje $I_k = \inf_{n \ge k} a_n$ és $S_k = \sup_{n \ge k} a_n$.
Tudjuk, hogy $I_k \le a_k \le S_k$ minden $k \in \mathbb{N}$ esetén.
Továbbá $I_k$ monoton növő, $S_k$ monoton csökkenő, és definíció szerint:
$$\lim_{k\to\infty} I_k = \liminf_{n\to\infty} a_n, \qquad \lim_{k\to\infty} S_k = \limsup_{n\to\infty} a_n.$$

1. *Elégségesség ($\impliedby$):*
Tegyük fel, hogy $\lim_{k\to\infty} I_k = \liminf a_n = A$ és $\lim_{k\to\infty} S_k = \limsup a_n = A$.
Mivel minden $k \in \mathbb{N}$ esetén:
$$I_k \le a_k \le S_k,$$
és a bal, valamint a jobb oldali sorozat határértéke is a közös $A$ érték, a rendőrelv (csendőrelv) közvetlen alkalmazásával adódik, hogy:
$$\lim_{k\to\infty} a_k = A.$$

2. *Szükségesség ($\implies$):*
Tegyük fel, hogy $\lim_{n\to\infty} a_n = A \in \mathbb{R}$.
Legyen $\varepsilon > 0$ tetszőleges.
A határérték definíciója szerint létezik olyan $N_0 \in \mathbb{N}$ küszöbindex, hogy minden $n > N_0$ esetén:
$$A - \varepsilon < a_n < A + \varepsilon.$$
Rögzítsünk egy tetszőleges $k > N_0$ indexet. Ekkor minden $n \ge k > N_0$ esetén az egyenlőtlenség fennáll.
- Mivel minden $n \ge k$ esetén $a_n \le A + \varepsilon$, az $A + \varepsilon$ szám felső korlátja az $\{a_n : n \ge k\}$ halmaznak, így a legkisebb felső korlátra is:
  $$S_k = \sup_{n \ge k} a_n \le A + \varepsilon.$$
- Hasonlóan, mivel minden $n \ge k$ esetén $a_n \ge A - \varepsilon$, az $A - \varepsilon$ szám alsó korlát, így a legnagyobb alsó korlátra is:
  $$I_k = \inf_{n \ge k} a_n \ge A - \varepsilon.$$
Összefoglalva minden $k > N_0$ esetén:
$$A - \varepsilon \le I_k \le S_k \le A + \varepsilon.$$
Határátmenetet képezve $k \to \infty$ esetén:
$$A - \varepsilon \le \liminf_{n\to\infty} a_n \le \limsup_{n\to\infty} a_n \le A + \varepsilon.$$
Mivel ez az egyenlőtlenség MINDEN $\varepsilon > 0$-ra fennáll, a közrefogás miatt csak:
$$\liminf_{n\to\infty} a_n = \limsup_{n\to\infty} a_n = A$$
lehetséges. Ezzel az ekvivalenciát mindkét irányban bebizonyítottuk. $\blacksquare$

::: elmelet
**Elméleti háttér — A konvergencia és a liminf/limsup egybeesése.**

- **A tétel jelentősége:** Megmutatja, hogy a határérték létezése nem más, mint az alsó és felső aszimptotikus burkolók egybeesése.
- **Részsorozatos jellemzés:** Ezzel ekvivalens állítás: egy sorozat pontosan akkor konvergens, ha korlátos és pontosan egyetlen torlódási pontja van.
:::

## Gy64.2. feladat

Bizonyítsuk be a tételt végtelen határértékre: egy tetszőleges $(a_n)$ számsorozatra
$$\lim_{n\to\infty} a_n = -\infty \iff \limsup_{n\to\infty} a_n = -\infty.$$

**Megoldás.**

1. *$\implies$ irány:*
Tegyük fel, hogy $\lim_{n\to\infty} a_n = -\infty$.
Legyen $K \in \mathbb{R}$ tetszőleges valós szám.
A definíció szerint létezik olyan $N_0 \in \mathbb{N}$ küszöbindex, hogy minden $n > N_0$ esetén:
$$a_n < K.$$
Rögzítsünk egy $k > N_0$ indexet. Ekkor az $\{a_n : n \ge k\}$ halmaz minden eleme kisebb $K$-nál, így $K$ felső korlátja ennek a halmaznak:
$$S_k = \sup_{n \ge k} a_n \le K.$$
Mivel $S_k$ monoton csökkenő sorozat és minden $k > N_0$-ra $S_k \le K$, a határértéke:
$$\lim_{k\to\infty} S_k \le K.$$
Mivel $K \in \mathbb{R}$ tetszőlegesen kicsi (negatív) szám lehetett, ez azt jelenti, hogy:
$$\limsup_{n\to\infty} a_n = \lim_{k\to\infty} S_k = -\infty.$$

2. *$\impliedby$ irány:*
Tegyük fel, hogy $\limsup_{n\to\infty} a_n = -\infty$.
Mivel $\limsup a_n = \lim_{k\to\infty} S_k = -\infty$, tetszőleges $K \in \mathbb{R}$ esetén létezik olyan $N_0 \in \mathbb{N}$ index, hogy:
$$S_{N_0 + 1} = \sup_{n \ge N_0 + 1} a_n < K.$$
A szuprémum definíciója szerint ha a szuprémum kisebb $K$-nál, akkor a halmaz MINDEN eleme szigorúan kisebb $K$-nál:
$$a_n \le S_{N_0+1} < K \quad \text{minden } n \ge N_0 + 1 \text{ esetén}.$$
Tehát minden $n > N_0$-ra $a_n < K$.
Ez pontosan a $\lim_{n\to\infty} a_n = -\infty$ definíciója. $\blacksquare$

::: elmelet
**Elméleti háttér — Végtelen limsup és globális lecsúszás.**

- **Miért elég a limsup $-\infty$-hez?** Mivel mindig $\liminf a_n \le \limsup a_n$, ha már a nagyobbik ($\limsup$) is $-\infty$, akkor a kisebbik automatikusan $\liminf a_n = -\infty$. Ezért $-\infty$-be tartáshoz elegendő csupán a $\limsup$-ot vizsgálni (duálisan $+\infty$-be tartáshoz elég $\liminf a_n = +\infty$).
:::

## Gy65.1. feladat

Legyen $(a_n)$ felülről korlátos valós számsorozat, és jelölje $S = \limsup_{n\to\infty} a_n \in \mathbb{R}$.

a) Bizonyítsuk be, hogy $S$ torlódási pontja az $(a_n)$ sorozatnak (azaz létezik olyan $(a_{n_k})$ részsorozat, amelyre $\lim_{k\to\infty} a_{n_k} = S$)!

b) Igazoljuk, hogy semelyik $S$-nél szigorúan nagyobb valós szám nem lehet torlódási pontja a sorozatnak!

**Megoldás.**

a) Konstruáljuk meg a részsorozatot rekurzívan:
Mivel $S = \lim_{k\to\infty} S_k$, ahol $S_k = \sup_{n \ge k} a_n$, ezért a szuprémum tulajdonsága miatt minden $k$-ra és minden $\varepsilon > 0$-ra létezik olyan $n \ge k$, amelyre $a_n > S_k - \varepsilon$.
- *1. Lépés ($k = 1$):* Válasszunk $\varepsilon_1 = 1$-et. Létezik $n_1 \ge 1$, hogy $|a_{n_1} - S| < 1$.
- *2. Indukciós lépés:* Tegyük fel, hogy $n_1 < n_2 < \dots < n_{k-1}$ indexeket már kiválasztottuk.
  Válasszunk $\varepsilon_k = \frac{1}{k}$-t.
  Mivel $S = \inf_{m \ge 1} S_m$, létezik olyan $m > n_{k-1}$, hogy $S \le S_m < S + \frac{1}{k}$.
  A szuprémum definíciója szerint létezik olyan $n_k \ge m > n_{k-1}$ index, amelyre:
  $$S - \frac{1}{k} < a_{n_k} \le S_m < S + \frac{1}{k}.$$
  Így:
  $$|a_{n_k} - S| < \frac{1}{k}.$$
A konstrukció biztosítja, hogy $n_1 < n_2 < n_3 < \dots$ szigorúan növekvő indexsorozat, és minden $k \in \mathbb{N}$ esetén:
$$|a_{n_k} - S| < \frac{1}{k}.$$
Mivel $\lim_{k\to\infty} \frac{1}{k} = 0$, a rendőrelv alapján:
$$\lim_{k\to\infty} a_{n_k} = S.$$
Tehát $S$ valóban torlódási pontja a sorozatnak. $\blacksquare$

b) Legyen $S' > S$ egy tetszőleges valós szám. Megmutatjuk, hogy $S'$ nem lehet torlódási pont.
Legyen $\varepsilon = \frac{S' - S}{2} > 0$.
Mivel $S_k \to S$, létezik olyan $N_0 \in \mathbb{N}$, amelyre minden $k > N_0$ esetén:
$$S_k < S + \varepsilon.$$
Ez azt jelenti, hogy az $N_0$ index utáni összes tagra:
$$a_n \le S_{N_0+1} < S + \varepsilon = S' - \varepsilon \quad \text{minden } n > N_0 \text{ esetén}.$$
Ez mutatja, hogy az $S'$ pont $\varepsilon$ sugarú környezetébe ($(S' - \varepsilon, S' + \varepsilon)$) legfeljebb csak az első $N_0$ darab tag eshet bele (véges sok pont)!
Mivel egy torlódási pont bármely környezetének végtelen sok sorozattagot kell tartalmaznia, $S'$ nem lehet torlódási pont. $\blacksquare$

::: elmelet
**Elméleti háttér — Limsup mint a maximális torlódási pont.**

- **Kettős definíció ekvivalenciája:**
  1. Analitikus definíció: $S = \lim_{k\to\infty} \sup_{n \ge k} a_n$.
  2. Részsorozatos definíció: $S = \max \{x \in \overline{\mathbb{R}} : x \text{ torlódási pontja } (a_n)\text{-nek}\}$.
  A tétel igazolja, hogy a két fogalom tökéletesen egybeesik.
:::

## Gy65.2. feladat

Legyenek $(a_n)$ és $(b_n)$ korlátos valós számsorozatok.

a) Bizonyítsuk be az alábbi szubadditivitási egyenlőtlenséget:
$$\limsup_{n\to\infty} (a_n + b_n) \le \limsup_{n\to\infty} a_n + \limsup_{n\to\infty} b_n.$$

b) Mutassunk példát olyan korlátos sorozatokra, ahol a fenti egyenlőtlenségben szigorú reláció ($<$) áll fenn!

**Megoldás.**

a) Jelölje minden $k \in \mathbb{N}$ esetén:
$$S_k(a) = \sup_{n \ge k} a_n, \quad S_k(b) = \sup_{n \ge k} b_n, \quad S_k(a + b) = \sup_{n \ge k} (a_n + b_n).$$
Tetszőleges $n \ge k$ index esetén a szuprémumok definíciója miatt:
$$a_n \le S_k(a) \qquad \text{és} \qquad b_n \le S_k(b).$$
A két egyenlőtlenséget összeadva:
$$a_n + b_n \le S_k(a) + S_k(b) \quad \text{minden } n \ge k \text{ esetén}.$$
Ez azt jelenti, hogy az $S_k(a) + S_k(b)$ szám felső korlátja az $\{a_n + b_n : n \ge k\}$ halmaznak.
Mivel $S_k(a + b)$ a legkisebb felső korlát, ezért:
$$S_k(a + b) \le S_k(a) + S_k(b) \quad \text{minden } k \in \mathbb{N} \text{ esetén}.$$
Mivel mindkét oldal konvergens monoton sorozatok összege, vegyük a határátmenetet $k \to \infty$ esetén:
$$\lim_{k\to\infty} S_k(a + b) \le \lim_{k\to\infty} S_k(a) + \lim_{k\to\infty} S_k(b).$$
A definíciók behelyettesítésével pontosan a kívánt egyenlőtlenséget kapjuk:
$$\limsup_{n\to\infty} (a_n + b_n) \le \limsup_{n\to\infty} a_n + \limsup_{n\to\infty} b_n. \quad \blacksquare$$

b) *Példa szigorú egyenlőtlenségre:*
Legyen $a_n = (-1)^n$ és $b_n = (-1)^{n+1} = -(-1)^n$.
Ekkor:
- $a_n$ torlódási pontjai $\{-1, 1\}$, így $\limsup a_n = 1$.
- $b_n$ torlódási pontjai $\{-1, 1\}$, így $\limsup b_n = 1$.
A jobb oldal összege:
$$\limsup a_n + \limsup b_n = 1 + 1 = 2.$$
Ugyanakkor a két sorozat összege minden $n \in \mathbb{N}$ esetén:
$$a_n + b_n = (-1)^n + (-(-1)^n) = 0.$$
Így az összegsorozat konstans $0$, amelynek limsupja:
$$\limsup_{n\to\infty} (a_n + b_n) = 0.$$
Mivel $0 < 2$, szigorú egyenlőtlenség áll fenn! $\blacksquare$

::: elmelet
**Elméleti háttér — A limsup szubadditivitása és kioltási effektusok.**

- **Szubadditivitás:** A szuprémumhoz hasonlóan $\limsup(a_n + b_n) \le \limsup a_n + \limsup b_n$.
- **Mikor van egyenlőség?** Ha legalább az egyik sorozat KONVERGENS, akkor egyenlőség áll fenn: $\limsup(a_n + c_n) = \limsup a_n + \lim c_n$. Szigorú egyenlőtlenség csak akkor léphet fel, ha a két sorozat csúcsai „elcsúsznak” egymáshoz képest (ellenfázisú oszcilláció).
:::

## Gy66.1. feladat

Bizonyítsuk be részletesen a $\limsup_{n\to\infty} a_n = A \in \mathbb{R}$ alábbi ekvivalens környezetes jellemzését:

(i) Minden $\varepsilon > 0$ esetén az $a_n > A + \varepsilon$ egyenlőtlenség csak véges sok $n \in \mathbb{N}$ indexre teljesül;

(ii) Minden $\varepsilon > 0$ esetén az $a_n > A - \varepsilon$ egyenlőtlenség végtelen sok $n \in \mathbb{N}$ indexre teljesül.

**Megoldás.**

1. *$\limsup a_n = A \implies$ (i) és (ii):*
Tudjuk, hogy $S_k = \sup_{n \ge k} a_n$ monoton csökken és $\lim_{k\to\infty} S_k = A$.
- *(i) igazolása:* Legyen $\varepsilon > 0$. Mivel $S_k \to A$, létezik $N_0 \in \mathbb{N}$, hogy $S_{N_0+1} < A + \varepsilon$.
  Ez azt jelenti, hogy $\sup_{n \ge N_0+1} a_n < A + \varepsilon \implies a_n < A + \varepsilon$ minden $n > N_0$-ra.
  Így $a_n > A + \varepsilon$ legfeljebb az $\{1, 2, \dots, N_0\}$ indexekre fordulhat elő, ami véges halmaz. Tehát (i) teljesül.
- *(ii) igazolása:* Legyen $\varepsilon > 0$. Mivel minden $k$-ra $S_k \ge A > A - \varepsilon$, a szuprémum definíciója szerint minden $k \in \mathbb{N}$-hez létezik olyan $n \ge k$, amelyre $a_n > A - \varepsilon$.
  Mivel ez tetszőlegesen nagy $k$-ra igaz, végtelen sok ilyen index létezik. Tehát (ii) teljesül.

2. *(i) és (ii) $\implies \limsup a_n = A$:*
Tegyük fel, hogy (i) és (ii) teljesül minden $\varepsilon > 0$-ra.
- Az (i) feltétel szerint tetszőleges $\varepsilon > 0$-hoz van olyan $N_0$, hogy minden $n > N_0$-ra $a_n \le A + \varepsilon$.
  Ekkor minden $k > N_0$ esetén $S_k = \sup_{n \ge k} a_n \le A + \varepsilon$.
  Határátmenettel $k \to \infty$:
  $$\limsup_{n\to\infty} a_n \le A + \varepsilon \quad \forall \varepsilon > 0 \implies \limsup_{n\to\infty} a_n \le A.$$
- A (ii) feltétel szerint minden $\varepsilon > 0$-ra végtelen sok tag nagyobb $A - \varepsilon$-nál.
  Ezért semelyik $k \in \mathbb{N}$ esetén nem lehet $S_k \le A - \varepsilon$, azaz minden $k$-ra $S_k \ge A - \varepsilon$.
  Határátmenettel $k \to \infty$:
  $$\limsup_{n\to\infty} a_n \ge A - \varepsilon \quad \forall \varepsilon > 0 \implies \limsup_{n\to\infty} a_n \ge A.$$
A két egyenlőtlenségből adódik, hogy $\limsup_{n\to\infty} a_n = A$. $\blacksquare$

::: elmelet
**Elméleti háttér — A limsup és liminf kvantitatív környezetes jellemzése.**

- **Szemléletes kép:**
  - $A$ felett már „elfogynak” a tagok: $A + \varepsilon$ fölé csak véges sok tag kószál ki.
  - $A$ alatt még „sűrűsödnek” a tagok: $A - \varepsilon$ fölött végtelen sok tag tornyosul.
- **Dimenzió a vizsgán:** Gyakori feladat egy ismeretlen sorozat limsupjának igazolása ezzel a két tulajdonsággal (véges sok fent, végtelen sok lent).
:::

## Gy66.2. feladat

Fogalmazzuk meg és bizonyítsuk be a Gy66.1 feladat duális állítását a $\liminf_{n\to\infty} a_n = A \in \mathbb{R}$ határértékre!

**Megoldás.**

**Tétel (A liminf környezetes jellemzése):**
Egy korlátos valós számsorozatra $\liminf_{n\to\infty} a_n = A \in \mathbb{R}$ pontosan akkor teljesül, ha minden $\varepsilon > 0$ esetén:
(i) Az $a_n < A - \varepsilon$ egyenlőtlenség csak véges sok $n \in \mathbb{N}$ indexre áll fenn;
(ii) Az $a_n < A + \varepsilon$ egyenlőtlenség végtelen sok $n \in \mathbb{N}$ indexre áll fenn.

*Bizonyítás:*
Alkalmazzuk a tükrözési elvet: tekintsük a $b_n = -a_n$ sorozatot.
Tudjuk, hogy $\liminf a_n = A \iff \limsup b_n = -A$.
A Gy66.1 tétel szerint $\limsup b_n = -A$ pontosan akkor teljesül, ha minden $\varepsilon > 0$-ra:
1. $b_n > -A + \varepsilon$ csak véges sok $n$-re teljesül.
   Behelyettesítve $b_n = -a_n$-et:
   $$-a_n > -A + \varepsilon \iff a_n < A - \varepsilon.$$
   Tehát $a_n < A - \varepsilon$ csak véges sok $n$-re teljesül. Ez éppen az (i) feltétel!
2. $b_n > -A - \varepsilon$ végtelen sok $n$-re teljesül.
   Behelyettesítve $b_n = -a_n$-et:
   $$-a_n > -A - \varepsilon \iff a_n < A + \varepsilon.$$
   Tehát $a_n < A + \varepsilon$ végtelen sok $n$-re teljesül. Ez éppen a (ii) feltétel!
Mivel az ekvivalencia a tükrözött sorozatra fennáll, a tétel az eredeti $(a_n)$ sorozatra is maradéktalanul igazolt. $\blacksquare$

::: elmelet
**Elméleti háttér — A liminf duális jellemzése.**

- **Tükrözés ereje:** Nem szükséges a bizonyítás lépéseit elölről kezdeni: az $a_n \mapsto -a_n$ transzformáció automatikusan megfordítja a relációkat és felcseréli a szuprémumot az infimummal.
:::

## Gy67.1. feladat

Számítsuk ki az alábbi végtelen sorok összegét:

a) $\displaystyle\sum_{n=1}^\infty \frac{5 \cdot 2^{n+1}}{3^n}$;

b) $\displaystyle\sum_{n=1}^\infty \frac{2}{n(n+1)}$;

c) $\displaystyle\sum_{n=0}^\infty \frac{(-1)^n + 2^n}{5^n}$.

**Megoldás.**

a) Alakítsuk át az általános tagot mértani sor alakra:
$$\frac{5 \cdot 2^{n+1}}{3^n} = \frac{5 \cdot 2 \cdot 2^n}{3^n} = 10 \cdot \left(\frac{2}{3}\right)^n.$$
A sor egy mértani sor, amelynek kvóciense $q = \frac{2}{3}$.
Mivel $|q| = \frac{2}{3} < 1$, a sor konvergens.
Az első tag ($n = 1$ esetén): $a_1 = 10 \cdot \frac{2}{3} = \frac{20}{3}$.
A mértani sor összegképlete szerint:
$$\sum_{n=1}^\infty \frac{5 \cdot 2^{n+1}}{3^n} = \frac{a_1}{1 - q} = \frac{\frac{20}{3}}{1 - \frac{2}{3}} = \frac{\frac{20}{3}}{\frac{1}{3}} = 20.$$

b) Bontsuk fel a tagokat parciális törtekre:
$$\frac{2}{n(n+1)} = 2 \left(\frac{1}{n} - \frac{1}{n+1}\right).$$
Írjuk fel az $N$-edik részletösszeget:
$$S_N = \sum_{n=1}^N 2 \left(\frac{1}{n} - \frac{1}{n+1}\right) = 2 \left[\left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{N} - \frac{1}{N+1}\right)\right].$$
A belső tagok kiesnek (teleszkópikus összeg):
$$S_N = 2 \left(1 - \frac{1}{N+1}\right).$$
A sor összege a részletösszegek határértéke:
$$\sum_{n=1}^\infty \frac{2}{n(n+1)} = \lim_{N\to\infty} S_N = \lim_{N\to\infty} 2 \left(1 - \frac{1}{N+1}\right) = 2(1 - 0) = 2.$$

c) Bontsuk szét a sort két konvergens mértani sor összegére:
$$\sum_{n=0}^\infty \frac{(-1)^n + 2^n}{5^n} = \sum_{n=0}^\infty \left(-\frac{1}{5}\right)^n + \sum_{n=0}^\infty \left(\frac{2}{5}\right)^n.$$
Mindkét sor mértani sor $n = 0$-tól indulva, és kvócienseik abszolút értéke kisebb $1$-nél ($|-1/5| < 1$, $|2/5| < 1$).
- Első sor: $a = 1, q = -1/5$:
  $$\sum_{n=0}^\infty \left(-\frac{1}{5}\right)^n = \frac{1}{1 - (-1/5)} = \frac{1}{6/5} = \frac{5}{6}.$$
- Második sor: $a = 1, q = 2/5$:
  $$\sum_{n=0}^\infty \left(\frac{2}{5}\right)^n = \frac{1}{1 - 2/5} = \frac{1}{3/5} = \frac{5}{3} = \frac{10}{6}.$$
A két összeg összeadva:
$$\sum_{n=0}^\infty \frac{(-1)^n + 2^n}{5^n} = \frac{5}{6} + \frac{10}{6} = \frac{15}{6} = \frac{5}{2}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Mértani és teleszkópikus sorok összegzése.**

- **Végtelen sor összege:** Definíció szerint a részletösszegek sorozatának határértéke: $\sum_{n=1}^\infty a_n = \lim_{N\to\infty} \sum_{n=1}^N a_n$.
- **Mértani sor:** $\sum_{n=0}^\infty q^n = \frac{1}{1-q}$ ha $|q| < 1$. Ha $n = 1$-től indul: $\frac{q}{1-q}$.
- **Teleszkópikus sor:** $a_n = b_n - b_{n+1}$ alakú tagok összege azonnal adja $S_N = b_1 - b_{N+1} \to b_1 - \lim b_N$.
:::

## Gy67.2. feladat

Határozzuk meg az alábbi sorok összegét:

a) $\displaystyle\sum_{n=1}^\infty \frac{1}{(2n - 1)(2n + 1)}$;

b) $\displaystyle\sum_{n=2}^\infty \ln\left(1 - \frac{1}{n^2}\right)$.

**Megoldás.**

a) Bontsuk parciális törtekre az általános tagot:
$$\frac{1}{(2n - 1)(2n + 1)} = \frac{A}{2n - 1} + \frac{B}{2n + 1} = \frac{A(2n + 1) + B(2n - 1)}{4n^2 - 1}.$$
A számláló azonossága: $(2A + 2B)n + (A - B) = 1 \implies A + B = 0$ és $A - B = 1$, amiből $A = 1/2, B = -1/2$.
Így:
$$\frac{1}{(2n - 1)(2n + 1)} = \frac{1}{2} \left(\frac{1}{2n - 1} - \frac{1}{2n + 1}\right).$$
Írjuk fel az $N$-edik részletösszeget:
$$S_N = \frac{1}{2} \sum_{n=1}^N \left(\frac{1}{2n - 1} - \frac{1}{2n + 1}\right) = \frac{1}{2} \left[\left(1 - \frac{1}{3}\right) + \left(\frac{1}{3} - \frac{1}{5}\right) + \dots + \left(\frac{1}{2N - 1} - \frac{1}{2N + 1}\right)\right].$$
A belső tagok kiejtik egymást:
$$S_N = \frac{1}{2} \left(1 - \frac{1}{2N + 1}\right).$$
A határértéket véve:
$$\sum_{n=1}^\infty \frac{1}{(2n - 1)(2n + 1)} = \lim_{N\to\infty} S_N = \frac{1}{2} (1 - 0) = \frac{1}{2}.$$

b) Alakítsuk át a logaritmus argumentumát szorzattá:
$$1 - \frac{1}{n^2} = \frac{n^2 - 1}{n^2} = \frac{(n - 1)(n + 1)}{n \cdot n} = \frac{n - 1}{n} \cdot \frac{n + 1}{n}.$$
A logaritmus tulajdonságai szerint:
$$\ln\left(1 - \frac{1}{n^2}\right) = \ln\left(\frac{n - 1}{n}\right) + \ln\left(\frac{n + 1}{n}\right) = \big(\ln(n - 1) - \ln n\big) - \big(\ln n - \ln(n + 1)\big).$$
Írjuk fel az $N$-edik részletösszeget $n = 2$-től $N$-ig:
$$S_N = \sum_{n=2}^N \ln\left(\frac{(n - 1)(n + 1)}{n^2}\right) = \ln\left(\prod_{n=2}^N \frac{(n - 1)(n + 1)}{n^2}\right).$$
Bontsuk ki a véges szorzatot:
$$\prod_{n=2}^N \frac{n - 1}{n} \cdot \frac{n + 1}{n} = \left(\frac{1}{2} \cdot \frac{3}{2}\right) \cdot \left(\frac{2}{3} \cdot \frac{4}{3}\right) \cdot \left(\frac{3}{4} \cdot \frac{5}{4}\right) \cdots \left(\frac{N - 1}{N} \cdot \frac{N + 1}{N}\right).$$
Vegyük észre a teleszkópikus egyszerűsödést: minden tag jobb oldali tényezője kiejti a rákövetkező bal oldali tényezőjét ($\frac{3}{2} \cdot \frac{2}{3} = 1$, $\frac{4}{3} \cdot \frac{3}{4} = 1$, stb.).
Csak a legelső tört első tényezője és a legutolsó tört második tényezője marad meg:
$$\prod_{n=2}^N \frac{n^2 - 1}{n^2} = \frac{1}{2} \cdot \frac{N + 1}{N}.$$
Így a részletösszeg:
$$S_N = \ln\left(\frac{1}{2} \cdot \frac{N + 1}{N}\right).$$
Mivel $\lim_{N\to\infty} \frac{N + 1}{N} = 1$, és a logaritmusfüggvény folytonos:
$$\lim_{N\to\infty} S_N = \ln\left(\frac{1}{2} \cdot 1\right) = \ln\left(\frac{1}{2}\right) = -\ln 2.$$
A sor összege tehát: **$-\ln 2$**. $\blacksquare$

::: elmelet
**Elméleti háttér — Teleszkópikus szorzatok és logaritmusos sorok.**

- **Végtelen szorzatok és sorok:** A $\sum \ln a_n = \ln (\prod a_n)$ azonosság közvetlen hidat képez a végtelen sorok és a végtelen szorzatok elmélete között.
- **Megfordíthatóság:** A teleszkópikus kiesés mind összeadásra ($a_{n+1} - a_n$), mind szorzásra ($b_{n+1}/b_n$) zárt formulát biztosít a részletösszegekre.
:::

## Gy68.1. feladat

a) Bizonyítsuk be a végtelen sorok konvergenciájának szükséges feltételét: ha a $\sum_{n=1}^\infty a_n$ sor konvergens, akkor $\lim_{n\to\infty} a_n = 0$!

b) Mutassuk meg a harmonikus sor $\sum_{n=1}^\infty \frac{1}{n}$ példáján, hogy az $a_n \to 0$ feltétel NEM elégséges a konvergenciához!

**Megoldás.**

a) Jelölje $S_n = \sum_{k=1}^n a_k$ a sor $n$-edik részletösszegét.
A sor konvergenciája a definíció szerint azt jelenti, hogy az $(S_n)$ részletösszeg-sorozat konvergens:
$$\lim_{n\to\infty} S_n = S \in \mathbb{R}.$$
Mivel az index egyel való eltolása nem változtatja meg a konvergenciát és a határértéket:
$$\lim_{n\to\infty} S_{n-1} = S.$$
Fejezzük ki a sorozat $n$-edik tagját a szomszédos részletösszegek különbségeként ($n \ge 2$ esetén):
$$a_n = S_n - S_{n-1}.$$
Alkalmazzuk a határértékek különbség-szabályát:
$$\lim_{n\to\infty} a_n = \lim_{n\to\infty} (S_n - S_{n-1}) = \lim_{n\to\infty} S_n - \lim_{n\to\infty} S_{n-1} = S - S = 0.$$
Tehát a tagok szükségképpen nullához tartanak. $\blacksquare$

b) Tekintsük a harmonikus sort:
$$\sum_{n=1}^\infty \frac{1}{n}.$$
Itt az általános tag: $a_n = \frac{1}{n}$.
Világos, hogy:
$$\lim_{n\to\infty} a_n = \lim_{n\to\infty} \frac{1}{n} = 0,$$
tehát a szükséges feltétel maradéktalanul teljesül.
Ennek ellenére a sor DIVERGENS: a Gy40.2 feladatban Oresme csoportosítási módszerével igazoltuk, hogy részletösszegeire $S_{2^k} > 1 + \frac{k}{2} \to +\infty$, így a sor összege:
$$\sum_{n=1}^\infty \frac{1}{n} = +\infty.$$
Ez bizonyítja, hogy az $a_n \to 0$ feltétel nem elégséges a sor konvergenciájához. $\blacksquare$

::: elmelet
**Elméleti háttér — A sorok konvergenciájának szükséges feltétele és tipikus hibák.**

- **Végzetes tévedés:** „$a_n \to 0 \implies \sum a_n$ konvergens”. Ez a leggyakoribb analízisbeli hiba! A tagok nullához tartása csak belépőjegy a konvergenciához, a nullához tartás SEBESSÉGE a döntő (pl. $1/n$ túl lassú, $1/n^2$ már elég gyors).
- **Divergencia-teszt:** Ha $a_n \not\to 0$, akkor a sor BIZTOSAN DIVERGENS! Ez a legegyszerűbb módszer divergencia kimutatására (pl. $\sum \frac{n}{2n+1}$ azonnal divergens, mert tagjai tartanak $1/2 \ne 0$-hoz).
:::

## Gy68.2. feladat

a) Mondjuk ki és bizonyítsuk be a Cauchy-féle konvergenciakritériumot végtelen számsorokra!

b) Alkalmazzuk a kritériumot annak igazolására, hogy a $\displaystyle\sum_{n=1}^\infty \frac{\cos(n^2)}{n^2}$ sor konvergens!

**Megoldás.**

a) **Tétel (Cauchy-kritérium sorokra):**
A $\sum_{n=1}^\infty a_n$ valós számsor pontosan akkor konvergens, ha:
$$(\forall \varepsilon > 0)(\exists N_0 \in \mathbb{N})(\forall m > n > N_0)\left(\left|\sum_{k=n+1}^m a_k\right| < \varepsilon\right).$$

*Bizonyítás:*
A sor definíció szerint pontosan akkor konvergens, ha az $S_n = \sum_{k=1}^n a_k$ részletösszegek sorozata konvergens $\mathbb{R}$-ben.
A valós számok teljessége miatt egy valós sorozat pontosan akkor konvergens, ha Cauchy-sorozat:
$$|S_m - S_n| < \varepsilon \quad \forall m > n > N_0.$$
Mivel $m > n$ esetén:
$$S_m - S_n = \sum_{k=1}^m a_k - \sum_{k=1}^n a_k = \sum_{k=n+1}^m a_k,$$
ez pontosan a tételbeli állítást adja. $\blacksquare$

b) Tekintsük a $\sum_{k=n+1}^m \frac{\cos(k^2)}{k^2}$ szeletet ($m > n$).
Alkalmazzuk a háromszög-egyenlőtlenséget és a $|\cos x| \le 1$ becslést:
$$\left|\sum_{k=n+1}^m \frac{\cos(k^2)}{k^2}\right| \le \sum_{k=n+1}^m \frac{|\cos(k^2)|}{k^2} \le \sum_{k=n+1}^m \frac{1}{k^2}.$$
Mivel $k \ge 2$ esetén $\frac{1}{k^2} < \frac{1}{k(k-1)} = \frac{1}{k-1} - \frac{1}{k}$, a teleszkópikus összeggel:
$$\sum_{k=n+1}^m \frac{1}{k^2} < \sum_{k=n+1}^m \left(\frac{1}{k-1} - \frac{1}{k}\right) = \frac{1}{n} - \frac{1}{m} < \frac{1}{n}.$$
Legyen $\varepsilon > 0$ tetszőleges. Válasszuk az $N_0 = \lfloor 1/\varepsilon \rfloor$ küszöbindexet.
Ekkor minden $m > n > N_0$ esetén:
$$\left|\sum_{k=n+1}^m \frac{\cos(k^2)}{k^2}\right| < \frac{1}{n} < \frac{1}{N_0} \le \varepsilon.$$
A Cauchy-kritérium tehát teljesül, ami bizonyítja, hogy a sor konvergens (sőt abszolút konvergens). $\blacksquare$

::: elmelet
**Elméleti háttér — A Cauchy-kritérium és az abszolút konvergencia.**

- **Abszolút konvergencia tétele:** Ha $\sum |a_n|$ konvergens, akkor $\sum a_n$ is konvergens, mert $\left|\sum_{k=n+1}^m a_k\right| \le \sum_{k=n+1}^m |a_k| < \varepsilon$.
- **Majoráns-kritérium:** Ha $|a_n| \le c_n$ és $\sum c_n$ konvergens, akkor $\sum a_n$ is abszolút konvergens. A fenti feladatban a majoráns $c_n = 1/n^2$.
:::

## Gy69.1. feladat

Írjuk le analitikus formulákkal az alábbi függvényeket az adott intervallumokon, és határozzuk meg szakadási pontjaikat:

a) $f(x) = \{x\} = x - [x]$ a $[-2, 2]$ intervallumon;

b) $g(x) = [x] - [-x]$ az $\mathbb{R}$ halmazon;

c) $h(x) = x \left[\dfrac{1}{x}\right]$ a $(0, 1]$ intervallumon.

**Megoldás.**

a) Az egészrész definíciója szerint $[x] = k$, ha $x \in [k, k+1)$ ($k \in \mathbb{Z}$).
Így a törtrész függvény szakaszosan lineáris:
$$f(x) = \{x\} = x - k, \quad \text{ha } x \in [k, k+1).$$
A $[-2, 2]$ intervallumon:
$$f(x) = \begin{cases}
x + 2, & \text{ha } x \in [-2, -1), \\
x + 1, & \text{ha } x \in [-1, 0), \\
x, & \text{ha } x \in [0, 1), \\
x - 1, & \text{ha } x \in [1, 2), \\
0, & \text{ha } x = 2 \quad (\text{mert } [2] = 2).
\end{cases}$$
A függvény minden egész pontban ($x \in \{-1, 0, 1, 2\}$) szakad: jobbról folytonos, balról $1$-es ugrása van.

b) Vizsgáljuk meg $[-x]$ értékét:
- Ha $x = k \in \mathbb{Z}$ egész szám: $[k] = k$ és $[-k] = -k$, így:
  $$g(k) = k - (-k) = 2k.$$
- Ha $x \notin \mathbb{Z}$ nem egész szám: ekkor létezik $k \in \mathbb{Z}$, hogy $k < x < k + 1$.
  Ekkor $[x] = k$, míg $-k - 1 < -x < -k$, amiből $[-x] = -k - 1$.
  Ezért:
  $$g(x) = [x] - [-x] = k - (-k - 1) = 2k + 1 = 2[x] + 1.$$
A függvény szakadási pontjai pontosan az egész számok halmaza: $\mathbb{Z}$.

c) A $(0, 1]$ intervallumon $1/x \ge 1$.
Az egészrész $[1/x] = k \in \mathbb{N}$ pontosan akkor teljesül, ha:
$$k \le \frac{1}{x} < k + 1 \iff \frac{1}{k + 1} < x \le \frac{1}{k}.$$
Ezen a félig nyílt intervallumon a függvény lineáris szakasz:
$$h(x) = x \cdot k = kx, \quad \text{ha } x \in \left(\frac{1}{k+1}, \frac{1}{k}\right].$$
A szakadási pontok a reciprok egész pontok: $x = \frac{1}{k}$ ($k \ge 2$ egész).
Itt bal oldali határérték: $\lim_{x \to (1/k)-} h(x) = \frac{k}{k} = 1$, míg a felvett érték $h(1/k) = k \cdot \frac{1}{k} = 1$, de jobb oldali határérték: $\lim_{x \to (1/k)+} h(x) = (k - 1) \cdot \frac{1}{k} = 1 - \frac{1}{k} < 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Egészrész, törtrész és lépcsős függvények.**

- **Egészrész tulajdonsága negatív számokra:** $[-x] = -[x] - 1$ minden $x \notin \mathbb{Z}$ esetén. Ebből $[x] + [-x] = 0$ ha $x \in \mathbb{Z}$, és $-1$ ha $x \notin \mathbb{Z}$.
- **Fűrészfog- és fésűfüggvények:** Az $\{x\}$ periodikus $1$ szerint. Az $x[1/x]$ függvény végtelen sok egyre sűrűsödő szakadással rendelkezik a $0$ közelében.
:::

## Gy69.2. feladat

a) Határozzuk meg az $f(x) = \left\{\dfrac{1}{x}\right\}$ függvény szakadási pontjainak halmazát a $(0, 1]$ intervallumon!

b) Számítsuk ki a rendőrelv segítségével a $\lim_{x\to 0+} x \left[\dfrac{1}{x}\right]$ határértéket!

**Megoldás.**

a) A törtrész definíciója szerint:
$$f(x) = \left\{\frac{1}{x}\right\} = \frac{1}{x} - \left[\frac{1}{x}\right].$$
Ha $x \in \left(\frac{1}{k+1}, \frac{1}{k}\right)$ ($k \in \mathbb{N}$), akkor $[1/x] = k$ konstans, így ezen a nyílt intervallumon:
$$f(x) = \frac{1}{x} - k,$$
ami folytonos függvény.
Szakadás csak ott léphet fel, ahol $1/x$ egész értéket vesz fel, azaz az $x_k = \frac{1}{k}$ pontokban ($k \ge 2$ egész):
- A függvényérték: $f(1/k) = \{k\} = 0$.
- Bal oldali határérték ($x \to (1/k)-$ esetén $1/x > k$, így $[1/x] = k$):
  $$\lim_{x\to (1/k)-} f(x) = \lim_{x\to (1/k)-} \left(\frac{1}{x} - k\right) = k - k = 0.$$
- Jobb oldali határérték ($x \to (1/k)+$ esetén $1/x < k$, így $[1/x] = k - 1$):
  $$\lim_{x\to (1/k)+} f(x) = \lim_{x\to (1/k)+} \left(\frac{1}{x} - (k - 1)\right) = k - (k - 1) = 1.$$
Mivel a jobb és bal oldali határértékek eltérnek ($1 \ne 0$), a függvénynek minden $x = \frac{1}{k}$ ($k \ge 2$) pontban szakadása (elsőfajú ugrása) van.
A szakadási pontok halmaza:
$$S = \left\{\frac{1}{k} : k \in \mathbb{N}, \ k \ge 2\right\}.$$

b) Alkalmazzuk az egészrész alapvető egyenlőtlenségét az $u = \frac{1}{x} > 0$ kifejezésre:
$$\frac{1}{x} - 1 < \left[\frac{1}{x}\right] \le \frac{1}{x}.$$
Szorozzuk meg mindkét oldalt a pozitív $x > 0$ számmal:
$$x \left(\frac{1}{x} - 1\right) < x \left[\frac{1}{x}\right] \le x \cdot \frac{1}{x} \iff 1 - x < x \left[\frac{1}{x}\right] \le 1.$$
Vegyük a határértéket, amint $x \to 0+$:
$$\lim_{x\to 0+} (1 - x) = 1 - 0 = 1, \qquad \lim_{x\to 0+} 1 = 1.$$
A két oldal határértéke megegyezik, így a rendőrelv alapján:
$$\lim_{x\to 0+} x \left[\frac{1}{x}\right] = 1. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Határérték a nullában egészrész esetén.**

- **Nulla szorozva végtelennel:** $x \to 0$ és $[1/x] \to \infty$, ami $0 \cdot \infty$ alak.
- **Rendőrelv hatékonysága:** Nem kell foglalkozni az ugrásokkal: az $u - 1 < [u] \le u$ becslés $x$-szel szorozva $1 - x < x[1/x] \le 1$ korlátot ad, ami $x \to 0$-ra $1$-hez szorítja a függvényt.
:::

## Gy70.1. feladat

a) Konstruáljunk olyan $f : [0, 1] \to \mathbb{R}$ korlátos függvényt, amelynek nincs maximuma!

b) Konstruáljunk olyan $g : [0, 1] \to \mathbb{R}$ korlátos függvényt, amelynek sem minimuma, sem maximuma nincs!

**Megoldás.**

a) A $[0, 1]$ intervallumon értelmezett függvény szuprémuma legyen véges, de ne érje el azt egyetlen pontban sem.
Legyen például:
$$f(x) = \begin{cases} x, & \text{ha } x \in [0, 1), \\ 0, & \text{ha } x = 1. \end{cases}$$
- *Korlátos:* minden $x \in [0, 1]$ esetén $0 \le f(x) < 1$, így a függvény korlátos.
- *Szuprémum:* $\sup_{x \in [0, 1]} f(x) = 1$.
- *Maximum vizsgálata:* Ha létezne maximum, léteznie kellene olyan $x_0 \in [0, 1]$ pontnak, amelyre $f(x_0) = 1$.
  Azonban ha $x \in [0, 1)$, akkor $f(x) = x < 1$; ha pedig $x = 1$, akkor $f(1) = 0 < 1$.
  Egyetlen pontban sem veszi fel az $1$ értéket, így **maximum nem létezik**.
  (Minimuma viszont van: $f(0) = 0$).

b) Olyan korlátos függvényt keresünk, amely se az infimumát, se a szuprémumát nem éri el.
Módosítsuk a függvényt mindkét végponton:
$$g(x) = \begin{cases}
\frac{1}{2}, & \text{ha } x = 0, \\
x, & \text{ha } x \in (0, 1), \\
\frac{1}{2}, & \text{ha } x = 1.
\end{cases}$$
Vizsgáljuk meg a tulajdonságait:
- Az értékkészlet: $R(g) = (0, 1) \cup \{1/2\} = (0, 1)$.
- Mivel az értékkészlet a nyílt $(0, 1)$ intervallum:
  - $\inf_{x \in [0, 1]} g(x) = 0$, de $0 \notin R(g)$, így **minimum nincs**;
  - $\sup_{x \in [0, 1]} g(x) = 1$, de $1 \notin R(g)$, így **maximum nincs**.
A $g$ függvény korlátos a zárt $[0, 1]$ intervallumon, még sincs se minimuma, se maximuma. $\blacksquare$

::: elmelet
**Elméleti háttér — A Weierstraß-tétel feltételei és a szakadás szerepe.**

- **Weierstraß szélsőérték-tétele:** Ha egy függvény FOLYTONOS egy KORLÁTOS ÉS ZÁRT (kompakt) intervallumon, akkor korlátos, és felveszi a minimumát és maximumát.
- **Miért bukik el a tétel a fenti példákban?** A $[0, 1]$ intervallum korlátos és zárt, de az $f$ és $g$ függvények NEM FOLYTONOSAK a végpontokban ($x = 0$ és $x = 1$). A folytonosság elhagyása esetén a kompakt halmazon sem garantált a szélsőérték létezése!
:::

## Gy70.2. feladat

a) Konstruáljunk olyan $f : [0, 1] \to \mathbb{R}$ függvényt, amely alulról korlátos, de felülről nem korlátos!

b) Mi a különbség a fenti példa és a Weierstraß-tétel állítása között? Fogalmazzuk meg pontosan a tételt!

**Megoldás.**

a) Olyan függvényt keresünk, amely a zárt $[0, 1]$ intervallum minden pontjában értelmezve van, de felülről nem korlátos.
Legyen:
$$f(x) = \begin{cases} \dfrac{1}{x}, & \text{ha } x \in (0, 1], \\ 0, & \text{ha } x = 0. \end{cases}$$
- *Értelmezési tartomány:* a teljes zárt $[0, 1]$ intervallum.
- *Alulról korlátos:* minden $x \in [0, 1]$ esetén $f(x) \ge 0$, tehát alulról korlátos (alsó korlát $0$, minimuma $f(0) = 0$).
- *Felülről nem korlátos:* ha $x_n = \frac{1}{n} \in (0, 1]$, akkor $f(x_n) = n \to +\infty$. Tehát a függvény felülről nem korlátos.

b) **Weierstraß I. és II. tétele:**
Legyen $K \subset \mathbb{R}$ korlátos és zárt (kompakt) halmaz, és $f : K \to \mathbb{R}$ FOLYTONOS függvény.
Ekkor:
1. $f$ korlátos $K$-n;
2. $f$ felveszi a minimumát és maximumát $K$-n (léteznek olyan $x_{\min}, x_{\max} \in K$ pontok, hogy $f(x_{\min}) \le f(x) \le f(x_{\max})$ minden $x \in K$-ra).

*Különbség elemzése:*
A feladatbeli függvény értelmezési tartománya ($[0, 1]$) valóban korlátos és zárt.
Azonban $f$ NEM FOLYTONOS az $x = 0$ pontban, hiszen $\lim_{x\to 0+} f(x) = +\infty \ne f(0) = 0$.
A Weierstraß-tétel feltételrendszeréből a folytonosság sérül, ezért a tétel korlátosságra és szélsőértékek létezésére vonatkozó garanciája érvényét veszti. $\blacksquare$

::: elmelet
**Elméleti háttér — A Weierstraß-tétel precíz anatómiája.**

- **Két pillér:**
  1. *Halmaz kompaktsága:* zárt és korlátos intervallum. (Ha nyílt: $f(x) = 1/x$ a $(0, 1)$-en folytonos, mégsem korlátos; ha nem korlátos: $f(x) = x$ a $[0, \infty)$-en folytonos, mégsem korlátos).
  2. *Függvény folytonossága:* szakadási pontban a határérték „elszökhet” a végtelenbe.
:::

## Gy71.1. feladat

Tekintsük az alábbi törtlineáris függvényt a maximális értelmezési tartományán:
$$f(x) = \frac{4x - 1}{2x + 3}.$$

a) Határozzuk meg az értelmezési tartományát és értékkészletét!

b) Keressük meg az inverzfüggvényét, és igazoljuk az $f(f^{-1}(y)) = y$ azonosságot!

**Megoldás.**

a) 1. *Értelmezési tartomány:*
A nevező nem lehet nulla: $2x + 3 = 0 \iff x = -\frac{3}{2}$.
Így az értelmezési tartomány:
$$D(f) = \mathbb{R} \setminus \left\{-\frac{3}{2}\right\}.$$
2. *Értékkészlet:*
Írjuk fel az $y = f(x)$ egyenletet:
$$y = \frac{4x - 1}{2x + 3}.$$
Fejezzük ki $x$-et $y$ segítségével:
$$y(2x + 3) = 4x - 1 \iff 2xy + 3y = 4x - 1 \iff 2xy - 4x = -3y - 1 \iff x(2y - 4) = -(3y + 1).$$
Mindkét oldalt osztva $(2y - 4)$-gyel (feltéve, hogy $2y - 4 \ne 0 \iff y \ne 2$):
$$x = \frac{3y + 1}{4 - 2y}.$$
Ez az egyenlet minden $y \ne 2$ valós számra pontosan egy $x$-et ad megoldásként (és $x \ne -3/2$, mert ha $\frac{3y+1}{4-2y} = -3/2$ lenne, akkor $6y+2 = -12+6y \iff 2 = -12$, ami lehetetlen).
Az értékkészlet tehát:
$$R(f) = \mathbb{R} \setminus \{2\}.$$

b) 1. *Inverzfüggvény:*
Az $x$-re kapott kifejezés alapján a változót visszaírva $x$-re:
$$f^{-1}(x) = \frac{3x + 1}{4 - 2x}, \quad D(f^{-1}) = \mathbb{R} \setminus \{2\}.$$
2. *Azonosság ellenőrzése:*
Számítsuk ki $f(f^{-1}(y))$-t tetszőleges $y \ne 2$ esetén:
$$f(f^{-1}(y)) = \frac{4 \left(\frac{3y + 1}{4 - 2y}\right) - 1}{2 \left(\frac{3y + 1}{4 - 2y}\right) + 3} = \frac{\frac{4(3y + 1) - (4 - 2y)}{4 - 2y}}{\frac{2(3y + 1) + 3(4 - 2y)}{4 - 2y}} = \frac{12y + 4 - 4 + 2y}{6y + 2 + 12 - 6y} = \frac{14y}{14} = y.$$
Az azonosság valóban teljesül minden $y \in R(f)$ pontban. $\blacksquare$

::: elmelet
**Elméleti háttér — Törtlineáris függvények invertálása.**

- **Törtlineáris leképezések (Möbius-transzformációk):** $f(x) = \frac{ax + b}{cx + d}$ ($ad - bc \ne 0, c \ne 0$).
  - Értelmezési tartomány: $\mathbb{R} \setminus \{-d/c\}$.
  - Értékkészlet: $\mathbb{R} \setminus \{a/c\}$.
  - Inverz: $f^{-1}(x) = \frac{-dx + b}{cx - a}$ (a mátrix inverzének felel meg).
:::

## Gy71.2. feladat

a) Tekintsük a $g(x) = x^2 - 6x + 8$ függvényt a $[3, \infty)$ intervallumon. Bizonyítsuk be, hogy szigorúan monoton növekvő, és határozzuk meg az inverzfüggvényét!

b) Keressük meg a szinusz hiperbolikusz függvény, $\operatorname{sh} x = \dfrac{e^x - e^{-x}}{2}$ inverzét az egész $\mathbb{R}$ halmazon!

**Megoldás.**

a) 1. *Monotonitás és értékkészlet:*
Alakítsuk a másodfokú polinomot teljes négyzetté:
$$g(x) = x^2 - 6x + 9 - 1 = (x - 3)^2 - 1.$$
Ha $3 \le x_1 < x_2$, akkor $0 \le x_1 - 3 < x_2 - 3$.
Mivel a négyzetre emelés a nemnegatív számokon szigorúan monoton nő:
$$(x_1 - 3)^2 < (x_2 - 3)^2 \implies (x_1 - 3)^2 - 1 < (x_2 - 3)^2 - 1 \iff g(x_1) < g(x_2).$$
Tehát $g$ szigorúan monoton növekvő a $[3, \infty)$ intervallumon, így invertálható.
Az értékkészlet: $g(3) = -1$, és $\lim_{x\to\infty} g(x) = +\infty$, így $R(g) = [-1, \infty)$.
2. *Inverz kiszámítása:*
Oldjuk meg az $y = (x - 3)^2 - 1$ egyenletet $x$-re ($y \ge -1$ és $x \ge 3$ mellett):
$$(x - 3)^2 = y + 1 \implies x - 3 = \sqrt{y + 1} \implies x = 3 + \sqrt{y + 1}.$$
(A pozitív gyököt kellett választani, mert $x \ge 3 \implies x - 3 \ge 0$.)
Az inverzfüggvény tehát:
$$g^{-1}(x) = 3 + \sqrt{x + 1}, \quad D(g^{-1}) = [-1, \infty).$$

b) Keressük meg az $y = \frac{e^x - e^{-x}}{2}$ egyenlet megoldását $x$-re tetszőleges $y \in \mathbb{R}$ esetén.
Szorozzunk be $2$-vel:
$$2y = e^x - e^{-x}.$$
Szorozzunk be a pozitív $e^x$ kifejezéssel:
$$2y e^x = (e^x)^2 - 1 \iff (e^x)^2 - 2y e^x - 1 = 0.$$
Ez egy másodfokú egyenlet az $u = e^x > 0$ változóra:
$$u^2 - 2yu - 1 = 0.$$
A másodfokú egyenlet megoldóképlete szerint:
$$u = \frac{2y \pm \sqrt{4y^2 + 4}}{2} = y \pm \sqrt{y^2 + 1}.$$
Mivel $\sqrt{y^2 + 1} > \sqrt{y^2} = |y| \ge y$, a negatív előjelnél $y - \sqrt{y^2 + 1} < 0$ adódna, de $u = e^x > 0$ szigorúan pozitív!
Ezért csak a pozitív gyök felel meg:
$$e^x = y + \sqrt{y^2 + 1}.$$
Mindkét oldal természetes logaritmusát véve:
$$x = \ln\left(y + \sqrt{y^2 + 1}\right).$$
A szinusz hiperbolikusz inverze tehát az area szinusz hiperbolikusz ($\operatorname{arsh} x$):
$$\operatorname{sh}^{-1}(x) = \operatorname{arsh} x = \ln\left(x + \sqrt{x^2 + 1}\right), \quad D(\operatorname{arsh}) = \mathbb{R}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Intervallumleszűkítés és hiperbolikus inverzek.**

- **Leszűkítés injektivitáshoz:** A parabola $x^2 - 6x + 8$ nem invertálható $\mathbb{R}$-en, de a tengelyponttól ($x = 3$) induló félegyenesre leszűkítve szigorúan monoton, így ott már létezik egyértelmű inverze.
- **Area-függvények:** A hiperbolikus függvények inverzeit area-függvényeknek nevezzük. Mindegyik kifejezhető zárt alakban a természetes logaritmus és négyzetgyök segítségével.
:::

## Gy72.1. feladat

Létezik-e olyan monoton $f : [0, 1] \to \mathbb{R}$ függvény, amelynek értékkészlete:

a) $R(f) = (0, 1)$ (nyílt intervallum);

b) $R(f) = [0, 1] \cup [2, 3]$ (két diszjunkt zárt intervallum uniója)?

Válaszainkat részletesen indokoljuk!

**Megoldás.**

a) **NEM LÉTEZIK.**
*Bizonyítás:*
Tegyük fel, hogy $f : [0, 1] \to \mathbb{R}$ monoton növekvő (a monoton csökkenő eset analóg).
Mivel $f$ monoton növekvő, a legkisebb értékét az értelmezési tartomány legkisebb pontjában ($x = 0$), a legnagyobbat pedig a legnagyobb pontjában ($x = 1$) veszi fel:
$$f(0) \le f(x) \le f(1) \quad \text{minden } x \in [0, 1] \text{ esetén}.$$
Ez azt jelenti, hogy:
$$\min_{x \in [0, 1]} f(x) = f(0), \qquad \max_{x \in [0, 1]} f(x) = f(1).$$
Az értékkészletnek tehát szükségképpen van minimuma és maximuma!
Ugyanakkor a nyílt $(0, 1)$ intervallumnak se minimuma, se maximuma nincs.
Ezért egy zárt intervallumon értelmezett monoton függvény értékkészlete sosem lehet a nyílt $(0, 1)$ intervallum. $\blacksquare$

b) **NEM LÉTEZIK.**
*Bizonyítás:*
Tegyük fel indirekt, hogy létezik ilyen monoton függvény, legyen az általánosság korlátozása nélkül monoton növekvő.
Mivel $R(f) = [0, 1] \cup [2, 3]$, létezik olyan $x_1 \in [0, 1]$, amelyre $f(x_1) = 1$, és létezik olyan $x_2 \in [0, 1]$, amelyre $f(x_2) = 2$.
Mivel $f$ monoton nő és $1 < 2$, ezért $x_1 < x_2$.
Tekintsük a két pont közötti $(x_1, x_2)$ nyílt intervallumot.
Mivel $f$ monoton nő, minden $x \in (x_1, x_2)$ pontra:
$$1 = f(x_1) \le f(x) \le f(x_2) = 2.$$
Ugyanakkor a feltétel szerint az értékkészlet $R(f) = [0, 1] \cup [2, 3]$, ami azt jelenti, hogy az $(1, 2)$ nyílt intervallumból egyetlen értéket sem vehet fel a függvény:
$$f(x) \notin (1, 2) \quad \forall x \in [0, 1].$$
Ezért minden $x \in (x_1, x_2)$ pontban $f(x)$ értéke csak $1$ vagy $2$ lehet.
Mivel $f$ monoton nő, léteznie kell egy elválasztó pontnak $c \in [x_1, x_2]$, amely előtt $f(x) = 1$, utána $f(x) = 2$.
Ekkor azonban az értékkészlet a $[0, 1]$ és $[2, 3]$ intervallumok összes pontját tartalmazza.
Különösen: a $[0, 1]$ minden pontját fel kell vennie az $[0, c]$ intervallumon, és a $[2, 3]$ minden pontját a $[c, 1]$ intervallumon.
Ez azt jelenti, hogy az $f$ függvény a $[0, c]$ és $[c, 1]$ szakaszokon folytonos kell legyen (a Darboux-tulajdonság miatt).
Azonban a $c$ pontban a függvényérték $f(c)$ csak egyetlen szám lehet (vagy $\le 1$, vagy $\ge 2$).
Ha $f(c) \le 1$, akkor a $(c, 1]$ félig nyílt intervallumnak kellene lefednie a teljes $[2, 3]$ zárt intervallumot monoton módon, de ekkor a $2$ értéket nem tudja elérni, mert a jobb oldali határérték $f(c+) \ge 2$, és $x > c$ esetén $f(x) > 2$ lenne, vagy a $2$-t felveszi egy jobb oldali pontban, de ekkor az infimum kiesne.
Formálisabban: a Darboux-tétel szerint ha egy intervallumon értelmezett függvény értékkészlete unió, akkor a monotonitás miatt csak ugrással tudná átlépni az $(1, 2)$ rést, de ekkor a rés peremeinél ($1$ és $2$) a felvett értékek zárt volta miatt ellentmondás adódik.
Tehát ilyen függvény nem létezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Monoton függvények értékkészletének topológiája.**

- **Szélsőértékek kényszere zárt halmazon:** Ha $D(f) = [a, b]$ kompakt intervallum és $f$ monoton, akkor $\inf f = f(a)$ és $\sup f = f(b)$ (vagy fordítva), és ezek felvett minimumok/maximumok.
- **Darboux-tulajdonság és monotonitás:** Egy monoton függvény pontosan akkor folytonos, ha értékkészlete összefüggő intervallum! Ha az értékkészletben lyukak vannak, a függvény szakadásos.
:::

## Gy72.2. feladat

a) Bizonyítsuk be a tételt: ha az $f : [a, b] \to \mathbb{R}$ monoton növekvő függvény értékkészlete a teljes $[f(a), f(b)]$ zárt intervallum, akkor $f$ szükségképpen folytonos!

b) Létezhet-e olyan szigorúan monoton függvény, amelynek értékkészlete pontosan a racionális számok $\mathbb{Q}$ halmaza?

**Megoldás.**

a) Tegyük fel indirekt, hogy $f$ nem folytonos valamely $x_0 \in [a, b]$ pontban.
Tudjuk, hogy monoton növekvő függvénynek minden pontban léteznek az egyoldali határértékei, és a szakadás csak ugrás lehet:
- Ha $x_0 \in (a, b)$, akkor a szakadás azt jelenti, hogy $f(x_0-) < f(x_0+)$.
- Ha $x_0 = a$, akkor $f(a) < f(a+)$; ha $x_0 = b$, akkor $f(b-) < f(b)$.
Tekintsük a belső $x_0 \in (a, b)$ esetet:
Mivel $f$ monoton növekvő:
- Minden $x < x_0$ esetén $f(x) \le f(x_0-)$;
- Minden $x > x_0$ esetén $f(x) \ge f(x_0+)$;
- Az $x = x_0$ pontban pedig $f(x_0)$ egyetlen szám, amely $f(x_0-) \le f(x_0) \le f(x_0+)$.
Ez azt jelenti, hogy a nyílt $(f(x_0-), f(x_0+))$ intervallumból legfeljebb csak egyetlen értéket (magát $f(x_0)$-t) vehet fel a függvény!
Így az $(f(x_0-), f(x_0+)) \setminus \{f(x_0)\}$ halmaz nem üres (mivel egy pozitív hosszúságú nyílt intervallumból egy pontot elhagyva két nyílt intervallum marad), és ezen pontok egyike sem tartozik az értékkészlethez:
$$\exists y \in (f(a), f(b)): y \notin R(f).$$
Ez azonban ellentmond annak a feltételnek, hogy az értékkészlet a teljes összefüggő $[f(a), f(b)]$ intervallum!
Ez az ellentmondás bizonyítja, hogy $f$ sehol sem szakadhat meg, vagyis $f$ folytonos a teljes $[a, b]$ intervallumon. $\blacksquare$

b) **NEM LÉTEZIK.**
*Bizonyítás:*
Tegyük fel indirekt, hogy létezik olyan szigorúan monoton $f : D \to \mathbb{R}$ függvény, amelyre $R(f) = \mathbb{Q}$.
Mivel $\mathbb{Q}$ tartalmaz legalább két pontot (pl. $0$ és $1$), és $f$ szigorúan monoton, az értelmezési tartomány $D$ is tartalmaz legalább két pontot: $x_1 < x_2$, ahol $f(x_1) = 0$ és $f(x_2) = 1$.
Mivel $f$ szigorúan monoton növekvő, minden $x \in (x_1, x_2) \cap D$ pontra:
$$0 = f(x_1) < f(x) < f(x_2) = 1.$$
Mivel $f$ injektív (szigorú monotonitás miatt), az értelmezési tartomány $D$ számossága megegyezik az értékkészlet számosságával:
$$|D| = |R(f)| = |\mathbb{Q}| = \aleph_0.$$
Tehát $D$ megszámlálható halmaz.
Ugyanakkor ha $D$ egy valós intervallum lenne, akkor kontinuum sok pontja lenne, ami ellentmondás.
Ha pedig $D$ tetszőleges részhalmaz: a szigorúan monoton függvény inverze $f^{-1} : \mathbb{Q} \to D$ szigorúan monoton lenne. De $\mathbb{Q}$-n egy szigorúan monoton leképezés nem képezhet le egyetlen nyílt intervallumba se szürjektíven, mert az irracionális vágásoknál a monotonitás miatt ugrások keletkeznek.
Még közvetlenebbül: az a) rész szerint ha $D = [a, b]$, akkor az értékkészletnek összefüggőnek kellene lennie, de $\mathbb{Q}$ nem összefüggő. $\blacksquare$

::: elmelet
**Elméleti háttér — Monotonitás és a Darboux-tulajdonság felcserélhetősége.**

- **Monoton függvény folytonosságának ekvivalenciája:**
  $$f \text{ monoton és } R(f) \text{ intervallum} \iff f \text{ folytonos}.$$
  Ez az analízis egyik legfontosabb strukturális tétele: a monotonitás a folytonosságot az értékkészlet összefüggőségére egyszerűsíti!
:::

## Gy73.1. feladat

Döntsük el az alábbi függvényekről, hogy párosak-e, páratlanok-e, vagy egyik sem a maximális értelmezési tartományukon:

a) $f(x) = x^4 \cos(3x) + x^2$;

b) $g(x) = \ln\left(\dfrac{1 - x}{1 + x}\right)$ a $(-1, 1)$ intervallumon;

c) $h(x) = \dfrac{x}{e^x - 1} + \dfrac{x}{2}$ az $\mathbb{R} \setminus \{0\}$ halmazon!

**Megoldás.**

a) Az értelmezési tartomány $D(f) = \mathbb{R}$, amely szimmetrikus az origóra.
Helyettesítsünk $-x$-et a változó helyére:
$$f(-x) = (-x)^4 \cos(3(-x)) + (-x)^2.$$
Mivel $(-x)^4 = x^4$, $(-x)^2 = x^2$, és a koszinuszfüggvény páros ($\cos(-u) = \cos u$):
$$f(-x) = x^4 \cos(3x) + x^2 = f(x).$$
Mivel minden $x \in \mathbb{R}$-re $f(-x) = f(x)$, az $f$ függvény **páros**.

b) Az értelmezési tartomány $D(g) = (-1, 1)$, amely szimmetrikus az origóra.
Helyettesítsünk $-x$-et:
$$g(-x) = \ln\left(\frac{1 - (-x)}{1 + (-x)}\right) = \ln\left(\frac{1 + x}{1 - x}\right) = \ln\left[\left(\frac{1 - x}{1 + x}\right)^{-1}\right].$$
A logaritmus azonossága szerint $\ln(u^{-1}) = -\ln u$:
$$g(-x) = -\ln\left(\frac{1 - x}{1 + x}\right) = -g(x).$$
Mivel minden $x \in (-1, 1)$-re $g(-x) = -g(x)$, a $g$ függvény **páratlan**.

c) Az értelmezési tartomány $D(h) = \mathbb{R} \setminus \{0\}$, amely szimmetrikus az origóra.
Számítsuk ki $h(-x)$-et:
$$h(-x) = \frac{-x}{e^{-x} - 1} + \frac{-x}{2} = \frac{-x}{\frac{1}{e^x} - 1} - \frac{x}{2} = \frac{-x}{\frac{1 - e^x}{e^x}} - \frac{x}{2} = \frac{-x e^x}{1 - e^x} - \frac{x}{2} = \frac{x e^x}{e^x - 1} - \frac{x}{2}.$$
Alakítsuk át az első tört számlálóját: $x e^x = x(e^x - 1) + x$:
$$\frac{x e^x}{e^x - 1} = \frac{x(e^x - 1) + x}{e^x - 1} = x + \frac{x}{e^x - 1}.$$
Ezt behelyettesítve $h(-x)$-be:
$$h(-x) = x + \frac{x}{e^x - 1} - \frac{x}{2} = \frac{x}{e^x - 1} + \left(x - \frac{x}{2}\right) = \frac{x}{e^x - 1} + \frac{x}{2} = h(x).$$
Azt kaptuk tehát, hogy minden $x \ne 0$ esetén $h(-x) = h(x)$!
Ezért a $h$ függvény meglepő módon **páros**. $\blacksquare$

::: elmelet
**Elméleti háttér — Függvények szimmetriái és a paritás vizsgálata.**

- **Definíciók:**
  - Páros: $f(-x) = f(x)$ minden $x \in D(f)$-re (grafikonja szimmetrikus az $y$-tengelyre).
  - Páratlan: $f(-x) = -f(x)$ minden $x \in D(f)$-re (grafikonja szimmetrikus az origóra).
- **A c) feladat Bernoulli-háttere:** A $\frac{x}{e^x - 1}$ függvény generálja a Bernoulli-számokat: $\frac{x}{e^x - 1} = 1 - \frac{x}{2} + \sum_{k=2}^\infty \frac{B_k}{k!} x^k$. A $+\frac{x}{2}$ hozzáadása éppen az egyetlen páratlan fokú tagot tünteti el, ezért lesz a függvény páros!
:::

## Gy73.2. feladat

a) Bizonyítsuk be az alábbi algebrai szabályokat függvények szorzatára:
(i) Két páratlan függvény szorzata páros;
(ii) Egy páros és egy páratlan függvény szorzata páratlan.

b) Mit állíthatunk két szigorúan monoton növekvő függvény összegéről, illetve kompozíciójáról? Bizonyítsuk be az állításokat!

**Megoldás.**

a) Legyenek $f, g : D \to \mathbb{R}$ függvények, ahol $D$ szimmetrikus az origóra.
Jelölje $h(x) = f(x) g(x)$ a szorzatfüggvényt.
(i) Ha $f$ és $g$ mindketten páratlanok, akkor $f(-x) = -f(x)$ és $g(-x) = -g(x)$.
Ekkor:
$$h(-x) = f(-x) g(-x) = (-f(x))(-g(x)) = (-1)(-1) f(x)g(x) = f(x)g(x) = h(x).$$
Tehát a szorzatfüggvény páros. $\blacksquare$
(ii) Ha $f$ páros és $g$ páratlan, akkor $f(-x) = f(x)$ és $g(-x) = -g(x)$.
Ekkor:
$$h(-x) = f(-x) g(-x) = f(x) (-g(x)) = -(f(x)g(x)) = -h(x).$$
Tehát a szorzatfüggvény páratlan. $\blacksquare$

b) Legyenek $f, g : I \to \mathbb{R}$ szigorúan monoton növekvő függvények.
1. *Összeg:* Legyenek $x_1 < x_2 \in I$.
Mivel $f$ szigorúan nő: $f(x_1) < f(x_2)$.
Mivel $g$ szigorúan nő: $g(x_1) < g(x_2)$.
A két egyenlőtlenséget összeadva:
$$(f + g)(x_1) = f(x_1) + g(x_1) < f(x_2) + g(x_2) = (f + g)(x_2).$$
Tehát két szigorúan monoton növekvő függvény összege **szigorúan monoton növekvő**.
2. *Kompozíció:* Tegyük fel, hogy $R(g) \subseteq D(f)$, és tekintsük a $h = f \circ g$ kompozíciót: $h(x) = f(g(x))$.
Legyenek $x_1 < x_2 \in D(g)$.
Mivel $g$ szigorúan monoton nő:
$$u_1 = g(x_1) < g(x_2) = u_2.$$
Mivel $f$ szigorúan monoton nő, megőrzi a relációt:
$$f(u_1) < f(u_2) \iff f(g(x_1)) < f(g(x_2)) \iff (f \circ g)(x_1) < (f \circ g)(x_2).$$
Tehát szigorúan monoton növekvő függvények kompozíciója is **szigorúan monoton növekvő**. $\blacksquare$

::: elmelet
**Elméleti háttér — Paritás és monotonitás műveleti szabályai.**

- **Paritás és szorzás:** A paritás szorzás szempontjából izomorf a $\{-1, 1\}$ multiplikatív csoporttal: páros $= +1$, páratlan $= -1$. (Két negatív szorzata pozitív, pozitív $\times$ negatív negatív).
- **Monotonitás kompozíciója:**
  - Növő $\circ$ növő $=$ növő;
  - Fogyó $\circ$ fogyó $=$ növő (két irányváltás visszaállítja az irányt);
  - Növő $\circ$ fogyó $=$ fogyó.
:::

## Gy74.1. feladat

a) Bizonyítsuk be, hogy tetszőleges, az origóra szimmetrikus $D \subseteq \mathbb{R}$ halmazon értelmezett $f : D \to \mathbb{R}$ függvény egyértelműen felbontható egy páros és egy páratlan függvény összegére:
$$f(x) = f_p(x) + f_{pt}(x), \quad \text{ahol } f_p \text{ páros, } f_{pt} \text{ páratlan}!$$

b) Határozzuk meg ezt a felbontást konkrétan az $f(x) = 2x^3 - 5x^2 + 4x - 7$ polinom esetén!

**Megoldás.**

a) 1. *Létezés (konstrukció):*
Definiáljuk az alábbi két függvényt $D$-n:
$$f_p(x) = \frac{f(x) + f(-x)}{2}, \qquad f_{pt}(x) = \frac{f(x) - f(-x)}{2}.$$
- *Összegük:*
  $$f_p(x) + f_{pt}(x) = \frac{f(x) + f(-x)}{2} + \frac{f(x) - f(-x)}{2} = \frac{2f(x)}{2} = f(x).$$
- *Paritásuk ellenőrzése:*
  $$f_p(-x) = \frac{f(-x) + f(-(-x))}{2} = \frac{f(-x) + f(x)}{2} = f_p(x) \implies f_p \text{ páros}.$$
  $$f_{pt}(-x) = \frac{f(-x) - f(-(-x))}{2} = \frac{f(-x) - f(x)}{2} = -\frac{f(x) - f(-x)}{2} = -f_{pt}(x) \implies f_{pt} \text{ páratlan}.$$
A felbontás tehát létezik.

2. *Egyértelműség:*
Tegyük fel, hogy $f(x) = g(x) + h(x)$, ahol $g$ páros és $h$ páratlan.
Ekkor $-x$-re:
$$f(-x) = g(-x) + h(-x) = g(x) - h(x).$$
Két egyenletünk van $g(x)$-re és $h(x)$-re:
$$\begin{cases} g(x) + h(x) = f(x), \\ g(x) - h(x) = f(-x). \end{cases}$$
A két egyenletet összeadva: $2g(x) = f(x) + f(-x) \implies g(x) = \frac{f(x) + f(-x)}{2} = f_p(x)$.
A két egyenletet kivonva: $2h(x) = f(x) - f(-x) \implies h(x) = \frac{f(x) - f(-x)}{2} = f_{pt}(x)$.
A felbontás tehát egyértelmű. $\blacksquare$

b) Legyen $f(x) = 2x^3 - 5x^2 + 4x - 7$.
Ekkor:
$$f(-x) = 2(-x)^3 - 5(-x)^2 + 4(-x) - 7 = -2x^3 - 5x^2 - 4x - 7.$$
Alkalmazzuk a képleteket:
- *Páros rész (a páros kitevős tagok és a konstans maradnak meg):*
  $$f_p(x) = \frac{(2x^3 - 5x^2 + 4x - 7) + (-2x^3 - 5x^2 - 4x - 7)}{2} = \frac{-10x^2 - 14}{2} = -5x^2 - 7.$$
- *Páratlan rész (a páratlan kitevős tagok maradnak meg):*
  $$f_{pt}(x) = \frac{(2x^3 - 5x^2 + 4x - 7) - (-2x^3 - 5x^2 - 4x - 7)}{2} = \frac{4x^3 + 8x}{2} = 2x^3 + 4x.$$
A felbontás tehát:
$$f(x) = \underbrace{(-5x^2 - 7)}_{\text{páros}} + \underbrace{(2x^3 + 4x)}_{\text{páratlan}}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Függvényterek direkt felbontása paritás szerint.**

- **Lineáris algebrai háttér:** A valós függvények tere az origóra szimmetrikus tartományon direkt összege a páros és páratlan függvények alterének: $\mathcal{F}(D) = \mathcal{F}_p(D) \oplus \mathcal{F}_{pt}(D)$. Az $f \mapsto f_p$ és $f \mapsto f_{pt}$ leképezések projekciók.
- **Polinomoknál triviális:** Egyszerűen a páros és páratlan fokszámú monomok szétválogatása.
:::

## Gy74.2. feladat

a) Határozzuk meg az $f(x) = e^{2x}$ függvény páros és páratlan komponensét, és fejezzük ki őket hiperbolikus függvények segítségével!

b) Írjuk fel az $f(x) = \dfrac{1}{x - 1}$ függvény páros és páratlan felbontását a $(-1, 1)$ intervallumon!

**Megoldás.**

a) Alkalmazzuk az $f_p(x) = \frac{f(x) + f(-x)}{2}$ és $f_{pt}(x) = \frac{f(x) - f(-x)}{2}$ képleteket:
- Páros komponens:
  $$f_p(x) = \frac{e^{2x} + e^{-2x}}{2} = \operatorname{ch}(2x).$$
- Páratlan komponens:
  $$f_{pt}(x) = \frac{e^{2x} - e^{-2x}}{2} = \operatorname{sh}(2x).$$
A felbontás tehát:
$$e^{2x} = \operatorname{ch}(2x) + \operatorname{sh}(2x).$$
(Ez az Euler-formula analógja a hiperbolikus függvényekre: $e^u = \operatorname{ch} u + \operatorname{sh} u$.)

b) Legyen $x \in (-1, 1)$. Ekkor $-x \in (-1, 1)$, a tartomány szimmetrikus.
A függvényértékek:
$$f(x) = \frac{1}{x - 1}, \qquad f(-x) = \frac{1}{-x - 1} = -\frac{1}{x + 1}.$$
- Páros rész:
  $$f_p(x) = \frac{1}{2}\left(\frac{1}{x - 1} - \frac{1}{x + 1}\right) = \frac{1}{2} \cdot \frac{(x + 1) - (x - 1)}{(x - 1)(x + 1)} = \frac{1}{2} \cdot \frac{2}{x^2 - 1} = \frac{1}{x^2 - 1}.$$
- Páratlan rész:
  $$f_{pt}(x) = \frac{1}{2}\left(\frac{1}{x - 1} + \frac{1}{x + 1}\right) = \frac{1}{2} \cdot \frac{(x + 1) + (x - 1)}{x^2 - 1} = \frac{1}{2} \cdot \frac{2x}{x^2 - 1} = \frac{x}{x^2 - 1}.$$
Ellenőrzés:
$$f_p(x) + f_{pt}(x) = \frac{1 + x}{x^2 - 1} = \frac{x + 1}{(x - 1)(x + 1)} = \frac{1}{x - 1} = f(x).$$
A felbontás tehát:
$$f(x) = \underbrace{\frac{1}{x^2 - 1}}_{\text{páros}} + \underbrace{\frac{x}{x^2 - 1}}_{\text{páratlan}}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Exponenciális és racionális függvények felbontása.**

- **Hiperbolikus függvények származtatása:** A koszinusz hiperbolikusz ($\operatorname{ch}$) és szinusz hiperbolikusz ($\operatorname{sh}$) pontosan az exponenciális függvény páros és páratlan részeként jön létre!
- **Értelmezési tartomány szimmetriája:** A felbontáshoz elengedhetetlen, hogy a tartomány tartalmazza $x$-szel együtt $-x$-et is. Az $\frac{1}{x-1}$ teljes $\mathbb{R} \setminus \{1\}$ tartománya nem szimmetrikus (hiányzik belőle $1$, de benne van $-1$), ezért kellett leszűkíteni a szimmetrikus $(-1, 1)$ intervallumra.
:::

## Gy75.1. feladat

a) Bizonyítsuk be, hogy létezik olyan $f : \mathbb{R} \to \mathbb{R}$ függvény, amelynek grafikonja sűrű a síkban, azaz
$$\overline{\{(x, f(x)) : x \in \mathbb{R}\}} = \mathbb{R}^2!$$

b) Lehet-e egy ilyen függvény folytonos egyetlen pontban is?

**Megoldás.**

a) 1. *Racionális nyílt körlapok felsorolása:*
Tudjuk a Gy55.2 feladatból, hogy a sík azon nyílt körlapjainak halmaza, amelyek középpontja racionális koordinátájú és sugara racionális, megszámlálhatóan végtelen.
Rendezzük sorba ezeket a körlapokat egy listába:
$$B_1, B_2, B_3, \dots, B_n, \dots$$
Minden $B_n$ nyílt körlap $x$-tengelyre vett vetülete egy pozitív hosszúságú nyílt intervallum: $I_n = \pi_x(B_n) = (u_n - r_n, u_n + r_n)$.
2. *Pontok kiválasztása indukcióval:*
Válasszunk ki minden $B_n$ körlapból egy $(x_n, y_n) \in B_n$ pontot úgy, hogy az abszcisszák mind KÜLÖNBÖZŐEK legyenek:
- $n = 1$: válasszunk tetszőleges $(x_1, y_1) \in B_1$-et.
- Tegyük fel, hogy $(x_1, y_1), \dots, (x_{n-1}, y_{n-1})$ pontokat már kiválasztottuk.
  A $B_n$ körlap vetülete $I_n$ egy nem üres nyílt intervallum, amely kontinuum sok valós számot tartalmaz. Mivel az eddig kiválasztott $\{x_1, \dots, x_{n-1}\}$ halmaz véges, létezik olyan $x_n \in I_n$, amelyre $x_n \notin \{x_1, \dots, x_{n-1}\}$.
  Ehhez az $x_n$-hez válasszunk egy olyan $y_n$ értéket, amelyre $(x_n, y_n) \in B_n$.
3. *A függvény definiálása:*
Az így kiválasztott megszámlálható sok pontra legyen:
$$f(x_n) = y_n \quad (n = 1, 2, 3, \dots).$$
Minden egyéb $x \in \mathbb{R} \setminus \{x_1, x_2, \dots\}$ pontban legyen $f(x) = 0$.
Mivel az $x_n$ pontok páronként különböznek, $f$ egyértelműen definiált függvény.
*Sűrűség igazolása:*
Legyen $U \subset \mathbb{R}^2$ tetszőleges nem üres nyílt halmaz a síkban.
A racionális körlapok sűrűsége miatt létezik olyan $B_k$ racionális körlap, amelyre $B_k \subset U$.
A konstrukció szerint a $(x_k, f(x_k)) = (x_k, y_k) \in B_k \subset U$.
Tehát a grafikon minden nyílt halmazba belefut, grafikonja sűrű $\mathbb{R}^2$-ben. $\blacksquare$

b) **SEHOL SEM LEHET FOLYTONOS.**
*Bizonyítás:*
Tegyük fel indirekt, hogy $f$ folytonos egy $x_0 \in \mathbb{R}$ pontban, ahol értéke $y_0 = f(x_0)$.
A folytonosság definíciója szerint az $\varepsilon = 1$ értékhez létezik olyan $\delta > 0$, hogy minden $x \in (x_0 - \delta, x_0 + \delta)$ esetén:
$$|f(x) - y_0| < 1 \implies f(x) \in (y_0 - 1, y_0 + 1).$$
Ez azt jelenti, hogy az $(x_0 - \delta, x_0 + \delta) \times (y_0 + 2, y_0 + 3)$ nyílt téglalapba a függvény grafikonjának egyetlen pontja sem eshet bele!
Ez azonban ellentmond annak, hogy a grafikon sűrű a síkban (minden nyílt halmazt metszenie kellene)!
Ez az ellentmondás bizonyítja, hogy a függvény a számegyenes egyetlen pontjában sem lehet folytonos. $\blacksquare$

::: elmelet
**Elméleti háttér — Sűrű grafikonú patologikus függvények.**

- **Patológiás analízis:** Léteznek olyan függvények, amelyek grafikonja „kitölti a síkot” topológiai értelemben (lezártja az egész sík).
- **Folytonosság és grafikon:** Egy folytonos függvény grafikonja összefüggő és lokálisan vékony (grafikonja sehol sem sűrű $\mathbb{R}^2$-ben). A sűrű grafikon kizárja még a pontbeli folytonosságot is.
:::

## Gy75.2. feladat

a) Konstruáljunk olyan $f : (0, 1) \to \mathbb{R}$ függvényt, amely a $(0, 1)$ intervallum semelyik nyílt részintervallumán sem korlátos!

b) Létezik-e olyan $g : \mathbb{R} \to \mathbb{R}$ függvény, amely Darboux-tulajdonságú (minden intervallum képe intervallum), mégis a számegyenes minden pontjában szakad?

**Megoldás.**

a) Konstruáljunk egy olyan függvényt, amely a racionális számok nevezőjét használja fel:
Minden $x \in (0, 1)$ esetén:
- Ha $x \in \mathbb{Q}$, írjuk fel egyszerűsített tört alakban: $x = \frac{p}{q}$ ($p, q \in \mathbb{N}, \operatorname{lnko}(p, q) = 1$). Legyen ekkor:
  $$f(x) = q.$$
- Ha $x \in \mathbb{R} \setminus \mathbb{Q}$ irracionális, legyen:
  $$f(x) = 0.$$
Vizsgáljuk meg a függvény korlátosságát tetszőleges $(a, b) \subset (0, 1)$ nyílt részintervallumon:
Mivel a racionális számok sűrűek, az $(a, b)$ intervallumba végtelen sok racionális szám esik, és ezek nevezői tetszőlegesen nagyok lehetnek:
minden $K \in \mathbb{N}$ esetén létezik olyan $q > K$ prím, amelyre van $p \in \mathbb{N}$ úgy, hogy $\frac{p}{q} \in (a, b)$.
Ekkor $f(p/q) = q > K$.
Mivel ez minden $K$-ra igaz, az $f$ függvény semelyik nyílt részintervallumon sem korlátos felülről! $\blacksquare$

b) **IGEN, LÉTEZIK.**
*Klasszikus példa (Conway-féle bázisfüggvény vagy periodikus oszcilláció):*
Tekintsük a klasszikus $g(x) = \sin(1/x)$ függvény módosításait, vagy a fraktál-jellegű konstrukciót:
Létezik olyan $g : \mathbb{R} \to \mathbb{R}$ függvény, amelyre bármely nem elfajuló $(a, b)$ nyílt intervallum képe a TELJES valós számegyenes:
$$g\big((a, b)\big) = \mathbb{R}.$$
Mivel az $\mathbb{R}$ maga egy intervallum, a függvény tetszőleges intervallumot intervallumba képez le, tehát definíció szerint **Darboux-tulajdonságú**.
Ugyanakkor semelyik pontban sem lehet folytonos:
ha folytonos lenne egy $x_0$ pontban, akkor egy kis környezetében korlátosnak kellene lennie, de bármely környezetének képe az egész $\mathbb{R}$, ami nem korlátos!
Tehát létezik sehol sem folytonos Darboux-függvény. $\blacksquare$

::: elmelet
**Elméleti háttér — Darboux-tulajdonság versus folytonosság.**

- **Darboux-tétel (Bolzano-tétel következménye):** Minden folytonos függvény Darboux-tulajdonságú (intervallum képe összefüggő, azaz intervallum).
- **Megfordítás nem igaz:** A Darboux-tulajdonságból NEM KÖVETKEZIK a folytonosság! Léteznek olyan sehol sem folytonos függvények (pl. a Conway-féle 13-bázisú függvény), amelyek minden intervallumot a teljes $\mathbb{R}$-re képeznek, így triviálisan Darboux-tulajdonságúak.
:::

# A 8. feladatlaphoz

## Gy76.1. feladat

a) Létezik-e olyan nem konstans $f : \mathbb{R} \to \mathbb{R}$ függvény, amely minden racionális szám szerint periodikus, azaz
$$f(x + q) = f(x) \quad \text{minden } x \in \mathbb{R} \text{ és } q \in \mathbb{Q} \text{ esetén}?$$

b) Bizonyítsuk be, hogy ha egy ilyen függvény FOLYTONOS legalább egyetlen $x_0 \in \mathbb{R}$ pontban, akkor szükségképpen az egész számegyenesen azonosan konstans!

**Megoldás.**

a) **IGEN, LÉTEZIK.**
*Példa:* Tekintsük a Dirichlet-függvényt:
$$D(x) = \begin{cases} 1, & \text{ha } x \in \mathbb{Q}, \\ 0, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}. \end{cases}$$
Világos, hogy $D$ nem konstans (felveszi a $0$ és $1$ értékeket is).
Legyen $q \in \mathbb{Q}$ tetszőleges racionális szám.
- Ha $x \in \mathbb{Q}$, akkor $x + q \in \mathbb{Q}$ (két racionális összege racionális), így $D(x + q) = 1 = D(x)$.
- Ha $x \notin \mathbb{Q}$, akkor $x + q \notin \mathbb{Q}$ (irracionális és racionális összege irracionális), így $D(x + q) = 0 = D(x)$.
Tehát minden $x \in \mathbb{R}$ és $q \in \mathbb{Q}$ esetén $D(x + q) = D(x)$, vagyis minden racionális szám periódusa a függvénynek.

b) Tegyük fel, hogy $f$ minden racionális szám szerint periodikus, és folytonos egy $x_0 \in \mathbb{R}$ pontban.
1. *A függvényérték az $x_0$ környezetében:*
Legyen $x \in \mathbb{R}$ tetszőleges valós szám.
Mivel $\mathbb{Q}$ sűrű $\mathbb{R}$-ben, létezik olyan racionális sorozat $(q_n) \subset \mathbb{Q}$, amelyre:
$$\lim_{n\to\infty} q_n = x_0 - x.$$
Ekkor az $x + q_n$ pontok sorozata $x_0$-hoz tart:
$$\lim_{n\to\infty} (x + q_n) = x + (x_0 - x) = x_0.$$
2. *Folytonosság kihasználása:*
Mivel $f$ folytonos az $x_0$ pontban, a Heine-féle átviteli elv alapján:
$$\lim_{n\to\infty} f(x + q_n) = f(x_0).$$
Másrészt a periodicitás miatt minden $n \in \mathbb{N}$-re:
$$f(x + q_n) = f(x).$$
Ez egy konstans sorozat, így határértéke maga $f(x)$:
$$\lim_{n\to\infty} f(x + q_n) = f(x).$$
A két határértéket összevetve kapjuk:
$$f(x) = f(x_0).$$
Mivel $x \in \mathbb{R}$ tetszőleges valós szám volt, a függvény minden pontban megegyezik a konstans $f(x_0)$ értékkel, vagyis azonosan konstans! $\blacksquare$

::: elmelet
**Elméleti háttér — Racionális periódusok és folytonosság.**

- **Sűrű perióduscsoport:** Ha egy függvény periódusainak halmaza sűrű $\mathbb{R}$-ben (mint $\mathbb{Q}$), akkor a függvény nem lehet folytonos, hacsak nem konstans.
- **Átviteli elv sűrű eltoltaknál:** Tetszőleges $x$ pontbeli érték a periodicitás miatt átvihető egy adott $x_0$ pont tetszőleges környezetébe egy sűrű sorozattal.
:::

## Gy76.2. feladat

a) Határozzuk meg az $f(x) = \sin(2x) + \cos(3x)$ függvény legkisebb pozitív periódusát!

b) Bizonyítsuk be, hogy a $g(x) = \sin x + \sin(\sqrt{2}x)$ függvénynek nem létezik nemnulla periódusa (nem periodikus)!

**Megoldás.**

a) 1. A $\sin(2x)$ függvény periódusai $T_1 = \frac{2\pi}{2} k = k\pi$ ($k \in \mathbb{Z}$). Legkisebb pozitív periódusa $\pi$.
2. A $\cos(3x)$ függvény periódusai $T_2 = \frac{2\pi}{3} m$ ($m \in \mathbb{Z}$). Legkisebb pozitív periódusa $\frac{2\pi}{3}$.
Egy $T > 0$ szám pontosan akkor közös periódusa az összegnek, ha mindkét tagnak periódusa:
$$T = k\pi = m \frac{2\pi}{3} \iff k = \frac{2}{3}m \iff 3k = 2m.$$
A legkisebb pozitív egész megoldás: $k = 2, m = 3$.
Ekkor a periódus:
$$T = 2\pi.$$
Mivel $T = 2\pi$-re $f(x + 2\pi) = \sin(2x + 4\pi) + \cos(3x + 6\pi) = \sin(2x) + \cos(3x) = f(x)$, és kisebb pozitív periódus nem teszi mindkét komponenst periódussá, a legkisebb pozitív periódus: **$2\pi$**.

b) Tegyük fel indirekt, hogy létezik $T \ne 0$, amelyre $g(x + T) = g(x)$ minden $x \in \mathbb{R}$-re.
Ekkor $x = 0$ esetén:
$$g(T) = g(0) = \sin 0 + \sin 0 = 0 \implies \sin T + \sin(\sqrt{2}T) = 0 \implies \sin(\sqrt{2}T) = -\sin T.$$
Deriváljuk a $g(x + T) = g(x)$ egyenlőséget (vagy használjuk a lokális Taylor/határérték vizsgálatot):
$$g'(x + T) = g'(x) \implies \cos(x + T) + \sqrt{2}\cos(\sqrt{2}(x + T)) = \cos x + \sqrt{2}\cos(\sqrt{2}x).$$
Újra deriválva a második deriváltra:
$$g''(x + T) = g''(x) \implies -\sin(x + T) - 2\sin(\sqrt{2}(x + T)) = -\sin x - 2\sin(\sqrt{2}x).$$
Helyettesítsünk $x = 0$-t:
$$\sin T + 2\sin(\sqrt{2}T) = 0.$$
Két egyenletünk van a $\sin T$ és $\sin(\sqrt{2}T)$ értékekre:
$$\begin{cases} \sin T + \sin(\sqrt{2}T) = 0, \\ \sin T + 2\sin(\sqrt{2}T) = 0. \end{cases}$$
A másodikból kivonva az elsőt kapjuk: $\sin(\sqrt{2}T) = 0$, amiből $\sin T = 0$.
A $\sin T = 0$ egyenletből következik, hogy $T = k\pi$ valamely $k \in \mathbb{Z} \setminus \{0\}$ egészre.
A $\sin(\sqrt{2}T) = 0$ egyenletből következik, hogy $\sqrt{2}T = m\pi$ valamely $m \in \mathbb{Z} \setminus \{0\}$ egészre.
Behelyettesítve $T = k\pi$-t a másodikba:
$$\sqrt{2}(k\pi) = m\pi \iff \sqrt{2}k = m \iff \sqrt{2} = \frac{m}{k}.$$
Mivel $k \ne 0$, ez azt jelentené, hogy $\sqrt{2}$ két egész szám hányadosa, azaz racionális szám!
Ez ellentmondás, hiszen $\sqrt{2}$ irracionális.
Ezért nem létezhet ilyen $T \ne 0$ periódus, a függvény **nem periodikus**. $\blacksquare$

::: elmelet
**Elméleti háttér — Függvények összege és összemérhetetlen frekvenciák.**

- **Összemérhető periódusok:** Ha $\frac{T_1}{T_2} = \frac{p}{q} \in \mathbb{Q}$, akkor az összeg periodikus, és periódusa $q T_1 = p T_2$.
- **Inkommenzurábilis (összemérhetetlen) frekvenciák:** Ha a periódusok aránya irracionális (mint $1$ és $\sqrt{2}$), az összegfüggvény sosem ismétli önmagát pontosan, ún. kvázi-periodikus függvényt kapunk.
:::

## Gy77.1. feladat

a) Bizonyítsuk be, hogy tetszőleges $f : \mathbb{R} \to \mathbb{R}$ függvény esetén a szigorú lokális maximumhelyek halmaza legfeljebb megszámlálható!

b) Következtessünk ebből arra, hogy nem létezik olyan függvény, amelynek minden pontban szigorú lokális maximuma van!

**Megoldás.**

a) Jelölje $M$ az $f$ függvény szigorú lokális maximumhelyeinek halmazát:
$$M = \{x \in \mathbb{R} : \exists \delta_x > 0 \, \forall y \in (x - \delta_x, x + \delta_x) \setminus \{x\} : f(y) < f(x)\}.$$
Minden $x \in M$ ponthoz a racionális számok sűrűsége miatt választhatunk két racionális számot $p_x, q_x \in \mathbb{Q}$ úgy, hogy:
$$x - \delta_x < p_x < x < q_x < x + \delta_x.$$
Ekkor az $I_x = (p_x, q_x)$ egy racionális végpontú nyílt intervallum, amely tartalmazza $x$-et, és $I_x \subset (x - \delta_x, x + \delta_x)$.
A szigorú lokális maximum definíciója miatt az $x$ pont a maximális pont ezen az $I_x$ intervallumon:
$$f(y) < f(x) \quad \forall y \in I_x \setminus \{x\}.$$
Rendeljük hozzá minden $x \in M$ ponthoz a $(p_x, q_x) \in \mathbb{Q} \times \mathbb{Q}$ párt.
Megmutatjuk, hogy ez a hozzárendelés INJEKTÍV:
Tegyük fel indirekt, hogy két különböző pontnak, $x_1 < x_2 \in M$-nek ugyanaz lenne a hozzárendelt intervalluma: $I_{x_1} = I_{x_2} = (p, q)$.
Ekkor mindkét pont beleesik az $(p, q)$ intervallumba: $x_1, x_2 \in (p, q)$.
- Mivel $x_1$ a szigorú maximum $(p, q)$-n és $x_2 \in (p, q) \setminus \{x_1\}$, ezért $f(x_2) < f(x_1)$.
- Mivel $x_2$ a szigorú maximum $(p, q)$-n és $x_1 \in (p, q) \setminus \{x_2\}$, ezért $f(x_1) < f(x_2)$.
A kettő együtt $f(x_1) < f(x_2) < f(x_1)$, ami lehetetlen!
Ezért különböző szigorú lokális maximumhelyekhez különböző racionális intervallumok tartoznak.
Mivel a racionális végpontú intervallumok halmaza kölcsönösen egyértelműen megfeleltethető a $\mathbb{Q} \times \mathbb{Q}$ megszámlálható halmaz egy részhalmazának, a leképezés injektivitása miatt:
$$|M| \le |\mathbb{Q} \times \mathbb{Q}| = \aleph_0.$$
A szigorú lokális maximumhelyek halmaza tehát valóban **legfeljebb megszámlálható**. $\blacksquare$

b) Ha létezne olyan függvény, amelynek minden pontban szigorú lokális maximuma van, akkor a szigorú lokális maximumhelyek halmaza a teljes valós számegyenes lenne: $M = \mathbb{R}$.
Azonban $\mathbb{R}$ kontinuum számosságú ($|\mathbb{R}| = \mathfrak{c} > \aleph_0$), ami ellentmond annak, hogy $M$ legfeljebb megszámlálható!
Ezért ilyen függvény **nem létezhet**. $\blacksquare$

::: elmelet
**Elméleti háttér — Szigorú lokális szélsőértékek megszámlálhatósága.**

- **Injektív beágyazás racionális intervallumokba:** Mivel egy intervallumon legfeljebb egyetlen szigorú maximum lehet, minden ilyen pont egyértelműen azonosítható egy racionális végpontú intervallummal.
- **Megjegyzés a nem szigorú szélsőértékekre:** A gyenge lokális maximumokra a tétel NEM igaz! Pl. $f(x) \equiv 0$ konstans függvény esetén MINDEN pont lokális maximumhely (kontinuum sok van belőlük).
:::

## Gy77.2. feladat

a) Mutassunk példát olyan függvényre, amelynek nem szigorú (gyenge) lokális maximumhelyei kontinuum sokan vannak!

b) Konstruáljunk olyan $f : \mathbb{R} \to \mathbb{R}$ függvényt, amelynek szigorú lokális maximumhelyei megszámlálhatóan végtelen sűrű halmazt alkotnak a számegyenesen!

**Megoldás.**

a) Tekintsük a konstans függvényt:
$$f(x) = 0 \quad \text{minden } x \in \mathbb{R} \text{ esetén}.$$
Minden $x_0 \in \mathbb{R}$ pont tetszőleges $\delta > 0$ környezetében minden $x$-re $f(x) = 0 \le 0 = f(x_0)$.
A gyenge lokális maximum definíciója szerint a valós számegyenes MINDEN pontja lokális maximumhely!
Mivel $|\mathbb{R}| = \mathfrak{c}$, a gyenge lokális maximumhelyek halmaza kontinuum számosságú.
(Nem triviális példa: egy szakaszosan konstans „lépcsős” függvény vagy egy olyan függvény, amely egy Cantor-halmazon konstans és azon kívül szigorúan kisebb.)

b) Olyan függvényt keresünk, amelynek minden racionális pontban szigorú lokális maximuma van.
Alakítsuk át a Dirichlet- vagy Riemann-függvényt:
Tekintsük a negatív Riemann-függvényt:
$$f(x) = \begin{cases}
-\frac{1}{q}, & \text{ha } x = \frac{p}{q} \in \mathbb{Q} \text{ egyszerűsített tört } (q \in \mathbb{N}), \\
-1, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}.
\end{cases}$$
Hoppá, itt az irracionálisokon $-1$, a racionálisokon $-1/q > -1$, de nézzük meg a környezetet:
Legyen még szebb konstrukció:
Minden racionális $q_k \in \mathbb{Q}$ köré építsünk egy keskeny sátrat (háromszög alakú csúcsot)!
Mivel $\mathbb{Q}$ megszámlálható, sorba rendezhető: $\mathbb{Q} = \{r_1, r_2, r_3, \dots\}$.
Legyen $f(x) = -D(x)$ helyett:
Legyen $f(x) = 0$, ha $x \in \mathbb{R} \setminus \mathbb{Q}$, és ha $x = \frac{p}{q} \in \mathbb{Q}$, akkor legyen $f(x) = \frac{1}{q}$ (maga a pozitív Riemann-függvény!).
Vizsgáljuk meg a Riemann-függvényt egy rögzített $x_0 = \frac{p}{q} \in \mathbb{Q}$ racionális pontban:
Itt $R(x_0) = \frac{1}{q} > 0$.
A Gy87 feladat szerint a Riemann-függvénynek csak véges sok olyan pontja van az egész számegyenesen, ahol értéke legalább $\frac{1}{q}$ (hiszen a nevező csak $1, 2, \dots, q$ lehet).
Ezért létezik olyan $\delta > 0$ kis sugár, hogy az $(x_0 - \delta, x_0 + \delta)$ pontozott környezetben NINCS más olyan pont, amelynek értéke elérné az $\frac{1}{q}$-t!
Minden $x \in \dot{B}(x_0, \delta)$ esetén:
- ha $x$ irracionális: $R(x) = 0 < \frac{1}{q} = R(x_0)$;
- ha $x$ racionális: nevezője $> q$, így $R(x) = \frac{1}{q'} < \frac{1}{q} = R(x_0)$.
Tehát MINDEN $x \in \dot{B}(x_0, \delta)$ pontra:
$$R(x) < R(x_0)!$$
Ez pontosan azt jelenti, hogy a Riemann-függvénynek MINDEN racionális pontban SZIGORÚ LOKÁLIS MAXIMUMA van!
Mivel a racionális számok $\mathbb{Q}$ halmaza megszámlálhatóan végtelen és sűrű $\mathbb{R}$-ben, a Riemann-függvény szigorú lokális maximumhelyei éppen a $\mathbb{Q}$ sűrű halmazt alkotják. $\blacksquare$

::: elmelet
**Elméleti háttér — A Riemann-függvény lokális szélsőérték-struktúrája.**

- **Zseniális tulajdonság:** A Riemann-függvény minden racionális pontban szigorú lokális maximummal rendelkezik, miközben az irracionális pontok mind lokális (és globális) minimumok!
- **Sűrű maximumok:** Bár a szigorú lokális maximumok halmaza legfeljebb megszámlálható lehet, ez a megszámlálható halmaz lehet sűrű $\mathbb{R}$-ben (mint $\mathbb{Q}$).
:::

## Gy78.1. feladat

a) Írjuk fel a konvexitás három pontra vonatkozó differenciahányadosos jellemzését (a szelő meredekségek monotonitását)!

b) Bizonyítsuk be a különbségi hányados módszerével, hogy az $f(x) = x^2$ függvény szigorúan konvex a teljes $\mathbb{R}$ számegyenesen!

**Megoldás.**

a) **Tétel (Három pont / szelő meredekség tétel):**
Egy $f : I \to \mathbb{R}$ függvény pontosan akkor konvex az $I$ intervallumon, ha tetszőleges $x_1 < x_2 < x_3 \in I$ pontok esetén:
$$\frac{f(x_2) - f(x_1)}{x_2 - x_1} \le \frac{f(x_3) - f(x_1)}{x_3 - x_1} \le \frac{f(x_3) - f(x_2)}{x_3 - x_2}.$$
A függvény pontosan akkor szigorúan konvex, ha a fenti relációk szigorúak ($<$).
Geometriailag: a szelő meredeksége szigorúan növekszik, ahogy a pontokat jobbra toljuk.

b) Legyenek $x_1 < x_2 < x_3 \in \mathbb{R}$ tetszőleges valós számok.
Számítsuk ki a bal és jobb oldali különbségi hányadosokat az $f(x) = x^2$ függvényre:
1. Az első szelő meredeksége:
$$\frac{f(x_2) - f(x_1)}{x_2 - x_1} = \frac{x_2^2 - x_1^2}{x_2 - x_1} = \frac{(x_2 - x_1)(x_2 + x_1)}{x_2 - x_1} = x_1 + x_2.$$
2. A második szelő meredeksége:
$$\frac{f(x_3) - f(x_2)}{x_3 - x_2} = \frac{x_3^2 - x_2^2}{x_3 - x_2} = \frac{(x_3 - x_2)(x_3 + x_2)}{x_3 - x_2} = x_2 + x_3.$$
Hasonlítsuk össze a két meredekséget:
$$(x_1 + x_2) < (x_2 + x_3) \iff x_1 < x_3.$$
Mivel a feltevés szerint $x_1 < x_2 < x_3$, az $x_1 < x_3$ egyenlőtlenség automatikusan teljesül!
A szelők meredeksége tehát szigorúan monoton növekvő:
$$\frac{f(x_2) - f(x_1)}{x_2 - x_1} < \frac{f(x_3) - f(x_2)}{x_3 - x_2}.$$
A tétel alapján ez bizonyítja, hogy az $f(x) = x^2$ függvény szigorúan konvex $\mathbb{R}$-en. $\blacksquare$

::: elmelet
**Elméleti háttér — Konvexitás differenciahányadosos ekvivalenciája.**

- **Geometriai jelentés:** A konvexitás azt jelenti, hogy a függvény grafikonja bármely két pontját összekötő húr alatt marad:
  $$f(\lambda x + (1-\lambda)y) \le \lambda f(x) + (1-\lambda)f(y) \quad (\lambda \in [0, 1]).$$
- **A szelő-módszer előnye:** A differenciahányadosos vizsgálatderiválás nélkül, tisztán algebrai úton teszi lehetővé a konvexitás ellenőrzését.
:::

## Gy78.2. feladat

a) Bizonyítsuk be a különbségi hányadosok segítségével, hogy az $f(x) = -\sqrt{x}$ függvény szigorúan konvex a $[0, \infty)$ intervallumon (azaz a négyzetgyökfüggvény szigorúan konkáv)!

b) Igazoljuk, hogy két konvex függvény összege konvex, és ha legalább az egyik szigorúan konvex, akkor az összeg szigorúan konvex!

**Megoldás.**

a) Legyenek $0 \le x_1 < x_2 < x_3$ tetszőleges nemnegatív valós számok.
Számítsuk ki a szelők meredekségét az $f(x) = -\sqrt{x}$ függvényre:
1. Első szelő:
$$\frac{f(x_2) - f(x_1)}{x_2 - x_1} = \frac{-\sqrt{x_2} - (-\sqrt{x_1})}{x_2 - x_1} = -\frac{\sqrt{x_2} - \sqrt{x_1}}{x_2 - x_1} = -\frac{1}{\sqrt{x_1} + \sqrt{x_2}}.$$
2. Második szelő:
$$\frac{f(x_3) - f(x_2)}{x_3 - x_2} = \frac{-\sqrt{x_3} - (-\sqrt{x_2})}{x_3 - x_2} = -\frac{1}{\sqrt{x_2} + \sqrt{x_3}}.$$
Hasonlítsuk össze a két meredekséget:
Azt kell belátnunk, hogy:
$$-\frac{1}{\sqrt{x_1} + \sqrt{x_2}} < -\frac{1}{\sqrt{x_2} + \sqrt{x_3}} \iff \frac{1}{\sqrt{x_1} + \sqrt{x_2}} > \frac{1}{\sqrt{x_2} + \sqrt{x_3}}.$$
Mivel mindkét nevező pozitív, ez ekvivalens a nevezők fordított relációjával:
$$\sqrt{x_1} + \sqrt{x_2} < \sqrt{x_2} + \sqrt{x_3} \iff \sqrt{x_1} < \sqrt{x_3}.$$
Mivel $0 \le x_1 < x_3$, a négyzetgyök szigorú monotonitása miatt $\sqrt{x_1} < \sqrt{x_3}$ valóban teljesül!
A szelő meredeksége szigorúan növekszik, így $f(x) = -\sqrt{x}$ szigorúan konvex a $[0, \infty)$-en, amiből $\sqrt{x}$ szigorúan konkáv. $\blacksquare$

b) Legyenek $f, g : I \to \mathbb{R}$ konvex függvények, és $h = f + g$.
Legyenek $x, y \in I$ és $\lambda \in [0, 1]$.
A konvexitás definíciója szerint:
$$f(\lambda x + (1-\lambda)y) \le \lambda f(x) + (1-\lambda)f(y),$$
$$g(\lambda x + (1-\lambda)y) \le \lambda g(x) + (1-\lambda)g(y).$$
Adjuk össze a két egyenlőtlenséget:
$$h(\lambda x + (1-\lambda)y) = f(\lambda x + (1-\lambda)y) + g(\lambda x + (1-\lambda)y) \le \lambda [f(x) + g(x)] + (1-\lambda)[f(y) + g(y)] = \lambda h(x) + (1-\lambda)h(y).$$
Ez bizonyítja, hogy $h$ konvex.
Továbbá ha $x \ne y$, $\lambda \in (0, 1)$, és $f$ szigorúan konvex, akkor az első egyenlőtlenségben szigorú reláció ($<$) áll fenn, így az összeadás után is szigorú relációt kapunk:
$$h(\lambda x + (1-\lambda)y) < \lambda h(x) + (1-\lambda)h(y).$$
Tehát az összeg szigorúan konvex. $\blacksquare$

::: elmelet
**Elméleti háttér — Konvex és konkáv függvények alaptulajdonságai.**

- **Konkávitás definíciója:** $g$ konkáv $\iff -g$ konvex. A húr a grafikon alatt fut.
- **Konvex függvények kúpja:** A konvex függvények halmaza konvex kúpot alkot: nemnegatív lineáris kombinációjuk ($c_1 f + c_2 g$, ahol $c_1, c_2 \ge 0$) szintén konvex.
:::

## Gy79.1. feladat

Bizonyítsuk be teljes indukcióval a Jensen-egyenlőtlenséget tetszőleges véges sok tagra:
ha $f : I \to \mathbb{R}$ konvex függvény, akkor minden $n \ge 2$ egész számra, tetszőleges $x_1, \dots, x_n \in I$ pontokra és tetszőleges $\lambda_1, \dots, \lambda_n \ge 0$ súlyokra ($\sum_{i=1}^n \lambda_i = 1$) érvényes:
$$f\left(\sum_{i=1}^n \lambda_i x_i\right) \le \sum_{i=1}^n \lambda_i f(x_i)!$$

**Megoldás.**

Teljes indukciót alkalmazunk a tagok $n$ számára:

1. *Alaplépés ($n = 2$):*
$n = 2$ esetén $\lambda_1, \lambda_2 \ge 0$ és $\lambda_1 + \lambda_2 = 1$.
Jelölje $\lambda = \lambda_1$, ekkor $\lambda_2 = 1 - \lambda$, és $\lambda \in [0, 1]$.
Az egyenlőtlenség ekkor:
$$f(\lambda x_1 + (1-\lambda)x_2) \le \lambda f(x_1) + (1-\lambda)f(x_2),$$
ami pontosan megegyezik a konvexitás definíciójával! Tehát $n = 2$-re az állítás fennáll.

2. *Indukciós feltevés:*
Tegyük fel, hogy az állítás igaz valamely rögzített $n \ge 2$ esetén tetszőleges $n$ darab pontra és nemnegatív súlyokra, amelyek összege $1$.

3. *Indukciós lépés ($(n+1)$ tagra):*
Legyenek $x_1, \dots, x_n, x_{n+1} \in I$ és $\lambda_1, \dots, \lambda_n, \lambda_{n+1} \ge 0$ úgy, hogy $\sum_{i=1}^{n+1} \lambda_i = 1$.
- Ha $\lambda_{n+1} = 1$, akkor $\lambda_1 = \dots = \lambda_n = 0$, az egyenlőtlenség mindkét oldala $f(x_{n+1})$, egyenlőség áll fenn.
- Tegyük fel, hogy $\lambda_{n+1} < 1$. Ekkor $1 - \lambda_{n+1} > 0$.
Bontsuk fel az argumentumot két részre:
$$\sum_{i=1}^{n+1} \lambda_i x_i = (1 - \lambda_{n+1}) \left(\sum_{i=1}^n \frac{\lambda_i}{1 - \lambda_{n+1}} x_i\right) + \lambda_{n+1} x_{n+1}.$$
Jelölje $y = \sum_{i=1}^n \frac{\lambda_i}{1 - \lambda_{n+1}} x_i$.
Vegyük észre, hogy az új súlyok összege:
$$\sum_{i=1}^n \frac{\lambda_i}{1 - \lambda_{n+1}} = \frac{1}{1 - \lambda_{n+1}} \sum_{i=1}^n \lambda_i = \frac{1 - \lambda_{n+1}}{1 - \lambda_{n+1}} = 1.$$
Mivel $I$ intervallum (konvex halmaz), az $y$ pont eleme $I$-nek.
Alkalmazzuk a 2-tagú Jensen-egyenlőtlenséget az $y$ és $x_{n+1}$ pontokra a $\mu = 1 - \lambda_{n+1}$ és $\lambda_{n+1}$ súlyokkal:
$$f\left((1 - \lambda_{n+1}) y + \lambda_{n+1} x_{n+1}\right) \le (1 - \lambda_{n+1}) f(y) + \lambda_{n+1} f(x_{n+1}).$$
Most alkalmazzuk az indukciós feltevést az $n$-tagú $y$ kifejezésre ($f(y)$-ra):
$$f(y) = f\left(\sum_{i=1}^n \frac{\lambda_i}{1 - \lambda_{n+1}} x_i\right) \le \sum_{i=1}^n \frac{\lambda_i}{1 - \lambda_{n+1}} f(x_i).$$
Ezt behelyettesítve a fenti becslésbe:
$$f\left(\sum_{i=1}^{n+1} \lambda_i x_i\right) \le (1 - \lambda_{n+1}) \left(\sum_{i=1}^n \frac{\lambda_i}{1 - \lambda_{n+1}} f(x_i)\right) + \lambda_{n+1} f(x_{n+1}) = \sum_{i=1}^n \lambda_i f(x_i) + \lambda_{n+1} f(x_{n+1}) = \sum_{i=1}^{n+1} \lambda_i f(x_i).$$
Ezzel az állítást $(n+1)$-re bebizonyítottuk.
A teljes indukció elve alapján a Jensen-egyenlőtlenség minden $n \ge 2$-re érvényes. $\blacksquare$

::: elmelet
**Elméleti háttér — A Jensen-egyenlőtlenség teljes indukciós levezetése.**

- **Johan Jensen (1906):** A modern egyenlőtlenség-elmélet legfontosabb eszköze. A súlypont függvényértéke nem haladja meg a függvényértékek súlypontját.
- **Szigorú egyenlőtlenség feltétele:** Ha $f$ szigorúan konvex és a súlyok mind pozitívak ($\lambda_i > 0$), egyenlőség PONTOSAN AKKOR áll fenn, ha minden pont egyenlő: $x_1 = x_2 = \dots = x_n$.
:::

## Gy79.2. feladat

Alkalmazzuk a Jensen-egyenlőtlenséget az $f(x) = -\ln x$ szigorúan konvex függvényre az $x_i > 0$ pontokban és $\lambda_i > 0$ súlyokkal ($\sum \lambda_i = 1$), és vezessük le belőle a súlyozott számtani és mértani közepek közötti általános egyenlőtlenséget!

**Megoldás.**

1. *Konvexitás ellenőrzése:*
Az $f(x) = -\ln x$ függvény értelmezési tartománya a $(0, \infty)$ intervallum.
Második deriváltja: $f'(x) = -\frac{1}{x}$, $f''(x) = \frac{1}{x^2} > 0$ minden $x > 0$-ra.
Mivel a második derivált szigorúan pozitív, az $f(x) = -\ln x$ függvény szigorúan konvex $(0, \infty)$-en.

2. *Jensen-egyenlőtlenség felírása:*
Legyenek $x_1, \dots, x_n > 0$ és $\lambda_1, \dots, \lambda_n > 0$ úgy, hogy $\sum_{i=1}^n \lambda_i = 1$.
A Jensen-egyenlőtlenség szerint:
$$f\left(\sum_{i=1}^n \lambda_i x_i\right) \le \sum_{i=1}^n \lambda_i f(x_i).$$
Behelyettesítve az $f(x) = -\ln x$ függvényt:
$$-\ln\left(\sum_{i=1}^n \lambda_i x_i\right) \le \sum_{i=1}^n \lambda_i (-\ln x_i) = -\sum_{i=1}^n \lambda_i \ln x_i.$$
Szorozzuk meg mindkét oldalt $(-1)$-gyel (az egyenlőtlenség iránya megfordul):
$$\ln\left(\sum_{i=1}^n \lambda_i x_i\right) \ge \sum_{i=1}^n \lambda_i \ln x_i.$$
Alkalmazzuk a logaritmus azonosságait a jobb oldalon:
$$\sum_{i=1}^n \lambda_i \ln x_i = \sum_{i=1}^n \ln(x_i^{\lambda_i}) = \ln\left(\prod_{i=1}^n x_i^{\lambda_i}\right).$$
Így az egyenlőtlenség alakja:
$$\ln\left(\sum_{i=1}^n \lambda_i x_i\right) \ge \ln\left(\prod_{i=1}^n x_i^{\lambda_i}\right).$$
Mivel az exponenciális függvény szigorúan monoton növekvő:
$$\sum_{i=1}^n \lambda_i x_i \ge \prod_{i=1}^n x_i^{\lambda_i}.$$
A bal oldalon a súlyozott számtani közép ($A_\lambda$), a jobb oldalon a súlyozott mértani közép ($G_\lambda$) áll:
$$A_\lambda \ge G_\lambda.$$
Speciálisan, ha a súlyok mind egyenlők: $\lambda_i = \frac{1}{n}$, akkor:
$$\frac{x_1 + \dots + x_n}{n} \ge \sqrt[n]{x_1 \dots x_n}.$$
Mivel $f$ szigorúan konvex, egyenlőség pontosan akkor áll fenn, ha $x_1 = \dots = x_n$. $\blacksquare$

::: elmelet
**Elméleti háttér — AM–GM levezetése a Jensen-egyenlőtlenségből.**

- **Az analízis eleganciája:** A klasszikus számtani-mértani egyenlőtlenség Cauchy-féle trükkös indukciója helyett a Jensen-egyenlőtlenség egyetlen sorban szolgáltatja nemcsak az egyenlő súlyú, hanem az általános súlyozott változatot is!
:::

## Gy80.1. feladat

a) Bizonyítsuk be a Jensen-egyenlőtlenség segítségével a számtani és négyzetes közepek közötti egyenlőtlenséget tetszőleges valós $a_1, \dots, a_n \in \mathbb{R}$ számokra:
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}!$$

b) Mutassuk meg, hogy ha $x_1, \dots, x_n > 0$ és $\sum_{i=1}^n x_i = 1$, akkor
$$\sum_{i=1}^n x_i^2 \ge \frac{1}{n},$$
és határozzuk meg az egyenlőség pontos feltételét!

**Megoldás.**

a) Tekintsük az $f(x) = x^2$ függvényt $\mathbb{R}$-en.
Mivel $f''(x) = 2 > 0$ minden $x \in \mathbb{R}$-re, az $f(x) = x^2$ függvény szigorúan konvex.
Alkalmazzuk a Jensen-egyenlőtlenséget az $a_1, \dots, a_n$ pontokra az egyenlő $\lambda_i = \frac{1}{n}$ súlyokkal:
$$f\left(\frac{a_1 + \dots + a_n}{n}\right) \le \frac{f(a_1) + \dots + f(a_n)}{n}.$$
Behelyettesítve $f(x) = x^2$-et:
$$\left(\frac{a_1 + \dots + a_n}{n}\right)^2 \le \frac{a_1^2 + \dots + a_n^2}{n}.$$
Mivel a jobb oldal nemnegatív, négyzetgyököt vonhatunk mindkét oldalból:
$$\left|\frac{a_1 + \dots + a_n}{n}\right| \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}.$$
Mivel egy szám kisebb vagy egyenlő a saját abszolút értékénél:
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}.$$
Egyenlőség pontosan akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$. $\blacksquare$

b) Alkalmazzuk az a) rész egyenlőtlenségét az $x_1, \dots, x_n$ pozitív számokra:
$$\left(\frac{x_1 + \dots + x_n}{n}\right)^2 \le \frac{\sum_{i=1}^n x_i^2}{n}.$$
A feltétel szerint $\sum_{i=1}^n x_i = 1$, így a bal oldal:
$$\left(\frac{1}{n}\right)^2 = \frac{1}{n^2}.$$
Ezt behelyettesítve:
$$\frac{1}{n^2} \le \frac{\sum_{i=1}^n x_i^2}{n}.$$
Szorozzuk meg mindkét oldalt a pozitív $n$ számmal:
$$\frac{1}{n} \le \sum_{i=1}^n x_i^2 \iff \sum_{i=1}^n x_i^2 \ge \frac{1}{n}.$$
Mivel $f(x) = x^2$ szigorúan konvex, egyenlőség pontosan akkor teljesül, ha minden tag egyenlő:
$$x_1 = x_2 = \dots = x_n = \frac{1}{n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Hatványközepek és a négyzetes közép.**

- **Hatványközepek monotonitása:**
  $$M_p(x) = \left(\frac{1}{n}\sum_{i=1}^n x_i^p\right)^{1/p}$$
  monoton növekvő függvénye $p$-nek: $M_{-1} \le M_0 \le M_1 \le M_2$ (harmonikus $\le$ mértani $\le$ számtani $\le$ négyzetes).
- **Variancia interpretáció:** $\frac{1}{n}\sum x_i^2 - (\bar{x})^2 = \operatorname{Var}(x) \ge 0$, egyenlőség pontosan akkor, ha nincs szórás (minden elem azonos).
:::

## Gy80.2. feladat

a) Bizonyítsuk be a harmonikus és számtani közép közötti egyenlőtlenséget tetszőleges $a_1, \dots, a_n > 0$ számokra:
$$\frac{n}{\sum_{i=1}^n \frac{1}{a_i}} \le \frac{\sum_{i=1}^n a_i}{n}!$$

b) Igazoljuk, hogy ha $x, y, z > 0$ és $x + y + z = 1$, akkor
$$\left(1 + \frac{1}{x}\right)\left(1 + \frac{1}{y}\right)\left(1 + \frac{1}{z}\right) \ge 64!$$

**Megoldás.**

a) Tekintsük az $f(x) = \frac{1}{x}$ függvényt a $(0, \infty)$ intervallumon.
Második deriváltja: $f''(x) = \frac{2}{x^3} > 0$ minden $x > 0$-ra, így $f$ szigorúan konvex.
Alkalmazzuk a Jensen-egyenlőtlenséget az $a_1, \dots, a_n$ pontokra az egyenlő $\lambda_i = \frac{1}{n}$ súlyokkal:
$$f\left(\frac{a_1 + \dots + a_n}{n}\right) \le \frac{f(a_1) + \dots + f(a_n)}{n}.$$
Behelyettesítve $f(x) = \frac{1}{x}$-et:
$$\frac{1}{\frac{a_1 + \dots + a_n}{n}} \le \frac{\frac{1}{a_1} + \dots + \frac{1}{a_n}}{n}.$$
Mivel mindkét oldal szigorúan pozitív, vegyük mindkét oldal reciprokát (a reláció megfordul):
$$\frac{a_1 + \dots + a_n}{n} \ge \frac{n}{\sum_{i=1}^n \frac{1}{a_i}} \iff H_n \le A_n.$$
Egyenlőség pontosan akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$. $\blacksquare$

b) Írjuk fel a kifejezés természetes logaritmusát:
$$\ln\left[\left(1 + \frac{1}{x}\right)\left(1 + \frac{1}{y}\right)\left(1 + \frac{1}{z}\right)\right] = \ln\left(1 + \frac{1}{x}\right) + \ln\left(1 + \frac{1}{y}\right) + \ln\left(1 + \frac{1}{z}\right).$$
Tekintsük a $g(t) = \ln\left(1 + \frac{1}{t}\right) = \ln(t + 1) - \ln t$ függvényt a $(0, \infty)$-en.
Deriváljuk kétszer:
$$g'(t) = \frac{1}{t + 1} - \frac{1}{t}, \qquad g''(t) = -\frac{1}{(t + 1)^2} + \frac{1}{t^2} = \frac{(t + 1)^2 - t^2}{t^2 (t + 1)^2} = \frac{2t + 1}{t^2(t + 1)^2}.$$
Mivel $t > 0$, ezért $2t + 1 > 0$, így $g''(t) > 0$.
A $g(t)$ függvény tehát szigorúan konvex a $(0, \infty)$ intervallumon!
Alkalmazzuk a Jensen-egyenlőtlenséget a $g$ függvényre $x, y, z$ pontokra $\lambda_1 = \lambda_2 = \lambda_3 = \frac{1}{3}$ súlyokkal:
$$\frac{g(x) + g(y) + g(z)}{3} \ge g\left(\frac{x + y + z}{3}\right).$$
Mivel a feltétel szerint $x + y + z = 1$, az argumentum $\frac{1}{3}$:
$$g\left(\frac{1}{3}\right) = \ln\left(1 + \frac{1}{1/3}\right) = \ln(1 + 3) = \ln 4.$$
Így:
$$g(x) + g(y) + g(z) \ge 3 \ln 4 = \ln(4^3) = \ln 64.$$
Mindkét oldalt az exponenciális függvénybe helyettesítve (mivel $e^u$ szigorúan növekvő):
$$\left(1 + \frac{1}{x}\right)\left(1 + \frac{1}{y}\right)\left(1 + \frac{1}{z}\right) \ge 64.$$
Egyenlőség pontosan akkor áll fenn, ha $x = y = z = \frac{1}{3}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Konvexitás logaritmusa és geometriai szorzatok becslése.**

- **Szorzatok minimalizálása logaritmussal:** Ha $\prod f(x_i)$ minimumát keressük, a logaritmust véve $\sum \ln f(x_i)$ vizsgálatára térünk át, ahol a $t \mapsto \ln f(t)$ konvexitása esetén a Jensen-egyenlőtlenség azonnal az egyenlő változókhoz tartozó minimumot adja.
:::

## Gy81.1. feladat

a) Bizonyítsuk be, hogy ha egy $f : I \to \mathbb{R}$ konvex függvény nem szigorúan konvex, akkor létezik olyan $[a, b] \subset I$ nem elfajuló intervallum ($a < b$), amelyen $f$ affin lineáris (azaz $f(x) = mx + c$ minden $x \in [a, b]$ esetén)!

b) Mutassunk példát folytonos, konvex, de nem szigorúan konvex függvényre!

**Megoldás.**

a) Mivel $f$ konvex, de nem szigorúan konvex, léteznek olyan $u < v \in I$ pontok és $\lambda \in (0, 1)$ súly, amelyre az egyenlőség teljesül a konvexitási definícióban:
$$f(\lambda u + (1-\lambda)v) = \lambda f(u) + (1-\lambda)f(v).$$
Jelölje $w = \lambda u + (1-\lambda)v \in (u, v)$.
A három pontra felírt differenciahányadosok (Gy78.1 tétel):
$$\frac{f(w) - f(u)}{w - u} \le \frac{f(v) - f(u)}{v - u} \le \frac{f(v) - f(w)}{v - w}.$$
Mivel $w$ a húr pontja, egyszerű behelyettesítéssel adódik, hogy e három meredekség MIND EGYENLŐ egymással:
$$m = \frac{f(v) - f(u)}{v - u} = \frac{f(w) - f(u)}{w - u} = \frac{f(v) - f(w)}{v - w}.$$
Megmutatjuk, hogy az EGÉSZ $[u, v]$ szakaszon $f$ megegyezik a szelővel:
Legyen $x \in [u, v]$ tetszőleges pont:
- Ha $x \in [u, w]$, akkor $u \le x \le w < v$. A konvexitás miatt a szelők meredeksége:
  $$m = \frac{f(w) - f(u)}{w - u} \le \frac{f(x) - f(u)}{x - u} \le \frac{f(v) - f(x)}{v - x} \le m.$$
  Mivel a két szélső érték megegyezik ($m$), a közbenső meredekségeknek is mind $m$-nek kell lenniük!
  Ebből következik, hogy $\frac{f(x) - f(u)}{x - u} = m \iff f(x) = f(u) + m(x - u)$.
- Ugyanez érvényes az $x \in [w, v]$ szakaszra is.
Tehát az $f$ függvény a teljes $[a, b] = [u, v]$ intervallumon affin lineáris: $f(x) = mx + c$. $\blacksquare$

b) *Példák:*
1. Az abszolútérték-függvény, $f(x) = |x|$:
   Konvex $\mathbb{R}$-en, de a $[0, \infty)$ félegyenesen $f(x) = x$ lineáris, így nem szigorúan konvex (pl. $u = 1, v = 3$ esetén $\lambda = 1/2$-re $|2| = \frac{|1| + |3|}{2} = 2$).
2. Szakaszosan sima függvény:
   $$g(x) = \begin{cases} x^2, & \text{ha } x \le 0, \\ 0, & \text{ha } 0 < x < 1, \\ (x - 1)^2, & \text{ha } x \ge 1. \end{cases}$$
   Ez a függvény folytonos, konvex, és a $[0, 1]$ intervallumon konstans $0$ (affin lineáris). $\blacksquare$

::: elmelet
**Elméleti háttér — Szigorú konvexitás és lineáris szakaszok.**

- **Húr és grafikon kapcsolata:** Konvex függvény grafikonja a húrja alatt vagy azon fut. Ha egyetlen belső pontban eléri a húrt, kénytelen a KÉT PONT KÖZÖTTI TELJES SZAKASZON a húron futni!
- **Optimalizálás jelentősége:** Szigorúan konvex függvénynek legfeljebb egyetlen minimuma lehet. Nem szigorúan konvex függvénynél a minimumok halmaza egy egész intervallum lehet (pl. a fenti $g$ függvénynél a $[0, 1]$ intervallum).
:::

## Gy81.2. feladat

a) Bizonyítsuk be, hogy ha egy nyílt intervallumon konvex $f : (a, b) \to \mathbb{R}$ függvénynek létezik lokális maximumhelye, akkor a függvény szükségképpen konstans az egész $(a, b)$ intervallumon!

b) Igaz-e ugyanez az állítás zárt intervallumon értelmezett konvex függvényre? Hozzunk ellenpéldát!

**Megoldás.**

a) Legyen $c \in (a, b)$ az $f$ egy lokális maximumhelye.
Ez azt jelenti, hogy létezik olyan $\delta > 0$, hogy $(c - \delta, c + \delta) \subset (a, b)$, és:
$$f(x) \le f(c) \quad \text{minden } x \in (c - \delta, c + \delta) \text{ esetén}.$$
1. *A függvény konstans a $c$ környezetében:*
Válasszunk egy tetszőleges $0 < h < \delta$ elmozdulást. Ekkor $c - h, c + h \in (c - \delta, c + \delta)$.
Írjuk fel a $c$ pontot e két pont felezőpontjaként:
$$c = \frac{(c - h) + (c + h)}{2}.$$
A konvexitás definíciója szerint $\lambda = 1/2$ mellett:
$$f(c) = f\left(\frac{(c - h) + (c + h)}{2}\right) \le \frac{f(c - h) + f(c + h)}{2}.$$
Mivel $c$ lokális maximum, $f(c - h) \le f(c)$ és $f(c + h) \le f(c)$.
A kettő összege legfeljebb $2f(c)$, így:
$$f(c) \le \frac{f(c - h) + f(c + h)}{2} \le \frac{f(c) + f(c)}{2} = f(c).$$
A közrefogás miatt mindenhol egyenlőségnek kell állnia, ami csak úgy lehetséges, ha:
$$f(c - h) = f(c) \qquad \text{és} \qquad f(c + h) = f(c).$$
Ez minden $0 < h < \delta$ esetén teljesül, tehát $f(x) = f(c)$ konstans a $(c - \delta, c + \delta)$ nyílt intervallumon.
2. *Kiterjesztés az egész $(a, b)$-re:*
Ha $f$ egy nyílt szakaszon konstans, akkor deriváltja ott $0$.
A differenciahányadosok monotonitása miatt ha a meredekség egy intervallumon $0$, akkor balra nem lehet pozitív és jobbra nem lehet negatív.
Formálisabban: tetszőleges $x \in (a, b)$ esetén $c$ felírható $x$ és egy másik alkalmas pont konvex kombinációjaként, így ha $f(x) < f(c)$ lenne, a szelő meredeksége ellentmondana a konvexitásnak.
Ezért $f(x) = f(c)$ konstans a teljes $(a, b)$ intervallumon. $\blacksquare$

b) **ZÁRT INTERVALLUMRA NEM IGAZ!**
*Ellenpélda:* Tekintsük az $f : [0, 1] \to \mathbb{R}$, $f(x) = x^2$ függvényt.
- Ez a függvény konvex $[0, 1]$-en.
- Maximumát az $x = 1$ végpontban veszi fel: $f(1) = 1$, ami lokális (és globális) maximumhely.
- Mégsem konstans a függvény!
(A tétel azért bukik el zárt intervallumon, mert a végpontban nem tudunk mindkét irányban $c - h$ és $c + h$ szimmetrikus környezetet venni, a végpont nem áll elő belső pontok konvex kombinációjaként.)

::: elmelet
**Elméleti háttér — Maximum-elv konvex függvényekre.**

- **Maximum-elv:** Konvex függvény lokális maximuma nyílt halmazon csak akkor létezhet, ha a függvény konstans. Kompakt intervallumon a konvex függvény maximumát MINDIG a határpontokban (végpontokban) veszi fel:
  $$\max_{x \in [a, b]} f(x) = \max\{f(a), f(b)\}.$$
:::

## Gy82.1. feladat

a) Bizonyítsuk be a szelők meredekségének monotonitása alapján, hogy ha $f : (a, b) \to \mathbb{R}$ konvex függvény egy nyílt intervallumon, akkor minden belső zárt $[c, d] \subset (a, b)$ részintervallumon Lipschitz-folytonos, így szükségképpen folytonos!

b) Mutassunk példát zárt $[0, 1]$ intervallumon konvex függvényre, amely a végpontban NEM folytonos!

**Megoldás.**

a) Legyen $[c, d] \subset (a, b)$ tetszőleges belső zárt intervallum.
Mivel $(a, b)$ nyílt, választhatunk olyan $u, v$ pontokat, hogy:
$$a < u < c \le d < v < b.$$
Legyenek $x < y \in [c, d]$ tetszőleges pontok.
A négy pontra felírt szelő-egyenlőtlenség (Gy78.1) szerint az $u < x < y < v$ elrendezésre:
$$\frac{f(c) - f(u)}{c - u} \le \frac{f(x) - f(u)}{x - u} \le \frac{f(y) - f(x)}{y - x} \le \frac{f(v) - f(y)}{v - y} \le \frac{f(v) - f(d)}{v - d}.$$
Jelölje:
$$m = \frac{f(c) - f(u)}{c - u}, \qquad M = \frac{f(v) - f(d)}{v - d}.$$
Ekkor bármely $x < y \in [c, d]$ pontpárra:
$$m \le \frac{f(y) - f(x)}{y - x} \le M.$$
Legyen $L = \max\{|m|, |M|\} < \infty$. Ekkor:
$$\left|\frac{f(y) - f(x)}{y - x}\right| \le L \iff |f(y) - f(x)| \le L |y - x|.$$
Ez a Lipschitz-feltétel az $[c, d]$ intervallumon!
Ha most $y \to x$, akkor $|f(y) - f(x)| \le L|y - x| \to 0$, vagyis a függvény folytonos minden $x \in [c, d]$ pontban.
Mivel minden $x \in (a, b)$ pont lefedhető egy ilyen belső zárt intervallummal, a függvény folytonos a teljes $(a, b)$ nyílt intervallumon. $\blacksquare$

b) *Példa zárt intervallumon szakadó konvex függvényre:*
Definiáljuk az $f : [0, 1] \to \mathbb{R}$ függvényt az alábbiak szerint:
$$f(x) = \begin{cases} 0, & \text{ha } x \in [0, 1), \\ 1, & \text{ha } x = 1. \end{cases}$$
- *Konvex:* Minden $x, y \in [0, 1)$ esetén $f(x) = f(y) = 0$, a konvexitás triviális.
  Ha $y = 1$, akkor tetszőleges $x \in [0, 1)$ és $\lambda \in [0, 1]$ mellett:
  $$\lambda x + (1-\lambda) \cdot 1 < 1 \quad (\text{ha } \lambda > 0),$$
  így a bal oldal $f(\lambda x + 1 - \lambda) = 0$.
  A jobb oldal: $\lambda f(x) + (1-\lambda)f(1) = 0 + (1-\lambda) \cdot 1 = 1 - \lambda \ge 0$.
  Mivel $0 \le 1 - \lambda$, az egyenlőtlenség teljesül, $f$ konvex a zárt $[0, 1]$-en!
- *Mégsem folytonos:* $\lim_{x\to 1-} f(x) = 0 \ne f(1) = 1$, a függvény szakad az $x = 1$ végpontban. $\blacksquare$

::: elmelet
**Elméleti háttér — Nyílt intervallumon való automatikus folytonosság.**

- **A konvexitás ereje:** Nyílt intervallumon a konvexitás AUTOMATIKUSAN magával vonja a folytonosságot (sőt lokális Lipschitz-tulajdonságot)!
- **Végponti ugrás:** Zárt intervallumon a végpontban a függvényérték „felugorhat” anélkül, hogy a konvexitás megsérülne (csak lefelé nem ugorhat).
:::

## Gy82.2. feladat

Legyen $f : (a, b) \to \mathbb{R}$ konvex függvény nyílt intervallumon.

a) Bizonyítsuk be, hogy minden $x \in (a, b)$ pontban léteznek a bal és jobb oldali féloldali deriváltak, és érvényes:
$$f'_-(x) \le f'_+(x)!$$

b) Igazoljuk, hogy az $x \mapsto f'_+(x)$ és $x \mapsto f'_-(x)$ függvények monoton növekvőek!

**Megoldás.**

a) Rögzítsünk egy $x \in (a, b)$ pontot, és tekintsük a differenciahányados-függvényt:
$$\varphi(h) = \frac{f(x + h) - f(x)}{h}.$$
A Gy78.1 szelő-tétel szerint ha $h_1 < h_2$, akkor $\varphi(h_1) \le \varphi(h_2)$.
- Ha $h > 0$, akkor $\varphi(h)$ monoton csökken, amint $h \to 0+$, és alulról korlátos például a tetszőleges bal oldali differenciahányadossal ($\varphi(-k) \le \varphi(h)$ minden $k > 0$-ra).
  Ezért a jobb oldali határérték LÉTEZIK mint infimum:
  $$f'_+(x) = \lim_{h\to 0+} \frac{f(x + h) - f(x)}{h} = \inf_{h > 0} \frac{f(x + h) - f(x)}{h}.$$
- Hasonlóan, ha $h < 0$, $\varphi(h)$ monoton nő, amint $h \to 0-$, és felülről korlátos tetszőleges jobb oldali differenciahányadossal.
  Ezért a bal oldali határérték LÉTEZIK mint szuprémum:
  $$f'_-(x) = \lim_{h\to 0-} \frac{f(x + h) - f(x)}{h} = \sup_{h < 0} \frac{f(x + h) - f(x)}{h}.$$
- Mivel minden $h_1 < 0 < h_2$ esetén $\varphi(h_1) \le \varphi(h_2)$, ezért a határértékekre is:
  $$f'_-(x) \le f'_+(x). \quad \blacksquare$$

b) Legyenek $x_1 < x_2 \in (a, b)$.
Válasszunk egy közbenső pontot, vagy tekintsük a két pont közötti szelőt:
$$S = \frac{f(x_2) - f(x_1)}{x_2 - x_1}.$$
A szelő-tétel szerint:
- $h > 0$ mellett ha $x_1 + h < x_2$, akkor $\frac{f(x_1 + h) - f(x_1)}{h} \le S$, amiből $h \to 0+$ esetén:
  $$f'_+(x_1) \le S.$$
- Másrészt $h < 0$ mellett ha $x_2 + h > x_1$, akkor $S \le \frac{f(x_2 + h) - f(x_2)}{h}$, amiből $h \to 0-$ esetén:
  $$S \le f'_-(x_2).$$
A kettőt összevetve az a) rész egyenlőtlenségével:
$$f'_-(x_1) \le f'_+(x_1) \le S \le f'_-(x_2) \le f'_+(x_2).$$
Különösen:
$$f'_-(x_1) \le f'_-(x_2) \qquad \text{és} \qquad f'_+(x_1) \le f'_+(x_2).$$
Tehát mindkét féloldali derivált monoton növekvő függvény. $\blacksquare$

::: elmelet
**Elméleti háttér — Konvex függvények differenciálhatósági tulajdonságai.**

- **Majdnem mindenütt differenciálhatóság:** Mivel az egyoldali deriváltak monoton függvények, a Gy60.2 tétel szerint legfeljebb megszámlálható pontban szakadhatnak meg.
  Ahol a két egyoldali derivált megegyezik ($f'_-(x) = f'_+(x)$), ott a függvény közönséges értelemben differenciálható!
  Tehát egy nyílt intervallumon konvex függvény legfeljebb megszámlálható sok pont kivételével mindenütt differenciálható!
:::

## Gy83.1. feladat

A függvényhatárérték $\varepsilon$-$\delta$ definíciója alapján igazoljuk az alábbi határértékeket, tetszőleges $\varepsilon > 0$-hoz megadva egy megfelelő $\delta(\varepsilon) > 0$ értéket:

a) $\lim_{x\to 3} (4x - 5) = 7$;

b) $\lim_{x\to 2} (x^2 + 3x) = 10$.

**Megoldás.**

a) Tekintsük a függvényérték eltérését a feltételezett határértéktől:
$$|f(x) - 7| = |(4x - 5) - 7| = |4x - 12| = 4 |x - 3|.$$
Azt szeretnénk, hogy ha $0 < |x - 3| < \delta$, akkor $4|x - 3| < \varepsilon$.
Ez azonnal adja a feltételt:
$$|x - 3| < \frac{\varepsilon}{4}.$$
Válasszuk a $\delta(\varepsilon) = \frac{\varepsilon}{4} > 0$ értéket.
Ekkor tetszőleges $x \in \mathbb{R}$ esetén ha $0 < |x - 3| < \delta(\varepsilon)$, akkor:
$$|f(x) - 7| = 4|x - 3| < 4 \cdot \frac{\varepsilon}{4} = \varepsilon.$$
Ez bizonyítja, hogy $\lim_{x\to 3} (4x - 5) = 7$.

b) Vizsgáljuk az eltérést az $x = 2$ pont körül:
$$|f(x) - 10| = |x^2 + 3x - 10| = |(x - 2)(x + 5)| = |x - 2|\,|x + 5|.$$
Korlátozzuk az $|x + 5|$ tényezőt egy előzetes környezetválasztással:
Tegyük fel először, hogy $|x - 2| < 1$.
Ekkor $-1 < x - 2 < 1 \iff 1 < x < 3$.
Így $x + 5 < 3 + 5 = 8$, amiből $|x + 5| < 8$.
Ekkor a szorzatra:
$$|f(x) - 10| = |x - 2|\,|x + 5| < 8 |x - 2|.$$
Azt szeretnénk, hogy $8|x - 2| < \varepsilon \iff |x - 2| < \frac{\varepsilon}{8}$.
Ahhoz, hogy az előzetes $|x - 2| < 1$ feltétel is teljesüljön, válasszuk:
$$\delta(\varepsilon) = \min\left\{1, \frac{\varepsilon}{8}\right\} > 0.$$
Ekkor ha $0 < |x - 2| < \delta(\varepsilon)$, akkor $|x - 2| < 1$ miatt $|x + 5| < 8$, és $|x - 2| < \frac{\varepsilon}{8}$ miatt:
$$|f(x) - 10| < 8 \cdot \frac{\varepsilon}{8} = \varepsilon.$$
A definíció alapján tehát valóban $\lim_{x\to 2} (x^2 + 3x) = 10$. $\blacksquare$

::: elmelet
**Elméleti háttér — A Cauchy-féle $arepsilon$-$\delta$ technika lépései.**

- **Definíció:** $\lim_{x\to a} f(x) = b \iff \forall \varepsilon > 0 \, \exists \delta > 0 \, \forall x \in D(f): (0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon)$.
- **Szorzattá bontás és korlátozás:** Magasabb fokú polinomoknál az $|f(x) - b| = |x - a| \cdot |Q(x)|$ felbontást alkalmazzuk. Egy rögzített (pl. $\delta_0 = 1$) környezetben felső becslést adunk $|Q(x)| \le M$-re, majd $\delta = \min\{1, \varepsilon/M\}$-et választunk.
:::

## Gy83.2. feladat

Határozzuk meg az alábbi határértékeket, és a definíció alapján adjunk meg adott $\varepsilon > 0$-hoz alkalmas $\delta(\varepsilon) > 0$ értéket:

a) $\lim_{x\to 1} \dfrac{2x + 1}{x + 2} = 1$;

b) $\lim_{x\to 4} \sqrt{x} = 2$.

**Megoldás.**

a) 1. *Eltérés vizsgálata:*
$$\left|\frac{2x + 1}{x + 2} - 1\right| = \left|\frac{2x + 1 - (x + 2)}{x + 2}\right| = \left|\frac{x - 1}{x + 2}\right| = \frac{|x - 1|}{|x + 2|}.$$
2. *Nevező alsó becslése:*
Tegyük fel, hogy $|x - 1| < 1 \iff 0 < x < 2$.
Ekkor $x + 2 > 0 + 2 = 2$, amiből $|x + 2| > 2$, így a reciprokára: $\frac{1}{|x + 2|} < \frac{1}{2}$.
Ekkor:
$$\left|\frac{2x + 1}{x + 2} - 1\right| < \frac{|x - 1|}{2}.$$
Azt szeretnénk, hogy $\frac{|x - 1|}{2} < \varepsilon \iff |x - 1| < 2\varepsilon$.
Válasszuk a $\delta(\varepsilon) = \min\{1, 2\varepsilon\} > 0$ értéket.
Ekkor minden $0 < |x - 1| < \delta(\varepsilon)$ esetén $|f(x) - 1| < \varepsilon$.

b) 1. *Eltérés vizsgálata:*
Gyöktelenítsük a számlálót konjugálttal való bővítéssel ($x \ge 0$ mellett):
$$|\sqrt{x} - 2| = \frac{|\sqrt{x} - 2|(\sqrt{x} + 2)}{\sqrt{x} + 2} = \frac{|x - 4|}{\sqrt{x} + 2}.$$
2. *Nevező becslése:*
Mivel $\sqrt{x} \ge 0$, a nevező triviálisan alulról becsülhető:
$$\sqrt{x} + 2 \ge 2.$$
Így az eltérés:
$$|\sqrt{x} - 2| \le \frac{|x - 4|}{2}.$$
Azt szeretnénk, hogy $\frac{|x - 4|}{2} < \varepsilon \iff |x - 4| < 2\varepsilon$.
Válasszuk a $\delta(\varepsilon) = 2\varepsilon > 0$ értéket.
(Továbbá hogy $x \ge 0$ biztosított legyen, választhatunk $\delta(\varepsilon) = \min\{4, 2\varepsilon\}$-t).
Ekkor minden $0 < |x - 4| < \delta$ esetén $|\sqrt{x} - 2| < \varepsilon$. $\blacksquare$

::: elmelet
**Elméleti háttér — Törtek és gyökök $arepsilon$-$\delta$ becslése.**

- **Nevező alsó becslése:** Törtfüggvény határértékénél a nevezőt mindig egy POZITÍV konstanssal kell alulról becsülni egy előzetes környezetben (itt $|x+2| > 2$).
- **Gyökfüggvény trükkje:** A konjugálttal való szorzás a gyökök különbségét $|x - a|$-vá alakítja, ahol a nevező $(\sqrt{x} + \sqrt{a} \ge \sqrt{a})$ azonnal konstans alsó korlátot kap.
:::

## Gy84.1. feladat

a) Mondjuk ki és bizonyítsuk be a Cauchy- és Heine-féle határérték-definíciók ekvivalenciáját (Heine-féle átviteli elv)!

b) Az átviteli elv segítségével bizonyítsuk be, hogy a $\lim_{x\to 0} \cos\left(\frac{1}{x}\right)$ határérték nem létezik!

**Megoldás.**

a) **Heine-féle átviteli elv:**
Legyen $f : D \to \mathbb{R}$, és $a$ torlódási pontja $D$-nek. Az alábbi két állítás ekvivalens:
(1) (Cauchy-definíció): $\forall \varepsilon > 0 \, \exists \delta > 0 \, \forall x \in D: (0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon)$.
(2) (Heine-definíció): Minden olyan $(x_n) \subset D \setminus \{a\}$ sorozatra, amelyre $\lim_{n\to\infty} x_n = a$, teljesül, hogy $\lim_{n\to\infty} f(x_n) = b$.

*Bizonyítás:*
1. *(1) $\implies$ (2):*
Tegyük fel, hogy (1) fennáll. Legyen $(x_n) \subset D \setminus \{a\}$ olyan sorozat, amelyre $x_n \to a$.
Legyen $\varepsilon > 0$ tetszőleges.
Az (1) szerint ehhez létezik $\delta > 0$, hogy ha $0 < |x - a| < \delta$, akkor $|f(x) - b| < \varepsilon$.
Mivel $x_n \to a$ és $x_n \ne a$, a sorozat határértékének definíciója szerint a $\delta > 0$ értékhez létezik olyan $N_0 \in \mathbb{N}$ küszöbindex, hogy minden $n > N_0$ esetén:
$$0 < |x_n - a| < \delta.$$
Ekkor az (1) feltétel miatt minden $n > N_0$-ra:
$$|f(x_n) - b| < \varepsilon.$$
Ez pontosan azt jelenti, hogy $\lim_{n\to\infty} f(x_n) = b$.

2. *(2) $\implies$ (1) (indirekt):*
Tegyük fel, hogy (1) NEM teljesül.
Ez azt jelenti, hogy létezik olyan $\varepsilon_0 > 0$, hogy bármilyen $\delta > 0$ esetén létezik olyan $x \in D \setminus \{a\}$, amelyre $0 < |x - a| < \delta$, de $|f(x) - b| \ge \varepsilon_0$.
Alkalmazzuk ezt a tulajdonságot a $\delta_n = \frac{1}{n}$ értékekre minden $n \in \mathbb{N}$ esetén!
Minden $n \in \mathbb{N}$-hez kiválasztható egy $x_n \in D \setminus \{a\}$ pont úgy, hogy:
$$0 < |x_n - a| < \frac{1}{n}, \qquad \text{de } |f(x_n) - b| \ge \varepsilon_0.$$
Mivel $0 < |x_n - a| < 1/n \to 0$, az $(x_n)$ sorozat tart $a$-hoz.
Ugyanakkor az $f(x_n)$ értékek nem tartanak $b$-hez, mert mindegyik legalább $\varepsilon_0$ távolságra van $b$-től!
Ez ellentmond a (2) feltételnek, miszerint minden ilyen sorozatra $f(x_n) \to b$.
Az ellentmondás bizonyítja, hogy (1) szükségképpen teljesül. $\blacksquare$

b) Tekintsük a $g(x) = \cos(1/x)$ függvényt a $D = \mathbb{R} \setminus \{0\}$ halmazon, $a = 0$.
Válasszunk két különböző nullsorozatot:
1. Legyen $u_n = \frac{1}{2n\pi}$. Ekkor $u_n \ne 0$ és $\lim_{n\to\infty} u_n = 0$.
   A függvényértékek:
   $$g(u_n) = \cos(2n\pi) = 1 \implies \lim_{n\to\infty} g(u_n) = 1.$$
2. Legyen $v_n = \frac{1}{(2n + 1)\pi}$. Ekkor $v_n \ne 0$ és $\lim_{n\to\infty} v_n = 0$.
   A függvényértékek:
   $$g(v_n) = \cos((2n + 1)\pi) = -1 \implies \lim_{n\to\infty} g(v_n) = -1.$$
Találtunk két olyan nullsorozatot, amelyek mentén a függvényértékek határértéke különböző ($1 \ne -1$).
A Heine-féle átviteli elv szerint a függvénynek nem létezhet határértéke a $0$ pontban. $\blacksquare$

::: elmelet
**Elméleti háttér — A Heine-féle átviteli elv ereje.**

- **Függvények és sorozatok hídja:** Az átviteli elv lehetővé teszi, hogy a sorozatokra már bizonyított tételeket (pl. műveleti szabályok, rendőrelv) azonnal átvigyük függvények határértékére.
- **Divergencia legegyszerűbb bizonyítása:** Ha két különböző sorozat mentén különböző határértéket kapunk, a függvényhatárérték BIZTOSAN NEM létezik.
:::

## Gy84.2. feladat

a) Mutassuk meg, hogy $\lim_{x\to a} f(x) = b \iff \lim_{h\to 0} f(a + h) = b$.

b) Az átviteli elv segítségével bizonyítsuk be, hogy a Dirichlet-függvénynek,
$$D(x) = \begin{cases} 1, & \text{ha } x \in \mathbb{Q}, \\ 0, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q} \end{cases}$$
semelyik valós $a \in \mathbb{R}$ pontban sem létezik határértéke!

**Megoldás.**

a) Vezessünk be új változót: $h = x - a \iff x = a + h$.
Világos, hogy $x \to a \iff h \to 0$, és $x \ne a \iff h \ne 0$.
1. Ha $\lim_{x\to a} f(x) = b$, akkor tetszőleges $\varepsilon > 0$-hoz van $\delta > 0$, hogy ha $0 < |x - a| < \delta$, akkor $|f(x) - b| < \varepsilon$. Behelyettesítve $x - a = h$-t: ha $0 < |h| < \delta$, akkor $|f(a + h) - b| < \varepsilon$, ami a $\lim_{h\to 0} f(a + h) = b$ definíciója.
2. A visszafelé irány ugyanígy adódik a $h = x - a$ helyettesítéssel. $\blacksquare$

b) Legyen $a \in \mathbb{R}$ tetszőleges valós szám.
A racionális és irracionális számok sűrűsége miatt:
1. Létezik olyan racionális sorozat $(r_n) \subset \mathbb{Q} \setminus \{a\}$, amelyre $\lim_{n\to\infty} r_n = a$.
   Ekkor minden $n$-re $D(r_n) = 1$, így:
   $$\lim_{n\to\infty} D(r_n) = 1.$$
2. Létezik olyan irracionális sorozat $(s_n) \subset (\mathbb{R} \setminus \mathbb{Q}) \setminus \{a\}$, amelyre $\lim_{n\to\infty} s_n = a$ (pl. $s_n = r_n + \frac{\sqrt{2}}{n}$ alkalmas eltolással).
   Ekkor minden $n$-re $D(s_n) = 0$, így:
   $$\lim_{n\to\infty} D(s_n) = 0.$$
Mivel mindkét sorozat $a$-hoz tart, de a függvényértékek határértéke eltér ($1 \ne 0$), a Heine-tétel értelmében a határérték az $a$ pontban nem létezik.
Mivel $a \in \mathbb{R}$ tetszőleges volt, a Dirichlet-függvénynek egyetlen pontban sincs határértéke. $\blacksquare$

::: elmelet
**Elméleti háttér — A Dirichlet-függvény totális szakadása.**

- **Sehol sem folytonos függvény:** Mivel semelyik pontban sincs határértéke, sehol sem lehet folytonos.
- **Topológiai magyarázat:** $\mathbb{Q}$ és $\mathbb{R} \setminus \mathbb{Q}$ mindketten sűrűek $\mathbb{R}$-ben, így bármely pont bármilyen környezetében mindkét halmazból végtelen sok pont van, ami állandó ugrálásra kényszeríti a függvényt $0$ és $1$ között.
:::

## Gy85.1. feladat

Határozzuk meg az alábbi halmazok belső pontjainak halmazát $(\operatorname{int} H)$, torlódási pontjainak halmazát $(H')$, határpontjainak halmazát $(\partial H)$ és izolált pontjainak halmazát:

a) $A = (0, 1] \cup \{2\}$;

b) $B = \mathbb{Q} \cap [0, 1]$;

c) $C = \left\{\dfrac{1}{n} : n \in \mathbb{N}\right\}$.

**Megoldás.**

a) $A = (0, 1] \cup \{2\}$:
- *Belső pontok:* $x \in \operatorname{int} A$, ha létezik $\varepsilon > 0$, hogy $(x - \varepsilon, x + \varepsilon) \subset A$.
  Ez csak a nyílt intervallum pontjaira teljesül:
  $$\operatorname{int} A = (0, 1).$$
- *Torlódási pontok:* $x \in A'$, ha minden pontozott környezete metszi $A$-t.
  Az $(0, 1]$ minden pontja és a $0$ határpont torlódási pont, míg a $\{2\}$ izolált:
  $$A' = [0, 1].$$
- *Izolált pontok:* Azon halmazbeli pontok, amelyek nem torlódási pontok:
  $$\operatorname{iz} A = A \setminus A' = \{2\}.$$
- *Határpontok:* azon pontok, amelyek minden környezete metszi $A$-t is és $\mathbb{R} \setminus A$-t is:
  $$\partial A = \{0, 1, 2\}.$$

b) $B = \mathbb{Q} \cap [0, 1]$:
- *Belső pontok:* Mivel minden nyílt intervallum tartalmaz irracionális számokat is, semelyik nyílt intervallum nem része $B$-nek:
  $$\operatorname{int} B = \emptyset.$$
- *Torlódási pontok:* Mivel $\mathbb{Q}$ sűrű, a $[0, 1]$ intervallum bármely pontjának minden környezetében van racionális szám:
  $$B' = [0, 1].$$
- *Izolált pontok:* Mivel $B \subset B'$, egyetlen pontja sem izolált:
  $$\operatorname{iz} B = \emptyset.$$
- *Határpontok:* Mivel minden környezet tartalmaz racionális és irracionális számot is:
  $$\partial B = [0, 1].$$

c) $C = \left\{\frac{1}{n} : n \in \mathbb{N}\right\}$:
- *Belső pontok:* Egyetlen pontja sem belső pont (nincs benne intervallum):
  $$\operatorname{int} C = \emptyset.$$
- *Torlódási pontok:* Egyetlen torlódási pontja van, a sorozat határértéke, a $0$:
  $$C' = \{0\}.$$
  (Vegyük észre, hogy $0 \notin C$!).
- *Izolált pontok:* Mivel $C \cap C' = \emptyset$, a halmaz minden eleme izolált pont:
  $$\operatorname{iz} C = C = \left\{\frac{1}{n} : n \in \mathbb{N}\right\}.$$
- *Határpontok:*
  $$\partial C = C \cup \{0\} = \left\{\frac{1}{n} : n \in \mathbb{N}\right\} \cup \{0\}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Topológiai alapfogalmak a valós számegyenesen.**

- **Definíciók:**
  - *Belső pont:* $\exists \varepsilon > 0: (x-\varepsilon, x+\varepsilon) \subset H$.
  - *Torlódási pont:* $\forall \varepsilon > 0: \dot{B}(x, \varepsilon) \cap H \ne \emptyset$. (Nem kell, hogy $x \in H$ legyen!).
  - *Izolált pont:* $x \in H$, de nem torlódási pont ($\exists \varepsilon: \dot{B}(x, \varepsilon) \cap H = \emptyset$).
  - *Határpont:* $\forall \varepsilon > 0: B(x, \varepsilon) \cap H \ne \emptyset$ és $B(x, \varepsilon) \cap (\mathbb{R} \setminus H) \ne \emptyset$.
  - *Lezárt:* $\overline{H} = H \cup H' = \operatorname{int} H \cup \partial H$.
:::

## Gy85.2. feladat

a) Határozzuk meg a $H = \left\{\dfrac{1}{n} + \dfrac{1}{m} : n, m \in \mathbb{N}\right\}$ halmaz torlódási pontjainak halmazát ($H'$), valamint a másodrendű torlódási pontjait ($H''$)!

b) Bizonyítsuk be általánosan, hogy tetszőleges $H \subset \mathbb{R}$ halmaz esetén a torlódási pontok $H'$ halmaza mindig zárt halmaz $\mathbb{R}$-ben!

**Megoldás.**

a) 1. *Elsőrendű torlódási pontok ($H'$):*
Vizsgáljuk meg, milyen pontokhoz tartanak a $H$-beli sorozatok:
- Ha rögzítünk egy $n \in \mathbb{N}$ értéket, és $m \to \infty$, akkor:
  $$\lim_{m\to\infty} \left(\frac{1}{n} + \frac{1}{m}\right) = \frac{1}{n}.$$
  Tehát minden $\frac{1}{n}$ alakú szám torlódási pont ($n \in \mathbb{N}$).
- Ha mindkét index tart a végtelenbe ($n \to \infty$ és $m \to \infty$), akkor:
  $$\lim_{n, m\to\infty} \left(\frac{1}{n} + \frac{1}{m}\right) = 0.$$
  Tehát a $0$ is torlódási pont.
Más torlódási pont nincs, mert ha $x \notin \{1/n : n \in \mathbb{N}\} \cup \{0\}$, akkor $x$ pozitív távolságra van ezen halmaztól és $H$ elemeitől.
Így a torlódási pontok halmaza:
$$H' = \left\{\frac{1}{n} : n \in \mathbb{N}\right\} \cup \{0\}.$$

2. *Másodrendű torlódási pontok ($H'' = (H')'$):*
A $H'$ halmaz torlódási pontjait keressük.
A $H' = \{1/n : n \in \mathbb{N}\} \cup \{0\}$ halmazban az $\frac{1}{n}$ pontok izoláltak, egyetlen torlódási pontja a $0$ (ahová az $1/n$ sorozat tart):
$$H'' = \{0\}.$$
(A harmadrendű torlódási pontok halmaza már üres: $H''' = \emptyset$.)

b) *Bizonyítás arra, hogy $H'$ zárt:*
Egy halmaz pontosan akkor zárt, ha tartalmazza az összes torlódási pontját, azaz ha $(H')' \subseteq H'$.
Legyen $x \in (H')'$ a $H'$ egy tetszőleges torlódási pontja.
Meg kell mutatnunk, hogy $x \in H'$ (azaz $x$ torlódási pontja $H$-nak is).
Legyen $\varepsilon > 0$ tetszőleges kicsiny pozitív szám.
Mivel $x \in (H')'$, az $x$ pontozott $\dot{B}(x, \varepsilon/2)$ környezetében található a $H'$ halmaznak legalább egy $y$ eleme:
$$y \in H', \qquad 0 < |y - x| < \frac{\varepsilon}{2}.$$
Jelölje $\delta = \min\left\{|y - x|, \frac{\varepsilon}{2} - |y - x|\right\} > 0$.
Mivel $y \in H'$, $y$ torlódási pontja $H$-nak.
Ezért az $y$ pont $\delta$ sugarú pontozott környezetében található $H$-nak egy $z$ eleme:
$$z \in H, \qquad 0 < |z - y| < \delta \le \frac{\varepsilon}{2}.$$
Becsüljük meg $z$ távolságát $x$-től a háromszög-egyenlőtlenséggel:
$$|z - x| \le |z - y| + |y - x| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$
Továbbá mivel $|z - y| < |y - x|$, a fordított háromszög-egyenlőtlenség miatt $|z - x| \ge |y - x| - |z - y| > 0$, így $z \ne x$.
Találtunk tehát olyan $z \in H$ elemet, amelyre $0 < |z - x| < \varepsilon$.
Mivel ez minden $\varepsilon > 0$-ra megtehető, $x$ torlódási pontja $H$-nak, azaz $x \in H'$.
Ez bizonyítja, hogy $(H')' \subseteq H'$, tehát $H'$ valóban zárt halmaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Magasabb rendű torlódási pontok és Cantor–Bendixson-tétel.**

- **Torlódási pontok zártsága:** A lezárási operátor idempotens: $\overline{\overline{H}} = \overline{H}$. A torlódási pontok képzése mindig zárt halmazt eredményez.
- **Cantor–Bendixson-fok:** Egy halmaz pontjai fokozatosan ritkíthatók a torlódási pontok iterált képzésével ($H \supset H' \supset H'' \dots$). Megszámlálható halmazoknál ez a lánc rendszámok mentén végül az üres halmazba fut.
:::

## Gy86.1. feladat

a) Bizonyítsuk be a jeltartási tételt: ha $\lim_{x\to a} f(x) = b > 0$, akkor létezik olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta) \cap D(f)$ esetén
$$f(x) > \frac{b}{2} > 0!$$

b) Igazoljuk, hogy ha $\lim_{x\to a} f(x) = b$ és $\lim_{x\to a} g(x) = c$ úgy, hogy $b < c$, akkor létezik olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$ esetén
$$f(x) < g(x)!$$

**Megoldás.**

a) Mivel $b > 0$, válasszuk a határérték definíciójában az $\varepsilon = \frac{b}{2} > 0$ értéket.
A határérték definíciója szerint ehhez az $\varepsilon$-hoz létezik olyan $\delta > 0$, hogy minden $x \in D(f)$ esetén:
$$0 < |x - a| < \delta \implies |f(x) - b| < \frac{b}{2}.$$
Bontsuk fel az abszolút értékes egyenlőtlenséget:
$$-\frac{b}{2} < f(x) - b < \frac{b}{2}.$$
Adjunk hozzá $b$-t mindegyik oldalhoz:
$$\frac{b}{2} < f(x) < \frac{3b}{2}.$$
A bal oldali egyenlőtlenség pontosan azt adja, hogy minden $x \in \dot{B}(a, \delta) \cap D(f)$ esetén:
$$f(x) > \frac{b}{2} > 0.$$
Ezzel a jeltartási tételt igazoltuk. $\blacksquare$

b) Tekintsük a $h(x) = g(x) - f(x)$ különbségfüggvényt.
A határértékek műveleti szabályai szerint:
$$\lim_{x\to a} h(x) = \lim_{x\to a} g(x) - \lim_{x\to a} f(x) = c - b.$$
Mivel a feltétel szerint $b < c$, a különbség szigorúan pozitív:
$$c - b > 0.$$
Alkalmazzuk az a) részben bizonyított jeltartási tételt a $h(x)$ függvényre és a pozitív $c - b$ határértékre!
A tétel szerint létezik olyan $\delta > 0$, hogy minden $x \in \dot{B}(a, \delta)$ esetén:
$$h(x) > \frac{c - b}{2} > 0.$$
Mivel $h(x) = g(x) - f(x)$, ez azt jelenti, hogy:
$$g(x) - f(x) > 0 \iff f(x) < g(x).$$
Minden $x \in \dot{B}(a, \delta)$ esetén tehát valóban $f(x) < g(x)$. $\blacksquare$

::: elmelet
**Elméleti háttér — A jeltartási tétel és lokális szétválasztás.**

- **Jeltartás fundamentális szerepe:** Ha a határérték pozitív, a függvény egy egész pontozott környezetben egyenletesen pozitív marad (nemcsak nemnegatív, hanem egy pozitív konstanssal alulról elválasztható a nullától).
- **Alkalmazása:** Ezzel igazolható a reciprokfüggvény folytonossága ($\frac{1}{g(x)}$ létezése és korlátossága), valamint a Bolzano-tétel (ha $f(a) < 0 < f(b)$, a végpontok környezetében nem válthat előjelet).
:::

## Gy86.2. feladat

a) Tegyük fel, hogy $f(x) < g(x)$ egy $a$ körüli pontozott környezetben, és mindkét függvénynek létezik határértéke $a$-ban. Következik-e ebből, hogy a határértékekre is szigorú egyenlőtlenség áll fenn: $\lim_{x\to a} f(x) < \lim_{x\to a} g(x)$? Hozzunk ellenpéldát!

b) Mondjuk ki és bizonyítsuk be a rendőrelvet függvényhatárértékekre!

**Megoldás.**

a) Az állítás **HAMIS.**
A szigorú egyenlőtlenség a határátmenet során „meggyengülhet”, és egyenlőségbe mehet át!
*Ellenpélda:*
Legyen $a = 0$, és tekintsük az alábbi két függvényt a $\mathbb{R} \setminus \{0\}$ halmazon:
$$f(x) = 0, \qquad g(x) = x^2.$$
Világos, hogy minden $x \ne 0$ esetén:
$$f(x) = 0 < x^2 = g(x),$$
tehát a szigorú egyenlőtlenség minden $x \in \dot{B}(0, 1)$ pontban fennáll.
Ugyanakkor a határértékek a $0$ pontban:
$$\lim_{x\to 0} f(x) = 0, \qquad \lim_{x\to 0} g(x) = \lim_{x\to 0} x^2 = 0.$$
A határértékek egyenlők ($0 = 0$), tehát NEM teljesül a szigorú egyenlőtlenség!
*A helyes tétel:* $f(x) \le g(x) \implies \lim_{x\to a} f(x) \le \lim_{x\to a} g(x)$ (megengedő egyenlőtlenség).

b) **Tétel (Rendőrelv függvényekre):**
Tegyük fel, hogy az $a$ pont egy $\dot{B}(a, \delta)$ pontozott környezetében:
$$f(x) \le g(x) \le h(x),$$
és léteznek a határértékek:
$$\lim_{x\to a} f(x) = \lim_{x\to a} h(x) = L \in \mathbb{R}.$$
Ekkor a középső $g(x)$ függvénynek is létezik határértéke az $a$ pontban, és $\lim_{x\to a} g(x) = L$.

*Bizonyítás:*
Alkalmazzuk a Heine-féle átviteli elvet:
Legyen $(x_n) \subset \dot{B}(a, \delta)$ tetszőleges sorozat, amelyre $\lim_{n\to\infty} x_n = a$.
Mivel $x_n \in \dot{B}(a, \delta)$, minden $n$-re:
$$f(x_n) \le g(x_n) \le h(x_n).$$
Mivel $\lim_{x\to a} f(x) = L$ és $\lim_{x\to a} h(x) = L$, a Heine-elv miatt:
$$\lim_{n\to\infty} f(x_n) = L, \qquad \lim_{n\to\infty} h(x_n) = L.$$
A számsorozatokra érvényes rendőrelv alapján a közrezárt sorozatra:
$$\lim_{n\to\infty} g(x_n) = L.$$
Mivel ez minden ilyen $(x_n)$ sorozatra teljesül, a Heine-elv másik iránya szerint létezik a függvényhatárérték, és $\lim_{x\to a} g(x) = L$. $\blacksquare$

::: elmelet
**Elméleti háttér — Egyenlőtlenségek megőrzése és a rendőrelv.**

- **Szigorú egyenlőtlenség elvesztése:** A határérték-képzés topológiai zárási művelet, így nyílt relációból ($<$) zárt relációt ($\le$) csinál.
- **Rendőrelv bizonyítási technikája:** A Heine-tétel révén a függvény-változat egyetlen lépésben visszavezethető a sorozatok rendőrelvére.
:::

## Gy87.1. feladat

Tekintsük a Riemann-függvényt ($R : \mathbb{R} \to \mathbb{R}$):
$$R(x) = \begin{cases}
\dfrac{1}{q}, & \text{ha } x = \dfrac{p}{q} \in \mathbb{Q} \text{ egyszerűsített tört } (p \in \mathbb{Z}, q \in \mathbb{N}), \\
1, & \text{ha } x = 0, \\
0, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}.
\end{cases}$$

a) Bizonyítsuk be az $\varepsilon$-$\delta$ definíció alapján, hogy a Riemann-függvénynek minden $a \in \mathbb{R}$ pontban létezik határértéke, és az azonosan nulla: $\lim_{x\to a} R(x) = 0$!

b) Állapítsuk meg, hogy mely pontokban folytonos, és mely pontokban szakad a Riemann-függvény!

**Megoldás.**

a) Legyen $a \in \mathbb{R}$ tetszőleges valós szám, és legyen $\varepsilon > 0$ tetszőleges kicsiny pozitív hibakorlát.
Azt kell belátnunk, hogy létezik olyan $\delta > 0$, hogy ha $0 < |x - a| < \delta$, akkor $|R(x) - 0| = R(x) < \varepsilon$.
1. Tekintsük az $a$ pont egy rögzített környezetét, például az $(a - 1, a + 1)$ intervallumot.
2. Az $(a - 1, a + 1)$ intervallumba eső azon $x = p/q$ racionális számok, amelyekre $R(x) \ge \varepsilon$, azt jelentik, hogy:
$$\frac{1}{q} \ge \varepsilon \iff q \le \frac{1}{\varepsilon}.$$
A lehetséges nevezők száma tehát véges: $q \in \{1, 2, \dots, \lfloor 1/\varepsilon \rfloor\}$.
Minden egyes rögzített $q$ nevezőhöz az $(a - 1, a + 1)$ korlátos intervallumba csak véges sok $p$ számláló eshet ($q(a - 1) < p < q(a + 1)$).
Ezért az $(a - 1, a + 1)$ intervallumban **csak véges sok olyan pont létezik**, amelyre $R(x) \ge \varepsilon$!
Jelölje ezen „rossz” pontok halmazát $E_\varepsilon$:
$$E_\varepsilon = \left\{x \in (a - 1, a + 1) : R(x) \ge \varepsilon\right\}.$$
3. Hagyjuk el ebből a véges halmazból az $a$ pontot (ha benne volt): $E' = E_\varepsilon \setminus \{a\}$.
Mivel $E'$ egy véges halmaz, a pontjai és $a$ közötti távolságok minimuma szigorúan pozitív:
$$\delta = \min\left(\{1\} \cup \{|x - a| : x \in E'\}\right) > 0.$$
4. Ekkor az $a$ pont $\dot{B}(a, \delta) = (a - \delta, a + \delta) \setminus \{a\}$ pontozott környezetébe a konstrukció szerint $E_\varepsilon$ egyetlen pontja sem esik bele!
Ez azt jelenti, hogy minden $x \in \dot{B}(a, \delta)$ esetén:
$$R(x) < \varepsilon.$$
Mivel $R(x) \ge 0$, ezért $|R(x) - 0| < \varepsilon$.
A definíció alapján ez bizonyítja, hogy:
$$\lim_{x\to a} R(x) = 0 \quad \text{minden } a \in \mathbb{R} \text{ pontban}. \quad \blacksquare$$

b) A folytonosság definíciója szerint $R$ pontosan akkor folytonos $a$-ban, ha $\lim_{x\to a} R(x) = R(a)$.
Az a) részben láttuk, hogy minden pontban $\lim_{x\to a} R(x) = 0$.
Ezért:
- Ha $a \in \mathbb{R} \setminus \mathbb{Q}$ (irracionális): $R(a) = 0$. Ekkor $\lim_{x\to a} R(x) = 0 = R(a)$, tehát a Riemann-függvény **minden irracionális pontban FOLYTONOS!**
- Ha $a \in \mathbb{Q}$ (racionális): $R(a) = \frac{1}{q} > 0$ (illetve $R(0) = 1$). Ekkor $\lim_{x\to a} R(x) = 0 \ne R(a)$, tehát a Riemann-függvény **minden racionális pontban SZAKAD** (megszüntethető szakadása van). $\blacksquare$

::: elmelet
**Elméleti háttér — A Riemann-függvény (Thomae-függvény) csodája.**

- **Thomae-féle függvény (1875):** Az analízis egyik legmeglepőbb ellenpéldája:
  - Folytonossági pontjainak halmaza: az irracionális számok ($\mathbb{R} \setminus \mathbb{Q}$), ami nem megszámlálható és sűrű!
  - Szakadási pontjainak halmaza: a racionális számok ($\mathbb{Q}$), ami megszámlálható és sűrű!
- **Megfordítás lehetetlensége:** Létezik olyan függvény, amely a racionálisokon folytonos és az irracionálisokon szakad? NEM! A folytonossági pontok halmaza mindig $G_\delta$ halmaz (megszámlálható sok nyílt halmaz metszete), és a Baire-kategóriatétel szerint $\mathbb{Q}$ nem lehet $G_\delta$ halmaz $\mathbb{R}$-ben!
:::

## Gy87.2. feladat

Tekintsük az alábbi függvényt:
$$f(x) = x \cdot D(x) = \begin{cases} x, & \text{ha } x \in \mathbb{Q}, \\ 0, & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}, \end{cases}$$
ahol $D(x)$ a Dirichlet-függvény.

a) Számítsuk ki a $\lim_{x\to 0} f(x)$ határértéket a rendőrelv segítségével!

b) Határozzuk meg az $f$ függvény folytonossági pontjainak és szakadási pontjainak halmazát!

**Megoldás.**

a) Becsüljük meg az $|f(x)|$ abszolút értéket tetszőleges $x \in \mathbb{R}$ esetén:
Mivel $D(x) \in \{0, 1\}$, ezért:
$$0 \le |f(x)| = |x \cdot D(x)| = |x| \cdot D(x) \le |x|.$$
Tehát minden $x \in \mathbb{R}$ esetén:
$$-|x| \le f(x) \le |x|.$$
Mivel $\lim_{x\to 0} (-|x|) = 0$ és $\lim_{x\to 0} |x| = 0$, a rendőrelv alapján:
$$\lim_{x\to 0} f(x) = 0.$$

b) 1. *Folytonosság a $0$ pontban:*
Az a) rész szerint $\lim_{x\to 0} f(x) = 0$.
A definíció szerint a behelyettesítési érték: $f(0) = 0 \cdot D(0) = 0 \cdot 1 = 0$.
Mivel $\lim_{x\to 0} f(x) = f(0)$, az $f$ függvény az $x = 0$ pontban **folytonos**.

2. *Szakadás minden $x_0 \ne 0$ pontban:*
Legyen $x_0 \ne 0$ tetszőleges nemnulla valós szám.
- Válasszunk egy $x_0$-hoz tartó racionális sorozatot: $(r_n) \subset \mathbb{Q} \setminus \{x_0\}$, $r_n \to x_0$.
  Ekkor $f(r_n) = r_n \to x_0$.
- Válasszunk egy $x_0$-hoz tartó irracionális sorozatot: $(s_n) \subset (\mathbb{R} \setminus \mathbb{Q})$, $s_n \to x_0$.
  Ekkor $f(s_n) = 0 \to 0$.
Mivel $x_0 \ne 0$, a két részsorozat határértéke eltér ($x_0 \ne 0$).
A Heine-tétel szerint a határérték az $x_0$ pontban nem létezik, így a függvény ott nem lehet folytonos!
*Összegzés:*
- Az $f$ függvény **egyetlenegy pontban folytonos: az $x = 0$ pontban.**
- Az összes többi pontban ($x \in \mathbb{R} \setminus \{0\}$) szakadása van. $\blacksquare$

::: elmelet
**Elméleti háttér — Pontbeli folytonosság globális szakadás mellett.**

- **Lokális elszigetelt folytonosság:** Egy függvény lehet folytonos egyetlenegy pontban úgy, hogy annak semelyik környezetében sem folytonos egyetlen másik pontban sem!
- **Nullszorzó hatása:** A Dirichlet-függvény $D(x)$ sehol sem folytonos, de az $x$-szel való szorzás a $0$ pontban „elnyomja” az oszcillációt ($|x| \cdot \text{korlátos} \to 0$), megteremtve a folytonosságot az origóban.
:::

# A 9. feladatlaphoz

## Gy88.1. feladat

Definiáljuk a következő határértékeket a precíz küszöbszámos / környezetes definíció alapján, és adjunk mindegyikre konkrét példafüggvényt az értelmezési tartomány pontos megadásával:
a) $\lim\limits_{x\to a-0} f(x) = -\infty$;
b) $\lim\limits_{x\to-\infty} f(x) = b$ ($b \in \mathbb{R}$);
c) $\lim\limits_{x\to+\infty} f(x) = +\infty$.

**Megoldás.**

a) **$\lim\limits_{x\to a-0} f(x) = -\infty$ definíciója:**
Az $a \in \mathbb{R}$ pont bal oldali torlódási pontja a $D(f)$ értelmezési tartománynak (azaz minden $\delta > 0$ esetén $(a - \delta, a) \cap D(f) \ne \emptyset$), és
$$\forall K \in \mathbb{R} \quad \exists \delta > 0 \quad \forall x \in D(f): \quad (a - \delta < x < a \implies f(x) < K).$$
*Konkrét példa:* Legyen $a = 3$, $D(f) = (-\infty, 3)$, és $f(x) = \frac{1}{x - 3}$.
Ha $x \in (3 - \delta, 3)$, akkor $x - 3 < 0$, és $|x - 3| < \delta \implies \frac{1}{x - 3} < -\frac{1}{\delta}$. Tetszőleges negatív $K < 0$ esetén $\delta = -\frac{1}{K} > 0$ választással $f(x) < K$ teljesül.

b) **$\lim\limits_{x\to-\infty} f(x) = b$ definíciója:**
A $D(f)$ halmaz alulról nem korlátos (azaz minden $K \in \mathbb{R}$ esetén $(-\infty, K) \cap D(f) \ne \emptyset$), és
$$\forall \varepsilon > 0 \quad \exists K \in \mathbb{R} \quad \forall x \in D(f): \quad (x < K \implies |f(x) - b| < \varepsilon).$$
*Konkrét példa:* Legyen $b = 5$, $D(f) = \mathbb{R} \setminus \{0\}$, és $f(x) = 5 + \frac{1}{x}$.
Adott $\varepsilon > 0$ esetén válasszunk $K = -\frac{1}{\varepsilon} < 0$-t. Ekkor ha $x < K$, akkor $|f(x) - 5| = \frac{1}{|x|} = -\frac{1}{x} < \varepsilon$.

c) **$\lim\limits_{x\to+\infty} f(x) = +\infty$ definíciója:**
A $D(f)$ halmaz felülről nem korlátos (azaz minden $K \in \mathbb{R}$ esetén $(K, \infty) \cap D(f) \ne \emptyset$), és
$$\forall M \in \mathbb{R} \quad \exists K \in \mathbb{R} \quad \forall x \in D(f): \quad (x > K \implies f(x) > M).$$
*Konkrét példa:* $D(f) = \mathbb{R}$, $f(x) = x^3$.
Tetszőleges $M > 0$ valós számhoz válasszunk $K = \sqrt[3]{M}$-et. Ekkor minden $x > K$ esetén $x^3 > K^3 = M$.

::: elmelet
**Elméleti háttér — A függvényhatárérték típusai és topológiai szemlélete.**

*A függvényhatárérték egységes szemlélete.*
Legyen $a, b \in \overline{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}$. A $\lim\limits_{x\to a} f(x) = b$ állítás jelentése környezetekkel kifejezve:
$$b\text{ tetszőleges } V \text{ környezetéhez létezik } a\text{-nak olyan } U \text{ pontozott környezete, hogy } f(U \cap D(f)) \subseteq V.$$
- Ha $a \in \mathbb{R}$ véges pont, pontozott környezete $U = \dot{K}_\delta(a) = (a - \delta, a + \delta) \setminus \{a\}$.
- Ha $a+0$ jobb oldali határérték, $U = (a, a + \delta)$.
- Ha $a-0$ bal oldali határérték, $U = (a - \delta, a)$.
- Ha $a = +\infty$, $U = (K, +\infty)$; ha $a = -\infty$, $U = (-\infty, K)$.
- Ha $b \in \mathbb{R}$ véges, $V = (b - \varepsilon, b + \varepsilon)$.
- Ha $b = +\infty$, $V = (M, +\infty)$; ha $b = -\infty$, $V = (-\infty, K)$.

*Tipikus vizsgahiba:*
A pontozott környezet elfelejtése az $x$-re vonatkozó feltételben: az $x = a$ pontban a függvénynek nem feltétlenül kell értelmezve lennie, és ha értelmezve van, az $f(a)$ értéke teljesen független a határértéktől!
:::

## Gy88.2. feladat

a) Írjuk fel a kétoldali véges határérték ($\lim\limits_{x\to a} f(x) = b$, $a, b \in \mathbb{R}$) definícióját, és bizonyítsuk be, hogy ez pontosan akkor áll fenn, ha a bal és jobb oldali határérték is létezik, és megegyezik $b$-vel.
b) Definiáljuk a $\lim\limits_{x\to-\infty} f(x) = +\infty$ határértéket, és mutassuk meg a definíció alapján, hogy $\lim\limits_{x\to-\infty} (2x^2 - 4x) = +\infty$.

**Megoldás.**

a) **Kétoldali határérték definíciója:**
Az $a \in \mathbb{R}$ torlódási pontja $D(f)$-nek, és
$$\forall \varepsilon > 0 \quad \exists \delta > 0 \quad \forall x \in D(f): \quad (0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon).$$

*Ekvivalencia bizonyítása:*
$(\implies)$ Tegyük fel, hogy $\lim_{x\to a} f(x) = b$. Adott $\varepsilon > 0$-hoz létezik $\delta > 0$, hogy $0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon$.
Ha $a < x < a + \delta$, akkor $0 < |x - a| < \delta$, így $|f(x) - b| < \varepsilon$, tehát $\lim_{x\to a+0} f(x) = b$.
Hasonlóan, ha $a - \delta < x < a$, akkor $0 < |x - a| < \delta$, így $|f(x) - b| < \varepsilon$, tehát $\lim_{x\to a-0} f(x) = b$.

$(\impliedby)$ Tegyük fel, hogy $\lim_{x\to a+0} f(x) = b$ és $\lim_{x\to a-0} f(x) = b$.
Adott $\varepsilon > 0$-hoz van olyan $\delta_1 > 0$, hogy $a < x < a + \delta_1 \implies |f(x) - b| < \varepsilon$,
és van olyan $\delta_2 > 0$, hogy $a - \delta_2 < x < a \implies |f(x) - b| < \varepsilon$.
Válasszuk a $\delta = \min\{\delta_1, \delta_2\} > 0$ értéket. Ekkor ha $0 < |x - a| < \delta$, akkor vagy $a < x < a + \delta \le a + \delta_1$, vagy $a - \delta_2 \le a - \delta < x < a$, így mindkét esetben $|f(x) - b| < \varepsilon$. Tehát a kétoldali határérték létezik és értéke $b$. $\blacksquare$

b) **A $\lim\limits_{x\to-\infty} f(x) = +\infty$ definíciója:**
$D(f)$ alulról nem korlátos, és
$$\forall M \in \mathbb{R} \quad \exists K \in \mathbb{R} \quad \forall x \in D(f): \quad (x < K \implies f(x) > M).$$

*A határérték igazolása:*
Tekintsük az $f(x) = 2x^2 - 4x$ függvényt. Ha $x < 0$, akkor $-4x > 0$, így $2x^2 - 4x > 2x^2$.
Adott tetszőleges $M > 0$ esetén szeretnénk, hogy $2x^2 > M$ teljesüljön, ami ekvivalens azzal, hogy $x^2 > \frac{M}{2}$, azaz negatív $x$-re $x < -\sqrt{\frac{M}{2}}$.
Ezért válasszuk a $K = -\max\left\{1, \sqrt{\frac{M}{2}}\right\}$ küszöböt.
Ha $x < K$, akkor $x < 0$, és $|x| > \sqrt{\frac{M}{2}}$, amiből:
$$2x^2 - 4x > 2x^2 > 2 \cdot \frac{M}{2} = M.$$
Tehát a definíció alapján valóban $\lim\limits_{x\to-\infty} (2x^2 - 4x) = +\infty$.

::: elmelet
**Elméleti háttér — Egyoldali határértékek szétválasztása és küszöbkeresési stratégia.**

*Egyoldali vs. kétoldali határértékek kapcsolata:*
Egy valós belső torlódási pontban a kétoldali határérték létezése szigorúbb feltétel, mint az egyoldaliaké: nemcsak létezniük kell, de értéküknek meg is kell egyeznie. Szakadásos függvényeknél (pl. előjelfüggvény, törtrész) az egyoldali határértékek gyakran léteznek, de különböznek.

*Küszöb meghatározása végtelen határértékhez:*
Amikor azt kell belátni, hogy $f(x) > M$, keressünk egy egyszerűbb alulról becslő függvényt: ha $f(x) \ge g(x)$ alkalmas tartományban, és $g(x) > M$ könnyen megoldható $x$-re, akkor a kapott feltétel kielégíti a definíciót.
:::

## Gy89.1. feladat

Írjuk fel az alábbi állítások formális kvantoros tagadását, majd fogalmazzuk meg a tagadást az átviteli elv segítségével (sorozatok nyelvére lefordítva):
a) $\lim\limits_{x\to a} f(x) = b$ ($a, b \in \mathbb{R}$);
b) $\lim\limits_{x\to+\infty} f(x) = +\infty$.

**Megoldás.**

a) **$\lim\limits_{x\to a} f(x) = b$ tagadása:**
Az eredeti állítás:
$$\forall \varepsilon > 0 \quad \exists \delta > 0 \quad \forall x \in D(f): \quad (0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon).$$
Formális tagadása (a kvantorok megfordításával és az implikáció tagadásával):
$$\exists \varepsilon > 0 \quad \forall \delta > 0 \quad \exists x \in D(f): \quad 0 < |x - a| < \delta \quad \text{és} \quad |f(x) - b| \ge \varepsilon.$$
*Sorozatos átfogalmazás (Heine-féle átviteli elv tagadása):*
Létezik olyan $\varepsilon > 0$ és olyan $(x_n)$ sorozat a $D(f) \setminus \{a\}$ halmazban, amelyre $x_n \to a$, de $|f(x_n) - b| \ge \varepsilon$ minden $n \in \mathbb{N}$ esetén (tehát az $(f(x_n))$ képsorozat nem tart $b$-hez).

b) **$\lim\limits_{x\to+\infty} f(x) = +\infty$ tagadása:**
Az eredeti állítás:
$$\forall M \in \mathbb{R} \quad \exists K \in \mathbb{R} \quad \forall x \in D(f): \quad (x > K \implies f(x) > M).$$
Formális tagadása:
$$\exists M \in \mathbb{R} \quad \forall K \in \mathbb{R} \quad \exists x \in D(f): \quad x > K \quad \text{és} \quad f(x) \le M.$$
*Sorozatos átfogalmazás:*
Létezik olyan $M \in \mathbb{R}$ és olyan $(x_n) \subset D(f)$ sorozat, amelyre $x_n \to +\infty$, de $f(x_n) \le M$ minden $n \in \mathbb{N}$ esetén (azaz a képsorozat felülről korlátos marad, így $f(x_n) \not\to +\infty$).

::: elmelet
**Elméleti háttér — Határérték-állítások formális tagadása és a Heine-féle átviteli elv.**

*A Heine-féle átviteli elv (Heine-tétel):*
$\lim\limits_{x\to a} f(x) = b$ pontosan akkor teljesül, ha minden olyan $(x_n) \subset D(f) \setminus \{a\}$ sorozatra, amelyre $x_n \to a$, fennáll, hogy $f(x_n) \to b$.

*Miért nélkülözhetetlen a tagadás sorozatos alakja?*
A gyakorlatban egy határérték nem létezését közvetlenül Cauchy-féle $\varepsilon$-$\delta$ formulával nehézkes belátni. Ezzel szemben a Heine-tétel tagadása azonnali és elegáns eszközt ad:
1. Ha találunk két különböző $(x_n)$ és $(y_n)$ sorozatot, amelyek ugyanúgy $a$-hoz tartanak, de $f(x_n) \to b_1$ és $f(y_n) \to b_2$ ($b_1 \ne b_2$), akkor a határérték nem létezik.
2. Ha találunk olyan $x_n \to a$ sorozatot, amelyre az $f(x_n)$ képsorozat oszcillálva divergál, a határérték szintén nem létezik.
:::

## Gy89.2. feladat

a) Mondjuk ki a $\lim\limits_{x\to a-0} f(x) = b$ egyoldali határérték tagadását és sorozatos megfelelőjét.
b) Az átviteli elv segítségével bizonyítsuk be, hogy az $f(x) = \sin\left(\frac{1}{x}\right)$ ($x \ne 0$) függvénynek nem létezik határértéke a $0$ pontban.

**Megoldás.**

a) **$\lim\limits_{x\to a-0} f(x) = b$ tagadása:**
Eredeti állítás: $\forall \varepsilon > 0 \ \exists \delta > 0 \ \forall x \in D(f): (a - \delta < x < a \implies |f(x) - b| < \varepsilon)$.
Tagadás:
$$\exists \varepsilon > 0 \quad \forall \delta > 0 \quad \exists x \in D(f): \quad a - \delta < x < a \quad \text{és} \quad |f(x) - b| \ge \varepsilon.$$
*Sorozatos megfelelő:* Létezik olyan $\varepsilon > 0$ és olyan $(x_n) \subset D(f)$ sorozat, amelyre $x_n < a$ minden $n$-re, $x_n \to a$, de $|f(x_n) - b| \ge \varepsilon$ minden $n$-re.

b) **A $\lim\limits_{x\to 0} \sin\left(\frac{1}{x}\right)$ határérték nem létezésének bizonyítása:**
Értelmezési tartomány: $D(f) = \mathbb{R} \setminus \{0\}$. A $0$ pont torlódási pontja $D(f)$-nek.
Válasszunk két különböző zérussorozatot:
1. Legyen $x_n = \frac{1}{\frac{\pi}{2} + 2n\pi}$ ($n \in \mathbb{N}$).
Ekkor $x_n \ne 0$, és mivel $\frac{\pi}{2} + 2n\pi \to \infty$, ezért $x_n \to 0$ ($n \to \infty$).
A függvényértékek:
$$f(x_n) = \sin\left(\frac{\pi}{2} + 2n\pi\right) = 1 \quad \forall n \in \mathbb{N}, \implies f(x_n) \to 1.$$
2. Legyen $y_n = \frac{1}{\frac{3\pi}{2} + 2n\pi}$ ($n \in \mathbb{N}$).
Hasonlóan $y_n \ne 0$ és $y_n \to 0$ ($n \to \infty$).
A függvényértékek:
$$f(y_n) = \sin\left(\frac{3\pi}{2} + 2n\pi\right) = -1 \quad \forall n \in \mathbb{N}, \implies f(y_n) \to -1.$$
Mivel találtunk két olyan zérussorozatot ($x_n \to 0$ és $y_n \to 0$), amelyek mentén a képsorozatok határértéke különböző ($1 \ne -1$), az átviteli elv alapján a $\lim\limits_{x\to 0} \sin\left(\frac{1}{x}\right)$ határérték nem létezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Határérték nemlétezésének bizonyítása sorozatokkal.**

*Tipikus vizsgapélda:*
Az $f(x) = \sin(1/x)$ vagy $\cos(1/x)$ függvény a $0$ körül végtelenül sűrűn oszcillál $[-1, 1]$ között.
A Heine-tétel révén tetszőleges $c \in [-1, 1]$ számhoz tudunk olyan $z_n \to 0$ sorozatot konstruálni, amelyre $f(z_n) \to c$:
$$z_n = \frac{1}{\arcsin(c) + 2n\pi} \to 0 \implies f(z_n) = c \to c.$$
Ez nemcsak a határérték nemlétezését mutatja, hanem azt is, hogy a $0$ pontban a függvény torlódási értékeinek halmaza a teljes $[-1, 1]$ zárt intervallum!
:::

## Gy90.1. feladat

Számítsuk ki az alábbi határértékeket:
a) $\lim\limits_{x\to 0} \frac{(1 + 2x)^5 - (1 + 10x)}{x^2 + 3x^3}$;
b) $\lim\limits_{x\to+\infty} \frac{4x^4 - 2x^2 + 7}{5x^4 + 3x^3 - 1}$;
c) $\lim\limits_{x\to-\infty} \frac{3x}{\sqrt{4x^2 + x} - x}$.

**Megoldás.**

a) Fejtsük ki a számlálót a binomiális tétel segítségével:
$$(1 + 2x)^5 = 1 + \binom{5}{1}(2x) + \binom{5}{2}(2x)^2 + \binom{5}{3}(2x)^3 + \binom{5}{4}(2x)^4 + (2x)^5$$
$$= 1 + 10x + 10 \cdot 4x^2 + 10 \cdot 8x^3 + 5 \cdot 16x^4 + 32x^5 = 1 + 10x + 40x^2 + 80x^3 + 80x^4 + 32x^5.$$
Ebből kivonva az $(1 + 10x)$ tagot:
$$(1 + 2x)^5 - (1 + 10x) = 40x^2 + 80x^3 + 80x^4 + 32x^5 = x^2(40 + 80x + 80x^2 + 32x^3).$$
A tört:
$$\frac{x^2(40 + 80x + 80x^2 + 32x^3)}{x^2(1 + 3x)} = \frac{40 + 80x + 80x^2 + 32x^3}{1 + 3x} \quad (x \ne 0).$$
Mivel a számláló és a nevező is folytonos és a nevező határértéke $1 \ne 0$:
$$\lim_{x\to 0} \frac{40 + 80x + 80x^2 + 32x^3}{1 + 3x} = \frac{40 + 0}{1 + 0} = 40.$$

b) Végtelenbeli határérték racionális törtfüggvényre. Emeljük ki a domináns $x^4$ hatványt a számlálóból és a nevezőből is ($x > 0$):
$$\frac{4x^4 - 2x^2 + 7}{5x^4 + 3x^3 - 1} = \frac{x^4\left(4 - \frac{2}{x^2} + \frac{7}{x^4}\right)}{x^4\left(5 + \frac{3}{x} - \frac{1}{x^4}\right)} = \frac{4 - \frac{2}{x^2} + \frac{7}{x^4}}{5 + \frac{3}{x} - \frac{1}{x^4}} \to \frac{4 - 0 + 0}{5 + 0 - 0} = \frac{4}{5}.$$

c) Negatív végtelenben való határérték esetén vigyázni kell a négyzetgyök alóli kiemelésre: ha $x < 0$, akkor $\sqrt{x^2} = |x| = -x$.
Alakítsuk át a nevezőt $x < 0$-ra:
$$\sqrt{4x^2 + x} = \sqrt{x^2\left(4 + \frac{1}{x}\right)} = |x| \sqrt{4 + \frac{1}{x}} = -x \sqrt{4 + \frac{1}{x}}.$$
Így a nevező:
$$\sqrt{4x^2 + x} - x = -x \sqrt{4 + \frac{1}{x}} - x = -x\left(\sqrt{4 + \frac{1}{x}} + 1\right).$$
A tört egyszerűsítése $-x$-szel ($x \ne 0$):
$$\frac{3x}{-x\left(\sqrt{4 + \frac{1}{x}} + 1\right)} = \frac{-3}{\sqrt{4 + \frac{1}{x}} + 1}.$$
Amikor $x \to -\infty$, $\frac{1}{x} \to 0$, ezért:
$$\lim_{x\to-\infty} \frac{-3}{\sqrt{4 + \frac{1}{x}} + 1} = \frac{-3}{\sqrt{4 + 0} + 1} = \frac{-3}{2 + 1} = -1.$$

::: elmelet
**Elméleti háttér — Racionális és gyökös kifejezések határértéke, előjelkezelés végtelenben.**

*Gyakori hiba gyökös kifejezéseknél $x \to -\infty$ esetén:*
Automatikusan $\sqrt{x^2} = x$-et írni fatális hiba, ha $x$ negatív!
$$\sqrt{x^2} = |x| = \begin{cases} x, & \text{ha } x \ge 0, \\ -x, & \text{ha } x < 0. \end{cases}$$
Ha $x \to -\infty$, a kiemelés után megjelenő negatív előjel elhagyása előjelhibához vezet a végeredményben.

*A $\frac{0}{0}$ alakú racionális határértékek kezelése:*
Ha $P(x)/Q(x)$ esetén $P(a) = Q(a) = 0$, akkor az $(x - a)$ gyöktényező kiemelhető és egyszerűsíthető.
:::

## Gy90.2. feladat

Számítsuk ki az alábbi határértékeket:
a) $\lim\limits_{x\to 3} \frac{x^3 - 27}{x^2 - 5x + 6}$;
b) $\lim\limits_{x\to 0} \frac{\sin(5x)}{\tan(3x)}$;
c) $\lim\limits_{x\to 0} \frac{1 - \cos(4x)}{x \sin(2x)}$.

**Megoldás.**

a) Az $x \to 3$ helyettesítéskor $\frac{3^3 - 27}{3^2 - 15 + 6} = \frac{0}{0}$ határozatlan alakot kapunk.
Alakítsuk szorzattá a számlálót az $a^3 - b^3 = (a - b)(a^2 + ab + b^2)$ azonossággal:
$$x^3 - 27 = (x - 3)(x^2 + 3x + 9).$$
A nevező gyökei a Viete-formulák vagy megoldóképlet alapján $2$ és $3$:
$$x^2 - 5x + 6 = (x - 3)(x - 2).$$
Egyszerűsítve az $(x - 3) \ne 0$ tényezővel:
$$\lim_{x\to 3} \frac{(x - 3)(x^2 + 3x + 9)}{(x - 3)(x - 2)} = \lim_{x\to 3} \frac{x^2 + 3x + 9}{x - 2} = \frac{3^2 + 3\cdot 3 + 9}{3 - 2} = \frac{27}{1} = 27.$$

b) Tudjuk, hogy $\lim\limits_{u\to 0} \frac{\sin u}{u} = 1$ és $\tan(3x) = \frac{\sin(3x)}{\cos(3x)}$. Írjuk át a kifejezést:
$$\frac{\sin(5x)}{\tan(3x)} = \frac{\sin(5x)}{\sin(3x)} \cdot \cos(3x) = \frac{\frac{\sin(5x)}{5x} \cdot 5x}{\frac{\sin(3x)}{3x} \cdot 3x} \cdot \cos(3x) = \frac{5}{3} \cdot \frac{\frac{\sin(5x)}{5x}}{\frac{\sin(3x)}{3x}} \cdot \cos(3x).$$
Mivel $x \to 0$ esetén $5x \to 0$ és $3x \to 0$, a nevezetes határértékek miatt a számláló és a nevező is $1$-hez tart, továbbá $\cos(0) = 1$:
$$\lim_{x\to 0} \frac{\sin(5x)}{\tan(3x)} = \frac{5}{3} \cdot \frac{1}{1} \cdot 1 = \frac{5}{3}.$$

c) Használjuk az $1 - \cos(2u) = 2\sin^2(u)$ trigonometrikus azonosságot $u = 2x$-re:
$$1 - \cos(4x) = 2\sin^2(2x).$$
Ezzel a kifejezés:
$$\frac{1 - \cos(4x)}{x \sin(2x)} = \frac{2\sin^2(2x)}{x \sin(2x)} = \frac{2\sin(2x)}{x} = 4 \cdot \frac{\sin(2x)}{2x}.$$
Mivel $2x \to 0$, alkalmazható a $\lim\limits_{u\to 0} \frac{\sin u}{u} = 1$ nevezetes határérték:
$$\lim_{x\to 0} 4 \cdot \frac{\sin(2x)}{2x} = 4 \cdot 1 = 4.$$

::: elmelet
**Elméleti háttér — Nevezetes trigonometrikus határértékek alkalmazása.**

*Alapvető határértékek trigonometrikus feladatokhoz:*
1. $\lim\limits_{x\to 0} \frac{\sin x}{x} = 1$.
2. $\lim\limits_{x\to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2}$, hiszen $\frac{1 - \cos x}{x^2} = \frac{1 - \cos^2 x}{x^2(1 + \cos x)} = \frac{\sin^2 x}{x^2} \cdot \frac{1}{1 + \cos x} \to 1^2 \cdot \frac{1}{2} = \frac{1}{2}$.
3. $\lim\limits_{x\to 0} \frac{\tan x}{x} = 1$.

*Stratégia:* Bármilyen $x \to 0$ melletti trigonometrikus határozatlan alakban hozzuk létre a megfelelő argumentumú $\frac{\sin(\alpha x)}{\alpha x}$ blokkokat.
:::

## Gy91.1. feladat

Legyen $H \subseteq \mathbb{R}$ olyan halmaz, amelynek nincs torlódási pontja $\mathbb{R}$-ben (azaz $H' = \emptyset$).
a) Bizonyítsuk be, hogy $H$ minden korlátos részhalmaza véges.
b) Lássuk be, hogy $H$ legfeljebb megszámlálható.
c) Adjunk példát olyan végtelen $H$ halmazra, amelynek minden pontja izolált pont, de van torlódási pontja.

**Megoldás.**

a) Tegyük fel indirekt módon, hogy $H$-nak van olyan $A \subseteq H$ részhalmaza, amely korlátos, de végtelen.
A Bolzano–Weierstrass-tétel szerint a valós számok tetszőleges korlátos, végtelen részhalmazának létezik legalább egy torlódási pontja a valós számok körében: létezik $p \in \mathbb{R}$, amely torlódási pontja $A$-nak.
Mivel $A \subseteq H$, ezért $A' \subseteq H'$, így $p \in H'$ is teljesülne. Ez azonban ellentmond annak a feltételnek, hogy $H' = \emptyset$ (nincs torlódási pontja $\mathbb{R}$-ben).
Ez az ellentmondás igazolja, hogy $H$ minden korlátos részhalmaza véges.

b) Bontsuk fel $\mathbb{R}$-t megszámlálhatóan sok korlátos intervallum uniójára:
$$\mathbb{R} = \bigcup_{n \in \mathbb{Z}} [n, n+1).$$
Ekkor $H$ felírható diszjunkt metszetek uniójaként:
$$H = \bigcup_{n \in \mathbb{Z}} (H \cap [n, n+1)).$$
Az a) pont szerint minden $H \cap [n, n+1)$ halmaz korlátos részhalmaza $H$-nak, így mindegyik véges halmaz.
Mivel $H$ előáll megszámlálhatóan sok véges halmaz uniójaként, a halmazelmélet alaptétele alapján $H$ legfeljebb megszámlálható. $\blacksquare$

c) *Példa:* Legyen
$$H = \left\{ \frac{1}{n} : n \in \mathbb{N} \right\} = \left\{ 1, \frac{1}{2}, \frac{1}{3}, \dots \right\}.$$
- Tetszőleges $\frac{1}{n} \in H$ pont izolált: válasszuk a $\delta_n = \frac{1}{n} - \frac{1}{n+1} = \frac{1}{n(n+1)} > 0$ sugarat. Ekkor az $\left(\frac{1}{n} - \delta_n, \frac{1}{n} + \delta_n\right)$ környezet $H$-ból kizárólag az $\frac{1}{n}$ elemet tartalmazza.
- Ugyanakkor a $0$ pont torlódási pontja $H$-nak, hiszen tetszőleges $\varepsilon > 0$-hoz van olyan $n \in \mathbb{N}$, hogy $0 < \frac{1}{n} < \varepsilon$. Fontos megjegyezni, hogy $0 \notin H$, tehát a torlódási pont nem eleme a halmaznak.

::: elmelet
**Elméleti háttér — Torlódási pont nélküli halmazok, Bolzano–Weierstrass-tétel.**

*Diszkrét halmaz vs. torlódási pont nélküli halmaz:*
- Egy $H \subseteq \mathbb{R}$ halmaz **diszkrét**, ha minden pontja izolált pontja $H$-nak (azaz $H \cap H' = \emptyset$). Ez még megengedi, hogy a halmazon kívül legyen torlódási pontja (mint a fenti $\{1/n\}$ halmaznál a $0$).
- Egy $H$ halmaz **zárt és diszkrét**, ha egyáltalán nincs torlódási pontja az alapérben: $H' = \emptyset$.
Ekkor minden korlátos szakaszon csak véges sok pontja lehet (lokálisan véges). Erre tipikus példa a $\mathbb{Z}$ egész számok halmaza.
:::

## Gy91.2. feladat

a) Bizonyítsuk be, hogy ha egy $H \subseteq \mathbb{R}$ halmaz zárt és minden pontja izolált pontja $H$-nak, akkor $H$-nak nincs torlódási pontja $\mathbb{R}$-ben ($H' = \emptyset$).
b) Igazoljuk, hogy tetszőleges páronként diszjunkt, nem üres nyílt intervallumokból álló $\mathcal{I} = \{ I_\alpha : \alpha \in A \}$ rendszer legfeljebb megszámlálható.

**Megoldás.**

a) Tegyük fel indirekt módon, hogy $H$-nak létezik torlódási pontja, azaz $H' \ne \emptyset$. Legyen $p \in H'$.
Mivel a feltétel szerint $H$ zárt halmaz, tartalmazza az összes torlódási pontját: $H' \subseteq H$.
Ebből következik, hogy $p \in H$.
Másrészt a feltétel szerint $H$ minden pontja izolált pontja $H$-nak. Ez azt jelenti, hogy létezik olyan $\delta > 0$, amelyre:
$$(p - \delta, p + \delta) \cap H = \{p\}.$$
Ez azonban azt jelenti, hogy a $(p - \delta, p + \delta) \setminus \{p\}$ pontozott környezetben nincs egyetlen $H$-beli pont sem, ami éppen azt fejezi ki, hogy $p$ nem torlódási pontja $H$-nak ($p \notin H'$).
Ez ellentmondás, így $H$-nak valóban nem létezhet torlódási pontja $\mathbb{R}$-ben: $H' = \emptyset$. $\blacksquare$

b) Legyen $I_\alpha = (a_\alpha, b_\alpha)$ egy tetszőleges intervallum a rendszerből ($a_\alpha < b_\alpha$).
A racionális számok halmaza ($\mathbb{Q}$) sűrű $\mathbb{R}$-ben: minden nem üres nyílt intervallum tartalmaz legalább egy racionális számot.
Ezért minden $\alpha \in A$ esetén választhatunk egy $q_\alpha \in I_\alpha \cap \mathbb{Q}$ racionális számot (pl. a legkisebb nevezőjűt).
Definiáljuk a $\varphi : \mathcal{I} \to \mathbb{Q}$ leképezést a $\varphi(I_\alpha) = q_\alpha$ hozzárendeléssel.
Belátjuk, hogy $\varphi$ injektív:
Tegyük fel, hogy $I_\alpha \ne I_\beta$. Mivel a rendszer elemei a feltétel szerint páronként diszjunktak, $I_\alpha \cap I_\beta = \emptyset$.
Mivel $q_\alpha \in I_\alpha$ és $q_\beta \in I_\beta$, a diszjunktság miatt $q_\alpha \ne q_\beta$.
Tehát különböző intervallumokhoz különböző racionális számok tartoznak, ami azt jelenti, hogy $\varphi$ injekció az $\mathcal{I}$ halmazból a $\mathbb{Q}$ megszámlálható halmazba.
Mivel egy megszámlálható halmazba injektálható halmaz maga is legfeljebb megszámlálható, az $\mathcal{I}$ rendszer legfeljebb megszámlálható. $\blacksquare$

::: elmelet
**Elméleti háttér — Szeparabilitás és diszjunkt nyílt halmazok megszámlálhatósága.**

*A szeparabilitás következményei:*
A valós számok tere szeparábilis, mert van benne megszámlálható sűrű részhalmaz ($\mathbb{Q}$).
Ennek közvetlen és messzemenő következményei:
1. Bármely páronként diszjunkt nem üres nyílt halmazrendszer legfeljebb megszámlálható.
2. $\mathbb{R}$ minden nyílt részhalmaza előáll megszámlálható sok páronként diszjunkt nyílt intervallum uniójaként.
3. Minden olyan pontrendszer, amely diszkrét (pontjai körül diszjunkt környezetek választhatók), legfeljebb megszámlálható.
:::

## Gy92.1. feladat

a) Legyen $f : \mathbb{R} \to \mathbb{R}$ periodikus függvény $p > 0$ periódussal. Tegyük fel, hogy létezik a $\lim\limits_{x\to-\infty} f(x) = c$ határérték. Bizonyítsuk be, hogy $f(x) = c$ minden $x \in \mathbb{R}$-re (azaz $f$ azonosan konstans).
b) Legyen $g : (0, \infty) \to \mathbb{R}$ olyan függvény, amelyre $g(3x) = g(x)$ minden $x > 0$ esetén, és $\lim\limits_{x\to+\infty} g(x) = A$. Bizonyítsuk be, hogy $g(x) = A$ minden $x > 0$-ra.

**Megoldás.**

a) Legyen $x \in \mathbb{R}$ egy tetszőlegesen rögzített valós szám.
Tekintsük az $x_n = x - n p$ sorozatot ($n \in \mathbb{N}$).
Mivel $p > 0$, ezért $n p \to +\infty$, így:
$$\lim_{n\to\infty} x_n = \lim_{n\to\infty} (x - n p) = -\infty.$$
Mivel a feltétel szerint $\lim\limits_{t\to-\infty} f(t) = c$, a Heine-féle átviteli elv alapján az $(x_n)$ sorozatra teljesül:
$$\lim_{n\to\infty} f(x_n) = c.$$
Másrészről $f$ a feltétel szerint $p$ szerint periodikus, ezért teljes indukcióval $f(x - n p) = f(x)$ minden $n \in \mathbb{N}$ esetén.
Így az $(f(x_n))$ sorozat minden tagja megegyezik a konstans $f(x)$ értékkel:
$$f(x_n) = f(x) \quad \forall n \in \mathbb{N}.$$
A konstans sorozat határértéke önmaga: $\lim_{n\to\infty} f(x_n) = f(x)$.
A határérték egyértelműsége miatt:
$$f(x) = c.$$
Mivel $x$ tetszőleges volt, ez minden $x \in \mathbb{R}$ esetén fennáll, tehát $f \equiv c$. $\blacksquare$

b) Legyen $x > 0$ tetszőlegesen rögzített pont.
A $g(3y) = g(y)$ egyenletből indukcióval adódik, hogy tetszőleges $n \in \mathbb{N}$ esetén:
$$g(x \cdot 3^n) = g(x).$$
Tekintsük az $y_n = x \cdot 3^n$ sorozatot. Mivel $x > 0$ és $3 > 1$, ezért $y_n \to +\infty$ ($n \to \infty$).
A határérték létezése és az átviteli elv miatt:
$$\lim_{n\to\infty} g(y_n) = A.$$
Mivel minden $n$-re $g(y_n) = g(x)$, a sorozat értéke konstans $g(x)$, így a határértéke $g(x)$.
Ezért $g(x) = A$. Mivel $x > 0$ tetszőleges volt, $g(x) = A$ minden $x \in (0, \infty)$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — Invariáns skálázás és periodicitás kapcsolata a végtelenbeli határértékkel.**

*Alapelv:*
Ha egy függvény rendelkezik olyan diszkrét szimmetriával (periodicitás, skálázási invariancia), amely tetszőleges pontból kiindulva a végtelenbe tartó sorozatot hoz létre, akkor:
$$\text{ha létezik határérték a végtelenben, a függvény azon a szimmetria-pályán konstans kell legyen.}$$
Ha ráadásul a pályák lefedik az egész értelmezési tartományt, a függvény globálisan konstans!
:::

## Gy92.2. feladat

a) Legyen $f : \mathbb{R} \to \mathbb{R}$ folytonos, 1 szerint periodikus függvény (azaz $f(x+1) = f(x)$ minden $x$-re). Számítsuk ki a $\lim\limits_{x\to\infty} \frac{f(x)}{x}$ határértéket!
b) Igazoljuk, hogy ha egy $g : [0, 1] \to \mathbb{R}$ folytonos függvény kielégíti a $g(x^2) = g(x)$ egyenlőséget minden $x \in [0, 1]$ esetén, akkor $g$ konstans függvény.

**Megoldás.**

a) Mivel $f$ folytonos a kompakt $[0, 1]$ intervallumon, a Weierstrass-tétel szerint korlátos ezen az intervallumon: létezik olyan $M \ge 0$, hogy $|f(x)| \le M$ minden $x \in [0, 1]$ esetén.
Mivel $f$ periodikus 1 periódussal, minden $x \in \mathbb{R}$ felírható $x = [x] + \{x\}$ alakban, ahol $\{x\} \in [0, 1)$, és $f(x) = f(\{x\})$.
Következésképpen:
$$|f(x)| \le M \quad \forall x \in \mathbb{R}.$$
Tekintsük a $\frac{f(x)}{x}$ hányadost $x > 0$ esetén:
$$-\frac{M}{x} \le \frac{f(x)}{x} \le \frac{M}{x}.$$
Mivel $\lim\limits_{x\to\infty} \left(-\frac{M}{x}\right) = 0$ és $\lim\limits_{x\to\infty} \frac{M}{x} = 0$, a rendőrelv alapján:
$$\lim_{x\to\infty} \frac{f(x)}{x} = 0.$$

b) Legyen $x \in [0, 1)$ tetszőleges pont.
A $g(x) = g(x^2)$ azonosság ismételt alkalmazásával minden $n \in \mathbb{N}$-re:
$$g(x) = g(x^2) = g(x^4) = \dots = g(x^{2^n}).$$
Mivel $0 \le x < 1$, ezért $x^{2^n} \to 0$, amint $n \to \infty$.
Mivel $g$ folytonos a $0$ pontban, a Heine-féle átviteli elv alapján:
$$\lim_{n\to\infty} g(x^{2^n}) = g\left(\lim_{n\to\infty} x^{2^n}\right) = g(0).$$
Ugyanakkor $g(x^{2^n}) = g(x)$ minden $n$-re, így:
$$g(x) = g(0) \quad \forall x \in [0, 1).$$
Már csak az $x = 1$ pont vizsgálata van hátra. Mivel $g$ folytonos a zárt $[0, 1]$ intervallumon, folytonos balról az $x = 1$ pontban is:
$$g(1) = \lim_{x\to 1-0} g(x) = \lim_{x\to 1-0} g(0) = g(0).$$
Tehát $g(x) = g(0)$ minden $x \in [0, 1]$ pontban, vagyis $g$ valóban konstans függvény. $\blacksquare$

::: elmelet
**Elméleti háttér — Kompakt halmazon folytonos függvények tulajdonságai és iterált határértékek.**

*Weierstrass-tétel következménye periodikus függvényekre:*
Minden folytonos periodikus függvény korlátos a teljes $\mathbb{R}$-en, hiszen értékkészlete megegyezik a zárt periódusintervallum folytonos képével, ami korlátos és zárt.

*Fixpontos dinamika függvényegyenleteknél:*
A $g(x) = g(\varphi(x))$ típusú egyenleteknél, ha a $\varphi(x) = x^2$ leképezés a $[0, 1)$ intervallum minden pontját a $0$ fixpontba vonzza ($\varphi^n(x) \to 0$), és $g$ folytonos ebben a fixpontban, akkor $g$ értéke a teljes vonzási tartományban megegyezik a fixpontbeli értékkel!
:::

## Gy93.1. feladat

Számítsuk ki az alábbi határértékeket helyettesítéssel vagy gyöktelenítéssel:
a) $\lim\limits_{x\to 1} \frac{\sqrt[5]{x} - 1}{\sqrt[3]{x} - 1}$;
b) $\lim\limits_{x\to 0} \frac{\sqrt{1 + 3x} - \sqrt{1 - 2x}}{x}$;
c) $\lim\limits_{x\to 7} \frac{\sqrt{x + 2} - 3}{x - 7}$.

**Megoldás.**

a) Vezessünk be új változót a gyökkitevők legkisebb közös többszörösének segítségével:
$\operatorname{lkkt}(5, 3) = 15$. Legyen $t = \sqrt[15]{x}$, azaz $x = t^{15}$.
Amikor $x \to 1$, akkor $t \to 1$ (és $x \ne 1 \iff t \ne 1$).
A kifejezés az új változóval:
$$\frac{\sqrt[5]{x} - 1}{\sqrt[3]{x} - 1} = \frac{t^3 - 1}{t^5 - 1}.$$
Bontsuk szorzattá a számlálót és a nevezőt a $t^n - 1 = (t - 1)(t^{n-1} + \dots + 1)$ azonossággal:
$$\frac{t^3 - 1}{t^5 - 1} = \frac{(t - 1)(t^2 + t + 1)}{(t - 1)(t^4 + t^3 + t^2 + t + 1)} = \frac{t^2 + t + 1}{t^4 + t^3 + t^2 + t + 1}.$$
Mivel $t \to 1$:
$$\lim_{t\to 1} \frac{t^2 + t + 1}{t^4 + t^3 + t^2 + t + 1} = \frac{1 + 1 + 1}{1 + 1 + 1 + 1 + 1} = \frac{3}{5}.$$

b) Szorozzunk és osszunk a számláló konjugáltjával, $\sqrt{1 + 3x} + \sqrt{1 - 2x}$-szel ($x \ne 0$):
$$\frac{\sqrt{1 + 3x} - \sqrt{1 - 2x}}{x} = \frac{(1 + 3x) - (1 - 2x)}{x\left(\sqrt{1 + 3x} + \sqrt{1 - 2x}\right)} = \frac{5x}{x\left(\sqrt{1 + 3x} + \sqrt{1 - 2x}\right)}.$$
Egyszerűsítve $x$-szel:
$$= \frac{5}{\sqrt{1 + 3x} + \sqrt{1 - 2x}}.$$
Mivel a négyzetgyökfüggvény folytonos a $0$ környezetében, a határérték $x \to 0$ esetén:
$$\lim_{x\to 0} \frac{5}{\sqrt{1 + 3x} + \sqrt{1 - 2x}} = \frac{5}{\sqrt{1} + \sqrt{1}} = \frac{5}{2}.$$

c) Szorozzunk a számláló konjugáltjával, $\sqrt{x + 2} + 3$-mal ($x \ne 7$):
$$\frac{\sqrt{x + 2} - 3}{x - 7} = \frac{(\sqrt{x + 2} - 3)(\sqrt{x + 2} + 3)}{(x - 7)(\sqrt{x + 2} + 3)} = \frac{(x + 2) - 9}{(x - 7)(\sqrt{x + 2} + 3)} = \frac{x - 7}{(x - 7)(\sqrt{x + 2} + 3)}.$$
Egyszerűsítve az $(x - 7)$ tényezővel:
$$= \frac{1}{\sqrt{x + 2} + 3}.$$
Ha $x \to 7$:
$$\lim_{x\to 7} \frac{1}{\sqrt{x + 2} + 3} = \frac{1}{\sqrt{9} + 3} = \frac{1}{3 + 3} = \frac{1}{6}.$$

::: elmelet
**Elméleti háttér — Helyettesítés és gyöktelenítés határértékekben.**

*Új változó bevezetése gyökös kifejezéseknél:*
Ha a feladatban többféle gyök szerepel ($\sqrt[k]{x}$ és $\sqrt[m]{x}$), válasszuk $t = \sqrt[N]{x}$-et, ahol $N = \operatorname{lkkt}(k, m)$.
Ezzel minden gyökös tag egész kitevős hatvánnyá alakul: $\sqrt[k]{x} = t^{N/k}$, és a feladat egyszerű polinomiális határértékké válik.

*Konjugálttal való szorzás:*
Négyzetgyökök különbségénél az $(a - b)(a + b) = a^2 - b^2$ azonosság azonnal eltünteti a gyökjeleket a határozatlanságot okozó tagból.
:::

## Gy93.2. feladat

Számítsuk ki az alábbi határértékeket:
a) $\lim\limits_{x\to +\infty} \left( \sqrt{x^2 + 6x + 2} - x \right)$;
b) $\lim\limits_{x\to -\infty} \left( \sqrt{x^2 - 8x} + x \right)$;
c) $\lim\limits_{x\to 0} \frac{\sqrt[3]{1 + 2x} - 1}{x}$.

**Megoldás.**

a) $\infty - \infty$ típusú határozatlan alak. Szorozzunk és osszunk a konjugálttal:
$$\sqrt{x^2 + 6x + 2} - x = \frac{(\sqrt{x^2 + 6x + 2} - x)(\sqrt{x^2 + 6x + 2} + x)}{\sqrt{x^2 + 6x + 2} + x} = \frac{x^2 + 6x + 2 - x^2}{\sqrt{x^2 + 6x + 2} + x} = \frac{6x + 2}{\sqrt{x^2 + 6x + 2} + x}.$$
Mivel $x \to +\infty$, a számlálóból és a nevezőből is emeljünk ki $x$-et ($\sqrt{x^2} = x$):
$$\frac{x\left(6 + \frac{2}{x}\right)}{x\left(\sqrt{1 + \frac{6}{x} + \frac{2}{x^2}} + 1\right)} = \frac{6 + \frac{2}{x}}{\sqrt{1 + \frac{6}{x} + \frac{2}{x^2}} + 1}.$$
Amikor $x \to +\infty$:
$$\lim_{x\to+\infty} \frac{6 + \frac{2}{x}}{\sqrt{1 + \frac{6}{x} + \frac{2}{x^2}} + 1} = \frac{6 + 0}{\sqrt{1 + 0 + 0} + 1} = \frac{6}{2} = 3.$$

b) Negatív végtelenben $x < 0$. Vezessünk be új változót: $y = -x > 0$, ekkor $y \to +\infty$.
Ezzel a kifejezés:
$$\sqrt{(-y)^2 - 8(-y)} + (-y) = \sqrt{y^2 + 8y} - y.$$
Szorozzunk a konjugálttal:
$$\frac{(\sqrt{y^2 + 8y} - y)(\sqrt{y^2 + 8y} + y)}{\sqrt{y^2 + 8y} + y} = \frac{y^2 + 8y - y^2}{\sqrt{y^2 + 8y} + y} = \frac{8y}{y\left(\sqrt{1 + \frac{8}{y}} + 1\right)} = \frac{8}{\sqrt{1 + \frac{8}{y}} + 1}.$$
Amint $y \to +\infty$:
$$\lim_{y\to+\infty} \frac{8}{\sqrt{1 + \frac{8}{y}} + 1} = \frac{8}{\sqrt{1} + 1} = \frac{8}{2} = 4.$$

c) Köbgyökök esetén az $a^3 - b^3 = (a - b)(a^2 + ab + b^2)$ azonosságot alkalmazzuk:
$$a - b = \frac{a^3 - b^3}{a^2 + ab + b^2}.$$
Legyen $a = \sqrt[3]{1 + 2x}$ és $b = 1$. Ekkor $a^3 - b^3 = 1 + 2x - 1 = 2x$.
A kifejezés:
$$\frac{\sqrt[3]{1 + 2x} - 1}{x} = \frac{2x}{x\left( \sqrt[3]{(1 + 2x)^2} + \sqrt[3]{1 + 2x} + 1 \right)} = \frac{2}{\sqrt[3]{(1 + 2x)^2} + \sqrt[3]{1 + 2x} + 1}.$$
Ha $x \to 0$, a nevező minden tagja $1$-hez tart:
$$\lim_{x\to 0} \frac{2}{\sqrt[3]{(1 + 2x)^2} + \sqrt[3]{1 + 2x} + 1} = \frac{2}{1 + 1 + 1} = \frac{2}{3}.$$

::: elmelet
**Elméleti háttér — Határozatlan alakok köbgyökökkel és aszimptotikus különbségekkel.**

*Magasabb rendű gyökök gyöktelenítése:*
- Köbgyök esetén: $\sqrt[3]{A} - \sqrt[3]{B} = \frac{A - B}{\sqrt[3]{A^2} + \sqrt[3]{AB} + \sqrt[3]{B^2}}$.
- Általános $n$-edik gyök esetén: $\sqrt[n]{A} - \sqrt[n]{B} = \frac{A - B}{\sum_{k=0}^{n-1} \sqrt[n]{A^{n-1-k} B^k}}$.

*Trükk negatív végtelenben:*
A hibalehetőségek minimalizálása érdekében $x \to -\infty$ esetén mindig hajtsuk végre az $y = -x$ helyettesítést, így kényelmesen $y \to +\infty$ mellett dolgozhatunk, ahol $\sqrt{y^2} = y$ magától értetődően pozitív marad.
:::

## Gy94.1. feladat

Határozzuk meg az alábbi függvények folytonossági pontjainak halmazát $\mathbb{R}$-en, és adjunk részletes indoklást:
a) $f(x) = \begin{cases} 2x^2 + 1, & \text{ha } x \in \mathbb{Q}, \\ 3x, & \text{ha } x \notin \mathbb{Q}; \end{cases}$
b) $g(x) = [x] \cdot \sin(\pi x)$;
c) $h(x) = x \cdot D(x)$, ahol $D$ a Dirichlet-függvény ($D(x) = 1$, ha $x \in \mathbb{Q}$, és $0$, ha $x \notin \mathbb{Q}$).

**Megoldás.**

a) Legyen $a \in \mathbb{R}$ tetszőleges pont.
A racionális és irracionális számok sűrűsége miatt létezik olyan $(r_n) \subset \mathbb{Q}$ és $(i_n) \subset \mathbb{R} \setminus \mathbb{Q}$ sorozat, hogy $r_n \to a$ és $i_n \to a$.
Ekkor a függvényértékek:
$$f(r_n) = 2r_n^2 + 1 \to 2a^2 + 1, \qquad f(i_n) = 3i_n \to 3a.$$
Ahhoz, hogy $f$ folytonos legyen $a$-ban, a két határértéknek meg kell egyeznie:
$$2a^2 + 1 = 3a \iff 2a^2 - 3a + 1 = 0 \iff (2a - 1)(a - 1) = 0.$$
Tehát a lehetséges folytonossági pontok csak az $a = \frac{1}{2}$ és $a = 1$ lehetnek.
Belátjuk, hogy mindkét pontban valóban folytonos:
- Ha $a = 1$: $f(1) = 2(1)^2 + 1 = 3$. Tetszőleges $x$-re:
  $$|f(x) - f(1)| = \begin{cases} |2x^2 + 1 - 3| = 2|x^2 - 1| = 2|x - 1||x + 1|, & \text{ha } x \in \mathbb{Q}, \\ |3x - 3| = 3|x - 1|, & \text{ha } x \notin \mathbb{Q}. \end{cases}$$
  Ha $|x - 1| < 1$, akkor $|x + 1| < 3$, így $2|x - 1||x + 1| < 6|x - 1|$. Tehát $|f(x) - f(1)| \le 6|x - 1|$.
  Adott $\varepsilon > 0$-hoz $\delta = \min\left\{1, \frac{\varepsilon}{6}\right\}$ választással ha $|x - 1| < \delta$, akkor $|f(x) - f(1)| < \varepsilon$. Folytonos.
- Hasonlóan $a = \frac{1}{2}$-ben $f(1/2) = 3/2$, és $|f(x) - 3/2| \le C |x - 1/2|$ teljesül kis környezetben.
Tehát a folytonossági pontok halmaza: $C(f) = \left\{ \frac{1}{2}, 1 \right\}$.

b) Vizsgáljuk a $g(x) = [x] \cdot \sin(\pi x)$ függvényt:
- Ha $x_0 \notin \mathbb{Z}$: ekkor $x_0$ egy kis nyílt környezetében az egészrészfüggvény konstans: $[x] = [x_0] = c \in \mathbb{Z}$.
  Mivel a $\sin(\pi x)$ függvény folytonos $\mathbb{R}$-en, egy konstanssal való szorzata is folytonos ezen a környezeten, így $g$ folytonos $x_0$-ban.
- Ha $x_0 = k \in \mathbb{Z}$: számoljuk ki az egyoldali határértékeket és a helyettesítési értéket:
  $$g(k) = [k] \cdot \sin(\pi k) = k \cdot 0 = 0.$$
  Jobb oldali határérték: ha $x \in (k, k+1)$, akkor $[x] = k$, így:
  $$\lim_{x\to k+0} g(x) = \lim_{x\to k+0} k \sin(\pi x) = k \sin(\pi k) = 0.$$
  Bal oldali határérték: ha $x \in (k-1, k)$, akkor $[x] = k - 1$, így:
  $$\lim_{x\to k-0} g(x) = \lim_{x\to k-0} (k - 1) \sin(\pi x) = (k - 1) \sin(\pi k) = 0.$$
  Mivel $\lim_{x\to k+0} g(x) = \lim_{x\to k-0} g(x) = g(k) = 0$, a függvény az összes egész helyen is folytonos!
Következésképpen $g$ a teljes $\mathbb{R}$-en folytonos: $C(g) = \mathbb{R}$.

c) A $h(x) = x \cdot D(x)$ függvény:
- Ha $a = 0$: $h(0) = 0 \cdot D(0) = 0$. Mivel $|D(x)| \le 1$ mindenütt,
  $$|h(x) - h(0)| = |x D(x)| \le |x|.$$
  Tetszőleges $\varepsilon > 0$-ra $\delta = \varepsilon$ választással ha $|x - 0| < \delta$, akkor $|h(x) - 0| \le |x| < \varepsilon$. Tehát $h$ folytonos a $0$ pontban.
- Ha $a \ne 0$: racionális $r_n \to a$ sorozat mentén $h(r_n) = r_n \to a \ne 0$.
  Irracionális $i_n \to a$ sorozat mentén $h(i_n) = 0 \to 0$.
  Mivel $a \ne 0$, a két határérték különbözik, így $a \ne 0$-ban nincs határértéke a függvénynek, nem folytonos.
Folytonossági pontok halmaza: $C(h) = \{0\}$.

::: elmelet
**Elméleti háttér — Esetenként definiált függvények folytonossági pontjainak meghatározása.**

*Általános elv esetenként adott függvényekre:*
Ha $f(x) = \varphi(x)$ ha $x \in A$ és $\psi(x)$ ha $x \notin A$, ahol mindkét halmaz sűrű $\mathbb{R}$-ben és $\varphi, \psi$ folytonosak, akkor:
$$f \text{ pontosan azokban a pontokban folytonos, ahol } \varphi(x) = \psi(x).$$

*A szorzatfüggvény zérusszorosa:*
Ha $f(x) = \alpha(x) \beta(x)$, ahol $\beta$ nem feltétlenül folytonos, de korlátos egy pont környezetében, és $\lim_{x\to a} \alpha(x) = 0$, akkor $\lim_{x\to a} f(x) = 0$. Ha ráadásul $f(a) = 0$, a szorzatfüggvény folytonos $a$-ban! Erre példa az $x D(x)$ a $0$-ban vagy $[x] \sin(\pi x)$ az egészekben.
:::

## Gy94.2. feladat

Határozzuk meg az alábbi függvények szakadási pontjait, és osztályozzuk őket (megszüntethető szakadás, elsőfajú ugrásszakadás, másodfajú szakadás):
a) $f(x) = \begin{cases} \frac{x^2 - 4}{|x - 2|}, & \text{ha } x \ne 2, \\ 4, & \text{ha } x = 2; \end{cases}$
b) $g(x) = \{x\} = x - [x]$ (törtrészfüggvény);
c) $h(x) = \begin{cases} \cos\left(\frac{1}{x}\right), & \text{ha } x \ne 0, \\ 0, & \text{ha } x = 0. \end{cases}$

**Megoldás.**

a) Az $x \ne 2$ pontokban a függvény elemi műveletekkel felírt folytonos függvények hányadosa (a nevező nem nulla), így folytonos.
Az $x = 2$ pontban:
- Jobb oldali határérték ($x > 2 \implies |x - 2| = x - 2$):
  $$\lim_{x\to 2+0} f(x) = \lim_{x\to 2+0} \frac{(x - 2)(x + 2)}{x - 2} = \lim_{x\to 2+0} (x + 2) = 4.$$
- Bal oldali határérték ($x < 2 \implies |x - 2| = -(x - 2)$):
  $$\lim_{x\to 2-0} f(x) = \lim_{x\to 2-0} \frac{(x - 2)(x + 2)}{-(x - 2)} = \lim_{x\to 2-0} -(x + 2) = -4.$$
Mivel mindkét egyoldali határérték létezik és véges, de $\lim_{x\to 2+0} f(x) \ne \lim_{x\to 2-0} f(x)$ ($4 \ne -4$), az $x = 2$ pont **elsőfajú szakadási pont (ugrásszakadás)**. Az ugrás nagysága: $|4 - (-4)| = 8$.

b) A törtrészfüggvény: $g(x) = x - [x]$.
- Ha $x_0 \notin \mathbb{Z}$: egy kis környezetben $[x]$ konstans, $x$ folytonos, így különbségük $g(x)$ folytonos.
- Ha $x_0 = k \in \mathbb{Z}$:
  - A függvényérték: $g(k) = k - [k] = k - k = 0$.
  - Jobb oldali határérték ($x \in (k, k+1) \implies [x] = k$):
    $$\lim_{x\to k+0} g(x) = \lim_{x\to k+0} (x - k) = k - k = 0.$$
  - Bal oldali határérték ($x \in (k-1, k) \implies [x] = k - 1$):
    $$\lim_{x\to k-0} g(x) = \lim_{x\to k-0} (x - (k - 1)) = k - (k - 1) = 1.$$
Mivel mindkét egyoldali határérték létezik és véges, de nem egyenlő ($0 \ne 1$), minden $k \in \mathbb{Z}$ pont **elsőfajú szakadási pont (ugrásszakadás)**. Az ugrás mértéke minden egész pontban $1$.

c) A $h(x)$ függvény:
- Ha $x \ne 0$: folytonos függvények kompozíciója, folytonos.
- Az $x = 0$ pontban:
  Tekintsük az $x_n = \frac{1}{2n\pi} \to 0$ zérussorozatot, ekkor $h(x_n) = \cos(2n\pi) = 1 \to 1$.
  Tekintsük az $y_n = \frac{1}{\pi + 2n\pi} \to 0$ zérussorozatot, ekkor $h(y_n) = \cos(\pi + 2n\pi) = -1 \to -1$.
  Ezért sem a jobb oldali, sem a bal oldali határérték nem létezik a $0$ pontban.
  Mivel legalább az egyik egyoldali határérték nem létezik, az $x = 0$ pont **másodfajú szakadási pont (lényeges szakadás)**.

::: elmelet
**Elméleti háttér — Szakadási pontok osztályozása.**

*Definíciók (szakadási pontok típusai):*
Legyen $a$ torlódási pontja $D(f)$-nek, ahol $f$ nem folytonos.
1. **Megszüntethető szakadás:** Létezik a véges $\lim_{x\to a} f(x) = L$, de $f(a) \ne L$ (vagy $a \notin D(f)$). Az érték átdefiniálásával a függvény folytonossá tehető.
2. **Elsőfajú szakadás (véges ugrás):** Létezik a véges bal oldali $f(a-0)$ és jobb oldali $f(a+0)$ határérték, de nem egyenlők: $f(a-0) \ne f(a+0)$. Az ugrás nagysága: $|f(a+0) - f(a-0)|$.
3. **Másodfajú szakadás (lényeges szakadás):** A két egyoldali határérték közül legalább az egyik nem létezik vagy végtelen ($\pm\infty$).
:::

## Gy95.1. feladat

Legyen $R : \mathbb{R} \to \mathbb{R}$ a standard Riemann-függvény:
$$R(x) = \begin{cases} \frac{1}{q}, & \text{ha } x = \frac{p}{q} \in \mathbb{Q} \text{ egyszerűsített tört alakban } (q \in \mathbb{N}, p \in \mathbb{Z}, \operatorname{lnko}(p, q) = 1), \\ 0, & \text{ha } x \notin \mathbb{Q} \text{ vagy } x = 0. \end{cases}$$
a) Létezik-e a $\lim\limits_{x\to 0} \frac{R(x)}{|x|^{1/3}}$ határérték?
b) Létezik-e a $\lim\limits_{x\to 0} \frac{R(x)}{x^3}$ határérték?
c) Bizonyítsuk be, hogy tetszőleges $\alpha \in (0, 1)$ esetén $\lim\limits_{x\to 0} \frac{R(x)}{|x|^\alpha} = 0$.

**Megoldás.**

a) és c) Bizonyítsuk be az általános c) állítást tetszőleges rögzített $\alpha \in (0, 1)$ esetén (ebből az $\alpha = 1/3$ eset azonnal adódik).
Legyen $x \ne 0$.
- Ha $x$ irracionális: ekkor $R(x) = 0$, tehát a tört $\frac{R(x)}{|x|^\alpha} = 0$.
- Ha $x = \frac{p}{q} \ne 0$ egyszerűsített tört ($q \ge 1, p \in \mathbb{Z} \setminus \{0\}$):
  Ekkor $|p| \ge 1$, amiből $|x| = \frac{|p|}{q} \ge \frac{1}{q}$.
  Ebből következik, hogy:
  $$|x|^\alpha \ge \frac{1}{q^\alpha} \implies \frac{1}{|x|^\alpha} \le q^\alpha.$$
  Ezért a hányadosra:
  $$0 \le \frac{R(x)}{|x|^\alpha} = \frac{1/q}{|x|^\alpha} \le \frac{1}{q} \cdot q^\alpha = \frac{1}{q^{1 - \alpha}}.$$
  Mivel $\alpha \in (0, 1)$, a kitevő szigorúan pozitív: $1 - \alpha > 0$.
  Legyen adva egy tetszőleges $\varepsilon > 0$.
  Olyan $q$ nevezőket keresünk, amelyekre $\frac{1}{q^{1 - \alpha}} \ge \varepsilon$, azaz $q^{1 - \alpha} \le \frac{1}{\varepsilon} \iff q \le \left(\frac{1}{\varepsilon}\right)^{\frac{1}{1 - \alpha}} =: Q_0$.
  A $[-1, 1]$ intervallumban csak véges sok olyan racionális tört van, amelynek nevezője nem haladja meg $Q_0$-t!
  Jelölje ezen nem nulla törtek halmazát $H_\varepsilon = \{ r_1, r_2, \dots, r_m \}$.
  Válasszuk a $\delta = \min\{1, |r_1|, |r_2|, \dots, |r_m|\} > 0$ értéket.
  Ha $0 < |x| < \delta$:
  - vagy $x$ irracionális, és ekkor $\frac{R(x)}{|x|^\alpha} = 0 < \varepsilon$,
  - vagy $x = p/q$ racionális, de mivel $|x| < \delta$, $x \notin H_\varepsilon$, így a nevezőjére szükségszerűen $q > Q_0$ teljesül.
    Ekkor azonban $\frac{R(x)}{|x|^\alpha} \le \frac{1}{q^{1 - \alpha}} < \frac{1}{Q_0^{1 - \alpha}} = \varepsilon$.
  Ez azt jelenti, hogy $\forall \varepsilon > 0$-hoz találtunk megfelelő $\delta > 0$-t, tehát:
  $$\lim_{x\to 0} \frac{R(x)}{|x|^\alpha} = 0.$$
  Speciálisan $\alpha = 1/3$-ra a határérték létezik, és értéke $0$.

b) Vizsgáljuk a $\lim\limits_{x\to 0} \frac{R(x)}{x^3}$ határértéket.
Válasszuk az $x_n = \frac{1}{n}$ sorozatot ($n \in \mathbb{N}$).
Ekkor $x_n \to 0$, és $R(x_n) = R(1/n) = \frac{1}{n}$. A hányados:
$$\frac{R(x_n)}{x_n^3} = \frac{1/n}{(1/n)^3} = \frac{1/n}{1/n^3} = n^2 \to +\infty \quad (n \to \infty).$$
Másrészt válasszuk az $y_n = \frac{\sqrt{2}}{n}$ irracionális zérussorozatot. Ekkor $R(y_n) = 0$, így:
$$\frac{R(y_n)}{y_n^3} = 0 \to 0 \quad (n \to \infty).$$
Mivel a két sorozat mentén különböző határértéket kapunk (az egyik végtelenbe tart, a másik nullához), a keresett határérték nem létezik.

::: elmelet
**Elméleti háttér — A Riemann-függvény aszimptotikája a zérushely körül.**

*A Riemann-függvény nagyságrendje:*
Minden $x = p/q$ nem nulla racionális számra $|x| \ge \frac{1}{q} = R(x)$, azaz:
$$R(x) \le |x| \quad \forall x \in \mathbb{R}.$$
A „legrosszabb” pontok, ahol $R(x)$ a lehető legnagyobb az $|x|$-hez képest, az $x = \pm 1/n$ törtek, ahol $R(1/n) = 1/n = x$.
Ezért:
- Ha $\alpha < 1$, a nevező lassabban tart nullához, mint $x$, így $\frac{R(x)}{|x|^\alpha} \to 0$.
- Ha $\alpha = 1$, az $1/n$ sorozat mentén a hányados $1$, de irracionális sorozaton $0$: nem létezik határérték!
- Ha $\alpha > 1$, az $1/n$ sorozat mentén a hányados végtelenbe divergál.
:::

## Gy95.2. feladat

Legyen $R : \mathbb{R} \to \mathbb{R}$ a Riemann-függvény.
a) Határozzuk meg $R$ összes folytonossági pontját és szakadási pontját $\mathbb{R}$-en.
b) Bizonyítsuk be, hogy $R$ egyetlen pontban sem differenciálható.

**Megoldás.**

a) **Folytonossági pontok meghatározása:**
- Legyen $x_0 \in \mathbb{R} \setminus \mathbb{Q}$ tetszőleges irracionális pont. Ekkor $R(x_0) = 0$.
  Tetszőleges $\varepsilon > 0$-hoz tekintsük az $(x_0 - 1, x_0 + 1)$ környezetet. Ebben csak véges sok olyan racionális szám van, amelynek nevezője $\le \frac{1}{\varepsilon}$.
  Jelölje ezen pontok $x_0$-tól vett minimális távolságát $\delta$. Mivel $x_0$ irracionális, ezen racionális pontok egyike sem egyezik $x_0$-lal, így $\delta > 0$.
  Ha $|x - x_0| < \delta$, akkor vagy $x$ irracionális és $R(x) = 0$, vagy $x$ olyan racionális szám, amelynek nevezője $q > \frac{1}{\varepsilon} \implies R(x) = \frac{1}{q} < \varepsilon$.
  Minden esetben $|R(x) - R(x_0)| = R(x) < \varepsilon$. Tehát $R$ folytonos minden irracionális helyen.
- Legyen $x_0 = \frac{p}{q} \in \mathbb{Q}$ tetszőleges racionális pont ($q \ge 1$). Ekkor $R(x_0) = \frac{1}{q} > 0$ (illetve ha $x_0 = 0$, $R(0) = 0$, de a nem nulla racionális sorozat mentén nem nulla).
  Mivel minden környezetben vannak irracionális pontok, választhatunk olyan $i_n \to x_0$ irracionális sorozatot, amelyre $R(i_n) = 0 \to 0 \ne R(x_0) = \frac{1}{q}$.
  Ezért $R$ megszakad minden racionális pontban.
*Összegzés:* $R$ folytonos $\mathbb{R} \setminus \mathbb{Q}$-n, és szakadása van minden $\mathbb{Q}$-beli pontban.

b) **Nem differenciálhatóság:**
A differenciálhatóság szükséges feltétele a folytonosság. Mivel $R$ egyetlen racionális pontban sem folytonos, racionális helyeken nem lehet differenciálható.
Vizsgáljuk az irracionális pontokat: legyen $x_0 \in \mathbb{R} \setminus \mathbb{Q}$. Ekkor $R(x_0) = 0$.
A differenciahányados:
$$\frac{R(x) - R(x_0)}{x - x_0} = \frac{R(x)}{x - x_0}.$$
Irracionális sorozat mentén $R(x) = 0$, így a határérték csak $0$ lehetne.
Azonban Dirichlet approximációs tétele szerint minden irracionális $x_0$ számhoz létezik végtelen sok olyan $p/q$ racionális tört ($q \ge 1$), amelyre:
$$\left| x_0 - \frac{p}{q} \right| < \frac{1}{q^2}.$$
Ezekre a racionális pontokra a differenciahányados abszolút értéke:
$$\left| \frac{R(p/q) - R(x_0)}{\frac{p}{q} - x_0} \right| = \frac{1/q}{\left| \frac{p}{q} - x_0 \right|} > \frac{1/q}{1/q^2} = q.$$
Mivel $q \to \infty$, ezen pontok mentén a differenciahányados nagysága minden határon túl nő, tehát nem konvergálhat nullához.
Ezért a határérték egyetlen irracionális pontban sem létezik, így $R$ sehol sem differenciálható $\mathbb{R}$-en. $\blacksquare$

::: elmelet
**Elméleti háttér — A Riemann-függvény patológiája és Dirichlet approximációs tétele.**

*Dirichlet tétele a diofantikus approximációról:*
Minden $\alpha$ irracionális számhoz létezik végtelen sok olyan $p/q$ ($q \ge 1$) egyszerűsített tört, amelyre:
$$\left| \alpha - \frac{p}{q} \right| < \frac{1}{q^2}.$$
Ez az eredmény alapvető jelentőségű az analízisben: megmutatja, hogy a racionális számok nemcsak tetszőlegesen közel kerülnek az irracionálisokhoz, hanem a nevező négyzetével összemérhető rendkívüli közelségben zsúfolódnak köréjük. Ez zárja ki a Riemann-függvény differenciálhatóságát.
:::

## Gy96.1. feladat

A folytonosság Cauchy-féle $\varepsilon$-$\delta$ definíciója alapján adjunk meg tetszőleges $\varepsilon > 0$-hoz alkalmas $\delta > 0$-t:
a) $f(x) = \frac{3x + 1}{2x - 1}$ az $a = 2$ pontban;
b) $g(x) = \sqrt{2x + 5}$ az $a = 2$ pontban.

**Megoldás.**

a) Számítsuk ki a függvényértéket:
$$f(2) = \frac{3(2) + 1}{2(2) - 1} = \frac{7}{3}.$$
Becsüljük a távolságot $x \ne 2$ esetén:
$$\left| f(x) - f(2) \right| = \left| \frac{3x + 1}{2x - 1} - \frac{7}{3} \right| = \left| \frac{3(3x + 1) - 7(2x - 1)}{3(2x - 1)} \right| = \left| \frac{9x + 3 - 14x + 7}{3(2x - 1)} \right| = \frac{|-5x + 10|}{3|2x - 1|} = \frac{5|x - 2|}{3|2x - 1|}.$$
Korlátozzuk a nevezőt egy segédkörnyezettel: tegyük fel, hogy $|x - 2| < \frac{1}{2}$.
Ekkor:
$$-\frac{1}{2} < x - 2 < \frac{1}{2} \iff \frac{3}{2} < x < \frac{5}{2}.$$
A nevezőben álló $2x - 1$ kifejezésre:
$$2\left(\frac{3}{2}\right) - 1 < 2x - 1 < 2\left(\frac{5}{2}\right) - 1 \iff 2 < 2x - 1 < 4.$$
Így $|2x - 1| > 2$, amiből a reciprokra $\frac{1}{|2x - 1|} < \frac{1}{2}$ adódik.
Ezt behelyettesítve:
$$\left| f(x) - f(2) \right| = \frac{5|x - 2|}{3|2x - 1|} < \frac{5|x - 2|}{3 \cdot 2} = \frac{5}{6} |x - 2|.$$
Azt szeretnénk, hogy ez kisebb legyen $\varepsilon$-nál: $\frac{5}{6}|x - 2| < \varepsilon \iff |x - 2| < \frac{6\varepsilon}{5}$.
Ezért a megfelelő $\delta$ választás:
$$\delta = \min\left\{ \frac{1}{2}, \frac{6\varepsilon}{5} \right\}.$$

b) A függvényérték: $g(2) = \sqrt{2(2) + 5} = \sqrt{9} = 3$.
Gyöktelenítéssel alakítsuk át a különbséget ($x \ge -5/2$):
$$|g(x) - g(2)| = |\sqrt{2x + 5} - 3| = \frac{|(2x + 5) - 9|}{\sqrt{2x + 5} + 3} = \frac{|2x - 4|}{\sqrt{2x + 5} + 3} = \frac{2|x - 2|}{\sqrt{2x + 5} + 3}.$$
Mivel $\sqrt{2x + 5} \ge 0$, a nevező mindig alulról becsülhető: $\sqrt{2x + 5} + 3 \ge 3$.
Ennek megfelelően a tört felülről becsülhető:
$$|g(x) - g(2)| \le \frac{2|x - 2|}{3} = \frac{2}{3} |x - 2|.$$
Azt szeretnénk, hogy $\frac{2}{3}|x - 2| < \varepsilon \iff |x - 2| < \frac{3\varepsilon}{2}$.
Mivel ez a becslés minden $x \in D(g)$-re automatikusan érvényes, nincs szükség külön segédkorlátra:
$$\delta = \frac{3\varepsilon}{2}$$
(vagy formálisan $\delta = \min\left\{1, \frac{3\varepsilon}{2}\right\}$).

::: elmelet
**Elméleti háttér — Az $\varepsilon$-$\delta$ folytonossági bizonyítások módszertana.**

*A standard háromlépéses technika pontbeli folytonosság igazolására:*
1. **Algebrai átalakítás:** Hozzuk az $|f(x) - f(a)|$ kifejezést olyan alakra, ahol az $|x - a|$ tényező kiemelhető: $|f(x) - f(a)| = |x - a| \cdot |g(x)|$.
2. **Segédkorlát a környezetre:** Válasszunk egy rögzített kényelmes környezetet (pl. $|x - a| \le \delta_0$, tipikusan $\delta_0 = 1$ vagy $1/2$), és ezen a környezeten becsüljük felülről a $|g(x)|$ kifejezést egy $M > 0$ konstanssal.
   - Nevező esetén ügyeljünk arra, hogy a nevezőt *alulról* kell becsülni pozitív számmal!
3. **$\delta$ meghatározása:** Válasszuk a $\delta = \min\left\{\delta_0, \frac{\varepsilon}{M}\right\}$ értéket.
:::

## Gy96.2. feladat

a) Igazoljuk a definíció alapján ($\varepsilon$-$\delta$ módszerrel), hogy az $f(x) = x^3$ függvény folytonos egy tetszőlegesen rögzített $a \in \mathbb{R}$ pontban.
b) Mutassuk meg a definíció alapján, hogy a $g(x) = \frac{1}{x^2}$ függvény folytonos az $a = 1$ pontban.

**Megoldás.**

a) Bontsuk szorzattá a különbséget az $x^3 - a^3 = (x - a)(x^2 + ax + a^2)$ azonossággal:
$$|f(x) - f(a)| = |x^3 - a^3| = |x - a| \cdot |x^2 + ax + a^2|.$$
Alkalmazzuk a háromszög-egyenlőtlenséget a második tényezőre:
$$|x^2 + ax + a^2| \le |x|^2 + |a||x| + a^2.$$
Válasszunk egy segédkorlátot: tegyük fel, hogy $|x - a| < 1$.
Ekkor $|x| \le |x - a| + |a| < 1 + |a|$. Ezt behelyettesítve:
$$|x|^2 + |a||x| + a^2 < (1 + |a|)^2 + |a|(1 + |a|) + a^2 = 1 + 2|a| + a^2 + |a| + a^2 + a^2 = 3a^2 + 3|a| + 1.$$
Jelölje $M = 3a^2 + 3|a| + 1 > 0$. Ekkor $|x - a| < 1$ esetén:
$$|x^3 - a^3| < M |x - a|.$$
Legyen $\varepsilon > 0$ tetszőleges. Válasszuk a
$$\delta = \min\left\{ 1, \frac{\varepsilon}{3a^2 + 3|a| + 1} \right\} > 0$$
értéket. Ekkor ha $|x - a| < \delta$, akkor $|x - a| < 1$ és $|x - a| < \frac{\varepsilon}{M}$, így:
$$|f(x) - f(a)| < M |x - a| < M \cdot \frac{\varepsilon}{M} = \varepsilon.$$
Tehát az $f(x) = x^3$ függvény folytonos az $a$ pontban.

b) A függvényérték: $g(1) = 1$. A különbség $x \ne 0$-ra:
$$|g(x) - g(1)| = \left| \frac{1}{x^2} - 1 \right| = \frac{|1 - x^2|}{x^2} = \frac{|x - 1||x + 1|}{x^2}.$$
Válasszuk a $\delta_0 = \frac{1}{2}$ segédkorlátot: ha $|x - 1| < \frac{1}{2}$, akkor $\frac{1}{2} < x < \frac{3}{2}$.
Ebből két egyenlőtlenséget nyerünk:
1. $|x + 1| \le |x| + 1 < \frac{3}{2} + 1 = \frac{5}{2}$.
2. $x > \frac{1}{2} \implies x^2 > \frac{1}{4} \implies \frac{1}{x^2} < 4$.
Ezeket összevetve:
$$|g(x) - g(1)| = |x - 1| \cdot |x + 1| \cdot \frac{1}{x^2} < |x - 1| \cdot \frac{5}{2} \cdot 4 = 10 |x - 1|.$$
Tetszőleges $\varepsilon > 0$-ra válasszuk a
$$\delta = \min\left\{ \frac{1}{2}, \frac{\varepsilon}{10} \right\}$$
értéket. Ha $|x - 1| < \delta$, akkor $|g(x) - g(1)| < 10|x - 1| < 10 \cdot \frac{\varepsilon}{10} = \varepsilon$.
Tehát $g$ folytonos az $a = 1$ helyen.

::: elmelet
**Elméleti háttér — Polinomok és racionális függvények pontbeli folytonosságának technikája.**

*Miért függ a $\delta$ az $a$ ponttól?*
Vegyük észre, hogy az $x^3$ feladatban a választott $\delta = \min\left\{1, \frac{\varepsilon}{3a^2+3|a|+1}\right\}$ expliciten függ a rögzített $a$ helytől: minél nagyobb $|a|$, annál meredekebb a függvény, így annál kisebb $\delta$-t kell választanunk ugyanahhoz az $\varepsilon$-hoz.
Ez a jelenség világít rá a **pontbeli folytonosság** és az **egyenletes folytonosság** közötti mély különbségre.
:::

## Gy97.1. feladat

a) Konstruáljunk olyan $f, g : \mathbb{R} \to \mathbb{R}$ függvényeket, amelyek egyike sem folytonos az $x = 0$ pontban, de az összegük $f + g$ és a szorzatuk $f \cdot g$ is folytonos a $0$ pontban.
b) Igaz-e, hogy ha $f \circ g$ folytonos az $a$ pontban, akkor $g$ is szükségszerűen folytonos $a$-ban? Válaszunkat indokoljuk!

**Megoldás.**

a) Legyen $f(x) = \begin{cases} 1, & \text{ha } x \ge 0, \\ -1, & \text{ha } x < 0, \end{cases}$ és legyen $g(x) = -f(x) = \begin{cases} -1, & \text{ha } x \ge 0, \\ 1, & \text{ha } x < 0. \end{cases}$
- Egyik függvény sem folytonos a $0$-ban: mindkettőnek elsőfajú ugrásszakadása van a $0$ pontban (bal oldali és jobb oldali határértékük különbözik).
- Vizsgáljuk az összeget:
  $$(f + g)(x) = f(x) + g(x) = f(x) - f(x) = 0 \quad \forall x \in \mathbb{R}.$$
  Az $f + g \equiv 0$ konstans függvény, ami folytonos $\mathbb{R}$-en, így a $0$ pontban is.
- Vizsgáljuk a szorzatot:
  $$(f \cdot g)(x) = f(x) \cdot (-f(x)) = -f(x)^2.$$
  Mivel $f(x) \in \{1, -1\}$, ezért $f(x)^2 = 1$ minden $x \in \mathbb{R}$ esetén.
  Így $(f \cdot g)(x) = -1$ minden $x \in \mathbb{R}$-re, ami szintén konstans függvény, tehát folytonos a $0$ pontban!
(Egy másik népszerű konstrukció: $f = D$, $g = 1 - D$, ahol $D$ a Dirichlet-függvény; ekkor $f + g \equiv 1$ folytonos, de $f \cdot g \equiv 0$ is folytonos, miközben $f$ és $g$ sehol sem folytonos.)

b) **Nem igaz.**
*Ellenpélda:*
Legyen $f(y) = c$ konstans függvény minden $y \in \mathbb{R}$-re (pl. $f(y) = 5$), és legyen $g(x) = D(x)$ a Dirichlet-függvény ($D(x) = 1$ ha $x \in \mathbb{Q}$, és $0$ ha $x \notin \mathbb{Q}$).
Ekkor a kompozíció:
$$(f \circ g)(x) = f(g(x)) = 5 \quad \forall x \in \mathbb{R}.$$
A kompozíció konstans függvény, így a tetszőlegesen választott $a = 0$ pontban (és mindenütt) folytonos.
Ugyanakkor a belső $g = D$ függvény a $0$ pontban (sőt sehol) sem folytonos.
*Egy másik ellenpélda:* Legyen $f(y) = y^2$ (folytonos), és $g(x) = \begin{cases} 1, & \text{ha } x \ge 0, \\ -1, & \text{ha } x < 0. \end{cases}$
Ekkor $(f \circ g)(x) = g(x)^2 = (\pm 1)^2 = 1$ konstans, tehát folytonos $0$-ban, noha $g$ szakadásos a $0$-ban.

::: elmelet
**Elméleti háttér — Függvényműveletek és a folytonosság megőrzése.**

*Műveleti szabályok iránya:*
- Ha $f$ és $g$ folytonos $a$-ban $\implies f + g$, $f \cdot g$, $c f$ folytonos $a$-ban.
- Ha $g$ folytonos $a$-ban és $f$ folytonos $g(a)$-ban $\implies f \circ g$ folytonos $a$-ban.
**A megfordítások általában hamisak!**
A szakadásos függvények műveletei során a szakadások kiolthatják egymást (pl. összegben, szorzatban vagy ha a külső függvény nem injektív és azonos értékre képezi le a belső függvény szakadásos értékeit).
:::

## Gy97.2. feladat

Legyen $f : \mathbb{R} \to \mathbb{R}$ tetszőleges függvény.
a) Igaz-e, hogy ha $f^2$ folytonos $\mathbb{R}$-en és $f(x) \ne 0$ minden $x \in \mathbb{R}$-re, akkor $f$ folytonos $\mathbb{R}$-en?
b) Bizonyítsuk be, hogy ha $f : \mathbb{R} \to \mathbb{R}$ folytonos és $f(x) \ne 0$ minden $x \in \mathbb{R}$ esetén, akkor az $\frac{1}{f}$ reciprokfüggvény is folytonos $\mathbb{R}$-en.

**Megoldás.**

a) **Nem igaz!**
*Ellenpélda:*
Definiáljuk az $f$ függvényt az alábbiak szerint:
$$f(x) = \begin{cases} 1, & \text{ha } x \in \mathbb{Q}, \\ -1, & \text{ha } x \notin \mathbb{Q}. \end{cases}$$
- Ekkor minden $x \in \mathbb{R}$ esetén $f(x) \ne 0$, hiszen $f$ értékei csak az $1$ és $-1$ lehetnek.
- Tekintsük az $f^2$ függvényt:
  $$f^2(x) = (f(x))^2 = (\pm 1)^2 = 1 \quad \forall x \in \mathbb{R}.$$
  Az $f^2 \equiv 1$ konstans függvény, amely folytonos az egész $\mathbb{R}$-en.
- Mindazonáltal az $f$ függvény egyetlen pontban sem folytonos, hiszen a racionális és irracionális számok sűrűsége miatt minden pont környezetében felveszi mind az $1$, mind a $-1$ értéket.
(Megjegyzés: Ha az $f$-ről feltesszük, hogy Darboux-tulajdonságú vagy folytonos lenne, akkor nem vehetne fel előjelet váltva értékeket a $0$ átlépése nélkül, de pusztán az $f^2$ folytonosságából ez nem következik.)

b) **Az $\frac{1}{f}$ reciprokfüggvény folytonosságának bizonyítása:**
Legyen $a \in \mathbb{R}$ tetszőleges pont. Mivel $f$ folytonos $a$-ban és $f(a) \ne 0$, létezik a jeltartási tétel szerint olyan $\delta_1 > 0$, hogy minden $x \in (a - \delta_1, a + \delta_1)$ esetén:
$$|f(x)| > \frac{|f(a)|}{2} > 0.$$
Ebből a reciprokra: $\frac{1}{|f(x)|} < \frac{2}{|f(a)|}$.
Tekintsük a reciprokfüggvény különbségét:
$$\left| \frac{1}{f(x)} - \frac{1}{f(a)} \right| = \left| \frac{f(a) - f(x)}{f(x) f(a)} \right| = \frac{|f(x) - f(a)|}{|f(x)| \cdot |f(a)|}.$$
A fenti környezetben a nevezőt alulról becsülve:
$$\left| \frac{1}{f(x)} - \frac{1}{f(a)} \right| \le \frac{|f(x) - f(a)|}{\frac{|f(a)|}{2} \cdot |f(a)|} = \frac{2}{|f(a)|^2} |f(x) - f(a)|.$$
Legyen adva egy tetszőleges $\varepsilon > 0$.
Mivel $f$ folytonos $a$-ban, az $\varepsilon' = \frac{|f(a)|^2}{2} \varepsilon > 0$ értékhez létezik olyan $\delta_2 > 0$, hogy ha $|x - a| < \delta_2$, akkor $|f(x) - f(a)| < \varepsilon'$.
Válasszuk a $\delta = \min\{\delta_1, \delta_2\} > 0$ értéket.
Ekkor minden olyan $x$-re, amelyre $|x - a| < \delta$:
$$\left| \frac{1}{f(x)} - \frac{1}{f(a)} \right| \le \frac{2}{|f(a)|^2} |f(x) - f(a)| < \frac{2}{|f(a)|^2} \cdot \frac{|f(a)|^2}{2} \varepsilon = \varepsilon.$$
Ez bizonyítja, hogy $\frac{1}{f}$ folytonos az $a$ pontban. Mivel $a$ tetszőleges volt, $\frac{1}{f}$ folytonos $\mathbb{R}$-en. $\blacksquare$

::: elmelet
**Elméleti háttér — Előjeltartás és a reciprokfüggvény folytonossága.**

*A folytonos függvények jeltartási tétele:*
Ha $f$ folytonos az $a$ pontban és $f(a) \ne 0$, akkor $a$-nak létezik olyan környezete, ahol $f$ előjele megegyezik $f(a)$ előjelével, sőt alulról becsülhető: $|f(x)| > \frac{|f(a)|}{2}$.

*Tipikus vizsgacsapda:*
A hallgatók gyakran feltételezik, hogy ha $|f|$ vagy $f^2$ szép és folytonos, akkor $f$ sem ugorhat hirtelen ellentétes előjelre. Ez csak akkor igaz, ha $f$-ről előre tudjuk, hogy rendelkezik a középértéktulajdonsággal (Darboux). Tetszőleges függvények esetén a pontonkénti előjelválasztás tetszőlegesen vad lehet!
:::

## Gy98.1. feladat

Legyen $f(x) = x^5 + 2x^3 + 4x - 1$.
a) Bizonyítsuk be, hogy $f$ szigorúan monoton növekvő $\mathbb{R}$-en, értékkészlete $R(f) = \mathbb{R}$, és rendelkezik folytonos $f^{-1} : \mathbb{R} \to \mathbb{R}$ inverzfüggvénnyel.
b) Számítsuk ki $f^{-1}(-1)$ és $f^{-1}(6)$ pontos értékét.

**Megoldás.**

a) **Szigorú monotonitás:**
Az $x \mapsto x^5$, $x \mapsto 2x^3$ és $x \mapsto 4x$ függvények mindegyike szigorúan monoton növekvő a teljes $\mathbb{R}$-en, hiszen tetszőleges $x_1 < x_2$ esetén:
$$x_1^5 < x_2^5, \quad 2x_1^3 < 2x_2^3, \quad 4x_1 < 4x_2.$$
Szigorúan monoton növekvő függvények összege és konstanssal való eltolása szintén szigorúan monoton növekvő:
$$f(x_1) < f(x_2) \quad \forall x_1 < x_2.$$
Ezért $f$ szigorúan monoton növekvő $\mathbb{R}$-en.

**Értékkészlet:**
$f$ polinomfüggvény, így folytonos a teljes $\mathbb{R}$-en.
Számítsuk ki a határértékeit a végtelenben:
$$\lim_{x\to+\infty} f(x) = \lim_{x\to+\infty} x^5\left(1 + \frac{2}{x^2} + \frac{4}{x^4} - \frac{1}{x^5}\right) = +\infty,$$
$$\lim_{x\to-\infty} f(x) = \lim_{x\to-\infty} x^5\left(1 + \frac{2}{x^2} + \frac{4}{x^4} - \frac{1}{x^5}\right) = -\infty.$$
Mivel $f$ folytonos $\mathbb{R}$-en és határértéke $-\infty$ és $+\infty$, a Bolzano-tétel (Darboux-tulajdonság) következményeként minden valós értéket felvesz a $-\infty$ és $+\infty$ között.
Tehát az értékkészlete a teljes valós számegyenes: $R(f) = \mathbb{R}$.

**Inverz létezése és folytonossága:**
Mivel $f$ szigorúan monoton növekvő, injektív is egyben. Mivel $R(f) = \mathbb{R}$, létezik az $f^{-1} : \mathbb{R} \to \mathbb{R}$ inverzfüggvény.
Az inverzfüggvény-tétel szerint ha egy folytonos függvény egy intervallumon szigorúan monoton és értékkészlete intervallum, akkor az inverze is szigorúan monoton és folytonos. Mivel itt az értelmezési tartomány és az értékkészlet is a teljes $\mathbb{R}$ intervallum, $f^{-1}$ folytonos $\mathbb{R}$-en.

b) **Értékek kiszámítása:**
Az inverz definíciója szerint $f^{-1}(y) = x \iff f(x) = y$.
- $f^{-1}(-1)$: Olyan $x$-et keresünk, amelyre $f(x) = -1$:
  $$x^5 + 2x^3 + 4x - 1 = -1 \iff x(x^4 + 2x^2 + 4) = 0.$$
  Mivel $x^4 + 2x^2 + 4 \ge 4 > 0$ minden valós $x$-re, az egyetlen valós megoldás az $x = 0$.
  Tehát $f^{-1}(-1) = 0$.
- $f^{-1}(6)$: Olyan $x$-et keresünk, amelyre $f(x) = 6$:
  $$x^5 + 2x^3 + 4x - 1 = 6 \iff x^5 + 2x^3 + 4x - 7 = 0.$$
  Könnyen ellenőrizhető, hogy $x = 1$ megoldás: $1^5 + 2(1)^3 + 4(1) - 7 = 1 + 2 + 4 - 7 = 0$.
  A szigorú monotonitás miatt más megoldás nem létezhet.
  Tehát $f^{-1}(6) = 1$.

::: elmelet
**Elméleti háttér — Folytonos szigorúan monoton függvények invertálhatósága.**

*Inverzfüggvény tétele intervallumon:*
Legyen $I \subseteq \mathbb{R}$ intervallum és $f : I \to \mathbb{R}$ folytonos és szigorúan monoton függvény. Ekkor:
1. $J = f(I)$ szintén intervallum (Bolzano-tétel következménye).
2. $f$ bijekció $I$ és $J$ között.
3. Az $f^{-1} : J \to I$ inverzfüggvény szigorúan monoton (ugyanolyan irányban, mint $f$) és **folytonos** $J$-n.

Ez az eredmény teszi lehetővé az alapvető függvények (pl. gyökfüggvények, $\ln$, $\arcsin$, $\arctan$) folytonosságának garanciáját.
:::

## Gy98.2. feladat

Legyen $f : [0, \infty) \to [1, \infty)$, $f(x) = x^2 + 2x + 1 = (x + 1)^2$.
a) Igazoljuk, hogy $f$ bijekció a $[0, \infty)$ és $[1, \infty)$ intervallumok között, és írjuk fel az inverz függvény $f^{-1}(y)$ képletét expliciten.
b) Bizonyítsuk be közvetlenül az inverz függvény képletéből és az $\varepsilon$-$\delta$ definícióból, hogy $f^{-1}$ folytonos az $[1, \infty)$ halmazon.

**Megoldás.**

a) **Bijekció és explicit formula:**
- Értelmezési tartomány: $I = [0, \infty)$. Ha $0 \le x_1 < x_2$, akkor $1 \le x_1 + 1 < x_2 + 1$, és mivel a négyzetre emelés a nemnegatív számokon szigorúan növekvő:
  $$(x_1 + 1)^2 < (x_2 + 1)^2 \implies f(x_1) < f(x_2).$$
  Tehát $f$ szigorúan monoton növekvő, így injektív.
- Értékkészlet: $f(0) = (0 + 1)^2 = 1$, és $\lim_{x\to\infty} f(x) = +\infty$. Mivel $f$ folytonos, a Bolzano-tétel miatt minden $y \ge 1$ értéket felvesz, tehát $R(f) = [1, \infty)$.
  Így $f$ szürjektív is a megadott $[1, \infty)$ célhalmazra, tehát bijekció.
- Inverz képlete: Legyen $y \ge 1$. Keressük azt az $x \ge 0$ értéket, amelyre:
  $$(x + 1)^2 = y \iff x + 1 = \sqrt{y} \iff x = \sqrt{y} - 1.$$
  (A negatív gyököt elvetjük, mert $x + 1 \ge 1 > 0$.)
  Tehát az inverz függvény:
  $$f^{-1} : [1, \infty) \to [0, \infty), \quad f^{-1}(y) = \sqrt{y} - 1.$$

b) **Folytonosság bizonyítása $\varepsilon$-$\delta$ definícióval:**
Legyen $y_0 \in [1, \infty)$ egy rögzített pont, és legyen $\varepsilon > 0$ tetszőleges.
Becsüljük a távolságot tetszőleges $y \ge 1$ esetén:
$$\left| f^{-1}(y) - f^{-1}(y_0) \right| = \left| (\sqrt{y} - 1) - (\sqrt{y_0} - 1) \right| = |\sqrt{y} - \sqrt{y_0}|.$$
Gyöktelenítsük a kifejezést:
$$|\sqrt{y} - \sqrt{y_0}| = \frac{|y - y_0|}{\sqrt{y} + \sqrt{y_0}}.$$
Mivel $y \ge 1$ és $y_0 \ge 1$, ezért $\sqrt{y} \ge 1$ és $\sqrt{y_0} \ge 1$.
Így a nevező alulról becsülhető:
$$\sqrt{y} + \sqrt{y_0} \ge 1 + 1 = 2.$$
Ebből a tört felülről becsülhető:
$$\left| f^{-1}(y) - f^{-1}(y_0) \right| \le \frac{|y - y_0|}{2}.$$
Azt szeretnénk, hogy ez kisebb legyen $\varepsilon$-nál:
$$\frac{|y - y_0|}{2} < \varepsilon \iff |y - y_0| < 2\varepsilon.$$
Válasszuk a $\delta = 2\varepsilon > 0$ értéket.
Ekkor tetszőleges $y \in [1, \infty)$ esetén, ha $|y - y_0| < \delta$, akkor:
$$\left| f^{-1}(y) - f^{-1}(y_0) \right| \le \frac{|y - y_0|}{2} < \frac{2\varepsilon}{2} = \varepsilon.$$
Ez bizonyítja, hogy $f^{-1}$ folytonos az $y_0$ pontban. Mivel $y_0 \in [1, \infty)$ tetszőleges volt, $f^{-1}$ folytonos a teljes $[1, \infty)$ intervallumon. $\blacksquare$

::: elmelet
**Elméleti háttér — Globális inverzképzés és Lipschitz-tulajdonság.**

*Lipschitz-folytonosság és egyenletes folytonosság:*
A fenti feladatban azt kaptuk, hogy:
$$|f^{-1}(y) - f^{-1}(y_0)| \le \frac{1}{2} |y - y_0| \quad \forall y, y_0 \in [1, \infty).$$
Az ilyen függvényeket **Lipschitz-tulajdonságúnak** nevezzük (itt $L = 1/2$ konstanssal).
Minden Lipschitz-tulajdonságú függvény nemcsak folytonos, hanem **egyenletesen folytonos** is, mert a $\delta = \frac{\varepsilon}{L}$ választás teljesen független az $y_0$ pont helyétől!
:::

# A 10. feladatlaphoz

## Gy99.1. feladat

a) Bizonyítsuk be a definíció alapján, hogy ha egy $f : \mathbb{R} \to \mathbb{R}$ függvény folytonos az $a \in \mathbb{R}$ pontban, akkor az $|f|$ és $f^2$ függvények is folytonosak az $a$ pontban.
b) Mutassuk meg, hogy ha $f$ folytonos $a$-ban és $f(a) > 0$, akkor a $g(x) = \sqrt{f(x)}$ függvény is folytonos az $a$ pontban.

**Megoldás.**

a) **$|f|$ folytonossága:**
A fordított háromszög-egyenlőtlenség szerint minden $x \in \mathbb{R}$ esetén:
$$||f(x)| - |f(a)|| \le |f(x) - f(a)|.$$
Legyen $\varepsilon > 0$ tetszőleges. Mivel $f$ folytonos $a$-ban, létezik olyan $\delta > 0$, hogy ha $|x - a| < \delta$, akkor $|f(x) - f(a)| < \varepsilon$.
Ekkor a fenti egyenlőtlenség alapján:
$$||f(x)| - |f(a)|| \le |f(x) - f(a)| < \varepsilon.$$
Tehát $|f|$ valóban folytonos az $a$ pontban.

**$f^2$ folytonossága:**
Bontsuk szorzattá a négyzetek különbségét:
$$|f^2(x) - f^2(a)| = |f(x)^2 - f(a)^2| = |f(x) - f(a)| \cdot |f(x) + f(a)|.$$
Mivel $f$ folytonos $a$-ban, az $\varepsilon_0 = 1$ értékhez létezik olyan $\delta_1 > 0$, hogy ha $|x - a| < \delta_1$, akkor $|f(x) - f(a)| < 1$.
Ekkor a háromszög-egyenlőtlenség szerint:
$$|f(x) + f(a)| \le |f(x)| + |f(a)| \le (|f(a)| + 1) + |f(a)| = 2|f(a)| + 1 =: M > 0.$$
Legyen adva tetszőleges $\varepsilon > 0$.
A folytonosság miatt az $\frac{\varepsilon}{M} > 0$ értékhez létezik olyan $\delta_2 > 0$, hogy ha $|x - a| < \delta_2$, akkor $|f(x) - f(a)| < \frac{\varepsilon}{M}$.
Válasszuk a $\delta = \min\{\delta_1, \delta_2\} > 0$ értéket. Ekkor ha $|x - a| < \delta$:
$$|f^2(x) - f^2(a)| = |f(x) - f(a)| \cdot |f(x) + f(a)| < \frac{\varepsilon}{M} \cdot M = \varepsilon.$$
Tehát $f^2$ folytonos az $a$ pontban.

b) **$\sqrt{f}$ folytonossága:**
Mivel $f(a) > 0$ és $f$ folytonos $a$-ban, a jeltartási tétel szerint létezik olyan $\delta_1 > 0$, hogy ha $|x - a| < \delta_1$, akkor $f(x) > \frac{f(a)}{2} > 0$, így a gyökfüggvény értelmezve van $a$ egy teljes környezetében.
Gyöktelenítéssel becsüljük a különbséget:
$$|\sqrt{f(x)} - \sqrt{f(a)}| = \frac{|f(x) - f(a)|}{\sqrt{f(x)} + \sqrt{f(a)}}.$$
Mivel $\sqrt{f(x)} > 0$, a nevező alulról becsülhető: $\sqrt{f(x)} + \sqrt{f(a)} > \sqrt{f(a)}$.
Ezért:
$$|\sqrt{f(x)} - \sqrt{f(a)}| < \frac{|f(x) - f(a)|}{\sqrt{f(a)}}.$$
Legyen $\varepsilon > 0$ tetszőleges. Válasszunk olyan $\delta_2 > 0$-t, hogy $|x - a| < \delta_2$ esetén $|f(x) - f(a)| < \varepsilon \sqrt{f(a)}$.
Ekkor a $\delta = \min\{\delta_1, \delta_2\} > 0$ választással ha $|x - a| < \delta$:
$$|\sqrt{f(x)} - \sqrt{f(a)}| < \frac{\varepsilon \sqrt{f(a)}}{\sqrt{f(a)}} = \varepsilon.$$
Tehát $\sqrt{f}$ folytonos az $a$ pontban. $\blacksquare$

::: elmelet
**Elméleti háttér — Folytonosság megőrzése elemi transzformációk során.**

*Folytonos függvények alaptulajdonsága:*
Ha $f$ folytonos $a$-ban, és $\varphi$ folytonos az $f(a)$ pontban, akkor a $\varphi \circ f$ kompozíció is folytonos $a$-ban.
Mivel a valós függvények között a $|\cdot|$, $x \mapsto x^2$ és $x \mapsto \sqrt{x}$ (ha $x > 0$) függvények folytonosak, az $|f|$, $f^2$ és $\sqrt{f}$ folytonossága a kompozíció folytonosságának közvetlen következménye. A fenti $\varepsilon$-$\delta$ levezetés ennek a tételnek az explicit bizonyítását adja ezekre a konkrét esetekre.
:::

## Gy99.2. feladat

a) Mutassuk meg, hogy az $|f|$ függvény folytonosságából nem következik $f$ folytonossága (adjunk ellenpéldát).
b) Bizonyítsuk be, hogy ha $f : \mathbb{R} \to \mathbb{R}$ folytonos az $a$ pontban, akkor a $g(x) = \sqrt[3]{f(x)}$ függvény is folytonos az $a$ pontban, függetlenül attól, hogy $f(a)$ pozitív, nulla vagy negatív.

**Megoldás.**

a) **Ellenpélda:**
Legyen $D$ a Dirichlet-függvény, és definiáljuk az $f$ függvényt az alábbi módon:
$$f(x) = \begin{cases} 1, & \text{ha } x \in \mathbb{Q}, \\ -1, & \text{ha } x \notin \mathbb{Q}. \end{cases}$$
Ekkor az abszolút érték függvény:
$$|f(x)| = |1| = |-1| = 1 \quad \forall x \in \mathbb{R}.$$
Az $|f| \equiv 1$ konstans függvény, amely a teljes $\mathbb{R}$-en folytonos.
Ugyanakkor $f$ egyetlen pontban sem folytonos, hiszen a racionális és irracionális pontok kölcsönös sűrűsége miatt minden pont környezetében megtalálható az $1$ és a $-1$ érték is, így semelyik pontban nem létezik határértéke.
(Egy másik egyszerű példa az előjelfüggvény korrigálása: $f(x) = 1$, ha $x \ge 0$, és $-1$, ha $x < 0$; ekkor $|f| \equiv 1$ folytonos, de $f$ szakad a $0$-ban.)

b) **$\sqrt[3]{f}$ folytonosságának bizonyítása:**
A $\varphi : \mathbb{R} \to \mathbb{R}$, $\varphi(u) = \sqrt[3]{u}$ valós köbgyökfüggvény folytonos a teljes $\mathbb{R}$-en:
- Ha $u_0 \ne 0$: az $a^3 - b^3 = (a - b)(a^2 + ab + b^2)$ azonosság miatt $|\sqrt[3]{u} - \sqrt[3]{u_0}| = \frac{|u - u_0|}{\sqrt[3]{u^2} + \sqrt[3]{u u_0} + \sqrt[3]{u_0^2}}$, ahol a nevező pozitív marad egy környezetben.
- Ha $u_0 = 0$: tetszőleges $\varepsilon > 0$-ra $|u - 0| < \varepsilon^3 \implies |\sqrt[3]{u} - 0| < \varepsilon$, tehát a $0$ pontban is folytonos.
Mivel $\varphi(u) = \sqrt[3]{u}$ a teljes $\mathbb{R}$-en folytonos, és $f : \mathbb{R} \to \mathbb{R}$ a feltétel szerint folytonos az $a$ pontban, a folytonos függvények kompozíciójára vonatkozó tétel szerint a
$$g(x) = (\varphi \circ f)(x) = \varphi(f(x)) = \sqrt[3]{f(x)}$$
függvény is folytonos az $a$ pontban, tetszőleges $f(a) \in \mathbb{R}$ esetén. $\blacksquare$

::: elmelet
**Elméleti háttér — Páros vs. páratlan gyökök és a kompozíció folytonossága.**

*Páros és páratlan gyökök viselkedése:*
- A négyzetgyök ($u \mapsto \sqrt{u}$) csak a $[0, \infty)$ félegyenesen értelmezett. A $0$ pontban csak egyoldali folytonosságról beszélhetünk, és a differenciálhatóság elvész a függőleges érintő miatt.
- A köbgyök ($u \mapsto \sqrt[3]{u}$) az egész $\mathbb{R}$-en szigorúan monoton növekvő bijekció, és globálisan folytonos.
Ezért $\sqrt[3]{f}$ mindig automatikusan örökli $f$ folytonosságát minden előjel-feltétel nélkül.
:::

## Gy100.1. feladat

Legyenek $f, g : \mathbb{R} \to \mathbb{R}$ folytonos függvények az $a \in \mathbb{R}$ pontban.
a) Igazoljuk a következő algebrai azonosságot:
$$\min\{f(x), g(x)\} = \frac{f(x) + g(x) - |f(x) - g(x)|}{2},$$
és ebből vezessük le, hogy a $\min\{f, g\}$ függvény folytonos az $a$ pontban.
b) Igazoljuk, hogy az $f^-(x) = \max\{-f(x), 0\}$ negatív részfüggvény folytonos az $a$ pontban, és írjuk fel $f$-et az $f^+ = \max\{f, 0\}$ pozitív rész és az $f^-$ különbségeként.

**Megoldás.**

a) **A minimum azonosságának igazolása:**
Legyen $u, v \in \mathbb{R}$ tetszőleges két valós szám. Két eset lehetséges:
- 1. eset: $u \le v$. Ekkor $\min\{u, v\} = u$, és $|u - v| = -(u - v) = v - u$.
  A jobb oldal:
  $$\frac{u + v - (v - u)}{2} = \frac{2u}{2} = u = \min\{u, v\}.$$
- 2. eset: $u > v$. Ekkor $\min\{u, v\} = v$, és $|u - v| = u - v$.
  A jobb oldal:
  $$\frac{u + v - (u - v)}{2} = \frac{2v}{2} = v = \min\{u, v\}.$$
Mindkét esetben fennáll az azonosság: $\min\{u, v\} = \frac{u + v - |u - v|}{2}$.
Helyettesítsük be az $u = f(x)$ és $v = g(x)$ függvényeket:
$$\min\{f(x), g(x)\} = \frac{f(x) + g(x) - |f(x) - g(x)|}{2}.$$
Mivel $f$ és $g$ folytonos $a$-ban:
1. Az összegük $f + g$ és különbségük $f - g$ folytonos $a$-ban.
2. Az abszolút érték tétele szerint $|f - g|$ is folytonos $a$-ban.
3. Két folytonos függvény különbsége és konstanssal ($1/2$) való szorzata folytonos.
Ezért $\min\{f, g\}$ valóban folytonos az $a$ pontban.

b) **A negatív részfüggvény és a felbontás:**
Mivel $f$ folytonos $a$-ban, a $-f$ függvény is folytonos $a$-ban.
A konstans $0$ függvény folytonos.
Két folytonos függvény maximuma a $\max\{u, v\} = \frac{u + v + |u - v|}{2}$ képlet miatt folytonos.
Ezért az $f^-(x) = \max\{-f(x), 0\}$ függvény mint folytonos függvények maximuma szintén folytonos az $a$ pontban.

*Az $f = f^+ - f^-$ felbontás igazolása:*
- Ha $f(x) \ge 0$: ekkor $f^+(x) = f(x)$ és $f^-(x) = \max\{-f(x), 0\} = 0$, így $f^+(x) - f^-(x) = f(x) - 0 = f(x)$.
- Ha $f(x) < 0$: ekkor $f^+(x) = 0$ és $f^-(x) = -f(x)$, így $f^+(x) - f^-(x) = 0 - (-f(x)) = f(x)$.
Minden $x$-re fennáll tehát az
$$f(x) = f^+(x) - f^-(x)$$
felbontás, ahol $f^+ \ge 0$ és $f^- \ge 0$ két nemnegatív folytonos függvény. $\blacksquare$

::: elmelet
**Elméleti háttér — Rácsműveletek a folytonos függvények terében.**

*Függvényterek rácstulajdonsága:*
A valós értékű folytonos függvények tere vektorteret alkot, amely a pontonkénti rendezésre nézve **vektorrács** (Riesz-tér): bármely két függvénynek létezik infimuma ($\min$) és szuprémuma ($\max$), és ezek a térben maradnak (folytonosak maradnak).
Az $f = f^+ - f^-$ Jordan-típusú felbontás a mértékelmélet és az integrálszámítás (Lebesgue-integrál) alapvető kiindulópontja.
:::

## Gy100.2. feladat

Legyenek $f_1, f_2, \dots, f_n : \mathbb{R} \to \mathbb{R}$ folytonos függvények az $a \in \mathbb{R}$ pontban.
a) Bizonyítsuk be teljes indukcióval, hogy az $M_n(x) = \max\{f_1(x), f_2(x), \dots, f_n(x)\}$ függvény is folytonos $a$-ban.
b) Legyen $f(x) = \max\{x, x^2, x^3\}$. Írjuk fel $f(x)$ explicit formuláját a valós számegyenes különböző szakaszain, és igazoljuk, hogy $f$ folytonos $\mathbb{R}$-en.

**Megoldás.**

a) **Teljes indukció $n$-re:**
- Alapeset ($n = 1$): $M_1(x) = f_1(x)$, ami a feltétel szerint folytonos $a$-ban.
- Alapeset ($n = 2$): $M_2(x) = \max\{f_1(x), f_2(x)\} = \frac{f_1(x) + f_2(x) + |f_1(x) - f_2(x)|}{2}$, ami folytonos függvények összege, különbsége, abszolút értéke és skalárszorosa, így folytonos $a$-ban.
- Indukciós feltevés: Tegyük fel, hogy $k$ darab folytonos függvény maximuma folytonos $a$-ban, azaz $M_k(x) = \max\{f_1(x), \dots, f_k(x)\}$ folytonos.
- Indukciós lépés ($n = k+1$):
  Vegyük észre a maximum asszociativitását:
  $$M_{k+1}(x) = \max\{f_1(x), \dots, f_k(x), f_{k+1}(x)\} = \max\{ M_k(x), f_{k+1}(x) \}.$$
  Mivel az indukciós feltevés szerint $M_k$ folytonos $a$-ban, és $f_{k+1}$ is folytonos $a$-ban, a kétváltozós maximum folytonossága ($n=2$ eset) alapján a $\max\{M_k, f_{k+1}\}$ függvény is folytonos $a$-ban.
Tehát tetszőleges véges sok folytonos függvény maximuma folytonos.

b) **Az $f(x) = \max\{x, x^2, x^3\}$ függvény vizsgálata:**
Határozzuk meg a függvények metszéspontjait:
$x = x^2 \iff x(x - 1) = 0 \iff x \in \{0, 1\}$.
$x^2 = x^3 \iff x^2(x - 1) = 0 \iff x \in \{0, 1\}$.
$x = x^3 \iff x(x - 1)(x + 1) = 0 \iff x \in \{-1, 0, 1\}$.
A kritikus osztópontok: $-1, 0, 1$. Vizsgáljuk az intervallumokat:
1. Ha $x \in (-\infty, -1]$: $x \le -1$, így $x^2 \ge 1 > 0$, míg $x^3 \le -1 < 0$ és $x \le -1$. Ezen a szakaszon $x^2$ a legnagyobb. Tehát $f(x) = x^2$.
2. Ha $x \in [-1, 0]$: $x \le 0 \implies x^3 \le 0$ és $x \le 0$, míg $x^2 \ge 0$. Így a nemnegatív $x^2$ a legnagyobb. Tehát $f(x) = x^2$.
   (Megjegyzés: a $(-\infty, 0]$ szakaszon egységesen $f(x) = x^2$.)
3. Ha $x \in [0, 1]$: $0 \le x \le 1$ esetén a hatványozás csökken a kitevővel: $x \ge x^2 \ge x^3$. A legnagyobb az $x$. Tehát $f(x) = x$.
4. Ha $x \in [1, \infty)$: $x \ge 1$ esetén a nagyobb kitevőjű hatvány a nagyobb: $x^3 \ge x^2 \ge x$. A legnagyobb az $x^3$. Tehát $f(x) = x^3$.
Összefoglalva:
$$f(x) = \begin{cases} x^2, & \text{ha } x \le 0, \\ x, & \text{ha } 0 < x \le 1, \\ x^3, & \text{ha } x > 1. \end{cases}$$
*Folytonosság ellenőrzése az illesztési pontokban:*
- $x = 0$-ban: $\lim_{x\to 0-0} x^2 = 0$, $\lim_{x\to 0+0} x = 0$, $f(0) = 0$. Folytonos.
- $x = 1$-ben: $\lim_{x\to 1-0} x = 1$, $\lim_{x\to 1+0} x^3 = 1$, $f(1) = 1$. Folytonos.
Mivel az egyes intervallumok belsejében polinomok (folytonosak), és az osztópontokban a határértékek megegyeznek, $f$ folytonos $\mathbb{R}$-en.
(Ez összhangban van az a) rész tételével, hiszen $x, x^2, x^3$ folytonos függvények véges maximuma.) $\blacksquare$

::: elmelet
**Elméleti háttér — Burkológörbék és szakaszonként sima folytonos függvények.**

*Véges vs. végtelen családok maximuma:*
- **Véges sok** folytonos függvény maximuma és minimuma mindig folytonos.
- **Végtelen sok** folytonos függvény pontonkénti szuprémuma már NEM feltétlenül folytonos!
Például az $f_n(x) = x^n$ ($x \in [0, 1]$) folytonos függvényekre a $\sup_{n\in\mathbb{N}} x^n$ nem folytonos (az $1$ pontban ugrik).
Ez a distinkció alapvető fontosságú a felsőbb analízisben.
:::

## Gy101.1. feladat

Legyen $f : \mathbb{R} \to \mathbb{R}$ folytonos függvény, amely kielégíti a Cauchy-féle additív függvényegyenletet:
$$f(x + y) = f(x) + f(y) \quad \forall x, y \in \mathbb{R}.$$
a) Bizonyítsuk be, hogy $f(0) = 0$, és $f(n \cdot x) = n \cdot f(x)$ minden $n \in \mathbb{Z}$ esetén.
b) Igazoljuk, hogy $f(r \cdot x) = r \cdot f(x)$ minden racionális $r \in \mathbb{Q}$ esetén.
c) A folytonosság felhasználásával mutassuk meg, hogy létezik olyan $c \in \mathbb{R}$ konstans, amelyre $f(x) = c \cdot x$ minden $x \in \mathbb{R}$-re.

**Megoldás.**

a) **Egész szorzók vizsgálata:**
- Helyettesítsünk $x = y = 0$-t az egyenletbe:
  $$f(0 + 0) = f(0) + f(0) \iff f(0) = 2f(0) \iff f(0) = 0.$$
- Teljes indukcióval belátjuk, hogy $f(n x) = n f(x)$ minden $n \in \mathbb{N}$-re:
  $n = 1$-re triviális. Ha $n = k$-ra igaz, akkor:
  $$f((k+1)x) = f(kx + x) = f(kx) + f(x) = k f(x) + f(x) = (k+1)f(x).$$
- Negatív egészekre: legyen $y = -x$. Ekkor:
  $$0 = f(0) = f(x + (-x)) = f(x) + f(-x) \implies f(-x) = -f(x).$$
  Ha $n = -m$ ($m \in \mathbb{N}$), akkor $f(n x) = f(-mx) = -f(mx) = -m f(x) = n f(x)$.
Tehát minden $n \in \mathbb{Z}$ és $x \in \mathbb{R}$ esetén $f(n x) = n f(x)$.

b) **Racionális szorzók:**
Legyen $r = \frac{p}{q} \in \mathbb{Q}$, ahol $p \in \mathbb{Z}$ és $q \in \mathbb{N}$.
Alkalmazzuk az a) pont eredményét az $u = \frac{p}{q} x$ argumentumra és a $q \in \mathbb{N}$ egész szorzóra:
$$f(q \cdot u) = q \cdot f(u) \iff f\left( q \cdot \frac{p}{q} x \right) = q \cdot f\left( \frac{p}{q} x \right) \iff f(p x) = q \cdot f\left( \frac{p}{q} x \right).$$
A bal oldalra ismét az a) pontot alkalmazva ($p \in \mathbb{Z}$): $f(p x) = p \cdot f(x)$.
Így:
$$p \cdot f(x) = q \cdot f\left( \frac{p}{q} x \right) \implies f\left( \frac{p}{q} x \right) = \frac{p}{q} \cdot f(x).$$
Ez bizonyítja, hogy minden $r \in \mathbb{Q}$ esetén $f(r x) = r f(x)$. Speciálisan $x = 1$-re:
$$f(r) = r \cdot f(1) \quad \forall r \in \mathbb{Q}.$$

c) **Kiterjesztés a valós számokra folytonossággal:**
Legyen $c = f(1) \in \mathbb{R}$.
Legyen $x \in \mathbb{R}$ egy tetszőleges valós szám.
Mivel a racionális számok halmaza sűrű $\mathbb{R}$-ben, létezik olyan $(r_n) \subset \mathbb{Q}$ racionális számsorozat, amelyre:
$$\lim_{n\to\infty} r_n = x.$$
Mivel minden tagra $r_n \in \mathbb{Q}$, a b) pont alapján:
$$f(r_n) = c \cdot r_n \quad \forall n \in \mathbb{N}.$$
Mivel $f$ a feltevés szerint folytonos az $x$ pontban, a Heine-féle átviteli elv alapján a képsorozat határértéke megegyezik a függvényértékkel:
$$f(x) = \lim_{n\to\infty} f(r_n) = \lim_{n\to\infty} (c \cdot r_n) = c \cdot \lim_{n\to\infty} r_n = c \cdot x.$$
Mivel $x$ tetszőleges volt, $f(x) = c x$ minden $x \in \mathbb{R}$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — A Cauchy-féle additív függvényegyenlet és sűrűségi elv.**

*A Cauchy-egyenlet megoldásai:*
Az $f(x + y) = f(x) + f(y)$ egyenlet önmagában (regularitási feltétel nélkül) rendkívül sok patológiás, nem mérhető megoldással rendelkezik, amelyek a Hamel-bázis segítségével konstruálhatók.
Azonban a következő enyhe feltételek **bármelyike** maga után vonja, hogy $f(x) = cx$:
1. $f$ folytonos legalább egyetlen pontban.
2. $f$ monoton egy intervallumon.
3. $f$ alulról vagy felülről korlátos egy intervallumon.
4. $f$ Lebesgue-mérhető.
:::

## Gy101.2. feladat

a) Határozzuk meg az összes olyan folytonos $g : \mathbb{R} \to \mathbb{R}$ függvényt, amely kielégíti a $g(x + y) = g(x) \cdot g(y)$ egyenletet minden $x, y \in \mathbb{R}$ esetén, és $g$ nem azonosan nulla.
b) Határozzuk meg az összes olyan folytonos $h : (0, \infty) \to \mathbb{R}$ függvényt, amelyre $h(x \cdot y) = h(x) + h(y)$ minden $x, y > 0$ esetén.

**Megoldás.**

a) **Exponenciális Cauchy-egyenlet:**
- Először mutassuk meg, hogy $g(x) > 0$ minden $x \in \mathbb{R}$-re:
  Vegyük észre, hogy $g(x) = g\left(\frac{x}{2} + \frac{x}{2}\right) = \left(g\left(\frac{x}{2}\right)\right)^2 \ge 0$.
  Tegyük fel, hogy létezik olyan $x_0 \in \mathbb{R}$, amelyre $g(x_0) = 0$. Ekkor tetszőleges $x \in \mathbb{R}$ esetén:
  $$g(x) = g((x - x_0) + x_0) = g(x - x_0) \cdot g(x_0) = g(x - x_0) \cdot 0 = 0,$$
  ami azt jelentené, hogy $g \equiv 0$. Mivel a feltétel szerint $g$ nem azonosan nulla, ilyen $x_0$ nem létezhet, így $g(x) > 0$ minden $x \in \mathbb{R}$-re.
- Mivel $g(x) > 0$, vehetjük a természetes alapú logaritmusát: legyen $f(x) = \ln(g(x))$.
  Mivel $g$ folytonos és szigorúan pozitív, a folytonos függvények kompozíciójaként $f$ folytonos $\mathbb{R}$-en.
  A logaritmus azonossága miatt:
  $$f(x + y) = \ln(g(x + y)) = \ln(g(x) \cdot g(y)) = \ln(g(x)) + \ln(g(y)) = f(x) + f(y).$$
  Tehát $f$ kielégíti a Cauchy-féle additív függvényegyenletet.
  A Cauchy-tétel szerint létezik olyan $c \in \mathbb{R}$ konstans, amelyre $f(x) = c x$.
  Ebből $g(x)$-et kifejezve:
  $$g(x) = e^{f(x)} = e^{c x} = (e^c)^x = a^x,$$
  ahol $a = e^c > 0$ egy tetszőleges pozitív valós állandó.
  (Könnyen ellenőrizhető, hogy minden $g(x) = a^x$ ($a > 0$) folytonos és megoldása az egyenletnek.)

b) **Logaritmikus Cauchy-egyenlet:**
Tekintsük az exponenciális helyettesítést: legyen $t, s \in \mathbb{R}$, és írjunk $x = e^t$, $y = e^s$-et ($t = \ln x, s = \ln y$).
Definiáljuk a $\psi : \mathbb{R} \to \mathbb{R}$ függvényt a $\psi(t) = h(e^t)$ formulával.
Mivel az $e^t$ és a $h$ folytonos, a kompozíció $\psi$ is folytonos $\mathbb{R}$-en.
A $h$-ra vonatkozó egyenlet alapján:
$$\psi(t + s) = h(e^{t + s}) = h(e^t \cdot e^s) = h(e^t) + h(e^s) = \psi(t) + \psi(s).$$
Ez ismét a klasszikus folytonos additív Cauchy-egyenlet!
Ennek megfelelően létezik olyan $k \in \mathbb{R}$ konstans, amelyre:
$$\psi(t) = k \cdot t \quad \forall t \in \mathbb{R}.$$
Visszahelyettesítve $t = \ln x$-et:
$$h(x) = \psi(\ln x) = k \cdot \ln(x).$$
Minden ilyen függvény folytonos $(0, \infty)$-en és $h(x y) = k \ln(x y) = k\ln x + k\ln y = h(x) + h(y)$, tehát a megoldások pontosan a $h(x) = k \ln x$ ($k \in \mathbb{R}$) alakú függvények. $\blacksquare$

::: elmelet
**Elméleti háttér — A négy klasszikus Cauchy-féle függvényegyenlet.**

*A négy alapegyenlet összefüggése:*
1. **Additív:** $f(x + y) = f(x) + f(y) \implies f(x) = cx$.
2. **Exponenciális:** $g(x + y) = g(x) g(y) \implies g(x) = a^x$ (vagy $g \equiv 0$).
3. **Logaritmikus:** $h(xy) = h(x) + h(y) \implies h(x) = k \ln x$.
4. **Hatványfüggvény:** $p(xy) = p(x) p(y) \implies p(x) = x^\alpha$ (vagy $p \equiv 0$).
A folytonosság feltétele mellett a 2., 3. és 4. típusú egyenletek az exponenciális és logaritmus transzformációkkal azonnal visszavezethetők az 1. additív egyenletre!
:::

## Gy102.1. feladat

Legyen $f : [a, b] \to \mathbb{R}$ monoton növekvő függvény.
a) Mutassuk meg, hogy minden $x_0 \in (a, b)$ belső pontban léteznek a véges egyoldali határértékek, és fennáll az
$$f(x_0 - 0) \le f(x_0) \le f(x_0 + 0)$$
egyenlőtlenség.
b) Bizonyítsuk be, hogy $f$-nek kizárólag legfeljebb elsőfajú szakadása (ugrásszakadása) lehet, és a szakadási pontok halmaza legfeljebb megszámlálható.

**Megoldás.**

a) **Egyoldali határértékek létezése:**
Legyen $x_0 \in (a, b)$.
Tekintsük az $A = \{ f(x) : a \le x < x_0 \}$ halmazt.
Mivel $f$ monoton növekvő, minden $x < x_0$ esetén $f(x) \le f(x_0)$, így az $A$ halmaz nem üres és felülről korlátos (egy felső korlátja $f(x_0)$).
A valós számok teljességi tétele szerint létezik a szuprémuma: $L = \sup A \le f(x_0)$.
Belátjuk, hogy $\lim\limits_{x\to x_0 - 0} f(x) = L$:
Tetszőleges $\varepsilon > 0$-hoz a szuprémum definíciója miatt létezik olyan $x_1 < x_0$, amelyre $L - \varepsilon < f(x_1) \le L$.
Válasszuk a $\delta = x_0 - x_1 > 0$ értéket.
Ha $x_0 - \delta < x < x_0$, akkor a monotonitás miatt:
$$L - \varepsilon < f(x_1) \le f(x) \le L < L + \varepsilon \implies |f(x) - L| < \varepsilon.$$
Tehát valóban létezik a bal oldali határérték, és $f(x_0 - 0) = \sup_{x < x_0} f(x) \le f(x_0)$.
Teljesen analóg módon a jobb oldali környezetben a $B = \{ f(x) : x_0 < x \le b \}$ halmaz alulról korlátos (egy alsó korlátja $f(x_0)$), és $f(x_0 + 0) = \inf B \ge f(x_0)$.
Ezzel igazoltuk, hogy:
$$f(x_0 - 0) \le f(x_0) \le f(x_0 + 0).$$

b) **Szakadási pontok jellege és megszámlálhatósága:**
- Mivel minden $x \in (a, b)$ pontban mindkét egyoldali határérték véges valós számként létezik, $f$-nek nem lehet másodfajú szakadása. Ha a függvény szakad $x$-ben, akkor szükségszerűen $f(x - 0) < f(x + 0)$, azaz elsőfajú ugrásszakadása van.
- Rendeljünk minden ilyen $x$ szakadási ponthoz egy nyílt intervallumot:
$$J_x = (f(x - 0), f(x + 0)).$$
Mivel $f(x - 0) < f(x + 0)$, a $J_x$ intervallum nem üres.
- Ha $x_1 < x_2$ két különböző szakadási pont, akkor válasszunk egy $t \in (x_1, x_2)$ közbenső pontot. A monotonitás miatt:
$$f(x_1 + 0) \le f(t) \le f(x_2 - 0).$$
Ez azt jelenti, hogy a $J_{x_1} = (f(x_1 - 0), f(x_1 + 0))$ és $J_{x_2} = (f(x_2 - 0), f(x_2 + 0))$ nyílt intervallumok páronként diszjunktak: $J_{x_1} \cap J_{x_2} = \emptyset$.
- Minden nem üres nyílt intervallum tartalmaz legalább egy racionális számot. Válasszunk minden $x$ szakadási ponthoz egy $q_x \in J_x \cap \mathbb{Q}$ racionális számot.
Mivel az intervallumok diszjunktak, az $x \mapsto q_x$ hozzárendelés injektív leképezés a szakadási pontok halmazából a $\mathbb{Q}$ megszámlálható halmazba.
Ez bizonyítja, hogy a szakadási helyek száma legfeljebb megszámlálható. $\blacksquare$

::: elmelet
**Elméleti háttér — Monoton függvények szakadásai és a Froda-tétel.**

*Froda tétele (1929):*
Tetszőleges $f : [a, b] \to \mathbb{R}$ monoton függvénynek:
1. Csak elsőfajú szakadása lehet (ugrás).
2. A szakadási helyek halmaza legfeljebb megszámlálható.
*Miért igaz ez intuitíve?*
Mivel az összes ugrás összege legfeljebb a teljes megnyúlás: $\sum_{x} (f(x+0) - f(x-0)) \le f(b) - f(a)$.
Egy pozitív tagú sor összege csak akkor lehet véges, ha minden $\varepsilon > 0$-ra csak véges sok $\varepsilon$-nál nagyobb tagja van. A megszámlálhatóan sok ilyen halmaz uniója megszámlálható.
:::

## Gy102.2. feladat

a) Konstruáljunk olyan szigorúan monoton növekvő $f : [0, 1] \to \mathbb{R}$ függvényt, amelynek megszámlálhatóan végtelen sok szakadási pontja van.
b) Igaz-e, hogy egy tetszőleges (nem feltétlenül monoton) $f : \mathbb{R} \to \mathbb{R}$ függvény elsőfajú szakadási pontjainak halmaza mindig legfeljebb megszámlálható?

**Megoldás.**

a) **Konstrukció (szaltófüggvény):**
Legyen $q_1, q_2, q_3, \dots$ a $[0, 1] \cap \mathbb{Q}$ racionális pontok egy rögzített sorbarendezése (mivel $\mathbb{Q}$ megszámlálható, ilyen létezik).
Definiáljuk az $f : [0, 1] \to \mathbb{R}$ függvényt a következő sorösszeggel:
$$f(x) = x + \sum_{n: q_n \le x} \frac{1}{2^n}.$$
- A sor abszolút konvergens, hiszen $\sum_{n=1}^\infty \frac{1}{2^n} = 1$, így $f(x)$ minden $x \in [0, 1]$ esetén véges valós szám, és $0 \le f(x) \le 2$.
- Szigorú monotonitás: ha $0 \le x < y \le 1$, akkor $x < y$, és a szummában szereplő indexhalmaz bővül: $\{n : q_n \le x\} \subseteq \{n : q_n \le y\}$.
  Ráadásul a racionális számok sűrűsége miatt van legalább egy olyan $q_m$, amelyre $x < q_m < y$, így a szumma értéke is szigorúan nő legalább $\frac{1}{2^m}$-mel. Így $f(x) < f(y)$.
- Szakadási pontok:
  Minden egyes $q_k \in \mathbb{Q} \cap [0, 1]$ racionális pontban a bal oldali határérték számításakor a $q_k$ pontbeli $\frac{1}{2^k}$ ugrás még nincs jelen, míg a pontban és tőle jobbra már megjelenik.
  Ezért:
  $$f(q_k) - f(q_k - 0) = \frac{1}{2^k} > 0.$$
  Tehát $f$-nek minden egyes racionális helyen ugrása van, ami megszámlálhatóan végtelen sok szakadási pontot jelent!

b) **Általános elsőfajú szakadások megszámlálhatósága:**
**Igen, igaz!**
Bizonyítás:
Legyen $S_1$ az $f$ összes elsőfajú szakadási pontjának halmaza. Egy $x \in S_1$ pontban létezik véges $f(x-0)$ és véges $f(x+0)$, de $f$ nem folytonos $x$-ben (vagyis az egyoldali határértékek különböznek, vagy valamelyikük nem egyezik $f(x)$-szel).
Bontsuk fel $S_1$-et az ugrások mérete szerint: minden $m \in \mathbb{N}$ esetén jelölje $S_{1, m}$ azon $x$ pontok halmazát, ahol az ugrás $|f(x+0) - f(x-0)| > \frac{1}{m}$, vagy $|f(x) - f(x\pm 0)| > \frac{1}{m}$.
A határérték definíciója miatt minden ilyen $x \in S_{1, m}$ ponthoz tartozik olyan $\delta_x > 0$, hogy az $(x - \delta_x, x + \delta_x)$ környezetben nincs más $S_{1, m}$-beli pont (ha lenne tetszőlegesen közel másik ilyen pont, a határérték nem létezhetne).
Ezért az $S_{1, m}$ halmaz minden pontja izolált pont!
Mivel $\mathbb{R}$-ben minden diszkrét halmaz legfeljebb megszámlálható (Gy91.1 feladat), $S_{1, m}$ megszámlálható minden $m \in \mathbb{N}$-re.
Mivel $S_1 = \bigcup_{m=1}^\infty S_{1, m}$ megszámlálható sok megszámlálható halmaz uniója, $S_1$ maga is legfeljebb megszámlálható. $\blacksquare$

::: elmelet
**Elméleti háttér — Elsőfajú szakadások globális struktúrája.**

*Általános elv szakadásokra:*
Bármilyen vad viselkedésű is egy függvény, **elsőfajú szakadási pontból sohasem lehet kontinuum sok**:
az elsőfajú szakadások halmaza tetszőleges valós függvény esetén mindig legfeljebb megszámlálható!
Ezzel szemben másodfajú szakadásból lehet kontinuum sok (pl. a Dirichlet-függvény esetén minden pont másodfajú szakadás).
:::

## Gy103.1. feladat

a) Mutassuk meg, hogy az $f(x) = x + 2\sin x$ függvény folytonos a $[0, \infty)$ félegyenesen, $\lim\limits_{x\to\infty} f(x) = +\infty$, de $f$ egyetlen $[K, \infty)$ alakú félegyenesen sem monoton.
b) Konstruáljunk olyan folytonos $g : [0, \infty) \to \mathbb{R}$ függvényt, amelyre $\lim\limits_{x\to\infty} g(x) = +\infty$, és $g(x) = 0$ megszámlálhatóan végtelen sok pontban.

**Megoldás.**

a) **Folytonosság és végtelenbeli határérték:**
- Az $x \mapsto x$ és $x \mapsto 2\sin x$ függvények folytonosak $\mathbb{R}$-en, így az összegük $f(x) = x + 2\sin x$ is folytonos $[0, \infty)$-en.
- Mivel a szinuszfüggvény korlátos: $-1 \le \sin x \le 1$, ezért:
  $$f(x) = x + 2\sin x \ge x - 2 \quad \forall x \ge 0.$$
  Mivel $\lim\limits_{x\to\infty} (x - 2) = +\infty$, a rendőrelv (alulról becslés) alapján:
  $$\lim_{x\to\infty} f(x) = +\infty.$$

**Nem monotonitás vizsgálata:**
Legyen $K \ge 0$ tetszőleges küszöb. Válasszunk olyan $n \in \mathbb{N}$ egész számot, amelyre $2n\pi > K$.
Tekintsük a következő pontokat:
$$x_1 = 2n\pi + \frac{\pi}{2}, \qquad x_2 = 2n\pi + \pi.$$
Nyilván $K < x_1 < x_2$. Számítsuk ki a függvényértékeket:
$$f(x_1) = 2n\pi + \frac{\pi}{2} + 2\sin\left(2n\pi + \frac{\pi}{2}\right) = 2n\pi + \frac{\pi}{2} + 2.$$
$$f(x_2) = 2n\pi + \pi + 2\sin(2n\pi + \pi) = 2n\pi + \pi + 0 = 2n\pi + \pi.$$
Hasonlítsuk össze a két értéket:
$$f(x_1) - f(x_2) = \left(2n\pi + \frac{\pi}{2} + 2\right) - (2n\pi + \pi) = 2 - \frac{\pi}{2} = \frac{4 - \pi}{2} > 0,$$
hiszen $\pi < 3.15 < 4$.
Ez azt jelenti, hogy $x_1 < x_2$, de $f(x_1) > f(x_2)$, ami azt jelenti, hogy a függvény csökkent ezen a szakaszon!
Mivel tetszőlegesen nagy $n$-re tudunk ilyen párokat választani, a függvény semmilyen $[K, \infty)$ félegyenesen sem lehet monoton növekvő. Monoton csökkenő pedig a $\lim_{x\to\infty} f(x) = +\infty$ miatt nem lehet.
Tehát $f$ egyetlen végtelen félegyenesen sem monoton.

b) **Konstrukció végtelen sok zérushellyel:**
Definiáljuk a $g(x) = x \cdot \sin^2(x)$ (vagy $g(x) = x(1 - \cos x)$ helyett nem jó, mert határértéke nem végtelen! Ha $x = n\pi$, akkor $x \sin^2 x = 0$, de a határérték nem $+\infty$, hiszen $x_n = n\pi$-re $0 \not\to \infty$!).
VIGYÁZAT: ha van végtelen sok zérushelye a végtelenbe tartva, akkor nem tarthat végtelenhez!
Valóban: ha $g(x_n) = 0$ egy $x_n \to \infty$ sorozatra, akkor $\lim_{n\to\infty} g(x_n) = 0 \ne +\infty$, így az átviteli elv szerint $\lim_{x\to\infty} g(x)$ NEM lehet $+\infty$!
Ez egy lényegi matematikai tétel: ha $\lim_{x\to\infty} g(x) = +\infty$, akkor a definíció szerint van olyan $K$, hogy $x > K$ esetén $g(x) > 1 > 0$, így a függvénynek legfeljebb csak véges intervallumon lehet zérushelye!
Ezért fogalmazzuk meg helyesen a feladatot:
Bizonyítsuk be, hogy ha $\lim_{x\to\infty} g(x) = +\infty$, akkor $g$-nek legfeljebb korlátos tartományban lehet zérushelye, így zérushelyeinek száma csak véges lehet (ha izoláltak), és mutassuk meg, hogy a deriváltja viszont felvehet nullát végtelen sokszor! $\blacksquare$

::: elmelet
**Elméleti háttér — Oszcilláció és határérték a végtelenben.**

*Fontos tanulság a határértékről:*
Ha $\lim_{x\to\infty} f(x) = +\infty$, akkor a küszöbös definíció értelmében tetszőleges $M > 0$-hoz létezik $K$, hogy $x > K \implies f(x) > M > 0$.
Következésképpen egy végtelenhez tartó függvénynek **nem lehet torlódási pontja a zérushelyeknek a végtelenben**: egy bizonyos $K$ küszöb után a függvény soha többé nem metszheti a vízszintes tengelyt!
Ugyanakkor a függvény deriváltja (meredeksége) tetszőlegesen sokszor válthat előjelet, ahogy az $x + 2\sin x$ példa mutatja.
:::

## Gy103.2. feladat

a) Legyen $f : [0, \infty) \to \mathbb{R}$ folytonos függvény, amelyre $\lim\limits_{x\to\infty} f(x) = 0$. Bizonyítsuk be, hogy $f$ korlátos a $[0, \infty)$ félegyenesen, és ha létezik olyan $x_0 \ge 0$, amelyre $f(x_0) > 0$, akkor $f$ felveszi a maximumát $[0, \infty)$-en.
b) Adjunk példát olyan folytonos $g : [0, \infty) \to \mathbb{R}$ függvényre, amelyre $\lim\limits_{x\to\infty} g(x) = 0$, de $g$ nem veszi fel a maximumát.

**Megoldás.**

a) **Korlátosság és maximum létezése:**
- *Korlátosság:* Mivel $\lim_{x\to\infty} f(x) = 0$, az $\varepsilon = 1$ értékhez létezik olyan $K_1 > 0$ küszöb, hogy minden $x > K_1$ esetén $|f(x)| < 1$.
  A kompakt $[0, K_1]$ zárt intervallumon $f$ folytonos, ezért a Weierstrass-tétel szerint korlátos: létezik olyan $M_1$, hogy $|f(x)| \le M_1$ minden $x \in [0, K_1]$ esetén.
  Ekkor minden $x \in [0, \infty)$-re $|f(x)| \le \max\{M_1, 1\}$, tehát $f$ valóban korlátos.
- *Maximum létezése:* Tegyük fel, hogy van olyan $x_0 \ge 0$, amelyre $f(x_0) =: c > 0$.
  Mivel $\lim_{x\to\infty} f(x) = 0$, az $\varepsilon = \frac{c}{2} > 0$ értékhez létezik olyan $K > 0$ küszöbszám, hogy minden $x > K$ esetén $|f(x)| < \frac{c}{2}$, amiből:
  $$f(x) < \frac{c}{2} \quad \forall x > K.$$
  Válasszuk úgy a $K$ küszöböt, hogy $K > x_0$ is teljesüljön (pl. vegyünk $\max\{K, x_0 + 1\}$-et).
  Tekintsük az $f$ függvény megszorítását a zárt és korlátos $[0, K]$ intervallumra.
  A Weierstrass-tétel szerint a folytonos $f$ felveszi a maximumát a $[0, K]$ intervallumon egy $x^* \in [0, K]$ helyen:
  $$f(x^*) = \max_{x \in [0, K]} f(x).$$
  Mivel $x_0 \in [0, K]$, ezért:
  $$f(x^*) \ge f(x_0) = c > \frac{c}{2}.$$
  Ugyanakkor minden $x > K$ esetén láttuk, hogy $f(x) < \frac{c}{2} < f(x^*)$.
  Ezért a $[0, K]$ intervallumon felvett $f(x^*)$ érték nemcsak ezen a szakaszon maximális, hanem a teljes $[0, \infty)$ félegyenesen is:
  $$f(x) \le f(x^*) \quad \forall x \in [0, \infty).$$
  Tehát $f$ valóban felveszi a globális maximumát az $x^*$ pontban. $\blacksquare$

b) **Példa maximum nélküli függvényre:**
Legyen $g : [0, \infty) \to \mathbb{R}$ az alábbi függvény:
$$g(x) = -\frac{1}{x + 1}.$$
- $g$ folytonos a $[0, \infty)$ intervallumon (a nevező sohasem nulla).
- Határértéke a végtelenben: $\lim\limits_{x\to\infty} g(x) = \lim\limits_{x\to\infty} \left(-\frac{1}{x+1}\right) = 0$.
- Minden $x \ge 0$ esetén $x + 1 > 0 \implies g(x) < 0$.
- A függvény szigorúan monoton növekvő: ha $x_1 < x_2$, akkor $x_1 + 1 < x_2 + 1 \implies -\frac{1}{x_1 + 1} < -\frac{1}{x_2 + 1}$.
Ezért a függvény szuprémuma:
$$\sup_{x \in [0, \infty)} g(x) = \lim_{x\to\infty} g(x) = 0.$$
Mivel $g(x) < 0$ minden $x \ge 0$-ra, a $0$ értéket soha nem veszi fel, így a függvénynek nincs maximuma a $[0, \infty)$ halmazon! (Vegyük észre, hogy itt sehol sem volt $g(x_0) > 0$, így az állítás feltétele nem teljesült.)

::: elmelet
**Elméleti háttér — Weierstrass-tétel kiterjesztése nem korlátos tartományokra.**

*Extrémum nem kompakt tartományon:*
A klasszikus Weierstrass-tétel csak korlátos és zárt (kompakt) halmazon garantálja a maximum és minimum létezését.
Azonban ha egy folytonos függvény a „végtelen felé közeledve elveszti az esélyét” a szélsőérték felvételére (mert a határértéke szigorúan kisebb a tartomány belsejében felvett értéknél), akkor a feladat visszavezethető egy kellően nagy kompakt részintervallumra, ahol a Weierstrass-tétel már alkalmazható.
:::

## Gy104.1. feladat

a) Bizonyítsuk be, hogy ha egy $f : \mathbb{R} \to \mathbb{R}$ konvex függvény felülről korlátos, akkor $f$ konstans függvény.
b) Igaz-e az állítás, ha $\mathbb{R}$ helyett a $(0, \infty)$ félegyenesen tekintünk felülről korlátos és konvex függvényt?

**Megoldás.**

a) **Bizonyítás a három húr lemmával:**
Tegyük fel indirekt módon, hogy $f$ nem konstans függvény.
Ekkor létezik két olyan $a, b \in \mathbb{R}$ pont, ahol $a < b$ és $f(a) \ne f(b)$.
Két eset lehetséges:
- 1. eset: $f(a) < f(b)$.
  A húr meredeksége pozitív: $m = \frac{f(b) - f(a)}{b - a} > 0$.
  A konvexitás alaptétele (a húrok meredekségének monotonitása) szerint tetszőleges $x > b$ pontra:
  $$\frac{f(x) - f(b)}{x - b} \ge \frac{f(b) - f(a)}{b - a} = m.$$
  Ebből $f(x)$-et kifejezve:
  $$f(x) \ge f(b) + m(x - b).$$
  Ha $x \to +\infty$, a jobb oldal tart $+\infty$-hez: $\lim\limits_{x\to+\infty} (f(b) + m(x - b)) = +\infty$.
  Ezért $\lim\limits_{x\to+\infty} f(x) = +\infty$, ami ellentmond annak, hogy $f$ felülről korlátos $\mathbb{R}$-en!
- 2. eset: $f(a) > f(b)$.
  Ekkor a húr meredeksége negatív: $\frac{f(b) - f(a)}{b - a} < 0$.
  A konvexitás miatt tetszőleges $x < a$ pontra:
  $$\frac{f(a) - f(x)}{a - x} \le \frac{f(b) - f(a)}{b - a} \implies f(x) \ge f(a) + \frac{f(a) - f(b)}{b - a}(a - x).$$
  Amikor $x \to -\infty$, az $a - x \to +\infty$, és mivel a szorzó pozitív, a jobb oldal $+\infty$-hez tart.
  Ezért $\lim\limits_{x\to-\infty} f(x) = +\infty$, ami ismét ellentmondás.
Az ellentmondások bizonyítják, hogy $f$ nem vehet fel két különböző értéket, tehát azonosan konstans függvény. $\blacksquare$

b) **Félegyenesen nem igaz!**
*Ellenpélda:* Tekintsük a $g : (0, \infty) \to \mathbb{R}$, $g(x) = \frac{1}{x}$ függvényt.
- A függvény második deriváltja $g''(x) = \frac{2}{x^3} > 0$ minden $x > 0$ esetén, így $g$ konvex $(0, \infty)$-en.
- Azonban ez a függvény alulról korlátos, de felülről nem!
Keressünk felülről korlátosat:
Legyen $h : (0, \infty) \to \mathbb{R}$, $h(x) = -x$.
Ez konvex (hiszen affin, $h''(x) = 0$), és felülről korlátos a $[1, \infty)$-en, de $(0, \infty)$-en $h(x) \to 0$ felülről korlátos: $h(x) < 0$ minden $x > 0$-ra!
Sőt, tekintsünk szigorúan konvex példát:
$$f(x) = - \sqrt{x} \quad \text{konkáv}, \quad \text{de} \quad f(x) = e^{-x}.$$
Az $f(x) = e^{-x}$ függvény konvex ($f''(x) = e^{-x} > 0$), és felülről korlátos a $(0, \infty)$-en, hiszen $0 < e^{-x} < 1$ minden $x > 0$ esetén!
Mivel $f(x) = e^{-x}$ nyilvánvalóan nem konstans függvény, a tétel a félegyenesen már nem igaz!

::: elmelet
**Elméleti háttér — Konvex függvények növekedése és a három húr lemma.**

*A három húr lemma:*
Ha $f$ konvex az $I$ intervallumon és $x_1 < x_2 < x_3$ az $I$ elemei, akkor:
$$\frac{f(x_2) - f(x_1)}{x_2 - x_1} \le \frac{f(x_3) - f(x_1)}{x_3 - x_1} \le \frac{f(x_3) - f(x_2)}{x_3 - x_2}.$$
A húrok meredeksége monoton növekvő!
*Következmény:* Ha $I = \mathbb{R}$, és egy konvex függvény nem konstans, akkor a meredekség monotonitása miatt legalább az egyik végtelenben $+\infty$-hez kell tartania lineárisnál nem lassabb sebességgel. Ezért a teljes valós egyenesen konvex és korlátos függvény csak a konstans lehet.
:::

## Gy104.2. feladat

Legyen $f : \mathbb{R} \to \mathbb{R}$ konvex függvény.
a) Mutassuk meg, hogy ha létezik a véges $\lim\limits_{x\to+\infty} f(x) = L \in \mathbb{R}$ határérték, akkor $f$ monoton csökkenő $\mathbb{R}$-en.
b) Igaz-e, hogy ha egy $f : \mathbb{R} \to \mathbb{R}$ konvex függvény alulról korlátos, akkor konstans? Adjunk konkrét példákat!

**Megoldás.**

a) **Monotonitás bizonyítása:**
Tegyük fel indirekt módon, hogy $f$ nem monoton csökkenő.
Ekkor létezik olyan $a < b$, amelyre $f(a) < f(b)$.
A húr meredeksége ekkor szigorúan pozitív:
$$m = \frac{f(b) - f(a)}{b - a} > 0.$$
A három húr lemma (a konvexitás) miatt minden $x > b$ esetén a húr meredeksége alulról becsülhető:
$$\frac{f(x) - f(b)}{x - b} \ge m \iff f(x) \ge f(b) + m(x - b).$$
Ha most vesszük a határértéket $x \to +\infty$ mellett:
$$\lim_{x\to+\infty} f(x) \ge \lim_{x\to+\infty} (f(b) + m(x - b)) = +\infty.$$
Ez azonban ellentmond annak a feltételnek, hogy létezik a véges $\lim\limits_{x\to+\infty} f(x) = L$ határérték!
Ez az ellentmondás igazolja, hogy nem létezhet olyan $a < b$ pontpár, amelyre $f(a) < f(b)$.
Tehát minden $a < b$ esetén $f(a) \ge f(b)$, ami pontosan azt jelenti, hogy $f$ monoton csökkenő a teljes $\mathbb{R}$-en. $\blacksquare$

b) **Alulról korlátos konvex függvények vizsgálata:**
**Nem igaz, egyáltalán nem kell konstansnak lennie!**
*Konkrét példák alulról korlátos, nem konstans konvex függvényekre:*
1. $f(x) = x^2$: konvex ($f''(x) = 2 > 0$), alulról korlátos ($f(x) \ge 0$), de szigorúan nem konstans.
2. $f(x) = e^x$: konvex ($f''(x) = e^x > 0$), alulról korlátos ($f(x) > 0$), és határértéke $-\infty$-ben $0$, míg $+\infty$-ben $+\infty$.
3. $f(x) = |x|$: konvex (háromszög-egyenlőtlenség miatt), alulról korlátos ($|x| \ge 0$), és nem konstans.
4. $f(x) = \sqrt{x^2 + 1}$: sima konvex függvény, alulról korlátos ($f(x) \ge 1$).

::: elmelet
**Elméleti háttér — Konvex függvények aszimptotikus viselkedése.**

*A konvexitás aszimmetriája a felülről vs. alulról korlátosságban:*
A konvex függvény görbéje a húrjai alatt, de az érintői felett fut:
$$f(x) \ge f(x_0) + f'(x_0)(x - x_0).$$
- Ez a tulajdonság alulról biztosít lokális lineáris támaszt, így az alulról korlátosság nem korlátozza drasztikusan a függvény alakját (pl. $x^2, e^x$ teljesen természetes alulról korlátos konvex függvények).
- Ezzel szemben felülről a konvex görbe nem tud „visszahajolni” anélkül, hogy elveszítené a konvexitását, így a felülről korlátosság $\mathbb{R}$-en azonnal konstanssá kényszeríti a függvényt!
:::

## Gy105.1. feladat

Tekintsük a $2x^5 + 5x^3 + 2x - 3 = 0$ egyenletet.
a) Bizonyítsuk be a Bolzano-tétel (középértéktétel) segítségével, hogy az egyenletnek létezik valós megoldása a $(0, 1)$ nyílt intervallumban.
b) Mutassuk meg, hogy az egyenletnek a teljes $\mathbb{R}$-en pontosan egy valós gyöke van.

**Megoldás.**

a) **Gyök létezése a Bolzano-tétellel:**
Tekintsük az $f(x) = 2x^5 + 5x^3 + 2x - 3$ függvényt a $[0, 1]$ zárt intervallumon.
- $f$ polinomfüggvény, így folytonos a teljes $\mathbb{R}$-en, speciálisan folytonos a $[0, 1]$ zárt intervallumon is.
- Számítsuk ki a függvényértékeket a végpontokban:
  $$f(0) = 2(0)^5 + 5(0)^3 + 2(0) - 3 = -3 < 0,$$
  $$f(1) = 2(1)^5 + 5(1)^3 + 2(1) - 3 = 2 + 5 + 2 - 3 = 6 > 0.$$
Mivel $f(0)$ és $f(1)$ különböző előjelűek ($f(0) < 0 < f(1)$), a Bolzano-tétel (a folytonos függvények középértéktétele) szerint létezik legalább egy olyan $c \in (0, 1)$ pont, amelyre:
$$f(c) = 0.$$
Ez azt jelenti, hogy az egyenletnek valóban létezik megoldása a $(0, 1)$ nyílt intervallumban.

b) **A gyök egyértelműsége $\mathbb{R}$-en:**
Belátjuk, hogy $f$ szigorúan monoton növekvő a teljes $\mathbb{R}$-en.
Legyen $x_1 < x_2$ két tetszőleges valós szám.
Mivel a páratlan kitevőjű hatványozás szigorúan monoton növekvő a valós számokon, és pozitív konstanssal való szorzás megőrzi ezt:
$$x_1 < x_2 \implies x_1^5 < x_2^5 \implies 2x_1^5 < 2x_2^5,$$
$$x_1^3 < x_2^3 \implies 5x_1^3 < 5x_2^3,$$
$$2x_1 < 2x_2.$$
Szigorúan monoton növekvő függvények összege szintén szigorúan monoton növekvő:
$$f(x_1) = 2x_1^5 + 5x_1^3 + 2x_1 - 3 < 2x_2^5 + 5x_2^3 + 2x_2 - 3 = f(x_2).$$
Mivel $f$ szigorúan monoton növekvő, injektív is: nem veheti fel ugyanazt az értéket két különböző pontban.
Különösen a zérushelyét sem veheti fel egynél több helyen: ha $f(c_1) = 0$ és $f(c_2) = 0$, akkor $c_1 = c_2$.
Mivel az a) rész szerint van legalább egy gyök, ez a gyök az egész valós egyenesen egyértelmű. $\blacksquare$

::: elmelet
**Elméleti háttér — Bolzano-tétel (középértéktétel) és a gyökök unicitása.**

*Bolzano-tétel (Darboux-féle középértéktétel):*
Ha $f : [a, b] \to \mathbb{R}$ folytonos függvény és $f(a) \cdot f(b) < 0$ (azaz a végpontokban ellentétes előjelű), akkor létezik olyan $c \in (a, b)$, ahol $f(c) = 0$.
*Általánosabban:* Ha $y_0$ az $f(a)$ és $f(b)$ közötti tetszőleges köztes érték, akkor van olyan $c \in [a, b]$, hogy $f(c) = y_0$.

*A gyök egyértelműségének igazolási stratégiája:*
A létezést a Bolzano-tétel adja folytonosság és előjelváltás alapján.
Az unicitást legkönnyebben a **szigorú monotonitás** igazolásával garantálhatjuk: egy szigorúan monoton függvény legfeljebb egyszer veheti fel bármelyik értéket.
:::

## Gy105.2. feladat

a) Bizonyítsuk be, hogy minden páratlan fokú valós együtthatós polinomnak létezik legalább egy valós gyöke.
b) Mutassuk meg, hogy a $\cos x = x$ egyenletnek létezik valós megoldása, és ez a megoldás a $\left(0, \frac{\pi}{2}\right)$ intervallumba esik, továbbá a teljes $\mathbb{R}$-en egyértelmű.

**Megoldás.**

a) **Páratlan fokú polinomok gyöke:**
Legyen $P(x) = a_{2k+1} x^{2k+1} + a_{2k} x^{2k} + \dots + a_1 x + a_0$ egy tetszőleges páratlan fokú polinom, ahol $a_{2k+1} \ne 0$ és $k \ge 0$ egész.
Feltehető, hogy a főegyüttható pozitív: $a_{2k+1} > 0$ (ha negatív lenne, tekintsük a $-P(x)$ polinomot, amelynek gyökei megegyeznek $P$ gyökeivel).
Emeljük ki a legmagasabb fokú tagot:
$$P(x) = x^{2k+1} \left( a_{2k+1} + \frac{a_{2k}}{x} + \dots + \frac{a_0}{x^{2k+1}} \right).$$
Amikor $x \to \pm\infty$, a zárójelben álló kifejezés határértéke $a_{2k+1} > 0$.
Mivel $2k + 1$ páratlan szám:
$$\lim_{x\to+\infty} x^{2k+1} = +\infty \implies \lim_{x\to+\infty} P(x) = +\infty,$$
$$\lim_{x\to-\infty} x^{2k+1} = -\infty \implies \lim_{x\to-\infty} P(x) = -\infty.$$
A végtelenbeli határérték definíciója miatt:
- van olyan $b > 0$, amelyre $P(b) > 0$,
- van olyan $a < 0$, amelyre $P(a) < 0$.
A $P(x)$ polinomfüggvény mint elemi függvény folytonos a teljes $\mathbb{R}$-en, így a zárt $[a, b]$ intervallumon is.
Mivel $P(a) < 0 < P(b)$, a Bolzano-tétel szerint létezik olyan $c \in (a, b)$, amelyre:
$$P(c) = 0.$$
Tehát minden páratlan fokú valós polinomnak van legalább egy valós gyöke.

b) **A $\cos x = x$ egyenlet megoldása:**
Írjuk át az egyenletet zérushelykeresési formába: legyen $g(x) = \cos x - x$.
- *Folytonosság:* A $\cos x$ trigonometrikus függvény és az $x$ identitásfüggvény folytonos $\mathbb{R}$-en, így különbségük $g(x)$ is folytonos a teljes $\mathbb{R}$-en.
- *Létezés a $\left(0, \frac{\pi}{2}\right)$ intervallumban:*
  Számítsuk ki az értékeket a határokon:
  $$g(0) = \cos(0) - 0 = 1 - 0 = 1 > 0,$$
  $$g\left(\frac{\pi}{2}\right) = \cos\left(\frac{\pi}{2}\right) - \frac{\pi}{2} = 0 - \frac{\pi}{2} = -\frac{\pi}{2} < 0.$$
  Mivel $g(0) > 0$ és $g(\pi/2) < 0$, a Bolzano-tétel miatt létezik $c \in \left(0, \frac{\pi}{2}\right)$, amelyre $g(c) = 0 \iff \cos c = c$.
- *Unicitás a teljes $\mathbb{R}$-en:*
  Mivel $|\cos x| \le 1$ minden valós $x$-re, ha $x > 1$, akkor $\cos x \le 1 < x \implies g(x) < 0$.
  Ha $x < -1$, akkor $\cos x \ge -1 > x \implies g(x) > 0$.
  Tehát gyök csak a $[-1, 1]$ intervallumban létezhet.
  A $[0, \pi/2]$ szakaszon (ami tartalmazza a $[0, 1]$ szakaszt) a $\cos x$ függvény szigorúan monoton csökkenő, a $-x$ függvény szintén szigorúan monoton csökkenő.
  Két szigorúan monoton csökkenő függvény összege szigorúan monoton csökkenő:
  $$g(x) = \cos x - x \text{ szigorúan monoton csökken a } [0, 1] \text{ intervallumon}.$$
  A negatív $x \in [-1, 0)$ szakaszra nézve: $x < 0 \implies -x > 0$, miközben $\cos x > 0$ (hiszen $-\pi/2 < -1 < 0$), így ott $g(x) = \cos x - x > 0$, zérushely nem lehet.
  Ezért a gyök a teljes $\mathbb{R}$-en egyértelmű. $\blacksquare$

::: elmelet
**Elméleti háttér — Transzcendens egyenletek és polinomok valós gyökei.**

*Az algebra alaptétele vs. Analízis:*
Míg a komplex számok körében az algebra alaptétele biztosítja a gyökök létezését, a valós számok felett a páratlan fokú polinomok gyökének létezése egy tisztán **valós analitikus tulajdonság**: a valós számegyenes összefüggőségének és a Bolzano-tételnek közvetlen következménye.
A transzcendens egyenleteknél (mint a Kepler-egyenlet vagy a $\cos x = x$ Dottie-szám) a gyök létezése és unicitása ugyanezen az analitikus elven nyugszik.
:::

## Gy106.1. feladat

a) Legyen $f : [a, b] \to \mathbb{R}$ folytonos függvény, és legyenek $x_1, x_2, x_3 \in [a, b]$ tetszőleges pontok. Bizonyítsuk be, hogy létezik olyan $c \in [a, b]$, amelyre:
$$f(c) = \frac{f(x_1) + 2f(x_2) + 3f(x_3)}{6}.$$
b) Általánosítsuk az állítást: ha $x_1, x_2, \dots, x_n \in [a, b]$ és a $p_1, p_2, \dots, p_n \ge 0$ súlyokra $\sum_{i=1}^n p_i = 1$, akkor létezik olyan $c \in [a, b]$, amelyre:
$$f(c) = \sum_{i=1}^n p_i f(x_i).$$

**Megoldás.**

a) és b) Bizonyítsuk be közvetlenül az általános b) állítást (ebből az a) eset a $p_1 = 1/6, p_2 = 2/6, p_3 = 3/6$ súlyokkal azonnal következik).
Legyen
$$Y = \sum_{i=1}^n p_i f(x_i).$$
Mivel $f$ folytonos a kompakt $[a, b]$ intervallumon, a Weierstrass-tétel szerint $f$ korlátos, és felveszi a minimumát ($m$) és maximumát ($M$):
léteznek olyan $\xi_{\min}, \xi_{\max} \in [a, b]$ pontok, amelyekre:
$$m = f(\xi_{\min}) \le f(x) \le f(\xi_{\max}) = M \quad \forall x \in [a, b].$$
Különösen minden $i = 1, \dots, n$ indexre fennáll:
$$m \le f(x_i) \le M.$$
Mivel a $p_i$ súlyok nemnegatívak ($p_i \ge 0$), szorozzuk be az egyenlőtlenségeket $p_i$-vel, és adjuk össze őket $i = 1$-től $n$-ig:
$$\sum_{i=1}^n p_i m \le \sum_{i=1}^n p_i f(x_i) \le \sum_{i=1}^n p_i M.$$
Mivel $\sum_{i=1}^n p_i = 1$, ez azt jelenti, hogy:
$$m \cdot 1 \le Y \le M \cdot 1 \iff m \le Y \le M.$$
Tehát az $Y$ súlyozott átlag az $f$ függvény minimuma és maximuma közé esik:
$$f(\xi_{\min}) \le Y \le f(\xi_{\max}).$$
A Bolzano-tétel (középértéktétel) szerint egy intervallumon folytonos függvény a két felvett értéke közötti tetszőleges értéket is felveszi valahol a $\xi_{\min}$ és $\xi_{\max}$ pontok közötti szakaszon.
Mivel $\xi_{\min}, \xi_{\max} \in [a, b]$, létezik olyan $c \in [a, b]$, amelyre:
$$f(c) = Y = \sum_{i=1}^n p_i f(x_i).$$
Ezzel az általános állítást és az a) speciális esetet is beláttuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Konvex kombinációk és az értékkészlet összefüggősége.**

*A folytonosság topológiai lényege:*
Összefüggő halmaz (intervallum) folytonos képe összefüggő. Mivel a valós számok részhalmazai közül pontosan az intervallumok összefüggők, ez azt jelenti, hogy:
$$\text{ha } f \in C[a, b], \text{ akkor } f([a, b]) = [m, M] \text{ zárt intervallum!}$$
Ezért a függvényértékek bármilyen konvex kombinációja (súlyozott átlaga) szükségképpen eleme a képintervallumnak, így felvett érték.
:::

## Gy106.2. feladat

Egy futó 1 óra alatt pontosan 12 kilométert tesz meg egyenes pályán úgy, hogy az elmozdulás-idő függvénye folytonos.
a) Bizonyítsuk be, hogy a futás során létezik olyan félórás (30 perces) egybefüggő időtartam, amely alatt a futó pontosan 6 kilométert tett meg.
b) Általánosítsuk: tetszőleges $n \in \mathbb{N}$ esetén van olyan $\frac{1}{n}$ órás intervallum, amely alatt a futó pontosan $\frac{12}{n}$ kilométert futott.

**Megoldás.**

a) és b) Bizonyítsuk be az általános b) állítást tetszőleges $n \in \mathbb{N}$ esetén (az a) eset $n = 2$-re adódik).
Legyen az időegység az óra ($t \in [0, 1]$), és jelölje $s(t)$ a futó által a $[0, t]$ idő alatt megtett távolságot kilométerben.
A feltételek szerint:
- $s(0) = 0$, $s(1) = 12$,
- $s : [0, 1] \to [0, 12]$ folytonos függvény.
Tekintsük azt a függvényt, amely minden $t \in \left[0, 1 - \frac{1}{n}\right]$ időponthoz hozzárendeli a rákövetkező $\frac{1}{n}$ órában megtett távolságot:
$$g(t) = s\left(t + \frac{1}{n}\right) - s(t).$$
Mivel $s$ folytonos, a folytonos függvények eltoltja és különbségeként a $g : \left[0, 1 - \frac{1}{n}\right] \to \mathbb{R}$ függvény is folytonos.
Osszuk fel a $[0, 1]$ intervallumot $n$ darab egyenlő, $\frac{1}{n}$ hosszúságú szakaszra:
$$t_k = \frac{k}{n}, \quad k = 0, 1, \dots, n - 1.$$
Tekintsük a $g$ függvény értékeinek összegét ezekben az osztópontokban:
$$\sum_{k=0}^{n-1} g\left(\frac{k}{n}\right) = \sum_{k=0}^{n-1} \left( s\left(\frac{k+1}{n}\right) - s\left(\frac{k}{n}\right) \right).$$
Ez egy teleszkopikus összeg! A szomszédos tagok kiesnek:
$$\sum_{k=0}^{n-1} g\left(\frac{k}{n}\right) = s(1) - s(0) = 12 - 0 = 12.$$
Az $n$ darab valós szám összege 12, így a számtani közepük:
$$\frac{1}{n} \sum_{k=0}^{n-1} g\left(\frac{k}{n}\right) = \frac{12}{n}.$$
Egy számsokaság nem lehet minden elemében szigorúan nagyobb az átlagánál, és nem lehet minden elemében szigorúan kisebb sem. Ezért:
- létezik olyan $k_1 \in \{0, 1, \dots, n-1\}$, amelyre $g\left(\frac{k_1}{n}\right) \le \frac{12}{n}$,
- létezik olyan $k_2 \in \{0, 1, \dots, n-1\}$, amelyre $g\left(\frac{k_2}{n}\right) \ge \frac{12}{n}$.
Mivel $g$ folytonos az ezen pontokat összekötő zárt intervallumon, a Bolzano-tétel szerint létezik olyan $c$ a $\frac{k_1}{n}$ és $\frac{k_2}{n}$ között (így $c \in \left[0, 1 - \frac{1}{n}\right]$), amelyre:
$$g(c) = \frac{12}{n} \iff s\left(c + \frac{1}{n}\right) - s(c) = \frac{12}{n}.$$
Ez pontosan azt jelenti, hogy a $\left[c, c + \frac{1}{n}\right]$ időintervallum alatt a futó pontosan $\frac{12}{n}$ kilométert tett meg.
Speciálisan $n = 2$-re létezik olyan $c \in [0, 1/2]$, amelyre $s(c + 1/2) - s(c) = 6$ km. $\blacksquare$

::: elmelet
**Elméleti háttér — A vízszintes húrok tétele (Lévy tétele) és teleszkopikus összegek.**

*Paul Lévy tétele (1934):*
Ha $f : [0, 1] \to \mathbb{R}$ folytonos és $f(0) = f(1)$, akkor minden $n \in \mathbb{N}$ esetén létezik olyan $x \in [0, 1 - 1/n]$, amelyre:
$$f\left(x + \frac{1}{n}\right) = f(x).$$
(A futó feladata ennek ekvivalens alakja az $F(t) = s(t) - 12t$ segédfüggvényre, ahol $F(0) = F(1) = 0$.)
*Érdekesség:* Az állítás kizárólag $\frac{1}{n}$ alakú lépésközökre igaz! Ha $\tau \in (0, 1)$ nem reciprok egész, mindig konstruálható olyan folytonos függvény, amelynek egyetlen $\tau$ hosszúságú vízszintes húrja sincs.
:::

## Gy107.1. feladat

a) Legyen $f : [0, 1] \to [0, 1]$ folytonos függvény. Bizonyítsuk be a Bolzano-tétel segítségével, hogy $f$-nek létezik fixpontja, azaz létezik olyan $c \in [0, 1]$, amelyre $f(c) = c$.
b) Igazoljuk, hogy létezik olyan $d \in [0, 1]$ pont is, amelyre $f(d) = d^2$.

**Megoldás.**

a) **Fixpont létezése ($f(c) = c$):**
Tekintsük a segédfüggvényt:
$$g(x) = f(x) - x, \quad x \in [0, 1].$$
- *Folytonosság:* Mivel $f$ és az identitásfüggvény ($x \mapsto x$) folytonos a $[0, 1]$ intervallumon, különbségük $g$ is folytonos $[0, 1]$-en.
- *Végponti értékek:*
  Mivel $f$ értékkészlete a $[0, 1]$ intervallumba esik:
  $$g(0) = f(0) - 0 = f(0) \ge 0,$$
  $$g(1) = f(1) - 1 \le 0 \quad (\text{hiszen } f(1) \le 1).$$
- *Diszkusszió:*
  - Ha $g(0) = 0$, akkor $c = 0$ fixpont ($f(0) = 0$).
  - Ha $g(1) = 0$, akkor $c = 1$ fixpont ($f(1) = 1$).
  - Ha $g(0) > 0$ és $g(1) < 0$, akkor a két végpontban a függvény különböző előjelű.
    A Bolzano-tétel szerint létezik olyan $c \in (0, 1)$, amelyre $g(c) = 0 \iff f(c) = c$.
Minden esetben találtunk olyan $c \in [0, 1]$ pontot, amelyre $f(c) = c$.

b) **Metszéspont a parabólával ($f(d) = d^2$):**
Tekintsük a következő segédfüggvényt:
$$h(x) = f(x) - x^2, \quad x \in [0, 1].$$
- *Folytonosság:* Folytonos függvények különbségeként $h$ folytonos $[0, 1]$-en.
- *Végponti értékek:*
  $$h(0) = f(0) - 0^2 = f(0) \ge 0,$$
  $$h(1) = f(1) - 1^2 = f(1) - 1 \le 0.$$
- Ugyanazzal az érveléssel, mint az a) részben:
  Ha a végpontok valamelyikében $0$, akkor az a pont jó választás; ha nem, akkor $h(0) > 0$ és $h(1) < 0$, így a Bolzano-tétel szerint létezik $d \in (0, 1)$, amelyre:
  $$h(d) = 0 \iff f(d) = d^2.$$
Ez igazolja az állítást. $\blacksquare$

::: elmelet
**Elméleti háttér — Brouwer-féle fixponttétel egy dimenzióban.**

*A Brouwer-fixponttétel 1D esete:*
Minden folytonos $f : [a, b] \to [a, b]$ leképezésnek létezik legalább egy fixpontja.
Geometriai jelentése: a függvény grafikonja összeköti a négyzet bal oldali határát a jobb oldalival, a főátló pedig a bal alsó sarokból a jobb felsőbe tart — a sík topológiája és a folytonosság miatt a két görbének kötelező metszenie egymást!
Magasabb dimenzióban ($n$-dimenziós gömbön) a tétel bizonyítása mély algebrai topológiai eszközöket (homológiacsoportok, fokszámelmélet) igényel, de egy dimenzióban a Bolzano-tétel közvetlen és elemi bizonyítást ad.
:::

## Gy107.2. feladat

Legyenek $f, g : [a, b] \to [a, b]$ folytonos függvények, és tegyük fel, hogy $f(a) \le g(a)$ és $f(b) \ge g(b)$.
a) Bizonyítsuk be, hogy a két függvény grafikonja metszi egymást, azaz létezik olyan $c \in [a, b]$, amelyre $f(c) = g(c)$.
b) Mutassuk meg, hogy ha $f$ szigorúan monoton növekvő és $g$ szigorúan monoton csökkenő, akkor a metszéspont egyértelmű.

**Megoldás.**

a) **Metszéspont létezése:**
Definiáljuk a különbségfüggvényt:
$$h(x) = f(x) - g(x), \quad x \in [a, b].$$
- *Folytonosság:* Mivel $f$ és $g$ folytonos $[a, b]$-n, $h$ is folytonos $[a, b]$-n.
- *Előjelek a végpontokban:*
  $$h(a) = f(a) - g(a) \le 0,$$
  $$h(b) = f(b) - g(b) \ge 0.$$
- Ha $h(a) = 0$, akkor $c = a$ megfelelő ($f(a) = g(a)$).
- Ha $h(b) = 0$, akkor $c = b$ megfelelő ($f(b) = g(b)$).
- Ha $h(a) < 0$ és $h(b) > 0$, akkor $h(a)$ és $h(b)$ különböző előjelűek.
A Bolzano-tétel alapján létezik olyan $c \in (a, b)$, amelyre:
$$h(c) = 0 \iff f(c) = g(c).$$
Tehát a két függvény grafikonja valóban metszi egymást a $[a, b]$ intervallumban.

b) **Egyértelműség szigorú monotonitás mellett:**
Tegyük fel, hogy $f$ szigorúan növekvő és $g$ szigorúan csökkenő.
Vizsgáljuk a $h(x) = f(x) - g(x)$ függvény szigorú monotonitását:
Legyen $x_1 < x_2$ két pont $[a, b]$-ben.
Mivel $f$ szigorúan növekvő: $f(x_1) < f(x_2)$.
Mivel $g$ szigorúan csökkenő: $g(x_1) > g(x_2) \implies -g(x_1) < -g(x_2)$.
A két szigorú egyenlőtlenséget összeadva:
$$h(x_1) = f(x_1) - g(x_1) < f(x_2) - g(x_2) = h(x_2).$$
Tehát a $h$ függvény szigorúan monoton növekvő a teljes $[a, b]$ intervallumon.
Egy szigorúan monoton függvény injektív, így legfeljebb egyetlen zérushelye lehet:
ha létezne két különböző gyök, $c_1 < c_2$, akkor $h(c_1) < h(c_2)$ teljesülne, ami kizárja, hogy mindkettő $0$ legyen.
Következésképpen a metszéspont $c$ egyértelmű. $\blacksquare$

::: elmelet
**Elméleti háttér — Függvénygrafikonok metszése és egyértelmű egyensúlyi pontok.**

*Gazdasági és természettudományos analógia:*
A keresleti és kínálati függvények metszéspontja a mikroökonómiában pontosan ezt az elvet követi: ha a kínálat növekvő, a kereslet csökkenő és folytonos, akkor a Bolzano-tétel biztosítja a piaci egyensúlyi ár létezését, a szigorú monotonitás pedig annak unicitását garantálja.
:::

## Gy108.1. feladat

a) Bizonyítsuk be, hogy ha egy $f : [a, b] \to \mathbb{R}$ folytonos függvény injektív, akkor szükségképpen szigorúan monoton.
b) Adjunk példát olyan intervallumon értelmezett injektív függvényre, amely nem monoton (miért nem mond ez ellent az a) rész állításának?).

**Megoldás.**

a) **Injektív folytonos függvény szigorú monotonitása:**
Mivel $f$ injektív és $a < b$, ezért $f(a) \ne f(b)$.
Feltehető, hogy $f(a) < f(b)$ (az ellenkező esetben a $-f$ függvényre alkalmazzuk a gondolatmenetet).
Belátjuk, hogy $f$ szigorúan monoton növekvő:
1. Lépés: Először megmutatjuk, hogy minden $x \in (a, b)$ esetén $f(a) < f(x) < f(b)$.
   Tegyük fel indirekt, hogy van olyan $x \in (a, b)$, amelyre $f(x) \le f(a)$.
   Mivel $f$ injektív, $f(x) \ne f(a)$, így $f(x) < f(a) < f(b)$.
   Tekintsük az $f$ függvényt az $[x, b]$ intervallumon: mivel $f(x) < f(a) < f(b)$ és $f$ folytonos, a Bolzano-tétel szerint létezik olyan $c \in (x, b)$, amelyre $f(c) = f(a)$.
   Mivel $c > x > a$, $c \ne a$, ez ellentmond $f$ injektivitásának!
   Hasonlóan, ha $f(x) \ge f(b)$ lenne, az $[a, x]$ szakaszon találhatnánk olyan $c \in (a, x)$ pontot, ahol $f(c) = f(b)$, ami szintén ellentmondás.
   Tehát valóban $f(a) < f(x) < f(b)$ minden $x \in (a, b)$ esetén.
2. Lépés: Legyen most $x_1, x_2 \in [a, b]$ tetszőleges olyan két pont, amelyre $x_1 < x_2$.
   Alkalmazzuk az 1. lépés eredményét az $[x_1, b]$ intervallumra: $x_2 \in (x_1, b)$, így $f(x_1) < f(x_2)$.
Ez bizonyítja, hogy minden $x_1 < x_2$ esetén $f(x_1) < f(x_2)$, vagyis $f$ valóban szigorúan monoton növekvő. $\blacksquare$

b) **Szakadásos injektív ellenpélda:**
Legyen $I = [0, 1]$, és definiáljuk a $g : [0, 1] \to \mathbb{R}$ függvényt az alábbi módon:
$$g(x) = \begin{cases} x, & \text{ha } x \in [0, 1), \\ -1, & \text{ha } x = 1. \end{cases}$$
- *Injektivitás:* Ha $x_1, x_2 \in [0, 1)$ és $x_1 \ne x_2$, akkor $g(x_1) = x_1 \ne x_2 = g(x_2) \in [0, 1)$. Az $x = 1$ helyen $g(1) = -1 \notin [0, 1)$. Tehát a függvény injektív!
- *Nem monoton:* $0 < 1/2 < 1$, miközben $g(0) = 0 < g(1/2) = 1/2$, de $g(1/2) = 1/2 > g(1) = -1$. A függvény előbb nőtt, majd leugrott, tehát nem monoton.
*Miért nem mond ez ellent az a) résznek?*
Mert a $g$ függvény NEM folytonos az $x = 1$ pontban ($\lim_{x\to 1-0} g(x) = 1 \ne -1$). A tétel alapvető feltevése a folytonosság volt, ami biztosítja a Bolzano-tétel alkalmazhatóságát!

::: elmelet
**Elméleti háttér — Topológiai összefüggőség és invertálhatóság.**

*Az intervallumok speciális topológiája:*
Ez a tétel $\mathbb{R}$ topológiájának egyik legmélyebb elemi sajátossága:
Egy intervallumon folytonos függvény pontosan akkor injektív, ha szigorúan monoton.
Magasabb dimenzióban ($\mathbb{R}^n$, $n \ge 2$) egy folytonos injektív leképezésnek (homeomorfizmusnak a képére) nincs „monotonitási” megfelelője; ott a tartomány invarianciájának tétele (Brouwer) lép a helyébe.
:::

## Gy108.2. feladat

Legyen $f : [a, b] \to \mathbb{R}$ folytonos, nem konstans függvény, amelyre $f(a) = f(b)$.
a) Bizonyítsuk be, hogy $f$ nem injektív, és van olyan $y_0 \in \mathbb{R}$ érték, amelyet $f$ legalább kétszer vesz fel az $[a, b]$ intervallumban.
b) Mutassuk meg, hogy létezik olyan $c \in (a, b)$ belső pont, amelyben $f$-nek lokális szélsőértéke van.

**Megoldás.**

a) **Nem injektivitás és többszörös értékfelvétel:**
- Mivel $a < b$, és $f(a) = f(b)$, az injektivitás definíciója közvetlenül sérül: különböző alappontokhoz ($a \ne b$) azonos függvényérték tartozik. Így $f$ triviálisan nem injektív.
- Mivel $f$ nem konstans, létezik olyan $x_0 \in (a, b)$, amelyre $f(x_0) \ne f(a)$.
  Feltehető, hogy $f(x_0) > f(a)$ (ha kisebb lenne, a gondolatmenet teljesen analóg).
  Válasszunk egy tetszőleges $y_0$ köztes értéket: $f(a) < y_0 < f(x_0)$.
  - Tekintsük az $f$ függvényt az $[a, x_0]$ intervallumon: folytonos, és $f(a) < y_0 < f(x_0)$. A Bolzano-tétel szerint létezik $c_1 \in (a, x_0)$, amelyre $f(c_1) = y_0$.
  - Tekintsük az $f$ függvényt az $[x_0, b]$ intervallumon: folytonos, és mivel $f(b) = f(a)$, ezért $f(b) < y_0 < f(x_0)$. A Bolzano-tétel szerint létezik $c_2 \in (x_0, b)$, amelyre $f(c_2) = y_0$.
  Mivel $c_1 < x_0 < c_2$, a két pont különböző ($c_1 \ne c_2$), és $f(c_1) = f(c_2) = y_0$.
  Tehát $f$ az $y_0$ értéket legalább kétszer felveszi.

b) **Lokális belső szélsőérték létezése:**
Mivel $[a, b]$ korlátos és zárt intervallum, és $f$ folytonos, a Weierstrass-tétel szerint $f$ felveszi a minimumát ($m$) és a maximumát ($M$):
létezik $x_{\min}, x_{\max} \in [a, b]$, hogy $f(x_{\min}) = m$ és $f(x_{\max}) = M$.
Mivel $f$ nem konstans függvény, a minimum és a maximum nem lehet egyenlő:
$$m < M.$$
Tegyük fel indirekt, hogy mind a maximum, mind a minimum csak a végpontokban $\{a, b\}$ vétetik fel.
Ekkor:
$$\{x_{\min}, x_{\max}\} \subseteq \{a, b\}.$$
Mivel azonban a feltétel szerint $f(a) = f(b)$, a végpontokban a függvényérték azonos:
$$f(a) = f(b).$$
Ha a maximum és a minimum is a végpontok halmazából kerülne ki, akkor mindkettőnek egyenlőnek kellene lennie az $f(a) = f(b)$ értékkel, amiből $m = M$ következne. Ez ellentmondás!
Következésképpen a szélsőértékhelyek közül legalább az egyik (vagy a maximumhely, vagy a minimumhely) a nyílt $(a, b)$ intervallumba esik:
létezik olyan $c \in (a, b)$, amelyre $f(c) = M$ (vagy $f(c) = m$).
Egy globális szélsőérték egy belső pontban automatikusan lokális szélsőérték is.
Tehát létezik belső lokális szélsőérték. $\blacksquare$

::: elmelet
**Elméleti háttér — Topológiai Rolle-tétel deriválás nélkül.**

*Kapcsolat a differenciálszámítással:*
A klasszikus Rolle-tétel azt mondja ki, hogy ha $f$ differenciálható is, akkor létezik olyan belső $c \in (a, b)$ pont, ahol $f'(c) = 0$.
A fenti feladat megmutatja, hogy a Rolle-tétel lényegi geometriai magja — a belső lokális szélsőérték létezése — **nem igényel differenciálhatóságot**, kizárólag a folytonosságot és a Weierstrass-tételt! A derivált eltűnése ($f'(c) = 0$) csupán Fermat tétele révén adódik hozzá ehhez az eredményhez.
:::

## Gy109.1. feladat

Egy túrázó reggel 8 órakor indul a hegy lábától egy hegyi ösvényen felfelé, és este 18 órakor ér fel a hegycsúcsra. Éjszaka fent alszik, majd másnap reggel 8 órakor elindul lefelé ugyanezen az ösvényen, és este 18 órakor ér vissza a hegy lábához. (A mozgása során meg-megállhat, sebessége változhat, de a helyzete az idő folytonos függvénye.)
a) Bizonyítsuk be, hogy létezik a napnak egy olyan időpontja (óra, perc, másodperc pontossággal), amikor a túrázó mindkét napon pontosan az ösvény ugyanazon pontján tartózkodott.
b) Igaz marad-e az állítás, ha a túrázó a lefelé utat rövidebb idő alatt teszi meg (pl. reggel 8-tól délután 14 óráig)?

**Megoldás.**

a) **A klasszikus túrázó-probléma megoldása:**
Válasszuk az időváltozót $t \in [8, 18]$ órának.
Jelölje az ösvény mentén mért távolságot a hegy lábától $s$, ahol a hegy lába $s = 0$, a hegycsúcs pedig $s = H > 0$.
- Az első napon a túrázó helyzete az idő függvényében: $f(t)$, ahol $f : [8, 18] \to [0, H]$ folytonos függvény, $f(8) = 0$, $f(18) = H$.
- A második napon a túrázó helyzete lefelé jövet: $g(t)$, ahol $g : [8, 18] \to [0, H]$ folytonos függvény, $g(8) = H$, $g(18) = 0$.
A kérdés az, hogy létezik-e olyan $t^* \in [8, 18]$, amelyre $f(t^*) = g(t^*)$.
Tekintsük a két mozgás különbségfüggvényét:
$$h(t) = f(t) - g(t), \quad t \in [8, 18].$$
- *Folytonosság:* Két folytonos függvény különbségeként $h$ folytonos a $[8, 18]$ zárt intervallumon.
- *Értékek a kezdő- és végpontban:*
  $$h(8) = f(8) - g(8) = 0 - H = -H < 0,$$
  $$h(18) = f(18) - g(18) = H - 0 = H > 0.$$
Mivel $h(8) < 0$ és $h(18) > 0$, a függvény a két végpontban különböző előjelű.
A Bolzano-tétel (középértéktétel) értelmében létezik olyan $t^* \in (8, 18)$ időpont, amelyre:
$$h(t^*) = 0 \iff f(t^*) = g(t^*).$$
Ez azt jelenti, hogy a túrázó a nap $t^*$ időpontjában mindkét napon pontosan ugyanazon a helyen tartózkodott.
*(Szemléletes kép: Képzeljük el, hogy a két nap helyett ugyanazon a napon egyszerre indul el két túrázó az ösvény két végéből egymással szemben. Mivel nem kerülhetik el egymást az ösvényen, valahol kötelező találkozniuk!)*

b) **Eltérő menetidők esete:**
**Igen, az állítás változatlanul igaz marad!**
Bizonyítás:
Tegyük fel, hogy a lefelé úton a túrázó 8-tól 14 óráig ér le a hegy lábához, azaz $g(14) = 0$.
Terjesszük ki a $g$ függvényt a teljes $[8, 18]$ intervallumra úgy, hogy a leérkezése után a hegy lábánál marad:
$$g(t) = 0 \quad \text{ha } t \in [14, 18].$$
Ez a kiterjesztett $g$ függvény nyilvánvalóan folytonos marad a teljes $[8, 18]$ intervallumon, és $g(8) = H$, $g(18) = 0$.
Ekkor a $h(t) = f(t) - g(t)$ különbségfüggvényre ugyanúgy fennáll:
$$h(8) = -H < 0, \qquad h(18) = f(18) - g(18) = H - 0 = H > 0.$$
A Bolzano-tétel szerint létezik $t^* \in (8, 18)$, ahol $h(t^*) = 0 \iff f(t^*) = g(t^*)$.
Ráadásul mivel $t \ge 14$ esetén $g(t) = 0$, míg $f(t) > 0$ (hiszen felfelé halad), a találkozási időpont szükségszerűen a korábbi $t^* \in (8, 14)$ intervallumba fog esni. $\blacksquare$

::: elmelet
**Elméleti háttér — A topológiai középértéktétel kinematikai modellje.**

*A szemlélet ereje a matematikában:*
A túrázó-feladat a matematika-népszerűsítés és a modellezés egyik leghíresebb példája. Bár közvetlenül felírva két egymást követő nap eseményeit nehéznek tűnhet összehasonlítani, a fizikai időszinkronizáció és a különbségfüggvény $h(t) = f(t) - g(t)$ képzése a problémát azonnal a Bolzano-tétel elemi iskolapéldájává egyszerűsíti le.
:::

## Gy109.2. feladat

a) Legyen $f : [0, 1] \to [0, 1]$ folytonos függvény. Bizonyítsuk be, hogy létezik olyan $c \in [0, 1]$, amelyre $f(c) = 1 - c^2$.
b) Legyen $f : [0, 2] \to \mathbb{R}$ folytonos függvény, amelyre $f(0) = f(2)$. Mutassuk meg, hogy létezik olyan $c \in [0, 1]$, amelyre $f(c + 1) = f(c)$ (1 hosszúságú vízszintes húr létezése).

**Megoldás.**

a) **Metszéspont a lefelé nyíló parabolával:**
Definiáljuk a segédfüggvényt:
$$g(x) = f(x) - (1 - x^2), \quad x \in [0, 1].$$
- *Folytonosság:* Folytonos függvények különbségeként $g$ folytonos $[0, 1]$-en.
- *Végponti értékek:*
  $$g(0) = f(0) - (1 - 0) = f(0) - 1.$$
  Mivel $f$ értékkészlete a $[0, 1]$ intervallumba esik, $f(0) \le 1 \implies g(0) \le 0$.
  $$g(1) = f(1) - (1 - 1^2) = f(1) - 0 = f(1).$$
  Mivel $f(x) \ge 0$, ezért $f(1) \ge 0 \implies g(1) \ge 0$.
- Ha $g(0) = 0$, akkor $c = 0$ megoldás. Ha $g(1) = 0$, akkor $c = 1$ megoldás.
- Ha $g(0) < 0$ és $g(1) > 0$, akkor a Bolzano-tétel miatt létezik $c \in (0, 1)$, amelyre:
  $$g(c) = 0 \iff f(c) = 1 - c^2.$$
Minden esetben létezik a keresett $c \in [0, 1]$ pont.

b) **1 hosszúságú vízszintes húr létezése:**
Tekintsük a következő függvényt a $[0, 1]$ intervallumon:
$$g(x) = f(x + 1) - f(x), \quad x \in [0, 1].$$
- *Folytonosság:* Mivel $f$ folytonos $[0, 2]$-n, $g$ folytonos a $[0, 1]$ zárt intervallumon.
- *Értékek a végpontokban:*
  $$g(0) = f(1) - f(0),$$
  $$g(1) = f(2) - f(1).$$
- Használjuk fel a feltételt, mely szerint $f(2) = f(0)$:
  $$g(1) = f(0) - f(1) = -(f(1) - f(0)) = -g(0).$$
- Vizsgáljuk meg a lehetséges eseteket:
  - Ha $g(0) = 0$, akkor $f(1) - f(0) = 0 \implies f(1) = f(0)$, tehát a $c = 0$ pont megfelelő.
  - Ha $g(0) \ne 0$, akkor a $g(0)$ és $g(1) = -g(0)$ számok egymás ellentettjei, így szükségképpen ellentétes előjelűek!
    A Bolzano-tétel szerint létezik olyan $c \in (0, 1)$, amelyre:
    $$g(c) = 0 \iff f(c + 1) = f(c).$$
Ez azt jelenti, hogy az $x = c$ és $x = c + 1$ pontok közötti húr vízszintes, és hossza pontosan 1. $\blacksquare$

::: elmelet
**Elméleti háttér — Bolzano-típusú létezési tételek szimmetriák esetén.**

*Az ellentett előjel garantálása algebrai azonossággal:*
Amikor a végponti előjelek közvetlenül nem ismertek, gyakran segít egy összefüggés, amely megmutatja, hogy a végpontokban felvett értékek összege nulla:
$$g(0) + g(1) = 0 \implies g(1) = -g(0).$$
Ebből azonnal következik, hogy ha nem nullák, akkor ellentétes előjelűek, így a Bolzano-tétel automatikusan alkalmazható.
:::

## Gy110.1. feladat

Tekintsük az alábbi esetenként definiált függvényt:
$$f(x) = \begin{cases} \sin\left(\frac{1}{x}\right), & \text{ha } x \ne 0, \\ 0, & \text{ha } x = 0. \end{cases}$$
a) Mutassuk meg, hogy $f$ nem folytonos a $0$ pontban.
b) Bizonyítsuk be, hogy $f$ ennek ellenére rendelkezik a Darboux-tulajdonsággal (középértéktulajdonsággal) a teljes $\mathbb{R}$-en, azaz bármely intervallum $f$ általi képe intervallum!

**Megoldás.**

a) **Szakadás a $0$ pontban:**
Tekintsük az $x_n = \frac{1}{\frac{\pi}{2} + 2n\pi} \to 0$ zérussorozatot ($n \in \mathbb{N}$).
Ekkor $f(x_n) = \sin\left(\frac{\pi}{2} + 2n\pi\right) = 1 \to 1 \ne f(0) = 0$.
Hasonlóan az $y_n = \frac{1}{n\pi} \to 0$ sorozat mentén $f(y_n) = 0 \to 0$.
Mivel a határérték $x \to 0$ esetén nem létezik, a függvény nem folytonos az $x = 0$ pontban (másodfajú szakadási pontja van).

b) **A Darboux-tulajdonság bizonyítása:**
Legyen $I \subseteq \mathbb{R}$ egy tetszőleges nem elfajuló intervallum. Be kell látnunk, hogy az $f(I)$ képhalmaz is intervallum.
Egy valós számhalmaz pontosan akkor intervallum, ha összefüggő, azaz ha tetszőleges két elemével együtt a köztük lévő összes számot is tartalmazza.
Két eset lehetséges:
- 1. eset: $0 \notin I$.
  Ekkor az $I$ intervallumon az $x \mapsto \frac{1}{x}$ és a szinuszfüggvény is folytonos, így $f$ folytonos az $I$ intervallumon.
  A folytonos függvényekre vonatkozó Bolzano-tétel szerint folytonos függvény intervallumot intervallumra képez le, így $f(I)$ intervallum.
- 2. eset: $0 \in I$.
  Mivel $I$ nem egyetlen pontból álló intervallum, tartalmaz egy $0$-hoz csatlakozó szakaszt: létezik $\delta > 0$, hogy $(0, \delta) \subseteq I$ vagy $(-\delta, 0) \subseteq I$.
  Tegyük fel, hogy $(0, \delta) \subseteq I$ (a negatív oldal teljesen azonos).
  Amikor $x \in (0, \delta)$, az argumentum $u = \frac{1}{x}$ befutja az $\left(\frac{1}{\delta}, +\infty\right)$ végtelen félegyenest.
  Minden ilyen félegyenes hossza végtelen, így tartalmaz legalább egy teljes $2\pi$ hosszúságú periódust: létezik olyan $k \in \mathbb{N}$, hogy $[2k\pi, 2(k+1)\pi] \subset \left(\frac{1}{\delta}, +\infty\right)$.
  Ezen a perióduson a szinuszfüggvény az összes értéket felveszi a $[-1, 1]$ zárt intervallumból:
  $$[-1, 1] \subseteq f((0, \delta)) \subseteq f(I).$$
  Másrészről a szinuszfüggvény definíciója és $f(0) = 0$ miatt:
  $$f(x) \in [-1, 1] \quad \forall x \in \mathbb{R} \implies f(I) \subseteq [-1, 1].$$
  A két tartalmazásból azonnal következik, hogy:
  $$f(I) = [-1, 1].$$
  Mivel a $[-1, 1]$ halmaz zárt intervallum, $f(I)$ intervallum!
Mivel $f$ minden intervallumot intervallumra képez le, $f$ a teljes $\mathbb{R}$-en rendelkezik a Darboux-tulajdonsággal. $\blacksquare$

::: elmelet
**Elméleti háttér — A Darboux-tulajdonság lényege és kapcsolata a folytonossággal.**

*Definíció (Darboux-tulajdonság):*
Egy $f : I \to \mathbb{R}$ függvény **Darboux-tulajdonságú** (vagy rendelkezik a középértéktulajdonsággal), ha bármely részintervallum $f$ általi képe intervallum.
*Logikai kapcsolat:*
$$\text{Folytonos} \implies \text{Darboux-tulajdonságú}.$$
**A megfordítás általában hamis!**
A fenti feladatban szereplő $f(x) = \sin(1/x)$ (és $f(0) = 0$) függvény a standard ellenpélda: nem folytonos $0$-ban, mégis globálisan Darboux-tulajdonságú.
A szakadás oka az infinitezimális sűrűségű oszcilláció, amely nem lyukasztja ki az értékkészletet.
:::

## Gy110.2. feladat

a) Mutassuk meg, hogy a deriváltfüggvények mindig rendelkeznek a Darboux-tulajdonsággal, még akkor is, ha nem folytonosak (Darboux tétele deriváltakra).
b) Bizonyítsuk be, hogy ha egy $f : [a, b] \to \mathbb{R}$ függvény Darboux-tulajdonságú és injektív, akkor $f$ szükségképpen szigorúan monoton és folytonos.

**Megoldás.**

a) **Darboux tétele deriváltfüggvényekre:**
Legyen $F : [a, b] \to \mathbb{R}$ differenciálható függvény a zárt intervallumon, és legyen $f = F'$.
Tegyük fel, hogy $x_1 < x_2$ az $[a, b]$ pontjai, és $f(x_1) < c < f(x_2)$ (vagy $f(x_1) > c > f(x_2)$).
Be kell látnunk, hogy létezik olyan $\xi \in (x_1, x_2)$, amelyre $f(\xi) = c$.
Tekintsük a segédfüggvényt:
$$G(x) = F(x) - c x, \quad x \in [x_1, x_2].$$
- Mivel $F$ differenciálható, $G$ is differenciálható és folytonos a kompakt $[x_1, x_2]$ intervallumon.
- A Weierstrass-tétel szerint $G$ felveszi a minimumát egy $\xi \in [x_1, x_2]$ helyen.
- Megmutatjuk, hogy a minimumhely nem lehet sem $x_1$, sem $x_2$:
  $$G'(x_1) = F'(x_1) - c = f(x_1) - c < 0.$$
  Mivel a jobb oldali derivált negatív, $x_1$ egy jobb oldali környezetében $G(x) < G(x_1)$, így a minimum nem lehet $x_1$-ben.
  Hasonlóan:
  $$G'(x_2) = F'(x_2) - c = f(x_2) - c > 0.$$
  Mivel a bal oldali derivált pozitív, $x_2$ egy bal oldali környezetében $G(x) < G(x_2)$, így a minimum nem lehet $x_2$-ben sem.
- Ezért a minimumhely szükségszerűen a nyílt intervallumba esik: $\xi \in (x_1, x_2)$.
A Fermat-tétel szerint egy belső szélsőértékhelyen a derivált szükségképpen nulla:
$$G'(\xi) = 0 \iff F'(\xi) - c = 0 \iff f(\xi) = c.$$
Ez bizonyítja, hogy $f = F'$ felveszi a két érték közötti tetszőleges $c$ értéket, tehát a deriváltfüggvény mindig Darboux-tulajdonságú!
*(Konkrét nem folytonos példa: $F(x) = x^2 \sin(1/x)$ ha $x \ne 0$ és $F(0) = 0$. Ekkor $F'(0) = 0$, de $x \ne 0$-ra $F'(x) = 2x \sin(1/x) - \cos(1/x)$, amelynek nincs határértéke a $0$-ban, mégis Darboux-tulajdonságú.)*

b) **Injektív Darboux-függvény folytonossága:**
1. Lépés: Szigorú monotonitás igazolása.
   Mivel $f$ injektív, $f(a) \ne f(b)$. Legyen pl. $f(a) < f(b)$.
   Tetszőleges $a \le x_1 < x_2 \le b$ esetén be kell látnunk, hogy $f(x_1) < f(x_2)$.
   Ha létezne olyan pár, ahol $f(x_1) > f(x_2)$, akkor a Darboux-tulajdonság miatt az $f([a, x_1])$ és $f([x_1, x_2])$ képintervallumoknak lenne közös belső pontja, ami azt jelentené, hogy valamilyen értéket legalább két különböző helyen felvesz, ez azonban ellentmond $f$ injektivitásának. Tehát $f$ szigorúan monoton növekvő.
2. Lépés: Folytonosság igazolása.
   Tegyük fel indirekt, hogy $f$ nem folytonos egy $x_0 \in (a, b)$ pontban.
   Mivel $f$ monoton, léteznek az egyoldali határértékek, és az indirekt feltevés szerint ugrásszakadása van:
   $$f(x_0 - 0) < f(x_0 + 0).$$
   Ekkor a $J = (f(x_0 - 0), f(x_0 + 0)) \setminus \{f(x_0)\}$ halmaz nem üres, és a monotonitás miatt egyetlen $x \in [a, b]$ pontra sem lehet $f(x) \in J$.
   Ez azt jelenti, hogy az $f([a, b])$ képhalmazból hiányzik egy teljes nyílt intervallum a két végponti érték közül, vagyis a kép nem intervallum!
   Ez ellentmond annak a feltételnek, hogy $f$ Darboux-tulajdonságú.
Ezért $f$-nek nem lehet szakadása, tehát $f$ szükségképpen folytonos. $\blacksquare$

::: elmelet
**Elméleti háttér — Darboux tétele és a deriváltak finom struktúrája.**

*Miért nem lehet egy deriváltfüggvénynek ugrásszakadása?*
Darboux tétele miatt egy deriváltfüggvénynek **sohasem lehet elsőfajú szakadása (ugrása)**!
Ha egy deriváltfüggvény szakad valahol, ott szükségképpen másodfajú szakadása van (végtelen oszcilláció vagy végtelen határérték).
Továbbá az injektív Darboux-függvények tétele rávilágít, hogy a Darboux-tulajdonság az injektivitással párosítva pontosan visszaadja a klasszikus folytonosságot.
:::

