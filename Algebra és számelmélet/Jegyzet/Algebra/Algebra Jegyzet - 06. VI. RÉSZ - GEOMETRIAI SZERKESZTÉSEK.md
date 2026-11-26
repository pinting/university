# VI. RÉSZ: GEOMETRIAI SZERKESZTÉSEK

Az utolsó rész az egész félév anyagát egy régi, gyönyörű kérdésre alkalmazza: mit lehet megszerkeszteni körzővel és vonalzóval? Az algebrai nyelvre lefordított kérdésben a testek, a polinomok irreducibilitása (Schönemann–Eisenstein), a lineáris algebra (dimenzió) és a körosztási polinomok egyaránt szerepet kapnak — és a válasz kétezer éves rejtélyeket old meg.

## 19. Geometriai szerkesztések az algebra szemüvegén keresztül

Az ókori görög matematikusokat évezredeken át lázban tartotta néhány, látszólag rendkívül egyszerű geometriai feladat. Kikötésük szerint kizárólag egy ideális **körzőt** (amely „összecsukódik”, amint felemelik a papírról) és egy ideális **vonalzót** (amelyen nincsenek jelölések, így csak egyenesek húzására alkalmas) volt szabad használni. Három híres probléma különösen makacsnak bizonyult:

- **A kockakettőzés (déloszi probléma):** hogyan szerkeszthető egy adott kockánál pontosan kétszer akkora térfogatú kocka éle?
- **A szögharmadolás:** hogyan osztható fel egy tetszőleges szög három egyenlő részre?
- **A kör négyszögesítése:** hogyan szerkeszthető egy adott körrel egyenlő területű négyzet?

Bár a görögök zseniális geometriai trükköket ismertek, ezeket a feladatokat a megkövetelt eszközökkel nem tudták megoldani. Több mint kétezer évet kellett várni, amíg a XIX. században kiderült: a megoldás kulcsa nem a geometriában, hanem az **absztrakt algebrában** és a testbővítések elméletében rejlik — és a válasz mindhárom esetben az, hogy **a szerkesztés lehetetlen**.

### 19.1. A szerkeszthető számok teste

Hogyan fordíthatjuk le a körző és a vonalzó mozdulatait a matematika nyelvére? Tegyük fel, hogy adott két pont a síkon; tekintsük ezeket a komplex számsík $0$ és $1$ pontjának. Minden lépésben egyeneseket húzhatunk meglévő pontokon át, vagy köröket rajzolhatunk, amelyek középpontja és egy kerületi pontja már ismert. Az új pontokat ezen egyenesek és körök metszéspontjaiként kapjuk.

> **19.1 Definíció.** Egy $\alpha \in \mathbb{C}$ komplex számot **szerkeszthető számnak** nevezünk, ha (a komplex számsík pontjaként) véges sok lépésben megszerkeszthető körzővel és vonalzóval, a $0$ és $1$ pontokból kiindulva. (Ez ekvivalens azzal, hogy valós és képzetes része, mint szakaszhossz, szerkeszthető az egységszakaszból.)

Ha megnézzük a szerkesztési lépések algebrai megfelelőit, azt látjuk, hogy

1. két egyenes metszéspontja egy (kétismeretlenes) lineáris egyenletrendszer megoldása — ehhez csak a négy alapművelet ($+, -, \cdot, /$) kell;
2. egy egyenes és egy kör, vagy két kör metszéspontja egy másodfokú egyenletre vezet — ehhez négyzetgyökvonás is szükséges.

Fordítva, a négy alapművelet és a négyzetgyökvonás meg is szerkeszthető (párhuzamos szelők tétele, magasságtétel stb.). Ebből adódik a szerkeszthető számok legfontosabb algebrai tulajdonsága:

> **19.2 Tétel.** A szerkeszthető komplex számok halmaza **testet** alkot, amely a négyzetgyökvonásra is zárt: ha $\alpha, \beta$ szerkeszthető, akkor $\alpha + \beta$, $\alpha - \beta$, $\alpha\beta$, $\alpha/\beta$ ($\beta \ne 0$) és $\sqrt{\alpha}$ is az.

Ez azt jelenti, hogy egy szám pontosan akkor szerkeszthető, ha a racionális számokból kiindulva, az alapműveletek és véges sok egymásba ágyazott négyzetgyökvonás segítségével felírható. Például
$$\sqrt{1 + \sqrt{2}}, \qquad \frac{\sqrt{3} + \sqrt{5}}{2}, \qquad \sqrt{2 + \sqrt{2 + \sqrt{2}}}$$
szerkeszthetők. De vajon mi a helyzet a köbgyökökkel?

## 20. Az algebrai szám foka és a szerkeszthetőség kritériuma

Ahhoz, hogy egy $\alpha$ számról eldöntsük, felírható-e (egymásba ágyazott) négyzetgyökökkel, meg kell vizsgálnunk a hozzá tartozó legkisebb fokú polinomot.

> **20.1 Definíció.** Egy $\alpha \in \mathbb{C}$ számot **algebrai számnak** nevezünk, ha gyöke egy nem nulla, racionális együtthatós polinomnak. Az $\alpha$ **minimálpolinomja** az a legalacsonyabb fokú, normált $m(x) \in \mathbb{Q}[x]$ polinom, amelynek $\alpha$ gyöke. Az $\alpha$ algebrai szám **foka** a minimálpolinomjának foka; jele $\deg\alpha$.

Például $\sqrt{2}$ minimálpolinomja $x^2 - 2$, foka $2$; $\sqrt[3]{2}$ minimálpolinomja $x^3 - 2$ (lásd alább), foka $3$; egy racionális szám foka $1$. A minimálpolinom mindig irreducibilis $\mathbb{Q}$ felett (ha szorzatra bomlana, valamelyik tényezőnek $\alpha$ gyöke volna, és az kisebb fokú volna); megfordítva, ha egy normált, irreducibilis $\mathbb{Q}$ feletti polinomnak $\alpha$ gyöke, akkor az $\alpha$ minimálpolinomja.

Mivel a testbővítések általános elméletét még nem tanultuk, nézzük meg, mit jelent mindez a gyakorlatban, a **lineáris algebra** nyelvén! Amikor egy számhalmazhoz (például a racionális számok $\mathbb{Q}$ testéhez) hozzávesszük egy elemének négyzetgyökét (mondjuk $\sqrt{2}$-t), akkor az így kapott
$$\mathbb{Q}(\sqrt{2}) = \{a + b\sqrt{2} : a, b \in \mathbb{Q}\}$$
halmazt tekinthetjük $\mathbb{Q}$ feletti vektortérnek. Ez a halmaz a szorzásra és az osztásra is zárt (tehát testet alkot), hiszen
$$(a_1 + b_1\sqrt{2})(a_2 + b_2\sqrt{2}) = (a_1a_2 + 2b_1b_2) + (a_1b_2 + a_2b_1)\sqrt{2},$$
$$\frac{a_1 + b_1\sqrt{2}}{a_2 + b_2\sqrt{2}} = \frac{(a_1 + b_1\sqrt{2})(a_2 - b_2\sqrt{2})}{a_2^2 - 2b_2^2} = \frac{a_1a_2 - 2b_1b_2}{a_2^2 - 2b_2^2} + \frac{a_2b_1 - a_1b_2}{a_2^2 - 2b_2^2}\sqrt{2}$$
(a nevező nem nulla, ha $a_2 + b_2\sqrt{2} \ne 0$, mert $\sqrt{2}$ irracionális). Vegyük észre, hogy ez a vektortér pontosan **kétdimenziós**: az $\{1, \sqrt{2}\}$ elemek lineárisan független bázist alkotnak (egyetlen racionális számmal sem tudjuk kifejezni $\sqrt{2}$-t).

Ha ebből a testből veszünk egy újabb négyzetgyököt (például $\sqrt{1 + \sqrt{2}}$-t, amely nincs benne $\mathbb{Q}(\sqrt{2})$-ben), akkor az új vektortér dimenziója $\mathbb{Q}$ felett az előző kétszerese, $2 \times 2 = 4$ lesz (bázisa például $1, \sqrt{2}, \beta, \sqrt{2}\beta$, ahol $\beta = \sqrt{1 + \sqrt{2}}$).

Mivel a szerkesztés minden egyes lépése (körök és egyenesek metszéspontjainak kiszámítása) legfeljebb egy újabb négyzetgyökvonást jelent, az egymás után végrehajtott lépésekkel kapott számtestek dimenziója $\mathbb{Q}$ felett minden lépésben **legfeljebb megduplázódik** (vagy változatlan marad). Így véges sok négyzetgyökvonás után olyan testhez jutunk, amelynek dimenziója a racionális számok felett szükségképpen $2$ egy hatványa: $1, 2, 4, 8, 16, \dots$ Ha egy $\alpha$ szám benne van ebben a testben, akkor az ő „generálási mérete”, a minimálpolinomjának foka sem lehet nagyobb a teljes tér dimenziójánál, sőt (a testbővítések úgynevezett fokszámtétele szerint) **osztója** annak. Ebből a lineáris algebrai összefüggésből következik a Pierre Wantzel által 1837-ben bizonyított kritérium:

> **20.2 Tétel (Wantzel-kritérium).** Ha az $\alpha$ algebrai szám szerkeszthető körzővel és vonalzóval, akkor $\alpha$ foka a racionális számtest felett szükségképpen $2$ valamely nemnegatív egész kitevős hatványa:
> $$\deg\alpha = 2^m \qquad (m \in \mathbb{N}).$$

**Megjegyzés.** A megfordítás általában nem igaz (ennek pontos feltételét a Galois-elmélet adja meg, másod- vagy harmadévben), de a tétel kiválóan alkalmas arra, hogy bizonyos számokról bebizonyítsuk: **lehetetlen őket megszerkeszteni.**

### 20.1. Az ókori problémák algebrai bukása

**A kockakettőzés (déloszi probléma).** Egy egységnyi élű kocka térfogata $1$. A kétszer akkora térfogatú kocka $x$ élhosszára $x^3 = 2$, azaz $x = \sqrt[3]{2}$. Ennek $\mathbb{Q}$ feletti minimálpolinomja $f(x) = x^3 - 2$, amely a Schönemann–Eisenstein-kritérium szerint ($p = 2$) irreducibilis $\mathbb{Q}[x]$-ben. Így $\sqrt[3]{2}$ foka pontosan $3$, ami nem kettőhatvány. A Wantzel-kritérium szerint tehát: **a kockakettőzés körzővel és vonalzóval lehetetlen!**

**A szögharmadolás rejtélye.** Felosztható-e minden szög három egyenlő részre? Megmutatjuk, hogy a $60°$-os szög **nem** harmadolható, azaz a $20°$-os szög nem szerkeszthető. A trigonometriából ismert háromszoros szög képlete:
$$\cos(3\alpha) = 4\cos^3\alpha - 3\cos\alpha.$$
Ha $\alpha = 20°$, akkor $3\alpha = 60°$, és $\cos 60° = \frac{1}{2}$. Legyen $x = \cos 20°$; ekkor
$$\frac{1}{2} = 4x^3 - 3x \quad \Longrightarrow \quad 8x^3 - 6x - 1 = 0.$$
Az $y = 2x$ helyettesítéssel az egyenlet $y^3 - 3y - 1 = 0$ alakú. A racionális gyökteszt szerint ennek racionális gyöke csak $\pm 1$ lehetne, de $1 - 3 - 1 = -3 \ne 0$ és $-1 + 3 - 1 = 1 \ne 0$; egy harmadfokú polinom pedig, amelynek nincs racionális gyöke, irreducibilis $\mathbb{Q}$ felett (ha felbontható volna, lenne elsőfokú tényezője, azaz racionális gyöke). Tehát $y = 2\cos 20°$ — és így $\cos 20°$ is — pontosan harmadfokú algebrai szám. Mivel a fok nem $2^m$ alakú, a Wantzel-kritérium szerint $\cos 20°$ nem szerkeszthető.

> **20.3 Következmény.** Mivel egy szög szerkesztése ekvivalens a koszinuszának (mint szakaszhossznak) a szerkesztésével, **a tetszőleges szög harmadolása körzővel és vonalzóval általában lehetetlen.** (Bizonyos szögeké persze lehetséges: például a $90°$-os szög harmadolható, mert a $30°$-os szög szerkeszthető.)

**A kör négyszögesítése.** Az egységsugarú kör területe $\pi$, így a vele egyenlő területű négyzet oldala $\sqrt{\pi}$. Ha ez szerkeszthető volna, akkor $\pi = (\sqrt{\pi})^2$ is szerkeszthető, tehát algebrai szám volna. Ferdinand von Lindemann azonban 1882-ben bebizonyította, hogy **$\pi$ transzcendens** (nem gyöke semmilyen nem nulla racionális együtthatós polinomnak). Így a kör négyszögesítése is lehetetlen — ehhez azonban már a Wantzel-kritériumnál jóval mélyebb eszköz kell.

## 21. Gauss diadala: a szabályos 17-szög szerkeszthetősége

Carl Friedrich Gauss még tinédzser volt, amikor 1796-ban rájött, hogy a szabályos $n$-szög szerkeszthetősége teljesen egyenértékű az $x^n - 1 = 0$ egyenlet gyökeinek, az $n$-edik egységgyököknek a szerkeszthetőségével (a szabályos $n$-szög csúcsai az egységkörön éppen ezek). Tudjuk, hogy a primitív $n$-edik egységgyökök a $\Phi_n(x)$ körosztási polinom gyökei, amelynek foka $\varphi(n)$, és amely irreducibilis; így egy primitív $n$-edik egységgyök foka éppen $\varphi(n)$.

Gauss megmutatta, hogy a szabályos $n$-szög pontosan akkor szerkeszthető, ha a $\Phi_n(x)$ körosztási polinom gyökei egymásba ágyazott másodfokú bővítésekkel elérhetők, ami csakis akkor lehetséges, ha **$\varphi(n)$ maga is $2$ hatványa**. Ez elvezet a ritka és különleges **Fermat-prímekhez**, amelyek $F_k = 2^{2^k} + 1$ alakúak ($k \in \mathbb{N}$); ilyen prím például a $3, 5, 17, 257, 65537$. (A *Számelmélet Tankönyv* 2. fejezete szerint ha $2^a + 1$ prím, akkor $a$ kettőhatvány; és $p$ prímre $\varphi(p) = p - 1$ pontosan akkor kettőhatvány, ha $p$ Fermat-prím.)

> **21.1 Tétel (Gauss–Wantzel-tétel).** A szabályos $n$-szög ($n \ge 3$) pontosan akkor szerkeszthető körzővel és vonalzóval, ha $n$ felírható $2$ egy hatványának és tetszőleges számú **különböző** Fermat-prímnek a szorzataként:
> $$n = 2^k \cdot p_1 \cdot p_2 \cdots p_r.$$

(Az elégségességet Gauss bizonyította 1801-ben, a szükségességet Wantzel 1837-ben. A feltétel ekvivalens azzal, hogy $\varphi(n)$ kettőhatvány.)

Ezért szerkeszthető a szabályos háromszög ($\varphi(3) = 2$), a szabályos ötszög ($\varphi(5) = 4$), és a híres szabályos 17-szög is, hiszen $\varphi(17) = 16 = 2^4$. Nem szerkeszthető viszont például a szabályos hétszög ($\varphi(7) = 6$) és a szabályos kilencszög ($\varphi(9) = 6$ — ez egyben a $20°$-os szög szerkeszthetetlenségének újabb bizonyítéka, hiszen a kilencszög középponti szöge $40°$). A $40$-nél nem nagyobb $n$-ek közül a szabályos $n$-szög pontosan a következő esetekben szerkeszthető:
$$n = 3, 4, 5, 6, 8, 10, 12, 15, 16, 17, 20, 24, 30, 32, 34, 40.$$

**Gauss képlete.** Gauss konkrétan meg is adta $\cos\frac{2\pi}{17}$ értékét egymásba ágyazott négyzetgyökökkel:
$$16\cos\frac{2\pi}{17} = -1 + \sqrt{17} + \sqrt{34 - 2\sqrt{17}} + 2\sqrt{17 + 3\sqrt{17} - \sqrt{34 - 2\sqrt{17}} - 2\sqrt{34 + 2\sqrt{17}}}.$$
Mivel csak négyzetgyökök szerepelnek benne, a 19.2. Tétel szerint $\cos\frac{2\pi}{17}$ szerkeszthető, és vele a szabályos 17-szög is. Gauss állítólag annyira büszke volt erre a felfedezésére, hogy azt kérte, a sírkövére egy szabályos 17-szöget véssenek (a braunschweigi Gauss-emlékmű talapzatán végül egy 17-ágú csillag látható).

## A VI. rész összefoglalása

- **Szerkeszthető számok:** a $0$-ból és $1$-ből körzővel és vonalzóval kapható komplex számok; testet alkotnak, amely zárt a négyzetgyökvonásra. Egy szám pontosan akkor szerkeszthető, ha racionálisokból alapműveletekkel és véges sok egymásba ágyazott négyzetgyökvonással megkapható.
- **Algebrai szám foka:** a minimálpolinom (legkisebb fokú normált $\mathbb{Q}$-beli polinom) foka. **Wantzel:** szerkeszthető szám foka $2$-hatvány. (Indok: minden négyzetgyökvonás legfeljebb megduplázza a dimenziót $\mathbb{Q}$ felett.)
- **A három ókori probléma:** a kockakettőzés ($\sqrt[3]{2}$, foka $3$) és a szögharmadolás ($\cos 20°$, foka $3$) lehetetlen; a kör négyszögesítése is ($\pi$ transzcendens, Lindemann 1882).
- **Gauss–Wantzel:** a szabályos $n$-szög pontosan akkor szerkeszthető, ha $n = 2^k p_1 \cdots p_r$ különböző Fermat-prímekkel, azaz ha $\varphi(n)$ kettőhatvány. Így szerkeszthető a 17-szög (Gauss, 1796), de nem szerkeszthető a 7- és a 9-szög.

## Feladatok a VI. részhez

1. Mutassuk meg, hogy $\sqrt{2 + \sqrt{3}}$ szerkeszthető, és határozzuk meg a minimálpolinomját. Mennyi a foka?
2. Határozzuk meg $\sqrt{2} + \sqrt{3}$ minimálpolinomját.
3. Szerkeszthető-e $\sqrt[3]{3}$? És $\sqrt[4]{3}$?
4. Az $51$, $85$, $255$, $257$, $1000$ számok közül melyikre szerkeszthető a szabályos $n$-szög?
5. Mutassuk meg, hogy a $3°$-os szög szerkeszthető, a $40°$-os viszont nem.
6. Bizonyítsuk be, hogy a szabályos ötszög szerkeszthető, közvetlenül a $\cos 72° = \frac{\sqrt{5} - 1}{4}$ képlet segítségével (II. rész, 6. feladat).

### Megoldási útmutatók

1. Csak négyzetgyököket tartalmaz, tehát szerkeszthető. $x^2 = 2 + \sqrt{3}$, $(x^2 - 2)^2 = 3$, azaz $x^4 - 4x^2 + 1 = 0$. Ez irreducibilis $\mathbb{Q}$ felett (nincs racionális gyöke, és az $(x^2 + ax + b)(x^2 - ax + b)$ alakú felbontás $b = \pm 1$, $a^2 = 6$ vagy $a^2 = 2$ miatt nem lehet racionális, az $(x^2 + b)(x^2 + d)$ alakú pedig $b, d = -2 \pm \sqrt{3}$ miatt szintén nem), így a fok $4 = 2^2$. (Egyébként $\sqrt{2 + \sqrt{3}} = \frac{\sqrt{6} + \sqrt{2}}{2}$.)
2. $x = \sqrt{2} + \sqrt{3}$, $x^2 = 5 + 2\sqrt{6}$, $(x^2 - 5)^2 = 24$: $x^4 - 10x^2 + 1$ (irreducibilis; a fok $4$).
3. $\sqrt[3]{3}$ nem: $x^3 - 3$ Eisenstein-polinom ($p = 3$), a fok $3$. $\sqrt[4]{3} = \sqrt{\sqrt{3}}$ igen: két egymásba ágyazott négyzetgyök.
4. $51 = 3 \cdot 17$, $85 = 5 \cdot 17$, $255 = 3 \cdot 5 \cdot 17$, $257$ (Fermat-prím) — mind szerkeszthető; $1000 = 2^3 \cdot 5^3$ nem, mert az $5$ többször szerepel ($\varphi(1000) = 400$ nem kettőhatvány).
5. $3° = 18° - 15°$; a $36°$ (szabályos ötszög) felezésével kapjuk a $18°$-ot, a $15° = 60° - 45°$ is szerkeszthető, és szögek különbsége szerkeszthető. A $40°$ nem: ha szerkeszthető volna, a felezésével a $20°$ is az volna (vagy: a szabályos kilencszög középponti szöge $40°$, és $\varphi(9) = 6$).
6. A $\cos 72°$ csak négyzetgyököt tartalmaz, tehát szerkeszthető, így a $72°$-os középponti szög és vele a szabályos ötszög is.

---
