# Algebra Tankönyv

### Felsőbb fokú algebra kezdőknek, lépésről lépésre

**Gyarmati Katalin *Előadásvázlatok felsőbb fokú algebrából kezdőknek* című jegyzete alapján**

---

> *„Az algebra nem más, mint írásba foglalt geometria; a geometria nem más, mint alakba öntött algebra.”* — Sophie Germain

---

## Előszó

Ez a könyv **Gyarmati Katalin** (ELTE TTK, Matematikai Intézet) *Előadásvázlatok felsőbb fokú algebrából kezdőknek* című egyetemi jegyzetének (ELTE TTK, 2026) tankönyvszerű feldolgozása. A jegyzet a szerző sokéves oktatói munkájának és tapasztalatainak összefoglalása, és — ahogy bevezetőjében maga írja — Kiss Emil átfogó algebra-diasoraira is épül, amelyek tanulmányozását mi is jó szívvel ajánljuk. **Az anyag felépítése, a fejezetek sorrendje, a definíciók, a tételek és bizonyításaik, a kidolgozott példák és a történeti kitérők Gyarmati Katalin munkáját követik; ennek a könyvnek minden érdeme az övé.** A feldolgozás azt teszi hozzá, amit egy tankönyvnek egy előadásvázlathoz képest hozzá kell tennie: lassabban halad, minden új fogalom előtt megmutatja, milyen kérdés teszi szükségessé, a bizonyítások mögötti ötletet is kimondja, és több kidolgozott példát, illetve gyakorló feladatot ad. Az esetleges hibák a feldolgozásból erednek, nem az eredeti jegyzetből.

**A számozás megegyezik a jegyzetével.** A könyv 21 fejezete címében és tartalmában a jegyzet azonos számú fejezetének felel meg, és a definíciók, tételek, feladatok számozását is átvettük (például az *1.5 Definíció* itt is a mátrixszorzás definíciója). A fejezeteket hat nagyobb részbe csoportosítottuk; minden rész végén összefoglalás, gyakorló feladatok és megoldási útmutatók állnak.

Az *Algebra* és a *Számelmélet* tárgy anyaga sok ponton összekapcsolódik (maradékos osztás, euklideszi algoritmus, a számelmélet alaptétele, kongruenciák, a kis Fermat-tétel). Ahol ez segít, utalunk a párhuzamos *Számelmélet Tankönyv* (Gyarmati Katalin *Elemi Számelmélet* című jegyzetének feldolgozása) megfelelő fejezeteire.

### A szürke dobozok

A jegyzet néhány állítást bizonyítás nélkül közöl, vagy a bizonyítást csak vázolja. Ezeket a bizonyításokat — és néhány olyan hasznos kiegészítést, amely a jegyzetben nem szerepel — **kiegészítésként** megírtuk, de világosszürke háttérrel elkülönítettük a szöveg többi részétől, például így:

::: kiegeszites
**Kiegészítés.** Az ilyen dobozok tartalma *nem szerepel* Gyarmati Katalin jegyzetében. Első olvasáskor átugorhatók, de vizsgára készülve érdemes őket is végigolvasni: gyakran éppen ezekben derül ki, *miért* igaz valami.
:::

Ami szürke háttér nélkül szerepel, az a jegyzet anyaga, legfeljebb részletesebben kifejtve. Néhány helyen — ahol a történeti adatok vagy egy-egy számolás pontosítást igényelt — a javított változatot közöljük.

### Hogyan használjuk ezt a könyvet?

**Számolva.** Az algebra első félévének anyaga nagyrészt *technika*: Gauss-elimináció, determinánsszámítás, komplex számokkal való műveletek, polinomosztás. Ezeket csak úgy lehet megtanulni, ha az ember sokat számol. A kidolgozott példákat érdemes letakarni, önállóan végigszámolni, és csak utána összevetni.

**A fogalmak mögé nézve.** A félév második felében (csoportok, gyűrűk, testek, euklideszi gyűrűk) a technika mögül előbukkan a *szerkezet*: kiderül, hogy az egész számok, a polinomok és a maradékosztályok ugyanazoknak a szabályoknak engedelmeskednek. Érdemes minden új fogalomnál végiggondolni, melyik korábban látott példára illik rá, és melyikre nem.

**A feladatokkal.** Minden rész végén gyakorló feladatok és rövid megoldási útmutatók állnak. Az útmutatót csak akkor nézzük meg, ha már legalább negyedórát gondolkodtunk a feladaton.

### A könyvben használt jelölések

- $\mathbb{N} = \{0, 1, 2, \dots\}$, $\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$: a természetes, egész, racionális, valós, illetve komplex számok halmaza.
- $T$: egy tetszőleges **számtest** (például $\mathbb{Q}$, $\mathbb{R}$ vagy $\mathbb{C}$); $T^n$ a $T$ feletti $n$ komponensű oszlopvektorok, $T^{n \times m}$ az $n \times m$-es mátrixok halmaza.
- $E_n$ vagy $I$: az $n \times n$-es egységmátrix; $A^T$: az $A$ mátrix transzponáltja; $\det A$ vagy $|A|$: determináns.
- $\deg f$: az $f$ polinom foka; $R[x]$: az $R$ feletti polinomok halmaza.
- $\mathbb{Z}_m$: a modulo $m$ maradékosztályok halmaza.
- $(a, b)$ vagy $\operatorname{lnko}(a, b)$: legnagyobb közös osztó.

A definíciókat és a fontos tételeket a szövegtől elkülönítve, behúzott blokkban szedtük. A bizonyítások végét $\blacksquare$ jelzi.

---
