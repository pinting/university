# Analízis 1 – 2. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Osztályozás:** 2 db. zh (várható időpontok: 1. ZH. évfolyam vagy csoportzh (a tanteremhelyzet függvényében): november 3-a kedd, 14:00–16:00 (vagy 3-a kedd 16:15–18:00), 2. ZH. csoportzh: december 9-e szerda, 10:15–12:00), $6 \le$ röpzh $\le 10$, a legrosszabb kettő eredményét eldobom, gyakorlati jegy = 40% 1.zh + 40% 2.zh + 20% rzh ± (órai munka).
>
> **Javítási/pótlási lehetőség:** a pótzhn (várható időpont: december 17-e csütörtök, 14:00–16:00).
>
> A gyakorlatokon való részvétel kötelező. Ha valaki a gyakorlatok 1/4-énél (azaz 6 alkalomnál) többről hiányzik, akkor a gyakorlatvezető csak rendkívüli, igazolt esetben, többletfeladatok teljesítésének előírása után adhat gyakorlati jegyet. Ha valaki a gyakorlatoknak több mint a harmadánál (azaz 8 alkalomnál) többről hiányzik, akkor a gyakorlat érvénytelen.

## 11. feladat

A Cantor-tulajdonságban megköveteltük, hogy az egymásba skatulyázott intervallumsorozat korlátos, zárt és nemüres intervallumokból álljon. Ellenőrizzük, hogy a Cantor-tulajdonság állítása nem marad igaz, ha bármelyik feltételt elhagyjuk.

**Megoldás.**

A Cantor-tulajdonság: ha $I_1 \supseteq I_2 \supseteq \dots$ korlátos, zárt, nemüres intervallumok, akkor $\bigcap_{n} I_n \neq \emptyset$. Minden feltételhez mutatunk ellenpéldát, amelyben a többi feltétel teljesül, de a metszet üres.

- **Korlátosság elhagyása:** $I_n = [n, \infty)$. Zártak, nemüresek, egymásba skatulyázottak, de $\bigcap_n I_n = \emptyset$: bármely $x \in \mathbb{R}$-hez az arkhimédészi tulajdonság szerint van $n > x$, és $x \notin I_n$.
- **Zártság elhagyása:** $I_n = (0, \frac{1}{n}]$ (vagy $(0, \frac1n)$). Korlátosak, nemüresek, egymásba skatulyázottak, de $\bigcap_n I_n = \emptyset$: ha $x \le 0$, akkor $x \notin I_1$; ha $x > 0$, akkor van $n$, hogy $\frac1n < x$, és $x \notin I_n$.
- **Nemüresség elhagyása:** ha valamelyik $I_n = \emptyset$ (pl. az „$[1, 0]$" intervallum), akkor a metszet nyilván üres. Ez triviális, de mutatja, hogy a feltétel nem hagyható el.

(Megjegyzés: az *egymásba skatulyázottság* is lényeges: $I_n = [n, n]$ korlátos, zárt, nemüres intervallumok, de metszetük üres.)

::: elmelet
**Elméleti háttér — a Cantor-tulajdonság és a feltételek szükségessége.**

*A tétel.* (Cantor-féle közösrész-tétel) Ha $[a_1, b_1] \supseteq [a_2, b_2] \supseteq \dots$ korlátos, zárt, nemüres intervallumok, akkor $\bigcap_{n} [a_n, b_n] \ne \emptyset$. *Bizonyítás a teljességi axiómából:* az egymásba skatulyázottság miatt $a_1 \le a_2 \le \dots \le b_2 \le b_1$, és minden $a_n \le b_m$ (ha $n \le m$, akkor $a_n \le a_m \le b_m$; ha $n > m$, akkor $a_n \le b_n \le b_m$). Így $A = \{a_n\}$ felülről korlátos, $\xi = \sup A$ létezik, $a_n \le \xi$ minden $n$-re, és mivel minden $b_m$ felső korlátja $A$-nak, $\xi \le b_m$. Tehát $\xi \in [a_n, b_n]$ minden $n$-re. Ha még $b_n - a_n \to 0$ is teljesül, a közös pont egyértelmű.

*A logikai szerkezet.* Egy „ha $F_1$ és $F_2$ és $F_3$, akkor $K$” alakú tétel feltételeinek **függetlenségét** úgy mutatjuk meg, hogy minden $i$-re adunk egy példát, amelyben $F_i$ hamis, a többi feltétel igaz, és $K$ hamis. Ha ilyen példa nincs, a feltétel valójában fölösleges (a többiből következik).

*Mi „szökik meg” az ellenpéldákban?*

- $[n, \infty)$: a közös pont a végtelenbe menekülne — ez a **korlátosság** szerepe. (Itt az arkhimédészi tulajdonság mutatja, hogy egyetlen valós szám sincs mindegyikben.)
- $(0, \frac1n]$: a közös pont a $0$ lenne, de az egyik végpontot kihagytuk — ez a **zártság** szerepe. A $[0, \frac1n]$ intervallumok metszete már $\{0\}$.
- A **nemüresség** a tétel értelmességéhez kell; a skatulyázottság nélkül pedig nincs miért közös pont legyen.

*Kapcsolat a teljességgel.* A $\mathbb{Q}$-ban a Cantor-tulajdonság nem teljesül: a $\sqrt 2$ tizedes közelítéseiből képzett $[1, 2] \supseteq [1{,}4;\ 1{,}5] \supseteq [1{,}41;\ 1{,}42] \supseteq \dots$ racionális végpontú intervallumoknak nincs közös *racionális* pontja. Az arkhimédészi tulajdonsággal együtt a Cantor-tulajdonság a teljességi axiómával ekvivalens (19. feladat).
:::

## 12. feladat

Bizonyítsuk be, hogy $\lg 6$ irracionális!

**Megoldás.**

$\lg 6 = \log_{10} 6 > 0$, mert $6 > 1$. Tegyük fel, hogy $\lg 6 = \frac{p}{q}$, ahol $p, q$ pozitív egészek. Ekkor $10^{p/q} = 6$, azaz
$$10^p = 6^q \iff 2^p \cdot 5^p = 2^q \cdot 3^q.$$
Mivel $q \ge 1$, a jobb oldal osztható 3-mal, a bal oldal viszont nem (a prímtényezős felbontás egyértelmű, és abban csak a 2 és az 5 szerepel). Ellentmondás, tehát $\lg 6$ irracionális. $\blacksquare$

::: elmelet
**Elméleti háttér — logaritmus, irracionalitás és a számelmélet alaptétele.**

*A logaritmus.* $\log_a b = c \iff a^c = b$ ($a > 0$, $a \ne 1$, $b > 0$); $\lg = \log_{10}$. A $\lg 6 = \frac pq$ feltevést ezért egy **hatványegyenletre** fordítjuk le: $10^{p/q} = 6 \iff 10^p = 6^q$ (mindkét oldalt $q$-adik hatványra emelve, ami pozitív számokra ekvivalens átalakítás).

*A számelmélet alaptétele.* Minden $n \ge 2$ egész felírható prímek szorzataként, és ez a felírás a tényezők sorrendjétől eltekintve **egyértelmű**. Következmény: ha két pozitív egész egyenlő, prímtényezős felbontásukban minden prím ugyanazzal a kitevővel szerepel. A feladatban a $3$ kitevője a bal oldalon $0$, a jobbon $q \ge 1$ — ellentmondás. (Ugyanígy a $2$ és az $5$ kitevőjéből is: $p = q$ és $p = 0$.)

*Általánosítás.* $\log_a b$ racionális pontosan akkor, ha $a$ és $b$ ugyanannak a számnak racionális kitevős hatványai. Például $\log_2 8 = 3$, $\log_4 8 = \frac32$, de $\log_2 3$, $\lg 2$, $\lg 6$ irracionális. Sőt (Gelfond–Schneider-tétel) ezek a számok **transzcendensek** is — ennek bizonyítása azonban messze túlmegy az alapkurzuson.

*Miért fontos a $p, q > 0$ előjel?* $\lg 6 > 0$, ezért feltehető $p, q \ge 1$; így a hatványozás egész kitevőkkel történik, és az egyenlőség két pozitív *egész* szám egyenlősége. Negatív kitevővel törtek jelennének meg, és az érvelést először át kellene rendezni.
:::

## 13. feladat

30 gyerek egy $5 \times 6$-os téglalap alakú rács pontjaiban áll. Minden sorból kiválasztjuk a legmagasabbat, majd ezek közül a legalacsonyabbat. Legyen ez a gyerek $A$. Ezután minden oszlopból kiválasztjuk a legalacsonyabbat, majd ezek közül a legmagasabbat. Legyen ez a gyerek $B$. Hogyan viszonyul egymáshoz $A$ és $B$ magassága?

**Megoldás.**

**$B$ nem magasabb $A$-nál**, azaz $m(B) \le m(A)$ (ahol $m$ a magasság).

Legyen $A$ az $i$-edik sorban, $B$ a $j$-edik oszlopban, és legyen $C$ az $i$-edik sor és a $j$-edik oszlop metszéspontjában álló gyerek. Mivel $A$ a saját sorának legmagasabbja, $m(C) \le m(A)$. Mivel $B$ a saját oszlopának legalacsonyabbja, $m(B) \le m(C)$. Így
$$m(B) \le m(C) \le m(A).$$

Mindkét eset előfordulhat. Ha minden gyerek egyforma magas, egyenlőség áll. Szigorú egyenlőtlenségre példa: az $(i, j)$ pozícióban álló gyerek legyen 2 egység magas, ha $i + j$ páratlan, és 1 egység, ha $i + j$ páros (sakktábla-mintázat). Ekkor minden sorban a legmagasabb 2 egység, tehát $m(A) = 2$; minden oszlopban a legalacsonyabb 1 egység, tehát $m(B) = 1 < 2$. (Különböző magasságokkal is elérhető: kissé „zavarjuk meg" a magasságokat.) Ha minden magasság különböző, akkor vagy $A = B$, vagy $B$ alacsonyabb.

::: elmelet
**Elméleti háttér — a minimax-egyenlőtlenség (sup inf $\le$ inf sup).**

*Állítás.* Bármely $m_{ij}$ ($i \in I$, $j \in J$) értékekre
$$\max_{j}\min_{i} m_{ij} \;\le\; \min_{i}\max_{j} m_{ij},$$
végtelen indexhalmazokra pedig $\sup_j \inf_i m_{ij} \le \inf_i \sup_j m_{ij}$.

*Bizonyítás.* Rögzített $i_0, j_0$ mellett
$$\min_i m_{ij_0} \le m_{i_0j_0} \le \max_j m_{i_0j}.$$
A bal oldal csak $j_0$-tól, a jobb csak $i_0$-tól függ; a bal oldal tehát kisebb-egyenlő a jobb oldal *minimumánál* $i_0$-ban, majd ennek a bal oldal *maximuma* $j_0$-ban is. A feladat megoldása pontosan ezt csinálja a $C = m_{i_0j_0}$ közvetítő elemmel.

*Mikor egyenlőség?* Ha van **nyeregpont**: egy elem, amely a sorában maximális és az oszlopában minimális. Ekkor ez az elem egyszerre $A$ és $B$ (ha a magasságok különbözők). Ha nincs nyeregpont, szigorú egyenlőtlenség áll (mint a sakktábla-mintánál).

*Hol találkozunk vele újra?*

- **Játékelmélet:** két játékos, az egyik sort, a másik oszlopot választ; a $\max\min$ az a nyereség, amelyet az oszlopválasztó mindenképp biztosíthat, a $\min\max$ amennyit a sorválasztó legfeljebb enged. Neumann János minimax-tétele szerint kevert stratégiákkal egyenlőség áll.
- **Analízis:** a $\liminf$ és a $\limsup$ definíciója ($\sup_N\inf_{n \ge N}$, illetve $\inf_N\sup_{n\ge N}$) ugyanilyen szerkezetű, és $\liminf a_n \le \limsup a_n$ hasonló „közvetítő elemes” érveléssel látható be.
:::

## 14. feladat

Ha létezik, akkor $\sup H$ egyértelmű.

**Megoldás.**

A szuprémum a legkisebb felső korlát. Tegyük fel, hogy $s$ és $s'$ is szuprémuma $H$-nak. A trichotómia szerint $s < s'$, $s = s'$ vagy $s > s'$.

Ha $s < s'$ volna, akkor $s$ olyan felső korlát lenne, amely kisebb $s'$-nél, ellentmondva annak, hogy $s'$ a *legkisebb* felső korlát. Ugyanígy $s > s'$ sem lehet. Tehát $s = s'$. $\blacksquare$

::: elmelet
**Elméleti háttér — egyértelműségi bizonyítások.**

*Séma.* Egy „legfeljebb egy ilyen objektum van” állítást úgy bizonyítunk, hogy két ilyen objektumot ($s$ és $s'$) veszünk, és megmutatjuk, hogy egyenlők. Rendezett halmazokban ehhez az **antiszimmetria** kell: $s \le s'$ és $s' \le s$ együtt $s = s'$-t ad.

*A szuprémum esetében.* $s$ és $s'$ is felső korlát, és mindkettő a legkisebb: $s$ legkisebb, $s'$ felső korlát, tehát $s \le s'$; szerepcserével $s' \le s$. A megoldás trichotómiás érvelése ugyanez indirekt formában.

*A „legkisebb felső korlát” mint legkisebb elem.* Jelölje $F(H)$ a $H$ felső korlátainak halmazát. Ez **felfelé zárt** (egy felső korlátnál nagyobb szám is felső korlát), és $\sup H = \min F(H)$. Ezért a szuprémum egyértelműsége a minimum egyértelműségének speciális esete. A teljességi axióma pontosan azt mondja ki, hogy $F(H)$-nak — ha nem üres — van minimuma (és nem csak infimuma).

*Hol fontos?* A $\sup H$, $\lim a_n$, $\lim_{x\to a} f(x)$ jelölések csak azért értelmesek, mert a jelölt objektum egyértelmű. A határérték egyértelműségét (egy sorozatnak legfeljebb egy határértéke van) hasonlóan, a $\frac\varepsilon2$-es környezetek diszjunktságával bizonyítjuk: ha $A \ne B$ volna mindkettő határérték, $\varepsilon = \frac{|A - B|}{2}$-vel a sorozat tagjai egy indextől kezdve egyszerre volnának $A$ és $B$ $\varepsilon$-környezetében, amelyek diszjunktak.
:::

## 15. feladat

Bizonyítsuk be, hogy $x^2 + \frac{1}{x^2} \ge 2$, ha $x \neq 0$.

**Megoldás.**

Ha $x \ne 0$, akkor
$$x^2 + \frac{1}{x^2} - 2 = \left(x - \frac{1}{x}\right)^2 \ge 0,$$
amiből az állítás következik. Egyenlőség pontosan akkor van, ha $x = \frac1x$, azaz $x = \pm 1$. (Ugyanez a számtani–mértani közép egyenlőtlenségből: $\frac{x^2 + 1/x^2}{2} \ge \sqrt{x^2 \cdot \frac{1}{x^2}} = 1$.)

::: elmelet
**Elméleti háttér — teljes négyzetté alakítás és a közepek közötti egyenlőtlenség két tagra.**

*Alapelv.* Minden valós $y$-ra $y^2 \ge 0$, egyenlőséggel pontosan $y = 0$-ra. Egy egyenlőtlenség bizonyításának egyik legtisztább módja, ha a két oldal különbségét **négyzetek összegeként** írjuk fel.

*A két tagra vonatkozó számtani–mértani egyenlőtlenség.* Ha $u, v \ge 0$, akkor
$$\frac{u + v}{2} - \sqrt{uv} = \frac{(\sqrt u - \sqrt v)^2}{2} \ge 0,$$
egyenlőség pontosan $u = v$ esetén. A feladat ennek speciális esete $u = x^2$, $v = \frac{1}{x^2}$-tel (szorzatuk $1$).

*Következmények.*

- Pozitív $t$-re $t + \frac1t \ge 2$ (egyenlőség: $t = 1$); negatív $t$-re $t + \frac1t \le -2$.
- Rögzített szorzatú két pozitív szám összege akkor minimális, ha egyenlők; rögzített összegűek szorzata akkor maximális (téglalapok közül adott kerületnél a négyzet területe a legnagyobb).
- **Közepek láncolata** két pozitív számra: harmonikus $\le$ mértani $\le$ számtani $\le$ négyzetes közép:
$$\frac{2}{\frac1u + \frac1v} \le \sqrt{uv} \le \frac{u + v}{2} \le \sqrt{\frac{u^2 + v^2}{2}},$$
mindegyik egyenlőség pontosan $u = v$-re.

*Tipikus hiba.* Az $x^2 + \frac{1}{x^2} \ge 2$ bizonyításakor nem szabad „$x = 1$-et behelyettesíteni” — az csak az egyenlőség esetét mutatja. Egy általános állításhoz minden $x \ne 0$-ra érvényes érvelés kell.
:::

## 16. feladat

Bizonyítsuk be, hogy a) $n! \le n^n$, b) $n! \le \left(\frac{n+1}{2}\right)^n$.

**Megoldás.**

a) $n! = 1 \cdot 2 \cdots n$, és minden tényező legfeljebb $n$, így $n! \le n \cdot n \cdots n = n^n$.

b) A számtani–mértani közép egyenlőtlenség az $1, 2, \dots, n$ számokra:
$$\sqrt[n]{1 \cdot 2 \cdots n} \le \frac{1 + 2 + \dots + n}{n} = \frac{n(n+1)/2}{n} = \frac{n+1}{2}.$$
Mindkét oldalt $n$-edik hatványra emelve: $n! \le \left(\frac{n+1}{2}\right)^n$. $\blacksquare$

(Másik bizonyítás: párosítsuk a $k$ és $n + 1 - k$ tényezőket; $k(n+1-k) \le \left(\frac{n+1}{2}\right)^2$, és $(n!)^2 = \prod_{k=1}^n k(n+1-k)$.)

::: elmelet
**Elméleti háttér — a számtani–mértani közép egyenlőtlenség ($n$ tagra) és a faktoriális becslése.**

*Tétel.* Ha $a_1, \dots, a_n \ge 0$, akkor
$$\sqrt[n]{a_1a_2\cdots a_n} \le \frac{a_1 + a_2 + \dots + a_n}{n},$$
egyenlőséggel pontosan akkor, ha $a_1 = \dots = a_n$.

*Egy bizonyítás (teljes indukció, „cserés” lépéssel).* $n = 1$-re nyilvánvaló. Legyen $A$ a számtani közép; ha mind egyenlő, kész. Különben van $a_i < A$ és $a_j > A$. Cseréljük $a_i$-t $A$-ra és $a_j$-t $a_i + a_j - A$-ra: az összeg (és így $A$) nem változik, a szorzat viszont nő, mert
$$A(a_i + a_j - A) - a_ia_j = (A - a_i)(a_j - A) > 0.$$
Minden csere eggyel növeli az $A$-val egyenlő tagok számát, így legfeljebb $n - 1$ csere után minden tag $A$, a szorzat $A^n$. Mivel a szorzat végig nőtt, az eredeti szorzat legfeljebb $A^n$.

*Alkalmazás szorzatokra.* Szorzat felső becsléséhez a tényezők összegét kell ismerni: $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, így $n! \le \left(\frac{n+1}{2}\right)^n$. Az a) rész durvább ($n! \le n^n$), de egyszerűbb: minden tényezőt a legnagyobbal becsültünk.

*Mennyire jók ezek a becslések?* A **Stirling-formula** szerint $n! \approx \sqrt{2\pi n}\left(\frac{n}{e}\right)^n$. Ehhez képest $n^n$ kb. $e^n$-szer, $\left(\frac{n+1}{2}\right)^n$ kb. $\left(\frac e2\right)^n$-szer nagyobb — mindkettő exponenciálisan túlbecsül, de a b) sokkal jobb. Alsó becslésként $n! \ge \left(\frac n2\right)^{n/2}$ (21. feladat) és $n! \ge \left(\frac ne\right)^n$ (az $e^n = \sum \frac{n^k}{k!} \ge \frac{n^n}{n!}$ egyenlőtlenségből) is jól használható.
:::

## 17. feladat

Mutassuk meg, hogy ha $A, B \subset \mathbb{R}$, $A \neq \emptyset$, $B \neq \emptyset$, akkor $\sup (A + B) = \sup A + \sup B$.

**Megoldás.**

Itt $A + B = \{a + b : a \in A,\ b \in B\}$.

*Ha $A$ és $B$ felülről korlátos*, legyen $s = \sup A$, $t = \sup B$.

- $s + t$ felső korlát: minden $a \in A$, $b \in B$ esetén $a + b \le s + t$.
- Legkisebb: legyen $\varepsilon > 0$. A szuprémum definíciója miatt van $a \in A$, amelyre $a > s - \frac{\varepsilon}{2}$, és van $b \in B$, amelyre $b > t - \frac{\varepsilon}{2}$. Ekkor $a + b > s + t - \varepsilon$, tehát $s + t - \varepsilon$ nem felső korlát.

Így $\sup(A + B) = s + t$.

*Ha pl. $A$ felülről nem korlátos*, akkor $A + B$ sem: rögzített $b \in B$ és tetszőleges $K$ esetén van $a \in A$, $a > K - b$, és $a + b > K$. Ekkor mindkét oldal $+\infty$ (a bővített számegyenesen), tehát az egyenlőség ebben az értelemben is fennáll. $\blacksquare$

::: elmelet
**Elméleti háttér — szuprémum és a halmazműveletek; a „$\frac\varepsilon2$-trükk”.**

*A szuprémum $\varepsilon$-os jellemzése.* $s = \sup H$ pontosan akkor, ha (1) $s$ felső korlátja $H$-nak, és (2) minden $\varepsilon > 0$-hoz van $h \in H$, $h > s - \varepsilon$. Az (1) feltétel azt mondja, hogy $s$ „nem túl kicsi”, a (2), hogy „nem túl nagy”.

*Összeghalmaz.* $A + B = \{a + b : a \in A, b \in B\}$ (Minkowski-összeg). A bizonyítás két lépése:

1. $a + b \le \sup A + \sup B$ — a felső korlátok összeadódnak;
2. adott $\varepsilon$-hoz mindkét halmazból $\frac\varepsilon2$-nél jobb közelítést választunk, az összeg hibája $< \frac\varepsilon2 + \frac\varepsilon2 = \varepsilon$.

A „$\frac\varepsilon2$-trükk” lényege, hogy a megengedett hibát előre szétosztjuk a részek között. Ugyanez a gondolat bizonyítja, hogy konvergens sorozatok összege konvergens és $\lim(a_n + b_n) = \lim a_n + \lim b_n$.

*Kapcsolódó szabályok* (nem üres, korlátos $A$, $B$ esetén):

- $\inf(A + B) = \inf A + \inf B$;
- $\sup(-A) = -\inf A$;
- $\sup(cA) = c \sup A$, ha $c \ge 0$;
- $\sup(A \cdot B) = \sup A \cdot \sup B$ **csak** nemnegatív elemű halmazokra igaz (például $A = B = \{-2, 1\}$ esetén $A \cdot B = \{4, -2, 1\}$, $\sup = 4 \ne 1$).

*A bővített számegyenes.* Ha valamelyik halmaz felülről nem korlátos, $\sup = +\infty$; az $s + (+\infty) = +\infty$ konvenció mellett a tétel ekkor is érvényes. ($\infty - \infty$ viszont nem értelmezett — ezért nem igaz egyszerűen $\sup(A - B) = \sup A - \sup B$; helyesen $\sup(A - B) = \sup A - \inf B$.)
:::

## 18. feladat

a) Bizonyítsuk be, hogy $(1 + x)^r \le 1 + rx$, ha $r \in \mathbb{Q}$, $0 < r < 1$ és $x \ge -1$.

b) Bizonyítsuk be, hogy $(1 + x)^r \ge 1 + rx$, ha $r \in \mathbb{Q}$, $r > 1$ és $x \ge -1$.

**Megoldás.**

a) Legyen $r = \frac{p}{q}$, ahol $0 < p < q$ egészek, és $x \ge -1$, így $1 + x \ge 0$. Alkalmazzuk a számtani–mértani közép egyenlőtlenséget a következő $q$ darab nemnegatív számra: $p$ darab $(1 + x)$ és $q - p$ darab $1$:
$$(1+x)^{p/q} = \sqrt[q]{(1+x)^p \cdot 1^{q-p}} \le \frac{p(1+x) + (q - p)}{q} = 1 + \frac{p}{q}x = 1 + rx.$$

b) Legyen $r > 1$ racionális, $x \ge -1$.

- Ha $1 + rx < 0$, akkor a jobb oldal negatív, a bal oldal $(1+x)^r \ge 0$, kész.
- Ha $1 + rx \ge 0$: legyen $y = rx \ge -1$. Az a) részt az $\frac{1}{r} \in (0, 1)$ racionális kitevővel és $y$-nal alkalmazva:
$$(1 + y)^{1/r} \le 1 + \frac{y}{r} = 1 + x.$$
Mindkét oldal nemnegatív, és a $t \mapsto t^r$ függvény $[0, \infty)$-en monoton nő, így $r$-edik hatványra emelve $1 + y \le (1 + x)^r$, azaz $1 + rx \le (1 + x)^r$. $\blacksquare$

::: elmelet
**Elméleti háttér — a Bernoulli-egyenlőtlenség családja.**

*Egész kitevő.* Ha $x \ge -1$ és $n \in \mathbb{N}$, akkor $(1 + x)^n \ge 1 + nx$. Bizonyítás indukcióval: $(1+x)^{n+1} = (1+x)^n(1+x) \ge (1 + nx)(1 + x) = 1 + (n+1)x + nx^2 \ge 1 + (n+1)x$ — itt kell az $1 + x \ge 0$ feltétel (hogy a szorzásnál az egyenlőtlenség iránya megmaradjon). Egyenlőség pontosan $x = 0$ vagy $n = 1$ esetén.

*Racionális (és valós) kitevő.* Ha $x \ge -1$:
$$(1 + x)^r \le 1 + rx \quad (0 \le r \le 1), \qquad (1+x)^r \ge 1 + rx \quad (r \ge 1 \text{ vagy } r \le 0).$$
A megoldás a $0 < r < 1$ esetet a **súlyozott** számtani–mértani egyenlőtlenségre vezeti vissza ($p$ darab $1 + x$ és $q - p$ darab $1$), az $r > 1$ esetet pedig a $t \mapsto t^r$ szigorú monotonitásával az előzőre. Valós kitevőre folytonossággal (vagy deriválással) terjeszthető ki.

*Geometriai jelentés.* Az $f(x) = (1 + x)^r$ függvény érintője a $0$ pontban az $y = 1 + rx$ egyenes. $r > 1$-re $f$ konvex, így a grafikonja az érintő **felett** van; $0 < r < 1$-re konkáv, így **alatta**. A Bernoulli-egyenlőtlenség tehát a konvexitás egy speciális esete — ezt a 9. feladatlapon a konvex függvények tárgyalásánál látjuk majd általánosan.

*Alkalmazások.* Küszöbindexek keresése ($\sqrt[n]{a} - 1 \le \frac{a - 1}{n}$), az $\left(1 + \frac1n\right)^n$ sorozat monotonitása, és a $q^n \to 0$ ($|q| < 1$) határérték bizonyítása: $\frac{1}{|q|} = 1 + h$-val $\frac{1}{|q|^n} \ge 1 + nh$, tehát $|q|^n \le \frac{1}{1 + nh} \to 0$.
:::

## 19. feladat

Mutassuk meg, hogy az arkhimédészi és a Cantor-tulajdonságokból / axiómákból levezethető a teljességi tulajdonság / axióma.

**Megoldás.**

Tegyük fel, hogy a rendezett testben teljesül az arkhimédészi és a Cantor-tulajdonság. Legyen $H \neq \emptyset$ felülről korlátos; megmutatjuk, hogy van szuprémuma.

**Felezéses eljárás.** Legyen $h \in H$ és $a_0 = h - 1$ (ez *nem* felső korlát), $b_0$ pedig egy felső korlát. Ha $[a_n, b_n]$ már adott, legyen $c = \frac{a_n + b_n}{2}$; ha $c$ felső korlát, akkor $[a_{n+1}, b_{n+1}] = [a_n, c]$, különben $[a_{n+1}, b_{n+1}] = [c, b_n]$. Indukcióval minden $n$-re: $a_n$ nem felső korlát, $b_n$ felső korlát, és $b_n - a_n = \frac{b_0 - a_0}{2^n}$.

Az intervallumok korlátosak, zártak, nemüresek és egymásba skatulyázottak, így a Cantor-tulajdonság miatt van $\xi \in \bigcap_n [a_n, b_n]$.

Az **arkhimédészi tulajdonság** miatt bármely $\delta > 0$-hoz van $n$, amelyre $\frac{b_0 - a_0}{2^n} < \delta$ (hiszen $2^n \ge n$, és van $n > \frac{b_0 - a_0}{\delta}$).

- **$\xi$ felső korlát:** ha volna $h \in H$, $h > \xi$, akkor $\delta = h - \xi$-hez választva $n$-et: $b_n \le \xi + (b_n - a_n) < \xi + \delta = h$, tehát $b_n$ nem volna felső korlát – ellentmondás.
- **$\xi$ a legkisebb felső korlát:** ha $\eta < \xi$ is felső korlát volna, akkor $\delta = \xi - \eta$-hoz választva $n$-et: $a_n \ge \xi - (b_n - a_n) > \xi - \delta = \eta$. Mivel $\eta$ felső korlát, az $a_n > \eta$ is az lenne – ellentmondás.

Tehát $\xi = \sup H$. $\blacksquare$

(Az arkhimédészi tulajdonság nem hagyható el: nem arkhimédészi rendezett testekben a felezett intervallumok hossza nem tart 0-hoz.)

::: elmelet
**Elméleti háttér — a teljesség ekvivalens megfogalmazásai.**

*Mit jelent a teljesség?* A $\mathbb{Q}$ és az $\mathbb{R}$ is rendezett test; a különbség az, hogy $\mathbb{R}$-ben „nincsenek lyukak”. Ezt több, egymással ekvivalens axiómával lehet kifejezni. Rendezett testben ekvivalensek:

1. **szuprémum-axióma:** minden nem üres, felülről korlátos halmaznak van szuprémuma;
2. **arkhimédészi + Cantor-tulajdonság** (a feladat ezt mutatja meg az 1. irányban);
3. **monoton konvergencia:** minden monoton, korlátos sorozat konvergens;
4. **Bolzano–Weierstrass:** minden korlátos sorozatnak van konvergens részsorozata;
5. **arkhimédészi tulajdonság + Cauchy-kritérium:** minden Cauchy-sorozat konvergens;
6. **Dedekind-tulajdonság:** ha $\mathbb R = A \cup B$, $A, B \ne \emptyset$, és $A$ minden eleme kisebb $B$ minden eleménél, akkor van egy „vágópont”, amely $A$ legnagyobb vagy $B$ legkisebb eleme.

*Az intervallumfelezés módszere.* A bizonyításban két **invariánst** tartunk fenn: a bal végpont soha nem felső korlát, a jobb végpont mindig az. A Cantor-tulajdonság ad egy közös $\xi$ pontot, az arkhimédészi tulajdonság pedig azt, hogy az intervallumok hossza ($\frac{b_0 - a_0}{2^n}$) tetszőlegesen kicsivé válik. Ebből két indirekt érvelés mutatja, hogy $\xi$ felső korlát, és nincs nála kisebb. Ugyanez a módszer bizonyítja a Bolzano–Weierstrass-tételt (mindig azt a felet választjuk, amelyben a sorozatnak végtelen sok tagja van) és a Bolzano-féle közbülsőérték-tételt (mindig azt a felet, amelynek végpontjaiban a függvény előjele különböző).

*Miért kell az arkhimédészi tulajdonság?* Léteznek nem arkhimédészi rendezett testek (például a racionális törtfüggvények teste alkalmas rendezéssel), amelyekben „végtelen kicsi” elemek vannak: pozitívak, de minden $\frac1n$-nél kisebbek. Ott az $\frac{1}{2^n}$ hosszúságok nem tartanak $0$-hoz, és a felezéses érvelés összeomlik.
:::

## 20. feladat

Adott felszínű téglatestek közül melyiknek a legnagyobb a térfogata?

**Megoldás.**

Legyenek az élek $a, b, c > 0$, a felszín $F = 2(ab + bc + ca)$ rögzített, a térfogat $V = abc$. A számtani–mértani közép egyenlőtlenség az $ab$, $bc$, $ca$ számokra:
$$V^{2/3} = \sqrt[3]{ab \cdot bc \cdot ca} \le \frac{ab + bc + ca}{3} = \frac{F}{6}.$$
Tehát $V \le \left(\frac{F}{6}\right)^{3/2}$, és egyenlőség pontosan akkor áll, ha $ab = bc = ca$, azaz $a = b = c$. **Adott felszínű téglatestek közül a kocka térfogata a legnagyobb** (élhossza $\sqrt{F/6}$).

::: elmelet
**Elméleti háttér — feltételes szélsőérték a közepek egyenlőtlenségével.**

*A módszer.* Ha egy $f$ mennyiséget kell maximalizálni egy $g = \text{állandó}$ feltétel mellett, keressünk olyan $u_1, \dots, u_k \ge 0$ mennyiségeket, hogy

- $u_1 + \dots + u_k$ a feltétel szerint állandó, és
- $f$ a $u_1\cdots u_k$ szorzat monoton függvénye.

Ekkor a számtani–mértani egyenlőtlenség $f$-re felső korlátot ad, és ezt a korlátot pontosan akkor éri el, ha $u_1 = \dots = u_k$ — **ha ez a feltétellel összeegyeztethető**, megtaláltuk a maximumot.

*A feladatban.* $u_1 = ab$, $u_2 = bc$, $u_3 = ca$, összegük $\frac F2$, szorzatuk $V^2$. Az egyenlőség $ab = bc = ca$ esetén, vagyis $a = b = c = \sqrt{F/6}$-ra teljesül — ez egy létező téglatest (kocka), tehát a korlát el is érhető, és ez a maximum.

*Fordított kérdések.* Adott térfogatú téglatestek közül a kocka felszíne a legkisebb (ugyanaz az egyenlőtlenség, másik irányból olvasva). Adott élhossz-összegűek közül ($a + b + c$ rögzített) a kocka térfogata a legnagyobb ($u_i = a, b, c$). Az izoperimetrikus jellegű feladatok közös tanulsága: a szimmetrikus helyzet az extremális.

*Ellenőrzendő buktató.* A közepekkel kapott korlát csak akkor maximum, ha az egyenlőség esete *megvalósítható*. Például ha a feladat egész élhosszakat írna elő, és $\sqrt{F/6}$ nem egész, a korlát nem érhető el — ilyenkor más módszer kell. A differenciálszámítás (Lagrange-multiplikátorok) ugyanezt a választ adja, de a közepes módszer elemibb és rögtön a globális maximumot adja.
:::

## 21. feladat

Mutassuk meg, hogy $100^n < n!$, ha $n$ elegendően nagy.

**Megoldás.**

**Explicit küszöb:** $n > 20\,000$ esetén $100^n < n!$.

Az $n!$ szorzatban a $\lceil n/2 \rceil \le k \le n$ tényezők száma legalább $\frac{n}{2}$, és mindegyikük legalább $\frac{n}{2}$; a többi tényező legalább $1$. Így
$$n! \ge \left(\frac{n}{2}\right)^{n/2}.$$
Ha $n > 20\,000$, akkor $\frac{n}{2} > 10\,000 = 100^2$, így
$$n! \ge \left(\frac{n}{2}\right)^{n/2} > \left(100^2\right)^{n/2} = 100^n. \qquad \blacksquare$$

(Megjegyzés: a $c_n = \frac{100^n}{n!}$ sorozatra $\frac{c_{n+1}}{c_n} = \frac{100}{n+1}$, ami $n \ge 199$-re legfeljebb $\frac12$; így $c_n \to 0$, ami szintén mutatja az állítást, csak kevésbé explicit küszöbbel.)

::: elmelet
**Elméleti háttér — növekedési rendek: $a^n \ll n! \ll n^n$.**

*Állítás.* Minden rögzített $a > 0$-ra $\frac{a^n}{n!} \to 0$, és $\frac{n!}{n^n} \to 0$. Vagyis a faktoriális minden exponenciálisnál gyorsabban, de $n^n$-nél lassabban nő.

*Két bizonyítási módszer.*

1. **Közvetlen alsó becslés:** a szorzat felső felében legalább $\frac n2$ darab, egyenként legalább $\frac n2$ nagyságú tényező van, így $n! \ge \left(\frac{n}{2}\right)^{n/2}$, és ez minden $a^n$-t legyőz, mihelyt $\frac n2 > a^2$. Ez **explicit küszöböt** ad.
2. **Hányados-módszer:** a $c_n = \frac{a^n}{n!}$ sorozatra $\frac{c_{n+1}}{c_n} = \frac{a}{n+1}$. Ha $n + 1 \ge 2a$, ez legfeljebb $\frac12$, így egy $N$ indextől $c_{N+k} \le \frac{c_N}{2^k} \to 0$. Ez az ötlet a **hányadoskritérium** magja (sorozatokra és később sorokra).

Hasonlóan $\frac{n!}{n^n} = \frac1n \cdot \frac2n \cdots \frac nn \le \frac1n \to 0$.

*A növekedési skála.* Ha $f(n) \ll g(n)$ azt jelöli, hogy $\frac{f(n)}{g(n)} \to 0$, akkor
$$\log n \ll n^\varepsilon \ll n^k \ll a^n \ll n! \ll n^n \qquad (\varepsilon > 0,\ k \in \mathbb N,\ a > 1).$$
Ezek a nevezetes határértékek a sorozatok fejezetében rendszeresen előkerülnek (pl. $\frac{n^k}{2^n} \to 0$, $\frac{2^n}{n!} \to 0$), és a határozatlan alakú határértékek kiszámításának alapjai.

*Megjegyzés a „elegendően nagy” kifejezésről.* Az „$n$ elegendően nagy” azt jelenti: $\exists N_0\ \forall n > N_0$. Nem kell a legkisebb küszöb — elég egy olyan, amelyre az érvelés működik. Ez a határérték-definíciók kvantorszerkezete.
:::

## 22. feladat

Keressünk olyan $N_0$ számot, hogy $\forall n > N_0$ esetén teljesüljön, hogy

a) $\left(1 + \frac{1}{n}\right)^n \ge 2$, b) $\sqrt[n]{2} < 1{,}01$.

**Megoldás.**

a) A Bernoulli-egyenlőtlenség szerint $\left(1 + \frac1n\right)^n \ge 1 + n \cdot \frac{1}{n} = 2$ **minden** $n \ge 1$-re, tehát bármely $N_0$ (pl. $N_0 = 0$) megfelel.

b) $\sqrt[n]{2} < 1{,}01 \iff 2 < 1{,}01^n$. A Bernoulli-egyenlőtlenség szerint $1{,}01^n \ge 1 + \frac{n}{100}$, ami $n > 100$ esetén $2$-nél nagyobb. Tehát **$N_0 = 100$ megfelel.**

(A legjobb küszöb: $1{,}01^n > 2 \iff n > \frac{\ln 2}{\ln 1{,}01} \approx 69{,}66$, tehát $n \ge 70$-re teljesül, $N_0 = 69$. A feladat azonban csak *egy* megfelelő $N_0$-t kér.)

::: elmelet
**Elméleti háttér — küszöbindexek és nevezetes határértékek.**

*Küszöbindex.* Egy „$\forall n > N_0$” típusú állításban $N_0$ megtalálásához nem kell az egyenlőtlenséget megoldani: elég egy olyan **egyszerűbb, gyengébb** becslés, amelyből az állítás következik, és amelyből $N_0$ leolvasható. A Bernoulli-egyenlőtlenség erre ideális: lineáris alsó korlátot ad egy hatványra.

*Két nevezetes határérték, amelyhez a feladat kapcsolódik.*

- **$\sqrt[n]{a} \to 1$** ($a > 0$). Ha $a \ge 1$, legyen $\sqrt[n]{a} = 1 + h_n$, $h_n \ge 0$. A Bernoulli-egyenlőtlenség szerint $a = (1 + h_n)^n \ge 1 + nh_n$, tehát $0 \le h_n \le \frac{a - 1}{n} \to 0$. Ebből explicit küszöb is jön: $\sqrt[n]{a} < 1 + \varepsilon$, ha $n > \frac{a - 1}{\varepsilon}$ (a feladatban $a = 2$, $\varepsilon = 0{,}01$: $n > 100$). Ha $0 < a < 1$, a reciprokra alkalmazzuk.
- **$\left(1 + \frac1n\right)^n \to e \approx 2{,}718$.** A sorozat szigorúan monoton nő (például a számtani–mértani egyenlőtlenséggel, az $1$ és $n$ darab $1 + \frac1n$ számra), korlátos ($< 3$), ezért konvergens; a határértéke az $e$ szám. Az a) rész ($\ge 2$) ennek a legelső, nagyon durva alsó becslése.

*A legjobb küszöb és a logaritmus.* A pontos küszöb $1{,}01^n > 2 \iff n > \log_{1{,}01} 2 = \frac{\ln 2}{\ln 1{,}01}$. Mivel $\ln(1 + x) \approx x$ kis $x$-re, ez körülbelül $\frac{0{,}693}{0{,}01} \approx 69{,}3$ — innen a pénzügyekben ismert „$70$-es szabály”: $p\%$-os növekedéssel kb. $\frac{70}{p}$ periódus alatt duplázódik egy mennyiség. A Bernoulli-becslés ($n > 100$) ennél gyengébb, mert az $(1 + x)^n$ hatványt csak az első két taggal becsüli.
:::

## Röpzhra

Cantor-féle tulajdonság/axióma, számtani/mértani/harmonikus közepek definíciója és a köztük fennálló egyenlőtlenségek, Bernoulli-egyenlőtlenség.
