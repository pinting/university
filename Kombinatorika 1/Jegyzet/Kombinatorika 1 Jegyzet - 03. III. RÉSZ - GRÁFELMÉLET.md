# III. RÉSZ: GRÁFELMÉLET

A gráfelmélet a XX. században fejlődött igazán önálló tudományterületté, és mára a matematika egyik legtöbbet alkalmazott ága: hálózatok, útvonaltervezés, ütemezés, kémiai molekulák szerkezete — mind gráfokkal modellezhető. Ebben a részben az alapfogalmaktól a fák elméletén és a fokszámsorozatok vizsgálatán át az Euler-séták és a Hamilton-körök kérdésén keresztül a gráfszínezésekig (csúcs- és élszínezés, Vizing-tétel) és a síkbarajzolható gráfok elméletéig (Euler-formula, Kuratowski-tétel, gömb és tórusz, szabályos testek, duális gráf, öt- és hatszín-tétel) jutunk el, majd a független és lefogó csúcs- és élhalmazok (Gallai-tételek) után a párosítások elméletével (Hall-, Frobenius-, Tutte-, Kőnig-tétel, deficites Hall-tétel, stabil párosítások) zárunk.

## 17. Gráfok, egyszerű gráfok, izomorfia

Egy gráf pontokból és az őket összekötő vonalakból áll. Rajzoljunk le néhányat:

1. egy háromszög és egy hozzá csatlakozó négyszög;
2. néhány, egymással nem összekötött darab, köztük magányos pontok;
3. olyan rajz, amelyen egy vonal ugyanabba a pontba tér vissza, és két pontot több vonal is összeköt;
4. egy négyzet a két átlójával;
5. egy háromszög, a belsejében egy ponttal, amely mindhárom csúcshoz hozzá van kötve.

A 4. és az 5. rajz első ránézésre különbözik, valójában azonban **ugyanazt** a szerkezetet ábrázolja: négy pontot, amelyek közül bármelyik kettő össze van kötve. A gráf tehát nem maga a rajz — a rajz csak egy szemléltetése.

> **Definíció (gráf).** Egy $G = (V, E)$ **gráf** két részből áll: a **csúcsok** (vertices) $V = V(G)$ halmazából és az **élek** (edges) $E = E(G)$ halmazából. Minden élhez hozzá van rendelve két (nem feltétlenül különböző) csúcs, az él **végpontjai**; az $e$ él végpontjai $u$ és $v$ esetén $e = (u, v)$ vagy $e = uv$ jelöléssel élünk.

A csúcsokat általában $v_1, v_2, \dots, v_n$, az éleket $e_1, e_2, \dots, e_m$ jelöli. Ebben a könyvben minden gráf **véges**.

> **Definíció.**
>
> - Egy élt **hurokélnek** nevezünk, ha a két végpontja azonos.
> - Két vagy több élt **többszörös** (párhuzamos) élnek nevezünk, ha ugyanaz a két végpontjuk.
> - Egy gráf **egyszerű**, ha nincs benne sem hurokél, sem többszörös él.

**Az előadás fókuszában az egyszerű gráfok állnak.** A továbbiakban „gráf” alatt egyszerű gráfot értünk, ha mást nem mondunk. (Hurokéleket és többszörös éleket a 27. szakaszban, a fokszámsorozatoknál engedünk meg újra.) Egy egyszerű gráfban egy élt egyértelműen meghatároz a két végpontja, így az éleket a csúcsok kételemű részhalmazainak tekinthetjük. Ebből az is következik, hogy egy $n$ csúcsú egyszerű gráfnak
$$0 \le |E(G)| \le \binom{n}{2}$$
éle lehet; a felső korlátot a **teljes gráf** éri el, amelyben bármely két csúcs össze van kötve. Ez sok: egy $1000$ csúcsú egyszerű gráfnak akár $499\,500$ éle is lehet.

### Izomorfia

> **Definíció (izomorfia).** A $G$ és $H$ egyszerű gráfok **izomorfak**, ha van olyan $f\colon V(G) \to V(H)$ bijekció, amely **éltartó**: bármely $u, v \in V(G)$ esetén
> $$uv \in E(G) \iff f(u)f(v) \in E(H).$$

A szó görög eredetű: *izo* = ugyanaz, *morf* = alak. Az izomorfia a gráfelméletben azt a szerepet tölti be, amit a geometriában az egybevágóság: két egybevágó háromszöget „ugyanolyannak” tekintünk, akárhol is helyezkednek el a síkon, és ugyanígy két izomorf gráfot is, akárhogyan rajzoltuk le őket. A fenti 4. és 5. rajz izomorf gráfokat ábrázol.

*Példa.* Legyen $V = \{a, b, c, d, e\}$, és az élek $ab$, $bc$, $cd$, $de$, $bd$. Lerajzolhatjuk egy ötszög-szerű alakzatként, de úgy is, hogy a csúcsokat egy egyenesre tesszük $a, b, c, d, e$ sorrendben, a szomszédosakat összekötjük, és a $b$-t a $d$-vel egy ívvel. A két rajz ugyanazt a gráfot ábrázolja.

## 18. Fokszám és a kézfogási lemma

> **Definíció (fokszám).** Egy $v$ csúcs **fokszáma**, $d(v)$ vagy $\deg(v)$, a $v$-re illeszkedő élek száma (hurokél esetén a hurokél kettővel számít).

A gráf csúcsainak legnagyobb fokszámát **maximális fokszámnak**, $\Delta(G)$-nek, a legkisebbet **minimális fokszámnak**, $\delta(G)$-nek nevezzük. Ha minden csúcs foka ugyanannyi, mondjuk $r$, akkor a gráf **$r$-reguláris** ($\delta = \Delta = r$).

> **Tétel (kézfogási lemma).** Minden $G$ gráfban
> $$\sum_{v \in V(G)} \deg(v) = 2\,|E(G)|.$$

*Bizonyítás.* A bal oldali összegben minden élt **pontosan kétszer** számoltunk: egyszer az egyik, egyszer a másik végpontjánál (a hurokélt kétszer ugyanannál a végpontnál). $\blacksquare$

A név onnan ered, hogy ha egy társaságban mindenki megszámolja, hány emberrel fogott kezet, akkor ezeknek a számoknak az összege a kézfogások számának kétszerese.

::: kiegeszites
**Kiegészítés — Következmény.** *Minden gráfban a páratlan fokszámú csúcsok száma páros.*

*Bizonyítás.* A kézfogási lemma szerint a fokszámok összege páros. Ha a páros fokszámúakat elhagyjuk az összegből, az összeg paritása nem változik, tehát a páratlan fokszámok összege is páros. Páratlan sok páratlan szám összege viszont páratlan volna. $\blacksquare$
:::

## 19. Séták, vonalak, utak, körök

Gráfban az élek mentén mozoghatunk. A mozgásnak több változata van aszerint, hogy megengedjük-e az ismétlődést.

> **Definíció (séta).** A $G$ gráfban egy **$k$ hosszú séta** (élsorozat) egy
> $$u_0,\ e_1,\ u_1,\ e_2,\ u_2,\ \dots,\ e_k,\ u_k$$
> sorozat, ahol $u_i \in V(G)$, $e_j \in E(G)$, és $e_j = (u_{j-1}, u_j)$ minden $j$-re. A séta **zárt**, ha a vége ugyanaz, mint az eleje: $u_0 = u_k$.

A sétában bármi ismétlődhet: csúcsok is, élek is. Ezen szigoríthatunk.

> **Definíció.**
>
> - Ha egy sétában minden él különböző (a csúcsok azonban ismétlődhetnek), **vonalnak** nevezzük. A vonal lehet nyitott vagy zárt.
> - Ha egy sétában minden csúcs különböző, **útnak** nevezzük. Ekkor az élek is automatikusan különbözők.
> - Ha egy zárt sétában a csúcsok — eltekintve az $u_0 = u_k$ egyezéstől — mind különbözők, és $k \ge 1$, **körnek** nevezzük. A kör tehát egy „zárt út”.

Egyszerű gráfban a kör hossza legalább $3$. (Általános gráfban egy hurokél $1$ hosszú, két párhuzamos él $2$ hosszú kört alkot.)

::: kiegeszites
**Kiegészítés — Lemma (sétából út).** *Ha a $G$ gráfban vezet séta az $u$ csúcsból a $v$ csúcsba, akkor vezet út is.*

*Bizonyítás.* Tekintsük a $u$-ból $v$-be vezető séták közül a **legrövidebbet**: $u = u_0, e_1, u_1, \dots, e_k, u_k = v$. Ha volna benne ismétlődő csúcs, $u_i = u_j$ valamilyen $i < j$-re, akkor az $u_i$ és $u_j$ közötti szakaszt kihagyva ($u_0, \dots, u_i = u_j, e_{j+1}, \dots, u_k$) rövidebb sétát kapnánk $u$-ból $v$-be — ellentmondás. Tehát a legrövidebb séta út. $\blacksquare$

Emiatt az alábbiakban a „van séta $u$ és $v$ között” és a „van út $u$ és $v$ között” kijelentések felcserélhetők.
:::

## 20. Összefüggőség és komponensek

> **Definíció (összefüggő gráf).** A $G$ gráf **összefüggő**, ha bármelyik csúcsából bármelyik csúcsába el lehet jutni, vagyis bármely két csúcsa között vezet út (ekvivalensen: séta).

Ha egy gráf nem összefüggő, akkor természetes módon „darabokra” esik. Ezeket a darabokat két, egymással egyenértékű módon is megfoghatjuk.

> **Definíció (komponens).** A $G$ gráf egy **összefüggő komponense** (röviden komponense) $G$-nek egy olyan összefüggő részgráfja, amelyhez bármely további csúcsot hozzávéve már nem kapnánk összefüggő részgráfot. A komponensek tehát $G$ „maximális összefüggő darabjai”.

(A részgráf fogalmát a 23. szakaszban pontosítjuk; itt elég annyi, hogy a komponens egy csúcshalmaz, az összes köztük futó éllel együtt.)

A komponensek egy **relációval** is leírhatók. Ha $u, v \in V(G)$, akkor írjuk, hogy $u \sim v$ ($u$ relációban áll $v$-vel), ha van köztük séta.

> **Állítás.** A $\sim$ reláció **ekvivalenciareláció** $V(G)$-n.

*Bizonyítás.*

- **Reflexív:** $v \sim v$ minden $v$-re, hiszen a $0$ hosszú $v$ séta $v$-ből $v$-be vezet.
- **Szimmetrikus:** ha $u \sim v$, akkor $v \sim u$, mert egy $u$-ból $v$-be vezető sétát visszafelé bejárva $v$-ből $u$-ba vezető sétát kapunk.
- **Tranzitív:** ha $u \sim v$ és $v \sim w$, akkor $u \sim w$: az $u$-ból $v$-be és a $v$-ből $w$-be vezető sétát egymás után fűzve $u$-ból $w$-be vezető sétát kapunk. $\blacksquare$

(A tranzitivitás bizonyításában látszik, miért kényelmesebb itt sétákkal dolgozni, mint utakkal: két út egymás után fűzve nem feltétlenül út, de két séta egymás után fűzve mindig séta.)

Egy ekvivalenciareláció az alaphalmazt **ekvivalenciaosztályokra** bontja. A $\sim$ reláció osztályai éppen a $G$ összefüggő komponensei.

::: kiegeszites
**Kiegészítés — miért éppen a komponensek az osztályok?** Legyen $K$ egy ekvivalenciaosztály, és tekintsük a $K$-beli csúcsokat a köztük futó összes éllel.

*$K$ összefüggő.* Ha $u, v \in K$, akkor van köztük $G$-ben séta. Ennek a sétának minden csúcsa $u$-val relációban áll (a séta kezdőszelete odavezet), tehát $K$-ban van; így a séta minden éle is $K$-beli csúcsokat köt össze. A séta tehát a $K$ által meghatározott részgráfban halad.

*$K$ maximális.* Ha egy $w \notin K$ csúcsot hozzávennénk, és az így kapott részgráf összefüggő volna, akkor $w$ és egy $K$-beli csúcs között séta vezetne, vagyis $w$ is $K$-ban volna. Ellentmondás.

Megfordítva, egy összefüggő részgráf csúcsai mind relációban állnak egymással, tehát egyetlen osztályba esnek, és a maximalitás miatt az egész osztályt kitöltik. $\blacksquare$
:::

## 21. Fák és levelek

> **Definíció (fa).** **Fának** nevezzük az összefüggő, körmentes gráfokat.

A fák a „legtakarékosabb” összefüggő gráfok: épp elég élük van ahhoz, hogy összefüggők legyenek. Nézzük meg a kis csúcsszámú fákat (izomorfia erejéig)!

| $n$ | az $n$ csúcsú fák | darab |
|:-:|:--|:-:|
| 1 | egyetlen pont | 1 |
| 2 | egyetlen él | 1 |
| 3 | $3$ csúcsú út | 1 |
| 4 | $4$ csúcsú út; „csillag” (egy csúcs, hozzá $3$ levél) | 2 |
| 5 | $5$ csúcsú út; „villa” (egy $3$ fokú csúcs két levéllel és egy $2$ hosszú ággal); csillag (egy csúcs $4$ levéllel) | 3 |

> **Definíció (levél).** Egy fa **levele** egy $1$ fokú csúcsa.

> **Állítás.** Minden legalább $2$ csúcsú fának van levele.

*Első bizonyítás (sétálással).* Induljunk el egy tetszőleges csúcsból, és sétáljunk a fában úgy, hogy soha nem fordulunk vissza azon az élen, amelyen érkeztünk. Mivel a fa körmentes, egy csúcsba sem érhetünk vissza (különben kört járnánk be), és mivel a fa véges, valahol el kell akadnunk. Ott, ahol elakadtunk, a csúcsnak az érkezési élen kívül nincs más éle: ez $1$ fokú csúcs.

*Második bizonyítás (leghosszabb út).* Tekintsük a fa egyik leghosszabb útját, $u_0, u_1, \dots, u_k$; mivel a fa összefüggő és legalább $2$ csúcsú, van éle, így $k \ge 1$. Állítjuk, hogy $u_0$ levél. Ha $u_0$-nak $u_1$-en kívül volna egy $w$ szomszédja, akkor két eset lehetséges. Ha $w$ nincs az úton, akkor a $w, u_0, u_1, \dots, u_k$ út hosszabb volna — ellentmondás. Ha $w = u_i$ valamilyen $i \ge 2$-re, akkor az $u_0, u_1, \dots, u_i, u_0$ kör volna — ellentmondás a körmentességgel. $\blacksquare$

A második bizonyítás többet is ad: a leghosszabb út **mindkét** végpontja levél, és ezek különbözők ($k \ge 1$). Ugyanezt az első bizonyításból is kiolvashatjuk: ha az első elakadási pontból újra elindulunk, egy másik helyen kell újra elakadnunk.

> **Állítás.** Minden legalább $2$ csúcsú fának van legalább $2$ levele.

## 22. A fák élszáma

> **Kérdés.** Hány éle van egy $n$ csúcsú fának?

A táblázatból sejthető a válasz: az $n$ csúcsú fák mindegyikének $n - 1$ éle van.

> **Tétel.** Minden $n$ csúcsú fának pontosan $n - 1$ éle van.

*Bizonyítás (teljes indukció $n$ szerint).* $n = 1$-re a fának $0$ éle van. Tegyük fel, hogy az állítás igaz az $n$ csúcsú fákra, és legyen $T$ egy $n + 1$ csúcsú fa. Az előző szakasz szerint $T$-nek van levele; **tépjük le** egy levelét, vagyis töröljük a levelet és a hozzá tartozó egyetlen élt. A kapott $T'$ gráf $n$ csúcsú, és fa:

- körmentes, mert $T$ részgráfja, és $T$-ben nincs kör;
- összefüggő, mert bármely két $T'$-beli csúcs között $T$-ben vezető út nem haladhat át a letépett levélen (egy út belső csúcsának legalább $2$ foka van az úton), tehát az út $T'$-ben is megvan.

Az indukciós feltevés szerint $T'$-nek $n - 1$ éle van, így az eredeti $T$-nek $n$. $\blacksquare$

A tétel szerint egy $1000$ csúcsú fának $999$ éle van — szemben egy $1000$ csúcsú egyszerű gráffal, amelynek akár félmillió éle is lehet.

## 23. Részgráfok és feszítőfák

> **Definíció (részgráf).** A $G$ gráf **részgráfja** az a gráf, amelyet $G$-ből néhány csúcs és néhány él törlésével kapunk. (Egy csúcs törlésekor a rá illeszkedő éleket is törölni kell. Semmit sem törölni is szabad, tehát $G$ önmagának is részgráfja.)

Két fontos speciális eset van:

- Ha **csak csúcsokat** törlünk (és velük együtt a belőlük kiinduló éleket), **feszített részgráfot** kapunk: a megmaradt csúcsok között az összes eredeti él megmarad.
- Ha **csak éleket** törlünk, **feszítő részgráfot** kapunk: minden csúcs megmarad.

> **Definíció (feszítőfa).** A $G$ gráf **feszítőfája** egy olyan feszítő részgráfja, amely fa.

Egy feszítőfa tehát $G$ összes csúcsát összeköti, a lehető legkevesebb éllel. Nyilván csak összefüggő gráfnak lehet feszítőfája. Megfordítva:

> **Tétel.** Minden összefüggő gráfnak van feszítőfája.

A bizonyításhoz egy egyszerű megfigyelésre van szükség.

> **Állítás.** Ha $G$ összefüggő gráf, és $G$ egy tetszőleges körének tetszőleges élét töröljük, akkor a kapott gráf is összefüggő.

*Bizonyítás.* Legyen a törölt él $e = xy$, amely a $C$ kör része. Bármely két csúcs között $G$-ben vezetett séta. Ha ez a séta nem használta az $e$ élt, akkor a törlés után is megvan. Ha használta, akkor az $e$ él helyett kerülhetünk a kör másik ívén: a $C$ körön az $x$-ből $y$-ba az $e$ él nélkül is el lehet jutni. Így bármely két csúcs között a törlés után is vezet séta. $\blacksquare$

*A tétel bizonyítása (algoritmus).* Legyen $G$ összefüggő. Ismételjük a következő lépést:

1. **Van kör?** Ha nincs, a gráf összefüggő és körmentes — vagyis fa —, és **kész** vagyunk.
2. Ha van, egy tetszőleges kör tetszőleges élét töröljük. Az állítás szerint a gráf összefüggő marad. Térjünk vissza az 1. lépéshez.

Mivel minden lépésben egy élt törlünk, és véges sok él van, az eljárás véget ér. A végén kapott gráf összefüggő, körmentes, és $G$ minden csúcsát tartalmazza (csak éleket töröltünk) — tehát $G$ egy feszítőfája. $\blacksquare$

## 24. A fák ekvivalens jellemzései

A fát úgy definiáltuk, mint összefüggő, körmentes gráfot. Sok más, ezzel egyenértékű definíció is adható; ezek a fák alaptulajdonságai.

> **Tétel (a fák jellemzése).** Egy $n$ csúcsú $G$ (egyszerű) gráfra a következő állítások ekvivalensek:
>
> 1. $G$ fa (összefüggő és körmentes);
> 2. $G$ **minimális összefüggő**: összefüggő, de bármely élét törölve már nem az;
> 3. $G$ **maximális körmentes**: körmentes, de bármely új élt hozzávéve (két nem szomszédos csúcsát összekötve) kör keletkezik;
> 4. $G$ összefüggő, és $n - 1$ éle van;
> 5. $G$ körmentes, és $n - 1$ éle van;
> 6. $G$ bármely két csúcsa között **pontosan egy** út vezet.

**Hány bizonyítás kell?** Hat állítás ekvivalenciájához elvben minden rendezett párra egy-egy implikáció kellene, ez $6 \cdot 5 = 30$ bizonyítás. Ennyi azonban fölösleges: ha az implikációkat egy olyan irányított gráf éleinek tekintjük, amelyben bármely állításból bármelyikbe el lehet jutni, az elég. Egy **csillag** (az 1. állításból mindegyikbe és mindegyikből az 1.-be) $10$, egy **kör** ($1 \Rightarrow 2 \Rightarrow \dots \Rightarrow 6 \Rightarrow 1$) mindössze $6$ bizonyítást igényel.

Az előadáson néhány példát néztünk meg; a többi házi feladat volt.

- **$1 \Rightarrow 4$ és $1 \Rightarrow 5$:** ez a 22. szakasz tétele (egy fának $n - 1$ éle van).
- **$1 \Rightarrow 2$:** legyen $G$ fa, és töröljük egy $e = uv$ élét. Tegyük fel *indirekten*, hogy a gráf összefüggő maradt. Akkor vezetne egy út $u$ és $v$ között $e$ nélkül, és ez az út az $e$ éllel együtt az eredeti gráfban kört alkotna — ellentmondás. Tehát $G - e$ nem összefüggő.

::: kiegeszites
**Kiegészítés — a tétel teljes bizonyítása.** A „csillag” stratégiát követjük: az előadáson látott $1 \Rightarrow 2$, $1 \Rightarrow 4$, $1 \Rightarrow 5$ mellé bebizonyítjuk az $1 \Rightarrow 3$, $1 \Rightarrow 6$ implikációt és a $2, 3, 4, 5, 6 \Rightarrow 1$ megfordításokat.

**Segédállítás.** *Ha egy gráfban két csúcs között két különböző út vezet, akkor a gráfban van kör.*

*Bizonyítás.* Legyen $P = (u = p_0, p_1, \dots, p_k = v)$ és $Q = (u = q_0, q_1, \dots, q_l = v)$ két különböző út. Egyik sem lehet a másik valódi kezdőszelete, mert akkor a hosszabbik út kétszer haladna át $v$-n. Van tehát olyan $i$ index, hogy $p_i = q_i$, de $p_{i+1} \ne q_{i+1}$. Legyen $j > i$ a legkisebb olyan index, amelyre $p_j$ rajta van $Q$-nak a $q_i$ utáni részén — ilyen van, mert $p_k = v = q_l$ —, mondjuk $p_j = q_m$, $m > i$. Ekkor
$$p_i,\ p_{i+1},\ \dots,\ p_j = q_m,\ q_{m-1},\ \dots,\ q_{i+1},\ q_i = p_i$$
kör: a $p_{i+1}, \dots, p_{j-1}$ csúcsok $j$ minimalitása miatt nincsenek rajta $Q$ szóban forgó részén (a $Q$ elején, a $q_0, \dots, q_i = p_0, \dots, p_i$ csúcsok között pedig azért nincsenek, mert $P$ csúcsai különbözők), tehát a csúcsok — a kezdő- és végpont kivételével — különbözők. A hossza $(j - i) + (m - i) \ge 3$, mert $j - i = m - i = 1$ esetén $p_{i+1} = q_{i+1}$ volna. $\blacksquare$

**$1 \Rightarrow 3$.** Legyen $G$ fa, és $u, v$ két nem szomszédos csúcsa. Mivel $G$ összefüggő, van köztük út; ehhez az új $uv$ élt hozzávéve kör keletkezik.

**$3 \Rightarrow 1$.** Legyen $G$ maximális körmentes; azt kell belátni, hogy összefüggő. Ha nem volna, legyen $u$ és $v$ két különböző komponensbeli csúcs; ezek nem szomszédosak. A feltétel szerint az $uv$ él hozzávételével kör keletkezik, és ennek a körnek tartalmaznia kell az $uv$ élt (hiszen $G$ körmentes). A kör többi része viszont egy $u$ és $v$ közötti út $G$-ben — ellentmondás azzal, hogy különböző komponensben vannak.

**$2 \Rightarrow 1$.** Legyen $G$ minimális összefüggő; azt kell belátni, hogy körmentes. Ha volna benne kör, annak bármely élét törölve a gráf a 23. szakasz állítása szerint összefüggő maradna — ellentmondás a minimalitással.

**$1 \Rightarrow 6$.** Ha $G$ fa, bármely két csúcsa között van út (összefüggő), és a segédállítás szerint nem lehet két különböző (körmentes).

**$6 \Rightarrow 1$.** Ha bármely két csúcs között van út, $G$ összefüggő. Ha volna benne egy $v_0, v_1, \dots, v_k = v_0$ kör, akkor a $v_0$ és $v_1$ csúcs között két különböző út vezetne: a $v_0v_1$ él és a kör többi része ($v_0, v_{k-1}, \dots, v_1$). Tehát $G$ körmentes.

**$4 \Rightarrow 1$.** Legyen $G$ összefüggő és $n - 1$ élű. A 23. szakasz tétele szerint van feszítőfája, $T$; ennek is $n$ csúcsa van, tehát a 22. szakasz szerint $n - 1$ éle. Mivel $T$ éle $G$-nek is éle, és mindkettőnek $n - 1$ éle van, $T = G$, tehát $G$ fa.

**$5 \Rightarrow 1$.** Legyen $G$ körmentes és $n - 1$ élű; azt kell belátni, hogy összefüggő. Legyenek a komponensei $K_1, \dots, K_c$, rendre $n_1, \dots, n_c$ csúccsal. Minden komponens összefüggő és körmentes, tehát fa, így $K_i$-nek $n_i - 1$ éle van. Összesen
$$|E(G)| = \sum_{i=1}^{c}(n_i - 1) = n - c.$$
Mivel $|E(G)| = n - 1$, ebből $c = 1$, vagyis $G$ összefüggő. $\blacksquare$
:::

Az utolsó bizonyítás egy önmagában is fontos képletet adott. A körmentes gráfokat **erdőnek** nevezzük (komponenseik fák).

> **Következmény.** Egy $n$ csúcsú, $c$ komponensű erdőnek pontosan $n - c$ éle van; így egy $n$ csúcsú körmentes gráfnak **legfeljebb $n - 1$** éle van. Egy $n$ csúcsú összefüggő gráfnak pedig **legalább $n - 1$** éle van, mert tartalmaz egy $n - 1$ élű feszítőfát.

## 25. Minimális összsúlyú feszítőfa

> **Feladat.** Adott egy összefüggő $G$ gráf, és minden $e \in E(G)$ élén egy $w(e) \ge 0$ **súly** (például az adott útszakasz megépítésének költsége). Keressünk **minimális összsúlyú feszítőfát**, vagyis olyan $T$ feszítőfát, amelyre a $w(T) = \sum_{e \in E(T)} w(e)$ összsúly a lehető legkisebb!

Gyakorlati példa: néhány várost úgy szeretnénk úthálózattal összekötni, hogy bármelyikből bármelyikbe el lehessen jutni, és az építés a lehető legolcsóbb legyen. A felesleges utak (amelyek kört zárnak be) kidobhatók, tehát az optimális hálózat egy feszítőfa.

Mivel véges sok feszítőfa van, minimális összsúlyú biztosan létezik; a kérdés az, hogyan találjuk meg anélkül, hogy az összeset végignéznénk. Két természetes, **mohó** módszer kínálkozik: egy „optimista” és egy „pesszimista”. (Az optimista módszer **Kruskal-algoritmus** néven ismert.)

### Az optimista algoritmus (Kruskal)

**Lépés:** építsük meg a(z egyik) **legolcsóbb** olyan élt, amely a már megépítettekkel **nem zár be kört**. Ismételjük, amíg lehet.

(Figyelem: nem egyszerűen a legolcsóbb élt építjük meg, hanem a legolcsóbbat a kört nem záró élek közül — a legolcsóbb él ugyanis bezárhat egy kört.)

**Mikor áll le?** Amikor nem tud tovább lépni, mert $G$ minden további éle kört zárna be. Ekkor a megépített $F$ élhalmaz:

- körmentes (ezt minden lépésben megőriztük);
- feszítő (minden csúcsot tartalmaz — az élek nélküli csúcsokat is a gráf részének tekintjük);
- összefüggő. Ha ugyanis nem volna az, akkor — mivel $G$ összefüggő — volna $G$-nek olyan éle, amely $F$ két különböző komponensét köti össze; ez az él nem zárna be kört, tehát az algoritmus még nem állt volna le.

$F$ tehát feszítőfa, és a 22. szakasz szerint az algoritmus pontosan $n - 1$ lépés után áll le. (Így az is mondható: amikor $n - 1$ élünk van, megállunk, mert az $5.$ jellemzés szerint egy $n - 1$ élű körmentes gráf már fa.)

> **Tétel.** Az optimista algoritmus minimális összsúlyú feszítőfát ad.

### A pesszimista algoritmus

**Lépés:** töröljük $G$-ből a(z egyik) **legdrágább** olyan élt, amelynek törlése után a maradék gráf **összefüggő marad**. Ismételjük, amíg lehet.

**Mikor áll le?** Amikor egyik élt sem lehet úgy törölni, hogy a gráf összefüggő maradjon — ekkor a gráf minimális összefüggő, ami a $2.$ jellemzés szerint fa. Mivel csak éleket töröltünk, feszítőfa; és $n - 1$ éle maradt.

> **Tétel.** A pesszimista algoritmus is minimális összsúlyú feszítőfát ad.

A két algoritmus eredménye **nem feltétlenül egyezik meg**: ha egyenlő súlyú élek is vannak, több minimális összsúlyú feszítőfa is lehet, és a két algoritmus különbözőket találhat. (Például egy háromszögben, amelynek mindhárom éle egységnyi súlyú, mindhárom kétélű feszítőfa minimális.) Az összsúlyuk persze egyenlő.

*Példa.* Legyenek a csúcsok $a, b, c, d$, az élek és súlyaik: $ab$: $1$, $bc$: $2$, $ac$: $3$, $cd$: $4$, $bd$: $5$. Az optimista algoritmus megépíti az $ab$-t, majd a $bc$-t; az $ac$ kört zárna, ezért kimarad; végül megépíti a $cd$-t. Az eredmény $\{ab, bc, cd\}$, összsúlya $7$. A pesszimista algoritmus törli a $bd$-t (a $d$ a $c$-n át továbbra is elérhető), a $cd$-t nem törölheti (a $d$ elszakadna), az $ac$-t viszont igen (az $a$-$b$-$c$ út megmarad); ezután már semmit sem törölhet. Az eredmény ugyanaz a fa.

::: kiegeszites
**Kiegészítés — az optimista algoritmus helyességének bizonyítása.** Legyenek az algoritmus által megépített élek a kiválasztás sorrendjében $e_1, e_2, \dots, e_{n-1}$, és $T = \{e_1, \dots, e_{n-1}\}$. Tegyük fel, hogy $T$ nem minimális összsúlyú. A minimális összsúlyú feszítőfák közül válasszunk egy olyan $T^*$-ot, amely az $e_1, e_2, \dots$ sorozatnak a lehető leghosszabb kezdőszeletét tartalmazza: $e_1, \dots, e_{k-1} \in T^*$, de $e_k \notin T^*$. (Ha $T^*$ mind az $n - 1$ élt tartalmazná, akkor $T^* = T$ volna, hiszen mindkettő $n - 1$ élű.)

Vegyük hozzá $e_k$-t a $T^*$ fához. A $3.$ jellemzés (a $1 \Rightarrow 3$ irány) szerint így egy $C$ kör keletkezik, amely tartalmazza $e_k$-t. A $C$ körnek van olyan $f$ éle, amely nincs $T$-ben (különben $T$-ben kör volna); $f \ne e_k$, tehát $f \in T^*$.

*Állítás: $w(e_k) \le w(f)$.* Amikor az algoritmus a $k$-adik lépésben $e_k$-t választotta, az $e_1, \dots, e_{k-1}$ élek voltak megépítve. Ezekkel $f$ nem zárt volna be kört, hiszen $\{e_1, \dots, e_{k-1}, f\} \subseteq T^*$, és $T^*$ körmentes. Tehát $f$ is választható lett volna, az algoritmus azonban a legolcsóbb választható élt vette, így $w(e_k) \le w(f)$.

Legyen $T' = T^* + e_k - f$. Ez összefüggő (az $f$ él a $C$ kör éle volt, így a 23. szakasz állítása szerint törlése után összefüggő marad), és $n - 1$ éle van, tehát a $4.$ jellemzés szerint feszítőfa. Összsúlya $w(T') = w(T^*) + w(e_k) - w(f) \le w(T^*)$, így $T'$ is minimális összsúlyú. Viszont $T'$ tartalmazza $e_1, \dots, e_k$-t, ami ellentmond $T^*$ választásának. $\blacksquare$

**Kiegészítés — a pesszimista algoritmus helyességének bizonyítása.** Megmutatjuk, hogy az algoritmus futása során végig igaz a következő: *a pillanatnyi $H$ gráf tartalmaz egy minimális összsúlyú feszítőfát* ($G$-ét). Kezdetben ($H = G$) ez nyilvánvaló. Tegyük fel, hogy $H$ tartalmazza a $T^*$ minimális feszítőfát, és az algoritmus a $H$-ból az $e = uv$ élt törli. Ha $e \notin T^*$, akkor $H - e$ is tartalmazza $T^*$-ot. Ha $e \in T^*$:

- A $T^* - e$ gráf két komponensre esik (a $2.$ jellemzés szerint); legyen $X$ az $u$-t, $Y$ a $v$-t tartalmazó komponens csúcshalmaza.
- Mivel $H - e$ összefüggő (az algoritmus csak ilyen élt töröl), van benne $u$-ból $v$-be vezető út. Ez $X$-ből indul és $Y$-ban ér véget, tehát valahol átlép $X$-ből $Y$-ba: van egy $f \ne e$ éle, amelynek egyik vége $X$-ben, másik $Y$-ban van. Ez az út az $e$ éllel együtt kört alkot $H$-ban, amelynek $f$ is éle; így $H - f$ is összefüggő, vagyis $f$ is törölhető lett volna. Az algoritmus a legdrágább törölhető élt választotta, ezért $w(f) \le w(e)$.
- A $T' = T^* - e + f$ gráf összefüggő (az $f$ él összeköti $X$-et és $Y$-t), $n - 1$ élű, tehát feszítőfa, és $w(T') \le w(T^*)$, így minimális. Végül $T' \subseteq H - e$, hiszen $f \in H$ és $f \ne e$.

Az invariáns tehát megmarad. Az algoritmus végén $H$ maga is feszítőfa, és tartalmaz egy minimális összsúlyú $T^*$ feszítőfát; mivel mindkettőnek $n - 1$ éle van, $H = T^*$. $\blacksquare$
:::

## 26. Címkézett fák: a Cayley-tétel és a Prüfer-kód

Eddig a fákat izomorfia erejéig számoltuk: a 21. szakasz táblázata szerint például $3$ különböző $5$ csúcsú fa van. Most **címkézett** fákat számolunk.

> **Definíció.** Egy $n$ csúcsú **címkézett** (számozott) fa olyan fa, amelynek csúcshalmaza $[n] = \{1, 2, \dots, n\}$. Két címkézett fát akkor tekintünk azonosnak, ha pontosan ugyanazok az éleik.

Számoljuk meg kis $n$-ekre!

- $n = 1, 2$: egyetlen címkézett fa van.
- $n = 3$: a fa egy $3$ csúcsú út, és csak az számít, hogy melyik csúcs van középen: $3$ fa. (Az $1$–$2$–$3$ és a $3$–$2$–$1$ út ugyanaz a fa.)
- $n = 4$: az út $\frac{4!}{2} = 12$-féleképpen címkézhető (a $4!$ sorrendben minden utat kétszer, mindkét irányból számoltunk — tehénszabály); a csillag $4$-féleképpen (csak a középső csúcs címkéje számít). Összesen $16$.
- $n = 5$: út: $\frac{5!}{2} = 60$; villa: a $3$ fokú csúcs $5$-féle, a hozzá kapcsolódó két levél $\binom{4}{2} = 6$-féle, a maradék két csúcs sorrendje a hosszabb ágon $2$-féle, ez $5 \cdot 6 \cdot 2 = 60$; csillag: $5$. Összesen $125$.

A sorozat: $1, 1, 3, 16, 125$ — vagyis $1^{-1}, 2^0, 3^1, 4^2, 5^3$.

> **Tétel (Cayley-tétel).** Az $n$ csúcsú címkézett fák száma $n^{n-2}$.

A bizonyítás ötlete a bijekció-elv: minden címkézett fához kölcsönösen egyértelműen hozzárendelünk egy sorozatot, a **Prüfer-kódját**, amely $n - 2$ hosszú, és minden tagja az $1, \dots, n$ számok valamelyike. Ilyen sorozatból az ismétléses variáció képlete szerint $n^{n-2}$ van.

### A Prüfer-kód

**Kódolás.** Legyen $T$ egy $n \ge 2$ csúcsú címkézett fa. Ismételjük $n - 2$-szer a következő lépést:

> Keressük meg a fa **legkisebb sorszámú levelét**, **jegyezzük fel a szomszédját**, majd **tépjük le** a levelet (töröljük az élével együtt).

Minden lépés után ismét fát kapunk (a 22. szakasz bizonyítása szerint), amelynek eggyel kevesebb csúcsa van; és mivel legalább $2$ csúcsú fának van levele, a lépés mindig végrehajtható. A feljegyzett $n - 2$ szám sorozata a fa **Prüfer-kódja**.

*Példa.* Legyen $n = 9$, és a fa élei:
$$\{1,2\},\quad \{1,6\},\quad \{1,4\},\quad \{1,9\},\quad \{3,5\},\quad \{3,8\},\quad \{3,4\},\quad \{4,7\}.$$
A levelek kezdetben: $2, 5, 6, 7, 8, 9$. Írjuk egy táblázat felső sorába, **mit** tépünk le, az alsóba, **hova** volt kötve:

| levél (mit) | 2 | 5 | 6 | 7 | 8 | 3 | 4 | *1* |
|:--|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| szomszéd (hova) | **1** | **3** | **1** | **4** | **3** | **4** | **1** | *9* |

Lépésről lépésre: a legkisebb levél $2$ (szomszédja $1$); utána $5$ ($3$); $6$ ($1$); $7$ ($4$); $8$ ($3$) — ekkor a $3$-asnak már csak a $4$ a szomszédja, tehát levéllé vált, és a legkisebb levél a $3$ ($4$); ezután a $4$ válik levéllé ($1$). Az $n - 2 = 7$ lépés után a $1$ és a $9$ csúcs marad, a köztük futó éllel. A Prüfer-kód:
$$(1, 3, 1, 4, 3, 4, 1).$$

Megfigyelések:

- Ha az utolsó, $1$–$9$ élt is felírjuk (dőlt betűvel a táblázat végén), a táblázat $n - 1$ oszlopa **éppen a fa éleit** adja.
- Az utolsó oszlop alsó eleme mindig $n$: a legnagyobb sorszámú csúcsot sosem tépjük le, hiszen amíg legalább $3$ csúcs van, a fának legalább $2$ levele van, és ezek közül a legkisebb nem a legnagyobb csúcs. Ezért az utolsó oszlopot nem kell feljegyezni.
- A kódban az $1$ háromszor, a $3$ és a $4$ kétszer szerepel, a levelek ($2, 5, 6, 7, 8, 9$) egyszer sem. A fában $\deg(1) = 4$, $\deg(3) = \deg(4) = 3$, a leveleké $1$.

Az utolsó megfigyelés általános érvényű:

> **Állítás.** Ha a $T$ címkézett fában az $i$ csúcs fokszáma $\deg(i)$, akkor az $i$ szám a $T$ Prüfer-kódjában pontosan $\deg(i) - 1$-szer szerepel.

*Bizonyítás.* Az $i$ szám pontosan akkor kerül be a kódba, amikor egy **szomszédját** tépjük le. Kövessük az $i$ csúcs $\deg(i)$ darab élét az eljárás során. Amíg $i$-nek legalább két éle van, $i$ nem levél, így ha egy élét letépjük, akkor a másik végpontja a letépett levél, és $i$ bekerül a kódba. Az $i$ **utolsó** éle viszont nem ilyen: vagy $i$ maga válik levéllé, és **őt** tépjük le (ekkor a szomszédja kerül a kódba, nem $i$), vagy ez az él az eljárás végén megmaradó él, amely nem kerül a kódba. Így $i$ pontosan $\deg(i) - 1$-szer szerepel. $\blacksquare$

Speciálisan: **a levelek pontosan azok a csúcsok, amelyek nem szerepelnek a kódban.**

**Dekódolás.** A kódból a fa visszaállítható. A legkisebb levél az első lépésben éppen a legkisebb olyan szám, amely **nem szerepel a kódban**; a szomszédja a kód első eleme. Ezután a kód első elemét elhagyjuk, a letépett levelet „elhasználtnak” jelöljük, és ugyanígy folytatjuk: mindig a legkisebb olyan, még el nem használt szám a következő levél, amely a **hátralevő** kódban nem szerepel. Végül a két megmaradt, el nem használt csúcsot összekötjük.

A példában a $(1, 3, 1, 4, 3, 4, 1)$ kódból: a kódban nem szereplő legkisebb szám $2$, tehát $2$–$1$ él; a hátralevő kód $(3, 1, 4, 3, 4, 1)$, ebben nem szerepel, és még nem használt: $5, 6, 7, 8, 9$, a legkisebb $5$, tehát $5$–$3$; majd $6$–$1$, $7$–$4$, $8$–$3$; a hátralevő kód ekkor $(4, 1)$, amelyben a $3$ már nem szerepel, tehát $3$–$4$; végül $4$–$1$, és a megmaradt $1, 9$ csúcsot összekötjük. Visszakaptuk az eredeti fát.

Az előadáson a kódolás és a dekódolás alapján rögzítettük: **a számozott $n$ csúcsú fák és az $n - 2$ hosszú Prüfer-kódok kölcsönösen egyértelműen megfeleltethetők egymásnak**; ebből a Cayley-tétel azonnal következik. Azt azonban nem bizonyítottuk, hogy a dekódolás **minden** sorozatból fát (összefüggő, körmentes gráfot) állít elő, és hogy a két eljárás valóban egymás inverze.

::: kiegeszites
**Kiegészítés — a Prüfer-megfeleltetés bijektivitása.** Kényelmesebb általánosabban fogalmazni. Ha $V$ egy legalább $2$ elemű, pozitív egészekből álló véges halmaz, a $V$ csúcshalmazú fák Prüfer-kódját ugyanúgy definiáljuk (legkisebb levél letépése, szomszéd feljegyzése, $|V| - 2$-szer). A fenti állítás és bizonyítása szó szerint érvényes.

**Tétel.** *Ha $|V| = m \ge 2$, akkor minden $(a_1, \dots, a_{m-2}) \in V^{m-2}$ sorozat pontosan egy $V$ csúcshalmazú fának a Prüfer-kódja.*

*Bizonyítás (teljes indukció $m$ szerint).* $m = 2$-re egyetlen fa van (egy él), és egyetlen $0$ hosszú sorozat (az üres). Legyen $m \ge 3$, és tegyük fel, hogy az állítás $m - 1$ elemű csúcshalmazokra igaz.

*Egyértelműség.* Legyen $T$ egy fa, amelynek kódja $(a_1, \dots, a_{m-2})$. Az állítás szerint $T$ levelei pontosan a kódban nem szereplő elemek, így az első lépésben letépett levél $\ell = \min\big(V \setminus \{a_1, \dots, a_{m-2}\}\big)$, és a szomszédja $a_1$. A letépés után kapott $T - \ell$ fa csúcshalmaza $V \setminus \{\ell\}$, és a kódolás innen pontosan úgy folytatódik, mintha $T - \ell$-et kódolnánk, tehát $T - \ell$ kódja $(a_2, \dots, a_{m-2})$. Az indukciós feltevés szerint $T - \ell$-et ez a kód egyértelműen meghatározza, $T$ pedig $T - \ell$-ből az $\ell$–$a_1$ él hozzávételével adódik. Tehát $T$ egyértelmű.

*Létezés.* Legyen $(a_1, \dots, a_{m-2}) \in V^{m-2}$ tetszőleges, és $\ell = \min\big(V \setminus \{a_1, \dots, a_{m-2}\}\big)$; ez létezik, mert a kód $m - 2 < m$ elemet sorol fel. Mivel $\ell$ nem szerepel a kódban, $(a_2, \dots, a_{m-2}) \in (V \setminus \{\ell\})^{m-3}$, így az indukciós feltevés szerint van olyan $T'$ fa a $V \setminus \{\ell\}$ csúcshalmazon, amelynek ez a kódja. Legyen $T$ az a gráf, amelyet $T'$-ből egy új $\ell$–$a_1$ él hozzávételével kapunk ($a_1 \ne \ell$, tehát $a_1 \in V(T')$). $T$ fa: összefüggő, és körmentes, mert az $\ell$ csúcs foka $1$, így nem lehet kör része.

Megmutatjuk, hogy $T$ kódja $(a_1, \dots, a_{m-2})$. Az állítás szerint $T'$ levelei a $(a_2, \dots, a_{m-2})$-ben nem szereplő csúcsok. A $T$ fa egy $\ell$-től különböző $x$ levele $T'$-nek is levele, és $x \ne a_1$ (az $a_1$ foka $T$-ben eggyel nagyobb, mint $T'$-ben, tehát ha $T$-ben $1$ volna, $T'$-ben $0$ — ami egy legalább $2$ csúcsú fában lehetetlen). Így $x$ egyáltalán nem szerepel az $(a_1, \dots, a_{m-2})$ kódban, és $x \ne \ell$, tehát $\ell$ definíciója szerint $x > \ell$. Vagyis $\ell$ a $T$ legkisebb levele: az első lépésben őt tépjük le, feljegyezzük a szomszédját, $a_1$-et, és a $T'$ fa marad, amelynek kódja $(a_2, \dots, a_{m-2})$. $\blacksquare$

A tétel szerint a kódolás bijekció a $V$ csúcshalmazú fák és a $V^{m-2}$ halmaz között. $V = [n]$ esetén ez a Cayley-tétel: az $n$ csúcsú címkézett fák száma $|[n]^{n-2}| = n^{n-2}$.
:::

## 27. Fokszámsorozatok realizálása

> **Kérdés.** Adottak a $d_1 \le d_2 \le \dots \le d_n$ nemnegatív egészek. Létezik-e olyan gráf, amelynek csúcsai $v_1, \dots, v_n$, és $\deg(v_k) = d_k$ minden $k$-ra? (Ha igen, azt mondjuk, hogy a gráf **realizálja** a fokszámsorozatot.)

A válasz attól függ, milyen gráfokat engedünk meg. Három esetet vizsgálunk, egyre szigorúbb feltételekkel.

### I. típus: hurokélek és többszörös élek is megengedettek

> **Állítás.** Pontosan akkor létezik a $d_1, \dots, d_n$ fokszámsorozatú (hurokéleket és többszörös éleket is megengedő) gráf, ha $\sum_{k=1}^{n} d_k$ páros.

*Bizonyítás.* Ha létezik ilyen gráf, a kézfogási lemma szerint a fokszámok összege $2|E|$, tehát páros. Például a $3, 4, 4$ sorozatot semmilyen gráf sem realizálja.

Megfordítva, tegyük fel, hogy az összeg páros. Építsük meg a gráfot három lépésben:

1. **Hurokélekkel elégítjük ki a fokszámigényeket, amennyire lehet:** a $v_k$ csúcsra $\lfloor d_k/2 \rfloor$ hurokélt teszünk. Mivel egy hurokél $2$-vel növeli a fokszámot, ezután minden csúcs fokszáma $d_k$, ha $d_k$ páros, és $d_k - 1$, ha $d_k$ páratlan.
2. **Ami kimaradt:** a páratlan $d_k$-jú csúcsoknak még $1$-$1$ él hiányzik. Mivel a $d_k$-k összege páros, páros sok páratlan $d_k$ van.
3. **Ezeket a csúcsokat kettesével összekötjük** egy-egy éllel.

Az így kapott gráf fokszámsorozata éppen $d_1, \dots, d_n$. $\blacksquare$

### II. típus: hurokél nem, többszörös él megengedett

Ha hurokél nem lehet, a feltétel szigorúbb: a legnagyobb fokú csúcs minden éle egy **másik** csúcsban végződik.

> **Állítás.** Pontosan akkor létezik a $d_1 \le \dots \le d_n$ fokszámsorozatú, hurokélmentes (de többszörös éleket megengedő) gráf, ha $\sum_k d_k$ páros, és
> $$d_n \le d_1 + d_2 + \dots + d_{n-1}.$$

*Bizonyítás.* **Szükségesség.** A paritás a kézfogási lemmából következik. A $v_n$ csúcs $d_n$ élének mindegyike egy másik csúcsban végződik, és ott $1$-gyel növeli a fokszámot, így $d_n \le d_1 + \dots + d_{n-1}$.

**Elégségesség.** Két esetet különböztetünk meg.

*(A) Egyenlőség: $d_n = d_1 + \dots + d_{n-1}$.* Kössük össze $v_n$-et minden $v_k$-val ($k < n$) $d_k$ darab párhuzamos éllel. Mindenki pontosan annyi élt kap, amennyit „kér”, és $v_n$ foka $d_1 + \dots + d_{n-1} = d_n$.

*(B) Szigorú egyenlőtlenség: $d_n < d_1 + \dots + d_{n-1}$.* A különbség $(d_1 + \dots + d_{n-1}) - d_n = \sum_k d_k - 2d_n$ páros, tehát legalább $2$. Kössünk össze egy éllel két különböző, $v_1, \dots, v_{n-1}$ közötti csúcsot, amelyeknek még van kielégítetlen fokszámigénye, és csökkentsük mindkettőjük igényét $1$-gyel. Ezzel az $S = \sum_{k<n}(\text{hátralévő igény})$ összeget **$2$-vel csökkentettük**, $d_n$ pedig változatlan maradt. Egyenlőek már? Ha igen, az (A) eset következik a hátralévő igényekkel; ha még nem, tovább csökkentünk. Mivel $S - d_n$ páros, és minden lépésben $2$-vel csökken, egyszer pontosan $0$ lesz.

Miért van mindig két alkalmas csúcs? Amíg $S > d_n$, legalább két $v_1, \dots, v_{n-1}$ közötti csúcsnak van pozitív hátralévő igénye: ha csak egynek, mondjuk $v_i$-nek volna, akkor $S$ az ő hátralévő igénye volna, ami legfeljebb $d_i \le d_n$ — ellentmondás. $\blacksquare$

## 28. Egyszerű gráfok fokszámsorozatai

### III. típus: egyszerű gráfok

A legérdekesebb (és legnehezebb) eset az, amikor sem hurokél, sem többszörös él nem lehet.

> **Kérdés.** Mikor létezik a $d_1 \le \dots \le d_n$ fokszámsorozatú **egyszerű** gráf?

A párosság és a $d_n \le d_1 + \dots + d_{n-1}$ feltétel nyilván továbbra is szükséges, de már nem elég. Tekintsük az
$$1, 1, 1, 1, 2, 2, 2, 6, 6, 6$$
sorozatot! Az összeg $28$ páros, és $6 \le 22$, tehát a II. típusú gráf létezik. Egyszerű gráf azonban nem: a három $6$-os fokú csúcs egymás között legfeljebb $2$-$2$ fokszámot tud kielégíteni (egy háromszöget alkothatnak), így mindegyiküktől legalább $4$-$4$, összesen legalább $12$ élnek kell átmennie a „túloldalra”, a kis fokú csúcsokhoz. A túloldal azonban összesen csak $1 + 1 + 1 + 1 + 2 + 2 + 2 = 10$ élt tud fogadni.

Ez a gondolatmenet általánosítható. Tekintsük a $k$ legnagyobb fokú csúcsot. Ezek egymás között — egyszerű gráfban — legfeljebb $\binom{k}{2}$ élt alkothatnak, ami a fokszámösszegükből legfeljebb $k(k-1)$-et „nyel el”. A maradék $d_n + d_{n-1} + \dots + d_{n-k+1} - k(k-1)$ fokszámnak a kis fokú csúcsokhoz menő élekből kell kijönnie.

> **Tétel (szükséges feltétel).** Ha létezik a $d_1 \le \dots \le d_n$ fokszámsorozatú egyszerű gráf, akkor minden $k = 1, \dots, n$ esetén
> $$d_n + d_{n-1} + \dots + d_{n-k+1} - k(k-1) \le d_1 + d_2 + \dots + d_{n-k}.$$

A fenti példában $k = 3$-ra: $18 - 6 = 12 > 10$, tehát nincs ilyen egyszerű gráf.

Az előadáson elhangzott, hogy a megfordítás „majdnem” igaz, de kell még valami — ezt most nem néztük meg. A pontos feltételt az **Erdős–Gallai-tétel** adja meg. A különbség az, hogy egy kis fokú $v_i$ csúcs nemcsak $d_i$-nél, hanem $k$-nál több élt sem fogadhat a $k$ nagy fokú csúcstól (mindegyiktől legfeljebb egyet), ezért a jobb oldalon $d_i$ helyett $\min(d_i, k)$ áll.

> **Tétel (Erdős–Gallai).** A $d_1 \le d_2 \le \dots \le d_n$ nemnegatív egészekből álló sorozatot pontosan akkor realizálja egyszerű gráf, ha $\sum_k d_k$ páros, és minden $k = 1, \dots, n$ esetén
> $$d_n + d_{n-1} + \dots + d_{n-k+1} \le k(k-1) + \sum_{i=1}^{n-k}\min(d_i, k).$$

::: kiegeszites
**Kiegészítés — az Erdős–Gallai-tétel bizonyítása.** A bizonyításban kényelmesebb **csökkenő** sorrendben indexelni: legyen $D_1 \ge D_2 \ge \dots \ge D_n$ (vagyis $D_i = d_{n+1-i}$). Jelölje
$$L_k(D) = \sum_{i=1}^{k} D_i, \qquad R_k(D) = k(k-1) + \sum_{i=k+1}^{n}\min(D_i, k).$$
A feltétel: $\sum_i D_i$ páros, és $L_k(D) \le R_k(D)$ minden $k$-ra. Az ilyen sorozatot röviden **EG-sorozatnak** nevezzük.

**Szükségesség.** Legyen $G$ egy realizáció, $\deg(v_i) = D_i$, és $S = \{v_1, \dots, v_k\}$. Az $L_k(D)$ összeg az $S$-en belüli éleket kétszer, az $S$-ből kifelé menőket egyszer számolja. Az $S$-en belüli élek száma legfeljebb $\binom{k}{2}$, ez $k(k-1)$-et ad. Egy $v_i \notin S$ csúcs legfeljebb $D_i$ élt küldhet $S$-be, de mivel mindegyik $S$-beli csúcshoz legfeljebb egyet, legfeljebb $k$-t is; így legfeljebb $\min(D_i, k)$-t. Ezért $L_k(D) \le R_k(D)$.

**Elégségesség.** Teljes indukció a $\sum_i D_i$ összeg szerint. Ha az összeg $0$, az üres (él nélküli) gráf megfelel. A $0$ tagokat elhagyhatjuk (az $R_k$ összegekhez nem járulnak hozzá, a realizációhoz pedig utólag izolált csúcsokként hozzávehetők), tehát feltehetjük, hogy minden $D_i \ge 1$. A $k = 1$ feltétel szerint $D_1 \le \sum_{i \ge 2}\min(D_i, 1) = n - 1$.

Legyen $m = D_1$, és $t$ a legnagyobb olyan index, amelyre $D_1 = D_2 = \dots = D_t$; ha ez $t = n$ volna (minden tag egyenlő), legyen $t = n - 1$. Így $1 \le t \le n - 1$, $D_1 = \dots = D_t = m$, és vagy $D_t > D_{t+1}$, vagy $t = n - 1$. Képezzük az $E$ sorozatot: $E_t = D_t - 1$, $E_n = D_n - 1$, a többi tag változatlan. Az $E$ sorozat nemnegatív, csökkenő (a $t$-edik tag csökkentése nem rontja el a sorrendet, mert $D_t > D_{t+1}$ vagy $t + 1 = n$), és összege $\sum D_i - 2$, páros.

**1. lépés: $E$ is EG-sorozat.** Három esetet vizsgálunk.

- *$t \le k \le n - 1$.* Ekkor $L_k(E) = L_k(D) - 1$. Az $R_k$ összegben csak az $i = n$ tag változhat, legfeljebb $1$-gyel, így $R_k(E) \ge R_k(D) - 1 \ge L_k(D) - 1 = L_k(E)$.
- *$k = n$.* $L_n(E) = L_n(D) - 2 \le R_n(D) = n(n-1) = R_n(E)$.
- *$1 \le k < t$.* Ekkor $L_k(E) = L_k(D) = km$.
  - Ha $m \le k - 1$: $km \le k(k-1) \le R_k(E)$.
  - Ha $m = k$: elég, hogy $\sum_{i > k}\min(E_i, k) \ge k$. Ha $t \ge k + 2$, ezt már az $E_{k+1} = m = k$ tag biztosítja. Ha $t = k + 1$, az $E_t = k - 1$ tag $k - 1$-et ad, és kell még legalább $1$: ha van $t < i < n$ index, az $E_i = D_i \ge 1$ tag megadja; ha nincs, akkor $n = k + 2$, és az $E_n = D_n - 1$ tag kell, hogy pozitív legyen. Ha pedig $D_n = 1$ volna, a sorozat $(k, \dots, k, 1)$ lenne $k + 1$ darab $k$-val, összege $k(k+1) + 1$ páratlan — ez kizárt.
  - Ha $m \ge k + 1$: az $E_t = m - 1 \ge k$ tag miatt $\min(E_t, k) = k = \min(D_t, k)$, tehát $R_k$-ban csak az $i = n$ tag változhat, és az is csak akkor (pontosan $1$-gyel csökken), ha $D_n \le k$. Ha $D_n > k$, akkor $R_k(E) = R_k(D) \ge L_k(E)$. Ha $D_n \le k$, megmutatjuk, hogy $L_k(D) < R_k(D)$, és ekkor $L_k(E) = L_k(D) \le R_k(D) - 1 = R_k(E)$.

    Tegyük fel indirekten, hogy $L_k(D) = R_k(D)$. A $D_{k+1} = \dots = D_t = m \ge k + 1$ tagok egyenként $k$-t adnak $R_k(D)$-hez, így
    $$km = k(k-1) + (t-k)k + \sum_{i>t}\min(D_i, k), \quad \text{azaz} \quad \sum_{i>t}\min(D_i, k) = k(m - t + 1).$$
    Minden $i > t$-re $\min(D_i, t) \le \frac{t}{k}\min(D_i, k)$ (ha $D_i \le k$, a bal oldal $D_i$, ha $D_i > k$, legfeljebb $t = \frac{t}{k}\cdot k$), és az $i = n$ indexre szigorú egyenlőtlenség áll, mert ott $\min(D_n, t) = D_n < \frac{t}{k}D_n$. Így
    $$R_t(D) = t(t-1) + \sum_{i>t}\min(D_i, t) < t(t-1) + \frac{t}{k}\cdot k(m - t + 1) = tm = L_t(D),$$
    ami ellentmond annak, hogy $D$ EG-sorozat.

**2. lépés: $D$ realizálása.** Az indukciós feltevés szerint van olyan $G'$ egyszerű gráf, amelyben $\deg(v_i) = E_i$. Ha $v_t$ és $v_n$ nem szomszédos $G'$-ben, kössük össze őket: a kapott gráf $D$-t realizálja.

Ha szomszédosak, „cserélgetünk”. A $v_t$ csúcsnak $v_n$-en kívül $E_t - 1 = m - 2$ szomszédja van, ami kevesebb, mint a $v_t$-n és $v_n$-en kívüli csúcsok száma, $n - 2$ (hiszen $m \le n - 1$). Van tehát olyan $x \ne v_t, v_n$ csúcs, amely nem szomszédja $v_t$-nek; $x = v_i$ valamilyen $i \notin \{t, n\}$ indexszel, így $\deg_{G'}(x) = D_i \ge D_n$. A $v_n$ csúcsnak $D_n - 1$ szomszédja van, köztük $v_t$, amely nem szomszédja $x$-nek; így $x$ és $v_n$ közös szomszédainak száma legfeljebb $D_n - 2$. Ezért $x$-nek a legalább $D_n$ szomszédja között van olyan $y$, amely nem szomszédja $v_n$-nek, és $y \ne v_n$ (legfeljebb $D_n - 2$ közös szomszéd, és legfeljebb maga $v_n$ esik ki). Mivel $v_t$ nem szomszédja $x$-nek, $y \ne v_t$.

Töröljük az $xy$ élt, és vegyük hozzá a $v_tx$ és $v_ny$ éleket (ezek eddig nem voltak élek). Az $x$ és $y$ foka nem változik, $v_t$ és $v_n$ foka $1$-gyel nő. Az így kapott egyszerű gráf $D$-t realizálja. $\blacksquare$
:::

### A Havel–Hakimi-algoritmus

Az Erdős–Gallai-feltétel ellenőrzéséhez $n$ egyenlőtlenséget kell megvizsgálni, és ha teljesülnek, a gráfot még meg is kell találni. Az előadáson egy egyszerű, mohó algoritmust is láttunk, amely mindkét kérdést egyszerre megoldja.

**Havel–Hakimi-algoritmus.** A fokszámigényeket folyamatosan frissítjük, és mindig **monoton növekvő** sorrendbe rendezzük.

1. Vegyük a legnagyobb igényű csúcsot, $d_n$-t, és kössük össze a **közvetlenül előtte álló** $d_n$ darab csúccsal — vagyis a többiek közül a $d_n$ legnagyobb igényűvel. Ezek igénye $1$-gyel csökken, a $v_n$-é $0$ lesz:
$$\dots,\ d_{n-d_n} - 1,\ \dots,\ d_{n-2} - 1,\ d_{n-1} - 1,\ d_n \to 0.$$

2. Rendezzük újra a megmaradt igényeket, és **ismételjük**: újra a legnagyobbat elégítjük ki a közvetlenül utána következőkkel.
3. Ha minden igény $0$-ra csökkent, **kész**: megkaptuk a gráfot. Ha valamelyik lépés nem hajtható végre (nincs elég pozitív igényű csúcs, amellyel a legnagyobbat össze lehetne kötni), akkor **nincs ilyen egyszerű gráf**.

*Példa.* Futtassuk az algoritmust az $1, 1, 1, 2, 2, 2, 3, 3, 3$ sorozatra! Minden sorban a legnagyobb igényt elégítjük ki a közvetlenül előtte állókkal, majd újrarendezünk.

| lépés | igények (növekvő sorrendben) | a legnagyobbat összekötjük… |
|:-:|:--|:--|
| 0 | $1, 1, 1, 2, 2, 2, 3, 3, \mathbf{3}$ | a $3, 3, 2$ igényűekkel |
| 1 | $1, 1, 1, 1, 2, 2, 2, \mathbf{2}$ | a $2, 2$ igényűekkel |
| 2 | $1, 1, 1, 1, 1, 1, \mathbf{2}$ | az $1, 1$ igényűekkel |
| 3 | $0, 0, 1, 1, 1, \mathbf{1}$ | az $1$ igényűvel |
| 4 | $0, 0, 0, 1, \mathbf{1}$ | az $1$ igényűvel |
| 5 | $0, 0, 0, 0$ | **kész!** |

Az algoritmus lefutott, tehát van ilyen egyszerű gráf, és a lépésekben behúzott élek meg is adják.

*Ellenpélda.* Az $1, 1, 1, 1, 2, 2, 2, 6, 6, 6$ sorozatnál az első lépés után ($6$-ost összekötjük a $6, 6, 2, 2, 2, 1$ igényű csúcsokkal) az igények rendezve $0, 1, 1, 1, 1, 1, 1, 5, 5$. A következő $5$-öst összekötve a $5, 1, 1, 1, 1$ igényűekkel: $0, 0, 0, 0, 0, 1, 1, 4$. Most a $4$-es igényű csúcsot négy másikkal kellene összekötni, de csak két pozitív igényű csúcs maradt: az algoritmus elakad, **nincs ilyen egyszerű gráf** — összhangban azzal, amit korábban láttunk.

Az előadás összegzése szerint ez **jó algoritmus: pont akkor kerül bajba, amikor baj van.** Ezt a következő tétel mondja ki pontosan.

> **Tétel (Havel–Hakimi).** Legyen $d_1 \le \dots \le d_n$, és tegyük fel, hogy $d_n \le n - 1$. A sorozat pontosan akkor realizálható egyszerű gráffal, ha az a sorozat realizálható, amelyet úgy kapunk, hogy $d_n$-t elhagyjuk, és a $d_{n-1}, d_{n-2}, \dots, d_{n-d_n}$ tagokat $1$-gyel csökkentjük. (Ha $d_n > n - 1$, a sorozat nem realizálható, hiszen egy csúcsnak legfeljebb $n - 1$ szomszédja lehet.)

::: kiegeszites
**Kiegészítés — a Havel–Hakimi-tétel bizonyítása.** Legyen $S = \{v_{n-1}, v_{n-2}, \dots, v_{n-d_n}\}$ a $d_n$ darab legnagyobb igényű többi csúcs.

*Ha a csökkentett sorozat realizálható*, vegyünk egy realizációját a $v_1, \dots, v_{n-1}$ csúcsokon, adjunk hozzá egy új $v_n$ csúcsot, és kössük össze az $S$ halmaz elemeivel. Az $S$-beli csúcsok foka $1$-gyel nő, $v_n$ foka $d_n$: ez $d$ realizációja.

*Megfordítva*, tegyük fel, hogy $d$ realizálható. Elég megmutatni, hogy van olyan $G$ realizáció, amelyben $v_n$ szomszédai **pontosan** az $S$ elemei, hiszen ekkor $v_n$-et törölve a csökkentett sorozat realizációját kapjuk. A $d$ realizációi közül válasszunk egy olyan $G$-t, amelyben $|N(v_n) \cap S|$ a lehető legnagyobb ($N(v)$ a $v$ szomszédainak halmaza). Tegyük fel indirekten, hogy $N(v_n) \ne S$. Mivel $|N(v_n)| = d_n = |S|$, van olyan $v_a \in N(v_n) \setminus S$ és $v_b \in S \setminus N(v_n)$. Ekkor $a < b$ (az $S$-en kívüli, $v_n$-től különböző csúcsok indexe kisebb az $S$-belieknél), így $d_a \le d_b$.

Keresünk egy olyan $w$ szomszédját $v_b$-nek, amely nem szomszédja $v_a$-nak, és $w \ne v_a$. A $v_b$ szomszédai közül legfeljebb $d_a - 1$ tartozhat $N(v_a) \cup \{v_a\}$-hoz: $v_a$ szomszédai közül $v_n$ nem szomszédja $v_b$-nek, és ha $v_a$ és $v_b$ szomszédos, akkor $v_b \in N(v_a)$ nem szomszédja önmagának, viszont $v_a \in N(v_b)$ — ez a két hatás kiegyenlíti egymást. Így $v_b$-nek legalább $d_b - (d_a - 1) \ge 1$ alkalmas $w$ szomszédja van; $w \ne v_n$, mert $v_n$ nem szomszédja $v_b$-nek.

Töröljük a $v_nv_a$ és $v_bw$ éleket, és vegyük hozzá a $v_nv_b$ és $v_aw$ éleket (ezek eddig nem voltak élek). Minden fokszám változatlan, tehát ez is realizáció, és benne $|N(v_n) \cap S|$ eggyel nagyobb — ellentmondás $G$ választásával. $\blacksquare$

**Miért helyes ebből az algoritmus?** A tétel szerint minden lépésben a sorozat pontosan akkor realizálható, ha a lépés után kapott rövidebb sorozat realizálható. Ha az algoritmus végigfut (minden igény $0$), az utolsó sorozatot az él nélküli gráf realizálja, és visszafelé haladva mindegyiket. Ha elakad, mert a legnagyobb igény nagyobb a többi csúcs számánál, vagy egy igény negatívvá válna (vagyis nincs elég pozitív igényű csúcs), akkor az aktuális sorozat nem realizálható, így — a tétel szerint visszafelé haladva — az eredeti sem.
:::

## 29. Fák fokszámsorozatai és reguláris gráfok

### +1. típus: fák

A 27–28. szakasz három típusa mellé vegyünk fel egy negyediket: mikor realizálja a fokszámsorozatot **fa**?

> **Állítás.** Legyen $n \ge 2$, és $1 \le d_1 \le d_2 \le \dots \le d_n$ egészek. Pontosan akkor létezik olyan fa, amelynek csúcsai $v_1, \dots, v_n$, és $\deg(v_i) = d_i$ minden $i$-re, ha
> $$\sum_{i=1}^{n} d_i = 2(n - 1).$$

*Bizonyítás.* **$\Rightarrow$:** Egy $n$ csúcsú fának $n - 1$ éle van (22. szakasz), így a kézfogási lemma szerint a fokszámok összege $2(n-1)$.

**$\Leftarrow$:** A Prüfer-kódot hívjuk segítségül (26. szakasz). Írjuk fel a következő sorozatot: az $1$-est $(d_1 - 1)$-szer, a $2$-est $(d_2 - 1)$-szer, …, az $n$-et $(d_n - 1)$-szer:
$$\underbrace{1, 1, \dots, 1}_{d_1 - 1},\ \underbrace{2, 2, \dots, 2}_{d_2 - 1},\ \dots,\ \underbrace{n, n, \dots, n}_{d_n - 1}.$$
(Ha $d_i = 1$, az $i$ egyszer sem szerepel.) A sorozat hossza
$$\sum_{i=1}^{n}(d_i - 1) = \Big(\sum_{i=1}^{n} d_i\Big) - n = 2(n - 1) - n = n - 2,$$
és minden tagja az $1, \dots, n$ számok valamelyike: ez tehát **egy Prüfer-kód**. Fejtsük vissza! Kapunk egy $n$ csúcsú címkézett fát, és mivel az $i$ szám a kódban $d_i - 1$-szer szerepel, a 26. szakasz állítása szerint ebben a fában az $i$ csúcs foka éppen $d_i$. $\blacksquare$

> **Megjegyzés.** Ilyen fából sok van: a Prüfer-kód bijektivitása miatt a $\deg(i) = d_i$ ($i = 1, \dots, n$) feltételnek eleget tevő címkézett fák száma annyi, ahányféleképpen a fenti $n - 2$ hosszú sorozat tagjai sorba rendezhetők, vagyis (ismétléses permutáció)
> $$\frac{(n-2)!}{(d_1 - 1)!\,(d_2 - 1)! \cdots (d_n - 1)!}.$$

*Példa.* $n = 4$-re a $\deg(1) = \deg(2) = \deg(3) = 1$, $\deg(4) = 3$ feltételnek $\frac{2!}{0!\,0!\,0!\,2!} = 1$ fa felel meg (a $4$ közepű csillag), a $\deg(1) = \deg(4) = 1$, $\deg(2) = \deg(3) = 2$ feltételnek pedig $\frac{2!}{0!\,1!\,1!\,0!} = 2$ (az $1$–$2$–$3$–$4$ és az $1$–$3$–$2$–$4$ út).

::: kiegeszites
**Kiegészítés — miért kell, hogy minden $d_i \ge 1$?** Az előadáson ez hallgatólagos feltétel volt (a $d_i - 1$ darab ismétlés csak így értelmes), de lényeges: a $0, 2, 2, 2$ sorozatra $\sum d_i = 6 = 2(4 - 1)$, mégsem realizálja fa, hiszen egy legalább $2$ csúcsú fa összefüggő, így nincs $0$ fokú csúcsa. (Ezt a sorozatot egy háromszög és egy izolált csúcs realizálja.)
:::

### Reguláris gráfok

> **Definíció.** Egy gráf **$r$-reguláris**, ha minden csúcsának a foka ugyanaz az $r$ szám. Röviden **reguláris** gráfról beszélünk, ha valamilyen $r$-re $r$-reguláris.

Nézzük az egyszerű reguláris gráfokat kis $r$-ekre!

- **$0$-reguláris:** csupa izolált pont, egyetlen él nélkül.
- **$1$-reguláris:** diszjunkt élek: minden csúcsnak pontosan egy szomszédja van, így a csúcsok párokba rendeződnek.
- **$2$-reguláris:** néhány **diszjunkt kör** uniója.
- **$3$-reguláris:** a csúcsok száma **páros**; ilyen például a **kocka** élhálója ($8$ csúcs, $12$ él), vagy a teljes négypontú gráf.

::: kiegeszites
**Kiegészítés — a $2$- és $3$-reguláris gráfokról elmondottak bizonyítása.**

*Egy $2$-reguláris egyszerű gráf minden komponense kör.* Induljunk el egy $u_0$ csúcsból, és sétáljunk úgy, hogy soha nem fordulunk vissza azon az élen, amelyen érkeztünk: $u_0, u_1, u_2, \dots$. Ez mindig lehetséges, mert minden csúcsnak $2$ éle van. A gráf véges, így egyszer egy már látott csúcsba érünk; legyen $u_j$ az első ilyen, $u_j = u_i$ ($i < j$). Ha $i \ge 1$ volna, akkor $u_i$-nek három különböző éle lenne: $u_{i-1}u_i$, $u_iu_{i+1}$ és $u_{j-1}u_j$ — ellentmondás. Tehát $u_j = u_0$, és $u_0, u_1, \dots, u_{j-1}, u_0$ kör (egyszerű gráfban $j \ge 3$). Ennek a körnek minden csúcsa már mindkét élét használja, így a kör a gráf egy teljes komponense. A többi komponensre ugyanezt megismételve kapjuk, hogy a gráf diszjunkt körök uniója. Megfordítva, diszjunkt körök uniója nyilván $2$-reguláris.

*Egy $3$-reguláris gráf csúcsainak száma páros.* A kézfogási lemma szerint $3n = 2|E|$, tehát $3n$ páros, így $n$ is páros.

*Minden páros $n \ge 4$-re van $n$ csúcsú, $3$-reguláris egyszerű gráf.* Vegyünk egy $n$ hosszú kört a $v_1, \dots, v_n$ csúcsokon, és kössük még össze a „szemközti” csúcsokat: $v_i$-t $v_{i + n/2}$-vel ($i = 1, \dots, n/2$). Minden csúcs kap egy új élt a két köréle mellé. $n = 4$-re ez a teljes négypontú gráf.
:::

## 30. Euler-séták és Euler-körséták

A gráfelmélet születését egy **Leonhard Euler** által 1736-ban megoldott feladathoz kötik, a **königsbergi hidak problémájához**. Königsberg városát a Pregel folyó négy részre (két partra és két szigetre) osztotta, és a részeket hét híd kötötte össze. A kérdés: be lehet-e járni a várost úgy, hogy **minden hídon pontosan egyszer** menjünk át?

Modellezzük gráffal: a csúcsok a négy városrész, az élek a hidak. (Ez a gráf nem egyszerű: két városrészt több híd is összeköthet, tehát **többszörös éleket** is megengedünk.) A nagyobbik szigetnek $5$ hídja van, a másik három városrésznek $3$-$3$: a gráf fokszámai $5, 3, 3, 3$.

> **Definíció.** Legyen $G$ egy gráf.
>
> - **Euler-séta:** olyan séta $G$-ben, amely minden élen **pontosan egyszer** megy át.
> - **Euler-körséta:** olyan Euler-séta, amely **visszaér a kiindulópontjához** (zárt).

Mivel az Euler-séta egyetlen élen sem megy át kétszer, a 19. szakasz szóhasználatával egy **vonal** (az Euler-körséta pedig zárt vonal, *körvonal*), amely ráadásul az összes élt tartalmazza. Szemléletesen: az Euler-séta a gráf lerajzolása **a ceruza felemelése nélkül**, úgy, hogy egyetlen vonalat sem húzunk be kétszer.

Néhány példa:

| gráf | fokszámok | Euler-séta | Euler-körséta |
|:--|:--|:-:|:-:|
| königsbergi hidak | $5, 3, 3, 3$ | nincs | nincs |
| négyzet a két átlójával | $3, 3, 3, 3$ | nincs | nincs |
| ház (négyzet, rajta háromszög alakú tető) | $2, 2, 3, 3, 2$ | van | nincs |
| ház a négyzet két átlójával | $3, 3, 4, 4, 2$ | van | nincs |
| kör | $2, 2, \dots, 2$ | van | van |

> **Tétel (Euler).**
>
> - $G$-ben pontosan akkor van **Euler-körséta**, ha $G$ összefüggő, és **minden csúcs foka páros**.
> - $G$-ben pontosan akkor van **Euler-séta**, ha $G$ összefüggő, és a páratlan fokú csúcsok száma $0$ vagy $2$.

A königsbergi gráfban mind a négy csúcs foka páratlan, tehát a hidakat nem lehet a kívánt módon bejárni.

*Bizonyítás (Euler-körséta).* **$\Rightarrow$:** Az Euler-körséta minden élt bejár, így bármely két csúcs között halad séta: $G$ összefüggő. Valahányszor a körséta áthalad egy csúcson, egy élen **be**megy, egy másikon **ki**jön, és a kiindulópontban is párba állítható az első és az utolsó él. A körséta minden élt pontosan egyszer használ, így minden csúcs fokszáma páros.

**$\Leftarrow$:** Tegyük fel, hogy $G$ összefüggő, és minden fok páros. Előbb egy megfigyelés:

*Ha egy $u$ csúcsból elindulunk, és vonalat építünk (minden lépésben egy még be nem járt élen haladunk tovább), akkor csak a kiindulópontban akadhatunk el.* Ha ugyanis egy $w \ne u$ csúcsba érkezünk, akkor $w$-ben eddig eggyel több élt használtunk el befelé, mint kifelé — páratlan sokat —, és mivel $w$ foka páros, marad még be nem járt éle, amelyen továbbmehetünk. Mivel az élek száma véges, egyszer elakadunk, és ez csak $u$-ban történhet: a vonal zárt, körvonal.

Most nézzük a $G$ **leghosszabb körvonalát**, és tegyük fel indirekten, hogy van olyan éle $G$-nek, amelyet nem járt be. Mivel $G$ összefüggő, van olyan be nem járt él is, amelynek az egyik végpontja, $u$, a körvonalon fekszik. A körvonal minden csúcsnál **páros sok** élt használ, így a be nem járt élek gráfjában is minden fok páros. Induljunk el $u$-ból a be nem járt éleken: a megfigyelés szerint ez a vonal is csak $u$-ban akadhat el, tehát körvonal. Ezt az új körvonalat az $u$ csúcsnál „befűzhetjük” a régibe: a régi körvonalon haladva, amikor $u$-ba érünk, előbb bejárjuk az újat, majd a régin folytatjuk. Így a leghosszabbnál hosszabb körvonalat kaptunk — ellentmondás. Tehát a leghosszabb körvonal minden élt bejár: Euler-körséta. $\blacksquare$

::: kiegeszites
**Kiegészítés — az Euler-sétára vonatkozó rész bizonyítása.**

**$\Rightarrow$:** Az összefüggőség ugyanúgy következik, mint előbb. Ha az Euler-séta zárt, minden fok páros ($0$ páratlan fokú csúcs). Ha nyitott, az $x$ kezdőpontból az $y \ne x$ végpontba vezet, akkor a belső áthaladásokat ugyanúgy párba állíthatjuk, és csak $x$-nél marad egy párosítatlan (az első) és $y$-nál egy párosítatlan (az utolsó) él: pontosan $x$ és $y$ foka páratlan.

**$\Leftarrow$:** Ha nincs páratlan fokú csúcs, az előző rész szerint van Euler-körséta, és ez Euler-séta is. Ha pontosan kettő van, $x$ és $y$, vegyünk hozzá $G$-hez egy új $xy$ élt (ez lehet többszörös él). Az új gráf összefüggő, és minden foka páros, tehát van benne Euler-körséta. Ezt úgy indíthatjuk, hogy az utolsó éle az új $xy$ él legyen; ezt elhagyva $G$ egy $x$-ből $y$-ba vezető Euler-sétáját kapjuk.

*Megjegyzés az izolált csúcsokról.* Szigorúan véve az „összefüggő” feltételt úgy kell érteni, hogy **az élek** egy komponensben vannak: egy izolált csúcs (amelynek foka $0$, páros) nem akadályozza az Euler-körséta létezését, hiszen nincs bejárandó éle. Az izolált csúcsokat tehát a tétel alkalmazása előtt hagyjuk el.
:::

## 31. Hamilton-utak és Hamilton-körök

Az Euler-sétánál minden **élt** pontosan egyszer kellett bejárni. Mi a helyzet, ha minden **csúcsot** szeretnénk pontosan egyszer meglátogatni?

> **Definíció.** Legyen $G$ egy $n$ csúcsú gráf.
>
> - **Hamilton-út:** olyan út $G$-ben, amely a gráf **minden csúcsát** tartalmazza. Ez egy $n - 1$ hosszú út.
> - **Hamilton-kör:** olyan kör $G$-ben, amely a gráf minden csúcsát tartalmazza. Ez egy $n$ hosszú kör.

A 23. szakasz nyelvén: a Hamilton-út egy olyan **feszítő részgráf, amely út** (feszítő út), a Hamilton-kör pedig egy **feszítő kör**. Míg feszítőfája minden összefüggő gráfnak van, feszítő útja csak a Hamilton-utat tartalmazó gráfoknak.

> **Kérdés.** Van-e $G$-ben Hamilton-kör (Hamilton-út)?

Az Euler-séta kérdésére a fokszámok paritása egyszerű és teljes választ adott. A Hamilton-kör kérdése ezzel szemben **NP-teljes probléma**: nem ismerünk rá hatékony algoritmust, és ilyen nem is várható. Ezért be kell érnünk **szükséges** és **elégséges** feltételekkel: olyanokkal, amelyek ha nem teljesülnek, biztosan nincs Hamilton-kör, illetve olyanokkal, amelyek ha teljesülnek, biztosan van.

### Szükséges feltételek

> **Tétel.**
>
> - Ha $G$-ben van **Hamilton-kör**, akkor minden $k \ge 1$-re bármely $k$ csúcsot törölve a gráf **legfeljebb $k$** komponensre esik szét.
> - Ha $G$-ben van **Hamilton-út**, akkor minden $k \ge 1$-re bármely $k$ csúcsot törölve a gráf **legfeljebb $k + 1$** komponensre esik szét.

*Bizonyítás.* Rajzoljuk le a Hamilton-kört: ez a gráf összes csúcsa és néhány éle; a többi él csak „ráadás”.

Gondoljunk a Hamilton-körre úgy, mint egy **nyakláncra**: ha $k$ szemet kiszedünk belőle, legfeljebb $k$ darabra esik. A darabok mindegyike egy-egy út, amely a megmaradt gráfban egyetlen komponensbe tartozik, és a darabok együtt az összes megmaradt csúcsot lefedik. A gráf további élei a darabokat legfeljebb összekapcsolhatják, szétszedni nem tudják, tehát a komponensek száma legfeljebb $k$.

A Hamilton-út egy (nem zárt) **lánc**: ha $k$ szemet kiszedünk belőle, legfeljebb $k + 1$ részre esik. A többi ugyanígy megy. $\blacksquare$

::: kiegeszites
**Kiegészítés — két példa.**

*A feltétel kizárhat Hamilton-kört.* Vegyünk két háromszöget, amelyeknek egy közös csúcsuk van (ez a „pillangó”, $5$ csúcs). A közös csúcsot törölve ($k = 1$) a gráf $2$ komponensre esik, tehát nincs Hamilton-köre. Hamilton-útja viszont van (az egyik háromszög két csúcsán át a közös csúcsba, onnan a másik háromszög két csúcsán át), összhangban azzal, hogy egy csúcs törlésével legfeljebb $1 + 1 = 2$ komponens keletkezik.

*A feltétel nem elégséges.* Ismert, hogy a **Petersen-gráf** ($10$ csúcsú, $3$-reguláris gráf: egy ötszög, egy ötágú csillag, és a megfelelő csúcsaik összekötve) teljesíti a fenti szükséges feltételt, Hamilton-köre mégsincs. A szükséges feltétel teljesülése tehát még nem garantálja a Hamilton-kört.

*Miért nincs a Petersen-gráfban Hamilton-kör?* Legyenek a külső ötszög csúcsai $o_1, \dots, o_5$ (körbe), a belső csillag csúcsai $i_1, \dots, i_5$ (az $i_k$ az $i_{k+2}$-vel és az $i_{k-2}$-vel szomszédos, indexek modulo $5$), és a „küllők” az $o_ki_k$ élek. Tegyük fel, hogy $H$ egy Hamilton-kör. $H$ minden csúcsnál $2$ élt használ a $3$-ból. Egy kör páros sokszor lép át a külső és a belső csúcsok között, és legalább kétszer, így $H$ vagy $2$, vagy $4$ küllőt tartalmaz.

- *$2$ küllő.* A külső ötszögön a két küllős csúcs $1$-$1$, a többi három $2$-$2$ ötszögélt használ $H$-ból, összesen $\frac{2 + 6}{2} = 4$ élt: $H$ külső része egy $5$ csúcsú út, amelynek két végpontja a két küllős csúcs, és ezek az ötszögön **szomszédosak** (a kimaradó él köti össze őket): $o_a, o_{a+1}$. Ugyanígy a belső részen a két küllős csúcs, $i_a$ és $i_{a+1}$ a csillagban szomszédos volna — de $i_a$ szomszédai $i_{a \pm 2}$. Ellentmondás.
- *$4$ küllő.* Legyen $o_1i_1$ a kimaradó küllő (a szimmetria miatt feltehető). A külső részen $o_1$ két, a többi egy-egy ötszögélt használ: $\frac{2 + 4}{2} = 3$ él, köztük $o_5o_1$ és $o_1o_2$; a két kimaradó él nem szomszédos és nem illeszkedik $o_1$-re, tehát $o_2o_3$ és $o_4o_5$, így a harmadik használt él $o_3o_4$. Ugyanígy a belső részen ($i_1$ szomszédai $i_3$ és $i_4$) $H$ az $i_1i_3$, $i_1i_4$ és $i_2i_5$ éleket használja. Ekkor azonban $o_1, o_2, i_2, i_5, o_5, o_1$ egy $5$ hosszú kör $H$-ban — egy Hamilton-kör nem tartalmazhat rövidebb kört. Ellentmondás. $\blacksquare$
:::

## 32. Elégséges feltétel: a Dirac- és az Ore-tétel

Az elégséges feltételek azt mondják ki, hogy ha egy gráfnak „elég sok” éle van, akkor van Hamilton-köre.

> **Tétel (Dirac-tétel).** Legyen $G$ egy $n \ge 3$ csúcsú egyszerű gráf. Ha minden csúcs foka legalább $\frac{n}{2}$, akkor $G$-ben van Hamilton-kör.

(Az $n \ge 3$ feltétel azért kell, mert egyszerű gráfban a kör hossza legalább $3$: a $2$ csúcsú, egyetlen élből álló gráfban minden fok $1 = \frac{2}{2}$, Hamilton-kör mégsincs.)

*Bizonyítás.* A bizonyítás három lépésből áll. Indirekt tegyük fel, hogy minden fok legalább $\frac{n}{2}$, de **nincs** Hamilton-kör.

**1. lépés: telítés.** Húzzunk be $G$-be további éleket egyenként, amíg csak lehet úgy, hogy még mindig ne legyen Hamilton-kör. A fokszámok közben csak nőnek, így továbbra is mindegyik legalább $\frac{n}{2}$. A teljes gráfban ($n \ge 3$ esetén) van Hamilton-kör, ezért a folyamat előbb megáll. Olyan gráfot kapunk — nevezzük továbbra is $G$-nek —, amelyben

> minden fok legalább $\frac{n}{2}$, nincs Hamilton-kör, de **bármelyik** hiányzó élt behúzva már lenne.

Legyen $x$ és $y$ két nem szomszédos csúcs. Ha az $xy$ élt behúznánk, keletkezne egy Hamilton-kör, és ez szükségképpen használja az $xy$ élt (különben már $G$-ben is meglett volna). Ezt az élt elhagyva $G$-ben egy **Hamilton-utat** kapunk $x$-ből $y$-ba:
$$x = u_1,\ u_2,\ \dots,\ u_n = y.$$

**2. lépés: nincsenek „keresztélek”.** *Állítás:* ha $u_{i+1}$ szomszédja $x$-nek, akkor az előtte álló $u_i$ csúcs **nem** szomszédja $y$-nak.

Ha ugyanis $x u_{i+1}$ és $u_i y$ is él volna, akkor
$$x = u_1,\ u_2,\ \dots,\ u_i,\ y = u_n,\ u_{n-1},\ \dots,\ u_{i+1},\ x$$
Hamilton-kör volna $G$-ben: az úton elmegyünk $u_i$-ig, átugrunk $y$-ba, az úton visszafelé haladunk $u_{i+1}$-ig, és onnan visszaugrunk $x$-be. Ez ellentmondás.

**3. lépés: hányan lehetnek $y$ szomszédai?** Az $x$ csúcsnak $\deg(x)$ szomszédja van, mind az $u_2, \dots, u_n$ csúcsok között. Mindegyik szomszéd előtt áll az úton egy csúcs; ezek $\deg(x)$ darab különböző csúcsot adnak az $u_1, \dots, u_{n-1}$ közül, és a 2. lépés szerint egyikük sem szomszédja $y$-nak. Az $y$ szomszédai az $u_1, \dots, u_{n-1}$ csúcsok közül kerülnek ki ($y$ nem szomszédja önmagának), ezért
$$\deg(y) \le (n - 1) - \deg(x), \quad \text{azaz} \quad n - 1 \ge \deg(x) + \deg(y) \ge \frac{n}{2} + \frac{n}{2} = n.$$
Az $n - 1 \ge n$ egyenlőtlenség ellentmondás. $\blacksquare$

**Megjegyzés.** A bizonyításban a fokszámfeltételt csak egyetlen helyen, a 3. lépés végén használtuk, és ott is csak az **összekötetlen** $x$, $y$ csúcsok fokszámösszegére: elég lett volna, hogy $\deg(x) + \deg(y) \ge n$. Valójában tehát egy erősebb tételt bizonyítottunk:

> **Tétel (Ore-tétel).** Legyen $G$ egy $n \ge 3$ csúcsú egyszerű gráf. Ha $G$ bármely két **összekötetlen** $x$, $y$ csúcsára igaz, hogy
> $$\deg(x) + \deg(y) \ge n,$$
> akkor $G$-ben van Hamilton-kör.

A Dirac-tétel ennek speciális esete: ha minden fok legalább $\frac{n}{2}$, akkor bármely két csúcs fokszámösszege legalább $n$.

::: kiegeszites
**Kiegészítés — miért működik a bizonyítás az Ore-feltétellel is?** Egyetlen pontot kell ellenőrizni: hogy az 1. lépésben a telítés megőrzi a feltételt. Ha két csúcs a telített gráfban nincs összekötve, akkor az eredetiben sem volt, így az eredeti gráfban $\deg(x) + \deg(y) \ge n$; a telítés közben a fokszámok csak nőttek, tehát a telített gráfban is $\deg(x) + \deg(y) \ge n$. A 2. és 3. lépés változtatás nélkül érvényes, és a 3. lépés végén az $n - 1 \ge \deg(x) + \deg(y) \ge n$ ellentmondásra jutunk.

*A Dirac-tétel korlátja éles.* Az $\frac{n}{2}$ nem cserélhető kisebbre: ha $n = 2m + 1$ páratlan, vegyünk két $(m+1)$ csúcsú teljes gráfot, amelyeknek egy közös csúcsuk van. Minden fok legalább $m = \frac{n-1}{2}$, de a közös csúcsot törölve a gráf $2$ komponensre esik, így a 31. szakasz szükséges feltétele szerint nincs Hamilton-köre.
:::

## 33. Gráfszínezések: csúcsszínezés és kromatikus szám

Az előző fejezetekben láttuk, hogy míg az Euler-séták és körséták létezése egyszerűen és gyorsan (polinomiális időben) ellenőrizhető a fokszámok paritásából, addig a Hamilton-út és Hamilton-kör létezésének eldöntése számításelméleti szempontból rendkívül nehéz (NP-teljes feladat). Most a gráfelmélet egy újabb, gazdag és gyakorlati szempontból is alapvető területére lépünk: a **gráfszínezésekhez**.

Színezési feladatokkal a mindennapi életben és a számítástudományban is lépten-nyomon találkozunk:

- **Vizsgabeosztás és órarendkészítés:** a kurzusok a csúcsok, és két kurzus közé élt húzunk, ha van közös hallgatójuk. Olyan időpontokat (színeket) kell a vizsgákhoz rendelni, hogy ütköző vizsgák ne essenek azonos időpontra.
- **Frekvenciakiosztás:** a rádióadók vagy mobil adótornyok csúcsok; ha két adó közel van egymáshoz (interferálhatnak), élt húzunk közéjük. Az azonos frekvenciák a színek.
- **Regiszterallokáció a fordítóprogramokban:** a programban szereplő változók közül melyek férnek el a processzor korlátozott számú hardver-regiszterében úgy, hogy az egyszerre élő változók ne ütközzenek.

Első témakörünk a **csúcsok színezése**.

> **Definíció (jó csúcsszínezés).** Egy $G = (V, E)$ gráf $k$ színnel való **jó csúcsszínezése** (vagy reguláris csúcsszínezése) egy olyan
> $$c: V \to \{1, 2, \dots, k\}$$
> leképezés, amelyre bármely $uv \in E$ él esetén
> $$c(u) \ne c(v).$$
> Más szavakkal: semelyik két szomszédos (éllel összekötött) csúcs nem kaphatja ugyanazt a színt.

A természetes kérdés: *hány színre van minimálisan szükségünk egy adott gráf jó kiszínezéséhez?*

> **Definíció (kromatikus szám).** A legkisebb olyan $k$ pozitív egész számot, amelyre a $G$ gráfnak létezik $k$ színnel való jó csúcsszínezése, a $G$ gráf **kromatikus számának** nevezzük, és $\chi(G)$-vel jelöljük (a görög khí betűvel: $\chi$). Ha $\chi(G) \le k$, akkor azt mondjuk, hogy a gráf **$k$-színezhető**.

### Mekkora lehet a kromatikus szám?

Bármely $n$ csúcsú egyszerű gráfra nyilvánvalóan teljesül:
$$1 \le \chi(G) \le n.$$

Nézzük meg a két szélsőértéket:

- **Alsó szélsőérték:** $\chi(G) = 1$ pontosan akkor áll fenn, ha a gráfnak **egyetlen éle sincs** (üres gráf, $E = \emptyset$). Ha ugyanis akár egyetlen $uv$ él is létezik, akkor $u$ és $v$ nem kaphat azonos színt, így legalább $2$ színre van szükség.
- **Felső szélsőérték:** $\chi(G) = n$ pontosan akkor áll fenn, ha $G = K_n$, az $n$ csúcsú **teljes gráf**. A teljes gráfban ugyanis bármely két csúcs össze van kötve, így semelyik kettő nem kaphat azonos színt: mind az $n$ csúcsnak külön színt kell kapnia.

Mi történik, ha egy teljes gráfból elhagyunk egy élt?
Tekintsük például az $5$ csúcsú teljes gráfot, a $K_5$-öt: $n = 5$, és $e = \binom{5}{2} = 10$ éle van. Mint láttuk, $\chi(K_5) = 5$.
Ha elhagyunk belőle egyetlen élt, mondjuk az $uv$ élt: az $u$ és $v$ csúcs között már nem fut él, így ők ketten megkaphatják ugyanazt a színt! A maradék három csúcs viszont továbbra is páronként össze van kötve egymással és $u$-val, $v$-vel is, így nekik három további, egymástól és az $u, v$ színétől is különböző színre van szükségük. Ezzel $K_5 - e$ már kiszínezhető $4$ színnel:
$$\chi(K_5 - e) = 4.$$
Egyetlen él elhagyása tehát $1$-gyel csökkentette a kromatikus számot.

\begin{center}
\begin{tikzpicture}[scale=1.1,
  v/.style={circle, draw=black, fill=black!10, thick, minimum size=18pt, inner sep=0pt},
  edge/.style={draw=black!70, thick},
  missing/.style={draw=black!40, dashed, thick}
]
  \node[v] (v1) at (90:1.4) {$1$};
  \node[v] (v2) at (162:1.4) {$2$};
  \node[v] (v3) at (234:1.4) {$3$};
  \node[v] (v4) at (306:1.4) {$4$};
  \node[v] (v5) at (18:1.4) {$1$};

  \draw[missing] (v1) -- (v5);
  \draw[edge] (v1) -- (v2);
  \draw[edge] (v1) -- (v3);
  \draw[edge] (v1) -- (v4);
  \draw[edge] (v2) -- (v3);
  \draw[edge] (v2) -- (v4);
  \draw[edge] (v2) -- (v5);
  \draw[edge] (v3) -- (v4);
  \draw[edge] (v3) -- (v5);
  \draw[edge] (v4) -- (v5);

  \node[below=0.2cm of v3, xshift=1.2cm] {\footnotesize $K_5 - e$: a szaggatott él hiányzik, így a két végpont azonos színt ($1$) kaphat; $\chi = 4$};
\end{tikzpicture}
\end{center}

### Egy példa

Vizsgáljuk meg az alábbi példagráfot:

\begin{center}
\begin{tikzpicture}[scale=1.05,
  c1/.style={circle, draw=black, fill=white, thick, minimum size=18pt, inner sep=0pt},
  c2/.style={circle, draw=black, fill=black!15, thick, minimum size=18pt, inner sep=0pt},
  c3/.style={circle, draw=black, fill=black!35, thick, minimum size=18pt, inner sep=0pt},
  edge/.style={draw=black!70, thick}
]
  \node[c1] (tl) at (-1.3, 1.2) {$1$};
  \node[c3] (top) at (0.3, 1.8) {$3$};
  \node[c1] (tr) at (1.9, 1.1) {$1$};
  \node[c2] (mid) at (0.3, 0.4) {$2$};
  \node[c2] (fl) at (-2.3, 0.0) {$2$};
  \node[c1] (in) at (-1.0, -0.3) {$1$};
  \node[c1] (bl) at (-1.8, -1.3) {$1$};
  \node[c3] (bot) at (0.3, -1.2) {$3$};

  \draw[edge] (top) -- (tl);
  \draw[edge] (top) -- (mid);
  \draw[edge] (top) -- (tr);
  \draw[edge] (tr) -- (mid);
  \draw[edge] (tl) -- (mid);
  \draw[edge] (tl) -- (fl);
  \draw[edge] (fl) -- (in);
  \draw[edge] (fl) -- (bl);
  \draw[edge] (in) -- (mid);
  \draw[edge] (in) -- (bot);
  \draw[edge] (bl) -- (bot);
  \draw[edge] (mid) -- (bot);

  \node[right=0.4cm of tr] {\begin{tabular}{l}
    $\chi(G) = 3$ \\
    $\omega(G) = 3$ \\
    $\Delta(G) = 5$
  \end{tabular}};
\end{tikzpicture}
\end{center}

Ebben a gráfban a csúcsokat sikerült $3$ színnel ($1, 2, 3$) jól kiszínezni: semelyik két szomszédos csúcs nem azonos színű. Mivel a gráf tartalmaz háromszöget (például a felső $3$, a középső $2$ és a jobb oldali $1$ csúcs egy $K_3$-at alkot), $2$ szín nem lehet elegendő, tehát a kromatikus szám pontosan $\chi(G) = 3$. A maximális fokszám $\Delta(G) = 5$ (a középső $2$-es színű csúcsnak $5$ szomszédja van), a legnagyobb teljes részgráf mérete pedig $\omega(G) = 3$.

---

## 34. A kromatikus szám becslései: klikkszám és mohó színezés

Egy tetszőleges gráf kromatikus számának közvetlen kiszámítása nehéz feladat. Szükségünk van olyan könnyen számolható gráftulajdonságokra, amelyek alsó és felső korlátot adnak $\chi(G)$-re.

### Alsó becslés: a klikkszám

> **Definíció (klikk, klikkszám).** Egy $G$ gráf egy részgráfját **klikknek** nevezzük, ha teljes gráf. A $G$-beli legnagyobb klikk csúcsainak számát a gráf **klikkszámának** nevezzük, és $\omega(G)$-vel jelöljük (a görög ómega betűvel: $\omega$).

> **Állítás (alsó korlát a klikkszámmal).** Minden $G$ egyszerű gráfra
> $$\omega(G) \le \chi(G).$$

**Bizonyítás.** Legyen $K$ egy maximális méretű klikk $G$-ben, azaz $|V(K)| = \omega(G)$. Mivel $K$-ban bármely két csúcs össze van kötve éllel, egyetlen jó színezésben sem kaphat semelyik két csúcsa azonos színt. Így már önmagában a $K$ klikk csúcsainak kiszínezéséhez is legalább $\omega(G)$ különböző színre van szükség. Mivel a teljes gráf jó színezése a részgráfján is jó színezést ad, a teljes $G$ gráfhoz is legalább ennyi szín kell: $\chi(G) \ge \omega(G)$. $\blacksquare$

### Felső becslés: mohó színezés és a maximális fokszám

A felső becsléshez a gráf csúcsainak fokszámait hívjuk segítségül.

> **Definíció (maximális fokszám).** A $G$ gráf csúcsainak legnagyobb fokszámát $\Delta(G)$-vel (vagy röviden $\Delta$-val) jelöljük:
> $$\Delta(G) = \max_{v \in V} \deg(v).$$

> **Tétel (felső korlát a maximális fokszámmal).** Minden $G$ egyszerű gráfra
> $$\chi(G) \le \Delta(G) + 1.$$

**Bizonyítás („nem lehet elrontani” — mohó színezés).**
Vegyünk $\Delta(G) + 1$ darab színt: $\{1, 2, \dots, \Delta(G) + 1\}$.
Rendezzük a gráf csúcsait tetszőleges sorrendbe:
$$v_1, v_2, \dots, v_n.$$
Haladjunk sorra a csúcsokon ebben a rögzített sorrendben, és színezzük őket a **mohó elv** szerint: amikor a $v_i$ csúcsra kerül a sor, adjuk neki a rendelkezésre álló színek közül a **legkisebb sorszámút**, amelyet a már korábban kiszínezett szomszédai még nem használnak.

Elakadhat-e ez az eljárás?
A $v_i$ csúcsnak az egész gráfban összesen legfeljebb $\deg(v_i) \le \Delta(G)$ szomszédja van. Ennélfogva a korábban már kiszínezett szomszédainak száma sem lehet több $\Delta(G)$-nél. Ezek a szomszédok legfeljebb $\Delta(G)$ különböző színt használhattak el.
Mivel azonban összesen $\Delta(G) + 1$ szín áll rendelkezésünkre, a szomszédok által „lefoglalt” legfeljebb $\Delta(G)$ szín elkerülése után **legalább egy szín mindig szabadon marad** a $v_i$ csúcs számára!

A mohó algoritmus tehát minden lépésben talál megengedett színt, soha nem akad el, és legfeljebb $\Delta(G) + 1$ szín felhasználásával egy jó csúcsszínezést állít elő. Ebből következik, hogy $\chi(G) \le \Delta(G) + 1$. $\blacksquare$

\begin{center}
\begin{tikzpicture}[scale=0.95,
  v/.style={circle, draw=black, fill=black!15, thick, minimum size=18pt, inner sep=0pt},
  cur/.style={circle, draw=black, fill=white, very thick, minimum size=20pt, inner sep=0pt},
  edge/.style={draw=black!70, thick}
]
  \draw[rounded corners=15pt, fill=black!5, draw=black!30, dashed] (-3.4, -1.5) rectangle (3.4, 1.8);
  \node[cur] (v) at (0, 0.1) {$v$};
  \node[v] (u1) at (-2.2, 0.9) {$c_1$};
  \node[v] (u2) at (-1.0, 1.2) {$c_2$};
  \node[v] (u3) at (0.6, 1.2) {$c_3$};
  \node[v] (u4) at (2.2, 0.8) {$c_k$};
  \node[v] (w1) at (-2.0, -0.8) {};
  \node[v] (w2) at (1.8, -0.8) {};

  \draw[edge] (v) -- (u1);
  \draw[edge] (v) -- (u2);
  \draw[edge] (v) -- (u3);
  \draw[edge] (v) -- (u4);
  \path (u3) -- (u4) node[midway] {$\dots$};

  \node[below=0.15cm of v] {\footnotesize $k \le \deg(v) \le \Delta(G)$};
  \node[above=0.05cm of u2] {\footnotesize már kiszínezett szomszédok ($\le \Delta(G)$ tiltott szín)};
\end{tikzpicture}
\end{center}

### Mikor éri el a felső korlátot a kromatikus szám?

Feltehetjük a kérdést: léteznek-e olyan gráfok, amelyekre a fenti felső korlát pontos, azaz $\chi(G) = \Delta(G) + 1$?
Az előadáson két ilyen családot azonosítottunk:

1. **Teljes gráfok ($K_n$):**
   Minden csúcs foka $n - 1$, így $\Delta(K_n) = n - 1$. Ugyanakkor minden csúcsnak külön szín kell: $\chi(K_n) = n = \Delta(K_n) + 1$.
   Például $K_3$-ra $\Delta = 2$ és $\chi = 3$.

2. **Páratlan körök ($C_{2k+1}$):**
   A kör minden csúcsának foka $2$, így $\Delta(C_{2k+1}) = 2$. Két színnel viszont nem színezhető ki: ha a kör mentén felváltva adnánk a két színt, a páratlanadik lépésben a kezdő és az utolsó csúcs azonos színű lenne, ami éllel van összekötve. Ezért szükség van egy harmadik színre is:
   $$\chi(C_{2k+1}) = 3 = \Delta(C_{2k+1}) + 1.$$
   Ezzel szemben egy páros kör ($C_{2k}$) mindig kiszínezhető $2$ színnel: $\Delta(C_{2k}) = 2$ és $\chi(C_{2k}) = 2$.

\begin{center}
\begin{tikzpicture}[scale=0.85,
  v/.style={circle, draw=black, fill=black!10, thick, minimum size=16pt, inner sep=0pt},
  edge/.style={draw=black!70, thick}
]
  % K_3
  \begin{scope}[xshift=-4.5cm]
    \node[v] (k1) at (90:1.1) {$1$};
    \node[v] (k2) at (210:1.1) {$2$};
    \node[v] (k3) at (330:1.1) {$3$};
    \draw[edge] (k1) -- (k2) -- (k3) -- (k1);
    \node[below=1.2cm of k1] {\begin{tabular}{c} $K_3$ \\ $\Delta=2, \, \chi=3$ \end{tabular}};
  \end{scope}

  % C_5
  \begin{scope}[xshift=0cm]
    \node[v] (c1) at (90:1.1) {$1$};
    \node[v] (c2) at (162:1.1) {$2$};
    \node[v] (c3) at (234:1.1) {$1$};
    \node[v] (c4) at (306:1.1) {$2$};
    \node[v] (c5) at (18:1.1) {$3$};
    \draw[edge] (c1) -- (c2) -- (c3) -- (c4) -- (c5) -- (c1);
    \node[below=1.2cm of c1] {\begin{tabular}{c} $C_5$ \\ $\Delta=2, \, \chi=3$ \end{tabular}};
  \end{scope}

  % C_4
  \begin{scope}[xshift=4.5cm]
    \node[v] (q1) at (45:1.1) {$1$};
    \node[v] (q2) at (135:1.1) {$2$};
    \node[v] (q3) at (225:1.1) {$1$};
    \node[v] (q4) at (315:1.1) {$2$};
    \draw[edge] (q1) -- (q2) -- (q3) -- (q4) -- (q1);
    \node[below=1.2cm of q1] {\begin{tabular}{c} $C_4$ \\ $\Delta=2, \, \chi=2$ \end{tabular}};
  \end{scope}
\end{tikzpicture}
\end{center}

Meglepő és mély tény, hogy ezen a két triviális eseten kívül **nincs más kivétel**! Ezt mondja ki a gráfelmélet egyik klasszikus eredménye:

> **Tétel (Brooks-tétel, 1941).** Ha $G$ összefüggő egyszerű gráf, és $G$ nem teljes gráf ($G \ne K_n$), valamint nem páratlan kör ($G \ne C_{2k+1}$), akkor:
> $$\chi(G) \le \Delta(G).$$

::: kiegeszites
**Kiegészítés — a Brooks-tétel bizonyítása** (Lovász László 1975-ös gondolatmenete). A mohó színezésnél a csúcsok sorrendje tetszőleges volt, és a legrosszabb esetben $\Delta + 1$ szín kellett. A bizonyítás kulcsa, hogy a sorrendet **a gráf szerkezetéhez igazítva** választjuk meg úgy, hogy egyik csúcs se lássa „maga előtt” mind a $\Delta$ szomszédját kiszínezve. Legyen $\Delta = \Delta(G)$.

*A kis esetek.* Ha $\Delta \le 2$, akkor az összefüggő $G$ egy út vagy egy kör (a $2$-reguláris gráfokról a 29. szakaszban mondottak szerint). $\Delta = 0$ esetén $G = K_1$, $\Delta = 1$ esetén $G = K_2$ — mindkettő teljes gráf, ezeket kizártuk. $\Delta = 2$ esetén $G$ egy legalább $3$ csúcsú út vagy páros kör (a páratlan kört kizártuk), ezek $2 = \Delta$ színnel színezhetők. A továbbiakban $\Delta \ge 3$.

**Segédállítás (fa-sorrend).** *Legyen $H$ összefüggő gráf, amelyben minden fok legfeljebb $\Delta$, és $r$ egy csúcsa. Rendezzük $H$ csúcsait egy $r$ gyökerű feszítőfa szerint a gyökértől mért (fabeli) távolság csökkenő sorrendjében; $r$ kerüljön utoljára. Ekkor a mohó színezés minden $r$-től különböző csúcsot a $\{1, \dots, \Delta\}$ színek valamelyikével színez.*

*Bizonyítás.* Egy $w \ne r$ csúcs szülője a fában közelebb van a gyökérhez, tehát a sorrendben $w$ után jön. Így $w$-nek legfeljebb $\deg(w) - 1 \le \Delta - 1$ szomszédja van kiszínezve, amikor rá kerül a sor, és a $\Delta$ szín közül legalább egy szabad. $\blacksquare$

**1. eset: $G$ nem $\Delta$-reguláris.** Van olyan $r$ csúcs, amelyre $\deg(r) \le \Delta - 1$. A segédállítás szerinti sorrendben a mohó színezés minden $r$-től különböző csúcsnak talál színt $\{1, \dots, \Delta\}$-ből, és $r$-nek is, hiszen neki összesen is legfeljebb $\Delta - 1$ szomszédja van. Tehát $\chi(G) \le \Delta$.

**2. eset: $G$ $\Delta$-reguláris, és van elvágó csúcsa** (olyan $x$ csúcs, amelynek törlésével a gráf szétesik). Legyen $C$ a $G - x$ egyik komponense, $G_1$ a $C \cup \{x\}$ által feszített részgráf, $G_2$ pedig a $G - C$ gráf. Mindkettő összefüggő, a fokok legfeljebb $\Delta$-k, és $x$ foka mindkettőben kisebb $\Delta$-nál, hiszen $x$-nek mindkét oldalon van szomszédja. Az 1. eset gondolatmenete (amely csak ennyit használt) szerint $G_1$ és $G_2$ is színezhető $\Delta$ színnel. A $G_2$ színezésében a színeket átnevezve elérhetjük, hogy $x$ ugyanazt a színt kapja, mint $G_1$-ben; a két színezés együtt $G$ jó színezése, mert $G_1 - x$ és $G_2 - x$ között nem fut él.

**3. eset: $G$ $\Delta$-reguláris ($\Delta \ge 3$), és nincs elvágó csúcsa (2-szeresen összefüggő).** Megmutatjuk, hogy van olyan $v$ csúcs és annak két **nem szomszédos** $x, y$ szomszédja, hogy $G - \{x, y\}$ összefüggő. Ebből a tétel így következik: a sorrend legyen $v_1 = x$, $v_2 = y$, utánuk a $G - \{x, y\}$ csúcsai egy $v$ gyökerű feszítőfa szerint, a segédállításban leírt módon, $v_n = v$-vel a végén. Az $x$ és az $y$ is az $1$-es színt kapja (nem szomszédosak). A közbülső csúcsoknak a segédállítás szerint jut szín. Végül $v$-nek $\Delta$ szomszédja van, de közülük $x$ és $y$ azonos színű, így a szomszédai legfeljebb $\Delta - 1$ színt foglalnak, és $v$ is kap színt a $\{1, \dots, \Delta\}$ halmazból.

*A megfelelő $v, x, y$ létezése.* Két esetet különböztetünk meg.

- *Ha $G$ 3-szorosan összefüggő* (két csúcs törlésével sem esik szét): mivel $G$ nem teljes gráf, van két nem szomszédos csúcsa; tekintsük közöttük egy legrövidebb utat, és legyen $x, v, y$ az út első három csúcsa. Az $x$ és az $y$ nem szomszédos (különben rövidebb út volna), és $G - \{x, y\}$ összefüggő.
- *Ha $G$ nem 3-szorosan összefüggő*, van két csúcs, $v$ és $w$, amelyek együttes törlésével a gráf szétesik; ekkor $G - v$ összefüggő, de $w$ elvágó csúcsa. Használjuk a **blokkok** fogalmát: egy összefüggő gráf blokkjai a maximális elvágó csúcs nélküli részgráfjai; két blokk legfeljebb egy (elvágó) csúcsban metszi egymást, és a blokkok az elvágó csúcsokon keresztül fa-szerkezetben kapcsolódnak. Mivel $G - v$-nek van elvágó csúcsa, legalább két blokkja van, így legalább két **levélblokkja** is ($B_1$ és $B_2$), amelyek csak egy-egy elvágó csúcsot tartalmaznak, $c_1$-et, illetve $c_2$-t.
  - A $v$-nek van szomszédja $B_1 - c_1$-ben: különben $c_1$ a $G$-ben is elválasztaná $B_1 - c_1$-et a többi csúcstól, de $G$-nek nincs elvágó csúcsa. Legyen $x$ egy ilyen szomszéd, és ugyanígy $y$ egy szomszédja $B_2 - c_2$-ben.
  - Az $x$ és az $y$ nem szomszédos: egy él egyetlen blokkban fekszik, $x$ viszont csak $B_1$-hez, $y$ csak $B_2$-höz tartozik.
  - $G - \{x, y\}$ összefüggő. A $B_1$ blokk legalább $3$ csúcsú: ha csak a $c_1x$ élből állna, $x$-nek $c_1$-en és esetleg $v$-n kívül nem volna szomszédja, de $\deg x = \Delta \ge 3$. Egy legalább $3$ csúcsú, elvágó csúcs nélküli gráfból egy csúcsot törölve összefüggő gráf marad, így $B_1 - x$ összefüggő és tartalmazza $c_1$-et; ugyanígy $B_2 - y$. A többi blokk érintetlen, ezért a blokkok fa-szerkezete miatt $G - \{v, x, y\}$ összefüggő. Végül $v$-nek $\Delta \ge 3$ szomszédja van, köztük $x$-en és $y$-on kívül is legalább egy, így $v$ is kapcsolódik a többihez.

Ezzel mindhárom esetben $\chi(G) \le \Delta$. $\blacksquare$
:::

### Színosztályok és független halmazok

Hogyan „kell” elképzelni egy $\chi(G)$ kromatikus számú gráfot?
Egy jó színezésben az azonos színt kapott csúcsok között nem futhat él.

> **Definíció (független csúcshalmaz).** A $G = (V, E)$ gráf egy $U \subseteq V$ részhalmazát **független csúcshalmaznak** nevezzük, ha semelyik két eleme nincs összekötve éllel, azaz a feszített részgráfban nincsenek élek: $E(G[U]) = \emptyset$.

Ha $c: V \to \{1, 2, \dots, k\}$ egy jó színezés, akkor vezessük be az egyes színekhez tartozó csúcshalmazokat:
$$V_i = \{v \in V : c(v) = i\} \qquad (i = 1, 2, \dots, k).$$
Ekkor:

1. $V = V_1 \cup V_2 \cup \dots \cup V_k$, és az osztályok páronként diszjunktak ($V_i \cap V_j = \emptyset$).
2. Minden $V_i$ osztály **független halmaz**: az osztályon belül nem megy él!
3. **Élek kizárólag a különböző színosztályok között futhatnak.**

\begin{center}
\begin{tikzpicture}[scale=0.9,
  dot/.style={circle, draw=black, fill=black, inner sep=1.2pt},
  edge/.style={draw=black!70, thick}
]
  \draw[thick, fill=black!5] (-2.2, 1.2) ellipse (1.2cm and 0.8cm);
  \node at (-2.2, 2.2) {\textbf{1. színosztály} ($V_1$)};
  \node[dot] (a1) at (-2.6, 1.4) {};
  \node[dot] (a2) at (-1.8, 1.5) {};
  \node[dot] (a3) at (-2.2, 0.9) {};

  \draw[thick, fill=black!5] (2.2, 1.2) ellipse (1.2cm and 0.8cm);
  \node at (2.2, 2.2) {\textbf{2. színosztály} ($V_2$)};
  \node[dot] (b1) at (1.8, 1.4) {};
  \node[dot] (b2) at (2.6, 1.5) {};
  \node[dot] (b3) at (2.2, 0.9) {};

  \draw[thick, fill=black!5] (0, -1.4) ellipse (1.2cm and 0.8cm);
  \node at (0, -2.4) {\textbf{3. színosztály} ($V_3$)};
  \node[dot] (c1) at (-0.4, -1.2) {};
  \node[dot] (c2) at (0.4, -1.2) {};
  \node[dot] (c3) at (0, -1.6) {};

  \draw[edge] (a2) -- (b1);
  \draw[edge] (a3) -- (b1);
  \draw[edge] (a3) -- (c1);
  \draw[edge] (b3) -- (c2);
  \draw[edge] (b3) -- (c3);

  \node at (0, 0.2) {\footnotesize élek csak az osztályok \emph{között} futnak};
\end{tikzpicture}
\end{center}

A gráf $k$ színnel való jó színezése tehát **teljesen ekvivalens azzal**, hogy a csúcshalmazát $k$ darab diszjunkt független halmaz uniójára bontjuk szét.

---

## 35. Páros gráfok és a 2-színezhetőség

A színezések legegyszerűbb nemtriviális esete a $2$ színnel való színezhetőség: mikor elég $2$ szín egy gráf kiszínezéséhez?

- Ha $\chi(G) = 1$, a gráfnak egyáltalán nincs éle.
- Ha $\chi(G) = 2$, a csúcsok két független halmazba ($A$ és $B$) oszthatók: $V = A \cup B$, és minden él egy $A$-beli és egy $B$-beli csúcs között fut.

Az ilyen gráfokat már korábban elneveztük:

> **Definíció (páros gráf).** Egy $G = (V, E)$ gráfot **páros gráfnak** (vagy kétosztályú gráfnak, idegen szóval *bipartite graph*) nevezünk, ha a csúcshalmaza felosztható két diszjunkt részre: $V = A \cup B$ ($A \cap B = \emptyset$), úgy, hogy minden $e \in E$ él egyik végpontja $A$-ban, másik végpontja $B$-ben van.

A fenti ekvivalencia alapján:
> Egy éllel rendelkező gráf pontosan akkor páros, ha $\chi(G) = 2$ (általában: $\chi(G) \le 2$).

Milyen belső szerkezeti tulajdonság dönti el, hogy egy gráf páros-e? Ezt mondja ki a páros gráfok alaptétele:

> **Tétel (a páros gráfok karakterizációja).** Egy $G$ gráf pontosan akkor páros (azaz $\chi(G) \le 2$), ha **minden köre páros hosszúságú** (vagyis $G$-ben nincs páratlan kör).

### A tétel bizonyítása

A tétel kétirányú állítás, mindkét irányt külön kell belátnunk.

**1. Irány ($\implies$): ha a gráf páros, minden köre páros hosszúságú.**
Tegyük fel, hogy $G$ páros, azaz csúcsai $2$ színnel (mondjuk $A$ és $B$ színekkel) jól színezhetők.
Tekintsünk egy tetszőleges $C = (v_1, v_2, \dots, v_k, v_1)$ kört a gráfban.
A kör élei mentén lépkedve a csúcsok színe minden lépésben váltakozik:
$$v_1 \in A \implies v_2 \in B \implies v_3 \in A \implies v_4 \in B \implies \dots$$
Ahhoz, hogy a zárt kör végén visszatérjünk a kiindulási $v_1 \in A$ csúcsba, szükségképpen **páros sok lépést** kellett megtennünk. Ha ugyanis $k$ páratlan lenne, akkor $v_k \in A$ lenne, ám $v_k$ össze van kötve $v_1$-gyel, ami azt jelentené, hogy két szomszédos csúcs azonos osztályba ($A$-ba) esik, ellentmondásban azzal, hogy $G$ páros.
A kör hossza tehát szükségképpen páros.

**2. Irány ($\impliedby$): ha a gráfban nincs páratlan kör, akkor páros.**
A bizonyítást az előadáson ismertetett konstruktív módszerrel végezzük.
Mivel a különböző összefüggőségi komponensek között nem fut él, elég a tételt **összefüggő gráfokra** bizonyítani (nem összefüggő esetben komponensenként végezzük el az eljárást).

Tegyük fel tehát, hogy $G$ összefüggő, és nem tartalmaz páratlan kört.
Válasszunk ki egy tetszőleges $v_0 \in V$ csúcsot kezdőpontnak (gyökérnek).
Minden $u \in V$ csúcs esetén jelölje $d(v_0, u)$ a $v_0$ és $u$ közötti **legrövidebb út hosszát** (távolságát). Mivel a gráf összefüggő, ez a távolság minden csúcsra egy jól definiált egész szám.

Osszuk a csúcsokat két osztályba a $v_0$-tól mért távolságuk **paritása** szerint:
$$A = \{u \in V : d(v_0, u) \text{ páros}\}, \qquad B = \{u \in V : d(v_0, u) \text{ páratlan}\}.$$
Maga a gyökér $d(v_0, v_0) = 0$ miatt $A$-ba kerül.
Nyilvánvalóan $V = A \cup B$ és $A \cap B = \emptyset$, hiszen minden távolság vagy páros, vagy páratlan, de nem lehet egyszerre mindkettő (*„egyik sem kerül bele mindkettő kategóriába”*).

Azt kell belátnunk, hogy **sem $A$-n belül, sem $B$-n belül nem fut él**.
Tegyük fel indirekt, hogy mégis van egy ilyen él!
Tegyük fel, hogy két azonos osztálybeli csúcs van összekötve: létezik egy $e = uv$ él, mondjuk ahol $u, v \in B$ páratlan távolságú csúcsok (az alábbi ábrának megfelelően; az $u, v \in A$ eset teljesen azonos módon tárgyalható).
Mivel $u, v \in B$, mindkét távolság páratlan: $d(v_0, u) = 2k + 1$ és $d(v_0, v) = 2m + 1$. Mivel $u$ és $v$ szomszédosak, távolságaik legfeljebb $1$-gyel térhetnek el egymástól, az azonos paritás miatt pedig szükségképpen $d(v_0, u) = d(v_0, v)$.

Vegyünk egy $P_u$ legrövidebb utat $v_0$-ból $u$-ba, és egy $P_v$ legrövidebb utat $v_0$-ból $v$-be.
Jelölje $w$ a két út **utolsó közös csúcsát** (amely után a két út a végpontokig már nem találkozik; legrosszabb esetben $w = v_0$). Vegyük észre, hogy $w \neq u$ és $w \neq v$, hiszen $d(v_0, u) = d(v_0, v)$ miatt egyik végpont sem előzheti meg a másikat egy legrövidebb úton.
Mivel $P_u$ és $P_v$ legrövidebb utak, a $v_0$-tól $w$-ig tartó részútjuk is legrövidebb út, így $d(v_0, w)$ egyértelmű.

A $w$-ből $u$-ba vezető $P_u$-beli részút, valamint a $w$-ből $v$-be vezető $P_v$-beli részút a $w$ csúcson kívül már diszjunktak (nincs további közös pontjuk), hosszaik pedig:
$$\ell(w \to u) = d(v_0, u) - d(v_0, w), \qquad \ell(w \to v) = d(v_0, v) - d(v_0, w).$$

Fűzzük össze a $w \to u$ utat, az $uv$ élt, és a $v \to w$ utat visszafelé: ez egy egyszerű kört alkot $G$-ben!
Számoljuk ki ennek a körnek a hosszát:
$$\ell(\text{kör}) = \big(d(v_0, u) - d(v_0, w)\big) + \big(d(v_0, v) - d(v_0, w)\big) + 1.$$
Mivel $d(v_0, u)$ és $d(v_0, v)$ paritása megegyezik (mindkettő páratlan, illetve az $A$-beli esetben mindkettő páros), a belőlük levont azonos $d(v_0, w)$ után a két különbség paritása is megegyezik!
Két azonos paritású egész szám összege viszont **mindig páros**:
$$\big(d(v_0, u) - d(v_0, w)\big) + \big(d(v_0, v) - d(v_0, w)\big) \equiv 0 \pmod 2.$$
Ehhez hozzáadva az $uv$ élnek megfelelő $+1$-et, a kör teljes hossza:
$$\ell(\text{kör}) \equiv 0 + 1 = 1 \pmod 2,$$
vagyis a kör **PÁRATLAN HOSSZÚSÁGÚ**!

Ez azonban éles ellentmondás, hiszen feltettük, hogy a gráfban nincs egyetlen páratlan kör sem!
Az indirekt feltevésünk tehát hamis volt: nem létezhet olyan él, amelynek mindkét végpontja $B$-ben van (és hasonlóan nem létezhet olyan él sem, amelynek mindkét végpontja $A$-ban van).
Minden él tehát szükségképpen egy $A$-beli és egy $B$-beli csúcsot köt össze, így $G$ valóban páros gráf, és $\chi(G) \le 2$. $\blacksquare$

\begin{center}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=white, thick, minimum size=16pt, inner sep=0pt},
  sq/.style={rectangle, draw=black, fill=black!15, thick, minimum size=15pt, inner sep=0pt},
  tree/.style={draw=black!80, thick},
  bad/.style={draw=black, very thick, dashed}
]
  % Layer 0
  \node[v] (v0) at (0, 2.5) {$v_0$};
  \node[left=0.5cm of v0] {\footnotesize $d=0$ ($A$, páros)};

  % Layer 1
  \node[sq] (u1) at (-2, 1.2) {$u_1$};
  \node[sq] (u2) at (0, 1.2) {$u_2$};
  \node[sq] (u3) at (2, 1.2) {$u_3$};
  \node[left=0.5cm of u1] {\footnotesize $d=1$ ($B$, páratlan)};

  % Layer 2
  \node[v] (w1) at (-2.5, -0.2) {$w$};
  \node[v] (x) at (0, -0.2) {};
  \node[v] (y) at (2, -0.2) {};
  \node[left=0.5cm of w1] {\footnotesize $d=2$ ($A$, páros)};

  % Layer 3
  \node[sq] (u) at (-3.2, -1.5) {$u$};
  \node[sq] (v) at (-1.8, -1.5) {$v$};
  \node[sq] (z) at (1, -1.5) {};
  \node[left=0.5cm of u] {\footnotesize $d=3$ ($B$, páratlan)};

  \draw[tree] (v0) -- (u1);
  \draw[tree] (v0) -- (u2);
  \draw[tree] (v0) -- (u3);
  \draw[tree] (u1) -- (w1);
  \draw[tree] (u2) -- (x);
  \draw[tree] (u3) -- (y);
  \draw[tree] (w1) -- (u);
  \draw[tree] (w1) -- (v);
  \draw[tree] (x) -- (z);

  % Dashed edge within layer 3
  \draw[bad] (u) -- (v);
  \node[below=0.2cm of v] {\footnotesize $uv$ él azonos osztályban: páratlan kör keletkezik! ($w \to u \to v \to w$)};
\end{tikzpicture}
\end{center}

> **Következmény (a fák páros gráfok).** Minden fa páros gráf.
> Mivel a fa körmentes gráf, egyetlen kört sem tartalmaz — így speciálisan $0$ darab páratlan köre van. A tétel értelmében tehát minden fa $2$-színezhető.

---

## 36. Számítási bonyolultság és élszínezés

### Emlékeztető és a becslések pontossága

A korábbiakban megállapítottuk a kromatikus szám alapvető korlátait:
$$\omega(G) \le \chi(G) \le \Delta(G) + 1.$$
A bal oldalon a klikkszám áll, a jobb oldalon a mohó színezéssel kapott felső korlát.

Ahogyan Sziklai Péter az előadáson hangsúlyozta: *„Ez a becslés marha rossz: ez a három szám tud nagyon messze lenni egymástól!”*
Vajon garantálja-e egy kis klikkszám, hogy a kromatikus szám is kicsi? A válasz meglepő módon: **nem**. Jan Mycielski 1955-ben konstruált olyan háromszögmentes gráfokat (amelyekben $\omega(G) = 2$), amelyek kromatikus száma tetszőlegesen nagy lehet! A klikkszám és a kromatikus szám között tehát szakadék tátonghat.

::: kiegeszites
**Kiegészítés — Mycielski konstrukciója.** Legyen $G$ egy háromszögmentes gráf a $v_1, \dots, v_n$ csúcsokon, $\chi(G) = k$. Készítsük el az $M(G)$ gráfot: a $v_i$ csúcsok mellé vegyünk fel minden $v_i$-hez egy $u_i$ „árnyékcsúcsot”, és még egy $w$ csúcsot. Az élek:

- $G$ összes éle;
- ha $v_iv_j \in E(G)$, akkor $u_iv_j$ és $u_jv_i$ is él (az árnyék ugyanazokkal a $v$-kkel szomszédos, mint az eredeti);
- $w$ össze van kötve az összes $u_i$-vel.

*$M(G)$ háromszögmentes.* Az $u_i$ csúcsok egymással nem szomszédosak, és $w$-nek csak $u$-szomszédai vannak, így $w$ nincs háromszögben. Egy háromszög tehát legfeljebb egy $u$-csúcsot tartalmaz; ha egyet sem, $G$-beli háromszög volna. Ha pontosan egyet, az $u_iv_jv_l$ alakú, ahol $v_jv_l \in E(G)$ és $v_iv_j, v_iv_l \in E(G)$ — de akkor $v_iv_jv_l$ háromszög volna $G$-ben. Ellentmondás.

*$\chi(M(G)) = k + 1$.* Felső becslés: $G$ egy jó $k$-színezését terjesszük ki úgy, hogy $u_i$ megkapja $v_i$ színét (ez jó, mert $u_i$ szomszédai $v_i$ szomszédai közül kerülnek ki), $w$ pedig egy új, $(k+1)$-edik színt. Alsó becslés: tegyük fel, hogy $M(G)$-nek van jó színezése $k$ színnel, és $w$ színe a $k$-adik szín. Ekkor egyik $u_i$ sem $k$-adik színű. Színezzük át $G$ minden olyan $v_i$ csúcsát, amely $k$-adik színű, az $u_i$ színére. Ez $G$ jó színezése $k - 1$ színnel: egy átszínezett $v_i$ és egy szomszédja, $v_j$ nem lehet azonos színű, mert ha $v_j$-t nem színeztük át, akkor $v_j$ az $u_i$-nek is szomszédja; ha pedig $v_j$-t is átszíneztük, akkor $v_i$ és $v_j$ eredetileg is azonos ($k$-adik) színű szomszédok lettek volna. Ez ellentmond $\chi(G) = k$-nak.

A $K_2$-ből indulva $M(K_2)$ az ötszög ($C_5$, $\chi = 3$), $M(C_5)$ a $11$ csúcsú Grötzsch-gráf ($\chi = 4$), és így tovább: minden $k$-ra van $\chi = k$ kromatikus számú háromszögmentes gráf, miközben $\omega = 2$.
:::

### Számítási bonyolultság: mi könnyű és mi nehéz?

Gyakorlati szempontból döntő kérdés, hogy algoritmikusan mennyire nehéz eldönteni egy gráf színezhetőségét:

- **$\chi(G) \le 2$ eldöntése: nagyon könnyű.** A 35. szakaszban látott legrövidebb utak paritásán alapuló szélességi keresés (BFS) a gráf éleinek és csúcsainak számával arányos, lineáris időben ($O(|V| + |E|)$ lépésben) vagy kiszínezi a gráfot $2$ színnel, vagy talál egy páratlan kört.
- **$\chi(G) \le 3$ eldöntése: NAGYON NEHÉZ (NP-teljes).** Richard Karp híres 1972-es eredménye szerint már annak eldöntése is NP-teljes, hogy egy tetszőleges gráf kiszínezhető-e $3$ színnel! Nincs rá ismert hatékony (polinomiális idejű) algoritmus.
- **$\chi(G)$ pontos meghatározása: NP-nehéz.** Általános gráfban a kromatikus szám kiszámítása a legnehezebb algoritmikus problémák közé tartozik.

*(Emlékeztető: „NP-teljes: egyet megoldanánk, az összeset megoldanánk.”)*

---

### 2. témakör: Élszínezés

A csúcsok színezése után felmerül a kérdés: mi történik, ha a gráf **éleit** szeretnénk kiszínezni?

> **Definíció (jó élszínezés).** Egy $G = (V, E)$ gráf egy **jó élszínezése** egy olyan
> $$c: E \to \{1, 2, \dots, k\}$$
> leképezés, amelyre bármely két szomszédos (közös csúcsban találkozó) él különböző színt kap:
> $$e_1 \cap e_2 \ne \emptyset \implies c(e_1) \ne c(e_2).$$

> **Definíció (élkromatikus szám).** A legkisebb olyan $k$ pozitív egész számot, amelyre létezik jó $k$-élszínezés, a $G$ gráf **élkromatikus számának** (vagy kromatikus indexének) nevezzük, és $\chi'(G)$-vel vagy $\chi_e(G)$-vel jelöljük.

### Mekkora lehet az élkromatikus szám?

Egy tetszőleges $v \in V$ csúcsból induló élek mindegyike találkozik $v$-ben, tehát páronként szomszédosak. Ennélfogva semelyik kettő nem kaphat azonos színt: mindegyiknek különböző színűnek kell lennie!
Ez azonnal ad egy triviális alsó korlátot:

> **Állítás (alsó korlát az élkromatikus számra).** Minden $G$ gráfra
> $$\chi'(G) \ge \Delta(G).$$

**Bizonyítás.** Válasszunk ki egy maximális fokszámú csúcsot: $\deg(v) = \Delta(G)$. A $v$-be befutó $\Delta(G)$ darab él mindegyikének páronként különböző színt kell kapnia, így a jó élszínezéshez legalább $\Delta(G)$ szín szükséges. $\blacksquare$

### Példák

1. **Egy 8 csúcsú példagráf:**
   Az alábbi gráfban (amelyet alább bemutatunk) a maximális fokszám $\Delta = 4$. Sikerült az éleket $4$ színnel jól kiszínezni, így $\chi'(G) = 4 = \Delta(G)$.

2. **Az 5-csúcsú kör ($C_5$):**
   A kör minden csúcsának foka $2$, így $\Delta(C_5) = 2$.
   Elég-e $2$ szín az élek színezésére?
   Egy jó élszínezésben az azonos színű élek **független élhalmazt** (párosítást) alkotnak, azaz nem lehet közös csúcsuk. Egy $5$-csúcsú körben a legnagyobb független élhalmaz mérete $\lfloor 5/2 \rfloor = 2$.
   Két színnel tehát legfeljebb $2 \times 2 = 4$ élt tudnánk kiszínezni. Ám a $C_5$ körnek $5$ éle van!
   Ezért $2$ szín semmiképpen sem elegendő: szükség van egy harmadik színre is:
   $$\chi'(C_5) = 3 = \Delta(C_5) + 1.$$

\begin{center}
\begin{tikzpicture}[scale=1.0,
  v/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  edge/.style={draw=black!70, thick}
]
  \begin{scope}[xshift=-3.5cm]
    \node[v] (n1) at (-1.8, 0) {};
    \node[v] (n2) at (-1.2, 1.0) {};
    \node[v] (n3) at (-1.2, -1.0) {};
    \node[v] (n4) at (0, 1.2) {};
    \node[v] (n5) at (0, -0.8) {};
    \node[v] (n6) at (0.8, 0.4) {};
    \node[v] (n7) at (1.1, 1.4) {};
    \node[v] (n8) at (1.8, 0.4) {};

    \draw[edge] (n1) -- node[above left, inner sep=1pt]{\footnotesize $1$} (n2);
    \draw[edge] (n1) -- node[below left, inner sep=1pt]{\footnotesize $2$} (n3);
    \draw[edge] (n2) -- node[above, inner sep=1pt]{\footnotesize $4$} (n4);
    \draw[edge] (n2) -- node[right, inner sep=1pt]{\footnotesize $2$} (n5);
    \draw[edge] (n3) -- node[below, inner sep=1pt]{\footnotesize $1$} (n5);
    \draw[edge] (n4) -- node[above, inner sep=1pt]{\footnotesize $3$} (n6);
    \draw[edge] (n5) -- node[left, inner sep=1pt]{\footnotesize $4$} (n6);
    \draw[edge] (n4) -- node[above, inner sep=1pt]{\footnotesize $2$} (n7);
    \draw[edge] (n6) -- node[right, inner sep=1pt]{\footnotesize $1$} (n7);
    \draw[edge] (n6) -- node[below, inner sep=1pt]{\footnotesize $2$} (n8);

    \node[below=1.2cm of n5] {\begin{tabular}{c} $\Delta(G) = 4$ \\ $\chi'(G) = 4$ \end{tabular}};
  \end{scope}

  \begin{scope}[xshift=3.5cm]
    \node[v] (c1) at (90:1.3) {};
    \node[v] (c2) at (162:1.3) {};
    \node[v] (c3) at (234:1.3) {};
    \node[v] (c4) at (306:1.3) {};
    \node[v] (c5) at (18:1.3) {};

    \draw[edge] (c1) -- node[above left, inner sep=1pt]{\footnotesize $1$} (c2);
    \draw[edge] (c2) -- node[left, inner sep=1pt]{\footnotesize $2$} (c3);
    \draw[edge] (c3) -- node[below, inner sep=1pt]{\footnotesize $1$} (c4);
    \draw[edge] (c4) -- node[right, inner sep=1pt]{\footnotesize $2$} (c5);
    \draw[edge] (c5) -- node[above right, inner sep=1pt]{\footnotesize $3$} (c1);

    \node[below=1.5cm of c1] {\begin{tabular}{c} $C_5$ \\ $\Delta=2, \, \chi'=3$ \end{tabular}};
  \end{scope}
\end{tikzpicture}
\end{center}

### Vizing tétele: az élkromatikus szám csodája

Vajon milyen messze eshet $\chi'(G)$ a maximális fokszámtól?
A válasz a gráfelmélet egyik legszebb és legmeglepőbb tétele:

> **Tétel (Vizing-tétel, 1964).** Minden egyszerű $G$ gráfra:
> $$\Delta(G) \le \chi'(G) \le \Delta(G) + 1.$$

Ez a tétel azt jelenti, hogy egy egyszerű gráf élkromatikus száma **mindössze kétféle értéket vehet fel**: vagy $\Delta(G)$, vagy $\Delta(G) + 1$!
Ennek megfelelően a gráfokat két osztályba soroljuk:

- **1. osztályú gráfok (Class 1):** amelyekre $\chi'(G) = \Delta(G)$. Ide tartoznak például a páros gráfok (Kőnig Dénes tétele szerint minden páros gráf 1. osztályú).
- **2. osztályú gráfok (Class 2):** amelyekre $\chi'(G) = \Delta(G) + 1$. Ide tartoznak a páratlan körök, és általában azok a gráfok, amelyekben túl sok él van ahhoz, hogy $\Delta$ darab független élhalmazba lehessen őket tömöríteni.

::: kiegeszites
**Kiegészítés — Kőnig élszínezési tétele: páros gráfra $\chi'(G) = \Delta(G)$.** Az alsó korlátot már láttuk; azt mutatjuk meg, hogy $\Delta$ szín elég. Az éleket egyenként színezzük, és azt bizonyítjuk, hogy ha egy páros gráfban egy $uv$ él kivételével minden él jól ki van színezve $\Delta$ színnel, akkor (esetleg néhány él átszínezésével) az $uv$ él is kiszínezhető.

Az $u$-nál legfeljebb $\Delta - 1$ színezett él van, így van egy $\alpha$ szín, amely **hiányzik** $u$-nál (nincs ilyen színű él $u$-nál); hasonlóan van egy $v$-nél hiányzó $\beta$ szín. Ha $\alpha$ $v$-nél is hiányzik, az $uv$ élt színezzük $\alpha$-ra. Különben $\alpha \ne \beta$, és $v$-ből indul egy $\alpha$ színű él. Tekintsük azt a $P$ utat, amely $v$-ből indul, és felváltva $\alpha$ és $\beta$ színű éleken halad, ameddig csak lehet. (Mivel minden csúcsnál legfeljebb egy $\alpha$ és egy $\beta$ színű él van, ez az út egyértelmű, és nem tér vissza önmagába: $v$-nél nincs $\beta$-él, amelyen visszaérhetne.)

*Az út nem jut el $u$-hoz.* Legyen $u \in A$, $v \in B$ a két osztály. Az út csúcsai felváltva vannak $B$-ben és $A$-ban: $v \in B$, a második csúcs $A$-ban, a harmadik $B$-ben, … — és minden $A$-beli csúcsba $\alpha$ színű élen érkezünk (a páratlanadik élek $\alpha$ színűek). Az $u$-nál viszont $\alpha$ hiányzik, így $u$-ba nem érkezhetünk.

Cseréljük fel $P$ mentén az $\alpha$ és $\beta$ színeket. A színezés jó marad: $P$ belső csúcsainál a két szín helyet cserél, a végpontjainál pedig az új szín éppen ott hiányzott (különben az út folytatódna). Most $\alpha$ hiányzik $v$-nél, és továbbra is hiányzik $u$-nál (az $u$-t nem érintettük), így az $uv$ élt $\alpha$-ra színezhetjük. $\blacksquare$
:::

> **Megjegyzés a számítási bonyolultságról.** Bár a Vizing-tétel szerint csak két lehetséges érték van, Ian Holyer (1981) bebizonyította, hogy annak eldöntése, hogy egy adott egyszerű gráf 1. vagy 2. osztályú-e, **NP-teljes feladat**! Még 3-reguláris gráfokra is NP-teljes eldönteni, hogy $\chi' = 3$ vagy $\chi' = 4$.

::: kiegeszites
**Kiegészítés — többszörös élek és a Shannon-tétel.**
Ha a gráf nem egyszerű, hanem többszörös éleket is tartalmazhat, a Vizing-tétel ebben a formában már nem érvényes: ha két csúcs között $3$ párhuzamos él fut, akkor $\Delta = 3$, de a három párhuzamos él mind szomszédos, így $3$ szín kell. Ha egy háromszög minden élét megkettőzzük, $\Delta = 4$, de $\chi' = 6$. Általános gráfokra Claude Shannon 1949-es tétele érvényes: $\chi'(G) \le \frac{3}{2}\Delta(G)$.
:::

::: kiegeszites
**Kiegészítés — a Vizing-tétel bizonyítása** (Misra és Gries változata). Legyen $k = \Delta + 1$, és színezzük az éleket egyenként $k$ színnel. Elég megmutatni: ha egy $uv$ él kivételével minden él jól ki van színezve, akkor néhány él átszínezésével $uv$ is kiszínezhető. Mivel minden csúcs foka legfeljebb $\Delta < k$, **minden csúcsnál hiányzik legalább egy szín** (van olyan szín, amilyen színű él nem indul belőle).

*Legyező.* Az $u$ csúcs különböző szomszédainak egy $y_0 = v, y_1, \dots, y_\ell$ sorozatát **legyezőnek** nevezzük, ha minden $1 \le i \le \ell$-re az $uy_i$ él színe hiányzik $y_{i-1}$-nél. Vegyünk egy olyan legyezőt, amely nem hosszabbítható meg.

*Forgatás.* Ha egy $y_0, \dots, y_j$ legyező végén, $y_j$-nél, és $u$-nál is hiányzik ugyanaz a $d$ szín, akkor a legyezőt „elforgathatjuk”: minden $1 \le i \le j$-re az $uy_{i-1}$ él megkapja az $uy_i$ régi színét, az $uy_j$ él pedig a $d$ színt. A színezés jó marad: $y_{i-1}$-nél az új szín a legyező definíciója szerint hiányzott; $u$-nál a színek halmaza csak a $d$-vel bővült, ami ott hiányzott; $y_j$-nél $d$ hiányzott. Így az $uv = uy_0$ él is színt kapott.

*A forgatás előkészítése.* Legyen $c$ egy $u$-nál, $d$ egy $y_\ell$-nél hiányzó szín. Ha $d$ $u$-nál is hiányzik, forgassuk el a teljes legyezőt. Különben van egy $d$ színű $uz$ él. Ha $z$ nem volna a legyezőben, $y_{\ell+1} = z$-vel meghosszabbíthatnánk — tehát $z = y_j$ valamilyen $1 \le j < \ell$-re (ha $j = \ell$ volna, a $d$ nem hiányozna $y_\ell$-nél), és $d$ hiányzik $y_{j-1}$-nél.

A $c$ és $d$ színű élek gráfjában minden csúcs foka legfeljebb $2$, így komponensei utak és körök. Legyen $P$ az $u$-t tartalmazó komponens: mivel $c$ hiányzik $u$-nál, ez egy út, amely $u$-ból az $uy_j$ éllel indul. Cseréljük fel $P$-n a $c$ és $d$ színeket; a színezés jó marad, és ezután $d$ hiányzik $u$-nál. A legyező többi éle ($uy_i$, $i \ne j$) színe nem $c$ (az hiányzik $u$-nál) és nem $d$ (az csak $uy_j$-é volt), és a csere nem változtat azon, hogy egy $c$-től és $d$-től különböző szín hiányzik-e egy csúcsnál. Két eset van.

- *$y_{j-1}$ nincs rajta $P$-n.* Ekkor $y_{j-1}$-nél továbbra is hiányzik $d$, és az $y_0, \dots, y_{j-1}$ legyező érintetlen maradt. Forgassuk el ezt a legyezőt $d$-vel.
- *$y_{j-1}$ rajta van $P$-n.* Mivel $y_{j-1}$-nél hiányzik $d$, ő $P$ végpontja, és $P$ utolsó éle nála $c$ színű volt; a csere után $c$ hiányzik $y_{j-1}$-nél, tehát az $uy_j$ él új színe, $c$, megfelel a legyező feltételének. Az $y_\ell$ nincs $P$-n: ő is egy $c$–$d$ út végpontja (nála $d$ hiányzik), $P$ két végpontja pedig $u$ és $y_{j-1} \ne y_\ell$. Így $d$ továbbra is hiányzik $y_\ell$-nél, és a teljes $y_0, \dots, y_\ell$ legyező forgatható $d$-vel.

Mindkét esetben az $uv$ él színt kapott, és $k = \Delta + 1$ színnél többet nem használtunk. $\blacksquare$

Az egyszerűség lényeges: a legyező csúcsai az $u$ **különböző** szomszédai, és egy $uy_i$ élhez egyértelműen tartozik a végpontja — többszörös éleknél ez nem igaz, és ott a korlát valóban nem érvényes.
:::

---

### 3. témakör: Tartományok színezése

A harmadik természetes kérdés: mi a helyzet a síkbeli térképek, tartományok színezésével?
Ezt a témát egyelőre elhalasztjuk: ahhoz, hogy a tartományok színezéséről beszélni tudjunk, először pontosan meg kell értenünk a **síkbarajzolható gráfok** szerkezetét! A kérdésre a 43–44. szakaszban térünk vissza.

---

## 37. Síkbarajzolható gráfok és tartományaik

A gyakorlatban — például nyomtatott áramköri lapok (PCB) tervezésénél vagy integrált áramkörök huzalozásánál — alapvető követelmény, hogy a vezetőpályák ne keresztezzék egymást a hordozó felületén, mert az rövidzárlatot okozna. Hasonló kérdés merül fel metróhálózatok, vasúti sínek vagy síkbeli térképek ábrázolásakor.

Mikor rajzolható le egy gráf a síkba úgy, hogy az élei ne keresztezzék egymást?

> **Definíció (síkbarajzolható gráf, síkgráf).**
> - Egy $G = (V, E)$ gráf **síkbarajzolható** (vagy planáris), ha lerajzolható a síkba úgy, hogy:
>   1. a csúcsai a sík diszjunkt pontjainak felelnek meg;
>   2. az élei a megfelelő csúcspárokat összekötő folytonos, önmagukat nem metsző síkgörbék (**Jordan-ívek**);
>   3. két különböző él nem metszi egymást, és egyetlen közös pontjuk legfeljebb a közös végpontjuk lehet.
> - Egy ilyen konkrét síkbeli lerajzolást a gráf **síkba ágyazásának** vagy **síkgráfnak** nevezünk.

*A különbség:* a síkbarajzolhatóság a gráf elvont tulajdonsága (lerajzolható-e), míg a síkgráf maga a síkba már lerajzolt alakzat.

### Példa: a $K_4$ síkbarajzolható!

Tekintsük a $4$ csúcsú teljes gráfot, a $K_4$-et.
Ha egy négyzet négy sarkaként rajzoljuk le és behúzzuk az oldalait meg a két átlóját, akkor a két átló a négyzet közepén metszi egymást. Ez a rajz nem síkbeli.
Azonban ez nem a gráf hibája, hanem a lerajzolásé! $K_4$ ugyanis **síkbarajzolható**:

- Az egyik átlót megrajzolhatjuk úgy, hogy a négyzetet kívülről megkerülje;
- vagy lerajzolhatunk egy háromszöget, és a negyedik csúcsot a háromszög belsejébe helyezve összeköthetjük a három sarokcsúccsal.
Mindkét esetben metszésmentes síkrajzot kapunk.

\begin{center}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  edge/.style={draw=black!70, thick}
]
  % Crossing K_4
  \begin{scope}[xshift=-5.0cm]
    \node[v] (a1) at (-0.8, 0.8) {};
    \node[v] (a2) at (0.8, 0.8) {};
    \node[v] (a3) at (0.8, -0.8) {};
    \node[v] (a4) at (-0.8, -0.8) {};
    \draw[edge] (a1) -- (a2) -- (a3) -- (a4) -- (a1);
    \draw[edge] (a1) -- (a3);
    \draw[edge] (a2) -- (a4);
    \node[below=1.0cm of a4, xshift=0.8cm] {\footnotesize Rossz rajz (metszés)};
  \end{scope}

  % Curved K_4
  \begin{scope}[xshift=-1.5cm]
    \node[v] (b1) at (-0.8, 0.8) {};
    \node[v] (b2) at (0.8, 0.8) {};
    \node[v] (b3) at (0.8, -0.8) {};
    \node[v] (b4) at (-0.8, -0.8) {};
    \draw[edge] (b1) -- (b2) -- (b3) -- (b4) -- (b1);
    \draw[edge] (b2) -- (b4);
    \draw[edge] (b1) to[out=210, in=150, looseness=2.2] (b3);
    \node[below=1.0cm of b4, xshift=0.8cm] {\footnotesize Jó síkrajz (ív)};
  \end{scope}

  % Triangle with center
  \begin{scope}[xshift=2.2cm]
    \node[v] (c1) at (90:1.1) {};
    \node[v] (c2) at (210:1.1) {};
    \node[v] (c3) at (330:1.1) {};
    \node[v] (c4) at (0, 0) {};
    \draw[edge] (c1) -- (c2) -- (c3) -- (c1);
    \draw[edge] (c1) -- (c4);
    \draw[edge] (c2) -- (c4);
    \draw[edge] (c3) -- (c4);
    \node[below=1.0cm of c4] {\footnotesize Jó síkrajz (belső csúcs)};
  \end{scope}
\end{tikzpicture}
\end{center}

### Tartományok (lapok)

Amikor egy gráfot lerajzolunk a síkba metszések nélkül, a gráf élei feldarabolják a síkot.

> **Definíció (tartományok).** Amikor egy gráfot lerajzolunk a síkba, az a síkot geometriailag összefüggő nyílt részekre, úgynevezett **tartományokra** (vagy lapokra, angolul *faces*) bontja. A tartományok számát $t$-vel (vagy $f$-fel) jelöljük.

Fontos szem előtt tartani:

- A tartományok közül $t - 1$ darab **korlátos** (belső tartomány).
- Pontosan $1$ darab tartomány **nem korlátos** (ez a gráfot körülvevő, a végtelenbe nyúló **külső tartomány**).
A külső tartomány ugyanolyan teljes jogú tartománya a síkrajznak, mint a belsők!

\begin{center}
\begin{tikzpicture}[scale=0.95,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  edge/.style={draw=black!70, thick},
  face/.style={circle, draw=black!60, fill=black!5, inner sep=1.5pt, font=\small}
]
  \node[v] (p1) at (-3.0, 0) {};
  \node[v] (p2) at (-0.5, 1.4) {};
  \node[v] (p3) at (-1.2, -0.2) {};
  \node[v] (p4) at (0.4, 0.6) {};
  \node[v] (p5) at (1.2, -1.0) {};
  \node[v] (p6) at (1.8, 0) {};

  \draw[edge] (p1) to[out=50, in=180] (p2);
  \draw[edge] (p2) to[out=0, in=90] (p6);
  \draw[edge] (p6) to[out=270, in=0] (p5);
  \draw[edge] (p5) to[out=190, in=280] (p1);

  \draw[edge] (p3) -- (p2);
  \draw[edge] (p3) to[out=320, in=120] (p5);
  \draw[edge] (p4) -- (p5);
  \draw[edge] (p4) -- (p6);

  \node[face] at (-1.5, 0.6) {$1$};
  \node[face] at (0.2, -0.3) {$2$};
  \node[face] at (1.15, -0.15) {$3$};
  \node[face] at (-2.6, -1.2) {$4$};

  \node[right=0.8cm of p6] {\begin{tabular}{l}
    \textbf{4 tartományra bontja:} \\
    $1, 2, 3$: belső tartományok \\
    $4$: külső (végtelen) tartomány
  \end{tabular}};
\end{tikzpicture}
\end{center}

---

## 38. Az Euler-formula síkgráfokra

Ha adott egy összefüggő síkbarajzolt gráf, amelynek $n$ csúcsa, $e$ éle és $t$ tartománya van, mi az összefüggés e három mennyiség között?
Leonhard Euler 1752-ben fedezte fel ezt a csodálatos kapcsolatot a konvex poliéderek csúcsaira, éleire és lapjaira, amely síkgráfokra a következőképpen szól:

> **Tétel (Euler-formula összefüggő síkgráfokra).** Minden összefüggő síkbarajzolt gráfra:
> $$n - e + t = 2.$$

Ez az érték nem függ a gráf formájától, méretétől vagy a rajzolás módjától: **konstans a síkon**, a sík topológiai jellegzetessége (Euler-karakterisztikája).

### A tétel bizonyítása (invariáns módszer)

A bizonyítás az előadáson bemutatott gyönyörű invariáns gondolatot követi: egymás után elhagyjuk a körök éleit, amíg egy fához nem jutunk.

Tekintsük a gráfban az $I = n - e + t$ mennyiséget.
Feltehetjük a kérdést: **van-e köre a gráfnak?**

**1. Eset: a gráfnak van köre.**
Válasszunk ki egy tetszőleges kört, és azon egy tetszőleges $e_0$ élt.
Mivel $e_0$ egy körön fekszik, a kör belsejét és külsejét választja el egymástól, tehát két különböző tartomány közös határán helyezkedik el.
Töröljük ki az $e_0$ élt a síkrajzból!
Mi történik a paraméterekkel?

- A csúcsok száma nem változik: $n' = n$.
- Az élek száma $1$-gyel csökken: $e' = e - 1$.
- Az $e_0$ által elválasztott két tartomány egyetlen közös tartománnyá olvad össze, így a tartományok száma is $1$-gyel csökken: $t' = t - 1$.
- Mivel $e_0$ egy kör éle volt, elhagyása után a végpontjai között a kör maradék ívén továbbra is vezet út, így a gráf **összefüggő marad**!

Nézzük meg, hogyan változott az $n - e + t$ mennyiség:
$$n' - e' + t' = n - (e - 1) + (t - 1) = n - e + 1 + t - 1 = n - e + t.$$
Az $n - e + t$ értéke tehát **egyáltalán nem változott: invariáns maradt**!

**2. Lépés: ismétlés.**
Ismételjük ezt az élbontó lépést mindaddig, amíg a gráfban található kör. Mivel minden lépésben csökken az élek száma, az eljárás véges sok lépésben véget ér.

**3. Befejezés: fához jutottunk.**
Amikor már nincs több kör a gráfban, a megmaradt gráf:

- összefüggő (mert minden lépés megőrizte az összefüggőséget),
- körmentes (mert addig töröltünk, amíg volt kör).
Ez a 21. szakasz definíciója szerint egy **fa** (az eredeti gráf egy feszítőfája)!

Egy $n$ csúcsú fa paramétereit jól ismerjük:

- éleinek száma: $e_{\text{fa}} = n - 1$,
- mivel nincsenek körei, a síkot nem vágja belső részekre, így egyetlen tartománya van: a külső tartomány, azaz $t_{\text{fa}} = 1$.

Számoljuk ki az invariáns értékét a fára:
$$n - e_{\text{fa}} + t_{\text{fa}} = n - (n - 1) + 1 = n - n + 1 + 1 = 2.$$
Mivel minden korábbi lépésben az $n - e + t$ érték változatlan maradt, az eredeti gráfra is pontosan $n - e + t = 2$ kellett hogy teljesüljön! $\blacksquare$

\begin{center}
\begin{tikzpicture}[scale=0.95,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  tree/.style={draw=black, very thick},
  del/.style={draw=black!40, dashed, thick}
]
  \node[v] (a) at (-2.0, 0.8) {};
  \node[v] (b) at (-0.8, 1.6) {};
  \node[v] (c) at (0.8, 1.0) {};
  \node[v] (d) at (1.5, 0) {};
  \node[v] (e) at (0.4, -0.8) {};
  \node[v] (f) at (-1.0, -0.8) {};
  \node[v] (g) at (-1.8, -1.4) {};
  \node[v] (h) at (-0.8, -1.5) {};
  \node[v] (mid) at (-0.9, 0.0) {};

  % Spanning tree edges (solid)
  \draw[tree] (a) -- (b);
  \draw[tree] (a) -- (mid);
  \draw[tree] (mid) -- (f);
  \draw[tree] (f) -- (g);
  \draw[tree] (f) -- (h);
  \draw[tree] (mid) -- (e);
  \draw[tree] (e) -- (d);
  \draw[tree] (d) -- (c);

  % Deleted cycle edges (dashed with strikeout)
  \draw[del] (b) -- node[sloped]{\footnotesize $|/|$} (c);
  \draw[del] (a) -- node[sloped]{\footnotesize $|/|$} (f);
  \draw[del] (g) -- node[sloped]{\footnotesize $|/|$} (h);
  \draw[del] (mid) -- node[sloped]{\footnotesize $|/|$} (d);

  \node[right=0.5cm of d] {\begin{tabular}{l}
    \textbf{Invariáns:} $n - e + t$ állandó \\
    Él törlése körből: \\
    $e \to e - 1, \; t \to t - 1$ \\
    Feszítőfánál: \\
    $n - (n-1) + 1 = 2$
  \end{tabular}};
\end{tikzpicture}
\end{center}

::: kiegeszites
**Kiegészítés — a bizonyítás két topológiai lépése.** A fenti bizonyítás két helyen használja a síkgörbék egy szemléletesen nyilvánvaló, de mélyen fekvő tulajdonságát, a **Jordan-féle görbetételt**: *a sík minden zárt, önmagát nem metsző görbéje a síkot pontosan két tartományra, egy korlátos belsőre és egy nem korlátos külsőre bontja, és maga a görbe mindkettőnek a határa.*

- *Körél törlése két tartományt egyesít.* A $C$ kör egy Jordan-görbe; az $e_0$ él egyik oldalán a $C$ belsejébe, másik oldalán a külsejébe eső tartomány fekszik, így ezek különbözők. Az $e_0$ törlésével a két tartomány az él mentén egybenyílik, a többi tartomány nem változik.
- *Egy fának egyetlen tartománya van.* Egy fa síkrajzának komplementere összefüggő: egy fa egyetlen levelét (és élét) a rajzból kivéve a tartományok száma nem változik (az él két oldala ugyanabba a tartományba esik, mert az él nem része körnek, így a levél körül „megkerülhető”), és ezt ismételve egyetlen pontig jutunk, amelynek a komplementere nyilván összefüggő.

A Jordan-tétel bizonyítása (különösen tetszőleges folytonos görbékre) a topológia tárgykörébe tartozik; töröttvonalakból álló görbékre elemi úton is bizonyítható. A gráfelméletben feltehetjük, hogy az élek töröttvonalak: minden síkbarajzolt gráf rajza „kiegyenesíthető” töröttvonalasra a topológia megváltoztatása nélkül (sőt a Fáry-tétel szerint egyenes szakaszokra is, lásd a 44. szakaszt).
:::

### Mi van, ha a gráf nem összefüggő?

Mi történik az Euler-formulával, ha a gráf több összefüggőségi komponensből áll?

> **Tétel (Euler-formula általános síkgráfokra).** Ha a $G$ síkgráf $c$ darab összefüggőségi komponensből áll, akkor:
> $$n - e + t = c + 1.$$

**Bizonyítás.**
Jelölje az egyes komponensek csúcsainak, éleinek és tartományainak számát $n_i, e_i, t_i$ ($i = 1, 2, \dots, c$).
Minden komponens önmagában összefüggő síkgráf, így rájuk külön-külön érvényes az Euler-formula:
$$n_i - e_i + t_i = 2 \qquad (i = 1, 2, \dots, c).$$
A teljes gráf csúcsszáma és élszáma egyszerűen a komponensek összege: $n = \sum n_i$ és $e = \sum e_i$.
A tartományoknál azonban figyelembe kell venni: mindegyik komponens belső tartományai függetlenek egymástól ($t_i - 1$ darab belső tartomány komponensenként), de a **külső tartomány közös** az összes komponens számára!
A teljes síkrajz tartományainak száma tehát:
$$t = 1 + \sum_{i=1}^c (t_i - 1) = \sum_{i=1}^c t_i - c + 1.$$
Ebből $\sum t_i = t + c - 1$.
Összegezve az egyes komponensek Euler-formuláit:
$$\sum_{i=1}^c (n_i - e_i + t_i) = n - e + (t + c - 1) = 2c.$$
Átrendezve:
$$n - e + t = 2c - c + 1 = c + 1. \quad \blacksquare$$

Például $c = 2$ komponens esetén:
$$n - e + t = 2 + 1 = 3.$$

::: kiegeszites
**Kiegészítés — egy másik bizonyítás.** A fenti érvelés a „belső tartományok függetlenek” lépésnél kissé elnagyolt: egy komponens akár egy másik komponens valamelyik belső tartományába is rajzolható. Ezt a nehézséget így kerülhetjük meg. Ha $c \ge 2$, akkor van olyan tartomány, amelynek határán két különböző komponens is fekszik (kössük össze a $K_1$ komponens egy pontját egy másik komponens egy pontjával egy egyenes szakasszal; legyen $a$ a szakasz utolsó $K_1$-beli pontja, és $b$ az $a$ utáni első pont, amely a rajzhoz tartozik — ez már egy másik komponensé; az $a$ és $b$ közötti nyílt szakasz nem metszi a rajzot, így egyetlen tartományban halad, amelynek határán $a$ és $b$ is rajta van). Ebben a tartományban egy új éllel kössük össze a két komponenst. Az új él egy tartományon belül halad, két különböző komponenst köt össze, tehát nem zár be kört, és nem vágja ketté a tartományt: $t$ nem változik, $e$ eggyel nő, $c$ eggyel csökken. $c - 1$ ilyen lépés után összefüggő síkgráfot kapunk, amelyre $n - (e + c - 1) + t = 2$, vagyis $n - e + t = c + 1$. $\blacksquare$
:::

\begin{center}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!70, thick}
]
  % Component 1
  \begin{scope}[xshift=-3.0cm]
    \draw[rounded corners=10pt, fill=black!4, draw=black!25] (-1.6, -1.6) rectangle (1.6, 1.6);
    \node[v] (p1) at (-0.8, 0) {};
    \node[v] (p2) at (-0.3, 0.9) {};
    \node[v] (p3) at (0.8, 0.4) {};
    \node[v] (p4) at (0.2, -0.8) {};
    \node[v] (p5) at (-0.7, -1.1) {};
    \draw[edge] (p1) -- (p2) -- (p3) -- (p4) -- (p1);
    \draw[edge] (p2) -- (p4);
    \draw[edge] (p1) -- (p5);
    \node at (0, -1.9) {\footnotesize $1$. komponens ($n_1, e_1, t_1$)};
  \end{scope}

  % Component 2
  \begin{scope}[xshift=3.0cm]
    \draw[rounded corners=10pt, fill=black!4, draw=black!25] (-1.4, -1.6) rectangle (1.4, 1.6);
    \node[v] (q1) at (-0.6, 0.6) {};
    \node[v] (q2) at (0.6, 0.4) {};
    \node[v] (q3) at (0.2, -0.7) {};
    \node[v] (q4) at (-0.6, -0.5) {};
    \draw[edge] (q1) -- (q2) -- (q3) -- (q4) -- (q1);
    \draw[edge] (q1) -- (q3);
    \node at (0, -1.9) {\footnotesize $2$. komponens ($n_2, e_2, t_2$)};
  \end{scope}

  \node at (0, 0) {\begin{tabular}{c}
    \textbf{Közös külső tartomány} \\
    $t = t_1 + t_2 - 1$ \\
    $n - e + t = c + 1 = 3$
  \end{tabular}};
\end{tikzpicture}
\end{center}

---

## 39. Élszám-korlátok síkbarajzolható gráfokban

Hány éle lehet legfeljebb egy síkbarajzolható gráfnak?

Egy tetszőleges $n$ csúcsú egyszerű gráfban akár $\binom{n}{2} \approx \frac{n^2}{2}$ él is lehet. Például $n = 1000$ csúcs esetén ez majdnem **félmillió él**!
Vajon egy síkbarajzolható gráfban is lehet ennyi él?
A válasz meglepő: **nem!** Síkbarajzolható gráfban csak nagyon kevés él lehet: $n = 1000$-re legfeljebb körülbelül **3000 él** fér el a síkban metszések nélkül!

*(Fontos megjegyzés: mindvégig egyszerű gráfokról beszélünk. Hurokélekből vagy többszörös élekből tetszőlegesen sokat be lehetne rajzolni a síkba, de ezeket az egyszerű gráf definíciója tiltja.)*

### A kettős leszámlálás és az élek-tartományok kapcsolata

Ha egy síkgráf le van rajzolva a síkba, számoljuk meg az illeszkedő **$(e, T)$ él-tartomány párok** számát (ahol az $e$ él a $T$ tartomány határán fut).

1. **A tartományok felől számolva:**
   Minden $T$ tartomány határát egy zárt vonal (séta) alkotja. Mivel nincsenek hurokélek és kétszögek (többszörös élek), egy kört tartalmazó gráfban minden tartományt **legalább 3 él** határol.
   Így az illeszkedő párok száma:
   $$\text{párok száma} = \sum_{T} \text{határoló élek száma} \ge 3t.$$
   *(Ha a gráf nem tartalmaz kört, azaz erdő vagy $e < 3$, a tétel állítása az alábbiak szerint közvetlenül is adódik.)*

2. **Az élek felől számolva:**
   Minden él mentén **legfeljebb 2 tartomány** fekszik: az él jobb és bal oldalán lévő tartomány (ha az él egy híd, akkor mindkét oldalról ugyanaz a tartomány határolja, vagyis az adott tartományban $2$-szer számolódik).
   Így az illeszkedő párok száma:
   $$\text{párok száma} \le 2e.$$

A két becslést összevetve kapjuk az alapvető egyenlőtlenséget:
$$3t \le 2e \iff t \le \frac{2}{3}e.$$

### A síkgráfok maximális élszáma

> **Tétel (élszám-korlát egyszerű síkgráfokra).** Minden $n \ge 3$ csúcsú egyszerű síkbarajzolható gráfra:
> $$e \le 3n - 6.$$

**Bizonyítás.**
Elég a tételt összefüggő gráfokra bizonyítani (ha nem összefüggő, új élek behúzásával összefüggővé tehető anélkül, hogy a síkbarajzolhatóság sérülne, és az élszám csak nő).

Ha a gráf körmentes (tehát fa), akkor $e = n - 1$. Ekkor $n \ge 3$ esetén az $e = n - 1 \le 3n - 6$ egyenlőtlenség triviálisan teljesül (hiszen $2n \ge 5$). Hasonlóképpen, ha $e < 3$, $n \ge 3$ mellett $e < 3 \le 3n - 6$ azonnal igaz.

Feltehetjük tehát, hogy a gráf tartalmaz kört (így $e \ge 3$ és legalább két tartománya van).
Az összefüggő síkgráfokra érvényes Euler-formulából fejezzük ki a tartományok számát:
$$n - e + t = 2 \implies t = 2 - n + e.$$
Helyettesítsük ezt be a most igazolt $3t \le 2e$ egyenlőtlenségbe:
$$3(2 - n + e) \le 2e.$$
Bontsuk fel a zárójelet és rendezzük az egyenlőtlenséget:
$$6 - 3n + 3e \le 2e \iff 3e - 2e \le 3n - 6 \iff e \le 3n - 6. \quad \blacksquare$$

> **Következmény (triangulációk).** Egy $n \ge 3$ csúcsú egyszerű síkgráfban pontosan akkor áll fenn az $e = 3n - 6$ egyenlőség, ha a gráf minden tartománya háromszög ($3t = 2e$). Az ilyen gráfokat **maximális síkgráfoknak** vagy **triangulációknak** nevezzük.

> **Következmény (kis fokú csúcs létezése).** Minden egyszerű síkbarajzolható gráfban létezik olyan csúcs, amelynek foka legfeljebb $5$:
> $$\delta(G) \le 5.$$
> **Bizonyítás.** A kézfogási lemma szerint a fokszámok összege $2e$. Felhasználva az élszám-korlátot:
> $$\sum_{v \in V} \deg(v) = 2e \le 2(3n - 6) = 6n - 12 < 6n.$$
> Ha minden csúcs foka legalább $6$ lenne, akkor a fokszámösszeg legalább $6n$ lenne, ami ellentmond a fenti szigorú egyenlőtlenségnek! Legalább egy csúcsnak tehát legfeljebb $5$ fokúnak kell lennie. $\blacksquare$

### Általánosítás: adott bőségű (körhosszúságú) síkgráfok

Mi történik, ha a gráfban nincsenek háromszögek, vagy általában nincsenek rövid körök?

Tegyük fel, hogy a gráfban **minden kör legalább $p$ élből áll** ($p \ge 3$). Ezt a $p$ számot a gráf **bőségének** (girth) nevezzük.
Ekkor semelyik tartomány határa sem lehet rövidebb $p$-nél, így minden tartományt legalább $p$ él határol:
$$p \cdot t \le 2e.$$
Fejezzük ki ismét $t$-t az Euler-formulából ($t = 2 - n + e$):
$$p(2 - n + e) \le 2e \iff 2p - pn + pe \le 2e.$$
Rendezzük az $e$-s tagokat az egyik oldalra:
$$(p - 2)e \le p(n - 2) \iff e \le \frac{p}{p - 2}(n - 2).$$

### Speciális eset: háromszögmentes és páros síkgráfok ($p = 4$)

Ha egy síkgráf **háromszögmentes**, vagy **páros** (ahol a 35. szakasz szerint minden kör páros, így a legrövidebb kör hossza legalább $4$), akkor a fenti képletbe $p = 4$-et helyettesíthetünk:
$$e \le \frac{4}{4 - 2}(n - 2) = 2(n - 2) = 2n - 4.$$

> **Tétel (páros és háromszögmentes síkgráfok élszáma).** Minden $n \ge 3$ csúcsú egyszerű háromszögmentes (speciálisan minden páros) síkbarajzolható gráfra:
> $$e \le 2n - 4.$$

---

## 40. Nem síkbarajzolható gráfok és a Kuratowski-tétel

Az előző szakaszban levezetett élszám-korlátok rendkívül erős eszközt adnak a kezünkbe: segítségükkel bebizonyíthatjuk bizonyos gráfokról, hogy **lehetetlen őket síkba rajzolni**!

### 1. Példa: az 5-csúcsú teljes gráf ($K_5$)

Tekintsük a $K_5$ teljes gráfot:

- csúcsok száma: $n = 5$,
- élek száma: $e = \binom{5}{2} = 10$.

Tegyük fel indirekt, hogy $K_5$ síkbarajzolható! Ekkor teljesülnie kellene az egyszerű síkgráfokra vonatkozó $e \le 3n - 6$ egyenlőtlenségnek:
$$10 \le 3 \cdot 5 - 6 = 15 - 6 = 9.$$
Ez azonban nyilvánvaló képtelenség: $10 \le 9$ nem igaz!
> **Állítás.** A $K_5$ teljes gráf **nem síkbarajzolható**.

### 2. Példa: a „három ház – három kút” gráf ($K_{3,3}$)

Egy klasszikus fejtörő így szól: három háznak és három kútnak szeretnénk gáz-, víz- és villanyvezetéket építeni úgy, hogy minden háztól mindhárom kúthoz fusson vezeték, de a vezetékek sehol se keresztezzék egymást. Lehetséges ez a síkban?
Ez a feladat a $K_{3,3}$ teljes páros gráf síkbarajzolhatóságát kérdezi:

- csúcsok száma: $n = 3 + 3 = 6$,
- élek száma: $e = 3 \times 3 = 9$.

Próbáljuk meg először az általános korlátot:
$$e \le 3n - 6 = 3 \cdot 6 - 6 = 12.$$
Itt $9 \le 12$ teljesül!
**Vigyázat:** attól még, hogy a $3n - 6 \ge e$ feltétel teljesül, a gráf **még nem feltétlenül síkbarajzolható**! (Ez a feltétel csak *szükséges*, de nem elégséges.)

Vegyük észre azonban, hogy $K_{3,3}$ **páros gráf**! A 35. szakasz szerint páros gráfban nincs páratlan kör, így nincs $3$ hosszú kör sem: minden köre legalább $4$ élből áll ($p = 4$).
Alkalmazzuk a páros síkgráfokra érvényes szigorúbb korlátot:
$$e \le 2n - 4.$$
Számoljunk:
$$9 \le 2 \cdot 6 - 4 = 12 - 4 = 8.$$
Ez ellentmondás, hiszen $9 \le 8$ hamis!
> **Állítás.** A $K_{3,3}$ gráf **nem síkbarajzolható** (a három ház – három kút feladat síkban nem oldható meg).

\begin{center}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.8pt},
  edge/.style={draw=black!70, thick}
]
  % K_5
  \begin{scope}[xshift=-4.6cm]
    \foreach \i in {1,...,5} {
      \node[v] (k\i) at ({90 + (\i-1)*72}:1.2) {};
    }
    \foreach \i in {1,...,5} {
      \foreach \j in {\i,...,5} {
        \draw[edge] (k\i) -- (k\j);
      }
    }
    \node[below=1.4cm of k1] {\begin{tabular}{c} \textbf{$K_5$} \\ $n=5, \, e=10$ \\ $10 \le 3(5)-6 = 9 \text{ (ellentmondás)}$ \end{tabular}};
  \end{scope}

  % K_{3,3}
  \begin{scope}[xshift=0cm]
    \node[v] (h1) at (-1.0, 1.0) {};
    \node[v] (h2) at (0, 1.0) {};
    \node[v] (h3) at (1.0, 1.0) {};
    \node[v] (w1) at (-1.0, -0.6) {};
    \node[v] (w2) at (0, -0.6) {};
    \node[v] (w3) at (1.0, -0.6) {};
    \foreach \i in {1,2,3} {
      \foreach \j in {1,2,3} {
        \draw[edge] (h\i) -- (w\j);
      }
    }
    \node[above=0.05cm of h2] {\footnotesize 3 ház};
    \node[below=0.05cm of w2] {\footnotesize 3 kút};
    \node[below=0.8cm of w2] {\begin{tabular}{c} \textbf{$K_{3,3}$} \\ $n=6, \, e=9$ \\ $9 \le 2(6)-4 = 8 \text{ (ellentmondás)}$ \end{tabular}};
  \end{scope}

  % Subdivision
  \begin{scope}[xshift=4.6cm]
    \node[v, label=left:{$u$}] (s1) at (-1.2, 0.7) {};
    \node[v, label=right:{$v$}] (s2) at (1.2, 0.7) {};
    \draw[edge] (s1) -- (s2);
    \node[below=0.1cm of s1, xshift=1.2cm] {\footnotesize él: $uv$};

    \node at (0, -0.1) {$\Downarrow$ \footnotesize élfelosztás};

    \node[v, label=left:{$u$}] (t1) at (-1.2, -0.9) {};
    \node[circle, draw=black, fill=white, inner sep=1.8pt, label=above:{$w$}] (t2) at (0, -0.9) {};
    \node[v, label=right:{$v$}] (t3) at (1.2, -0.9) {};
    \draw[edge] (t1) -- (t2) -- (t3);
    \node[below=0.1cm of t2] {\footnotesize soros bővítés ($u-w-v$)};
  \end{scope}
\end{tikzpicture}
\end{center}

### Soros bővítés és topológikus izomorfia

Mi történik, ha egy nem síkbarajzolható gráfban egy élt felosztunk egy új $2$-fokú csúcs beszúrásával?

> **Definíció (élfelosztás, soros bővítés).** Egy $G$ gráf egy $uv$ élének **felosztásán** (vagy soros bővítésén) azt értjük, hogy az $uv$ élt töröljük, bevezetünk egy új $w$ csúcsot, és behúzzuk az $uw$ és $wv$ éleket (azaz az élt egy $2$ hosszú úttal helyettesítjük).
> Két gráf **topologikusan izomorf** (vagy egymással homeomorf), ha mindkettő megkapható egyazon gráfból élek véges sokszori felosztásával.

Nyilvánvaló, hogy egy él megtörése (új $2$-fokú csúcsok elhelyezése az él mentén) nem változtat azon, hogy a gráf lerajzolható-e metszések nélkül: ha az eredeti gráf nem fért el a síkban, a felosztott változat sem fog!

### A Kuratowski-tétel

*„$K_5$ és $K_{3,3}$ a főbűnösök: ha egy gráf nem síkbarajzolható, miattuk van.”*
Kazimierz Kuratowski lengyel matematikus 1930-ban bebizonyította, hogy e két gráfon és felosztásaikon kívül nincs más akadálya a síkbarajzolhatóságnak:

> **Tétel (Kuratowski-tétel, 1930).** Egy tetszőleges $G$ gráf pontosan akkor síkbarajzolható, ha **nem tartalmaz olyan részgráfot**, amely $K_5$-tel vagy $K_{3,3}$-mal topologikusan izomorf (azaz nem tartalmaz felosztott $K_5$-öt vagy felosztott $K_{3,3}$-at).

A tétel két iránya közötti különbség alapvető:

- **$\implies$ (a könnyű irány):** Ha $G$ tartalmaz felosztott $K_5$-öt vagy $K_{3,3}$-at, akkor $G$ nem lehet síkbarajzolható. Ha ugyanis $G$ lerajzolható lenne metszések nélkül, akkor a részgráfja is síkban lenne, és a $2$-fokú osztópontokat „kiegyenesítve” $K_5$ vagy $K_{3,3}$ metszésmentes síkrajzát kapnánk, amiről már beláttuk, hogy lehetetlen!
- **$\impliedby$ (a nehéz irány):** Ha egy gráf nem síkbarajzolható, akkor **szükségképpen tartalmaz** egy felosztott $K_5$ vagy $K_{3,3}$ részgráfot. Ennek bizonyítása jóval mélyebb gráfelméleti és topológiai eszközöket igényel.

::: kiegeszites
**Kiegészítés — a Kuratowski-tétel nehéz irányának bizonyítása** (Thomassen gondolatmenete, Diestel tankönyvének felépítésében). A felosztott $K_5$-öt és $K_{3,3}$-at röviden **Kuratowski-részgráfnak** nevezzük. Azt kell belátnunk, hogy *ha $G$-ben nincs Kuratowski-részgráf, akkor $G$ síkbarajzolható*. Egy topológiai tényt bizonyítás nélkül használunk: *egy 2-szeresen összefüggő síkgráf minden tartományát egy kör határolja* (ez a Jordan-féle görbetétel következménye).

**Fogalmak.** Egy gráf **$k$-szorosan összefüggő**, ha legalább $k + 1$ csúcsa van, és bármely $k - 1$ csúcsát törölve összefüggő marad. A $H$ gráf a $G$ **minorja**, ha $G$-ben vannak olyan páronként diszjunkt, összefüggő részgráfot feszítő $V_h$ csúcshalmazok ($h \in V(H)$, ezek az **ágak**), hogy $H$ minden $hh'$ élére fut él $V_h$ és $V_{h'}$ között. (Szemléletesen: $H$ megkapható $G$-ből élek és csúcsok törlésével és élek összehúzásával.) A $G/xy$ jelöli azt a gráfot, amelyet az $xy$ él összehúzásával kapunk: $x$ és $y$ helyére egyetlen új csúcs kerül, amely $x$ és $y$ minden szomszédjával szomszédos (a többszörös éleket egyszeresnek vesszük).

**1. lemma.** *Ha $G$-nek minorja a $K_5$ vagy a $K_{3,3}$, akkor $G$-ben van Kuratowski-részgráf.*

*Bizonyítás.* Legyen $G_0 \subseteq G$ egy minimális részgráf, amelynek még minorja $K_5$ vagy $K_{3,3}$, a $V_h$ ágakkal. A minimalitás miatt minden $V_h$ egy $T_h$ fát feszít, az ágak között a minorhoz szükséges éleken kívül nincs él (mindegyikből pontosan egy), és $T_h$ minden levele ilyen „kifutó” él végpontja. Ha $H = K_{3,3}$, minden ágból $3$ él fut ki; a $T_h$ fában a három kifutási pontot összekötő utak egy közös pontban találkoznak (egy fában bármely három csúcsnak van „mediánja”), így $T_h$-ban van egy csúcs, amelyből három diszjunkt út vezet a kifutási pontokhoz. Ezeket a csúcsokat választva elágazási pontnak felosztott $K_{3,3}$-at kapunk. Ha $H = K_5$, minden ágból $4$ él fut ki. A négy kifutási pontot összekötő minimális $T_h$ fa vagy egy „csillag” (van egy csúcs, amelyből négy diszjunkt út vezet a kifutási pontokhoz), vagy két különböző, $3$ fokú elágazási pontja van, $a$ és $b$, úgy, hogy két kifutási pont az $a$-hoz, kettő a $b$-hez „tartozik”. Ha mind az öt ág csillag, a középpontjaik egy felosztott $K_5$ elágazási pontjai. Ha például $T_1$ nem csillag, és az $a$-hoz a $V_2$, $V_3$, a $b$-hez a $V_4$, $V_5$ felé kifutó él tartozik, akkor felosztott $K_{3,3}$-at kapunk az $\{a, V_4, V_5\}$ és $\{b, V_2, V_3\}$ osztályokkal: $a$–$b$ ($T_1$-ben), $a$–$V_2$, $a$–$V_3$, $b$–$V_4$, $b$–$V_5$ (a kifutó élek mentén) és $V_i$–$V_j$ ($i \in \{4, 5\}$, $j \in \{2, 3\}$, az ágak közti élek). Itt minden $V_j$ ágban a három felhasznált kifutási pont mediánja lesz az elágazási pont, mint előbb. $\blacksquare$

**2. lemma.** *Minden legalább $5$ csúcsú, 3-szorosan összefüggő $G$ gráfnak van olyan $xy$ éle, hogy $G/xy$ is 3-szorosan összefüggő.*

*Bizonyítás.* Tegyük fel, hogy nincs ilyen él. Ekkor minden $xy$ élre $G/xy$-ban van legfeljebb két csúcsból álló elvágó halmaz. Ez tartalmazza az összehúzással kapott csúcsot (különben $G$-ben is elvágó volna), így van olyan $z$ csúcs, hogy $\{x, y, z\}$ elvágja $G$-t. Válasszuk az $xy$ élt és a $z$ csúcsot úgy, hogy $G - \{x, y, z\}$ legkisebb komponense, $C$, a lehető legkisebb legyen. A 3-szoros összefüggőség miatt $x$, $y$, $z$ mindegyikének van szomszédja $G - \{x,y,z\}$ minden komponensében (különben két csúcs is elvágna). Legyen $v$ a $z$ egy szomszédja $C$-ben. A $zv$ élhez is van egy $w$, hogy $\{z, v, w\}$ elvágja $G$-t. Mivel $xy$ él, az $\{x, y\} \setminus \{w\}$ csúcsok $G - \{z,v,w\}$ ugyanazon komponensébe esnek; legyen $D$ egy másik komponens. $D$ nem tartalmazza sem $x$-et, sem $y$-t, sem $z$-t. A $v$-nek van szomszédja $D$-ben, és $v$ szomszédai $C \cup \{x, y, z\}$-ben vannak, így $D$ metszi $C$-t; mivel $D$ összefüggő és elkerüli $x$-et, $y$-t, $z$-t, ezért $D \subseteq C$, sőt $v \notin D$ miatt $D \subsetneq C$. Ez ellentmond $C$ minimalitásának. $\blacksquare$

**3. lemma.** *Minden 3-szorosan összefüggő gráf, amelynek sem a $K_5$, sem a $K_{3,3}$ nem minorja, síkbarajzolható.*

*Bizonyítás.* Indukció a csúcsszám szerint. A legkisebb ilyen gráf a $K_4$, amely síkbarajzolható. Legyen $|V(G)| \ge 5$, és a 2. lemma szerint $xy$ egy olyan él, hogy $G/xy$ 3-szorosan összefüggő. $G/xy$ minorjai $G$-nek is minorjai, így az indukciós feltevés szerint $G/xy$ síkbarajzolható; vegyünk egy síkrajzát, és legyen $v$ az összehúzással kapott csúcs. $G/xy - v$ 2-szeresen összefüggő, így a $v$-t tartalmazó tartományát egy $C$ kör határolja, és $v$ minden szomszédja $C$-n van. Legyenek $x_1, \dots, x_k$ az $x$-nek $C$-n fekvő szomszédai (az $y$-on kívüli szomszédai) körüljárási sorrendben, és $P_i$ a $C$ íve $x_i$-től $x_{i+1}$-ig (indexek modulo $k$).

- *Ha $y$ minden ($x$-től különböző) szomszédja ugyanazon a $P_i$ íven van* (a végpontokat is beleértve), akkor $G$ síkbarajzolható: $v$ helyére $x$-et rajzolva, az $x$–$x_j$ éleket megtartva, $y$-t az $xx_i$, $xx_{i+1}$ élek és a $P_i$ ív által határolt területre téve, $y$ összeköthető $x$-szel és a szomszédaival metszés nélkül.
- *Különben* két eset lehetséges. Ha $y$-nak van szomszédja egy $P_i$ ív belsejében és egy azon kívül, akkor ezek, valamint $x_i$ és $x_{i+1}$ váltakozva követik egymást a $C$ körön: $x', y', x'', y''$ (ahol $x', x''$ az $x$, $y', y''$ az $y$ szomszédai). Ha $y$ minden szomszédja $x$-szomszéd, akkor vagy legalább három közös szomszéd van, vagy két nem szomszédos $x_a$, $x_b$, és ekkor a két $C$-ív mindegyikén van további $x$-szomszéd — megint váltakozó négyest kapunk. Három közös szomszéd ($a, b, c$) esetén $x, y, a, b, c$ egy felosztott $K_5$ elágazási pontjai (az $a, b, c$ közti utak a $C$ ívei). Váltakozó $x', y', x'', y''$ esetén $\{x, y', y''\}$ és $\{y, x', x''\}$ egy felosztott $K_{3,3}$ két osztálya (az $y'$–$x'$, $x'$–$y''$, $y''$–$x''$, $x''$–$y'$ utak a $C$ négy íve). Mindkettő ellentmond a feltevésnek (az 1. lemma megfordítása: egy Kuratowski-részgráf minort is ad). $\blacksquare$

**4. lemma.** *Legyen $G$ olyan gráf, amelyben nincs Kuratowski-részgráf, de bármely új él behúzásával keletkezne („élmaximális”), és legalább $5$ csúcsa van. Ha $G$ nem 3-szorosan összefüggő, akkor van két olyan valódi feszített részgráfja, $G_1$ és $G_2$, hogy $G = G_1 \cup G_2$, $G_1 \cap G_2$ egyetlen él (két szomszédos csúcs), és $G_1$, $G_2$ is élmaximális Kuratowski-részgráf nélküli gráf.*

*Bizonyítás.* $G$ nem teljes (a $K_5$ maga Kuratowski-részgráf), így van egy legfeljebb $2$ elemű $S$ elvágó halmaza; válasszunk minimálisat, és legyen $G_1$, $G_2$ két olyan feszített részgráf, amelyek uniója $G$, közös részük $S$, és $S$ minden csúcsának van szomszédja $G_i - S$ minden komponensében (különben $S$ egy valódi része is elvágna). Egy új $e$ élt behúzva keletkezik egy $K$ Kuratowski-részgráf $G + e$-ben. A $K_5$ és a $K_{3,3}$ 3-szorosan összefüggő, ezért $K$ elágazási pontjait nem választhatja el $S$: mind ugyanabban a $G_i$-ben vannak, mondjuk $G_1$-ben. Így $K$ a $G_2 - S$ részt legfeljebb egyetlen, $S$ két csúcsa közötti útszakasszal érinti.

- Ha $S = \emptyset$, egy $G_1$ és $G_2$ közé húzott él egyetlen körnek sem lehetne része — ellentmondás.
- Ha $S = \{s\}$, kössük össze $s$ egy $G_1$-beli $v_1$ és egy $G_2$-beli $v_2$ szomszédját. A keletkező $K$ a $G_2$ oldalon csak az $s \dots v_2v_1$ szakaszt használhatja; ezt az $sv_1$ élre cserélve $G$-ben is Kuratowski-részgráfot kapnánk — ellentmondás.
- Tehát $S = \{x, y\}$. Ha $xy$ nem volna él, behúzva a keletkező $K$-ban az $xy$ élt egy $G_2$-n átmenő $x$–$y$ útra cserélhetnénk (ilyen van, mert $x$-nek és $y$-nak is van szomszédja $G_2 - S$ ugyanazon komponensében) — ellentmondás. Tehát $xy \in E(G)$.

Végül ha $G_1$-be húzunk egy új élt, a keletkező $K \subseteq G + e$-ben a $G_2$-n átmenő esetleges szakaszt az $xy$ élre cserélve Kuratowski-részgráfot kapunk $G_1 + e$-ben; tehát $G_1$ élmaximális, és ugyanígy $G_2$ is. $\blacksquare$

**A tétel bizonyítása.** Legyen $G$ Kuratowski-részgráf nélküli; húzzunk be új éleket, amíg ez lehetséges anélkül, hogy Kuratowski-részgráf keletkezne. Elég belátni, hogy a kapott élmaximális $G'$ síkbarajzolható; ezt a csúcsszám szerinti indukcióval tesszük. Ha $|V(G')| \le 4$, $G'$ a $K_4$ részgráfja, tehát síkbarajzolható. Ha $G'$ 3-szorosan összefüggő, az 1. lemma szerint nincs $K_5$ vagy $K_{3,3}$ minorja, így a 3. lemma szerint síkbarajzolható. Különben a 4. lemma szerint $G' = G_1 \cup G_2$, ahol $G_1 \cap G_2$ az $xy$ él, és $G_1$, $G_2$ kisebb élmaximális gráfok, tehát az indukciós feltevés szerint síkbarajzolhatók. Rajzoljuk le mindkettőt úgy, hogy az $xy$ él a külső tartomány határán legyen (ez mindig elérhető, lásd a 41. szakaszt), és illesszük a két rajzot össze az $xy$ él mentén: $G'$ síkrajzát kapjuk. $\blacksquare$
:::

::: kiegeszites
**Kiegészítés — Wagner tétele és a Négyszín-tétel.**
Klaus Wagner 1937-ben a Kuratowski-tétel egy rokon megfogalmazását adta: egy gráf pontosan akkor síkbarajzolható, ha nem tartalmaz $K_5$ vagy $K_{3,3}$ **minort** (ahol az élfelosztások helyett élek összehúzása is megengedett).
A síkgráfok elméletének leghíresebb eredménye a **Négyszín-tétel** (Appel és Haken, 1976): minden síkbarajzolható egyszerű gráf csúcsai kiszínezhetők legfeljebb $4$ színnel (azaz $\chi(G) \le 4$). Ezzel a tartományok színezésének kérdése is lezárul: a dualitás elve szerint (43. szakasz) egy síkrajz tartományainak jó színezése megfelel a duális síkgráf csúcsszínezésének, így bármely síkbeli térkép kiszínezhető legfeljebb $4$ színnel úgy, hogy a közös határvonallal rendelkező országok különböző színt kapjanak.
:::

---

## 41. Gráfok a gömbön és a tóruszon

Foglaljuk össze, amit a síkbarajzolható gráfokról eddig tudunk. Összefüggő síkgráfra $n - e + t = 2$ (Euler-formula); ebből egyszerű gráfra, $n \ge 3$ esetén $e \le 3n - 6$; végül a Kuratowski-tétel szerint egy gráf pontosan akkor **nem** síkbarajzolható, ha van benne $K_5$ vagy $K_{3,3}$, vagy ezek valamelyikének soros bővítése (felosztása).

**Mi a helyzet más felületekkel?** Ugyanúgy kérdezhetjük, hogy egy gráf lerajzolható-e metszés nélkül egy gömb vagy egy úszógumi (tórusz) felületére.

### A gömb

> **Tétel.** Egy $G$ gráf pontosan akkor síkbarajzolható, ha a gömbre is lerajzolható (metszés nélkül).

*Bizonyítás.* **$\Rightarrow$ („matrica”).** Egy síkrajz egy korlátos körlapon belül fekszik; ezt a körlapot — mint egy matricát — rásimíthatjuk a gömbre úgy, hogy a rajz semelyik két pontja ne kerüljön egymásra. (Pontosan: az alábbi sztereografikus vetítés megfordításával.)

**$\Leftarrow$ (sztereografikus vetítés).** Tegyük a gömböt a síkra úgy, hogy a **déli pólusában** ($D$) érintse a síkot, és legyen $\text{É}$ az **északi pólus**. A gömb minden $P \ne \text{É}$ pontjához rendeljük hozzá az $\text{É}P$ egyenes és a sík $P'$ metszéspontját.

\begin{center}
\begin{tikzpicture}[scale=1.1,
  pt/.style={circle, draw=black, fill=black, inner sep=1.4pt}
]
  \draw[thick] (-3.2, 0) -- (3.2, 0) node[right] {\footnotesize sík};
  \draw[thick] (0, 1) circle (1);
  \draw[draw=black!50, dashed] (0, 2) -- (-1, 0);
  \draw[draw=black!50, dashed] (0, 2) -- (2, 0);
  \node[pt, label=above:{\small $\text{É}$}] at (0, 2) {};
  \node[pt, label=below:{\small $D$}] at (0, 0) {};
  \node[pt, label=left:{\small $P$}] at (-0.8, 0.4) {};
  \node[pt, label=below:{\small $P'$}] at (-1, 0) {};
  \node[pt, label=right:{\small $Q$}] at (1, 1) {};
  \node[pt, label=below:{\small $Q'$}] at (2, 0) {};
  \node at (0, -0.9) {\footnotesize Sztereografikus vetítés: a gömb $P$ pontjának képe az $\text{É}P$ egyenes és a sík metszéspontja.};
\end{tikzpicture}
\end{center}

Ez a hozzárendelés **kölcsönösen egyértelmű** a gömbfelület $\text{É}$-tól különböző pontjai és a sík pontjai között: minden $P \ne \text{É}$ pontra az $\text{É}P$ egyenes nem párhuzamos a síkkal, tehát metszi, és megfordítva, minden $P'$ síkbeli pontra az $\text{É}P'$ egyenes $\text{É}$-n kívül pontosan egy pontban metszi a gömböt. A leképezés mindkét irányban folytonos, így folytonos görbéket folytonos görbékbe, egymást nem metsző görbéket egymást nem metsző görbékbe visz. Az $\text{É}$ pontnak nincs képe — a sík „végtelen távoli pontjának” felel meg: ha $P \to \text{É}$, akkor $P'$ a végtelenbe tart.

Ha tehát $G$ a gömbre van rajzolva, forgassuk el a gömböt úgy, hogy $\text{É}$ ne essen a rajzra (se csúcsra, se élre); ez lehetséges, mert a rajz nem fedi le a gömböt. A sztereografikus vetítés ekkor $G$ egy síkrajzát adja. $\blacksquare$

Közben a gömbre rajzolt gráfok és a síkba rajzolt gráfok tartományai is megfelelnek egymásnak, egyetlen különbséggel: **az $\text{É}$-t tartalmazó tartományból lesz a végtelen (külső) tartomány.** Ebből egy hasznos következmény adódik.

> **Következmény.** Egy síkgráf bármelyik tartománya „kifordítható” külső tartománnyá: van olyan síkrajz, amelyben éppen ez a tartomány a külső.

*Bizonyítás.* Vetítsük fel a síkrajzot a gömbre, forgassuk el a gömböt úgy, hogy $\text{É}$ a kiszemelt tartomány belsejébe kerüljön, majd vetítsük vissza a síkra. $\blacksquare$

Speciálisan bármelyik él (vagy csúcs) a külső tartomány határára vihető — ezt a Kuratowski-tétel bizonyításában használtuk.

### A tórusz

A tórusz (úszógumi) felületén több hely van: az élek a „fül” körül is megkerülhetik egymást.

> **Állítás.** A $K_5$ lerajzolható a tóruszra, sőt a $K_6$ is (és még a $K_7$ is).

A $K_5$-re ez könnyen látható: a $K_5$-ből egy élt elhagyva síkbarajzolható gráfot kapunk (próbáljuk ki!), ezt a tórusz egy darabjára rajzolva a hiányzó élt a „fül” körül vezethetjük át.

**Feladat.** Síkban és gömbön $n - e + t = 2$, ebből jött ki, hogy $e \le 3n - 6$. Mennyi lesz a tóruszon $n - e + t$, és mit kapunk ebből $e$-re? Ez a szám a **felületre jellemző**: nem függ attól, milyen gráfot rajzoltunk a felületre.

::: kiegeszites
**Kiegészítés — a feladat megoldása.** Képzeljük el a tóruszt egy négyzetként, amelynek szemközti oldalait (az irányítást megtartva) összeragasztottuk. Rajzoljuk fel a négyzet négy csúcsát (ez a ragasztás után egyetlen pont) és két oldalát (a ragasztás után két kör, egy „hosszanti” és egy „keresztirányú”): $n = 1$, $e = 2$, és a négyzet belseje az egyetlen tartomány, $t = 1$. Tehát
$$n - e + t = 1 - 2 + 1 = 0.$$
Általában is igaz, hogy minden olyan tóruszra rajzolt összefüggő gráfra, amelynek minden tartománya egy körlappal egyenértékű (nem „kerüli meg” a fület), $n - e + t = 0$, a többire pedig $n - e + t \ge 0$; ezt az Euler-formula bizonyításához hasonló invariáns-érveléssel lehet igazolni. A $g$ fülű („$g$ lyukú”) felületen a megfelelő szám $2 - 2g$ — ez a felület **Euler-karakterisztikája** (a gömbre $g = 0$, a tóruszra $g = 1$).

*Élszám-korlát.* Egyszerű gráf tóruszra rajzolt képében minden tartományt legalább $3$ él határol, így a 39. szakasz kettős leszámlálása szerint $3t \le 2e$. Az $n - e + t \ge 0$ egyenlőtlenségbe $t \le \frac{2e}{3}$-ot írva $n - e + \frac{2e}{3} \ge 0$, azaz
$$e \le 3n.$$
A $K_7$-nek $n = 7$ csúcsa és $e = 21 = 3 \cdot 7$ éle van: éppen a korlátot éri el (a tóruszra rajzolva $14$ háromszög tartománya van, $7 - 21 + 14 = 0$). A $K_8$-nak viszont $28 > 24$ éle van, tehát **a $K_8$ már nem rajzolható a tóruszra.** (A tóruszra rajzolt gráfok kromatikus száma legfeljebb $7$, és a $K_7$ mutatja, hogy ez éles — Heawood tétele.)
:::

## 42. Az Euler-féle poliédertétel és a szabályos testek

Euler eredetileg nem síkgráfokra, hanem **testekre** fogalmazta meg a formuláját.

> **Tétel (Euler-féle poliédertétel).** Ha egy konvex, síklapokkal határolt test (konvex poliéder) csúcsainak száma $c$, éleinek száma $\text{é}$, lapjainak száma $l$, akkor
> $$c - \text{é} + l = 2.$$

*Bizonyítás.* Válasszunk egy $O$ pontot a test belsejében, és tegyük a testet egy $O$ középpontú, őt tartalmazó gömbbe. Az $O$-ból kiinduló félegyenesekkel vetítsük ki a test felszínét a gömbre: mivel a test konvex, minden $O$-ból induló félegyenes pontosan egy pontban metszi a felszínét, így ez a vetítés kölcsönösen egyértelmű és folytonos. A test csúcsainak és éleinek képe egy **gömbre rajzolt gráf**, amelynek tartományai a lapok képei. A 41. szakasz szerint ezt (sztereografikus vetítéssel) levetíthetjük a síkra: egy összefüggő síkgráfot kapunk $n = c$ csúccsal, $e = \text{é}$ éllel és $t = l$ tartománnyal. Az Euler-formula szerint $c - \text{é} + l = 2$. $\blacksquare$

A tétel így is olvasható: *a $0$ dimenziós lapok (csúcsok), az $1$ dimenziós lapok (élek) és a $2$ dimenziós lapok száma váltakozó előjellel összeadva $2$.* Itt egy $k$ dimenziós **lap** a test határának egy olyan része, amely egy $k$ dimenziós síkban fekszik: a csúcs egyetlen pont, az él egy szakasz, a lap egy sokszög.

\begin{center}
\begin{tikzpicture}[scale=0.9,
  v/.style={circle, draw=black, fill=black, inner sep=1.5pt},
  edge/.style={draw=black!70, thick}
]
  \begin{scope}[xshift=-3cm]
    \node[v] (a) at (90:1.4) {};
    \node[v] (b) at (210:1.4) {};
    \node[v] (c) at (330:1.4) {};
    \node[v] (d) at (0, 0) {};
    \draw[edge] (a) -- (b) -- (c) -- (a);
    \draw[edge] (a) -- (d);
    \draw[edge] (b) -- (d);
    \draw[edge] (c) -- (d);
    \node at (0, -1.5) {\footnotesize tetraéder: $4 - 6 + 4 = 2$};
  \end{scope}
  \begin{scope}[xshift=3cm]
    \node[v] (p1) at (-1.2, -1.2) {};
    \node[v] (p2) at (1.2, -1.2) {};
    \node[v] (p3) at (1.2, 1.2) {};
    \node[v] (p4) at (-1.2, 1.2) {};
    \node[v] (q1) at (-0.5, -0.5) {};
    \node[v] (q2) at (0.5, -0.5) {};
    \node[v] (q3) at (0.5, 0.5) {};
    \node[v] (q4) at (-0.5, 0.5) {};
    \draw[edge] (p1) -- (p2) -- (p3) -- (p4) -- (p1);
    \draw[edge] (q1) -- (q2) -- (q3) -- (q4) -- (q1);
    \draw[edge] (p1) -- (q1);
    \draw[edge] (p2) -- (q2);
    \draw[edge] (p3) -- (q3);
    \draw[edge] (p4) -- (q4);
    \node at (0, -1.7) {\footnotesize kocka (hexaéder): $8 - 12 + 6 = 2$};
  \end{scope}
\end{tikzpicture}
\end{center}

### Hány szabályos test van?

> **Definíció.** Egy konvex poliéder **szabályos**, ha minden lapja ugyanolyan (egybevágó) szabályos $p$-szög, és minden csúcsában ugyanannyi, $q$ lap (és él) találkozik.

Itt $p \ge 3$ (egy sokszögnek legalább három oldala van) és $q \ge 3$ (egy test csúcsában legalább három lap találkozik).

> **Tétel.** Pontosan öt szabályos test van: a tetraéder, a kocka (hexaéder), az oktaéder, a dodekaéder és az ikozaéder.

*Bizonyítás.* Számoljuk meg kétféleképpen a (lap, él) illeszkedéseket: minden lapnak $p$ éle van, minden él két laphoz tartozik, így $pl = 2\text{é}$. Ugyanígy a (csúcs, él) illeszkedésekből $qc = 2\text{é}$. Ezeket az Euler-féle poliédertételbe helyettesítve:
$$\frac{2\text{é}}{q} - \text{é} + \frac{2\text{é}}{p} = 2 \quad\Longrightarrow\quad \frac{1}{p} + \frac{1}{q} = \frac{1}{2} + \frac{1}{\text{é}} > \frac{1}{2}.$$
Ha $p, q \ge 3$, és mindkettő legalább $4$ volna, akkor $\frac1p + \frac1q \le \frac12$ — tehát valamelyik $3$. Ha $p = 3$, akkor $\frac1q > \frac16$, így $q \in \{3, 4, 5\}$; ha $q = 3$, ugyanígy $p \in \{3, 4, 5\}$. Az öt lehetséges $(p, q)$ pár, és a belőlük számolt $\text{é} = \big(\frac1p + \frac1q - \frac12\big)^{-1}$, $c = \frac{2\text{é}}{q}$, $l = \frac{2\text{é}}{p}$ értékek:

| $(p, q)$ | test | $c$ | $\text{é}$ | $l$ |
|:-:|:--|:-:|:-:|:-:|
| $(3, 3)$ | tetraéder | 4 | 6 | 4 |
| $(4, 3)$ | kocka (hexaéder) | 8 | 12 | 6 |
| $(3, 4)$ | oktaéder | 6 | 12 | 8 |
| $(5, 3)$ | dodekaéder | 20 | 30 | 12 |
| $(3, 5)$ | ikozaéder | 12 | 30 | 20 |

Mind az öt test valóban létezik (megszerkeszthető). $\blacksquare$

Figyeljük meg a táblázat szimmetriáját: a $(p, q)$ és a $(q, p)$ pár szerepet cserél, a csúcsok és a lapok száma helyet cserél. A kocka és az oktaéder, illetve a dodekaéder és az ikozaéder egymás **duálisai**, a tetraéder önmaga duálisa — erről a 43. szakaszban a duális gráf kapcsán még lesz szó.

### Magasabb dimenzióban

Az Euler-féle poliédertétel $n$ dimenzióban is érvényes. Az $n$ dimenziós **poliédereket** (politópokat) véges sok, $(n-1)$ dimenziós „sík” (hipersík) által határolt féltér korlátos metszeteként definiálhatjuk; ezeknek $0, 1, \dots, n-1$ dimenziós lapjai vannak. Jelölje $f_k$ a $k$ dimenziós lapok számát.

**Példa: a kockák.** Egy $1$ dimenziós „kocka” egy szakasz. Ha egy egységnyi szakasz a rá merőleges irányban egy egységnyit mozdul, végigsöpör egy négyzetet; ha a négyzet a rá merőleges irányban mozdul el egy egységnyit, egy kockát söpör végig; a kocka egy negyedik, mindháromra merőleges irányban elmozdulva a $4$ dimenziós kockát (tesszeraktot) söpri végig. Egy söprésnél az $n$ dimenziós kocka minden $k$ dimenziós lapja kétszer jelenik meg (a kiinduló és a végső helyzetben), a $(k-1)$ dimenziós lapjai pedig egy-egy új $k$ dimenziós lapot söpörnek végig:
$$f_k(Q_{n+1}) = 2f_k(Q_n) + f_{k-1}(Q_n).$$
Így például a $3$ dimenziós kocka éleinek száma $2 \cdot 4 + 4 = 12$.

| | csúcs | él | lap | $3$D lap | váltakozó összeg |
|:-:|:-:|:-:|:-:|:-:|:-:|
| $1$D (szakasz) | 2 | | | | $2$ |
| $2$D (négyzet) | 4 | 4 | | | $4 - 4 = 0$ |
| $3$D (kocka) | 8 | 12 | 6 | | $8 - 12 + 6 = 2$ |
| $4$D (tesszerakt) | 16 | 32 | 24 | 8 | $16 - 32 + 24 - 8 = 0$ |

A váltakozó összeg tehát minden dimenzióra jellemző szám: páratlan dimenzióban $2$, páros dimenzióban $0$.

::: kiegeszites
**Kiegészítés — a kockák lapjai és az Euler–Poincaré-tétel.** Az $n$ dimenziós egységkocka $Q_n = [0, 1]^n$. Egy $k$ dimenziós lapját úgy kapjuk, hogy kiválasztjuk, melyik $k$ koordináta „mozoghat szabadon” ($\binom{n}{k}$ lehetőség), a többi $n - k$ koordinátát pedig rögzítjük $0$-ra vagy $1$-re ($2^{n-k}$ lehetőség):
$$f_k(Q_n) = \binom{n}{k}2^{n-k}.$$
(Ez kielégíti a söprési rekurziót a Pascal-szabály szerint.) A váltakozó összeg a binomiális tétellel:
$$\sum_{k=0}^{n-1}(-1)^k\binom{n}{k}2^{n-k} = \sum_{k=0}^{n}(-1)^k\binom{n}{k}2^{n-k} - (-1)^n = (2 - 1)^n - (-1)^n = 1 - (-1)^n.$$

Ugyanezt kapjuk az $n$ dimenziós **szimplexre** (szakasz, háromszög, tetraéder, …), amelynek $n + 1$ csúcsa van, és bármely $k + 1$ csúcsa egy $k$ dimenziós lapot feszít: $f_k = \binom{n+1}{k+1}$, és
$$\sum_{k=0}^{n-1}(-1)^k\binom{n+1}{k+1} = -\sum_{j=1}^{n}(-1)^{j}\binom{n+1}{j} = -\Big[(1 - 1)^{n+1} - 1 - (-1)^{n+1}\Big] = 1 - (-1)^n.$$

Ez nem véletlen: az **Euler–Poincaré-tétel** szerint *minden $n$ dimenziós konvex poliéderre*
$$f_0 - f_1 + f_2 - \dots + (-1)^{n-1}f_{n-1} = 1 - (-1)^n.$$
($n = 3$-ra ez az Euler-féle poliédertétel.) A tételt Schläfli mondta ki 1852-ben, a teljes bizonyítás Poincaré nevéhez fűződik; a bizonyítás az algebrai topológia eszközeit igényli, ezért itt nem tárgyaljuk.
:::

## 43. Tartományok színezése és a duális gráf

Most visszatérünk a 36. szakasz végén elhalasztott kérdéshez. Egy síkba rajzolt gráf a síkot tartományokra bontja — gondoljunk egy térképre, ahol a tartományok az országok. Szeretnénk az országokat úgy kiszínezni, hogy a szomszédos országok különböző színűek legyenek.

> **A tartományszínezés feltétele.** A **közös élben** szomszédos tartományok színe különböző.

Csak a közös *élben* való szomszédosság számít: ha két tartománynak csak egy közös *csúcsa* van, kaphatják ugyanazt a színt. Ha ezt is megtiltanánk, egy csúcs körül összefutó $k$ tartománynak (mint egy $k$ szeletre vágott torta szeleteinek) páronként különböző színt kellene kapnia, és így tetszőlegesen sok szín kellhetne.

(Feltesszük, hogy a gráfban nincs **híd**, vagyis olyan él, amelynek mindkét oldalán ugyanaz a tartomány fekszik — egy ilyen tartomány önmagával volna „szomszédos”, és semmilyen színezés nem volna jó.)

> **Tétel (Négyszín-tétel, Appel és Haken, 1976).** Minden síkba rajzolt (hídmentes) gráf tartományai kiszínezhetők legfeljebb $4$ színnel.

A tétel bizonyításának alapgondolata: megmutatták, hogy minden síkgráf visszavezethető véges sok (az eredeti bizonyításban közel kétezer, ma ismert változatában $633$) „elkerülhetetlen konfiguráció” valamelyikére, és ezek mindegyikét **számítógéppel** ellenőrizték. Ez volt az első jelentős matematikai tétel, amelynek bizonyítása számítógépes ellenőrzést igényelt; emberi erővel végigkövethető bizonyítása ma sem ismert. A kérdést Francis Guthrie vetette fel 1852-ben; Alfred Kempe 1879-es „bizonyításáról” Percy Heawood 1890-ben kimutatta, hogy hibás — de Kempe ötletéből Heawood bebizonyította a gyengébb **ötszín-tételt**: $5$ szín mindig elég. A még gyengébb, $6$ színre vonatkozó állítás könnyű. Mindkettőt bebizonyítjuk a 44. szakaszban.

### A duális gráf

A tartományok színezését a csúcsszínezésre vezetjük vissza.

> **Definíció (duális gráf).** Legyen $G$ egy síkba rajzolt gráf. A **duális gráfját**, $G^*$-ot így készítjük el:
>
> - $G$ minden tartományába egy-egy pontot teszünk: ezek $G^*$ **csúcsai**;
> - $G$ minden $e$ élén keresztül behúzunk egy $e^*$ élt, amely az $e$ két oldalán levő tartományok pontjait köti össze, $e$-t pontosan egyszer metszi, $G$ többi élét pedig nem metszi.
>
> Tehát $G$ csúcsai $\leftrightarrow$ $G^*$ tartományai, $G$ élei $\leftrightarrow$ $G^*$ élei, $G$ tartományai $\leftrightarrow$ $G^*$ csúcsai.

Két tartomány között **annyi** élt húzunk, ahány közös élük van (minden közös élen keresztül egyet), így $G^*$-ban többszörös élek is lehetnek; egy hídon keresztül húzott él hurokél. Az élek behúzhatók úgy, hogy ne messék egymást, ezért **$G^*$ is síkbarajzolható** — sőt a konstrukció rögtön egy síkrajzát adja.

\begin{center}
\begin{tikzpicture}[scale=1.0,
  v/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  dv/.style={circle, draw=black, fill=white, thick, inner sep=1.8pt},
  edge/.style={draw=black, thick},
  dual/.style={draw=black!55, thick, dashed}
]
  \node[v] (A) at (-1.5, 0) {};
  \node[v] (B) at (1.5, 0) {};
  \node[v] (C) at (0, 2.2) {};
  \draw[edge] (A) -- (B) -- (C) -- (A);
  \node[dv, label=above:{\footnotesize belső}] (I) at (0, 0.75) {};
  \node[dv, label=below:{\footnotesize külső}] (O) at (0, -1.3) {};
  \draw[dual] (I) -- (O);
  \draw[dual] (I) .. controls (-1.6, 1.6) and (-2.9, 0.2) .. (O);
  \draw[dual] (I) .. controls (1.6, 1.6) and (2.9, 0.2) .. (O);
  \node at (0, -2.0) {\footnotesize Egy háromszög ($n = 3$, $e = 3$, $t = 2$) duálisa: $2$ csúcs és $3$ párhuzamos él.};
\end{tikzpicture}
\end{center}

Összefüggő $G$ esetén a duális paraméterei $n^* = t$ és $e^* = e$, az Euler-formula szerint pedig $t^* = 2 - n^* + e^* = 2 - t + e = n$: a duálisnak éppen annyi tartománya van, ahány csúcsa $G$-nek. A szabályos testek élgráfjainál: a kocka duálisa az oktaéder (a kocka $6$ lapja az oktaéder $6$ csúcsa), a dodekaéderé az ikozaéder, a tetraéderé önmaga.

**A kapcsolat a színezéssel.** Két tartomány pontosan akkor szomszédos egy közös élben, ha a nekik megfelelő duális csúcsok össze vannak kötve. Tehát:

> **$G$ tartományainak jó színezése $\iff$ $G^*$ csúcsainak jó színezése.**

A tartományok kiszínezéséhez szükséges színek minimális száma tehát $\chi(G^*)$, és $G^*$ maga is síkbarajzolható gráf. **A tartományszínezés helyett tehát síkbarajzolható gráfok kromatikus számát kell meghatároznunk.** (Megfordítva, minden összefüggő síkgráf egy alkalmas síkgráf duálisa — lásd a 45. szakaszt —, így a négyszín-tétel ekvivalens azzal, hogy *minden síkbarajzolható gráf csúcsai kiszínezhetők $4$ színnel*. A többszörös élek a csúcsszínezésen nem változtatnak, hurokél pedig hídmentes $G$ esetén nincs.)

## 44. Az öt- és a hatszíntétel, a Fáry-tétel

Emlékeztető: $G$ síkbarajzolható gráf tartományainak színezése a $G^*$ duális gráf csúcsszínezésével egyenértékű, és $G^*$ is síkgráf. A kérdés tehát: **ha $G$ síkbarajzolható, mekkora lehet $\chi(G)$?**
$$G \text{ síkbarajzolható} \implies \chi(G) \le 4 \quad (\text{Négyszín-tétel}), \qquad \text{illetve} \qquad \chi(G) \le 5, \quad \chi(G) \le 6.$$
A négy szín nem csökkenthető: a $K_4$ síkbarajzolható, és $\chi(K_4) = 4$. A bizonyításokban azt használjuk ki, hogy **egy síkbarajzolható gráfnak kevés éle van** (legfeljebb $3n - 6$), **csúcsa viszont tetszőlegesen sok lehet**.

A színezésnél a többszörös élek és a hurokélek nem számítanak (a hurokél színezhetetlenné tenné a gráfot, a párhuzamos élek pedig ugyanazt a feltételt ismétlik), ezért elég **egyszerű** síkbarajzolható gráfokat vizsgálni.

> **Segédtétel.** Minden egyszerű síkbarajzolható gráfnak van legfeljebb $5$ fokú csúcsa.

*Bizonyítás* (lásd a 39. szakaszt is). Indirekt, tegyük fel, hogy minden fok legalább $6$. Ekkor $2e = \sum_{v \in V(G)}\deg(v) \ge 6n$, tehát $e \ge 3n$. Ha $n \ge 3$, ez ellentmond az $e \le 3n - 6$ korlátnak; ha $n \le 2$, minden fok legfeljebb $1$. $\blacksquare$

> **Tétel (hatszín-tétel).** Minden egyszerű síkbarajzolható gráf csúcsai kiszínezhetők $6$ színnel.

*Bizonyítás.* Teljes indukció a csúcsok $n$ száma szerint („$6$ színű ceruzát veszünk”). $n \le 6$-ra nyilvánvaló. Legyen $G$ egy $n$ csúcsú egyszerű síkbarajzolható gráf. A segédtétel szerint van egy $v$ csúcsa, amelyre $\deg(v) \le 5$. **Vágjuk le** $v$-t (töröljük az éleivel együtt). A maradék $n - 1$ csúcsú gráf is egyszerű és síkbarajzolható, így az indukciós feltevés szerint $6$ színnel színezhető. A levágott $v$ még nincs kiszínezve; legfeljebb $5$ szomszédja van, ezek legfeljebb $5$ színt foglalnak, tehát jut neki szín: a hatodik. $\blacksquare$

> **Tétel (ötszín-tétel, Heawood, 1890).** Minden egyszerű síkbarajzolható gráf csúcsai kiszínezhetők $5$ színnel.

*Bizonyítás.* Ugyanúgy indulunk: teljes indukció $n$ szerint, $n \le 5$-re nyilvánvaló. Legyen $v$ egy legfeljebb $5$ fokú csúcs. Ha $\deg(v) \le 4$, a hatszín-tétel bizonyítása szó szerint működik: $v$-t levágva a maradék $5$ színnel színezhető, és $v$ legfeljebb $4$ szomszédja mellett jut neki az ötödik szín.

A baj akkor van, ha $\deg(v) = 5$: ekkor a szomszédai, $u_1, \dots, u_5$ elvben mind az $5$ színt elhasználhatják. Ha $u_1, \dots, u_5$ páronként össze volnának kötve, egy $K_5$ volna a gráfban — ez **lehetetlen**, mert a $K_5$ nem síkbarajzolható, egy síkbarajzolható gráf részgráfja pedig maga is síkbarajzolható. **Van tehát kettő, $x = u_i$ és $y = u_j$, amelyek között nincs él.**

Ebből az $(x, y, v)$ hármasból **élösszehúzással** egy „szupercsúcsot” készítünk: az $xv$ és az $yv$ élt összehúzzuk, vagyis $x$-et és $y$-t „becsúsztatjuk” $v$-be. A három csúcs helyére egyetlen $s$ csúcs kerül, amely $x$, $y$ és $v$ minden (rajtuk kívüli) szomszédjával szomszédos; a keletkező többszörös éleket egyszeresnek vesszük. (Hurokél nem keletkezik, mert $x$ és $y$ nem szomszédosak.) Az összehúzás a síkrajzon az élek mentén is elvégezhető, így a kapott $G'$ gráf **egyszerű, síkbarajzolható**, és $n - 2$ csúcsa van. Az indukciós feltevés szerint $G'$ kiszínezhető $5$ színnel.

Majd **visszacsináljuk a csúcs-összevonást**: $G$ minden $x$-től, $y$-tól és $v$-től különböző csúcsa megtartja a $G'$-beli színét, $x$ és $y$ pedig megkapja az $s$ színét. Ez jó (részleges) színezés:

- a többi csúcs közti élek $G'$-ben is megvannak;
- $x$ bármely $v$-től különböző szomszédja $G'$-ben $s$-nek is szomszédja volt, tehát más színű, mint $s$, vagyis mint $x$ — és ugyanígy $y$-ra;
- $x$ és $y$ azonos színű, de **nincsenek összekötve**.

Kivéve az $xv$ és az $yv$ élt: $v$-t még nem színeztük ki. De $v$ öt szomszédja között $x$ és $y$ azonos színű, így a szomszédai legfeljebb $4$ színt használnak — **jut neki az ötödik színből!** $\blacksquare$

::: kiegeszites
**Kiegészítés — miért nem működik ugyanez négy színnel?** Négy színnel a gond már egy $4$ fokú csúcsnál jelentkezik (a szomszédai mind a négy színt elhasználhatják), és két nem szomszédos szomszéd sem mindig létezik (a $K_4$-ben például nincs). Kempe 1879-ben az ún. **Kempe-láncokkal** próbálkozott: ha $v$ szomszédai között az $a$ és $c$ színű $u_1$ és $u_3$ nem köthető össze csupa $a$ és $c$ színű csúcson át vezető úttal, akkor az $u_1$-et tartalmazó $\{a, c\}$-színű komponensben a két színt felcserélve $u_1$ is $c$ színű lesz, és $v$-nek felszabadul az $a$; ha pedig összeköthetők, a síkbarajzolhatóság miatt ez a lánc „elzárja” $u_2$-t $u_4$-től a $\{b, d\}$ színekben, és ott lehet cserélni. Ez $4$ fokú csúcsra működik, $5$ fokúra azonban két cserét kellene egyszerre végrehajtani, és ezek elronthatják egymást — ezt a hibát vette észre Heawood. Az ötszín-tételt Heawood éppen Kempe-láncokkal bizonyította; a fenti, élösszehúzásos bizonyítás ennek egy egyszerűbb változata.
:::

### A Fáry-tétel

Az eddigi rajzainkon az élek gyakran görbék voltak. Kiderül, hogy erre egyszerű gráfoknál nincs szükség.

> **Tétel (Fáry István, 1948).** Minden egyszerű síkbarajzolható gráf lerajzolható úgy is, hogy az élei (egyenes) szakaszok legyenek.

Az előadáson a tételt nem bizonyítottuk. Példa: minden szabályos test élgráfja ilyen — a kocka élgráfja például egy négyzetbe rajzolt kisebb négyzet, a csúcsaik összekötve (lásd a 42. szakasz ábráját), a tetraéderé egy háromszög a középpontjával. Ugyanez a gráf görbe élekkel is lerajzolható volna; a tétel szerint azonban mindig van „szép”, egyenes vonalú rajz.

::: kiegeszites
**Kiegészítés — a Fáry-tétel bizonyítása.** Elég **maximális síkgráfokra** (triangulációkra) bizonyítani, hiszen minden egyszerű síkgráf élek hozzávételével trianguláció részgráfjává tehető, és a kész egyenes vonalú rajzból a hozzávett éleket egyszerűen kitöröljük. Egy legalább $3$ csúcsú trianguláció síkrajzában minden tartomány — a külső is — háromszög. Azt bizonyítjuk teljes indukcióval: *egy trianguláció síkrajza egyenes vonalú rajzzá alakítható úgy, hogy a külső háromszög tetszőleges előre megadott háromszög legyen.*

$n = 3$-ra a gráf egy háromszög, kész. Legyen $n \ge 4$, és legyenek $a, b, c$ a külső háromszög csúcsai. A fokszámösszeg $2e = 6n - 12$; mivel $n \ge 4$-re minden fok legalább $3$, az $a, b, c$ fokszámainak összege legalább $9$, így ha minden más csúcs foka legalább $6$ volna, a fokszámösszeg legalább $6(n - 3) + 9 = 6n - 9$ lenne — ellentmondás. Van tehát egy $a, b, c$-től különböző, $d \le 5$ fokú $v$ csúcs. Egy belső csúcs szomszédai egy $w_1, \dots, w_d$ kört alkotnak ($v$ körül a tartományok háromszögek).

Töröljük $v$-t: egy $d$-szög alakú tartomány keletkezik. Bontsuk fel ezt $d - 3$ átlóval háromszögekre úgy, hogy ne keletkezzen többszörös él: $d = 3$-ra nem kell semmi; $d = 4$-re a két átló közül legfeljebb az egyik lehet már él (ha $w_1w_3$ és $w_2w_4$ is él volna a tartományon kívül, ezek metszenék egymást), a másikat húzzuk be; $d = 5$-re válasszunk egy $w_i$ csúcsot, amely a vele nem szomszédos két $w_j$-vel sincs összekötve, és húzzuk be belőle a két átlót. Ilyen $w_i$ van: a már meglevő $w_jw_l$ „átló-élek” a tartományon kívül futnak, ezért nem metszhetik egymást; egy ötszögnek legfeljebb két egymást nem metsző átlója van, és két ilyen átlónak közös végpontja van, így ezek együtt legfeljebb három $w_j$-t érintenek. Az így kapott $n - 1$ csúcsú trianguláció külső háromszöge ugyanaz, így az indukciós feltevés szerint egyenes vonalúan lerajzolható a megadott külső háromszöggel. Az új átlókat törölve a $w_1, \dots, w_d$ csúcsok egy legfeljebb ötszöget határolnak. Ismert (és elemi geometriai esetszétválasztással igazolható), hogy minden legfeljebb ötszögnek — akár konkáv is — van olyan belső pontja, ahonnan az összes csúcsa „látszik”, vagyis a sokszög belsejében haladó szakasszal köthető össze vele; hatszögekre ez már nem igaz, ezért kellett egy legfeljebb $5$ fokú csúcs. Ide helyezve $v$-t, és összekötve $w_1, \dots, w_d$-vel, a trianguláció egyenes vonalú rajzát kapjuk. $\blacksquare$
:::

## 45. A dualitás további kérdései

**Duális gráfok a természetben.** Síkbeli elektromos áramkörökben (ellenállásokkal, tekercsekkel, kondenzátorokkal) a duális hálózatban a **soros** kapcsolásokból **párhuzamosak** lesznek és fordítva: két tartomány között két párhuzamos él a duálisban két egymás utáni (soros) élnek felel meg. A villamosmérnököknél jól ismert **csillag–delta átalakítás** is lényegében a duális gráf gondolata: egy $3$ fokú csúcs körül álló „csillag” ($K_{1,3}$) duálisa egy háromszög („delta”).

*Gondolkodjunk el rajta:* a matematika számtalan területén szerepel az, hogy **duális** — a lineáris algebrában a duális tér, a projektív geometriában a pontok és egyenesek szerepcseréje, az optimalizálásban a duális lineáris program. A közös bennük, hogy egy struktúrához egy „tükörképet” rendelünk, amelyben a szerepek felcserélődnek, és kétszer tükrözve visszakapjuk az eredetit.

**Igaz-e, hogy $(G^*)^* = G$?** Tipikusan igaz, de lehetnek trükkök.

::: kiegeszites
**Kiegészítés — mikor igaz, hogy $(G^*)^* = G$?** Ha $G$ összefüggő síkgráf, akkor igen. A $G^*$ minden tartományában pontosan egy $G$-csúcs van: a $G$ egy $u$ csúcsa körül a $G$-élek $e_1, \dots, e_d$ körüljárási sorrendben követik egymást, a nekik megfelelő $e_1^*, \dots, e_d^*$ duális élek pedig egy zárt vonalat alkotnak $u$ körül, amely egy $G^*$-tartományt határol, és ebben $u$ az egyetlen $G$-csúcs. Mivel a 43. szakasz szerint $G^*$-nak éppen $n$ tartománya van, ez kölcsönösen egyértelmű megfeleltetés $G$ csúcsai és $G^*$ tartományai között. Ha tehát $(G^*)^*$ csúcsait éppen $G$ csúcsaiba tesszük, akkor az $e^*$ élen átmenő $(e^*)^*$ él az $e^*$ két oldalán levő $G^*$-tartomány $G$-csúcsait, vagyis $e$ két végpontját köti össze: visszakaptuk $G$-t (egy síkrajzát).

Ha $G$ **nem összefüggő**, a dolog elromlik: $G^*$ mindig összefüggő (bármely két tartomány között átmehetünk a közöttük levő éleken át), így $(G^*)^*$ is az, tehát nem lehet egyenlő $G$-vel. Például két diszjunkt háromszög duálisa egy $3$ csúcsú gráf (a két háromszög belseje és a közös külső tartomány), amelynek duálisa összefüggő.
:::

**Igaz-e, hogy ha $G$ és $H$ izomorf gráfok, akkor $G^*$ és $H^*$ is izomorf?** **Nem!** A duális nem csak a gráftól, hanem a **síkrajztól** is függ: ugyanannak a gráfnak lehetnek lényegesen különböző síkrajzai.

*Ellenpélda.* Legyen $G$ egy $v$ csúcsban összeragasztott két háromszög és egy négyszög (három kör, egyetlen közös csúccsal).

- Ha a három kört egymás mellé rajzoljuk, a tartományok: a két háromszög belseje ($3$-$3$ él), a négyszög belseje ($4$ él) és a külső tartomány, amelyet mind a $10$ él határol.
- Ha az egyik háromszöget a négyszög belsejébe rajzoljuk, a tartományok: két háromszög belseje ($3$-$3$), a négyszög belsejének a háromszögön kívüli része ($4 + 3 = 7$ él) és a külső tartomány ($4 + 3 = 7$ él).

A duális csúcsainak fokszáma a tartományok határoló éleinek száma, így az első duális fokszámai $3, 3, 4, 10$, a másodiké $3, 3, 7, 7$: a két duális nem izomorf, pedig mindkettő ugyanannak a gráfnak a duálisa. (Whitney tétele szerint a 3-szorosan összefüggő síkgráfoknak a gömbön lényegében egyetlen rajzuk van, így ezek duálisa egyértelmű — a fenti $G$-nek viszont elvágó csúcsa van.)

## 46. Gráfparaméterek: független és lefogó halmazok

Egy **gráfparaméter** egy gráfhoz rendelt szám, amely nem függ a gráf lerajzolásától (izomorf gráfokra ugyanaz). Eddig ezekkel találkoztunk:

| jelölés | jelentés |
|:-:|:--|
| $n = \lvert V(G) \rvert$ | a csúcsok száma |
| $e = \lvert E(G) \rvert$ | az élek száma |
| $\chi$ | a kromatikus szám |
| $\chi_e$ | az élkromatikus szám |
| $\Delta$ | a maximális fokszám |
| $\omega$ | a klikkszám (a legnagyobb teljes részgráf mérete) |
| $k$ | a komponensek száma |

Egy paramétert vagy **megszámolunk** ($n$, $e$, $k$), vagy egy **minimumként, illetve maximumként** definiálunk ($\chi$, $\chi_e$, $\Delta$, $\omega$). A szélsőértékek az érdekesek!

Most **négy új paramétert** vezetünk be.

> **Definíció.** Legyen $G$ egy gráf.
>
> - Egy $U \subseteq V(G)$ csúcshalmaz **független**, ha semelyik két eleme között nincs él. A **független csúcsok maximális száma** $\alpha(G)$.
> - Egy $T \subseteq V(G)$ csúcshalmaz **lefogó**, ha $G$ minden élének legalább egyik végpontja $T$-ben van (a csúcsok „lefogják” az összes élt). A **lefogó csúcsok minimális száma** $\tau(G)$.
> - Egy $M \subseteq E(G)$ élhalmaz **független**, ha semelyik két élének nincs közös csúcsa. Ezt **párosításnak** is nevezzük („Ki kivel hajlandó táncolni?” — egy ember egyszerre csak egy partnerrel táncol). A **független élek maximális száma** $\nu(G)$.
> - Egy $F \subseteq E(G)$ élhalmaz **lefogó** (lefedő), ha $G$ minden csúcsa illeszkedik $F$ valamelyik élére (az élek „lefedik” az összes csúcsot). A **lefogó élek minimális száma** $\rho(G)$.

Egy független csúcshalmaz minden részhalmaza is független, egy párosítás minden része is párosítás; a lefogó halmazoknál fordítva, a bővítés őrzi meg a tulajdonságot. Ezért a független halmazoknál a maximumot, a lefogóknál a minimumot keressük.

**Szóródás: jól van definiálva?** Az $\alpha$, $\tau$, $\nu$ mindig létezik (az üres halmaz független, az összes csúcs lefogó). A $\rho$ viszont csak akkor, ha **nincs $0$ fokú (izolált) csúcs**: egy izolált csúcsot egyetlen él sem fed le, így lefogó élhalmaz nem létezik.

*Példák.* Az ötszögre ($C_5$): $\alpha = 2$, $\tau = 3$, $\nu = 2$, $\rho = 3$. A $3$ levelű csillagra ($K_{1,3}$, $n = 4$): $\alpha = 3$ (a levelek), $\tau = 1$ (a középpont), $\nu = 1$ (bármely két él közös csúcsban, a középpontban találkozik), $\rho = 3$ (minden levélhez kell a saját éle).

### Nyilvánvaló egyenlőtlenségek

> **Állítás.** Minden gráfra $\nu \le \tau$, és ha nincs izolált csúcs, $\alpha \le \rho$.

*Bizonyítás.* **$\nu \le \tau$:** vegyünk $\nu$ független élt. Már ezek lefogásához is $\nu$ csúcs kell, mert egy csúcs a független élek közül legfeljebb egyre illeszkedik — és a többi él lefogásához esetleg további csúcsok. **$\alpha \le \rho$:** vegyünk $\alpha$ független csúcsot. Már ezek lefedéséhez is $\alpha$ él kell, mert egy él a független csúcsok közül legfeljebb egyet fed le (két független csúcs között nincs él) — és a többi csúcshoz esetleg további élek. $\blacksquare$

A bizonyítás könnyű, de érdemes megérteni a mintáját: egy „független” objektum minden elemét a „lefogó” objektum egy-egy *külön* eleme kell, hogy elintézze.

> **Tétel (Gallai-tétel).** Minden $n$ csúcsú gráfra
> $$\alpha + \tau = n,$$
> és ha a gráfban nincs izolált csúcs, akkor
> $$\nu + \rho = n.$$

A tétel bizonyítását a kiegészítésben részletezzük.

::: kiegeszites
**Kiegészítés — a Gallai-tétel bizonyítása.**

**$\alpha + \tau = n$.** *Egy $U$ csúcshalmaz pontosan akkor független, ha a komplementere, $V(G) \setminus U$ lefogó.* Valóban: $U$ független $\iff$ nincs él, amelynek mindkét vége $U$-ban van $\iff$ minden élnek van végpontja $V(G) \setminus U$-ban. A komplementerképzés tehát bijekció a független és a lefogó csúcshalmazok között, és az $|U|$ méretet $n - |U|$-ra változtatja; így a legnagyobb független halmaz komplementere a legkisebb lefogó halmaz: $\tau = n - \alpha$.

**$\nu + \rho \le n$, azaz $\rho \le n - \nu$.** Legyen $M$ egy $\nu$ élű párosítás; ez $2\nu$ csúcsot fed le. A maradék $n - 2\nu$ csúcs mindegyikéhez válasszunk egy rá illeszkedő élt (izolált csúcs nincs, így van ilyen). Az $M$ élei a kiválasztott élekkel együtt lefogó élhalmazt alkotnak, legfeljebb $\nu + (n - 2\nu) = n - \nu$ éllel. Tehát $\rho \le n - \nu$.

**$\nu + \rho \ge n$, azaz $\nu \ge n - \rho$.** Legyen $F$ egy $\rho$ élű lefogó élhalmaz. A minimalitás miatt $F$-ben nincs olyan él, amelynek mindkét végpontját más $F$-beli élek is lefedik (az ilyen él elhagyható volna). Ebből következik, hogy az $F$ élei által alkotott gráfban nincs kör és nincs $3$ hosszú út (ezek középső éle elhagyható volna), tehát $F$ minden komponense egy **csillag** (egy középpont néhány levéllel, esetleg egyetlen él). Az $F$ élei által alkotott gráf $n$ csúcsú (minden csúcsot lefed), körmentes és $\rho$ élű, így a fák élszámáról tanultak szerint (lásd a 24. szakasz $5 \Rightarrow 1$ bizonyítását) $n - \rho$ komponense van. Minden komponensből (csillagból) egy élt választva $n - \rho$ független élt kapunk. Tehát $\nu \ge n - \rho$.

A két egyenlőtlenségből $\nu + \rho = n$. $\blacksquare$

*Megjegyzés.* A Gallai-tétel szerint a két „nyilvánvaló egyenlőtlenség” egymással ekvivalens: $\alpha \le \rho \iff n - \tau \le n - \nu \iff \nu \le \tau$. Hogy mikor áll fenn egyenlőség — például $\nu = \tau$ —, az már mély kérdés: Kőnig Dénes tétele szerint páros gráfokban mindig.
:::

## 47. Párosítások: a Hall-, a Frobenius- és a Tutte-tétel

Az előző szakasz négy paramétere közül most a $\nu(G)$-vel foglalkozunk. Emlékeztetőül: egy $M \subseteq E(G)$ élhalmaz **párosítás**, ha semelyik két élének nincs közös csúcsa, és $\nu(G)$ a legnagyobb párosítás élszáma. A **cél: minél több élt** szeretnénk kiválasztani úgy, hogy az élek páronként diszjunktak legyenek.

> **Definíció.** Legyen $M$ a $G$ gráf egy párosítása.
>
> - Egy csúcs **lefedett** (fedett), ha illeszkedik $M$ valamelyik élére; különben **fedetlen**. Ha $uv \in M$, akkor $u$ és $v$ egymás **párja**.
> - $M$ **maximális párosítás**, ha $|M| = \nu(G)$, vagyis nincs több élű párosítás.
> - $M$ **teljes párosítás**, ha $G$ minden csúcsa lefedett. Ez az „ideális állapot”: ilyenkor $|M| = \frac{n}{2}$, tehát $\nu(G) = \frac{n}{2}$, és ez csak páros $n$-re lehetséges.

Vigyázat: egy párosítás lehet úgy is **bővíthetetlen** (nem vehető hozzá újabb él), hogy nem maximális. Egy $3$ élű úton a középső él bővíthetetlen párosítás, a maximális párosítás viszont a két szélső él.

### Speciális eset: páros gráfok

A legfontosabb speciális eset a **kétosztályú (páros) gráfoké**. Ezt $G(A, B)$-vel jelöljük: a csúcshalmaz $A \cup B$ ($A \cap B = \emptyset$), és minden él egy $A$-beli és egy $B$-beli csúcsot köt össze. Szemléletesen: $A$-ban fiúk, $B$-ben lányok vannak, az élek azt mutatják, ki kivel hajlandó táncolni.

Itt a természetes kérdés az, hogy **van-e $A$-t fedő párosítás**, vagyis olyan, amelyben minden $A$-beli csúcs kap párt. Ha egy $X \subseteq A$ halmazra
$$N(X) = \{\, b \in B : b\text{-nek van szomszédja } X\text{-ben} \,\}$$
az $X$ **szomszédsága** (angolul *neighbourhood*), akkor nyilván szükséges, hogy az $X$ csúcsainak legalább $|X|$ különböző szomszédja legyen.

> **Definíció (Hall-feltétel).** A $G(A, B)$ páros gráf teljesíti a **Hall-feltételt**, ha
> $$\forall X \subseteq A: \quad |N(X)| \ge |X|.$$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  edge/.style={draw=black!45, thin},
  medge/.style={draw=black, very thick}
]
  \draw[rounded corners=8pt, draw=black!50] (-0.4, 1.6) rectangle (4.4, 2.4);
  \draw[rounded corners=8pt, draw=black!50] (-0.4, -0.4) rectangle (4.4, 0.4);
  \node at (-0.9, 2) {$B$};
  \node at (-0.9, 0) {$A$};
  \foreach \i in {0,1,2,3,4} { \node[pt] (b\i) at (\i, 2) {}; }
  \foreach \i in {0,1,2,3} { \node[pt] (a\i) at (\i + 0.5, 0) {}; }
  \draw[edge] (a0) -- (b1); \draw[edge] (a1) -- (b0); \draw[edge] (a1) -- (b2);
  \draw[edge] (a2) -- (b3); \draw[edge] (a3) -- (b2);
  \draw[medge] (a0) -- (b0); \draw[medge] (a1) -- (b1); \draw[medge] (a2) -- (b2); \draw[medge] (a3) -- (b4);
  \node at (2, -1.0) {\footnotesize Egy $A$-t fedő párosítás (vastag élek) a $G(A, B)$ páros gráfban.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

> **Tétel (Hall-tétel).** A $G(A, B)$ páros gráfban pontosan akkor létezik $A$-t fedő párosítás, ha teljesül a Hall-feltétel.

> **Tétel (Frobenius-tétel).** A $G(A, B)$ páros gráfban pontosan akkor létezik teljes párosítás, ha $|A| = |B|$, és teljesül a Hall-feltétel.

Hogyan lehet egy maximális párosítást ténylegesen **megtalálni**? Erre a kérdésre a Hall-tétel bizonyítása is választ ad: a bizonyítás egy algoritmus.

### A Hall-tétel bizonyítása

**$\Rightarrow$ (a feltétel szükséges).** Legyen $M$ egy $A$-t fedő párosítás és $X \subseteq A$. Az $X$ csúcsaiból induló $|X|$ darab párosításél $B$-beli végpontjai **csupa különbözők** (a párosítás élei diszjunktak), és mindegyikük $N(X)$-ben van. Tehát $|N(X)| \ge |X|$.

**$\Leftarrow$ (a feltétel elégséges).** Tegyük fel, hogy teljesül a Hall-feltétel. Az alábbi algoritmus egy $A$-t fedő párosítást állít elő.

**1. lépés: mohó kezdés.** Mohón keresünk független éleket: amíg van olyan él, amelynek mindkét végpontja fedetlen, hozzávesszük a párosításhoz. Ez egy bővíthetetlen párosítás, de általában **nem optimális**.

Ha ezután egy $u \in A$ csúcs fedetlen maradt, akkor:

- $u$-nak van éle, különben $X = \{u\}$-ra $|N(X)| = 0 < 1$, és sérülne a Hall-feltétel (minden $A$-beli csúcsból indul ki él);
- $u$-nak csak olyan éle lehet, amely **fedett** $B$-beli csúcsba vezet: ha egy fedetlenbe vezetne, azt az élt az 1. lépés kiválasztotta volna.

**2. lépés: javító utak.** Színezzük a párosítás éleit pirosra, a többi élt feketére.

> **Definíció.** **Javító út** az az út, amely egy **fedetlen $A$-beli** csúcsból indul, felváltva „fölfelé” (nem párosításbeli, fekete élen $A$-ból $B$-be) és „lefelé” (párosításbeli, piros élen $B$-ből $A$-ba) halad, és egy **fedetlen $B$-beli** csúcsban ér véget. Ha nem követeljük meg, hogy a végpont fedetlen $B$-beli csúcs legyen, **javító út kezdeményről** (más néven **majdnem javító útról** vagy alternáló útról) beszélünk.

Ha találunk egy javító utat, akkor **javítunk**: az út mentén a fekete éleket pirosra, a piros éleket feketére színezzük. A javító út fekete élei eggyel többen vannak, mint a pirosak (fekete éllel kezdődik és végződik), így a piros élek száma eggyel nő. Az eredmény újra párosítás: az út belső csúcsai továbbra is pontosan egy piros élre illeszkednek, a két végpont pedig (amelyek eddig fedetlenek voltak) most egyre. A korábban fedett csúcsok fedettek maradnak, és a két végpont is fedetté vált.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  black/.style={draw=black, thin},
  red/.style={draw=black, line width=2.2pt}
]
  \begin{scope}
    \node[pt, label=below:{\footnotesize $u$}] (a0) at (0, 0) {};
    \node[pt] (b0) at (0.8, 1.5) {};
    \node[pt] (a1) at (1.6, 0) {};
    \node[pt] (b1) at (2.4, 1.5) {};
    \node[pt] (a2) at (3.2, 0) {};
    \node[pt, label=above:{\footnotesize $v$}] (b2) at (4.0, 1.5) {};
    \draw[black] (a0) -- (b0); \draw[red] (b0) -- (a1); \draw[black] (a1) -- (b1);
    \draw[red] (b1) -- (a2); \draw[black] (a2) -- (b2);
    \node at (2, -0.9) {\footnotesize javítás előtt: $2$ piros él};
  \end{scope}
  \draw[-{Stealth[scale=1.2]}, thick] (4.7, 0.75) -- (5.5, 0.75);
  \begin{scope}[xshift=6.2cm]
    \node[pt, label=below:{\footnotesize $u$}] (a0) at (0, 0) {};
    \node[pt] (b0) at (0.8, 1.5) {};
    \node[pt] (a1) at (1.6, 0) {};
    \node[pt] (b1) at (2.4, 1.5) {};
    \node[pt] (a2) at (3.2, 0) {};
    \node[pt, label=above:{\footnotesize $v$}] (b2) at (4.0, 1.5) {};
    \draw[red] (a0) -- (b0); \draw[black] (b0) -- (a1); \draw[red] (a1) -- (b1);
    \draw[black] (b1) -- (a2); \draw[red] (a2) -- (b2);
    \node at (2, -0.9) {\footnotesize javítás után: $3$ piros él};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

A 2. lépést addig ismételjük, amíg találunk javító utat. Mivel minden javítás eggyel növeli a párosítás méretét, az eljárás véget ér.

**Ellenőrzés (indirekt).** Tegyük fel, hogy már **nincs több javító út**, de van még egy **fedetlen** $u \in A$ csúcs. Legyen
$$T = \{\, b \in B : b\text{-be el lehet jutni } u\text{-ból javító út kezdeménnyel} \,\}.$$

**Állítás:** $T$ csúcsai mind **fedettek** (van párjuk $A$-ban). Ha volna köztük fedetlen, akkor az $u$-ból oda vezető javító út kezdemény javító út volna — de feltettük, hogy ilyen már nincs.

Legyen $T'$ a $T$-beli csúcsok párjainak halmaza. A párosítás bijekció $T$ és $T'$ között, így $|T'| = |T|$; továbbá $u \notin T'$, hiszen $u$ fedetlen. Nézzük az
$$X = T' \cup \{u\}$$
halmazt.

**Állítás:** $N(T' \cup \{u\}) = T$.

- *Az $u$ szomszédai $T$-ben vannak:* egy $u$-ból induló él maga is egy $1$ élű javító út kezdemény.
- *Egy $v' \in T'$ szomszédai $T$-ben vannak:* legyen $v \in T$ a $v'$ párja. Menjünk $u$-ból $v$-be javító út kezdeménnyel, onnan a piros élen le a $v'$ párjába, majd $v'$-ből egy újabb, fekete élen fel a $v'$ tetszőleges $w$ szomszédjába. Ez is javító út kezdemény (pontosabban: alternáló séta, amelyből alternáló út is kivágható), tehát $w \in T$. (Ha $w = v$, akkor $w \in T$ eleve.)
- *Megfordítva*, $T \subseteq N(X)$: egy $T$-beli csúcsba vezető javító út kezdemény utolsó éle $u$-ból vagy egy $T'$-beli csúcsból indul.

Ekkor viszont
$$|X| = |T'| + 1 = |T| + 1 > |T| = |N(X)|,$$
ami ellentmond a Hall-feltételnek. Tehát ha már nincs javító út, akkor minden $A$-beli csúcs fedett: az algoritmus $A$-t fedő párosítást talált. $\blacksquare$

A bizonyításból az is kiderül, hogy **egy párosítás pontosan akkor maximális, ha nincs hozzá javító út** — ez páros gráfokban a maximális párosítás keresésének alapja (magyar módszer, Kőnig Dénes és Egerváry Jenő nyomán).

::: kiegeszites
**Kiegészítés — Kőnig tétele: páros gráfban $\nu = \tau$.** A 46. szakasz végén említettük, hogy páros gráfokban a $\nu \le \tau$ egyenlőtlenség egyenlőséggel teljesül. A fenti algoritmus ezt is megmutatja.

Futtassuk a javító utas eljárást egy tetszőleges $G(A, B)$ páros gráfon (most a Hall-feltételt nem tesszük fel), amíg van javító út; legyen $M$ a kapott párosítás. Legyen $Z$ azon csúcsok halmaza, amelyekbe valamelyik **fedetlen** $A$-beli csúcsból javító út kezdeménnyel el lehet jutni (a fedetlen $A$-beli csúcsok is $Z$-ben vannak, $0$ hosszú úttal). Legyen
$$L = (A \setminus Z) \cup (B \cap Z).$$

- *$L$ lefogó.* Legyen $ab$ egy él ($a \in A$, $b \in B$). Ha $a \notin Z$, akkor $a \in L$. Ha $a \in Z$, akkor $b \in Z$: ha $ab$ fekete, akkor a kezdeményt az $ab$ éllel folytathatjuk; ha $ab$ piros, akkor $a$ fedett, így $a$-ba csak a párjából, $b$-ből juthattunk el, tehát $b \in Z$. Ekkor $b \in L$.
- *$|L| = |M|$.* $Z \cap B$ minden csúcsa fedett (különben javító út volna), és a párja $Z$-ben van; $A \setminus Z$ minden csúcsa is fedett (a fedetlen $A$-beliek $Z$-ben vannak). Egy $M$-beli él nem lehet egyszerre mindkét típusú (ha $b \in Z$, a párja is $Z$-ben van), és minden $L$-beli csúcs pontosan egy $M$-élre illeszkedik. Megfordítva, minden $M$-él egyik végpontja $L$-ben van: ha a $B$-beli vége $Z$-ben van, akkor az; ha nincs, akkor az $A$-beli vége sincs $Z$-ben (egy $Z$-beli fedett $A$-csúcsba csak a párjából jutunk), tehát az $A$-beli vége van $L$-ben. Így $|L| = |M|$.

Tehát $\tau \le |L| = |M| \le \nu$, és a 46. szakasz szerint $\nu \le \tau$, ezért $\nu = \tau = |M|$. Ez egyben azt is igazolja, hogy a javító utas algoritmus **maximális** párosítást ad. $\blacksquare$
:::

### A Frobenius-tétel bizonyítása

**$\Rightarrow$.** Egy teljes párosítás bijekciót létesít $A$ és $B$ között, így $|A| = |B|$; és mivel $A$-t is fedi, a Hall-tétel szerint teljesül a Hall-feltétel.

**$\Leftarrow$.** A Hall-tétel szerint van $A$-t fedő párosítás. Ennek $|A|$ éle $|A| = |B|$ különböző $B$-beli csúcsot fed le, vagyis $B$ minden csúcsát: a párosítás teljes. $\blacksquare$

*Megjegyzés: párosítás és mátrixok.* Legyen $|A| = |B| = N$, $A = \{a_1, \dots, a_N\}$, $B = \{b_1, \dots, b_N\}$, és készítsük el az $N \times N$-es **párosítási mátrixot**:
$$m_{ij} = \begin{cases} 1, & \text{ha } (a_i, b_j) \in E(G), \\ 0, & \text{különben.} \end{cases}$$
Egy teljes párosítás minden sorból és minden oszlopból pontosan egy $1$-est választ ki: ez éppen egy **bástyaelhelyezés** — $N$ darab, egymást nem ütő bástya a sakktábla $1$-es mezőin. A determináns kifejtési tagjai $\pm m_{1\sigma(1)} m_{2\sigma(2)} \cdots m_{N\sigma(N)}$ alakúak (ahol $\sigma$ az $\{1, \dots, N\}$ egy permutációja), és egy ilyen tag pontosan akkor nem $0$, ha a $\sigma$ által kijelölt mezőkön mind $1$-es áll. Tehát:

> **Egy $N \times N$-es $0$–$1$ mátrixnak pontosan akkor van nem $0$ kifejtési tagja, ha a hozzá tartozó páros gráfban van teljes párosítás.**

::: kiegeszites
**Kiegészítés — determináns vagy permanens?** A nem nulla kifejtési tagok előjelesen összeadódva kiolthatják egymást: a csupa $1$-es $2 \times 2$-es mátrix determinánsa $0$, pedig a $K_{2,2}$-ben két teljes párosítás is van. Tehát $\det M \ne 0$-ból következik teljes párosítás létezése, de fordítva nem. Az előjelek nélküli összeg, a **permanens** $\operatorname{per} M = \sum_\sigma \prod_i m_{i\sigma(i)}$ viszont éppen a teljes párosítások **számát** adja meg. (Érdekesség: a determináns gyorsan, Gauss-eliminációval kiszámítható, a permanens kiszámítása viszont nehéz feladat.)
:::

### Általános gráfok teljes párosításai: a Tutte-tétel

Nem páros gráfokban az „$A$” és „$B$” oldal nem értelmes, mégis meg lehet fogalmazni egy hasonló szükséges és elégséges feltételt. Ha $X \subseteq V(G)$, jelölje
$$c_{\mathrm{ptl}}(X)$$
a $G - X$ gráf (az $X$ csúcsainak és a rájuk illeszkedő éleknek a törlésével kapott gráf) **páratlan csúcsszámú komponenseinek** a számát.

> **Tétel (Tutte-tétel).** A $G$ gráfban pontosan akkor van teljes párosítás, ha
> $$\forall X \subseteq V(G): \quad c_{\mathrm{ptl}}(X) \le |X|.$$

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.9,
  pt/.style={circle, draw=black, fill=black, inner sep=1.2pt},
  comp/.style={draw=black!60, rounded corners=6pt},
  medge/.style={draw=black, thick}
]
  \draw[comp, fill=black!6] (2.2, 3.0) ellipse (1.6 and 0.55);
  \node at (4.2, 3.0) {$X$};
  \foreach \i/\x in {1/1.2, 2/1.9, 3/2.6, 4/3.2} { \node[pt] (x\i) at (\x, 3.0) {}; }
  % páratlan komponensek
  \draw[comp] (0.0, 0.8) ellipse (0.45 and 0.75);
  \draw[comp] (1.3, 0.8) ellipse (0.45 and 0.75);
  \draw[comp] (2.6, 0.8) ellipse (0.45 and 0.75);
  \node[pt] (p1) at (0.0, 1.3) {}; \node[pt] at (-0.15, 0.7) {}; \node[pt] at (0.15, 0.3) {};
  \node[pt] (p2) at (1.3, 1.3) {};
  \node[pt] (p3) at (2.6, 1.3) {}; \node[pt] at (2.45, 0.7) {}; \node[pt] at (2.75, 0.7) {}; \node[pt] at (2.45, 0.25) {}; \node[pt] at (2.75, 0.25) {};
  \draw[medge] (p1) -- (x1); \draw[medge] (p2) -- (x2); \draw[medge] (p3) -- (x3);
  % páros komponensek
  \draw[comp, dashed] (4.2, 0.8) ellipse (0.45 and 0.75);
  \node[pt] at (4.05, 1.1) {}; \node[pt] at (4.35, 1.1) {}; \node[pt] at (4.05, 0.5) {}; \node[pt] at (4.35, 0.5) {};
  \node[align=left, anchor=west] at (5.0, 1.0) {\footnotesize páratlan csúcsszámú komponensek (folytonos)\\ \footnotesize páros csúcsszámú komponens (szaggatott)};
  \node at (2.4, -0.5) {\footnotesize Minden páratlan komponensből legalább egy párosításél vezet $X$-be.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

**$\Rightarrow$ (a feltétel szükséges).** Legyen $M$ egy teljes párosítás és $X \subseteq V(G)$. Egy teljes párosítás élei háromféle helyen futhatnak: **$X$-en belül**, **egy komponensen belül**, vagy **egy komponens és $X$ között** — két különböző komponens között nem, hiszen $G - X$ különböző komponensei között nincs él. Egy páratlan csúcsszámú komponens csúcsait nem lehet a komponensen belül mind párba állítani, így minden páratlan komponensből **legalább egy párosításél vezet $X$-be**. Ezek az élek csupa különböző $X$-beli csúcsba vezetnek (a párosítás élei diszjunktak), tehát $c_{\mathrm{ptl}}(X) \le |X|$. $\blacksquare$

**$\Leftarrow$.** Ezt az irányt az előadáson nem bizonyítottuk.

::: kiegeszites
**Kiegészítés — a Tutte-tétel elégségességi irányának bizonyítása** (Lovász László gondolatmenete). Mondjuk, hogy $G$ teljesíti a **(T) feltételt**, ha minden $X \subseteq V(G)$-re $c_{\mathrm{ptl}}(X) \le |X|$. Tegyük fel, hogy $G$ teljesíti (T)-t; megmutatjuk, hogy van teljes párosítása.

*Előkészítés.* $X = \emptyset$-ra (T) szerint $G$-nek nincs páratlan csúcsszámú komponense, így $n$ páros. Ha $G$-hez hozzáveszünk egy $e$ élt, (T) teljesül marad: minden $X$-re a $G + e - X$ komponensei a $G - X$ komponenseiből úgy keletkeznek, hogy legfeljebb kettő összeolvad, és két páratlan összeolvadásából páros, egy páratlan és egy páros összeolvadásából páratlan, két páros összeolvadásából páros komponens lesz; a páratlan komponensek száma tehát nem nő. Ha $G$-nek nincs teljes párosítása, adjunk hozzá éleket, ameddig csak lehet úgy, hogy továbbra se legyen teljes párosítás; mivel a $K_n$-nek ($n$ páros) van teljes párosítása, ez egy $G^*$ gráfnál megáll. $G^*$ teljesíti (T)-t, nincs teljes párosítása, de **bármely új él hozzávételével lesz**. Elég tehát megmutatni, hogy ilyen $G^*$ nem létezik; a továbbiakban $G$ helyett $G^*$-ot írunk $G$-nek.

Legyen $U$ azon csúcsok halmaza, amelyek **minden más csúccsal szomszédosak**.

*1. eset: $G - U$ minden komponense teljes gráf.* Ekkor teljes párosítást készítünk. A páros csúcsszámú komponensek csúcsait a komponensen belül párba állítjuk (teljes gráf). Minden páratlan komponensből egy csúcs kivételével ugyanígy járunk el, a kimaradó csúcsot pedig egy-egy **különböző** $U$-beli csúccsal párosítjuk — ez (T) szerint lehetséges ($c_{\mathrm{ptl}}(U) \le |U|$), hiszen $U$ csúcsai mindenkivel szomszédosak. Az $U$-ban megmaradó $|U| - c_{\mathrm{ptl}}(U)$ csúcs száma páros (mert $n$ páros, és $n \equiv |U| + c_{\mathrm{ptl}}(U) \pmod 2$), és $U$ teljes gráfot feszít, így ezek is párba állíthatók. Ez teljes párosítás — ellentmondás.

*2. eset: $G - U$ valamelyik komponense nem teljes gráf.* Egy összefüggő, nem teljes gráfban van két nem szomszédos csúcs, amelyek távolsága $2$; így vannak olyan $a, b, c \notin U$ csúcsok, hogy $ab, bc \in E(G)$, de $ac \notin E(G)$. Mivel $b \notin U$, van olyan $d$ csúcs, hogy $bd \notin E(G)$ ($d \ne a, c$, mert azok $b$ szomszédai). A $G^*$ maximalitása miatt $G + ac$-nek van egy $M_1$, $G + bd$-nek egy $M_2$ teljes párosítása. Nyilván $ac \in M_1$ és $bd \in M_2$ (különben $G$-nek volna teljes párosítása).

Legyen $P$ egy olyan, $G$-ben haladó, **leghosszabb** út, amely $d$-ből indul a $d$-re illeszkedő $M_1$-éllel, és amelynek élei felváltva $M_1$-, illetve $M_2$-beliek. (A $d$-n átmenő $M_1$-él nem $ac$, hiszen $d \ne a, c$, tehát $G$-beli.) Minden csúcsra pontosan egy $M_1$- és egy $M_2$-él illeszkedik, így $P$ csak úgy akadhat el, hogy a következő él $G$-n kívüli ($ac$ vagy $bd$), vagy visszavezet $P$ egy csúcsába — ez utóbbi csak $d$ lehet ($P$ belső csúcsainak mindkét éle már $P$-n van), és ekkor az él $d$ $M_2$-éle, $bd$. Tehát $P$ az $a$, a $c$ vagy a $b$ csúcsban végződik.

- *$P$ a $b$-ben végződik.* Ekkor $P$ utolsó éle $M_1$-beli ($b$ $M_2$-éle a $bd \notin E(G)$). A $C = P + bd$ kör élei felváltva $M_1$- és $M_2$-beliek. Legyen $M = (M_2 \setminus E(C)) \cup (M_1 \cap E(C))$: ez teljes párosítás, és $bd$-t nem tartalmazza (az $C$-n van, de $M_1$-ben nincs), $ac$-t sem ($P \subseteq G$). Tehát $M$ a $G$ teljes párosítása — ellentmondás.
- *$P$ az $a$-ban vagy a $c$-ben végződik*, mondjuk $c$-ben (a két eset szimmetrikus, hiszen $ab$ és $bc$ is él). Ekkor $P$ utolsó éle $M_2$-beli. A $b$ nincs rajta $P$-n: ha rajta volna, csak az $M_1$-élén érhettünk volna oda (az $M_2$-éle nem $G$-beli), és ott $P$-nek véget kellett volna érnie. Így $C = P + cb + bd$ kör, amelyen $M_2$-beli és nem $M_2$-beli élek váltakoznak (a $c$-be érkező $M_2$-élt a $cb$ él, azt a $bd \in M_2$, azt a $d$-ből induló $M_1$-él követi). Legyen $M = (M_2 \setminus E(C)) \cup (E(C) \setminus M_2)$: ez teljes párosítás, és minden éle $G$-beli ($bd \in M_2 \cap E(C)$ kikerült, $cb \in E(G)$). Ellentmondás.

Minden esetben ellentmondásra jutottunk, tehát (T) teljesülése esetén $G$-nek van teljes párosítása. $\blacksquare$
:::

### Reguláris páros gráfok

> **Tétel.** Minden $r$-reguláris ($r \ge 1$) páros gráfban van teljes párosítás.

(Emlékeztetőül: $r$-reguláris, ha minden csúcs foka $r$.)

*Bizonyítás.* Legyen a gráf $G(A, B)$. A Frobenius-tételt alkalmazzuk.

1. **$|A| = |B|$.** Hány éle van a gráfnak? Minden él pontosan egy $A$-beli és egy $B$-beli csúcsra illeszkedik. Az $A$ szemszögéből $|A| \cdot r$ él van, a $B$ szemszögéből $|B| \cdot r$, tehát $|A| \cdot r = |B| \cdot r$, és $r \ge 1$ miatt $|A| = |B|$.
2. **A Hall-feltétel.** Legyen $X \subseteq A$. Az $X$-ből induló élek száma $|X| \cdot r$, és ezek mind $N(X)$-be vezetnek. Az $N(X)$ csúcsaira összesen $|N(X)| \cdot r$ él illeszkedik, ezek között vannak az $X$ és $N(X)$ közötti élek is. Tehát
$$|X| \cdot r = (X \text{ és } N(X) \text{ közötti élek száma}) \le |N(X)| \cdot r,$$
azaz $|X| \le |N(X)|$. $\blacksquare$

(A bizonyítás többszörös élek esetén is működik.)

*Megjegyzés.* Kell, hogy $G$ páros gráf legyen: az ötszög ($C_5$) $2$-reguláris, de nincs benne teljes párosítás (páratlan sok csúcsa van).

**Mi köze ennek a gráfparaméterekhez?** A maximális párosítás élszáma $\nu(G)$, és teljes párosítás pontosan akkor van, ha $\nu(G) = \frac{n}{2}$. A tétel tehát azt mondja, hogy $r$-reguláris páros gráfra ($r \ge 1$) $\nu(G) = \frac{n}{2}$. Egy másik paraméterrel, az élkromatikus számmal is szoros a kapcsolat:

> **Tétel.** Minden $r$-reguláris páros gráfban $\chi_e = r$.

*Bizonyítás.* $\chi_e \ge \Delta = r$ mindig igaz (egy csúcs $r$ éle csupa különböző színt kap). A felső becsléshez élszínezést készítünk; ebben **minden színosztály egy párosítás**. Az előző tétel szerint létezik teljes párosítás: ennek éleit színezzük **pirossal**, és töröljük ki őket. Minden csúcsról pontosan egy él tűnt el, így egy $(r-1)$-reguláris páros gráf marad. Ha $r - 1 \ge 1$, ebben is van teljes párosítás: ennek éleit színezzük a **második** színnel, és így tovább. A harmadik, …, $r$-edik szín után minden él színt kap, és az azonos színű élek páronként diszjunktak. Tehát $\chi_e \le r$. $\blacksquare$

Ez Kőnig élszínezési tételének (36. szakasz: páros gráfra $\chi'(G) = \Delta(G)$) a reguláris speciális esete. Egy tetszőleges páros gráf egyébként kiegészíthető $\Delta$-reguláris páros (multi)gráffá, így a fenti bizonyításból a Kőnig-tétel is következik.

## 48. A deficites Hall-tétel és a Kőnig-tétel

A Hall-tétel megmondja, mikor van $A$-t fedő párosítás. De mi a helyzet, ha a Hall-feltétel **nem** teljesül? Ekkor nincs $A$-t fedő párosítás — de mekkora a legnagyobb? A válasz meglepően pontos: a Hall-feltétel „hiánya” éppen a fedetlenül maradó csúcsok számát adja meg.

> **Definíció.** A $G(A, B)$ páros gráfban egy $X \subseteq A$ halmaz **hiánya** (deficitje) $|X| - |N(X)|$. A gráf hiánya
> $$d = \max_{X \subseteq A}\big(|X| - |N(X)|\big).$$

Mivel $X = \emptyset$-ra a hiány $0$, mindig $d \ge 0$; a Hall-feltétel pontosan azt jelenti, hogy $d = 0$. Ha a Hall-feltétel „$d$ híján” teljesül, vagyis minden $X \subseteq A$-ra $|N(X)| \ge |X| - d$, akkor a következő tétel szerint majdnem teljes a siker: csak $d$ csúcs marad ki.

> **Tétel (deficites Hall-tétel, Kőnig Dénes).** A $G(A, B)$ páros gráfban
> $$\nu(G) = |A| - d = |A| - \max_{X \subseteq A}\big(|X| - |N(X)|\big).$$

*Bizonyítás.* **$\nu \le |A| - d$.** Legyen $X$ egy $d$ hiányú halmaz, és $M$ egy tetszőleges párosítás. Az $X$-nek csak $N(X)$-beli csúcsokkal lehet párja, és ezek a párok különbözők, így $X$-ből legfeljebb $|N(X)|$ csúcs fedett. Legalább $|X| - |N(X)| = d$ csúcsa tehát fedetlen, vagyis $|M| \le |A| - d$.

**$\nu \ge |A| - d$.** Vegyünk hozzá $B$-hez $d$ új csúcsot, és mindegyiket kössük össze $A$ összes csúcsával. Az új $G'$ gráfban minden nemüres $X \subseteq A$-ra
$$|N_{G'}(X)| = |N(X)| + d \ge |X|,$$
mert $d$ a hiányok maximuma. $G'$ tehát teljesíti a Hall-feltételt, így van benne $A$-t fedő $M'$ párosítás. Ennek legfeljebb $d$ éle megy új csúcsba; ezeket elhagyva $G$-nek egy legalább $|A| - d$ élű párosítását kapjuk. $\blacksquare$

*Példa.* Legyen $A = \{a_1, a_2, a_3, a_4\}$, $B = \{b_1, b_2, b_3\}$, és az élek $a_1b_1$, $a_2b_1$, $a_3b_1$, $a_4b_2$, $a_4b_3$. Az $X = \{a_1, a_2, a_3\}$ halmazra $N(X) = \{b_1\}$, a hiány $2$; nagyobb hiány nincs. A tétel szerint $\nu = 4 - 2 = 2$, és valóban: az $a_1b_1$, $a_4b_2$ párosítás maximális.

### Kőnig tétele: $\nu = \tau$ páros gráfokban

A 46. szakaszban láttuk, hogy minden gráfban $\nu \le \tau$: a független élek lefogásához legalább annyi csúcs kell, ahány él van. Általános gráfban ez nem mindig egyenlőség: a háromszögben $\nu = 1$, de $\tau = 2$. Páros gráfokban azonban igen.

> **Tétel (Kőnig Dénes, 1931).** Minden páros gráfban a független élek maximális száma egyenlő az éleket lefogó csúcsok minimális számával:
> $$\nu(G) = \tau(G).$$

*Bizonyítás a deficites Hall-tételből.* Legyen $G = G(A, B)$, és $X \subseteq A$ egy maximális, $d$ hiányú halmaz. Legyen
$$L = (A \setminus X) \cup N(X).$$
**$L$ lefogó:** egy $ab$ él ($a \in A$, $b \in B$) esetén ha $a \notin X$, akkor $a \in L$; ha $a \in X$, akkor $b \in N(X) \subseteq L$. Tehát
$$\tau \le |L| = |A| - |X| + |N(X)| = |A| - d = \nu,$$
és $\nu \le \tau$ miatt $\nu = \tau$. $\blacksquare$

(A 47. szakasz kiegészítésében a javító utas algoritmusból is levezettük ugyanezt: a megtalált párosítás mellé az algoritmus egy ugyanakkora lefogó csúcshalmazt is ad, amely **bizonyítja**, hogy nagyobb párosítás nincs.)

A Gallai-tételekkel ($\alpha + \tau = n$, $\nu + \rho = n$) összevetve:

> **Következmény.** Ha $G$ izolált csúcs nélküli páros gráf, akkor $\alpha(G) = \rho(G)$: a független csúcsok maximális száma egyenlő a csúcsokat lefedő élek minimális számával.

*Bizonyítás.* $\alpha = n - \tau = n - \nu = \rho$. $\blacksquare$

**Mátrixos alak.** A 47. szakasz párosítási mátrixával (most tetszőleges $p \times q$ méretben) Kőnig tétele így szól: *egy $0$–$1$ mátrixban a független (semelyik kettő nem egy sorban vagy oszlopban álló) $1$-esek maximális száma egyenlő azon sorok és oszlopok minimális számával, amelyek együtt az összes $1$-est lefedik.* A sorok és oszlopok a csúcsok, az $1$-esek az élek, a független $1$-esek a párosítás, a lefedő sorok és oszlopok a lefogó csúcshalmaz.

## 49. Stabil párosítások

Eddig a párosításnál csak az számított, hogy két csúcs **összeköthető**-e. A valóságban a résztvevőknek gyakran **preferenciáik** is vannak: nem mindegy, kivel kerülnek párba.

> **Feladat (stabil házasság).** Adott $n$ fiú és $n$ lány. Mindenki rangsorolja a másik nem összes tagját (szigorú sorrendben, holtverseny nélkül). Keressünk olyan teljes párosítást (párba állítást), amelyben **nincs olyan fiú és lány, akik egymást jobban szeretnék a saját párjuknál**!

> **Definíció.** Legyen $M$ egy teljes párosítás. Egy $(f, l)$ fiú–lány pár **blokkoló pár**, ha nem egymás párjai $M$-ben, de $f$ a saját párjánál jobban szereti $l$-et, **és** $l$ is a saját párjánál jobban szereti $f$-et. $M$ **stabil**, ha nincs blokkoló pár.

Egy blokkoló pár tagjai „otthagynák” a párjukat egymásért, a párosítás tehát nem tartós. Gráfelméleti nyelven: a $K_{n,n}$ teljes páros gráf minden csúcsánál adott a szomszédok egy sorrendje, és olyan teljes párosítást keresünk, amelyhez nincs a fenti értelemben „jobb” él. Egyáltalán nem nyilvánvaló, hogy ilyen mindig létezik — a megfelelő „nem kétosztályú” feladatban (szobatárs-probléma) nem is mindig létezik.

> **Tétel (Gale–Shapley, 1962).** Minden ilyen preferenciarendszerhez létezik stabil párosítás.

A bizonyítás egy algoritmus, a **leánykérő algoritmus**:

1. Minden körben minden olyan fiú, akinek **nincs** ideiglenes párja, megkéri annak a lánynak a kezét, aki a listáján a legelőkelőbb helyen áll azok közül, akik őt még nem utasították el.
2. Minden lány az addig kapott ajánlatok (a régi ideiglenes partnerét is beleértve) közül a **legjobbat** megtartja („talán”), a többit **elutasítja** („nem”).
3. Ha minden fiúnak van ideiglenes párja, az algoritmus véget ér, és az ideiglenes párok véglegesek.

*Bizonyítás.* **Véget ér.** Minden fiú minden lányt legfeljebb egyszer kér meg, így legfeljebb $n^2$ leánykérés történik.

**Mindenki párt kap.** Egy lány, akit egyszer megkértek, attól kezdve mindig ideiglenes párral rendelkezik (csak jobbra cseréli). Ha egy fiút mind az $n$ lány elutasítana, akkor mind az $n$ lánynak volna ideiglenes párja — egy-egy tőle különböző fiú —, de csak $n - 1$ másik fiú van. Ellentmondás.

**A párosítás stabil.** Tegyük fel indirekt, hogy $(f, l)$ blokkoló pár: $f$ jobban szereti $l$-et, mint a végső párját, $l'$-t. Mivel $f$ a listáján felülről lefelé haladva kért meg lányokat, $l$-et $l'$ előtt megkérte, és $l$ elutasította — vagy rögtön, vagy később —, mégpedig egy általa jobbnak tartott fiú kedvéért. Egy lány partnere azonban csak javul, tehát $l$ végső párját is jobban szereti $f$-nél. Ez ellentmond annak, hogy $(f, l)$ blokkoló. $\blacksquare$

*Példa.* Fiúk: $A, B, C$; lányok: $x, y, z$. A preferenciák (balról jobbra csökkenő sorrendben):

| | 1. | 2. | 3. |
|:-:|:-:|:-:|:-:|
| $A$ | $x$ | $y$ | $z$ |
| $B$ | $x$ | $z$ | $y$ |
| $C$ | $y$ | $x$ | $z$ |
| $x$ | $C$ | $B$ | $A$ |
| $y$ | $A$ | $C$ | $B$ |
| $z$ | $A$ | $B$ | $C$ |

1. kör: $A$ és $B$ az $x$-et, $C$ az $y$-t kéri meg. Az $x$ megtartja $B$-t, elutasítja $A$-t; az $y$ megtartja $C$-t.
2. kör: $A$ az $y$-t kéri meg; az $y$ jobban szereti $A$-t, mint $C$-t, tehát $A$-t tartja meg, $C$-t elutasítja.
3. kör: $C$ az $x$-et kéri meg; az $x$ jobban szereti $C$-t, mint $B$-t: $C$-t tartja meg, $B$-t elutasítja.
4. kör: $B$ a $z$-t kéri meg, aki még szabad, és megtartja.

Az eredmény: $A$–$y$, $B$–$z$, $C$–$x$. Ellenőrizzük: $A$ jobban szeretné $x$-et, de $x$-nek $C$ az első helyezettje; $B$ is $x$-et szeretné, ugyanezért hiába; $C$ az $y$-t szeretné, de $y$-nak $A$ az első. Nincs blokkoló pár.

**Megjegyzések.** Az algoritmus a fiúk szempontjából **optimális**: minden fiú a lehető legjobb olyan lányt kapja, aki egyáltalán valamely stabil párosításban a párja lehet (ezt nem bizonyítjuk); a lányok szempontjából pedig a legrosszabbat. A tétel akkor is igaz, ha a gráf nem teljes páros gráf (nem mindenki fogadható el mindenkinek): ekkor a stabil párosítás nem feltétlenül teljes, de mindig létezik. Ilyen elven működnek a valódi „párosító piacok”: az amerikai rezidensképzés elosztása, és a magyar felsőoktatási felvételi rendszer is egy változatát használja. Shapley és Roth 2012-ben közgazdasági Nobel-emlékdíjat kapott ezekért az eredményekért.

---

## A III. rész összefoglalása

- **Gráf, egyszerű gráf, izomorfia:**
  - *Elmélet:* $G = (V, E)$; hurokél (két azonos végpont), többszörös él (párhuzamos élek). Egyszerű gráf: hurok- és többszörös él nélküli. Izomorfia: olyan $f\colon V(G) \to V(H)$ bijekció a csúcshalmazok között, amely éltartó ($uv \in E(G) \iff f(u)f(v) \in E(H)$). Komplementer gráf: $\overline{G} = (V, \binom{V}{2} \setminus E)$.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Egyszerű gráf élszáma: $0 \le |E(G)| \le \binom{n}{2} = \frac{n(n-1)}{2}$.
    - Komplementer élszáma: $e(G) + e(\overline{G}) = \binom{n}{2}$.
    - Önkomplementer gráf ($G \cong \overline{G}$): $e(G) = \frac{1}{2}\binom{n}{2} = \frac{n(n-1)}{4} \implies n \equiv 0 \text{ vagy } 1 \pmod 4$.
  - *Gyakorlati megközelítés:*
    - *Izomorfia igazolása:* adjunk meg egy explicit $f$ bijekciót a csúcsok között, és ellenőrizzük, hogy a szomszédsági viszonyok éppen megegyeznek.
    - *Izomorfia cáfolata (invariánsok):* keressünk olyan gráftulajdonságot, amelyben a két gráf eltér: csúcsszám ($n$), élszám ($e$), rendezett fokszámsorozat, adott hosszúságú körök száma (pl. van-e benne $C_3$ vagy $C_5$), átmérő, vagy szomszédos csúcspárok fokszámai (pl. fut-e él két 3-fokú csúcs között).
    - *Önkomplementer konstrukció:* $n=4$-re az út ($P_4$), $n=5$-re az ötszög ($C_5$).

- **Kézfogási lemma és fokszámok:**
  - *Elmélet:* $\deg(v)$ a $v$-re illeszkedő élek száma (hurokél kettővel számít). Kézfogási lemma: minden él pontosan két végpontnál járul hozzá a fokszámokhoz.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Kézfogási lemma: $\sum_{v \in V} \deg(v) = 2|E| = 2e$.
    - Paritási következmény: a páratlan fokú csúcsok száma mindig páros: $|\{v \in V : \deg(v) \equiv 1 \pmod 2\}| \equiv 0 \pmod 2$.
    - Átlagfokszám korlátai: $\delta(G) \le \overline{d} = \frac{2e}{n} \le \Delta(G)$.
    - Két diszjunkt halmaz ($A, B$) közötti élek: $\sum_{u \in A} \deg_B(u) = \sum_{v \in B} \deg_A(v) = e(A, B)$.
  - *Gyakorlati megközelítés:*
    - *Létezés cáfolata paritással:* ha egy feladatban megadott fokszámok között páratlan sok páratlan szám szerepel, azonnal kijelenthető, hogy ilyen gráf egyáltalán nem létezik (még többszörös élekkel sem).
    - *Ismeretlen fokszám meghatározása:* ha $n-1$ csúcs foka adott, a fokszámösszeg párossága meghatározza az utolsó csúcs paritását; egyszerű gráfban $0 \le \deg(v) \le n-1$ szűkíti a lehetséges értékeket.
    - *Kétoldali számlálás:* bipartite struktúrákban (pl. csapatok mérkőzései, sakktábla mezői) az éleket a két partíció felől összegezve egyenletet kapunk.

- **Séták, vonalak, utak, körök:**
  - *Elmélet:* Séta (csúcsok, élek ismétlődhetnek), vonal (élek különbözők), út (csúcsok különbözők, így élek is), kör (zárt út, hossza egyszerű gráfban $\ge 3$).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - $k$ csúcsú út hossza: $k - 1$ él; $k$ csúcsú kör hossza: $k$ él.
    - Távolság-axiómák: $d(u, v) \ge 0$, $d(u, u) = 0$, $d(u, v) = d(v, u)$, és háromszög-egyenlőtlenség: $d(u, w) \le d(u, v) + d(v, w)$.
    - Séta $\implies$ út lemma: ha van séta két csúcs között, akkor létezik legfeljebb olyan hosszú út is (a legrövidebb séta mindig út).
    - Kör létezése: ha minden csúcsra $\deg(v) \ge 2$, akkor a gráfban garantáltan van kör (a leghosszabb út végpontjának minden szomszédja az úton van).
  - *Gyakorlati megközelítés:*
    - *Körmentesség igazolása:* mutassuk meg, hogy leghosszabb út végpontjából nem indulhat visszafelé él (vagy hogy a gráf fa/erdő).
    - *Rövidítés (hurokeltávolítás):* ha egy sétában egy csúcs ismétlődik ($u \dots w \dots w \dots v$), a közbenső kört kivágva rövidebb sétához jutunk; az eljárás végén egyszerű utat kapunk.
    - *Átmérő számítása:* futtassunk BFS-t a csúcsokból, az átmérő a leghosszabb legrövidebb út hossza: $\operatorname{diam}(G) = \max_{u, v} d(u, v)$.

- **Összefüggőség és komponensek:**
  - *Elmélet:* A „van köztük séta” reláció ekvivalenciareláció a csúcshalmazon; az ekvivalenciaosztályok a gráf maximális összefüggő részgráfjai, az összefüggő komponensek (számuk $c$).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Összefüggő gráf élszáma: $e \ge n - 1$.
    - Nem összefüggő egyszerű gráf ($c \ge 2$) maximális élszáma: $e \le \binom{n-1}{2}$ (a legsűrűbb eset: $K_{n-1}$ és egy izolált csúcs).
    - Összefüggőségi garancia élszámból: ha $e > \binom{n-1}{2}$, akkor $G$ garantáltan összefüggő.
    - Összefüggőségi garancia fokszámból: ha $\forall v \in V: \deg(v) \ge \frac{n-1}{2}$, akkor $G$ összefüggő.
    - Komponensek összegzése: $n = \sum_{i=1}^c n_i$, $e = \sum_{i=1}^c e_i \le \sum_{i=1}^c \binom{n_i}{2}$.
  - *Gyakorlati megközelítés:*
    - *Komponensek szétbontása:* BFS vagy DFS indítása egy tetszőleges pontból; az elért csúcsok alkotnak egy komponenst. Ha maradt fedetlen pont, onnan új bejárást indítunk.
    - *Komplementer trükk:* ha $G$ nem összefüggő ($c \ge 2$), a komplementer gráfja, $\overline{G}$ mindig összefüggő, és átmérője $\operatorname{diam}(\overline{G}) \le 2$ (különböző komponensek csúcsai között közvetlen él fut, azonos komponensbeliekhez egy másik komponens csúcsán át vezet 2 hosszú út).

- **Fa, levelek és ekvivalens jellemzések:**
  - *Elmélet:* Fa = összefüggő, körmentes gráf. Erdő = körmentes gráf (komponensei fák). Levél = 1 fokú csúcs.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Fa élszáma: $e = n - 1$.
    - $c$ komponensű erdő élszáma: $e = n - c$.
    - Levelek száma: minden $n \ge 2$ csúcsú fának van legalább 2 levele: $|\{v : \deg(v) = 1\}| \ge 2$.
    - A fák 6 ekvivalens jellemzése ($n$ csúcsú $G$-re):
      1. $G$ fa (összefüggő és körmentes);
      2. $G$ minimális összefüggő (bármely élét törölve szétesik);
      3. $G$ maximális körmentes (bármely új élt behúzva kör keletkezik);
      4. $G$ összefüggő és $e = n - 1$;
      5. $G$ körmentes és $e = n - 1$;
      6. bármely két csúcsa között pontosan egy út vezet.
    - Belső fokszámok és levelek: $\sum_{v: \deg(v) \ge 3} (\deg(v) - 2) = (\text{levelek száma}) - 2$ (ha $\deg \ge 1$).
  - *Gyakorlati megközelítés:*
    - *Fa igazolása feladatban:* elegendő a fenti 6 tulajdonság közül KETTŐT belátni (pl. körmentes és $e = n - 1$, vagy összefüggő és $e = n - 1$), a többi 4 azonnal következik.
    - *Levélletépéses indukció:* fákra vonatkozó állítások bizonyításának alapeszköze: letépünk egy 1 fokú levelet az élével együtt (a maradék $n-1$ csúcsú fa), alkalmazzuk az indukciós feltevést, majd visszacsatoljuk a levelet.
    - *Fokszám-egyenlet fákra:* ha adott, hogy a fában csak bizonyos fokszámok szerepelnek, a $\sum d_i = 2(n-1)$ és $\sum 1 = n$ egyenletrendszerrel a csúcsszám vagy a levelek száma közvetlenül kiszámítható.

- **Feszítőfa és minimális összsúlyú feszítőfa (MST):**
  - *Elmélet:* Feszítőfa = feszítő részgráf, amely fa (minden csúcsot tartalmaz, $n - 1$ élű). Minden összefüggő gráfnak van. Minimális összsúlyú feszítőfa: $w(T) = \sum_{e \in T} w(e)$ minimális.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Feszítőfa élszáma mindig $e(T) = n - 1$.
    - Törölhető felesleges körélek száma összefüggő gráfban: $e - n + 1$ (ciklomatikus szám / körrang).
    - Vágási tulajdonság (Cut property): bármely $S \subset V$ vágást keresztező legkisebb súlyú él része valamely MST-nek.
    - Körtulajdonság (Cycle property): bármely kör szigorúan legnagyobb súlyú éle nem szerepelhet egyetlen MST-ben sem.
  - *Gyakorlati megközelítés:*
    - *Kruskal-algoritmus (optimista, él-orientált):*
      1. Rendezzük az éleket súly szerint növekvő sorrendbe: $w(e_1) \le w(e_2) \le \dots \le w(e_m)$.
      2. Mohón vegyük be a következő legolcsóbb élt, ha az a már kiválasztottakkal nem zár be kört.
      3. Pontosan $n - 1$ él bevétele után megállunk $\implies$ a kapott feszítőfa garantáltan minimális összsúlyú.
    - *Pesszimista algoritmus (körbontó):*
      1. Keressünk egy kört a gráfban.
      2. Töröljük a kör legdrágább élét (ha a törlés után a gráf összefüggő marad).
      3. Ismételjük, amíg van kör $\implies$ a végén megmaradó $n - 1$ élű gráf MST.
    - *MST-k számlálása:* ha minden élsúly különböző, az MST egyértelmű. Ha egyenlő súlyú élek vannak, a Kruskal-algoritmus azonos súlyú blokkjain belül választható alternatívák számait összeszorozva kapjuk a minimális feszítőfák számát.

- **Cayley-tétel és Prüfer-kód:**
  - *Elmélet:* Címkézett fák $V = [n]$. Prüfer-kód: bijekció az $n$ csúcsú címkézett fák és $[n]^{n-2}$ sorozatok között.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Cayley-tétel: az $n$ csúcsú címkézett fák száma:
      $$T_n = n^{n-2}$$
    - Prüfer-kód hossza: $n - 2$.
    - Fokszám és kód-előfordulás: a $v$ csúcs pontosan $\deg(v) - 1$-szer szerepel a Prüfer-kódban.
    - Levelek a kódban: $\deg(v) = 1 \iff v$ NEM szerepel a Prüfer-kódban.
    - Adott fokszámsorozatú címkézett fák száma (multinomiális együttható):
      $$\frac{(n-2)!}{\prod_{i=1}^n (d_i - 1)!}$$
    - Olyan fák száma, ahol az 1-es csúcs foka $d$: $\binom{n-2}{d-1}(n-1)^{n-2-(d-1)}$; speciálisan ha az 1-es csúcs levél: $(n-1)^{n-2}$.
  - *Gyakorlati megközelítés:*
    - *Fa $\to$ Prüfer-kód kódolás:*
      1. Keresd meg a fa pillanatnyi legkisebb címkéjű levelét.
      2. Írd fel a szomszédját a kódba.
      3. Töröld a levelet az élével együtt.
      4. Ismételd $n - 2$-szer.
    - *Prüfer-kód $\to$ Fa dekódolás:*
      1. Írd fel a még fel nem használt csúcsokat: $\{1, 2, \dots, n\}$.
      2. Keresd meg a legkisebb olyan csúcsot, amely **nem szerepel a hátralévő kódban**.
      3. Kösd össze a kód legelső elemével.
      4. Húzd ki a csúcsot a listából és az első elemet a kódból.
      5. A kód elfogytakor maradó 2 csúcsot kösd össze egy éllel!
    - *Kód alakja:* csupa egyforma szám $(c, c, \dots, c) \implies$ $c$ közepű csillag ($K_{1, n-1}$); csupa különböző szám a kódban $\implies$ útgráf.

- **Fokszámsorozatok realizálása:**
  - *Elmélet:* $d_1 \le d_2 \le \dots \le d_n$ megvalósítható-e gráfként? I. Hurok és többszörös él megengedett; II. Hurokmentes multigráf; III. Egyszerű gráf; +1. Fa.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - I. Típus (multigráf hurokkal): $\sum d_i$ páros.
    - II. Típus (hurokmentes multigráf): $\sum d_i$ páros ÉS $d_n \le \sum_{i=1}^{n-1} d_i$.
    - III. Típus (Erdős–Gallai-tétel egyszerű gráfra, csökkenő $D_1 \ge \dots \ge D_n$ sorrendre): $\sum D_i$ páros ÉS minden $1 \le k \le n$-re:
      $$\sum_{i=1}^k D_i \le k(k-1) + \sum_{i=k+1}^n \min(D_i, k)$$
    - +1. Típus (Fa, $d_i \ge 1$): pontosan akkor realizálható fával, ha $\sum_{i=1}^n d_i = 2(n-1)$.
  - *Gyakorlati megközelítés:*
    - *Havel–Hakimi algoritmus (lépésről lépésre egyszerű gráfra):*
      1. Rendezzük a fokszámigényeket csökkenő sorrendbe: $(D_1, D_2, \dots, D_n)$.
      2. Hagyjuk el a legnagyobb $D_1 = \Delta$ elemet.
      3. Vonjunk le 1-et a rákövetkező $\Delta$ darab legfelső tagból: $(D_2 - 1, D_3 - 1, \dots, D_{\Delta+1} - 1, D_{\Delta+2}, \dots)$.
      4. Rendezzük újra csökkenőbe a kapott sorozatot.
      5. Ismételjük: ha csupa 0-hoz érünk $\implies$ REALIZÁLHATÓ (a behúzott élek adják a konstrukciót). Ha negatív tag keletkezne vagy nincs elég elem a levonáshoz $\implies$ NEM REALIZÁLHATÓ.
    - *Gyors ellenőrzések egyszerű gráfra:* $\Delta \le n - 1$; ha van $n-1$ fokú csúcs, mellette nem állhat 0 fokú; a kézfogási összeg páros.

- **Reguláris gráfok:**
  - *Elmélet:* Minden csúcs foka azonos: $\forall v \in V: \deg(v) = r$ ($r$-reguláris gráf).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Élszám: $e = \frac{n \cdot r}{2} \implies n \cdot r = 2e$ páros.
    - Páratlan fokszám paritása: ha $r$ páratlan, akkor a csúcsszám $n$ szükségképpen páros (pl. 3-reguláris gráfnak páros sok csúcsa van).
    - Egyszerű gráfban: $0 \le r \le n - 1$.
    - Komplementer: $r$-reguláris egyszerű gráf komplementere $(n - 1 - r)$-reguláris.
  - *Gyakorlati megközelítés:*
    - *Szerkezet kis $r$-ekre:*
      - $r=0$: üres gráf (csupa izolált pont).
      - $r=1$: diszjunkt független élek uniója (teljes párosítás, $n$ páros).
      - $r=2$: diszjunkt körök uniója ($C_{k_1} \cup C_{k_2} \dots$).
      - $r=3$ (köbös gráf): páros $n$; konstrukció: $n$ hosszú kör szemközti/átellenes húrokkal ($v_i$ összekötve $v_{i+n/2}$-vel).
    - *Létezési feladatok:* adott $n$ és $r$ esetén ha $n \cdot r$ páros és $r \le n - 1$, mindig létezik $r$-reguláris egyszerű gráf.

- **Euler-séta és Euler-körséta:**
  - *Elmélet:* Euler-séta: minden élen pontosan egyszer áthaladó vonal. Euler-körséta: zárt Euler-séta (visszatér a kiindulópontjába).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Euler-körséta létezése $\iff$ a gráf összefüggő (az izolált pontoktól eltekintve) ÉS minden csúcs foka páros:
      $$\forall v \in V: \deg(v) \equiv 0 \pmod 2$$
    - Nyílt Euler-séta létezése $\iff$ a gráf összefüggő ÉS a páratlan fokú csúcsok száma pontosan 2:
      $$|\{v \in V : \deg(v) \text{ páratlan}\}| = 2$$
      (A séta az egyik páratlan csúcsból indul és a másikban végződik).
    - Éllefedés vonalakkal: ha $2k$ páratlan fokú csúcs van ($k \ge 1$), az élek minimálisan $k$ darab élidegen vonallal fedhetők le.
  - *Gyakorlati megközelítés:*
    - *Eldöntési algoritmus:* hagyjuk el az izolált csúcsokat; ellenőrizzük az összefüggőséget; számoljuk meg a páratlan fokú csúcsokat ($0 \implies$ zárt Euler-körséta; $2 \implies$ nyílt Euler-séta; egyébként nincs).
    - *Hierholzer-algoritmus konstrukcióhoz:* induljunk el tetszőleges pontból és járjunk be egy kört a még szabad éleken; ha maradt be nem járt él, a meglévő kör egy érintett csúcsából indítsunk újabb körvonalat a maradék éleken, és fűzzük be az eredetibe.

- **Hamilton-út és Hamilton-kör (szükséges feltételek):**
  - *Elmélet:* Hamilton-út: minden csúcsot pontosan egyszer tartalmazó út ($n - 1$ él). Hamilton-kör: minden csúcsot tartalmazó kör ($n$ él). Eldöntése NP-teljes feladat.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Vágási feltétel Hamilton-körre: bármely nemüres $S \subset V$ csúcshalmazra a $G - S$ gráf komponenseinek száma:
      $$c(G - S) \le |S|$$
    - Vágási feltétel Hamilton-útra: bármely $S \subset V$ csúcshalmazra:
      $$c(G - S) \le |S| + 1$$
    - Páros gráfban ($G(A, B)$):
      - van Hamilton-kör $\implies |A| = |B|$;
      - van Hamilton-út $\implies ||A| - |B|| \le 1$.
  - *Gyakorlati megközelítés (Cáfolati receptek):*
    - *Csúcstörléses cáfolat ($S$ megadása):* keressünk egy olyan $S$ csúcshalmazt (pl. elvágó csúcsok, csillagközepek), amelynek elhagyásával a megmaradó komponensek száma meghaladja $|S|$-et (útnál $|S|+1$-et) $\implies$ NEM lehet Hamilton-kör/út.
    - *Fokszámkényszeres cáfolat (2-fokú csúcsok):* Hamilton-körben minden csúcsból pontosan 2 él szerepel. Ha egy csúcs foka 2, mindkét éle kötelező. Ha ezáltal egy másik csúcshoz már 3 kötelező él futna be, vagy a kötelező élek egy $n$-nél rövidebb kört zárnak be $\implies$ NEM lehet Hamilton-kör.
    - *Petersen-gráf cáfolata:* külső ötszög és belső csillag közötti küllők számlálása paritással (nem tartalmazhat 5 hosszú kört részgráfként).

- **Hamilton-kör elégséges feltételei (Dirac és Ore):**
  - *Elmélet:* Ha a gráf csúcsainak foka elég nagy, a gráfban garantáltan létezik Hamilton-kör.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Ore-tétel ($n \ge 3$, egyszerű gráf): ha bármely két **nem szomszédos** $u, v$ csúcspárra:
      $$\deg(u) + \deg(v) \ge n \implies G\text{-ben van Hamilton-kör.}$$
    - Dirac-tétel ($n \ge 3$, egyszerű gráf): ha minden csúcsra:
      $$\deg(v) \ge \frac{n}{2} \implies G\text{-ben van Hamilton-kör.}$$
      (A Dirac-tétel az Ore-tétel speciális esete, mert $\deg(u) + \deg(v) \ge \frac{n}{2} + \frac{n}{2} = n$).
    - Élszám alapú elégséges feltétel: ha $e > \binom{n-1}{2} + 1 \implies G$-ben van Hamilton-kör.
  - *Gyakorlati megközelítés:*
    - *Elégségesség ellenőrzése:* nézzük meg a minimális fokszámot: ha $\delta(G) \ge n/2$, Dirac azonnal adja a választ. Ha van kisebb fokú csúcs, de minden nem szomszédos pár fokszámösszege $\ge n$, az Ore-tétel alkalmazható.
    - *Típushiba elkerülése:* Dirac és Ore CSAK ELÉGSÉGES feltételek! Ha nem teljesülnek, abból NEM következik, hogy nincs Hamilton-kör (pl. a $C_n$ körgráf sem teljesíti $n \ge 5$-re, mégis van benne Hamilton-kör). Cáfolathoz a szükséges feltételeket kell használni!

- **Csúcsszínezés és kromatikus szám:**
  - *Elmélet:* Jó csúcsszínezés: $uv \in E \implies c(u) \ne c(v)$. Kromatikus szám: $\chi(G)$ a minimális színszám. A színosztályok diszjunkt független csúcshalmazok: $V = \bigcup_{i=1}^k V_i$.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Alapvető szendvics-korlát:
      $$\omega(G) \le \chi(G) \le \Delta(G) + 1$$
      (Alsó korlát a klikkszám $\omega(G)$, felső korlát a mohó színezés).
    - Független számból adódó alsó korlát:
      $$\chi(G) \ge \frac{n}{\alpha(G)}$$
    - Brooks-tétel: ha $G$ összefüggő egyszerű gráf, és $G \ne K_n$, valamint $G \ne C_{2k+1}$:
      $$\chi(G) \le \Delta(G)$$
    - Nevezetes értékek: $\chi(K_n) = n$; $\chi(C_{2k+1}) = 3$; $\chi(C_{2k}) = 2$; $\chi(\text{fa}) = 2$ ($n \ge 2$).
  - *Gyakorlati megközelítés:*
    - *$\chi(G)$ meghatározása (alsó és felső becslés illesztése):*
      1. **Alsó korlát ($\chi \ge k$):** mutassunk $K_k$ teljes részgráfot ($\omega \ge k$), VAGY páratlan kört ($k=3$), VAGY alkalmazzuk a $\chi \ge \lceil n/\alpha(G) \rceil$ összefüggést.
      2. **Felső korlát ($\chi \le k$):** készítsünk konkrét jó színezést $k$ színnel (adjuk meg a független színosztályokat).
      3. Ha a két szám egybeesik, a kromatikus szám bizonyítottan $k$.
    - *Mohó színezés heurisztika:* csökkenő fokszám szerinti sorrendben színezve a mohó algoritmus a gyakorlatban gyakran $\Delta + 1$-nél jóval kevesebb színt használ.

- **Páros gráfok és 2-színezhetőség:**
  - *Elmélet:* $G$ páros (kétosztályú) $\iff \chi(G) \le 2 \iff V = A \cup B$ és minden él $A$ és $B$ között fut.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Páros gráfok karakterizációja: $G$ páros $\iff$ $G$-ben nincs páratlan kör (minden köre páros hosszúságú).
    - Maximális élszám egyszerű páros gráfban:
      $$e \le |A| \cdot |B| \le \lfloor n^2 / 4 \rfloor$$
      (Mantel-tétel, 54. szakasz: háromszögmentes gráfra is ez a korlát; egyenlőség a kiegyensúlyozott $K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$ teljes páros gráfra áll fenn).
    - Speciálisan: minden fa páros gráf; minden páros gráf háromszögmentes ($\omega \le 2$).
  - *Gyakorlati megközelítés:*
    - *BFS rétegezés (2-színezés előállítása és páratlan kör detektálása):*
      1. Válasszunk ki egy $v_0$ gyökeret, és osszuk rétegekre a csúcsokat a távolságuk szerint: $L_i = \{u : d(v_0, u) = i\}$.
      2. Legyen $A = \bigcup L_{\text{páros}}$ és $B = \bigcup L_{\text{páratlan}}$.
      3. Ha fut él rétegen belül ($u, v \in L_i$) $\implies$ a legközelebbi közös őssel páratlan kör keletkezik $\implies$ a gráf NEM páros!
      4. Ha minden él szomszédos rétegek között fut $\implies$ a gráf PÁROS, és $(A, B)$ a jó 2-színezés.
    - *Párosság cáfolata:* mutassunk rá egyetlen páratlan körre (háromszög, ötszög stb.).

- **Számítási bonyolultság a színezésben:**
  - *Elmélet:* Mely színezési problémák oldhatók meg gyorsan (polinomiális időben), és melyek számítástudományi szempontból nehezek?
  - *Kötelező osztályozás & tételek:*
    - $\chi(G) \le 2$ eldöntése: $\mathcal{O}(n + e)$ lineáris idő (BFS-sel) $\implies \mathbf{P}$.
    - $\chi(G) \le 3$ eldöntése: **NP-teljes** (Karp, 1972).
    - $\chi(G) \le k$ eldöntése ($k \ge 3$ rögzített): **NP-teljes**.
    - Kromatikus szám $\chi(G)$ pontos értéke: **NP-nehéz**.
    - Élszínezési osztály eldöntése ($\chi' = \Delta$ vs $\Delta + 1$): **NP-teljes** (Holyer, 1981), még 3-reguláris gráfokra is.
  - *Gyakorlati megközelítés:*
    - 2-színezhetőségre mindig adható hatékony, egzakt algoritmus (BFS).
    - $k \ge 3$-színezhetőség esetén általános algoritmus helyett struktúratulajdonságokra (klikk, független szám, Brooks-tétel, mohó heurisztika) kell támaszkodni.

- **Élszínezés és élkromatikus szám (Vizing és Kőnig):**
  - *Elmélet:* Jó élszínezés: közös csúcsú élek különböző színűek. Élkromatikus szám: $\chi'(G)$ vagy $\chi_e(G)$. Az azonos színű élek független élhalmazt (párosítást) alkotnak.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Triviális alsó korlát: $\chi'(G) \ge \Delta(G)$.
    - Vizing-tétel (egyszerű gráfra):
      $$\Delta(G) \le \chi'(G) \le \Delta(G) + 1$$
      (1. osztály: $\chi' = \Delta$; 2. osztály: $\chi' = \Delta + 1$).
    - Kőnig élszínezési tétele: minden páros gráf 1. osztályú:
      $$G \text{ páros} \implies \chi'(G) = \Delta(G)$$
    - Páratlan kör: $\chi'(C_{2k+1}) = 3 = \Delta + 1$ (2. osztályú).
    - Teljes gráfok: $\chi'(K_{2n}) = 2n - 1 = \Delta$ (1. osztály); $\chi'(K_{2n+1}) = 2n + 1 = \Delta + 1$ (2. osztály).
    - Túlzsúfoltsági korlát (páratlan $n$-re): ha $e > \Delta \cdot \frac{n-1}{2} \implies \chi'(G) = \Delta + 1$.
  - *Gyakorlati megközelítés:*
    - *Élszínezési feladatok menete:*
      1. Állapítsuk meg $\Delta(G)$-t. A válasz kizárólag $\Delta$ vagy $\Delta + 1$ lehet!
      2. Ha a gráf páros $\implies$ azonnal $\chi' = \Delta$ (Kőnig).
      3. Ha $n$ páratlan és $e > \Delta \lfloor n/2 \rfloor \implies$ azonnal $\chi' = \Delta + 1$ (2. osztály).
      4. Ha 1. osztályú, bontsuk fel az élhalmazt $\Delta$ darab független párosításra.
    - *Körmérkőzéses bajnokság fordulói:* $n$ csapat mérkőzéseinek fordulókba osztása megegyezik a $K_n$ élszínezésével (páros $n$-re $n-1$ forduló, páratlan $n$-re $n$ forduló).

- **Síkbarajzolható gráfok és tartományaik:**
  - *Elmélet:* Metszésmentes síkrajz Jordan-ívekkel. A síkrajz $t$ darab tartományra (lapra) osztja a síkot ($t - 1$ belső, 1 külső végtelen tartomány).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Tartományok száma: $t \ge 1$.
    - Él-tartomány kettős leszámlálás:
      $$\sum_{T} \deg(T) = 2e$$
      (ahol $\deg(T)$ a tartományt határoló zárt séta élszáma; a híd él mindkét oldalról ugyanazt a tartományt határolja, így 2-vel számít).
    - Ha van kör és a gráf egyszerű: $\forall T: \deg(T) \ge 3 \implies 3t \le 2e \iff t \le \frac{2}{3}e$.
  - *Gyakorlati megközelítés:*
    - *Síkrajz megadása:* konkrét koordinátákkal vagy síkbeli elrendezéssel mutassuk be a metszésmentességet (pl. $K_4$-nél a negyedik pont a háromszög belsejében).
    - *Külső tartomány felcserélhetősége:* sztereografikus vetítéssel bármelyik belső tartomány "kifordítható" külső tartománnyá anélkül, hogy a tartománystruktúra megváltozna.

- **Euler-formula síkgráfokra:**
  - *Elmélet:* Összefüggő síkbarajzolt gráfban a csúcsok, élek és tartományok topológiai összefüggése invariáns a gráf alakjára.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Összefüggő síkgráfra ($c = 1$):
      $$n - e + t = 2$$
    - Általános, $c$ komponensű síkgráfra:
      $$n - e + t = c + 1$$
    - Invariáns lépés: körél törlésekor $e \to e - 1$ és $t \to t - 1$, így $n - e + t$ állandó marad; feszítőfára $n - (n - 1) + 1 = 2$.
  - *Gyakorlati megközelítés:*
    - *Hiányzó paraméter meghatározása:* $n$ és $e$ ismeretében (pl. fokszámokból) a tartományok száma közvetlenül adódik: $t = e - n + 2$.
    - *Tartományméretek egyenletrendszere:* ha a gráfban csak $k$-szög és $l$-szög tartományok vannak ($t_k$ és $t_l$), akkor a $\begin{cases} t_k + t_l = t = e - n + 2 \\ k \cdot t_k + l \cdot t_l = 2e \end{cases}$ lineáris egyenletrendszer megoldásával megkapjuk az egyes laptípusok darabszámát.

- **Élszám-korlátok síkbarajzolható gráfokban:**
  - *Elmélet:* A kettős leszámlálás és az Euler-formula együtteséből felső korlát adódik az egyszerű síkgráfok élszámára.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Általános egyszerű síkgráf ($n \ge 3$):
      $$e \le 3n - 6$$
      (Egyenlőség pontosan a triangulációkban áll fenn: $e = 3n - 6$ és $t = 2n - 4$).
    - Adott $p \ge 3$ bőségű síkgráf (minden kör hossza $\ge p$):
      $$e \le \frac{p}{p - 2}(n - 2)$$
    - Háromszögmentes és páros síkgráf ($p = 4$):
      $$e \le 2n - 4$$
      (Egyenlőség négyszögelésben: $e = 2n - 4$ és $t = n - 2$).
    - Minimális fokszám korlát: minden egyszerű síkgráfban létezik legfeljebb 5 fokú csúcs:
      $$\delta(G) \le 5$$
      (Bizonyítás: ha $\delta \ge 6$ lenne, akkor $2e = \sum \deg \ge 6n \implies e \ge 3n > 3n - 6$, ellentmondás).
    - Háromszögmentes síkgráfban: $\delta(G) \le 3$ (mivel $2e \le 4n - 8 < 4n$).
  - *Gyakorlati megközelítés:*
    - *Nem-síkbarajzolhatóság azonnali élszám-cáfolata:*
      - ha $n \ge 3$ és $e > 3n - 6 \implies$ a gráf NEM síkbarajzolható.
      - ha a gráf páros (vagy háromszögmentes) és $e > 2n - 4 \implies$ a gráf NEM síkbarajzolható.
    - *Átlagfokszám korlát:* síkgráfban az átlagos fokszám szigorúan 6 alatti: $\overline{d} = \frac{2e}{n} < 6$.

- **Nem síkbarajzolható gráfok és Kuratowski-tétel:**
  - *Elmélet:* A síkbarajzolhatóság két fundamentális akadálya a $K_5$ és a $K_{3,3}$. Soros bővítés (élfelosztás): $uv$ él helyére $u - w - v$ út beszúrása; ez a síkbeliséget nem változtatja meg.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - $K_5$: $n = 5, e = 10 \implies 10 \le 3(5) - 6 = 9$ (ellentmondás $\implies K_5$ nem síkgráf).
    - $K_{3,3}$: páros, $n = 6, e = 9 \implies 9 \le 2(6) - 4 = 8$ (ellentmondás $\implies K_{3,3}$ nem síkgráf).
    - Kuratowski-tétel: $G$ síkbarajzolható $\iff$ nem tartalmaz olyan részgráfot, amely $K_5$-tel vagy $K_{3,3}$-mal topologikusan izomorf (felosztott $K_5$ vagy $K_{3,3}$).
    - Wagner-tétel (minorkarakterizáció): $G$ síkbarajzolható $\iff$ sem $K_5$, sem $K_{3,3}$ nem minorja $G$-nek.
  - *Gyakorlati megközelítés:*
    - *Kuratowski-részgráf keresése feladatokban:*
      1. Ha $e \le 3n - 6$, az élszám-korlát nem dönt.
      2. *Felosztott $K_{3,3}$ keresése:* keressünk 6 csúcsot két hármas csoportban: $A = \{a_1, a_2, a_3\}$ és $B = \{b_1, b_2, b_3\}$, és keressünk közöttük 9 belsőleg diszjunkt utat minden $(a_i, b_j)$ párra.
      3. *Felosztott $K_5$ keresése:* keressünk 5 kulcscsúcsot, amelyek között mind a 10 párra csúcsdiszjunkt út fut.
      4. Klasszikus ZH-példa: a Petersen-gráf ($n=10, e=15 \le 24$) nem síkbarajzolható, mert felosztott $K_{3,3}$-at tartalmaz.

- **Gráfok a gömbön és a tóruszon:**
  - *Elmélet:* Gömbre metszés nélkül rajzolható $\iff$ síkbarajzolható (sztereografikus vetítés és inverze). Tórusz = úszógumi felület (1 lyukú zárt felület, $g = 1$). A $g$-fülű felület Euler-karakterisztikája: $\chi(S_g) = 2 - 2g$.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Gömb és sík: $n - e + t = 2 \implies e \le 3n - 6$.
    - Tórusz Euler-formulája (cellás felbontásra):
      $$n - e + t = 0$$
    - Élszám-korlát tóruszon egyszerű gráfra ($3t \le 2e \implies t \le \frac{2}{3}e$ behelyettesítésével):
      $$n - e + \frac{2}{3}e \ge 0 \iff e \le 3n$$
    - Teljes gráfok tóruszon: $K_5, K_6, K_7$ lerajzolható tóruszra! ($K_7$-re $n=7, e=21 = 3 \cdot 7$, pontosan eléri a korlátot).
    - $K_8$ már NEM rajzolható a tóruszra ($e = 28 > 3 \cdot 8 = 24$).
    - Heawood-tétel tóruszra: a tóruszra rajzolható gráfok kromatikus száma legfeljebb 7 ($\chi(G) \le 7$, és $K_7$ miatt ez éles).
  - *Gyakorlati megközelítés:*
    - *Tórusz szemléltetése síkon:* egy négyzet szemközti oldalainak azonosításával (felső-alsó és jobb-bal élek összeragasztása). A négyzet szélén kilépő él a szemközti oldalon lép be.
    - *Felületi élszám-korlát levezetése:* tetszőleges felületre írjuk fel az $n - e + t = \chi(S)$ összefüggést, majd a $3t \le 2e$ (vagy bőség esetén $pt \le 2e$) korlátot behelyettesítve határozzuk meg az élszám maximumát.

- **Euler-féle poliédertétel és a szabályos testek:**
  - *Elmélet:* Konvex poliéder gömbre és síkra vetítve egy összefüggő síkgráfot ad. $c$: csúcsok száma, $\text{é}$: élek száma, $l$: lapok (tartományok) száma.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Euler-féle poliédertétel:
      $$c - \text{é} + l = 2$$
    - Szabályos testek alapegyenlete (minden lap $p$-szög, minden csúcsban $q$ lap találkozik: $pl = 2\text{é}$ és $qc = 2\text{é}$):
      $$\frac{1}{p} + \frac{1}{q} = \frac{1}{2} + \frac{1}{\text{é}} > \frac{1}{2} \qquad (p \ge 3, q \ge 3)$$
    - Az 5 Platóni szabályos test:
      - Tetraéder: $(p, q) = (3, 3) \implies c = 4, \text{é} = 6, l = 4$
      - Kocka (hexaéder): $(p, q) = (4, 3) \implies c = 8, \text{é} = 12, l = 6$
      - Oktaéder: $(p, q) = (3, 4) \implies c = 6, \text{é} = 12, l = 8$
      - Dodekaéder: $(p, q) = (5, 3) \implies c = 20, \text{é} = 30, l = 12$
      - Ikozaéder: $(p, q) = (3, 5) \implies c = 12, \text{é} = 30, l = 20$
    - Euler–Poincaré-tétel $n$-dimenziós konvex politópra:
      $$\sum_{k=0}^{n-1} (-1)^k f_k = 1 - (-1)^n$$
    - $n$-dimenziós kocka ($Q_n$) $k$-dimenziós lapjainak száma: $f_k(Q_n) = \binom{n}{k}2^{n-k}$.
  - *Gyakorlati megközelítés:*
    - *Poliéder-feladatok kettős leszámlálással:* írjuk fel a $\sum k \cdot l_k = 2\text{é}$ és $\sum m \cdot c_m = 2\text{é}$ összefüggéseket a különböző laptípusokra és csúcsfokokra, majd helyettesítsünk a $c - \text{é} + l = 2$ képletbe (pl. csonkított ikozaéder / futball-labda ötszögeinek és hatszögeinek száma).

- **Tartományszínezés és a duális gráf:**
  - *Elmélet:* Élben szomszédos tartományok különböző színűek. Duális gráf ($G^*$): minden tartományba csúcsot teszünk; a határoló éleken át duális éleket húzunk.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Duális paraméterei összefüggő síkgráfra:
      $$n^* = t, \quad e^* = e, \quad t^* = n$$
    - Duális csúcs foka: $\deg_{G^*}(T) = \deg(T)$ (a tartomány határának élszáma).
    - Dualitás tétele:
      $$G \text{ tartományszínezése} \iff G^* \text{ csúcsszínezése}$$
      A szükséges színek minimális száma pontosan $\chi(G^*)$.
    - Ön-dualitás: összefüggő síkgráfra $(G^*)^* \cong G$.
    - Szabályos testek duálisai: Kocka $\leftrightarrow$ Oktaéder; Dodekaéder $\leftrightarrow$ Ikozaéder; Tetraéder $\leftrightarrow$ Tetraéder (ön-duális).
  - *Gyakorlati megközelítés:*
    - *Duális megrajzolása:* tegyünk egy csúcsot minden tartományba (a külsőbe is); minden határoló élen keresztül húzzunk egy élet a két szomszédos tartomány csúcsa közé. Hídból hurokél lesz; több közös határéből többszörös él lesz.
    - *Rajzfüggőség:* nem 3-szorosan összefüggő gráf esetén a duális izomorfia-típusa függhet a síkrajztól!

- **Síkgráfok színezése (Négyszín-, Ötszín- és Hatszíntétel, Fáry-tétel):**
  - *Elmélet:* Síkbarajzolható gráfok csúcsainak és tartományainak színezése.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Négyszín-tétel (Appel–Haken, 1976): minden egyszerű síkgráfra $\chi(G) \le 4$.
    - Ötszín-tétel (Heawood, 1890): minden egyszerű síkgráfra $\chi(G) \le 5$.
    - Hatszíntétel: minden egyszerű síkgráfra $\chi(G) \le 6$.
    - Fáry-tétel (1948): minden egyszerű síkgráf lerajzolható egyenes szakaszokkal is.
    - Grötzsch-tétel: minden háromszögmentes síkbarajzolható gráfra $\chi(G) \le 3$.
  - *Gyakorlati megközelítés:*
    - *Hatszíntétel bizonyítási algoritmusa (levágás):* keressünk egy $\deg(v) \le 5$ csúcsot (létezik, mert $\delta \le 5$), töröljük az éleivel, színezzük a maradékot 6 színnel, majd visszatéve a szomszédai legfeljebb 5 színt foglalnak le $\implies$ marad szabad szín $v$-nek.
    - *Ötszín-tétel bizonyítási algoritmusa (összehúzás):* $\deg(v) = 5$ esetén a szomszédai között van két nem szomszédos ($x, y$, mert $K_5$ nem síkgráf); húzzuk össze $x$-et és $y$-t $v$-be, színezzük az $n-2$ csúcsú síkgráfot 5 színnel, majd szétnyitáskor $x$ és $y$ azonos színt kap $\implies v$ szomszédai legfeljebb 4 színt foglalnak, jut neki az 5. szín.

- **Gráfparaméterek: független és lefogó halmazok (Gallai-tételek):**
  - *Elmélet:* $\alpha(G)$: független csúcsok max. száma; $\tau(G)$: lefogó csúcsok min. száma; $\nu(G)$: független élek (párosítás) max. száma; $\rho(G)$: lefogó élek min. száma (izolált pont nélkül).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Nyilvánvaló korlátok:
      $$\nu(G) \le \tau(G) \quad \text{és} \quad \alpha(G) \le \rho(G)$$
    - Gallai-tétel csúcsokra:
      $$\alpha(G) + \tau(G) = n$$
      (ugyanis $U \subseteq V$ független $\iff V \setminus U$ lefogó csúcshalmaz).
    - Gallai-tétel élekre (ha nincs izolált csúcs):
      $$\nu(G) + \rho(G) = n$$
    - Kőnig-tétel páros gráfokra: $\nu(G) = \tau(G)$ és $\alpha(G) = \rho(G)$.
    - Nevezetes értékek:
      - $K_n$: $\alpha = 1, \tau = n - 1, \nu = \lfloor n/2 \rfloor, \rho = \lceil n/2 \rceil$.
      - $C_n$: $\alpha = \lfloor n/2 \rfloor, \tau = \lceil n/2 \rceil, \nu = \lfloor n/2 \rfloor, \rho = \lceil n/2 \rceil$.
      - $K_{a, b}$ ($a \le b$): $\alpha = b, \tau = a, \nu = a, \rho = b$.
  - *Gyakorlati megközelítés:*
    - *Négy paraméter meghatározása:* elegendő kettőt kiszámítani (egyet a csúcs-, egyet az élparaméterek közül, pl. $\alpha$-t és $\nu$-t), a másik kettő a Gallai-azonosságokból ($\tau = n - \alpha$ és $\rho = n - \nu$) azonnal adódik.
    - *$\alpha(G)$ kiszámítása klikkfedéssel:* ha a gráf csúcsai lefedhetők $k$ darab diszjunkt klikkel, akkor $\alpha(G) \le k$. Ha sikerül $k$ elemű független csúcshalmazt találni, akkor $\alpha(G) = k$.

- **Párosítások (Hall-, Frobenius-, Tutte- és Kőnig-tétel):**
  - *Elmélet:* Párosítás: $M \subseteq E$ független élhalmaz. Maximális párosítás ($|M| = \nu(G)$); teljes párosítás ($|M| = n/2$, minden csúcs fedett).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Kőnig párosítási tétele: páros gráfban a maximális párosítás mérete egyenlő a minimális lefogó csúcshalmaz méretével:
      $$\nu(G) = \tau(G)$$
    - Hall-feltétel és Hall-tétel: $G(A, B)$ páros gráfban létezik $A$-t fedő párosítás $\iff$
      $$\forall X \subseteq A: \quad |N(X)| \ge |X|$$
    - Frobenius-tétel: $G(A, B)$-ben létezik teljes párosítás $\iff$
      $$|A| = |B| \quad \text{ÉS} \quad \forall X \subseteq A: |N(X)| \ge |X|$$
    - Tutte-tétel (általános gráfra): $G$-ben létezik teljes párosítás $\iff$
      $$\forall S \subseteq V(G): \quad c_{\mathrm{ptl}}(G - S) \le |S|$$
      (ahol $c_{\mathrm{ptl}}(G - S)$ a páratlan csúcsszámú komponensek száma).
    - Reguláris páros gráfok tétele: minden $r$-reguláris ($r \ge 1$) páros gráfban van teljes párosítás ($\nu = n/2$), és élkromatikus száma $\chi'(G) = r$.
    - Mátrixos bástyaelhelyezés: a $0$–$1$ párosítási mátrixban van nem-nulla szorzat a kifejtésben $\iff$ van teljes párosítás; a teljes párosítások száma $\operatorname{per}(M)$.
  - *Gyakorlati megközelítés:*
    - *Javító utas algoritmus (magyar módszer):*
      1. Induljunk egy mohó párosításból (piros élek).
      2. Ha van fedetlen $u \in A$ csúcs, keressünk alternáló utat (fekete-piros-fekete... éleken) egy fedetlen $v \in B$ csúcsba.
      3. Ha találunk, felcseréljük a piros és fekete éleket az út mentén $\implies$ a párosítás mérete 1-gyel nő.
      4. Egy párosítás pontosan akkor maximális, ha NEM létezik hozzá javító út!
    - *Hall-feltétel cáfolata:* ha nincs $A$-t fedő párosítás, mutassunk egy szűk keresztmetszetet: egy konkrét $X \subseteq A$ részhalmazt, amelyre $|N(X)| < |X|$ (pl. 3 embernek csak 2 közös ismerőse van).
    - *Tutte-feltétel cáfolata:* mutassunk olyan $S \subseteq V$ csúcshalmazt, amelynek elhagyásával több páratlan komponens keletkezik, mint $|S|$ (pl. páratlan csúcsszámú gráfra $S = \emptyset$ esetén $c_{\mathrm{ptl}} \ge 1 > 0$).

- **Deficites Hall-tétel és Kőnig-tétel:**
  - *Elmélet:* Az $X \subseteq A$ hiánya $|X| - |N(X)|$; a gráf hiánya $d = \max_{X \subseteq A}(|X| - |N(X)|) \ge 0$. Ha a Hall-feltétel $d$ híján teljesül, legfeljebb $d$ csúcs marad fedetlen.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Deficites Hall-tétel: $\nu(G) = |A| - \max_{X \subseteq A}\big(|X| - |N(X)|\big)$.
    - Kőnig-tétel: páros gráfban $\nu = \tau$; lefogó halmaz: $(A \setminus X) \cup N(X)$ a maximális hiányú $X$-re. Izolált csúcs nélküli páros gráfban $\alpha = \rho$.
  - *Gyakorlati megközelítés:*
    - *Maximalitás igazolása:* egy $k$ élű párosítás mellé mutassunk egy $k$ elemű lefogó csúcshalmazt (vagy egy $|A| - k$ hiányú $X$ halmazt) — ez bizonyítja, hogy nagyobb párosítás nincs.

- **Stabil párosítások:**
  - *Elmélet:* $n$ fiú, $n$ lány, szigorú preferencialisták. Blokkoló pár: nem egymás párjai, de mindketten egymást jobban szeretik a saját párjuknál. Stabil: nincs blokkoló pár.
  - *Kötelező tétel:* Gale–Shapley: stabil párosítás mindig létezik; a leánykérő algoritmus legfeljebb $n^2$ kérés után stabil párosítást ad (fiúoptimális, lánypesszimális).
  - *Gyakorlati megközelítés:* futtassuk az algoritmust körönként (a szabad fiúk a listájuk következő lányát kérik meg, a lányok a legjobb ajánlatot tartják meg), majd ellenőrizzük, hogy minden fiú, aki jobbat szeretne, az illető lánynál rosszabb helyen áll, mint annak párja.

---
