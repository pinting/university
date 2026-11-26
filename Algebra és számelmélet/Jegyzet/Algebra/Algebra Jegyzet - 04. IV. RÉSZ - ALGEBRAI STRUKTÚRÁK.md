# IV. RÉSZ: ALGEBRAI STRUKTÚRÁK

Az eddigiekben sokféle „számolható” objektummal találkoztunk: egész számokkal, maradékosztályokkal, polinomokkal, mátrixokkal, permutációkkal, komplex számokkal. Mindegyiken volt valamilyen összeadás és/vagy szorzás, és ezek hol ugyanazoknak a szabályoknak engedelmeskedtek, hol nem (a mátrixszorzás például nem kommutatív, $\mathbb{Z}_8$-ban vannak nullosztók). A negyedik rész ezeket a közös vonásokat **absztrakt fogalmakká** formálja: csoport, gyűrű, test. Ennek a szemléletnek az ereje, hogy egy tételt egyszer kell bebizonyítani, és utána minden olyan struktúrában érvényes, amely kielégíti a feltételeket. A rész végén az euklideszi gyűrűkben a számelmélet alaptételét is általános formában igazoljuk.

## 11. Csoportok, gyűrűk, testek

### Történeti áttekintés

1. A modern algebra alapstruktúrái — a csoportok, gyűrűk és testek — a XIX. században születtek meg, bár hasonló ötleteket már korábban is használtak.
2. A legelső struktúra, a **csoport** elmélete a magasabb fokú algebrai egyenletek megoldhatóságának rejtélyéből nőtt ki.
3. Évariste Galois francia matematikus 1830 körül jött rá, hogy egy egyenlet gyökjelekkel való megoldhatósága a gyökök közötti felcserélések (szimmetriák) **csoportjától** függ.
4. A **testek** (például a racionális, valós, komplex számok) fogalma a számelméletben gyökerezik: a cél a számolási szabályok általánosítása volt.
5. A test fogalmát (*Körper*) Richard Dedekind vezette be 1871-ben — még a komplex számok olyan részhalmazaiként, amelyek zártak a négy alapműveletre —; az absztrakt, axiomatikus definíciót Heinrich Weber adta meg 1893-ban.
6. A **gyűrűk** a harmadik típusú struktúrák, amelyek a testekhez hasonlóan két műveletet (összeadást és szorzást) használnak, de a szorzásra nézve nem feltétlenül van minden elemnek inverze. Tanulmányozásuk az algebrai számelméletből ered: Dedekind 1871-ben definiálta egy számtest egészeinek gyűrűjét, és bevezette az **ideál** fogalmát, amely a gyűrűelmélet alapja lett (a „gyűrű”, *Zahlring* elnevezés David Hilberttől származik, 1897).
7. A XX. század elején Emmy Noether tette teljessé a gyűrűelmélet absztrakcióját: általános axiómákból, minden konkrét példától függetlenül építette fel.
8. Ez az absztrakt algebrai „forradalom” tette lehetővé, hogy a matematikusok egyszerre vizsgálhassák az összes hasonló tulajdonságú rendszert.
9. Ma ezek a struktúrák adják a lineáris algebra (testek mint skalárok) és a modern kódelmélet és kriptográfia (véges testek) alapját.

### Gyengébb struktúrák: grupoid, félcsoport, monoid

A XX. században, különösen Emmy Noether munkája nyomán, a matematikusok a csoportnál gyengébb algebrai szabályrendszereket is vizsgálni kezdték. Ez segít megérteni, melyik szabály (axióma) pontosan milyen tulajdonságért felelős. Bár a következő fogalmak (grupoid, félcsoport, monoid) nem első éves vizsgaanyagok, érdemes ismerni őket, mert algebrai cikkekben gyakran találkozunk velük.

Ha adott egy $G$ halmaz és rajta egy $\oplus$ kétváltozós művelet (azaz minden $a, b \in G$ párhoz egy $a \oplus b \in G$ elem), akkor a $\langle G, \oplus\rangle$ struktúrát **grupoidnak** nevezzük.

**Példa.** $\langle \mathbb{Z}, \oplus\rangle$, ahol
$$a \oplus b = ab + a + b$$
minden $a, b \in \mathbb{Z}$-re (itt $+$ és $\cdot$ a szokásos összeadás és szorzás).

*Asszociatív-e a művelet,* azaz $a \oplus (b \oplus c) = (a \oplus b) \oplus c$ minden $a, b, c$-re? Számoljunk:
$$a \oplus (b \oplus c) = a \oplus (bc + b + c) = a(bc + b + c) + a + (bc + b + c) = abc + ab + ac + bc + a + b + c,$$
$$(a \oplus b) \oplus c = (ab + a + b) \oplus c = (ab + a + b)c + (ab + a + b) + c = abc + ab + ac + bc + a + b + c.$$
A kettő megegyezik, tehát **a művelet asszociatív.** Az asszociatív grupoidot **félcsoportnak** nevezzük.

A $\langle G, \oplus\rangle$ grupoidban $e$ **egységelem**, ha minden $g \in G$-re $e \oplus g = g \oplus e = g$. *Van-e egységelem a példánkban?* Ha $e$ egységelem, akkor minden $a$-ra $a \oplus e = ae + a + e = a$, azaz $e(a + 1) = 0$, ami minden $a$-ra csak $e = 0$ esetén teljesül. A $0$ valóban egységelem: $a \oplus 0 = 0 \oplus a = a \cdot 0 + a + 0 = a$. Az egységelemes félcsoportot **monoidnak** nevezzük.

::: kiegeszites
**Kiegészítés: mi van a példa mögött?** Vegyük észre, hogy $a \oplus b = ab + a + b = (a + 1)(b + 1) - 1$. Ha tehát minden számot eggyel eltolunk ($\varphi(a) = a + 1$), akkor $\varphi(a \oplus b) = \varphi(a)\varphi(b)$: a $\oplus$ művelet „álruhás” szorzás. Ez azonnal megmagyarázza az asszociativitást (a szorzás asszociatív), azt, hogy az egységelem a $0$ (mert $\varphi(0) = 1$), és azt is, hogy mely elemeknek van inverze: azoknak, amelyekre $a + 1$-nek van egész reciproka, azaz $a + 1 = \pm 1$, $a \in \{0, -2\}$.
:::

Lássuk viszont, mi a vizsgaanyag!

> **11.1 Definíció.** A $\langle G, \oplus\rangle$ struktúra **csoport** a $\oplus$ kétváltozós műveletre nézve, ha teljesülnek a következők:
>
> 1. $\oplus$ **asszociatív**: minden $a, b, c \in G$-re $a \oplus (b \oplus c) = (a \oplus b) \oplus c$;
> 2. van **egységelem**: van olyan $e \in G$, hogy minden $g \in G$-re $g \oplus e = e \oplus g = g$;
> 3. minden elemnek van **inverze**: minden $a \in G$-hez van olyan $b \in G$, hogy $a \oplus b = b \oplus a = e$.

*Csoport-e az előbbi $\langle \mathbb{Z}, \oplus\rangle$?* Az egységelem csak a $0$ lehet. Kérdés, hogy minden $a \in \mathbb{Z}$-hez van-e olyan $b \in \mathbb{Z}$, amelyre $ab + a + b = 0$, azaz $b(a + 1) = -a$, $b = -\frac{a}{a + 1}$. Például $a = 1$ inverze csak $-\frac{1}{2}$ lehetne, ami nem egész. Tehát a $\langle \mathbb{Z}, \oplus\rangle$ monoid **nem csoport.**

**Kommutatív csoport**, más néven **Abel-csoport** az olyan csoport, amelyben a művelet kommutatív: $a \oplus b = b \oplus a$ minden $a, b$-re.

**Példák Abel-csoportokra:** $\langle \mathbb{Z}, +\rangle$, $\langle \mathbb{Q}, +\rangle$, $\langle \mathbb{R}, +\rangle$, $\langle \mathbb{C}, +\rangle$, $\langle \mathbb{Z}_m, +\rangle$, $\langle \mathbb{C}[x], +\rangle$, az $n \times m$-es valós mátrixok a mátrixösszeadással, $\langle \mathbb{Q} \setminus \{0\}, \cdot\rangle$, $\langle \mathbb{R} \setminus \{0\}, \cdot\rangle$, és az $n$-edik komplex egységgyökök $\langle\{\varepsilon : \varepsilon^n = 1\}, \cdot\rangle$. (Ellenőrizzük például az utolsót: két egységgyök szorzata és egy egységgyök reciproka is egységgyök, az $1$ egységelem.)

**Nem csoportok:** $\langle \mathbb{N}, +\rangle$ (az $1$-nek nincs inverze), $\langle \mathbb{Z}, \cdot\rangle$ (a $2$-nek nincs inverze), $\langle \mathbb{Q}, \cdot\rangle$ (a $0$-nak nincs inverze).

**Példák nem kommutatív csoportokra:**

1. Az $n$ elemű permutációk $S_n$ csoportja a kompozícióra nézve ($n \ge 3$ esetén nem kommutatív, lásd a 8. fejezetet). Ezt **szimmetrikus csoportnak** nevezzük.
2. Egy szabályos $n$-szög szimmetriáinak csoportja, a $D_n$ **diédercsoport**: $n$ forgatás (a $0°$-osat is beleértve) és $n$ tükrözés, összesen $2n$ elem, a művelet az egymás utáni végrehajtás. Ez $n \ge 3$ esetén nem kommutatív, mert egy forgatás és egy tükrözés sorrendje általában megváltoztatja a végeredményt. Egy STOP-tábla (szabályos nyolcszög) szimmetriái például a $16$ elemű $D_8$ csoportot alkotják.

> **11.2 Feladat.** Adjuk meg az $n \times n$-es, $K$ test feletti mátrixoknak egy olyan részhalmazát, amely a mátrixszorzással csoportot alkot!

*Megoldás.* A $K$ feletti invertálható (nem szinguláris) $n \times n$-es mátrixok halmaza:
$$GL(n, K) = \{A \in K^{n \times n} \mid \det A \ne 0\}.$$
Ez csoport: két invertálható mátrix szorzata invertálható (szorzástétel, illetve $(AB)^{-1} = B^{-1}A^{-1}$), az egységmátrix benne van, minden elem inverze is invertálható, a mátrixszorzás asszociatív. Hasonlóan csoport az $1$ determinánsú mátrixok halmaza:
$$SL(n, K) = \{A \in K^{n \times n} \mid \det A = 1\}.$$
($GL$ = *general linear*, $SL$ = *special linear*.) Mindkettő $n \ge 2$ esetén nem kommutatív csoport.

> **11.3 Feladat.** Mely $m \ge 2$ természetes számokra csoport $\langle \mathbb{Z}_m \setminus \{0\}, \cdot\rangle$?

*Megoldás.* Pontosan akkor, ha $m$ prím.

1. A struktúra akkor csoport, ha a halmaz zárt a szorzásra, és minden elemének van multiplikatív inverze modulo $m$ (az asszociativitás és az egységelem, az $1$, megvan).
2. Egy $a$ elemnek pontosan akkor van inverze $\mathbb{Z}_m$-ben, ha $(a, m) = 1$ (ez a lineáris kongruenciák elméletéből ismert: az $ax \equiv 1 \pmod m$ kongruencia pontosan ekkor oldható meg).
3. Ahhoz tehát, hogy $\mathbb{Z}_m \setminus \{0\}$ minden eleme ($1, 2, \dots, m - 1$) invertálható legyen, minden $m$-nél kisebb pozitív számnak relatív prímnek kell lennie $m$-hez.
4. Ez pontosan a prímszámokra teljesül: ha $m$ összetett, $m = ab$ ($1 < a, b < m$), akkor $(a, m) = a > 1$, így $a$ nem invertálható — sőt ekkor a halmaz a szorzásra sem zárt, hiszen $a \cdot b = 0 \notin \mathbb{Z}_m \setminus \{0\}$.
5. Tehát $\langle \mathbb{Z}_m \setminus \{0\}, \cdot\rangle$ pontosan akkor csoport, ha $m$ prím.

### Gyűrűk és testek

> **11.4 Definíció.** Az $\langle R, \oplus, \otimes\rangle$ struktúra **gyűrű**, ha az $R$ halmazon két kétváltozós művelet adott, egy összeadás ($\oplus$) és egy szorzás ($\otimes$), és teljesülnek a következők: $\langle R, \oplus\rangle$ kommutatív csoport; a szorzás asszociatív:
> $$a \otimes (b \otimes c) = (a \otimes b) \otimes c;$$
> és érvényes mindkét oldali disztributivitás:
> $$a \otimes (b \oplus c) = (a \otimes b) \oplus (a \otimes c), \qquad (a \oplus b) \otimes c = (a \otimes c) \oplus (b \otimes c).$$

> **11.5 Definíció.** Egy gyűrű **kommutatív**, ha a szorzás kommutatív.
>
> **11.6 Definíció.** Egy gyűrű **egységelemes**, ha a szorzásra nézve van egységelem; jele $1$.
>
> **11.7 Definíció.** Az $R$ gyűrű **nulleleme** az $\langle R, \oplus\rangle$ csoport egységeleme: $a \oplus 0 = 0 \oplus a = a$ minden $a \in R$-re.
>
> **11.8 Definíció.** **Test** az olyan egységelemes, kommutatív gyűrű (amelyben $1 \ne 0$), amelyben minden nem nulla elemnek van inverze a szorzásra nézve.

Általában egy gyűrűben az összeadást egyszerűen $+$-szal, a szorzást $\cdot$-tal jelöljük.

**Példák.** Gyűrű: $\mathbb{Z}$, $\mathbb{Z}_m$, $\mathbb{Z}[x]$, $\mathbb{R}[x]$, a Gauss-egészek $\mathbb{Z}[i]$, az $n \times n$-es valós mátrixok (ez utóbbi nem kommutatív, $n \ge 2$-re). Test: $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$, és — mint hamarosan látjuk — $\mathbb{Z}_p$, ha $p$ prím. Nem test: $\mathbb{Z}$ (a $2$-nek nincs inverze), $\mathbb{R}[x]$ (az $x$-nek nincs inverze), $\mathbb{Z}_6$.

> **11.9 Feladat.** Bizonyítsuk be, hogy ha $R$ gyűrű, akkor minden $a, b \in R$-re
>
> 1. $0 \cdot a = a \cdot 0 = 0$;
> 2. $(-a)b = a(-b) = -ab$;
> 3. ha $R$ egységelemes, és $a$ és $b$ invertálható, akkor $ab$ is az, és inverze $b^{-1}a^{-1}$.

*Megoldás.* 1. A disztributivitás szerint $0a = (0 + 0)a = 0a + 0a$; mindkét oldalhoz $-(0a)$-t adva $0 = 0a$. Hasonlóan $a0 = 0$.

2. $(-a)b + ab = (-a + a)b = 0b = 0$, tehát $(-a)b$ az $ab$ additív inverze: $(-a)b = -ab$. Hasonlóan $a(-b) = -ab$.

3. $(ab)(b^{-1}a^{-1}) = a(bb^{-1})a^{-1} = a \cdot 1 \cdot a^{-1} = aa^{-1} = 1$, és ugyanígy $(b^{-1}a^{-1})(ab) = 1$. (A sorrend megfordul — ezt a mátrixoknál már láttuk.)

> **11.10 Definíció.** Az $R$ gyűrű **nullosztómentes**, ha $ab = 0$ esetén $a = 0$ vagy $b = 0$. (Ha $a \ne 0$, $b \ne 0$, de $ab = 0$, akkor $a$-t és $b$-t **nullosztóknak** nevezzük.)

> **11.11 Feladat.** Minden test nullosztómentes.

*Megoldás.* Tegyük fel indirekt módon, hogy egy testben $ab = 0$, ahol $a \ne 0$ és $b \ne 0$. Mivel $a \ne 0$, van $a^{-1}$ inverze. Az $ab = 0$ egyenlőséget balról $a^{-1}$-gyel szorozva $a^{-1}(ab) = a^{-1} \cdot 0 = 0$; az asszociativitás miatt $(a^{-1}a)b = 1 \cdot b = b$, tehát $b = 0$ — ellentmondás. $\blacksquare$

> **11.12 Definíció.** **Integritási tartomány** a kommutatív, egységelemes, nullosztómentes gyűrű (amelyben $1 \ne 0$).

Integritási tartomány például $\mathbb{Z}$, $\mathbb{Z}[i]$, $\mathbb{R}[x]$, és minden test. **Nem** nullosztómentes például $\mathbb{Z}_6$, hiszen ott $2 \cdot 3 = 0$, de $2 \ne 0$ és $3 \ne 0$; és nem nullosztómentes a $2 \times 2$-es mátrixok gyűrűje sem.

> **11.13 Tétel.** $\mathbb{Z}_n$ ($n \ge 2$) pontosan akkor nullosztómentes, ha $n$ prím.

*Bizonyítás.* 1. Ha $n$ összetett, $n = ab$ ($1 < a, b < n$), akkor $\mathbb{Z}_n$-ben $a \cdot b = 0$, de $a \ne 0$ és $b \ne 0$; tehát $\mathbb{Z}_n$ nem nullosztómentes.

2. Ha $n$ prím, tegyük fel, hogy $\mathbb{Z}_n$-ben $ab = 0$, azaz $ab \equiv 0 \pmod n$, és $a \ne 0$. Mivel $n$ prím, $(a, n) = 1$, így a kis Fermat-tétel szerint $a^{n-1} \equiv 1 \pmod n$. Az $ab \equiv 0$ kongruenciát $a^{n-2}$-vel szorozva
$$a^{n-1}b \equiv 0, \qquad b \equiv 0 \pmod n.$$
Tehát $\mathbb{Z}_n$ nullosztómentes. (Eukleidész I. tételével rövidebben: $n \mid ab$ és $n \nmid a$ esetén $n \mid b$.) $\blacksquare$

> **11.14 Következmény.** $\mathbb{Z}_n$ pontosan akkor test, ha $n$ prím.

*Bizonyítás.* Ha $n$ prím és $a \ne 0$ $\mathbb{Z}_n$-ben, akkor $a \not\equiv 0 \pmod n$, azaz $(a, n) = 1$, és a kis Fermat-tétel szerint $a \cdot a^{n-2} = a^{n-1} \equiv 1$: $a$ inverze $a^{n-2}$. Minden nem nulla elemnek van tehát inverze. Ha $n$ összetett, az előző tétel szerint $\mathbb{Z}_n$ nem nullosztómentes, így (11.11. Feladat) nem test. $\blacksquare$

**Példa: az inverzek $\mathbb{Z}_7$-ben.** $1^{-1} = 1$, $2^{-1} = 4$ (mert $2 \cdot 4 = 8 \equiv 1$), $3^{-1} = 5$ ($15 \equiv 1$), $4^{-1} = 2$, $5^{-1} = 3$, $6^{-1} = 6$ ($36 \equiv 1$). A $\mathbb{Z}_7$ test tehát egy hételemű „számkör”, amelyben a négy alapművelet ugyanúgy elvégezhető, mint a racionális számok között — ezért lehet benne például lineáris egyenletrendszereket Gauss-eliminációval megoldani.

## 12. Polinomgyűrűk

Legyen $R$ gyűrű. Ekkor
$$R[x] = \{a_nx^n + a_{n-1}x^{n-1} + \dots + a_1x + a_0 : n \in \mathbb{N},\ a_i \in R\},$$
ahol az összeadást és a szorzást a polinomokra vonatkozó szokásos módon definiáljuk (3. fejezet). Könnyen ellenőrizhető, hogy $R[x]$ maga is gyűrű, az $R$ feletti **polinomgyűrű**.

> **12.1 Tétel.** Ha $R$ nullosztómentes gyűrű, akkor $R[x]$ is az.

*Bizonyítás.* Legyenek $f, g \in R[x]$ nem nulla polinomok, főegyütthatóik $a$ és $b$; ezek nem nullák. Mivel $R$ nullosztómentes, $ab \ne 0$. Az $fg$ polinom főegyütthatója (a legmagasabb fokú tag együtthatója) éppen $ab$, így $fg$ nem a nullapolinom. $\blacksquare$

> **12.2 Tétel.** Ha az $f \in R[x]$ polinomnak $\alpha$ gyöke ($R$ kommutatív, egységelemes), akkor van olyan $g \in R[x]$, amelyre $f(x) = (x - \alpha)g(x)$.

*Bizonyítás.* Legyen $f(x) = a_nx^n + \dots + a_1x + a_0$. Mivel $f(\alpha) = 0$,
$$f(x) = f(x) - f(\alpha) = \sum_{i=1}^n a_i(x^i - \alpha^i) = \sum_{i=1}^n a_i(x - \alpha)\left(x^{i-1} + x^{i-2}\alpha + \dots + x\alpha^{i-2} + \alpha^{i-1}\right) = (x - \alpha)g(x),$$
ahol $g(x) = \sum_{i=1}^n a_i\left(x^{i-1} + x^{i-2}\alpha + \dots + \alpha^{i-1}\right)$. $\blacksquare$

> **12.3 Tétel.** Ha $R$ kommutatív, egységelemes és nullosztómentes gyűrű (integritási tartomány), és $\alpha_1, \dots, \alpha_r$ az $f \in R[x]$ polinom különböző gyökei, akkor
> $$f(x) = (x - \alpha_1)(x - \alpha_2)\cdots(x - \alpha_r)\,g(x)$$
> alkalmas $g \in R[x]$ polinommal.

(Indukcióval: $f = (x - \alpha_1)f_1$, és $\alpha_2, \dots, \alpha_r$ gyökei $f_1$-nek is, mert $0 = f(\alpha_j) = (\alpha_j - \alpha_1)f_1(\alpha_j)$, és $\alpha_j - \alpha_1 \ne 0$ miatt a nullosztómentesség szerint $f_1(\alpha_j) = 0$.)

**Nem nullosztómentes gyűrűben a tétel nem igaz.** Például $R = \mathbb{Z}_8$-ban $x^2 - 1 = (x - 1)(x + 1)$, de $x^2 - 1$-nek a $3$ is gyöke, amely nem szerepel ebben a szorzatban; sőt $(x - 1)(x - 3)$ nem is osztója $x^2 - 1$-nek $\mathbb{Z}_8[x]$-ben, holott $1$ és $3$ is gyök. Más kérdés, hogy $\mathbb{Z}_8[x]$-ben
$$x^2 - 1 = (x - 1)(x + 1) = (x - 3)(x + 3),$$
hiszen $(x - 3)(x + 3) = x^2 - 9 = x^2 - 1$ — a polinomok szorzattá bontása itt nem egyértelmű.

> **12.4 Tétel.** Ha $R$ integritási tartomány, akkor
>
> 1. minden nem nulla polinomnak legfeljebb annyi gyöke van, amennyi a foka;
> 2. ha két legfeljebb $n$-edfokú polinom több mint $n$ helyen megegyezik, akkor azonosak.

(Ez a 3.10. és a 3.11. Tétel, most már a gyűrűk nyelvén.)

**Többszörös gyökök és a derivált.** Egy $f(x) = \sum a_jx^j$ polinom (formális) **deriváltja** $f'(x) = \sum ja_jx^{j-1}$; a szokásos deriválási szabályok (összeg, szorzat) formálisan is érvényesek.

> **12.5 Tétel.** Ha $\alpha$ az $f$ polinomnak legalább $k$-szoros gyöke ($k \ge 1$), akkor $f'$-nek legalább $(k-1)$-szeres gyöke.

*Bizonyítás.* Ha $f(x) = (x - \alpha)^kg(x)$, akkor a szorzat deriválási szabálya szerint
$$f'(x) = k(x - \alpha)^{k-1}g(x) + (x - \alpha)^kg'(x) = (x - \alpha)^{k-1}\big(kg(x) + (x - \alpha)g'(x)\big). \ \blacksquare$$

Következmény: ha $\alpha$ többszörös gyöke $f$-nek, akkor $f'$-nek is gyöke. (Például $f = x^3 - 3x + 2 = (x - 1)^2(x + 2)$, $f' = 3x^2 - 3 = 3(x - 1)(x + 1)$: az $1$ közös gyök.)

### Valós és komplex együtthatós polinomok

> **12.6 Tétel.** Ha egy valós együtthatós $f$ polinomnak $\alpha$ gyöke, akkor $\bar{\alpha}$ is gyöke.

*Bizonyítás.* Legyen $f(x) = a_nx^n + \dots + a_1x + a_0$, $a_i \in \mathbb{R}$, és $f(\alpha) = a_n\alpha^n + \dots + a_1\alpha + a_0 = 0$. Mindkét oldalt konjugálva, és felhasználva, hogy a konjugálás összeg- és szorzattartó (4.4. Tétel):
$$\bar{a}_n\bar{\alpha}^n + \dots + \bar{a}_1\bar{\alpha} + \bar{a}_0 = 0.$$
Mivel az $a_i$-k valósak, $\bar{a}_i = a_i$, így $f(\bar{\alpha}) = 0$. $\blacksquare$

A tétel szerint egy valós együtthatós $f$ polinom nem valós gyökei párokba rendezhetők: $\alpha$ párja $\bar{\alpha}$. Ha $f$ összes gyöke (multiplicitással; az algebra alaptétele szerint ennyi van) valós gyökök: $\alpha_1, \dots, \alpha_s$, nem valósak: $\alpha_{s+1}, \bar{\alpha}_{s+1}, \dots, \alpha_r, \bar{\alpha}_r$, akkor (normált $f$ esetén)
$$f(x) = \prod_{j=1}^s(x - \alpha_j)\prod_{j=s+1}^r(x - \alpha_j)(x - \bar{\alpha}_j).$$
Itt az $x - \alpha_j$ ($j \le s$) és az $(x - \alpha_j)(x - \bar{\alpha}_j)$ tényezők mind valós együtthatósak, hiszen $\alpha_j = a + bi$ esetén
$$(x - \alpha_j)(x - \bar{\alpha}_j) = x^2 - (\alpha_j + \bar{\alpha}_j)x + \alpha_j\bar{\alpha}_j = x^2 - 2ax + (a^2 + b^2).$$
**Tehát minden valós együtthatós polinom első- és másodfokú valós együtthatós polinomok szorzatára bomlik.**

> **12.7 Definíció.** Egy $T$ test (vagy integritási tartomány) feletti, nem konstans $f$ polinom **irreducibilis** $T$ felett, ha nem írható fel két kisebb fokú, $T$ feletti polinom szorzataként.

(Az egészek felett ezt a definíciót úgy értjük, hogy $f$ nem bontható két kisebb fokú *egész együtthatós* polinom szorzatára; így például $2x + 2 = 2(x + 1)$ irreducibilisnek számít, bár egy konstans kiemelhető belőle.)

Az előbbiek szerint **$\mathbb{R}$ felett csak első- és másodfokú irreducibilis polinomok vannak**; egy valós másodfokú polinom pontosan akkor irreducibilis $\mathbb{R}$ felett, ha a **diszkriminánsa negatív** (különben van valós gyöke, és a gyöktényező kiemelhető).

> **12.8 Tétel (az algebra alaptétele).** Minden nem konstans komplex együtthatós polinomnak van komplex gyöke.

(Nem bizonyítjuk; lásd a 6. fejezetet.)

> **12.9 Következmény.** Minden komplex együtthatós, legalább elsőfokú polinom elsőfokú polinomok szorzatára bomlik. Tehát $\mathbb{C}[x]$-ben pontosan az elsőfokú polinomok irreducibilisek.

**Összefoglalva, az irreducibilis polinomok:**

- **$\mathbb{C}[x]$-ben:** pontosan az elsőfokú polinomok, például $x + \sqrt{2} - i$.
- **$\mathbb{R}[x]$-ben:** pontosan az elsőfokúak és a negatív diszkriminánsú másodfokúak, például $x^2 + \sqrt{3}$ (diszkriminánsa $-4\sqrt{3} < 0$).
- **$\mathbb{Q}[x]$-ben és $\mathbb{Z}[x]$-ben:** bármilyen fokú irreducibilis polinom van, például $x^3 + x + 1$ (harmadfokú, és nincs racionális gyöke — a racionális gyökteszt szerint csak $\pm 1$ jöhetne szóba —, így nem bontható alacsonyabb fokúak szorzatára, hiszen az egyik tényező elsőfokú volna). Itt az irreducibilitás eldöntésére ugyan léteznek általános (de lassú) algoritmusok, a gyakorlatban azonban speciális **irreducibilitási kritériumokat** használunk; a leghíresebbet a következő fejezetben ismertetjük.

### Kitekintés: a Frobenius-azonosság $\mathbb{Z}_p[x]$-ben

Végül egy érdekesség. A $\mathbb{Z}_p$ maradékosztálytestben ($p$ prím) érvényes az úgynevezett **Frobenius-azonosság** (angolul tréfásan *freshman's dream*, „az elsőévesek álma”):
$$(a + b)^p = a^p + b^p.$$
*Bizonyítás.* A binomiális tétel szerint $(a + b)^p = \sum_{k=0}^p\binom{p}{k}a^{p-k}b^k$, ahol $\binom{p}{k} = \frac{p!}{k!(p-k)!}$. Ha $1 \le k \le p - 1$, akkor a számlálóban szerepel a $p$ prímtényező, a nevezőben viszont nem (mert $k!$ és $(p - k)!$ minden tényezője kisebb $p$-nél), így $p \mid \binom{p}{k}$, és ezek a tagok $\mathbb{Z}_p$-ben eltűnnek. Csak a $k = 0$ és $k = p$ tag marad: $a^p + b^p$. $\blacksquare$

**Átvitel $\mathbb{Z}_p[x]$-re.** Ha $P(x) = \sum_{k=0}^n c_kx^k \in \mathbb{Z}_p[x]$, akkor a Frobenius-azonosság ismételt alkalmazásával (és mivel $\mathbb{Z}_p[x]$ is kommutatív, $p \cdot 1 = 0$-val)
$$\big(P(x)\big)^p = \left(\sum_{k=0}^n c_kx^k\right)^p = \sum_{k=0}^n (c_kx^k)^p = \sum_{k=0}^n c_k^px^{kp} = \sum_{k=0}^n c_kx^{kp} = P(x^p),$$
ahol az utolsó előtti lépésben a kis Fermat-tételt ($c_k^p = c_k$ $\mathbb{Z}_p$-ben) használtuk. Például $\mathbb{Z}_3[x]$-ben $(x + 1)^3 = x^3 + 1$ — valóban, $(x + 1)^3 = x^3 + 3x^2 + 3x + 1$, és $3 = 0$.

## 13. A Schönemann–Eisenstein-féle irreducibilitási kritérium

Az irreducibilitási kritériumok közül a leghíresebb a **Schönemann–Eisenstein-kritérium**. Elsőként Theodor Schönemann publikálta 1846-ban (egy általánosabb formában), később azonban sokáig a tőle függetlenül publikáló Gotthold Eisenstein nevén vált ismertté. Eisenstein az eredményt 1850-ben közölte — ugyanabban a folyóiratban (*Crelle-féle Journal*), mint Schönemann —, és az Schönemann tételének speciális esete volt; nagyobb ismertsége miatt mégis az „Eisenstein-kritérium” elnevezés terjedt el. Az elsőbbség Schönemanné, ezért a XX. században egyre gyakoribbá vált a történelmileg pontosabb Schönemann–Eisenstein-kritérium elnevezés.

> **13.1 Tétel (Schönemann–Eisenstein-kritérium).** Legyen $p$ prím, és $f(x) = a_nx^n + a_{n-1}x^{n-1} + \dots + a_1x + a_0$ egész együtthatós, legalább elsőfokú ($n \ge 1$) polinom, amelyre
>
> - $p \nmid a_n$,
> - $p \mid a_{n-1}, a_{n-2}, \dots, a_1, a_0$,
> - $p^2 \nmid a_0$.
>
> Ekkor $f$ irreducibilis (nem bontható két kisebb fokú egész együtthatós polinom szorzatára).

*Bizonyítás.* Indirekt módon tegyük fel, hogy $f = gh$, ahol
$$g(x) = b_rx^r + \dots + b_1x + b_0, \qquad h(x) = c_sx^s + \dots + c_1x + c_0$$
egész együtthatós polinomok, és $r, s \ge 1$ (így $r, s < n$, hiszen $r + s = n$).

**A konstans tagok.** $a_0 = b_0c_0$, és $p \mid a_0$, így $p \mid b_0$ vagy $p \mid c_0$; szimmetria miatt feltehetjük, hogy $p \mid b_0$. Mivel $p^2 \nmid a_0 = b_0c_0$, ekkor $p \nmid c_0$.

**Az első „rossz” együttható.** Nem lehet, hogy $p$ a $g$ minden együtthatóját osztja, mert akkor $f = gh$ minden együtthatóját, így $a_n$-et is osztaná. Legyen tehát $i$ a legkisebb olyan index, amelyre $p \nmid b_i$; ekkor
$$p \mid b_0, b_1, \dots, b_{i-1}, \qquad p \nmid b_i, \qquad 1 \le i \le r < n.$$

**Az ellentmondás.** Tekintsük $f$ $x^i$-es együtthatóját. A szorzás szabálya szerint (ahol $c_k = 0$, ha $k > s$)
$$a_i = b_0c_i + b_1c_{i-1} + \dots + b_{i-1}c_1 + b_ic_0.$$
Szemléletesen: rendezzük $g$ és $h$ együtthatóit egy $(r + 1) \times (s + 1)$-es téglalap két oldalára, és az egységnégyzetekbe írjuk a megfelelő $b_jc_k$ szorzatokat; $a_i$ az egyik „ferde átló” mentén álló szorzatok összege. Itt $p \mid b_0, \dots, b_{i-1}$ miatt az utolsó kivételével minden tag osztható $p$-vel; az utolsó tag, $b_ic_0$ viszont nem, hiszen $p \nmid b_i$ és $p \nmid c_0$ (Eukleidész I. tétele). Tehát
$$p \nmid a_i.$$
Mivel $i \le r < n$, az $a_i$ nem a főegyüttható, így a feltétel szerint $p \mid a_i$ — ellentmondás. $\blacksquare$

**Példa.** Az $x^4 + 3x^3 + 6x^2 + 9x + 21$ polinom irreducibilis $\mathbb{Z}[x]$-ben: a $p = 3$ választással $3 \nmid 1$, de $3 \mid 3, 6, 9, 21$, és $9 \nmid 21$.

**További példák.** $x^n - 2$ minden $n \ge 1$-re irreducibilis ($p = 2$) — így minden fokszámban van irreducibilis polinom $\mathbb{Q}$ felett. Az $x^4 + 1$-re a kritérium közvetlenül nem alkalmazható, de az $x \to x + 1$ helyettesítés után igen: $(x + 1)^4 + 1 = x^4 + 4x^3 + 6x^2 + 4x + 2$, amely $p = 2$-vel Eisenstein-polinom. (Ha $f(x)$ felbontható volna, $f(x + 1)$ is felbontható volna, ugyanakkora fokú tényezőkre.) Ugyanezt a trükköt használja a következő, első ránézésre meglepő állítás.

> **13.2 Következmény.** Ha $p$ prím, akkor az
> $$f(x) = x^{p-1} + x^{p-2} + \dots + x + 1$$
> polinom irreducibilis $\mathbb{Z}[x]$-ben.

*Bizonyítás.* Az $f(x)$ polinom pontosan akkor irreducibilis, amikor $f(x + 1)$. Mivel $f(x) = \frac{x^p - 1}{x - 1}$,
$$f(x + 1) = \frac{(x + 1)^p - 1}{x} = \sum_{i=0}^{p-1}\binom{p}{i + 1}x^i = x^{p-1} + \binom{p}{p-1}x^{p-2} + \dots + \binom{p}{2}x + \binom{p}{1}.$$
(Ugyanez a jegyzetben közvetlenül is levezetésre kerül: $f(x + 1) = \sum_{k=0}^{p-1}(x + 1)^k$, és itt $x^i$ együtthatója $\binom{p-1}{i} + \binom{p-2}{i} + \dots + \binom{i}{i} = \binom{p}{i+1}$.) Itt $p \nmid \binom{p}{p} = 1$ (főegyüttható), $p \mid \binom{p}{i+1}$, ha $0 \le i \le p - 2$, és végül $p^2 \nmid \binom{p}{1} = p$. Tehát $f(x + 1)$ — és így $f(x)$ is — irreducibilis. $\blacksquare$

**A felhasznált azonosság.** $\binom{p-1}{i} + \binom{p-2}{i} + \dots + \binom{i}{i} = \binom{p}{i+1}$ (a „hokiütő-azonosság”) kombinatorikusan így látható: $\binom{p}{i+1}$ azt adja meg, hányféleképpen választhatunk ki $i + 1$ elemet az $\{1, 2, \dots, p\}$ halmazból. Jelölje $j$ a kiválasztott legnagyobb elemet; ez az $\{i + 1, i + 2, \dots, p\}$ halmaz eleme lehet, és a $j$-n kívüli $i$ elemet a $j$-nél kisebbek közül $\binom{j - 1}{i}$-féleképpen választhatjuk. Így
$$\sum_{j=i+1}^p\binom{j - 1}{i} = \binom{p}{i + 1}.$$

**Példa.** $p = 5$: $f(x) = x^4 + x^3 + x^2 + x + 1$, és $f(x + 1) = x^4 + 5x^3 + 10x^2 + 10x + 5$, amely $p = 5$-tel Eisenstein-polinom.

Ez a polinom a 18. fejezetben a $\Phi_p(x)$ körosztási polinomként tér vissza, gyökei a primitív $p$-edik egységgyökök.

## 14. Az euklideszi gyűrűk (faktorizáció és a számelmélet alaptétele)

A *Számelmélet* tárgyban láttuk, hogy az egész számok körében a számelmélet alaptétele (az egyértelmű prímfaktorizáció) a maradékos osztáson és az euklideszi algoritmuson múlik. Most megmutatjuk, hogy **minden olyan gyűrűben, amelyben „jó” maradékos osztás van, ugyanez a gondolatmenet működik.**

### Az euklideszi gyűrű fogalma

Egy $R$ integritási tartományt (kommutatív, egységelemes, nullosztómentes gyűrűt) **euklideszi gyűrűnek** nevezünk, ha létezik egy $\nu: R \setminus \{0\} \to \mathbb{N}$ függvény, az úgynevezett **euklideszi norma**, amelyre teljesül a

**maradékos osztás tétele:** bármely $a \in R$ és $b \in R \setminus \{0\}$ elemhez léteznek olyan $q, r \in R$ elemek (hányados és maradék), hogy
$$a = qb + r, \qquad \text{ahol} \quad r = 0 \quad \text{vagy} \quad \nu(r) < \nu(b).$$

**Fontos példák:**

- az **egész számok** gyűrűje, $\mathbb{Z}$, a $\nu(n) = |n|$ abszolút értékkel;
- **test fölötti polinomgyűrű**, $K[x]$, a $\nu(f) = \deg f$ fokszámmal (a polinomok maradékos osztása, lásd a *Számelmélet Tankönyv* 5. fejezetét: a maradék foka kisebb az osztó fokánál).

### Emlékeztető: egységek, felbonthatatlanok, prímek

Legyen $R$ integritási tartomány. Egy $u \in R$ elem **egység** (invertálható), ha osztója az $1$-nek, azaz van olyan $v \in R$, hogy $uv = vu = 1$. A következő definíciók $R$ nem nulla, nem egység elemeire vonatkoznak.

> **14.1 Definíció.** Egy $p \in R$ nem nulla, nem egység elem **felbonthatatlan** (irreducibilis), ha minden $p = ab$ felbontásban ($a, b \in R$) $a$ vagy $b$ egység.
>
> **14.2 Definíció.** Egy $p \in R$ nem nulla, nem egység elem **prím**, ha minden $a, b \in R$-re: $p \mid ab$ esetén $p \mid a$ vagy $p \mid b$.
>
> **14.3 Definíció.** Két elem, $a$ és $b$ **asszociált** ($a \sim b$), ha van olyan $u \in R$ egység, hogy $a = ub$. (Ekvivalens: $a \mid b$ és $b \mid a$.)

Hamarosan látni fogjuk, hogy **euklideszi gyűrűben a két fogalom egybeesik: prím $\iff$ felbonthatatlan.** (Az egyik irány, prím $\Rightarrow$ felbonthatatlan, minden integritási tartományban igaz; a *Számelmélet Tankönyv* 4.3. Tétele.)

**Példák.** $\mathbb{Z}$-ben az egységek $\pm 1$, a felbonthatatlanok a $\pm p$ prímszámok. $K[x]$-ben az egységek a nem nulla konstansok, a felbonthatatlanok az irreducibilis polinomok; asszociáltak például $x^2 + 1$ és $3x^2 + 3$.

### A számelmélet alaptétele euklideszi gyűrűkben

> **Tétel (egyértelmű faktorizáció).** Euklideszi gyűrűben minden nem nulla, nem egység elem felbontható felbonthatatlan elemek szorzatára, és ez a felbontás a tényezők sorrendjétől és asszociáltságától eltekintve egyértelmű.

A bizonyításnak két lépése van; mindkettőben kulcsszerepet játszik a norma, illetve a maradékos osztásból következő euklideszi algoritmus.

**1. lépés: a felbontás létezése.** A norma segítségével megmutatjuk, hogy a szorzattá bontás nem folytatódhat a végtelenségig.

1. Legyen $a \in R$ nem nulla, nem egység. Ha $a$ nem felbonthatatlan, akkor $a = a_1b_1$, ahol sem $a_1$, sem $b_1$ nem egység.
2. Ekkor a normák szigorúan csökkennek: $\nu(a_1) < \nu(a)$ és $\nu(b_1) < \nu(a)$ (lásd az alábbi kiegészítést).
3. A tényezőket tovább bontva a normák szigorúan csökkenő sorozatot alkotnak a nemnegatív egészek között.
4. Mivel nemnegatív egészekből nincs végtelen szigorúan csökkenő sorozat, a folyamat véges sok lépésben megáll: $a$ felírható véges sok felbonthatatlan elem szorzataként.

::: kiegeszites
**Kiegészítés: miért csökken a norma?** A fenti 2. lépés a definícióból önmagában nem következik; szükség van egy további, a gyakorlatban mindig teljesülő tulajdonságra: $\nu(a) \le \nu(ab)$ minden $a, b \ne 0$-ra. (Ez igaz a fenti példákra: $|a| \le |ab|$ az egészekre, $\deg a \le \deg(ab)$ a polinomokra, $N(a) \le N(ab)$ a Gauss-egészekre. Egyébként bebizonyítható, hogy minden euklideszi norma helyett választható ilyen tulajdonságú; a tankönyvek többsége ezt a feltételt a definícióba is beleveszi.) Ezzel: legyen $a = a_1b_1$, ahol $b_1$ nem egység. Osszuk el $a_1$-et maradékosan $a$-val: $a_1 = qa + r$. Ekkor $r = a_1 - qa_1b_1 = a_1(1 - qb_1)$. Itt $1 - qb_1 \ne 0$, különben $qb_1 = 1$, és $b_1$ egység volna; így $r \ne 0$, tehát $\nu(r) < \nu(a)$. Másrészt $\nu(a_1) \le \nu(a_1(1 - qb_1)) = \nu(r)$. Így $\nu(a_1) < \nu(a)$. $\blacksquare$
:::

**2. lépés: az egyértelműség (felbonthatatlan $\Rightarrow$ prím).** Az egyértelműséghez azt kell igazolni, hogy a felbonthatatlan elemek prímtulajdonságúak.

Először is: euklideszi gyűrűben bármely két elemnek van **legnagyobb közös osztója** (kitüntetett közös osztója), és az előáll $ax + by$ alakban. Ez szó szerint ugyanúgy bizonyítható, mint az egész számokra: az euklideszi algoritmus (ismételt maradékos osztás) véget ér, mert a maradékok normái szigorúan csökkennek, az utolsó nem nulla maradék a kitüntetett közös osztó, és visszahelyettesítéssel $ax + by$ alakba írható.

*Levezetés.*

1. Legyen $p$ felbonthatatlan, $p \mid ab$, és tegyük fel, hogy $p \nmid a$.
2. A $p$ és $a$ legnagyobb közös osztója osztója $p$-nek; mivel $p$ felbonthatatlan, ez vagy egység, vagy $p$ asszociáltja. Az utóbbi nem lehet, mert akkor $p \mid a$ volna. Tehát $\operatorname{lnko}(p, a) \sim 1$.
3. A kiterjesztett euklideszi algoritmus szerint $\operatorname{lnko}(p, a)$ előáll $px + ay$ alakban; így van olyan $u$ egység, hogy $u = px + ay$.
4. Szorozzuk meg az egyenlőséget $b$-vel: $ub = pxb + ayb$.
5. Mivel $p \mid ab$, azaz $ab = pc$ valamilyen $c$-re: $ub = pxb + pcy = p(xb + cy)$.
6. Tehát $p \mid ub$, és mivel $u$ egység, $p \mid b$ (szorozzunk $u^{-1}$-gyel).
7. Vagyis $p \mid ab$ esetén $p \mid a$ vagy $p \mid b$: a felbonthatatlan elem prím.

**Az egyértelműség befejezése.** Ha
$$p_1p_2\cdots p_k = q_1q_2\cdots q_m$$
két felbontás felbonthatatlan elemek szorzatára, akkor $p_1$ osztja a jobb oldalt. Mivel $p_1$ prím, osztania kell valamelyik $q_j$-t, mondjuk $q_1$-et. Mivel $q_1$ is felbonthatatlan, $q_1 = p_1u$ egy $u$ egységgel, azaz $p_1$ és $q_1$ asszociáltak. $p_1$-gyel egyszerűsítve (nullosztómentesség!) $p_2\cdots p_k = (uq_2)\cdots q_m$, és az eljárást ismételve (indukcióval) kapjuk, hogy $k = m$, és a tényezők — megfelelő sorrendben — páronként asszociáltak. $\blacksquare$

### Példák euklideszi gyűrűkre

1. **$\mathbb{Z}$**, az egész számok gyűrűje: $\nu(n) = |n|$.
2. **$K[x]$**, test fölötti polinomgyűrű ($K = \mathbb{Q}, \mathbb{R}, \mathbb{C}, \mathbb{Z}_p, \dots$): $\nu(f) = \deg f$. **Példa:** $\mathbb{Q}[x]$-ben $\operatorname{lnko}(x^3 - 1, x^2 - 1)$: $x^3 - 1 = x \cdot (x^2 - 1) + (x - 1)$, $x^2 - 1 = (x + 1)(x - 1)$, tehát a legnagyobb közös osztó $x - 1$.
3. **$\mathbb{Z}[i]$, a Gauss-egészek gyűrűje:** $\mathbb{Z}[i] = \{a + bi \mid a, b \in \mathbb{Z}\}$, a norma $\nu(a + bi) = a^2 + b^2$ (az abszolút érték négyzete). **Példa a maradékos osztásra:** osszuk el $7 + 2i$-t $2 - i$-vel! A komplex hányados $\frac{7 + 2i}{2 - i} = \frac{(7 + 2i)(2 + i)}{5} = \frac{12 + 11i}{5} = 2{,}4 + 2{,}2i$; ezt a legközelebbi Gauss-egészre kerekítve $q = 2 + 2i$, és $r = (7 + 2i) - (2 - i)(2 + 2i) = (7 + 2i) - (6 + 2i) = 1$. Valóban $\nu(r) = 1 < 5 = \nu(2 - i)$. (A kerekítés miatt mindig $\nu(r) \le \frac{1}{2}\nu(b)$, ezért működik a maradékos osztás.)
4. **Más kvadratikus egészgyűrűk.** A $\mathbb{Z}[\sqrt{d}] = \{a + b\sqrt{d}\}$ alakú gyűrűk közül csak néhány euklideszi; a norma ilyenkor $\nu(a + b\sqrt{d}) = |a^2 - db^2|$. Euklideszi például $\mathbb{Z}[\sqrt{-2}] = \mathbb{Z}[i\sqrt{2}]$, valamint ($d > 0$) $\mathbb{Z}[\sqrt{2}]$ és $\mathbb{Z}[\sqrt{3}]$; továbbá az úgynevezett Eisenstein-egészek gyűrűje, $\mathbb{Z}[\omega]$, ahol $\omega = \frac{-1 + \sqrt{-3}}{2}$. **Nem** euklideszi viszont például $\mathbb{Z}[\sqrt{-5}]$: ebben — ahogy a *Számelmélet Tankönyv* 4.5. Feladatában láttuk — nem is egyértelmű a faktorizáció: $6 = 2 \cdot 3 = (1 + \sqrt{-5})(1 - \sqrt{-5})$. Ugyanígy nem egyértelmű a faktorizáció $\mathbb{Z}[\sqrt{-3}]$-ban: $4 = 2 \cdot 2 = (1 + \sqrt{-3})(1 - \sqrt{-3})$ — ezért kell helyette a „nagyobb” $\mathbb{Z}[\omega]$ gyűrűt venni.

Erre a kérdéskörre harmadévben, a *Számelmélet 2* tárgyban térünk vissza, ahol bebizonyítjuk, hogy a Gauss-egészek, $\mathbb{Z}[\sqrt{-2}]$ és az Eisenstein-egészek euklideszi gyűrűt alkotnak.

## A IV. rész összefoglalása

- **Grupoid** (művelet) $\subset$ **félcsoport** (asszociatív) $\subset$ **monoid** (egységelem) $\subset$ **csoport** (minden elemnek inverze). **Abel-csoport:** kommutatív. Példák: $\langle\mathbb{Z}, +\rangle$, $\langle\mathbb{Z}_p \setminus \{0\}, \cdot\rangle$ ($p$ prím), $S_n$, $D_n$, $GL(n, K)$, $SL(n, K)$.
- **Gyűrű:** $\langle R, +\rangle$ Abel-csoport, a szorzás asszociatív, disztributív. **Integritási tartomány:** kommutatív, egységelemes, nullosztómentes. **Test:** minden nem nulla elem invertálható; minden test nullosztómentes. $\mathbb{Z}_n$ pontosan akkor test (és pontosan akkor nullosztómentes), ha $n$ prím.
- **Polinomgyűrű:** $R$ nullosztómentes $\Rightarrow$ $R[x]$ is; gyöktényező kiemelhető; integritási tartományban legfeljebb $\deg f$ gyök. Többszörös gyök $f'$-nek is gyöke. Valós polinom komplex gyökei konjugált párokban állnak.
- **Irreducibilis polinomok:** $\mathbb{C}$ felett csak elsőfokúak; $\mathbb{R}$ felett első- és negatív diszkriminánsú másodfokúak; $\mathbb{Q}$ felett minden fokban vannak. **Schönemann–Eisenstein:** $p \nmid a_n$, $p \mid a_i$ ($i < n$), $p^2 \nmid a_0$ $\Rightarrow$ irreducibilis. $1 + x + \dots + x^{p-1}$ irreducibilis ($x \to x + 1$).
- **Frobenius:** $\mathbb{Z}_p$-ben $(a + b)^p = a^p + b^p$, $\mathbb{Z}_p[x]$-ben $P(x)^p = P(x^p)$.
- **Euklideszi gyűrű:** van maradékos osztás egy $\nu$ normára nézve ($\mathbb{Z}$, $K[x]$, $\mathbb{Z}[i]$, …). Benne van lnko és euklideszi algoritmus, felbonthatatlan = prím, és érvényes az egyértelmű faktorizáció (SzAT). $\mathbb{Z}[\sqrt{-5}]$-ben nem.

## Feladatok a IV. részhez

1. Csoport-e $\mathbb{Z}$ az $a \circ b = a + b + 1$ műveletre? Ha igen, mi az egységelem, és mi az $a$ inverze?
2. Csoportot alkotnak-e a mátrixszorzásra a $\begin{pmatrix} a & b \\ 0 & c \end{pmatrix}$ alakú valós mátrixok, ahol $ac \ne 0$? Kommutatív-e ez a csoport?
3. Készítsük el $\mathbb{Z}_{11}$ nem nulla elemeinek inverztáblázatát, és oldjuk meg $\mathbb{Z}_7$-ben a $3x + 5 = 1$ egyenletet.
4. Oldjuk meg a $\mathbb{Z}_5$ test felett az $x + 2y = 1$, $2x + y = 0$ egyenletrendszert.
5. Bizonyítsuk be, hogy irreducibilisek $\mathbb{Z}[x]$-ben: a) $x^5 - 6x^3 + 9x + 3$; b) $2x^4 + 10x^2 - 15x + 5$.
6. Bontsuk fel az $x^4 + 4$ polinomot valós együtthatós másodfokú tényezők szorzatára. Miért tanulságos ez a példa, ha tudjuk, hogy $x^4 + 4$-nek nincs racionális gyöke?
7. Mutassuk meg, hogy az $x^2 + 1$ polinom irreducibilis $\mathbb{Z}_3$ felett, de felbontható $\mathbb{Z}_5$ felett.
8. Végezzük el a Gauss-egészek körében a $11 + 7i$ maradékos osztását $3 + 2i$-vel.
9. Határozzuk meg az $f(x) = x^3 - 3x + 2$ és $f'(x)$ legnagyobb közös osztóját az euklideszi algoritmussal. Mit árul el ez $f$ gyökeiről?
10. Bizonyítsuk be, hogy egy véges integritási tartomány mindig test. (Útmutatás: rögzített $a \ne 0$-ra az $x \mapsto ax$ leképezés injektív.)

### Megoldási útmutatók

1. Igen, Abel-csoport: a művelet asszociatív és kommutatív, az egységelem $-1$ ($a + (-1) + 1 = a$), az $a$ inverze $-a - 2$ ($a + (-a - 2) + 1 = -1$). (Az $a \mapsto a + 1$ eltolás az összeadásba viszi át.)
2. Igen: két ilyen mátrix szorzata is ilyen, $\begin{pmatrix} a & b \\ 0 & c \end{pmatrix}\begin{pmatrix} a' & b' \\ 0 & c' \end{pmatrix} = \begin{pmatrix} aa' & ab' + bc' \\ 0 & cc' \end{pmatrix}$; az inverz $\begin{pmatrix} 1/a & -b/(ac) \\ 0 & 1/c \end{pmatrix}$. Nem kommutatív (például $\begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}$ és $\begin{pmatrix} 2 & 0 \\ 0 & 1 \end{pmatrix}$ nem cserélhető fel).
3. $1^{-1} = 1$, $2^{-1} = 6$, $3^{-1} = 4$, $4^{-1} = 3$, $5^{-1} = 9$, $6^{-1} = 2$, $7^{-1} = 8$, $8^{-1} = 7$, $9^{-1} = 5$, $10^{-1} = 10$. $\mathbb{Z}_7$-ben $3x = 1 - 5 = -4 = 3$, így $x = 1$.
4. A második egyenletből $y = -2x = 3x$; az elsőbe írva $7x = 2x = 1$, $x = 3$ (mert $2 \cdot 3 = 6 = 1$), $y = 9 = 4$. Ellenőrzés: $3 + 8 = 11 = 1$, $6 + 4 = 10 = 0$.
5. a) $p = 3$: $3 \nmid 1$, $3 \mid -6, 9, 3$, $9 \nmid 3$. b) $p = 5$: $5 \nmid 2$, $5 \mid 10, -15, 5$, $25 \nmid 5$.
6. $x^4 + 4 = (x^2 + 2)^2 - 4x^2 = (x^2 - 2x + 2)(x^2 + 2x + 2)$. Tanulság: egy polinom gyök nélkül is lehet reducibilis — csak a második és harmadik fokú polinomokra igaz, hogy „nincs gyöke $\Rightarrow$ irreducibilis”.
7. $\mathbb{Z}_3$-ban $0^2 + 1 = 1$, $1^2 + 1 = 2$, $2^2 + 1 = 5 = 2$, nincs gyök, és másodfokú polinomnál ez elég. $\mathbb{Z}_5$-ben $2^2 = 4 = -1$, így $x^2 + 1 = (x - 2)(x + 2)$.
8. $\frac{11 + 7i}{3 + 2i} = \frac{(11 + 7i)(3 - 2i)}{13} = \frac{47 - i}{13} \approx 3{,}62 - 0{,}08i$; $q = 4$, $r = 11 + 7i - 4(3 + 2i) = -1 - i$, és $\nu(r) = 2 < 13$.
9. $f' = 3x^2 - 3$. $f = \frac{x}{3}f' + (-2x + 2)$, majd $f' = (-\frac{3}{2}x - \frac{3}{2})(-2x + 2)$; a legnagyobb közös osztó (normálva) $x - 1$. Tehát $1$ többszörös gyöke $f$-nek (valóban $f = (x - 1)^2(x + 2)$).
10. Ha $a \ne 0$ és $ax = ay$, akkor $a(x - y) = 0$, nullosztómentesség miatt $x = y$. Egy véges halmaz injektív önleképezése szürjektív is, így van olyan $x$, hogy $ax = 1$.

---
