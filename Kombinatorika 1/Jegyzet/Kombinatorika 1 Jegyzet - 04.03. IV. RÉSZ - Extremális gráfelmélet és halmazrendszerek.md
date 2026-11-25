## 54. Extremális kérdések: a Mantel-tétel

A Ramsey-tétel azt mondja, hogy elég nagy gráfban (vagy a komplementerében) **mindig** van nagy teljes részgráf. Most egy rokon, de másfajta kérdést teszünk fel: **hány éle lehet** egy $n$ csúcsú egyszerű gráfnak, ha nem tartalmaz egy adott $H$ részgráfot? Ezt a maximumot $\mathrm{ex}(n, H)$-val jelöljük, és az ilyen kérdéseket **extremális gráfelméleti** kérdéseknek nevezzük. Az első és legegyszerűbb eset: $H$ a háromszög.

Egy háromszögmentes gráfra jó példa a páros gráf; közülük a legtöbb éle a lehető legkiegyensúlyozottabb teljes páros gráfnak, a $K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$-nek van, összesen $\lfloor n/2 \rfloor \cdot \lceil n/2 \rceil = \lfloor n^2/4 \rfloor$. Kiderül, hogy ennél jobb nincs.

> **Tétel (Mantel, 1907).** Egy $n$ csúcsú, háromszöget nem tartalmazó egyszerű gráfnak legfeljebb $\left\lfloor \dfrac{n^2}{4} \right\rfloor$ éle van. Egyenlőség csak a $K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$ teljes páros gráfra áll fenn.

*Bizonyítás.* Legyen $G$ háromszögmentes, $v$ egy maximális, $\Delta$ fokú csúcsa, és $N(v)$ a szomszédainak halmaza. Az $N(v)$ csúcsai között nincs él, mert egy ilyen él $v$-vel háromszöget alkotna. Legyen $A = V \setminus N(v)$; ekkor $|A| = n - \Delta$. Mivel $N(v)$ független, **minden élnek van végpontja $A$-ban**, így
$$e(G) \le \sum_{a \in A} \deg(a) \le (n - \Delta)\,\Delta \le \frac{n^2}{4},$$
ahol az utolsó lépés a számtani és mértani közép közötti egyenlőtlenség: $\sqrt{(n - \Delta)\Delta} \le \frac{n}{2}$. Mivel $e(G)$ egész, $e(G) \le \lfloor n^2/4 \rfloor$.

*Az egyenlőség esete (kiegészítés Mantel tételéhez).* Ha $e(G) = \lfloor n^2/4 \rfloor$, akkor a fenti láncban mindenhol egyenlőség áll (az utolsó lépésben az egész részre). Az első egyenlőtlenség csak úgy lehet egyenlőség, ha **$A$-n belül sincs él** (egy ilyen élt kétszer számoltunk volna). A második csak úgy, ha minden $a \in A$ foka $\Delta = |N(v)|$. Tehát $G$ páros gráf az $A$ és $N(v)$ osztályokkal, és minden $A$-beli csúcs $N(v)$ összes csúcsával szomszédos: $G = K_{n-\Delta, \Delta}$. Végül $(n - \Delta)\Delta = \lfloor n^2/4 \rfloor$ csak $\Delta \in \{\lfloor n/2 \rfloor, \lceil n/2 \rceil\}$ esetén teljesül. $\blacksquare$

::: kiegeszites
**Kiegészítés — egy második bizonyítás fokszámokkal.** Ha $uv$ él, akkor $u$-nak és $v$-nek nincs közös szomszédja (különben háromszög volna), tehát $\deg(u) + \deg(v) \le n$. Ezt minden élre összeadva a bal oldalon minden $w$ csúcs $\deg(w)$-szer szerepel (egyszer minden rá illeszkedő élnél):
$$\sum_{w \in V} \deg(w)^2 = \sum_{uv \in E}\big(\deg(u) + \deg(v)\big) \le n \cdot e.$$
A számtani és négyzetes közép közötti egyenlőtlenség (Cauchy–Schwarz) szerint
$$\sum_{w}\deg(w)^2 \ge \frac{1}{n}\Big(\sum_w \deg(w)\Big)^2 = \frac{4e^2}{n}.$$
Összevetve $\frac{4e^2}{n} \le ne$, azaz $e \le \frac{n^2}{4}$. $\blacksquare$
:::

### Négy hosszú kört nem tartalmazó gráfok

Ha háromszög helyett a $C_4$-et tiltjuk, a kép gyökeresen megváltozik: a teljes páros gráf már tele van négyszögekkel, és kiderül, hogy a $C_4$-mentes gráfoknak nagyságrendileg kevesebb élük lehet.

> **Tétel.** Ha egy $n$ csúcsú egyszerű gráf nem tartalmaz $4$ hosszú kört, akkor élszáma
> $$e \le \frac{n}{4}\left(1 + \sqrt{4n - 3}\right).$$

*Bizonyítás (kettős leszámlálás).* Számoljuk meg a „cseresznyéket”: az olyan $(w, \{x, y\})$ párokat, ahol $x \ne y$ a $w$ csúcs két szomszédja (egy $2$ hosszú út, $w$ a közepe). Egy $w$ csúcsnál $\binom{\deg(w)}{2}$ cseresznye van. Másrészt egy $\{x, y\}$ párhoz legfeljebb **egy** $w$ tartozhat: ha két különböző $w$ és $w'$ is szomszédja volna $x$-nek és $y$-nak is, akkor $x\,w\,y\,w'$ egy $4$ hosszú kör volna. Tehát
$$\sum_{w \in V}\binom{\deg(w)}{2} \le \binom{n}{2}.$$
A bal oldal $\frac12\big(\sum \deg(w)^2 - \sum \deg(w)\big)$, ahol $\sum \deg(w) = 2e$ (kézfogási lemma), és a számtani és négyzetes közép közötti (Cauchy–Schwarz-) egyenlőtlenség szerint $\sum \deg(w)^2 \ge \frac1n\big(\sum \deg(w)\big)^2 = \frac{4e^2}{n}$. A bal oldal tehát legalább $\frac12\left(\frac{4e^2}{n} - 2e\right)$, így
$$\frac{4e^2}{n} - 2e \le n(n-1), \qquad 4e^2 - 2ne - n^2(n-1) \le 0.$$
Ez $e$-ben másodfokú egyenlőtlenség; a nagyobbik gyöknél nem lehet nagyobb:
$$e \le \frac{2n + \sqrt{4n^2 + 16n^2(n-1)}}{8} = \frac{n}{4}\left(1 + \sqrt{4n - 3}\right). \ \blacksquare$$

Tehát $\mathrm{ex}(n, C_4)$ nagyságrendje legfeljebb $\frac12 n^{3/2}$, szemben a háromszögmentes gráfok $\frac14 n^2$-ével. (Ismert, hogy ez a nagyságrend helyes: vannak $C_4$-mentes gráfok körülbelül $\frac12 n^{3/2}$ éllel.)

## 55. Turán tétele

Mantel tétele a háromszögről, vagyis a $K_3$-ról szólt. Turán Pál 1941-ben megválaszolta a kérdést tetszőleges teljes gráfra: hány éle lehet egy $n$ csúcsú gráfnak, ha nem tartalmaz $K_{r+1}$-et? Ehhez a páros gráfok általánosítására van szükség.

> **Definíció.**
>
> - Egy gráf **$r$ osztályú** (vagy $r$-osztályú), ha a csúcshalmaza felbontható $r$ (esetleg üres) diszjunkt **osztályra** úgy, hogy azonos osztályba tartozó csúcsok között nincs él. (A $2$ osztályú gráfok éppen a páros gráfok.)
> - Egy $r$ osztályú gráf **teljes $r$ osztályú**, ha bármely két **különböző** osztályba tartozó csúcs össze van kötve.
> - A **Turán-gráf**, $T(n, r)$, az az $n$ csúcsú teljes $r$ osztályú gráf, amelyben az osztályok mérete a lehető legkiegyenlítettebb: mindegyik $\lfloor n/r \rfloor$ vagy $\lceil n/r \rceil$ elemű.

Egy gráf pontosan akkor $r$ osztályú, ha $\chi(G) \le r$: az osztályok éppen a színosztályok. Egy $r$ osztályú gráf **nem tartalmaz $K_{r+1}$-et**, hiszen $r + 1$ csúcs közül a skatulyaelv szerint kettő azonos osztályba esik, és azok nincsenek összekötve.

A $T(n, r)$ élszáma: ha az osztályok mérete $n_1, \dots, n_r$, akkor
$$e\big(T(n, r)\big) = \binom{n}{2} - \sum_{i=1}^{r}\binom{n_i}{2},$$
hiszen a teljes gráfból éppen az osztályokon belüli éleket hagyjuk el.

*Példák.* A $T(10, 5)$ öt kételemű osztályból áll: élszáma $\binom{10}{2} - 5 \cdot 1 = 45 - 5 = 40$. A $T(11, 4)$ osztályai $3, 3, 3, 2$ eleműek: élszáma $\binom{11}{2} - 3\binom{3}{2} - \binom{2}{2} = 55 - 9 - 1 = 45$. A $T(n, 2)$ a $K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$, a Mantel-tétel extremális gráfja.

\begin{center}
\begin{tikzpicture}[scale=0.8,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!30, thin},
  cls/.style={draw=black!70, thick, rounded corners=8pt}
]
  \coordinate (a1) at (-1.2, 3.0);
  \coordinate (a2) at (0, 3.0);
  \coordinate (a3) at (1.2, 3.0);
  \coordinate (b1) at (3.0, 1.2);
  \coordinate (b2) at (3.0, 0);
  \coordinate (b3) at (3.0, -1.2);
  \coordinate (c1) at (-1.2, -3.0);
  \coordinate (c2) at (0, -3.0);
  \coordinate (c3) at (1.2, -3.0);
  \coordinate (d1) at (-3.0, 0.6);
  \coordinate (d2) at (-3.0, -0.6);
  \foreach \x in {a1,a2,a3} { \foreach \y in {b1,b2,b3,c1,c2,c3,d1,d2} { \draw[edge] (\x) -- (\y); } }
  \foreach \x in {b1,b2,b3} { \foreach \y in {c1,c2,c3,d1,d2} { \draw[edge] (\x) -- (\y); } }
  \foreach \x in {c1,c2,c3} { \foreach \y in {d1,d2} { \draw[edge] (\x) -- (\y); } }
  \draw[cls] (-1.65, 2.6) rectangle (1.65, 3.4);
  \draw[cls] (2.6, -1.65) rectangle (3.4, 1.65);
  \draw[cls] (-1.65, -3.4) rectangle (1.65, -2.6);
  \draw[cls] (-3.4, -1.05) rectangle (-2.6, 1.05);
  \foreach \p in {a1,a2,a3,b1,b2,b3,c1,c2,c3,d1,d2} { \node[pt] at (\p) {}; }
  \node at (0, -4.1) {\footnotesize A $T(11, 4)$ Turán-gráf: osztályok mérete $3, 3, 3, 2$; minden különböző osztálybeli pár össze van kötve ($45$ él).};
\end{tikzpicture}
\end{center}

> **Állítás.** Az $n$ csúcsú $r$ osztályú gráfok közül a $T(n, r)$ Turán-gráfnak van a legtöbb éle.

*Bizonyítás.* Legyen $G$ egy maximális élszámú $n$ csúcsú $r$ osztályú gráf. $G$ teljes $r$ osztályú, hiszen ha két különböző osztálybeli csúcs nem volna összekötve, az élt hozzávéve $r$ osztályú gráf maradna, több éllel. Tegyük fel, hogy van két osztály, amelyek mérete $a$ és $b$, ahol $a \ge b + 2$. Tegyünk át egy $x$ csúcsot a nagyobbik osztályból a kisebbikbe (és kössük össze a régi osztálytársaival). Az $x$ elveszíti a $b$ elemű osztály felé futó $b$ élét, és nyer $a - 1$ új élt a régi osztálya felé; a többi él nem változik. Az élszám tehát $(a - 1) - b \ge 1$-gyel nő — ellentmondás. Így bármely két osztály mérete legfeljebb $1$-gyel tér el, vagyis $G = T(n, r)$. (Az ilyen kiegyenlített osztálymérethalmaz egyértelmű: $n$-et $r$ részre osztva a maradéknyi osztály $\lceil n/r \rceil$, a többi $\lfloor n/r \rfloor$ elemű.) $\blacksquare$

Ez az állítás az $r$ osztályú gráfok között adja meg a maximumot. A meglepő az, hogy a $K_{r+1}$-et nem tartalmazó gráfok között is ez a maximum — pedig ezek sokkal többen vannak (például az ötszög háromszögmentes, de nem páros).

> **Tétel (Turán, 1941).** Ha egy $n$ csúcsú egyszerű gráf nem tartalmaz $K_{r+1}$-et, akkor élszáma legfeljebb $e\big(T(n, r)\big)$, és egyenlőség csak a $T(n, r)$ Turán-gráfra áll fenn. Speciálisan
> $$e(G) \le \left(1 - \frac{1}{r}\right)\frac{n^2}{2}.$$

Az $r = 2$ eset a Mantel-tétel. A tételt az előadáson nem bizonyítottuk.

::: kiegeszites
**Kiegészítés — a felső korlát bizonyítása** (indukció $n$ szerint, $r$ rögzített). Ha $n \le r$, akkor $T(n, r) = K_n$, és nincs mit bizonyítani. Legyen $n > r$, és $G$ egy $K_{r+1}$-mentes, $n$ csúcsú gráf **maximális** élszámmal. Ekkor $G$ tartalmaz $K_r$-et: $G$ nem teljes (hiszen $n \ge r + 1$), és bármely új élt hozzávéve keletkezne egy $K_{r+1}$, amelyből az új él egyik végpontját elhagyva egy $G$-beli $K_r$ marad.

Legyen $Q$ egy $K_r$ csúcshalmaza. A $G$ éleit három csoportba osztjuk:

- a $Q$-n belül $\binom{r}{2}$ él van;
- egy $Q$-n kívüli csúcs legfeljebb $r - 1$ $Q$-beli csúccsal szomszédos (különben $K_{r+1}$ volna), így a $Q$ és a többi csúcs között legfeljebb $(n - r)(r - 1)$ él van;
- a $G - Q$ gráf $n - r$ csúcsú és $K_{r+1}$-mentes, így az indukciós feltevés szerint legfeljebb $e\big(T(n - r, r)\big)$ éle van.

Összesen $e(G) \le \binom{r}{2} + (n - r)(r - 1) + e\big(T(n-r, r)\big)$. Ez éppen $e\big(T(n, r)\big)$: ha a $T(n - r, r)$ minden osztályához egy új csúcsot adunk, a $T(n, r)$-et kapjuk, és az új élek: az $r$ új csúcs közötti $\binom{r}{2}$ él, valamint minden régi csúcsból $r - 1$ él a másik osztályba került új csúcsokhoz.

A $(1 - \frac1r)\frac{n^2}{2}$ korlát: a $\sum_i \binom{n_i}{2}$ összeg $\sum_i n_i = n$ mellett akkor a legkisebb, ha minden $n_i = \frac{n}{r}$ (konvexitás), így $e\big(T(n,r)\big) \le \binom{n}{2} - r\binom{n/r}{2} = \frac{n^2}{2}\left(1 - \frac{1}{r}\right)$. $\blacksquare$
:::

A tétel ellenőrzéseképpen: $n = 11$, $r = 4$ esetén $\left(1 - \frac14\right)\frac{121}{2} = 45{,}375$, és valóban $e\big(T(11, 4)\big) = 45$.

## 56. Halmazrendszerek: a Sperner-tétel és az LYM-egyenlőtlenség

Az utolsó szakaszokban a gráfok helyett **halmazrendszerekkel** foglalkozunk. Egy $[n]$ alaphalmaz részhalmazaiból álló $\mathcal{F}$ családot **halmazrendszernek** nevezünk. (Ha minden tag kételemű, ez éppen egy gráf élhalmaza — a halmazrendszer a gráf általánosítása.) Az extremális kérdés itt: legfeljebb hány tagja lehet egy halmazrendszernek, ha a tagok bizonyos tiltott viszonyban nem állhatnak egymással?

> **Definíció (Sperner-rendszer).** Az $\mathcal{F}$ halmazrendszer **Sperner-rendszer** (antilánc), ha egyik tagja sem része egy másiknak: bármely két különböző $A, B \in \mathcal{F}$ esetén $A \not\subseteq B$.

*Példa.* Egy $k$ elemű halmaz nem lehet része egy másik $k$ eleműnek, ezért az $[n]$ **összes $k$ elemű részhalmaza** Sperner-rendszert alkot; ennek $\binom{n}{k}$ tagja van. Ez $k = \lfloor n/2 \rfloor$ esetén a legnagyobb: a Pascal-háromszög sorai közepén állnak a legnagyobb számok.

> **Tétel (Sperner, 1928).** Ha $\mathcal{F}$ az $[n]$ részhalmazaiból álló Sperner-rendszer, akkor
> $$|\mathcal{F}| \le \binom{n}{\lfloor n/2 \rfloor}.$$

A tétel tehát azt mondja, hogy a fenti „középső szint” a lehető legjobb. Például

- **páros, $2m$ elemű** alaphalmaz esetén a maximális méretű Sperner-rendszer az összes $m$ elemű részhalmaz családja, $\binom{2m}{m}$ taggal;
- **páratlan, $2m + 1$ elemű** alaphalmaz esetén az összes $m$ elemű, vagy az összes $m + 1$ elemű részhalmaz családja, $\binom{2m+1}{m} = \binom{2m+1}{m+1}$ taggal.

(Ismert, hogy más maximális méretű Sperner-rendszer nincs; ezt nem bizonyítjuk.)

A tételt egy erősebb egyenlőtlenségből vezetjük le, amely a különböző méretű tagokat „súlyozva” számolja.

> **Tétel (LYM-egyenlőtlenség; Lubell, Yamamoto, Meshalkin).** Ha $\mathcal{F}$ az $[n]$ részhalmazaiból álló Sperner-rendszer, akkor
> $$\sum_{A \in \mathcal{F}} \frac{1}{\binom{n}{|A|}} \le 1.$$

*Bizonyítás (kettős leszámlálás).* Az $[n]$ elemeinek egy $\pi = (\pi_1, \pi_2, \dots, \pi_n)$ permutációjának **kezdőszeletei** az
$$\emptyset \subset \{\pi_1\} \subset \{\pi_1, \pi_2\} \subset \dots \subset \{\pi_1, \dots, \pi_n\} = [n]$$
halmazok. Számoljuk meg azokat a $(\pi, A)$ párokat, ahol $\pi$ permutáció, $A \in \mathcal{F}$, és $A$ a $\pi$ egy kezdőszelete.

- *Permutációnként:* egy $\pi$ kezdőszeletei közül bármely kettő közül az egyik része a másiknak, így $\mathcal{F}$-ből **legfeljebb egy** lehet köztük. A párok száma tehát legfeljebb $n!$.
- *Halmazonként:* egy $|A| = k$ elemű halmaz pontosan azoknak a permutációknak kezdőszelete, amelyek először $A$ elemeit sorolják fel valamilyen sorrendben ($k!$ lehetőség), aztán a többit ($(n-k)!$ lehetőség). A párok száma tehát $\sum_{A \in \mathcal{F}} |A|!\,(n - |A|)!$.

Így $\sum_{A \in \mathcal{F}} |A|!\,(n - |A|)! \le n!$, és $n!$-sal osztva éppen az állítást kapjuk. $\blacksquare$

*A Sperner-tétel bizonyítása az LYM-ből.* Minden $k$-ra $\binom{n}{k} \le \binom{n}{\lfloor n/2 \rfloor}$, ezért
$$\frac{|\mathcal{F}|}{\binom{n}{\lfloor n/2 \rfloor}} = \sum_{A \in \mathcal{F}} \frac{1}{\binom{n}{\lfloor n/2 \rfloor}} \le \sum_{A \in \mathcal{F}} \frac{1}{\binom{n}{|A|}} \le 1. \ \blacksquare$$

Az LYM-egyenlőtlenség ennél többet is mond: ha egy Sperner-rendszerben vannak „szélső” (nagyon kicsi vagy nagyon nagy) tagok, azok a kis $\binom{n}{|A|}$ nevező miatt sokkal többet „fogyasztanak” a rendelkezésre álló $1$-ből, mint a középsők.

## 57. A Sperner-tétel második bizonyítása: láncok és párosítások

Az előző bizonyításban a permutációk kezdőszeletei **láncot** alkottak.

> **Definíció.** Egy $A_1 \subset A_2 \subset \dots \subset A_t$ halmazsorozatot **láncnak** nevezünk.

A kulcsmegfigyelés: **egy Sperner-rendszernek egy lánccal legfeljebb egy közös tagja lehet**, hiszen a lánc bármely két tagja közül az egyik része a másiknak. Ha tehát az $[n]$ összes részhalmazát fel tudjuk osztani $L$ darab diszjunkt láncra, akkor minden Sperner-rendszernek legfeljebb $L$ tagja van. A Sperner-tételhez elég tehát a következő.

> **Tétel.** Az $[n]$ összes részhalmaza felosztható $\binom{n}{\lfloor n/2 \rfloor}$ darab diszjunkt láncra.

*Bizonyítás (a Hall-tétellel).* Jelölje $\mathcal{L}_k$ a $k$ elemű részhalmazok családját (a $k$-adik **szintet**), és legyen $m = \lfloor n/2 \rfloor$. Tekintsük azt a páros gráfot, amelynek két osztálya $\mathcal{L}_k$ és $\mathcal{L}_{k+1}$, és egy $A \in \mathcal{L}_k$ és $B \in \mathcal{L}_{k+1}$ akkor szomszédos, ha $A \subset B$.

*Ha $k < m$, akkor van $\mathcal{L}_k$-t fedő párosítás.* Egy $k$ elemű halmaznak $n - k$ darab $(k+1)$ elemű bővítése van, egy $(k+1)$ elemű halmaznak $k + 1$ darab $k$ elemű része. Ha $\mathcal{X} \subseteq \mathcal{L}_k$, akkor az $\mathcal{X}$-ből induló élek száma $|\mathcal{X}|(n - k)$, és ezek mind $N(\mathcal{X})$-be futnak, amelynek minden eleme legfeljebb $k + 1$ élt fogad. Így
$$|\mathcal{X}|(n - k) \le |N(\mathcal{X})|(k + 1), \qquad |N(\mathcal{X})| \ge \frac{n - k}{k + 1}|\mathcal{X}| \ge |\mathcal{X}|,$$
mert $k \le m - 1$ miatt $k + 1 \le n - k$. A Hall-feltétel teljesül, tehát a Hall-tétel szerint van $\mathcal{L}_k$-t fedő párosítás. (Ugyanez a gondolatmenet, mint az $r$-reguláris páros gráfoknál a 47. szakaszban.)

*Ha $k > m$, akkor van $\mathcal{L}_k$-t fedő párosítás $\mathcal{L}_{k-1}$-be.* Ez komplementerképzéssel ($A \mapsto [n] \setminus A$) a $k' = n - k$-adik és $(k'+1)$-edik szint közötti, $\mathcal{L}_{k'}$-t fedő párosításra vezethető vissza. Mivel $k \ge m + 1$, teljesül, hogy $k' = n - k \le \lceil n/2 \rceil - 1 \le \frac{n-1}{2}$, így $k' + 1 \le n - k'$, és a fenti számolás erre is működik.

Vegyük ezeknek a párosításoknak az unióját: minden $k < m$-re egy $\mathcal{L}_k \to \mathcal{L}_{k+1}$, minden $k > m$-re egy $\mathcal{L}_k \to \mathcal{L}_{k-1}$ párosítást. A kapott gráfban minden él két szomszédos szint között fut, és minden halmaznak **legfeljebb egy** szomszédja van a felette és legfeljebb egy az alatta levő szinten. A komponensek tehát a szinteken monoton haladó utak, vagyis **láncok**. Minden komponens pontosan egy $\mathcal{L}_m$-beli halmazt tartalmaz: egy $m$ alatti halmazból mindig van lépés felfelé, egy $m$ feletti halmazból mindig van lépés lefelé, így minden komponens eléri az $m$-edik szintet, egy monoton lánc pedig csak egyszer. A láncok száma tehát $|\mathcal{L}_m| = \binom{n}{m}$. $\blacksquare$

*Példa ($n = 3$).* Az $\emptyset \to \{1\}$ párosítás, a $\{1,2\} \to \{1\}$, $\{2,3\} \to \{2\}$, $\{1,3\} \to \{3\}$ párosítás és a $\{1,2,3\} \to \{1,2\}$ párosítás a következő $3 = \binom{3}{1}$ láncot adja:
$$\emptyset \subset \{1\} \subset \{1,2\} \subset \{1,2,3\}, \qquad \{2\} \subset \{2,3\}, \qquad \{3\} \subset \{1,3\}.$$

## 58. Metsző halmazrendszerek: az Erdős–Ko–Rado-tétel

A Sperner-rendszereknél a tiltott viszony a tartalmazás volt. Most egy másik természetes megszorítást vizsgálunk: a tagok közül semelyik kettő ne legyen **diszjunkt**. Ha például egy bizottságrendszerben bármely két bizottságnak kell legyen közös tagja (hogy információt cserélhessenek), legfeljebb hány bizottság lehet?

> **Definíció.** Az $\mathcal{F}$ halmazrendszer **metsző**, ha bármely két tagjának van közös eleme: $A \cap B \ne \emptyset$ minden $A, B \in \mathcal{F}$-re.

Ha a tagok mérete tetszőleges, a kérdés könnyű. Az $[n]$ részhalmazai $2^{n-1}$ darab $\{A, [n] \setminus A\}$ komplementerpárba rendezhetők, és egy metsző rendszer minden párból legfeljebb egy halmazt tartalmazhat (a két halmaz diszjunkt). Tehát $|\mathcal{F}| \le 2^{n-1}$, és ezt például az $1$-et tartalmazó összes részhalmaz el is éri.

Érdekesebb a kérdés, ha minden tag **ugyanakkora**, $k$ elemű. Ha $k > n/2$, akkor bármely két $k$ elemű halmaz metszi egymást, így az összes, $\binom{n}{k}$ darab $k$ elemű halmaz metsző rendszert alkot. Ha $k \le n/2$, egy természetes metsző rendszer a **csillag**: egy rögzített elemet tartalmazó összes $k$ elemű halmaz. Ennek $\binom{n-1}{k-1}$ tagja van.

> **Tétel (Erdős–Ko–Rado, 1961).** Ha $k \le n/2$, és $\mathcal{F}$ az $[n]$ halmaz $k$ elemű részhalmazaiból álló metsző rendszer, akkor
> $$|\mathcal{F}| \le \binom{n-1}{k-1}.$$

*Bizonyítás (Katona Gyula ciklikus módszere).* Helyezzük el az $[n]$ elemeit egy kör mentén valamilyen sorrendben; az ilyen **ciklikus sorrendek** száma $(n-1)!$. Egy ciklikus sorrendben **ívnek** nevezünk egy $k$ egymást követő elemből álló halmazt; ív pontosan $n$ darab van.

*Lemma.* Egy rögzített ciklikus sorrendben legfeljebb $k$ ív tartozhat $\mathcal{F}$-hez.

Ha egy ív sincs $\mathcal{F}$-ben, kész vagyunk. Különben legyen $I \in \mathcal{F}$ egy ív, elemei a körön az $1., 2., \dots, k.$ helyen. Minden más $\mathcal{F}$-beli ív metszi $I$-t, tehát vagy a $2., \dots, k.$ helyek valamelyikén kezdődik, vagy az $1., \dots, k - 1.$ helyek valamelyikén végződik. Minden $i = 1, \dots, k - 1$-re tekintsük azt az ívet, amely az $i$-edik helyen **végződik**, és azt, amely az $(i+1)$-edik helyen **kezdődik**. Ez a kettő együtt $2k \le n$ egymást követő helyet fed le, tehát **diszjunkt**, így közülük legfeljebb egy lehet $\mathcal{F}$-ben. Az $I$-n kívül minden $I$-t metsző ív ilyen párok valamelyikébe tartozik, így $\mathcal{F}$-ben legfeljebb $1 + (k - 1) = k$ ív van. $\square$

*A kettős leszámlálás.* Számoljuk meg azokat a $(\sigma, A)$ párokat, ahol $\sigma$ ciklikus sorrend és $A \in \mathcal{F}$ egy íve.

- A lemma szerint ez legfeljebb $k \cdot (n-1)!$.
- Egy rögzített $k$ elemű $A$ halmaz pontosan $k!\,(n-k)!$ ciklikus sorrendben ív: $A$ elemeit egy blokkba rendezzük ($k!$-féleképpen), majd a blokkot és a maradék $n - k$ elemet körbe rendezzük ($(n - k)!$-féleképpen).

Tehát $|\mathcal{F}| \cdot k!\,(n-k)! \le k\,(n-1)!$, ahonnan
$$|\mathcal{F}| \le \frac{k\,(n-1)!}{k!\,(n-k)!} = \frac{(n-1)!}{(k-1)!\,(n-k)!} = \binom{n-1}{k-1}. \ \blacksquare$$

A $k \le n/2$ feltétel a lemmában kellett: ott használtuk, hogy két ív, amely együtt $2k$ helyet fed le, diszjunkt. *Példa:* $n = 4$, $k = 2$ esetén a korlát $\binom{3}{1} = 3$; ezt a $\{12, 13, 14\}$ csillag, de a $\{12, 13, 23\}$ „háromszög” is eléri. ($k < n/2$ esetén a csillagok az egyetlen maximális rendszerek; ezt nem bizonyítjuk.)

## 59. Lineáris algebrai bizonyítások

A 11. szakaszban már láttuk, hogy a lineáris algebra a kombinatorikában is hasznos: a rekurzió megoldásai alteret alkottak, és a dimenzió megmondta, hány szabad paraméter van. Most egy másik, nagyon erős alkalmazást mutatunk be: a **dimenzióérvet**.

**A módszer.** Ha egy halmazrendszer minden tagjához hozzá tudunk rendelni egy vektort egy $n$ dimenziós vektortérben úgy, hogy ezek a vektorok **lineárisan függetlenek** legyenek, akkor a rendszernek **legfeljebb $n$ tagja** van — hiszen egy $n$ dimenziós térben legfeljebb $n$ lineárisan független vektor van.

Egy $A \subseteq [n]$ halmaz **karakterisztikus vektora** az a $v_A \in \{0,1\}^n$ vektor, amelynek $i$-edik koordinátája $1$, ha $i \in A$, és $0$ különben (ez a 2. szakasz $0$–$1$ sorozata). A skaláris szorzat kombinatorikai jelentése:
$$v_A \cdot v_B = \sum_{i=1}^{n} (v_A)_i (v_B)_i = |A \cap B|.$$

> **Tétel („páratlan város”).** Egy városban $n$ lakos klubokat alapít, a következő szabályokkal: minden klubnak **páratlan** sok tagja van, és bármely két különböző klubnak **páros** sok közös tagja. Ekkor legfeljebb $n$ klub lehet.

*Bizonyítás.* Dolgozzunk a kételemű $\mathbb{Z}_2 = \{0, 1\}$ test fölött (modulo $2$ számolunk). Legyenek a klubok $A_1, \dots, A_m \subseteq [n]$, karakterisztikus vektoraik $v_1, \dots, v_m \in \mathbb{Z}_2^n$. A feltételek szerint modulo $2$
$$v_i \cdot v_i = |A_i| \equiv 1, \qquad v_i \cdot v_j = |A_i \cap A_j| \equiv 0 \quad (i \ne j).$$
Tegyük fel, hogy $\lambda_1v_1 + \dots + \lambda_mv_m = 0$ valamely $\lambda_i \in \mathbb{Z}_2$ együtthatókkal. Szorozzuk meg skalárisan $v_j$-vel: a bal oldalon csak a $j$-edik tag marad, $\lambda_j \cdot 1 = 0$, tehát $\lambda_j = 0$. Ez minden $j$-re igaz, így a vektorok lineárisan függetlenek a $\mathbb{Z}_2^n$ $n$ dimenziós vektortérben, és ezért $m \le n$. $\blacksquare$

A korlát éles: az $n$ darab egyelemű klub megfelel a szabályoknak. A tétel tisztán kombinatorikus megfogalmazású, mégsem ismert rá egyszerű, lineáris algebra nélküli bizonyítás. Hogy a paritási feltétel lényeges, mutatja a „páros város”: ha minden klub mérete **páros** és minden metszet páros, akkor akár $2^{\lfloor n/2 \rfloor}$ klub is lehet (osszuk a lakosokat párokba, és minden klub párok uniója legyen).

> **Tétel (Fisher-egyenlőtlenség, általánosított alak).** Legyen $n \ge 1$, $\lambda \ge 1$, és $A_1, \dots, A_m \subseteq [n]$ különböző halmazok, amelyek közül bármely kettőnek **pontosan $\lambda$** közös eleme van. Ekkor $m \le n$.

*Bizonyítás.* $m = 1$ esetén $1 \le n$ triviális. Ha $m \ge 2$, akkor a valós számok fölött dolgozunk, a $v_i$ karakterisztikus vektorokkal. Tegyük fel, hogy $\sum_i c_iv_i = 0$. Ennek önmagával vett skaláris szorzata
$$0 = \Big|\sum_i c_iv_i\Big|^2 = \sum_i c_i^2|A_i| + \sum_{i \ne j} c_ic_j\lambda = \lambda\Big(\sum_i c_i\Big)^2 + \sum_i c_i^2\big(|A_i| - \lambda\big).$$
Minden $|A_i| \ge \lambda$ (hiszen $A_i$-nek egy másik halmazzal van egy $\lambda$ elemű metszete), és **legfeljebb egy** $i$-re lehet $|A_i| = \lambda$: ha két ilyen volna, mindkettő a $\lambda$ elemű közös részükkel egyezne, tehát egyenlők volnának. Így az összeg minden tagja nemnegatív, tehát mind $0$: $\sum_i c_i = 0$, és $c_i = 0$ minden olyan $i$-re, amelyre $|A_i| > \lambda$. Ha van egy $i_0$ index, amelyre $|A_{i_0}| = \lambda$, akkor a többi $c_i$ nulla volta miatt $c_{i_0} = \sum_i c_i = 0$. Tehát minden $c_i = 0$: a vektorok lineárisan függetlenek $\mathbb{R}^n$-ben, és $m \le n$. $\blacksquare$

A két bizonyítás közös gondolata: a kombinatorikus feltételek (méretek, metszetek) a **skaláris szorzatokról** szólnak, a skaláris szorzatokból pedig a lineáris függetlenség kiolvasható.

## A IV. rész összefoglalása

- **Többszörös összefüggőség:** $G$ $k$-szorosan pontösszefüggő, ha legalább $k+1$ csúcsú, és legfeljebb $k - 1$ csúcs elhagyása után összefüggő marad; $k$-szorosan élösszefüggő, ha legfeljebb $k - 1$ él elhagyása után összefüggő marad. $\kappa(G)$ és $\kappa'(G)$ a legnagyobb ilyen $k$ (nem teljes gráfra: a legkisebb elvágó csúcs-, illetve élhalmaz mérete). **Whitney:** $\kappa \le \kappa' \le \delta$; tehát $k$-szoros pontösszefüggőségből $k$-szoros élösszefüggőség következik, fordítva nem (két $K_6$ egy közös csúccsal: $\kappa = 1$, $\kappa' = 5$). Páros fokú gráfban $\kappa'$ páros.
- **Menger-tételek:** két csúcs közötti éldiszjunkt utak maximális száma = az elválasztó élhalmazok minimális mérete; nem szomszédos csúcsok közötti pontdiszjunkt utak maximális száma = az elválasztó csúcshalmazok minimális mérete. Ebből: $k$-szorosan él-/pontösszefüggő $\iff$ bármely két csúcs között $k$ él-/pontdiszjunkt út. $n \ge 3$-ra: $2$-szeresen összefüggő $\iff$ bármely két csúcs (bármely két él) közös körön van.
- **Ramsey:** $R(k, l)$ a legkisebb $n$, amelyre a $K_n$ bármely kétszínezésében van piros $K_k$ vagy kék $K_l$. $R(3,3) = 6$, $R(3,4) = 9$ ($K_8$ színezése, ill. $18 \le 2 R(3,4)$), $R(3,6) = 18$ (Kéry Gerzson), $R(4,4) = 18$ (alsó korlát: $17$-csúcsú Paley-gráf). Felső becslés: $R(k,l) \le R(k-1,l) + R(k,l-1) \le \binom{k+l-2}{k-1}$. Erdős alsó becslése: $R(k, k) > 2^{\frac{k-1}{2}}$, összességében $(\sqrt{2})^k < R(k, k) < 4^k$. Aszimmetrikus eset: $R(3, t) < t^2$ (Ajtai–Komlós–Szemerédi és Kim: $\Theta(t^2 / \log t)$), $R(4, t) < t^3$ (Mattheus–Verstraete: $\Omega(t^3 / \log^4 t)$), $R(s, t) \lesssim t^{s-1}$ ($s \ge 5$: Bradač). Végtelen Ramsey-tétel ($K_\infty$, Komjáth Péter) és gráf-Ramsey ($F \to (H, H)$). Egy konkrét színezés csak alsó becslést ad.
- **Többszínű Ramsey:** $R(k_1,\dots,k_s)$ létezése színösszevonással: $R(k_1, k_2, \dots, k_s) \le R\big(R(k_1, k_2), k_3, \dots, k_s\big)$. $R(3,3,3) = 17$; $R_t \le t(R_{t-1} - 1) + 2 = t R_{t-1} - t + 2$, $R_t \le 1 + \lfloor e \cdot t! \rfloor$ (az előadáson biz. nélkül). Általános felső becslés: $R(k_1, \dots, k_s) \le \sum_i R(\dots, k_i - 1, \dots) - s + 2$. **Schur:** $[n]$ bármely $t$-színezésében van egyszínű $x + y = z$, ha $n \ge R_t - 1$.
- **Mantel:** háromszögmentes gráfnak legfeljebb $\lfloor n^2/4 \rfloor$ éle van, egyenlőség csak $K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$-re. $C_4$-mentes gráfnak legfeljebb $\frac{n}{4}(1 + \sqrt{4n-3})$ éle van (cseresznyék kettős leszámlálása).
- **Turán:** $T(n, r)$ a kiegyenlített teljes $r$ osztályú gráf, $e(T(n,r)) = \binom{n}{2} - \sum_i \binom{n_i}{2} \le (1 - \frac1r)\frac{n^2}{2}$; az $r$ osztályú gráfok között ennek a legtöbb az éle. Turán tétele: $K_{r+1}$-mentes $n$ csúcsú gráfnak legfeljebb $e(T(n,r))$ éle van. $e(T(10,5)) = 40$, $e(T(11,4)) = 45$.
- **Sperner:** Sperner-rendszer (egyik tag sem része a másiknak) legfeljebb $\binom{n}{\lfloor n/2 \rfloor}$ tagú; LYM: $\sum_{A \in \mathcal{F}} 1/\binom{n}{|A|} \le 1$ (bizonyítás: permutációk kezdőszeletei). Második bizonyítás: a részhalmazok $\binom{n}{\lfloor n/2 \rfloor}$ láncra bonthatók (Hall-tétel a szomszédos szintek között).
- **Erdős–Ko–Rado:** $k \le n/2$ esetén egy $k$ elemű halmazokból álló metsző rendszer legfeljebb $\binom{n-1}{k-1}$ tagú (Katona ciklikus bizonyítása); éles a csillagra. Tetszőleges méretű tagokra a korlát $2^{n-1}$.
- **Lineáris algebrai módszer:** független vektorok száma legfeljebb a dimenzió. Páratlan város: páratlan méretű klubok páros metszetekkel — legfeljebb $n$ klub ($\mathbb{Z}_2$ fölött). Fisher: ha bármely két halmaz metszete pontosan $\lambda \ge 1$ elemű, legfeljebb $n$ halmaz van.
