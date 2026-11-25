# II. RÉSZ: NEVEZETES EGYENLŐTLENSÉGEK

Az algebrában a fő eszköz az egyenlőség: egyenleteket rendezünk, azonosságokat alkalmazunk. Az analízisben a helyzet más. A határértékek, a közelítések világában ritkán tudunk valamit pontosan kiszámolni; ehelyett **becslünk**: megmutatjuk, hogy egy mennyiség kisebb egy másiknál, vagy hogy két mennyiség eltérése tetszőlegesen kicsivé tehető. Az analízis igazi eszköze tehát az **egyenlőtlenség**.

Ebben a részben három klasszikus egyenlőtlenséget bizonyítunk: a számtani és mértani közép közötti egyenlőtlenséget, a harmonikus közepet is bevonó kiterjesztését, valamint a Bernoulli-egyenlőtlenséget. Mindhárom újra és újra elő fog kerülni — elsőként már a 17. szakaszban, ahol az $e$ szám definíciójához vezetnek.

## 10. A számtani és a mértani közép

Ha két szám „átlagáról” beszélünk, legtöbbször a számtani közepükre gondolunk. Az átlagnak azonban többféle értelmes fogalma van, és mindegyik más-más helyzetben természetes.

> **Definíció (közepek).** Legyenek $a_1, \dots, a_n \in \mathbb{R}$.
>
> - A **számtani közepük** $\displaystyle S = \frac{a_1 + a_2 + \dots + a_n}{n}$.
> - Ha $a_1, \dots, a_n > 0$ pozitív valós számok, akkor
>   - a **mértani (geometriai) közepük** $\displaystyle m = \sqrt[n]{a_1 a_2 \cdots a_n}$,
>   - a **harmonikus közepük** $\displaystyle h = \frac{n}{\frac{1}{a_1} + \frac{1}{a_2} + \dots + \frac{1}{a_n}}$.

(Az $n$-edik gyök létezését pozitív számokra egyelőre elfogadjuk; bizonyítását az 54. szakaszban adjuk meg.)

**Mikor melyik a természetes?** A számtani közép az összeget őrzi meg: ha minden $a_k$-t $S$-re cserélünk, az összeg nem változik. A mértani közép a **szorzatot** őrzi meg: ha minden $a_k$-t $m$-re cserélünk, a szorzat nem változik. Ha például egy befektetés értéke az első évben $a_1$-szeresére, a másodikban $a_2$-szeresére nő, akkor az „átlagos” éves növekedési szorzó az a $q$, amelyre $q^2 = a_1 a_2$, vagyis a mértani közép. (Ha az első évben $50\%$-ot nő, a másodikban $50\%$-ot csökken, akkor $a_1 = 1{,}5$ és $a_2 = 0{,}5$; a számtani közép $1$, ami azt sugallná, hogy a befektetés értéke nem változott — valójában $1{,}5 \cdot 0{,}5 = 0{,}75$, azaz $25\%$-ot veszítettünk, és az átlagos szorzó $\sqrt{0{,}75} \approx 0{,}866$.)

**Két szám esete, geometriailag.** Legyen $a, b > 0$. Rajzoljunk egy $a + b$ átmérőjű félkört, és az átmérőn jelöljük be azt a pontot, amely azt $a$ és $b$ hosszú részekre osztja. Az ebben a pontban emelt merőleges félkörig tartó szakaszának hossza — a magasságtétel szerint — $\sqrt{ab}$, a félkör sugara pedig $\frac{a+b}{2}$. Mivel egy félkörben semmilyen ilyen merőleges szakasz nem lehet hosszabb a sugárnál, $\sqrt{ab} \le \frac{a+b}{2}$, és egyenlőség csak akkor van, ha a merőlegest a középpontban emeljük, azaz $a = b$.

Ez az egyenlőtlenség tetszőleges számú tagra is igaz.

> **Tétel (a számtani és a mértani közép közötti egyenlőtlenség).** Ha $a_1, \dots, a_n$ pozitív számok, akkor
> $$\sqrt[n]{a_1 a_2 \cdots a_n} \le \frac{a_1 + a_2 + \dots + a_n}{n},$$
> és egyenlőség akkor és csak akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$.

A bizonyítás előtt nézzük meg, miért nem működik a szokásos teljes indukció. Ha tudjuk az állítást $n$ számra, és $n + 1$ számra akarjuk igazolni, akkor nem világos, hogyan használhatnánk fel az $n$-tagú esetet: az $n+1$-edik gyök és az $n$-edik gyök nem illeszkedik egymáshoz. Augustin-Louis Cauchy szellemes ötlete az volt, hogy az indukciót **két irányban** végezzük: először nagy lépésekkel felfelé ugrunk (a kettőhatványokon), majd egyesével visszafelé lépkedve töltjük ki a hézagokat.

Jelölje $A_n$ az $n$ számra vonatkozó állítást (az egyenlőség esetével együtt). Az $A_1$ triviális. A bizonyítás három lépésből áll:

- **I.** $A_2$ igaz.
- **II.** Ha $A_m$ igaz, akkor $A_{2m}$ is igaz. Ebből I. segítségével $A_2, A_4, A_8, \dots$, vagyis $A_{2^k}$ minden $k \in \mathbb{N}$-re adódik.
- **III.** Ha $A_n$ igaz és $l < n$, akkor $A_l$ is igaz.

Ez a három lépés valóban elég: ha $l$ tetszőleges természetes szám, válasszunk egy $2^k > l$ kettőhatványt (például $k = l$ megfelel, hiszen $2^l > l$). A II. lépés szerint $A_{2^k}$ igaz, a III. lépés szerint pedig ebből $A_l$ is.

*Bizonyítás.*

**I. lépés: két szám esete.** Azt kell látnunk, hogy $a, b > 0$ esetén $\sqrt{ab} \le \frac{a+b}{2}$. Mindkét oldal pozitív, tehát az egyenlőtlenség ekvivalens a négyzetre emelt alakkal (pozitív számok körében $x \le y \iff x^2 \le y^2$):
$$ab \le \frac{(a+b)^2}{4} = \frac{a^2 + 2ab + b^2}{4}.$$
Átrendezve ez azt jelenti, hogy
$$0 \le \frac{a^2 - 2ab + b^2}{4} = \frac{(a - b)^2}{4},$$
ami igaz, hiszen négyzetszám nemnegatív. Egyenlőség pontosan akkor áll, ha $(a - b)^2 = 0$, azaz $a = b$.

**II. lépés: megduplázás.** Tegyük fel, hogy $A_k$ igaz, és legyen $a_1, \dots, a_{2k}$ pozitív. Osszuk a számokat két egyenlő, $k$ elemű csoportra, és legyen
$$\alpha = \sqrt[k]{a_1 \cdots a_k}, \qquad \beta = \sqrt[k]{a_{k+1} \cdots a_{2k}}$$
a két csoport mértani közepe. Az indukciós feltevés szerint
$$\alpha \le \frac{a_1 + \dots + a_k}{k}, \qquad \beta \le \frac{a_{k+1} + \dots + a_{2k}}{k}.$$
Az összes szám mértani közepét a két csoport mértani közepéből rakhatjuk össze, hiszen
$$\sqrt[2k]{a_1 \cdots a_{2k}} = \sqrt{\sqrt[k]{a_1 \cdots a_k}\cdot\sqrt[k]{a_{k+1}\cdots a_{2k}}} = \sqrt{\alpha\beta}.$$
Erre az I. lépést alkalmazva, majd a két indukciós becslést felhasználva:
$$\sqrt{\alpha\beta} \le \frac{\alpha + \beta}{2} \le \frac{1}{2}\left(\frac{a_1 + \dots + a_k}{k} + \frac{a_{k+1} + \dots + a_{2k}}{k}\right) = \frac{a_1 + \dots + a_{2k}}{2k}.$$
Ez éppen $A_{2k}$ egyenlőtlensége. Egyenlőség csak akkor állhat, ha mindhárom becslésben egyenlőség áll: $\alpha = \beta$, és mindkét csoporton belül minden szám egyenlő. Ekkor az első csoport minden eleme $\alpha$, a második minden eleme $\beta = \alpha$, tehát mind a $2k$ szám egyenlő.

**III. lépés: visszafelé lépés.** Legyen $l < n$, tegyük fel, hogy $A_n$ igaz, és legyen $a_1, \dots, a_l$ pozitív. Jelölje
$$s = \frac{a_1 + \dots + a_l}{l}$$
ezek számtani közepét. **A trükk:** egészítsük ki az $l$ számot $n$ számra úgy, hogy a hiányzó $n - l$ helyre magát a számtani közepet, $s$-et írjuk. Alkalmazzuk $A_n$-t az
$$a_1, \dots, a_l, \underbrace{s, s, \dots, s}_{n - l \text{ darab}}$$
számokra. A számtani közepük
$$\frac{a_1 + \dots + a_l + (n - l)s}{n} = \frac{ls + (n-l)s}{n} = s,$$
vagyis a kiegészítés a számtani közepet nem változtatta meg — éppen ezért választottuk így. $A_n$ szerint tehát
$$\sqrt[n]{a_1 \cdots a_l \cdot s^{n-l}} \le s.$$
Emeljük mindkét oldalt az $n$-edik hatványra, és osszunk $s^{n-l} > 0$-val:
$$a_1 \cdots a_l \cdot s^{n-l} \le s^n \implies a_1 \cdots a_l \le s^l.$$
Végül vonjunk $l$-edik gyököt:
$$\sqrt[l]{a_1 \cdots a_l} \le s = \frac{a_1 + \dots + a_l}{l},$$
ami éppen $A_l$ egyenlőtlensége. Egyenlőség pontosan akkor áll, ha az $A_n$-ben egyenlőség volt, azaz ha az $a_1, \dots, a_l, s, \dots, s$ számok mind egyenlők — vagyis $a_1 = \dots = a_l$ (és akkor ez a közös érték automatikusan $s$). $\blacksquare$

**Kidolgozott példa 1.** Ha $x > 0$, akkor
$$x + \frac{1}{x} \ge 2,$$
és egyenlőség csak $x = 1$-re áll. Valóban, az $x$ és $\frac{1}{x}$ számokra alkalmazva a tételt: $\frac{x + \frac{1}{x}}{2} \ge \sqrt{x \cdot \frac{1}{x}} = 1$.

**Kidolgozott példa 2 (szélsőérték-feladat deriválás nélkül).** Az adott $2p$ kerületű téglalapok közül melyiknek legnagyobb a területe? Ha az oldalak $a$ és $b$, akkor $a + b = p$, és a terület
$$ab = \left(\sqrt{ab}\right)^2 \le \left(\frac{a+b}{2}\right)^2 = \frac{p^2}{4},$$
egyenlőséggel pontosan akkor, ha $a = b$. A maximális területű téglalap tehát a **négyzet**. Hasonlóan: adott térfogatú téglatestek közül a kocka felszíne a legkisebb. Ezek a feladatok később, a differenciálszámítás eszközeivel is megoldhatók lesznek (77. szakasz), de a közepek közötti egyenlőtlenség gyakran gyorsabb.

## 11. A harmonikus közép

**Egy motiváló feladat.** Egy autó $A$-ból $B$-be $60$ km/h, visszafelé $40$ km/h sebességgel halad. Mekkora az átlagsebessége a teljes úton? A kézenfekvő válasz, $50$ km/h, **hibás**. Ha a távolság $d$, akkor odafelé $\frac{d}{60}$, visszafelé $\frac{d}{40}$ órát utazik, tehát az átlagsebesség
$$\frac{2d}{\frac{d}{60} + \frac{d}{40}} = \frac{2}{\frac{1}{60} + \frac{1}{40}} = 48 \text{ km/h}.$$
Ez éppen a $60$ és a $40$ harmonikus közepe. A harmonikus közép tehát akkor természetes, amikor **azonos mennyiségekre** (itt: azonos távolságokra) vonatkozó **arányokat** (itt: sebességeket) átlagolunk. Hogy az eredmény kisebb lett, mint a számtani közép, az nem véletlen: a lassabb szakaszon több időt töltünk, ezért annak nagyobb a súlya.

A harmonikus és a mértani közép viszonyához nem kell új bizonyítás: elég a számtani–mértani egyenlőtlenséget a **reciprokokra** alkalmazni.

> **Tétel (a mértani és a harmonikus közép közötti egyenlőtlenség).** Pozitív $a_1, \dots, a_n$ számokra
> $$\frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}} \le \sqrt[n]{a_1 \cdots a_n},$$
> és egyenlőség pontosan akkor áll, ha $a_1 = \dots = a_n$.

*Bizonyítás.* Alkalmazzuk a számtani–mértani egyenlőtlenséget az $\frac{1}{a_1}, \dots, \frac{1}{a_n}$ pozitív számokra:
$$\sqrt[n]{\frac{1}{a_1} \cdots \frac{1}{a_n}} \le \frac{\frac{1}{a_1} + \dots + \frac{1}{a_n}}{n}.$$
A bal oldal $\frac{1}{\sqrt[n]{a_1 \cdots a_n}}$, azaz a mértani közép reciproka; a jobb oldal a harmonikus közép reciproka. Pozitív számok reciprokát véve az egyenlőtlenség megfordul (3. szakasz, 5. szabály):
$$\sqrt[n]{a_1 \cdots a_n} \ge \frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}.$$
Egyenlőség pontosan akkor áll, ha a reciprokok egyenlők, azaz ha az $a_k$ számok egyenlők. $\blacksquare$

A két tételt összevetve a három közép sorrendje mindig
$$h \le m \le S,$$
és bármelyik helyen pontosan akkor áll egyenlőség, ha mindegyik szám egyenlő. (A 44. szakaszban egy negyedik közepet, a **négyzetes közepet** is megismerünk, amely mindhárom fenti középnél legalább akkora.)

## 12. A Bernoulli-egyenlőtlenség

Az $(1 + x)^n$ hatványt a binomiális tétellel kifejthetjük:
$$(1 + x)^n = 1 + nx + \binom{n}{2}x^2 + \dots + x^n.$$
Ha $x \ge 0$, akkor a jobb oldalon minden tag nemnegatív, tehát nyilvánvalóan $(1+x)^n \ge 1 + nx$: az első két tagot megtartjuk, a többit elhagyjuk. A Bernoulli-egyenlőtlenség azt mondja, hogy ez a durva, de rendkívül hasznos becslés bizonyos **negatív** $x$-ekre is érvényben marad.

> **Tétel (Bernoulli-egyenlőtlenség).** Ha $x \ge -1$, akkor minden $n \in \mathbb{N}$ esetén
> $$(1+x)^n \ge 1 + nx.$$

*Bizonyítás (teljes indukcióval).*

*Kezdőlépés.* $n = 1$ esetén $(1+x)^1 = 1 + 1 \cdot x$, tehát egyenlőség áll.

*Indukciós lépés.* Tegyük fel, hogy $(1+x)^n \ge 1 + nx$. Ekkor
$$(1+x)^{n+1} = (1+x)\cdot(1+x)^n \ge (1+x)(1+nx).$$
Itt felhasználtuk az indukciós feltevést **és** azt, hogy $1 + x \ge 0$. Ez utóbbi pontosan az $x \ge -1$ feltétel: ha $1 + x$ negatív volna, akkor vele szorozva az egyenlőtlenség megfordulna. Kibontva a jobb oldalt:
$$(1+x)(1+nx) = 1 + nx + x + nx^2 = 1 + (n+1)x + nx^2 \ge 1 + (n+1)x,$$
mert $nx^2 \ge 0$. Ezzel az állítást $(n+1)$-re is igazoltuk. $\blacksquare$

Az indukciós lépésből az is kiolvasható, mikor áll egyenlőség: $n \ge 2$ esetén pontosan akkor, ha $x = 0$ (különben az $(n - 1)$-ről $n$-re való indukciós lépésben hozzáadott $(n - 1)x^2 > 0$ tag miatt szigorú az egyenlőtlenség).

**Kell-e az $x \ge -1$ feltétel?** Páros $n$-re nem kellene ($n = 2$-re $(1+x)^2 = 1 + 2x + x^2 \ge 1 + 2x$ minden $x$-re igaz), páratlan $n$-re viszont igen. Például $n = 3$, $x = -4$ esetén
$$(1 + x)^3 = (-3)^3 = -27, \qquad 1 + 3x = -11,$$
és $-27 < -11$. A feltétel tehát általában nem hagyható el.

**Szemléletes jelentés.** Az $y = (1 + x)^n$ grafikonjához az $x = 0$ pontban húzott érintő éppen az $y = 1 + nx$ egyenes (ezt majd a differenciálszámításban látjuk be). A Bernoulli-egyenlőtlenség tehát azt mondja, hogy a grafikon az érintője fölött halad — ez a **konvexitás** jele, amellyel a 42. és a 81. szakaszban foglalkozunk.

**Kidolgozott példa 1.** Minden $n \in \mathbb{N}$-re
$$\left(1 + \frac{1}{n}\right)^n \ge 1 + n \cdot \frac{1}{n} = 2.$$
Ez az $e$ számot definiáló sorozat első becslése; a 17. szakaszban folytatjuk.

**Kidolgozott példa 2 (előzetes).** Ha $q > 1$, akkor a $q^n$ hatványok minden határon túl nőnek. Írjuk ugyanis $q$-t $q = 1 + b$ alakba, ahol $b > 0$. A Bernoulli-egyenlőtlenség szerint
$$q^n = (1 + b)^n \ge 1 + nb,$$
és az arkhimédészi tulajdonság szerint $1 + nb$ — elég nagy $n$-re — bármely adott számnál nagyobb. Ezt a becslést a 22. és a 61. szakaszban fogjuk felhasználni.

**Kiterjesztés racionális kitevőre.** Megmutatható (és a hatványozás tárgyalása után, a 79. szakasz konvexitási eszközeivel magától értetődővé válik), hogy ha $x \ge -1$ és $r \in \mathbb{Q}$ pozitív racionális szám (negatív $r$ esetén $x > -1$-et kell feltenni), akkor
$$0 < r < 1 \implies (1+x)^r \le 1 + rx, \qquad r > 1 \ \text{vagy}\ r < 0\ (x > -1) \implies (1+x)^r \ge 1 + rx,$$
és mindkét esetben egyenlőség pontosan akkor áll, ha $x = 0$ (a $0^r = 0$ megállapodással az $x = -1$, $r > 0$ esetre is; $r = 0$-ra $(1+x)^0 = 1$ minden $x > -1$-re egyenlőséget ad). (Az $r = \frac{1}{2}$ esetben ez a jól ismert $\sqrt{1 + x} \le 1 + \frac{x}{2}$ becslés.)

---

## A II. rész összefoglalása

- Pozitív számokra a harmonikus, a mértani és a számtani közép sorrendje $h \le m \le S$; egyenlőség csak akkor, ha minden szám egyenlő.
- A számtani–mértani egyenlőtlenség bizonyítása Cauchy kétirányú indukciójával megy: felfelé a kettőhatványokon, majd visszafelé egyesével, a hiányzó helyeket a számtani középpel kitöltve.
- A Bernoulli-egyenlőtlenség, $(1 + x)^n \ge 1 + nx$ ($x \ge -1$), az egyik legegyszerűbb és leghasznosabb becslés; az $x \ge -1$ feltétel az indukciós lépésben az $(1+x)$-szel való szorzásnál kell.

## Feladatok a II. részhez

1. Bizonyítsuk be, hogy pozitív $a, b, c$ esetén $(a + b)(b + c)(c + a) \ge 8abc$.
2. Egy kerékpáros egy emelkedőn $10$ km/h-val megy fel, majd ugyanazon az úton $30$ km/h-val jön le. Mennyi az átlagsebessége?
3. Bizonyítsuk be, hogy minden $n \ge 2$ egészre $n! < \left(\frac{n+1}{2}\right)^n$.
4. Bizonyítsuk be a Bernoulli-egyenlőtlenség segítségével, hogy minden $n \in \mathbb{N}$-re $\left(1 - \frac{1}{n^2}\right)^n \ge 1 - \frac{1}{n}$.
5. Adott $V$ térfogatú téglatestek közül melyiknek a legkisebb a felszíne?
6. Bizonyítsuk be, hogy ha $a_1, \dots, a_n > 0$ és $a_1 a_2 \cdots a_n = 1$, akkor $a_1 + \dots + a_n \ge n$.

### Megoldási útmutatók

1. A három tényezőre külön-külön: $a + b \ge 2\sqrt{ab}$, $b + c \ge 2\sqrt{bc}$, $c + a \ge 2\sqrt{ca}$. A pozitív oldalú egyenlőtlenségeket összeszorozva $(a+b)(b+c)(c+a) \ge 8\sqrt{a^2b^2c^2} = 8abc$.
2. A $10$ és a $30$ harmonikus közepe: $\frac{2}{\frac{1}{10} + \frac{1}{30}} = 15$ km/h.
3. Alkalmazzuk a számtani–mértani egyenlőtlenséget az $1, 2, \dots, n$ számokra: $\sqrt[n]{n!} \le \frac{1 + 2 + \dots + n}{n} = \frac{n+1}{2}$. Mivel $n \ge 2$ esetén a számok nem mind egyenlők, az egyenlőtlenség szigorú.
4. Az $x = -\frac{1}{n^2} \ge -1$ választással $(1 + x)^n \ge 1 + nx = 1 - \frac{1}{n}$.
5. Ha az élek $a, b, c$, akkor $abc = V$, a felszín $2(ab + bc + ca)$. A számtani–mértani egyenlőtlenség szerint $\frac{ab + bc + ca}{3} \ge \sqrt[3]{a^2b^2c^2} = V^{2/3}$, egyenlőséggel pontosan akkor, ha $ab = bc = ca$, azaz $a = b = c$. A kocka felszíne a legkisebb.
6. $\frac{a_1 + \dots + a_n}{n} \ge \sqrt[n]{a_1 \cdots a_n} = 1$.

---
