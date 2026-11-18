# IV. RÉSZ: ÖSSZEFÜGGŐSÉG, EXTREMÁLIS GRÁFELMÉLET ÉS HALMAZRENDSZEREK

Az eddigi kérdések többsége **létezési** kérdés volt: van-e a gráfban Euler-körséta, Hamilton-kör, teljes párosítás? Ebben a részben **mennyiségi** kérdéseket teszünk fel. Mennyire „erősen” összefüggő egy gráf: hány csúcs vagy él kiesését bírja ki? Mekkorának kell lennie egy gráfnak ahhoz, hogy biztosan legyen benne egy adott alakzat (Ramsey), és legfeljebb hány éle lehet, ha nincs benne (Turán)? Végül egy alaphalmaz részhalmazaiból álló családokat vizsgálunk: legfeljebb hány tagjuk lehet, ha a tagok bizonyos módon viszonyulnak egymáshoz (Sperner, Erdős–Ko–Rado)? Ezek az **extremális kombinatorika** kérdései. A bizonyításokban a korábbi eszközök — skatulyaelv, kettős leszámlálás, indukció, a Hall-tétel — mind visszatérnek, a végén pedig egy új eszköz, a lineáris algebra is megjelenik.

## 50. Többszörös összefüggőség

Egy számítógép-hálózatot vagy úthálózatot akkor nevezünk megbízhatónak, ha néhány gép (csúcs) vagy kábel (él) kiesése után is összefüggő marad. Egy fa például nagyon sérülékeny: bármely élét elhagyva szétesik (24. szakasz), és — ha nem egyetlen élből áll — bármely nem levél csúcsát elhagyva is. Egy kör már kibírja egy tetszőleges él vagy csúcs kiesését, de kettőét már nem feltétlenül. Ezt a különbséget mérjük meg.

Ha $X \subseteq V(G)$, akkor $G - X$ a $G$-ből az $X$ csúcsainak (és a rájuk illeszkedő éleknek) a törlésével kapott gráf; ha $F \subseteq E(G)$, akkor $G - F$ az $F$ éleinek törlésével kapott gráf.

> **Definíció (többszörös pontösszefüggőség).** Legyen $k \ge 1$. A $G$ gráf **$k$-szorosan (pont)összefüggő**, ha legalább $k + 1$ csúcsa van, és bárhogyan hagyunk el belőle **legfeljebb $k - 1$ csúcsot**, összefüggő marad.
>
> A $G$ gráf **(pont)összefüggőségi száma**, $\kappa(G)$, a legnagyobb olyan $k$, amelyre $G$ $k$-szorosan összefüggő (ha $G$ nem összefüggő, vagy csak egy csúcsa van, akkor $\kappa(G) = 0$).

> **Definíció (többszörös élösszefüggőség).** A $G$ gráf **$k$-szorosan élösszefüggő**, ha legalább $2$ csúcsa van, és bárhogyan hagyunk el belőle **legfeljebb $k - 1$ élt**, összefüggő marad.
>
> A $G$ gráf **élösszefüggőségi száma**, $\kappa'(G)$ (vagy $\lambda(G)$), a legnagyobb olyan $k$, amelyre $G$ $k$-szorosan élösszefüggő (nem összefüggő gráfra $\kappa'(G) = 0$).

**Mi a különbség a két fogalom között?** A „$k$-szorosan összefüggő” egy **tulajdonság**, amely vagy teljesül, vagy nem; a $\kappa$ egy **szám**. A kettő kapcsolata: $G$ pontosan akkor $k$-szorosan összefüggő, ha $\kappa(G) \ge k$. Egy $3$-szorosan összefüggő gráf tehát $2$-szeresen és $1$-szeresen is összefüggő (az $1$-szeres összefüggőség a közönséges összefüggőség). Ugyanez igaz az élösszefüggőségre.

A $k + 1$ csúcsra vonatkozó kikötés a teljes gráfok miatt kell: a $K_n$-ből akárhány csúcsot elhagyva teljes gráf marad, tehát sosem esik szét. A definíció szerint $\kappa(K_n) = n - 1$. Minden **nem teljes** gráfban viszont van két nem szomszédos csúcs, és a többi csúcsot elhagyva a gráf szétesik; ilyenkor
$$\kappa(G) = \min\{\, |X| : X \subseteq V(G),\ G - X \text{ nem összefüggő} \,\},$$
vagyis a legkisebb **elvágó csúcshalmaz** mérete. Hasonlóan, ha $G$-nek legalább $2$ csúcsa van, $\kappa'(G)$ a legkisebb **elvágó élhalmaz** mérete. Egy olyan csúcsot, amelynek elhagyásával a gráf szétesik, **elvágó csúcsnak**, egy olyan élt, amelynek elhagyásával szétesik, **hídnak** nevezünk. Így egy legalább $3$ csúcsú összefüggő gráf pontosan akkor $2$-szeresen összefüggő, ha nincs elvágó csúcsa, és pontosan akkor $2$-szeresen élösszefüggő, ha nincs hídja.

*Példák.* A táblázat utolsó oszlopában a $\delta$ minimális fokszám (18. szakasz) áll; hamarosan kiderül, miért érdemes mellé írni.

| gráf | $\kappa$ | $\kappa'$ | $\delta$ |
|:--|:-:|:-:|:-:|
| fa ($n \ge 2$) | $1$ | $1$ | $1$ |
| kör, $C_n$ | $2$ | $2$ | $2$ |
| teljes gráf, $K_n$ | $n - 1$ | $n - 1$ | $n - 1$ |
| teljes páros gráf, $K_{a,b}$ ($a \le b$) | $a$ | $a$ | $a$ |
| két háromszög egy közös csúccsal | $1$ | $2$ | $2$ |

Az utolsó sor mutatja, hogy a két szám különbözhet: a közös csúcs elvágó csúcs, híd viszont nincs.

> **Tétel (Whitney).** Minden gráfra
> $$\kappa(G) \le \kappa'(G) \le \delta(G).$$

*Bizonyítás.* **$\kappa' \le \delta$:** ha $v$ egy minimális fokú csúcs, akkor a rá illeszkedő $\delta$ élt elhagyva $v$ izolált lesz, a gráf szétesik (ha $n \ge 2$).

**$\kappa \le \kappa'$:** Ha $G$ teljes gráf, $\kappa = \kappa' = n - 1$. Egyébként legyen $F$ egy legkisebb elvágó élhalmaz, $|F| = \kappa'$, és legyen $S$ a $G - F$ egyik komponensének csúcshalmaza; ekkor $F$ éppen az $S$ és $V \setminus S$ közötti élek halmaza (a minimalitás miatt). Ha $S$ minden csúcsa $V \setminus S$ minden csúcsával szomszédos, akkor $|F| = |S| \cdot |V \setminus S| \ge n - 1 \ge \kappa$. Különben van egy $s \in S$ és egy $t \notin S$ nem szomszédos csúcspár. Válasszunk minden $F$-beli élnek egy végpontját: ha az él $s$-re illeszkedik, a másik végpontját (ez nem $t$, hiszen $st$ nem él), különben az $S$-beli végpontját. A kiválasztott csúcsok $X$ halmazára $|X| \le |F|$, és $s, t \notin X$. Minden $s$-ből $t$-be vezető út valahol átlép $S$-ből $V \setminus S$-be egy $F$-beli élen, és ennek az élnek a kiválasztott végpontja az úton van. Tehát $G - X$-ben $s$ és $t$ között nincs út, vagyis $\kappa \le |X| \le \kappa'$. $\blacksquare$

> **Következmény.** Ha egy gráf $k$-szorosan pontösszefüggő, akkor $k$-szorosan élösszefüggő is.

A megfordítás nem igaz, és a különbség tetszőlegesen nagy lehet. *Példa:* ragasszunk össze két $K_6$-ot egyetlen közös csúcsban. A közös csúcs elvágó csúcs, tehát $\kappa = 1$. Az élösszefüggőség viszont $5$: ha egy élhalmaz törlése után a gráf szétesik, akkor valamelyik $K_6$ csúcsai két nemüres részre ($a$ és $6 - a$ csúcsra) esnek szét (ha egyik sem esne szét, a közös csúcs miatt mindkettő ugyanabba a részbe kerülne), és ehhez a $K_6$-ból legalább $a(6 - a) \ge 5$ élt kellett törölni. A gráf tehát $5$-szörösen élösszefüggő, de még $2$-szeresen sem pontösszefüggő.

::: kiegeszites
**Kiegészítés — egy tanulságos buktató: páros fokú gráfok élvágásai.** Létezik-e olyan egyszerű gráf, amelynek **minden** fokszáma $4$, élösszefüggőségi száma $3$ és pontösszefüggőségi száma $2$? Meglepő módon **nem**. Ha minden fokszám páros, akkor minden $S \subseteq V$ halmazra a kézfogási lemma szerint
$$\sum_{v \in S}\deg(v) = 2\,e(S) + e(S, V \setminus S),$$
ahol $e(S)$ az $S$-en belüli, $e(S, V \setminus S)$ az $S$-ből kifutó élek száma. A bal oldal páros, így $e(S, V \setminus S)$ is páros. Minden elvágó élhalmaz tartalmaz egy ilyen „$S$ és a komplementere közötti” élhalmazt, a legkisebb pedig éppen ilyen, tehát **páros fokú gráfban $\kappa'$ páros**. Egy $4$-reguláris gráfban így $\kappa' \in \{0, 2, 4\}$.

Ha a fokszámokra csak alsó korlátot írunk elő, a kívánt viselkedés már előállítható. Vegyünk két $K_5$-öt, $a_1, \dots, a_5$ és $b_1, \dots, b_5$ csúcsokkal, és kössük össze őket az $a_1b_1$, $a_1b_2$, $a_2b_3$ élekkel. A minimális fokszám $4$. A három összekötő él elvágó élhalmaz, és kisebb nincs (egy $K_5$ kettévágásához legalább $4$ él kell), tehát $\kappa' = 3$. Az $\{a_1, a_2\}$ csúcsok elhagyása szétvágja a gráfot, egyetlen csúcsé nem, tehát $\kappa = 2$.
:::

## 51. Menger tételei

Az összefüggőség eredeti definíciója az utakról szólt: bármely két csúcs között vezet út. Természetes kérdés, hogy a **többszörös** összefüggőség is megfogalmazható-e utakkal: igaz-e, hogy egy $k$-szorosan összefüggő gráfban bármely két csúcs között **$k$ független út** vezet? Menger tételei szerint igen — sőt, ennél pontosabb is igaz.

> **Definíció.** Az $u$ és $v$ csúcsok közötti utak
>
> - **éldiszjunktak**, ha páronként nincs közös élük;
> - **(belsőleg) pontdiszjunktak**, ha páronként nincs közös csúcsuk az $u$ és $v$ végpontokon kívül.
>
> Egy $F \subseteq E(G)$ élhalmaz **elválasztja** $u$-t és $v$-t, ha $G - F$-ben nincs $u$-$v$ út. Egy $X \subseteq V(G) \setminus \{u, v\}$ csúcshalmaz elválasztja $u$-t és $v$-t, ha $G - X$-ben nincs $u$-$v$ út.

Az egyik irány könnyű. Ha van $k$ éldiszjunkt $u$-$v$ út, akkor egy elválasztó élhalmaznak mindegyikből legalább egy élt tartalmaznia kell, és ezek az élek különbözők; tehát **az elválasztó élhalmaz legalább $k$ elemű**. Ugyanígy $k$ pontdiszjunkt út esetén minden elválasztó csúcshalmaz legalább $k$ elemű. Menger tétele szerint ez az egyszerű korlát mindig éles.

> **Tétel (Menger, élváltozat).** Ha $u \ne v$ a $G$ gráf két csúcsa, akkor az $u$ és $v$ közötti **páronként éldiszjunkt utak maximális száma** egyenlő az $u$-t és $v$-t elválasztó élhalmazok **minimális elemszámával**.

> **Tétel (Menger, pontváltozat).** Ha $u$ és $v$ a $G$ gráf két különböző, **nem szomszédos** csúcsa, akkor az $u$ és $v$ közötti **páronként belsőleg pontdiszjunkt utak maximális száma** egyenlő az $u$-t és $v$-t elválasztó csúcshalmazok **minimális elemszámával**.

(A pontváltozatban a nem szomszédosság azért kell, mert szomszédos csúcsokat semmilyen csúcshalmaz nem választ el.) A tételeket nem bizonyítjuk. Érdemes azonban észrevenni, hogy a Kőnig-tétel (48. szakasz) a pontváltozat speciális esete: ha egy $G(A, B)$ páros gráfhoz hozzáveszünk egy $u$ csúcsot, amelyet $A$ összes csúcsával, és egy $v$ csúcsot, amelyet $B$ összes csúcsával összekötünk, akkor a pontdiszjunkt $u$-$v$ utak éppen a párosítások éleinek, az elválasztó csúcshalmazok éppen a lefogó csúcshalmazoknak felelnek meg.

A Menger-tételek „lokális” állítások: egy rögzített csúcspárról szólnak. Belőlük kapjuk a többszörös összefüggőség útjellemzését.

> **Tétel.**
>
> 1. Egy legalább $2$ csúcsú $G$ gráf pontosan akkor $k$-szorosan **élösszefüggő**, ha bármely két csúcsa között van $k$ páronként **éldiszjunkt** út.
> 2. (Whitney) Egy legalább $k + 1$ csúcsú $G$ gráf pontosan akkor $k$-szorosan **pontösszefüggő**, ha bármely két csúcsa között van $k$ páronként belsőleg **pontdiszjunkt** út.

*Bizonyítás (az 1. állításé, a Menger-tétel felhasználásával).* Ha bármely két csúcs között van $k$ éldiszjunkt út, és elhagyunk legfeljebb $k - 1$ élt, akkor bármely két csúcs között legalább egy út sértetlen marad: a gráf összefüggő. Megfordítva, ha $G$ $k$-szorosan élösszefüggő, akkor $k$-nál kevesebb él elhagyásával semmilyen $u, v$ pár nem választható el, tehát az elválasztó élhalmazok legalább $k$ eleműek, és a Menger-tétel szerint van $k$ éldiszjunkt $u$-$v$ út. $\blacksquare$

A 2. állítás nem szomszédos csúcspárokra ugyanígy következik a pontváltozatból; a szomszédos párok esete egy további ötletet igényel, ezt nem részletezzük.

### Kétszeres összefüggőség és körök

A $k = 2$ eset különösen szemléletes, mert két pontdiszjunkt $u$-$v$ út együtt egy **kört** alkot.

> **Tétel.** Legyen $G$ legalább $3$ csúcsú gráf. A következők ekvivalensek:
>
> 1. $G$ $2$-szeresen (pont)összefüggő;
> 2. $G$ bármely két csúcsán átmegy egy közös kör;
> 3. $G$-ben nincs izolált csúcs, és bármely két élén átmegy egy közös kör.

*Bizonyítás.* **$1 \Rightarrow 2$:** Whitney tétele szerint bármely két csúcs között van két belsőleg pontdiszjunkt út, ezek együtt kört alkotnak.

**$2 \Rightarrow 1$:** A gráf összefüggő (bármely két csúcs egy körön, tehát egy úton van). Hagyjunk el egy $w$ csúcsot, és legyen $u, v$ két másik csúcs. A közös körük két, belsőleg diszjunkt $u$-$v$ útra bomlik, és $w$ ezek közül legfeljebb az egyiken van; a másik út $G - w$-ben is megvan. Tehát $G - w$ összefüggő.

**$1 \Rightarrow 3$:** Legyen $e$ és $f$ két él. Osszuk fel mindkettőt egy-egy új csúccsal, $x$-szel és $y$-nal (soros bővítés). A kapott $G'$ gráf is $2$-szeresen összefüggő: ha $x$-et hagyjuk el, $G - e$ marad, amely összefüggő, mert $\kappa' \ge \kappa \ge 2$ miatt $G$-ben nincs híd; ha egy régi $w$ csúcsot, akkor $G - w$ egy felosztását kapjuk, amelyhez $x$ és $y$ legalább egy éllel kapcsolódik. Az $1 \Rightarrow 2$ irány szerint $x$ és $y$ rajta van $G'$ egy közös körén. Ez a kör $x$-en áthaladva az $e$ mindkét felét használja, $y$-on áthaladva az $f$ mindkét felét; a felosztást visszacsinálva egy $G$-beli kört kapunk, amely $e$-n és $f$-en is átmegy.

**$3 \Rightarrow 2$:** Mivel $n \ge 3$ és nincs izolált csúcs, legalább két él van, így a feltétel szerint minden él rajta van egy körön; ezért minden csúcs foka legalább $2$. Két csúcs, $u$ és $v$ esetén válasszunk tehát egy $u$-ra illeszkedő $e$ és egy $v$-re illeszkedő $f \ne e$ élt. Az $e$-n és $f$-en átmenő kör $u$-n és $v$-n is átmegy. $\blacksquare$

Hasonlóan: egy összefüggő gráf pontosan akkor $2$-szeresen **élösszefüggő**, ha minden éle rajta van egy körön (nincs hídja), és ez pontosan akkor teljesül, ha bármely két csúcsa rajta van egy közös **zárt vonalon** (a két éldiszjunkt út egymás után fűzve zárt vonal, de csúcsok ismétlődhetnek benne).

## 52. Ramsey tétele

> **Feladat.** Igaz-e, hogy bármely $6$ ember között van $3$, akik páronként ismerik egymást, vagy $3$, akik páronként nem ismerik egymást?

Fogalmazzuk át gráfokra: a csúcsok az emberek, és két csúcsot pirossal kötünk össze, ha az illetők ismerik egymást, kékkel, ha nem. Így a $K_6$ teljes gráf éleinek egy **két színnel való színezését** kapjuk, és a kérdés: van-e biztosan **egyszínű háromszög**?

*Igen.* Legyen $v$ egy tetszőleges csúcs. Ebből $5$ él indul, két színnel színezve; a skatulyaelv szerint legalább $3$ egyforma színű, mondjuk piros: $va$, $vb$, $vc$. Ha az $ab$, $bc$, $ca$ élek valamelyike piros, akkor az $v$-vel együtt piros háromszöget alkot. Ha egyik sem piros, akkor $abc$ kék háromszög. $\blacksquare$

$5$ ember viszont nem elég: a $K_5$ éleit színezzük úgy, hogy egy ötszög ($C_5$) élei pirosak, az átlók (egy ötágú csillag élei) kékek. Mindkét színosztály egy-egy ötszög, amelyben nincs háromszög.

\begin{center}
\begin{tikzpicture}[scale=1.0,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  red/.style={draw=black, very thick},
  blue/.style={draw=black!55, thick, dashed}
]
  \foreach \i in {0,1,2,3,4} { \coordinate (p\i) at (90 + 72*\i:1.4); }
  \draw[red] (p0) -- (p1) -- (p2) -- (p3) -- (p4) -- (p0);
  \draw[blue] (p0) -- (p2) -- (p4) -- (p1) -- (p3) -- (p0);
  \foreach \i in {0,1,2,3,4} { \node[pt] at (p\i) {}; }
  \node at (0, -2.0) {\footnotesize A $K_5$ egyszínű háromszög nélküli színezése: piros (folytonos) ötszög, kék (szaggatott) csillag.};
\end{tikzpicture}
\end{center}

A jelenség általános: elég nagy teljes gráf bármely két színnel való színezésében van **nagy** egyszínű teljes részgráf.

> **Tétel (Ramsey, 1930).** Minden $k, l \ge 1$ egészhez van olyan $N$, hogy bármely $N$ csúcsú (egyszerű) gráfban van $k$ csúcsú teljes részgráf ($K_k$) vagy $l$ csúcsú üres részgráf ($l$ független csúcs).
>
> Ekvivalens alak: a $K_N$ éleit akárhogyan színezzük pirosra és kékre, lesz **piros $K_k$** vagy **kék $K_l$**.

(A két alak azonos: a gráf élei a piros élek, a nem élek a kék élek.)

> **Definíció (Ramsey-szám).** Az $R(k, l)$ **Ramsey-szám** a legkisebb olyan $N$, amelyre a $K_N$ éleinek bármely piros–kék színezésében van piros $K_k$ vagy kék $K_l$.

Az $R(k, l) = N$ állítás tehát **két** állítást jelent: (1) a $K_N$ **minden** színezésében van piros $K_k$ vagy kék $K_l$ (ez $R(k,l) \le N$), és (2) a $K_{N-1}$-nek **van** olyan színezése, amelyben egyik sincs (ez $R(k, l) > N - 1$). A fenti feladat éppen azt mutatta meg, hogy
$$R(3, 3) = 6.$$

*Mit jelent az, hogy $R(4, 4) = 18$?* Azt, hogy $18$ ember között mindig van $4$ kölcsönös ismerős vagy $4$ kölcsönösen idegen, de $17$ embernél ez nem biztos: a $K_{17}$ éleinek van olyan színezése, amelyben nincs egyszínű $K_4$.

**Milyen következtetést vonhatunk le egy konkrét színezésből?** Egyetlen színezés csak **alsó becslést** igazolhat: ha a $K_N$ egy színezésében nincs piros $K_k$ és kék $K_l$, akkor $R(k, l) > N$. Felső becsléshez viszont **minden** színezésről kell állítanunk valamit — ezt egy példa soha nem bizonyítja.

**Egyszerű tulajdonságok.**

- $R(k, l) = R(l, k)$: a színeket felcserélve.
- $R(1, l) = 1$: egyetlen csúcs már $K_1$.
- $R(2, l) = l$: a $K_l$ egy színezésében vagy van piros él (ez egy piros $K_2$), vagy minden él kék (ez egy kék $K_l$); a $K_{l-1}$ csupa kék színezésében viszont egyik sincs.

### Felső becslés

> **Tétel.** Minden $k, l \ge 2$ esetén
> $$R(k, l) \le R(k - 1, l) + R(k, l - 1).$$

*Bizonyítás.* Legyen $N = R(k-1, l) + R(k, l-1)$, és tekintsük a $K_N$ egy tetszőleges piros–kék színezését. Rögzítsünk egy $v$ csúcsot; ennek $N - 1$ szomszédja van. Legyen $P$ azoknak a halmaza, amelyekhez piros, és $K$ azoké, amelyekhez kék él vezet $v$-ből. Mivel $|P| + |K| = N - 1 = R(k-1, l) + R(k, l-1) - 1$, a skatulyaelv szerint vagy $|P| \ge R(k-1, l)$, vagy $|K| \ge R(k, l-1)$.

- Ha $|P| \ge R(k-1, l)$, akkor a $P$ csúcsai között van piros $K_{k-1}$ — ehhez $v$-t hozzávéve piros $K_k$-t kapunk —, vagy kék $K_l$. Mindkét esetben készen vagyunk.
- Ha $|K| \ge R(k, l-1)$, akkor a $K$ csúcsai között van piros $K_k$, vagy kék $K_{l-1}$ — ehhez $v$-t hozzávéve kék $K_l$-t kapunk. $\blacksquare$

Ez a tétel Ramsey tételének bizonyítását is adja: $k + l$ szerinti indukcióval minden $R(k, l)$ véges. Sőt explicit korlát is adódik:

> **Következmény.** Minden $k, l \ge 1$ esetén
> $$R(k, l) \le \binom{k + l - 2}{k - 1}.$$
> Speciálisan $R(k, k) \le \binom{2k-2}{k-1} < 4^{k-1}$.

*Bizonyítás.* Indukció $k + l$ szerint. Ha $k = 1$ vagy $l = 1$, akkor $R(k, l) = 1 = \binom{k+l-2}{k-1}$. Különben a tétel és az indukciós feltevés szerint
$$R(k, l) \le \binom{k + l - 3}{k - 2} + \binom{k + l - 3}{k - 1} = \binom{k + l - 2}{k - 1},$$
a Pascal-szabály szerint. Végül $\binom{2k-2}{k-1}$ a $(2k-2)$-edik sor egyik eleme, tehát kisebb a sor összegénél, $2^{2k-2} = 4^{k-1}$-nél. $\blacksquare$

A becslés általában **nem éles**. Például $R(3, 4) \le R(2, 4) + R(3, 3) = 4 + 6 = 10$, a pontos érték azonban $9$.

::: kiegeszites
**Kiegészítés — $R(3, 4) = 9$ (gyakorlati anyag).**

*$R(3, 4) \le 9$.* Tegyük fel indirekt, hogy a $K_9$ egy színezésében nincs piros háromszög és kék $K_4$. Legyen $v$ tetszőleges csúcs.

- Ha $v$-nek legalább $4$ piros szomszédja volna, akkor ezek között nem lehet piros él (az $v$-vel piros háromszöget adna), tehát kék $K_4$-et alkotnának. Így $v$-nek legfeljebb $3$ piros szomszédja van.
- Ha $v$-nek legalább $6$ kék szomszédja volna, akkor ezek között $R(3,3) = 6$ miatt volna piros háromszög vagy kék háromszög, utóbbi $v$-vel kék $K_4$-et adna. Így legfeljebb $5$ kék szomszédja van.

Mivel $v$-nek $8$ szomszédja van, pontosan $3$ piros és $5$ kék. Ez **minden** csúcsra igaz, tehát a piros élek gráfja $3$-reguláris, $9$ csúccsal. A kézfogási lemma szerint azonban a fokszámösszeg, $9 \cdot 3 = 27$, páros kellene legyen — ellentmondás.

(Általában is igaz: ha $R(k-1, l)$ és $R(k, l-1)$ is páros, akkor a felső becslésben szigorú egyenlőtlenség áll.)

*$R(3, 4) > 8$.* A $K_8$ csúcsait számozzuk körbe $0, 1, \dots, 7$-tel, és $i$-t $j$-vel kössük össze **piros** éllel, ha $j - i \equiv \pm 1$ vagy $4 \pmod 8$ (a nyolcszög oldalai és a négy leghosszabb átló), a többi él legyen kék. Piros háromszög nincs (két piros szomszéd különbsége $\pm 2$, $\pm 3$ vagy $0$ — egyik sem piros). Kék $K_4$ sincs, mert az $\{0, \dots, 7\}$ halmaznak csak két olyan $4$ elemű részhalmaza van, amelyben semelyik két elem nem szomszédos a körön: $\{0, 2, 4, 6\}$ és $\{1, 3, 5, 7\}$, és mindkettőben van egy $4$ különbségű, tehát piros pár.
:::

A Ramsey-számok meghatározása rendkívül nehéz. Az ismert értékek: $R(3,3) = 6$, $R(3,4) = 9$, $R(3,5) = 14$, $R(4,4) = 18$; az $R(5,5)$ értékét ma sem ismerjük (csak annyit, hogy $43$ és $46$ közé esik). Erdős Pál egy híres mondása szerint ha egy földönkívüli hatalom az $R(5,5)$ kiszámítását követelné tőlünk, a Föld összes számítógépét és matematikusát rá kellene állítani; ha az $R(6,6)$-ot, inkább a támadásra kellene felkészülni.

## 53. Többszínű Ramsey-tételek és a Schur-tétel

Mi történik, ha nem két, hanem több színnel színezünk?

> **Definíció.** Az $R(k_1, k_2, \dots, k_r)$ **Ramsey-szám** a legkisebb olyan $N$, amelyre a $K_N$ éleinek bármely $r$ színnel való színezésében valamely $i$-re van **$i$-edik színű $K_{k_i}$**. Speciálisan $R(a, b, c)$ a legkisebb $N$, amelyre a $K_N$ bármely piros–kék–zöld színezésében van piros $K_a$, kék $K_b$ vagy zöld $K_c$.

> **Tétel (többszínű Ramsey-tétel).** Az $R(k_1, \dots, k_r)$ szám minden $r \ge 1$ és $k_1, \dots, k_r \ge 1$ esetén véges.

*Bizonyítás (színösszevonás).* Indukció $r$ szerint; $r \le 2$-re már láttuk. Legyen $r \ge 3$, és vonjuk össze az utolsó két színt egyetlen „vegyes” színné. Ha
$$N = R\big(k_1, \dots, k_{r-2}, R(k_{r-1}, k_r)\big),$$
amely az indukciós feltevés szerint véges (ez $r - 1$ színre vonatkozik), akkor a $K_N$ bármely $r$-színezésében vagy valamely $i \le r - 2$-re van $i$-edik színű $K_{k_i}$, vagy van egy $R(k_{r-1}, k_r)$ csúcsú „vegyes” színű teljes részgráf. Ez utóbbi élei két színt viselnek, tehát benne van $(r-1)$-edik színű $K_{k_{r-1}}$ vagy $r$-edik színű $K_{k_r}$. $\blacksquare$

### Csupa háromszög: $R(3, 3, 3) \le 17$

> **Tétel.** $R(3, 3, 3) \le 17$: a $K_{17}$ éleinek bármely háromszínezésében van egyszínű háromszög.

*Bizonyítás.* Egy $v$ csúcsból $16$ él indul. Mivel $16 > 3 \cdot 5$, a skatulyaelv szerint valamelyik színből, mondjuk pirosból, legalább $6$ él indul, a $v$-t $6$ csúccsal köti össze. Ha e $6$ csúcs között van piros él, akkor az $v$-vel piros háromszöget ad. Ha nincs, akkor ez a $6$ csúcs csak két színnel (kékkel és zölddel) van színezve, és $R(3, 3) = 6$ miatt van köztük egyszínű háromszög. $\blacksquare$

Ismert, hogy valójában $R(3, 3, 3) = 17$ (Greenwood és Gleason, 1955): a $K_{16}$ éleinek van olyan háromszínezése, amelyben nincs egyszínű háromszög. *Mit jelent tehát, hogy $R(3,3,3) = 17$?* Hogy $17$ pontú teljes gráf három színnel színezett éleiben mindig van egyszínű háromszög, $16$ pontúéban viszont nem feltétlenül.

A bizonyítás változtatás nélkül megismételhető $r$ színre. Jelölje $R_r = R(3, 3, \dots, 3)$ ($r$ darab hármas) a megfelelő Ramsey-számot; $R_1 = 3$, $R_2 = 6$.

> **Tétel.** Minden $r \ge 2$ esetén $R_r \le r\,(R_{r-1} - 1) + 2$, és ebből
> $$R_r \le \lfloor e \cdot r! \rfloor + 1.$$

*Bizonyítás.* Legyen $N = r(R_{r-1} - 1) + 2$. Egy $v$ csúcsból $N - 1 = r(R_{r-1} - 1) + 1$ él indul, így valamelyik színből legalább $R_{r-1}$. Az ezekkel elért csúcsok között vagy van ilyen színű él (és háromszög $v$-vel), vagy legfeljebb $r - 1$ szín szerepel, és az $R_{r-1}$ definíciója szerint van egyszínű háromszög.

A zárt alakhoz legyen $a_r = R_r - 1$; ekkor $a_r \le r\,a_{r-1} + 1$ és $a_1 = 2$. $r!$-sal osztva $\frac{a_r}{r!} \le \frac{a_{r-1}}{(r-1)!} + \frac{1}{r!}$, és mivel $\frac{a_1}{1!} = 2 = \frac{1}{0!} + \frac{1}{1!}$,
$$\frac{a_r}{r!} \le \sum_{j=0}^{r}\frac{1}{j!} < e.$$
Az $r!\sum_{j=0}^{r}\frac{1}{j!}$ egész szám, és kisebb $e \cdot r!$-nál, tehát legfeljebb $\lfloor e \cdot r! \rfloor$. $\blacksquare$

(Ugyanez a $\sum \frac{1}{j!}$ összeg jelent meg a fixpontmentes permutációknál, a 8. szakaszban.) Ellenőrzés: $\lfloor 2e \rfloor + 1 = 6$, $\lfloor 6e \rfloor + 1 = 17$, és $r = 4$-re a korlát $66$.

### Felső becslések általános többszínű Ramsey-számokra

Két módszert láttunk, és mindkettő általánosan használható:

- **Színösszevonás:** néhány színt egynek tekintünk, például $R(k_1, k_2, k_3) \le R\big(k_1, R(k_2, k_3)\big)$.
- **A háromszöges bizonyítás lemásolása:** egy $v$ csúcs éleit színenként szétválogatva, ugyanúgy, mint két színnél, kapjuk, hogy
$$R(k_1, \dots, k_r) \le \sum_{i=1}^{r} R(k_1, \dots, k_{i-1}, k_i - 1, k_{i+1}, \dots, k_r) - r + 2.$$
Valóban: ha $N$ a jobb oldal, akkor $v$-ből $N - 1 = \sum_i \big(R(\dots, k_i - 1, \dots) - 1\big) + 1$ él indul, így valamelyik $i$-edik színből legalább $R(\dots, k_i - 1, \dots)$; ezek végpontjai között van $j$-edik színű $K_{k_j}$ valamely $j \ne i$-re, vagy $i$-edik színű $K_{k_i - 1}$, amely $v$-vel $K_{k_i}$-t ad. $r = 2$-re ez az előző szakasz tétele.

*Példa.* $R(3, 3, 4)$-re a második módszer — felhasználva, hogy $R(2, b, c) = R(b, c)$ (az első színből egyetlen él már $K_2$) — azt adja, hogy
$$R(3, 3, 4) \le R(2, 3, 4) + R(3, 2, 4) + R(3, 3, 3) - 1 = 9 + 9 + 17 - 1 = 34,$$
míg az első két szín összevonása csak $R(3,3,4) \le R(6, 4) \le \binom{8}{3} = 56$-ot ad.

### Schur tétele

Ramsey tételének egy meglepő számelméleti alkalmazása:

> **Tétel (Schur, 1916).** Minden $r \ge 1$ esetén van olyan $n$, hogy az $\{1, 2, \dots, n\}$ számokat akárhogyan színezzük $r$ színnel, lesz három (nem feltétlenül különböző) **egyszínű** $x, y, z$ szám, amelyre $x + y = z$. Ehhez $n \ge R_r - 1$ elég, így például $n \ge \lfloor e \cdot r! \rfloor$.

*Bizonyítás.* Legyen $n = R_r - 1$, és színezzük az $[n]$ számait $r$ színnel. Tekintsük a $K_{n+1}$ teljes gráfot az $1, 2, \dots, n+1$ csúcsokon, és az $\{i, j\}$ élt színezzük az $|i - j| \in [n]$ szám színére. Mivel $n + 1 = R_r$, van egyszínű háromszög, mondjuk az $i < j < k$ csúcsokon. Legyen
$$x = j - i, \qquad y = k - j, \qquad z = k - i.$$
Ezek a háromszög három élének színét viselik, tehát egyszínűek, és $x + y = z$. $\blacksquare$

*Példa.* Két színre $R_2 - 1 = 5$: az $\{1, \dots, 5\}$ bármely kétszínezésében van egyszínű megoldás. Az $\{1, 2, 3, 4\}$ viszont kiszínezhető jól: az $\{1, 4\}$ legyen piros, a $\{2, 3\}$ kék ($1 + 1 = 2$, $1 + 3 = 4$, $2 + 2 = 4$ mind vegyes színű). Az $5$ tehát a legkisebb jó $n$ két színre.

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

*Ha $k > m$, akkor van $\mathcal{L}_k$-t fedő párosítás $\mathcal{L}_{k-1}$-be.* Ez az előzőből komplementerképzéssel adódik ($A \mapsto [n] \setminus A$ a $k$-adik szintet az $(n-k)$-adikba viszi, és $n - k < n - m$, vagyis $n - k \le \lceil n/2 \rceil - 1$; a fenti számolás erre is működik).

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

Ha egy ív sincs $\mathcal{F}$-ben, kész vagyunk. Különben legyen $I \in \mathcal{F}$ egy ív, elemei a körön az $1., 2., \dots, k.$ helyen. Minden más $\mathcal{F}$-beli ív metszi $I$-t, tehát vagy $I$ belsejében kezdődik, vagy $I$ belsejében végződik. Minden $i = 1, \dots, k - 1$-re tekintsük azt az ívet, amely az $i$-edik helyen **végződik**, és azt, amely az $(i+1)$-edik helyen **kezdődik**. Ez a kettő együtt $2k \le n$ egymást követő helyet fed le, tehát **diszjunkt**, így közülük legfeljebb egy lehet $\mathcal{F}$-ben. Az $I$-n kívül minden $I$-t metsző ív ilyen párok valamelyikébe tartozik, így $\mathcal{F}$-ben legfeljebb $1 + (k - 1) = k$ ív van. $\square$

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

> **Tétel (Fisher-egyenlőtlenség, általánosított alak).** Legyen $\lambda \ge 1$, és $A_1, \dots, A_m \subseteq [n]$ különböző halmazok, amelyek közül bármely kettőnek **pontosan $\lambda$** közös eleme van. Ekkor $m \le n$.

*Bizonyítás.* Most a valós számok fölött dolgozunk, a $v_i$ karakterisztikus vektorokkal. Tegyük fel, hogy $\sum_i c_iv_i = 0$. Ennek önmagával vett skaláris szorzata
$$0 = \Big|\sum_i c_iv_i\Big|^2 = \sum_i c_i^2|A_i| + \sum_{i \ne j} c_ic_j\lambda = \lambda\Big(\sum_i c_i\Big)^2 + \sum_i c_i^2\big(|A_i| - \lambda\big).$$
Minden $|A_i| \ge \lambda$ (hiszen $A_i$ tartalmaz egy $\lambda$ elemű metszetet), és **legfeljebb egy** $i$-re lehet $|A_i| = \lambda$: ha két ilyen volna, mindkettő a $\lambda$ elemű közös részükkel egyezne, tehát egyenlők volnának. Így az összeg minden tagja nemnegatív, tehát mind $0$: $\sum_i c_i = 0$, és $c_i = 0$ minden olyan $i$-re, amelyre $|A_i| > \lambda$. Ha van egy $i_0$ index, amelyre $|A_{i_0}| = \lambda$, akkor a többi $c_i$ nulla volta miatt $c_{i_0} = \sum_i c_i = 0$. Tehát minden $c_i = 0$: a vektorok lineárisan függetlenek $\mathbb{R}^n$-ben, és $m \le n$. $\blacksquare$

A két bizonyítás közös gondolata: a kombinatorikus feltételek (méretek, metszetek) a **skaláris szorzatokról** szólnak, a skaláris szorzatokból pedig a lineáris függetlenség kiolvasható.

## A IV. rész összefoglalása

- **Többszörös összefüggőség:** $G$ $k$-szorosan pontösszefüggő, ha legalább $k+1$ csúcsú, és legfeljebb $k - 1$ csúcs elhagyása után összefüggő marad; $k$-szorosan élösszefüggő, ha legfeljebb $k - 1$ él elhagyása után összefüggő marad. $\kappa(G)$ és $\kappa'(G)$ a legnagyobb ilyen $k$ (nem teljes gráfra: a legkisebb elvágó csúcs-, illetve élhalmaz mérete). **Whitney:** $\kappa \le \kappa' \le \delta$; tehát $k$-szoros pontösszefüggőségből $k$-szoros élösszefüggőség következik, fordítva nem (két $K_6$ egy közös csúccsal: $\kappa = 1$, $\kappa' = 5$). Páros fokú gráfban $\kappa'$ páros.
- **Menger-tételek:** két csúcs közötti éldiszjunkt utak maximális száma = az elválasztó élhalmazok minimális mérete; nem szomszédos csúcsok közötti pontdiszjunkt utak maximális száma = az elválasztó csúcshalmazok minimális mérete. Ebből: $k$-szorosan él-/pontösszefüggő $\iff$ bármely két csúcs között $k$ él-/pontdiszjunkt út. $n \ge 3$-ra: $2$-szeresen összefüggő $\iff$ bármely két csúcs (bármely két él) közös körön van.
- **Ramsey:** $R(k, l)$ a legkisebb $N$, amelyre a $K_N$ bármely kétszínezésében van piros $K_k$ vagy kék $K_l$. $R(3,3) = 6$, $R(3,4) = 9$, $R(4,4) = 18$. $R(k,l) \le R(k-1,l) + R(k,l-1)$, $R(k,l) \le \binom{k+l-2}{k-1}$. Egy konkrét színezés csak alsó becslést ad.
- **Többszínű Ramsey:** $R(3,3,3) = 17$; $R_r \le r(R_{r-1} - 1) + 2$, $R_r \le \lfloor e \cdot r! \rfloor + 1$. Felső becslések: színösszevonás, illetve $R(k_1, \dots, k_r) \le \sum_i R(\dots, k_i - 1, \dots) - r + 2$. **Schur:** $[n]$ bármely $r$-színezésében van egyszínű $x + y = z$, ha $n \ge R_r - 1$.
- **Mantel:** háromszögmentes gráfnak legfeljebb $\lfloor n^2/4 \rfloor$ éle van, egyenlőség csak $K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$-re. $C_4$-mentes gráfnak legfeljebb $\frac{n}{4}(1 + \sqrt{4n-3})$ éle van (cseresznyék kettős leszámlálása).
- **Turán:** $T(n, r)$ a kiegyenlített teljes $r$ osztályú gráf, $e(T(n,r)) = \binom{n}{2} - \sum_i \binom{n_i}{2} \le (1 - \frac1r)\frac{n^2}{2}$; az $r$ osztályú gráfok között ennek a legtöbb az éle. Turán tétele: $K_{r+1}$-mentes $n$ csúcsú gráfnak legfeljebb $e(T(n,r))$ éle van. $e(T(10,5)) = 40$, $e(T(11,4)) = 45$.
- **Sperner:** Sperner-rendszer (egyik tag sem része a másiknak) legfeljebb $\binom{n}{\lfloor n/2 \rfloor}$ tagú; LYM: $\sum_{A \in \mathcal{F}} 1/\binom{n}{|A|} \le 1$ (bizonyítás: permutációk kezdőszeletei). Második bizonyítás: a részhalmazok $\binom{n}{\lfloor n/2 \rfloor}$ láncra bonthatók (Hall-tétel a szomszédos szintek között).
- **Erdős–Ko–Rado:** $k \le n/2$ esetén egy $k$ elemű halmazokból álló metsző rendszer legfeljebb $\binom{n-1}{k-1}$ tagú (Katona ciklikus bizonyítása); éles a csillagra. Tetszőleges méretű tagokra a korlát $2^{n-1}$.
- **Lineáris algebrai módszer:** független vektorok száma legfeljebb a dimenzió. Páratlan város: páratlan méretű klubok páros metszetekkel — legfeljebb $n$ klub ($\mathbb{Z}_2$ fölött). Fisher: ha bármely két halmaz metszete pontosan $\lambda \ge 1$ elemű, legfeljebb $n$ halmaz van.
