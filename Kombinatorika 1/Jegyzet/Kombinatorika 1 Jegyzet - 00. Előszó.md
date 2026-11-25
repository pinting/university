# Kombinatorika 1 Tankönyv

### Leszámlálás és gráfelmélet lépésről lépésre — az előadás jegyzetei alapján

**Sziklai Péter előadásai alapján**

---

> *„Számolni nem úgy kell, hogy egyenként végigszámoljuk a dolgokat, hanem úgy, hogy megértjük, hogyan épülnek fel.”*

---

## Előszó

A Kombinatorika 1 előadáshoz nincs hivatalos jegyzet. Ez a könyv **Sziklai Péter** (ELTE TTK, Számítógéptudományi Tanszék) előadásainak kézírásos jegyzeteiből született, és ugyanazt az utat járja be, **ugyanabban a sorrendben**, ahogyan az előadás haladt: a leszámlálás alapelveitől a binomiális együtthatókon, a logikai szitán, a rekurziókon és a Catalan-számokon át a gráfelmélet fejezeteiig (fák, feszítőfák, Prüfer-kód, fokszámsorozatok, Euler-séták, Hamilton-körök, csúcs- és élszínezések, a síkbarajzolható gráfok és az Euler-formula, a gömbre és tóruszra rajzolt gráfok, a szabályos testek, a tartományok színezése és a duális gráf, a független és lefogó csúcs- és élhalmazok, a párosítások: a Hall-, a Frobenius-, a Tutte- és a Kőnig-tétel, a deficites Hall-tétel és a stabil párosítások), majd a negyedik részben a többszörös összefüggőség, a Ramsey-tételkör (beleértve az alsó és aszimmetrikus becsléseket, a végtelen és a többszínű esetet, valamint a Schur-tételt) és a Turán-tételkör, végül a halmazrendszerek (Sperner, Erdős–Ko–Rado) és a lineáris algebrai módszer. Az anyag felépítése, a tárgyalás rendje, a tételek és bizonyítások az ő előadásait követik; az érdem az övé, az esetleges hibák a feldolgozásból erednek.

A könyv azonban nem csupán a jegyzet letisztázott változata. Az előadáson sok minden szóban hangzik el, vagy csak egy rajz utal rá; itt ezeket a lépéseket kiírtuk. Minden új fogalom előtt igyekeztünk megmutatni, milyen kérdés teszi szükségessé, utána pedig példákon kipróbáltuk.

### A szürke dobozok

Az előadáson nem minden állítás kapott bizonyítást: némelyiket csak tényként mondtuk ki, egy másik bizonyítását házi feladatnak hagytuk, egy harmadiknál pedig elhangzott, hogy „most nem nézzük meg”. Ezeket a bizonyításokat **kiegészítésként** megírtuk, de világosszürke háttérrel elkülönítettük a szöveg többi részétől, például így:

::: kiegeszites
**Kiegészítés.** Az ilyen dobozok tartalma *nem hangzott el* az előadáson. Az ott kimondott tételek bizonyítását, illetve a kimondott tényekhez szükséges hiányzó lépéseket tartalmazzák. Első olvasáskor átugorhatók, de vizsgára készülve érdemes őket is végigolvasni: gyakran éppen ezekben derül ki, *miért* igaz valami.
:::

Ami szürke háttér nélkül szerepel, az az előadás anyaga, legfeljebb részletesebben kifejtve.

### Hogyan használjuk ezt a könyvet?

**Lassan és ceruzával.** A kombinatorikában a legtöbb hiba abból adódik, hogy valamit kétszer vagy egyszer sem számolunk meg. Ezért minden képletet érdemes kis esetekre ($n = 1, 2, 3$) kézzel is ellenőrizni.

**A gyakorlattal együtt.** A feladatokat a *Kombinatorika 1 Gyakorlat Feladatsorok* gyűjtemény tartalmazza, a megoldásokat a *Kombinatorika 1 Gyakorlat Megoldások*. Ez a könyv az elméleti hátteret adja hozzájuk.

### A könyvben használt jelölések

- **Definíció**, **Tétel**, **Állítás**, **Lemma**, **Következmény** — a szokásos értelemben. A definíciókat és a tételeket behúzott blokkban szedtük.
- **Bizonyítás** — végét a $\blacksquare$ jel mutatja.
- $[n] = \{1, 2, \dots, n\}$, továbbá $|A|$ az $A$ véges halmaz elemszáma.
- $n! = 1 \cdot 2 \cdots n$, és megállapodás szerint $0! = 1$.
- $\lceil x \rceil$ az $x$ felső egészrésze (a legkisebb egész, amely $\ge x$), $\lfloor x \rfloor$ az alsó egészrésze.

---
