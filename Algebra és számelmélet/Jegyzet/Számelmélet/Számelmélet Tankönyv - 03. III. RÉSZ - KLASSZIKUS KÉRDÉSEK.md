# III. RÉSZ: KLASSZIKUS KÉRDÉSEK

A harmadik rész három klasszikus, évezredes kérdést vizsgál, amelyekben a számelmélet eddig felépített eszközei — a SzAT, a paritásvizsgálat, a maradékok — kerülnek alkalmazásra. Melyik szám racionális, és melyik nem? Melyek a derékszögű háromszögek egész oldalhosszai? És miért nincs megoldása az $x^n + y^n = z^n$ egyenletnek $n \ge 3$-ra? Az utolsó kérdésre a teljes választ csak a XX. század végén találták meg; mi az $n = 4$ esetet bizonyítjuk be Fermat saját módszerével.

## 10. Racionális, irracionális?

Az irracionális számok felfedezését általában Hippaszosznak, Püthagorasz egyik tanítványának tulajdonítják, aki az első (talán geometriai) bizonyítást adta $\sqrt{2}$ irracionalitására. A legenda szerint Püthagorasz nem tudta elfogadni az irracionális számok létezését, és Hippaszoszt vízbe fojtatta; más történetek szerint Püthagorasz tanítványai végeztek vele, vagy egyszerűen csak kizárták a közösségükből. Akármi is történt, a felfedezés megrendítette a püthagoreusok világképét, amely szerint „minden szám” — vagyis minden mennyiség egészek arányaként fejezhető ki.

> **10.1. Tétel.** $\sqrt{2}$ irracionális.

*Bizonyítás.* A bizonyításhoz nem szükséges a SzAT. Indirekt módon tegyük fel, hogy $\sqrt{2}$ racionális:
$$\sqrt{2} = \frac{a}{b}, \qquad (a, b) = 1.$$
Ekkor $\sqrt{2}\, b = a$, és négyzetre emelve
$$2b^2 = a^2.$$
Tehát $a^2$ páros. Ekkor $a$ nem lehet páratlan, hiszen páratlan szám négyzete páratlan; így $a$ páros: $a = 2a_0$. Behelyettesítve $2b^2 = 4a_0^2$, azaz
$$b^2 = 2a_0^2,$$
tehát $b^2$ és így $b$ is páros. Ekkor viszont $2 \mid (a, b)$, ami ellentmond $(a, b) = 1$-nek. $\blacksquare$

Hasonlóan, de már a SzAT felhasználásával könnyen igazolhatók a következők is:

> **10.2. Tétel.** Ha az $N$ pozitív egész nem $m$-edik hatvány, akkor $\sqrt[m]{N}$ irracionális.
>
> **10.3. Tétel.** $\log_{10} 2$ irracionális.

A két tétel bizonyítását a jegyzet az olvasóra bízza.

::: kiegeszites
**Kiegészítés: a 10.2. és a 10.3. Tétel bizonyítása.**

*10.2.* Tegyük fel, hogy $\sqrt[m]{N} = \frac{a}{b}$, ahol $a, b$ pozitív egészek és $(a, b) = 1$. Ekkor $N b^m = a^m$. Ha $b > 1$ volna, akkor $b$-nek volna egy $p$ prímosztója; $p \mid a^m$, így Eukleidész I. tétele szerint $p \mid a$, ellentmondásban $(a, b) = 1$-gyel. Tehát $b = 1$ és $N = a^m$, vagyis $N$ $m$-edik hatvány. (A SzAT nyelvén: $N$ pontosan akkor $m$-edik hatvány, ha kanonikus alakjában minden kitevő osztható $m$-mel.)

*10.3.* Mivel $1 < 2 < 10$, ezért $0 < \log_{10} 2 < 1$. Ha $\log_{10} 2 = \frac{p}{q}$ volna pozitív egészekkel, akkor $10^{p/q} = 2$, azaz $10^p = 2^q$. A bal oldal osztható $5$-tel, a jobb oldal nem — ez ellentmond a SzAT-nak. $\blacksquare$
:::

**Mit tudunk más nevezetes számokról?** Ma már sok konstansról tudjuk, hogy irracionális, sőt **transzcendens** (azaz nem gyöke semmilyen nem nulla racionális együtthatós polinomnak). Ilyen például

- $e$ (Hermite, 1873) és $\pi$ (Lindemann, 1882), és ezért $p(e)$ és $p(\pi)$ is minden nem konstans, racionális együtthatós $p$ polinomra;
- $e^{\sqrt{2}}$, $e^{\sqrt{5}}$, $e^{\sqrt[3]{2}}$, általában $e^\alpha$ minden nem nulla algebrai $\alpha$-ra (Lindemann–Weierstrass-tétel);
- a XX. század eredményei közül: $e^\pi$ (Gelfond, 1929), $2^{\sqrt{2}}$ és $e^{\pi\sqrt{2}}$ (a Gelfond–Schneider-tétel, 1934, következményei), valamint $\pi + e^\pi$ (Nyesztyerenko, 1996).

Ugyanakkor ma sem tudjuk bizonyítani, hogy irracionális-e például
$$e + \pi, \quad e\pi, \quad \pi^e, \quad 2^e, \quad \pi^{\sqrt{2}}$$
vagy az Euler–Mascheroni-féle $\gamma$ konstans. (Annyit tudunk, hogy $e + \pi$ és $e\pi$ közül legalább az egyik transzcendens, hiszen ha mindkettő algebrai volna, akkor az $x^2 - (e + \pi)x + e\pi = (x - e)(x - \pi)$ polinom gyökei, $e$ és $\pi$ is algebraiak volnának.)

### $e$ irracionalitása

Elemi úton, viszonylag könnyen bizonyítható $e$ irracionalitása. A következő szép bizonyítás Fouriertől származik (1815-ben jelent meg, Janot de Stainville könyvében). Felhasználjuk az analízisből ismert
$$e = 1 + \frac{1}{1!} + \frac{1}{2!} + \frac{1}{3!} + \dots$$
sorelőállítást.

> **10.4. Tétel.** Az $e$ szám irracionális.

*Bizonyítás.* Tegyük fel, hogy $e$ racionális: $e = \frac{a}{b}$, ahol $a, b$ pozitív egészek. Legyen $k \ge b$ egész. Ekkor $k!\, e = k! \cdot \frac{a}{b}$ egész szám, hiszen $b \mid k!$. Másrészt
$$k!\, e = \underbrace{\left(k! + \frac{k!}{1!} + \frac{k!}{2!} + \dots + \frac{k!}{k!}\right)}_{A} + \underbrace{\left(\frac{k!}{(k+1)!} + \frac{k!}{(k+2)!} + \dots\right)}_{B}.$$
Itt $A$ egész szám, hiszen $j \le k$-ra $\frac{k!}{j!} = (j+1)(j+2)\cdots k$ egész. A $B$-t becsüljük:
$$B = \frac{1}{k+1} + \frac{1}{(k+1)(k+2)} + \frac{1}{(k+1)(k+2)(k+3)} + \dots < \frac{1}{k+1} + \frac{1}{(k+1)^2} + \frac{1}{(k+1)^3} + \dots = \frac{\frac{1}{k+1}}{1 - \frac{1}{k+1}} = \frac{1}{k}.$$
(A második tagtól kezdve a nevezőkben $k + 2, k + 3, \dots$ helyett $k + 1$-et írtunk, ami a törteket növeli; az utolsó lépésben a mértani sor összegképletét használtuk.) Tehát $0 < B < \frac{1}{k} \le 1$. Így $B = k!\,e - A$ két egész szám különbsége, mégis szigorúan $0$ és $1$ közé esik — ellentmondás. $\blacksquare$

A bizonyítás lényege: $e$-t a sorának részletösszegei *túl jól* közelítik ahhoz, hogy $e$ tört lehessen. Egy $\frac{a}{b}$ törtet ugyanis egy $\frac{A}{k!}$ alakú, tőle különböző tört legfeljebb $\frac{1}{b \cdot k!}$ pontossággal közelíthet meg, $e$ közelítései viszont ennél jobbak.

### $\pi$ irracionalitása

$\pi$ irracionalitását az 1760-as években Johann Heinrich Lambert (1728–1777) bizonyította, aki korának neves polihisztora volt. Bár 12 évesen otthagyta az iskolát, önerőből tovább tanult, és később a Porosz Tudományos Akadémia tagja lett. Bizonyítása a tangens függvény lánctört-előállításán alapult. Mi egy sokkal rövidebb, Ivan Niven (1947) módszerén alapuló bizonyítást ismertetünk, sőt kicsit többet igazolunk: $\pi^2$ irracionalitását. A bizonyítás az analízis eszközeit (deriválás, integrálás) használja.

> **10.5. Tétel.** $\pi^2$ irracionális.
>
> **10.6. Következmény.** $\pi$ irracionális.

(A következmény nyilvánvaló: ha $\pi = \frac{a}{b}$ volna, akkor $\pi^2 = \frac{a^2}{b^2}$ is racionális volna.)

*A 10.5. Tétel bizonyítása.* **Előkészületek.** Legyen $n$ pozitív egész, és
$$f(x) = \frac{x^n (1 - x)^n}{n!} = \frac{1}{n!}\sum_{m=n}^{2n} c_m x^m,$$
ahol a $c_m$ együtthatók egészek (a binomiális tétel szerint). Erről a polinomról a következőket tudjuk.

- Ha $0 < x < 1$, akkor $0 < f(x) < \frac{1}{n!}$, hiszen ekkor $0 < x(1 - x) < 1$.
- Az $f$ deriváltjai a $0$ helyen egészek. Valóban, $f^{(m)}(0)$ az $x^m$ együtthatójának $m!$-szorosa, tehát $f^{(m)}(0) = 0$, ha $m < n$ vagy $m > 2n$, és $f^{(m)}(0) = \frac{m!}{n!} c_m \in \mathbb{Z}$, ha $n \le m \le 2n$.
- Ugyanez igaz az $1$ helyen is, mert $f(1 - x) = f(x)$, így $f^{(m)}(1) = (-1)^m f^{(m)}(0)$.

**Az indirekt feltevés.** Tegyük fel, hogy $\pi^2 = \frac{a}{b}$, ahol $a, b$ pozitív egészek. Legyen
$$G(x) = b^n \left(\pi^{2n} f(x) - \pi^{2n-2} f''(x) + \pi^{2n-4} f^{(4)}(x) - \dots + (-1)^n f^{(2n)}(x)\right).$$
Mivel $b^n \pi^{2j} = b^n \left(\frac{a}{b}\right)^j = a^j b^{n-j}$ egész szám $0 \le j \le n$ esetén, és $f$ deriváltjai a $0$ és $1$ helyen egészek, ezért **$G(0)$ és $G(1)$ egész számok.**

**Egy ügyes derivált.** Mivel $f$ foka $2n$, ezért $f^{(2n+2)} \equiv 0$, és $G$ képletében a tagok „teleszkópszerűen” kiesnek:
$$G''(x) + \pi^2 G(x) = b^n \pi^{2n+2} f(x) = \pi^2 a^n f(x).$$
(Valóban: $G''$ a zárójelben minden derivált rendjét kettővel növeli, $\pi^2 G$ pedig minden $\pi$-kitevőt kettővel; az előjelek váltakozása miatt az összegben csak a $b^n \pi^{2n+2} f(x)$ tag marad, és $b^n \pi^{2n+2} = b^n \pi^2 \left(\frac{a}{b}\right)^n = \pi^2 a^n$.) Ebből
$$\frac{d}{dx}\Big(G'(x)\sin \pi x - \pi G(x) \cos \pi x\Big) = \big(G''(x) + \pi^2 G(x)\big)\sin \pi x = \pi^2 a^n f(x) \sin \pi x.$$
(A $G'(x) \cdot \pi\cos \pi x$ és a $-\pi G'(x)\cos \pi x$ tag kiejti egymást.) Integráljuk $0$-tól $1$-ig:
$$\pi^2 \int_0^1 a^n f(x) \sin(\pi x)\, dx = \Big[G'(x)\sin \pi x - \pi G(x)\cos \pi x\Big]_0^1 = \pi\big(G(1) + G(0)\big),$$
hiszen $\sin \pi = \sin 0 = 0$, $\cos \pi = -1$, $\cos 0 = 1$. Tehát
$$\pi \int_0^1 a^n f(x) \sin(\pi x)\, dx = G(0) + G(1)$$
**egész szám.**

**Az ellentmondás.** A $0 < x < 1$ intervallumon $0 < f(x) < \frac{1}{n!}$ és $0 < \sin \pi x \le 1$, ezért
$$0 < \pi \int_0^1 a^n f(x) \sin(\pi x)\, dx < \frac{\pi a^n}{n!}.$$
Mivel $\frac{a^n}{n!} \to 0$, ha $n \to \infty$ (az analízisből ismert), elég nagy $n$-re a jobb oldal kisebb $1$-nél. Ekkor a $G(0) + G(1)$ egész szám szigorúan $0$ és $1$ közé esne — ellentmondás. $\blacksquare$

## 11. Pitagoraszi számhármasok

Az ókorban, Krotón városában (Dél-Itália) Püthagorasz vezetésével híres filozófiai iskola és társaság jött létre. Szigorú életelvekhez kötődött (például vegetarianizmus), szigorú felvételi rendszere volt, és egyszerre volt matematikai iskola és misztériumvallási közösség; férfiakat és nőket egyaránt szívesen láttak.

Pitagorasz tétele szerint ha $a$ és $b$ egy derékszögű háromszög befogói, $c$ pedig az átfogója, akkor $a^2 + b^2 = c^2$. A tétel után kapták nevüket a **pitagoraszi számhármasok**: olyan $a, b, c$ *pozitív egészek*, amelyekre
$$a^2 + b^2 = c^2.$$
Ilyenkor ugyanis az $a, b, c$ számokhoz tartozik egy egész oldalú derékszögű háromszög. A legismertebb a $(3, 4, 5)$. A legrégebbi emlékünk pitagoraszi számhármasokról a már említett, i. e. 1800 körül keletkezett Plimpton 322 babiloni tábla. A pitagoraszi számhármasok egyben az első és egyik legrégebbi példa **nem lineáris** diofantikus egyenletre.

### Visszavezetés primitív hármasokra

Minden pitagoraszi számhármas visszavezethető egy olyanra, amelyben a három szám legnagyobb közös osztója $1$. Legyen ugyanis
$$a^2 + b^2 = c^2, \qquad (11.1)$$
és $d = (a, b, c)$; ekkor $a = da_0$, $b = db_0$, $c = dc_0$, ahol $(a_0, b_0, c_0) = 1$. A (11.1) egyenletet $d^2$-tel osztva
$$a_0^2 + b_0^2 = c_0^2.$$
Ez indokolja a következő elnevezést: az $a, b, c$ pozitív egészekből álló hármas **primitív pitagoraszi számhármas**, ha
$$(a, b, c) = 1 \qquad \text{és} \qquad a^2 + b^2 = c^2.$$

**Egy primitív hármas tagjai páronként relatív prímek:** $(a, b) = (a, c) = (b, c) = 1$. Tegyük fel ugyanis, hogy például $(a, b) > 1$; ekkor $a$-nak és $b$-nek van egy közös $p$ prímosztója. Ekkor $a^2 + b^2 = c^2$ miatt $p \mid c^2$, és Eukleidész I. tétele szerint $p \mid c$. Tehát $p \mid (a, b, c) = 1$ — ellentmondás. Ugyanígy ($p \mid a$ és $p \mid c$ esetén $p \mid c^2 - a^2 = b^2$) adódik $(a, c) = (b, c) = 1$.

A $100$-nál nem nagyobb átfogójú primitív pitagoraszi számhármasok száma $16$ (a kisebbik befogót írtuk előre):

| $(3, 4, 5)$ | $(5, 12, 13)$ | $(8, 15, 17)$ | $(7, 24, 25)$ |
|---|---|---|---|
| $(20, 21, 29)$ | $(12, 35, 37)$ | $(9, 40, 41)$ | $(28, 45, 53)$ |
| $(11, 60, 61)$ | $(16, 63, 65)$ | $(33, 56, 65)$ | $(48, 55, 73)$ |
| $(13, 84, 85)$ | $(36, 77, 85)$ | $(39, 80, 89)$ | $(65, 72, 97)$ |

Megfigyelhetjük, hogy mindegyikben az egyik befogó páros, a másik páratlan, az átfogó páratlan, és a páros befogó mindig osztható $4$-gyel. A következő tétel mindezt megmagyarázza, és az összes primitív hármast felsorolja.

### A paraméteres előállítás

> **11.1. Tétel.** Legyen $a, b, c$ primitív pitagoraszi számhármas, azaz $a, b, c \in \mathbb{Z}^+$, $a^2 + b^2 = c^2$ és $(a, b, c) = 1$. Ekkor léteznek olyan $u, v$ pozitív egészek, amelyekre $u > v$, $(u, v) = 1$, $u \not\equiv v \pmod 2$, és
> $$a = u^2 - v^2, \quad b = 2uv, \quad c = u^2 + v^2,$$
> vagy fordítva: $a = 2uv$, $b = u^2 - v^2$, $c = u^2 + v^2$.

A bizonyításban a következő, a SzAT-ból adódó lemmát használjuk.

> **Lemma.** Ha $x, y$ relatív prím pozitív egészek, és $xy$ négyzetszám, akkor $x$ és $y$ is négyzetszám. Általánosabban: ha két relatív prím pozitív egész szorzata $k$-adik hatvány, akkor mindkettő $k$-adik hatvány.

*Bizonyítás.* Legyen $p$ egy prím, amely $xy$-ban $2\alpha$ kitevővel szerepel (egy négyzetszám kanonikus alakjában minden kitevő páros). Mivel $(x, y) = 1$, $p$ nem oszthatja mindkettőt: vagy $p \nmid x$ és ekkor $p^{2\alpha} \| y$, vagy $p \nmid y$ és $p^{2\alpha} \| x$. Tehát $x$ és $y$ kanonikus alakjában is minden kitevő páros, vagyis mindkettő négyzetszám. Az általános állítás ugyanígy adódik, a „páros” szót „$k$-val osztható”-ra cserélve. $\blacksquare$

(Itt $p^k \| y$ azt jelenti, hogy $p^k \mid y$, de $p^{k+1} \nmid y$.)

*A 11.1. Tétel bizonyítása.* **1. lépés: paritás.** Tudjuk, hogy $(a, b) = 1$, így $a$ és $b$ nem lehet egyszerre páros. Mindkettő páratlan sem lehet: ha $a$ és $b$ páratlan, akkor
$$a^2 \equiv b^2 \equiv 1 \pmod 4, \qquad \text{hiszen} \qquad (2k + 1)^2 = 4k^2 + 4k + 1,$$
így $c^2 = a^2 + b^2 \equiv 2 \pmod 4$. De ekkor $c^2$ páros, tehát $c$ páros, és $c^2$ osztható $4$-gyel — ellentmondás. Tehát $a$ és $b$ közül az egyik páros, a másik páratlan; a szerepeket esetleg felcserélve feltehetjük, hogy **$b$ páros és $a$ páratlan**. Ekkor $c^2 = a^2 + b^2$ páratlan, így $c$ is páratlan.

**2. lépés: szorzattá alakítás.** Átrendezve
$$b^2 = c^2 - a^2 = (c - a)(c + a), \qquad \left(\frac{b}{2}\right)^2 = \frac{c - a}{2} \cdot \frac{c + a}{2},$$
ahol $\frac{b}{2}$, $\frac{c - a}{2}$ és $\frac{c + a}{2}$ pozitív egészek ($c$ és $a$ páratlan, $c > a$).

**3. lépés: a két tényező relatív prím.** Legyen $d = \left(\frac{c - a}{2}, \frac{c + a}{2}\right)$. Ekkor $d$ osztja a két szám összegét és különbségét:
$$d \mid \frac{c - a}{2} + \frac{c + a}{2} = c, \qquad d \mid \frac{c + a}{2} - \frac{c - a}{2} = a,$$
így $d \mid (a, c) = 1$, vagyis $d = 1$.

**4. lépés: mindkét tényező négyzetszám.** A lemma szerint (két relatív prím pozitív egész szorzata négyzetszám) léteznek olyan $u, v$ pozitív egészek, hogy
$$\frac{c + a}{2} = u^2, \qquad \frac{c - a}{2} = v^2,$$
és $v < u$, mert $a > 0$. Mivel $1 = (u^2, v^2)$, ezért $(u, v) = 1$ is.

**5. lépés: visszaszámolás.**
$$a = \frac{c + a}{2} - \frac{c - a}{2} = u^2 - v^2, \qquad c = \frac{c + a}{2} + \frac{c - a}{2} = u^2 + v^2, \qquad \left(\frac{b}{2}\right)^2 = u^2 v^2,$$
azaz $\frac{b}{2} = uv$, $b = 2uv$. Végül, mivel $a = u^2 - v^2$ páratlan, $u$ és $v$ paritása nem lehet azonos. $\blacksquare$

::: kiegeszites
**Kiegészítés: a megfordítás.** Ha $u > v$ pozitív egészek, $(u, v) = 1$ és $u \not\equiv v \pmod 2$, akkor $(u^2 - v^2, 2uv, u^2 + v^2)$ valóban primitív pitagoraszi számhármas. Az egyenlőség azonosság:
$$(u^2 - v^2)^2 + (2uv)^2 = u^4 - 2u^2v^2 + v^4 + 4u^2v^2 = (u^2 + v^2)^2.$$
A primitivitáshoz tegyük fel, hogy a $p$ prím osztja $a = u^2 - v^2$-et és $c = u^2 + v^2$-et. Mivel $u$ és $v$ különböző paritású, $a$ páratlan, így $p \ne 2$. Ekkor $p \mid a + c = 2u^2$ és $p \mid c - a = 2v^2$, tehát $p \mid u$ és $p \mid v$, ellentmondásban $(u, v) = 1$-gyel. Így $(a, c) = 1$, és persze $(a, b, c) = 1$.

Mivel $(u, v) \mapsto (u^2 - v^2, 2uv, u^2 + v^2)$ különböző paraméterpárokra különböző hármasokat ad (hiszen $u^2 = \frac{c + a}{2}$ és $v^2 = \frac{c - a}{2}$ a hármasból visszaolvasható), a primitív pitagoraszi számhármasok (a páros befogó a második helyen) **kölcsönösen egyértelműen** megfelelnek a feltételeknek eleget tevő $(u, v)$ pároknak.
:::

A fenti táblázat $16$ hármasa éppen az $u^2 + v^2 \le 100$ feltételnek eleget tevő paraméterpárokból adódik:

| $u$ | $v$ | $u^2 - v^2$ | $2uv$ | $u^2 + v^2$ |
|---|---|---|---|---|
| $2$ | $1$ | $3$ | $4$ | $5$ |
| $3$ | $2$ | $5$ | $12$ | $13$ |
| $4$ | $1$ | $15$ | $8$ | $17$ |
| $4$ | $3$ | $7$ | $24$ | $25$ |
| $5$ | $2$ | $21$ | $20$ | $29$ |
| $5$ | $4$ | $9$ | $40$ | $41$ |
| $6$ | $1$ | $35$ | $12$ | $37$ |
| $6$ | $5$ | $11$ | $60$ | $61$ |
| $7$ | $2$ | $45$ | $28$ | $53$ |
| $7$ | $4$ | $33$ | $56$ | $65$ |
| $7$ | $6$ | $13$ | $84$ | $85$ |
| $8$ | $1$ | $63$ | $16$ | $65$ |
| $8$ | $3$ | $55$ | $48$ | $73$ |
| $8$ | $5$ | $39$ | $80$ | $89$ |
| $9$ | $2$ | $77$ | $36$ | $85$ |
| $9$ | $4$ | $65$ | $72$ | $97$ |

A tétel azt is megmagyarázza, miért osztható a páros befogó mindig $4$-gyel: $b = 2uv$, és $u, v$ közül az egyik páros.

Mivel minden pitagoraszi számhármas egy primitív hármas többszöröse, általában a következő igaz:

> **11.2. Tétel.** Ha $a, b, c$ pitagoraszi számhármas, akkor léteznek olyan $t, u, v$ pozitív egészek, amelyekre $u > v$, $(u, v) = 1$, $u \not\equiv v \pmod 2$, és
> $$a = (u^2 - v^2)t, \quad b = 2uvt, \quad c = (u^2 + v^2)t,$$
> vagy $a = 2uvt$, $b = (u^2 - v^2)t$, $c = (u^2 + v^2)t$.

## 12. Nagy Fermat-tétel

A matematika minden bizonnyal egyik leghíresebb, ma már megoldott problémája a **Fermat-sejtés**, későbbi nevén a nagy Fermat-tétel. (A fejezet alapja a jegyzetben a kapcsolódó Wikipédia-szócikk rövidített változata.) Pierre de Fermat Diophantosz *Arithmetica* című művét olvasgatta (Claude-Gaspard Bachet 1621-es latin kiadásában), amikor — a pitagoraszi számhármasokról szóló feladat mellé — úgy vélte, megtalálta a következő állítás bizonyítását, és ennek örömére ezt írta a könyv margójára:

> *„Cubum autem in duos cubos, aut quadratoquadratum in duos quadratoquadratos, et generaliter nullam in infinitum ultra quadratum potestatem in duos eiusdem nominis fas est dividere cuius rei demonstrationem mirabilem sane detexi. Hanc marginis exiguitas non caperet.”*

Azaz: *„Lehetetlen egy köbszámot felírni két köbszám összegeként, vagy egy negyedik hatványt két negyedik hatvány összegeként, és általában lehetetlen bármely, a négyzetnél magasabb hatványt felírni két ugyanolyan hatvány összegeként. Erre igazán csodálatos bizonyítást találtam. A margó azonban túl keskeny ahhoz, hogy ideírjam.”*

A margójegyzetet Fermat fia hozta nyilvánosságra 1670-ben, apja halála után. Fermat bizonyítását a mai napig nem találták meg, jegyzetei között sincs nyoma. Számtalan matematikus próbálta rekonstruálni; speciális esetekben sikerült eredményre jutni, de az általános esetre senki sem talált egyszerű bizonyítást. Valószínű, hogy Fermat tévedett, és bizonyításában egy nehéz részt nem gondolt végig elég precízen.

> **12.1. Sejtés (nagy Fermat-tétel).** Az
> $$x^n + y^n = z^n$$
> egyenletnek $n \ge 3$ esetén nincs pozitív egészekből álló megoldása.

**Elég $n = 4$-re és a páratlan prímekre belátni.** Ha $n \ge 3$, akkor $n$ vagy osztható $4$-gyel, vagy van páratlan $p$ prímosztója (ha egyik sem, akkor $n$ csak $1$ vagy $2$ lehet). Ha $n = 4k$ és $x^n + y^n = z^n$, akkor $(x^k)^4 + (y^k)^4 = (z^k)^4$ az $n = 4$ eset megoldása volna; ha $n = pk$, akkor $(x^k)^p + (y^k)^p = (z^k)^p$ az $n = p$ esetté. Tehát ha az állítás $n = 4$-re és minden páratlan prímre igaz, akkor minden $n \ge 3$-ra is.

### 12.1. Az $n = 4$ eset

Fermat egyik nagy felfedezése a **végtelen leszállás módszere**. Ennek segítségével igazolta, hogy az $x^4 + y^4 = z^4$ egyenletnek nincs pozitív egészekből álló megoldása; sőt ennél többet:

> **Tétel (Fermat).** Az $x^4 + y^4 = z^2$ egyenletnek nincs pozitív egészekből álló megoldása.

Ebből az $n = 4$ eset azonnal következik, hiszen $x^4 + y^4 = z^4$ megoldásából $(x, y, z^2)$ az $x^4 + y^4 = z^2$ egyenlet megoldása volna.

**A végtelen leszállás elve.** Megmutatjuk, hogy ha van pozitív egészekből álló megoldás, akkor van olyan is, amelyben $z$ értéke kisebb, de még mindig pozitív egész. Az eljárást folytatva pozitív egészek végtelen, szigorúan csökkenő sorozatát kapnánk, ami lehetetlen. (Ekvivalens megfogalmazás: tekintsük a legkisebb $z$-jű megoldást, és mutassunk nála kisebbet — ellentmondás.)

*Bizonyítás.* Tegyük fel, hogy $x^4 + y^4 = z^2$ pozitív egészekre, és $z$ a lehető legkisebb.

**(a) Relatív prímség.** Ha $(x, y) > 1$, akkor $x$-nek és $y$-nak van közös $p$ prímosztója. Ekkor $p^4 \mid x^4 + y^4 = z^2$, amiből (a SzAT szerint, a kitevőket nézve) $p^2 \mid z$, és
$$\left(\frac{x}{p}\right)^4 + \left(\frac{y}{p}\right)^4 = \left(\frac{z}{p^2}\right)^2$$
egy kisebb $z$-jű megoldás volna. Tehát $(x, y) = 1$. Ebből $(x, z) = (y, z) = 1$ is következik: ha $p \mid x$ és $p \mid z$, akkor $p \mid z^2 - x^4 = y^4$, így $p \mid y$.

**(b) $z$ páratlan.** Ha $z$ páros volna, akkor $(x, z) = (y, z) = 1$ miatt $x$ és $y$ páratlan, és $x^4 + y^4 \equiv 1 + 1 = 2 \pmod 4$, holott $z^2 \equiv 0 \pmod 4$ — ellentmondás. Tehát $z$ páratlan, és ekkor $x$ és $y$ közül pontosan az egyik páros; mondjuk **$x$ páros, $y$ páratlan**.

**(c) Szorzattá alakítás.** Átrendezve
$$x^4 = z^2 - y^4 = (z - y^2)(z + y^2).$$
A jobb oldalon mindkét tényező páros ($z$ és $y$ páratlan), és pozitív ($z > y^2$, mert $z^2 > y^4$). Ha volna $2$-nél nagyobb közös osztójuk — vagyis egy páratlan prím vagy a $4$ —, akkor az osztaná az összegüket, $2z$-t, és a különbségüket, $2y^2$-et is; páratlan $p$ prím esetén $p \mid z$ és $p \mid y$, a $4$ esetén $2 \mid z$ adódna, mindkettő lehetetlen. Így **a két tényező legnagyobb közös osztója $2$**: $z - y^2 = 2A$, $z + y^2 = 2B$, ahol $(A, B) = 1$. Mivel $x$ páros, $x = 2x_1$, és $16x_1^4 = 4AB$, azaz $AB = 4x_1^4$. A relatív prím $A$, $B$ közül az egyik páratlan; a lemma gondolatmenete (a prímkitevőket vizsgálva) szerint a páratlan tényező negyedik hatvány, a páros pedig egy negyedik hatvány $4$-szerese. Ez kétféleképpen valósulhat meg.

**Első eset:** $z - y^2 = 2a^4$, $z + y^2 = 8b^4$ alkalmas $a, b$ pozitív egészekkel, ahol $a$ páratlan. Ekkor kivonva $2y^2 = 8b^4 - 2a^4$, azaz
$$y^2 = 4b^4 - a^4 \equiv -1 \pmod 4,$$
hiszen $a$ páratlan, így $a^4 \equiv 1 \pmod 4$. Ez lehetetlen, mert egy négyzetszám maradéka modulo $4$ csak $0$ vagy $1$ lehet.

**Második eset:** $z - y^2 = 8a^4$, $z + y^2 = 2b^4$ alkalmas $a, b$ pozitív egészekkel, ahol $b$ páratlan. Ekkor $y^2 = b^4 - 4a^4$, azaz
$$4a^4 = b^4 - y^2 = (b^2 - y)(b^2 + y).$$
A két tényező pozitív ($y^2 < b^4$) és páros ($b, y$ páratlan), tehát $2$ közös osztójuk. Ha $2$-nél nagyobb közös osztójuk volna — egy páratlan $p$ prím vagy a $4$ —, akkor az osztaná a különbségüket, $2y$-t, és az összegüket, $2b^2$-et is. A $4$ esetén $y$ páros volna, ami nem igaz; egy páratlan $p$ esetén pedig $p \mid y$ és $p \mid b$, és ekkor $z = 2b^4 - y^2$ miatt $p \mid (y, z)$ — amit kizártunk. Így, mint az előbb, $b^2 - y = 2C$, $b^2 + y = 2D$, $(C, D) = 1$, és $4a^4 = 4CD$, azaz $CD = a^4$. A lemma negyedik hatványokra vonatkozó változata szerint $C = c^4$, $D = d^4$ alkalmas $c, d$ pozitív egészekkel, és
$$c^4 + d^4 = C + D = b^2.$$
Ezzel az eredeti egyenlethez hasonlót kaptunk, a $(c, d, b)$ megoldást. Végül $b < z$: valóban, $y^4 < z^2$ miatt $y^2 < z$, és $z + y^2 = 2b^4$ miatt $2b^4 < 2z$, így $b \le b^4 < z$. Ez ellentmond $z$ minimalitásának. $\blacksquare$

**Egyéb részeredmények.** Az $n = 3$ esetet Euler (1770, egy később kijavított hiánnyal), az $n = 5$ esetet Dirichlet és Legendre (1825), az $n = 7$ esetet Lamé (1839) igazolta. Ernst Kummer 1847-ben az úgynevezett reguláris prímekre bizonyította a sejtést — ehhez éppen a 4. fejezetben látott jelenséget, az egyértelmű faktorizáció hiányát kellett leküzdenie.

### 12.2. A Fermat-tétel bizonyítása

A Fermat-sejtést Andrew Wilesnak sikerült bebizonyítania. A bizonyításon hét évig dolgozott egyedül, teljes titokban. Az első, 1993-as bemutatás után egy elsőre végzetesnek tűnő hibát fedeztek fel, de 1994 őszére Wilesnak — egykori tanítványa, Richard Taylor segítségével — sikerült kijavítania a bizonyítást, amely 1995-ben jelent meg az *Annals of Mathematics* folyóiratban. A teljes bizonyítás (két cikk) mintegy 129 oldal hosszú, és az elliptikus görbék, a moduláris formák és a Galois-reprezentációk mély elméletét használja, tehát messze túlmegy az elemi számelmélet keretein.

### 12.3. Érdekességek

Egy legenda szerint Paul Friedrich Wolfskehl német matematikus életét a Fermat-sejtés mentette meg. Szerelmi csalódás érte, ezért elhatározta, hogy pontban éjfélkor véget vet életének. Hogy addig gyorsabban teljen az idő, a könyvtárában lévő matematikai könyveket és cikkeket olvasgatta, és a kezébe akadt Kummer írása, amely egy hibát mutatott ki Cauchy és Lamé Fermat-sejtésre adott bizonyítási kísérletében. Wolfskehl hajnalig próbálta kijavítani a hibás bizonyítást — és reggelre visszanyerte az életkedvét. Végrendeletében $100\,000$ márka jutalmat ajánlott fel annak, aki bebizonyítja a tételt; a díjat (inflációtól megtépázott összegben) 1997-ben Wiles vehette át.

1994. április 1-jén a matematikusok között körbejárt egy e-mail, amely bejelentette, hogy Noam Elkies, a Harvard Egyetem professzora igen nagy számokból álló ellenpéldát talált a sejtésre. Sok matematikus nem figyelt a dátumra, és továbbküldte kollégáinak a szakszövegnek álcázott tréfát.

## A III. rész összefoglalása

- **Irracionalitás:** $\sqrt{2}$ paritásvizsgálattal; $\sqrt[m]{N}$ (ha $N$ nem $m$-edik hatvány) és $\log_{10} 2$ a SzAT-tal; $e$ a sorfejtés „túl jó” közelítéseivel (Fourier); $\pi^2$ (és így $\pi$) Niven módszerével. Sok nevezetes konstansról (például $e + \pi$) ma sem tudjuk, racionális-e.
- **Pitagoraszi számhármasok:** minden primitív hármas $(u^2 - v^2, 2uv, u^2 + v^2)$ alakú, ahol $u > v > 0$, $(u, v) = 1$, $u \not\equiv v \pmod 2$ (és viszont); a többi ezek többszöröse. A bizonyítás kulcsa: két relatív prím szám szorzata csak úgy lehet négyzetszám, ha mindkettő az.
- **Nagy Fermat-tétel:** $x^n + y^n = z^n$-nek $n \ge 3$-ra nincs pozitív egész megoldása. Elég $n = 4$-re és páratlan prímekre belátni. Az $n = 4$ esetet Fermat végtelen leszállással igazolta (sőt $x^4 + y^4 = z^2$-re is); az általános esetet Wiles (1995).

## Feladatok a III. részhez

1. Bizonyítsuk be, hogy $\sqrt{3}$, $\sqrt{6}$ és $\sqrt{2} + \sqrt{3}$ irracionális.
2. Bizonyítsuk be, hogy $\log_2 3$ irracionális.
3. Határozzuk meg az összes olyan pitagoraszi számhármast, amelyben az egyik befogó $12$.
4. Bizonyítsuk be, hogy minden pitagoraszi számhármasra $60 \mid abc$.
5. Bizonyítsuk be, hogy egy primitív pitagoraszi számhármas átfogója $4k + 1$ alakú.
6. Bizonyítsuk be, hogy az $x^2 + y^2 = 3z^2$ egyenletnek csak az $x = y = z = 0$ egész megoldása van.
7. Bizonyítsuk be, hogy a $0{,}101001000100001\dots$ tizedes tört (az egyesek között rendre $1, 2, 3, \dots$ nulla áll) irracionális.

### Megoldási útmutatók

1. $\sqrt{3}$, $\sqrt{6}$: a 10.2. Tétel ($3$ és $6$ nem négyzetszám). Ha $\sqrt{2} + \sqrt{3} = r$ racionális volna, akkor $r^2 = 5 + 2\sqrt{6}$ miatt $\sqrt{6} = \frac{r^2 - 5}{2}$ is racionális volna.
2. Ha $\log_2 3 = \frac{p}{q}$ ($p, q > 0$), akkor $2^p = 3^q$, ellentmondás a SzAT-tal (vagy egyszerűen: a bal oldal páros, a jobb páratlan).
3. Ha $12 = 2uvt$, akkor $uvt = 6$; ha $12 = (u^2 - v^2)t$, akkor $(u - v)(u + v) \mid 12$ páratlan $u - v$-vel. Az esetek végignézése után: $(5, 12, 13)$, $(9, 12, 15)$, $(12, 16, 20)$, $(12, 35, 37)$.
4. Elég primitív hármasra. A $4$: $b = 2uv$, és $u, v$ egyike páros. A $3$: ha $3 \nmid u$ és $3 \nmid v$, akkor $u^2 \equiv v^2 \equiv 1 \pmod 3$, így $3 \mid u^2 - v^2$. Az $5$: ha $5 \nmid uv$, akkor $u^2, v^2 \in \{1, 4\} \pmod 5$; ha egyenlők, $5 \mid u^2 - v^2$, ha különbözők, $5 \mid u^2 + v^2$.
5. $c = u^2 + v^2$, és $u, v$ közül az egyik páros, a másik páratlan, így $c \equiv 0 + 1 = 1 \pmod 4$.
6. Végtelen leszállás: modulo $3$ a négyzetek maradéka $0$ vagy $1$, így $x^2 + y^2 \equiv 0 \pmod 3$ csak $3 \mid x$, $3 \mid y$ esetén lehet. Ekkor $9 \mid 3z^2$, $3 \mid z$, és $(x/3, y/3, z/3)$ is megoldás. Egy nem nulla megoldásból így végtelen leszállás indulna.
7. Egy racionális szám tizedes tört alakja (véges vagy) végtelen szakaszos. Itt egyre hosszabb nullasorozatok állnak, amelyeket egyes zár le, így nincs periódus: egy $\ell$ hosszú periódus esetén nem lehetne $\ell$-nél hosszabb csupa nulla szakasz, ha a periódusban van egyes, és ha nincs, akkor egy idő után minden jegy nulla volna.

---
