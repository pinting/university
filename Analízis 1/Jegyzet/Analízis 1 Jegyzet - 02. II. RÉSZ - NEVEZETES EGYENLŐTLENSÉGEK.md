# II. RÉSZ: NEVEZETES EGYENLŐTLENSÉGEK

Az analízisben az egzakt egyenlőség ritkán érhető el; az igazi eszköz az **egyenlőtlenség**, vagyis a becslés. Ebben a részben három klasszikust bizonyítunk, amelyek a félév során újra és újra elő fognak kerülni.

## 10. A számtani és a mértani közép

**Definíció (közepek).** Legyenek $a_1, \dots, a_n$ pozitív valós számok. Ekkor

- a **számtani közép** $\displaystyle S = \frac{a_1 + \dots + a_n}{n}$,
- a **mértani közép** $\displaystyle m = \sqrt[n]{a_1 \cdots a_n}$,
- a **harmonikus közép** $\displaystyle h = \frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}$.

**Tétel (számtani és mértani közép közötti egyenlőtlenség).** Ha $a_1, \dots, a_n$ pozitív számok, akkor
$$\sqrt[n]{a_1 \cdots a_n} \le \frac{a_1 + \dots + a_n}{n},$$
és egyenlőség akkor és csak akkor áll fenn, ha $a_1 = a_2 = \dots = a_n$.

*Bizonyítás (Cauchy „trükkös indukciója").* A szokásos indukció itt nem működik közvetlenül. Cauchy ötlete az, hogy először **kettőhatványokra** ugorjunk fel, majd **visszafelé** lépkedve töltsük ki a hézagokat. Jelölje $A_n$ az $n$ számra vonatkozó állítást. Három lépést igazolunk:

- **I.** $A_2$ igaz.
- **II.** $A_{2^k} \implies A_{2^{k+1}}$ (ebből $A_n$ igaz minden $n = 2^k$ alakú számra).
- **III.** $A_n$ és $l < n$ esetén $A_l$ igaz (ebből minden $n \in \mathbb{N}$-re adódik az állítás, hiszen minden szám alatta marad valamely kettőhatványnak).

**I. lépés: két szám esete.** Azt kell látnunk, hogy $\sqrt{ab} \le \frac{a+b}{2}$. Mindkét oldal nemnegatív, tehát négyzetre emelhetünk:
$$ab \le \frac{(a+b)^2}{4} = \frac{a^2 + 2ab + b^2}{4}.$$
Átrendezve
$$0 \le \frac{a^2 - 2ab + b^2}{4} = \frac{(a-b)^2}{4},$$
ami nyilvánvalóan igaz, és egyenlőség pontosan akkor van, ha $a = b$.

**II. lépés: ugrás a következő kettőhatványra.** Tegyük fel, hogy $A_{2^k}$ igaz. Osszuk a $2^{k+1}$ számot két egyenlő blokkra, és jelölje
$$\alpha = \sqrt[2^k]{a_1 \cdots a_{2^k}}, \qquad \beta = \sqrt[2^k]{a_{2^k+1} \cdots a_{2^{k+1}}}$$
a két blokk mértani közepét. Az indukciós feltevés szerint
$$\alpha \le \frac{a_1 + \dots + a_{2^k}}{2^k}, \qquad \beta \le \frac{a_{2^k+1} + \dots + a_{2^{k+1}}}{2^k},$$
mindkét helyen egyenlőséggel pontosan akkor, ha a megfelelő blokk elemei egyenlők. Most az összes szám mértani közepét a két blokk mértani közepéből rakjuk össze, és alkalmazzuk rájuk az I. lépést:
$$\sqrt[2^{k+1}]{a_1 \cdots a_{2^{k+1}}} = \sqrt{\alpha\beta} \le \frac{\alpha + \beta}{2} \le \frac{1}{2} \cdot \frac{a_1 + \dots + a_{2^k} + a_{2^k+1} + \dots + a_{2^{k+1}}}{2^k} = \frac{a_1 + \dots + a_{2^{k+1}}}{2^{k+1}}.$$
Egyenlőség csak akkor, ha $\alpha = \beta$ és a korábbi lépésekben is egyenlőség áll, azaz ha minden szám egyenlő.

**III. lépés: visszafelé lépés.** Legyen $l < n$, és tegyük fel, hogy $A_n$ igaz. Legyen
$$s = \frac{a_1 + \dots + a_l}{l}$$
az $l$ szám számtani közepe. A trükk: alkalmazzuk $A_n$-t az
$$a_1, \dots, a_l, \underbrace{s, s, \dots, s}_{n - l \ \text{darab}}$$
számokra, azaz töltsük fel a hiányzó helyeket magával a számtani középpel. Ekkor a jobb oldal számlálója
$$a_1 + \dots + a_l + (n-l)s = l\cdot s + (n-l)s = ns,$$
tehát
$$\sqrt[n]{a_1 \cdots a_l \cdot s^{\,n-l}} \le \frac{ns}{n} = s.$$
Emeljük mindkét oldalt az $n$-edik hatványra:
$$a_1 \cdots a_l \cdot s^{\,n-l} \le s^n \implies a_1 \cdots a_l \le \frac{s^n}{s^{\,n-l}} = s^l.$$
Végül vonjunk $l$-edik gyököt:
$$\sqrt[l]{a_1 \cdots a_l} \le s = \frac{a_1 + \dots + a_l}{l},$$
ami éppen $A_l$. Egyenlőség pontosan akkor, ha $a_1 = \dots = a_l = s$. $\blacksquare$

## 11. A harmonikus közép

A mértani és a harmonikus közép viszonya külön bizonyítás nélkül adódik: elég a számtani–mértani egyenlőtlenséget a **reciprokokra** alkalmazni.

**Tétel.** Pozitív $a_1, \dots, a_n$ számokra
$$\sqrt[n]{a_1 \cdots a_n} \ge \frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}.$$

*Bizonyítás.* Alkalmazzuk a számtani–mértani egyenlőtlenséget az $a_k' = \frac{1}{a_k}$ számokra:
$$\sqrt[n]{\frac{1}{a_1} \cdots \frac{1}{a_n}} \le \frac{\frac{1}{a_1} + \dots + \frac{1}{a_n}}{n}.$$
A bal oldal éppen $\frac{1}{\sqrt[n]{a_1 \cdots a_n}}$, azaz a mértani közép reciproka. Reciprokot véve (ami pozitív számok esetén megfordítja az egyenlőtlenséget):
$$\underbrace{\sqrt[n]{a_1 \cdots a_n}}_{m} \ge \underbrace{\frac{n}{\frac{1}{a_1} + \dots + \frac{1}{a_n}}}_{h}. \qquad \blacksquare$$

Vagyis a három közép sorrendje mindig $h \le m \le S$.

## 12. A Bernoulli-egyenlőtlenség

**Tétel (Bernoulli-egyenlőtlenség).** Ha $x \ge -1$, akkor minden $n = 1, 2, \dots$ esetén
$$(1+x)^n \ge 1 + nx.$$

*Bizonyítás (teljes indukcióval).*

**Kezdőlépés.** $n = 1$ esetén $(1+x)^1 = 1 + 1\cdot x$, tehát egyenlőség áll fenn.

**Indukciós lépés.** Tegyük fel, hogy az állítás igaz $n$-re. Ekkor
$$(1+x)^{n+1} = (1+x)(1+x)^n \ge (1+x)(1+nx),$$
ahol az egyenlőtlenséghez felhasználtuk az indukciós feltevést **és** azt, hogy $1 + x \ge 0$ — itt van szükség az $x \ge -1$ feltételre, hiszen negatív számmal szorozva megfordulna az egyenlőtlenség. Kibontva:
$$(1+x)(1+nx) = 1 + (n+1)x + nx^2 \ge 1 + (n+1)x,$$
mert $nx^2 \ge 0$. Ezzel az állítás $(n+1)$-re is igaz. $\blacksquare$

**Kiterjesztés racionális kitevőre.** Megmutatható (és később, a hatványozás tárgyalása után magától értetődővé válik), hogy ha $x \ge -1$ és $r \in \mathbb{Q}$, akkor
$$r < 1 \implies (1+x)^r \le 1 + rx, \qquad r > 1 \implies (1+x)^r \ge 1 + rx,$$
és mindkét esetben egyenlőség akkor és csak akkor, ha $x = 0$.

---
