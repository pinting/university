# XIII. RÉSZ: A DIFFERENCIÁLSZÁMÍTÁS ALKALMAZÁSAI

## 73. Lokális növekedés és szélsőérték

**Definíció.** Az $f$ **(szigorúan) lokálisan növekedő** az $a \in \mathbb{R}$ helyen, ha létezik $\delta > 0$ úgy, hogy $(a-\delta, a+\delta) \subset D(f)$, és

- minden $x \in (a-\delta, a)$-ra $f(x) \le f(a)$ (illetve $f(x) < f(a)$),
- minden $x \in (a, a+\delta)$-ra $f(a) \le f(x)$ (illetve $f(a) < f(x)$).

Hasonlóan definiáljuk a (szigorúan) lokálisan csökkenő fogalmat.

**Megjegyzés.** Ha $f$ (szigorúan) monoton növekedő a $(c,d)$ intervallumon, akkor minden $a \in (c,d)$ pontban (szigorúan) lokálisan növekedő (a $\delta = \min(a-c, d-a) > 0$ választás megfelelő).

**Fontos figyelmeztetés: a lokális növekedés gyengébb, mint bármely környezetbeli monotonitás.** Két példa:

**a)** Legyen
$$f(x) = \begin{cases} \frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ez szigorúan lokálisan nő a $0$-ban (balról minden érték negatív, jobbról minden érték pozitív), holott a $0$ semmilyen környezetében nem monoton.

**b)** Legyen
$$f(x) = \begin{cases} x\sin^2\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ez lokálisan nő a $0$-ban, de a $0$ egyetlen környezetében sem monoton (a $\sin^2$ faktor végtelen sokszor „megáll").

**Tétel (a szélsőérték szükséges feltétele).** Tegyük fel, hogy $f$ differenciálható $a$-ban. Ekkor

1. ha $f$ lokálisan nő $a$-ban, akkor $f'(a) \ge 0$;
2. ha $f$ lokálisan csökken $a$-ban, akkor $f'(a) \le 0$;
3. ha $f$-nek lokális szélsőértéke van $a$-ban, akkor $f'(a) = 0$.

*Bizonyítás.*

1. Minden $x \in \dot{B}(a,\delta)$-ra a differenciahányados nemnegatív: ha $x > a$, akkor a számláló és a nevező is nemnegatív; ha $x < a$, akkor mindkettő nempozitív. Határértéket véve $f'(a) \ge 0$.
2. Ugyanígy, fordított előjelekkel.
3. Tegyük fel, hogy $a$-ban lokális maximum van. Ekkor minden $x \in (a, a+\delta)$-ra
$$\frac{f(x)-f(a)}{x-a} \le 0 \implies f'(a) \le 0,$$
és minden $x \in (a-\delta, a)$-ra
$$\frac{f(x)-f(a)}{x-a} \ge 0 \implies f'(a) \ge 0.$$
A kettőből $f'(a) = 0$. $\blacksquare$

A 3. pont a szélsőérték-keresés alapja: **a lehetséges helyeket a $f'(x) = 0$ egyenlet megoldásai között kell keresni.**

**A megfordítások hamisak.**

- Az 1. és 2. ponthoz: $f(x) = x^2$ esetén $f'(0) = 0$, de $f$ nem lokálisan növekedő a $0$-ban.
- A 3. ponthoz: $f(x) = x^3$ esetén $f'(0) = 0$, de $f$-nek nincs szélsőértéke a $0$-ban.

A $f'(a) = 0$ feltétel tehát **szükséges, de nem elégséges**.

**Tétel (elégséges feltétel a szigorú lokális monotonitásra).** Ha $f$ differenciálható $a$-ban és

1. $f'(a) > 0$, akkor $f$ szigorúan lokálisan nő $a$-ban;
2. $f'(a) < 0$, akkor $f$ szigorúan lokálisan csökken $a$-ban.

*Bizonyítás (az 1. pont).* Ha
$$f'(a) = \lim_{x\to a}\frac{f(x)-f(a)}{x-a} > 0,$$
akkor az előjeltartás miatt létezik $\delta > 0$ úgy, hogy minden $x \in \dot{B}(a,\delta)$-ra
$$\frac{f(x)-f(a)}{x-a} > 0.$$
Ez pedig pontosan azt jelenti, hogy $x > a$ esetén $f(x) > f(a)$, és $x < a$ esetén $f(x) < f(a)$. $\blacksquare$

**Ez sem fordítható meg:** $f(x) = x^3$ szigorúan lokálisan nő a $0$-ban, mégis $f'(0) = 0$.

## 74. Középértéktételek

Ez a három tétel a differenciálszámítás gerince: a **lokális** információt (a derivált értékét egyetlen pontban) **globális** információvá alakítják (a függvény viselkedése egy egész intervallumon).

**Tétel (Rolle).** Ha $f \in C[a,b]$, $f$ differenciálható $(a,b)$-ben, és $f(a) = f(b)$, akkor létezik $c \in (a,b)$ úgy, hogy
$$f'(c) = 0.$$

*Bizonyítás.* Ha $f$ azonosan $f(a)$, akkor $f'(c) = 0$ minden $c \in (a,b)$-re. Ellenkező esetben van olyan $x \in (a,b)$, amelyre $f(x) > f(a)$ (az $f(x) < f(a)$ eset hasonló). Mivel $f \in C[a,b]$, a Weierstrass-tétel szerint $f$ felveszi a maximumát valamely pontban; ez a pont nem lehet $a$ vagy $b$ (hiszen ott az érték $f(a)$, ami kisebb $f(x)$-nél), tehát egy $c \in (a,b)$ belső pontban van. Ott lokális maximum van, így az előző szakasz tétele szerint $f'(c) = 0$. $\blacksquare$

Figyeljük meg, hogy a bizonyítás lényegében a Weierstrass-tételre, tehát végső soron a Bolzano–Weierstrass-tételre és a teljességi axiómára támaszkodik.

**Tétel (Lagrange-féle középértéktétel).** Ha $f \in C[a,b]$ és $f$ differenciálható $(a,b)$-ben, akkor létezik $c \in (a,b)$ úgy, hogy
$$f'(c) = \frac{f(b)-f(a)}{b-a}.$$

Szemléletesen: van olyan belső pont, ahol az **érintő párhuzamos a végpontokat összekötő húrral**.

*Bizonyítás.* A Rolle-tétel speciális esetét használjuk fel, miután „kiegyenesítjük" a függvényt. Legyen
$$g(x) = f(x) - (x-a)\frac{f(b)-f(a)}{b-a}.$$
Ekkor $g \in C[a,b]$, differenciálható $(a,b)$-ben, és
$$g(a) = f(a), \qquad g(b) = f(b) - (b-a)\frac{f(b)-f(a)}{b-a} = f(b) - (f(b)-f(a)) = f(a),$$
tehát $g(a) = g(b)$. A Rolle-tétel szerint van olyan $c \in (a,b)$, amelyre $g'(c) = 0$, azaz
$$f'(c) - \frac{f(b)-f(a)}{b-a} = 0. \qquad \blacksquare$$

**Tétel (Cauchy-féle középértéktétel).** Ha $f, g \in C[a,b]$, mindkettő differenciálható $(a,b)$-n, és minden $x \in (a,b)$-re $g'(x) \neq 0$, akkor létezik $c \in (a,b)$, amelyre
$$\frac{f'(c)}{g'(c)} = \frac{f(b)-f(a)}{g(b)-g(a)}.$$

**Megjegyzés.** A $g(x) = x$ választással a Lagrange-tételt kapjuk vissza; az pedig $f(a) = f(b)$ esetén a Rolle-tételt. A három tétel tehát egyre általánosabb.

*Bizonyítás.* Először vegyük észre, hogy $g(b) - g(a) \neq 0$: ellenkező esetben a Rolle-tétel szerint volna olyan $c \in (a,b)$, amelyre $g'(c) = 0$, szemben a feltevéssel. Tekintsük most a
$$h(x) = f(x) - \big(g(x) - g(a)\big)\frac{f(b)-f(a)}{g(b)-g(a)}$$
segédfüggvényt. Erre $h(a) = f(a)$ és $h(b) = f(a)$, tehát a Rolle-tétel alkalmazható. $\blacksquare$

## 75. A Darboux-tulajdonság

**Definíció.** A $g : I \to \mathbb{R}$ függvény **Darboux-tulajdonságú** az $I$ intervallumon, ha bármely $a, b \in I$, $a < b$ esetén minden, $g(a)$ és $g(b)$ közötti $d$ értékhez létezik $c \in (a,b)$, amelyre $g(c) = d$.

**Megjegyzés.** A Bolzano–Darboux-tétel szerint $f \in C(I) \implies f$ Darboux-tulajdonságú. **A megfordítás azonban nem igaz** — és éppen ez teszi a következő tételt meglepővé.

**Definíció.** Az $f$ **differenciálható $[a,b]$-n**, ha léteznek az $f'_+(a)$ és $f'_-(b)$ féloldali deriváltak, és minden $c \in (a,b)$-re létezik $f'(c)$.

**Tétel (Darboux).** Ha $f$ differenciálható $[a,b]$-ben, akkor $f'$ minden értéket felvesz $f'_+(a)$ és $f'_-(b)$ között. Következésképpen: **ha $f$ differenciálható $I$-n, akkor $f'$ Darboux-tulajdonságú $I$-n** — akkor is, ha $f'$ nem folytonos.

*Bizonyítás.* Tegyük fel, hogy $f'_+(a) < d < f'_-(b)$. Legyen
$$g(x) = f(x) - dx.$$
Ekkor $g \in C[a,b]$ (hiszen differenciálható), tehát a Weierstrass-tétel szerint felveszi a minimumát valamely $c \in [a,b]$ pontban. Megmutatjuk, hogy $c$ belső pont.

Egyrészt $g'_+(a) = f'_+(a) - d < 0$, tehát létezik $\delta > 0$ úgy, hogy minden $x \in (a, a+\delta)$-ra
$$\frac{g(x)-g(a)}{x-a} < 0 \implies g(x) < g(a),$$
vagyis $a$ nem lehet minimumhely: $c \neq a$.

Másrészt $g'_-(b) = f'_-(b) - d > 0$, amiből hasonlóan $c \neq b$.

Tehát $c \in (a,b)$, ahol $g$-nek lokális minimuma van, így $g'(c) = 0$, azaz
$$f'(c) - d = 0 \implies f'(c) = d. \qquad \blacksquare$$

**Példa (derivált, amely nem folytonos, mégis Darboux-tulajdonságú).** Legyen
$$f(x) = \begin{cases} x^2\sin\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0. \end{cases}$$
Ekkor
$$f'(x) = \begin{cases} 2x\sin\frac{1}{x} - \cos\frac{1}{x} & \text{ha } x \neq 0, \\ 0 & \text{ha } x = 0, \end{cases}$$
és $f' \notin C(\mathbb{R})$ (a $\cos\frac{1}{x}$ tag miatt a $0$-ban nincs határértéke), a Darboux-tétel szerint mégis Darboux-tulajdonságú.

**Megjegyzés.** Ha történetesen $f' \in C[a,b]$, akkor a Darboux-tételre nem volna szükség: az $f'$-re közvetlenül alkalmazhatnánk a Bolzano–Darboux-tételt. A Darboux-tétel értéke éppen abban áll, hogy **a folytonosság feltevése nélkül** működik.

**Alkalmazás.** Létezik-e olyan $f$, amelyre $f'(x) = \operatorname{sgn} x$? **Nem** — mert a $\operatorname{sgn}$ függvény nem Darboux-tulajdonságú (a $(-1,1)$ intervallumban a $\frac{1}{2}$ értéket nem veszi fel), márpedig minden derivált az.

## 76. Monotonitási feltételek

**Tétel.** Legyen $f \in C[a,b]$, differenciálható $(a,b)$-n. Ekkor
$$f \ \text{monoton nő (csökken) } [a,b]\text{-n} \iff \forall x \in (a,b): f'(x) \ge 0 \ (\le 0).$$

*Bizonyítás (a növekedő eset).*

**($\Rightarrow$)** Ha $f$ monoton nő, akkor minden $c \in (a,b)$-ben lokálisan nő, tehát a 73. szakasz szerint $f'(c) \ge 0$.

**($\Leftarrow$)** Indirekt. Tegyük fel, hogy $a \le x_1 < x_2 \le b$ és $f(x_1) > f(x_2)$. Ekkor
$$\frac{f(x_2)-f(x_1)}{x_2-x_1} < 0,$$
és a Lagrange-féle középértéktétel szerint van olyan $c \in (x_1, x_2)$, amelyre $f'(c) < 0$ — ellentmondás. $\blacksquare$

**Tétel.** Ha $f \in C[a,b]$, differenciálható $(a,b)$-n, és $f' \equiv 0$, akkor $f$ konstans: $f \equiv C$ valamely $C \in \mathbb{R}$-re.

*Bizonyítás.* Az $f' \ge 0$ és $f' \le 0$ feltételek egyszerre teljesülnek, tehát $f$ monoton növekedő **és** monoton csökkenő; ez csak konstans függvényre lehetséges. $\blacksquare$

Ez a látszólag jelentéktelen következmény alapvető: erre épül a határozatlan integrál egyértelműsége, és később a differenciálegyenletek megoldásainak leírása.

**Tétel (szigorú monotonitás elégséges feltétele).** Ha $f \in C[a,b]$, differenciálható $(a,b)$-n, és minden $x \in (a,b)$-re $f'(x) > 0$ (illetve $f'(x) < 0$), akkor $f$ szigorúan monoton növekedő (illetve csökkenő) $[a,b]$-n.

*Bizonyítás.* A Lagrange-tétel szerint bármely $x_1 < x_2$ esetén
$$\frac{f(x_2)-f(x_1)}{x_2-x_1} = f'(c) > 0. \qquad \blacksquare$$

**Ez nem fordítható meg:** $f(x) = x^3$ szigorúan monoton növekedő $\mathbb{R}$-en, mégis $f'(0) = 0$.

**Tétel (pontos jellemzés).** Legyen $f \in C[a,b]$, differenciálható $(a,b)$-n. Ekkor $f$ szigorúan monoton növekedő $[a,b]$-n akkor és csak akkor, ha

- minden $x \in (a,b)$-re $f'(x) \ge 0$, **és**
- nincs olyan $[c,d] \subset [a,b]$, $c < d$ részintervallum, amelyen $f' \equiv 0$.

*Bizonyítás.* $f$ szigorúan monoton nő $\iff$ $f$ monoton nő **és** nincs olyan intervallum, amelyen konstans; ez a két feltétel pedig az előző tételek szerint pontosan a fenti kettőnek felel meg. $\blacksquare$

Az $x^3$ példa tanulsága tehát az, hogy a derivált **izolált** zérushelyei megengedettek; csak egész intervallumon nem tűnhet el.

## 77. Szélsőérték-feladatok

**Feladat.** Írjunk az egységsugarú gömbbe maximális térfogatú hengert.

*Megoldás.* Legyen a henger magasságának fele $h$, alapkörének sugara $r$. A gömbbe írás feltétele Pitagorasz tétele szerint
$$h^2 + r^2 = 1 \implies r^2 = 1 - h^2.$$
A térfogat tehát
$$V(h) = r^2\pi\cdot 2h = 2\pi h(1-h^2) = 2\pi(h - h^3), \qquad h \in [0,1].$$
Keressük $V$ abszolút maximumát a $[0,1]$ intervallumon. A derivált
$$V'(h) = 2\pi(1 - 3h^2), \qquad V'(h) = 0 \iff h = \pm\frac{1}{\sqrt{3}}.$$
Mivel $h \in [0,1]$, egyetlen belső kritikus pont van: $h = \frac{1}{\sqrt{3}}$. A végpontokban $V(0) = V(1) = 0$. Mivel $V$ folytonos (sőt differenciálható) a $[0,1]$ zárt intervallumon, a Weierstrass-tétel szerint felveszi a maximumát, és mivel $V\!\left(\frac{1}{\sqrt{3}}\right) > 0$, a maximumhely csak $h = \frac{1}{\sqrt{3}}$ lehet. $\blacksquare$

**Állítás (az eljárás általánosan).** Ha $f \in C[a,b]$, differenciálható $(a,b)$-n, és $f'(x) = 0$ éppen az $x_1, \dots, x_n \in (a,b)$ pontokban, akkor
$$\max_{[a,b]} f = \max\{f(a),\ f(b),\ f(x_1),\ \dots,\ f(x_n)\},$$
és hasonlóan a minimumra.

**A végpontokról soha nem szabad megfeledkezni!** Példa: legyen $f(h) = h - h^3$ a $[-10,10]$ intervallumon. Itt $f'(h) = 1 - 3h^2 = 0$, azaz $h_{1,2} = \pm\frac{1}{\sqrt{3}}$, és
$$f\!\left(\tfrac{1}{\sqrt{3}}\right) = \tfrac{1}{\sqrt 3} - \tfrac{1}{3\sqrt 3} \approx 0{,}385, \qquad f(-10) = -10 + 1000 = 990, \qquad f(10) = 10 - 1000 = -990.$$
A maximum tehát a **végpontban** van, körülbelül $990$; a minimum a másik végpontban, körülbelül $-990$. A belső kritikus pontok itt gyakorlatilag jelentéktelenek.

**Mi a teendő, ha az intervallum nem korlátos és zárt?** Ekkor az abszolút szélsőérték nem feltétlenül létezik, és a monotonitási tételeket, illetve a „végpontokban" vett határértékeket kell vizsgálni.

**Példa.** Legyen $f(h) = h - h^3$ a $[-1, +\infty)$ intervallumon. A derivált $f'(h) = 1 - 3h^2$, egy lefelé nyíló parabola, amelynek gyökei $\pm\frac{1}{\sqrt 3}$. Készítsünk **előjeltáblázatot** (jogosan: $f'$ Darboux-tulajdonságú, tehát nem „ugorhat át" az előjelváltáson):

| $h$ | $h < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < h < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3} < h$ |
|---|---|---|---|---|---|
| $f'(h)$ | $-$ | $0$ | $+$ | $0$ | $-$ |
| $f$ | csökken | lok. min. | nő | lok. max. | csökken |

Mivel $f(-1) = 0$ és $f\!\left(\frac{1}{\sqrt3}\right) > 0$, a $\frac{1}{\sqrt3}$ pontban van a $[-1,+\infty)$-re vonatkozó **abszolút maximumhely** (a $[-1, -\frac{1}{\sqrt3}]$ szakaszon ugyanis $f(x) \le f(-1) = 0$). A $-\frac{1}{\sqrt3}$ pontban viszont csak **lokális** minimum van, hiszen
$$\lim_{x\to+\infty} f(x) = -\infty,$$
tehát abszolút minimum nem létezik.

**Tétel (elsőrendű elégséges feltétel).** Tegyük fel, hogy $f$ differenciálható $B(a,\delta)$-ban, és
$$f'(x) \le 0 \ \text{ha } a-\delta < x < a, \qquad f'(x) \ge 0 \ \text{ha } a < x < a + \delta.$$
Ekkor $f$-nek **lokális minimuma** van $a$-ban. (Szigorú egyenlőtlenségek esetén szigorú lokális minimum; a $\ge, \le$ sorrend esetén lokális maximum; $>, <$ esetén szigorú lokális maximum.)

Vagyis: a derivált **előjelváltása** dönt.

## 78. Magasabb rendű deriváltak és a Leibniz-szabály

**Definíció.** Ha $f'$ differenciálható $a$-ban, akkor $(f')'(a)$-t az $f$ $a$-beli **második deriváltjának** nevezzük; jelölése $f''(a)$, $f^{(2)}(a)$, $\ddot{f}(a)$, $\left.\frac{d^2f}{dx^2}\right|_{x=a}$, $y''(a)$.

Indukcióval: ha $f$ $k$-adik deriváltját $f^{(k)}$ jelöli, és $f^{(k)}$ differenciálható $a$-ban, akkor $(f^{(k)})'(a)$ az $f$ $a$-beli **$(k+1)$-edik deriváltja**, jelölése $f^{(k+1)}(a)$, illetve $\left.\frac{d^{k+1}f}{dx^{k+1}}\right|_{x=a}$.

**Tétel (másodrendű elégséges feltétel).** Legyen $f$ differenciálható az $a$ egy környezetében, és tegyük fel, hogy létezik $f''(a)$. Ekkor

1. ha $f'(a) = 0$ és $f''(a) > 0$, akkor $a$ az $f$ **szigorú lokális minimumhelye**;
2. ha $f'(a) = 0$ és $f''(a) < 0$, akkor $a$ az $f$ **szigorú lokális maximumhelye**.

*Bizonyítás (az 1. pont).* Ha $f''(a) > 0$, akkor a 73. szakasz tétele szerint (az $f'$ függvényre alkalmazva) $f'$ szigorúan lokálisan nő $a$-ban. Tehát létezik $\delta > 0$ úgy, hogy
$$f'(x) < f'(a) = 0 \ \text{ha } x \in (a-\delta, a), \qquad f'(x) > f'(a) = 0 \ \text{ha } x \in (a, a+\delta).$$
Az előző szakasz elsőrendű feltétele szerint tehát $a$ szigorú lokális minimumhely. $\blacksquare$

**Általánosítás.** Ha $f$ $2k$-szor differenciálható, $f'(a) = f''(a) = \dots = f^{(2k-1)}(a) = 0$ és $f^{(2k)}(a) > 0$, akkor $a$ az $f$ szigorú lokális minimumhelye.

**Megjegyzés (a tétel nem dönt $f''(a)=0$ esetén).** Mindhárom eset előfordulhat:
$$f_1(x) = x^3 \ (\text{nincs szélsőérték}), \qquad f_2(x) = x^4 \ (\text{minimum}), \qquad f_3(x) = -x^4 \ (\text{maximum}),$$
és mindháromra $f'(0) = f''(0) = 0$.

**Tétel (magasabb rendű deriválási szabályok).** Ha $f$ és $g$ is $n$-szer differenciálható $a$-ban, akkor $f+g$ és $f\cdot g$ is az, és

1. $(f+g)^{(n)} = f^{(n)} + g^{(n)}$;
2. **(Leibniz-szabály)**
$$(f\cdot g)^{(n)} = \sum_{k=0}^{n}\binom{n}{k} f^{(k)} g^{(n-k)}, \qquad \text{ahol } f^{(0)} \stackrel{\text{def}}{=} f.$$

*Bizonyítás (a Leibniz-szabály, teljes indukcióval).* $n = 1$ esetén ez a szorzatszabály: $(fg)' = f'g + fg'$. Tegyük fel, hogy $n$-re igaz, és deriváljunk:
$$(f\cdot g)^{(n+1)} = \left(\sum_{k=0}^{n}\binom{n}{k} f^{(k)} g^{(n-k)}\right)' = \sum_{k=0}^{n}\binom{n}{k}\left(f^{(k+1)}g^{(n-k)} + f^{(k)}g^{(n-k+1)}\right).$$
Gyűjtsük össze az azonos $f^{(k)}g^{(n+1-k)}$ alakú tagokat: mindegyik kétszer keletkezik, $\binom{n}{k-1}$ és $\binom{n}{k}$ együtthatóval. A Pascal-azonosság szerint
$$\binom{n}{k-1} + \binom{n}{k} = \binom{n+1}{k},$$
tehát megkapjuk a kívánt
$$(f\cdot g)^{(n+1)} = \sum_{k=0}^{n+1}\binom{n+1}{k} f^{(k)} g^{(n+1-k)}$$
alakot. $\blacksquare$

A Leibniz-szabály szerkezete tehát pontosan a **binomiális tétel** szerkezete — csak a hatványok helyén deriváltak állnak.

**Példák magasabb rendű deriváltakra.** Legyen $f(x) = x^n$. Ekkor
$$f'(x) = nx^{n-1}, \qquad f''(x) = n(n-1)x^{n-2}, \qquad \dots$$
és indukcióval
$$f^{(k)}(x) = n(n-1)\cdots(n-k+1)\,x^{n-k} \qquad (k \le n).$$
Speciálisan $f^{(n)}(x) = n!$, és $f^{(k)}(x) \equiv 0$, ha $k > n$.

**Példa (a második derivált nem mindig létezik).** Legyen $f(x) = x\cdot|x|$. Ekkor
$$\lim_{h\to 0}\frac{f(h)-f(0)}{h} = \lim_{h\to 0}\frac{h|h|}{h} = 0 \implies f'(0) = 0,$$
és mivel
$$f(x) = \begin{cases} x^2 & \text{ha } x \ge 0, \\ -x^2 & \text{ha } x < 0, \end{cases} \qquad f'(x) = 2|x|,$$
a második derivált
$$f''(x) = \begin{cases} 2 & \text{ha } x > 0, \\ -2 & \text{ha } x < 0, \end{cases}$$
és $f''(0)$ **nem létezik**.

## 79. Konvexitás és a derivált

**Tétel.** Tegyük fel, hogy $f$ differenciálható az $I$ intervallumon. Ekkor

1. **(i)** $f$ akkor és csak akkor konvex (illetve konkáv) $I$-n, ha $f'$ monoton növekedő (illetve csökkenő) $I$-n;
2. **(ii)** $f$ akkor és csak akkor szigorúan konvex (illetve szigorúan konkáv) $I$-n, ha $f'$ szigorúan monoton növekedő (illetve csökkenő) $I$-n.

*Bizonyítás (az (i) állítás).*

**($\Rightarrow$)** Tegyük fel, hogy $f$ konvex $I$-n, és legyen $a, b \in I$, $a < b$. A 44. szakasz szerint az
$$F(x) = \frac{f(x)-f(a)}{x-a}$$
függvény monoton növekedő $I\setminus\{a\}$-n. Ezért $x < b$, $x \neq a$ esetén
$$(\otimes) \qquad \frac{f(x)-f(a)}{x-a} = F(x) \le F(b) = \frac{f(b)-f(a)}{b-a}.$$
Ha most $x \to a$, a bal oldal $f'(a)$-hoz tart, tehát
$$f'(a) \le \frac{f(b)-f(a)}{b-a}.$$
Hasonlóan, a $b$ pont körüli differenciahányadost, $G(x) = \frac{f(x)-f(b)}{x-b}$-t tekintve
$$(\otimes\otimes) \qquad \frac{f(b)-f(a)}{b-a} = G(a) \le G(x) = \frac{f(x)-f(b)}{x-b},$$
és $x \to b$ határátmenettel
$$\frac{f(b)-f(a)}{b-a} \le f'(b).$$
A kettőt összerakva: $a < b \implies f'(a) \le f'(b)$, azaz $f'$ monoton növekedő.

**($\Leftarrow$)** Tegyük fel, hogy $f'$ monoton növekedő $I$-n, és legyen $a < x < b$ tetszőleges $I$-beli pontok. A Lagrange-féle középértéktétel szerint léteznek $u \in (a,x)$ és $v \in (x,b)$ úgy, hogy
$$f'(u) = \frac{f(x)-f(a)}{x-a}, \qquad f'(v) = \frac{f(b)-f(x)}{b-x}.$$
Mivel $u < v$ és $f'$ monoton nő, $f'(u) \le f'(v)$, azaz
$$\frac{f(x)-f(a)}{x-a} \le \frac{f(b)-f(x)}{b-x}.$$
Szorozzuk fel a (pozitív) nevezőkkel és rendezzük:
$$f(x)(b-x) + f(x)(x-a) \le f(a)(b-x) + f(b)(x-a),$$
azaz $f(x)(b-a) \le f(a)(b-x) + f(b)(x-a)$, amiből
$$f(x) \le f(a) + \frac{f(b)-f(a)}{b-a}(x-a),$$
ami éppen a konvexitás definíciója. $\blacksquare$

**Tétel (a második derivált próbája).** Tegyük fel, hogy $f$ kétszer differenciálható az $I$ intervallumon. Ekkor
$$f \ \text{konvex} \iff f'' \ge 0, \qquad f \ \text{konkáv} \iff f'' \le 0,$$
$$f'' > 0 \implies f \ \text{szigorúan konvex}, \qquad f'' < 0 \implies f \ \text{szigorúan konkáv}.$$

*Bizonyítás.* Az előző tételt kombináljuk a monotonitási feltételekkel ($f'$ monotonitását $f''$ előjele jellemzi). $\blacksquare$

**Megjegyzés (a szigorú esetben nincs megfordítás).** $f$ szigorúan konvex $\not\Rightarrow f'' > 0$. Ellenpélda: $f(x) = x^4$, ahol $f'(x) = 4x^3$ szigorúan monoton növekedő (tehát $f$ szigorúan konvex), mégis $f''(0) = 0$.

**Példák.**

- $f(x) = \sin x$: $f'(x) = \cos x$, $f''(x) = -\sin x$. Tehát $\sin$ szigorúan konkáv a $[0,\pi] + 2k\pi$ intervallumokon, és szigorúan konvex a $[\pi, 2\pi] + 2k\pi$ intervallumokon.
- $f(x) = \ln x$: $f'(x) = \frac{1}{x}$, $f''(x) = -\frac{1}{x^2} < 0$, tehát $\ln$ **szigorúan konkáv** $(0,+\infty)$-en.

## 80. A Young-, a Hölder- és a Cauchy–Bunyakovszkij-egyenlőtlenség

A logaritmus konkávitása egyetlen lépésben elvezet két nevezetes egyenlőtlenséghez.

**Tétel (Young-egyenlőtlenség).** Ha $a, b, p, q > 0$ és $\frac{1}{p} + \frac{1}{q} = 1$, akkor
$$ab \le \frac{a^p}{p} + \frac{b^q}{q}.$$

*Bizonyítás.* Alkalmazzuk a Jensen-egyenlőtlenséget a **konkáv** $\ln$ függvényre, az $\frac{1}{p}$ és $\frac{1}{q}$ súlyokkal (amelyek összege $1$), az $a^p$ és $b^q$ pontokban:
$$\ln\!\left(\frac{1}{p}a^p + \frac{1}{q}b^q\right) \ge \frac{1}{p}\ln a^p + \frac{1}{q}\ln b^q = \ln a + \ln b = \ln(ab).$$
Mivel $\ln$ szigorúan monoton növekedő, a logaritmusok elhagyhatók. $\blacksquare$

**Tétel (Hölder-egyenlőtlenség).** Ha $p, q > 0$, $\frac{1}{p}+\frac{1}{q} = 1$, és $a_k \ge 0$, $b_k \ge 0$ ($k = 1, \dots, n$), akkor
$$a_1 b_1 + \dots + a_n b_n \le \underbrace{\sqrt[p]{a_1^p + \dots + a_n^p}}_{A}\cdot\underbrace{\sqrt[q]{b_1^q + \dots + b_n^q}}_{B}.$$

*Bizonyítás.* Normáljuk a számokat: alkalmazzuk a Young-egyenlőtlenséget az $\frac{a_k}{A}$ és $\frac{b_k}{B}$ párokra:
$$\frac{a_k}{A}\cdot\frac{b_k}{B} \le \frac{1}{p}\cdot\frac{a_k^p}{A^p} + \frac{1}{q}\cdot\frac{b_k^q}{B^q}.$$
Összegezzük $k = 1, \dots, n$-re:
$$\frac{1}{AB}(a_1b_1 + \dots + a_nb_n) \le \frac{1}{p}\cdot\frac{a_1^p + \dots + a_n^p}{A^p} + \frac{1}{q}\cdot\frac{b_1^q + \dots + b_n^q}{B^q} = \frac{1}{p} + \frac{1}{q} = 1,$$
hiszen $A^p = a_1^p + \dots + a_n^p$ és $B^q = b_1^q + \dots + b_n^q$. Beszorozva $AB$-vel kapjuk az állítást. $\blacksquare$

Figyeljük meg a bizonyítás szépségét: a normálás után a jobb oldal **pontosan $1$** lesz — ez az, amiért a $\frac{1}{p}+\frac{1}{q}=1$ feltétel éppen így szól.

**Speciális eset ($p = q = 2$): a Cauchy–Bunyakovszkij-egyenlőtlenség.** Ha $a_k, b_k \ge 0$, akkor
$$a_1b_1 + \dots + a_nb_n \le \sqrt{a_1^2 + \dots + a_n^2}\cdot\sqrt{b_1^2 + \dots + b_n^2}.$$
Vektoros alakban ez azt mondja, hogy a **skaláris szorzat legfeljebb akkora, mint a hosszak szorzata**:
$$\underline{a}\circ\underline{b} \le \|\underline{a}\|\cdot\|\underline{b}\|.$$

## 81. Érintő és inflexiós pontok

**Tétel (az érintő jellemzése).** Tegyük fel, hogy $f$ differenciálható az $I$ intervallumon. Ekkor $f$ akkor és csak akkor konvex, ha bármely $I$-beli pontban húzott érintő az $f$ grafikonja **alatt** halad.

*Bizonyítás.*

**($\Rightarrow$)** Ha $f$ konvex és differenciálható, akkor az előző szakasz $(\otimes)$ és $(\otimes\otimes)$ becslései szerint $a < b$ esetén
$$f'(a) \le \frac{f(b)-f(a)}{b-a} \le f'(b).$$
Ha $a < x$, akkor a $b = x$ választással $f'(a)(x-a) + f(a) \le f(x)$. Ha $x < a$, akkor a másik becslésből
$$\frac{f(a)-f(x)}{a-x} \le f'(a) \implies f(a) - f(x) \le f'(a)(a-x) \implies f(a) + f'(a)(x-a) \le f(x).$$
Mindkét esetben az érintő a grafikon alatt van.

**($\Leftarrow$)** Tegyük fel, hogy $a, b \in I$, $a < b$. A feltételből
$$f(b) \ge f(a) + f'(a)(b-a) \implies \frac{f(b)-f(a)}{b-a} \ge f'(a),$$
$$f(a) \ge f(b) + f'(b)(a-b) \implies \frac{f(b)-f(a)}{b-a} \le f'(b).$$
Tehát $f'(a) \le f'(b)$, azaz $f'$ monoton növekedő, és az előző szakasz tétele szerint $f$ konvex. $\blacksquare$

**Definíció (inflexiós pont).** Az $a$ pont az $f$ függvény **inflexiós helye**, ha $f$-nek létezik (véges vagy végtelen) deriváltja $a$-ban, és létezik $\delta > 0$ úgy, hogy $f$ konvex az $(a-\delta, a]$ intervallumon és konkáv az $[a, a+\delta)$ intervallumon, vagy fordítva.

Az inflexiós pont tehát a **görbületváltás** helye.

**Példák.** A $0$ inflexiós pontja az $f(x) = x^3$ függvénynek és a $g(x) = \sqrt[3]{x}$ függvénynek is — az utóbbi esetben a derivált a $0$-ban végtelen. (Az inflexiós pont definíciója a szakirodalomban nem teljesen egységes; egyes szerzők nem engedik meg a végtelen deriváltat.)

**Tétel (szükséges feltétel).** Ha $f$ kétszer differenciálható $a$-ban, és $a$ az $f$ inflexiós pontja, akkor $f''(a) = 0$.

*Bizonyítás.* Az egyik esetben: $f$ konvex $(a-\delta, a]$-n, tehát ott $f'$ monoton növekedő; és $f$ konkáv $[a, a+\delta)$-n, tehát ott $f'$ monoton csökkenő. Eszerint $a$ az $f'$ függvénynek **lokális maximumhelye**, így a 73. szakasz szerint $(f')'(a) = f''(a) = 0$. A másik eset hasonló. $\blacksquare$

**Tétel (elégséges feltétel előjelváltással).** Ha $f$ kétszer differenciálható $a$-ban, $f''(a) = 0$, és $f''$ **előjelet vált** $a$-ban (azaz $f''$ lokálisan nő vagy csökken $a$-ban), akkor $a$-ban $f$-nek inflexiós pontja van.

*Bizonyítás (a lokálisan növekedő eset).* Ekkor $f'' \le 0$ az $(a-\delta, a]$ intervallumon, tehát $f$ ott konkáv; és $f'' \ge 0$ az $[a, a+\delta)$-n, tehát $f$ ott konvex; továbbá $f'(a)$ létezik. $\blacksquare$

**Tétel (harmadik derivált próbája).** Ha $f$ háromszor differenciálható $a$-ban, $f''(a) = 0$ és $f'''(a) \neq 0$, akkor $f$-nek $a$-ban inflexiós pontja van.

*Bizonyítás.* Ha $f'''(a) > 0$, akkor $f''$ szigorúan lokálisan nő $a$-ban, tehát az előző tétel alkalmazható; a $f'''(a) < 0$ eset hasonló. $\blacksquare$

**Megjegyzés.** Az $f(x) = x^5$ függvénynek a $0$ inflexiós pontja, holott $f''(0) = f'''(0) = f^{(4)}(0) = 0$; itt csak $f^{(5)}(0) \neq 0$. Ez vezet az általános tételhez.

**Tétel (általános, magasabb rendű próba).** Tegyük fel, hogy $f$ $(2k+1)$-szer differenciálható $a$-ban ($k \ge 1$).

- **i)** Ha $f''(a) = \dots = f^{(2k)}(a) = 0$ és $f^{(2k+1)}(a) \neq 0$, akkor $a$ az $f$ inflexiós pontja.
- **ii)** Ha $f''(a) = \dots = f^{(2k-1)}(a) = 0$ és $f^{(2k)}(a) \neq 0$, akkor $f$ az $a$ egy környezetében szigorúan konvex (illetve konkáv).

Vagyis: **az első el nem tűnő derivált rendjének paritása dönt** — páratlan rend inflexiót, páros rend görbületi „tisztaságot" jelent.

## 82. Teljes függvényvizsgálat

Az eddigi eszközök összefoglalásaként rögzítsük a teljes függvényvizsgálat menetét:

1. **$D(f)$**, az értelmezési tartomány meghatározása.
2. Az $f$ **folytonossági** pontjainak halmaza.
3. Az $f$ **határértékei** a szakadási pontokban és a $\pm\infty$-ben.
4. **Monotonitási intervallumok** ($f'$ előjele).
5. **Lokális és globális szélsőértékhelyek**, a szélsőértékek.
6. **Konvexitási intervallumok** ($f''$ előjele).
7. **Inflexiós pontok**.
8. **További tulajdonságok**: párosság/páratlanság, periodikusság, **aszimptoták** (függőleges és „ferde").

**Definíció (ferde aszimptota).** Ha
$$\lim_{x\to+\infty}\big(f(x) - (ax+b)\big) = 0,$$
akkor az $ax+b$ lineáris függvényt az $f$ **aszimptotájának** nevezzük a $+\infty$-ben. Hasonlóan a $-\infty$-ben.

**Példák.**

- $f(x) = e^{-x} + x + 5$: itt $\lim_{x\to+\infty}(f(x) - x - 5) = 0$, tehát $y = x+5$ aszimptota a $+\infty$-ben.
- $f(x) = \arctan x$: az $y = -\frac{\pi}{2}$ egyenes aszimptota a $-\infty$-ben, az $y = \frac{\pi}{2}$ pedig a $+\infty$-ben.

### Kidolgozott példa: az Agnesi-görbe

**Történeti megjegyzés.** A vizsgált görbe neve angolul *witch of Agnesi* (Agnesi boszorkánya), és a név egy fordítási félreértésből származik: az olasz *la versiera di (Maria) Agnesi* („Agnesi fordulata") kifejezést összekeverték az *avversiera* („ördöngös asszony") szóval. Franciául így lett belőle *la sorcière d'Agnesi*.

Legyen
$$f(x) = \frac{1}{1+x^2}.$$

**1–3. Alapadatok.** $D(f) = \mathbb{R}$, $f \in C(\mathbb{R})$ (racionális törtfüggvény, a nevező sehol sem nulla), és
$$\lim_{x\to+\infty} f(x) = \lim_{x\to-\infty} f(x) = 0,$$
tehát az $y = 0$ egyenes aszimptota mindkét irányban. A függvény **páros**, és mindenütt $f(x) > 0$.

**4–7. Deriváltak.**
$$f'(x) = \frac{-2x}{(1+x^2)^2},$$
$$f''(x) = \frac{-2(1+x^2)^2 + 2x\cdot 2(1+x^2)\cdot 2x}{(1+x^2)^4} = \frac{-2(1+x^2) + 8x^2}{(1+x^2)^3} = \frac{6x^2 - 2}{(1+x^2)^3}.$$
Zérushelyek:
$$f'(x) = 0 \iff x = 0, \qquad f''(x) = 0 \iff 6x^2 = 2 \iff x = \pm\frac{1}{\sqrt3}.$$

**Vizsgálati táblázat.**

| | $x < -\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3}$ | $-\frac{1}{\sqrt3} < x < 0$ | $0$ | $0 < x < \frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3}$ | $\frac{1}{\sqrt3} < x$ |
|---|---|---|---|---|---|---|---|
| $f'$ | $+$ | $+$ | $+$ | $0$ | $-$ | $-$ | $-$ |
| $f''$ | $+$ | $0$ | $-$ | $-$ | $-$ | $0$ | $+$ |
| $f$ | nő, konvex | **infl.** | nő, konkáv | **lok. max.** | csökken, konkáv | **infl.** | csökken, konvex |

**Összefoglalás.**

- $f$ szigorúan monoton növekedő $(-\infty, 0]$-n, és szigorúan monoton csökkenő $[0,+\infty)$-en.
- $f$ szigorúan konvex a $\left(-\infty, -\frac{1}{\sqrt3}\right]$ és $\left[\frac{1}{\sqrt3}, +\infty\right)$ intervallumokon, és szigorúan konkáv a $\left[-\frac{1}{\sqrt3}, \frac{1}{\sqrt3}\right]$ intervallumon.
- A maximumát a $0$-ban veszi fel: $f(0) = 1$. Abszolút minimuma **nincs** (az infimum $0$, de nem vétetik fel).
- Inflexiós pontok: $-\frac{1}{\sqrt3}$ és $\frac{1}{\sqrt3}$.

## 83. A L'Hospital-szabály

**Történeti megjegyzés.** A szabály névadója Guillaume-François-Antoine, Marquis de l'Hôpital, Marquis de Sainte-Mesme, Comte d'Entremont, Seigneur d'Ouques-la-Chaise. A szabályt valójában tanára, Johann Bernoulli fedezte fel, aki szerződésben átengedte matematikai eredményei közlésének jogát l'Hôpitalnak. Bernoulli később a saját fiával, Daniellel is féltékenységi viszonyba került: amikor a Párizsi Egyetem tudományos versenyén holtversenyben végeztek, apja kitiltotta őt otthonról.

**Tétel (L'Hospital-szabály).** Legyen $f$ és $g$ differenciálható az $a$ egy $\dot{U}(a)$ pontozott környezetében, ahol $g \neq 0$ és $g' \neq 0$, továbbá teljesüljön az alábbiak közül **valamelyik**:

- **(1)** $\displaystyle \lim_{x\to a} f(x) = \lim_{x\to a} g(x) = 0$ (a $\frac{0}{0}$ eset), vagy
- **(2)** $\displaystyle \lim_{x\to a}|g(x)| = \infty$ (a $\frac{\ast}{\infty}$ eset).

Ekkor, ha
$$\lim_{x\to a}\frac{f'(x)}{g'(x)} = A,$$
akkor
$$\lim_{x\to a}\frac{f(x)}{g(x)} = A.$$

**Megjegyzés.** A tétel mind a tizenöt határérték-típusra érvényes: $a$ lehet $-\infty$, $a-0$, $a$, $a+0$, $+\infty$, és $A$ lehet $-\infty$, $b \in \mathbb{R}$, $+\infty$.

*Bizonyítás (az $a+0$, $A = b \in \mathbb{R}$, (1) esetben).* Legyen $\varepsilon > 0$. A feltevés szerint létezik $\delta > 0$ úgy, hogy minden $x \in (a, a+\delta)$-ra
$$\left|\frac{f'(x)}{g'(x)} - b\right| < \frac{\varepsilon}{2}.$$
Legyen $a < y < x < a+\delta$. A **Cauchy-féle középértéktétel** szerint van olyan $c \in (y, x)$, amelyre
$$\frac{f(x)-f(y)}{g(x)-g(y)} = \frac{f'(c)}{g'(c)} \in \left(b - \frac{\varepsilon}{2},\ b+\frac{\varepsilon}{2}\right).$$
Most rögzítsük $x$-et, és tartsunk $y \to a+0$-hoz. Az (1) feltevés szerint $f(y) \to 0$ és $g(y) \to 0$, tehát a bal oldal $\frac{f(x)}{g(x)}$-hez tart, és mivel a zárt intervallumba eső értékek határértéke is abban marad:
$$\frac{f(x)}{g(x)} \in \left[b-\frac{\varepsilon}{2},\ b+\frac{\varepsilon}{2}\right].$$
Ez minden $x \in (a, a+\delta)$-ra igaz, tehát $\frac{f(x)}{g(x)} \to b$. $\blacksquare$

Vegyük észre, hogy a bizonyítás a Cauchy-féle középértéktételen áll vagy bukik — ezért volt szükség rá a 74. szakaszban.

**Példák.**

**1.** A $0\cdot\infty$ típusú kifejezést először tört alakra hozzuk:
$$\lim_{x\to 0+0} x\ln x = \lim_{x\to 0+0}\frac{\ln x}{\frac{1}{x}} = \lim_{x\to 0+0}\frac{\frac{1}{x}}{-\frac{1}{x^2}} = \lim_{x\to 0+0}(-x) = 0.$$

**2.** Az $1^\infty$ és $0^0$ típusú kifejezéseket exponenciális alakra hozzuk:
$$\lim_{x\to 0+0} x^x = \lim_{x\to 0+0} e^{x\ln x} = e^0 = 1,$$
felhasználva az előző eredményt és az $e^x$ folytonosságát.

**3.** Kétszeri alkalmazás helyett néha ismert határértéket használunk:
$$\lim_{x\to 0}\frac{\cos x - 1}{x^2} = \lim_{x\to 0}\frac{-\sin x}{2x} = -\frac{1}{2},$$
ahol az utolsó lépésben a $\frac{\sin x}{x} \to 1$ határértéket alkalmaztuk (bár egy újabb L'Hospital-lépéssel is célhoz érnénk).

## 84. Taylor-polinomok és a Taylor-formula

Ha $f$ differenciálható $a$-ban, akkor az
$$T_1(x) = f(a) + f'(a)(x-a)$$
érintővel közelítjük $f$-et. Az érintő az az elsőfokú polinom, amely $a$-ban ugyanazt az értéket és ugyanazt a deriváltat veszi fel, mint $f$. Kézenfekvő a kérdés: mi történik, ha **több** deriváltban is megköveteljük az egyezést?

**Definíció (Taylor-polinom).** Ha $f$ $n$-szer differenciálható az $a$ pontban, akkor az
$$T_n(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \dots + \frac{f^{(n)}(a)}{n!}(x-a)^n = \sum_{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k$$
polinomot az $f$ $a$ körüli **$n$-edik Taylor-polinomjának** nevezzük.

Erre a polinomra teljesül, hogy
$$T_n^{(k)}(a) = f^{(k)}(a) \qquad \text{minden } k \le n\text{-re}$$
(a $\frac{1}{k!}$ nevezők pontosan ezt biztosítják, hiszen $\left((x-a)^k\right)^{(k)} = k!$).

**Az egyértelműség.** Sőt, ha egy legfeljebb $n$-edfokú $p(x)$ polinomra
$$\lim_{x\to a}\frac{f(x)-p(x)}{(x-a)^n} = 0,$$
akkor szükségképpen $p(x) = T_n(x)$. A Taylor-polinom tehát a lehető **legjobb** ilyen közelítés.

**Tétel (Taylor-formula).** Tegyük fel, hogy $f$ $(n+1)$-szer differenciálható az $[a,x]$ intervallumon. Ekkor létezik $c \in (a,x)$ úgy, hogy
$$(\otimes) \qquad f(x) = \underbrace{\sum_{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k}_{T_n(x)} + \underbrace{\frac{f^{(n+1)}(c)}{(n+1)!}(x-a)^{n+1}}_{\text{Lagrange-féle maradéktag}},$$
és létezik $d \in (a,x)$ úgy, hogy
$$(\otimes\otimes) \qquad f(x) = \sum_{k=0}^n \frac{f^{(k)}(a)}{k!}(x-a)^k + \underbrace{\frac{f^{(n+1)}(d)}{n!}(x-d)^n(x-a)}_{\text{Cauchy-féle maradéktag}}.$$
Hasonló érvényes az $(x, a]$ intervallumon is.

*Bizonyítás (a Lagrange-féle maradéktag).* Rögzítsük $x$-et, és tekintsük a következő segédfüggvényt a $t \in [a,x]$ változóban:
$$R(t) = \left[ f(t) + \frac{f'(t)}{1!}(x-t) + \dots + \frac{f^{(n)}(t)}{n!}(x-t)^n \right] - f(x).$$
Két megfigyelés: $R(x) = f(x) - f(x) = 0$, és $R(a) = T_n(x) - f(x)$ — vagyis $-R(a)$ éppen a keresett maradék.

Deriváljuk $R$-t $t$ szerint, a szorzatszabállyal. Minden tagból két rész keletkezik, és ezek **teleszkopikusan** kiesnek a szomszédjukkal:
$$R'(t) = f'(t) + \left[\frac{f''(t)}{1!}(x-t) - f'(t)\right] + \dots + \left[\frac{f^{(n+1)}(t)}{n!}(x-t)^n - \frac{f^{(n)}(t)}{(n-1)!}(x-t)^{n-1}\right] = \frac{f^{(n+1)}(t)}{n!}(x-t)^n.$$

Válasszuk most a
$$h(t) = (x-t)^{n+1}$$
segédfüggvényt, amelyre $h(x) = 0$ és $h'(t) = -(n+1)(x-t)^n$. Alkalmazzuk a **Cauchy-féle középértéktételt** az $R$ és $h$ függvényekre az $[a,x]$ intervallumon: létezik $c \in (a,x)$ úgy, hogy
$$\frac{R(x)-R(a)}{h(x)-h(a)} = \frac{R'(c)}{h'(c)}.$$
A bal oldal $\frac{-R(a)}{-(x-a)^{n+1}} = \frac{R(a)}{(x-a)^{n+1}}$, a jobb oldal pedig
$$\frac{\frac{f^{(n+1)}(c)}{n!}(x-c)^n}{-(n+1)(x-c)^n} = -\frac{f^{(n+1)}(c)}{(n+1)!},$$
ahol az $(x-c)^n$ tényezővel egyszerűsítettünk. Innen
$$R(a) = -\frac{f^{(n+1)}(c)}{(n+1)!}(x-a)^{n+1},$$
és mivel $R(a) = T_n(x) - f(x)$, éppen a $(\otimes)$ alakot kapjuk. $\blacksquare$

**Speciális eset ($n = 1$).**
$$f(x) = f(a) + f'(a)(x-a) + \frac{f''(c)}{2!}(x-a)^2.$$
Ez a Lagrange-féle középértéktétel „másodrendű" változata.

**Definíció (differenciál).** Ha $f$ differenciálható az $a$ helyen, akkor a lineáris
$$df(h) = f'(a)\cdot h$$
függvényt az $f$ **differenciáljának** nevezzük. Ez a megváltozás **lineáris főrésze**; a fizikában a
$$f(a+h) - f(a) \approx f'(a)h$$
becslés formájában használjuk.

**Példa.** $\sin x \approx x$, ha $x$ kicsi — hiszen $\sin x - \sin 0 \approx \cos(0)\cdot x = x$.

## 85. Taylor-sorok és hatványsorok

Kézenfekvő a kérdés: ha $n \to \infty$, vajon a Taylor-polinomok „elérik-e" a függvényt? A válasz nem mindig igen — de van egy egyszerű elégséges feltétel.

**Lemma (Taylor-sorba fejthetőség).** Legyen $a, x \in \mathbb{R}$, és jelölje $I$ az $a$ és $x$ által határolt zárt intervallumot. Tegyük fel, hogy $f$ az $I$ minden pontjában akárhányszor differenciálható, és létezik olyan $M$, amelyre
$$|f^{(n)}(y)| \le M \qquad \text{minden } y \in I, \ n \in \mathbb{N} \text{ esetén}.$$
Ekkor
$$f(x) = \sum_{n=0}^{\infty}\frac{f^{(n)}(a)}{n!}(x-a)^n.$$

*Bizonyítás.* A Taylor-formula szerint minden $n$-re
$$f(x) = T_n(x) + \frac{f^{(n+1)}(c_n)}{(n+1)!}(x-a)^{n+1}, \qquad c_n \in I.$$
A maradéktagot becsülve:
$$|f(x) - T_n(x)| = \left|\frac{f^{(n+1)}(c_n)}{(n+1)!}(x-a)^{n+1}\right| \le M\cdot\frac{|x-a|^{n+1}}{(n+1)!} \to 0 \qquad (n\to\infty).$$

A határátmenethez arra van szükség, hogy tetszőleges rögzített $k \in \mathbb{R}$-re
$$\lim_{n\to\infty}\frac{k^n}{n!} = 0,$$
azaz a faktoriális **gyorsabban nő bármely exponenciálisnál**. Ez például abból következik, hogy elég nagy $n$-re $n! > n^{n/2}$, és így
$$\frac{k^n}{n!} < \frac{k^n}{n^{n/2}} = \left(\frac{k}{\sqrt n}\right)^n \to 0. \qquad \blacksquare$$

**Következmény: az exponenciális sor.** Ha $I$ az $x$ és $a$ által határolt intervallum, akkor $\left|(e^x)^{(n)}\right| = e^x \le \max(e^0, e^x) = M$ az $I$-n. Az előző tétel szerint tehát ($a = 0$-val)
$$e^x = \sum_{n=0}^{\infty}\frac{e^0}{n!}x^n = 1 + \frac{x}{1!} + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots$$
Speciálisan $x = 1$-re
$$e = \sum_{n=0}^{\infty}\frac{1}{n!},$$
és ez a sor **jól konvergál** — sokkal gyorsabban, mint az $\left(1+\frac{1}{n}\right)^n$ sorozat, amellyel az $e$-t definiáltuk.

**Következmény: a trigonometrikus sorok.** Mivel $\left|(\sin x)^{(n)}\right| \le 1$ és $\left|(\cos x)^{(n)}\right| \le 1$ minden $x \in \mathbb{R}$-re (hiszen minden derivált $\pm\sin$ vagy $\pm\cos$), a lemma alkalmazható $M = 1$-gyel:
$$\sin x = \frac{\sin 0}{0!} + \frac{\cos 0}{1!}x + \frac{-\sin 0}{2!}x^2 + \frac{-\cos 0}{3!}x^3 + \dots = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \frac{x^7}{7!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^n x^{2n+1}}{(2n+1)!},$$
$$\cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \frac{x^6}{6!} + \dots = \sum_{n=0}^{\infty}\frac{(-1)^n x^{2n}}{(2n)!}.$$

**A hiperbolikus sorok.** Ugyanezzel a módszerrel (vagy az $e^x$ sorából közvetlenül):
$$\operatorname{sh} x = x + \frac{x^3}{3!} + \frac{x^5}{5!} + \dots, \qquad \operatorname{ch} x = 1 + \frac{x^2}{2!} + \frac{x^4}{4!} + \dots$$
Figyeljük meg: ugyanazok a tagok, mint a $\sin$ és $\cos$ soraiban, csak **váltakozó előjelek nélkül**. Ez a legmélyebb magyarázata a trigonometrikus és a hiperbolikus függvények párhuzamának.

**Definíció (hatványsor).** Ha $x_0 \in \mathbb{R}$ és $a_n \in \mathbb{R}$ ($n = 0, 1, \dots$), akkor a
$$\sum_{n=0}^{\infty} a_n (x-x_0)^n$$
függvénysort **$x_0$ körüli hatványsornak** nevezzük. Ha $x_0 = 0$, akkor **Maclaurin-sorról** beszélünk.

A hatványsor tehát a polinom „végtelen fokú" általánosítása.

**Példák.**
$$\sum_{n=0}^{\infty}\frac{x^n}{n!} = e^x \quad (\forall x \in \mathbb{R}), \qquad \sum_{n=0}^{\infty}x^n = \frac{1}{1-x} \quad (-1 < x < 1).$$
Az utóbbi éppen a mértani sor, amelyet a 37. szakaszban tárgyaltunk — most azonban **függvényként**, nem pusztán számként olvassuk.

## 86. Differenciálegyenletek

### A szabadesés

A $t_0 = 0$ időpillanatban $h_0$ magasságból, nyugalomból induló, szabadon eső test sebességét a $v(t) = -gt$ egyenlet adja meg. Milyen magasan van a test a $t_1$ időpillanatban?

Mivel a sebesség a magasság deriváltja:
$$\frac{dh(t)}{dt} = \dot h(t) = h'(t) = -gt.$$
Ez egy **differenciálegyenlet**: olyan egyenlet, amely egy ismeretlen **függvény** és annak deriváltjai közötti összefüggést ír le. Keressük azokat a differenciálható $h$ függvényeket, amelyek eleget tesznek neki.

Próbálgatással (a következő félévben: integrálással) találunk egy megoldást:
$$h_1(t) = -\frac{gt^2}{2}, \qquad \text{hiszen} \qquad \left(-\frac{gt^2}{2}\right)' = -gt.$$
Mivel $C' = 0$ minden konstansra, a $-\frac{gt^2}{2} + C$ alakú függvények is megoldások, tetszőleges $C \in \mathbb{R}$ esetén. **De vajon vannak-e más megoldások?**

**Állítás.** A $h'(t) = -gt$ egyenlet **összes** megoldása $h(t) = -\frac{gt^2}{2} + C$ alakú, $C \in \mathbb{R}$.

*Bizonyítás.* Legyen $f(t)$ egy tetszőleges megoldás. Tekintsük a különbségfüggvényt:
$$\big(f(t) - h_1(t)\big)' = f'(t) - h_1'(t) = -gt - (-gt) = 0 \qquad \text{minden } t\text{-re}.$$
A 76. szakasz tétele szerint (azonosan nulla deriváltú függvény egy intervallumon konstans) ebből
$$f(t) - h_1(t) = C \implies f(t) = h_1(t) + C. \qquad \blacksquare$$

Itt látszik, miért volt fontos az a látszólag jelentéktelen tétel: **ez garantálja a megoldás egyértelműségét.**

**A kezdetiérték-probléma.** A $C$ konstanst a kezdeti feltétel rögzíti. Mivel $h(0) = h_0$:
$$h(0) = -\frac{g\cdot 0^2}{2} + C = C = h_0,$$
tehát az egyértelmű megoldás
$$h(t) = -\frac{gt^2}{2} + h_0.$$

### Exponenciális növekedés és bomlás

Gyakran — például népességnövekedési modellekben vagy radioaktív bomlásnál — a **változás sebessége arányos a jelenlévő „anyag" mennyiségével**. Ha $f(t)$ az anyagmennyiség a $t$ időpillanatban, akkor a differenciálegyenlet
$$f' = k\cdot f, \qquad k \in \mathbb{R} \ \text{konstans}.$$

**Állítás.** Ha $f$ differenciálható az $I$ intervallumon és minden $t \in I$-re $f'(t) = k f(t)$, akkor
$$f(t) = C_0 e^{kt}, \qquad C_0 \in \mathbb{R}.$$

*Bizonyítás.* **Ezek megoldások:** $\left(C_0 e^{kt}\right)' = C_0 \cdot k \cdot e^{kt} = k f(t)$.

**Csak ezek a megoldások:** legyen $f$ tetszőleges megoldás, és vezessük be a
$$g(t) = f(t)e^{-kt}$$
segédfüggvényt („integráló szorzó"). Ekkor a szorzatszabállyal
$$g'(t) = \underbrace{f'(t)}_{= k f(t)}e^{-kt} + f(t)\cdot(-k)e^{-kt} = kf(t)e^{-kt} - kf(t)e^{-kt} = 0 \qquad \text{minden } t \in I\text{-re}.$$
Tehát $g$ konstans: létezik $C_0 \in \mathbb{R}$, amelyre
$$C_0 = g(t) = f(t)e^{-kt} \implies f(t) = C_0 e^{kt}. \qquad \blacksquare$$

A $k > 0$ eset a **növekedés**, a $k < 0$ a **csökkenés (bomlás)**.

### Alkalmazás: radioaktív kormeghatározás

A $C_{14}$ izotóp $C_{12}$-vé bomlik; felezési ideje $T = 5700$ év. Mennyi a $k$ együttható?

Legyen $f(t)$ a $C_{14}$ mennyisége. A felezési idő definíciója szerint
$$\frac{1}{2}f(t_0) = f(t_0 + 5700).$$
Behelyettesítve $f(t) = C_0 e^{kt}$-t (feltéve $C_0 \neq 0$):
$$\frac{1}{2}C_0 e^{kt_0} = C_0 e^{k(t_0 + 5700)} \implies \frac{1}{2} = e^{5700k},$$
amiből
$$k = \frac{\ln\frac{1}{2}}{5700} = \frac{-\ln 2}{T}.$$

**Kérdés: hány százalék $C_{14}$ bomlik el 2000 év alatt?**
$$\frac{f(t_0 + 2000)}{f(t_0)} = \frac{C_0 e^{-\frac{\ln 2}{5700}(t_0+2000)}}{C_0 e^{-\frac{\ln 2}{5700}t_0}} = e^{-\frac{2000\ln 2}{5700}} = 0{,}784\dots$$
Tehát körülbelül $21{,}6\%$ bomlik el.

### Alkalmazás: Newton fűtési/hűtési törvénye

Egy állandó $T_\infty$ hőmérsékletű szobába helyezett, $T_0$ hőmérsékletű tárgy hőmérséklet-változásának sebessége arányos a hőmérséklet-különbséggel:
$$T'(t) = k\big(T(t) - T_\infty\big).$$
Vezessük be az $f(t) = T(t) - T_\infty$ függvényt; ekkor $f'(t) = T'(t) = kf(t)$, tehát az előző állítás szerint $f(t) = C_0 e^{kt}$, ahol
$$C_0 = f(0) = T(0) - T_\infty = T_0 - T_\infty.$$
Így
$$T(t) = T_\infty + \big(T(0) - T_\infty\big)e^{kt}, \qquad k < 0.$$

**Példa.** Egy $100\,^\circ\mathrm{C}$-os forró leves áll egy $20\,^\circ\mathrm{C}$-os szobában. Egy perc múlva $95\,^\circ\mathrm{C}$-os. Milyen meleg $10$ perc múlva? Mikor lesz $45\,^\circ\mathrm{C}$-os?

Itt $T_0 = T(0) = 100$ és $T_\infty = 20$, tehát
$$T(t) = 20 + 80 e^{kt}.$$
A $k$ meghatározása az első perc adatából:
$$T(1) = 20 + 80e^k = 95 \implies e^k = \frac{75}{80} \implies k = \ln\frac{75}{80} \approx -0{,}0645385\dots$$

**10 perc múlva:**
$$T(10) = 20 + 80e^{10k} \approx 61{,}55\,^\circ\mathrm{C}.$$

**Mikor lesz $45\,^\circ\mathrm{C}$?**
$$45 = 20 + 80e^{kt} \implies e^{kt} = \frac{25}{80} \implies t = \frac{\ln\frac{25}{80}}{k} \approx 18{,}02 \ \text{perc}.$$

---

## Utószó

Ezzel bezárult a kör. Az első oldalon két kérdést tettünk fel: mekkora a kör területe, és mekkora egy test pillanatnyi sebessége. A másodikra most már pontos választ tudunk adni — a derivált fogalma, a középértéktételek és a Taylor-formula révén nemcsak kiszámolni tudjuk, hanem meg is tudjuk indokolni, miért helyes, amit csinálunk.

Az első kérdés — a területszámítás — a következő félévre marad: ott az **integrálszámítás** ugyanezt az utat járja be még egyszer, a közelítő összegektől a határértéken át a szigorú fogalomig. Az alapok azonban már készen állnak: a teljességi axióma, a Bolzano–Weierstrass-tétel, a folytonosság és a differenciálhatóság.

Érdemes még egyszer végigfutni a gondolatmenet gerincén:

$$\text{Teljességi axióma} \to \sup/\inf \to \text{monoton korlátos sorozat konvergens} \to \text{Bolzano–Weierstrass}$$
$$\to \text{Cauchy-kritérium},\ \text{Weierstrass-féle maximumtétel} \to \text{Rolle} \to \text{Lagrange} \to \text{Cauchy}$$
$$\to \text{monotonitás},\ \text{konvexitás},\ \text{L'Hospital},\ \text{Taylor-formula} \to \text{differenciálegyenletek}.$$

Egyetlen axiómából, amely azt mondja ki, hogy a számegyenesen nincsenek lyukak.
