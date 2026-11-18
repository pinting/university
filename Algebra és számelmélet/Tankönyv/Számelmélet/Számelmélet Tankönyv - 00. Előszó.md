# Számelmélet Tankönyv

### Elemi számelmélet lépésről lépésre

**Gyarmati Katalin *Elemi Számelmélet* című egyetemi jegyzete alapján**

---

> *„A matematika a tudományok királynője, a számelmélet pedig a matematika királynője.”* — Carl Friedrich Gauss

---

## Előszó

Ez a könyv **Gyarmati Katalin** (ELTE TTK, Matematikai Intézet) *Elemi Számelmélet* című egyetemi jegyzetének (ELTE TTK, 2022) tankönyvszerű feldolgozása. A jegyzet a szerző első éves matematikus hallgatóknak tartott számelmélet-kurzusának teljes anyagát tartalmazza, sőt valamivel túl is lép rajta. **Az anyag felépítése, a fejezetek sorrendje, a definíciók, a tételek és bizonyításaik, a kidolgozott példák és a történeti kitérők Gyarmati Katalin munkáját követik; ennek a könyvnek minden érdeme az övé.** A feldolgozás csak annyit tesz hozzá, amennyit egy tankönyvnek egy előadásra vetíthető jegyzethez képest hozzá kell tennie: lassabban halad, minden új fogalom előtt megmutatja, milyen kérdés teszi szükségessé, a bizonyítások mögötti ötletet is kimondja, és több kidolgozott példát, illetve gyakorló feladatot ad. Az esetleges hibák a feldolgozásból erednek, nem az eredeti jegyzetből.

Gyarmati Katalin jegyzetében főként a következő művekre támaszkodott, amelyeket az érdeklődő olvasónak mi is jó szívvel ajánlunk: Martin Aigner és Günter M. Ziegler: *Bizonyítások a Könyvből*; Gyarmati Edit és Turán Pál: *Számelmélet*; Erdős Pál és Surányi János: *Válogatott fejezetek a számelméletből*; Freud Róbert és Gyarmati Edit: *Számelmélet*; Fried Katalin, Korándi József és Török Judit: *Számelmélet*; Fuchs László: *Bevezetés az algebrába és számelméletbe*; G. H. Hardy és E. M. Wright: *An Introduction to the Theory of Numbers*; Sárközy András: *Számelmélet és alkalmazásai*; Szalay Mihály: *Számelmélet*.

**A számozás megegyezik a jegyzetével.** A könyv 25 fejezete címében és tartalmában a jegyzet azonos számú fejezetének felel meg, és a definíciók, tételek, lemmák, feladatok számozását is átvettük (például a *2.7. Tétel* itt is Eukleidész II. tétele). Így a két szöveg párhuzamosan olvasható: ha a jegyzet egy pontja túl tömörnek tűnik, ugyanazon a számon itt megtalálható a részletesebb kifejtés. A fejezeteket a könnyebb áttekinthetőség kedvéért nyolc nagyobb részbe csoportosítottuk; minden rész végén összefoglalás, gyakorló feladatok és megoldási útmutatók állnak.

### A szürke dobozok

A jegyzet több állítás bizonyítását házi feladatnak (a jegyzet rövidítésével: HF) hagyja, néhányat pedig csak kimond. Ezeket a bizonyításokat — és néhány olyan hasznos kiegészítést, amely a jegyzetben nem szerepel — **kiegészítésként** megírtuk, de világosszürke háttérrel elkülönítettük a szöveg többi részétől, például így:

::: kiegeszites
**Kiegészítés.** Az ilyen dobozok tartalma *nem szerepel* Gyarmati Katalin jegyzetében. A jegyzetben házi feladatként kitűzött vagy bizonyítás nélkül kimondott állítások igazolását, illetve a gondolatmenetek hiányzó lépéseit tartalmazzák. Első olvasáskor átugorhatók, de vizsgára készülve érdemes őket is végigolvasni — a házi feladatokat persze előbb érdemes önállóan megpróbálni.
:::

Ami szürke háttér nélkül szerepel, az a jegyzet anyaga, legfeljebb részletesebben kifejtve. Néhány helyen a történeti adatokat és a „mai rekordokat” (legnagyobb ismert prím, legjobb ismert becslések) pontosítottuk vagy frissítettük; ezeket a szövegben jelezzük.

### Hogyan használjuk ezt a könyvet?

**Lassan és ceruzával.** A számelmélet állításai sokszor annyira egyszerűen hangzanak, hogy az ember hajlamos átsiklani rajtuk. Minden tételt érdemes néhány kis számon kipróbálni, mielőtt a bizonyítását elolvassuk: a példákból gyakran kiderül, *miért* igaz az állítás, és melyik feltétel mire kell.

**A feltételekre figyelve.** A számelméletben a feltételek szinte mindig lényegesek: az Euler–Fermat-tételben az $(a,m) = 1$, a fokszámtételben az, hogy a modulus prím, a kínai maradéktételben az, hogy a modulusok páronként relatív prímek. A könyv a legtöbb ilyen helyen ellenpéldát is mutat arra, mi romlik el a feltétel nélkül.

**A feladatokkal.** Minden rész végén gyakorló feladatok és rövid megoldási útmutatók állnak. Az útmutatót csak akkor nézzük meg, ha már legalább negyedórát gondolkodtunk a feladaton.

### A könyvben használt jelölések

- $\mathbb{N} = \{0, 1, 2, \dots\}$ a természetes számok halmaza (a jegyzethez hasonlóan a $0$-t is természetes számnak tekintjük), $\mathbb{Z}^+ = \{1, 2, 3, \dots\}$ a pozitív egészeké, $\mathbb{Z}$ az egész számoké, $\mathbb{Q}$, $\mathbb{R}$, $\mathbb{C}$ a racionális, valós, illetve komplex számoké.
- $b \mid a$: $b$ osztója $a$-nak; $b \nmid a$: nem osztója.
- $(a, b)$: $a$ és $b$ legnagyobb közös osztója (több számra $(a_1, \dots, a_n)$); $[a, b]$: legkisebb közös többszörösük.
- $a \equiv b \pmod m$, röviden $a \equiv b \ (m)$: $a$ kongruens $b$-vel modulo $m$.
- $[x]$: az $x$ valós szám egészrésze, vagyis a legnagyobb $x$-nél nem nagyobb egész ($[3{,}7] = 3$, $[-3{,}7] = -4$).
- $\log x$: a természetes alapú logaritmus; $\log_2 x$: a kettes alapú.
- $|H|$: a véges $H$ halmaz elemszáma.

A definíciókat és a fontos tételeket a szövegtől elkülönítve, behúzott blokkban szedtük. A bizonyítások végét $\blacksquare$ jelzi.

---
