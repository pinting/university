# VII. RÉSZ: MÁSODFOKÚ KONGRUENCIÁK ÉS TITKOSÍTÁS

A hetedik rész a másodfokú kongruenciákkal foglalkozik: mikor van egy számnak „négyzetgyöke” modulo $p$? A választ a Legendre-szimbólum és Gauss híres **kvadratikus reciprocitási tétele** adja, amely a számelmélet egyik legszebb és legmélyebb eredménye. A rész második fejezete a titkosításokról szól: a klasszikus helyettesítő rejtjelektől a Vernam-féle eljáráson át a ma is használt RSA-ig — utóbbi teljes egészében az Euler–Fermat-tételen alapul.

## 23. Másodfokú kongruenciák

Másodfokú kongruenciákat a történelem során sokan tanulmányoztak — Fermat, Euler, Lagrange, Legendre —, de szisztematikus leírásukat először Gauss adta meg. Mivel Fermat korában még nem voltak matematikai folyóiratok, sok akkori eredmény levelezésekből maradt ránk.

Egy általános $ax^2 + bx + c \equiv 0 \pmod p$ kongruencia ($p$ páratlan prím, $p \nmid a$) teljes négyzetté alakítással ($4a$-val szorozva: $(2ax + b)^2 \equiv b^2 - 4ac$) mindig $y^2 \equiv D \pmod p$ alakra hozható, ezért elég az $x^2 \equiv a$ alakú kongruenciákat vizsgálni. Kiindulópontunk a binom kongruenciákra vonatkozó 21.2. Tétel; ezt a $k = 2$ kitevőre alkalmazva (és $(2, p - 1) = 2$-t felhasználva) a következőt kapjuk:

> **23.1. Tétel.** Legyen $p$ páratlan prím és $(a, p) = 1$. Az
> $$x^2 \equiv a \pmod p \qquad (23.1)$$
> kongruencia megoldhatóságának szükséges és elégséges feltétele, hogy
> $$a^{\frac{p-1}{2}} \equiv 1 \pmod p \qquad (23.2)$$
> teljesüljön. Ha (23.2) fennáll, akkor a megoldások száma $2$.

De vajon mely $a$ maradékosztályokra oldható meg a (23.1) kongruencia? Ez a kérdés motiválja a következő definíciót.

> **23.2. Definíció.** Legyen $m$ pozitív egész, $a$ egy maradékosztály modulo $m$. Ha az
> $$x^2 \equiv a \pmod m$$
> kongruenciának van megoldása, akkor azt mondjuk, hogy $a$ **kvadratikus maradék** modulo $m$; ha nincs megoldása, akkor $a$ **kvadratikus nemmaradék** modulo $m$.

**Példa.** Határozzuk meg a kvadratikus maradékokat modulo $7$! Ehhez táblázatot készítünk:

| $x$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|---|---|---|---|---|---|---|---|
| $x^2 \bmod 7$ | $0$ | $1$ | $4$ | $2$ | $2$ | $4$ | $1$ |

A táblázatból leolvasható, hogy a modulo $7$ kvadratikus maradékok a $0, 1, 2, 4$ maradékosztályok, a kvadratikus nemmaradékok a $3, 5, 6$. Hasonló táblázat modulo $11$:

| $x$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ |
|---|---|---|---|---|---|---|---|---|---|---|---|
| $x^2 \bmod 11$ | $0$ | $1$ | $4$ | $9$ | $5$ | $3$ | $3$ | $5$ | $9$ | $4$ | $1$ |

A modulo $11$ kvadratikus maradékok a $0, 1, 3, 4, 5, 9$, a nemmaradékok a $2, 6, 7, 8, 10$ maradékosztályok. Megfigyelhetjük a szimmetriát: $x^2 \equiv (-x)^2$, ezért a táblázat második fele az első tükörképe.

Ilyen táblázatot összetett modulusra is készíthetünk; az alábbi táblázat az $m \le 50$ modulusokra adja meg az összes kvadratikus maradékot (a $0, 1, \dots, m - 1$ reprezentánsokkal). A legérdekesebb és legtöbbet vizsgált eset azonban az, amikor a modulus prím.

| $m$ | kvadratikus maradékok mod $m$ | $m$ | kvadratikus maradékok mod $m$ |
|---|----------------------------|---|----------------------------|
| $1$ | 0 | $26$ | 0, 1, 3, 4, 9, 10, 12, 13, 14, 16, 17, 22, 23, 25 |
| $2$ | 0, 1 | $27$ | 0, 1, 4, 7, 9, 10, 13, 16, 19, 22, 25 |
| $3$ | 0, 1 | $28$ | 0, 1, 4, 8, 9, 16, 21, 25 |
| $4$ | 0, 1 | $29$ | 0, 1, 4, 5, 6, 7, 9, 13, 16, 20, 22, 23, 24, 25, 28 |
| $5$ | 0, 1, 4 | $30$ | 0, 1, 4, 6, 9, 10, 15, 16, 19, 21, 24, 25 |
| $6$ | 0, 1, 3, 4 | $31$ | 0, 1, 2, 4, 5, 7, 8, 9, 10, 14, 16, 18, 19, 20, 25, 28 |
| $7$ | 0, 1, 2, 4 | $32$ | 0, 1, 4, 9, 16, 17, 25 |
| $8$ | 0, 1, 4 | $33$ | 0, 1, 3, 4, 9, 12, 15, 16, 22, 25, 27, 31 |
| $9$ | 0, 1, 4, 7 | $34$ | 0, 1, 2, 4, 8, 9, 13, 15, 16, 17, 18, 19, 21, 25, 26, 30, 32, 33 |
| $10$ | 0, 1, 4, 5, 6, 9 | $35$ | 0, 1, 4, 9, 11, 14, 15, 16, 21, 25, 29, 30 |
| $11$ | 0, 1, 3, 4, 5, 9 | $36$ | 0, 1, 4, 9, 13, 16, 25, 28 |
| $12$ | 0, 1, 4, 9 | $37$ | 0, 1, 3, 4, 7, 9, 10, 11, 12, 16, 21, 25, 26, 27, 28, 30, 33, 34, 36 |
| $13$ | 0, 1, 3, 4, 9, 10, 12 | $38$ | 0, 1, 4, 5, 6, 7, 9, 11, 16, 17, 19, 20, 23, 24, 25, 26, 28, 30, 35, 36 |
| $14$ | 0, 1, 2, 4, 7, 8, 9, 11 | $39$ | 0, 1, 3, 4, 9, 10, 12, 13, 16, 22, 25, 27, 30, 36 |
| $15$ | 0, 1, 4, 6, 9, 10 | $40$ | 0, 1, 4, 9, 16, 20, 24, 25, 36 |
| $16$ | 0, 1, 4, 9 | $41$ | 0, 1, 2, 4, 5, 8, 9, 10, 16, 18, 20, 21, 23, 25, 31, 32, 33, 36, 37, 39, 40 |
| $17$ | 0, 1, 2, 4, 8, 9, 13, 15, 16 | $42$ | 0, 1, 4, 7, 9, 15, 16, 18, 21, 22, 25, 28, 30, 36, 37, 39 |
| $18$ | 0, 1, 4, 7, 9, 10, 13, 16 | $43$ | 0, 1, 4, 6, 9, 10, 11, 13, 14, 15, 16, 17, 21, 23, 24, 25, 31, 35, 36, 38, 40, 41 |
| $19$ | 0, 1, 4, 5, 6, 7, 9, 11, 16, 17 | $44$ | 0, 1, 4, 5, 9, 12, 16, 20, 25, 33, 36, 37 |
| $20$ | 0, 1, 4, 5, 9, 16 | $45$ | 0, 1, 4, 9, 10, 16, 19, 25, 31, 34, 36, 40 |
| $21$ | 0, 1, 4, 7, 9, 15, 16, 18 | $46$ | 0, 1, 2, 3, 4, 6, 8, 9, 12, 13, 16, 18, 23, 24, 25, 26, 27, 29, 31, 32, 35, 36, 39, 41 |
| $22$ | 0, 1, 3, 4, 5, 9, 11, 12, 14, 15, 16, 20 | $47$ | 0, 1, 2, 3, 4, 6, 7, 8, 9, 12, 14, 16, 17, 18, 21, 24, 25, 27, 28, 32, 34, 36, 37, 42 |
| $23$ | 0, 1, 2, 3, 4, 6, 8, 9, 12, 13, 16, 18 | $48$ | 0, 1, 4, 9, 16, 25, 33, 36 |
| $24$ | 0, 1, 4, 9, 12, 16 | $49$ | 0, 1, 2, 4, 8, 9, 11, 15, 16, 18, 22, 23, 25, 29, 30, 32, 36, 37, 39, 43, 44, 46 |
| $25$ | 0, 1, 4, 6, 9, 11, 14, 16, 19, 21, 24 | $50$ | 0, 1, 4, 6, 9, 11, 14, 16, 19, 21, 24, 25, 26, 29, 31, 34, 36, 39, 41, 44, 46, 49 |

### A Legendre-szimbólum

> **23.3. Definíció.** Legyen $p$ páratlan prím és $(a, p) = 1$. A **Legendre-szimbólum** értéke
> $$\left(\frac{a}{p}\right) = \begin{cases} 1, & \text{ha } a \text{ kvadratikus maradék modulo } p, \\ -1, & \text{ha } a \text{ kvadratikus nemmaradék modulo } p. \end{cases}$$
> Ha $p \mid a$, akkor az $\left(\frac{a}{p}\right) = \left(\frac{0}{p}\right)$ szimbólumot vagy nem értelmezik, vagy értékét $0$-nak definiálják.

(A jelölés nem tört: $\left(\frac{a}{p}\right)$-t „$a$ per $p$ Legendre-szimbólumnak” olvassuk.) A Legendre-szimbólumnak számos számelméleti bizonyításban fontos szerepe van, és — túl az elméleti eredményeken — kriptográfiai alkalmazásai is vannak.

**Hány kvadratikus maradék van?** Legyen $p$ páratlan prím, és tekintsük az $1^2, 2^2, \dots, (p - 1)^2$ számokat modulo $p$. Ezek között
$$x^2 \equiv y^2 \pmod p \iff p \mid (x - y)(x + y) \iff x \equiv \pm y \pmod p,$$
vagyis $1 \le x, y \le p - 1$ esetén $x^2 \equiv y^2$ pontosan akkor, ha $y = x$ vagy $y = p - x$. Az $1^2, \dots, (p - 1)^2$ sorozat tehát pontosan $\frac{p-1}{2}$ különböző maradékot tartalmaz, mindegyiket kétszer. Vagyis **a nem nulla kvadratikus maradékok száma $\frac{p-1}{2}$, és ugyanennyi a kvadratikus nemmaradékok száma.** Modulo $p$ tehát a nem nulla maradékok pontosan fele kvadratikus maradék.

Ez az egyszerű tény motiválta, hogy a Legendre-szimbólum jól alkalmazható **pszeudovéletlen** (véletlennek tűnő) objektumok konstrukciójára. Christian Mauduit és Sárközy András 1997-ben a következő konstrukciót adta meg véges, $\pm 1$-ekből álló pszeudovéletlen sorozatokra:
$$E_{p-1} = \left(\left(\frac{1}{p}\right), \left(\frac{2}{p}\right), \dots, \left(\frac{p-1}{p}\right)\right).$$
Például $p = 11$-re a sorozat
$$+1, -1, +1, +1, +1, -1, -1, -1, +1, -1.$$
A sorozatban ugyanannyi $+1$ van, mint $-1$, és nagy $p$-re a sorozat „mintázatai” is hasonlóan viselkednek, mint egy valódi véletlen sorozatéi. Erre a 24. fejezetben visszatérünk.

### Az Euler-féle kritérium

Eddig ahhoz, hogy eldöntsük, kvadratikus maradék-e egy szám modulo $m$, egy teljes maradékrendszeren végigfuttattuk $x$-et, és megnéztük $x^2$ lehetséges maradékait. Ha csak egyetlen $a$ számról akarjuk ezt eldönteni, ez a módszer nagy $p$-re meglehetősen lassú. Euler 1761-ben ennél gyorsabb módszert talált prím modulusra, amelyben a Legendre-szimbólum kiszámításának alapja egy moduláris hatványozás (7. fejezet). Később lesz szó egy még gyorsabb módszerről is; előbb lássuk az úgynevezett Euler-lemmát.

> **23.4. Lemma (Euler-lemma).** Legyen $p$ páratlan prím és $(a, p) = 1$. Ekkor
> $$\left(\frac{a}{p}\right) \equiv a^{\frac{p-1}{2}} \pmod p.$$

*Bizonyítás.* Ha $\left(\frac{a}{p}\right) = 1$, akkor a 23.1. Tétel szerint valóban $a^{\frac{p-1}{2}} \equiv 1 = \left(\frac{a}{p}\right)$. Ha $\left(\frac{a}{p}\right) = -1$, akkor a 23.1. Tétel szerint $a^{\frac{p-1}{2}} \not\equiv 1$, azaz $p \nmid a^{\frac{p-1}{2}} - 1$. A kis Fermat-tétel szerint viszont
$$p \mid a^{p-1} - 1 = \left(a^{\frac{p-1}{2}} - 1\right)\left(a^{\frac{p-1}{2}} + 1\right),$$
így Eukleidész I. tétele szerint $p \mid a^{\frac{p-1}{2}} + 1$, azaz $a^{\frac{p-1}{2}} \equiv -1 = \left(\frac{a}{p}\right)$. $\blacksquare$

**Példa.** Kvadratikus maradék-e a $3$ modulo $11$? $3^5 = 243 = 22 \cdot 11 + 1 \equiv 1$, tehát igen (valóban $5^2 = 25 \equiv 3$). És a $2$? $2^5 = 32 \equiv -1$, tehát nem.

Az Euler-lemma következményei:

> **23.5. Tétel.** Legyen $p$ páratlan prím, $(a, p) = (b, p) = 1$. Ekkor
>
> (a) $a \equiv b \pmod p$ esetén $\left(\frac{a}{p}\right) = \left(\frac{b}{p}\right)$;
>
> (b) $\left(\frac{ab}{p}\right) = \left(\frac{a}{p}\right)\left(\frac{b}{p}\right)$ (**multiplikativitás**);
>
> (c) $\left(\frac{1}{p}\right) = 1$, és általában $\left(\frac{a^2}{p}\right) = 1$;
>
> (d) $\left(\frac{-1}{p}\right) = (-1)^{\frac{p-1}{2}} = \begin{cases} 1, & \text{ha } p = 4k + 1 \text{ alakú}, \\ -1, & \text{ha } p = 4k + 3 \text{ alakú}. \end{cases}$

A jegyzet a bizonyítás kivitelezését az olvasóra bízza; az Euler-lemmát, a kis Fermat-tételt és azt kell használni, hogy a Legendre-szimbólum értéke csak $\pm 1$ lehet.

::: kiegeszites
**Kiegészítés: a 23.5. Tétel bizonyítása.** (a) A definícióból nyilvánvaló (a kvadratikus maradék tulajdonság a maradékosztályé). (b) Az Euler-lemma szerint
$$\left(\frac{ab}{p}\right) \equiv (ab)^{\frac{p-1}{2}} = a^{\frac{p-1}{2}} b^{\frac{p-1}{2}} \equiv \left(\frac{a}{p}\right)\left(\frac{b}{p}\right) \pmod p.$$
Mindkét oldal $\pm 1$, és $1 \not\equiv -1 \pmod p$ (mert $p > 2$), így a kongruenciából egyenlőség következik. (c) $x = a$ megoldása $x^2 \equiv a^2$-nek. (d) Az Euler-lemma szerint $\left(\frac{-1}{p}\right) \equiv (-1)^{\frac{p-1}{2}}$, és itt is mindkét oldal $\pm 1$. A $(-1)^{\frac{p-1}{2}}$ pontosan akkor $1$, ha $\frac{p-1}{2}$ páros, azaz $p \equiv 1 \pmod 4$. $\blacksquare$

A (b) tulajdonság figyelemre méltó: **két kvadratikus nemmaradék szorzata kvadratikus maradék.** (Modulo $7$: $3 \cdot 5 = 15 \equiv 1$, $3 \cdot 6 = 18 \equiv 4$.) A (d) tulajdonság pedig azt mondja, hogy a $-1$ pontosan a $4k + 1$ alakú prímek szerint kvadratikus maradék — ez Fermat egyik híres tételének kulcsa: egy $p$ páratlan prím pontosan akkor írható fel két négyzetszám összegeként, ha $p \equiv 1 \pmod 4$.
:::

### A kvadratikus reciprocitási tétel

A fejezetben (kicsit később) a következőket fogjuk igazolni:

> **23.6. Tétel (Gauss).** Ha $p$ páratlan prím, akkor
> $$\left(\frac{2}{p}\right) = (-1)^{\frac{p^2 - 1}{8}} = \begin{cases} 1, & \text{ha } p = 8k \pm 1 \text{ alakú}, \\ -1, & \text{ha } p = 8k \pm 3 \text{ alakú}. \end{cases}$$
>
> **23.7. Tétel (Gauss kvadratikus reciprocitási tétele).** Ha $p$ és $q$ különböző páratlan prímek, akkor
> $$\left(\frac{p}{q}\right) = (-1)^{\frac{p-1}{2}\cdot\frac{q-1}{2}}\left(\frac{q}{p}\right) = \begin{cases} \left(\frac{q}{p}\right), & \text{ha } p \text{ vagy } q \ \ 4k + 1 \text{ alakú}, \\ -\left(\frac{q}{p}\right), & \text{ha } p \text{ és } q \text{ is } 4k + 3 \text{ alakú}. \end{cases}$$

A reciprocitási tétel első pillantásra meglepő: azt állítja, hogy két teljesen különböző kérdés — „négyzetszám-e $p$ modulo $q$?” és „négyzetszám-e $q$ modulo $p$?” — válasza szorosan összefügg. Például $\left(\frac{5}{7}\right) = \left(\frac{7}{5}\right)$, mert $5 \equiv 1 \pmod 4$: valóban, mindkettő $-1$ (modulo $7$ a négyzetek $1, 2, 4$; modulo $5$ a négyzetek $1, 4$, és $7 \equiv 2$).

Gauss — aki a tételt „aranytételnek” (*theorema aureum*) nevezte — nyolc különböző bizonyítást adott rá (hatot publikált, kettő a hagyatékában maradt). Ma ennél sokkal több ismert: Franz Lemmermeyer gyűjteménye több mint háromszáz különböző bizonyítást tart számon.

Mielőtt a tételeket bebizonyítanánk, lássunk egy példát a használatukra.

**Kidolgozott példa.** Megoldható-e az $x^2 \equiv -42 \pmod{61}$ kongruencia? (A $61$ prím.) Ehhez meg kell határozni a $\left(\frac{-42}{61}\right)$ Legendre-szimbólum értékét. Az első lépésben faktorizálunk, és a multiplikativitást használjuk:
$$\left(\frac{-42}{61}\right) = \left(\frac{-1}{61}\right)\left(\frac{2}{61}\right)\left(\frac{3}{61}\right)\left(\frac{7}{61}\right). \qquad (23.3)$$
A tényezőket a 23.5., 23.6. és 23.7. Tétel segítségével számoljuk ki:

- $\left(\frac{-1}{61}\right) = (-1)^{30} = 1$, mert $61 = 4 \cdot 15 + 1$.
- $\left(\frac{2}{61}\right) = -1$, mert $61 = 8 \cdot 8 - 3$, azaz $8k - 3$ alakú.
- $\left(\frac{3}{61}\right) = \left(\frac{61}{3}\right) = \left(\frac{1}{3}\right) = 1$ (reciprocitás, $61 \equiv 1 \pmod 4$; majd $61 \equiv 1 \pmod 3$).
- $\left(\frac{7}{61}\right) = \left(\frac{61}{7}\right) = \left(\frac{5}{7}\right) = \left(\frac{7}{5}\right) = \left(\frac{2}{5}\right) = -1$ (reciprocitás kétszer; $61 \equiv 5 \pmod 7$, $7 \equiv 2 \pmod 5$, és $5 = 8 - 3$).

Ezeket (23.3)-ba írva
$$\left(\frac{-42}{61}\right) = 1 \cdot (-1) \cdot 1 \cdot (-1) = 1.$$
Tehát az $x^2 \equiv -42 \pmod{61}$ kongruencia megoldható (két megoldása van). A megoldások egyébként $x \equiv 18$ és $x \equiv 43 \pmod{61}$: valóban $18^2 = 324 = 5 \cdot 61 + 19$, és $19 \equiv -42 \pmod{61}$.

A fenti algoritmusnak van egy lassú lépése: a faktorizálás, ugyanis a faktorizációs algoritmusok nagy számokra nagyon lassúak. Ezen a Jacobi-szimbólum segít (a fejezet utolsó részében).

### A Gauss-lemma

A 23.6. és a 23.7. Tétel bizonyítása Gauss következő lemmáján alapul.

> **23.8. Lemma (Gauss-lemma).** Legyen $p$ páratlan prím, $(a, p) = 1$. Tekintsük az
> $$a, \ 2a, \ 3a, \ \dots, \ \frac{p-1}{2}\,a$$
> számok legkisebb nemnegatív maradékait modulo $p$. Ha $n$ jelöli azoknak a maradékoknak a számát, amelyek nagyobbak $\frac{p}{2}$-nél, akkor
> $$\left(\frac{a}{p}\right) = (-1)^n.$$

**Példa.** $p = 11$, $a = 3$: a $3, 6, 9, 12, 15$ számok maradékai $3, 6, 9, 1, 4$. Ezek közül $\frac{11}{2} = 5{,}5$-nél nagyobb: $6$ és $9$, tehát $n = 2$, és $\left(\frac{3}{11}\right) = (-1)^2 = 1$ — összhangban a fenti példával.

*Bizonyítás.* Legyenek $r_1, \dots, r_n$ azok a maradékok, amelyek nagyobbak $\frac{p}{2}$-nél, a többiek pedig $s_1, \dots, s_k$; ekkor $n + k = \frac{p-1}{2}$. (Egyik maradék sem $0$, mert $p \nmid ja$.) A
$$p - r_1, \ p - r_2, \ \dots, \ p - r_n$$
számok különbözők, és $1$ és $\frac{p}{2}$ közé esnek, akárcsak az $s_j$-k. Megmutatjuk, hogy $p - r_i \ne s_j$. Ha $p - r_i = s_j$ volna, ahol $r_i \equiv \varrho a$ és $s_j \equiv \sigma a$ ($1 \le \varrho, \sigma \le \frac{p-1}{2}$), akkor
$$p - \varrho a \equiv \sigma a, \quad (\varrho + \sigma)a \equiv 0, \quad \varrho + \sigma \equiv 0 \pmod p,$$
ahol $(a, p) = 1$ miatt egyszerűsíthettünk. Ez lehetetlen, mert $2 \le \varrho + \sigma \le p - 1$. Tehát a
$$p - r_1, \ \dots, \ p - r_n, \ s_1, \ \dots, \ s_k$$
számok páronként különbözők, mind az $1, 2, \dots, \frac{p-1}{2}$ számok közül valók, és éppen $\frac{p-1}{2}$ darab van belőlük: ezek tehát éppen az $1, 2, \dots, \frac{p-1}{2}$ számok, más sorrendben. Összeszorozva őket:
$$(p - r_1)\cdots(p - r_n)\, s_1 \cdots s_k = 1 \cdot 2 \cdots \frac{p-1}{2}.$$
Modulo $p$ nézve ($p - r_i \equiv -r_i$):
$$(-1)^n r_1 \cdots r_n\, s_1 \cdots s_k \equiv \left(\frac{p-1}{2}\right)! \pmod p.$$
A bal oldalon az $r_i$-k és $s_j$-k szorzata éppen az $a, 2a, \dots, \frac{p-1}{2}a$ számok szorzatával kongruens:
$$(-1)^n\, a \cdot 2a \cdots \frac{p-1}{2}a = (-1)^n a^{\frac{p-1}{2}}\left(\frac{p-1}{2}\right)! \equiv \left(\frac{p-1}{2}\right)! \pmod p.$$
A $\left(\frac{p-1}{2}\right)!$ szám relatív prím $p$-hez, így egyszerűsíthetünk: $(-1)^n a^{\frac{p-1}{2}} \equiv 1$, azaz $a^{\frac{p-1}{2}} \equiv (-1)^n$. Végül az Euler-lemmát alkalmazva
$$\left(\frac{a}{p}\right) \equiv a^{\frac{p-1}{2}} \equiv (-1)^n \pmod p,$$
és mivel mindkét oldal $\pm 1$, egyenlőség áll fenn. $\blacksquare$

> **23.9. Lemma.** Ha $p$ páratlan prím és $(a, 2p) = 1$ (azaz $a$ páratlan és $p \nmid a$), akkor
> $$\left(\frac{a}{p}\right) = (-1)^t, \qquad \text{ahol} \qquad t = \sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right];$$
> továbbá
> $$\left(\frac{2}{p}\right) = (-1)^{\frac{p^2-1}{8}}.$$

*Bizonyítás.* Ugyanazt a jelölést használjuk, mint a Gauss-lemmában. Az $r_i$ és $s_j$ számok a $ja$ számok $p$-vel vett osztási maradékai, a hányados pedig $\left[\frac{ja}{p}\right]$. Így
$$\sum_{j=1}^{(p-1)/2} ja = p\sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right] + \sum_{i=1}^n r_i + \sum_{j=1}^k s_j.$$
Másrészt, mivel a $p - r_i$ és $s_j$ számok éppen $1, \dots, \frac{p-1}{2}$,
$$\sum_{j=1}^{(p-1)/2} j = \sum_{i=1}^n (p - r_i) + \sum_{j=1}^k s_j = np - \sum_{i=1}^n r_i + \sum_{j=1}^k s_j.$$
A kettőt kivonva:
$$(a - 1)\sum_{j=1}^{(p-1)/2} j = p\left(\sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right] - n\right) + 2\sum_{i=1}^n r_i.$$
Itt $\sum_{j=1}^{(p-1)/2} j = \frac{1}{2}\cdot\frac{p-1}{2}\cdot\frac{p+1}{2} = \frac{p^2 - 1}{8}$. Modulo $2$ nézve (és $p \equiv 1 \pmod 2$-t felhasználva):
$$(a - 1)\frac{p^2 - 1}{8} \equiv \sum_{j=1}^{(p-1)/2}\left[\frac{ja}{p}\right] - n \pmod 2.$$
Ha $a$ páratlan, a bal oldal páros, így $n \equiv t \pmod 2$, és a Gauss-lemma szerint $\left(\frac{a}{p}\right) = (-1)^n = (-1)^t$. Ha $a = 2$, akkor $\left[\frac{2j}{p}\right] = 0$ minden $1 \le j \le \frac{p-1}{2}$-re (hiszen $2j < p$), így $n \equiv \frac{p^2 - 1}{8} \pmod 2$, és a Gauss-lemma szerint $\left(\frac{2}{p}\right) = (-1)^{\frac{p^2-1}{8}}$. $\blacksquare$

*A 23.6. Tétel bizonyítása.* A képlet a 23.9. Lemma második része. A második alak: $p = 8k \pm 1$ esetén $\frac{p^2 - 1}{8} = 8k^2 \pm 2k$ páros, $p = 8k \pm 3$ esetén $\frac{p^2 - 1}{8} = 8k^2 \pm 6k + 1$ páratlan. $\blacksquare$

*A 23.7. Tétel bizonyítása (rácspontokkal).* Legyen $S$ azoknak az $(x, y)$ egész pároknak a halmaza, amelyekre
$$1 \le x \le \frac{p-1}{2}, \qquad 1 \le y \le \frac{q-1}{2}.$$
$S$ elemszáma $\frac{p-1}{2}\cdot\frac{q-1}{2}$. Bontsuk $S$-et két diszjunkt részre: $S_1$ elemei azok a párok, amelyekre $qx > py$, $S_2$ elemei azok, amelyekre $qx < py$. A $qx = py$ eset nem fordulhat elő, mert ekkor $p \mid qx$, így $p \mid x$ volna, holott $1 \le x < p$. Tehát ez valódi felbontás. (Szemléletesen: az $S$ téglalap rácspontjait az $y = \frac{q}{p}x$ egyenes két részre vágja, és egyik rácspont sem esik az egyenesre.)

$S_1$ elemei azok a párok, amelyekre $1 \le x \le \frac{p-1}{2}$ és $1 \le y < \frac{qx}{p}$. (Az $y \le \frac{q-1}{2}$ feltétel itt automatikusan teljesül, mert $\frac{qx}{p} < \frac{q}{2}$.) Rögzített $x$-hez $\left[\frac{qx}{p}\right]$ ilyen $y$ van, így
$$|S_1| = \sum_{x=1}^{(p-1)/2}\left[\frac{qx}{p}\right].$$
Ugyanígy $S_2$ elemei azok, amelyekre $1 \le y \le \frac{q-1}{2}$ és $1 \le x < \frac{py}{q}$, így
$$|S_2| = \sum_{y=1}^{(q-1)/2}\left[\frac{py}{q}\right].$$
Tehát
$$\sum_{x=1}^{(p-1)/2}\left[\frac{qx}{p}\right] + \sum_{y=1}^{(q-1)/2}\left[\frac{py}{q}\right] = \frac{p-1}{2}\cdot\frac{q-1}{2}.$$
A 23.9. Lemma szerint (mindkét prím páratlan) az első összeg $\left(\frac{q}{p}\right)$, a második $\left(\frac{p}{q}\right)$ kitevője. Így
$$\left(\frac{q}{p}\right)\left(\frac{p}{q}\right) = (-1)^{\frac{p-1}{2}\cdot\frac{q-1}{2}},$$
ami (mivel $\left(\frac{q}{p}\right)^2 = 1$) a bizonyítandó állítás. $\blacksquare$

### 23.1. A Jacobi-szimbólum

A Legendre-szimbólum kiszámításának leglassabb lépése az, amikor a „számlálót” prímtényezőkre bontjuk. Ez megkerülhető az úgynevezett Jacobi-szimbólummal.

> **23.10. Definíció.** Legyen $P > 1$ páratlan szám, $P = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k}$ a kanonikus alakja, és $a$ egy $P$-hez relatív prím egész. A **Jacobi-szimbólum**:
> $$\left(\frac{a}{P}\right) \stackrel{\text{def}}{=} \left(\frac{a}{p_1}\right)^{\alpha_1}\left(\frac{a}{p_2}\right)^{\alpha_2}\cdots\left(\frac{a}{p_k}\right)^{\alpha_k},$$
> ahol a jobb oldalon Legendre-szimbólumok szorzata áll.

Ha $P$ prím, a definícióból következően a Jacobi- és a Legendre-szimbólum egybeesik. **Figyelem!** Összetett $P$-re az $x^2 \equiv a \pmod P$ kongruencia megoldhatósága *nem* olvasható le a Jacobi-szimbólumról. Például az
$$x^2 \equiv 2 \pmod{15}$$
kongruencia nem oldható meg (hiszen akkor $x^2 \equiv 2 \pmod 3$ is teljesülne, ami nem lehetséges), mégis
$$\left(\frac{2}{15}\right) = \left(\frac{2}{3}\right)\left(\frac{2}{5}\right) = (-1)(-1) = 1.$$
(Annyi igaz, hogy ha $\left(\frac{a}{P}\right) = -1$, akkor a kongruencia biztosan nem oldható meg, mert valamelyik $\left(\frac{a}{p_i}\right) = -1$.)

A Jacobi-szimbólum tulajdonságait a következő tétel foglalja össze; a lényeg, hogy **ugyanazok a számolási szabályok érvényesek rá, mint a Legendre-szimbólumra.**

> **23.11. Tétel.** Legyen $P$ pozitív páratlan szám, és $(a, P) = (b, P) = 1$. Ekkor
>
> (a) $a \equiv b \pmod P$ esetén $\left(\frac{a}{P}\right) = \left(\frac{b}{P}\right)$;
>
> (b) $\left(\frac{ab}{P}\right) = \left(\frac{a}{P}\right)\left(\frac{b}{P}\right)$;
>
> (c) $\left(\frac{1}{P}\right) = 1$, $\left(\frac{a^2}{P}\right) = 1$;
>
> (d) $\left(\frac{-1}{P}\right) = (-1)^{\frac{P-1}{2}}$, azaz $1$, ha $P$ $4k + 1$ alakú, és $-1$, ha $4k + 3$ alakú;
>
> (e) $\left(\frac{2}{P}\right) = (-1)^{\frac{P^2-1}{8}}$, azaz $1$, ha $P$ $8k \pm 1$ alakú, és $-1$, ha $8k \pm 3$ alakú;
>
> (f) ha $P$ és $Q$ relatív prím pozitív páratlan számok, akkor $\left(\frac{P}{Q}\right) = (-1)^{\frac{P-1}{2}\cdot\frac{Q-1}{2}}\left(\frac{Q}{P}\right)$.

Mivel (f) nemcsak prímekre, hanem páratlan összetett számokra is fennáll, **a számlálót nem kell prímtényezőkre bontani — csak a kettőhatványt kell leválasztani** (az (e) szabállyal). Az eljárás hasonlít az euklideszi algoritmusra, és ugyanolyan gyors.

**Példa.** Számítsuk ki újra $\left(\frac{-42}{61}\right)$ értékét! Mivel $61$ prím, a Jacobi- és a Legendre-szimbólum egybeesik, de most csak Jacobi-szimbólumokkal számolunk, faktorizálás nélkül (a $21$-et nem bontjuk fel):
$$\left(\frac{-42}{61}\right) = \left(\frac{-1}{61}\right)\left(\frac{2}{61}\right)\left(\frac{21}{61}\right) = 1 \cdot (-1) \cdot \left(\frac{21}{61}\right) = -\left(\frac{61}{21}\right) = -\left(\frac{19}{21}\right) = -\left(\frac{21}{19}\right) = -\left(\frac{2}{19}\right) = -(-1) = 1.$$
(A lépések: reciprocitás, mert $61 \equiv 1 \pmod 4$; $61 \equiv 19 \pmod{21}$; reciprocitás, mert $21 \equiv 1 \pmod 4$; $21 \equiv 2 \pmod{19}$; végül $19 = 8 \cdot 2 + 3$.)

*A 23.11. Tétel bizonyítása.* Az (a), (b), (c) rész a Legendre-szimbólum megfelelő tulajdonságainak és a definíciónak egyszerű következménye. A (d), (e), (f) részhez a következő segédállítást használjuk.

> **Segédállítás.** Ha $u, v$ páratlan egészek, akkor
> $$\frac{uv - 1}{2} \equiv \frac{u - 1}{2} + \frac{v - 1}{2} \pmod 2, \qquad \frac{u^2v^2 - 1}{8} \equiv \frac{u^2 - 1}{8} + \frac{v^2 - 1}{8} \pmod 2.$$

*Bizonyítás.* Az első két oldal különbsége $\frac{uv - 1 - (u - 1) - (v - 1)}{2} = \frac{(u - 1)(v - 1)}{2}$, ami páros, mert $u - 1$ és $v - 1$ is páros. A második két oldal különbsége $\frac{(u^2 - 1)(v^2 - 1)}{8}$, ami páros, mert $u^2 - 1$ és $v^2 - 1$ is osztható $8$-cal (páratlan szám négyzete $8k + 1$ alakú). $\blacksquare$

A segédállítást többször alkalmazva: ha $P = p_1 p_2 \cdots p_r$ (a prímtényezők között azonosak is lehetnek), akkor
$$\frac{P - 1}{2} \equiv \sum_{i=1}^r \frac{p_i - 1}{2}, \qquad \frac{P^2 - 1}{8} \equiv \sum_{i=1}^r \frac{p_i^2 - 1}{8} \pmod 2.$$

(d) $\left(\frac{-1}{P}\right) = \prod_i \left(\frac{-1}{p_i}\right) = \prod_i (-1)^{\frac{p_i - 1}{2}} = (-1)^{\sum_i \frac{p_i - 1}{2}} = (-1)^{\frac{P-1}{2}}$.

(e) Ugyanígy: $\left(\frac{2}{P}\right) = \prod_i (-1)^{\frac{p_i^2 - 1}{8}} = (-1)^{\frac{P^2 - 1}{8}}$.

(f) Legyen $P = p_1 \cdots p_r$ és $Q = q_1 \cdots q_s$ (azonos prímek is lehetnek, de $p_i \ne q_j$, mert $(P, Q) = 1$). A Jacobi-szimbólum multiplikativitása (mindkét „emeletben”) miatt
$$\left(\frac{P}{Q}\right)\left(\frac{Q}{P}\right) = \prod_{i, j}\left(\frac{p_i}{q_j}\right)\left(\frac{q_j}{p_i}\right) = \prod_{i, j}(-1)^{\frac{p_i - 1}{2}\cdot\frac{q_j - 1}{2}} = (-1)^{\left(\sum_i \frac{p_i - 1}{2}\right)\left(\sum_j \frac{q_j - 1}{2}\right)} = (-1)^{\frac{P - 1}{2}\cdot\frac{Q - 1}{2}},$$
ahol a második lépésben a kvadratikus reciprocitási tételt alkalmaztuk minden $(p_i, q_j)$ párra. $\blacksquare$

(A jegyzet az (e) és (f) részt kissé eltérő úton, a $4k + 3$, illetve $8k \pm 3$ alakú prímtényezők számának paritását vizsgálva igazolja; a gondolat ugyanaz.)

### 23.2. Négyzetgyökvonás modulo $p$

Eddig arról volt szó, mikor oldható meg az $x^2 \equiv a \pmod p$ kongruencia, de arról nem, hogyan lehet — ha megoldható — egy megoldást megtalálni. Elsőre talán meglepő, de erre is vannak gyors algoritmusok. Ilyen például a **Tonelli–Shanks-algoritmus**, amelyet Daniel Shanks 1973-ban publikált, és aki ezt írta róla:

> *„Azért késtem leírni a történelmi utalásokat, mert kölcsönadtam egy barátomnak a Dickson-féle History 1. kötetét, és soha nem kaptam vissza.”*

Leonard Dickson könyve szerint az algoritmus egy (redundánsabb) változata már 1891-ben létezett, Alberto Tonelli nevéhez kötődően. Ismert egy másik algoritmus is, René Peralta módszere (1986), amelynek egy ügyes, $2 \times 2$-es mátrixokon alapuló ismertetését Robin Chapman adta meg. Mindkét algoritmus megtalálható Gyarmati Katalin *Számítógépes számelmélet* című egyetemi jegyzetében (6.4. és 6.5. fejezet).

::: kiegeszites
**Kiegészítés: a $p \equiv 3 \pmod 4$ eset.** Ha $p \equiv 3 \pmod 4$ és $a$ kvadratikus maradék modulo $p$, akkor egy megoldás egyszerű képlettel megadható:
$$x \equiv a^{\frac{p+1}{4}} \pmod p.$$
Valóban, $\frac{p+1}{4}$ egész, és az Euler-lemma szerint
$$x^2 = a^{\frac{p+1}{2}} = a \cdot a^{\frac{p-1}{2}} \equiv a \cdot 1 = a \pmod p.$$
Például $x^2 \equiv 2 \pmod{23}$: $\left(\frac{2}{23}\right) = 1$ ($23 = 8 \cdot 3 - 1$), és $x \equiv 2^6 = 64 \equiv 18$; valóban $18^2 = 324 = 14 \cdot 23 + 2$. A másik megoldás $-18 \equiv 5$. A $p \equiv 1 \pmod 4$ eset (például a fenti $p = 61$) nehezebb; erre szolgálnak a Tonelli–Shanks- és Peralta-féle algoritmusok.
:::

## 24. Titkosítások

### 24.1. A monoalfabetikus rejtjel

A történelem során az egyik leggyakoribb titkosítási mód a **monoalfabetikus rejtjel** volt: minden betűt egy szimbólummal helyettesítenek, de ugyanazt a betűt mindig ugyanazzal. Ennek egy egyszerű formáját (minden betűt az ábécében három hellyel későbbire cserélve) már Julius Caesar is használta.

Rejtjelfejtők a mai napig gyakran kerülnek olyan helyzetbe, hogy monoalfabetikus rejtjelet kell megfejteniük — nemcsak titkosításoknál, hanem például akkor is, ha egy ismeretlen történelmi írásmódot szeretnének megfejteni. Szemléltetésül gondoljunk a székely–magyar rovásírásra: aki nem tudja, melyik jel melyik betűnek felel meg, annak a megfejtés akár órákba is telhet, de nem lehetetlen. A magyar nyelvben például a leggyakoribb betű az E, így a titkosított szövegben a leggyakrabban előforduló szimbólum valószínűleg az E-nek felel meg; hasonlóan azonosíthatók a következő leggyakoribb betűk, az A és a T jelei. Ezután rövid szavakat is érdemes vizsgálni: a magyarban nagyon gyakori az „az” névelő, vagyis az A jelét gyakran követi a Z jele. Ezt a módszert **gyakoriságelemzésnek** nevezzük.

Ha az olvasónak van kedve és ideje, érdemes elolvasnia a rejtjelezés egyik leghíresebb irodalmi megjelenését, Edgar Allan Poe *Az aranybogár* (1843) című novelláját, amelyben lényegében egy monoalfabetikus rejtjel megfejtése történik.

### 24.2. A Vernam-féle titkosító eljárás

A modern titkosítási rendszerek első lépése, hogy a szöveget számsorozattal írják le; például minden betűhöz hozzárendelünk egy rögzített hosszú $0$–$1$ sorozatot (a jegyzet ehhez egy $6$ bites kódtáblázatot ad meg, amelyben például $\text{A} = 000001$, $\text{B} = 000010$). Az így kódolt szöveg azonban betűgyakoriság-elemzéssel könnyen visszafejthető (a magyar szövegben az E kódja fordul elő a leggyakrabban), ezért ezt a számsorozatot titkosítani kell.

A **Vernam-féle titkosító eljárás** (Gilbert Vernam, 1917) során a bitsorozatként leírt üzenetet bitenként összeadjuk egy titkos kulcssorozattal:
$$\begin{aligned} \text{Üzenet:} &\quad (a_1, \dots, a_N) \in \{0, 1\}^N \\ \oplus\ \text{Titkos kulcs:} &\quad (e_1, \dots, e_N) \in \{0, 1\}^N \\ \text{Kódolt üzenet:} &\quad (f_1, \dots, f_N) \in \{0, 1\}^N, \qquad f_i = a_i \oplus e_i, \end{aligned}$$
ahol az összeadás modulo $2$ történik:
$$0 \oplus 0 = 0, \qquad 1 \oplus 1 = 0, \qquad 0 \oplus 1 = 1, \qquad 1 \oplus 0 = 1.$$
A visszafejtés ugyanígy megy: $f_i \oplus e_i = a_i \oplus e_i \oplus e_i = a_i$, hiszen $e_i \oplus e_i = 0$.

**Példa.** Üzenet: $101100$, kulcs: $011010$; a kódolt üzenet $110110$. A címzett ugyanazzal a kulccsal: $110110 \oplus 011010 = 101100$.

Ha a kulcs **valódi véletlen sorozat**, akkor a titkosítás során az üzenet minden bitje (egymástól függetlenül) azonos valószínűséggel változik meg, illetve marad változatlan; a kódolt üzenet ezért semmilyen információt nem árul el az üzenetről. Claude Shannon 1949-ben bebizonyította, hogy ez a módszer (ha a kulcsot csak egyszer használják) **tökéletes biztonságot** nyújt. Az eljárás fő hátránya, hogy a titkos kulcsnak ugyanolyan hosszúnak kell lennie, mint az üzenetnek, és egy kulcsot nem szabad kétszer felhasználni.

Valódi véletlen sorozatot előállítani hosszú, fáradságos és költséges folyamat. Ezen ma úgy segítenek, hogy számítógépekkel és számelméleti algoritmusokkal véletlennek tűnő, úgynevezett **pszeudovéletlen sorozatokat** állítanak elő. A területen írt első közös cikkükben (1997) Mauduit és Sárközy a már látott Legendre-szimbólumos konstrukciót adta meg:
$$E_{p-1} = \left(\left(\frac{1}{p}\right), \left(\frac{2}{p}\right), \dots, \left(\frac{p-1}{p}\right)\right).$$
Ez a konstrukció azonban minden $p$ prímre csak egyetlen sorozatot ad. Egy ügyes ötlettel Jeffrey Hoffstein és Daniel Lieman úgy terjesztette ki, hogy minden $p$ prímhez sok sorozatot kapjunk, megadva ezzel pszeudovéletlen sorozatoknak egy nagy családját:
$$E_p(f) = \left(\left(\frac{f(1)}{p}\right), \left(\frac{f(2)}{p}\right), \dots, \left(\frac{f(p)}{p}\right)\right),$$
ahol $f$ egész együtthatós polinom, és most $\left(\frac{0}{p}\right) \stackrel{\text{def}}{=} 1$. Például $p = 11$, $f(x) = x^2 + 1$ esetén a sorozat
$$-1, +1, -1, -1, +1, +1, -1, -1, +1, -1, +1.$$
Hoffstein és Lieman nem bizonyítottak semmit a sorozat pszeudovéletlen tulajdonságairól, csak állították, hogy erősen pszeudovéletlen. Louis Goubin, Christian Mauduit és Sárközy András (2004) bebizonyították, hogy néhány nem túl erős kikötést téve az $f$ polinomra, ezek a sorozatok statisztikai vizsgálatokkal nem különböztethetők meg a valódi véletlen sorozatoktól.

Ha a Vernam-féle eljárás kulcsaként a fenti, Legendre-szimbólummal megadott sorozatot használjuk, a feleknek elég a $p$ prímben és az $f$ polinom együtthatóiban megállapodniuk. Ezekben a számokban megállapodhatnak például a Diffie–Hellman-kulcscsere segítségével (22. fejezet), vagy a híres RSA-eljárással, amelyről a következő pontban lesz szó.

### 24.3. Az RSA

Ron Rivest, Adi Shamir és Leonard Adleman 1977-ben alkotta meg az egyik legismertebb titkosítási eljárást, az RSA-t (a név a szerzők nevének kezdőbetűiből ered; a cikk 1978-ban jelent meg). Az RSA évtizedek óta számtalan informatikai és kommunikációs rendszerben játszik jelentős szerepet. Az alkalmazás során nagyon fontos a körültekintő megvalósítás, és hogy az alapvető biztonsági szempontok mellett az apróságoknak tűnő dolgokra is ügyeljünk: ilyen például, hogy az algoritmusban szereplő $p$ és $q$ prímek ne legyenek túl közel egymáshoz; de más fontos feltételek is vannak, amelyek részletezésére nem térünk ki.

**A kulcsok előállítása.**

1. Legyen $N = pq$ két nagy, véletlenszerűen választott prím szorzata; ez az **RSA-modulus**. Ma $N$ tipikus hossza legalább $2048$ bit, ami $617$ decimális jegynek felel meg. (Az ajánlott kulcsméret a számítógépek és a faktorizációs módszerek fejlődésével folyamatosan nőtt: $512$, majd $1024$, ma legalább $2048$ bit.)
2. Mivel $N = pq$, ezért $\varphi(N) = (p - 1)(q - 1)$.
3. Válasszunk egy $e$ egészet, amelyre $(e, \varphi(N)) = 1$, és számítsuk ki azt a $d$-t, amelyre
$$ed \equiv 1 \pmod{\varphi(N)}.$$
(Ez egy lineáris kongruencia, amelyet az euklideszi algoritmussal gyorsan megoldunk.) Az $e$ a **nyilvános**, a $d$ a **titkos** (privát) kitevő.
4. Az $(N, e)$ pár a **nyilvános kulcs**, az $(N, d)$ pár a **titkos kulcs**. Az utóbbit csak az ismeri, akinek a titkosított üzeneteket küldik, és aki majd visszafejti őket.

**Titkosítás és visszafejtés.** Az üzenetet tekinthetjük egy $0 < M < N$ egész számnak. (Az egyszerűség kedvéért tegyük fel, hogy $(M, N) = 1$; ez az üzenet esetleges kis módosításával elérhető. Valójában erre a feltételre nincs szükség, csak az általános esetben a visszafejtés helyességének bizonyítása pár sorral hosszabb.)

- **A titkosított üzenet:** $C \equiv M^e \pmod N$ (ez az **RSA-függvény**).
- **A visszafejtés:** $M \equiv C^d \pmod N$.

Miért helyes a visszafejtés? Mivel $ed \equiv 1 \pmod{\varphi(N)}$, van olyan $k$ nemnegatív egész, amelyre $ed = k\varphi(N) + 1$. Az Euler–Fermat-tétel szerint
$$C^d \equiv (M^e)^d = M^{k\varphi(N) + 1} = \left(M^{\varphi(N)}\right)^k M \equiv 1^k \cdot M = M \pmod N.$$

**Egy játékpélda.** $p = 61$, $q = 53$, $N = 3233$, $\varphi(N) = 60 \cdot 52 = 3120$. Legyen $e = 17$ ($(17, 3120) = 1$); ekkor $d = 2753$, mert $17 \cdot 2753 = 46801 = 15 \cdot 3120 + 1$. Az $M = 65$ üzenet titkosítva $C = 65^{17} \bmod 3233 = 2790$, és visszafejtve $2790^{2753} \bmod 3233 = 65$.

::: kiegeszites
**Kiegészítés: a visszafejtés $(M, N) > 1$ esetén is helyes.** Elég belátni, hogy $M^{ed} \equiv M$ modulo $p$ és modulo $q$ is; ekkor a kínai maradéktétel (pontosabban a 13. fejezet lemmája) szerint modulo $N = pq$ is. Modulo $p$: ha $p \mid M$, akkor mindkét oldal $0$. Ha $p \nmid M$, akkor a kis Fermat-tétel szerint $M^{p-1} \equiv 1$, és mivel $p - 1 \mid \varphi(N) \mid ed - 1$, ezért $M^{ed} = M \cdot M^{ed-1} \equiv M \pmod p$. Modulo $q$ ugyanígy.
:::

**Miért biztonságos?** Az RSA-ban az $M \mapsto M^e \bmod N$ leképezés **egyirányú függvény** (pontosabban „csapóajtós” függvény): a titkosítás a nyilvános kulcs ismeretében moduláris hatványozással gyorsan elvégezhető — időigénye $O\big(\log e\,(\log N)^2\big)$ bitművelet —, az invertálás azonban a $d$ titkos kitevő ismerete nélkül nagyon nehéz. Az RSA elleni támadások nagy része arra irányul, hogy $d$ ismerete nélkül hogyan lehetne invertálni az RSA-függvényt, vagyis: ha csak az $(N, e, C)$ hármas ismert (és $p$, $q$, $d$ titkos), vissza tudjuk-e állítani $C$-ből az eredeti $M$ üzenetet.

Ha $p$-t és $q$-t ismernénk, $d$ könnyen kiszámolható volna: az $ex \equiv 1 \pmod{(p-1)(q-1)}$ lineáris kongruencia megoldása. De $p$ és $q$ titkos, csak $N = pq$ ismert, és $p$, $q$ meghatározásához $N$-et faktorizálni kell, ami nagy $N$ esetén nagyon-nagyon lassú. Ha $p$ és $q$ elég nagyok, $N$ faktorizálása még a mai számítógépekkel is (például évezredekig) tartana. Míg a faktorizálásra nem ismert gyors algoritmus, a fordított irányú műveletre — $p$ és $q$ ismeretében $N = pq$ kiszámítására — nagyon gyors algoritmusok vannak. Az RSA-ról bővebben (a helytelen alkalmazások buktatóiról is) Gyarmati Katalin *Számítógépes számelmélet* című jegyzetében olvashatunk.

## A VII. rész összefoglalása

- **Kvadratikus maradék** modulo $m$: olyan $a$, amelyre $x^2 \equiv a \pmod m$ megoldható. Modulo $p$ (páratlan prím) a nem nulla maradékok fele kvadratikus maradék.
- **Legendre-szimbólum:** $\left(\frac{a}{p}\right) = \pm 1$. **Euler-lemma:** $\left(\frac{a}{p}\right) \equiv a^{(p-1)/2} \pmod p$. Multiplikatív; $\left(\frac{-1}{p}\right) = (-1)^{(p-1)/2}$; $\left(\frac{2}{p}\right) = (-1)^{(p^2-1)/8}$.
- **Kvadratikus reciprocitás:** $\left(\frac{p}{q}\right)\left(\frac{q}{p}\right) = (-1)^{\frac{p-1}{2}\cdot\frac{q-1}{2}}$. Bizonyítás: Gauss-lemma ($\left(\frac{a}{p}\right) = (-1)^n$, $n$ = a $\frac{p}{2}$-nél nagyobb maradékok száma az $a, 2a, \dots, \frac{p-1}{2}a$ között) és rácspontszámlálás.
- **Jacobi-szimbólum:** összetett páratlan „nevezőre” kiterjesztve ugyanazok a szabályok érvényesek, így faktorizálás nélkül, az euklideszi algoritmushoz hasonlóan gyorsan számolható; de összetett modulusra nem dönti el a megoldhatóságot.
- **Négyzetgyökvonás modulo $p$:** Tonelli–Shanks, Peralta; $p \equiv 3 \pmod 4$ esetén $x \equiv a^{(p+1)/4}$.
- **Titkosítások:** monoalfabetikus rejtjel (gyakoriságelemzéssel törhető); Vernam ($\oplus$ véletlen kulccsal tökéletesen biztonságos; pszeudovéletlen kulcs: Legendre-sorozatok); **RSA:** $N = pq$, $ed \equiv 1 \pmod{\varphi(N)}$, $C = M^e$, $M = C^d \bmod N$; biztonsága a faktorizálás nehézségén múlik.

## Feladatok a VII. részhez

1. Döntsük el, megoldható-e az $x^2 \equiv 150 \pmod{1009}$ kongruencia ($1009$ prím).
2. Számítsuk ki a $\left(\frac{1001}{9907}\right)$ Legendre-szimbólumot ($9907$ prím) a) faktorizálással, b) Jacobi-szimbólumokkal.
3. Bizonyítsuk be, hogy ha $p > 3$ prím, akkor $\left(\frac{-3}{p}\right) = 1 \iff p \equiv 1 \pmod 3$.
4. Bizonyítsuk be, hogy végtelen sok $4k + 1$ alakú prím van. (Útmutatás: $(2p_1 \cdots p_k)^2 + 1$.)
5. Határozzuk meg az $x^2 \equiv 2 \pmod{119}$ kongruencia összes megoldását.
6. RSA kis számokkal: $p = 5$, $q = 11$, $e = 3$. Határozzuk meg $d$-t, titkosítsuk az $M = 7$ üzenetet, és ellenőrizzük a visszafejtést.
7. Miért nem szabad a Vernam-eljárásban ugyanazt a kulcsot két üzenethez felhasználni? (Útmutatás: mit kap a lehallgató, ha a két kódolt üzenetet bitenként összeadja?)

### Megoldási útmutatók

1. $\left(\frac{150}{1009}\right) = \left(\frac{2}{1009}\right)\left(\frac{3}{1009}\right)\left(\frac{25}{1009}\right)$. Itt $1009 \equiv 1 \pmod 8$, így $\left(\frac{2}{1009}\right) = 1$; $\left(\frac{3}{1009}\right) = \left(\frac{1009}{3}\right) = \left(\frac{1}{3}\right) = 1$; $\left(\frac{25}{1009}\right) = 1$. Tehát megoldható.
2. a) $1001 = 7 \cdot 11 \cdot 13$. $\left(\frac{7}{9907}\right) = -\left(\frac{9907}{7}\right) = -\left(\frac{2}{7}\right) = -1$ (mindkettő $4k + 3$ alakú); $\left(\frac{11}{9907}\right) = -\left(\frac{9907}{11}\right) = -\left(\frac{7}{11}\right) = -\left(-\left(\frac{11}{7}\right)\right) = \left(\frac{4}{7}\right) = 1$; $\left(\frac{13}{9907}\right) = \left(\frac{9907}{13}\right) = \left(\frac{1}{13}\right) = 1$. A szorzat: $-1$. b) $\left(\frac{1001}{9907}\right) = \left(\frac{9907}{1001}\right)$ (mert $1001 \equiv 1 \pmod 4$) $= \left(\frac{898}{1001}\right) = \left(\frac{2}{1001}\right)\left(\frac{449}{1001}\right)$; $1001 \equiv 1 \pmod 8$, így az első tényező $1$; $\left(\frac{449}{1001}\right) = \left(\frac{1001}{449}\right) = \left(\frac{103}{449}\right) = \left(\frac{449}{103}\right) = \left(\frac{37}{103}\right) = \left(\frac{103}{37}\right) = \left(\frac{29}{37}\right) = \left(\frac{37}{29}\right) = \left(\frac{8}{29}\right) = \left(\frac{2}{29}\right)^3 = -1$ ($29 \equiv 5 \pmod 8$). Az eredmény: $-1$.
3. $\left(\frac{-3}{p}\right) = \left(\frac{-1}{p}\right)\left(\frac{3}{p}\right) = (-1)^{\frac{p-1}{2}} \cdot (-1)^{\frac{p-1}{2}}\left(\frac{p}{3}\right) = \left(\frac{p}{3}\right)$, ami pontosan akkor $1$, ha $p \equiv 1 \pmod 3$.
4. Ha $q \mid N = (2p_1 \cdots p_k)^2 + 1$ prím, akkor $q$ páratlan, és $(2p_1 \cdots p_k)^2 \equiv -1 \pmod q$, tehát $\left(\frac{-1}{q}\right) = 1$, így $q \equiv 1 \pmod 4$; és $q \ne p_i$.
5. $119 = 7 \cdot 17$. Modulo $7$: $x \equiv \pm 3$; modulo $17$: $x \equiv \pm 6$ ($36 \equiv 2$). A négy kombináció a kínai maradéktétellel: $x \equiv 11, 45, 74, 108 \pmod{119}$.
6. $N = 55$, $\varphi(N) = 40$, $3d \equiv 1 \pmod{40}$, $d = 27$. $C = 7^3 = 343 \equiv 13 \pmod{55}$, és $13^{27} \equiv 7 \pmod{55}$.
7. Ha $f = a \oplus e$ és $f' = a' \oplus e$, akkor $f \oplus f' = a \oplus a'$: a kulcs kiesik, és a két üzenet bitenkénti összegéből gyakoriságelemzéssel már sok minden kiolvasható.

---
