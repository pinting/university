## 1. Függvények globális és lokális tulajdonságai

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

## 2. Konvex és konkáv függvények

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

## 3. Pontrendszerek topológiája: Környezetek és torlódási pontok

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

## 4. Függvényhatárérték

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

## 5. Folytonosság egy pontban és halmazon

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

## 6. Folytonos függvények zárt intervallumon: Bolzano-tétel és következményei

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
