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
