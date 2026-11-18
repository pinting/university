# VIII. RÉSZ: VALÓS FÜGGVÉNYEK

## 38. Alapfogalmak és műveletek

**Definíció.** Az $f : X \to \mathbb{R}$ függvényt **valós értékű** függvénynek nevezzük. Ha ezen felül $X \subset \mathbb{R}$ is teljesül, akkor **egyváltozós valós függvényről** beszélünk. A továbbiakban — hacsak mást nem mondunk — ilyen függvényekkel foglalkozunk.

**Definíció (megszorítás).** Ha $f : X \to Y$ és $A \subset X$, akkor az $f$ **$A$-ra való megszorítása** (leszűkítése) az a $g : A \to Y$ függvény, amelyre minden $x \in A$ esetén $g(x) = f(x)$. Jelölése $f|_A$ vagy $f|A$.

**Definíció (ősképi halmaz).** Ha $f : X \to \mathbb{R}$ és $A \subset \mathbb{R}$, akkor
$$f^{-1}(A) = \{x \in X : f(x) \in A\}$$
az $A$ halmaz **ősképe**. Hangsúlyozzuk: ehhez az $f$-nek **nem kell injektívnek lennie** — az $f^{-1}$ szimbólum itt halmazra hat, és nem az inverz függvényt jelöli.

**Példák.** Legyen $g(x) = x^2$. Ekkor $g^{-1}(\{4, 16\}) = \{2, -2, 4, -4\}$, jóllehet $g$ nem invertálható $\mathbb{R}$-en. Ha viszont $f(x) = \sqrt{x}$, akkor $f$ valódi inverze $f^{-1}(x) = x^2|_{[0,+\infty)}$.

**Definíció (grafikon).** Az $f$ függvény **grafikonja**
$$\operatorname{graph}(f) = Gr(f) = \{(x,y) : x \in D(f),\ y = f(x)\} \subset \mathbb{R}^2.$$
Más néven az $f$ görbéje vagy ábrája.

**Definíció (műveletek).**
$$f \pm g : x \mapsto f(x) \pm g(x), \qquad f \cdot g : x \mapsto f(x) \cdot g(x),$$
mindkettő értelmezési tartománya $D(f) \cap D(g)$; továbbá
$$\frac{f}{g} : x \mapsto \frac{f(x)}{g(x)}, \qquad D\!\left(\frac{f}{g}\right) = \big(D(f) \cap D(g)\big) \setminus g^{-1}(\{0\}).$$
A hányados értelmezési tartományából tehát ki kell venni a nevező zérushelyeit — és éppen ezért hasznos az őskép jelölése.

## 39. Elemi függvények

**Polinomfüggvények.** $p(x) = a_n x^n + \dots + a_1 x + a_0$, ahol $a_n \neq 0$; ekkor $p$ **foka** $n$.

Speciális esetek:

- Ha $c \in \mathbb{R}$, akkor az $x \mapsto c$ függvény az **állandó függvény**. Ha $c \neq 0$, akkor ez nulladfokú polinom; a $p(x) \equiv 0$ azonosan nulla polinomnak viszont **nincs foka**.
- Az $ax + b$ alakú függvények a **lineáris függvények**.
- Az $x^n$ alakúak a **hatványfüggvények**.

**Racionális törtfüggvények.** $R(x) = \frac{p(x)}{q(x)}$, ahol $p, q$ polinomok és $q \not\equiv 0$. Például $f(x) = \frac{1}{x}$ vagy $g(x) = \frac{x^2 + 5}{x^3 - 7x + 3}$.

**Definíció (szignumfüggvény).**
$$\operatorname{sgn}(x) = \begin{cases} 1 & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -1 & \text{ha } x < 0. \end{cases}$$

**Definíció (egészrész- vagy entier függvény).** Ha $x \in \mathbb{R}$, akkor $[x] = \lfloor x \rfloor$ az az egyértelműen meghatározott $n \in \mathbb{Z}$, amelyre
$$n \le x < n+1.$$
Például $[1{,}2] = 1$, de $[-1{,}2] = -2$ (nem $-1$!). A grafikon lépcsős.

**Definíció (törtrészfüggvény).** $\{x\} = x - [x]$. Grafikonja fűrészfog alakú, értékkészlete $[0,1)$.

**Definíció (Dirichlet-féle függvény).**
$$D(x) = \begin{cases} 1 & \text{ha } x \in \mathbb{Q}, \\ 0 & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}. \end{cases}$$
(Egyes szerzőknél fordítva.) Ez a függvény lesz a standard ellenpéldánk: sehol sem folytonos, és semmilyen pontban nincs határértéke.

## 40. Globális tulajdonságok

**Definíció (paritás).** Legyen $f : X \to \mathbb{R}$, és tegyük fel, hogy $x \in D(f) \iff -x \in D(f)$ (azaz az értelmezési tartomány szimmetrikus). Ha minden $x \in X$-re

- $f(x) = f(-x)$, akkor $f$ **páros**;
- $f(x) = -f(-x)$, akkor $f$ **páratlan**.

**Példák.** $x^2$, $|x|$ és az $f(x) \equiv 1$ páros; $x^3$ páratlan; az $f(x) \equiv 0$ egyszerre páros és páratlan.

**Definíció (periodicitás).** Ha létezik $p \neq 0$ úgy, hogy $x \in D(f) \iff x + p \in D(f)$, és minden $x \in D(f)$-re
$$f(x + p) = f(x),$$
akkor $f$ **$p$ szerint periodikus**.

**Definíció (korlátosság halmazon).** Az $f : X \to \mathbb{R}$ függvény korlátos (alulról, illetve felülről korlátos) az $A \subset D(f)$ halmazon, ha az $f(A)$ képhalmaz az.

**Példa.** $f(x) = \frac{1}{x}$ korlátos az $A_1 = [1, \infty)$ halmazon (ott $0 < f(x) \le 1$), de nem korlátos az $A_2 = (0,1)$ halmazon.

**Definíció (monotonitás).** Az $f$ függvény az $A \subset D(f)$ halmazon **(monoton) növekedő**, ha minden $x, y \in A$, $x < y$ esetén $f(x) \le f(y)$; **csökkenő**, ha $f(x) \ge f(y)$. Ha a szigorú egyenlőtlenségek ($f(x) < f(y)$, illetve $f(x) > f(y)$) is teljesülnek, akkor $f$ **szigorúan monoton növekedő** (illetve csökkenő).

**Definíció (abszolút szélsőérték).** Az $a \in A \subset D(f)$ hely az $f$-nek $A$-ra nézve **(abszolút) maximumhelye**, ha minden $x \in A$-ra $f(x) \le f(a)$; **minimumhelye**, ha $f(x) \ge f(a)$. Ha $x \neq a$ esetén szigorú egyenlőtlenség áll, akkor **szigorú** maximum-, illetve minimumhelyről beszélünk.

## 41. Egy lokális tulajdonság

**Definíció (lokális szélsőérték).** Az $a \in \mathbb{R}$ hely az $f$ **lokális maximumhelye**, ha létezik $\varepsilon > 0$ úgy, hogy $B(a,\varepsilon) \subset D(f)$, és $a$ az $f$-nek a $B(a,\varepsilon)$ halmazra vonatkozó maximumhelye. Hasonlóan értelmezzük a lokális minimumhelyet, valamint a szigorú lokális maximum- és minimumhelyet.

A különbség a globális és a lokális fogalom között döntő: a lokális szélsőérték csak egy **kicsiny környezetben** a legnagyobb (legkisebb) érték. Egy függvénynek több lokális maximuma is lehet, amelyek közül egyik sem abszolút maximum.

## 42. Konvexitás

Tekintsünk három szigorúan monoton növekedő függvényt, amelyek grafikonja mégis lényegesen eltér. Kössük össze a grafikon két pontját egy **húrral**:

1. Az első esetben a függvény végig a **húr alatt** halad.
2. A második esetben a húr **átmetszi** a grafikont.
3. A harmadik esetben a függvény végig a **húr fölött** halad.

Ez a megkülönböztetés a görbületről szól, és a monotonitástól teljesen független. Formalizáljuk.

**Definíció (konvexitás).** Az $f$ függvény **konvex** az $I$ intervallumon, ha bármely $a, b \in I$, $a < b$ esetén $f$ az $[a,b]$ intervallumon az $(a, f(a))$ és $(b, f(b))$ pontokon áthaladó húr alatt halad, azaz minden $x \in [a,b]$-re
$$f(x) \le f(a) + \frac{f(b) - f(a)}{b-a}(x - a) \stackrel{\text{def}}{=} h_{a,b}(x).$$
(A húr egyenlete másképp is felírható: $h_{a,b}(x) = f(b) + \frac{f(b)-f(a)}{b-a}(x-b)$; ugyanaz az egyenes.)

Az $f$ **konkáv**, ha a húr fölött halad, azaz $\le$ helyett $\ge$ áll. Az $f$ **szigorúan konvex**, ha $a < x < b$ esetén szigorú $<$ teljesül; **szigorúan konkáv**, ha $>$.

**Állítás.** Ha $f$ konvex, akkor $-f$ konkáv.

*Bizonyítás.* Szorozzuk az egyenlőtlenséget $(-1)$-gyel; ez megfordítja az irányt. $\blacksquare$

Ez a megfigyelés végig érvényes: minden konvexitásra vonatkozó tételnek van konkáv párja, amelyet elég $-f$-re alkalmazni. Ezért a továbbiakban rendszerint csak a konvex esetet bizonyítjuk.

## 43. A Jensen-egyenlőtlenség

**Tétel (Jensen-egyenlőtlenség).** Az $I$ intervallumon értelmezett $f$ függvény akkor és csak akkor konvex $I$-n, ha minden $x, y \in I$ és minden $p, q > 0$, $p + q = 1$ szám esetén
$$f(px + qy) \le p f(x) + q f(y).$$
(Szigorú konvexitás esetén egyenlőség akkor és csak akkor, ha $x = y$. Sok tankönyv $p = t$, $q = 1-t$ jelöléssel írja.)

**Megjegyzés (mit is jelent a $px + qy$?).** Tegyük fel, hogy $x < y$. Mivel $p + q = 1$ és mindkettő pozitív,
$$x = px + qx \le px + qy \le py + qy = y,$$
tehát $px + qy$ valóban az $[x,y]$ intervallum egy belső pontja. Sőt, az osztóaránya:
$$\frac{(px + qy) - x}{y - (px+qy)} = \frac{q(y-x)}{p(y-x)} = \frac{q}{p}.$$
A $px + qy$ tehát az $x$ és $y$ **súlyozott átlaga**; a Jensen-egyenlőtlenség pedig azt mondja, hogy a súlyozott átlag helyén felvett **függvényérték** legfeljebb akkora, mint a **függvényértékek** ugyanolyan súlyozású átlaga.

*Bizonyítás.*

**($\Rightarrow$) Ha $f$ konvex.** Tegyük fel, hogy $x < y$, és alkalmazzuk a konvexitás definícióját az $[x,y]$ intervallum $px + qy$ pontjában:
$$f(px+qy) \le f(x) + \frac{f(y)-f(x)}{y-x}\big((px+qy) - x\big).$$
A zárójelben álló mennyiség a fenti számolás szerint $q(y-x)$, tehát
$$f(px+qy) \le f(x) + \frac{f(y)-f(x)}{y-x} \cdot q(y-x) = f(x) + q\big(f(y)-f(x)\big) = (1-q)f(x) + qf(y) = p f(x) + q f(y).$$

**($\Leftarrow$) Ha a Jensen-egyenlőtlenség teljesül.** Legyen $x < z < y$, és keressünk olyan $p, q$ súlyokat, amelyekre $px + qy = z$. A választás:
$$p = \frac{y-z}{y-x}, \qquad q = \frac{z-x}{y-x}.$$
Ezek pozitívak, összegük $1$, és valóban
$$\frac{y-z}{y-x}x + \frac{z-x}{y-x}y = \frac{yx - zx + zy - xy}{y-x} = \frac{z(y-x)}{y-x} = z.$$
A feltevés szerinti egyenlőtlenség a fenti számolást visszafelé olvasva pontosan a
$$f(z) \le f(x) + \frac{f(y)-f(x)}{y-x}(z-x)$$
alakot ölti, ami a konvexitás definíciója. $\blacksquare$

**Tétel (Jensen-egyenlőtlenség több tagra).** Az $I$ intervallumon értelmezett $f$ függvény akkor és csak akkor konvex $I$-n, ha minden $x_1, \dots, x_n \in I$ és minden $p_1, \dots, p_n > 0$, $p_1 + \dots + p_n = 1$ esetén
$$f(p_1 x_1 + \dots + p_n x_n) \le p_1 f(x_1) + \dots + p_n f(x_n).$$

(A bizonyítás teljes indukcióval történik a kéttagú esetből kiindulva.)

**Definíció (gyenge konvexitás).** Ha $p = q = \frac{1}{2}$, akkor a Jensen-feltétel a
$$f\!\left(\frac{x+y}{2}\right) \le \frac{f(x) + f(y)}{2} \qquad (\forall x, y \in I)$$
alakot ölti. Az ennek eleget tevő függvényeket **gyengén konvexnek** nevezzük.

Nyilvánvalóan konvex $\implies$ gyengén konvex. A megfordítás **nem** igaz, de az ellenpélda konstrukciója nem triviális (és a Hamel-bázison alapul). Később látni fogjuk viszont, hogy **folytonos** gyengén konvex függvény már konvex.

## 44. Konvexitás és a differenciahányados

A következő jellemzés az egész konvexitás-elmélet motorja: a konvexitást a **meredekségek monotonitására** vezeti vissza.

**Tétel.** Az $f$ akkor és csak akkor konvex az $I$ intervallumon, ha minden $a \in I$-re az
$$m_a(x) = \frac{f(x) - f(a)}{x - a}$$
függvény monoton növekedő az $I \setminus \{a\}$ halmazon.

Szemléletesen: rögzítsünk egy pontot a grafikonon, és forgassunk körülötte egy szelőt. A konvexitás azt jelenti, hogy ahogy a másik pont jobbra vándorol, a szelő meredeksége soha nem csökken.

*Bizonyítás.*

**($\Rightarrow$)** Tegyük fel, hogy $f$ konvex $I$-n, és legyen $a, x, y \in I$.

**(I. eset) $a < x < y$.** A konvexitás definícióját az $[a,y]$ intervallumra és annak $x$ belső pontjára alkalmazva:
$$(*) \qquad f(x) \le \frac{f(y) - f(a)}{y - a}(x - a) + f(a).$$
Vonjunk ki $f(a)$-t, és osszunk a pozitív $(x-a)$-val:
$$(**) \qquad m_a(x) = \frac{f(x) - f(a)}{x-a} \le \frac{f(y)-f(a)}{y-a} = m_a(y).$$

**(II. eset) $x < y < a$**, illetve **(III. eset) $x < a < y$**: hasonlóan, a III. esetben némi óvatossággal (ott a $(x-a)$ előjele negatív, tehát az osztásnál megfordul az egyenlőtlenség iránya).

**($\Leftarrow$)** Ha minden $a \in I$-re $m_a$ monoton növekedő, akkor speciálisan $a < x < y$ esetén $(**)$ fennáll; ez viszont — a fenti lépéseket visszafelé olvasva — éppen $(*)$, azaz a konvexitás definíciója. $\blacksquare$

**Példa.** $f(x) = x^2$ konvex $\mathbb{R}$-en, hiszen
$$m_a(x) = \frac{x^2 - a^2}{x - a} = x + a$$
szigorúan monoton növekedő.

**Alkalmazás: a négyzetes közép.** Legyen $f(x) = x^2$ és $p_1 = \dots = p_n = \frac{1}{n}$. A Jensen-egyenlőtlenség szerint tetszőleges $a_1, \dots, a_n \in \mathbb{R}$ számokra
$$\left( \frac{a_1 + \dots + a_n}{n} \right)^2 \le \frac{a_1^2 + \dots + a_n^2}{n},$$
azaz gyököt vonva
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}.$$
A jobb oldalon álló mennyiség a számok **négyzetes közepe**; a számtani közép tehát soha nem haladja meg.

---
