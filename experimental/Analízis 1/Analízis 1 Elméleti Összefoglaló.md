# Analízis 1 Elméleti Összefoglaló

### Átfogó elméleti és módszertani jegyzet (1–10. hetek)

---

Ez az átfogó elméleti összefoglaló az egyetemi **Analízis 1.** kurzus első tíz hetének teljes elméleti anyagát öleli fel. A jegyzet a valós számok axiomatikus felépítésétől, a logikai és halmazelméleti alapoktól indulva végigvezeti a számsorozatok konvergenciáját, mélyebb szerkezetét és a végtelen halmazok számosságát, majd részletesen tárgyalja a valós függvények globális és lokális tulajdonságait, a konvexitást, a pontrendszerek topológiáját, a függvényhatárérték technikáit és a folytonos függvények fundamentális tételeit.

---

# I. Rész: Alapok, Valós Számok, Logika és Bevezetés a Sorozatokba (1–4. hetek)

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

---

# II. Rész: Sorozatok Mélyebb Szerkezete, Számosságok, Sorok és Függvények (5–7. hetek)

## 7. A bővített számegyenes és a környezetek egységes nyelve

### A környezetek nyelve és az egységes határérték-fogalom

A valós számok halmazát ($\mathbb{R}$) gyakran kiegészítjük két szimbólummal, a $-\infty$ és $+\infty$ elemekkel, így kapjuk a **bővített számegyenest**: $\overline{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}$. Ez azért rendkívül hasznos, mert a véges és a végtelen határértékek definícióját egyetlen közös nyelvre, a **környezetek nyelvére** tudjuk lefordítani:

* Egy véges $a \in \mathbb{R}$ szám környezetei az $(a - \varepsilon, a + \varepsilon)$ nyílt intervallumok (ahol $\varepsilon > 0$).


* A $+\infty$ környezetei a $(K, +\infty)$ alakú félegyenesek (tetszőleges $K \in \mathbb{R}$ korlátra).


* A $-\infty$ környezetei a $(-\infty, K)$ alakú félegyenesek.



> **Egységes definíció:** Egy $(a_n)$ sorozat pontosan akkor tart egy $A \in \overline{\mathbb{R}}$ határértékhez ($a_n \to A$), ha $A$ bármely $U$ környezetéhez létezik olyan $N \in \mathbb{N}$ küszöbindex, amelytől kezdve (minden $n \ge N$-re) $a_n \in U$.
> 
> 

### A $-\infty$-hez tartás és tagadása
Konkrétan az $\lim_{n\to\infty} a_n = -\infty$ azt jelenti, hogy bármilyen (akár hatalmas negatív) $K \in \mathbb{R}$ számot is adunk meg, van olyan $N \in \mathbb{N}$ index, amelytől kezdve minden $n \ge N$-re $a_n < K$ (ekvivalensen: $-a_n \to +\infty$).

* *Hibalehetőség:* Mivel a $-\infty$ nem valós szám, szigorúan tilos az $\vert{}a_n - (-\infty)\vert{} < \varepsilon$ jelölést használni; mindig a $K$-s definícióval kell dolgozni.


* *Tagadás ($\lim a_n \ne -\infty$):* $\exists K \in \mathbb{R}\ \forall N \in \mathbb{N}\ \exists n \ge N : a_n \ge K$. Szemléletesen ez azt jelenti, hogy van egy olyan $K$ szint, amely fölé (vagy amire) a sorozat még végtelen sokszor visszatér — azaz a sorozatnak van egy **alulról korlátos részsorozata**.


* *Példák:* Az $a_n = (-1)^n n$ sorozat nem tart sem $-\infty$-hez, sem $+\infty$-hez, mert a páros indexű tagok $+\infty$-be, a páratlanok $-\infty$-be tartanak. Továbbá, ha $a_n \to -\infty$, akkor a sorozat felülről korlátos, alulról viszont nem. A megfordítás azonban nem igaz: a $0, -2, 0, -4, 0, -6, \dots$ sorozat felülről korlátos ($0$-val), alulról nem korlátos, mégsem tart $-\infty$-hez, mert végtelen sok $0$ tagja van.



---

### A „majdnem minden” fogalma és a konvergencia

Az analízisben azt mondjuk, hogy egy tulajdonság a sorozat **majdnem minden** tagjára teljesül, ha **csak véges sok kivétellel** minden tagra igaz.

* Ez teljesen ekvivalens azzal a kijelentéssel, hogy **egy bizonyos $N$ indextől kezdve** minden tagra teljesül: ha a kivételes indexek véges halmaza $E$, akkor a küszöbindex egyszerűen $N = \max E + 1$ (üres $E$ esetén $N=1$).


* **Következmény:** Ha egy sorozatból elhagyunk, hozzáveszünk vagy megváltoztatunk véges sok tagot, esetleg a tagokat bijektív indexcserével **átrendezzük**, a „majdnem minden tagra igaz” tulajdonság nem sérül, így a határérték sem változik meg.


* **A $K+1$ trükk:** A definíciókban a szigorú ($<, >$) és a megengedő ($\le, \ge$) egyenlőtlenségek szabadon felcserélhetők. Ha például tudjuk, hogy minden $K$-ra csak véges sok tag kisebb $K$-nál (azaz egy indextől $a_n \ge K$), és nekünk szigorú $a_n > K$ kell a definícióhoz, akkor a feltételt egyszerűen $K+1$-re alkalmazzuk: egy indextől $a_n \ge K+1 > K$.



---

## 8. Konvergens sorozatok szerkezete, szélsőértékei és becslési technikák

### Konvergens sorozatok szélsőértékei

Minden konvergens sorozat **korlátos**. Ennek bizonyítása a **„fej + farok” módszer** prototípusa: ha $a_n \to a$, akkor $\varepsilon = 1$-hez van olyan $N$, amelytől kezdve a „farok” tagjaira $|a_n| < |a| + 1$. Az első $N-1$ tag („a fej”) pedig véges sok számból áll, így az egész sorozat abszolút értékben korlátos a $\max\{|a_1|, \dots, |a_{N-1}|, |a| + 1\}$ számmal.

Ennél azonban sokkal élesebb állítás is igaz: **egy konvergens sorozatnak mindig van legnagyobb vagy legkisebb tagja** (felveszi a maximumát vagy a minimumát).

* Ha a sorozat állandó ($a_n = a$), akkor minden tag egyszerre minimum és maximum.


* Ha van olyan $a_m$ tag, amely nagyobb a határértéknél ($a_m > a$), akkor $\varepsilon = a_m - a > 0$ választással egy $N$ indextől kezdve minden tag kisebb lesz $a + \varepsilon = a_m$-nél. Így a sorozat maximumát elég a véges $\{a_1, \dots, a_{N-1}\}$ halmazban megkeresni. Szimmetrikusan, ha $a_m < a$ fordul elő, akkor minimum létezik.


* *Példák:* Az $a_n = \frac{1}{n}$ sorozatnak van maximuma ($1$), de nincs minimuma (az infimuma $0$, ami a határérték, de sosem éri el). Az $a_n = \frac{(-1)^n}{n}$ sorozatnak maximuma ($\frac{1}{2}$) és minimuma ($-1$) is van.


* **Tanulság:** Ha egy korlátos sorozatnak **sem maximuma, sem minimuma nincs**, az biztosan **divergens**. Klasszikus példa erre az $a_n = (-1)^n\left(1 - \frac{1}{n}\right)$, amelynek páros tagjai alulról tartanak $1$-hez (de sosem érik el, így nincs maximum), páratlan tagjai pedig felülről tartanak $-1$-hez (így nincs minimum).



### A szuprémum sorozatos jellemzése és a torlódási pont
Egy felülről korlátos, nem üres $A \subset \mathbb{R}$ halmazra $\alpha = \sup A$ pontosan akkor teljesül, ha $\alpha$ felső korlát, és létezik olyan $a_n \in A$ sorozat, amelyre $a_n \to \alpha$.

* Ha a szuprémum nincs a halmazban ($\alpha \notin A$), akkor konstruálható **szigorúan monoton növekedő** $a_n \in A$ sorozat is, amely $\alpha$-hoz tart. A trükk a rekurzív kiválasztásnál a $c_n = \max\left\{a_n, \alpha - \frac{1}{n}\right\} < \alpha$ segédszám használata: mivel $c_n$ kisebb a szuprémumnál, van nála nagyobb $a_{n+1} \in A$ elem, ami így egyszerre biztosítja a szigorú növekedést ($a_{n+1} > a_n$) és a rendőrelvvel a konvergenciát ($\alpha - \frac{1}{n} < a_{n+1} < \alpha$).


* Ha $\alpha \in A$, ez már nem feltétlenül igaz: ha $\alpha$ **izolált pont** (pl. $A = \{0\}$ vagy $A = [0, 1] \cup \{2\}$-nél a $2$), nem lehet hozzá alulról szigorúan növekedve közelíteni. Ha viszont $\alpha$ bal oldali **torlódási pont** (minden környezetében végtelen sok $A$-beli elem van, pl. $A = [0, 1]$-nél az $1$), akkor az állítás igaz marad ($a_n = 1 - \frac{1}{n}$).



---

### Határérték-számítási eszköztár és kritikus típusok

#### Becslési módszerek (Majoráns elv és Rendőrelv)

* **Rendőrelv:** Ha egy indextől $a_n \le b_n \le c_n$, és $a_n \to L$, $c_n \to L$, akkor $b_n \to L$. Végtelenre „egyoldali rendőrelv” (majoráns elv) működik: ha $a_n \ge b_n$ és $b_n \to +\infty$, akkor $a_n \to +\infty$.


* **Nevezetes alsó becslések $+\infty$-be tartáshoz:**
1. *Domináns tag kiemelése:* Pl. $n - \sqrt{n} = \sqrt{n}(\sqrt{n} - 1) \ge \frac{n}{2}$ (ha $n \ge 4$, mert ekkor $\sqrt{n} - 1 \ge \frac{\sqrt{n}}{2}$).


2. *A „nagy fél” módszer:* Növekvő tagú összegeknél az összeg legalább akkora, mint a második fél (az utolsó $\frac{n}{2}$ darab tag) összege, és ott minden tag legalább a középső tag. Például:



$$\frac{\sqrt{1} + \sqrt{2} + \dots + \sqrt{n}}{n} \ge \frac{1}{n} \cdot \frac{n}{2} \cdot \sqrt{\frac{n}{2}} = \frac{\sqrt{n}}{2\sqrt{2}} \to +\infty.$$


3. *Racionális törtek becslése:* A számlálót alulról, a nevezőt felülről becsüljük egytagú kifejezéssel (pl. $n \ge 20$-ra $\frac{n^2 - 10n}{10n + 100} \ge \frac{n^2/2}{15n} = \frac{n}{30}$). Ha explicit $n_K$ küszöböt keresünk, a becslés érvényességi korlátját is figyelembe kell venni: $n_K = \max\{20, \lfloor 30K \rfloor + 1\}$.


4. *Binomiális tétel:* $2^n = (1+1)^n \ge \binom{n}{2} = \frac{n(n-1)}{2}$ ($n \ge 2$), amiből $\frac{2^n}{n} \ge \frac{n-1}{2} \to +\infty$. Általában $2^n \ge \binom{n}{k+1}$ miatt az exponenciális sorozat minden polinomot legyőz.





#### Alapszabályok és domináns tagok

* **Polinomok és hatványok hányadosai:** Mindig a legnagyobb hatvánnyal (domináns taggal) osztunk. Törtkitevők esetén is a kitevők különbsége dönt: pl. $\frac{\sqrt[4]{n^3 + 6}}{\sqrt[3]{n^2 + 3n - 2}} \sim \frac{n^{3/4}}{n^{2/3}} = n^{1/12} \to +\infty$. Szorzatoknál a főegyütthatók szorzata adja a domináns tagot: $\frac{(2n+3)^5(18n+17)^{15}}{(6n+5)^{20}} \to \frac{2^5 \cdot 18^{15}}{6^{20}} = 3^{10}$.


* **$n$-edik gyök alatti domináns tag elve:** Tudjuk, hogy $\sqrt[n]{c} \to 1$ ($c > 0$), $\sqrt[n]{n} \to 1$, sőt bármely pozitív polinomra $\sqrt[n]{P(n)} \to 1$, vagy akár a harmonikus összegre ($H_n = 1 + \frac{1}{2} + \dots + \frac{1}{n} \le n$) is $\sqrt[n]{H_n} \to 1$. Ha $a_1, \dots, a_k > 0$, akkor a rendőrelv miatt a legnagyobb alap dominál:



$$\sqrt[n]{a_1^n + \dots + a_k^n} \to \max\{a_1, \dots, a_k\}.$$



Például $\sqrt[n]{2^n + 3^n + 1000n^3} \to 3$, mert $3 = \sqrt[n]{3^n} \le \dots \le 3\sqrt[n]{2 + 1000n^3} \to 3$. Kivonás esetén is kiemelünk: $\sqrt[n]{n^n - 5^n} = n\sqrt[n]{1 - (5/n)^n} \ge \frac{n}{2} \to +\infty$.


* **Nagyságrendi hierarchia:** $n^k \ll a^n \ll n! \ll n^n$ ($a > 1$). Például $\frac{n!}{n^n} = \frac{1}{n} \cdot \frac{2}{n} \cdots \frac{n}{n} \le \frac{1}{n} \to 0$.


* **Korlátos szor nullsorozat:** Ha $(b_n)$ korlátos és $a_n \to 0$, akkor $a_n b_n \to 0$. Így kezeljük az oszcilláló tényezőket: $\frac{\sin n}{n} \to 0$ (noha $\sin n$ maga divergens, tehát a szorzatszabály nem lenne alkalmazható!).


* **Gyöktelenítés:** A $\sqrt{A} - \sqrt{B}$ típusú ($\infty - \infty$ vagy $\infty \cdot 0$) kifejezéseket a $\frac{A - B}{\sqrt{A} + \sqrt{B}}$ azonossággal hozzuk kezelhető alakra. Például: $n\left(\sqrt{1 + \frac{1}{n}} - 1\right) = \frac{1}{\sqrt{1 + 1/n} + 1} \to \frac{1}{2}$, vagy $n(\sqrt{n^2+n} - \sqrt{n^2-n}) = \frac{2n^2}{\sqrt{n^2+n} + \sqrt{n^2-n}} \to +\infty$.



#### Kritikus (határozatlan) típusok és aszimptotikus egyenlőség

A műveleti tételek nem alkalmazhatók vakon a következő **kritikus alakokra**:


$$\infty - \infty, \qquad 0 \cdot (\pm\infty), \qquad \frac{0}{0}, \qquad \frac{\pm\infty}{\pm\infty}, \qquad \frac{a}{0}\ (a \ne 0), \qquad 1^\infty, \qquad 0^0, \qquad \infty^0.$$

* **Példa ($0 \cdot \infty$ kritikussága):** Ha $a_n \to 0$ és $b_n \to +\infty$, a szorzat bármi lehet: $\frac{c}{n} \cdot n \to c$; $\frac{1}{n} \cdot n^2 \to +\infty$; $-\frac{1}{n} \cdot n^2 \to -\infty$; $\frac{1}{n^2} \cdot n \to 0$; $\frac{(-1)^n}{n} \cdot n = (-1)^n$ (divergens).


* **Nullsorozat reciproka ($\frac{1}{0}$ alak):** Ha $a_n \to 0$ és $a_n \ne 0$, akkor $\frac{1}{\vert{}a_n\vert{}} \to +\infty$ (mivel $\vert{}a_n\vert{} < \frac{1}{K} \iff \frac{1}{\vert{}a_n\vert{}} > K$). Abszolút érték nélkül azonban az előjel dönt: ha egy indextől $a_n > 0$ ($a_n \to 0^+$), akkor $+\infty$; ha $a_n < 0$, akkor $-\infty$; ha viszont váltakozik az előjel (pl. $a_n = \frac{(-1)^n}{n}$), akkor $\frac{1}{a_n} = (-1)^n n$ divergens.


* **Aszimptotikus egyenlőség ($a_n \sim b_n$):** Azt jelenti, hogy $\frac{a_n}{b_n} \to 1$ (a **relatív hiba**, $\frac{a_n - b_n}{b_n}$ tart $0$-hoz). Ez **nem ugyanaz**, mint az $a_n - b_n \to 0$ (**abszolút hiba** tart $0$-hoz):


* $a_n = \frac{2}{n}$ és $b_n = \frac{1}{n}$ esetén $a_n - b_n = \frac{1}{n} \to 0$, de $\frac{a_n}{b_n} = 2 \not\to 1$.


* $a_n = n + 1$ és $b_n = n$ esetén $\frac{a_n}{b_n} \to 1$, de $a_n - b_n = 1 \not\to 0$ (sőt $n^2+n$ és $n^2$ különbsége $\infty$-be tart!).


* *Fontos szabály:* Az $\sim$ reláció szorzásra és osztásra megmarad, de **összeadásban és kivonásban tilos használni**!





---

## 9. Cauchy-kritérium, kontrakció és rekurzív sorozatok

### Cauchy-kritérium és kontrakció

* **Cauchy-kritérium:** Egy valós sorozat pontosan akkor konvergens, ha Cauchy-sorozat, vagyis $\forall \varepsilon > 0$-hoz $\exists N \in \mathbb{N}$, hogy minden $m > n \ge N$ esetén $\vert{}a_m - a_n\vert{} < \varepsilon$. Ez a tétel $\mathbb{R}$ teljességén alapul ($\mathbb{Q}$-ban nem igaz, pl. a $\sqrt{2}$ közelítő tizedes törtjeire).


* **Teleszkopikus becslés és kontrakció:** Ha például $\vert{}a_{n+1} - a_n\vert{} \le 2^{-n}$ minden $n$-re, akkor $m > n$ esetén a háromszög-egyenlőtlenséggel és a mértani sor összegképletével:



$$|a_m - a_n| \le \sum_{k=n}^{m-1} |a_{k+1} - a_k| \le \sum_{k=n}^{m-1} 2^{-k} < \sum_{k=n}^{\infty} 2^{-k} = 2^{1-n} \to 0.$$



Így $(a_n)$ Cauchy-sorozat, tehát konvergens. Általában: ha $|a_{n+1} - a_n| \le q|a_n - a_{n-1}|$ valamely $0 \le q < 1$-re (**kontrakció**, a Banach-féle fixponttétel alapja), vagy ha $\sum |a_{k+1} - a_k| < \infty$ (abszolút konvergencia), a sorozat biztosan konvergens.



### Rekurzív sorozatok vizsgálatának receptje

1. **Fixpontok megkeresése:** Megoldjuk az $x = g(x)$ egyenletet. Ha $g$ folytonos, csak ezek lehetnek a határértékek (hiszen $a_n \to A \implies g(a_n) \to g(A)$).


2. **Korlátosság (invariáns intervallum):** Teljes indukcióval megmutatjuk, hogy a sorozat tagjai egy két fixpont közötti intervallumban maradnak.


3. **Monotonitás:** Vizsgáljuk a $g(x) - x$ előjelét az invariáns intervallumon (ha $>0$, a sorozat nő; ha $<0$, csökken), vagy ha $g$ monoton növő függvény, akkor az $a_1 < a_2$ relációból indukcióval azonnal adódik az $a_n < a_{n+1}$ növekedés.


4. **Konvergencia:** Monoton és korlátos sorozat konvergens; a korlátok alapján kiválasztjuk, melyik fixponthoz tart (a $|g'(A)| < 1$ feltételű **vonzó fixponthoz** fog tartani, míg $|g'(A)| > 1$ esetén a fixpont **taszító**).



* *Példa:* $a_1 = 1$, $a_{n+1} = \sqrt{2a_n}$. Fixpontok: $x = \sqrt{2x} \implies 0$ és $2$. Indukcióval $1 \le a_n < 2$, és $a_{n+1} - a_n = \sqrt{a_n}(\sqrt{2} - \sqrt{a_n}) > 0$, így szigorúan nő és korlátos, tehát $a_n \to 2$.



---

## 10. Halmazok számossága: megszámlálhatóság és kontinuum

### Megszámlálható halmazok és a Gödel-számozás

Két halmaz **ekvivalens** (egyenlő számosságú, $A \sim B$), ha létezik köztük bijekció (kölcsönösen egyértelmű leképezés). Egy halmaz **megszámlálhatóan végtelen**, ha $A \sim \mathbb{N}$ (elemei sorozatba rendezhetők: $a_1, a_2, \dots$), és **legfeljebb megszámlálható**, ha véges vagy megszámlálhatóan végtelen.

**Három ekvivalens kritérium** (nem üres $A$ halmaz legfeljebb megszámlálhatóságára):

1. $A$ véges vagy $A \sim \mathbb{N}$;


2. Létezik $A \to \mathbb{N}$ **injekció** (egyértelmű kódolás természetes számokkal);


3. Létezik $\mathbb{N} \to A$ **szürjekció** (felsorolás, akár ismétlésekkel is).



* **Prímhatvány-kódolás (Gödel-számozás):** Hogyan igazoljuk, hogy az egész számokból álló összes véges sorozat halmaza megszámlálható? Először veszünk egy $\varphi : \mathbb{Z} \to \mathbb{N}^+$ injekciót (pl. pozitívakra $2z$, nempozitívakra $1-2z$). Ezután egy $(z_1, \dots, z_k)$ véges sorozathoz hozzárendeljük a



$$\Phi(z_1, \dots, z_k) = 2^{\varphi(z_1)} \cdot 3^{\varphi(z_2)} \cdot 5^{\varphi(z_3)} \cdots p_k^{\varphi(z_k)} \in \mathbb{N}$$



számot (ahol $p_k$ a $k$-adik prímszám). A **számelmélet alaptétele** (prímfelbontás egyértelműsége) miatt a kapott számból egyértelműen visszaolvasható a sorozat hossza és minden egyes tagja, így $\Phi$ injekció!


* **Megszámlálható unió:** Megszámlálható sok, legfeljebb megszámlálható halmaz uniója is legfeljebb megszámlálható (az $\mathbb{N} \times \mathbb{N}$ táblázat átlós felsorolása miatt).


* **Algebrai és transzcendens számok:** Egy szám **algebrai**, ha gyöke valamely nem azonosan nulla, egész együtthatós polinomnak (pl. minden racionális szám, $\sqrt{2}$, stb.); különben **transzcendens**. Mivel egy $P(x) = a_d x^d + \dots + a_0$ polinom az $(a_0, \dots, a_d)$ véges egész számokból álló sorozattal azonosítható, csak megszámlálható sok ilyen polinom van. Mindegyiknek legfeljebb $d$ (tehát véges sok) gyöke van. Így az **algebrai számok halmaza megszámlálható** (megszámlálható sok véges halmaz uniója).



---

### Kontinuum számosság, Schröder–Bernstein-tétel és a Hilbert-szálloda

* **Cantor tétele:** A valós számok $\mathbb{R}$ halmaza **nem megszámlálható** (bizonyítható Cantor átlós eljárásával vagy egymásba skatulyázott zárt intervallumokkal). Általánosabban is igaz Cantor tétele: bármely $A$ halmaz hatványhalmazára (összes részhalmazainak $\mathcal{P}(A)$ halmazára) $\vert{}\mathcal{P}(A)\vert{} > \vert{}A\vert{}$ (a $D = \{a \in A : a \notin f(a)\}$ átlós halmaz sosem áll elő $f(d)$ alakban). Az $\mathbb{R}$-rel ekvivalens halmazokat nevezzük **kontinuum számosságúnak**.


* **Következmény:** Mivel $\mathbb{R}$ kontinuum, az algebrai számok viszont csak megszámlálhatóan sokan vannak, **léteznek transzcendens számok**, sőt a valós számok túlnyomó többsége transzcendens (konkrét példák: $\pi$, $e$, Liouville-szám: $\sum 10^{-k!}$).


* **Schröder–Bernstein-tétel:** Ha létezik $A \to B$ injekció és $B \to A$ injekció, akkor létezik $A \to B$ bijekció is ($A \sim B$).


* *Példa ($\mathcal{P}(\mathbb{N}) \sim \mathbb{R}$):*
1. $\mathcal{P}(\mathbb{N}) \hookrightarrow \mathbb{R}$ injekció: egy $A \subseteq \mathbb{N}$ részhalmazhoz rendeljük a $\sum_{n \in A} 10^{-n}$ tizedes törtet (amelynek jegyei csak $0$-k és $1$-esek, így nincs a $0{,}0999\dots = 0{,}1000\dots$ típusú egyértelműségi probléma).


2. $\mathbb{R} \hookrightarrow \mathcal{P}(\mathbb{Q}) \sim \mathcal{P}(\mathbb{N})$ injekció: a **Dedekind-szelet**, $x \mapsto \{q \in \mathbb{Q} : q < x\}$ (a racionálisok sűrűsége miatt két különböző valós szám között mindig van racionális, így a halmazok különböznek).






* **Hilbert-szálloda ($\mathbb{R} \setminus \mathbb{Q} \sim \mathbb{R}$):** Ha egy végtelen $X$ halmazhoz hozzáveszünk (vagy elhagyunk belőle) egy megszámlálható $C$ halmazt (és a maradék még végtelen), a számosság nem változik. Az irracionális számok és $\mathbb{R}$ közti bijekcióhoz kiválasztunk egy megszámlálható irracionális sorozatot, pl. $s_n = \sqrt{2} + n$, és a racionális $q_n$ számokat az $s_{2n}$, míg az eredeti $s_n$ számokat az $s_{2n-1}$ helyekre költöztetjük; minden más irracionális szám helyben marad.



---

### A végtelen skatulyaelv (a diszjunkt „T”-betűk problémája)

> **Végtelen skatulyaelv:** Ha egy nem megszámlálható halmazt megszámlálható sok részre bontunk, akkor legalább az egyik részhalmaz maga is nem megszámlálható.
> 
> 

* **Racionális számokra tudunk diszjunkt T-betűket állítani a síkon:** Mivel $\mathbb{Q} = \{q_1, q_2, \dots\}$ megszámlálható, lépésről lépésre (rekurzívan) építkezhetünk. A $q_n$ pontra állított T magassága legyen $h_n = \frac{1}{n}$ (egyre alacsonyabbak, így a korábbi kalapok magasan fölötte mennek el), a kalapjának félszélessége pedig legyen kisebb, mint a $q_n$ és az összes korábbi (véges sok!) $q_1, \dots, q_{n-1}$ pont távolságának minimumának a fele. Így a szárak és kalapok sosem ütköznek.


* **Irracionális számokra NEM tudunk:** Indirekt tegyük fel, hogy minden $x \in \mathbb{R} \setminus \mathbb{Q}$ ponton áll egy $h_x$ magas, $w_x$ félszélességű T. Bontsuk fel az irracionálisokat a kalapszélesség szerint: $\mathbb{R} \setminus \mathbb{Q} = \bigcup_{n=1}^\infty \{x : w_x \ge \frac{1}{n}\}$. A végtelen skatulyaelv miatt van olyan $n$, amelyre a $H_n = \{x : w_x \ge \frac{1}{n}\}$ halmaz nem megszámlálható. Ha most a számegyenest felosztjuk megszámlálható sok $\left[\frac{k}{n}, \frac{k+1}{n}\right)$ intervallumra, egy újabb skatulyaelv miatt valamelyik $\frac{1}{n}$ hosszú intervallumba $H_n$-nek legalább két pontja ($x < y$) esik. Ezek távolsága $< \frac{1}{n}$, miközben mindkettő kalapja legalább $\frac{1}{n}$ széles — tehát az alacsonyabbik T kalapja elkerülhetetlenül beleütközik a magasabbik T szárába!



---

## 11. Sűrűsödési értékek, liminf, limsup és végtelen sorok

### Részsorozatok, sűrűsödési értékek és a farkak határértéke

* **Sűrűsödési érték:** Egy $s \in \overline{\mathbb{R}}$ érték az $(a_n)$ sorozat sűrűsödési értéke, ha létezik olyan $a_{n_k}$ **részsorozat** ($n_1 < n_2 < \dots$), amely $s$-hez tart; ekvivalensen: $s$ minden környezetében a sorozatnak **végtelen sok** tagja van. (Figyeljük meg a különbséget: a határérték környezetében *majdnem minden* tag, a sűrűsödési érték környezetében *végtelen sok* tag van.)


* **Bolzano–Weierstrass-tétel:** Minden korlátos sorozatnak van konvergens részsorozata (tehát van véges sűrűsödési értéke). A sűrűsödési értékek $S$ halmaza mindig zárt, és akár egy teljes intervallum is lehet (pl. a $(0,1)$-beli törtek $\frac{1}{2}, \frac{1}{3}, \frac{2}{3}, \frac{1}{4}, \frac{2}{4}, \frac{3}{4}, \dots$ felsorolásánál vagy a $\sin n$ sorozatnál).



### A $\limsup$ és $\liminf$ ekvivalens definíciói

1. **A sűrűsödési értékek szélsőértékei:** $\limsup_{n\to\infty} a_n = \max S$ (a legnagyobb sűrűsödési érték) és $\liminf_{n\to\infty} a_n = \min S$ (a legkisebb sűrűsödési érték).


2. **A „farkak” szuprémuma és infimuma:** Tekintsük a sorozat $n$-edik farkát: $\{a_k : k \ge n\}$. Ennek szuprémuma $M_n = \sup_{k \ge n} a_k$ (ahogy $n$ nő, a halmaz szűkül, így $M_n$ **monoton fogyó** sorozat!), infimuma pedig $m_n = \inf_{k \ge n} a_k$ (**monoton növő** sorozat). Ekkor:



$$\limsup_{n\to\infty} a_n = \lim_{n\to\infty} M_n = \inf_{n \in \mathbb{N}} \sup_{k \ge n} a_k, \qquad \liminf_{n\to\infty} a_n = \lim_{n\to\infty} m_n = \sup_{n \in \mathbb{N}} \inf_{k \ge n} a_k.$$



*Nagy előny:* Mivel monoton sorozatnak $\overline{\mathbb{R}}$-ben mindig van határértéke, a $\liminf$ és $\limsup$ **minden sorozatra létezik**!


3. **$\varepsilon$-os („aszimptotikus szuprémum”) jellemzés:** Véges $a \in \mathbb{R}$ esetén $\limsup a_n = a$ pontosan akkor, ha minden $\varepsilon > 0$-ra:


* $a_n > a + \varepsilon$ csak **véges sok** $n$-re teljesül (majdnem minden tag $\le a + \varepsilon$), ÉS


* $a_n > a - \varepsilon$ **végtelen sok** $n$-re teljesül.





### Alapvető tételek és tulajdonságok

* **Konvergencia jellemzése:** $a_n \to a \in \overline{\mathbb{R}} \iff \liminf_{n\to\infty} a_n = \limsup_{n\to\infty} a_n = a$ (azonnal adódik az $m_n \le a_n \le M_n$ rendőrelvből).


* **Gyakorlati számolás periódusos bontással:** Ha az indexeket maradékosztályok szerint véges sok részsorozatra bontjuk (pl. páros és páratlan, vagy $n \bmod 4$ szerint), és mindegyik konvergens, akkor a sűrűsödési értékek halmaza pontosan e részsorozatok határértékeinek halmaza. Például $b_n = 1 + 2(-1)^{n+1} + (-1)^{n(n-1)/2}$ esetén az $n \bmod 4 = 1, 2, 3, 0$ osztályokon a sorozat rendre állandó $4, -2, 2, 0$, így $\liminf b_n = -2$ és $\limsup b_n = 4$.


* **Műveleti egyenlőtlenségek (Szuper- és szubadditivitás):** A $\liminf$ és $\limsup$ nem lineáris (nem vihető be tagonként az összegbe), mert a két sorozat kiugró értékei elkerülhetik egymást. Korlátos sorozatokra a teljes lánc:



$$\liminf x_n + \liminf y_n \le \liminf(x_n + y_n) \le \liminf x_n + \limsup y_n \le \limsup(x_n + y_n) \le \limsup x_n + \limsup y_n.$$



*Példa szigorú egyenlőtlenségre:* Ha $x_n = (-1)^n$ és $y_n = (-1)^{n+1}$ (ellenütemben oszcillálnak), akkor $x_n + y_n = 0$, így $\liminf x_n + \liminf y_n = -1 + (-1) = -2 < 0 = \liminf(x_n + y_n)$. Ha viszont az egyik sorozat ($y_n \to y$) konvergens, akkor egyenlőség áll: $\limsup(x_n + y_n) = \limsup x_n + y$.



---

### Végtelen sorok: mértani és teleszkopikus sorok

Egy $\sum_{n=1}^\infty a_n$ végtelen sor alatt az $S_N = \sum_{n=1}^N a_n$ **részletösszegek** sorozatát értjük; a sor konvergens, ha $(S_N)$ konvergens, és összege $\lim_{N\to\infty} S_N$.

* **Szükséges feltétel:** Ha $\sum a_n$ konvergens, akkor $a_n = S_n - S_{n-1} \to 0$. Ez azonban **nem elégséges**: a $\sum_{n=1}^\infty \frac{1}{n}$ **harmonikus sor** tagjai $0$-hoz tartanak, a sor mégis divergens ($\sum \frac{1}{n} = \infty$).


* **Mértani sor:** $\vert{}q\vert{} < 1$ esetén konvergens (különben divergens), és bármely $k$ kezdőindextől az összegképlet:



$$\sum_{n=k}^\infty c \cdot q^n = \frac{c \cdot q^k}{1 - q} = \frac{\text{első tag}}{1 - \text{hányados}}.$$



Például: $\sum_{n=2}^\infty \frac{7 \cdot 2^n}{3^{n-1}} = \sum_{n=2}^\infty 21\left(\frac{2}{3}\right)^n = \frac{21 \cdot (2/3)^2}{1 - 2/3} = 28$.


* **Teleszkopikus sorok és parciális törtekre bontás:** Ha az általános tag felírható $a_n = b_n - b_{n+1}$ alakban, akkor a részletösszegben a belső tagok kiesnek: $S_N = (b_1 - b_2) + (b_2 - b_3) + \dots + (b_N - b_{N+1}) = b_1 - b_{N+1}$.


* *Példa:* $\sum_{n=1}^\infty \frac{1}{(3n-2)(3n+1)}$. Parciális törtekre bontva: $\frac{1}{(3n-2)(3n+1)} = \frac{1}{3}\left(\frac{1}{3n-2} - \frac{1}{3n+1}\right)$. Így $S_N = \frac{1}{3}\left(1 - \frac{1}{3N+1}\right) \to \frac{1}{3}$.





---

## 12. Valós függvények tulajdonságai és vizsgálata

### Egészrész, törtrész és összetett függvények szakaszonkénti elemzése

* **Egészrész ($[x]$):** A legnagyobb $x$-nél nem nagyobb egész szám ($[x] \le x < [x] + 1$; vigyázat negatívokra: $[-2{,}3] = -3$).


* **Törtrész ($\{x\}$):** $\{x\} = x - [x] \in [0, 1)$, amely $1$ szerint periodikus függvény.



**Hogyan vizsgálunk $\left\{\frac{1}{x}\right\}$ és $x\left[\frac{1}{x}\right]$ típusú függvényeket?**
Olyan intervallumokra bontjuk a számegyenest, amelyeken a belső $\frac{1}{x}$ kifejezés egészrésze állandó:

* Pozitív $x$-re $k \le \frac{1}{x} < k+1 \iff \frac{1}{k+1} < x \le \frac{1}{k}$ ($k \in \mathbb{N}^+$).


* Egy ilyen $\left(\frac{1}{k+1}, \frac{1}{k}\right]$ intervallumon $\left[\frac{1}{x}\right] = k$ állandó!


1. Az $f(x) = \left\{\frac{1}{x}\right\} = \frac{1}{x} - k$ függvény minden ilyen szakaszon egy $0$-tól $1$-ig ívelő hiperbola-darab. Ahogy $x \to 0$, a szakaszok összesűrűsödnek, a függvény végtelen sokszor befutja a $[0, 1)$ intervallumot, így **$0$-ban nincs határértéke**.


2. A $g(x) = x\left[\frac{1}{x}\right] = kx$ függvény minden ilyen szakaszon egy origón átmenő egyenes darabja, amely $\frac{k}{k+1}$-től $1$-ig emelkedik. Mivel $x\left[\frac{1}{x}\right] = x\left(\frac{1}{x} - \left\{\frac{1}{x}\right\}\right) = 1 - x\left\{\frac{1}{x}\right\}$, és $0 \le \left\{\frac{1}{x}\right\} < 1$, a rendőrelv miatt $|x[1/x] - 1| < |x| \to 0$, tehát **$\lim_{x\to 0} x\left[\frac{1}{x}\right] = 1$**.





---

### Korlátosság, szélsőértékek és monotonitás

* **Korlátosság vs. Maximum (Weierstrass-tétel):** Egy függvénynek attól, hogy korlátos egy zárt $[0, 1]$ intervallumon, még nem biztos, hogy van legnagyobb értéke (maximuma). Például ha $f(x) = x$ a $[0, 1)$-en és $f(1) = 0$, akkor $\sup f = 1$, de az $1$ értéket sosem veszi fel. A **Weierstrass-tétel** garantálja, hogy ha $f$ **folytonos** egy **korlátos és zárt** $[a, b]$ intervallumon, akkor korlátos és fel is veszi a minimumát és maximumát (ha bármelyik feltétel a háromból hiányzik, az állítás elbukhat).


* **Monoton függvények értékkészlete és ugrásai:** Ha $f : [a, b] \to \mathbb{R}$ monoton növő, akkor $f(a) = \min R(f)$ és $f(b) = \max R(f)$ — tehát az értékkészletének **kötelezően van minimuma és maximuma** (ezért pl. $R(f) = (0, 1)$ lehetetlen).


* Monoton függvénynek minden pontban létezik bal és jobb oldali határértéke ($f(x_0-0) \le f(x_0) \le f(x_0+0)$), így szakadásai csak **ugrások** lehetnek, amelyek diszjunkt hézagokat hagynak az értékkészletben (ezért legfeljebb megszámlálható sok szakadása lehet).


* Ha az értékkészlet két szétválasztott darabból áll, az ősképek két részintervallumra bontják $[0, 1]$-et. Az elválasztó $a \in [0, 1]$ határpont vagy az alsó részhez tartozik (ekkor az alsó értékkészlet-darabnak kell legyen maximuma, mint $R(f) = [0, 1] \cup [2, 3]$ esetén), vagy a felsőhöz (ekkor a felső darabnak kell legyen minimuma, mint $R(f) = [0, 1) \cup [2, 3]$ esetén). Ezért $R(f) = [0, 1) \cup (2, 3]$ monoton függvénnyel **lehetetlen**, mert középen sem az alsó résznek nincs maximuma, sem a felsőnek minimuma!





---

### Inverz függvény és paritás (páros/páratlan felbontás)

* **Inverz és törtlineáris függvények:** Egy $f : A \to B$ bijekció inverzét az $y = f(x)$ egyenlet $x$-re való megoldásával kapjuk meg. A $f(x) = \frac{ax+b}{cx+d}$ ($ad-bc \ne 0$) törtlineáris függvények inverze $f^{-1}(y) = \frac{dy-b}{-cy+a}$. Speciálisan, ha $a = -d$ (mint $f(x) = \frac{2x-3}{3x-2}$ esetén), akkor $f^{-1}(x) = f(x)$, azaz a függvény **önmaga inverze (involúció)**, grafikonja szimmetrikus az $y = x$ egyenesre.


* **Páros ($f(-x) = f(x)$) és páratlan ($g(-x) = -g(x)$) függvények:**
* *Szorzás:* Követi az előjelszabályt ($+1$ = páros, $-1$ = páratlan): páros $\cdot$ páratlan = páratlan; páratlan $\cdot$ páratlan = páros.


* *Kompozíció ($f \circ g$):* Ha a belső függvény páros, az összetett függvény **mindig páros**; ha mindkettő páratlan, a kompozíció páratlan.


* *Egyértelmű felbontási tétel:* Az egyetlen függvény, amely egyszerre páros és páratlan, az azonosan nulla függvény ($f(x) = 0$). Bármely $f : \mathbb{R} \to \mathbb{R}$ függvény **egyértelműen** felbomlik egy páros és egy páratlan függvény összegére (lineáris algebrailag direkt összeg):



$$f(x) = \underbrace{\frac{f(x) + f(-x)}{2}}_{\text{páros rész}} + \underbrace{\frac{f(x) - f(-x)}{2}}_{\text{páratlan rész}}.$$



(Nevezetes példa: $e^x = \cosh x + \sinh x$.)





---

### Patologikus függvények: sűrű szinthalmazok és a Darboux-tulajdonság

Az analízis végén megismerkedünk olyan „extrém” függvényekkel, amelyek minden mégoly kicsiny $(a, b)$ nyílt intervallumon felvesznek minden egész, minden racionális, vagy akár **minden valós értéket**.

* **A kulcsgondolat:** Egy $f$ függvény akkor vesz fel minden $(a, b)$ intervallumon minden $c$ értéket, ha minden $c$-re az $f^{-1}(c)$ őskép (szinthalmaz) **sűrű** $\mathbb{R}$-ben. Ehhez a számegyenest páronként diszjunkt, sűrű halmazokra kell felbontanunk:


1. *Megszámlálható sok értékhez ($\mathbb{Z}$ vagy $\mathbb{Q}$):* A pontosan $\pi_j$ ($j$-edik prím) nevezőjű egyszerűsíthetetlen törtek halmazai diszjunktak, és elég nagy prímekre minden intervallumba beleesnek.


2. *Kontinuum sok értékhez ($\mathbb{R}$):* Definiáljuk az $x \sim y \iff x - y \in \mathbb{Q}$ ekvivalenciarelációt. Az $x + \mathbb{Q}$ ekvivalenciaosztályok páronként diszjunktak, mindegyik sűrű $\mathbb{R}$-ben, és mivel egy osztály csak megszámlálható, **kontinuum sok osztály van**. Egy osztályok és $\mathbb{R}$ közötti $\Phi$ bijekcióval az $f(x) = \Phi(x + \mathbb{Q})$ függvény minden nyílt intervallumon minden valós értéket felvesz!




* **Elméleti jelentőség:** Ez a függvény teljesíti a **Darboux-tulajdonságot** (minden intervallumon felvesz minden közbülső értéket két felvett értéke között), miközben **egyetlen pontban sem folytonos** — ez bizonyítja, hogy a közbülsőérték-tulajdonság önmagában sokkal gyengébb a folytonosságnál.



---

## 13. Összefoglaló áttekintő táblázat

| Témakör | Kulcsfogalom / Tétel | Képlet / Karakterizáció | Tipikus példa / Ellenpélda |
| --- | --- | --- | --- |
| **Határérték** | $-\infty$-hez tartás | $\forall K \in \mathbb{R}\ \exists N\ \forall n \ge N : a_n < K$ | $-n + \sqrt{n} \to -\infty$, de $(-1)^n n \not\to -\infty$ |
| **Szerkezet** | Szélsőértékek | Konvergens sorozatnak van min. vagy max. tagja | $(-1)^n(1 - 1/n)$: korlátos, de nincs se min, se max (divergens) |
| **Becslések** | $n$-edik gyök elve | $\sqrt[n]{\sum_{i=1}^k a_i^n + P(n)} \to \max\{a_i\}$ | $\sqrt[n]{2^n + 3^n + 1000n^3} \to 3$ |
| **Aszimptotika** | $a_n \sim b_n$ | $\lim \frac{a_n}{b_n} = 1$ (relatív hiba $\to 0$) | $n+1 \sim n$, de $(n+1) - n = 1 \not\to 0$ |
| **Teljesség** | Cauchy-kritérium | $(a_n)$ konvergens $\iff \forall \varepsilon\ \exists N\ \forall m>n\ge N: |a_m - a_n| < \varepsilon$ | $|a_{n+1} - a_n| \le 2^{-n} \implies |a_m - a_n| < 2^{1-n} \to 0$ |
| **Számosság** | Megszámlálható ($\sim \mathbb{N}$) | Van $A \hookrightarrow \mathbb{N}$ injekció / prímkódolás | $\mathbb{Z}, \mathbb{Q}$, véges sorozatok, **algebrai számok** |
| **Számosság** | Kontinuum ($\sim \mathbb{R}$) | Schröder–Bernstein: $A \hookrightarrow B$ és $B \hookrightarrow A$ | $\mathbb{R}, (0,1), \mathbb{R}\setminus\mathbb{Q}$, transzcendens számok, $\mathcal{P}(\mathbb{N})$ |
| **Részsorozat** | $\limsup a_n = a$ | $\lim_{n\to\infty} (\sup_{k\ge n} a_k) = \max S$ | $a_n > a+\varepsilon$ véges sokszor, $a_n > a-\varepsilon$ végtelen sokszor |
| **Végtelen sor** | Mértani és Teleszkopikus | $\sum_{n=k}^\infty c q^n = \frac{cq^k}{1-q}$; $\sum (b_n - b_{n+1}) = b_1 - \lim b_n$ | $\sum_{n=1}^\infty \frac{1}{(3n-2)(3n+1)} = \frac{1}{3}$ |
| **Függvények** | Páros / Páratlan | $f(x) = \frac{f(x)+f(-x)}{2} + \frac{f(x)-f(-x)}{2}$ | $e^x = \cosh x + \sinh x$; mindkettő egyszerre csak $f \equiv 0$ |

---

# III. Rész: Függvények Globális és Lokális Tulajdonságai, Határérték és Folytonosság (8–10. hetek)

## 14. Függvények periodicitása és lokális szélsőértékei

Mielőtt a határértékekkel foglalkoznánk, érdemes megvizsgálni, hogyan viselkedhet egy függvény „nagyban” (globálisan) és „kicsiben” (lokálisan).

### Periodicitás és a periódusok csoportja

Egy $f: \mathbb{R} \to \mathbb{R}$ függvényt **periodikusnak** nevezünk, ha létezik olyan $p \neq 0$ szám (periódus), amelyre minden $x \in \mathbb{R}$ esetén $f(x+p) = f(x)$.

* **Algebrai szerkezet:** Ha egy függvénynek $p$ és $r$ is periódusa, akkor $p+r$ és $-p$ is az. A periódusok (a $0$-val kiegészítve) egy **additív részcsoportot** alkotnak a valós számok halmazában ($\mathbb{R}$-ben).


* **A részcsoportok trichotómiája:** $\mathbb{R}$ minden additív részcsoportja vagy **diszkrét** (azaz egy legkisebb pozitív $p$ elem egész számú többszöröseiből áll: $\{kp : k \in \mathbb{Z}\}$), vagy **sűrű** $\mathbb{R}$-ben (minden nyílt intervallumban van eleme).


* **Példák:**
1. A $\sin x$ periódusai a $2k\pi$ alakú számok; a legkisebb pozitív periódusa a $2\pi$.


2. A **Dirichlet-függvény** ($D(x) = 1$, ha $x \in \mathbb{Q}$, és $0$, ha $x \notin \mathbb{Q}$) minden racionális szám szerint periodikus. Periódusainak halmaza $\mathbb{Q}$, ami sűrű $\mathbb{R}$-ben, így nincs legkisebb pozitív periódusa.


3. Ha egy **folytonos** függvény periódusainak csoportja sűrű (például ha $1$ és $\sqrt{2}$ is periódusa lenne), akkor a függvény kénytelen **konstans** lenni. (Ezért a $\sin x + \sin(\sqrt{2}x)$ függvény nem periodikus.) Sőt, ha egy tetszőleges függvény *minden irracionális szám* szerint periodikus, akkor folytonossági feltevés nélkül is konstans, mert minden valós szám felírható két irracionális szám összegeként (pl. $q = \sqrt{2} + (q - \sqrt{2})$).





### Lokális szélsőértékek és a „racionális környezetek” trükkje

Az $x_0$ pont **lokális maximumhely**, ha van olyan $\delta > 0$ környezete, ahol $f(x) \le f(x_0)$. **Szigorú lokális maximumhely**, ha $0 < \vert{}x - x_0\vert{} < \delta$ esetén $f(x) < f(x_0)$ (azaz a szomszédos pontokban szigorúan kisebb a függvényérték).

* **Megszámlálhatósági tétel:** Bármely $f: \mathbb{R} \to \mathbb{R}$ függvénynek legfeljebb **megszámlálhatóan sok** szigorú lokális maximumhelye lehet.


* **A bizonyítás ötlete (racionális elválasztás):** Ha $x_0$ szigorú lokális maximumhely, akkor a $\delta$-környezetén belül választhatunk egy racionális végpontú $(p, q)$ intervallumot ($p, q \in \mathbb{Q}$), amely tartalmazza $x_0$-t. Két különböző szigorú maximumhelyhez nem tartozhat ugyanaz a $(p, q)$ intervallum (mert akkor mindkettő nagyobb lenne a másiknál). Mivel racionális számpárokból ($\mathbb{Q}^2$) csak megszámlálhatóan sok van, szigorú lokális maximumból sem lehet több.


* **Példa (Riemann-függvény):** Legyen $R(x) = 1/q$, ha $x = p/q$ egyszerűsített tört ($q > 0$), $R(0)=1$, és $R(x) = 0$, ha $x$ irracionális. Ennek a függvénynek *minden racionális pontban* szigorú lokális maximuma van (ami összhangban van a tétellel, hiszen $\mathbb{Q}$ megszámlálható), míg minden irracionális pontban *nem szigorú* lokális (és egyben globális) minimuma van.



---

## 15. Konvex és konkáv függvények

A konvexitás a függvény görbületét ragadja meg anélkül, hogy deriválhatóságot kellene feltételeznünk.

### Definíció és geometriai jelentés

Egy $f: I \to \mathbb{R}$ függvény **konvex** az $I$ intervallumon, ha bármely $x, y \in I$ és $\lambda \in [0, 1]$ esetén:


$$f(\lambda x + (1-\lambda)y) \le \lambda f(x) + (1-\lambda)f(y).$$

* **Szemléletesen:** A $\lambda x + (1-\lambda)y$ az $x$ és $y$ közötti szakasz egy pontja, a jobb oldal pedig a grafikon $(x, f(x))$ és $(y, f(y))$ pontjait összekötő **húr** megfelelő értéke. A konvexitás tehát azt jelenti, hogy a függvény grafikonja minden húrja alatt (vagy rajta) halad.


* Ha $x \neq y$ és $\lambda \in (0, 1)$ esetén szigorú egyenlőtlenség ($<$) áll fenn, a függvény **szigorúan konvex**. Ha $-f$ konvex (azaz a húrok a grafikon *alatt* haladnak, és az egyenlőtlenség $\ge$-re fordul), a függvény **konkáv**.


* **Nem szigorú konvexitás:** Ha egy függvény konvex, de nem szigorúan konvex, az pontosan azt jelenti, hogy van olyan részintervallum, amelyen a függvény **lineáris** (egyenes szakasz). Például az $f(x) = \vert{}x\vert{}$ konvex, de a negatív és a pozitív félegyenesen is lineáris.



### Karakterizáció a különbségi hányadossal (Húrok meredeksége)

Rögzítsünk egy $a \in I$ pontot, és tekintsük az $(a, f(a))$ és $(x, f(x))$ pontokon átmenő húr meredekségét leíró függvényt:


$$m_a(x) = \frac{f(x) - f(a)}{x - a} \qquad (x \in I \setminus \{a\}).$$

* **Tétel:** $f$ pontosan akkor (szigorúan) konvex $I$-n, ha minden $a \in I$ esetén az $m_a(x)$ függvény (szigorúan) **monoton növekvő**. (Konkávitás esetén monoton fogyó.)


* **Három húr lemma:** $z < x < y$ esetén a bal oldali húr meredeksége $\le$ a teljes húr meredeksége $\le$ a jobb oldali húr meredeksége:



$$\frac{f(x) - f(z)}{x - z} \le \frac{f(y) - f(z)}{y - z} \le \frac{f(y) - f(x)}{y - x}.$$


* **Példák a húros bizonyításra:**
1. $f(x) = x^k$ ($k > 1$ egész) szigorúan konvex a $[0, \infty)$ intervallumon, mert $m_a(x) = \frac{x^k - a^k}{x - a} = x^{k-1} + x^{k-2}a + \dots + a^{k-1}$, ami nemnegatív számokon minden tagjában nő, az $x^{k-1}$ miatt pedig szigorúan nő.


2. $f(x) = \sqrt[k]{x}$ szigorúan konkáv a $[0, \infty)$-en, mert az $u = \sqrt[k]{x}, v = \sqrt[k]{a}$ jelöléssel $m_a(x) = \frac{1}{u^{k-1} + u^{k-2}v + \dots + v^{k-1}}$, ami a nevező növekedése miatt szigorúan fogy. (Általános elv: szigorúan növekvő konvex függvény inverze szigorúan növekvő és konkáv.)





### Jensen-egyenlőtlenség és a közepek hierarchiája

A konvexitás definíciója két pont súlyozott átlagáról szól; ezt teljes indukcióval („összevonás és újranormálás” trükkjével) tetszőleges $n$ pontra általánosíthatjuk:

* **Jensen-egyenlőtlenség:** Ha $f$ konvex az $I$ intervallumon, akkor bármely $x_1, \dots, x_n \in I$ pontokra és $p_1, \dots, p_n > 0$ súlyokra, amelyekre $\sum_{i=1}^n p_i = 1$ (konvex kombináció), teljesül:



$$f(p_1 x_1 + \dots + p_n x_n) \le p_1 f(x_1) + \dots + p_n f(x_n).$$



Röviden: **$f(\text{átlag}) \le \text{átlag}(f)$**.


* **Alkalmazás (Hatványközepek):** Ha az $f(x) = x^k$ ($k > 1$) konvex függvényre alkalmazzuk a Jensen-egyenlőtlenséget azonos $p_i = \frac{1}{n}$ súlyokkal és $a_i \ge 0$ számokkal, majd $k$-adik gyököt vonunk, megkapjuk a számtani és a $k$-adik hatványközép közötti nevezetes egyenlőtlenséget:



$$\frac{a_1 + \dots + a_n}{n} \le \sqrt[k]{\frac{a_1^k + \dots + a_n^k}{n}}.$$



Szigorú konvexitás miatt egyenlőség pontosan akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$.



### Konvex függvények viselkedése a végtelenben

A három húr lemmából következik, hogy egy $\mathbb{R}$-en konvex függvény meredeksége csak növekedhet. Ezért globálisan csak háromféle lehet: (1) végig monoton nő, (2) végig monoton fogy, vagy (3) előbb fogy, majd egy minimum után nő.

* **Példa:** Lehet-e egy $\mathbb{R}$-en szigorúan konvex függvényre $\lim_{x\to-\infty} f(x) = +\infty$ és $\lim_{x\to+\infty} f(x) = -\infty$? **Igen**, például $f(x) = \sqrt{x^2+1} - 2x$ (vagy $e^{-x} - x$). A $\sqrt{x^2+1}$ szigorúan konvex, a $-2x$ lineáris tag pedig nem rontja el a szigorú konvexitást, viszont $+\infty$-ben „lehúzza” a függvényt $-\infty$-be.


* Ha azonban $\lim_{x\to-\infty} f(x) = 0$ (véges), akkor a függvény nem csökkenhet sehol (mert egy negatív meredekségű húr $-\infty$ felé haladva a függvényt $+\infty$-be kényszerítené a húr felett maradás miatt), így $f$ kénytelen monoton nőni és nemnegatív maradni.



---

## 16. Pontrendszerek topológiája: környezetek és torlódási pontok

Ahhoz, hogy értelmezni tudjuk a $\lim_{x \to a} f(x)$ határértéket, tudnunk kell, mit jelent „végtelenül közel menni” az $a$ ponthoz a függvény értelmezési tartományában ($D(f)$).

* **Környezetek:** Egy $a \in \mathbb{R}$ pont $r > 0$ sugarú **környezete** a $B(a, r) = (a-r, a+r)$ nyílt intervallum. A **pontozott környezet** ebből elhagyja magát a középpontot: $\dot{B}(a, r) = (a-r, a+r) \setminus \{a\}$.


* **Torlódási pont:** Az $a$ pont egy $H \subseteq \mathbb{R}$ halmaz **torlódási pontja**, ha $a$ *minden* pontozott környezete tartalmaz $H$-beli pontot (azaz $\forall r > 0: \dot{B}(a, r) \cap H \neq \emptyset$). Ekvivalensen: $a$ minden környezetében *végtelen sok* $H$-beli pont van, vagy létezik olyan $H \setminus \{a\}$-beli sorozat, amely $a$-hoz konvergál.


* **Izolált pont:** Ha $a \in H$, de nem torlódási pont (van olyan környezete, ahol rajta kívül nincs más $H$-beli pont).


* **Példák:**
* $H = (-1, 1)$ és $H = (-1, 0) \cup (0, 1)$ torlódási pontjainak halmaza egyaránt a zárt $[-1, 1]$ intervallum (a végpontok és a kivett $0$ is torlódási pont, pedig nem elemei a halmaznak!).


* $\mathbb{N}$-nek nincs valós torlódási pontja (minden pontja izolált).


* $H = \{1/n : n \in \mathbb{N}\}$ egyetlen torlódási pontja a $0$.


* $\mathbb{Q}$ torlódási pontjainak halmaza a teljes $\mathbb{R}$.




* **Bolzano–Weierstrass-tétel halmazokra:** Minden korlátos és végtelen $H \subseteq \mathbb{R}$ halmaznak van legalább egy valós torlódási pontja. (Ha pedig egy korlátos halmaznak csak *egyetlen* torlódási pontja van, akkor a halmaz biztosan megszámlálható, és sorozatba rendezhető úgy, hogy a torlódási ponthoz tartson — a torlódási ponttól $\ge 1/n$ távolságra lévő „rétegek” ugyanis csak véges sok pontot tartalmazhatnak.)



---

## 17. Függvényhatárérték

Határértékről ($\lim_{x \to a} f(x)$) **csak akkor beszélhetünk, ha $a$ torlódási pontja $D(f)$-nek**! Különben a definíció feltétele üresen teljesülne, és a határérték nem lenne egyértelmű.

### A Cauchy-féle ($\varepsilon$–$\delta$) definíció és az egységes keret

* **Véges pontban véges határérték:** $\lim_{x \to a} f(x) = b$, ha:



$$\forall \varepsilon > 0 \ \exists \delta > 0 \ \forall x \in D(f): \quad 0 < \vert{}x - a\vert{} < \delta \implies \vert{}f(x) - b\vert{} < \varepsilon.$$



Fontos a $0 < \vert{}x - a\vert{}$ kikötés: **a függvény $a$-beli értéke egyáltalán nem számít** a határérték szempontjából (nem is kell ott értelmezve lennie).


* **Egyoldali határértékek:** Jobb oldali határértéknél ($x \to a+0$) a $0 < \vert{}x-a\vert{} < \delta$ helyett az $a < x < a+\delta$ félkörnyezetet, bal oldalinál ($x \to a-0$) az $a-\delta < x < a$ félkörnyezetet írjuk elő.


* *Tétel:* Ha $a$ mindkét oldalról torlódási pont, akkor $\lim_{x \to a} f(x) = b \iff \lim_{x \to a-0} f(x) = \lim_{x \to a+0} f(x) = b$.




* **A 15 eset egységes definíciója:** A bővített valós számegyenesen ($\overline{\mathbb{R}} = \mathbb{R} \cup \{+\infty, -\infty\}$) $+\infty$ környezeteinek a $(K, +\infty)$, $-\infty$ környezeteinek a $(-\infty, K)$ félegyeneseket nevezzük. Ekkor $\alpha \in \{a, a-0, a+0, +\infty, -\infty\}$ (5 eset) és $\beta \in \{b, +\infty, -\infty\}$ (3 eset) kombinálásával **15 különböző határérték-fogalmat** kapunk, amelyek mind ugyanarra a sémára épülnek:



$$\lim_{x \to \alpha} f(x) = \beta \iff \beta \text{ minden } V \text{ környezetéhez van } \alpha \text{-nak olyan } \dot{U} \text{ pontozott környezete, hogy } f(\dot{U} \cap D(f)) \subseteq V.$$


* *Példa:* $\lim_{x \to -\infty} f(x) = +\infty$ azt jelenti, hogy $\forall P \in \mathbb{R} \ \exists K \in \mathbb{R} \ \forall x \in D(f): x < K \implies f(x) > P$.





### Hogyan keresünk $\delta$-t adott $\varepsilon$-hoz? (A lokalizálás módszere)

Amikor definíció szerint igazolunk egy határértéket (pl. $\lim_{x \to 2} (3x^2+6) = 18$), a cél az $\vert{}f(x) - b\vert{}$ kifejezést felülről becsülni $C \cdot \vert{}x - a\vert{}$ alakban.

1. **Kiemelés:** $\vert{}3x^2 + 6 - 18\vert{} = 3\vert{}x^2 - 4\vert{} = 3\vert{}x - 2\vert{} \cdot \vert{}x + 2\vert{}$.


2. **Lokalizálás:** A $\delta$ *nem függhet $x$-től*! Ezért az $\vert{}x+2\vert{}$ tényezőt egy konstanssal kell becsülnünk. Kössük ki előre, hogy $\delta \le 1$. Ekkor $\vert{}x - 2\vert{} < 1 \implies 1 < x < 3 \implies \vert{}x + 2\vert{} < 5$.


3. **Becslés és $\min$-trükk:** Ezen a szűkített környezeten $3\vert{}x-2\vert{}\vert{}x+2\vert{} < 15\vert{}x-2\vert{} < \varepsilon$, amihez $\vert{}x-2\vert{} < \varepsilon/15$ kell. A két feltétel együtt: $\delta_\varepsilon = \min\{1, \frac{\varepsilon}{15}\}$. (Törteknél a nevezőt *alulról* kell becsülni úgy, hogy a lokalizáló sugár elválassza a nevezőt a $0$-tól!)



### Az átviteli elv (Heine-féle definíció)

Ez a tétel köti össze a már ismert sorozatokat a függvényekkel:


$$\lim_{x \to \alpha} f(x) = \beta \iff \forall (x_n) \subseteq D(f) \setminus \{\alpha\}, \ x_n \to \alpha \text{ sorozatra } \lim_{n \to \infty} f(x_n) = \beta.$$

* **Mire használjuk?**
1. *Tételek átmentésére:* A műveleti szabályok (összeg, szorzat, hányados), a rendőrelv és az egyenlőtlenségek megőrzése ($\lim f < \lim g \implies$ egy pontozott környezetben $f < g$) azonnal következnek a sorozatokra tanultakból.


2. *Nemlétezés bizonyítására:* Ha találunk **két különböző**, $\alpha$-hoz tartó sorozatot ($x_n, y_n \neq \alpha$), amelyek mentén $f(x_n)$ és $f(y_n)$ más-más határértékhez tart, akkor a függvénynek nincs határértéke.


* *Példa:* A Riemann-függvényre $\lim_{x \to 0} R(x) = 0$ (mert egy $\varepsilon$ küszöbhöz csak véges sok $q \le 1/\varepsilon$ nevezőjű tört esik a $0$ közelébe, ezeket egy elég kicsi $\delta$ kizárja). Viszont a $\lim_{x \to 0} \frac{R(x)}{x}$ **nem létezik**: az $x_n = \frac{1}{n} \to 0$ racionális sorozaton $\frac{1/n}{1/n} = 1 \to 1$, míg az $y_n = \frac{\sqrt{2}}{n} \to 0$ irracionális sorozaton $\frac{0}{y_n} = 0 \to 0$.




3. *Pontbeli információ kinyerésére:* Ha $f$ periodikus ($p>0$ periódussal) és $\lim_{x \to \infty} f(x) = 0$, akkor bármely rögzített $x$-re az $x_n = x + np \to \infty$ sorozat mentén $f(x) = f(x_n) \to 0$, tehát $f$ azonosan $0$.





### Számolási technikák és az összetett függvény (kompozíció)

* **$\frac{0}{0}$ típusú racionális kifejezések:** Polinomok hányadosánál a közös $(x-a)^k$ gyöktényező kiemelése és egyszerűsítése vezet célra. Gyökös kifejezéseknél (pl. $\lim_{x \to 1} \frac{\sqrt[359]{x}-1}{\sqrt[5]{x}-1}$) közös kitevőre hozó helyettesítést alkalmazunk ($t = \sqrt[5 \cdot 359]{x}$), majd a $\frac{t^m - 1}{t^n - 1} = \frac{1 + t + \dots + t^{m-1}}{1 + t + \dots + t^{n-1}} \to \frac{m}{n}$ azonosságot használjuk.


* **Végtelenbeli határértékek:** A legmagasabb fokszámú tag kiemelésével számolunk. *Vigyázat:* $\sqrt{x^2} = \vert{}x\vert{}$, ami $x \to -\infty$ esetén $-x$!


* **Kompozíció határértéke (Veszélyforrás!):** Ha $\lim_{x \to a} g(x) = c$ és $\lim_{y \to c} f(y) = d$, akkor $\lim_{x \to a} f(g(x)) = d$ **csak akkor garantált**, ha $f$ folytonos $c$-ben, VAGY $g(x)$ egy pontozott környezetben nem veszi fel a $c$ értéket.


* *Ellenpélda:* $\lim_{x \to 0} R(x) = 0$, de $\lim_{x \to 0} \operatorname{sgn}^2(R(x))$ nem létezik, mert $\operatorname{sgn}^2(R(x))$ éppen a Dirichlet-függvény! Itt a belső függvény végtelen sokszor felveszi a $0$ határértéket (az irracionálisokban), a külső $\operatorname{sgn}^2$ függvény pedig pont a $0$-ban szakad.





---

## 18. Folytonosság egy pontban és halmazon

### Definíció és a szakadások osztályozása

Egy $f$ függvény **folytonos** az $a \in D(f)$ pontban, ha $\forall \varepsilon > 0 \ \exists \delta > 0 \ \forall x \in D(f): \vert{}x - a\vert{} < \delta \implies \vert{}f(x) - f(a)\vert{} < \varepsilon$.

* Ha $a$ torlódási pontja $D(f)$-nek, ez pontosan azt jelenti, hogy **$\lim_{x \to a} f(x) = f(a)$** (a határérték létezik, és megegyezik a helyettesítési értékkel). Izolált pontban minden függvény automatikusan folytonos.


* **Szakadási típusok (ha $f$ nem folytonos $a$-ban):**
1. *Megszüntethető szakadás:* Van véges kétoldali határérték, de az nem egyezik $f(a)$-val. (Pl. a Riemann-függvény minden racionális pontban: a határérték $0$, de az érték $1/q > 0$; az irracionális pontokban viszont folytonos!)


2. *Elsőfajú szakadás (ugrás):* A bal és jobb oldali határérték létezik és véges, de különböznek. (Pl. $\operatorname{sgn}(x)$ a $0$-ban, vagy az egészrész $[x]$ az egész számokban.)


3. *Másodfajú szakadás:* Valamelyik egyoldali határérték nem létezik vagy végtelen. (Pl. $\sin(1/x)$ a $0$-ban, vagy a Dirichlet-függvény mindenhol.)





### Műveletek folytonos függvényekkel

Ha $f$ és $g$ folytonosak $a$-ban, akkor $f \pm g$, $f \cdot g$, $f/g$ (ha $g(a) \neq 0$), valamint $\vert{}f\vert{}$, $\max(f, g)$ és $\min(f, g)$ is folytonosak $a$-ban.

* **Miért folytonos a $\max$ és a $\min$?** Mert $\vert{}f\vert{}$ folytonos a fordított háromszög-egyenlőtlenség ($\vert{}\vert{}f(x)\vert{} - \vert{}f(a)\vert{}\vert{} \le \vert{}f(x) - f(a)\vert{}$) miatt, a maximum és minimum pedig kifejezhető algebrailag az abszolút értékkel:



$$\max(f, g) = \frac{f + g + \vert{}f - g\vert{}}{2}, \qquad \min(f, g) = \frac{f + g - \vert{}f - g\vert{}}{2}.$$


* **Óvatosság a megfordításokkal:**
* Abból, hogy $\vert{}f\vert{}$ folytonos, *nem* következik $f$ folytonossága (pl. $f(x) = 1$, ha $x \ge 0$ és $-1$, ha $x < 0$), kivéve, ha $f(a) = 0$.


* Ha $f$ folytonos és $g$ szakad $a$-ban, akkor $f+g$ biztosan szakad (különben $g = (f+g)-f$ folytonos lenne). Viszont a szorzatuk ($f \cdot g$) **lehet folytonos**, ha $f(a) = 0$ és $g$ korlátos (az $f$ „lenullázza” a szakadást, pl. $x \cdot \operatorname{sgn}(x) = \vert{}x\vert{}$ vagy $x^2[1/x]$ a $0$-ban).




* **Két képlet „összeérése”:** Ha egy függvény a racionálisokon $g(x) = 3x+7$, az irracionálisokon pedig $h(x) = 4x$ szerint van definiálva (ahol $g, h$ folytonosak), akkor a sűrűség miatt pontosan ott lesz folytonos, ahol a két képlet értéke megegyezik: $3x+7 = 4x \iff x = 7$.



### Sűrű halmazok szerepe

* **Egyértelműségi tétel:** Ha két folytonos függvény ($f, g \in C[0, 1]$) megegyezik egy sűrű részhalmazon (például minden racionális pontban), akkor **a teljes intervallumon azonosak**. (Minden valós $x$-hez választható ugyanis $r_n \to x$ racionális sorozat, amelyen $f(x) = \lim f(r_n) = \lim g(r_n) = g(x)$.)



---

## 19. Folytonos függvények zárt intervallumon: Bolzano-tétel és következményei

Amikor egy függvény egy korlátos és zárt $[a, b]$ intervallumon mindenütt folytonos (jelölése: $f \in C[a, b]$), rendkívül erős globális tulajdonságokra tesz szert.

### Bolzano-tétel (Közbülsőérték-tétel) és alkalmazásai

* **Bolzano-tétel:** Ha $f \in C[a, b]$ és a végpontokban ellentétes előjelű ($f(a) \cdot f(b) < 0$), akkor létezik olyan $c \in (a, b)$, ahol $f(c) = 0$.


* **Általános alak (Közbülsőérték-tétel):** Ha $f \in C[a, b]$, akkor $f$ az $f(a)$ és $f(b)$ közötti *minden* értéket felvesz valamely $(a, b)$-beli pontban. A Weierstrass-tétellel (miszerint folytonos függvény zárt intervallumon felveszi a minimumát és maximumát) együtt ez azt jelenti, hogy **$f$ értékkészlete egy zárt intervallum: $R(f) = [\min f, \max f]$**.


* **Klasszikus alkalmazási minták:**
1. *Polinomok gyökei:* Az $x^7 - 3x^2 + 5 = 0$ egyenletnek van valós gyöke a $(-2, -1)$ intervallumban, mert a polinom folytonos, $p(-2) = -135 < 0$ és $p(-1) = 1 > 0$. (Minden páratlan fokú polinomnak van valós gyöke.)


2. *Átlagérték felvétele:* Ha $x_1, \dots, x_n \in [a, b]$, akkor van olyan $c \in [a, b]$, ahol $f(c) = \frac{f(x_1) + \dots + f(x_n)}{n}$, hiszen a számtani közép a legkisebb és a legnagyobb $f(x_i)$ érték közé esik.


3. *Metszéspontok:* Ha $f, g \in C[0, 1]$ és $f(0) > g(0)$, de $f(1) < g(1)$, akkor a $h(x) = f(x) - g(x)$ segédfüggvényre alkalmazott Bolzano-tétel garantálja, hogy van olyan $c \in (0, 1)$, ahol $f(c) = g(c)$.


4. *Egydimenziós Brouwer-féle fixponttétel („A fészkelődő kukac”):* Ha $f: [0, 1] \to [0, 1]$ folytonos (a kukac az intervallumban marad és nem szakad el), akkor biztosan van **fixpontja**, azaz olyan $c \in [0, 1]$, amelyre $f(c) = c$. *Bizonyítás:* A $g(x) = f(x) - x$ függvény folytonos, $g(0) = f(0) \ge 0$ és $g(1) = f(1) - 1 \le 0$, így valahol $0$-t vesz fel.





### Monotonitás, injektivitás és invertálhatóság kapcsolata

A folytonosság és a monotonitás között mély strukturális kapcsolat van intervallumokon:

* **Monoton függvények szakadásai:** Egy monoton függvénynek minden pontban létezik bal és jobb oldali határértéke ($\sup_{x<c} f(x)$, illetve $\inf_{x>c} f(x)$), így **csak ugrásos (elsőfajú) szakadása lehet** (és abból is legfeljebb megszámlálhatóan sok).


* **Mikor folytonos egy monoton függvény?** Ha egy monoton függvénynek ugrása van, akkor az ugrás két értéke közötti intervallumot kihagyja az értékkészletéből. Ezért egy $[a, b]$-n monoton függvény **pontosan akkor folytonos, ha az értékkészlete a teljes $[f(a), f(b)]$ intervallum** (azaz minden közbülső értéket felvesz).


* **Injektivitás $\implies$ szigorú monotonitás:** Ha egy $f \in C[a, b]$ folytonos függvény injektív (minden értéket pontosan egyszer vesz fel), akkor szükségszerűen **szigorúan monoton**. (Ha ugyanis „visszafordulna”, akkor a csúcs közelében a Bolzano-tétel miatt ugyanazt az értéket a csúcs bal és jobb oldalán is felvenné.)


* *Érdekesség:* Olyan $f \in C[a, b]$ függvény **nem létezik**, amely minden értékét pontosan *kétszer* venné fel (a globális maximum és minimum közelében ugyanis kikerülhetetlenül fellépne egy háromszoros felvétel). Ha pedig egy folytonos függvény minden értékét *legfeljebb kétszer* vesz fel, akkor legfeljebb 2 belső lokális szélsőértékhelye lehet, így a grafikonja legfeljebb **három szigorúan monoton szakaszból** áll.




* **Inverz függvény tétele:** Ha $f: [a, b] \to \mathbb{R}$ szigorúan monoton növekvő és folytonos, akkor értékkészlete $[f(a), f(b)]$, létezik az $f^{-1}: [f(a), f(b)] \to [a, b]$ inverz függvény, amely szintén szigorúan monoton növekvő és **folytonos**.



### A Darboux-tulajdonság (Közbülsőérték-tulajdonság folytonosság nélkül)

Egy függvényt **Darboux-tulajdonságúnak** nevezünk egy intervallumon, ha bármely két felvett értéke közötti összes értéket is felveszi a két hely között (azaz intervallum képe intervallum).

* A Bolzano-tétel szerint: **Folytonos $\implies$ Darboux-tulajdonságú**. Monoton függvényeknél a két fogalom ekvivalens.


* Általában azonban **a megfordítás nem igaz**: egy függvény lehet úgy is Darboux-tulajdonságú, hogy közben vadul szakad!


1. *Egyetlen szakadási pont:* Az $f(x) = \sin(1/x)$ ($x \neq 0$), $f(0) = 0$ függvény a $0$-ban másodfajú szakadást szenved, mert végtelenül sűrűn oszcillál $-1$ és $1$ között. Pontosan emiatt az oszcilláció miatt azonban a $0$ bármely kicsiny környezetében *minden* $[-1, 1]$-beli értéket felvesz, így a teljes $\mathbb{R}$-en Darboux-tulajdonságú. (Hasonló okból egy $\lim_{x \to 5+0} f(x) = +\infty$ határértékű folytonos függvény sem feltétlenül monoton az $5$ jobb oldali környezetében: az $f(x) = \frac{1}{x-5}(2 + \sin\frac{1}{x-5})$ végtelenhez tart, miközben végtelen sokszor fel-le hullámzik.)


2. *Sehol sem folytonos, mégis Darboux:* Ha egy $x$ valós szám törtrészét felírjuk kettes számrendszerben ($\{x\} = 0,d_1 d_2 d_3\dots_{(2)}$), és a függvényértéknek a számjegyek átlagának limesz szuperiorját választjuk ($f(x) = \limsup_{n\to\infty} \frac{d_1 + \dots + d_n}{n}$), akkor egy olyan függvényt kapunk, amely **minden nyílt intervallumon minden $[0, 1]$-beli értéket felvesz**. (Hiszen egy kis intervallum csak az első véges sok kettedes jegyet rögzíti, a limsup viszont csak a végtelen sok hátralevő jegytől függ, amelyeket szabadon megválaszthatunk.) Ez a függvény tehát Darboux-tulajdonságú, miközben a számegyenes **egyetlen pontjában sem folytonos**!
