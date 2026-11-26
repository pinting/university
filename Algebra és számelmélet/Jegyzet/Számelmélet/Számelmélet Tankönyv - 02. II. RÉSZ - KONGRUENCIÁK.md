# II. RÉSZ: KONGRUENCIÁK

A második rész a számelmélet egyik legfontosabb eszközét, a **kongruenciát** vezeti be. A kongruencia lényegében annyit jelent, hogy a számoknak csak a maradékát figyeljük egy rögzített számmal osztva — mint az órán, ahol $13$ óra ugyanaz, mint $1$ óra. Kiderül, hogy a maradékokkal majdnem ugyanúgy lehet számolni, mint a számokkal, és ez rengeteg feladatot hihetetlenül leegyszerűsít. A rész csúcspontja az **Euler–Fermat-tétel**, amely a moduláris hatványozás, a lineáris kongruenciák és később a titkosítások alapja lesz.

## 6. Kongruenciák (alapok)

A kongruenciák ma is használatos, kidolgozott elmélete Carl Friedrich Gauss (1777–1855) nevéhez fűződik, aki az 1801-ben megjelent *Disquisitiones Arithmeticae* című művében vezette be a $\equiv$ jelölést. Maga a fogalom azonban sokkal régebbi: közvetve kongruenciákról szól a több mint ezerötszáz éves kínai maradéktétel is, amelyet a 13. fejezetben ismertetünk, és lényegében kongruenciákkal dolgoztak Fermat és Euler is.

> **6.1. Definíció.** Legyen $m$ pozitív egész. Azt mondjuk, hogy
> $$a \equiv b \pmod m, \qquad (6.1)$$
> ha $a$ és $b$ $m$-mel vett osztási maradéka ugyanaz. Más szóval: $m \mid a - b$. Szóban: „$a$ kongruens $b$-vel modulo $m$”. Ha ez nem teljesül, $a \not\equiv b \pmod m$, „$a$ inkongruens $b$-vel”.

A két megfogalmazás valóban ekvivalens: ha $a = mq_1 + r$ és $b = mq_2 + r$ (azonos maradékkal), akkor $a - b = m(q_1 - q_2)$; fordítva, ha $m \mid a - b$ és $b = mq + r$ ($0 \le r < m$), akkor $a = b + mk = m(q + k) + r$, tehát $a$ maradéka is $r$.

**Példák.** $15 \equiv 27 \pmod 6$, mert $6 \mid 15 - 27 = -12$ (mindkettő maradéka $3$); de $16 \not\equiv 27 \pmod 6$. Továbbá $-1 \equiv 6 \pmod 7$, $100 \equiv 1 \pmod{9}$, és minden páros szám kongruens $0$-val, minden páratlan $1$-gyel modulo $2$. A $\pmod 6$ helyett röviden $(6)$-ot is írhatunk.

**Az óra-aritmetika.** A modulusok a való életben is megjelennek. Tegyük fel, hogy egy előadás minden második napon van (a vasárnapot is beleértve), és az első előadás hétfőre esik. Melyik lesz az első előadás, amely keddre esik? Számozzuk a napokat hétfőtől kezdve $0, 1, 2, \dots$-vel; a hét napjai $7$ naponként ismétlődnek, és a keddek éppen a $7$-tel osztva $1$ maradékot adó napok. Az $(x + 1)$-edik előadás a $2x$-edik napra esik, így a
$$2x \equiv 1 \pmod 7$$
kongruencia legkisebb nemnegatív megoldását keressük. Az $x = 0, 1, 2, 3, 4$ eseteket végignézve ($2x = 0, 2, 4, 6, 8$) azt látjuk, hogy a legkisebb megoldás $x = 4$ ($8 = 7 + 1$). Tehát az **ötödik** előadás esik először keddre.

Előfordulnak magasabb fokú kongruenciák is. Például
$$x^2 \equiv 1 \pmod 8$$
megoldásai $x \equiv 1, 3, 5, 7 \pmod 8$, hiszen $1^2 = 1$, $3^2 = 9$, $5^2 = 25$, $7^2 = 49$ mind $1$ maradékot adnak $8$-cal osztva (a páros számok négyzete pedig páros). Egy másodfokú „egyenletnek” tehát itt négy megoldása van! Erre a jelenségre a 14. fejezetben visszatérünk.

Néha akkor is használunk kongruenciát, ha a két oldalon nem egész számok állnak; ekkor $a \equiv b \pmod m$ azt jelenti, hogy $a - b$ az $m$ egész számú többszöröse. Például $\frac{3}{2} \equiv \frac{1}{2} \pmod 1$, vagy a szögeknél $-\pi \equiv \pi \pmod{2\pi}$.

### Maradékosztályok

Rögzített $m$ mellett az egész számok $m$ darab **maradékosztályba** sorolhatók aszerint, hogy $m$-mel osztva $0$, $1$, $\dots$, $m - 1$ maradékot adnak. Az $a$ számot tartalmazó maradékosztály
$$\overline{a} = \{\dots, a - 2m, a - m, a, a + m, a + 2m, \dots\}$$
— ezt a jegyzet $(a)$-val is jelöli. Két szám pontosan akkor van ugyanabban a maradékosztályban, ha kongruensek modulo $m$. A maradékosztály bármelyik elemét a maradékosztály **reprezentánsának** nevezzük. Modulo $7$ például a $\overline{3}$ maradékosztály $\{\dots, -11, -4, 3, 10, 17, \dots\}$.

### A kongruenciák alaptulajdonságai

> **Tétel (a kongruenciák alaptulajdonságai).** Rögzített $m$ modulus mellett:
>
> (i) $a \equiv a$; és ha $a \equiv b$, akkor $b \equiv a$;
>
> (ii) ha $a \equiv b$ és $b \equiv c$, akkor $a \equiv c$;
>
> (iii) ha $a \equiv a'$ és $b \equiv b'$, akkor $a + b \equiv a' + b'$, $a - b \equiv a' - b'$ és $ab \equiv a'b'$;
>
> (iv) ha $a \equiv a'$, $b \equiv b'$ és $x, y \in \mathbb{Z}$, akkor $xa + yb \equiv xa' + yb'$.
>
> Továbbá, ha $p(a, b, c, \dots)$ egész együtthatós többváltozós polinom, és $a \equiv a'$, $b \equiv b'$, $c \equiv c'$, $\dots$, akkor
> $$p(a, b, c, \dots) \equiv p(a', b', c', \dots) \pmod m.$$

A jegyzet ezek bizonyítását az olvasóra bízza; mindegyik néhány soros.

::: kiegeszites
**Kiegészítés: a bizonyítások.** (i) $m \mid 0 = a - a$; ha $m \mid a - b$, akkor $m \mid -(a - b) = b - a$. (ii) Ha $m \mid a - b$ és $m \mid b - c$, akkor $m \mid (a - b) + (b - c) = a - c$. (iii) Az összegre: $(a + b) - (a' + b') = (a - a') + (b - b')$, mindkét tagot osztja $m$; a különbség ugyanígy. A szorzatra a trükk egy tag hozzáadása és levonása:
$$ab - a'b' = ab - a'b + a'b - a'b' = (a - a')b + a'(b - b'),$$
és $m$ mindkét tagot osztja. (iv) A (iii)-ból: $xa \equiv xa'$ (hiszen $x \equiv x$), és összeadjuk.

A polinomokra: a (iii) szorzásra vonatkozó részét ismételten alkalmazva $a^k \equiv (a')^k$, majd tetszőleges $a^k b^\ell c^r \cdots$ szorzatra is kongruencia adódik; egész együtthatóval szorozva (iv) szerint is, végül a tagokat összeadva (iii) szerint. $\blacksquare$
:::

Az alaptulajdonságok azt jelentik, hogy **kongruenciákkal úgy számolhatunk, mint egyenletekkel**: összeadhatjuk, kivonhatjuk, összeszorozhatjuk őket, hatványozhatjuk mindkét oldalt, és bármely tagot kicserélhetjük egy vele kongruens számra. Ez az utóbbi a legfontosabb a gyakorlatban: hosszú számolás közben bármikor „redukálhatunk”, azaz egy számot a maradékával helyettesíthetünk.

**Példa.** Mi a $7^{100}$ utolsó számjegye? Az utolsó jegy a $10$-zel vett maradék. Mivel $7^2 = 49 \equiv -1 \pmod{10}$, ezért $7^4 \equiv (-1)^2 = 1$, és $7^{100} = (7^4)^{25} \equiv 1^{25} = 1 \pmod{10}$. Az utolsó jegy $1$.

Ezekkel az eszközökkel már megoldhatjuk a 2. fejezet nyitva hagyott feladatát.

*A 2.25. Feladat megoldása (nincs „prímpolinom”).* Tegyük fel, hogy van olyan nem konstans $f(x)$ egész együtthatós polinom, amelynek minden pozitív egész helyen felvett értéke prím. Ekkor $f$ főegyütthatója pozitív, hiszen különben elég nagy $x$-re $f(x)$ negatív volna, tehát nem prím. Legyen
$$f(1) = q;$$
ez a feltevés szerint prím. Tekintsük az $f(1 + tq)$ számokat, $t = 1, 2, 3, \dots$ Mivel $1 + tq \equiv 1 \pmod q$, a polinomokra vonatkozó tulajdonság szerint
$$f(1 + tq) \equiv f(1) = q \equiv 0 \pmod q,$$
vagyis $q \mid f(1 + tq)$ minden $t$-re. Mivel $f(1 + tq)$ prím, és osztható a $q$ prímmel, csak $f(1 + tq) = q$ lehet. Másrészt $f$ nem konstans és főegyütthatója pozitív, így $t \to \infty$ esetén $f(1 + tq) \to \infty$. Ez ellentmondás. $\blacksquare$

### Osztás kongruenciákban

Láttuk, hogy az összeadással, kivonással és szorzással ugyanúgy bánhatunk, mint az egyenleteknél. Az **osztással** azonban baj lehet! Például
$$8 \equiv 20 \pmod 6,$$
de mindkét oldalt $4$-gyel osztva
$$2 \not\equiv 5 \pmod 6.$$
Hogyan oszthatunk akkor?

> **6.2. Tétel.** Legyen $a, b, k \in \mathbb{Z}$, $k \ne 0$. Ekkor
> $$ka \equiv kb \pmod m \quad \iff \quad a \equiv b \pmod{\frac{m}{(k, m)}}.$$
> Speciálisan, ha $(k, m) = 1$, akkor $ka \equiv kb \pmod m$-ből $a \equiv b \pmod m$ következik: **a modulushoz relatív prím számmal szabad egyszerűsíteni.**

Az előző példában tehát $8 \equiv 20 \pmod 6$-ot $4$-gyel osztva a modulust is el kell osztani $(4, 6) = 2$-vel:
$$2 \equiv 5 \pmod 3,$$
ami valóban igaz.

*Bizonyítás.* Legyen $d = (k, m)$, $k = k_1 d$ és $m = m_1 d$. Ekkor $(k_1, m_1) = 1$ (ha $k_1$-nek és $m_1$-nek volna $1$-nél nagyobb közös osztója, akkor $d$ nem volna a legnagyobb közös osztó). Így
$$ka \equiv kb \pmod m \iff m \mid k(a - b) \iff m_1 d \mid k_1 d (a - b) \iff m_1 \mid k_1 (a - b).$$
Mivel $(k_1, m_1) = 1$, a 4. fejezet „hasznos következménye” szerint $m_1 \mid k_1(a - b) \iff m_1 \mid a - b$ (a $\Leftarrow$ irány nyilvánvaló). Tehát
$$ka \equiv kb \pmod m \iff a \equiv b \pmod{m_1}, \quad \text{azaz} \quad a \equiv b \pmod{\tfrac{m}{(k, m)}}. \ \blacksquare$$

### Teljes maradékrendszer

> **6.3. Definíció.** Modulo $m$ **teljes maradékrendszernek** nevezzük az olyan számhalmazt, amelyet úgy kapunk, hogy mind az $m$ maradékosztályból pontosan egy reprezentánst választunk.

**Példa.** Modulo $10$ teljes maradékrendszer a
$$1, 16, 24, 37, 42, 59, 63, 75, 88, 1000$$
számok halmaza: a maradékaik $1, 6, 4, 7, 2, 9, 3, 5, 8, 0$, mindegyik pontosan egyszer. A „legtermészetesebb” teljes maradékrendszer a $0, 1, \dots, m - 1$, de gyakran kényelmesebb a $0$ körül szimmetrikus választás, például modulo $5$: $-2, -1, 0, 1, 2$.

> **6.4. Tétel.** Adott egész számok pontosan akkor alkotnak teljes maradékrendszert modulo $m$, ha
>
> a) számuk $m$, és
>
> b) közülük bármely kettő inkongruens modulo $m$.

*Bizonyítás.* A feltételek szükségessége nyilvánvaló. Elégségesség: a b) tulajdonság miatt az adott számok mind különböző maradékosztályba esnek, és mivel a) szerint $m$ darab van belőlük, az $m$ maradékosztály mindegyikébe esik egy. $\blacksquare$

> **6.5. Tétel.** Legyen $r_1, r_2, \dots, r_m$ teljes maradékrendszer modulo $m$, továbbá $(a, m) = 1$ és $b$ tetszőleges egész. Ekkor
> $$ar_1 + b,\ ar_2 + b,\ \dots,\ ar_m + b$$
> is teljes maradékrendszer modulo $m$.

*Bizonyítás.* Az új rendszer elemeinek száma is $m$, így a 6.4. Tétel szerint csak azt kell belátni, hogy páronként inkongruensek. Ha valamely $i \ne j$-re
$$ar_i + b \equiv ar_j + b \pmod m$$
volna, akkor $b$-t kivonva $ar_i \equiv ar_j$, és $(a, m) = 1$ miatt a 6.2. Tétel szerint $a$-val egyszerűsíthetünk: $r_i \equiv r_j \pmod m$. Ez ellentmond annak, hogy $r_1, \dots, r_m$ teljes maradékrendszer. $\blacksquare$

**Figyelem!** A tétel $(a, m) \ne 1$ esetén nem igaz: modulo $6$ a $0, 1, 2, 3, 4, 5$ rendszert $2$-vel szorozva $0, 2, 4, 0, 2, 4$ adódik, ami nem teljes maradékrendszer.

### Redukált maradékrendszer és az Euler-féle $\varphi$ függvény

Ha $a \equiv b \pmod m$, akkor $(a, m) = (b, m)$ (hiszen $a = b + km$, és a közös osztók ugyanazok). Így a maradékosztály minden elemére ugyanaz a legnagyobb közös osztó a modulussal.

> **6.6. Definíció.** Az $\overline{a}$ maradékosztályt modulo $m$ **redukált maradékosztálynak** nevezzük, ha $(a, m) = 1$.
>
> **6.7. Definíció.** Modulo $m$ **redukált maradékrendszernek** nevezzük az olyan számhalmazt, amelyet úgy kapunk, hogy minden redukált maradékosztályból pontosan egy reprezentánst választunk.
>
> **6.8. Definíció.** A modulo $m$ redukált maradékrendszer elemeinek számát $\varphi(m)$-mel jelöljük (**Euler-féle $\varphi$ függvény**).

Egyszerűbben, ekvivalens módon:

> **6.9. Definíció.** $\varphi(m)$ az $m$-nél nem nagyobb, $m$-hez relatív prím pozitív egészek száma.

(A két definíció egyezik, mert az $1, 2, \dots, m$ számok teljes maradékrendszert alkotnak, és közülük éppen az $m$-hez relatív prímek esnek redukált maradékosztályba.)

**Példa.** Modulo $30$ redukált maradékrendszer: $1, 7, 11, 13, 17, 19, 23, 29$. Tehát $\varphi(30) = 8$. Modulo $12$: $1, 5, 7, 11$, így $\varphi(12) = 4$. Ha $p$ prím, akkor $1, 2, \dots, p - 1$ mind relatív prím $p$-hez, tehát $\varphi(p) = p - 1$.

> **6.10. Tétel.** Ha az $n$ pozitív egész kanonikus alakja $n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_r^{\alpha_r}$, akkor
> $$\varphi(n) = n\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right)\cdots\left(1 - \frac{1}{p_r}\right).$$

A tételt a 17. fejezetben bizonyítjuk. Az általános képletből és a definícióból is könnyen látható, hogy $p$ prímre $\varphi(p) = p - 1$, és $\varphi(p^\alpha) = p^\alpha - p^{\alpha - 1}$, ha $\alpha \ge 1$ (az $1, \dots, p^\alpha$ számok közül pontosan a $p$ többszörösei, $p^{\alpha-1}$ darab, nem relatív prímek $p^\alpha$-hoz).

**Példák.**
$$\varphi(30) = 30 \cdot \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{5}\right) = 30 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{4}{5} = 8, \qquad \varphi(45) = 45 \cdot \left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{5}\right) = 24.$$

> **6.11. Tétel.** Adott számok pontosan akkor alkotnak redukált maradékrendszert modulo $m$, ha
>
> a) számuk $\varphi(m)$,
>
> b) közülük bármely kettő inkongruens modulo $m$, és
>
> c) mindegyikük relatív prím $m$-hez.

*Bizonyítás.* A szükségesség nyilvánvaló. Elégségesség: b) miatt minden szám más maradékosztályba tartozik (minden maradékosztályból legfeljebb egyet választottunk), c) miatt csak redukált maradékosztályokból választottunk. Mivel a) szerint a számok száma pontosan $\varphi(m)$, ez csak úgy lehet, hogy minden redukált maradékosztályból pontosan egyet választottunk. $\blacksquare$

> **6.12. Tétel.** Ha $r_1, r_2, \dots, r_{\varphi(m)}$ redukált maradékrendszer modulo $m$, és $(a, m) = 1$, akkor
> $$ar_1,\ ar_2,\ \dots,\ ar_{\varphi(m)}$$
> is redukált maradékrendszer modulo $m$.

*Bizonyítás.* A 6.11. Tétel feltételeit ellenőrizzük. A számok száma $\varphi(m)$. Páronként inkongruensek: ha $ar_i \equiv ar_j$, akkor $(a, m) = 1$ miatt egyszerűsíthetünk, $r_i \equiv r_j$, ami ellentmondás. Végül $(r_i, m) = 1$ és $(a, m) = 1$ miatt $(ar_i, m) = 1$ (ha egy $p$ prím osztaná $ar_i$-t és $m$-et, akkor Eukleidész I. tétele szerint $a$-t vagy $r_i$-t is osztaná). $\blacksquare$

**Példa.** Modulo $12$ az $1, 5, 7, 11$ redukált maradékrendszert $5$-tel szorozva $5, 25, 35, 55$, ezek maradékai $5, 1, 11, 7$ — ugyanazok a maradékok, csak más sorrendben. Ez a „keveredés” a következő tétel bizonyításának kulcsa.

### Az Euler–Fermat-tétel

Elérkeztünk a számelmélet egyik legnevezetesebb tételéhez.

> **6.13. Tétel (Euler–Fermat).** Ha $(a, m) = 1$, akkor
> $$a^{\varphi(m)} \equiv 1 \pmod m.$$

A tétel speciális esetének, a kis Fermat-tételnek az eredete 1640-ig nyúlik vissza, amikor Fermat egy levelében bizonyítás nélkül megfogalmazta prímekre vonatkozó állítását. Az első közölt bizonyítást Euler adta 1736-ban (megjelent 1741-ben), az általános, $\varphi$ függvényes alakot pedig Euler 1763-ban bizonyította. Leonhard Euler (1707–1783) a svájci Bázelben született; apja lelkésznek szánta, és a bázeli egyetemen — ahová már 13 évesen beiratkozott — teológiát is tanult. A matematika azonban sokkal jobban érdekelte: Johann Bernoulli, akitől magánórákat kapott, győzte meg Euler apját, hogy fiából neves matematikus lehet.

*Bizonyítás.* Legyen
$$r_1, r_2, \dots, r_{\varphi(m)} \qquad (6.2)$$
redukált maradékrendszer modulo $m$. Mivel $(a, m) = 1$, a 6.12. Tétel szerint
$$ar_1, ar_2, \dots, ar_{\varphi(m)} \qquad (6.3)$$
is redukált maradékrendszer. A (6.2) és (6.3) rendszer tehát ugyanazokból a maradékosztályokból áll, csak más sorrendben, így elemeik szorzata kongruens modulo $m$:
$$r_1 r_2 \cdots r_{\varphi(m)} \equiv (ar_1)(ar_2) \cdots (ar_{\varphi(m)}) = a^{\varphi(m)} \, r_1 r_2 \cdots r_{\varphi(m)} \pmod m.$$
Mivel $(r_i, m) = 1$ minden $i$-re, a 6.2. Tétel szerint az összes $r_i$-vel egyszerűsíthetünk, és
$$1 \equiv a^{\varphi(m)} \pmod m$$
adódik. $\blacksquare$

**FONTOS: a tételben $(a, m) = 1$!** Enélkül az állítás hamis: például $2^{\varphi(4)} = 2^2 = 4 \equiv 0 \not\equiv 1 \pmod 4$. Ha $(a, m) > 1$, akkor $a$ semmilyen pozitív hatványa sem lehet $1$-gyel kongruens, hiszen $(a, m)$ osztaná $a^k$-t és $m$-et, így $1$-et is.

Ha a modulus egy $p$ prím, akkor $\varphi(p) = p - 1$, és a tétel speciális esete:

> **6.14. Tétel (kis Fermat-tétel).** Ha $p$ prím és $(a, p) = 1$ (azaz $p \nmid a$), akkor
> $$a^{p-1} \equiv 1 \pmod p.$$

A kis Fermat-tételt gyakran
$$a^p \equiv a \pmod p$$
alakban mondják ki, ahol $a$ tetszőleges egész. Ez valóban minden $a$-ra igaz: ha $p \nmid a$, akkor a 6.14. Tételt $a$-val szorozzuk; ha $p \mid a$, akkor mindkét oldal $0$ modulo $p$.

**Példák.** (1) $7^{222}$ utolsó jegye: $\varphi(10) = 4$ és $(7, 10) = 1$, tehát $7^4 \equiv 1 \pmod{10}$; $222 = 4 \cdot 55 + 2$, így $7^{222} = (7^4)^{55} \cdot 7^2 \equiv 49 \equiv 9 \pmod{10}$. Az utolsó jegy $9$.

(2) A kis Fermat-tétel megfordítása **nem** igaz: abból, hogy $2^{n-1} \equiv 1 \pmod n$, nem következik, hogy $n$ prím. A legkisebb ellenpélda $n = 341 = 11 \cdot 31$, amelyre $2^{340} \equiv 1 \pmod{341}$. (Az ilyen számokat $2$ alapú álprímeknek nevezik.) A kis Fermat-tétel tehát *összetettségi* tesztként használható — ha $a^{n-1} \not\equiv 1 \pmod n$, akkor $n$ biztosan összetett —, prímtesztként azonban önmagában nem.

### Egy alkalmazás: „prímképletek” exponenciális tagokkal

Az Euler–Fermat-tétel és a kis Fermat-tétel számtalan bizonyításban szerepel. Lássunk egy példát, amely a 2. fejezet „prímképletek” témaköréhez kapcsolódik: a 2.25. Feladatban láttuk, hogy polinom nem adhat csupa prímet. Exponenciális tagokat is megengedve sem jobb a helyzet.

> **6.15. Tétel.** Legyen $P$ egy $k$-változós egész együtthatós polinom, és definiáljuk az $f$ függvényt az
> $$f(n) = P(n, 2^n, 3^n, \dots, k^n)$$
> képlettel. Ha $f(n) \to \infty$, amint $n \to \infty$, akkor $f(n)$ végtelen sok pozitív egész $n$-re összetett.

> **6.16. Megjegyzés.** Az $f(n) \to \infty$ feltétel valóban szükséges: ha $f(n) = 2^n \cdot 3^n - 6^n + 5$, akkor $f(n) = 5$ minden $n$-re, ami mindig prím. (Itt $P(x_1, \dots, x_6) = x_2 x_3 - x_6 + 5$.)

*Bizonyítás.* Indirekt módon tegyük fel, hogy van olyan $N_0$, hogy $n > N_0$ esetén $f(n)$ mindig prím. Mivel $f(n) \to \infty$, választhatunk olyan $n > N_0$-t, amelyre $f(n) = p$ prím és $p > k$. Tekintsük az
$$m = n + t\,p(p - 1) \qquad (t = 1, 2, 3, \dots)$$
számokat. Nyilván $m \equiv n \pmod p$. Másrészt bármely $2 \le a \le k$ egészre $(a, p) = 1$ (hiszen $a \le k < p$), így a kis Fermat-tétel szerint $a^{p-1} \equiv 1 \pmod p$, és
$$a^m = a^n \cdot \left(a^{p-1}\right)^{tp} \equiv a^n \cdot 1^{tp} = a^n \pmod p.$$
Tehát
$$m \equiv n, \quad 2^m \equiv 2^n, \quad 3^m \equiv 3^n, \quad \dots, \quad k^m \equiv k^n \pmod p,$$
és a polinomokra vonatkozó tulajdonság szerint
$$f(m) = P(m, 2^m, \dots, k^m) \equiv P(n, 2^n, \dots, k^n) = f(n) = p \equiv 0 \pmod p.$$
Vagyis $p \mid f(m)$. Mivel $m > N_0$, $f(m)$ prím, és osztja a $p$ prím, ezért $f(m) = p$. Ez minden $t$-re igaz, ugyanakkor $t \to \infty$ esetén $m \to \infty$, így $f(m) \to \infty$ — ellentmondás. $\blacksquare$

## 7. Moduláris hatványozás

Számítsuk ki $2^{331}$ maradékát $17$-tel osztva! Ilyen feladat a titkosítási eljárásokban (24. fejezet) óriási, több száz jegyű számokkal fordul elő, ezért fontos, hogy *gyorsan* el tudjuk végezni.

**1. lépés: a kitevő csökkentése.** A kis Fermat-tétel szerint $2^{16} \equiv 1 \pmod{17}$, így $2^{160} = (2^{16})^{10} \equiv 1$ és $2^{320} \equiv 1 \pmod{17}$. Ezért
$$2^{331} = 2^{320} \cdot 2^{11} \equiv 2^{11} \pmod{17}.$$
(Általában: ha $(a, m) = 1$, akkor a kitevőt modulo $\varphi(m)$ redukálhatjuk.)

**2. lépés: ismételt négyzetre emelés.** Készítsünk táblázatot a $2^{2^k}$ alakú hatványok $17$-es maradékairól. Minden rubrikát az előző négyzetre emelésével, majd redukálásával kapunk:

| hatvány | $2^1$ | $2^2$ | $2^4$ | $2^8$ |
|---|---|---|---|---|
| maradék mod $17$ | $2$ | $4$ | $16 \equiv -1$ | $(-1)^2 = 1$ |

**3. lépés: a kitevő kettes számrendszerben.** $11 = 8 + 2 + 1$, így
$$2^{11} = 2^8 \cdot 2^2 \cdot 2^1 \equiv 1 \cdot 4 \cdot 2 = 8 \pmod{17}.$$
Tehát $2^{331} \equiv 8 \pmod{17}$.

(Itt észrevehettük volna, hogy már $2^8 \equiv 1$, így a kitevőt $8$-cal is redukálhattuk volna: $331 = 8 \cdot 41 + 3$, $2^{331} \equiv 2^3 = 8$. Erről a „legkisebb jó kitevőről”, a **rendről** a 19. fejezetben lesz szó.)

### Az ismételt négyzetre emelés módszere általában

Az $a^k \bmod m$ kiszámítása a következőképpen történik:

1. Írjuk fel $k$-t kettes számrendszerben: $k = 2^{j_1} + 2^{j_2} + \dots + 2^{j_s}$.
2. Számítsuk ki egymás után az $a, a^2, a^4, a^8, \dots, a^{2^{j_1}}$ hatványok maradékát (mindegyik az előző négyzete, redukálva).
3. Szorozzuk össze a szükséges $a^{2^{j_i}}$ maradékokat, minden szorzás után redukálva.

Ha $k$-nak $L$ jegye van kettes számrendszerben ($L \approx \log_2 k$), akkor ez legfeljebb $2L$ szorzás modulo $m$, és a számok közben sosem nőnek $m^2$ fölé. Egy $600$ jegyű kitevőhöz tehát néhány ezer szorzás elég — szemben az $a \cdot a \cdots a$ ismételt szorzással, amely a világegyetem élettartama alatt sem érne véget.

**Kidolgozott példa.** Számítsuk ki $3^{2026}$ maradékát modulo $101$! A $101$ prím, így $3^{100} \equiv 1$, és $2026 = 20 \cdot 100 + 26$ miatt $3^{2026} \equiv 3^{26}$. Most $26 = 16 + 8 + 2$. A négyzetre emelések:
$$3^2 = 9, \quad 3^4 = 81 \equiv -20, \quad 3^8 \equiv (-20)^2 = 400 = 3 \cdot 101 + 97 \equiv -4, \quad 3^{16} \equiv (-4)^2 = 16.$$
Így
$$3^{26} = 3^{16} \cdot 3^8 \cdot 3^2 \equiv 16 \cdot (-4) \cdot 9 = -576 \equiv -576 + 6 \cdot 101 = 30 \pmod{101}.$$
Tehát $3^{2026} \equiv 30 \pmod{101}$. (Figyeljük meg, mennyit segít, hogy negatív maradékokkal is számolhatunk: $-20$ és $-4$ kisebb számok, mint $81$ és $97$.)

## 8. Lineáris kongruencia

Lineáris kongruenciákkal sokoldalú alkalmazhatóságuk miatt már az ókori Indiában is foglalkoztak, például a csillagászatban, az égitestek mozgásának kiszámításakor. A fejezet első részében megnézzük, hogyan oldható meg egy lineáris kongruencia a $\varphi$ függvény segítségével, majd rátérünk Brahmagupta (598–668) indiai matematikus módszerére, amely lényegesen gyorsabb. Brahmaguptáról érdemes megjegyezni, hogy a nullát önálló számként kezelte, és ismertette a negatív számokkal végzett műveletek szabályait is.

Egy $ax \equiv b \pmod m$ alakú kongruenciát **lineáris kongruenciának** nevezünk. Megoldásán azokat az $x$ egészeket értjük, amelyekre teljesül. Ha $x_0$ megoldás, akkor $x_0 + km$ is az, ezért a megoldásokat maradékosztályokként adjuk meg, és **a megoldások számán mindig az eredeti modulus szerint páronként inkongruens megoldások számát értjük.**

> **8.1. Tétel.** Az
> $$ax \equiv b \pmod m$$
> kongruencia pontosan akkor oldható meg, ha
> $$(a, m) \mid b.$$
> Megoldhatóság esetén a megoldások száma (modulo $m$) éppen $(a, m)$.

*Bizonyítás.* **a) Szükségesség.** Ha $x_0$ megoldás, akkor $m \mid ax_0 - b$, vagyis van olyan $y_0$ egész, amelyre $ax_0 - b = my_0$, azaz
$$ax_0 - my_0 = b.$$
Mivel $(a, m) \mid a$ és $(a, m) \mid m$, ezért $(a, m) \mid ax_0 - my_0 = b$.

**b) Elégségesség.** Legyen $d = (a, m)$, és tegyük fel, hogy $d \mid b$, azaz $b = d b'$. A 3.19. Tétel szerint vannak olyan $x^*, y^*$ egészek, amelyekre $d = ax^* + my^*$. Ezt $b'$-vel szorozva
$$b = a(x^* b') + m(y^* b'),$$
vagyis $m \mid b - a(x^* b')$, azaz $a(x^* b') \equiv b \pmod m$. Tehát $x = x^* b'$ megoldás.

**c) A megoldások száma.** Legyen most $d \mid b$, és $a = a'd$, $m = m'd$, $b = b'd$, ahol $(a', m') = 1$. A kongruencia
$$a'd\,x \equiv b'd \pmod{m'd} \qquad (8.1)$$
alakú, és a 6.2. Tétel szerint ($d$-vel osztva a modulus is $d$-vel osztódik) ekvivalens az
$$a' x \equiv b' \pmod{m'} \qquad (8.2)$$
kongruenciával. Megmutatjuk, hogy (8.2)-nek modulo $m'$ pontosan egy megoldása van. Legyen $r_1, \dots, r_{m'}$ teljes maradékrendszer modulo $m'$. Mivel $(a', m') = 1$, a 6.5. Tétel szerint $a' r_1, \dots, a' r_{m'}$ is teljes maradékrendszer, így pontosan egy $r_i$ van, amelyre $a' r_i \equiv b' \pmod{m'}$.

Tehát (8.1) megoldásai pontosan az $x = r_i + km'$ ($k \in \mathbb{Z}$) számok. Ezek közül hány inkongruens modulo $m$? 
$$r_i + k_1 m' \equiv r_i + k_2 m' \pmod{m'd} \iff k_1 m' \equiv k_2 m' \pmod{m'd} \iff k_1 \equiv k_2 \pmod d,$$
ahol az utolsó lépésben a 6.2. Tétellel $m'$-vel egyszerűsítettünk. Tehát a $k = 0, 1, \dots, d - 1$ értékek adják a páronként inkongruens megoldásokat, és ezek száma $d = (a, m)$. $\blacksquare$

**A tétel tartalma a gyakorlatban.** Az $ax \equiv b \pmod m$ megoldásának receptje:

1. Számítsuk ki $d = (a, m)$-et. Ha $d \nmid b$, nincs megoldás.
2. Ha $d \mid b$, osszunk el mindent ($a$-t, $b$-t és $m$-et is) $d$-vel: $a'x \equiv b' \pmod{m'}$, ahol már $(a', m') = 1$.
3. Oldjuk meg ezt (egyetlen megoldás modulo $m'$, legyen $x_0$).
4. Az eredeti kongruencia megoldásai: $x \equiv x_0, x_0 + m', x_0 + 2m', \dots, x_0 + (d-1)m' \pmod m$.

**Példák.** $6x \equiv 4 \pmod 9$ nem oldható meg, mert $(6, 9) = 3 \nmid 4$. (Valóban: $6x$ maradéka modulo $9$ csak $0, 6, 3$ lehet.) A $6x \equiv 9 \pmod{15}$ kongruenciára $(6, 15) = 3 \mid 9$, tehát $3$ megoldás van: $3$-mal osztva $2x \equiv 3 \pmod 5$, amelynek megoldása $x \equiv 4 \pmod 5$ ($2 \cdot 4 = 8 \equiv 3$). Így $x \equiv 4, 9, 14 \pmod{15}$.

A 3. lépésre, vagyis az $(a, m) = 1$ esetre két módszert ismertetünk.

### 8.1. Lineáris kongruencia megoldása $\varphi$-vel

> **8.2. Tétel.** Ha $(a, m) = 1$, akkor az $ax \equiv b \pmod m$ kongruencia egyetlen megoldása
> $$x \equiv a^{\varphi(m) - 1} b \pmod m.$$

*Bizonyítás.* Az előző tétel szerint pontosan egy megoldás van modulo $m$. Az $x = a^{\varphi(m)-1} b$ szám megoldás, mert
$$ax = a^{\varphi(m)} b \equiv 1 \cdot b = b \pmod m \qquad (8.3)$$
az Euler–Fermat-tétel szerint. $\blacksquare$

**Kidolgozott példa.** Oldjuk meg a $21x \equiv 14 \pmod{35}$ kongruenciát! Mivel $(21, 35) = 7 \mid 14$, a kongruencia megoldható, és $7$ inkongruens megoldása van modulo $35$. $7$-tel egyszerűsítve (a modulust is osztva)
$$3x \equiv 2 \pmod 5,$$
amelyben már $(3, 5) = 1$. Ennek egyetlen megoldása
$$x_0 \equiv 3^{\varphi(5) - 1} \cdot 2 = 3^3 \cdot 2 = 54 \equiv 4 \pmod 5.$$
(Ellenőrzés: $3 \cdot 4 = 12 \equiv 2 \pmod 5$.) Tehát az eredeti kongruencia megoldásai:
$$x \equiv 4, 9, 14, 19, 24, 29, 34 \pmod{35}.$$

Ez a módszer könnyen megjegyezhető, de nagy modulusra nem hatékony: $\varphi(m)$ kiszámításához ismernünk kell $m$ prímtényezős felbontását, ami nagy számokra rendkívül lassú.

### 8.2. Lineáris kongruencia megoldása az euklideszi algoritmussal

Most Brahmagupta módszerét ismertetjük (amely Árjabhata V. századi úgynevezett *kuttaka*, „porlasztó” eljárására épült), de a modern terminológiát követve. Tekintsük az
$$ax \equiv b \pmod m \qquad (8.4)$$
kongruenciát, ahol $(a, m) = 1$. Ekkor létezik egy modulo $m$ egyértelműen meghatározott $a^*$ elem (jelölése $a^{-1}$ is), amelyre
$$a a^* \equiv 1 \pmod m;$$
ez az $a$ **inverze** modulo $m$. (Létezése és egyértelműsége a 8.1. Tételből következik a $b = 1$ esetben.) Az előző pont szerint $a^* \equiv a^{\varphi(m) - 1}$, de $a^*$ az euklideszi algoritmussal is meghatározható. Ha $a^*$ megvan, (8.4)-et $a^*$-gal szorozva
$$a^* a x \equiv a^* b, \qquad \text{azaz} \qquad x \equiv a^* b \pmod m.$$

Az inverz meghatározásához írjuk fel $a$-ra és $m$-re az euklideszi algoritmust, és — a 3.19. Tétel bizonyításában látott módon — fejezzük ki az utolsó nem nulla maradékot, $1 = (a, m)$-et:
$$1 = a x_n + m y_n.$$
Ekkor modulo $m$ nézve $a x_n \equiv 1 \pmod m$, vagyis **$x_n$ maradéka modulo $m$ éppen $a^*$.**

**Kidolgozott példa.** Oldjuk meg a $18x \equiv 23 \pmod{25}$ kongruenciát! Az euklideszi algoritmus:
$$25 = 18 \cdot 1 + 7, \quad 18 = 7 \cdot 2 + 4, \quad 7 = 4 \cdot 1 + 3, \quad 4 = 3 \cdot 1 + 1.$$
Visszahelyettesítve:
$$1 = 4 - 3 = 4 - (7 - 4) = 2 \cdot 4 - 7 = 2(18 - 2 \cdot 7) - 7 = 2 \cdot 18 - 5 \cdot 7 = 2 \cdot 18 - 5(25 - 18) = 7 \cdot 18 - 5 \cdot 25.$$
Tehát $18 \cdot 7 \equiv 1 \pmod{25}$, azaz $18^* \equiv 7$. Így
$$x \equiv 7 \cdot 23 = 161 \equiv 11 \pmod{25}.$$
Ellenőrzés: $18 \cdot 11 = 198 = 7 \cdot 25 + 23$. ✓

Brahmagupta módszere azért sokkal gyorsabb a $\varphi$-re épülőnél, mert nincs szükség faktorizálásra (ami $\varphi(m)$ kiszámításához nélkülözhetetlen). Az euklideszi algoritmus pedig rendkívül gyors: a 3.20. Feladat szerint $m$ modulus esetén kevesebb mint $2\log_2 m + 2$ lépésben véget ér.

## 9. Lineáris diofantikus egyenletek

**Diofantikus** (vagy diofantoszi) egyenletnek általában olyan egész együtthatós algebrai egyenletet nevezünk, amelynek a megoldásait az egész számok (esetleg a racionális számok) körében keressük. Egy többismeretlenes, magasabb fokú egyenlet összes egész megoldásának megtalálása általában nagyon nehéz — Matyijaszevics már említett tétele szerint nincs is rá általános algoritmus —, bizonyos speciális esetekben azonban könnyen célhoz érhetünk.

Az alexandriai Diophantosz (Kr. u. 3. század) korának híres feladatmegoldója volt; *Arithmetica* című művében sok ilyen egyenlet szerepel, de legtöbbször megelégedett azzal, hogy felírta az egyenletet, és megadott hozzá egy megoldást. Egy ókori fejtörő Diophantosz sírfelirata is (a *Görög Antológiából*):

> *„Az istenek kegyelméből élete egyhatodát gyermekként töltötte. Eltelt életének még egytizenketted része, és kiserkent szakálla. További hetedrész múltán esküvői gyertyái égtek. Öt évvel a lakodalom után fia született, de ó, jaj! A későn született, gyenge gyermeket elragadta a kegyetlen sors, alighogy apja életének felét leélte. Gyászoló apja a számelméletben keresett vigaszt, ám négy év múlva az ő élete is véget ért.”*

::: kiegeszites
**Kiegészítés: a sírfelirat megfejtése.** Ha Diophantosz $x$ évig élt, akkor
$$\frac{x}{6} + \frac{x}{12} + \frac{x}{7} + 5 + \frac{x}{2} + 4 = x.$$
$84$-gyel szorozva: $14x + 7x + 12x + 420 + 42x + 336 = 84x$, azaz $75x + 756 = 84x$, $x = 84$. Diophantosz tehát a fejtörő szerint $84$ évet élt (14 évig volt gyermek, 21 évesen nőtt szakálla, 33 évesen nősült, 38 évesen lett fia, aki 42 évet élt, és Diophantosz 84 évesen halt meg). Itt persze nem egész megoldást kellett keresni, de az, hogy $x$-nek oszthatónak kell lennie $6$-tal, $12$-vel, $7$-tel és $2$-vel (vagyis $84$-gyel), már önmagában erősen leszűkíti a lehetőségeket.
:::

### Egy példa

Oldjuk meg a
$$43x + 25y = 98 \qquad (9.1)$$
lineáris diofantikus egyenletet, azaz határozzuk meg az összes olyan $x, y$ egészet, amelyre (9.1) teljesül! Mielőtt az általános módszert ismertetnénk, nézzük a példa egy lehetséges megoldását kongruenciákkal. Ha (9.1) teljesül, akkor modulo $25$ nézve ($25y \equiv 0$):
$$43x \equiv 98 \pmod{25}, \qquad \text{azaz} \qquad 18x \equiv 23 \pmod{25}.$$
Ezt a lineáris kongruenciát az előző fejezetben megoldottuk: $x \equiv 11 \pmod{25}$. Tehát az összes megoldás $x$-e $x = 11 + 25t$ alakú, $t \in \mathbb{Z}$. Visszahelyettesítve:
$$43(11 + 25t) + 25y = 98 \ \Longrightarrow\ 473 + 43 \cdot 25t + 25y = 98 \ \Longrightarrow\ 25y = -375 - 43 \cdot 25t \ \Longrightarrow\ y = -15 - 43t.$$
Tehát az összes megoldás
$$x = 11 + 25t, \qquad y = -15 - 43t \qquad (t \in \mathbb{Z}).$$
Ellenőrzés $t = 0$-ra: $43 \cdot 11 + 25 \cdot (-15) = 473 - 375 = 98$. ✓

### Az általános tétel

> **9.1. Tétel.** Legyenek $a, b, c$ rögzített egészek, ahol $a$ és $b$ közül legalább az egyik nem nulla, és tekintsük az
> $$ax + by = c$$
> diofantikus egyenletet.
>
> (i) Az egyenlet pontosan akkor oldható meg, ha $(a, b) \mid c$.
>
> (ii) Megoldhatóság esetén végtelen sok megoldás van. Ha $x_0, y_0$ egy rögzített megoldás, akkor az összes $x', y'$ megoldást az
> $$x' = x_0 + t\,\frac{b}{(a, b)}, \qquad y' = y_0 - t\,\frac{a}{(a, b)} \qquad (t = 0, \pm 1, \pm 2, \dots)$$
> képlet szolgáltatja.
>
> (iii) Egy megoldás az euklideszi algoritmussal kapható meg.

*Bizonyítás.* (i) *Ha van megoldás, akkor $(a, b) \mid c$:* ha $ax_0 + by_0 = c$, akkor $(a, b)$ osztja $a$-t és $b$-t, így $ax_0 + by_0 = c$-t is.

*Ha $(a, b) \mid c$, akkor van megoldás:* legyen $c = (a, b) c_0$. Az euklideszi algoritmussal (3.19. Tétel) találunk olyan $x^*, y^*$ egészeket, amelyekre
$$(a, b) = ax^* + by^*.$$
Ezt $c_0$-lal szorozva $c = a(x^* c_0) + b(y^* c_0)$, tehát $x_0 = x^* c_0$, $y_0 = y^* c_0$ megoldás. Ez egyben a tétel (iii) részét is igazolja.

(ii) A képlettel adott számok megoldások, hiszen
$$a\left(x_0 + t\frac{b}{(a,b)}\right) + b\left(y_0 - t\frac{a}{(a,b)}\right) = ax_0 + by_0 + t\frac{ab - ba}{(a, b)} = c.$$
Megfordítva, legyen $x', y'$ tetszőleges megoldás. Ekkor $ax' + by' = c = ax_0 + by_0$, így
$$a(x' - x_0) = b(y_0 - y'), \qquad \frac{a}{(a,b)}(x' - x_0) = \frac{b}{(a,b)}(y_0 - y'). \qquad (9.2)$$
Itt $\frac{a}{(a,b)}$ osztja a bal oldalt, így a jobb oldalt is. Mivel $\left(\frac{a}{(a,b)}, \frac{b}{(a,b)}\right) = 1$ (ha $e > 1$ közös osztójuk volna, akkor $e(a, b)$ közös osztója volna $a$-nak és $b$-nek), ezért
$$\frac{a}{(a,b)} \mid y_0 - y', \qquad \text{azaz} \qquad y_0 - y' = t\,\frac{a}{(a,b)}, \quad y' = y_0 - t\frac{a}{(a,b)}$$
valamely $t$ egésszel. Ezt (9.2)-be írva és $\frac{a}{(a,b)}$-vel egyszerűsítve (ha $a \ne 0$; az $a = 0$ eset nyilvánvaló):
$$x' - x_0 = t\,\frac{b}{(a,b)}, \qquad x' = x_0 + t\frac{b}{(a,b)}. \ \blacksquare$$

**Geometriai jelentés.** Az $ax + by = c$ egyenlet a síkon egy egyenes, a megoldások pedig az egyenesre eső **rácspontok** (egész koordinátájú pontok). A tétel szerint ilyen rácspont vagy egyáltalán nincs, vagy végtelen sok van, és ezek egyenlő közönként, a $\left(\frac{b}{(a,b)}, -\frac{a}{(a,b)}\right)$ vektor többszöröseivel eltolva követik egymást.

**Kidolgozott példa (szöveges feladat).** Egy postán $7$ és $11$ forintos bélyegek kaphatók. Hogyan ragaszthatunk fel pontosan $100$ forint értékű bélyeget? Az egyenlet $7x + 11y = 100$, ahol most $x, y \ge 0$ egészek. Mivel $(7, 11) = 1$, van egész megoldás. Modulo $11$: $7x \equiv 100 \equiv 1 \pmod{11}$, és $7 \cdot 8 = 56 = 5 \cdot 11 + 1$, így $x \equiv 8 \pmod{11}$. Az összes egész megoldás $x = 8 + 11t$, $y = 4 - 7t$. A nemnegatívitás miatt $t = 0$ az egyetlen lehetőség: **$8$ darab $7$ forintos és $4$ darab $11$ forintos bélyeg** ($56 + 44 = 100$).

### Több ismeretlen

A lineáris diofantikus egyenletek elmélete több ismeretlenre is kiterjeszthető. A megoldhatóságra vonatkozó tétel analogonja:

> **9.2. Tétel.** Az $a_1 x_1 + a_2 x_2 + \dots + a_n x_n = c$ lineáris diofantikus egyenlet (ahol nem minden $a_i$ nulla) pontosan akkor oldható meg, ha
> $$(a_1, a_2, \dots, a_n) \mid c.$$

A jegyzet ezt a tételt nem bizonyítja.

::: kiegeszites
**Kiegészítés: a 9.2. Tétel bizonyításának vázlata.** A szükségesség ugyanúgy megy, mint két változóra. Az elégségességhez elég belátni, hogy $(a_1, \dots, a_n)$ előáll $a_1 x_1 + \dots + a_n x_n$ alakban (ekkor $c_0$-lal szorzunk, mint fent). Ezt $n$ szerinti indukcióval igazoljuk. Felhasználjuk, hogy $(a_1, \dots, a_n) = \big((a_1, \dots, a_{n-1}), a_n\big)$ — mindkét oldal az $a_1, \dots, a_n$ közös osztóinak kitüntetett közös osztója. Ha $d' = (a_1, \dots, a_{n-1}) = a_1 u_1 + \dots + a_{n-1} u_{n-1}$ (indukciós feltevés), és $(d', a_n) = d' v + a_n w$ (3.19. Tétel), akkor
$$(a_1, \dots, a_n) = a_1(u_1 v) + \dots + a_{n-1}(u_{n-1} v) + a_n w. \ \blacksquare$$
:::

## A II. rész összefoglalása

- **Kongruencia:** $a \equiv b \pmod m \iff m \mid a - b \iff$ azonos a maradékuk. Összeadni, kivonni, szorozni, hatványozni szabad; polinomba helyettesítve is megmarad.
- **Osztás:** $ka \equiv kb \pmod m \iff a \equiv b \pmod{m/(k,m)}$; a modulushoz relatív prím számmal szabadon egyszerűsíthetünk.
- **Teljes / redukált maradékrendszer;** $\varphi(m)$ = a modulushoz relatív prím maradékosztályok száma; $\varphi(p^\alpha) = p^\alpha - p^{\alpha-1}$, $\varphi(n) = n\prod_{p \mid n}(1 - 1/p)$. Ha $(a, m) = 1$, akkor $a r_i + b$ is teljes, $a r_i$ is redukált maradékrendszer.
- **Euler–Fermat:** $(a, m) = 1 \Rightarrow a^{\varphi(m)} \equiv 1 \pmod m$. **Kis Fermat:** $a^p \equiv a \pmod p$. A feltétel nélkül hamis; a megfordítás is hamis ($341$).
- **Moduláris hatványozás:** a kitevő redukálása modulo $\varphi(m)$, majd ismételt négyzetre emelés a kitevő kettes számrendszerbeli alakja szerint — kb. $2\log_2 k$ szorzás.
- **Lineáris kongruencia:** $ax \equiv b \pmod m$ pontosan akkor oldható meg, ha $(a, m) \mid b$, és ekkor $(a, m)$ megoldás van. Ha $(a, m) = 1$: $x \equiv a^{\varphi(m)-1} b$, vagy (gyorsabban) az inverz az euklideszi algoritmusból.
- **Lineáris diofantikus egyenlet:** $ax + by = c$ pontosan akkor oldható meg, ha $(a, b) \mid c$; az összes megoldás $x_0 + t\frac{b}{(a,b)}$, $y_0 - t\frac{a}{(a,b)}$.

## Feladatok a II. részhez

1. Mi a $3^{100}$ maradéka $7$-tel osztva?
2. Bizonyítsuk be, hogy $13 \mid 2^{70} + 3^{70}$.
3. Mi a $3^{2026}$ utolsó két számjegye?
4. Oldjuk meg: a) $15x \equiv 25 \pmod{35}$; b) $20x \equiv 8 \pmod{36}$; c) $6x \equiv 4 \pmod 9$.
5. Határozzuk meg $17$ inverzét modulo $43$ az euklideszi algoritmussal, és oldjuk meg a $17x \equiv 5 \pmod{43}$ kongruenciát.
6. Határozzuk meg a következő diofantikus egyenletek összes egész megoldását: a) $12x + 18y = 30$; b) $112x + 70y = 42$; c) $6x + 10y = 7$.
7. Bizonyítsuk be, hogy $30 \mid n^5 - n$ minden $n$ egészre.
8. Bizonyítsuk be, hogy ha $p > 3$ prím, akkor $p^2 \equiv 1 \pmod{24}$.
9. Bizonyítsuk be, hogy ha $(a, m) = 1$, akkor $a$ inverze modulo $m$ egyértelmű maradékosztály.
10. Igazoljuk, hogy egy szám pontosan akkor osztható $9$-cel, ha számjegyeinek összege osztható $9$-cel, és pontosan akkor osztható $11$-gyel, ha számjegyeinek váltakozó előjelű összege ($a_0 - a_1 + a_2 - \dots$) osztható $11$-gyel.

### Megoldási útmutatók

1. $3^6 \equiv 1 \pmod 7$ (kis Fermat), $100 = 6 \cdot 16 + 4$, így $3^{100} \equiv 3^4 = 81 \equiv 4$.
2. $2^{12} \equiv 1$, így $2^{70} \equiv 2^{10} = 1024 \equiv 10 \pmod{13}$; $3^3 = 27 \equiv 1$, így $3^{70} = (3^3)^{23} \cdot 3 \equiv 3$. Összegük $13 \equiv 0$.
3. $\varphi(100) = 40$, $2026 = 40 \cdot 50 + 26$, így $3^{2026} \equiv 3^{26} \pmod{100}$. Ismételt négyzetre emeléssel: $3^2 = 9$, $3^4 = 81$, $3^8 \equiv 61$, $3^{16} \equiv 21$; $3^{26} = 3^{16} \cdot 3^8 \cdot 3^2 \equiv 21 \cdot 61 \cdot 9 \equiv 81 \cdot 9 \equiv 29$. Az utolsó két jegy: $29$.
4. a) $(15, 35) = 5 \mid 25$; $3x \equiv 5 \pmod 7$, $x \equiv 4 \pmod 7$; megoldások: $4, 11, 18, 25, 32 \pmod{35}$. b) $(20, 36) = 4 \mid 8$; $5x \equiv 2 \pmod 9$, $x \equiv 4 \pmod 9$; megoldások: $4, 13, 22, 31 \pmod{36}$. c) $(6, 9) = 3 \nmid 4$: nincs megoldás.
5. $43 = 2 \cdot 17 + 9$, $17 = 9 + 8$, $9 = 8 + 1$; $1 = 9 - 8 = 2 \cdot 9 - 17 = 2 \cdot 43 - 5 \cdot 17$. Tehát $17^{-1} \equiv -5 \equiv 38 \pmod{43}$, és $x \equiv 38 \cdot 5 = 190 \equiv 18 \pmod{43}$ (ellenőrzés: $17 \cdot 18 = 306 = 7 \cdot 43 + 5$).
6. a) $(12, 18) = 6 \mid 30$; $2x + 3y = 5$, egy megoldás $x_0 = y_0 = 1$; az összes: $x = 1 + 3t$, $y = 1 - 2t$. b) $(112, 70) = 14 \mid 42$; $8x + 5y = 3$, egy megoldás $x_0 = 1$, $y_0 = -1$; az összes: $x = 1 + 5t$, $y = -1 - 8t$. c) $(6, 10) = 2 \nmid 7$: nincs megoldás (a bal oldal mindig páros).
7. $30 = 2 \cdot 3 \cdot 5$, és a kis Fermat-tétel ($a^p \equiv a$ alakban) szerint $n^5 \equiv n \pmod 5$; továbbá $n^5 = n \cdot (n^2)^2 \equiv n \pmod 3$ (mert $n^3 \equiv n$, így $n^5 = n^3 \cdot n^2 \equiv n \cdot n^2 = n^3 \equiv n$), és $n^5 \equiv n \pmod 2$. A három relatív prím szám mind osztja $n^5 - n$-et, így a szorzatuk is.
8. $p$ páratlan, így $p^2 - 1 = (p - 1)(p + 1)$ két szomszédos páros szám szorzata, amelyek egyike $4$-gyel is osztható: $8 \mid p^2 - 1$. Továbbá $3 \nmid p$, így $p \equiv \pm 1 \pmod 3$, és $3 \mid p^2 - 1$.
9. Ha $aa^* \equiv 1$ és $aa^{**} \equiv 1$, akkor $a(a^* - a^{**}) \equiv 0$, és $(a, m) = 1$ miatt egyszerűsíthetünk: $a^* \equiv a^{**}$.
10. $10 \equiv 1 \pmod 9$, így $a_n 10^n + \dots + a_0 \equiv a_n + \dots + a_0 \pmod 9$. $10 \equiv -1 \pmod{11}$, így a szám $\equiv a_0 - a_1 + a_2 - \dots \pmod{11}$.

---
