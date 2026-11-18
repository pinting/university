# IV. RÉSZ: KONGRUENCIARENDSZEREK ÉS POLINOMKONGRUENCIÁK

Eddig egyetlen, lineáris kongruenciával foglalkoztunk. A negyedik részben előbb több kongruencia *egyidejű* megoldásáról lesz szó (kínai maradéktétel), majd magasabb fokú, polinomos kongruenciákról. Kiderül, hogy összetett modulus esetén a feladat prímhatvány modulusokra, onnan pedig prím modulusra vezethető vissza — és prím modulusra a polinomok úgy viselkednek, mint a valós számok felett: egy $n$-edfokú polinomnak legfeljebb $n$ gyöke van (Lagrange). Ebből két meglepő tétel, Wilson és Wolstenholme tétele is következik.

## 13. Kínai maradéktétel

A számelmélet egyik legrégebbi tétele a **kínai maradéktétel**. Első ismert megfogalmazása a *Szun Cu* (Sunzi) nevéhez kötött kínai matematikai kézikönyvben, a *Sunzi Suanjing*-ben található, amely a Kr. u. 3–5. századból származik. A tétel több kongruenciából álló, úgynevezett **szimultán kongruenciarendszerek** megoldhatóságára ad választ, sőt van olyan változata is, amelynek bizonyítása meg is konstruálja a megoldást — mi is ilyet mutatunk. A kézikönyv híres feladata így szól:

> *„Van valahány dolgunk, de nem tudjuk, mennyi. Ha hármasával számoljuk őket, kettő marad; ha ötösével, három marad; ha hetesével, kettő marad. Hány dolog van?”*

Kongruenciákkal: olyan $x$-et keresünk, amelyre
$$x \equiv 2 \pmod 3, \qquad x \equiv 3 \pmod 5, \qquad x \equiv 2 \pmod 7.$$
A válasz (mint látni fogjuk): $x = 23$, és általában $x \equiv 23 \pmod{105}$.

> **13.1. Tétel (kínai maradéktétel).** Legyenek $m_1, m_2, \dots, m_k > 0$ páronként relatív prímek, $c_1, c_2, \dots, c_k$ pedig tetszőleges egészek. Ekkor az
> $$x \equiv c_1 \pmod{m_1}, \quad x \equiv c_2 \pmod{m_2}, \quad \dots, \quad x \equiv c_k \pmod{m_k}$$
> kongruenciarendszer megoldható, és a megoldások egyetlen maradékosztályt alkotnak modulo $M = m_1 m_2 \cdots m_k$.

A bizonyításhoz egy egyszerű észrevételre lesz szükségünk.

> **Lemma.** Ha $m_1, \dots, m_k$ páronként relatív prímek, és mindegyik osztja $N$-et, akkor a szorzatuk is osztja $N$-et.

*Bizonyítás.* $k$ szerinti indukció: ha $m_1 \cdots m_{k-1} \mid N$, azaz $N = m_1 \cdots m_{k-1} \cdot s$, akkor $m_k \mid m_1 \cdots m_{k-1} s$, és mivel $(m_k, m_1 \cdots m_{k-1}) = 1$ (egy közös prímosztó valamelyik $m_i$-t is osztaná), ezért $m_k \mid s$. Így $m_1 \cdots m_k \mid N$. $\blacksquare$

*A 13.1. Tétel bizonyítása.* **Egyértelműség modulo $M$.** Tegyük fel, hogy $x_1$ és $x_2$ is megoldás. Ekkor minden $i$-re $x_1 \equiv c_i \equiv x_2 \pmod{m_i}$, azaz
$$m_i \mid x_1 - x_2 \qquad (i = 1, \dots, k). \qquad (13.1)$$
A lemma szerint $M = m_1 m_2 \cdots m_k \mid x_1 - x_2$, vagyis $x_1 \equiv x_2 \pmod M$. Fordítva, ha $x_1$ megoldás és $x_2 \equiv x_1 \pmod M$, akkor $x_2$ is megoldás (hiszen $m_i \mid M$). Tehát a megoldások — ha vannak — pontosan egy maradékosztályt alkotnak modulo $M$.

**Létezés.** Legyen
$$M_i = \frac{M}{m_i} = m_1 \cdots m_{i-1} m_{i+1} \cdots m_k,$$
és a megoldást
$$x = a_1 M_1 + a_2 M_2 + \dots + a_k M_k$$
alakban keressük, alkalmas $a_1, \dots, a_k$ egészekkel. Mivel $M_i$ tartalmazza az $m_j$ tényezőt, ha $j \ne i$:
$$M_i \equiv 0 \pmod{m_j} \qquad (j \ne i). \qquad (13.2)$$
Ezért modulo $m_j$ az összegből csak a $j$-edik tag marad, és az $x \equiv c_j \pmod{m_j}$ feltétel ekvivalens azzal, hogy
$$a_j M_j \equiv c_j \pmod{m_j}.$$
Ez egy lineáris kongruencia az $a_j$ ismeretlenre, amely a 8.1. Tétel szerint megoldható, ha $(M_j, m_j) \mid c_j$. Ez pedig teljesül, mert
$$(m_j, M_j) = (m_j, m_1 \cdots m_{j-1} m_{j+1} \cdots m_k) = 1,$$
hiszen $m_j$ a többi $m_i$ mindegyikéhez relatív prím. Tehát minden $j$-re létezik megfelelő $a_j$, és az így kapott
$$x = a_1 M_1 + \dots + a_k M_k$$
megoldás. Az egyértelműség miatt az összes megoldás
$$x \equiv a_1 M_1 + \dots + a_k M_k \pmod{m_1 m_2 \cdots m_k}. \ \blacksquare$$

**A Szun Cu-feladat megoldása a bizonyítás módszerével.** Itt $M = 105$, $M_1 = 35$, $M_2 = 21$, $M_3 = 15$. A három lineáris kongruencia:
$$35 a_1 \equiv 2 \pmod 3, \qquad 21 a_2 \equiv 3 \pmod 5, \qquad 15 a_3 \equiv 2 \pmod 7.$$
Mivel $35 \equiv 2 \pmod 3$, $21 \equiv 1 \pmod 5$ és $15 \equiv 1 \pmod 7$: $2a_1 \equiv 2$, azaz $a_1 \equiv 1$; $a_2 \equiv 3$; $a_3 \equiv 2$. Így
$$x \equiv 35 \cdot 1 + 21 \cdot 3 + 15 \cdot 2 = 128 \equiv 23 \pmod{105}.$$

**Egy másik módszer: egymás utáni behelyettesítés.** Kisebb feladatoknál gyakran gyorsabb a kongruenciákat egyenként „beépíteni”. Az első kongruencia szerint $x = 2 + 3s$. Ezt a másodikba írva: $2 + 3s \equiv 3 \pmod 5$, azaz $3s \equiv 1$, $s \equiv 2 \pmod 5$, $s = 2 + 5r$, így $x = 8 + 15r$. A harmadikba írva: $8 + 15r \equiv 2 \pmod 7$, azaz (mivel $8 \equiv 1$, $15 \equiv 1$) $1 + r \equiv 2$, $r \equiv 1 \pmod 7$. Tehát $x = 8 + 15(1 + 7q) = 23 + 105q$.

**Kidolgozott példa.** Oldjuk meg a
$$3x \equiv 1 \pmod 4, \qquad 2x \equiv 3 \pmod 5, \qquad 5x \equiv 2 \pmod 7 \qquad (13.3)$$
kongruenciarendszert! Fontos előbb megnézni, hogy a kongruenciák *külön-külön* megoldhatók-e: mindhárom az, hiszen $(3, 4) = (2, 5) = (5, 7) = 1$. A modulusok páronként relatív prímek, így a kínai maradéktétel szerint közös megoldás is van, és a bizonyítás alapján az
$$x \equiv 5 \cdot 7 \cdot A + 4 \cdot 7 \cdot B + 4 \cdot 5 \cdot C \pmod{4 \cdot 5 \cdot 7} \qquad (13.4)$$
alakban keresendő. Ezt (13.3)-ba írva, és felhasználva, hogy modulo $4$ csak az első, modulo $5$ csak a második, modulo $7$ csak a harmadik tag marad:
$$3 \cdot 5 \cdot 7 \cdot A \equiv 1 \pmod 4, \qquad 2 \cdot 4 \cdot 7 \cdot B \equiv 3 \pmod 5, \qquad 5 \cdot 4 \cdot 5 \cdot C \equiv 2 \pmod 7.$$
Mivel $105 \equiv 1 \pmod 4$, $56 \equiv 1 \pmod 5$ és $100 \equiv 2 \pmod 7$, ebből
$$A \equiv 1 \pmod 4, \qquad B \equiv 3 \pmod 5, \qquad 2C \equiv 2 \pmod 7, \ \text{azaz}\ C \equiv 1 \pmod 7.$$
(Az utolsónál $(2, 7) = 1$ miatt egyszerűsíthettünk.) Visszaírva (13.4)-be:
$$x \equiv 35 \cdot 1 + 28 \cdot 3 + 20 \cdot 1 = 139 \pmod{140}.$$
Ellenőrzés: $3 \cdot 139 = 417 \equiv 1 \pmod 4$, $2 \cdot 139 = 278 \equiv 3 \pmod 5$, $5 \cdot 139 = 695 = 99 \cdot 7 + 2 \equiv 2 \pmod 7$. ✓

**Mi van, ha a modulusok nem relatív prímek?** Akkor a rendszer vagy megoldhatatlan, vagy a megoldás a modulusok legkisebb közös többszörösére nézve egyértelmű. Például $x \equiv 1 \pmod 4$ és $x \equiv 2 \pmod 6$ nem oldható meg (az első szerint $x$ páratlan, a második szerint páros), míg $x \equiv 1 \pmod 4$ és $x \equiv 3 \pmod 6$ megoldása $x \equiv 9 \pmod{12}$. (Általában két kongruencia, $x \equiv c_1 \pmod{m_1}$ és $x \equiv c_2 \pmod{m_2}$, pontosan akkor oldható meg együtt, ha $(m_1, m_2) \mid c_1 - c_2$.)

**A tétel szerkezeti jelentése.** A kínai maradéktétel azt mondja, hogy egy modulo $M$ maradékosztály „ugyanaz”, mint a modulo $m_1, \dots, m_k$ maradékainak $k$-asa — ráadásul az összeadás és a szorzás is „komponensenként” történik. Ezért egy összetett modulusú feladatot gyakran felbonthatunk prímhatvány modulusú részfeladatokra, amelyeket külön oldunk meg, majd a megoldásokat a kínai maradéktétellel „összeragasztjuk”. A következő fejezet pontosan ezt teszi.

## 14. Magasabb fokú kongruenciák

Legyen $f(x) \in \mathbb{Z}[x]$ egész együtthatós polinom. Az $f(x) \equiv 0 \pmod n$ kongruencia megoldásain azokat az $x$ egészeket értjük, amelyekre $n \mid f(x)$; mivel $x \equiv x' \pmod n$ esetén $f(x) \equiv f(x')$, a megoldások maradékosztályok, és a megoldások számán az inkongruens megoldások számát értjük.

> **14.1. Tétel.** Legyen $n > 1$ egész, $n = p_1^{\alpha_1} \cdots p_k^{\alpha_k}$ a kanonikus alakja, és $f(x) \in \mathbb{Z}[x]$. Az
> $$f(x) \equiv 0 \pmod n \qquad (14.1)$$
> kongruencia pontosan akkor oldható meg, ha a
> $$f(x) \equiv 0 \pmod{p_1^{\alpha_1}}, \quad f(x) \equiv 0 \pmod{p_2^{\alpha_2}}, \quad \dots, \quad f(x) \equiv 0 \pmod{p_k^{\alpha_k}} \qquad (14.2)$$
> kongruenciák mindegyike megoldható. Ha ezek egy-egy megoldása $h_1, h_2, \dots, h_k$, akkor az
> $$x \equiv h_1 \pmod{p_1^{\alpha_1}}, \quad \dots, \quad x \equiv h_k \pmod{p_k^{\alpha_k}}$$
> rendszer (a kínai maradéktétel szerint egyértelmű) megoldása megoldása (14.1)-nek, és (14.1) összes megoldása így kapható meg.

*Bizonyítás.* A kongruenciát oszthatósággá átírva azonnal látszik: $n \mid f(x)$ pontosan akkor teljesül, ha minden $i$-re $p_i^{\alpha_i} \mid f(x)$ (a 13. fejezet lemmája szerint, mert a prímhatványok páronként relatív prímek). Ha pedig $x \equiv h_i \pmod{p_i^{\alpha_i}}$, akkor $f(x) \equiv f(h_i) \equiv 0 \pmod{p_i^{\alpha_i}}$. $\blacksquare$

**Következmény.** Ha (14.2)-ben a $i$-edik kongruenciának $N_i$ megoldása van, akkor (14.1) megoldásainak száma $N_1 N_2 \cdots N_k$ (minden választás egy-egy különböző megoldást ad modulo $n$).

**Példa.** $x^2 \equiv 4 \pmod{35}$: modulo $5$ a megoldások $x \equiv \pm 2$, modulo $7$ is $x \equiv \pm 2$. A négy kombinációt a kínai maradéktétellel összerakva: $x \equiv 2, 12, 23, 33 \pmod{35}$. (Például $x \equiv 2 \pmod 5$, $x \equiv -2 \pmod 7$ megoldása $x \equiv 12$: $12^2 = 144 = 4 \cdot 35 + 4$.) Egy másodfokú kongruenciának tehát itt négy megoldása van.

A kínai maradéktétel miatt tehát a megoldás megkeresése visszavezethető
$$f(x) \equiv 0 \pmod{p^\alpha}$$
típusú kongruenciák vizsgálatára, ahol $p$ prím és $\alpha \ge 1$.

### 14.1. Prímhatvány modulusú kongruenciák

A prímhatvány modulusú kongruencia egyszerűen visszavezethető prím modulusúra. Ezt egy példán mutatjuk be.

**Példa.** Oldjuk meg az
$$x^3 + 4x \equiv 21 \pmod{125} \qquad (14.3)$$
kongruenciát! Ha $125 \mid x^3 + 4x - 21$, akkor $25$ és $5$ is osztja, tehát
$$x^3 + 4x \equiv 21 \pmod{25}, \qquad (14.4)$$
$$x^3 + 4x \equiv 21 \equiv 1 \pmod 5. \qquad (14.5)$$
A stratégia: előbb (14.5)-öt oldjuk meg, majd a megoldások közül kikeressük (illetve „felemeljük”) azokat, amelyek (14.4)-nek is eleget tesznek, végül (14.3)-at.

**Modulo 5.** Prím modulusú kongruencia esetén általában nincs jobb módszer, mint egy teljes maradékrendszer elemeit végigpróbálni. Az $x \in \{0, \pm 1, \pm 2\}$ értékeket behelyettesítve ($f(x) = x^3 + 4x$): $f(0) = 0$, $f(1) = 5 \equiv 0$, $f(-1) = -5 \equiv 0$, $f(2) = 16 \equiv 1$, $f(-2) = -16 \equiv 4$. Egyedül
$$x \equiv 2 \pmod 5$$
a megoldás.

**Modulo 25.** Írjuk $x$-et $x = 5t + 2$ alakba ($t \in \mathbb{Z}$), és helyettesítsük (14.4)-be:
$$(5t + 2)^3 + 4(5t + 2) \equiv 21 \pmod{25}.$$
A binomiális tétel szerint $(5t + 2)^3 = 125t^3 + 3 \cdot 25t^2 \cdot 2 + 3 \cdot 5t \cdot 4 + 8$; a $25$-tel osztható tagok $0$-val kongruensek, így elfelejthetjük őket:
$$60t + 8 + 20t + 8 \equiv 21 \pmod{25}, \qquad 80t \equiv 5 \pmod{25}.$$
$5$-tel osztva (a modulus is osztódik): $16t \equiv 1 \pmod 5$, azaz $t \equiv 1 \pmod 5$. Tehát $t = 5\ell + 1$, és
$$x = 5t + 2 = 5(5\ell + 1) + 2 = 25\ell + 7.$$

**Modulo 125.** Most $x = 25\ell + 7$-et írjuk (14.3)-ba:
$$(25\ell + 7)^3 + 4(25\ell + 7) \equiv 21 \pmod{125}.$$
A $125$-tel osztható tagokat elhagyva ($(25\ell)^2$ és $(25\ell)^3$ ilyen):
$$3 \cdot 7^2 \cdot 25\ell + 7^3 + 4 \cdot 25\ell + 28 \equiv 21 \pmod{125},$$
$$(3 \cdot 49 + 4) \cdot 25\ell + 371 \equiv 21, \qquad 151 \cdot 25\ell \equiv -350 \pmod{125}.$$
$25$-tel osztva: $151\ell \equiv -14 \pmod 5$, azaz $\ell \equiv 1 \pmod 5$ (mert $151 \equiv 1$, $-14 \equiv 1$). Tehát $\ell = 5k + 1$, és
$$x = 25(5k + 1) + 7 = 125k + 32.$$
Az eredeti kongruencia megoldása: $x \equiv 32 \pmod{125}$. (Ellenőrzés: $32^3 + 4 \cdot 32 - 21 = 32768 + 128 - 21 = 32875 = 263 \cdot 125$.) ✓

Általában az eljárás során egy-egy lépésben több megoldást is kaphatunk, vagy éppen az is előfordulhat, hogy egy modulo $p$ megoldás nem emelhető fel. Fontos, hogy a diszkusszió során minden esetet alaposan végignézzünk.

::: kiegeszites
**Kiegészítés: mikor egyértelmű a felemelés?** A példában minden lépésben egy lineáris kongruenciát kaptunk a következő „jegyre”, amelynek együtthatója ($80/5 = 16 \equiv 1$, illetve $151 \equiv 1$) nem volt osztható $5$-tel. Ez nem véletlen: ha $x = h + p^j t$, akkor a Taylor-formula (vagy a binomiális tétel) szerint
$$f(h + p^j t) \equiv f(h) + f'(h)\, p^j t \pmod{p^{j+1}},$$
ahol $f'$ a (formális) derivált. Így a $f(h + p^j t) \equiv 0 \pmod{p^{j+1}}$ feltétel a $\frac{f(h)}{p^j} + f'(h) t \equiv 0 \pmod p$ lineáris kongruenciává egyszerűsödik. Ha **$p \nmid f'(h)$**, ennek pontosan egy megoldása van $t$-re: a modulo $p$ megoldás egyértelműen felemelhető modulo $p^2, p^3, \dots$ megoldássá (ez a **Hensel-lemma**). A példában $f'(x) = 3x^2 + 4$, és $f'(2) = 16 \not\equiv 0 \pmod 5$. Ha viszont $p \mid f'(h)$, akkor a felemelés vagy lehetetlen, vagy $p$-féleképpen lehetséges — ilyenkor kell igazán vigyázni.
:::

### 14.2. Fokszámredukció

Prím modulus esetén egy magas fokú polinom foka a modulusnál kisebbre csökkenthető.

> **14.2. Tétel.** Ha $p$ prím és $f(x) \in \mathbb{Z}[x]$, akkor létezik olyan $g$ egész együtthatós polinom, amelynek foka legfeljebb $p - 1$ (vagy $g$ a nullapolinom), és minden $c \in \mathbb{Z}$-re
> $$f(c) \equiv g(c) \pmod p.$$

> **14.3. Megjegyzés.** A tételből következik, hogy az $f(x) \equiv 0 \pmod p$ és a $g(x) \equiv 0 \pmod p$ kongruenciáknak ugyanazok a megoldásai.

*Bizonyítás.* Az $f$ polinomban, ahol csak lehet, cseréljük az $x^p$ tényezőt $x$-re (azaz $x^k$-t, ha $k \ge p$, cseréljük $x^{k - p + 1}$-re), és ismételjük ezt, ameddig lehetséges. Minden lépésben valamelyik kitevő csökken, így az eljárás véget ér, és a kapott $g$ polinom foka legfeljebb $p - 1$ (vagy minden együttható kiesik). Mivel $p$ prím, a kis Fermat-tétel szerint bármely $c \in \mathbb{Z}$-re $c^p \equiv c \pmod p$, így minden csere a $c$ helyen vett értéket modulo $p$ változatlanul hagyja: $f(c) \equiv g(c) \pmod p$. $\blacksquare$

(Az egyértelműség — amelyet a jegyzet zárójelben említ — abban az értelemben igaz, hogy két legfeljebb $(p-1)$-edfokú polinom, amely minden helyen ugyanazt a maradékot adja, modulo $p$ együtthatónként megegyezik; ez a következő, 14.4. Tételből adódik, a különbségükre alkalmazva.)

**Példa.** Modulo $5$ az $f(x) = x^7 + 3x^5 + x^2 + 2$ polinom helyett vizsgálhatjuk a
$$g(x) = x^3 + 3x + x^2 + 2 = x^3 + x^2 + 3x + 2$$
polinomot ($x^7 = x^5 \cdot x^2 \to x \cdot x^2 = x^3$, $x^5 \to x$). A $0, 1, 2, 3, 4$ helyeken $g$ értékei modulo $5$: $2, 2, 0, 2, 4$. Tehát $f(x) \equiv 0 \pmod 5$ egyetlen megoldása $x \equiv 2$. (Közvetlenül: $f(2) = 128 + 96 + 4 + 2 = 230 = 46 \cdot 5$.)

### 14.3. A fokszámtétel

A fokszámtétel megalkotója Joseph-Louis Lagrange (1736–1813), olasz születésű (torinói) francia matematikus, aki csillagászattal és fizikával is foglalkozott. Legfontosabb műve a *Mécanique analytique* (Analitikus mechanika, 1788), amely hamar alapművé vált. Apja a szárd király hivatalában volt kincstárnok, de rizikós üzletekbe fogva elveszítette a vagyonát. Lagrange később így emlékezett: *„Ha gazdag lettem volna, aligha adtam volna a fejem a matematikára.”*

> **14.4. Tétel (fokszámtétel, Lagrange).** Legyen $p$ prím, és $f(x) = a_n x^n + \dots + a_1 x + a_0$ egész együtthatós, legfeljebb $n$-edfokú polinom, amelynek van $p$-vel nem osztható együtthatója. Ekkor az
> $$f(x) \equiv 0 \pmod p$$
> kongruenciának legfeljebb $n$ megoldása van (modulo $p$).

*Bizonyítás.* A $p$-vel osztható együtthatójú tagok modulo $p$ nem számítanak, ezért elhagyhatjuk őket; ezzel a fok legfeljebb csökken. Feltehetjük tehát, hogy $f$ foka $n$ és $p \nmid a_n$. A tételt $n$ szerinti teljes indukcióval bizonyítjuk.

**Kezdő lépés:** $n = 0$-ra $f = a_0$ és $p \nmid a_0$, tehát nincs megoldás. (Az $n = 1$ eset is nyilvánvaló: $a_1 x \equiv -a_0$, $(a_1, p) = 1$, egyetlen megoldás.)

**Indukciós lépés:** tegyük fel, hogy az állítás $(k - 1)$-edfokú polinomokra igaz, és legyen $f$ $k$-adfokú, $p \nmid a_k$. Ha az
$$f(x) \equiv 0 \pmod p \qquad (14.6)$$
kongruenciának nincs megoldása, az állítás igaz. Tegyük fel, hogy van egy $x_1$ megoldása: $f(x_1) \equiv 0 \pmod p$. Ekkor
$$f(x) - f(x_1) = a_k(x^k - x_1^k) + a_{k-1}(x^{k-1} - x_1^{k-1}) + \dots + a_1(x - x_1),$$
és a jobb oldal minden tagjából kiemelhető $x - x_1$ (az $x^j - x_1^j = (x - x_1)(x^{j-1} + x^{j-2}x_1 + \dots + x_1^{j-1})$ azonosság szerint):
$$f(x) - f(x_1) = (x - x_1)\, g(x),$$
ahol $g(x) \in \mathbb{Z}[x]$ egy $(k-1)$-edfokú polinom, főegyütthatója $a_k$, tehát $p \nmid$ főegyüttható. Ha most $x$ megoldása (14.6)-nak, akkor
$$p \mid f(x) - f(x_1) = (x - x_1) g(x),$$
így Eukleidész I. tétele szerint
$$p \mid x - x_1 \qquad \text{vagy} \qquad p \mid g(x). \qquad (14.8)$$
Az indukciós feltevés szerint a $g(x) \equiv 0 \pmod p$ kongruenciának legfeljebb $k - 1$ megoldása van, így (14.8) miatt (14.6)-nak legfeljebb $1 + (k - 1) = k$ megoldása lehet. $\blacksquare$

> **14.5. Megjegyzés.** A fokszámtételben nagyon fontos, hogy a modulus prím; ellenkező esetben a tétel nem igaz. Az $x^2 - 1 \equiv 0 \pmod 8$ kongruencia bal oldalán másodfokú polinom áll, de a kongruenciának négy megoldása van modulo $8$: $x \equiv 1, 3, 5, 7$. A bizonyításban ott romlik el a dolog, hogy összetett modulusra nem igaz Eukleidész I. tétele: $8 \mid (3 - 1)(3 + 1) = 8$, de $8 \nmid 2$ és $8 \nmid 4$.

**Egy fontos következmény.** Ha egy legfeljebb $n$-edfokú $f$ polinomnak modulo $p$ több mint $n$ megoldása van, akkor *minden* együtthatója osztható $p$-vel. (Ez a fokszámtétel kontrapozíciója.) A következő két fejezet mindkét tétele ezen múlik.

## 15. Wilson tétele

A Wilson-tétel első írásos formája Ibn al-Hajszamtól (latinosan Alhazen, kb. 965–1040), arab matematikustól, fizikustól és csillagásztól származik. A történet szerint az egyiptomi kalifa megbízta, hogy a Nílus — a terméshez szükséges — évenkénti áradását folyamszabályozással biztosítsa. Amikor a munka nem járt sikerrel, Ibn al-Hajszam a kalifa haragjától tartva őrültséget színlelt; a kalifa halála után elkobzott vagyonát visszakapta, és haláláig Egyiptomban élt.

Jóval később, a XVIII. században került újra napfényre a tétel, amikor Edward Waring 1770-ben, *Meditationes Algebraicae* című könyvében közölte tanítványa, John Wilson felfedezését. Sem Waring, sem Wilson nem tudta bebizonyítani a tételt; az első bizonyítást Lagrange adta 1771-ben.

> **15.1. Tétel (Wilson).** Ha $p$ prím, akkor
> $$(p - 1)! \equiv -1 \pmod p.$$

**Példák.** $p = 5$: $4! = 24 = 25 - 1 \equiv -1$. $p = 7$: $6! = 720 = 7 \cdot 103 - 1 \equiv -1$. $p = 11$: $10! = 3628800 \equiv -1 \pmod{11}$.

*1. bizonyítás (párosítással).* $p = 2$ és $p = 3$ esetén a kongruencia közvetlenül ellenőrizhető: $1! = 1 \equiv -1 \pmod 2$, $2! = 2 \equiv -1 \pmod 3$. Legyen tehát $p \ge 5$. Az $1, 2, \dots, p - 1$ számokat megpróbáljuk úgy párokba állítani, hogy az egy párban álló számok szorzata $1$-gyel legyen kongruens modulo $p$.

Legyen $1 \le j \le p - 1$. A
$$jx \equiv 1 \pmod p$$
kongruencia egyértelműen megoldható, mert $(j, p) = 1 \mid 1$; a megoldás $x \not\equiv 0$, így választható az $1, \dots, p - 1$ számok közül. Ez az $x$ legyen $j$ **párja** (vagyis $j$ inverze modulo $p$). A párosítás szimmetrikus: ha $x$ a $j$ párja, akkor $j$ az $x$ párja.

Mikor lehet $j$ párja önmaga? Ha $x \equiv j$, akkor
$$j^2 \equiv 1 \pmod p, \quad p \mid j^2 - 1 = (j - 1)(j + 1), \quad p \mid j - 1 \ \text{vagy}\ p \mid j + 1,$$
azaz $j \equiv 1$ vagy $j \equiv -1 \equiv p - 1 \pmod p$. Tehát csak az $1$-nek és a $p - 1$-nek lehet önmaga a párja. A $2, 3, \dots, p - 2$ számok így olyan párokba rendezhetők, amelyekben a két szám különböző, és szorzatuk $1$-gyel kongruens. A párok szorzatait összeszorozva
$$2 \cdot 3 \cdots (p - 2) \equiv 1 \pmod p,$$
és ezt $(p - 1)$-gyel szorozva
$$(p - 1)! \equiv p - 1 \equiv -1 \pmod p. \ \blacksquare$$

**Példa a párosításra.** $p = 11$ esetén a párok: $(2, 6)$, $(3, 4)$, $(5, 9)$, $(7, 8)$, hiszen $12, 12, 45, 56$ mind $1$-gyel kongruens modulo $11$. Az $1$ és a $10$ magában marad. Így $10! \equiv 1 \cdot 1 \cdot 1 \cdot 1 \cdot 1 \cdot 10 \equiv -1$.

*2. bizonyítás (a fokszámtétellel).* Legyen
$$f(x) = x^{p-1} - 1, \qquad g(x) = (x - 1)(x - 2)\cdots(x - (p - 1)).$$
A kis Fermat-tétel szerint $f$-nek gyöke modulo $p$ az $1, 2, \dots, p - 1$ maradékosztályok mindegyike; nyilvánvalóan $g$-nek is. Tehát $f(x) - g(x)$-nek is gyöke az $1, 2, \dots, p - 1$, azaz $p - 1$ darab különböző maradékosztály. Mindkét polinom normált és $(p-1)$-edfokú, így $f - g$ foka legfeljebb $p - 2$. A fokszámtétel szerint vagy legfeljebb $p - 2$ gyöke van, vagy minden együtthatója osztható $p$-vel. Mivel most $p - 1$ gyöke van, **$f - g$ minden együtthatója osztható $p$-vel**:
$$f(x) \equiv g(x) \pmod p \quad \text{(együtthatónként)}.$$
A két polinom konstans tagja tehát kongruens modulo $p$:
$$-1 \equiv (-1)(-2)\cdots(-(p - 1)) = (-1)^{p-1} (p - 1)! \pmod p.$$
Ha $p$ páratlan, akkor $(-1)^{p-1} = 1$, és $(p - 1)! \equiv -1$; a $p = 2$ esetet pedig már láttuk. $\blacksquare$

::: kiegeszites
**Kiegészítés: a Wilson-tétel megfordítása.** Ha $n > 1$ és $(n - 1)! \equiv -1 \pmod n$, akkor $n$ prím. Valóban, ha $n$ összetett, akkor van egy $d$ osztója, $1 < d < n$; ez szerepel az $1, 2, \dots, n - 1$ számok között, így $d \mid (n - 1)!$. Ha $n \mid (n - 1)! + 1$ volna, akkor $d \mid (n-1)! + 1$ is teljesülne, és így $d \mid 1$ — ellentmondás. A Wilson-tétel tehát *jellemzi* a prímeket. Prímtesztként mégsem használható, mert $(n - 1)!$ kiszámítása (akár modulo $n$ is) nagyon lassú.
:::

**Wilson-prímek.** Egy $p$ prímet **Wilson-prímnek** nevezünk, ha nemcsak $p$, hanem $p^2$ is osztja $(p - 1)! + 1$-et. A jelenleg ismert Wilson-prímek: $5$, $13$ és $563$. (Például $4! + 1 = 25$, és $12! + 1 = 479\,001\,601 = 169 \cdot 2\,834\,329$.) Számítógépes vizsgálatok szerint (E. Costa, R. Gerbicz és D. Harvey, 2014) $2 \cdot 10^{13}$-ig nincs több Wilson-prím; a sejtés szerint mégis végtelen sok van.

## 16. Wolstenholme tétele

Joseph Wolstenholme angol matematikus 1862-ben a Wilson-tételhez hasonló jellegű állítást bizonyított.

> **16.1. Tétel (Wolstenholme).** Legyen $p \ge 5$ prím. Az
> $$1 + \frac{1}{2} + \frac{1}{3} + \dots + \frac{1}{p - 1}$$
> tört (legegyszerűbb alakjának) számlálója osztható $p^2$-tel.

**Példák.** $p = 5$: $1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} = \frac{25}{12}$, a számláló $25 = 5^2$. $p = 7$: $1 + \frac{1}{2} + \dots + \frac{1}{6} = \frac{49}{20}$, a számláló $49 = 7^2$. $p = 11$: az összeg $\frac{7381}{2520}$, és $7381 = 11^2 \cdot 61$. (Ellenpélda $p = 3$-ra: $1 + \frac{1}{2} = \frac{3}{2}$, a számláló csak $3$-mal osztható.)

*Bizonyítás.* Legyen $f$ és $g$ ugyanaz, mint a Wilson-tétel 2. bizonyításában:
$$f(x) = x^{p-1} - 1, \qquad g(x) = (x - 1)(x - 2)\cdots(x - (p - 1)) = x^{p-1} + A_1 x^{p-2} + \dots + A_{p-2} x + A_{p-1}.$$
Nyilván $A_{p-1} = (-1)^{p-1}(p - 1)! = (p - 1)!$ (mert $p$ páratlan).

**1. lépés: egy egzakt egyenlőség.** Írjunk $x$ helyébe $p$-t! Egyrészt
$$g(p) = (p - 1)(p - 2)\cdots(p - (p - 1)) = (p - 1)!,$$
másrészt
$$g(p) = p^{p-1} + A_1 p^{p-2} + \dots + A_{p-2}\, p + A_{p-1}.$$
Mivel $A_{p-1} = (p - 1)!$, a kettőt összevetve
$$0 = p^{p-1} + A_1 p^{p-2} + \dots + A_{p-3}\, p^2 + A_{p-2}\, p. \qquad (*)$$

**2. lépés: az együtthatók oszthatósága.** A Wilson-tétel 2. bizonyításában láttuk, hogy $f(x) \equiv g(x) \pmod p$ együtthatónként, azaz
$$x^{p-1} - 1 \equiv x^{p-1} + A_1 x^{p-2} + \dots + A_{p-2} x + A_{p-1} \pmod p.$$
Az együtthatókat összehasonlítva:
$$p \mid A_1, A_2, \dots, A_{p-2}.$$

**3. lépés.** Térjünk vissza $(*)$-hoz, és nézzük modulo $p^3$! A bal oldal $0$. A jobb oldalon az első tag $p^{p-1}$, amely $p \ge 5$ miatt osztható $p^3$-nel; az $A_i p^{p-1-i}$ tagok ($1 \le i \le p - 3$) is oszthatók $p^3$-nel, hiszen $p \mid A_i$ és $p - 1 - i \ge 2$. Így az utolsó tag is osztható $p^3$-nel: $p^3 \mid A_{p-2}\, p$, vagyis
$$p^2 \mid A_{p-2}.$$

**4. lépés: kapcsolat a harmonikus összeggel.** $A_{p-2}$ a $g(x) = (x - 1)\cdots(x - (p-1))$ szorzatban $x$ együtthatója. Ezt úgy kapjuk, hogy a $p - 1$ tényező közül egyből az $x$-et, a többiből a konstanst választjuk:
$$A_{p-2} = \sum_{k=1}^{p-1} \prod_{j \ne k} (-j) = (-1)^{p-2} \sum_{k=1}^{p-1} \frac{(p - 1)!}{k} = -(p - 1)! \left(1 + \frac{1}{2} + \dots + \frac{1}{p - 1}\right).$$
Ha a harmonikus összeg legegyszerűbb alakja $\frac{N}{D}$, akkor $D \mid (p - 1)!$ miatt $p \nmid D$, és $N \cdot (p - 1)! = -A_{p-2} \cdot D$. Itt $p^2 \mid A_{p-2}$, így $p^2 \mid N \cdot (p - 1)!$, és mivel $(p, (p - 1)!) = 1$, ezért $p^2 \mid N$. $\blacksquare$

(Figyeljük meg, hol kellett $p \ge 5$: a 3. lépésben, hogy az első tag, $p^{p-1}$ osztható legyen $p^3$-nel.)

### További tételek binomiális együtthatókról

A következő érdekes, binomiális együtthatókra vonatkozó tételek szintén Wolstenholme nevéhez fűződnek. Ezeket nem bizonyítjuk.

> **16.2. Tétel (Wolstenholme).** Ha $p \ge 5$ prím, akkor
> $$\binom{2p - 1}{p - 1} \equiv 1 \pmod{p^3}.$$

Például $p = 5$: $\binom{9}{4} = 126 = 125 + 1$; $p = 7$: $\binom{13}{6} = 1716 = 5 \cdot 343 + 1$.

A tétel egy általánosítása Wilhelm Ljunggrentől (1952) származik:

> **16.3. Tétel.** Ha $p \ge 5$ prím és $0 \le b \le a$ egészek, akkor
> $$\binom{ap}{bp} \equiv \binom{a}{b} \pmod{p^3}.$$

(Az $a = 2$, $b = 1$ eset: $\binom{2p}{p} = 2\binom{2p-1}{p-1} \equiv 2 = \binom{2}{1}$, ami a 16.2. Tétellel ekvivalens. A $p \ge 5$ feltétel itt is lényeges: $p = 3$-ra $\binom{6}{3} = 20$ és $\binom{2}{1} = 2$, de $27 \nmid 18$.)

Egy $p$ prímet **Wolstenholme-prímnek** nevezünk, ha
$$\binom{2p - 1}{p - 1} \equiv 1 \pmod{p^4}.$$
Jelenleg csak két Wolstenholme-prím ismert, a $16843$ és a $2124679$; számítógéppel az összes prímet megvizsgálták $10^9$-ig (R. J. McIntosh és E. L. Roettger, 2007), és eddig a határig biztosan nincs több.

**Lucas tétele.** Érdekes tulajdonsága a binomiális együtthatóknak Édouard Lucas 1878-ban bizonyított tétele is. Eszerint ha $p$ prím, $a = n_1 p + n_0$ és $b = m_1 p + m_0$, ahol $0 \le n_0, m_0 \le p - 1$, akkor
$$\binom{a}{b} \equiv \binom{n_1}{m_1}\binom{n_0}{m_0} \pmod p.$$
Többszörösen alkalmazva: ha $a = (n_r \dots n_1 n_0)_p$ és $b = (m_r \dots m_1 m_0)_p$ a $p$-alapú számrendszerbeli alakok, akkor
$$\binom{a}{b} \equiv \binom{n_r}{m_r}\binom{n_{r-1}}{m_{r-1}}\cdots\binom{n_0}{m_0} \pmod p$$
(ahol $\binom{n}{m} = 0$, ha $m > n$). **Példák.** $\binom{10}{3} = 120$ modulo $3$: $10 = (101)_3$, $3 = (010)_3$, így $\binom{10}{3} \equiv \binom{1}{0}\binom{0}{1}\binom{1}{0} = 0$, és valóban $3 \mid 120$. $\binom{12}{5} = 792$ modulo $5$: $12 = (22)_5$, $5 = (10)_5$, így $\binom{12}{5} \equiv \binom{2}{1}\binom{2}{0} = 2$, és valóban $792 = 158 \cdot 5 + 2$.

## A IV. rész összefoglalása

- **Kínai maradéktétel:** páronként relatív prím $m_1, \dots, m_k$ modulusokra az $x \equiv c_i \pmod{m_i}$ rendszer mindig megoldható, és a megoldás egyetlen maradékosztály modulo $m_1 \cdots m_k$. Konstrukció: $x = \sum a_i M_i$, $M_i = M / m_i$, $a_i M_i \equiv c_i \pmod{m_i}$; vagy egymás utáni behelyettesítés.
- **Polinomkongruencia összetett modulusra:** $f(x) \equiv 0 \pmod n$ visszavezethető a prímhatvány-tényezőkre; a megoldásszámok összeszorzódnak.
- **Prímhatvány modulus:** modulo $p$ megoldásból „jegyenként” felemelés modulo $p^2, p^3, \dots$; ha $p \nmid f'(h)$, a felemelés egyértelmű (Hensel).
- **Prím modulus:** a fok $p - 1$ alá redukálható ($x^p \to x$); **Lagrange fokszámtétele:** egy modulo $p$ nem nulla, legfeljebb $n$-edfokú polinomnak legfeljebb $n$ gyöke van. Összetett modulusra hamis ($x^2 \equiv 1 \pmod 8$).
- **Wilson:** $(p - 1)! \equiv -1 \pmod p$ (párosítás az inverzekkel; vagy $x^{p-1} - 1 \equiv \prod (x - j)$ együtthatónként). Megfordítva is igaz, tehát jellemzi a prímeket.
- **Wolstenholme:** $p \ge 5$ esetén $1 + \frac{1}{2} + \dots + \frac{1}{p-1}$ számlálója osztható $p^2$-tel; $\binom{2p-1}{p-1} \equiv 1 \pmod{p^3}$. **Lucas:** $\binom{a}{b} \equiv \prod \binom{n_i}{m_i} \pmod p$ a $p$-alapú jegyekkel.

## Feladatok a IV. részhez

1. Oldjuk meg: $x \equiv 1 \pmod 3$, $x \equiv 2 \pmod 4$, $x \equiv 3 \pmod 5$.
2. Egy kosárban tojások vannak. Kettesével, hármasával, négyesével, ötösével, illetve hatosával kivéve rendre $1, 2, 3, 4, 5$ tojás marad, hetesével kivéve egy sem. Legalább hány tojás van a kosárban?
3. Hány megoldása van az $x^2 \equiv 1 \pmod{105}$ kongruenciának? Adjuk meg a megoldásokat.
4. Oldjuk meg az $x^2 \equiv 2 \pmod{49}$ kongruenciát.
5. Oldjuk meg az $x^2 + x + 7 \equiv 0 \pmod{27}$ kongruenciát. Miben különbözik ez a 14.1. pont példájától?
6. Mi a $16!$ maradéka $19$-cel osztva?
7. Legyen $p$ páratlan prím. Bizonyítsuk be, hogy $\left(\left(\frac{p-1}{2}\right)!\right)^2 \equiv (-1)^{\frac{p+1}{2}} \pmod p$. Következtessük ki, hogy ha $p \equiv 1 \pmod 4$, akkor az $x^2 \equiv -1 \pmod p$ kongruencia megoldható.
8. Bizonyítsuk be a fokszámtétel segítségével, hogy ha $p$ prím és $d \mid p - 1$, akkor az $x^d \equiv 1 \pmod p$ kongruenciának pontosan $d$ megoldása van. (Útmutatás: $x^{p-1} - 1 = (x^d - 1) \cdot h(x)$.)

### Megoldási útmutatók

1. Behelyettesítéssel: $x = 1 + 3s$; $1 + 3s \equiv 2 \pmod 4$-ből $s \equiv 3$, $x = 10 + 12r$; $10 + 12r \equiv 3 \pmod 5$-ből $2r \equiv 3$, $r \equiv 4$; $x \equiv 58 \pmod{60}$.
2. A feltételek: $x \equiv -1 \pmod{2, 3, 4, 5, 6}$, azaz $x \equiv -1 \pmod{60}$, és $x \equiv 0 \pmod 7$. $x = 60k - 1 \equiv 4k - 1 \equiv 0 \pmod 7$-ből $k \equiv 2$; a legkisebb: $x = 119$ (általában $119 + 420t$).
3. $105 = 3 \cdot 5 \cdot 7$, mindegyik prím modulusra két megoldás ($\pm 1$), összesen $2^3 = 8$: $x \equiv 1, 29, 34, 41, 64, 71, 76, 104 \pmod{105}$.
4. Modulo $7$: $x \equiv \pm 3$. $x = 3 + 7t$: $9 + 42t \equiv 2 \pmod{49}$, $42t \equiv -7$, $6t \equiv -1 \pmod 7$, $t \equiv 1$; $x \equiv 10$. A másik: $x \equiv -10 \equiv 39 \pmod{49}$.
5. Modulo $3$: $x \equiv 1$. Itt $f'(x) = 2x + 1$, és $f'(1) = 3 \equiv 0 \pmod 3$: a Hensel-lemma nem alkalmazható. Modulo $9$: $x = 1 + 3t$-re $f(x) = 9 + 9t + 9t^2 \equiv 0$, tehát mindhárom $t$ jó: $x \equiv 1, 4, 7 \pmod 9$. Modulo $27$ közvetlen ellenőrzéssel csak az $x \equiv 4 \pmod 9$ ág emelhető fel, mégpedig háromféleképpen: $x \equiv 4, 13, 22 \pmod{27}$. A felemelés tehát itt nem egyértelmű.
6. Wilson: $18! \equiv -1 \pmod{19}$, és $18 \cdot 17 \equiv (-1)(-2) = 2$, így $2 \cdot 16! \equiv -1 \equiv 18$, $16! \equiv 9 \pmod{19}$.
7. $(p - 1)! = \prod_{j=1}^{(p-1)/2} j(p - j) \equiv \prod_{j=1}^{(p-1)/2} (-j^2) = (-1)^{\frac{p-1}{2}}\left(\left(\frac{p-1}{2}\right)!\right)^2$, és ez Wilson szerint $\equiv -1$. Ha $p = 4k + 1$, akkor $(-1)^{\frac{p+1}{2}} = -1$, így $x = \left(\frac{p-1}{2}\right)!$ megoldása $x^2 \equiv -1$-nek. (Például $p = 13$: $6! = 720 \equiv 5$, és $5^2 = 25 \equiv -1 \pmod{13}$.)
8. Ha $p - 1 = dk$, akkor $x^{p-1} - 1 = (x^d - 1)(x^{d(k-1)} + \dots + x^d + 1)$, ahol a második tényező foka $p - 1 - d$. A bal oldalnak $p - 1$ gyöke van (kis Fermat), a jobb oldali tényezőknek a fokszámtétel szerint legfeljebb $d$, illetve $p - 1 - d$. Eukleidész I. tétele szerint minden gyök valamelyik tényezőnek gyöke, így $x^d - 1$-nek legalább $(p - 1) - (p - 1 - d) = d$ gyöke van, tehát pontosan $d$.

---
