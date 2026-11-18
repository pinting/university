# I. RÉSZ: A VALÓS SZÁMOK

Az analízis a valós számokra épül, ezért az első feladatunk annak tisztázása, mit tudunk róluk. Középiskolából mindenki „ismeri” a valós számokat: a számegyenes pontjai, tizedes törtek, amelyekkel lehet számolni. Ez a kép azonban pontatlan, és éppen ott hallgat, ahol a legérdekesebb kérdések kezdődnek: mit jelent egy végtelen tizedes tört? Miért van $\sqrt{2}$? Miért van egy szám, amelynek a négyzete $2$, de nincs olyan *tört*, amelynek a négyzete $2$?

Ebben a részben a valós számokat **axiómákkal** írjuk le: felsoroljuk azokat a tulajdonságokat, amelyeket elfogadunk, és minden mást ezekből vezetünk le. A rész csúcspontja a **teljességi axióma** (8. szakasz), amely az egész analízis motorja lesz.

## 1. Bevezetés: mi az analízis?

Az analízis — hagyományos nevén **differenciál- és integrálszámítás**, angol nyelvterületen *calculus* — a függvények viselkedését vizsgálja a **határérték** fogalmán keresztül. Mielőtt bármit definiálnánk, nézzük meg azt a két klasszikus problémát, amelyből az egész tudományág kinőtt. Mindkettőben ugyanaz a nehézség rejlik: egy véges eljárást végtelen sokszor kell finomítanunk, és a kérdés az, hogy a finomítások „végén” mi áll.

### A területszámítás problémája

Hogyan számíthatjuk ki egy egységsugarú kör területét? A sokszögek területét ki tudjuk számolni, hiszen háromszögekre bonthatók. Írjunk tehát a körbe szabályos $n$-szöget! Ez $n$ darab egybevágó egyenlő szárú háromszögre bontható, amelyek szára $1$ (a kör sugara), szárszöge pedig $\frac{2\pi}{n}$ (radiánban). Egy ilyen háromszög területe $\frac{1}{2}\cdot 1 \cdot 1 \cdot \sin\frac{2\pi}{n}$, így a sokszög területe
$$T_n = \frac{n}{2}\sin\frac{2\pi}{n}.$$
Néhány érték: $T_4 = 2$, $T_6 \approx 2{,}598$, $T_{12} = 3$, $T_{100} \approx 3{,}1395$, $T_{1000} \approx 3{,}14157$. Ahogy $n$ nő, a sokszög egyre jobban kitölti a kört, és a $T_n$ számok egyre közelebb kerülnek egy bizonyos számhoz, amelyet $\pi$-vel jelölünk.

De mit jelent pontosan az, hogy a $T_n$ számok „egyre közelebb kerülnek” $\pi$-hez? Egyik $T_n$ sem egyenlő $\pi$-vel, és nincs „utolsó” sokszög. Archimédész (i. e. 250 körül) ezt a módszert **kimerítésnek** nevezte, és lényegében helyesen használta, de pontos fogalmi alapokat nem tudott neki adni. Ezt az alapot a 18. szakaszban rakjuk le, a sorozat határértékének definíciójával. (A 70. szakaszban pedig azt is be fogjuk látni, hogy $T_n \to \pi$ valóban teljesül: ehhez a $\frac{\sin x}{x} \to 1$ határértékre lesz szükség.)

### A pillanatnyi sebesség problémája

Ejtsünk le egy követ. A fizika szerint (a légellenállást elhanyagolva, és a nehézségi gyorsulást $10\ \mathrm{m/s^2}$-re kerekítve) $t$ másodperc alatt
$$s(t) = 5t^2$$
métert esik. Mekkora a sebessége pontosan az $1$. másodpercben?

Az **átlagsebességet** ki tudjuk számolni: a $[1, 1+h]$ időintervallumban a megtett út $s(1+h) - s(1)$, az eltelt idő $h$, tehát az átlagsebesség
$$\frac{s(1+h) - s(1)}{h} = \frac{5(1+h)^2 - 5}{h} = \frac{5 + 10h + 5h^2 - 5}{h} = 10 + 5h.$$
Néhány érték: $h = 1$-re $15$, $h = 0{,}1$-re $10{,}5$, $h = 0{,}01$-re $10{,}05$, $h = 0{,}001$-re $10{,}005$ méter/másodperc. Úgy tűnik, hogy a *pillanatnyi* sebesség $10$ m/s. Csakhogy $h = 0$-t nem helyettesíthetünk be az eredeti törtbe: $\frac{0}{0}$ értelmetlen. A $10 + 5h$ alakba persze behelyettesíthetünk, de csak azért jutottunk el ide, mert $h \neq 0$ esetén egyszerűsítettünk $h$-val.

A kérdés tehát: **hogyan beszélhetünk egy hányados „végső” értékéről anélkül, hogy valaha is behelyettesítenénk a tiltott értéket?** A válasz ismét a határérték lesz, ezúttal függvényekre (45–46. szakasz), és belőle születik a **derivált** fogalma (66. szakasz).

### Mi kell a válaszhoz?

Mindkét problémához két alapfogalomra lesz szükségünk: a **határértékre** és a **folytonosságra**. Ezek precíz megfogalmazásához viszont először azt kell pontosan tudnunk, milyen számokkal dolgozunk — és itt egy meglepetés vár ránk. A racionális számok (a törtek) **nem elegendők**: a 2. szakaszban látni fogjuk, hogy a legegyszerűbb geometriai mennyiségek egyike sem racionális. A határértékekhez olyan számkörre van szükség, amelyben „nincsenek lyukak”. Ez lesz a valós számok teste.

### Egy kis történelem

A gondolat csírái a görögöknél jelennek meg (Archimédész kimerítéses módszere), de a tényleges kalkulus a XVII. században születik meg. Isaac Newton az 1665-ös pestisjárvány idején dolgozta ki alapgondolatait, amikor a Cambridge-i Egyetemet bezárták, és ő hazaköltözött; ugyanebben az időszakban, tőle függetlenül Gottfried Wilhelm Leibniz is eljutott a differenciál- és integrálszámításhoz. A két felfedezés prioritási vitája évtizedekre megmérgezte az angol és a kontinentális matematika viszonyát. (A mai jelöléseink, például a $\frac{dy}{dx}$, nagyrészt Leibniztől származnak.)

A kalkulust a XVIII. században rendkívül sikeresen alkalmazták — de az alapjai bizonytalanok maradtak. Mit jelent egy „végtelenül kicsiny” mennyiség? Egyszerre nulla is, meg nem is? A **szilárd alapokat** csak a XIX. században fektették le: Augustin-Louis Cauchy az $\varepsilon$–$\delta$ típusú definíciókkal, Karl Weierstrass a teljes „aritmetizálással”, Richard Dedekind pedig a valós számok megkonstruálásával. Ez a könyv ezt a XIX. századi, szigorú utat követi.

## 2. Számhalmazok és a √2 irracionalitása

A valós számok axiomatikus megalapozását — azt, hogy létezik a következő szakaszokban leírt tulajdonságokkal rendelkező számkör, és ez lényegében egyértelmű — más tárgyra hagyjuk. Itt az axiómákat adottnak vesszük, és azt vizsgáljuk, mire elegendők. Először azonban idézzük fel a már ismert számhalmazokat.

> **Definíció (alapvető számhalmazok).**
>
> - $\mathbb{N} = \{1, 2, 3, \dots\}$ a **természetes számok** halmaza.
> - $\mathbb{Z} = \{\dots, -2, -1, 0, 1, 2, \dots\}$ az **egész számok** halmaza.
> - $\mathbb{Q} = \left\{ \frac{p}{q} : p, q \in \mathbb{Z},\ q \neq 0 \right\}$ a **racionális számok** halmaza.

(Egyes szerzők a nullát is természetes számnak tekintik; ez pusztán megállapodás kérdése. Ebben a könyvben $0 \notin \mathbb{N}$.)

Nyilvánvalóan $\mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q}$. Mindegyik bővítésnek megvolt az oka: az $\mathbb{N}$-ben nem lehet korlátlanul kivonni ($3 - 5 \notin \mathbb{N}$), a $\mathbb{Z}$-ben nem lehet korlátlanul osztani ($1 : 2 \notin \mathbb{Z}$). A $\mathbb{Q}$-ban viszont a négy alapművelet — a nullával való osztás kivételével — nem vezet ki a halmazból. Sőt, a racionális számok **sűrűn** helyezkednek el: bármely két racionális szám között van további racionális szám, hiszen ha $a < b$ racionálisak, akkor
$$a < \frac{a+b}{2} < b,$$
és $\frac{a+b}{2}$ is racionális. Ezt az eljárást ismételve azt kapjuk, hogy bármely két racionális szám között **végtelen sok** racionális szám van.

Mindezek alapján azt gondolhatnánk, hogy a racionális számok „kitöltik” a számegyenest. A következő tétel megmutatja, hogy ez nincs így.

> **Tétel.** Nincs olyan racionális szám, amelynek a négyzete $2$. Röviden: $\sqrt{2} \notin \mathbb{Q}$.

Miért fontos ez? Pitagorasz tétele szerint az egységnyi oldalú négyzet átlójának $d$ hosszára $d^2 = 1^2 + 1^2 = 2$. A tétel tehát azt mondja, hogy **a négyzet átlójának hossza nem írható fel két egész szám hányadosaként**. A legenda szerint ez a felfedezés annyira megrázta a püthagoreusokat — akik szerint „minden szám” (értsd: minden arány egész számok aránya) —, hogy a felfedezőjét, Hippaszoszt a tengerbe vetették.

Két bizonyítást is adunk; mindkettő **indirekt** (lásd a D. szakaszt): feltesszük, hogy az állítás hamis, és ellentmondásra jutunk.

*Első bizonyítás (a párosság segítségével).* Tegyük fel indirekt, hogy $\sqrt{2} = \frac{p}{q}$, ahol $p, q$ egész számok és $q \neq 0$. Feltehetjük, hogy a tört **már egyszerűsített alakban** van, vagyis $p$ és $q$ nem mindketten párosak (ha mindkettő páros volna, egyszerűsíthetnénk $2$-vel, és ezt addig ismételhetjük, amíg az egyikük páratlan nem lesz).

Négyzetre emelve és $q^2$-tel szorozva:
$$2q^2 = p^2.$$
A bal oldal páros, tehát $p^2$ páros. Ebből következik, hogy $p$ is páros — hiszen páratlan szám négyzete páratlan: $(2k+1)^2 = 4k^2 + 4k + 1$. Legyen tehát $p = 2k$. Behelyettesítve
$$2q^2 = 4k^2 \implies q^2 = 2k^2,$$
tehát $q^2$ is páros, és ugyanígy $q$ is páros. Ez ellentmond annak, hogy $p$ és $q$ nem mindketten párosak. $\blacksquare$

*Második bizonyítás (a prímfelbontás egyértelműségével).* Ismét induljunk a $2q^2 = p^2$ egyenlőségből, de most ne tegyük fel, hogy a tört egyszerűsített. Vizsgáljuk meg, hányszor szerepel a $2$-es prímtényező a két oldal prímfelbontásában. A jobb oldalon $p^2$ áll; ha $p$-ben a $2$ kitevője $a$, akkor $p^2$-ben $2a$, ami **páros**. A bal oldalon, ha $q$-ban a $2$ kitevője $b$, akkor $2q^2$-ben $2b + 1$, ami **páratlan**. A számelmélet alaptétele szerint a prímfelbontás egyértelmű, tehát a két kitevőnek meg kellene egyeznie — páros szám azonban nem lehet egyenlő páratlannal. Ellentmondás. $\blacksquare$

A második bizonyítás előnye, hogy azonnal általánosítható: ugyanígy látható be, hogy ha $n$ pozitív egész, de nem négyzetszám, akkor $\sqrt{n}$ irracionális (lásd az 1. feladatot a rész végén).

**Mit tanultunk ebből?** Ha a számegyenest csak a racionális számokkal azonosítanánk, akkor a négyzet átlóját felmérve a számegyenesre, a végpont egy „lyukba” esne. A racionális számok tehát — bármilyen sűrűn helyezkednek is el — **nem töltik ki** a számegyenest. Ezt a lyukat kell betömni, és erre szolgál majd a teljességi axióma (8. szakasz). Hangsúlyozzuk: egyelőre csak annyit tudunk, hogy *racionális* szám nem lehet $\sqrt{2}$; azt, hogy egyáltalán *létezik* olyan valós szám, amelynek négyzete $2$, csak az 54. szakaszban fogjuk bebizonyítani.

## 3. A rendezés axiómái

A valós számok rendszerét egy **struktúrával** írjuk le:
$$(\mathbb{R},\ 0,\ 1,\ +,\ \cdot,\ <).$$
Ez a jelölés azt fejezi ki, hogy van egy $\mathbb{R}$ halmaz, benne két kitüntetett elem ($0$ és $1$), két művelet (az összeadás és a szorzás) és egy reláció (a „kisebb”). Ezekről háromféle axiómát követelünk meg: testaxiómákat, rendezési axiómákat és a teljességi axiómát.

**A testaxiómák** a négy alapművelet középiskolából ismert szabályait foglalják össze. Minden $a, b, c \in \mathbb{R}$ esetén:

- az összeadás és a szorzás **kommutatív**: $a + b = b + a$, $ab = ba$;
- **asszociatív**: $(a+b)+c = a+(b+c)$, $(ab)c = a(bc)$;
- **disztributív**: $a(b + c) = ab + ac$;
- van **nullelem** és **egységelem**: $a + 0 = a$, $a \cdot 1 = a$, és $0 \neq 1$;
- van **ellentett**: minden $a$-hoz van $-a$, amelyre $a + (-a) = 0$;
- van **reciprok**: minden $a \neq 0$-hoz van $a^{-1} = \frac{1}{a}$, amelyre $a \cdot a^{-1} = 1$.

Ezekből levezethető minden szokásos algebrai azonosság (például $0 \cdot a = 0$, $(-a)(-b) = ab$, $(a+b)^2 = a^2 + 2ab + b^2$); ezeket ismertnek tekintjük. Érdemes azonban tudni, hogy a testaxiómák önmagukban kevesek: a racionális számok is kielégítik őket, sőt olyan furcsa „számkörök” is, amelyekben $1 + 1 = 0$. Az analízis szempontjából a lényeges axiómák a **rendezési** és a **teljességi** axiómák.

**Jelölések.** $a > b$ jelentése: $b < a$. Továbbá $a \le b$ jelentése: $a < b$ vagy $a = b$. Egy szám **pozitív**, ha $a > 0$, **negatív**, ha $a < 0$, **nemnegatív**, ha $a \ge 0$.

> **A rendezési axiómák.**
>
> - **$R_1$ (trichotómia).** Bármely $a, b \in \mathbb{R}$ esetén az $a < b$, $a = b$, $b < a$ állítások közül **pontosan egy** teljesül.
> - **$R_2$ (tranzitivitás).** Ha $a < b$ és $b < c$, akkor $a < c$.
> - **$R_3$ (összeadással való összeférhetőség).** Ha $a < b$, akkor minden $c$-re $a + c < b + c$.
> - **$R_4$ (szorzással való összeférhetőség).** Ha $a < b$ és $c > 0$, akkor $ac < bc$.

Ezek a szabályok annyira természetesek, hogy elsőre fölöslegesnek tűnhet kimondani őket. A tanulság éppen az, hogy **minden** egyenlőtlenségekre vonatkozó számolási szabály, amit iskolában tanultunk, ebből a négy axiómából (és a testaxiómákból) levezethető. Nézzünk néhányat — ezek a levezetések egyben jó gyakorlatot nyújtanak az axiomatikus gondolkodásban.

> **Állítás (az egyenlőtlenségek alapvető szabályai).** Minden $a, b, c, d \in \mathbb{R}$ esetén:
>
> 1. $a < b \iff 0 < b - a$.
> 2. Ha $a < b$ és $c < d$, akkor $a + c < b + d$.
> 3. Ha $a < b$ és $c < 0$, akkor $ac > bc$ (negatív számmal szorozva az egyenlőtlenség megfordul).
> 4. Ha $a \neq 0$, akkor $a^2 > 0$. Speciálisan $1 > 0$.
> 5. Ha $0 < a < b$, akkor $0 < \frac{1}{b} < \frac{1}{a}$.

*Bizonyítás.*

1. Ha $a < b$, akkor $R_3$ szerint, $c = -a$-t hozzáadva, $a + (-a) < b + (-a)$, azaz $0 < b - a$. Megfordítva, ha $0 < b - a$, akkor $c = a$-t hozzáadva $a < b$.

2. $R_3$ szerint $a + c < b + c$ (a $c$-t adtuk hozzá) és $b + c < b + d$ (a $b$-t adtuk hozzá a $c < d$ egyenlőtlenséghez). $R_2$ szerint $a + c < b + d$.

3. Ha $c < 0$, akkor az 1. pont szerint $0 < 0 - c = -c$. Az $R_4$ axiómát a pozitív $-c$ számmal alkalmazva $a(-c) < b(-c)$, azaz $-ac < -bc$. Mindkét oldalhoz $ac + bc$-t adva ($R_3$): $bc < ac$.

4. Ha $a > 0$, akkor $R_4$ szerint (a $0 < a$ egyenlőtlenséget $a$-val szorozva) $0 \cdot a < a \cdot a$, azaz $0 < a^2$. Ha $a < 0$, akkor $-a > 0$, így az előző eset szerint $0 < (-a)^2 = a^2$. Mivel a testaxiómák szerint $1 \neq 0$, ezért $1 = 1^2 > 0$.

5. Először: $\frac{1}{a} > 0$. Valóban, ha $\frac{1}{a} < 0$ volna, akkor a 3. pont szerint az $a > 0$ egyenlőtlenséget a negatív $\frac{1}{a}$-val szorozva $1 = a \cdot \frac{1}{a} < 0 \cdot \frac{1}{a} = 0$ adódna, ellentmondásban a 4. ponttal; $\frac{1}{a} = 0$ pedig nem lehet, mert akkor $1 = a \cdot \frac{1}{a} = 0$ volna. Hasonlóan $\frac{1}{b} > 0$, tehát $\frac{1}{ab} = \frac{1}{a}\cdot\frac{1}{b} > 0$. Az $a < b$ egyenlőtlenséget a pozitív $\frac{1}{ab}$-vel szorozva $\frac{1}{b} < \frac{1}{a}$. $\blacksquare$

Érdemes megfigyelni, hogy a 4. pont egy olyan tényt igazol, amelyet sosem kérdőjeleztünk meg: hogy $1$ pozitív. Az axiómák szempontjából ez nem magától értetődő — be kellett bizonyítani. Ugyanígy az is, hogy negatív számmal szorozva megfordul az egyenlőtlenség: ez **nem** külön axióma, hanem $R_3$ és $R_4$ következménye. Az $R_4$-ben szereplő $c > 0$ feltétel tehát nem elhagyható, de nem is kell mellé egy „negatív” változatot külön kimondani.

## 4. Abszolút érték és háromszög-egyenlőtlenség

Az analízis alapvetően a **távolságról** szól. Amikor azt mondjuk, hogy „$x$ közel van $a$-hoz”, azt értjük alatta, hogy az $x$ és $a$ közötti távolság kicsi. A számegyenesen két pont távolsága a különbségük abszolút értéke, ezért az abszolút érték nem másodlagos technikai eszköz, hanem az egész tárgyalás központi jelölése.

> **Definíció (abszolút érték).** Egy $x \in \mathbb{R}$ szám abszolút értéke
> $$|x| = \begin{cases} x & \text{ha } x > 0, \\ 0 & \text{ha } x = 0, \\ -x & \text{ha } x < 0. \end{cases}$$

Az első két eset természetesen összevonható: $|x| = x$, ha $x \ge 0$. Például $|3| = 3$, $|-3| = 3$, $|0| = 0$. A definícióból azonnal látszik, hogy $|x| \ge 0$ minden $x$-re, és $|x| = 0$ pontosan akkor, ha $x = 0$.

**Geometriai jelentés.** $|x|$ az $x$ pont távolsága a $0$-tól a számegyenesen, és általában
$$|x - a| = \text{az } x \text{ és } a \text{ pontok távolsága}.$$
Ez a jelentés teszi lehetővé, hogy a „közelséget” egyenlőtlenségekkel fejezzük ki.

> **Állítás (az abszolút érték alaptulajdonságai).** Minden $a, b, x \in \mathbb{R}$ és $r > 0$ esetén
>
> 1. $|x| = |-x|$, továbbá $-|x| \le x \le |x|$;
> 2. $|ab| = |a| \cdot |b|$;
> 3. $|x| < r \iff -r < x < r$; és ugyanígy $|x| \le r \iff -r \le x \le r$.

*Bizonyítás.* Az 1. és 2. pont esetszétválasztással közvetlenül adódik a definícióból (a 2. pontnál négy esetet kell megnézni aszerint, hogy $a$ és $b$ nemnegatív vagy negatív).

A 3. pont: ha $x \ge 0$, akkor $|x| < r$ azt jelenti, hogy $x < r$; a $-r < x$ pedig automatikusan teljesül, hiszen $-r < 0 \le x$. Ha $x < 0$, akkor $|x| < r$ azt jelenti, hogy $-x < r$, azaz $-r < x$; az $x < r$ pedig automatikusan teljesül, hiszen $x < 0 < r$. Mindkét esetben a két állítás ugyanazt jelenti. $\blacksquare$

A 3. pontot a távolság nyelvén is érdemes kimondani, mert ez lesz a leggyakrabban használt átalakításunk:
$$|x - a| < r \iff a - r < x < a + r.$$
Vagyis az $a$-tól $r$-nél kisebb távolságra lévő pontok éppen az $(a - r, a + r)$ nyílt intervallum pontjai.

**Kidolgozott példa.** Oldjuk meg a $|2x - 1| < 5$ egyenlőtlenséget! A 3. pont szerint ez ekvivalens a
$$-5 < 2x - 1 < 5$$
kettős egyenlőtlenséggel. Mindhárom részhez $1$-et adva $-4 < 2x < 6$, majd $2$-vel osztva $-2 < x < 3$. A megoldáshalmaz tehát a $(-2, 3)$ intervallum. Ellenőrzésképpen: az eredeti egyenlőtlenség $|x - \tfrac{1}{2}| < \tfrac{5}{2}$ alakban azt mondja, hogy $x$ az $\frac{1}{2}$-től $\frac{5}{2}$-nél kisebb távolságra van — és valóban, $\frac{1}{2} - \frac{5}{2} = -2$, $\frac{1}{2} + \frac{5}{2} = 3$.

Most következik az analízis talán leggyakrabban használt egyenlőtlensége.

> **Tétel (háromszög-egyenlőtlenség).** Minden $a, b \in \mathbb{R}$ esetén
> $$|a + b| \le |a| + |b|.$$

**Miért ez a neve?** Síkvektorokra az $|\underline{a} + \underline{b}| \le |\underline{a}| + |\underline{b}|$ egyenlőtlenség azt fejezi ki, hogy egy háromszögben bármely oldal legfeljebb akkora, mint a másik kettő összege. A valós számegyenes ennek egydimenziós esete.

*Bizonyítás.* Az alaptulajdonságok 1. pontja szerint
$$-|a| \le a \le |a| \qquad \text{és} \qquad -|b| \le b \le |b|.$$
Ezeket összeadva (az előző szakasz 2. szabályának gyenge változatával):
$$-\big(|a| + |b|\big) \le a + b \le |a| + |b|.$$
Az alaptulajdonságok 3. pontja szerint (az $r = |a| + |b|$ választással) ez pontosan azt jelenti, hogy $|a + b| \le |a| + |b|$. $\blacksquare$

(Ha $|a| + |b| = 0$, akkor $a = b = 0$, és az állítás triviális; a 3. pontot $r > 0$-ra mondtuk ki, de a gyenge egyenlőtlenséges változat $r = 0$-ra is nyilvánvalóan igaz.)

Érdemes megjegyezni, mikor áll egyenlőség: pontosan akkor, ha $a$ és $b$ azonos előjelű (vagy valamelyik nulla). Ha ellentétes előjelűek, akkor az összeadásnál „kioltják” egymást, és szigorú egyenlőtlenség áll: például $|3 + (-5)| = 2 < 8 = |3| + |-5|$.

A háromszög-egyenlőtlenségnek egy fordított változatára is gyakran lesz szükség.

> **Következmény (fordított háromszög-egyenlőtlenség).** Minden $a, b \in \mathbb{R}$ esetén
> $$\big|\,|a| - |b|\,\big| \le |a - b|.$$

*Bizonyítás.* Írjuk $a$-t $a = (a - b) + b$ alakba, és alkalmazzuk a háromszög-egyenlőtlenséget:
$$|a| = |(a - b) + b| \le |a - b| + |b| \implies |a| - |b| \le |a - b|.$$
A szerepeket felcserélve ugyanígy $|b| - |a| \le |b - a| = |a - b|$. A két egyenlőtlenség együtt azt mondja, hogy $|a| - |b|$ a $[-|a-b|, |a-b|]$ intervallumba esik, ami éppen az állítás. $\blacksquare$

A bizonyításban alkalmazott fogás — **„adjunk hozzá és vonjunk ki ugyanazt”** — az analízis egyik legfontosabb technikája; a félév során tucatszor fogjuk használni. Távolságok nyelvén: ha az $a$-tól $b$-ig akarunk eljutni, és tudjuk, mennyi az út $a$-tól $c$-ig és $c$-től $b$-ig, akkor
$$|a - b| = |(a - c) + (c - b)| \le |a - c| + |c - b|.$$
Ez a „kitérő” a közbülső $c$ ponton keresztül.

## 5. Teljes indukció

A háromszög-egyenlőtlenséget két tagra bizonyítottuk. Mi a helyzet három, négy, vagy általában $n$ taggal? Három tagra még könnyű:
$$|a_1 + a_2 + a_3| = |(a_1 + a_2) + a_3| \le |a_1 + a_2| + |a_3| \le |a_1| + |a_2| + |a_3|.$$
Látszik, hogy ugyanez a lépés négy, öt, … tagra is megismételhető. De hogyan lehet ezt **minden** $n$-re egyszerre bebizonyítani, anélkül hogy végtelen sok lépést írnánk le? Erre szolgál a teljes indukció.

> **A teljes indukció (TIND) elve.** Legyen $A_1, A_2, A_3, \dots$ állítások egy sorozata. Ha
>
> 1. **(kezdőlépés)** $A_1$ igaz, és
> 2. **(indukciós lépés)** minden $n \in \mathbb{N}$ esetén az $A_n \implies A_{n+1}$ implikáció igaz,
>
> akkor $A_n$ minden $n \in \mathbb{N}$-re igaz.

**A dominó-hasonlat.** Képzeljünk el egy végtelen hosszú dominósort. Ha (1) az első dominó eldől, és (2) bármelyik dominó eldőlése magával rántja a következőt, akkor mindegyik dominó eldől. Egyik feltétel sem hagyható el: ha az első nem dől el, semmi sem történik; ha pedig valahol túl nagy a rés két dominó között, a lánc ott megszakad.

Fontos megérteni, mit kell az indukciós lépésben bizonyítani: **nem** azt, hogy $A_{n+1}$ igaz, hanem azt, hogy **ha** $A_n$ igaz, **akkor** $A_{n+1}$ is igaz. Az $A_n$ igazságát tehát *feltehetjük* — ezt nevezzük **indukciós feltevésnek** —, és ebből kell levezetnünk $A_{n+1}$-et.

**Kidolgozott példa.** Bizonyítsuk be, hogy minden $n \in \mathbb{N}$ esetén
$$1 + 2 + \dots + n = \frac{n(n+1)}{2}.$$
Legyen $A_n$ ez az állítás.

*Kezdőlépés:* $n = 1$-re a bal oldal $1$, a jobb oldal $\frac{1 \cdot 2}{2} = 1$. Igaz.

*Indukciós lépés:* tegyük fel, hogy $A_n$ igaz, azaz $1 + \dots + n = \frac{n(n+1)}{2}$. Ekkor
$$1 + \dots + n + (n+1) = \frac{n(n+1)}{2} + (n + 1) = \frac{n(n+1) + 2(n+1)}{2} = \frac{(n+1)(n+2)}{2},$$
ami éppen $A_{n+1}$. A TIND elve szerint az állítás minden $n$-re igaz. $\blacksquare$

**Az indukció nem mindig $1$-től indul.** Ha a kezdőlépést $n_0$-ra igazoljuk, az indukciós lépést pedig minden $n \ge n_0$-ra, akkor az állítás minden $n \ge n_0$-ra igaz. Példa: $2^n \ge n^2$ igaz $n = 1, 2$-re ($2 \ge 1$, $4 \ge 4$), hamis $n = 3$-ra ($8 < 9$), de igaz minden $n \ge 4$-re. Ez utóbbit indukcióval látjuk be: $n = 4$-re $16 \ge 16$. Ha pedig $n \ge 4$ és $2^n \ge n^2$, akkor
$$2^{n+1} = 2\cdot 2^n \ge 2n^2 = n^2 + n^2 \ge n^2 + 2n + 1 = (n+1)^2,$$
ahol az utolsó előtti lépésben azt használtuk, hogy $n \ge 3$ esetén $n^2 \ge 3n = 2n + n \ge 2n + 1$.

Most már kimondhatjuk és bizonyíthatjuk a háromszög-egyenlőtlenség általános alakját.

> **Tétel (általánosított háromszög-egyenlőtlenség).** Minden $n \in \mathbb{N}$ és minden $a_1, \dots, a_n \in \mathbb{R}$ esetén
> $$|a_1 + a_2 + \dots + a_n| \le |a_1| + |a_2| + \dots + |a_n|.$$

*Bizonyítás.* Legyen $A_n$ az az állítás, hogy a fenti egyenlőtlenség tetszőleges $n$ darab valós számra teljesül.

*Kezdőlépés.* $n = 1$-re az állítás $|a_1| \le |a_1|$, ami igaz.

*Indukciós lépés.* Tegyük fel, hogy $A_n$ igaz, és legyen $a_1, \dots, a_{n+1}$ tetszőleges. Csoportosítsuk az összeget úgy, hogy az első $n$ tag egyetlen számot alkosson:
$$|\underbrace{a_1 + \dots + a_n}_{A} + \underbrace{a_{n+1}}_{B}| \le |a_1 + \dots + a_n| + |a_{n+1}|,$$
ahol a kéttagú háromszög-egyenlőtlenséget alkalmaztuk az $A$ és $B$ számokra. Az indukciós feltevés szerint az első tag tovább becsülhető:
$$|a_1 + \dots + a_n| + |a_{n+1}| \le |a_1| + \dots + |a_n| + |a_{n+1}|.$$
Ezzel $A_{n+1}$-et igazoltuk, tehát a TIND elve szerint az állítás minden $n$-re fennáll. $\blacksquare$

## 6. A bővített számegyenes és az intervallumok

A félév során gyakran mondunk majd olyasmit, hogy egy sorozat „minden határon túl nő” vagy „a végtelenbe tart”. Ehhez kényelmes jelölésre van szükség.

> **Definíció (bővített számegyenes).** Vezessünk be két új **szimbólumot**, $+\infty$-t és $-\infty$-t, amelyek nem valós számok. A rendezést kiterjesztjük rájuk azzal a megállapodással, hogy
> $$-\infty < x < +\infty \qquad \text{minden } x \in \mathbb{R} \text{ esetén}.$$
> A $\overline{\mathbb{R}} = \mathbb{R} \cup \{+\infty, -\infty\}$ halmazt **bővített számegyenesnek** nevezzük.

**Figyelem: $\pm\infty$ nem szám!** Nem lehet velük korlátozás nélkül számolni. Mennyi volna $+\infty - (+\infty)$? Ha $\infty$ szám volna, akkor $0$ — de a 26. szakaszban látni fogjuk, hogy két „végtelenbe tartó” mennyiség különbsége bármi lehet. Ezért a $\pm\infty$ szimbólumokkal csak ott számolunk, ahol ezt tétel indokolja. Egyetlen szerepük, hogy bizonyos fordulatokat tömören kimondhassunk.

A számegyenes leggyakrabban használt részhalmazai az intervallumok.

> **Definíció (intervallumok).** Ha $a, b \in \mathbb{R}$ és $a \le b$, akkor
> $$[a, b] = \{x \in \mathbb{R} : a \le x \le b\} \quad \text{(zárt intervallum)},$$
> $$(a, b) = \{x \in \mathbb{R} : a < x < b\} \quad \text{(nyílt intervallum)},$$
> $$[a, b) = \{x \in \mathbb{R} : a \le x < b\}, \qquad (a, b] = \{x \in \mathbb{R} : a < x \le b\} \quad \text{(félig zárt intervallumok)}.$$
> Végtelen hosszú intervallumok (félegyenesek):
> $$[a, +\infty) = \{x : x \ge a\}, \quad (a, +\infty) = \{x : x > a\}, \quad (-\infty, a] = \{x : x \le a\}, \quad (-\infty, a) = \{x : x < a\},$$
> és $(-\infty, +\infty) = \mathbb{R}$.

A szögletes zárójel azt jelzi, hogy a végpont az intervallumhoz tartozik, a kerek, hogy nem. A $\pm\infty$ mellé mindig kerek zárójel kerül, hiszen ezek nem valós számok, tehát nem lehetnek az intervallum elemei. Az $[a, b]$ intervallumot, ha $a, b \in \mathbb{R}$, **korlátos zárt intervallumnak** nevezzük; ezek a félév során különleges szerepet kapnak (54. szakasz).

Az intervallumokat egyetlen tulajdonsággal is jellemezhetjük: **egy $I \subset \mathbb{R}$ halmaz pontosan akkor intervallum, ha bármely két pontjával együtt a köztük lévő összes pontot is tartalmazza**, azaz ha $x, y \in I$ és $x < z < y$, akkor $z \in I$. (Ezt a jellemzést a teljességi axióma segítségével lehet bizonyítani; az 54. szakaszban fogjuk használni.)

## 7. Korlátosság, maximum és minimum

Most olyan fogalmakat vezetünk be, amelyekkel egy számhalmaz „kiterjedését” írhatjuk le. Ezek vezetnek el a teljességi axiómához.

> **Definíció (korlátok).** Legyen $H \subset \mathbb{R}$.
>
> - A $K \in \mathbb{R}$ szám a $H$ **felső korlátja**, ha minden $h \in H$ esetén $h \le K$.
> - A $k \in \mathbb{R}$ szám a $H$ **alsó korlátja**, ha minden $h \in H$ esetén $h \ge k$.
> - $H$ **felülről korlátos**, ha van felső korlátja; **alulról korlátos**, ha van alsó korlátja; **korlátos**, ha alulról és felülről is korlátos.

**Példák.**

- $H = (0, 1]$: felső korlát például $1$, $2$, $100$; alsó korlát például $0$, $-5$. Korlátos.
- $H = \mathbb{N}$: alsó korlát például $1$ vagy $0$. Felső korlátja nincs (ez az arkhimédészi tulajdonság, 9. szakasz). Tehát alulról korlátos, felülről nem.
- $H = \mathbb{Z}$: se alulról, se felülről nem korlátos.
- $H = \emptyset$: **minden** valós szám felső és alsó korlátja is (hiszen nincs olyan eleme, amely megsértené a feltételt).

Figyeljük meg, hogy a felső korlát **nem egyértelmű**: ha $K$ felső korlát, akkor minden nála nagyobb szám is az. A korlát fogalma tehát önmagában nem írja le pontosan a halmaz „tetejét”.

> **Állítás.** $H$ pontosan akkor korlátos, ha létezik olyan $K \in \mathbb{R}$, hogy minden $h \in H$ esetén $|h| \le K$.

*Bizonyítás.* Ha $|h| \le K$ minden $h$-ra, akkor a 4. szakasz szerint $-K \le h \le K$, tehát $-K$ alsó, $K$ felső korlát. Megfordítva, ha $m$ alsó és $M$ felső korlát, azaz $m \le h \le M$ minden $h \in H$-ra, akkor legyen $K = \max\{|m|, |M|\}$. Ekkor
$$-K \le -|m| \le m \le h \le M \le |M| \le K,$$
tehát $|h| \le K$. $\blacksquare$

A korlátok között kitüntetett szerepe van annak, amelyik maga is a halmazban van.

> **Definíció (maximum, minimum).** Legyen $H \subset \mathbb{R}$. Ha létezik olyan $M \in H$ elem, amelyre minden $h \in H$ esetén $h \le M$, akkor $M$-et a $H$ **legnagyobb elemének** vagy **maximumának** nevezzük; jelölése $\max H$. Hasonlóan, ha létezik $m \in H$, amelyre minden $h \in H$-ra $h \ge m$, akkor $m$ a $H$ **legkisebb eleme** vagy **minimuma**; jelölése $\min H$.

A döntő mozzanat: **a maximumnak eleme kell legyen a halmaznak.** A maximum tehát olyan felső korlát, amely maga is a halmazhoz tartozik.

Ha a maximum létezik, akkor egyértelmű: ha $M_1$ és $M_2$ is maximum volna, akkor $M_2 \in H$ miatt $M_2 \le M_1$, és $M_1 \in H$ miatt $M_1 \le M_2$, tehát $M_1 = M_2$.

**Példák.**

- $H = (0, 1]$: $\max H = 1$, hiszen $1 \in H$ és minden elem legfeljebb $1$. Ugyanakkor $\min H$ **nem létezik**: ha $h \in (0, 1]$ tetszőleges, akkor $\frac{h}{2}$ is a halmazban van, és kisebb $h$-nál, tehát $h$ nem lehet a legkisebb elem.
- $H = (0, 1)$: sem maximuma, sem minimuma nincs, jóllehet korlátos.
- $H = \left\{ 1, \frac{1}{2}, \frac{1}{3}, \dots \right\} = \left\{ \frac{1}{n} : n \in \mathbb{N} \right\}$: $\max H = 1$, minimuma nincs (hiszen $\frac{1}{n+1} < \frac{1}{n}$).
- Minden nem üres **véges** halmaznak van maximuma és minimuma (ez indukcióval könnyen belátható az elemszám szerint).

**Egy fontos megfigyelés.** Ha $\max H$ létezik, akkor felső korlátja $H$-nak. Sőt, ha $b$ tetszőleges felső korlátja $H$-nak, akkor $\max H \le b$, hiszen $\max H \in H$, és $b$ minden $H$-beli elemnél nagyobb vagy egyenlő. Vagyis
$$\max H \text{ a } H \text{ legkisebb felső korlátja}.$$
Ez a megfigyelés mutatja meg, hogyan érdemes általánosítani. A maximum gyakran nem létezik (lásd a $(0,1)$ példát), a **legkisebb felső korlát** azonban — mint mindjárt látni fogjuk — mindig létezik, ha a halmaz nem üres és felülről korlátos. Egy feltétellel: ha $\mathbb{R}$-ben dolgozunk, nem $\mathbb{Q}$-ban.

### A racionális számok hiányossága

Vizsgáljuk meg a
$$H = \{x \in \mathbb{Q} : x^2 < 2\}$$
halmazt a racionális számok körében. Ez nem üres ($1 \in H$), és felülről korlátos: például $2$ felső korlát, hiszen ha $x > 2$, akkor $x^2 > 4 > 2$, tehát $x \notin H$. Azt állítjuk, hogy **$H$-nak nincs $\mathbb{Q}$-beli legkisebb felső korlátja.** Ehhez megmutatjuk, hogy bármely racionális felső korlát mellett van nála kisebb racionális felső korlát is.

*1. lépés: ha $s > 0$ racionális és $s^2 < 2$, akkor $s$ nem felső korlát.* Keresünk egy kis pozitív racionális $h$-t úgy, hogy $(s + h)^2 < 2$ is teljesüljön. Legyen
$$h = \min\left\{\frac{1}{2},\ \frac{2 - s^2}{2s + 1}\right\}.$$
Ez pozitív racionális szám (hiszen $2 - s^2 > 0$). A minimumban szereplő $\frac{1}{2}$ csak azt biztosítja, hogy $h < 1$ legyen, és így $h^2 < h$. Ekkor
$$(s + h)^2 = s^2 + 2sh + h^2 < s^2 + 2sh + h = s^2 + h(2s + 1) \le s^2 + (2 - s^2) = 2.$$
Tehát $s + h \in H$ és $s + h > s$, vagyis $s$ valóban nem felső korlát.

*2. lépés: ha $s$ racionális felső korlát, akkor $s^2 > 2$.* Mivel $1 \in H$, ezért $s \ge 1 > 0$. Az 1. lépés szerint $s^2 < 2$ nem lehet; $s^2 = 2$ pedig a 2. szakasz tétele szerint lehetetlen. Tehát $s^2 > 2$.

*3. lépés: ha $s$ racionális felső korlát, akkor van nála kisebb racionális felső korlát.* Legyen
$$t = s - \frac{s^2 - 2}{2s} = \frac{s^2 + 2}{2s}.$$
Ez racionális, és $t < s$, mert $s^2 - 2 > 0$ és $2s > 0$. Továbbá
$$t^2 - 2 = \frac{(s^2+2)^2 - 8s^2}{4s^2} = \frac{s^4 - 4s^2 + 4}{4s^2} = \frac{(s^2 - 2)^2}{4s^2} > 0,$$
tehát $t^2 > 2$, és $t > 0$. Ha most $x \in H$, akkor $x^2 < 2 < t^2$, amiből $x < t$ (ha $x \ge t > 0$ volna, akkor $x^2 \ge t^2$ adódna). Tehát $t$ is felső korlát.

Összefoglalva: a $\mathbb{Q}$-ban dolgozva a $H$ halmaz felső korlátjai között **nincs legkisebb**. Szemléletesen: a „legkisebb felső korlát” a $\sqrt{2}$ volna, de az nem racionális, így a $\mathbb{Q}$-ban egy lyuk tátong a helyén. (A 3. lépésben szereplő $s \mapsto \frac{s^2 + 2}{2s} = \frac{1}{2}\left(s + \frac{2}{s}\right)$ átalakítás egyébként a négyzetgyökvonás ősi babiloni módszere: $s = 2$-ből indulva $\frac{3}{2}$, $\frac{17}{12}$, $\frac{577}{408}, \dots$ adódik, amelyek rohamosan közelítik a $\sqrt{2} = 1{,}41421\dots$ értéket.)

## 8. A teljességi axióma: szuprémum és infimum

Elérkeztünk a valós számok legfontosabb tulajdonságához. Az előző szakaszban láttuk, hogy a $\mathbb{Q}$-ban egy nem üres, felülről korlátos halmaznak nem feltétlenül van legkisebb felső korlátja. A valós számok éppen abban különböznek a racionálisaktól, hogy ott ez mindig létezik.

> **Teljességi axióma.** Ha $H \subset \mathbb{R}$, $H \neq \emptyset$ és $H$ felülről korlátos, akkor $H$-nak van legkisebb felső korlátja. Ezt a számot a $H$ **szuprémumának** (felső határának) nevezzük, és $\sup H$-val jelöljük.

Részletezve: az $s = \sup H$ számra (a) $s$ felső korlátja $H$-nak, és (b) ha $K$ a $H$ bármely felső korlátja, akkor $s \le K$.

A szuprémum egyértelmű: ha $s_1$ és $s_2$ is legkisebb felső korlát volna, akkor mindkettő felső korlát, így a „legkisebb” tulajdonságból $s_1 \le s_2$ és $s_2 \le s_1$, tehát $s_1 = s_2$.

**Miért éppen ez az axióma?** Ez az, ami a $\sqrt{2}$-nél tátongó lyukat betömi. Ha a $H = \{x \in \mathbb{R} : x^2 < 2\}$ halmazt most a valós számok körében nézzük, akkor van szuprémuma, és — mint később belátjuk — ennek négyzete éppen $2$. A teljességi axióma tehát azt fejezi ki, hogy **a valós számegyenesen nincsenek lyukak**. A könyv hátralévő részében szinte minden fontos tétel visszavezethető erre az egyetlen axiómára — ezt a láncot a könyv végén, az Utószóban még egyszer végigkövetjük.

A szuprémumot a gyakorlatban rendszerint a következő jellemzés segítségével kezeljük.

> **Tétel (a szuprémum $\varepsilon$-os jellemzése).** Legyen $H \neq \emptyset$ felülről korlátos, és $s \in \mathbb{R}$. Ekkor $s = \sup H$ pontosan akkor, ha
>
> 1. $s$ felső korlátja $H$-nak, azaz minden $h \in H$-ra $h \le s$; és
> 2. minden $\varepsilon > 0$-hoz létezik olyan $h \in H$, amelyre $h > s - \varepsilon$.

A 2. feltétel szavakban: **$s$-nél akármilyen kicsivel kisebb szám már nem felső korlát**, vagyis bármilyen közel megyünk $s$-hez alulról, mindig találunk halmazbeli elemet.

*Bizonyítás.* Ha $s = \sup H$, akkor $s$ felső korlát (1. feltétel). Legyen $\varepsilon > 0$. Mivel $s - \varepsilon < s$, és $s$ a **legkisebb** felső korlát, ezért $s - \varepsilon$ nem felső korlát. Ez a felső korlát definíciójának tagadása szerint azt jelenti, hogy van olyan $h \in H$, amelyre $h > s - \varepsilon$ (2. feltétel).

Megfordítva, tegyük fel, hogy $s$ teljesíti az 1. és 2. feltételt. Az 1. szerint felső korlát; azt kell látnunk, hogy a legkisebb. Legyen $K < s$ tetszőleges; megmutatjuk, hogy $K$ nem felső korlát. Az $\varepsilon = s - K > 0$ választással a 2. feltétel szerint van olyan $h \in H$, amelyre $h > s - \varepsilon = K$. Tehát $K$ valóban nem felső korlát, így minden felső korlát legalább $s$. $\blacksquare$

**Kidolgozott példa.** Mutassuk meg, hogy $\sup\,(0, 1) = 1$. Az $1$ felső korlát, hiszen az intervallum minden eleme kisebb $1$-nél. Legyen $\varepsilon > 0$; keresnünk kell egy $h \in (0,1)$ elemet, amelyre $h > 1 - \varepsilon$. Ha $\varepsilon \ge 1$, akkor $h = \frac{1}{2}$ jó, hiszen $\frac{1}{2} > 0 \ge 1 - \varepsilon$. Ha $0 < \varepsilon < 1$, akkor $h = 1 - \frac{\varepsilon}{2}$ jó: ez a $(0,1)$ intervallumban van, és $1 - \frac{\varepsilon}{2} > 1 - \varepsilon$. A jellemzés szerint tehát $\sup\,(0,1) = 1$.

Az alsó oldalon ugyanez a helyzet, de ezt már nem kell külön axiómaként kimondani: következik a teljességi axiómából.

> **Tétel (az infimum létezése).** Ha $H \subset \mathbb{R}$, $H \neq \emptyset$ és $H$ alulról korlátos, akkor $H$-nak van legnagyobb alsó korlátja. Ezt a $H$ **infimumának** (alsó határának) nevezzük; jelölése $\inf H$.

**Az ötlet:** tükrözzük a halmazt a $0$-ra. A tükrözés az alsó korlátokat felső korlátokká, a legnagyobbat a legkisebbé változtatja.

*Bizonyítás.* Tekintsük a tükrözött halmazt:
$$-H = \{-h : h \in H\}.$$
Ez nem üres, és felülről korlátos: ha $k$ alsó korlátja $H$-nak, azaz $k \le h$ minden $h \in H$-ra, akkor $-h \le -k$, tehát $-k$ felső korlátja $-H$-nak. A teljességi axióma szerint tehát létezik $M = \sup(-H)$. Legyen $m = -M$. Megmutatjuk, hogy $m$ a $H$ legnagyobb alsó korlátja.

*$m$ alsó korlát:* minden $h \in H$ esetén $-h \in -H$, tehát $-h \le M$, azaz $h \ge -M = m$.

*$m$ a legnagyobb alsó korlát:* tegyük fel indirekt, hogy létezik $m' > m$ alsó korlát. Ekkor minden $h \in H$-ra $m' \le h$, tehát $-h \le -m'$, azaz $-m'$ felső korlátja $-H$-nak. Csakhogy $m < m'$ miatt $-m' < -m = M$, vagyis találtunk $M$-nél kisebb felső korlátot $-H$-hoz. Ez ellentmond annak, hogy $M$ a legkisebb felső korlát. $\blacksquare$

Az infimumra is érvényes az $\varepsilon$-os jellemzés, értelemszerűen megfordítva: $m = \inf H$ pontosan akkor, ha $m$ alsó korlát, és minden $\varepsilon > 0$-hoz van olyan $h \in H$, amelyre $h < m + \varepsilon$.

**Kiterjesztés a bővített számegyenesre.** Ha a $\pm\infty$ szimbólumokat is megengedjük, akkor **minden** valós számhalmaznak lesz szuprémuma és infimuma:

- ha $H \neq \emptyset$ felülről nem korlátos, akkor $\sup H = +\infty$;
- ha $H \neq \emptyset$ alulról nem korlátos, akkor $\inf H = -\infty$;
- $\sup \emptyset = -\infty$ és $\inf \emptyset = +\infty$.

Az üres halmazra vonatkozó megállapodás elsőre meghökkentő ($\sup \emptyset < \inf \emptyset$!), de következetes: az üres halmaznak minden valós szám felső korlátja, így a „legkisebb felső korlát” csak $-\infty$ lehet.

**A maximum és a szuprémum viszonya.** Ha $\max H$ létezik, akkor $\max H = \sup H$ — ezt az előző szakasz végén láttuk. A megfordítás nem igaz: $\sup\,(0,1) = 1$, de $\max\,(0,1)$ nem létezik. A szuprémum tehát a maximum általánosítása, amely akkor is létezik, amikor a halmaz nem éri el a saját „tetejét”. Pontosan: **a szuprémum akkor és csak akkor maximum, ha eleme a halmaznak.**

## 9. Az arkhimédészi és a Cantor-féle tulajdonság

A teljességi axióma két olyan következménnyel jár, amelyek önmagukban is alapvetők. Sok tankönyv ezeket külön axiómaként mondja ki; mi levezetjük őket.

> **Tétel (arkhimédészi tulajdonság).** Minden $x \in \mathbb{R}$-hez létezik olyan $n \in \mathbb{N}$, amelyre $n > x$.

Szemléletesen: a természetes számok „minden határon túl nőnek”, nincs olyan valós szám, amely az egész $\mathbb{N}$ fölött volna. Ez annyira nyilvánvalónak tűnik, hogy bizonyításra sem érdemesnek látszik — mégis bizonyításra szorul, és éppen a teljességből következik. (Léteznek olyan rendezett testek, amelyekben nem igaz! Ezekben vannak „végtelenül nagy” elemek, amelyek minden természetes számnál nagyobbak.)

*Bizonyítás.* Indirekt. Tegyük fel, hogy van olyan $x \in \mathbb{R}$, amelyre minden $n \in \mathbb{N}$ esetén $n \le x$. Ekkor $\mathbb{N}$ nem üres és felülről korlátos ($x$ felső korlát), így a teljességi axióma szerint létezik
$$c = \sup \mathbb{N} \in \mathbb{R}.$$
Mivel $c$ felső korlát, minden $n \in \mathbb{N}$-re $n \le c$. Ez minden természetes számra igaz, tehát az $n + 1$ természetes számra is: $n + 1 \le c$, azaz
$$n \le c - 1 \qquad \text{minden } n \in \mathbb{N}\text{-re}.$$
Eszerint $c - 1$ is felső korlátja $\mathbb{N}$-nek. Csakhogy $c - 1 < c$, ami ellentmond annak, hogy $c$ a **legkisebb** felső korlát. $\blacksquare$

A tételnek több hasznos átfogalmazása van, amelyeket a félév során folyamatosan használni fogunk.

> **Következmények.**
>
> 1. Minden $\varepsilon > 0$-hoz van olyan $n \in \mathbb{N}$, amelyre $\frac{1}{n} < \varepsilon$.
> 2. Ha $a > 0$ és $b \in \mathbb{R}$, akkor van olyan $n \in \mathbb{N}$, amelyre $na > b$.
> 3. Ha $x \ge 0$ és minden $n \in \mathbb{N}$-re $x \le \frac{1}{n}$, akkor $x = 0$.

*Bizonyítás.* 1. Az arkhimédészi tulajdonság szerint van $n > \frac{1}{\varepsilon}$; erre $\frac{1}{n} < \varepsilon$ (a 3. szakasz 5. szabálya szerint). 2. Legyen $n > \frac{b}{a}$; ekkor $na > b$. 3. Ha $x > 0$ volna, akkor az 1. pont szerint ($\varepsilon = x$) volna olyan $n$, amelyre $\frac{1}{n} < x$, ellentmondásban a feltevéssel. $\blacksquare$

A 2. pont a tétel eredeti, Archimédésztől származó megfogalmazása: akármilyen kicsi is egy $a$ szakasz, elég sokszor felmérve túlléphetünk bármely $b$ távolságon. A 3. pont pedig egy gyakran használt bizonyítási fogás alapja: **ha egy nemnegatív mennyiség minden pozitív számnál kisebb vagy egyenlő, akkor nulla.**

Az arkhimédészi tulajdonság fontos következménye a racionális számok sűrűsége.

> **Tétel (a racionális és az irracionális számok sűrűsége).** Bármely két különböző valós szám között van racionális szám és irracionális szám is.

*Bizonyítás.* Legyen $a < b$. Az 1. következmény szerint van olyan $n \in \mathbb{N}$, amelyre $\frac{1}{n} < b - a$, azaz $na + 1 < nb$. Legyen $m$ a legkisebb olyan egész szám, amely nagyobb $na$-nál. (Ilyen létezik: az arkhimédészi tulajdonság szerint van $na$-nál nagyobb egész, és van $na$-nál kisebb egész is, a köztük lévő véges sok egész közül pedig kiválaszthatjuk a legkisebbet, amely $na$-nál nagyobb.) Ekkor $m - 1 \le na < m$, tehát
$$na < m \le na + 1 < nb \implies a < \frac{m}{n} < b.$$
Az $\frac{m}{n}$ racionális szám tehát $a$ és $b$ közé esik.

Az irracionális számhoz alkalmazzuk az előzőt az $\frac{a}{\sqrt{2}} < \frac{b}{\sqrt{2}}$ számokra (feltéve, hogy már tudjuk: $\sqrt{2}$ létezik, ezt az 54. szakaszban bizonyítjuk). Van köztük $q$ racionális szám, és feltehetjük, hogy $q \neq 0$ (ha a talált szám éppen $0$ volna, alkalmazzuk az eljárást a $\left(0, \frac{b}{\sqrt{2}}\right)$ intervallumra). Ekkor $a < q\sqrt{2} < b$, és $q\sqrt{2}$ irracionális, hiszen ha racionális volna, akkor $\sqrt{2} = \frac{q\sqrt{2}}{q}$ is az volna. $\blacksquare$

A racionális és az irracionális számok tehát „összekeveredve”, mindenütt sűrűn helyezkednek el a számegyenesen. (Az 5. részben látni fogjuk, hogy mégis lényegesen több irracionális szám van, mint racionális!)

Most a teljességi axióma második nevezetes következménye.

> **Tétel (Cantor-féle közösrész-tulajdonság).** Ha
> $$[a_1, b_1] \supset [a_2, b_2] \supset [a_3, b_3] \supset \dots$$
> egymásba skatulyázott korlátos zárt intervallumok sorozata, akkor van olyan valós szám, amely mindegyik intervallumban benne van:
> $$\bigcap_{n=1}^{\infty} [a_n, b_n] \neq \emptyset.$$

Szemléletesen: ha egyre kisebb, egymásba ágyazott zárt intervallumaink vannak, akkor ezek nem „zsugorodhatnak semmivé” — mindig marad legalább egy közös pont. A $\mathbb{Q}$-ban ez nem igaz: a $\sqrt{2}$ tizedes közelítéseiből képzett $[1; 2] \supset [1{,}4;\ 1{,}5] \supset [1{,}41;\ 1{,}42] \supset \dots$ intervallumoknak a $\mathbb{Q}$-ban nincs közös pontja, hiszen az egyetlen „jelölt” a $\sqrt{2}$ volna.

*Bizonyítás.* Az egymásba skatulyázottság azt jelenti, hogy a bal végpontok növekednek, a jobb végpontok csökkennek:
$$a_1 \le a_2 \le a_3 \le \dots \qquad \text{és} \qquad b_1 \ge b_2 \ge b_3 \ge \dots,$$
és persze minden $n$-re $a_n \le b_n$.

**Az ötlet:** a közös pontot a bal végpontok szuprémumaként keressük meg.

Legyen $A = \{a_n : n \in \mathbb{N}\}$. Ez nem üres, és felülről korlátos: $a_n \le b_n \le b_1$ minden $n$-re. A teljességi axióma szerint létezik
$$c = \sup A.$$
Azt állítjuk, hogy minden $b_n$ felső korlátja $A$-nak. Legyen $n$ rögzített, és $a_k$ az $A$ tetszőleges eleme.

- Ha $k \le n$, akkor $a_k \le a_n \le b_n$.
- Ha $k > n$, akkor $a_k \le b_k \le b_n$.

Mindkét esetben $a_k \le b_n$, tehát $b_n$ valóban felső korlát. Mivel $c$ a **legkisebb** felső korlát, ebből $c \le b_n$ következik minden $n$-re. Másrészt $c$ felső korlát, így $a_n \le c$ minden $n$-re. Összefoglalva
$$a_n \le c \le b_n \qquad \text{minden } n \in \mathbb{N}\text{-re},$$
azaz $c$ minden intervallumban benne van. $\blacksquare$

**Miért kell, hogy az intervallumok korlátosak és zártak legyenek?** Mindkét feltétel lényeges:

- A **nyílt** intervallumok $\left(0, \frac{1}{n}\right)$ sorozata egymásba skatulyázott, de a metszet üres (lásd a C. szakasz példáját): minden $x > 0$-hoz van $n$, amelyre $\frac{1}{n} < x$ — és ez éppen az arkhimédészi tulajdonság.
- A **nem korlátos** zárt intervallumok $[n, +\infty)$ sorozata is egymásba skatulyázott, de a metszet üres: minden $x$-hez van $n > x$.

**Az axiómarendszer rugalmassága.** Megmutatható, hogy a teljességi axióma **ekvivalens** az arkhimédészi és a Cantor-féle tulajdonság együttesével:
$$\text{Teljességi axióma} \iff \big(\text{arkhimédészi tulajdonság} \wedge \text{Cantor-féle tulajdonság}\big).$$
Az egyik irányt most láttuk. Ez azt jelenti, hogy a valós számok felépíthetők úgy is, hogy a szuprémum létezése helyett ezt a két tulajdonságot posztuláljuk — ugyanoda jutunk.

---

## Az I. rész összefoglalása

- A racionális számok sűrűn helyezkednek el, mégis „lyukasak”: $\sqrt{2} \notin \mathbb{Q}$.
- A valós számokat a testaxiómák, a rendezési axiómák ($R_1$–$R_4$) és a teljességi axióma írja le. Minden egyenlőtlenségekre vonatkozó számolási szabály az axiómákból vezethető le.
- Az $|x - a|$ az $x$ és $a$ távolsága; $|x - a| < r \iff a - r < x < a + r$. A háromszög-egyenlőtlenség, $|a + b| \le |a| + |b|$, és a „hozzáadunk és kivonunk” fogás az analízis legfontosabb eszközei közé tartozik.
- A teljes indukció a természetes számokra vonatkozó állítássorozatok bizonyítási módszere.
- A teljességi axióma szerint minden nem üres, felülről korlátos valós halmaznak van szuprémuma (legkisebb felső korlátja). Az $\varepsilon$-os jellemzés: $s = \sup H$ akkor és csak akkor, ha $s$ felső korlát, és minden $\varepsilon > 0$-ra van $h \in H$, $h > s - \varepsilon$.
- A teljességből következik az arkhimédészi tulajdonság (a természetes számok nem korlátosak), a racionális számok sűrűsége és a Cantor-féle tulajdonság (egymásba skatulyázott korlátos zárt intervallumoknak van közös pontja).

## Feladatok az I. részhez

1. Bizonyítsuk be, hogy $\sqrt{3}$ irracionális! Általánosabban: ha $n \in \mathbb{N}$ nem négyzetszám, akkor $\sqrt{n} \notin \mathbb{Q}$.
2. Oldjuk meg a valós számok körében: a) $|x + 3| \le 2$; b) $|x - 1| > 4$; c) $|x - 1| < |x + 1|$.
3. Bizonyítsuk be teljes indukcióval, hogy minden $n \in \mathbb{N}$-re $1^2 + 2^2 + \dots + n^2 = \frac{n(n+1)(2n+1)}{6}$.
4. Határozzuk meg a következő halmazok szuprémumát, infimumát, és döntsük el, van-e maximumuk, illetve minimumuk: a) $\left\{\frac{1}{n} : n \in \mathbb{N}\right\}$; b) $\left\{(-1)^n + \frac{1}{n} : n \in \mathbb{N}\right\}$; c) $\left\{\frac{n}{n+1} : n \in \mathbb{N}\right\}$.
5. Legyen $A, B \subset \mathbb{R}$ nem üres, felülről korlátos, és $A + B = \{a + b : a \in A,\ b \in B\}$. Bizonyítsuk be, hogy $\sup(A + B) = \sup A + \sup B$.
6. Mutassuk meg, hogy ha $A \subset B$ és $A \neq \emptyset$, $B$ felülről korlátos, akkor $\sup A \le \sup B$.
7. Az $\left[0, \frac{1}{n}\right]$ intervallumok egymásba skatulyázottak. Mi a metszetük? És a $\left(0, \frac{1}{n}\right]$ intervallumoké? Miért nem mond ellent ez utóbbi a Cantor-féle tulajdonságnak?

### Megoldási útmutatók

1. Kövessük a 2. szakasz második bizonyítását: ha $\sqrt{n} = \frac{p}{q}$, akkor $nq^2 = p^2$. Mivel $n$ nem négyzetszám, van olyan $r$ prím, amelynek kitevője $n$ prímfelbontásában páratlan. Ekkor $r$ kitevője a bal oldalon páratlan, a jobb oldalon páros — ellentmondás.
2. a) $-2 \le x + 3 \le 2$, azaz $x \in [-5, -1]$. b) $x - 1 > 4$ vagy $x - 1 < -4$, azaz $x \in (-\infty, -3) \cup (5, +\infty)$. c) Geometriailag: $x$ közelebb van $1$-hez, mint $-1$-hez, azaz $x > 0$. Számolással: mindkét oldal nemnegatív, négyzetre emelve $x^2 - 2x + 1 < x^2 + 2x + 1$, azaz $x > 0$.
3. Az indukciós lépésben: $\frac{n(n+1)(2n+1)}{6} + (n+1)^2 = \frac{(n+1)\big(n(2n+1) + 6(n+1)\big)}{6} = \frac{(n+1)(2n^2 + 7n + 6)}{6} = \frac{(n+1)(n+2)(2n+3)}{6}$.
4. a) $\sup = \max = 1$; $\inf = 0$ (az arkhimédészi tulajdonság szerint minden $\varepsilon > 0$-ra van $\frac{1}{n} < \varepsilon$), minimum nincs. b) Az elemek: $0, \frac{3}{2}, -\frac{2}{3}, \frac{5}{4}, -\frac{4}{5}, \dots$. A páros indexű elemek $1 + \frac{1}{n} \le \frac{3}{2}$, a páratlan indexűek $-1 + \frac{1}{n} \le 0$, tehát $\sup = \max = \frac{3}{2}$. Minden elem nagyobb $-1$-nél, és a páratlan indexű elemek tetszőlegesen megközelítik a $-1$-et, így $\inf = -1$, minimum nincs. c) $\frac{n}{n+1} = 1 - \frac{1}{n+1}$; $\inf = \min = \frac{1}{2}$, $\sup = 1$, maximum nincs.
5. $\sup A + \sup B$ felső korlátja $A + B$-nek, mert $a + b \le \sup A + \sup B$. Adott $\varepsilon > 0$-hoz van $a \in A$, $a > \sup A - \frac{\varepsilon}{2}$, és $b \in B$, $b > \sup B - \frac{\varepsilon}{2}$; ekkor $a + b > \sup A + \sup B - \varepsilon$. Az $\varepsilon$-os jellemzés szerint kész.
6. $\sup B$ felső korlátja $B$-nek, tehát $A$-nak is; így a legkisebb felső korlát, $\sup A$, legfeljebb ekkora.
7. Az első metszet $\{0\}$ (a $0$ mindegyikben benne van; ha $x > 0$, akkor elég nagy $n$-re $\frac{1}{n} < x$). A második metszet üres. Ez nem mond ellent a tételnek, mert a $\left(0, \frac{1}{n}\right]$ intervallumok nem zártak.

---
