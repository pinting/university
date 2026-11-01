# Kombinatorika 1 – Gyakorlófeladatok megoldásai

### I. Mat. BSc Kombinatorika 1 · 2026/27 első félév · részletes megoldások és elméleti háttér

Ez a dokumentum a *Kombinatorika 1 – Gyakorlófeladatok* gyűjtemény valamennyi ($168$ darab) feladatának teljes, lépésről lépésre levezetett megoldását és elméleti hátterét tartalmazza. Minden feladatnál megismételjük a feladatkitűzést, ezt követi a részletes **megoldás** a végeredmény kiemelésével, végül pedig a szürke dobozban lévő **elméleti háttér**, amely összefoglalja a kulcstételeket, bizonyítási sémákat, általánosításokat és a tipikus hibalehetőségeket.

Jelölések: $\mathbb{N} = \{1, 2, 3, \dots\}$, $\mathbb{N}_0 = \{0, 1, 2, \dots\}$, $[n] = \{1, 2, \dots, n\}$; $\binom{n}{k} = \frac{n!}{k!(n-k)!}$; $(n)_k = n(n-1)\dots(n-k+1)$; $S(n, k)$ a másodfajú Stirling-számok; $p(n)$ a partíciók száma; $V(G)$ a csúcshalmaz, $E(G)$ az élhalmaz, $d(v)$ a fokszám, $\chi(G)$ a kromatikus szám, $\chi_e(G)$ az élkromatikus szám.

# Az 1. feladatsorhoz

## Gy1.1. feladat

Egy konvex 20-szögnek hány átlója van? Egy adott rögzített csúcsból induló átlók közül hány átlópár választható ki?

**Megoldás.**

Egy konvex 20-szög átlóinak száma a képlet alapján:
$$\frac{20(20-3)}{2} = \frac{20 \cdot 17}{2} = \mathbf{170}.$$
Egy rögzített csúcsból önmagába és a két szomszédos csúcsba nem húzható átló, így pontosan $20 - 3 = 17$ átló indul ki. Ebből a 17 átlóból egy átlópár kiválasztása sorrend nélkül:
$$\binom{17}{2} = \frac{17 \cdot 16}{2} = \mathbf{136}.$$

::: elmelet
**Elméleti háttér — Konvex sokszögek átlói és kézfogási lemma.**

Egy konvex $n$-szög tetszőleges két csúcsa közötti szakasz vagy a sokszög egy oldala, vagy egy átló. A lehetséges csúcspárok száma az $n$ elem 2-kombinációinak száma: $\binom{n}{2} = \frac{n(n-1)}{2}$. Mivel az oldalak száma pontosan $n$, a belső átlók száma:
$$d_n = \binom{n}{2} - n = \frac{n(n-3)}{2}.$$
Ugyanez az eredmény adódik a csúcsok fokszámaiból is: minden egyes csúcsból $n - 3$ átló indul (önmagába és a két közvetlen szomszédjába nem húzható átló). Mivel minden átlónak két végpontja van, a kézfogási elv (tehénszabály) alapján $2$-vel kell osztani: $\frac{n(n-3)}{2}$. Egy rögzített csúcsból induló $n-3$ átló közül tetszőleges kettő $\binom{n-3}{2}$ módon választható ki.
:::

## Gy1.2. feladat

Egy konvex sokszögnek pontosan 90 átlója van. Hány oldala van a sokszögnek?

**Megoldás.**

Jelölje $n$ a sokszög csúcsainak számát. Az átlók száma:
$$\frac{n(n-3)}{2} = 90 \implies n(n-3) = 180.$$
Mivel $n$ pozitív egész, és $15 \cdot 12 = 180$, adódik, hogy $n = 15$.
A sokszögnek tehát **15 oldala** van.

::: elmelet
**Elméleti háttér — Másodfokú diofantoszi egyenletek sokszögekre.**

Az átlók $d_n = \frac{n(n-3)}{2}$ képlete egy szigorúan monoton növekvő függvény $n \ge 3$ esetén, így adott átlószámhoz legfeljebb egyetlen csúcsszám tartozhat. Az $n(n-3) = 2d$ egyenlet átrendezve:
$$n^2 - 3n - 2d = 0 \implies n = \frac{3 + \sqrt{9 + 8d}}{2}.$$
Egy pozitív egész $d$ pontosan akkor valósulhat meg egy konvex sokszög átlóinak számaként, ha a diszkrimináns $9 + 8d$ páratlan négyzetszám. Ha $9 + 8d$ nem négyzetszám, a feladatnak nincs megoldása a konvex sokszögek körében.
:::

## Gy2.1. feladat

Egy 24 fős egyetemi tankör elnököt, elnökhelyettest és tanulmányi felelőst választ (egy személy legfeljebb egy tisztséget kaphat). Hányféleképpen alakulhat a tisztségviselők köre? Hányféleképpen választhatnak egy 3 fős küldöttséget tisztségek nélkül?

**Megoldás.**

Tisztségekkel (a sorrend számít):
$$24 \cdot 23 \cdot 22 = \mathbf{12\,144}.$$
Tisztségek nélkül (a sorrend nem számít):
$$\binom{24}{3} = \frac{24 \cdot 23 \cdot 22}{6} = \mathbf{2024}.$$

::: elmelet
**Elméleti háttér — Permutáció, variáció és kombináció alapjai.**

A kombinatorika alapkérdése $n$ különböző objektumból $k$ darab kiválasztása:
1. *Ismétlés nélküli variáció ($V_n^k$):* a kiválasztott elemek sorrendje (vagy funkciója) számít. Az első helyre $n$, a másodikra $n-1$, ..., a $k$-adikra $n-k+1$ lehetőség van: $V_n^k = (n)_k = \frac{n!}{(n-k)!}$.
2. *Ismétlés nélküli kombináció ($C_n^k = \binom{n}{k}$):* a kiválasztás sorrendje nem számít (pl. egyenrangú bizottság). Mivel minden $k$ elemű részhalmaz $k!$-féleképpen állítható sorba, a tehénszabály szerint $\binom{n}{k} = \frac{V_n^k}{k!} = \frac{n!}{k!(n-k)!}$.
3. *Permutáció ($P_n$):* $k = n$ speciális eset, minden elem sorrendje számít: $n!$.
:::

## Gy2.2. feladat

Egy 30 fős futóversenyen holtverseny nem lehetséges. Hányféleképpen alakulhat az első 5 beérkező sorrendje? Hányféleképpen választható ki a mezőnyből az 5 leggyorsabb futó halmaza?

**Megoldás.**

Az első 5 helyezett sorrendben (variáció):
$$30 \cdot 29 \cdot 28 \cdot 27 \cdot 26 = \mathbf{17\,100\,720}.$$
Az 5 leggyorsabb futó halmaza (kombináció):
$$\binom{30}{5} = \frac{17\,100\,720}{120} = \mathbf{142\,506}.$$

::: elmelet
**Elméleti háttér — A szorzási szabály (független szukcesszív döntések).**

Ha egy összetett folyamat $k$ egymást követő lépésből áll, és a korábbi döntésektől függetlenül az 1. lépést $n_1$-féleképpen, a 2. lépést $n_2$-féleképpen, ..., a $k$-adikat $n_k$-féleképpen lehet végrehajtani, akkor az összes lehetséges kimenetelek száma $n_1 \cdot n_2 \cdots n_k$.
A szabály alkalmazásának alapfeltétele nem az, hogy a választható konkrét elemek köre legyen független a korábbiaktól, hanem az, hogy a lehetőségek *száma* maradjon állandó minden ágon (reguláris döntési fa).
:::

## Gy3.1. feladat

Egy zászlórúdra $n$ darab jelzőzászlót húzunk fel egymás fölé 5 lehetséges szín közül úgy, hogy semelyik két egymással közvetlenül érintkező zászló nem azonos színű. Hányféle ilyen jelzés készíthető?

**Megoldás.**

A legalsó zászló színe 5-féle lehet. Minden további zászló színe csak az alatta lévőtől kell, hogy különbözzön, ami mindig $5 - 1 = 4$ lehetőség. Mivel $n - 1$ további szint van:
$$5 \cdot 4^{n-1}.$$

::: elmelet
**Elméleti háttér — Szukcesszív színezés és kromatikus polinom fákra.**

Egy egyszerű gráf jó csúcsszínezésénél a szomszédos csúcsok különböző színeket kapnak. Ha a gráf körmentes (fa vagy erdő), a csúcsok mindig sorba rendezhetők úgy, hogy minden csúcs legfeljebb egyetlen korábbi szomszéddal rendelkezzen (pl. gyökerezés után a fa bejárási sorrendjében).
Ennek következtében $k$ színnel színezve a gyökér $k$ lehetőséget kap, minden további $n-1$ csúcs pedig pontosan $k-1$ színt választhat (az apjától különbözőt). Így tetszőleges $n$ csúcsú fa kromatikus polinomja:
$$P(T_n, k) = k(k-1)^{n-1}.$$
:::

## Gy3.2. feladat

Egy kör alakú díszterem falán 6 oszlop áll egy kör mentén. Hányféleképpen festhetjük be őket 3 színnel úgy, hogy semelyik két szomszédos oszlop ne kapjon azonos színt?

**Megoldás.**

Ez a $C_6$ körgráf jó 3-színezéseinek száma. A kör kromatikus polinomja $k = 3, n = 6$ esetén:
$$P(C_6, 3) = (3 - 1)^6 + (3 - 1)(-1)^6 = 2^6 + 2 \cdot 1 = 64 + 2 = \mathbf{66}.$$

::: elmelet
**Elméleti háttér — Körök színezése és a kromatikus polinom rekurziója.**

Egy $n$ hosszúságú kör $C_n$ jó színezéseinek száma $k$ színnel a törlés-összehúzás (deletion-contraction) tételből adódik:
$$P(C_n, k) = P(P_n, k) - P(C_{n-1}, k) = k(k-1)^{n-1} - P(C_{n-1}, k).$$
A rekurzió zárt alakja:
$$P(C_n, k) = (k-1)^n + (-1)^n (k-1).$$
Páros körökre ($n = 2m$) a kromatikus szám $\chi(C_{2m}) = 2$, míg páratlan körökre ($n = 2m+1$) $\chi(C_{2m+1}) = 3$. Az alternáló előjel mutatja, hogy páratlan körben a 2 színnel való színezés lehetetlen ($P(C_{2m+1}, 2) = 1 - 1 = 0$).
:::

## Gy4.1. feladat

5 különböző színű gyöngyből készítünk nyakláncot. Hány különböző nyaklánc fűzhető: a) csak forgatási azonosság mellett; b) forgatási és tükrözési azonosság mellett?

**Megoldás.**

a) Forgatással azonosak: $(5-1)! = 4! = \mathbf{24}$.
b) Forgatással és tükrözéssel azonosak: $\frac{(5-1)!}{2} = \frac{24}{2} = \mathbf{12}$.

::: elmelet
**Elméleti háttér — Kör alakú permutációk és nyaklánc-ekvivalencia.**

$n$ különböző elem kör menti elrendezésekor:
1. *Csak forgatás:* egy fix kezdőpontú körnek $n$ ciklikus elforgatottja van. Mivel az elemek mind különbözők, semelyik nemtriviális forgatás nem viheti önmagába az elrendezést, így a pályák mérete pontosan $n$. A különböző kör alakú permutációk száma: $\frac{n!}{n} = (n-1)!$.
2. *Forgatás és tengelyes tükrözés:* a diédercsoport $D_n$ mérete $2n$. $n \ge 3$ különböző gyöngy esetén egyetlen tükrözés sem hagyhatja fixen a nyakláncot, így minden pálya mérete $2n$, a nyakláncok száma: $\frac{n!}{2n} = \frac{(n-1)!}{2}$.
:::

## Gy4.2. feladat

7 különböző színű gyöngyből nyakláncot készítünk forgatási és tükrözési azonosság mellett. Hányféle nyaklánc készíthető úgy, hogy a piros és a kék gyöngy ne kerüljön közvetlenül egymás mellé?

**Megoldás.**

Az összes lehetséges nyaklánc száma:
$$\frac{(7-1)!}{2} = \frac{6!}{2} = \frac{720}{2} = 360.$$
Vonjuk le azokat, ahol a piros (P) és kék (K) gyöngy szomszédos!
Vonjuk össze a PK gyöngypárt egyetlen szupergyönggyé. Ekkor $7 - 1 = 6$ gyöngyöt fűzünk fel a nyakláncra.
Körön 6 különböző objektum forgatás és tükrözés szerinti elrendezéseinek száma $\frac{(6-1)!}{2} = \frac{5!}{2} = 60$.
A PK blokk belső sorrendje (PK vagy KP) a térbeli átfordítással egymásba megy, tehát a diéder-osztályon belül a blokk orientációja nem hoz létre új nyakláncot.
Ezért pontosan 60 olyan nyaklánc van, ahol P és K szomszédos.
A feltételnek megfelelő nyakláncok száma:
$$360 - 60 = \mathbf{300}.$$

::: elmelet
**Elméleti háttér — Blokkosítási technika kötött szomszédságoknál.**

Ha bizonyos elemeknek szigorúan egymás mellett kell elhelyezkedniük, egyetlen szuper-elemként (blokkként) kezeljük őket:
1. Kiszámítjuk a blokk belső elrendezéseinek számát: $m$ elem egyenesben $m!$, ha a sorrendjük rögzített vagy irányított, akkor $1$ vagy $2$.
2. A blokkot és a többi $n - m$ elemet együtt rendezzük el körben ($n - m + 1$ elem körpermutációja: $(n - m)!$).
3. A szorzási szabállyal összeszorozzuk a belső és külső lehetőségeket: $(n - m)! \cdot m!$.
:::

## Gy5.1. feladat

4 házaspár (8 ember) ül le egy kerek asztal köré úgy, hogy mindenki a házastársa mellett ül (két ülésrend azonos, ha forgatással egymásba vihető). Hányféle ülésrend van?

**Megoldás.**

A 4 pár blokkja a kör körül $(4-1)! = 3! = 6$ módon ülhet le.
Mind a 4 párban 2-féle a belső elrendezés ($2^4 = 16$).
Összesen:
$$6 \cdot 16 = \mathbf{96}.$$

::: elmelet
**Elméleti háttér — Több független blokk kör alakú elrendezése.**

Ha $k$ különböző diszjunkt csoport mindegyikét (méreteik $m_1, m_2, \dots, m_k$) blokként kezeljük:
- A $k$ darab blokk egymáshoz képesti kör alakú elhelyezése $(k-1)!$ módon lehetséges.
- Az $i$-edik blokkon belül a személyek $m_i!$-féleképpen ülhetnek le.
A független választások szorzási szabálya szerint az összes kedvező elrendezés száma:
$$(k-1)! \prod_{i=1}^k m_i!.$$
Ez a képlet biztosítja, hogy minden blokk tagjai egybefüggő íven maradnak, miközben a kör elforgatási szimmetriáját pontosan egyszer faktorizáljuk ki.
:::

## Gy5.2. feladat

4 házaspár ül le egy egyenes padra (8 egymás melletti helyre). Hányféleképpen ülhetnek le úgy, hogy mindenki a házastársa mellett üljön?

**Megoldás.**

Egyenes pad esetén nincs forgatási azonosság: a 4 pár sorrendje a padon $4! = 24$.
A 4 pár mindegyikének belső elrendezése 2-féle ($2^4 = 16$).
Összesen:
$$24 \cdot 16 = \mathbf{384}.$$

::: elmelet
**Elméleti háttér — Körasztal kontra egyenes pad: a peremhatás megszüntetése.**

Az egyenes padon való elhelyezésnél kitüntetett pozíciók léteznek (a pad két széle, 1. és $n$. hely), ami peremhatást okoz: a szélső helyeknek csak 1 közvetlen szomszédjuk van, a belsőknek 2. Ezzel szemben a kerek asztalnál minden helyzet ekvivalens, mindenki pontosan 2 szomszéddal rendelkezik, és nincsenek abszolút pozíciók. A körasztal problémái gyakran átalakíthatók egyenes padi problémává egy kitüntetett személy (pl. a legfiatalabb vagy legidősebb) helyének rögzítésével, ami megszünteti a ciklikus szimmetriát.
:::

## Gy6.1. feladat

Hány különböző anagrammája van az ABRAKADABRA szónak?

**Megoldás.**

A szó 11 betűből áll:
- A: 5 db
- B: 2 db
- R: 2 db
- K: 1 db
- D: 1 db
Ismétléses permutációval:
$$\frac{11!}{5! \cdot 2! \cdot 2! \cdot 1! \cdot 1!} = \frac{39\,916\,800}{120 \cdot 2 \cdot 2} = \frac{39\,916\,800}{480} = \mathbf{83\,160}.$$

::: elmelet
**Elméleti háttér — Ismétléses permutáció és multinomiális együtthatók.**

Ha egy $n$ elemű multihalmazban az 1. típusú elemből $k_1$, a 2. típusúból $k_2$, ..., az $r$-edikből $k_r$ darab van ($\sum k_i = n$), akkor az elemek összes különböző sorbarendezéseinek száma az ismétléses permutáció képletével adható meg:
$$P_n^{k_1, \dots, k_r} = \binom{n}{k_1, k_2, \dots, k_r} = \frac{n!}{k_1!\, k_2! \dots k_r!}.$$
Bizonyítás: Képzeljük el, hogy minden azonos elemet megkülönböztetünk indexekkel. Ekkor $n!$ permutáció keletkezne. Az azonos típusú $k_i$ elem egymás közötti $k_i!$ cseréje azonban nem hoz létre új mintázatot, így a tehénszabály szerint osztunk a faktoriálisok szorzatával.
:::

## Gy6.2. feladat

Hány olyan anagrammája van az EGYETEM szónak, amelyben a három 'E' betű közül semelyik kettő nem áll egymás mellett?

**Megoldás.**

Az EGYETEM szó 7 betűs: E: 3 db, G: 1 db, Y: 1 db, T: 1 db, M: 1 db.
Helyezzük el először a 4 mássalhangzót (G, Y, T, M): ezek $4! = 24$ módon rendezhetők el.
A 4 mássalhangzó $4 + 1 = 5$ lehetséges pozíciót (rést) határoz meg:
$$\_ \; G \; \_ \; Y \; \_ \; T \; \_ \; M \; \_$$
Ahhoz, hogy semelyik két 'E' ne kerüljön egymás mellé, az 5 lehetséges résbe legfeljebb egy 'E' kerülhet. Ezért az 5 résből kell kiválasztanunk 3-at a 3 db 'E' betű számára:
$$\binom{5}{3} = 10.$$
A jó anagrammák száma a szorzási szabály szerint:
$$24 \cdot 10 = \mathbf{240}.$$

::: elmelet
**Elméleti háttér — Résmódszer tiltott szomszédságokra (elválasztóelemek).**

Ha egy multihalmazban az azonos típusú elemek (pl. az 'A' betűk vagy magánhangzók) nem kerülhetnek egymás mellé:
1. Először sorba rendezzük a megengedett „egyéb” elemeket: legyen ezek száma $m$, elrendezéseik száma $N_{\text{egyéb}}$.
2. Az $m$ elem $m + 1$ darab rést (elválasztó helyet) hoz létre: egyet az elején, egyet a végén, és $m - 1$-et a belső pozíciókban.
3. A $k$ darab tiltott elemet ezen $m + 1$ rés közül $k$ darabba kell elhelyezni, résenként legfeljebb egyet: ez $\binom{m+1}{k}$ lehetőség.
4. Ha $k > m + 1$, a skatulyaelv miatt lehetetlen elkerülni a szomszédságot.
:::

## Gy7.1. feladat

Egy teázóban 5-féle tea rendelhető. Hányféleképpen rendelhet egy 10 fős társaság fejenként egy-egy teát, ha csak az számít, hogy az egyes teafajtákból hány csészét kell készíteni?

**Megoldás.**

5 teafajtából választunk 10 csészényit ismétléses kombinációval:
$$\binom{5 + 10 - 1}{10} = \binom{14}{10} = \binom{14}{4} = \frac{14 \cdot 13 \cdot 12 \cdot 11}{24} = \mathbf{1001}.$$

::: elmelet
**Elméleti háttér — Ismétléses kombináció és multihalmazok elemszáma.**

Ha $n$ különböző típusú tárgyból választunk $k$ darabot úgy, hogy a típusokból tetszőlegesen sok áll rendelkezésre, és a sorrend nem számít (pl. rendelés vagy multihalmaz kiválasztása), a lehetőségek száma az ismétléses kombináció:
$$C_n^{k, \text{ism}} = \binom{n + k - 1}{k} = \binom{n + k - 1}{n - 1}.$$
Bizonyítás csillag-és-vonal (stars and bars) módszerrel: a $k$ darab kiválasztott tárgyat $k$ csillaggal, az $n$ típust pedig $n - 1$ darab elválasztó vonallal reprezentáljuk. A feladat ekvivalens a $k + n - 1$ pozíció közül a $k$ darab csillag helyének kiválasztásával.
:::

## Gy7.2. feladat

Hányféleképpen oszthatunk szét 20 egyforma füzetet 4 diák között úgy, hogy minden diák legalább 2 füzetet kapjon?

**Megoldás.**

Legyen $x_i$ az $i$-edik diák füzeteinek száma: $x_1 + x_2 + x_3 + x_4 = 20$, ahol $x_i \ge 2$.
Minden diáknak adunk 2 füzetet (ez $4 \times 2 = 8$ füzet). A maradék $20 - 8 = 12$ füzetet osztjuk szét korlátozás nélkül:
$$y_1 + y_2 + y_3 + y_4 = 12, \qquad y_i = x_i - 2 \ge 0.$$
A nemnegatív megoldások száma:
$$\binom{4 + 12 - 1}{12} = \binom{15}{12} = \binom{15}{3} = \frac{15 \cdot 14 \cdot 13}{6} = \mathbf{455}.$$

::: elmelet
**Elméleti háttér — Diofantoszi egyenletek nemnegatív és alsó korlátos megoldásai.**

Az $x_1 + x_2 + \dots + x_n = K$ egyenlet egész megoldásainak száma:
- *Nemnegatív egészekben ($x_i \ge 0$):* pontosan $\binom{K + n - 1}{n - 1}$ megoldás van (ismétléses kombináció).
- *Pozitív egészekben ($x_i \ge 1$):* a $K$ csillag közötti $K - 1$ résbe helyezünk $n - 1$ elválasztójelet: $\binom{K - 1}{n - 1}$.
- *Általános alsó korlátok ($x_i \ge c_i$):* az $y_i = x_i - c_i \ge 0$ eltolással az egyenlet $\sum y_i = K - \sum c_i$ alakú lesz, amelyre az alapképlet közvetlenül alkalmazható.
:::

## Gy8.1. feladat

Hány olyan 5-jegyű szám van, amelynek számjegyei szigorúan monoton növekednek?

**Megoldás.**

A számjegyek az $\{1, 2, \dots, 9\}$ halmazból valók (a 0 nem lehet benne). Bármely 5 számjegy egyértelműen növekvő sorrendbe állítható:
$$\binom{9}{5} = \binom{9}{4} = \frac{9 \cdot 8 \cdot 7 \cdot 6}{24} = \mathbf{126}.$$

::: elmelet
**Elméleti háttér — Szigorúan növekvő számjegyek és bijekció részhalmazokra.**

Egy $k$-jegyű számnál, ha a számjegyek szigorúan növekvő sorrendben követik egymást:
$$1 \le d_1 < d_2 < \dots < d_k \le 9.$$
A 0 nem szerepelhet, mert $0 \le d_1$ esetén a 0 csak az első helyen állhatna, de a vezető jegy nem lehet 0.
A szigorú rendezettség miatt bármely $k$ elemű $S \subset \{1, 2, \dots, 9\}$ részhalmazhoz pontosan egyetlen rendezés tartozik, és megfordítva: a jegyek halmaza egyértelműen meghatározza a számot. Ez egy természetes bijekció, így a szigorúan növekvő $k$-jegyű számok száma pontosan $\binom{9}{k}$.
:::

## Gy8.2. feladat

Hány olyan 5-jegyű szám van, amelynek számjegyei szigorúan monoton csökkennek?

**Megoldás.**

A számjegyek a $\{0, 1, \dots, 9\}$ tízjegyű halmazból valók, a 0 csak a végén állhat:
$$\binom{10}{5} = \frac{10 \cdot 9 \cdot 8 \cdot 7 \cdot 6}{120} = \mathbf{252}.$$

::: elmelet
**Elméleti háttér — Szigorúan csökkenő számjegyek és a 0 szerepe.**

Egy szigorúan csökkenő számjegysorozatnál:
$$9 \ge d_1 > d_2 > \dots > d_k \ge 0.$$
Itt a 0 számjegy megengedett, és ha szerepel a kiválasztott elemek között, automatikusan a legutolsó helyre ($d_k = 0$) kerül, így nem állhat a szám élén (nem lesz vezető nulla).
Következésképpen a számjegyek a teljes $\{0, 1, 2, \dots, 9\}$ tízelemű halmazból választhatók ki. Mivel a kiválasztott $k$ számjegy csökkenő sorrendje egyértelmű, a szigorúan csökkenő $k$-jegyű számok száma pontosan $\binom{10}{k}$.
:::

## Gy9.1. feladat

Egy 9 elemű halmaznak hány páros elemszámú részhalmaza van? Hány olyan részhalmaza van, amely legalább 5 elemű?

**Megoldás.**

A páros elemszámú részhalmazok száma:
$$2^{9-1} = 2^8 = \mathbf{256}.$$
A legalább 5 elemű részhalmazok száma: mivel $\binom{9}{k} = \binom{9}{9-k}$, az $A \mapsto S \setminus A$ komplementerképzés bijekciót létesít a legfeljebb 4 elemű és a legalább 5 elemű részhalmazok között. Így a legalább 5 elemű részhalmazok száma az összes részhalmaz fele:
$$\frac{2^9}{2} = 2^8 = \mathbf{256}.$$

::: elmelet
**Elméleti háttér — Binomiális együtthatók szimmetriája és felező tulajdonsága.**

A hatványhalmaz elemszáma $|\mathcal{P}(X)| = 2^n = \sum_{k=0}^n \binom{n}{k}$.
A binomiális együtthatók szimmetrikusak: $\binom{n}{k} = \binom{n}{n-k}$, ami a komplementerképzés ($A \mapsto X \setminus A$) bijektivitásának felel meg.
Ha az alaphalmaz mérete páratlan ($n = 2m + 1$), akkor a tagok száma páros ($2m + 2$), és nincs középső tag. A komplementerképzés minden $k \le m$ méretű részhalmazhoz egyértelműen egy $n - k \ge m + 1$ méretű részhalmazt rendel. Ennek következtében a legalább $m + 1$ elemű részhalmazok száma pontosan a teljes hatványhalmaz fele: $\frac{2^{2m+1}}{2} = 2^{2m}$.
:::

## Gy9.2. feladat

Egy 10 elemű halmaznak hány olyan részhalmaza van, amely tartalmaz egy adott $a$ elemet, de nem tartalmaz egy adott $b$ elemet ($a \neq b$)?

**Megoldás.**

Legyen a halmaz $S$, $|S| = 10$. Az $a$ elem kötelezően bent van, a $b$ elem tilos. A maradék $10 - 2 = 8$ elem mindegyikéről függetlenül dönthetünk (benne van-e vagy sem). Ezért a lehetőségek száma:
$$2^8 = \mathbf{256}.$$

::: elmelet
**Elméleti háttér — Karakterisztikus vektorok és felezett részhalmaz-összegek.**

Egy részhalmaz megadása egyenértékű a karakterisztikus függvényével $\chi_A: X \to \{0, 1\}$, ami egy $n$ hosszú bináris vektor.
Egy rögzített $x_0 \in X$ elemet tartalmazó részhalmazok száma:
$$|\{A \subseteq X : x_0 \in A\}| = 2^{n-1},$$
mivel a maradék $n - 1$ elemről függetlenül dönthetünk (benne van vagy sem). Hasonlóan az $x_0$-t nem tartalmazó részhalmazok száma is $2^{n-1}$. Páros és páratlan méretű részhalmazokból is pontosan $2^{n-1}$ darab létezik, amint az az $(1 - 1)^n = 0$ binomiális azonosságból adódik.
:::

## Gy10.1. feladat

6 fiú és 6 lány hányféleképpen állhat fel egy sorba úgy, hogy felváltva álljanak fiúk és lányok?

**Megoldás.**

Mivel a fiúk és lányok száma egyenlő, kétféle alapminta létezik:
1. FLFLFLFLFLFL (fiúval kezdődik)
2. LFLFLFLFLFLF (lánnyal kezdődik)
Mindkét mintában a fiúk $6!$, a lányok $6!$ módon ülhetnek le:
$$2 \cdot (6!)^2 = 2 \cdot 720^2 = 2 \cdot 518\,400 = \mathbf{1\,036\,800}.$$

::: elmelet
**Elméleti háttér — Alternáló minták és blokkosítás diszkrét sorozatokban.**

Két típusú elem (pl. fiúk és lányok, vagy 0-k és 1-ek) alternáló elhelyezésekor a pozíciók paritása meghatározza az elemek lehetséges típusát.
Ha a két osztály mérete $n$ és $m$:
- Ha $|n - m| > 1$, alternáló sorozat egyáltalán nem készíthető (skatulyaelv).
- Ha $n = m$, két lehetséges globális minta van (ABAB... vagy BABA...), így a lehetőségek száma $2 \cdot n! \cdot m!$.
- Ha $n = m + 1$, a mintázat egyértelmű (a nagyobb csoport kezdi és fejezi be: ABABA...), a lehetőségek száma $n! \cdot m!$.
:::

## Gy10.2. feladat

4 fiú és 9 lány hányféleképpen állhat sorba úgy, hogy semelyik két fiú nem állhat közvetlenül egymás mellett?

**Megoldás.**

A 9 lány elrendezése $9!$. A keletkező 10 résbe a 4 fiú variációval helyezhető el:
$$9! \cdot (10 \cdot 9 \cdot 8 \cdot 7) = 362\,880 \cdot 5040 = \mathbf{1\,828\,915\,200}.$$

::: elmelet
**Elméleti háttér — Résbe helyezés variációval és sorrenddel.**

Ha $k$ darab különböző személyt kell elhelyezni $m$ előre rögzített résbe úgy, hogy egy résbe legfeljebb egy ember kerülhet:
1. Kiválasztjuk a $k$ felhasznált rést az $m$ lehetőségből: $\binom{m}{k}$.
2. A kiválasztott résekbe leültetjük a $k$ személyt valamilyen sorrendben: $k!$.
Összesen $\binom{m}{k} k! = (m)_k = \frac{m!}{(m-k)!}$ lehetőség (ismétlés nélküli variáció). Ha az elválasztó tárgyak körben állnak, a rések száma megegyezik a tárgyak számával ($m$), míg egyenes vonalban a rések száma $m + 1$.
:::

## Gy11.1. feladat

Hányféleképpen tehetünk fel egy $6 \times 6$-os sakktáblára 4 egyforma bástyát úgy, hogy semelyik kettő ne álljon egy sorban vagy egy oszlopban?

**Megoldás.**

Kiválasztjuk a 4 elfoglalt sort: $\binom{6}{4} = 15$ lehetőség.
Kiválasztjuk a 4 elfoglalt oszlopot: $\binom{6}{4} = 15$ lehetőség.
A kiválasztott $4 \times 4$-es résztáblán a 4 bástyát $4! = 24$ módon helyezhetjük el függetlenül:
$$15 \cdot 15 \cdot 24 = 225 \cdot 24 = \mathbf{5400}.$$

::: elmelet
**Elméleti háttér — Független bástyák elhelyezése sakktáblán.**

Egy $n \times m$ méretű sakktáblán két bástya akkor és csak akkor nem üti egymást (függetlenek), ha sem azonos sorban, sem azonos oszlopban nem állnak.
$k$ független bástya elhelyezésének lépései:
1. Kiválasztjuk a felhasznált $k$ darab sort az $n$ sorból: $\binom{n}{k}$.
2. Kiválasztjuk a felhasznált $k$ darab oszlopot az $m$ oszlopból: $\binom{m}{k}$.
3. A kiválasztott sorok és oszlopok metszetében egy $k \times k$-s résztáblát kapunk, amelyen a bástyák egy permutációs mátrixnak felelnek meg: $k!$ elhelyezés.
Összesen: $\binom{n}{k} \binom{m}{k} k!$.
:::

## Gy11.2. feladat

Egy $5 \times 5$-ös sakktáblán 5 bástya nem üti egymást, és semelyik sem áll a főátlón (azaz az $(i,i)$ mezőkön). Hány ilyen elrendezés létezik?

**Megoldás.**

Ez az 5 elemű derangemensek (fixpontmentes permutációk) száma:
$$D_5 = 5! \left(1 - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \frac{1}{4!} - \frac{1}{5!}\right) = 120 \left(\frac{1}{2} - \frac{1}{6} + \frac{1}{24} - \frac{1}{120}\right) = 60 - 20 + 5 - 1 = \mathbf{44}.$$

::: elmelet
**Elméleti háttér — Fixpontmentes permutációk (derangement) és szita-formula.**

Egy $\pi \in S_n$ permutációt fixpontmentesnek nevezünk, ha minden $i \in [n]$-re $\pi(i) \neq i$.
A szita-formula (logikai szita) alkalmazásával:
$$D_n = n! \sum_{j=0}^n \frac{(-1)^j}{j!} = n! \left(1 - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \dots + \frac{(-1)^n}{n!}\right).$$
Mivel a zárójeles összeg a Taylor-sor szerint gyorsan konvergál $e^{-1}$-hez, $D_n = \left[\frac{n!}{e}\right]$ (a legközelebbi egész szám minden $n \ge 1$-re). Rekurzió: $D_n = (n-1)(D_{n-1} + D_{n-2})$.
:::

## Gy12.1. feladat

Hányféleképpen oszthatunk szét 15 egyforma ajándékot 5 gyerek között úgy, hogy senki se maradjon ajándék nélkül?

**Megoldás.**

Minden gyereknek legalább 1 ajándékot kell kapnia: $x_1 + \dots + x_5 = 15$, ahol $x_i \ge 1$.
Mindenkinek adunk 1 ajándékot, a maradék 10 ajándékot osztjuk szét 5 gyerek között nemnegatív egészként:
$$\binom{10 + 5 - 1}{10} = \binom{14}{10} = \binom{14}{4} = \frac{14 \cdot 13 \cdot 12 \cdot 11}{24} = \mathbf{1001}.$$
(Vagy közvetlenül a pozitív egészekre vonatkozó képlettel: $\binom{k-1}{n-1} = \binom{15-1}{5-1} = \binom{14}{4} = 1001$.)

::: elmelet
**Elméleti háttér — Egészek kompozíciói és binomiális eloszlás.**

Egy pozitív egész $n$ szám $k$ tagú kompozícióján olyan pozitív egészekből álló $(x_1, \dots, x_k)$ sorozatot értünk, amelyre $\sum x_i = n$ ($x_i \ge 1$). A kompozíciók száma $\binom{n-1}{k-1}$.
Ha a tagok száma tetszőleges lehet ($k \in \{1, 2, \dots, n\}$), az összes lehetséges kompozíciók száma:
$$\sum_{k=1}^n \binom{n-1}{k-1} = 2^{n-1}.$$
Kombinatorikus bizonyítás: Képzeljünk el $n$ darab 1-est egymás után. A köztük lévő $n-1$ belső hely mindegyikén eldönthetjük, hogy kitesszük-e a '+' jelet vagy összevonjuk őket. Ez $n-1$ független bináris választás, tehát $2^{n-1}$ lehetőség.
:::

## Gy12.2. feladat

Hányféleképpen osztható szét 8 különböző könyv 3 tanuló között úgy, hogy mindegyik tanuló legalább egy könyvet kapjon?

**Megoldás.**

Ez a $\{1, \dots, 8\} \to \{A, B, C\}$ szürjektív függvények száma.
Szita-formulával számolunk:
Az összes kiosztás száma $3^8 = 6561$.
Kivonjuk azokat, ahol legalább egy tanuló nem kap könyvet:
$\binom{3}{1} \cdot 2^8 = 3 \cdot 256 = 768$.
Hozzáadjuk azokat, ahol két tanuló sem kap könyvet (mindent a harmadik kap):
$\binom{3}{2} \cdot 1^8 = 3 \cdot 1 = 3$.
Az olyan esetek száma, ahol mindhárman kapnak könyvet:
$$3^8 - \binom{3}{1} 2^8 + \binom{3}{2} 1^8 = 6561 - 768 + 3 = \mathbf{5796}.$$
(Másodfajú Stirling-számmal: $3! \cdot S(8,3) = 6 \cdot 966 = 5796$.)

::: elmelet
**Elméleti háttér — Szürjektív leképezések és másodfajú Stirling-számok.**

Legyen $|A| = k$ és $|B| = n$. Az $f: A \to B$ szürjektív (ráképező) függvények száma szoros kapcsolatban áll a halmazpartíciókkal:
1. Az $A$ halmaz $k$ elemét fel kell osztani $n$ darab nemüres osztályra (egy-egy képelem ősképeire): ezt $S(k, n)$ (másodfajú Stirling-szám) módon tehetjük meg.
2. Az $n$ osztályt bijektíven hozzárendeljük a $B$ halmaz $n$ címkézett eleméhez: $n!$ sorrend.
Így a szürjekciók száma: $\operatorname{Surj}(k, n) = n! \cdot S(k, n)$.
Szita-formulával kifejezve: $\sum_{j=0}^n (-1)^{n-j} \binom{n}{j} j^k$.
:::

## Gy13.1. feladat

Hányféleképpen írhatók be az $1, 2, \dots, 7$ számok a következő mintába: $\_\_ < \_\_ < \_\_ > \_\_ > \_\_ > \_\_ > \_\_$?

**Megoldás.**

A csúcs a 3. helyen van, így oda kötelezően a legnagyobb szám, a 7 kerül.
A csúcs előtti 2 helyre a maradék 6 számból $\binom{6}{2}$ módon választhatunk. A maradék 4 szám a csúcs utánra kerül. A sorrend mindkét oldalon egyértelmű:
$$\binom{6}{2} = \frac{6 \cdot 5}{2} = \mathbf{15}.$$

::: elmelet
**Elméleti háttér — Unimodális permutációk és csúcs rögzítése.**

Egy permutációt unimodálisnak nevezünk, ha először szigorúan növekszik a maximumig (csúcsig), majd onnan szigorúan csökken.
Ha az $n$ elemű alaphalmaz legnagyobb eleme ($n$) az $m$-edik pozíción áll:
- Az előtte lévő $m-1$ pozícióra ki kell választani $m-1$ elemet a maradék $n-1$ számból: $\binom{n-1}{m-1}$ lehetőség.
- A kiválasztott elemek sorrendje a csúcs előtt kényszerűen növekvő, a maradék elemek sorrendje a csúcs után kényszerűen csökkenő, így a sorrend teljesen kötött.
Összesen $\sum_{m=1}^n \binom{n-1}{m-1} = 2^{n-1}$ unimodális permutáció létezik.
:::

## Gy13.2. feladat

Hány olyan permutációja van az $\{1, 2, 3, 4, 5\}$ halmaznak, amely úgynevezett völgypermutáció: $a_1 > a_2 > a_3 < a_4 < a_5$?

**Megoldás.**

Itt az $a_3$ elem a völgy (lokális és globális minimum), így oda szükségképpen a legkisebb szám, az 1 kerül.
A maradék 4 számból ($2, 3, 4, 5$) ki kell választani a bal oldalra kerülő 2 számot: $\binom{4}{2} = 6$.
Mindkét ágon a sorrend a szigorú monotonitás miatt egyértelmű (balra csökkenő, jobbra növekvő).
A lehetőségek száma:
$$\binom{4}{2} = \mathbf{6}.$$

::: elmelet
**Elméleti háttér — Völgypermutációk és komplementer szimmetria.**

A völgypermutációk az unimodális permutációk inverzei: a sorozat először szigorúan csökken a minimumig (völgyig), majd onnan szigorúan növekszik.
A komplementer transzformációval ($a_i \mapsto n + 1 - a_i$) kölcsönösen egyértelmű megfeleltetés létesíthető az unimodális és a völgypermutációk között. Ennek következtében az $n$ elemű völgypermutációk száma szintén pontosan $2^{n-1}$. Ha a völgy a legkisebb elem, a két ágra való szétosztás ugyanazt a binomiális együtthatós összegzést adja.
:::

## Gy14.1. feladat

Hányféleképpen juthatunk el a $(0,0)$ pontból a $(6,6)$ pontba jobbra és fel lépésekkel? Hány olyan út van, amely áthalad a $(2,3)$ ponton?

**Megoldás.**

Összes út $(0,0) 	o (6,6)$:
$$\binom{6+6}{6} = \binom{12}{6} = \frac{12 \cdot 11 \cdot 10 \cdot 9 \cdot 8 \cdot 7}{720} = \mathbf{924}.$$
Áthalad a $(2,3)$ ponton:
$(0,0) 	o (2,3)$: $\binom{2+3}{3} = \binom{5}{3} = 10$.
$(2,3) 	o (6,6)$: $6 - 2 = 4$ jobbra, $6 - 3 = 3$ fel lépés: $\binom{4+3}{3} = \binom{7}{3} = 35$.
Összesen:
$$10 \cdot 35 = \mathbf{350}.$$

::: elmelet
**Elméleti háttér — Rácsséták szorzási szabálya közbenső pontokon át.**

A síkbeli rácsban az origóból $(0, 0)$ az $(a, b)$ pontba vezető, csak jobbra $(+1, 0)$ és felfelé $(0, +1)$ lépéseket tartalmazó legrövidebb utak száma $\binom{a+b}{a}$.
Ha az útnak kötelezően érintenie kell egy közbenső $M(x_0, y_0)$ pontot ($0 \le x_0 \le a, 0 \le y_0 \le b$):
1. Az út első szakasza az origóból $M$-be vezet: $\binom{x_0 + y_0}{x_0}$ lehetőség.
2. A második szakasz $M$-ből $(a, b)$-be vezet: az eltolás vektor $(a - x_0, b - y_0)$, a lépések száma $\binom{(a - x_0) + (b - y_0)}{a - x_0}$.
A szorzási szabály miatt a közbenső ponton átvezető utak száma a két független útszám szorzata.
:::

## Gy14.2. feladat

Hány olyan útvonal vezet a $(0,0)$-ból az $(n,n)$ pontba jobbra és fel lépésekkel, amely soha nem lép a főátló ($y = x$) fölé (azaz minden lépés után $x \ge y$)?

**Megoldás.**

Ez a klasszikus Dyck-utak száma.
Az összes $(0,0) \to (n,n)$ út száma $\binom{2n}{n}$.
Azok az utak, amelyek átlépik a főátlót, érintik az $y = x + 1$ egyenest.
Tekintsük az első olyan pontot, ahol az út eléri az $y = x + 1$ egyenest, és tükrözzük az út ezen pont utáni szakaszát az $y = x + 1$ egyenesre (André-féle reflexiós elv).
A tükrözött út a $(-1, 1)$ eltolással a végpontot $(n-1, n+1)$-be viszi.
Mivel ez a reflexió bijekció a rossz utak és a $(0,0) \to (n-1, n+1)$ utak között, a rossz utak száma $\binom{2n}{n+1}$.
A jó utak száma tehát az $n$-edik Catalan-szám:
$$C_n = \binom{2n}{n} - \binom{2n}{n+1} = \mathbf{\frac{1}{n+1}\binom{2n}{n}}.$$

::: elmelet
**Elméleti háttér — André-féle tükrözési elv és a Catalan-számok geometrikus bizonyítása.**

Az $(0, 0)$-ból $(n, n)$-be vezető olyan rácsséták száma, amelyek nem lépnek az $y = x$ átló fölé (Dyck-utak), az André-tükrözéssel határozható meg:
1. Az összes utak száma az origóból $(n, n)$-be: $\binom{2n}{n}$.
2. A „rossz” utak azok, amelyek legalább egyszer elérik az $y = x + 1$ tiltott egyenest.
3. Jelölje $P$ az első olyan pontot, ahol az út eléri az $y = x + 1$ egyenest. Tükrözzük az út $P$ utáni szakaszát az $y = x + 1$ egyenesre!
4. Mivel a végpont $(n, n)$ tükörképe az $(n-1, n+1)$ pont, a tükrözés bijekciót létesít a rossz utak és az origóból $(n-1, n+1)$-be vezető szabad utak között.
5. A rossz utak száma $\binom{2n}{n-1}$, így a jó utak száma:
$$C_n = \binom{2n}{n} - \binom{2n}{n-1} = \frac{1}{n+1}\binom{2n}{n}.$$
:::

## Gy15.1. feladat

Hány olyan 6-jegyű PIN-kód létezik (amely 0-val is kezdődhet), amelyben semelyik két egymást követő számjegy nem azonos?

**Megoldás.**

Az első számjegy 10-féle lehet ($0..9$).
Minden további számjegynek csak az előtte álló jegytől kell különböznie, így mindegyikre 9 lehetőség van:
$$10 \cdot 9^5 = 10 \cdot 59\,049 = \mathbf{590\,490}.$$

::: elmelet
**Elméleti háttér — Sorozatok lokális tiltásokkal (Markov-típusú megszorítások).**

Ha egy $k$ hosszú sorozatban az egymást követő elemekre lokális tiltás vonatkozik (pl. $x_{i+1} \neq x_i$):
- Az első pozíció $x_1$ tetszőlegesen választható az $S$ alaphalmazból: $|S|$ lehetőség.
- Minden további $x_{j}$ pozícióra ($j = 2, \dots, k$) a választás kizárólag az közvetlenül előtte álló $x_{j-1}$ elemtől tiltott, így a lehetőségek száma minden lépésben pontosan $|S| - 1$.
A döntések száma független az előző elemek konkrét értékétől, így a lehetőségek száma: $|S|(|S|-1)^{k-1}$.
:::

## Gy15.2. feladat

Hány olyan 6-jegyű szám van (nem kezdődhet 0-val), amelyben semelyik két egymást követő jegy paritása sem egyezik meg (azaz a páros és páratlan számjegyek szigorúan váltakoznak)?

**Megoldás.**

A számjegyek két csoportba oszthatók:
- Páros számjegyek: $\{0, 2, 4, 6, 8\}$ (5 db)
- Páratlan számjegyek: $\{1, 3, 5, 7, 9\}$ (5 db)
Két eset lehetséges a kezdőjegy paritása szerint:
1. eset: Páratlan számmal kezdődik (Páratlan-Páros-Páratlan-Páros-Páratlan-Páros).
Az 1. jegy 5-féle, a 2. jegy 5-féle, ..., a 6. jegy 5-féle: $5^6 = 15\,625$.
2. eset: Páros számmal kezdődik (Páros-Páratlan-Páros-Páratlan-Páros-Páratlan).
Mivel nem kezdődhet 0-val, az 1. jegy csak $\{2, 4, 6, 8\}$ lehet (4 lehetőség).
A további 5 jegy mindegyike 5-féle lehet: $4 \cdot 5^5 = 4 \cdot 3125 = 12\,500$.
A két diszjunkt eset összege:
$$15\,625 + 12\,500 = \mathbf{28\,125}.$$

::: elmelet
**Elméleti háttér — Alternáló paritású számsorozatok.**

Ha a számjegyek paritásának szigorúan váltakoznia kell (páros-páratlan-páros... vagy páratlan-páros-páratlan...):
1. A decimális számjegyek között 5 páros $\{0, 2, 4, 6, 8\}$ és 5 páratlan $\{1, 3, 5, 7, 9\}$ található.
2. A kezdőjegy esetén a 0 tiltott (nem lehet vezető nulla), így a kezdő páros jegyek száma 4, míg a páratlanoké 5.
3. A paritásmintázat rögzítése után az egyes pozíciók választásai egymástól függetlenek, így a lehetőségek a pozíciónkénti elemszámok szorzataként adódnak.
:::

## Gy16.1. feladat

Hány $f: \{1, 2, 3\} \to \{1, 2, \dots, 8\}$ szigorúan monoton növekvő függvény van, amelyre teljesül, hogy $f(2) = 5$?

**Megoldás.**

A feltétel szerint $1 \le f(1) < 5 < f(3) \le 8$.
$f(1)$ értéke az $\{1, 2, 3, 4\}$ halmazból választható (4 lehetőség).
$f(3)$ értéke az $\{6, 7, 8\}$ halmazból választható (3 lehetőség).
A két választás egymástól független:
$$4 \cdot 3 = \mathbf{12}.$$

::: elmelet
**Elméleti háttér — Monoton leképezések rögzített értékekkel és faktorizáció.**

Legyen $f: [n] \to [m]$ monoton növekvő függvény. Ha előírjuk, hogy $f(i_0) = j_0$:
- Az $1 \le x < i_0$ elemek képei csak az $\{1, 2, \dots, j_0\}$ halmazba eshetnek, és monotonitásuk megmarad: ez egy $f_1: [i_0 - 1] \to [j_0]$ monoton függvény.
- Az $i_0 < x \le n$ elemek képei a $\{j_0, j_0 + 1, \dots, m\}$ halmazba eshetnek: ez egy $f_2: [n - i_0] \to [m - j_0 + 1]$ monoton függvény.
A két részfüggvény egymástól teljesen függetlenül választható meg, így a feltételes monoton leképezések száma a részproblémák megoldásszámainak szorzata.
:::

## Gy16.2. feladat

Hány olyan $f: \{1, 2, 3, 4\} \to \{1, 2, \dots, 7\}$ gyengén monoton növő függvény van, amelyre $f(1) = 2$ és $f(4) = 6$?

**Megoldás.**

A feltétel szerint:
$$2 \le f(2) \le f(3) \le 6.$$
Az $f(2)$ és $f(3)$ értékeket a $\{2, 3, 4, 5, 6\}$ halmazból kell kiválasztani gyengén növekvő módon.
A képhalmaz mérete $6 - 2 + 1 = 5$ elem, ebből választunk 2 értéket ismétléses kombinációval:
$$\binom{5 + 2 - 1}{2} = \binom{6}{2} = \frac{6 \cdot 5}{2} = \mathbf{15}.$$

::: elmelet
**Elméleti háttér — Gyengén monoton függvények és ismétléses kombináció.**

Az $f: [n] \to [m]$ gyengén monoton növekvő függvények ($f(1) \le f(2) \le \dots \le f(n)$) bijektív kapcsolatban állnak az $m$ elemű halmazból vett $n$ elemű ismétléses kombinációkkal:
Minden gyengén monoton függvény értékkészlete egy $n$ elemű multihalmaz $\{f(1), \dots, f(n)\} \subseteq [m]$, és megfordítva, bármely ilyen multihalmaz elemeit növekvő sorrendbe rendezve egyértelműen előáll a függvény.
Így a gyengén monoton függvények száma:
$$\binom{m + n - 1}{n}.$$
:::

## Gy17.1. feladat

Egy konvex 15-szög átlói általános helyzetben vannak (semelyik három nem metszi egymást egy közös belső pontban). Hány belső átlómetszéspont keletkezik?

**Megoldás.**

A belső átlómetszéspontok száma:
$$\binom{15}{4} = \frac{15 \cdot 14 \cdot 13 \cdot 12}{24} = 15 \cdot 7 \cdot 13 = \mathbf{1365}.$$

::: elmelet
**Elméleti háttér — Konvex sokszögek belső átlómetszéspontjainak kombinatorikája.**

Tekintsünk egy konvex $n$-szöget általános helyzetben (semelyik három átló nem metszi egymást egy közös belső pontban).
*Tétel:* A sokszög belsejében keletkező átlómetszéspontok száma pontosan $\binom{n}{4}$.
*Bizonyítás:*
1. Tetszőleges 4 csúcs, $A, B, C, D$ a konvex sokszög kerületén körbejárva egyértelműen meghatároz egy konvex négyszöget.
2. Egy konvex négyszög két átlója ($AC$ és $BD$) a négyszög belsejében metszi egymást, míg a többi élpár nem metsző.
3. Megfordítva, minden belső metszéspont pontosan két átló metszéspontja, amelyek végpontjai 4 különböző csúcsot alkotnak a sokszögön.
Így a belső metszéspontok és a 4-csúcshalmazok között bijekció áll fenn.
:::

## Gy17.2. feladat

Hány belső metszéspontja van egy konvex 8-szög átlóinak, ha semelyik 3 átló nem megy át egy ponton?

**Megoldás.**

$$\binom{8}{4} = \frac{8 \cdot 7 \cdot 6 \cdot 5}{24} = 7 \cdot 2 \cdot 5 = \mathbf{70}.$$

::: elmelet
**Elméleti háttér — Általános helyzet és a többes átlómetszések kizárása.**

A $\binom{n}{4}$ képlet szigorú feltétele az *általános helyzet*: ha három vagy több átló egyetlen közös pontban metszi egymást (ahogy az szabályos sokszögeknél gyakran előfordul páros $n$ esetén, pl. a középpontban), akkor a valódi geometriai metszéspontok száma szigorúan kisebb $\binom{n}{4}$-nél. Szabályos sokszögekre a pontos képletet Poonen és Rubinstein határozta meg mély körosztási és gyökelméleti módszerekkel.
:::

## Gy18.1. feladat

A hatoslottón 45 számból 6-ot húznak ki. Hány olyan kihúzás lehetséges, amelyben nincs két szomszédos szám?

**Megoldás.**

A Kaplansky-képlet alapján $n = 45, k = 6$:
$$\binom{45 - 6 + 1}{6} = \binom{40}{6} = \frac{40 \cdot 39 \cdot 38 \cdot 37 \cdot 36 \cdot 35}{720} = \mathbf{3\,838\,380}.$$

::: elmelet
**Elméleti háttér — Kaplansky 1. lemmája (szomszédmentes választás egyenesen).**

Hányféleképpen választható ki $k$ elem az $\{1, 2, \dots, n\}$ halmazból úgy, hogy semelyik kettő ne legyen szomszédos?
*Kaplansky-formula:* $\binom{n - k + 1}{k}$.
*Kombinatorikus transzformáció:*
Legyenek a kiválasztott elemek $1 \le x_1 < x_2 < \dots < x_k \le n$. A szomszédmentesség feltétele: $x_{i+1} - x_i \ge 2$.
Vezessük be az $y_i = x_i - (i - 1)$ változókat! Ekkor:
$$1 \le y_1 < y_2 < \dots < y_k \le n - k + 1.$$
Ez a leképezés kölcsönösen egyértelmű megfeleltetést létesít a szomszédmentes $k$-asok és az $\{1, \dots, n - k + 1\}$ halmaz tetszőleges $k$ elemű részhalmazai között.
:::

## Gy18.2. feladat

Hányféleképpen választható ki 4 szám az $\{1, 2, \dots, 25\}$ számok közül úgy, hogy bármely két kiválasztott szám különbsége legalább 3 legyen (tehát $|x_i - x_j| \ge 3$)?

**Megoldás.**

Rendezzük a számokat: $1 \le x_1 < x_2 < x_3 < x_4 \le 25$.
A feltétel: $x_{i+1} - x_i \ge 3$.
Végezzük el a transzformációt:
$y_1 = x_1$
$y_2 = x_2 - 2$
$y_3 = x_3 - 4$
$y_4 = x_4 - 6$.
Ekkor $y_{i+1} - y_i = (x_{i+1} - x_i) - 2 \ge 3 - 2 = 1$, így $1 \le y_1 < y_2 < y_3 < y_4 \le 25 - 6 = 19$.
A lehetőségek száma:
$$\binom{19}{4} = \frac{19 \cdot 18 \cdot 17 \cdot 16}{24} = 19 \cdot 3 \cdot 17 \cdot 4 = \mathbf{3876}.$$

::: elmelet
**Elméleti háttér — Általánosított távolsági korlátok lineáris elrendezésben.**

Ha a kiválasztott elemek között előírt minimális távolság $d$ (azaz $x_{i+1} - x_i \ge d$):
Az $y_i = x_i - (i - 1)(d - 1)$ transzformációval az új változók szigorúan növekvők ($y_{i+1} - y_i \ge 1$), és a felső korlát $y_k \le n - (k - 1)(d - 1)$.
Ennek következtében a lehetőségek száma:
$$\binom{n - (k - 1)(d - 1)}{k}.$$
$d = 1$-re a közönséges kombinációt $\binom{n}{k}$, $d = 2$-re Kaplansky lemmáját $\binom{n-k+1}{k}$ kapjuk vissza.
:::

## Gy19.1. feladat

Hány tartományra osztja a síkot 10 általános helyzetű egyenes? Hány korlátos tartomány keletkezik?

**Megoldás.**

Összes tartomány:
$$R_{10} = 1 + \frac{10 \cdot 11}{2} = 1 + 55 = \mathbf{56}.$$
Korlátos tartományok száma:
$$B_{10} = \binom{10 - 1}{2} = \binom{9}{2} = \frac{9 \cdot 8}{2} = \mathbf{36}.$$
(Ellenőrzés: nemkorlátos tartományok száma $2 \cdot 10 = 20$, és $36 + 20 = 56$.)

::: elmelet
**Elméleti háttér — Steiner-tétel: sík felosztása egyenesekkel.**

$n$ általános helyzetű egyenes (semelyik kettő nem párhuzamos és semelyik három nem megy át egy ponton) a síkot tartományokra osztja:
$$L_n = 1 + \binom{n+1}{2} = \frac{n^2 + n + 2}{2}.$$
Bizonyítás indukcióval: Az $n$-edik egyenest behúzva az metszi a korábbi $n-1$ egyenest $n-1$ különböző pontban. Ez az $n-1$ pont az új egyenest $n$ szakaszra és félegyenesre osztja, melyek mindegyike kettévág egy korábbi tartományt, így $L_n = L_{n-1} + n$.
A tartományok közül pontosan $2n$ végtelen (nyílt), míg a korlátos (zárt sokszög) tartományok száma Euler poliédertételéből: $\binom{n-1}{2}$.
:::

## Gy19.2. feladat

Hány tartományra osztja a síkot $n$ darab kör, ha bármely kettő metszi egymást 2 pontban, és semelyik háromnak nincs közös pontja?

**Megoldás.**

Jelölje $C_n$ a tartományok számát. $C_1 = 2$.
Az $n$-edik kör a megelőző $n-1$ kört mindegyikét 2-2 pontban metszi, azaz összesen $2(n-1)$ metszéspont keletkezik az $n$-edik körön.
Ez a $2(n-1)$ metszéspont az $n$-edik kört $2(n-1)$ darab körívre bontja.
Minden körív egy korábbi tartományt vág ketté:
$$C_n = C_{n-1} + 2(n-1).$$
Összegezve:
$$C_n = C_1 + 2 \sum_{k=1}^{n-1} k = 2 + 2 \cdot \frac{(n-1)n}{2} = \mathbf{n^2 - n + 2}.$$

::: elmelet
**Elméleti háttér — Sík felosztása körökkel.**

Ha a síkban $n$ kört veszünk fel általános helyzetben (bármely két kör metszi egymást 2 pontban, és semelyik három nem megy át egy közös ponton):
Az $n$-edik kör behúzásakor az metszi a korábbi $n-1$ kört $2(n-1)$ pontban. Ez a $2(n-1)$ pont a kört $2(n-1)$ körívre osztja, melyek mindegyike egy korábbi tartományt kettéoszt.
Így a rekurzió: $C_n = C_{n-1} + 2(n-1)$.
A zárt alak teleszkopikus összegzéssel ($C_1 = 2$):
$$C_n = 2 + 2\sum_{j=1}^{n-1} j = 2 + 2\frac{(n-1)n}{2} = n^2 - n + 2.$$
:::

## Gy20.1. feladat

A 32 lapos magyar kártyából 5 lapot kap egy játékos. Hány olyan kéz van, amelyben legalább egy ász található (a 4 ász közül)?

**Megoldás.**

Összes lehetséges 5 lapos leosztás:
$$\binom{32}{5} = \frac{32 \cdot 31 \cdot 30 \cdot 29 \cdot 28}{120} = 201\,376.$$
Azok a leosztások, amelyekben egyetlen ász sincs (mind az 5 lap a $32 - 4 = 28$ nem-ász lapból származik):
$$\binom{28}{5} = \frac{28 \cdot 27 \cdot 26 \cdot 25 \cdot 24}{120} = 98\,280.$$
A legalább egy ászt tartalmazó kezek száma:
$$201\,376 - 98\,280 = \mathbf{103\,096}.$$

::: elmelet
**Elméleti háttér — Komplementer elv és hipergeometrikus feltételek.**

Amikor egy feladatban a „legalább egy” vagy „legalább $k$” típusú feltétel szerepel, a közvetlen esetszétválasztás helyett gyakran sokkal hatékonyabb a komplementer esemény számolása:
$$N_{\text{jó}} = N_{\text{összes}} - N_{\text{rossz}}.$$
A „legalább egy megadott típusú elem” komplementere a „pontosan nulla megadott típusú elem”.
Ha $N$ elemből $M$ speciális, és $n$ elemet választunk ki visszatevés nélkül:
$$N_{\text{legalább 1 speciális}} = \binom{N}{n} - \binom{N - M}{n}.$$
:::

## Gy20.2. feladat

52 lapos pakliból 13 lapot kap egy játékos (bridge leosztás). Hány olyan leosztás van, amelyben mind a 4 ász a játékos kezében van?

**Megoldás.**

A 4 ász mind a kezében kell legyen ($\binom{4}{4} = 1$).
A maradék $13 - 4 = 9$ lapot a maradék $52 - 4 = 48$ lapból kapja:
$$\binom{48}{9} = \frac{48!}{9! \cdot 39!} = \mathbf{1\,677\,106\,640}.$$

::: elmelet
**Elméleti háttér — Rögzített elemeket tartalmazó részhalmazok.**

Ha egy $n$ elemű kiválasztásban bizonyos $m$ kitüntetett elemnek kötelezően szerepelnie kell:
1. Az $m$ elemet rögzítjük a kiválasztásban (ez $1$ lehetőség).
2. A maradék $n - m$ elemet a maradék $N - m$ rendelkezésre álló elem közül kell szabadon kiválasztani: $\binom{N - m}{n - m}$ lehetőség.
Ez a kombinatorikai azonosság az alapja a Vandermonde-féle konvolúciónak és a hipergeometrikus valószínűségi változóknak.
:::

## Gy21.1. feladat

Egy fagylaltozóban 5 íz van. Hányféleképpen vásárolhatunk legfeljebb 10 gombóc fagyit (csak az ízek darabszáma számít)?

**Megoldás.**

A hiányváltozó módszerével: $x_1 + \dots + x_5 + x_6 = 10$, ahol $x_i \ge 0$.
A lehetőségek száma:
$$\binom{10 + 6 - 1}{10} = \binom{15}{10} = \binom{15}{5} = \frac{15 \cdot 14 \cdot 13 \cdot 12 \cdot 11}{120} = 3003.$$

::: elmelet
**Elméleti háttér — Egyenlőtlenségek visszavezetése egyenletekre (slak-változó).**

Az $x_1 + x_2 + \dots + x_n \le K$ egyenlőtlenség nemnegatív egész megoldásainak száma közvetlenül visszavezethető egyenlőségre egy pótlólagos (slack) változó, $x_{n+1} \ge 0$ bevezetésével:
$$x_1 + x_2 + \dots + x_n + x_{n+1} = K.$$
Mivel $x_{n+1} = K - \sum_{i=1}^n x_i$, az $x_{n+1} \ge 0$ feltétel pontosan az eredeti egyenlőtlenséggel ekvivalens.
Ez egy $n + 1$ változós nemnegatív egyenlet, így a megoldások száma az ismétléses kombinációval:
$$\binom{K + (n + 1) - 1}{(n + 1) - 1} = \binom{K + n}{n}.$$
:::

## Gy21.2. feladat

Hány nemnegatív egész megoldása van az $x_1 + x_2 + x_3 + x_4 = 20$ egyenletnek, ha $x_1 \ge 3, x_2 \ge 1, x_3 \ge 0, x_4 \ge 4$?

**Megoldás.**

Végezzük el az eltolást:
$y_1 = x_1 - 3 \ge 0$
$y_2 = x_2 - 1 \ge 0$
$y_3 = x_3 \ge 0$
$y_4 = x_4 - 4 \ge 0$.
Az új változók összege:
$$y_1 + y_2 + y_3 + y_4 = 20 - (3 + 1 + 0 + 4) = 20 - 8 = 12.$$
Ennek nemnegatív megoldásszáma:
$$\binom{12 + 4 - 1}{12} = \binom{15}{12} = \binom{15}{3} = \frac{15 \cdot 14 \cdot 13}{6} = \mathbf{455}.$$

::: elmelet
**Elméleti háttér — Eltérő alsó korlátok kezelése diofantoszi rendszerekben.**

Ha a változókra egyedi alsó korlátok vonatkoznak: $x_i \ge c_i$ minden $i \in [n]$-re:
A célösszegből levonjuk az alsó korlátok összegét $\sum c_i$. Az új változók $y_i = x_i - c_i \ge 0$ már a klasszikus nemnegatív diofantoszi egyenletet elégítik ki:
$$\sum_{i=1}^n y_i = K - \sum_{i=1}^n c_i.$$
A feladat pontosan akkor oldható meg, ha $K \ge \sum c_i$, és ekkor a megoldások száma $\binom{(K - \sum c_i) + n - 1}{n - 1}$.
:::

## Gy22.1. feladat

Egy szabályos 10-szög csúcsai közül hányféleképpen választhatunk ki 3 csúcsot úgy, hogy semelyik kettő ne legyen szomszédos?

**Megoldás.**

A körre vonatkozó Kaplansky-formula szerint $n = 10, k = 3$:
$$\frac{10}{10 - 3} \binom{10 - 3}{3} = \frac{10}{7} \binom{7}{3} = \frac{10}{7} \cdot 35 = 10 \cdot 5 = \mathbf{50}.$$

::: elmelet
**Elméleti háttér — Kaplansky 2. lemmája (szomszédmentes választás körön).**

Hányféleképpen választható ki $k$ elem egy kör alakban elhelyezkedő $n$ pont közül úgy, hogy semelyik kettő ne legyen szomszédos?
*Kaplansky kör-formulája:*
$$\frac{n}{n - k}\binom{n - k}{k}.$$
*Bizonyítás esetszétválasztással:*
Válasszunk ki egy rögzített $v_1$ csúcsot a körön.
1. *Ha $v_1$-et kiválasztjuk:* ekkor a szomszédai ($v_2$ és $v_n$) nem választhatók ki. A maradék $n - 3$ elemű egyenesről kell $k - 1$ szomszédmentes elemet választani: Kaplansky 1. lemmájával $\binom{(n - 3) - (k - 1) + 1}{k - 1} = \binom{n - k - 1}{k - 1}$.
2. *Ha $v_1$-et nem választjuk ki:* elhagyhatjuk $v_1$-et, ekkor az $n - 1$ hosszú egyenesről választunk $k$ szomszédmentes elemet: $\binom{(n - 1) - k + 1}{k} = \binom{n - k}{k}$.
A két eset összege: $\binom{n - k - 1}{k - 1} + \binom{n - k}{k} = \frac{n}{n - k}\binom{n - k}{k}$.
:::

## Gy22.2. feladat

Egy kör alakú asztal körül 16 szék van. Hányféleképpen ülhet le 4 ember úgy, hogy semelyik kettő ne üljön egymás melletti székre?

**Megoldás.**

Először válasszuk ki a 4 széket úgy, hogy semelyik kettő ne legyen szomszédos.
A körre vonatkozó Kaplansky-lemma szerint ($n = 16, k = 4$):
$$\frac{16}{16 - 4} \binom{16 - 4}{4} = \frac{16}{12} \binom{12}{4} = \frac{4}{3} \cdot \frac{12 \cdot 11 \cdot 10 \cdot 9}{24} = \frac{4}{3} \cdot 495 = 4 \cdot 165 = 660.$$
Mivel a 4 ember megkülönböztethető, a 4 kiválasztott székre $4! = 24$-féleképpen ülhetnek le.
Az összes lehetséges ülésrend száma:
$$660 \cdot 24 = \mathbf{15\,840}.$$

::: elmelet
**Elméleti háttér — Kör menti székválasztás és személyek permutációja.**

Ha $k$ megkülönböztethető személy ül le egy $n$ székből álló körasztalhoz úgy, hogy semelyik két ember nem kerül szomszédos székre:
1. *Helyek kiválasztása:* a személyektől függetlenül először kiválasztjuk a $k$ darab nem szomszédos széket a körön: ez Kaplansky 2. lemmája szerint $\frac{n}{n - k}\binom{n - k}{k}$ lehetőség.
2. *Személyek leültetése:* a már kiválasztott $k$ székre a $k$ különböző embert $k!$-féleképpen ültethetjük le.
A kettő szorzata: $\frac{n}{n - k}\binom{n - k}{k} \cdot k!$.
Fontos: itt a székek számozottak (címkézettek), ezért nem faktorizálunk ki $n$-nel, ahogy az elforgatási ekvivalencia esetén tennénk.
:::

# A 2. feladatsorhoz

## Gy23.1. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ egészre teljesül: $\sum_{k=1}^{n} (3k - 2) = \frac{n(3n - 1)}{2}$.

**Megoldás.**

1. Bázislépés: $n = 1$-re a bal oldal: $3 \cdot 1 - 2 = 1$. A jobb oldal: $\frac{1(3 \cdot 1 - 1)}{2} = \frac{2}{2} = 1$. Igaz.
2. Indukciós feltevés: Tegyük fel, hogy $n$-re igaz: $\sum_{k=1}^n (3k-2) = \frac{n(3n-1)}{2}$.
3. Indukciós lépés:
$$\sum_{k=1}^{n+1} (3k-2) = \frac{n(3n-1)}{2} + (3(n+1)-2) = \frac{3n^2 - n + 6n + 2}{2} = \frac{3n^2 + 5n + 2}{2}.$$
Szorzattá bontva a számlálót: $3n^2 + 5n + 2 = (n+1)(3n+2) = (n+1)(3(n+1)-1)$.
Így:
$$\frac{(n+1)(3(n+1)-1)}{2}.$$
Az állítás minden $n \ge 1$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — A teljes indukció axiómája és számtani sorozatok összege.**

A teljes indukció a természetes számok Peano-axiómarendszerének alapköve: ha egy állítás igaz $n = 1$-re (bázislépés), és tetszőleges $n$-re feltéve az állítás igazságát igazolható az $n+1$-re vonatkozó állítás (indukciós lépés), akkor az állítás minden $n \in \mathbb{N}$ esetén igaz.
Számtani sorozatok összegzésénél az elsőfokú tagok összege mindig másodfokú polinomot eredményez:
$$\sum_{k=1}^n (a + (k-1)d) = n \cdot \frac{a_1 + a_n}{2}.$$
Az indukciós lépésben az algebrai azonosság $\frac{n(3n-1)}{2} + (3n+1) = \frac{(n+1)(3n+2)}{2}$ azonnal zárja a bizonyítást.
:::

## Gy23.2. feladat

Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 1$ esetén $\sum_{k=1}^{n} k^3 = \left(\frac{n(n+1)}{2}\right)^2$.

**Megoldás.**

1. Bázis: $n = 1$-re $1^3 = 1$ és $\left(\frac{1 \cdot 2}{2}\right)^2 = 1^2 = 1$. Igaz.
2. Tegyük fel, hogy $\sum_{k=1}^n k^3 = \frac{n^2(n+1)^2}{4}$.
3. Lépés:
$$\sum_{k=1}^{n+1} k^3 = \frac{n^2(n+1)^2}{4} + (n+1)^3 = (n+1)^2 \left[\frac{n^2 + 4(n+1)}{4}\right] = (n+1)^2 \frac{(n+2)^2}{4} = \left(\frac{(n+1)(n+2)}{2}\right)^2.$$
Kész. $\blacksquare$

::: elmelet
**Elméleti háttér — A köbök összege és a Nichomachus-tétel.**

A diszkrét matematika egyik legnevezetesebb azonossága szerint az első $n$ köbszám összege megegyezik az első $n$ szám összegének négyzetével:
$$\sum_{k=1}^n k^3 = \left(\sum_{k=1}^n k\right)^2 = \left(\frac{n(n+1)}{2}\right)^2 = \frac{n^2(n+1)^2}{4}.$$
Kombinatorikus bizonyítás: Tekintsünk egy $n \times n$-es rácsot, vagy számoljuk meg a 4-eseket $(a, b, c, d)$ bizonyos rendezési feltételekkel. Az indukciós lépés kulcsa, hogy $\left(\frac{n(n+1)}{2}\right)^2 + (n+1)^3 = \frac{(n+1)^2}{4} [n^2 + 4(n+1)] = \frac{(n+1)^2(n+2)^2}{4}$, ami pontosan az $n+1$-re vonatkozó formula.
:::

## Gy24.1. feladat

Legalább hány diáknak kell egy osztályba járnia ahhoz, hogy biztosan legyen olyan naptári hónap, amelyben legalább 5 születésnap van?

**Megoldás.**

A 12 hónap a 12 skatulya.
A legrosszabb esetben minden hónapban legfeljebb $5 - 1 = 4$ születésnap van, ez $12 \times 4 = 48$ diák.
Legalább $48 + 1 = \mathbf{49}$ diák szükséges, hogy biztosan legyen legalább 5 fős hónap.

::: elmelet
**Elméleti háttér — A skatulya-elv (Dirichlet-elv) általános alakja.**

*Skatulyaelv:* Ha $N$ tárgyat helyezünk el $m$ dobozba (skatulyába), akkor létezik legalább egy olyan skatulya, amely legalább $\lceil N/m \rceil$ tárgyat tartalmaz.
*Indirekt bizonyítás:* Ha minden dobozban legfeljebb $\lceil N/m \rceil - 1 < N/m$ tárgy lenne, akkor a tárgyak összege szigorúan kisebb lenne, mint $m \cdot (N/m) = N$, ami ellentmondás.
Annak garantálásához, hogy legalább egy dobozban legyen $k$ elem, a legrosszabb esetben minden dobozba $k - 1$ elemet teszünk (ez $m(k - 1)$ elem), így az $(m(k - 1) + 1)$-edik elem elhelyezése garantálja a $k$ elemű skatulyát.
:::

## Gy24.2. feladat

Egy iskolai évfolyamon legalább hány diáknak kell tanulnia ahhoz, hogy biztosan legyen legalább három olyan naptári hónap, amelyben legalább 1-1 diák született?

**Megoldás.**

**Nincs ilyen létszám.** Előfordulhat, hogy tetszőlegesen sok diák mindannyian ugyanabban az 1 vagy 2 hónapban születtek (pl. csak januárban és februárban), így sosem érik el a 3 különböző hónapot.

::: elmelet
**Elméleti háttér — Korlátos kapacitású skatulyák és a komplementer elv.**

Ha $m$ különböző kategória mindegyikéből szeretnénk legalább egyet kapni (egyik se maradjon üresen):
A legkedvezőtlenebb helyzet az, amikor az egyik kategóriát teljesen elkerüljük, miközben az összes többi $m - 1$ kategória kapacitását kimerítjük. Ha a kategóriákban lévő elemek száma $c_1, c_2, \dots, c_m$ (csökkenő sorrendben), akkor a legrosszabb esetben a legnagyobb $m - 1$ csoportot húzzuk ki teljesen, amihez még 1 húzás szükséges a hiányzó típus garantálásához: $1 + \sum_{i=1}^{m-1} c_i$.
:::

## Gy25.1. feladat

Egy ládában 20 alma, 30 narancs és 40 banán található. Legalább hány gyümölcsöt kell kivenni, hogy biztosan legyen köztük 5 azonos fajtájú?

**Megoldás.**

A legrosszabb esetben mindhárom fajtából legfeljebb $5 - 1 = 4$ darabot veszünk ki:
$$4 + 4 + 4 = 12 \text{ gyümölcs}.$$
A következő gyümölcs biztosan valamelyikből az 5. lesz:
$$12 + 1 = \mathbf{13}.$$

::: elmelet
**Elméleti háttér — Dirichlet-elv azonos méretű osztályokra.**

Ha egy ládában $m$ különböző színű zokni/golyó van, és mindegyik színből elegendően sok (legalább $k$ darab) áll rendelkezésre:
Annak biztosításához, hogy legalább az egyik színből legalább $k$ darabunk legyen:
- A legrosszabb eset (extrémum-elv): minden egyes színből pontosan $k - 1$ darabot húzunk ki.
- Ekkor kihúztunk összesen $m(k - 1)$ darabot, és még egyetlen színből sincs meg a $k$ darab.
- A következő, $(m(k - 1) + 1)$-edik húzás azonban a skatulyaelv miatt kényszerűen olyan színű lesz, amiből már volt $k - 1$ darab, így létrehozza a kívánt $k$-as csoportot.
:::

## Gy25.2. feladat

Egy 52 lapos francia kártyacsomagból (4 szín mindegyikéből 13 lap) hány lapot kell húzni, hogy biztosan legyen köztük mind a 4 színből legalább 2 lap?

**Megoldás.**

A legrosszabb esetben a 4 színből 3 színt teljesen kihúzunk ($3 \times 13 = 39$ lap), és a 4. színből csak 1 lapot húzunk ki.
A kihúzott lapok száma:
$$39 + 1 = 40 \text{ lap}.$$
Ekkor még nincs meg a 4. színből a 2 lap.
A következő lap már biztosan a 4. színből lesz a 2. lap:
$$40 + 1 = \mathbf{41} \text{ lap}.$$

::: elmelet
**Elméleti háttér — Véges készletek kiürülése és a legrosszabb eset analízise.**

Ha a színek készletei korlátozottak (nem végtelenek):
A cél eléréséhez a legrosszabb forgatókönyv az, ha azok a színek, amelyekből kevesebb van, mint a célkvóta, teljesen kiürülnek, vagy a cél színekből $k - 1$-ig jutunk el, miközben a felesleges színek összes darabját kihúzzuk. A pontos küszöbérték meghatározásához meg kell keresni azt a maximális elemszámú halmazt, amely még nem tartalmazza a keresett konfigurációt, és ehhez 1-et hozzáadni.
:::

## Gy26.1. feladat

Egy $3 \times 3$ méteres négyzetben legfeljebb hány pont helyezhető el úgy, hogy bármely kettő távolsága nagyobb legyen, mint $\sqrt{2}$ méter?

**Megoldás.**

Bontsuk a négyzetet 9 darab $1 \times 1$-es kis négyzetre. Egy $1 \times 1$-es négyzet átlója $\sqrt{1^2 + 1^2} = \sqrt{2}$.
A skatulya-elv szerint 10 pont esetén lenne két pont egyazon kis négyzetben, melyek távolsága $\le \sqrt{2}$.
9 pont elhelyezhető: a koordináták legyenek $\{0, 1{,}5, 3\} \times \{0, 1{,}5, 3\}$, ekkor a legkisebb távolság $1{,}5 = \sqrt{2{,}25} > \sqrt{2}$.
A maximális pontszám **9**.

::: elmelet
**Elméleti háttér — Geometrikus skatulya-elv zárt síkidomokban.**

Ha egy $S$ síkidomban $N$ pontot helyezünk el:
1. Felbontjuk az $S$ idomot $m$ darab mérhető részre $S_1, S_2, \dots, S_m$, ahol minden rész átmérője $\operatorname{diam}(S_i) = \sup_{P, Q \in S_i} d(P, Q) \le D$.
2. Ha $N > m$, akkor a skatulyaelv szerint legalább két pont ugyanabba az $S_i$ részbe esik.
3. Ez a két pont legfeljebb $D$ távolságra lehet egymástól.
Egységnégyzet esetén ($1 \times 1$) a felosztás $k \times k$ darab $\frac{1}{k} \times \frac{1}{k}$-s négyzetre bontható, melyek átmérője $\frac{\sqrt{2}}{k}$. 5 pont esetén $k = 2$, a 4 kis négyzet átmérője $\frac{\sqrt{2}}{2} \approx 0{,}7071$.
:::

## Gy26.2. feladat

Egy 1 oldalú szabályos háromszögbe 5 pontot helyezünk el. Mutassuk meg, hogy lesz két olyan pont, melyek távolsága legfeljebb 0,5!

**Megoldás.**

Kössük össze a szabályos háromszög oldalfelező pontjait.
Ez a háromszöget 4 darab egybevágó, 0,5 oldalú szabályos háromszögre osztja.
Egy 0,5 oldalú szabályos háromszögben bármely két pont távolsága legfeljebb az oldal hossza, azaz legfeljebb 0,5.
Mivel 5 pontot helyeztünk el a 4 kis háromszögben, a skatulya-elv szerint legalább az egyik kis háromszögbe legalább 2 pont esik.
Ezen két pont távolsága legfeljebb **0,5**. $\blacksquare$

::: elmelet
**Elméleti háttér — Szabályos háromszögek fraktálszerű felosztása.**

Egy $a$ oldalhosszúságú szabályos háromszög az oldalfelező pontok összekötésével 4 darab egybevágó, $a/2$ oldalhosszúságú szabályos háromszögre bontható.
Általánosabban: az oldalakat $k$ egyenlő részre osztva és a párhuzamosokat behúzva a háromszög $k^2$ darab $a/k$ oldalhosszúságú kis szabályos háromszögre bomlik.
Mivel egy $a/k$ oldalú szabályos háromszög bármely két pontjának távolsága legfeljebb az oldal hossza ($a/k$), ha $N > k^2$ pontot helyezünk el a háromszögben, a skatulyaelv garantálja, hogy létezik két pont, amelyek távolsága legfeljebb $a/k$.
:::

## Gy27.1. feladat

Igazoljuk algebrailag és kombinatorikus úton is, hogy $\binom{n}{2} + \binom{n+1}{2} = n^2$.

**Megoldás.**

*Algebrailag:*
$$\binom{n}{2} + \binom{n+1}{2} = \frac{n(n-1)}{2} + \frac{(n+1)n}{2} = \frac{n^2 - n + n^2 + n}{2} = \frac{2n^2}{2} = n^2.$$
*Kombinatorikusan:*
Egy $n \times n$-es rács $n^2$ mezőjét a főátló két háromszögre osztja: a főátló alatti mezők száma $\binom{n}{2}$, a főátlón lévő és felette lévő mezők száma $\binom{n+1}{2}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Háromszögszámok és négyzetszámok kapcsolata.**

A $T_n = \sum_{k=1}^n k = \frac{n(n+1)}{2} = \binom{n+1}{2}$ háromszögszámok a síkban pontokból épített szabályos háromszögeket reprezentálnak.
Két egymást követő háromszögszám összege mindig négyzetszám:
$$T_{n-1} + T_n = \frac{(n-1)n}{2} + \frac{n(n+1)}{2} = \frac{n^2 - n + n^2 + n}{2} = n^2.$$
Geometriai szemléltetés: egy $n \times n$-es négyzetet a főátlója mentén kettévágva egy $T_n$ és egy $T_{n-1}$ méretű háromszögre bomlik. Ez az elemi azonosság a diszkrét differenciál- és integrálszámítás alaptételeinek geometriai reprezentációja.
:::

## Gy27.2. feladat

Igazoljuk, hogy minden $1 \le k \le n$ esetén $\binom{n}{k} = \frac{n - k + 1}{k} \binom{n}{k-1}$.

**Megoldás.**

Közvetlen algebrai átalakítással:
$$\frac{n - k + 1}{k} \binom{n}{k-1} = \frac{n - k + 1}{k} \cdot \frac{n!}{(k-1)!(n - k + 1)!} = \frac{n!}{k!(n-k)!} = \binom{n}{k}.$$
Kombinatorikusan: a $k$ és $k-1$ méretű részhalmazok közötti illeszkedési relációk fokszámaival kapjuk. $\blacksquare$

::: elmelet
**Elméleti háttér — Pascal-háromszög azonosságai és a hokiütő-szabály.**

A binomiális együtthatók alapegyenlete a Pascal-azonosság:
$$\binom{n}{k} + \binom{n}{k+1} = \binom{n+1}{k+1}.$$
Kombinatorikus bizonyítás: egy $n+1$ elemű halmazból $k+1$ elemet választunk. Válasszunk ki egy $x$ elemet! Ha $x$ bekerül, a maradék $n$ elemből $k$-t választunk ($\binom{n}{k}$); ha $x$ kimarad, a maradék $n$ elemből $k+1$-et választunk ($\binom{n}{k+1}$).
Iterálva ezt az azonosságot kapjuk a hokiütő-szabályt (hockey-stick identity): $\sum_{i=r}^n \binom{i}{r} = \binom{n+1}{r+1}$.
:::

## Gy28.1. feladat

Hány olyan $(A, B)$ rendezett halmazpár választható ki egy $n$ elemű halmazból, amelyek diszjunktak ($A \cap B = \emptyset$)?

**Megoldás.**

Az alaphalmaz minden elemére 3 lehetőség van:
1. $x \in A$ (és $x \notin B$);
2. $x \in B$ (és $x \notin A$);
3. $x \notin A$ és $x \notin B$.
Mivel $A \cap B = \emptyset$, a 4. lehetőség ($x \in A \cap B$) kizárt.
Mivel minden elem független, a diszjunkt párok száma:
$$3^n.$$

::: elmelet
**Elméleti háttér — Diszjunkt részhalmazpárok és ternáris kódolás.**

Hány olyan $(A, B)$ részhalmazpár létezik egy $n$ elemű $X$ halmazban, amelyre $A \cap B = \emptyset$?
Minden $x \in X$ elemre pontosan 3 kölcsönösen kizáró lehetőség áll fenn:
1. $x \in A$ (és így $x \notin B$);
2. $x \in B$ (és így $x \notin A$);
3. $x \notin A$ és $x \notin B$.
Mivel a döntések az $n$ elemre egymástól teljesen függetlenek, az összes diszjunkt pár száma pontosan $3^n$.
Binomiális tétellel: $\sum_{k=0}^n \binom{n}{k} 2^{n-k} = (1 + 2)^n = 3^n$.
:::

## Gy28.2. feladat

Hányféleképpen választhatunk ki egy $n$ elemű halmazból egy $A$ részhalmazt és egy $x \notin A$ elemet?

**Megoldás.**

1. módszer: Előbb $x$-et választjuk ($n$ lehetőség), majd $A$-t az $n-1$ elem részhalmazai közül ($2^{n-1}$ lehetőség): $n 2^{n-1}$.
2. módszer: Méret szerint: $\sum_{k=0}^{n-1} (n - k) \binom{n}{k}$.
A kettő egyenlő: $n 2^{n-1}$.

::: elmelet
**Elméleti háttér — Kitüntetett elemmel ellátott részhalmazok (point-set párok).**

Hány olyan $(A, x)$ pár létezik, ahol $A \subseteq X$ és $x \in A$?
Kétféleképpen számolva (kettős megszámlálás):
- *Először az $A$ részhalmazt választjuk:* ha $|A| = k$, akkor $x \in A$ választására $k$ lehetőség van: $\sum_{k=1}^n k \binom{n}{k}$.
- *Először az $x$ kitüntetett pontot választjuk:* $x \in X$ kiválasztása $n$ lehetőség; a maradék $n-1$ elem tetszőlegesen vagy benne van $A$-ban, vagy nincs: $2^{n-1}$ lehetőség.
A kettő egyenlőségéből azonnal adódik az ismert azonosság: $\sum_{k=1}^n k \binom{n}{k} = n 2^{n-1}$.
:::

## Gy29.1. feladat

Egy $1 \times 1$-es négyzetbe 5 pontot helyezünk el. Mutassuk meg, hogy van köztük kettő, amelyek távolsága legfeljebb $\frac{\sqrt{2}}{2}$!

**Megoldás.**

Osszuk a négyzetet 4 darab $0{,}5 \times 0{,}5$-ös kis négyzetre.
A skatulya-elv szerint az 5 pontból kettő egy kis négyzetbe esik.
A kis négyzet átlója:
$$\sqrt{0{,}5^2 + 0{,}5^2} = \sqrt{\frac{1}{4} + \frac{1}{4}} = \sqrt{\frac{1}{2}} = \frac{\sqrt{2}}{2}.$$
Így ezen két pont távolsága legfeljebb $\frac{\sqrt{2}}{2} \approx 0{,}707$. $\blacksquare$

::: elmelet
**Elméleti háttér — Rácsos skatulyafelbontás és a távolsági korlátok élessége.**

Amikor egy síkbeli zárt tartományt skatulyákra osztunk, a pontok optimális elhelyezése a maximális távolság maximalizálását célzó Packing Problem (körpakolási probléma) duálisa.
Egységnégyzetben $k^2 + 1$ pont elhelyezésekor a négyzetet $k \times k$ darab $1/k$ oldalú négyzetre bontva mindig garantálható legfeljebb $\frac{\sqrt{2}}{k}$ távolságú pontpár.
A konstrukció élességét a résznégyszögek középpontjai vagy a peremeken elhelyezett pontok adják.
:::

## Gy29.2. feladat

Egy $2 \times 2$-es négyzetbe 17 pontot teszünk. Mutassuk meg, hogy van köztük kettő, amelyek távolsága legfeljebb $\frac{\sqrt{2}}{2}$!

**Megoldás.**

Osszuk a $2 \times 2$-es négyzetet 16 darab $0{,}5 \times 0{,}5$-ös kis négyzetre ($4 \times 4$-es rács).
17 pont esetén a skatulya-elv miatt legalább kettő ugyanabba a $0{,}5 \times 0{,}5$-ös négyzetbe esik.
Távolságuk legfeljebb a kis négyzet átlója: $\sqrt{0{,}5^2 + 0{,}5^2} = \frac{\sqrt{2}}{2}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Téglalap-felbontások és a maximális távolság becslése.**

Ha az alapidom nem négyzet, hanem egy $a \times b$ méretű téglalap, az optimális felosztás nem feltétlenül négyzet alakú részeket használ, hanem az oldalarányokhoz igazodó $p \times q$ cellás rácsot.
Egy $u \times v$ méretű cella átmérője $\sqrt{u^2 + v^2}$. Ha $N > pq$ pont adott, a skatulyaelv alapján van cella, amelyben legalább két pont fekszik, így távolságuk legfeljebb a cella átlója.
:::

## Gy30.1. feladat

Legfeljebb hány természetes szám adható meg úgy, hogy semelyik kettő különbsége ne legyen osztható 77-tel?

**Megoldás.**

A 77-tel való osztási maradékok száma 77. Bármely két szám különbsége akkor és csak akkor nem osztható 77-tel, ha maradékaik különböznek.
Így legfeljebb **77** szám adható meg (pl. $0, 1, \dots, 76$).

::: elmelet
**Elméleti háttér — Maradékosztályok mint skatulyák számelméleti feladatokban.**

Tetszőleges $m \in \mathbb{N}$ esetén minden egész szám a $\{0, 1, \dots, m-1\}$ maradékosztályok pontosan egyikébe tartozik modulo $m$.
Ha adott $m + 1$ egész szám, a skatulyaelv miatt legalább kettő azonos maradékot ad modulo $m$, így különbségük osztható $m$-mel.
*Erdős–Ginzburg–Ziv-tétel (1961):* Tetszőleges $2m - 1$ egész szám közül mindig kiválasztható pontosan $m$ darab úgy, hogy összegük osztható $m$-mel.
:::

## Gy30.2. feladat

Mutassuk meg, hogy tetszőleges 6 egész szám között van kettő, amelyek különbsége osztható 5-tel!

**Megoldás.**

Az 5-tel való osztási maradékok a $\{0, 1, 2, 3, 4\}$ halmaz elemei (5 lehetséges érték).
6 szám esetén a skatulya-elv miatt legalább két számnak megegyezik a maradéka modulo 5, így különbségük osztható 5-tel. $\blacksquare$

::: elmelet
**Elméleti háttér — Részletösszegek és oszthatóság (kumulatív összegek módszere).**

Legyenek $a_1, a_2, \dots, a_n$ tetszőleges egész számok.
Tekintsük a prefix (kumulatív) összegeket:
$$S_0 = 0, \quad S_1 = a_1, \quad S_2 = a_1 + a_2, \quad \dots, \quad S_n = a_1 + \dots + a_n.$$
Ez pontosan $n + 1$ darab összeg. Mivel modulo $n$ csak $n$ különböző maradék létezik, a skatulyaelv szerint létezik két olyan index, $0 \le i < j \le n$, amelyekre:
$$S_j \equiv S_i \pmod n \implies S_j - S_i = \sum_{k=i+1}^j a_k \equiv 0 \pmod n.$$
Így minden számsorozatban található legalább egy olyan összefüggő blokk, melynek összege osztható a sorozat hosszával.
:::

## Gy31.1. feladat

Legfeljebb hány szám választható ki 1-től 100-ig úgy, hogy semelyik kettő ne legyen relatív prím?

**Megoldás.**

A páros számok száma 1-től 100-ig 50.
Ha 51 számot választanánk, az $\{1,2\}, \{3,4\}, \dots, \{99,100\}$ 50 darab szomszédos párból a skatulya-elv miatt legalább egy teljes párt választanánk, melyek relatív prímek.
A maximum tehát **50**.

::: elmelet
**Elméleti háttér — Erdős tétele relatív prím párokról.**

Ha a $\{1, 2, \dots, 2n\}$ halmazból kiválasztunk $n + 1$ számot:
*Tétel:* A kiválasztott számok között mindig létezik kettő, amelyek relatív prímek egymáshoz.
*Bizonyítás skatulyaelvvel:*
Osszuk fel a $2n$ számot $n$ diszjunkt párra (skatulyára) a szomszédos számok szerint:
$$\{1, 2\}, \{3, 4\}, \{5, 6\}, \dots, \{2n-1, 2n\}.$$
Mivel $n + 1$ számot választunk az $n$ skatulyából, a skatulyaelv szerint legalább két kiválasztott szám ugyanabba a párba esik, vagyis alakjuk $2k-1$ és $2k$. Két egymást követő egész szám legnagyobb közös osztója: $\gcd(2k-1, 2k) = \gcd(2k-1, 2k - (2k-1)) = \gcd(2k-1, 1) = 1$.
:::

## Gy31.2. feladat

Mutassuk meg, hogy ha az $\{1, 2, \dots, 2n\}$ számok közül kiválasztunk $n + 1$ darabot, akkor mindig lesz kettő, hogy az egyik osztja a másikat!

**Megoldás.**

Minden számot írjunk fel $x = 2^a \cdot b$ alakban, ahol $b \in \{1, 3, \dots, 2n - 1\}$ páratlan.
Mivel pontosan $n$ páratlan szám van $2n$-ig, az $n + 1$ kiválasztott szám között a skatulya-elv szerint legalább kettőnek megegyezik a $b$ páratlan része:
$$x_1 = 2^{a_1} b, \qquad x_2 = 2^{a_2} b.$$
Ha $a_1 < a_2$, akkor $x_1 \mid x_2$. $\blacksquare$

::: elmelet
**Elméleti háttér — Erdős tétele egymást osztó számpárokról.**

Ha a $\{1, 2, \dots, 2n\}$ halmazból kiválasztunk $n + 1$ számot:
*Tétel:* A kiválasztott számok között mindig létezik kettő, amelyek közül az egyik osztja a másikat.
*Bizonyítás:*
Minden $x \in \{1, \dots, 2n\}$ szám egyértelműen felírható $x = 2^k \cdot q$ alakban, ahol $q$ egy páratlan szám (az $x$ legnagyobb páratlan osztója).
A halmazbeli lehetséges páratlan részek $q \in \{1, 3, 5, \dots, 2n - 1\}$, ezek száma pontosan $n$.
Mivel $n + 1$ számot választottunk ki, a skatulyaelv szerint létezik két szám, $x_1 = 2^a q$ és $x_2 = 2^b q$, amelyek páratlan része azonos ($q$). Ha feltehetjük, hogy $a < b$, akkor $x_1 \mid x_2$, hiszen $x_2 = 2^{b-a} x_1$.
:::

## Gy32.1. feladat

Számítsuk ki az $1 \cdot 2 + 2 \cdot 3 + \dots + n(n+1)$ összeget a hokibot azonosság segítségével!

**Megoldás.**

Vegyük észre, hogy $i(i+1) = 2 \binom{i+1}{2}$.
Ezért az összeg:
$$\sum_{i=1}^{n} i(i+1) = 2 \sum_{i=1}^{n} \binom{i+1}{2} = 2 \left[\binom{2}{2} + \binom{3}{2} + \dots + \binom{n+1}{2}\right].$$
A hokibot azonosság szerint ($k = 2$, felső határ $n+1$):
$$\sum_{j=2}^{n+1} \binom{j}{2} = \binom{(n+1)+1}{2+1} = \binom{n+2}{3}.$$
Ezért az összeg:
$$2 \binom{n+2}{3} = 2 \cdot \frac{(n+2)(n+1)n}{6} = \mathbf{\frac{n(n+1)(n+2)}{3}}.$$

::: elmelet
**Elméleti háttér — Kettős megszámlálás (double counting) és illeszkedési mátrixok.**

A kettős megszámlálás a kombinatorikai bizonyítások egyik legfontosabb eszköze: egy véges halmaz elemeit vagy egy illeszkedési relációt kétféle szempont szerint számolunk meg (pl. sorok szerint, illetve oszlopok szerint összegezve egy 0-1 mátrixot):
$$\sum_{r} (\text{sorösszeg}) = \sum_{c} (\text{oszlopösszeg}).$$
Alapvető példája a kézfogási lemma: a csúcs-él illeszkedési mátrixban minden él oszlopában pontosan két 1-es áll (a két végpont), míg a csúcs sorában a fokszámnak megfelelő 1-es van. Innen: $\sum_{v \in V} d(v) = 2|E|$.
:::

## Gy32.2. feladat

Igazoljuk, hogy $\sum_{k=0}^{n} \binom{n}{k} \binom{n}{n-k} = \binom{2n}{n}$.

**Megoldás.**

Alkalmazzuk a Vandermonde-konvolúciót $m = n$ és $k = n$ paraméterekkel:
$$\sum_{j=0}^{n} \binom{n}{j}\binom{n}{n-j} = \binom{n+n}{n} = \binom{2n}{n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Átlagfok és extremalitás kettős megszámlálással.**

Egy $G = (V, E)$ gráfban az átlagos fokszám:
$$\bar{d} = \frac{1}{|V|} \sum_{v \in V} d(v) = \frac{2|E|}{|V|}.$$
Mivel a fokszámok átlaga $\bar{d}$, a skatulyaelv (extrémum-elv) miatt szükségképpen létezik olyan csúcs, amelynek foka legalább $\lceil \bar{d} \rceil$, és létezik olyan csúcs, amelynek foka legfeljebb $\lfloor \bar{d} \rfloor$:
$$\delta(G) \le \frac{2|E|}{|V|} \le \Delta(G).$$
Ha minden csúcs foka azonos ($d(v) = k$), a gráf $k$-reguláris, és $2|E| = k|V|$.
:::

## Gy33.1. feladat

Számítsuk ki a $\sum_{k=0}^{n} (-1)^k \binom{n}{k}^2$ alternáló négyzetösszeget, ha $n$ páratlan és ha $n$ páros!

**Megoldás.**

Ha $n$ páratlan: a tagok a $k \leftrightarrow n - k$ szimmetria miatt párokban kiejtik egymást:
$(-1)^{n-k}\binom{n}{n-k}^2 = (-1)^{n-k}\binom{n}{k}^2 = -(-1)^k \binom{n}{k}^2$, mivel $n$ páratlan!
Így az összeg páratlan $n$-re: **$0$**.
Ha $n = 2m$ páros: $(1-x^2)^{2m} = (1-x)^{2m}(1+x)^{2m}$ polinom $x^{2m}$ együtthatója alapján az összeg:
$$\mathbf{(-1)^m \binom{2m}{m}}.$$

::: elmelet
**Elméleti háttér — Páros gráfok kézfogási lemmája.**

Egy $G = (A, B, E)$ páros gráfban minden él az $A$ és $B$ csúcsosztályok között fut (nincs él osztályon belül).
Ha megszámoljuk az élek végpontjait mindkét osztályban:
$$\sum_{u \in A} d(u) = |E| = \sum_{v \in B} d(v).$$
Ez azonnal erős strukturális korlátokat ró a gráfra:
- Ha $G$ félig reguláris (minden $A$-beli csúcs foka $d_A$, minden $B$-beli csúcs foka $d_B$), akkor:
$$|A| \cdot d_A = |B| \cdot d_B \implies \frac{|A|}{|B|} = \frac{d_B}{d_A}.$$
- Ha egy páros gráf $k$-reguláris ($k \ge 1$), akkor $|A| \cdot k = |B| \cdot k \implies |A| = |B|$, vagyis a két partíció mérete azonos.
:::

## Gy33.2. feladat

Határozzuk meg a $\sum_{k=1}^{n} k \binom{n}{k}^2$ összeg zárt alakját!

**Megoldás.**

Használjuk a $k\binom{n}{k} = n\binom{n-1}{k-1}$ összefüggést:
$$\sum_{k=1}^{n} k \binom{n}{k}^2 = \sum_{k=1}^{n} \left(k\binom{n}{k}\right) \binom{n}{k} = \sum_{k=1}^{n} n\binom{n-1}{k-1}\binom{n}{n-k}.$$
Kiemelve $n$-et, a Vandermonde-konvolúció szerint ($n_1 = n-1, n_2 = n$, összeg index $n-1$):
$$n \sum_{j=0}^{n-1} \binom{n-1}{j}\binom{n}{(n-1)-j} = n \binom{(n-1)+n}{n-1} = \mathbf{n \binom{2n-1}{n-1}}.$$
(Mivel $n\binom{2n-1}{n-1} = \frac{n}{2}\binom{2n}{n}$. )

::: elmelet
**Elméleti háttér — Bireguláris páros gráfok és Hall-feltétel.**

Ha egy páros gráf bireguláris, és az $A$ osztályban a fokszámok $d_A \ge d_B$, akkor az osztályméretek aránya $|A| \le |B|$.
*Hall-tétel (házassági tétel, 1935):* Egy páros gráfban akkor és csak akkor létezik az $A$ osztályt fedő teljes párosítás, ha minden $S \subseteq A$ részhalmazra teljesül a Hall-feltétel: $|N(S)| \ge |S|$ (ahol $N(S)$ az $S$ szomszédainak halmaza). Bireguláris gráfban ha $d_A \ge d_B \ge 1$, a Hall-feltétel mindig automatikusan teljesül kettős megszámlálással.
:::

## Gy34.1. feladat

Legfeljebb hány bástya helyezhető el egy $8 \times 8$-as sakktáblán úgy, hogy semelyik kettő ne üsse egymást?

**Megoldás.**

Minden bástyának különböző sorban kell állnia. Mivel 8 sor van, legfeljebb 8 bástya helyezhető el.
A főátló 8 mezőjére téve őket egyik sem üti a másikat.
A maximum tehát **8**.

::: elmelet
**Elméleti háttér — Ramsey-tétel és $R(3, 3) = 6$.**

*Ramsey-tétel (1930):* Minden $k, l \ge 2$ egészre létezik olyan minimális $R(k, l)$ szám, hogy tetszőleges legalább $R(k, l)$ csúcsú teljes gráf éleit 2 színnel (piros és kék) színezve kényszerűen létrejön vagy egy piros $K_k$, vagy egy kék $K_l$.
*Tétel:* $R(3, 3) = 6$.
*Bizonyítás:*
1. $R(3, 3) > 5$: Az 5 csúcsú kör $C_5$ éleit pirosra, átlóit kékre színezve sem piros, sem kék $K_3$ (háromszög) nem keletkezik, így $R(3, 3) \ge 6$.
2. Legyen $G = K_6$ tetszőlegesen színezve, és rögzítsünk egy $v$ csúcsot.
3. A $v$-ből 5 él indul. A skatulyaelv szerint legalább $\lceil 5/2 \rceil = 3$ él azonos színű (tegyük fel, hogy piros), és fussanak az $u_1, u_2, u_3$ csúcsokba.
4. Ha az $\{u_1, u_2, u_3\}$ csúcsok közötti 3 él valamelyike piros, akkor az a $v$-vel együtt piros $K_3$-at alkot.
5. Ha mindhárom él kék, akkor az $\{u_1, u_2, u_3\}$ csúcsok kék $K_3$-at alkotnak.
Minden esetben van egyszínű háromszög!
:::

## Gy34.2. feladat

Legfeljebb hány futó helyezhető el egy $8 \times 8$-as sakktáblán úgy, hogy semelyik kettő ne üsse egymást?

**Megoldás.**

A futók az átlók mentén ütnek.
A táblán 15 darab északnyugat-délkelet irányú átló van, de a két sarokmező (1 mezős átlók) nem ütik egymást.
Egyenként vizsgálva a fekete és fehér mezőket: mindkét színen legfeljebb 7 futó helyezhető el (pl. az alsó és felső sor határaira téve őket).
Összesen legfeljebb $7 + 7 = \mathbf{14}$ futó helyezhető el ütés nélkül.

::: elmelet
**Elméleti háttér — Ramsey-számok rekurziója és felső korlátja.**

A Ramsey-számok alapegyenlőtlensége:
$$R(k, l) \le R(k - 1, l) + R(k, l - 1).$$
Bizonyítás: Legyen $n = R(k-1, l) + R(k, l-1)$, és vegyünk egy tetszőleges 2-színezett $K_n$-et. Egy rögzített $v$ csúcs foka $n - 1$. A skatulyaelv miatt $v$-ből vagy legalább $R(k-1, l)$ piros él, vagy legalább $R(k, l-1)$ kék él indul ki, ami az indukciós feltevéssel azonnal adja a keresett klikket.
Ebből indukcióval következik az Erdős–Szekeres felső korlát:
$$R(k, l) \le \binom{k + l - 2}{k - 1}.$$
:::

## Gy35.1. feladat

Adjunk zárt formulát a $\sum_{k=0}^{n} 2^k \binom{n}{k}$ összegre, és indokoljuk meg kombinatorikusan!

**Megoldás.**

A binomiális tétel szerint $(1 + 2)^n = 3^n$.
Kombinatorikus jelentés: egy $n$ fős csoportból kiválasztunk egy bizottságot ($\binom{n}{k}$), és a bizottság minden tagjának adunk egy piros vagy kék sapkát ($2^k$). Ez ugyanaz, mintha minden emberről eldöntenénk: nincs sapkája, piros sapkája van, vagy kék sapkája van ($3^n$).
A zárt alak: **$3^n$**.

::: elmelet
**Elméleti háttér — A logikai szita-formula (Inclusion-Exclusion Principle).**

Véges halmazok uniójának elemszámát a Poincaré–Sylvester szita-formula adja meg:
$$|A_1 \cup A_2 \cup \dots \cup A_n| = \sum_{i=1}^n |A_i| - \sum_{1 \le i < j \le n} |A_i \cap A_j| + \sum_{1 \le i < j < k \le n} |A_i \cap A_j \cap A_k| - \dots + (-1)^{n-1} |\bigcap_{i=1}^n A_i|.$$
*Karakterisztikus függvényes bizonyítás:*
Egy elem pontosan akkor nem tartozik az unióhoz, ha egyik halmaznak sem eleme. Ha egy elem pontosan $k \ge 1$ halmazhoz tartozik, a jobb oldali összegben a hozzájárulása:
$$\sum_{j=1}^k (-1)^{j-1} \binom{k}{j} = 1 - (1 - 1)^k = 1.$$
Tehát minden unióbeli elem pontosan 1-szer számolódik meg.
:::

## Gy35.2. feladat

Bizonyítsuk be kettős leszámlálással, hogy $\sum_{k=1}^{n} k \binom{n}{k} = n 2^{n-1}$!

**Megoldás.**

Számoljuk meg a bizottság + elnök párokat:
1. Előbb a bizottságot választjuk ($k$ fő), majd az elnököt: $\sum k \binom{n}{k}$.
2. Előbb az elnököt választjuk ($n$ lehetőség), majd a bizottság többi tagját szabadon az $n-1$ emberből ($2^{n-1}$ lehetőség): $n 2^{n-1}$.
A kettő egyenlő. $\blacksquare$

::: elmelet
**Elméleti háttér — Szimmetrikus szita-formula.**

Ha a halmazok és metszeteik mérete szimmetrikus (vagyis tetszőleges $j$ darab halmaz metszetének mérete azonos konstans, $S_j = |\bigcap_{r=1}^j A_{i_r}|$ minden indexválasztásra):
A szita-formula alakja jelentősen leegyszerűsödik:
$$|A_1 \cup \dots \cup A_n| = \sum_{j=1}^n (-1)^{j-1} \binom{n}{j} S_j.$$
Komplementer alakban, az semelyik tulajdonsággal nem rendelkező elemek száma:
$$|S \setminus \bigcup_{i=1}^n A_i| = \sum_{j=0}^n (-1)^j \binom{n}{j} S_j \quad (S_0 = |S|).$$
:::

## Gy36.1. feladat

Mutassuk meg, hogy $\binom{n-3}{k-3} + 3\binom{n-3}{k-2} + 3\binom{n-3}{k-1} + \binom{n-3}{k} = \binom{n}{k}$!

**Megoldás.**

Jelöljünk ki 3 kitüntetett elemet ($a, b, c$). Egy $k$ elemű részhalmaz tartalmazhat 3, 2, 1 vagy 0 kitüntetett elemet.
- 3 kitüntetett elem: $\binom{3}{3}\binom{n-3}{k-3} = \binom{n-3}{k-3}$.
- 2 kitüntetett elem: $\binom{3}{2}\binom{n-3}{k-2} = 3\binom{n-3}{k-2}$.
- 1 kitüntetett elem: $\binom{3}{1}\binom{n-3}{k-1} = 3\binom{n-3}{k-1}$.
- 0 kitüntetett elem: $\binom{3}{0}\binom{n-3}{k} = \binom{n-3}{k}$.
Az összegük pontosan $\binom{n}{k}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Szita-formula alkalmazása oszthatósági kérdésekre.**

Annak meghatározására, hogy hány olyan $x \in \{1, 2, \dots, N\}$ szám van, amely nem osztható a $p_1, p_2, \dots, p_k$ páronként relatív prím számok egyikével sem:
Jelölje $A_i = \{x \le N : p_i \mid x\}$.
Mivel a modulusok relatív prímek, $\operatorname{lcm}(p_i, p_j) = p_i p_j$, így a metszetek mérete: $|A_i \cap A_j| = \lfloor \frac{N}{p_i p_j} \rfloor$.
A szita-formulával a relatív prím számok száma:
$$N - \sum \lfloor N/p_i \rfloor + \sum \lfloor N/(p_i p_j) \rfloor - \dots$$
Ha $N = \prod p_i$, az egészrészjelek elhagyhatók, és a formula az Euler-féle $\varphi(N) = N \prod (1 - 1/p_i)$ szorzatot adja.
:::

## Gy36.2. feladat

Igazoljuk, hogy $\binom{n}{k} - \binom{n-2}{k} = \binom{n-1}{k-1} + \binom{n-2}{k-1}$!

**Megoldás.**

A 36. feladat felbontásából $\binom{n}{k} - \binom{n-2}{k} = \binom{n-2}{k-2} + 2\binom{n-2}{k-1}$.
Másrészt $\binom{n-1}{k-1} = \binom{n-2}{k-2} + \binom{n-2}{k-1}$.
Ezt behelyettesítve a jobb oldal:
$\binom{n-1}{k-1} + \binom{n-2}{k-1} = \binom{n-2}{k-2} + \binom{n-2}{k-1} + \binom{n-2}{k-1} = \binom{n-2}{k-2} + 2\binom{n-2}{k-1}$.
A két oldal megegyezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Bonferroni-egyenlőtlenségek.**

Ha a szita-formula teljes kifejtése túlságosan bonyolult, a Bonferroni-egyenlőtlenségek biztosítanak szigorú alsó és felső becsléseket:
A szita-összeget páratlan tag után megszakítva felülről, páros tag után megszakítva alulról becsüljük az unió méretét:
1. $|A_1 \cup \dots \cup A_n| \le \sum |A_i|$ (Boole-egyenlőtlenség / union bound);
2. $|A_1 \cup \dots \cup A_n| \ge \sum |A_i| - \sum |A_i \cap A_j|$;
3. $|A_1 \cup \dots \cup A_n| \le \sum |A_i| - \sum |A_i \cap A_j| + \sum |A_i \cap A_j \cap A_k|$.
:::

## Gy37.1. feladat

Egy szabályos 16-szög csúcsai közül hányat kell kékre festenünk ahhoz, hogy biztosan legyen köztük két olyan kék csúcs, amelyek a sokszög egy átmérőjének két végpontjai?

**Megoldás.**

A szabályos 16-szögben $16 / 2 = 8$ átmérő van.
A legrosszabb esetben minden átmérőnek csak az egyik végpontját festjük kékre, ez 8 kék csúcs.
A következő (9.) kék csúcs már kénytelen egy már foglalt átmérő másik végpontjára esni:
$$8 + 1 = \mathbf{9} \text{ csúcs}.$$

::: elmelet
**Elméleti háttér — Átmérők és Thálész-tételek szabályos páros sokszögekben.**

Egy szabályos $2m$-szögben a csúcsok párokba állíthatók a középponton átmenő átmérők szerint: pontosan $m$ darab egymástól diszjunkt átmérő létezik, mindegyik 2 szemközti csúcsot köt össze.
*Thálész-tétel:* Egy körben tetszőleges átmérő végpontjai a kör bármely harmadik pontjával derékszögű háromszöget alkotnak.
Ha a szabályos $2m$-szög csúcsai közül $k$ csúcsot kékre festünk, és $k > m$:
A skatulyaelv szerint a kiválasztott $k$ pont között létezik legalább két olyan csúcs, amely egyazon átmérő két végpontja. A harmadik pontot a maradék $k - 2 \ge 1$ kék pont bármelyikének választva azonnal derékszögű háromszöget kapunk.
:::

## Gy37.2. feladat

Egy szabályos nyolcszög csúcsai közül 5 kékre van festve. Bizonyítsuk be, hogy van 3 kék csúcs, amelyek derékszögű háromszöget feszítenek ki!

**Megoldás.**

A nyolcszögben $8 / 2 = 4$ átmérő van.
5 kék csúcs esetén a skatulya-elv szerint legalább egy átmérő mindkét végpontja kék.
A maradék $5 - 2 = 3$ kék csúcs bármelyikével ez az átmérő a Thalész-tétel szerint derékszögű háromszöget alkot. $\blacksquare$

::: elmelet
**Elméleti háttér — Geometrikus Ramsey-típusú eredmények és skatulyaelv sokszögeken.**

A sokszögek csúcsainak színezési problémái a geometriai Ramsey-elmélet legszebb példái közé tartoznak.
Páros sokszögeknél az átmérők és szimmetriatengelyek szerinti felbontás természetes partíciót ad a csúcshalmazon. Ha a kék csúcsok száma meghaladja az átmérők számát ($k > n/2$), nemcsak a derékszögű háromszög létezése garantált, hanem a derékszögű háromszögek száma alulról becsülhető az azonos átmérőre eső párok számával és a maradék pontok kombinációival.
:::

# A 3. feladatsorhoz

## Gy38.1. feladat

Mutassuk meg, hogy $\gcd(F_n, F_{n+3})$ értéke csak 1 vagy 2 lehet! Mikor lesz 2?

**Megoldás.**

Az általános tétel szerint $\gcd(F_n, F_{n+3}) = F_{\gcd(n, n+3)} = F_{\gcd(n, 3)}$.
Mivel $\gcd(n, 3)$ értéke vagy 1, vagy 3:
- Ha $3 \nmid n$, akkor $\gcd(n, 3) = 1 \implies \gcd(F_n, F_{n+3}) = F_1 = 1$.
- Ha $3 \mid n$, akkor $\gcd(n, 3) = 3 \implies \gcd(F_n, F_{n+3}) = F_3 = 2$.
Tehát a legnagyobb közös osztó pontosan akkor 2, ha $n$ osztható 3-mal, egyébként 1.

::: elmelet
**Elméleti háttér — Fibonacci-számok oszthatósága és legnagyobb közös osztója.**

A Fibonacci-sorozat alaptulajdonsága, hogy erős oszthatósági sorozat:
$$\gcd(F_a, F_b) = F_{\gcd(a, b)} \quad \text{minden } a, b \ge 1 \text{ esetén}.$$
Következésképpen:
$$\gcd(F_n, F_{n+3}) = F_{\gcd(n, n+3)}.$$
Mivel $\gcd(n, n+3) = \gcd(n, 3)$, a legnagyobb közös osztó értéke kizárólag 1 vagy 3 lehet:
- Ha $3 \nmid n$, akkor $\gcd(n, 3) = 1$, így $\gcd(F_n, F_{n+3}) = F_1 = 1$.
- Ha $3 \mid n$, akkor $\gcd(n, 3) = 3$, így $\gcd(F_n, F_{n+3}) = F_3 = 2$.
Tehát a Fibonacci-számok harmadikos indexű párosai pontosan akkor oszthatók 2-vel (párosak), ha az index osztható 3-mal ($F_3 = 2, F_6 = 8, F_9 = 34, \dots$).
:::

## Gy38.2. feladat

Bizonyítsuk be teljes indukcióval a következő összegzési képletet: $F_{n+k} = F_{k-1}F_n + F_k F_{n+1}$ minden $n \ge 1, k \ge 1$ esetén!

**Megoldás.**

Rögzítsünk egy tetszőleges $n \ge 1$ egészet, és végezzünk indukciót $k$ szerint!
1. Bázis:
$k = 1$-re: $F_{n+1} = F_0 F_n + F_1 F_{n+1} = 0 \cdot F_n + 1 \cdot F_{n+1} = F_{n+1}$. Igaz!
$k = 2$-re: $F_{n+2} = F_1 F_n + F_2 F_{n+1} = 1 \cdot F_n + 1 \cdot F_{n+1} = F_n + F_{n+1}$. Igaz a Fibonacci-definíció szerint!
2. Indukciós lépés ($k-1$ és $k \implies k+1$):
Tegyük fel, hogy az állítás igaz $k-1$-re és $k$-ra. Ekkor:
$$F_{n+k+1} = F_{n+k} + F_{n+k-1} = (F_{k-1}F_n + F_k F_{n+1}) + (F_{k-2}F_n + F_{k-1}F_{n+1}).$$
Csoportosítsuk a tagokat $F_n$ és $F_{n+1}$ szerint:
$$F_{n+k+1} = (F_{k-1} + F_{k-2})F_n + (F_k + F_{k-1})F_{n+1} = F_k F_n + F_{k+1}F_{n+1}.$$
Ez pontosan a formula $k+1$-re! Az állítás minden $k \ge 1$-re igaz. $\blacksquare$

::: elmelet
**Elméleti háttér — Másodszomszédos Fibonacci-számok relatív prímsége.**

A Fibonacci-rekurzió átrendezésével:
$$F_{n+2} = F_{n+1} + F_n \implies F_{n+2} - F_n = F_{n+1}.$$
Alkalmazzuk az euklideszi algoritmus alaplépését:
$$\gcd(F_n, F_{n+2}) = \gcd(F_n, F_{n+2} - F_n) = \gcd(F_n, F_{n+1}).$$
Mivel két egymást követő Fibonacci-szám mindig relatív prím ($\gcd(F_n, F_{n+1}) = 1$ minden $n \ge 1$-re), azonnal adódik, hogy $\gcd(F_n, F_{n+2}) = 1$ is mindig teljesül.
Általánosabban: $\gcd(n, n+2) \in \{1, 2\}$, és $F_2 = 1$, így $\gcd(F_n, F_{n+2}) = F_{\gcd(n, n+2)} = 1$ minden indexre.
:::

## Gy39.1. feladat

Hány olyan 8 hosszú bináris (0-1) sorozat van, amelyben nem áll egymás mellett két 1-es?

**Megoldás.**

A képlet szerint $n = 8$-ra az ilyen sorozatok száma:
$$a_8 = F_{8+2} = F_{10}.$$
A Fibonacci-számok: $F_1=1, F_2=1, F_3=2, F_4=3, F_5=5, F_6=8, F_7=13, F_8=21, F_9=34, F_{10}=55$.
A válasz tehát **55**.

::: elmelet
**Elméleti háttér — A Cassini-azonosság és a Fibonacci-mátrix determinánsa.**

A Cassini-azonosság (1680):
$$F_{n+1}F_{n-1} - F_n^2 = (-1)^n.$$
A legelegánsabb bizonyítás a Fibonacci-átmeneti mátrix segítségével adható:
Legyen $Q = \begin{pmatrix} 1 & 1 \\ 1 & 0 \end{pmatrix}$. Teljes indukcióval azonnal látható, hogy minden $n \ge 1$-re:
$$Q^n = \begin{pmatrix} F_{n+1} & F_n \\ F_n & F_{n-1} \end{pmatrix}.$$
Vegyük mindkét oldal determinánsát!
A determinánsok szorzástétele miatt:
$$\det(Q^n) = (\det Q)^n = (1 \cdot 0 - 1 \cdot 1)^n = (-1)^n.$$
A mátrix kifejtett determinánsa viszont pontosan: $F_{n+1}F_{n-1} - F_n^2$. Ezzel az azonosság bizonyítást nyert.
:::

## Gy39.2. feladat

Egy $n$ lépcsőfokból álló lépcsőn megyünk fel. Egy lépéssel vagy 1, vagy 2 lépcsőfokot léphetünk fel. Hányféleképpen juthatunk fel a lépcső tetejére?

**Megoldás.**

Jelölje $s_n$ a feljutási módok számát.
Az utolsó lépés vagy 1 fokos volt (elötte $n-1$ fokot tettünk meg: $s_{n-1}$ mód), vagy 2 fokos volt (elötte $n-2$ fokot tettünk meg: $s_{n-2}$ mód).
Így $s_n = s_{n-1} + s_{n-2}$.
Kezdeti értékek: $s_1 = 1 = F_2$, $s_2 = 2$ (1+1 vagy 2) $= F_3$.
Általánosan $n$ fokra a lehetőségek száma:
$$s_n = \mathbf{F_{n+1}}.$$

::: elmelet
**Elméleti háttér — A d'Ocagne-azonosság és indexeltolások.**

A Cassini-azonosság általánosítása a Catalan- és d'Ocagne-azonosság:
- Catalan-azonosság: $F_n^2 - F_{n-r}F_{n+r} = (-1)^{n-r} F_r^2$ ($r = 1$-re Cassini).
- d'Ocagne-azonosság: $F_m F_{n+1} - F_{m+1} F_n = (-1)^n F_{m-n}$.
Ezek az azonosságok a mátrixhatványozás $Q^m Q^{-n} = Q^{m-n}$ azonosságának determinánsaiból és komponenseiből következnek közvetlenül, és a Fibonacci-hálózatok stabilitásvizsgálatának alapját képezik.
:::

## Gy40.1. feladat

Határozzuk meg a Fibonacci-sorozat Pisano-periódusát modulo 2 és modulo 5 esetén!

**Megoldás.**

- Modulo 2:
$F_0 = 0, F_1 = 1, F_2 = 1, F_3 = 0, F_4 = 1$.
A maradékok: $0, 1, 1, 0, 1, 1, \dots$
A periódus hossza: **$\pi(2) = 3$** (páros, páratlan, páratlan).

- Modulo 5:
Maradékok: $0, 1, 1, 2, 3, 0, 3, 3, 1, 4, 0, 4, 4, 3, 2, 0, 2, 2, 4, 1, 0, 1$.
A $(0, 1)$ pár 20 lépés után ismétlődik meg.
A periódus hossza: **$\pi(5) = 20$**.

::: elmelet
**Elméleti háttér — Sakktáblák és sávok dominófedése (kombinatorikus lefedések).**

Hányféleképpen fedhető le egy $2 \times n$ méretű sáv $2 \times 1$-es dominókkal?
Jelölje a lefedések számát $d_n$.
Vizsgáljuk meg a sáv jobb szélét:
1. Ha a jobb szélén egy álló dominó van ($2 \times 1$), akkor a maradék $2 \times (n-1)$ sávot fedjük le: $d_{n-1}$ lehetőség.
2. Ha a jobb szélén fekvő dominó van, akkor a paritás miatt alatta is kényszerűen egy fekvő dominónak kell lennie (egy $2 \times 2$-es blokk): a maradék $2 \times (n-2)$ sávot fedjük le: $d_{n-2}$ lehetőség.
Mivel ez a két eset diszjunkt és kimeríti az összes lehetőséget:
$$d_n = d_{n-1} + d_{n-2}.$$
Mivel $d_1 = 1 = F_2$ és $d_2 = 2 = F_3$, teljes indukcióval minden $n \ge 1$-re $d_n = F_{n+1}$.
:::

## Gy40.2. feladat

Mutassuk meg, hogy minden $m \ge 2$ egész számhoz létezik olyan $n > 0$ index, amelyre $F_n$ osztható $m$-mel!

**Megoldás.**

Mivel a maradéksorozat tisztán periodikus $\pi(m)$ periódushosszal, és $F_0 = 0$, ezért:
$$F_{\pi(m)} \equiv F_0 = 0 \pmod m.$$
Tehát az $n = \pi(m) > 0$ indexre $m \mid F_n$. $\blacksquare$

::: elmelet
**Elméleti háttér — Dominó- és monominó-fedések rekurziója.**

Ha egy $1 \times n$ méretű csíkot $1 \times 1$-es négyzetekkel (monominókkal) és $1 \times 2$-es dominókkal fedünk le:
A jobb oldali utolsó fedőelem vagy monominó (hossza 1, maradék sáv $n-1$), vagy dominó (hossza 2, maradék sáv $n-2$).
Így a rekurzió pontosan $a_n = a_{n-1} + a_{n-2}$, a kezdeti értékekkel $a_1 = 1$, $a_2 = 2$.
Ez szintén a Fibonacci-sorozatot adja: $a_n = F_{n+1}$.
A dominófedések elmélete Kasteleyn pfaffiánus-módszerén keresztül a 2D statisztikus fizika (dimer-modell) egzakt megoldásának alapköve.
:::

## Gy41.1. feladat

Bizonyítsuk be, hogy a páratlan indexű Fibonacci-számok összege: $\sum_{i=1}^{n} F_{2i-1} = F_{2n}$.

**Megoldás.**

Teleszkopikusan: $F_{2i-1} = F_{2i} - F_{2i-2}$.
Összegezve $i = 1$-től $n$-ig:
$$\sum_{i=1}^n (F_{2i} - F_{2i-2}) = (F_2 - F_0) + (F_4 - F_2) + \dots + (F_{2n} - F_{2n-2}) = F_{2n} - F_0 = F_{2n}.$$
Mivel $F_0 = 0$, az állítás kész. $\blacksquare$

::: elmelet
**Elméleti háttér — Racionális generátorfüggvények és a Binet-formula.**

Egy $(a_n)$ sorozat formális generátorfüggvénye: $F(x) = \sum_{n=0}^\infty a_n x^n$.
A Fibonacci-rekurzió $F_n = F_{n-1} + F_{n-2}$ ($F_0 = 0, F_1 = 1$) alapján:
$$F(x) - x F(x) - x^2 F(x) = F_0 + (F_1 - F_0)x + \sum_{n=2}^\infty (F_n - F_{n-1} - F_{n-2})x^n = x.$$
Így a generátorfüggvény zárt alakja:
$$F(x) = \frac{x}{1 - x - x^2}.$$
Parciális törtekre bontva $1 - x - x^2 = (1 - \phi x)(1 - \psi x)$, ahol $\phi = \frac{1+\sqrt{5}}{2}$ az aranymetszés aránya, $\psi = \frac{1-\sqrt{5}}{2} = -\frac{1}{\phi}$.
A mértani sorok kifejtéséből adódik a Binet-formula:
$$F_n = \frac{\phi^n - \psi^n}{\sqrt{5}} = \frac{1}{\sqrt{5}}\left[\left(\frac{1+\sqrt{5}}{2}\right)^n - \left(\frac{1-\sqrt{5}}{2}\right)^n\right].$$
:::

## Gy41.2. feladat

Mutassuk meg, hogy $F_{n+1}^2 - F_{n-1}^2 = F_{2n}$ minden $n \ge 1$ esetén!

**Megoldás.**

Alakítsuk szorzattá a négyzetek különbségét:
$$F_{n+1}^2 - F_{n-1}^2 = (F_{n+1} - F_{n-1})(F_{n+1} + F_{n-1}).$$
A definíció szerint $F_{n+1} - F_{n-1} = F_n$.
Továbbá ismert (vagy az addíciós tételből adódik), hogy $F_{n+1} + F_{n-1} = L_n$, és $F_n L_n = F_{2n}$.
Részletesen: $F_{2n} = F_{n + n} = F_{n-1}F_n + F_n F_{n+1} = F_n(F_{n-1} + F_{n+1})$.
Így:
$$F_n(F_{n+1} + F_{n-1}) = F_{2n}. \quad \blacksquare$$

::: elmelet
**Elméleti háttér — Aszimptotika és az aranymetszés.**

Mivel $|\psi| = |\frac{1-\sqrt{5}}{2}| \approx 0{,}618 < 1$, a $\psi^n$ tag exponenciálisan nullához tart ($n \to \infty$).
Ezért a Binet-formula következményeként:
$$F_n = \left[\frac{\phi^n}{\sqrt{5}}\right] \quad \text{(a legközelebbi egész szám)},$$
és a szomszédos Fibonacci-számok hányadosa az aranymetszéshez tart:
$$\lim_{n \to \infty} \frac{F_{n+1}}{F_n} = \phi = \frac{1+\sqrt{5}}{2} \approx 1{,}6180339887\dots$$
:::

## Gy42.1. feladat

Hány olyan 500-nál nem nagyobb pozitív egész szám van, amely nem osztható sem 3-mal, sem 5-tel?

**Megoldás.**

$|U| = 500$.
$|A_3| = \lfloor 500/3 \rfloor = 166$.
$|A_5| = \lfloor 500/5 \rfloor = 100$.
$|A_{15}| = \lfloor 500/15 \rfloor = 33$.
Szita-formulával:
$|A_3 \cup A_5| = 166 + 100 - 33 = 233$.
A keresett számok száma:
$$500 - 233 = \mathbf{267}.$$

::: elmelet
**Elméleti háttér — Állandó együtthatós lineáris rekurziók.**

Egy $k$-adrendű homogén lineáris rekurzió alakja:
$$a_n + c_1 a_{n-1} + \dots + c_k a_{n-k} = 0.$$
A megoldás keresése $a_n = r^n$ alakban a karakterisztikus egyenlethez vezet:
$$r^k + c_1 r^{k-1} + \dots + c_k = 0.$$
1. *Különböző valós gyökök ($r_1, \dots, r_k$):* az általános megoldás $a_n = C_1 r_1^n + \dots + C_k r_k^n$.
2. *Többszörös gyökök:* ha $r$ egy $m$-szeres gyök, a bázismegoldások: $r^n, n r^n, \dots, n^{m-1} r^n$.
3. A szabad konstansokat a $k$ darab kezdeti feltétel lineáris egyenletrendszeréből határozzuk meg.
:::

## Gy42.2. feladat

Hány olyan 2100-nál nem nagyobb pozitív egész szám van, amely relatív prím a 210-hez?

**Megoldás.**

A 210 prímtényezős felbontása: $210 = 2 \cdot 3 \cdot 5 \cdot 7$.
Mivel $2100 = 10 \cdot 210$, a 2100 pontos többszöröse 210-nek.
Ezért a relatív prímek száma pontosan:
$$10 \cdot \varphi(210) = 10 \cdot 210 \left(1 - \frac{1}{2}\right)\left(1 - \frac{1}{3}\right)\left(1 - \frac{1}{5}\right)\left(1 - \frac{1}{7}\right) = 10 \cdot 210 \cdot \frac{1}{2} \cdot \frac{2}{3} \cdot \frac{4}{5} \cdot \frac{6}{7} = 10 \cdot 48 = \mathbf{480}.$$

::: elmelet
**Elméleti háttér — Inhomogén rekurziók és a próbafüggvény-módszer.**

Ha a rekurzió jobb oldalán nem zérus áll ($a_n - c a_{n-1} = f(n)$):
Az általános megoldás a homogén egyenlet általános megoldásának és az inhomogén egyenlet egy partikuláris megoldásának összege:
$$a_n = a_n^{(h)} + a_n^{(p)}.$$
Polinom $f(n)$ gerjesztés esetén a partikuláris megoldást azonos fokú polinomként keressük (rezonancia esetén $n^s$-sel szorozva).
:::

## Gy43.1. feladat

Egy szabályos dobókockával 7-szer dobunk. Hány olyan dobássorozat van, amelyben mind a 6 szám előfordul legalább egyszer?

**Megoldás.**

Ez a 7-ből 6-ba képező szürjektív függvények száma:
$$6! \cdot S(7, 6).$$
Egy 7 elemű halmaz 6 osztályba bontásához pontosan egy darab 2 elemű osztály és öt darab 1 elemű osztály kell: $S(7, 6) = \binom{7}{2} = 21$.
A szürjektív függvények száma:
$$6! \cdot 21 = 720 \cdot 21 = \mathbf{15\,120}.$$

::: elmelet
**Elméleti háttér — A derangement-rekurzió kombinatorikus levezetése.**

A fixpontmentes permutációk $D_n$ számára két alapvető rekurzió létezik:
1. $D_n = (n - 1)(D_{n-1} + D_{n-2})$ ($n \ge 3$):
*Bizonyítás:* Az 1-es elem képét $\pi(1) = k \in \{2, 3, \dots, n\}$ választjuk ki ($n - 1$ lehetőség).
- Ha $\pi(k) = 1$ (az 1 és $k$ egy 2-hosszú ciklust alkot), a maradék $n - 2$ elem fixpontmentes permutációja $D_{n-2}$.
- Ha $\pi(k) \neq 1$, a $k$ elem veszi át az 1 szerepét (nem képezhető 1-be), ami egy $n - 1$ elemű fixpontmentes permutációnak felel meg: $D_{n-1}$.
2. Elsőrendű rekurzió: $D_n - n D_{n-1} = (-1)^n$, amely azonnal adja a Taylor-soros szita-alakot.
:::

## Gy43.2. feladat

5 különböző levelet teszünk 3 különböző postaládába úgy, hogy egyik láda sem maradhat üresen. Hányféleképpen tehetjük ezt meg?

**Megoldás.**

Ez az 5-ből 3-ba képező szürjektív függvények száma:
$$3! \cdot S(5, 3).$$
Szita-formulával:
$$3^5 - \binom{3}{1}2^5 + \binom{3}{2}1^5 = 243 - 3 \cdot 32 + 3 \cdot 1 = 243 - 96 + 3 = \mathbf{150}.$$
(Stirling-számmal: $S(5, 3) = 25$, így $6 \cdot 25 = 150$.)

::: elmelet
**Elméleti háttér — Fixpontok száma véletlen permutációban (Poisson-eloszlás).**

Jelölje $X$ a fixpontok számát egy egyenletesen választott $\pi \in S_n$ permutációban.
A várható érték a linearitás miatt:
$$\mathbb{E}(X) = \sum_{i=1}^n \mathbb{P}(\pi(i) = i) = n \cdot \frac{1}{n} = 1.$$
Minden $k \in \{0, 1, \dots, n\}$ esetén annak valószínűsége, hogy pontosan $k$ fixpont van:
$$\mathbb{P}(X = k) = \frac{\binom{n}{k} D_{n-k}}{n!} = \frac{1}{k!} \sum_{j=0}^{n-k} \frac{(-1)^j}{j!} \xrightarrow{n \to \infty} \frac{e^{-1}}{k!}.$$
Ez azt mutatja, hogy nagy $n$-re a fixpontok száma standard 1 paraméterű Poisson-eloszlást követ!
:::

## Gy44.1. feladat

Mennyi a 2-vel vagy 5-tel osztható egészek száma 1-től 500-ig?

**Megoldás.**

$|A_2| = 250$, $|A_5| = 100$, $|A_{10}| = 50$.
$$|A_2 \cup A_5| = 250 + 100 - 50 = \mathbf{300}.$$

::: elmelet
**Elméleti háttér — Két modulussal való oszthatóság uniója.**

Két halmaz uniójának mérete: $|A \cup B| = |A| + |B| - |A \cap B|$.
Ha $A_p$ a $p$-vel, $A_q$ a $q$-val osztható számok halmaza $1$-től $N$-ig:
- $|A_p| = \lfloor N/p \rfloor$, $|A_q| = \lfloor N/q \rfloor$.
- Két prím esetén a metszet pontosan a legkisebb közös többszörössel, $\operatorname{lcm}(p, q) = pq$-val osztható számok: $|A_p \cap A_q| = \lfloor N/(pq) \rfloor$.
A szita-formula két halmazra ennek a logikai összefüggésnek a közvetlen megvalósítása.
:::

## Gy44.2. feladat

Mennyi a 2-vel vagy 3-mal osztható egészek összege 1-től 100-ig?

**Megoldás.**

$S(2) = 2 \cdot \frac{50 \cdot 51}{2} = 2550$.
$S(3) = 3 \cdot \frac{33 \cdot 34}{2} = 3 \cdot 561 = 1683$.
$S(6) = 6 \cdot \frac{16 \cdot 17}{2} = 3 \cdot 272 = 816$.
Összeg: $2550 + 1683 - 816 = \mathbf{3417}$.

::: elmelet
**Elméleti háttér — Három halmazos szita-formula oszthatóságra.**

Három halmaz esetén a szita-formula 7 komponensből áll:
$$|A \cup B \cup C| = (|A| + |B| + |C|) - (|A \cap B| + |A \cap C| + |B \cap C|) + |A \cap B \cap C|.$$
Páronként relatív prím $p, q, r$ prímek többszöröseire:
- a 2-es metszetek osztói: $pq, pr, qr$;
- a 3-as metszet osztója: $pqr$.
Az előjelek alternálása biztosítja, hogy a többszörösen osztható számok (pl. $pqr$ többszörösei: $+3 - 3 + 1 = 1$) pontosan egyszer szerepeljenek az összegzésben.
:::

## Gy45.1. feladat

Bizonyítsuk be közvetlen számolással az $F_i F_{i+3} = F_{i+2}^2 - F_{i+1}^2$ azonosságot!

**Megoldás.**

A jobb oldal:
$$F_{i+2}^2 - F_{i+1}^2 = (F_{i+2} - F_{i+1})(F_{i+2} + F_{i+1}).$$
Mivel $F_{i+2} - F_{i+1} = F_i$, és $F_{i+2} + F_{i+1} = F_{i+3}$, kapjuk:
$$F_i \cdot F_{i+3}.$$
A két oldal megegyezik. $\blacksquare$

::: elmelet
**Elméleti háttér — Fibonacci-négyzetek összege és geometriai csempézés.**

A Fibonacci-négyzetek összege elegáns zárt alakkal rendelkezik:
$$\sum_{i=1}^n F_i^2 = F_n F_{n+1}.$$
Geometriai bizonyítás: Képzeljünk el egy téglalapot, amelyet $F_1 \times F_1, F_2 \times F_2, \dots, F_n \times F_n$ méretű négyzetekkel spirálisan csempézünk le.
- $n = 1$: $1 \times 1$-es négyzet, mérete $F_1 \times F_2 = 1 \times 1$.
- Minden újabb $F_k \times F_k$-s négyzet hozzáragasztásakor a keletkező új téglalap oldalai $F_k$ és $F_k + F_{k-1} = F_{k+1}$.
- Az $n$-edik lépésben a teljes téglalap mérete pontosan $F_n \times F_{n+1}$, területe pedig a beépített négyzetek területének összege.
Algebrai teleszkóppal: $F_k^2 = F_k(F_{k+1} - F_{k-1}) = F_k F_{k+1} - F_{k-1}F_k$.
:::

## Gy45.2. feladat

Számítsuk ki a $\sum_{i=1}^{n} F_i F_{i+3}$ összeg zárt alakját!

**Megoldás.**

A teleszkopikus formula szerint $k = 1, m = n$:
$$\sum_{i=1}^{n} F_i F_{i+3} = F_{n+2}^2 - F_2^2 = \mathbf{F_{n+2}^2 - 1}.$$

::: elmelet
**Elméleti háttér — Fibonacci-szorzatok összege és teleszkopikus redukció.**

A Fibonacci-szorzatok $F_i F_{i+k}$ összegzése a másodrendű differenciák segítségével teleszkopikus formára hozható:
Mivel $F_{i+2}^2 - F_{i+1}^2 = (F_{i+2} - F_{i+1})(F_{i+2} + F_{i+1}) = F_i (F_{i+3})$,
a tagok közvetlenül szomszédos négyzetszámok differenciájaként állnak elő:
$$\sum_{i=1}^n F_i F_{i+3} = \sum_{i=1}^n (F_{i+2}^2 - F_{i+1}^2) = F_{n+2}^2 - F_2^2 = F_{n+2}^2 - 1.$$
Ez a teleszkopikus módszer általánosítható tetszőleges $F_i F_{i+k}$ típusú összegre.
:::

## Gy46.1. feladat

Hány olyan 7 hosszú szó képezhető a 4 betűs $\{A, B, C, D\}$ ábécéből, amely tartalmaz legalább egy 'A'-t és legalább egy 'B'-t?

**Megoldás.**

$|U| = 4^7 = 16\,384$.
Hiányzik 'A': $3^7 = 2187$.
Hiányzik 'B': $3^7 = 2187$.
Hiányzik mindkettő: $2^7 = 128$.
Szita-formulával:
$$4^7 - 2 \cdot 3^7 + 2^7 = 16\,384 - 2 \cdot 2187 + 128 = 16\,384 - 4374 + 128 = \mathbf{12\,138}.$$

::: elmelet
**Elméleti háttér — Egészek partíciói és a Ferrers-diagramok konjugálása.**

Egy pozitív egész $n$ szám partícióján olyan pozitív egészekből álló $(\lambda_1, \lambda_2, \dots, \lambda_k)$ sorozatot értünk, amelyre $\lambda_1 \ge \lambda_2 \ge \dots \ge \lambda_k \ge 1$ és $\sum \lambda_i = n$.
*Ferrers- (vagy Young-) diagram:* a partíciót balra zárt négyzetekből vagy pontokból álló sorokkal ábrázoljuk, ahol az $i$-edik sor hossza $\lambda_i$.
*Konjugált partíció ($\lambda^*$):* a diagram tükrözése a főátlóra (sorok és oszlopok cseréje).
*Tétel:* A legfeljebb $k$ tagból álló partíciók száma megegyezik az olyan partíciók számával, amelyekben minden tag legfeljebb $k$ méretű (a konjugálás bijekció e két osztály között).
:::

## Gy46.2. feladat

Hány olyan 6-jegyű szám van (nem kezdődhet 0-val), amelyben a 7-es és a 8-as számjegy is előfordul legalább egyszer?

**Megoldás.**

Összes 6-jegyű szám: $9 \cdot 10^5 = 900\,000$.
- Hiányzik a 7-es: kezdőjegy 8-féle (nem 0, nem 7), a többi 5 jegy 9-féle: $8 \cdot 9^5 = 8 \cdot 59\,049 = 472\,392$.
- Hiányzik a 8-as: ugyanígy $8 \cdot 9^5 = 472\,392$.
- Hiányzik a 7-es és a 8-as is: kezdőjegy 7-féle, a többi 5 jegy 8-féle: $7 \cdot 8^5 = 7 \cdot 32\,768 = 229\,376$.
A mindkét jegyet tartalmazó számok száma szita-formulával:
$$900\,000 - 2 \cdot 472\,392 + 229\,376 = 900\,000 - 944\,784 + 229\,376 = \mathbf{184\,592}.$$

::: elmelet
**Elméleti háttér — Euler partíciós tétele (különböző és páratlan tagok egyenlősége).**

*Euler tétele (1748):* Minden pozitív egész $n$-re a csupa különböző tagból álló partíciók száma megegyezik a csupa páratlan tagból álló partíciók számával:
$$p_{\text{különböző}}(n) = p_{\text{páratlan}}(n).$$
*Bizonyítás generátorfüggvényekkel:*
A különböző tagok generátorfüggvénye: $\prod_{k=1}^\infty (1 + x^k)$.
Alkalmazzuk az $1 + x^k = \frac{1 - x^{2k}}{1 - x^k}$ azonosságot:
$$\prod_{k=1}^\infty (1 + x^k) = \prod_{k=1}^\infty \frac{1 - x^{2k}}{1 - x^k} = \frac{(1 - x^2)(1 - x^4)(1 - x^6)\dots}{(1 - x)(1 - x^2)(1 - x^3)(1 - x^4)\dots} = \prod_{j=1}^\infty \frac{1}{1 - x^{2j-1}}.$$
A jobb oldal pontosan a páratlan tagú partíciók generátorfüggvénye!
A tétel Glaisher- és Sylvester-féle bijektív bizonyítással is igazolható a 2-hatványok bináris felbontásával.
:::

## Gy47.1. feladat

Hányféleképpen fedhető le egy $2 \times 8$-as sakktábla $1 \times 2$-es dominókkal?

**Megoldás.**

A képlet szerint $n = 8$-ra a fedések száma:
$$d_8 = F_{8+1} = F_9.$$
Mivel $F_1=1, F_2=1, F_3=2, F_4=3, F_5=5, F_6=8, F_7=13, F_8=21, F_9=34$, a megoldás:
$$\mathbf{34}.$$

::: elmelet
**Elméleti háttér — Partíciók generátorfüggvénye és az Euler-féle pentagonális tételsor.**

A korlátlan partíciók száma $p(n)$ az alábbi végtelen szorzat együtthatóiként áll elő:
$$\sum_{n=0}^\infty p(n) x^n = \prod_{k=1}^\infty \frac{1}{1 - x^k} = \frac{1}{(1-x)(1-x^2)(1-x^3)\dots}$$
Euler nevezetes pentagonális számtétele (pentagonal number theorem) a nevező reciprokát adja meg:
$$\prod_{k=1}^\infty (1 - x^k) = 1 + \sum_{j=1}^\infty (-1)^j \left(x^{\frac{3j^2-j}{2}} + x^{\frac{3j^2+j}{2}}\right) = 1 - x - x^2 + x^5 + x^7 - x^{12} - x^{15} + \dots$$
Ebből hatékony rekurzív algoritmus adódik $p(n)$ kiszámítására $O(n^{3/2})$ időben.
:::

## Gy47.2. feladat

Hányféleképpen fedhető le egy $1 \times n$-es sáv $1 \times 1$-es és $1 \times 2$-es csempékkel?

**Megoldás.**

Jelölje $c_n$ a fedések számát. Az utolsó csempe vagy $1 \times 1$-es (marad $n-1$), vagy $1 \times 2$-es (marad $n-2$).
Így $c_n = c_{n-1} + c_{n-2}$.
$c_1 = 1 = F_2$, $c_2 = 2 = F_3$.
A válasz tetszőleges $n$-re:
$$c_n = \mathbf{F_{n+1}}.$$

::: elmelet
**Elméleti háttér — Hardy–Ramanujan aszimptotika.**

A partíciófüggvény növekedési ütemét nem egy egyszerű exponenciális vagy polinomiális függvény írja le, hanem a mély analitikus számelmélethez tartozó Hardy–Ramanujan formula (1918):
$$p(n) \sim \frac{1}{4n\sqrt{3}} \exp\left(\pi \sqrt{\frac{2n}{3}}\right) \quad (n \to \infty).$$
Rademacher később ezt egy konvergens végtelen sorrá egészítette ki moduláris formák és Kloosterman-összegek segítségével.
:::

## Gy48.1. feladat

Hány olyan sorrendje van az $A, A, B, B, C, C$ betűknek, amelyben semelyik két azonos betű nem áll egymás mellett?

**Megoldás.**

Alkalmazzuk a levezetett képletet $n = 3$-ra:
$$N = \sum_{k=0}^{3} (-1)^k \binom{3}{k} \frac{(6 - k)!}{2^{3-k}}.$$
Számoljuk ki a tagokat:
- $k = 0$: $\binom{3}{0} \frac{6!}{8} = 1 \cdot \frac{720}{8} = 90$.
- $k = 1$: $\binom{3}{1} \frac{5!}{4} = 3 \cdot \frac{120}{4} = 3 \cdot 30 = 90$.
- $k = 2$: $\binom{3}{2} \frac{4!}{2} = 3 \cdot \frac{24}{2} = 3 \cdot 12 = 36$.
- $k = 3$: $\binom{3}{3} \frac{3!}{1} = 1 \cdot 6 = 6$.
Összegezve:
$$N = 90 - 90 + 36 - 6 = \mathbf{30}.$$

::: elmelet
**Elméleti háttér — Első- és másodfajú Stirling-számok.**

1. *Másodfajú Stirling-számok ($S(n, k)$ vagy $\left\{\begin{matrix} n \\ k \end{matrix}\right\}$):* egy $n$ elemű halmaz felosztásainak száma $k$ darab nemüres, címkézetlen osztályra.
Rekurzió: $S(n, k) = S(n-1, k-1) + k S(n-1, k)$.
Kapcsolat a hatványokkal: $x^n = \sum_{k=0}^n S(n, k) (x)_k$.
2. *Elsőfajú Stirling-számok ($s(n, k)$ vagy $\left[\begin{matrix} n \\ k \end{matrix}\right]$):* az $n$ elemű halmaz azon permutációinak száma, amelyek pontosan $k$ diszjunkt körből állnak.
Rekurzió: $\left[\begin{matrix} n \\ k \end{matrix}\right] = \left[\begin{matrix} n-1 \\ k-1 \end{matrix}\right] + (n-1)\left[\begin{matrix} n-1 \\ k \end{matrix}\right]$.
:::

## Gy48.2. feladat

Hány olyan sorrendje van az $1, 1, 2, 2$ kártyáknak, ahol nincs két egymás melletti azonos szám? Soroljuk fel mindet!

**Megoldás.**

Az összes sorrend száma $\frac{4!}{2! 2!} = 6$.
A 6 lehetséges sorrend:
1122 (rossz), 1212 (jó), 1221 (rossz), 2112 (rossz), 2121 (jó), 2211 (rossz).
A feltételnek megfelelő sorrendek száma: **2** (az $1212$ és a $2121$).

::: elmelet
**Elméleti háttér — Stirling-számok kombinatorikus azonosságai.**

A másodfajú Stirling-számok rekurziójának kombinatorikus bizonyítása:
Jelöljünk ki egy $x_n \in X$ elemet!
- Ha $\{x_n\}$ önmagában egy egyelemű osztályt alkot, a maradék $n-1$ elemet $k-1$ osztályba kell partícionálni: $S(n-1, k-1)$ lehetőség.
- Ha $\{x_n\}$ egy már létező osztályhoz csatlakozik, a maradék $n-1$ elemet $k$ osztályba osztjuk, majd $x_n$-et a már meglévő $k$ osztály valamelyikébe helyezzük: $k S(n-1, k)$ lehetőség.
Összegük pontosan $S(n, k)$.
:::

## Gy49.1. feladat

Oldjuk meg az $a_n = a_{n-1} + 2a_{n-2}$ rekurziót az $a_0 = 2, a_1 = 1$ kezdeti értékekkel!

**Megoldás.**

A karakterisztikus gyökök $\lambda_1 = 2, \lambda_2 = -1$.
Általános alak: $a_n = c_1 2^n + c_2 (-1)^n$.
Kezdeti értékek:
$c_1 + c_2 = 2$
$2c_1 - c_2 = 1$.
Összeadva: $3c_1 = 3 \implies c_1 = 1 \implies c_2 = 1$.
A megoldás:
$$a_n = \mathbf{2^n + (-1)^n}.$$

::: elmelet
**Elméleti háttér — Bell-számok és az összes halmazpartíció.**

Az $n$ elemű halmaz összes lehetséges partícióinak számát a Bell-számok $B_n$ adják meg:
$$B_n = \sum_{k=1}^n S(n, k) \quad (B_0 = 1, B_1 = 1, B_2 = 2, B_3 = 5, B_4 = 15, B_5 = 52, \dots).$$
A Bell-számok alapvető rekurziója:
$$B_{n+1} = \sum_{k=0}^n \binom{n}{k} B_k.$$
*Kombinatorikus bizonyítás:* Jelöljük ki az $x_{n+1}$ elemet! Ennek osztályában még $n - k$ másik elem szerepel a maradék $n$ elemből ($\binom{n}{n-k} = \binom{n}{k}$ választás). A maradék $k$ elemet tetszőlegesen partícionáljuk $B_k$-féleképpen.
Dobinski-formula: $B_n = \frac{1}{e} \sum_{k=0}^\infty \frac{k^n}{k!}$.
:::

## Gy49.2. feladat

Egy gépbe 1 Ft-os vagy 2 Ft-os érmét lehet bedobni (mindkettőből egyfajta létezik). Hányféleképpen dobhatunk be 10 Ft-ot, ha a bedobások sorrendje számít?

**Megoldás.**

Itt a rekurzió $b_n = b_{n-1} + b_{n-2}$, $b_1 = 1, b_2 = 2$. Ez a Fibonacci-sorozat: $b_n = F_{n+1}$.
$n = 10$-re:
$$b_{10} = F_{11} = \mathbf{89}.$$

::: elmelet
**Elméleti háttér — A Bell-háromszög (Aitken-tömb).**

A Bell-számok kézi kiszámításának leggyorsabb módja a Pascal-háromszöghöz hasonló Bell-háromszög:
- 1. sor: 1
- 2. sor: 1, 2
- 3. sor: 2, 3, 5
- 4. sor: 5, 7, 10, 15
- 5. sor: 15, 20, 27, 37, 52
Szabály: minden sor első eleme az előző sor utolsó eleme; minden további elem a közvetlen bal oldali és bal-felső szomszéd összege. A sorok utolsó elemei éppen a Bell-számok.
:::

## Gy50.1. feladat

Az $\{A, B, C\}$ betűkből hány olyan $n$ hosszú szó képezhető, amelyben az $A$ betű után nem állhat sem $B$, sem $C$?

**Megoldás.**

Ha megjelenik egy $A$ betű, utána már csak $A$ állhat.
Így a szó alakja: valahány $\{B, C\}$ betű, majd csupa $A$.
Ha $k$ darab $\{B, C\}$ betű van ($0 \le k \le n$), ezek $2^k$-féleképpen választhatók meg, a maradék $n-k$ helyen kötelezően $A$ áll ($1^{n-k} = 1$).
Összesen:
$$\sum_{k=0}^{n} 2^k = 2^{n+1} - 1.$$

::: elmelet
**Elméleti háttér — Permutációk inverziói és a paritás.**

Egy $\pi \in S_n$ permutációban az $(i, j)$ indexpár *inverziót* alkot, ha $i < j$, de $\pi(i) > \pi(j)$.
Az inverziók száma $I(\pi) = |\{(i, j) : i < j \text{ és } \pi(i) > \pi(j)\}|$.
- $0 \le I(\pi) \le \binom{n}{2}$; $I(\mathrm{id}) = 0$, $I(n, n-1, \dots, 1) = \binom{n}{2}$.
- Egy szomszédos csere (transzpozíció) pontosan 1-gyel változtatja meg az inverziószámot (növeli vagy csökkenti).
- A permutáció előjele (szignatúrája): $\operatorname{sgn}(\pi) = (-1)^{I(\pi)}$.
Ez az előjel kulcsszerepet játszik a determináns Leibniz-formulájában.
:::

## Gy50.2. feladat

A $\{0, 1, 2\}$ számjegyekből álló $n$ hosszú sorozatok közül hány olyan van, amelyben az 1-es és 2-es után nem állhat 0?

**Megoldás.**

Ha megjelenik egy 1-es vagy 2-es, utána már nem állhat 0.
A sorozat alakja: $k$ darab 0-s ($0 \le k \le n$, $1^k = 1$ mód), majd $n-k$ darab $\{1, 2\}$ jegy ($2^{n-k}$ mód).
Összesen:
$$\sum_{k=0}^n 2^{n-k} = \sum_{j=0}^n 2^j = \mathbf{2^{n+1} - 1}.$$

::: elmelet
**Elméleti háttér — Inverziószámok generátorfüggvénye és $q$-faktoriális.**

Hány olyan $n$ elemű permutáció van, melynek pontosan $k$ inverziója van?
Az inverziószámok generátorfüggvénye a $q$-faktoriális $[n]_q!$:
$$\sum_{\pi \in S_n} q^{I(\pi)} = \prod_{i=1}^n \left(1 + q + q^2 + \dots + q^{i-1}\right) = \prod_{i=1}^n \frac{1 - q^i}{1 - q} = [n]_q!.$$
$q = 1$ helyettesítéssel visszakapjuk a permutációk teljes számát: $[n]_1! = n!$.
A szimmetria miatt $I$ és $\binom{n}{2} - I$ inverziójú permutációból pontosan ugyanannyi van.
:::

## Gy51.1. feladat

Hányféleképpen bontható fel egy konvex 7-szög nem metsző átlókkal háromszögekre?

**Megoldás.**

A képlet szerint $n = 7$-re:
$$t_7 = C_{7-2} = C_5 = \frac{1}{6}\binom{10}{5} = \frac{252}{6} = \mathbf{42}.$$

::: elmelet
**Elméleti háttér — Konvex sokszögek triangulációi és Catalan-számok.**

Egy konvex $(n+2)$-szög egymást nem metsző belső átlókkal történő háromszögekre bontását triangulációnak nevezzük.
*Euler tétele:* Minden ilyen trianguláció pontosan $n - 1$ darab átlót tartalmaz, és a sokszöget pontosan $n$ darab háromszögre bontja.
A lehetséges triangulációk száma pontosan az $n$-edik Catalan-szám:
$$t_{n+2} = C_n = \frac{1}{n+1}\binom{2n}{n}.$$
*Segner-rekurzió (1758):* Rögzítsünk egy alapélt az $(n+2)$-szögön! Ez az él egy harmadik $v_k$ csúccsal egy háromszöget alkot, amely a sokszöget egy $k+1$-szögre és egy $n+3-k$-szögre vágja:
$$C_n = \sum_{k=0}^{n-1} C_k C_{n-1-k}.$$
:::

## Gy51.2. feladat

Hányféleképpen vágható fel egy konvex 8-szög nem metsző átlókkal háromszögekre?

**Megoldás.**

$n = 8$-ra:
$$t_8 = C_{8-2} = C_6 = \frac{1}{7}\binom{12}{6} = \frac{924}{7} = \mathbf{132}.$$

::: elmelet
**Elméleti háttér — A Catalan-számok kombinatorikus reprezentációi.**

A Catalan-számok ($C_0=1, C_1=1, C_2=2, C_3=5, C_4=14, C_5=42, C_6=132, \dots$) Stanley nevezetes könyvében több mint 200 különböző kombinatorikus struktúrát számlálnak meg, többek között:
1. Konvex $(n+2)$-szög triangulációi;
2. $n$ pár helyes zárójelezés;
3. $n$ belső csúcsú gyökeres bináris fák;
4. $2n$ hosszú Dyck-utak (nem lépnek az átló fölé);
5. $n+1$ tényezős szorzat asszociatív zárójelezései;
6. $2 \times n$-es standard Young-táblák.
:::

## Gy52.1. feladat

Hányféleképpen zárójelezhető meg egy 5 tényezős szorzat ($x_1 x_2 x_3 x_4 x_5$)?

**Megoldás.**

A képlet szerint $n = 5$-re a zárójelezések száma:
$$z_5 = C_{5-1} = C_4 = \frac{1}{5}\binom{8}{4} = \frac{70}{5} = \mathbf{14}.$$

::: elmelet
**Elméleti háttér — Asszociatív műveletek zárójelezései és bináris fák.**

Egy nem feltétlenül asszociatív szorzat $x_1 x_2 \dots x_m$ ($m$ tényező) összes lehetséges zárójelezéseinek száma:
Minden zárójelezés egyértelműen megfelel egy $m$ levéllel (külső csúccsal) és $m-1$ belső csúccsal rendelkező síkba ágyazott bináris fának, ahol az utolsó elvégzett szorzás felel meg a fa gyökerének.
Ha az utolsó szorzás az $x_1 \dots x_k$ és $x_{k+1} \dots x_m$ blokkok között történik:
$$z_m = \sum_{k=1}^{m-1} z_k z_{m-k} \quad (z_1 = 1).$$
Ez a Segner-féle Catalan-rekurzió eltolt indexekkel: $z_m = C_{m-1} = \frac{1}{m}\binom{2m-2}{m-1}$.
:::

## Gy52.2. feladat

Hány olyan 8 hosszú helyes zárójelkifejezés képezhető 4 darab '(' és 4 darab ')' zárójelből?

**Megoldás.**

A helyes zárójelkifejezések száma $n$ pár zárójelre pontosan az $n$-edik Catalan-szám:
$$C_4 = \frac{1}{5}\binom{8}{4} = \mathbf{14}.$$

::: elmelet
**Elméleti háttér — Helyes zárójelkifejezések (Dyck-szavak) és prefix feltétel.**

Egy $2n$ hosszúságú sorozat $n$ darab '(' és $n$ darab ')' zárójelből pontosan akkor alkot helyes zárójelkifejezést, ha:
1. Az összes nyitó- és csukózárójel száma megegyezik ($n$ és $n$).
2. Tetszőleges prefixben (kezdőszeletben) a nyitó zárójelek száma nem kisebb a csukó zárójelek számánál.
A nyitó zárójelet $+1$-nek, a csukót $-1$-nek megfeleltetve a helyes kifejezések pontosan az origóból induló, a 0 tengely alá sosem süllyedő és $(2n, 0)$-ban végződő rácsséták (Dyck-utak), melyek száma az André-féle tükrözéssel $C_n = \frac{1}{n+1}\binom{2n}{n}$.
:::

## Gy53.1. feladat

Hány olyan részhalmaza van 6 körben ülő embernek, amelyben nincs két szomszédos ember?

**Megoldás.**

A Lucas-szám $n = 6$-ra:
$$L_6 = F_5 + F_7 = 5 + 13 = \mathbf{18}.$$
(Részletezve: 1 db 0 elemű, 6 db 1 elemű, 9 db 2 elemű, 2 db 3 elemű független halmaz: $1 + 6 + 9 + 2 = 18$.)

::: elmelet
**Elméleti háttér — Nem metsző partíciók (non-crossing partitions).**

Egy $[n]$ halmazon értelmezett partíciót *nem metszőnek* nevezünk, ha nincsenek olyan $a < b < c < d$ elemek, hogy $a, c$ egy osztályba, $b, d$ pedig egy másik osztályba tartoznak (geometriailag: a kör kerületén elhelyezett $1, \dots, n$ pontok osztályainak konvex burkai diszjunktak).
*Kreweras tétele (1972):* Az $n$ elemű nem metsző partíciók száma pontosan a $C_n$ Catalan-szám, és a pontosan $k$ osztályt tartalmazó nem metsző partíciók száma a Narayana-szám:
$$N(n, k) = \frac{1}{n}\binom{n}{k}\binom{n}{k-1}.$$
:::

## Gy53.2. feladat

Igazoljuk, hogy az $L_n = F_{n-1} + F_{n+1}$ sorozat kielégíti az $L_n = L_{n-1} + L_{n-2}$ rekurziót minden $n \ge 2$ esetén!

**Megoldás.**

A jobb oldal:
$$L_{n-1} + L_{n-2} = (F_{n-2} + F_n) + (F_{n-3} + F_{n-1}).$$
Csoportosítsuk át:
$$(F_{n-2} + F_{n-3}) + (F_n + F_{n-1}) = F_{n-1} + F_{n+1} = L_n.$$
Kész. $\blacksquare$

::: elmelet
**Elméleti háttér — Szigorúan pozitív Dyck-utak eltolása.**

Azok a $2n$ hosszú Dyck-utak, amelyek a kezdő- és végpont kivételével szigorúan a vízszintes tengely felett haladnak ($y > 0$ minden belső pontban):
Az út első lépése kényszerűen felfelé $(+1)$, az utolsó lépése kényszerűen lefelé $(-1)$ irányul.
A közbülső $2n - 2$ hosszúságú szakasz az $y = 1$ szinthez képest egy tetszőleges $2n - 2$ hosszú standard Dyck-út.
Ennek megfelelően a szigorúan pozitív Dyck-utak száma pontosan:
$$C_{n-1} = \frac{1}{n}\binom{2n-2}{n-1}.$$
:::

## Gy54.1. feladat

Hányféleképpen ülhet le 3 házaspár (6 ember) egy kerek asztal köré úgy, hogy senki sem ül a saját házastársa mellett (forgatással azonosak egybeesnek)?

**Megoldás.**

Alkalmazzuk a szita-formulát $n = 3$ párra:
- $k = 0$: $\binom{3}{0} 2^0 \cdot 5! = 120$.
- $k = 1$: $\binom{3}{1} 2^1 \cdot 4! = 3 \cdot 2 \cdot 24 = 144$.
- $k = 2$: $\binom{3}{2} 2^2 \cdot 3! = 3 \cdot 4 \cdot 6 = 72$.
- $k = 3$: $\binom{3}{3} 2^3 \cdot 2! = 1 \cdot 8 \cdot 2 = 16$.
Összeg:
$$120 - 144 + 72 - 16 = \mathbf{32}.$$

::: elmelet
**Elméleti háttér — A házaspárok leültetése (Ménage-probléma alapjai).**

A Lucas-féle „problème des ménages” (1891): $n$ házaspárt ültetünk le egy kerek asztalhoz úgy, hogy a nemek váltakoznak, és egyetlen férj sem ül a felesége mellett.
Ha a feleségek már leültek a körasztalhoz váltakozó helyekre (ezt $(n-1)!$ módon tehetik meg):
Minden férj számára 2 szék tiltott (a felesége két oldala). A megmaradó $n$ székre a megengedett leülések száma a Touchard- és Riordan-féle képlettel adható meg a bástyapolinomok és a szita-formula segítségével:
$$M_n = \sum_{k=0}^n (-1)^k \frac{2n}{2n-k}\binom{2n-k}{k} (n-k)!$$
:::

## Gy54.2. feladat

3 barátpár (6 ember) áll egy sorba. Hányféleképpen állhatnak sorba úgy, hogy semelyik pár tagjai ne álljanak közvetlenül egymás mellett?

**Megoldás.**

Egyenes sorban $n = 3$ pár:
$|U| = 6! = 720$.
- $k = 1$: $\binom{3}{1} 2^1 \cdot 5! = 6 \cdot 120 = 720$.
- $k = 2$: $\binom{3}{2} 2^2 \cdot 4! = 12 \cdot 24 = 288$.
- $k = 3$: $\binom{3}{3} 2^3 \cdot 3! = 8 \cdot 6 = 48$.
Szita-formulával:
$$720 - 720 + 288 - 48 = \mathbf{240}.$$

::: elmelet
**Elméleti háttér — Szita-formula tiltott pozíciókra körasztalon.**

Amikor személyek körasztal köré ülnek és bizonyos párok nem lehetnek szomszédosak:
A komplementer módszert és a logikai szitát alkalmazzuk:
- Legyen $A_i$ az az esemény, hogy az $i$-edik tiltott pár egymás mellé kerül.
- Egy $k$ méretű tiltott párhalmaz egyidejű szomszédságát a körön Kaplansky 2. lemmájával számoljuk meg: $\frac{2n}{2n-k}\binom{2n-k}{k}$.
- A szita-formula alternáló összege pontosan a tiltásmentes elrendezések számát adja.
:::

## Gy55.1. feladat

Számítsuk ki az $F_1 + F_3 + F_5 + F_7 + F_9 + F_{11}$ összeg pontos értékét!

**Megoldás.**

A páratlan összegzési képlet szerint $n = 6$-ra:
$$\sum_{k=1}^6 F_{2k-1} = F_{2 \cdot 6} = F_{12}.$$
A Fibonacci-számok: $F_1=1, F_2=1, F_3=2, F_4=3, F_5=5, F_6=8, F_7=13, F_8=21, F_9=34, F_{10}=55, F_{11}=89, F_{12}=144$.
Az összeg tehát: **144**.

::: elmelet
**Elméleti háttér — Páratlan indexű Fibonacci-számok összege.**

A páratlan indexű Fibonacci-számok összegzése:
$$\sum_{k=1}^n F_{2k-1} = F_1 + F_3 + F_5 + \dots + F_{2n-1} = F_{2n}.$$
*Bizonyítás indukcióval:*
- $n = 1$: $F_1 = 1$, $F_2 = 1$. Igaz.
- Indukciós lépés: $\sum_{k=1}^{n+1} F_{2k-1} = F_{2n} + F_{2n+1} = F_{2n+2} = F_{2(n+1)}$. Kész!
*Teleszkopikus bizonyítás:* Mivel $F_{2k-1} = F_{2k} - F_{2k-2}$, a tagok szomszédos páros indexek különbségei:
$$(F_2 - F_0) + (F_4 - F_2) + (F_6 - F_4) + \dots + (F_{2n} - F_{2n-2}) = F_{2n} - F_0 = F_{2n}.$$
:::

## Gy55.2. feladat

Számítsuk ki az $F_2 + F_4 + F_6 + F_8 + F_{10}$ összeg értékét!

**Megoldás.**

A páros összegzési képlet szerint $n = 5$-re:
$$\sum_{k=1}^5 F_{2k} = F_{2 \cdot 5 + 1} - 1 = F_{11} - 1.$$
Mivel $F_{11} = 89$:
$$89 - 1 = \mathbf{88}.$$
(Ellenőrzés: $1 + 3 + 8 + 21 + 55 = 88$.)

::: elmelet
**Elméleti háttér — Páros indexű Fibonacci-számok összege.**

A páros indexű Fibonacci-számok összegzése:
$$\sum_{k=1}^n F_{2k} = F_2 + F_4 + F_6 + \dots + F_{2n} = F_{2n+1} - 1.$$
*Bizonyítás teleszkóppal:* Mivel $F_{2k} = F_{2k+1} - F_{2k-1}$, az összeg:
$$(F_3 - F_1) + (F_5 - F_3) + \dots + (F_{2n+1} - F_{2n-1}) = F_{2n+1} - F_1 = F_{2n+1} - 1.$$
A két formula összege $\sum_{j=1}^{2n} F_j = F_{2n} + F_{2n+1} - 1 = F_{2n+2} - 1$, ami az összes Fibonacci-szám összegének jól ismert $\sum_{j=1}^m F_j = F_{m+2} - 1$ azonosságát adja.
:::

# A 4. feladatsorhoz

## Gy56.1. feladat

Legyen $V = \{1, 2, \dots, 50\}$. Hány éle és összefüggőségi komponense van annak a gráfnak, amelyben $i \sim j \iff |i - j| = 5$?

**Megoldás.**

Két csúcs akkor van összekötve, ha $|i - j| = 5$.
Ez azt jelenti, hogy az $i \equiv j \pmod 5$ maradékosztályokon belül a szomszédos elemek vannak láncba kötve:
$r \in \{1, 2, 3, 4, 5\}$ esetén a csúcsok: $r, r+5, r+10, \dots, r+45$ (10 csúcs egy $P_{10}$ út).
- Összefüggőségi komponensek száma: **$5$** darab diszjunkt út.
- Élek száma: mind az 5 komponens egy-egy 10 csúcsú út, amelynek 9 éle van. Összesen: $5 \times 9 = \mathbf{45}$ él.
(Vagy közvetlenül: $50 - 5 = 45$ él.)

::: elmelet
**Elméleti háttér — Rácsgráfok és komponensek kongruencia szerint.**

Ha a $V = \{1, 2, \dots, n\}$ halmazon az éleket $|i - j| = d$ szabály határozza meg:
A gráf diszjunkt komponensekre esik szét az indexek modulo $d$ maradékosztályai szerint:
$$V_r = \{x \in V : x \equiv r \pmod d\} \quad (r = 0, 1, \dots, d-1).$$
Minden $V_r$ osztályon belül a csúcsok egy egyszerű utat (feszítő utat) alkotnak, mivel minden $x$ csúcs pontosan a közvetlen szomszédjával, $x + d$-vel van összekötve.
Így egy ilyen gráf $d$ darab független út diszjunkt uniója. Ha egy $V_r$ osztály mérete $m_r$, az abban lévő élek száma $m_r - 1$.
:::

## Gy56.2. feladat

Legyen $V = \{1, 2, \dots, 40\}$. Hány éle és hány komponense van a gráfnak, ha $i \sim j \iff i + j$ páros és $i \neq j$?

**Megoldás.**

$i + j$ páros pontosan akkor, ha $i$ és $j$ azonos paritásúak.
A gráf 2 komponensre esik szét: a 20 páros csúcs által alkotott $K_{20}$ és a 20 páratlan csúcs által alkotott $K_{20}$.
- Komponensek száma: **$2$**.
- Élek száma: $2 \cdot \binom{20}{2} = 2 \cdot \frac{20 \cdot 19}{2} = 2 \cdot 190 = \mathbf{380}$.

::: elmelet
**Elméleti háttér — Kongruenciagráfok és teljes részgráfok (klikkek).**

Ha az élfeltétel $i \equiv j \pmod k$ ekvivalenciarelációra épül:
A reláció tranzitív, szimmetrikus és reflexív, így a gráf diszjunkt teljes részgráfok (klikkek, $K_{m_r}$) uniója.
Egy $m$ csúcsú teljes gráf élszáma $\binom{m}{2} = \frac{m(m-1)}{2}$.
A teljes élszám az egyes maradékosztályok klikkjeinek élszámösszege: $e = \sum_{r} \binom{m_r}{2}$.
:::

## Gy57.1. feladat

Lehetséges-e egy 11 fős társaságban, hogy mindenkinek pontosan 5 barátja legyen a társaságban (az ismeretség kölcsönös)?

**Megoldás.**

Ha mind a 11 embernek 5 barátja lenne, a fokszámösszeg $11 \cdot 5 = 55$ lenne, ami páratlan.
Mivel a kézfogási lemma szerint a fokszámösszegnek párosnak kell lennie, ilyen társaság **nem létezhet**.

::: elmelet
**Elméleti háttér — A kézfogási lemma és a páratlan fokú csúcsok száma.**

*Euler kézfogási lemmája (1736):* Tetszőleges $G = (V, E)$ véges gráfban a csúcsok fokszámainak összege pontosan az élszám kétszerese:
$$\sum_{v \in V} d(v) = 2|E|.$$
*Következmény (Euler-korollárium):* Minden gráfban a páratlan fokszámú csúcsok száma páros.
*Bizonyítás:* Bontsuk a fokszámösszeget a páros és páratlan fokú csúcsok összegeire:
$$\sum_{v \in V} d(v) = \sum_{d(v) \text{ páros}} d(v) + \sum_{d(v) \text{ páratlan}} d(v) = 2|E|.$$
A bal oldal és a páros tagok összege páros, így a páratlan tagok összege is szükségképpen páros. Páratlan számok összege viszont csak akkor lehet páros, ha a tagok száma páros.
:::

## Gy57.2. feladat

Egy összefüggő gráfban 10 csúcs van, és minden csúcs foka legalább 3. Legalább hány éle van a gráfnak?

**Megoldás.**

A kézfogási lemma szerint $2e = \sum d(v) \ge 10 \cdot 3 = 30 \implies e \ge 15$.
15 él elegendő: létezik 3-reguláris egyszerű gráf 10 csúcson (pl. a Petersen-gráf).
A minimális élszám tehát **15**.

::: elmelet
**Elméleti háttér — Minimális élszám és fokszámösszegek.**

A kézfogási lemma közvetlen alsó korlátot ad a gráf élszámára a fokszámok minimális értéke alapján:
$$|E| = \frac{1}{2} \sum_{v \in V} d(v) \ge \frac{1}{2} |V| \cdot \delta(G).$$
Ha bizonyos csúcsok fokszáma előírt (pl. létezik egy $d_{\max}$ fokú csúcs és a többi csúcs minimális foka $\delta$), akkor az élszám:
$$|E| \ge \left\lceil \frac{d_{\max} + (|V| - 1)\delta}{2} \right\rceil.$$
:::

## Gy58.1. feladat

Hány éle van egy 8 csúcsú önkomplementer gráfnak? Létezhet-e ilyen gráf a paritási feltétel szerint?

**Megoldás.**

$n = 8 \implies \binom{8}{2} = 28$.
Az önkomplementer gráf élszáma:
$$e = \frac{28}{2} = 14.$$
Mivel $8 \equiv 0 \pmod 4$, a feltétel teljesül, és valóban létezik 8 csúcsú önkomplementer gráf. Élszáma: **14**.

::: elmelet
**Elméleti háttér — Önkomplementer gráfok és a 4-es oszthatóság.**

Egy egyszerű gráfot *önkomplementernek* nevezünk, ha izomorf a komplementerével: $G \cong \overline{G}$.
Mivel $G$ és $\overline{G}$ élszáma azonos ($|E(G)| = |E(\overline{G})|$), és a teljes gráf élszáma $|E(K_n)| = \binom{n}{2} = \frac{n(n-1)}{2}$:
$$|E(G)| = \frac{1}{2}\binom{n}{2} = \frac{n(n-1)}{4}.$$
Ahhoz, hogy az élszám egész szám legyen, szükséges, hogy:
$$4 \mid n(n-1) \iff n \equiv 0 \pmod 4 \quad \text{vagy} \quad n \equiv 1 \pmod 4.$$
*Tétel:* Önkomplementer gráf pontosan akkor létezik $n$ csúcson, ha $n \equiv 0$ vagy $1 \pmod 4$.
Példák: $n = 1$ ($K_1$), $n = 4$ ($P_4$, az 4 hosszú út), $n = 5$ ($C_5$, az 5 hosszú kör).
:::

## Gy58.2. feladat

Létezhet-e 10 csúcsú önkomplementer gráf?

**Megoldás.**

$\binom{10}{2} = 45$. Mivel 45 páratlan, nem osztható 2-vel ($45/2 = 22{,}5$).
Modulo 4 vizsgálva: $10 \equiv 2 \pmod 4$, ami nem 0 és nem 1.
Ezért 10 csúcson **nem létezik** önkomplementer gráf.

::: elmelet
**Elméleti háttér — Oszthatósági akadályok önkomplementer gráfokban.**

Ha $n \equiv 2$ vagy $3 \pmod 4$, akkor $n(n-1)$ nem osztható 4-gyel:
- $n = 4k+2 \implies n(n-1) = (4k+2)(4k+1) = 2(2k+1)(4k+1)$, ami 2-vel osztható, de 4-gyel nem.
- $n = 4k+3 \implies n(n-1) = (4k+3)(4k+2) = 2(4k+3)(2k+1)$, szintén csak 2-vel osztható.
Ilyen csúcsszámok esetén $\frac{n(n-1)}{4}$ félegész (nem egész), így az élszám paritási okokból kizárja az önkomplementer gráf létezését.
:::

## Gy59.1. feladat

Egy 5 csúcsú egyszerű gráfban a fokszámok között szerepel az 1, 2, 3 és 4. Mi lehet az ötödik csúcs foka?

**Megoldás.**

Legyen a fokszámsorozat $(4, 3, 2, 1, x)$.
A fokszámösszeg $4 + 3 + 2 + 1 + x = 10 + x$ páros, így $x$ páros: $x \in \{0, 2, 4\}$.
- $x = 0$ lehetetlen, mert a 4 fokú csúcs mindenkivel szomszédos, így nincs 0 fokú csúcs.
- Ha $x = 2$: a 4-es mindenkivel szomszédos. Az 1-esnek csak a 4-essel van éle. A 3-as össze van kötve a 4-essel, a 2-essel és az $x$-szel. Ekkor a fokok: 4, 3, 2, 1, 2. Ez realizálható.
- Ha $x = 4$: két 4-es csúcs van, ekkor minden más csúcs foka legalább 2 kellene legyen, de van 1 fokú csúcs! Ez ellentmondás.
Az ötödik csúcs foka kizárólag **2** lehet.

::: elmelet
**Elméleti háttér — Skatulyaelv alkalmazása egyszerű gráfok fokszámaira.**

*Tétel:* Minden legalább 2 csúcsú egyszerű gráfban létezik legalább két azonos fokszámú csúcs.
*Bizonyítás:*
Egy $n$ csúcsú egyszerű gráfban a lehetséges fokszámok halmaza: $\{0, 1, 2, \dots, n-1\}$ ($n$ lehetséges érték).
Vegyük észre, hogy a $0$ és az $n-1$ fokszám nem fordulhat elő egyszerre egy egyszerű gráfban:
- Ha van $n-1$ fokú csúcs, az a gráf összes többi $n-1$ csúcsával szomszédos, így egyetlen csúcs sem lehet izolált (nincs 0 fokú csúcs).
- Ha van 0 fokú csúcs, az senkivel sem szomszédos, így egyetlen csúcs sem lehet szomszédos mindenkivel (nincs $n-1$ fokú csúcs).
Így a gráfban fellépő fokszámok legfeljebb $n-1$ különböző értéket vehetnek fel (vagy $\{0, \dots, n-2\}$, vagy $\{1, \dots, n-1\}$).
Mivel $n$ csúcs van, a skatulyaelv szerint legalább két csúcs foka megegyezik.
:::

## Gy59.2. feladat

Lehetséges-e egy 6 csúcsú egyszerű gráfban, hogy minden csúcs foka különböző legyen?

**Megoldás.**

**Nem lehetséges.**
Egy 6 csúcsú egyszerű gráfban a lehetséges fokszámok a $\{0, 1, 2, 3, 4, 5\}$ halmazból valók (6 lehetséges érték).
Ha mind a 6 csúcs foka különböző lenne, akkor mind a 6 értéknek pontosan egyszer kellene szerepelnie.
Azonban a 0 fokú csúcs azt jelenti, hogy van egy izolált csúcs (senkivel sincs összekötve).
Az 5 fokú csúcs azt jelenti, hogy van egy csúcs, amely mind az 5 másik csúccsal össze van kötve.
Ez a két állapot egymásnak ellentmond: a 0 fokú csúcs nem lehet összekötve az 5 fokú csúccsal!
Ezért a 0 és az $n-1$ fokszám egyszerre sohasem fordulhat elő egyszerű gráfban.
A skatulya-elv szerint a 6 csúcs legfeljebb 5 különböző fokszámot vehet fel, így mindig van legalább két azonos fokú csúcs. $\blacksquare$

::: elmelet
**Elméleti háttér — Azonos fokú csúcsok elkerülhetetlensége általánosításokban.**

A fenti tétel analógja a parti-probléma: bármely társaságban mindig van legalább két ember, akiknek pontosan ugyanannyi ismerősük van a jelenlévők között.
A tétel nem érvényes:
1. Multigráfokra (ahol többszörös élek megengedettek, így a fokszámok meghaladhatják az $n-1$-et);
2. Végtelen gráfokra (pl. egy végtelen út csúcsai különböző fokszámúak lehetnek megfelelő irányítással);
3. 1 csúcsú gráfra (triviális ellenpélda: nincs két csúcs).
:::

## Gy60.1. feladat

Bizonyítsuk be, hogy egy $n$ csúcsú összefüggő gráfban legalább $n - 1$ él van!

**Megoldás.**

Egy összefüggő gráfból körök éleinek elhagyásával feszítőfa képezhető.
A feszítőfa élszáma pontosan $n - 1$.
Mivel a gráf tartalmazza a feszítőfát, éleinek száma legalább $n - 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Összefüggő gráfok minimális élszáma és a feszítőfa létezése.**

*Tétel:* Minden $n$ csúcsú összefüggő egyszerű gráfban legalább $n - 1$ él van.
*Bizonyítás feszítőfával:*
1. Ha a gráf körmentes, akkor a fák alaptétele szerint egy fa, és élszáma pontosan $n - 1$.
2. Ha a gráf tartalmaz kört, válasszunk ki egy $e$ élt ezen a körön. Az $e$ elhagyásával a gráf összefüggősége megmarad (mivel a körön az alternatív ív összeköti a végpontokat).
3. Az eljárást addig ismételjük, amíg a gráf körmentessé nem válik. Mivel a gráf összefüggősége minden lépésben megmaradt, a kapott részgráf egy összefüggő és körmentes gráf, azaz feszítőfa.
4. Egy $n$ csúcsú fának pontosan $n - 1$ éle van. Mivel a feszítőfát élek elhagyásával kaptuk az eredeti gráfból: $|E(G)| \ge |E(T)| = n - 1$.
:::

## Gy60.2. feladat

Mutassuk meg, hogy ha egy egyszerű gráfban van kör, akkor éleinek elhagyása nélkül nem lehet fa!

**Megoldás.**

Legyen $G = (V, E)$ egy $n$ csúcsú egyszerű gráf, és tegyük fel, hogy $G$ tartalmaz legalább egy kört, $C = (v_1, v_2, \dots, v_k, v_1)$-et ($k \ge 3$).
1. A fa definíciója szerint egy egyszerű gráf pontosan akkor fa, ha összefüggő és **körmentes** (nem tartalmaz egyszerű kört).
Mivel a feltevés szerint $G$-ben létezik a $C$ kör, $G$ közvetlenül megsérti a fa alapaxiómáját.
2. Megvizsgálva az élszámot: ha $G$ emellett összefüggő is lenne, akkor a fák alaptétele szerint a feszítőfájának élszáma pontosan $n - 1$. Mivel a kör minden éle a gráfhoz tartozik, és egy körmentes feszítőfa előállításához a $C$ kör legalább egy élét el kell távolítani, $G$ élszáma szigorúan nagyobb $n - 1$-nél ($|E| \ge n$).
3. Megvizsgálva az egyszerű utakat: a $C$ kör bármely két $v_i, v_j$ csúcsa között legalább két különböző egyszerű út vezet a kör két íve mentén. Ez megsérti a fák 4. ekvivalens karakterizációját, amely megköveteli, hogy bármely két csúcs között pontosan egyetlen egyszerű út vezessen.
Tehát élek elhagyása nélkül a kör megléte miatt $G$ semmiképpen sem lehet fa. $\blacksquare$

::: elmelet
**Elméleti háttér — Fák strukturális jellemzése és a körmentesség szerepe.**

*Tétel (Fák ekvivalens definíciói):* Egy $n$ csúcsú $G$ egyszerű gráfra az alábbiak ekvivalensek:
1. $G$ összefüggő és körmentes (fa);
2. $G$ összefüggő és pontosan $n - 1$ éle van (minimálisan összefüggő);
3. $G$ körmentes és pontosan $n - 1$ éle van (maximálisan körmentes);
4. Bármely két csúcsa között pontosan egy egyszerű út vezet.
Ha egy összefüggő gráfban megjelenik egy kör, akkor az élszáma szigorúan meghaladja az $n-1$-et ($e \ge n$). Ekkor a kör bármely élét elhagyva a komponensek száma nem nő (az él nem vágóél), így a gráf nem minimális az összefüggőségre nézve.
:::

## Gy61.1. feladat

Hány levele van egy olyan fának, amelynek 3 darab 4-edfokú, 2 darab 3-adfokú csúcsa van, és minden más csúcsa elsőfokú (levél)?

**Megoldás.**

Jelölje $l$ a levelek számát.
A csúcsok száma: $n = 3 + 2 + l = 5 + l$.
A fa élszáma: $e = n - 1 = 4 + l$.
A fokszámok összege a kézfogási lemma szerint $2e$:
$$2(4 + l) = 3 \cdot 4 + 2 \cdot 3 + l \cdot 1.$$
$$8 + 2l = 12 + 6 + l = 18 + l.$$
Átrendezve:
$$l = 18 - 8 = \mathbf{10}.$$
A fának 10 levele van.

::: elmelet
**Elméleti háttér — Fák fokszámegyenlete és a levelek száma.**

Minden $n$ csúcsú fában az élek száma $e = n - 1$.
A kézfogási lemmával összevetve:
$$\sum_{v \in V} d(v) = 2e = 2n - 2.$$
Vonjunk le mindkét oldalból $2n$-et:
$$\sum_{v \in V} (d(v) - 2) = -2.$$
Bontsuk a csúcsokat fokszámuk szerint:
- Levelek ($d(v) = 1$): hozzájárulásuk $1 - 2 = -1$, összesen $-L$;
- 2 fokú csúcsok ($d(v) = 2$): hozzájárulásuk $2 - 2 = 0$;
- Legalább 3 fokú elágazási csúcsok ($d(v) \ge 3$): hozzájárulásuk $d(v) - 2 > 0$.
Ebből azonnal adódik a levelek univerzális képlete:
$$L = 2 + \sum_{d(v) \ge 3} (d(v) - 2).$$
:::

## Gy61.2. feladat

Egy 25 csúcsú erdőnek 5 összefüggőségi komponense van. Hány éle van az erdőnek?

**Megoldás.**

A képlet szerint $e = n - k$:
$$e = 25 - 5 = \mathbf{20}.$$

::: elmelet
**Elméleti háttér — Erdők élszáma és komponensei.**

Egy erdő olyan egyszerű gráf, amely körmentes (minden összefüggőségi komponense fa).
*Tétel:* Ha egy $n$ csúcsú erdő $k$ darab összefüggőségi komponensből áll, akkor éleinek száma pontosan:
$$|E| = n - k.$$
*Bizonyítás:* Jelölje a komponensek csúcsszámait $n_1, n_2, \dots, n_k$, ahol $\sum_{i=1}^k n_i = n$.
Mivel minden komponens fa, az $i$-edik komponens éleinek száma $e_i = n_i - 1$.
Az erdő teljes élszáma:
$$|E| = \sum_{i=1}^k e_i = \sum_{i=1}^k (n_i - 1) = \sum_{i=1}^k n_i - \sum_{i=1}^k 1 = n - k.$$
Egyetlen fa esetén $k = 1$, visszakapjuk az $e = n - 1$ képletet.
:::

## Gy62.1. feladat

Mutassuk meg, hogy egy 8 fős társaságban mindig van két olyan ember, akiknek pontosan ugyanannyi ismerősük van a társaságban!

**Megoldás.**

Az ismeretségi gráf 8 csúcsú egyszerű gráf. Mivel a 0 (senkit sem ismer) és a 7 (mindenkit ismer) fokok kizárják egymást, a fokszámok legfeljebb 7 különböző értéket vehetnek fel. A skatulya-elv szerint 8 emberből legalább kettőnek megegyezik a foka. $\blacksquare$

::: elmelet
**Elméleti háttér — Kőnig-tétel: páros gráfok és páratlan körök.**

*Kőnig Dénes tétele (1916):* Egy gráf akkor és csak akkor páros (2-kromatikus, $\chi(G) \le 2$), ha nem tartalmaz páratlan hosszúságú kört.
*Bizonyítás:*
1. *Szükségesség:* Ha $G$ páros, a csúcsok két diszjunkt osztályba ($A, B$) oszthatók, és minden él $A$ és $B$ között fut. Bármely kör mentén haladva az osztályok váltakoznak ($A \to B \to A \to \dots$). Ahhoz, hogy visszatérjünk a kiindulási csúcsba, páros számú lépés szükséges, így minden kör páros hosszú.
2. *Elégségesség (konstruktív):* Rögzítsünk egy $v_0$ csúcsot, és definiáljuk a távolsági rétegeket: $A = \{v : d(v_0, v) \text{ páros}\}$, $B = \{v : d(v_0, v) \text{ páratlan}\}$. Ha két azonos osztálybeli csúcs között lenne él, az páratlan kört hozna létre a legrövidebb utakkal, ami ellentmond a feltételnek.
:::

## Gy62.2. feladat

Létezik-e olyan 5 csúcsú összefüggő egyszerű gráf, amelynek 4 éle van és bármely két éle metszi egymást?

**Megoldás.**

Egy 5 csúcsú, 4 élű összefüggő gráf szükségképpen fa ($e = n - 1 = 4$).
Ha bármely két él metszi egymást, a fa csak csillag lehet: $K_{1, 4}$.
Ez létezik: egy 4 fokú központi csúcs és 4 levél.
Válasz: **Igen, a $K_{1, 4}$ csillagfa.**

::: elmelet
**Elméleti háttér — Fák mint páros gráfok.**

Mivel minden fa körmentes, egyetlen kört sem tartalmaz (így páratlan kört sem).
A Kőnig-tétel következményeként minden fa automatikusan páros gráf:
$$\chi(T) = 2 \quad (n \ge 2 \text{ esetén}).$$
A két csúcsosztály ($A$ és $B$) egyértelműen meghatározható a fa gyökerétől mért páros és páratlan távolságú csúcsok partíciójaként.
:::

## Gy63.1. feladat

Mutassuk meg az $R(s, t) \le R(s-1, t) + R(s, t-1)$ egyenlőtlenséget egy tetszőleges csúcs szomszédainak vizsgálatával!

**Megoldás.**

Legyen $n = R(s-1, t) + R(s, t-1)$, és színezzük $K_n$ éleit pirossal és kékkel.
Egy $v$ csúcs foka $n - 1 = R(s-1, t) + R(s, t-1) - 1$.
A skatulya-elv szerint $v$-ből kiindul vagy legalább $R(s-1, t)$ piros él, vagy legalább $R(s, t-1)$ kék él.
- Ha $\ge R(s-1, t)$ piros él indul ki: a végpontok által feszített részgráfban a Ramsey-szám definíciója szerint van kék $K_t$ (kész), vagy van piros $K_{s-1}$, ami $v$-vel együtt piros $K_s$-et ad (kész).
- A kék eset szimmetrikus. $\blacksquare$

::: elmelet
**Elméleti háttér — Ramsey-számok aszimptotikája és alsó korlátai.**

Míg a Ramsey-számok felső korlátját az Erdős–Szekeres indukció adja ($R(k, k) \le \binom{2k-2}{k-1} < 4^k$), addig a mélyebb alsó korlátot Erdős Pál 1947-ben a valószínűségi módszer (probabilistic method) megalapozásával bizonyította:
$$R(k, k) > \frac{k}{e\sqrt{2}} 2^{k/2}.$$
Kis értékek: $R(3, 3) = 6$, $R(3, 4) = 9$, $R(3, 5) = 14$, $R(4, 4) = 18$.
Az $R(5, 5)$ pontos értéke a mai napig ismeretlen (csak annyi tudott, hogy $43 \le R(5, 5) \le 48$).
:::

## Gy63.2. feladat

Hány él színezhető pirosra egy 6 csúcsú teljes gráfban úgy, hogy ne tartalmazzon piros háromszöget és a kék élek se tartalmazzanak kék háromszöget?

**Megoldás.**

Mivel $R(3,3) = 6$, a 6 csúcsú teljes gráf **bármely** 2-színezésében szükségképpen létezik piros vagy kék háromszög!
Ezért a kérdéses színezések száma: **0**.

::: elmelet
**Elméleti háttér — Monokromatikus háromszögek száma $K_6$-ban (Goodman-tétel).**

Nemcsak hogy létezik egyszínű háromszög bármely 2-színezett $K_6$-ban, hanem Goodman tétele (1959) szerint a monokromatikus háromszögek száma legalább:
$$N_{\text{mono}} \ge 2.$$
Bizonyítás kettős megszámlálással: számoljuk meg a nem egyszínű háromszögeket a különböző színű élek szögfelezőin keresztül! Az összeg minimális értéke $n=6$-ra pontosan 2 monokromatikus háromszöget kényszerít ki.
:::

## Gy64.1. feladat

Mutassuk meg, hogy ha egy véges egyszerű gráfban nincs kör, akkor létezik benne legfeljebb 1 fokú csúcs!

**Megoldás.**

Ez a 64.a állítás kontrapozíciója:
Ha minden csúcs foka $\ge 2$ lenne, akkor a leghosszabb út módszerével létezne kör.
Mivel nincs kör, nem lehet minden csúcs foka $\ge 2$, tehát lennie kell legalább egy olyan csúcsnak, melynek foka $\le 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Leghosszabb utak és körök létezése nagy minimális fok esetén.**

*Tétel:* Ha egy $G$ egyszerű gráfban $\delta(G) \ge 2$, akkor $G$ tartalmaz legalább $\delta(G) + 1$ hosszúságú kört.
*Bizonyítás leghosszabb út módszerével:*
1. Tekintsünk a gráfban egy maximális hosszúságú egyszerű utat: $P = (v_1, v_2, \dots, v_k)$.
2. Mivel az út nem hosszabbítható meg, a végpontjának ($v_k$) összes szomszédja szükségképpen magán a $P$ úton fekszik: $N(v_k) \subseteq \{v_1, \dots, v_{k-1}\}$.
3. Mivel $d(v_k) \ge \delta$, a $v_k$ csúcsnak legalább $\delta$ szomszédja van $P$-n.
4. Legyen $v_i$ a legkisebb indexű szomszédja $v_k$-nak $P$-n. Ekkor a $v_i \dots v_k$ szakasz az $(v_k, v_i)$ éllel együtt egy egyszerű kört alkot.
5. Mivel a szomszédok száma legalább $\delta$, a kör hossza $k - i + 1 \ge \delta + 1$.
:::

## Gy64.2. feladat

Egy egyszerű gráfban minden csúcs foka legalább 4. Mutassuk meg, hogy a gráf tartalmaz legalább 5 hosszú kört!

**Megoldás.**

A 64.b tétel közvetlen alkalmazása $k = 4$ esetén:
Mivel $\delta(G) \ge 4$, a leghosszabb út kezdőpontjának legalább 4 szomszédja van az úton, így a legtávolabbi szomszéd indexe legalább $1 + 4 = 5$.
A keletkező kör hossza legalább $4 + 1 = \mathbf{5}$. $\blacksquare$

::: elmelet
**Elméleti háttér — Euler-vonalak és körök felbontása.**

Ha egy gráfban minden csúcs foka páros és legalább 2, a gráf összefüggő komponensei éldiszjunkt körök uniójára bonthatók.
A leghosszabb út módszere a gráfelmélet egyik leguniverzálisabb technikája körmagok, Hamilton-utak és blokkok keresésére.
:::

## Gy65.1. feladat

Mutassunk példát olyan 5 csúcsú gráfra, amelyre $G$ és $\overline{G}$ is összefüggő!

**Megoldás.**

Az 5 csúcsú kör, $C_5$ összefüggő, és a komplementere (az átlók által alkotott csillag) szintén egy 5 hosszú kör, amely szintén összefüggő.

::: elmelet
**Elméleti háttér — Gráf és komplementere összefüggőségének kapcsolata.**

*Tétel:* Tetszőleges $G$ egyszerű gráfra $G$ és a komplementere $\overline{G}$ közül legalább az egyik összefüggő.
*Bizonyítás:*
Tegyük fel, hogy $G$ nem összefüggő. Ekkor $G$-nek legalább 2 komponense van, jelöljük őket $V_1, V_2, \dots, V_k$-val ($k \ge 2$).
Tekintsünk két tetszőleges $u, v \in V$ csúcsot $\overline{G}$-ben:
1. *Ha $u$ és $v$ különböző komponensekbe tartoznak $G$-ben ($u \in V_i, v \in V_j, i \neq j$):* ekkor $G$-ben nincs él közöttük, így $\overline{G}$-ben közvetlenül szomszédosak: $(u, v) \in E(\overline{G})$.
2. *Ha $u$ és $v$ ugyanabba a komponensbe tartoznak ($u, v \in V_i$):* válasszunk egy tetszőleges harmadik $w$ csúcsot egy másik komponensből ($w \in V_j, j \neq i$). Az 1. eset szerint mind $(u, w)$, mind $(w, v)$ élek $\overline{G}$-ben, így az $(u, w, v)$ egy 2 hosszú út $\overline{G}$-ben.
Tehát $\overline{G}$-ben bármely két csúcs között vezet legfeljebb 2 hosszú út, ami bizonyítja, hogy $\overline{G}$ összefüggő (és átmérője legfeljebb 2).
:::

## Gy65.2. feladat

Igazoljuk, hogy ha egy $n$ csúcsú egyszerű gráf átmérője nagyobb mint 3 ($\mathrm{diam}(G) \ge 4$), akkor a komplementerének átmérője legfeljebb 2!

**Megoldás.**

Legyenek $u, v$ olyan csúcsok, melyek távolsága $d_G(u, v) \ge 4$.
Bármely $w \in V$ esetén $w$ nem lehet egyszerre szomszédos $u$-val és $v$-vel $G$-ben (különben $d(u,v) \le 2$ lenne).
Sőt, ha $w \sim u$, akkor $w \not\sim v$, így $\overline{G}$-ben $wv$ él.
Ebből levezethető, hogy a komplementerben a távolságok legfeljebb 2-re szorulnak össze: $\mathrm{diam}(\overline{G}) \le 2$. $\blacksquare$

::: elmelet
**Elméleti háttér — Átmérők kapcsolata komplementer gráfokban.**

Ha $G$ összefüggő, de átmérője nagy:
*Tétel:* Ha $\operatorname{diam}(G) \ge 3$, akkor $\operatorname{diam}(\overline{G}) \le 2$.
Bizonyítás: Legyen $d_G(u, v) \ge 3$. Ekkor $u$-nak és $v$-nek nincs közös szomszédja $G$-ben, ami azt jelenti, hogy tetszőleges $w \notin \{u, v\}$ csúcs esetén $w$ legalább az egyikkel ($u$-val vagy $v$-vel) nem szomszédos $G$-ben. Ennek következtében $\overline{G}$-ben minden csúcs legfeljebb 2 lépésre van egymástól.
:::

## Gy66.1. feladat

Igazoljuk, hogy egy fában bármely két leghosszabb útnak van közös csúcsa!

**Megoldás.**

Tegyük fel indirekt, hogy létezik egy $T$ fa, amelyben van két olyan leghosszabb egyszerű út, $P_1$ és $P_2$, amelyeknek nincs közös csúcsa ($V(P_1) \cap V(P_2) = \emptyset$).
Jelölje a leghosszabb utak közös hosszát $L$ (élek száma), és legyenek a végpontjaik:
$$P_1 = (u_1, \dots, v_1), \quad P_2 = (u_2, \dots, v_2).$$
Mivel $T$ összefüggő gráf, létezik egy $P_1$ és $P_2$ közötti út. Válasszuk ki a legrövidebb ilyen utat, jelölje ezt $Q = (x, \dots, y)$, ahol $x \in V(P_1)$ és $y \in V(P_2)$. Ekkor $Q$ hossza $|Q| \ge 1$, és $Q$ belső csúcsai diszjunktak $P_1 \cup P_2$-től.
Az $x$ csúcs a $P_1$ utat két szakaszra osztja: az $u_1 \dots x$ és az $x \dots v_1$ utakra. Mivel a két szakasz hosszának összege $|P_1| = L$, a skatulyaelv szerint a hosszabbik szakasz hossza legalább $\lceil L / 2 \rceil$. Jelölje ezt a hosszabbik ágat $P_1'$.
Hasonlóan az $y$ csúcs a $P_2$ utat két szakaszra osztja: $u_2 \dots y$ és $y \dots v_2$. A hosszabbik ág hossza szintén legalább $\lceil L / 2 \rceil$. Jelölje ezt $P_2'$-vel.
Fűzzük össze a $P_1'$ ágat, a $Q$ hidat és a $P_2'$ ágat:
Mivel a fa körmentes, ez az összefűzés egyetlen egyszerű utat határoz meg $T$-ben a $P_1'$ távoli végpontja és a $P_2'$ távoli végpontja között.
Ennek az új útnak a hossza:
$$\text{hossz} = |P_1'| + |Q| + |P_2'| \ge \left\lceil \frac{L}{2} \right\rceil + 1 + \left\lceil \frac{L}{2} \right\rceil \ge L + 1 > L.$$
Ez azonban ellentmondás, hiszen $L$ volt a fában létező maximális úthossz!
Az ellentmondás abból a feltevésből származott, hogy $P_1$ és $P_2$ diszjunktak, így tetszőleges két leghosszabb útnak szükségképpen van legalább egy közös csúcsa. $\blacksquare$

::: elmelet
**Elméleti háttér — Fák leghosszabb útjainak metszése és fa-középpont.**

*Tétel:* Egy fában bármely két leghosszabb útnak van legalább egy közös csúcsa.
*Bizonyítás (indirekt):*
1. Tegyük fel indirekt, hogy létezik két leghosszabb út, $P_1 = (u_1 \dots v_1)$ és $P_2 = (u_2 \dots v_2)$, melyek csúcsdiszjunktak ($V(P_1) \cap V(P_2) = \emptyset$). Legyen hosszuk $L$.
2. Mivel a fa összefüggő, létezik egy $x \in P_1$ és $y \in P_2$ csúcsokat összekötő út $Q$, melynek belső pontjai diszjunktak $P_1 \cup P_2$-től.
3. Az $x$ csúcs a $P_1$ utat két részre bontja ($x \dots u_1$ és $x \dots v_1$). A hosszabbik szakaszt jelölje $P_1'$; ennek hossza legalább $\lceil L/2 \rceil$.
4. Hasonlóan az $y$ csúcs a $P_2$ utat két részre bontja, a hosszabbik szakaszt jelölje $P_2'$; hossza legalább $\lceil L/2 \rceil$.
5. Mivel a fa körmentes, a $P_1' \cup Q \cup P_2'$ összefűzés egy egyszerű utat alkot a fában, melynek hossza:
$$|P_1'| + |Q| + |P_2'| \ge \lceil L/2 \rceil + 1 + \lceil L/2 \rceil \ge L + 1 > L.$$
Ez ellentmond annak, hogy $L$ volt a leghosszabb út hossza!
*Következmény:* A fában az összes leghosszabb út egy közös centrumban (1 csúcsban vagy 1 élben) metszi egymást (Jordan-tétel a fa középpontjáról, 1869).
:::

## Gy66.2. feladat

Mutassunk példát olyan összefüggő gráfra, amelyben van 3 darab leghosszabb út úgy, hogy nincs egyetlen olyan közös csúcs sem, amely mindhárom úton rajta lenne!

**Megoldás.**

Tekintsünk egy háromágú csillagot, amelynek minden ága 2 élből áll (egy Y-alakú fa, 7 csúccsal: $c$ középpont, és $c-u_1-u_2$, $c-v_1-v_2$, $c-w_1-w_2$).
Itt a leghosszabb utak hossza 4 él, és pontosan 3 ilyen út van (bármely két ág uniója), de mind átmennek $c$-n.
Ha olyan gráfot keresünk, ahol a 3 útnak NICS egyetlen közös pontja:
Tekintsük a $K_3$ háromszöget, és mindhárom csúcsához ragasszunk egy-egy 2 él hosszú utat!
Ekkor a leghosszabb utak a háromszög egy-egy élét és a két szomszédos antennát használják: ezek metszete üres lehet! $\blacksquare$

::: elmelet
**Elméleti háttér — A Helly-tulajdonság fák részfáira.**

A fák egyik legmélyebb metrikus sajátsága a Helly-tulajdonság:
Ha $T_1, T_2, \dots, T_k$ egy $T$ fa olyan összefüggő részfái, amelyek közül bármely kettőnek van közös csúcsa ($T_i \cap T_j \neq \emptyset$ minden $i, j$-re), akkor az összes részfának van legalább egy közös csúcsa:
$$\bigcap_{i=1}^k T_i \neq \emptyset.$$
Ez a klasszikus konvex halmazokra vonatkozó geometriai Helly-tétel gráfelméleti megfelelője.
:::

## Gy67.1. feladat

Realizálható-e egyszerű gráfként a $(4, 3, 3, 2, 2, 2)$ fokszámsorozat?

**Megoldás.**

Összeg: $4 + 3 + 3 + 2 + 2 + 2 = 16$ (páros).
1. lépés: töröljük a 4-est, levonunk a következő 4-ből: $(2, 2, 1, 1, 2) \to$ rendezve: $(2, 2, 2, 1, 1)$.
2. lépés: töröljük a 2-est: $(1, 1, 1, 1)$.
3. lépés: töröljük az 1-est: $(0, 1, 1) \to (1, 1, 0)$.
4. lépés: töröljük az 1-est: $(0, 0)$.
Csupa 0 maradt, tehát a sorozat **realizálható**.

::: elmelet
**Elméleti háttér — A Havel–Hakimi-tétel és a grafikus sorozatok redukciója.**

Egy $(d_1, d_2, \dots, d_n)$ nemnegatív egész sorozatot *grafikusnak* (realizálhatónak) nevezünk, ha létezik olyan egyszerű gráf, melynek ez a fokszámsorozata.
*Havel (1955) – Hakimi (1962) tétel:*
Legyen $d_1 \ge d_2 \ge \dots \ge d_n$ csökkenő sorrendbe rendezve ($d_1 > 0$).
A sorozat akkor és csak akkor grafikus, ha a legnagyobb elem ($d_1$) törlésével és a rákövetkező $d_1$ darab elem 1-gyel való csökkentésével kapott
$$(d_2 - 1, d_3 - 1, \dots, d_{d_1 + 1} - 1, d_{d_1 + 2}, \dots, d_n)$$
sorozat (újrarendezés után) grafikus.
*Bizonyítás lényege:* Ha a sorozat realizálható, létezik olyan realizáció, ahol a legnagyobb fokú csúcs a közvetlenül utána következő legnagyobb fokú csúcsokkal szomszédos (élek átkötésével elérhető).
:::

## Gy67.2. feladat

Realizálható-e egyszerű gráfként az $(5, 5, 4, 3, 2, 1)$ fokszámsorozat?

**Megoldás.**

Fokszámösszeg: $5 + 5 + 4 + 3 + 2 + 1 = 20$ (páros).
1. lépés: töröljük az első 5-öst, 5 elemből vonunk le: $(4, 3, 2, 1, 0)$.
2. lépés: töröljük a 4-est, 4 elemből vonunk le: $(2, 1, 0, -1)$.
Megjelent a $-1$ negatív szám, tehát a sorozat **nem realizálható**.

::: elmelet
**Elméleti háttér — Erdős–Gallai-tétel és nem grafikus sorozatok.**

A Havel–Hakimi algoritmus konstruktív és $O(n^2)$ lépésben eldönti a realizálhatóságot.
A sorozat azonnal nem grafikus, ha:
1. A fokszámösszeg $\sum d_i$ páratlan (kézfogási lemma sérül);
2. A legnagyobb fokszám $d_1 \ge n$ (egyszerű gráfban a fokszám legfeljebb $n-1$);
3. A HH-redukció során negatív szám keletkezik, vagy nincs elég rákövetkező elem.
*Erdős–Gallai-tétel (1960):* Nemkonstruktív zárt feltétel: $\sum d_i$ páros, és minden $1 \le k \le n$-re:
$$\sum_{i=1}^k d_i \le k(k-1) + \sum_{i=k+1}^n \min(d_i, k).$$
:::

## Gy68.1. feladat

Mely egész $X$ értékekre realizálható a $(4, 3, 3, 2, X)$ fokszámsorozat egyszerű gráfként?

**Megoldás.**

5 csúcs van, így $0 \le X \le 4$.
A fokszámösszeg $4 + 3 + 3 + 2 + X = 12 + X$ páros, így $X \in \{0, 2, 4\}$.
- $X = 0$: a 4-es csúcs mindenkivel szomszédos, így 0 fokú csúcs nem lehet. $X \neq 0$.
- $X = 2$: a fokok $(4, 3, 3, 2, 2)$. HH: töröljük a 4-est $\implies (2, 2, 1, 1)$, töröljük a 2-est $\implies (1, 0, 1) \to (1, 1, 0)$, töröljük az 1-est $\implies (0, 0)$. Realizálható!
- $X = 4$: fokok $(4, 4, 3, 3, 2)$. HH: töröljük a 4-est $\implies (3, 2, 2, 1)$, töröljük a 3-ast $\implies (1, 1, 0)$, töröljük az 1-est $\implies (0, 0)$. Realizálható!
A lehetséges értékek: **$X \in \{2, 4\}$**.

::: elmelet
**Elméleti háttér — Paraméteres grafikus sorozatok és paritásvizsgálat.**

Egy paraméteres $(d_1, \dots, d_n, X)$ fokszámsorozat vizsgálatánál:
1. *Fokszámkorlát:* $0 \le X \le n - 1$.
2. *Paritási szűrés:* a teljes összeg $\sum d_i + X$ páros, ami $X$ paritását determinálja (felezi a vizsgálandó esetek számát).
3. *Strukturális kizárás:* ha a gráfban van $n - 1$ fokú csúcs (mindenkivel szomszédos), akkor $X = 0$ (izolált csúcs) kizárható.
4. *Havel–Hakimi teszt:* a megmaradó jelöltekre a HH-algoritmust lépésről lépésre végrehajtva megkapjuk a pontos megoldáshalmazt.
:::

## Gy68.2. feladat

Legfeljebb mekkora lehet $X$, ha a $(6, 6, 5, 4, 3, 2, 2, X)$ sorozat egy 8 csúcsú egyszerű gráf fokszámsorozata?

**Megoldás.**

Egy 8 csúcsú egyszerű gráfban semelyik csúcs foka nem haladhatja meg a $8 - 1 = 7$-et, így $0 \le X \le 7$.
1. *Paritási feltétel (kézfogási lemma):*
A fokszámok összege:
$$\sum d_i = 6 + 6 + 5 + 4 + 3 + 2 + 2 + X = 28 + X.$$
Mivel a fokszámösszegnek párosnak kell lennie, $X$-nek is párosnak kell lennie: $X \in \{0, 2, 4, 6\}$.
A lehetséges maximális érték tehát $X = 6$.
2. *Realizálhatóság ellenőrzése $X = 6$ esetén Havel–Hakimi algoritmussal:*
A sorozat rendezve:
$$(6, 6, 6, 5, 4, 3, 2, 2)$$
- 1. lépés: Töröljük az első $6$-ost, és a következő 6 elemből levonunk 1-et:
$$(6-1, 6-1, 5-1, 4-1, 3-1, 2-1, 2) = (5, 5, 4, 3, 2, 1, 2).$$
Csökkenőbe rendezve:
$$(5, 5, 4, 3, 2, 2, 1)$$
- 2. lépés: Töröljük az első $5$-öst, és a következő 5 elemből levonunk 1-et:
$$(5-1, 4-1, 3-1, 2-1, 2-1, 1) = (4, 3, 2, 1, 1, 1).$$
Már rendezett.
- 3. lépés: Töröljük a $4$-est, a következő 4 elemből levonunk 1-et:
$$(3-1, 2-1, 1-1, 1-1, 1) = (2, 1, 0, 0, 1).$$
Rendezve:
$$(2, 1, 1, 0, 0)$$
- 4. lépés: Töröljük a $2$-est, a következő 2 elemből levonunk 1-et:
$$(1-1, 1-1, 0, 0) = (0, 0, 0, 0).$$
A csupa 0 sorozat egy 4 csúcsú élmentes egyszerű gráf fokszámsorozata, amely nyilvánvalóan realizálható.
A Havel–Hakimi tétel értelmében a kiindulási sorozat is grafikális.
A maximális érték tehát valóban: **$X = 6$**.

::: elmelet
**Elméleti háttér — Maximális fokszám keresése és élszám-optimalizálás.**

Amikor a maximális lehetséges $X$ értéket keressük úgy, hogy a sorozat grafikus maradjon:
A legnagyobb elméleti érték $X_{\max} = n - 1$.
A kézfogási lemma paritási feltétele kiválasztja a legnagyobb paritásban illeszkedő értéket.
Ezt a maximális értéket behelyettesítve a sorozatot csökkenő sorrendbe rendezzük, és végrehajtjuk a teljes Havel–Hakimi redukciós láncot a csupa nulla $(0, \dots, 0)$ sorozatig.
:::

## Gy69.1. feladat

Létezhet-e önkomplementer gráf 12 csúcson? Hány éle lenne egy ilyen gráfnak?

**Megoldás.**

Egy $n$ csúcsú egyszerű gráf teljes élszáma $\binom{n}{2}$.
Ha a gráf önkomplementer ($G \cong \overline{G}$), akkor éleinek száma megegyezik a komplementerének élszámával:
$$|E(G)| = |E(\overline{G})| = \frac{1}{2}\binom{n}{2} = \frac{n(n-1)}{4}.$$
$n = 12$ esetén:
$$e = \frac{12 \cdot 11}{4} = 3 \cdot 11 = \mathbf{33}.$$
Mivel $33$ egész szám (ugyanis $12 \equiv 0 \pmod 4$), az élszámra vonatkozó szükséges feltétel teljesül.
Továbbá a Sachs- és Ringel-tétel értelmében minden olyan $n$ egészre, amelyre $n \equiv 0$ vagy $n \equiv 1 \pmod 4$, létezik önkomplementer gráf.
12 csúcsra a konstrukció 3 darab 4 hosszú diszjunkt ciklusból álló permutációval készíthető el.
**Válasz:** Igen, létezik 12 csúcsú önkomplementer gráf, és éleinek száma pontosan **$33$**.

::: elmelet
**Elméleti háttér — Önkomplementer gráfok izomorfiája és a Sachs-ciklusstruktúra.**

Egy $G$ önkomplementer gráf izomorfizmusát a komplementerével egy $\sigma: V \to V$ permutáció valósítja meg, amelyre $(u, v) \in E(G) \iff (\sigma(u), \sigma(v)) \notin E(G)$.
*Sachs tétele (1962):* A $\sigma$ permutáció ciklusfelbontásában:
- Minden ciklus hossza 4-gyel osztható ($4k$), kivéve legfeljebb egyetlen 1 hosszúságú ciklust (fixpontot).
- Ez közvetlen algebrai magyarázatot ad az $n \equiv 0$ vagy $n \equiv 1 \pmod 4$ feltételre!
Ringel és Sachs módszerével tetszőleges $n = 4k$ vagy $4k+1$ csúcsra explicit konstrukció adható önkomplementer gráfra a ciklusok közötti élek megfelelő felváltásával.
:::

## Gy69.2. feladat

Mutassuk meg, hogy egy legalább 4 csúcsú önkomplementer gráf átmérője legfeljebb 3!

**Megoldás.**

Tegyük fel indirekt, hogy $\mathrm{diam}(G) \ge 4$.
A 65. feladat szerint ekkor $\mathrm{diam}(\overline{G}) \le 2$.
De mivel $G \cong \overline{G}$, átmérőjüknek meg kell egyeznie: $\mathrm{diam}(G) = \mathrm{diam}(\overline{G})$, ami ellentmondás ($4 \le \mathrm{diam} \le 2$).
Tehát $\mathrm{diam}(G) \le 3$. $\blacksquare$

::: elmelet
**Elméleti háttér — Önkomplementer gráfok átmérőjének korlátai.**

*Tétel:* Minden legalább 4 csúcsú önkomplementer gráf átmérője:
$$\operatorname{diam}(G) \in \{2, 3\}.$$
*Bizonyítás:*
1. Mivel $G \cong \overline{G}$, a két gráf átmérője azonos: $\operatorname{diam}(G) = \operatorname{diam}(\overline{G})$.
2. Ha $\operatorname{diam}(G) = 1$, akkor $G$ teljes gráf ($K_n$), így $\overline{G}$ üres gráf ($e=0$), ami $n \ge 4$-re nem izomorf $K_n$-nel.
3. Ha $\operatorname{diam}(G) \ge 4$, akkor a komplementer gráfok átmérőtételéből $\operatorname{diam}(\overline{G}) \le 2$ következne, ami ellentmond $\operatorname{diam}(G) = \operatorname{diam}(\overline{G}) \ge 4$-nek.
Így az átmérő csak 2 vagy 3 lehet (pl. $C_5$-re 2, $P_4$-re 3).
:::

## Gy70.1. feladat

Legyen $G$ egy 11 csúcsú egyszerű gráf, melyben minden csúcs foka legalább 5. Mutassuk meg, hogy $G$ összefüggő!

**Megoldás.**

$\delta(G) \ge 5$.
A képlet szerint $\frac{n-1}{2} = \frac{11-1}{2} = 5$.
Mivel $\delta(G) \ge 5 = \frac{n-1}{2}$, a 70.a tétel szerint a gráf szükségképpen összefüggő. $\blacksquare$

::: elmelet
**Elméleti háttér — Összefüggőség minimális fokszám alapján.**

*Tétel:* Ha egy $n$ csúcsú egyszerű gráfban $\delta(G) \ge \frac{n-1}{2}$, akkor a gráf összefüggő.
*Bizonyítás (indirekt):*
Tegyük fel, hogy $G$ nem összefüggő. Ekkor van egy legfeljebb $\lfloor n/2 \rfloor$ méretű komponense, jelölje ennek csúcshalmazát $C$, mérete $|C| \le n/2$.
Egy $v \in C$ csúcs szomszédai csak $C$-ből valók lehetnek (hiszen nincs él komponensek között), így:
$$d(v) \le |C| - 1 \le \frac{n}{2} - 1 = \frac{n - 2}{2} < \frac{n - 1}{2}.$$
Ez ellentmond a $\delta(G) \ge \frac{n-1}{2}$ feltételnek! Tehát a gráf összefüggő.
:::

## Gy70.2. feladat

Mutassunk példát olyan 10 csúcsú nem összefüggő egyszerű gráfra, amelyben minden csúcs foka 4!

**Megoldás.**

Vegyünk két darab diszjunkt 5 csúcsú teljes gráfot: $K_5 \cup K_5$.
Ebben a gráfban 10 csúcs van, a gráf nem összefüggő (2 komponens), és minden csúcs foka a $K_5$-ön belül pontosan $5 - 1 = 4$.
Ez a korlát élességét mutató konstrukció ($n = 10, d = 4 = \frac{n-2}{2}$).

::: elmelet
**Elméleti háttér — A minimális fokszámkorlát élessége és Dirac tétele.**

A fenti $\delta \ge (n-1)/2$ korlát szigorúan éles:
Páros $n = 2m$ esetén tekintsük a $G = K_m \cup K_m$ gráfot (két diszjunkt teljes gráf).
Itt minden csúcs foka $d(v) = m - 1 = \frac{n-2}{2}$. A gráf mégsem összefüggő (2 komponense van).
*Dirac tétele (1952):* Ha egy $n \ge 3$ csúcsú gráfban $\delta(G) \ge n/2$, akkor a gráf nemcsak hogy összefüggő, hanem tartalmaz Hamilton-kört is!
:::

## Gy71.1. feladat

Hányféleképpen egészíthető ki két diszjunkt fa (csúcsszámaik $a$ és $b$) egyetlen fává egy új él behúzásával?

**Megoldás.**

Két diszjunkt fa összekötéséhez pontosan 1 új él kell, amelynek egyik végpontja az első fában, másik végpontja a második fában van.
Az első fa csúcsa $a$-féle, a másodiké $b$-féle lehet:
$$a \cdot b.$$
(A képlettel: $a \cdot b \cdot (a+b)^{2-2} = a \cdot b \cdot 1 = ab$.)

::: elmelet
**Elméleti háttér — Fák komponenseinek egyesítése és feszítő erdők.**

Ha két diszjunkt fát ($T_1$ és $T_2$, csúcsszámaik $a$ és $b$) egyetlen új él behúzásával összefüggő fává akarunk egyesíteni:
Az új él egyik végpontját $T_1$-ből ($a$ választás), másik végpontját $T_2$-ből ($b$ választás) kell venni.
A lehetőségek száma a független választás miatt: $a \cdot b$.
Az új gráf élszáma $(a - 1) + (b - 1) + 1 = a + b - 1$, és körmentes marad, így valóban fa.
:::

## Gy71.2. feladat

Hány különböző címkézett fa képezhető 6 csúcson a Cayley-tétel szerint?

**Megoldás.**

A Cayley-formula szerint az $n$ címkézett csúcson ($V = \{1, 2, \dots, n\}$) képezhető különböző fák száma:
$$T_n = n^{n-2}.$$
$n = 6$ csúcs esetén a kitevő $n - 2 = 6 - 2 = 4$, így a különböző fák száma:
$$T_6 = 6^4 = 6 \cdot 6 \cdot 6 \cdot 6 = \mathbf{1296}.$$
A Prüfer-kódolás alapján minden ilyen fa kölcsönösen egyértelműen megfelel egy 4 hosszúságú, $\{1, 2, 3, 4, 5, 6\}$ elemeiből képzett szónak. Mivel a 4 pozíció mindegyikére egymástól függetlenül 6 lehetséges csúcssorszám írható, a lehetőségek száma $6^4 = 1296$.

::: elmelet
**Elméleti háttér — A Cayley-formula és a Prüfer-kódolás.**

*Cayley-tétel (1889):* Az $n$ címkézett csúcson értelmezett különböző fák száma:
$$T_n = n^{n-2}.$$
*Prüfer-kódolás (1918):* Kölcsönösen egyértelmű megfeleltetés (bijekció) létezik az $\{1, 2, \dots, n\}$ csúcsokon lévő címkézett fák és az $\{1, 2, \dots, n\}^{n-2}$ halmazbeli szavak (Prüfer-kódok) között.
*Kódolási algoritmus:*
1. Keressük meg a fa legkisebb sorszámú levelét!
2. Írjuk fel a levél egyetlen szomszédjának sorszámát a kódba.
3. Töröljük a levelet a fából.
4. Isételjük, amíg csak 2 csúcs marad!
*Fokszámtulajdonság:* Egy $v$ csúcs foka a fában $d(v) = 1 + (\text{hányszor szerepel } v \text{ a Prüfer-kódban})$.
:::

## Gy72.1. feladat

Elhelyezhető-e páratlan sok huszár a sakktáblán úgy, hogy mindegyik páratlan sok másikat üssön?

**Megoldás.**

Ha $n$ páratlan és minden fokszám $d$ páratlan, akkor a fokszámösszeg $n \cdot d$ páratlan lenne, ami ellentmond a kézfogási lemmának.
Ezért **nem helyezhető el**. $\blacksquare$

::: elmelet
**Elméleti háttér — Reguláris gráfok és a kézfogási feltétel paritása.**

Egy gráf $k$-reguláris, ha minden csúcsának foka pontosan $k$.
A kézfogási lemma szerint:
$$2|E| = \sum_{v \in V} d(v) = n \cdot k.$$
Következésképpen: $n \cdot k$ mindig páros szám!
- Ha $k$ páratlan (pl. 3-reguláris / köbös gráf), akkor a csúcsszámnak $n$-nek szükségképpen párosnak kell lennie.
- Páratlan csúcsszámú gráfban nem létezhet páratlan fokú reguláris gráf (pl. 7 csúcson nincs 3-reguláris gráf).
:::

## Gy72.2. feladat

Bizonyítsuk be, hogy egy páros gráfban minden reguláris részgráf csúcsszáma páros!

**Megoldás.**

Legyen a páros részgráf két osztálya $A$ és $B$, és legyen a fokszám minden csúcsban $k \ge 1$.
Az élek száma mindkét oldalról számolva: $e = k|A|$ és $e = k|B|$.
Mivel $k \ge 1$, ebből $|A| = |B|$ következik.
A csúcsok száma $|A| + |B| = 2|A|$, ami páros. $\blacksquare$

::: elmelet
**Elméleti háttér — Páros reguláris gráfok osztálymérete és 1-faktorizáció.**

Ha egy $G = (A, B, E)$ páros gráf $k$-reguláris és $k \ge 1$:
1. $\sum_{u \in A} d(u) = |A| \cdot k = |E|$ és $\sum_{v \in B} d(v) = |B| \cdot k = |E|$.
2. Mivel $k \neq 0$, osztva $k$-val adódik, hogy $|A| = |B|$, a csúcsszám $n = 2|A|$ páros.
*Kőnig élfestési tétele (1916):* Minden $k$-reguláris páros gráf felbontható $k$ darab független teljes párosítás (1-faktor) uniójára, így élkromatikus száma $\chi_e(G) = k$.
:::

## Gy73.1. feladat

Egy 10 csúcsú egyszerű gráfnak 21 éle van. Mutassuk meg, hogy van benne legalább 4 hosszú kör!

**Megoldás.**

Alkalmazzuk a 73. tételt $k = 3$ esetén:
A feltételhez szükséges élszám: $(k - 1)n = (3 - 1) \cdot 10 = 20$ él.
Mivel a gráfnak $21 \ge 20$ éle van, a tétel garantálja, hogy létezik legalább $k + 1 = 3 + 1 = 4$ hosszú kör a gráfban. $\blacksquare$

::: elmelet
**Elméleti háttér — A körmentesség élszámküszöbe és Euler-karakterisztika.**

*Tétel:* Minden $n$ csúcsú egyszerű gráfban, ha $|E| \ge n$, akkor a gráf tartalmaz legalább egy kört.
*Bizonyítás:* Tegyük fel indirekt, hogy a gráf körmentes (erdő). Ha az erdőnek $k \ge 1$ komponense van, akkor éleinek száma $|E| = n - k \le n - 1$. Ez ellentmond az $|E| \ge n$ feltételnek!
Tehát az $n$ él elérése a kör keletkezésének éles küszöbértéke.
:::

## Gy73.2. feladat

Mutassuk meg, hogy ha egy egyszerű gráfban nincs kör, akkor az élek száma legfeljebb $n - 1$!

**Megoldás.**

Egy körmentes gráf egy erdő.
Az erdő élszáma $e = n - c$, ahol $c \ge 1$ a komponensek száma.
Mivel $c \ge 1$, ezért $e = n - c \le n - 1$. $\blacksquare$

::: elmelet
**Elméleti háttér — Mantel tétele és Turán tétele háromszögmentes gráfokra.**

*Mantel tétele (1907):* Ha egy $n$ csúcsú egyszerű gráf nem tartalmaz $K_3$-at (háromszögmentes), akkor éleinek száma legfeljebb:
$$|E| \le \left\lfloor \frac{n^2}{4} \right\rfloor.$$
Az egyenlőség pontosan a kiegyensúlyozott teljes páros gráfra ($K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$) áll fenn.
Általánosítás: *Turán tétele (1941):* Ha $G$ nem tartalmaz $K_{r+1}$-et, akkor élszáma legfeljebb a Turán-gráf $T(n, r)$ élszáma.
:::

## Gy74.1. feladat

Mutassuk meg, hogy egy összefüggő gráf egy $e$ éle pontosan akkor vágóél, ha nem tartozik egyetlen körhöz sem!

**Megoldás.**

Ha $e = uv$ benne van egy $C$ körben, akkor $C - e$ egy alternatív út $u$ és $v$ között, így $e$ elhagyásával az összefüggőség nem sérül ($e$ nem híd).
Megfordítva, ha $e$ nem híd, akkor $G - e$-ben van út $u$ és $v$ között, amely $e$-vel kiegészítve egy kört alkot. $\blacksquare$

::: elmelet
**Elméleti háttér — Vágóélek (hidak) és körök kapcsolata.**

Egy $e \in E$ élt egy összefüggő gráfban *vágóélnek* (vagy hídnak) nevezünk, ha elhagyásával a gráf komponenseinek száma megnő (a gráf szétesik legalább 2 komponensre).
*Tétel:* Egy $e = (u, v)$ él akkor és csak akkor vágóél, ha nem része semmilyen körnek a gráfban.
*Bizonyítás:*
1. Ha $e$ része egy $C$ körnek, akkor $u$ és $v$ között a körön az $e$-től különböző másik út is létezik. Ha $e$-t töröljük, bármely két korábban összekötött csúcs között a séta átterelhető a kör megmaradó ívére, így a gráf összefüggő marad (nem vágóél).
2. Ha $e$ nem vágóél, törlése után $u$ és $v$ között létezik egy út $P$ a maradék gráfban. A $P$ út és az $e$ él együtt egy kört alkot az eredeti gráfban.
:::

## Gy74.2. feladat

Igazoljuk, hogy egy fában minden él vágóél!

**Megoldás.**

A fa körmentes összefüggő gráf.
Mivel a fában egyáltalán nincs kör, az előző állítás szerint egyetlen éle sem tartozhat körhöz, így a fa minden egyes éle vágóél. $\blacksquare$

::: elmelet
**Elméleti háttér — Fák éleinek híd-természete és 2-összefüggőség.**

Mivel egy fa definíció szerint körmentes, a fenti tétel közvetlen következményeként:
*Tétel:* Egy fában minden egyes él vágóél.
Egy fa bármely élét törölve a fa pontosan 2 komponensfára esik szét.
Megfordítva, egy gráf akkor és csak akkor 2-élösszefüggő (nincs benne híd), ha Robbins tétele (1939) szerint létezik erősen összefüggő irányítása.
:::

# Az 5. feladatsorhoz

## Gy75.1. feladat

Egy 10 csúcsú fában van egy 5 fokú és egy 4 fokú csúcs, a többi csúcs foka 1 vagy 2. Hány levele van a fának?

**Megoldás.**

Alkalmazzuk a levelek univerzális képletét:
$$l = 2 + \sum_{d(v) \ge 3} (d(v) - 2) = 2 + (5 - 2) + (4 - 2) = 2 + 3 + 2 = \mathbf{7}.$$
(Ellenőrzés: 7 levél (fok 1), 1 db 2 fokú, 1 db 4 fokú, 1 db 5 fokú $\implies 7+1+1+1 = 10$ csúcs. Fokszámösszeg: $7 \cdot 1 + 1 \cdot 2 + 4 + 5 = 18 = 2(10-1)$.)

::: elmelet
**Elméleti háttér — A levelek univerzális képlete és fokszámegyenletek fákban.**

Egy fában a levelek ($L$, elsőfokú csúcsok) száma közvetlenül leolvasható a 2-nél nagyobb fokú csúcsok fokszámaiból:
$$L = 2 + \sum_{v : d(v) \ge 3} (d(v) - 2).$$
Ez azt jelenti, hogy:
- A másodfokú csúcsok ($d(v) = 2$) egyszerűen „hosszabbítják” az utakat anélkül, hogy a levelek számát megváltoztatnák;
- Minden $k$-fokú elágazás ($k \ge 3$) pontosan $k - 2$-vel növeli a szükséges levelek számát;
- Bármely legalább 2 csúcsú fában van legalább 2 levél ($L \ge 2$), és pontosan 2 levél van akkor és csak akkor, ha a fa egyetlen út ($P_n$).
:::

## Gy75.2. feladat

Egy 16 csúcsú fában minden csúcs foka vagy 1, vagy 4. Hány 4-edfokú csúcs van a fában?

**Megoldás.**

Legyen $k$ a 4 fokú csúcsok száma, és $l$ az 1 fokú csúcsok száma.
$k + l = 16$.
Fokszámegyenlet: $4k + l = 2(16 - 1) = 30$.
Kivonva: $(4k + l) - (k + l) = 30 - 16 \implies 3k = 14$.
Mivel 14 nem osztható 3-mal, ilyen fa **nem létezhet**!
(Ha a csúcsszám 16 helyett pl. $3k+2$ alakú lenne, pl. $n = 17$: $3k = 15 \implies k = 5, l = 12$.)
Válasz: **Nincs ilyen fa (a 4 fokú csúcsok száma nem lehet egész).**

::: elmelet
**Elméleti háttér — Egészértékűségi és realizálhatósági korlátok fák fokszámaira.**

Adott fokszámokból álló sorozat pontosan akkor realizálható faként, ha:
1. Minden $d_i \ge 1$ (összefüggő, nincs izolált pont);
2. A fokszámok összege pontosan $2n - 2$.
A Prüfer-kódolás biztosítja, hogy bármely ilyen sorozathoz pontosan $\binom{n-2}{d_1-1, d_2-1, \dots, d_n-1}$ különböző címkézett fa tartozik.
:::

## Gy76.1. feladat

Egy paintball meccsen mindenki 4 másik embert talált el, és nincs két ember azonos számú bekapott találattal. Hányan játszottak?

**Megoldás.**

Legyen a résztvevők száma $n$.
Mindenki mindenkivel pontosan egyszer mérkőzik meg döntetlen nélkül, így az összes lejátszott mérkőzések (élek) száma egy $n$ csúcsú versenygráfban:
$$|E| = \binom{n}{2} = \frac{n(n-1)}{2}.$$
Minden mérkőzés pontosan 1 győzelmet jelent a győztesnek, így az összesített győzelmek száma megegyezik a mérkőzések számával.
Ha minden játékos pontosan $k = 4$ győzelmet arat, akkor az összesített győzelmek száma $4n$.
Ezért:
$$\frac{n(n-1)}{2} = 4n.$$
Mivel $n > 0$ (vannak játékosok), mindkét oldalt eloszthatjuk $n$-nel:
$$\frac{n-1}{2} = 4 \implies n - 1 = 8 \implies \mathbf{n = 9}.$$
Ellenőrzés: 9 fős bajnokságban $\binom{9}{2} = 36$ mérkőzés van, és $9 \times 4 = 36$ győzelem.
Ilyen reguláris versenygráf valóban létezik (például a $\mathbb{Z}_9$ körön mindenki a rákövetkező 4 játékost győzi le: $i \to i+1, i+2, i+3, i+4 \pmod 9$).
**Válasz:** Igen, lehetséges, és a résztvevők száma pontosan **$n = 9$**.

::: elmelet
**Elméleti háttér — Versenygráfok (tournaments) és fokszámösszegek.**

Egy $n$ csúcsú irányított gráfot *versenygráfnak* (tournament) nevezünk, ha bármely két csúcsa között pontosan egy irányított él fut (egy teljes gráf éleinek tetszőleges irányítása).
Az élek száma: $\binom{n}{2} = \frac{n(n-1)}{2}$.
Jelölje $d^+(v)$ a ki-fokot (győzelmek száma), $d^-(v)$ a be-fokot (vereségek száma).
Mivel minden él egyetlen csúcsból indul ki és egybe érkezik:
$$\sum_{v \in V} d^+(v) = \binom{n}{2}, \quad d^+(v) + d^-(v) = n - 1.$$
Ha minden csúcs ki-foka azonos, a versenygráf reguláris, ami csak páratlan $n$ esetén lehetséges ($d^+(v) = \frac{n-1}{2}$).
:::

## Gy76.2. feladat

Egy körmérkőzéses bajnokságban (ahol nincs döntetlen) lehetséges-e, hogy semelyik két csapatnak ne legyen azonos a győzelmeinek száma? Milyen győzelmi számok alakulnak ekkor ki?

**Megoldás.**

Igen! Körmérkőzéses bajnokság egy $T_n$ tranzitivitású versenygráf (tournament).
Minden mérkőzés egy győzelmet jelent, összesen $\binom{n}{2}$ győzelem van.
A győzelmek lehetséges számai a $\{0, 1, \dots, n-1\}$ halmazból kerülnek ki.
Mivel összegük $\binom{n}{2}$, pontosan akkor különböznek mind, ha a győzelmek számai $0, 1, 2, \dots, n-1$.
Ez pontosan a körmentes (tranzitív) bajnokságokban valósul meg, ahol létezik szigorú rangsor. $\blacksquare$

::: elmelet
**Elméleti háttér — Tranzitív versenygráfok és Landau tétele.**

Egy tournamentet *tranzitívnak* nevezünk, ha $(u \to v)$ és $(v \to w)$ esetén $(u \to w)$ is teljesül.
*Tétel:* Egy tournamentre az alábbiak ekvivalensek:
1. $T$ tranzitív;
2. $T$ nem tartalmaz irányított kört (irányított körmentes / DAG);
3. A csúcsok ki-fokai mind különbözők: $\{d^+(v) : v \in V\} = \{0, 1, 2, \dots, n-1\}$;
4. Létezik a csúcsoknak egyértelmű topologikus sorrendje (Hamilton-útja).
*Landau tétele (1953):* Egy $(s_1 \le s_2 \le \dots \le s_n)$ egész sorozat pontosan akkor lehet tournament ki-fokszámsora, ha $\sum_{i=1}^k s_i \ge \binom{k}{2}$ minden $k < n$-re és $\sum_{i=1}^n s_i = \binom{n}{2}$.
:::

## Gy77.1. feladat

Mutassuk meg, hogy ha egy egyszerű gráfban nincs páros kör, akkor semelyik két körnek nem lehet egynél több közös csúcsa!

**Megoldás.**

Ha két körnek legalább 2 közös csúcsa van, akkor a közös csúcsok közötti utakkal egy théta-gráf ($\theta$-gráf) jön létre (3 belsőleg diszjunkt út két csúcs között).
A 3 út hossza legyen $a, b, c$. A 3 keletkező kör hossza $a+b, b+c, a+c$.
Ezek összege $2(a+b+c)$ páros, így nem lehet mindhárom páratlan: legalább az egyik kör páros hosszúságú!
Ellentmondás, tehát legfeljebb 1 közös csúcsuk lehet. $\blacksquare$

::: elmelet
**Elméleti háttér — Théta-gráfok paritási lemmája.**

Egy $\theta$-gráf két $u, v$ csúcsból és köztük futó 3 belsőleg diszjunkt egyszerű útból ($P_1, P_2, P_3$) áll, melyek hossza $l_1, l_2, l_3 \ge 1$.
A gráf 3 egyszerű kört tartalmaz: $C_{12} = P_1 \cup P_2$, $C_{23} = P_2 \cup P_3$, $C_{13} = P_1 \cup P_3$.
A körök hossza: $l_1 + l_2$, $l_2 + l_3$, $l_1 + l_3$.
*Paritási lemma:*
$$(l_1 + l_2) + (l_2 + l_3) + (l_1 + l_3) = 2(l_1 + l_2 + l_3) \equiv 0 \pmod 2.$$
Mivel 3 egész szám összege páros, a három szám közül nem lehet mindhárom páratlan!
Következésképpen: *minden $\theta$-gráfban legalább egy kör páros hosszúságú.*
:::

## Gy77.2. feladat

Igazoljuk, hogy ha egy egyszerű gráf minden csúcsának foka legalább 3, akkor a gráf nem lehet páros gráf és fa sem!

**Megoldás.**

Fa nem lehet, mert fa élszáma $n - 1$, de $\delta \ge 3 \implies 2e \ge 3n \implies e \ge 1{,}5n > n - 1$.
Páros gráf lehet (pl. $K_{3,3}$), de fa semmiképpen. $\blacksquare$

::: elmelet
**Elméleti háttér — Minimális fokszám és fák átlagfoka.**

Egy fában a csúcsok átlagos fokszáma:
$$\bar{d} = \frac{\sum d(v)}{n} = \frac{2n - 2}{n} = 2 - \frac{2}{n} < 2.$$
Mivel az átlag szigorúan 2 alatt van, a minimális fokszám szükségképpen $\delta(T) \le 1$.
Mivel egy összefüggő nem üres fában $\delta \ge 1$, a minimális fokszám minden legalább 2 csúcsú fában pontosan $\delta(T) = 1$. Ez az oka annak, hogy fában nem létezhet $\delta \ge 2$, és nem létezhet 3-reguláris fa sem.
:::

## Gy78.1. feladat

Adott 4 valós szám. Legfeljebb hány kéttagú összeg lehet racionális úgy, hogy nem az összes összeg racionális?

**Megoldás.**

4 szám esetén $\binom{4}{2} = 6$ összeg van.
Ha a gráf páros (pl. $K_{2,2}$, 4 él):
Legyen $x_1 = \sqrt{2}, x_2 = \sqrt{2}$, és $x_3 = -\sqrt{2}, x_4 = -\sqrt{2}$.
Ekkor az $x_1+x_3, x_1+x_4, x_2+x_3, x_2+x_4$ összegek mind $0 \in \mathbb{Q}$ (4 racionális összeg).
Viszont $x_1 + x_2 = 2\sqrt{2} \notin \mathbb{Q}$ és $x_3 + x_4 = -2\sqrt{2} \notin \mathbb{Q}$.
Tehát 4 összeg lehet racionális anélkül, hogy mindegyik az lenne.
5 összeg esetén a nem-él száma 1, ekkor a gráf összefüggő és tartalmaz $K_3$-at, így mind racionális lenne.
A maximum tehát **4**.

::: elmelet
**Elméleti háttér — Racionális és irracionális pontösszegek a síkban.**

A kombinatorikus geometriában egy pontkonfiguráció távolság- vagy összegstruktúrája algebrai számelméleti eszközökkel vizsgálható.
Ha 4 pontot veszünk fel úgy, hogy a koordináták algebrailag független irracionális tagokat tartalmaznak (pl. $\sqrt{2}, \sqrt{3}$):
A páronkénti összegek közül legfeljebb a szimmetrikus párok adhatnak racionális értéket (pl. $x$ és $-x$).
A páros gráfok struktúrája ($K_{2, 2}$) pontosan leírja a racionális koordináta-összegek maximális realizációját.
:::

## Gy78.2. feladat

Mutassunk 3 olyan valós számot, melyek közül semelyik kettő összege nem racionális!

**Megoldás.**

Válasszunk lineárisan független irracionális számokat $\mathbb{Q}$ felett:
$x_1 = \sqrt{2}, x_2 = \sqrt{3}, x_3 = \sqrt{5}$.
Semelyik két összeg nem racionális. $\blacksquare$

::: elmelet
**Elméleti háttér — Különböző négyzetgyökök lineáris függetlensége.**

A Besicovitch-tétel szerint a négyzetmentes egészek négyzetgyökei lineárisan függetlenek a racionális számtest $\mathbb{Q}$ felett:
Ha $p_1, p_2, \dots, p_k$ különböző prímek, akkor $\sum c_i \sqrt{p_i} \in \mathbb{Q}$ csak akkor állhat fenn, ha minden $c_i = 0$.
Ennek következtében $\sqrt{p} + \sqrt{q}$ soha nem lehet racionális, ha $p \neq q$ prímek.
:::

## Gy79.1. feladat

Írjuk fel a 75 számot Zeckendorf-alakban!

**Megoldás.**

A legnagyobb Fibonacci-szám $\le 75$: $F_{10} = 55$.
Maradék: $75 - 55 = 20$.
Legnagyobb $\le 20$: $F_7 = 13$.
Maradék: $20 - 13 = 7$.
Legnagyobb $\le 7$: $F_5 = 5$.
Maradék: $7 - 5 = 2 = F_3$.
Tehát:
$$75 = 55 + 13 + 5 + 2 = \mathbf{F_{10} + F_7 + F_5 + F_3}.$$

::: elmelet
**Elméleti háttér — Zeckendorf tétele és a mohó algoritmus.**

*Zeckendorf tétele (1972):* Minden pozitív egész szám egyértelműen felírható egy vagy több nem szomszédos Fibonacci-szám ($F_2, F_3, F_4, \dots$) összegeként:
$$N = \sum_{i=2}^k c_i F_i \quad (c_i \in \{0, 1\}, \ c_i c_{i+1} = 0).$$
*Mohó algoritmus (Greedy Algorithm):*
1. Keressük meg a legnagyobb olyan Fibonacci-számot, amely még nem nagyobb $N$-nél: $F_{i_1} \le N < F_{i_1 + 1}$.
2. Levonjuk ezt az értéket: $N' = N - F_{i_1}$.
3. Isételjük az eljárást $N'$-re, amíg a maradék 0 nem lesz!
A szomszédmentesség garantált, mert ha $F_{i_1}$ a maximális, a maradék szigorúan kisebb, mint $F_{i_1+1} - F_{i_1} = F_{i_1-1}$, így a közvetlen szomszéd $F_{i_1-1}$ már nem fér bele.
:::

## Gy79.2. feladat

Mutassuk meg, hogy ha egy $N$ szám felbontásában szerepel $F_k$ és $F_{k+1}$, akkor a felbontás átírható szomszédmentes alakra!

**Megoldás.**

Mivel $F_k + F_{k+1} = F_{k+2}$, a két szomszédos tagot egyszerűen helyettesítjük az eggyel nagyobb Fibonacci-számmal: $F_k + F_{k+1} \to F_{k+2}$. Ezt ismételve a szomszédos tagok száma szigorúan csökken, amíg elérjük a Zeckendorf-alakot. $\blacksquare$

::: elmelet
**Elméleti háttér — Fibonacci-összevonási szabályok és kettős lefedések.**

A Fibonacci-számok additív tulajdonsága: $F_{k-1} + F_k = F_{k+1}$.
Ha egy felbontásban két szomszédos Fibonacci-szám szerepel, azok összevonhatók a rákövetkező Fibonacci-számmá.
Továbbá $2 F_k = F_k + F_k = F_{k-2} + F_{k+1}$ ($k \ge 3$), ami lehetővé teszi a többszörös előfordulások felszámolását és a kanonikus Zeckendorf-alak elérését.
:::

## Gy80.1. feladat

Számítsuk ki a $\sum_{k=1}^{n} k \binom{n}{k}$ összeget a 80. feladat azonosságának segítségével!

**Megoldás.**

Az összeg zárt alakja kétféleképpen is levezethető:
1. *Kombinatorikus kettős megszámlálással:*
Számoljuk meg, hányféleképpen választható ki egy $n$ fős csoportból egy bizottság és a bizottság egy elnöke!
- Ha a bizottság mérete $k$, a tagok $\binom{n}{k}$ módon választhatók ki, az elnök pedig $k$ módon a tagok közül: ez az $\sum_{k=1}^n k \binom{n}{k}$ összeg.
- Másfelől először válasszuk ki az elnököt a teljes $n$ fős társaságból ($n$ lehetőség), majd a maradék $n-1$ ember mindegyikéről döntsük el, hogy benne van-e a bizottságban vagy sem ($2^{n-1}$ lehetőség): ez $n 2^{n-1}$.
2. *Algebrai úton a binomiális együttható absorbciós azonosságával:*
Mivel $k \binom{n}{k} = n \binom{n-1}{k-1}$, kiemelhetünk $n$-et:
$$\sum_{k=1}^n k \binom{n}{k} = \sum_{k=1}^n n \binom{n-1}{k-1} = n \sum_{j=0}^{n-1} \binom{n-1}{j} = n \cdot 2^{n-1}.$$
Az összeg értéke tehát: **$n 2^{n-1}$**.

::: elmelet
**Elméleti háttér — Bizottság elnökkel és kettős megszámlálás.**

Hányféleképpen választható ki egy $n$ fős társaságból egy tetszőleges méretű bizottság és annak egy kijelölt elnöke?
Kétféleképpen számolva:
1. *Először a bizottság méretét rögzítjük:* ha a bizottság $k$ fős, $\binom{n}{k}$ módon választható ki, és $k$ elnökjelölt van: $\sum_{k=1}^n k \binom{n}{k}$.
2. *Először az elnököt választjuk ki:* az elnök $n$-féleképpen választható ki a társaságból. A maradék $n-1$ ember mindegyikéről függetlenül döntünk, hogy tagja-e a bizottságnak vagy sem: $2^{n-1}$ lehetőség.
A kettő egyenlőségéből azonnal adódik:
$$\sum_{k=1}^n k \binom{n}{k} = n 2^{n-1}.$$
:::

## Gy80.2. feladat

Határozzuk meg a $\sum_{k=2}^{n} \binom{n}{k} \binom{k}{2}$ összeg zárt alakját!

**Megoldás.**

Alkalmazzuk a bizottsági vezetőség-választás általános elvét $m = 2$ esetén:
1. *Algebrai levezetés:*
A szorzat tényezőit felbontva:
$$\binom{n}{k} \binom{k}{2} = \frac{n!}{k!(n-k)!} \cdot \frac{k!}{2!(k-2)!} = \frac{n!}{2!(n-2)!} \cdot \frac{(n-2)!}{(k-2)!(n-k)!} = \binom{n}{2} \binom{n-2}{k-2}.$$
Összegezve $k = 2$-től $n$-ig, és az új összegzési indexet $j = k - 2$-nek választva:
$$\sum_{k=2}^n \binom{n}{k} \binom{k}{2} = \binom{n}{2} \sum_{j=0}^{n-2} \binom{n-2}{j} = \mathbf{\binom{n}{2} 2^{n-2}}.$$
2. *Kombinatorikus interpretáció:*
$n$ emberből kiválasztunk egy bizottságot, és a bizottságon belül kijelölünk egy 2 fős elnökséget.
Ez ekvivalens azzal, hogy először a teljes társaságból kiválasztjuk a 2 fős elnökséget ($\binom{n}{2}$), majd a megmaradó $n - 2$ személy mindegyikéről függetlenül eldöntjük, hogy tagja-e még a bizottságnak ($2^{n-2}$).
A zárt alak: **$\binom{n}{2} 2^{n-2} = \frac{n(n-1)}{2} 2^{n-2} = n(n-1) 2^{n-3}$**.

::: elmelet
**Elméleti háttér — Bizottság több fős vezetőséggel (általánosított azonosság).**

Hányféleképpen választható ki egy bizottság és benne egy $m$ fős elnökség?
$$\sum_{k=m}^n \binom{n}{k}\binom{k}{m} = \binom{n}{m} 2^{n-m}.$$
*Kombinatorikus bizonyítás:*
- *Bal oldal:* kiválasztjuk a $k$ fős bizottságot ($\binom{n}{k}$), majd a bizottságból kiválasztjuk az $m$ fős vezetőséget ($\binom{k}{m}$), és összegezünk $k$-ra.
- *Jobb oldal:* először a teljes $n$ fős alaphalmazból kiválasztjuk az $m$ fős vezetőséget ($\binom{n}{m}$). A fennmaradó $n - m$ ember közül tetszőlegesen választjuk ki a „közönséges” bizottsági tagokat ($2^{n-m}$ részhalmaz).
Algebrailag: $\binom{n}{k}\binom{k}{m} = \binom{n}{m}\binom{n-m}{k-m}$.
:::

## Gy81.1. feladat

9 ember mindegyikének zsebében van valahány 10, 20 és 50 forintos érme. Bizonyítsuk be, hogy van két ember, akiknek összeadva az érméiket, mindhárom címletből páros sok darabjuk van!

**Megoldás.**

3 címlet paritása $2^3 = 8$ állapotot határoz meg.
9 ember esetén a skatulya-elv miatt legalább kettőnek megegyezik a paritásvektora.
Ezen két ember érméit összeadva mindhárom címletből páros sok darab lesz. $\blacksquare$

::: elmelet
**Elméleti háttér — Rácspontok paritásvektorai és szakaszfelező pontok.**

Legyenek $P_1, P_2, \dots, P_N \in \mathbb{Z}^d$ egész koordinátájú pontok a $d$-dimenziós térben.
Két pont $A = (x_1, \dots, x_d)$ és $B = (y_1, \dots, y_d)$ felezőpontja:
$$M = \left(\frac{x_1 + y_1}{2}, \dots, \frac{x_d + y_d}{2}\right).$$
Az $M$ pont pontosan akkor rácspont ($\in \mathbb{Z}^d$), ha minden $i \in [d]$-re $x_i + y_i$ páros szám, azaz $x_i \equiv y_i \pmod 2$.
A lehetséges paritásmintázatok száma $\{0, 1\}^d$, ami pontosan $2^d$ skatulya.
A skatulyaelv szerint ha $N > 2^d$ pontot veszünk fel, legalább két pontnak azonos a paritásvektora, így felezőpontjuk rácspont!
Síkban ($d=2$) $2^2 + 1 = 5$ pont, térben ($d=3$) $2^3 + 1 = 9$ pont szükséges.
:::

## Gy81.2. feladat

Hány doboz szükséges ahhoz, hogy 6 különböző színű golyók esetén biztosan legyen kettő, ahol az egyes színek összegei mind párosak?

**Megoldás.**

6 szín paritásvektora $2^6 = 64$ lehetséges értéket vehet fel.
A skatulya-elv garantálja az egyezést, ha a dobozok száma legalább:
$$2^6 + 1 = 64 + 1 = \mathbf{65}.$$

::: elmelet
**Elméleti háttér — Magasabb dimenziós paritásvektorok és affin terek $\mathbb{F}_2$ felett.**

A feladat a diszkrét geometriát összekapcsolja az $\mathbb{F}_2^d$ véges test feletti vektorterekkel.
A koordináták paritása egy természetes vetítés: $\pi: \mathbb{Z}^d \to \mathbb{F}_2^d$.
Két vektor összege $\mathbb{F}_2$-ben pontosan akkor zérusvektor ($v_1 + v_2 = 0$), ha $v_1 = v_2$.
Általánosítás: $k$ pont súlypontjának rácsponttá tételéhez a Davenport-konstans ad választ $\mathbb{Z}_k^d$ felett.
:::

## Gy82.1. feladat

Hány olyan 4-jegyű szám létezik (0000-tól 9999-ig), melyben a számjegyek összege 32?

**Megoldás.**

Alkalmazzunk komplementer szimmetriát!
Legyen $y_i = 9 - d_i \ge 0$.
Ekkor $\sum y_i = 4 \times 9 - \sum d_i = 36 - 32 = 4$.
Ahol $0 \le y_i \le 9$.
Mivel a célösszeg $4 \le 9$, a felső korlát ($y_i \le 9$) automatikusan teljesül minden változóra!
Így semmilyen szita-formula levonásra sincs szükség:
$$\binom{4 + 4 - 1}{4} = \binom{7}{4} = \binom{7}{3} = \frac{7 \cdot 6 \cdot 5}{6} = \mathbf{35}.$$

::: elmelet
**Elméleti háttér — Generátorfüggvények kockadobások összegére.**

Egy szabályos 6-oldalú kocka dobásának generátorfüggvénye:
$$P(x) = x + x^2 + x^3 + x^4 + x^5 + x^6 = x \frac{1 - x^6}{1 - x}.$$
$n$ független kockadobás összegének generátorfüggvénye a polinom $n$-edik hatványa:
$$P(x)^n = x^n \left(\frac{1 - x^6}{1 - x}\right)^n = x^n (1 - x^6)^n (1 - x)^{-n}.$$
A keresett összeg a polinom $x^K$ együtthatója, amely a binomiális tétellel és a negatív binomiális sorfejtéssel számítható ki:
$$(1 - x)^{-n} = \sum_{j=0}^\infty \binom{n+j-1}{j} x^j.$$
:::

## Gy82.2. feladat

Hányféleképpen dobhatunk 4 szabályos dobókockával pontosan 20-at?

**Megoldás.**

A kockák értékei $1 \le x_i \le 6$, összegük 20.
Legyen $y_i = 6 - x_i$, ekkor $0 \le y_i \le 5$, és $\sum y_i = 4 \times 6 - 20 = 4$.
Mivel a célösszeg $4 \le 5$, az $y_i \le 5$ korlát automatikusan teljesül!
Lehetőségek száma:
$$\binom{4 + 4 - 1}{4} = \binom{7}{4} = \mathbf{35}.$$

::: elmelet
**Elméleti háttér — Kockadobások szimmetriája és komplementer változócsere.**

A kockadobások eloszlása szimmetrikus a minimális ($n$) és maximális ($6n$) értékek átlagára:
$$\mathbb{E} = \frac{7n}{2}.$$
Ha egy $K$ összeget vizsgálunk, az $y_i = 7 - x_i$ változócserével $y_i \in \{1, 2, \dots, 6\}$ szintén szabályos kockadobásokat ad, miközben az összeg:
$$\sum y_i = 7n - \sum x_i = 7n - K.$$
Ezért a $K$ és a $7n - K$ összegek előfordulási száma pontosan megegyezik. Ez a duális szimmetria jelentősen leegyszerűsíti a nagy összegek számítását.
:::

## Gy83.1. feladat

Hány olyan anagrammája van a MISSISSIPPI szónak, amelyben a négy 'I' betű közül semelyik kettő sincs egymás mellett?

**Megoldás.**

A szó 11 betűs: I: 4 db, M: 1 db, S: 4 db, P: 2 db.
A nem-I betűk száma 7 (M: 1, S: 4, P: 2).
Elrendezésük: $\frac{7!}{1! 4! 2!} = \frac{5040}{48} = 105$.
A 7 betű $7 + 1 = 8$ rést hoz létre.
A 4 darab 'I' elhelyezése a résekbe: $\binom{8}{4} = 70$.
Összesen:
$$105 \cdot 70 = \mathbf{7350}.$$

::: elmelet
**Elméleti háttér — Multihalmaz-permutációk tiltott betűszomszédsággal.**

Adott betűkből álló anagrammák készítésekor, ha egy bizonyos típusú betűk (pl. magánhangzók vagy az 'I' betűk) nem kerülhetnek egymás mellé:
1. Először sorba rendezzük a többi betűt ismétléses permutációval: $N_{\text{többi}} = \frac{m!}{n_1! \dots n_r!}$.
2. Az $m$ betű $m + 1$ darab elválasztó helyet (rést) hoz létre.
3. A $k$ darab szeparálandó betűt ezen résekbe szórjuk szét úgy, hogy egy résbe legfeljebb egy kerülhet: $\binom{m + 1}{k}$ lehetőség.
4. Ha a szeparálandó betűk mind azonosak, belső sorrendjük 1; ha különbözők, szorzunk $k!$-sal.
A végeredmény a szorzási szabályból adódik.
:::

## Gy83.2. feladat

Hány olyan anagrammája van az ABRAKADABRA szónak, amelyben az öt 'A' betű közül semelyik kettő nem áll egymás mellett?

**Megoldás.**

Az 'ABRAKADABRA' szó betűkészlete:
- 5 darab 'A';
- 2 darab 'B';
- 2 darab 'R';
- 1 darab 'K';
- 1 darab 'D'.
Összesen $5 + 2 + 2 + 1 + 1 = 11$ betű.
1. Először rendezzük el a nem-'A' betűket (6 darab: B, B, R, R, K, D) ismétléses permutációval:
$$N_{\text{máss}} = \frac{6!}{2! \cdot 2! \cdot 1! \cdot 1!} = \frac{720}{2 \cdot 2} = \frac{720}{4} = 180.$$
2. A sorba rendezett 6 mássalhangzó $6 + 1 = 7$ rést (elválasztó helyet) határoz meg (egy a legelején, 5 a belsők között, egy a legvégén).
3. Az 5 darab 'A' betűt ezen 7 résbe kell elhelyezni úgy, hogy egy résbe legfeljebb egy 'A' kerülhet (hogy ne legyenek egymás mellett).
A 7 résből az 5 felhasznált rés kiválasztása:
$$\binom{7}{5} = \binom{7}{2} = \frac{7 \cdot 6}{2} = 21.$$
4. Mivel az 'A' betűk egymás között megkülönböztethetetlenek, belső sorrendjük 1.
A szorzási szabály szerint a megfelelő anagrammák száma:
$$N = 180 \cdot 21 = \mathbf{3780}.$$

::: elmelet
**Elméleti háttér — Anagrammák és elválasztó-módszer.**

Az 'ABRAKADABRA' szóban 11 betű van: 5 darab 'A', 2 darab 'B', 2 darab 'R', 1 darab 'K', 1 darab 'D'.
Ha az 'A' betűk semelyik kettője sem lehet szomszédos:
- A maradék 6 mássalhangzó ('B, B, R, R, K, D') elrendezése: $\frac{6!}{2!\,2!\,1!\,1!} = \frac{720}{4} = 180$.
- A 6 betű 7 rést határoz meg.
- Az 5 darab 'A' betűt $\binom{7}{5} = \binom{7}{2} = 21$ módon helyezhetjük el a 7 résbe.
Összesen: $180 \cdot 21 = 3780$ jó anagramma.
:::

## Gy84.1. feladat

$k = 4$ fajta képeslapból küldünk 3 barátunknak 2-2 különbözőt. Hányféleképpen tehetjük meg úgy, hogy ne legyen olyan képeslap, amit mind a hárman megkaptak?

**Megoldás.**

Jelölje a képeslapok halmazát $A$ ($|A| = 4$, különböző lapok), a barátok halmazát $B$ ($|B| = 3$, különböző személyek).
A feladat egy $f: A \to B$ szürjektív (ráképező) leképezés megadása, vagyis olyan leképezés, amelynél minden barát legalább egy lapot kap.
1. *Megoldás másodfajú Stirling-számokkal:*
A 4 képeslapot felosztjuk 3 nemüres osztályra (ez $S(4, 3)$ lehetőség), majd ezen 3 csomagot bijektíven kiosztjuk a 3 barátnak ($3!$ lehetőség):
$$N = 3! \cdot S(4, 3).$$
Mivel $S(4, 3) = \binom{4}{2} = 6$ (a 4 elem 3 osztályba osztásakor pontosan egy 2 elemű és két 1 elemű osztály keletkezik):
$$N = 6 \cdot 6 = \mathbf{36}.$$
2. *Megoldás logikai szitával (Inclusion-Exclusion):*
- Összes lehetséges kiosztás megszorítás nélkül: $3^4 = 81$.
- Legalább 1 barát nem kap lapot: $\binom{3}{1} 2^4 = 3 \cdot 16 = 48$.
- Legalább 2 barát nem kap lapot: $\binom{3}{2} 1^4 = 3 \cdot 1 = 3$.
- Mind a 3 barát kimarad: $0$.
A szita-formulával:
$$N = 3^4 - \binom{3}{1} 2^4 + \binom{3}{2} 1^4 = 81 - 48 + 3 = \mathbf{36}.$$

::: elmelet
**Elméleti háttér — Képeslapküldés és ajándékelosztás mint leképezések.**

Ha $n$ személy mindegyike választ $k$ fajta ajándék vagy képeslap közül:
Ez leképezések $f: [n] \to [k]$ halmazát jelenti.
Az összes lehetséges választás száma: $k^n$.
Ha feltételeket írunk elő a választások metszetére (pl. létezik-e olyan ajándék, amit mindenki megkapott, vagy senki sem kapott meg):
- A szita-formula adja meg a metszet feltételeit;
- Ha azt követeljük meg, hogy minden ajándék gazdára találjon (szürjektív függvények), a másodfajú Stirling-számokkal számolunk: $k! S(n, k)$.
:::

## Gy84.2. feladat

$k = 5$ fajta ajándékból választunk 3 gyereknek 2-2 különbözőt. Hány olyan eset van, amikor van legalább egy olyan ajándék, amit mind a három gyerek megkapott?

**Megoldás.**

Ez a rossz esetek száma:
$$k(k - 1)^n - \binom{k}{2}.$$
$k = 5, n = 3$:
$$5 \cdot 4^3 - \binom{5}{2} = 5 \cdot 64 - 10 = 320 - 10 = \mathbf{310}.$$

::: elmelet
**Elméleti háttér — Szita-formula alkalmazása közös elemekre.**

Annak meghatározására, hogy hány olyan választás van, ahol legalább egy elem minden résztvevőnél előfordul:
Legyen $A_i$ az az esemény, hogy az $i$-edik típusú ajándékot mindenki megkapta.
Egy rögzített ajándékot mindenki választott: ha a személyek $m$-et választanak $k$-ból, akkor a maradék $m-1$ ajándékot választják a maradék $k-1$-ből: $\binom{k-1}{m-1}^n$.
Két ajándékot mindenki választott: $\binom{k-2}{m-2}^n$.
A szita-formula szerint a „legalább egy közös” események száma:
$$\sum_{j=1}^m (-1)^{j-1} \binom{k}{j} \binom{k-j}{m-j}^n.$$
:::
