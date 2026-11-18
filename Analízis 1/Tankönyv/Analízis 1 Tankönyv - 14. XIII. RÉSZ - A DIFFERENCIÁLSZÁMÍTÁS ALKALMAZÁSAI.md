# XIII. RÉSZ: A DIFFERENCIÁLSZÁMÍTÁS ALKALMAZÁSAI

Az előző részben megtanultuk kiszámolni a deriváltat. Most azt vizsgáljuk, mire jó. A derivált **lokális** információ: egyetlen pontban mondja meg a függvény változásának sebességét. A differenciálszámítás igazi ereje abban áll, hogy ebből a lokális információból **globális** következtetéseket vonhatunk le: monotonitásról, szélsőértékekről, konvexitásról, egyenlőtlenségekről, határértékekről, sőt a függvény értékeinek közelítéséről. A híd a lokális és a globális között a **középértéktétel** (74. szakasz) — és rajta keresztül végső soron ismét a teljességi axióma.

## 73. Lokális növekedés és szélsőérték

> **Definíció.** Az $f$ függvény **lokálisan növekedő** az $a$ helyen, ha van olyan $\delta > 0$, hogy $(a - \delta, a + \delta) \subset D(f)$, és
>
> - minden $x \in (a - \delta, a)$-ra $f(x) \le f(a)$,
> - minden $x \in (a, a + \delta)$-ra $f(x) \ge f(a)$.
>
> **Szigorúan lokálisan növekedő**, ha itt szigorú egyenlőtlenségek állnak. Hasonlóan definiáljuk a (szigorúan) lokálisan csökkenő fogalmat.

Szavakban: az $a$-tól balra (közel) a függvény legfeljebb $f(a)$, jobbra legalább $f(a)$. Ez csak az $a$ ponthoz viszonyít; azt nem mondja, hogy a függvény a környezetben monoton volna.

Ha $f$ (szigorúan) monoton növekedő egy $(c, d)$ intervallumon, akkor annak minden pontjában (szigorúan) lokálisan növekedő. **A megfordítás hamis**: a lokális növekedés jóval gyengébb tulajdonság, mint bármely környezetbeli monotonitás. Két példa:

**a)** Legyen $f(x) = \frac{1}{x}$, ha $x \neq 0$, és $f(0) = 0$. Ez szigorúan lokálisan nő a $0$-ban (balról minden érték negatív, jobbról minden érték pozitív), holott a $0$ semmilyen környezetében nem monoton — mindkét oldalon csökken.

**b)** Legyen $f(x) = x\sin^2\frac{1}{x}$, ha $x \neq 0$, és $f(0) = 0$. Ekkor $x > 0$-ra $f(x) \ge 0$, $x < 0$-ra $f(x) \le 0$, tehát $f$ lokálisan nő a $0$-ban. De a $0$ egyetlen környezetében sem monoton: a pozitív oldalon az $x = \frac{1}{k\pi}$ pontokban nulla, közöttük pozitív, tehát végtelen sokszor „fel-le” mozog.

> **Tétel (a szélsőérték szükséges feltétele, Fermat-tétel).** Tegyük fel, hogy $f$ differenciálható az $a$-ban.
>
> 1. Ha $f$ lokálisan nő $a$-ban, akkor $f'(a) \ge 0$.
> 2. Ha $f$ lokálisan csökken $a$-ban, akkor $f'(a) \le 0$.
> 3. Ha $f$-nek lokális szélsőértéke van $a$-ban, akkor $f'(a) = 0$.

*Bizonyítás.* **1.** Ha $f$ lokálisan nő $a$-ban, akkor $a$ egy pontozott környezetében a differenciahányados nemnegatív: $x > a$-ra a számláló $f(x) - f(a) \ge 0$ és a nevező pozitív; $x < a$-ra a számláló $\le 0$ és a nevező negatív. A határérték öröklődése szerint (53. szakasz) $f'(a) \ge 0$.

**2.** Ugyanígy, fordított előjelekkel.

**3.** Legyen $a$ lokális maximumhely. Az $a$-tól jobbra $f(x) \le f(a)$, így ott a differenciahányados $\le 0$, és határátmenettel $f'(a) = f'_+(a) \le 0$. Az $a$-tól balra is $f(x) \le f(a)$, de most a nevező negatív, így a differenciahányados $\ge 0$, és $f'(a) = f'_-(a) \ge 0$. A kettőből $f'(a) = 0$. A minimum esete hasonló. $\blacksquare$

**Geometriailag** a 3. pont azt mondja, hogy a sima görbe „csúcsán” és „völgyében” az érintő **vízszintes**. Ez a szélsőérték-keresés alapja: **a lehetséges lokális szélsőértékhelyeket az $f'(x) = 0$ egyenlet megoldásai között kell keresni** (feltéve, hogy a függvény differenciálható). Az $f'(x) = 0$ megoldásait **stacionárius** (kritikus) pontoknak nevezzük.

**Fontos figyelmeztetések.**

- **A megfordítás hamis.** $f(x) = x^3$ esetén $f'(0) = 0$, de a $0$-ban nincs szélsőérték (a függvény szigorúan nő). Az $f'(a) = 0$ feltétel tehát **szükséges, de nem elégséges**. Az 1. és 2. pont sem fordítható meg: $f(x) = x^2$ esetén $f'(0) = 0 \ge 0$, de $f$ nem lokálisan növekedő a $0$-ban.
- **A tétel csak differenciálható pontokra szól.** Az $|x|$ függvénynek a $0$-ban minimuma van, de ott nem is differenciálható. A szélsőértékhelyek tehát lehetnek olyan pontokban is, ahol a derivált nem létezik.
- **A tétel csak belső pontokra szól.** Az $f(x) = x$ függvény a $[0, 1]$-en az $1$-ben veszi fel a maximumát, pedig $f'(1) = 1 \neq 0$. A lokális szélsőérték definíciója ugyanis teljes környezetet követel meg (41. szakasz). A végpontokat ezért mindig külön kell megvizsgálni.

> **Tétel (elégséges feltétel a szigorú lokális monotonitásra).** Ha $f$ differenciálható $a$-ban és
>
> 1. $f'(a) > 0$, akkor $f$ szigorúan lokálisan nő $a$-ban;
> 2. $f'(a) < 0$, akkor $f$ szigorúan lokálisan csökken $a$-ban.

*Bizonyítás (1.).* Mivel
$$\lim_{x \to a}\frac{f(x) - f(a)}{x - a} = f'(a) > 0,$$
az előjeltartás (53. szakasz) szerint $a$ egy $\dot{B}(a, \delta)$ pontozott környezetében a differenciahányados pozitív. Ez pontosan azt jelenti, hogy $x > a$ esetén $f(x) > f(a)$, és $x < a$ esetén $f(x) < f(a)$. $\blacksquare$

**Ez sem fordítható meg:** $f(x) = x^3$ szigorúan lokálisan nő a $0$-ban, mégis $f'(0) = 0$. És vigyázat: a tétel **nem** mondja, hogy $f'(a) > 0$ esetén $f$ monoton volna $a$ egy környezetében! (Van olyan függvény, amelyre $f'(0) = 1$, mégis a $0$ minden környezetében végtelen sokszor változtatja a monotonitását; ilyen az $f(x) = x + 2x^2\sin\frac{1}{x}$, $f(0) = 0$.)

## 74. Középértéktételek

Ez a három tétel a differenciálszámítás gerince. Mindhárom azt mondja ki, hogy ha egy függvény egy intervallumon „összességében” valahogyan változik, akkor van olyan pont, ahol a **pillanatnyi** változás pontosan ilyen.

> **Tétel (Rolle-tétel).** Ha $f \in C[a, b]$, $f$ differenciálható az $(a, b)$-n, és $f(a) = f(b)$, akkor van olyan $c \in (a, b)$, amelyre
> $$f'(c) = 0.$$

**Szemléletesen:** ha egy sima görbe ugyanabban a magasságban kezdődik és végződik, akkor valahol vízszintes az érintője. Fizikailag: ha egy feldobott labda ugyanoda esik vissza, ahonnan elindult, akkor valamikor (a pálya tetején) a függőleges sebessége nulla.

*Bizonyítás.* Ha $f$ állandó, akkor $f'(c) = 0$ minden $c \in (a, b)$-re. Ha nem állandó, akkor van olyan $x_0 \in (a, b)$, amelyre $f(x_0) \neq f(a)$; legyen például $f(x_0) > f(a)$ (a másik eset a minimummal ugyanígy megy). Mivel $f \in C[a, b]$, a **Weierstrass-tétel** (54. szakasz) szerint $f$ felveszi a maximumát valamely $c \in [a, b]$ pontban. Ez a pont nem lehet $a$ vagy $b$, hiszen ott az érték $f(a) = f(b) < f(x_0) \le f(c)$. Tehát $c \in (a, b)$ belső pont, ahol $f$-nek (abszolút, tehát lokális) maximuma van; az előző szakasz szerint $f'(c) = 0$. $\blacksquare$

Figyeljük meg, hogy a bizonyítás lényegében a Weierstrass-tételre, így végső soron a Bolzano–Weierstrass-tételre és a **teljességi axiómára** támaszkodik.

**A feltételek szükségessége.**

- **A belső pontokbeli differenciálhatóság:** $f(x) = |x|$ a $[-1, 1]$-en folytonos, $f(-1) = f(1)$, de a deriváltja sehol sem nulla (a $0$-ban nem is létezik).
- **A végpontokbeli folytonosság:** $f(x) = x$ a $[0, 1)$-en, $f(1) = 0$: differenciálható a $(0, 1)$-en, $f(0) = f(1)$, de $f' \equiv 1$.

> **Tétel (Lagrange-féle középértéktétel).** Ha $f \in C[a, b]$ és $f$ differenciálható az $(a, b)$-n, akkor van olyan $c \in (a, b)$, amelyre
> $$f'(c) = \frac{f(b) - f(a)}{b - a}.$$

**Szemléletesen:** van olyan belső pont, ahol az **érintő párhuzamos a végpontokat összekötő húrral**. Fizikailag: ha egy autó $2$ óra alatt $200$ km-t tett meg, akkor valamikor pontosan $100$ km/h-val haladt. (Egy autópálya-szakaszos sebességmérés pontosan ezen a tételen alapul: ha az átlagsebesség meghaladta a megengedettet, akkor valamikor a pillanatnyi is.)

*Bizonyítás.* „Fordítsuk el” a függvényt úgy, hogy a húr vízszintes legyen, és alkalmazzuk a Rolle-tételt. Legyen
$$g(x) = f(x) - \frac{f(b) - f(a)}{b - a}(x - a),$$
vagyis vonjuk ki $f$-ből a húr meredekségével arányos lineáris tagot. Ekkor $g \in C[a, b]$, $g$ differenciálható $(a, b)$-n, és
$$g(a) = f(a), \qquad g(b) = f(b) - \big(f(b) - f(a)\big) = f(a).$$
A Rolle-tétel szerint van olyan $c \in (a, b)$, amelyre
$$0 = g'(c) = f'(c) - \frac{f(b) - f(a)}{b - a}. \qquad \blacksquare$$

A Lagrange-tétel gyakran így használatos: **$f(b) - f(a) = f'(c)(b - a)$ valamely $c$-re $a$ és $b$ között.** Ez lehetővé teszi, hogy a függvényértékek különbségét a derivált segítségével becsüljük.

**Kidolgozott példa.** Bizonyítsuk be, hogy minden $x, y$-ra $|\sin x - \sin y| \le |x - y|$. (Ezt az 58. szakaszban geometriailag láttuk be; most egyetlen sorban kapjuk meg.) A Lagrange-tétel szerint $\sin x - \sin y = \cos c\cdot(x - y)$ valamely $c$-re, és $|\cos c| \le 1$. Általában: **ha $|f'| \le M$ egy intervallumon, akkor ott $|f(x) - f(y)| \le M|x - y|$.**

> **Tétel (Cauchy-féle középértéktétel).** Ha $f, g \in C[a, b]$, mindkettő differenciálható az $(a, b)$-n, és minden $x \in (a, b)$-re $g'(x) \neq 0$, akkor van olyan $c \in (a, b)$, amelyre
> $$\frac{f'(c)}{g'(c)} = \frac{f(b) - f(a)}{g(b) - g(a)}.$$

**Szemléletesen:** ha a síkban egy pont az $(g(t), f(t))$ pályán mozog, akkor a jobb oldal a kezdő- és végpontot összekötő húr meredeksége, a bal oldal pedig a pálya érintőjének meredeksége a $c$ időpontban. A tétel tehát a Lagrange-tétel „paraméteres görbékre” vonatkozó változata.

**Megjegyzés.** A $g(x) = x$ választással a Lagrange-tételt kapjuk vissza; az pedig $f(a) = f(b)$ esetén a Rolle-tétel. A három tétel tehát egyre általánosabb — mégis mindegyik a Rolle-tételből bizonyítható.

**Figyelem:** a Cauchy-tételt nem lehet úgy bizonyítani, hogy a Lagrange-tételt külön alkalmazzuk $f$-re és $g$-re, és elosztjuk az eredményeket: a két alkalmazás általában **különböző** $c$ pontokat adna.

*Bizonyítás.* Először: $g(b) \neq g(a)$, különben a Rolle-tétel szerint volna olyan pont, ahol $g' = 0$. Legyen
$$h(x) = f(x) - \frac{f(b) - f(a)}{g(b) - g(a)}\big(g(x) - g(a)\big).$$
Ekkor $h \in C[a, b]$, differenciálható $(a, b)$-n, $h(a) = f(a)$ és $h(b) = f(b) - (f(b) - f(a)) = f(a)$. A Rolle-tétel szerint van olyan $c \in (a, b)$, amelyre
$$0 = h'(c) = f'(c) - \frac{f(b) - f(a)}{g(b) - g(a)}\,g'(c).$$
Mivel $g'(c) \neq 0$, oszthatunk vele, és kész. $\blacksquare$

A Cauchy-féle középértéktételre két fontos helyen lesz szükségünk: a L'Hospital-szabály (83. szakasz) és a Taylor-formula (84. szakasz) bizonyításában.

## 75. A Darboux-tulajdonság

> **Definíció.** A $g : I \to \mathbb{R}$ függvény **Darboux-tulajdonságú** az $I$ intervallumon, ha bármely $a < b$, $a, b \in I$ esetén $g$ felvesz minden $g(a)$ és $g(b)$ közötti értéket az $(a, b)$ intervallumban.

A Bolzano–Darboux-tétel (54. szakasz) szerint minden folytonos függvény Darboux-tulajdonságú. **A megfordítás nem igaz** — és éppen ez teszi a következő tételt meglepővé: a deriváltak akkor is Darboux-tulajdonságúak, ha nem folytonosak.

> **Definíció.** Az $f$ **differenciálható az $[a, b]$-n**, ha minden $c \in (a, b)$-ben differenciálható, az $a$-ban jobbról, a $b$-ben balról differenciálható.

> **Tétel (Darboux-tétel).** Ha $f$ differenciálható az $[a, b]$-n, akkor $f'$ felvesz minden $f'_+(a)$ és $f'_-(b)$ közötti értéket. Következésképpen, ha $f$ differenciálható egy $I$ intervallumon, akkor $f'$ Darboux-tulajdonságú $I$-n.

*Bizonyítás.* Legyen például $f'_+(a) < d < f'_-(b)$ (a fordított eset $-f$-re visszavezethető). **Az ötlet:** a $g(x) = f(x) - dx$ függvény deriváltja $f' - d$, és azt kell megmutatnunk, hogy ez valahol nulla — azaz $g$-nek valahol belső szélsőértéke van.

A $g$ differenciálható, tehát folytonos az $[a, b]$-n, így a Weierstrass-tétel szerint felveszi a minimumát valamely $c \in [a, b]$ pontban. Megmutatjuk, hogy $c$ belső pont.

- $g'_+(a) = f'_+(a) - d < 0$. Az előjeltartás szerint van olyan $\delta > 0$, hogy minden $x \in (a, a + \delta)$-ra $\frac{g(x) - g(a)}{x - a} < 0$, azaz $g(x) < g(a)$. Tehát az $a$ nem minimumhely.
- $g'_-(b) = f'_-(b) - d > 0$. Hasonlóan van $x \in (b - \delta, b)$, amelyre $\frac{g(x) - g(b)}{x - b} > 0$, és itt a nevező negatív, így $g(x) < g(b)$. Tehát a $b$ sem minimumhely.

Így $c \in (a, b)$, ahol $g$-nek lokális minimuma van, tehát $g'(c) = 0$, azaz $f'(c) = d$. $\blacksquare$

**Példa: egy nem folytonos derivált.** Legyen
$$f(x) = \begin{cases} x^2\sin\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ha $x \neq 0$, a szabályokkal $f'(x) = 2x\sin\frac{1}{x} + x^2\cos\frac{1}{x}\cdot\left(-\frac{1}{x^2}\right) = 2x\sin\frac{1}{x} - \cos\frac{1}{x}$. A $0$-ban a definícióból:
$$f'(0) = \lim_{x \to 0}\frac{x^2\sin\frac{1}{x}}{x} = \lim_{x \to 0} x\sin\frac{1}{x} = 0,$$
mert $|x\sin\frac{1}{x}| \le |x|$. Tehát $f$ mindenütt differenciálható, de $f'$ nem folytonos a $0$-ban: a $2x\sin\frac{1}{x}$ tag $0$-hoz tart, a $\cos\frac{1}{x}$ tagnak viszont nincs határértéke a $0$-ban (az $x_n = \frac{1}{2n\pi}$ és $y_n = \frac{1}{(2n+1)\pi}$ sorozatokon $1$-et, illetve $-1$-et vesz fel). A Darboux-tétel szerint $f'$ mégis Darboux-tulajdonságú.

**Megjegyzés.** Ha $f'$ folytonos volna, a Darboux-tételre nem volna szükség: a Bolzano–Darboux-tétel közvetlenül alkalmazható volna $f'$-re. A Darboux-tétel értéke éppen abban áll, hogy **a folytonosság feltevése nélkül** működik.

**Alkalmazás.** Létezik-e olyan $f$, amelyre minden $x$-re $f'(x) = \operatorname{sgn} x$? **Nem** — mert a $\operatorname{sgn}$ nem Darboux-tulajdonságú (a $[-1, 1]$-en a $\frac{1}{2}$ értéket nem veszi fel), márpedig minden derivált az. Általában: **egy derivált függvénynek nem lehet ugrása.** (A következő félévben ennek az lesz a következménye, hogy az $\operatorname{sgn}$ függvénynek nincs primitív függvénye.)

**Alkalmazás: előjeltáblázatok jogossága.** Ha egy derivált függvénynek egy intervallumon nincs zérushelye, akkor ott állandó előjelű (különben a Darboux-tétel szerint valahol nulla volna). Ezért szabad a függvényvizsgálatnál a derivált zérushelyei közötti intervallumokon egy-egy pontban kiszámolni az előjelet (77. és 82. szakasz).

## 76. Monotonitási feltételek

A Lagrange-tétel legfontosabb következménye: a derivált előjeléből a függvény monotonitására következtethetünk.

> **Tétel.** Legyen $f \in C[a, b]$, differenciálható az $(a, b)$-n. Ekkor
> $$f \text{ monoton növekedő } [a, b]\text{-n} \iff f'(x) \ge 0 \text{ minden } x \in (a, b)\text{-re},$$
> és hasonlóan a csökkenő esetben $f' \le 0$-val.

*Bizonyítás (növekedő eset).* **($\Rightarrow$)** Ha $f$ monoton nő, akkor minden $c \in (a, b)$-ben lokálisan nő, tehát a 73. szakasz szerint $f'(c) \ge 0$.

**($\Leftarrow$)** Legyen $a \le x_1 < x_2 \le b$. A Lagrange-tétel szerint az $[x_1, x_2]$-n van olyan $c \in (x_1, x_2)$, amelyre
$$f(x_2) - f(x_1) = f'(c)(x_2 - x_1) \ge 0. \qquad \blacksquare$$

A tétel természetesen tetszőleges (nyílt, félig nyílt, nem korlátos) intervallumra is érvényes, hiszen a bizonyítás csak két pont közötti zárt intervallumot használ.

> **Tétel.** Ha $f \in C[a, b]$, differenciálható az $(a, b)$-n, és ott $f' \equiv 0$, akkor $f$ állandó az $[a, b]$-n.

*Bizonyítás.* Az előző tétel szerint $f$ monoton növekedő és monoton csökkenő is, tehát állandó. (Közvetlenül: a Lagrange-tétel szerint $f(x) - f(a) = f'(c)(x - a) = 0$ minden $x$-re.) $\blacksquare$

Ez a látszólag jelentéktelen állítás alapvető. Erre épül a következő félévben a határozatlan integrál (primitív függvény) egyértelműsége — **két függvénynek pontosan akkor ugyanaz a deriváltja egy intervallumon, ha konstansban különböznek** —, és a 86. szakaszban a differenciálegyenletek megoldásainak leírása. Fontos, hogy **intervallumról** van szó: az $\mathbb{R} \setminus \{0\}$-on az $\operatorname{sgn}$ függvény deriváltja azonosan nulla, mégsem állandó.

> **Tétel (szigorú monotonitás elégséges feltétele).** Ha $f \in C[a, b]$, differenciálható az $(a, b)$-n, és ott $f'(x) > 0$ (illetve $f'(x) < 0$), akkor $f$ szigorúan monoton növekedő (illetve csökkenő) az $[a, b]$-n.

*Bizonyítás.* A Lagrange-tétel szerint $x_1 < x_2$ esetén $f(x_2) - f(x_1) = f'(c)(x_2 - x_1) > 0$. $\blacksquare$

**Ez nem fordítható meg:** $f(x) = x^3$ szigorúan monoton növekedő $\mathbb{R}$-en, mégis $f'(0) = 0$. A pontos jellemzés:

> **Tétel.** Legyen $f \in C[a, b]$, differenciálható az $(a, b)$-n. Ekkor $f$ szigorúan monoton növekedő az $[a, b]$-n pontosan akkor, ha
>
> - minden $x \in (a, b)$-re $f'(x) \ge 0$, és
> - nincs olyan $[c, d] \subset [a, b]$, $c < d$ részintervallum, amelyen $f' \equiv 0$.

*Bizonyítás.* $f$ szigorúan monoton nő pontosan akkor, ha monoton nő **és** semmilyen részintervallumon nem állandó (ha $x_1 < x_2$ és $f(x_1) = f(x_2)$, akkor a monotonitás miatt $f$ az $[x_1, x_2]$-n állandó). Az előző tételek szerint ez pontosan a fenti két feltétel. $\blacksquare$

Az $x^3$ példa tanulsága tehát: a derivált **izolált** zérushelyei megengedettek, csak egy egész intervallumon nem tűnhet el.

### Egyenlőtlenségek bizonyítása deriválással

A monotonitási tételek hatékony módszert adnak egyenlőtlenségek bizonyítására: **ha $f(a) = g(a)$ és $x > a$-ra $f'(x) \ge g'(x)$, akkor $x \ge a$-ra $f(x) \ge g(x)$** (alkalmazzuk a tételt az $f - g$ függvényre).

**1. példa: $e^x \ge 1 + x$ minden $x$-re.** Legyen $h(x) = e^x - 1 - x$. Ekkor $h(0) = 0$ és $h'(x) = e^x - 1$, ami $x > 0$-ra pozitív, $x < 0$-ra negatív. Tehát $h$ a $(-\infty, 0]$-n szigorúan csökken, a $[0, +\infty)$-en szigorúan nő, így a $0$-ban van a minimuma: $h(x) \ge h(0) = 0$, egyenlőséggel csak $x = 0$-ra.

**2. példa: $\ln(1 + x) \le x$ minden $x > -1$-re.** Ez az előző példából logaritmálással adódik ($1 + x \le e^x$, és a $\ln$ szigorúan monoton növekedő).

**3. példa: $\arctan x + \arctan\frac{1}{x} = \frac{\pi}{2}$, ha $x > 0$.** A XII. rész 6. feladata szerint a bal oldal deriváltja $0$ a $(0, +\infty)$ intervallumon, tehát ott állandó; az $x = 1$ helyen az értéke $\frac{\pi}{4} + \frac{\pi}{4} = \frac{\pi}{2}$.

## 77. Szélsőérték-feladatok

A gyakorlati alkalmazások jelentős része optimalizálás: valamit maximalizálni (hasznot, térfogatot, hatásfokot) vagy minimalizálni (költséget, időt, anyagfelhasználást) kell. A differenciálszámítás erre szisztematikus módszert ad.

> **Állítás (az eljárás korlátos zárt intervallumon).** Ha $f \in C[a, b]$, differenciálható az $(a, b)$-n, és $f'(x) = 0$ pontosan az $x_1, \dots, x_n \in (a, b)$ pontokban, akkor
> $$\max_{[a, b]} f = \max\{f(a),\ f(b),\ f(x_1),\ \dots,\ f(x_n)\},$$
> és hasonlóan a minimumra.

*Bizonyítás.* A Weierstrass-tétel szerint a maximum létezik. Ha egy belső pontban van, akkor ott lokális maximum is van, tehát a Fermat-tétel szerint ott $f' = 0$, azaz a pont valamelyik $x_k$. Különben a maximum valamelyik végpontban van. $\blacksquare$

Ha $f$ néhány pontban nem differenciálható, azokat is fel kell venni a „jelöltek” listájára.

**Kidolgozott példa 1.** Írjunk az egységsugarú gömbbe maximális térfogatú hengert!

*Megoldás.* Legyen a henger magasságának fele $h$, alapkörének sugara $r$. A gömbbe írás feltétele (a henger tengelymetszetében, Pitagorasz tétele szerint):
$$h^2 + r^2 = 1 \implies r^2 = 1 - h^2.$$
A térfogat tehát egyetlen változó függvénye:
$$V(h) = r^2\pi\cdot 2h = 2\pi h(1 - h^2) = 2\pi(h - h^3), \qquad h \in [0, 1].$$
A derivált $V'(h) = 2\pi(1 - 3h^2)$, ami a $(0, 1)$-ben pontosan a $h = \frac{1}{\sqrt{3}}$ helyen nulla. A jelöltek: $V(0) = 0$, $V(1) = 0$, és
$$V\!\left(\frac{1}{\sqrt{3}}\right) = 2\pi\left(\frac{1}{\sqrt{3}} - \frac{1}{3\sqrt{3}}\right) = \frac{4\pi}{3\sqrt{3}}.$$
A maximális térfogatú henger magassága tehát $\frac{2}{\sqrt{3}}$, alapkörének sugara $\sqrt{\frac{2}{3}}$, térfogata $\frac{4\pi}{3\sqrt{3}} \approx 2{,}418$ — a gömb térfogatának $\frac{1}{\sqrt{3}} \approx 57{,}7\%$-a.

**Kidolgozott példa 2 (a konzervdoboz).** Adott $V$ térfogatú, henger alakú, fedeles dobozok közül melyik készíthető a legkevesebb anyagból?

*Megoldás.* Ha az alapkör sugara $r$, a magasság $m$, akkor $V = \pi r^2 m$, így $m = \frac{V}{\pi r^2}$, és a felszín
$$A(r) = 2\pi r^2 + 2\pi r m = 2\pi r^2 + \frac{2V}{r}, \qquad r \in (0, +\infty).$$
Itt az intervallum nem korlátos és nem zárt, ezért a Weierstrass-tétel nem alkalmazható közvetlenül. A derivált
$$A'(r) = 4\pi r - \frac{2V}{r^2} = \frac{4\pi r^3 - 2V}{r^2},$$
ami pontosan az $r_0 = \sqrt[3]{\frac{V}{2\pi}}$ helyen nulla, előtte negatív, utána pozitív. Tehát $A$ a $(0, r_0]$-n szigorúan csökken, a $[r_0, +\infty)$-en szigorúan nő, így az $r_0$-ban **abszolút** minimuma van. Ekkor $m = \frac{V}{\pi r_0^2} = \frac{2\pi r_0^3}{\pi r_0^2} = 2r_0$: **az optimális doboz magassága egyenlő az átmérőjével.** (A boltok polcain lévő konzervek többsége nem ilyen — a gyártásnál más szempontok is számítanak.)

**A végpontokról soha nem szabad megfeledkezni!** Legyen $f(h) = h - h^3$ a $[-10, 10]$ intervallumon. A stacionárius pontok $\pm\frac{1}{\sqrt{3}}$, ahol $f\left(\pm\frac{1}{\sqrt{3}}\right) = \pm\frac{2}{3\sqrt{3}} \approx \pm 0{,}385$. A végpontokban azonban
$$f(-10) = -10 + 1000 = 990, \qquad f(10) = 10 - 1000 = -990.$$
A maximum tehát a **végpontban** van ($990$), a minimum a másik végpontban ($-990$); a belső stacionárius pontok csak lokális szélsőértékek.

**Nem korlátos vagy nem zárt intervallumon** az abszolút szélsőérték nem feltétlenül létezik; ilyenkor a monotonitási viszonyokat és a „végpontokbeli” határértékeket kell vizsgálni. Ehhez szolgál a következő tétel.

> **Tétel (elsőrendű elégséges feltétel).** Legyen $f$ folytonos $a$-ban és differenciálható az $a$ egy pontozott környezetében. Ha
> $$f'(x) \le 0 \text{ az } (a - \delta, a)\text{-n} \qquad \text{és} \qquad f'(x) \ge 0 \text{ az } (a, a + \delta)\text{-n},$$
> akkor $f$-nek lokális minimuma van $a$-ban. (Szigorú egyenlőtlenségek esetén szigorú lokális minimum; fordított előjelek esetén lokális maximum.)

*Bizonyítás.* A 76. szakasz szerint $f$ monoton csökkenő az $(a - \delta, a]$-n és monoton növekedő az $[a, a + \delta)$-n (a folytonosság miatt a végpont is hozzávehető). Tehát mindkét oldalon $f(x) \ge f(a)$. $\blacksquare$

Röviden: **a derivált előjelváltása dönt.** Ha a derivált negatívból pozitívba vált, minimum; ha pozitívból negatívba, maximum; ha nem vált előjelet (mint az $x^3$ a $0$-ban), nincs szélsőérték.

**Kidolgozott példa 3.** Legyen $f(h) = h - h^3$ a $[-1, +\infty)$ intervallumon. A derivált $f'(h) = 1 - 3h^2$ lefelé nyíló parabola, gyökei $\pm\frac{1}{\sqrt{3}}$. Készítsünk **előjeltáblázatot** (a Darboux-tétel szerint jogosan: a derivált a zérushelyei között nem vált előjelet):

| $h$ | $-1 \le h < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < h < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3} < h$ |
|---|---|---|---|---|---|
| $f'(h)$ | $-$ | $0$ | $+$ | $0$ | $-$ |
| $f$ | csökken | lok. min. | nő | lok. max. | csökken |

Mivel $f(-1) = 0 < f\left(\frac{1}{\sqrt{3}}\right)$, és a $\left[-1, -\frac{1}{\sqrt{3}}\right]$ szakaszon $f \le f(-1) = 0$, a $\frac{1}{\sqrt{3}}$ az abszolút maximumhely. Abszolút minimum viszont nincs, mert $\lim_{h \to +\infty} f(h) = -\infty$; a $-\frac{1}{\sqrt{3}}$ csak lokális minimumhely.

## 78. Magasabb rendű deriváltak és a Leibniz-szabály

Ha egy függvény deriváltja maga is differenciálható, deriválhatjuk még egyszer. Fizikai példa: ha $s(t)$ az út, akkor $s'(t)$ a sebesség, $s''(t)$ pedig a **gyorsulás** (a sebesség változásának sebessége). Newton második törvénye, $F = ma = ms''$, egy második deriváltról szóló egyenlet.

> **Definíció.** Ha $f'$ differenciálható $a$-ban, akkor $(f')'(a)$ az $f$ $a$-beli **második deriváltja**; jelölése $f''(a)$, $f^{(2)}(a)$, $\left.\frac{d^2f}{dx^2}\right|_{x = a}$. Indukcióval: ha $f^{(k)}$ differenciálható $a$-ban, akkor $f^{(k+1)}(a) = \left(f^{(k)}\right)'(a)$ a **$(k + 1)$-edik derivált**. Megállapodás szerint $f^{(0)} = f$.

**Példák.**

- $f(x) = x^n$: $f'(x) = nx^{n-1}$, $f''(x) = n(n - 1)x^{n-2}$, és általában
$$f^{(k)}(x) = n(n - 1)\cdots(n - k + 1)\,x^{n - k} \quad (k \le n), \qquad f^{(n)}(x) = n!, \qquad f^{(k)} \equiv 0 \ (k > n).$$
Egy $n$-edfokú polinom $(n + 1)$-edik deriváltja tehát azonosan nulla.

- $(e^x)^{(n)} = e^x$ minden $n$-re.
- $\sin' = \cos$, $\sin'' = -\sin$, $\sin''' = -\cos$, $\sin^{(4)} = \sin$: a deriváltak négyesével ismétlődnek. Tömören: $\sin^{(n)}(x) = \sin\left(x + \frac{n\pi}{2}\right)$.
- A második derivált nem mindig létezik. Legyen $f(x) = x|x|$. A XII. rész 5. feladata szerint $f'(x) = 2|x|$, ami a $0$-ban nem differenciálható. Tehát $f''(x) = 2$, ha $x > 0$, $f''(x) = -2$, ha $x < 0$, és $f''(0)$ nem létezik.

> **Tétel (másodrendű elégséges feltétel).** Legyen $f$ differenciálható az $a$ egy környezetében, és tegyük fel, hogy létezik $f''(a)$.
>
> 1. Ha $f'(a) = 0$ és $f''(a) > 0$, akkor $a$ szigorú lokális **minimumhely**.
> 2. Ha $f'(a) = 0$ és $f''(a) < 0$, akkor $a$ szigorú lokális **maximumhely**.

*Bizonyítás (1.).* Mivel $(f')'(a) = f''(a) > 0$, a 73. szakasz elégséges feltétele szerint (az $f'$ függvényre alkalmazva) $f'$ szigorúan lokálisan nő $a$-ban. Tehát van olyan $\delta > 0$, hogy
$$f'(x) < f'(a) = 0 \text{ az } (a - \delta, a)\text{-n}, \qquad f'(x) > f'(a) = 0 \text{ az } (a, a + \delta)\text{-n}.$$
Az előző szakasz elsőrendű feltétele szerint $a$ szigorú lokális minimumhely. $\blacksquare$

**Szemléletesen:** ha $f''(a) > 0$, a grafikon az $a$ körül „felfelé görbül” (konvex, lásd a következő szakaszt), így a vízszintes érintőjű pont csak völgy lehet.

**A tétel nem dönt, ha $f''(a) = 0$.** Ekkor mindhárom eset előfordulhat:
$$f_1(x) = x^3 \ (\text{nincs szélsőérték}), \qquad f_2(x) = x^4 \ (\text{minimum}), \qquad f_3(x) = -x^4 \ (\text{maximum}),$$
és mindháromra $f'(0) = f''(0) = 0$. Ilyenkor magasabb rendű deriváltakat kell vizsgálni:

> **Általánosítás.** Ha $f'(a) = f''(a) = \dots = f^{(2k - 1)}(a) = 0$ és $f^{(2k)}(a) > 0$ (illetve $< 0$), akkor $a$ szigorú lokális minimumhely (illetve maximumhely). Ha viszont az első el nem tűnő derivált **páratlan** rendű, akkor nincs szélsőérték.

(A bizonyítás a 84. szakasz Taylor-formulájával a legegyszerűbb: a függvény az $a$ közelében úgy viselkedik, mint $\frac{f^{(m)}(a)}{m!}(x - a)^m$, ahol $m$ az első el nem tűnő derivált rendje.) A $x^4$ példában az első el nem tűnő derivált $f^{(4)}(0) = 24 > 0$, tehát minimum; az $x^3$-ban $f'''(0) = 6$, páratlan rendű, tehát nincs szélsőérték.

> **Tétel (magasabb rendű deriválási szabályok).** Ha $f$ és $g$ $n$-szer differenciálható $a$-ban, akkor $f + g$ és $f\cdot g$ is, és
>
> 1. $(f + g)^{(n)} = f^{(n)} + g^{(n)}$;
> 2. **(Leibniz-szabály)**
> $$(f\cdot g)^{(n)} = \sum_{k=0}^{n}\binom{n}{k}f^{(k)}g^{(n - k)}.$$

*Bizonyítás (a Leibniz-szabály, $n$ szerinti teljes indukcióval).* $n = 1$-re ez a szorzatszabály: $(fg)' = f'g + fg'$. Tegyük fel, hogy $n$-re igaz, és deriváljuk mindkét oldalt a szorzatszabállyal:
$$(fg)^{(n + 1)} = \sum_{k=0}^{n}\binom{n}{k}\left(f^{(k+1)}g^{(n-k)} + f^{(k)}g^{(n-k+1)}\right).$$
Gyűjtsük össze az azonos $f^{(j)}g^{(n + 1 - j)}$ alakú tagokat. Egy ilyen tag kétszer keletkezik: az első összegből $k = j - 1$-re, $\binom{n}{j-1}$ együtthatóval, és a második összegből $k = j$-re, $\binom{n}{j}$ együtthatóval (a szélső $j = 0$ és $j = n + 1$ esetekben csak egyszer, $1$ együtthatóval). A Pascal-azonosság szerint
$$\binom{n}{j - 1} + \binom{n}{j} = \binom{n + 1}{j},$$
tehát $(fg)^{(n+1)} = \sum_{j=0}^{n+1}\binom{n+1}{j}f^{(j)}g^{(n + 1 - j)}$. $\blacksquare$

A Leibniz-szabály szerkezete pontosan a **binomiális tétel** szerkezete — $(a + b)^n = \sum\binom{n}{k}a^kb^{n-k}$ —, csak a hatványok helyén deriváltak állnak.

**Példa.** $(x^2e^x)^{(10)}$: mivel $(x^2)^{(k)} = 0$, ha $k \ge 3$, csak három tag marad:
$$(x^2e^x)^{(10)} = \binom{10}{0}x^2e^x + \binom{10}{1}2x\,e^x + \binom{10}{2}2\,e^x = (x^2 + 20x + 90)e^x.$$

## 79. Konvexitás és a derivált

A 42–44. szakaszban a konvexitást a húrok segítségével definiáltuk és jellemeztük. Differenciálható függvényekre sokkal kényelmesebb jellemzés is van: a derivált monotonitása.

> **Tétel.** Legyen $f$ differenciálható az $I$ intervallumon. Ekkor
>
> 1. $f$ pontosan akkor konvex (konkáv) $I$-n, ha $f'$ monoton növekedő (csökkenő) $I$-n;
> 2. $f$ pontosan akkor szigorúan konvex (konkáv) $I$-n, ha $f'$ szigorúan monoton növekedő (csökkenő) $I$-n.

**Szemléletesen:** ahogy balról jobbra haladunk egy konvex grafikonon, az érintő egyre meredekebb lesz — „felfelé fordul”.

*Bizonyítás (1., konvex eset).*

**($\Rightarrow$)** Legyen $f$ konvex, $a, b \in I$, $a < b$. A 44. szakasz szerint az $a$-ból induló húrok meredeksége, $m_a(x) = \frac{f(x) - f(a)}{x - a}$, monoton növekedő. Ezért minden $x \in (a, b)$-re
$$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(a)}{b - a},$$
és $x \to a + 0$ határátmenettel (a bal oldal $f'(a)$-hoz tart)
$$(\otimes) \qquad f'(a) \le \frac{f(b) - f(a)}{b - a}.$$
Hasonlóan a $b$-ből induló húrok meredeksége, $m_b(x) = \frac{f(x) - f(b)}{x - b}$, is monoton növekedő, így $x \in (a, b)$-re $m_b(a) \le m_b(x)$, és $x \to b - 0$ határátmenettel
$$(\otimes\otimes) \qquad \frac{f(b) - f(a)}{b - a} \le f'(b).$$
A kettőt összerakva $f'(a) \le f'(b)$.

**($\Leftarrow$)** Legyen $f'$ monoton növekedő, és $a < x < b$ az $I$ pontjai. A Lagrange-tétel szerint vannak $u \in (a, x)$ és $v \in (x, b)$ pontok, amelyekre
$$f'(u) = \frac{f(x) - f(a)}{x - a}, \qquad f'(v) = \frac{f(b) - f(x)}{b - x}.$$
Mivel $u < v$, $f'(u) \le f'(v)$, tehát
$$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(x)}{b - x}.$$
A pozitív nevezőkkel felszorozva és rendezve:
$$f(x)(b - x) + f(x)(x - a) \le f(a)(b - x) + f(b)(x - a) \implies f(x)(b - a) \le f(a)(b - a) + \big(f(b) - f(a)\big)(x - a),$$
azaz
$$f(x) \le f(a) + \frac{f(b) - f(a)}{b - a}(x - a),$$
ami éppen a konvexitás definíciója. A szigorú eset ugyanígy megy. $\blacksquare$

Ha $f$ kétszer differenciálható, akkor $f'$ monotonitását a 76. szakasz szerint $f''$ előjele jellemzi:

> **Tétel (a második derivált próbája).** Legyen $f$ kétszer differenciálható az $I$ intervallumon. Ekkor
> $$f \text{ konvex } I\text{-n} \iff f'' \ge 0 \text{ az } I\text{-n}, \qquad f \text{ konkáv } I\text{-n} \iff f'' \le 0 \text{ az } I\text{-n};$$
> továbbá ha $f'' > 0$ ($f'' < 0$) az $I$ belsejében, akkor $f$ szigorúan konvex (konkáv).

**A szigorú esetben nincs megfordítás.** $f(x) = x^4$ szigorúan konvex (hiszen $f'(x) = 4x^3$ szigorúan monoton növekedő), mégis $f''(0) = 0$.

**Példák.**

- $e^x$: $(e^x)'' = e^x > 0$, tehát **szigorúan konvex** $\mathbb{R}$-en.
- $\ln x$: $(\ln x)'' = -\frac{1}{x^2} < 0$, tehát **szigorúan konkáv** a $(0, +\infty)$-en.
- $x^p$ a $(0, +\infty)$-en: $(x^p)'' = p(p - 1)x^{p-2}$, tehát $p > 1$ vagy $p < 0$ esetén szigorúan konvex, $0 < p < 1$ esetén szigorúan konkáv. (Ebből kapjuk a 12. szakaszban említett racionális kitevős Bernoulli-egyenlőtlenséget is, a 81. szakaszban bizonyítandó érintő-tulajdonság segítségével.)
- $\sin x$: $\sin'' x = -\sin x$, tehát a $\sin$ szigorúan konkáv a $[0, \pi]$-n (ott $\sin \ge 0$), és szigorúan konvex a $[\pi, 2\pi]$-n.


## 80. A Young-, a Hölder- és a Cauchy–Bunyakovszkij-egyenlőtlenség

A logaritmus konkávitása és a Jensen-egyenlőtlenség (43. szakasz) együtt rendkívül erős eszközt ad egyenlőtlenségek bizonyítására. Először egy régi ismerőst bizonyítunk újra.

**A számtani–mértani egyenlőtlenség, újra.** A $\ln$ konkáv, tehát a Jensen-egyenlőtlenség megfordítva érvényes rá: pozitív $a_1, \dots, a_n$ számokra és $p_1 + \dots + p_n = 1$ pozitív súlyokra
$$\ln(p_1a_1 + \dots + p_na_n) \ge p_1\ln a_1 + \dots + p_n\ln a_n = \ln\left(a_1^{p_1}\cdots a_n^{p_n}\right).$$
Mivel $\ln$ szigorúan monoton növekedő, ebből
$$a_1^{p_1}a_2^{p_2}\cdots a_n^{p_n} \le p_1a_1 + p_2a_2 + \dots + p_na_n.$$
Ez a **súlyozott** számtani–mértani egyenlőtlenség; a $p_k = \frac{1}{n}$ választással a 10. szakasz tételét kapjuk vissza — Cauchy trükkös indukciója nélkül, egyetlen sorban. (Persze a mélyebb munkát most a konkávitás és a deriválás végezte el.)

> **Tétel (Young-egyenlőtlenség).** Ha $a, b > 0$, $p, q > 1$ és $\frac{1}{p} + \frac{1}{q} = 1$, akkor
> $$ab \le \frac{a^p}{p} + \frac{b^q}{q}.$$

*Bizonyítás.* Alkalmazzuk a súlyozott számtani–mértani egyenlőtlenséget az $a^p$ és $b^q$ számokra, az $\frac{1}{p}$ és $\frac{1}{q}$ súlyokkal:
$$(a^p)^{1/p}(b^q)^{1/q} \le \frac{1}{p}a^p + \frac{1}{q}b^q,$$
és a bal oldal éppen $ab$. $\blacksquare$

A $p = q = 2$ esetben ez a jól ismert $ab \le \frac{a^2 + b^2}{2}$ egyenlőtlenség.

> **Tétel (Hölder-egyenlőtlenség).** Ha $p, q > 1$, $\frac{1}{p} + \frac{1}{q} = 1$, és $a_k, b_k \ge 0$ ($k = 1, \dots, n$), akkor
> $$a_1b_1 + \dots + a_nb_n \le \underbrace{\left(a_1^p + \dots + a_n^p\right)^{1/p}}_{A}\cdot\underbrace{\left(b_1^q + \dots + b_n^q\right)^{1/q}}_{B}.$$

*Bizonyítás.* Ha $A = 0$ vagy $B = 0$, akkor minden $a_k$ vagy minden $b_k$ nulla, és az állítás triviális. Egyébként **normáljuk** a számokat: alkalmazzuk a Young-egyenlőtlenséget az $\frac{a_k}{A}$ és $\frac{b_k}{B}$ párokra:
$$\frac{a_k}{A}\cdot\frac{b_k}{B} \le \frac{1}{p}\cdot\frac{a_k^p}{A^p} + \frac{1}{q}\cdot\frac{b_k^q}{B^q}.$$
Összegezzük $k = 1, \dots, n$-re:
$$\frac{a_1b_1 + \dots + a_nb_n}{AB} \le \frac{1}{p}\cdot\frac{a_1^p + \dots + a_n^p}{A^p} + \frac{1}{q}\cdot\frac{b_1^q + \dots + b_n^q}{B^q} = \frac{1}{p} + \frac{1}{q} = 1,$$
hiszen $A^p = a_1^p + \dots + a_n^p$ és $B^q = b_1^q + \dots + b_n^q$. $AB$-vel szorozva kész. $\blacksquare$

Figyeljük meg a bizonyítás szépségét: a normálás után a jobb oldal **pontosan $1$** lesz — ezért szól a feltétel éppen így: $\frac{1}{p} + \frac{1}{q} = 1$.

**Speciális eset ($p = q = 2$): a Cauchy–Bunyakovszkij-egyenlőtlenség.**
$$a_1b_1 + \dots + a_nb_n \le \sqrt{a_1^2 + \dots + a_n^2}\cdot\sqrt{b_1^2 + \dots + b_n^2}.$$
(Az abszolút értékekre alkalmazva tetszőleges előjelű számokra is érvényes.) Vektoros alakban ez azt mondja, hogy **a skaláris szorzat legfeljebb akkora, mint a hosszak szorzata**:
$$\underline{a}\cdot\underline{b} \le \|\underline{a}\|\cdot\|\underline{b}\|.$$
Síkvektorokra ez a $\underline{a}\cdot\underline{b} = \|\underline{a}\|\|\underline{b}\|\cos\varphi$ képletből és a $\cos\varphi \le 1$ egyenlőtlenségből ismert; a tétel szerint tetszőleges dimenzióban igaz. Ez teszi lehetővé, hogy $n$ dimenzióban is szögeket definiáljunk, és belőle következik a vektorokra vonatkozó háromszög-egyenlőtlenség is.

## 81. Érintő és inflexiós pontok

A konvexitást eddig a húrokkal (a grafikon a húrok **alatt** van) és a derivált monotonitásával jellemeztük. Most egy harmadik, szemléletes jellemzést adunk az érintőkkel.

> **Tétel (az érintő jellemzése).** Legyen $f$ differenciálható az $I$ intervallumon. Ekkor $f$ pontosan akkor konvex $I$-n, ha minden $a \in I$-re az $a$-beli érintő a grafikon **alatt** halad:
> $$f(x) \ge f(a) + f'(a)(x - a) \qquad \text{minden } x, a \in I\text{-re}.$$

*Bizonyítás.* **($\Rightarrow$)** Legyen $f$ konvex. Ha $x > a$, akkor a 79. szakasz $(\otimes)$ egyenlőtlensége (a $b = x$ választással) szerint $f'(a) \le \frac{f(x) - f(a)}{x - a}$, amiből szorzással $f(a) + f'(a)(x - a) \le f(x)$. Ha $x < a$, akkor a $(\otimes\otimes)$ egyenlőtlenség (az $x, a$ párra) szerint $\frac{f(a) - f(x)}{a - x} \le f'(a)$, amiből $f(a) - f(x) \le f'(a)(a - x)$, és átrendezve ismét $f(a) + f'(a)(x - a) \le f(x)$.

**($\Leftarrow$)** Legyen $a < b$. A feltételt az $(a, b)$ és a $(b, a)$ szereposztással felírva:
$$f(b) \ge f(a) + f'(a)(b - a) \implies \frac{f(b) - f(a)}{b - a} \ge f'(a),$$
$$f(a) \ge f(b) + f'(b)(a - b) \implies \frac{f(b) - f(a)}{b - a} \le f'(b).$$
Tehát $f'(a) \le f'(b)$: az $f'$ monoton növekedő, így a 79. szakasz szerint $f$ konvex. $\blacksquare$

**Alkalmazások.** Ez a tétel egy csapásra rengeteg egyenlőtlenséget ad:

- $e^x$ konvex, az $x = 0$-beli érintője $y = 1 + x$, tehát $e^x \ge 1 + x$ (a 76. szakasz 1. példája, most egyetlen sorban).
- $\ln x$ konkáv, az $x = 1$-beli érintője $y = x - 1$, tehát $\ln x \le x - 1$.
- $(1 + x)^p$ a $(-1, +\infty)$-en $p > 1$ esetén konvex, az $x = 0$-beli érintője $1 + px$; tehát $(1 + x)^p \ge 1 + px$ — ez a Bernoulli-egyenlőtlenség tetszőleges $p > 1$ valós kitevőre. $0 < p < 1$ esetén a függvény konkáv, és az egyenlőtlenség megfordul (12. szakasz).

### Inflexiós pontok

> **Definíció (inflexiós pont).** Az $a$ az $f$ **inflexiós helye**, ha $f$-nek van (véges vagy végtelen) deriváltja $a$-ban, és van olyan $\delta > 0$, hogy $f$ konvex az $(a - \delta, a]$-n és konkáv az $[a, a + \delta)$-n, vagy fordítva.

Az inflexiós pont tehát a **görbületváltás** helye: a grafikon itt „átfordul” a felfelé görbülésből a lefelé görbülésbe (vagy fordítva). Geometriailag az érintő itt **átmetszi** a grafikont.

**Példák.** A $0$ inflexiós helye az $x^3$ függvénynek (balra konkáv, jobbra konvex), és a $\sqrt[3]{x}$-nek is (balra konvex, jobbra konkáv; itt a derivált végtelen, az érintő függőleges). Az $|x|$-nek viszont a $0$ nem inflexiós helye (mindkét oldalon konvex, és nincs is deriváltja). (Az inflexiós pont definíciója a szakirodalomban nem teljesen egységes; egyes szerzők nem engedik meg a végtelen deriváltat.)

> **Tétel (szükséges feltétel).** Ha $f$ kétszer differenciálható $a$-ban, és $a$ az $f$ inflexiós helye, akkor $f''(a) = 0$.

*Bizonyítás.* Legyen például $f$ konvex az $(a - \delta, a]$-n és konkáv az $[a, a + \delta)$-n. Ekkor $f'$ monoton növekedő az $(a - \delta, a]$-n és monoton csökkenő az $[a, a + \delta)$-n, tehát az $a$ az $f'$ függvény lokális maximumhelye. A Fermat-tétel szerint $(f')'(a) = f''(a) = 0$. $\blacksquare$

A feltétel nem elégséges: $f(x) = x^4$ esetén $f''(0) = 0$, de a $0$ nem inflexiós hely (mindkét oldalon konvex).

> **Tétel (elégséges feltétel előjelváltással).** Ha $f$ kétszer differenciálható az $a$ egy környezetében, és $f''$ az $a$-ban **előjelet vált** (az $a$ egyik oldalán $\ge 0$, a másikon $\le 0$), akkor $a$ inflexiós hely.

*Bizonyítás.* A 79. szakasz szerint ahol $f'' \ge 0$, ott $f$ konvex, ahol $f'' \le 0$, ott konkáv. $\blacksquare$

> **Tétel (a harmadik derivált próbája).** Ha $f$ háromszor differenciálható $a$-ban, $f''(a) = 0$ és $f'''(a) \neq 0$, akkor $a$ inflexiós hely.

*Bizonyítás.* Ha $f'''(a) > 0$, akkor a 73. szakasz szerint (az $f''$-re alkalmazva) $f''$ szigorúan lokálisan nő $a$-ban: balra negatív, jobbra pozitív. Az előző tétel szerint $a$ inflexiós hely. A $f'''(a) < 0$ eset hasonló. $\blacksquare$

**Megjegyzés.** Az $f(x) = x^5$ függvénynek a $0$ inflexiós helye (balra konkáv, jobbra konvex), holott $f''(0) = f'''(0) = f^{(4)}(0) = 0$; csak $f^{(5)}(0) = 120 \neq 0$. Ez vezet az általános szabályhoz:

> **Tétel (magasabb rendű próba).** Legyen $f$ elég sokszor differenciálható $a$-ban, és legyen $f^{(m)}(a)$ ($m \ge 2$) az első nem nulla derivált a másodiktól kezdve: $f''(a) = \dots = f^{(m-1)}(a) = 0$, $f^{(m)}(a) \neq 0$.
>
> - Ha $m$ **páratlan**, akkor $a$ inflexiós hely.
> - Ha $m$ **páros**, akkor $f$ az $a$ egy környezetében szigorúan konvex ($f^{(m)}(a) > 0$) vagy szigorúan konkáv ($f^{(m)}(a) < 0$).

Vagyis: **az első el nem tűnő (legalább másodrendű) derivált rendjének paritása dönt.** (A 78. szakasz szélsőérték-szabályában ugyanez a gondolat szerepelt, az első deriválttól kezdve számolva.)

## 82. Teljes függvényvizsgálat

Az eddigi eszközök segítségével egy függvény grafikonját „biztos kézzel” fel tudjuk rajzolni: nemcsak néhány pontot számolunk ki, hanem tudjuk, hol nő, hol csökken, hol görbül felfelé vagy lefelé, és mi történik a „végeken”. A vizsgálat szokásos menete:

1. **Értelmezési tartomány**, $D(f)$.
2. **Folytonosság**: hol folytonos a függvény?
3. **Határértékek** a szakadási helyeken, az értelmezési tartomány határpontjaiban és a $\pm\infty$-ben.
4. **Monotonitás**: $f'$ előjele.
5. **Szélsőértékek**: lokális és abszolút szélsőértékhelyek és -értékek.
6. **Konvexitás**: $f''$ előjele.
7. **Inflexiós pontok**.
8. **További tulajdonságok**: paritás, periodicitás, zérushelyek, **aszimptoták**.

> **Definíció (aszimptota).** Ha
> $$\lim_{x \to +\infty}\big(f(x) - (mx + b)\big) = 0,$$
> akkor az $y = mx + b$ egyenes az $f$ **aszimptotája** a $+\infty$-ben (ha $m \neq 0$, **ferde aszimptotának** is nevezzük). Hasonlóan a $-\infty$-ben. Ha valamely $a$-ban egy féloldali határérték $\pm\infty$, akkor az $x = a$ egyenes **függőleges aszimptota**.

**Hogyan találjuk meg a ferde aszimptotát?** Ha $y = mx + b$ aszimptota a $+\infty$-ben, akkor $\frac{f(x)}{x} - m - \frac{b}{x} \to 0$, tehát
$$m = \lim_{x \to +\infty}\frac{f(x)}{x}, \qquad b = \lim_{x \to +\infty}\big(f(x) - mx\big).$$
Ha mindkét határérték létezik és véges, akkor van aszimptota; ha bármelyik nem létezik vagy végtelen, akkor nincs.

**Példák.** $f(x) = e^{-x} + x + 5$: itt $f(x) - (x + 5) = e^{-x} \to 0$ a $+\infty$-ben, tehát $y = x + 5$ aszimptota. Az $\arctan$-nak a $-\infty$-ben az $y = -\frac{\pi}{2}$, a $+\infty$-ben az $y = \frac{\pi}{2}$ vízszintes egyenes az aszimptotája.

### Kidolgozott példa 1: az Agnesi-görbe

**Történeti megjegyzés.** A görbe Maria Gaetana Agnesi olasz matematikusnőről kapta a nevét, aki 1748-ban írt nagy hatású analízis-tankönyvében tárgyalta. Angol neve, *witch of Agnesi* („Agnesi boszorkánya”) egy fordítási félreértésből ered: az olasz *la versiera* („a fordulat”, a görbe neve) szót összekeverték az *avversiera* („ördöngös asszony”) szóval.

Legyen
$$f(x) = \frac{1}{1 + x^2}.$$

**1–3. Alapadatok.** $D(f) = \mathbb{R}$, $f$ folytonos (racionális törtfüggvény, a nevező sehol sem nulla), és
$$\lim_{x \to \pm\infty}f(x) = 0,$$
tehát az $y = 0$ egyenes aszimptota mindkét irányban. A függvény **páros**, és mindenütt pozitív.

**4–7. Deriváltak.**
$$f'(x) = -\frac{2x}{(1 + x^2)^2},$$
$$f''(x) = \frac{-2(1 + x^2)^2 + 2x\cdot 2(1 + x^2)\cdot 2x}{(1 + x^2)^4} = \frac{-2(1 + x^2) + 8x^2}{(1 + x^2)^3} = \frac{6x^2 - 2}{(1 + x^2)^3}.$$
Zérushelyek: $f'(x) = 0 \iff x = 0$; $f''(x) = 0 \iff x = \pm\frac{1}{\sqrt{3}}$.

**Vizsgálati táblázat.** (A nevezők pozitívak, így az előjeleket a számlálók döntik el.)

| | $x < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < x < 0$ | $0$ | $0 < x < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $x > \frac{1}{\sqrt3}$ |
|---|---|---|---|---|---|---|---|
| $f'$ | $+$ | $+$ | $+$ | $0$ | $-$ | $-$ | $-$ |
| $f''$ | $+$ | $0$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f$ | nő, konvex | **infl.** | nő, konkáv | **max.** | csökken, konkáv | **infl.** | csökken, konvex |

**Összefoglalás.**

- $f$ szigorúan monoton növekedő a $(-\infty, 0]$-n, szigorúan monoton csökkenő a $[0, +\infty)$-en.
- Szigorúan konvex a $\left(-\infty, -\frac{1}{\sqrt{3}}\right]$ és a $\left[\frac{1}{\sqrt{3}}, +\infty\right)$ intervallumon, szigorúan konkáv a $\left[-\frac{1}{\sqrt{3}}, \frac{1}{\sqrt{3}}\right]$-n.
- Abszolút maximuma a $0$-ban van: $f(0) = 1$. Abszolút minimuma **nincs** (az infimum $0$, de nem vétetik fel). Az értékkészlet $(0, 1]$.
- Inflexiós helyek: $\pm\frac{1}{\sqrt{3}}$, ahol $f = \frac{3}{4}$.

A grafikon egy harang alakú görbe, amely a $0$ fölött a legmagasabb, és mindkét irányban az $x$ tengelyhez simul.

### Kidolgozott példa 2: ferde aszimptota

Legyen $f(x) = \dfrac{x^2}{x - 1}$.

**Alapadatok.** $D(f) = \mathbb{R}\setminus\{1\}$, ott folytonos. Polinomosztással
$$f(x) = x + 1 + \frac{1}{x - 1}.$$
Ebből azonnal leolvasható: $f(x) - (x + 1) = \frac{1}{x - 1} \to 0$, ha $x \to \pm\infty$, tehát **$y = x + 1$ ferde aszimptota** mindkét irányban; és $\lim_{x \to 1 \pm 0}f(x) = \pm\infty$, tehát **$x = 1$ függőleges aszimptota**.

**Deriváltak.**
$$f'(x) = 1 - \frac{1}{(x - 1)^2} = \frac{x(x - 2)}{(x - 1)^2}, \qquad f''(x) = \frac{2}{(x - 1)^3}.$$
Stacionárius pontok: $x = 0$ és $x = 2$. Az $f'$ előjele: $x < 0$-ra $+$, $(0, 1)$-en és $(1, 2)$-n $-$, $x > 2$-re $+$. Az $f''$ előjele: $x < 1$-re $-$, $x > 1$-re $+$.

**Eredmény.** Lokális maximum a $0$-ban ($f(0) = 0$), lokális minimum a $2$-ben ($f(2) = 4$). A függvény konkáv a $(-\infty, 1)$-en, konvex az $(1, +\infty)$-en; inflexiós pontja nincs (a görbületváltás helye, az $1$, nincs az értelmezési tartományban). Érdekesség: a **lokális maximum kisebb, mint a lokális minimum** ($0 < 4$) — a két ág között a függőleges aszimptota „szakítja meg” a grafikont. Abszolút szélsőérték nincs.

## 83. A L'Hospital-szabály

A 26. szakaszban láttuk, hogy a $\frac{0}{0}$ és $\frac{\infty}{\infty}$ alakú határértékek **kritikusak**: a számláló és a nevező határértékéből semmi sem következik. Eddig ilyenkor ügyes átalakításokkal (egyszerűsítés, gyöktelenítés, nevezetes határértékek) boldogultunk. A L'Hospital-szabály általános módszert ad: **a hányados helyett a deriváltak hányadosának határértékét számoljuk.**

**Miért működhet ez?** Ha $f(a) = g(a) = 0$, és mindkét függvény differenciálható $a$-ban, $g'(a) \neq 0$, akkor
$$\frac{f(x)}{g(x)} = \frac{f(x) - f(a)}{g(x) - g(a)} = \frac{\frac{f(x) - f(a)}{x - a}}{\frac{g(x) - g(a)}{x - a}} \to \frac{f'(a)}{g'(a)}.$$
Szemléletesen: $a$ közelében mindkét függvény jól közelíthető az érintőjével, $f(x) \approx f'(a)(x - a)$ és $g(x) \approx g'(a)(x - a)$, és a hányadosukban az $(x - a)$ kiesik. A tétel ennél általánosabb: nem kell, hogy $f'(a)$ és $g'(a)$ létezzen, elég a $\frac{f'}{g'}$ hányados határértéke.

**Történeti megjegyzés.** A szabály névadója Guillaume-François-Antoine de l'Hôpital márki, aki 1696-ban megírta az első differenciálszámítási tankönyvet. A szabályt azonban valójában tanára, Johann Bernoulli fedezte fel, aki egy szerződésben — rendszeres fizetségért cserébe — átengedte matematikai eredményei közlésének jogát l'Hôpitalnak. Bernoulli később keservesen panaszkodott, hogy a szabályt nem az ő nevén ismerik.

> **Tétel (L'Hospital-szabály).** Legyen $f$ és $g$ differenciálható az $\alpha$ egy $\dot{U}$ pontozott környezetében, ahol $g'(x) \neq 0$, és teljesüljön az alábbiak egyike:
>
> - **(1)** $\displaystyle \lim_{x \to \alpha}f(x) = \lim_{x \to \alpha}g(x) = 0$ (a $\frac{0}{0}$ eset), vagy
> - **(2)** $\displaystyle \lim_{x \to \alpha}|g(x)| = +\infty$ (a $\frac{\ast}{\infty}$ eset).
>
> Ha létezik a
> $$\lim_{x \to \alpha}\frac{f'(x)}{g'(x)} = A$$
> határérték, akkor létezik a $\displaystyle\lim_{x \to \alpha}\frac{f(x)}{g(x)}$ határérték is, és értéke $A$.

**Megjegyzés.** A tétel mind a tizenöt határérték-típusra érvényes: $\alpha$ lehet $a - 0$, $a$, $a + 0$, $\pm\infty$, és $A$ lehet valós szám vagy $\pm\infty$.

*Bizonyítás (az $\alpha = a + 0$, $A = b \in \mathbb{R}$, (1) esetben).* Legyen $\varepsilon > 0$. A feltevés szerint van olyan $\delta > 0$, hogy minden $x \in (a, a + \delta)$-ra
$$\left|\frac{f'(x)}{g'(x)} - b\right| < \frac{\varepsilon}{2}.$$
Terjesszük ki $f$-et és $g$-t az $a$-ra $f(a) = g(a) = 0$-val; ekkor az (1) feltétel miatt mindkettő jobbról folytonos $a$-ban. Legyen $x \in (a, a + \delta)$. Az $[a, x]$ intervallumon alkalmazzuk a **Cauchy-féle középértéktételt**: van olyan $c \in (a, x)$, amelyre
$$\frac{f(x)}{g(x)} = \frac{f(x) - f(a)}{g(x) - g(a)} = \frac{f'(c)}{g'(c)}.$$
Mivel $c \in (a, a + \delta)$, ezért
$$\left|\frac{f(x)}{g(x)} - b\right| = \left|\frac{f'(c)}{g'(c)} - b\right| < \frac{\varepsilon}{2} < \varepsilon.$$
Ez minden $x \in (a, a + \delta)$-ra igaz, tehát $\frac{f(x)}{g(x)} \to b$. $\blacksquare$

(A (2) esetben a bizonyítás hasonló, de technikásabb: az $[y, x]$ intervallumra alkalmazzuk a Cauchy-tételt, és azt használjuk ki, hogy $y \to a$ esetén $g(y)$ „elnyomja” a rögzített $f(x)$ és $g(x)$ értékeket. A $\pm\infty$-beli esetek a $t = \frac{1}{x}$ helyettesítéssel visszavezethetők a véges esetre.)

A bizonyítás a Cauchy-féle középértéktételen áll vagy bukik — ezért volt szükség rá a 74. szakaszban.

### Kidolgozott példák

**1. A nevezetes határértékek újra.** $\lim_{x \to 0}\frac{\sin x}{x} = \lim_{x \to 0}\frac{\cos x}{1} = 1$. **Vigyázat:** ez nem bizonyítás! A $\sin' = \cos$ képlet levezetéséhez éppen ezt a határértéket használtuk (70. szakasz), így ez körben forgó érvelés volna. Ellenőrzésnek viszont jó.

**2. Kétszeri alkalmazás.** $\lim_{x \to 0}\frac{1 - \cos x}{x^2}$: mindkettő $0$-hoz tart, tehát
$$\lim_{x \to 0}\frac{1 - \cos x}{x^2} \overset{\text{L'H}}{=} \lim_{x \to 0}\frac{\sin x}{2x} \overset{\text{L'H}}{=} \lim_{x \to 0}\frac{\cos x}{2} = \frac{1}{2}.$$
(A második lépés helyett a $\frac{\sin x}{x} \to 1$ határértéket is használhattuk volna.) Fontos: a második alkalmazás előtt **ellenőrizni kell**, hogy az új hányados is kritikus alakú — itt $\frac{\sin x}{2x}$ valóban $\frac{0}{0}$.

**3. Növekedési sorrend.** Minden $a > 0$-ra
$$\lim_{x \to +\infty}\frac{\ln x}{x^a} \overset{\text{L'H}}{=} \lim_{x \to +\infty}\frac{1/x}{ax^{a-1}} = \lim_{x \to +\infty}\frac{1}{ax^a} = 0,$$
és minden $n \in \mathbb{N}$-re ($n$-szeri alkalmazással)
$$\lim_{x \to +\infty}\frac{x^n}{e^x} = \lim_{x \to +\infty}\frac{nx^{n-1}}{e^x} = \dots = \lim_{x \to +\infty}\frac{n!}{e^x} = 0.$$
Vagyis: **a logaritmus lassabban nő bármely (pozitív kitevős) hatványnál, a hatványok pedig lassabban nőnek az exponenciális függvénynél.** Ez a „növekedési hierarchia” a függvényvizsgálatoknál és az algoritmusok futásidejének elemzésénél is alapvető.

**4. A $0 \cdot \infty$ eset.** Először törtté alakítunk:
$$\lim_{x \to 0+0}x\ln x = \lim_{x \to 0+0}\frac{\ln x}{1/x} \overset{\text{L'H}}{=} \lim_{x \to 0+0}\frac{1/x}{-1/x^2} = \lim_{x \to 0+0}(-x) = 0.$$
(A másik átalakítás, $\frac{x}{1/\ln x}$, sokkal bonyolultabb deriváltakhoz vezetne. Érdemes úgy átalakítani, hogy a deriválás egyszerűsítsen.)

**5. A $0^0$, $1^\infty$, $\infty^0$ esetek.** Ezeket exponenciális alakra hozzuk: $f^g = e^{g\ln f}$, és a kitevő határértékét számoljuk ki.
$$\lim_{x \to 0+0}x^x = \lim_{x \to 0+0}e^{x\ln x} = e^0 = 1,$$
az előző példa és az $e^x$ folytonossága szerint. Hasonlóan
$$\lim_{x \to 0}(1 + \sin x)^{1/x} = \lim_{x \to 0}e^{\frac{\ln(1 + \sin x)}{x}} = e^1 = e,$$
mert $\lim_{x \to 0}\frac{\ln(1 + \sin x)}{x} \overset{\text{L'H}}{=} \lim_{x \to 0}\frac{\cos x}{1 + \sin x} = 1$.

**Gyakori hibák.**

- **Nem kritikus alakra alkalmazni.** $\lim_{x \to 0}\frac{x + 1}{x + 2} = \frac{1}{2}$, de a deriváltak hányadosa $\frac{1}{1} = 1$. A szabály csak $\frac{0}{0}$ vagy $\frac{\ast}{\infty}$ alakra érvényes!
- **A hányados deriváltját venni** a deriváltak hányadosa helyett. A szabályban $\frac{f'}{g'}$ áll, nem $\left(\frac{f}{g}\right)'$.
- **A megfordítás hamis:** ha $\lim\frac{f'}{g'}$ nem létezik, abból nem következik, hogy $\lim\frac{f}{g}$ sem létezik. Például $\lim_{x \to +\infty}\frac{x + \sin x}{x} = 1$ (hiszen $\frac{\sin x}{x} \to 0$), de a deriváltak hányadosa, $\frac{1 + \cos x}{1}$, oszcillál. Ilyenkor a szabály egyszerűen nem alkalmazható.

## 84. Taylor-polinomok és a Taylor-formula

Ha $f$ differenciálható $a$-ban, akkor $a$ közelében jól közelíthető az érintőjével:
$$f(x) \approx T_1(x) = f(a) + f'(a)(x - a).$$
Az érintő az az **elsőfokú** polinom, amely $a$-ban ugyanazt az értéket és ugyanazt a deriváltat veszi fel, mint $f$. Kézenfekvő kérdés: ha **magasabb fokú** polinomot használunk, és több deriváltban is megköveteljük az egyezést, jobb közelítést kapunk-e? És mekkora a hiba?

**Melyik polinom ez?** Keressük azt a legfeljebb $n$-edfokú
$$p(x) = c_0 + c_1(x - a) + c_2(x - a)^2 + \dots + c_n(x - a)^n$$
polinomot, amelyre $p^{(k)}(a) = f^{(k)}(a)$ minden $k = 0, 1, \dots, n$-re. Deriváljuk $p$-t $k$-szor, és helyettesítsünk $x = a$-t: a $(x - a)^j$ tagok $j < k$ esetén eltűnnek a deriválás során, $j > k$ esetén $x = a$-ban nullák, és csak a $j = k$ tag marad: $\left((x - a)^k\right)^{(k)} = k!$. Tehát $p^{(k)}(a) = k!\,c_k$, és a feltétel szerint
$$c_k = \frac{f^{(k)}(a)}{k!}.$$

> **Definíció (Taylor-polinom).** Ha $f$ $n$-szer differenciálható az $a$ pontban, akkor a
> $$T_n(x) = \sum_{k=0}^{n}\frac{f^{(k)}(a)}{k!}(x - a)^k = f(a) + f'(a)(x - a) + \frac{f''(a)}{2!}(x - a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x - a)^n$$
> polinomot az $f$ függvény $a$ körüli **$n$-edik Taylor-polinomjának** nevezzük.

A fenti számolás szerint ez az egyetlen legfeljebb $n$-edfokú polinom, amelynek $a$-beli deriváltjai a $0$-adiktól az $n$-edikig megegyeznek $f$-éivel. (Az $a = 0$ körüli Taylor-polinomot **Maclaurin-polinomnak** is nevezik.)

**Példák.**

- $f(x) = e^x$, $a = 0$: minden derivált $1$ a $0$-ban, tehát $T_n(x) = 1 + x + \frac{x^2}{2!} + \dots + \frac{x^n}{n!}$.
- $f(x) = \sin x$, $a = 0$: a deriváltak a $0$-ban $0, 1, 0, -1, 0, 1, \dots$, tehát $T_3(x) = T_4(x) = x - \frac{x^3}{6}$.
- $f(x) = \ln(1 + x)$, $a = 0$: $f^{(k)}(x) = (-1)^{k-1}\frac{(k-1)!}{(1 + x)^k}$, tehát $T_n(x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \dots + (-1)^{n-1}\frac{x^n}{n}$.

**A legjobb közelítés.** Megmutatható, hogy a Taylor-polinomra
$$\lim_{x \to a}\frac{f(x) - T_n(x)}{(x - a)^n} = 0,$$
vagyis a hiba „gyorsabban tűnik el”, mint $(x - a)^n$ (ez a **Peano-féle maradéktag**; $n$-szeri L'Hospital-alkalmazással vagy a lenti Taylor-formulával igazolható). Sőt, $T_n$ az **egyetlen** legfeljebb $n$-edfokú polinom ezzel a tulajdonsággal: ha két ilyen polinom volna, a különbségükre, $q(x) = \sum d_k(x - a)^k$-ra, $\frac{q(x)}{(x - a)^n} \to 0$ teljesülne; az $x \to a$ határátmenet sorra $d_0 = 0$-t, majd $(x - a)$-val osztva $d_1 = 0$-t, és így tovább adja. A Taylor-polinom tehát a lehető **legjobb** $n$-edfokú közelítés az $a$ közelében.

A gyakorlatban azonban nem elég tudni, hogy a hiba „kicsi”; azt is tudni akarjuk, **mennyire** kicsi. Erre szolgál a következő tétel, amely a Lagrange-féle középértéktétel messzemenő általánosítása.

> **Tétel (Taylor-formula Lagrange-féle maradéktaggal).** Legyen $f$ $(n + 1)$-szer differenciálható az $a$ és $x$ által határolt zárt intervallumon. Ekkor van olyan $c$ szigorúan $a$ és $x$ között, hogy
> $$f(x) = \underbrace{\sum_{k=0}^{n}\frac{f^{(k)}(a)}{k!}(x - a)^k}_{T_n(x)} + \underbrace{\frac{f^{(n+1)}(c)}{(n + 1)!}(x - a)^{n+1}}_{\text{Lagrange-féle maradéktag}}.$$

**Figyeljük meg a szerkezetet:** a maradéktag pontosan olyan, mint a Taylor-polinom következő, $(n + 1)$-edik tagja volna — csak a derivált nem az $a$-ban, hanem egy ismeretlen $c$ köztes pontban van kiértékelve. $n = 0$-ra a tétel éppen a Lagrange-féle középértéktétel: $f(x) = f(a) + f'(c)(x - a)$.

Ugyanilyen feltételek mellett van olyan $d$ is $a$ és $x$ között, hogy
$$f(x) = T_n(x) + \frac{f^{(n+1)}(d)}{n!}(x - d)^n(x - a) \qquad (\text{Cauchy-féle maradéktag}).$$

*Bizonyítás (a Lagrange-féle maradéktag, $a < x$ esetén).* Rögzítsük $x$-et, és tekintsük a $t \in [a, x]$ változó következő segédfüggvényét: az $f$ $t$ körüli Taylor-polinomját az $x$ pontban kiértékelve, mínusz $f(x)$:
$$R(t) = \left[f(t) + \frac{f'(t)}{1!}(x - t) + \frac{f''(t)}{2!}(x - t)^2 + \dots + \frac{f^{(n)}(t)}{n!}(x - t)^n\right] - f(x).$$
Két megfigyelés: $R(x) = f(x) - f(x) = 0$ (minden $(x - t)$-s tag eltűnik), és $R(a) = T_n(x) - f(x)$ — vagyis $-R(a)$ éppen a keresett hiba.

Deriváljuk $R$-t $t$ szerint. A $\frac{f^{(k)}(t)}{k!}(x - t)^k$ tag deriváltja a szorzatszabállyal
$$\frac{f^{(k+1)}(t)}{k!}(x - t)^k - \frac{f^{(k)}(t)}{(k - 1)!}(x - t)^{k - 1}.$$
Összegezve $k = 0, 1, \dots, n$-re (a $k = 0$ tag deriváltja egyszerűen $f'(t)$), a tagok **teleszkopikusan** kiesnek — minden tag második fele kioltja az előző tag első felét —, és csak az utolsó tag első fele marad:
$$R'(t) = \frac{f^{(n+1)}(t)}{n!}(x - t)^n.$$

Most legyen $h(t) = (x - t)^{n+1}$; erre $h(x) = 0$, $h(a) = (x - a)^{n+1}$, és $h'(t) = -(n + 1)(x - t)^n \neq 0$ a $(a, x)$-en. Alkalmazzuk a **Cauchy-féle középértéktételt** az $R$ és $h$ függvényekre az $[a, x]$-en: van olyan $c \in (a, x)$, amelyre
$$\frac{R(x) - R(a)}{h(x) - h(a)} = \frac{R'(c)}{h'(c)}.$$
A bal oldal $\frac{-R(a)}{-(x - a)^{n+1}} = \frac{R(a)}{(x - a)^{n+1}}$, a jobb oldal pedig — az $(x - c)^n \neq 0$ tényezővel egyszerűsítve —
$$\frac{\frac{f^{(n+1)}(c)}{n!}(x - c)^n}{-(n + 1)(x - c)^n} = -\frac{f^{(n+1)}(c)}{(n + 1)!}.$$
Tehát $R(a) = -\frac{f^{(n+1)}(c)}{(n + 1)!}(x - a)^{n+1}$, és mivel $R(a) = T_n(x) - f(x)$, éppen a kívánt formulát kapjuk. $\blacksquare$

### A Taylor-formula alkalmazása: közelítő számítás hibabecsléssel

**1. példa: az $e$ szám.** Az $e^x$ függvényre, $a = 0$, $x = 1$, a Taylor-formula szerint valamely $c \in (0, 1)$-re
$$e = 1 + 1 + \frac{1}{2!} + \dots + \frac{1}{n!} + \frac{e^c}{(n + 1)!}.$$
Mivel $e^c < e < 3$, a hiba kisebb, mint $\frac{3}{(n + 1)!}$. $n = 7$-re ez $\frac{3}{40320} < 0{,}0001$, és
$$1 + 1 + \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \frac{1}{120} + \frac{1}{720} + \frac{1}{5040} \approx 2{,}71825.$$
Tehát $e \approx 2{,}7183$, négy tizedesjegy pontossággal — mindössze nyolc tag összeadásával. Összehasonlításul: az $\left(1 + \frac{1}{n}\right)^n$ sorozattal ugyanehhez a pontossághoz $n \approx 10\,000$ kellene.

**2. példa: $\sin 0{,}5$.** A $\sin$ $0$ körüli Taylor-polinomja $T_4(x) = x - \frac{x^3}{6}$, és a maradéktag $\frac{\sin^{(5)}(c)}{5!}x^5$, ahol $|\sin^{(5)}(c)| = |\cos c| \le 1$. Tehát
$$\sin 0{,}5 \approx 0{,}5 - \frac{0{,}125}{6} \approx 0{,}47917, \qquad |\text{hiba}| \le \frac{0{,}5^5}{120} \approx 0{,}00026.$$
(A valódi érték $0{,}479426\dots$, a hiba valóban kb. $0{,}00026$.)

**A differenciál.** Az $n = 1$ esetben a közelítés lineáris:
$$f(a + h) - f(a) \approx f'(a)\,h.$$
A $h \mapsto f'(a)h$ lineáris függvényt az $f$ $a$-beli **differenciáljának** nevezzük, jelölése $df$; ez a függvényérték megváltozásának **lineáris főrésze**. A fizikában és a mérnöki gyakorlatban állandóan használt „$\sin x \approx x$, ha $x$ kicsi” közelítés is ez: $\sin x - \sin 0 \approx \cos 0\cdot x = x$. A Taylor-formula szerint a hiba legfeljebb $\frac{|x|^3}{6}$ (hiszen $T_1 = T_2$ a $\sin$-ra) — például $x = 0{,}1$-re legfeljebb $0{,}00017$.

## 85. Taylor-sorok és hatványsorok

Ha a Taylor-polinomok egyre jobb közelítést adnak, kézenfekvő a kérdés: ha $n \to \infty$, „elérik-e” a függvényt? Vagyis igaz-e, hogy
$$f(x) = \sum_{n=0}^{\infty}\frac{f^{(n)}(a)}{n!}(x - a)^n\ ?$$
A jobb oldalon álló sort az $f$ $a$ körüli **Taylor-sorának** nevezzük. A válasz nem mindig igen — de van egy egyszerű elégséges feltétel.

Először egy segédtétel, amely a faktoriális gyors növekedését mondja ki.

> **Lemma.** Minden rögzített $k \in \mathbb{R}$-re $\displaystyle\lim_{n\to\infty}\frac{k^n}{n!} = 0$.

*Bizonyítás.* Legyen $a_n = \frac{|k|^n}{n!}$, és $N$ egy $2|k|$-nál nagyobb egész. Ha $n \ge N$, akkor
$$a_{n+1} = a_n\cdot\frac{|k|}{n + 1} \le \frac{a_n}{2},$$
tehát indukcióval $a_n \le \frac{a_N}{2^{n - N}}$ minden $n \ge N$-re. A jobb oldal $0$-hoz tart, így a rendőrelv szerint $a_n \to 0$. $\blacksquare$

Szavakban: **a faktoriális gyorsabban nő bármely exponenciálisnál.** (A növekedési hierarchia tehát: logaritmus $\ll$ hatvány $\ll$ exponenciális $\ll$ faktoriális.)

> **Tétel (elégséges feltétel a Taylor-sorba fejthetőségre).** Legyen $I$ az $a$ és $x$ által határolt zárt intervallum. Tegyük fel, hogy $f$ az $I$-n akárhányszor differenciálható, és a deriváltjai **egyenletesen korlátosak**: van olyan $M$, hogy
> $$|f^{(n)}(y)| \le M \qquad \text{minden } y \in I \text{ és minden } n \in \mathbb{N} \text{ esetén}.$$
> Ekkor $f(x)$ egyenlő a Taylor-sorának összegével: $f(x) = \sum_{n=0}^\infty\frac{f^{(n)}(a)}{n!}(x - a)^n$.

*Bizonyítás.* A Taylor-formula szerint minden $n$-re van $c_n \in I$, hogy
$$|f(x) - T_n(x)| = \left|\frac{f^{(n+1)}(c_n)}{(n + 1)!}(x - a)^{n+1}\right| \le M\cdot\frac{|x - a|^{n+1}}{(n + 1)!}.$$
A lemma szerint (a $k = |x - a|$ választással) a jobb oldal $0$-hoz tart, tehát a Taylor-polinomok — azaz a Taylor-sor részletösszegei — $f(x)$-hez tartanak. $\blacksquare$

### A nevezetes sorok

**Az exponenciális sor.** Az $e^x$ minden deriváltja $e^x$, és az $x$ és $0$ közötti intervallumon $e^y \le \max(1, e^x) = M$. A tétel szerint tehát minden $x \in \mathbb{R}$-re
$$e^x = \sum_{n=0}^{\infty}\frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots$$
Speciálisan $x = 1$-re
$$e = \sum_{n=0}^{\infty}\frac{1}{n!} = 1 + 1 + \frac{1}{2} + \frac{1}{6} + \frac{1}{24} + \dots,$$
és ez a sor nagyon gyorsan konvergál, ahogy az előző szakasz 1. példájában láttuk.

**A trigonometrikus sorok.** A $\sin$ és a $\cos$ minden deriváltja $\pm\sin$ vagy $\pm\cos$, tehát abszolút értékben legfeljebb $1$. A tétel $M = 1$-gyel minden $x$-re alkalmazható:
$$\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^nx^{2n+1}}{(2n + 1)!},$$
$$\cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^nx^{2n}}{(2n)!}.$$
(A $\sin$ sorában csak páratlan, a $\cos$-éban csak páros kitevők szerepelnek — összhangban azzal, hogy a $\sin$ páratlan, a $\cos$ páros függvény.)

**A hiperbolikus sorok.** Az $e^x$ és $e^{-x}$ sorát összeadva, illetve kivonva (a sorok tagonként összeadhatók, 35. szakasz):
$$\operatorname{sh}x = x + \frac{x^3}{3!} + \frac{x^5}{5!} + \dots, \qquad \operatorname{ch}x = 1 + \frac{x^2}{2!} + \frac{x^4}{4!} + \dots$$
Figyeljük meg: **ugyanazok a tagok, mint a $\sin$ és a $\cos$ soraiban, csak váltakozó előjelek nélkül.** Ez a legmélyebb magyarázata a trigonometrikus és a hiperbolikus függvények közötti párhuzamnak. (Komplex számokkal: ha az $e^x$ sorába $x$ helyett $ix$-et írunk, és felhasználjuk, hogy $i^2 = -1$, akkor a valós rész a $\cos x$, a képzetes rész a $\sin x$ sorát adja — ez az **Euler-formula**, $e^{ix} = \cos x + i\sin x$.)

**Kitekintés: az $e$ irracionális.** Az exponenciális sor segítségével egyszerű bizonyítás adható. Tegyük fel, hogy $e = \frac{p}{q}$ ($p, q \in \mathbb{N}$). Mivel $2 < e < 1 + 1 + \frac{1}{2} + \frac{1}{4} + \dots = 3$, $e$ nem egész, tehát $q \ge 2$. Tekintsük az
$$a = q!\left(e - \sum_{k=0}^{q}\frac{1}{k!}\right) = q!\sum_{k=q+1}^{\infty}\frac{1}{k!}$$
számot. Egyrészt $a$ **egész**: $q!e = (q - 1)!\,p$, és $k \le q$ esetén $\frac{q!}{k!}$ egész. Másrészt $a > 0$, és
$$a = \frac{1}{q + 1} + \frac{1}{(q + 1)(q + 2)} + \dots < \frac{1}{q + 1} + \frac{1}{(q + 1)^2} + \dots = \frac{1}{q} \le \frac{1}{2}.$$
Egy $0$ és $\frac{1}{2}$ közé eső egész szám nem létezik — ellentmondás. Tehát $e$ irracionális. $\blacksquare$

**Figyelem: a Taylor-sor nem mindig a függvényt adja vissza!** Augustin-Louis Cauchy ellenpéldája:
$$f(x) = \begin{cases} e^{-1/x^2} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Megmutatható, hogy ez a függvény akárhányszor differenciálható, és **minden** deriváltja nulla a $0$-ban. A $0$ körüli Taylor-sora tehát azonosan nulla — a függvény viszont csak a $0$-ban nulla. A tétel feltétele (a deriváltak egyenletes korlátossága) itt nem teljesül: a magasabb deriváltak a $0$ közelében rohamosan nőnek.

### Hatványsorok

> **Definíció (hatványsor).** Ha $x_0 \in \mathbb{R}$ és $a_n \in \mathbb{R}$ ($n = 0, 1, \dots$), akkor a
> $$\sum_{n=0}^{\infty}a_n(x - x_0)^n = a_0 + a_1(x - x_0) + a_2(x - x_0)^2 + \dots$$
> sort **$x_0$ körüli hatványsornak** nevezzük. Minden olyan $x$-re, amelyre konvergens, az összege egy számot ad; így a hatványsor egy függvényt definiál.

A hatványsor tehát a polinom „végtelen fokú” általánosítása. A Taylor-sor egy speciális hatványsor, amelynek együtthatói $a_n = \frac{f^{(n)}(x_0)}{n!}$.

**Példák.**
$$\sum_{n=0}^{\infty}\frac{x^n}{n!} = e^x \quad (x \in \mathbb{R}), \qquad \sum_{n=0}^{\infty}x^n = \frac{1}{1 - x} \quad (-1 < x < 1).$$
Az utóbbi a mértani sor (37. szakasz) — most azonban **függvényként** olvassuk: az $\frac{1}{1 - x}$ függvény a $(-1, 1)$ intervallumon egy hatványsor összegeként áll elő, azon kívül pedig a hatványsor divergens (noha a függvény ott is értelmezett, $x = 1$ kivételével). A hatványsorok konvergenciájának részletes elmélete (konvergenciasugár, tagonkénti deriválás és integrálás) a következő félév anyaga.

## 86. Differenciálegyenletek

A differenciálszámítás legfontosabb alkalmazása talán az, hogy a természet törvényeit **differenciálegyenletek** formájában írhatjuk fel: a fizika, a kémia, a biológia és a közgazdaságtan számos törvénye azt mondja meg, hogyan **változik** egy mennyiség, nem azt, hogy mennyi. A feladat ilyenkor a változás törvényéből magát a mennyiséget meghatározni.

> **Definíció.** **Differenciálegyenletnek** nevezünk minden olyan egyenletet, amely egy ismeretlen **függvény** és annak deriváltjai közötti összefüggést fejez ki. A **megoldás** egy olyan differenciálható függvény, amely az egyenletet (egy intervallum minden pontjában) kielégíti.

### A szabadesés

A $t = 0$ időpontban $h_0$ magasságból, nyugalomból elejtett test sebessége (a légellenállást elhanyagolva) $v(t) = -gt$, ahol $g \approx 9{,}81\ \mathrm{m/s^2}$ (a negatív előjel azt jelzi, hogy a test lefelé mozog). Milyen magasan van a test a $t$ időpontban?

Mivel a sebesség a magasság deriváltja:
$$h'(t) = -gt.$$
Ez egy differenciálegyenlet. Keressük az összes olyan $h$ függvényt, amelyre teljesül.

**Egy megoldás** „visszafelé deriválással” (a következő félévben: integrálással) található:
$$h_1(t) = -\frac{gt^2}{2}, \qquad \text{hiszen} \qquad \left(-\frac{gt^2}{2}\right)' = -gt.$$
Mivel az állandó függvény deriváltja $0$, a $-\frac{gt^2}{2} + C$ alakú függvények is megoldások, tetszőleges $C \in \mathbb{R}$-re. **De vannak-e más megoldások?**

> **Állítás.** A $h'(t) = -gt$ egyenlet összes megoldása (egy intervallumon) $h(t) = -\frac{gt^2}{2} + C$ alakú, $C \in \mathbb{R}$.

*Bizonyítás.* Legyen $h$ tetszőleges megoldás. Ekkor
$$\big(h(t) - h_1(t)\big)' = h'(t) - h_1'(t) = -gt - (-gt) = 0$$
minden $t$-re. A 76. szakasz szerint (azonosan nulla deriváltú függvény egy intervallumon állandó) $h(t) - h_1(t) = C$ valamely $C$-re. $\blacksquare$

Itt látszik, miért volt fontos az a látszólag jelentéktelen tétel: **ez garantálja, hogy a megoldásokat maradéktalanul leírtuk.**

**A kezdetiérték-probléma.** A $C$ állandót a kezdeti feltétel rögzíti: $h(0) = h_0$ miatt $C = h_0$, tehát az egyetlen megoldás
$$h(t) = h_0 - \frac{gt^2}{2}.$$
Ez a jól ismert képlet; most azonban **bebizonyítottuk**, hogy a sebességből egyértelműen következik. (Például $h_0 = 20$ m magasról a test akkor ér földet, amikor $h(t) = 0$, azaz $t = \sqrt{\frac{2h_0}{g}} \approx 2{,}02$ s múlva.)

### Exponenciális növekedés és bomlás

Sok folyamatban a változás sebessége **arányos a jelenlévő mennyiséggel**: egy baktériumtenyészet annál gyorsabban szaporodik, minél több baktérium van; egy radioaktív anyagból annál több bomlik el időegység alatt, minél több van belőle; egy bankszámla annál több kamatot hoz, minél nagyobb rajta az összeg. Ha $f(t)$ a mennyiség a $t$ időpontban, akkor
$$f'(t) = k\,f(t), \qquad k \in \mathbb{R} \text{ állandó}.$$

> **Állítás.** Ha $f$ differenciálható az $I$ intervallumon, és ott $f' = kf$, akkor van olyan $C$ állandó, hogy
> $$f(t) = C\,e^{kt} \qquad \text{minden } t \in I\text{-re}.$$

*Bizonyítás.* **Ezek megoldások:** $\left(Ce^{kt}\right)' = Cke^{kt} = k\cdot Ce^{kt}$.

**Csak ezek a megoldások.** Legyen $f$ tetszőleges megoldás, és tekintsük a
$$g(t) = f(t)\,e^{-kt}$$
segédfüggvényt. A szorzatszabállyal
$$g'(t) = \underbrace{f'(t)}_{= kf(t)}e^{-kt} + f(t)\cdot(-k)e^{-kt} = kf(t)e^{-kt} - kf(t)e^{-kt} = 0.$$
Tehát $g$ állandó az $I$-n: $g(t) = C$, azaz $f(t) = Ce^{kt}$. $\blacksquare$

A $C$ az $f(0)$ kezdeti érték. A $k > 0$ eset az **exponenciális növekedés**, a $k < 0$ eset az **exponenciális csökkenés** (bomlás). A $k = 1$, $C = 1$ esetben ez azt mondja, hogy **az $e^x$ az egyetlen olyan függvény, amely megegyezik a saját deriváltjával és a $0$-ban $1$** — ahogy a 72. szakaszban ígértük.

**Folytonos kamatozás.** Ha egy számlán a pénz „folyamatosan” kamatozik évi $r$ kamatlábbal, akkor az egyenleg növekedési sebessége $r$-szerese az egyenlegnek: $f' = rf$. Tehát $f(t) = f(0)e^{rt}$. Egy év alatt a tőke $e^r$-szeresére nő — összhangban a 71. szakasz $\left(1 + \frac{r}{n}\right)^n \to e^r$ határértékével és a 17. szakasz bevezető példájával ($r = 1$-re $e \approx 2{,}718$).

### Alkalmazás: radioaktív kormeghatározás

A légkörben keletkező $^{14}\mathrm{C}$ szénizotóp radioaktív; felezési ideje $T = 5700$ év. Az élő szervezetek folyamatosan cserélik a szenet a környezetükkel, ezért bennük a $^{14}\mathrm{C}$ aránya állandó; az elpusztulás után azonban a $^{14}\mathrm{C}$ bomlani kezd, és az arányából meghatározható, mennyi idő telt el. (A módszert Willard Libby dolgozta ki, 1960-ban Nobel-díjat kapott érte.)

**Mennyi a $k$ bomlási állandó?** A bomlás sebessége arányos a mennyiséggel, tehát $f(t) = Ce^{kt}$. A felezési idő definíciója szerint $f(t + T) = \frac{1}{2}f(t)$:
$$Ce^{k(t + T)} = \frac{1}{2}Ce^{kt} \implies e^{kT} = \frac{1}{2} \implies k = \frac{\ln\frac{1}{2}}{T} = -\frac{\ln 2}{T} \approx -1{,}216\cdot 10^{-4}\ \frac{1}{\text{év}}.$$

**Hány százalék $^{14}\mathrm{C}$ bomlik el 2000 év alatt?**
$$\frac{f(t + 2000)}{f(t)} = e^{2000k} = e^{-\frac{2000\ln 2}{5700}} = 2^{-2000/5700} \approx 0{,}784,$$
tehát körülbelül $21{,}6\%$ bomlik el.

**Milyen idős az a lelet, amelyben a $^{14}\mathrm{C}$-nek már csak $30\%$-a van meg?** $e^{kt} = 0{,}3$, tehát
$$t = \frac{\ln 0{,}3}{k} = -\frac{5700\,\ln 0{,}3}{\ln 2} \approx 9900 \text{ év}.$$

### Alkalmazás: Newton lehűlési törvénye

Egy állandó $T_\infty$ hőmérsékletű szobába helyezett tárgy hőmérséklet-változásának sebessége arányos a tárgy és a környezet hőmérséklet-különbségével:
$$T'(t) = k\big(T(t) - T_\infty\big), \qquad k < 0.$$
Ez nem pontosan $f' = kf$ alakú, de azzá tehető: vezessük be az $f(t) = T(t) - T_\infty$ függvényt (a hőmérséklet-különbséget). Ekkor $f'(t) = T'(t) = kf(t)$, tehát $f(t) = Ce^{kt}$, ahol $C = f(0) = T_0 - T_\infty$. Így
$$T(t) = T_\infty + (T_0 - T_\infty)e^{kt}.$$
A hőmérséklet-különbség exponenciálisan csökken, és a tárgy hőmérséklete a szoba hőmérsékletéhez tart.

**Kidolgozott példa.** Egy $100\,^\circ\mathrm{C}$-os leves áll egy $20\,^\circ\mathrm{C}$-os szobában. Egy perc múlva $95\,^\circ\mathrm{C}$-os. Milyen meleg lesz $10$ perc múlva? Mikor lesz $45\,^\circ\mathrm{C}$-os (azaz ehető)?

Itt $T_0 = 100$, $T_\infty = 20$, tehát $T(t) = 20 + 80e^{kt}$ ($t$ percben). A $k$ meghatározása az első perc adatából:
$$T(1) = 20 + 80e^k = 95 \implies e^k = \frac{75}{80} = 0{,}9375 \implies k = \ln 0{,}9375 \approx -0{,}06454.$$

**10 perc múlva:**
$$T(10) = 20 + 80e^{10k} = 20 + 80\cdot 0{,}9375^{10} \approx 20 + 80\cdot 0{,}5245 \approx 61{,}96\,^\circ\mathrm{C}.$$

**Mikor lesz $45\,^\circ\mathrm{C}$?**
$$45 = 20 + 80e^{kt} \implies e^{kt} = \frac{25}{80} \implies t = \frac{\ln\frac{25}{80}}{k} \approx \frac{-1{,}1632}{-0{,}06454} \approx 18{,}02 \text{ perc}.$$

---

## A XIII. rész összefoglalása

- **Fermat-tétel:** differenciálható függvény belső lokális szélsőértékhelyén $f' = 0$. Szükséges, nem elégséges feltétel; a végpontokat és a nem differenciálható pontokat külön kell vizsgálni.
- **Középértéktételek** (Rolle $\subset$ Lagrange $\subset$ Cauchy): $f(b) - f(a) = f'(c)(b - a)$. Ezek alakítják a lokális információt globálissá; a Weierstrass-tételen keresztül a teljességi axiómán múlnak.
- **Darboux-tétel:** minden derivált Darboux-tulajdonságú (nem lehet ugrása).
- **Monotonitás:** $f' \ge 0 \iff f$ nő; $f' > 0 \implies f$ szigorúan nő; $f' \equiv 0 \implies f$ állandó (intervallumon).
- **Szélsőérték:** a derivált előjelváltása vagy $f'(a) = 0$, $f''(a) \neq 0$ dönt.
- **Konvexitás:** $f$ konvex $\iff f'$ nő $\iff f'' \ge 0$ $\iff$ az érintők a grafikon alatt vannak. Inflexiós pont: görbületváltás; szükséges feltétel $f'' = 0$.
- **L'Hospital-szabály:** $\frac{0}{0}$ és $\frac{\ast}{\infty}$ esetben $\lim\frac{f}{g} = \lim\frac{f'}{g'}$ (ha az utóbbi létezik).
- **Taylor-formula:** $f(x) = T_n(x) + \frac{f^{(n+1)}(c)}{(n+1)!}(x - a)^{n+1}$; egyenletesen korlátos deriváltak esetén a Taylor-sor előállítja a függvényt ($e^x$, $\sin$, $\cos$, $\operatorname{sh}$, $\operatorname{ch}$).
- **Differenciálegyenletek:** $f' = kf \iff f = Ce^{kt}$; a megoldások egyértelműsége az „$f' \equiv 0 \implies f$ állandó” tételen múlik.

## Feladatok a XIII. részhez

1. Határozzuk meg az $f(x) = x^3 - 6x^2 + 9x + 1$ függvény lokális szélsőértékeit és monotonitási intervallumait.
2. Bizonyítsuk be, hogy $x \ge 0$ esetén $x - \frac{x^3}{6} \le \sin x \le x$.
3. Bizonyítsuk be, hogy az $x^4 - 4x + 1 = 0$ egyenletnek pontosan két valós gyöke van.
4. Számítsuk ki: a) $\lim_{x \to 0}\frac{e^x - 1 - x}{x^2}$; b) $\lim_{x \to 0}\frac{x - \sin x}{x^3}$; c) $\lim_{x \to +\infty}x^{1/x}$; d) $\lim_{x \to 0+0}x^2\ln x$.
5. Írjuk fel az $f(x) = \ln(1 + x)$ függvény harmadfokú Taylor-polinomját a $0$ körül, és becsüljük meg vele $\ln 1{,}1$ értékét. Adjunk felső becslést a hibára.
6. Végezzünk teljes függvényvizsgálatot: $f(x) = x\,e^{-x}$.
7. Írjunk egy $1$ sugarú félkörbe maximális területű téglalapot (az egyik oldala a félkör átmérőjén fekszik).
8. Oldjuk meg az $y' = -2y$, $y(0) = 3$ kezdetiérték-problémát.
9. Bizonyítsuk be a Lagrange-tétel segítségével, hogy $x > 0$ esetén $\frac{x}{1 + x} < \ln(1 + x) < x$.

### Megoldási útmutatók

1. $f'(x) = 3x^2 - 12x + 9 = 3(x - 1)(x - 3)$. $f$ nő a $(-\infty, 1]$-en és a $[3, +\infty)$-en, csökken az $[1, 3]$-on. Lokális maximum: $f(1) = 5$; lokális minimum: $f(3) = 1$.
2. A jobb oldal az 58. szakasz tétele. A bal oldalhoz legyen $g(x) = \sin x - x + \frac{x^3}{6}$; $g(0) = 0$, $g'(x) = \cos x - 1 + \frac{x^2}{2}$. Ennek nemnegativitásához legyen $h(x) = \cos x - 1 + \frac{x^2}{2}$: $h(0) = 0$, $h'(x) = x - \sin x \ge 0$. Tehát $h \ge 0$, így $g' \ge 0$, így $g \ge 0$.
3. $f'(x) = 4x^3 - 4 = 0 \iff x = 1$. $f$ szigorúan csökken a $(-\infty, 1]$-en, szigorúan nő az $[1, +\infty)$-en, $f(1) = -2 < 0$, és $\lim_{x \to \pm\infty}f(x) = +\infty$. Mindkét szakaszon pontosan egy gyök van (Bolzano-tétel + szigorú monotonitás).
4. a) $\frac{1}{2}$ (kétszeri L'Hospital). b) $\frac{1}{6}$ (háromszori L'Hospital, vagy a Taylor-polinom: $x - \sin x = \frac{x^3}{6} + \dots$). c) $x^{1/x} = e^{\frac{\ln x}{x}} \to e^0 = 1$. d) $\frac{\ln x}{x^{-2}} \to \frac{1/x}{-2x^{-3}} = -\frac{x^2}{2} \to 0$.
5. $T_3(x) = x - \frac{x^2}{2} + \frac{x^3}{3}$; $\ln 1{,}1 \approx 0{,}1 - 0{,}005 + 0{,}000333 = 0{,}095333$. A maradéktag $\frac{f^{(4)}(c)}{4!}x^4$, ahol $|f^{(4)}(c)| = \frac{6}{(1 + c)^4} \le 6$; a hiba legfeljebb $\frac{6}{24}\cdot 0{,}1^4 = 0{,}000025$. (A valódi érték $0{,}0953102\dots$)
6. $D(f) = \mathbb{R}$; $f'(x) = (1 - x)e^{-x}$, $f''(x) = (x - 2)e^{-x}$. Nő a $(-\infty, 1]$-en, csökken az $[1, +\infty)$-en; abszolút maximum: $f(1) = \frac{1}{e}$. Konkáv a $(-\infty, 2]$-n, konvex a $[2, +\infty)$-en; inflexió a $2$-ben ($f(2) = \frac{2}{e^2}$). $\lim_{x \to +\infty}f(x) = 0$ (L'Hospital: $\frac{x}{e^x} \to 0$), tehát $y = 0$ aszimptota; $\lim_{x \to -\infty}f(x) = -\infty$. Zérushely: $x = 0$.
7. Ha a téglalap csúcsai $(\pm x, 0)$ és $(\pm x, \sqrt{1 - x^2})$, akkor $A(x) = 2x\sqrt{1 - x^2}$, $x \in [0, 1]$. $A'(x) = \frac{2(1 - 2x^2)}{\sqrt{1 - x^2}} = 0 \iff x = \frac{1}{\sqrt{2}}$; ekkor $A = 1$. (A végpontokban $A = 0$.)
8. $y(x) = 3e^{-2x}$.
9. A Lagrange-tétel szerint $\ln(1 + x) - \ln 1 = \frac{1}{1 + c}\cdot x$ valamely $c \in (0, x)$-re, és $\frac{1}{1 + x} < \frac{1}{1 + c} < 1$.

---
