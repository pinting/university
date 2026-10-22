# Analízis 1 – 9. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 88. feladat

Definiáljuk $\lim\limits_{x \to a-0} f(x) = -\infty$-t, $\lim\limits_{x \to -\infty} f(x) = b$-t és $\lim\limits_{x \to -\infty} f(x) = +\infty$-t.

**Megoldás.**

**$\lim_{x \to a-0} f(x) = -\infty$:** $a$ bal oldali torlódási pontja $D(f)$-nek (azaz minden $\delta > 0$-ra $(a - \delta, a) \cap D(f) \neq \emptyset$), és
$$\forall P \in \mathbb{R}\ \exists \delta > 0\ \forall x \in D(f),\ a - \delta < x < a:\ f(x) < P.$$

**$\lim_{x \to -\infty} f(x) = b$** ($b \in \mathbb{R}$): $D(f)$ alulról nem korlátos, és
$$\forall \varepsilon > 0\ \exists K \in \mathbb{R}\ \forall x \in D(f),\ x < K:\ |f(x) - b| < \varepsilon.$$

**$\lim_{x \to -\infty} f(x) = +\infty$:** $D(f)$ alulról nem korlátos, és
$$\forall P \in \mathbb{R}\ \exists K \in \mathbb{R}\ \forall x \in D(f),\ x < K:\ f(x) > P.$$

(Környezetekkel egységesen: $\lim_{x \to \alpha} f(x) = \beta$, ha $\beta$ minden $V$ környezetéhez van $\alpha$-nak olyan $\dot U$ pontozott környezete, hogy $f(\dot U \cap D(f)) \subseteq V$; itt $-\infty$ környezetei a $(-\infty, K)$ félegyenesek, a bal oldali határértéknél pedig $\dot U$ helyett $(a - \delta, a)$ áll.)

::: elmelet
**Elméleti háttér — a határérték egységes definíciója és a tizenöt eset.**

*Környezetek.* Legyen $\overline{\mathbb R} = \mathbb R \cup \{\pm\infty\}$. Környezetek: $a \in \mathbb R$-nek $(a - \delta, a + \delta)$; $+\infty$-nek $(K, +\infty)$; $-\infty$-nek $(-\infty, K)$. Egyoldali határértéknél $a$ „félkörnyezeteit” használjuk: $(a - \delta, a)$ (bal), $(a, a + \delta)$ (jobb). Pontozott környezet: a környezetből az $a$ pontot elhagyjuk (végtelenben ez nem változtat semmin).

*Az egységes definíció.* $\alpha \in \overline{\mathbb R}$ legyen a $D(f)$ torlódási pontja (végtelennél: $D(f)$ felülről/alulról nem korlátos). Ekkor
$$\lim_{x \to \alpha} f(x) = \beta \iff \forall V \ni \beta \text{ környezet } \exists \dot U \text{ pontozott környezete } \alpha\text{-nak}: \ f(\dot U \cap D(f)) \subseteq V.$$
Mivel $\alpha$ lehet $a$, $a - 0$, $a + 0$, $+\infty$, $-\infty$ (öt eset), $\beta$ pedig $b$, $+\infty$, $-\infty$ (három eset), ez $5 \cdot 3 = 15$ konkrét definíciót foglal egybe. Mindegyik ugyanígy írható fel kvantorokkal: a „$V$” helyére $\varepsilon$ vagy $P$, a „$\dot U$” helyére $\delta$ vagy $K$ kerül.

*Miért kell a torlódási pont?* Ha $\alpha$ nem torlódási pont, van olyan pontozott környezete, amely nem metszi $D(f)$-et; ott a $f(\dot U \cap D(f)) \subseteq V$ feltétel üresen teljesülne minden $V$-re, és bármely $\beta$ határérték volna. A torlódási pont feltétel biztosítja a határérték **egyértelműségét**.

*Sorozatok mint speciális eset.* A $\lim_{n\to\infty} a_n$ a $\lim_{x \to +\infty} f(x)$ speciális esete $D(f) = \mathbb N$-nel ($+\infty$ a $\mathbb{N}$ torlódási pontja). A sorozatokra tanult tételek (műveletek, rendőrelv, monoton határérték) ezért függvényekre is átvihetők — leggyorsabban az átviteli elvvel.

*Hasznos átfogalmazás.* $\lim_{x\to-\infty} f(x) = \lim_{t \to +\infty} f(-t)$ és $\lim_{x \to a - 0} f(x) = \lim_{t \to 0+0} f(a - t)$; a „végtelenbeli” határértékek a $t = \frac1x$ helyettesítéssel $0$-beliekre vezethetők vissza: $\lim_{x\to+\infty} f(x) = \lim_{t \to 0+0} f\left(\frac1t\right)$.
:::

## 89. feladat

Mondjuk ki $\lim\limits_{x \to a} f(x) = +\infty$ tagadását!

**Megoldás.**

Az állítás (ha $a$ torlódási pontja $D(f)$-nek):
$$\forall P \in \mathbb{R}\ \exists \delta > 0\ \forall x \in D(f),\ 0 < |x - a| < \delta:\ f(x) > P.$$
Tagadása:
$$\exists P \in \mathbb{R}\ \forall \delta > 0\ \exists x \in D(f),\ 0 < |x - a| < \delta:\ f(x) \le P.$$
Szavakban: van olyan $P$ korlát, hogy $a$ bármely pontozott környezetében van olyan $x \in D(f)$, ahol $f(x) \le P$. (Átviteli elvvel: van olyan $x_n \in D(f) \setminus \{a\}$, $x_n \to a$ sorozat, amelyre $f(x_n) \not\to +\infty$; sőt, olyan is, amelyre $f(x_n) \le P$ minden $n$-re.)

::: elmelet
**Elméleti háttér — tagadás és az átviteli elv.**

*Az átviteli elv (Heine).* Legyen $\alpha$ a $D(f)$ torlódási pontja. Ekkor
$$\lim_{x \to \alpha} f(x) = \beta \iff \text{minden } x_n \in D(f) \setminus \{\alpha\},\ x_n \to \alpha \text{ sorozatra } f(x_n) \to \beta.$$
*„$\Rightarrow$”:* $\beta$ adott $V$ környezetéhez van $\dot U$; mivel $x_n \to \alpha$ és $x_n \ne \alpha$, egy indextől $x_n \in \dot U$, így $f(x_n) \in V$. *„$\Leftarrow$” (indirekten):* ha a határérték nem $\beta$, a tagadás szerint van olyan $V$, hogy $\alpha$ minden pontozott környezetében — így a $\frac1n$ sugarúban is — van $x_n$ rossz ponttal, $f(x_n) \notin V$. Ez egy $\alpha$-hoz tartó sorozat, amelyre $f(x_n) \not\to \beta$.

*A tagadás mint sorozat.* A feladat tagadásában a „$\forall \delta\ \exists x$” szerkezet a $\delta = \frac1n$ választással egy $x_n \to a$ sorozatot ad, amelyre $f(x_n) \le P$ — ez a $+\infty$ határérték tagadásának sorozatos alakja. Az átviteli elv bizonyításának „$\Leftarrow$” iránya pontosan ezt a konstrukciót használja.

*Mire jó?*

1. **Határérték nemlétezése:** elég két sorozat különböző határértékekkel, vagy egy sorozat, amely mentén $f(x_n)$ divergens. Például $\sin\frac1x$ a $0$-ban: $x_n = \frac{1}{n\pi}$ mentén $0$, $y_n = \frac{1}{2n\pi + \pi/2}$ mentén $1$.
2. **Tételek átvitele:** a sorozatokra bizonyított műveleti szabályok, rendőrelv, egyenlőtlenségek közvetlenül függvényekre is érvényesek.

*Figyelem.* Az átviteli elvben **minden** sorozatot kell vizsgálni; egyetlen jó sorozatból nem következik a határérték létezése (a $\sin\frac1x$ az $\frac{1}{n\pi}$ mentén $0$-hoz tart, mégsincs határértéke).
:::

## 90. feladat

Adjuk meg a következő határértékeket:

a) $\lim\limits_{x \to 0} \dfrac{(1 + x)^5 - (1 + 5x)}{x^2 + x^5}$, b) $\lim\limits_{x \to \infty} \dfrac{x^7 + 6x^8 + 7}{x^{10} + 8}$, c) $\lim\limits_{x \to \infty} \dfrac{x}{\sqrt{1 + x^2}}$.

**Megoldás.**

a) A binomiális tétel szerint $(1 + x)^5 - (1 + 5x) = 10x^2 + 10x^3 + 5x^4 + x^5$, a nevező $x^2(1 + x^3)$. $x^2$-tel egyszerűsítve ($x \neq 0$):
$$\frac{10 + 10x + 5x^2 + x^3}{1 + x^3} \xrightarrow{x \to 0} \mathbf{10}.$$

b) A számláló foka 8, a nevezőé 10. $x^{10}$-nel osztva:
$$\frac{x^{-3} + 6x^{-2} + 7x^{-10}}{1 + 8x^{-10}} \xrightarrow{x \to \infty} \frac{0}{1} = \mathbf{0}.$$

c) $x > 0$-ra $\sqrt{1 + x^2} = x\sqrt{1/x^2 + 1}$, így
$$\frac{x}{\sqrt{1 + x^2}} = \frac{1}{\sqrt{1/x^2 + 1}} \xrightarrow{x \to \infty} \mathbf{1}.$$

::: elmelet
**Elméleti háttér — racionális függvények határértéke.**

*Polinomok folytonossága.* A polinomok és a racionális törtfüggvények az értelmezési tartományuk minden pontjában folytonosak (a műveleti tételek miatt), így ott a határérték a behelyettesítési érték. Érdekes eset csak a nevező gyökeiben és a végtelenben van.

*Határérték a nevező gyökében ($\frac00$ alak).* Ha $p(a) = q(a) = 0$, a gyöktényező-tétel szerint $p(x) = (x - a)^kp_1(x)$ és $q(x) = (x - a)^lq_1(x)$, ahol $p_1(a), q_1(a) \ne 0$. Egyszerűsítés után:

- $k > l$: a határérték $0$;
- $k = l$: a határérték $\frac{p_1(a)}{q_1(a)}$;
- $k < l$: végtelen (előjel az oldaltól és $l - k$ paritásától függ).

Az a) részben a számláló $(1 + x)^5 - (1 + 5x)$ a binomiális tétel szerint $x^2$-tel kezdődik (az első két tagot kivontuk), a nevező is $x^2$-tel, így a határérték a $x^2$ együtthatóinak hányadosa: $\frac{\binom52}{1} = 10$. (Ez a $(1 + x)^5$ második deriváltjának fele a $0$-ban — a Taylor-polinom előzménye.)

*Határérték a végtelenben.* $\frac{p(x)}{q(x)}$, $\deg p = k$, $\deg q = l$, főegyütthatók $a_k$, $b_l$: $k < l$ esetén $0$; $k = l$ esetén $\frac{a_k}{b_l}$; $k > l$ esetén $\pm\infty$. A bizonyítás: osztás $x^l$-lel, és $\frac{1}{x^j} \to 0$.

*Gyökös kifejezések.* $\sqrt{x^2} = |x|$ — **nem** $x$! Ezért $x \to +\infty$-nél $\frac{x}{\sqrt{1 + x^2}} \to 1$, de $x \to -\infty$-nél $-1$ (ott $\sqrt{1 + x^2} = |x|\sqrt{1 + \frac{1}{x^2}} = -x\sqrt{\dots}$). A függvénynek két különböző vízszintes aszimptotája van ($y = \pm 1$).

*Aszimptoták.* $y = b$ vízszintes aszimptota $+\infty$-ben, ha $\lim_{x\to\infty}f(x) = b$; $x = a$ függőleges aszimptota, ha valamelyik egyoldali határérték $\pm\infty$; $y = mx + c$ ferde aszimptota, ha $f(x) - (mx + c) \to 0$. Racionális függvénynél ferde aszimptota akkor van, ha $\deg p = \deg q + 1$ (polinomosztással kapható).
:::

## 91. feladat

Bizonyítsuk be, hogy ha egy korlátos $H$ halmaznak csak egyetlen torlódási pontja van, akkor $H$ megszámlálható, és van olyan $(x_n)$ sorozatba rendezése, amelyre a $\lim\limits_{n \to \infty} x_n$ határérték létezik és egyenlő $H$ torlódási pontjával.

**Megoldás.**

Legyen $h$ a $H$ egyetlen torlódási pontja, és $n \in \mathbb{N}$-re
$$A_n = H \setminus (h - \tfrac1n, h + \tfrac1n).$$

**$A_n$ véges.** $A_n$ korlátos. Ha végtelen volna, a Bolzano–Weierstrass-tétel szerint volna egy $c$ torlódási pontja. Ez $H$-nak is torlódási pontja, tehát $c = h$. Másrészt $A_n$ a zárt $\mathbb{R} \setminus (h - \frac1n, h + \frac1n)$ halmazban van, így a torlódási pontjai is ott vannak, és $h$ nincs ott. Ellentmondás.

**$H$ megszámlálható.** $H \setminus \{h\} = \bigcup_{n=1}^\infty A_n$ megszámlálható sok véges halmaz uniója, tehát megszámlálható. $H$ végtelen, mert van torlódási pontja. Így $H$ megszámlálhatóan végtelen.

**A sorozatba rendezés.** Ha $h \in H$, az első elem legyen $x_1 = h$. Utána soroljuk fel $A_1$ elemeit, majd $A_2 \setminus A_1$, $A_3 \setminus A_2$, … elemeit. Ezek véges halmazok, és egyesítésük $H \setminus \{h\}$. Így $H$ minden eleme pontosan egyszer kerül sorra: ez egy $n \mapsto x_n$ bijekció $\mathbb{N}$ és $H$ között.

**$x_n \to h$.** Adott $\varepsilon > 0$-hoz legyen $N > \frac1\varepsilon$. A $h$-tól legalább $\varepsilon$ távolságra levő elemek mind $A_N$-ben vannak, és $A_N$ véges. Ezek a sorozatban véges sok indexen fordulnak elő. Van tehát olyan $n_0$, hogy $n > n_0$ esetén $|x_n - h| < \varepsilon$. $\blacksquare$

::: elmelet
**Elméleti háttér — Bolzano–Weierstrass, torlódási pontok és megszámlálhatóság.**

*Bolzano–Weierstrass-tétel (halmazokra).* Minden korlátos, végtelen $H \subseteq \mathbb R$ halmaznak van torlódási pontja. *Bizonyítás intervallumfelezéssel:* $H \subseteq [a_0, b_0]$; mindig azt a felét választjuk, amely $H$-nak végtelen sok pontját tartalmazza; a Cantor-tulajdonság adta közös pont minden környezete tartalmaz egy ilyen intervallumot, tehát végtelen sok $H$-beli pontot.

*A „rétegezés”.* A torlódási ponttól legalább $\frac1n$ távolságra levő pontok halmaza, $A_n$, véges: ha végtelen volna, a Bolzano–Weierstrass-tétel szerint lenne egy torlódási pontja, és az — mivel az $A_n$-t tartalmazó $\{x : |x - h| \ge \frac1n\}$ halmaz **zárt** (torlódási pontjait tartalmazza) — különbözne $h$-tól. A $H \setminus \{h\} = \bigcup A_n$ felbontás így megszámlálható sok véges halmaz uniója.

*Ugyanez általánosabban.* Ha egy korlátos halmaznak **megszámlálhatóan sok** torlódási pontja van, a halmaz megszámlálható (bonyolultabb, de hasonló rétegezéssel). Egy nem megszámlálható halmaznak viszont mindig van **kondenzációs pontja** (amelynek minden környezete nem megszámlálhatóan sok pontot tartalmaz).

*A sorozat konvergenciája.* A felsorolásban minden $A_N$-beli elem véges sok helyen szerepel; utána csak $h$-hoz $\frac1N$-nél közelebbi elemek jönnek. Ez pontosan a konvergencia definíciója: minden környezeten kívül véges sok tag. (Ha a felsorolás nem „rétegenként” haladna, a sorozat nem feltétlenül konvergálna — egy rossz sorrend végtelen sokszor „visszaugorhatna” a távoli pontokra. Egy véges számú réteg miatt azonban **bármely** felsorolásban konvergens a sorozat, hiszen minden $A_N$ véges, és minden elem csak egyszer szerepel.)

*Kapcsolat a sűrűsödési értékekkel.* Egy sorozat **egyetlen sűrűsödési értéke** + korlátosság $\Rightarrow$ konvergencia. Ez a feladat sorozatos megfelelője, és ugyanígy bizonyítható: ha a sorozat nem tartana a $h$-hoz, végtelen sok tag esne egy környezeten kívül, és ezeknek (Bolzano–Weierstrass) volna egy másik sűrűsödési értéke.
:::

## 92. feladat

Bizonyítsuk be, hogy ha $f : \mathbb{R} \to \mathbb{R}$ periodikus és $\lim\limits_{x \to \infty} f(x) = 0$, akkor $f$ azonosan $0$.

**Megoldás.**

Legyen $p > 0$ egy periódus (ha $p$ periódus, $-p$ is az). Rögzített $x \in \mathbb{R}$-re tekintsük az $x_n = x + np$ sorozatot. Erre $x_n \to \infty$, így az átviteli elv szerint $f(x_n) \to 0$. Másrészt $f(x_n) = f(x)$ minden $n$-re, tehát a sorozat konstans, és $f(x) = \lim f(x_n) = 0$. Mivel $x$ tetszőleges volt, $f \equiv 0$. $\blacksquare$

::: elmelet
**Elméleti háttér — határérték a végtelenben és periodikus függvények.**

*A végtelenbeli határérték.* $\lim_{x\to\infty}f(x) = b$, ha $\forall \varepsilon > 0\ \exists K\ \forall x > K: |f(x) - b| < \varepsilon$. Az átviteli elv szerint ekkor minden $x_n \to \infty$ sorozatra $f(x_n) \to b$.

*Periodikus függvény a végtelenben.* Egy periodikus függvény a végtelenben „ugyanazt csinálja újra és újra”, így ott határértéke csak akkor van, ha konstans. *Bizonyítás:* két tetszőleges $x, y$ pontra az $x + np$ és $y + np$ sorozatok a végtelenbe tartanak, és rajtuk $f$ konstans; ha volna határérték, mindkét konstansnak egyenlőnek kellene lennie vele, így $f(x) = f(y)$. A feladat ennek a $b = 0$ esete.

*A „sorozat letapogatja a függvényt” elv.* Egy jól választott sorozat (itt az $x + np$) mentén a függvényértékek ismertek, és az átviteli elv a határértékről **pontbeli** információt ad. Hasonló érvelés mutatja például, hogy ha $f$ folytonos és $f(x) = f(2x)$ minden $x$-re, akkor $f$ konstans ($f(x) = f(x/2^n) \to f(0)$).

*Példák határérték nélküli függvényekre a végtelenben.* $\sin x$, $\{x\}$ (periodikusak); $x\sin x$ (nem korlátos, oszcillál); $\sin x^2$ (egyre gyorsabban oszcillál). Ezzel szemben $\frac{\sin x}{x} \to 0$ (korlátos szor nullába tartó), és $\sin\frac1x \to 0$.

*Általánosítás: aszimptotikusan periodikus.* Ha $f = g + h$, ahol $g$ periodikus és $h \to 0$ a végtelenben, akkor $\lim_{x\to\infty} f$ pontosan akkor létezik, ha $g$ konstans. Ezt a gondolatot például a differenciálegyenletek periodikus megoldásainál használják.
:::

## 93. feladat

$$\lim_{x \to 1} \frac{\sqrt[359]{x} - 1}{\sqrt[5]{x} - 1} = ?$$

**Megoldás.**

Helyettesítsünk $t = \sqrt[1795]{x}$-et ($1795 = 5 \cdot 359$; elég $x > 0$-t nézni). Ekkor $\sqrt[359]{x} = t^5$ és $\sqrt[5]{x} = t^{359}$. A $x \mapsto t$ leképezés folytonos és injektív, $x \to 1$, $x \neq 1$ esetén $t \to 1$, $t \neq 1$. Így
$$\frac{t^5 - 1}{t^{359} - 1} = \frac{1 + t + t^2 + t^3 + t^4}{1 + t + \dots + t^{358}} \xrightarrow{t \to 1} \frac{5}{359}.$$
**A határérték $\dfrac{5}{359}$.**

::: elmelet
**Elméleti háttér — helyettesítés (összetett függvény határértéke) és a $\frac{t^m - 1}{t^n - 1}$ típus.**

*Az összetett függvény határértéke.* Ha $\lim_{x \to a} \varphi(x) = b$, és $\lim_{t \to b} g(t) = c$, akkor $\lim_{x \to a} g(\varphi(x)) = c$, feltéve, hogy

- $\varphi(x) \ne b$ az $a$ egy pontozott környezetében, **vagy**
- $g$ folytonos $b$-ben ($g(b) = c$).

A feltétel azért kell, mert $g$ a $b$-ben akármi lehet, és ha $\varphi$ felveszi a $b$ értéket, a $g(b)$ értékkel „beleszólhat” a határértékbe (lásd a Riemann-függvény és a $\operatorname{sgn}^2$ kompozícióját, 87. feladat).

*A helyettesítés kiválasztása.* A $\sqrt[m]{x}$ és $\sqrt[n]{x}$ gyökök közös „finomítása” a $\sqrt[N]{x}$, $N = \operatorname{lkkt}(m, n)$ (itt $359$ prím, így $N = 5 \cdot 359$); ezzel $\sqrt[m]{x} = t^{N/m}$ és $\sqrt[n]{x} = t^{N/n}$ egész hatványok. A $\varphi(x) = \sqrt[N]{x}$ folytonos és szigorúan monoton, ezért $x \ne 1$-ből $t \ne 1$ következik — a feltétel teljesül.

*A kulcsazonosság.* $t^k - 1 = (t - 1)(t^{k-1} + \dots + t + 1)$, így
$$\lim_{t \to 1}\frac{t^m - 1}{t^n - 1} = \lim_{t\to1}\frac{1 + t + \dots + t^{m-1}}{1 + t + \dots + t^{n-1}} = \frac mn.$$

*A differenciálszámítás szemszögéből.* $\lim_{x \to 1}\frac{x^r - 1}{x - 1} = r$ (az $x^r$ derivált értéke $1$-ben), így
$$\frac{\sqrt[359]{x} - 1}{\sqrt[5]{x} - 1} = \frac{x^{1/359} - 1}{x - 1}\cdot\frac{x - 1}{x^{1/5} - 1} \to \frac{1/359}{1/5} = \frac{5}{359}.$$
Ez a L'Hospital-szabály egy előfutára: két „$\frac00$” típusú tényező hányadosának határértéke a deriváltak hányadosa.
:::

## 94. feladat

Hol folytonosak? a) $R(x)$, a Riemann fv. (ld. 87-es feladat),

b) $f(x) = \begin{cases} 3x + 7 & \text{ha } x \in \mathbb{Q} \\ 4x & \text{ha } x \notin \mathbb{Q}, \end{cases}$ c) $g(x) = \begin{cases} x^2[1/x] & \text{ha } x \neq 0 \\ 0 & \text{ha } x = 0. \end{cases}$

**Megoldás.**

a) A 87. feladat szerint $\lim_{x \to a} R(x) = 0$ minden $a \in \mathbb{R}$-re. $R$ tehát pontosan ott folytonos, ahol $R(a) = 0$. **$R$ az irracionális pontokban folytonos, a racionálisokban nem.**

b) **$f$ csak az $a = 7$ pontban folytonos.**

- Ha $a \neq 7$, akkor $3a + 7 \neq 4a$. Legyen $r_n \to a$ racionális és $s_n \to a$ irracionális sorozat. Ekkor $f(r_n) = 3r_n + 7 \to 3a + 7$ és $f(s_n) = 4s_n \to 4a$. A két határérték különbözik, így $\lim_{x \to a} f(x)$ nem létezik (átviteli elv).
- $a = 7$-re $f(7) = 28$, és bármely $x$-re
$$|f(x) - 28| \le \max\{|3x + 7 - 28|,\ |4x - 28|\} = \max\{3|x - 7|,\ 4|x - 7|\} = 4|x - 7|.$$
  Így $\delta_\varepsilon = \varepsilon/4$ megfelel.

c) **$g$ folytonos $\mathbb{R} \setminus \{1/k : k \in \mathbb{Z} \setminus \{0\}\}$-n, a $0$-ban is. Az $x = 1/k$ pontokban nem folytonos.**

- **A $0$-ban:** $\frac1x - 1 < [1/x] \le \frac1x$. Ezt $x^2 > 0$-val szorozva $x - x^2 < g(x) \le x$, így $|g(x)| \le |x| + x^2 \to 0 = g(0)$. Tehát $g$ folytonos a $0$-ban.
- **Ha $x_0 \neq 0$ és $1/x_0 \notin \mathbb{Z}$:** $1/x$ folytonos $x_0$-ban, és $1/x_0$ két egész szám közé esik. Így $x_0$ egy környezetében $[1/x]$ konstans, mondjuk $c$, és ott $g(x) = cx^2$ folytonos.
- **Ha $x_0 = 1/k$, $k \in \mathbb{Z} \setminus \{0\}$:** ha $x$ úgy tart $x_0$-hoz, hogy $1/x$ fölülről tart $k$-hoz, akkor $[1/x] = k$ és $g(x) \to k \cdot \frac{1}{k^2} = \frac1k$. Ha alulról, akkor $[1/x] = k - 1$ és $g(x) \to \frac{k - 1}{k^2}$. A két egyoldali határérték különbözik, így $g$ nem folytonos $x_0$-ban. (Ugyanez $k < 0$-ra is így megy.)

::: elmelet
**Elméleti háttér — folytonosság, és ahol két képlet „összeér”.**

*Definíció.* $f$ **folytonos** az $a \in D(f)$ pontban, ha $\forall \varepsilon > 0\ \exists \delta > 0\ \forall x \in D(f): |x - a| < \delta \Rightarrow |f(x) - f(a)| < \varepsilon$. Ha $a$ torlódási pont, ez ekvivalens azzal, hogy $\lim_{x\to a}f(x) = f(a)$; izolált pontban minden függvény folytonos. Sorozatos (Heine-) alak: $x_n \to a$, $x_n \in D(f)$ $\Rightarrow$ $f(x_n) \to f(a)$.

*Riemann-függvény.* Mivel mindenütt $0$ a határértéke, pontosan ott folytonos, ahol $R(a) = 0$: az irracionális pontokban.

*$\mathbb{Q}$/irracionális képletű függvények.* Ha $f = g$ a racionálisokon és $f = h$ az irracionálisokon, ahol $g$, $h$ folytonosak, akkor $f$ pontosan ott folytonos, ahol $g(a) = h(a)$. *Indok:* mindkét halmaz sűrű, így minden ponthoz van racionális és irracionális sorozat is; az átviteli elv szerint a határértékek $g(a)$ és $h(a)$. Ha egyeznek, a $|f(x) - f(a)| \le \max\{|g(x) - g(a)|, |h(x) - h(a)|\}$ becslés adja a folytonosságot. Itt $3a + 7 = 4a \iff a = 7$.

*Egészrészes függvények.* $[\varphi(x)]$ ott lokálisan konstans, ahol $\varphi$ folytonos és $\varphi(x_0) \notin \mathbb{Z}$; szakadás csak ott lehet, ahol $\varphi(x_0)$ egész. A $g(x) = x^2[1/x]$ a $0$-ban azért folytonos, mert a „rossz” $[1/x]$ tényezőt az $x^2$ „elnyeli”: $|g(x)| \le |x| + x^2$. Ugyanez az $x[1/x]$-nél nem működne folytonosságra (az a $0$-ban $1$-hez tart), ezért kell a négyzet.

*Szakadások típusai.* A $g$ az $\frac1k$ pontokban **ugrást** (elsőfajú szakadást) mutat: a két egyoldali határérték létezik, de különbözik. Az $f$-nek a $7$-en kívül mindenhol **másodfajú** szakadása van (egyoldali határérték sincs). A Riemann-függvény racionális pontjaiban **megszüntethető** a szakadás (a határérték létezik, csak nem egyezik a függvényértékkel).

*Folytonossági pontok halmazának szerkezete.* Egy függvény folytonossági pontjainak halmaza mindig $G_\delta$ (megszámlálható sok nyílt halmaz metszete). Az irracionálisak ilyenek, a racionálisak nem — ezért nincs olyan függvény, amely pontosan a racionálisokban folytonos.
:::

## 95. feladat

Bizonyítsuk be, hogy ha $R(x)$ a Riemann függvény, akkor a $\lim\limits_{x \to 0} \dfrac{R(x)}{x}$ határérték nem létezik.

**Megoldás.**

Átviteli elvvel. Az $x_n = \frac1n \to 0$ sorozatra $R(x_n) = \frac1n$, így $\frac{R(x_n)}{x_n} = 1 \to 1$. Az $y_n = \frac{\sqrt2}{n} \to 0$ irracionális sorozatra $R(y_n) = 0$, így $\frac{R(y_n)}{y_n} = 0 \to 0$. Két $0$-hoz tartó (a $0$-t nem felvevő) sorozat mentén különböző a határérték, ezért $\lim_{x \to 0} \frac{R(x)}{x}$ nem létezik. $\blacksquare$

(Sőt, $x_n = \frac{1}{n}$ helyett $x_n = -\frac1n$-nel $-1$-et kapunk, tehát egyoldali határértékek sincsenek.)

::: elmelet
**Elméleti háttér — nemlétezés átviteli elvvel; a „deriválhatóság” előszele.**

*A módszer.* $\lim_{x\to a}f(x)$ nem létezik, ha van két sorozat, $x_n \to a$ és $y_n \to a$ ($x_n, y_n \in D(f) \setminus \{a\}$), amelyre $f(x_n)$ és $f(y_n)$ különböző határértékhez tart (vagy egy sorozat, amely mentén $f(x_n)$ divergens). Ez az átviteli elv „$\Rightarrow$” irányának kontrapozíciója.

*Választási stratégia.* A Riemann- és Dirichlet-típusú függvényeknél a racionális és az irracionális sorozatok a természetes jelöltek: az $\frac1n$ alakú (egyszerű nevezőjű) racionálisok mentén $R$ „nagy”, az irracionálisak mentén $0$.

*Mit jelent a feladat?* $\frac{R(x) - R(0)}{x - 0}$ helyett $\frac{R(x)}{x}$ szerepel; mivel $R(0) = 1 \ne 0$, ez nem a differenciahányados. A $\frac{R(x)}{x}$ arra kérdez rá, hogy milyen gyorsan tart $R(x)$ a $0$-hoz a $0$ közelében: az $\frac1n$ pontokban $R(x) = |x|$, máshol (irracionálisokban) $0$ — tehát „összemérhető” $|x|$-szel, de nem kisebb rendű nála.

*Kapcsolódó kérdés: hol differenciálható a Riemann-függvény?* Sehol. A racionális pontokban nem is folytonos. Egy irracionális $a$-ban $\frac{R(x) - R(a)}{x - a} = \frac{R(x)}{x - a}$; az irracionális $x$-ek mentén ez $0$, a racionálisok mentén azonban (Dirichlet approximációs tétele szerint végtelen sok $\frac pq$-ra $|a - \frac pq| < \frac{1}{q^2}$) $\frac{1/q}{|a - p/q|} > q \to \infty$. Tehát a differenciahányadosnak nincs határértéke.

*Egyoldali határértékek.* A $\frac{R(x)}{x}$-nek a $0$-ban egyoldali határértéke sincs: a pozitív oldalon $1$ és $0$, a negatív oldalon $-1$ és $0$ is „sűrűsödési érték”. A függvényhatárérték sűrűsödési értékeinek (a „részsorozatos határértékeknek”) halmaza itt $\{0, 1\}$ jobbról és $\{-1, 0\}$ balról.
:::

## 96. feladat

A folytonosság definíciója alapján adjunk meg $\varepsilon > 0$-hoz alkalmas $\delta_\varepsilon$-t

a) $\dfrac{x + 1}{x - 1}$, $a = 2$; b) $\dfrac{1}{\sqrt{x} + 1}$, $a = 1$.

**Megoldás.**

a) $f(2) = 3$, és
$$\left|\frac{x + 1}{x - 1} - 3\right| = \frac{|x + 1 - 3x + 3|}{|x - 1|} = \frac{2|x - 2|}{|x - 1|}.$$
Ha $|x - 2| < \frac12$, akkor $|x - 1| > \frac12$, így a kifejezés $< 4|x - 2|$. **$\delta_\varepsilon = \min\{\frac12, \frac\varepsilon4\}$.**

b) $f(1) = \frac12$, és $x \ge 0$-ra
$$\left|\frac{1}{\sqrt x + 1} - \frac12\right| = \frac{|1 - \sqrt x|}{2(\sqrt x + 1)} = \frac{|1 - x|}{2(\sqrt x + 1)^2} \le \frac{|x - 1|}{2}.$$
**$\delta_\varepsilon = 2\varepsilon$** (minden $x \in D(f) = [0, \infty)$, $|x - 1| < 2\varepsilon$ esetén $|f(x) - \frac12| < \varepsilon$).

::: elmelet
**Elméleti háttér — a folytonosság bizonyítása $\varepsilon$–$\delta$-val.**

*A recept* ugyanaz, mint határértéknél, csak $b = f(a)$, és az $x = a$ eset is megengedett (ott $|f(x) - f(a)| = 0$):

1. Írjuk $|f(x) - f(a)|$-t $|x - a| \cdot |g(x)|$ alakba (közös nevező, gyöktelenítés).
2. Rögzítsünk egy $r$ sugarú környezetet, amelyben $|g(x)| \le C$; törtnél **a nevezőt alulról** becsüljük ($|x - 1| > \frac12$, ha $|x - 2| < \frac12$).
3. $\delta = \min\{r, \frac{\varepsilon}{C}\}$.

*Lipschitz-becslés.* Ha valahol $|f(x) - f(a)| \le C|x - a|$ teljesül **minden** $x$-re (mint a b) részben, $C = \frac12$-del), akkor $\delta = \frac{\varepsilon}{C}$ lokalizálás nélkül is jó. Ha ez minden $a, x$ párra igaz ugyanazzal a $C$-vel, a függvény **Lipschitz-folytonos**; ez a folytonosság egy erős, „kvantitatív” formája.

*Egyenletes folytonosság.* $f$ **egyenletesen folytonos** $I$-n, ha a $\delta$ csak $\varepsilon$-tól függ, $a$-tól nem. Lipschitz-függvények egyenletesen folytonosak ($\delta = \frac\varepsilon C$). Az a) rész függvénye ($\frac{x+1}{x-1}$) az $x = 1$ közelében egyre meredekebb, így a $(1, 3)$-on nem egyenletesen folytonos — a $\delta$-nak $a \to 1$ esetén $0$-hoz kell tartania. **Heine tétele** szerint korlátos, zárt intervallumon minden folytonos függvény egyenletesen folytonos; ez a Riemann-integrálhatóság bizonyításának kulcsa.

*Műveletek.* A folytonos függvények összege, szorzata, hányadosa (nem nulla nevezővel) és kompozíciója folytonos, így a fenti függvények folytonossága a $\varepsilon$–$\delta$ számolás nélkül is következik. A számolás célja az, hogy explicit $\delta$-t lássunk, és megértsük, hogyan függ $\delta$ az $\varepsilon$-tól és a ponttól.
:::

## 97. feladat

a) Tegyük föl, hogy $f$ folytonos és $g$ nem folytonos $a$-ban. Mi mondható $f + g$-ről és $f \cdot g$-ről?

b) Tegyük föl, hogy $f$ és $g$ közül egyik sem folytonos $a$-ban. Mi mondható $f + g$-ről és $f \cdot g$-ről?

c) Tegyük föl, hogy $f + g$ és $f - g$ folytonos $a$-ban. Mit állíthatunk $f$ és $g$ folytonosságáról?

**Megoldás.**

a) **$f + g$ biztosan nem folytonos $a$-ban.** Ha az volna, akkor $g = (f + g) - f$ folytonos függvények különbségeként folytonos lenne.

**$f \cdot g$:** ha $f(a) \neq 0$, akkor biztosan nem folytonos. Ekkor $f \neq 0$ az $a$ egy környezetében, és ott $g = \frac{fg}{f}$ folytonos lenne. Ha $f(a) = 0$, lehet folytonos is, és nem folytonos is:

- $f(x) = x$, $g = \operatorname{sgn}$, $a = 0$: $fg = |x|$ folytonos;
- $f(x) = x$, $g(x) = \frac1x$ ($x \neq 0$), $g(0) = 0$: $fg = 1$, ha $x \neq 0$, és $0$ a $0$-ban – nem folytonos.

b) **Semmi biztosat nem mondhatunk.**

- $f = D$ (Dirichlet-függvény), $g = 1 - D$: mindkettő sehol sem folytonos, de $f + g \equiv 1$ és $f \cdot g \equiv 0$ folytonos.
- $f = g = \operatorname{sgn}$, $a = 0$: $f + g = 2\operatorname{sgn}$ és $f \cdot g = \operatorname{sgn}^2$ sem folytonos a $0$-ban ($\operatorname{sgn}^2(0) = 0$, máshol $1$).

c) **Mindkettő folytonos $a$-ban**, hiszen
$$f = \frac{(f + g) + (f - g)}{2}, \qquad g = \frac{(f + g) - (f - g)}{2}$$
folytonos függvények lineáris kombinációi.

::: elmelet
**Elméleti háttér — folytonosság és algebrai műveletek; „inverz” következtetések.**

*Műveleti tétel.* Ha $f$ és $g$ folytonos $a$-ban, akkor $f \pm g$, $fg$, $cf$ is, és $g(a) \ne 0$ esetén $\frac fg$ is. (Bizonyítás: az átviteli elv és a sorozatok műveleti tételei.) A folytonos függvények tehát egy **algebrát** alkotnak.

*Következtetés „visszafelé”.* Ha egy algebrai kombináció és az egyik tag folytonos, a másik tag kifejezhető belőlük: $g = (f + g) - f$; $f(a) \ne 0$ esetén $g = \frac{fg}{f}$ (az előjeltartás miatt $f \ne 0$ egy környezetben, így a hányados ott értelmes). A c) rész lineáris algebrai: az $(f + g, f - g)$ párból $(f, g)$ egy invertálható lineáris transzformációval kapható vissza ($\frac12\begin{pmatrix}1 & 1\\1 & -1\end{pmatrix}$).

*Mikor nem lehet következtetni?* Ha a művelet „információt veszít”:

- szorzatnál a $0$ érték: $x \cdot \operatorname{sgn} x = |x|$ folytonos, pedig $\operatorname{sgn}$ szakad;
- összegnél két szakadás kiolthatja egymást: $D + (1 - D) = 1$;
- kompozíciónál: $|x|$ folytonos, de $|g|$ folytonossága nem jelenti $g$-ét ($g = 2D - 1$ sehol sem folytonos, $|g| \equiv 1$ igen).

*A szorzatszabály „folytonos szor korlátos” változata.* Ha $f$ folytonos $a$-ban és $f(a) = 0$, $g$ pedig korlátos $a$ egy környezetében, akkor $fg$ folytonos $a$-ban (és ott $0$). Ez magyarázza az a) rész első példáját, és a $g(x) = x^2[1/x]$ (94. c) folytonosságát a $0$-ban is.
:::

## 98. feladat

Bizonyítsuk be, hogy ha $f : [a, b] \to \mathbb{R}$ szigorúan monoton növekvő függvény, akkor $R(f) = [f(a), f(b)]$ és $f^{-1}$ létezik és szigorúan monoton növekedő $R(f) = D(f^{-1})$-en.

**Megoldás.**

**$f^{-1}$ létezik.** Ha $x_1 \neq x_2$, mondjuk $x_1 < x_2$, akkor $f(x_1) < f(x_2)$. Tehát $f$ injektív, és $f^{-1} : R(f) \to [a, b]$ létezik.

**$f^{-1}$ szigorúan monoton nő.** Legyen $y_1 < y_2$, $y_i \in R(f)$, $y_i = f(x_i)$. Ha $x_1 \ge x_2$ volna, akkor a monotonitás miatt $y_1 = f(x_1) \ge f(x_2) = y_2$ – ellentmondás. Tehát $f^{-1}(y_1) = x_1 < x_2 = f^{-1}(y_2)$.

**$R(f) \subseteq [f(a), f(b)]$**, mert $a \le x \le b$-ből $f(a) \le f(x) \le f(b)$.

**Az egyenlőséghez kell a folytonosság.** Pusztán szigorú monotonitásból nem következik. Ellenpélda: $[0, 1]$-en $f(x) = x$ ($x < 1$), $f(1) = 2$. Ez szigorúan nő, de $R(f) = [0, 1) \cup \{2\} \neq [0, 2]$.

Ha $f$ **folytonos** is (feltehetően ez a feladat szándéka), akkor a Bolzano-tétel (közbülsőérték-tétel) szerint $f$ minden $f(a)$ és $f(b)$ közötti értéket felvesz, tehát $R(f) = [f(a), f(b)]$. $\blacksquare$

(Megfordítva is igaz: ha egy monoton $f$ értékkészlete intervallum, akkor $f$ folytonos. Egy szakadási helyen a monotonitás miatt ugrás van, és az ugrás kihagy egy értékintervallumot.)

::: elmelet
**Elméleti háttér — szigorúan monoton függvények, inverz, Bolzano-tétel.**

*Szigorú monotonitás $\Rightarrow$ invertálhatóság.* Szigorúan monoton függvény injektív, így az értékkészletén invertálható, és az inverz ugyanabban az irányban szigorúan monoton. Ez folytonosság nélkül is igaz.

*Az értékkészlet.* Monoton $f : [a, b] \to \mathbb{R}$ esetén $R(f) \subseteq [f(a), f(b)]$, de egyenlőséghez **folytonosság** kell. A **Bolzano-tétel** (közbülsőérték-tétel): ha $f$ folytonos $[a, b]$-n és $f(a) < c < f(b)$, akkor van $\xi \in (a, b)$, hogy $f(\xi) = c$. *Bizonyítás intervallumfelezéssel:* mindig azt a felét tartjuk meg, amelynek bal végpontjában $f < c$, jobb végpontjában $f \ge c$; a közös $\xi$ pontban a folytonosság miatt $f(\xi) \le c$ és $f(\xi) \ge c$.

*A megfordítás monoton függvényekre.* Ha $f$ monoton és $R(f)$ intervallum, akkor $f$ folytonos: egy szakadási helyen az egyoldali határértékek közti hézagból (legfeljebb egy kivétellel) egyetlen érték sem vétetik fel, így az értékkészlet nem volna intervallum. Monoton függvényekre tehát: **folytonos $\iff$ az értékkészlet intervallum**.

*Az inverz folytonossága.* Ha $f$ szigorúan monoton és folytonos egy intervallumon, akkor $f^{-1}$ is folytonos (az inverz szigorúan monoton, és értékkészlete — az eredeti értelmezési tartomány — intervallum, így az előző pont szerint folytonos). Ez adja a gyökfüggvények ($x^n$ inverze), a $\ln$ ($e^x$ inverze), az $\arcsin$, $\arctan$ stb. folytonosságát.

*Az ellenpélda tanulsága.* A feladat állítása folytonossági feltevés nélkül hamis: egy ugrás „kihagy” egy értékintervallumot. Egy feladat szövegének hiányosságát úgy kezeljük, hogy (1) ellenpéldával megmutatjuk, mi nem igaz, (2) kimondjuk és bebizonyítjuk a helyes (feltétellel kiegészített) állítást.
:::

## Röpzhra

**Definíciók:** $\dot{B}(a, \varepsilon)$, függvények határértéke, $\lim_{a+0} f(x) = a$, $\lim_{x \to a} f(x) = +\infty$, $\lim_{x \to +\infty} f(x) = b$, $\lim_{x \to \alpha} f(x) = \beta$, torlódási pont, $\lim_{x \to \alpha,\, x \in A} f(x) = \beta$.

**Tételek:** átviteli elv függvényhatárértékre.

*(Ábra a lap alján: három függvénygrafikon, amelyek a $0$ körül egyre sűrűbben oszcillálnak – $|\sin(1/x)|$ vagy $\sin^2(1/x)$, $\sin(1/x)$ és $x\sin(1/x)$ jellegű görbék.)*
