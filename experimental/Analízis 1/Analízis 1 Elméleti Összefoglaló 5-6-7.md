## I. Sorozatok határértéke, szerkezete és becslési technikák

### 1. A bővített számegyenes és a környezetek egységes nyelve

A valós számok halmazát ($\mathbb{R}$) gyakran kiegészítjük két szimbólummal, a $-\infty$ és $+\infty$ elemekkel, így kapjuk a **bővített számegyenest**: $\overline{\mathbb{R}} = \mathbb{R} \cup \{-\infty, +\infty\}$. Ez azért rendkívül hasznos, mert a véges és a végtelen határértékek definícióját egyetlen közös nyelvre, a **környezetek nyelvére** tudjuk lefordítani:

* Egy véges $a \in \mathbb{R}$ szám környezetei az $(a - \varepsilon, a + \varepsilon)$ nyílt intervallumok (ahol $\varepsilon > 0$).


* A $+\infty$ környezetei a $(K, +\infty)$ alakú félegyenesek (tetszőleges $K \in \mathbb{R}$ korlátra).


* A $-\infty$ környezetei a $(-\infty, K)$ alakú félegyenesek.



> **Egységes definíció:** Egy $(a_n)$ sorozat pontosan akkor tart egy $A \in \overline{\mathbb{R}}$ határértékhez ($a_n \to A$), ha $A$ bármely $U$ környezetéhez létezik olyan $N \in \mathbb{N}$ küszöbindex, amelytől kezdve (minden $n \ge N$-re) $a_n \in U$.
> 
> 

**A $-\infty$-hez tartás és tagadása:**
Konkrétan az $\lim_{n\to\infty} a_n = -\infty$ azt jelenti, hogy bármilyen (akár hatalmas negatív) $K \in \mathbb{R}$ számot is adunk meg, van olyan $N \in \mathbb{N}$ index, amelytől kezdve minden $n \ge N$-re $a_n < K$ (ekvivalensen: $-a_n \to +\infty$).

* *Hibalehetőség:* Mivel a $-\infty$ nem valós szám, szigorúan tilos az $\vert{}a_n - (-\infty)\vert{} < \varepsilon$ jelölést használni; mindig a $K$-s definícióval kell dolgozni.


* *Tagadás ($\lim a_n \ne -\infty$):* $\exists K \in \mathbb{R}\ \forall N \in \mathbb{N}\ \exists n \ge N : a_n \ge K$. Szemléletesen ez azt jelenti, hogy van egy olyan $K$ szint, amely fölé (vagy amire) a sorozat még végtelen sokszor visszatér — azaz a sorozatnak van egy **alulról korlátos részsorozata**.


* *Példák:* Az $a_n = (-1)^n n$ sorozat nem tart sem $-\infty$-hez, sem $+\infty$-hez, mert a páros indexű tagok $+\infty$-be, a páratlanok $-\infty$-be tartanak. Továbbá, ha $a_n \to -\infty$, akkor a sorozat felülről korlátos, alulról viszont nem. A megfordítás azonban nem igaz: a $0, -2, 0, -4, 0, -6, \dots$ sorozat felülről korlátos ($0$-val), alulról nem korlátos, mégsem tart $-\infty$-hez, mert végtelen sok $0$ tagja van.



---

### 2. A „majdnem minden” fogalma és a konvergencia

Az analízisben azt mondjuk, hogy egy tulajdonság a sorozat **majdnem minden** tagjára teljesül, ha **csak véges sok kivétellel** minden tagra igaz.

* Ez teljesen ekvivalens azzal a kijelentéssel, hogy **egy bizonyos $N$ indextől kezdve** minden tagra teljesül: ha a kivételes indexek véges halmaza $E$, akkor a küszöbindex egyszerűen $N = \max E + 1$ (üres $E$ esetén $N=1$).


* **Következmény:** Ha egy sorozatból elhagyunk, hozzáveszünk vagy megváltoztatunk véges sok tagot, esetleg a tagokat bijektív indexcserével **átrendezzük**, a „majdnem minden tagra igaz” tulajdonság nem sérül, így a határérték sem változik meg.


* **A $K+1$ trükk:** A definíciókban a szigorú ($<, >$) és a megengedő ($\le, \ge$) egyenlőtlenségek szabadon felcserélhetők. Ha például tudjuk, hogy minden $K$-ra csak véges sok tag kisebb $K$-nál (azaz egy indextől $a_n \ge K$), és nekünk szigorú $a_n > K$ kell a definícióhoz, akkor a feltételt egyszerűen $K+1$-re alkalmazzuk: egy indextől $a_n \ge K+1 > K$.



---

### 3. Konvergens sorozatok szerkezete, szélsőértékei és a szuprémum

Minden konvergens sorozat **korlátos**. Ennek bizonyítása a **„fej + farok” módszer** prototípusa: ha $a_n \to a$, akkor $\varepsilon = 1$-hez van olyan $N$, amelytől kezdve a „farok” tagjaira $|a_n| < |a| + 1$. Az első $N-1$ tag („a fej”) pedig véges sok számból áll, így az egész sorozat abszolút értékben korlátos a $\max\{|a_1|, \dots, |a_{N-1}|, |a| + 1\}$ számmal.

Ennél azonban sokkal élesebb állítás is igaz: **egy konvergens sorozatnak mindig van legnagyobb vagy legkisebb tagja** (felveszi a maximumát vagy a minimumát).

* Ha a sorozat állandó ($a_n = a$), akkor minden tag egyszerre minimum és maximum.


* Ha van olyan $a_m$ tag, amely nagyobb a határértéknél ($a_m > a$), akkor $\varepsilon = a_m - a > 0$ választással egy $N$ indextől kezdve minden tag kisebb lesz $a + \varepsilon = a_m$-nél. Így a sorozat maximumát elég a véges $\{a_1, \dots, a_{N-1}\}$ halmazban megkeresni. Szimmetrikusan, ha $a_m < a$ fordul elő, akkor minimum létezik.


* *Példák:* Az $a_n = \frac{1}{n}$ sorozatnak van maximuma ($1$), de nincs minimuma (az infimuma $0$, ami a határérték, de sosem éri el). Az $a_n = \frac{(-1)^n}{n}$ sorozatnak maximuma ($\frac{1}{2}$) és minimuma ($-1$) is van.


* **Tanulság:** Ha egy korlátos sorozatnak **sem maximuma, sem minimuma nincs**, az biztosan **divergens**. Klasszikus példa erre az $a_n = (-1)^n\left(1 - \frac{1}{n}\right)$, amelynek páros tagjai alulról tartanak $1$-hez (de sosem érik el, így nincs maximum), páratlan tagjai pedig felülről tartanak $-1$-hez (így nincs minimum).



**A szuprémum sorozatos jellemzése és a torlódási pont:**
Egy felülről korlátos, nem üres $A \subset \mathbb{R}$ halmazra $\alpha = \sup A$ pontosan akkor teljesül, ha $\alpha$ felső korlát, és létezik olyan $a_n \in A$ sorozat, amelyre $a_n \to \alpha$.

* Ha a szuprémum nincs a halmazban ($\alpha \notin A$), akkor konstruálható **szigorúan monoton növekedő** $a_n \in A$ sorozat is, amely $\alpha$-hoz tart. A trükk a rekurzív kiválasztásnál a $c_n = \max\left\{a_n, \alpha - \frac{1}{n}\right\} < \alpha$ segédszám használata: mivel $c_n$ kisebb a szuprémumnál, van nála nagyobb $a_{n+1} \in A$ elem, ami így egyszerre biztosítja a szigorú növekedést ($a_{n+1} > a_n$) és a rendőrelvvel a konvergenciát ($\alpha - \frac{1}{n} < a_{n+1} < \alpha$).


* Ha $\alpha \in A$, ez már nem feltétlenül igaz: ha $\alpha$ **izolált pont** (pl. $A = \{0\}$ vagy $A = [0, 1] \cup \{2\}$-nél a $2$), nem lehet hozzá alulról szigorúan növekedve közelíteni. Ha viszont $\alpha$ bal oldali **torlódási pont** (minden környezetében végtelen sok $A$-beli elem van, pl. $A = [0, 1]$-nél az $1$), akkor az állítás igaz marad ($a_n = 1 - \frac{1}{n}$).



---

### 4. Határérték-számítási eszköztár és kritikus típusok

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

### 5. Cauchy-kritérium, kontrakció és rekurzív sorozatok

* **Cauchy-kritérium:** Egy valós sorozat pontosan akkor konvergens, ha Cauchy-sorozat, vagyis $\forall \varepsilon > 0$-hoz $\exists N \in \mathbb{N}$, hogy minden $m > n \ge N$ esetén $\vert{}a_m - a_n\vert{} < \varepsilon$. Ez a tétel $\mathbb{R}$ teljességén alapul ($\mathbb{Q}$-ban nem igaz, pl. a $\sqrt{2}$ közelítő tizedes törtjeire).


* **Teleszkopikus becslés és kontrakció:** Ha például $\vert{}a_{n+1} - a_n\vert{} \le 2^{-n}$ minden $n$-re, akkor $m > n$ esetén a háromszög-egyenlőtlenséggel és a mértani sor összegképletével:



$$|a_m - a_n| \le \sum_{k=n}^{m-1} |a_{k+1} - a_k| \le \sum_{k=n}^{m-1} 2^{-k} < \sum_{k=n}^{\infty} 2^{-k} = 2^{1-n} \to 0.$$



Így $(a_n)$ Cauchy-sorozat, tehát konvergens. Általában: ha $|a_{n+1} - a_n| \le q|a_n - a_{n-1}|$ valamely $0 \le q < 1$-re (**kontrakció**, a Banach-féle fixponttétel alapja), vagy ha $\sum |a_{k+1} - a_k| < \infty$ (abszolút konvergencia), a sorozat biztosan konvergens.



**Rekurzív sorozatok ($a_{n+1} = g(a_n)$) vizsgálatának receptje:**

1. **Fixpontok megkeresése:** Megoldjuk az $x = g(x)$ egyenletet. Ha $g$ folytonos, csak ezek lehetnek a határértékek (hiszen $a_n \to A \implies g(a_n) \to g(A)$).


2. **Korlátosság (invariáns intervallum):** Teljes indukcióval megmutatjuk, hogy a sorozat tagjai egy két fixpont közötti intervallumban maradnak.


3. **Monotonitás:** Vizsgáljuk a $g(x) - x$ előjelét az invariáns intervallumon (ha $>0$, a sorozat nő; ha $<0$, csökken), vagy ha $g$ monoton növő függvény, akkor az $a_1 < a_2$ relációból indukcióval azonnal adódik az $a_n < a_{n+1}$ növekedés.


4. **Konvergencia:** Monoton és korlátos sorozat konvergens; a korlátok alapján kiválasztjuk, melyik fixponthoz tart (a $|g'(A)| < 1$ feltételű **vonzó fixponthoz** fog tartani, míg $|g'(A)| > 1$ esetén a fixpont **taszító**).



* *Példa:* $a_1 = 1$, $a_{n+1} = \sqrt{2a_n}$. Fixpontok: $x = \sqrt{2x} \implies 0$ és $2$. Indukcióval $1 \le a_n < 2$, és $a_{n+1} - a_n = \sqrt{a_n}(\sqrt{2} - \sqrt{a_n}) > 0$, így szigorúan nő és korlátos, tehát $a_n \to 2$.



---

## II. Halmazok számossága: Megszámlálhatóság és Kontinuum

### 1. Megszámlálható halmazok és a Gödel-számozás

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

### 2. Kontinuum számosság, Schröder–Bernstein-tétel és a Hilbert-szálloda

* **Cantor tétele:** A valós számok $\mathbb{R}$ halmaza **nem megszámlálható** (bizonyítható Cantor átlós eljárásával vagy egymásba skatulyázott zárt intervallumokkal). Általánosabban is igaz Cantor tétele: bármely $A$ halmaz hatványhalmazára (összes részhalmazainak $\mathcal{P}(A)$ halmazára) $\vert{}\mathcal{P}(A)\vert{} > \vert{}A\vert{}$ (a $D = \{a \in A : a \notin f(a)\}$ átlós halmaz sosem áll elő $f(d)$ alakban). Az $\mathbb{R}$-rel ekvivalens halmazokat nevezzük **kontinuum számosságúnak**.


* **Következmény:** Mivel $\mathbb{R}$ kontinuum, az algebrai számok viszont csak megszámlálhatóan sokan vannak, **léteznek transzcendens számok**, sőt a valós számok túlnyomó többsége transzcendens (konkrét példák: $\pi$, $e$, Liouville-szám: $\sum 10^{-k!}$).


* **Schröder–Bernstein-tétel:** Ha létezik $A \to B$ injekció és $B \to A$ injekció, akkor létezik $A \to B$ bijekció is ($A \sim B$).


* *Példa ($\mathcal{P}(\mathbb{N}) \sim \mathbb{R}$):*
1. $\mathcal{P}(\mathbb{N}) \hookrightarrow \mathbb{R}$ injekció: egy $A \subseteq \mathbb{N}$ részhalmazhoz rendeljük a $\sum_{n \in A} 10^{-n}$ tizedes törtet (amelynek jegyei csak $0$-k és $1$-esek, így nincs a $0{,}0999\dots = 0{,}1000\dots$ típusú egyértelműségi probléma).


2. $\mathbb{R} \hookrightarrow \mathcal{P}(\mathbb{Q}) \sim \mathcal{P}(\mathbb{N})$ injekció: a **Dedekind-szelet**, $x \mapsto \{q \in \mathbb{Q} : q < x\}$ (a racionálisok sűrűsége miatt két különböző valós szám között mindig van racionális, így a halmazok különböznek).






* **Hilbert-szálloda ($\mathbb{R} \setminus \mathbb{Q} \sim \mathbb{R}$):** Ha egy végtelen $X$ halmazhoz hozzáveszünk (vagy elhagyunk belőle) egy megszámlálható $C$ halmazt (és a maradék még végtelen), a számosság nem változik. Az irracionális számok és $\mathbb{R}$ közti bijekcióhoz kiválasztunk egy megszámlálható irracionális sorozatot, pl. $s_n = \sqrt{2} + n$, és a racionális $q_n$ számokat az $s_{2n}$, míg az eredeti $s_n$ számokat az $s_{2n-1}$ helyekre költöztetjük; minden más irracionális szám helyben marad.



---

### 3. A végtelen skatulyaelv (A diszjunkt „T”-betűk problémája)

> **Végtelen skatulyaelv:** Ha egy nem megszámlálható halmazt megszámlálható sok részre bontunk, akkor legalább az egyik részhalmaz maga is nem megszámlálható.
> 
> 

* **Racionális számokra tudunk diszjunkt T-betűket állítani a síkon:** Mivel $\mathbb{Q} = \{q_1, q_2, \dots\}$ megszámlálható, lépésről lépésre (rekurzívan) építkezhetünk. A $q_n$ pontra állított T magassága legyen $h_n = \frac{1}{n}$ (egyre alacsonyabbak, így a korábbi kalapok magasan fölötte mennek el), a kalapjának félszélessége pedig legyen kisebb, mint a $q_n$ és az összes korábbi (véges sok!) $q_1, \dots, q_{n-1}$ pont távolságának minimumának a fele. Így a szárak és kalapok sosem ütköznek.


* **Irracionális számokra NEM tudunk:** Indirekt tegyük fel, hogy minden $x \in \mathbb{R} \setminus \mathbb{Q}$ ponton áll egy $h_x$ magas, $w_x$ félszélességű T. Bontsuk fel az irracionálisokat a kalapszélesség szerint: $\mathbb{R} \setminus \mathbb{Q} = \bigcup_{n=1}^\infty \{x : w_x \ge \frac{1}{n}\}$. A végtelen skatulyaelv miatt van olyan $n$, amelyre a $H_n = \{x : w_x \ge \frac{1}{n}\}$ halmaz nem megszámlálható. Ha most a számegyenest felosztjuk megszámlálható sok $\left[\frac{k}{n}, \frac{k+1}{n}\right)$ intervallumra, egy újabb skatulyaelv miatt valamelyik $\frac{1}{n}$ hosszú intervallumba $H_n$-nek legalább két pontja ($x < y$) esik. Ezek távolsága $< \frac{1}{n}$, miközben mindkettő kalapja legalább $\frac{1}{n}$ széles — tehát az alacsonyabbik T kalapja elkerülhetetlenül beleütközik a magasabbik T szárába!



---

## III. Sűrűsödési értékek, $\liminf$, $\limsup$ és végtelen sorok

### 1. Részsorozatok, sűrűsödési értékek és a farkak határértéke

* **Sűrűsödési érték:** Egy $s \in \overline{\mathbb{R}}$ érték az $(a_n)$ sorozat sűrűsödési értéke, ha létezik olyan $a_{n_k}$ **részsorozat** ($n_1 < n_2 < \dots$), amely $s$-hez tart; ekvivalensen: $s$ minden környezetében a sorozatnak **végtelen sok** tagja van. (Figyeljük meg a különbséget: a határérték környezetében *majdnem minden* tag, a sűrűsödési érték környezetében *végtelen sok* tag van.)


* **Bolzano–Weierstrass-tétel:** Minden korlátos sorozatnak van konvergens részsorozata (tehát van véges sűrűsödési értéke). A sűrűsödési értékek $S$ halmaza mindig zárt, és akár egy teljes intervallum is lehet (pl. a $(0,1)$-beli törtek $\frac{1}{2}, \frac{1}{3}, \frac{2}{3}, \frac{1}{4}, \frac{2}{4}, \frac{3}{4}, \dots$ felsorolásánál vagy a $\sin n$ sorozatnál).



**A $\limsup$ és $\liminf$ három ekvivalens arcus-definíciója:**

1. **A sűrűsödési értékek szélsőértékei:** $\limsup_{n\to\infty} a_n = \max S$ (a legnagyobb sűrűsödési érték) és $\liminf_{n\to\infty} a_n = \min S$ (a legkisebb sűrűsödési érték).


2. **A „farkak” szuprémuma és infimuma:** Tekintsük a sorozat $n$-edik farkát: $\{a_k : k \ge n\}$. Ennek szuprémuma $M_n = \sup_{k \ge n} a_k$ (ahogy $n$ nő, a halmaz szűkül, így $M_n$ **monoton fogyó** sorozat!), infimuma pedig $m_n = \inf_{k \ge n} a_k$ (**monoton növő** sorozat). Ekkor:



$$\limsup_{n\to\infty} a_n = \lim_{n\to\infty} M_n = \inf_{n \in \mathbb{N}} \sup_{k \ge n} a_k, \qquad \liminf_{n\to\infty} a_n = \lim_{n\to\infty} m_n = \sup_{n \in \mathbb{N}} \inf_{k \ge n} a_k.$$



*Nagy előny:* Mivel monoton sorozatnak $\overline{\mathbb{R}}$-ben mindig van határértéke, a $\liminf$ és $\limsup$ **minden sorozatra létezik**!


3. **$\varepsilon$-os („aszimptotikus szuprémum”) jellemzés:** Véges $a \in \mathbb{R}$ esetén $\limsup a_n = a$ pontosan akkor, ha minden $\varepsilon > 0$-ra:


* $a_n > a + \varepsilon$ csak **véges sok** $n$-re teljesül (majdnem minden tag $\le a + \varepsilon$), ÉS


* $a_n > a - \varepsilon$ **végtelen sok** $n$-re teljesül.





**Alapvető tételek és tulajdonságok:**

* **Konvergencia jellemzése:** $a_n \to a \in \overline{\mathbb{R}} \iff \liminf_{n\to\infty} a_n = \limsup_{n\to\infty} a_n = a$ (azonnal adódik az $m_n \le a_n \le M_n$ rendőrelvből).


* **Gyakorlati számolás periódusos bontással:** Ha az indexeket maradékosztályok szerint véges sok részsorozatra bontjuk (pl. páros és páratlan, vagy $n \bmod 4$ szerint), és mindegyik konvergens, akkor a sűrűsödési értékek halmaza pontosan e részsorozatok határértékeinek halmaza. Például $b_n = 1 + 2(-1)^{n+1} + (-1)^{n(n-1)/2}$ esetén az $n \bmod 4 = 1, 2, 3, 0$ osztályokon a sorozat rendre állandó $4, -2, 2, 0$, így $\liminf b_n = -2$ és $\limsup b_n = 4$.


* **Műveleti egyenlőtlenségek (Szuper- és szubadditivitás):** A $\liminf$ és $\limsup$ nem lineáris (nem vihető be tagonként az összegbe), mert a két sorozat kiugró értékei elkerülhetik egymást. Korlátos sorozatokra a teljes lánc:



$$\liminf x_n + \liminf y_n \le \liminf(x_n + y_n) \le \liminf x_n + \limsup y_n \le \limsup(x_n + y_n) \le \limsup x_n + \limsup y_n.$$



*Példa szigorú egyenlőtlenségre:* Ha $x_n = (-1)^n$ és $y_n = (-1)^{n+1}$ (ellenütemben oszcillálnak), akkor $x_n + y_n = 0$, így $\liminf x_n + \liminf y_n = -1 + (-1) = -2 < 0 = \liminf(x_n + y_n)$. Ha viszont az egyik sorozat ($y_n \to y$) konvergens, akkor egyenlőség áll: $\limsup(x_n + y_n) = \limsup x_n + y$.



---

### 2. Végtelen sorok: mértani és teleszkopikus sorok

Egy $\sum_{n=1}^\infty a_n$ végtelen sor alatt az $S_N = \sum_{n=1}^N a_n$ **részletösszegek** sorozatát értjük; a sor konvergens, ha $(S_N)$ konvergens, és összege $\lim_{N\to\infty} S_N$.

* **Szükséges feltétel:** Ha $\sum a_n$ konvergens, akkor $a_n = S_n - S_{n-1} \to 0$. Ez azonban **nem elégséges**: a $\sum_{n=1}^\infty \frac{1}{n}$ **harmonikus sor** tagjai $0$-hoz tartanak, a sor mégis divergens ($\sum \frac{1}{n} = \infty$).


* **Mértani sor:** $\vert{}q\vert{} < 1$ esetén konvergens (különben divergens), és bármely $k$ kezdőindextől az összegképlet:



$$\sum_{n=k}^\infty c \cdot q^n = \frac{c \cdot q^k}{1 - q} = \frac{\text{első tag}}{1 - \text{hányados}}.$$



Például: $\sum_{n=2}^\infty \frac{7 \cdot 2^n}{3^{n-1}} = \sum_{n=2}^\infty 21\left(\frac{2}{3}\right)^n = \frac{21 \cdot (2/3)^2}{1 - 2/3} = 28$.


* **Teleszkopikus sorok és parciális törtekre bontás:** Ha az általános tag felírható $a_n = b_n - b_{n+1}$ alakban, akkor a részletösszegben a belső tagok kiesnek: $S_N = (b_1 - b_2) + (b_2 - b_3) + \dots + (b_N - b_{N+1}) = b_1 - b_{N+1}$.


* *Példa:* $\sum_{n=1}^\infty \frac{1}{(3n-2)(3n+1)}$. Parciális törtekre bontva: $\frac{1}{(3n-2)(3n+1)} = \frac{1}{3}\left(\frac{1}{3n-2} - \frac{1}{3n+1}\right)$. Így $S_N = \frac{1}{3}\left(1 - \frac{1}{3N+1}\right) \to \frac{1}{3}$.





---

## IV. Valós függvények tulajdonságai és vizsgálata

### 1. Egészrész, törtrész és összetett függvények szakaszonkénti elemzése

* **Egészrész ($[x]$):** A legnagyobb $x$-nél nem nagyobb egész szám ($[x] \le x < [x] + 1$; vigyázat negatívokra: $[-2{,}3] = -3$).


* **Törtrész ($\{x\}$):** $\{x\} = x - [x] \in [0, 1)$, amely $1$ szerint periodikus függvény.



**Hogyan vizsgálunk $\left\{\frac{1}{x}\right\}$ és $x\left[\frac{1}{x}\right]$ típusú függvényeket?**
Olyan intervallumokra bontjuk a számegyenest, amelyeken a belső $\frac{1}{x}$ kifejezés egészrésze állandó:

* Pozitív $x$-re $k \le \frac{1}{x} < k+1 \iff \frac{1}{k+1} < x \le \frac{1}{k}$ ($k \in \mathbb{N}^+$).


* Egy ilyen $\left(\frac{1}{k+1}, \frac{1}{k}\right]$ intervallumon $\left[\frac{1}{x}\right] = k$ állandó!


1. Az $f(x) = \left\{\frac{1}{x}\right\} = \frac{1}{x} - k$ függvény minden ilyen szakaszon egy $0$-tól $1$-ig ívelő hiperbola-darab. Ahogy $x \to 0$, a szakaszok összesűrűsödnek, a függvény végtelen sokszor befutja a $[0, 1)$ intervallumot, így **$0$-ban nincs határértéke**.


2. A $g(x) = x\left[\frac{1}{x}\right] = kx$ függvény minden ilyen szakaszon egy origón átmenő egyenes darabja, amely $\frac{k}{k+1}$-től $1$-ig emelkedik. Mivel $x\left[\frac{1}{x}\right] = x\left(\frac{1}{x} - \left\{\frac{1}{x}\right\}\right) = 1 - x\left\{\frac{1}{x}\right\}$, és $0 \le \left\{\frac{1}{x}\right\} < 1$, a rendőrelv miatt $|x[1/x] - 1| < |x| \to 0$, tehát **$\lim_{x\to 0} x\left[\frac{1}{x}\right] = 1$**.





---

### 2. Korlátosság, szélsőértékek és monotonitás

* **Korlátosság vs. Maximum (Weierstrass-tétel):** Egy függvénynek attól, hogy korlátos egy zárt $[0, 1]$ intervallumon, még nem biztos, hogy van legnagyobb értéke (maximuma). Például ha $f(x) = x$ a $[0, 1)$-en és $f(1) = 0$, akkor $\sup f = 1$, de az $1$ értéket sosem veszi fel. A **Weierstrass-tétel** garantálja, hogy ha $f$ **folytonos** egy **korlátos és zárt** $[a, b]$ intervallumon, akkor korlátos és fel is veszi a minimumát és maximumát (ha bármelyik feltétel a háromból hiányzik, az állítás elbukhat).


* **Monoton függvények értékkészlete és ugrásai:** Ha $f : [a, b] \to \mathbb{R}$ monoton növő, akkor $f(a) = \min R(f)$ és $f(b) = \max R(f)$ — tehát az értékkészletének **kötelezően van minimuma és maximuma** (ezért pl. $R(f) = (0, 1)$ lehetetlen).


* Monoton függvénynek minden pontban létezik bal és jobb oldali határértéke ($f(x_0-0) \le f(x_0) \le f(x_0+0)$), így szakadásai csak **ugrások** lehetnek, amelyek diszjunkt hézagokat hagynak az értékkészletben (ezért legfeljebb megszámlálható sok szakadása lehet).


* Ha az értékkészlet két szétválasztott darabból áll, az ősképek két részintervallumra bontják $[0, 1]$-et. Az elválasztó $a \in [0, 1]$ határpont vagy az alsó részhez tartozik (ekkor az alsó értékkészlet-darabnak kell legyen maximuma, mint $R(f) = [0, 1] \cup [2, 3]$ esetén), vagy a felsőhöz (ekkor a felső darabnak kell legyen minimuma, mint $R(f) = [0, 1) \cup [2, 3]$ esetén). Ezért $R(f) = [0, 1) \cup (2, 3]$ monoton függvénnyel **lehetetlen**, mert középen sem az alsó résznek nincs maximuma, sem a felsőnek minimuma!





---

### 3. Inverz függvény és paritás (páros/páratlan felbontás)

* **Inverz és törtlineáris függvények:** Egy $f : A \to B$ bijekció inverzét az $y = f(x)$ egyenlet $x$-re való megoldásával kapjuk meg. A $f(x) = \frac{ax+b}{cx+d}$ ($ad-bc \ne 0$) törtlineáris függvények inverze $f^{-1}(y) = \frac{dy-b}{-cy+a}$. Speciálisan, ha $a = -d$ (mint $f(x) = \frac{2x-3}{3x-2}$ esetén), akkor $f^{-1}(x) = f(x)$, azaz a függvény **önmaga inverze (involúció)**, grafikonja szimmetrikus az $y = x$ egyenesre.


* **Páros ($f(-x) = f(x)$) és páratlan ($g(-x) = -g(x)$) függvények:**
* *Szorzás:* Követi az előjelszabályt ($+1$ = páros, $-1$ = páratlan): páros $\cdot$ páratlan = páratlan; páratlan $\cdot$ páratlan = páros.


* *Kompozíció ($f \circ g$):* Ha a belső függvény páros, az összetett függvény **mindig páros**; ha mindkettő páratlan, a kompozíció páratlan.


* *Egyértelmű felbontási tétel:* Az egyetlen függvény, amely egyszerre páros és páratlan, az azonosan nulla függvény ($f(x) = 0$). Bármely $f : \mathbb{R} \to \mathbb{R}$ függvény **egyértelműen** felbomlik egy páros és egy páratlan függvény összegére (lineáris algebrailag direkt összeg):



$$f(x) = \underbrace{\frac{f(x) + f(-x)}{2}}_{\text{páros rész}} + \underbrace{\frac{f(x) - f(-x)}{2}}_{\text{páratlan rész}}.$$



(Nevezetes példa: $e^x = \cosh x + \sinh x$.)





---

### 4. Patologikus függvények: sűrű szinthalmazok és a Darboux-tulajdonság

Az analízis végén megismerkedünk olyan „extrém” függvényekkel, amelyek minden mégoly kicsiny $(a, b)$ nyílt intervallumon felvesznek minden egész, minden racionális, vagy akár **minden valós értéket**.

* **A kulcsgondolat:** Egy $f$ függvény akkor vesz fel minden $(a, b)$ intervallumon minden $c$ értéket, ha minden $c$-re az $f^{-1}(c)$ őskép (szinthalmaz) **sűrű** $\mathbb{R}$-ben. Ehhez a számegyenest páronként diszjunkt, sűrű halmazokra kell felbontanunk:


1. *Megszámlálható sok értékhez ($\mathbb{Z}$ vagy $\mathbb{Q}$):* A pontosan $\pi_j$ ($j$-edik prím) nevezőjű egyszerűsíthetetlen törtek halmazai diszjunktak, és elég nagy prímekre minden intervallumba beleesnek.


2. *Kontinuum sok értékhez ($\mathbb{R}$):* Definiáljuk az $x \sim y \iff x - y \in \mathbb{Q}$ ekvivalenciarelációt. Az $x + \mathbb{Q}$ ekvivalenciaosztályok páronként diszjunktak, mindegyik sűrű $\mathbb{R}$-ben, és mivel egy osztály csak megszámlálható, **kontinuum sok osztály van**. Egy osztályok és $\mathbb{R}$ közötti $\Phi$ bijekcióval az $f(x) = \Phi(x + \mathbb{Q})$ függvény minden nyílt intervallumon minden valós értéket felvesz!




* **Elméleti jelentőség:** Ez a függvény teljesíti a **Darboux-tulajdonságot** (minden intervallumon felvesz minden közbülső értéket két felvett értéke között), miközben **egyetlen pontban sem folytonos** — ez bizonyítja, hogy a közbülsőérték-tulajdonság önmagában sokkal gyengébb a folytonosságnál.



---

## V. Összefoglaló áttekintő táblázat (Puskázó az Évfolyam- és Röpzh-ra)

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
