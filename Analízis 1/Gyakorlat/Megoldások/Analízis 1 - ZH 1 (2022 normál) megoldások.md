# Analízis 1 – 1. ZH (2022 normál) – megoldások

### B. Sc. I. Mat. Haladó analízis · Első ZH · Normál verzió (2022/23-I. félév)

*(az intenzív gyakorlatra járó hallgatók NEM ezt írják)*

## 1. feladat

a) $\lim_{n \to +\infty} \left(\sqrt{n^2 + 2} - \sqrt{n^2 - 2}\right) = ?$

b) $\lim_{n \to +\infty} \sqrt[n^2]{n^{3n} + n^{2022}} = ?$

c) $\limsup_{n \to +\infty} \left\{ \frac{2n^2}{5} \right\} = ?$

*(A c) kérdésben $\{\cdot\}$ törtrészt jelöl.)*

**Megoldás.**

**a) $\mathbf{0}$.**

*Levezetés:*
A kifejezés $\infty - \infty$ típusú határozatlan alak. Szorozzunk és osszunk a konjugálttal (gyöktelenítés):
$$\sqrt{n^2 + 2} - \sqrt{n^2 - 2} = \frac{\left(\sqrt{n^2 + 2} - \sqrt{n^2 - 2}\right)\left(\sqrt{n^2 + 2} + \sqrt{n^2 - 2}\right)}{\sqrt{n^2 + 2} + \sqrt{n^2 - 2}} = \frac{(n^2 + 2) - (n^2 - 2)}{\sqrt{n^2 + 2} + \sqrt{n^2 - 2}} = \frac{4}{\sqrt{n^2 + 2} + \sqrt{n^2 - 2}}.$$
Mivel a számláló konstans $4$, a nevező pedig tart $+\infty$-hez ($n \to +\infty$ esetén $\sqrt{n^2 \pm 2} \to +\infty$), a hányados határértéke:
$$\lim_{n \to +\infty} \left(\sqrt{n^2 + 2} - \sqrt{n^2 - 2}\right) = \lim_{n \to +\infty} \frac{4}{\sqrt{n^2 + 2} + \sqrt{n^2 - 2}} = 0.$$

---

**b) $\mathbf{1}$.**

*Levezetés:*
A gyökjel alatti kifejezés két tagjának nagyságrendjét vizsgálva észrevehetjük, hogy elég nagy $n$-re $n^{3n} \gg n^{2022}$ (például $3n > 2022 \iff n > 674$ esetén már biztosan $n^{3n} \ge n^{2022}$).
Alkalmazzuk a rendőrelvet (csendőrelvet)!
Alsó becslés: Mivel minden $n \ge 1$-re $n^{2022} > 0$:
$$n^{3n} < n^{3n} + n^{2022}.$$
Felső becslés: Legyen $n \ge 674$. Ekkor $n^{2022} \le n^{3n}$, így:
$$n^{3n} + n^{2022} \le 2 n^{3n}.$$
Vonjunk $n^2$-edik gyököt mindkét oldalból ($x \mapsto x^{1/n^2}$ szigorúan monoton növekvő):
$$\left(n^{3n}\right)^{1/n^2} < \sqrt[n^2]{n^{3n} + n^{2022}} \le \left(2 n^{3n}\right)^{1/n^2} = 2^{1/n^2} \cdot \left(n^{3n}\right)^{1/n^2}.$$
Számítsuk ki a határértékeket:
$$\left(n^{3n}\right)^{1/n^2} = n^{\frac{3n}{n^2}} = n^{\frac{3}{n}} = \left(n^{1/n}\right)^3 = \left(\sqrt[n]{n}\right)^3.$$
Ismert nevezetes határérték, hogy $\lim_{n \to +\infty} \sqrt[n]{n} = 1$. Ezért a határértékek szorzási szabálya alapján:
$$\lim_{n \to +\infty} \left(n^{3n}\right)^{1/n^2} = \lim_{n \to +\infty} \left(\sqrt[n]{n}\right)^3 = 1^3 = 1.$$
A felső korlátnál:
$$\lim_{n \to +\infty} 2^{1/n^2} = 2^0 = 1 \implies \lim_{n \to +\infty} \left(2^{1/n^2} \cdot n^{3/n}\right) = 1 \cdot 1 = 1.$$
Mivel az alsó és a felső korlát is $1$-hez tart, a rendőrelv szerint:
$$\lim_{n \to +\infty} \sqrt[n^2]{n^{3n} + n^{2022}} = 1.$$

---

**c) $\mathbf{\dfrac{3}{5}} = \mathbf{0{,}6}$.**

*Levezetés:*
A $\{x\} = x - \lfloor x \rfloor$ jelölés a valós szám törtrészét jelöli.
Vizsgáljuk a sorozat tagjait $n$ modulo $5$ vett maradéka szerint:
- Ha $n \equiv 0 \pmod 5$, akkor $n = 5k$, így $\frac{2n^2}{5} = \frac{2 \cdot 25k^2}{5} = 10k^2 \in \mathbb{Z}$, tehát $\left\{\frac{2n^2}{5}\right\} = 0$.
- Ha $n \equiv 1 \pmod 5$, akkor $n = 5k + 1$, így $n^2 = 25k^2 + 10k + 1 \equiv 1 \pmod 5$, és $2n^2 \equiv 2 \pmod 5$, azaz $\frac{2n^2}{5} = \text{egész} + \frac{2}{5}$, tehát $\left\{\frac{2n^2}{5}\right\} = \frac{2}{5} = 0{,}4$.
- Ha $n \equiv 2 \pmod 5$, akkor $n = 5k + 2$, így $n^2 = 25k^2 + 20k + 4 \equiv 4 \pmod 5$, és $2n^2 \equiv 8 \equiv 3 \pmod 5$, tehát $\left\{\frac{2n^2}{5}\right\} = \frac{3}{5} = 0{,}6$.
- Ha $n \equiv 3 \pmod 5$, akkor $n = 5k + 3$, így $n^2 \equiv 9 \equiv 4 \pmod 5$, és $2n^2 \equiv 8 \equiv 3 \pmod 5$, tehát $\left\{\frac{2n^2}{5}\right\} = \frac{3}{5} = 0{,}6$.
- Ha $n \equiv 4 \pmod 5$, akkor $n = 5k + 4$, így $n^2 \equiv 16 \equiv 1 \pmod 5$, és $2n^2 \equiv 2 \pmod 5$, tehát $\left\{\frac{2n^2}{5}\right\} = \frac{2}{5} = 0{,}4$.

A sorozat tehát tisztán periodikus, és csak a $0$, a $\frac{2}{5}$ és a $\frac{3}{5}$ értékeket veszi fel végtelen sokszor. A torlódási értékek halmaza:
$$E = \left\{0, \frac{2}{5}, \frac{3}{5}\right\}.$$
A limesz szuperior a torlódási értékek szuprémuma (itt maximuma):
$$\limsup_{n \to +\infty} \left\{ \frac{2n^2}{5} \right\} = \max E = \frac{3}{5}.$$

::: elmelet
**Elméleti háttér — határértékszámítás és limesz szuperior:**
- *Gyöktelenítés:* $A - B = \frac{A^2 - B^2}{A + B}$ azonossággal a határozatlan $\infty - \infty$ különbség tört alakra hozható, amelyben a számláló konstans vagy kisebb fokszámú, míg a nevező $+\infty$-hez tart.
- *Rendőrelv:* Ha $u_n \le x_n \le v_n$ egy küszöbindextől kezdve, és $\lim u_n = \lim v_n = L$, akkor $\lim x_n = L$.
- *Hatványkitevős gyökök:* $\lim_{n \to \infty} \sqrt[n]{n} = 1$, valamint ha $c > 0$, akkor $\lim_{n \to \infty} \sqrt[n]{c} = 1$. Itt a gyökkitevő $n^2$, a hatvány pedig $n^{3n}$, így a kitevő $\frac{3n}{n^2} = \frac{3}{n} \to 0$.
- *Limesz szuperior:* Egy $(x_n)$ korlátos sorozat esetén $\limsup x_n$ a részsorozat-határértékek (torlódási értékek) maximuma, ekvivalensen $\lim_{n \to \infty} \sup_{k \ge n} x_k$. Periodikus sorozatnál a periódus elemei közül a legnagyobb.
:::

## 2. feladat

Adjuk meg a következő sorozat határértékét és a definíció alapján adott $\varepsilon > 0$-hoz keressünk $n_\varepsilon$-t:
$$a_n = \frac{3n^3 - 2n^2}{4n^3 - 613}.$$

**Megoldás.**

**A határérték: $\mathbf{A = \dfrac{3}{4}}$.**
**Küszöbindex tetszőleges $\varepsilon > 0$-hoz: $\mathbf{n_\varepsilon = \max\left(16, \left\lfloor \frac{1}{\varepsilon} \right\rfloor \right)}$** *(vagy $\max\left(7, \left\lfloor \frac{1}{\varepsilon} \right\rfloor\right)$).*

*Levezetés:*
1. **A határérték meghatározása:**
   Osszuk el a számlálót és a nevezőt a legmagasabb fokú taggal ($n^3$-nal):
   $$a_n = \frac{3 - \frac{2}{n}}{4 - \frac{613}{n^3}}.$$
   Mivel $\frac{2}{n} \to 0$ és $\frac{613}{n^3} \to 0$, a hányados határértéke:
   $$A = \lim_{n \to \infty} a_n = \frac{3 - 0}{4 - 0} = \frac{3}{4}.$$

2. **A definíció szerinti igazolás:**
   A határérték definíciója szerint azt kell igazolnunk, hogy tetszőleges $\varepsilon > 0$ valós számhoz létezik olyan $n_\varepsilon \in \mathbb{N}$ küszöbindex, amelyre minden $n > n_\varepsilon$ esetén:
   $$\left| a_n - \frac{3}{4} \right| < \varepsilon.$$

   Számítsuk ki az eltérést:
   $$a_n - \frac{3}{4} = \frac{3n^3 - 2n^2}{4n^3 - 613} - \frac{3}{4} = \frac{4(3n^3 - 2n^2) - 3(4n^3 - 613)}{4(4n^3 - 613)} = \frac{12n^3 - 8n^2 - 12n^3 + 1839}{4(4n^3 - 613)} = \frac{1839 - 8n^2}{4(4n^3 - 613)}.$$
   Ennek abszolút értéke:
   $$\left| a_n - \frac{3}{4} \right| = \frac{|1839 - 8n^2|}{4(4n^3 - 613)}.$$

3. **Felülbecslés egyszerű $C/n$ alakú kifejezéssel:**
   - **A számláló becslése:**
     Ha $8n^2 \ge 1839 \iff n^2 \ge \frac{1839}{8} = 229{,}875$, ami $n \ge 16$ esetén teljesül ($16^2 = 256 > 230$), akkor
     $$|1839 - 8n^2| = 8n^2 - 1839 < 8n^2.$$
     *(Sőt, a háromszög-egyenlőtlenséggel tetszőleges $n$-re $|1839 - 8n^2| \le 8n^2 + 1839$ is írható).*
   - **A nevező alulbecslése:**
     Azt szeretnénk, hogy $4n^3 - 613$ pozitív és kellően nagy legyen. Ha $n \ge 7$, akkor $4n^3 = 4 \cdot 343 = 1372 > 2 \cdot 613 = 1226$, így
     $$4n^3 - 613 \ge 4n^3 - \frac{1}{2}(4n^3) = 2n^3.$$
     Tehát a nevező: $4(4n^3 - 613) \ge 4 \cdot 2n^3 = 8n^3 > 0$.

   Egyesítve a két feltételt: ha $n \ge 16$, akkor
   $$\left| a_n - \frac{3}{4} \right| = \frac{8n^2 - 1839}{4(4n^3 - 613)} < \frac{8n^2}{4 \cdot 2n^3} = \frac{8n^2}{8n^3} = \frac{1}{n}.$$

4. **A küszöbindex megválasztása:**
   Azt szeretnénk, hogy $\frac{1}{n} < \varepsilon$ teljesüljön, ami $n > \frac{1}{\varepsilon}$ esetén áll fenn.
   Ezért ha $n_\varepsilon = \max\left(16, \left\lfloor \frac{1}{\varepsilon} \right\rfloor \right)$, akkor minden $n > n_\varepsilon$ egészre:
   - $n \ge 16$, így a becslés érvényes: $\left| a_n - \frac{3}{4} \right| < \frac{1}{n}$;
   - $n > \frac{1}{\varepsilon}$, így $\frac{1}{n} < \varepsilon$.
   Tehát:
   $$\left| a_n - \frac{3}{4} \right| < \frac{1}{n} < \varepsilon.$$
   Ezzel a definíció alapján igazoltuk a határértéket.

::: elmelet
**Elméleti háttér — küszöbindex keresése:**
- A definíció szerinti bizonyításban nem szükséges az optimális (legkisebb) küszöbindexet megadni; elegendő bármilyen explicit, jól megindokolt $n_\varepsilon$-t mutatni.
- Racionális törtfüggvényeknél az $|a_n - A|$ eltérés $O(1/n)$ nagyságrendű. A számlálót felülről becsüljük a vezető tag konstansszorosával ($8n^2$), a nevezőt pedig alulról a vezető tag felével ($2n^3$), így az eltérés $\frac{C}{n}$ alakúvá egyszerűsödik, amiből a feltétel $n > C/\varepsilon$.
:::

## 3. feladat

Mutassuk meg, hogy minden $n$-re $n^n \ge (n + 2)^{n - 2}$.

**Megoldás.**

Az állítás minden $n \in \mathbb{N}$ ($n \ge 1$) egész számra igaz, sőt $n > 2$-re szigorú egyenlőtlenség áll fenn: $n^n > (n + 2)^{n - 2}$.

*1. Bizonyítás (Számtani és mértani közép közötti egyenlőtlenséggel — AM-GM):*
Alkalmazzuk a számtani és mértani közép közötti egyenlőtlenséget $n$ darab pozitív számra.
- Ha $n = 1$: a bal oldal $1^1 = 1$, a jobb oldal $(1 + 2)^{1 - 2} = 3^{-1} = \frac{1}{3}$. Mivel $1 \ge \frac{1}{3}$, az állítás igaz.
- Ha $n = 2$: a bal oldal $2^2 = 4$, a jobb oldal $(2 + 2)^{2 - 2} = 4^0 = 1$. Mivel $4 \ge 1$, az állítás igaz.
- Legyen most $n \ge 3$. Válasszunk ki $n$ darab pozitív valós számot az alábbiak szerint:
  - $(n - 2)$ darab szám értéke legyen $n + 2$;
  - $2$ darab szám értéke legyen $1$.

  Ezen $n$ darab szám mértani közepe:
  $$G = \sqrt[n]{(n + 2)^{n - 2} \cdot 1 \cdot 1} = \left((n + 2)^{n - 2}\right)^{1/n}.$$
  A számtani közepük:
  $$A = \frac{(n - 2)(n + 2) + 1 + 1}{n} = \frac{(n^2 - 4) + 2}{n} = \frac{n^2 - 2}{n} = n - \frac{2}{n}.$$
  A számtani és mértani közép közötti egyenlőtlenség szerint $G \le A$. Mivel a számok nem mind egyenlők ($n + 2 > 1$, hiszen $n \ge 3$), szigorú egyenlőtlenség érvényes:
  $$G < A.$$
  Behelyettesítve:
  $$\left((n + 2)^{n - 2}\right)^{1/n} < n - \frac{2}{n} < n.$$
  Mindkét oldalt $n$-edik hatványra emelve (mivel mindkét oldal pozitív, a hatványozás szigorúan monoton):
  $$(n + 2)^{n - 2} < n^n.$$
  Ezzel az egyenlőtlenséget minden $n \ge 3$-ra bebizonyítottuk.

---

*2. Bizonyítás (Átrendezéssel és Bernoulli-egyenlőtlenséggel):*
$n \ge 1$-re osszuk el mindkét oldalt $n^{n-2} > 0$-val:
$$n^n \ge (n + 2)^{n - 2} \iff n^2 \cdot n^{n-2} \ge (n + 2)^{n - 2} \iff n^2 \ge \left(\frac{n + 2}{n}\right)^{n - 2} = \left(1 + \frac{2}{n}\right)^{n - 2}.$$
Továbbá:
$$\left(1 + \frac{2}{n}\right)^{n - 2} < \left(1 + \frac{2}{n}\right)^n < e^2 < 8.$$
Mivel $n \ge 3$ esetén $n^2 \ge 9 > 8 > e^2 > \left(1 + \frac{2}{n}\right)^{n-2}$, az egyenlőtlenség $n \ge 3$-ra azonnal adódik, az $n = 1, 2$ eseteket pedig közvetlen behelyettesítéssel ellenőriztük.

::: elmelet
**Elméleti háttér — az AM-GM módszer hatványegyenlőtlenségekre:**
- Ha $a^k$ és $b^m$ alakú hatványokat kell összehasonlítani, a számtani és mértani közép közötti egyenlőtlenség az egyik leghatékonyabb eszköz: a tagok alkalmas megválasztásával a szorzat éppen a kívánt hatványt adja, míg az összegben a másodfokú tagok kiejtik egymást ($(n-2)(n+2) = n^2 - 4$).
- Egyenlőség az AM-GM-ben csak akkor áll fenn, ha minden kiválasztott elem egyenlő. Itt $n+2 = 1 \iff n = -1$, így természetes $n$-ekre soha nem egyenlők a tagok, ezért $n \ge 3$-ra szigorú egyenlőtlenség teljesül.
:::

## 4. feladat

Legyen $a_0 = 4$ és $\forall n \in \mathbb{N}$-re $a_n = 1 + \sqrt{a_{n-1}}$. Vizsgáljuk meg az $(a_n)$ sorozatot korlátosság, monotonitás és konvergencia szempontjából. (Ha konvergens, akkor adjuk meg a határértékét is.)

**Megoldás.**

**A sorozat szigorúan monoton csökkenő, alulról és felülről is korlátos, konvergens, határértéke:**
$$\mathbf{\lim_{n \to \infty} a_n = \frac{3 + \sqrt{5}}{2}} \approx 2{,}618.$$

*Levezetés:*
1. **Fixpont (lehetséges határérték) megkeresése:**
   Ha a sorozat konvergens és határértéke $L$, akkor az $x \mapsto 1 + \sqrt{x}$ függvény folytonossága miatt:
   $$L = 1 + \sqrt{L} \implies L - 1 = \sqrt{L}.$$
   Mivel $\sqrt{L} \ge 0$, feltétel $L \ge 1$. Négyzetre emelve:
   $$(L - 1)^2 = L \implies L^2 - 2L + 1 = L \implies L^2 - 3L + 1 = 0.$$
   A másodfokú egyenlet gyökei:
   $$L_{1, 2} = \frac{3 \pm \sqrt{9 - 4}}{2} = \frac{3 \pm \sqrt{5}}{2}.$$
   Mivel $\sqrt{5} \approx 2{,}236$, a kisebbik gyök $L_2 = \frac{3 - \sqrt{5}}{2} \approx 0{,}382 < 1$, ami nem elégíti ki az $L - 1 = \sqrt{L} \ge 0$ feltételt (itt $L_2 - 1 < 0$).
   Ezért az egyetlen lehetséges határérték:
   $$L = \frac{3 + \sqrt{5}}{2} \approx 2{,}618.$$

2. **Korlátosság és monotonitás vizsgálata teljes indukcióval:**
   Számítsuk ki a sorozat első néhány tagját:
   $$a_0 = 4,$$
   $$a_1 = 1 + \sqrt{4} = 3,$$
   $$a_2 = 1 + \sqrt{3} \approx 2{,}732.$$
   Látható, hogy $4 > 3 > 2{,}732 > L \approx 2{,}618$.
   Bizonyítsuk be teljes indukcióval, hogy minden $n \ge 0$ esetén:
   $$L < a_{n+1} < a_n \le 4.$$
   - **Bázislépés ($n = 0$):**
     $a_0 = 4$.
     $a_1 = 3 < a_0 = 4$.
     Továbbá $a_1 = 3 > \frac{3 + \sqrt{5}}{2} \approx 2{,}618$, hiszen $3 > \frac{3 + \sqrt{5}}{2} \iff 6 > 3 + \sqrt{5} \iff 3 > \sqrt{5} \iff 9 > 5$.
     Tehát $L < a_1 < a_0 \le 4$ teljesül.
   - **Indukciós lépés:**
     Tegyük fel, hogy valamely $k \ge 0$ indexre $L < a_{k+1} < a_k$.
     Az $f(x) = 1 + \sqrt{x}$ függvény a $[0, +\infty)$ félegyenesen szigorúan monoton növekvő. Ezért:
     $$L < a_{k+1} < a_k \implies f(L) < f(a_{k+1}) < f(a_k).$$
     Mivel $f(L) = L$, $f(a_{k+1}) = a_{k+2}$, és $f(a_k) = a_{k+1}$, ebből adódik:
     $$L < a_{k+2} < a_{k+1}.$$
   Ezáltal az állítás minden $n \in \mathbb{N}_0$-ra igaz.

3. **Összegzés:**
   - **Monotonitás:** $a_{n+1} < a_n$ minden $n$-re, tehát a sorozat **szigorúan monoton csökkenő**.
   - **Korlátosság:** Minden $n \ge 0$-ra $L < a_n \le 4$, tehát a sorozat alulról is korlátos (alsó korlát például $L$ vagy $0$) és felülről is korlátos (felső korlát $a_0 = 4$), azaz **korlátos**.
   - **Konvergencia és határérték:** Mivel a sorozat monoton csökkenő és alulról korlátos, a valós számok teljessége miatt **konvergens**. A határérték kielégíti az $A = 1 + \sqrt{A}$ egyenletet, és mivel $a_n > L$, a határértékre $A \ge L > 1$ teljesül, így:
     $$\lim_{n \to \infty} a_n = \frac{3 + \sqrt{5}}{2}.$$

::: elmelet
**Elméleti háttér — rekurzív sorozatok konvergenciája:**
- *Monotonitási tétel (Weierstrass):* Minden felülről korlátos monoton növekvő, illetve minden alulról korlátos monoton csökkenő valós sorozat konvergens.
- *Folytonos rekurzió határértéke:* Ha $a_{n} = f(a_{n-1})$ és $f$ folytonos, akkor a határérték szükségképpen az $f$ függvény fixpontja: $f(A) = A$.
- *Monoton leképezések:* Ha az $f$ átmenetfüggvény monoton növekvő, akkor a rekurzív sorozat monotonitása az első lépés ($a_1$ és $a_0$ viszonya) alapján eldől: ha $a_1 < a_0$, akkor a sorozat végig csökken; ha $a_1 > a_0$, végig nő.
:::

## 5. feladat

Tegyük föl, hogy $\lim_{n \to +\infty} a_n = a < 0$ és $0 < \liminf_{n \to +\infty} b_n \le \limsup_{n \to +\infty} b_n < +\infty$. Mutassuk meg, hogy
$$\liminf_{n \to +\infty} (a_n \cdot b_n) = a \cdot \limsup_{n \to +\infty} b_n.$$

**Megoldás.**

Jelölje $B = \limsup_{n \to \infty} b_n$. A feltétel szerint $0 < B < +\infty$.
Azt kell bizonyítanunk, hogy $\liminf_{n \to \infty} (a_n b_n) = a B$.
Mivel $a < 0$, a negatív számmal való szorzás megfordítja az egyenlőtlenségek irányát, így a felső határérték alsó határértékbe fordul át.

A bizonyítást a torlódási értékek jellemzésével végezzük el két egyenlőtlenség igazolásával:

1. **Első irány: $\mathbf{\liminf_{n \to \infty} (a_n b_n) \le a B}$.**
   A limesz szuperior definíciója szerint létezik olyan $(b_{n_k})$ részsorozata $(b_n)$-nek, amelyre:
   $$\lim_{k \to \infty} b_{n_k} = B.$$
   Mivel az $(a_n)$ sorozat konvergens és határértéke $a$, minden részsorozata is $a$-hoz tart, így:
   $$\lim_{k \to \infty} a_{n_k} = a.$$
   A konvergens sorozatok szorzatára vonatkozó határértéktétel alapján:
   $$\lim_{k \to \infty} (a_{n_k} b_{n_k}) = \left(\lim_{k \to \infty} a_{n_k}\right) \cdot \left(\lim_{k \to \infty} b_{n_k}\right) = a \cdot B.$$
   Tehát az $a B$ valós szám az $(a_n b_n)$ szorzatsorozat egy torlódási értéke (egy konvergens részsorozatának határértéke).
   Mivel a sorozat limesz inferiorja a torlódási értékek halmazának infimuma (legkisebb eleme), ezért:
   $$\liminf_{n \to \infty} (a_n b_n) \le a B.$$

2. **Második irány: $\mathbf{\liminf_{n \to \infty} (a_n b_n) \ge a B}$.**
   Legyen $c$ az $(a_n b_n)$ sorozat tetszőleges torlódási értéke. Ekkor létezik olyan $(n_m)$ indexsorozat, amelyre:
   $$\lim_{m \to \infty} (a_{n_m} b_{n_m}) = c.$$
   Mivel $a_n \to a$ és a feltétel szerint $a \ne 0$ ($a < 0$), az $(a_{n_m})$ részsorozat is $a$-hoz tart, és egy indextől kezdve tagjai nem nullák. Így felírható:
   $$b_{n_m} = \frac{a_{n_m} b_{n_m}}{a_{n_m}}.$$
   A hányados határértékére vonatkozó tétel szerint:
   $$\lim_{m \to \infty} b_{n_m} = \frac{\lim_{m \to \infty} (a_{n_m} b_{n_m})}{\lim_{m \to \infty} a_{n_m}} = \frac{c}{a}.$$
   Ez azt jelenti, hogy a $\frac{c}{a}$ szám a $(b_n)$ sorozat egy torlódási értéke.
   A limesz szuperior definíciója szerint azonban $(b_n)$ bármely torlódási értéke legfeljebb $B$:
   $$\frac{c}{a} \le B.$$
   Szorozzuk be az egyenlőtlenség mindkét oldalát az $a$ számmal! Mivel $a < 0$, az egyenlőtlenség iránya megfordul:
   $$c \ge a B.$$
   Mivel az $(a_n b_n)$ sorozat **minden** torlódási értéke $c \ge a B$, ezért ezen torlódási értékek infimumára (a limesz inferiorra) is fennáll:
   $$\liminf_{n \to \infty} (a_n b_n) \ge a B.$$

3. **Következtetés:**
   A két egyenlőtlenségből adódik:
   $$\liminf_{n \to +\infty} (a_n \cdot b_n) = a \cdot \limsup_{n \to +\infty} b_n.$$

::: elmelet
**Elméleti háttér — limesz inferior és limesz szuperior tulajdonságai:**
- Ha $a_n \to a > 0$, akkor $\liminf (a_n b_n) = a \liminf b_n$ és $\limsup (a_n b_n) = a \limsup b_n$.
- Ha azonban $a_n \to a < 0$, akkor a szorzás megfordítja a rendezést: $\liminf (a_n b_n) = a \limsup b_n$ és $\limsup (a_n b_n) = a \liminf b_n$.
- A torlódási értékek módszere: egy $L$ szám pontosan akkor a limesz inferior, ha egyrészt megvalósítható részsorozat-határértékként ($L \ge \liminf$), másrészt minden torlódási érték legalább akkora, mint $L$ ($L \le \liminf$).
:::

## 6. feladat

Mutassuk meg, hogy az $f(x) = x^3 - x^2$ függvény szigorúan konvex az $[1, +\infty)$ intervallumon. Tudunk-e olyan intervallumot megadni, ahol a függvény szigorúan konkáv?

*(Csak az ebben a félévben eddig tanult anyagot szabad használni, differenciálszámítást nem.)*

**Megoldás.**

**1. Szigorú konvexás az $[1, +\infty)$ intervallumon:**
A függvény konvexitása differenciálszámítás nélkül a szelők meredekségének szigorú monotonitásával igazolható.
Tetszőleges $u \ne v$ valós számokra a differenciahányados (a húr meredeksége):
$$\frac{f(v) - f(u)}{v - u} = \frac{(v^3 - u^3) - (v^2 - u^2)}{v - u} = \frac{(v - u)(v^2 + vu + u^2) - (v - u)(v + u)}{v - u} = v^2 + vu + u^2 - (v + u).$$
Jelölje ezt a kétváltozós függvényt $S(u, v) = u^2 + uv + v^2 - u - v$.

Az $f$ függvény pontosan akkor szigorúan konvex egy $I$ intervallumon, ha tetszőleges $x_1 < x_2 < x_3$ ($x_i \in I$) pontokra a húrmeredekségek szigorúan növekednek:
$$S(x_1, x_2) < S(x_2, x_3).$$
Számítsuk ki a két szelőmeredekség különbségét:
$$S(x_2, x_3) - S(x_1, x_2) = \left(x_3^2 + x_2 x_3 + x_2^2 - x_3 - x_2\right) - \left(x_1^2 + x_1 x_2 + x_2^2 - x_1 - x_2\right)$$
$$= \left(x_3^2 - x_1^2\right) + x_2(x_3 - x_1) - (x_3 - x_1)$$
$$= (x_3 - x_1)(x_3 + x_1) + (x_3 - x_1) x_2 - (x_3 - x_1)$$
$$= (x_3 - x_1) \left(x_1 + x_2 + x_3 - 1\right).$$

Vizsgáljuk meg a tényezők előjelét, ha $1 \le x_1 < x_2 < x_3$:
- Mivel $x_1 < x_3$, az első tényező szigorúan pozitív: $x_3 - x_1 > 0$.
- Mivel $x_1 \ge 1$ és $x_1 < x_2 < x_3$, ezért $x_2 > 1$ és $x_3 > 1$, így:
  $$x_1 + x_2 + x_3 - 1 > 1 + 1 + 1 - 1 = 2 > 0.$$
Tehát két szigorúan pozitív szám szorzataként:
$$S(x_2, x_3) - S(x_1, x_2) = (x_3 - x_1)(x_1 + x_2 + x_3 - 1) > 0 \implies S(x_1, x_2) < S(x_2, x_3).$$
Ez pontosan azt jelenti, hogy az $f(x) = x^3 - x^2$ függvény szigorúan konvex az $[1, +\infty)$ intervallumon.

---

**2. Szigorúan konkáv intervallum megadása:**
**Igen, tudunk ilyen intervallumot megadni: például a $\mathbf{\left(-\infty, \frac{1}{3}\right]}$, illetve a $\mathbf{(-\infty, 0]}$ intervallumot.**

*Indoklás:*
A függvény szigorúan konkáv egy $J$ intervallumon, ha tetszőleges $x_1 < x_2 < x_3$ ($x_i \in J$) pontokra a húrmeredekségek szigorúan csökkennek:
$$S(x_2, x_3) - S(x_1, x_2) = (x_3 - x_1)(x_1 + x_2 + x_3 - 1) < 0.$$
Mivel $x_3 - x_1 > 0$, a különbség pontosan akkor szigorúan negatív, ha
$$x_1 + x_2 + x_3 - 1 < 0 \iff x_1 + x_2 + x_3 < 1.$$
- Ha a $J = \left(-\infty, \frac{1}{3}\right]$ intervallumot választjuk, akkor bármely $x_1 < x_2 < x_3 \le \frac{1}{3}$ esetén:
  $$x_1 + x_2 + x_3 < \frac{1}{3} + \frac{1}{3} + \frac{1}{3} = 1 \implies x_1 + x_2 + x_3 - 1 < 0.$$
- Hasonlóan, a még egyszerűbb $J = (-\infty, 0]$ intervallumon minden $x_1 < x_2 < x_3 \le 0$ esetén $x_1 + x_2 + x_3 < 0 < 1$, így $x_1 + x_2 + x_3 - 1 < -1 < 0$ nyilvánvalóan teljesül.
Ezért $f$ szigorúan konkáv a $\left(-\infty, \frac{1}{3}\right]$ intervallumon (és annak bármely részintervallumán, pl. $(-\infty, 0]$-n is).

::: elmelet
**Elméleti háttér — konvexitás differenciálszámítás nélkül:**
- *Definíció:* Egy $f: I \to \mathbb{R}$ függvény konvex, ha bármely $x_1 < x_2$ pontra és $t \in (0, 1)$-re $f(t x_1 + (1-t) x_2) \le t f(x_1) + (1-t) f(x_2)$.
- *Húrmeredekségek (hárompontos kritérium):* $f$ pontosan akkor (szigorúan) konvex, ha tetszőleges $x_1 < x_2 < x_3$ pontokra:
  $$\frac{f(x_2) - f(x_1)}{x_2 - x_1} < \frac{f(x_3) - f(x_2)}{x_3 - x_2} < \frac{f(x_3) - f(x_1)}{x_3 - x_1}.$$
- Polinomok esetén a differenciahányados expliciten felírható szimmetrikus kifejezésként, így a különbség közvetlen szorzattá alakítással elemezhető anélkül, hogy deriváltat ($f''(x) = 6x - 2$) használnánk.
:::

## 7. feladat

Tegyük föl, hogy $a_n > 0$ és $a_n \to 2022$. Konvergens-e $\sqrt[n]{a_1 \cdots a_n}$? Ha az, akkor mi a határértéke?

**Megoldás.**

**A sorozat konvergens, határértéke: $\mathbf{2022}$.**

*1. Bizonyítás (Cauchy-féle mértani közép határértéktétel — közvetlen $\varepsilon$-os igazolás):*
Legyen $A = 2022 > 0$.
A feltétel szerint $a_n \to A$, azaz tetszőleges rögzített $0 < \varepsilon < A$ számhoz létezik olyan $N \in \mathbb{N}$ küszöbindex, hogy minden $k > N$ esetén:
$$A - \varepsilon < a_k < A + \varepsilon.$$
Legyen $n > N$. Bontsuk fel az első $n$ tag szorzatát az első $N$ tagra és a maradék $n - N$ tagra:
$$a_1 a_2 \cdots a_n = (a_1 \cdots a_N) \cdot (a_{N+1} \cdots a_n).$$
Jelölje $C = a_1 a_2 \cdots a_N > 0$ az első $N$ tag konstans szorzatát. Mivel minden $k = N+1, \dots, n$ indexre $A - \varepsilon < a_k < A + \varepsilon$, ezért:
$$C \cdot (A - \varepsilon)^{n - N} < a_1 a_2 \cdots a_n < C \cdot (A + \varepsilon)^{n - N}.$$
Vonjunk $n$-edik gyököt mindegyik oldalból:
$$C^{1/n} \cdot (A - \varepsilon)^{\frac{n - N}{n}} < \sqrt[n]{a_1 a_2 \cdots a_n} < C^{1/n} \cdot (A + \varepsilon)^{\frac{n - N}{n}}.$$
Alakítsuk át a kitevőket: $\frac{n - N}{n} = 1 - \frac{N}{n}$.
Mivel $C > 0$ rögzített konstans, $\lim_{n \to \infty} C^{1/n} = 1$.
Továbbá $\frac{N}{n} \to 0$ miatt:
$$\lim_{n \to \infty} (A \pm \varepsilon)^{1 - N/n} = (A \pm \varepsilon)^1 = A \pm \varepsilon.$$
Tehát a határértékek szorzási szabálya alapján:
$$\lim_{n \to \infty} \left( C^{1/n} (A - \varepsilon)^{1 - N/n} \right) = 1 \cdot (A - \varepsilon) = A - \varepsilon,$$
$$\lim_{n \to \infty} \left( C^{1/n} (A + \varepsilon)^{1 - N/n} \right) = 1 \cdot (A + \varepsilon) = A + \varepsilon.$$
A határérték monotonitása miatt a limesz inferiorra és limesz szuperiorra adódik:
$$A - \varepsilon \le \liminf_{n \to \infty} \sqrt[n]{a_1 \cdots a_n} \le \limsup_{n \to \infty} \sqrt[n]{a_1 \cdots a_n} \le A + \varepsilon.$$
Mivel ez az egyenlőtlenségsorozat minden tetszőlegesen kicsi $\varepsilon > 0$-ra fennáll, szükségképpen:
$$\liminf_{n \to \infty} \sqrt[n]{a_1 \cdots a_n} = \limsup_{n \to \infty} \sqrt[n]{a_1 \cdots a_n} = A = 2022.$$
Ez bizonyítja, hogy a sorozat konvergens, és határértéke $2022$.

---

*2. Bizonyítás (Logaritmálással és Cesàro–Stolz-tétellel):*
Mivel $a_n > 0$ és $a_n \to 2022 > 0$, a természetes logaritmus függvény folytonossága miatt:
$$\lim_{n \to \infty} \ln a_n = \ln 2022.$$
Tekintsük a mértani közép logaritmusát:
$$\ln \left(\sqrt[n]{a_1 a_2 \cdots a_n}\right) = \frac{\ln a_1 + \ln a_2 + \dots + \ln a_n}{n}.$$
Ez éppen a konvergens $(\ln a_n)$ sorozat tagjainak számtani közepe.
Cauchy tétele (a számtani közepek konvergenciájáról) szerint, ha egy sorozat konvergál, akkor a számtani közepeinek sorozata is konvergens, és a határértékük megegyezik:
$$\lim_{n \to \infty} \frac{\ln a_1 + \dots + \ln a_n}{n} = \lim_{n \to \infty} \ln a_n = \ln 2022.$$
Mivel az exponenciális függvény folytonos:
$$\lim_{n \to \infty} \sqrt[n]{a_1 a_2 \cdots a_n} = \lim_{n \to \infty} \exp\left(\ln \left(\sqrt[n]{a_1 \cdots a_n}\right)\right) = \exp(\ln 2022) = 2022.$$

::: elmelet
**Elméleti háttér — közepek határértékei (Cauchy–d'Alembert-tétel):**
- *Mértani közepek tétele:* Ha $a_n > 0$ és $\lim_{n \to \infty} a_n = A > 0$, akkor a mértani közepek sorozatára is $\lim_{n \to \infty} \sqrt[n]{a_1 a_2 \cdots a_n} = A$.
- *Hányados-gyök tétel:* Ha $x_n > 0$ és $\lim_{n \to \infty} \frac{x_{n+1}}{x_n} = L$, akkor $\lim_{n \to \infty} \sqrt[n]{x_n} = L$ is teljesül (ez közvetlenül következik a mértani közepek tételéből az $a_1 = x_1$, $a_k = \frac{x_k}{x_{k-1}}$ választással).
:::
