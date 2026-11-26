# V. RÉSZ: POLINOMEGYENLETEK

Az ötödik rész visszatér a polinomokhoz, most már az eddig felépített eszközökkel. Megnézzük, hogyan függenek össze egy polinom gyökei az együtthatóival (Viète-formulák), hogyan lehet adott értékeket felvevő polinomot konstruálni (interpoláció), hogyan oldották meg a reneszánsz matematikusai a harmad- és negyedfokú egyenletet, és miért nem lehet ugyanezt ötödfokúra megtenni. Végül a körosztási polinomokkal megalapozzuk az utolsó rész, a szerkeszthetőség tárgyalását.

## 15. A gyökök és együtthatók közötti összefüggések: Viète-formulák

Ez a fejezet az algebra egyik alapvető és legszebb eredményét mutatja be: a gyökök és az együtthatók közötti szoros kapcsolatot, amelyet **Viète-formuláknak** nevezünk (François Viète, XVI. század). Megértésükhöz kulcsfontosságú az elemi szimmetrikus polinomok fogalma.

### Alapfogalmak

Tekintsünk egy $n$-edfokú, komplex együtthatós, **normált** polinomot ($a_n = 1$):
$$P(x) = x^n + a_{n-1}x^{n-1} + a_{n-2}x^{n-2} + \dots + a_1x + a_0 \in \mathbb{C}[x].$$
Az algebra alaptétele szerint ennek a polinomnak pontosan $n$ gyöke van $\mathbb{C}$-ben (multiplicitással számolva); jelöljük ezeket $\lambda_1, \lambda_2, \dots, \lambda_n$-nel. Ekkor a polinom **gyöktényezős alakja**
$$P(x) = (x - \lambda_1)(x - \lambda_2)\cdots(x - \lambda_n).$$

### Az elemi szimmetrikus polinomok

> **Definíció.** Legyenek $\lambda_1, \dots, \lambda_n$ változók. A **$k$-adik elemi szimmetrikus polinom** ($e_k(\lambda_1, \dots, \lambda_n)$ vagy röviden $e_k$) az összes $\binom{n}{k}$ darab, $k$ különböző változóból képezhető szorzat összege:
> $$e_k(\lambda_1, \dots, \lambda_n) = \sum_{1 \le i_1 < i_2 < \dots < i_k \le n}\lambda_{i_1}\lambda_{i_2}\cdots\lambda_{i_k}.$$
> (Megállapodás szerint $e_0 = 1$.)

A „szimmetrikus” jelző arra utal, hogy a változók tetszőleges permutációja nem változtat az értéken. **Példák** ($n = 4$, a változók $\lambda_1, \lambda_2, \lambda_3, \lambda_4$):

- $e_1 = \lambda_1 + \lambda_2 + \lambda_3 + \lambda_4$;
- $e_2 = \lambda_1\lambda_2 + \lambda_1\lambda_3 + \lambda_1\lambda_4 + \lambda_2\lambda_3 + \lambda_2\lambda_4 + \lambda_3\lambda_4$ ($6$ tag);
- $e_3 = \lambda_1\lambda_2\lambda_3 + \lambda_1\lambda_2\lambda_4 + \lambda_1\lambda_3\lambda_4 + \lambda_2\lambda_3\lambda_4$;
- $e_4 = \lambda_1\lambda_2\lambda_3\lambda_4$.

### A Viète-formulák

> **Tétel (Viète-formulák).** Ha a normált $P(x) = x^n + a_{n-1}x^{n-1} + \dots + a_0$ polinom gyökei $\lambda_1, \dots, \lambda_n$, akkor minden $k = 1, \dots, n$-re
> $$a_{n-k} = (-1)^k e_k(\lambda_1, \dots, \lambda_n).$$
> Részletesen:
> $$a_{n-1} = -(\lambda_1 + \lambda_2 + \dots + \lambda_n), \qquad a_{n-2} = +(\lambda_1\lambda_2 + \lambda_1\lambda_3 + \dots), \qquad a_{n-3} = -(\lambda_1\lambda_2\lambda_3 + \dots), \qquad \dots, \qquad a_0 = (-1)^n\lambda_1\lambda_2\cdots\lambda_n.$$

*Bizonyítás.* Bontsuk ki a $P(x) = (x - \lambda_1)\cdots(x - \lambda_n)$ szorzatot! Minden tagot úgy kapunk, hogy mind az $n$ tényezőből vagy az $x$-et, vagy a $-\lambda_i$-t választjuk. Az $x^{n-k}$-s tagokat úgy kapjuk, hogy $k$ tényezőből a $-\lambda_i$-t, a többi $n - k$-ból az $x$-et választjuk. Ezek összege
$$\sum_{1 \le i_1 < \dots < i_k \le n}(-\lambda_{i_1})\cdots(-\lambda_{i_k})\,x^{n-k} = (-1)^k\left(\sum_{1 \le i_1 < \dots < i_k \le n}\lambda_{i_1}\cdots\lambda_{i_k}\right)x^{n-k} = (-1)^ke_k\,x^{n-k}.$$
Az $x^{n-k}$ együtthatóját a polinom eredeti alakjával összehasonlítva (3.2. Definíció): $a_{n-k} = (-1)^ke_k$. $\blacksquare$

**Nem normált polinomok.** Ha a főegyüttható $a_n \ne 1$, akkor $Q(x) = a_nx^n + a_{n-1}x^{n-1} + \dots + a_0$-t $a_n$-nel osztva normált polinomot kapunk, ugyanazokkal a gyökökkel, így
$$\frac{a_{n-k}}{a_n} = (-1)^ke_k(\lambda_1, \dots, \lambda_n).$$
Különösen:
$$\lambda_1 + \dots + \lambda_n = -\frac{a_{n-1}}{a_n}, \qquad \lambda_1\lambda_2\cdots\lambda_n = (-1)^n\frac{a_0}{a_n}.$$

**Példák.** (1) Másodfokú eset: az $ax^2 + bx + c$ polinom gyökeire $\lambda_1 + \lambda_2 = -\frac{b}{a}$ és $\lambda_1\lambda_2 = \frac{c}{a}$ — ezt a középiskolából ismerjük.

(2) Az $x^3 - 6x^2 + 11x - 6$ polinom gyökei $1, 2, 3$, és valóban $e_1 = 1 + 2 + 3 = 6$, $e_2 = 1 \cdot 2 + 1 \cdot 3 + 2 \cdot 3 = 11$, $e_3 = 1 \cdot 2 \cdot 3 = 6$; az együtthatók $-6 = -e_1$, $11 = e_2$, $-6 = -e_3$.

(3) **Gyökök kiszámolása nélkül:** mennyi az $x^3 - 2x + 5 = 0$ egyenlet gyökeinek négyzetösszege? $e_1 = 0$, $e_2 = -2$, így
$$\lambda_1^2 + \lambda_2^2 + \lambda_3^2 = (\lambda_1 + \lambda_2 + \lambda_3)^2 - 2(\lambda_1\lambda_2 + \lambda_1\lambda_3 + \lambda_2\lambda_3) = e_1^2 - 2e_2 = 0 + 4 = 4.$$

A Viète-formulák alapozzák meg a **szimmetrikus polinomok alaptételét**, amely szerint bármely szimmetrikus polinom kifejezhető az elemi szimmetrikus polinomok polinomjaként. (A (3) példában a $\lambda_1^2 + \lambda_2^2 + \lambda_3^2 = e_1^2 - 2e_2$ felírás ilyen.) Ez a tény kulcsfontosságú a Galois-elméletben: eszerint a gyökök bármely szimmetrikus kifejezése kiszámolható az együtthatókból, a gyökök ismerete nélkül.

### Hatványösszegek és a Newton-azonosságok

*(A következő rész nem vizsgaanyag, de nagyon fontos.)*

Az elemi szimmetrikus polinomok ($e_k$) és a gyökök **hatványösszegei** ($p_k$) között szoros kapcsolat van, amelyet a **Newton-azonosságok** írnak le. A $k$-adik hatványösszeg:
$$p_k(\lambda_1, \dots, \lambda_n) = \sum_{i=1}^n\lambda_i^k = \lambda_1^k + \lambda_2^k + \dots + \lambda_n^k.$$

> **Tétel (Newton-azonosságok).** Minden $k = 1, 2, \dots, n$-re
> $$p_k - e_1p_{k-1} + e_2p_{k-2} - \dots + (-1)^{k-1}e_{k-1}p_1 + (-1)^kk\,e_k = 0.$$

Ezek az azonosságok rekurzívan biztosítják, hogy az $\{e_1, \dots, e_n\}$ és a $\{p_1, \dots, p_n\}$ rendszer kölcsönösen kifejezhető egymásból (racionális együtthatókkal).

**Példa: $e_1, e_2, e_3$ kifejezése a hatványösszegekkel.**

- $k = 1$: $p_1 - e_1 = 0$, azaz $e_1 = p_1$.
- $k = 2$: $p_2 - e_1p_1 + 2e_2 = 0$; $e_1 = p_1$-et behelyettesítve $e_2 = \frac{1}{2}(p_1^2 - p_2)$.
- $k = 3$: $p_3 - e_1p_2 + e_2p_1 - 3e_3 = 0$, azaz $3e_3 = p_3 - e_1p_2 + e_2p_1$. Behelyettesítve:
$$3e_3 = p_3 - p_1p_2 + \frac{1}{2}(p_1^2 - p_2)p_1 = p_3 - \frac{3}{2}p_1p_2 + \frac{1}{2}p_1^3, \qquad e_3 = \frac{1}{6}p_1^3 - \frac{1}{2}p_1p_2 + \frac{1}{3}p_3.$$

**Ellenőrzés az $(1, 2, 3)$ gyökökkel:** $p_1 = 6$, $p_2 = 14$, $p_3 = 36$, és $\frac{216}{6} - \frac{6 \cdot 14}{2} + \frac{36}{3} = 36 - 42 + 12 = 6 = e_3$. ✓ Fordítva, a Newton-azonossággal a hatványösszegek az együtthatókból számolhatók: $p_3 = e_1p_2 - e_2p_1 + 3e_3 = 6 \cdot 14 - 11 \cdot 6 + 18 = 36 = 1 + 8 + 27$. ✓

::: kiegeszites
**Kiegészítés: a Newton-azonosságok bizonyítása (generátorfüggvénnyel).** Az érdeklődő olvasónak részletezzük a jegyzetben szereplő bizonyítást.

*1. Generátorfüggvény és logaritmikus derivált.* Legyen
$$E(t) = t^nP(1/t) = \sum_{k=0}^n(-1)^ke_kt^k = \prod_{i=1}^n(1 - \lambda_it).$$
Logaritmikus deriváltja (kis $|t|$-re):
$$\frac{E'(t)}{E(t)} = \sum_{i=1}^n\frac{d}{dt}\ln(1 - \lambda_it) = \sum_{i=1}^n\frac{-\lambda_i}{1 - \lambda_it}.$$

*2. Mértani sor.* Az $\frac{1}{1 - r} = \sum_{k=0}^\infty r^k$ képletet ($r = \lambda_it$) használva:
$$\frac{E'(t)}{E(t)} = \sum_{i=1}^n(-\lambda_i)\sum_{k=0}^\infty(\lambda_it)^k = -\sum_{k=0}^\infty\left(\sum_{i=1}^n\lambda_i^{k+1}\right)t^k = -\sum_{j=1}^\infty p_jt^{j-1}.$$

*3. Együtthatók összehasonlítása.* $E(t)$-vel szorozva $E'(t) = -E(t)\sum_{j \ge 1}p_jt^{j-1}$, azaz
$$\sum_{k=1}^n(-1)^kk\,e_kt^{k-1} = -\left(\sum_{i=0}^n(-1)^ie_it^i\right)\left(\sum_{j=1}^\infty p_jt^{j-1}\right).$$
A $t^{k-1}$ együtthatóját összehasonlítva ($k \le n$): a bal oldalon $(-1)^kk\,e_k$, a jobb oldalon $-\sum_{i=0}^{k-1}(-1)^ie_ip_{k-i}$. Tehát (mivel $e_0 = 1$)
$$(-1)^kk\,e_k = -\big(p_k - e_1p_{k-1} + e_2p_{k-2} - \dots + (-1)^{k-1}e_{k-1}p_1\big),$$
ami átrendezve éppen a Newton-azonosság. $\blacksquare$
:::

## 16. Interpoláció

Az **interpoláció** — ismeretlen értékek becslése ismert adatok alapján — már az ókori görögök és babiloniak csillagászati táblázataiban is megjelent, tudományos módszerré azonban csak később vált. A XVII. században James Gregory és Isaac Newton dolgozta ki az első szisztematikus módszereket (a csillagászati és logaritmustáblák hiányainak kitöltésére és hibáinak kiszűrésére); a legfontosabb áttörést a **Newton-féle (előre) differenciaformula** hozta, az első általános módszer egy függvény közelítésére ismert pontjain keresztül. Az interpolációs polinom egy másik, elegáns, közvetlenül a megadott pontokból felírható formáját Joseph-Louis Lagrange tette ismertté 1795-ben (lényegében ugyanezt a képletet Edward Waring már 1779-ben közölte). Az interpoláció fejlődése szorosan összekapcsolódott a differenciaszámítással és a numerikus analízis kialakulásával, hiszen gépek híján minden számítást kézzel végeztek. 1901-ben Carl Runge rámutatott a magas fokú interpolációs polinomok korlátaira (**Runge-jelenség**: egyenlő közű alappontok esetén a fokszámot növelve a közelítés a széleken egyre rosszabb lehet), ami a ma is használt jobb közelítési módszerek (például a spline-függvények) felé terelte a kutatást.

A következőkben a Lagrange- és a Newton-féle interpolációval ismerkedünk meg.

### Lagrange-interpoláció

**A feladat:** olyan polinomot keresünk, amely előre megadott helyeken előre megadott értékeket vesz fel. Adottak az $a_1, a_2, \dots, a_n$ **különböző** számok (alappontok) és a $b_1, b_2, \dots, b_n$ értékek, és olyan $f$ polinomot keresünk, amelyre
$$f(a_1) = b_1, \quad f(a_2) = b_2, \quad \dots, \quad f(a_n) = b_n.$$

A következő polinom megfelel:
$$f(x) = \sum_{i=1}^n b_i\,\frac{(x - a_1)\cdots(x - a_{i-1})(x - a_{i+1})\cdots(x - a_n)}{(a_i - a_1)\cdots(a_i - a_{i-1})(a_i - a_{i+1})\cdots(a_i - a_n)}.$$
Valóban: az $i$-edik tagban szereplő tört (az **$i$-edik Lagrange-alappolinom**, $\ell_i(x)$) az $a_i$ helyen $1$ (a számláló és a nevező megegyezik), minden más $a_j$ helyen pedig $0$ (a számlálóban szerepel az $x - a_j$ tényező). Így $f(a_j) = b_j\ell_j(a_j) = b_j$. A nevezők nem nullák, mert az alappontok különbözők.

**Egyértelműség.** A kapott $f$ foka legfeljebb $n - 1$, és **ez az egyetlen legfeljebb $(n-1)$-edfokú polinom**, amely a feltételeket teljesíti: ha $g$ is ilyen volna, akkor $f - g$ legfeljebb $(n-1)$-edfokú, és $n$ különböző gyöke van ($a_1, \dots, a_n$), így a polinomok azonossági tétele (3.11. Tétel) szerint $f = g$. (Ez a Vandermonde-determináns nem nulla voltával is belátható: az együtthatókra felírt lineáris egyenletrendszer mátrixa éppen egy Vandermonde-mátrix.)

**Kidolgozott példa.** Keressünk olyan legfeljebb másodfokú polinomot, amelyre $f(1) = 1$, $f(2) = 3$, $f(3) = 7$!
$$f(x) = 1 \cdot \frac{(x - 2)(x - 3)}{(1 - 2)(1 - 3)} + 3 \cdot \frac{(x - 1)(x - 3)}{(2 - 1)(2 - 3)} + 7 \cdot \frac{(x - 1)(x - 2)}{(3 - 1)(3 - 2)}$$
$$= \frac{(x - 2)(x - 3)}{2} - 3(x - 1)(x - 3) + \frac{7(x - 1)(x - 2)}{2} = x^2 - x + 1.$$
(Ellenőrzés: $1 - 1 + 1 = 1$, $4 - 2 + 1 = 3$, $9 - 3 + 1 = 7$. ✓)

### Newton-interpoláció

A Lagrange-interpoláció hátránya: ha az $n$-edik mérési eredmény után jön egy $(n+1)$-edik is, vagyis most már az
$$f(a_{n+1}) = b_{n+1}$$
egyenletnek is teljesülnie kell, akkor sajnos elölről kell kezdeni a számolást (minden alappolinom megváltozik).

**A megoldás: Newton-interpoláció.** Az $a_1, \dots, a_n$ helyeken már megfelelő $f_0$ polinomhoz egy **korrekciós tagot** adunk:
$$f(x) = f_0(x) + c\,g(x), \qquad g(x) = (x - a_1)(x - a_2)\cdots(x - a_n).$$
A korrekciós tag a régi $a_1, \dots, a_n$ helyeken $0$, tehát nem rontja el a régi értékeket; a $c$ konstanst pedig úgy választjuk meg, hogy
$$f(a_{n+1}) = f_0(a_{n+1}) + c\,g(a_{n+1}) = b_{n+1},$$
azaz
$$c = \frac{b_{n+1} - f_0(a_{n+1})}{g(a_{n+1})} = \frac{b_{n+1} - f_0(a_{n+1})}{(a_{n+1} - a_1)\cdots(a_{n+1} - a_n)}.$$
(A nevező nem nulla, mert az új alappont különbözik a régiektől.) Ugyanezt az eljárást az első alapponttól kezdve lépésenként alkalmazva kapjuk a **Newton-féle interpolációs polinomot**:
$$f(x) = c_0 + c_1(x - a_1) + c_2(x - a_1)(x - a_2) + \dots + c_{n-1}(x - a_1)\cdots(x - a_{n-1}).$$
(A $c_k$ együtthatók az úgynevezett **osztott differenciák**.)

**Példa (folytatás).** Az előbbi $f_0(x) = x^2 - x + 1$ polinomhoz jöjjön egy új adat: $f(4) = 14$. Most $f_0(4) = 13$, $g(x) = (x - 1)(x - 2)(x - 3)$, $g(4) = 6$, így
$$c = \frac{14 - 13}{6} = \frac{1}{6}, \qquad f(x) = x^2 - x + 1 + \frac{(x - 1)(x - 2)(x - 3)}{6}.$$
Ez a négy feltételt teljesítő (egyetlen) legfeljebb harmadfokú polinom.

## 17. Az itáliai reneszánsz: titkok, párbajok és magasabb fokú egyenletek

A másodfokú egyenlet ($ax^2 + bx + c = 0$) megoldása már az ókor óta ismert volt, a harmadfokú ($ax^3 + bx^2 + cx + d = 0$) viszont több mint ezer éven át ellenállt a matematikusoknak.

### Tartaglia és Cardano titka

- **Scipione del Ferro** (bolognai professzor) 1515 körül találta meg először egy speciális harmadfokú egyenlettípus ($x^3 + px = q$) megoldását, de titokban tartotta, és csak halála előtt árulta el tanítványának, Antonio Fiorénak.
- **Niccolò Fontana**, ismertebb nevén **Tartaglia** („dadogó” — gyermekkori sebesülése miatt dadogott) tőle függetlenül fedezte fel újra a képletet 1535 körül, amikor Fiore nyilvános matematikai párbajra hívta ki; Tartaglia megoldotta Fiore összes feladatát, és fölényesen győzött.
- **Gerolamo Cardano** 1539-ben szigorú titoktartási fogadalom ellenében kapta meg a képletet Tartagliától.

**A képlet nyilvánosságra kerül.** Cardano később megtudta, hogy a képletet del Ferro már Tartaglia előtt ismerte, ezért nem érezte magát kötve a fogadalomhoz: 1545-ben publikálta a harmadfokú egyenlet megoldóképletét *Ars Magna* („A nagy művészet”) című könyvében (megemlítve del Ferro és Tartaglia érdemeit). Tartaglia ezt sosem bocsátotta meg. A képlet egyben a komplex számok elméletének matematikai gyökere lett (lásd lejjebb a *casus irreducibilist*).

**Ferrari és a negyedfokú egyenlet.** Cardano tanítványa, **Lodovico Ferrari** oldotta meg a negyedfokú egyenletet. Zseniális ötlete az volt, hogy a negyedfokú egyenletet egy ügyes átalakítással **harmadfokúra vezette vissza**, amelyet már meg tudtak oldani. Ez is az *Ars Magná*-ban jelent meg; így 1545-re lezárult az alacsony fokú egyenletek megoldóképleteinek korszaka.

### Az ötödfokú egyenlet drámai megálljt parancsol

A matematikusok közel három évszázadon át hiába keresték az ötödfokú egyenlet ($ax^5 + \dots = 0$) megoldóképletét.

**Abel: a lehetetlenség bizonyítása.** A fiatal norvég matematikus, **Niels Henrik Abel** 1824-ben közölte bizonyítását (Paolo Ruffini 1799-es, hiányos gondolatmenetét teljessé téve), miszerint az ötöd- vagy magasabb fokú egyenletekre *általában* nem létezik olyan megoldóképlet, amely csak az alapműveleteket és gyökvonásokat használna (**Abel–Ruffini-tétel**). Ez nem azt jelenti, hogy egyetlen ötödfokú egyenlet sem oldható meg gyökjelekkel ($x^5 - 2 = 0$ például igen), hanem hogy nincs *minden* ötödfokú egyenletre működő képlet.

**Galois: a mélyebb igazság felfedezése.** A francia **Évariste Galois** dolgozta ki a témában a legmélyebb elméletet:

- megmutatta, milyen feltételek mellett oldható meg egy *adott* egyenlet gyökjelekkel (akkor és csak akkor, ha a gyökeinek szimmetriáit leíró csoport egy bizonyos tulajdonsággal, „feloldhatósággal” rendelkezik);
- munkája a csoportelmélet alkalmazásán alapult, és ezzel megszületett a modern absztrakt algebra;
- Galois mindössze 20 évesen, 1832-ben vesztette életét egy párbajban; elméletét csak halála után, 1846-ban publikálta Joseph Liouville.

### A harmadfokú egyenlet megoldóképlete

Tekintsünk egy
$$x^3 + a_2x^2 + a_1x + a_0 = 0$$
egyenletet (általános harmadfokú egyenlet esetén előbb osztunk a főegyütthatóval). **1. lépés: a négyzetes tag eltüntetése.** Írjunk $x$ helyébe $y - \frac{a_2}{3}$-at! Ekkor
$$\left(y - \frac{a_2}{3}\right)^3 + a_2\left(y - \frac{a_2}{3}\right)^2 + a_1\left(y - \frac{a_2}{3}\right) + a_0 = 0,$$
és a zárójeleket kifejtve az $y^2$-es tagok kiesnek ($-3 \cdot \frac{a_2}{3}y^2 + a_2y^2 = 0$):
$$y^3 + \left(a_1 - \frac{a_2^2}{3}\right)y + \left(\frac{2a_2^3}{27} - \frac{a_1a_2}{3} + a_0\right) = 0.$$
Tehát elegendő a **hiányos harmadfokú egyenletet** megoldani:
$$y^3 + ay + b = 0, \qquad a = a_1 - \frac{a_2^2}{3}, \qquad b = \frac{2a_2^3}{27} - \frac{a_1a_2}{3} + a_0.$$

**2. lépés: a Cardano-féle ötlet.** Keressük $y$-t $y = u + v$ alakban! Adott $y$-hoz $u$-t és $v$-t sokféleképpen választhatjuk, ezt a szabadságot fogjuk kihasználni. Behelyettesítve:
$$(u + v)^3 + a(u + v) + b = 0, \qquad u^3 + v^3 + 3uv(u + v) + a(u + v) + b = 0,$$
$$u^3 + v^3 + (3uv + a)(u + v) + b = 0. \qquad (17.1)$$
Mivel $u$-t és $v$-t szabadon választhattuk, feltehetjük, hogy úgy választjuk őket, hogy
$$3uv = -a$$
teljesüljön. Ekkor (17.1)-ből $u^3 + v^3 + b = 0$ marad. Tehát
$$u^3 + v^3 = -b, \qquad u^3v^3 = \left(-\frac{a}{3}\right)^3.$$
A Viète-formulák szerint $u^3$ és $v^3$ tehát a
$$z^2 + bz - \left(\frac{a}{3}\right)^3 = 0$$
másodfokú egyenlet gyökei (ezt az egyenletet nevezik a harmadfokú egyenlet **rezolvensének**):
$$u^3, v^3 = -\frac{b}{2} \pm \sqrt{\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3}.$$
Így
$$y = u + v = \sqrt[3]{-\frac{b}{2} + \sqrt{\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3}} + \sqrt[3]{-\frac{b}{2} - \sqrt{\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3}}.$$
Ez a harmadfokú egyenlet **Cardano-képlete**. (A komplex köbgyökök háromértékűek; a két köbgyököt úgy kell párosítani, hogy $uv = -\frac{a}{3}$ teljesüljön. Így pontosan három gyököt kapunk: ha $u_0, v_0$ egy jó pár, akkor a többi $u_0\varepsilon$, $v_0\varepsilon^2$ és $u_0\varepsilon^2$, $v_0\varepsilon$, ahol $\varepsilon$ primitív harmadik egységgyök.)

**Kidolgozott példa.** Oldjuk meg az $x^3 + 6x - 20 = 0$ egyenletet! Itt $a = 6$, $b = -20$, így
$$\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 = 100 + 8 = 108, \qquad u^3 = 10 + \sqrt{108} = 10 + 6\sqrt{3}, \qquad v^3 = 10 - 6\sqrt{3}.$$
Mivel $(1 + \sqrt{3})^3 = 1 + 3\sqrt{3} + 9 + 3\sqrt{3} = 10 + 6\sqrt{3}$ és $(1 - \sqrt{3})^3 = 10 - 6\sqrt{3}$, valamint $(1 + \sqrt{3})(1 - \sqrt{3}) = -2 = -\frac{a}{3}$, a valós gyök
$$x = (1 + \sqrt{3}) + (1 - \sqrt{3}) = 2.$$
(Ellenőrzés: $8 + 12 - 20 = 0$. A másik két gyök az $x^2 + 2x + 10$ tényező gyökei: $-1 \pm 3i$.)

### A *casus irreducibilis*

A **casus irreducibilis** („redukálhatatlan eset”) a harmadfokú egyenletnek az az esete, amikor **három különböző valós gyöke** van. Ekkor — bármilyen meglepő — a Cardano-képletben a négyzetgyökjel alatt negatív szám áll, $\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 < 0$, így a valós gyökök kifejezéséhez is elengedhetetlen a komplex számok használata. A XVI. században ez a jelenség játszott kulcsszerepet a komplex számok elfogadásában: rámutatott, hogy a „képzetes” számok nem csupán fölösleges furcsaságok, hanem a valós gyökök kiszámításához is szükségesek.

**Bombelli példája.** Az $x^3 - 15x - 4 = 0$ egyenletnek $x = 4$ gyöke ($64 - 60 - 4 = 0$), és a másik két gyöke ($-2 \pm \sqrt{3}$) is valós. A Cardano-képlet viszont ($a = -15$, $b = -4$) ezt adja:
$$\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 = 4 - 125 = -121, \qquad x = \sqrt[3]{2 + \sqrt{-121}} + \sqrt[3]{2 - \sqrt{-121}} = \sqrt[3]{2 + 11i} + \sqrt[3]{2 - 11i}.$$
Rafael Bombelli (1572) vette észre, hogy $(2 + i)^3 = 8 + 12i - 6 - i = 2 + 11i$, így a két köbgyök $2 + i$ és $2 - i$, összegük pedig éppen a valós $4$. Ez volt az első alkalom, hogy valaki a „lehetetlen” négyzetgyökökkel bátran tovább számolt — és helyes eredményt kapott.

### A negyedfokú egyenlet visszavezetése harmadfokúra (Ferrari módszere)

**Az egyenlet egyszerűsítése.** A teljes negyedfokú egyenlet $ax^4 + bx^3 + cx^2 + dx + e = 0$. Az $a$-val való osztás után:
$$x^4 + Px^3 + Qx^2 + Rx + S = 0.$$

**A harmadfokú tag eltüntetése.** Az $x = y - \frac{P}{4}$ helyettesítés eltünteti az $x^3$-ös tagot, és az úgynevezett **hiányos negyedfokú egyenletet** kapjuk:
$$y^4 + Ay^2 + By + C = 0,$$
ahol $A, B, C$ az eredeti együtthatóktól függenek. (Ha $B = 0$, az egyenlet $y^2$-ben másodfokú — ún. bikvadratikus —, és közvetlenül megoldható; tegyük fel ezért, hogy $B \ne 0$.)

**Ferrari trükkje: négyzetre kiegészítés egy paraméterrel.** Átcsoportosítva $y^4 + Ay^2 = -By - C$. Adjuk hozzá mindkét oldalhoz a $2\lambda y^2 + \lambda^2$ kifejezést, ahol $\lambda$ egy egyelőre szabad paraméter:
$$y^4 + 2\lambda y^2 + \lambda^2 = (2\lambda - A)y^2 - By + (\lambda^2 - C),$$
azaz a bal oldal teljes négyzet:
$$(y^2 + \lambda)^2 = (2\lambda - A)y^2 - By + (\lambda^2 - C).$$

**A jobb oldal is legyen teljes négyzet.** A jobb oldal $y$-ban másodfokú; akkor teljes négyzet, ha a diszkriminánsa nulla:
$$(-B)^2 - 4(2\lambda - A)(\lambda^2 - C) = 0.$$
Ezt kifejtve kapjuk a $\lambda$-ra vonatkozó **rezolvens harmadfokú egyenletet**:
$$8\lambda^3 - 4A\lambda^2 - 8C\lambda + (4AC - B^2) = 0.$$
Ezt a Cardano-képlettel megoldva kapunk egy $\lambda_0$ gyököt. (Mivel $B \ne 0$, $2\lambda_0 - A \ne 0$.)

**A megoldás befejezése.** $\lambda_0$-t visszahelyettesítve a jobb oldal teljes négyzet: $(2\lambda_0 - A)\left(y - \frac{B}{2(2\lambda_0 - A)}\right)^2$, így az egyenlet két négyzet különbségeként írható:
$$(y^2 + \lambda_0)^2 - \left(\sqrt{2\lambda_0 - A}\,\Big(y - \frac{B}{2(2\lambda_0 - A)}\Big)\right)^2 = 0.$$
Az $u^2 - v^2 = (u - v)(u + v)$ azonosságot alkalmazva az egyenlet **két másodfokú egyenletre bomlik**, amelyeket a megoldóképlettel megoldunk. Végül az $x = y - \frac{P}{4}$ visszahelyettesítéssel kapjuk az eredeti gyököket.

**Kidolgozott példa.** Oldjuk meg az $x^4 - 2x^2 - 8x - 3 = 0$ egyenletet! Itt nincs $x^3$-ös tag, így $y = x$, $A = -2$, $B = -8$, $C = -3$. A rezolvens:
$$8\lambda^3 + 8\lambda^2 + 24\lambda + (24 - 64) = 0, \qquad \lambda^3 + \lambda^2 + 3\lambda - 5 = 0,$$
amelynek egy gyöke $\lambda_0 = 1$ ($1 + 1 + 3 - 5 = 0$). Ekkor
$$(x^2 + 1)^2 = (2 + 2)x^2 + 8x + (1 + 3) = 4x^2 + 8x + 4 = (2x + 2)^2.$$
Tehát $x^2 + 1 = \pm(2x + 2)$, azaz
$$x^2 - 2x - 1 = 0 \quad \text{vagy} \quad x^2 + 2x + 3 = 0,$$
és a gyökök: $x = 1 \pm \sqrt{2}$, illetve $x = -1 \pm i\sqrt{2}$. (Ellenőrzés: $(x^2 - 2x - 1)(x^2 + 2x + 3) = x^4 - 2x^2 - 8x - 3$.)

## 18. A körosztási polinomok elmélete

A **körosztási polinomok** (ciklotomikus polinomok — a görög *kyklos* „kör” és *temnein* „vágni” szavakból) a matematika legszebb kapcsolódási pontjain helyezkednek el, az algebra, a geometria és a számelmélet határán.

Vizsgálatuk csúcspontja Carl Friedrich Gauss nevéhez fűződik, aki 1796-ban, 18 évesen, az egységgyökök segítségével bebizonyította a **szabályos 17-szög** euklideszi (körzővel és vonalzóval való) szerkeszthetőségét. Ez a felfedezés forradalmasította a szerkesztési feladatok elméletét: több mint kétezer év után ez volt az első új szabályos sokszög, amelynek szerkeszthetőségét igazolták (az ókori görögök a szabályos $3$-, $4$-, $5$- és $15$-szöget, valamint az oldalszámok duplázásával kapottakat tudták megszerkeszteni). Később a $\Phi_p(x)$ polinomok irreducibilitása vált alapvető fontosságúvá, amelyet a Schönemann–Eisenstein-kritérium elegánsan igazol (13. fejezet). A körosztási testek a Galois-elmélet egyik legalapvetőbb példáját alkotják: Galois-csoportjuk kommutatív (Abel-féle). Ernst Kummer a körosztási testeket használta a nagy Fermat-tétel részleges (reguláris prímkitevőkre vonatkozó) bizonyításához.

Mi most a körosztási polinomoknak csak a legalapvetőbb tulajdonságait nézzük meg.

### Egységgyökök, rend és primitív egységgyökök

Az **$n$-edik egységgyökök** azok a komplex számok, amelyek az $x^n - 1 = 0$ egyenlet gyökei (5. fejezet):
$$E_n = \left\{e^{\frac{2\pi ik}{n}} = \cos\frac{2\pi k}{n} + i\sin\frac{2\pi k}{n} \ \Big|\ k = 0, 1, \dots, n - 1\right\}.$$

- Egy $\varepsilon$ egységgyök **rendje** az a legkisebb $k$ pozitív egész, amelyre $\varepsilon^k = 1$.
- Egy $\varepsilon$ $n$-edik egységgyök **primitív $n$-edik egységgyök**, ha a rendje pontosan $n$ (vagyis hatványai az összes $n$-edik egységgyököt előállítják).
- **Számuk:** az $\varepsilon_k = e^{2\pi ik/n}$ egységgyök pontosan akkor primitív, ha $(k, n) = 1$; a primitív $n$-edik egységgyökök száma tehát $\varphi(n)$ (Euler-féle $\varphi$ függvény).

(Az utolsó állítás indoklása: $\varepsilon_k^m = 1 \iff n \mid km \iff \frac{n}{(k,n)} \mid m$, tehát $\varepsilon_k$ rendje $\frac{n}{(k, n)}$; ez a *Számelmélet Tankönyv* rendre vonatkozó tételeinek pontos megfelelője.) **Példa:** a hatodik egységgyökök közül primitív a $k = 1$ és $k = 5$-höz tartozó, $\frac{1}{2} \pm \frac{\sqrt{3}}{2}i$; az $\varepsilon_2, \varepsilon_4$ harmadrendű, $\varepsilon_3 = -1$ másodrendű, $\varepsilon_0 = 1$ elsőrendű.

### A körosztási polinom

> **18.1 Definíció.** Az **$n$-edik körosztási polinom**, $\Phi_n(x)$, az a normált polinom, amelynek gyökei pontosan a primitív $n$-edik egységgyökök (mindegyik egyszeres gyökként):
> $$\Phi_n(x) = \prod_{\substack{1 \le k \le n \\ (k, n) = 1}}\left(x - e^{\frac{2\pi ik}{n}}\right).$$
> Foka $\deg\Phi_n = \varphi(n)$.

> **18.2 Tétel (faktorizációs tétel).** Az $x^n - 1$ polinom felbomlik az $n$ osztóihoz tartozó körosztási polinomok szorzatára:
> $$x^n - 1 = \prod_{d \mid n}\Phi_d(x).$$

*Bizonyítás (vázlat).*

1. Az $x^n - 1$ gyökei pontosan az összes $n$-edik egységgyökök (mindegyik egyszeres gyök).
2. Minden $\varepsilon \in E_n$ rendje egy olyan $d$, amely osztója $n$-nek ($\varepsilon^n = 1$ miatt).
3. Minden $\varepsilon$ pontosan egy $d$-re primitív $d$-edik egységgyök (a saját rendjére).
4. Ezért az $n$-edik egységgyökök halmaza felbomlik a primitív $d$-edik egységgyökök halmazainak diszjunkt uniójára, ahol $d$ befutja $n$ osztóit. Mivel mindkét oldal normált, és ugyanazok az (egyszeres) gyökei, a két oldal egyenlő. $\blacksquare$

(A fokszámokat összehasonlítva éppen a $\sum_{d \mid n}\varphi(d) = n$ azonosságot kapjuk — a *Számelmélet Tankönyv* 17.22. Tételét.)

A faktorizációs tételből rekurzívan kiszámolhatók a körosztási polinomok:
$$\Phi_n(x) = \frac{x^n - 1}{\prod_{d \mid n,\ d < n}\Phi_d(x)}.$$
**Példák:**
$$\Phi_1(x) = x - 1, \qquad \Phi_2(x) = \frac{x^2 - 1}{\Phi_1(x)} = x + 1, \qquad \Phi_3(x) = \frac{x^3 - 1}{\Phi_1(x)} = x^2 + x + 1,$$
$$\Phi_4(x) = \frac{x^4 - 1}{\Phi_1(x)\Phi_2(x)} = \frac{x^4 - 1}{x^2 - 1} = x^2 + 1, \qquad \Phi_6(x) = \frac{x^6 - 1}{\Phi_1(x)\Phi_2(x)\Phi_3(x)} = \frac{x^6 - 1}{(x^3 - 1)(x + 1)} = x^2 - x + 1.$$
Továbbá prím $p$-re $\Phi_p(x) = \frac{x^p - 1}{x - 1} = x^{p-1} + x^{p-2} + \dots + x + 1$, például $\Phi_5(x) = x^4 + x^3 + x^2 + x + 1$; és $\Phi_8(x) = x^4 + 1$, $\Phi_{12}(x) = x^4 - x^2 + 1$.

::: kiegeszites
**Kiegészítés: a körosztási polinomok együtthatói egészek.** Ez a rekurzióból indukcióval következik: ha minden $d < n$-re $\Phi_d \in \mathbb{Z}[x]$ normált, akkor a nevezőben álló $\prod_{d \mid n, d < n}\Phi_d$ egész együtthatós normált polinom, és egy egész együtthatós polinomot egész együtthatós *normált* polinommal maradék nélkül osztva a hányados is egész együtthatós (a polinomosztás során csak a főegyütthatóval, $1$-gyel kell osztani). Meglepő módon a kis $n$-ekre az együtthatók mind $0$, $1$ vagy $-1$; az első kivétel $\Phi_{105}$, amelyben a $-2$ együttható is előfordul.
:::

> **18.3 Tétel (az irreducibilitás tétele).** Minden $\Phi_n(x)$ körosztási polinom irreducibilis a racionális együtthatós polinomok gyűrűjében, $\mathbb{Q}[x]$-ben.

**Megjegyzés.** A tétel általános bizonyítása (prím $n$-re már Gauss igazolta, az általános esetet Richard Dedekind bizonyította 1857-ben) a $\mathbb{Z}[x]$-beli irreducibilitás belátásán (az úgynevezett Gauss-lemma alkalmazásán) és a gyökök tulajdonságain alapul; ez az algebrai számelmélet egyik fontos tétele. Prím $n = p$ esetén a 13.2. Következményben bebizonyítottuk.

## Az V. rész összefoglalása

- **Viète-formulák:** normált polinom gyökeire $a_{n-k} = (-1)^ke_k(\lambda_1, \dots, \lambda_n)$; például a gyökök összege $-\frac{a_{n-1}}{a_n}$, szorzata $(-1)^n\frac{a_0}{a_n}$. A gyökök szimmetrikus kifejezései az együtthatókból kiszámolhatók. **Newton-azonosságok:** $p_k - e_1p_{k-1} + \dots + (-1)^kke_k = 0$.
- **Interpoláció:** $n$ különböző alappontra pontosan egy legfeljebb $(n-1)$-edfokú polinom vesz fel előírt értékeket. Lagrange-alak: $\sum b_i\ell_i(x)$; Newton-alak: új pont esetén $c\,(x - a_1)\cdots(x - a_n)$ korrekció.
- **Harmadfokú egyenlet:** $x = y - \frac{a_2}{3}$, majd $y = u + v$, $3uv = -a$; $u^3, v^3$ egy másodfokú rezolvens gyökei (Cardano-képlet). *Casus irreducibilis:* három valós gyök esetén a képlet komplex számokon keresztül vezet (Bombelli). **Negyedfokú:** Ferrari — négyzetre kiegészítés egy $\lambda$ paraméterrel, harmadfokú rezolvens. **Ötöd- és magasabb fokra** nincs általános gyökképlet (Abel–Ruffini); Galois-elmélet.
- **Körosztási polinomok:** $\Phi_n$ gyökei a primitív $n$-edik egységgyökök, $\deg\Phi_n = \varphi(n)$, $x^n - 1 = \prod_{d \mid n}\Phi_d$, egész együtthatósak és irreducibilisek $\mathbb{Q}$ felett.

## Feladatok az V. részhez

1. Ellenőrizzük a Viète-formulákat az $x^3 + 2x^2 - 5x - 6$ polinomon, ha tudjuk, hogy gyökei $-1$, $2$ és $-3$. Mennyi a $2x^3 - 3x^2 + 4x - 5$ polinom gyökei reciprokainak összege?
2. Legyenek $\lambda_1, \lambda_2, \lambda_3$ az $x^3 - x - 1$ polinom gyökei. Számítsuk ki $\lambda_1^2 + \lambda_2^2 + \lambda_3^2$ és $\lambda_1^3 + \lambda_2^3 + \lambda_3^3$ értékét a gyökök kiszámolása nélkül.
3. Keressük meg azt a legfeljebb másodfokú polinomot, amelyre $f(0) = 1$, $f(1) = 3$, $f(2) = 9$. Egészítsük ki Newton-módszerrel úgy, hogy $f(3) = 20$ is teljesüljön.
4. Oldjuk meg a Cardano-képlettel az $x^3 - 3x - 18 = 0$ egyenletet.
5. Az $x = y - 1$ helyettesítéssel hozzuk hiányos alakra az $x^3 + 3x^2 - 6x - 8 = 0$ egyenletet, és oldjuk meg.
6. Számítsuk ki $\Phi_9(x)$-et és $\Phi_{10}(x)$-et a faktorizációs tétel segítségével.
7. Bizonyítsuk be, hogy ha $p$ prím és $k \ge 1$, akkor $\Phi_{p^k}(x) = \Phi_p\left(x^{p^{k-1}}\right)$, és ezért $\Phi_{p^k}(1) = p$.

### Megoldási útmutatók

1. $e_1 = -2 = -a_2$, $e_2 = -2 + 3 - 6 = -5 = a_1$, $e_3 = 6 = -a_0$. ✓ A reciprokok összege $\frac{e_2}{e_3}$, ahol $e_2 = \frac{4}{2} = 2$ és $e_3 = -\frac{-5}{2} = \frac{5}{2}$; tehát $\frac{4}{5}$.
2. $e_1 = 0$, $e_2 = -1$, $e_3 = 1$. $p_2 = e_1^2 - 2e_2 = 2$; a Newton-azonosság szerint $p_3 = e_1p_2 - e_2p_1 + 3e_3 = 0 - 0 + 3 = 3$.
3. $f(x) = 2x^2 + 1$. Newton-kiegészítés: $f(3) = 19$ helyett $20$ kell, $g(3) = 3 \cdot 2 \cdot 1 = 6$, így $c = \frac{1}{6}$, és az új polinom $2x^2 + 1 + \frac{x(x - 1)(x - 2)}{6}$.
4. $a = -3$, $b = -18$; $\left(\frac{b}{2}\right)^2 + \left(\frac{a}{3}\right)^3 = 81 - 1 = 80$; $u^3 = 9 + 4\sqrt{5}$, $v^3 = 9 - 4\sqrt{5}$. Mivel $\left(\frac{3 + \sqrt{5}}{2}\right)^3 = 9 + 4\sqrt{5}$, a valós gyök $\frac{3 + \sqrt{5}}{2} + \frac{3 - \sqrt{5}}{2} = 3$; a másik kettő $x^2 + 3x + 6 = 0$ gyökei: $\frac{-3 \pm i\sqrt{15}}{2}$.
5. $a = -6 - 3 = -9$, $b = 2 + 6 - 8 = 0$: $y^3 - 9y = 0$, $y \in \{0, 3, -3\}$, így $x \in \{-1, 2, -4\}$.
6. $\Phi_9 = \frac{x^9 - 1}{\Phi_1\Phi_3} = \frac{x^9 - 1}{x^3 - 1} = x^6 + x^3 + 1$. $\Phi_{10} = \frac{x^{10} - 1}{\Phi_1\Phi_2\Phi_5} = \frac{x^{10} - 1}{(x^5 - 1)(x + 1)} = \frac{x^5 + 1}{x + 1} = x^4 - x^3 + x^2 - x + 1$.
7. A primitív $p^k$-adik egységgyökök pontosan azok a $z$-k, amelyekre $z^{p^{k-1}}$ primitív $p$-edik egységgyök; ezért $\Phi_p(x^{p^{k-1}})$ gyökei éppen ezek, és mindkét polinom normált, $\varphi(p^k) = p^{k-1}(p - 1)$-edfokú. $x = 1$-et helyettesítve $\Phi_p(1) = 1 + 1 + \dots + 1 = p$.

---
