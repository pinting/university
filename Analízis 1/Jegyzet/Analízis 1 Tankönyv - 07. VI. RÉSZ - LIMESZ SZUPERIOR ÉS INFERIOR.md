# VI. RÉSZ: LIMESZ SZUPERIOR ÉS INFERIOR

Egy sorozatnak nem feltétlenül van határértéke. A $\big((-1)^n\big)$ sorozat például ide-oda ugrál, de „rendezetten”: a tagjai felhalmozódnak a $-1$ és az $1$ körül. Jó volna egy olyan fogalom, amely **minden** sorozatra értelmes, és leírja, hol helyezkedik el a sorozat „végső” viselkedése akkor is, ha nincs határértéke. Erre szolgál a limesz szuperior és a limesz inferior: két szám, amely mindig létezik a bővített számegyenesen, és amelyek egybeesése éppen a határérték létezését jelenti.

## 33. A limsup és a liminf definíciója

**Az ötlet.** Nézzük a sorozatnak csak az $n$-edik tagtól kezdődő „farkát”: $a_n, a_{n+1}, a_{n+2}, \dots$. Ennek a farok-halmaznak vesszük a szuprémumát és az infimumát. Ahogy $n$ nő, egyre kevesebb tagot nézünk, tehát a szuprémum nem nőhet, az infimum nem csökkenhet. A kettő egy-egy monoton sorozatot alkot, és a monoton sorozatoknak mindig van határértékük.

> **Definíció.** Legyen $(a_n)$ tetszőleges valós sorozat. Minden $n \in \mathbb{N}$-re legyen
> $$M_n = \sup\{a_k : k \ge n\} \in \overline{\mathbb{R}}, \qquad m_n = \inf\{a_k : k \ge n\} \in \overline{\mathbb{R}}.$$

Mivel $\{a_k : k \ge n+1\} \subset \{a_k : k \ge n\}$, és szűkebb halmaz szuprémuma legfeljebb, infimuma legalább akkora (I. rész, 6. feladat), ezért
$$M_{n+1} \le M_n \qquad \text{és} \qquad m_{n+1} \ge m_n.$$
Az $(M_n)$ sorozat tehát monoton csökkenő, az $(m_n)$ monoton növekedő, így a 22. szakasz szerint mindkettőnek van határértéke $\overline{\mathbb{R}}$-ben. (Ha a sorozat felülről nem korlátos, akkor minden $M_n = +\infty$, és az $(M_n)$ sorozat az állandó $+\infty$; ezt az esetet is megengedjük.)

> **Definíció.** Az $(a_n)$ sorozat
>
> - **limesz szuperiorja** (felső határértéke): $\displaystyle \limsup_{n\to\infty} a_n = \overline{\lim}_{n\to\infty}\, a_n = \lim_{n\to\infty} M_n \in \overline{\mathbb{R}}$;
> - **limesz inferiorja** (alsó határértéke): $\displaystyle \liminf_{n\to\infty} a_n = \underline{\lim}_{n\to\infty}\, a_n = \lim_{n\to\infty} m_n \in \overline{\mathbb{R}}$.

Mivel $(M_n)$ csökkenő és $(m_n)$ növekedő, a 22. szakasz szerint egyben
$$\limsup a_n = \inf_n M_n = \inf_n \sup_{k \ge n} a_k, \qquad \liminf a_n = \sup_n m_n = \sup_n \inf_{k \ge n} a_k.$$

**Alapvető összefüggések.**

- Minden $n$-re $m_n \le a_n \le M_n$, tehát (a rendezés öröklődése szerint, $\overline{\mathbb{R}}$-ben is)
$$\liminf a_n \le \limsup a_n.$$

- Tükrözéssel: $\sup\{-a_k\} = -\inf\{a_k\}$, ezért
$$\liminf a_n = -\limsup\,(-a_n).$$
Elég tehát a limsup tulajdonságait bizonyítani; a liminf-re vonatkozók tükrözéssel adódnak.

### Kidolgozott példák

**1. $a_n = (-1)^n$.** Minden farok tartalmazza a $-1$-et és az $1$-et is, tehát $M_n = 1$ és $m_n = -1$ minden $n$-re. Így $\limsup (-1)^n = 1$ és $\liminf (-1)^n = -1$.

**2. $a_n = (-1)^n\left(1 + \frac{1}{n}\right)$.** A tagok: $-2,\ \frac{3}{2},\ -\frac{4}{3},\ \frac{5}{4},\ -\frac{6}{5}, \dots$. A pozitív (páros indexű) tagok $1 + \frac{1}{k}$ alakúak, csökkennek, és $1$-hez tartanak; a negatív (páratlan indexű) tagok $-\left(1 + \frac{1}{k}\right)$ alakúak, növekednek, és $-1$-hez tartanak. Az $n$-edik farok szuprémuma a farok legelső páros indexű tagja: $M_n = 1 + \frac{1}{n}$, ha $n$ páros, és $M_n = 1 + \frac{1}{n+1}$, ha $n$ páratlan. Így $M_n \to 1$, azaz $\limsup a_n = 1$; hasonlóan $\liminf a_n = -1$. Figyeljük meg, hogy a sorozat egyetlen tagja sem egyenlő $1$-gyel — a limsup nem feltétlenül tagja a sorozatnak.

**3. $a_n = n$.** Minden $M_n = +\infty$, és $m_n = n \to +\infty$. Tehát $\limsup n = \liminf n = +\infty$.

**4. A racionális számok felsorolása.** Legyen $(q_n)$ a $[0, 1] \cap \mathbb{Q}$ halmaz egy felsorolása (ilyen a 29. szakasz szerint létezik). Minden farok a $[0,1] \cap \mathbb{Q}$ halmazból csak véges sok elemet hagy ki, így a szuprémuma $1$, az infimuma $0$ (hiszen $0$ és $1$ körül minden környezetben végtelen sok racionális szám van, és ezek közül csak véges sokat hagytunk ki). Tehát $\limsup q_n = 1$ és $\liminf q_n = 0$.

### A határérték és a limsup, liminf kapcsolata

> **Tétel.** $\displaystyle \lim_{n\to\infty} a_n = a \in \overline{\mathbb{R}} \iff \limsup_{n\to\infty} a_n = \liminf_{n\to\infty} a_n = a$.

Vagyis a határérték létezése pontosan azt jelenti, hogy a sorozat felső és alsó végső viselkedése egybeesik.

*Bizonyítás.* **($\Leftarrow$)** Tegyük fel, hogy $\liminf a_n = \limsup a_n = a$. Mivel $m_n \le a_n \le M_n$, és $m_n \to a$, $M_n \to a$, a rendőrelv (illetve végtelen $a$ esetén a félrendőrelv) szerint $a_n \to a$.

**($\Rightarrow$)** Legyen először $a \in \mathbb{R}$, és $\varepsilon > 0$. Van olyan $N$, hogy $k \ge N$ esetén $a - \varepsilon < a_k < a + \varepsilon$. Ekkor $n \ge N$-re a farok minden eleme az $(a - \varepsilon, a + \varepsilon)$ intervallumban van, így
$$a - \varepsilon \le m_n \le M_n \le a + \varepsilon.$$
Határátmenettel $a - \varepsilon \le \liminf a_n \le \limsup a_n \le a + \varepsilon$. Mivel ez minden $\varepsilon > 0$-ra igaz, a liminf és a limsup is egyenlő $a$-val.

Ha $a = +\infty$, akkor minden $K$-hoz van $N$, hogy $k \ge N$ esetén $a_k > K$, tehát $n \ge N$-re $m_n \ge K$. Így $m_n \to +\infty$, és mivel $M_n \ge m_n$, $M_n \to +\infty$ is. Az $a = -\infty$ eset tükrözéssel adódik. $\blacksquare$

### Egy hasznos jellemzés

A gyakorlatban a következő átfogalmazás a legkényelmesebb (véges limsup esetén):

> **Tétel.** Legyen $L \in \mathbb{R}$. Ekkor $\limsup a_n = L$ pontosan akkor, ha minden $\varepsilon > 0$ esetén
>
> 1. csak véges sok $n$-re teljesül $a_n \ge L + \varepsilon$ (azaz egy küszöbtől kezdve $a_n < L + \varepsilon$), és
> 2. végtelen sok $n$-re teljesül $a_n > L - \varepsilon$.

Szavakban: $L$ fölé a sorozat (bármilyen kis ráhagyással) csak véges sokszor ugrik ki, de $L$ alá (bármilyen kis ráhagyással) sem szorul végleg. A bizonyítás a definícióból közvetlenül adódik: az 1. feltétel azt mondja, hogy egy $n$-től kezdve $M_n \le L + \varepsilon$; a 2. pedig azt, hogy minden $n$-re $M_n > L - \varepsilon$ (különben az $n$-edik farokban már minden tag legfeljebb $L - \varepsilon$ volna). A kettő együtt azt jelenti, hogy $M_n \to L$.

## 34. Sűrűsödési értékek

A limsup a sorozat „legnagyobb végső értéke”. Ezt a részsorozatok nyelvén is meg lehet fogalmazni.

> **Definíció.** Az $\alpha \in \overline{\mathbb{R}}$ az $(a_n)$ sorozat **sűrűsödési értéke** (torlódási értéke), ha van olyan $(a_{n_k})$ részsorozat, amelyre $a_{n_k} \to \alpha$.

Ekvivalens megfogalmazás véges $\alpha$-ra: **$\alpha$ bármely környezetében a sorozatnak végtelen sok (indexű) tagja van.** (Ha van $\alpha$-hoz tartó részsorozat, ennek egy küszöbtől kezdve minden tagja a környezetben van. Megfordítva, ha minden $B\!\left(\alpha, \frac{1}{k}\right)$ környezetben végtelen sok tag van, akkor választhatunk $n_1 < n_2 < \dots$ indexeket úgy, hogy $a_{n_k} \in B\!\left(\alpha, \frac{1}{k}\right)$, és ekkor $a_{n_k} \to \alpha$.)

**Példák.**

- A $\big((-1)^n\big)$ sorozat sűrűsödési értékei: $-1$ és $1$.
- A $0, 1, 0, 1, 2, 0, 1, 2, 3, 0, 1, 2, 3, 4, \dots$ sorozat sűrűsödési értékei: minden nemnegatív egész szám és $+\infty$.
- A 33. szakasz 4. példájának $(q_n)$ sorozata: a sűrűsödési értékek halmaza a teljes $[0, 1]$ intervallum, hiszen minden $x \in [0, 1]$ bármely környezetében végtelen sok racionális szám van a $[0,1]$-ből.
- Konvergens sorozatnak egyetlen sűrűsödési értéke van, maga a határérték (20. szakasz).

A 27. szakasz eredménye most így fogalmazható: **minden sorozatnak van legalább egy sűrűsödési értéke** a bővített számegyenesen. A következő tétel ennél sokkal többet mond.

> **Tétel.** Minden $(a_n)$ sorozatra a $\limsup a_n$ maga is sűrűsödési érték, és minden sűrűsödési értéknél nagyobb vagy egyenlő. Vagyis
> $$\limsup_{n\to\infty} a_n = \max\{\alpha \in \overline{\mathbb{R}} : \alpha \text{ az } (a_n) \text{ sűrűsödési értéke}\}.$$
> Hasonlóan, $\liminf a_n$ a legkisebb sűrűsödési érték.

A tétel tehát azt is állítja, hogy a sűrűsödési értékek halmazának **van** legnagyobb eleme (nemcsak szuprémuma).

*Bizonyítás.* Jelölje $L = \limsup a_n$.

*1. Minden sűrűsödési érték legfeljebb $L$.* Legyen $a_{n_k} \to \alpha$. Mivel $a_{n_k}$ az $n_k$-adik farokban van, $a_{n_k} \le M_{n_k}$. Az $(M_{n_k})$ az $(M_n)$ részsorozata, tehát szintén $L$-hez tart. A rendezés öröklődése szerint $\alpha \le L$.

*2. $L$ sűrűsödési érték.* Három esetet különböztetünk meg.

- $L = +\infty$: ekkor minden $M_n = +\infty$ (hiszen $M_n$ csökkenő és $+\infty$-hez tart), azaz a sorozat felülről nem korlátos. A 27. szakasz szerint van $+\infty$-hez tartó részsorozata.
- $L = -\infty$: ekkor $a_n \le M_n \to -\infty$, a félrendőrelv szerint az egész sorozat $-\infty$-hez tart, ami tehát sűrűsödési érték.
- $L \in \mathbb{R}$: az előző szakasz jellemzése szerint minden $k$-ra egy küszöbtől kezdve $a_n < L + \frac{1}{k}$, és végtelen sok $n$-re $a_n > L - \frac{1}{k}$. Így minden $k$-ra végtelen sok olyan index van, amelyre $|a_n - L| < \frac{1}{k}$. Válasszunk ezekből szigorúan növekedő $n_1 < n_2 < \dots$ indexeket úgy, hogy $|a_{n_k} - L| < \frac{1}{k}$; ekkor $a_{n_k} \to L$. $\blacksquare$

**Összefoglalva** a sorozat végső viselkedését három szám írja le: a liminf (a legkisebb sűrűsödési érték), a limsup (a legnagyobb sűrűsödési érték), és a határérték, amely pontosan akkor létezik, ha a kettő egybeesik — azaz ha a sorozatnak egyetlen sűrűsödési értéke van.

---

## A VI. rész összefoglalása

- $\limsup a_n = \lim_{n\to\infty} \sup_{k\ge n} a_k$, $\liminf a_n = \lim_{n\to\infty} \inf_{k \ge n} a_k$; mindkettő minden sorozatra létezik $\overline{\mathbb{R}}$-ben, és $\liminf \le \limsup$.
- $\lim a_n$ akkor és csak akkor létezik, ha $\liminf a_n = \limsup a_n$, és ekkor mindhárom egyenlő.
- A limsup a legnagyobb, a liminf a legkisebb sűrűsödési érték (részsorozat-határérték).

## Feladatok a VI. részhez

1. Számítsuk ki a limsup és liminf értékét: a) $a_n = \frac{(-1)^n n}{n + 1}$; b) $a_n = n^{(-1)^n}$; c) $a_n = \sin\frac{n\pi}{2}$ (használjuk a $\sin$ ismert értékeit).
2. Bizonyítsuk be, hogy korlátos sorozatokra $\limsup(a_n + b_n) \le \limsup a_n + \limsup b_n$. Adjunk példát szigorú egyenlőtlenségre.
3. Mutassuk meg, hogy ha $a_n \to a \in \mathbb{R}$, akkor tetszőleges korlátos $(b_n)$ sorozatra $\limsup(a_n + b_n) = a + \limsup b_n$.
4. Adjunk meg olyan sorozatot, amelynek sűrűsödési értékei pontosan az $\frac{1}{k}$ ($k \in \mathbb{N}$) számok és a $0$.

### Megoldási útmutatók

1. a) $1$ és $-1$. b) A páros indexű részsorozat $n \to +\infty$, a páratlan indexű $\frac{1}{n} \to 0$; limsup $= +\infty$, liminf $= 0$. c) A sorozat $1, 0, -1, 0, 1, 0, -1, \dots$, így limsup $= 1$, liminf $= -1$.
2. Minden $k \ge n$-re $a_k + b_k \le \sup_{j \ge n} a_j + \sup_{j \ge n} b_j$, tehát $\sup_{k \ge n}(a_k + b_k) \le M_n(a) + M_n(b)$; határátmenettel kész. Szigorú egyenlőtlenség: $a_n = (-1)^n$, $b_n = (-1)^{n+1}$: bal oldal $0$, jobb oldal $2$.
3. A 2. feladat szerint $\le$; a másik irány a 2. feladatot az $(a_n + b_n)$ és $(-a_n)$ sorozatokra alkalmazva: $\limsup b_n \le \limsup(a_n + b_n) + \limsup(-a_n) = \limsup(a_n + b_n) - a$.
4. Például az $1;\ 1, \frac{1}{2};\ 1, \frac{1}{2}, \frac{1}{3};\ 1, \frac{1}{2}, \frac{1}{3}, \frac{1}{4};\ \dots$ sorozat: minden $\frac{1}{k}$ végtelen sokszor szerepel, és a $0$ is sűrűsödési érték (az egyes blokkok utolsó tagjai $0$-hoz tartanak). Más sűrűsödési érték nincs, mert ha $x \notin \{0\} \cup \left\{\frac{1}{k}\right\}$, akkor $x$-nek van olyan környezete, amely a sorozatnak egyetlen értékét sem tartalmazza.

---
