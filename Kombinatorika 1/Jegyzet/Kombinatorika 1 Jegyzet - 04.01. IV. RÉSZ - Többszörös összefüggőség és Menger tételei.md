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

**$1 \Rightarrow 3$:** Legyen $e$ és $f$ két él. Osszuk fel mindkettőt egy-egy új csúccsal, $x$-szel és $y$-nal (soros bővítés). A kapott $G'$ gráf is $2$-szeresen összefüggő: ha $x$-et hagyjuk el, $G - e$ egy felosztása marad ($f$-en az $y$ csúccsal), amely összefüggő, mert $\kappa' \ge \kappa \ge 2$ miatt $G$-ben nincs híd; ha egy régi $w$ csúcsot, akkor $G - w$ egy felosztását kapjuk, amelyhez $x$ és $y$ legalább egy éllel kapcsolódik. Az $1 \Rightarrow 2$ irány szerint $x$ és $y$ rajta van $G'$ egy közös körén. Ez a kör $x$-en áthaladva az $e$ mindkét felét használja, $y$-on áthaladva az $f$ mindkét felét; a felosztást visszacsinálva egy $G$-beli kört kapunk, amely $e$-n és $f$-en is átmegy.

**$3 \Rightarrow 2$:** Mivel $n \ge 3$ és nincs izolált csúcs, legalább két él van, így a feltétel szerint minden él rajta van egy körön; ezért minden csúcs foka legalább $2$. Két csúcs, $u$ és $v$ esetén válasszunk tehát egy $u$-ra illeszkedő $e$ és egy $v$-re illeszkedő $f \ne e$ élt. Az $e$-n és $f$-en átmenő kör $u$-n és $v$-n is átmegy. $\blacksquare$

Hasonlóan: egy összefüggő gráf pontosan akkor $2$-szeresen **élösszefüggő**, ha minden éle rajta van egy körön (nincs hídja), és ez pontosan akkor teljesül, ha bármely két csúcsa rajta van egy közös **zárt vonalon** (a két éldiszjunkt út egymás után fűzve zárt vonal, de csúcsok ismétlődhetnek benne).
