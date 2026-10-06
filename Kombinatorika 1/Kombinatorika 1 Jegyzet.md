# Kombinatorika 1 Tankönyv

### Leszámlálás és gráfelmélet lépésről lépésre — az előadás jegyzetei alapján

---

> *„Számolni nem úgy kell, hogy egyenként végigszámoljuk a dolgokat, hanem úgy, hogy megértjük, hogyan épülnek fel.”*

---

## Előszó

A Kombinatorika 1 előadáshoz nincs hivatalos jegyzet. Ez a könyv az előadáson készült kézírásos jegyzetekből született, és ugyanazt az utat járja be, **ugyanabban a sorrendben**, ahogyan az előadás haladt: a leszámlálás alapelveitől a binomiális együtthatókon, a logikai szitán, a rekurziókon és a Catalan-számokon át a gráfelmélet első fejezeteiig (fák, feszítőfák, Prüfer-kód, fokszámsorozatok). Ahol ismert, a szakasz elején feltüntettük az előadás dátumát is, hogy a könyv és a saját jegyzet könnyen összevethető legyen.

A könyv azonban nem csupán a jegyzet letisztázott változata. Az előadáson sok minden szóban hangzik el, vagy csak egy rajz utal rá; itt ezeket a lépéseket kiírtuk. Minden új fogalom előtt igyekeztünk megmutatni, milyen kérdés teszi szükségessé, utána pedig példákon kipróbáltuk.

### A szürke dobozok

Az előadáson nem minden állítás kapott bizonyítást: némelyiket csak tényként mondtuk ki, egy másik bizonyítását házi feladatnak hagytuk, egy harmadiknál pedig elhangzott, hogy „most nem nézzük meg”. Ezeket a bizonyításokat **kiegészítésként** megírtuk, de világosszürke háttérrel elkülönítettük a szöveg többi részétől, például így:

::: kiegeszites
**Kiegészítés.** Az ilyen dobozok tartalma *nem hangzott el* az előadáson. Az ott kimondott tételek bizonyítását, illetve a kimondott tényekhez szükséges hiányzó lépéseket tartalmazzák. Első olvasáskor átugorhatók, de vizsgára készülve érdemes őket is végigolvasni: gyakran éppen ezekben derül ki, *miért* igaz valami.
:::

Ami szürke háttér nélkül szerepel, az az előadás anyaga, legfeljebb részletesebben kifejtve.

### Hogyan használjuk ezt a könyvet?

**Lassan és ceruzával.** A kombinatorikában a legtöbb hiba abból adódik, hogy valamit kétszer vagy egyszer sem számolunk meg. Ezért minden képletet érdemes kis esetekre ($n = 1, 2, 3$) kézzel is ellenőrizni.

**A gyakorlattal együtt.** A feladatokat a *Kombinatorika 1 Gyakorlat Feladatsorok* gyűjtemény tartalmazza, a megoldásokat a *Kombinatorika 1 Gyakorlat Megoldások*. Ez a könyv az elméleti hátteret adja hozzájuk.

### A könyvben használt jelölések

- **Definíció**, **Tétel**, **Állítás**, **Lemma**, **Következmény** — a szokásos értelemben. A definíciókat és a tételeket behúzott blokkban szedtük.
- **Bizonyítás** — végét a $\blacksquare$ jel mutatja.
- $[n] = \{1, 2, \dots, n\}$, továbbá $|A|$ az $A$ véges halmaz elemszáma.
- $n! = 1 \cdot 2 \cdots n$, és megállapodás szerint $0! = 1$.
- $\lceil x \rceil$ az $x$ felső egészrésze (a legkisebb egész, amely $\ge x$), $\lfloor x \rfloor$ az alsó egészrésze.

---

# I. RÉSZ: LESZÁMLÁLÁS

A kombinatorika a véges struktúrák tudománya. Ebben a félévben három nagy területével ismerkedünk meg:

- **leszámlálás**: hányféleképpen lehet valamit megtenni, hány adott tulajdonságú objektum van;
- **gráfelmélet**: pontok és az őket összekötő vonalak rendszereinek vizsgálata;
- **halmazrendszerek**: egy alaphalmaz részhalmazainak családjai.

Az első rész a leszámlálásról szól. A kérdések egyszerűen hangzanak („hány átlója van egy konvex 100-szögnek?”, „hányféleképpen ülhet le öt házaspár egy kerek asztal köré?”), a válaszhoz azonban rendszerezett gondolkodásra van szükség. Ennek az eszköztárát építjük fel.

## 1. A leszámlálás alapelvei

*Előadás: 2026. 09. 08.*

Minden leszámlálási feladat mögött néhány egészen egyszerű elv áll. Az előadáson ezeket a négy alapművelet jelével foglaltuk össze — érdemes így megjegyezni őket.

### (+) Esetszétválasztás

Ha a megszámlálandó dolgok néhány **diszjunkt** csoportra bonthatók, akkor elég a csoportokat külön-külön megszámolni, és az eredményeket összeadni:
$$A = A_1 \cup A_2 \cup \dots \cup A_k, \quad A_i \cap A_j = \emptyset \ (i \ne j) \implies |A| = |A_1| + |A_2| + \dots + |A_k|.$$

*Példa.* Hány olyan legfeljebb háromjegyű pozitív egész van, amelynek minden jegye páratlan? Válasszuk szét az eseteket a jegyek száma szerint: egyjegyű $5$, kétjegyű $5 \cdot 5 = 25$, háromjegyű $5^3 = 125$ ilyen szám van (a szorzásról lásd alább), összesen $5 + 25 + 125 = 155$. A lényeg az, hogy a csoportok **ne fedjék egymást**, és **együtt mindent lefedjenek**.

### (−) Dobjuk ki a rosszat!

Gyakran könnyebb az *összes* esetet megszámolni, majd levonni belőle a *rosszakat*:
$$|\text{jó}| = |\text{összes}| - |\text{rossz}|.$$

*Példa.* Hány olyan négyjegyű szám van, amelyben előfordul a $7$-es számjegy? Az összes négyjegyű szám $9000$. A „rosszak” azok, amelyekben nincs $7$-es: az első jegy $8$-féle lehet (nem $0$ és nem $7$), a többi $9$-féle, ez $8 \cdot 9^3 = 5832$. A válasz tehát $9000 - 5832 = 3168$. (A $8 \cdot 9^3$ szorzat a következő elvet használta.)

### (×) Független választás

Ha egy objektumot lépésenként választunk ki, és **minden lépésben ugyanannyi lehetőség van, függetlenül attól, hogy korábban mit választottunk**, akkor a lehetőségek száma a lépésenkénti lehetőségszámok szorzata.

*Példa.* Három ingből és négy nadrágból $3 \cdot 4 = 12$-féle öltözék állítható össze.

Figyeljük meg a pontos feltételt: nem az kell, hogy a választások „ne hassanak egymásra”, hanem az, hogy a lehetőségek **száma** ne függjön a korábbi választásoktól. A négyjegyű számos példában az első jegy $8$-féle volt, a második jegy $9$-féle — és ez a $9$ akkor is $9$, ha az első jegy $1$, és akkor is, ha $8$.

### (/) A tehénszabály

> **Tehénszabály.** Ha minden objektumot pontosan ugyanannyiszor, mondjuk $d$-szer számoltunk meg, akkor a kapott számot $d$-vel osztva megkapjuk az objektumok számát.

A név onnan ered, hogy egy legelőn a tehenek számát úgy is meghatározhatjuk, hogy megszámoljuk a lábakat, és elosztjuk $4$-gyel. A lényeges feltétel az, hogy **mindegyik** tehénnek $4$ lába legyen: ha egyeseket kétszer, másokat háromszor számoltunk, akkor az osztás nem segít.

*Példa.* Hány átlója van egy konvex $n$-szögnek? Minden csúcsból $n - 3$ átló indul (önmagához és a két szomszédjához nem húzunk átlót). Ez összesen $n(n-3)$ — de így minden átlót **pontosan kétszer** számoltunk, mindkét végpontjánál egyszer. A tehénszabály szerint az átlók száma
$$\frac{n(n-3)}{2}.$$

## 2. A skatulyaelv és a bijekció-elv

### A skatulyaelv

Az előző szakasz elvei *pontos* értéket adtak. A skatulyaelv ezzel szemben *létezést* bizonyít: azt mondja meg, hogy valami biztosan bekövetkezik, de azt nem, hogy hol.

> **Skatulyaelv (egyszerű alak).** Ha $n$ skatulyába $n$-nél több golyót teszünk, akkor lesz olyan skatulya, amelyben egynél több golyó van.

> **Skatulyaelv (általános alak).** Ha $n$ skatulyába $k \cdot n$-nél több golyót teszünk, akkor lesz olyan skatulya, amelyben $k$-nál több, vagyis legalább $k + 1$ golyó van.

Az egyszerű alak a $k = 1$ eset.

::: kiegeszites
**Kiegészítés — a skatulyaelv bizonyítása.** Elég az általános alakot igazolni. Tegyük fel indirekt, hogy minden skatulyában legfeljebb $k$ golyó van. Az esetszétválasztás elve szerint (a golyókat aszerint csoportosítva, hogy melyik skatulyában vannak) a golyók száma ekkor legfeljebb
$$\underbrace{k + k + \dots + k}_{n \text{ darab}} = k \cdot n,$$
ami ellentmond annak, hogy $k \cdot n$-nél több golyó van. $\blacksquare$
:::

*Példa.* Bármely $n + 1$ egész szám között van kettő, amelyek különbsége osztható $n$-nel. Valóban: a skatulyák legyenek az $n$-nel való osztási maradékok ($0, 1, \dots, n-1$), a golyók a számok. Mivel $n + 1 > n$, van két szám azonos maradékkal, és ezek különbsége osztható $n$-nel.

*Példa.* Egy $25$ fős csoportban biztosan van három ember, akik ugyanabban a hónapban született: $12$ skatulya (hónap), $25 > 2 \cdot 12$ golyó, tehát valamelyik hónapra legalább $3$ születésnap jut.

### A bijekció-elv

> **Bijekció-elv (kölcsönösen egyértelmű megfeleltetés).** Ha az $A$ és $B$ véges halmazok elemei között van kölcsönösen egyértelmű megfeleltetés (bijekció), akkor $|A| = |B|$.

Ez kézenfekvőnek tűnik, mégis a leszámlálás egyik leghatékonyabb eszköze. Ha egy halmaz elemeit nehéz közvetlenül megszámolni, keressünk egy másik halmazt, amelynek elemei kölcsönösen egyértelműen megfeleltethetők az elsőéinek, és amelyet *könnyű* megszámolni.

*Példa.* Hány részhalmaza van az $[n] = \{1, \dots, n\}$ halmaznak? Feleltessük meg minden $H \subseteq [n]$ részhalmaznak azt a $0$–$1$ sorozatot, amelynek $i$-edik jegye $1$, ha $i \in H$, és $0$, ha $i \notin H$. Például $n = 5$ esetén a $\{2, 3, 5\}$ részhalmaznak a $01101$ sorozat felel meg. Ez kölcsönösen egyértelmű megfeleltetés, a $0$–$1$ sorozatokat pedig a független választás elvével könnyű megszámolni: minden jegy $2$-féle, tehát $2^n$ sorozat van. Így az $[n]$ halmaznak $2^n$ részhalmaza van.

A félév során a bijekció-elv újra és újra előkerül: a Catalan-számoknál (15. szakasz) és a Prüfer-kódnál (26. szakasz) is ez lesz a kulcs.

## 3. Permutációk és variációk

Ebben és a következő két szakaszban a középiskolából ismert alapvető leszámlálási képleteket foglaljuk össze. Az előadáson a képletek elhangzottak, a levezetésük azonban nem; ezeket a szürke dobozokban pótoljuk. Mindegyik az 1. szakasz négy elvének közvetlen alkalmazása.

### Permutációk

> **Ismétlés nélküli permutáció.** $n$ különböző elemet $n!$-féleképpen lehet sorba rendezni.

::: kiegeszites
**Kiegészítés — bizonyítás.** Független választás: az első helyre $n$ elem közül választhatunk, a másodikra a maradék $n - 1$ közül, …, az utolsó helyre $1$ marad. Minden lépésben a lehetőségek *száma* független attól, hogy korábban mit választottunk, ezért a sorrendek száma $n(n-1)\cdots 1 = n!$. $\blacksquare$
:::

> **Ismétléses permutáció.** Ha $n_1$ darab egyforma első típusú, $n_2$ darab egyforma második típusú, …, $n_k$ darab egyforma $k$-adik típusú elemünk van, akkor ezek sorrendjeinek száma
> $$\frac{(n_1 + n_2 + \dots + n_k)!}{n_1!\, n_2! \cdots n_k!}.$$

::: kiegeszites
**Kiegészítés — bizonyítás (tehénszabály).** Legyen $n = n_1 + \dots + n_k$. Különböztessük meg ideiglenesen az egyforma elemeket is (például számozzuk meg őket). Így $n$ különböző elemünk lesz, ezek sorrendjeinek száma $n!$. Ha a számozást töröljük, egy-egy „valódi” sorrendet többször is megkaptunk: annyiszor, ahányféleképpen az első típusú elemek számozását ($n_1!$-féle), a második típusúakét ($n_2!$-féle), … permutálhatjuk. Ez **minden** valódi sorrendre ugyanannyi, nevezetesen $n_1!\, n_2! \cdots n_k!$, tehát a tehénszabály szerint ezzel osztani kell. $\blacksquare$
:::

*Példa.* A KOMBINATORIKA szó $13$ betűből áll: K, O, I, A kétszer-kétszer, M, B, N, T, R egyszer-egyszer. Az anagrammák (betűsorrendek) száma
$$\frac{13!}{2!\,2!\,2!\,2!} = \frac{6\,227\,020\,800}{16} = 389\,188\,800.$$

### Variációk

> **Ismétlés nélküli variáció.** Ha $n$ különböző elemből $k$ darabot ($k \le n$) választunk ki sorba rendezve, akkor a lehetőségek száma
> $$n(n-1)\cdots(n-k+1) = \frac{n!}{(n-k)!}.$$

> **Ismétléses variáció.** Ha $n$-féle elemből választunk $k$-szor egymás után, és ugyanaz az elem többször is választható, akkor a lehetőségek száma $n^k$.

::: kiegeszites
**Kiegészítés — bizonyítás.** Mindkettő a független választás elve. Ismétlés nélkül az első helyre $n$, a másodikra $n - 1$, …, a $k$-adikra $n - k + 1$ lehetőség van, és
$$n(n-1)\cdots(n-k+1) = \frac{n(n-1)\cdots(n-k+1)\cdot(n-k)!}{(n-k)!} = \frac{n!}{(n-k)!}.$$
Ismétléssel mind a $k$ helyre $n$-féle elem kerülhet, ez $n \cdot n \cdots n = n^k$. $\blacksquare$
:::

*Példa.* Egy $20$ fős futóversenyen az első három hely $20 \cdot 19 \cdot 18 = 6840$-féleképpen alakulhat. Egy $4$ jegyű PIN-kód $10^4$-féle lehet.

## 4. Kombinációk és a binomiális együtthatók

*Előadás: 2026. 09. 10.*

Most olyan kiválasztásokat számolunk, amelyekben a **sorrend nem számít**.

> **Kérdés.** Adott $n$ különböző elem. Hányféleképpen választhatunk ki közülük $k$ darabot, ha a kiválasztás sorrendje nem számít? (Más szóval: hány $k$ elemű részhalmaza van egy $n$ elemű halmaznak?)

Az előző szakasz szerint, ha a sorrend számítana, a válasz $n(n-1)\cdots(n-k+1)$ volna. Ebben a számolásban azonban minden $k$ elemű részhalmazt többször is megkaptunk: annyiszor, ahányféleképpen az elemeit sorba lehet rendezni, vagyis **mindegyiket pontosan $k!$-szor**. A tehénszabály szerint tehát a $k$ elemű részhalmazok száma
$$\frac{n(n-1)\cdots(n-k+1)}{k!} = \frac{n!}{(n-k)!\,k!}.$$

> **Definíció (binomiális együttható).** Legyen $0 \le k \le n$ egész. Az
> $$\binom{n}{k} = \frac{n!}{k!\,(n-k)!}$$
> számot **binomiális együtthatónak** nevezzük (olvasd: „$n$ alatt a $k$”). Ez egy $n$ elemű halmaz $k$ elemű részhalmazainak száma.

A név a 6. szakaszban kimondandó binomiális tételből származik. Kényelmes megállapodás, hogy $k < 0$ vagy $k > n$ esetén $\binom{n}{k} = 0$ (ennyi elemű részhalmaz nincs).

Az előadáson a binomiális együtthatók három alapvető tulajdonsága hangzott el.

> **Állítás.** Minden $n \ge 0$ és $0 \le k \le n$ esetén
>
> 1. $\binom{n}{0} = \binom{n}{n} = 1$;
> 2. $\binom{n}{k} = \binom{n}{n-k}$ (szimmetria);
> 3. ha $n \ge 1$ és $1 \le k \le n$, akkor $\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}$ (Pascal-szabály).

::: kiegeszites
**Kiegészítés — bizonyítás.** Mindhárom állítást kétféleképpen is igazoljuk: számolással és „kombinatorikusan”, vagyis annak alapján, hogy mit számol meg a két oldal. A második módszer a fontosabb, mert megmutatja, *miért* igaz az azonosság.

1. *Számolással:* $\frac{n!}{0!\,n!} = 1$. *Kombinatorikusan:* $0$ elemű részhalmaz egy van (az üres halmaz), $n$ elemű is egy (az egész halmaz).

2. *Számolással:* a definícióban $k$ és $n - k$ szerepe szimmetrikus: $\binom{n}{n-k} = \frac{n!}{(n-k)!\,(n-(n-k))!} = \frac{n!}{(n-k)!\,k!}$. *Kombinatorikusan:* a $H \mapsto [n] \setminus H$ megfeleltetés (komplementerképzés) bijekció a $k$ elemű és az $n - k$ elemű részhalmazok között, mert kétszer alkalmazva visszaadja $H$-t. A bijekció-elv szerint a kettő száma egyenlő. Szemléletesen: kiválasztani azt a $k$ elemet, amelyet *elviszünk*, ugyanaz, mint kiválasztani azt az $n - k$-t, amelyet *otthagyunk*.

3. *Kombinatorikusan:* osszuk két csoportba az $[n]$ halmaz $k$ elemű részhalmazait aszerint, hogy tartalmazzák-e az $n$ elemet (esetszétválasztás).
   - Ha **tartalmazzák**, akkor a többi $k - 1$ elemüket az $[n-1]$ halmazból kell választani: ez $\binom{n-1}{k-1}$ lehetőség.
   - Ha **nem tartalmazzák**, akkor mind a $k$ elemük az $[n-1]$ halmazból kerül ki: $\binom{n-1}{k}$ lehetőség.

   A két csoport diszjunkt, és együtt mindent lefed, így $\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}$. (A $k = n$ esetben a második tag $\binom{n-1}{n} = 0$, ami a megállapodásunkkal összhangban van.)

   *Számolással* ($1 \le k \le n - 1$ esetén): közös nevezőre hozva
   $$\binom{n-1}{k-1} + \binom{n-1}{k} = \frac{(n-1)!}{(k-1)!\,(n-k)!} + \frac{(n-1)!}{k!\,(n-1-k)!} = \frac{(n-1)!\,\big(k + (n-k)\big)}{k!\,(n-k)!} = \frac{n!}{k!\,(n-k)!}. \ \blacksquare$$
:::

## 5. Ismétléses kombináció

> **Kérdés.** Egy fagyizóban $n$-féle fagylalt kapható. Hányféleképpen kérhetünk $k$ gombócot, ha egy fajtából több gombóc is lehet, és a gombócok sorrendje nem számít?

Itt a kiválasztott „elemek” ismétlődhetnek, ezért a $\binom{n}{k}$ képlet nem alkalmazható. Az előadáson egy szép ötlettel oldottuk meg a feladatot, amely a bijekció-elvre épül.

**Az ötlet.** Rendezzük a fajtákat sorba ($1., 2., \dots, n.$ fajta), és egy rendelést írjunk le így: először annyi pöttyöt (●) rajzolunk, ahány gombócot az 1. fajtából kérünk, aztán egy elválasztó vonalat (|), majd annyi pöttyöt, ahány gombócot a 2. fajtából kérünk, aztán újra elválasztót, és így tovább. Például $n = 5$ fajta és $k = 7$ gombóc esetén a
$$\bullet\,\bullet \;|\; \;|\; \bullet\,\bullet\,\bullet \;|\; \bullet \;|\; \bullet$$
jelsorozat azt a rendelést jelenti, amelyben az 1. fajtából $2$, a 2.-ból $0$, a 3.-ból $3$, a 4.-ből és az 5.-ből $1$-$1$ gombócot kérünk.

Minden ilyen jelsorozat **$k$ pöttyből és $n - 1$ elválasztóból** áll ($n$ fajtát $n - 1$ vonal választ el), és megfordítva: minden olyan sorozat, amely $k$ pöttyből és $n - 1$ vonalból áll, pontosan egy rendelést ír le. Ez tehát kölcsönösen egyértelmű megfeleltetés a rendelések és az ilyen jelsorozatok között.

A jelsorozatokat már könnyű megszámolni: összesen $k + n - 1$ hely van, és ezek közül kell kiválasztani azt a $k$-t, ahová pötty kerül (a többi helyre elválasztó jön). A válasz tehát
$$\frac{(k+n-1)!}{k!\,(n-1)!} = \binom{k + n - 1}{k}.$$

> **Tétel (ismétléses kombináció).** Ha $n$-féle elemből $k$ darabot választunk ki úgy, hogy egy elem többször is választható, és a sorrend nem számít, akkor a lehetőségek száma
> $$\binom{n + k - 1}{k}.$$

*Példa.* $4$-féle fagyiból $3$ gombócot $\binom{6}{3} = 20$-féleképpen kérhetünk.

**Másik szemlélet.** Ugyanez a szám adja meg az $x_1 + x_2 + \dots + x_n = k$ egyenlet nemnegatív egész megoldásainak számát is: $x_i$ az $i$-edik fajtából kért gombócok száma.

## 6. A Pascal-háromszög és a binomiális tétel

### A Pascal-háromszög

Írjuk a binomiális együtthatókat háromszög alakba úgy, hogy az $n$-edik sorba (a számozás $0$-tól indul) a $\binom{n}{0}, \binom{n}{1}, \dots, \binom{n}{n}$ számok kerüljenek:

$$\begin{array}{c} 1 \\ 1\quad 1 \\ 1\quad 2\quad 1 \\ 1\quad 3\quad 3\quad 1 \\ 1\quad 4\quad 6\quad 4\quad 1 \\ 1\quad 5\quad 10\quad 10\quad 5\quad 1 \\ 1\quad 6\quad 15\quad 20\quad 15\quad 6\quad 1 \end{array}$$

Ez a **Pascal-háromszög**. A 4. szakasz állításai itt szemmel láthatók: minden sor $1$-gyel kezdődik és végződik, a sorok szimmetrikusak, és — a Pascal-szabály szerint — minden belső szám a felette álló két szám összege. A háromszöget tehát fentről lefelé, összeadással is fel lehet építeni, faktoriálisok számolása nélkül.

### A binomiális tétel

> **Tétel (binomiális tétel).** Minden $x, y$ valós számra és $n \ge 0$ egészre
> $$(x+y)^n = \sum_{i=0}^{n} \binom{n}{i} x^{n-i} y^i = \binom{n}{0}x^n + \binom{n}{1}x^{n-1}y + \dots + \binom{n}{n}y^n.$$

*Bizonyítás.* Írjuk ki a hatványt szorzatként:
$$(x+y)^n = \underbrace{(x+y)(x+y)\cdots(x+y)}_{n \text{ tényező}}.$$
A zárójeleket felbontva úgy kapunk egy tagot, hogy **mindegyik** tényezőből kiválasztjuk vagy az $x$-et, vagy az $y$-t, és a kiválasztottakat összeszorozzuk. Ha $i$ tényezőből választottuk az $y$-t (és a maradék $n - i$-ből az $x$-et), akkor az $x^{n-i}y^i$ tagot kapjuk. Hányszor kapjuk ezt a tagot? Annyiszor, ahányféleképpen az $n$ tényezőből kiválasztható az az $i$, amelyből $y$-t veszünk — ez $\binom{n}{i}$. Az összevonás után tehát $x^{n-i}y^i$ együtthatója $\binom{n}{i}$. $\blacksquare$

Innen ered a „binomiális együttható” elnevezés: ezek az $(x + y)^n$ kéttagú (binom) kifejezés kifejtésének együtthatói. Például $(x+y)^4 = x^4 + 4x^3y + 6x^2y^2 + 4xy^3 + y^4$ — az együtthatók a Pascal-háromszög 4. sora.

### Következmények: a Pascal-háromszög sorainak összege

A binomiális tételbe konkrét számokat helyettesítve azonosságokat kapunk.

**Az $x = y = 1$ helyettesítés.**
$$\binom{n}{0} + \binom{n}{1} + \dots + \binom{n}{n} = \sum_{i=0}^{n} \binom{n}{i} = (1+1)^n = 2^n.$$
A Pascal-háromszög $n$-edik sorában álló számok összege tehát $2^n$.

::: kiegeszites
**Kiegészítés — kombinatorikus bizonyítás.** A számolás helyett érdemes meggondolni, mit számol meg a két oldal. A jobb oldal, $2^n$, az $[n]$ halmaz összes részhalmazának száma (2. szakasz). A bal oldal ugyanezeket a részhalmazokat számolja meg, csak **elemszám szerint csoportosítva** (esetszétválasztás): $\binom{n}{0}$ darab $0$ elemű, $\binom{n}{1}$ darab $1$ elemű, …, $\binom{n}{n}$ darab $n$ elemű részhalmaz van. A két szám tehát ugyanannak a halmaznak az elemszáma. $\blacksquare$

(A kézírásos jegyzetben szerepel egy kísérlet arra is, hogy az azonosságot a $\frac{n!}{k!\,(n-k)!}$ törtek közvetlen összeadásával igazoljuk. Ez nem vezet egyszerűen célhoz — jó példa arra, hogy a kombinatorikus érvelés sokszor sokkal rövidebb a számolásnál.)
:::

**Az $x = 1$, $y = -1$ helyettesítés.** Ha $n \ge 1$, akkor
$$\binom{n}{0} - \binom{n}{1} + \binom{n}{2} - \binom{n}{3} + \dots + (-1)^n\binom{n}{n} = (1 - 1)^n = 0.$$
A Pascal-háromszög sorainak **váltakozó előjelű összege** tehát $0$ (kivéve a $0$-adik sort, ahol az összeg $1$). Ezt az azonosságot a következő szakaszban, a logikai szita bizonyításában fogjuk használni.

Ha az azonosságban a negatív tagokat átvisszük a másik oldalra, azt kapjuk, hogy
$$\binom{n}{0} + \binom{n}{2} + \binom{n}{4} + \dots = \binom{n}{1} + \binom{n}{3} + \binom{n}{5} + \dots$$
A két oldal összege $2^n$, így mindkét oldal $2^{n-1}$. Kombinatorikusan:

> **Következmény.** Egy $n \ge 1$ elemű alaphalmaznak ugyanannyi páros elemszámú, mint páratlan elemszámú részhalmaza van, nevezetesen mindkettőből $2^{n-1}$.

::: kiegeszites
**Kiegészítés — bijektív bizonyítás.** A következmény számolás nélkül is belátható. Rögzítsük az alaphalmaz egy elemét, mondjuk az $1$-et, és minden $H$ részhalmazhoz rendeljük hozzá azt a $H'$ halmazt, amelyet úgy kapunk, hogy az $1$-et „átbillentjük”: ha $1 \in H$, kivesszük, ha $1 \notin H$, betesszük. Ez a megfeleltetés kétszer alkalmazva visszaadja $H$-t, tehát bijekció; és mivel $|H'| = |H| \pm 1$, a páros elemszámú részhalmazokat éppen a páratlan elemszámúakba viszi. A bijekció-elv szerint a kettő száma egyenlő. $\blacksquare$
:::

**Érdekesség: az $x = 1$, $y = i$ helyettesítés.** Az előadáson elhangzott, hogy érdemes az $(1 + i)^n$ komplex számot is megvizsgálni.

::: kiegeszites
**Kiegészítés — mit ad az $(1+i)^n$?** A binomiális tétel komplex számokra is igaz (a bizonyítás szó szerint ugyanaz). Mivel $i^2 = -1$, $i^3 = -i$, $i^4 = 1$, az
$$(1+i)^n = \sum_{k=0}^{n} \binom{n}{k} i^k$$
összegben a páros $k$-jú tagok valósak, váltakozó előjellel, a páratlanok képzetesek. A valós részeket összevetve
$$\binom{n}{0} - \binom{n}{2} + \binom{n}{4} - \binom{n}{6} + \dots = \operatorname{Re}\,(1+i)^n = 2^{n/2}\cos\frac{n\pi}{4},$$
hiszen $1 + i = \sqrt{2}\,\big(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\big)$, és a Moivre-képlet szerint $(1+i)^n = 2^{n/2}\big(\cos\frac{n\pi}{4} + i \sin\frac{n\pi}{4}\big)$. Például $n = 4$ esetén $1 - 6 + 1 = -4 = (1+i)^4$, hiszen $(1+i)^2 = 2i$.

Ezzel a „minden negyedik” binomiális együttható összege is kiszámolható. Ha az $(1+1)^n$, $(1-1)^n$, $(1+i)^n$, $(1-i)^n$ kifejtéseket összeadjuk, akkor $\binom{n}{k}$ együtthatója $1 + (-1)^k + i^k + (-i)^k$, ami $4$, ha $4 \mid k$, és $0$ egyébként. Ezért $n \ge 1$ esetén
$$\binom{n}{0} + \binom{n}{4} + \binom{n}{8} + \dots = \frac{2^n + 0 + (1+i)^n + (1-i)^n}{4} = \frac{2^n + 2^{n/2+1}\cos\frac{n\pi}{4}}{4}.$$
Ellenőrzés $n = 4$-re: $\binom{4}{0} + \binom{4}{4} = 2$, és a jobb oldal $\frac{16 - 8}{4} = 2$.
:::

## 7. A logikai szita

### Egy bevezető példa

Egy $80$ fős évfolyamon a diákok angolul (A), németül (N) és franciául (F) tanulhatnak. Tudjuk, hogy

- angolul $25$, németül $24$, franciául $23$ diák tanul;
- angolul és németül $10$, angolul és franciául $9$, németül és franciául $7$ diák tanul;
- mindhárom nyelvet $1$ diák tanulja.

**Hányan nem tanulnak egyik nyelvet sem?**

Az első ötlet: $80 - 25 - 24 - 23 = 8$. Ez azonban hibás, mert aki két nyelvet tanul, azt kétszer vontuk le. Adjuk tehát vissza a párokat: $8 + 10 + 9 + 7 = 34$. De most meg az, aki mindhárom nyelvet tanulja, háromszor lett levonva és háromszor visszaadva, vagyis egyszer sem vontuk le — pedig le kellene. Vonjuk le tehát még egyszer:
$$80 - (25 + 24 + 23) + (10 + 9 + 7) - 1 = 33.$$

Ellenőrizzük egy Venn-diagrammal! Belülről kifelé haladva: mindhárom nyelvet $1$ diák tanulja; csak angolul és németül $10 - 1 = 9$, csak angolul és franciául $9 - 1 = 8$, csak németül és franciául $7 - 1 = 6$; csak angolul $25 - 9 - 8 - 1 = 7$, csak németül $24 - 9 - 6 - 1 = 8$, csak franciául $23 - 8 - 6 - 1 = 8$. Legalább egy nyelvet tehát $1 + 9 + 8 + 6 + 7 + 8 + 8 = 47$ diák tanul, egyiket sem $80 - 47 = 33$. Egyezik.

Az eljárás neve **logikai szita** (vagy szitaformula, angolul *inclusion–exclusion*): felváltva vonunk le és adunk hozzá, mintha egy szitán rostálnánk át a halmazt.

### Az általános szitaformula

Legyen $A$ egy véges **alaphalmaz**, és $A_1, A_2, \dots, A_n \subseteq A$ részhalmazai. (A példában $A$ az évfolyam, $A_1, A_2, A_3$ az angolul, németül, illetve franciául tanulók halmaza.) Tegyük fel, hogy ismerjük az $|A|$, $|A_i|$, $|A_i \cap A_j|$, $|A_i \cap A_j \cap A_k|$, … számokat, és azt szeretnénk tudni, hány elem nem tartozik egyik $A_i$-hez sem, vagyis mennyi
$$\big|A \setminus (A_1 \cup A_2 \cup \dots \cup A_n)\big|.$$

> **Tétel (logikai szita).**
> $$\Big|A \setminus \bigcup_{i=1}^{n} A_i\Big| = |A| - \sum_{i} |A_i| + \sum_{i < j} |A_i \cap A_j| - \sum_{i<j<k} |A_i \cap A_j \cap A_k| + \dots + (-1)^n |A_1 \cap A_2 \cap \dots \cap A_n|.$$
> Itt a $\sum_{i<j}$ összeg az összes $\binom{n}{2}$ párra, a $\sum_{i<j<k}$ az összes $\binom{n}{3}$ hármasra fut, és így tovább.

Tömörebben: ha $I \subseteq [n]$ esetén $A_I = \bigcap_{i \in I} A_i$ és $A_\emptyset = A$, akkor
$$\Big|A \setminus \bigcup_{i=1}^{n} A_i\Big| = \sum_{I \subseteq [n]} (-1)^{|I|}\, |A_I|.$$

*Bizonyítás.* A jobb oldal egy összeg, amelyben minden $x \in A$ elemet néhányszor pozitív, néhányszor negatív előjellel számolunk. Azt kell megmutatnunk, hogy minden elemet pontosan annyiszor számolunk, ahányszor kell — az előadás szavaival: **mindenkit „pontosan egyszer”**. Vagyis aki egyik $A_i$-ben sincs benne, azt összesen $1$-szer, aki valamelyikben benne van, azt összesen $0$-szor.

Legyen $x \in A$ tetszőleges, és tegyük fel, hogy $x$ pontosan $t$ darab $A_i$ halmaznak eleme.

- Ha $t = 0$, akkor $x$ csak az $|A|$ tagban szerepel, ott $+1$-gyel. Összesen tehát egyszer számoltuk — helyes.
- Ha $t \ge 1$, akkor $x$ szerepel az $|A|$ tagban ($+1$-szer); a $\sum |A_i|$ összegben annyiszor, ahány halmaznak eleme, vagyis $t = \binom{t}{1}$-szer, negatív előjellel; a $\sum |A_i \cap A_j|$ összegben annyiszor, ahány párnak a metszetében benne van — ez a $t$ halmaz közül választott párok száma, $\binom{t}{2}$ —, pozitív előjellel; és így tovább. Az $x$ elemet tehát összesen
$$\binom{t}{0} - \binom{t}{1} + \binom{t}{2} - \binom{t}{3} + \dots + (-1)^t\binom{t}{t}$$
alkalommal számoltuk, ami a 6. szakasz szerint — a Pascal-háromszög $t$-edik sorának váltakozó előjelű összegeként — $0$, mert $t > 0$. Helyes.

Mivel minden elemet pontosan annyiszor számoltunk, ahányszor kell, az összeg valóban a keresett elemszámot adja. $\blacksquare$

**Megjegyzés.** A tétel ekvivalens a gyakran használt
$$|A_1 \cup \dots \cup A_n| = \sum_i |A_i| - \sum_{i<j} |A_i \cap A_j| + \dots + (-1)^{n+1}|A_1 \cap \dots \cap A_n|$$
alakkal: ez a fenti képletből $|A \setminus \bigcup A_i| = |A| - |\bigcup A_i|$ felhasználásával adódik. Két halmazra ez az ismert $|A_1 \cup A_2| = |A_1| + |A_2| - |A_1 \cap A_2|$ képlet.

## 8. A logikai szita alkalmazásai

*Előadás: 2026. 09. 15.*

A szitaformulát akkor érdemes használni, ha a „rossz” tulajdonságok **metszeteit** könnyű megszámolni, a „jó” elemeket közvetlenül viszont nehéz. Három alkalmazást nézünk meg.

### Első alkalmazás: egy azonosság $n!$-ra

> **Állítás.** Minden $n \ge 1$ esetén
> $$n! = n^n - \binom{n}{1}(n-1)^n + \binom{n}{2}(n-2)^n - \dots + (-1)^n\binom{n}{n}\,0^n = \sum_{j=0}^{n} (-1)^j \binom{n}{j}(n-j)^n.$$

Elsőre meglepő, hogy egy ilyen bonyolult összeg egyszerűen $n!$. Ellenőrizzük kis esetekre: $n = 2$-re $4 - 2 \cdot 1 + 0 = 2$, $n = 3$-ra $27 - 3 \cdot 8 + 3 \cdot 1 - 0 = 6$. A bizonyítás kulcsa, hogy mindkét oldal **ugyanazt** számolja meg.

*Bizonyítás.* Osszunk ki $n$ különböző tárgyat $n$ embernek (minden tárgyat valakinek odaadunk, egy ember több tárgyat is kaphat). Számoljuk meg, hány olyan kiosztás van, amelyben **mindenki kap valamit**.

- *Közvetlenül:* ha $n$ tárgyat $n$ ember között úgy osztunk ki, hogy mindenki kap, akkor mindenki pontosan egyet kap. Ez egy sorba rendezés: $n!$ lehetőség.
- *Szitával:* legyen $A$ az összes kiosztás halmaza; minden tárgy $n$ ember valamelyikéhez kerül, így $|A| = n^n$. Legyen $A_i$ azoknak a kiosztásoknak a halmaza, amelyekben az $i$-edik ember **nem kap semmit**. Ha $I$ egy $j$ elemű embercsoport, akkor $A_I$-ben az $I$-beli emberek semmit sem kapnak, a tárgyak tehát a maradék $n - j$ ember között oszlanak meg: $|A_I| = (n-j)^n$. Mivel $j$ elemű csoport $\binom{n}{j}$ van, a szitaformula szerint a jó kiosztások száma
$$\sum_{j=0}^{n} (-1)^j \binom{n}{j}(n-j)^n.$$

Ugyanazt a mennyiséget kétféleképpen számoltuk meg, így a két eredmény egyenlő. $\blacksquare$

**Megjegyzés.** Ugyanez a számolás $k$ tárgyra azt adja, hogy $k$ különböző tárgyat $n$ embernek úgy, hogy mindenki kapjon, $\sum_{j=0}^{n} (-1)^j \binom{n}{j}(n-j)^k$-féleképpen lehet kiosztani (ennyi $[k] \to [n]$ szürjektív függvény van). Ha $k < n$, ez $0$ — ami szintén egy nem nyilvánvaló azonosság.

### Második alkalmazás: fixpontmentes permutációk

> **A ruhatár-probléma.** Egy színházi előadás után a ruhatáros $n$ kabátot teljesen véletlenszerűen ad vissza $n$ embernek. Hányféleképpen történhet ez úgy, hogy **senki se** a saját kabátját kapja vissza?

Matematikailag: az $[n]$ halmaz $\pi$ permutációit (önmagára vett bijekcióit) vizsgáljuk. Az $i$ pont **fixpontja** $\pi$-nek, ha $\pi(i) = i$ (az $i$-edik ember a saját kabátját kapta). A kérdés: hány **fixpontmentes** permutáció van? Jelöljük ezt $D_n$-nel.

*Megoldás szitával.* Legyen $A$ az összes permutáció halmaza, $|A| = n!$. Legyen $A_i$ azoknak a permutációknak a halmaza, amelyekben $i$ fixpont.

- $|A_i| = (n-1)!$: az $i$ helyben marad, a többi $n - 1$ elem tetszőlegesen permutálható.
- $|A_i \cap A_j| = (n-2)!$: $i$ és $j$ is helyben marad.
- $|A_i \cap A_j \cap A_k| = (n-3)!$, és általában egy $j$ elemű $I$ halmazra $|A_I| = (n-j)!$.

A szitaformula szerint
$$D_n = n! - \binom{n}{1}(n-1)! + \binom{n}{2}(n-2)! - \dots + (-1)^n\binom{n}{n}0!.$$
Mivel $\binom{n}{j}(n-j)! = \frac{n!}{j!\,(n-j)!}(n-j)! = \frac{n!}{j!}$, ez egyszerűbb alakra hozható:

> **Tétel.** Az $[n]$ halmaz fixpontmentes permutációinak száma
> $$D_n = n!\left(\frac{1}{0!} - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \dots + \frac{(-1)^n}{n!}\right) = n!\sum_{j=0}^{n}\frac{(-1)^j}{j!}.$$

Az első néhány érték: $D_1 = 0$, $D_2 = 1$, $D_3 = 2$, $D_4 = 9$, $D_5 = 44$. (Például $D_3 = 2$: a $231$ és a $312$ permutáció.)

**Mit mond ez a valószínűségről?** Annak a valószínűsége, hogy véletlen kabátkiosztásnál senki sem kapja a sajátját, $\frac{D_n}{n!}$ — ez éppen a zárójelben álló összeg. Az előadáson elhangzott, hogy ez $n \to \infty$ esetén $\frac{1}{e} \approx 0{,}3679$-hez tart. Meglepő módon tehát a valószínűség gyakorlatilag nem függ attól, hogy $5$ vagy $500$ ember van a ruhatárban.

::: kiegeszites
**Kiegészítés — miért $\frac{1}{e}$?** Az analízisből ismert, hogy az exponenciális függvény hatványsora minden valós $x$-re konvergens, és $e^x = \sum_{j=0}^{\infty} \frac{x^j}{j!}$; speciálisan
$$\frac{1}{e} = e^{-1} = \sum_{j=0}^{\infty} \frac{(-1)^j}{j!}.$$
A $\frac{D_n}{n!}$ szám ennek a sornak az első $n + 1$ tagjából álló részletösszege, tehát valóban $\frac{1}{e}$-hez tart.

Ennél több is igaz: **$D_n$ az $\frac{n!}{e}$ számhoz legközelebbi egész** ($n \ge 1$). Valóban,
$$\frac{n!}{e} - D_n = n!\sum_{j=n+1}^{\infty} \frac{(-1)^j}{j!} = (-1)^{n+1}\left(\frac{1}{n+1} - \frac{1}{(n+1)(n+2)} + \frac{1}{(n+1)(n+2)(n+3)} - \dots\right).$$
A zárójelben egy váltakozó előjelű sor áll, amelynek tagjai abszolút értékben szigorúan csökkenően tartanak $0$-hoz. Az ilyen sor összege (a Leibniz-típusú sorokról tanultak szerint) az első tag és $0$ közé esik, így
$$\left|\frac{n!}{e} - D_n\right| < \frac{1}{n+1} \le \frac{1}{2}.$$
Például $\frac{5!}{e} \approx 44{,}146$, és valóban $D_5 = 44$.
:::

### Harmadik alkalmazás: az Euler-féle $\varphi$ függvény

> **Definíció.** Egy $n \ge 1$ egészre $\varphi(n)$ az $[n] = \{1, \dots, n\}$ halmaz azon elemeinek száma, amelyek **relatív prímek** $n$-hez (vagyis $n$-nel vett legnagyobb közös osztójuk $1$).

Például $\varphi(10) = |\{1, 3, 7, 9\}| = 4$, és $\varphi(p) = p - 1$ minden $p$ prímre. (Az előadáson $f(n)$-nel jelöltük; a $\varphi$ jelölés a számelméletben szokásos.)

**Hogyan számolható ki $\varphi(n)$ általában?** Legyen $n > 1$ prímtényezős felbontása
$$n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k},$$
ahol $p_1, \dots, p_k$ különböző prímek. Egy $m \in [n]$ szám pontosan akkor **nem** relatív prím $n$-hez, ha van közös prímosztójuk, vagyis ha valamelyik $p_i$ osztja $m$-et. Ez tipikus szitahelyzet:

- az alaphalmaz $A = [n]$, $|A| = n$;
- $A_i$ a $p_i$-vel osztható elemek halmaza, $|A_i| = \frac{n}{p_i}$;
- $A_i \cap A_j$ a $p_i p_j$-vel osztható elemek halmaza, $|A_i \cap A_j| = \frac{n}{p_i p_j}$; és így tovább.

A szitaformula szerint
$$\varphi(n) = n - \frac{n}{p_1} - \frac{n}{p_2} - \dots - \frac{n}{p_k} + \frac{n}{p_1p_2} + \frac{n}{p_1p_3} + \dots + \frac{n}{p_{k-1}p_k} - \frac{n}{p_1p_2p_3} - \dots$$
és ez a kifejezés szorzattá alakítható:

> **Tétel.** Ha $n > 1$ különböző prímosztói $p_1, \dots, p_k$, akkor
> $$\varphi(n) = n\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right)\cdots\left(1 - \frac{1}{p_k}\right).$$

Például $\varphi(10) = 10 \cdot \frac{1}{2} \cdot \frac{4}{5} = 4$ és $\varphi(12) = 12 \cdot \frac{1}{2} \cdot \frac{2}{3} = 4$ (valóban: $1, 5, 7, 11$).

::: kiegeszites
**Kiegészítés — a két hiányzó lépés.**

*1. A metszetek elemszáma.* Legyen $I \subseteq [k]$ nemüres, és $d = \prod_{i \in I} p_i$. Egy $m$ szám pontosan akkor osztható minden $p_i$-vel ($i \in I$), ha osztható $d$-vel: az egyik irány nyilvánvaló, a másik a prímfelbontás egyértelműségéből következik, hiszen a $p_i$-k különböző prímek, így mind szerepelnek $m$ prímfelbontásában. Tehát $A_I$ a $d$ többszöröseinek halmaza $[n]$-ben. Mivel $d \mid n$, ezek a $d, 2d, \dots, \frac{n}{d}\cdot d$ számok, vagyis $|A_I| = \frac{n}{d}$.

*2. A szorzattá alakítás.* Bontsuk fel a zárójeleket az
$$n\prod_{i=1}^{k}\left(1 - \frac{1}{p_i}\right)$$
szorzatban! Mint a binomiális tétel bizonyításában, egy tagot úgy kapunk, hogy minden tényezőből vagy az $1$-et, vagy a $-\frac{1}{p_i}$-t választjuk. Ha a második lehetőséget éppen az $I \subseteq [k]$ indexekre választjuk, akkor a kapott tag
$$n \prod_{i \in I}\left(-\frac{1}{p_i}\right) = (-1)^{|I|}\,\frac{n}{\prod_{i\in I} p_i}.$$
Minden $I$ pontosan egyszer fordul elő, így a kifejtés $\sum_{I \subseteq [k]} (-1)^{|I|}\frac{n}{\prod_{i \in I}p_i}$, ami éppen a szitaformula jobb oldala. $\blacksquare$
:::

A következő előadáson két új témát kezdünk el: a **keresési feladatokat** és a **Fibonacci-számokat**.

## Az I. rész összefoglalása

- A leszámlálás négy alapelve: **esetszétválasztás** (+), **a rossz esetek kidobása** (−), **független választás** (×) és a **tehénszabály** (/). Ezekhez jön a **skatulyaelv** (létezés) és a **bijekció-elv** (két halmaz azonos elemszámú, ha kölcsönösen egyértelműen megfeleltethetők).
- Képletek: $n!$, $\frac{(n_1 + \dots + n_k)!}{n_1! \cdots n_k!}$, $\frac{n!}{(n-k)!}$, $n^k$, $\binom{n}{k}$, $\binom{n+k-1}{k}$.
- A binomiális együtthatók tulajdonságai: szimmetria, Pascal-szabály, $\sum_i \binom{n}{i} = 2^n$, a váltakozó összeg $0$ ($n \ge 1$). Binomiális tétel: $(x+y)^n = \sum_i \binom{n}{i}x^{n-i}y^i$.
- **Logikai szita:** $\big|A \setminus \bigcup A_i\big| = \sum_{I}(-1)^{|I|}|A_I|$. Bizonyítás: mindenkit pontosan egyszer számolunk.
- Alkalmazások: $n! = \sum_j (-1)^j\binom{n}{j}(n-j)^n$; a fixpontmentes permutációk száma $D_n = n!\sum_{j=0}^{n}\frac{(-1)^j}{j!} \approx \frac{n!}{e}$; $\varphi(n) = n\prod_{p \mid n}\left(1 - \frac{1}{p}\right)$.

---

# II. RÉSZ: KERESÉS, REKURZIÓK ÉS CATALAN-SZÁMOK

Ebben a részben két új gondolat jelenik meg. Az egyik a **keresés**: hány kérdés kell ahhoz, hogy egy ismeretlen elemet megtaláljunk? A másik a **rekurzió**: egy sorozat tagjait az előző tagokból fejezzük ki, és ebből próbálunk explicit képletet nyerni. A rész végén a Catalan-számok mindkét eddigi eszköztárat — a bijekció-elvet és a rekurziót — egyszerre használják.

## 9. Keresési feladatok: a barkochba

*Előadás: 2026. 09. 17.*

A **barkochba** ismert társasjáték: az egyik játékos gondol valamire, a másik eldöntendő (igen/nem) kérdésekkel próbálja kitalálni. (A játék nevét Bar Kochbáról, a Római Birodalom elleni 132–135-ös zsidó felkelés vezetőjéről kapta.) A matematikai változat a **keresési elmélet** egyik alapfeladata.

> **Feladat.** Valaki gondol egy $x \in \{1, 2, \dots, n\}$ számra. Igen/nem kérdéseket tehetünk fel. Legalább hány kérdés kell ahhoz, hogy **a legrosszabb esetben is** biztosan kitaláljuk $x$-et?

Minden kérdés egyenértékű azzal, hogy „$x \in S$?” valamely $S \subseteq [n]$ halmazra: az $S$ azoknak a számoknak a halmaza, amelyekre a válasz „igen” volna. A kérdés tehát úgy is fogalmazható: hány részhalmazra rákérdezve tudjuk biztosan azonosítani $x$-et?

### Egy példa: $n = 100$

Kérdezzünk mindig úgy, hogy a még szóba jövő számok **felét** (amennyire lehet) fedje le a kérdés. Ekkor a szóba jövő számok száma a válaszoktól függetlenül legfeljebb
$$100 \to 50 \to 25 \to 13 \to 7 \to 4 \to 2 \to 1,$$
vagyis $7$ kérdés elég. Kevesebb nem elég, mert $6$ kérdésre legfeljebb $2^6 = 64$-féle válaszsorozat érkezhet, ez pedig nem tud $100$ különböző számot megkülönböztetni. A kettes hatványok:
$$2^1 = 2,\ 2^2 = 4,\ 2^3 = 8,\ 2^4 = 16,\ 2^5 = 32,\ 2^6 = 64,\ 2^7 = 128,$$
és $\log_2 100 \approx 6{,}64$, tehát a válasz $\lceil \log_2 100 \rceil = 7$.

### Kell is ennyi kérdés

> **Tétel.** Az $\{1, \dots, n\}$ halmazból egy elem kitalálásához a legrosszabb esetben legalább $\lceil \log_2 n \rceil$ kérdés kell — akkor is, ha a kérdéseket a korábbi válaszok ismeretében tehetjük fel.

*Bizonyítás (az ördög ellen játszunk).* Képzeljük el, hogy a gondoló játékos egy rosszindulatú **ördög**, aki nem dönti el előre, melyik számra gondol, hanem menet közben válaszol, mindig úgy, hogy a lehető legjobban megnehezítse a dolgunkat. Csalni azonban nem csalhat (vagy ha csal, és rajtakapjuk, veszít): **mindig lennie kell legalább egy olyan számnak, amellyel az eddigi összes válasza összhangban van.** Ha egy ilyen ördög ellen is kitaláljuk a számot $q$ kérdéssel, akkor bármely „becsületes” gondolóval szemben is.

Jelölje $C_j$ azoknak a számoknak a halmazát, amelyek a $j$-edik válasz után még szóba jönnek (amelyekkel az első $j$ válasz összhangban van); $C_0 = [n]$. A következő kérdés a $C_j$ halmazt két részre vágja: azokra, amelyekre a válasz „igen” volna, és azokra, amelyekre „nem”. Az ördög **stratégiája**: mindig úgy válaszol, hogy a még szóba jövő elemek száma a lehető legnagyobb maradjon, vagyis a nagyobbik részt választja. Ezért
$$|C_{j+1}| \ge \frac{|C_j|}{2}, \quad \text{tehát} \quad |C_1| \ge \frac{n}{2},\ |C_2| \ge \frac{n}{4},\ \dots,\ |C_j| \ge \frac{n}{2^j}.$$

Tegyük fel, hogy $q$ kérdés után biztosan tudjuk a választ. Ekkor $|C_q| = 1$, különben két, a válaszokkal egyaránt összhangban levő szám közül nem tudnánk dönteni (és az ördög mindig a másikat mondaná). Így
$$1 = |C_q| \ge \frac{n}{2^q} \implies 2^q \ge n \implies q \ge \log_2 n,$$
és mivel $q$ egész, $q \ge \lceil \log_2 n \rceil$. $\blacksquare$

### Mi van, ha előre le kell írni az összes kérdést?

A felezgetésnél minden kérdés függ a korábbi válaszoktól: a második kérdés attól függ, hogy a gondolt szám az első kérdésben szereplő felbe esett-e. Mi a helyzet, ha az összes kérdést **előre le kell írnunk**, és csak utána kapjuk meg a válaszokat? Meglepő módon ugyanennyi kérdés ekkor is elég — és ez egyúttal általános $n$-re is igazolja a felső becslést.

> **Állítás.** $\lceil \log_2 n \rceil$ kérdés elég, akkor is, ha az összes kérdést előre le kell írnunk.

*Bizonyítás.* Gondolatban csökkentsük a gondolt számot $1$-gyel, így az $A = \{0, 1, \dots, n-1\}$ halmazból kell kitalálnunk egy elemet. Legyen $m = \lceil \log_2 n \rceil$; ekkor $n \le 2^m$, tehát $A$ minden eleme kisebb $2^m$-nél, így felírható a **kettes számrendszerben** $m$ jeggyel (szükség esetén vezető nullákkal kiegészítve). A kérdések:

1. „Az első (legmagasabb helyiértékű) jegye $1$-es?”
2. „A második jegye $1$-es?”
3. …és így tovább az $m$-edik jegyig.

Az $m$ válasz együtt megadja a gondolt szám összes bináris jegyét, vagyis magát a számot. $\blacksquare$

A két eredményt összevetve: **a barkochbában $\lceil \log_2 n \rceil$ kérdés kell és elég**, és ehhez nem is kell alkalmazkodnunk a válaszokhoz.

**Megjegyzés (információelmélet).** Az alsó becslés így is elmondható: $q$ igen/nem válasz összesen legfeljebb $2^q$-féle válaszsorozatot ad. Ha egy kérdezési stratégiát **bináris fával** ábrázolunk — minden csúcsban egy kérdés áll, és a válasz szerint balra vagy jobbra lépünk —, akkor egy $q$ mélységű fának legfeljebb $2^q$ levele van, minden levélhez pedig legfeljebb egy szám tartozhat. Ehhez $2^q \ge n$ kell. Ez az információelmélet alapgondolata: $n$ lehetőség közül egy kiválasztásához $\log_2 n$ bit információ szükséges.

## 10. A Fibonacci-sorozat

> **Definíció (Fibonacci-számok).** Legyen $F_1 = 1$, $F_2 = 1$, és $n \ge 3$ esetén
> $$F_n = F_{n-1} + F_{n-2}. \qquad (*)$$

Az első néhány tag:

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $F_n$ | 1 | 1 | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 |

A $(*)$ egyenlőség egy **másodrendű rekurzió**: minden tagot az előző **kettőből** állít elő. Fontos látni, hogy a rekurzió (a „képzési szabály”) önmagában **nem határozza meg** a sorozatot: a $2, 5, 7, 12, 19, \dots$ sorozat is kielégíti. A sorozat egyértelmű megadásához **kezdeti feltétel** is kell — itt $F_1 = F_2 = 1$. Kényelmes a sorozatot visszafelé is kiterjeszteni: a $(*)$ szabály szerint $F_2 = F_1 + F_0$, ezért legyen $F_0 = 0$.

Mivel a sorozatot rekurzió definiálja, a tulajdonságait természetes módon **teljes indukcióval** bizonyíthatjuk.

### A Fibonacci-számok összege

> **Feladat.** Mennyi $F_1 + F_2 + \dots + F_k$?

Az első ötlet az lehetne, hogy a tagokat a rekurzió segítségével visszabontjuk $F_1$-re és $F_2$-re, és megszámoljuk, melyik hányszor szerepel. Ez azonban gyorsan áttekinthetetlenné válik. Számoljunk inkább néhány esetet!

| $k$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $F_1 + \dots + F_k$ | 1 | 2 | 4 | 7 | 12 | 20 | 33 |
| $F_{k+2}$ | 2 | 3 | 5 | 8 | 13 | 21 | 34 |

A minta szembeötlő.

> **Állítás.** Minden $k \ge 1$ esetén $\displaystyle\sum_{i=1}^{k} F_i = F_{k+2} - 1$.

*Bizonyítás (teljes indukció $k$ szerint).* $k = 1$-re: $F_1 = 1 = 2 - 1 = F_3 - 1$. Tegyük fel, hogy az állítás igaz $k$-ra, és bizonyítsuk $k + 1$-re:
$$F_1 + \dots + F_k + F_{k+1} = (F_{k+2} - 1) + F_{k+1} = (F_{k+1} + F_{k+2}) - 1 = F_{k+3} - 1,$$
ahol az utolsó lépésben a $(*)$ rekurziót használtuk. $\blacksquare$

Figyeljük meg a módszert: **sejtés kis esetekből, majd bizonyítás indukcióval**. Ez a rekurzív sorozatoknál újra és újra bevált stratégia.

### Egy érdekesség

Az egymást követő Fibonacci-számok hányadosa:
$$\frac{F_3}{F_2} = 2,\quad \frac{F_4}{F_3} = 1{,}5,\quad \frac{F_5}{F_4} \approx 1{,}667,\quad \frac{F_6}{F_5} = 1{,}6,\quad \dots,\quad \frac{F_{10}}{F_9} \approx 1{,}6176,\ \dots$$
Úgy tűnik, a hányados egy $1{,}618\ldots$ körüli számhoz tart. Ez az **aranymetszés** aránya; hogy miért, azt a következő szakaszban, az explicit képlet birtokában látjuk be.

## 11. Lineáris rekurziók: a mértani sorozat ötlete

Létezik-e **explicit képlet** $F_n$-re, amelyből a sorozat tagjai az előzők kiszámolása nélkül is megkaphatók?

### Az ötlet

Keressünk olyan **mértani sorozatot**, amely kielégíti a $(*)$ rekurziót! Ha $a_n = q^n$, akkor a $(*)$ feltétel
$$q^n = q^{n-1} + q^{n-2}.$$
A $q = 0$ megoldás érdektelen (a csupa $0$ sorozatot adja). Ha $q \ne 0$, oszthatunk $q^{n-2}$-vel:
$$q^2 = q + 1, \qquad q^2 - q - 1 = 0, \qquad q_{1,2} = \frac{1 \pm \sqrt{5}}{2}.$$
Tehát a
$$\left(\frac{1+\sqrt5}{2}\right)^n \qquad \text{és} \qquad \left(\frac{1-\sqrt5}{2}\right)^n$$
sorozatok kielégítik a $(*)$ rekurziót. Persze egyik sem a Fibonacci-sorozat (nem is egészek). Hogyan lehetne belőlük „kikeverni” a Fibonacci-számokat?

### A megoldások vektorteret alkotnak

Idézzük fel a lineáris algebrából: egy **vektortér** olyan halmaz, amelynek elemei összeadhatók és számmal szorozhatók, a szokásos szabályok szerint (például $\lambda(v_1 + v_2) = \lambda v_1 + \lambda v_2$). A valós számsorozatok vektorteret alkotnak, ha az összeadást és a számmal szorzást tagonként végezzük: $(a_n) + (b_n) = (a_n + b_n)$ és $c\,(a_n) = (c\,a_n)$.

> **Állítás.** A $(*)$ rekurziót kielégítő sorozatok **alteret** alkotnak a sorozatok vektorterében:
>
> 1. ha $(a_n)$ kielégíti $(*)$-ot és $c \in \mathbb{R}$, akkor $(c \cdot a_n)$ is kielégíti;
> 2. ha $(a_n)$ és $(b_n)$ kielégíti $(*)$-ot, akkor $(a_n + b_n)$ is kielégíti.

*Bizonyítás.* 1. Ha $a_n = a_{n-1} + a_{n-2}$, akkor $c\,a_n = c\,(a_{n-1} + a_{n-2}) = c\,a_{n-1} + c\,a_{n-2}$.

2. Ha $a_n = a_{n-1} + a_{n-2}$ és $b_n = b_{n-1} + b_{n-2}$, akkor összeadva
$$a_n + b_n = (a_{n-1} + b_{n-1}) + (a_{n-2} + b_{n-2}). \ \blacksquare$$

Következésképpen az előbb talált két mértani sorozat bármely **lineáris kombinációja**,
$$a_n = \alpha\left(\frac{1+\sqrt5}{2}\right)^n + \beta\left(\frac{1-\sqrt5}{2}\right)^n,$$
is kielégíti a $(*)$ rekurziót, bármilyen $\alpha, \beta$ számokra. Már csak $\alpha$-t és $\beta$-t kell úgy megválasztani, hogy a **kezdeti feltételek** is teljesüljenek. Ehhez a következő egyszerű, de fontos észrevételre van szükség.

::: kiegeszites
**Kiegészítés — Lemma (egyértelműség).** *Ha az $(a_n)_{n \ge 0}$ és $(b_n)_{n \ge 0}$ sorozatok ugyanazt a másodrendű rekurziót elégítik ki — vagyis valamely rögzített $c_1, c_2$ számokkal $n \ge 2$ esetén $a_n = c_1a_{n-1} + c_2a_{n-2}$ és $b_n = c_1b_{n-1} + c_2b_{n-2}$ —, és $a_0 = b_0$, $a_1 = b_1$, akkor $a_n = b_n$ minden $n$-re.*

*Bizonyítás.* Erős teljes indukció $n$ szerint. $n = 0, 1$-re ez a feltétel. Ha $n \ge 2$, és $a_m = b_m$ minden $m < n$-re, akkor
$$a_n = c_1a_{n-1} + c_2a_{n-2} = c_1b_{n-1} + c_2b_{n-2} = b_n. \ \blacksquare$$

Egy másodrendű rekurzió megoldását tehát az első két tagja egyértelműen meghatározza. Ezért ha olyan $\alpha, \beta$-t találunk, amelyekkel a fenti lineáris kombináció az $n = 0$ és $n = 1$ helyen egyezik a Fibonacci-sorozattal, akkor **minden** $n$-re egyezik vele.
:::

### A Binet-képlet

Írjuk fel a feltételeket $n = 0$ és $n = 1$ esetén ($F_0 = 0$, $F_1 = 1$):

- $n = 0$: $\alpha + \beta = F_0 = 0$, tehát $\beta = -\alpha$.
- $n = 1$: $\alpha\cdot\frac{1+\sqrt5}{2} - \alpha\cdot\frac{1-\sqrt5}{2} = \alpha\sqrt5 = F_1 = 1$, tehát $\alpha = \frac{1}{\sqrt5} = \frac{\sqrt5}{5}$.

> **Tétel (Binet-képlet).** Minden $n \ge 0$ esetén
> $$F_n = \frac{1}{\sqrt5}\left[\left(\frac{1+\sqrt5}{2}\right)^n - \left(\frac{1-\sqrt5}{2}\right)^n\right].$$

Meglepő, hogy a jobb oldal — tele irracionális számokkal — mindig egész. Jelölje $\Phi = \frac{1+\sqrt5}{2} \approx 1{,}618$ és $\Psi = \frac{1-\sqrt5}{2} \approx -0{,}618$ a két gyököt. Mivel $|\Psi| < 1$, a $\Psi^n$ tag gyorsan eltűnik, és a Fibonacci-számok lényegében egy mértani sorozat tagjai: $F_n \approx \frac{\Phi^n}{\sqrt5}$.

::: kiegeszites
**Kiegészítés — az aranymetszés.**

*1. $\frac{F_{n+1}}{F_n} \to \Phi$.* A Binet-képlet szerint, $\Phi^n$-nel egyszerűsítve,
$$\frac{F_{n+1}}{F_n} = \frac{\Phi^{n+1} - \Psi^{n+1}}{\Phi^n - \Psi^n} = \Phi\cdot\frac{1 - (\Psi/\Phi)^{n+1}}{1 - (\Psi/\Phi)^n}.$$
Mivel $|\Psi/\Phi| < 1$, a mértani sorozatokról tanultak szerint $(\Psi/\Phi)^n \to 0$, így a tört $1$-hez, a hányados $\Phi$-hez tart.

*2. $F_n$ a $\frac{\Phi^n}{\sqrt5}$ számhoz legközelebbi egész.* Valóban, $\left|F_n - \frac{\Phi^n}{\sqrt5}\right| = \frac{|\Psi|^n}{\sqrt5} \le \frac{1}{\sqrt5} < \frac12$ minden $n \ge 0$-ra. Például $\frac{\Phi^{10}}{\sqrt5} \approx 55{,}004$, és $F_{10} = 55$.
:::

## 12. Az általános másodrendű lineáris rekurzió

A Fibonacci-sorozatnál alkalmazott módszer jóval általánosabban is működik.

> **Definíció.** **Állandó együtthatós, másodrendű lineáris rekurziónak** nevezzük az
> $$a_n = c_1 a_{n-1} + c_2 a_{n-2} \qquad (n \ge 2) \qquad (**)$$
> összefüggést, ahol $c_1, c_2$ adott számok. Ehhez két **kezdeti feltétel** tartozik: $a_0$ és $a_1$ adott.

(Feltesszük, hogy $c_2 \ne 0$; ha $c_2 = 0$, akkor a rekurzió valójában elsőrendű, és a megoldás egyszerűen mértani sorozat.) Az előző szakasz állítása és bizonyítása szó szerint átvihető: a $(**)$-ot kielégítő sorozatok alteret alkotnak. A lemma szerint pedig minden megoldást egyértelműen meghatároz az $(a_0, a_1)$ pár — szemléletesen: a megoldások altere **kétdimenziós**.

**Az ötlet ugyanaz:** keressünk $(q^n)$ alakú mértani sorozatot, amely kielégíti $(**)$-ot:
$$q^n = c_1 q^{n-1} + c_2 q^{n-2}.$$
Mivel $c_2 \ne 0$, a $q = 0$ nem jó, így $q^{n-2}$-vel oszthatunk:

> **Definíció.** A $(**)$ rekurzió **karakterisztikus egyenlete**
> $$q^2 - c_1 q - c_2 = 0.$$

### Két különböző gyök

> **Tétel.** Ha a karakterisztikus egyenletnek két különböző gyöke van, $q_1 \ne q_2$, akkor a $(**)$ rekurzió minden megoldása
> $$a_n = \alpha\, q_1^n + \beta\, q_2^n$$
> alakú, ahol az $\alpha, \beta$ számokat a kezdeti feltételek egyértelműen meghatározzák.

*Bizonyítás.* A $(q_1^n)$ és a $(q_2^n)$ sorozat kielégíti $(**)$-ot, így — mivel a megoldások alteret alkotnak — tetszőleges $\alpha, \beta$ mellett az $\alpha q_1^n + \beta q_2^n$ sorozat is. Az $n = 0$ és $n = 1$ helyen a kezdeti feltételek:
$$\alpha + \beta = a_0, \qquad \alpha q_1 + \beta q_2 = a_1.$$
Ha ebből a lineáris egyenletrendszerből $\alpha$ és $\beta$ egyértelműen meghatározható, akkor kész vagyunk: a kapott sorozat és $(a_n)$ az első két tagban megegyezik, tehát a lemma szerint minden tagban. $\blacksquare$

::: kiegeszites
**Kiegészítés — az egyenletrendszer megoldása.** Az első egyenlet $q_2$-szeresét a másodikból kivonva $\alpha(q_1 - q_2) = a_1 - a_0q_2$, az első egyenlet $q_1$-szereséből a másodikat kivonva $\beta(q_1 - q_2) = a_0q_1 - a_1$. Mivel $q_1 \ne q_2$, oszthatunk:
$$\alpha = \frac{a_1 - a_0q_2}{q_1 - q_2}, \qquad \beta = \frac{a_0q_1 - a_1}{q_1 - q_2},$$
és ez az egyetlen megoldás. (A lineáris algebra nyelvén: az egyenletrendszer determinánsa $q_2 - q_1 \ne 0$.)

*Komplex gyökök.* Ha a diszkrimináns $c_1^2 + 4c_2 < 0$, akkor a két gyök egymás komplex konjugáltja, $q_2 = \overline{q_1}$. A fenti érvelés szó szerint működik a komplex számok körében is: a megoldás $\alpha q_1^n + \beta q_2^n$, most komplex $\alpha$-val és $\beta$-val. Valós kezdőértékek esetén $\beta = \overline{\alpha}$ adódik, és a két tag összege (egymás konjugáltjai lévén) valós. Például az $a_n = -a_{n-2}$, $a_0 = 0$, $a_1 = 1$ rekurzió karakterisztikus egyenlete $q^2 + 1 = 0$, gyökei $\pm i$, a megoldás $a_n = \frac{i^n - (-i)^n}{2i}$, vagyis a $0, 1, 0, -1, 0, 1, \dots$ periodikus sorozat.
:::

### Kétszeres gyök

Mi a helyzet, ha a karakterisztikus egyenletnek **kétszeres** gyöke van, $q_1 = q_2 = q$? Ez pontosan akkor fordul elő, ha a diszkrimináns $0$, vagyis $c_1^2 + 4c_2 = 0$; ekkor $q = \frac{c_1}{2}$. Ilyenkor a fenti módszer csak **egy** mértani sorozatot ad, $(q^n)$-t, amelynek többszörösei általában nem elégíthetik ki mindkét kezdeti feltételt. Kell egy második, tőle „független” megoldás.

> **Állítás.** Ha a karakterisztikus egyenletnek $q$ kétszeres gyöke, akkor nemcsak a $(q^n)$, hanem az $(n \cdot q^n)$ sorozat is kielégíti a $(**)$ rekurziót.

Az előadáson elhangzott, hogy ez igaz, a bizonyítás házi feladat volt.

::: kiegeszites
**Kiegészítés — bizonyítás.** Azt kell belátnunk, hogy minden $n \ge 2$-re
$$n q^n = c_1 (n-1) q^{n-1} + c_2 (n-2) q^{n-2}.$$
Mivel $q = \frac{c_1}{2} \ne 0$ (hiszen $c_2 \ne 0$ miatt $c_1 \ne 0$), oszthatunk $q^{n-2}$-vel, és átrendezve a bizonyítandó állítás:
$$n q^2 - c_1(n-1)q - c_2(n-2) = 0 \iff n\big(q^2 - c_1q - c_2\big) + \big(c_1 q + 2c_2\big) = 0.$$
Az első zárójel $0$, mert $q$ gyöke a karakterisztikus egyenletnek. A második zárójel:
$$c_1q + 2c_2 = c_1\cdot\frac{c_1}{2} + 2c_2 = \frac{c_1^2 + 4c_2}{2} = 0,$$
mert a diszkrimináns $0$. $\blacksquare$
:::

> **Tétel.** Ha a karakterisztikus egyenletnek $q$ kétszeres gyöke, akkor a $(**)$ rekurzió minden megoldása
> $$a_n = \alpha\, q^n + \beta\, n\, q^n$$
> alakú, ahol $\alpha, \beta$ a kezdeti feltételekből egyértelműen meghatározható.

::: kiegeszites
**Kiegészítés — bizonyítás.** Az állítás és az altér-tulajdonság szerint minden ilyen alakú sorozat megoldás. A kezdeti feltételek: $n = 0$-ra $\alpha = a_0$; $n = 1$-re $(\alpha + \beta)q = a_1$, ahonnan ($q \ne 0$ miatt) $\beta = \frac{a_1}{q} - a_0$. Ezek egyértelműen meghatározott számok, és a lemma szerint a kapott sorozat minden tagban megegyezik $(a_n)$-nel. $\blacksquare$
:::

### Kidolgozott példa

> **Feladat.** Oldjuk meg az $a_n = 4a_{n-1} - 4a_{n-2}$ rekurziót az $a_0 = 2$, $a_1 = 6$ kezdeti feltételekkel!

*Megoldás.* 1. **A karakterisztikus egyenlet felírása:** $q^2 - 4q + 4 = 0$, azaz $(q-2)^2 = 0$. A gyök kétszeres: $q_1 = q_2 = 2$.

2. **Két megoldássorozat:** $(2^n)$ és $(n \cdot 2^n)$, tehát $a_n = \alpha\cdot 2^n + \beta\cdot n\cdot 2^n$.

3. **Kezdeti feltételek:**
   - $n = 0$: $2 = \alpha\cdot 2^0 + \beta\cdot 0\cdot 2^0 = \alpha$, tehát $\alpha = 2$;
   - $n = 1$: $6 = \alpha\cdot 2 + \beta\cdot 1\cdot 2 = 4 + 2\beta$, tehát $\beta = 1$.

4. **Eredmény:** $a_n = 2\cdot 2^n + n\cdot 2^n = (n+2)\cdot 2^n$.

*Ellenőrzés:* a rekurzióból $a_2 = 4\cdot 6 - 4\cdot 2 = 16$, a képletből $a_2 = 4 \cdot 4 = 16$. $\blacksquare$

## 13. A lépcsőmászás feladata

> **Feladat.** Egy $n$ fokú lépcsőn hányféleképpen lehet felmenni, ha minden lépésben $1$ vagy $2$ fokot lépünk?

Ez a feladat jól mutatja a rekurzív gondolkodás menetét, amelyet az előadáson három lépésre bontottunk.

**0. lépés: nevezzük el a keresett mennyiséget.** Jelölje $L_n$ az $n$ fokú lépcsőn való felmenések számát.

**1. lépés: számoljunk ki kis eseteket.**

| $n$ | 1 | 2 | 3 | 4 |
|:-:|:-:|:-:|:-:|:-:|
| $L_n$ | 1 | 2 | 3 | 5 |

Például $n = 3$-ra a lehetőségek: $1+1+1$, $1+2$, $2+1$; $n = 4$-re: $1+1+1+1$, $1+1+2$, $1+2+1$, $2+1+1$, $2+2$.

**2. lépés: keressünk lineáris rekurziót (esetszétválasztással).** Válasszuk szét a felmenéseket aszerint, hogy az **utolsó** lépés $1$ vagy $2$ fokos volt-e. Ha $1$ fokos, akkor előtte az $(n-1)$-edik fokra kellett feljutnunk, ez $L_{n-1}$-féleképpen történhetett. Ha $2$ fokos, akkor előtte az $(n-2)$-edik fokra, ez $L_{n-2}$ lehetőség. A két eset diszjunkt, így $n \ge 3$ esetén
$$L_n = L_{n-1} + L_{n-2}.$$

Ez éppen a Fibonacci-rekurzió! A kezdőértékek: $L_1 = 1 = F_2$ és $L_2 = 2 = F_3$. Mivel a két sorozat ugyanazt a rekurziót elégíti ki, és az első két tagjuk egyezik, a 11. szakasz lemmája szerint (eltolt indexeléssel)
$$L_n = F_{n+1} \quad \text{minden } n \ge 1 \text{ esetén.}$$

## 14. Rácsutak és a tükrözési elv

A Catalan-számok előkészítéseként két, első ránézésre egymástól távoli feladatot vizsgálunk.

### Rácsutak

> **Feladat.** A síkon az $S = (0, 0)$ pontból az $E = (a, b)$ pontba szeretnénk eljutni úgy, hogy minden lépésben $1$-et lépünk **jobbra** vagy $1$-et **felfelé**. Hányféle ilyen útvonal (töröttvonal) van?

> **Állítás.** Az ilyen útvonalak száma $\displaystyle\binom{a+b}{a}$.

::: kiegeszites
**Kiegészítés — bizonyítás.** Minden útvonal pontosan $a$ jobbra és $b$ felfelé lépésből áll, összesen $a + b$ lépésből. Az útvonalat egyértelműen meghatározza, hogy az $a + b$ lépés közül melyik $a$ a jobbra lépés; és minden ilyen kiválasztás pontosan egy útvonalat ad. (Ez bijekció az útvonalak és az $[a+b]$ halmaz $a$ elemű részhalmazai között.) Az útvonalak száma tehát $\binom{a+b}{a}$. Másképp: ez a $J\dots J\,F\dots F$ szó ($a$ darab $J$, $b$ darab $F$) ismétléses permutációinak száma, $\frac{(a+b)!}{a!\,b!}$. $\blacksquare$
:::

### A folyó-probléma

> **Feladat.** Egy egyenes folyó ugyanazon partján áll a $B$ pont és az $M$ pont. A $B$-ből az $M$-be kell eljutnunk úgy, hogy közben **érintjük a folyót** (például vizet merítünk belőle). Melyik a legrövidebb útvonal?

Az ötlet a **tükrözés**. Tükrözzük az $M$ pontot a folyó egyenesére; a tükörképe legyen $M'$. Ha $P$ a folyó egy tetszőleges pontja, akkor a tükrözés miatt $|PM| = |PM'|$, így a $B \to P \to M$ útvonal hossza
$$|BP| + |PM| = |BP| + |PM'| \ge |BM'|$$
a háromszög-egyenlőtlenség szerint, egyenlőséggel pontosan akkor, ha $P$ a $BM'$ szakaszon van. A legrövidebb útvonal tehát az, amelyik a folyót a $BM'$ szakasz és a folyó metszéspontjában érinti.

Valójában többet is kaptunk: egy **kölcsönösen egyértelmű megfeleltetést** a folyót érintő $B \to M$ útvonalak és a $B \to M'$ útvonalak között. Egy folyót érintő útvonalnak az **első** érintési pont *utáni* részét tükrözzük a folyóra, így egy $B$-ből $M'$-be vezető útvonalat kapunk; megfordítva, minden $B \to M'$ útvonal keresztezi a folyót (hiszen $B$ és $M'$ a két ellentétes parton van), és ha az első közös pont utáni részét visszatükrözzük, a folyót érintő $B \to M$ útvonalat kapunk. Ez a két művelet egymás inverze. Ez a **tükrözési elv**, és a következő szakaszban rácsutakra alkalmazzuk.

## 15. A Catalan-számok

A **Catalan-számok** Eugène Charles Catalan belga matematikusról kapták a nevüket. A sorozat első tagjai
$$1, 1, 2, 5, 14, 42, 132, \dots$$
Rengeteg leszámlálási feladat vezet rájuk. Most egy ilyen feladaton keresztül vezetjük be őket, és megmutatjuk, hogyan számolhatók ki: először a tükrözési elvvel, a következő szakaszban pedig — ahol előkerül a rekurziós gondolat is — rekurzióval.

### A pénztár-feladat

> **Feladat.** Egy mozipénztár előtt $2n$ ember áll sorban. A jegy $1$ euróba kerül; $n$ embernél egy $1$ eurós, $n$ embernél egy $2$ eurós érme van. A pénztárban kezdetben **nincs pénz**. A $2$ eurós érmével fizetőknek $1$ eurót vissza kell adni. Hányféle lehet a sorban állók sorrendje (csak azt figyeljük, ki milyen érmével fizet), ha azt szeretnénk, hogy a pénztáros **mindig vissza tudjon adni**?

Ha például az első ember $2$ euróval fizet, akkor nem lehet visszaadni: ez egy rossz sorban állás. Kis esetek: $n = 1$-re csak az $(1, 2)$ sorrend jó; $n = 2$-re az $(1, 1, 2, 2)$ és az $(1, 2, 1, 2)$, tehát $2$ jó sorrend van; $n = 3$-ra $5$.

A feladat sokféle alakban megfogalmazható:

- **$\pm 1$ sorozatok.** Írjunk $+1$-et minden $1$ eurós és $-1$-et minden $2$ eurós fizetőhöz. A pénztárban levő $1$ eurósok száma a sorozat részletösszege. A jó sorrendek tehát éppen azok a sorozatok, amelyek $n$ darab $+1$-ből és $n$ darab $-1$-ből állnak, és **minden kezdőszeletük összege nemnegatív**. Például $n = 5$-re a
$$+\,-\,+\,+\,+\,-\,+\,-\,-\,-$$
sorozat részletösszegei $1, 0, 1, 2, 3, 2, 3, 2, 1, 0$, tehát jó.
- **Helyes zárójelezések.** Ha $+1$ helyett „(”-t, $-1$ helyett „)”-t írunk, a jó sorozatok éppen a helyesen zárójelezett kifejezések $n$ zárójelpárral, például $(\,(\,(\,\dots)\,\dots)\,\dots)$.
- **Rácsutak.** Ezt a változatot érdemes lerajzolni.

### Ábrázoljuk!

Feleltessük meg minden sorrendnek egy rácsutat (töröttvonalat): az $1$ eurós fizető legyen egy **jobbra** lépés, a $2$ eurós egy **felfelé** lépés. Ez kölcsönösen egyértelmű megfeleltetés a sorrendek és a $(0, 0)$-ból az $(n, n)$-be vezető rácsutak között. Ha $j$ ember fizetett már, és közülük $x$ fizetett $1$, $y$ pedig $2$ euróval, akkor az út az $(x, y)$ pontban van, a pénztárban pedig $x - y$ darab $1$ eurós van.

**Mikor rossz egy sorrend?** Pontosan akkor, ha valamikor egy $2$ eurós fizető üres pénztárhoz érkezik, vagyis ha az út valamikor az $y = x$ átló **fölé** lép. Mivel az út rácspontokon halad, ez azt jelenti, hogy az út **rálép az $y = x + 1$ egyenesre**. Ez a **tiltott egyenes**: ha rálépünk, baj van.

### Dobjuk ki a rosszat!

Az összes út száma $\binom{2n}{n}$ (14. szakasz). A jó utak számához meg kell számolnunk a rossz utakat, vagyis azokat, amelyek érintik a tiltott egyenest. Ehhez a tükrözési elvet használjuk.

> **Állítás.** A $(0,0)$-ból $(n, n)$-be vezető, az $y = x + 1$ egyenest érintő rácsutak kölcsönösen egyértelműen megfeleltethetők a $(0, 0)$-ból az $(n-1, n+1)$ pontba vezető rácsutaknak.

*Bizonyítás.* Az $y = x + 1$ egyenesre való tükrözés az $(x, y)$ pontot az $(y - 1, x + 1)$ pontba viszi, és a jobbra lépéseket felfelé lépésekké alakítja, és fordítva. Az $(n, n)$ pont tükörképe $(n-1, n+1)$.

Legyen $P$ egy rossz út, és $T$ az a pont, ahol $P$ **először** érinti a tiltott egyenest. Tükrözzük $P$-nek a $T$ **utáni** részét az egyenesre, a $T$ előtti részt pedig hagyjuk változatlanul. Az így kapott út $(0,0)$-ból indul, és a tükörképbe, $(n-1, n+1)$-be érkezik.

Megfordítva: minden $(0,0) \to (n-1, n+1)$ út érinti a tiltott egyenest. Az $y - x$ különbség ugyanis a $(0,0)$ pontban $0$, a végpontban $2$, és minden lépés $\pm 1$-gyel változtatja, tehát valahol $1$ — ott az út a tiltott egyenesen van. Az első ilyen pont utáni részt visszatükrözve egy $(0,0) \to (n, n)$ rossz utat kapunk.

A két eljárás egymás inverze, mert a tükrözés nem változtat az első érintési ponton és az azt megelőző szakaszon. $\blacksquare$

A 14. szakasz szerint a $(0, 0) \to (n-1, n+1)$ utak száma $\binom{(n-1)+(n+1)}{n-1} = \binom{2n}{n-1}$. Így a jó utak száma $\binom{2n}{n} - \binom{2n}{n-1}$.

> **Tétel (a Catalan-számok képlete).** A pénztár-feladat jó sorrendjeinek száma — az $n$-edik **Catalan-szám** —
> $$C_n = \binom{2n}{n} - \binom{2n}{n-1} = \frac{1}{n+1}\binom{2n}{n}.$$

::: kiegeszites
**Kiegészítés — a második egyenlőség.** Mivel $(n+1)! = (n+1)\cdot n!$ és $n! = n \cdot (n-1)!$,
$$\binom{2n}{n-1} = \frac{(2n)!}{(n-1)!\,(n+1)!} = \frac{(2n)!}{n!\,n!}\cdot\frac{n}{n+1} = \frac{n}{n+1}\binom{2n}{n},$$
így
$$\binom{2n}{n} - \binom{2n}{n-1} = \left(1 - \frac{n}{n+1}\right)\binom{2n}{n} = \frac{1}{n+1}\binom{2n}{n}. \ \blacksquare$$
:::

Az első néhány érték (megállapodás szerint $C_0 = 1$, ami az üres sornak felel meg):

| $n$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $\binom{2n}{n}$ | 1 | 2 | 6 | 20 | 70 | 252 | 924 |
| $C_n$ | 1 | 1 | 2 | 5 | 14 | 42 | 132 |

## 16. A Catalan-számok rekurziója és alkalmazásai

### Rekurzió

A Catalan-számokra rekurzió is felírható. A kérdés, amely elvezet hozzá: **mikor ürül ki először a pénztár?**

> **Tétel (Catalan-rekurzió).** $C_0 = 1$, és minden $n \ge 1$ esetén
> $$C_n = C_0C_{n-1} + C_1C_{n-2} + C_2C_{n-3} + \dots + C_{n-1}C_0 = \sum_{k=1}^{n} C_{k-1}\,C_{n-k}.$$

*Bizonyítás.* Legyen $n \ge 1$, és tekintsünk egy jó sorrendet. A pénztár kezdetben üres, és a végén is üres (ugyanannyi $1$-es és $2$-es érkezett). Legyen $2k$ ($1 \le k \le n$) az a pillanat, amikor a pénztár az indulás után **először** ürül ki; a rácsúton ez az a pont, ahol az út először tér vissza az $y = x$ átlóra, a $(k, k)$ pont. Válasszuk szét a jó sorrendeket $k$ értéke szerint.

Rögzített $k$ mellett:

- Az **első** fizető $1$ eurós (különben rossz volna a sorrend), a **$2k$-adik** pedig $2$ eurós (különben a pénztár nem ürülne ki éppen ekkor).
- A **közbülső** $2k - 2$ ember alatt a pénztár egyszer sem ürül ki, vagyis mindig van benne legalább az az $1$ euró, amelyet az első ember hozott. Ha ezt az egy eurót „félretesszük”, a közbülső $2k - 2$ ember egy jó sorrendet alkot $k - 1$ darab $1$-essel és $k - 1$ darab $2$-essel; és fordítva, bármely ilyen jó sorrend megfelel. Ez $C_{k-1}$ lehetőség. (A rácsúton: a $(1, 0)$ és a $(k, k-1)$ pont közötti szakasz az $y = x - 1$ egyenesen vagy alatta halad, ami eltolva egy $(k-1)$-es jó út.)
- A $(k, k)$ pont **utáni** $2n - 2k$ ember ismét üres pénztárral kezd, tehát tetszőleges jó sorrendet alkothat $n - k$ párral: $C_{n-k}$ lehetőség.

A független választás elve szerint rögzített $k$ mellett $C_{k-1}\,C_{n-k}$ jó sorrend van, és ezeket $k = 1, \dots, n$-re összeadva kapjuk az állítást. $\blacksquare$

*Ellenőrzés:* $C_3 = C_0C_2 + C_1C_1 + C_2C_0 = 2 + 1 + 2 = 5$, és $C_4 = 5 + 2 + 2 + 5 = 14$.

**Megjegyzés.** Ez a rekurzió nem lineáris, és nem is véges rendű: $C_n$ kiszámolásához az **összes** korábbi tagra szükség van. A 12. szakasz módszere tehát nem alkalmazható rá — a zárt képlethez itt a bijektív (tükrözéses) gondolatmenet vezetett el. A rekurzió viszont arra kiválóan alkalmas, hogy más feladatokról megmutassuk, hogy ugyancsak a Catalan-számokra vezetnek.

::: kiegeszites
**Kiegészítés — Lemma.** *Ha a $(t_n)_{n\ge0}$ sorozatra $t_0 = 1$ és minden $n \ge 1$-re $t_n = \sum_{k=1}^{n} t_{k-1}t_{n-k}$, akkor $t_n = C_n$ minden $n$-re.*

*Bizonyítás.* Erős teljes indukció: $t_0 = 1 = C_0$, és ha $t_m = C_m$ minden $m < n$-re, akkor a jobb oldalon csak $n$-nél kisebb indexek szerepelnek, így $t_n = \sum_{k=1}^{n} C_{k-1}C_{n-k} = C_n$. $\blacksquare$
:::

### Alkalmazások

**(A) Sokszögek háromszögelése.** Hányféleképpen bontható fel egy konvex $n$-szög egymást nem metsző átlóival háromszögekre? Jelölje ezt $T_n$.

| $n$ | 3 | 4 | 5 | 6 |
|:-:|:-:|:-:|:-:|:-:|
| $T_n$ | 1 | 2 | 5 | 14 |

(A háromszöget nem kell felbontani; a négyszöget a két átló bármelyike felbontja; az ötszögnél bármelyik csúcsból húzott két átló jó.) Az $1, 2, 5, 14$ sorozat ismerős! A **sejtés**: $T_n = C_{n-2}$. Az előadáson elhangzott, hogy ez rekurzióval bizonyítható.

::: kiegeszites
**Kiegészítés — a háromszögelések és a Catalan-számok.**

*Előbb két egyszerű tény.* Egy konvex $n$-szög minden háromszögelésében **$n - 2$ háromszög és $n - 3$ átló** van. A háromszögek szögei együtt pontosan kiadják a sokszög szögeit (minden háromszög csúcsa a sokszög egy csúcsa), így a háromszögek száma $\frac{(n-2)\pi}{\pi} = n - 2$. Ha minden háromszög oldalait összeszámoljuk, $3(n-2)$-t kapunk; ebben a sokszög minden oldala egyszer, minden átló kétszer (a két oldalán levő háromszögnél) szerepel, így ha $d$ az átlók száma, $3(n-2) = n + 2d$, ahonnan $d = n - 3$.

*A rekurzió.* Számozzuk meg a sokszög csúcsait körbe $1$-től $m$-ig ($m \ge 3$). Az $\{1, m\}$ oldal minden háromszögelésben pontosan egy háromszöghöz tartozik; ennek harmadik csúcsa legyen $k$, ahol $2 \le k \le m - 1$. Ez a háromszög a sokszöget két részre vágja: az $1, 2, \dots, k$ csúcsú $k$-szögre és a $k, k+1, \dots, m$ csúcsú $(m-k+1)$-szögre, amelyeket egymástól függetlenül kell háromszögelni. Ha $k = 2$ (vagy $k = m-1$), az egyik rész egyetlen szakasszá fajul; ezt úgy vehetjük figyelembe, hogy megállapodás szerint $T_2 = 1$. Így
$$T_m = \sum_{k=2}^{m-1} T_k\,T_{m-k+1}.$$
Legyen $t_j = T_{j+2}$ ($j \ge 0$), tehát $t_0 = T_2 = 1$. Az $m = n + 2$ helyettesítéssel és $i = k - 2$ jelöléssel
$$t_n = T_{n+2} = \sum_{i=0}^{n-1} T_{i+2}\,T_{n-i+1} = \sum_{i=0}^{n-1} t_i\,t_{n-1-i} = \sum_{k=1}^{n} t_{k-1}\,t_{n-k}.$$
Ez éppen a Catalan-rekurzió, tehát a lemma szerint $t_n = C_n$, vagyis $T_n = C_{n-2}$. $\blacksquare$
:::

**(B) Szorzatok zárójelezése.** Hányféleképpen zárójelezhető egy $n$ tényezős szorzat, ha a tényezők sorrendje rögzített, és minden lépésben két tényezőt szorzunk össze? Négy tényezőre például
$$((a\cdot b)\cdot c)\cdot d,\quad (a\cdot(b\cdot c))\cdot d,\quad (a\cdot b)\cdot(c\cdot d),\quad a\cdot((b\cdot c)\cdot d),\quad a\cdot(b\cdot(c\cdot d)),$$
ez $5 = C_3$ lehetőség.

::: kiegeszites
**Kiegészítés — bizonyítás.** Jelölje $b_n$ egy $n + 1$ tényezős szorzat zárójelezéseinek számát; $b_0 = 1$ (egyetlen tényezőn nincs mit zárójelezni). Egy zárójelezésben az **utolsó** szorzás két részre bontja a szorzatot: az első $i + 1$ és az utolsó $n - i$ tényező szorzatára, ahol $0 \le i \le n - 1$. A két részt egymástól függetlenül kell zárójelezni, így
$$b_n = \sum_{i=0}^{n-1} b_i\,b_{n-1-i} = \sum_{k=1}^{n} b_{k-1}\,b_{n-k}.$$
A lemma szerint $b_n = C_n$; egy $n$ tényezős szorzat tehát $C_{n-1}$-féleképpen zárójelezhető. $\blacksquare$
:::

**(C) $\pm 1$ sorozatok.** Ahogy a 15. szakaszban láttuk, $n$ darab $+1$ és $n$ darab $-1$ olyan sorrendjeinek száma, amelyekben minden kezdőszelet összege nemnegatív, éppen $C_n$ — ez a pénztár-feladat átfogalmazása.

Ezzel a leszámlálás fejezet végére értünk.

## A II. rész összefoglalása

- **Barkochba:** $n$ elem közül egy kitalálásához $\lceil \log_2 n \rceil$ igen/nem kérdés kell és elég. Felső becslés: kettes számrendszer (a kérdések előre leírhatók). Alsó becslés: az ördög a nagyobbik felet választja, így $k$ válasz után még legalább $n/2^k$ lehetőség marad.
- **Fibonacci-számok:** $F_n = F_{n-1} + F_{n-2}$, $F_0 = 0$, $F_1 = 1$; $\sum_{i=1}^k F_i = F_{k+2} - 1$; Binet-képlet: $F_n = \frac{1}{\sqrt5}\big(\Phi^n - \Psi^n\big)$.
- **Lineáris rekurziók:** az $a_n = c_1a_{n-1} + c_2a_{n-2}$ megoldásai kétdimenziós alteret alkotnak. Karakterisztikus egyenlet: $q^2 - c_1q - c_2 = 0$. Két különböző gyök esetén $a_n = \alpha q_1^n + \beta q_2^n$, kétszeres gyök esetén $a_n = \alpha q^n + \beta nq^n$; $\alpha$ és $\beta$ a kezdeti feltételekből adódik.
- **Rekurzív gondolkodás:** nevezzük el a mennyiséget, számoljunk kis eseteket, keressünk rekurziót esetszétválasztással (lépcsőmászás: $L_n = F_{n+1}$).
- **Rácsutak:** $(0,0) \to (a,b)$: $\binom{a+b}{a}$. **Tükrözési elv:** az első érintés utáni rész tükrözése bijekció.
- **Catalan-számok:** $C_n = \binom{2n}{n} - \binom{2n}{n-1} = \frac{1}{n+1}\binom{2n}{n}$, rekurzió: $C_n = \sum_{k=1}^n C_{k-1}C_{n-k}$. Ezek számolják a pénztár-feladat jó sorrendjeit, a helyes zárójelezéseket, a konvex $(n+2)$-szög háromszögeléseit és az $n+1$ tényezős szorzat zárójelezéseit.

---

# III. RÉSZ: GRÁFELMÉLET

A gráfelmélet a XX. században fejlődött igazán önálló tudományterületté, és mára a matematika egyik legtöbbet alkalmazott ága: hálózatok, útvonaltervezés, ütemezés, kémiai molekulák szerkezete — mind gráfokkal modellezhető. Ebben a részben az alapfogalmaktól a fák elméletén át a fokszámsorozatok vizsgálatáig jutunk el.

## 17. Gráfok, egyszerű gráfok, izomorfia

Egy gráf pontokból és az őket összekötő vonalakból áll. Rajzoljunk le néhányat:

1. egy háromszög és egy hozzá csatlakozó négyszög;
2. néhány, egymással nem összekötött darab, köztük magányos pontok;
3. olyan rajz, amelyen egy vonal ugyanabba a pontba tér vissza, és két pontot több vonal is összeköt;
4. egy négyzet a két átlójával;
5. egy háromszög, a belsejében egy ponttal, amely mindhárom csúcshoz hozzá van kötve.

A 4. és az 5. rajz első ránézésre különbözik, valójában azonban **ugyanazt** a szerkezetet ábrázolja: négy pontot, amelyek közül bármelyik kettő össze van kötve. A gráf tehát nem maga a rajz — a rajz csak egy szemléltetése.

> **Definíció (gráf).** Egy $G = (V, E)$ **gráf** két részből áll: a **csúcsok** (vertices) $V = V(G)$ halmazából és az **élek** (edges) $E = E(G)$ halmazából. Minden élhez hozzá van rendelve két (nem feltétlenül különböző) csúcs, az él **végpontjai**; az $e$ él végpontjai $u$ és $v$ esetén $e = (u, v)$ vagy $e = uv$ jelöléssel élünk.

A csúcsokat általában $v_1, v_2, \dots, v_n$, az éleket $e_1, e_2, \dots, e_m$ jelöli. Ebben a könyvben minden gráf **véges**.

> **Definíció.**
>
> - Egy élt **hurokélnek** nevezünk, ha a két végpontja azonos.
> - Két vagy több élt **többszörös** (párhuzamos) élnek nevezünk, ha ugyanaz a két végpontjuk.
> - Egy gráf **egyszerű**, ha nincs benne sem hurokél, sem többszörös él.

**Az előadás fókuszában az egyszerű gráfok állnak.** A továbbiakban „gráf” alatt egyszerű gráfot értünk, ha mást nem mondunk. (Hurokéleket és többszörös éleket a 27. szakaszban, a fokszámsorozatoknál engedünk meg újra.) Egy egyszerű gráfban egy élt egyértelműen meghatároz a két végpontja, így az éleket a csúcsok kételemű részhalmazainak tekinthetjük. Ebből az is következik, hogy egy $n$ csúcsú egyszerű gráfnak
$$0 \le |E(G)| \le \binom{n}{2}$$
éle lehet; a felső korlátot a **teljes gráf** éri el, amelyben bármely két csúcs össze van kötve. Ez sok: egy $1000$ csúcsú egyszerű gráfnak akár $499\,500$ éle is lehet.

### Izomorfia

> **Definíció (izomorfia).** A $G$ és $H$ egyszerű gráfok **izomorfak**, ha van olyan $f\colon V(G) \to V(H)$ bijekció, amely **éltartó**: bármely $u, v \in V(G)$ esetén
> $$uv \in E(G) \iff f(u)f(v) \in E(H).$$

A szó görög eredetű: *izo* = ugyanaz, *morf* = alak. Az izomorfia a gráfelméletben azt a szerepet tölti be, amit a geometriában az egybevágóság: két egybevágó háromszöget „ugyanolyannak” tekintünk, akárhol is helyezkednek el a síkon, és ugyanígy két izomorf gráfot is, akárhogyan rajzoltuk le őket. A fenti 4. és 5. rajz izomorf gráfokat ábrázol.

*Példa.* Legyen $V = \{a, b, c, d, e\}$, és az élek $ab$, $bc$, $cd$, $de$, $bd$. Lerajzolhatjuk egy ötszög-szerű alakzatként, de úgy is, hogy a csúcsokat egy egyenesre tesszük $a, b, c, d, e$ sorrendben, a szomszédosakat összekötjük, és a $b$-t a $d$-vel egy ívvel. A két rajz ugyanazt a gráfot ábrázolja.

## 18. Fokszám és a kézfogási lemma

> **Definíció (fokszám).** Egy $v$ csúcs **fokszáma**, $d(v)$ vagy $\deg(v)$, a $v$-re illeszkedő élek száma (hurokél esetén a hurokél kettővel számít).

> **Tétel (kézfogási lemma).** Minden $G$ gráfban
> $$\sum_{v \in V(G)} \deg(v) = 2\,|E(G)|.$$

*Bizonyítás.* A bal oldali összegben minden élt **pontosan kétszer** számoltunk: egyszer az egyik, egyszer a másik végpontjánál (a hurokélt kétszer ugyanannál a végpontnál). $\blacksquare$

A név onnan ered, hogy ha egy társaságban mindenki megszámolja, hány emberrel fogott kezet, akkor ezeknek a számoknak az összege a kézfogások számának kétszerese.

::: kiegeszites
**Kiegészítés — Következmény.** *Minden gráfban a páratlan fokszámú csúcsok száma páros.*

*Bizonyítás.* A kézfogási lemma szerint a fokszámok összege páros. Ha a páros fokszámúakat elhagyjuk az összegből, az összeg paritása nem változik, tehát a páratlan fokszámok összege is páros. Páratlan sok páratlan szám összege viszont páratlan volna. $\blacksquare$
:::

## 19. Séták, vonalak, utak, körök

Gráfban az élek mentén mozoghatunk. A mozgásnak több változata van aszerint, hogy megengedjük-e az ismétlődést.

> **Definíció (séta).** A $G$ gráfban egy **$k$ hosszú séta** (élsorozat) egy
> $$u_0,\ e_1,\ u_1,\ e_2,\ u_2,\ \dots,\ e_k,\ u_k$$
> sorozat, ahol $u_i \in V(G)$, $e_j \in E(G)$, és $e_j = (u_{j-1}, u_j)$ minden $j$-re. A séta **zárt**, ha a vége ugyanaz, mint az eleje: $u_0 = u_k$.

A sétában bármi ismétlődhet: csúcsok is, élek is. Ezen szigoríthatunk.

> **Definíció.**
>
> - Ha egy sétában minden él különböző (a csúcsok azonban ismétlődhetnek), **vonalnak** nevezzük. A vonal lehet nyitott vagy zárt.
> - Ha egy sétában minden csúcs különböző, **útnak** nevezzük. Ekkor az élek is automatikusan különbözők.
> - Ha egy zárt sétában a csúcsok — eltekintve az $u_0 = u_k$ egyezéstől — mind különbözők, és $k \ge 1$, **körnek** nevezzük. A kör tehát egy „zárt út”.

Egyszerű gráfban a kör hossza legalább $3$. (Általános gráfban egy hurokél $1$ hosszú, két párhuzamos él $2$ hosszú kört alkot.)

::: kiegeszites
**Kiegészítés — Lemma (sétából út).** *Ha a $G$ gráfban vezet séta az $u$ csúcsból a $v$ csúcsba, akkor vezet út is.*

*Bizonyítás.* Tekintsük a $u$-ból $v$-be vezető séták közül a **legrövidebbet**: $u = u_0, e_1, u_1, \dots, e_k, u_k = v$. Ha volna benne ismétlődő csúcs, $u_i = u_j$ valamilyen $i < j$-re, akkor az $u_i$ és $u_j$ közötti szakaszt kihagyva ($u_0, \dots, u_i = u_j, e_{j+1}, \dots, u_k$) rövidebb sétát kapnánk $u$-ból $v$-be — ellentmondás. Tehát a legrövidebb séta út. $\blacksquare$

Emiatt az alábbiakban a „van séta $u$ és $v$ között” és a „van út $u$ és $v$ között” kijelentések felcserélhetők.
:::

## 20. Összefüggőség és komponensek

> **Definíció (összefüggő gráf).** A $G$ gráf **összefüggő**, ha bármelyik csúcsából bármelyik csúcsába el lehet jutni, vagyis bármely két csúcsa között vezet út (ekvivalensen: séta).

Ha egy gráf nem összefüggő, akkor természetes módon „darabokra” esik. Ezeket a darabokat két, egymással egyenértékű módon is megfoghatjuk.

> **Definíció (komponens).** A $G$ gráf egy **összefüggő komponense** (röviden komponense) $G$-nek egy olyan összefüggő részgráfja, amelyhez bármely további csúcsot hozzávéve már nem kapnánk összefüggő részgráfot. A komponensek tehát $G$ „maximális összefüggő darabjai”.

(A részgráf fogalmát a 23. szakaszban pontosítjuk; itt elég annyi, hogy a komponens egy csúcshalmaz, az összes köztük futó éllel együtt.)

A komponensek egy **relációval** is leírhatók. Ha $u, v \in V(G)$, akkor írjuk, hogy $u \sim v$ ($u$ relációban áll $v$-vel), ha van köztük séta.

> **Állítás.** A $\sim$ reláció **ekvivalenciareláció** $V(G)$-n.

*Bizonyítás.*

- **Reflexív:** $v \sim v$ minden $v$-re, hiszen a $0$ hosszú $v$ séta $v$-ből $v$-be vezet.
- **Szimmetrikus:** ha $u \sim v$, akkor $v \sim u$, mert egy $u$-ból $v$-be vezető sétát visszafelé bejárva $v$-ből $u$-ba vezető sétát kapunk.
- **Tranzitív:** ha $u \sim v$ és $v \sim w$, akkor $u \sim w$: az $u$-ból $v$-be és a $v$-ből $w$-be vezető sétát egymás után fűzve $u$-ból $w$-be vezető sétát kapunk. $\blacksquare$

(A tranzitivitás bizonyításában látszik, miért kényelmesebb itt sétákkal dolgozni, mint utakkal: két út egymás után fűzve nem feltétlenül út, de két séta egymás után fűzve mindig séta.)

Egy ekvivalenciareláció az alaphalmazt **ekvivalenciaosztályokra** bontja. A $\sim$ reláció osztályai éppen a $G$ összefüggő komponensei.

::: kiegeszites
**Kiegészítés — miért éppen a komponensek az osztályok?** Legyen $K$ egy ekvivalenciaosztály, és tekintsük a $K$-beli csúcsokat a köztük futó összes éllel.

*$K$ összefüggő.* Ha $u, v \in K$, akkor van köztük $G$-ben séta. Ennek a sétának minden csúcsa $u$-val relációban áll (a séta kezdőszelete odavezet), tehát $K$-ban van; így a séta minden éle is $K$-beli csúcsokat köt össze. A séta tehát a $K$ által meghatározott részgráfban halad.

*$K$ maximális.* Ha egy $w \notin K$ csúcsot hozzávennénk, és az így kapott részgráf összefüggő volna, akkor $w$ és egy $K$-beli csúcs között séta vezetne, vagyis $w$ is $K$-ban volna. Ellentmondás.

Megfordítva, egy összefüggő részgráf csúcsai mind relációban állnak egymással, tehát egyetlen osztályba esnek, és a maximalitás miatt az egész osztályt kitöltik. $\blacksquare$
:::

## 21. Fák és levelek

> **Definíció (fa).** **Fának** nevezzük az összefüggő, körmentes gráfokat.

A fák a „legtakarékosabb” összefüggő gráfok: épp elég élük van ahhoz, hogy összefüggők legyenek. Nézzük meg a kis csúcsszámú fákat (izomorfia erejéig)!

| $n$ | az $n$ csúcsú fák | darab |
|:-:|:--|:-:|
| 1 | egyetlen pont | 1 |
| 2 | egyetlen él | 1 |
| 3 | $3$ csúcsú út | 1 |
| 4 | $4$ csúcsú út; „csillag” (egy csúcs, hozzá $3$ levél) | 2 |
| 5 | $5$ csúcsú út; „villa” (egy $3$ fokú csúcs két levéllel és egy $2$ hosszú ággal); csillag (egy csúcs $4$ levéllel) | 3 |

> **Definíció (levél).** Egy fa **levele** egy $1$ fokú csúcsa.

> **Állítás.** Minden legalább $2$ csúcsú fának van levele.

*Első bizonyítás (sétálással).* Induljunk el egy tetszőleges csúcsból, és sétáljunk a fában úgy, hogy soha nem fordulunk vissza azon az élen, amelyen érkeztünk. Mivel a fa körmentes, egy csúcsba sem érhetünk vissza (különben kört járnánk be), és mivel a fa véges, valahol el kell akadnunk. Ott, ahol elakadtunk, a csúcsnak az érkezési élen kívül nincs más éle: ez $1$ fokú csúcs.

*Második bizonyítás (leghosszabb út).* Tekintsük a fa egyik leghosszabb útját, $u_0, u_1, \dots, u_k$; mivel a fa összefüggő és legalább $2$ csúcsú, van éle, így $k \ge 1$. Állítjuk, hogy $u_0$ levél. Ha $u_0$-nak $u_1$-en kívül volna egy $w$ szomszédja, akkor két eset lehetséges. Ha $w$ nincs az úton, akkor a $w, u_0, u_1, \dots, u_k$ út hosszabb volna — ellentmondás. Ha $w = u_i$ valamilyen $i \ge 2$-re, akkor az $u_0, u_1, \dots, u_i, u_0$ kör volna — ellentmondás a körmentességgel. $\blacksquare$

A második bizonyítás többet is ad: a leghosszabb út **mindkét** végpontja levél, és ezek különbözők ($k \ge 1$). Ugyanezt az első bizonyításból is kiolvashatjuk: ha az első elakadási pontból újra elindulunk, egy másik helyen kell újra elakadnunk.

> **Állítás.** Minden legalább $2$ csúcsú fának van legalább $2$ levele.

## 22. A fák élszáma

> **Kérdés.** Hány éle van egy $n$ csúcsú fának?

A táblázatból sejthető a válasz: az $n$ csúcsú fák mindegyikének $n - 1$ éle van.

> **Tétel.** Minden $n$ csúcsú fának pontosan $n - 1$ éle van.

*Bizonyítás (teljes indukció $n$ szerint).* $n = 1$-re a fának $0$ éle van. Tegyük fel, hogy az állítás igaz az $n$ csúcsú fákra, és legyen $T$ egy $n + 1$ csúcsú fa. Az előző szakasz szerint $T$-nek van levele; **tépjük le** egy levelét, vagyis töröljük a levelet és a hozzá tartozó egyetlen élt. A kapott $T'$ gráf $n$ csúcsú, és fa:

- körmentes, mert $T$ részgráfja, és $T$-ben nincs kör;
- összefüggő, mert bármely két $T'$-beli csúcs között $T$-ben vezető út nem haladhat át a letépett levélen (egy út belső csúcsának legalább $2$ foka van az úton), tehát az út $T'$-ben is megvan.

Az indukciós feltevés szerint $T'$-nek $n - 1$ éle van, így az eredeti $T$-nek $n$. $\blacksquare$

A tétel szerint egy $1000$ csúcsú fának $999$ éle van — szemben egy $1000$ csúcsú egyszerű gráffal, amelynek akár félmillió éle is lehet.

## 23. Részgráfok és feszítőfák

> **Definíció (részgráf).** A $G$ gráf **részgráfja** az a gráf, amelyet $G$-ből néhány csúcs és néhány él törlésével kapunk. (Egy csúcs törlésekor a rá illeszkedő éleket is törölni kell. Semmit sem törölni is szabad, tehát $G$ önmagának is részgráfja.)

Két fontos speciális eset van:

- Ha **csak csúcsokat** törlünk (és velük együtt a belőlük kiinduló éleket), **feszített részgráfot** kapunk: a megmaradt csúcsok között az összes eredeti él megmarad.
- Ha **csak éleket** törlünk, **feszítő részgráfot** kapunk: minden csúcs megmarad.

> **Definíció (feszítőfa).** A $G$ gráf **feszítőfája** egy olyan feszítő részgráfja, amely fa.

Egy feszítőfa tehát $G$ összes csúcsát összeköti, a lehető legkevesebb éllel. Nyilván csak összefüggő gráfnak lehet feszítőfája. Megfordítva:

> **Tétel.** Minden összefüggő gráfnak van feszítőfája.

A bizonyításhoz egy egyszerű megfigyelésre van szükség.

> **Állítás.** Ha $G$ összefüggő gráf, és $G$ egy tetszőleges körének tetszőleges élét töröljük, akkor a kapott gráf is összefüggő.

*Bizonyítás.* Legyen a törölt él $e = xy$, amely a $C$ kör része. Bármely két csúcs között $G$-ben vezetett séta. Ha ez a séta nem használta az $e$ élt, akkor a törlés után is megvan. Ha használta, akkor az $e$ él helyett kerülhetünk a kör másik ívén: a $C$ körön az $x$-ből $y$-ba az $e$ él nélkül is el lehet jutni. Így bármely két csúcs között a törlés után is vezet séta. $\blacksquare$

*A tétel bizonyítása (algoritmus).* Legyen $G$ összefüggő. Ismételjük a következő lépést:

1. **Van kör?** Ha nincs, a gráf összefüggő és körmentes — vagyis fa —, és **kész** vagyunk.
2. Ha van, egy tetszőleges kör tetszőleges élét töröljük. Az állítás szerint a gráf összefüggő marad. Térjünk vissza az 1. lépéshez.

Mivel minden lépésben egy élt törlünk, és véges sok él van, az eljárás véget ér. A végén kapott gráf összefüggő, körmentes, és $G$ minden csúcsát tartalmazza (csak éleket töröltünk) — tehát $G$ egy feszítőfája. $\blacksquare$

## 24. A fák ekvivalens jellemzései

A fát úgy definiáltuk, mint összefüggő, körmentes gráfot. Sok más, ezzel egyenértékű definíció is adható; ezek a fák alaptulajdonságai.

> **Tétel (a fák jellemzése).** Egy $n$ csúcsú $G$ (egyszerű) gráfra a következő állítások ekvivalensek:
>
> 1. $G$ fa (összefüggő és körmentes);
> 2. $G$ **minimális összefüggő**: összefüggő, de bármely élét törölve már nem az;
> 3. $G$ **maximális körmentes**: körmentes, de bármely új élt hozzávéve (két nem szomszédos csúcsát összekötve) kör keletkezik;
> 4. $G$ összefüggő, és $n - 1$ éle van;
> 5. $G$ körmentes, és $n - 1$ éle van;
> 6. $G$ bármely két csúcsa között **pontosan egy** út vezet.

**Hány bizonyítás kell?** Hat állítás ekvivalenciájához elvben minden rendezett párra egy-egy implikáció kellene, ez $6 \cdot 5 = 30$ bizonyítás. Ennyi azonban fölösleges: ha az implikációkat egy olyan irányított gráf éleinek tekintjük, amelyben bármely állításból bármelyikbe el lehet jutni, az elég. Egy **csillag** (az 1. állításból mindegyikbe és mindegyikből az 1.-be) $10$, egy **kör** ($1 \Rightarrow 2 \Rightarrow \dots \Rightarrow 6 \Rightarrow 1$) mindössze $6$ bizonyítást igényel.

Az előadáson néhány példát néztünk meg; a többi házi feladat volt.

- **$1 \Rightarrow 4$ és $1 \Rightarrow 5$:** ez a 22. szakasz tétele (egy fának $n - 1$ éle van).
- **$1 \Rightarrow 2$:** legyen $G$ fa, és töröljük egy $e = uv$ élét. Tegyük fel *indirekten*, hogy a gráf összefüggő maradt. Akkor vezetne egy út $u$ és $v$ között $e$ nélkül, és ez az út az $e$ éllel együtt az eredeti gráfban kört alkotna — ellentmondás. Tehát $G - e$ nem összefüggő.

::: kiegeszites
**Kiegészítés — a tétel teljes bizonyítása.** A „csillag” stratégiát követjük: az előadáson látott $1 \Rightarrow 2$, $1 \Rightarrow 4$, $1 \Rightarrow 5$ mellé bebizonyítjuk az $1 \Rightarrow 3$, $1 \Rightarrow 6$ implikációt és a $2, 3, 4, 5, 6 \Rightarrow 1$ megfordításokat.

**Segédállítás.** *Ha egy gráfban két csúcs között két különböző út vezet, akkor a gráfban van kör.*

*Bizonyítás.* Legyen $P = (u = p_0, p_1, \dots, p_k = v)$ és $Q = (u = q_0, q_1, \dots, q_l = v)$ két különböző út. Egyik sem lehet a másik valódi kezdőszelete, mert akkor a hosszabbik út kétszer haladna át $v$-n. Van tehát olyan $i$ index, hogy $p_i = q_i$, de $p_{i+1} \ne q_{i+1}$. Legyen $j > i$ a legkisebb olyan index, amelyre $p_j$ rajta van $Q$-nak a $q_i$ utáni részén — ilyen van, mert $p_k = v = q_l$ —, mondjuk $p_j = q_m$, $m > i$. Ekkor
$$p_i,\ p_{i+1},\ \dots,\ p_j = q_m,\ q_{m-1},\ \dots,\ q_{i+1},\ q_i = p_i$$
kör: a $p_{i+1}, \dots, p_{j-1}$ csúcsok $j$ minimalitása miatt nincsenek rajta $Q$ szóban forgó részén (a $Q$ elején, a $q_0, \dots, q_i = p_0, \dots, p_i$ csúcsok között pedig azért nincsenek, mert $P$ csúcsai különbözők), tehát a csúcsok — a kezdő- és végpont kivételével — különbözők. A hossza $(j - i) + (m - i) \ge 3$, mert $j - i = m - i = 1$ esetén $p_{i+1} = q_{i+1}$ volna. $\blacksquare$

**$1 \Rightarrow 3$.** Legyen $G$ fa, és $u, v$ két nem szomszédos csúcsa. Mivel $G$ összefüggő, van köztük út; ehhez az új $uv$ élt hozzávéve kör keletkezik.

**$3 \Rightarrow 1$.** Legyen $G$ maximális körmentes; azt kell belátni, hogy összefüggő. Ha nem volna, legyen $u$ és $v$ két különböző komponensbeli csúcs; ezek nem szomszédosak. A feltétel szerint az $uv$ él hozzávételével kör keletkezik, és ennek a körnek tartalmaznia kell az $uv$ élt (hiszen $G$ körmentes). A kör többi része viszont egy $u$ és $v$ közötti út $G$-ben — ellentmondás azzal, hogy különböző komponensben vannak.

**$2 \Rightarrow 1$.** Legyen $G$ minimális összefüggő; azt kell belátni, hogy körmentes. Ha volna benne kör, annak bármely élét törölve a gráf a 23. szakasz állítása szerint összefüggő maradna — ellentmondás a minimalitással.

**$1 \Rightarrow 6$.** Ha $G$ fa, bármely két csúcsa között van út (összefüggő), és a segédállítás szerint nem lehet két különböző (körmentes).

**$6 \Rightarrow 1$.** Ha bármely két csúcs között van út, $G$ összefüggő. Ha volna benne egy $v_0, v_1, \dots, v_k = v_0$ kör, akkor a $v_0$ és $v_1$ csúcs között két különböző út vezetne: a $v_0v_1$ él és a kör többi része ($v_0, v_{k-1}, \dots, v_1$). Tehát $G$ körmentes.

**$4 \Rightarrow 1$.** Legyen $G$ összefüggő és $n - 1$ élű. A 23. szakasz tétele szerint van feszítőfája, $T$; ennek is $n$ csúcsa van, tehát a 22. szakasz szerint $n - 1$ éle. Mivel $T$ éle $G$-nek is éle, és mindkettőnek $n - 1$ éle van, $T = G$, tehát $G$ fa.

**$5 \Rightarrow 1$.** Legyen $G$ körmentes és $n - 1$ élű; azt kell belátni, hogy összefüggő. Legyenek a komponensei $K_1, \dots, K_c$, rendre $n_1, \dots, n_c$ csúccsal. Minden komponens összefüggő és körmentes, tehát fa, így $K_i$-nek $n_i - 1$ éle van. Összesen
$$|E(G)| = \sum_{i=1}^{c}(n_i - 1) = n - c.$$
Mivel $|E(G)| = n - 1$, ebből $c = 1$, vagyis $G$ összefüggő. $\blacksquare$
:::

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
2. Rendezzük újra a megmaradt igényeket, és **ismételjük**: újra a legnagyobbat elégítjük ki a közvetlenül utána következőkkel.
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

## A III. rész összefoglalása

- **Gráf:** $G = (V, E)$; hurokél, többszörös él, **egyszerű gráf**. Izomorfia: éltartó bijekció a csúcshalmazok között. Egyszerű gráfban $|E| \le \binom{n}{2}$.
- **Kézfogási lemma:** $\sum_v \deg(v) = 2|E|$.
- **Séta** (bármi ismétlődhet), **vonal** (az élek különbözők), **út** (a csúcsok különbözők), **kör** (zárt út). Ha van séta, van út is.
- **Összefüggőség:** a „van köztük séta” reláció ekvivalenciareláció; az osztályai a komponensek.
- **Fa:** összefüggő, körmentes. Legalább $2$ csúcs esetén van legalább $2$ levele; $n$ csúcsú fának $n - 1$ éle van. Ekvivalens jellemzések: minimális összefüggő; maximális körmentes; összefüggő és $n - 1$ élű; körmentes és $n - 1$ élű; bármely két csúcs között pontosan egy út.
- **Feszítőfa:** minden összefüggő gráfnak van (körök éleinek törlésével). **Minimális összsúlyú feszítőfa:** az optimista (Kruskal) és a pesszimista algoritmus is optimális.
- **Cayley-tétel:** az $n$ csúcsú címkézett fák száma $n^{n-2}$. **Prüfer-kód:** legkisebb levél letépése, a szomszéd feljegyzése; az $i$ csúcs $\deg(i) - 1$-szer szerepel; bijekció a fák és $[n]^{n-2}$ között.
- **Fokszámsorozatok:** hurokélekkel: $\sum d_k$ páros; hurokél nélkül: még $d_n \le \sum_{k<n} d_k$; egyszerű gráf: **Erdős–Gallai-feltétel**, illetve a **Havel–Hakimi-algoritmus**, amely pont akkor akad el, amikor nincs megfelelő gráf.

