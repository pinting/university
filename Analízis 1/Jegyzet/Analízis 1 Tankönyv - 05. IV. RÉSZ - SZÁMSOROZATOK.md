# IV. RÉSZ: SZÁMSOROZATOK

Elérkeztünk a félév első igazán analitikus fogalmához, a **határértékhez**. Az 1. szakaszban láttuk, hogy mind a területszámítás, mind a pillanatnyi sebesség problémája azon múlik, hogy precízen ki tudjuk-e mondani: egy végtelen folyamat során kapott számok „egyre közelebb kerülnek” egy bizonyos számhoz. A legegyszerűbb végtelen folyamat a **sorozat**: számok végtelen listája, $a_1, a_2, a_3, \dots$. Ebben a részben a sorozatok határértékét definiáljuk, és felépítjük a határértékekkel való számolás teljes eszköztárát.

A rész a félév egyik leghosszabb és legfontosabb része. Ha valamit nagyon alaposan meg kell érteni, akkor ez az: a függvények határértéke, a folytonosság és a derivált mind a sorozatok határértékére épül.

## 17. Monotonitás, korlátosság; az (eₙ) sorozat

A 16. szakasz szerint egy valós sorozat egy $a : \mathbb{N} \to \mathbb{R}$ függvény; az $n$-edik tagot $a_n$-nel jelöljük. Sorozatot többféleképpen adhatunk meg:

- **explicit képlettel**, például $a_n = \frac{1}{n}$, $b_n = (-1)^n$, $c_n = \frac{n^2 + 1}{2n - 1}$;
- **rekurzióval**, azaz az első tag(ok) és egy szabály megadásával, amely az előző tagokból megmondja a következőt; például $a_1 = 2$, $a_{n+1} = \frac{1}{2}\left(a_n + \frac{2}{a_n}\right)$ — ez a 7. szakasz végén említett babiloni gyökvonó eljárás;
- **szöveges leírással**, például „$p_n$ az $n$-edik prímszám”.

A sorozatok két legegyszerűbb globális tulajdonsága a monotonitás és a korlátosság.

> **Definíció (monotonitás).** Az $(a_n)$ sorozat
>
> - **monoton növekedő**, ha minden $n \in \mathbb{N}$-re $a_n \le a_{n+1}$;
> - **monoton csökkenő**, ha minden $n$-re $a_n \ge a_{n+1}$;
> - **szigorúan monoton növekedő**, illetve **csökkenő**, ha a fenti egyenlőtlenségek szigorúak ($a_n < a_{n+1}$, illetve $a_n > a_{n+1}$);
> - **monoton**, ha monoton növekedő vagy monoton csökkenő.

A monotonitás ellenőrzésére két szokásos módszer van: megvizsgáljuk az $a_{n+1} - a_n$ **különbség** előjelét, vagy — pozitív tagú sorozatnál — összehasonlítjuk az $\frac{a_{n+1}}{a_n}$ **hányadost** az $1$-gyel.

**Példa.** Legyen $a_n = \frac{n}{n+1}$. Ekkor
$$a_{n+1} - a_n = \frac{n+1}{n+2} - \frac{n}{n+1} = \frac{(n+1)^2 - n(n+2)}{(n+1)(n+2)} = \frac{1}{(n+1)(n+2)} > 0,$$
tehát a sorozat szigorúan monoton növekedő.

> **Definíció (korlátosság).** Az $(a_n)$ sorozat **felülről korlátos**, **alulról korlátos**, illetve **korlátos**, ha az $\{a_n : n \in \mathbb{N}\}$ halmaz ilyen; vagyis például korlátos, ha van olyan $K$, hogy minden $n$-re $|a_n| \le K$.

**Négy alappélda.** A következő négy sorozatot érdemes egész félévben szem előtt tartani, mert ezek szolgálnak majd a leggyakrabban ellenpéldaként:

| sorozat | monotonitás | korlátosság | szemléletes viselkedés |
|---|---|---|---|
| $a_n = \frac{1}{n}$ | szigorúan monoton csökkenő | korlátos | egyre közelebb kerül $0$-hoz |
| $b_n = (-1)^n$ | nem monoton | korlátos | ide-oda ugrál $-1$ és $1$ között |
| $c_n = n$ | szigorúan monoton növekedő | alulról korlátos, felülről nem | minden határon túl nő |
| $d_n = (-1)^n n$ | nem monoton | se alulról, se felülről nem korlátos | egyre nagyobb kilengésekkel ugrál |

### Az $e$ számhoz vezető sorozatok

Most egy olyan sorozatot vizsgálunk, amely az analízis egyik legfontosabb állandójához, az $e$ számhoz vezet. Az eredete egy pénzügyi kérdés. Tegyük be $1$ forintot egy bankba évi $100\%$-os kamatra. Egy év múlva $2$ forintunk lesz. Ha a bank félévente tőkésít ($50\%$-ot fél év után, majd újabb $50\%$-ot a megnövelt összegre), akkor $\left(1 + \frac{1}{2}\right)^2 = 2{,}25$ forintunk lesz. Ha havonta tőkésít, akkor $\left(1 + \frac{1}{12}\right)^{12} \approx 2{,}613$, ha naponta, akkor $\left(1 + \frac{1}{365}\right)^{365} \approx 2{,}7146$. Általában $n$ részre osztva az évet
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
forintunk lesz. Kérdés: mi történik, ha egyre sűrűbben tőkésítünk? Nő-e a pénzünk minden határon túl, vagy van egy felső határ?

> **Állítás.** Az $e_n = \left(1 + \frac{1}{n}\right)^n$ sorozat szigorúan monoton növekedő.

*Bizonyítás.* Azt kell megmutatnunk, hogy $e_n < e_{n+1}$, azaz
$$\left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n+1}\right)^{n+1}.$$
**Az ötlet:** a bal oldalt fogjuk fel $n + 1$ szám szorzataként, és alkalmazzuk rá a számtani–mértani egyenlőtlenséget. Vegyünk $n$ darab $\left(1 + \frac{1}{n}\right)$ számot és egy darab $1$-est. Ezek nem mind egyenlők, tehát az egyenlőtlenség szigorú:
$$\sqrt[n+1]{\left(1 + \tfrac{1}{n}\right)^n \cdot 1} < \frac{n\left(1 + \frac{1}{n}\right) + 1}{n+1} = \frac{n + 1 + 1}{n+1} = 1 + \frac{1}{n+1}.$$
Mindkét oldalt az $(n+1)$-edik hatványra emelve (pozitív számokról van szó) éppen a kívánt egyenlőtlenséget kapjuk. $\blacksquare$

Vagyis a sűrűbb tőkésítés mindig jobban megéri. De vajon korlátos-e a sorozat? Ehhez egy másik sorozatot is bevezetünk.

> **Állítás.** A $d_n = \left(1 + \frac{1}{n}\right)^{n+1}$ sorozat szigorúan monoton csökkenő.

*Bizonyítás.* Most a reciprokokkal dolgozunk: $\frac{1}{d_n} = \left(\frac{n}{n+1}\right)^{n+1}$. Alkalmazzuk a számtani–mértani egyenlőtlenséget $n + 1$ darab $\frac{n}{n+1}$ számra és egy darab $1$-esre (összesen $n + 2$ számra, nem mind egyenlők):
$$\sqrt[n+2]{\left(\frac{n}{n+1}\right)^{n+1}\cdot 1} < \frac{(n+1)\cdot\frac{n}{n+1} + 1}{n+2} = \frac{n+1}{n+2}.$$
Az $(n+2)$-edik hatványra emelve
$$\left(\frac{n}{n+1}\right)^{n+1} < \left(\frac{n+1}{n+2}\right)^{n+2}, \qquad \text{azaz} \qquad \frac{1}{d_n} < \frac{1}{d_{n+1}}.$$
Pozitív számok reciprokát véve az egyenlőtlenség megfordul: $d_n > d_{n+1}$. $\blacksquare$

A két sorozat összefüggése: $d_n = e_n \cdot \left(1 + \frac{1}{n}\right) > e_n$. Ebből és a monotonitásokból minden $n$-re
$$2 = e_1 \le e_n < d_n \le d_1 = 4.$$
Az $(e_n)$ sorozat tehát **monoton növekedő és felülről korlátos** (például $4$-gyel), a $(d_n)$ sorozat pedig **monoton csökkenő és alulról korlátos**. A két sorozat közrefogja egymást.

Numerikusan:
$$e_1 = 2, \quad e_2 = 2{,}25, \quad e_{10} \approx 2{,}5937, \quad e_{100} \approx 2{,}7048, \quad e_{1000} \approx 2{,}7169,$$
és a sorozat egyre közelebb kerül a
$$e = 2{,}718281828\dots$$
számhoz. Hangsúlyozzuk: ez egyelőre **puszta tapasztalat**, nem bizonyítás. Ahhoz előbb tisztáznunk kell, mit jelent az, hogy „egyre közelebb kerül”. A pénzügyi kérdésre a válasz tehát: a pénzünk nem nő korlátlanul, akármilyen sűrűn tőkésítünk is, legfeljebb $e \approx 2{,}718$ forintunk lehet. (A „folytonos kamatozás” pontos tárgyalása a 86. szakasz differenciálegyenleteinél jön elő.)

## 18. A sorozat határértéke

### Mit jelent az, hogy „egyre közelebb kerül”?

Az $a_n = \frac{1}{n}$ sorozatról azt mondanánk, hogy „egyre közelebb kerül a $0$-hoz”. De vigyázat: ez a sorozat a $-1$-hez is egyre közelebb kerül! Hiszen $\left|\frac{1}{n} - (-1)\right| = 1 + \frac{1}{n}$, ami $n$ növekedtével csökken. Mégsem akarjuk azt mondani, hogy a sorozat a $-1$-hez tart. Mi a különbség? Az, hogy a $0$-hoz a sorozat **tetszőlegesen közel** kerül, a $-1$-hez viszont soha nem kerül $1$-nél közelebb.

Egy második finomság: az $1, 0, 1, 0, 1, 0, \dots$ sorozat tetszőlegesen közel kerül a $0$-hoz (sőt végtelen sokszor el is éri), mégsem akarjuk azt mondani, hogy a $0$-hoz tart, hiszen mindig visszaugrik az $1$-re. A helyes megfogalmazásban tehát az is benne kell legyen, hogy a sorozat **egy idő után ott is marad**, közel a határértékhez.

Ezt a két követelményt — tetszőlegesen közel, és egy idő után ott is marad — fogja össze a következő definíció.

> **Definíció (határérték).** Az $(a_n)$ sorozat **határértéke** az $a \in \mathbb{R}$ szám, ha minden $\varepsilon > 0$ számhoz létezik olyan $n_0 \in \mathbb{N}$ küszöbindex, hogy minden $n \ge n_0$ esetén
> $$|a_n - a| < \varepsilon.$$
> Ekkor azt mondjuk, hogy $(a_n)$ **tart** (konvergál) $a$-hoz.

Kvantorokkal:
$$\forall \varepsilon > 0\ \ \exists n_0 \in \mathbb{N}\ \ \forall n \ge n_0 : \ |a_n - a| < \varepsilon.$$

**A definíció mint játék.** Érdemes a definíciót egy kétszereplős játékként elképzelni. A „kételkedő” megad egy tetszőlegesen kicsi pozitív $\varepsilon$ tűrést. A „bizonyító” erre egy $n_0$ küszöbindexszel válaszol. A bizonyító akkor nyer, ha az $n_0$-adik tagtól kezdve **minden** tag az $a$-tól $\varepsilon$-nál kisebb távolságra van. Az $a_n \to a$ állítás azt jelenti, hogy a bizonyítónak **minden** $\varepsilon$-ra van nyerő válasza. A sorrend a lényeg: **először** adják meg az $\varepsilon$-t, és **utána** keressük az $n_0$-t, amely tehát függhet $\varepsilon$-tól. Kisebb $\varepsilon$-hoz általában nagyobb $n_0$ kell. (Ezért írjuk néha $n_\varepsilon$-t vagy $n_0(\varepsilon)$-t.)

Néhány megjegyzés:

- Az $n_0$ **nem egyértelmű**: ha egy $n_0$ jó, akkor minden nála nagyobb szám is jó. Nem kell tehát a „legjobb” küszöböt megkeresni, elég **egy** megfelelőt mutatni — és ezt gyakran durva becslésekkel érjük el.
- Az $n \ge n_0$ helyett $n > n_0$ is írható; ez lényegtelen.
- A határérték csak a sorozat **végső** viselkedésétől függ; az, hogy az első ezer tag mit csinál, nem számít.

**Környezetek.** Az $|a_n - a| < \varepsilon$ feltétel a 4. szakasz szerint azt jelenti, hogy
$$a_n \in B(a, \varepsilon) = (a - \varepsilon,\ a + \varepsilon).$$
A $B(a, \varepsilon)$ halmazt az $a$ pont **$\varepsilon$ sugarú környezetének** nevezzük. (Más jelöléssel $U_\varepsilon(a)$, a német *Umgebung* szóból; a $B$ az angol *ball*, gömb szóból ered, hiszen magasabb dimenzióban ez egy gömb.) A definíció tehát így is mondható: **az $a$ bármely környezetéhez van olyan küszöb, amelytől kezdve a sorozat minden tagja ebben a környezetben van.**

**Jelölések.**
$$\lim_{n \to \infty} a_n = a, \qquad \lim a_n = a, \qquad a_n \to a \ \ (n \to \infty), \qquad a_n \to a.$$
A „lim” a latin *limes* (határ) szóból származik.

> **Definíció.** Ha az $(a_n)$ sorozatnak van (véges) határértéke, akkor a sorozat **konvergens**. Ha nem konvergens, akkor **divergens**.

### Kidolgozott példák

**1. példa: $\lim \frac{1}{n} = 0$.** Legyen $\varepsilon > 0$ adott. Azt kell elérnünk, hogy $\left|\frac{1}{n} - 0\right| = \frac{1}{n} < \varepsilon$ teljesüljön minden elég nagy $n$-re. Ez pontosan akkor igaz, ha $n > \frac{1}{\varepsilon}$. Az arkhimédészi tulajdonság szerint van olyan $n_0 \in \mathbb{N}$, amelyre $n_0 > \frac{1}{\varepsilon}$. Ekkor minden $n \ge n_0$-ra $n > \frac{1}{\varepsilon}$, tehát $\frac{1}{n} < \varepsilon$. $\blacksquare$

(Ez a példa egyben megmutatja, hogy az arkhimédészi tulajdonság pontosan azt jelenti: $\frac{1}{n} \to 0$. A határérték-számítás legelső lépése is a teljességi axiómán múlik!)

**2. példa: $\lim \frac{n+1}{2n+3} = \frac{1}{2}$.** Először számoljuk ki az eltérést:
$$\left|\frac{n+1}{2n+3} - \frac{1}{2}\right| = \left|\frac{2(n+1) - (2n+3)}{2(2n+3)}\right| = \frac{1}{2(2n+3)}.$$
Ezt kell $\varepsilon$ alá szorítanunk. Pontos megoldás helyett **becsüljünk felülről valami egyszerűbbel**:
$$\frac{1}{2(2n+3)} < \frac{1}{4n}.$$
Ha tehát $\frac{1}{4n} < \varepsilon$, azaz $n > \frac{1}{4\varepsilon}$, akkor az eltérés is kisebb $\varepsilon$-nál. Legyen $n_0$ egy $\frac{1}{4\varepsilon}$-nál nagyobb természetes szám; ez jó küszöb. $\blacksquare$

A példa tanulsága a **becslés** módszere: nem kell az $|a_n - a| < \varepsilon$ egyenlőtlenséget pontosan megoldanunk; elég $|a_n - a|$-t felülről becsülni egy olyan kifejezéssel, amelyről könnyű látni, hogy elég nagy $n$-re $\varepsilon$ alá kerül.

**3. példa: $\lim \frac{(-1)^n}{2n} = 0$.** Itt $\left|\frac{(-1)^n}{2n} - 0\right| = \frac{1}{2n}$, tehát $n > \frac{1}{2\varepsilon}$ esetén az eltérés $\varepsilon$ alatt van. Például $\varepsilon = 0{,}01$ esetén $\frac{1}{2n} < 0{,}01 \iff n > 50$, tehát $n_0 = 51$ jó küszöb (és minden nagyobb szám is). A sorozat tagjai felváltva pozitívak és negatívak, de egyre kisebb kilengéssel, és egy idő után mind a $(-0{,}01;\ 0{,}01)$ sávba esnek.

**4. példa: az állandó sorozat.** Ha $a_n = c$ minden $n$-re, akkor $|a_n - c| = 0 < \varepsilon$ minden $n$-re, tehát $n_0 = 1$ bármely $\varepsilon$-ra jó: $a_n \to c$.

### Divergencia

Hogyan mutatjuk meg, hogy egy sorozat **nem** tart egy adott $a$-hoz? A definíció tagadásával (B. szakasz):
$$a_n \not\to a \iff \exists \varepsilon > 0\ \ \forall n_0\ \ \exists n \ge n_0 : |a_n - a| \ge \varepsilon.$$
Vagyis van egy olyan $\varepsilon$, hogy **végtelen sok** tag (akármilyen késői küszöbtől is indulunk, mindig van utána) legalább $\varepsilon$-nyira van $a$-tól. Egy sorozat pedig akkor **divergens**, ha **semmilyen** $a$-hoz nem tart.

**5. példa: a $\big((-1)^n\big)$ sorozat divergens.** Tegyük fel indirekt, hogy $(-1)^n \to a$ valamely $a$-ra. Az $\varepsilon = 1$-hez tartozó küszöbtől kezdve minden tag az $(a - 1, a + 1)$ intervallumban van, amelynek hossza $2$. Csakhogy ennek az intervallumnak tartalmaznia kellene a $-1$-et és az $1$-et is (hiszen a sorozat mindkettőt végtelen sokszor felveszi), és ezek távolsága éppen $2$. Egy $2$ hosszúságú *nyílt* intervallum nem tartalmazhat két, egymástól $2$ távolságra lévő pontot. Ellentmondás. Pontosabban: $|1 - (-1)| = 2$, de ha mindkettő az $a$-tól $1$-nél kisebb távolságra volna, akkor a háromszög-egyenlőtlenség szerint $|1 - (-1)| \le |1 - a| + |a - (-1)| < 1 + 1 = 2$ volna. $\blacksquare$

**6. példa: az $(n)$ sorozat divergens.** Ha $n \to a$ volna, akkor az $\varepsilon = 1$-hez tartozó $n_0$-tól kezdve minden $n$-re $n < a + 1$ teljesülne. Az arkhimédészi tulajdonság szerint azonban van $a + 1$-nél nagyobb természetes szám, sőt $n_0$-nál nagyobb is van ilyen. Ellentmondás. $\blacksquare$

**7. példa:** $\big((-1)^n n\big)$ is divergens; ez a 19. szakasz egyik tételéből azonnal következik majd (konvergens sorozat korlátos).

## 19. A határérték alaptulajdonságai

A definíció közvetlen alkalmazása fáradságos. Ebben és a következő szakaszokban olyan tételeket bizonyítunk, amelyek segítségével a határértékekkel „számolni” lehet. Elsőként egy átfogalmazást.

> **Tétel (átfogalmazás véges sok kivétellel).** A következő két állítás ekvivalens:
>
> - **(A)** $a_n \to a$.
> - **(B)** Minden $\varepsilon > 0$ esetén a sorozatnak csak **véges sok** (indexű) tagja esik a $B(a, \varepsilon)$ környezeten kívülre.

*Bizonyítás.* **(A) $\Rightarrow$ (B):** legyen $\varepsilon > 0$. A definíció szerint van olyan $n_0$, hogy $n \ge n_0$ esetén $a_n \in B(a, \varepsilon)$. A környezeten kívül tehát legfeljebb az $a_1, \dots, a_{n_0 - 1}$ tagok lehetnek, ami véges sok.

**(B) $\Rightarrow$ (A):** legyen $\varepsilon > 0$. A (B) szerint csak véges sok olyan $n$ index van, amelyre $a_n \notin B(a, \varepsilon)$. Legyen $n_0$ ezek legnagyobbikánál eggyel nagyobb (ha nincs ilyen index, akkor $n_0 = 1$). Ekkor minden $n \ge n_0$-ra $a_n \in B(a, \varepsilon)$. $\blacksquare$

Ez az átfogalmazás azt mondja, hogy **a határérték szempontjából a sorozat eleje közömbös**: véges sok tag megváltoztatása nem befolyásolja, hogy a sorozat konvergens-e, és ha igen, mi a határértéke. (A „véges sok indexű” kifejezés azért fontos, mert ugyanaz az érték végtelen sok indexen is előfordulhat: a $\big((-1)^n\big)$ sorozat az $1$ körüli $\frac{1}{2}$ sugarú környezeten kívül végtelen sok tagot hagy — a páratlan indexűeket —, noha ezek mind ugyanazt a $-1$ értéket veszik fel.)

> **Tétel (a határérték egyértelműsége).** Ha $a_n \to a$ és $a_n \to b$, akkor $a = b$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $a \neq b$, és legyen $\varepsilon = \frac{|a - b|}{2} > 0$. Ekkor a $B(a, \varepsilon)$ és $B(b, \varepsilon)$ környezetek **diszjunktak**: ha egy $x$ mindkettőben benne volna, akkor
$$|a - b| \le |a - x| + |x - b| < \varepsilon + \varepsilon = |a - b|$$
volna, ami lehetetlen. Mivel $a_n \to a$, van olyan $n_1$, hogy $n \ge n_1$ esetén $a_n \in B(a, \varepsilon)$; és mivel $a_n \to b$, van olyan $n_2$, hogy $n \ge n_2$ esetén $a_n \in B(b, \varepsilon)$. Ha $n \ge \max\{n_1, n_2\}$, akkor $a_n$ mindkét környezetben benne van — ellentmondás. $\blacksquare$

A bizonyításban egy gyakran használt fogással éltünk: **ha két feltétel közül az egyik $n_1$-től, a másik $n_2$-től kezdve teljesül, akkor $\max\{n_1, n_2\}$-től kezdve mindkettő teljesül.** Ugyanez véges sok feltételre is működik.

A határérték egyértelműsége teszi jogossá a $\lim a_n$ jelölést: ha van határérték, akkor csak egy van, így értelmes „a” határértékről beszélni.

> **Tétel.** Ha $(a_n)$ konvergens, akkor korlátos.

*Bizonyítás.* Legyen $a_n \to a$. Alkalmazzuk a definíciót $\varepsilon = 1$-re: van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < 1$, és ekkor a háromszög-egyenlőtlenség szerint
$$|a_n| = |(a_n - a) + a| \le |a_n - a| + |a| < 1 + |a|.$$
A küszöb előtti véges sok tag közül van abszolút értékben legnagyobb. Így a
$$K = \max\big\{|a_1|,\ |a_2|,\ \dots,\ |a_{n_0 - 1}|,\ 1 + |a|\big\}$$
szám minden $n$-re $|a_n| \le K$-t biztosít. $\blacksquare$

**A megfordítás hamis:** a $\big((-1)^n\big)$ sorozat korlátos, de divergens. A tétel kontrapozíciója viszont hasznos: **ha egy sorozat nem korlátos, akkor divergens.** Így például $\big((-1)^n n\big)$ divergens.

> **Tétel.** Ha $a_n \to a$, akkor $a_{n+1} - a_n \to 0$.

*Bizonyítás.* Legyen $\varepsilon > 0$. Mivel $a_n \to a$, van olyan $n_0$, hogy minden $n \ge n_0$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ugyanerre az $n$-re $n + 1 \ge n_0$ is teljesül, tehát $|a_{n+1} - a| < \frac{\varepsilon}{2}$ is. A „hozzáadunk és kivonunk” fogással:
$$|a_{n+1} - a_n| = |(a_{n+1} - a) + (a - a_n)| \le |a_{n+1} - a| + |a - a_n| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon. \qquad \blacksquare$$

Figyeljük meg a bizonyítás egy fontos technikai elemét: az $\varepsilon$-t **előre kettéosztottuk**, mert tudtuk, hogy a végén két kicsi tag összegét kell becsülnünk. Ezt a fogást ($\frac{\varepsilon}{2}$-trükk) a továbbiakban rendszeresen alkalmazzuk. (Egyenértékű megoldás: $\varepsilon$-nal dolgozunk, a végén $2\varepsilon$-t kapunk, és megjegyezzük, hogy mivel $\varepsilon$ tetszőleges volt, $2\varepsilon$ is tetszőlegesen kicsi.)

**Figyelem — a megfordítás hamis!** Abból, hogy $a_{n+1} - a_n \to 0$, **nem** következik, hogy $(a_n)$ konvergens. A szomszédos tagok egyre közelebb kerülhetnek egymáshoz úgy is, hogy a sorozat lassan, de minden határon túl nő. Ellenpéldát a 28. szakaszban adunk ($a_n = \sum_{k=1}^n \frac{1}{\sqrt{k}}$); egy egyszerűbb, de később tárgyalt példa a $\sqrt{n}$, amelyre $\sqrt{n+1} - \sqrt{n} = \frac{1}{\sqrt{n+1} + \sqrt{n}} \to 0$.

> **Tétel (a rendezés öröklődése).** Ha minden $n$-re $a_n \le b_n$, továbbá $a_n \to a$ és $b_n \to b$, akkor $a \le b$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $b < a$, és legyen
$$\varepsilon = \frac{a - b}{2} > 0.$$
Ekkor az $a$ és a $b$ $\varepsilon$ sugarú környezete diszjunkt, sőt, a $b$ körüli teljes egészében az $a$ körülitől balra esik: a kettő határa a $\frac{a + b}{2}$ felezőpont. Elég nagy $n$-re (ha $n$ mindkét küszöbnél nagyobb) $a_n \in B(a, \varepsilon)$ és $b_n \in B(b, \varepsilon)$, azaz
$$a_n > a - \varepsilon = \frac{a+b}{2}, \qquad b_n < b + \varepsilon = \frac{a+b}{2}.$$
Eszerint $b_n < \frac{a+b}{2} < a_n$, ami ellentmond az $a_n \le b_n$ feltevésnek. $\blacksquare$

Természetesen elég, ha az $a_n \le b_n$ egyenlőtlenség csak egy küszöbtől kezdve teljesül (a sorozatok eleje közömbös).

**Figyelem — a szigorú egyenlőtlenség nem öröklődik!** Ha minden $n$-re $a_n < b_n$, abból csak $a \le b$ következik, **nem** $a < b$. Ellenpélda: $a_n = \frac{1}{2n}$ és $b_n = \frac{1}{n}$. Itt $a_n < b_n$ minden $n$-re, mégis $\lim a_n = \lim b_n = 0$. Határátmenetnél a szigorú egyenlőtlenség „elmosódhat” egyenlőséggé.

**Speciális eset.** Ha $a_n \to a$ és minden $n$-re $a_n \ge 0$, akkor $a \ge 0$ (a $b_n \equiv 0$ választással). Ha egy sorozat tagjai egy $[c, d]$ zárt intervallumban vannak, akkor a határértéke is ott van. Ezt úgy is mondjuk, hogy **a zárt intervallumokból határátmenettel nem lehet kilépni** — ezt a tényt az 54. szakaszban fel fogjuk használni.

**További hasznos ekvivalenciák.** A definícióból közvetlenül látszik, hogy
$$a_n \to a \iff a_n - a \to 0, \qquad a_n \to 0 \iff |a_n| \to 0,$$
hiszen mindhárom esetben ugyanazt a $|a_n - a| < \varepsilon$, illetve $|a_n| < \varepsilon$ egyenlőtlenséget kell vizsgálni. Ezen felül: ha $a_n \to a$, akkor $|a_n| \to |a|$, ugyanis a fordított háromszög-egyenlőtlenség szerint $\big||a_n| - |a|\big| \le |a_n - a|$. Ennek megfordítása $a \neq 0$ esetén nem igaz: $\big|(-1)^n\big| \to 1$, de $(-1)^n$ divergens.

## 20. Részsorozatok

Egy sorozatból kiválaszthatunk végtelen sok tagot úgy, hogy a sorrendjüket megtartjuk. Például a $\big((-1)^n\big)$ sorozat páros indexű tagjai az $1, 1, 1, \dots$ sorozatot alkotják.

> **Definíció (részsorozat).** Legyen $(a_n)$ egy sorozat, és legyen $n_1 < n_2 < n_3 < \dots$ természetes számok egy szigorúan növekedő sorozata. Ekkor a $b_k = a_{n_k}$ ($k = 1, 2, \dots$) sorozatot az $(a_n)$ **részsorozatának** nevezzük.

A definícióban két dolog lényeges: (1) végtelen sok tagot választunk ki, és (2) a kiválasztott tagok **eredeti sorrendjükben** követik egymást (az indexek szigorúan nőnek). Nem szabad tehát tagot megismételni, sem a sorrendet felcserélni.

**Egy hasznos megfigyelés:** minden $k$-ra $n_k \ge k$. Ez teljes indukcióval látható: $n_1 \ge 1$, és ha $n_k \ge k$, akkor $n_{k+1} > n_k \ge k$, tehát $n_{k+1} \ge k + 1$ (egészekről van szó).

**Példák.**

- $a_n = (-1)^n$, $n_k = 2k$: $b_k = (-1)^{2k} = 1$, az azonosan $1$ sorozat. $n_k = 2k - 1$: az azonosan $-1$ sorozat.
- $a_n = \frac{1}{n}$, $n_k = k^2$: $b_k = \frac{1}{k^2}$.
- $a_n = n$: a prímszámok sorozata ($2, 3, 5, 7, 11, \dots$) részsorozata.

Az első példa egy fontos jelenséget mutat: **a $\big((-1)^n\big)$ sorozat divergens, de van konvergens részsorozata.** Ez a megfigyelés lesz a Bolzano–Weierstrass-tétel (27. szakasz) csírája.

> **Tétel.** Ha $a_n \to a$, akkor $(a_n)$ minden részsorozata is $a$-hoz tart.

*Bizonyítás.* Legyen $(a_{n_k})$ részsorozat és $\varepsilon > 0$. Van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \varepsilon$. Ha $k \ge n_0$, akkor $n_k \ge k \ge n_0$, tehát $|a_{n_k} - a| < \varepsilon$. Így $k_0 = n_0$ jó küszöb a részsorozathoz. $\blacksquare$

**A tétel fő alkalmazása a divergencia bizonyítása.** A tétel kontrapozíciója szerint: **ha egy sorozatnak van két különböző határértékű részsorozata, vagy van divergens részsorozata, akkor a sorozat divergens.** Például a $\big((-1)^n\big)$ sorozat páros indexű részsorozata $1$-hez, a páratlan indexű $-1$-hez tart, tehát a sorozat divergens — ez sokkal rövidebb, mint a 18. szakasz 5. példájában adott bizonyítás.

**Példa.** Az $a_n = (-1)^n + \frac{1}{n}$ sorozat divergens, mert $a_{2k} = 1 + \frac{1}{2k} \to 1$, míg $a_{2k-1} = -1 + \frac{1}{2k-1} \to -1$. (Itt felhasználtuk, hogy konvergens sorozatok összege a határértékek összegéhez tart; ezt a 25. szakaszban bizonyítjuk.)

## 21. Monoton és korlátos sorozatok

Eddig, ha egy sorozat konvergenciáját akartuk igazolni, előre ismernünk kellett a határértéket. A következő tétel az első olyan eszköz, amely a határérték ismerete nélkül garantálja a konvergenciát. Ez az a hely, ahol a teljességi axióma először közvetlenül munkába lép.

> **Tétel (monoton korlátos sorozatok konvergenciája).** Ha $(a_n)$ monoton növekedő és felülről korlátos, akkor konvergens, és
> $$\lim_{n \to \infty} a_n = \sup\{a_n : n \in \mathbb{N}\}.$$
> Hasonlóan: monoton csökkenő, alulról korlátos sorozat konvergens, és határértéke a tagjai halmazának infimuma.

**Szemléletesen:** egy felfelé haladó, de egy plafon alatt maradó sorozat nem tud „elszökni”, és nem is tud ide-oda ugrálni, tehát valahová meg kell érkeznie. Hogy hová? A tagok legkisebb felső korlátjához.

*Bizonyítás.* Az $\{a_n : n \in \mathbb{N}\}$ halmaz nem üres és felülről korlátos, tehát a teljességi axióma szerint létezik $a = \sup\{a_n\}$. Megmutatjuk, hogy $a_n \to a$.

Legyen $\varepsilon > 0$. A szuprémum $\varepsilon$-os jellemzése (8. szakasz) szerint $a - \varepsilon$ már nem felső korlát, tehát van olyan $n_0$ index, amelyre
$$a_{n_0} > a - \varepsilon.$$
A monotonitás miatt minden $n \ge n_0$-ra
$$a - \varepsilon < a_{n_0} \le a_n,$$
másrészt $a$ felső korlát, tehát $a_n \le a < a + \varepsilon$. Így minden $n \ge n_0$-ra $a_n \in (a - \varepsilon, a + \varepsilon)$, ami éppen a konvergencia definíciója.

A csökkenő esetben ugyanígy járunk el az infimummal (vagy alkalmazzuk az előzőt a $(-a_n)$ sorozatra). $\blacksquare$

**Miért alapvető ez a tétel?** Mert a racionális számok körében **nem igaz**. A $\sqrt{2}$ tizedes közelítései,
$$1;\ 1{,}4;\ 1{,}41;\ 1{,}414;\ 1{,}4142;\ \dots$$
monoton növekedő, felülről korlátos (például $2$-vel) racionális sorozatot alkotnak, de a $\mathbb{Q}$-ban nincs határértékük, hiszen az egyetlen lehetséges határérték a $\sqrt{2}$ volna. A tétel tehát a teljességi axióma egy átfogalmazása: valójában **ekvivalens** is vele (ha az arkhimédészi tulajdonságot is feltesszük).

**Első alkalmazás: az $e$ szám létezése.** A 17. szakaszban beláttuk, hogy az $e_n = \left(1 + \frac{1}{n}\right)^n$ sorozat monoton növekedő és felülről korlátos ($e_n < 4$). A tétel szerint tehát **konvergens**. A határértékét $e$-vel jelöljük:
$$e = \lim_{n\to\infty}\left(1 + \frac{1}{n}\right)^n.$$
Ugyanígy a $d_n = \left(1 + \frac{1}{n}\right)^{n+1}$ sorozat monoton csökkenő és alulról korlátos, tehát szintén konvergens. Hogy a két határérték megegyezik, azt a 63. szakaszban bizonyítjuk be (bár a 25. szakasz szorzatszabályával már ott is kiolvasható lesz, hiszen $d_n = e_n \cdot \left(1 + \frac{1}{n}\right)$).

## 22. Tágabb értelemben vett határérték

Az $a_n = n$ és $b_n = \sqrt{n}$ sorozatok divergensek, de nem „rendetlenül”: egyre nagyobbak lesznek, minden határon túl. Szemléletesen „a végtelenbe tartanak”. Ezt a viselkedést is érdemes precízen megfogalmazni, mert lényegesen különbözik a $\big((-1)^n\big)$ sorozat ugrálásától.

> **Definíció ($+\infty$ és $-\infty$ mint határérték).** Az $(a_n)$ sorozat határértéke $+\infty$, ha minden $K \in \mathbb{R}$-hez létezik olyan $n_0$, hogy minden $n \ge n_0$ esetén $a_n > K$. Jelölése: $\lim a_n = +\infty$ vagy $a_n \to +\infty$.
>
> Hasonlóan, $\lim a_n = -\infty$, ha minden $K \in \mathbb{R}$-hez van olyan $n_0$, hogy minden $n \ge n_0$ esetén $a_n < K$.

A játék-hasonlat itt is működik: a kételkedő megad egy akármilyen nagy $K$ „plafont”, a bizonyító pedig olyan küszöbindexet mutat, amelytől kezdve a sorozat minden tagja a plafon fölött van.

**Környezetek a végtelenben.** Ha a $+\infty$ **$K$-környezetének** a
$$B(+\infty, K) = (K, +\infty)$$
félegyenest nevezzük, akkor a definíció ugyanúgy hangzik, mint a véges esetben: a $+\infty$ bármely környezetéhez van olyan küszöb, amelytől kezdve a sorozat minden tagja ebben a környezetben van. Hasonlóan $B(-\infty, K) = (-\infty, K)$. Ez az egységes nyelv a IX. részben, a függvényhatárértékeknél válik igazán hasznossá.

**Szóhasználat.** Ha $a_n \to +\infty$, akkor azt mondjuk, hogy a sorozat **$+\infty$-hez divergál** (vagy „tágabb értelemben” konvergál). Figyelem: az ilyen sorozat **divergens**, hiszen a konvergencia definíciójában véges határérték szerepel! A $\pm\infty$ határértékű sorozatoknak tehát van határértékük (a bővített számegyenesen), de nem konvergensek.

**Példák.**

- $a_n = n \to +\infty$: adott $K$-hoz az arkhimédészi tulajdonság szerint van $n_0 > K$, és $n \ge n_0$-ra $n > K$.
- $b_n = \sqrt{n} \to +\infty$: adott $K > 0$-hoz legyen $n_0 > K^2$; ekkor $n \ge n_0$ esetén $\sqrt{n} > K$.
- $c_n = n^2 - 10n \to +\infty$: becslés kell. Ha $n \ge 20$, akkor $10n \le \frac{n^2}{2}$, tehát $n^2 - 10n \ge \frac{n^2}{2} \ge \frac{n}{2}$, ami adott $K$-nál nagyobb, ha $n > 2K$. Így $n_0 = \max\{20, \text{egy } 2K\text{-nál nagyobb egész}\}$ jó.
- $d_n = (-1)^n n$ nem tart sem $+\infty$-hez, sem $-\infty$-hez: a páratlan indexű tagjai negatívak, tehát nem lehetnek minden $K = 0$-nál nagyobbak egy küszöbtől kezdve; hasonlóan a páros indexűek miatt nem tart $-\infty$-hez.

**A sorozatok osztályozása.** Minden valós sorozatra **pontosan egy** teljesül az alábbiak közül:

| eset | elnevezés | van-e határérték $\overline{\mathbb{R}}$-ben? |
|---|---|---|
| $a_n \to a \in \mathbb{R}$ | konvergens | igen |
| $a_n \to +\infty$ | divergens ($+\infty$-hez divergál) | igen |
| $a_n \to -\infty$ | divergens ($-\infty$-hez divergál) | igen |
| egyik sem | divergens (oszcillálva divergál) | nem |

> **Tétel.** A következők ekvivalensek:
>
> - **(A)** $\lim a_n = +\infty$.
> - **(B)** Minden $K \in \mathbb{R}$-re a sorozatnak csak véges sok tagja kisebb vagy egyenlő $K$-nál.

A bizonyítás szó szerint ugyanaz, mint a 19. szakasz első tételéé, a $B(a, \varepsilon)$ környezet helyett a $B(+\infty, K)$ környezettel.

A 21. szakasz tétele most kiegészíthető úgy, hogy **minden monoton sorozatnak van határértéke** a bővített számegyenesen.

> **Tétel.** Ha $(a_n)$ monoton növekedő és felülről nem korlátos, akkor $a_n \to +\infty$. Hasonlóan, monoton csökkenő, alulról nem korlátos sorozat $-\infty$-hez tart.
>
> Következésképpen minden monoton növekedő sorozatra $\lim a_n = \sup\{a_n : n \in \mathbb{N}\} \in \overline{\mathbb{R}}$.

*Bizonyítás.* Legyen $K \in \mathbb{R}$. Mivel a sorozat felülről nem korlátos, $K$ nem felső korlát, tehát van olyan $n_0$, amelyre $a_{n_0} > K$. A monotonitás miatt minden $n \ge n_0$-ra $a_n \ge a_{n_0} > K$. $\blacksquare$

### Nevezetes határértékek: a mértani sorozat

> **Tétel.** Legyen $q \in \mathbb{R}$. Ekkor
> $$\lim_{n\to\infty} q^n = \begin{cases} +\infty & \text{ha } q > 1, \\ 1 & \text{ha } q = 1, \\ 0 & \text{ha } |q| < 1, \end{cases}$$
> és $q \le -1$ esetén a $(q^n)$ sorozatnak nincs határértéke.

*Bizonyítás.* **$q > 1$:** írjuk $q = 1 + b$ alakba, ahol $b > 0$. A Bernoulli-egyenlőtlenség szerint
$$q^n = (1 + b)^n \ge 1 + nb.$$
Adott $K$-hoz válasszunk $n_0$-t úgy, hogy $1 + n_0 b > K$ (arkhimédészi tulajdonság). Ekkor $n \ge n_0$-ra $q^n \ge 1 + nb \ge 1 + n_0 b > K$.

**$q = 1$:** állandó sorozat.

**$|q| < 1$:** ha $q = 0$, triviális. Ha $0 < |q| < 1$, akkor $\frac{1}{|q|} > 1$, írjuk $\frac{1}{|q|} = 1 + b$ alakba ($b > 0$). A Bernoulli-egyenlőtlenség szerint
$$|q^n - 0| = |q|^n = \frac{1}{(1+b)^n} \le \frac{1}{1 + nb} < \frac{1}{nb},$$
ami kisebb $\varepsilon$-nál, ha $n > \frac{1}{b\varepsilon}$.

**$q \le -1$:** a páros indexű részsorozat $q^{2k} = (q^2)^k$, ami $q^2 \ge 1$ miatt $1$-hez vagy $+\infty$-hez tart; a páratlan indexű részsorozat $q^{2k+1} = q \cdot q^{2k} \le -1$. Két részsorozatnak különböző a viselkedése, így (a 20. szakasz gondolatmenete szerint, $\overline{\mathbb{R}}$-beli határértékekre is) nincs határérték. $\blacksquare$


## 23. Átrendezések és a sorozat megváltoztatása

A 19. szakaszban láttuk, hogy véges sok tag megváltoztatása nem befolyásolja a határértéket. Most megnézzük, milyen más beavatkozásokat „bír ki” a határérték.

> **Definíció (átrendezés).** Ha $(a_n)$ sorozat és $f : \mathbb{N} \to \mathbb{N}$ **bijekció**, akkor a $b_n = a_{f(n)}$ sorozatot az $(a_n)$ **átrendezésének** nevezzük.

Az átrendezés tehát ugyanazokat a tagokat tartalmazza, mindegyiket pontosan egyszer, csak más sorrendben. Például az $a_2, a_1, a_4, a_3, a_6, a_5, \dots$ sorozat (a szomszédos párok felcserélése) átrendezés. A részsorozattal szemben itt minden tag megmarad, de a sorrend megváltozhat.

> **Tétel.** Ha $a_n \to \alpha \in \overline{\mathbb{R}}$, és a $(b_n)$ sorozat az alábbi eljárások véges sokszori alkalmazásával keletkezik az $(a_n)$-ből, akkor $b_n \to \alpha$:
>
> 1. **(I)** átrendezés;
> 2. **(II)** egyes (akár végtelen sok) tagok megismétlése, mindegyiké csak véges sokszor;
> 3. **(III)** véges sok tag hozzávétele;
> 4. **(IV)** véges sok tag elhagyása.

*Bizonyítás.* Mind a négy esetben a 19. és a 22. szakasz „véges sok kivétel” jellemzését használjuk: $a_n \to \alpha$ pontosan akkor, ha az $\alpha$ bármely $V$ környezetén kívül a sorozatnak csak véges sok indexű tagja van. (Véges $\alpha$-ra $V = B(\alpha, \varepsilon)$, végtelenre $V = B(\pm\infty, K)$.) Legyen $V$ az $\alpha$ egy környezete, és $E = \{n : a_n \notin V\}$ a „kivételes” indexek véges halmaza.

**(I)** A $(b_n)$ kivételes indexei azok az $n$-ek, amelyekre $a_{f(n)} \notin V$, azaz $f(n) \in E$. Mivel $f$ bijekció, ezek éppen az $f^{-1}(E)$ halmaz elemei, amely ugyanannyi elemű, mint $E$, tehát véges.

**(II)** Minden kivételes tag legfeljebb véges sokszor fordul elő az új sorozatban, és véges sok ilyen tag van, így az új sorozatban is csak véges sok kivételes indexű tag lesz.

**(III)** és **(IV)** A kivételes tagok száma legfeljebb véges sokkal nő, illetve nem nő. $\blacksquare$

**Miért fontos ez?** Mert azt mutatja, hogy a sorozat határértéke **nem a sorrendtől**, hanem lényegében a tagok „végső eloszlásától” függ. Ez a megnyugtató tény a **végtelen soroknál** gyökeresen megváltozik: ott (a VII. részben röviden említjük) egy konvergens sor tagjainak átrendezése az összeget is megváltoztathatja. A különbség oka, hogy egy sorozatnál az egyes tagokat nézzük, egy sornál viszont a tagok **összegét**, és az összegzés sorrendje végtelen sok tag esetén számít.

## 24. A rendőrelv

A gyakorlatban gyakran előfordul, hogy egy bonyolult sorozat határértékét nem tudjuk közvetlenül kiszámolni, de két egyszerűbb sorozat közé tudjuk szorítani. Ha a két szélső sorozat ugyanoda tart, akkor a középsőnek sincs más választása.

> **Tétel (rendőrelv, más néven közrefogási elv).** Ha van olyan $n_0$, hogy minden $n \ge n_0$ esetén
> $$a_n \le b_n \le c_n,$$
> továbbá $\lim a_n = \lim c_n = a \in \mathbb{R}$, akkor $\lim b_n = a$.

A név szemléletes: ha két rendőr egy gyanúsítottat két oldalról közrefog, és mindketten a rendőrőrsre mennek, akkor a gyanúsított is oda kerül.

*Bizonyítás.* Legyen $\varepsilon > 0$. Van olyan $n_1$, hogy $n \ge n_1$ esetén $|a_n - a| < \varepsilon$, és van olyan $n_2$, hogy $n \ge n_2$ esetén $|c_n - a| < \varepsilon$. Legyen $N = \max\{n_0, n_1, n_2\}$. Ekkor minden $n \ge N$-re mindhárom feltétel teljesül, tehát
$$a - \varepsilon < a_n \le b_n \le c_n < a + \varepsilon,$$
azaz $|b_n - a| < \varepsilon$. $\blacksquare$

Végtelen határértékre elég egy „rendőr”:

> **Tétel (félrendőrelv).** Ha minden $n \ge n_0$-ra $a_n \le b_n$, és $a_n \to +\infty$, akkor $b_n \to +\infty$. Hasonlóan, ha $b_n \le c_n$ és $c_n \to -\infty$, akkor $b_n \to -\infty$.

*Bizonyítás.* Adott $K$-hoz van $n_1$, hogy $n \ge n_1$-re $a_n > K$; ekkor $n \ge \max\{n_0, n_1\}$-re $b_n \ge a_n > K$. $\blacksquare$

### Alkalmazások: nevezetes határértékek

A rendőrelv segítségével néhány, a későbbiekben gyakran használt határértéket számolunk ki. (A pozitív számok $n$-edik gyökének létezését itt is elfogadjuk; az 54. szakaszban bizonyítjuk.)

> **Tétel.** Ha $a > 0$, akkor $\displaystyle \lim_{n\to\infty} \sqrt[n]{a} = 1$.

*Bizonyítás.* **$a \ge 1$ eset.** Ekkor $\sqrt[n]{a} \ge 1$ (különben $a = (\sqrt[n]{a})^n < 1$ volna). Írjuk $\sqrt[n]{a} = 1 + h_n$ alakba, ahol $h_n \ge 0$. A Bernoulli-egyenlőtlenség szerint
$$a = (1 + h_n)^n \ge 1 + n h_n \implies 0 \le h_n \le \frac{a - 1}{n}.$$
A jobb oldal $0$-hoz tart, így a rendőrelv szerint $h_n \to 0$, azaz $\sqrt[n]{a} \to 1$.

**$0 < a < 1$ eset.** Ekkor $\frac{1}{a} > 1$, tehát az előző eset szerint $\sqrt[n]{1/a} \to 1$, és $\sqrt[n]{a} = \frac{1}{\sqrt[n]{1/a}} \to \frac{1}{1} = 1$ a hányados határértékére vonatkozó tétel szerint (25. szakasz). $\blacksquare$

> **Tétel.** $\displaystyle \lim_{n\to\infty} \sqrt[n]{n} = 1$.

*Bizonyítás.* Most a Bernoulli-egyenlőtlenség nem elég erős (az $n \ge 1 + nh_n$ becslésből csak $h_n \le 1$ adódna), ezért a binomiális tételből a **harmadik** tagot tartjuk meg. Legyen $\sqrt[n]{n} = 1 + h_n$, $h_n \ge 0$. Ha $n \ge 2$, akkor
$$n = (1 + h_n)^n = 1 + nh_n + \binom{n}{2}h_n^2 + \dots + h_n^n \ge \binom{n}{2}h_n^2 = \frac{n(n-1)}{2}h_n^2,$$
mert minden elhagyott tag nemnegatív. Innen
$$h_n^2 \le \frac{2}{n-1}, \qquad 0 \le h_n \le \sqrt{\frac{2}{n-1}}.$$
A jobb oldal $0$-hoz tart (adott $\varepsilon$-ra $n - 1 > \frac{2}{\varepsilon^2}$ esetén $\varepsilon$ alatt van), így a rendőrelv szerint $h_n \to 0$. $\blacksquare$

**Kidolgozott példa: $\displaystyle \lim_{n\to\infty} \sqrt[n]{2^n + n^2}$.** Tudjuk (5. szakasz), hogy $n \ge 4$ esetén $n^2 \le 2^n$. Ezért ilyen $n$-ekre
$$2 = \sqrt[n]{2^n} \le \sqrt[n]{2^n + n^2} \le \sqrt[n]{2 \cdot 2^n} = 2\sqrt[n]{2}.$$
A bal oldal állandóan $2$, a jobb oldal $2 \cdot 1 = 2$-höz tart. A rendőrelv szerint a határérték $2$.

**Általános fogás.** Ugyanígy látható, hogy $\sqrt[n]{a^n + b^n} \to \max\{a, b\}$, ha $a, b > 0$: a nagyobbik tag „dominál”. Például $\sqrt[n]{3^n + 5^n} \to 5$, hiszen $5 \le \sqrt[n]{3^n + 5^n} \le \sqrt[n]{2} \cdot 5$.

## 25. Műveletek és határérték

Eddig minden határértéket a definícióból vagy a rendőrelvből számoltunk ki. Most bebizonyítjuk, hogy a határérték „felcserélhető” az alapműveletekkel. Ettől kezdve a legtöbb határértéket egyszerű lépések sorozatával, ismert határértékekből tudjuk összerakni.

> **Tétel (határérték és műveletek).** Ha $a_n \to a \in \mathbb{R}$ és $b_n \to b \in \mathbb{R}$, akkor
>
> 1. **(I)** $a_n + b_n \to a + b$, és $c \cdot a_n \to c \cdot a$ minden $c \in \mathbb{R}$-re;
> 2. **(II)** $a_n b_n \to ab$;
> 3. **(III)** ha $b_n \neq 0$ minden $n$-re és $b \neq 0$, akkor $\dfrac{a_n}{b_n} \to \dfrac{a}{b}$.
>
> Továbbá:
>
> 4. **(IV)** ha $a_n \to 0$ és $(b_n)$ korlátos (nem feltétlenül konvergens), akkor $a_n b_n \to 0$.

*Bizonyítás.*

**(I) — az összeg.** Legyen $\varepsilon > 0$. Válasszunk küszöböt úgy (a két küszöb maximumát véve), hogy elég nagy $n$-re $|a_n - a| < \frac{\varepsilon}{2}$ és $|b_n - b| < \frac{\varepsilon}{2}$ teljesüljön. Ekkor
$$|(a_n + b_n) - (a + b)| = |(a_n - a) + (b_n - b)| \le |a_n - a| + |b_n - b| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$
A konstansszoros a (II) speciális esete ($b_n \equiv c$).

**(IV) — nullsorozat szorozva korlátossal.** Legyen $|b_n| \le K$ minden $n$-re ($K > 0$). Adott $\varepsilon > 0$-hoz elég nagy $n$-re $|a_n| < \frac{\varepsilon}{K}$, és ekkor
$$|a_n b_n| = |a_n| \cdot |b_n| < \frac{\varepsilon}{K} \cdot K = \varepsilon.$$

**(II) — a szorzat.** Az ötlet: a szorzat eltérését két olyan tagra bontjuk, amelyek mindegyikében szerepel egy „kicsi” tényező. A „hozzáadunk és kivonunk” fogással:
$$a_n b_n - ab = a_n b_n - a_n b + a_n b - ab = a_n(b_n - b) + b(a_n - a).$$
Itt $(a_n)$ konvergens, tehát korlátos (19. szakasz), és $b_n - b \to 0$; a (IV) szerint az első tag $0$-hoz tart. A második tagban $b$ állandó és $a_n - a \to 0$, tehát az is $0$-hoz tart. Az (I) szerint az összegük is $0$-hoz tart, azaz $a_n b_n \to ab$.

**(III) — a hányados.** Elég belátni, hogy $\frac{1}{b_n} \to \frac{1}{b}$; ebből (II) szerint
$$\frac{a_n}{b_n} = a_n \cdot \frac{1}{b_n} \to a \cdot \frac{1}{b} = \frac{a}{b}.$$
A nehézség az, hogy a nevezőben álló $b_n$ nem lehet „túl kicsi”, különben a reciproka nagy volna. Ezt a következőképpen biztosítjuk. Mivel $b_n \to b \neq 0$, az $\varepsilon = \frac{|b|}{2}$ választással van olyan $n_1$, hogy $n \ge n_1$ esetén $|b_n - b| < \frac{|b|}{2}$, és ekkor a fordított háromszög-egyenlőtlenség szerint
$$|b_n| \ge |b| - |b - b_n| > |b| - \frac{|b|}{2} = \frac{|b|}{2}.$$
Vagyis a nevező egy küszöbtől kezdve „nem omlik össze”: abszolút értéke $\frac{|b|}{2}$ fölött marad. Ekkor
$$\left|\frac{1}{b_n} - \frac{1}{b}\right| = \frac{|b - b_n|}{|b_n|\cdot|b|} \le \frac{|b_n - b|}{\frac{|b|}{2}\cdot|b|} = \frac{2}{|b|^2}\,|b_n - b|.$$
Itt $\frac{2}{|b|^2}$ állandó, $|b_n - b| \to 0$, tehát a jobb oldal $0$-hoz tart, és így (a rendőrelv szerint) a bal oldal is. $\blacksquare$

**Figyelem:** a tétel csak akkor alkalmazható, ha **mindkét** sorozat konvergens. Például $a_n = n$ és $b_n = -n$ esetén $a_n + b_n = 0 \to 0$, de ebből semmit sem tudunk az $(a_n)$ és $(b_n)$ határértékéről, és fordítva: az összeg határértékét nem kaphatjuk meg az (I) szabállyal, mert egyik sorozat sem konvergens. (Erről szól a következő szakasz.)

### Kidolgozott példák

**1. Racionális törtek.** Számítsuk ki $\displaystyle \lim_{n\to\infty} \frac{3n^2 + 2n}{5n^2 - 1}$-et. A számláló és a nevező is $+\infty$-hez tart, így a hányadosszabály közvetlenül nem alkalmazható. A fogás: **osszuk el a számlálót és a nevezőt a nevező legmagasabb fokú tagjával**:
$$\frac{3n^2 + 2n}{5n^2 - 1} = \frac{3 + \frac{2}{n}}{5 - \frac{1}{n^2}} \to \frac{3 + 0}{5 - 0} = \frac{3}{5}.$$
Itt felhasználtuk, hogy $\frac{1}{n} \to 0$, és ebből a szorzatszabály szerint $\frac{1}{n^2} = \frac{1}{n}\cdot\frac{1}{n} \to 0$. Általában: két azonos fokú polinom hányadosának határértéke a főegyütthatók hányadosa; ha a számláló foka kisebb, a határérték $0$; ha nagyobb, akkor $\pm\infty$ (lásd a következő szakaszt).

**2. Exponenciális kifejezések.** $\displaystyle \lim_{n\to\infty} \frac{3^n + 2^n}{3^{n+1} - 2^n}$: osszunk $3^n$-nel:
$$\frac{1 + \left(\frac{2}{3}\right)^n}{3 - \left(\frac{2}{3}\right)^n} \to \frac{1 + 0}{3 - 0} = \frac{1}{3},$$
mert $\left(\frac{2}{3}\right)^n \to 0$ (22. szakasz).

**3. Korlátos szorozva nullsorozattal.** $\displaystyle \lim_{n\to\infty} \frac{(-1)^n n}{n^2 + 1} = 0$, hiszen $\frac{(-1)^n n}{n^2+1} = (-1)^n \cdot \frac{n}{n^2+1}$, ahol $\big((-1)^n\big)$ korlátos és $\frac{n}{n^2 + 1} = \frac{1/n}{1 + 1/n^2} \to 0$.

**4. Rekurzív sorozat.** Legyen $a_1 = 1$ és $a_{n+1} = \sqrt{2 + a_n}$. Ez a sorozat
$$1,\ \sqrt{3} \approx 1{,}732,\ \sqrt{2 + \sqrt{3}} \approx 1{,}932,\ \dots$$
Úgy tűnik, növekszik, és $2$ alatt marad. Bizonyítsuk ezt be, majd számítsuk ki a határértéket!

*Korlátosság:* teljes indukcióval $0 < a_n < 2$. Az $n = 1$ eset igaz. Ha $0 < a_n < 2$, akkor $a_{n+1} = \sqrt{2 + a_n} < \sqrt{4} = 2$ és $a_{n+1} > 0$.

*Monotonitás:* $a_{n+1} > a_n \iff 2 + a_n > a_n^2$ (pozitív számokról lévén szó, a négyzetre emelés ekvivalens átalakítás) $\iff a_n^2 - a_n - 2 < 0 \iff (a_n - 2)(a_n + 1) < 0$, ami $0 < a_n < 2$ miatt igaz.

*A határérték:* a sorozat monoton növekedő és felülről korlátos, tehát a 21. szakasz szerint konvergens; legyen $L = \lim a_n$. Ekkor $a_{n+1} \to L$ is (részsorozat), és $a_{n+1}^2 = 2 + a_n$. Mindkét oldal határértékét véve (a bal oldalon a szorzatszabállyal):
$$L^2 = 2 + L \implies L^2 - L - 2 = 0 \implies L = 2 \ \text{vagy} \ L = -1.$$
Mivel minden tag pozitív, $L \ge 0$, tehát $L = 2$.

**Fontos:** a határérték kiszámításának ez a módja („írjunk $L$-et $a_n$ és $a_{n+1}$ helyére”) **csak akkor jogos, ha már tudjuk, hogy a sorozat konvergens!** Ellenpélda: $a_1 = 2$, $a_{n+1} = a_n^2$. Ha gondolkodás nélkül $L = L^2$-et írnánk, $L = 0$ vagy $L = 1$ adódna — holott a sorozat $2, 4, 16, 256, \dots$, ami $+\infty$-hez tart.

### Műveletek végtelen határértékkel

> **Tétel.** Ha $a_n \to +\infty$ és $(b_n)$ alulról korlátos, akkor $a_n + b_n \to +\infty$.

*Bizonyítás.* Legyen $b_n \ge K_0$ minden $n$-re. Adott $K$-hoz van olyan $n_0$, hogy $n \ge n_0$ esetén $a_n > K - K_0$. Ekkor
$$a_n + b_n > (K - K_0) + K_0 = K. \qquad \blacksquare$$

Mivel minden konvergens és minden $+\infty$-hez tartó sorozat alulról korlátos, ebből két szokásos „szimbolikus” szabály következik:
$$a_n \to +\infty,\ b_n \to b \in \mathbb{R} \implies a_n + b_n \to +\infty \qquad (\text{„}+\infty + b = +\infty\text{”}),$$
$$a_n \to +\infty,\ b_n \to +\infty \implies a_n + b_n \to +\infty \qquad (\text{„}+\infty + \infty = +\infty\text{”}).$$
Az idézőjelek arra figyelmeztetnek, hogy ezek nem valódi számolási szabályok (a $\pm\infty$ nem szám), hanem a fenti tétel rövidítései.

## 26. Kritikus (határozatlan) határértékek

A műveleti szabályoknak vannak „lyukai”: olyan esetek, amikor a tagok határértékének ismerete **semmit sem árul el** az eredmény határértékéről. Ezeket nevezzük **kritikus** vagy **határozatlan** eseteknek.

**Az $\infty - \infty$ eset.** Ha $a_n \to +\infty$ és $b_n \to -\infty$, akkor az $a_n + b_n$ összeg bármit csinálhat:

- $a_n = n$, $b_n = -n$: az összeg $0 \to 0$;
- $a_n = n + c$, $b_n = -n$: az összeg $c \to c$ (tetszőleges valós szám kijöhet);
- $a_n = 2n$, $b_n = -n$: az összeg $n \to +\infty$;
- $a_n = n$, $b_n = -2n$: az összeg $-n \to -\infty$;
- $a_n = n + (-1)^n$, $b_n = -n$: az összeg $(-1)^n$, amelynek nincs határértéke.

A tanulság: ilyenkor a kifejezést **át kell alakítani**, mielőtt határértéket számolunk.

**Kidolgozott példa: $\lim\left(\sqrt{n^2 + n} - n\right)$.** Ez $\infty - \infty$ alakú. A fogás: **szorozzunk és osszunk a „konjugálttal”**, és használjuk az $(x - y)(x + y) = x^2 - y^2$ azonosságot:
$$\sqrt{n^2 + n} - n = \frac{(\sqrt{n^2+n} - n)(\sqrt{n^2+n} + n)}{\sqrt{n^2+n} + n} = \frac{n}{\sqrt{n^2+n} + n} = \frac{1}{\sqrt{1 + \frac{1}{n}} + 1}.$$
Mivel $1 \le \sqrt{1 + \frac{1}{n}} \le 1 + \frac{1}{n}$ (a jobb oldali becslés négyzetre emeléssel ellenőrizhető), a rendőrelv szerint $\sqrt{1 + \frac{1}{n}} \to 1$, és így a határérték $\frac{1}{1 + 1} = \frac{1}{2}$. Meglepő: két, végtelenhez tartó mennyiség különbsége egy véges, nem nulla számhoz tart.

**További tételek a szorzatra és a reciprokra.**

> **Tétel.**
>
> 1. Ha $a_n \to a > 0$ és $b_n \to +\infty$, akkor $a_n b_n \to +\infty$. (Ha $a < 0$, akkor $-\infty$-hez tart.)
> 2. Ha $a_n \to +\infty$ és $b_n \to +\infty$, akkor $a_n b_n \to +\infty$.
> 3. Ha $|a_n| \to +\infty$, akkor $\frac{1}{a_n} \to 0$.
> 4. Ha $a_n \to 0$ és $a_n \neq 0$ minden $n$-re, akkor $\frac{1}{|a_n|} \to +\infty$.

*Bizonyítás.* 1. Az $\varepsilon = \frac{a}{2}$ választással egy küszöbtől kezdve $a_n > \frac{a}{2} > 0$. Adott $K > 0$-hoz elég nagy $n$-re $b_n > \frac{2K}{a}$, és ekkor $a_n b_n > \frac{a}{2}\cdot\frac{2K}{a} = K$.

2. Elég nagy $n$-re $a_n > 1$ és $b_n > K$ (ha $K > 0$), tehát $a_n b_n > K$.

3. Adott $\varepsilon > 0$-hoz elég nagy $n$-re $|a_n| > \frac{1}{\varepsilon}$, azaz $\left|\frac{1}{a_n}\right| < \varepsilon$.

4. Adott $K > 0$-hoz elég nagy $n$-re $|a_n| < \frac{1}{K}$, azaz $\frac{1}{|a_n|} > K$. $\blacksquare$

**A $0 \cdot \infty$ eset kritikus.** Ha $a_n \to 0$ és $b_n \to +\infty$, a szorzat bármit csinálhat: $\frac{1}{n} \cdot n = 1$; $\frac{1}{n} \cdot n^2 = n \to +\infty$; $\frac{1}{n^2}\cdot n = \frac{1}{n} \to 0$; $\frac{(-1)^n}{n} \cdot n = (-1)^n$ (nincs határérték). Ugyanígy kritikus a $\frac{\infty}{\infty}$ és a $\frac{0}{0}$ eset — ezek ugyanis szorzatként felírva $0 \cdot \infty$ alakúak. A 83. szakaszban a L'Hospital-szabály hatékony eszközt ad majd ezek kezelésére (függvényekre).

**Figyelem a 4. ponthoz:** abból, hogy $a_n \to 0$, nem következik, hogy $\frac{1}{a_n} \to +\infty$ — csak az abszolút értékére igaz. Például $a_n = \frac{(-1)^n}{n}$ esetén $\frac{1}{a_n} = (-1)^n n$, aminek nincs határértéke.

**Összefoglaló táblázatok.** Az összeg határértéke ($a_n$ határértéke a sorokban, $b_n$-é az oszlopokban; $a, b \in \mathbb{R}$):

| $\lim(a_n + b_n)$ | $b$ | $+\infty$ | $-\infty$ |
|---|---|---|---|
| $a$ | $a + b$ | $+\infty$ | $-\infty$ |
| $+\infty$ | $+\infty$ | $+\infty$ | **kritikus** |
| $-\infty$ | $-\infty$ | **kritikus** | $-\infty$ |

A szorzat határértéke:

| $\lim(a_n b_n)$ | $b > 0$ | $0$ | $b < 0$ | $+\infty$ | $-\infty$ |
|---|---|---|---|---|---|
| $a > 0$ | $ab$ | $0$ | $ab$ | $+\infty$ | $-\infty$ |
| $0$ | $0$ | $0$ | $0$ | **kritikus** | **kritikus** |
| $a < 0$ | $ab$ | $0$ | $ab$ | $-\infty$ | $+\infty$ |
| $+\infty$ | $+\infty$ | **kritikus** | $-\infty$ | $+\infty$ | $-\infty$ |
| $-\infty$ | $-\infty$ | **kritikus** | $+\infty$ | $-\infty$ | $+\infty$ |

Érdemes nem bemagolni, hanem megérteni ezeket a táblázatokat: a nem kritikus mezők mindegyike a fenti tételekből adódik, a kritikus mezőkre pedig a fenti példák mutatják, hogy bármi előfordulhat.

## 27. A Bolzano–Weierstrass-tétel

A 20. szakaszban láttuk, hogy a divergens $\big((-1)^n\big)$ sorozatnak is van konvergens részsorozata. Vajon ez véletlen? A következő tétel szerint nem: **minden korlátos sorozatból kiválasztható konvergens részsorozat.** Ez az analízis egyik legfontosabb „létezési” tétele; a 28. és az 54. szakaszban alapvető szerepet játszik.

A bizonyítás egy meglepő lemmára épül.

> **Lemma.** Minden valós sorozatnak van monoton részsorozata.

**Az ötlet.** Képzeljük el a sorozat tagjait hegycsúcsokként egy tájban, ahol $a_n$ az $n$-edik csúcs magassága. Nevezzük az $a_k$ tagot **kilátópontnak** (csúcselemnek), ha belőle előre nézve „a tengerig ellátunk”, vagyis utána már soha nem jön magasabb csúcs: minden $m > k$-ra $a_m \le a_k$.

*Bizonyítás.* Két eset lehetséges.

**a) eset: végtelen sok kilátópont van.** Legyenek ezek indexei $k_1 < k_2 < k_3 < \dots$. Mivel $a_{k_1}$ kilátópont és $k_2 > k_1$, ezért $a_{k_2} \le a_{k_1}$; hasonlóan $a_{k_3} \le a_{k_2}$, és így tovább. Az $(a_{k_j})$ részsorozat tehát **monoton csökkenő**.

**b) eset: csak véges sok kilátópont van.** Ekkor van olyan $s$ index, hogy egyetlen $m \ge s$ indexű tag sem kilátópont. Egy nem kilátópontra a definíció tagadása szerint van olyan későbbi tag, amely **szigorúan magasabb**: ha $a_m$ nem kilátópont, akkor van $m' > m$, hogy $a_{m'} > a_m$. Induljunk $k_1 = s$-ből. Mivel $a_{k_1}$ nem kilátópont, van $k_2 > k_1$, amelyre $a_{k_2} > a_{k_1}$. Mivel $k_2 > s$, $a_{k_2}$ sem kilátópont, tehát van $k_3 > k_2$, amelyre $a_{k_3} > a_{k_2}$. És így tovább: a kapott $(a_{k_j})$ részsorozat **szigorúan monoton növekedő**. $\blacksquare$

> **Tétel (Bolzano–Weierstrass).** Minden korlátos valós sorozatnak van konvergens részsorozata.

*Bizonyítás.* A lemma szerint a sorozatnak van monoton részsorozata. Ez a részsorozat korlátos (hiszen az egész sorozat az), és a korlátos monoton sorozatok a 21. szakasz tétele szerint konvergensek. $\blacksquare$

A rövid bizonyítás mögött hosszú lánc áll: a 21. szakasz tétele a szuprémum létezésén, vagyis a **teljességi axiómán** múlik. A $\mathbb{Q}$-ban a Bolzano–Weierstrass-tétel nem igaz: a $\sqrt{2}$ tizedes közelítéseinek sorozata korlátos, de egyetlen részsorozata sem konvergál racionális számhoz.

**Egy második bizonyítás (felezéssel).** Érdemes egy másik bizonyítást is látni, mert szemléletes, és a Cantor-féle tulajdonságot (9. szakasz) használja. Legyen a sorozat minden tagja az $[A, B]$ intervallumban. Felezzük meg az intervallumot: a két fél közül legalább az egyik a sorozat **végtelen sok** (indexű) tagját tartalmazza; legyen ez $[A_1, B_1]$. Ezt ismét felezzük, és kiválasztunk egy végtelen sok tagot tartalmazó $[A_2, B_2]$ felet, és így tovább. Az egymásba skatulyázott $[A_k, B_k]$ intervallumok hossza $\frac{B - A}{2^k}$, és a Cantor-tulajdonság szerint van egy közös $c$ pontjuk. Most válasszunk indexeket: $n_1$ legyen olyan, hogy $a_{n_1} \in [A_1, B_1]$; $n_2 > n_1$ olyan, hogy $a_{n_2} \in [A_2, B_2]$ (ilyen van, mert ott végtelen sok tag van); és így tovább. Ekkor $a_{n_k}$ és $c$ is az $[A_k, B_k]$ intervallumban van, tehát
$$|a_{n_k} - c| \le \frac{B - A}{2^k} \to 0,$$
vagyis $a_{n_k} \to c$. (A $\frac{1}{2^k} \to 0$ határérték a 22. szakasz mértani sorozatos tételéből következik.)

A nem korlátos sorozatokra is van megfelelő állítás.

> **Tétel.** Ha $(a_n)$ felülről nem korlátos, akkor van $+\infty$-hez tartó részsorozata. Ha alulról nem korlátos, akkor van $-\infty$-hez tartó részsorozata.

*Bizonyítás.* Először egy megfigyelés: ha a sorozat felülről nem korlátos, akkor bármely $K$-ra és bármely $N$ indexre van olyan $n > N$, amelyre $a_n > K$. (Különben az $N$ utáni tagok mind legfeljebb $K$-k volnának, az első $N$ tag pedig véges sok, így a sorozat felülről korlátos volna.) Ezt felhasználva válasszunk $n_1$-et úgy, hogy $a_{n_1} > 1$; majd $n_2 > n_1$-et úgy, hogy $a_{n_2} > 2$; általában $n_k > n_{k-1}$-et úgy, hogy $a_{n_k} > k$. Ekkor $a_{n_k} > k$ minden $k$-ra, így a félrendőrelv szerint $a_{n_k} \to +\infty$. $\blacksquare$

**Összefoglalva:** minden valós sorozatnak van olyan részsorozata, amelynek van határértéke a bővített számegyenesen. (Ha korlátos, akkor a Bolzano–Weierstrass-tétel szerint; ha nem, akkor az utóbbi tétel szerint.)

## 28. A Cauchy-kritérium

Térjünk vissza a 19. szakaszban ígért ellenpéldához. Legyen
$$a_n = 1 + \frac{1}{\sqrt{2}} + \frac{1}{\sqrt{3}} + \dots + \frac{1}{\sqrt{n}} = \sum_{k=1}^n \frac{1}{\sqrt{k}}.$$
Az összeg mind az $n$ tagja legalább akkora, mint a legkisebb, $\frac{1}{\sqrt{n}}$, tehát
$$a_n \ge n \cdot \frac{1}{\sqrt{n}} = \sqrt{n} \to +\infty,$$
így a félrendőrelv szerint $a_n \to +\infty$; a sorozat divergens. Másrészt
$$a_{n+1} - a_n = \frac{1}{\sqrt{n+1}} \to 0.$$
Ez bizonyítja, hogy
$$a_{n+1} - a_n \to 0 \quad \not\Longrightarrow \quad (a_n) \text{ konvergens}.$$
A szomszédos tagok közeledése tehát nem elég a konvergenciához. A sorozat úgy „szökik el” a végtelenbe, hogy közben egyre kisebb lépéseket tesz — de ezek a lépések összeadódnak.

**Mi a helyes feltétel?** Az, hogy ne csak a szomszédos tagok, hanem **bármely két elég késői tag** közel legyen egymáshoz. Ha ugyanis egy sorozat konvergál, akkor egy idő után minden tagja közel van a határértékhez, tehát egymáshoz is. A meglepő az, hogy ez a feltétel elégséges is.

> **Tétel (Cauchy-kritérium).** Az $(a_n)$ sorozat akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_0$, hogy minden $n, m \ge n_0$ esetén
> $$|a_n - a_m| < \varepsilon.$$

Az ilyen tulajdonságú sorozatokat **Cauchy-sorozatoknak** nevezzük. A tétel tehát így is mondható: a valós számok körében egy sorozat pontosan akkor konvergens, ha Cauchy-sorozat.

*Bizonyítás.*

**($\Rightarrow$) Szükségesség.** Legyen $a_n \to a$. Adott $\varepsilon > 0$-hoz van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ekkor minden $n, m \ge n_0$-ra
$$|a_n - a_m| = |(a_n - a) + (a - a_m)| \le |a_n - a| + |a - a_m| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$

**($\Leftarrow$) Elégségesség.** Ez a nehezebb irány, és itt kell a teljesség (a Bolzano–Weierstrass-tételen keresztül). A terv: (1) a Cauchy-sorozat korlátos; (2) tehát van konvergens részsorozata; (3) és a Cauchy-tulajdonság miatt az egész sorozat ugyanoda tart.

*1. lépés: a sorozat korlátos.* Alkalmazzuk a feltételt $\varepsilon = 1$-re: van olyan $n_1$, hogy minden $n, m \ge n_1$-re $|a_n - a_m| < 1$. Speciálisan ($n = n_1$-gyel) minden $m \ge n_1$-re $|a_m - a_{n_1}| < 1$, azaz $|a_m| < |a_{n_1}| + 1$. Az első $n_1 - 1$ tag véges sok, így
$$K = \max\big\{|a_1|,\ \dots,\ |a_{n_1 - 1}|,\ |a_{n_1}| + 1\big\}$$
korlátja a sorozatnak.

*2. lépés: van konvergens részsorozat.* A Bolzano–Weierstrass-tétel szerint van olyan $(a_{n_k})$ részsorozat és $a \in \mathbb{R}$, hogy $a_{n_k} \to a$.

*3. lépés: az egész sorozat $a$-hoz tart.* Legyen $\varepsilon > 0$. Van olyan $n_0$, hogy minden $n, m \ge n_0$-ra $|a_n - a_m| < \frac{\varepsilon}{2}$, és van olyan $k_0$, hogy minden $k \ge k_0$-ra $|a_{n_k} - a| < \frac{\varepsilon}{2}$. Válasszunk egy olyan $k$-t, amelyre egyszerre $k \ge k_0$ és $n_k \ge n_0$ (ilyen van, hiszen $n_k \ge k$). Ekkor minden $n \ge n_0$-ra a $m = n_k$ választással
$$|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon. \qquad \blacksquare$$

**Miért értékes ez a tétel?** Mert **a határérték ismerete nélkül** dönt a konvergenciáról: a feltételben csak a sorozat tagjai szerepelnek. A 21. szakasz tétele is ilyen volt, de az csak monoton sorozatokra működött; a Cauchy-kritérium minden sorozatra.

**Kidolgozott példa.** Tegyük fel, hogy minden $n$-re $|a_{n+1} - a_n| \le \frac{1}{2^n}$. Ekkor $(a_n)$ konvergens. Valóban, ha $m > n$, akkor a háromszög-egyenlőtlenséggel (az $a_n$-től $a_m$-ig egyesével lépkedve):
$$|a_m - a_n| \le |a_m - a_{m-1}| + \dots + |a_{n+1} - a_n| \le \frac{1}{2^{m-1}} + \dots + \frac{1}{2^n}.$$
A jobb oldal egy mértani sorozat összege:
$$\frac{1}{2^n}\left(1 + \frac{1}{2} + \dots + \frac{1}{2^{m-1-n}}\right) < \frac{1}{2^n} \cdot 2 = \frac{1}{2^{n-1}}.$$
Adott $\varepsilon > 0$-hoz van olyan $n_0$, hogy $\frac{1}{2^{n_0 - 1}} < \varepsilon$ (hiszen $\frac{1}{2^n} \to 0$), és ekkor minden $m > n \ge n_0$-ra $|a_m - a_n| < \varepsilon$. A Cauchy-kritérium szerint a sorozat konvergens — anélkül, hogy tudnánk, mi a határértéke!

Vessük össze a $\sum \frac{1}{\sqrt{k}}$ példával: ott a lépések, $\frac{1}{\sqrt{n+1}}$, túl lassan csökkennek, ezért az összegük végtelen; itt a lépések, $\frac{1}{2^n}$, olyan gyorsan csökkennek, hogy az összegük véges marad. Ez a gondolat a VII. részben, a végtelen soroknál teljesedik ki.

---

## A IV. rész összefoglalása

- $a_n \to a$, ha minden $\varepsilon > 0$-hoz van olyan $n_0$, hogy $n \ge n_0$ esetén $|a_n - a| < \varepsilon$. Az $n_0$ függhet $\varepsilon$-tól. A határérték egyértelmű, csak a sorozat végétől függ, és a konvergens sorozat korlátos.
- A határérték öröklődik részsorozatokra; két különböző határértékű részsorozat divergenciát bizonyít.
- A rendezés gyenge egyenlőtlenségként öröklődik, szigorúként nem.
- Monoton korlátos sorozat konvergens (a határérték a szuprémum/infimum) — ez a teljességi axióma első nagy következménye. Ebből: az $e = \lim\left(1 + \frac{1}{n}\right)^n$ létezik.
- A $\pm\infty$ határérték környezetekkel ugyanúgy definiálható; minden monoton sorozatnak van határértéke $\overline{\mathbb{R}}$-ben.
- Eszközök: rendőrelv; műveleti szabályok (összeg, szorzat, hányados); nullsorozat szorozva korlátossal nullsorozat. Kritikus esetek: $\infty - \infty$, $0 \cdot \infty$, $\frac{0}{0}$, $\frac{\infty}{\infty}$ — ezekben átalakítás kell.
- Nevezetes határértékek: $q^n \to 0$ ($|q| < 1$), $\sqrt[n]{a} \to 1$ ($a > 0$), $\sqrt[n]{n} \to 1$.
- Bolzano–Weierstrass: korlátos sorozatnak van konvergens részsorozata. Cauchy-kritérium: a konvergencia ekvivalens azzal, hogy a késői tagok egymáshoz közel vannak.

## Feladatok a IV. részhez

1. A definíció alapján bizonyítsuk be, hogy $\frac{3n + 1}{n + 2} \to 3$. Adjunk meg egy megfelelő küszöbindexet $\varepsilon = 0{,}01$-hez.
2. Bizonyítsuk be, hogy az $a_n = (-1)^n \frac{n}{n+1}$ sorozat divergens.
3. Számítsuk ki a határértékeket: a) $\frac{2n^3 - n + 1}{n^3 + 4n^2}$; b) $\sqrt{n^2 + 3n} - n$; c) $\frac{3^n + 2^n}{3^{n+1} - 2^n}$; d) $\sqrt[n]{3^n + 5^n}$; e) $\frac{n^2 + 1}{n + 5}$.
4. Legyen $a_1 = 1$, $a_{n+1} = \sqrt{6 + a_n}$. Bizonyítsuk be, hogy a sorozat konvergens, és számítsuk ki a határértékét.
5. Bizonyítsuk be, hogy ha $a_n \to a > 0$, akkor egy küszöbtől kezdve $a_n > \frac{a}{2}$.
6. Adjunk meg egy-egy olyan $(a_n)$, $(b_n)$ sorozatpárt, amelyre $a_n \to 0$, $b_n \to +\infty$, és $a_n b_n$ határértéke a) $5$; b) $+\infty$; c) nem létezik.
7. (*Cesàro-tétel*) Bizonyítsuk be, hogy ha $a_n \to a$, akkor $\frac{a_1 + a_2 + \dots + a_n}{n} \to a$. Mutassuk meg, hogy a megfordítás nem igaz.

### Megoldási útmutatók

1. $\left|\frac{3n+1}{n+2} - 3\right| = \frac{5}{n + 2} < \frac{5}{n}$, ami kisebb $\varepsilon$-nál, ha $n > \frac{5}{\varepsilon}$. Pontosabban $\frac{5}{n+2} < 0{,}01 \iff n > 498$, tehát $n_0 = 499$ jó.
2. A páros indexű részsorozat $\frac{2k}{2k+1} \to 1$-hez, a páratlan indexű $-\frac{2k-1}{2k} \to -1$-hez tart.
3. a) $2$. b) $\frac{3n}{\sqrt{n^2 + 3n} + n} = \frac{3}{\sqrt{1 + 3/n} + 1} \to \frac{3}{2}$. c) $\frac{1}{3}$ (lásd a 25. szakasz 2. példáját). d) $5$. e) $\frac{n^2 + 1}{n + 5} = \frac{n + 1/n}{1 + 5/n}$, a számláló $+\infty$-hez, a nevező $1$-hez tart, a határérték $+\infty$.
4. Indukcióval $0 < a_n < 3$; $a_{n+1} > a_n \iff 6 + a_n > a_n^2 \iff (3 - a_n)(a_n + 2) > 0$. Monoton növekedő, korlátos, tehát konvergens; $L^2 = 6 + L$, $L \ge 0$, így $L = 3$.
5. Alkalmazzuk a definíciót $\varepsilon = \frac{a}{2}$-re: egy küszöbtől kezdve $a_n > a - \frac{a}{2} = \frac{a}{2}$.
6. a) $a_n = \frac{5}{n}$, $b_n = n$. b) $a_n = \frac{1}{n}$, $b_n = n^2$. c) $a_n = \frac{2 + (-1)^n}{n}$, $b_n = n$: a szorzat $2 + (-1)^n$.
7. Legyen $\varepsilon > 0$, és $N$ olyan, hogy $n \ge N$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ekkor $n > N$-re
$$\left|\frac{a_1 + \dots + a_n}{n} - a\right| \le \frac{|a_1 - a| + \dots + |a_{N} - a|}{n} + \frac{(n - N)\frac{\varepsilon}{2}}{n}.$$
Az első tag számlálója rögzített szám, így elég nagy $n$-re az első tag is $\frac{\varepsilon}{2}$ alatt van. A megfordításra ellenpélda: $a_n = (-1)^n$, amelynek számtani közepei $0$-hoz tartanak.

---
