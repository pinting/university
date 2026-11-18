# VII. RÉSZ: VÉGTELEN SOROK

„Össze lehet-e adni végtelen sok számot?” A kérdés az ókor óta foglalkoztatja a gondolkodókat. Zénón híres paradoxona szerint Akhilleusz sosem éri utol a teknősbékát: amíg odaér, ahol a teknős volt, az már továbbment, és így tovább, végtelen sokszor. A paradoxon feloldása az, hogy végtelen sok egyre rövidebb időtartam összege lehet véges. Ebben a részben ezt a gondolatot tesszük precízzé: a végtelen összeget a **részletösszegek sorozatának határértékeként** definiáljuk. Így minden, amit a IV. részben a sorozatokról tanultunk, közvetlenül alkalmazható lesz.

## 35. A sor fogalma

**Egy bevezető példa.** Egy négyzet alakú torta felét megesszük, majd a maradék felét, majd annak a felét, és így tovább. Mennyi tortát eszünk meg összesen? Az első $n$ lépés után
$$s_n = \frac{1}{2} + \frac{1}{4} + \dots + \frac{1}{2^n}$$
részt ettünk meg, és $\frac{1}{2^n}$ rész maradt, tehát $s_n = 1 - \frac{1}{2^n}$. (Ezt a mértani sorozat összegképletével is megkaphatjuk:
$$s_n = \frac{1}{2}\left(1 + \frac{1}{2} + \dots + \frac{1}{2^{n-1}}\right) = \frac{1}{2}\cdot\frac{1 - \frac{1}{2^n}}{1 - \frac{1}{2}} = 1 - \frac{1}{2^n}.)$$
Ez az új sorozat konvergens: $s_n \to 1$. Ezt fejezzük ki úgy, hogy
$$\frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \dots = \sum_{k=1}^{\infty}\frac{1}{2^k} = 1.$$
Figyeljük meg, mi történt: a végtelen összeadás fogalmát **visszavezettük** a véges összegek sorozatának határértékére. Ez az egész elmélet kulcsa.

> **Definíció (véges összeg).** Ha $n \ge m$, akkor $\displaystyle \sum_{k=m}^{n} a_k = a_m + a_{m+1} + \dots + a_n$.

> **Definíció (végtelen sor).** Legyen $(a_n)$ egy sorozat, és képezzük az
> $$s_n = \sum_{k=1}^{n} a_k = a_1 + a_2 + \dots + a_n$$
> **részletösszegek** sorozatát. Az $(a_n)$ sorozatból képzett **végtelen sor** (röviden **sor**) az $(s_n)$ részletösszeg-sorozat; jelölése $\sum_{k=1}^\infty a_k$ vagy $a_1 + a_2 + \dots$. Az $a_k$ számok a sor **tagjai**.
>
> - Ha $s_n \to s \in \mathbb{R}$, akkor a sor **konvergens**, és az $s$ számot a sor **összegének** nevezzük: $\sum_{k=1}^\infty a_k = s$.
> - Ha $(s_n)$ divergens, akkor a sor **divergens**. Ha $s_n \to +\infty$ (vagy $-\infty$), akkor azt írjuk, hogy $\sum_{k=1}^\infty a_k = +\infty$ (vagy $-\infty$).

**Két különböző sorozat.** Egy sorral kapcsolatban mindig két sorozatot kell megkülönböztetni: a **tagok** sorozatát, $(a_n)$-t, és a **részletösszegek** sorozatát, $(s_n)$-t. A sor konvergenciája az utóbbi konvergenciáját jelenti! A $\sum \frac{1}{2^k}$ sor tagjai $0$-hoz tartanak, a részletösszegei $1$-hez — a sor összege $1$, nem $0$.

A $\sum a_k$ jelölés kétértelmű: jelenti magát a sort (a részletösszegek sorozatát) és, konvergencia esetén, az összegét is. Ez a szövegkörnyezetből mindig kiderül.

A sorok indexelése más értékről is kezdődhet: $\sum_{n=0}^\infty a_n$, $\sum_{k=10}^\infty a_k$ stb. Véges sok tag elhagyása vagy hozzávétele a sor konvergenciáját nem befolyásolja (csak az összegét), hiszen a részletösszegek csak egy állandóval változnak meg.

**Műveletek.** A sorozatokra vonatkozó műveleti tételekből (25. szakasz) azonnal következik: ha $\sum a_k = A$ és $\sum b_k = B$ konvergensek, akkor
$$\sum_{k=1}^\infty (a_k + b_k) = A + B, \qquad \sum_{k=1}^\infty c\, a_k = cA,$$
hiszen a részletösszegekre ugyanez igaz. (Szorzatra viszont nincs ilyen egyszerű szabály: $\sum a_k b_k$ **nem** $AB$.)

### Teleszkopikus sorok

**Kidolgozott példa.** Számítsuk ki a
$$\sum_{k=1}^{\infty}\frac{1}{k(k+1)} = \frac{1}{1\cdot 2} + \frac{1}{2\cdot 3} + \frac{1}{3\cdot 4} + \dots$$
sor összegét! A kulcs a **parciális törtekre bontás**:
$$\frac{1}{k(k+1)} = \frac{1}{k} - \frac{1}{k+1}.$$
Ezért a részletösszeg
$$s_n = \left(1 - \frac{1}{2}\right) + \left(\frac{1}{2} - \frac{1}{3}\right) + \dots + \left(\frac{1}{n} - \frac{1}{n+1}\right) = 1 - \frac{1}{n+1},$$
hiszen minden belső tag kétszer szerepel, ellentétes előjellel, és kiesik. (Mint egy összecsukódó távcső — innen a **teleszkopikus** elnevezés.) Tehát $s_n \to 1$, azaz
$$\sum_{k=1}^{\infty}\frac{1}{k(k+1)} = 1.$$

**Tizedes törtek mint sorok.** Egy végtelen tizedes tört valójában egy sor: $0{,}d_1d_2d_3\dots = \sum_{k=1}^\infty \frac{d_k}{10^k}$. Például
$$0{,}999\dots = \frac{9}{10} + \frac{9}{100} + \dots = \frac{9}{10}\cdot\frac{1}{1 - \frac{1}{10}} = 1$$
(a mértani sor összegképletével, lásd a 37. szakaszt). A $0{,}999\dots = 1$ egyenlőség, amely sokakat zavarba ejt, tehát egyszerűen azt jelenti, hogy a $0{,}9;\ 0{,}99;\ 0{,}999; \dots$ részletösszegek $1$-hez tartanak.

## 36. A Cauchy-kritérium sorokra és a szükséges feltétel

Mivel egy sor konvergenciája a részletösszeg-sorozat konvergenciáját jelenti, a 28. szakasz Cauchy-kritériuma közvetlenül alkalmazható. Csak azt kell észrevenni, hogy két részletösszeg különbsége maga is egy (véges) összeg:
$$s_m - s_{n-1} = (a_1 + \dots + a_m) - (a_1 + \dots + a_{n-1}) = a_n + a_{n+1} + \dots + a_m = \sum_{k=n}^{m} a_k.$$

> **Tétel (Cauchy-kritérium sorokra).** A $\sum a_k$ sor akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_0$, hogy minden $m \ge n \ge n_0$ esetén
> $$\left|\sum_{k=n}^{m} a_k\right| = |a_n + a_{n+1} + \dots + a_m| < \varepsilon.$$

Szavakban: a sor pontosan akkor konvergens, ha az elég késői **szeletek** (egymás utáni tagok összegei) tetszőlegesen kicsik — akármilyen hosszúak is. A „hosszúság” itt a lényeg: nem elég, hogy az egyes tagok kicsik, a tetszőlegesen sok egymás utáni tag összegének is kicsinek kell lennie.

*Bizonyítás.* Ez szó szerint a 28. szakasz Cauchy-kritériuma az $(s_n)$ sorozatra, a fenti azonosság felhasználásával. $\blacksquare$

Ebből egy egyszerű, de alapvető szükséges feltétel adódik.

> **Tétel (a konvergencia szükséges feltétele).** Ha a $\sum a_k$ sor konvergens, akkor $a_k \to 0$.

*Bizonyítás.* Alkalmazzuk a Cauchy-kritériumot $m = n$-re: minden $\varepsilon > 0$-hoz van $n_0$, hogy $n \ge n_0$ esetén $|a_n| < \varepsilon$. Ez éppen $a_n \to 0$. (Más úton: $a_n = s_n - s_{n-1} \to s - s = 0$.) $\blacksquare$

A tétel kontrapozíciója gyakran használható divergencia bizonyítására: **ha a tagok nem tartanak $0$-hoz, a sor divergens.** Például $\sum \frac{n}{n+1}$ divergens, mert $\frac{n}{n+1} \to 1 \neq 0$; és $\sum (-1)^n$ is divergens.

**Figyelem: ez a feltétel nem elégséges!** Abból, hogy $a_k \to 0$, **nem** következik, hogy a sor konvergens. A 28. szakaszban már láttuk, hogy $\sum \frac{1}{\sqrt{k}} = +\infty$, pedig $\frac{1}{\sqrt{k}} \to 0$. Ez a sorok elméletének legfontosabb, és leggyakrabban elkövetett hibája: a „tagok nullához tartanak, tehát a sor konvergens” következtetés **hamis**. A tagok nullához tartása csak annyit garantál, hogy a sor „esélyes” a konvergenciára; a döntéshez finomabb vizsgálat kell.

### Pozitív tagú sorok

Különösen egyszerű a helyzet, ha a sor tagjai nemnegatívak. Ekkor a részletösszegek sorozata **monoton növekedő** ($s_{n+1} = s_n + a_{n+1} \ge s_n$), így a 21. és 22. szakasz szerint:

> **Tétel.** Ha minden $k$-ra $a_k \ge 0$, akkor a $\sum a_k$ sor pontosan akkor konvergens, ha a részletösszegek sorozata korlátos. Ha nem korlátos, akkor $\sum a_k = +\infty$.

Ebből azonnal adódik az egyik leghasznosabb konvergenciakritérium:

> **Következmény (összehasonlító kritérium).** Legyen $0 \le a_k \le b_k$ minden $k$-ra.
>
> - Ha $\sum b_k$ konvergens, akkor $\sum a_k$ is konvergens (**majoráns kritérium**).
> - Ha $\sum a_k = +\infty$, akkor $\sum b_k = +\infty$ (**minoráns kritérium**).

*Bizonyítás.* A részletösszegekre $\sum_{k=1}^n a_k \le \sum_{k=1}^n b_k$. Ha a jobb oldal korlátos, a bal is az; ha a bal nem korlátos, a jobb sem. $\blacksquare$

## 37. Nevezetes sorok

### A mértani (geometriai) sor

Legyen $q \in \mathbb{R}$, és tekintsük a $\sum_{n=0}^\infty q^n = 1 + q + q^2 + \dots$ sort. A részletösszegekre (ha $q \neq 1$) a jól ismert képlet érvényes:
$$s_n = 1 + q + \dots + q^n = \frac{1 - q^{n+1}}{1 - q}.$$
(Ellenőrzés: $(1 - q)(1 + q + \dots + q^n) = 1 + q + \dots + q^n - q - q^2 - \dots - q^{n+1} = 1 - q^{n+1}$, teleszkopikusan.)

> **Tétel (mértani sor).** A $\sum_{n=0}^\infty q^n$ sor pontosan akkor konvergens, ha $|q| < 1$, és ekkor
> $$\sum_{n=0}^{\infty} q^n = \frac{1}{1 - q}.$$

*Bizonyítás.* Ha $|q| < 1$, akkor a 22. szakasz szerint $q^{n+1} \to 0$, így
$$s_n = \frac{1 - q^{n+1}}{1 - q} \to \frac{1}{1 - q}.$$
Ha $|q| \ge 1$, akkor $|q^n| = |q|^n \ge 1$, tehát a tagok nem tartanak $0$-hoz, és a szükséges feltétel szerint a sor divergens. $\blacksquare$

Általánosabban, ha az első tag $a$ és a hányados $q$, akkor $|q| < 1$ esetén $\sum_{n=0}^\infty aq^n = \frac{a}{1 - q}$. Például
$$\sum_{n=1}^\infty \frac{1}{3^n} = \frac{1/3}{1 - 1/3} = \frac{1}{2}, \qquad 0{,}\overline{12} = \frac{12}{100} + \frac{12}{100^2} + \dots = \frac{12/100}{1 - 1/100} = \frac{12}{99} = \frac{4}{33}.$$

**Akhilleusz és a teknős.** Ha Akhilleusz $10$-szer olyan gyors, mint a teknős, és a teknős $100$ méter előnnyel indul, akkor Akhilleusz $100 + 10 + 1 + 0{,}1 + \dots$ méter megtétele után éri utol, és ez a mértani sor összege: $\frac{100}{1 - 1/10} = 111{,}\overline{1}$ méter. Zénón paradoxona azon a (rejtett) feltevésen múlt, hogy végtelen sok szakasz összege szükségképpen végtelen.

### A $\sum \frac{1}{n^2}$ sor

> **Tétel.** A $\displaystyle \sum_{n=1}^\infty \frac{1}{n^2}$ sor konvergens, és összege legfeljebb $2$.

*Bizonyítás.* A sor pozitív tagú, tehát elég belátni, hogy a részletösszegei korlátosak. A trükk: minden $n \ge 2$-re
$$\frac{1}{n^2} < \frac{1}{n(n-1)} = \frac{1}{n-1} - \frac{1}{n},$$
és az utóbbi sor teleszkopikus. Ezért
$$\sum_{k=1}^{n}\frac{1}{k^2} < 1 + \sum_{k=2}^{n}\left(\frac{1}{k-1} - \frac{1}{k}\right) = 1 + \left(1 - \frac{1}{n}\right) < 2.$$
A részletösszegek tehát szigorúan monoton növekedők és felülről korlátosak, így a sor konvergens. $\blacksquare$

Az összeg pontos értéke $\frac{\pi^2}{6} \approx 1{,}6449$. Ezt Leonhard Euler fedezte fel 1734-ben (a „bázeli probléma” megoldásaként), de a bizonyítás eszközei túlmutatnak ezen a könyvön. Ugyanígy (a majoráns kritériummal) konvergens $\sum \frac{1}{n^p}$ minden $p \ge 2$-re, hiszen $\frac{1}{n^p} \le \frac{1}{n^2}$.

### A harmonikus sor

> **Tétel.** A $\displaystyle \sum_{n=1}^\infty \frac{1}{n} = 1 + \frac{1}{2} + \frac{1}{3} + \dots$ **harmonikus sor** divergens, sőt $\sum_{n=1}^\infty \frac{1}{n} = +\infty$.

Ez a félév egyik legszebb ellenpéldája: a tagok nullához tartanak, az összeg mégis minden határon túl nő. Két bizonyítást is adunk.

*Első bizonyítás (a Cauchy-kritériummal).* Megmutatjuk, hogy a Cauchy-feltétel $\varepsilon = \frac{1}{2}$-re nem teljesül. Bármely $n$ esetén tekintsük az $n+1$-edik és a $2n$-edik tag közötti szeletet: ebben $n$ tag van, és mindegyik legalább $\frac{1}{2n}$, tehát
$$\frac{1}{n+1} + \frac{1}{n+2} + \dots + \frac{1}{2n} \ge n\cdot\frac{1}{2n} = \frac{1}{2}.$$
Akármilyen késői küszöböt is választunk, mindig van utána $\frac{1}{2}$-nél nem kisebb szelet. A sor tehát divergens; mivel pozitív tagú, a részletösszegei $+\infty$-hez tartanak. $\blacksquare$

*Második bizonyítás (csoportosítással; Nicole Oresme, XIV. század).* Csoportosítsuk a tagokat kettőhatvány hosszúságú blokkokba:
$$1 + \frac{1}{2} + \underbrace{\left(\frac{1}{3} + \frac{1}{4}\right)}_{\ge 2\cdot\frac{1}{4} = \frac{1}{2}} + \underbrace{\left(\frac{1}{5} + \dots + \frac{1}{8}\right)}_{\ge 4\cdot\frac{1}{8} = \frac{1}{2}} + \underbrace{\left(\frac{1}{9} + \dots + \frac{1}{16}\right)}_{\ge 8 \cdot \frac{1}{16} = \frac{1}{2}} + \dots$$
Minden blokk összege legalább $\frac{1}{2}$, ezért
$$s_{2^k} \ge 1 + \frac{k}{2} \to +\infty. \qquad \blacksquare$$

A harmonikus sor **nagyon lassan** divergál: az első millió tag összege csak körülbelül $14{,}39$, és ahhoz, hogy a részletösszeg meghaladja a $100$-at, körülbelül $1{,}5 \cdot 10^{43}$ tagra van szükség. (Később látni fogjuk, hogy $s_n$ nagyjából $\ln n$-nel egyenlő.) A tanulság: numerikus kísérletekből a sorok konvergenciájára nem lehet következtetni.

A minoráns kritérium szerint a harmonikus sor divergenciájából azonnal következik, hogy $\sum \frac{1}{\sqrt{n}}$ is divergens, hiszen $\frac{1}{\sqrt{n}} \ge \frac{1}{n}$.

**Kitekintés: a sorrend számít!** A $1 - \frac{1}{2} + \frac{1}{3} - \frac{1}{4} + \dots$ váltakozó előjelű harmonikus sor konvergens (összege $\ln 2$). Bernhard Riemann azonban megmutatta, hogy tagjait alkalmas sorrendbe rakva **bármilyen** előre megadott összeget elérhetünk, sőt divergens sort is kaphatunk. Ez éles ellentétben áll a sorozatokkal, amelyek határértékét az átrendezés nem változtatja meg (23. szakasz). Az ok: a pozitív és a negatív tagok külön-külön végtelen összeget adnak, és a sorrend megválasztásával szabályozhatjuk, melyik „végtelen” mikor érvényesül. A sorok átrendezésének részletes elmélete a következő félév anyaga.

---

## A VII. rész összefoglalása

- A $\sum a_k$ sor a részletösszegek $s_n = a_1 + \dots + a_n$ sorozata; konvergenciája $(s_n)$ konvergenciáját jelenti, összege $\lim s_n$.
- Cauchy-kritérium: a sor pontosan akkor konvergens, ha a késői szeletek $|a_n + \dots + a_m|$ tetszőlegesen kicsik.
- Szükséges feltétel: konvergens sor tagjai $0$-hoz tartanak. **Nem elégséges** (harmonikus sor).
- Pozitív tagú sor pontosan akkor konvergens, ha részletösszegei korlátosak; ebből az összehasonlító kritérium.
- Nevezetes sorok: $\sum q^n = \frac{1}{1-q}$ ($|q| < 1$); $\sum \frac{1}{n(n+1)} = 1$ (teleszkopikus); $\sum \frac{1}{n^2}$ konvergens; $\sum \frac{1}{n} = +\infty$.

## Feladatok a VII. részhez

1. Számítsuk ki: a) $\sum_{n=0}^\infty \left(\frac{2}{3}\right)^n$; b) $\sum_{n=1}^\infty \frac{2^n + 3^n}{6^n}$; c) $\sum_{n=1}^\infty \frac{1}{(n+1)(n+2)}$.
2. Írjuk fel a $0{,}3\overline{7}$ szakaszos tizedes törtet tört alakban.
3. Konvergensek-e a következő sorok? a) $\sum \frac{n}{2n + 1}$; b) $\sum \frac{1}{n^3}$; c) $\sum \frac{1}{n\cdot 2^n}$; d) $\sum \frac{1}{2n - 1}$.
4. Bizonyítsuk be, hogy ha $\sum a_n$ konvergens és $\sum b_n$ divergens, akkor $\sum (a_n + b_n)$ divergens. Mit mondhatunk két divergens sor összegéről?
5. Számítsuk ki a $\sum_{n=1}^\infty \frac{1}{n(n+1)(n+2)}$ sor összegét. (Útmutatás: $\frac{1}{n(n+1)(n+2)} = \frac{1}{2}\left(\frac{1}{n(n+1)} - \frac{1}{(n+1)(n+2)}\right)$.)

### Megoldási útmutatók

1. a) $\frac{1}{1 - 2/3} = 3$. b) $\sum \left(\frac{1}{3}\right)^n + \sum\left(\frac{1}{2}\right)^n = \frac{1}{2} + 1 = \frac{3}{2}$. c) Teleszkopikus: $\frac{1}{n+1} - \frac{1}{n+2}$, az összeg $\frac{1}{2}$.
2. $0{,}3\overline{7} = \frac{3}{10} + \frac{7}{100}\cdot\frac{1}{1 - 1/10} = \frac{3}{10} + \frac{7}{90} = \frac{34}{90} = \frac{17}{45}$.
3. a) Divergens, a tagok $\frac{1}{2}$-hez tartanak. b) Konvergens, majoráns: $\frac{1}{n^2}$. c) Konvergens, majoráns: $\frac{1}{2^n}$. d) Divergens: $\frac{1}{2n-1} \ge \frac{1}{2n}$, és $\sum \frac{1}{2n} = \frac{1}{2}\sum \frac{1}{n} = +\infty$.
4. Ha $\sum(a_n + b_n)$ konvergens volna, akkor $\sum b_n = \sum(a_n + b_n) - \sum a_n$ is konvergens volna. Két divergens sor összege lehet konvergens ($\sum 1 + \sum(-1)$) és divergens is.
5. Teleszkopikus: az összeg $\frac{1}{2}\cdot\frac{1}{1\cdot 2} = \frac{1}{4}$.

---
