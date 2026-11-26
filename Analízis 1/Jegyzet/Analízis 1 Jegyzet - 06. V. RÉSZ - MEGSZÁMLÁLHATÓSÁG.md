# V. RÉSZ: MEGSZÁMLÁLHATÓSÁG

Ebben a rövid részben egy látszólag kitérőnek tűnő kérdéssel foglalkozunk: hogyan lehet végtelen halmazok „méretét” összehasonlítani? A válasz Georg Cantortól származik (1870-es évek), és alapjaiban változtatta meg a matematikáról való gondolkodást. Kiderül, hogy a végtelen nem egyféle: **több valós szám van, mint racionális**, noha mindkettőből végtelen sok van. Ennek az analízisben is komoly következményei vannak — például az 56. szakaszban egy monoton függvény szakadási helyeinek számát fogjuk ezzel megbecsülni.

## 29. Megszámlálható halmazok; ℚ megszámlálható

Véges halmazok elemszámát megszámlálással állapítjuk meg: az elemeket sorra „megcímkézzük” az $1, 2, \dots, n$ számokkal. Ez valójában egy bijekció az $\{1, \dots, n\}$ halmaz és a vizsgált halmaz között. Cantor ötlete az volt, hogy ugyanezt végtelen halmazokra is megpróbáljuk: **sorba rendezhetők-e a halmaz elemei** úgy, mint a természetes számok?

> **Definíció.** Az $A$ halmaz **megszámlálhatóan végtelen**, ha elemei egy sorozatba rendezhetők úgy, hogy minden elem pontosan egyszer szerepel; azaz létezik $f : \mathbb{N} \to A$ bijekció. Ekkor az elemek $a_1 = f(1), a_2 = f(2), \dots$ alakban felsorolhatók.
>
> Az $A$ halmaz **megszámlálható**, ha véges vagy megszámlálhatóan végtelen. Ha egy halmaz nem megszámlálható, akkor **megszámlálhatatlan** (nem megszámlálható).

**Példák.**

- $\mathbb{N}$ megszámlálhatóan végtelen (az $f(n) = n$ bijekcióval).
- A páros természetes számok halmaza is az: $f(n) = 2n$. Figyeljük meg: **egy végtelen halmaz bijekcióban állhat egy valódi részhalmazával** — ez a véges halmazoknál lehetetlen, a végteleneknek viszont jellemző tulajdonsága.
- $\mathbb{Z}$ megszámlálhatóan végtelen: a felsorolás $0, 1, -1, 2, -2, 3, -3, \dots$. Képlettel: $f(n) = \frac{n}{2}$, ha $n$ páros, és $f(n) = -\frac{n-1}{2}$, ha $n$ páratlan.

**A Hilbert-szálloda.** David Hilbert szemléletes példája: egy szállodának végtelen sok szobája van, $1, 2, 3, \dots$ számokkal, és mind foglalt. Érkezik egy új vendég. Van-e hely? Igen: mindenki költözzön az eggyel nagyobb számú szobába ($n \mapsto n + 1$), és az $1$-es szoba felszabadul. Ha megszámlálhatóan végtelen sok új vendég érkezik, az is megoldható: mindenki költözzön a kétszeres számú szobába ($n \mapsto 2n$), és felszabadul az összes páratlan szoba. A véges halmazokra vonatkozó intuíciónk („ha minden szoba foglalt, nincs több hely”) a végtelenre nem érvényes.

Néhány egyszerű, de hasznos tény (bizonyításukat csak vázoljuk):

> **Állítás.**
>
> 1. Megszámlálható halmaz minden részhalmaza megszámlálható.
> 2. Két (vagy véges sok) megszámlálható halmaz uniója megszámlálható.
> 3. Megszámlálhatóan sok megszámlálható halmaz uniója is megszámlálható.

*Bizonyításvázlat.* 1. Ha $A = \{a_1, a_2, \dots\}$ és $B \subset A$, akkor soroljuk fel $B$ elemeit abban a sorrendben, ahogy az $A$ felsorolásában előfordulnak. 2. Ha $A = \{a_1, a_2, \dots\}$ és $B = \{b_1, b_2, \dots\}$, akkor $a_1, b_1, a_2, b_2, \dots$ felsorolja $A \cup B$-t (a már szerepelt elemeket kihagyva). 3. Legyen $A_k = \{a_{k1}, a_{k2}, a_{k3}, \dots\}$, $k = 1, 2, \dots$. Írjuk az elemeket egy végtelen táblázatba, amelynek $k$-adik sorában az $A_k$ elemei állnak, és járjuk be a táblázatot **átlósan**:
$$a_{11};\quad a_{12}, a_{21};\quad a_{13}, a_{22}, a_{31};\quad a_{14}, a_{23}, a_{32}, a_{41};\quad \dots$$
Minden átlón véges sok elem van, és minden elem előbb-utóbb sorra kerül (az $a_{kj}$ a $(k + j - 1)$-edik átlón van). A már szerepelt elemeket kihagyjuk. $\blacksquare$

Most következik az első meglepetés. A racionális számok sűrűn helyezkednek el a számegyenesen (9. szakasz): bármely két szám között végtelen sok van belőlük. Azt gondolnánk, hogy ezért „sokkal több” racionális szám van, mint természetes. Pedig nem.

> **Tétel.** $\mathbb{Q}$ megszámlálhatóan végtelen.

*Első bizonyítás (menetekben).* Konstruáljuk meg a felsorolást „menetekben”. Az **$n$-edik menetben** soroljuk fel azokat a $[-n, n]$ intervallumba eső, legfeljebb $n$ nevezőjű törteket, amelyeket korábban még nem soroltunk fel, növekvő sorrendben.

- 1. menet ($[-1, 1]$, nevező $1$): $-1,\ 0,\ 1$.
- 2. menet ($[-2, 2]$, nevező legfeljebb $2$): $-2,\ -\frac{3}{2},\ -\frac{1}{2},\ \frac{1}{2},\ \frac{3}{2},\ 2$.
- 3. menet ($[-3, 3]$, nevező legfeljebb $3$): $-3,\ -\frac{8}{3},\ -\frac{5}{2},\ -\frac{7}{3},\ \dots$, és így tovább.

Minden menetben csak **véges sok** új törtet írunk fel (hiszen véges sok nevező és egy korlátos intervallum van), és minden racionális szám előbb-utóbb sorra kerül: ha $\frac{p}{q}$ racionális ($q > 0$), akkor legkésőbb a $\max\{|p|, q\}$-adik menetben felírjuk. A menetek egymás után fűzésével a $\mathbb{Q}$ minden eleme pontosan egyszer szerepel egy sorozatban:
$$-1,\ 0,\ 1,\ -2,\ -\tfrac{3}{2},\ -\tfrac{1}{2},\ \tfrac{1}{2},\ \tfrac{3}{2},\ 2,\ \dots \qquad \blacksquare$$

*Második bizonyítás (átlós bejárás).* A pozitív racionális számokat írjuk egy táblázatba: a $q$-adik sorba a $\frac{1}{q}, \frac{2}{q}, \frac{3}{q}, \dots$ törtek kerülnek. Az előző állítás 3. pontjának átlós bejárása minden pozitív törtet felsorol (az ismétlődőket, mint $\frac{2}{4} = \frac{1}{2}$, kihagyjuk). A negatívakat és a nullát a $\mathbb{Z}$ felsorolásához hasonlóan illesztjük be. Rövidebben: $\mathbb{Q} = \bigcup_{q=1}^{\infty}\left\{\frac{p}{q} : p \in \mathbb{Z}\right\}$ megszámlálhatóan sok megszámlálható halmaz uniója. $\blacksquare$

## 30. Algebrai és transzcendens számok

A racionális számok a legegyszerűbb egyenletek, a $qx - p = 0$ alakú elsőfokú egyenletek gyökei. Természetes általánosítás a magasabb fokú egyenletek gyökeit is bevonni.

> **Definíció.** Egy $\alpha$ (valós vagy komplex) szám **algebrai**, ha gyöke egy nem azonosan nulla, **egész együtthatós** polinomnak, azaz van olyan $a_n x^n + \dots + a_1 x + a_0$ polinom ($a_k \in \mathbb{Z}$, nem mind nulla), amelyre $a_n\alpha^n + \dots + a_1\alpha + a_0 = 0$.
>
> Egy szám **transzcendens**, ha nem algebrai.

**Példák algebrai számokra.**

- Minden racionális szám algebrai: $\frac{p}{q}$ gyöke a $qx - p$ polinomnak.
- $\sqrt{2}$ gyöke az $x^2 - 2$ polinomnak; $\sqrt[3]{5}$ az $x^3 - 5$-nek.
- Az aranymetszés aránya, $\frac{1 + \sqrt{5}}{2}$, gyöke az $x^2 - x - 1$ polinomnak.
- $\sqrt{2} + \sqrt{3}$ is algebrai: ha $\alpha = \sqrt{2} + \sqrt{3}$, akkor $\alpha^2 = 5 + 2\sqrt{6}$, tehát $(\alpha^2 - 5)^2 = 24$, azaz $\alpha$ gyöke az $x^4 - 10x^2 + 1$ polinomnak.

Vajon minden valós szám algebrai? Az, hogy egy konkrét szám transzcendens, általában rendkívül nehéz kérdés: az első konkrét transzcendens számot Joseph Liouville konstruálta 1844-ben, az $e$ transzcendenciáját Charles Hermite bizonyította 1873-ban, a $\pi$-ét Ferdinand von Lindemann 1882-ben (ezzel végleg eldőlt, hogy a kör négyszögesítése körzővel és vonalzóval lehetetlen). Ezek a bizonyítások messze túlmutatnak a bevezető analízis keretein. Cantor azonban egy egészen más úton, egyetlen konkrét transzcendens szám megadása nélkül megmutatta, hogy **transzcendens számok léteznek, sőt, „majdnem minden” valós szám az.** Ennek első lépése a következő tétel.

> **Tétel.** Az algebrai számok halmaza megszámlálható.

*Bizonyítás.* Egy $p(x) = a_n x^n + \dots + a_0$ egész együtthatós, nem azonosan nulla polinom **magasságának** nevezzük a
$$h(p) = n + |a_n| + |a_{n-1}| + \dots + |a_0|$$
pozitív egész számot. Adott $h$ magasságú polinomból csak **véges sok** van: a fokszám legfeljebb $h$, és minden együttható abszolút értéke legfeljebb $h$, ami véges sok lehetőség. Minden nem azonosan nulla polinomnak véges sok gyöke van (egy $n$-edfokúnak legfeljebb $n$). Ezért a legfeljebb $h$ magasságú polinomok gyökeinek $G_h$ halmaza véges. Az algebrai számok halmaza
$$\bigcup_{h=1}^{\infty} G_h,$$
megszámlálhatóan sok véges halmaz uniója, ami a 29. szakasz állítása szerint megszámlálható. (Konkrétan: soroljuk fel előbb $G_1$ elemeit, majd $G_2$ új elemeit, és így tovább.) $\blacksquare$

## 31. ℝ nem megszámlálható

Most jön a döntő lépés: a valós számok **nem** rendezhetők sorozatba. Akármilyen ügyes felsorolással próbálkozunk, mindig marad ki valós szám.

> **Tétel (Cantor, 1874).** $\mathbb{R}$ nem megszámlálható.

*Bizonyítás (a Cantor-féle tulajdonság segítségével).* Indirekt. Tegyük fel, hogy a valós számok felsorolhatók: $\mathbb{R} = \{c_1, c_2, c_3, \dots\}$. Egymásba skatulyázott zárt intervallumokat fogunk konstruálni úgy, hogy az $n$-edik intervallum már **ne tartalmazza** a $c_n$ számot. Így a felsorolás minden tagját sorra „kizárjuk”.

- Válasszunk egy $[a_1, b_1]$ korlátos zárt intervallumot ($a_1 < b_1$), amely nem tartalmazza $c_1$-et. (Például $[c_1 + 1, c_1 + 2]$.)
- Ha az $[a_{n-1}, b_{n-1}]$ intervallum már megvan, osszuk három egyenlő részre:
$$\left[a_{n-1},\ a_{n-1} + \tfrac{d}{3}\right], \quad \left[a_{n-1} + \tfrac{d}{3},\ a_{n-1} + \tfrac{2d}{3}\right], \quad \left[a_{n-1} + \tfrac{2d}{3},\ b_{n-1}\right], \qquad d = b_{n-1} - a_{n-1}.$$
A $c_n$ szám legfeljebb kettőben lehet benne ezek közül (két szomszédosban, ha éppen egy osztópontra esik), tehát **a szélső két harmad közül legalább az egyik nem tartalmazza $c_n$-et**. Legyen ez $[a_n, b_n]$.

Így egymásba skatulyázott korlátos zárt intervallumok $[a_1, b_1] \supset [a_2, b_2] \supset \dots$ sorozatát kapjuk, amelyre minden $n$-re $c_n \notin [a_n, b_n]$. A Cantor-féle tulajdonság (9. szakasz) szerint van olyan $c$ valós szám, amely mindegyik intervallumban benne van. Ez a $c$ nem lehet egyenlő egyik $c_n$-nel sem, hiszen $c \in [a_n, b_n]$, de $c_n \notin [a_n, b_n]$. Tehát $c$ olyan valós szám, amely kimaradt a felsorolásból — ellentmondás. $\blacksquare$

**Egy másik bizonyítás: Cantor átlós módszere (1891).** Elég megmutatni, hogy már a $(0, 1)$ intervallum sem megszámlálható. Tegyük fel, hogy elemei felsorolhatók, és írjuk fel mindegyiket végtelen tizedes tört alakban:
$$\begin{aligned} c_1 &= 0{,}\mathbf{d_{11}}\,d_{12}\,d_{13}\dots \\ c_2 &= 0{,}d_{21}\,\mathbf{d_{22}}\,d_{23}\dots \\ c_3 &= 0{,}d_{31}\,d_{32}\,\mathbf{d_{33}}\dots \end{aligned}$$
Készítsünk egy új $c = 0{,}e_1 e_2 e_3 \dots$ számot úgy, hogy minden $n$-re $e_n \neq d_{nn}$ (az átlóban álló számjegyeket megváltoztatjuk), például $e_n = 5$, ha $d_{nn} \neq 5$, és $e_n = 4$, ha $d_{nn} = 5$. Ekkor $c$ az $n$-edik jegyében különbözik $c_n$-től, tehát egyetlen $c_n$-nel sem egyenlő. (Az $5$ és $4$ jegyek választása azt biztosítja, hogy $c$ tizedes tört alakja egyértelmű legyen, és ne lépjen fel a $0{,}1999\dots = 0{,}2000\dots$ típusú kétértelműség.) Ez az **átlós módszer** a matematika egyik legtermékenyebb gondolata; ugyanez a gondolat áll Gödel nemteljességi tételének és Turing megállási problémájának hátterében is.

> **Következmények.**
>
> 1. Az irracionális számok halmaza, $\mathbb{R} \setminus \mathbb{Q}$, nem megszámlálható.
> 2. **Léteznek transzcendens számok**, sőt a transzcendens számok halmaza nem megszámlálható.

*Bizonyítás.* 1. Ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható volna, akkor $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R}\setminus\mathbb{Q})$ két megszámlálható halmaz uniójaként megszámlálható volna. 2. Ugyanígy: $\mathbb{R}$ az algebrai valós számok (megszámlálható halmaz) és a transzcendens valós számok uniója. $\blacksquare$

Ez a gondolatmenet hihetetlenül erős: egyetlen transzcendens szám felírása nélkül bizonyítja, hogy belőlük „sokkal több” van, mint algebrai számból. Egyes kortársak éppen ezért gyanakodva fogadták — egy létezési bizonyítás, amely nem mutat meg semmit?

## 32. Számosság

A megszámlálhatóság fogalmát általánosíthatjuk: két halmazt akkor tekintünk „egyforma méretűnek”, ha elemeik párba állíthatók.

> **Definíció.** Az $A$ és $B$ halmazok **ekvivalensek** (azonos **számosságúak**), ha létezik $\varphi : A \to B$ bijekció. Jelölése: $A \sim B$.

Ez a reláció ekvivalenciareláció (16. szakasz):

- **reflexív:** $A \sim A$ (az identitással);
- **szimmetrikus:** ha $\varphi : A \to B$ bijekció, akkor $\varphi^{-1} : B \to A$ is az;
- **tranzitív:** ha $\varphi : A \to B$ és $\psi : B \to C$ bijekció, akkor $\psi \circ \varphi : A \to C$ is az (a III. rész 4. feladata szerint).

Ezzel a nyelvvel:

- $A$ megszámlálhatóan végtelen $\iff A \sim \mathbb{N}$;
- $A$ **kontinuum számosságú** $\iff A \sim \mathbb{R}$.

**Példák kontinuum számosságú halmazokra.**

- **Bármely két nyílt intervallum ekvivalens.** Az $(a, b)$ és $(c, d)$ intervallumok között a $\varphi(x) = c + \frac{d - c}{b - a}(x - a)$ lineáris függvény bijekció.
- **$(-1, 1) \sim \mathbb{R}$.** A $\varphi(x) = \frac{x}{1 - |x|}$ függvény bijekció $(-1, 1)$ és $\mathbb{R}$ között; az inverze $\psi(y) = \frac{y}{1 + |y|}$. (Ellenőrizzük: ha $|x| < 1$, akkor $\varphi(x)$ előjele megegyezik $x$-ével, és $\psi(\varphi(x)) = \frac{x/(1-|x|)}{1 + |x|/(1-|x|)} = \frac{x}{1 - |x| + |x|} = x$; hasonlóan $\varphi(\psi(y)) = y$. A 15. szakasz tétele szerint tehát $\varphi$ bijekció.) Következésképpen **minden nyílt intervallum kontinuum számosságú** — egy akármilyen rövid intervallumnak „ugyanannyi” pontja van, mint az egész számegyenesnek.
- **$[0, 1] \sim (0, 1)$.** Itt a Hilbert-szálloda fogását használjuk: a $0$-nak és az $1$-nek „helyet csinálunk” a $\frac{1}{n}$ alakú számok elcsúsztatásával. Legyen
$$\varphi(0) = \frac{1}{2}, \qquad \varphi(1) = \frac{1}{3}, \qquad \varphi\!\left(\frac{1}{n}\right) = \frac{1}{n + 2} \ \ (n \ge 2),$$
és minden más $x$-re $\varphi(x) = x$. Ez bijekció $[0, 1]$ és $(0, 1)$ között.

> **Tétel.** $\mathbb{R} \setminus \mathbb{Q} \sim \mathbb{R}$, azaz az irracionális számok halmaza kontinuum számosságú.

*Bizonyítás.* Ismét a Hilbert-szálloda fogását alkalmazzuk: az irracionális számok közül kiválasztunk megszámlálhatóan sokat, és ezek „elcsúsztatásával” helyet csinálunk a racionális számoknak. Legyen
$$d_n = \frac{\sqrt{2}}{n} \qquad (n \in \mathbb{N});$$
ezek különböző irracionális számok (ha $\frac{\sqrt{2}}{n}$ racionális volna, $\sqrt{2}$ is az volna). Soroljuk fel a racionális számokat: $\mathbb{Q} = \{q_1, q_2, \dots\}$. Definiáljuk a $\varphi : \mathbb{R} \setminus \mathbb{Q} \to \mathbb{R}$ függvényt így:
$$\varphi(d_{2n}) = d_n, \qquad \varphi(d_{2n-1}) = q_n, \qquad \varphi(x) = x \ \text{ minden más irracionális } x\text{-re}.$$
A páros indexű $d$-k a $d$-kre, a páratlan indexűek a racionális számokra, a többi irracionális szám önmagára képeződik. Ez a három halmaz ($\{d_n\}$, $\mathbb{Q}$, a többi irracionális szám) diszjunkt, és együtt kiadja $\mathbb{R}$-et, így $\varphi$ bijekció. $\blacksquare$

**Kitekintés.** Felmerül a kérdés: van-e a megszámlálható és a kontinuum között „köztes” számosság? Vagyis van-e olyan $H \subset \mathbb{R}$ halmaz, amely se nem megszámlálható, se nem kontinuum számosságú? Ez a híres **kontinuumhipotézis**, Hilbert 1900-as problémalistájának első pontja. A válasz meghökkentő: Kurt Gödel (1940) és Paul Cohen (1963) munkái szerint a halmazelmélet szokásos axiómáiból **sem bizonyítani, sem cáfolni nem lehet**. Az is ismert (Cantor tétele), hogy nincs „legnagyobb” számosság: bármely halmaz összes részhalmazainak halmaza nagyobb számosságú, mint maga a halmaz.

---

## Az V. rész összefoglalása

- Egy halmaz megszámlálhatóan végtelen, ha elemei sorozatba rendezhetők ($A \sim \mathbb{N}$). Végtelen halmaz bijekcióban állhat valódi részhalmazával (Hilbert-szálloda).
- $\mathbb{Z}$, $\mathbb{Q}$ és az algebrai számok halmaza megszámlálható; megszámlálhatóan sok megszámlálható halmaz uniója megszámlálható.
- $\mathbb{R}$ nem megszámlálható (Cantor; két bizonyítás: egymásba skatulyázott intervallumokkal és átlós módszerrel). Ebből következik a transzcendens számok létezése.
- A számosság-ekvivalencia ekvivalenciareláció; minden nyílt intervallum, sőt $\mathbb{R}\setminus\mathbb{Q}$ is kontinuum számosságú.

## Feladatok az V. részhez

1. Adjunk meg explicit bijekciót $\mathbb{N}$ és a páros egészek ($\{0, \pm 2, \pm 4, \dots\}$) halmaza között.
2. Bizonyítsuk be, hogy $\mathbb{N} \times \mathbb{N}$ megszámlálható.
3. Megszámlálható-e $\mathbb{N}$ véges részhalmazainak halmaza?
4. Adjunk meg bijekciót $(0, 1)$ és $(0, +\infty)$ között.
5. Bizonyítsuk be, hogy a $0$ és $1$ jegyekből álló végtelen sorozatok halmaza nem megszámlálható.
6. Megszámlálható-e azon valós számok halmaza, amelyek tizedes tört alakjában csak véges sok nem nulla jegy van?

### Megoldási útmutatók

1. Például $f(n) = n$, ha $n$ páros, és $f(n) = -(n - 1)$, ha $n$ páratlan: $f(1) = 0$, $f(2) = 2$, $f(3) = -2$, $f(4) = 4$, $f(5) = -4, \dots$
2. Átlós bejárás: $(1,1);\ (1,2), (2,1);\ (1,3), (2,2), (3,1);\ \dots$ Képlettel is megadható: $(m, n) \mapsto \frac{(m + n - 1)(m + n - 2)}{2} + m$.
3. Igen: az $n$ elemű részhalmazok $A_n$ halmaza megszámlálható (például mert $A_n$ beágyazható $\mathbb{N}^n$-be), és a véges részhalmazok halmaza $\bigcup_n A_n$ (plusz az üres halmaz).
4. Például $x \mapsto \frac{x}{1 - x}$; inverze $y \mapsto \frac{y}{1 + y}$.
5. Átlós módszer: ha $s_1, s_2, \dots$ felsorolná őket, akkor az az $s$ sorozat, amelynek $n$-edik jegye $1 - (s_n \text{ } n\text{-edik jegye})$, egyik $s_n$-nel sem egyezik meg.
6. Igen: ezek racionális számok, és a $\mathbb{Q}$ részhalmazát alkotják.

---
