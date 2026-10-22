# Analízis 1 – 4. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 34. feladat

Legyen $a_1 = 1$ és $a_{n+1} = \sqrt{2a_n + 3}$. Bizonyítsuk be, hogy $a_n \le a_{n+1}$ $\forall n \in \mathbb{N}$-re.

**Megoldás.**

A sorozat jól definiált, mert indukcióval $a_n > 0$, így $2a_n + 3 > 0$. Teljes indukcióval igazoljuk, hogy $a_n \le a_{n+1}$.

*Kezdőlépés:* $a_1 = 1$, $a_2 = \sqrt{5} > 1$.

*Indukciós lépés:* ha $a_n \le a_{n+1}$, akkor $2a_n + 3 \le 2a_{n+1} + 3$, és mivel a négyzetgyökfüggvény monoton nő,
$$a_{n+1} = \sqrt{2a_n + 3} \le \sqrt{2a_{n+1} + 3} = a_{n+2}. \qquad \blacksquare$$

*Kiegészítés:* indukcióval $a_n \le 3$ is igaz ($a_n \le 3 \Rightarrow a_{n+1} \le \sqrt{9} = 3$), így a sorozat monoton és korlátos, tehát konvergens. Ha $a_n \to A$, akkor $A = \sqrt{2A + 3}$, azaz $A^2 - 2A - 3 = (A - 3)(A + 1) = 0$, és $A \ge 1$ miatt $A = 3$.

::: elmelet
**Elméleti háttér — rekurzív sorozatok: monotonitás, korlátosság, fixpont.**

*Rekurzív sorozat.* Az $a_{n+1} = f(a_n)$ előírás egy $a_1$ kezdőértékkel egyértelműen meghatároz egy sorozatot, ha $f$ értelmezve van a tagokon — ezt (itt: $2a_n + 3 > 0$) indukcióval kell ellenőrizni.

*Monotonitás öröklődése.* Ha $f$ **monoton növő** egy $I$ intervallumon, és a tagok $I$-ben vannak, akkor
$$a_n \le a_{n+1} \implies f(a_n) \le f(a_{n+1}) \iff a_{n+1} \le a_{n+2}.$$
Ezért a sorozat monotonitásának iránya az első két tag összehasonlításából derül ki: $a_1 \le a_2$ esetén növő, $a_1 \ge a_2$ esetén fogyó. (Ha $f$ **fogyó**, a sorozat általában nem monoton; ekkor a páros és a páratlan indexű részsorozatok külön-külön monotonok, mert $f \circ f$ növő.)

*Invariáns intervallum.* Ha $f(I) \subseteq I$ és $a_1 \in I$, akkor minden tag $I$-ben van. A feladatban $f(x) = \sqrt{2x + 3}$, és $f([1, 3]) = [\sqrt5, 3] \subseteq [1, 3]$, így $1 \le a_n \le 3$.

*Monoton konvergencia tétele.* Monoton növő, felülről korlátos sorozat konvergens, és határértéke a tagok halmazának szuprémuma. *Bizonyítás:* legyen $s = \sup\{a_n\}$ (a teljességi axióma miatt létezik). Adott $\varepsilon$-hoz van $a_N > s - \varepsilon$, és a monotonitás miatt $n \ge N$-re $s - \varepsilon < a_N \le a_n \le s$.

*A határérték meghatározása.* Ha $a_n \to A$ és $f$ folytonos $A$-ban, akkor $a_{n+1} \to A$ és $f(a_n) \to f(A)$, így $A = f(A)$: a határérték a **fixpontegyenlet** megoldása. Ha több megoldás van, a korlátok döntenek (itt $A \ge 1$ zárja ki a $-1$-et). Fontos sorrend: előbb a konvergenciát kell igazolni, csak utána szabad a fixpontegyenletet felírni — divergens sorozatnál a „fixpont” értelmetlen (például $a_{n+1} = 2a_n$, $a_1 = 1$ esetén az $A = 2A$ egyenletből $A = 0$ adódna, pedig $a_n \to \infty$).

*Konvergencia sebessége.* Itt $|a_{n+1} - 3| = \left|\sqrt{2a_n + 3} - 3\right| = \frac{2|a_n - 3|}{\sqrt{2a_n + 3} + 3} \le \frac{2}{\sqrt 5 + 3}|a_n - 3| < 0{,}39\,|a_n - 3|$, tehát a hiba legalább mértani sorozat ütemében csökken — ez a kontrakció elve.
:::

## 35. feladat

Keressünk olyan $N_0$ számot, hogy $\forall n > N_0$ esetén teljesüljön, hogy

a) $\sqrt{n+1} - \sqrt{n} < \frac{1}{100}$, b) $\sqrt{n^2 + 5} - n < 0{,}01$.

**Megoldás.**

a) Gyöktelenítéssel
$$\sqrt{n+1} - \sqrt{n} = \frac{1}{\sqrt{n+1} + \sqrt{n}} < \frac{1}{2\sqrt{n}}.$$
Ez legfeljebb $\frac{1}{100}$, ha $2\sqrt{n} \ge 100$, azaz $n \ge 2500$. Tehát **$N_0 = 2499$** megfelel. Ez a legjobb küszöb is: $n = 2499$-re $\sqrt{2500} + \sqrt{2499} < 100$, így ott az egyenlőtlenség nem teljesül.

b) Hasonlóan
$$\sqrt{n^2 + 5} - n = \frac{5}{\sqrt{n^2 + 5} + n} < \frac{5}{2n},$$
ami $n \ge 250$ esetén legfeljebb $0{,}01$. Tehát **$N_0 = 249$** megfelel. (Ez is optimális: $n = 249$-re $\sqrt{62\,006} + 249 \approx 498{,}01 < 500$.)

::: elmelet
**Elméleti háttér — gyöktelenítés és az $\infty - \infty$ alak.**

*Az azonosság.* $(x - y)(x + y) = x^2 - y^2$ miatt $u, v \ge 0$, $u + v > 0$ esetén
$$\sqrt u - \sqrt v = \frac{u - v}{\sqrt u + \sqrt v}.$$
Ha $u$ és $v$ „közel” vannak egymáshoz, a számláló kicsi (itt $1$, illetve $5$), a nevező pedig nagy — így a különbség kicsi. A számolás „$\infty - \infty$” típusú határozatlan alakot alakít át „$\frac{\text{korlátos}}{\infty}$” alakúvá.

*Becslés küszöbindexhez.* A pontos egyenlőtlenség ($\frac{1}{\sqrt{n+1} + \sqrt n} < \frac1{100}$) helyett egy egyszerűbb **felső becslést** oldunk meg ($\frac{1}{2\sqrt n} \le \frac1{100}$). Ez csak *elégséges* feltételt ad, így a kapott küszöb általában nem a legjobb; itt történetesen az (ezt külön, az $N_0$ előtti indexre ellenőriztük).

*Általánosítások.*

- $\sqrt{n + a} - \sqrt{n} = \frac{a}{\sqrt{n+a} + \sqrt n} \sim \frac{a}{2\sqrt n} \to 0$;
- $\sqrt{n^2 + an + b} - n = \frac{an + b}{\sqrt{n^2 + an + b} + n} \to \frac a2$ — itt a különbség **nem** $0$-hoz tart, ha $a \ne 0$;
- köbgyökökre $x^3 - y^3 = (x - y)(x^2 + xy + y^2)$, $k$-adik gyökökre $x^k - y^k = (x - y)(x^{k-1} + x^{k-2}y + \dots + y^{k-1})$.

*Tipikus hiba.* „$\sqrt{n^2 + 5} \approx n$, tehát a különbség $0$” — a közelítés helyes iránya ugyan stimmel, de a $\sqrt{n^2 + 5n} - n$ esetben ugyanez az érvelés hibás eredményt adna ($\frac52$ a határérték). A gyöktelenítés pontos alakot ad, amelyből a határérték biztonságosan leolvasható.
:::

## 36. feladat

Előadáson szerepelt, hogy $\lim\limits_{n \to \infty} \frac{(-1)^n}{2n} = 0$. Adjunk $\varepsilon = 0{,}01$-hoz $n_\varepsilon$-t. Illetve általában $\varepsilon > 0$-hoz $n_\varepsilon$-t.

**Megoldás.**

$\left|\frac{(-1)^n}{2n} - 0\right| = \frac{1}{2n} < \varepsilon \iff n > \frac{1}{2\varepsilon}$.

- $\varepsilon = 0{,}01$: $n > 50$, tehát **$n_\varepsilon = 51$** (minden $n \ge 51$-re teljesül).
- Általában: **$n_\varepsilon = \left\lfloor \frac{1}{2\varepsilon} \right\rfloor + 1$** jó választás (az arkhimédészi tulajdonság garantálja, hogy ilyen egész létezik).

::: elmelet
**Elméleti háttér — a sorozat határértékének definíciója.**

*Definíció.* Az $(a_n)$ sorozat **határértéke** $a \in \mathbb R$ (jelben $a_n \to a$ vagy $\lim_{n\to\infty} a_n = a$), ha
$$\forall \varepsilon > 0\ \exists n_\varepsilon \in \mathbb N\ \forall n \ge n_\varepsilon: \ |a_n - a| < \varepsilon.$$
Szavakban: az $a$ bármely $\varepsilon$ sugarú környezetén kívül a sorozatnak **csak véges sok** tagja van. Az $n_\varepsilon$ a **küszöbindex**; függ $\varepsilon$-tól (és általában ahogy $\varepsilon$ csökken, $n_\varepsilon$ nő).

*A küszöbindex megtalálása.* 1. Írjuk fel $|a_n - a|$-t egyszerű alakban. 2. Becsüljük felülről egy $0$-hoz tartó, könnyen invertálható kifejezéssel ($\frac{C}{n}$, $\frac{C}{\sqrt n}$, …). 3. Oldjuk meg a becslés $< \varepsilon$ egyenlőtlenségét $n$-re. A küszöb nem egyértelmű: ha $n_\varepsilon$ jó, bármely nagyobb is jó.

*Miért létezik $n_\varepsilon$?* Az $n > \frac{1}{2\varepsilon}$ feltételt kielégítő természetes számot az **arkhimédészi tulajdonság** garantálja; $\left\lfloor \frac1{2\varepsilon} \right\rfloor + 1$ egy konkrét ilyen szám.

*Az előjel szerepe.* A $(-1)^n$ tényező nem befolyásolja a konvergenciát a $0$-hoz, mert $|(-1)^n b_n| = |b_n|$: egy sorozat pontosan akkor tart $0$-hoz, ha az abszolút értéke (39. feladat). Ugyanez nem igaz nem nulla határértékre.

*Alapvető következmények.* Konvergens sorozat **korlátos** ($\varepsilon = 1$-hez tartozó küszöb után a tagok az $(a - 1, a + 1)$-ben vannak, előtte véges sok tag van); a határérték **egyértelmű**; véges sok tag megváltoztatása nem változtat a konvergencián és a határértéken.
:::

## 37. feladat

a) Mondjuk ki, hogy $a_n \not\to a$.

b) Mondjuk ki, hogy $(a_n)$ divergens.

**Megoldás.**

a) $a_n \not\to a$:
$$\exists \varepsilon > 0\ \forall N \in \mathbb{N}\ \exists n \ge N : |a_n - a| \ge \varepsilon,$$
azaz van olyan $\varepsilon$-környezete $a$-nak, amelyen kívül a sorozatnak végtelen sok tagja van.

b) $(a_n)$ divergens, azaz semmilyen valós számhoz nem tart:
$$\forall a \in \mathbb{R}\ \exists \varepsilon > 0\ \forall N \in \mathbb{N}\ \exists n \ge N : |a_n - a| \ge \varepsilon.$$

::: elmelet
**Elméleti háttér — konvergencia, divergencia és a tagadás.**

*Tagadási szabály.* $\neg\,\forall x\,P \equiv \exists x\,\neg P$ és $\neg\,\exists x\,P \equiv \forall x\,\neg P$. Az $a_n \to a$ definíciójában három kvantor van ($\forall\varepsilon\ \exists N\ \forall n$), így a tagadásban $\exists\varepsilon\ \forall N\ \exists n$ áll, és a végén $|a_n - a| \ge \varepsilon$.

*Szemléletes jelentés.* $a_n \not\to a$ pontosan akkor, ha van az $a$-nak egy $\varepsilon$-környezete, amelyen **kívül végtelen sok** tag van (a „$\forall N\ \exists n \ge N$” pontosan a „végtelen sok indexre” kifejezés). Ekvivalensen: van egy részsorozat, amely egyetlen tagjával sem kerül $\varepsilon$-nál közelebb $a$-hoz.

*Divergencia.* Egy sorozat **konvergens**, ha van olyan $a \in \mathbb{R}$, amelyhez tart: $\exists a\ \forall\varepsilon\ \exists N\ \forall n \ge N: |a_n - a| < \varepsilon$. **Divergens**, ha nem konvergens: ez négy kvantor tagadása, az elején $\forall a$-val. A divergencián belül megkülönböztetjük a $\pm\infty$-hez tartó sorozatokat (tágabb értelemben vett határérték) és az „oszcilláló” sorozatokat (pl. $(-1)^n$), amelyeknek tágabb értelemben sincs határértékük.

*A $+\infty$ határérték definíciója.* $a_n \to +\infty$, ha $\forall K\ \exists N\ \forall n \ge N: a_n > K$. Tagadása: $\exists K\ \forall N\ \exists n \ge N: a_n \le K$ — vagyis végtelen sok tag egy korlát alatt marad.

*Gyakorlati divergencia-bizonyítás.* Közvetlenül a tagadott definíciót ritkán ellenőrizzük; ehelyett elég (1) két különböző határértékű részsorozat (pl. $(-1)^n$-ben a páros és páratlan indexűek), vagy (2) korlátlanság. Ezek az előbbi kvantoros állítás egy-egy elégséges feltételei.
:::

## 38. feladat

Határozzuk meg az alábbi sorozatok határértékét, és adjunk meg adott $\varepsilon > 0$-hoz $n_\varepsilon$-t:

a) $1/\sqrt{n}$; b) $1/\sqrt[3]{n}$; c) $(2n+1)/(n+1)$; d) $1/(n - \sqrt{n})$; e) $(1 + \dots + n)/n^2$; f) $\sqrt[n]{7}$; g) $n \cdot \left(\sqrt{1 + (1/n)} - 1\right)$; h) $\sqrt{n^2+1} + \sqrt{n^2-1} - 2n$; i) $\sqrt[3]{n+2} - \sqrt[3]{n-2}$; j) $\sqrt[n]{n}$.

**Megoldás.**

A becslésekben mindig olyan $n_\varepsilon$-t adunk, amelytől kezdve $|a_n - a| < \varepsilon$.

a) $\frac{1}{\sqrt n} \to 0$: $\frac{1}{\sqrt n} < \varepsilon \iff n > \frac{1}{\varepsilon^2}$, $n_\varepsilon = \lfloor 1/\varepsilon^2 \rfloor + 1$.

b) $\frac{1}{\sqrt[3]{n}} \to 0$: $\frac{1}{\sqrt[3]n} < \varepsilon \iff n > \frac{1}{\varepsilon^3}$, $n_\varepsilon = \lfloor 1/\varepsilon^3 \rfloor + 1$.

c) $\frac{2n+1}{n+1} = 2 - \frac{1}{n+1} \to 2$: $\frac{1}{n+1} < \varepsilon \iff n > \frac1\varepsilon - 1$, pl. $n_\varepsilon = \lfloor 1/\varepsilon \rfloor + 1$.

d) $\frac{1}{n - \sqrt n} \to 0$ (a sorozat $n \ge 2$-re értelmes). Ha $n \ge 4$, akkor $\sqrt n \le \frac n2$, így $n - \sqrt n \ge \frac n2$ és $\frac{1}{n - \sqrt n} \le \frac{2}{n} < \varepsilon$, ha $n > \frac2\varepsilon$. $n_\varepsilon = \max\{4, \lfloor 2/\varepsilon \rfloor + 1\}$.

e) $\frac{1 + \dots + n}{n^2} = \frac{n(n+1)}{2n^2} = \frac12 + \frac{1}{2n} \to \frac12$: $\frac{1}{2n} < \varepsilon \iff n > \frac{1}{2\varepsilon}$.

f) $\sqrt[n]{7} \to 1$: írjuk $\sqrt[n]7 = 1 + h_n$, $h_n > 0$. A Bernoulli-egyenlőtlenséggel $7 = (1 + h_n)^n \ge 1 + nh_n$, így $0 < h_n \le \frac6n$. Tehát $|\sqrt[n]7 - 1| < \varepsilon$, ha $n > \frac{6}{\varepsilon}$.

g) $n\left(\sqrt{1 + \frac1n} - 1\right) = \dfrac{n \cdot \frac1n}{\sqrt{1 + \frac1n} + 1} = \dfrac{1}{\sqrt{1 + \frac1n} + 1} \to \frac12$. Jelölje $s = \sqrt{1 + \frac1n}$. Ekkor
$$\left|\frac{1}{s+1} - \frac12\right| = \frac{s - 1}{2(s+1)} \le \frac{s-1}{4} = \frac{1/n}{4(s + 1)} \le \frac{1}{8n},$$
ami $< \varepsilon$, ha $n > \frac{1}{8\varepsilon}$.

h) $\sqrt{n^2+1} + \sqrt{n^2-1} - 2n = \left(\sqrt{n^2+1} - n\right) - \left(n - \sqrt{n^2-1}\right) = \dfrac{1}{\sqrt{n^2+1} + n} - \dfrac{1}{n + \sqrt{n^2 - 1}} \to 0$. Becslés: $|h_n| \le \frac{1}{2n} + \frac1n = \frac{3}{2n} < \varepsilon$, ha $n > \frac{3}{2\varepsilon}$.

i) Az $A^3 - B^3 = (A - B)(A^2 + AB + B^2)$ azonossággal ($A = \sqrt[3]{n+2}$, $B = \sqrt[3]{n-2}$, $n \ge 2$, így $B \ge 0$):
$$\sqrt[3]{n+2} - \sqrt[3]{n-2} = \frac{4}{A^2 + AB + B^2} \le \frac{4}{A^2} \le \frac{4}{n^{2/3}} \to 0,$$
és ez $< \varepsilon$, ha $n > \left(\frac4\varepsilon\right)^{3/2}$.

j) $\sqrt[n]{n} \to 1$: írjuk $\sqrt[n]n = 1 + h_n$, $h_n \ge 0$. A binomiális tétel szerint ($n \ge 2$) $n = (1 + h_n)^n \ge 1 + \binom n2 h_n^2$, így $h_n^2 \le \frac{n - 1}{n(n-1)/2} = \frac2n$, azaz $0 \le h_n \le \sqrt{2/n}$. Tehát $|\sqrt[n]n - 1| < \varepsilon$, ha $n > \frac{2}{\varepsilon^2}$.

::: elmelet
**Elméleti háttér — becslési eszköztár a definíció ellenőrzéséhez.**

*Az általános stratégia.* $|a_n - a| \le b_n$, ahol $b_n \to 0$ egy „ismert”, egyszerű sorozat ($\frac{C}{n}$, $\frac{C}{\sqrt n}$, $\frac{C}{n^{2/3}}$). Ekkor $|a_n - a| < \varepsilon$, mihelyt $b_n < \varepsilon$ — ezt pedig könnyű megoldani. A becslés lehet durva; csak az a fontos, hogy $0$-hoz tartson.

*Eszközök.*

1. **Algebrai átalakítás:** közös nevező, kiemelés ($\frac{2n+1}{n+1} = 2 - \frac{1}{n+1}$), összegképletek ($1 + \dots + n = \frac{n(n+1)}{2}$).
2. **Gyöktelenítés:** $\sqrt u - \sqrt v = \frac{u - v}{\sqrt u + \sqrt v}$; köbgyökre $A - B = \frac{A^3 - B^3}{A^2 + AB + B^2}$.
3. **A nevező alulról becslése:** a nevezőt csökkentve a tört nő, így felső becslést kapunk; például $n \ge 4$-re $\sqrt n \le \frac n2$, tehát $n - \sqrt n \ge \frac n2$.
4. **Bernoulli-egyenlőtlenség:** $\sqrt[n]{a} = 1 + h_n$ ($a \ge 1$) esetén $a \ge 1 + nh_n$, így $h_n \le \frac{a-1}{n}$.
5. **A binomiális tétel egy tagja:** $\sqrt[n]{n} = 1 + h_n$ esetén a lineáris tag nem elég ($n \ge 1 + nh_n$ csak $h_n \le 1$-et adna), ezért a négyzetes tagot használjuk: $n \ge \binom n2 h_n^2$, ahonnan $h_n \le \sqrt{\frac{2}{n-1}}$, illetve a megoldásbeli kicsit kényelmesebb alak.

*Nevezetes határértékek, amelyek innen származnak.* $\frac{1}{n^p} \to 0$ ($p > 0$); $\sqrt[n]{a} \to 1$ ($a > 0$); $\sqrt[n]{n} \to 1$; $\sqrt{n+1} - \sqrt n \to 0$; $n\big(\sqrt{1 + \frac1n} - 1\big) \to \frac12$. Az utolsó az $f(x) = \sqrt{1 + x}$ függvény $0$-beli deriváltja ($\frac12$) — a differenciálhányados a későbbiekben pontosan ilyen határértékként jelenik meg.

*Mikor elég a határérték a műveleti szabályokkal?* Ha nem kell $n_\varepsilon$, a határértékek gyorsabban adódnak a műveleti tételekből (összeg, szorzat, hányados határértéke) és a rendőrelvből. Az explicit küszöb a definíció megértését és az elemi becslések gyakorlását szolgálja.
:::

## 39. feladat

a) Mutassuk meg, hogy $a_n \to a$ acsa, ha $(a_n - a) \to 0$.

b) Mutassuk meg, hogy $a_n \to 0$ acsa, ha $|a_n| \to 0$.

c) Bizonyítandó, hogy ha $(a_n)$ konvergens, akkor $(|a_n|)$ is konvergens. Igaz-e az állítás megfordítása?

**Megoldás.**

a) Az $a_n \to a$ definíciója: $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - a| < \varepsilon$. Az $(a_n - a) \to 0$ definíciója: $\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |(a_n - a) - 0| < \varepsilon$. A két formula szó szerint ugyanaz.

b) $|a_n - 0| = |a_n| = \big||a_n| - 0\big|$, tehát a két definíció ismét azonos.

c) A fordított háromszög-egyenlőtlenség szerint $\big||a_n| - |a|\big| \le |a_n - a|$. Ha $a_n \to a$, akkor adott $\varepsilon$-hoz ugyanaz az $N$ jó $|a_n| \to |a|$-hoz is. **A megfordítás nem igaz:** $a_n = (-1)^n$ divergens, de $|a_n| = 1 \to 1$. (A b) rész szerint az $a = 0$ speciális esetben viszont a megfordítás is igaz.)

::: elmelet
**Elméleti háttér — egyszerű ekvivalenciák és a fordított háromszög-egyenlőtlenség.**

*Eltolás.* A konvergencia definíciója csak az $|a_n - a|$ távolságokat használja, ezért $a_n \to a \iff (a_n - a) \to 0$: elég nullsorozatokat vizsgálni. Ugyanígy $a_n \to 0 \iff |a_n| \to 0$.

*Lipschitz-tulajdonság.* Egy $f$ függvény **$L$-Lipschitz**, ha $|f(x) - f(y)| \le L|x - y|$. Az abszolútérték-függvény $1$-Lipschitz (fordított háromszög-egyenlőtlenség), ezért $a_n \to a \Rightarrow |a_n| \to |a|$, sőt ugyanazzal a küszöbindexszel. Általában: ha $f$ Lipschitz, akkor $a_n \to a \Rightarrow f(a_n) \to f(a)$ — ez a folytonosság sorozatos jellemzésének előképe.

*Miért nem fordítható meg?* Az abszolút érték nem injektív: $a$ és $-a$ képe ugyanaz. A $(-1)^n$ sorozat tagjai az $1$ és a $-1$ között ugrálnak, az abszolút értékük állandó. A megfordítás pontosan akkor igaz, ha $a = 0$ (mert $0$ az egyetlen szám, amelyre $|x| = |a| \Rightarrow x = a$), vagy ha a sorozat egy indextől állandó előjelű.

*Kapcsolódó tételek.* Ha $a_n \to a$, akkor $a_n^2 \to a^2$, $\sqrt{a_n} \to \sqrt a$ ($a_n \ge 0$), $\frac{1}{a_n} \to \frac{1}{a}$ ($a \ne 0$) — mindegyik egy „folytonos függvény alkalmazása” konvergens sorozatra. A megfordításuk általában szintén hamis (például $a_n^2 \to 1$-ből nem következik $a_n$ konvergenciája).
:::

## 40. feladat

a) Készítendő divergens $(a_n)$ sorozat, melyre $a_{n+1} - a_n \to 0$.

b) Tegyük fel, hogy $a_{n+1} - a_n \to 0$. Következik-e ebből, hogy $a_{2n} - a_n \to 0$?

**Megoldás.**

a) $a_n = \sqrt{n}$: $a_{n+1} - a_n = \frac{1}{\sqrt{n+1} + \sqrt n} \to 0$, de $a_n \to +\infty$, tehát divergens.

b) **Nem következik.** Ugyanez a példa: $a_{2n} - a_n = \sqrt{2n} - \sqrt n = (\sqrt2 - 1)\sqrt n \to +\infty$. (Egy másik példa a harmonikus részletösszegek sorozata: $H_n = 1 + \frac12 + \dots + \frac1n$; ekkor $H_{n+1} - H_n = \frac{1}{n+1} \to 0$, de $H_{2n} - H_n = \sum_{k=n+1}^{2n} \frac1k \ge n \cdot \frac{1}{2n} = \frac12$.)

::: elmelet
**Elméleti háttér — a Cauchy-kritérium és a lassan divergáló sorozatok.**

*Cauchy-sorozat.* $(a_n)$ **Cauchy-sorozat**, ha
$$\forall \varepsilon > 0\ \exists N\ \forall m, n \ge N: \ |a_m - a_n| < \varepsilon.$$
**Cauchy-kritérium:** egy valós sorozat pontosan akkor konvergens, ha Cauchy-sorozat. (A „$\Rightarrow$” irány a $\frac\varepsilon2$-trükkel: $|a_m - a_n| \le |a_m - a| + |a - a_n|$; a „$\Leftarrow$” a teljességet, például a Bolzano–Weierstrass-tételt használja.)

*Mit nem mond az $a_{n+1} - a_n \to 0$?* A Cauchy-feltétel **minden** elég nagy $m, n$ párra szól, a feladat feltétele csak $m = n + 1$-re. Ha a lépések lassan csökkennek, a sok kis lépés összege nagy lehet: $a_{2n} - a_n = \sum_{k=n}^{2n-1}(a_{k+1} - a_k)$, ami $n$ darab tag összege. Ha a lépések $\frac1{2\sqrt n}$ vagy $\frac1n$ nagyságrendűek, ez az összeg nem tart $0$-hoz.

*A harmonikus sor.* $H_{2n} - H_n \ge \frac12$ miatt $H_{2^k} \ge 1 + \frac k2 \to \infty$: a $\sum \frac1n$ sor divergens, pedig tagjai $0$-hoz tartanak. Ez a végtelen sorok fejezetének kulcspéldája: a $\sum a_k$ sor konvergenciájához **szükséges**, de **nem elégséges**, hogy $a_k \to 0$.

*Mi elég?* Ha a lépések összegezhetők, például $|a_{n+1} - a_n| \le q^n$ valamely $q < 1$-re, akkor $|a_m - a_n| \le q^n + \dots + q^{m-1} \le \frac{q^n}{1 - q} \to 0$, tehát a sorozat Cauchy, így konvergens. Ez az elv (kontrakció) mutatja például a 34. feladat sorozatának konvergenciáját is.
:::

## 41. feladat

Hogyan viszonyulnak az $a_n \to a$ állításhoz a következő állítások?

a) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| \le 5\varepsilon$;

b) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < \varepsilon^2$;

c) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < 1 + \varepsilon$;

d) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| \le \sqrt{\varepsilon}$;

e) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < \varepsilon - 1$;

f) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - a| < \frac{1}{\varepsilon}$;

g) $\forall \varepsilon > 0,\ \exists n_\varepsilon\ \forall n \ge n_\varepsilon\ |a_n - \varepsilon| \le 10$.

**Megoldás.**

a) **Ekvivalens** az $a_n \to a$-val. Ha $a_n \to a$, akkor $|a_n - a| < \varepsilon \le 5\varepsilon$. Megfordítva, adott $\varepsilon'$-höz alkalmazzuk a feltételt $\varepsilon = \varepsilon'/10$-zel: $|a_n - a| \le \varepsilon'/2 < \varepsilon'$.

b) **Ekvivalens.** Ha $a_n \to a$, alkalmazzuk a definíciót $\varepsilon^2$-tel. Megfordítva, adott $\varepsilon'$-höz válasszuk $\varepsilon = \sqrt{\varepsilon'}$-t.

c) **Gyengébb:** $a_n \to a$-ból következik, de fordítva nem. Pl. $a_n = a + \frac{(-1)^n}{2}$ esetén $|a_n - a| = \frac12 < 1 + \varepsilon$ mindig, de $a_n \not\to a$. (Az állítás azzal ekvivalens, hogy $\limsup |a_n - a| \le 1$.)

d) **Ekvivalens.** Ha $a_n \to a$, alkalmazzuk a definíciót $\sqrt\varepsilon$-nal. Megfordítva, adott $\varepsilon'$-höz válasszuk $\varepsilon = \varepsilon'^2/4$-et: $|a_n - a| \le \varepsilon'/2 < \varepsilon'$.

e) **Egyetlen sorozatra sem teljesül:** $\varepsilon \le 1$ esetén $\varepsilon - 1 \le 0$, és $|a_n - a| < \varepsilon - 1 \le 0$ lehetetlen. Formálisan tehát az állításból (mint hamis állításból) minden következik, $a_n \to a$-ból viszont nem következik.

f) **Ekvivalens.** Ha $a_n \to a$, alkalmazzuk a definíciót $1/\varepsilon$-nal. Megfordítva, adott $\varepsilon'$-höz alkalmazzuk a feltételt $\varepsilon = 1/\varepsilon'$-vel: $|a_n - a| < \varepsilon'$. (A kulcs: a feltétel *minden* $\varepsilon$-ra szól, a nagy $\varepsilon$-ok adják a kis hibakorlátot.)

g) **Egyetlen sorozatra sem teljesül** (és $a$-tól független). $\varepsilon = 100$-ra egy indextől kezdve $a_n \ge 90$, míg $\varepsilon = \frac12$-re egy indextől kezdve $a_n \le 10{,}5$ – a kettő egyszerre lehetetlen.

::: elmelet
**Elméleti háttér — a definíció módosításai: mi számít és mi nem.**

*Általános elv.* Tekintsük a „$\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - a| < g(\varepsilon)$” állítást egy $g : (0, \infty) \to \mathbb{R}$ függvénnyel.

- Ha $g$ pozitív, és **tetszőlegesen kis értékeket felvesz** (vagyis $\inf_{\varepsilon > 0} g(\varepsilon) = 0$), akkor az állítás **ekvivalens** az $a_n \to a$-val. Valóban: adott $\varepsilon'$-höz válasszunk $\varepsilon$-t, amelyre $g(\varepsilon) \le \varepsilon'$. Megfordítva, ha $a_n \to a$, akkor a definíciót a $g(\varepsilon) > 0$ hibakorlátra alkalmazzuk. Ide tartozik $5\varepsilon$, $\varepsilon^2$, $\sqrt\varepsilon$ és $\frac1\varepsilon$ is (az utóbbinál a *nagy* $\varepsilon$-ok adják a kis korlátot).
- Ha $\inf g = c > 0$, az állítás azzal ekvivalens, hogy egy indextől a tagok $c$-nél „nem sokkal” messzebb vannak $a$-tól ($\limsup |a_n - a| \le c$) — ez **gyengébb** a konvergenciánál (például $1 + \varepsilon$).
- Ha $g$ valahol nempozitív (például $\varepsilon - 1$ az $\varepsilon \le 1$ helyeken), a feltétel teljesíthetetlen, így egyetlen sorozatra sem igaz.

*$<$ vagy $\le$?* A $|a_n - a| < \varepsilon$ és a $|a_n - a| \le \varepsilon$ változat ekvivalens: az egyikből a másik következik $\frac\varepsilon2$-re alkalmazva. Ezért a definícióban mindegy, melyiket írjuk.

*A g) állítás tanulsága.* Ott $\varepsilon$ nem hibakorlátként, hanem a sorozat *céljaként* szerepel ($|a_n - \varepsilon| \le 10$): különböző $\varepsilon$-okhoz egymásnak ellentmondó feltételek tartoznak. A kvantoros definíciókban mindig figyeljük, **melyik változó mit jelent**, és hogy a feltétel ugyanarra a sorozatra egyszerre teljesülhet-e.

*Miért hasznos mindez?* A bizonyításokban gyakran $|a_n - a| < 3\varepsilon$ vagy $< \varepsilon + \varepsilon^2$ jön ki a kívánt $< \varepsilon$ helyett. Az elv szerint ez nem baj: az érvelést elég kezdetben $\frac\varepsilon3$-mal elvégezni, vagy egyszerűen megállapítani, hogy a hibakorlát tetszőlegesen kicsivé tehető.
:::

## 42*. feladat

Bontsuk fel a számegyenest végtelen sok páronként diszjunkt sűrű halmaz egyesítésére.

**Megoldás.**

Legyen $A_k = \{q + k\sqrt2 : q \in \mathbb{Q}\}$, $k = 1, 2, 3, \dots$, és $A_0 = \mathbb{R} \setminus \bigcup_{k \ge 1} A_k$.

- **Diszjunktak:** ha $q + k\sqrt2 = q' + l\sqrt2$ és $k \ne l$, akkor $\sqrt2 = \frac{q' - q}{k - l} \in \mathbb{Q}$ volna – ellentmondás. $A_0$ definíció szerint diszjunkt a többitől.
- **Sűrűek:** $A_k = \mathbb{Q} + k\sqrt2$ a racionális számok eltoltja, és $\mathbb{Q}$ sűrű, tehát $A_k$ is az: az $(a, b)$ intervallumba eső $A_k$-elemekhez vegyünk racionális $q$-t az $(a - k\sqrt2, b - k\sqrt2)$ intervallumból. $A_0 \supseteq \mathbb{Q}$ (hiszen $A_k$ elemei $k \ge 1$-re irracionálisak), így $A_0$ is sűrű.
- **Egyesítésük** $\mathbb{R}$.

Tehát $\mathbb{R} = A_0 \cup A_1 \cup A_2 \cup \dots$ végtelen sok, páronként diszjunkt, sűrű halmaz egyesítése.

::: elmelet
**Elméleti háttér — sűrű halmazok és a $\mathbb{Q}$ mellékosztályai.**

*Sűrűség.* $A \subseteq \mathbb R$ **sűrű**, ha minden nyílt $(a, b)$ intervallumban van eleme; ekvivalensen minden valós szám előáll $A$-beli elemek sorozatának határértékeként. $\mathbb{Q}$ sűrű (arkhimédészi tulajdonság), és $\mathbb{R}\setminus\mathbb{Q}$ is sűrű (például $q + \frac{\sqrt2}{n}$ alakú számok).

*Eltolás és nyújtás.* Ha $A$ sűrű, akkor $A + c$ és $cA$ ($c \ne 0$) is sűrű, mert az $x \mapsto x + c$ és $x \mapsto cx$ leképezések intervallumot intervallumba visznek.

*Mellékosztályok.* A $\mathbb{Q} + x$ ($x \in \mathbb{R}$) halmazok az $\mathbb{R}$ additív csoportjának $\mathbb{Q}$ szerinti **mellékosztályai**: két ilyen halmaz vagy egyenlő ($x - y \in \mathbb{Q}$), vagy diszjunkt. Minden mellékosztály sűrű. A feladat megoldása ezek közül megszámlálhatóan sokat választ ki ($\mathbb Q + k\sqrt2$), és a maradékot egyetlen halmazba gyűjti. (Valójában $\mathbb{R}$ **kontinuum sok** páronként diszjunkt, sűrű halmazra is felbontható: az összes $\mathbb{Q}$ szerinti mellékosztályra.)

*Egy szép következmény.* Ha minden mellékosztályból egy elemet választunk, az így kapott halmaz (Vitali-halmaz) nem mérhető — ez mutatja, hogy a „hossz” fogalma nem terjeszthető ki minden részhalmazra. (Ez már a mértékelmélet témája, és a kiválasztási axiómát igényli.)

*Ellenőrzési lista halmazfelbontásnál.* 1. páronként diszjunktak? 2. lefedik az egészet? 3. megvan-e minden darab kívánt tulajdonsága? A megoldásban a „maradék” $A_0$ halmaz automatikusan biztosítja a lefedést, sűrűségét pedig az adja, hogy tartalmazza a $\mathbb{Q}$-t.
:::

## 43*. feladat

Adjunk meg olyan számsorozatot, melyben minden természetes szám végtelen sokszor szerepel.

**Megoldás.**

Például
$$1;\ 1, 2;\ 1, 2, 3;\ 1, 2, 3, 4;\ 1, 2, 3, 4, 5;\ \dots$$
azaz a $k$-adik blokk az $1, 2, \dots, k$ számokból áll. Az $m$ természetes szám minden $k \ge m$ blokkban szerepel, tehát végtelen sokszor. (Ha a $0$-t is természetes számnak tekintjük, a blokkok legyenek $0, 1, \dots, k$.)

Képlettel is: írjuk fel $n$-et $n = 2^a(2b + 1)$ alakban; legyen $x_n = a$. Ekkor minden $a \ge 0$ végtelen sokszor szerepel (minden páratlan $2b+1$-hez egyszer).

::: elmelet
**Elméleti háttér — felsorolások, részsorozatok és sűrűsödési pontok.**

*Végtelen sokszor előforduló értékek.* Ha egy sorozatban az $m$ érték végtelen sokszor szerepel, akkor az $m$-et felvevő indexek egy **állandó részsorozatot** adnak, amelynek határértéke $m$. Az $m$ ezért a sorozat **sűrűsödési értéke** (torlódási pontja). A feladat sorozatának tehát minden természetes szám sűrűsödési értéke, így nem lehet konvergens (egy konvergens sorozat minden részsorozata ugyanahhoz tart).

*Bijekciók $\mathbb{N}$ és $\mathbb{N} \times \mathbb{N}$ között.* A $2^a(2b + 1)$ felírás egyértelmű (a $2$ kitevője és a páratlan rész egyértelműen leválasztható), így az $n \mapsto (a, b)$ bijekció $\mathbb{N}$ és $\mathbb{N}_0 \times \mathbb{N}_0$ között. Egy másik nevezetes bijekció a Cantor-féle átlós felsorolás: $(a, b) \mapsto \frac{(a + b)(a + b + 1)}{2} + b$. A blokkos sorozat ennek „egydimenziós vetülete”.

*Általánosítás.* Hasonló módon készíthető olyan sorozat is, amelyben **minden racionális szám** végtelen sokszor szerepel (a racionálisok megszámlálhatók, és a blokkokban mindig egy hosszabb kezdőszeletüket soroljuk fel). Ennek minden valós szám sűrűsödési értéke, mert $\mathbb{Q}$ sűrű — vagyis egy sorozat sűrűsödési értékeinek halmaza lehet akár az egész $\mathbb{R}$ is.

*A „végtelen sokszor” kvantorai.* Az „$m$ végtelen sokszor szerepel” jelentése: $\forall N\ \exists n \ge N: x_n = m$ — ugyanaz a kvantorszerkezet, mint a konvergencia tagadásánál. Ez a sűrűsödési érték definíciójának alapja: $s$ sűrűsödési érték, ha $\forall \varepsilon > 0\ \forall N\ \exists n \ge N: |x_n - s| < \varepsilon$.
:::

## Röpzhra

**Definíciók:** $\lim a_n = a$, $\lim a_n = +\infty$, sorozat átrendezése.

**Tételek:** $a_n \to a$-val ekvivalens tulajdonság $B(a, \varepsilon)$-beli tagokkal, $a_n \to a$ és korlátosság, monoton növő sorozatok és konvergencia, rendőrelv.
