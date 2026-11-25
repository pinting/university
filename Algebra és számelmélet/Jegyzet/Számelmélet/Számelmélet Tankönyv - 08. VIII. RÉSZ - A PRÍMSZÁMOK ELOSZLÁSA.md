# VIII. RÉSZ: A PRÍMSZÁMOK ELOSZLÁSA

Az utolsó rész visszatér oda, ahonnan a 2. fejezetben elindultunk: hány prím van $x$-ig? Bebizonyítjuk Csebisev tételét, amely a prímszámtételt egy konstans szorzó erejéig megközelíti, és áttekintjük, mit tud ma a matematika a prímek eloszlásáról — a prímszámtételtől a Riemann-sejtésen át a prímhézagok XXI. századi áttöréseiig.

## 25. Prímszámok száma

A fejezetben főként $\pi(x)$-re adunk minél élesebb becsléseket; a létező legélesebb becslések bizonyítása azonban messze túlmegy könyvünk keretein, mert mély és technikás analízisbeli eszközöket kíván. A fejezet bizonyításainak és történeti áttekintésének egy részét Gyarmati Katalin Szalay Mihály *Számelmélet* című tankönyve alapján készítette, kisebb kiegészítésekkel.

### Történeti áttekintés

Adrien-Marie Legendre már 1798-ban azt sejtette, hogy $\pi(x)$ jól közelíthető egy
$$\frac{x}{A\log x + B}$$
alakú kifejezéssel, ahol $A$ és $B$ állandók. A sejtés igazolása felé Pafnutyij Lvovics Csebisev tette meg az első nagy lépést 1848 és 1852 között, annak bizonyításával, hogy $\pi(x)$ az $\frac{x}{\log x}$ két konstansszorosa közé esik. Tételét a következő formában mi is igazoljuk:

> **25.1. Tétel (Csebisev).** Ha $x \ge 2$, akkor
> $$0{,}34 \cdot \frac{x}{\log x} < \pi(x) < 4 \cdot \frac{x}{\log x}.$$

Csebisevnek azonban nem sikerült bizonyítania a
$$\lim_{x \to \infty}\frac{\pi(x)}{x / \log x}$$
határérték létezését — csak azt, hogy *ha* létezik, akkor szükségképpen $1$. Több mint negyven évet kellett várni, amíg a határérték létezését sikerült belátni. Ezt először Jacques Hadamard és Charles-Jean de la Vallée Poussin igazolta, egymástól függetlenül, 1896-ban:

> **25.2. Tétel (prímszámtétel).**
> $$\lim_{x \to \infty}\frac{\pi(x)}{x / \log x} = 1.$$

A prímszámtétel segítségével az $n$-edik prím nagyságára is becslést nyerhetünk:

> **25.3. Tétel.** Ha $p_1 = 2, p_2 = 3, p_3 = 5, \dots$ a prímek növekvő sorozata, akkor
> $$\lim_{n \to \infty}\frac{p_n}{n \log n} = 1.$$

(Ez a prímszámtételből adódik, $x = p_n$ helyettesítéssel: $n = \pi(p_n) \sim \frac{p_n}{\log p_n}$, és ebből — logaritmust véve — $\log p_n \sim \log n$, így $p_n \sim n \log p_n \sim n \log n$.)

Sőt, de la Vallée Poussin 1899-ben többet is igazolt: megbecsülte a prímszámtétel hibatagját.

> **25.4. Tétel.** Léteznek olyan $c_1$ és $c_2$ pozitív állandók, hogy
> $$\left|\pi(x) - \int_2^x \frac{dt}{\log t}\right| < c_1\, x\, e^{-c_2\sqrt{\log x}}.$$

### Az integrállogaritmus

Elsőre talán rejtélyes, miért jobb közelítése $\pi(x)$-nek az
$$\operatorname{Li}(x) = \int_2^x \frac{dt}{\log t}$$
**integrállogaritmus**, mint az $\frac{x}{\log x}$. Szemléletes magyarázat: a prímszámtétel szerint a $t$ szám környékén a prímek „sűrűsége” körülbelül $\frac{1}{\log t}$, és ezt a sűrűséget $2$-től $x$-ig összegezve (integrálva) $\operatorname{Li}(x)$-et kapjuk. Azt, hogy a prímek száma jól közelíthető ezzel az integrállal, már Gauss sejtette 1792 táján, 15 évesen — igaz, erre csak egy 72 éves korában (1849-ben) írt levelében utalt.

A $[2, 3000]$ intervallumon $\pi(x)$, $\operatorname{Li}(x)$ és $\frac{x}{\log x}$ grafikonját együtt ábrázolva jól látszik, hogy $\operatorname{Li}(x)$ sokkal közelebb van $\pi(x)$-hez, mint $\frac{x}{\log x}$. A kapcsolatot igazán akkor értjük meg, ha $\operatorname{Li}(x)$-et parciálisan integráljuk. Mivel $\left(\frac{t}{\log t}\right)' = \frac{1}{\log t} - \frac{1}{(\log t)^2}$, ezért
$$\int_2^x \frac{dt}{\log t} = \frac{x}{\log x} - \frac{2}{\log 2} + \int_2^x \frac{dt}{(\log t)^2}.$$
Még egyszer parciálisan integrálva, felhasználva, hogy $\left(\frac{t}{(\log t)^2}\right)' = \frac{1}{(\log t)^2} - \frac{2}{(\log t)^3}$:
$$\int_2^x \frac{dt}{\log t} = \frac{x}{\log x} + \frac{x}{(\log x)^2} + 2\int_2^x \frac{dt}{(\log t)^3} - \frac{2}{\log 2} - \frac{2}{(\log 2)^2}.$$
Az eljárást folytatva egyre finomabb közelítéseit kapjuk $\operatorname{Li}(x)$-nek: a főtag $\frac{x}{\log x}$, de a második, $\frac{x}{(\log x)^2}$ nagyságrendű tag is jelentős — ezért jobb közelítés $\operatorname{Li}(x)$.

**Egy évszázados tévedés.** Gauss és mások számításai alapján (Gauss a prímeket $3$ millióig összeszámolta) sokáig úgy tűnt, hogy (a legkisebb értékektől eltekintve) minden $x$-re $\pi(x) < \operatorname{Li}(x)$. Ezt a sejtést csak 1914-ben cáfolta John Edensor Littlewood: megmutatta, hogy $\pi(x) - \operatorname{Li}(x)$ végtelen sokszor előjelet vált. Az első előjelváltás azonban óriási számnál következik be: számítógépes vizsgálatok szerint $10^{19}$ alatt még nincs ellenpélda, másrészt Chao és Plymen 2005-ben igazolta, hogy van $10^{317}$-nél kisebb ellenpélda.

### A Csebisev-tétel bizonyítása

Az előbb említett tételek közül csak Csebisev tételét bizonyítjuk, hiszen csak annak bizonyítása érhető el elemi eszközökkel. A 25.1. Tétel felső becslésének bizonyítása a következő, önmagában is érdekes tételen alapul.

> **25.5. Tétel.** Minden $x \ge 1$ valós számra az $x$-nél nem nagyobb prímek szorzata
> $$\prod_{p \le x} p < 4^x.$$

*Bizonyítás (Erdős Pál és Kalmár László).* Feltehetjük, hogy $x = n$ egész szám (a bal oldal $[x]$-től függ, a jobb oldal $x$-szel nő). Teljes indukcióval bizonyítunk. Az $n = 1$ és $n = 2$ eset nyilvánvaló ($1 < 4$, $2 < 16$). Legyen $n \ge 3$, és tegyük fel, hogy az állítás minden $n$-nél kisebb pozitív egészre igaz.

**Ha $n$ páros,** akkor $n \ge 4$ miatt $n$ összetett, így
$$\prod_{p \le n} p = \prod_{p \le n - 1} p < 4^{n-1} < 4^n.$$

**Ha $n$ páratlan,** $n = 2k + 1$ ($k \ge 1$), akkor a szorzatot két részre bontjuk:
$$\prod_{p \le 2k+1} p = \left(\prod_{p \le k + 1} p\right)\left(\prod_{k + 2 \le p \le 2k + 1} p\right). \qquad (25.1)$$
Az indukciós feltevés szerint (mivel $k + 1 < 2k + 1$) az első zárójelben álló szorzat kisebb, mint $4^{k+1}$. A második zárójelben álló prímek mind osztói a
$$(k + 2)(k + 3)\cdots(2k + 1) = \frac{(2k + 1)!}{(k + 1)!} = k!\binom{2k + 1}{k}$$
számnak. Mivel ezek a prímek nagyobbak $k$-nál, relatív prímek $k!$-hoz, így (Eukleidész I. tétele szerint) osztói $\binom{2k+1}{k}$-nak; különböző prímek lévén a szorzatuk is osztója. Becsüljük tehát $\binom{2k+1}{k}$-t:
$$\binom{2k + 1}{k} = \frac{(2k+1)!}{k!\,(k+1)!} = \frac{(2 \cdot 4 \cdots 2k)\cdot(3 \cdot 5 \cdots (2k + 1))}{k!\,(k+1)!} = \frac{2^k \cdot 3 \cdot 5 \cdots (2k + 1)}{2 \cdot 3 \cdots (k + 1)} < \frac{2^k \cdot 4 \cdot 6 \cdots (2k + 2)}{2 \cdot 3 \cdots (k + 1)} = 2^k \cdot 2^k = 4^k.$$
(A harmadik lépésben $2 \cdot 4 \cdots 2k = 2^k k!$-sal egyszerűsítettünk, a negyedikben a páratlan tényezőket eggyel nagyobbra cseréltük, végül $4 \cdot 6 \cdots (2k + 2) = 2^k \cdot 2 \cdot 3 \cdots (k+1)$.) Így (25.1) alapján
$$\prod_{p \le 2k + 1} p < 4^{k+1} \cdot 4^k = 4^{2k + 1},$$
ami éppen a bizonyítandó állítás. $\blacksquare$

(Ugyanez a becslés rövidebben is megkapható: $\binom{2k+1}{k} = \binom{2k+1}{k+1}$, és ez a két tag szerepel az $(1 + 1)^{2k+1} = 2^{2k+1}$ binomiális kifejtésében, így $2\binom{2k+1}{k} \le 2^{2k+1}$, azaz $\binom{2k+1}{k} \le 4^k$.)

*A 25.1. Tétel felső becslésének bizonyítása (Erdős és Kalmár).* A 25.5. Tétel szerint
$$4^x > \prod_{\sqrt{x} < p \le x} p \ge \left(\sqrt{x}\right)^{\pi(x) - \pi(\sqrt{x})} \ge \left(\sqrt{x}\right)^{\pi(x) - \sqrt{x}},$$
hiszen a szorzatban $\pi(x) - \pi(\sqrt{x})$ darab, $\sqrt{x}$-nél nagyobb tényező áll, és $\pi(\sqrt{x}) \le \sqrt{x}$. A két szélső mennyiség logaritmusát véve:
$$x \log 4 > \big(\pi(x) - \sqrt{x}\big)\frac{\log x}{2}, \qquad \pi(x) < \frac{(2\log 4)\, x}{\log x} + \sqrt{x} = \left(2\log 4 + \frac{\log x}{\sqrt{x}}\right)\frac{x}{\log x}.$$
Itt $\frac{\log x}{\sqrt{x}} < 0{,}8$ minden $x \ge 2$-re. Valóban, az $h(x) = \frac{\log x}{\sqrt{x}}$ függvény deriváltja $h'(x) = \frac{2 - \log x}{2x^{3/2}}$, így $h$ az $x = e^2$ helyen veszi fel a maximumát, amely $h(e^2) = \frac{2}{e} \approx 0{,}736 < 0{,}8$. (A jegyzet ezt úgy ellenőrzi, hogy $x = 2, 3, \dots, 8$-ra kiszámolja, $x \ge 8$-ra pedig $h$ csökkenő.) Tehát, mivel $2\log 4 \approx 2{,}773$,
$$\pi(x) < (2\log 4 + 0{,}8)\frac{x}{\log x} < 4\frac{x}{\log x}. \ \blacksquare$$

**Az alsó becslés** bizonyítása Edmund Landau munkája. Ehhez a **Legendre-formulát** használjuk, amely megadja, hogy egy prím milyen kitevővel szerepel $n!$ kanonikus alakjában.

> **25.6. Lemma (Legendre-formula).** Legyen $n$ pozitív egész, $p$ prím, és $k$ az a nemnegatív egész, amelyre $p^k \le n < p^{k+1}$. Ekkor $n!$ kanonikus alakjában $p$ kitevője
> $$\left[\frac{n}{p}\right] + \left[\frac{n}{p^2}\right] + \left[\frac{n}{p^3}\right] + \dots + \left[\frac{n}{p^k}\right].$$

*Bizonyítás.* Az $n!$ az $1, 2, \dots, n$ számok szorzata. Ezek közül $\left[\frac{n}{p}\right]$ darab osztható $p$-vel; mindegyik legalább $1$-gyel járul hozzá a kitevőhöz. A számok között $p^2$-tel oszthatók is vannak, $\left[\frac{n}{p^2}\right]$ darab; ezek még egy-egy egyest adnak hozzá. Az eljárást folytatva a kitevőhöz hozzáadjuk még a $p^3, \dots, p^k$-nal osztható számok számát, és ezzel készen vagyunk, hiszen $p^{k+1}$-nel osztható szám már nincs az $1, \dots, n$ között. (Így minden $m \le n$ szám pontosan annyiszor számít, ahányadik hatványa $p$-nek osztja.) $\blacksquare$

**Példa.** A $100!$ kanonikus alakjában a $2$ kitevője $50 + 25 + 12 + 6 + 3 + 1 = 97$, az $5$ kitevője $20 + 4 = 24$. Ezért a $100!$ pontosan $24$ nullára végződik.

*A 25.1. Tétel alsó becslésének bizonyítása (Landau).* Tekintsük a $\binom{2n}{n}$ binomiális együtthatót, és írjuk fel kanonikus alakját:
$$\binom{2n}{n} = \frac{(2n)!}{(n!)^2} = \prod_{p \le 2n} p^{\beta_p}. \qquad (25.2)$$
(Csak $2n$-nél nem nagyobb prímek szerepelhetnek, mert csak ezek osztják $(2n)!$-t.) A Legendre-formula szerint
$$\beta_p = \sum_{j=1}^{k_p}\left(\left[\frac{2n}{p^j}\right] - 2\left[\frac{n}{p^j}\right]\right),$$
ahol $p^{k_p} \le 2n < p^{k_p + 1}$. Minden $y$ valós számra $[2y] - 2[y] \in \{0, 1\}$ (ha $y = [y] + \{y\}$, akkor $[2y] - 2[y] = [2\{y\}]$, ami $0$ vagy $1$), így
$$\beta_p \le \sum_{j=1}^{k_p} 1 = k_p, \qquad \text{tehát} \qquad p^{\beta_p} \le p^{k_p} \le 2n.$$
Ezt (25.2)-be írva (a szorzatnak $\pi(2n)$ tényezője van):
$$\binom{2n}{n} = \prod_{p \le 2n} p^{\beta_p} \le (2n)^{\pi(2n)}.$$
Most alulról is becsüljük ugyanezt a binomiális együtthatót:
$$\binom{2n}{n} = \frac{(2 \cdot 4 \cdots 2n)\cdot(1 \cdot 3 \cdot 5 \cdots (2n - 1))}{n!\,n!} = \frac{2^n \cdot 3 \cdot 5 \cdots (2n - 1)}{n!} \ge \frac{2^n \cdot 2 \cdot 4 \cdots (2n - 2)}{n!} = \frac{2^n \cdot 2^{n-1}(n - 1)!}{n!} = \frac{2^{2n-1}}{n} = \frac{2^{2n}}{2n}.$$
A két becslést összevetve
$$(2n)^{\pi(2n)} \ge \frac{2^{2n}}{2n}, \qquad \text{azaz} \qquad \pi(2n)\log(2n) \ge 2n\log 2 - \log(2n),$$
ahonnan
$$\pi(2n) + 1 \ge \log 2 \cdot \frac{2n}{\log(2n)}.$$
Ezzel páros egészekre lényegében beláttuk az alsó becslést. Tetszőleges $x \ge 2$ valós számra legyen $n = \left[\frac{x}{2}\right] \ge 1$; ekkor $2n \le x < 2n + 2$, tehát $2n > x - 2$ és $\log(2n) \le \log x$. Így
$$\pi(x) \ge \pi(2n) \ge \log 2 \cdot \frac{2n}{\log(2n)} - 1 \ge \log 2 \cdot \frac{x - 2}{\log x} - 1 = \log 2 \cdot \frac{x}{\log x} - \frac{2\log 2}{\log x} - 1 \ge \log 2 \cdot \frac{x}{\log x} - 3,$$
ahol az utolsó lépésben $\log x \ge \log 2$-t használtuk. Végül $\log 2 \approx 0{,}693$, és
$$\log 2 \cdot \frac{x}{\log x} - 3 > 0{,}34\,\frac{x}{\log x} \iff (\log 2 - 0{,}34)\frac{x}{\log x} > 3,$$
ami teljesül, ha $\frac{x}{\log x} > 8{,}5$, például minden $x \ge 29$-re. A kis $x$-ekre ($2 \le x < 29$) az állítás közvetlenül ellenőrizhető (például $x = 2$-re $\pi(2) = 1 > 0{,}34 \cdot \frac{2}{\log 2} \approx 0{,}98$; a legszorosabb eset ez, a többi kényelmesebben teljesül). Ezzel a 25.1. Tétel bizonyítását befejeztük. $\blacksquare$

### Bertrand posztulátuma

Ha a 25.1. Tételnél kicsit élesebb becslést tudnánk adni (mondjuk $0{,}75\frac{x}{\log x} < \pi(x) < 1{,}5\frac{x}{\log x}$ alakút), abból — elég nagy $n$-re — kijönne, hogy $\pi(n) < \pi(2n)$, vagyis hogy $n$ és $2n$ közé mindig esik prím. Ezt Joseph Bertrand sejtette először 1845-ben (ellenőrizte $n < 3\,000\,000$-ig), ezért **Bertrand-posztulátumként** ismert; a sejtést Csebisev igazolta 1852-ben.

> **25.7. Tétel (Csebisev).** Minden $n$ pozitív egészre van olyan $p$ prím, amelyre $n < p \le 2n$.

A tételnek elemi bizonyítása is ismert (Srinivasa Ramanujan 1919-ben, Erdős Pál 1932-ben adott ilyet; az utóbbi Aigner és Ziegler könyvében is megtalálható).

### A Riemann-sejtés

A prímszámok eloszlásához kapcsolódik a matematika talán leghíresebb nyitott kérdése, a **Riemann-sejtés**, amelyet Bernhard Riemann 1859-ben, a prímszámok számáról írt — egyetlen számelméleti témájú — dolgozatában fogalmazott meg. Riemann eredményei, noha nagy részüket nem bizonyította, óriási hatással voltak a számelméletre. A sejtés pontos ismertetése túlmegy könyvünk keretein; annyit említünk, hogy a
$$\zeta(s) = \sum_{n=1}^\infty \frac{1}{n^s}$$
sor ($\operatorname{Re} s > 1$-re konvergens) analitikus kiterjesztésének, a **Riemann-féle zéta-függvénynek** az úgynevezett nem triviális gyökeiről szól: azt állítja, hogy ezek mind a komplex számsík $\operatorname{Re} s = \frac{1}{2}$ egyenesén helyezkednek el. Helge von Koch 1901-es eredménye szerint a sejtés ekvivalens azzal, hogy létezik olyan $c$ pozitív konstans, amelyre
$$|\pi(x) - \operatorname{Li}(x)| < c\sqrt{x}\log x \qquad (x \ge 2).$$
A Riemann-sejtés tehát lényegében azt mondja, hogy a prímszámtétel hibatagja a lehető legkisebb.

### Éles explicit becslések

Noha $\operatorname{Li}(x)$ lényegesen jobb közelítése $\pi(x)$-nek, mint $\frac{x}{\log x}$, sok alkalmazásban elég $\pi(x)$-et $\frac{x}{\log x}$-szel közelíteni. Az ilyen típusú becslések között is vannak élesebbek és kevésbé élesek; ezek közül említünk néhányat (bizonyítás nélkül).

- J. B. Rosser és L. Schoenfeld (1962): ha $x \ge 17$, akkor
$$\frac{x}{\log x} < \pi(x) < 1{,}25506\,\frac{x}{\log x}$$
(a felső becslés minden $x > 1$-re igaz).
- P. Dusart (2018): minden $x > 1$-re
$$\pi(x) \le \frac{x}{\log x}\left(1 + \frac{1}{\log x} + \frac{2}{(\log x)^2} + \frac{7{,}59}{(\log x)^3}\right).$$
- Az $n$-edik prímre, $n \ge 6$ esetén:
$$n\big(\log(n\log n) - 1\big) < p_n < n\log(n\log n),$$
ahol a felső becslés Rossertől, az alsó Dusarttól (1999) származik.

Érdemes ismerni a prímek eloszlásával kapcsolatos további fontos eredményeket is, például **Mertens három tételét** (1874), amelyek közül az egyik szerint $\sum_{p \le x}\frac{1}{p} = \log\log x + M + o(1)$ — ez a 2.23. Tétel (a prímek reciprokösszege végtelen) kvantitatív változata.

### Prímek számtani sorozatokban

> **25.8. Tétel (Dirichlet, 1837).** Ha $a$ és $b$ relatív prím egészek, $b \ne 0$, akkor az
> $$a, \ a + b, \ a + 2b, \ \dots$$
> számtani sorozat végtelen sok prímet tartalmaz.

Speciális eseteket már láttunk: a $4k + 3$ és a $4k + 1$ alakú prímek végtelenségét (I. és VII. rész feladatai). Az általános bizonyítás nagyon mély, messze túlmegy könyvünk keretein. Ugyanígy bizonyítás nélkül említjük a modern számelmélet egyik legfontosabb, prímekkel kapcsolatos eredményét, amely Ben Greentől és Terence Taótól származik (2004, megjelent 2008-ban):

> **25.9. Tétel (Green–Tao).** A prímszámok között van tetszőlegesen hosszú számtani sorozat.

(Például $3, 5, 7$ vagy $5, 11, 17, 23, 29$ öt prímből álló számtani sorozat.)

### Prímhézagok

Fontos modern eredmények kapcsolódnak a prímhézagok becsléséhez is. Jelölje $d_n$ az $(n + 1)$-edik és az $n$-edik prím különbségét:
$$d_n = p_{n+1} - p_n.$$
A prímszámtételből azonnal következik, hogy $d_n$ „átlagosan” $\log n$ nagyságú, és így végtelen sokszor kisebb, mint $(1 + \varepsilon)\log n$. Ezt a becslést folyamatosan javították (Erdős, Bombieri és Davenport, Maier és mások). 2005 körül áttörő eredményt ért el Daniel Goldston, **Pintz János** és Cem Yıldırım: bebizonyították, hogy tetszőleges $\varepsilon > 0$ esetén végtelen sokszor teljesül
$$d_n < \varepsilon \log n,$$
sőt (egy 2010-ben megjelent folytatásban) végtelen sokszor $d_n < (\log n)^{1/2 + \varepsilon}$ is.

Ezután sikerült bebizonyítani, hogy $d_n$ végtelen sokszor kisebb egy *konstansnál*! Jitang Csang (Yitang Zhang) 2013-ban igazolta, hogy $d_n$ végtelen sokszor kisebb $70$ milliónál. Ezt a korlátot James Maynard és Terence Tao módszereivel a Polymath 8b nevű közös kutatási projekt (2014) $246$-ra csökkentette:
$$d_n \le 246 \qquad \text{végtelen sok } n\text{-re}.$$
Megközelítettük tehát, de még nem bizonyítottuk be a híres **ikerprím-sejtést**, amely szerint végtelen sok olyan $p$ prím van, amelyre $p + 2$ is prím (vagyis $d_n = 2$ végtelen sokszor).

## A VIII. rész összefoglalása

- **Csebisev:** $0{,}34\frac{x}{\log x} < \pi(x) < 4\frac{x}{\log x}$. A felső becslés kulcsa (Erdős–Kalmár): $\prod_{p \le x} p < 4^x$, mert a $(k+1, 2k+1]$ intervallum prímjeinek szorzata osztja $\binom{2k+1}{k} < 4^k$-t. Az alsó becslés (Landau): $\binom{2n}{n}$ minden prímhatvány-tényezője legfeljebb $2n$ (Legendre-formula), és $\binom{2n}{n} \ge \frac{4^n}{2n}$.
- **Prímszámtétel** (Hadamard, de la Vallée Poussin, 1896): $\pi(x) \sim \frac{x}{\log x}$, $p_n \sim n\log n$; jobb közelítés $\operatorname{Li}(x)$. A Riemann-sejtés a hibatag nagyságrendjéről szól.
- **Bertrand-posztulátum:** $n$ és $2n$ között mindig van prím. **Dirichlet:** relatív prím $a, b$-re az $a + kb$ sorozatban végtelen sok prím van. **Green–Tao:** tetszőlegesen hosszú számtani sorozatok a prímek között. **Prímhézagok:** $p_{n+1} - p_n \le 246$ végtelen sokszor.

## Feladatok a VIII. részhez

1. Hány nullára végződik a $2026!$?
2. Igazoljuk a Legendre-formula segítségével, hogy $\binom{2n}{n}$ osztható minden $n < p \le 2n$ prímmel, de nem osztható egyetlen $\frac{2n}{3} < p \le n$ prímmel sem (ha $n \ge 3$).
3. Bizonyítsuk be, hogy minden $y$ valós számra $[2y] - 2[y] \in \{0, 1\}$.
4. A 25.5. Tétel segítségével mutassuk meg, hogy $\pi(x) < 2\log 4 \cdot \frac{x}{\log x} + \sqrt{x}$, és számítsuk ki a jobb oldalt $x = 10^6$-ra. Vessük össze a valódi értékkel: $\pi(10^6) = 78498$.
5. Mutassuk meg, hogy minden $n \ge 2$-re $\binom{2n}{n} < 4^n$, és $\binom{2n}{n} \ge \frac{4^n}{2n}$.

### Megoldási útmutatók

1. Az $5$ kitevője: $\left[\frac{2026}{5}\right] + \left[\frac{2026}{25}\right] + \left[\frac{2026}{125}\right] + \left[\frac{2026}{625}\right] = 405 + 81 + 16 + 3 = 505$; a $2$ kitevője ennél nagyobb, így $505$ nullára végződik.
2. Ha $n < p \le 2n$, akkor $p$ kitevője $(2n)!$-ban $1$, $(n!)^2$-ben $0$. Ha $\frac{2n}{3} < p \le n$ és $n \ge 3$, akkor $p^2 > \frac{4n^2}{9} \ge 2n$ (mert $n \ge 4{,}5$-re $\frac{4n^2}{9} \ge 2n$; $n = 3$ és $n = 4$ esetén az egyetlen szóba jövő prím $p = 3$, és $p^2 = 9 > 2n$), így $p$ kitevője $\left[\frac{2n}{p}\right] - 2\left[\frac{n}{p}\right] = 2 - 2 = 0$.
3. $y = m + t$, $m = [y]$, $0 \le t < 1$: $[2y] - 2[y] = [2t] \in \{0, 1\}$.
4. A bizonyításban kapott becslés: $\pi(10^6) < 2{,}7726 \cdot \frac{10^6}{13{,}8155} + 1000 \approx 201\,687$. A valódi érték $78\,498$; a becslés tehát kb. $2{,}6$-szoros. (Összehasonlításul $\frac{10^6}{\log 10^6} \approx 72\,382$, $\operatorname{Li}(10^6) \approx 78\,626$.)
5. $\binom{2n}{n}$ az $(1 + 1)^{2n} = 4^n$ binomiális kifejtés egyik ($n \ge 1$-re nem az egyetlen) tagja, így kisebb $4^n$-nél. Az alsó becslést a fejezetben láttuk: $\binom{2n}{n} \ge \frac{2^{2n-1}}{n}$. (Másképp: a $2n + 1$ binomiális együttható közül $\binom{2n}{n}$ a legnagyobb, összegük $4^n$, így $\binom{2n}{n} \ge \frac{4^n}{2n + 1}$.)

---
