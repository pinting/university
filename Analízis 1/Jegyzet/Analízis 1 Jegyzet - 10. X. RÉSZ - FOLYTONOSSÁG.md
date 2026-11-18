# X. RÉSZ: FOLYTONOSSÁG

## 52. A folytonosság fogalma

Az eddigiekben a határérték független volt attól, hogy a függvény az adott pontban milyen értéket vesz fel. A folytonosság éppen azt követeli meg, hogy a kettő **megegyezzék**.

**Definíció.** Az $f$ függvény **folytonos** az $a \in \mathbb{R}$ helyen, ha
$$\lim_{x\to a} f(x) = f(a).$$

Ez ekvivalensen így is kimondható: $f$ értelmezve van $a$ egy környezetében, és minden $\varepsilon > 0$-hoz létezik $\delta > 0$ úgy, hogy minden $x \in B(a,\delta)$ esetén
$$|f(x) - f(a)| < \varepsilon.$$
Figyeljük meg, hogy itt már **nem pontozott** környezet szerepel — hiszen $x = a$ esetén az egyenlőtlenség triviálisan teljesül.

**Definíció (leszűkített folytonosság).** Ha $a \in A \subset D(f)$ és $a$ az $A$ torlódási pontja, akkor $f$ **folytonos $a$-ban $A$-ra szorítkozva**, ha $\lim_{\substack{x\to a \\ x\in A}} f(x) = f(a)$.

**Definíció (féloldali folytonosság).** Az $f$ **jobbról folytonos** $a$-ban, ha $\lim_{x\to a+0} f(x) = f(a)$; **balról folytonos**, ha $\lim_{x\to a-0} f(x) = f(a)$.

**Tétel.** $f$ folytonos $a$-ban $\iff$ $f$ jobbról is és balról is folytonos $a$-ban.

**Definíció (folytonosság intervallumon).** Az $f$ **folytonos az $(\alpha,\beta)$ nyílt intervallumon**, ha annak minden pontjában folytonos; itt $\alpha$ lehet $-\infty$ vagy valós szám, $\beta$ pedig valós szám vagy $+\infty$. Jelölése: $f \in C(\alpha,\beta)$.

Az $f$ **folytonos az $[a,b]$ zárt intervallumon**, ha $a$-ban jobbról, $b$-ben balról, és $(a,b)$ minden pontjában folytonos. Jelölése: $f \in C[a,b]$.

A végpontokban tett megkülönböztetés nem pedantéria: enélkül a definíció értelmetlen lenne, hiszen $a$-tól balra a függvény nincs is értelmezve.

**Példák.**

- Az $f(x) = c$ állandó függvény folytonos $\mathbb{R}$-en.
- A Dirichlet-függvény **sehol sem** folytonos.
- Az $f(x) = [x]$ egészrész-függvény folytonos a $\left[0, \frac{1}{2}\right]$ intervallumon, de **nem** folytonos a $[0,1]$ intervallumon: az $1$-ben balról a határérték $0$, az érték viszont $1$ — a függvény „szakad".

## 53. Műveletek és folytonosság

A határértékre vonatkozó tételekből azonnal adódik:

**Tétel.** Ha $f$ és $g$ folytonos az $a \in \mathbb{R}$ pontban, akkor $f + g$ és $f \cdot g$ is az; továbbá ha $g(a) \neq 0$, akkor $\frac{f}{g}$ is folytonos $a$-ban.

**Következmény.** Mivel az állandó függvény és az $x \mapsto x$ függvény folytonos, a szorzat- és összegszabályból következik, hogy **minden polinom folytonos** $\mathbb{R}$-en, és a hányadosszabályból, hogy **minden racionális törtfüggvény folytonos az értelmezési tartománya minden pontjában**.

**Tétel (az egyenlőtlenség öröklődése).** Ha
$$\lim_{\substack{x\to\alpha \\ x\in A}} f(x) = b < c = \lim_{\substack{x\to\alpha \\ x\in A}} g(x),$$
akkor létezik az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U} \cap A$ esetén $f(x) < g(x)$.

(A bizonyítás az $\varepsilon = \frac{c-b}{2}$ választással megy: a két függvényérték egy-egy diszjunkt sávba szorul.)

**Tétel.** Ha létezik $\lim_{x\to\alpha} f(x) = b$ és $\lim_{x\to\alpha} g(x) = c$, továbbá van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, amelyben $f(x) \le g(x)$, akkor $b \le c$.

*Bizonyítás.* Legyen $x_n \in \dot{U}$, $x_n \to \alpha$. Ekkor $f(x_n) \le g(x_n)$ minden $n$-re, és a két oldal rendre $b$-hez, illetve $c$-hez tart; a sorozatokra vonatkozó rendezési tétel szerint $b \le c$. $\blacksquare$

**Következmények (előjeltartás).**

- Ha $f$ folytonos $a$-ban és $f(a) > 0$, akkor létezik $\delta > 0$ úgy, hogy minden $x \in B(a,\delta)$ esetén $f(x) > 0$.
- Ha létezik $\delta > 0$, amelyre minden $x \in \dot{B}(a,\delta)$-ra $f(x) \ge 0$, akkor $f(a) \ge 0$.

Figyeljük meg az aszimmetriát: a **szigorú** pozitivitás átöröklődik egy környezetre, de a határátmenet során csak a **gyenge** egyenlőtlenség marad meg.

**Tétel (átviteli elv a folytonosságra).** Tegyük fel, hogy $f$ értelmezett az $a \in \mathbb{R}$ egy környezetében. Ekkor
$$f \ \text{folytonos } a\text{-ban} \iff \text{minden } a_n \to a \ \text{sorozatra } f(a_n) \to f(a).$$

**Következmény: ha $f$ folytonos, akkor a $\lim$ és az $f$ felcserélhető.** Például
$$\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)^3 = \left(\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)\right)^3 = 2^3 = 8.$$
**De vigyázat, ha a függvény nem folytonos!**
$$\lim_{n\to\infty}\left\{1 - \frac{1}{n}\right\} = 1, \qquad \text{miközben} \qquad \left\{\lim_{n\to\infty}\left(1 - \frac{1}{n}\right)\right\} = \{1\} = 0.$$

**Tétel (folytonosság és kompozíció).** Ha $\lim_{x\to\alpha} g(x) = b$ és $f$ folytonos $b$-ben, akkor
$$\lim_{x\to\alpha} f(g(x)) = f(b) \qquad (\alpha = a-0,\ a,\ a+0).$$

**Következmény.** Ha $g$ folytonos $a$-ban és $f$ folytonos $g(a)$-ban, akkor $f \circ g$ folytonos $a$-ban.

## 54. Korlátos zárt intervallumon folytonos függvények

Most következik az elmélet három gyöngyszeme. Mindhárom lényegesen használja azt, hogy az intervallum **korlátos és zárt** — ha bármelyik feltételt elhagyjuk, az állítás megdől.

**Tétel (korlátosság).** Ha $f \in C[a,b]$, akkor $f$ korlátos $[a,b]$-n.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $f$ nem korlátos. Ekkor minden $n \in \mathbb{N}$-hez létezik $x_n \in [a,b]$, amelyre
$$|f(x_n)| > n.$$
Az $(x_n)$ sorozat korlátos (hiszen $[a,b]$-ben halad), tehát a Bolzano–Weierstrass-tétel szerint van konvergens részsorozata: $x_{n_k} \to c \in [a,b]$. (A határérték azért marad $[a,b]$-ben, mert a zárt intervallum a rendezési tétel szerint „megőrzi" a határértéket.) Mivel $f \in C[a,b]$, az átviteli elv szerint
$$f(x_{n_k}) \to f(c) \in \mathbb{R},$$
tehát az $(f(x_{n_k}))$ sorozat konvergens, így korlátos. Ez ellentmond annak, hogy $|f(x_{n_k})| > n_k \to \infty$. $\blacksquare$

**Tétel (Weierstrass tétele).** Ha $f \in C[a,b]$, akkor $f$-nek van maximuma és minimuma $[a,b]$-n, azaz létezik olyan hely, ahol a szuprémumot, illetve az infimumot **fel is veszi**.

*Bizonyítás.* Az előző tétel szerint $f$ korlátos, tehát $M = \sup R(f) \in \mathbb{R}$ létezik. Indirekt tegyük fel, hogy $f$ sehol sem veszi fel $M$-et, azaz minden $x \in [a,b]$-re $f(x) < M$. Ekkor a
$$g(x) \stackrel{\text{def}}{=} \frac{1}{M - f(x)}$$
függvény jól definiált (a nevező sehol sem nulla), és folytonos $[a,b]$-n, hiszen folytonos függvények hányadosa. Az előző tétel szerint tehát $g$ korlátos: létezik $K > 0$, amellyel minden $x$-re $|g(x)| \le K$, azaz
$$\frac{1}{M - f(x)} \le K \implies M - f(x) \ge \frac{1}{K} \implies f(x) \le M - \frac{1}{K}.$$
Eszerint $M - \frac{1}{K}$ felső korlátja $R(f)$-nek, holott $M$ a **legkisebb** felső korlát és $M - \frac{1}{K} < M$. Ellentmondás. A minimum esete $-f$-re alkalmazva adódik. $\blacksquare$

**Tétel (Bolzano–Darboux, közbenső érték tétele).** Ha $f \in C[a,b]$, akkor $f$ felvesz minden $f(a)$ és $f(b)$ közötti $c$ értéket.

*Bizonyítás.* Tegyük fel, hogy $f(a) < f(b)$ és $f(a) < c < f(b)$ (a másik eset hasonló). Legyen
$$H \stackrel{\text{def}}{=} \{x \in [a,b] : f(x) \le c\}.$$
Ez nem üres ($a \in H$, hiszen $f(a) < c$), és felülről korlátos ($b$ felső korlát). Legyen
$$\gamma \stackrel{\text{def}}{=} \sup H.$$

*Először:* $f(\gamma) \le c$. Valóban, minden $n \in \mathbb{N}$-re — mivel $\gamma$ a legkisebb felső korlát — létezik $x_n \in \left[\gamma - \frac{1}{n}, \gamma\right] \cap [a,b]$ úgy, hogy $f(x_n) \le c$. Ekkor $x_n \to \gamma$, és $f$ folytonossága miatt $f(x_n) \to f(\gamma)$, tehát $f(\gamma) \le c$. Speciálisan $f(\gamma) \le c < f(b)$, amiből $\gamma \neq b$.

*Másodszor:* $f(\gamma) \ge c$. A $H$ definíciója és a $\gamma = \sup H$ szerint minden $x \in (\gamma, b)$-re $f(x) > c$. A jobb oldali határértéket véve és felhasználva a folytonosságot:
$$f(\gamma) = \lim_{x\to\gamma+0} f(x) \ge c.$$

A kettőből $f(\gamma) = c$. $\blacksquare$

**Következmény (a gyökvonás létezése).** Ha $a \ge 0$ és $k \in \mathbb{N}$, akkor létezik olyan $b \in \mathbb{R}$, amelyre $b^k = a$; azaz **létezik $\sqrt[k]{a}$**.

*Bizonyítás.* Legyen $f(x) = x^k \in C[0, a+1]$. Ekkor $f(0) = 0$ és
$$f(a+1) = (a+1)^k \ge a + 1 > a$$
(a Bernoulli-egyenlőtlenség vagy egyszerű monotonitás alapján). A Bolzano–Darboux-tétel szerint tehát létezik $b \in [0, a+1]$ úgy, hogy $b^k = f(b) = a$. $\blacksquare$

Ez az a pillanat, amikor a $\sqrt{2}$ létezését végre **bebizonyítottuk** — a félév elején csak annyit tudtunk, hogy nem racionális.

**Tétel.** Ha $f \in C[a,b]$, akkor $R(f)$ vagy egyetlen pont, vagy korlátos zárt intervallum. Nevezetesen
$$R(f) = \left[\min_{x\in[a,b]} f(x),\ \max_{x\in[a,b]} f(x)\right].$$

*Bizonyítás.* A Weierstrass-tétel szerint a minimum és a maximum létezik és felvétetik; a Bolzano–Darboux-tétel szerint a köztük lévő minden érték is. $\blacksquare$

**Tétel.** Ha $I$ tetszőleges intervallum (zárt, nyílt, félig nyílt, korlátos vagy nem) és $f \in C(I)$, akkor $f(I)$ is intervallum.

*Bizonyítás.* Legyen $\alpha = \inf\{f(x) : x \in I\}$ és $\beta = \sup\{f(x) : x \in I\}$ (esetleg $\pm\infty$). Legyen $\alpha < a < b < \beta$ tetszőleges. A szuprémum és infimum definíciója szerint léteznek $x, y \in I$ pontok úgy, hogy
$$\alpha < f(x) < a < b < f(y) < \beta.$$
Az $x$ és $y$ közötti intervallumon a Bolzano–Darboux-tételt alkalmazva $(a,b) \subset f(I)$. Mivel ez minden ilyen $a, b$-re igaz,
$$(\alpha, \beta) \subset f(I) \subset [\alpha, \beta],$$
tehát $f(I)$ intervallum. $\blacksquare$

**Példák (a végpontok viselkedése tetszőleges).**

- $I = (-1,1)$, $f(x) = x^2$: ekkor $f(I) = [0,1)$ — nyílt intervallum képe félig zárt.
- $I = (0,1)$, $f(x) = \frac{1}{x}$: ekkor $f(I) = (1,+\infty)$ — korlátos intervallum képe nem korlátos.

## 55. Az inverz függvény folytonossága

**Tétel.** Ha $f$ szigorúan monoton növekedő és $f \in C[a,b]$, akkor

- **a)** $R(f) = [f(a), f(b)]$;
- **b)** létezik $f^{-1}$;
- **c)** $f^{-1}$ szigorúan monoton növekedő $[f(a), f(b)]$-n;
- **d)** $f^{-1} \in C[f(a), f(b)]$.

*Bizonyítás (a d) pont).* Legyen $f(a) < y < f(b)$, és legyen $x = f^{-1}(y) \in (a,b)$. Legyen
$$0 < \varepsilon < \min(x - a,\ b - x)$$
(ilyen $\varepsilon$ létezik, hiszen $x$ belső pont). Ekkor
$$a < x - \varepsilon < x < x + \varepsilon < b,$$
és a szigorú monotonitás miatt
$$f(a) < f(x-\varepsilon) < y < f(x+\varepsilon) < f(b).$$
Legyen most
$$\delta_\varepsilon \stackrel{\text{def}}{=} \min\{f(x+\varepsilon) - y,\ y - f(x-\varepsilon)\} > 0.$$
Ha $|t - y| < \delta_\varepsilon$, akkor $f(x-\varepsilon) < t < f(x+\varepsilon)$, és a c) pont (az inverz monotonitása) szerint
$$x - \varepsilon = f^{-1}(f(x-\varepsilon)) < f^{-1}(t) < f^{-1}(f(x+\varepsilon)) = x + \varepsilon,$$
azaz $|f^{-1}(t) - f^{-1}(y)| < \varepsilon$. Ez pontosan az $f^{-1}$ folytonossága $y$-ban. $\blacksquare$

**Megjegyzés.** Hasonló tétel érvényes szigorúan monoton csökkenő függvényekre, valamint nyílt intervallumon értelmezett függvényekre is. Ez a tétel alapozza meg a következő részben az arkusz-, a logaritmus- és az area függvények létezését és folytonosságát.

## 56. Szakadási helyek

**Definíció.** Tegyük fel, hogy létezik $\delta_0 > 0$ úgy, hogy $\dot{B}(a,\delta_0) \subset D(f)$. Ha $f$ nem folytonos $a$-ban, akkor $a$ az $f$ **szakadási helye**.

**Osztályozás.**

**i) Megszüntethető szakadás.** Ha létezik $\lim_{x\to a} f(x) = b \in \mathbb{R}$ (de ez nem egyenlő $f(a)$-val, vagy $f$ ott nincs is értelmezve), akkor $f$-et az $a$ pontban $b$-nek (át)definiálva a függvény folytonossá tehető. Ilyenkor $a$-ban **megszüntethető** szakadási hely van. Példa: $(\operatorname{sgn} x)^2$ a $0$-ban.

**ii) Ugrás.** Ha $\lim_{x\to a} f(x)$ nem létezik, de léteznek és végesek a féloldali határértékek,
$$\lim_{x\to a-0} f(x) = f(a-0) \in \mathbb{R}, \qquad \lim_{x\to a+0} f(x) = f(a+0) \in \mathbb{R},$$
akkor azt mondjuk, hogy $f$ **ugrik** $a$-ban. Példa: $\operatorname{sgn}(x)$ vagy $\{x\}$ a $0$-ban.

Az i) és ii) típusú szakadásokat együttesen **elsőfajú** szakadási helyeknek nevezzük. Ami nem elsőfajú, az **másodfajú**.

**Példák másodfajú szakadásra.** Az $\frac{1}{x}$ a $0$-ban (a féloldali határértékek végtelenek), vagy a $\left\{\frac{1}{x}\right\}$ a $0$-ban (a féloldali határértékek nem is léteznek, a függvény egyre gyorsabban oszcillál).

**Tétel.** Ha $f$ monoton a $(c,d)$ intervallumon és $a \in (c,d)$, akkor **léteznek** a féloldali határértékek:
$$\exists \lim_{x\to a-0} f(x) = f(a-0), \qquad \exists \lim_{x\to a+0} f(x) = f(a+0).$$

*Bizonyítás (a monoton növekedő eset, bal oldali határérték).* Legyen
$$b \stackrel{\text{def}}{=} \sup\{f(x) : x < a\}.$$
(Ez létezik és véges, mert a halmaz nem üres és $f(a)$ felső korlátja.) Legyen $\varepsilon > 0$. Mivel $b$ a legkisebb felső korlát, létezik $x_1 < a$, amelyre
$$f(x_1) > b - \varepsilon.$$
Legyen $\delta \stackrel{\text{def}}{=} a - x_1 > 0$. A monotonitás miatt minden $x \in (x_1, a) = (a-\delta, a)$-ra
$$b - \varepsilon < f(x_1) \le f(x) \le b,$$
azaz $|f(x) - b| < \varepsilon$. Tehát $f(a-0) = b$. $\blacksquare$

**Következmény.** Monoton függvénynek csak **elsőfajú** szakadási helye lehet.

**Tétel.** Ha $f$ monoton a $(c,d)$ intervallumon, akkor itt legfeljebb **megszámlálható** sok elsőfajú szakadási helytől eltekintve folytonos.

*Bizonyítás.* Legyen $a$ szakadási hely. A monotonitás (mondjuk növekedés) miatt $f(a-0) < f(a+0)$, tehát az $\big(f(a-0), f(a+0)\big)$ nyílt intervallum nem üres. A racionális számok sűrűsége miatt választhatunk egy
$$r(a) \in \mathbb{Q} \cap \big(f(a-0),\ f(a+0)\big)$$
racionális számot. Ha $a' \neq a$ egy másik szakadási hely, akkor a hozzájuk tartozó „ugrás-intervallumok" diszjunktak (ezt ismét a monotonitás garantálja), tehát $r(a') \neq r(a)$. Az $a \mapsto r(a)$ hozzárendelés tehát **injektív** leképezés a szakadási helyek halmazáról $\mathbb{Q}$-ba. Mivel $\mathbb{Q}$ megszámlálható, a szakadási helyek halmaza is az. $\blacksquare$

Ez az érvelés a félév egyik legelegánsabb gondolata: a megszámlálhatóságot arra használjuk, hogy egy analízisbeli halmaz méretét megbecsüljük.

## 57. Konvexitás és folytonosság

Emlékeztetőül: $h_{a,b}(x) = f(a) + \frac{f(b)-f(a)}{b-a}(x-a)$ a húr egyenlete; erre $h_{a,b}(a) = f(a)$, $h_{a,b}(b) = f(b)$, és $h_{a,b}$ lineáris, tehát folytonos függvény.

**Lemma.** Tegyük fel, hogy $f$ konvex $I$-n, $a, b \in I$, $a < b$, és $x \in I \setminus [a,b]$. Ekkor
$$f(x) \ge h_{a,b}(x).$$

Vagyis: a húr az $[a,b]$ intervallumon **fölötte** van a függvénynek, azon kívül viszont **alatta**.

*Bizonyítás (vázlat).* Tudjuk, hogy $m_a(x) = \frac{f(x)-f(a)}{x-a}$ monoton növekedő. Ha $x > b$, akkor
$$m_a(x) \ge m_a(b) = \frac{f(b)-f(a)}{b-a},$$
amit átrendezve $h_{a,b}(x) \le h_{a,x}(x) = f(x)$. Szigorú konvexitás esetén $f(x) > h_{a,b}(x)$. $\blacksquare$

**Tétel.** Ha $f$ konvex az $I$ **nyílt** intervallumon, akkor $f \in C(I)$.

*Bizonyítás.* Legyen $c \in I$, és — kihasználva, hogy $I$ nyílt — válasszunk $a, b \in I$ pontokat úgy, hogy $a < c < b$. Legyen $x \in (c, b)$. Ekkor

- a lemma szerint (az $[a,c]$ húrra, $x \notin [a,c]$): $h_{a,c}(x) \le f(x)$;
- a konvexitás szerint (a $[c,b]$ húrra, $x \in [c,b]$): $f(x) \le h_{c,b}(x)$.

Tehát
$$h_{a,c}(x) \le f(x) \le h_{c,b}(x).$$
Ha most $x \to c+0$, akkor a két szélső tag — mivel lineáris, tehát folytonos függvények — egyaránt $h_{a,c}(c) = f(c)$-hez, illetve $h_{c,b}(c) = f(c)$-hez tart. A rendőrelv szerint $f(x) \to f(c)$, azaz $f$ jobbról folytonos $c$-ben. A bal oldali eset hasonló. $\blacksquare$

**Megjegyzés.** Az $I$ **nyíltsága lényeges**: zárt intervallum végpontjában a konvex függvény „felugorhat" anélkül, hogy elveszítené a konvexitását.

**Következmény.** Korábban láttuk, hogy gyengén konvex $\not\Rightarrow$ konvex. Most viszont kimondhatjuk: **ha $f$ folytonos, akkor gyengén konvex $\iff$ konvex.**

---
