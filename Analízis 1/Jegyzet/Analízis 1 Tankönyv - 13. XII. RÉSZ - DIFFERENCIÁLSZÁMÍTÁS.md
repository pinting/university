# XII. RÉSZ: DIFFERENCIÁLSZÁMÍTÁS

Most visszatérünk a könyv legelső kérdéseinek egyikéhez: mekkora egy mozgó test **pillanatnyi** sebessége? Az 1. szakaszban az átlagsebességet ki tudtuk számolni, a pillanatnyit csak sejteni tudtuk. A határérték fogalmával felfegyverkezve most precíz választ adhatunk. A válasz — a **derivált** — az analízis talán legfontosabb fogalma: a fizikában sebesség és gyorsulás, a geometriában az érintő meredeksége, a közgazdaságtanban határköltség, a biológiában növekedési ráta. Mindegyik ugyanannak a gondolatnak egy-egy megjelenése: **a változás pillanatnyi mértéke**.

## 66. A derivált fogalma

### Két kérdés, egy válasz

**A pillanatnyi sebesség.** Ha $s(t)$ a megtett út a $t$ időpontig, akkor a $[t_0, t]$ intervallumon az átlagsebesség $\frac{s(t) - s(t_0)}{t - t_0}$. A pillanatnyi sebesség ennek a határértéke:
$$v(t_0) = \lim_{t \to t_0}\frac{s(t) - s(t_0)}{t - t_0}.$$

**Az érintő meredeksége.** Egy görbe érintőjét középiskolában a kör esetében úgy definiálták, mint az egyetlen közös ponttal rendelkező egyenest. Általános görbékre ez a definíció használhatatlan (az $y = x^3$ görbét az $x$ tengely az origóban érinti, mégis „átmetszi”; egy szinuszgörbe érintője végtelen sok pontban metszheti a görbét). A helyes gondolat: vegyük a görbe két pontját, $(a, f(a))$-t és $(x, f(x))$-et, és húzzuk meg a rajtuk átmenő **szelőt**. Ennek meredeksége
$$\frac{f(x) - f(a)}{x - a}.$$
Ha most $x$-et közelítjük $a$-hoz, a szelő egyre inkább az érintő helyzetébe fordul. Az érintő meredeksége tehát a szelőmeredekségek határértéke.

A fizikai és a geometriai kérdés **ugyanarra a határértékre** vezet. Ez nem véletlen: az út–idő grafikon érintőjének meredeksége éppen a pillanatnyi sebesség.

> **Definíció (derivált).** Az $f$ függvény **differenciálható** az $a$ pontban, ha $f$ értelmezve van $a$ egy környezetében, és a
> $$f'(a) = \lim_{x \to a}\frac{f(x) - f(a)}{x - a}$$
> határérték **létezik és véges**. Az $f'(a)$ számot az $f$ függvény $a$-beli **deriváltjának** vagy **differenciálhányadosának** nevezzük.

A $\frac{f(x) - f(a)}{x - a}$ törtet **differenciahányadosnak** nevezzük; jelölése $\frac{\Delta f}{\Delta x}$ vagy $\frac{\Delta y}{\Delta x}$ (a $\Delta$ a „különbség, megváltozás” jele). A derivált tehát a differenciahányados határértéke: **a függvényérték megváltozásának és a változó megváltozásának aránya, amikor az utóbbi nullához tart**.

**A $h$-s alak.** A $h = x - a$ helyettesítéssel (az 51. szakasz kompozíciós tétele szerint) ugyanez a határérték így is írható:
$$f'(a) = \lim_{h \to 0}\frac{f(a + h) - f(a)}{h}.$$
Számolásnál gyakran ez a kényelmesebb.

**Jelölések.** $f'(a)$ (Lagrange), $\dot{f}(a)$ (Newton; a fizikában időszerinti deriváltra), $\left.\frac{df}{dx}\right|_{x = a}$ (Leibniz). Ha $y = f(x)$, akkor $y'(a)$ vagy $\left.\frac{dy}{dx}\right|_{x = a}$. A Leibniz-féle $\frac{dy}{dx}$ jelölés a $\frac{\Delta y}{\Delta x}$ határértékére utal; bár nem valódi tört, gyakran úgy viselkedik, mintha az volna (lásd a 68–69. szakaszt).

> **Definíció (érintő).** Ha $f$ differenciálható $a$-ban, akkor az
> $$y = f(a) + f'(a)(x - a)$$
> egyenest a grafikon $(a, f(a))$ pontbeli **érintőjének** nevezzük.

Ez az az egyenes, amely átmegy az $(a, f(a))$ ponton, és meredeksége $f'(a)$.

> **Definíció (derivált függvény).** Az $f$ **derivált függvénye** az az $f'$ függvény, amely azokban a pontokban értelmezett, ahol $f$ differenciálható, és értéke ott $f'(x)$.

### Kidolgozott példák

**1. Lineáris függvény.** $f(x) = mx + b$:
$$f'(x) = \lim_{h \to 0}\frac{m(x + h) + b - (mx + b)}{h} = \lim_{h \to 0}\frac{mh}{h} = m.$$
A lineáris függvény deriváltja a meredeksége, és az érintője önmaga — ahogy lennie kell. Speciálisan az állandó függvény deriváltja $0$.

**2. A négyzetfüggvény.** $f(x) = x^2$:
$$f'(x) = \lim_{h \to 0}\frac{(x + h)^2 - x^2}{h} = \lim_{h \to 0}\frac{2xh + h^2}{h} = \lim_{h \to 0}(2x + h) = 2x.$$
Az 1. szakasz kövének sebessége tehát, ha $s(t) = 5t^2$, a $t$ időpontban $10t$; az $1$. másodpercben $10$ m/s, ahogy a numerikus kísérlet sugallta.

**3. A reciprokfüggvény.** $f(x) = \frac{1}{x}$, $x \neq 0$:
$$f'(x) = \lim_{h \to 0}\frac{\frac{1}{x + h} - \frac{1}{x}}{h} = \lim_{h \to 0}\frac{x - (x + h)}{h\,x(x + h)} = \lim_{h \to 0}\frac{-1}{x(x + h)} = -\frac{1}{x^2}.$$

**4. A négyzetgyökfüggvény.** $f(x) = \sqrt{x}$, $x > 0$, gyöktelenítéssel:
$$f'(x) = \lim_{h \to 0}\frac{\sqrt{x + h} - \sqrt{x}}{h} = \lim_{h \to 0}\frac{(x + h) - x}{h(\sqrt{x + h} + \sqrt{x})} = \lim_{h \to 0}\frac{1}{\sqrt{x + h} + \sqrt{x}} = \frac{1}{2\sqrt{x}}.$$
(Itt a $\sqrt{\phantom{x}}$ folytonosságát használtuk.)

> **Tétel.** Minden $n \in \mathbb{N}$-re $(x^n)' = nx^{n - 1}$.

*Bizonyítás.* Az $y^n - x^n$ különbség szorzattá alakítható:
$$y^n - x^n = (y - x)\left(y^{n-1} + y^{n-2}x + \dots + yx^{n-2} + x^{n-1}\right).$$
(Ez a mértani sorozat összegképletének egy alakja; kibontással ellenőrizhető, a tagok teleszkopikusan kiesnek.) Ezért
$$\lim_{y \to x}\frac{y^n - x^n}{y - x} = \lim_{y \to x}\left(y^{n-1} + y^{n-2}x + \dots + x^{n-1}\right) = n x^{n-1},$$
hiszen a zárójelben $n$ tag áll, és mindegyik $x^{n-1}$-hez tart. $\blacksquare$

### Differenciálhatóság és folytonosság

> **Tétel.** Ha $f$ differenciálható $a$-ban, akkor folytonos $a$-ban.

*Bizonyítás.* Írjuk a különbséget szorzat alakba ($x \neq a$):
$$f(x) - f(a) = \frac{f(x) - f(a)}{x - a}\cdot(x - a) \to f'(a)\cdot 0 = 0 \qquad (x \to a),$$
a szorzat határértékére vonatkozó tétel szerint (mindkét tényezőnek van véges határértéke). Tehát $f(x) \to f(a)$. $\blacksquare$

Figyeljük meg, hogy a bizonyítás lényegesen kihasználta a derivált **végességét**.

**A megfordítás hamis: folytonos $\not\Rightarrow$ differenciálható.** A klasszikus ellenpélda $f(x) = |x|$ a $0$-ban. Itt
$$\frac{f(x) - f(0)}{x - 0} = \frac{|x|}{x} = \operatorname{sgn}(x) \qquad (x \neq 0),$$
amelynek a $0$-ban nincs határértéke (jobbról $1$, balról $-1$). A grafikon az origóban „töréspontot” mutat: két különböző irányú egyenes találkozik, és nincs egyértelmű érintő.

Egy másik típusú ellenpélda: $f(x) = \sqrt[3]{x}$ a $0$-ban. Itt
$$\frac{\sqrt[3]{x} - 0}{x - 0} = \frac{1}{\sqrt[3]{x^2}} \to +\infty,$$
a differenciahányados határértéke létezik, de végtelen. A grafikonnak van érintője — a függőleges $y$ tengely —, de ennek meredeksége nem valós szám. Ilyenkor azt mondjuk, hogy a függvény deriváltja **végtelen**, de a függvény nem differenciálható.

**Történeti megjegyzés.** Sokáig úgy hitték, hogy a folytonos függvények „legfeljebb néhány sarokponttól eltekintve” differenciálhatók; számos „bizonyítás” is született erre. Weierstrass azonban 1872-ben olyan folytonos függvényt konstruált, amely **sehol sem** differenciálható (a konstrukció és története megtalálható Szőkefalvi-Nagy Béla *Valós függvények és függvénysorok* című könyvében). A felfedezés megdöbbentette a kor matematikusait; Charles Hermite így írt egy levelében: *„Rémülettel és borzalommal fordulok el ettől a siralmas fekélytől: függvények, amelyeknek nincs deriváltjuk.”* Ma tudjuk, hogy bizonyos értelemben a „legtöbb” folytonos függvény ilyen — a szép, differenciálható függvények a kivételek.

> **Definíció (féloldali derivált).** Az $f$ **jobbról differenciálható** $a$-ban, ha értelmezve van az $[a, a + \delta)$-n, és a
> $$f'_+(a) = \lim_{x \to a+0}\frac{f(x) - f(a)}{x - a}$$
> határérték létezik és véges. Hasonlóan definiáljuk a **bal oldali deriváltat**, $f'_-(a)$-t.

**Példa.** $|x|$ esetén $f'_+(0) = 1$ és $f'_-(0) = -1$.

Nyilvánvalóan (a 47. szakasz szerint): **$f'(a)$ pontosan akkor létezik, ha mindkét féloldali derivált létezik és egyenlő.**

## 67. Differenciálási szabályok

A deriváltat ritkán számoljuk a definícióból. Ehelyett — ahogy a határértékeknél — szabályokat bizonyítunk, amelyekkel bonyolult függvények deriváltja egyszerűbbekéből összerakható.

> **Tétel (differenciálási szabályok).** Legyen $f$ és $g$ differenciálható $a$-ban, és $c \in \mathbb{R}$. Ekkor $cf$, $f \pm g$ és $f\cdot g$ is differenciálható $a$-ban, és
>
> 1. $(cf)'(a) = c\,f'(a)$;
> 2. $(f \pm g)'(a) = f'(a) \pm g'(a)$;
> 3. $(f\cdot g)'(a) = f'(a)g(a) + f(a)g'(a)$ **(szorzatszabály)**.
>
> Ha ezen felül $g(a) \neq 0$, akkor $\frac{1}{g}$ és $\frac{f}{g}$ is differenciálható $a$-ban, és
>
> 4. $\displaystyle\left(\frac{1}{g}\right)'(a) = -\frac{g'(a)}{g(a)^2}$;
> 5. $\displaystyle\left(\frac{f}{g}\right)'(a) = \frac{f'(a)g(a) - f(a)g'(a)}{g(a)^2}$ **(hányadosszabály)**.

*Bizonyítás.*

**1. és 2.** A differenciahányadosok:
$$\frac{cf(x) - cf(a)}{x - a} = c\cdot\frac{f(x) - f(a)}{x - a}, \qquad \frac{(f + g)(x) - (f + g)(a)}{x - a} = \frac{f(x) - f(a)}{x - a} + \frac{g(x) - g(a)}{x - a},$$
és a határérték-szabályok szerint ezek $cf'(a)$-hoz, illetve $f'(a) + g'(a)$-hoz tartanak.

**3. (szorzatszabály).** A bevált fogás: adjunk hozzá és vonjunk ki egy alkalmas tagot ($f(a)g(x)$-et):
$$\frac{f(x)g(x) - f(a)g(a)}{x - a} = \frac{f(x)g(x) - f(a)g(x) + f(a)g(x) - f(a)g(a)}{x - a} = \frac{f(x) - f(a)}{x - a}\cdot g(x) + f(a)\cdot\frac{g(x) - g(a)}{x - a}.$$
Ha $x \to a$, akkor az első tag $f'(a)g(a)$-hoz tart — itt felhasználtuk, hogy $g$ **differenciálható, tehát folytonos** $a$-ban, így $g(x) \to g(a)$ —, a második tag pedig $f(a)g'(a)$-hoz.

**4.** Mivel $g$ folytonos $a$-ban és $g(a) \neq 0$, az előjeltartás szerint $a$ egy környezetében $g(x) \neq 0$, így $\frac{1}{g}$ ott értelmezett. Közös nevezőre hozva:
$$\frac{\frac{1}{g(x)} - \frac{1}{g(a)}}{x - a} = \frac{g(a) - g(x)}{(x - a)\,g(x)g(a)} = -\frac{g(x) - g(a)}{x - a}\cdot\frac{1}{g(x)g(a)} \to -g'(a)\cdot\frac{1}{g(a)^2}.$$

**5.** A 3. és 4. pont alkalmazása az $f\cdot\frac{1}{g}$ szorzatra:
$$\left(\frac{f}{g}\right)' = f'\cdot\frac{1}{g} + f\cdot\left(-\frac{g'}{g^2}\right) = \frac{f'g - fg'}{g^2}. \qquad \blacksquare$$

**Figyelem:** a szorzat deriváltja **nem** a deriváltak szorzata! $(x\cdot x)' = (x^2)' = 2x$, míg $x'\cdot x' = 1$. A szorzatszabály szemléletes magyarázata: ha egy téglalap oldalai $f$ és $g$, és mindkettő kicsit megnő ($\Delta f$, $\Delta g$), akkor a terület megváltozása $f\Delta g + g\Delta f + \Delta f\Delta g$; az utolsó tag „másodrendűen kicsi”, és a határátmenetnél eltűnik.

**Kidolgozott példák.**

- $\left(3x^4 - 5x^2 + 7\right)' = 12x^3 - 10x$ (az 1., 2. szabály és az $(x^n)'$ képlet).
- $\left((x^2 + 1)(x^3 - x)\right)' = 2x(x^3 - x) + (x^2 + 1)(3x^2 - 1) = 5x^4 - 1$. (Ellenőrzés kibontással: $(x^2 + 1)(x^3 - x) = x^5 - x$, aminek deriváltja valóban $5x^4 - 1$.)
- $\left(\frac{x}{x^2 + 1}\right)' = \frac{1\cdot(x^2 + 1) - x\cdot 2x}{(x^2 + 1)^2} = \frac{1 - x^2}{(x^2 + 1)^2}$.
- Negatív egész kitevőre: $(x^{-n})' = \left(\frac{1}{x^n}\right)' = -\frac{nx^{n-1}}{x^{2n}} = -nx^{-n-1}$. Tehát az $(x^k)' = kx^{k-1}$ képlet minden $k \in \mathbb{Z}$-re érvényes ($x \neq 0$).

## 68. A láncszabály

Hogyan deriváljuk a $(x^2 + 1)^{13}$ függvényt? Kibontani reménytelen. Ez egy **összetett függvény**: a belső függvény $x^2 + 1$, a külső $u^{13}$. A láncszabály megmondja, hogyan kell ilyen függvényt deriválni.

**Az ötlet.** Ha $h = g \circ f$, akkor
$$\frac{h(x) - h(a)}{x - a} = \frac{g(f(x)) - g(f(a))}{f(x) - f(a)}\cdot\frac{f(x) - f(a)}{x - a}.$$
Az első tényező a $g$ differenciahányadosa az $f(a)$ pontban, és $g'(f(a))$-hoz tart; a második $f'(a)$-hoz. Ez kész bizonyításnak tűnik, de van egy hibája: **az $f(x) - f(a)$ nevező nulla lehet** akár $a$-hoz tetszőlegesen közeli $x$-ekre is (például ha $f$ állandó, vagy ha $f(x) = x^2\sin\frac{1}{x}$ típusú függvény, amely végtelen sokszor felveszi az $f(0)$ értéket a $0$ körül). A hibát egy ügyes átfogalmazással küszöböljük ki, amely egyáltalán nem használ hányadost.

> **Tétel (a differenciálhatóság ekvivalens jellemzése).** Az $f$ pontosan akkor differenciálható $a$-ban, ha létezik olyan, az $a$-ban **folytonos** $f^*$ függvény (az $a$ egy környezetében értelmezve), amelyre
> $$f(x) - f(a) = f^*(x)\,(x - a)$$
> minden $x$-re ebben a környezetben. Ekkor $f'(a) = f^*(a)$.

Az $f^*$ függvény szemléletesen az $(a, f(a))$ ponton és az $(x, f(x))$ ponton átmenő szelő meredeksége, kiegészítve az $a$-ban az érintő meredekségével.

*Bizonyítás.* **($\Rightarrow$)** Ha $f'(a)$ létezik, definiáljuk
$$f^*(x) = \frac{f(x) - f(a)}{x - a} \quad (x \neq a), \qquad f^*(a) = f'(a).$$
Ekkor az egyenlőség $x \neq a$-ra a definícióból, $x = a$-ra triviálisan ($0 = 0$) teljesül. A derivált definíciója éppen azt mondja, hogy $\lim_{x \to a} f^*(x) = f'(a) = f^*(a)$, azaz $f^*$ folytonos $a$-ban.

**($\Leftarrow$)** Ha $f^*$ folytonos $a$-ban, akkor $x \neq a$-ra $\frac{f(x) - f(a)}{x - a} = f^*(x) \to f^*(a)$, tehát a derivált létezik, és $f'(a) = f^*(a)$. $\blacksquare$

> **Tétel (láncszabály).** Ha $f$ differenciálható az $a$ pontban, $g$ pedig az $f(a)$ pontban, akkor $h = g \circ f$ differenciálható $a$-ban, és
> $$h'(a) = g'(f(a))\cdot f'(a).$$

*Bizonyítás.* Az előző tétel szerint vannak olyan $f^*$ (az $a$-ban folytonos) és $g^*$ (az $f(a)$-ban folytonos) függvények, hogy
$$f(x) - f(a) = f^*(x)(x - a), \qquad g(u) - g(f(a)) = g^*(u)\big(u - f(a)\big),$$
és $f^*(a) = f'(a)$, $g^*(f(a)) = g'(f(a))$. A második egyenlőségbe $u = f(x)$-et helyettesítve, majd az elsőt felhasználva:
$$h(x) - h(a) = g(f(x)) - g(f(a)) = g^*(f(x))\big(f(x) - f(a)\big) = \underbrace{g^*(f(x))\,f^*(x)}_{h^*(x)}\,(x - a).$$
Itt sehol sem osztottunk! Már csak azt kell látnunk, hogy $h^*$ folytonos $a$-ban. Az $f$ differenciálható, tehát folytonos $a$-ban; $g^*$ folytonos $f(a)$-ban; így az 53. szakasz szerint $g^* \circ f$ folytonos $a$-ban. Az $f^*$ is folytonos $a$-ban, tehát a szorzatuk, $h^*$ is. Az ekvivalens jellemzés szerint $h$ differenciálható $a$-ban, és
$$h'(a) = h^*(a) = g^*(f(a))\cdot f^*(a) = g'(f(a))\cdot f'(a). \qquad \blacksquare$$

**Röviden:** $\big(g(f(x))\big)' = g'(f(x))\cdot f'(x)$ — **a külső függvény deriváltja a belső függvénynél, szorozva a belső függvény deriváltjával.**

**A Leibniz-jelöléssel** a láncszabály különösen sugalmazó: ha $u = f(x)$ és $z = g(u)$, akkor
$$\frac{dz}{dx} = \frac{dz}{du}\cdot\frac{du}{dx},$$
mintha a $du$-k „egyszerűsödnének”. Ez természetesen csak emlékeztető, nem bizonyítás — de nagyon jó emlékeztető. Szemléletesen: ha $z$ kétszer olyan gyorsan változik, mint $u$, és $u$ háromszor olyan gyorsan, mint $x$, akkor $z$ hatszor olyan gyorsan változik, mint $x$.

**Kidolgozott példák.**

- $\left((x^2 + 1)^{13}\right)'$: a külső függvény $g(u) = u^{13}$, $g'(u) = 13u^{12}$; a belső $f(x) = x^2 + 1$, $f'(x) = 2x$. Tehát
$$\left((x^2 + 1)^{13}\right)' = 13(x^2 + 1)^{12}\cdot 2x = 26x(x^2 + 1)^{12}.$$

- $\left(\sqrt{1 - x^2}\right)' = \frac{1}{2\sqrt{1 - x^2}}\cdot(-2x) = -\frac{x}{\sqrt{1 - x^2}}$ ($|x| < 1$).
- $\left(\frac{1}{(3x - 1)^2}\right)' = -2(3x - 1)^{-3}\cdot 3 = -\frac{6}{(3x - 1)^3}$.
- Többszörös kompozíció: $\left(\sqrt{1 + (x^2 + 1)^3}\right)' = \frac{1}{2\sqrt{1 + (x^2 + 1)^3}}\cdot 3(x^2 + 1)^2\cdot 2x$. Belülről kifelé haladva minden „rétegnél” szorzunk a réteg deriváltjával.

## 69. Az inverz függvény deriváltja

Ha egy függvény deriváltját ismerjük, ki tudjuk-e számolni az inverzéét? Geometriailag a válasz kézenfekvő: az inverz grafikonja az eredeti tükörképe az $y = x$ egyenesre (14. szakasz). A tükrözés egy $m$ meredekségű egyenest $\frac{1}{m}$ meredekségűbe visz (hiszen felcseréli a $\Delta x$ és $\Delta y$ szerepét). Ezért az inverz érintőjének meredeksége az eredeti érintő meredekségének reciproka kell legyen — feltéve, hogy az nem nulla (a vízszintes érintő tükörképe függőleges, annak meredeksége nem valós szám).

> **Tétel (az inverz függvény deriváltja).** Legyen $f$ szigorúan monoton és folytonos az $[a, b]$-n, $c \in (a, b)$, és tegyük fel, hogy $f$ differenciálható $c$-ben, és $f'(c) \neq 0$. Ekkor $\varphi = f^{-1}$ differenciálható a $d = f(c)$ pontban, és
> $$\varphi'(d) = \frac{1}{f'(c)} = \frac{1}{f'(\varphi(d))}.$$

*Bizonyítás.* Az 55. szakasz szerint $\varphi$ folytonos, tehát $\lim_{v \to d}\varphi(v) = \varphi(d) = c$. A szigorú monotonitás miatt $\varphi$ injektív, így $v \neq d$ esetén $\varphi(v) \neq c$ — ez teszi lehetővé a helyettesítést. A $\varphi$ differenciahányadosát írjuk fel úgy, hogy $u = \varphi(v)$, azaz $v = f(u)$:
$$\frac{\varphi(v) - \varphi(d)}{v - d} = \frac{u - c}{f(u) - f(c)} = \frac{1}{\frac{f(u) - f(c)}{u - c}}.$$
Ha $v \to d$, akkor $u = \varphi(v) \to c$ (és $u \neq c$), tehát az 51. szakasz kompozíciós tétele szerint a jobb oldal $\frac{1}{f'(c)}$-hez tart (itt használjuk ki, hogy $f'(c) \neq 0$). $\blacksquare$

**Memoriter (Leibniz-jelöléssel).** Ha $y = f(x)$ és $x = \varphi(y)$, akkor
$$\frac{dx}{dy} = \frac{1}{\frac{dy}{dx}}.$$
(Ez a láncszabályból is „kiolvasható”: a $\varphi(f(x)) = x$ azonosságot deriválva $\varphi'(f(x))\cdot f'(x) = 1$ — de ehhez előre tudni kellene, hogy $\varphi$ differenciálható; ezt a tétel biztosítja.)

**Kidolgozott példa: a gyökfüggvények deriváltja.** Legyen $k \in \mathbb{N}$, és $\varphi(y) = \sqrt[k]{y}$ ($y > 0$), amely az $f(x) = x^k$ ($x > 0$) függvény inverze. Itt $f'(x) = kx^{k-1} \neq 0$, tehát
$$\varphi'(y) = \frac{1}{f'(\varphi(y))} = \frac{1}{k\left(\sqrt[k]{y}\right)^{k-1}} = \frac{1}{k}\,y^{-\frac{k-1}{k}} = \frac{1}{k}\,y^{\frac{1}{k} - 1}.$$
Vagyis $\left(x^{1/k}\right)' = \frac{1}{k}x^{\frac{1}{k} - 1}$ — ugyanaz a szabály, mint az egész kitevőkre! Speciálisan $(\sqrt{x})' = \frac{1}{2\sqrt{x}}$, egyezésben a 66. szakasz 4. példájával. A láncszabállyal ebből $\left(x^{p/q}\right)' = \left(\left(x^{1/q}\right)^p\right)' = p\left(x^{1/q}\right)^{p-1}\cdot\frac{1}{q}x^{\frac{1}{q} - 1} = \frac{p}{q}x^{\frac{p}{q} - 1}$. A 72. szakaszban látni fogjuk, hogy az $(x^a)' = ax^{a-1}$ szabály minden valós $a$-ra érvényes.

**Mi történik, ha $f'(c) = 0$?** Az $f(x) = x^3$ inverze $\sqrt[3]{x}$, és $f'(0) = 0$. A 66. szakaszban láttuk, hogy $\sqrt[3]{x}$ a $0$-ban nem differenciálható (a derivált végtelen) — összhangban a geometriai képpel: a vízszintes érintő tükörképe függőleges.

## 70. Elemi függvények deriváltjai I: polinomok és trigonometrikus függvények

> **Tétel.** $(a_nx^n + \dots + a_1x + a_0)' = na_nx^{n-1} + \dots + 2a_2x + a_1$.

*Bizonyítás.* Az összeg- és konstansszoros-szabályból és az $(x^k)' = kx^{k-1}$ képletből, tagonként. $\blacksquare$

A polinomok deriváltja tehát ismét polinom, eggyel kisebb fokú. A trigonometrikus függvények deriválásához két nevezetes határértékre van szükség.

> **Tétel (nevezetes határérték).**
> $$\lim_{x \to 0}\frac{\sin x}{x} = 1.$$

Vegyük észre, hogy ez a határérték éppen a $\sin$ függvény $0$-beli deriváltja: $\frac{\sin x - \sin 0}{x - 0} \to \sin'(0)$. A tétel tehát azt mondja, hogy a $\sin$ grafikonja az origóban $45°$-os szögben metszi az $x$ tengelyt — és ez csak radiánban mérve igaz! (Fokban mérve a határérték $\frac{\pi}{180}$ volna.)

*Bizonyítás.* Legyen $0 < x < \frac{\pi}{2}$. Az alapvető geometriai egyenlőtlenség:
$$\sin x < x < \tan x.$$
Az első egyenlőtlenséget az 58. szakaszban láttuk be. A második a következő megfontolásból adódik: tekintsük az egységkörön az $A = (1, 0)$ pontot és az $x$ ívhez tartozó $P$ pontot, és húzzuk meg a körhöz az $A$ pontban az érintőt; ezt a $P$-n átmenő origó-kezdetű félegyenes a $T = (1, \tan x)$ pontban metszi. A körhöz a $P$ pontban húzott érintő az $AT$ szakaszt egy $M$ pontban metszi. Az $x$ hosszúságú $AP$ ív és az $AP$ húr által határolt konvex alakzatot tartalmazza az $AMP$ háromszög, és **ha egy konvex alakzatot egy másik tartalmaz, akkor a tartalmazó kerülete nagyobb** — így $x < |AM| + |MP|$. Másrészt a $P$-beli érintő merőleges az $OP$ sugárra, így az $MPT$ háromszög $P$-nél derékszögű, tehát $|MP| < |MT|$; innen $x < |AM| + |MP| < |AM| + |MT| = |AT| = \tan x$. (Egy másik szemléltetés területekkel: az egységkör $x$ szögű körcikkének területe $\frac{x}{2}$, és ez a körcikk tartalmazza az $(0,0), (1,0), P$ háromszöget, amelynek területe $\frac{\sin x}{2}$, és benne van a $(0,0), (1,0), (1, \tan x)$ háromszögben, amelynek területe $\frac{\tan x}{2}$.)

Osszuk el az egyenlőtlenséget a pozitív $\sin x$-szel:
$$1 < \frac{x}{\sin x} < \frac{1}{\cos x},$$
majd vegyük a reciprokokat (ami megfordítja az irányt):
$$\cos x < \frac{\sin x}{x} < 1.$$
Ha $x \to 0 + 0$, akkor $\cos x \to \cos 0 = 1$ (folytonosság), tehát a rendőrelv szerint
$$\lim_{x \to 0+0}\frac{\sin x}{x} = 1.$$
A bal oldali határértékhez vegyük észre, hogy $\frac{\sin x}{x}$ **páros** függvény: $\frac{\sin(-x)}{-x} = \frac{-\sin x}{-x} = \frac{\sin x}{x}$. Tehát a bal oldali határérték is $1$. $\blacksquare$

**Visszatérés a kör területéhez.** Az 1. szakaszban a körbe írt szabályos $n$-szög területe $T_n = \frac{n}{2}\sin\frac{2\pi}{n}$ volt. Most már be tudjuk bizonyítani, hogy $T_n \to \pi$:
$$T_n = \pi\cdot\frac{\sin\frac{2\pi}{n}}{\frac{2\pi}{n}} \to \pi\cdot 1 = \pi,$$
az átviteli elv szerint, hiszen $\frac{2\pi}{n} \to 0$. Archimédész kimerítéses módszere tehát valóban a kör területéhez vezet.

> **Tétel.** $\displaystyle \lim_{x \to 0}\frac{\cos x - 1}{x} = 0$, azaz $\cos'(0) = 0$.

*Bizonyítás.* A félszögképlet szerint $1 - \cos x = 2\sin^2\frac{x}{2}$, tehát
$$\frac{\cos x - 1}{x} = -\frac{2\sin^2\frac{x}{2}}{x} = -\sin\frac{x}{2}\cdot\frac{\sin\frac{x}{2}}{\frac{x}{2}} \to -0\cdot 1 = 0,$$
ahol a második tényezőre az előző tételt alkalmaztuk ($\frac{x}{2} \to 0$ helyettesítéssel). $\blacksquare$

> **Tétel.** Minden $x \in \mathbb{R}$-re $\sin' x = \cos x$ és $\cos' x = -\sin x$.

*Bizonyítás.* Az addíciós képlettel:
$$\frac{\sin(x + h) - \sin x}{h} = \frac{\sin x\cos h + \cos x\sin h - \sin x}{h} = \cos x\cdot\frac{\sin h}{h} + \sin x\cdot\frac{\cos h - 1}{h} \to \cos x\cdot 1 + \sin x\cdot 0 = \cos x.$$
A koszinuszra a $\cos x = \sin\left(\frac{\pi}{2} - x\right)$ azonosságból, a láncszabállyal:
$$(\cos x)' = \cos\left(\frac{\pi}{2} - x\right)\cdot(-1) = -\sin x. \qquad \blacksquare$$

**Szemléletesen:** a $\sin$ ott a legmeredekebb, ahol nulla (a $\cos$ ott $\pm 1$), és ott vízszintes az érintője, ahol maximuma vagy minimuma van (a $\cos$ ott $0$). Ha a $\sin$ grafikonját „lederiváljuk”, $\frac{\pi}{2}$-vel balra tolt képét, azaz a $\cos$-t kapjuk.

> **Tétel.** $\displaystyle \tan' x = \frac{1}{\cos^2 x} = 1 + \tan^2 x$ és $\displaystyle \cot' x = -\frac{1}{\sin^2 x}$ (az értelmezési tartományukon).

*Bizonyítás.* A hányadosszabállyal:
$$(\tan x)' = \frac{\cos x\cos x - \sin x(-\sin x)}{\cos^2 x} = \frac{\cos^2 x + \sin^2 x}{\cos^2 x} = \frac{1}{\cos^2 x},$$
$$(\cot x)' = \frac{-\sin x\sin x - \cos x\cos x}{\sin^2 x} = -\frac{1}{\sin^2 x}. \qquad \blacksquare$$

> **Tétel (az arkuszfüggvények deriváltjai).** Ha $-1 < x < 1$, akkor
> $$(\arcsin x)' = \frac{1}{\sqrt{1 - x^2}}, \qquad (\arccos x)' = -\frac{1}{\sqrt{1 - x^2}};$$
> továbbá minden $x \in \mathbb{R}$-re
> $$(\arctan x)' = \frac{1}{1 + x^2}, \qquad (\operatorname{arccot} x)' = -\frac{1}{1 + x^2}.$$

*Bizonyítás.* **$\arcsin$:** a $\sin$ a $\left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$-n szigorúan monoton, és a belső pontokban $\sin' t = \cos t > 0$. Az inverz deriválási szabálya szerint, $t = \arcsin x$ jelöléssel,
$$(\arcsin x)' = \frac{1}{\cos(\arcsin x)} = \frac{1}{\sqrt{1 - x^2}},$$
az 59. szakasz $\cos(\arcsin x) = \sqrt{1 - x^2}$ azonossága szerint.

**$\arccos$:** az $\arccos x = \frac{\pi}{2} - \arcsin x$ azonosságból.

**$\arctan$:** a $\tan$ a $\left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$-n szigorúan monoton növekedő, és $\tan' t = 1 + \tan^2 t \neq 0$. Tehát
$$(\arctan x)' = \frac{1}{1 + \tan^2(\arctan x)} = \frac{1}{1 + x^2}.$$
**$\operatorname{arccot}$:** az $\operatorname{arccot} x = \frac{\pi}{2} - \arctan x$ azonosságból. $\blacksquare$

Figyelemre méltó: az arkuszfüggvények (amelyek „transzcendens” függvények) deriváltjai **algebrai** kifejezések. Ez a következő félév integrálszámításában lesz fontos: például $\frac{1}{1 + x^2}$ primitív függvénye az $\arctan x$.

## 71. Az e szám mint függvényhatárérték

Az exponenciális és a logaritmusfüggvény deriválásához az $e$ szám sorozatos definícióját függvényhatárértékké kell átalakítanunk. A sorozat csak egész $n$-ekre ad információt; nekünk tetszőleges valós $x \to \pm\infty$-re (és $t \to 0$-ra) kell.

> **Tétel.**
> $$\lim_{x \to +\infty}\left(1 + \frac{1}{x}\right)^x = \lim_{x \to -\infty}\left(1 + \frac{1}{x}\right)^x = e.$$

*Bizonyítás.* **$x \to +\infty$.** Az átviteli elvet használjuk. Legyen $x_n \to +\infty$ tetszőleges sorozat (feltehetjük, hogy $x_n \ge 1$), és legyen $k_n = [x_n]$, tehát $k_n \le x_n < k_n + 1$ és $k_n \to +\infty$. Mivel $1 + \frac{1}{t}$ csökken, és a hatványozás az alapban és (egynél nagyobb alapra) a kitevőben is monoton növekedő, ezért
$$\left(1 + \frac{1}{k_n + 1}\right)^{k_n} < \left(1 + \frac{1}{x_n}\right)^{x_n} < \left(1 + \frac{1}{k_n}\right)^{k_n + 1}.$$
(Balra kisebb alap és kisebb kitevő, jobbra nagyobb alap és nagyobb kitevő.) A két szélső sorozat:
$$\left(1 + \frac{1}{k_n + 1}\right)^{k_n} = \left(1 + \frac{1}{k_n + 1}\right)^{k_n + 1}\cdot\left(1 + \frac{1}{k_n + 1}\right)^{-1} \to e\cdot 1 = e,$$
$$\left(1 + \frac{1}{k_n}\right)^{k_n + 1} = \left(1 + \frac{1}{k_n}\right)^{k_n}\cdot\left(1 + \frac{1}{k_n}\right) \to e\cdot 1 = e.$$
(Itt felhasználtuk, hogy ha $k_n \to +\infty$ egészek, akkor $\left(1 + \frac{1}{k_n}\right)^{k_n} \to e$: adott $\varepsilon$-hoz van olyan $M$, hogy minden $m \ge M$ egészre $\left|\left(1 + \frac{1}{m}\right)^m - e\right| < \varepsilon$, és egy idő után $k_n \ge M$.) A rendőrelv szerint minden $x_n \to +\infty$ sorozatra $\left(1 + \frac{1}{x_n}\right)^{x_n} \to e$, tehát az átviteli elv szerint kész.

**$x \to -\infty$.** Írjuk $x = -y$ alakba, ahol $y \to +\infty$:
$$\left(1 - \frac{1}{y}\right)^{-y} = \left(\frac{y}{y - 1}\right)^{y} = \left(1 + \frac{1}{y - 1}\right)^{y - 1}\cdot\left(1 + \frac{1}{y - 1}\right).$$
Ha $y \to +\infty$, akkor $y - 1 \to +\infty$, így az első tényező az előző eset szerint $e$-hez, a második $1$-hez tart. $\blacksquare$

> **Tétel.** Minden $b \in \mathbb{R}$-re $\displaystyle\lim_{x \to \pm\infty}\left(1 + \frac{b}{x}\right)^x = e^b$.

*Bizonyítás.* A $b = 0$ eset triviális. Ha $b \neq 0$, helyettesítsünk $u = \frac{x}{b}$-t; ha $x \to +\infty$, akkor $u \to \pm\infty$ ($b$ előjelétől függően). Ekkor
$$\left(1 + \frac{b}{x}\right)^x = \left[\left(1 + \frac{1}{u}\right)^u\right]^b \to e^b,$$
az előző tétel, a kompozíciós tétel és a $t \mapsto t^b$ hatványfüggvény folytonossága szerint. $\blacksquare$

Ez a „folytonos kamatozás” képlete: ha évi $b$ (pl. $b = 0{,}05$, azaz $5\%$) kamatot $x$ részletben tőkésítenek, akkor egy év alatt a tőke $\left(1 + \frac{b}{x}\right)^x$-szeresére nő, ami $x \to \infty$ esetén $e^b$-hez tart.

> **Tétel.** $\displaystyle \lim_{t \to 0}(1 + t)^{1/t} = e$.

*Bizonyítás.* Az $x = \frac{1}{t}$ helyettesítéssel: ha $t \to 0 + 0$, akkor $x \to +\infty$, és $(1 + t)^{1/t} = \left(1 + \frac{1}{x}\right)^x \to e$; ha $t \to 0 - 0$, akkor $x \to -\infty$, és ugyanez az eredmény. A két féloldali határérték egyenlő, tehát a kétoldali is. $\blacksquare$

## 72. A logaritmus és az exponenciális függvény deriváltja

> **Tétel.** Ha $a > 0$, $a \neq 1$, akkor
> $$\lim_{h \to 0}\frac{\log_a(1 + h)}{h} = \log_a e.$$

*Bizonyítás.* A logaritmus azonosságai és folytonossága szerint
$$\frac{\log_a(1 + h)}{h} = \log_a\left((1 + h)^{1/h}\right) \to \log_a e,$$
az előző szakasz utolsó tétele és a kompozíciós tétel szerint. $\blacksquare$

> **Tétel.** A $\log_a$ függvény differenciálható minden $x > 0$-ban, és
> $$(\log_a x)' = \frac{\log_a e}{x} = \frac{1}{x\ln a}.$$
> Speciálisan
> $$(\ln x)' = \frac{1}{x}.$$

*Bizonyítás.* A differenciahányadost az $1$-beli viselkedésre vezetjük vissza:
$$\frac{\log_a(x + h) - \log_a x}{h} = \frac{\log_a\left(1 + \frac{h}{x}\right)}{h} = \frac{1}{x}\cdot\frac{\log_a\left(1 + \frac{h}{x}\right)}{\frac{h}{x}}.$$
Ha $h \to 0$, akkor $\frac{h}{x} \to 0$, és az előző tétel szerint a jobb oldal $\frac{1}{x}\log_a e$-hez tart. Végül az áttérési képlet szerint $\log_a e = \frac{\ln e}{\ln a} = \frac{1}{\ln a}$. $\blacksquare$

A természetes logaritmus tehát éppen az a logaritmus, amelynek deriváltja a lehető legegyszerűbb, $\frac{1}{x}$ — ez magyarázza a „természetes” elnevezést.

> **Tétel.** Ha $a > 0$, akkor $a^x$ differenciálható $\mathbb{R}$-en, és
> $$(a^x)' = a^x\ln a. \qquad \text{Speciálisan} \qquad (e^x)' = e^x.$$

*Bizonyítás.* Az $a = 1$ eset triviális. Ha $a \neq 1$, akkor $\varphi(x) = a^x$ az $f(y) = \log_a y$ függvény inverze, és $f'(y) = \frac{1}{y\ln a} \neq 0$. Az inverz deriválási szabálya szerint
$$\varphi'(x) = \frac{1}{f'(\varphi(x))} = \frac{1}{\frac{1}{a^x\ln a}} = a^x\ln a. \qquad \blacksquare$$

Az $e^x$ tehát az a függvény, amely **megegyezik a saját deriváltjával**: minden pontban akkora a meredeksége, mint az értéke. Ez a tulajdonság teszi az analízis legfontosabb függvényévé; a 86. szakaszban látni fogjuk, hogy (konstansszorzótól eltekintve) ez az egyetlen ilyen függvény.

> **Tétel.** Minden $a \in \mathbb{R}$-re és $x > 0$-ra $(x^a)' = a\,x^{a - 1}$.

*Bizonyítás.* Írjuk át exponenciális alakba ($x = e^{\ln x}$ miatt $x^a = e^{a\ln x}$), és alkalmazzuk a láncszabályt:
$$(x^a)' = \left(e^{a\ln x}\right)' = e^{a\ln x}\cdot\frac{a}{x} = x^a\cdot\frac{a}{x} = a\,x^{a - 1}. \qquad \blacksquare$$

Ezzel a hatványfüggvény deriválási szabálya **tetszőleges valós kitevőre** igazolva van: például $\left(x^{\sqrt{2}}\right)' = \sqrt{2}\,x^{\sqrt{2} - 1}$.

**Kidolgozott példa (a „kettős” hatvány).** Mennyi $(x^x)'$, ha $x > 0$? Se nem hatványfüggvény (a kitevő is változik), se nem exponenciális (az alap is változik). Az exponenciális átírás itt is segít:
$$(x^x)' = \left(e^{x\ln x}\right)' = e^{x\ln x}\left(1\cdot\ln x + x\cdot\frac{1}{x}\right) = x^x(\ln x + 1).$$
Általában az $f(x)^{g(x)}$ alakú függvényeket mindig $e^{g(x)\ln f(x)}$ alakba írva deriváljuk.

**A hiperbolikus és az area függvények deriváltjai.** Az $(e^x)' = e^x$ és $(e^{-x})' = -e^{-x}$ szabályokból:
$$(\operatorname{sh} x)' = \operatorname{ch} x, \qquad (\operatorname{ch} x)' = \operatorname{sh} x, \qquad (\operatorname{th} x)' = \frac{\operatorname{ch}^2 x - \operatorname{sh}^2 x}{\operatorname{ch}^2 x} = \frac{1}{\operatorname{ch}^2 x}.$$
(Figyeljük meg: a $\operatorname{ch}$ deriváltjában nincs mínusz előjel, szemben a $\cos$-éval.) Az inverz deriválási szabályával, például:
$$(\operatorname{arsh} x)' = \frac{1}{\operatorname{ch}(\operatorname{arsh} x)} = \frac{1}{\sqrt{1 + \operatorname{sh}^2(\operatorname{arsh} x)}} = \frac{1}{\sqrt{1 + x^2}},$$
és hasonlóan $(\operatorname{arch} x)' = \frac{1}{\sqrt{x^2 - 1}}$ ($x > 1$), $(\operatorname{arth} x)' = \frac{1}{1 - x^2}$ ($|x| < 1$). (Ugyanezt az eredményt a 65. szakasz logaritmusos képleteinek deriválásával is megkaphatjuk.)

### Deriválttáblázat

Összefoglalásként az elemi függvények deriváltjai (mindegyik az értelmezési tartomány belsejében érvényes):

| $f(x)$ | $f'(x)$ | | $f(x)$ | $f'(x)$ |
|---|---|---|---|---|
| $c$ | $0$ | | $\arcsin x$ | $\frac{1}{\sqrt{1 - x^2}}$ |
| $x^a$ | $ax^{a-1}$ | | $\arccos x$ | $-\frac{1}{\sqrt{1 - x^2}}$ |
| $e^x$ | $e^x$ | | $\arctan x$ | $\frac{1}{1 + x^2}$ |
| $a^x$ | $a^x\ln a$ | | $\operatorname{arccot} x$ | $-\frac{1}{1 + x^2}$ |
| $\ln x$ | $\frac{1}{x}$ | | $\operatorname{sh} x$ | $\operatorname{ch} x$ |
| $\log_a x$ | $\frac{1}{x\ln a}$ | | $\operatorname{ch} x$ | $\operatorname{sh} x$ |
| $\sin x$ | $\cos x$ | | $\operatorname{th} x$ | $\frac{1}{\operatorname{ch}^2 x}$ |
| $\cos x$ | $-\sin x$ | | $\operatorname{arsh} x$ | $\frac{1}{\sqrt{x^2 + 1}}$ |
| $\tan x$ | $\frac{1}{\cos^2 x}$ | | $\operatorname{arch} x$ | $\frac{1}{\sqrt{x^2 - 1}}$ |
| $\cot x$ | $-\frac{1}{\sin^2 x}$ | | $\operatorname{arth} x$ | $\frac{1}{1 - x^2}$ |

A szabályokkal (összeg, szorzat, hányados, láncszabály, inverz) együtt ezzel **minden** elemi függvény deriváltja kiszámolható. A deriválás tehát — szemben a következő félév integrálásával — teljesen gépies eljárás.

---

## A XII. rész összefoglalása

- $f'(a) = \lim_{x \to a}\frac{f(x) - f(a)}{x - a}$: a pillanatnyi változási sebesség, az érintő meredeksége. Érintő: $y = f(a) + f'(a)(x - a)$.
- Differenciálható $\implies$ folytonos; a megfordítás hamis ($|x|$; sőt sehol sem differenciálható folytonos függvény is létezik).
- Szabályok: $(f + g)' = f' + g'$, $(fg)' = f'g + fg'$, $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$, láncszabály: $(g \circ f)' = (g' \circ f)\cdot f'$, inverz: $(f^{-1})'(d) = \frac{1}{f'(f^{-1}(d))}$.
- A láncszabály bizonyítása a $f(x) - f(a) = f^*(x)(x - a)$ jellemzésen alapul, amely elkerüli a nullával való osztást.
- Nevezetes határértékek: $\frac{\sin x}{x} \to 1$, $\frac{\cos x - 1}{x} \to 0$, $(1 + t)^{1/t} \to e$, $\left(1 + \frac{b}{x}\right)^x \to e^b$.
- $\sin' = \cos$, $\cos' = -\sin$, $(e^x)' = e^x$, $(\ln x)' = \frac{1}{x}$, $(x^a)' = ax^{a-1}$ minden valós $a$-ra.

## Feladatok a XII. részhez

1. A definíció alapján számítsuk ki: a) $(x^3)'$ az $x = 2$ pontban; b) $\left(\frac{1}{x^2}\right)'$.
2. Deriváljuk: a) $x^3\sin x$; b) $\frac{x^2 - 1}{x^2 + 1}$; c) $\sqrt{x^2 + 1}$; d) $\sin^2(3x)$; e) $e^{-x^2}$; f) $\ln(\ln x)$; g) $\arctan\frac{1}{x}$; h) $x^{\sin x}$ ($x > 0$).
3. Írjuk fel az $f(x) = \ln x$ grafikonjának érintőjét az $x = e$ pontban.
4. Hol differenciálható az $f(x) = |x^2 - 1|$ függvény? Számítsuk ki a féloldali deriváltakat a kritikus pontokban.
5. Bizonyítsuk be, hogy az $f(x) = x|x|$ függvény mindenütt differenciálható, és számítsuk ki a deriváltját.
6. Mutassuk meg, hogy $\left(\arctan x + \arctan\frac{1}{x}\right)' = 0$ ($x \neq 0$). Mit sejtünk a függvényről? (A 76. szakaszban igazolni is fogjuk.)
7. Az inverz deriválási szabályával számítsuk ki az $f(x) = x^3 + x$ függvény inverzének deriváltját a $2$ pontban.

### Megoldási útmutatók

1. a) $\frac{(2 + h)^3 - 8}{h} = 12 + 6h + h^2 \to 12$. b) $\frac{\frac{1}{(x + h)^2} - \frac{1}{x^2}}{h} = \frac{-(2x + h)}{x^2(x + h)^2} \to -\frac{2}{x^3}$.
2. a) $3x^2\sin x + x^3\cos x$. b) $\frac{2x(x^2 + 1) - (x^2 - 1)2x}{(x^2 + 1)^2} = \frac{4x}{(x^2 + 1)^2}$. c) $\frac{x}{\sqrt{x^2 + 1}}$. d) $2\sin(3x)\cos(3x)\cdot 3 = 3\sin(6x)$. e) $-2xe^{-x^2}$. f) $\frac{1}{x\ln x}$ ($x > 1$). g) $\frac{1}{1 + 1/x^2}\cdot\left(-\frac{1}{x^2}\right) = -\frac{1}{x^2 + 1}$. h) $x^{\sin x}\left(\cos x\ln x + \frac{\sin x}{x}\right)$.
3. $f(e) = 1$, $f'(e) = \frac{1}{e}$, tehát $y = 1 + \frac{1}{e}(x - e) = \frac{x}{e}$. (Az érintő átmegy az origón!)
4. A $\pm 1$ kivételével mindenütt (ott $x^2 - 1$ vagy $1 - x^2$ alakú). Az $1$-ben $f'_+(1) = 2$, $f'_-(1) = -2$; a $-1$-ben $f'_+(-1) = 2$, $f'_-(-1) = -2$. Ezekben nem differenciálható.
5. $x \neq 0$-ra $f(x) = \pm x^2$, $f'(x) = 2|x|$. A $0$-ban $\frac{x|x|}{x} = |x| \to 0$, tehát $f'(0) = 0$. Összesen $f'(x) = 2|x|$.
6. $\frac{1}{1 + x^2} - \frac{1}{x^2 + 1} = 0$ (a 2.g) feladat szerint). A függvény a $(0, +\infty)$-en és a $(-\infty, 0)$-n is állandó: ott rendre $\frac{\pi}{2}$, illetve $-\frac{\pi}{2}$ (behelyettesítve $x = \pm 1$-et).
7. $f(1) = 2$, $f'(1) = 3\cdot 1 + 1 = 4$, tehát $(f^{-1})'(2) = \frac{1}{4}$.

---
