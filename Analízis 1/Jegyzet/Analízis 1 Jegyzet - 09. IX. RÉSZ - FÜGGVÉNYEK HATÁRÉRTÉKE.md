# IX. RÉSZ: FÜGGVÉNYEK HATÁRÉRTÉKE

## 45. Motiváció és a pontozott környezet

**Definíció.** Az $a \in \mathbb{R}$ pont **pontozott $\varepsilon$ sugarú környezete**
$$\dot{B}(a, \varepsilon) = B(a,\varepsilon) \setminus \{a\} = (a - \varepsilon,\ a) \cup (a,\ a + \varepsilon).$$

A „pontozottság" nem technikai finomság, hanem a fogalom lényege: a határérték azt írja le, hogyan viselkedik a függvény az $a$ pont **közelében**, függetlenül attól, mi történik magában az $a$ pontban (sőt akkor is, ha ott nincs is értelmezve).

**Motiváló példák.**

1. **A pillanatnyi sebesség.** Legyen $s(t)$ az út–idő függvény, és kérdezzük a $t_0$ pontbeli pillanatnyi sebességet. Képezzük az
$$f(t) = \frac{s(t) - s(t_0)}{t - t_0}, \qquad D(f) = D(s) \setminus \{t_0\}$$
átlagsebesség-függvényt. Az $f$ a $t_0$ pontban definíció szerint **nincs** értelmezve, mégis azt tapasztaljuk, hogy ha $|t - t_0|$ kicsi, akkor $f(t)$ „nagyon közel van" egy bizonyos $v(t_0)$ számhoz. Konkrétan, ha $s(t) = t^2$, akkor
$$f(t) = \frac{t^2 - t_0^2}{t - t_0} = \frac{(t - t_0)(t + t_0)}{t - t_0} = (t + t_0)\big|_{\mathbb{R}\setminus\{t_0\}},$$
tehát ha $t$ közel van $t_0$-hoz, akkor $f(t)$ közel van $2t_0$-hoz.

2. **Megszüntethető „lyuk".** Legyen $f(x) = (\operatorname{sgn} x)^2$ és $x_0 = 0$. Itt $f(0) = 0$, de minden más helyen $f(x) = 1$; a függvény tehát a $0$ közelében az $1$-hez tart, jóllehet a $0$-ban felvett értéke más.

3. **Nincs határérték.** Legyen $f(x) = \{x\}$ (törtrész) és $x_0 = 0$. Balról közeledve az értékek $1$-hez tartanak, jobbról közeledve $0$-hoz. Nincs olyan szám, amelyhez „minden irányból" közelednének.

## 46. A határérték definíciója

**Definíció.** Az $f$ függvény $a \in \mathbb{R}$ helyen vett **határértéke** a $b \in \mathbb{R}$ szám, ha

- **(I)** létezik $\delta_0 > 0$, amelyre $\dot{B}(a, \delta_0) \subset D(f)$, és
- **(II)** minden $\varepsilon > 0$-hoz létezik $\delta > 0$ úgy, hogy minden $x \in \dot{B}(a,\delta)$ esetén
$$|f(x) - b| < \varepsilon, \qquad \text{azaz} \qquad f(x) \in B(b, \varepsilon).$$

Az (I) feltétel garantálja, hogy a kérdés egyáltalán értelmes legyen: a függvénynek értelmezve kell lennie $a$ egy pontozott környezetében. A $\delta$ értéke függ $\varepsilon$-tól (néha $\delta_\varepsilon$-t írunk), és **nem egyértelmű**: minden nála kisebb pozitív szám is megfelel.

**Jelölések.** $\displaystyle \lim_{x\to a} f(x) = b$, illetve $f(x) \to b$, ha $x \to a$. Olvasata: „$f$ tart $b$-hez, ha $x$ tart $a$-hoz", vagy „$f$ limesze az $a$-ban $b$".

**Szemléletes jelentés.** Rajzoljunk a $b$ körül egy vízszintes sávot $b - \varepsilon$ és $b + \varepsilon$ között. A definíció azt mondja: bármilyen keskeny is ez a sáv, tudunk az $a$ körül olyan keskeny függőleges sávot ($a - \delta$ és $a + \delta$ között) kijelölni, hogy a grafikon ezen belül — az $x = a$ függőlegest leszámítva — teljes egészében a vízszintes sávban fut.

**Példák.**
$$\lim_{x\to 0} (\operatorname{sgn} x)^2 = 1, \qquad \lim_{x\to 0} \operatorname{sgn}(x) \ \text{nem létezik},$$
$$\lim_{x\to 5} x = 5, \qquad \lim_{x\to 0} \{x\} \ \text{nem létezik}, \qquad \lim_{x\to 1/2} \{x\} = \frac{1}{2}.$$

**Kidolgozott példa.** Legyen $f(x) = x^3$; mennyi $\lim_{x\to 2} f(x)$? A sejtés természetesen $2^3 = 8$. Itt $D(f) = \mathbb{R}$, tehát (I) teljesül. A becsléshez szorzattá alakítunk:
$$|x^3 - 2^3| = |x-2| \cdot |x^2 + 2x + 4|.$$
Szűkítsük le a vizsgálatot: **ha** $|x - 2| < 1$, akkor $x \in [1,3]$, tehát $x^2 \le 9$ és $2x \le 6$, így
$$|x^2 + 2x + 4| \le 9 + 6 + 4 = 19.$$
Ezért $|x^3 - 8| \le 19|x-2|$. Adott $\varepsilon > 0$-hoz válasszuk
$$\delta_\varepsilon = \min\left\{1,\ \frac{\varepsilon}{19}\right\}.$$
Ez valóban jó: ha $x \in \dot{B}(2, \delta_\varepsilon)$, akkor
$$|x^3 - 8| \le 19|x-2| < 19 \delta_\varepsilon \le \varepsilon. \qquad \blacksquare$$
A minimum képzése tipikus fogás: az egyik feltétel a becslés érvényességét biztosítja, a másik a kívánt pontosságot.

## 47. Féloldali határértékek és az egységes séma

A $\operatorname{sgn}(x)$ függvény a $0$-ban „jobbról az $1$-hez tart", balról pedig a $(-1)$-hez. Ezt is érdemes precízzé tenni.

**Definíció (jobb oldali határérték).** Az $f$-nek az $a \in \mathbb{R}$ helyen a **jobb oldali határértéke** a $b \in \mathbb{R}$ szám, ha

- **(I)** létezik $\delta_0 > 0$, amelyre $(a, a+\delta_0) = \dot{B}(a+0, \delta_0) \subset D(f)$, és
- **(II)** minden $\varepsilon > 0$-hoz létezik $\delta > 0$ úgy, hogy minden $x \in (a, a+\delta)$ esetén $|f(x) - b| < \varepsilon$.

Jelölések: $\lim_{x \to a+0} f(x) = b$, $\lim_{x\to a+} f(x) = b$, $f(a+0)$, $f(a+)$. A bal oldali határértéket, $\lim_{x\to a-0} f(x)$-et, hasonlóan definiáljuk.

**Tétel.** $\displaystyle \lim_{x\to a} f(x) = b \iff \lim_{x\to a-0} f(x) = \lim_{x\to a+0} f(x) = b$.

**Az egységes definíciós séma.** A sokféle határértéket egyetlen sablonba foglalhatjuk, ha bevezetjük a következő környezet-jelöléseket:
$$B(a+0,\delta) = [a, a+\delta), \qquad \dot{B}(a+0,\delta) = (a, a+\delta),$$
és hasonlóan $B(a-0,\delta)$, $\dot{B}(a-0,\delta)$.

**Definíció (egységes séma).** Legyen $\alpha$ a következők valamelyike: $a-0$, $a$, $a+0$; és legyen $\beta = b \in \mathbb{R}$. Ekkor
$$\lim_{x \to \alpha} f(x) = \beta,$$
ha

- **(I)** $f$ értelmezve van az $\alpha$ egy $\dot{U}_0$ „pontozott" környezetében, és
- **(II)** a $\beta$ bármely $V$ környezetéhez van az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U}$-ra $f(x) \in V$.

**Példa a séma használatára.** A $\lim_{x\to a-0} f(x) = b$ esetben $\alpha = a-0$, $\beta = b$, továbbá $\dot{U}_0 = \dot{B}(a-0,\delta_0)$, $V = B(b,\varepsilon)$ és $\dot{U} = \dot{B}(a-0,\delta)$.

## 48. Végtelen határértékek és határérték a végtelenben

A séma ereje abban áll, hogy a $\pm\infty$ esetekre is kiterjeszthető — pusztán a megfelelő „környezetek" megadásával.

**Végtelen határérték.** Tekintsük az $\frac{1}{x^2}$ függvényt; ez „$+\infty$-hez tart", ha $x \to 0$. A sémában $\alpha = a$, $\beta = +\infty$, továbbá
$$\dot{U}_0 = \dot{B}(a,\delta_0), \qquad V = B(+\infty, K) = (K, +\infty), \qquad \dot{U} = \dot{B}(a,\delta).$$
Kibontva:
$$\lim_{x\to a} f(x) = +\infty \iff \begin{cases} \text{(I)} & \exists \delta_0 > 0: \dot{B}(a,\delta_0) \subset D(f), \\ \text{(II)} & \forall K \in \mathbb{R}\ \exists \delta > 0\ \forall x \in \dot{B}(a,\delta): f(x) > K. \end{cases}$$
A $B(-\infty, K) = (-\infty, K)$ környezettel ugyanígy definiálható a $\lim_{x\to\alpha} f(x) = -\infty$ eset. Megállapodás szerint $\dot{B}(\pm\infty, K) \stackrel{\text{def}}{=} B(\pm\infty, K)$ — a végtelenben nincs mit „kipontozni".

**Határérték a végtelenben.** Az $\frac{1}{x} \to 0$, ha $x \to +\infty$; tehát a határérték a $\pm\infty$-ben is értelmezhető, azaz $\alpha = \pm\infty$ is megengedett.

**Összesen tehát $15$ féle limesz definiálható:**

- $\alpha$ lehet: $-\infty$, $a-0$, $a$, $a+0$, $+\infty$ (öt lehetőség);
- $\beta$ lehet: $-\infty$, $b$, $+\infty$ (három lehetőség).

**Példa.** A $\lim_{x\to+\infty} f(x) = b$ esetben $\dot{U}_0 = (K_0, +\infty)$, $V = B(b,\varepsilon)$, $\dot{U} = (K, +\infty)$, azaz
$$\lim_{x\to+\infty} f(x) = b \iff \begin{cases} \text{(I)} & \exists K_0 \in \mathbb{R}: (K_0, +\infty) \subset D(f), \\ \text{(II)} & \forall \varepsilon > 0\ \exists K \in \mathbb{R}\ \forall x > K: |f(x) - b| < \varepsilon. \end{cases}$$

A tanulság: nem tizenöt különböző fogalmat kell megtanulni, hanem **egyet**, a környezetek nyelvén megfogalmazva.

## 49. Torlódási pont és leszűkített határérték

**Definíció (torlódási pont).** Ha $\alpha \in \overline{\mathbb{R}}$ és $A \subset \mathbb{R}$, akkor $\alpha$ az $A$ halmaz **torlódási pontja**, ha az $\alpha$ minden $U$ környezetében $A$-nak végtelen sok pontja van.

**Definíció (leszűkített határérték).** Tegyük fel, hogy $\alpha \in \overline{\mathbb{R}}$ az $A$ torlódási pontja. Az $f$ függvény határértéke az **$A$-ra szorítkozva** $\gamma \in \overline{\mathbb{R}}$, ha $A \subset D(f)$, és a $\gamma$ minden $V$ környezetéhez létezik az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U} \cap A$ esetén $f(x) \in V$. Jelölés:
$$\lim_{\substack{x \to \alpha \\ x \in A}} f(x) = \gamma.$$

**Megjegyzés.** A féloldali határérték ennek speciális esete: ha $\alpha = a \in \mathbb{R}$ és $A = (a, a+\delta_0]$ valamely $\delta_0 > 0$-val, akkor
$$\lim_{x\to a+0} f(x) = \gamma \iff \lim_{\substack{x\to a \\ x \in A}} f(x) = \gamma.$$

**Példa (a Dirichlet-függvény).** Ha $f = D$ a Dirichlet-függvény, akkor minden $c \in \mathbb{R}$-re
$$\lim_{\substack{x\to c \\ x \in \mathbb{Q}}} D(x) = 1, \qquad \lim_{\substack{x\to c \\ x \in \mathbb{R}\setminus\mathbb{Q}}} D(x) = 0.$$
Mindkét leszűkített határérték létezik, de különbözők — ezért a (nem leszűkített) határérték sehol sem létezik.

## 50. Az átviteli elv

Az analízis egyik leghatékonyabb eszköze az, hogy a **függvényhatárértéket visszavezeti a sorozathatárértékre**. Így minden sorozatokra bizonyított tétel „átvihető" a függvényekre.

**Motiváló példák.**

- $\lim_{x\to 2} x^2 = 4$; és valóban, ha $a_n = 2 + \frac{1}{n}$, akkor $\lim_{n\to\infty}\left(2 + \frac{1}{n}\right)^2 = 4$.
- $\lim_{n\to\infty} \left\{\frac{1}{n}\right\} = 0$, azaz **egyetlen** $u_n = \frac{1}{n} \to 0$ sorozatra a képek $0$-hoz tartanak — de $\lim_{x\to 0}\{x\}$ mégsem létezik. Egyetlen sorozat tehát nem elég.
- Ha $f = D$, akkor $\lim_{n\to\infty} D\!\left(\frac{1}{n}\right) = 1$ (hiszen $\frac{1}{n}$ racionális), de $\lim_{x\to 0+0} D(x)$ nem létezik.

A tanulság: a helyes állításban **minden** sorozatot kell figyelembe venni.

**Tétel (átviteli elv).** Tegyük fel, hogy létezik az $\alpha$-nak olyan $\dot{U}$ pontozott környezete, amelyre $\dot{U} \subset D(f)$. Ekkor
$$\lim_{x\to\alpha} f(x) = \gamma \iff \text{minden olyan } a_n \to \alpha \text{ sorozatra, amelyre } a_n \in \dot{U}\ (n = 1, 2, \dots),\ \text{teljesül, hogy } f(a_n) \to \gamma.$$

*Bizonyítás (az $\alpha = a \in \mathbb{R}$, $\gamma = b \in \mathbb{R}$ esetben; a többi eset hasonló).*

**1. (A) $\Rightarrow$ (B).** Tegyük fel, hogy $\lim_{x\to a} f(x) = b$, és legyen $a_n \to a$, $a_n \in \dot{U} = \dot{B}(a,\delta_0)$. Adott $\varepsilon > 0$-hoz a határérték definíciója szerint van olyan $\delta > 0$, hogy minden $x \in \dot{B}(a,\delta)$-ra $|f(x) - b| < \varepsilon$. Mivel $a_n \to a$ és $a_n \neq a$, létezik olyan $n_\delta$, hogy $n \ge n_\delta$ esetén
$$0 < |a_n - a| < \delta, \qquad \text{azaz} \qquad a_n \in \dot{B}(a,\delta).$$
Ekkor $|f(a_n) - b| < \varepsilon$, tehát $f(a_n) \to b$.

**2. (B) $\Rightarrow$ (A).** Ezt a **kontrapozíció elvével** bizonyítjuk: $B \Rightarrow A$ ekvivalens $\overline{A} \Rightarrow \overline{B}$-vel. Tegyük fel tehát, hogy $f(x) \not\to b$, ha $x \to a$. A definíció tagadása szerint
$$\exists \varepsilon > 0, \ \text{amelyre} \ \forall \delta > 0 \ \exists x \in \dot{B}(a,\delta): |f(x) - b| \ge \varepsilon.$$
Alkalmazzuk ezt a $\delta_n = \frac{1}{n}$ választásokra: minden $n \in \mathbb{N}$-hez van olyan $a_n \in \dot{B}\!\left(a, \frac{1}{n}\right)$, amelyre $|f(a_n) - b| \ge \varepsilon$. Az így kapott sorozatra $a_n \to a$, $a_n \neq a$, elég nagy $n$-re $a_n \in \dot{U}$ — de $f(a_n) \not\to b$. Ezzel (B)-t megcáfoltuk. $\blacksquare$

Az átviteli elv **kiválóan használható annak megmutatására, hogy bizonyos határértékek nem léteznek**: elég két olyan sorozatot találni, amelyek ugyanoda tartanak, de a képsorozataik különböző határértékűek.

## 51. Határérték és műveletek; kompozíció

**Tétel.** Ha $\lim_{x\to\alpha} f(x) = b$ és $\lim_{x\to\alpha} g(x) = c$, akkor

1. **(i)** $\displaystyle \lim_{x\to\alpha} \big(f(x) + g(x)\big) = b + c$;
2. **(ii)** $\displaystyle \lim_{x\to\alpha} f(x)g(x) = bc$;
3. **(iii)** ha $c \neq 0$, akkor $\displaystyle \lim_{x\to\alpha} \frac{f(x)}{g(x)} = \frac{b}{c}$.

*Bizonyítás.* Az átviteli elv visszavezeti mindegyiket a sorozatokra vonatkozó tételekre. Például (ii): legyen $a_n \to \alpha$ tetszőleges, $a_n \in \dot{U}$. Az átviteli elv szerint $f(a_n) \to b$ és $g(a_n) \to c$; a sorozatokra vonatkozó szorzattétel szerint $f(a_n)g(a_n) \to bc$; végül az átviteli elvet **visszafelé** alkalmazva $\lim_{x\to\alpha} f(x)g(x) = bc$. $\blacksquare$

Ez a bizonyítási minta végig ismétlődik: sorozatra visszavezetni, ott alkalmazni a kész tételt, majd visszatérni.

**Tétel (határérték és kompozíció).** Tegyük fel, hogy

- $\lim_{x\to\alpha} g(x) = \gamma \in \overline{\mathbb{R}}$,
- $g(x) \neq \gamma$ az $\alpha$ valamely $\dot{U}$ pontozott környezetében, és
- $\lim_{t\to\gamma} f(t) = \beta$.

Ekkor $\displaystyle \lim_{x\to\alpha} f(g(x)) = \beta$.

*Bizonyítás.* Legyen $a_n \to \alpha$ tetszőleges sorozat, $\{a_n\} \subset \dot{U}$. Legyen $t_n = g(a_n)$; a feltevések szerint $t_n \neq \gamma$ és $t_n \to \gamma$. Mivel $\lim_{t\to\gamma} f(t) = \beta$, az átviteli elv szerint $f(t_n) \to \beta$, azaz $f(g(a_n)) \to \beta$. Ismét az átviteli elvet alkalmazva kapjuk az állítást. $\blacksquare$

**Megjegyzés (a $g(x) \neq \gamma$ feltétel fontossága).** E nélkül a tétel hamis: ha $g$ felveszi a $\gamma$ értéket, akkor az $f(g(x))$ a „lyukas" $f(\gamma)$ értéket is felveheti, amely eltérhet a $\beta$ határértéktől.

**Megjegyzés (szimbolikus szabályok).** A szokásos rövidítések — $\infty + \infty = \infty$, $\infty \cdot a = \infty$ ($a > 0$), $\frac{1}{\infty} = 0$ és társaik — ezekre a tételekre utalnak, de nem helyettesítik őket: a kritikus esetekben (lásd a 26. szakasz táblázatait) nincs ilyen szabály.

---
