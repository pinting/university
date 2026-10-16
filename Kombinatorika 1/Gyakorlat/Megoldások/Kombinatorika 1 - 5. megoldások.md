# Kombinatorika 1 – 5. feladatsor – megoldások

### Kombinatorika 1 normál · 2024.

Emlékeztetőül, a Fibonacci-sorozat definíciója: $F_0 = 0$, $F_1 = 1$, $n \ge 2$ esetén $F_n = F_{n-1} + F_{n-2}$.

## 75. feladat

Egy 13 csúcsú fában van két 6 fokú csúcs. Mutassuk meg, hogy a fában nincs 3 fokú csúcs!

**Megoldás.**

Egy $n = 13$ csúcsú fának $n - 1 = 12$ éle van, így a kézfogási lemma szerint a csúcsok fokszámának összege
$$\sum_{v \in V} \deg(v) = 2|E| = 2 \cdot 12 = 24.$$
Mivel a fa összefüggő és $n \ge 2$, nincsenek benne izolált pontok, azaz minden csúcs foka legalább 1: $\deg(v) \ge 1$.

Jelölje a két 6 fokú csúcsot $u$ és $v$, a maradék 11 csúcs fokszámait pedig $d_1, d_2, \dots, d_{11}$. Ekkor:
$$\deg(u) + \deg(v) + \sum_{i=1}^{11} d_i = 6 + 6 + \sum_{i=1}^{11} d_i = 24 \implies \sum_{i=1}^{11} d_i = 12.$$
Mivel mind a 11 darab $d_i$ szám pozitív egész ($d_i \ge 1$), összegük csak úgy lehet 12, ha közülük 10 darab értéke 1, és 1 darab értéke 2:
$$10 \cdot 1 + 1 \cdot 2 = 12.$$
Ha ugyanis létezne olyan csúcs, amelynek foka legalább 3 (azaz valamelyik $d_i \ge 3$), akkor a maradék 10 csúcs foka legalább 1 lévén a fokszámösszeg legalább
$$3 + 10 \cdot 1 = 13 > 12$$
volna, ami ellentmondás.

Tehát a fa fokszámsorozata szükségképpen $6, 6, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1$. Így a fában **nem lehet 3 fokú csúcs**. $\blacksquare$

::: elmelet
**Elméleti háttér — fokszámösszeg fákban.** Egy $n$ csúcsú fa élszáma mindig $|E| = n - 1$, és a fokszámok összege $2(n - 1)$. Mivel minden összefüggő, $n \ge 2$ csúcsú gráfban a minimális fokszám $\delta(G) \ge 1$, a nagy fokú csúcsok erősen korlátozzák a többi csúcs lehetséges fokait: az átlagos fokszám $\frac{2n-2}{n} < 2$, ezért minél nagyobb fokú csúcsok vannak a fában, annál több 1-edfokú csúcsnak (levélnek) kell lennie.
:::

## 76. feladat

Egy paintball meccsen mindenki hat másik embert talált el és a meccs után nincs két olyan ember, akit ugyanannyi találat ért. Hány fős társaság paintballozott egymással?

**Megoldás.**

**A társaság 13 fős volt.**

Tekintsük a játékot egy olyan irányított gráfként, ahol a csúcsok a résztvevők ($n$ ember), és egy $u \to v$ irányított él pontosan akkor fut, ha $u$ eltalálta $v$-t.

- Mivel mindenki pontosan 6 másik embert talált el, minden csúcs kimenő foka $d^+(v) = 6$. Így az élek (összes leadott érvényes találat) száma:
  $$|E| = \sum_{v \in V} d^+(v) = 6n.$$
- Egy $v$ csúcs bejövő foka $d^-(v)$ azt adja meg, hogy $v$-t hány találat érte. Mivel nincs két ember, akit ugyanannyi találat ért volna, a $\{d^-(v) : v \in V\}$ bejövő fokok mind különböző nemnegatív egész számok.
- Mindenki legfeljebb a többi $n - 1$ másik embertől kaphatott találatot, így minden csúcsra $0 \le d^-(v) \le n - 1$.
- Mivel $n$ darab csúcs van, a lehetséges értékek száma szintén $n$ (a $\{0, 1, 2, \dots, n - 1\}$ halmaz), és ezek mind különbözők, így a bejövő fokok pontosan a $0, 1, 2, \dots, n - 1$ számok valamilyen sorrendben.

A bejövő fokok összege:
$$\sum_{v \in V} d^-(v) = 0 + 1 + 2 + \dots + (n - 1) = \frac{(n - 1)n}{2}.$$
Mivel minden élnek van egy kezdőpontja és egy végpontja, az összes kimenő fok összege megegyezik az összes bejövő fok összegével:
$$6n = \frac{(n - 1)n}{2}.$$
Mivel mindenki 6 embert talált el, $n \ge 7 > 0$, így oszthatunk $n$-nel:
$$6 = \frac{n - 1}{2} \implies n - 1 = 12 \implies n = 13.$$

::: elmelet
**Elméleti háttér — irányított gráfok fokszámösszege és a skatulyaelv.** Bármely irányított gráfban az összes kimenő fok összege megegyezik az összes bejövő fok összegével és az élek számával: $\sum d^+(v) = \sum d^-(v) = |E|$. Ha $n$ csúcson $n$ darab különböző fokszám szerepel a $\{0, 1, \dots, n-1\}$ tartományból, akkor azok szükségképpen a $0, 1, \dots, n-1$ számok teljes permutációját alkotják, így összegük determinisztikusan $\binom{n}{2}$.
:::

## 77. feladat

Mutasd meg, hogy ha egy egyszerű gráfban minden pont foka legalább három, akkor a gráfban van páros hosszúságú kör!

**Megoldás.**

Tekintsük a gráf egy **leghosszabb egyszerű útját**:
$$P = v_1 v_2 \dots v_m.$$

1. **A kezdőpont szomszédai mind a pályára illeszkednek:**
   Mivel $P$ maximális hosszúságú egyszerű út a gráfban, a $v_1$ végpont nem köthető össze egyetlen olyan csúccsal sem, amely nem szerepel a $P$ úton (ellenkező esetben a sétát az új csúccsal meghosszabbítva egy $m+1$ csúcsú egyszerű utat kapnánk, ami ellentmondana $P$ maximalitásának).
   Ezért $v_1$ minden szomszédja szükségképpen a $P$ út csúcsai közül kerül ki:
   $$N(v_1) \subseteq \{v_2, v_3, \dots, v_m\}.$$

2. **Legalább három szomszéd az úton:**
   Mivel $G$ egyszerű gráf és minden pont foka legalább $3$, a $v_1$ csúcsnak legalább 3 szomszédja van $P$-n. A közvetlen szomszédja $v_2$, így létezik még legalább két további szomszédja a $P$ úton.
   Jelölje e két szomszédot $v_i$ és $v_j$, ahol indexeikre:
   $$2 < i < j \le m.$$

3. **Három egyszerű kör képzése:**
   A $v_1 v_i$ és $v_1 v_j$ élek a $P$ út szakaszaival három egyszerű kört határoznak meg:
   - $C_1 = v_1 v_2 \dots v_i v_1$, melynek hossza $i$;
   - $C_2 = v_1 v_2 \dots v_j v_1$, melynek hossza $j$;
   - $C_3 = v_1 v_i v_{i+1} \dots v_j v_1$, amely a $v_1 v_i$ élből, a $P$ út $v_i$-től $v_j$-ig tartó szakaszából ($j - i$ darab él) és a $v_j v_1$ élből áll. Ennek hossza:
     $$|C_3| = 1 + (j - i) + 1 = j - i + 2.$$

4. **Paritásvizsgálat:**
   - Ha $i$ páros, akkor $C_1$ egy **páros hosszúságú kör**.
   - Ha $j$ páros, akkor $C_2$ egy **páros hosszúságú kör**.
   - Ha mind $i$, mind $j$ páratlan szám, akkor a különbségük $j - i$ páros szám (két páratlan szám különbsége páros). Ekkor
     $$|C_3| = j - i + 2$$
     szintén **páros szám**, tehát $C_3$ egy **páros hosszúságú kör**.

Mivel minden esetben találunk páros hosszúságú kört, a gráfban **biztosan van páros hosszúságú kör**. $\blacksquare$

::: elmelet
**Elméleti háttér — leghosszabb út technika és körparitás.** Az extremális gráfelmélet egyik legerősebb módszere a leghosszabb út vizsgálata: ha egy $P$ egyszerű út maximális hosszúságú, akkor végpontjaiból nem indulhat él a $P$-n kívüli csúcsokba, így minden szomszédjuk magán a $P$ úton helyezkedik el. Ha a minimális fokszám $\delta(G) \ge 3$, akkor a kezdőpontnak a közvetlen szomszédján kívül még legalább két éle (húrja) vezet az út későbbi pontjaiba, melyek három különböző kört határoznak meg. A három kör hosszai ($i$, $j$ és $j - i + 2$) közül a paritási összefüggések miatt legalább az egyik szükségszerűen páros.
:::

## 78. feladat

Adott $n \ge 5$ valós szám. Minden lehetséges módon számpárokat képeztünk belőlük, és vettük minden számpárban a számok összegét. Az így kapott $\binom{n}{2}$ összeg közül legalább $(n^2 - 3n + 4)/2$ racionális. Bizonyítsuk be, hogy akkor az összes összeg racionális. Következik-e a feltételből az is, hogy minden megadott szám racionális?

**Megoldás.**

Jelölje a megadott valós számokat $x_1, x_2, \dots, x_n$. Tekintsük azt az $n$ csúcsú $G$ egyszerű gráfot, amelynek csúcsai az indexek, és az $\{i, j\}$ él pontosan akkor van behúzva, ha az $x_i + x_j$ összeg racionális ($x_i + x_j \in \mathbb{Q}$).

A komplementer gráf, $\overline{G}$ élei a nem racionális (irracionális) összegeknek felelnek meg.
A racionális összegek száma legalább:
$$|E(G)| \ge \frac{n^2 - 3n + 4}{2} = \binom{n-1}{2} + 1.$$
Így a komplementer gráf élszáma legfeljebb:
$$|E(\overline{G})| = \binom{n}{2} - |E(G)| \le \frac{n(n-1)}{2} - \frac{n^2 - 3n + 4}{2} = \frac{2n - 4}{2} = n - 2.$$

1. **A $G$ gráf összefüggő:**
   Ha $G$ nem volna összefüggő, akkor legalább 2 komponensre esne. Ha ezen komponensek csúcsszáma $k$ és $n - k$ ($1 \le k \le n - 1$), akkor $\overline{G}$-ban az összes komponensek közötti élnek szerepelnie kellene. Így
   $$|E(\overline{G})| \ge k(n - k) \ge 1 \cdot (n - 1) = n - 1.$$
   Ez ellentmond annak, hogy $|E(\overline{G})| \le n - 2$. Tehát $G$ összefüggő.

2. **$G$-ben van háromszög (páratlan kör):**
   Mantel tétele (illetve Turán tétele) szerint egy $n$ csúcsú háromszögmentes (speciálisan páros) egyszerű gráfban legfeljebb $\lfloor n^2/4 \rfloor$ él lehet. Hasonlítsuk össze $|E(G)|$ minimális értékét $\frac{n^2}{4}$-gyel $n \ge 5$ esetén:
   $$|E(G)| - \frac{n^2}{4} \ge \frac{n^2 - 3n + 4}{2} - \frac{n^2}{4} = \frac{n^2 - 6n + 8}{4} = \frac{(n-2)(n-4)}{4}.$$
   Mivel $n \ge 5$, $n - 2 \ge 3$ és $n - 4 \ge 1$, tehát $\frac{(n-2)(n-4)}{4} \ge \frac{3}{4} > 0$.
   Mivel $|E(G)| > \lfloor n^2/4 \rfloor$, a $G$ gráf nem lehet páros, azaz **$G$-ben biztosan van háromszög** (páratlan kör).

3. **A háromszög csúcsai racionálisak:**
   Legyen a háromszög három csúcsa $a, b, c$. Ekkor:
   $$x_a + x_b = q_1 \in \mathbb{Q}, \quad x_b + x_c = q_2 \in \mathbb{Q}, \quad x_c + x_a = q_3 \in \mathbb{Q}.$$
   Összeadva és kivonva:
   $$2x_a = (x_a + x_b) - (x_b + x_c) + (x_c + x_a) = q_1 - q_2 + q_3 \in \mathbb{Q} \implies x_a \in \mathbb{Q}.$$
   Hasonlóan $x_b = \frac{q_1 + q_2 - q_3}{2} \in \mathbb{Q}$ és $x_c = \frac{-q_1 + q_2 + q_3}{2} \in \mathbb{Q}$.

4. **Minden szám és minden összeg racionális:**
   Mivel $x_a \in \mathbb{Q}$, és $G$ összefüggő, bármely $i$ csúcshoz vezet út $a$-ból $G$-ben: $a = v_0, v_1, \dots, v_m = i$.
   Ha $x_{v_k} \in \mathbb{Q}$, és $v_k v_{k+1} \in E(G)$ (azaz $x_{v_k} + x_{v_{k+1}} \in \mathbb{Q}$), akkor
   $$x_{v_{k+1}} = (x_{v_k} + x_{v_{k+1}}) - x_{v_k} \in \mathbb{Q}.$$
   Indukcióval a komponens minden csúcsára, vagyis **minden $x_i$ szám racionális** ($x_i \in \mathbb{Q}$ minden $i = 1, \dots, n$-re).

Mivel minden megadott szám racionális, bármely két szám összege $x_i + x_j$ is két racionális szám összege, tehát **az összes összeg racionális**.

**Válasz a kérdésre:** Igen, a feltételből az is következik, hogy **mind az $n$ megadott szám racionális**. $\blacksquare$

::: elmelet
**Elméleti háttér — Mantel-tétel és algebrai összefüggőség.** Ha egy gráf éleinek száma meghaladja a $\lfloor n^2/4 \rfloor$ Turán-korlátot, a gráfban garantáltan van háromszög ($K_3$). Egy háromszög három élének összegeiből a csúcsok értékei lineárisan kifejezhetők (egy páratlan körön a váltakozó összeg a csúcs kétszeresét adja). Ha egy csúcs racionális, az összefüggőség révén az egész komponens összes csúcsa racionálissá válik.
:::

## 79. feladat

Bizonyítsd be, hogy minden pozitív egész szám felírható különböző Fibonacci számok összegeként.

**Megoldás.**

A Fibonacci-sorozat elemei: $F_1 = 1, F_2 = 1, F_3 = 2, F_4 = 3, F_5 = 5, F_6 = 8, F_7 = 13, \dots$
A kétértelműség elkerülése végett tekintsük a szigorúan növekvő sorozatot a 2. tagtól:
$$f_1 = F_2 = 1, \quad f_2 = F_3 = 2, \quad f_3 = F_4 = 3, \quad f_4 = F_5 = 5, \quad f_5 = F_6 = 8, \quad \dots$$
ahol $f_k = F_{k+1}$ ($k \ge 1$).

Az állítást $N$ szerinti teljes indukcióval bizonyítjuk a **mohó algoritmus** segítségével:
- **Bázis:** $N = 1 = f_1 = F_2$ (vagy $F_1$), az állítás igaz.
- **Indukciós feltevés:** Tegyük fel, hogy minden $1 \le k < N$ egész szám felírható különböző Fibonacci-számok összegeként.
- **Indukciós lépés:** Tekintsük az $N$ számot. Válasszuk ki a legnagyobb olyan $F_m$ Fibonacci-számot ($m \ge 2$), amely még nem haladja meg $N$-et:
  $$F_m \le N < F_{m+1}.$$
  - Ha $N = F_m$, akkor $N$ maga egy Fibonacci-szám, a felírás készen van.
  - Ha $N > F_m$, képezzük az $N' = N - F_m$ maradékot.
    Mivel $F_m \ge 1$, világos, hogy $1 \le N' < N$.
    Az indukciós feltevés szerint $N'$ felírható különböző Fibonacci-számok összegeként:
    $$N' = F_{i_1} + F_{i_2} + \dots + F_{i_r}, \quad \text{ahol } i_1 < i_2 < \dots < i_r.$$
    Megmutatjuk, hogy a legnagyobb felhasznált indexre $i_r < m$, azaz $F_m$ biztosan nem szerepel $N'$ felbontásában.
    Mivel $F_{m+1} = F_m + F_{m-1}$, a definícióból:
    $$N' = N - F_m < F_{m+1} - F_m = F_{m-1}.$$
    Mivel $N' < F_{m-1}$, a felbontásban szereplő minden tagra $F_{i_j} \le N' < F_{m-1} < F_m$.
    Ezért $i_r \le m - 2 < m$.

Így $N = F_m + N' = F_m + F_{i_1} + \dots + F_{i_r}$ csupa különböző Fibonacci-szám összege. $\blacksquare$

*(Megjegyzés: ez a bizonyítás azt is mutatja, hogy $N$ felírható olyan különböző Fibonacci-számok összegeként, amelyek között nincsenek szomszédosak — ez a híres Zeckendorf-tétel.)*

::: elmelet
**Elméleti háttér — Zeckendorf-tétel és mohó felbontás.** A Fibonacci-számok rekurziójából ($F_{m+1} - F_m = F_{m-1}$) következik, hogy a legnagyobb $\le N$ Fibonacci-szám levonása után maradó rész szigorúan kisebb, mint az azt megelőző $F_{m-1}$. Emiatt a mohó algoritmus nemcsak különböző, hanem nem szomszédos Fibonacci-számok összegére bontja fel a számot, és ez az előállítás egyértelmű (Zeckendorf-tétel).
:::

## 80. feladat

Hozd zárt alakra a következő kifejezést és igazold az egyenlőséget a kettős leszámlálás módszerével:
$$\sum_{k=m}^n \binom{n}{k} \binom{k}{m}$$

**Megoldás.**

**A zárt alak: $\mathbf{\binom{n}{m} 2^{n-m}}$.**

**Bizonyítás kettős leszámlálással:**

Tekintsünk egy $n$ fős társaságot. A célunk megszámolni, hogy hányféleképpen lehet kiválasztani a társaságból egy tetszőleges $k$ fős bizottságot, és a bizottság tagjai közül egy $m$ fős elnökséget ($m \le k \le n$).

- **1. számlálás (előbb a bizottság, majd az elnökség):**
  Rögzítsük a bizottság létszámát: legyen ez $k$ ($m \le k \le n$).
  1. Az $n$ emberből a $k$ fős bizottságot $\binom{n}{k}$ módon választhatjuk ki.
  2. A kiválasztott $k$ tag közül az $m$ fős elnökséget $\binom{k}{m}$ módon jelölhetjük ki.
  Mivel a bizottság mérete $k = m, m+1, \dots, n$ lehet, az összes lehetőség száma az esetek összege:
  $$\sum_{k=m}^n \binom{n}{k} \binom{k}{m}.$$

- **2. számlálás (előbb az elnökség, majd a többi bizottsági tag):**
  1. Először közvetlenül az egész $n$ fős társaságból válasszuk ki az $m$ fős elnökséget: erre $\binom{n}{m}$ lehetőség van.
  2. A maradék $n - m$ ember mindegyikéről függetlenül döntsük el, hogy tagja legyen-e a bizottságnak (mint sima bizottsági tag) vagy sem. Mivel minden személyre 2 lehetőség van (bekerül / nem kerül be), a maradék emberekből a bizottságot $2^{n-m}$ féleképpen egészíthetjük ki.
  Így a lehetőségek száma:
  $$\binom{n}{m} 2^{n-m}.$$

Mivel mindkét eljárás ugyanazokat a struktúrákat (elnökség $\subseteq$ bizottság $\subseteq$ társaság) számolja meg, a két kifejezés egyenlő:
$$\sum_{k=m}^n \binom{n}{k} \binom{k}{m} = \binom{n}{m} 2^{n-m}. \quad \blacksquare$$

*(Algebrai ellenőrzés: $\binom{n}{k}\binom{k}{m} = \frac{n!}{k!(n-k)!}\frac{k!}{m!(k-m)!} = \frac{n!}{m!(n-m)!}\frac{(n-m)!}{(k-m)!(n-k)!} = \binom{n}{m}\binom{n-m}{k-m}$. Összegezve $j = k - m$-re: $\binom{n}{m} \sum_{j=0}^{n-m}\binom{n-m}{j} = \binom{n}{m}2^{n-m}$.)*

::: elmelet
**Elméleti háttér — kettős leszámlálás részhalmazpárokra.** Részhalmazpárok $\{(A, B) : B \subseteq A \subseteq S, |B| = m\}$ megszámlálásakor a sorrend felcserélhető: $A$ választása után $B$ kijelölése a $\sum \binom{n}{k}\binom{k}{m}$ összeget adja, míg $B$ azonnali rögzítése után $A \setminus B$ az $S \setminus B$ tetszőleges részhalmaza lehet, ami $\binom{n}{m}2^{n-m}$ lehetőséget ad.
:::

## 81. feladat

17 doboz mindegyikében piros, kék, sárga és zöld golyók vannak. Bizonyítsuk be, hogy található két olyan doboz, amelyekben együttvéve mind a négyféle golyóból páros sok van!

**Megoldás.**

Jellemezzünk minden dobozt a benne található négyféle golyó számának paritásával! Rendeljünk a dobozhoz egy $(p_1, p_2, p_3, p_4) \in \{0, 1\}^4$ paritásvektort, ahol a koordináták értéke $0$, ha a megfelelő színű golyóból páros sok van a dobozban, és $1$, ha páratlan sok:
- $p_1$: piros golyók paritása,
- $p_2$: kék golyók paritása,
- $p_3$: sárga golyók paritása,
- $p_4$: zöld golyók paritása.

Két dobozban egy adott színű golyók összege pontosan akkor páros, ha a két dobozban az adott szín paritása megegyezik:
- páros + páros = páros ($0 + 0 \equiv 0 \pmod 2$),
- páratlan + páratlan = páros ($1 + 1 \equiv 0 \pmod 2$),
- páros + páratlan = páratlan ($0 + 1 \equiv 1 \pmod 2$).

Tehát két dobozban együttvéve **mind a négyféle golyóból pontosan akkor van páros sok**, ha a hozzájuk tartozó paritásvektor mind a 4 koordinátában megegyezik, azaz **a két dobozhoz pontosan ugyanaz a paritásvektor tartozik**.

Hány különböző paritásvektor létezik?
Mivel mind a 4 koordináta 2 lehetséges értéket vehet fel ($0$ vagy $1$), a lehetséges paritásvektorok száma:
$$2^4 = 16.$$
Mivel 17 dobozunk van, de csak 16 különböző paritásvektor, a **skatulya-elv** szerint létezik legalább két olyan doboz, amelyhez ugyanaz a paritásvektor tartozik.

Ebben a két dobozban mind a négyféle golyó összege páros. $\blacksquare$

::: elmelet
**Elméleti háttér — skatulyaelv $\mathbb{Z}_2^d$ felett.** Ha $d$ darab független paritási feltételt vizsgálunk, az állapotok a $d$ dimenziós bináris tér elemei, melynek mérete $2^d$. Ha több mint $2^d$ objektumunk van, a skatulyaelv miatt legalább kettő azonos állapotú lesz. Mivel modulo $2$ a különbség megegyezik az összeggel ($x + y \equiv 0 \iff x \equiv y$), az azonos állapotú párok összege minden koordinátában páros.
:::

## 82. feladat

Hány olyan egymilliónál kisebb pozitív egész szám van, melyben a számjegyek összege 25?

**Megoldás.**

**53 262 ilyen szám van.**

Egy egymilliónál kisebb pozitív egész szám legfeljebb 6 számjegyből áll. Írjuk fel a számokat 6 jegyű formában, szükség esetén balról vezető nullákkal kiegészítve:
$$d_1 d_2 d_3 d_4 d_5 d_6, \quad \text{ahol } 0 \le d_i \le 9 \text{ minden } i \in \{1, \dots, 6\}\text{-ra}.$$
A feladat feltétele:
$$d_1 + d_2 + d_3 + d_4 + d_5 + d_6 = 25.$$
*(Mivel a számjegyek összege $25 > 0$, a csupa 0 számjegyű $0$ nem adódhat, így minden megoldás automatikusan egy pozitív egész számnak felel meg.)*

Ez egy diofantikus egyenlet nemnegatív egész megoldásainak száma a $d_i \le 9$ felső korláttal. Használjuk a **logikai szita formulát**!

1. **Alaphalmaz korlát nélkül:**
   A $d_1 + \dots + d_6 = 25$ egyenlet nemnegatív egész ($d_i \ge 0$) megoldásainak száma (25 golyó szétosztása 6 dobozba):
   $$|S| = \binom{25 + 6 - 1}{6 - 1} = \binom{30}{5} = \frac{30 \cdot 29 \cdot 28 \cdot 27 \cdot 26}{120} = 142\,506.$$

2. **Rossz tulajdonságok ($A_i$: $d_i \ge 10$):**
   - **Egy feltétel sérül:** Ha $d_i \ge 10$, legyen $d_i' = d_i - 10 \ge 0$. Ekkor az új változók összege $25 - 10 = 15$:
     $$|A_i| = \binom{15 + 6 - 1}{5} = \binom{20}{5} = \frac{20 \cdot 19 \cdot 18 \cdot 17 \cdot 16}{120} = 15\,504.$$
     Mivel 6 számjegy van, $\binom{6}{1} = 6$ ilyen eset van.
   - **Két feltétel sérül:** Ha $d_i \ge 10$ és $d_j \ge 10$ ($i \ne j$), akkor az összegből $20$-at levonva az új változók összege $25 - 20 = 5$:
     $$|A_i \cap A_j| = \binom{5 + 6 - 1}{5} = \binom{10}{5} = \frac{10 \cdot 9 \cdot 8 \cdot 7 \cdot 6}{120} = 252.$$
     Ilyen párból $\binom{6}{2} = 15$ van.
   - **Három vagy több feltétel sérül:** Három számjegy összege már legalább $3 \cdot 10 = 30 > 25$ lenne, így nem sérülhet 3 vagy több feltétel: $|A_i \cap A_j \cap A_k| = 0$.

A szitaformula szerint a jó megoldások száma:
$$N = |S| - \binom{6}{1}|A_1| + \binom{6}{2}|A_1 \cap A_2| = \binom{30}{5} - 6 \binom{20}{5} + 15 \binom{10}{5}$$
$$N = 142\,506 - 6 \cdot 15\,504 + 15 \cdot 252 = 142\,506 - 93\,024 + 3\,780 = \mathbf{53\,262}.$$

::: elmelet
**Elméleti háttér — szitaformula számjegyösszegre.** Felső korláttal terhelt összegek számlálásánál ($x_1 + \dots + x_n = K$, $0 \le x_i \le M$) a standard módszer a logikai szita: a komplementer feltételek ($x_i \ge M + 1$) változócserével ($x_i' = x_i - (M+1)$) sima nemnegatív diofantikus egyenletekre vezetnek, melyek megoldásszáma az $\binom{K' + n - 1}{n - 1}$ képlettel adódik.
:::

## 83. feladat

Hány anagrammája van a KRASZNAHORKAI szónak, amelyben

a) nem követi egymást közvetlenül három A betű?

b) semelyik két A nincs egymás mellett?

**Megoldás.**

Számoljuk meg a KRASZNAHORKAI szó betűit:
- K: 2 db,
- R: 2 db,
- A: 3 db,
- S: 1 db,
- Z: 1 db,
- N: 1 db,
- H: 1 db,
- O: 1 db,
- I: 1 db.

Összesen: $2 + 2 + 3 + 1 + 1 + 1 + 1 + 1 + 1 = 13$ betű.
Az összes lehetséges anagramma száma (ismétléses permutáció):
$$N_{\text{összes}} = \frac{13!}{2! \, 2! \, 3! \, 1! \, 1! \, 1! \, 1! \, 1! \, 1!} = \frac{13!}{24} = 259\,459\,200.$$

---

**a) Nem követi egymást közvetlenül három A betű:**

Számoljuk ki a komplementer esetet: hány olyan anagramma van, ahol a három A egymás mellett áll, vagyis tartalmazza az „AAA” blokkot.

Kössük össze a három A betűt egyetlen szimbólummá: $[AAA]$.
Ekkor a felhasznált elemek:
$$\{[AAA], K, K, R, R, S, Z, N, H, O, I\},$$
ez összesen $13 - 3 + 1 = 11$ elem, melyek között 2 darab K és 2 darab R van.
Ezek sorrendjeinek száma:
$$\frac{11!}{2! \, 2!} = \frac{11!}{4} = 9\,979\,200.$$

A keresett anagrammák száma tehát az összes esetből a komplementer levonásával:
$$N_{\text{összes}} - \frac{11!}{4} = \frac{13!}{24} - \frac{11!}{4} = \frac{11!}{4} \left(\frac{13 \cdot 12}{6} - 1\right) = \frac{11!}{4} (26 - 1) = 25 \cdot 9\,979\,200 = \mathbf{249\,480\,000}.$$

---

**b) Semelyik két A nincs egymás mellett:**

Először helyezzük el a többi $13 - 3 = 10$ darab betűt: $\{K, K, R, R, S, Z, N, H, O, I\}$.
Ezek száma:
$$\frac{10!}{2! \, 2!} = \frac{10!}{4} = 907\,200.$$

A 10 lehelyezett betű között és a két végén összesen $10 + 1 = 11$ lehetséges hely van:
$$\_ \, B_1 \, \_ \, B_2 \, \_ \, B_3 \, \_ \, \dots \, \_ \, B_{10} \, \_$$
Ahhoz, hogy semelyik két A ne kerüljön egymás mellé, ezen 11 hely közül kell kiválasztanunk 3-at, mindegyikbe pontosan egy A betűt téve. Erre $\binom{11}{3}$ lehetőség van:
$$\binom{11}{3} = \frac{11 \cdot 10 \cdot 9}{6} = 165.$$

A kedvező anagrammák száma a szorzási szabály szerint:
$$\frac{10!}{4} \cdot \binom{11}{3} = 907\,200 \cdot 165 = \mathbf{149\,688\,000}.$$

::: elmelet
**Elméleti háttér — anagrammák és tiltott szomszédságok.** Ismétléses permutációnál az azonos betűk megkülönböztethetetlenek. (a) Egymás melletti betűknél a betűcsoportot egyetlen új szimbólumként kezeljük („összeragasztás”), majd a komplementer elvvel vonjuk le az összesből. (b) Ha semelyik két azonos betű nem lehet szomszédos, a többi betűt rendezzük el először, és a köztük keletkező résekbe skatulyázzuk be az azonos betűket kombinációval ($\binom{m+1}{k}$).
:::

## 84. feladat

Egy trafikban $k$ fajta képeslap kapható. Hányféleképpen küldhetünk belőlük $n$ barátunknak 2–2 különbözőt úgy, hogy egy fajta képeslapot több barátunknak is elküldhetünk, de azt szeretnénk, hogy ne legyen olyan, amit mindegyiküknek elküldtünk?

**Megoldás.**

**$\mathbf{\binom{k}{2}^n - k(k - 1)^n + \binom{k}{2}}$ féleképpen.**

Egy barátnak a $k$ fajta képeslapból 2 különbözőt küldünk, erre $\binom{k}{2}$ lehetőség van.
Ha semmilyen megkötés nincs, az $n$ barátnak összesen
$$\binom{k}{2}^n$$
féleképpen küldhetünk képeslapokat.

Azt szeretnénk kizárni, hogy legyen olyan képeslapfajta, amelyet **mind az $n$ barát megkap**.
Használjuk a **logikai szita formulát**!
Jelölje $A_i$ ($i = 1, \dots, k$) azon választások halmazát, ahol az $i$-edik fajta képeslapot mind az $n$ barát megkapta.

- **Egy rögzített képeslapot ($i$) mindenki megkapott ($|A_i|$):**
  Ekkor az $i$-edik képeslapot minden barát megkapta, így minden barát számára a második képeslapot a maradék $k - 1$ képeslap közül kell kiválasztani: erre barátonként $k - 1$ lehetőség van.
  Az $n$ barátra függetlenül: $(k - 1)^n$.
  Ilyen képeslapból $\binom{k}{1} = k$ darab van.

- **Két rögzített képeslapot ($i$ és $j$) mindenki megkapott ($|A_i \cap A_j|$):**
  Mivel minden barát pontosan 2 képeslapot kap, ha az $i$-ediket és a $j$-ediket is mindenki megkapta, akkor minden barát pontosan ezt a $\{i, j\}$ párt kapta meg! Erre barátonként csak 1 lehetőség van, így $n$ barátra: $1^n = 1$.
  Ilyen párból $\binom{k}{2}$ darab van.

- **Három vagy több rögzített képeslapot mindenki megkapott:**
  Mivel minden barát legfeljebb 2 képeslapot kap, lehetetlen, hogy 3 vagy több különböző képeslapot mindenki megkapjon:
  $$|A_{i_1} \cap A_{i_2} \cap A_{i_3}| = 0.$$

A szitaformula szerint a jó elrendezések száma:
$$N = \binom{k}{2}^n - \sum_{i=1}^k |A_i| + \sum_{1 \le i < j \le k} |A_i \cap A_j|$$
$$N = \binom{k}{2}^n - k(k - 1)^n + \binom{k}{2}.$$

::: elmelet
**Elméleti háttér — szitaformula és metszetek leállása.** A szitaformula alkalmazásakor a magasabb rendű metszetek gyakran strukturális okokból üressé válnak: mivel egy személy kapacitása $2$ képeslap, semelyik személy nem kaphat $3$ közös képeslapot, így a háromszoros és magasabb metszetek mind $0$-k. A formula emiatt mindössze három tagból áll.
:::
