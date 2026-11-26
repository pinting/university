# III. RÉSZ: DETERMINÁNSOK ÉS LINEÁRIS ALGEBRA

A harmadik rész a **determinánssal** foglalkozik: azzal a számmal, amelyet minden négyzetes mátrixhoz hozzárendelünk, és amely egyszerre dönti el, hogy egy egyenletrendszer egyértelműen megoldható-e, hogy egy mátrix invertálható-e, és hogy egy lineáris leképezés hányszorosára nagyítja a területet (térfogatot). Előbb a $2 \times 2$-es és $3 \times 3$-as esettel ismerkedünk meg, majd a permutációk segítségével tetszőleges méretre általánosítunk. A rész végén a **rang** fogalmán keresztül teljes választ adunk arra, mikor oldható meg egy lineáris egyenletrendszer.

## 7. Determinánsok (I. rész)

A determinánsokat a matematika számos területén alkalmazzák: az egyenletek elméletében, a mátrixalgebrában, a geometriában és a differenciálegyenletek elméletében. De vajon mikor és hol bukkantak fel először?

### Seki Kówa és az első determináns

A történelemkönyvek szerint a japán matematikus, Seki Kówa (más néven Seki Takakazu) 1683-ban használt először determinánsokat, mégpedig ahhoz, hogy két másodfokú egyenlet közös megoldását megkeresse:
$$a_{11}x^2 + a_{12}x + c_1 = 0, \qquad a_{21}x^2 + a_{22}x + c_2 = 0. \qquad (7.1)$$
A második egyenletet $a_{11}$-gyel szorozva, majd kivonva belőle az első egyenlet $a_{21}$-szeresét, az $x^2$-es tag kiesik:
$$(a_{11}a_{22} - a_{21}a_{12})x + (c_2a_{11} - c_1a_{21}) = 0. \qquad (7.2)$$
Ez az egyenlet már elsőfokú! Az itt $x$ együtthatójaként feltűnő $a_{11}a_{22} - a_{21}a_{12}$ értéket nevezzük ma az
$$\begin{pmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{pmatrix}$$
$2 \times 2$-es mátrix determinánsának. Valóban, (7.2)-ből (ha a determináns nem nulla)
$$x = -\frac{\det\begin{pmatrix} a_{11} & c_1 \\ a_{21} & c_2 \end{pmatrix}}{\det\begin{pmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{pmatrix}}.$$
(7.1)-ből nemcsak az $x^2$-es, hanem a konstans tagot is kiejthetjük: a második egyenletet $c_1$-gyel szorozva és kivonva belőle az első $c_2$-szeresét
$$(c_1a_{21} - c_2a_{11})x^2 + (c_1a_{22} - c_2a_{12})x = 0$$
adódik. Ha $x \ne 0$, oszthatunk vele, és (ha a nevező nem nulla)
$$x = -\frac{\det\begin{pmatrix} c_1 & a_{12} \\ c_2 & a_{22} \end{pmatrix}}{\det\begin{pmatrix} c_1 & a_{11} \\ c_2 & a_{21} \end{pmatrix}}.$$
A két kifejezés egyenlősége tehát szükséges feltétele annak, hogy a két másodfokú egyenletnek legyen (nem nulla) közös gyöke — ez a mai **rezultáns** fogalmának őse.

A determinánsoknak a lineáris egyenletekhez is közük van. Ehhez kapcsolódik az első gyakorló feladatunk:

> **7.1 Feladat.** Legyenek $a_{11}, a_{12}, a_{21}, a_{22}, b_1, b_2$ adott valós vagy komplex számok. Ha az
> $$a_{11}x_1 + a_{12}x_2 = b_1, \qquad a_{21}x_1 + a_{22}x_2 = b_2$$
> egyenletrendszernek egyértelmű megoldása van, írjuk fel a megoldást két determináns hányadosaként!

(A megoldás a 7.4. Tétel, a Cramer-szabály.)

### 7.1. Bevezetés és történet

- A $\det A$ egy **szám**, amelyet minden négyzetes $A$ mátrixhoz hozzárendelünk.
- **Alkalmazás:** egy $n$ egyenletből álló, $n$ ismeretlenes lineáris egyenletrendszernek pontosan akkor van egyértelmű megoldása, ha az együtthatómátrix determinánsa nem nulla.
- **Történet:** a fogalom Gottfried Wilhelm Leibniz munkáiban gyökerezik, a modern elmélet és a „determináns” elnevezés pedig Augustin-Louis Cauchytól (1812) származik.

A determinánst gyakran a mátrixelmélet melléktermékének gondolják, a valóságban azonban a determináns **több mint másfél évszázaddal megelőzte** a mátrix fogalmát! Kezdetben nem volt több, mint egy segédeszköz az egyenletrendszerek kezelésére. Leibniz már az 1670-es évek végétől kezdve kéziratos jegyzeteiben lineáris egyenletrendszerek megoldhatóságát vizsgálta együtthatók szorzatösszegeivel — lényegében determinánsokkal —, és 1693-ban Guillaume de l'Hôpitalnak írt levelében le is írt egy ilyen feltételt; ezek a jegyzetek azonban sokáig kiadatlanok maradtak. Japánban tőle függetlenül, nagyjából ugyanebben az időben Seki is eljutott a fogalomhoz.

Gabriel Cramer svájci matematikus 1750-ben publikálta a ma is ismert módszert az egyenletrendszerek megoldására, a **Cramer-szabályt**. A fordulatot Augustin-Louis Cauchy hozta el a XIX. század elején. Cauchy 1812-ben publikált értekezésében a determinánst leválasztotta az egyenletrendszerekről, és önálló fogalomként vizsgálta.

- Ő adta a fogalomnak a ma is használt nevét, a **determinánst** (a latin *determinare*, „meghatározni” igéből, hiszen meghatározza az egyenletrendszer megoldhatóságát). (Gauss 1801-ben már használta a szót, de más értelemben: a másodfokú formák diszkriminánsára.)
- Ő bizonyította a determinánsok főbb tulajdonságait (linearitás, sorcsere hatása stb.), köztük — Jacques Binet-vel egy időben — a kulcsfontosságú **szorzástételt**: $\det(AB) = \det A \cdot \det B$.

Cauchy átfogó és szigorú tárgyalásával a determináns elnyerte helyét a matematikában, mint a lineáris algebra egyik központi fogalma, amely azt méri, hogyan változik meg a terület vagy térfogat egy lineáris leképezés során.

### 7.2. A $2 \times 2$-es determináns

> **Definíció.** Az $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ mátrix **determinánsa**
> $$\det A = \begin{vmatrix} a & b \\ c & d \end{vmatrix} = ad - bc.$$

(Szemléletesen: a főátló szorzatából kivonjuk a mellékátló szorzatát.) **Példa:**
$$\begin{vmatrix} 5 & 2 \\ 3 & 4 \end{vmatrix} = 5 \cdot 4 - 2 \cdot 3 = 14.$$

> **7.2 Tétel.** Ha $A$ és $B$ két $2 \times 2$-es mátrix, akkor szorzatuk determinánsa a determinánsaik szorzata:
> $$\det(AB) = \det A \cdot \det B.$$

*Bizonyítás.* Legyen $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ és $B = \begin{pmatrix} e & f \\ g & h \end{pmatrix}$.

*A determinánsok szorzata:* $\det A = ad - bc$, $\det B = eh - fg$, így
$$\det A \cdot \det B = (ad - bc)(eh - fg) = adeh - adfg - bceh + bcfg. \qquad (7.4)$$
*A szorzat determinánsa:* először a szorzatot képezzük:
$$AB = \begin{pmatrix} ae + bg & af + bh \\ ce + dg & cf + dh \end{pmatrix},$$
majd a determinánsát:
$$\det(AB) = (ae + bg)(cf + dh) - (af + bh)(ce + dg).$$
Kifejtve: $(ae + bg)(cf + dh) = acef + adeh + bcfg + bdgh$, és $(af + bh)(ce + dg) = acef + adfg + bceh + bdgh$. Különbségük
$$\det(AB) = adeh + bcfg - adfg - bceh. \qquad (7.6)$$
(7.4) és (7.6) összevetéséből $\det(AB) = \det A \cdot \det B$. $\blacksquare$

> **7.3 Tétel (geometriai jelentés).** Egy valós $2 \times 2$-es mátrix determinánsának abszolút értéke megegyezik a mátrix oszlopvektorai által kifeszített paralelogramma területével.

*Bizonyítás.* Legyen $\mathbf{a} = \begin{pmatrix} a_1 \\ a_2 \end{pmatrix}$ és $\mathbf{b} = \begin{pmatrix} b_1 \\ b_2 \end{pmatrix}$. Belátjuk, hogy az általuk kifeszített paralelogramma $T$ területére
$$T = \left|\det\begin{pmatrix} a_1 & b_1 \\ a_2 & b_2 \end{pmatrix}\right| = |a_1b_2 - a_2b_1|.$$

*A terület geometriai képlete.* Egy paralelogramma területe két szomszédos oldal hosszának és a közbezárt $\theta$ szög szinuszának szorzata: $T = \|\mathbf{a}\| \cdot \|\mathbf{b}\| \cdot \sin\theta$. Ebből, a $\sin^2\theta = 1 - \cos^2\theta$ azonosságot felhasználva,
$$T^2 = \|\mathbf{a}\|^2\|\mathbf{b}\|^2\sin^2\theta = \|\mathbf{a}\|^2\|\mathbf{b}\|^2 - \big(\|\mathbf{a}\|\|\mathbf{b}\|\cos\theta\big)^2.$$

*Kapcsolat a skaláris szorzattal.* A skaláris szorzat definíciója szerint $\mathbf{a} \cdot \mathbf{b} = \|\mathbf{a}\|\|\mathbf{b}\|\cos\theta$, így
$$T^2 = \|\mathbf{a}\|^2\|\mathbf{b}\|^2 - (\mathbf{a} \cdot \mathbf{b})^2.$$
Komponensekkel: $\|\mathbf{a}\|^2 = a_1^2 + a_2^2$, $\|\mathbf{b}\|^2 = b_1^2 + b_2^2$, $\mathbf{a} \cdot \mathbf{b} = a_1b_1 + a_2b_2$. Behelyettesítve és kifejtve:
$$T^2 = (a_1^2 + a_2^2)(b_1^2 + b_2^2) - (a_1b_1 + a_2b_2)^2 = a_1^2b_2^2 + a_2^2b_1^2 - 2a_1a_2b_1b_2 = (a_1b_2 - a_2b_1)^2.$$
(A kifejtésben az $a_1^2b_1^2$ és $a_2^2b_2^2$ tagok kiestek.) Gyököt vonva $T = |a_1b_2 - a_2b_1| = |\det A|$. $\blacksquare$

**Példa.** A $(3, 1)$ és $(1, 2)$ vektorok által kifeszített paralelogramma területe $\left|\begin{smallmatrix} 3 & 1 \\ 1 & 2 \end{smallmatrix}\right| = 6 - 1 = 5$. (A determináns *előjele* is jelent valamit: pozitív, ha az $\mathbf{a}$-ból $\mathbf{b}$-be az óramutató járásával ellentétesen, $180°$-nál kisebb szögben lehet elfordulni — vagyis az irányítást jelzi.)

> **7.4 Tétel (Cramer-szabály $2 \times 2$-es esetben).** Tekintsük az
> $$a_{11}x_1 + a_{12}x_2 = b_1, \qquad a_{21}x_1 + a_{22}x_2 = b_2$$
> egyenletrendszert, és legyen $D = \begin{vmatrix} a_{11} & a_{12} \\ a_{21} & a_{22} \end{vmatrix} = a_{11}a_{22} - a_{12}a_{21}$. Ha $D \ne 0$, akkor az egyenletrendszernek pontosan egy megoldása van:
> $$x_1 = \frac{D_1}{D}, \qquad x_2 = \frac{D_2}{D}, \qquad \text{ahol} \qquad D_1 = \begin{vmatrix} b_1 & a_{12} \\ b_2 & a_{22} \end{vmatrix}, \qquad D_2 = \begin{vmatrix} a_{11} & b_1 \\ a_{21} & b_2 \end{vmatrix}.$$
> ($D_i$-t úgy kapjuk, hogy $D$-ben az $i$-edik oszlopot kicseréljük a jobb oldalra.)

*Bizonyítás.* Az ismeretleneket eliminációval határozzuk meg. *$x_1$ meghatározása:* az első egyenletet $a_{22}$-vel, a másodikat $a_{12}$-vel szorozzuk:
$$a_{11}a_{22}x_1 + a_{12}a_{22}x_2 = b_1a_{22}, \qquad a_{21}a_{12}x_1 + a_{22}a_{12}x_2 = b_2a_{12}.$$
Kivonva a másodikat az elsőből, $x_2$ kiesik: $(a_{11}a_{22} - a_{21}a_{12})x_1 = b_1a_{22} - b_2a_{12}$, azaz $D \cdot x_1 = D_1$. Mivel $D \ne 0$, $x_1 = \frac{D_1}{D}$.

*$x_2$ meghatározása:* az első egyenletet $a_{21}$-gyel, a másodikat $a_{11}$-gyel szorozzuk, és a másodikból kivonjuk az elsőt: $(a_{22}a_{11} - a_{12}a_{21})x_2 = b_2a_{11} - b_1a_{21}$, azaz $D \cdot x_2 = D_2$, így $x_2 = \frac{D_2}{D}$.

Végül behelyettesítéssel ellenőrizhető, hogy ez valóban megoldás; tehát pontosan egy megoldás van. $\blacksquare$

**Példa.** $2x + 3y = 8$, $x - y = -1$. Itt
$$D = \begin{vmatrix} 2 & 3 \\ 1 & -1 \end{vmatrix} = -5, \quad D_1 = \begin{vmatrix} 8 & 3 \\ -1 & -1 \end{vmatrix} = -5, \quad D_2 = \begin{vmatrix} 2 & 8 \\ 1 & -1 \end{vmatrix} = -10,$$
így $x = \frac{-5}{-5} = 1$, $y = \frac{-10}{-5} = 2$.

### 7.3. A $3 \times 3$-as determináns

> **Sarrus-szabály.** Az $A = \begin{pmatrix} a & b & c \\ d & e & f \\ g & h & i \end{pmatrix}$ mátrix determinánsa
> $$\det A = (aei + bfg + cdh) - (ceg + afh + bdi).$$

Megjegyezhető így: írjuk a mátrix mellé az első két oszlopát még egyszer; a három „főátló-irányú” (balról jobbra lefelé haladó) hármas szorzatának összegéből vonjuk ki a három „mellékátló-irányú” hármas szorzatának összegét. **Ez a szabály csak $3 \times 3$-as mátrixokra érvényes!** (Egy $4 \times 4$-es mátrixra hasonló „átlós” szabály nem ad helyes eredményt.)

**Példa.**
$$\begin{vmatrix} 2 & 1 & 3 \\ 0 & -1 & 4 \\ 1 & 2 & 1 \end{vmatrix} = \big(2 \cdot (-1) \cdot 1 + 1 \cdot 4 \cdot 1 + 3 \cdot 0 \cdot 2\big) - \big(3 \cdot (-1) \cdot 1 + 2 \cdot 4 \cdot 2 + 1 \cdot 0 \cdot 1\big) = 2 - 13 = -11.$$

> **Kifejtési tétel (Laplace).** A determináns tetszőleges sora vagy oszlopa szerint kifejthető. Az első sor szerinti kifejtés:
> $$\det A = a\begin{vmatrix} e & f \\ h & i \end{vmatrix} - b\begin{vmatrix} d & f \\ g & i \end{vmatrix} + c\begin{vmatrix} d & e \\ g & h \end{vmatrix}.$$
> Az előjelek a $(-1)^{i+j}$ szabályt követik („sakktábla-minta”):
> $$\begin{pmatrix} + & - & + \\ - & + & - \\ + & - & + \end{pmatrix}.$$

**Példa.** Ugyanezt a determinánst az első oszlop szerint kifejtve (ahol egy $0$ is van, ami csökkenti a munkát):
$$2\begin{vmatrix} -1 & 4 \\ 2 & 1 \end{vmatrix} - 0 \cdot \begin{vmatrix} 1 & 3 \\ 2 & 1 \end{vmatrix} + 1 \cdot \begin{vmatrix} 1 & 3 \\ -1 & 4 \end{vmatrix} = 2(-1 - 8) + (4 + 3) = -18 + 7 = -11.$$

**Geometriai jelentés.** Térben $|\det A|$ a mátrix oszlopvektorai által kifeszített **paralelepipedon térfogata**.

### 7.4. A determinánsok alaptulajdonságai

A $2 \times 2$-es és $3 \times 3$-as determinánsokra könnyű ellenőrizni a következőket (a 9. fejezetben tetszőleges méretre bebizonyítjuk őket):

1. **Transzponálás:** $\det(A^T) = \det A$. (Ezért minden sorokra vonatkozó tulajdonság az oszlopokra is igaz.)
2. **Skalárszoros:** ha egy oszlopot (vagy sort) $\lambda$-val szorzunk, a determináns $\lambda$-szorosára változik.
3. **Sorcsere:** két sor (vagy oszlop) felcserélése a determináns előjelét megváltoztatja.
4. **Azonos sorok:** ha két sor (vagy oszlop) megegyezik, a determináns $0$.
5. **Elemi sorművelet:** ha egy sorhoz hozzáadjuk egy másik sor $\lambda$-szorosát, a determináns nem változik.
6. **Háromszögmátrix:** ha $A$ felső (vagy alsó) háromszögmátrix (a főátló alatt, illetve fölött csupa nulla áll), akkor $\det A$ a főátlóbeli elemek szorzata:
$$\det\begin{pmatrix} a & b & c \\ 0 & e & f \\ 0 & 0 & i \end{pmatrix} = aei.$$

Az $n \times n$-es determináns definíciója $n \ge 4$ esetén kissé bonyolultabb (bár kiszámítására több viszonylag egyszerű módszer is van). Az új definícióhoz előbb a **permutáció** és az **inverziószám** fogalmát kell bevezetnünk.

## 8. Permutációk definíciója és szorzása

> **Definíció.** Az $X = \{1, 2, \dots, n\}$ halmaz önmagára való kölcsönösen egyértelmű (bijektív) leképezéseit **permutációknak** nevezzük. Az $n$ elemű halmaz összes permutációjának halmazát $S_n$-nel jelöljük; elemszáma $|S_n| = n!$.

**Jelölés.** A permutációkat leggyakrabban **kétsoros írásmóddal** adjuk meg: a felső sorba az elemek kerülnek $1$-től $n$-ig, az alsóba a hozzájuk rendelt képek. Például $S_4$-ben
$$\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}$$
azt jelenti, hogy $\pi(1) = 3$, $\pi(2) = 1$, $\pi(3) = 4$, $\pi(4) = 2$.

**Permutációk szorzása (kompozíciója).** Mivel a permutációk függvények, szorzatuk a függvénykompozíció: **jobbról balra** haladva hajtjuk végre a leképezéseket, $(\pi\sigma)(x) = \pi(\sigma(x))$. Ha
$$\pi = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 3 & 1 \end{pmatrix}, \qquad \sigma = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 1 & 3 \end{pmatrix},$$
akkor
$$\pi\sigma = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 3 & 1 \end{pmatrix}\begin{pmatrix} 1 & 2 & 3 \\ 2 & 1 & 3 \end{pmatrix} = \begin{pmatrix} 1 & 2 & 3 \\ 3 & 2 & 1 \end{pmatrix}.$$
(Magyarázat: vegyük például az $1$-et. A jobb oldali $\sigma$ az $1$-et a $2$-be viszi, a bal oldali $\pi$ a $2$-t a $3$-ba. Így a szorzat az $1$-et a $3$-ba viszi.)

> **8.1 Tétel.** A permutációk szorzása **asszociatív**: $(\pi\sigma)\tau = \pi(\sigma\tau)$. Általában azonban **nem kommutatív**: $\pi\sigma \ne \sigma\pi$.

Az asszociativitás a függvénykompozíció asszociativitásából adódik: mindkét oldal az $x$-et $\pi(\sigma(\tau(x)))$-be viszi. A nem kommutativitásra az előbbi példa is jó: $\sigma\pi$ az $1$-et $\sigma(\pi(1)) = \sigma(2) = 1$-be viszi, tehát
$$\sigma\pi = \begin{pmatrix} 1 & 2 & 3 \\ 1 & 3 & 2 \end{pmatrix} \ne \pi\sigma.$$

**Identikus és inverz permutáció.** Az $\mathrm{id}$ identikus permutáció minden elemet helyben hagy (a két sor megegyezik); bármely $\pi$-re $\pi \cdot \mathrm{id} = \mathrm{id} \cdot \pi = \pi$. Minden $\pi$-nek van $\pi^{-1}$ inverze, amelyre $\pi\pi^{-1} = \pi^{-1}\pi = \mathrm{id}$. Kétsoros megadásnál az inverzet úgy kapjuk, hogy a két sort felcseréljük, majd az oszlopokat a felső sor szerint újra növekvő sorrendbe rendezzük. Például
$$\begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}^{-1} = \begin{pmatrix} 3 & 1 & 4 & 2 \\ 1 & 2 & 3 & 4 \end{pmatrix} = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 4 & 1 & 3 \end{pmatrix}.$$

### 8.1. Ciklusok és transzpozíciók (cserék)

**Ciklus.** Azokat a permutációkat, amelyek néhány elemet „körbevisznek”, a többit pedig helyben hagyják, **ciklusoknak** nevezzük. Például az $(1\ 3\ 4)$ ciklus jelentése: $1 \mapsto 3$, $3 \mapsto 4$, $4 \mapsto 1$, a többi elem a helyén marad. A ciklus **hossza** a benne szereplő elemek száma.

> **8.2 Tétel (ciklusfelbontás).** Minden permutáció felbontható közös elem nélküli (diszjunkt) ciklusok szorzatára, és ez a felbontás a tényezők sorrendjétől eltekintve egyértelmű.

A felbontás menete: induljunk el az $1$-től, és kövessük a képeit, amíg vissza nem érünk; ez az első ciklus. Ezután egy még nem szereplő elemtől indulunk, és így tovább. **Példa:**
$$\begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 \\ 3 & 5 & 4 & 1 & 2 & 6 \end{pmatrix} = (1\ 3\ 4)(2\ 5)(6),$$
hiszen $1 \to 3 \to 4 \to 1$, $2 \to 5 \to 2$, $6 \to 6$. Az egy hosszúságú ciklusokat el szoktuk hagyni: $(1\ 3\ 4)(2\ 5)$. (Diszjunkt ciklusok egymással felcserélhetők, ezért a sorrendjük mindegy.)

**Csere (transzpozíció).** A $2$ hosszúságú ciklusokat **cseréknek** (transzpozícióknak) nevezzük: két elemet felcserélnek, a többit helyben hagyják. Bármely permutáció felírható cserék szorzataként (például egy ciklus: $(1\ 2\ 3) = (1\ 3)(1\ 2)$, jobbról balra olvasva), de ez a felírás nem egyértelmű.

### 8.2. Inverziók és a permutáció előjele

**Inverzió.** Azt mondjuk, hogy egy $(i, j)$ számpár **inverzióban áll** a $\pi$ permutációban, ha $i < j$, de $\pi(i) > \pi(j)$. (A kétsoros írásmódban: az alsó sorban a nagyobb szám megelőzi a kisebbet.) Az inverziók számát $I(\pi)$ jelöli.

**Példa.** $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}$. Az alsó sor: $3, 1, 4, 2$. Az inverzióban álló párok (az alsó sor értékeivel): $(3, 1)$, $(3, 2)$, $(4, 2)$. Tehát $I(\pi) = 3$.

**Páros és páratlan permutációk, előjel.** Egy permutáció **páros**, ha inverzióinak száma páros, és **páratlan**, ha páratlan. A permutáció **előjele** (szignuma):
$$\operatorname{sgn}(\pi) = (-1)^{I(\pi)}.$$
A páros permutációk előjele $+1$, a páratlanoké $-1$.

> **8.3 Tétel (szorzástétel).** Bármely két $\pi, \sigma \in S_n$ permutációra
> $$\operatorname{sgn}(\pi\sigma) = \operatorname{sgn}(\pi)\operatorname{sgn}(\sigma).$$

*Bizonyítás.* A permutáció előjele elegáns algebrai alakban is felírható:
$$\operatorname{sgn}(\pi) = \prod_{1 \le i < j \le n}\frac{\pi(j) - \pi(i)}{j - i}.$$
Valóban: ebben a szorzatban minden olyan tényező negatív, amely egy inverziónak felel meg, a többi pozitív. Mivel $\pi$ bijekció, a $\{\pi(i), \pi(j)\}$ párok éppen az összes kételemű részhalmazt futják be, így a számlálóban és a nevezőben minden elempár különbsége pontosan egyszer szerepel (legfeljebb előjelben eltérve). Tehát a szorzat abszolút értéke $1$, előjele pedig pontosan $(-1)^{I(\pi)}$.

Ezt a képletet használva:
$$\operatorname{sgn}(\pi\sigma) = \prod_{i < j}\frac{\pi(\sigma(j)) - \pi(\sigma(i))}{j - i} = \prod_{i < j}\left(\frac{\pi(\sigma(j)) - \pi(\sigma(i))}{\sigma(j) - \sigma(i)} \cdot \frac{\sigma(j) - \sigma(i)}{j - i}\right).$$
A második tényezők szorzata pontosan $\operatorname{sgn}(\sigma)$. Az első tényezők szorzatában az $u = \sigma(i)$, $v = \sigma(j)$ jelöléssel minden $\frac{\pi(v) - \pi(u)}{v - u}$ alakú tört pontosan egyszer szerepel (a $\frac{\pi(v) - \pi(u)}{v - u}$ tört szimmetrikus $u$-ban és $v$-ben, így nem számít, hogy $u < v$ vagy $u > v$), tehát a szorzatuk definíció szerint $\operatorname{sgn}(\pi)$. Így $\operatorname{sgn}(\pi\sigma) = \operatorname{sgn}(\pi)\operatorname{sgn}(\sigma)$. $\blacksquare$

**Fontos permutációk előjele.**

- Az **identikus permutáció** előjele $+1$ (inverziója nincs).
- Az **inverz permutáció** előjele megegyezik az eredetiével: $\operatorname{sgn}(\pi^{-1}) = \operatorname{sgn}(\pi)$, hiszen szorzatuk az identitás, amelynek előjele $+1$.
- A **cserék** (transzpozíciók) páratlan permutációk, előjelük $-1$ (lásd alább).
- Egy **$k$ hosszú ciklus** felírható $k - 1$ csere szorzataként (például $(1\ 2\ 3) = (1\ 3)(1\ 2)$, általában $(a_1\ a_2\ \dots\ a_k) = (a_1\ a_k)\cdots(a_1\ a_3)(a_1\ a_2)$), így előjele $(-1)^{k-1}$. Tehát **a páros hosszú ciklus páratlan permutáció, a páratlan hosszú ciklus pedig páros!**

**Miért páratlan egy csere?** Cseréljük fel az identikus permutációban az $i$-edik és a $j$-edik elemet ($i < j$), és számoljuk össze az inverziókat. Azokkal az elemekkel kapcsolatban, amelyek $i$ előtt vagy $j$ után állnak, nem változik semmi. A változás csak az $i$ és $j$ között álló $k = j - i - 1$ elemet, valamint a felcserélt két elemet érinti:

- a $j$ elem az $i$-edik pozícióba kerül, és megelőzi a köztes $k$ elemet, amelyek mind kisebbek nála: ez $k$ inverzió;
- az $i$ elem a $j$-edik pozícióba kerül, a köztes $k$ elem mögé, amelyek mind nagyobbak nála: ez is $k$ inverzió;
- végül maga a $(j, i)$ pár is inverzióban áll: $1$ inverzió.

Összesen $2k + 1$ inverzió keletkezett, ami páratlan; így a csere előjele $(-1)^{2k+1} = -1$.

**Példa.** A $\pi = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 3 & 1 & 4 & 2 \end{pmatrix}$ permutáció ciklusfelbontása $(1\ 3\ 4\ 2)$ — egy $4$ hosszú ciklus —, így előjele $(-1)^3 = -1$. Ez egyezik az inverziószámból kapott $(-1)^{I(\pi)} = (-1)^3$ értékkel.

::: kiegeszites
**Kiegészítés: a páros és páratlan permutációk száma.** Ha $n \ge 2$, akkor $S_n$-ben ugyanannyi páros permutáció van, mint páratlan, azaz $\frac{n!}{2}$. Valóban, a $\pi \mapsto (1\ 2)\pi$ leképezés kölcsönösen egyértelmű $S_n$-en (önmaga inverze), és a 8.3. Tétel szerint minden páros permutációt páratlanba visz és viszont. Például $S_3$-ban a páros permutációk: $\mathrm{id}$, $(1\ 2\ 3)$, $(1\ 3\ 2)$; a páratlanok: $(1\ 2)$, $(1\ 3)$, $(2\ 3)$.
:::

## 9. A determinánsok alaptulajdonságai (II. rész)

A determináns fogalmát a $2 \times 2$-es és $3 \times 3$-as esetekből kiindulva szeretnénk kiterjeszteni tetszőleges $n \times n$-es mátrixokra úgy, hogy a korábban megismert alaptulajdonságok (a sorokban való linearitás és a sorcserénél bekövetkező előjelváltás) az általános esetben is érvényben maradjanak. Bebizonyítható, hogy a korábbi tulajdonságokat megőrző általánosítás pontosan egyféleképpen tehető meg. Ez az egyértelműség vezet a következő, Leibniztől származó, elsőre talán mesterkéltnek tűnő, de valójában nagyon mély szerkezetű definícióhoz.

> **9.1 Definíció.** Az $n \times n$-es $A = [a_{i,j}]$ mátrix **determinánsa**
> $$\det A = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\, a_{1,\pi(1)}\, a_{2,\pi(2)} \cdots a_{n,\pi(n)}.$$

**Mit jelent ez?** Minden tag egy olyan $n$ tényezős szorzat, amely **minden sorból és minden oszlopból pontosan egy elemet** tartalmaz (az $i$-edik sorból a $\pi(i)$-edik oszlopbelit); ilyen „bástyaelhelyezés” éppen $n!$ van, és mindegyik szorzatot a megfelelő permutáció előjelével látjuk el.

**Ellenőrzés kis méretekre.** $n = 2$-re $S_2 = \{\mathrm{id}, (1\ 2)\}$, így $\det A = a_{11}a_{22} - a_{12}a_{21}$ — a régi definíció. $n = 3$-ra a hat permutáció: az identitás és a két háromciklus, $(1\ 2\ 3)$ és $(1\ 3\ 2)$, páros; a három csere páratlan. A tagok:
$$a_{11}a_{22}a_{33} + a_{12}a_{23}a_{31} + a_{13}a_{21}a_{32} - a_{13}a_{22}a_{31} - a_{11}a_{23}a_{32} - a_{12}a_{21}a_{33},$$
ami pontosan a Sarrus-szabály. Egy $4 \times 4$-es determináns már $24$, egy $10 \times 10$-es $3\,628\,800$ tagú összeg — ezért a definíciót szinte sosem használjuk közvetlen számolásra, hanem a belőle levezetett tulajdonságokat.

### A determináns tulajdonságai

**1. Transzponálás.** A determináns értéke megegyezik a transzponált mátrix determinánsával:
$$\det(A^T) = \det A.$$
Ebből következik, hogy **minden sorokra vonatkozó tulajdonság érvényes az oszlopokra is.**

*Indoklás.* Az $A^T$ mátrix $i$-edik sorának $j$-edik eleme az eredeti $a_{j,i}$ elem, így a definíció szerint
$$\det(A^T) = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\, a_{\pi(1),1}\, a_{\pi(2),2} \cdots a_{\pi(n),n}.$$
Egy tag tényezőit (amelyek számok, tehát szorzásuk kommutatív) átrendezhetjük úgy, hogy az *első* indexek kerüljenek növekvő sorrendbe. Ha $\pi$ az $i$-t $\pi(i)$-be viszi, akkor $\pi^{-1}$ a $\pi(i)$-t viszi $i$-be, így
$$a_{\pi(1),1}\, a_{\pi(2),2} \cdots a_{\pi(n),n} = a_{1,\pi^{-1}(1)}\, a_{2,\pi^{-1}(2)} \cdots a_{n,\pi^{-1}(n)}.$$
Az inverz permutáció előjele megegyezik az eredetiével, így
$$\det(A^T) = \sum_{\pi \in S_n}\operatorname{sgn}(\pi^{-1})\, a_{1,\pi^{-1}(1)} \cdots a_{n,\pi^{-1}(n)}.$$
Amikor $\pi$ befutja $S_n$ összes elemét, $\pi^{-1}$ is pontosan egyszer veszi fel $S_n$ minden elemét (az inverzképzés kölcsönösen egyértelmű). A fenti összeg tehát ugyanazokból a tagokból áll, mint $\det A$ definíciója, legfeljebb más sorrendben. Így $\det(A^T) = \det A$. $\blacksquare$

**2. Sorcsere (váltakozó tulajdonság).** Ha a mátrix két sorát (vagy oszlopát) felcseréljük, a determináns előjele megváltozik.

*Indoklás.* Tegyük fel, hogy $A$ $k$-adik és $\ell$-edik sorát felcserélve kapjuk a $B$ mátrixot: $b_{k,m} = a_{\ell,m}$, $b_{\ell,m} = a_{k,m}$, és $i \notin \{k, \ell\}$-re $b_{i,m} = a_{i,m}$. A definíció szerint
$$\det B = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\, b_{1,\pi(1)} \cdots b_{n,\pi(n)} = \sum_{\pi \in S_n}\operatorname{sgn}(\pi) \cdots a_{\ell,\pi(k)} \cdots a_{k,\pi(\ell)} \cdots.$$
Legyen $\tau = (k\ \ell)$ csere és $\sigma = \pi \circ \tau$. Ekkor $\sigma(\ell) = \pi(k)$ és $\sigma(k) = \pi(\ell)$, a többi helyen $\sigma(i) = \pi(i)$, így minden tag $a_{1,\sigma(1)} \cdots a_{n,\sigma(n)}$ alakú. A szorzástétel szerint $\operatorname{sgn}(\sigma) = \operatorname{sgn}(\pi)\operatorname{sgn}(\tau) = -\operatorname{sgn}(\pi)$. Amikor $\pi$ befutja $S_n$-et, $\sigma = \pi \circ \tau$ is pontosan egyszer befutja (a cserével való jobbról szorzás bijekció). Tehát
$$\det B = \sum_{\sigma \in S_n} -\operatorname{sgn}(\sigma)\, a_{1,\sigma(1)} \cdots a_{n,\sigma(n)} = -\det A.$$
Oszlopcserére ugyanez az 1. pont miatt automatikusan igaz. $\blacksquare$

**3. Két azonos sor.** Ha a mátrixnak két azonos sora (vagy oszlopa) van, a determinánsa nulla.

*Indoklás.* Cseréljük fel a két azonos sort! A kapott mátrix hajszálpontosan megegyezik $A$-val, így determinánsa $\det A$. Másrészt a 2. pont szerint a csere után a determináns $-\det A$. Tehát $\det A = -\det A$, azaz $2\det A = 0$, és mivel valós (vagy komplex) számok felett dolgozunk, $\det A = 0$. $\blacksquare$

**4. Skalárszoros kiemelése (homogenitás).** Ha egy sort (vagy oszlopot) $\lambda$-val szorzunk, a determináns $\lambda$-szorosára változik:
$$\det(\dots, \lambda r_i, \dots) = \lambda\det(\dots, r_i, \dots).$$
(A definíció minden tagjában pontosan egy tényező származik az $i$-edik sorból, így minden tagból kiemelhető a $\lambda$.) **Figyelem:** $\det(\lambda A) = \lambda^n\det A$, hiszen ekkor mind az $n$ sort $\lambda$-val szoroztuk! (Például $\det\left(2\begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}\right) = 4 \cdot (-2) = -8$.)

**5. Linearitás egy sorban.** Ha egy sor két vektor összege, a determináns két determináns összegeként bontható fel:
$$\det(\dots, r_i + r_i', \dots) = \det(\dots, r_i, \dots) + \det(\dots, r_i', \dots).$$
(Minden tagban egyetlen tényező jön az $i$-edik sorból, és $a + a'$ alakú; a szorzat kifejtése két tagra bomlik.) **Fontos:** ez csak *egy* sorra igaz; általában $\det(A + B) \ne \det A + \det B$.

**6. Elemi sorművelet.** Ha a mátrix egyik sorának (oszlopának) $\lambda$-szorosát hozzáadjuk egy másik sorhoz (oszlophoz), a determináns **nem változik**:
$$\det(\dots, r_i, \dots, r_j + \lambda r_i, \dots) = \det(\dots, r_i, \dots, r_j, \dots).$$
Ez a legfontosabb tulajdonság a Gauss-elimináció szempontjából!

*Indoklás.* Az 5. pont (a $j$-edik sorra alkalmazva) szerint a módosított mátrix determinánsa két determináns összege: az első maga $\det A$, a második egy olyan mátrixé, amelynek $j$-edik sorában $\lambda r_i$ áll. Ebből a 4. pont szerint $\lambda$ kiemelhető, és egy olyan mátrix marad, amelynek $i$-edik és $j$-edik sora is $r_i$, azaz két sora azonos. A 3. pont szerint ennek determinánsa $0$, így a második tag $\lambda \cdot 0 = 0$, és csak $\det A$ marad. Oszlopokra az 1. pont miatt ugyanígy. $\blacksquare$

**7. Egységmátrix és diagonális mátrix.** $\det E = 1$, és egy diagonális mátrix determinánsa az átlóbeli elemek szorzata. Általánosabban: **egy felső (vagy alsó) háromszögmátrix determinánsa a főátlóbeli elemek szorzata.** (A definíció egyetlen nem nulla tagja az identikus permutációhoz tartozó: ha $\pi \ne \mathrm{id}$, akkor van olyan $i$, amelyre $\pi(i) < i$, és felső háromszögmátrixban $a_{i,\pi(i)} = 0$.)

**8. Szorzástétel.** $\det(AB) = \det A \cdot \det B$. (Később bizonyítjuk.)

**9. Inverz mátrix.** Ha $A$ invertálható, akkor $\det A \ne 0$, és
$$\det(A^{-1}) = \frac{1}{\det A}.$$
*Indoklás.* $AA^{-1} = E$, így a 8. pont szerint $\det A \cdot \det(A^{-1}) = \det E = 1$. Két szám szorzata csak akkor lehet $1$, ha egyik sem nulla; ezért $\det A \ne 0$, és $\det(A^{-1}) = \frac{1}{\det A}$. $\blacksquare$

### Determináns számítása Gauss-eliminációval

Az elemi sorműveletek hatása a determinánsra:

1. egy sor $\lambda$-szorosának hozzáadása egy másik sorhoz: a determináns **nem változik**;
2. két sor felcserélése: a determináns **előjelet vált**;
3. egy sor szorzása $\lambda$-val: a determináns $\lambda$-val szorzódik (ezt kerülni szoktuk).

Ezért a determinánst úgy számoljuk ki leggyorsabban, hogy a mátrixot sorműveletekkel **felső háromszög alakra** hozzuk (a lépések hatását nyomon követve), és összeszorozzuk a főátló elemeit.

**Kidolgozott példa.** Számítsuk ki a
$$B = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 2 & 5 & 8 & 11 \\ 3 & 8 & 14 & 21 \\ 4 & 11 & 21 & 32 \end{pmatrix}$$
mátrix determinánsát! *1. szakasz* (az első oszlop kinullázása): $S_2 \to S_2 - 2S_1$, $S_3 \to S_3 - 3S_1$, $S_4 \to S_4 - 4S_1$:
$$\begin{pmatrix} 1 & 2 & 3 & 4 \\ 0 & 1 & 2 & 3 \\ 0 & 2 & 5 & 9 \\ 0 & 3 & 9 & 16 \end{pmatrix}.$$
*2. szakasz* (a második oszlop, a $(2,2)$ pozíciójú $1$-es vezérelemmel): $S_3 \to S_3 - 2S_2$, $S_4 \to S_4 - 3S_2$:
$$\begin{pmatrix} 1 & 2 & 3 & 4 \\ 0 & 1 & 2 & 3 \\ 0 & 0 & 1 & 3 \\ 0 & 0 & 3 & 7 \end{pmatrix}.$$
*3. szakasz:* $S_4 \to S_4 - 3S_3$:
$$U = \begin{pmatrix} 1 & 2 & 3 & 4 \\ 0 & 1 & 2 & 3 \\ 0 & 0 & 1 & 3 \\ 0 & 0 & 0 & -2 \end{pmatrix}.$$
Az $U$ felső háromszögmátrix, így $\det U = 1 \cdot 1 \cdot 1 \cdot (-2) = -2$. Mivel kizárólag olyan sorműveleteket használtunk, amelyek nem változtatják a determinánst (nem volt sorcsere és sorszorzás), $\det B = \det U = -2$.

### 9.1. A determinánsok kifejtési tétele (Laplace-féle kifejtés)

A kifejtési tétel segítségével egy $n \times n$-es determináns kiszámítását $(n-1) \times (n-1)$-es determinánsok kiszámítására vezethetjük vissza. Ehhez két fogalomra van szükség.

**Aldetermináns.** Hagyjuk el az $n \times n$-es $A$ mátrix $i$-edik sorát és $j$-edik oszlopát. A visszamaradó $(n-1) \times (n-1)$-es mátrix determinánsát az $a_{i,j}$ elemhez tartozó **aldeterminánsnak** nevezzük, és $\det(A_{i,j})$-vel jelöljük.

**Előjeles aldetermináns.** Az $a_{i,j}$ elemhez tartozó előjeles aldetermináns (más néven kofaktor):
$$A_{i,j}^* = (-1)^{i+j}\det(A_{i,j}).$$
(Az előjeleket „sakktábla-mintázat” szerint is elképzelhetjük: a bal felső sarokban $+$, mellette és alatta $-$, és így tovább váltakozva.)

> **9.2 Tétel (Laplace-féle kifejtési tétel).** A determináns értéke megkapható úgy, hogy egy tetszőleges sor (vagy oszlop) minden elemét megszorozzuk a hozzá tartozó előjeles aldeterminánssal, és a szorzatokat összeadjuk. Az $i$-edik sor szerinti kifejtés:
> $$\det A = \sum_{j=1}^n a_{i,j}A^*_{i,j} = \sum_{j=1}^n (-1)^{i+j}a_{i,j}\det(A_{i,j}).$$

*Bizonyítás.* **1. lépés (linearitás).** Az $A$ mátrix $i$-edik sorvektora a standard bázisvektorok lineáris kombinációja:
$$(a_{i,1}, a_{i,2}, \dots, a_{i,n}) = a_{i,1}(1, 0, \dots, 0) + a_{i,2}(0, 1, \dots, 0) + \dots + a_{i,n}(0, \dots, 0, 1).$$
Mivel a determináns az $i$-edik sorában additív, és a skalár kiemelhető (5. és 4. tulajdonság), $\det A$ felbontható $n$ determináns összegére:
$$\det A = \sum_{j=1}^n a_{i,j}\det\big(B^{(j)}\big),$$
ahol a $B^{(j)}$ mátrix $i$-edik sora $(0, \dots, 0, 1, 0, \dots, 0)$, az $1$-es a $j$-edik helyen, a többi sor pedig változatlan.

**2. lépés ($\det B^{(j)}$ kiszámítása).** Be kell látnunk, hogy $\det B^{(j)} = (-1)^{i+j}\det(A_{i,j})$. Vigyük a $j$-edik oszlopban lévő $1$-est a mátrix bal felső sarkába úgy, hogy közben csak **szomszédos** sorokat és oszlopokat cserélünk (így a többi elem egymáshoz viszonyított sorrendje nem keveredik össze). Az $i$-edik sort felcseréljük az $(i-1)$-edikkel, majd az azelőttivel, és így tovább, amíg az első helyre nem kerül: ez $i - 1$ szomszédos sorcsere. Ezután a $j$-edik oszlopot toljuk balra egyesével, amíg az első helyre nem ér: $j - 1$ szomszédos oszlopcsere. Összesen $i + j - 2$ cserét végeztünk, és mindegyik előjelet vált; így a determináns $(-1)^{i+j-2} = (-1)^{i+j}$-szeresére változott.

**3. lépés (a visszamaradó mátrix).** A cserék után kapott mátrix bal felső eleme $1$, az első sorának többi eleme $0$, a jobb alsó $(n-1) \times (n-1)$-es blokkban pedig — a szomszédos cserék miatt az eredeti sorrendben — pontosan az $i$-edik sor és $j$-edik oszlop törlésével kapott mátrix áll. Ennek a mátrixnak a determinánsa a definíció szerint $\det(A_{i,j})$: az első sorból csak az $1$-est választó permutációk adnak nem nulla tagot, és ezek pontosan a jobb alsó blokk permutációinak felelnek meg, ugyanazzal az előjellel. (Az első oszlop többi eleme nem számít, hiszen ezeket egy olyan tagban kellene használni, amely az első sorból egy $0$-t választ.)

Így $\det B^{(j)} = (-1)^{i+j}\det(A_{i,j})$, és ezt az 1. lépésbe írva kapjuk a kifejtési tételt. Mivel $\det A = \det(A^T)$, a tétel oszlopok szerinti kifejtésre is érvényes. $\blacksquare$

**Kidolgozott példa.** Számítsuk ki a
$$M = \begin{pmatrix} 1 & 0 & 2 & 0 \\ 3 & 1 & 0 & 1 \\ 0 & 2 & 1 & 0 \\ 1 & 0 & 0 & 1 \end{pmatrix}$$
determinánsát a negyedik oszlop szerint kifejtve! Ebben az oszlopban csak két nem nulla elem van: $a_{2,4} = 1$ (előjel $(-1)^{2+4} = +$) és $a_{4,4} = 1$ (előjel $+$). Így
$$\det M = 1 \cdot \begin{vmatrix} 1 & 0 & 2 \\ 0 & 2 & 1 \\ 1 & 0 & 0 \end{vmatrix} + 1 \cdot \begin{vmatrix} 1 & 0 & 2 \\ 3 & 1 & 0 \\ 0 & 2 & 1 \end{vmatrix} = (-4) + 13 = 9.$$
(Az első aldetermináns a harmadik sora szerint kifejtve $1 \cdot \left|\begin{smallmatrix} 0 & 2 \\ 2 & 1 \end{smallmatrix}\right| = -4$; a második Sarrus-szabállyal $1 + 0 + 12 - 0 - 0 - 0 = 13$.) **Tanulság:** a kifejtést mindig a legtöbb nullát tartalmazó sor vagy oszlop szerint érdemes végezni.

Bár determinánsok kiszámítására nem ez a leggyorsabb módszer (hanem a Gauss-elimináció), kis méretű mátrixok esetén ez is praktikus. Szimbólumokat tartalmazó mátrixokhoz már komolyabb programra van szükség; ilyen például a nyílt forráskódú SageMath, amelyben például a következő kód egy szimbolikus $2 \times 2$-es determinánst számol ki:

```
x, y = var('x, y')
M = Matrix(SR, [[x^2 + 2, y], [x^2, y^2 - y]])
M.det()
```

### 9.2. A determinánsok szorzástétele

A tétel előtt egy megjegyzés: **a Gauss-elimináció sorműveletei egy mátrixszal való balról szorzással írhatók le.** Ha például egy $4 \times 4$-es $A$ mátrix harmadik sorából kivonjuk az első sor négyszeresét, akkor a kapott $B$ mátrixra
$$B = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ -4 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix} A = VA,$$
ahol a $V$ mátrix csak magától az elimináció lépésétől függ (az egységmátrixon végrehajtott ugyanazon sorművelet eredménye). Két sor cseréje is ilyen: például a második és harmadik sor cseréje a
$$V = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}$$
mátrixszal való balról szorzásnak felel meg. Ha több elimináció-lépést végzünk, rendre $V_1, V_2, \dots, V_s$-sel szorzunk balról, ami egyetlen $V = V_sV_{s-1}\cdots V_1$ mátrixszal való balról szorzással is felírható. Hasonlóan, **az oszlopműveletek egy alkalmas mátrixszal való jobbról szorzásnak** felelnek meg.

> **9.3 Tétel (a determinánsok szorzástétele).** Ha $A, B \in T^{n \times n}$, akkor
> $$\det(AB) = \det A \cdot \det B.$$

*Bizonyítás.* **1. lépés: $A$ háromszög alakra hozása.** Az $A$ mátrixon végezzünk Gauss-eliminációt **kizárólag** „egy sorhoz egy másik sor többszörösét adjuk” típusú sorműveletekkel, amíg egy $A_1$ felső háromszögmátrixot nem kapunk. (Ez mindig lehetséges: ha egy oszlopban a vezérelem helyén $0$ áll, de alatta van nem nulla elem, akkor annak a sornak a hozzáadásával nem nullát hozhatunk létre a vezérelem helyén; ha alatta is minden $0$, az oszlop már rendben van.) Ezek a lépések nem változtatják a determinánst: $\det A_1 = \det A$. A lépések együtt egy $V$ mátrixszal való balról szorzást jelentenek: $A_1 = VA$.

Ha ugyanezeket a lépéseket a $C = AB$ mátrixon végezzük, egy $C_1 = VC$ mátrixot kapunk, amelyre $\det C_1 = \det C$, és
$$C_1 = VC = VAB = A_1B.$$

**2. lépés: $B$ háromszög alakra hozása oszlopműveletekkel.** A $B$ mátrixon végezzünk hasonló **oszlopműveleteket** (egy oszlophoz egy másik oszlop többszörösét adjuk), amíg egy $B_1$ felső háromszögmátrixot nem kapunk. (Ezúttal az utolsó sorral kezdünk: az utolsó oszlop elemével kinullázzuk az utolsó sor többi elemét, majd az utolsó előtti sorban az utolsó előtti oszlop elemével, és így tovább.) Ekkor $\det B_1 = \det B$, és $B_1 = BR$ alkalmas $R$ mátrixszal. Ugyanezeket a lépéseket $C_1$-en végezve $C_2 = C_1R$, $\det C_2 = \det C_1$, és
$$C_2 = C_1R = A_1BR = A_1B_1.$$

**3. lépés: háromszögmátrixok.** Összefoglalva: $C_2 = A_1B_1$, ahol $\det C_2 = \det C_1 = \det C$, $\det A_1 = \det A$ és $\det B_1 = \det B$. Két felső háromszögmátrix szorzata is felső háromszögmátrix, és a főátlójában a megfelelő átlóelemek szorzatai állnak (hiszen $(A_1B_1)_{ii} = \sum_k (A_1)_{ik}(B_1)_{ki}$, és itt csak a $k = i$ tag nem nulla). Felső háromszögmátrixokra tehát a szorzástétel triviálisan teljesül:
$$\det C_2 = \prod_i (A_1)_{ii}(B_1)_{ii} = \det A_1 \cdot \det B_1.$$
Vagyis $\det C = \det A \cdot \det B$. $\blacksquare$

### Az adjungált mátrix és az inverz

**Ferde kifejtés.** Fejtsük ki $A$ determinánsát az $i$-edik sor szerint, de az $a_{i,j}$ elemeket ne a saját előjeles aldeterminánsukkal, hanem egy **másik**, $k$-adik sor ($k \ne i$) megfelelő előjeles aldeterminánsaival szorozzuk. Ekkor mindig $0$-t kapunk:
$$\sum_{j=1}^n a_{i,j}A^*_{k,j} = 0 \qquad (k \ne i). \qquad (9.1)$$
Ennek oka: a bal oldal pontosan annak a mátrixnak a $k$-adik sora szerinti kifejtése, amelyet $A$-ból úgy kapunk, hogy a $k$-adik sort kicseréljük az $i$-edik sorra (az $A^*_{k,j}$ aldeterminánsok nem függnek a $k$-adik sortól). Ennek a mátrixnak két azonos sora van ($i$ és $k$), így determinánsa nulla.

> **9.4 Definíció.** Az $A \in T^{n \times n}$ mátrix **adjungáltja** az az $n \times n$-es $\operatorname{adj} A$ mátrix, amelynek $i$-edik sorában a $j$-edik elem az $a_{j,i}$ elemhez tartozó előjeles aldetermináns:
> $$(\operatorname{adj} A)_{i,j} = A^*_{j,i} = (-1)^{i+j}\det(A_{j,i}).$$
> **Vigyázat!** Az indexek fel vannak cserélve: az adjungált az előjeles aldeterminánsok mátrixának *transzponáltja*.

> **9.5 Tétel.** Az $A \in T^{n \times n}$ mátrixnak pontosan akkor van inverze, ha $\det A \ne 0$. Ekkor
> $$A^{-1} = \frac{1}{\det A}\operatorname{adj} A.$$

*Bizonyítás.* Ha $\det A = 0$, akkor nincs inverz: ha $B$ inverz volna, akkor $AB = E$ miatt a szorzástétel szerint $\det A \cdot \det B = \det E = 1$, ami $0 \cdot \det B = 1$-et jelentene — lehetetlen.

Legyen most $\det A \ne 0$. Belátjuk, hogy $A \cdot \operatorname{adj} A = \det A \cdot E$. Legyen $C = A \cdot \operatorname{adj} A$; a mátrixszorzás definíciója szerint
$$C_{i,j} = \sum_{k=1}^n a_{i,k}(\operatorname{adj} A)_{k,j} = \sum_{k=1}^n a_{i,k}A^*_{j,k}.$$
- **Főátló ($i = j$):** $C_{i,i} = \sum_k a_{i,k}A^*_{i,k}$ pontosan az $i$-edik sor szerinti Laplace-kifejtés, tehát $C_{i,i} = \det A$.
- **Főátlón kívül ($i \ne j$):** $C_{i,j} = \sum_k a_{i,k}A^*_{j,k}$ ferde kifejtés, tehát (9.1) szerint $C_{i,j} = 0$.

Így $A \cdot \operatorname{adj} A = \det A \cdot E$, és $\det A$-val osztva $A \cdot \frac{1}{\det A}\operatorname{adj} A = E$. Ugyanígy (oszlopok szerinti kifejtéssel) $\frac{1}{\det A}\operatorname{adj} A \cdot A = E$. $\blacksquare$

**Példák.** $2 \times 2$-es mátrixra:
$$\begin{pmatrix} a & b \\ c & d \end{pmatrix}^{-1} = \frac{1}{ad - bc}\begin{pmatrix} d & -b \\ -c & a \end{pmatrix} \qquad (ad - bc \ne 0)$$
— a főátló elemeit felcseréljük, a mellékátlóét ellentettjükre változtatjuk, és osztunk a determinánssal. A 2.6. pont $A = \begin{pmatrix} 2 & -1 & 0 \\ -1 & 2 & -1 \\ 0 & -1 & 2 \end{pmatrix}$ mátrixára $\det A = 4$ és
$$\operatorname{adj} A = \begin{pmatrix} 3 & 2 & 1 \\ 2 & 4 & 2 \\ 1 & 2 & 3 \end{pmatrix}, \qquad A^{-1} = \frac{1}{4}\begin{pmatrix} 3 & 2 & 1 \\ 2 & 4 & 2 \\ 1 & 2 & 3 \end{pmatrix},$$
egyezésben a Gauss-eliminációval kapott eredménnyel. (Például $(\operatorname{adj} A)_{1,1} = \left|\begin{smallmatrix} 2 & -1 \\ -1 & 2 \end{smallmatrix}\right| = 3$, $(\operatorname{adj} A)_{1,2} = -\left|\begin{smallmatrix} -1 & 0 \\ -1 & 2 \end{smallmatrix}\right| = 2$.)

### A Cramer-szabály

> **Tétel (Cramer-szabály).** Tekintsük az
> $$a_{11}x_1 + \dots + a_{1n}x_n = b_1, \quad \dots, \quad a_{n1}x_1 + \dots + a_{nn}x_n = b_n$$
> lineáris egyenletrendszert, azaz $Ax = b$-t, ahol $\det A \ne 0$. Ekkor a rendszernek pontosan egy megoldása van, és
> $$x_i = \frac{\det A_i}{\det A} \qquad (i = 1, 2, \dots, n),$$
> ahol az $A_i$ mátrixot úgy kapjuk $A$-ból, hogy az $i$-edik oszlopát kicseréljük a $b$ vektorra.

*Bizonyítás (determinánstulajdonságokkal).* Mivel $\det A \ne 0$, $A$ invertálható, így $x = A^{-1}b$ az egyetlen megoldás. Jelölje $\mathbf{a}_1, \dots, \mathbf{a}_n$ az $A$ oszlopvektorait. Mivel $x$ megoldás, $b$ az oszlopvektorok lineáris kombinációja:
$$x_1\mathbf{a}_1 + x_2\mathbf{a}_2 + \dots + x_n\mathbf{a}_n = b.$$
Vizsgáljuk $\det A_j$-t, ahol $A_j = [\mathbf{a}_1, \dots, \mathbf{a}_{j-1}, b, \mathbf{a}_{j+1}, \dots, \mathbf{a}_n]$. A $b$ helyére a lineáris kombinációt írva, és a $j$-edik oszlopban a linearitást alkalmazva:
$$\det A_j = \sum_{i=1}^n x_i\det[\mathbf{a}_1, \dots, \mathbf{a}_{j-1}, \mathbf{a}_i, \mathbf{a}_{j+1}, \dots, \mathbf{a}_n].$$
Ha $i \ne j$, a mátrixnak két azonos oszlopa van ($\mathbf{a}_i$ a $j$-edik és a saját $i$-edik helyén), így determinánsa $0$. Ha $i = j$, a mátrix maga $A$. Tehát az összegből csak az $i = j$ tag marad: $\det A_j = x_j\det A$, és $\det A$-val osztva kapjuk az állítást. $\blacksquare$

**Kidolgozott példa.** Oldjuk meg: $x + y + z = 6$, $2x - y + z = 3$, $x + 2y - z = 2$. Itt
$$\det A = \begin{vmatrix} 1 & 1 & 1 \\ 2 & -1 & 1 \\ 1 & 2 & -1 \end{vmatrix} = 7, \qquad \det A_1 = \begin{vmatrix} 6 & 1 & 1 \\ 3 & -1 & 1 \\ 2 & 2 & -1 \end{vmatrix} = 7, \qquad \det A_2 = \begin{vmatrix} 1 & 6 & 1 \\ 2 & 3 & 1 \\ 1 & 2 & -1 \end{vmatrix} = 14, \qquad \det A_3 = \begin{vmatrix} 1 & 1 & 6 \\ 2 & -1 & 3 \\ 1 & 2 & 2 \end{vmatrix} = 21.$$
Tehát $x = 1$, $y = 2$, $z = 3$. (A Cramer-szabály elméleti szempontból nagyon fontos, mert *képletet* ad a megoldásra; gyakorlati számolásra nagyobb rendszereknél azonban a Gauss-elimináció sokkal gyorsabb.)

### A Vandermonde-determináns

A **Vandermonde-determináns** a következő alakú $n \times n$-es mátrix determinánsa, ahol $x_1, \dots, x_n$ tetszőleges skalárok:
$$V(x_1, x_2, \dots, x_n) = \det\begin{pmatrix} 1 & x_1 & x_1^2 & \dots & x_1^{n-1} \\ 1 & x_2 & x_2^2 & \dots & x_2^{n-1} \\ \vdots & \vdots & \vdots & & \vdots \\ 1 & x_n & x_n^2 & \dots & x_n^{n-1} \end{pmatrix}.$$

> **Tétel.** A Vandermonde-determináns értéke a különbségek szorzata:
> $$V(x_1, x_2, \dots, x_n) = \prod_{1 \le i < j \le n}(x_j - x_i).$$

Például $V(1, 2, 3) = (2 - 1)(3 - 1)(3 - 2) = 2$, és $V(1, 2, 3, 4) = 1 \cdot 2 \cdot 3 \cdot 1 \cdot 2 \cdot 1 = 12$. Speciálisan **a Vandermonde-determináns pontosan akkor nem nulla, ha az $x_i$-k páronként különbözők.**

*Bizonyítás (a polinomgyökök módszerével).* $n$-re vonatkozó teljes indukcióval bizonyítunk. Az $n = 2$ eset triviális: $V(x_1, x_2) = \left|\begin{smallmatrix} 1 & x_1 \\ 1 & x_2 \end{smallmatrix}\right| = x_2 - x_1$. Tegyük fel, hogy a tétel $n - 1$-re igaz, és vizsgáljuk az $n$-es esetet.

Ha az $x_1, \dots, x_{n-1}$ számok között van két egyenlő, akkor a mátrixnak két azonos sora van, így mindkét oldal $0$. Tegyük fel tehát, hogy $x_1, \dots, x_{n-1}$ páronként különbözők.

1. **A determináns mint polinom.** Tekintsük $V(x_1, \dots, x_n)$-et az $x_n$ változó polinomjaként, rögzített $x_1, \dots, x_{n-1}$ mellett: $P(x_n) = V(x_1, \dots, x_n)$. Az utolsó sor szerint kifejtve látszik, hogy $P$ legfeljebb $(n-1)$-edfokú polinom.
2. **A gyökök.** Ha $x_n = x_i$ valamely $i \in \{1, \dots, n-1\}$-re, akkor a mátrix $i$-edik és $n$-edik sora megegyezik, így $P(x_i) = 0$. Tehát $x_1, \dots, x_{n-1}$ mind gyökei $P$-nek.
3. **Szorzattá bontás.** Mivel $P$ legfeljebb $(n-1)$-edfokú, és $n - 1$ különböző gyökét ismerjük, a gyöktényezők kiemelésével
$$P(x_n) = C \cdot (x_n - x_1)(x_n - x_2)\cdots(x_n - x_{n-1}),$$
ahol $C$ az $x_n^{n-1}$ tag együtthatója.
4. **A főegyüttható.** A determinánst az utolsó sor szerint kifejtve az $x_n^{n-1}$ tag együtthatója az $(n, n)$ pozícióhoz tartozó előjeles aldetermináns, az előjel $(-1)^{n+n} = +1$. Ez az aldetermináns éppen az $(n-1) \times (n-1)$-es Vandermonde-determináns: $C = V(x_1, \dots, x_{n-1})$, ami az indukciós feltevés szerint $\prod_{1 \le i < j \le n-1}(x_j - x_i)$.
5. **Összefoglalás.** Visszahelyettesítve:
$$V(x_1, \dots, x_n) = \left(\prod_{1 \le i < j \le n-1}(x_j - x_i)\right)\cdot\prod_{i=1}^{n-1}(x_n - x_i) = \prod_{1 \le i < j \le n}(x_j - x_i). \ \blacksquare$$

A Vandermonde-determináns a 16. fejezetben, az interpolációnál kap majd jelentőséget: azt garantálja, hogy $n$ különböző helyen előírt értékekhez pontosan egy legfeljebb $(n-1)$-edfokú polinom tartozik.

## 10. Lineáris algebra

A lineáris függetlenség gyökerei a XIX. század első felében keresendők, amikor a matematikusok a vektorterek és a dimenzió elméletét kezdték kidolgozni. Hermann Grassmann volt az első, aki rendszerezte az $n$ dimenziós terekkel kapcsolatos elképzeléseket, *Ausdehnungslehre* (Kiterjedéstan, 1844) című művében. Bár munkáját hosszú ideig nem értették meg, ő fektette le a vektortér, a lineáris kombináció, a függetlenség és a dimenzió alapjait — a mai precíz terminológia nélkül. Lényegében megfogalmazta, hogy a tér dimenziója a maximális lineárisan független vektorrendszer elemszáma.

### Vektorok lineáris kombinációja és függetlensége

> **10.1 Definíció (lineáris kombináció).** A $v_1, v_2, \dots, v_k$ vektorok **lineáris kombinációjának** nevezzük a
> $$v = c_1v_1 + c_2v_2 + \dots + c_kv_k$$
> alakú vektorokat, ahol $c_1, \dots, c_k$ tetszőleges skalárok (a test elemei).

**Példa.** A $v_1 = (1, 0, 2)$ és $v_2 = (3, 1, 0)$ vektorok lineáris kombinációja ($c_1 = 2$, $c_2 = -1$):
$$v = 2v_1 + (-1)v_2 = (2 - 3,\ 0 - 1,\ 4 - 0) = (-1, -1, 4).$$

> **10.2 Definíció (lineáris függetlenség).** A $v_1, \dots, v_k$ vektorrendszer **lineárisan független**, ha a belőlük képzett lineáris kombináció csak triviális módon adhatja a nullvektort:
> $$c_1v_1 + c_2v_2 + \dots + c_kv_k = 0 \iff c_1 = c_2 = \dots = c_k = 0.$$
> Ellenkező esetben a vektorrendszer **lineárisan függő**.

**Kapcsolat a lineáris egyenletrendszerekkel.** A $c_1v_1 + \dots + c_kv_k = b$ vektoregyenlet egy $Ac = b$ alakú lineáris egyenletrendszer, ahol $A$ oszlopai a $v_i$ vektorok, és $c = (c_1, \dots, c_k)^T$ a keresett skalárok. **A vektorok pontosan akkor lineárisan függetlenek, ha az $Ac = 0$ homogén rendszernek csak a triviális megoldása van.** Ebből és a 2.5. pont tételéből például következik, hogy $T^n$-ben $n$-nél több vektor mindig lineárisan függő (hiszen ekkor a homogén rendszerben kevesebb az egyenlet, mint az ismeretlen).

> **10.3 Tétel.** A $v_1, \dots, v_k$ ($k \ge 2$) vektorrendszer pontosan akkor lineárisan függő, ha legalább az egyik vektora kifejezhető a többi lineáris kombinációjaként.

*Bizonyítás.* Ha $v_j = c_1v_1 + \dots + c_{j-1}v_{j-1} + c_{j+1}v_{j+1} + \dots + c_kv_k$, akkor
$$c_1v_1 + \dots + c_{j-1}v_{j-1} + (-1)v_j + c_{j+1}v_{j+1} + \dots + c_kv_k = 0$$
nem triviális előállítása a nullvektornak ($v_j$ együtthatója $-1 \ne 0$). Fordítva, ha $c_1v_1 + \dots + c_kv_k = 0$ és valamelyik $c_j \ne 0$, akkor $c_j$-vel osztva $v_j$ kifejezhető a többi vektorral. $\blacksquare$

### A rang

> **10.4 Definíció (vektorrendszer rangja).** A $v_1, \dots, v_k$ vektorrendszer **rangja** ($\operatorname{rang}(v_1, \dots, v_k)$) a rendszerből kiválasztható lineárisan független vektorok maximális száma.

**A rang a Gauss-elimináció lépései során nem változik.** Ha a vektorokat egy mátrix soraiként írjuk fel, akkor a Gauss-elimináció lépései — egy vektorhoz egy másik skalárszorosának hozzáadása, egy vektor nem nulla számmal való szorzása, a vektorok sorrendjének cseréje — elemi sorműveletek, és ezek nem változtatják meg, hogy a sorok által „kifeszített” vektorok halmaza (a lineáris kombinációk összessége) mi; így a független vektorok maximális száma sem változik.

**Példa: egy négydimenziós vektorrendszer rangja.** Legyen
$$w_1 = (1, 0, 1, 0), \quad w_2 = (0, 1, 1, 1), \quad w_3 = (1, 1, 2, 1), \quad w_4 = (2, 1, 3, 1).$$
Írjuk a vektorokat egy mátrix soraiba, és végezzünk Gauss-eliminációt! Az első oszlop kinullázása ($S_3 \leftarrow S_3 - S_1$, $S_4 \leftarrow S_4 - 2S_1$), majd a második oszlopé ($S_3 \leftarrow S_3 - S_2$, $S_4 \leftarrow S_4 - S_2$):
$$\begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 1 & 1 \\ 1 & 1 & 2 & 1 \\ 2 & 1 & 3 & 1 \end{pmatrix} \to \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & 1 & 1 & 1 \\ 0 & 1 & 1 & 1 \end{pmatrix} \to \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 1 & 1 \\ 0 & 0 & 0 & 0 \\ 0 & 0 & 0 & 0 \end{pmatrix}.$$
A lépcsős alak két nem nulla sort tartalmaz, ezek nyilván függetlenek: **a vektorrendszer rangja $2$.** (Valóban: $w_3 = w_1 + w_2$ és $w_4 = 2w_1 + w_2$.)

A rang modern fogalmát, mint egy mátrix maximálisan lineárisan független sorainak (vagy oszlopainak) számát, Ferdinand Georg Frobenius vezette be 1879-ben, a lineáris egyenletrendszerek megoldásainak szerkezetét vizsgálva.

> **10.5 Definíció (mátrixrangok).** Legyen $A$ egy $m \times n$-es mátrix.
>
> - **Sorrang:** $\operatorname{rang}_{\text{sor}}(A)$ a sorvektorok rangja.
> - **Oszloprang:** $\operatorname{rang}_{\text{oszlop}}(A)$ az oszlopvektorok rangja.
> - **Determinánsrang:** $\operatorname{rang}_{\det}(A)$ a legnagyobb olyan $k$, amelyre $A$-nak van nem nulla $k \times k$-as aldeterminánsa (azaz $k$ sor és $k$ oszlop kiválasztásával kapott, nem nulla determinánsú négyzetes részmátrixa).

> **10.6 Tétel (rangtétel).** Minden mátrixra a sorrang, az oszloprang és a determinánsrang megegyezik. Ezt a közös értéket nevezzük a mátrix **rangjának**:
> $$\operatorname{rang}_{\text{sor}}(A) = \operatorname{rang}_{\text{oszlop}}(A) = \operatorname{rang}_{\det}(A) = \operatorname{rang}(A).$$

Például a fenti $4 \times 4$-es mátrix rangja $2$: a bal felső $\left|\begin{smallmatrix} 1 & 0 \\ 0 & 1 \end{smallmatrix}\right| = 1 \ne 0$, de minden $3 \times 3$-as aldetermináns $0$, és a négy oszlop közül is csak két független van.

### A lineáris egyenletrendszerek megoldhatósága

Tekintsük az $Ax = b$ egyenletrendszert, és jelölje $[A \mid b]$ a kibővített mátrixot.

> **10.7 Tétel (Kronecker–Capelli-tétel).** A lineáris egyenletrendszer pontosan akkor oldható meg, ha az együtthatómátrix rangja megegyezik a kibővített mátrix rangjával:
> $$\operatorname{rang}(A) = \operatorname{rang}([A \mid b]).$$
> A megoldások száma ($n$ ismeretlen esetén):
>
> 1. ha $\operatorname{rang}(A) \ne \operatorname{rang}([A \mid b])$, nincs megoldás;
> 2. ha $\operatorname{rang}(A) = \operatorname{rang}([A \mid b]) = r$, akkor
>    - $r = n$ esetén pontosan egy megoldás van;
>    - $r < n$ esetén végtelen sok megoldás van ($n - r$ szabad paraméterrel).

A tétel a Gauss-elimináció nyelvén: a tilos sor megjelenése azt jelenti, hogy a kibővített mátrix rangja eggyel nagyobb, mint az együtthatómátrixé ($b$ nem fejezhető ki $A$ oszlopaival); a szabad változók száma pedig $n - r$.

**Példa.** Az $x + 2y + 3z = 1$, $2x + 4y + 6z = 2$, $x + z = 0$ rendszerben $\operatorname{rang}(A) = 2$ (a második sor az első kétszerese), és a kibővített mátrix rangja is $2$. Tehát a rendszer megoldható, és $3 - 2 = 1$ szabad paraméter van: $x = -z$, $y = \frac{1}{2} - z$, $z$ tetszőleges. Ha viszont a második egyenlet jobb oldala $3$ volna, a kibővített mátrix rangja $3$ lenne, és nem volna megoldás.

### A rangtétel bizonyítása

**Az oszloprang nem változik sorműveletek során.** Rendezzük az oszlopvektorokat mátrixba; legyen ez $M$, oszlopai $v_1, \dots, v_k$. Ha például az első sorból kivonjuk a második $\alpha$-szorosát, az új oszlopvektorok
$$v_j' = \begin{pmatrix} a_{1j} - \alpha a_{2j} \\ a_{2j} \\ \vdots \\ a_{mj} \end{pmatrix} \qquad (j = 1, \dots, k).$$
Nyilvánvalóan
$$\lambda_1v_1 + \dots + \lambda_kv_k = 0 \iff \lambda_1v_1' + \dots + \lambda_kv_k' = 0,$$
hiszen az új rendszer első komponense a régi első és második komponensének kombinációja, a többi változatlan (és a lépés visszafordítható). Vagyis az oszlopvektorok közötti lineáris összefüggések nem változnak a sorműveletek során — ez az oszlopvektorok bármely részhalmazára is igaz —, így az oszloprang sem változik. (Sorcserére és sor nem nulla számmal való szorzására ugyanez nyilvánvaló.)

**Az oszloprang oszlopműveletek során sem változik.** Ha az oszlopvektorok helyett a $v_1 - \alpha v_2, v_2, \dots, v_k$ vektorokat vesszük, akkor ezek ugyanazokat a lineáris kombinációkat állítják elő, mint az eredetiek ($v_1 = (v_1 - \alpha v_2) + \alpha v_2$), így a maximális független részrendszer elemszáma ugyanaz.

**Ugyanez igaz a sorrangra** (az előző két állítás a transzponáltra alkalmazva) **és a determinánsrangra.**

::: kiegeszites
**Kiegészítés: a determinánsrang invarianciája.** Tegyük fel, hogy az $i$-edik sor $\lambda$-szorosát hozzáadjuk a $j$-edik sorhoz. Az új mátrix egy tetszőleges $k \times k$-as aldeterminánsa vagy (a) nem tartalmazza a $j$-edik sort — ekkor változatlan; vagy (b) a $j$-edik és az $i$-edik sort is tartalmazza — ekkor a 6. determinánstulajdonság szerint változatlan; vagy (c) a $j$-edik sort tartalmazza, de az $i$-ediket nem — ekkor a linearitás szerint egyenlő a régi aldetermináns és $\lambda$-szor egy olyan $k \times k$-as determináns összegével, amelyet a régi mátrix sorainak kiválasztásával kapunk (előjeltől eltekintve egy régi aldetermináns). Ha tehát a régi mátrix minden $k \times k$-as aldeterminánsa $0$ volt, akkor az újé is. Mivel a lépés visszafordítható (a $-\lambda$-szoros hozzáadásával), a determinánsrang nem változik. Sorcsere és nem nulla számmal való szorzás az aldeterminánsokat legfeljebb előjelben vagy nem nulla szorzóban változtatja meg; oszlopműveletekre pedig a transzponálással érvelhetünk.
:::

**Normálalak.** A Gauss-elimináció lépéseivel — sor- és oszlopműveleteket (sor- és oszlopcserét is) megengedve — minden mátrix a következő alakra hozható:
$$\begin{pmatrix} E_r & 0 \\ 0 & 0 \end{pmatrix},$$
ahol a bal felső sarokban egy $r \times r$-es egységmátrix áll, máshol csupa nulla. (A sorműveletekkel redukált lépcsős alakra hozunk — ahol a csupa nulla sorok alulra kerülnek, és a vezéregyesek oszlopaiban minden más elem nulla —, majd a vezéregyesek segítségével oszlopműveletekkel kinullázzuk a soraik többi elemét, végül oszlopcserékkel a vezéregyeseket az első $r$ oszlopba, a főátlóba rendezzük.) Ennek a mátrixnak a sorrangja, oszloprangja és determinánsrangja is nyilvánvalóan $r$ — a benne lévő egyesek száma. Mivel egyik rang sem változott a lépések során, az eredeti mátrix sor-, oszlop- és determinánsrangja is megegyezik. $\blacksquare$

## A III. rész összefoglalása

- **$2 \times 2$:** $ad - bc$; $|\det|$ = a két oszlopvektor által kifeszített paralelogramma területe. **$3 \times 3$:** Sarrus-szabály (csak itt!), kifejtés sor/oszlop szerint; $|\det|$ = paralelepipedon térfogata.
- **Permutációk:** $S_n$, $|S_n| = n!$; szorzás = kompozíció (jobbról balra); asszociatív, nem kommutatív. Ciklusfelbontás; csere = transzpozíció. **Előjel:** $\operatorname{sgn}\pi = (-1)^{I(\pi)}$, multiplikatív; csere: $-1$; $k$ hosszú ciklus: $(-1)^{k-1}$.
- **Determináns (Leibniz):** $\det A = \sum_{\pi \in S_n}\operatorname{sgn}(\pi)\prod_i a_{i,\pi(i)}$. Tulajdonságok: $\det A^T = \det A$; sorcsere $\Rightarrow$ előjelváltás; két azonos sor $\Rightarrow 0$; soronként lineáris; sor többszörösének hozzáadása nem változtat; háromszögmátrixé az átló szorzata; $\det(\lambda A) = \lambda^n\det A$.
- **Számolás:** Gauss-eliminációval háromszög alakra; vagy Laplace-kifejtéssel a sok nullát tartalmazó sor/oszlop szerint.
- **Szorzástétel:** $\det(AB) = \det A\det B$. **Inverz:** létezik $\iff \det A \ne 0$; $A^{-1} = \frac{1}{\det A}\operatorname{adj}A$ (ferde kifejtés!). **Cramer:** $x_i = \frac{\det A_i}{\det A}$. **Vandermonde:** $\prod_{i<j}(x_j - x_i)$.
- **Rang:** sorrang = oszloprang = determinánsrang (normálalak). **Kronecker–Capelli:** $Ax = b$ megoldható $\iff \operatorname{rang} A = \operatorname{rang}[A \mid b]$; a szabad paraméterek száma $n - \operatorname{rang} A$.

## Feladatok a III. részhez

1. Számítsuk ki: $\begin{vmatrix} 3 & -2 \\ 4 & 5 \end{vmatrix}$ és $\begin{vmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 10 \end{vmatrix}$.
2. Mekkora az $(1, 1)$, $(4, 2)$, $(2, 5)$ csúcsú háromszög területe?
3. Legyen $\alpha = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 2 & 4 & 1 & 5 & 3 \end{pmatrix}$ és $\sigma = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 3 & 1 & 2 & 5 & 4 \end{pmatrix}$. Számítsuk ki $\alpha\sigma$-t, írjuk fel mindhárom permutáció ciklusfelbontását, és ellenőrizzük a szorzástételt.
4. Hány inverziója van az $\begin{pmatrix} 1 & 2 & \dots & n \\ n & n-1 & \dots & 1 \end{pmatrix}$ permutációnak? Mikor páros?
5. Számítsuk ki Gauss-eliminációval: $\begin{vmatrix} 2 & 1 & 0 & 1 \\ 1 & 3 & 1 & 0 \\ 0 & 1 & 4 & 1 \\ 1 & 0 & 1 & 5 \end{vmatrix}$.
6. Számítsuk ki az $\begin{pmatrix} 2 & 1 \\ 5 & 3 \end{pmatrix}$ mátrix inverzét az adjungált segítségével.
7. Bizonyítsuk be, hogy egy egész elemű négyzetes mátrix inverze pontosan akkor egész elemű, ha a determinánsa $\pm 1$.
8. A $\lambda$ paraméter függvényében határozzuk meg az $\begin{pmatrix} 1 & 1 & 1 \\ 1 & \lambda & 1 \\ 1 & 1 & \lambda \end{pmatrix}$ mátrix rangját.
9. Számítsuk ki a $V(-1, 1, 2)$ Vandermonde-determinánst a definíció szerint és a képlettel is.
10. Legyen $A$ $n \times n$-es, $\det A = 3$. Mennyi $\det(2A)$, $\det(A^{-1})$, $\det(A^TA)$ és $\det(A^5)$?

### Megoldási útmutatók

1. $15 + 8 = 23$; Sarrus-szabállyal $(50 + 84 + 96) - (105 + 48 + 80) = 230 - 233 = -3$.
2. Két oldalvektor: $(3, 1)$ és $(1, 4)$; a paralelogramma területe $\left|\begin{smallmatrix} 3 & 1 \\ 1 & 4 \end{smallmatrix}\right| = 11$, a háromszögé ennek fele, $5{,}5$.
3. $\alpha\sigma = \begin{pmatrix} 1 & 2 & 3 & 4 & 5 \\ 1 & 2 & 4 & 3 & 5 \end{pmatrix} = (3\ 4)$. $\alpha = (1\ 2\ 4\ 5\ 3)$ (páros, $4$ inverzió), $\sigma = (1\ 3\ 2)(4\ 5)$ (páratlan, $3$ inverzió), $\alpha\sigma$ páratlan ($1$ inverzió): $(+1)(-1) = -1$. ✓
4. Minden pár inverzióban áll: $\binom{n}{2} = \frac{n(n-1)}{2}$. Páros, ha $n \equiv 0$ vagy $1 \pmod 4$.
5. Az eredmény $72$. (Például az első két sort felcserélve — előjelváltás! — és az első oszlopot kinullázva, majd továbbhaladva felső háromszög alakra jutunk.)
6. $\det = 1$, így az inverz $\begin{pmatrix} 3 & -1 \\ -5 & 2 \end{pmatrix}$.
7. Ha $A$ és $A^{-1}$ is egész elemű, akkor $\det A$ és $\det A^{-1}$ egész számok, szorzatuk $1$, tehát $\det A = \pm 1$. Fordítva, ha $\det A = \pm 1$, akkor $A^{-1} = \pm\operatorname{adj}A$, és az adjungált elemei egész elemű aldeterminánsok.
8. $\det = (\lambda - 1)^2$. Ha $\lambda \ne 1$, a rang $3$; ha $\lambda = 1$, minden sor $(1, 1, 1)$, a rang $1$.
9. $\begin{vmatrix} 1 & -1 & 1 \\ 1 & 1 & 1 \\ 1 & 2 & 4 \end{vmatrix} = 6$, és $(1 - (-1))(2 - (-1))(2 - 1) = 2 \cdot 3 \cdot 1 = 6$.
10. $2^n \cdot 3$; $\frac{1}{3}$; $9$; $243$.

---
