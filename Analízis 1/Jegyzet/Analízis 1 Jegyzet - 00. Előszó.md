# Analízis 1 Tankönyv

### Bevezetés a differenciál- és integrálszámítás alapfogalmaiba, lépésről lépésre

**Buczolich Zoltán előadásai alapján**

---

> *„A matematikát nem nézni kell, hanem csinálni.”*

---

## Előszó

Ez a könyv **Buczolich Zoltán** (ELTE TTK, Analízis Tanszék) Analízis 1 előadásának kézírásos jegyzeteiből született: az anyag felépítése, a tárgyalás sorrendje, a definíciók, a tételek és a bizonyítások gondolatmenete az ő előadásait követi. Az érdem az övé; a magyarázatok, a példák és a feladatok kibővítése, valamint az ezekben esetleg előforduló hibák a feldolgozásból erednek. A könyv azonban nem csupán a kézírásos előadásjegyzet letisztázott változata. Az előadáson sok minden szóban hangzik el, vagy csak egy rajz utal rá; a vázlat feltételezi, hogy az olvasó hallotta a magyarázatot, látta a rajzokat, és tudja, *miért* éppen így épül fel az anyag. Ez a könyv ezt a hiányzó réteget pótolja. Az előadás útját járja be, ugyanabban a sorrendben, de lassabban: minden új fogalom előtt megmutatja, milyen kérdés teszi szükségessé, minden definíció után példákon és ellenpéldákon próbálja ki, és minden bizonyításnál elmondja a mögötte álló ötletet is, nemcsak a lépéseit.

Az anyag felépítése szigorúan egymásra épül: a teljességi axióma nélkül nincs szuprémum; szuprémum nélkül nincs monoton korlátos sorozatokra vonatkozó tétel; e nélkül nincs Bolzano–Weierstrass; e nélkül nincs Cauchy-kritérium, és nincs Weierstrass-féle maximumtétel sem; a lánc végén pedig a középértéktételek állnak, amelyekből a teljes függvényvizsgálat, a L'Hospital-szabály és a Taylor-formula következik. Érdemes ezt az ívet szem előtt tartani: az analízis nem különálló trükkök gyűjteménye, hanem egyetlen, hosszú gondolatmenet (ezt az Utószóban még egyszer áttekintjük).

Az 1–86. szakasz előtt a könyv egy rövid *Előkészületek* résszel kezdődik (A–D. szakasz), amely a matematikai logika és a halmazok nyelvét foglalja össze. Erre azért van szükség, mert az analízis definíciói — különösen a határértéké — hosszú, kvantorokkal teli mondatok, és ezek olvasását, tagadását külön meg kell tanulni.

### Hogyan használjuk ezt a könyvet?

**Lassan.** Egy matematikai szöveg nem regény. Egy definíciót akkor értettünk meg, ha (1) el tudjuk mondani a saját szavainkkal, (2) tudunk rá példát és ellenpéldát mondani, és (3) tudjuk, mit jelent a tagadása. Egy tételt akkor értettünk meg, ha tudjuk, melyik feltétele mire kell, és mi romlik el, ha elhagyjuk. Ezért a könyv szinte minden tétel után megmutatja, miért nem lehet a feltételeken lazítani.

**Ceruzával.** A számolásokat érdemes papíron követni. Ahol a szöveg azt írja, „könnyen ellenőrizhető”, ott valóban ellenőrizni kell.

**A feladatokkal.** Minden rész végén gyakorló feladatok és rövid megoldási útmutatók állnak. Az útmutatót csak akkor nézzük meg, ha már legalább negyedórát gondolkodtunk a feladaton — a megértés ugyanis nagyrészt ebben a negyedórában történik.

### A könyvben használt jelölések

A szövegben a következő típusú egységek fordulnak elő:

- **Definíció** — egy új fogalom pontos jelentésének rögzítése. Definíciót nem bizonyítunk: megállapodunk benne.
- **Tétel** — bizonyított állítás. Kisebb jelentőségű tételeket **állításnak**, más tételek bizonyítását előkészítő segédtételeket **lemmának**, egy tételből közvetlenül adódó állításokat **következménynek** nevezünk.
- **Bizonyítás** — a tétel igazolása. Végét a $\blacksquare$ jel mutatja.
- **Példa**, **Kidolgozott példa** — a fogalmak kipróbálása konkrét eseteken.
- **Megjegyzés**, **Figyelem** — magyarázat, tipikus hibák, történeti háttér.

A definíciókat és a fontos tételeket a szövegtől elkülönítve, behúzott blokkban szedtük, hogy ismétléskor könnyen megtalálhatók legyenek.

---
