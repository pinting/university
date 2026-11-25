# X. RÉSZ: FOLYTONOSSÁG

A határérték fogalma — szándékosan — független attól, hogy a függvény magában a vizsgált pontban milyen értéket vesz fel. A folytonosság éppen azt követeli meg, hogy a kettő **megegyezzék**: a függvény oda tartson, ahol van. Szemléletesen a folytonos függvény grafikonja „egy vonással, a ceruza felemelése nélkül” megrajzolható — bár, mint látni fogjuk, ez a szemléletes kép csak intervallumon értelmezett függvényekre igaz, és ott is csak nagyjából.

Ebben a részben bebizonyítjuk a folytonos függvények három nagy tételét (korlátosság, Weierstrass-féle maximumtétel, Bolzano-féle közbülsőérték-tétel). Mindhárom a teljességi axiómán múlik, és mindhárom alapvető szerepet játszik majd a differenciálszámításban.

## 52. A folytonosság fogalma

> **Definíció.** Az $f$ függvény **folytonos** az $a \in \mathbb{R}$ helyen, ha $f$ értelmezve van $a$ egy környezetében, és
> $$\lim_{x \to a} f(x) = f(a).$$

A definíció három követelményt foglal magában: (1) $f$ értelmezve van az $a$-ban (és körülötte), (2) létezik a $\lim_{x \to a} f(x)$ határérték, és (3) ez egyenlő $f(a)$-val. Ha bármelyik sérül, a függvény nem folytonos az $a$-ban.

**$\varepsilon$–$\delta$ alakban.** A határérték definícióját kibontva: $f$ pontosan akkor folytonos $a$-ban, ha minden $\varepsilon > 0$-hoz van olyan $\delta > 0$, hogy minden $x \in B(a, \delta)$ esetén
$$|f(x) - f(a)| < \varepsilon.$$
Figyeljük meg, hogy itt már **nem pontozott** környezet szerepel: az $x = a$ esetben az egyenlőtlenség triviálisan teljesül, hiszen $|f(a) - f(a)| = 0$. Szavakban: **ha $x$ elég közel van $a$-hoz, akkor $f(x)$ tetszőlegesen közel van $f(a)$-hoz**. A bemenet kis megváltozása a kimenet kis megváltozását okozza.

**A folytonosság mint „mérhetőség”.** Egy gyakorlati szemléltetés: ha egy fizikai mennyiséget csak közelítőleg tudunk megmérni, akkor a belőle kiszámított $f$ érték csak akkor megbízható, ha $f$ folytonos — vagyis ha kis mérési hiba kis számítási hibát okoz. A $\operatorname{sgn}$ függvény a $0$-ban nem ilyen: egy akármilyen kicsi mérési hiba az eredményt $0$-ról $\pm 1$-re változtathatja.

> **Definíció (féloldali folytonosság).** Az $f$ **jobbról**, illetve **balról folytonos** az $a$-ban, ha (a megfelelő oldali környezetben értelmezett, és)
> $$\lim_{x \to a+0} f(x) = f(a), \qquad \text{illetve} \qquad \lim_{x \to a-0} f(x) = f(a).$$

> **Tétel.** $f$ pontosan akkor folytonos $a$-ban, ha ott jobbról és balról is folytonos.

Ez a 47. szakasz tételének közvetlen következménye.

> **Definíció (leszűkített folytonosság).** Ha $a \in A \subset D(f)$ és $a$ az $A$ torlódási pontja, akkor $f$ **folytonos $a$-ban az $A$-ra szorítkozva**, ha $\lim_{x \to a,\ x \in A} f(x) = f(a)$.

> **Definíció (folytonosság intervallumon).** Az $f$ **folytonos az $(\alpha, \beta)$ nyílt intervallumon** ($-\infty \le \alpha < \beta \le +\infty$), ha annak minden pontjában folytonos. Jelölése: $f \in C(\alpha, \beta)$.
>
> Az $f$ **folytonos az $[a, b]$ zárt intervallumon**, ha $(a, b)$ minden pontjában folytonos, az $a$-ban jobbról, a $b$-ben balról folytonos. Jelölése: $f \in C[a, b]$.

A végpontokban tett megkülönböztetés nem pedantéria: ha például $f(x) = \sqrt{x}$, akkor $f$ a $0$-tól balra nincs is értelmezve, így a $0$-beli (kétoldali) folytonosságról nem is beszélhetünk — a jobb oldali folytonosság viszont teljesül. Általában: **$f \in C[a,b]$ pontosan akkor, ha $f$ az $[a,b]$ minden pontjában folytonos az $[a,b]$-re szorítkozva.**

**Példák.**

- Az állandó függvény és az $f(x) = x$ függvény mindenütt folytonos (46. szakasz, 1. példa).
- A $\sqrt{x}$ folytonos a $[0, +\infty)$ intervallumon. (A $0$-ban jobbról: a IX. rész 1.c) feladata; az $a > 0$ pontokban a 46. szakasz 4. példájához hasonlóan: $|\sqrt{x} - \sqrt{a}| = \frac{|x - a|}{\sqrt{x} + \sqrt{a}} \le \frac{|x - a|}{\sqrt{a}}$.)
- A $\operatorname{sgn}$ függvény a $0$-ban nem folytonos (nincs határértéke), minden más pontban folytonos (ott lokálisan állandó).
- A $(\operatorname{sgn} x)^2$ a $0$-ban nem folytonos: a határérték létezik ($1$), de nem egyenlő a függvényértékkel ($0$).
- A Dirichlet-függvény **sehol sem** folytonos (sehol sincs határértéke).
- Az $f(x) = x\,D(x)$ függvény **pontosan egy** pontban, a $0$-ban folytonos: ott $\lim_{x \to 0} x D(x) = 0 = f(0)$ (51. szakasz, 4. példa); minden $c \neq 0$ pontban viszont nincs határértéke (a racionális pontokon vett leszűkítés $c$-hez, az irracionálisokon vett $0$-hoz tart). Ez a példa megmutatja, mennyire pontatlan a „ceruza felemelése nélkül” kép.
- Az egészrész-függvény, $[x]$, folytonos a $\left[0, \frac{1}{2}\right]$ intervallumon (ott állandóan $0$), de **nem** folytonos a $[0, 1]$ intervallumon: az $1$-ben balról a határérték $0$, a függvényérték viszont $1$ — a függvény „ugrik”. Minden $k \in \mathbb{Z}$ pontban jobbról folytonos, de balról nem.

## 53. Műveletek és folytonosság

A határértékre vonatkozó műveleti szabályokból (51. szakasz) azonnal adódik:

> **Tétel.** Ha $f$ és $g$ folytonos az $a$-ban, akkor $f + g$, $f - g$ és $f \cdot g$ is folytonos az $a$-ban; ha ezen felül $g(a) \neq 0$, akkor $\frac{f}{g}$ is folytonos az $a$-ban.

*Bizonyítás (a szorzatra).* $\lim_{x \to a} f(x)g(x) = \lim_{x\to a} f(x)\cdot\lim_{x \to a} g(x) = f(a)g(a)$. $\blacksquare$

> **Következmény.** Minden polinom folytonos $\mathbb{R}$-en, és minden racionális törtfüggvény folytonos az értelmezési tartománya minden pontjában.

*Bizonyítás.* Az állandó függvény és az $x \mapsto x$ folytonos; minden polinom ezekből véges sok összeadással és szorzással áll elő. A racionális törtfüggvényekre a hányadosszabály alkalmazható ott, ahol a nevező nem nulla. $\blacksquare$

### Előjeltartás és egyenlőtlenségek

A következő tételek azt fejezik ki, hogy a határérték és a folytonosság „tiszteli” az egyenlőtlenségeket.

> **Tétel (egyenlőtlenség öröklődése a környezetre).** Ha
> $$\lim_{x \to \alpha} f(x) = b < c = \lim_{x \to \alpha} g(x),$$
> akkor az $\alpha$-nak van olyan $\dot{U}$ pontozott környezete, amelyben $f(x) < g(x)$.

*Bizonyítás.* Legyen $\varepsilon = \frac{c - b}{2}$. Van olyan pontozott környezet, amelyben $f(x) < b + \varepsilon = \frac{b + c}{2}$, és van olyan, amelyben $g(x) > c - \varepsilon = \frac{b + c}{2}$. A két környezet metszetében (ez is pontozott környezete $\alpha$-nak) $f(x) < \frac{b+c}{2} < g(x)$. $\blacksquare$

> **Tétel (egyenlőtlenség öröklődése a határértékre).** Ha az $\alpha$ egy pontozott környezetében $f(x) \le g(x)$, és létezik $\lim_{x \to \alpha} f(x) = b$ és $\lim_{x \to \alpha} g(x) = c$, akkor $b \le c$.

*Bizonyítás.* Legyen $x_n \to \alpha$ egy sorozat a pontozott környezetből. Ekkor $f(x_n) \le g(x_n)$, és az átviteli elv szerint $f(x_n) \to b$, $g(x_n) \to c$. A sorozatokra vonatkozó rendezési tétel (19. szakasz) szerint $b \le c$. $\blacksquare$

A két tételt a $g$, illetve az $f$ helyére állandót írva a következő hasznos állításokat kapjuk:

> **Következmények (előjeltartás).**
>
> 1. Ha $f$ folytonos az $a$-ban és $f(a) > 0$, akkor van olyan $\delta > 0$, hogy minden $x \in B(a, \delta)$-ra $f(x) > 0$.
> 2. Ha az $a$ egy pontozott környezetében $f(x) \ge 0$, és $\lim_{x \to a} f(x) = b$, akkor $b \ge 0$.

Figyeljük meg az aszimmetriát (ugyanúgy, mint a sorozatoknál a 19. szakaszban): a **szigorú** egyenlőtlenség átöröklődik egy környezetre, de a határátmenet során csak a **gyenge** egyenlőtlenség marad meg. Például $f(x) = x^2 > 0$ minden $x \neq 0$-ra, de $\lim_{x \to 0} x^2 = 0$, ami nem pozitív.

### Átviteli elv a folytonosságra

> **Tétel (átviteli elv a folytonosságra).** Tegyük fel, hogy $f$ értelmezve van az $a$ egy környezetében. Ekkor $f$ pontosan akkor folytonos $a$-ban, ha minden $a_n \to a$ sorozatra (a környezetből) $f(a_n) \to f(a)$.

(Itt már nem kell kikötni, hogy $a_n \neq a$, hiszen ha $a_n = a$, akkor $f(a_n) = f(a)$.)

**Következmény: folytonos függvény és a lim felcserélhető.** Ha $f$ folytonos az $a = \lim a_n$ pontban, akkor
$$\lim_{n\to\infty} f(a_n) = f\!\left(\lim_{n\to\infty} a_n\right).$$
Például
$$\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)^3 = \left(\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)\right)^3 = 2^3 = 8.$$
**De vigyázat, ha a függvény nem folytonos!**
$$\lim_{n\to\infty}\left\{1 - \frac{1}{n}\right\} = \lim_{n\to\infty}\left(1 - \frac{1}{n}\right) = 1, \qquad \text{miközben} \qquad \left\{\lim_{n\to\infty}\left(1 - \frac{1}{n}\right)\right\} = \{1\} = 0.$$

### Folytonosság és kompozíció

> **Tétel.** Ha $\lim_{x \to \alpha} g(x) = b \in \mathbb{R}$ és $f$ folytonos $b$-ben, akkor
> $$\lim_{x \to \alpha} f(g(x)) = f(b) = f\!\left(\lim_{x \to \alpha} g(x)\right).$$

*Bizonyítás.* Legyen $a_n \to \alpha$ tetszőleges sorozat a pontozott környezetből. Az átviteli elv szerint $g(a_n) \to b$, és mivel $f$ folytonos $b$-ben, a folytonosságra vonatkozó átviteli elv szerint $f(g(a_n)) \to f(b)$. (Itt nem kell a $g(a_n) \neq b$ feltétel, mert a folytonosságnál az $a_n = a$ eset is megengedett.) Ismét az átviteli elvet alkalmazva kapjuk az állítást. $\blacksquare$

Ez a tétel az 51. szakasz kompozíciós tételének erősebb változata: ha a külső függvény folytonos, a $g(x) \neq \gamma$ feltétel elhagyható.

> **Következmény.** Ha $g$ folytonos $a$-ban és $f$ folytonos $g(a)$-ban, akkor $f \circ g$ folytonos $a$-ban.

Szavakban: **folytonos függvények kompozíciója folytonos.** Például $\sqrt{1 + x^2}$ mindenütt folytonos, hiszen $1 + x^2$ polinom, a $\sqrt{\phantom{x}}$ pedig a pozitív számokon folytonos.

## 54. Korlátos zárt intervallumon folytonos függvények

Most következik az elmélet három gyöngyszeme. Mindhárom „nyilvánvalónak” tűnik, ha folytonos függvény grafikonjára gondolunk — és mindhárom lényegesen használja a **teljességi axiómát** (a Bolzano–Weierstrass-tételen vagy a szuprémum létezésén keresztül). A racionális számok körében mindhárom hamis volna! Továbbá mindhárom lényegesen használja azt is, hogy az intervallum **korlátos és zárt**: ha bármelyik feltételt elhagyjuk, az állítás megdől.

### Első tétel: korlátosság

> **Tétel.** Ha $f \in C[a, b]$, akkor $f$ korlátos $[a, b]$-n.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $f$ nem korlátos az $[a, b]$-n. Ekkor minden $n \in \mathbb{N}$-hez van olyan $x_n \in [a, b]$, amelyre
$$|f(x_n)| > n.$$
Az $(x_n)$ sorozat korlátos (hiszen $[a, b]$-ben halad), tehát a **Bolzano–Weierstrass-tétel** szerint van konvergens részsorozata: $x_{n_k} \to c$. Mivel minden $x_{n_k} \in [a, b]$, és a zárt intervallumból határátmenettel nem lehet kilépni (19. szakasz), $c \in [a, b]$. Mivel $f$ folytonos $c$-ben (az $[a, b]$-re szorítkozva), az átviteli elv szerint
$$f(x_{n_k}) \to f(c) \in \mathbb{R}.$$
Konvergens sorozat korlátos, tehát az $(f(x_{n_k}))$ sorozat korlátos. Ez ellentmond annak, hogy $|f(x_{n_k})| > n_k \ge k$, ami minden határon túl nő. $\blacksquare$

**A feltételek szükségessége.**

- **Zártság:** $f(x) = \frac{1}{x}$ folytonos a $(0, 1]$ intervallumon, de nem korlátos.
- **Korlátosság:** $f(x) = x$ folytonos a $[0, +\infty)$ intervallumon, de nem korlátos.
- **Folytonosság:** az $f(x) = \frac{1}{x}$ ($x \neq 0$), $f(0) = 0$ függvény a $[-1, 1]$-en értelmezett, de nem korlátos.

A bizonyításban a zártság ott kellett, hogy $c \in [a, b]$ legyen, a korlátosság a Bolzano–Weierstrass-tétel alkalmazásához, a folytonosság az $f(x_{n_k}) \to f(c)$-hez.

### Második tétel: a maximum és a minimum létezése

Az első tétel szerint egy $f \in C[a, b]$ függvény értékkészletének van szuprémuma és infimuma. A második tétel szerint ezeket **fel is veszi**.

> **Tétel (Weierstrass maximumtétele).** Ha $f \in C[a, b]$, akkor $f$-nek van maximuma és minimuma az $[a, b]$-n: vannak olyan $x_{\max}, x_{\min} \in [a, b]$ helyek, hogy minden $x \in [a, b]$-re
> $$f(x_{\min}) \le f(x) \le f(x_{\max}).$$

*Bizonyítás.* Az előző tétel szerint $f$ korlátos, tehát létezik $M = \sup\{f(x) : x \in [a, b]\} \in \mathbb{R}$. Azt kell megmutatnunk, hogy van olyan hely, ahol $f(x) = M$.

Tegyük fel indirekt, hogy $f$ sehol sem veszi fel $M$-et, azaz minden $x \in [a, b]$-re $f(x) < M$. Ekkor a
$$g(x) = \frac{1}{M - f(x)}$$
függvény jól definiált (a nevező sehol sem nulla, sőt pozitív), és folytonos az $[a, b]$-n, hiszen folytonos függvények hányadosa. Az előző tétel szerint tehát $g$ is korlátos: van olyan $K > 0$, hogy minden $x$-re $g(x) \le K$, azaz
$$\frac{1}{M - f(x)} \le K \implies M - f(x) \ge \frac{1}{K} \implies f(x) \le M - \frac{1}{K}.$$
Eszerint $M - \frac{1}{K}$ felső korlátja az értékkészletnek, holott $M$ a **legkisebb** felső korlát, és $M - \frac{1}{K} < M$. Ellentmondás.

A minimum létezése az előzőből következik, ha $-f$-re alkalmazzuk. $\blacksquare$

**Szemléletesen** a bizonyítás azt használja ki, hogy ha $f$ „megközelíti, de nem éri el” az $M$-et, akkor $\frac{1}{M - f}$ minden határon túl nőne — márpedig folytonos függvény korlátos zárt intervallumon nem tud minden határon túl nőni.

**A feltételek szükségessége.**

- **Zártság:** $f(x) = x$ a $(0, 1)$-en folytonos és korlátos, de se maximuma, se minimuma nincs.
- **Folytonosság:** az $f(x) = x$ ($0 \le x < 1$), $f(1) = 0$ függvény a $[0, 1]$-en korlátos, értékkészletének szuprémuma $1$, de ezt sehol sem veszi fel.

A Weierstrass-tétel a differenciálszámításban kulcsszerepet kap: a 74. szakaszban erre épül a Rolle-tétel, és rajta keresztül az összes középértéktétel; a 77. szakaszban pedig ez garantálja, hogy a szélsőérték-feladatoknak egyáltalán van megoldásuk.

### Harmadik tétel: a közbülső értékek felvétele

> **Tétel (Bolzano–Darboux, közbülsőérték-tétel).** Ha $f \in C[a, b]$, akkor $f$ felvesz minden $f(a)$ és $f(b)$ közötti értéket: ha $c$ az $f(a)$ és $f(b)$ közé esik, akkor van olyan $\xi \in [a, b]$, amelyre $f(\xi) = c$.

**Szemléletesen:** ha egy folytonos görbe az $y = c$ egyenes alatt indul és fölötte végződik, akkor valahol át kell metszenie az egyenest. Egy speciális eset: ha $f(a)$ és $f(b)$ ellentétes előjelű, akkor $f$-nek van zérushelye $(a, b)$-ben (**Bolzano-tétel**).

*Bizonyítás.* Feltehetjük, hogy $f(a) < c < f(b)$ (ha $c$ egyenlő valamelyik végponti értékkel, készen vagyunk; az $f(a) > c > f(b)$ eset $-f$-re visszavezethető). **Az ötlet:** keressük meg a „legutolsó” olyan helyet, ahol $f$ még legfeljebb $c$. Legyen
$$H = \{x \in [a, b] : f(x) \le c\}.$$
Ez nem üres ($a \in H$), és felülről korlátos ($b$ felső korlát). Legyen
$$\xi = \sup H.$$
Nyilván $a \le \xi \le b$. Megmutatjuk, hogy $f(\xi) = c$.

*Először: $f(\xi) \le c$.* A szuprémum $\varepsilon$-os jellemzése szerint minden $n$-re van olyan $x_n \in H$, amelyre $\xi - \frac{1}{n} < x_n \le \xi$. Ekkor $x_n \to \xi$ (rendőrelv), és $f(x_n) \le c$ (mert $x_n \in H$). Az $f$ folytonossága miatt $f(x_n) \to f(\xi)$, és a rendezés öröklődése szerint $f(\xi) \le c$. Speciálisan $f(\xi) \le c < f(b)$, tehát $\xi \neq b$, vagyis $\xi < b$.

*Másodszor: $f(\xi) \ge c$.* Mivel $\xi = \sup H$ és $\xi < b$, a $(\xi, b]$ intervallum egyetlen pontja sincs $H$-ban, azaz minden $x \in (\xi, b]$-re $f(x) > c$. A jobb oldali határértéket véve, a folytonosság és a rendezés öröklődése szerint
$$f(\xi) = \lim_{x \to \xi+0} f(x) \ge c.$$

A kettőből $f(\xi) = c$. $\blacksquare$

**A feltételek szükségessége.** A folytonosság nem hagyható el: a $\operatorname{sgn}$ függvény a $[-1, 1]$-en $-1$-től $1$-ig „jut el”, de a $\frac{1}{2}$ értéket nem veszi fel. És a $\mathbb{Q}$-ban a tétel hamis: az $f(x) = x^2 - 2$ függvény a racionális számok körében $f(0) < 0 < f(2)$ ellenére sehol sem nulla.

### A közbülsőérték-tétel alkalmazásai

**1. A gyökvonás létezése.** Végre bebizonyíthatjuk, amit az egész félév során feltételeztünk!

> **Következmény.** Ha $a \ge 0$ és $k \in \mathbb{N}$, akkor létezik egyetlen olyan $b \ge 0$ szám, amelyre $b^k = a$. Ezt jelöljük $\sqrt[k]{a}$-val.

*Bizonyítás.* *Létezés:* legyen $f(x) = x^k$, ami polinom, tehát folytonos a $[0, a + 1]$ intervallumon. Itt $f(0) = 0 \le a$ és
$$f(a + 1) = (a + 1)^k \ge 1 + k a \ge 1 + a > a$$
(a Bernoulli-egyenlőtlenség szerint). A Bolzano–Darboux-tétel szerint van olyan $b \in [0, a + 1]$, amelyre $b^k = a$. *Egyértelműség:* a $[0, +\infty)$-en az $x^k$ szigorúan monoton növekedő (ha $0 \le x < y$, akkor $x^k < y^k$, indukcióval), tehát injektív. $\blacksquare$

Ez az a pillanat, amikor $\sqrt{2}$ létezését végre **bebizonyítottuk**. A félév elején (2. szakasz) csak annyit tudtunk, hogy nem racionális; most már tudjuk, hogy valós számként létezik — és ez a teljességi axióma következménye.

**2. Páratlan fokú polinomok gyökei.** *Minden páratlan fokú valós polinomnak van valós gyöke.* Legyen $p(x) = a_n x^n + \dots + a_0$, $n$ páratlan, és feltehetjük, hogy $a_n > 0$. Ekkor
$$p(x) = x^n\left(a_n + \frac{a_{n-1}}{x} + \dots + \frac{a_0}{x^n}\right),$$
ahol a zárójel $a_n > 0$-hoz tart, ha $x \to \pm\infty$, míg $x^n \to \pm\infty$ (páratlan $n$ miatt az előjel öröklődik). Tehát $\lim_{x \to +\infty} p(x) = +\infty$ és $\lim_{x \to -\infty} p(x) = -\infty$. Van tehát olyan $A < 0 < B$, hogy $p(A) < 0 < p(B)$, és a Bolzano-tétel szerint $p$-nek van gyöke $(A, B)$-ben. (Páros fokszámra ez nem igaz: $x^2 + 1$-nek nincs valós gyöke.)

**3. A felezési módszer.** A Bolzano-tétel bizonyítása nem konstruktív, de a tétel alapján egy egyszerű numerikus eljárás készíthető. Keressük az $f(x) = x^3 + x - 1$ függvény gyökét. Mivel $f(0) = -1 < 0 < 1 = f(1)$, van gyök a $[0, 1]$-ben. Felezzük az intervallumot: $f(0{,}5) = -0{,}375 < 0$, tehát a gyök a $[0{,}5;\ 1]$-ben van. $f(0{,}75) \approx 0{,}172 > 0$, tehát a $[0{,}5;\ 0{,}75]$-ben. $f(0{,}625) \approx -0{,}131 < 0$, tehát a $[0{,}625;\ 0{,}75]$-ben. És így tovább: minden lépésben feleződik az intervallum, tehát $n$ lépés után a gyököt $2^{-n}$ pontossággal ismerjük. (A gyök $\approx 0{,}6823$.) A módszer helyességét a Cantor-tulajdonság biztosítja.

**4. Fixpont-tétel.** *Ha $f : [0, 1] \to [0, 1]$ folytonos, akkor van olyan $\xi$, amelyre $f(\xi) = \xi$* (fixpont). Valóban, a $g(x) = f(x) - x$ függvény folytonos, $g(0) = f(0) \ge 0$ és $g(1) = f(1) - 1 \le 0$, tehát a Bolzano-tétel szerint van zérushelye.

### Az értékkészlet

> **Tétel.** Ha $f \in C[a, b]$, akkor az értékkészlete korlátos zárt intervallum (vagy egyetlen pont):
> $$f\big([a, b]\big) = \left[\min_{[a,b]} f,\ \max_{[a,b]} f\right].$$

*Bizonyítás.* A Weierstrass-tétel szerint a minimum és a maximum létezik; legyenek $x_{\min}$ és $x_{\max}$ a felvételi helyek. A köztük lévő intervallumon a Bolzano–Darboux-tételt alkalmazva a minimum és a maximum közötti minden érték is felvétetik. Más érték pedig nem lehet, hiszen minden érték a minimum és a maximum között van. $\blacksquare$

> **Tétel.** Ha $I$ tetszőleges intervallum (nyílt, zárt, félig nyílt, korlátos vagy nem) és $f$ folytonos $I$-n, akkor $f(I)$ is intervallum.

*Bizonyítás.* A 6. szakasz jellemzése szerint azt kell megmutatni, hogy ha $y_1 < y < y_2$ és $y_1, y_2 \in f(I)$, akkor $y \in f(I)$. Legyen $y_1 = f(x_1)$, $y_2 = f(x_2)$, ahol $x_1, x_2 \in I$. Az $x_1$ és $x_2$ által határolt zárt intervallum része $I$-nek, és ezen $f$ folytonos; a Bolzano–Darboux-tétel szerint $f$ felveszi rajta az $y$ értéket. $\blacksquare$

**A végpontok viselkedése tetszőleges lehet.**

- $I = (-1, 1)$, $f(x) = x^2$: $f(I) = [0, 1)$ — nyílt intervallum képe félig zárt.
- $I = (0, 1)$, $f(x) = \frac{1}{x}$: $f(I) = (1, +\infty)$ — korlátos intervallum képe nem korlátos.
- $I = \mathbb{R}$, $f(x) = \frac{1}{1 + x^2}$: $f(I) = (0, 1]$ — nem korlátos intervallum képe korlátos.

Csak a korlátos **zárt** intervallumok képe garantáltan korlátos zárt intervallum.

## 55. Az inverz függvény folytonossága

A XI. részben az elemi függvények inverzeit (gyökök, logaritmus, arkuszfüggvények) fogjuk bevezetni. Ehhez tudnunk kell, hogy egy folytonos, szigorúan monoton függvény inverze is folytonos. Ezt bizonyítjuk most.

> **Tétel.** Ha $f$ szigorúan monoton növekedő és folytonos az $[a, b]$-n, akkor
>
> - **a)** $R(f) = [f(a), f(b)]$;
> - **b)** $f$ invertálható, azaz létezik $f^{-1} : [f(a), f(b)] \to [a, b]$;
> - **c)** $f^{-1}$ szigorúan monoton növekedő;
> - **d)** $f^{-1}$ folytonos a $[f(a), f(b)]$-n.

*Bizonyítás.* **a)** A monotonitás miatt a minimum $f(a)$, a maximum $f(b)$, így az előző szakasz tétele szerint $R(f) = [f(a), f(b)]$.

**b)** Szigorúan monoton függvény injektív (40. szakasz), és az a) szerint szürjektív az $[f(a), f(b)]$-re, tehát bijektív.

**c)** Legyen $y_1 < y_2$, és $x_1 = f^{-1}(y_1)$, $x_2 = f^{-1}(y_2)$. Ha $x_1 \ge x_2$ volna, akkor $f$ monotonitása miatt $y_1 = f(x_1) \ge f(x_2) = y_2$ volna, ellentmondás. Tehát $x_1 < x_2$.

**d)** Legyen $y \in (f(a), f(b))$ belső pont, és $x = f^{-1}(y) \in (a, b)$. (A végpontokban a féloldali folytonosság ugyanígy igazolható.) Legyen $\varepsilon > 0$ olyan kicsi, hogy $a < x - \varepsilon$ és $x + \varepsilon < b$ (ha nagyobb $\varepsilon$-t kapunk, elég egy kisebbre igazolni). A szigorú monotonitás miatt
$$f(x - \varepsilon) < y < f(x + \varepsilon).$$
Legyen
$$\delta = \min\{f(x + \varepsilon) - y,\ y - f(x - \varepsilon)\} > 0.$$
Ha $|t - y| < \delta$, akkor $f(x - \varepsilon) < t < f(x + \varepsilon)$, és a c) pont szerint (az $f^{-1}$ monoton növekedő)
$$x - \varepsilon < f^{-1}(t) < x + \varepsilon,$$
azaz $|f^{-1}(t) - f^{-1}(y)| < \varepsilon$. Ez pontosan az $f^{-1}$ folytonossága $y$-ban. $\blacksquare$

**Szemléletesen** a d) pont bizonyítása így szól: ha az $x$ körül egy $\varepsilon$ sugarú vízszintes sávot rajzolunk az $f^{-1}$ értékeinek, akkor az $f$ ezt a sávot egy (nem feltétlenül szimmetrikus) intervallumra képezi az $y$ körül, és ennek a belsejében megtalálható egy $\delta$ sugarú szimmetrikus környezet.

**Megjegyzés.** Ugyanez érvényes szigorúan monoton **csökkenő** függvényekre (az inverz is csökkenő és folytonos), valamint tetszőleges (nyílt, félig nyílt, nem korlátos) intervallumon értelmezett folytonos, szigorúan monoton függvényekre: ilyenkor az értékkészlet is intervallum (54. szakasz), és az inverz azon folytonos. Ez a tétel alapozza meg a XI. részben a $\sqrt[k]{x}$, a $\log_a x$, az arkusz- és az area függvények folytonosságát.

## 56. Szakadási helyek

Ha egy függvény nem folytonos egy pontban, érdemes megvizsgálni, „hogyan” nem folytonos.

> **Definíció.** Tegyük fel, hogy $f$ értelmezve van az $a$ egy pontozott környezetében. Ha $f$ nem folytonos $a$-ban (beleértve azt az esetet is, ha $a$-ban nincs értelmezve), akkor $a$ az $f$ **szakadási helye**.

**A szakadások osztályozása.**

**i) Megszüntethető szakadás.** Létezik a $\lim_{x \to a} f(x) = b \in \mathbb{R}$ véges határérték, de az $f$ vagy nincs értelmezve $a$-ban, vagy $f(a) \neq b$. Ilyenkor $f$-et az $a$ pontban $b$-nek (át)definiálva a függvény folytonossá válik — innen a név. Példák: $(\operatorname{sgn} x)^2$ a $0$-ban; $\frac{x^2 - 1}{x - 1}$ az $1$-ben (itt $f(1) := 2$ választással folytonos függvényt kapunk, az $x + 1$-et).

**ii) Ugrás.** A kétoldali határérték nem létezik, de mindkét féloldali határérték létezik és véges:
$$f(a - 0) \in \mathbb{R}, \qquad f(a + 0) \in \mathbb{R}, \qquad f(a - 0) \neq f(a + 0).$$
Az $f(a + 0) - f(a - 0)$ különbség az **ugrás nagysága**. Példák: $\operatorname{sgn}$ a $0$-ban (ugrás: $2$), $[x]$ és $\{x\}$ az egész helyeken.

Az i) és ii) típusú szakadási helyeket együtt **elsőfajú** szakadási helyeknek nevezzük: ezekben mindkét féloldali határérték létezik és véges. Minden más szakadás **másodfajú**.

**Másodfajú szakadások.**

- $\frac{1}{x}$ a $0$-ban: a féloldali határértékek végtelenek.
- $\left\{\frac{1}{x}\right\}$ a $0$-ban: a féloldali határértékek nem is léteznek (az 50. szakasz példája); a függvény a $0$ felé haladva egyre sűrűbben „végigszalad” a $[0, 1)$ intervallumon.
- A Dirichlet-függvény minden pontban.

A monoton függvények szakadásai különösen egyszerűek.

> **Tétel.** Ha $f$ monoton a $(c, d)$ intervallumon és $a \in (c, d)$, akkor a féloldali határértékek léteznek és végesek. Monoton növekedő $f$ esetén
> $$f(a - 0) = \sup_{x < a} f(x) \le f(a) \le \inf_{x > a} f(x) = f(a + 0).$$

*Bizonyítás (a bal oldali határérték, növekedő eset).* A $\{f(x) : c < x < a\}$ halmaz nem üres, és $f(a)$ felső korlátja (a monotonitás miatt). Legyen
$$b = \sup\{f(x) : c < x < a\} \le f(a).$$
Legyen $\varepsilon > 0$. A szuprémum $\varepsilon$-os jellemzése szerint van olyan $x_1 \in (c, a)$, amelyre $f(x_1) > b - \varepsilon$. Legyen $\delta = a - x_1 > 0$. A monotonitás miatt minden $x \in (x_1, a) = (a - \delta, a)$-ra
$$b - \varepsilon < f(x_1) \le f(x) \le b,$$
azaz $|f(x) - b| < \varepsilon$. Tehát $f(a - 0) = b$. A jobb oldali határérték ugyanígy, az infimummal. $\blacksquare$

Vegyük észre: ez a bizonyítás szinte szó szerint megegyezik a monoton korlátos sorozatokra vonatkozó tételével (21. szakasz).

> **Következmény.** Monoton függvénynek csak **elsőfajú** szakadási helye lehet (és azok is mind ugrások).

> **Tétel.** Ha $f$ monoton a $(c, d)$ intervallumon, akkor ott legfeljebb **megszámlálhatóan sok** szakadási helye van.

*Bizonyítás.* Legyen $f$ növekedő. Ha $a$ szakadási hely, akkor az előző tétel szerint $f(a - 0) \le f(a) \le f(a + 0)$, és ezek nem mind egyenlők, tehát $f(a - 0) < f(a + 0)$. Az $\big(f(a - 0), f(a + 0)\big)$ nyílt intervallum tehát nem üres, és a racionális számok sűrűsége miatt választhatunk benne egy $r(a)$ racionális számot.

Ha $a < a'$ két szakadási hely, akkor a hozzájuk tartozó „ugrás-intervallumok” diszjunktak: ha $a < x < a'$ tetszőleges, akkor a monotonitás miatt
$$f(a + 0) \le f(x) \le f(a' - 0).$$
Ezért $r(a) < f(a + 0) \le f(a' - 0) < r(a')$, tehát $r(a) \neq r(a')$. Az $a \mapsto r(a)$ hozzárendelés tehát **injektív** leképezés a szakadási helyek halmazáról $\mathbb{Q}$-ba. Mivel $\mathbb{Q}$ megszámlálható, a szakadási helyek halmaza is az (a 29. szakasz állítása szerint egy megszámlálható halmaz részhalmazával áll bijekcióban). $\blacksquare$

Ez a gondolatmenet a félév egyik legelegánsabb érve: a **megszámlálhatóságot** — egy látszólag tisztán halmazelméleti fogalmat — arra használjuk, hogy egy analízisbeli halmaz méretét megbecsüljük. (Megjegyezzük, hogy a megszámlálhatóan sok szakadás valóban előfordulhat: van olyan monoton függvény, amely minden racionális pontban ugrik.)

## 57. Konvexitás és folytonosság

A 42–44. szakaszban a konvexitást a húrok segítségével jellemeztük. Most megmutatjuk, hogy ebből — meglepő módon — a folytonosság is következik, legalábbis nyílt intervallumon.

Emlékeztetőül: $h_{a,b}(x) = f(a) + \frac{f(b) - f(a)}{b - a}(x - a)$ a húr egyenlete, amely lineáris, tehát folytonos függvény, és $h_{a,b}(a) = f(a)$, $h_{a,b}(b) = f(b)$.

> **Lemma.** Legyen $f$ konvex az $I$ intervallumon, $a, b \in I$, $a < b$, és $x \in I \setminus [a, b]$. Ekkor
> $$f(x) \ge h_{a,b}(x).$$

Vagyis: a húr az $[a, b]$ intervallum fölött a grafikon **fölött** halad, azon kívül viszont a grafikon **alatt** (a húr meghosszabbítása a grafikon alá kerül).

*Bizonyítás.* Legyen először $x > b$. A 44. szakasz szerint $m_a$ monoton növekedő, így
$$m_a(x) = \frac{f(x) - f(a)}{x - a} \ge \frac{f(b) - f(a)}{b - a} = m_a(b).$$
A pozitív $x - a$-val szorozva és $f(a)$-t hozzáadva: $f(x) \ge f(a) + \frac{f(b) - f(a)}{b - a}(x - a) = h_{a,b}(x)$.

Ha $x < a$, akkor $m_b$ monotonitását használjuk: $x < a$ miatt $m_b(x) \le m_b(a)$, azaz
$$\frac{f(x) - f(b)}{x - b} \le \frac{f(a) - f(b)}{a - b}.$$
A negatív $x - b$-vel szorozva az egyenlőtlenség megfordul: $f(x) - f(b) \ge \frac{f(b) - f(a)}{b - a}(x - b)$, azaz $f(x) \ge h_{a,b}(x)$ (a húr $b$-ből felírt alakja szerint). $\blacksquare$

> **Tétel.** Ha $f$ konvex az $I$ **nyílt** intervallumon, akkor $f$ folytonos $I$-n.

*Bizonyítás.* Legyen $c \in I$. Mivel $I$ nyílt, választhatunk $a, b \in I$ pontokat úgy, hogy $a < c < b$. Megmutatjuk, hogy $f$ jobbról folytonos $c$-ben. Legyen $x \in (c, b)$. Ekkor

- a lemma szerint (a $[a, c]$ húrra, hiszen $x \notin [a, c]$): $h_{a,c}(x) \le f(x)$;
- a konvexitás definíciója szerint (a $[c, b]$ húrra, hiszen $x \in [c, b]$): $f(x) \le h_{c,b}(x)$.

Tehát a grafikon a $c$ pont jobb oldalán két egyenes közé szorul:
$$h_{a,c}(x) \le f(x) \le h_{c,b}(x).$$
Ha $x \to c + 0$, akkor a két szélső tag — lineáris függvények lévén — $h_{a,c}(c) = f(c)$-hez, illetve $h_{c,b}(c) = f(c)$-hez tart. A rendőrelv szerint $f(x) \to f(c)$. A bal oldali folytonosság ugyanígy igazolható (az $x \in (a, c)$ pontokra a szerepek felcserélésével). $\blacksquare$

**Az $I$ nyíltsága lényeges.** Zárt intervallum végpontjában a konvex függvény „felugorhat” anélkül, hogy elveszítené a konvexitását. Például az
$$f(x) = \begin{cases} 0 & \text{ha } 0 < x < 1, \\ 1 & \text{ha } x = 0 \text{ vagy } x = 1 \end{cases}$$
függvény konvex a $[0, 1]$-en (minden húr a grafikon fölött vagy rajta halad), de a két végpontban nem folytonos.

> **Következmény.** Folytonos függvényre a gyenge konvexitás és a konvexitás ekvivalens.

*Bizonyításvázlat.* A konvexitásból a gyenge konvexitás nyilvánvaló. Megfordítva, legyen $f$ folytonos és gyengén konvex. A számtani–mértani egyenlőtlenség bizonyításának II. lépéséhez (10. szakasz) hasonlóan, a felezőpontos egyenlőtlenséget ismételten alkalmazva indukcióval adódik, hogy
$$f\!\left(\frac{x_1 + \dots + x_{2^n}}{2^n}\right) \le \frac{f(x_1) + \dots + f(x_{2^n})}{2^n}.$$
Ha itt $k$ darab $x$-et és $2^n - k$ darab $y$-t írunk, akkor a $t = \frac{k}{2^n}$ alakú („diadikus”) súlyokra megkapjuk a Jensen-egyenlőtlenséget: $f(tx + (1 - t)y) \le tf(x) + (1 - t)f(y)$. Egy tetszőleges $t \in (0, 1)$ súlyhoz válasszunk $t_m \to t$ diadikus számokat; mivel $f$ folytonos, az egyenlőtlenség mindkét oldala folytonosan függ $t$-től, így határátmenettel a $t$-re is érvényes. $\blacksquare$

A 43. szakaszban említett, „Hamel-bázissal” konstruált gyengén konvex, de nem konvex függvény tehát szükségképpen **sehol sem folytonos** — sőt egyetlen intervallumon sem korlátos.

---

## A X. rész összefoglalása

- $f$ folytonos $a$-ban, ha $\lim_{x \to a} f(x) = f(a)$; azaz minden $\varepsilon$-hoz van $\delta$, hogy $|x - a| < \delta \implies |f(x) - f(a)| < \varepsilon$.
- Folytonos függvények összege, szorzata, hányadosa (nem nulla nevezővel) és kompozíciója folytonos; a polinomok és a racionális törtfüggvények folytonosak. Folytonos függvény és a határérték felcserélhető.
- Előjeltartás: ha $f(a) > 0$ és $f$ folytonos $a$-ban, akkor $a$ egy környezetében $f > 0$.
- Korlátos zárt intervallumon folytonos függvény korlátos, felveszi a maximumát és a minimumát (Weierstrass), és minden közbülső értéket (Bolzano–Darboux). Ebből: létezik $\sqrt[k]{a}$; páratlan fokú polinomnak van gyöke; folytonos függvény intervallumot intervallumra képez.
- Folytonos, szigorúan monoton függvény inverze is folytonos.
- Szakadások: megszüntethető, ugrás (elsőfajú), másodfajú. Monoton függvénynek csak ugrásai lehetnek, és legfeljebb megszámlálhatóan sok.
- Nyílt intervallumon konvex függvény folytonos.

## Feladatok a X. részhez

1. Hol folytonos az $f(x) = x\,D(x)$ és a $g(x) = x^2 D(x)$ függvény?
2. Határozzuk meg az $a$ paramétert úgy, hogy az $f(x) = x^2$ ($x \le 1$), $f(x) = ax + 3$ ($x > 1$) függvény folytonos legyen.
3. Bizonyítsuk be, hogy az $x^5 - 3x + 1 = 0$ egyenletnek van gyöke a $(0, 1)$ és az $(1, 2)$ intervallumban is.
4. Osztályozzuk a szakadási helyeket: a) $[x]$; b) $\frac{\sin x}{x}$ (a $\sin$ folytonosságát és a 70. szakasz $\frac{\sin x}{x} \to 1$ határértékét felhasználva); c) $\frac{1}{x^2 - 1}$; d) $\frac{|x|}{x}$.
5. Bizonyítsuk be, hogy ha $f, g \in C[a, b]$, $f(a) < g(a)$ és $f(b) > g(b)$, akkor van olyan $\xi \in (a, b)$, amelyre $f(\xi) = g(\xi)$.
6. Igaz-e, hogy ha $f$ folytonos a $(0, 1)$-en és korlátos, akkor felveszi a maximumát? És ha $f$ folytonos a $[0, +\infty)$-en, és $\lim_{x \to +\infty} f(x) = 0$, $f(0) = 1$?

### Megoldási útmutatók

1. Mindkettő csak a $0$-ban folytonos (a $c \neq 0$ pontokban a racionális, illetve irracionális pontokra szorítkozott határértékek különböznek).
2. Az $1$-ben a bal oldali határérték és a függvényérték $1$, a jobb oldali határérték $a + 3$; folytonosság pontosan akkor, ha $a = -2$.
3. $f(0) = 1 > 0$, $f(1) = -1 < 0$, $f(2) = 27 > 0$, és alkalmazzuk a Bolzano-tételt mindkét intervallumon.
4. a) Ugrás minden egész helyen. b) Megszüntethető szakadás a $0$-ban ($f(0) := 1$). c) Másodfajú a $\pm 1$-ben (végtelen féloldali határértékek). d) Ugrás a $0$-ban ($-1$-ről $1$-re; a $0$-ban nincs értelmezve).
5. Alkalmazzuk a Bolzano-tételt a $h = f - g$ függvényre: $h(a) < 0 < h(b)$.
6. Az első nem igaz: $f(x) = x$ a $(0, 1)$-en. A második igaz: van olyan $K$, hogy $x > K$ esetén $f(x) < 1$; a $[0, K]$-n a Weierstrass-tétel szerint $f$ felveszi a maximumát, ami legalább $f(0) = 1$, tehát ez az egész $[0, +\infty)$-en is maximum.

---
