# ELŐKÉSZÜLETEK: A MATEMATIKA NYELVE

Mielőtt a valós számokról bármit mondanánk, tisztáznunk kell, *hogyan* fogunk beszélni. A matematikai nyelv a hétköznapi nyelv egy szigorúbb változata: ugyanazokat a szavakat használja („és”, „vagy”, „ha … akkor”, „minden”, „van olyan”), de mindegyiknek pontosan rögzített jelentést ad. Ez a rész rövid; a benne szereplő szabályokat azonban az egész félév során folyamatosan használni fogjuk.

## A. Állítások és logikai műveletek

**Állításnak** nevezünk minden olyan kijelentést, amelyről egyértelműen eldönthető, hogy igaz vagy hamis. „A $7$ prímszám” igaz állítás; „$2 + 2 = 5$” hamis állítás; „Az $x$ szám pozitív” viszont nem állítás, amíg nem tudjuk, mi az $x$ — ez egy *változótól függő* állítás (állításforma), amely bizonyos $x$-ekre igaz, másokra hamis.

Állításokból logikai műveletekkel újabb állításokat képezhetünk. Legyen $A$ és $B$ két állítás.

- **Tagadás (negáció):** „nem $A$”, jelölése $\neg A$ vagy $\overline{A}$. Pontosan akkor igaz, ha $A$ hamis.
- **Konjunkció:** „$A$ és $B$”, jelölése $A \wedge B$. Pontosan akkor igaz, ha mindkettő igaz.
- **Diszjunkció:** „$A$ vagy $B$”, jelölése $A \vee B$. Pontosan akkor igaz, ha legalább az egyik igaz. A matematikai „vagy” tehát **megengedő**: ha mindkettő igaz, a „vagy” is igaz. (A hétköznapi nyelvben a „vagy” néha kizáró — „vagy jössz, vagy maradsz” —, a matematikában soha.)
- **Implikáció:** „ha $A$, akkor $B$”, jelölése $A \implies B$. Ez **csak akkor hamis, ha $A$ igaz és $B$ hamis**; minden más esetben igaz.
- **Ekvivalencia:** „$A$ akkor és csak akkor, ha $B$”, jelölése $A \iff B$. Pontosan akkor igaz, ha $A$ és $B$ igazságértéke megegyezik. Rövidítése: „acsa”.

Az implikáció igazságtáblája szokatlannak tűnhet, ezért nézzük meg közelebbről:

| $A$ | $B$ | $A \implies B$ |
|---|---|---|
| igaz | igaz | igaz |
| igaz | hamis | **hamis** |
| hamis | igaz | igaz |
| hamis | hamis | igaz |

Az utolsó két sor szerint hamis feltételből bármi következik. Ez egy ígérettel szemléltethető: „Ha holnap esik az eső, elviszlek autóval.” Ha nem esik az eső, akkor az ígéretet nem szegtem meg, akár elviszlek, akár nem. Az ígéret egyetlen esetben sérül: ha esik, és mégsem viszlek el.

**Szükséges és elégséges feltétel.** Az $A \implies B$ implikációt úgy is mondjuk, hogy „$A$ **elégséges** feltétele $B$-nek”, illetve „$B$ **szükséges** feltétele $A$-nak”. Például: „ha egy szám osztható $4$-gyel, akkor páros”. A $4$-gyel való oszthatóság elégséges a párossághoz (de nem szükséges: a $6$ páros, de nem osztható $4$-gyel); a párosság szükséges a $4$-gyel való oszthatósághoz (de nem elégséges). Az $A \iff B$ ekvivalencia azt jelenti, hogy $A$ szükséges **és** elégséges feltétele $B$-nek.

**Megfordítás és kontrapozíció.** Az $A \implies B$ implikáció **megfordítása** a $B \implies A$ implikáció, **kontrapozíciója** pedig a $\neg B \implies \neg A$ implikáció. A kettő között óriási a különbség:

- A kontrapozíció **mindig ekvivalens** az eredeti állítással. („Ha $4 \mid n$, akkor $n$ páros” ugyanazt mondja, mint „ha $n$ páratlan, akkor $4 \nmid n$”.)
- A megfordítás **nem feltétlenül** igaz. („Ha $n$ páros, akkor $4 \mid n$” hamis.)

Az analízis tételeinek jelentős része implikáció, és a félév során rendszeresen meg fogjuk vizsgálni, igaz-e a megfordításuk. Legtöbbször nem az — és az ellenpéldák legalább annyira tanulságosak, mint maguk a tételek.

**A tagadás szabályai.** Két szabályt (De Morgan azonosságait) érdemes fejben tartani:
$$\neg(A \wedge B) \iff (\neg A) \vee (\neg B), \qquad \neg(A \vee B) \iff (\neg A) \wedge (\neg B).$$
Ezen kívül az implikáció tagadása:
$$\neg(A \implies B) \iff A \wedge \neg B.$$
Szóval: „ha $A$, akkor $B$” akkor hamis, ha $A$ teljesül, $B$ pedig mégsem.

## B. Kvantorok és tagadásuk

A változótól függő állításokból kétféleképpen készíthetünk igazi állítást.

- **Univerzális kvantor:** „minden $x$-re $P(x)$”, jelölése $\forall x : P(x)$. Akkor igaz, ha $P(x)$ minden szóba jövő $x$-re igaz.
- **Egzisztenciális kvantor:** „van olyan $x$, amelyre $P(x)$”, jelölése $\exists x : P(x)$. Akkor igaz, ha legalább egy $x$-re igaz.

Gyakran a változó egy halmazból fut: $\forall x \in \mathbb{R} : x^2 \ge 0$ (igaz), $\exists x \in \mathbb{R} : x^2 = 2$ (igaz, de ezt majd csak a félév közepén tudjuk bebizonyítani!), $\exists x \in \mathbb{Q} : x^2 = 2$ (hamis — ez lesz a 2. szakasz tétele).

**A kvantorok sorrendje számít.** Hasonlítsuk össze:
$$\text{(a)} \quad \forall n \in \mathbb{N}\ \exists m \in \mathbb{N} : m > n, \qquad\qquad \text{(b)} \quad \exists m \in \mathbb{N}\ \forall n \in \mathbb{N} : m > n.$$
Az (a) azt mondja, hogy minden természetes számnál van nagyobb természetes szám — ez igaz (például $m = n + 1$). A (b) azt mondja, hogy van egy olyan természetes szám, amely *minden* természetes számnál nagyobb — ez hamis (önmagánál sem nagyobb). Az (a)-ban az $m$ függhet az $n$-től; a (b)-ben egyetlen $m$-nek kell minden $n$-re működnie. Ez a különbség az analízisben döntő lesz: a határérték definíciójában a küszöbindex függhet a megadott pontosságtól, és ezt a függést a kvantorok sorrendje fejezi ki.

**A kvantoros állítások tagadása.** A szabály egyszerű és gépiesen alkalmazható: **a tagadás „átugrik” a kvantorokon, és közben mindegyiket megfordítja** ($\forall$-ból $\exists$ lesz és viszont), a végén pedig a kvantormentes részt tagadjuk:
$$\neg\big(\forall x : P(x)\big) \iff \exists x : \neg P(x), \qquad \neg\big(\exists x : P(x)\big) \iff \forall x : \neg P(x).$$
Az első szabály szerint „nem igaz, hogy minden hattyú fehér” ugyanaz, mint „van nem fehér hattyú”. A második szerint „nem igaz, hogy van repülő ló” ugyanaz, mint „egyetlen ló sem repül”.

**Kidolgozott példa.** Később (a 18. szakaszban) így fogjuk definiálni, hogy az $(a_n)$ sorozat az $a$ számhoz tart:
$$\forall \varepsilon > 0\ \ \exists n_0 \in \mathbb{N}\ \ \forall n \ge n_0 : \ |a_n - a| < \varepsilon.$$
Most még nem kell értenünk, mit jelent; gyakoroljuk a tagadását. A szabály szerint mindhárom kvantor megfordul, és a végén a $<$ jelből $\ge$ lesz:
$$\exists \varepsilon > 0\ \ \forall n_0 \in \mathbb{N}\ \ \exists n \ge n_0 : \ |a_n - a| \ge \varepsilon.$$
Szavakban: van egy olyan $\varepsilon$ tűrés, hogy akármilyen késői $n_0$ indextől indulunk, utána is mindig találunk olyan tagot, amely legalább $\varepsilon$-nyira van $a$-tól. Ez a mondat a félév során sokszor elő fog kerülni, valahányszor azt akarjuk megmutatni, hogy valami *nem* tart valahova.

Figyeljük meg, hogy a kvantorok mellett álló korlátozások ($\varepsilon > 0$, $n \ge n_0$) a tagadásnál **nem változnak**: a tagadás a „$\varepsilon > 0$”-ból nem csinál „$\varepsilon \le 0$”-t. A korlátozás csak azt mondja meg, melyik halmazból fut a változó.

## C. Halmazok

A **halmaz** fogalmát nem definiáljuk, hanem alapfogalomnak tekintjük: dolgok összessége, amelyről minden dologról eldönthető, hogy beletartozik-e. Ha $x$ eleme az $A$ halmaznak, azt $x \in A$-val jelöljük, ha nem eleme, akkor $x \notin A$-val.

Halmazt megadhatunk elemei felsorolásával, mint $\{1, 2, 3\}$, vagy egy tulajdonsággal, mint
$$\{x \in \mathbb{R} : x^2 < 2\},$$
ami azon valós számok halmaza, amelyeknek a négyzete kisebb $2$-nél. A kettőspont (vagy függőleges vonal) olvasata: „amelyekre”.

**Alapfogalmak.**

- $A \subset B$ ($A$ **részhalmaza** $B$-nek), ha $A$ minden eleme $B$-nek is eleme: $\forall x : (x \in A \implies x \in B)$. Ebben a könyvben a $\subset$ jel megengedi az egyenlőséget is.
- $A = B$, ha $A \subset B$ és $B \subset A$. Két halmaz egyenlőségét tehát gyakran úgy bizonyítjuk, hogy mindkét tartalmazást külön igazoljuk.
- Az **üres halmaz**, $\emptyset$, az a halmaz, amelynek nincs eleme. Minden halmaznak részhalmaza (hiszen az „$x \in \emptyset \implies x \in B$” implikáció feltétele mindig hamis, tehát az implikáció mindig igaz).

**Műveletek.**
$$A \cup B = \{x : x \in A \vee x \in B\} \quad (\text{unió}), \qquad A \cap B = \{x : x \in A \wedge x \in B\} \quad (\text{metszet}),$$
$$A \setminus B = \{x : x \in A \wedge x \notin B\} \quad (\text{különbség}).$$
Végtelen sok halmaz uniója és metszete is értelmes: ha $A_1, A_2, \dots$ halmazok, akkor
$$\bigcup_{n=1}^{\infty} A_n = \{x : \exists n,\ x \in A_n\}, \qquad \bigcap_{n=1}^{\infty} A_n = \{x : \forall n,\ x \in A_n\}.$$

**Példa.** Legyen $A_n = \left(0, \frac{1}{n}\right)$, azaz azon $x$ valós számok halmaza, amelyekre $0 < x < \frac{1}{n}$. Ekkor $\bigcup_n A_n = (0, 1)$ (hiszen $A_1$ a legbővebb), míg a metszet üres: ha $x > 0$, akkor elég nagy $n$-re $\frac{1}{n} < x$, tehát $x \notin A_n$. (Az, hogy „elég nagy $n$-re $\frac{1}{n} < x$”, az arkhimédészi tulajdonság, amelyet a 9. szakaszban bizonyítunk.) Ezt a példát a 9. szakaszban újra elő fogjuk venni.

## D. Bizonyítási módszerek

Egy matematikai állítás bizonyítása olyan érvelés, amely az elfogadott alapállításokból (axiómákból) és a már bizonyított tételekből, logikai lépések láncolatával jut el az állításig. Néhány gyakori bizonyítási séma:

**Direkt bizonyítás.** Az $A \implies B$ bizonyításához feltesszük $A$-t, és lépésről lépésre levezetjük $B$-t.

**Indirekt bizonyítás (ellentmondással).** Feltesszük, hogy a bizonyítandó állítás hamis, és ebből ellentmondásra jutunk (olyan állításra, amely egyszerre igaz és hamis, vagy ellentmond egy ismert ténynek). Mivel az ellentmondás lehetetlen, a feltevésünk hamis volt, vagyis az állítás igaz. A 2. szakaszban így bizonyítjuk, hogy $\sqrt{2}$ nem racionális.

**Kontrapozíció.** Az $A \implies B$ helyett a vele ekvivalens $\neg B \implies \neg A$ állítást bizonyítjuk. Ez akkor hasznos, ha a „$B$ nem teljesül” feltevésből könnyebb dolgozni, mint az „$A$ teljesül”-ből. Az 50. szakasz átviteli elvének egyik iránya így készül.

**Ellenpélda.** Egy „minden $x$-re $P(x)$” alakú állítás cáfolatához elég **egyetlen** olyan $x$-et mutatni, amelyre $P(x)$ hamis. Ez a tagadás szabályából következik: $\neg \forall x\, P(x) \iff \exists x\, \neg P(x)$. Ezzel szemben egy „minden $x$-re” állítást **nem lehet** példák felsorolásával bizonyítani, akárhány példát is nézünk meg.

**Teljes indukció.** Természetes számokra vonatkozó állítássorozatok bizonyítására szolgál; az 5. szakaszban részletesen tárgyaljuk.

**Egy jótanács.** Bizonyítás olvasásakor mindig kérdezzük meg: *hol használtuk fel a feltételeket?* Ha egy feltétel sehol sem szerepelt, akkor vagy fölösleges volt, vagy — sokkal valószínűbb — nem értettük meg a bizonyítást.

---
