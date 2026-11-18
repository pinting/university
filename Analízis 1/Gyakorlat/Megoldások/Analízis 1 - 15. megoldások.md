# Analízis 1 – 15. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 152. feladat

Bizonyítsuk be, hogy az $x^2 - y^2 = a$ és az $xy = b$ görbék merőlegesen metszik egymást!

**Megoldás.**

Legyen $(x_0, y_0)$ a két görbe egy tetszőleges közös pontja. Két görbe merőlegesen metszi egymást a metszéspontban, ha az ott húzott érintőik merőlegesek egymásra.

**1. eset: $b \ne 0$.** Mivel $x_0 y_0 = b \ne 0$, sem $x_0$, sem $y_0$ nem lehet nulla.

- Az $x^2 - y^2 = a$ egyenletet $x$ szerint implicit módon deriválva (az $y = y(x)$ feltevéssel):
  $$2x - 2y y' = 0 \quad \Longrightarrow \quad y'_1(x_0, y_0) = \frac{x_0}{y_0}.$$
- Az $xy = b$ egyenletet $x$ szerint implicit módon deriválva:
  $$y + x y' = 0 \quad \Longrightarrow \quad y'_2(x_0, y_0) = -\frac{y_0}{x_0}.$$

Számítsuk ki az érintők meredekségeinek szorzatát:
$$y'_1(x_0, y_0) \cdot y'_2(x_0, y_0) = \frac{x_0}{y_0} \cdot \left(-\frac{y_0}{x_0}\right) = -1.$$
Mivel két egyenes meredekségének szorzata $-1$, az érintők merőlegesek egymásra, tehát a görbék valóban merőlegesen metszik egymást.

**2. eset: $b = 0$.** Ekkor $xy = 0$, vagyis a görbe az $x$- és az $y$-tengely uniója.
- Ha $a > 0$, akkor $x^2 - y^2 = a$ a $(\pm\sqrt{a}, 0)$ pontokban metszi az $y = 0$ egyenest ($x$-tengely). Itt a hiperbola érintője függőleges ($x = \pm\sqrt{a}$), az $x$-tengely érintője vízszintes ($y = 0$), ezek merőlegesek.
- Ha $a < 0$, akkor a metszéspontok a $(0, \pm\sqrt{-a})$ pontok az $y$-tengelyen; itt a hiperbola érintője vízszintes, az $y$-tengely függőleges, amelyek szintén merőlegesek.
- Ha $a = b = 0$, a görbék az origóban találkoznak, de ott nem differenciálható elágazási pont van.

::: elmelet
**Elméleti háttér — ortogonális trajektóriák és a Cauchy–Riemann-egyenletek.**
Két görbesereg ortogonális, ha minden metszéspontban az érintőik merőlegesek egymásra. Vektoros szempontból az $F(x, y) = x^2 - y^2 - a = 0$ és $G(x, y) = xy - b = 0$ szintvonalak normálvektorai a gradiensvektorok: $\nabla F = (2x, -2y)$ és $\nabla G = (y, x)$. A skaláris szorzatuk:
$$\nabla F \cdot \nabla G = 2x \cdot y + (-2y) \cdot x = 2xy - 2xy = 0.$$
Komplex függvénytani háttér: a $w = z^2 = (x + iy)^2 = (x^2 - y^2) + i(2xy)$ leképezés valós és képzetes része harmonikus és eleget tesz a Cauchy–Riemann-egyenleteknek, így a valós és képzetes rész szintvonalai automatikusan ortogonális hálót alkotnak.
:::

## 153. feladat

Mutassuk meg, hogy ha $f : \mathbb{R} \to \mathbb{R}$ páros és differenciálható, akkor $f'$ páratlan.

**Megoldás.**

A feltétel szerint $f(-x) = f(x)$ minden $x \in \mathbb{R}$-re. Meg kell mutatnunk, hogy $f'(-x) = -f'(x)$ minden $x \in \mathbb{R}$-re.

**1. módszer (közvetlenül a definícióból):**
A derivált definíciója szerint a $-x$ helyen:
$$f'(-x) = \lim_{h \to 0} \frac{f(-x + h) - f(-x)}{h}.$$
Mivel $f$ páros, $f(-x) = f(x)$, és $f(-x + h) = f(-(x - h)) = f(x - h)$. Ezt behelyettesítve:
$$f'(-x) = \lim_{h \to 0} \frac{f(x - h) - f(x)}{h}.$$
Alkalmazzuk a $k = -h$ helyettesítést. Mivel $h \to 0 \iff k \to 0$:
$$f'(-x) = \lim_{k \to 0} \frac{f(x + k) - f(x)}{-k} = -\lim_{k \to 0} \frac{f(x + k) - f(x)}{k} = -f'(x).$$
Ez pontosan azt jelenti, hogy $f'$ páratlan függvény.

**2. módszer (láncszabállyal):**
Legyen $g(x) = f(-x) = (f \circ \varphi)(x)$, ahol $\varphi(x) = -x$. A láncszabály szerint:
$$g'(x) = f'(\varphi(x)) \cdot \varphi'(x) = f'(-x) \cdot (-1) = -f'(-x).$$
Másrészt $f$ páros volta miatt minden $x$-re $g(x) = f(x)$, így a deriváltjaik is megegyeznek: $g'(x) = f'(x)$. A kettőt egyenlővé téve:
$$f'(x) = -f'(-x) \quad \Longleftrightarrow \quad f'(-x) = -f'(x).$$

::: elmelet
**Elméleti háttér — szimmetriák és derivált.**
Ha egy függvény páros, grafikonja szimmetrikus az $y$-tengelyre. Az $x$ és $-x$ pontokbeli érintők egymás tükörképei az $y$-tengelyre, így meredekségeik egymás ellentettjei: $f'(-x) = -f'(x)$.
Speciálisan $x = 0$-ban: $f'(0) = -f'(0) \implies 2f'(0) = 0 \implies f'(0) = 0$. Vagyis minden mindenütt differenciálható páros függvénynek az origóban vízszintes az érintője. Hasonlóan bizonyítható, hogy páratlan differenciálható függvény deriváltja páros.
:::

## 154. feladat

Elfogadva azt a tényt, hogy az $f(x) = x^x$ függvény szigorúan monoton $[1, \infty)$-ben határozzuk meg inverzének a deriváltját a $27$ pontban.

**Megoldás.**

Legyen $y_0 = 27$. Olyan $x_0 \in [1, \infty)$ értéket keresünk, amelyre $f(x_0) = 27$.
Mivel
$$f(3) = 3^3 = 27,$$
és a feladat szerint $f$ szigorúan monoton az $[1, \infty)$ intervallumon (ezért injektív), $x_0 = 3$ az egyetlen ilyen érték.

Számítsuk ki $f'(x)$-et:
$$f(x) = x^x = e^{x \ln x} \qquad (x \ge 1).$$
A láncszabály és a szorzatszabály alapján:
$$f'(x) = e^{x \ln x} \cdot (x \ln x)' = x^x \left(1 \cdot \ln x + x \cdot \frac1x\right) = x^x (\ln x + 1).$$
Az $x_0 = 3$ helyen:
$$f'(3) = 3^3 (\ln 3 + 1) = 27(1 + \ln 3) \ne 0.$$

Mivel $f$ folytonos és szigorúan monoton, az inverz függvény differenciálási szabálya szerint $\varphi = f^{-1}$ differenciálható a $27$ pontban, és
$$(f^{-1})'(27) = \frac{1}{f'(3)} = \frac{1}{27(1 + \ln 3)}.$$

::: elmelet
**Elméleti háttér — inverz függvény deriválása.**
Ha $f$ szigorúan monoton és folytonos egy intervallumon, és az $x_0$ pontban $f'(x_0) \ne 0$, akkor az inverz függvény $\varphi = f^{-1}$ differenciálható az $y_0 = f(x_0)$ pontban, és
$$\varphi'(y_0) = \frac{1}{f'(x_0)} = \frac{1}{f'(\varphi(y_0))}.$$
A képlet szemléletesen abból adódik, hogy az inverz függvény grafikonja az eredeti függvény tükörképe az $y = x$ egyenesre, így a meredekség a reciprokára változik: $\frac{dx}{dy} = \frac{1}{dy/dx}$.
:::

## 155. feladat

Mutassuk meg, hogy az $y = \frac{x^2}{4c}$ egyenletű parabola alakú tükör, az $y$-tengellyel párhuzamos egyeneseket a $(0, c)$ fókuszponton keresztül veri vissza. (ld. bal alsó ábra.)

**Megoldás.**

Tegyük fel, hogy $c > 0$. Legyen $P\left(x_0, y_0\right) = \left(x_0, \frac{x_0^2}{4c}\right)$ a parabola tetszőleges pontja.

- Ha $x_0 = 0$, akkor $P = (0, 0)$ a tengelypont. Itt az érintő vízszintes ($y = 0$), a függőlegesen lefelé érkező fénysugár függőlegesen felfelé verődik vissza, átmenve a $(0, c)$ fókuszponton.
- Tegyük fel, hogy $x_0 \ne 0$. A parabola tengelyes szimmetriája miatt feltehetjük, hogy $x_0 > 0$.

A beeső sugár függőleges, iránya lefelé mutat: $\mathbf{v}_{\text{be}} = (0, -1)$.
A parabola érintőjének meredeksége a $P$ pontban:
$$y' = \left(\frac{x^2}{4c}\right)' = \frac{2x}{4c} = \frac{x}{2c} \quad \Longrightarrow \quad m = \frac{x_0}{2c} > 0.$$
Jelölje $\alpha$ az érintő hajlásszögét a pozitív $x$-tengelyhez: $\operatorname{tg} \alpha = m = \frac{x_0}{2c}$.
A függőleges beeső egyenes és az érintő közötti $\theta_1$ beesési szög:
$$\theta_1 = \frac\pi2 - \alpha \quad \Longrightarrow \quad \operatorname{tg} \theta_1 = \operatorname{ctg} \alpha = \frac{1}{m} = \frac{2c}{x_0}.$$

Most vizsgáljuk a $P$-ből a fókuszpontba, $F(0, c)$-be tartó visszavert egyenest!
A $PF$ egyenes irányvektora:
$$\vec{PF} = \left(0 - x_0,\, c - \frac{x_0^2}{4c}\right) = \left(-x_0,\, \frac{4c^2 - x_0^2}{4c}\right),$$
így meredeksége:
$$m_{PF} = \frac{\frac{4c^2 - x_0^2}{4c}}{-x_0} = \frac{x_0^2 - 4c^2}{4c x_0}.$$

Számítsuk ki az érintő és a $PF$ egyenes által bezárt $\theta_2$ visszaverődési szöget a két egyenes hajlásszögére vonatkozó képlettel:
$$\operatorname{tg} \theta_2 = \frac{m - m_{PF}}{1 + m \cdot m_{PF}}.$$
A számláló:
$$m - m_{PF} = \frac{x_0}{2c} - \frac{x_0^2 - 4c^2}{4c x_0} = \frac{2x_0^2 - (x_0^2 - 4c^2)}{4c x_0} = \frac{x_0^2 + 4c^2}{4c x_0}.$$
A nevező:
$$1 + m \cdot m_{PF} = 1 + \frac{x_0}{2c} \cdot \frac{x_0^2 - 4c^2}{4c x_0} = 1 + \frac{x_0^2 - 4c^2}{8c^2} = \frac{8c^2 + x_0^2 - 4c^2}{8c^2} = \frac{x_0^2 + 4c^2}{8c^2}.$$
A kettő hányadosa:
$$\operatorname{tg} \theta_2 = \frac{\frac{x_0^2 + 4c^2}{4c x_0}}{\frac{x_0^2 + 4c^2}{8c^2}} = \frac{8c^2}{4c x_0} = \frac{2c}{x_0}.$$
Azt kaptuk, hogy
$$\operatorname{tg} \theta_1 = \operatorname{tg} \theta_2 = \frac{2c}{x_0} \quad \Longrightarrow \quad \theta_1 = \theta_2.$$
A beesési szög megegyezik a visszaverődési szöggel, tehát a fénysugár pontosan a $(0, c)$ fókuszponton keresztül verődik vissza.

::: elmelet
**Elméleti háttér — a parabola geometriai és optikai definíciója.**
A parabola azon pontok mértani helye a síkon, amelyek egyenlő távolságra vannak az $F(0, c)$ fókusztól és a vezéregyenestől ($y = -c$). A $P\left(x_0, \frac{x_0^2}{4c}\right)$ pont távolsága a vezéregyenestől $y_0 + c = \frac{x_0^2}{4c} + c$, a fókusztól pedig $\sqrt{x_0^2 + (y_0 - c)^2} = \sqrt{x_0^2 + \frac{x_0^4}{16c^2} - \frac{x_0^2}{2} + c^2} = \frac{x_0^2}{4c} + c$. A parabola érintője felezi a fókuszi sugár és a tengellyel párhuzamos egyenes által bezárt szöget. Ezen alapszik a parabolatükrök (csillagászati távcsövek, fényszórók, parabolaantennák) működése.
:::

## 156*. feladat

Tegyük fel, hogy $f$ differenciálható $\mathbb{R}$-en. Mutassuk meg, hogy ekkor létezik $g_n \in C(\mathbb{R})$, hogy $\forall x \in \mathbb{R}$-re $\lim_{n \to \infty} g_n(x) = f'(x)$. (Ezt hívják a derivált Baire 1 tulajdonságának.)

**Megoldás.**

Minden $n \in \mathbb{N}^+$-ra definiáljuk a differenciahányados-függvényt:
$$g_n(x) = \frac{f\left(x + \frac1n\right) - f(x)}{\frac1n} = n\left(f\left(x + \frac1n\right) - f(x)\right).$$

**1. A $g_n$ függvények folytonossága:**
Mivel $f$ mindenütt differenciálható $\mathbb{R}$-en, $f$ folytonos is $\mathbb{R}$-en: $f \in C(\mathbb{R})$.
Az $x \mapsto x + \frac1n$ eltolás folytonos, így az összetett $x \mapsto f\left(x + \frac1n\right)$ függvény is folytonos. Két folytonos függvény különbsége és konstansszorosa szintén folytonos, tehát
$$g_n \in C(\mathbb{R}) \qquad \forall n \in \mathbb{N}^+.$$

**2. Pontonkénti konvergencia $f'$-höz:**
Legyen $x \in \mathbb{R}$ tetszőlegesen rögzített. A derivált definíciója szerint
$$f'(x) = \lim_{h \to 0} \frac{f(x + h) - f(x)}{h}.$$
Mivel a $h_n = \frac1n$ sorozatra $h_n \to 0$ és $h_n \ne 0$ minden $n$-re, a függvényhatárérték átviteli elve (Heine-definíció) szerint
$$\lim_{n \to \infty} g_n(x) = \lim_{n \to \infty} \frac{f\left(x + \frac1n\right) - f(x)}{\frac1n} = f'(x).$$
Ez minden $x \in \mathbb{R}$-re teljesül, tehát a folytonos $g_n$ függvénysorozat pontonként konvergál az $f'$ deriváltfüggvényhez.

::: elmelet
**Elméleti háttér — Baire-osztályok.**
Egy függvény **Baire 1** osztályú, ha előáll folytonos függvények pontonkénti határértékeként. A feladat megmutatja, hogy **minden deriváltfüggvény Baire 1 osztályú** — még akkor is, ha maga a derivált nem folytonos (pl. $x^2 \sin(1/x)$ deriváltja a $0$-ban). Baire tétele szerint minden Baire 1 osztályú függvénynek a szakadási pontjai I. kategóriájú (sovány) halmazt alkotnak, így folytonossági pontjai sűrűek. Ebből ismét következik, hogy egy derivált nem viselkedhet tetszőlegesen vadul (pl. a Dirichlet-függvény nem lehet deriváltfüggvény).
:::

## 157. feladat

Bizonyítsuk be, hogy $|\operatorname{arctg} x - \operatorname{arctg} y| \le |x - y|$, teljesül $\forall x, y \in \mathbb{R}$-re.

**Megoldás.**

- Ha $x = y$, akkor a bal oldal $|\operatorname{arctg} x - \operatorname{arctg} x| = 0$, a jobb oldal $|x - x| = 0$, az egyenlőség fennáll.
- Tegyük fel, hogy $x \ne y$; az $x$ és $y$ szimmetriája miatt feltehetjük, hogy $x < y$.

Tekintsük az $f(t) = \operatorname{arctg} t$ függvényt az $[x, y]$ zárt intervallumon.
1. $f$ folytonos az $[x, y]$ intervallumon,
2. $f$ differenciálható az $(x, y)$ nyílt intervallumon, és deriváltja $f'(t) = \dfrac{1}{1 + t^2}$.

A Lagrange-féle középértéktétel szerint létezik olyan $c \in (x, y)$, amelyre
$$\frac{\operatorname{arctg} y - \operatorname{arctg} x}{y - x} = f'(c) = \frac{1}{1 + c^2}.$$
Mivel $c \in \mathbb{R}$, $c^2 \ge 0$, ezért $1 + c^2 \ge 1$, amiből
$$0 < \frac{1}{1 + c^2} \le 1.$$
Abszolút értéket véve:
$$\left|\frac{\operatorname{arctg} y - \operatorname{arctg} x}{y - x}\right| = \frac{1}{1 + c^2} \le 1.$$
Mindkét oldalt megszorozva a pozitív $|y - x|$-szel:
$$|\operatorname{arctg} x - \operatorname{arctg} y| \le |x - y|.$$

::: elmelet
**Elméleti háttér — Lipschitz-folytonosság és a Lagrange-tétel.**
Egy függvény $L$-Lipschitz-tulajdonságú, ha $|f(x) - f(y)| \le L|x - y|$. A Lagrange-tétel közvetlen következménye: ha egy differenciálható függvény deriváltja korlátos, $|f'(t)| \le L$, akkor a függvény $L$-Lipschitz. Mivel $(\operatorname{arctg} t)' = \frac{1}{1 + t^2} \le 1$, az $\operatorname{arctg}$ függvény $1$-Lipschitz (nem-tágító) leképezés. Hasonlóan bizonyítható, hogy $|\sin x - \sin y| \le |x - y|$ és $|\cos x - \cos y| \le |x - y|$, mert $|\sin'| = |\cos| \le 1$.
:::

## 158. feladat

Az előadáson a Cauchy-középértéktétel bizonyítása csak vázlatos volt.

A $h(x) = f(x) - (g(x) - g(a))\frac{f(b) - f(a)}{g(b) - g(a)}$ segédfüggvény került megadásra. Fejezzük be a bizonyítást!

**Megoldás.**

**A tétel kimondása:** Ha $f, g \in C[a, b]$, mindketten differenciálhatók $(a, b)$-n, és $g'(x) \ne 0$ minden $x \in (a, b)$-re, akkor létezik olyan $c \in (a, b)$, amelyre
$$\frac{f'(c)}{g'(c)} = \frac{f(b) - f(a)}{g(b) - g(a)}.$$

**A bizonyítás lépései:**

**1. lépés: A nevező nem nulla.**
Megmutatjuk, hogy $g(b) - g(a) \ne 0$.
Indirekt tegyük fel, hogy $g(b) = g(a)$. Mivel $g \in C[a, b]$ és $g$ differenciálható $(a, b)$-n, $g$-re teljesülnek a Rolle-tétel feltételei az $[a, b]$ intervallumon. A Rolle-tétel szerint létezne olyan $\xi \in (a, b)$, amelyre $g'(\xi) = 0$. Ez ellentmond a feltevésnek, miszerint $g'(x) \ne 0$ minden $x \in (a, b)$-re. Tehát $g(b) - g(a) \ne 0$, és a megadott $K = \frac{f(b) - f(a)}{g(b) - g(a)}$ hányados értelmezett.

**2. lépés: A $h(x)$ segédfüggvény tulajdonságai.**
Definiáljuk a segédfüggvényt:
$$h(x) = f(x) - \big(g(x) - g(a)\big) \frac{f(b) - f(a)}{g(b) - g(a)}.$$
- *Folytonosság:* $f$ és $g$ folytonos $[a, b]$-n, és $h$ ezek lineáris kombinációja, így $h \in C[a, b]$.
- *Differenciálhatóság:* $f$ és $g$ differenciálható $(a, b)$-n, így $h$ is az, és a deriváltja:
  $$h'(x) = f'(x) - g'(x) \frac{f(b) - f(a)}{g(b) - g(a)}.$$
- *Végpontbeli értékek:*
  $$h(a) = f(a) - (g(a) - g(a)) \frac{f(b) - f(a)}{g(b) - g(a)} = f(a) - 0 = f(a),$$
  $$h(b) = f(b) - (g(b) - g(a)) \frac{f(b) - f(a)}{g(b) - g(a)} = f(b) - (f(b) - f(a)) = f(a).$$
  Tehát $h(a) = h(b)$.

**3. lépés: Rolle tétele alkalmazása.**
Mivel $h \in C[a, b]$, differenciálható $(a, b)$-n, és $h(a) = h(b)$, a Rolle-tétel szerint létezik olyan $c \in (a, b)$, amelyre
$$h'(c) = 0.$$

**4. lépés: A képlet felírása.**
Behelyettesítve $h'(c)$ kifejezését:
$$0 = h'(c) = f'(c) - g'(c) \frac{f(b) - f(a)}{g(b) - g(a)} \quad \Longrightarrow \quad f'(c) = g'(c) \frac{f(b) - f(a)}{g(b) - g(a)}.$$
Mivel a feltevés szerint $g'(c) \ne 0$, mindkét oldalt eloszthatjuk $g'(c)$-vel:
$$\frac{f'(c)}{g'(c)} = \frac{f(b) - f(a)}{g(b) - g(a)}.$$
Ezzel a bizonyítást befejeztük. $\blacksquare$

::: elmelet
**Elméleti háttér — a középértéktételek hierarchiája.**
A három középértéktétel egymásból következik:
$$\text{Weierstrass-tétel} \implies \text{Rolle-tétel} \implies \text{Lagrange-tétel} \implies \text{Cauchy-tétel}.$$
A Cauchy-tétel geometriai jelentése: a síkbeli paraméteres görbe $(g(t), f(t))$ húrjának iránya megegyezik a görbe érintőjének irányával egy alkalmas $t = c$ időpillanatban. A Cauchy-középértéktétel a legfőbb eszköze a L'Hospital-szabály bizonyításának.
:::

## 159. feladat

Mutassuk meg, hogy az $x^7 + 8x^2 + 5x - 23 = 0$ egyenletnek legfeljebb három különböző gyöke van.

**Megoldás.**

Legyen $P(x) = x^7 + 8x^2 + 5x - 23$. A polinomfüggvény a teljes $\mathbb{R}$-en akárhányszor differenciálható.

Számítsuk ki a deriváltjait:
$$P'(x) = 7x^6 + 16x + 5,$$
$$P''(x) = 42x^5 + 16,$$
$$P'''(x) = 210x^4.$$

**1. A $P''(x)$ zérushelyeinek száma:**
Mivel $P'''(x) = 210x^4 \ge 0$, és csak $x = 0$-ban nulla, $P''$ szigorúan monoton növekvő a teljes $\mathbb{R}$-en.
Mivel $\lim_{x \to -\infty} P''(x) = -\infty$ és $\lim_{x \to \infty} P''(x) = +\infty$, a Bolzano–Darboux-tétel és a szigorú monotonitás miatt a
$$P''(x) = 42x^5 + 16 = 0$$
egyenletnek **pontosan egy valós gyöke van** ($x_0 = -\sqrt[5]{16/42} = -\sqrt[5]{8/21}$).

**2. A $P'(x)$ gyökeinek száma:**
A Rolle-tétel következménye szerint két különböző gyök között a deriváltnak mindig van legalább egy gyöke.
Ha $P'$-nek legalább $3$ különböző valós gyöke volna, akkor a Rolle-tétel szerint $P''$-nek legalább $2$ különböző valós gyöke kellene legyen. Mivel $P''$-nek csak $1$ valós gyöke van, $P'$-nek **legfeljebb $2$ különböző valós gyöke lehet**.

**3. A $P(x)$ gyökeinek száma:**
Ismét a Rolle-tétel miatt: ha $P$-nek legalább $4$ különböző valós gyöke volna, akkor a szomszédos gyökök közötti intervallumokra a Rolle-tételt alkalmazva $P'$-nek legalább $3$ különböző valós gyökének kellene lennie.
Ez azonban ellentmond annak, hogy $P'$-nek legfeljebb $2$ valós gyöke van.

Következésképpen a $P(x) = 0$ egyenletnek **legfeljebb három különböző valós gyöke lehet**.

*(Megjegyzés: $P(1) = 1 + 8 + 5 - 23 = -9 < 0$ és $P(2) = 128 + 32 + 10 - 23 = 147 > 0$, így a Bolzano–Darboux-tétel szerint legalább egy valós gyöke biztosan van.)*

::: elmelet
**Elméleti háttér — Rolle tétele és a polinomok valós gyökeinek száma.**
Ha egy intervallumon differenciálható $f$ függvénynek $k$ darab különböző valós gyöke van, akkor a Rolle-tétel szerint $f'$-nek legalább $k - 1$ darab különböző valós gyöke van. Kontrapozícióval: ha $f^{(m)}$-nek legfeljebb $r$ valós gyöke van, akkor $f$-nek legfeljebb $r + m$ valós gyöke lehet. Jelen feladatban $m = 2$, $r = 1$, így $P$ valós gyökeinek száma legfeljebb $1 + 2 = 3$.
:::

## 160. feladat

Határozzuk meg az $f(x) = x^m(1 - x)^n$, ($m, n \in \mathbb{N}$) maximumát és minimumát $[0, 1]$-en!

**Megoldás.**

Feltehető, hogy $m, n \ge 1$ (pozitív egészek; ha valamelyik $0$, a feladat triviális).
A függvény értelmezési tartománya $[0, 1]$.

**1. Minimum:**
Minden $x \in [0, 1]$-re $x \ge 0$ és $1 - x \ge 0$, ezért
$$f(x) = x^m (1 - x)^n \ge 0.$$
A végpontokban:
$$f(0) = 0^m \cdot 1^n = 0, \qquad f(1) = 1^m \cdot 0^n = 0.$$
Bármely belső $x \in (0, 1)$ pontra $x > 0$ és $1 - x > 0$, így $f(x) > 0$.
Ezért $f$ **abszolút minimuma $0$**, amelyet a két végpontban, $x = 0$-ban és $x = 1$-ben vesz fel.

**2. Maximum:**
$f$ folytonos a korlátos és zárt $[0, 1]$ intervallumon, így a Weierstrass-tétel szerint felveszi a maximumát. Mivel a végpontokban értéke $0$, a nyílt $(0, 1)$ intervallumon pedig pozitív, a maximumát egy $(0, 1)$-beli belső pontban veszi fel, ahol a Fermat-tétel szerint $f'(x) = 0$.

Számítsuk ki a deriváltat a szorzatszabállyal és a láncszabállyal:
$$f'(x) = m x^{m-1} (1 - x)^n + x^m \cdot n(1 - x)^{n-1} \cdot (-1) = x^{m-1} (1 - x)^{n-1} \Big( m(1 - x) - nx \Big).$$
Bontsuk fel a zárójelet:
$$m(1 - x) - nx = m - (m + n)x.$$
Mivel $x \in (0, 1)$-re $x^{m-1} > 0$ és $(1 - x)^{n-1} > 0$, a derivált pontosan akkor nulla, ha
$$m - (m + n)x = 0 \quad \Longleftrightarrow \quad x_0 = \frac{m}{m + n}.$$

**A stacionárius pont jellege:**
- Ha $x \in \left(0, \frac{m}{m+n}\right)$, akkor $m - (m + n)x > 0$, így $f'(x) > 0$, a függvény szigorúan nő.
- Ha $x \in \left(\frac{m}{m+n}, 1\right)$, akkor $m - (m + n)x < 0$, így $f'(x) < 0$, a függvény szigorúan csökken.

Ezért $x_0 = \frac{m}{m + n}$ az egyetlen lokális és globális maximumhely.

A maximális érték:
$$f\left(\frac{m}{m+n}\right) = \left(\frac{m}{m+n}\right)^m \left(1 - \frac{m}{m+n}\right)^n = \left(\frac{m}{m+n}\right)^m \left(\frac{n}{m+n}\right)^n = \frac{m^m n^n}{(m + n)^{m + n}}.$$

**Összegzés:**
- **Minimum:** $0$, felvételi helyei $x = 0$ és $x = 1$.
- **Maximum:** $\dfrac{m^m n^n}{(m + n)^{m + n}}$, felvételi helye $x = \dfrac{m}{m + n}$.

::: elmelet
**Elméleti háttér — kapcsolat a számtani–mértani egyenlőtlenséggel.**
Ugyanez az eredmény deriválás nélkül is adódik a súlyozott számtani–mértani egyenlőtlenségből: tekintsünk $m$ darab $\frac{x}{m}$ és $n$ darab $\frac{1-x}{n}$ számot. Összegük konstans: $m \cdot \frac{x}{m} + n \cdot \frac{1-x}{n} = x + (1 - x) = 1$. A szorzatuk akkor maximális, ha a tagok mind egyenlők: $\frac{x}{m} = \frac{1-x}{n} \iff nx = m - mx \iff x = \frac{m}{m+n}$.
:::

## 161. feladat

Mutassuk meg, hogy ha $f$ és $g$ differenciálható $[a, b]$-ben. $f(a) \ge g(a)$ és $\forall x \in [a, b]$-re $f'(x) \ge g'(x)$, akkor $\forall x \in [a, b]$-re $f(x) \ge g(x)$.

**Megoldás.**

Tekintsük a $h(x) = f(x) - g(x)$ különbségfüggvényt az $[a, b]$ intervallumon.

**1. Differenciálhatóság és folytonosság:**
Mivel $f$ és $g$ differenciálható $[a, b]$-n, a $h$ különbségfüggvény is differenciálható $[a, b]$-n, és így folytonos is $[a, b]$-n.

**2. A derivált előjele és a monotonitás:**
A feltétel szerint minden $x \in [a, b]$-re:
$$h'(x) = f'(x) - g'(x) \ge 0.$$
A monotonitási tétel (a Lagrange-féle középértéktétel közvetlen következménye) szerint ha egy intervallumon folytonos és nyílt belsejében differenciálható függvény deriváltja mindenütt nemnegatív, akkor a függvény **monoton növekvő** az intervallumon.

Valóban, tetszőleges $x \in (a, b]$-re alkalmazva a Lagrange-tételt az $[a, x]$ intervallumon: létezik olyan $c \in (a, x)$, amelyre
$$\frac{h(x) - h(a)}{x - a} = h'(c) \ge 0.$$
Mivel $x - a > 0$, mindkét oldalt megszorozva $(x - a)$-val:
$$h(x) - h(a) \ge 0 \quad \Longrightarrow \quad h(x) \ge h(a).$$
Ez nyilván $x = a$-ra is igaz (egyenlőséggel).

**3. Következtetés:**
A feltétel szerint $f(a) \ge g(a)$, vagyis $h(a) = f(a) - g(a) \ge 0$.
Ezt összevetve a monotonitásból kapott eredménnyel:
$$h(x) \ge h(a) \ge 0 \qquad \forall x \in [a, b].$$
Mivel $h(x) = f(x) - g(x) \ge 0$, átrendezve:
$$f(x) \ge g(x) \qquad \forall x \in [a, b].$$

::: elmelet
**Elméleti háttér — egyenlőtlenségek igazolása differenciálszámítással.**
Ez a feladat az egyik legfontosabb módszert mutatja be az analízisben egyenlőtlenségek igazolására: a bizonyítandó $f(x) \ge g(x)$ egyenlőtlenséget $h(x) = f(x) - g(x) \ge 0$ alakba írjuk át, megmutatjuk, hogy $h(a) \ge 0$, és a $h'(x) \ge 0$ derivált-feltételből következtetünk a függvény növekedésére. Ezzel a technikával bizonyíthatók pl. a Taylor-polinomos becslések is (vö. 162. feladat).
:::

## Röpzhra

**Definíciók:** szig. lok. növ., Darboux tul.

**Tételek:** $(\log_a x)'$, $(x^a)'$, lok. növekedés $a$-ban és $f'(a)$; $f'(a)$ és szig. lok. növ., Rolle, Lagrange, Cauchy, Darboux, monotonitás $[a, b]$-n és $f'$.

### Definíciók és tételek kidolgozása

#### Definíciók

- **Szigorúan lokálisan növekvő függvény:** Az $f$ függvény **szigorúan lokálisan növekedő** az $a \in D(f)$ pontban, ha létezik olyan $\delta > 0$, hogy
  $$x \in (a - \delta, a) \cap D(f) \implies f(x) < f(a),$$
  $$x \in (a, a + \delta) \cap D(f) \implies f(a) < f(x).$$
  *(Lokálisan növekedő: ha szigorú $<$ helyett $\le$ áll.)*
- **Darboux-tulajdonság:** A $g : I \to \mathbb{R}$ függvény **Darboux-tulajdonságú** az $I$ intervallumon, ha bármely $a, b \in I$, $a < b$ esetén minden, $g(a)$ és $g(b)$ közötti $d$ értékhez létezik olyan $c \in (a, b)$, amelyre $g(c) = d$. (Más szóval: $g$ bármely részintervallumot intervallumra képez le, azaz „nem ugorhat át" értékeket.)

#### Tételek

- **$(\log_a x)' = \dfrac{1}{x \ln a}$ ($x > 0$, $a > 0, a \ne 1$):**
  *Bizonyítás.* Legyen először $a = e$, azaz $f(x) = \ln x$. Mivel $f$ az invertálható, differenciálható $g(y) = e^y$ függvény inverze, és $g'(y) = e^y \ne 0$, az inverz függvény deriválási szabálya szerint
  $$(\ln x)' = \frac{1}{g'(\ln x)} = \frac{1}{e^{\ln x}} = \frac1x.$$
  Tetszőleges $a > 0, a \ne 1$ alapra az alapáttérési képlet szerint $\log_a x = \frac{\ln x}{\ln a}$, így
  $$(\log_a x)' = \left(\frac{\ln x}{\ln a}\right)' = \frac{1}{\ln a} (\ln x)' = \frac{1}{x \ln a}.$$
- **$(x^a)' = a x^{a-1}$ ($x > 0, a \in \mathbb{R}$):**
  *Bizonyítás.* Az azonosság szerint $x^a = e^{a \ln x}$. Mivel az exponenciális és a logaritmus függvény differenciálható, a láncszabállyal:
  $$(x^a)' = \left(e^{a \ln x}\right)' = e^{a \ln x} \cdot (a \ln x)' = x^a \cdot \frac{a}{x} = a x^{a-1}.$$
- **Lokális növekedés $a$-ban és $f'(a)$:**
  Ha $f$ differenciálható $a$-ban és lokálisan nő $a$-ban, akkor $f'(a) \ge 0$.
  *Bizonyítás.* A lokális növekedés miatt létezik $\delta > 0$, hogy $x \in (a, a + \delta)$-ra $f(x) \ge f(a)$, így a differenciahányados $\frac{f(x) - f(a)}{x - a} \ge 0$. Jobbról tartva $x \to a+0$, a határérték $f'(a) \ge 0$. (Balról ugyanez: mindkét oldal nempozitív, hányadosuk nemnegatív.)
- **$f'(a)$ és szigorú lokális növekedés:**
  Ha $f$ differenciálható $a$-ban és $f'(a) > 0$, akkor $f$ szigorúan lokálisan nő $a$-ban.
  *Bizonyítás.* Mivel $\lim_{x \to a} \frac{f(x) - f(a)}{x - a} = f'(a) > 0$, a határérték jeltartási tulajdonsága miatt létezik olyan $\delta > 0$, amelyre minden $x \in \dot{B}(a, \delta)$-ra $\frac{f(x) - f(a)}{x - a} > 0$. Ekkor $x > a$ esetén $f(x) - f(a) > 0 \implies f(x) > f(a)$, és $x < a$ esetén $f(x) - f(a) < 0 \implies f(x) < f(a)$. Ez pontosan a szigorú lokális növekedés definíciója.
- **Rolle-tétel:** Ha $f \in C[a, b]$, differenciálható $(a, b)$-n és $f(a) = f(b)$, akkor létezik $c \in (a, b)$, hogy $f'(c) = 0$.
  *Bizonyítás.* Ha $f$ konstans $[a, b]$-n, akkor minden $c \in (a, b)$-re $f'(c) = 0$. Ha $f$ nem konstans, akkor a Weierstrass-tétel szerint felveszi a maximumát és minimumát $[a, b]$-n. Mivel nem konstans, a két szélsőérték közül legalább az egyik nem $f(a) = f(b)$, így egy $c \in (a, b)$ belső pontban vétetik fel. Ott lokális szélsőérték van, így a Fermat-tétel szerint $f'(c) = 0$.
- **Lagrange-féle középértéktétel:** Ha $f \in C[a, b]$ és differenciálható $(a, b)$-n, akkor létezik $c \in (a, b)$, hogy $f'(c) = \frac{f(b) - f(a)}{b - a}$.
  *Bizonyítás.* Legyen $g(x) = f(x) - (x - a)\frac{f(b) - f(a)}{b - a}$. Ekkor $g \in C[a, b]$, differenciálható $(a, b)$-n, és $g(a) = g(b) = f(a)$. A Rolle-tétel szerint létezik $c \in (a, b)$, amelyre $g'(c) = 0 \iff f'(c) - \frac{f(b) - f(a)}{b - a} = 0$.
- **Cauchy-féle középértéktétel:** Ha $f, g \in C[a, b]$, differenciálhatók $(a, b)$-n és $g'(x) \ne 0$ mindenütt $(a, b)$-n, akkor létezik $c \in (a, b)$, hogy $\frac{f'(c)}{g'(c)} = \frac{f(b) - f(a)}{g(b) - g(a)}$.
  *(Bizonyítás: lásd a 158. feladat kidolgozását.)*
- **Darboux-tétel:** Ha $f$ differenciálható az $[a, b]$ intervallumon, akkor $f'$ Darboux-tulajdonságú: minden, $f'_+(a)$ és $f'_-(b)$ közötti $d$ értéket felvesz egy $c \in (a, b)$ pontban.
  *Bizonyítás.* Tegyük fel pl., hogy $f'_+(a) < d < f'_-(b)$. Legyen $g(x) = f(x) - dx$. Ekkor $g$ differenciálható $[a, b]$-n, így folytonos is, a Weierstrass-tétel szerint felveszi a minimumát egy $c \in [a, b]$ pontban. Mivel $g'_+(a) = f'_+(a) - d < 0$, $g$ szigorúan lokálisan csökken $a$-ban, így $a$ nem lehet minimumhely. Hasonlóan $g'_-(b) = f'_-(b) - d > 0$, így $g$ szigorúan lokálisan nő $b$-ben, $b$ sem lehet minimumhely. Ezért $c \in (a, b)$ belső pont. Belső szélsőértékhelyen a derivált eltűnik: $0 = g'(c) = f'(c) - d \implies f'(c) = d$.
- **Monotonitás $[a, b]$-n és $f'$:** Legyen $f \in C[a, b]$ és differenciálható $(a, b)$-n.
  1. $f$ monoton növekvő $[a, b]$-n $\iff \forall x \in (a, b): f'(x) \ge 0$.
  2. Ha $\forall x \in (a, b): f'(x) > 0$, akkor $f$ szigorúan monoton növekvő $[a, b]$-n.
  *Bizonyítás.* Legyen $a \le x_1 < x_2 \le b$. A Lagrange-tétel szerint létezik $c \in (x_1, x_2)$, hogy $f(x_2) - f(x_1) = f'(c)(x_2 - x_1)$.
  Ha $f'(c) \ge 0$, akkor $f(x_2) - f(x_1) \ge 0 \implies f(x_1) \le f(x_2)$ (monoton növő).
  Ha $f'(c) > 0$, akkor $f(x_2) - f(x_1) > 0 \implies f(x_1) < f(x_2)$ (szigorúan monoton növő).
