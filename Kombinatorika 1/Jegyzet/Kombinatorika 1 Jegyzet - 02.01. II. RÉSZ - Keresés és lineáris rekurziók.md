# II. RÉSZ: KERESÉS, REKURZIÓK ÉS CATALAN-SZÁMOK

Ebben a részben két új gondolat jelenik meg. Az egyik a **keresés**: hány kérdés kell ahhoz, hogy egy ismeretlen elemet megtaláljunk? A másik a **rekurzió**: egy sorozat tagjait az előző tagokból fejezzük ki, és ebből próbálunk explicit képletet nyerni. A rész végén a Catalan-számok mindkét eddigi eszköztárat — a bijekció-elvet és a rekurziót — egyszerre használják.

## 9. Keresési feladatok: a barkochba

A **barkochba** ismert társasjáték: az egyik játékos gondol valamire, a másik eldöntendő (igen/nem) kérdésekkel próbálja kitalálni. (A játék nevét Bar Kochbáról, a Római Birodalom elleni 132–135-ös zsidó felkelés vezetőjéről kapta.) A matematikai változat a **keresési elmélet** egyik alapfeladata.

> **Feladat.** Valaki gondol egy $x \in \{1, 2, \dots, n\}$ számra. Igen/nem kérdéseket tehetünk fel. Legalább hány kérdés kell ahhoz, hogy **a legrosszabb esetben is** biztosan kitaláljuk $x$-et?

Minden kérdés egyenértékű azzal, hogy „$x \in S$?” valamely $S \subseteq [n]$ halmazra: az $S$ azoknak a számoknak a halmaza, amelyekre a válasz „igen” volna. A kérdés tehát úgy is fogalmazható: hány részhalmazra rákérdezve tudjuk biztosan azonosítani $x$-et?

### Egy példa: $n = 100$

Kérdezzünk mindig úgy, hogy a még szóba jövő számok **felét** (amennyire lehet) fedje le a kérdés. Ekkor a szóba jövő számok száma a válaszoktól függetlenül legfeljebb
$$100 \to 50 \to 25 \to 13 \to 7 \to 4 \to 2 \to 1,$$
vagyis $7$ kérdés elég. Kevesebb nem elég, mert $6$ kérdésre legfeljebb $2^6 = 64$-féle válaszsorozat érkezhet, ez pedig nem tud $100$ különböző számot megkülönböztetni. A kettes hatványok:
$$2^1 = 2,\ 2^2 = 4,\ 2^3 = 8,\ 2^4 = 16,\ 2^5 = 32,\ 2^6 = 64,\ 2^7 = 128,$$
és $\log_2 100 \approx 6{,}64$, tehát a válasz $\lceil \log_2 100 \rceil = 7$.

### Kell is ennyi kérdés

> **Tétel.** Az $\{1, \dots, n\}$ halmazból egy elem kitalálásához a legrosszabb esetben legalább $\lceil \log_2 n \rceil$ kérdés kell — akkor is, ha a kérdéseket a korábbi válaszok ismeretében tehetjük fel.

*Bizonyítás (az ördög ellen játszunk).* Képzeljük el, hogy a gondoló játékos egy rosszindulatú **ördög**, aki nem dönti el előre, melyik számra gondol, hanem menet közben válaszol, mindig úgy, hogy a lehető legjobban megnehezítse a dolgunkat. Csalni azonban nem csalhat (vagy ha csal, és rajtakapjuk, veszít): **mindig lennie kell legalább egy olyan számnak, amellyel az eddigi összes válasza összhangban van.** Ha egy ilyen ördög ellen is kitaláljuk a számot $q$ kérdéssel, akkor bármely „becsületes” gondolóval szemben is.

Jelölje $C_j$ azoknak a számoknak a halmazát, amelyek a $j$-edik válasz után még szóba jönnek (amelyekkel az első $j$ válasz összhangban van); $C_0 = [n]$. A következő kérdés a $C_j$ halmazt két részre vágja: azokra, amelyekre a válasz „igen” volna, és azokra, amelyekre „nem”. Az ördög **stratégiája**: mindig úgy válaszol, hogy a még szóba jövő elemek száma a lehető legnagyobb maradjon, vagyis a nagyobbik részt választja. Ezért
$$|C_{j+1}| \ge \frac{|C_j|}{2}, \quad \text{tehát} \quad |C_1| \ge \frac{n}{2},\ |C_2| \ge \frac{n}{4},\ \dots,\ |C_j| \ge \frac{n}{2^j}.$$

Tegyük fel, hogy $q$ kérdés után biztosan tudjuk a választ. Ekkor $|C_q| = 1$, különben két, a válaszokkal egyaránt összhangban levő szám közül nem tudnánk dönteni (és az ördög mindig a másikat mondaná). Így
$$1 = |C_q| \ge \frac{n}{2^q} \implies 2^q \ge n \implies q \ge \log_2 n,$$
és mivel $q$ egész, $q \ge \lceil \log_2 n \rceil$. $\blacksquare$

### Mi van, ha előre le kell írni az összes kérdést?

A felezgetésnél minden kérdés függ a korábbi válaszoktól: a második kérdés attól függ, hogy a gondolt szám az első kérdésben szereplő felbe esett-e. Mi a helyzet, ha az összes kérdést **előre le kell írnunk**, és csak utána kapjuk meg a válaszokat? Meglepő módon ugyanennyi kérdés ekkor is elég — és ez egyúttal általános $n$-re is igazolja a felső becslést.

> **Állítás.** $\lceil \log_2 n \rceil$ kérdés elég, akkor is, ha az összes kérdést előre le kell írnunk.

*Bizonyítás.* Gondolatban csökkentsük a gondolt számot $1$-gyel, így az $A = \{0, 1, \dots, n-1\}$ halmazból kell kitalálnunk egy elemet. Legyen $m = \lceil \log_2 n \rceil$; ekkor $n \le 2^m$, tehát $A$ minden eleme kisebb $2^m$-nél, így felírható a **kettes számrendszerben** $m$ jeggyel (szükség esetén vezető nullákkal kiegészítve). A kérdések:

1. „Az első (legmagasabb helyiértékű) jegye $1$-es?”
2. „A második jegye $1$-es?”
3. …és így tovább az $m$-edik jegyig.

Az $m$ válasz együtt megadja a gondolt szám összes bináris jegyét, vagyis magát a számot. $\blacksquare$

A két eredményt összevetve: **a barkochbában $\lceil \log_2 n \rceil$ kérdés kell és elég**, és ehhez nem is kell alkalmazkodnunk a válaszokhoz.

**Megjegyzés (információelmélet).** Az alsó becslés így is elmondható: $q$ igen/nem válasz összesen legfeljebb $2^q$-féle válaszsorozatot ad. Ha egy kérdezési stratégiát **bináris fával** ábrázolunk — minden csúcsban egy kérdés áll, és a válasz szerint balra vagy jobbra lépünk —, akkor egy $q$ mélységű fának legfeljebb $2^q$ levele van, minden levélhez pedig legfeljebb egy szám tartozhat. Ehhez $2^q \ge n$ kell. Ez az információelmélet alapgondolata: $n$ lehetőség közül egy kiválasztásához $\log_2 n$ bit információ szükséges.

## 10. A Fibonacci-sorozat

> **Definíció (Fibonacci-számok).** Legyen $F_1 = 1$, $F_2 = 1$, és $n \ge 3$ esetén
> $$F_n = F_{n-1} + F_{n-2}. \qquad (*)$$

Az első néhány tag:

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $F_n$ | 1 | 1 | 2 | 3 | 5 | 8 | 13 | 21 | 34 | 55 |

A $(*)$ egyenlőség egy **másodrendű rekurzió**: minden tagot az előző **kettőből** állít elő. Fontos látni, hogy a rekurzió (a „képzési szabály”) önmagában **nem határozza meg** a sorozatot: a $2, 5, 7, 12, 19, \dots$ sorozat is kielégíti. A sorozat egyértelmű megadásához **kezdeti feltétel** is kell — itt $F_1 = F_2 = 1$. Kényelmes a sorozatot visszafelé is kiterjeszteni: a $(*)$ szabály szerint $F_2 = F_1 + F_0$, ezért legyen $F_0 = 0$.

Mivel a sorozatot rekurzió definiálja, a tulajdonságait természetes módon **teljes indukcióval** (2. szakasz) bizonyíthatjuk.

### A Fibonacci-számok összege

> **Feladat.** Mennyi $F_1 + F_2 + \dots + F_k$?

Az első ötlet az lehetne, hogy a tagokat a rekurzió segítségével visszabontjuk $F_1$-re és $F_2$-re, és megszámoljuk, melyik hányszor szerepel. Ez azonban gyorsan áttekinthetetlenné válik. Számoljunk inkább néhány esetet!

| $k$ | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| $F_1 + \dots + F_k$ | 1 | 2 | 4 | 7 | 12 | 20 | 33 |
| $F_{k+2}$ | 2 | 3 | 5 | 8 | 13 | 21 | 34 |

A minta szembeötlő.

> **Állítás.** Minden $k \ge 1$ esetén $\displaystyle\sum_{i=1}^{k} F_i = F_{k+2} - 1$.

*Bizonyítás (teljes indukció $k$ szerint).* $k = 1$-re: $F_1 = 1 = 2 - 1 = F_3 - 1$. Tegyük fel, hogy az állítás igaz $k$-ra, és bizonyítsuk $k + 1$-re:
$$F_1 + \dots + F_k + F_{k+1} = (F_{k+2} - 1) + F_{k+1} = (F_{k+1} + F_{k+2}) - 1 = F_{k+3} - 1,$$
ahol az utolsó lépésben a $(*)$ rekurziót használtuk. $\blacksquare$

Figyeljük meg a módszert: **sejtés kis esetekből, majd bizonyítás indukcióval**. Ez a rekurzív sorozatoknál újra és újra bevált stratégia.

### További azonosságok

Ugyanezzel a stratégiával a Fibonacci-számok sok további összefüggése igazolható. Mindegyiket érdemes előbb a táblázaton ellenőrizni.

> **Állítás.** Minden $k \ge 1$ és $n \ge 1$ esetén
>
> 1. $F_1 + F_3 + F_5 + \dots + F_{2k-1} = F_{2k}$ (a páratlan indexű tagok összege);
> 2. $F_1^2 + F_2^2 + \dots + F_k^2 = F_k F_{k+1}$ (a négyzetösszeg);
> 3. $F_{n+1}F_{n-1} - F_n^2 = (-1)^n$ (Cassini-azonosság).

*Bizonyítás.* Mindhárom teljes indukcióval megy.

1. $k = 1$-re $F_1 = 1 = F_2$. Ha az állítás igaz $k$-ra, akkor $F_1 + \dots + F_{2k-1} + F_{2k+1} = F_{2k} + F_{2k+1} = F_{2k+2}$.
2. $k = 1$-re $F_1^2 = 1 = F_1F_2$. Ha igaz $k$-ra, akkor $F_1^2 + \dots + F_{k+1}^2 = F_kF_{k+1} + F_{k+1}^2 = F_{k+1}(F_k + F_{k+1}) = F_{k+1}F_{k+2}$.
3. $n = 1$-re $F_2F_0 - F_1^2 = 0 - 1 = -1$. Ha igaz $n$-re, akkor a rekurziót kétszer használva
$$F_{n+2}F_n - F_{n+1}^2 = (F_{n+1} + F_n)F_n - F_{n+1}^2 = F_n^2 - F_{n+1}(F_{n+1} - F_n) = F_n^2 - F_{n+1}F_{n-1} = -(-1)^n = (-1)^{n+1}. \ \blacksquare$$

A négyzetösszeg-azonosságnak szép geometriai jelentése van: az $1 \times 1$, $1 \times 1$, $2 \times 2$, $3 \times 3$, $5 \times 5$, … négyzeteket egymás mellé illesztve mindig téglalapot kapunk, amelynek oldalai két szomszédos Fibonacci-szám. A Cassini-azonosság szerint pedig két szomszédos Fibonacci-szám relatív prím: ha $d$ osztaná $F_n$-et és $F_{n+1}$-et, akkor a $(-1)^n$-et is osztaná.

::: kiegeszites
**Kiegészítés — az összeadási képlet.** *Minden $m \ge 1$ és $n \ge 0$ esetén $F_{m+n} = F_mF_{n+1} + F_{m-1}F_n$.*

*Bizonyítás.* Rögzített $n$ mellett erős indukció $m$ szerint. $m = 1$-re $F_{n+1} = F_1F_{n+1} + F_0F_n$, $m = 2$-re $F_{n+2} = F_{n+1} + F_n = F_2F_{n+1} + F_1F_n$. Ha $m \ge 2$, és az állítás igaz $m$-re és $m - 1$-re, akkor összeadva
$$F_{m+1+n} = F_{m+n} + F_{m-1+n} = (F_m + F_{m-1})F_{n+1} + (F_{m-1} + F_{m-2})F_n = F_{m+1}F_{n+1} + F_mF_n. \ \blacksquare$$

Az $m = n$ esetben $F_{2n} = F_n(F_{n+1} + F_{n-1})$, tehát $F_n \mid F_{2n}$. (Általában is igaz, hogy $F_n \mid F_{kn}$.)
:::

### Egy érdekesség

Az egymást követő Fibonacci-számok hányadosa:
$$\frac{F_3}{F_2} = 2,\quad \frac{F_4}{F_3} = 1{,}5,\quad \frac{F_5}{F_4} \approx 1{,}667,\quad \frac{F_6}{F_5} = 1{,}6,\quad \dots,\quad \frac{F_{10}}{F_9} \approx 1{,}6176,\ \dots$$
Úgy tűnik, a hányados egy $1{,}618\ldots$ körüli számhoz tart. Ez az **aranymetszés** aránya; hogy miért, azt a következő szakaszban, az explicit képlet birtokában látjuk be.

## 11. Lineáris rekurziók: a mértani sorozat ötlete

Létezik-e **explicit képlet** $F_n$-re, amelyből a sorozat tagjai az előzők kiszámolása nélkül is megkaphatók?

### Az ötlet

Keressünk olyan **mértani sorozatot**, amely kielégíti a $(*)$ rekurziót! Ha $a_n = q^n$, akkor a $(*)$ feltétel
$$q^n = q^{n-1} + q^{n-2}.$$
A $q = 0$ megoldás érdektelen (a csupa $0$ sorozatot adja). Ha $q \ne 0$, oszthatunk $q^{n-2}$-vel:
$$q^2 = q + 1, \qquad q^2 - q - 1 = 0, \qquad q_{1,2} = \frac{1 \pm \sqrt{5}}{2}.$$
Tehát a
$$\left(\frac{1+\sqrt5}{2}\right)^n \qquad \text{és} \qquad \left(\frac{1-\sqrt5}{2}\right)^n$$
sorozatok kielégítik a $(*)$ rekurziót. Persze egyik sem a Fibonacci-sorozat (nem is egészek). Hogyan lehetne belőlük „kikeverni” a Fibonacci-számokat?

### A megoldások vektorteret alkotnak

Idézzük fel a lineáris algebrából: egy **vektortér** olyan halmaz, amelynek elemei összeadhatók és számmal szorozhatók, a szokásos szabályok szerint (például $\lambda(v_1 + v_2) = \lambda v_1 + \lambda v_2$). A valós számsorozatok vektorteret alkotnak, ha az összeadást és a számmal szorzást tagonként végezzük: $(a_n) + (b_n) = (a_n + b_n)$ és $c\,(a_n) = (c\,a_n)$.

> **Állítás.** A $(*)$ rekurziót kielégítő sorozatok **alteret** alkotnak a sorozatok vektorterében:
>
> 1. ha $(a_n)$ kielégíti $(*)$-ot és $c \in \mathbb{R}$, akkor $(c \cdot a_n)$ is kielégíti;
> 2. ha $(a_n)$ és $(b_n)$ kielégíti $(*)$-ot, akkor $(a_n + b_n)$ is kielégíti.

*Bizonyítás.* 1. Ha $a_n = a_{n-1} + a_{n-2}$, akkor $c\,a_n = c\,(a_{n-1} + a_{n-2}) = c\,a_{n-1} + c\,a_{n-2}$.

2. Ha $a_n = a_{n-1} + a_{n-2}$ és $b_n = b_{n-1} + b_{n-2}$, akkor összeadva
$$a_n + b_n = (a_{n-1} + b_{n-1}) + (a_{n-2} + b_{n-2}). \ \blacksquare$$

Következésképpen az előbb talált két mértani sorozat bármely **lineáris kombinációja**,
$$a_n = \alpha\left(\frac{1+\sqrt5}{2}\right)^n + \beta\left(\frac{1-\sqrt5}{2}\right)^n,$$
is kielégíti a $(*)$ rekurziót, bármilyen $\alpha, \beta$ számokra. Már csak $\alpha$-t és $\beta$-t kell úgy megválasztani, hogy a **kezdeti feltételek** is teljesüljenek. Ehhez a következő egyszerű, de fontos észrevételre van szükség.

::: kiegeszites
**Kiegészítés — Lemma (egyértelműség).** *Ha az $(a_n)_{n \ge 0}$ és $(b_n)_{n \ge 0}$ sorozatok ugyanazt a másodrendű rekurziót elégítik ki — vagyis valamely rögzített $c_1, c_2$ számokkal $n \ge 2$ esetén $a_n = c_1a_{n-1} + c_2a_{n-2}$ és $b_n = c_1b_{n-1} + c_2b_{n-2}$ —, és $a_0 = b_0$, $a_1 = b_1$, akkor $a_n = b_n$ minden $n$-re.*

*Bizonyítás.* Erős teljes indukció $n$ szerint. $n = 0, 1$-re ez a feltétel. Ha $n \ge 2$, és $a_m = b_m$ minden $m < n$-re, akkor
$$a_n = c_1a_{n-1} + c_2a_{n-2} = c_1b_{n-1} + c_2b_{n-2} = b_n. \ \blacksquare$$

Egy másodrendű rekurzió megoldását tehát az első két tagja egyértelműen meghatározza. Ezért ha olyan $\alpha, \beta$-t találunk, amelyekkel a fenti lineáris kombináció az $n = 0$ és $n = 1$ helyen egyezik a Fibonacci-sorozattal, akkor **minden** $n$-re egyezik vele.
:::

### A Binet-képlet

Írjuk fel a feltételeket $n = 0$ és $n = 1$ esetén ($F_0 = 0$, $F_1 = 1$):

- $n = 0$: $\alpha + \beta = F_0 = 0$, tehát $\beta = -\alpha$.
- $n = 1$: $\alpha\cdot\frac{1+\sqrt5}{2} - \alpha\cdot\frac{1-\sqrt5}{2} = \alpha\sqrt5 = F_1 = 1$, tehát $\alpha = \frac{1}{\sqrt5} = \frac{\sqrt5}{5}$.

> **Tétel (Binet-képlet).** Minden $n \ge 0$ esetén
> $$F_n = \frac{1}{\sqrt5}\left[\left(\frac{1+\sqrt5}{2}\right)^n - \left(\frac{1-\sqrt5}{2}\right)^n\right].$$

Meglepő, hogy a jobb oldal — tele irracionális számokkal — mindig egész. Jelölje $\Phi = \frac{1+\sqrt5}{2} \approx 1{,}618$ és $\Psi = \frac{1-\sqrt5}{2} \approx -0{,}618$ a két gyököt. Mivel $|\Psi| < 1$, a $\Psi^n$ tag gyorsan eltűnik, és a Fibonacci-számok lényegében egy mértani sorozat tagjai: $F_n \approx \frac{\Phi^n}{\sqrt5}$.

::: kiegeszites
**Kiegészítés — az aranymetszés.**

*1. $\frac{F_{n+1}}{F_n} \to \Phi$.* A Binet-képlet szerint, $\Phi^n$-nel egyszerűsítve,
$$\frac{F_{n+1}}{F_n} = \frac{\Phi^{n+1} - \Psi^{n+1}}{\Phi^n - \Psi^n} = \Phi\cdot\frac{1 - (\Psi/\Phi)^{n+1}}{1 - (\Psi/\Phi)^n}.$$
Mivel $|\Psi/\Phi| < 1$, a mértani sorozatokról tanultak szerint $(\Psi/\Phi)^n \to 0$, így a tört $1$-hez, a hányados $\Phi$-hez tart.

*2. $F_n$ a $\frac{\Phi^n}{\sqrt5}$ számhoz legközelebbi egész.* Valóban, $\left|F_n - \frac{\Phi^n}{\sqrt5}\right| = \frac{|\Psi|^n}{\sqrt5} \le \frac{1}{\sqrt5} < \frac12$ minden $n \ge 0$-ra. Például $\frac{\Phi^{10}}{\sqrt5} \approx 55{,}004$, és $F_{10} = 55$.
:::

## 12. Az általános másodrendű lineáris rekurzió

A Fibonacci-sorozatnál alkalmazott módszer jóval általánosabban is működik.

> **Definíció.** **Állandó együtthatós, másodrendű lineáris rekurziónak** nevezzük az
> $$a_n = c_1 a_{n-1} + c_2 a_{n-2} \qquad (n \ge 2) \qquad (**)$$
> összefüggést, ahol $c_1, c_2$ adott számok. Ehhez két **kezdeti feltétel** tartozik: $a_0$ és $a_1$ adott.

(Feltesszük, hogy $c_2 \ne 0$; ha $c_2 = 0$, akkor a rekurzió valójában elsőrendű, és a megoldás egyszerűen mértani sorozat.) Az előző szakasz állítása és bizonyítása szó szerint átvihető: a $(**)$-ot kielégítő sorozatok alteret alkotnak. A lemma szerint pedig minden megoldást egyértelműen meghatároz az $(a_0, a_1)$ pár — szemléletesen: a megoldások altere **kétdimenziós**.

**Az ötlet ugyanaz:** keressünk $(q^n)$ alakú mértani sorozatot, amely kielégíti $(**)$-ot:
$$q^n = c_1 q^{n-1} + c_2 q^{n-2}.$$
Mivel $c_2 \ne 0$, a $q = 0$ nem jó, így $q^{n-2}$-vel oszthatunk:

> **Definíció.** A $(**)$ rekurzió **karakterisztikus egyenlete**
> $$q^2 - c_1 q - c_2 = 0.$$

### Két különböző gyök

> **Tétel.** Ha a karakterisztikus egyenletnek két különböző gyöke van, $q_1 \ne q_2$, akkor a $(**)$ rekurzió minden megoldása
> $$a_n = \alpha\, q_1^n + \beta\, q_2^n$$
> alakú, ahol az $\alpha, \beta$ számokat a kezdeti feltételek egyértelműen meghatározzák.

*Bizonyítás.* A $(q_1^n)$ és a $(q_2^n)$ sorozat kielégíti $(**)$-ot, így — mivel a megoldások alteret alkotnak — tetszőleges $\alpha, \beta$ mellett az $\alpha q_1^n + \beta q_2^n$ sorozat is. Az $n = 0$ és $n = 1$ helyen a kezdeti feltételek:
$$\alpha + \beta = a_0, \qquad \alpha q_1 + \beta q_2 = a_1.$$
Ha ebből a lineáris egyenletrendszerből $\alpha$ és $\beta$ egyértelműen meghatározható, akkor kész vagyunk: a kapott sorozat és $(a_n)$ az első két tagban megegyezik, tehát a lemma szerint minden tagban. $\blacksquare$

::: kiegeszites
**Kiegészítés — az egyenletrendszer megoldása.** Az első egyenlet $q_2$-szeresét a másodikból kivonva $\alpha(q_1 - q_2) = a_1 - a_0q_2$, az első egyenlet $q_1$-szereséből a másodikat kivonva $\beta(q_1 - q_2) = a_0q_1 - a_1$. Mivel $q_1 \ne q_2$, oszthatunk:
$$\alpha = \frac{a_1 - a_0q_2}{q_1 - q_2}, \qquad \beta = \frac{a_0q_1 - a_1}{q_1 - q_2},$$
és ez az egyetlen megoldás. (A lineáris algebra nyelvén: az egyenletrendszer determinánsa $q_2 - q_1 \ne 0$.)

*Komplex gyökök.* Ha a diszkrimináns $c_1^2 + 4c_2 < 0$, akkor a két gyök egymás komplex konjugáltja, $q_2 = \overline{q_1}$. A fenti érvelés szó szerint működik a komplex számok körében is: a megoldás $\alpha q_1^n + \beta q_2^n$, most komplex $\alpha$-val és $\beta$-val. Valós kezdőértékek esetén $\beta = \overline{\alpha}$ adódik, és a két tag összege (egymás konjugáltjai lévén) valós. Például az $a_n = -a_{n-2}$, $a_0 = 0$, $a_1 = 1$ rekurzió karakterisztikus egyenlete $q^2 + 1 = 0$, gyökei $\pm i$, a megoldás $a_n = \frac{i^n - (-i)^n}{2i}$, vagyis a $0, 1, 0, -1, 0, 1, \dots$ periodikus sorozat.
:::

### Kétszeres gyök

Mi a helyzet, ha a karakterisztikus egyenletnek **kétszeres** gyöke van, $q_1 = q_2 = q$? Ez pontosan akkor fordul elő, ha a diszkrimináns $0$, vagyis $c_1^2 + 4c_2 = 0$; ekkor $q = \frac{c_1}{2}$. Ilyenkor a fenti módszer csak **egy** mértani sorozatot ad, $(q^n)$-t, amelynek többszörösei általában nem elégíthetik ki mindkét kezdeti feltételt. Kell egy második, tőle „független” megoldás.

> **Állítás.** Ha a karakterisztikus egyenletnek $q$ kétszeres gyöke, akkor nemcsak a $(q^n)$, hanem az $(n \cdot q^n)$ sorozat is kielégíti a $(**)$ rekurziót.

Az előadáson elhangzott, hogy ez igaz, a bizonyítás házi feladat volt.

::: kiegeszites
**Kiegészítés — bizonyítás.** Azt kell belátnunk, hogy minden $n \ge 2$-re
$$n q^n = c_1 (n-1) q^{n-1} + c_2 (n-2) q^{n-2}.$$
Mivel $q = \frac{c_1}{2} \ne 0$ (hiszen $c_2 \ne 0$ miatt $c_1 \ne 0$), oszthatunk $q^{n-2}$-vel, és átrendezve a bizonyítandó állítás:
$$n q^2 - c_1(n-1)q - c_2(n-2) = 0 \iff n\big(q^2 - c_1q - c_2\big) + \big(c_1 q + 2c_2\big) = 0.$$
Az első zárójel $0$, mert $q$ gyöke a karakterisztikus egyenletnek. A második zárójel:
$$c_1q + 2c_2 = c_1\cdot\frac{c_1}{2} + 2c_2 = \frac{c_1^2 + 4c_2}{2} = 0,$$
mert a diszkrimináns $0$. $\blacksquare$
:::

> **Tétel.** Ha a karakterisztikus egyenletnek $q$ kétszeres gyöke, akkor a $(**)$ rekurzió minden megoldása
> $$a_n = \alpha\, q^n + \beta\, n\, q^n$$
> alakú, ahol $\alpha, \beta$ a kezdeti feltételekből egyértelműen meghatározható.

::: kiegeszites
**Kiegészítés — bizonyítás.** Az állítás és az altér-tulajdonság szerint minden ilyen alakú sorozat megoldás. A kezdeti feltételek: $n = 0$-ra $\alpha = a_0$; $n = 1$-re $(\alpha + \beta)q = a_1$, ahonnan ($q \ne 0$ miatt) $\beta = \frac{a_1}{q} - a_0$. Ezek egyértelműen meghatározott számok, és a lemma szerint a kapott sorozat minden tagban megegyezik $(a_n)$-nel. $\blacksquare$
:::

### Kidolgozott példa

> **Feladat.** Oldjuk meg az $a_n = 4a_{n-1} - 4a_{n-2}$ rekurziót az $a_0 = 2$, $a_1 = 6$ kezdeti feltételekkel!

*Megoldás.* 1. **A karakterisztikus egyenlet felírása:** $q^2 - 4q + 4 = 0$, azaz $(q-2)^2 = 0$. A gyök kétszeres: $q_1 = q_2 = 2$.

2. **Két megoldássorozat:** $(2^n)$ és $(n \cdot 2^n)$, tehát $a_n = \alpha\cdot 2^n + \beta\cdot n\cdot 2^n$.

3. **Kezdeti feltételek:**
   - $n = 0$: $2 = \alpha\cdot 2^0 + \beta\cdot 0\cdot 2^0 = \alpha$, tehát $\alpha = 2$;
   - $n = 1$: $6 = \alpha\cdot 2 + \beta\cdot 1\cdot 2 = 4 + 2\beta$, tehát $\beta = 1$.

4. **Eredmény:** $a_n = 2\cdot 2^n + n\cdot 2^n = (n+2)\cdot 2^n$.

*Ellenőrzés:* a rekurzióból $a_2 = 4\cdot 6 - 4\cdot 2 = 16$, a képletből $a_2 = 4 \cdot 4 = 16$. $\blacksquare$

Még két rövid példa; az elsőben a kezdeti feltételek nem $a_0$-nál kezdődnek.

*Példa.* A karakterisztikus egyenlet gyökei $q_1 = 2$ és $q_2 = 3$, a kezdőértékek $a_1 = 1$, $a_2 = 2$. Ekkor $a_n = \alpha 2^n + \beta 3^n$, és $2\alpha + 3\beta = 1$, $4\alpha + 9\beta = 2$. Az első egyenlet kétszeresét kivonva $3\beta = 0$, tehát $\beta = 0$, $\alpha = \frac12$, és $a_n = 2^{n-1}$. (A rekurzió itt $a_n = 5a_{n-1} - 6a_{n-2}$, és valóban $5 \cdot 2^{n-2} - 6 \cdot 2^{n-3} = 2^{n-3}(10 - 6) = 2^{n-1}$.)

*Példa.* A karakterisztikus egyenletnek $q = 2$ kétszeres gyöke, $a_0 = 2$, $a_1 = 3$. Ekkor $a_n = (\alpha + \beta n)2^n$, ahol $\alpha = a_0 = 2$ és $2(\alpha + \beta) = 3$, tehát $\beta = -\frac12$, és
$$a_n = \left(2 - \frac{n}{2}\right)2^n = (4 - n)\,2^{n-1}.$$

### Magasabb rendű rekurziók

A módszer szó szerint átvihető arra az esetre is, amikor minden tag az előző $k$ tagtól függ.

> **Definíció.** **$k$-adrendű, állandó együtthatós lineáris rekurzió** az
> $$a_n = c_1a_{n-1} + c_2a_{n-2} + \dots + c_ka_{n-k} \qquad (n \ge k)$$
> összefüggés, ahol $c_1, \dots, c_k$ adott számok és $c_k \ne 0$. A sorozatot az $a_0, \dots, a_{k-1}$ kezdőértékek egyértelműen meghatározzák. A rekurzió **karakterisztikus egyenlete**
> $$q^k - c_1q^{k-1} - c_2q^{k-2} - \dots - c_k = 0.$$

A karakterisztikus egyenletet ugyanúgy kapjuk, mint eddig: a $q^n$ mértani sorozatot behelyettesítjük, és $q^{n-k}$-val osztunk. A megoldások most is alteret alkotnak, és ez az altér — az egyértelműségi lemma $k$ kezdőértékes változata szerint — **$k$-dimenziós**. Elég tehát $k$ „független” megoldást találni.

> **Tétel.** Legyenek a karakterisztikus egyenlet (komplex) gyökei $q_1, \dots, q_s$, rendre $m_1, \dots, m_s$ multiplicitással ($m_1 + \dots + m_s = k$). Ekkor a rekurzió minden megoldása
> $$a_n = \sum_{i=1}^{s}\big(\alpha_{i,0} + \alpha_{i,1}n + \alpha_{i,2}n^2 + \dots + \alpha_{i,m_i-1}n^{m_i-1}\big)\,q_i^n$$
> alakú, ahol a $k$ darab $\alpha_{i,j}$ együtthatót a kezdeti feltételek egyértelműen meghatározzák.

Egy $m$-szeres gyök tehát a $q^n, nq^n, \dots, n^{m-1}q^n$ sorozatokat adja; $k = 2$-re ez éppen a két korábbi tétel. Az együtthatók egyértelmű meghatározhatóságát (egy Vandermonde-típusú determináns nemnullaságát) nem bizonyítjuk.

::: kiegeszites
**Kiegészítés — miért megoldás az $n^jq^n$ sorozat?** Legyen $p(x) = x^k - c_1x^{k-1} - \dots - c_k$ a karakterisztikus polinom, és $q$ legalább $m$-szeres gyöke, $0 \le j \le m - 1$. Rögzített $n \ge k$ mellett tekintsük az
$$f(x) = x^{n-k}p(x) = x^n - c_1x^{n-1} - \dots - c_kx^{n-k}$$
polinomot; ennek $q$ szintén legalább $m$-szeres gyöke. Jelölje $D$ az $f \mapsto x f'$ műveletet. Mivel $D(x^t) = t x^t$,
$$D^j f(x) = n^jx^n - c_1(n-1)^jx^{n-1} - \dots - c_k(n-k)^jx^{n-k}.$$
A $D^jf$ polinom az $f, f', \dots, f^{(j)}$ deriváltak $x$-hatványokkal vett kombinációja, és ezek mind eltűnnek $q$-ban, mert $j < m$ (egy $m$-szeres gyök az első $m - 1$ deriváltnak is gyöke). Tehát $D^jf(q) = 0$, ami átrendezve
$$n^jq^n = c_1(n-1)^jq^{n-1} + \dots + c_k(n-k)^jq^{n-k}$$
— vagyis az $a_n = n^jq^n$ sorozat kielégíti a rekurziót. $\blacksquare$
:::

### Visszafelé: rekurzió adott megoldáshoz

A tétel visszafelé is használható: ha ismerjük a megoldás alakját, kiolvashatjuk belőle a karakterisztikus egyenlet gyökeit, és abból a rekurziót.

- $a_n = 5\cdot n\cdot 2^n$: ilyen tag a $2$ kétszeres gyökéből származik, a karakterisztikus egyenlet $(q-2)^2 = q^2 - 4q + 4 = 0$, a rekurzió tehát $a_n = 4a_{n-1} - 4a_{n-2}$.
- $a_n = 3\cdot 2^n + 3\cdot(-2)^n$: a gyökök $2$ és $-2$, az egyenlet $(q-2)(q+2) = q^2 - 4 = 0$, a rekurzió $a_n = 4a_{n-2}$ (ez is másodrendű, csak $c_1 = 0$).
- $a_n = n^3$: ez az $1$ négyszeres gyökéhez tartozó $n^3\cdot 1^n$ tag. Az egyenlet $(q-1)^4 = q^4 - 4q^3 + 6q^2 - 4q + 1 = 0$, a rekurzió $a_n = 4a_{n-1} - 6a_{n-2} + 4a_{n-3} - a_{n-4}$, tehát **negyedrendű**.

> **Állítás.** Az $a_n = n^3$ sorozat nem megoldása semmilyen másodrendű, állandó együtthatós lineáris rekurziónak.

*Bizonyítás (indirekt).* Tegyük fel, hogy minden $n \ge 2$-re $n^3 = c_1(n-1)^3 + c_2(n-2)^3$. Mindkét oldal $n$-nek polinomja, és végtelen sok helyen egyenlők, tehát az együtthatóik is egyenlők. A jobb oldal kifejtve
$$(c_1 + c_2)n^3 - (3c_1 + 6c_2)n^2 + (3c_1 + 12c_2)n - (c_1 + 8c_2).$$
Az $n^3$ és $n^2$ együtthatóiból $c_1 + c_2 = 1$ és $3c_1 + 6c_2 = 0$, ahonnan $c_1 = 2$, $c_2 = -1$. Ekkor azonban az $n$ együtthatója $3 \cdot 2 - 12 = -6 \ne 0$ — ellentmondás. $\blacksquare$

(Más szóval: egy másodrendű rekurzió megoldásaiban a polinomiális szorzó legfeljebb elsőfokú lehet, az $n^3$ ennél „túl gyorsan” változik.)

## 13. A lépcsőmászás feladata

> **Feladat.** Egy $n$ fokú lépcsőn hányféleképpen lehet felmenni, ha minden lépésben $1$ vagy $2$ fokot lépünk?

Ez a feladat jól mutatja a rekurzív gondolkodás menetét, amelyet az előadáson három lépésre bontottunk.

**0. lépés: nevezzük el a keresett mennyiséget.** Jelölje $L_n$ az $n$ fokú lépcsőn való felmenések számát.

**1. lépés: számoljunk ki kis eseteket.**

| $n$ | 1 | 2 | 3 | 4 |
|:-:|:-:|:-:|:-:|:-:|
| $L_n$ | 1 | 2 | 3 | 5 |

Például $n = 3$-ra a lehetőségek: $1+1+1$, $1+2$, $2+1$; $n = 4$-re: $1+1+1+1$, $1+1+2$, $1+2+1$, $2+1+1$, $2+2$.

**2. lépés: keressünk lineáris rekurziót (esetszétválasztással).** Válasszuk szét a felmenéseket aszerint, hogy az **utolsó** lépés $1$ vagy $2$ fokos volt-e. Ha $1$ fokos, akkor előtte az $(n-1)$-edik fokra kellett feljutnunk, ez $L_{n-1}$-féleképpen történhetett. Ha $2$ fokos, akkor előtte az $(n-2)$-edik fokra, ez $L_{n-2}$ lehetőség. A két eset diszjunkt, így $n \ge 3$ esetén
$$L_n = L_{n-1} + L_{n-2}.$$

Ez éppen a Fibonacci-rekurzió! A kezdőértékek: $L_1 = 1 = F_2$ és $L_2 = 2 = F_3$. Mivel a két sorozat ugyanazt a rekurziót elégíti ki, és az első két tagjuk egyezik, a 11. szakasz lemmája szerint (eltolt indexeléssel)
$$L_n = F_{n+1} \quad \text{minden } n \ge 1 \text{ esetén.}$$

### Ötletek a rekurzió felállítására

A lépcsőmászás mintájára sok feladat megoldható. A legfontosabb ötlet mindig ugyanaz: **vizsgáljuk meg, hogyan végződhet (vagy kezdődhet) az objektum, és a maradékot ismerjük fel kisebb, ugyanilyen típusú feladatként.**

*Példa.* Hány olyan $n$ hosszú $0$–$1$ sorozat van, amelyben **nincs két szomszédos $1$-es**? Jelölje ezt $b_n$; $b_1 = 2$ ($0$, $1$), $b_2 = 3$ ($00$, $01$, $10$). Ha a sorozat utolsó jegye $0$, előtte tetszőleges jó $(n-1)$ hosszú sorozat állhat; ha $1$, akkor az utolsó előtti jegy $0$, és előtte tetszőleges jó $(n-2)$ hosszú sorozat áll. Tehát $b_n = b_{n-1} + b_{n-2}$, és a kezdőértékekből $b_n = F_{n+2}$.

*Példa.* Hányféleképpen fedhető le egy $2 \times n$-es tábla $1 \times 2$-es dominókkal? Ha $d_n$ a lefedések száma, akkor a bal szélső oszlopot vagy egy álló dominó fedi (a maradék $2 \times (n-1)$-es), vagy két egymás feletti fekvő dominó (a maradék $2 \times (n-2)$-es). Így $d_n = d_{n-1} + d_{n-2}$, $d_1 = 1$, $d_2 = 2$, tehát $d_n = F_{n+1}$ — a lépcsőmászással azonos feladat ($1$ fok = álló dominó, $2$ fok = két fekvő dominó).

*Példa (nem homogén rekurzió).* A 2. szakaszban a sík felosztásánál az $r_n = r_{n-1} + n$ rekurziót kaptuk. Ez nem az eddigi alakú (van benne egy $n$-től függő tag), de a különbségeket összegezve közvetlenül megoldható.

Az előadáson látott lépéseket kiegészítve a rekurzió felállításának teljes receptje: **(0)** nevezzük el a mennyiséget; **(1)** számoljunk ki kis eseteket; **(2)** esetszétválasztással (az utolsó vagy az első lépés szerint) fejezzük ki a kisebb esetekkel; **(3)** a kezdőértékeket is határozzuk meg; **(4)** oldjuk meg a rekurziót (karakterisztikus egyenlettel), vagy ismerjük fel egy már ismert sorozatként; **(5)** ellenőrizzük a kis eseteken.
