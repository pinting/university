## 25. Minimális összsúlyú feszítőfa

> **Feladat.** Adott egy összefüggő $G$ gráf, és minden $e \in E(G)$ élén egy $w(e) \ge 0$ **súly** (például az adott útszakasz megépítésének költsége). Keressünk **minimális összsúlyú feszítőfát**, vagyis olyan $T$ feszítőfát, amelyre a $w(T) = \sum_{e \in E(T)} w(e)$ összsúly a lehető legkisebb!

Gyakorlati példa: néhány várost úgy szeretnénk úthálózattal összekötni, hogy bármelyikből bármelyikbe el lehessen jutni, és az építés a lehető legolcsóbb legyen. A felesleges utak (amelyek kört zárnak be) kidobhatók, tehát az optimális hálózat egy feszítőfa.

Mivel véges sok feszítőfa van, minimális összsúlyú biztosan létezik; a kérdés az, hogyan találjuk meg anélkül, hogy az összeset végignéznénk. Két természetes, **mohó** módszer kínálkozik: egy „optimista” és egy „pesszimista”. (Az optimista módszer **Kruskal-algoritmus** néven ismert.)

### Az optimista algoritmus (Kruskal)

**Lépés:** építsük meg a(z egyik) **legolcsóbb** olyan élt, amely a már megépítettekkel **nem zár be kört**. Ismételjük, amíg lehet.

(Figyelem: nem egyszerűen a legolcsóbb élt építjük meg, hanem a legolcsóbbat a kört nem záró élek közül — a legolcsóbb él ugyanis bezárhat egy kört.)

**Mikor áll le?** Amikor nem tud tovább lépni, mert $G$ minden további éle kört zárna be. Ekkor a megépített $F$ élhalmaz:

- körmentes (ezt minden lépésben megőriztük);
- feszítő (minden csúcsot tartalmaz — az élek nélküli csúcsokat is a gráf részének tekintjük);
- összefüggő. Ha ugyanis nem volna az, akkor — mivel $G$ összefüggő — volna $G$-nek olyan éle, amely $F$ két különböző komponensét köti össze; ez az él nem zárna be kört, tehát az algoritmus még nem állt volna le.

$F$ tehát feszítőfa, és a 22. szakasz szerint az algoritmus pontosan $n - 1$ lépés után áll le. (Így az is mondható: amikor $n - 1$ élünk van, megállunk, mert az $5.$ jellemzés szerint egy $n - 1$ élű körmentes gráf már fa.)

> **Tétel.** Az optimista algoritmus minimális összsúlyú feszítőfát ad.

### A pesszimista algoritmus

**Lépés:** töröljük $G$-ből a(z egyik) **legdrágább** olyan élt, amelynek törlése után a maradék gráf **összefüggő marad**. Ismételjük, amíg lehet.

**Mikor áll le?** Amikor egyik élt sem lehet úgy törölni, hogy a gráf összefüggő maradjon — ekkor a gráf minimális összefüggő, ami a $2.$ jellemzés szerint fa. Mivel csak éleket töröltünk, feszítőfa; és $n - 1$ éle maradt.

> **Tétel.** A pesszimista algoritmus is minimális összsúlyú feszítőfát ad.

A két algoritmus eredménye **nem feltétlenül egyezik meg**: ha egyenlő súlyú élek is vannak, több minimális összsúlyú feszítőfa is lehet, és a két algoritmus különbözőket találhat. (Például egy háromszögben, amelynek mindhárom éle egységnyi súlyú, mindhárom kétélű feszítőfa minimális.) Az összsúlyuk persze egyenlő.

*Példa.* Legyenek a csúcsok $a, b, c, d$, az élek és súlyaik: $ab$: $1$, $bc$: $2$, $ac$: $3$, $cd$: $4$, $bd$: $5$. Az optimista algoritmus megépíti az $ab$-t, majd a $bc$-t; az $ac$ kört zárna, ezért kimarad; végül megépíti a $cd$-t. Az eredmény $\{ab, bc, cd\}$, összsúlya $7$. A pesszimista algoritmus törli a $bd$-t (a $d$ a $c$-n át továbbra is elérhető), a $cd$-t nem törölheti (a $d$ elszakadna), az $ac$-t viszont igen (az $a$-$b$-$c$ út megmarad); ezután már semmit sem törölhet. Az eredmény ugyanaz a fa.

::: kiegeszites
**Kiegészítés — az optimista algoritmus helyességének bizonyítása.** Legyenek az algoritmus által megépített élek a kiválasztás sorrendjében $e_1, e_2, \dots, e_{n-1}$, és $T = \{e_1, \dots, e_{n-1}\}$. Tegyük fel, hogy $T$ nem minimális összsúlyú. A minimális összsúlyú feszítőfák közül válasszunk egy olyan $T^*$-ot, amely az $e_1, e_2, \dots$ sorozatnak a lehető leghosszabb kezdőszeletét tartalmazza: $e_1, \dots, e_{k-1} \in T^*$, de $e_k \notin T^*$. (Ha $T^*$ mind az $n - 1$ élt tartalmazná, akkor $T^* = T$ volna, hiszen mindkettő $n - 1$ élű.)

Vegyük hozzá $e_k$-t a $T^*$ fához. A $3.$ jellemzés (a $1 \Rightarrow 3$ irány) szerint így egy $C$ kör keletkezik, amely tartalmazza $e_k$-t. A $C$ körnek van olyan $f$ éle, amely nincs $T$-ben (különben $T$-ben kör volna); $f \ne e_k$, tehát $f \in T^*$.

*Állítás: $w(e_k) \le w(f)$.* Amikor az algoritmus a $k$-adik lépésben $e_k$-t választotta, az $e_1, \dots, e_{k-1}$ élek voltak megépítve. Ezekkel $f$ nem zárt volna be kört, hiszen $\{e_1, \dots, e_{k-1}, f\} \subseteq T^*$, és $T^*$ körmentes. Tehát $f$ is választható lett volna, az algoritmus azonban a legolcsóbb választható élt vette, így $w(e_k) \le w(f)$.

Legyen $T' = T^* + e_k - f$. Ez összefüggő (az $f$ él a $C$ kör éle volt, így a 23. szakasz állítása szerint törlése után összefüggő marad), és $n - 1$ éle van, tehát a $4.$ jellemzés szerint feszítőfa. Összsúlya $w(T') = w(T^*) + w(e_k) - w(f) \le w(T^*)$, így $T'$ is minimális összsúlyú. Viszont $T'$ tartalmazza $e_1, \dots, e_k$-t, ami ellentmond $T^*$ választásának. $\blacksquare$

**Kiegészítés — a pesszimista algoritmus helyességének bizonyítása.** Megmutatjuk, hogy az algoritmus futása során végig igaz a következő: *a pillanatnyi $H$ gráf tartalmaz egy minimális összsúlyú feszítőfát* ($G$-ét). Kezdetben ($H = G$) ez nyilvánvaló. Tegyük fel, hogy $H$ tartalmazza a $T^*$ minimális feszítőfát, és az algoritmus a $H$-ból az $e = uv$ élt törli. Ha $e \notin T^*$, akkor $H - e$ is tartalmazza $T^*$-ot. Ha $e \in T^*$:

- A $T^* - e$ gráf két komponensre esik (a $2.$ jellemzés szerint); legyen $X$ az $u$-t, $Y$ a $v$-t tartalmazó komponens csúcshalmaza.
- Mivel $H - e$ összefüggő (az algoritmus csak ilyen élt töröl), van benne $u$-ból $v$-be vezető út. Ez $X$-ből indul és $Y$-ban ér véget, tehát valahol átlép $X$-ből $Y$-ba: van egy $f \ne e$ éle, amelynek egyik vége $X$-ben, másik $Y$-ban van. Ez az út az $e$ éllel együtt kört alkot $H$-ban, amelynek $f$ is éle; így $H - f$ is összefüggő, vagyis $f$ is törölhető lett volna. Az algoritmus a legdrágább törölhető élt választotta, ezért $w(f) \le w(e)$.
- A $T' = T^* - e + f$ gráf összefüggő (az $f$ él összeköti $X$-et és $Y$-t), $n - 1$ élű, tehát feszítőfa, és $w(T') \le w(T^*)$, így minimális. Végül $T' \subseteq H - e$, hiszen $f \in H$ és $f \ne e$.

Az invariáns tehát megmarad. Az algoritmus végén $H$ maga is feszítőfa, és tartalmaz egy minimális összsúlyú $T^*$ feszítőfát; mivel mindkettőnek $n - 1$ éle van, $H = T^*$. $\blacksquare$
:::

## 26. Címkézett fák: a Cayley-tétel és a Prüfer-kód

Eddig a fákat izomorfia erejéig számoltuk: a 21. szakasz táblázata szerint például $3$ különböző $5$ csúcsú fa van. Most **címkézett** fákat számolunk.

> **Definíció.** Egy $n$ csúcsú **címkézett** (számozott) fa olyan fa, amelynek csúcshalmaza $[n] = \{1, 2, \dots, n\}$. Két címkézett fát akkor tekintünk azonosnak, ha pontosan ugyanazok az éleik.

Számoljuk meg kis $n$-ekre!

- $n = 1, 2$: egyetlen címkézett fa van.
- $n = 3$: a fa egy $3$ csúcsú út, és csak az számít, hogy melyik csúcs van középen: $3$ fa. (Az $1$–$2$–$3$ és a $3$–$2$–$1$ út ugyanaz a fa.)
- $n = 4$: az út $\frac{4!}{2} = 12$-féleképpen címkézhető (a $4!$ sorrendben minden utat kétszer, mindkét irányból számoltunk — tehénszabály); a csillag $4$-féleképpen (csak a középső csúcs címkéje számít). Összesen $16$.
- $n = 5$: út: $\frac{5!}{2} = 60$; villa: a $3$ fokú csúcs $5$-féle, a hozzá kapcsolódó két levél $\binom{4}{2} = 6$-féle, a maradék két csúcs sorrendje a hosszabb ágon $2$-féle, ez $5 \cdot 6 \cdot 2 = 60$; csillag: $5$. Összesen $125$.

A sorozat: $1, 1, 3, 16, 125$ — vagyis $1^{-1}, 2^0, 3^1, 4^2, 5^3$.

> **Tétel (Cayley-tétel).** Az $n$ csúcsú címkézett fák száma $n^{n-2}$.

A bizonyítás ötlete a bijekció-elv: minden címkézett fához kölcsönösen egyértelműen hozzárendelünk egy sorozatot, a **Prüfer-kódját**, amely $n - 2$ hosszú, és minden tagja az $1, \dots, n$ számok valamelyike. Ilyen sorozatból az ismétléses variáció képlete szerint $n^{n-2}$ van.

### A Prüfer-kód

**Kódolás.** Legyen $T$ egy $n \ge 2$ csúcsú címkézett fa. Ismételjük $n - 2$-szer a következő lépést:

> Keressük meg a fa **legkisebb sorszámú levelét**, **jegyezzük fel a szomszédját**, majd **tépjük le** a levelet (töröljük az élével együtt).

Minden lépés után ismét fát kapunk (a 22. szakasz bizonyítása szerint), amelynek eggyel kevesebb csúcsa van; és mivel legalább $2$ csúcsú fának van levele, a lépés mindig végrehajtható. A feljegyzett $n - 2$ szám sorozata a fa **Prüfer-kódja**.

*Példa.* Legyen $n = 9$, és a fa élei:
$$\{1,2\},\quad \{1,6\},\quad \{1,4\},\quad \{1,9\},\quad \{3,5\},\quad \{3,8\},\quad \{3,4\},\quad \{4,7\}.$$
A levelek kezdetben: $2, 5, 6, 7, 8, 9$. Írjuk egy táblázat felső sorába, **mit** tépünk le, az alsóba, **hova** volt kötve:

| levél (mit) | 2 | 5 | 6 | 7 | 8 | 3 | 4 | *1* |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| szomszéd (hova) | **1** | **3** | **1** | **4** | **3** | **4** | **1** | *9* |

Lépésről lépésre: a legkisebb levél $2$ (szomszédja $1$); utána $5$ ($3$); $6$ ($1$); $7$ ($4$); $8$ ($3$) — ekkor a $3$-asnak már csak a $4$ a szomszédja, tehát levéllé vált, és a legkisebb levél a $3$ ($4$); ezután a $4$ válik levéllé ($1$). Az $n - 2 = 7$ lépés után a $1$ és a $9$ csúcs marad, a köztük futó éllel. A Prüfer-kód:
$$(1, 3, 1, 4, 3, 4, 1).$$

Megfigyelések:

- Ha az utolsó, $1$–$9$ élt is felírjuk (dőlt betűvel a táblázat végén), a táblázat $n - 1$ oszlopa **éppen a fa éleit** adja.
- Az utolsó oszlop alsó eleme mindig $n$: a legnagyobb sorszámú csúcsot sosem tépjük le, hiszen amíg legalább $3$ csúcs van, a fának legalább $2$ levele van, és ezek közül a legkisebb nem a legnagyobb csúcs. Ezért az utolsó oszlopot nem kell feljegyezni.
- A kódban az $1$ háromszor, a $3$ és a $4$ kétszer szerepel, a levelek ($2, 5, 6, 7, 8, 9$) egyszer sem. A fában $\deg(1) = 4$, $\deg(3) = \deg(4) = 3$, a leveleké $1$.

Az utolsó megfigyelés általános érvényű:

> **Állítás.** Ha a $T$ címkézett fában az $i$ csúcs fokszáma $\deg(i)$, akkor az $i$ szám a $T$ Prüfer-kódjában pontosan $\deg(i) - 1$-szer szerepel.

*Bizonyítás.* Az $i$ szám pontosan akkor kerül be a kódba, amikor egy **szomszédját** tépjük le. Kövessük az $i$ csúcs $\deg(i)$ darab élét az eljárás során. Amíg $i$-nek legalább két éle van, $i$ nem levél, így ha egy élét letépjük, akkor a másik végpontja a letépett levél, és $i$ bekerül a kódba. Az $i$ **utolsó** éle viszont nem ilyen: vagy $i$ maga válik levéllé, és **őt** tépjük le (ekkor a szomszédja kerül a kódba, nem $i$), vagy ez az él az eljárás végén megmaradó él, amely nem kerül a kódba. Így $i$ pontosan $\deg(i) - 1$-szer szerepel. $\blacksquare$

Speciálisan: **a levelek pontosan azok a csúcsok, amelyek nem szerepelnek a kódban.**

**Dekódolás.** A kódból a fa visszaállítható. A legkisebb levél az első lépésben éppen a legkisebb olyan szám, amely **nem szerepel a kódban**; a szomszédja a kód első eleme. Ezután a kód első elemét elhagyjuk, a letépett levelet „elhasználtnak” jelöljük, és ugyanígy folytatjuk: mindig a legkisebb olyan, még el nem használt szám a következő levél, amely a **hátralevő** kódban nem szerepel. Végül a két megmaradt, el nem használt csúcsot összekötjük.

A példában a $(1, 3, 1, 4, 3, 4, 1)$ kódból: a kódban nem szereplő legkisebb szám $2$, tehát $2$–$1$ él; a hátralevő kód $(3, 1, 4, 3, 4, 1)$, ebben nem szerepel, és még nem használt: $5, 6, 7, 8, 9$, a legkisebb $5$, tehát $5$–$3$; majd $6$–$1$, $7$–$4$, $8$–$3$; a hátralevő kód ekkor $(4, 1)$, amelyben a $3$ már nem szerepel, tehát $3$–$4$; végül $4$–$1$, és a megmaradt $1, 9$ csúcsot összekötjük. Visszakaptuk az eredeti fát.

Az előadáson a kódolás és a dekódolás alapján rögzítettük: **a számozott $n$ csúcsú fák és az $n - 2$ hosszú Prüfer-kódok kölcsönösen egyértelműen megfeleltethetők egymásnak**; ebből a Cayley-tétel azonnal következik. Azt azonban nem bizonyítottuk, hogy a dekódolás **minden** sorozatból fát (összefüggő, körmentes gráfot) állít elő, és hogy a két eljárás valóban egymás inverze.

::: kiegeszites
**Kiegészítés — a Prüfer-megfeleltetés bijektivitása.** Kényelmesebb általánosabban fogalmazni. Ha $V$ egy legalább $2$ elemű, pozitív egészekből álló véges halmaz, a $V$ csúcshalmazú fák Prüfer-kódját ugyanúgy definiáljuk (legkisebb levél letépése, szomszéd feljegyzése, $|V| - 2$-szer). A fenti állítás és bizonyítása szó szerint érvényes.

**Tétel.** *Ha $|V| = m \ge 2$, akkor minden $(a_1, \dots, a_{m-2}) \in V^{m-2}$ sorozat pontosan egy $V$ csúcshalmazú fának a Prüfer-kódja.*

*Bizonyítás (teljes indukció $m$ szerint).* $m = 2$-re egyetlen fa van (egy él), és egyetlen $0$ hosszú sorozat (az üres). Legyen $m \ge 3$, és tegyük fel, hogy az állítás $m - 1$ elemű csúcshalmazokra igaz.

*Egyértelműség.* Legyen $T$ egy fa, amelynek kódja $(a_1, \dots, a_{m-2})$. Az állítás szerint $T$ levelei pontosan a kódban nem szereplő elemek, így az első lépésben letépett levél $\ell = \min\big(V \setminus \{a_1, \dots, a_{m-2}\}\big)$, és a szomszédja $a_1$. A letépés után kapott $T - \ell$ fa csúcshalmaza $V \setminus \{\ell\}$, és a kódolás innen pontosan úgy folytatódik, mintha $T - \ell$-et kódolnánk, tehát $T - \ell$ kódja $(a_2, \dots, a_{m-2})$. Az indukciós feltevés szerint $T - \ell$-et ez a kód egyértelműen meghatározza, $T$ pedig $T - \ell$-ből az $\ell$–$a_1$ él hozzávételével adódik. Tehát $T$ egyértelmű.

*Létezés.* Legyen $(a_1, \dots, a_{m-2}) \in V^{m-2}$ tetszőleges, és $\ell = \min\big(V \setminus \{a_1, \dots, a_{m-2}\}\big)$; ez létezik, mert a kód $m - 2 < m$ elemet sorol fel. Mivel $\ell$ nem szerepel a kódban, $(a_2, \dots, a_{m-2}) \in (V \setminus \{\ell\})^{m-3}$, így az indukciós feltevés szerint van olyan $T'$ fa a $V \setminus \{\ell\}$ csúcshalmazon, amelynek ez a kódja. Legyen $T$ az a gráf, amelyet $T'$-ből egy új $\ell$–$a_1$ él hozzávételével kapunk ($a_1 \ne \ell$, tehát $a_1 \in V(T')$). $T$ fa: összefüggő, és körmentes, mert az $\ell$ csúcs foka $1$, így nem lehet kör része.

Megmutatjuk, hogy $T$ kódja $(a_1, \dots, a_{m-2})$. Az állítás szerint $T'$ levelei a $(a_2, \dots, a_{m-2})$-ben nem szereplő csúcsok. A $T$ fa egy $\ell$-től különböző $x$ levele $T'$-nek is levele, és $x \ne a_1$ (az $a_1$ foka $T$-ben eggyel nagyobb, mint $T'$-ben, tehát ha $T$-ben $1$ volna, $T'$-ben $0$ — ami egy legalább $2$ csúcsú fában lehetetlen). Így $x$ egyáltalán nem szerepel az $(a_1, \dots, a_{m-2})$ kódban, és $x \ne \ell$, tehát $\ell$ definíciója szerint $x > \ell$. Vagyis $\ell$ a $T$ legkisebb levele: az első lépésben őt tépjük le, feljegyezzük a szomszédját, $a_1$-et, és a $T'$ fa marad, amelynek kódja $(a_2, \dots, a_{m-2})$. $\blacksquare$

A tétel szerint a kódolás bijekció a $V$ csúcshalmazú fák és a $V^{m-2}$ halmaz között. $V = [n]$ esetén ez a Cayley-tétel: az $n$ csúcsú címkézett fák száma $|[n]^{n-2}| = n^{n-2}$.
:::

## 27. Fokszámsorozatok realizálása

> **Kérdés.** Adottak a $d_1 \le d_2 \le \dots \le d_n$ nemnegatív egészek. Létezik-e olyan gráf, amelynek csúcsai $v_1, \dots, v_n$, és $\deg(v_k) = d_k$ minden $k$-ra? (Ha igen, azt mondjuk, hogy a gráf **realizálja** a fokszámsorozatot.)

A válasz attól függ, milyen gráfokat engedünk meg. Három esetet vizsgálunk, egyre szigorúbb feltételekkel.

### I. típus: hurokélek és többszörös élek is megengedettek

> **Állítás.** Pontosan akkor létezik a $d_1, \dots, d_n$ fokszámsorozatú (hurokéleket és többszörös éleket is megengedő) gráf, ha $\sum_{k=1}^{n} d_k$ páros.

*Bizonyítás.* Ha létezik ilyen gráf, a kézfogási lemma szerint a fokszámok összege $2|E|$, tehát páros. Például a $3, 4, 4$ sorozatot semmilyen gráf sem realizálja.

Megfordítva, tegyük fel, hogy az összeg páros. Építsük meg a gráfot három lépésben:

1. **Hurokélekkel elégítjük ki a fokszámigényeket, amennyire lehet:** a $v_k$ csúcsra $\lfloor d_k/2 \rfloor$ hurokélt teszünk. Mivel egy hurokél $2$-vel növeli a fokszámot, ezután minden csúcs fokszáma $d_k$, ha $d_k$ páros, és $d_k - 1$, ha $d_k$ páratlan.
2. **Ami kimaradt:** a páratlan $d_k$-jú csúcsoknak még $1$-$1$ él hiányzik. Mivel a $d_k$-k összege páros, páros sok páratlan $d_k$ van.
3. **Ezeket a csúcsokat kettesével összekötjük** egy-egy éllel.

Az így kapott gráf fokszámsorozata éppen $d_1, \dots, d_n$. $\blacksquare$

### II. típus: hurokél nem, többszörös él megengedett

Ha hurokél nem lehet, a feltétel szigorúbb: a legnagyobb fokú csúcs minden éle egy **másik** csúcsban végződik.

> **Állítás.** Pontosan akkor létezik a $d_1 \le \dots \le d_n$ fokszámsorozatú, hurokélmentes (de többszörös éleket megengedő) gráf, ha $\sum_k d_k$ páros, és
> $$d_n \le d_1 + d_2 + \dots + d_{n-1}.$$

*Bizonyítás.* **Szükségesség.** A paritás a kézfogási lemmából következik. A $v_n$ csúcs $d_n$ élének mindegyike egy másik csúcsban végződik, és ott $1$-gyel növeli a fokszámot, így $d_n \le d_1 + \dots + d_{n-1}$.

**Elégségesség.** Két esetet különböztetünk meg.

*(A) Egyenlőség: $d_n = d_1 + \dots + d_{n-1}$.* Kössük össze $v_n$-et minden $v_k$-val ($k < n$) $d_k$ darab párhuzamos éllel. Mindenki pontosan annyi élt kap, amennyit „kér”, és $v_n$ foka $d_1 + \dots + d_{n-1} = d_n$.

*(B) Szigorú egyenlőtlenség: $d_n < d_1 + \dots + d_{n-1}$.* A különbség $(d_1 + \dots + d_{n-1}) - d_n = \sum_k d_k - 2d_n$ páros, tehát legalább $2$. Kössünk össze egy éllel két különböző, $v_1, \dots, v_{n-1}$ közötti csúcsot, amelyeknek még van kielégítetlen fokszámigénye, és csökkentsük mindkettőjük igényét $1$-gyel. Ezzel az $S = \sum_{k<n}(\text{hátralévő igény})$ összeget **$2$-vel csökkentettük**, $d_n$ pedig változatlan maradt. Egyenlőek már? Ha igen, az (A) eset következik a hátralévő igényekkel; ha még nem, tovább csökkentünk. Mivel $S - d_n$ páros, és minden lépésben $2$-vel csökken, egyszer pontosan $0$ lesz.

Miért van mindig két alkalmas csúcs? Amíg $S > d_n$, legalább két $v_1, \dots, v_{n-1}$ közötti csúcsnak van pozitív hátralévő igénye: ha csak egynek, mondjuk $v_i$-nek volna, akkor $S$ az ő hátralévő igénye volna, ami legfeljebb $d_i \le d_n$ — ellentmondás. $\blacksquare$

## 28. Egyszerű gráfok fokszámsorozatai

### III. típus: egyszerű gráfok

A legérdekesebb (és legnehezebb) eset az, amikor sem hurokél, sem többszörös él nem lehet.

> **Kérdés.** Mikor létezik a $d_1 \le \dots \le d_n$ fokszámsorozatú **egyszerű** gráf?

A párosság és a $d_n \le d_1 + \dots + d_{n-1}$ feltétel nyilván továbbra is szükséges, de már nem elég. Tekintsük az
$$1, 1, 1, 1, 2, 2, 2, 6, 6, 6$$
sorozatot! Az összeg $28$ páros, és $6 \le 22$, tehát a II. típusú gráf létezik. Egyszerű gráf azonban nem: a három $6$-os fokú csúcs egymás között legfeljebb $2$-$2$ fokszámot tud kielégíteni (egy háromszöget alkothatnak), így mindegyiküktől legalább $4$-$4$, összesen legalább $12$ élnek kell átmennie a „túloldalra”, a kis fokú csúcsokhoz. A túloldal azonban összesen csak $1 + 1 + 1 + 1 + 2 + 2 + 2 = 10$ élt tud fogadni.

Ez a gondolatmenet általánosítható. Tekintsük a $k$ legnagyobb fokú csúcsot. Ezek egymás között — egyszerű gráfban — legfeljebb $\binom{k}{2}$ élt alkothatnak, ami a fokszámösszegükből legfeljebb $k(k-1)$-et „nyel el”. A maradék $d_n + d_{n-1} + \dots + d_{n-k+1} - k(k-1)$ fokszámnak a kis fokú csúcsokhoz menő élekből kell kijönnie.

> **Tétel (szükséges feltétel).** Ha létezik a $d_1 \le \dots \le d_n$ fokszámsorozatú egyszerű gráf, akkor minden $k = 1, \dots, n$ esetén
> $$d_n + d_{n-1} + \dots + d_{n-k+1} - k(k-1) \le d_1 + d_2 + \dots + d_{n-k}.$$

A fenti példában $k = 3$-ra: $18 - 6 = 12 > 10$, tehát nincs ilyen egyszerű gráf.

Az előadáson elhangzott, hogy a megfordítás „majdnem” igaz, de kell még valami — ezt most nem néztük meg. A pontos feltételt az **Erdős–Gallai-tétel** adja meg. A különbség az, hogy egy kis fokú $v_i$ csúcs nemcsak $d_i$-nél, hanem $k$-nál több élt sem fogadhat a $k$ nagy fokú csúcstól (mindegyiktől legfeljebb egyet), ezért a jobb oldalon $d_i$ helyett $\min(d_i, k)$ áll.

> **Tétel (Erdős–Gallai).** A $d_1 \le d_2 \le \dots \le d_n$ nemnegatív egészekből álló sorozatot pontosan akkor realizálja egyszerű gráf, ha $\sum_k d_k$ páros, és minden $k = 1, \dots, n$ esetén
> $$d_n + d_{n-1} + \dots + d_{n-k+1} \le k(k-1) + \sum_{i=1}^{n-k}\min(d_i, k).$$

::: kiegeszites
**Kiegészítés — az Erdős–Gallai-tétel bizonyítása.** A bizonyításban kényelmesebb **csökkenő** sorrendben indexelni: legyen $D_1 \ge D_2 \ge \dots \ge D_n$ (vagyis $D_i = d_{n+1-i}$). Jelölje
$$L_k(D) = \sum_{i=1}^{k} D_i, \qquad R_k(D) = k(k-1) + \sum_{i=k+1}^{n}\min(D_i, k).$$
A feltétel: $\sum_i D_i$ páros, és $L_k(D) \le R_k(D)$ minden $k$-ra. Az ilyen sorozatot röviden **EG-sorozatnak** nevezzük.

**Szükségesség.** Legyen $G$ egy realizáció, $\deg(v_i) = D_i$, és $S = \{v_1, \dots, v_k\}$. Az $L_k(D)$ összeg az $S$-en belüli éleket kétszer, az $S$-ből kifelé menőket egyszer számolja. Az $S$-en belüli élek száma legfeljebb $\binom{k}{2}$, ez $k(k-1)$-et ad. Egy $v_i \notin S$ csúcs legfeljebb $D_i$ élt küldhet $S$-be, de mivel mindegyik $S$-beli csúcshoz legfeljebb egyet, legfeljebb $k$-t is; így legfeljebb $\min(D_i, k)$-t. Ezért $L_k(D) \le R_k(D)$.

**Elégségesség.** Teljes indukció a $\sum_i D_i$ összeg szerint. Ha az összeg $0$, az üres (él nélküli) gráf megfelel. A $0$ tagokat elhagyhatjuk (az $R_k$ összegekhez nem járulnak hozzá, a realizációhoz pedig utólag izolált csúcsokként hozzávehetők), tehát feltehetjük, hogy minden $D_i \ge 1$. A $k = 1$ feltétel szerint $D_1 \le \sum_{i \ge 2}\min(D_i, 1) = n - 1$.

Legyen $m = D_1$, és $t$ a legnagyobb olyan index, amelyre $D_1 = D_2 = \dots = D_t$; ha ez $t = n$ volna (minden tag egyenlő), legyen $t = n - 1$. Így $1 \le t \le n - 1$, $D_1 = \dots = D_t = m$, és vagy $D_t > D_{t+1}$, vagy $t = n - 1$. Képezzük az $E$ sorozatot: $E_t = D_t - 1$, $E_n = D_n - 1$, a többi tag változatlan. Az $E$ sorozat nemnegatív, csökkenő (a $t$-edik tag csökkentése nem rontja el a sorrendet, mert $D_t > D_{t+1}$ vagy $t + 1 = n$), és összege $\sum D_i - 2$, páros.

**1. lépés: $E$ is EG-sorozat.** Három esetet vizsgálunk.

- *$t \le k \le n - 1$.* Ekkor $L_k(E) = L_k(D) - 1$. Az $R_k$ összegben csak az $i = n$ tag változhat, legfeljebb $1$-gyel, így $R_k(E) \ge R_k(D) - 1 \ge L_k(D) - 1 = L_k(E)$.
- *$k = n$.* $L_n(E) = L_n(D) - 2 \le R_n(D) = n(n-1) = R_n(E)$.
- *$1 \le k < t$.* Ekkor $L_k(E) = L_k(D) = km$.
  - Ha $m \le k - 1$: $km \le k(k-1) \le R_k(E)$.
  - Ha $m = k$: elég, hogy $\sum_{i > k}\min(E_i, k) \ge k$. Ha $t \ge k + 2$, ezt már az $E_{k+1} = m = k$ tag biztosítja. Ha $t = k + 1$, az $E_t = k - 1$ tag $k - 1$-et ad, és kell még legalább $1$: ha van $t < i < n$ index, az $E_i = D_i \ge 1$ tag megadja; ha nincs, akkor $n = k + 2$, és az $E_n = D_n - 1$ tag kell, hogy pozitív legyen. Ha pedig $D_n = 1$ volna, a sorozat $(k, \dots, k, 1)$ lenne $k + 1$ darab $k$-val, összege $k(k+1) + 1$ páratlan — ez kizárt.
  - Ha $m \ge k + 1$: az $E_t = m - 1 \ge k$ tag miatt $\min(E_t, k) = k = \min(D_t, k)$, tehát $R_k$-ban csak az $i = n$ tag változhat, és az is csak akkor (pontosan $1$-gyel csökken), ha $D_n \le k$. Ha $D_n > k$, akkor $R_k(E) = R_k(D) \ge L_k(E)$. Ha $D_n \le k$, megmutatjuk, hogy $L_k(D) < R_k(D)$, és ekkor $L_k(E) = L_k(D) \le R_k(D) - 1 = R_k(E)$.

    Tegyük fel indirekten, hogy $L_k(D) = R_k(D)$. A $D_{k+1} = \dots = D_t = m \ge k + 1$ tagok egyenként $k$-t adnak $R_k(D)$-hez, így
    $$km = k(k-1) + (t-k)k + \sum_{i>t}\min(D_i, k), \quad \text{azaz} \quad \sum_{i>t}\min(D_i, k) = k(m - t + 1).$$
    Minden $i > t$-re $\min(D_i, t) \le \frac{t}{k}\min(D_i, k)$ (ha $D_i \le k$, a bal oldal $D_i$, ha $D_i > k$, legfeljebb $t = \frac{t}{k}\cdot k$), és az $i = n$ indexre szigorú egyenlőtlenség áll, mert ott $\min(D_n, t) = D_n < \frac{t}{k}D_n$. Így
    $$R_t(D) = t(t-1) + \sum_{i>t}\min(D_i, t) < t(t-1) + \frac{t}{k}\cdot k(m - t + 1) = tm = L_t(D),$$
    ami ellentmond annak, hogy $D$ EG-sorozat.

**2. lépés: $D$ realizálása.** Az indukciós feltevés szerint van olyan $G'$ egyszerű gráf, amelyben $\deg(v_i) = E_i$. Ha $v_t$ és $v_n$ nem szomszédos $G'$-ben, kössük össze őket: a kapott gráf $D$-t realizálja.

Ha szomszédosak, „cserélgetünk”. A $v_t$ csúcsnak $v_n$-en kívül $E_t - 1 = m - 2$ szomszédja van, ami kevesebb, mint a $v_t$-n és $v_n$-en kívüli csúcsok száma, $n - 2$ (hiszen $m \le n - 1$). Van tehát olyan $x \ne v_t, v_n$ csúcs, amely nem szomszédja $v_t$-nek; $x = v_i$ valamilyen $i \notin \{t, n\}$ indexszel, így $\deg_{G'}(x) = D_i \ge D_n$. A $v_n$ csúcsnak $D_n - 1$ szomszédja van, köztük $v_t$, amely nem szomszédja $x$-nek; így $x$ és $v_n$ közös szomszédainak száma legfeljebb $D_n - 2$. Ezért $x$-nek a legalább $D_n$ szomszédja között van olyan $y$, amely nem szomszédja $v_n$-nek, és $y \ne v_n$ (legfeljebb $D_n - 2$ közös szomszéd, és legfeljebb maga $v_n$ esik ki). Mivel $v_t$ nem szomszédja $x$-nek, $y \ne v_t$.

Töröljük az $xy$ élt, és vegyük hozzá a $v_tx$ és $v_ny$ éleket (ezek eddig nem voltak élek). Az $x$ és $y$ foka nem változik, $v_t$ és $v_n$ foka $1$-gyel nő. Az így kapott egyszerű gráf $D$-t realizálja. $\blacksquare$
:::

### A Havel–Hakimi-algoritmus

Az Erdős–Gallai-feltétel ellenőrzéséhez $n$ egyenlőtlenséget kell megvizsgálni, és ha teljesülnek, a gráfot még meg is kell találni. Az előadáson egy egyszerű, mohó algoritmust is láttunk, amely mindkét kérdést egyszerre megoldja.

**Havel–Hakimi-algoritmus.** A fokszámigényeket folyamatosan frissítjük, és mindig **monoton növekvő** sorrendbe rendezzük.

1. Vegyük a legnagyobb igényű csúcsot, $d_n$-t, és kössük össze a **közvetlenül előtte álló** $d_n$ darab csúccsal — vagyis a többiek közül a $d_n$ legnagyobb igényűvel. Ezek igénye $1$-gyel csökken, a $v_n$-é $0$ lesz:
$$\dots,\ d_{n-d_n} - 1,\ \dots,\ d_{n-2} - 1,\ d_{n-1} - 1,\ d_n \to 0.$$

2. Rendezzük újra a megmaradt igényeket, és **ismételjük**: újra a legnagyobbat elégítjük ki a közvetlenül előtte állókkal.
3. Ha minden igény $0$-ra csökkent, **kész**: megkaptuk a gráfot. Ha valamelyik lépés nem hajtható végre (nincs elég pozitív igényű csúcs, amellyel a legnagyobbat össze lehetne kötni), akkor **nincs ilyen egyszerű gráf**.

*Példa.* Futtassuk az algoritmust az $1, 1, 1, 2, 2, 2, 3, 3, 3$ sorozatra! Minden sorban a legnagyobb igényt elégítjük ki a közvetlenül előtte állókkal, majd újrarendezünk.

| lépés | igények (növekvő sorrendben) | a legnagyobbat összekötjük… |
|:-:|:--|:--|
| 0 | $1, 1, 1, 2, 2, 2, 3, 3, \mathbf{3}$ | a $3, 3, 2$ igényűekkel |
| 1 | $1, 1, 1, 1, 2, 2, 2, \mathbf{2}$ | a $2, 2$ igényűekkel |
| 2 | $1, 1, 1, 1, 1, 1, \mathbf{2}$ | az $1, 1$ igényűekkel |
| 3 | $0, 0, 1, 1, 1, \mathbf{1}$ | az $1$ igényűvel |
| 4 | $0, 0, 0, 1, \mathbf{1}$ | az $1$ igényűvel |
| 5 | $0, 0, 0, 0$ | **kész!** |

Az algoritmus lefutott, tehát van ilyen egyszerű gráf, és a lépésekben behúzott élek meg is adják.

*Ellenpélda.* Az $1, 1, 1, 1, 2, 2, 2, 6, 6, 6$ sorozatnál az első lépés után ($6$-ost összekötjük a $6, 6, 2, 2, 2, 1$ igényű csúcsokkal) az igények rendezve $0, 1, 1, 1, 1, 1, 1, 5, 5$. A következő $5$-öst összekötve a $5, 1, 1, 1, 1$ igényűekkel: $0, 0, 0, 0, 0, 1, 1, 4$. Most a $4$-es igényű csúcsot négy másikkal kellene összekötni, de csak két pozitív igényű csúcs maradt: az algoritmus elakad, **nincs ilyen egyszerű gráf** — összhangban azzal, amit korábban láttunk.

Az előadás összegzése szerint ez **jó algoritmus: pont akkor kerül bajba, amikor baj van.** Ezt a következő tétel mondja ki pontosan.

> **Tétel (Havel–Hakimi).** Legyen $d_1 \le \dots \le d_n$, és tegyük fel, hogy $d_n \le n - 1$. A sorozat pontosan akkor realizálható egyszerű gráffal, ha az a sorozat realizálható, amelyet úgy kapunk, hogy $d_n$-t elhagyjuk, és a $d_{n-1}, d_{n-2}, \dots, d_{n-d_n}$ tagokat $1$-gyel csökkentjük. (Ha $d_n > n - 1$, a sorozat nem realizálható, hiszen egy csúcsnak legfeljebb $n - 1$ szomszédja lehet.)

::: kiegeszites
**Kiegészítés — a Havel–Hakimi-tétel bizonyítása.** Legyen $S = \{v_{n-1}, v_{n-2}, \dots, v_{n-d_n}\}$ a $d_n$ darab legnagyobb igényű többi csúcs.

*Ha a csökkentett sorozat realizálható*, vegyünk egy realizációját a $v_1, \dots, v_{n-1}$ csúcsokon, adjunk hozzá egy új $v_n$ csúcsot, és kössük össze az $S$ halmaz elemeivel. Az $S$-beli csúcsok foka $1$-gyel nő, $v_n$ foka $d_n$: ez $d$ realizációja.

*Megfordítva*, tegyük fel, hogy $d$ realizálható. Elég megmutatni, hogy van olyan $G$ realizáció, amelyben $v_n$ szomszédai **pontosan** az $S$ elemei, hiszen ekkor $v_n$-et törölve a csökkentett sorozat realizációját kapjuk. A $d$ realizációi közül válasszunk egy olyan $G$-t, amelyben $|N(v_n) \cap S|$ a lehető legnagyobb ($N(v)$ a $v$ szomszédainak halmaza). Tegyük fel indirekten, hogy $N(v_n) \ne S$. Mivel $|N(v_n)| = d_n = |S|$, van olyan $v_a \in N(v_n) \setminus S$ és $v_b \in S \setminus N(v_n)$. Ekkor $a < b$ (az $S$-en kívüli, $v_n$-től különböző csúcsok indexe kisebb az $S$-belieknél), így $d_a \le d_b$.

Keresünk egy olyan $w$ szomszédját $v_b$-nek, amely nem szomszédja $v_a$-nak, és $w \ne v_a$. A $v_b$ szomszédai közül legfeljebb $d_a - 1$ tartozhat $N(v_a) \cup \{v_a\}$-hoz: $v_a$ szomszédai közül $v_n$ nem szomszédja $v_b$-nek, és ha $v_a$ és $v_b$ szomszédos, akkor $v_b \in N(v_a)$ nem szomszédja önmagának, viszont $v_a \in N(v_b)$ — ez a két hatás kiegyenlíti egymást. Így $v_b$-nek legalább $d_b - (d_a - 1) \ge 1$ alkalmas $w$ szomszédja van; $w \ne v_n$, mert $v_n$ nem szomszédja $v_b$-nek.

Töröljük a $v_nv_a$ és $v_bw$ éleket, és vegyük hozzá a $v_nv_b$ és $v_aw$ éleket (ezek eddig nem voltak élek). Minden fokszám változatlan, tehát ez is realizáció, és benne $|N(v_n) \cap S|$ eggyel nagyobb — ellentmondás $G$ választásával. $\blacksquare$

**Miért helyes ebből az algoritmus?** A tétel szerint minden lépésben a sorozat pontosan akkor realizálható, ha a lépés után kapott rövidebb sorozat realizálható. Ha az algoritmus végigfut (minden igény $0$), az utolsó sorozatot az él nélküli gráf realizálja, és visszafelé haladva mindegyiket. Ha elakad, mert a legnagyobb igény nagyobb a többi csúcs számánál, vagy egy igény negatívvá válna (vagyis nincs elég pozitív igényű csúcs), akkor az aktuális sorozat nem realizálható, így — a tétel szerint visszafelé haladva — az eredeti sem.
:::

## 29. Fák fokszámsorozatai és reguláris gráfok

### +1. típus: fák

A 27–28. szakasz három típusa mellé vegyünk fel egy negyediket: mikor realizálja a fokszámsorozatot **fa**?

> **Állítás.** Legyen $n \ge 2$, és $1 \le d_1 \le d_2 \le \dots \le d_n$ egészek. Pontosan akkor létezik olyan fa, amelynek csúcsai $v_1, \dots, v_n$, és $\deg(v_i) = d_i$ minden $i$-re, ha
> $$\sum_{i=1}^{n} d_i = 2(n - 1).$$

*Bizonyítás.* **$\Rightarrow$:** Egy $n$ csúcsú fának $n - 1$ éle van (22. szakasz), így a kézfogási lemma szerint a fokszámok összege $2(n-1)$.

**$\Leftarrow$:** A Prüfer-kódot hívjuk segítségül (26. szakasz). Írjuk fel a következő sorozatot: az $1$-est $(d_1 - 1)$-szer, a $2$-est $(d_2 - 1)$-szer, …, az $n$-et $(d_n - 1)$-szer:
$$\underbrace{1, 1, \dots, 1}_{d_1 - 1},\ \underbrace{2, 2, \dots, 2}_{d_2 - 1},\ \dots,\ \underbrace{n, n, \dots, n}_{d_n - 1}.$$
(Ha $d_i = 1$, az $i$ egyszer sem szerepel.) A sorozat hossza
$$\sum_{i=1}^{n}(d_i - 1) = \Big(\sum_{i=1}^{n} d_i\Big) - n = 2(n - 1) - n = n - 2,$$
és minden tagja az $1, \dots, n$ számok valamelyike: ez tehát **egy Prüfer-kód**. Fejtsük vissza! Kapunk egy $n$ csúcsú címkézett fát, és mivel az $i$ szám a kódban $d_i - 1$-szer szerepel, a 26. szakasz állítása szerint ebben a fában az $i$ csúcs foka éppen $d_i$. $\blacksquare$

> **Megjegyzés.** Ilyen fából sok van: a Prüfer-kód bijektivitása miatt a $\deg(i) = d_i$ ($i = 1, \dots, n$) feltételnek eleget tevő címkézett fák száma annyi, ahányféleképpen a fenti $n - 2$ hosszú sorozat tagjai sorba rendezhetők, vagyis (ismétléses permutáció)
> $$\frac{(n-2)!}{(d_1 - 1)!\,(d_2 - 1)! \cdots (d_n - 1)!}.$$

*Példa.* $n = 4$-re a $\deg(1) = \deg(2) = \deg(3) = 1$, $\deg(4) = 3$ feltételnek $\frac{2!}{0!\,0!\,0!\,2!} = 1$ fa felel meg (a $4$ közepű csillag), a $\deg(1) = \deg(4) = 1$, $\deg(2) = \deg(3) = 2$ feltételnek pedig $\frac{2!}{0!\,1!\,1!\,0!} = 2$ (az $1$–$2$–$3$–$4$ és az $1$–$3$–$2$–$4$ út).

::: kiegeszites
**Kiegészítés — miért kell, hogy minden $d_i \ge 1$?** Az előadáson ez hallgatólagos feltétel volt (a $d_i - 1$ darab ismétlés csak így értelmes), de lényeges: a $0, 2, 2, 2$ sorozatra $\sum d_i = 6 = 2(4 - 1)$, mégsem realizálja fa, hiszen egy legalább $2$ csúcsú fa összefüggő, így nincs $0$ fokú csúcsa. (Ezt a sorozatot egy háromszög és egy izolált csúcs realizálja.)
:::

### Reguláris gráfok

> **Definíció.** Egy gráf **$r$-reguláris**, ha minden csúcsának a foka ugyanaz az $r$ szám. Röviden **reguláris** gráfról beszélünk, ha valamilyen $r$-re $r$-reguláris.

Nézzük az egyszerű reguláris gráfokat kis $r$-ekre!

- **$0$-reguláris:** csupa izolált pont, egyetlen él nélkül.
- **$1$-reguláris:** diszjunkt élek: minden csúcsnak pontosan egy szomszédja van, így a csúcsok párokba rendeződnek.
- **$2$-reguláris:** néhány **diszjunkt kör** uniója.
- **$3$-reguláris:** a csúcsok száma **páros**; ilyen például a **kocka** élhálója ($8$ csúcs, $12$ él), vagy a teljes négypontú gráf.

::: kiegeszites
**Kiegészítés — a $2$- és $3$-reguláris gráfokról elmondottak bizonyítása.**

*Egy $2$-reguláris egyszerű gráf minden komponense kör.* Induljunk el egy $u_0$ csúcsból, és sétáljunk úgy, hogy soha nem fordulunk vissza azon az élen, amelyen érkeztünk: $u_0, u_1, u_2, \dots$. Ez mindig lehetséges, mert minden csúcsnak $2$ éle van. A gráf véges, így egyszer egy már látott csúcsba érünk; legyen $u_j$ az első ilyen, $u_j = u_i$ ($i < j$). Ha $i \ge 1$ volna, akkor $u_i$-nek három különböző éle lenne: $u_{i-1}u_i$, $u_iu_{i+1}$ és $u_{j-1}u_j$ — ellentmondás. Tehát $u_j = u_0$, és $u_0, u_1, \dots, u_{j-1}, u_0$ kör (egyszerű gráfban $j \ge 3$). Ennek a körnek minden csúcsa már mindkét élét használja, így a kör a gráf egy teljes komponense. A többi komponensre ugyanezt megismételve kapjuk, hogy a gráf diszjunkt körök uniója. Megfordítva, diszjunkt körök uniója nyilván $2$-reguláris.

*Egy $3$-reguláris gráf csúcsainak száma páros.* A kézfogási lemma szerint $3n = 2|E|$, tehát $3n$ páros, így $n$ is páros.

*Minden páros $n \ge 4$-re van $n$ csúcsú, $3$-reguláris egyszerű gráf.* Vegyünk egy $n$ hosszú kört a $v_1, \dots, v_n$ csúcsokon, és kössük még össze a „szemközti” csúcsokat: $v_i$-t $v_{i + n/2}$-vel ($i = 1, \dots, n/2$). Minden csúcs kap egy új élt a két köréle mellé. $n = 4$-re ez a teljes négypontú gráf.
:::
