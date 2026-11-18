# I. RÉSZ: LESZÁMLÁLÁS

A kombinatorika a véges struktúrák tudománya. Ebben a félévben három nagy területével ismerkedünk meg:

- **leszámlálás**: hányféleképpen lehet valamit megtenni, hány adott tulajdonságú objektum van;
- **gráfelmélet**: pontok és az őket összekötő vonalak rendszereinek vizsgálata;
- **halmazrendszerek**: egy alaphalmaz részhalmazainak családjai.

Az első három rész a leszámlálással és a gráfelmélettel foglalkozik; a negyedik rész végén, a Sperner- és az Erdős–Ko–Rado-tételnél jutunk el a halmazrendszerekhez.

Az első rész a leszámlálásról szól. A kérdések egyszerűen hangzanak („hány átlója van egy konvex 100-szögnek?”, „hányféleképpen ülhet le öt házaspár egy kerek asztal köré?”), a válaszhoz azonban rendszerezett gondolkodásra van szükség. Ennek az eszköztárát építjük fel.

## 1. A leszámlálás alapelvei

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

## 2. Bizonyítási módszerek, a skatulyaelv és a bijekció-elv

A kombinatorikában a legtöbb állítás egyszerűen hangzik, és kis esetekben könnyen ellenőrizhető. A vizsgán és a könyvben azonban **bizonyítást** várunk: olyan érvelést, amely *minden* esetre működik, nem csak a kipróbáltakra. Mielőtt továbblépnénk, összefoglaljuk azokat az alapvető bizonyítási sémákat, amelyeket a félév során újra és újra használni fogunk.

### Szükséges és elégséges feltétel

A matematikai állítások jelentős része „ha $A$, akkor $B$” alakú; ezt röviden $A \Rightarrow B$-vel jelöljük.

> **Definíció.** Ha $A \Rightarrow B$ igaz, akkor azt mondjuk, hogy
>
> - $B$ **szükséges feltétele** $A$-nak (ha $B$ nem teljesül, $A$ sem teljesülhet);
> - $A$ **elégséges feltétele** $B$-nek (ha $A$ teljesül, abból már következik $B$).
>
> Ha $A \Rightarrow B$ és $B \Rightarrow A$ is igaz, akkor $A$ **szükséges és elégséges feltétele** $B$-nek; ezt így írjuk: $A \iff B$, és így mondjuk: „$B$ **pontosan akkor** teljesül, ha $A$”.

*Példa.* Ha egy egész szám osztható $6$-tal, akkor osztható $3$-mal is. A $3$-mal való oszthatóság tehát **szükséges** feltétele a $6$-tal való oszthatóságnak, de nem elégséges: a $9$ osztható $3$-mal, $6$-tal viszont nem. Ezzel szemben „$n$ páros” szükséges és elégséges feltétele annak, hogy $n^2$ páros legyen.

Vigyázzunk: egy állítás **megfordítása** ($B \Rightarrow A$) nem következik magából az állításból. Ezzel szemben a **kontrapozíciója**, „ha nem $B$, akkor nem $A$”, mindig egyenértékű vele: ha $6 \mid n$-ből következik $3 \mid n$, akkor $3 \nmid n$-ből következik $6 \nmid n$.

A könyv legtöbb fontos tétele „pontosan akkor” alakú (Euler tétele az Euler-körsétáról, a Hall-tétel, a Tutte-tétel…). Ezeket mindig **két irányban** bizonyítjuk: a $\Rightarrow$ irány a feltétel *szükségességét*, a $\Leftarrow$ irány az *elégségességét* mutatja meg. Gyakran az egyik irány könnyű, a másik nehéz. Más tételek csak elégséges feltételt adnak (ilyen lesz Dirac tétele a Hamilton-körökről), és ilyenkor a feltétel nem teljesülése még semmit sem bizonyít.

### Indirekt bizonyítás

Az **indirekt bizonyításban** feltesszük, hogy a bizonyítandó állítás **nem** igaz, és ebből ellentmondásra jutunk. Mivel igaz feltevésből nem következhet ellentmondás, a kiinduló feltevés hamis volt — vagyis az állítás igaz.

> **Tétel (Eukleidész).** Végtelen sok prímszám van.

*Bizonyítás (indirekt).* Tegyük fel, hogy csak véges sok prím van: $p_1, p_2, \dots, p_k$. Tekintsük az
$$N = p_1 p_2 \cdots p_k + 1$$
számot. Mivel $N \ge 2$, van prímosztója, és ez a feltevés szerint valamelyik $p_i$. De $p_i$ osztja a $p_1 \cdots p_k$ szorzatot is, tehát a különbségüket, $1$-et is — ellentmondás. $\blacksquare$

A skatulyaelv bizonyítása (lásd alább) is indirekt, és a gráfelméletben szinte minden „nincs ilyen” vagy „biztosan van ilyen” típusú állítást így bizonyítunk.

### Teljes indukció

Tegyük fel, hogy minden $n \ge 1$ egészre adott egy $P(n)$ állítás, és szeretnénk mindegyiket bizonyítani.

> **A teljes indukció elve.** Ha
>
> 1. $P(1)$ igaz (**kezdő lépés**), és
> 2. minden $n \ge 1$ esetén $P(n)$-ből következik $P(n+1)$ (**indukciós lépés**),
>
> akkor $P(n)$ minden $n \ge 1$-re igaz.

Szemléletesen: ha az első dominó eldől, és minden dominó magával rántja a következőt, akkor mind eldől. A kezdőpont $1$ helyett bármely $n_0$ egész lehet (például $0$).

*Példa.* Minden $n \ge 1$-re
$$1 + 2 + \dots + n = \frac{n(n+1)}{2}.$$
*Bizonyítás.* $n = 1$-re mindkét oldal $1$. Ha az állítás igaz $n$-re, akkor
$$1 + 2 + \dots + n + (n+1) = \frac{n(n+1)}{2} + (n+1) = \frac{(n+1)(n+2)}{2},$$
ami éppen az állítás $n + 1$-re. $\blacksquare$

*Példa (a sík felosztása).* Hány részre osztja a síkot $n$ **általános helyzetű** egyenes (semelyik kettő nem párhuzamos, és semelyik három nem megy át egy ponton)? Jelölje ezt $r_n$; $r_0 = 1$, $r_1 = 2$, $r_2 = 4$, $r_3 = 7$. Ha már $n$ egyenes meg van rajzolva, az $(n+1)$-edik egyenes a többit $n$ különböző pontban metszi, ezek az új egyenest $n + 1$ darabra vágják, és minden darab egy meglevő tartományt kettévág. Tehát $r_{n+1} = r_n + (n+1)$, és az előző példa szerint indukcióval
$$r_n = 1 + (1 + 2 + \dots + n) = 1 + \frac{n(n+1)}{2}.$$
Ez a gondolatmenet — *a mennyiséget az eggyel kisebb esetből fejezzük ki* — a II. részben a rekurziókkal folytatódik.

Gyakran kényelmesebb az **erős** (más néven teljes) indukció: az indukciós lépésben nemcsak $P(n)$-et, hanem az összes $P(1), \dots, P(n)$ állítást feltételezhetjük $P(n+1)$ bizonyításához. Például így látható be, hogy **minden $n \ge 2$ egész felbontható prímek szorzatára**: ha $n$ prím, kész vagyunk; ha nem, akkor $n = ab$, ahol $2 \le a, b < n$, és az indukciós feltevés szerint $a$ is, $b$ is prímek szorzata, tehát $n$ is.

*Egy tanulságos hiba.* „Minden ló egyforma színű.” „Bizonyítás”: egy lóra igaz. Ha $n + 1$ ló közül elhagyjuk az elsőt, a maradék $n$ egyforma színű; ha az utolsót hagyjuk el, a maradék $n$ ismét egyforma színű; a két csoport közös lovai miatt tehát mind az $n + 1$ egyforma színű. — A hiba: az indukciós lépés $n = 1$-ről $n = 2$-re **nem** működik, mert ekkor a két csoportnak nincs közös eleme. Az indukciós lépésnek **minden** $n$-re helyesnek kell lennie.

### A skatulyaelv

Az 1. szakasz elvei *pontos* értéket adtak. A skatulyaelv ezzel szemben *létezést* bizonyít: azt mondja meg, hogy valami biztosan bekövetkezik, de azt nem, hogy hol.

> **Skatulyaelv (egyszerű alak).** Ha $n$ skatulyába $n$-nél több golyót teszünk, akkor lesz olyan skatulya, amelyben egynél több golyó van.

> **Skatulyaelv (általános alak).** Ha $n$ skatulyába $k \cdot n$-nél több golyót teszünk, akkor lesz olyan skatulya, amelyben $k$-nál több, vagyis legalább $k + 1$ golyó van.

Az egyszerű alak a $k = 1$ eset.

::: kiegeszites
**Kiegészítés — a skatulyaelv bizonyítása.** Elég az általános alakot igazolni. Tegyük fel indirekt, hogy minden skatulyában legfeljebb $k$ golyó van. Az esetszétválasztás elve szerint (a golyókat aszerint csoportosítva, hogy melyik skatulyában vannak) a golyók száma ekkor legfeljebb
$$\underbrace{k + k + \dots + k}_{n \text{ darab}} = k \cdot n,$$
ami ellentmond annak, hogy $k \cdot n$-nél több golyó van. $\blacksquare$
:::

*Példa.* Bármely $n + 1$ egész szám között van kettő, amelyek különbsége osztható $n$-nel. Valóban: a skatulyák legyenek az $n$-nel való osztási maradékok ($0, 1, \dots, n-1$), a golyók a számok. Mivel $n + 1 > n$, van két szám azonos maradékkal, és ezek különbsége osztható $n$-nel.

*Példa.* Egy $25$ fős csoportban biztosan van három ember, akik ugyanabban a hónapban születtek: $12$ skatulya (hónap), $25 > 2 \cdot 12$ golyó, tehát valamelyik hónapra legalább $3$ születésnap jut.

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

### Pénzosztás

Ugyanez a feladat sokszor „pénzosztás” alakban jelenik meg.

> **Feladat.** Hányféleképpen oszthatunk szét $k$ egyforma gesztenyét (vagy $k$ darab egyforintost) $n$ különböző ember között?

Egy szétosztást az határoz meg, hogy az $i$-edik ember hány gesztenyét kap, ez legyen $x_i \ge 0$; ekkor $x_1 + \dots + x_n = k$. A szétosztások tehát kölcsönösen egyértelműen megfelelnek az egyenlet nemnegatív egész megoldásainak, és a pöttyös–vonalas jelsorozatoknak is ($k$ pötty a gesztenyék, $n - 1$ vonal választja el az embereket). A válasz tehát ugyanaz, mint a fagylaltnál:
$$\binom{n + k - 1}{k} = \binom{n + k - 1}{n - 1}.$$
A két feladat valójában ugyanaz: a fagylaltfajták helyett emberek, a gombócok helyett gesztenyék szerepelnek. Az **ismétléses kombináció** és a **pénzosztás** két nyelv ugyanarra a leszámlálásra.

> **Feladat.** Hányféleképpen oszthatunk szét $k$ egyforma gesztenyét $n$ ember között úgy, hogy **mindenki kapjon legalább egyet** ($k \ge n$)?

*Első megoldás.* Adjunk előre mindenkinek egy-egy gesztenyét. A maradék $k - n$ gesztenyét már tetszőlegesen oszthatjuk szét, ez az előző feladat szerint
$$\binom{n + (k - n) - 1}{k - n} = \binom{k - 1}{k - n} = \binom{k-1}{n-1}$$
lehetőség. (Az $y_i = x_i - 1$ helyettesítés bijekció az $x_i \ge 1$ és az $y_i \ge 0$ feltételű megoldások között.)

*Második megoldás.* Rakjuk sorba a $k$ gesztenyét. A $k$ gesztenye között $k - 1$ rés van; egy szétosztást úgy kapunk, hogy ezek közül $n - 1$ résbe elválasztót teszünk (az első elválasztó előtti gesztenyék az első emberéi, és így tovább). Mivel két elválasztó nem kerülhet ugyanabba a résbe, és a sor elejére vagy végére sem kerülhet, mindenki legalább egyet kap. A lehetőségek száma $\binom{k-1}{n-1}$.

*Példa.* $10$ gesztenyét $3$ gyerek között $\binom{12}{2} = 66$-féleképpen oszthatunk szét, és ezek közül $\binom{9}{2} = 36$-ban kap mindenki legalább egyet.

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

### Azonosságok a Pascal-háromszögben

A Pascal-szabály a háromszög **két egymás utáni sorát** kapcsolja össze. Most néhány további azonosságot nézünk meg, amelyekben **különböző sorokból** vett elemek szerepelnek. Mindegyiket kétféleképpen bizonyítjuk:

- **algebrai** úton: számolással, a Pascal-szabállyal, indukcióval vagy a binomiális tétellel;
- **kombinatorikus** úton: megmutatjuk, hogy a két oldal ugyanannak a halmaznak az elemszáma, csak más csoportosításban (kettős leszámlálás).

> **Állítás (hokiütő-azonosság).** Minden $0 \le k \le n$ esetén
> $$\binom{k}{k} + \binom{k+1}{k} + \binom{k+2}{k} + \dots + \binom{n}{k} = \binom{n+1}{k+1}.$$

A Pascal-háromszögben a bal oldal egy ferde sor (átló) mentén lefelé haladó számok összege, a jobb oldal pedig az utolsó tag alatt, a másik irányban álló szám: a kijelölt számok egy hokiütőre emlékeztetnek. Például $k = 2$, $n = 5$ esetén $1 + 3 + 6 + 10 = 20 = \binom{6}{3}$.

*Algebrai bizonyítás (indukció $n$ szerint).* $n = k$-ra mindkét oldal $1$. Ha az állítás igaz $n$-re, akkor a Pascal-szabály szerint
$$\sum_{i=k}^{n+1} \binom{i}{k} = \binom{n+1}{k+1} + \binom{n+1}{k} = \binom{n+2}{k+1}. \ \blacksquare$$

*Kombinatorikus bizonyítás.* A jobb oldal az $[n+1]$ halmaz $(k+1)$ elemű részhalmazainak száma. Csoportosítsuk ezeket a **legnagyobb elemük** szerint! Ha a legnagyobb elem $i + 1$ (ahol $k \le i \le n$), akkor a többi $k$ elemet az $[i]$ halmazból kell választani: ez $\binom{i}{k}$ lehetőség. Az esetszétválasztás elve szerint az összeg éppen a bal oldal. $\blacksquare$

> **Állítás (Vandermonde-azonosság).** Minden $m, n, k \ge 0$ esetén
> $$\sum_{i=0}^{k} \binom{m}{i}\binom{n}{k-i} = \binom{m+n}{k}.$$
> Speciálisan ($m = n = k$ esetén, a szimmetriát is felhasználva):
> $$\binom{n}{0}^2 + \binom{n}{1}^2 + \dots + \binom{n}{n}^2 = \binom{2n}{n}.$$

*Kombinatorikus bizonyítás.* Egy osztályba $m$ fiú és $n$ lány jár; hányféleképpen választhatunk ki közülük egy $k$ fős küldöttséget? Közvetlenül $\binom{m+n}{k}$-féleképpen. Csoportosítsuk a küldöttségeket aszerint, hogy hány fiú van bennük: ha $i$ fiú van, akkor őket $\binom{m}{i}$-, a $k - i$ lányt $\binom{n}{k-i}$-féleképpen választhatjuk ki. Összegezve a bal oldalt kapjuk. A speciális esetben $\binom{n}{n-i} = \binom{n}{i}$ miatt a tagok négyzetek. $\blacksquare$

*Algebrai bizonyítás.* Az $(1+x)^{m+n} = (1+x)^m(1+x)^n$ polinomazonosságban hasonlítsuk össze az $x^k$ együtthatóját. A bal oldalon ez a binomiális tétel szerint $\binom{m+n}{k}$. A jobb oldalon az $x^k$ tagot úgy kapjuk, hogy az első tényező $x^i$-es tagját ($\binom{m}{i}x^i$) a második tényező $x^{k-i}$-es tagjával ($\binom{n}{k-i}x^{k-i}$) szorozzuk, és ezt minden $i$-re összeadjuk. $\blacksquare$

> **Állítás.** Minden $n \ge 1$ esetén
> $$1\cdot\binom{n}{1} + 2\cdot\binom{n}{2} + \dots + n\cdot\binom{n}{n} = n\cdot 2^{n-1}.$$

*Kombinatorikus bizonyítás.* Egy $n$ fős társaságból válasszunk ki egy tetszőleges (nemüres) bizottságot, és annak egy elnököt. Ha előbb a bizottságot választjuk ($i$ fős: $\binom{n}{i}$ lehetőség), majd az elnököt ($i$ lehetőség), a bal oldalt kapjuk. Ha előbb az elnököt választjuk ($n$ lehetőség), majd a többi $n - 1$ emberről egyenként eldöntjük, bekerül-e a bizottságba ($2^{n-1}$ lehetőség), a jobb oldalt. $\blacksquare$

*Algebrai bizonyítás.* $i\binom{n}{i} = i\cdot\frac{n!}{i!\,(n-i)!} = n\cdot\frac{(n-1)!}{(i-1)!\,(n-i)!} = n\binom{n-1}{i-1}$, így az összeg $n\sum_{i=1}^{n}\binom{n-1}{i-1} = n \cdot 2^{n-1}$, a Pascal-háromszög $(n-1)$-edik sorának összege szerint. $\blacksquare$

Érdemes megfigyelni, hogy a kombinatorikus bizonyítások mindig ugyanazt a receptet követik: **keresünk egy halmazt, amelyet a jobb oldal megszámol, és megmutatjuk, hogy a bal oldal ugyanezt a halmazt számolja, csak darabokra bontva.**

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

A következő részben két új témát kezdünk el: a **keresési feladatokat** és a **Fibonacci-számokat**.

## Az I. rész összefoglalása

- **Bizonyítási módszerek:** $A \Rightarrow B$ esetén $B$ szükséges feltétele $A$-nak, $A$ elégséges feltétele $B$-nek; „pontosan akkor” ($\iff$) állításnál két irányt kell bizonyítani. **Indirekt bizonyítás:** a tagadásból ellentmondásra jutunk. **Teljes indukció:** kezdő lépés és indukciós lépés (erős indukcióban az összes kisebb esetet feltételezhetjük).
- A leszámlálás négy alapelve: **esetszétválasztás** (+), **a rossz esetek kidobása** (−), **független választás** (×) és a **tehénszabály** (/). Ezekhez jön a **skatulyaelv** (létezés: $n$ skatulyába $kn$-nél több golyó esetén valahol legalább $k+1$ golyó van) és a **bijekció-elv** (két halmaz azonos elemszámú, ha kölcsönösen egyértelműen megfeleltethetők).
- Képletek: $n!$, $\frac{(n_1 + \dots + n_k)!}{n_1! \cdots n_k!}$, $\frac{n!}{(n-k)!}$, $n^k$, $\binom{n}{k}$, $\binom{n+k-1}{k}$. **Pénzosztás:** $k$ egyforma tárgy $n$ ember között $\binom{n+k-1}{n-1}$-féleképpen, ha mindenki kap legalább egyet, $\binom{k-1}{n-1}$-féleképpen osztható szét.
- A binomiális együtthatók tulajdonságai: szimmetria, Pascal-szabály, $\sum_i \binom{n}{i} = 2^n$, a váltakozó összeg $0$ ($n \ge 1$). Binomiális tétel: $(x+y)^n = \sum_i \binom{n}{i}x^{n-i}y^i$. Különböző sorokat összekötő azonosságok: hokiütő $\sum_{i=k}^{n}\binom{i}{k} = \binom{n+1}{k+1}$, Vandermonde $\sum_i \binom{m}{i}\binom{n}{k-i} = \binom{m+n}{k}$, $\sum_i \binom{n}{i}^2 = \binom{2n}{n}$, valamint $\sum_i i\binom{n}{i} = n2^{n-1}$ — algebrai és kombinatorikus (kettős leszámlálásos) bizonyítással.
- **Logikai szita:** $\big|A \setminus \bigcup A_i\big| = \sum_{I}(-1)^{|I|}|A_I|$. Bizonyítás: mindenkit pontosan egyszer számolunk.
- Alkalmazások: $n! = \sum_j (-1)^j\binom{n}{j}(n-j)^n$; a fixpontmentes permutációk száma $D_n = n!\sum_{j=0}^{n}\frac{(-1)^j}{j!} \approx \frac{n!}{e}$; $\varphi(n) = n\prod_{p \mid n}\left(1 - \frac{1}{p}\right)$.

---
