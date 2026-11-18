# VIII. RÉSZ: VALÓS FÜGGVÉNYEK

A sorozatok után most a függvényekre térünk át. Ebben a részben még nem határértékekkel foglalkozunk, hanem a valós függvények „statikus” tulajdonságaival: hogyan adhatók meg, milyen alapvető típusaik vannak, és milyen globális tulajdonságaik (paritás, periodicitás, korlátosság, monotonitás, szélsőértékek, konvexitás) lehetnek. A rész végén a konvexitás fogalmát részletesen kidolgozzuk, mert ez később, a differenciálszámításban (79–81. szakasz), az egyik legfontosabb eszközünk lesz.

## 38. Alapfogalmak és műveletek

> **Definíció.** Az $f : X \to \mathbb{R}$ függvényt **valós értékű** függvénynek nevezzük. Ha ezen felül $X \subset \mathbb{R}$, akkor **egyváltozós valós függvényről** beszélünk.

A továbbiakban, hacsak mást nem mondunk, „függvényen” egyváltozós valós függvényt értünk.

> **Definíció (megszorítás).** Ha $f : X \to Y$ és $A \subset X$, akkor az $f$ **$A$-ra való megszorítása** (leszűkítése) az a $g : A \to Y$ függvény, amelyre minden $x \in A$-ra $g(x) = f(x)$. Jelölése $f|_A$.

A megszorítás ugyanaz a hozzárendelési szabály, csak kisebb értelmezési tartományon. A 14. szakaszban láttuk, hogy ez a tulajdonságokat lényegesen megváltoztathatja: az $x \mapsto x^2$ függvény $\mathbb{R}$-en nem injektív, de a $[0, +\infty)$-re vett megszorítása már az.

> **Definíció (őskép).** Ha $f : X \to \mathbb{R}$ és $A \subset \mathbb{R}$, akkor az $A$ halmaz **ősképe**
> $$f^{-1}(A) = \{x \in X : f(x) \in A\},$$
> azaz azon helyek halmaza, ahol a függvény $A$-beli értéket vesz fel.

**Figyelem:** az ősképhez az $f$-nek **nem kell injektívnek lennie**. Az $f^{-1}$ szimbólum itt egy *halmazra* hat, és nem az inverz függvényt jelöli (amely nem is feltétlenül létezik). Például $g(x) = x^2$ esetén
$$g^{-1}(\{4\}) = \{-2, 2\}, \qquad g^{-1}(\{4, 16\}) = \{-4, -2, 2, 4\}, \qquad g^{-1}\big((-\infty, 0)\big) = \emptyset, \qquad g^{-1}\big([0, 1]\big) = [-1, 1].$$
Az őskép-jelölés az egyenletek és egyenlőtlenségek nyelvén is olvasható: $f^{-1}(\{c\})$ az $f(x) = c$ egyenlet megoldáshalmaza, $f^{-1}\big((0, +\infty)\big)$ az $f(x) > 0$ egyenlőtlenségé.

> **Definíció (grafikon).** Az $f$ függvény **grafikonja** a
> $$\operatorname{graph}(f) = \{(x, y) \in \mathbb{R}^2 : x \in D(f),\ y = f(x)\}$$
> síkbeli ponthalmaz.

A grafikon rajzolása a függvény megértésének leghatékonyabb eszköze — de csak szemléltetésre szolgál. A grafikonról leolvasott tulajdonságokat mindig bizonyítani kell, hiszen a rajz pontatlan, és bizonyos függvényeknek (mint a Dirichlet-függvény, lásd a következő szakaszt) a grafikonja nem is rajzolható le értelmesen.

> **Definíció (műveletek függvényekkel).** Ha $f$ és $g$ valós függvények, akkor
> $$(f \pm g)(x) = f(x) \pm g(x), \qquad (f \cdot g)(x) = f(x)\cdot g(x), \qquad D(f \pm g) = D(f \cdot g) = D(f) \cap D(g),$$
> továbbá
> $$\left(\frac{f}{g}\right)(x) = \frac{f(x)}{g(x)}, \qquad D\!\left(\frac{f}{g}\right) = \big(D(f) \cap D(g)\big) \setminus g^{-1}(\{0\}).$$

A műveletek tehát **pontonként** értendők. A hányados értelmezési tartományából ki kell venni a nevező zérushelyeit, azaz a $g^{-1}(\{0\})$ halmazt — itt hasznos az őskép jelölése.

## 39. Elemi függvények

Most felsoroljuk azokat a függvényeket, amelyekkel a legtöbbet fogunk dolgozni. (A trigonometrikus, exponenciális és logaritmusfüggvények precíz bevezetése a XI. részben történik.)

**Polinomfüggvények.** A
$$p(x) = a_n x^n + a_{n-1}x^{n-1} + \dots + a_1 x + a_0, \qquad a_n \neq 0$$
alakú függvények; $n$ a polinom **foka**, $a_n$ a **főegyütthatója**. Speciális esetek:

- az **állandó függvény** $x \mapsto c$; ha $c \neq 0$, ez nulladfokú polinom, az azonosan nulla polinomnak pedig **nincs foka**;
- a **lineáris függvények** $x \mapsto ax + b$; grafikonjuk egyenes, $a$ a meredekség;
- a **hatványfüggvények** $x \mapsto x^n$.

**Racionális törtfüggvények.** Két polinom hányadosa: $R(x) = \frac{p(x)}{q(x)}$, ahol $q$ nem az azonosan nulla polinom. Értelmezési tartománya $\mathbb{R}$-ből a $q$ zérushelyeinek (véges sok pont) elhagyásával adódik. Példák: $\frac{1}{x}$, $\frac{x^2 + 5}{x^3 - 7x + 3}$.

A következő függvények „szakaszonként” vannak megadva, és a félév során fontos példák és ellenpéldák lesznek.

> **Definíció (előjelfüggvény).**
> $$\operatorname{sgn}(x) = \begin{cases} 1 & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -1 & \text{ha } x < 0. \end{cases}$$

A grafikon két nyílt félegyenesből (az $y = -1$ és az $y = 1$ magasságban) és az origóból áll. Hasznos összefüggés: $|x| = x \cdot \operatorname{sgn}(x)$.

> **Definíció (egészrész-függvény).** Ha $x \in \mathbb{R}$, akkor $[x]$ (más jelöléssel $\lfloor x \rfloor$) az az egyértelműen meghatározott egész szám, amelyre
> $$[x] \le x < [x] + 1.$$

Vagyis $[x]$ a legnagyobb olyan egész, amely nem nagyobb $x$-nél. Például $[2{,}7] = 2$, $[3] = 3$, de $[-1{,}2] = -2$, **nem** $-1$! (A negatív számoknál a „levágjuk a tizedesjegyeket” szabály hibás eredményt ad.) A létezés és egyértelműség az arkhimédészi tulajdonságból következik (9. szakasz). A grafikon **lépcsős**: minden $[k, k+1)$ intervallumon az állandó $k$ érték, a lépcsőfokok bal végpontja a grafikonhoz tartozik, jobb végpontja nem.

> **Definíció (törtrész-függvény).** $\{x\} = x - [x]$.

Az értékkészlet $[0, 1)$. Például $\{2{,}7\} = 0{,}7$, de $\{-1{,}2\} = -1{,}2 - (-2) = 0{,}8$. A grafikon **fűrészfog** alakú: minden $[k, k+1)$ intervallumon az $y = x - k$ egyenes egy szakasza, amely $0$-ból indul és $1$ felé emelkedik, de azt nem éri el.

> **Definíció (Dirichlet-függvény).**
> $$D(x) = \begin{cases} 1 & \text{ha } x \in \mathbb{Q}, \\ 0 & \text{ha } x \in \mathbb{R} \setminus \mathbb{Q}. \end{cases}$$

Mivel a racionális és az irracionális számok is mindenütt sűrűn helyezkednek el (9. szakasz), a Dirichlet-függvény minden intervallumon végtelen sokszor „ugrál” $0$ és $1$ között. A grafikonját nem lehet lerajzolni: két, „pontokkal teleszórt” vízszintes egyenesből áll. Ez a függvény lesz a standard ellenpéldánk: látni fogjuk, hogy sehol sem folytonos, és egyetlen pontban sincs határértéke.

## 40. Globális tulajdonságok

> **Definíció (paritás).** Legyen $f$ olyan függvény, amelynek értelmezési tartománya szimmetrikus a $0$-ra ($x \in D(f) \iff -x \in D(f)$). Az $f$
>
> - **páros**, ha minden $x \in D(f)$-re $f(-x) = f(x)$;
> - **páratlan**, ha minden $x \in D(f)$-re $f(-x) = -f(x)$.

**Szemléletesen:** a páros függvény grafikonja az $y$ tengelyre, a páratlané az origóra szimmetrikus.

**Példák.** $x^2$, $x^4$, $|x|$ és az állandó függvények párosak; $x$, $x^3$, $\frac{1}{x}$, $\operatorname{sgn}(x)$ páratlanok. Az azonosan nulla függvény egyszerre páros és páratlan (és ez az egyetlen ilyen). A legtöbb függvény se nem páros, se nem páratlan, például $x + 1$ vagy $[x]$. Az elnevezés a hatványfüggvényekből ered: $x^n$ páros $n$-re páros, páratlan $n$-re páratlan.

Hasznos szabályok: két páros vagy két páratlan függvény szorzata páros, egy páros és egy páratlan függvény szorzata páratlan (ugyanúgy, mint a $(-1)^k$ hatványoknál). Továbbá minden szimmetrikus értelmezési tartományú függvény egyértelműen felbontható egy páros és egy páratlan függvény összegére (lásd az 1. feladatot).

> **Definíció (periodicitás).** Az $f$ függvény **periodikus** a $p \neq 0$ **periódussal**, ha $x \in D(f) \iff x + p \in D(f)$, és minden $x \in D(f)$-re
> $$f(x + p) = f(x).$$

Ha $p$ periódus, akkor $-p$, $2p$, $3p, \dots$ is az. A legkisebb pozitív periódust (ha létezik) **alapperiódusnak** nevezzük. Példák: a $\{x\}$ törtrész-függvény $1$ szerint periodikus, hiszen $[x + 1] = [x] + 1$, és így $\{x + 1\} = \{x\}$. A $\sin$ és $\cos$ alapperiódusa $2\pi$ (58. szakasz). A Dirichlet-függvénynek minden pozitív racionális szám periódusa (racionális számot hozzáadva racionálisból racionális, irracionálisból irracionális lesz), így alapperiódusa nincs.

> **Definíció (korlátosság halmazon).** Az $f$ függvény **korlátos** (alulról, illetve felülről korlátos) az $A \subset D(f)$ halmazon, ha az $f(A)$ képhalmaz ilyen.

**Példa.** $f(x) = \frac{1}{x}$ korlátos az $[1, +\infty)$ halmazon (ott $0 < f(x) \le 1$), de nem korlátos a $(0, 1)$ halmazon (ott tetszőlegesen nagy értékeket vesz fel, hiszen $f\left(\frac{1}{n}\right) = n$).

> **Definíció (monotonitás).** Az $f$ függvény az $A \subset D(f)$ halmazon
>
> - **monoton növekedő**, ha minden $x, y \in A$, $x < y$ esetén $f(x) \le f(y)$;
> - **monoton csökkenő**, ha minden $x, y \in A$, $x < y$ esetén $f(x) \ge f(y)$;
> - **szigorúan monoton növekedő** (csökkenő), ha $x < y$ esetén $f(x) < f(y)$ (illetve $f(x) > f(y)$).

Szigorúan monoton függvény **injektív**, hiszen $x \neq y$ esetén vagy $x < y$, vagy $y < x$, és mindkét esetben $f(x) \neq f(y)$. Ezért a szigorúan monoton függvényeknek van inverzük (az értékkészletükön), és ez az inverz is szigorúan monoton, ugyanolyan irányban. Ezt a tényt az 55. és a XI. részben, az inverz függvények (gyökök, logaritmus, arkuszfüggvények) bevezetésénél fogjuk kihasználni.

**Figyelem:** a monotonitás egy halmazra vonatkozik. Az $\frac{1}{x}$ függvény szigorúan monoton csökkenő a $(-\infty, 0)$ intervallumon és a $(0, +\infty)$ intervallumon is, de **nem** monoton csökkenő az $\mathbb{R} \setminus \{0\}$ halmazon, hiszen $-1 < 1$, mégis $\frac{1}{-1} < \frac{1}{1}$.

> **Definíció (abszolút szélsőérték).** Az $a \in A \subset D(f)$ hely az $f$-nek az $A$-ra vonatkozó **(abszolút) maximumhelye**, ha minden $x \in A$-ra $f(x) \le f(a)$; **minimumhelye**, ha minden $x \in A$-ra $f(x) \ge f(a)$. Az $f(a)$ érték a **maximum**, illetve **minimum**. Ha $x \neq a$ esetén szigorú egyenlőtlenség áll, akkor **szigorú** maximum-, illetve minimumhelyről beszélünk.

Egy függvénynek nem feltétlenül van maximuma, még akkor sem, ha korlátos: az $f(x) = x$ függvénynek a $(0, 1)$ intervallumon nincs maximuma (a felvett értékek szuprémuma $1$, de ezt nem veszi fel). Az 54. szakasz Weierstrass-tétele megmondja, mikor garantált a szélsőérték létezése.

## 41. Egy lokális tulajdonság

Az előző szakasz tulajdonságai **globálisak**: egy egész halmazon nézik a függvényt. Az analízisben legalább ilyen fontosak a **lokális** tulajdonságok, amelyek csak egy pont tetszőlegesen kis környezetében vizsgálják a függvényt.

> **Definíció (lokális szélsőérték).** Az $a$ hely az $f$ **lokális maximumhelye**, ha van olyan $\delta > 0$, hogy $B(a, \delta) \subset D(f)$, és minden $x \in B(a, \delta)$-ra $f(x) \le f(a)$. Hasonlóan definiáljuk a **lokális minimumhelyet**, valamint a **szigorú** lokális maximum- és minimumhelyet ($x \neq a$ esetén szigorú egyenlőtlenséggel).

Vagyis a lokális maximumhelyen a függvényérték egy kis környezetben a legnagyobb — de lehet, hogy messzebb van nagyobb érték is.

**Példák.**

- $f(x) = x^2$: a $0$ szigorú lokális (sőt abszolút) minimumhely.
- $f(x) = x^3 - 3x$: a $-1$ lokális maximumhely ($f(-1) = 2$), az $1$ lokális minimumhely ($f(1) = -2$), de egyik sem abszolút, hiszen a függvény $+\infty$ és $-\infty$ felé is minden határon túl nő, illetve csökken. (Ezt a 73. szakasz eszközeivel könnyen igazolhatjuk.)
- Az állandó függvénynek minden pont lokális maximum- és minimumhelye is (de nem szigorú).
- $f(x) = x$ a $[0, 1]$ intervallumon: az $1$ abszolút maximumhely, de **nem** lokális maximumhely a fenti definíció szerint, mert az $1$-nek nincs olyan teljes környezete, amely $D(f)$-ben volna. Ez nem pedantéria: a 73. szakaszban látni fogjuk, hogy lokális szélsőértékhelyen (ha a függvény ott differenciálható) a derivált nulla — itt pedig a derivált $1$. A végpontokat tehát mindig külön kell vizsgálni.

## 42. Konvexitás

Tekintsük az $x^2$, a $\sqrt{x}$ és az $x$ függvényeket a $(0, +\infty)$ intervallumon. Mindhárom szigorúan monoton növekedő, a grafikonjuk mégis lényegesen különbözik: az $x^2$ grafikonja „felfelé hajlik”, a $\sqrt{x}$-é „lefelé hajlik”, az $x$-é egyenes. A monotonitás ezt a különbséget nem látja; egy új fogalomra van szükség, amely a **görbületet** írja le.

**Az ötlet: húrok.** Kössük össze a grafikon két pontját egy **húrral** (szakasszal).

- Az $x^2$ esetében a grafikon a két pont között mindig a **húr alatt** halad.
- A $\sqrt{x}$ esetében a grafikon mindig a **húr fölött** halad.
- Az $x^3$ függvénynél ($\mathbb{R}$-en) mindkettő előfordul: ha mindkét pont pozitív, a grafikon a húr alatt van, ha mindkettő negatív, fölötte; ha az egyik negatív, a másik pozitív, a húr **átmetszheti** a grafikont.

Formalizáljuk. Az $(a, f(a))$ és $(b, f(b))$ pontokon átmenő egyenes (húr) egyenlete
$$h_{a,b}(x) = f(a) + \frac{f(b) - f(a)}{b - a}(x - a).$$
Ez egy lineáris függvény, amelyre $h_{a,b}(a) = f(a)$ és $h_{a,b}(b) = f(b)$; a $\frac{f(b) - f(a)}{b - a}$ hányados a húr **meredeksége**.

> **Definíció (konvexitás).** Az $f$ függvény **konvex** az $I$ intervallumon, ha bármely $a, b \in I$, $a < b$ esetén a grafikon az $[a, b]$ intervallum fölött a húr alatt (vagy rajta) halad:
> $$f(x) \le f(a) + \frac{f(b) - f(a)}{b - a}(x - a) = h_{a,b}(x) \qquad \text{minden } x \in [a, b]\text{-re}.$$
> Az $f$ **konkáv**, ha itt $\le$ helyett $\ge$ áll (a grafikon a húr fölött halad). Az $f$ **szigorúan konvex**, illetve **szigorúan konkáv**, ha $a < x < b$ esetén szigorú egyenlőtlenség áll.

**Szóhasználat.** A konvex függvényt néha „felülről nézve homorúnak”, a konkávat „domborúnak” mondják; a magyar szakirodalom ebben nem egységes, ezért mi a konvex/konkáv szavakat használjuk. Emlékeztető: a konvex függvény grafikonja olyan, mint egy **mosolygó száj** (vagy egy edény, amely megtartja a vizet), a konkávé olyan, mint egy **szomorú száj**.

A húr egyenlete a $b$ ponttól is felírható: $h_{a,b}(x) = f(b) + \frac{f(b) - f(a)}{b - a}(x - b)$ — ez ugyanaz az egyenes, és a bizonyításokban mindkét alakot használni fogjuk.

**Példák.**

- A lineáris függvény ($f(x) = mx + c$) konvex és konkáv is, hiszen a grafikonja maga a húr. (Ezek az egyetlen ilyen függvények.)
- Az $f(x) = x^2$ szigorúan konvex $\mathbb{R}$-en. Ezt a 44. szakaszban egy kényelmes jellemzéssel fogjuk igazolni; a definícióból is látható: $a < x < b$ esetén
$$h_{a,b}(x) - x^2 = a^2 + (a + b)(x - a) - x^2 = (x - a)(a + b) - (x - a)(x + a) = (x - a)(b - x) > 0.$$

> **Állítás.** Ha $f$ konvex, akkor $-f$ konkáv (és fordítva).

*Bizonyítás.* Az $-f$ húrja $-h_{a,b}$, és az $f(x) \le h_{a,b}(x)$ egyenlőtlenséget $(-1)$-gyel szorozva $-f(x) \ge -h_{a,b}(x)$. $\blacksquare$

Ez a megfigyelés végig érvényes: minden konvexitásra vonatkozó tételnek van konkáv párja, amely $-f$-re alkalmazva adódik. Ezért a továbbiakban rendszerint csak a konvex esetet bizonyítjuk.

## 43. A Jensen-egyenlőtlenség

A konvexitás definíciója kényelmesebb alakba írható, ha az $[a, b]$ intervallum pontjait „súlyozott átlagként” írjuk fel.

**Az $[x, y]$ intervallum pontjai.** Legyen $x < y$, és $p, q > 0$, $p + q = 1$. Ekkor
$$x = px + qx < px + qy < py + qy = y,$$
tehát a $px + qy$ szám az $[x, y]$ intervallum egy belső pontja. Sőt, minden belső pont előáll így: ha $x < z < y$, akkor a
$$p = \frac{y - z}{y - x}, \qquad q = \frac{z - x}{y - x}$$
súlyok pozitívak, összegük $1$, és
$$px + qy = \frac{(y - z)x + (z - x)y}{y - x} = \frac{yx - zx + zy - xy}{y - x} = \frac{z(y - x)}{y - x} = z.$$
A $px + qy$ tehát az $x$ és $y$ **súlyozott átlaga**: ha $p$ nagy, közel van $x$-hez, ha $q$ nagy, közel van $y$-hoz; $p = q = \frac{1}{2}$-re a felezőpont. A $z$ pont pontosan $q : p$ arányban osztja az $[x, y]$ szakaszt, hiszen $z - x = q(y - x)$ és $y - z = p(y - x)$.

> **Tétel (Jensen-egyenlőtlenség).** Az $I$ intervallumon értelmezett $f$ függvény akkor és csak akkor konvex $I$-n, ha minden $x, y \in I$ és minden $p, q > 0$, $p + q = 1$ esetén
> $$f(px + qy) \le p\,f(x) + q\,f(y).$$
> (Szigorú konvexitás esetén $x \neq y$-ra szigorú egyenlőtlenség áll. Sok könyv $p = t$, $q = 1 - t$ jelöléssel írja: $f(tx + (1-t)y) \le tf(x) + (1-t)f(y)$, $t \in (0,1)$.)

**Szavakban:** a súlyozott átlag helyén felvett függvényérték legfeljebb akkora, mint a függvényértékek ugyanolyan súlyozású átlaga. Geometriailag: a grafikon $px + qy$ pontja alatt (vagy rajta) van a húr megfelelő pontja, amelynek magassága éppen $pf(x) + qf(y)$.

*Bizonyítás.*

**($\Rightarrow$)** Legyen $f$ konvex. Ha $x = y$, egyenlőség áll. Legyen $x < y$ (az $x > y$ eset a szerepek cseréjével adódik), és alkalmazzuk a konvexitás definícióját az $[x, y]$ intervallum $z = px + qy$ pontjában. Mivel $z - x = q(y - x)$:
$$f(px + qy) \le f(x) + \frac{f(y) - f(x)}{y - x}\cdot q(y - x) = f(x) + q\big(f(y) - f(x)\big) = (1 - q)f(x) + qf(y) = pf(x) + qf(y).$$

**($\Leftarrow$)** Tegyük fel, hogy a Jensen-egyenlőtlenség teljesül, és legyen $a < z < b$ az $I$ pontjai. A fenti számolás szerint $z = pa + qb$ a $p = \frac{b - z}{b - a}$, $q = \frac{z - a}{b - a}$ súlyokkal. A feltevés szerint
$$f(z) \le pf(a) + qf(b) = f(a) + q\big(f(b) - f(a)\big) = f(a) + \frac{f(b) - f(a)}{b - a}(z - a),$$
ami éppen a konvexitás definíciója. $\blacksquare$

A Jensen-egyenlőtlenség igazi ereje abban áll, hogy **tetszőleges számú** pontra általánosítható.

> **Tétel (Jensen-egyenlőtlenség több tagra).** Az $I$ intervallumon értelmezett $f$ akkor és csak akkor konvex, ha minden $x_1, \dots, x_n \in I$ és minden $p_1, \dots, p_n > 0$, $p_1 + \dots + p_n = 1$ esetén
> $$f(p_1x_1 + \dots + p_nx_n) \le p_1f(x_1) + \dots + p_nf(x_n).$$

*Bizonyítás.* Az „akkor” irány az $n = 2$ eset. A „csak akkor” irányt $n$ szerinti teljes indukcióval igazoljuk; $n = 1$ triviális, $n = 2$ az előző tétel. Tegyük fel, hogy az állítás igaz $n$ pontra, és legyen $x_1, \dots, x_{n+1} \in I$, $p_1 + \dots + p_{n+1} = 1$. Legyen $P = p_1 + \dots + p_n = 1 - p_{n+1} > 0$, és
$$y = \frac{p_1}{P}x_1 + \dots + \frac{p_n}{P}x_n.$$
Az $\frac{p_k}{P}$ súlyok pozitívak és összegük $1$, tehát $y$ az $x_1, \dots, x_n$ egy súlyozott átlaga, így $y \in I$ (a legkisebb és legnagyobb $x_k$ közé esik). Ekkor
$$p_1x_1 + \dots + p_{n+1}x_{n+1} = Py + p_{n+1}x_{n+1},$$
és $P + p_{n+1} = 1$. A kéttagú Jensen-egyenlőtlenséget, majd az indukciós feltevést alkalmazva:
$$f(Py + p_{n+1}x_{n+1}) \le Pf(y) + p_{n+1}f(x_{n+1}) \le P\sum_{k=1}^{n}\frac{p_k}{P}f(x_k) + p_{n+1}f(x_{n+1}) = \sum_{k=1}^{n+1}p_kf(x_k). \qquad \blacksquare$$

A súlyokat egyenlőnek választva ($p_k = \frac{1}{n}$) a gyakran használt alakot kapjuk:
$$f\!\left(\frac{x_1 + \dots + x_n}{n}\right) \le \frac{f(x_1) + \dots + f(x_n)}{n}.$$
„Konvex függvényre az átlag képe legfeljebb akkora, mint a képek átlaga.” A 80. szakaszban ebből vezetjük le — a logaritmusfüggvény konkávitását felhasználva — a számtani–mértani egyenlőtlenség egy új bizonyítását, valamint a Young- és a Hölder-egyenlőtlenséget.

> **Definíció (gyenge konvexitás).** Ha a Jensen-egyenlőtlenség a $p = q = \frac{1}{2}$ súlyokra teljesül,
> $$f\!\left(\frac{x + y}{2}\right) \le \frac{f(x) + f(y)}{2} \qquad \text{minden } x, y \in I\text{-re},$$
> akkor $f$-et **gyengén konvexnek** (felezőpontban konvexnek) nevezzük.

Nyilvánvalóan konvex $\implies$ gyengén konvex. A megfordítás **nem** igaz, de az ellenpélda konstrukciója nem egyszerű: a $\mathbb{R}$ mint $\mathbb{Q}$ feletti vektortér úgynevezett Hamel-bázisán alapul, és a kapott függvény „vadul” viselkedik. Az 57. szakaszban látni fogjuk, hogy **folytonos** gyengén konvex függvény már konvex — a patológiát tehát a folytonosság hiánya okozza.

## 44. Konvexitás és a differenciahányados

A következő jellemzés az egész konvexitás-elmélet motorja: a konvexitást a **húrok meredekségének** monotonitására vezeti vissza. Ebből fogjuk levezetni a konvex függvények folytonosságát (57. szakasz) és a deriválttal való kapcsolatukat (79. szakasz).

Először egy szemléletes lemma, amelyet „három húr lemmának” is neveznek.

> **Lemma (három húr).** Legyen $f$ konvex az $I$ intervallumon, és $a < x < b$ az $I$ pontjai. Ekkor
> $$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(a)}{b - a} \le \frac{f(b) - f(x)}{b - x}.$$

Szavakban: a grafikon három pontja által meghatározott három húr közül a bal oldali a legkevésbé meredek, a jobb oldali a legmeredekebb, a „hosszú” húr pedig a kettő között van.

*Bizonyítás.* Jelölje $s = \frac{f(b) - f(a)}{b - a}$ a hosszú húr meredekségét. A konvexitás szerint
$$f(x) \le f(a) + s(x - a).$$
Ebből $f(a)$-t kivonva és a pozitív $x - a$-val osztva az első egyenlőtlenséget kapjuk. A húr egyenletét a $b$ pontból felírva:
$$f(x) \le f(b) + s(x - b) \implies f(b) - f(x) \ge s(b - x),$$
és a pozitív $b - x$-szel osztva a második egyenlőtlenséget kapjuk. $\blacksquare$

> **Tétel.** Az $f$ akkor és csak akkor konvex az $I$ intervallumon, ha minden $a \in I$-re az
> $$m_a(x) = \frac{f(x) - f(a)}{x - a}$$
> függvény (a rögzített $a$ pontból induló húrok meredeksége) monoton növekedő az $I \setminus \{a\}$ halmazon.

**Szemléletesen:** rögzítsünk egy pontot a grafikonon, és forgassunk körülötte egy szelőt úgy, hogy a másik metszéspont balról jobbra végigvándorol a grafikonon. A konvexitás azt jelenti, hogy közben a szelő meredeksége soha nem csökken.

*Bizonyítás.*

**($\Rightarrow$)** Legyen $f$ konvex, $a \in I$, és $x < y$ az $I \setminus \{a\}$ pontjai. Azt kell megmutatnunk, hogy $m_a(x) \le m_a(y)$. Az $a$ helyzete szerint három eset van; mindegyikben a három húr lemmát alkalmazzuk három, növekvő sorrendbe rendezett pontra.

- **$a < x < y$:** a lemma első egyenlőtlensége (az $a < x < y$ pontokra) szerint $m_a(x) \le m_a(y)$.
- **$x < y < a$:** a lemma (az $x < y < a$ pontokra) második és harmadik tagját összehasonlítva $\frac{f(a) - f(x)}{a - x} \le \frac{f(a) - f(y)}{a - y}$; ez éppen $m_a(x) \le m_a(y)$, hiszen $m_a(x) = \frac{f(x) - f(a)}{x - a} = \frac{f(a) - f(x)}{a - x}$.
- **$x < a < y$:** a lemma (az $x < a < y$ pontokra) első és harmadik tagja szerint $\frac{f(a) - f(x)}{a - x} \le \frac{f(y) - f(a)}{y - a}$, azaz $m_a(x) \le m_a(y)$.

**($\Leftarrow$)** Ha minden $a$-ra $m_a$ monoton növekedő, akkor $a < x < b$ esetén $m_a(x) \le m_a(b)$, azaz
$$\frac{f(x) - f(a)}{x - a} \le \frac{f(b) - f(a)}{b - a}.$$
A pozitív $x - a$-val szorozva és $f(a)$-t hozzáadva éppen a konvexitás definícióját kapjuk. $\blacksquare$

Szigorú konvexitás esetén ugyanígy: $f$ pontosan akkor szigorúan konvex, ha minden $m_a$ szigorúan monoton növekedő.

**Példák.**

- $f(x) = x^2$: $m_a(x) = \frac{x^2 - a^2}{x - a} = x + a$, ami szigorúan monoton növekedő; tehát $x^2$ szigorúan konvex $\mathbb{R}$-en.
- $f(x) = \frac{1}{x}$ a $(0, +\infty)$-en: $m_a(x) = \frac{\frac{1}{x} - \frac{1}{a}}{x - a} = \frac{a - x}{ax(x - a)} = -\frac{1}{ax}$, ami rögzített $a > 0$ mellett szigorúan monoton növekedő $x$-ben. Tehát $\frac{1}{x}$ szigorúan konvex a $(0, +\infty)$-en.
- $f(x) = x^3$: $m_a(x) = x^2 + ax + a^2$, amely például $a = 0$-ra az $x^2$, és ez nem monoton $\mathbb{R}$-en. Tehát $x^3$ nem konvex $\mathbb{R}$-en. (A $[0, +\infty)$-en viszont konvex, a $(-\infty, 0]$-n konkáv.)

**Alkalmazás: a négyzetes közép.** Alkalmazzuk a Jensen-egyenlőtlenséget az $f(x) = x^2$ konvex függvényre, egyenlő súlyokkal: tetszőleges $a_1, \dots, a_n$ valós számokra
$$\left(\frac{a_1 + \dots + a_n}{n}\right)^2 \le \frac{a_1^2 + \dots + a_n^2}{n}.$$
Gyököt vonva (és felhasználva, hogy $t \le |t| = \sqrt{t^2}$):
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt{\frac{a_1^2 + \dots + a_n^2}{n}}.$$
A jobb oldalon álló mennyiség a számok **négyzetes közepe**. A II. rész közepei így egy négyes lánccá bővülnek: pozitív számokra
$$h \le m \le S \le Q,$$
ahol $Q$ a négyzetes közép. (A fizikában a négyzetes közép az „effektív érték”, például a váltakozó áram effektív feszültsége.)

---

## A VIII. rész összefoglalása

- Az őskép, $f^{-1}(A)$, injektivitás nélkül is értelmes; a függvényműveletek pontonként értendők.
- Fontos példák: polinomok, racionális törtfüggvények, $\operatorname{sgn}$, $[x]$, $\{x\}$, Dirichlet-függvény.
- Globális tulajdonságok: paritás, periodicitás, korlátosság, monotonitás, abszolút szélsőérték. Lokális szélsőérték: egy (teljes) környezetben vett szélsőérték.
- $f$ konvex, ha a grafikon a húrok alatt halad. Ekvivalens: a Jensen-egyenlőtlenség, $f(px + qy) \le pf(x) + qf(y)$; és az, hogy a rögzített pontból induló húrok meredeksége monoton növekedő.
- A Jensen-egyenlőtlenség tetszőleges sok pontra érvényes; az $x^2$-re alkalmazva a számtani és a négyzetes közép közötti egyenlőtlenséget adja.

## Feladatok a VIII. részhez

1. Legyen $f$ szimmetrikus értelmezési tartományú. Bizonyítsuk be, hogy $g(x) = \frac{f(x) + f(-x)}{2}$ páros, $h(x) = \frac{f(x) - f(-x)}{2}$ páratlan, és $f = g + h$. Bontsuk fel így az $f(x) = x^2 + x + 1$ függvényt.
2. Rajzoljuk fel (vázlatosan) a következő függvények grafikonját: a) $[2x]$; b) $\{-x\}$; c) $x - |x|$; d) $\operatorname{sgn}(x^2 - 1)$.
3. Bizonyítsuk be, hogy $|x|$ konvex $\mathbb{R}$-en.
4. Bizonyítsuk be, hogy két konvex függvény összege és maximuma is konvex. Igaz-e ez a szorzatra?
5. Alkalmazzuk a Jensen-egyenlőtlenséget a $(0, +\infty)$-en konvex $\frac{1}{x}$ függvényre, és vezessük le belőle a harmonikus és a számtani közép közötti egyenlőtlenséget.
6. Mutassuk meg, hogy ha $f$ konvex és monoton növekedő, $g$ konvex, akkor $f \circ g$ konvex (feltéve, hogy a kompozíció értelmes).

### Megoldási útmutatók

1. $g(-x) = g(x)$ és $h(-x) = -h(x)$ közvetlenül látszik. $x^2 + x + 1 = (x^2 + 1) + x$.
2. a) Lépcső, $\frac{1}{2}$ szélességű lépcsőfokokkal. b) $\{-x\} = 1 - \{x\}$, ha $x \notin \mathbb{Z}$, és $0$, ha $x \in \mathbb{Z}$: tükrözött fűrészfog. c) $0$, ha $x \ge 0$, és $2x$, ha $x < 0$. d) $1$, ha $|x| > 1$; $0$, ha $|x| = 1$; $-1$, ha $|x| < 1$.
3. A háromszög-egyenlőtlenség szerint $|px + qy| \le p|x| + q|y|$, ami a Jensen-egyenlőtlenség.
4. Összeg: a két Jensen-egyenlőtlenség összeadásával. Maximum: $\max(f, g)(px + qy) \le \max\big(pf(x) + qf(y),\ pg(x) + qg(y)\big) \le p\max(f,g)(x) + q\max(f,g)(y)$. Szorzatra nem: $x$ és $x^2$ konvex $\mathbb{R}$-en, de $x^3$ nem.
5. $\frac{1}{\frac{x_1 + \dots + x_n}{n}} \le \frac{\frac{1}{x_1} + \dots + \frac{1}{x_n}}{n}$, és mindkét oldal reciprokát véve $\frac{n}{\frac{1}{x_1} + \dots + \frac{1}{x_n}} \le \frac{x_1 + \dots + x_n}{n}$, azaz $h \le S$.
6. $f(g(px + qy)) \le f(pg(x) + qg(y)) \le pf(g(x)) + qf(g(y))$; az első lépésben $g$ konvexitását és $f$ monotonitását, a másodikban $f$ konvexitását használtuk.

---
