# Analízis 1 – Gyakorló feladatsor: Szélsőérték-számítási feladatok – megoldások

### I. Mat. BSc Analízis 1 · Gyakorló feladatsor megoldásai

## 1. feladat

Egy nyitott tetejű, négyzet alapú hasáb alakú dobozt készítünk, amelynek térfogata $32\text{ dm}^3$. Mekkora legyen az alapéle és a magassága, hogy a felhasznált anyagmennyiség (a felszín) a lehető legkisebb legyen?

**Megoldás.**

Legyen az alapél $a$, a hasáb magassága pedig $m$ ($\text{dm}$-ben), ahol $a, m > 0$. A térfogat alapján:
$$V = a^2 \cdot m = 32 \implies m = \frac{32}{a^2}.$$

A minimalizálandó felszín (mivel a teteje nyitott, csak egy alaplap és négy oldallap van):
$$A(a) = a^2 + 4am = a^2 + 4a \cdot \frac{32}{a^2} = a^2 + \frac{128}{a} \qquad (a > 0).$$

Deriváljuk a felszínfüggvényt:
$$A'(a) = 2a - \frac{128}{a^2}.$$

Tegyük egyenlővé nullával:
$$2a - \frac{128}{a^2} = 0 \implies 2a^3 = 128 \implies a^3 = 64 \implies a = 4.$$

Ellenőrzés második deriválttal:
$$A''(a) = 2 + \frac{256}{a^3} > 0 \qquad \forall a > 0 \implies A''(4) = 2 + \frac{256}{64} = 6 > 0.$$
Mivel $a = 4$ az egyetlen kritikus pont a $(0, +\infty)$ intervallumban és $A''(a) > 0$ (vagy előjelvizsgálattal: $A'(a) < 0$ ha $0 < a < 4$, és $A'(a) > 0$ ha $a > 4$), itt valóban globális minimum van.

A magasság kiszámítása:
$$m = \frac{32}{4^2} = \frac{32}{16} = 2.$$

**Válasz:** A doboz alapéle **$4\text{ dm}$**, a magassága pedig **$2\text{ dm}$** legyen (a minimális felszín $48\text{ dm}^2$).

::: elmelet
**Elméleti háttér — globális szélsőérték nyílt intervallumon.** Ha egy differenciálható függvénynek egy $I$ intervallumon pontosan egy stacionárius pontja van ($f'(x_0) = 0$), és ott $f''(x_0) > 0$ (vagy még erősebben: végig $f'' > 0$ az intervallumon, így a függvény szigorúan konvex), akkor $x_0$-ban szükségképpen **globális** (abszolút) minimum van az egész intervallumon. Ha ugyanis más pontban nem $0$ a derivált, a monotonitás $x_0$ előtt végig csökkenő, utána végig növekvő.
:::

---

## 2. feladat

Egy $0{,}5$ literes ($500\text{ cm}^3$) térfogatú, zárt, forgáshenger alakú konzervdobozt tervezünk. Mekkora legyen az alapkör sugara és a henger magassága, hogy a gyártáshoz a lehető legkevesebb fémlemezre legyen szükség?

**Megoldás.**

Legyen a henger alapkörének sugara $r$, a magassága $m$ ($\text{cm}$-ben), ahol $r, m > 0$. A térfogat alapján:
$$V = r^2\pi m = 500 \implies m = \frac{500}{r^2\pi}.$$

A minimalizálandó felszín (két alaplap és a palást):
$$A(r) = 2r^2\pi + 2r\pi m = 2r^2\pi + 2r\pi \cdot \frac{500}{r^2\pi} = 2r^2\pi + \frac{1000}{r} \qquad (r > 0).$$

Deriváljuk $r$ szerint:
$$A'(r) = 4r\pi - \frac{1000}{r^2}.$$

Tegyük egyenlővé nullával:
$$4r\pi = \frac{1000}{r^2} \implies r^3 = \frac{1000}{4\pi} = \frac{250}{\pi} \implies r = \sqrt[3]{\frac{250}{\pi}} \approx 4{,}30\text{ cm}.$$

Második derivált vizsgálata:
$$A''(r) = 4\pi + \frac{2000}{r^3} > 0 \qquad (\text{minden } r > 0\text{-ra, tehát globális minimum}).$$

A magasság kiszámítása:
$$m = \frac{500}{\pi \left(\frac{250}{\pi}\right)^{2/3}} = 2 \cdot \frac{250}{\pi^{1/3} \cdot 250^{2/3}} = 2\sqrt[3]{\frac{250}{\pi}} = 2r \approx 8{,}60\text{ cm}.$$

**Válasz:** A henger sugara **$r = \sqrt[3]{\frac{250}{\pi}} \approx 4{,}30\text{ cm}$**, magassága pedig **$m = 2\sqrt[3]{\frac{250}{\pi}} \approx 8{,}60\text{ cm}$** (vagyis a henger átmérője egyenlő a magasságával).

::: elmelet
**Elméleti háttér — az optimális zárt henger aránya.** Rögzített térfogat mellett a zárt henger minimális felszínét mindig a „négyzetes” metszetű henger adja ($m = 2r$, a magasság egyenlő az átmérővel), míg egy felül *nyitott* henger esetén (csak egy alaplap van) $m = r$ adódik (hasonlóan az 1. feladathoz, ahol a nyitott négyzet alapú hasábnál $m = a/2$).
:::

---

## 3. feladat

Egy egyenes folyó egyik partján áll egy erőmű ($A$ pont), a folyó túlpartján, folyásirányban $10\text{ km}$-rel lejjebb pedig egy gyár ($B$ pont). A folyó szélessége mindenhol $2\text{ km}$. Elektromos kábelt kell fektetni az erőműtől a gyárig. A víz alatti kábel fektetése $5$ millió Ft/km, a szárazföldi kábel fektetése pedig $3$ millió Ft/km költséggel jár. A folyó partján milyen távolságra az erőművel szemközti ponttól érjen partot a kábel, hogy a teljes kivitelezési költség a legkisebb legyen?

**Megoldás.**

Jelölje $C$ az erőművel ($A$) szemközti pontot a túlparton, $P$ pedig azt a pontot a túlparton, ahol a kábel partot ér. Legyen a $CP$ távolság $x\text{ km}$, ahol $x \in [0, 10]$ (nyilván $x < 0$ vagy $x > 10$ esetén mind a vízi, mind a szárazföldi szakasz hosszabb volna, mint a megfelelő végponton). Ekkor:
- A víz alatti szakasz ($AP$) hossza a Pitagorasz-tétel alapján: $\sqrt{2^2 + x^2} = \sqrt{4 + x^2}\text{ km}$.
- A szárazföldi szakasz ($PB$) hossza: $(10 - x)\text{ km}$.

A teljes költség függvénye (millió Ft-ban):
$$K(x) = 5\sqrt{4 + x^2} + 3(10 - x) = 5(4 + x^2)^{1/2} + 30 - 3x \qquad (x \in [0, 10]).$$

Deriváljuk a költségfüggvényt (összetett függvény deriválási szabályával):
$$K'(x) = 5 \cdot \frac{1}{2}(4 + x^2)^{-1/2} \cdot 2x - 3 = \frac{5x}{\sqrt{4 + x^2}} - 3.$$

Tegyük egyenlővé nullával:
$$\frac{5x}{\sqrt{4 + x^2}} = 3 \implies 5x = 3\sqrt{4 + x^2}.$$

Emeljük négyzetre mindkét oldalt (mivel $x \ge 0$, a művelet ekvivalens):
$$25x^2 = 9(4 + x^2) \implies 25x^2 = 36 + 9x^2 \implies 16x^2 = 36 \implies x^2 = \frac{36}{16} = \frac{9}{4} \implies x = \frac{3}{2} = 1{,}5.$$

Ellenőrizzük a függvényértékeket a végpontokban és a kritikus pontban, hogy biztosan globális minimumot találjunk a zárt $[0, 10]$ intervallumon:
- $K(0) = 5\sqrt{4} + 30 = 40$ millió Ft,
- $K(1{,}5) = 5\sqrt{4 + 2{,}25} + 3(8{,}5) = 5 \cdot 2{,}5 + 25{,}5 = 12{,}5 + 25{,}5 = 38$ millió Ft,
- $K(10) = 5\sqrt{104} + 0 \approx 50{,}99$ millió Ft.

Látható, hogy $x = 1{,}5\text{ km}$-nél van a globális minimum.

**Válasz:** Az erőművel szemközti ponttól **$1{,}5\text{ km}$-re** folyásirányban lefelé kell partot érnie a kábelnek (a minimális költség **$38$ millió Ft**).

::: elmelet
**Elméleti háttér — zárt intervallumos minimum és Snellius–Descartes-törvény.** Zárt $[a, b]$ intervallumon a folytonos $K$ függvény abszolút minimuma a belső stacionárius pontok ($K'(x) = 0$) és a végpontok ($a, b$) összehasonlításával biztosan megtalálható (Weierstrass-tétel + Fermat-elv). Figyeljük meg, hogy $\frac{x}{\sqrt{4 + x^2}} = \sin\vartheta = \frac{3}{5}$, ami a két közeg „költségarányának” (sebességarányának) megfelelő fénytörési törvény!
:::

---

## 4. feladat

Egy $R$ sugarú gömbbe egyenes körkúpot írunk úgy, hogy a kúp csúcsa és az alapkörének kerülete is a gömb felszínére illeszkedik. Mekkora legyen a kúp magassága $R$ függvényében, hogy a kúp térfogata a lehető legnagyobb legyen?

**Megoldás.**

Legyen a kúp magassága $m$, alapkörének sugara $r$. Mivel a kúp a gömbbe van írva, $m \in (0, 2R)$. Ha $m \le R$, a gömb középpontja és a kúp alapköre közötti távolság $R - m$; ha $m > R$, akkor $m - R$. Mindkét esetben a gömb középpontja, az alapkör középpontja és az alapkör egy kerületi pontja derékszögű háromszöget alkot, melynek átfogója $R$, befogói pedig $r$ és $|m - R|$. A Pitagorasz-tétel szerint:
$$r^2 + (m - R)^2 = R^2 \implies r^2 = R^2 - (m^2 - 2mR + R^2) = 2mR - m^2.$$

A kúp térfogata $m$ függvényében:
$$V(m) = \frac{1}{3}r^2\pi m = \frac{\pi}{3}(2mR - m^2)m = \frac{\pi}{3}(2Rm^2 - m^3) \qquad \big(m \in (0, 2R)\big).$$

Deriváljuk $V(m)$-et $m$ szerint ($R$ konstans):
$$V'(m) = \frac{\pi}{3}(4Rm - 3m^2).$$

Keressük a szélsőérték helyét ($V'(m) = 0$):
$$m(4R - 3m) = 0.$$
Mivel $m > 0$, az egyetlen belső kritikus pont:
$$m = \frac{4}{3}R.$$

Második derivált vizsgálata:
$$V''(m) = \frac{\pi}{3}(4R - 6m) \implies V''\left(\frac{4}{3}R\right) = \frac{\pi}{3}(4R - 8R) = -\frac{4\pi R}{3} < 0.$$
Mivel $m = \frac{4}{3}R$ az egyetlen stacionárius pont a $(0, 2R)$ intervallumban és itt lokális maximum van (ráadásul $\lim_{m \to 0+} V(m) = \lim_{m \to 2R-} V(m) = 0$), itt veszi fel a kúp a globális maximumát ($V_{\max} = \frac{32\pi}{81}R^3$).

**Válasz:** A kúp térfogata akkor maximális, ha a magassága **$m = \frac{4}{3}R$**.

::: elmelet
**Elméleti háttér — közös képlet az eltérő geometriai helyzetekre.** Érdemes megfigyelni, hogy $r^2 + (m - R)^2 = R^2$ egyaránt érvényes $m < R$, $m = R$ és $m > R$ esetén is, mert a négyzeten eltűnik a $(m - R)$ előjele. A végpontokban ($m \to 0^+$ és $m \to 2R^-$) a kúp elfajul ($V \to 0$), ezért a pozitív értékű belső stacionárius pont biztosan globális maximumot ad.
:::

---

## 5. feladat

Egy $a$ és $b$ befogójú derékszögű háromszögbe (ahol $a = 6\text{ cm}$, $b = 8\text{ cm}$) téglalapot írunk úgy, hogy a téglalap két oldala a befogókra illeszkedik, egy csúcsa pedig az átfogón van. Mekkora a beírt téglalap maximális területe, és mennyi ekkor az átlójának a hossza?

**Megoldás.**

Helyezzük a háromszöget a koordináta-rendszerbe úgy, hogy a derékszögű csúcs az origóban legyen, az $a = 6$ befogó az $y$-tengelyen, a $b = 8$ befogó pedig az $x$-tengelyen feküdjön. Ekkor az átfogó egyenesének tengelymetszetes egyenlete:
$$\frac{x}{8} + \frac{y}{6} = 1 \implies y = 6 - \frac{3}{4}x.$$

Legyen a beírt téglalap átfogón lévő csúcsának koordinátái $(x; y)$, ahol $x \in (0, 8)$ (a $[0, 8]$ lezárás végpontjain a terület $0$). A téglalap területe:
$$T(x) = x \cdot y = x\left(6 - \frac{3}{4}x\right) = 6x - \frac{3}{4}x^2.$$

Deriválás és zérushely keresés:
$$T'(x) = 6 - \frac{3}{2}x = 0 \implies \frac{3}{2}x = 6 \implies x = 4.$$
Mivel $T''(x) = -\frac{3}{2} < 0$ mindenütt, itt globális maximum van.

A másik oldal hossza:
$$y = 6 - \frac{3}{4} \cdot 4 = 3\text{ cm}.$$

A maximális terület és az átló hossza ($d$):
$$T_{\max} = 4 \cdot 3 = 12\text{ cm}^2, \qquad d = \sqrt{4^2 + 3^2} = \sqrt{25} = 5\text{ cm}.$$

**Válasz:** A téglalap maximális területe **$12\text{ cm}^2$**, az átlója ekkor **$5\text{ cm}$** hosszú (éppen az eredeti $6-8-10$-es átfogó fele).

::: elmelet
**Elméleti háttér — az átfogóra fekvő csúcs általános tulajdonsága.** A $(0, 0)$ csúcshoz illeszkedő derékszögű háromszögbe írt $x \cdot y$ területű téglalap maximális területe mindig az átfogó *felezőpontjánál* adódik ($x = b/2$, $y = a/2$), ekkor a téglalap területe a háromszög területének pontosan a fele ($T_{\max} = \frac{1}{2} \cdot \frac{ab}{2} = \frac{ab}{4}$), átlója pedig a derékszögű csúcsból induló súlyvonal, amely egyenlő az átfogó felével!
:::

---

## 6. feladat

Egy autópályán a forgalom sűrűsége (jármű/km) és az autók átlagsebessége ($v$, km/h) között a következő összefüggés áll fenn: $s(v) = \frac{1200}{v + 0{,}02v^2 + 18}$ (ahol $v > 0$). Mekkora átlagsebességnél a legnagyobb az autópálya áteresztőképessége (azaz az óránként áthaladó járművek száma, $Q(v) = v \cdot s(v)$)?

**Megoldás.**

Az áteresztőképesség függvénye ($v > 0$):
$$Q(v) = v \cdot s(v) = \frac{1200v}{0{,}02v^2 + v + 18}.$$

Deriváljuk $Q(v)$-t a hányados deriválási szabálya szerint:
$$Q'(v) = 1200 \cdot \frac{1 \cdot (0{,}02v^2 + v + 18) - v \cdot (0{,}04v + 1)}{(0{,}02v^2 + v + 18)^2} = 1200 \cdot \frac{18 - 0{,}02v^2}{(0{,}02v^2 + v + 18)^2}.$$

Tegyük egyenlővé a deriváltat nullával (a nevező minden $v > 0$-ra pozitív):
$$18 - 0{,}02v^2 = 0 \implies 0{,}02v^2 = 18 \implies v^2 = \frac{18}{0{,}02} = 900 \implies v = 30 \quad (\text{mivel } v > 0).$$

Előjelvizsgálat:
- Ha $0 < v < 30$, akkor $18 - 0{,}02v^2 > 0 \implies Q'(v) > 0$ ($Q$ szigorúan monoton nő).
- Ha $v > 30$, akkor $18 - 0{,}02v^2 < 0 \implies Q'(v) < 0$ ($Q$ szigorúan monoton csökken).

Tehát $v = 30\text{ km/h}$-nál globális maximum van. A maximális áteresztőképesség:
$$Q(30) = \frac{1200 \cdot 30}{0{,}02 \cdot 900 + 30 + 18} = \frac{36\,000}{18 + 30 + 18} = \frac{36\,000}{66} = \frac{6000}{11} \approx 545{,}45\text{ jármű/óra}.$$

**Válasz:** Az autópálya áteresztőképessége **$v = 30\text{ km/h}$** átlagsebességnél a legnagyobb (ekkor $Q(30) = \frac{6000}{11} \approx 545{,}45\text{ jármű/óra}$).

::: elmelet
**Elméleti háttér — az első derivált előjelváltása és a számtani–mértani közép kapcsolata.** Gyakorlati törtfüggvényeknél a második derivált helyett gyakran sokkal gyorsabb a $Q'$ előjelváltásának ellenőrzése (elég a számlálót vizsgálni, ha a nevező pozitív). Érdekesség, hogy $Q(v) = \frac{1200}{0{,}02v + 1 + \frac{18}{v}}$, így a nevező minimalizálása a számtani–mértani közép egyenlőtlenségével is azonnal adja az optimumot: $0{,}02v = \frac{18}{v} \iff v = 30$.
:::

---

## 7. feladat

Egy $1\text{ m}$ széles és $2\text{ m}$ magas ablakot egy téglalapból és a tetejére illesztett félkörből álló (ún. Norman-ablak) formára alakítunk át úgy, hogy az ablak teljes kerülete pontosan $K = 8$ méter maradjon. Mekkora legyen a félkör sugara, hogy az ablakon bejutó fény mennyisége (azaz az ablak összterülete) maximális legyen?

**Megoldás.**

*(Megjegyzés: Az eredeti ablak méretei csupán kontextusként szolgálnak, az átalakítás során a $K = 8\text{ m}$ kerület a kötött feltétel.)* Legyen a félkör sugara $r$, a téglalap alakú alsó rész magassága pedig $y$ ($r, y > 0$). Ekkor a téglalap szélessége $2r$.

Az ablak kerülete (a téglalap alsó oldala, két függőleges oldala, plusz a félkör ívhossza):
$$K = 2r + 2y + r\pi = 8 \implies 2y = 8 - 2r - r\pi \implies y = 4 - r - \frac{\pi}{2}r.$$

Mivel $y > 0$, az értelmezési tartomány $r \in \left(0, \frac{8}{2 + \pi}\right)$. Az összterület (téglalap + félkör):
$$T(r) = 2ry + \frac{r^2\pi}{2} = r(8 - 2r - r\pi) + \frac{r^2\pi}{2} = 8r - 2r^2 - \frac{\pi}{2}r^2.$$

Deriváljuk a területfüggvényt $r$ szerint:
$$T'(r) = 8 - 4r - \pi r = 8 - r(4 + \pi).$$

Keressük a zérushelyet:
$$8 - r(4 + \pi) = 0 \implies r = \frac{8}{4 + \pi} \approx 1{,}12\text{ m}.$$
Ellenőrzés: $r = \frac{8}{4+\pi} < \frac{8}{2+\pi}$, így az érték az értelmezési tartomány belsejébe esik.

Második derivált vizsgálata:
$$T''(r) = -(4 + \pi) < 0 \qquad (\text{minden } r\text{-re, tehát globális maximum}).$$
Ekkor $y = 4 - \left(1 + \frac{\pi}{2}\right)\frac{8}{4 + \pi} = \frac{16 + 4\pi - 8 - 4\pi}{4 + \pi} = \frac{8}{4 + \pi} = r$.

**Válasz:** A félkör sugara **$r = \frac{8}{4 + \pi} \approx 1{,}12\text{ méter}$** legyen (érdekesség, hogy ekkor $y = r$, vagyis a téglalap magassága éppen megegyezik a félkör sugarával).

::: elmelet
**Elméleti háttér — az értelmezési tartomány ellenőrzése kényszerfeltételes feladatokban.** Amikor egy változót ($y$-t) kifejezünk a másikkal ($r$-rel), mindig ellenőrizni kell a $y > 0$ feltételből adódó korlátot ($r < \frac{8}{2 + \pi}$), hogy a megtalált kritikus pont valóban megvalósítható geometriai méreteket eredményez-e.
:::

---

## 8. feladat

Egy megfigyelő egy $h = 3$ méter magas talapzaton álló, $m = 5$ méter magas szobrot néz. A megfigyelő szeme pontosan a talapzat aljával van egy magasságban. Milyen távol álljon meg a talapzat függőleges tengelyétől, hogy a szobor látószöge ($\alpha$) a lehető legnagyobb legyen?

**Megoldás.**

Legyen a megfigyelő távolsága a talapzat tengelyétől $x > 0$ méter. Jelölje $\beta$ a talapzat tetejéhez tartozó emelkedési szöget, $\gamma$ pedig a szobor tetejéhez tartozó emelkedési szöget. Ekkor a szobor látószöge $\alpha(x) = \gamma(x) - \beta(x)$. A derékszögű háromszögekből:
$$\tan\beta = \frac{h}{x} = \frac{3}{x} \implies \beta(x) = \arctan\left(\frac{3}{x}\right), \qquad \tan\gamma = \frac{h + m}{x} = \frac{8}{x} \implies \gamma(x) = \arctan\left(\frac{8}{x}\right).$$

Tehát a maximalizálandó látószögfüggvény ($x > 0$):
$$\alpha(x) = \arctan\left(\frac{8}{x}\right) - \arctan\left(\frac{3}{x}\right).$$

Deriváljuk $\alpha(x)$-et az $(\arctan u)' = \frac{u'}{1 + u^2}$ szabály segítségével:
$$\alpha'(x) = \frac{-\frac{8}{x^2}}{1 + \left(\frac{8}{x}\right)^2} - \frac{-\frac{3}{x^2}}{1 + \left(\frac{3}{x}\right)^2} = \frac{-8}{x^2 + 64} + \frac{3}{x^2 + 9} = \frac{3(x^2 + 64) - 8(x^2 + 9)}{(x^2 + 64)(x^2 + 9)} = \frac{120 - 5x^2}{(x^2 + 64)(x^2 + 9)}.$$

Tegyük egyenlővé nullával:
$$120 - 5x^2 = 0 \implies x^2 = 24 \implies x = \sqrt{24} = 2\sqrt{6} \approx 4{,}90\text{ m} \qquad (\text{mivel } x > 0).$$

Előjelvizsgálat: mivel a nevező mindenütt pozitív,
- $0 < x < \sqrt{24}$ esetén $120 - 5x^2 > 0 \implies \alpha'(x) > 0$ ($\alpha$ szigorúan nő),
- $x > \sqrt{24}$ esetén $120 - 5x^2 < 0 \implies \alpha'(x) < 0$ ($\alpha$ szigorúan csökken).

Így $x = 2\sqrt{6}$ méternél valóban globális maximum van.

**Válasz:** A megfigyelőnek **$x = 2\sqrt{6} \approx 4{,}90$ méterre** kell megállnia a talapzattól (ez pontosan a $h$ és a $h + m$ mértani közepe: $\sqrt{3 \cdot 8}$).

::: elmelet
**Elméleti háttér — Regiomontanus maximális látószög-problémája.** Az itt tárgyalt feladat az 1471-ből ismert klasszikus **Regiomontanus-féle szögmaximalizálási probléma**. Kiemelten szép geometriai jelentése is van: az optimális $x = \sqrt{h(h+m)}$ távolságnál a megfigyelő szeme, valamint a szobor alja és teteje által meghatározott kör **éppen érinti a szemmagasság vízszintes egyenesét** (a szelőtétel miatt: $x^2 = h(h+m)$).
:::
