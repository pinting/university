## 1. A valós számok felépítése, rendezés és távolság

Az analízis alapja a valós számok halmaza ($\mathbb{R}$). Ahhoz, hogy szigorúan tudjunk érvelni, nem hagyatkozhatunk pusztán a középiskolai szemléletre; pontos szabályokra, úgynevezett **axiómákra** van szükségünk.

### Számtestek és irracionalitás

Egy halmazt **testnek** nevezünk, ha értelmezve van rajta az összeadás és a szorzás, és ezek teljesítik a megszokott műveleti tulajdonságokat: kommutatívak, asszociatívak, van nullelem ($0$) és egységelem ($1$), minden elemnek van ellentettje ($-x$), minden nemnulla elemnek van reciproka ($1/x$), valamint érvényes a disztributivitás.

* A racionális számok ($\mathbb{Q}$, azaz a $p/q$ alakú törtek) és a valós számok ($\mathbb{R}$) is testet alkotnak. Ez azt jelenti, hogy két racionális szám összege, különbsége, szorzata és (nemnulla) hányadosa is mindig racionális.


* Az **irracionális számok** ($\mathbb{R} \setminus \mathbb{Q}$, mint a $\sqrt{2}$, $\sqrt{6}$ vagy a $\lg 6$) halmaza viszont **nem test**, mert még az összeadásra és szorzásra sem zárt.


* *Példa:* $\sqrt{2} + (-\sqrt{2}) = 0 \in \mathbb{Q}$, illetve $\sqrt{2} \cdot \sqrt{2} = 2 \in \mathbb{Q}$ (két irracionális szám összege és szorzata lett racionális), miközben $\sqrt{2} \cdot \sqrt{3} = \sqrt{6} \notin \mathbb{Q}$.


* Ha viszont egy $a$ racionális és egy $c$ irracionális számot adunk össze, az eredmény ($a+c$) **mindig irracionális**. Ezt **indirekt úton** (ellentmondásra vezetéssel) bizonyítjuk: ha $a+c = r \in \mathbb{Q}$ lenne, akkor $c = r - a$ is racionális lenne (mivel $\mathbb{Q}$ zárt a kivonásra), ami ellentmond annak, hogy $c$ irracionális.


* *Számelméleti bizonyítási példa:* A $\lg 6$ irracionális. Ha ugyanis $\lg 6 = p/q$ lenne ($p, q \in \mathbb{N}^+$), akkor $10^{p/q} = 6 \implies 10^p = 6^q \implies 2^p \cdot 5^p = 2^q \cdot 3^q$. A **számelmélet alaptétele** (a prímtényezős felbontás egyértelműsége) miatt ez lehetetlen, hiszen a jobb oldal osztható $3$-mal, a bal oldal viszont nem.





### Rendezési axiómák

A valós számokat össze tudjuk hasonlítani a $<$ relációval, amely négy alapvető szabálynak (axiómának) engedelmeskedik:

1. **Trichotómia:** Bármely két $x, y$ valós számra az $x < y$, $x = y$, $y < x$ esetek közül pontosan az egyik teljesül.


2. **Tranzitivitás:** Ha $x < y$ és $y < z$, akkor $x < z$.


3. **Összeadással való kompatibilitás:** Ha $x < y$, akkor mindkét oldalhoz ugyanazt a $z$ számot adva az irány megmarad: $x + z < y + z$.


4. **Szorzással való kompatibilitás:** Pozitív számmal ($z > 0$) szorozva az egyenlőtlenség iránya megmarad: $x < y \implies xz < yz$. (Ezekből már levezethető minden „iskolai” szabály, például hogy negatív számmal szorozva megfordul a relációjel, vagy hogy $x^2 \ge 0$.)



### Abszolút érték és környezetek

Egy $x$ szám **abszolút értéke** a $0$-tól való távolsága: $\vert{}x\vert{} = x$, ha $x \ge 0$, és $\vert{}x\vert{} = -x$, ha $x < 0$ (másképpen: $\vert{}x\vert{} = \max\{x, -x\}$). Geometriailag $\vert{}x - a\vert{}$ az $x$ és az $a$ pont távolságát méri a számegyenesen.
Legfontosabb tulajdonságai:

* $\vert{}x\vert{} \ge 0$, és $\vert{}x\vert{} = 0 \iff x = 0$.


* Szorzattartó: $\vert{}xy\vert{} = \vert{}x\vert{} \cdot \vert{}y\vert{}$.


* **Háromszög-egyenlőtlenség:** $\vert{}x + y\vert{} \le \vert{}x\vert{} + \vert{}y\vert{}$ (két szám összegének nagysága legfeljebb a nagyságaik összege).


* **Fordított háromszög-egyenlőtlenség:** $\big\vert{}\vert{}x\vert{} - \vert{}y\vert{}\big\vert{} \le \vert{}x - y\vert{}$.



Az analízisben a „közel van egymáshoz” kifejezést a **környezetekkel** tesszük precízzé. Egy $a$ pont $\varepsilon > 0$ sugarú környezete azon $x$ pontok halmaza, amelyek $\varepsilon$-nál közelebb vannak $a$-hoz:


$$K_\varepsilon(a) = \{x \in \mathbb{R} : \vert{}x - a\vert{} < \varepsilon\} = (a - \varepsilon, a + \varepsilon).$$


Ez az ekvivalencia ($\vert{}x - a\vert{} < \varepsilon \iff a - \varepsilon < x < a + \varepsilon$) teszi lehetővé, hogy a határérték-számításban egy abszolút értékes egyenlőtlenséget két darab, abszolút érték nélküli egyenlőtlenségre bontsunk szét.

---

## 2. Matematikai logika és bizonyítási technikák

### Kvantorok és tagadásuk

Az analízis definíciói **kvantorokkal** épülnek fel:

* $\forall$ (**univerzális kvantor**): „minden …-re”.


* $\exists$ (**egzisztenciális kvantor**): „létezik olyan …, amelyre”.



**A kvantorok sorrendje döntő fontosságú!**

* $\forall x \in \mathbb{R}\ \exists y \in H : x < y$ azt jelenti, hogy *bármilyen* valós számot is mondasz, tudok mutatni hozzá egy (az $x$-től függő!) $y$ elemet a $H$ halmazból, ami nagyobb nála (vagyis $H$ felülről nem korlátos).


* Ha megfordítjuk: $\exists y \in H\ \forall x \in \mathbb{R} : x < y$, az azt jelentené, hogy van egyetlen olyan „szuper-elem” $H$-ban, ami az *összes* valós számnál nagyobb (ilyen nyilván nincs, mert magánál az $y$-nál sem lehet nagyobb).



**Hogyan tagadunk egy kvantoros állítást?** A szabály egyszerű: a $\forall$-ból $\exists$ lesz, az $\exists$-ből $\forall$, a legvégén lévő állítást pedig tagadjuk.

* *Példa:* „$H$-nak van maximuma”: $\exists M \in H\ \forall x \in H : x \le M$.


* *Tagadása („$H$-nak nincs maximuma”):* $\forall M \in H\ \exists x \in H : x > M$ (vagyis a halmaz bármely eleméhez található a halmazban egy nála még nagyobb elem).



### Teljes indukció és teleszkopikus összegek

Amikor egy $P(n)$ állítást minden természetes számra ($n \ge N_0$) be akarunk bizonyítani, a **teljes indukció** elvét használjuk, ami a dominóelvhez hasonlít:

1. **Kezdőlépés:** Ellenőrizzük, hogy az első dominó eldől, azaz $P(N_0)$ igaz.


2. **Indukciós feltevés és lépés:** Feltesszük, hogy valamely $n \ge N_0$-ra $P(n)$ igaz, és ebből bebizonyítjuk, hogy a következő, $P(n+1)$ állítás is igaz.



* *Példa:* $2^n > n^2$ minden $n \ge 5$-re.


* $n=5$-re $32 > 25$ (igaz).


* Ha $2^n > n^2$, akkor $2^{n+1} = 2 \cdot 2^n > 2n^2 = n^2 + n^2$. Ahhoz, hogy ez $\ge (n+1)^2 = n^2 + 2n + 1$ legyen, az kell, hogy a második $n^2 \ge 2n + 1$ legyen, ami $(n-1)^2 \ge 2$ miatt már $n \ge 3$-tól teljesül. Így a lánc végigfut: $2^{n+1} > (n+1)^2$.





Az indukció hátránya, hogy előre tudni kell a bizonyítandó képletet. Ha nem ismerjük például az $1 + 2 + \dots + n$ összeget, a **teleszkopikus összegezés** segít: felírjuk a $(k+1)^2 - k^2 = 2k + 1$ azonosságot $k=1$-től $n$-ig, és összeadjuk őket. A bal oldalon a közbülső tagok kiesnek („összecsukódnak, mint egy távcső”), és csak $(n+1)^2 - 1$ marad, amiből az összeg ($\frac{n(n+1)}{2}$) azonnal kifejezhető.

### Binomiális tétel

A $\binom{n}{k} = \frac{n!}{k!(n-k)!}$ binomiális együttható megadja, hányféleképpen választhatunk ki $n$ elemből $k$ darabot. Alaptulajdonsága a **Pascal-azonosság**: $\binom{n}{k-1} + \binom{n}{k} = \binom{n+1}{k}$.
Ennek segítségével bizonyítható a **binomiális tétel**:


$$(a+b)^n = \sum_{k=0}^n \binom{n}{k} a^{n-k}b^k = \binom{n}{0}a^n + \binom{n}{1}a^{n-1}b + \dots + \binom{n}{n}b^n.$$

* *Okos behelyettesítések:* Ha $a=1, b=1$, akkor $\sum_{k=0}^n \binom{n}{k} = (1+1)^n = 2^n$ (egy $n$ elemű halmaz összes részhalmazának száma). Ha $a=1, b=-1$, akkor $\sum_{k=0}^n (-1)^k \binom{n}{k} = (1-1)^n = 0$.



---

## 3. Korlátosság, Szuprémum, Infimum és a Teljesség

### Korlátok, minimum és maximum

Legyen $H \subseteq \mathbb{R}$ egy nemüres halmaz:

* $H$ **felülről korlátos**, ha van olyan $K \in \mathbb{R}$ (**felső korlát**), amelynél a halmaz egyetlen eleme sem nagyobb ($\forall x \in H : x \le K$). Hasonlóan definiáljuk az **alulról korlátosságot** ($x \ge k$). Egy halmaz **korlátos**, ha alulról és felülről is korlátos (ekvivalensen: $\exists M > 0\ \forall x \in H : \vert{}x\vert{} \le M$).


* Ha egy felső korlát **benne is van a halmazban**, akkor azt a halmaz **maximumának** ($\max H$) nevezzük. A minimum ($\min H$) olyan alsó korlát, ami eleme a halmaznak.



Mi a helyzet akkor, ha egy halmaz felülről korlátos, de nincs maximuma? Például a $H = [-5, -2)$ félig nyílt intervallumnál a $-2$ felső korlát, és ennél kisebb felső korlát nem létezik, de a $-2 \notin H$, így nincs maximum (bármely $x \in [-5, -2)$ elemhez a $\frac{x + (-2)}{2}$ átlag még közelebb van $-2$-höz, és még mindig $H$-ban van). Ilyenkor lép színre a szuprémum.

### Szuprémum és infimum

* **Szuprémum ($\sup H$):** A halmaz **legkisebb felső korlátja**.


* **Infimum ($\inf H$):** A halmaz **legnagyobb alsó korlátja**.



**Az $\varepsilon$-os jellemzés (a gyakorlati munkaeszköz):** Egy $s$ szám pontosan akkor szuprémuma $H$-nak ($s = \sup H$), ha:

1. $\forall x \in H : x \le s$ (azaz $s$ felső korlát),


2. $\forall \varepsilon > 0\ \exists x \in H : x > s - \varepsilon$ (azaz ha bármilyen kicsit is visszalépünk $s$-től balra, az már nem felső korlát; található nála nagyobb elem a halmazban).



* *Példa:* Legyen $E = \left\{\frac{1}{n} : n \in \mathbb{N}\right\} = \left\{1, \frac{1}{2}, \frac{1}{3}, \dots\right\}$.


* $\max E = \sup E = 1$ (mert $1$ felső korlát, és $n=1$-re eleme is a halmaznak).


* $\inf E = 0$, de **minimuma nincs**, mert a $0$ nem eleme a halmaznak, viszont a tagok tetszőlegesen megközelítik a $0$-t.




* *Műveletek szuprémummal:*
* $\sup(A + B) = \sup A + \sup B$ (a bizonyításban a megengedett $\varepsilon$ hibát két $\varepsilon/2$ részre osztjuk szét a két halmaz között — ez a **„$\varepsilon/2$-trükk”**).


* $\sup(A \cup B) = \max\{\sup A, \sup B\}$, míg metszetre csak egyenlőtlenség van: $\sup(A \cap B) \le \min\{\sup A, \sup B\}$.


* **Minimax-egyenlőtlenség:** Egy táblázatban a sorok maximumai közül a legkisebb mindig nagyobb vagy egyenlő, mint az oszlopok minimumai közül a legnagyobb ($\max_j \min_i m_{ij} \le \min_i \max_j m_{ij}$).





### A valós számok teljessége: mi a különbség $\mathbb{Q}$ és $\mathbb{R}$ között?

Tekintsük a $H = \{x \in \mathbb{Q} : x \le \sqrt{2}\}$ halmazt. Ez felülről korlátos, de a racionális számok körében nincs legkisebb felső korlátja, mert a $\sqrt{2}$ helyén egy „lyuk” tátong $\mathbb{Q}$-ban. Ezt a hiányosságot küszöböli ki az analízis legfontosabb axiómája:

1. **Teljességi (szuprémum-) axióma:** $\mathbb{R}$ minden nemüres, felülről korlátos részhalmazának létezik szuprémuma $\mathbb{R}$-ben.


2. **Arkhimédészi tulajdonság:** Bármely $x \in \mathbb{R}$ számhoz létezik nála nagyobb $n \in \mathbb{N}$ természetes szám (nincsenek „végtelenül nagy” vagy „végtelenül kicsi” számok; ekvivalensen: minden $\varepsilon > 0$-hoz van olyan $n \in \mathbb{N}$, amelyre $\frac{1}{n} < \varepsilon$). Emellett igaz a **sűrűség** is: bármely két valós szám között van racionális és irracionális szám is.


3. **Cantor-tulajdonság (Cantor-féle közösrész-tétel):** Ha $I_1 \supseteq I_2 \supseteq I_3 \supseteq \dots$ egymásba skatulyázott, **korlátos, zárt és nemüres** intervallumok sorozata ($I_n = [a_n, b_n]$), akkor a végtelen metszetük nem üres ($\bigcap_{n=1}^\infty I_n \neq \emptyset$). Ha az intervallumok hossza nullához tart ($b_n - a_n \to 0$), akkor pontosan egyetlen közös pontjuk van.


* *Miért kell minden feltétel?* Ha elhagyjuk a korlátosságot: $I_n = [n, \infty)$ metszete üres (a közös pont „kiszökik a végtelenbe”). Ha elhagyjuk a zártságot: $I_n = (0, 1/n]$ metszete szintén üres (a $0$ lenne a közös pont, de pont azt hagytuk ki minden intervallumból).


* **Ekvivalencia:** Az arkhimédészi és a Cantor-tulajdonság együttesen **ekvivalens** a teljességi axiómával. (A szuprémum létezését a Cantor-tulajdonságból **intervallumfelezéssel** bizonyítjuk: mindig megfelezzük az intervallumot úgy, hogy a bal végpont sose legyen felső korlát, a jobb végpont pedig mindig az legyen.)





---

## 4. Nevezetes egyenlőtlenségek és növekedési rendek

A határértékek kiszámításához és a küszöbindexek megkereséséhez elengedhetetlen, hogy bonyolult kifejezéseket egyszerűbbekkel tudjunk becsülni.

### Közepek közötti egyenlőtlenségek

Pozitív $a_1, a_2, \dots, a_n$ számokra fennáll a **harmonikus – mértani – számtani – négyzetes közép** láncolata, amelyből a legfontosabb a **számtani és mértani közép egyenlőtlensége (AM–GM)**:


$$\sqrt[n]{a_1 a_2 \cdots a_n} \le \frac{a_1 + a_2 + \dots + a_n}{n},$$


és egyenlőség pontosan akkor áll fenn, ha minden tag egyenlő ($a_1 = a_2 = \dots = a_n$).

* *Alkalmazás szélsőérték-keresésre:* Ha $x, y \ge 0$ és $2x + 3y = 10$, mekkora lehet $xy$ maximuma? A trükk az, hogy a feltételben szereplő $2x$ és $3y$ tagokra írjuk fel az egyenlőtlenséget:



$$\sqrt{2x \cdot 3y} \le \frac{2x + 3y}{2} = 5 \implies 6xy \le 25 \implies xy \le \frac{25}{6}.$$



A maximumot akkor veszi fel, ha $2x = 3y = 5$, vagyis $x = 5/2$ és $y = 5/3$. Ugyanezzel a módszerrel látható be, hogy adott felszínű téglatestek közül a kockának legnagyobb a térfogata, vagy hogy $n! = 1 \cdot 2 \cdots n \le \left(\frac{n+1}{2}\right)^n$.



### Bernoulli-egyenlőtlenség

Minden $x \ge -1$ valós számra és $n \in \mathbb{N}$ egészre (sőt, bármely $r > 1$ racionális kitevőre):


$$(1 + x)^n \ge 1 + nx,$$


míg $0 < r < 1$ törtekre az egyenlőtlenség megfordul: $(1+x)^r \le 1 + rx$.

* *Geometriai jelentése:* Az $(1+x)^r$ hatványfüggvényt a $0$ pontbeli érintőjével ($1 + rx$) hasonlítjuk össze. Ez a legfőbb fegyverünk hatványok és gyökök lineáris becslésére: például $\left(1 + \frac{1}{n}\right)^n \ge 1 + n \cdot \frac{1}{n} = 2$.



### Növekedési rendek hierarchiája a végtelenben

Amikor $n \to \infty$, a különböző típusú sorozatok drasztikusan eltérő sebességgel nőnek. Ha $f(n) \ll g(n)$ azt jelöli, hogy $\lim_{n\to\infty} \frac{f(n)}{g(n)} = 0$, akkor a következő szigorú hierarchia érvényes ($\varepsilon > 0, k \in \mathbb{N}, a > 1$ mellett):


$$\ln n \ll n^\varepsilon \ll n^k \ll a^n \ll n! \ll n^n.$$

1. **Exponenciális legyőzi a polinomot ($n^k \ll a^n$):** Például $1{,}1^n > n^3$, ha $n$ elég nagy. Hogyan bizonyítjuk? Felírjuk $a = 1 + h$ alakban ($h = 0{,}1$), és a binomiális tételből csak a $(k+1)$-edik, azaz a $4.$ tagot tartjuk meg: $(1+0{,}1)^n > \binom{n}{4} 0{,}1^4$. Mivel $\binom{n}{4}$ egy negyedfokú kifejezés $n$-ben, nagy $n$-ekre biztosan lehagyja a harmadfokú $n^3$-t.


2. **Faktoriális legyőzi az exponenciálist ($a^n \ll n!$):** Például $100^n < n!$, ha $n$ elég nagy. Az $n! = 1 \cdot 2 \cdots n$ szorzat felső felében van legalább $n/2$ darab olyan tényező, amelyek mindegyike $\ge n/2$, így $n! \ge (n/2)^{n/2}$. Ha $n > 20\,000$, akkor $n/2 > 100^2$, így $(n/2)^{n/2} > (100^2)^{n/2} = 100^n$.


3. **A faktoriális pontosabb közrefogása:** A tényezők előre-hátra párosításával ($(n!)^2 = \prod_{k=1}^n k(n-k+1) > n^n$) és indukcióval adódik, hogy $\left(\frac{n}{4}\right)^n < n^{n/2} < n! \le \left(\frac{n+1}{2}\right)^n \le n^n$. (A pontos aszimptotikát a **Stirling-formula** adja: $n! \sim \sqrt{2\pi n}\left(\frac{n}{e}\right)^n$.)



---

## 5. Függvények, bijekciók és a végtelen halmazok számossága

### Relációk és függvények

* **Descartes-szorzat ($A \times B$):** Az összes $(a, b)$ rendezett pár halmaza, ahol $a \in A$ és $b \in B$. Ennek bármely $R \subseteq A \times B$ részhalmazát **relációnak** nevezzük.


* **Függvény ($f : A \to B$):** Olyan reláció, amely az $A$ **értelmezési tartomány** ($D(f)$) *minden egyes* $x$ eleméhez a $B$ **képtér** *pontosan egy* $y = f(x)$ elemét rendeli. A ténylegesen felvett értékek halmaza az **értékkészlet**: $R(f) = f(A) \subseteq B$.



Egy $f : A \to B$ függvény három kulcsfontosságú tulajdonsága:

1. **Injektív (egy-egyértelmű):** Különböző elemekhez különböző képet rendel ($x_1 \neq x_2 \implies f(x_1) \neq f(x_2)$, vagy ami a bizonyításokban sokkal hasznosabb: $f(x_1) = f(x_2) \implies x_1 = x_2$). Valós függvényeknél, ha egy függvény szigorúan monoton növekvő vagy csökkenő, akkor automatikusan injektív.


2. **Szürjektív (ráképezés):** A képtér minden elemét felveszi értékül ($f(A) = B$, azaz $\forall y \in B\ \exists x \in A : f(x) = y$).


3. **Bijektív (kölcsönösen egyértelmű):** Egyszerre injektív és szürjektív.



### Kompozíció és inverz függvény

Ha $f : A \to B$ és $g : B \to A$, akkor a **kompozíciójuk** $(g \circ f)(x) = g(f(x))$. Egy $f$ függvénynek pontosan akkor létezik (kétoldali) **inverze** ($f^{-1} : B \to A$), ha $f$ **bijektív**. Ekkor egyszerre teljesül a két feltétel:


$$\text{I. } g \circ f = \mathrm{id}_A \quad (\text{balinverz}) \qquad \text{és} \qquad \text{II. } f \circ g = \mathrm{id}_B \quad (\text{jobbinverz}).$$

* **Vigyázat a végtelen halmazokkal!** Véges, azonos elemszámú halmazokon az I. és a II. feltétel ekvivalens. Végtelen halmazon viszont elválhatnak egymástól!


* *Példa:* Legyen $A = B = \mathbb{N} = \{1, 2, 3, \dots\}$, $g(n) = n + 1$ (jobbra tolás, ami injektív, de nem szürjektív, mert az $1$-et kihagyja), és $f(n) = n - 1$ ha $n > 1$, illetve $f(1) = 1$ (balra tolás, ahol az $1$-re és a $2$-re is $1$-et ad, tehát szürjektív, de nem injektív).


* Ekkor $(f \circ g)(n) = f(n+1) = n$, tehát a II. feltétel ($f \circ g = \mathrm{id}_{\mathbb{N}}$) **teljesül**.


* Viszont $(g \circ f)(1) = g(f(1)) = g(1) = 2 \neq 1$, tehát az I. feltétel **nem teljesül**!





### Végtelen halmazok számossága és a Hilbert-szálloda

Két halmazt **azonos számosságúnak** (ekvivalensnek, $A \sim B$) nevezünk, ha létezik közöttük bijekció.

* **Megszámlálhatóan végtelen ($\aleph_0$, „alef-nulla”):** Olyan halmaz, amely bijekcióba hozható a természetes számokkal ($\mathbb{N}$), vagyis az elemei hiánytalanul felsorolhatók egy $h_1, h_2, h_3, \dots$ sorozatban. Ilyen maga $\mathbb{N}$, az egész számok ($\mathbb{Z}$), a racionális számok ($\mathbb{Q}$), sőt a síkbeli egész rácspontok ($\mathbb{Z}^2$) is!


* *Hogyan szemlélteti ezt a **Hilbert-féle végtelen szálloda**?*


* Ha telt ház van, és jön 1 új vendég: mindenki átmegy az $n \mapsto n+1$ szobába, az 1-es szoba felszabadul ($\aleph_0 + 1 = \aleph_0$).


* Ha végtelen sok új vendég jön: a régiek átmennek a páros szobákba ($n \mapsto 2n$), a páratlan szobák ($2k-1$) felszabadulnak az újaknak ($\aleph_0 + \aleph_0 = \aleph_0$).


* Ha végtelen sok emeletről emeletenként végtelen sok vendég jön ($\mathbb{N}_0 \times \mathbb{N}$): az $(m, k)$ vendéget a $2^m(2k-1)$ szobába (vagy a $p_{m+1}^k$ prímszámhatvány szobába) küldjük ($\aleph_0 \cdot \aleph_0 = \aleph_0$).




* *Alkalmazások:*
1. **A rácspontokon ugráló bolha (9. feladat):** Ha egy bolha az origóból indulva ismeretlen $v = (a, b) \in \mathbb{Z}^2$ ugrásvektorral ugrál, biztosan le tudjuk csapni! Mivel $\mathbb{Z}^2$ megszámlálható, felsoroljuk az összes lehetséges ugrásvektort: $v_1, v_2, v_3, \dots$, és a $k$-adik lépésben a $k \cdot v_k$ pontra csapunk. Ha a bolha valódi vektora a listán a $K$-adik ($v = v_K$), akkor a $K$-adik ugrásnál pontosan eltaláljuk.


2. **Bijekció $(0, 1]$ és $[0, 1]$ között (33. feladat):** A $[0, 1]$ intervallumban eggyel több pont van (a $0$). Hogyan tüntetjük el? Kiválasztunk egy megszámlálható részsorozatot, pl. $S = \{1, 1/2, 1/3, \dots\}$, és itt alkalmazzuk a Hilbert-szálloda eltolását: $g(0) = 1$, $g(1/n) = 1/(n+1)$, minden más $x$ pontot pedig helyben hagyunk ($g(x) = x$).






* **Kontínuum számosság ($\mathfrak{c}$):** A valós számok $\mathbb{R}$ halmaza (és bármely intervalluma) **nem megszámlálható** — sokkal több valós szám van, mint természetes szám. (Ennek ellenére $\mathbb{R}$ felbontható végtelen sok diszjunkt, sűrű részhalmazra a $\mathbb{Q} + k\sqrt{2}$ eltoltak segítségével.)



---

## 6. Valós számsorozatok és a határérték fogalma

### Sorozatok alapfogalmai

Egy **végtelen számsorozat** nem más, mint egy természetes számokon értelmezett függvény: $a : \mathbb{N} \to \mathbb{R}$, ahol az $a(n)$ értéket $a_n$-nel jelöljük.

* **Monotonitás:** A sorozat monoton növő, ha $a_n \le a_{n+1}$, és monoton csökkenő (fogyó), ha $a_n \ge a_{n+1}$ minden $n$-re.


* **Korlátosság:** A sorozat korlátos, ha a tagjainak halmaza korlátos ($\exists M > 0\ \forall n \in \mathbb{N} : \vert{}a_n\vert{} \le M$).



### A konvergencia ($\lim_{n\to\infty} a_n = a$) definíciója

Ez az egész félév legfontosabb definíciója. Azt mondjuk, hogy az $(a_n)$ sorozat **konvergens**, és a **határértéke** $a \in \mathbb{R}$ (jelben: $a_n \to a$), ha:


$$\forall \varepsilon > 0\ \exists n_\varepsilon \in \mathbb{N}\ \forall n \ge n_\varepsilon : |a_n - a| < \varepsilon.$$

* **Mit jelent ez magyarul?** Bármilyen kicsi $\varepsilon > 0$ hibakorlátot („célsávot”) is szabunk meg az $a$ szám körül, a sorozatnak van egy olyan $n_\varepsilon$ **küszöbindexe**, amelytől kezdve a sorozat *összes* további tagja ($n \ge n_\varepsilon$) már ezen az $(a-\varepsilon, a+\varepsilon)$ környezeten belül marad. Más szóval: az $a$ bármely $\varepsilon$-környezetén kívül a sorozatnak **csak véges sok tagja** lehet.


* *Hogyan keresünk küszöbindexet a gyakorlatban?*
* Legyen például $a_n = \frac{1}{n - \sqrt{n}} \to 0$. Azt akarjuk, hogy $\frac{1}{n - \sqrt{n}} < \varepsilon$ legyen. Közvetlenül ezt nehéz megoldani, ezért **felülről becsülünk** egy egyszerűbb kifejezéssel! Ha $n \ge 4$, akkor $\sqrt{n} \le \frac{n}{2}$, így a nevező $n - \sqrt{n} \ge \frac{n}{2}$. A tört tehát $\le \frac{2}{n}$. Ez pedig már könnyen kezelhető: $\frac{2}{n} < \varepsilon \iff n > \frac{2}{\varepsilon}$. Tehát $n_\varepsilon = \max\{4, \lfloor 2/\varepsilon \rfloor + 1\}$ egy tökéletes küszöbindex.


* Ha gyökök különbségét látjuk ($\infty - \infty$ határozatlan alak, pl. $\sqrt{n+1} - \sqrt{n}$), mindig **gyöktelenítünk** (bővítünk az összegükkel):



$$\sqrt{n+1} - \sqrt{n} = \frac{(n+1) - n}{\sqrt{n+1} + \sqrt{n}} = \frac{1}{\sqrt{n+1} + \sqrt{n}} < \frac{1}{2\sqrt{n}} \to 0.$$


* *Mi változhat a definícióban?* Ha az $\vert{}a_n - a\vert{} < \varepsilon$ helyett $\vert{}a_n - a\vert{} \le 5\varepsilon$, $< \varepsilon^2$, $\le \sqrt{\varepsilon}$ vagy akár $< 1/\varepsilon$ áll, az mind **ekvivalens** a konvergenciával, mert ahogy $\varepsilon$ befutja a pozitív számokat, ezek a korlátok is tetszőlegesen kicsivé tehetők. Ha viszont $< 1 + \varepsilon$ áll, az gyengébb (nem követeli meg, hogy $1$-nél közelebb kerüljünk $a$-hoz).





### Divergencia és sűrűsödési pontok

* Ha $a_n$ nem tart $a$-hoz ($a_n \not\to a$), annak precíz megfogalmazása a definíció tagadása:



$$\exists \varepsilon > 0\ \forall N \in \mathbb{N}\ \exists n \ge N : |a_n - a| \ge \varepsilon,$$



vagyis létezik egy olyan $\varepsilon$-környezet $a$ körül, amelyen kívül a sorozatnak **végtelen sok tagja** található. Ha egy sorozat egyetlen valós számhoz sem tart, akkor **divergens**.


* **Alaptulajdonságok:**
1. Minden konvergens sorozat **korlátos** (tehát ha egy sorozat nem korlátos, azonnal tudjuk, hogy divergens).


2. $a_n \to 0 \iff |a_n| \to 0$. Általában pedig: ha $a_n \to a$, akkor $|a_n| \to |a|$ (a fordított háromszög-egyenlőtlenség miatt), de **visszafelé ez nem igaz**! Például $a_n = (-1)^n$ divergens (ugrál $-1$ és $1$ között), miközben $|a_n| = 1 \to 1$.




* **Sűrűsödési érték (torlódási pont):** Olyan szám, amelynek minden környezetében a sorozatnak végtelen sok tagja van (ekvivalensen: van a sorozatnak egy hozzá tartó részsorozata). Egy konvergens sorozatnak csak egyetlen sűrűsödési pontja van (maga a határérték), egy divergens sorozatnak viszont akár végtelen sok is lehet (például az $1;\ 1, 2;\ 1, 2, 3;\ 1, 2, 3, 4;\ \dots$ sorozatban minden természetes szám végtelen sokszor szerepel, így minden természetes szám sűrűsödési pontja).



### Monoton konvergencia, az $e$ szám és rekurzív sorozatok

Hogyan bizonyíthatjuk be egy sorozatról, hogy konvergens, ha nem tudjuk előre a határértékét?

* **Monoton konvergencia tétele:** Minden monoton és korlátos sorozat konvergens! (Ha monoton növő és felülről korlátos, akkor a határértéke a tagok halmazának szuprémuma: $\lim a_n = \sup\{a_n\}$.)


* **Az Euler-féle $e$ szám születése (31. feladat):**
* Az $e_n = \left(1 + \frac{1}{n}\right)^n$ sorozat szigorúan monoton **növekvő**.


* A $d_n = \left(1 + \frac{1}{n}\right)^{n+1}$ sorozat szigorúan monoton **csökkenő** (ezt a számtani–mértani vagy a Bernoulli-egyenlőtlenséggel láttuk be).


* Mivel $2 \le e_n < d_n \le 4$, mindkét sorozat monoton és korlátos, a különbségük ($d_n - e_n = \frac{e_n}{n}$) pedig $0$-hoz tart. Az $[e_n, d_n]$ egymásba skatulyázott intervallumok közös pontja (és mindkét sorozat közös határértéke) definiálja az **$e \approx 2{,}71828$** számot.




* **Rekurzív sorozatok vizsgálata (34. feladat):** Legyen $a_1 = 1$ és $a_{n+1} = \sqrt{2a_n + 3}$.


1. *Monotonitás:* Mivel az $f(x) = \sqrt{2x+3}$ függvény monoton növő, és $a_1 = 1 < a_2 = \sqrt{5}$, teljes indukcióval azonnal adódik, hogy $a_n \le a_{n+1}$ minden $n$-re.


2. *Korlátosság:* Indukcióval belátjuk, hogy $a_n \le 3$ (ha $a_n \le 3$, akkor $a_{n+1} = \sqrt{2a_n + 3} \le \sqrt{9} = 3$).


3. *Fixpontegyenlet:* Mivel a sorozat monoton nő és felülről korlátos, **konvergens**, tehát létezik $\lim a_n = A$. Ekkor $a_{n+1}$ is $A$-hoz tart, így a rekurzióban határértéket véve felírhatjuk a fixpontegyenletet: $A = \sqrt{2A + 3} \implies A^2 - 2A - 3 = 0$, amiből ($A \ge 1$ miatt) $A = 3$. (Fontos: a fixpontegyenletet csak azután szabad felírni, hogy a konvergenciát már bebizonyítottuk!)





### A Cauchy-kritérium és a „lassú divergencia” csapdája

Egy sorozatot **Cauchy-sorozatnak** nevezünk, ha a tagjai egymáshoz is tetszőlegesen közel kerülnek, azaz $\forall \varepsilon > 0\ \exists N\ \forall m, n \ge N : |a_m - a_n| < \varepsilon$. A valós számok teljessége miatt egy sorozat pontosan akkor konvergens, ha Cauchy-sorozat.

* **A nagy csapda (40. feladat):** Elég-e a konvergenciához az, hogy a szomszédos tagok távolsága nullához tart ($a_{n+1} - a_n \to 0$)? **NEM!**


* *1. ellenpélda:* $a_n = \sqrt{n}$. Itt $a_{n+1} - a_n = \sqrt{n+1} - \sqrt{n} = \frac{1}{\sqrt{n+1}+\sqrt{n}} \to 0$, a lépések tehát egyre apróbbak, de a sorozat mégis megállíthatatlanul $\to +\infty$, és például $a_{2n} - a_n = (\sqrt{2}-1)\sqrt{n} \to +\infty$.


* *2. ellenpélda (Harmonikus sor részletösszegei):* $H_n = 1 + \frac{1}{2} + \frac{1}{3} + \dots + \frac{1}{n}$. Itt is $H_{n+1} - H_n = \frac{1}{n+1} \to 0$, de ha összevárunk $n$ darab lépést $n+1$-től $2n$-ig: $H_{2n} - H_n = \frac{1}{n+1} + \dots + \frac{1}{2n} \ge n \cdot \frac{1}{2n} = \frac{1}{2}$, tehát sosem lesz kicsi, a sorozat divergens ($H_n \to +\infty$). A Cauchy-kritériumban ezért létfontosságú, hogy *bármely* két, $N$-nél nagyobb $m$ és $n$ indexre kicsi legyen a különbség, ne csak a közvetlen szomszédokra!





(Megjegyzés a 10. csillagos feladathoz: A véges lépésekből a végtelenbe való átlépés egy másik mély eszköze a gráfelméleti **König-lemma**: ha egy fában minden csúcsból véges sok él indul ki, és a fában bármilyen messzire el lehet jutni véges úton, akkor létezik a gyökérből induló **végtelen út** is. Ez a gondolatmenet — hogy véges sok lehetőség közül mindig azt az ágat választjuk, amelyik végtelen sok folytatást tartalmaz — köszön majd vissza az analízisben a Bolzano–Weierstrass-tétel bizonyításánál is.)
