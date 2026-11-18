# XII. RÉSZ: DIFFERENCIÁLSZÁMÍTÁS

## 66. A derivált fogalma

Térjünk vissza a legelső motiváló kérdéshez. Ha $s(t)$ az út–idő függvény, akkor a test pillanatnyi sebessége a $t_0$ pillanatban
$$v(t_0) = \lim_{t \to t_0} \frac{s(t) - s(t_0)}{t - t_0},$$
ahol $\frac{s(t)-s(t_0)}{t-t_0}$ a $[t_0, t]$ intervallumon vett **átlagsebesség**.

Geometriailag: a $\frac{s(t) - s(t_0)}{t-t_0}$ hányados a grafikon két pontján átmenő **húr (szelő) meredeksége**. Ha $t \to t_0$, a húr egyre inkább az **érintőbe** megy át, és a határérték az **érintő meredeksége**. A fizikai és a geometriai kérdés tehát ugyanaz.

**Definíció.** Az $f$ függvény **differenciálható** az $a \in \mathbb{R}$ pontban, ha létezik $\delta_0 > 0$ úgy, hogy $B(a,\delta_0) \subset D(f)$, és a
$$\lim_{x\to a} \frac{f(x) - f(a)}{x-a} = f'(a)$$
határérték **létezik és véges**. Az $f'(a)$ számot az $f$ $a$-beli **differenciálhányadosának** vagy **deriváltjának** nevezzük.

**Megjegyzés.** A $h = x - a$ helyettesítéssel
$$\lim_{x\to a}\frac{f(x)-f(a)}{x-a} = \lim_{h\to 0}\frac{f(a+h) - f(a)}{h}.$$

**Jelölések.** $f'(a)$, $\dot{f}(a)$, $\left.\frac{df}{dx}\right|_{x=a}$, $\left.\frac{df(x)}{dx}\right|_{x=a}$; ha $y = f(x)$, akkor $y'(a)$, $\left.\frac{dy}{dx}\right|_{x=a}$.

**Definíció (differenciahányados).** A
$$\frac{f(x) - f(a)}{x-a} = \frac{\Delta f(x)}{\Delta x} = \frac{\Delta y}{\Delta x}$$
kifejezést az $f$ függvény $a$ és $x$ helyekhez tartozó **differenciahányadosának** nevezzük.

**Definíció (érintő).** Ha $f$ differenciálható $a$-ban, akkor az
$$y = f'(a)(x-a) + f(a)$$
egyenest a $\operatorname{graph} f$ görbe $(a, f(a))$ pontbeli **érintőjének** nevezzük.

**Definíció (derivált függvény).** Az $f$ valós függvény **differenciálfüggvényének** (derivált függvényének) nevezzük azt a függvényt, amely azokban az $a \in \mathbb{R}$ pontokban van értelmezve, ahol $f$ differenciálható, és értéke ott $f'(a)$. Jelölése $f'$, $\dot{f}$, $\frac{df}{dx}$, $y'$, $\dot y$, $\frac{dy}{dx}$.

**Példa.** $f(x) = mx + b$ esetén
$$f'(x) = \lim_{h\to 0}\frac{m(x+h)+b - (mx+b)}{h} = \lim_{h\to 0}\frac{mh}{h} = m.$$
A lineáris függvény deriváltja tehát a meredeksége — ahogy lennie kell.

**Tétel.** $(x^n)' = n x^{n-1}$ minden $n \in \mathbb{N}$-re.

*Bizonyítás.* Használjuk az $y^n - x^n$ szorzattá alakítását:
$$\lim_{y\to x}\frac{y^n - x^n}{y-x} = \lim_{y\to x}\frac{(y-x)\left(y^{n-1} + y^{n-2}x + \dots + x^{n-1}\right)}{y-x} = \lim_{y\to x}\left(y^{n-1} + y^{n-2}x + \dots + x^{n-1}\right).$$
A zárójelben $n$ darab tag áll, és mindegyik $x^{n-1}$-hez tart, tehát az eredmény $n x^{n-1}$. $\blacksquare$

**Tétel (a differenciálhatóság erősebb a folytonosságnál).** Ha $f$ differenciálható $a$-ban, akkor folytonos $a$-ban.

*Bizonyítás.* Írjuk a különbséget szorzat alakba:
$$f(x) - f(a) = \frac{f(x)-f(a)}{x-a}\cdot(x-a) \to f'(a)\cdot 0 = 0 \qquad (x \to a),$$
ahol a szorzat határértékére vonatkozó tételt alkalmaztuk (mindkét tényezőnek van véges határértéke). Tehát $f(x) \to f(a)$. $\blacksquare$

**A megfordítás hamis: folytonos $\not\Rightarrow$ differenciálható.** A klasszikus ellenpélda $f(x) = |x|$ a $0$-ban:
$$\lim_{x\to 0+0}\frac{f(x) - 0}{x-0} = \lim_{x\to 0+0}\frac{x}{x} = 1, \qquad \lim_{x\to 0-0}\frac{f(x)-0}{x-0} = \lim_{x\to 0-0}\frac{-x}{x} = -1.$$
A két féloldali határérték különböző, tehát a határérték nem létezik.

**Történeti megjegyzés.** Sokáig azt hitték, hogy a folytonos függvények „legfeljebb néhány sarokponttól eltekintve" differenciálhatók. Weierstrass azonban konstruált olyan folytonos függvényt, amely **sehol sem** differenciálható (a konstrukció és története megtalálható Szőkefalvi-Nagy Béla *Valós függvények és függvénysorok* című könyvének 87–88. oldalán). A felfedezés megdöbbentette a kor matematikusait; Charles Hermite így írt róla: *„Rémülettel és borzalommal fordulok el ettől a siralmas fekélytől: függvények, amelyeknek nincs deriváltjuk."*

**Definíció (féloldali derivált).** Az $f$ **jobbról differenciálható** $a$-ban, ha értelmezett az $a$ egy jobb oldali környezetében, és a
$$\lim_{x\to a+0}\frac{f(x)-f(a)}{x-a}$$
határérték létezik és véges; jelölése $f'_+(a)$. Hasonlóan a bal oldali derivált, $f'_-(a)$.

**Példa.** $f(x) = |x|$ esetén $f'_+(0) = 1$ és $f'_-(0) = -1$.

**Megjegyzés.** Nyilvánvalóan
$$\exists f'(a) \iff \exists f'_+(a) \ \wedge\ \exists f'_-(a) \ \wedge\ f'_+(a) = f'_-(a).$$

## 67. Differenciálási szabályok

**Tétel.** Legyen $f$ és $g$ differenciálható $a$-ban. Ekkor $cf$, $f \pm g$ és $f\cdot g$ is differenciálható $a$-ban, és

1. $(cf)'(a) = c f'(a)$;
2. $(f+g)'(a) = f'(a) + g'(a)$;
3. $(f\cdot g)'(a) = f'(a)g(a) + f(a)g'(a)$ **(szorzatszabály)**.

Ha ezen felül $g(a) \neq 0$, akkor $\frac{1}{g}$ és $\frac{f}{g}$ is differenciálható $a$-ban, és

4. $\displaystyle \left(\frac{1}{g}\right)'(a) = -\frac{g'(a)}{g^2(a)}$;
5. $\displaystyle \left(\frac{f}{g}\right)'(a) = \frac{f'(a)g(a) - f(a)g'(a)}{g^2(a)}$ **(hányadosszabály)**.

*Bizonyítás.*

**3. (szorzatszabály).** A bevált trükk: adjunk hozzá és vonjunk ki egy alkalmas tagot.
$$\lim_{x\to a}\frac{f(x)g(x) - f(a)g(a)}{x-a} = \lim_{x\to a}\frac{f(x)g(x) - f(a)g(x) + f(a)g(x) - f(a)g(a)}{x-a}$$
$$= \lim_{x\to a}\left[ g(x)\cdot\frac{f(x)-f(a)}{x-a} \right] + \lim_{x\to a}\left[ f(a)\cdot\frac{g(x)-g(a)}{x-a} \right] = f'(a)g(a) + f(a)g'(a),$$
ahol felhasználtuk, hogy $g$ differenciálható $a$-ban, tehát folytonos is, így $g(x) \to g(a)$.

**4.** Közös nevezőre hozva:
$$\lim_{x\to a}\frac{\frac{1}{g(x)} - \frac{1}{g(a)}}{x-a} = \lim_{x\to a} \frac{1}{g(x)g(a)}\cdot\frac{g(a)-g(x)}{x-a} = \frac{1}{g^2(a)}\cdot\big(-g'(a)\big).$$

**5.** A 3. és a 4. pont alkalmazása az $f(x)\cdot\frac{1}{g(x)}$ szorzatra. $\blacksquare$

## 68. A láncszabály

A kompozíció deriválásához egy átfogalmazásra van szükségünk, amely kiküszöböli a hányadost — és ezzel a „nullával való osztás" veszélyét.

**Tétel (a differenciálhatóság ekvivalens jellemzése).** Az $f$ akkor és csak akkor differenciálható az $a$ helyen, ha létezik olyan, az $a$-ban **folytonos** $f^*$ függvény, amelyre minden $x \in D(f)$-re
$$f(x) - f(a) = f^*(x)(x-a).$$

*Bizonyítás.*

**($\Rightarrow$)** Ha $f'(a)$ létezik, definiáljuk
$$f^*(x) = \frac{f(x)-f(a)}{x-a} \quad (x \neq a), \qquad f^*(a) \stackrel{\text{def}}{=} f'(a).$$
Ez a definíció éppen azt jelenti, hogy $f^*$ folytonos $a$-ban.

**($\Leftarrow$)** Ha $f^*$ folytonos $a$-ban, akkor
$$\lim_{x\to a} f^*(x) = \lim_{x\to a}\frac{f(x)-f(a)}{x-a} = f^*(a),$$
tehát a derivált létezik és egyenlő $f^*(a)$-val. $\blacksquare$

**Tétel (láncszabály).** Ha $f$ differenciálható az $a$ helyen, $g$ pedig az $f(a)$ helyen, akkor $h = g\circ f$ is differenciálható $a$-ban, és
$$h'(a) = g'(f(a))\cdot f'(a).$$

*Bizonyítás.* Az előző tétel szerint léteznek $f^*$ (az $a$-ban folytonos) és $g^*$ (az $f(a)$-ban folytonos) függvények, amelyekre
$$f(x) - f(a) = f^*(x)(x-a), \qquad g(u) - g(f(a)) = g^*(u)\big(u - f(a)\big),$$
továbbá
$$\lim_{x\to a} f^*(x) = f^*(a) = f'(a), \qquad \lim_{u\to f(a)} g^*(u) = g^*(f(a)) = g'(f(a)).$$
Írjuk fel most a kompozíció megváltozását, és helyettesítsünk $u = f(x)$-et:
$$h(x) - h(a) = g(f(x)) - g(f(a)) = g^*(f(x))\big(f(x) - f(a)\big) = \underbrace{g^*(f(x))\, f^*(x)}_{=:\,h^*(x)}\,(x-a).$$
Már csak azt kell látnunk, hogy $h^*$ folytonos $a$-ban. Valóban: $f^*$ folytonos $a$-ban; $f$ folytonos $a$-ban (hiszen differenciálható); $g^*$ folytonos $f(a)$-ban; tehát a kompozícióra vonatkozó tétel szerint $g^* \circ f$ folytonos $a$-ban, és így a szorzat $h^*$ is. Az ekvivalens jellemzés szerint tehát
$$h'(a) = h^*(a) = g^*(f(a))\cdot f^*(a) = g'(f(a))\, f'(a). \qquad \blacksquare$$

Röviden: $\big(g(f(x))\big)' = g'(f(x)) f'(x)$. A Leibniz-féle jelöléssel ez különösen sugalmazó: ha $y = f(x)$ és $z = g(y)$, akkor
$$\frac{dz}{dx} = \frac{dz}{dy}\cdot\frac{dy}{dx},$$
mintha a $dy$-k „egyszerűsödnének" — ez természetesen csak emlékeztető, nem bizonyítás.

**Példa.** Mennyi $\left((x^2+1)^{13}\right)'$? Legyen $g(x) = x^{13}$ és $f(x) = x^2+1$. Ekkor $g'(x) = 13x^{12}$ és $f'(x) = 2x$, tehát $g'(f(x)) = 13(x^2+1)^{12}$, és
$$\left((x^2+1)^{13}\right)' = 13(x^2+1)^{12}\cdot 2x.$$

## 69. Az inverz függvény deriváltja

**Tétel.** Tegyük fel, hogy $f$ szigorúan monoton és folytonos $[a,b]$-n, és létezik $f'(c) \neq 0$ valamely $c \in (a,b)$ pontban. Ekkor $\varphi = f^{-1}$ differenciálható a $d = f(c)$ helyen, és
$$\varphi'(d) = \frac{1}{f'(c)} = \frac{1}{f'(\varphi(d))}.$$

*Bizonyítás.* Az 55. szakasz szerint $\varphi = f^{-1}$ folytonos, tehát $\lim_{v\to d}\varphi(v) = \varphi(d) = c$. Továbbá a szigorú monotonitás miatt $v \neq d$ esetén $\varphi(v) \neq \varphi(d) = c$ — ez a feltétel teszi lehetővé a helyettesítést. Induljunk ki abból, hogy
$$\lim_{u\to c}\frac{1}{\frac{f(u)-f(c)}{u-c}} = \frac{1}{f'(c)}$$
(itt használjuk ki, hogy $f'(c) \neq 0$). Helyettesítsük $u = \varphi(v)$-t; a kompozícióra vonatkozó határérték-tétel szerint
$$\frac{1}{f'(c)} = \lim_{v\to d}\frac{\varphi(v) - c}{f(\varphi(v)) - f(c)} = \lim_{v\to d}\frac{\varphi(v) - \varphi(d)}{v - d} = \varphi'(d). \qquad \blacksquare$$

**Memoriter.** Ha $y = f(x)$ és $z = g(y)$, akkor $\frac{dz}{dx} = \frac{dz}{dy}\frac{dy}{dx}$. Ha speciálisan $g = f^{-1}$, akkor $g(f(x)) = x = z$, tehát
$$\frac{dx}{dx} = 1 = \frac{dx}{dy}\cdot\frac{dy}{dx} \implies \frac{dx}{dy} = \frac{1}{\frac{dy}{dx}}.$$

**Példa (a gyökfüggvény deriváltja).** Legyen $x > 0$, $\varphi(x) = \sqrt[k]{x}$ ($k \in \mathbb{N}$), és $f(x) = \varphi^{-1}(x) = x^k|_{[0,+\infty)}$. Ekkor $f'(x) = kx^{k-1}$, és $c = \varphi(d) = \sqrt[k]{d}$, tehát
$$\varphi'(d) = \frac{1}{f'(\varphi(d))} = \frac{1}{k\left(\sqrt[k]{d}\right)^{k-1}} = \frac{1}{k\, d^{\frac{k-1}{k}}} = \frac{1}{k}\, d^{\frac{1}{k}-1}.$$
Azaz
$$\left(x^{1/k}\right)' = \frac{1}{k}x^{\frac{1}{k}-1}.$$
Speciálisan $\varphi(x) = \sqrt{x}$ esetén $\varphi'(x) = \frac{1}{2\sqrt{x}}$. Ugyanígy adódik, hogy $\left(x^{p/q}\right)' = \frac{p}{q}x^{\frac{p}{q}-1}$.

## 70. Elemi függvények deriváltjai I: polinomok és trigonometrikus függvények

**Tétel.** $(a_n x^n + \dots + a_1 x + a_0)' = n a_n x^{n-1} + \dots + a_1$.

*Bizonyítás.* Az összeg- és konstansszorzat-szabályból, valamint az $(x^n)' = nx^{n-1}$ tételből tagonként. $\blacksquare$

A trigonometrikus függvények deriválásához két nevezetes határértéket kell kiszámolnunk.

**Tétel.**
$$\lim_{x\to 0}\frac{\sin x}{x} = 1 = \lim_{x\to 0}\frac{\sin x - \sin 0}{x - 0} = \sin'(0).$$

*Bizonyítás.* Legyen $0 < x < \frac{\pi}{2}$. A geometriai alapegyenlőtlenség:
$$\sin x < x < \tan x.$$
(Az első egyenlőtlenséget már beláttuk; a második azon a geometriai tényen alapul, hogy **ha egy konvex sokszöget egy másik tartalmaz, akkor a tartalmazó kerülete nagyobb** — a körívet a hozzá tartozó érintőszakaszok „kívülről" fogják közre.)

Osszuk el az egyenlőtlenséget $\sin x > 0$-val:
$$1 < \frac{x}{\sin x} < \frac{1}{\cos x},$$
majd vegyük a reciprokokat (ami megfordítja az irányt):
$$1 > \frac{\sin x}{x} > \cos x.$$
Ha $x \to 0+0$, akkor $\cos x \to 1$, tehát a rendőrelv szerint
$$\lim_{x\to 0+0}\frac{\sin x}{x} = 1.$$
A bal oldali határértékhez vegyük észre, hogy a $\frac{\sin x}{x}$ függvény **páros**:
$$\frac{\sin(-x)}{-x} = \frac{-\sin x}{-x} = \frac{\sin x}{x},$$
tehát a bal oldali határérték is $1$. $\blacksquare$

**Tétel.**
$$\lim_{x\to 0}\frac{\cos x - 1}{x} = 0 = \cos'(0).$$

*Bizonyítás.* A félszögképlet ($1 - \cos x = 2\sin^2\frac{x}{2}$) segítségével
$$\frac{\cos x - 1}{x} = -\frac{2\sin^2\frac{x}{2}}{x} = \underbrace{\left(-\sin\frac{x}{2}\right)}_{\to\, 0}\cdot\underbrace{\frac{\sin\frac{x}{2}}{\frac{x}{2}}}_{\to\, 1} \to 0 \qquad (x\to 0). \qquad \blacksquare$$

**Tétel.** $\sin' x = \cos x$ minden $x \in \mathbb{R}$-re.

*Bizonyítás.* Az addíciós képlettel:
$$\lim_{h\to 0}\frac{\sin(x+h) - \sin x}{h} = \lim_{h\to 0}\frac{\sin x\cos h + \cos x \sin h - \sin x}{h}$$
$$= \lim_{h\to 0}\left[\cos x\cdot\frac{\sin h}{h}\right] + \lim_{h\to 0}\left[\sin x\cdot\frac{\cos h - 1}{h}\right] = \cos x\cdot 1 + \sin x\cdot 0 = \cos x. \qquad \blacksquare$$

**Tétel.** $\cos' x = -\sin x$ minden $x \in \mathbb{R}$-re.

*Bizonyítás.* A láncszabállyal, a $\cos x = \sin\!\left(\frac{\pi}{2}-x\right)$ azonosságból:
$$(\cos x)' = \left(\sin\!\left(\tfrac{\pi}{2}-x\right)\right)' = \cos\!\left(\tfrac{\pi}{2}-x\right)\cdot(-1) = -\sin x. \qquad \blacksquare$$

**Tétel.** $\displaystyle \tan' x = \frac{1}{\cos^2 x}$ és $\displaystyle \cot' x = -\frac{1}{\sin^2 x}$.

*Bizonyítás (a tangensre).* A hányadosszabállyal:
$$(\tan x)' = \left(\frac{\sin x}{\cos x}\right)' = \frac{\sin'x\cos x - \sin x\cos' x}{\cos^2 x} = \frac{\cos^2 x - \sin x(-\sin x)}{\cos^2 x} = \frac{\cos^2 x + \sin^2 x}{\cos^2 x} = \frac{1}{\cos^2 x}. \qquad \blacksquare$$

**Tétel (arkuszfüggvények deriváltjai).** Ha $-1 < x < 1$, akkor
$$(\arcsin x)' = \frac{1}{\sqrt{1-x^2}}, \qquad (\arccos x)' = \frac{-1}{\sqrt{1-x^2}};$$
továbbá minden $x \in \mathbb{R}$-re
$$(\arctan x)' = \frac{1}{1+x^2}.$$

*Bizonyítás (az $\arcsin$).* Legyen $\varphi(x) = \arcsin x$ és $f(x) = \sin x|_{[-\pi/2,\pi/2]}$, amely szigorúan monoton. Az inverz deriválási szabálya szerint, $x = f(c)$ jelöléssel:
$$\varphi'(x) = \frac{1}{f'(\varphi(x))} = \frac{1}{\cos(\arcsin x)} = \frac{1}{\sqrt{1 - \sin^2(\arcsin x)}} = \frac{1}{\sqrt{1-x^2}}.$$
(A gyökvonásnál a pozitív értéket vesszük, mert $\cos c > 0$ a $\left(-\frac{\pi}{2},\frac{\pi}{2}\right)$ intervallumon.)

*(az $\arccos$).* Az $\arccos x = \frac{\pi}{2} - \arcsin x$ azonosságból közvetlenül.

*(az $\arctan$).* A $\tan x$ szigorúan monoton növekedő $\left(-\frac{\pi}{2},\frac{\pi}{2}\right)$-n, és ott $\tan' x = \frac{1}{\cos^2 x} \neq 0$. Tehát
$$(\arctan x)' = \frac{1}{\frac{1}{\cos^2(\arctan x)}} = \cos^2(\arctan x) = \frac{1}{1 + \tan^2(\arctan x)} = \frac{1}{1+x^2},$$
ahol felhasználtuk a
$$\cos^2 x = \frac{1}{1 + \tan^2 x} = \frac{1}{1 + \frac{\sin^2 x}{\cos^2 x}} = \frac{\cos^2 x}{\cos^2 x + \sin^2 x}$$
azonosságot. $\blacksquare$

## 71. Az e szám mint függvényhatárérték

Az exponenciális és a logaritmusfüggvény deriválásához az $e$ szám sorozatos definícióját **függvényhatárértékké** kell átalakítanunk.

**Tétel.**
$$\lim_{x\to-\infty}\left(1+\frac{1}{x}\right)^x = \lim_{x\to+\infty}\left(1+\frac{1}{x}\right)^x = \lim_{n\to\infty}\left(1+\frac{1}{n}\right)^n = e.$$

*Bizonyítás.* Az átviteli elvet használjuk. Legyen $x_n \to +\infty$ tetszőleges sorozat, és legyen $n_k \in \mathbb{N}$ az az egész, amelyre $n_k \le x_n < n_k + 1$ (tehát $n_k \to \infty$). A hatványozás monotonitása miatt
$$\left(1 + \frac{1}{n_k+1}\right)^{n_k} < \left(1+\frac{1}{x_n}\right)^{x_n} < \left(1+\frac{1}{n_k}\right)^{n_k+1}.$$
(Az alapot és a kitevőt egyszerre becsüljük: kisebb alap és kisebb kitevő balra, nagyobb alap és nagyobb kitevő jobbra.) Jelölje a két oldalt $a_k$ és $b_k$. Ekkor
$$\lim_{k\to\infty} a_k = \lim_{k\to\infty}\left[\left(1+\frac{1}{n_k+1}\right)^{n_k+1}\cdot\left(1+\frac{1}{n_k+1}\right)^{-1}\right] = e\cdot 1 = e,$$
$$\lim_{k\to\infty} b_k = \lim_{k\to\infty}\left[\left(1+\frac{1}{n_k}\right)^{n_k}\cdot\left(1+\frac{1}{n_k}\right)\right] = e\cdot 1 = e.$$
A rendőrelv szerint tehát minden $x_n \to +\infty$ sorozatra $\left(1+\frac{1}{x_n}\right)^{x_n} \to e$, azaz az átviteli elv szerint $\left(1+\frac{1}{x}\right)^x \to e$, ha $x \to +\infty$.

A $-\infty$ esethez vegyük észre, hogy
$$\left(1 - \frac{1}{n}\right)^{-n} = \left(\frac{n-1}{n}\right)^{-n} = \left(\frac{n}{n-1}\right)^n = \left(1 + \frac{1}{n-1}\right)^{n-1}\cdot\left(1+\frac{1}{n-1}\right) \to e,$$
és ezt felhasználva az előzőhöz hasonlóan adódik az állítás. $\blacksquare$

**Tétel.** Minden $b \in \mathbb{R}$-re
$$\lim_{x\to\pm\infty}\left(1+\frac{b}{x}\right)^x = e^b.$$

*Bizonyítás.* $b = 0$ triviális. Ha $b > 0$ és $x \to +\infty$, akkor az összetett függvény határértékére vonatkozó tétellel, $u = \frac{x}{b} \to +\infty$ helyettesítéssel:
$$\lim_{x\to+\infty}\left(1+\frac{b}{x}\right)^x = \lim_{x\to+\infty}\left[\left(1+\frac{b}{x}\right)^{x/b}\right]^b = \lim_{u\to+\infty}\left[\left(1+\frac{1}{u}\right)^u\right]^b = e^b. \qquad \blacksquare$$

**Tétel.** $\displaystyle \lim_{t\to 0}(1+t)^{1/t} = e$.

*Bizonyítás.* Az $x = \frac{1}{t}$ helyettesítéssel: ha $t \to 0+0$, akkor $x \to +\infty$, tehát
$$\lim_{t\to 0+0}(1+t)^{1/t} = \lim_{x\to+\infty}\left(1+\frac{1}{x}\right)^x = e;$$
a $t \to 0-0$ eset hasonlóan, az $x \to -\infty$ határértékből. $\blacksquare$

## 72. A logaritmus és az exponenciális függvény deriváltja

**Tétel.**
$$\lim_{h\to 0}\frac{\log_a(1+h) - \log_a 1}{h} = \log_a e = \log_a'(1).$$

*Bizonyítás.* Mivel $\log_a 1 = 0$, az azonosságokat és a logaritmus folytonosságát felhasználva:
$$\lim_{h\to 0}\frac{\log_a(1+h)}{h} = \lim_{h\to 0}\log_a\left((1+h)^{1/h}\right) = \log_a\left(\lim_{h\to 0}(1+h)^{1/h}\right) = \log_a e. \qquad \blacksquare$$

**Tétel.** Ha $a > 0$, $a \neq 1$, akkor $\log_a x$ differenciálható minden $x > 0$-ra, és
$$(\log_a x)' = \frac{\log_a e}{x}.$$

*Bizonyítás.* Alakítsuk a differenciahányadost úgy, hogy az $1$-beli deriváltra vezessük vissza:
$$\frac{\log_a y - \log_a x}{y-x} = \frac{1}{x}\cdot\frac{\log_a\!\left(\frac{y}{x}\right) - \log_a 1}{\frac{y}{x} - 1}.$$
Ha $y \to x$, akkor $\frac{y}{x} \to 1$; a $h = \frac{y}{x} - 1 \to 0$ helyettesítéssel a jobb oldali tört éppen az előző tétel differenciahányadosa, tehát $\log_a e$-hez tart. Így a határérték $\frac{\log_a e}{x}$. $\blacksquare$

**Következmény.**
$$(\ln x)' = \frac{1}{x}, \qquad (\log_a x)' = \frac{1}{(\ln a)\,x},$$
hiszen $\log_e e = 1$, és az áttérési képlet szerint $\log_a e = \frac{\ln e}{\ln a} = \frac{1}{\ln a}$.

A természetes logaritmus tehát éppen az a logaritmus, amelynek deriváltja a lehető legegyszerűbb — ez magyarázza a „természetes" elnevezést.

**Tétel.** Ha $a > 0$, akkor $a^x$ differenciálható $\mathbb{R}$-en, és
$$(a^x)' = (\ln a)\,a^x. \qquad \text{Nevezetesen} \qquad (e^x)' = e^x.$$

*Bizonyítás.* $a = 1$ triviális, a $0 < a < 1$ eset hasonló; legyen $a > 1$. Ekkor $a^x$ szigorúan monoton növekedő és folytonos, inverze $\log_a x$, amely differenciálható és deriváltja nem nulla. Az inverz deriválási szabályával, $f(x) = \log_a x$ és $\varphi(x) = a^x$ jelöléssel:
$$\varphi'(x) = \frac{1}{f'(\varphi(x))} = \frac{1}{\frac{1}{(\ln a)\,a^x}} = (\ln a)\,a^x. \qquad \blacksquare$$

Az $e^x$ tehát az az exponenciális függvény, amely **megegyezik a saját deriváltjával** — ez a tulajdonság teszi az analízis legfontosabb függvényévé.

**Tétel.** Minden $a \in \mathbb{R}$-re és $x > 0$-ra $x^a$ differenciálható, és
$$(x^a)' = a x^{a-1}.$$

*Bizonyítás.* Írjuk át exponenciális alakba, és alkalmazzuk a láncszabályt:
$$(x^a)' = \left(e^{a\ln x}\right)' = e^{a\ln x}\cdot\frac{a}{x} = x^a\cdot\frac{a}{x} = a x^{a-1}. \qquad \blacksquare$$

Ezzel a hatványfüggvény deriválási szabálya **tetszőleges valós kitevőre** igazolva van — nem csak természetes vagy racionális kitevőkre, ahogy korábban.

**Példa (a „kettős" hatvány).**
$$(x^x)' = \left(e^{x\ln x}\right)' = e^{x\ln x}\left(\ln x + x\cdot\frac{1}{x}\right) = x^x(\ln x + 1).$$

---
