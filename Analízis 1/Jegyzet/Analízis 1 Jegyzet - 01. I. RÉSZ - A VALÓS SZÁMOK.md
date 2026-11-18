# I. RÉSZ: A VALÓS SZÁMOK

## 1. Bevezetés: mi az analízis?

Az analízis — hagyományos nevén *differenciál- és integrálszámítás* — a függvények viselkedésének vizsgálata a **határérték** fogalmán keresztül. Két klasszikus probléma vezet el hozzá, és mindkettő ugyanazt a nehézséget rejti: egy véges eljárás végtelen sokszori finomítását.

**A területszámítás problémája.** Ha egy körbe szabályos sokszögeket írunk, a sokszög területét ki tudjuk számolni, hiszen háromszögekre bontható. Ahogy a sokszög oldalszáma nő, a közelítés egyre jobb lesz: a közelítés *végtelenül finomodik*. De mit jelent pontosan az, hogy a sokszögterületek sorozata „megadja" a kör területét? Archimédész (i. e. 250 körül) ezt a **kimerítés módszerének** nevezte, és lényegében helyesen használta — de a fogalmi alapokat nem tudta lefektetni.

**A pillanatnyi sebesség problémája.** Ha $s(t)$ a megtett út a $t$ időpillanatban, akkor a $[t_0, t]$ időintervallumban mért átlagsebesség
$$\frac{\Delta s}{\Delta t} = \frac{s(t) - s(t_0)}{t - t_0}.$$
A *pillanatnyi* sebesség ennek a hányadosnak a határértéke, amikor $t \to t_0$; jelölésben $\frac{ds}{dt}$. Csakhogy $t = t_0$ esetén a hányados $\frac{0}{0}$ alakú, tehát értelmetlen. A kérdés tehát az: hogyan beszélhetünk egy hányados „végső" értékéről anélkül, hogy valaha is behelyettesítenénk?

Mindkét kérdés megválaszolásához két fogalomra van szükség: a **határértékre** és a **folytonosságra**. Ezek az analízis alappillérei.

**Történeti vázlat.** A csírák a görögöknél jelennek meg (Archimédész kimerítéses módszere), de a tényleges kalkulus a XVII–XVIII. században születik meg. Newton az 1665-ös pestisjárvány idején dolgozta ki alapgondolatait, amikor Cambridge-et bezárták és hazaköltözött; ugyanebben az időszakban, tőle függetlenül, Leibniz is eljutott a differenciál- és integrálszámításhoz. A két felfedezés prioritási vitája évtizedekre megmérgezte az angol és a kontinentális matematika viszonyát. A **szilárd alapokat** azonban csak a XIX–XX. században fektették le: Cauchy az $\varepsilon$–$\delta$ típusú definíciókkal, Weierstrass a teljes aritmetizálással, Dedekind pedig a valós számok szeletekkel történő megkonstruálásával.

## 2. Számhalmazok és a √2 irracionalitása

A valós számok szigorú, axiomatikus megalapozását (vagyis annak bizonyítását, hogy ilyen struktúra létezik, és lényegében egyértelmű) más tárgyra hagyjuk; itt az axiómákat adottnak vesszük, és megnézzük, mire elegendők.

**Definíció (alapvető számhalmazok).**

- $\mathbb{N} = \{1, 2, 3, \dots\}$ a **természetes számok** halmaza. (Egyes szerzők a nullával kezdik; ez pusztán konvenció kérdése.)
- $\mathbb{Z}$ az **egész számok** halmaza.
- $\mathbb{Q} = \left\{ \frac{p}{q} : p, q \in \mathbb{Z},\ q \neq 0 \right\}$ a **racionális számok** halmaza.

A racionális számok teste már gazdag: bármely két racionális szám között van további racionális szám, és a négy alapművelet (a nullával való osztást kivéve) nem vezet ki belőle. Ennek ellenére a $\mathbb{Q}$ „lyukacsos" — és ezt a legegyszerűbb geometriai kérdés is kideríti.

**Tétel.** $\sqrt{2} \notin \mathbb{Q}$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $\sqrt{2} = \frac{p}{q}$ valamely $p, q \in \mathbb{Z}$, $q \neq 0$ számokkal. Négyzetre emelve $2 = \frac{p^2}{q^2}$, azaz
$$2q^2 = p^2.$$
Tekintsük most a $2$-es prím kitevőjét a két oldal prímfelbontásában. A jobb oldalon $p^2$ áll, amelyben minden prím kitevője **páros** (hiszen egy négyzetszámról van szó). A bal oldalon $2q^2$ áll, amelyben a $2$ kitevője eggyel nagyobb, mint $q^2$-ben, tehát **páratlan**. A számelmélet alaptétele szerint a prímfelbontás egyértelmű, így a két kitevőnek meg kellene egyeznie — páros szám azonban nem lehet egyenlő páratlannal. Ellentmondás. $\blacksquare$

Ez az egyetlen állítás adja az egész félév motivációját: az egységnyi oldalú négyzet átlójának hossza *nem* racionális szám, tehát ha a számegyenest a racionális számokkal azonosítanánk, akkor a négyzet átlója „átlépne" egy lyukon. Ezt a lyukat kell betömni, és erre szolgál a teljességi axióma.

## 3. A rendezés axiómái

A valós számok rendszerét a $(\mathbb{R}, 0, 1, +, \cdot, <)$ struktúra írja le: két kitüntetett konstans ($0$ és $1$), két kétváltozós művelet ($+$ és $\cdot$), valamint egy kétváltozós reláció ($<$). A testaxiómákat (asszociativitás, kommutativitás, disztributivitás, inverzek létezése) ismertnek tételezzük; az analízis szempontjából a **rendezési** és a **teljességi** axiómák a lényegesek.

**Jelölések.** $a > b \iff b < a$, továbbá $a \le b \iff (a < b \ \text{vagy}\ a = b)$.

**A rendezési axiómák.**

- **$R_1$ (trichotómia).** Bármely $a, b \in \mathbb{R}$ esetén az
 $$a < b, \qquad a = b, \qquad b < a$$
 állítások közül **pontosan egy** teljesül.
- **$R_2$ (tranzitivitás).** Bármely $a, b, c \in \mathbb{R}$ esetén, ha $a < b$ és $b < c$, akkor $a < c$.
- **$R_3$ (összeadással való összeférhetőség).** Bármely $a, b, c \in \mathbb{R}$ esetén, ha $a < b$, akkor $a + c < b + c$.
- **$R_4$ (szorzással való összeférhetőség).** Bármely $a, b \in \mathbb{R}$ és bármely $c > 0$ esetén, ha $a < b$, akkor $ac < bc$.

Érdemes felfigyelni arra, hogy $R_4$-ben a $c > 0$ feltétel elhagyhatatlan: negatív számmal szorozva az egyenlőtlenség megfordul. Ez a megfigyelés — amely elemi iskolás szabálynak tűnik — valójában $R_3$ és $R_4$ következménye, nem pedig külön axióma.

## 4. Abszolút érték és háromszög-egyenlőtlenség

Az analízis alapvetően a **távolságról** szól: „$x$ közel van $a$-hoz" azt jelenti, hogy $|x - a|$ kicsi. Ezért az abszolút érték nem másodlagos technikai eszköz, hanem a tárgyalás központi jelölése.

**Definíció (abszolút érték).**
$$|x| = \begin{cases} x & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -x & \text{ha } x < 0. \end{cases}$$

Az első és a második eset természetesen összevonható: $|x| = x$, ha $x \ge 0$.

**Tétel (háromszög-egyenlőtlenség).** Minden $a, b \in \mathbb{R}$ esetén
$$|a + b| \le |a| + |b|.$$

*Bizonyítás.* Először két segédállítást igazolunk, amelyek közvetlenül a definícióból adódnak.

Ha $x \ge 0$, akkor $|x| = x$. Ha pedig $x < 0$, akkor $|x| = -x > 0 > x$. Mindkét esetben tehát
$$|x| \ge x.$$
Másrészt $|x| = |-x|$, és az előző állítást $-x$-re alkalmazva
$$|x| = |-x| \ge -x.$$

Most alkalmazzuk ezeket $a$-ra és $b$-re. Az első alakból
$$|a| \ge a \quad \text{és} \quad |b| \ge b \implies |a| + |b| \ge a + b.$$
A második alakból
$$|a| \ge -a \quad \text{és} \quad |b| \ge -b \implies |a| + |b| \ge -a - b = -(a+b).$$
Az $|a| + |b|$ tehát egyszerre felső korlátja $(a+b)$-nek és $-(a+b)$-nek. Mivel $|a+b|$ e két szám közül az egyik, adódik
$$|a + b| \le |a| + |b|. \qquad \blacksquare$$

## 5. Teljes indukció

A háromszög-egyenlőtlenség több tagra való általánosításához egy bizonyítási elvre van szükségünk, amely az egész félévet végigkíséri.

**A teljes indukció (TIND) elve.** Legyen $A_1, A_2, A_3, \dots$ állítások egy sorozata. Ha

1. $A_1$ igaz, és
2. minden $n \in \mathbb{N}$ esetén $A_n \implies A_{n+1}$ igaz,

akkor minden $n \in \mathbb{N}$-re $A_n$ igaz.

**Tétel (általánosított háromszög-egyenlőtlenség).** Minden $n \in \mathbb{N}$ és minden $a_1, \dots, a_n \in \mathbb{R}$ esetén
$$|a_1 + a_2 + \dots + a_n| \le |a_1| + |a_2| + \dots + |a_n|.$$

*Bizonyítás.* Legyen $A_n$ az az állítás, hogy
$$|a_1 + \dots + a_{n+1}| \le |a_1| + \dots + |a_{n+1}|.$$

**Kezdőlépés.** $A_1$ éppen a már bizonyított kéttagú háromszög-egyenlőtlenség: $|a_1 + a_2| \le |a_1| + |a_2|$. Ez igaz.

**Indukciós lépés.** Tegyük fel, hogy $A_n$ igaz. Csoportosítsuk az $(n+2)$ tagot úgy, hogy az első $(n+1)$ tagot egyetlen $A$ számnak, az utolsót $B$-nek tekintjük:
$$|\underbrace{a_1 + \dots + a_{n+1}}_{A} + \underbrace{a_{n+2}}_{B}| \le |a_1 + \dots + a_{n+1}| + |a_{n+2}|,$$
ahol a kéttagú háromszög-egyenlőtlenséget alkalmaztuk. Az indukciós feltevés szerint az első tag becsülhető:
$$\le |a_1| + \dots + |a_{n+1}| + |a_{n+2}|.$$
Ezzel $A_{n+1}$-et igazoltuk, tehát a TIND elve szerint az állítás minden $n$-re fennáll. $\blacksquare$

## 6. A bővített számegyenes és az intervallumok

**Definíció (bővített számegyenes).** Vezessünk be két új **szimbólumot**, $+\infty$-t és $-\infty$-t, amelyek *nem* valós számok: $+\infty, -\infty \notin \mathbb{R}$. A rendezést kiterjesztjük rájuk azzal a megállapodással, hogy
$$\forall x \in \mathbb{R}: \quad -\infty < x < +\infty.$$
A
$$\overline{\mathbb{R}} = \mathbb{R} \cup \{+\infty\} \cup \{-\infty\}$$
halmazt **bővített számegyenesnek** nevezzük.

Hangsúlyozni kell: a $\pm\infty$ szimbólumok, nem számok. Nem alkotnak testet, a szokásos műveletek nem terjeszthetők ki rájuk maradéktalanul (ezt a „kritikus határértékek" tárgyalásánál látjuk majd). Egyetlen szerepük, hogy a „minden határon túl nő" fordulatot tömören kimondhassuk.

**Definíció (intervallumok).** Ha $a, b \in \mathbb{R}$ és $a \le b$, akkor
a **zárt intervallum**:
$$[a, b] = \{x \in \mathbb{R} : a \le x \le b\},$$
a **nyílt intervallum**:
$$(a, b) = \{x \in \mathbb{R} : a < x < b\}.$$
Hasonlóan értelmezzük a félig zárt $[a, b)$ és $(a, b]$ intervallumokat. Végtelen hosszúságú intervallumok:
$$(-\infty, a] = \{x \in \mathbb{R} : x \le a\} \quad \text{zárt félegyenes},$$
továbbá $(-\infty, a)$, $[a, +\infty)$, $(a, +\infty)$.

## 7. Korlátosság, maximum és minimum

**Definíció (korlát).** Legyen $H \subset \mathbb{R}$. Az $a \in \mathbb{R}$ szám **felső korlátja** $H$-nak, ha minden $h \in H$ esetén $h \le a$; **alsó korlátja**, ha minden $h \in H$ esetén $h \ge a$. Ha $H$-nak van felső (alsó) korlátja, akkor $H$-t **felülről (alulról) korlátosnak** nevezzük. Ha $H$ alulról is és felülről is korlátos, akkor egyszerűen **korlátos**.

**Megjegyzés.** $H$ akkor és csak akkor korlátos, ha $\exists K \in \mathbb{R}$, amelyre minden $h \in H$ esetén $|h| \le K$.

*Bizonyítás.* Ha $|h| \le K$ minden $h$-ra, akkor $-K \le h \le K$, tehát $-K$ alsó, $K$ felső korlát. Megfordítva, ha $m$ alsó és $M$ felső korlát, azaz $m \le h \le M$ minden $h \in H$-ra, akkor a
$$K \stackrel{\text{def}}{=} \max\{|m|, |M|\}$$
választás megfelelő korlát. $\blacksquare$

**Definíció (maximum, minimum).** Ha $H \subset \mathbb{R}$ és létezik olyan $M \in H$ elem, amelyre minden $h \in H$ esetén $h \le M$, akkor $M$-et a $H$ **legnagyobb elemének**, azaz **maximumának** nevezzük; jelölése $\max H$. Hasonlóan, ha létezik $m \in H$, amelyre minden $h \in H$-ra $h \ge m$, akkor $m$ a $H$ **minimuma**, jelölése $\min H$.

Döntő mozzanat, hogy a maximumnak **eleme kell legyen** a halmaznak.

**Példa.** Legyen $H = (0, 1]$. Ekkor $\max H = 1$ (hiszen $1 \in H$, és minden elem legfeljebb $1$), de $\min H$ **nem létezik**: bármely $h \in (0,1]$ esetén $h/2$ is a halmazban van, és kisebb $h$-nál.

**Megfigyelés.** Ha $\max H$ létezik, akkor felső korlátja $H$-nak. Sőt, ha $b \in \mathbb{R}$ tetszőleges felső korlátja $H$-nak, akkor $\max H \le b$, hiszen $\max H \in H$. Vagyis
$$\max H \ \text{a } H \ \text{legkisebb felső korlátja (l.k.f.k.).}$$

Ez a megfigyelés mutatja meg, hogyan általánosítsunk. A maximum gyakran nem létezik, a *legkisebb felső korlát* azonban — mint mindjárt látni fogjuk — mindig igen. Egy feltétellel: ha $\mathbb{R}$-ben dolgozunk, nem $\mathbb{Q}$-ban.

**A $\mathbb{Q}$ hiányossága.** Legyen
$$H_{\sqrt{2}} = \{x \in \mathbb{Q} : x^2 < 2\}.$$
Ennek a halmaznak **van** racionális felső korlátja: például $2$ jó, hiszen ha $x > 2$, akkor $x^2 > 4 > 2$, tehát $x \notin H_{\sqrt{2}}$. Ugyanakkor $H_{\sqrt{2}}$-nek **nincs** $\mathbb{Q}$-beli *legkisebb* felső korlátja: bármely racionális felső korlát fölé mindig találunk egy nála kisebbet, mert az „ideális" legkisebb felső korlát $\sqrt{2}$ volna, ez pedig a 2. szakasz tétele szerint nem racionális. A $\mathbb{Q}$ tehát lyukacsos, és pontosan ezt a lyukat tömi be a következő axióma.

## 8. A teljességi axióma: szuprémum és infimum

**Teljességi tulajdonság (axióma).** Ha $H \subset \mathbb{R}$, $H \neq \emptyset$ és $H$ felülről korlátos, akkor $H$-nak **van** $\mathbb{R}$-beli legkisebb felső korlátja. Ezt a $H$ **szuprémumának** (más néven felső határának) nevezzük; jelölése $\sup H$.

**Tétel.** Ha létezik, akkor $\sup H$ egyértelmű.

*Bizonyítás.* Ha $s_1$ és $s_2$ is legkisebb felső korlát volna, akkor mindkettő felső korlát, így a „legkisebb" tulajdonságból $s_1 \le s_2$ és $s_2 \le s_1$, tehát $s_1 = s_2$. $\blacksquare$

Az alsó oldalra vonatkozó állítást nem kell külön axiómaként kimondani: következik.

**Tétel (az infimum létezése).** Ha $H \neq \emptyset$ és $H$ alulról korlátos, akkor $H$-nak van legnagyobb alsó korlátja (**infimuma**, jelölése $\inf H$).

*Bizonyítás.* Tekintsük a tükrözött halmazt:
$$-H = \{-h : h \in H\}.$$
Ez nem üres, és felülről korlátos (ha $k$ alsó korlátja $H$-nak, akkor $-k$ felső korlátja $-H$-nak). A teljességi tulajdonság szerint tehát létezik
$$M = \sup(-H) \in \mathbb{R}.$$
Legyen $m = -M$. Először: $m$ alsó korlát. Valóban, minden $h \in H$ esetén $-h \le M$, azaz $h \ge -M = m$.

Másodszor: $m$ a **legnagyobb** alsó korlát. Tegyük fel indirekt, hogy létezik $m' > m$ alsó korlát. Ekkor minden $h \in H$-ra $m' \le h$, tehát $-m' \ge -h$, azaz $-m'$ felső korlátja $-H$-nak. Csakhogy $m < m'$ miatt $-m' < -m = M$, vagyis találtunk $M$-nél kisebb felső korlátot $-H$-hoz — ez ellentmond annak, hogy $M = \sup(-H)$ a legkisebb felső korlát. $\blacksquare$

**Egyezmény (a $\pm\infty$ használata).** A jelölés kiterjesztésével minden halmaznak lesz szuprémuma és infimuma a bővített számegyenesen:

- Ha $H \neq \emptyset$ nem korlátos felülről, akkor $\sup H = +\infty$.
- Ha $H \neq \emptyset$ nem korlátos alulról, akkor $\inf H = -\infty$.
- $\sup \emptyset = -\infty$ és $\inf \emptyset = +\infty$.

Az üres halmazra vonatkozó megállapodás elsőre meghökkentő, de következetes: az üres halmaznak *minden* valós szám felső korlátja, így a legkisebb felső korlát csak $-\infty$ lehet.

**Megjegyzés.** Ha $\max H$ létezik, akkor $\max H = \sup H$. A megfordítás nem igaz: $\max(0,1)$ nem létezik, de $\sup(0,1) = 1$. A szuprémum tehát a maximum „általánosítása", amely akkor is létezik, amikor a halmaz nem éri el a saját határát.

## 9. Az arkhimédészi és a Cantor-féle tulajdonság

A teljességi axióma két olyan következménnyel jár, amelyek önmagukban is alapvetők, és amelyeket sok felépítésben külön axiómaként mondanak ki.

**Tétel (arkhimédészi tulajdonság).** Minden $x \in \mathbb{R}$-hez létezik olyan $n \in \mathbb{N}$, amelyre $n > x$.

Szemléletesen: a természetes számok „minden határon túl nőnek", nincs olyan valós szám, amely az egész $\mathbb{N}$ fölött volna. Ez nyilvánvalónak tűnik — mégis bizonyításra szorul, és éppen a teljességből következik.

*Bizonyítás.* Indirekt. Tegyük fel, hogy létezik olyan $a \in \mathbb{R}$, amelyre minden $n \in \mathbb{N}$ esetén $a > n$. Ekkor $H = \mathbb{N}$ nem üres és felülről korlátos (hiszen $a$ felső korlát), így a teljességi tulajdonság szerint létezik
$$c = \sup \mathbb{N} \in \mathbb{R}.$$
Mivel $c$ felső korlát, minden $n \in \mathbb{N}$-re $c \ge n$. Alkalmazzuk ezt az $n+1$ természetes számra: minden $n$-re $c \ge n + 1$, azaz
$$c - 1 \ge n.$$
Eszerint $c - 1$ is felső korlátja $\mathbb{N}$-nek. Csakhogy $c - 1 < c$, ami ellentmond annak, hogy $c$ a **legkisebb** felső korlát. $\blacksquare$

**Tétel (Cantor-féle tulajdonság).** Ha az
$$[a_1, b_1] \supset [a_2, b_2] \supset [a_3, b_3] \supset \dots$$
egymásba skatulyázott korlátos zárt intervallumok sorozata, akkor
$$\bigcap_{n=1}^{\infty} [a_n, b_n] \neq \emptyset.$$

*Bizonyítás.* Az egymásba skatulyázottság azt jelenti, hogy a bal végpontok növekednek, a jobb végpontok csökkennek:
$$a_1 \le a_2 \le a_3 \le \dots \quad \text{és} \quad b_1 \ge b_2 \ge b_3 \ge \dots,$$
és persze minden $n$-re $a_n \le b_n$.

Legyen $H = \{a_n : n \in \mathbb{N}\}$. Ez nem üres, és felülről korlátos: $b_1 \ge b_n \ge a_n$ minden $n$-re, tehát $b_1$ felső korlát. A teljességi tulajdonság szerint létezik
$$c \stackrel{\text{def}}{=} \sup H \in \mathbb{R}.$$

Azt állítjuk, hogy **minden** $b_n$ felső korlátja $H$-nak. Legyen $n$ rögzített, és tekintsünk egy tetszőleges $a_k$ elemet.

- Ha $k \le n$, akkor $a_k \le a_n \le b_n$.
- Ha $k \ge n$, akkor $a_k \le b_k \le b_n$.

Mindkét esetben $a_k \le b_n$, tehát $b_n$ valóban felső korlát. Mivel $c$ a legkisebb felső korlát, ebből $c \le b_n$ következik minden $n$-re. Másrészt $c$ felső korlát, így $a_n \le c$ minden $n$-re. Összefoglalva
$$a_n \le c \le b_n \quad \text{minden } n \in \mathbb{N}\text{-re,}$$
azaz $c \in [a_n, b_n]$ minden $n$-re, tehát $c$ eleme a metszetnek. $\blacksquare$

**Megjegyzés (az axiómarendszer rugalmassága).** Megmutatható, hogy a teljességi tulajdonság **ekvivalens** az arkhimédészi és a Cantor-féle tulajdonság együttesével:
$$(\text{Teljességi tul.}) \iff \big( (\text{Arkhimédészi tul.}) \wedge (\text{Cantor-féle tul.}) \big).$$
Az egyik irányt éppen most láttuk. Ez azt jelenti, hogy többféle axiomatikus felépítés lehetséges: vagy a szuprémum-elvet posztuláljuk, vagy az arkhimédészi és Cantor-tulajdonságot — ugyanoda jutunk.

---
