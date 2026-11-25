## 6. A Pascal-háromszög és a binomiális tétel

### A Pascal-háromszög

Írjuk a binomiális együtthatókat háromszög alakba úgy, hogy az $n$-edik sorba (a számozás $0$-tól indul) a $\binom{n}{0}, \binom{n}{1}, \dots, \binom{n}{n}$ számok kerüljenek:

$$\begin{array}{c} 1 \\ 1\quad 1 \\ 1\quad 2\quad 1 \\ 1\quad 3\quad 3\quad 1 \\ 1\quad 4\quad 6\quad 4\quad 1 \\ 1\quad 5\quad 10\quad 10\quad 5\quad 1 \\ 1\quad 6\quad 15\quad 20\quad 15\quad 6\quad 1 \end{array}$$

Ez a **Pascal-háromszög**. A 4. szakasz állításai itt szemmel láthatók: minden sor $1$-gyel kezdődik és végződik, a sorok szimmetrikusak, és — a Pascal-szabály szerint — minden belső szám a felette álló két szám összege. A háromszöget tehát fentről lefelé, összeadással is fel lehet építeni, faktoriálisok számolása nélkül.

### A binomiális tétel

> **Tétel (binomiális tétel).** Minden $x, y$ valós számra és $n \ge 0$ egészre
> $$(x+y)^n = \sum_{i=0}^{n} \binom{n}{i} x^{n-i} y^i = \binom{n}{0}x^n + \binom{n}{1}x^{n-1}y + \dots + \binom{n}{n}y^n.$$

*Bizonyítás.* Írjuk ki a hatványt szorzatként:
$$(x+y)^n = \underbrace{(x+y)(x+y)\cdots(x+y)}_{n \text{ tényező}}.$$
A zárójeleket felbontva úgy kapunk egy tagot, hogy **mindegyik** tényezőből kiválasztjuk vagy az $x$-et, vagy az $y$-t, és a kiválasztottakat összeszorozzuk. Ha $i$ tényezőből választottuk az $y$-t (és a maradék $n - i$-ből az $x$-et), akkor az $x^{n-i}y^i$ tagot kapjuk. Hányszor kapjuk ezt a tagot? Annyiszor, ahányféleképpen az $n$ tényezőből kiválasztható az az $i$, amelyből $y$-t veszünk — ez $\binom{n}{i}$. Az összevonás után tehát $x^{n-i}y^i$ együtthatója $\binom{n}{i}$. $\blacksquare$

Innen ered a „binomiális együttható” elnevezés: ezek az $(x + y)^n$ kéttagú (binom) kifejezés kifejtésének együtthatói. Például $(x+y)^4 = x^4 + 4x^3y + 6x^2y^2 + 4xy^3 + y^4$ — az együtthatók a Pascal-háromszög 4. sora.

### Következmények: a Pascal-háromszög sorainak összege

A binomiális tételbe konkrét számokat helyettesítve azonosságokat kapunk.

**Az $x = y = 1$ helyettesítés.**
$$\binom{n}{0} + \binom{n}{1} + \dots + \binom{n}{n} = \sum_{i=0}^{n} \binom{n}{i} = (1+1)^n = 2^n.$$
A Pascal-háromszög $n$-edik sorában álló számok összege tehát $2^n$.

::: kiegeszites
**Kiegészítés — kombinatorikus bizonyítás.** A számolás helyett érdemes meggondolni, mit számol meg a két oldal. A jobb oldal, $2^n$, az $[n]$ halmaz összes részhalmazának száma (2. szakasz). A bal oldal ugyanezeket a részhalmazokat számolja meg, csak **elemszám szerint csoportosítva** (esetszétválasztás): $\binom{n}{0}$ darab $0$ elemű, $\binom{n}{1}$ darab $1$ elemű, …, $\binom{n}{n}$ darab $n$ elemű részhalmaz van. A két szám tehát ugyanannak a halmaznak az elemszáma. $\blacksquare$

(A kézírásos jegyzetben szerepel egy kísérlet arra is, hogy az azonosságot a $\frac{n!}{k!\,(n-k)!}$ törtek közvetlen összeadásával igazoljuk. Ez nem vezet egyszerűen célhoz — jó példa arra, hogy a kombinatorikus érvelés sokszor sokkal rövidebb a számolásnál.)
:::

**Az $x = 1$, $y = -1$ helyettesítés.** Ha $n \ge 1$, akkor
$$\binom{n}{0} - \binom{n}{1} + \binom{n}{2} - \binom{n}{3} + \dots + (-1)^n\binom{n}{n} = (1 - 1)^n = 0.$$
A Pascal-háromszög sorainak **váltakozó előjelű összege** tehát $0$ (kivéve a $0$-adik sort, ahol az összeg $1$). Ezt az azonosságot a következő szakaszban, a logikai szita bizonyításában fogjuk használni.

Ha az azonosságban a negatív tagokat átvisszük a másik oldalra, azt kapjuk, hogy
$$\binom{n}{0} + \binom{n}{2} + \binom{n}{4} + \dots = \binom{n}{1} + \binom{n}{3} + \binom{n}{5} + \dots$$
A két oldal összege $2^n$, így mindkét oldal $2^{n-1}$. Kombinatorikusan:

> **Következmény.** Egy $n \ge 1$ elemű alaphalmaznak ugyanannyi páros elemszámú, mint páratlan elemszámú részhalmaza van, nevezetesen mindkettőből $2^{n-1}$.

::: kiegeszites
**Kiegészítés — bijektív bizonyítás.** A következmény számolás nélkül is belátható. Rögzítsük az alaphalmaz egy elemét, mondjuk az $1$-et, és minden $H$ részhalmazhoz rendeljük hozzá azt a $H'$ halmazt, amelyet úgy kapunk, hogy az $1$-et „átbillentjük”: ha $1 \in H$, kivesszük, ha $1 \notin H$, betesszük. Ez a megfeleltetés kétszer alkalmazva visszaadja $H$-t, tehát bijekció; és mivel $|H'| = |H| \pm 1$, a páros elemszámú részhalmazokat éppen a páratlan elemszámúakba viszi. A bijekció-elv szerint a kettő száma egyenlő. $\blacksquare$
:::

**Érdekesség: az $x = 1$, $y = i$ helyettesítés.** Az előadáson elhangzott, hogy érdemes az $(1 + i)^n$ komplex számot is megvizsgálni.

::: kiegeszites
**Kiegészítés — mit ad az $(1+i)^n$?** A binomiális tétel komplex számokra is igaz (a bizonyítás szó szerint ugyanaz). Mivel $i^2 = -1$, $i^3 = -i$, $i^4 = 1$, az
$$(1+i)^n = \sum_{k=0}^{n} \binom{n}{k} i^k$$
összegben a páros $k$-jú tagok valósak, váltakozó előjellel, a páratlanok képzetesek. A valós részeket összevetve
$$\binom{n}{0} - \binom{n}{2} + \binom{n}{4} - \binom{n}{6} + \dots = \operatorname{Re}\,(1+i)^n = 2^{n/2}\cos\frac{n\pi}{4},$$
hiszen $1 + i = \sqrt{2}\,\big(\cos\frac{\pi}{4} + i\sin\frac{\pi}{4}\big)$, és a Moivre-képlet szerint $(1+i)^n = 2^{n/2}\big(\cos\frac{n\pi}{4} + i \sin\frac{n\pi}{4}\big)$. Például $n = 4$ esetén $1 - 6 + 1 = -4 = (1+i)^4$, hiszen $(1+i)^2 = 2i$.

Ezzel a „minden negyedik” binomiális együttható összege is kiszámolható. Ha az $(1+1)^n$, $(1-1)^n$, $(1+i)^n$, $(1-i)^n$ kifejtéseket összeadjuk, akkor $\binom{n}{k}$ együtthatója $1 + (-1)^k + i^k + (-i)^k$, ami $4$, ha $4 \mid k$, és $0$ egyébként. Ezért $n \ge 1$ esetén
$$\binom{n}{0} + \binom{n}{4} + \binom{n}{8} + \dots = \frac{2^n + 0 + (1+i)^n + (1-i)^n}{4} = \frac{2^n + 2^{n/2+1}\cos\frac{n\pi}{4}}{4}.$$
Ellenőrzés $n = 4$-re: $\binom{4}{0} + \binom{4}{4} = 2$, és a jobb oldal $\frac{16 - 8}{4} = 2$.
:::

### Azonosságok a Pascal-háromszögben

A Pascal-szabály a háromszög **két egymás utáni sorát** kapcsolja össze. Most néhány további azonosságot nézünk meg, amelyekben **különböző sorokból** vett elemek szerepelnek. Mindegyiket kétféleképpen bizonyítjuk:

- **algebrai** úton: számolással, a Pascal-szabállyal, indukcióval vagy a binomiális tétellel;
- **kombinatorikus** úton: megmutatjuk, hogy a két oldal ugyanannak a halmaznak az elemszáma, csak más csoportosításban (kettős leszámlálás).

> **Állítás (hokiütő-azonosság).** Minden $0 \le k \le n$ esetén
> $$\binom{k}{k} + \binom{k+1}{k} + \binom{k+2}{k} + \dots + \binom{n}{k} = \binom{n+1}{k+1}.$$

A Pascal-háromszögben a bal oldal egy ferde sor (átló) mentén lefelé haladó számok összege, a jobb oldal pedig az utolsó tag alatt, a másik irányban álló szám: a kijelölt számok egy hokiütőre emlékeztetnek. Például $k = 2$, $n = 5$ esetén $1 + 3 + 6 + 10 = 20 = \binom{6}{3}$.

*Algebrai bizonyítás (indukció $n$ szerint).* $n = k$-ra mindkét oldal $1$. Ha az állítás igaz $n$-re, akkor a Pascal-szabály szerint
$$\sum_{i=k}^{n+1} \binom{i}{k} = \binom{n+1}{k+1} + \binom{n+1}{k} = \binom{n+2}{k+1}. \ \blacksquare$$

*Kombinatorikus bizonyítás.* A jobb oldal az $[n+1]$ halmaz $(k+1)$ elemű részhalmazainak száma. Csoportosítsuk ezeket a **legnagyobb elemük** szerint! Ha a legnagyobb elem $i + 1$ (ahol $k \le i \le n$), akkor a többi $k$ elemet az $[i]$ halmazból kell választani: ez $\binom{i}{k}$ lehetőség. Az esetszétválasztás elve szerint az összeg éppen a bal oldal. $\blacksquare$

> **Állítás (Vandermonde-azonosság).** Minden $m, n, k \ge 0$ esetén
> $$\sum_{i=0}^{k} \binom{m}{i}\binom{n}{k-i} = \binom{m+n}{k}.$$
> Speciálisan ($m = n = k$ esetén, a szimmetriát is felhasználva):
> $$\binom{n}{0}^2 + \binom{n}{1}^2 + \dots + \binom{n}{n}^2 = \binom{2n}{n}.$$

*Kombinatorikus bizonyítás.* Egy osztályba $m$ fiú és $n$ lány jár; hányféleképpen választhatunk ki közülük egy $k$ fős küldöttséget? Közvetlenül $\binom{m+n}{k}$-féleképpen. Csoportosítsuk a küldöttségeket aszerint, hogy hány fiú van bennük: ha $i$ fiú van, akkor őket $\binom{m}{i}$-, a $k - i$ lányt $\binom{n}{k-i}$-féleképpen választhatjuk ki. Összegezve a bal oldalt kapjuk. A speciális esetben $\binom{n}{n-i} = \binom{n}{i}$ miatt a tagok négyzetek. $\blacksquare$

*Algebrai bizonyítás.* Az $(1+x)^{m+n} = (1+x)^m(1+x)^n$ polinomazonosságban hasonlítsuk össze az $x^k$ együtthatóját. A bal oldalon ez a binomiális tétel szerint $\binom{m+n}{k}$. A jobb oldalon az $x^k$ tagot úgy kapjuk, hogy az első tényező $x^i$-es tagját ($\binom{m}{i}x^i$) a második tényező $x^{k-i}$-es tagjával ($\binom{n}{k-i}x^{k-i}$) szorozzuk, és ezt minden $i$-re összeadjuk. $\blacksquare$

> **Állítás.** Minden $n \ge 1$ esetén
> $$1\cdot\binom{n}{1} + 2\cdot\binom{n}{2} + \dots + n\cdot\binom{n}{n} = n\cdot 2^{n-1}.$$

*Kombinatorikus bizonyítás.* Egy $n$ fős társaságból válasszunk ki egy tetszőleges (nemüres) bizottságot, és annak egy elnököt. Ha előbb a bizottságot választjuk ($i$ fős: $\binom{n}{i}$ lehetőség), majd az elnököt ($i$ lehetőség), a bal oldalt kapjuk. Ha előbb az elnököt választjuk ($n$ lehetőség), majd a többi $n - 1$ emberről egyenként eldöntjük, bekerül-e a bizottságba ($2^{n-1}$ lehetőség), a jobb oldalt. $\blacksquare$

*Algebrai bizonyítás.* $i\binom{n}{i} = i\cdot\frac{n!}{i!\,(n-i)!} = n\cdot\frac{(n-1)!}{(i-1)!\,(n-i)!} = n\binom{n-1}{i-1}$, így az összeg $n\sum_{i=1}^{n}\binom{n-1}{i-1} = n \cdot 2^{n-1}$, a Pascal-háromszög $(n-1)$-edik sorának összege szerint. $\blacksquare$

Érdemes megfigyelni, hogy a kombinatorikus bizonyítások mindig ugyanazt a receptet követik: **keresünk egy halmazt, amelyet a jobb oldal megszámol, és megmutatjuk, hogy a bal oldal ugyanezt a halmazt számolja, csak darabokra bontva.**

## 7. A logikai szita

### Egy bevezető példa

Egy $80$ fős évfolyamon a diákok angolul (A), németül (N) és franciául (F) tanulhatnak. Tudjuk, hogy

- angolul $25$, németül $24$, franciául $23$ diák tanul;
- angolul és németül $10$, angolul és franciául $9$, németül és franciául $7$ diák tanul;
- mindhárom nyelvet $1$ diák tanulja.

**Hányan nem tanulnak egyik nyelvet sem?**

Az első ötlet: $80 - 25 - 24 - 23 = 8$. Ez azonban hibás, mert aki két nyelvet tanul, azt kétszer vontuk le. Adjuk tehát vissza a párokat: $8 + 10 + 9 + 7 = 34$. De most meg az, aki mindhárom nyelvet tanulja, háromszor lett levonva és háromszor visszaadva, vagyis egyszer sem vontuk le — pedig le kellene. Vonjuk le tehát még egyszer:
$$80 - (25 + 24 + 23) + (10 + 9 + 7) - 1 = 33.$$

Ellenőrizzük egy Venn-diagrammal! Belülről kifelé haladva: mindhárom nyelvet $1$ diák tanulja; csak angolul és németül $10 - 1 = 9$, csak angolul és franciául $9 - 1 = 8$, csak németül és franciául $7 - 1 = 6$; csak angolul $25 - 9 - 8 - 1 = 7$, csak németül $24 - 9 - 6 - 1 = 8$, csak franciául $23 - 8 - 6 - 1 = 8$. Legalább egy nyelvet tehát $1 + 9 + 8 + 6 + 7 + 8 + 8 = 47$ diák tanul, egyiket sem $80 - 47 = 33$. Egyezik.

Az eljárás neve **logikai szita** (vagy szitaformula, angolul *inclusion–exclusion*): felváltva vonunk le és adunk hozzá, mintha egy szitán rostálnánk át a halmazt.

### Az általános szitaformula

Legyen $A$ egy véges **alaphalmaz**, és $A_1, A_2, \dots, A_n \subseteq A$ részhalmazai. (A példában $A$ az évfolyam, $A_1, A_2, A_3$ az angolul, németül, illetve franciául tanulók halmaza.) Tegyük fel, hogy ismerjük az $|A|$, $|A_i|$, $|A_i \cap A_j|$, $|A_i \cap A_j \cap A_k|$, … számokat, és azt szeretnénk tudni, hány elem nem tartozik egyik $A_i$-hez sem, vagyis mennyi
$$\big|A \setminus (A_1 \cup A_2 \cup \dots \cup A_n)\big|.$$

> **Tétel (logikai szita).**
> $$\Big|A \setminus \bigcup_{i=1}^{n} A_i\Big| = |A| - \sum_{i} |A_i| + \sum_{i < j} |A_i \cap A_j| - \sum_{i<j<k} |A_i \cap A_j \cap A_k| + \dots + (-1)^n |A_1 \cap A_2 \cap \dots \cap A_n|.$$
> Itt a $\sum_{i<j}$ összeg az összes $\binom{n}{2}$ párra, a $\sum_{i<j<k}$ az összes $\binom{n}{3}$ hármasra fut, és így tovább.

Tömörebben: ha $I \subseteq [n]$ esetén $A_I = \bigcap_{i \in I} A_i$ és $A_\emptyset = A$, akkor
$$\Big|A \setminus \bigcup_{i=1}^{n} A_i\Big| = \sum_{I \subseteq [n]} (-1)^{|I|}\, |A_I|.$$

*Bizonyítás.* A jobb oldal egy összeg, amelyben minden $x \in A$ elemet néhányszor pozitív, néhányszor negatív előjellel számolunk. Azt kell megmutatnunk, hogy minden elemet pontosan annyiszor számolunk, ahányszor kell — az előadás szavaival: **mindenkit „pontosan egyszer”**. Vagyis aki egyik $A_i$-ben sincs benne, azt összesen $1$-szer, aki valamelyikben benne van, azt összesen $0$-szor.

Legyen $x \in A$ tetszőleges, és tegyük fel, hogy $x$ pontosan $t$ darab $A_i$ halmaznak eleme.

- Ha $t = 0$, akkor $x$ csak az $|A|$ tagban szerepel, ott $+1$-gyel. Összesen tehát egyszer számoltuk — helyes.
- Ha $t \ge 1$, akkor $x$ szerepel az $|A|$ tagban ($+1$-szer); a $\sum |A_i|$ összegben annyiszor, ahány halmaznak eleme, vagyis $t = \binom{t}{1}$-szer, negatív előjellel; a $\sum |A_i \cap A_j|$ összegben annyiszor, ahány párnak a metszetében benne van — ez a $t$ halmaz közül választott párok száma, $\binom{t}{2}$ —, pozitív előjellel; és így tovább. Az $x$ elemet tehát összesen
$$\binom{t}{0} - \binom{t}{1} + \binom{t}{2} - \binom{t}{3} + \dots + (-1)^t\binom{t}{t}$$
alkalommal számoltuk, ami a 6. szakasz szerint — a Pascal-háromszög $t$-edik sorának váltakozó előjelű összegeként — $0$, mert $t > 0$. Helyes.

Mivel minden elemet pontosan annyiszor számoltunk, ahányszor kell, az összeg valóban a keresett elemszámot adja. $\blacksquare$

**Megjegyzés.** A tétel ekvivalens a gyakran használt
$$|A_1 \cup \dots \cup A_n| = \sum_i |A_i| - \sum_{i<j} |A_i \cap A_j| + \dots + (-1)^{n+1}|A_1 \cap \dots \cap A_n|$$
alakkal: ez a fenti képletből $|A \setminus \bigcup A_i| = |A| - |\bigcup A_i|$ felhasználásával adódik. Két halmazra ez az ismert $|A_1 \cup A_2| = |A_1| + |A_2| - |A_1 \cap A_2|$ képlet.

## 8. A logikai szita alkalmazásai

A szitaformulát akkor érdemes használni, ha a „rossz” tulajdonságok **metszeteit** könnyű megszámolni, a „jó” elemeket közvetlenül viszont nehéz. Három alkalmazást nézünk meg.

### Első alkalmazás: egy azonosság $n!$-ra

> **Állítás.** Minden $n \ge 1$ esetén
> $$n! = n^n - \binom{n}{1}(n-1)^n + \binom{n}{2}(n-2)^n - \dots + (-1)^n\binom{n}{n}\,0^n = \sum_{j=0}^{n} (-1)^j \binom{n}{j}(n-j)^n.$$

Elsőre meglepő, hogy egy ilyen bonyolult összeg egyszerűen $n!$. Ellenőrizzük kis esetekre: $n = 2$-re $4 - 2 \cdot 1 + 0 = 2$, $n = 3$-ra $27 - 3 \cdot 8 + 3 \cdot 1 - 0 = 6$. A bizonyítás kulcsa, hogy mindkét oldal **ugyanazt** számolja meg.

*Bizonyítás.* Osszunk ki $n$ különböző tárgyat $n$ embernek (minden tárgyat valakinek odaadunk, egy ember több tárgyat is kaphat). Számoljuk meg, hány olyan kiosztás van, amelyben **mindenki kap valamit**.

- *Közvetlenül:* ha $n$ tárgyat $n$ ember között úgy osztunk ki, hogy mindenki kap, akkor mindenki pontosan egyet kap. Ez egy sorba rendezés: $n!$ lehetőség.
- *Szitával:* legyen $A$ az összes kiosztás halmaza; minden tárgy $n$ ember valamelyikéhez kerül, így $|A| = n^n$. Legyen $A_i$ azoknak a kiosztásoknak a halmaza, amelyekben az $i$-edik ember **nem kap semmit**. Ha $I$ egy $j$ elemű embercsoport, akkor $A_I$-ben az $I$-beli emberek semmit sem kapnak, a tárgyak tehát a maradék $n - j$ ember között oszlanak meg: $|A_I| = (n-j)^n$. Mivel $j$ elemű csoport $\binom{n}{j}$ van, a szitaformula szerint a jó kiosztások száma
$$\sum_{j=0}^{n} (-1)^j \binom{n}{j}(n-j)^n.$$

Ugyanazt a mennyiséget kétféleképpen számoltuk meg, így a két eredmény egyenlő. $\blacksquare$

**Megjegyzés.** Ugyanez a számolás $k$ tárgyra azt adja, hogy $k$ különböző tárgyat $n$ embernek úgy, hogy mindenki kapjon, $\sum_{j=0}^{n} (-1)^j \binom{n}{j}(n-j)^k$-féleképpen lehet kiosztani (ennyi $[k] \to [n]$ szürjektív függvény van). Ha $k < n$, ez $0$ — ami szintén egy nem nyilvánvaló azonosság.

### Második alkalmazás: fixpontmentes permutációk

> **A ruhatár-probléma.** Egy színházi előadás után a ruhatáros $n$ kabátot teljesen véletlenszerűen ad vissza $n$ embernek. Hányféleképpen történhet ez úgy, hogy **senki se** a saját kabátját kapja vissza?

Matematikailag: az $[n]$ halmaz $\pi$ permutációit (önmagára vett bijekcióit) vizsgáljuk. Az $i$ pont **fixpontja** $\pi$-nek, ha $\pi(i) = i$ (az $i$-edik ember a saját kabátját kapta). A kérdés: hány **fixpontmentes** permutáció van? Jelöljük ezt $D_n$-nel.

*Megoldás szitával.* Legyen $A$ az összes permutáció halmaza, $|A| = n!$. Legyen $A_i$ azoknak a permutációknak a halmaza, amelyekben $i$ fixpont.

- $|A_i| = (n-1)!$: az $i$ helyben marad, a többi $n - 1$ elem tetszőlegesen permutálható.
- $|A_i \cap A_j| = (n-2)!$: $i$ és $j$ is helyben marad.
- $|A_i \cap A_j \cap A_k| = (n-3)!$, és általában egy $j$ elemű $I$ halmazra $|A_I| = (n-j)!$.

A szitaformula szerint
$$D_n = n! - \binom{n}{1}(n-1)! + \binom{n}{2}(n-2)! - \dots + (-1)^n\binom{n}{n}0!.$$
Mivel $\binom{n}{j}(n-j)! = \frac{n!}{j!\,(n-j)!}(n-j)! = \frac{n!}{j!}$, ez egyszerűbb alakra hozható:

> **Tétel.** Az $[n]$ halmaz fixpontmentes permutációinak száma
> $$D_n = n!\left(\frac{1}{0!} - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \dots + \frac{(-1)^n}{n!}\right) = n!\sum_{j=0}^{n}\frac{(-1)^j}{j!}.$$

Az első néhány érték: $D_1 = 0$, $D_2 = 1$, $D_3 = 2$, $D_4 = 9$, $D_5 = 44$. (Például $D_3 = 2$: a $231$ és a $312$ permutáció.)

**Mit mond ez a valószínűségről?** Annak a valószínűsége, hogy véletlen kabátkiosztásnál senki sem kapja a sajátját, $\frac{D_n}{n!}$ — ez éppen a zárójelben álló összeg. Az előadáson elhangzott, hogy ez $n \to \infty$ esetén $\frac{1}{e} \approx 0{,}3679$-hez tart. Meglepő módon tehát a valószínűség gyakorlatilag nem függ attól, hogy $5$ vagy $500$ ember van a ruhatárban.

::: kiegeszites
**Kiegészítés — miért $\frac{1}{e}$?** Az analízisből ismert, hogy az exponenciális függvény hatványsora minden valós $x$-re konvergens, és $e^x = \sum_{j=0}^{\infty} \frac{x^j}{j!}$; speciálisan
$$\frac{1}{e} = e^{-1} = \sum_{j=0}^{\infty} \frac{(-1)^j}{j!}.$$
A $\frac{D_n}{n!}$ szám ennek a sornak az első $n + 1$ tagjából álló részletösszege, tehát valóban $\frac{1}{e}$-hez tart.

Ennél több is igaz: **$D_n$ az $\frac{n!}{e}$ számhoz legközelebbi egész** ($n \ge 1$). Valóban,
$$\frac{n!}{e} - D_n = n!\sum_{j=n+1}^{\infty} \frac{(-1)^j}{j!} = (-1)^{n+1}\left(\frac{1}{n+1} - \frac{1}{(n+1)(n+2)} + \frac{1}{(n+1)(n+2)(n+3)} - \dots\right).$$
A zárójelben egy váltakozó előjelű sor áll, amelynek tagjai abszolút értékben szigorúan csökkenően tartanak $0$-hoz. Az ilyen sor összege (a Leibniz-típusú sorokról tanultak szerint) az első tag és $0$ közé esik, így
$$\left|\frac{n!}{e} - D_n\right| < \frac{1}{n+1} \le \frac{1}{2}.$$
Például $\frac{5!}{e} \approx 44{,}146$, és valóban $D_5 = 44$.
:::

### Harmadik alkalmazás: az Euler-féle $\varphi$ függvény

> **Definíció.** Egy $n \ge 1$ egészre $\varphi(n)$ az $[n] = \{1, \dots, n\}$ halmaz azon elemeinek száma, amelyek **relatív prímek** $n$-hez (vagyis $n$-nel vett legnagyobb közös osztójuk $1$).

Például $\varphi(10) = |\{1, 3, 7, 9\}| = 4$, és $\varphi(p) = p - 1$ minden $p$ prímre. (Az előadáson $f(n)$-nel jelöltük; a $\varphi$ jelölés a számelméletben szokásos.)

**Hogyan számolható ki $\varphi(n)$ általában?** Legyen $n > 1$ prímtényezős felbontása
$$n = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_k^{\alpha_k},$$
ahol $p_1, \dots, p_k$ különböző prímek. Egy $m \in [n]$ szám pontosan akkor **nem** relatív prím $n$-hez, ha van közös prímosztójuk, vagyis ha valamelyik $p_i$ osztja $m$-et. Ez tipikus szitahelyzet:

- az alaphalmaz $A = [n]$, $|A| = n$;
- $A_i$ a $p_i$-vel osztható elemek halmaza, $|A_i| = \frac{n}{p_i}$;
- $A_i \cap A_j$ a $p_i p_j$-vel osztható elemek halmaza, $|A_i \cap A_j| = \frac{n}{p_i p_j}$; és így tovább.

A szitaformula szerint
$$\varphi(n) = n - \frac{n}{p_1} - \frac{n}{p_2} - \dots - \frac{n}{p_k} + \frac{n}{p_1p_2} + \frac{n}{p_1p_3} + \dots + \frac{n}{p_{k-1}p_k} - \frac{n}{p_1p_2p_3} - \dots$$
és ez a kifejezés szorzattá alakítható:

> **Tétel.** Ha $n > 1$ különböző prímosztói $p_1, \dots, p_k$, akkor
> $$\varphi(n) = n\left(1 - \frac{1}{p_1}\right)\left(1 - \frac{1}{p_2}\right)\cdots\left(1 - \frac{1}{p_k}\right).$$

Például $\varphi(10) = 10 \cdot \frac{1}{2} \cdot \frac{4}{5} = 4$ és $\varphi(12) = 12 \cdot \frac{1}{2} \cdot \frac{2}{3} = 4$ (valóban: $1, 5, 7, 11$).

::: kiegeszites
**Kiegészítés — a két hiányzó lépés.**

*1. A metszetek elemszáma.* Legyen $I \subseteq [k]$ nemüres, és $d = \prod_{i \in I} p_i$. Egy $m$ szám pontosan akkor osztható minden $p_i$-vel ($i \in I$), ha osztható $d$-vel: az egyik irány nyilvánvaló, a másik a prímfelbontás egyértelműségéből következik, hiszen a $p_i$-k különböző prímek, így mind szerepelnek $m$ prímfelbontásában. Tehát $A_I$ a $d$ többszöröseinek halmaza $[n]$-ben. Mivel $d \mid n$, ezek a $d, 2d, \dots, \frac{n}{d}\cdot d$ számok, vagyis $|A_I| = \frac{n}{d}$.

*2. A szorzattá alakítás.* Bontsuk fel a zárójeleket az
$$n\prod_{i=1}^{k}\left(1 - \frac{1}{p_i}\right)$$
szorzatban! Mint a binomiális tétel bizonyításában, egy tagot úgy kapunk, hogy minden tényezőből vagy az $1$-et, vagy a $-\frac{1}{p_i}$-t választjuk. Ha a második lehetőséget éppen az $I \subseteq [k]$ indexekre választjuk, akkor a kapott tag
$$n \prod_{i \in I}\left(-\frac{1}{p_i}\right) = (-1)^{|I|}\,\frac{n}{\prod_{i\in I} p_i}.$$
Minden $I$ pontosan egyszer fordul elő, így a kifejtés $\sum_{I \subseteq [k]} (-1)^{|I|}\frac{n}{\prod_{i \in I}p_i}$, ami éppen a szitaformula jobb oldala. $\blacksquare$
:::

A következő részben két új témát kezdünk el: a **keresési feladatokat** és a **Fibonacci-számokat**.

## Az I. rész összefoglalása

- **Bizonyítási módszerek:** $A \Rightarrow B$ esetén $B$ szükséges feltétele $A$-nak, $A$ elégséges feltétele $B$-nek; „pontosan akkor” ($\iff$) állításnál két irányt kell bizonyítani. **Indirekt bizonyítás:** a tagadásból ellentmondásra jutunk. **Teljes indukció:** kezdő lépés és indukciós lépés (erős indukcióban az összes kisebb esetet feltételezhetjük).
- A leszámlálás négy alapelve: **esetszétválasztás** (+), **a rossz esetek kidobása** (−), **független választás** (×) és a **tehénszabály** (/). Ezekhez jön a **skatulyaelv** (létezés: $n$ skatulyába $kn$-nél több golyó esetén valahol legalább $k+1$ golyó van) és a **bijekció-elv** (két halmaz azonos elemszámú, ha kölcsönösen egyértelműen megfeleltethetők).
- Képletek: $n!$, $\frac{(n_1 + \dots + n_k)!}{n_1! \cdots n_k!}$, $\frac{n!}{(n-k)!}$, $n^k$, $\binom{n}{k}$, $\binom{n+k-1}{k}$. **Pénzosztás:** $k$ egyforma tárgy $n$ ember között $\binom{n+k-1}{n-1}$-féleképpen, ha mindenki kap legalább egyet, $\binom{k-1}{n-1}$-féleképpen osztható szét.
- A binomiális együtthatók tulajdonságai: szimmetria, Pascal-szabály, $\sum_i \binom{n}{i} = 2^n$, a váltakozó összeg $0$ ($n \ge 1$). Binomiális tétel: $(x+y)^n = \sum_i \binom{n}{i}x^{n-i}y^i$. Különböző sorokat összekötő azonosságok: hokiütő $\sum_{i=k}^{n}\binom{i}{k} = \binom{n+1}{k+1}$, Vandermonde $\sum_i \binom{m}{i}\binom{n}{k-i} = \binom{m+n}{k}$, $\sum_i \binom{n}{i}^2 = \binom{2n}{n}$, valamint $\sum_i i\binom{n}{i} = n2^{n-1}$ — algebrai és kombinatorikus (kettős leszámlálásos) bizonyítással.
- **Logikai szita:** $\big|A \setminus \bigcup A_i\big| = \sum_{I}(-1)^{|I|}|A_I|$. Bizonyítás: mindenkit pontosan egyszer számolunk.
- Alkalmazások: $n! = \sum_j (-1)^j\binom{n}{j}(n-j)^n$; a fixpontmentes permutációk száma $D_n = n!\sum_{j=0}^{n}\frac{(-1)^j}{j!} \approx \frac{n!}{e}$; $\varphi(n) = n\prod_{p \mid n}\left(1 - \frac{1}{p}\right)$.

---
