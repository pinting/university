# Algebra és számelmélet – 10. feladatsor – megoldások

Alapfogalmak és tételek a feladatsorhoz:
- **Csoport:** egy $\langle G, \cdot \rangle$ struktúra, ahol a művelet asszociatív, van kétoldali egységelem ($e \in G$), és minden elemnek létezik kétoldali inverze. Ha a művelet kommutatív is, **Abel-csoportról** (vagy kommutatív csoportról) beszélünk.
- **Gyűrű:** egy $\langle R, +, \cdot \rangle$ struktúra, amelyre $\langle R, + \rangle$ Abel-csoport (nulleleme $0$, inverze $-a$), a szorzás asszociatív, és érvényes a kétoldali disztributivitás: $a(b + c) = ab + ac$ és $(a + b)c = ac + bc$. Ha a szorzás kommutatív, a gyűrű **kommutatív**; ha van szorzási egységelem ($1$), a gyűrű **egységelemes**.
- **Test:** olyan egységelemes, kommutatív gyűrű ($1 \ne 0$), amelyben minden nem nulla elemnek van multiplikatív inverze (azaz $R \setminus \{0\}$ a szorzásra Abel-csoportot alkot).
- **Nullosztó:** egy $R$ gyűrű $a \ne 0$ eleme bal oldali nullosztó, ha van olyan $b \ne 0$, hogy $ab = 0$. (Kommutatív gyűrűben a bal és jobb oldali nullosztó egybeesik.) Egy gyűrű **nullosztómentes**, ha két nem nulla elem szorzata sosem nulla.
- **Integritási tartomány:** kommutatív, egységelemes, nullosztómentes gyűrű ($1 \ne 0$). Minden test integritási tartomány.
- **Polinomgyűrű fokszámtétele:** Ha $R$ integritási tartomány, akkor nem nulla $f, g \in R[x]$ polinomokra $\deg(fg) = \deg(f) + \deg(g)$, és $R[x]$ is integritási tartomány.
- **Gyöktényező kiemelhetősége (Bézout tétele):** Ha $R$ kommutatív, egységelemes gyűrű és $c \in R$ az $f \in R[x]$ gyöke, akkor $x - c \mid f(x)$ az $R[x]$ gyűrűben. Integritási tartományban egy $n$-edfokú ($n \ge 0$) nem nulla polinomnak legfeljebb $n$ gyöke lehet.
- **Schönemann–Eisenstein-féle irreducibilitási kritérium:** Legyen $f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_1 x + a_0 \in \mathbb{Z}[x]$ ($n \ge 1$). Ha létezik olyan $p$ prímszám, amelyre:
  1. $p \nmid a_n$,
  2. $p \mid a_i$ minden $0 \le i \le n - 1$ esetén,
  3. $p^2 \nmid a_0$,
  akkor $f(x)$ irreducibilis a racionális számok $\mathbb{Q}$ teste felett (és ha primitív, akkor $\mathbb{Z}[x]$-ben is).

---

## 1. feladat (házi feladat)

Döntsük el, hogy az alábbi halmazok a megadott művelet(ek)re nézve csoportot, gyűrűt vagy testet alkotnak-e. Ha csoport, kommutatív-e?

(1) $(\mathbb{Z}, -)$ (az egész számok halmaza a kivonásra),

(2) $(\mathbb{R} \setminus \{0\}, \cdot)$ (a nemnulla valós számok a szorzásra),

(3) A $2 \times 2$-es valós mátrixok az összeadásra és a mátrixszorzásra nézve,

(4) A $K = \{a + b\sqrt{2} \mid a, b \in \mathbb{Q}\}$ halmaz a szokásos valós összeadásra és szorzásra nézve.

**Megoldás.**

**(1) $(\mathbb{Z}, -)$**

- **Csoportot alkot-e?** **Nem alkot csoportot.**
  - *Asszociativitás vizsgálata:* A kivonás nem asszociatív. Tetszőleges $a, b, c \in \mathbb{Z}$ esetén
    $$(a - b) - c = a - b - c, \qquad a - (b - c) = a - b + c.$$
    Konkrét ellenpélda: $(1 - 2) - 3 = -1 - 3 = -4$, míg $1 - (2 - 3) = 1 - (-1) = 2 \ne -4$.
  - *Egységelem vizsgálata:* Ha létezne olyan $e \in \mathbb{Z}$, hogy minden $a \in \mathbb{Z}$-re $a - e = a$, abból $e = 0$ következne. Azonban bal oldali egységelemnek is kellene lennie: $0 - a = -a \ne a$ (ha $a \ne 0$). Tehát kétoldali egységelem sem létezik.
- Mivel csak egy művelet adott, és az nem asszociatív, sem csoportot, sem gyűrűt, sem testet **nem alkot**.

**(2) $(\mathbb{R} \setminus \{0\}, \cdot)$**

- **Csoportot alkot-e?** **Igen, kommutatív (Abel-) csoportot alkot.**
  - *Zártság:* Két nem nulla valós szám szorzata nem nulla valós szám: ha $a, b \ne 0$, akkor $ab \ne 0$.
  - *Asszociativitás:* A valós számok szokásos szorzása asszociatív: $(ab)c = a(bc)$.
  - *Egységelem:* Az $1 \in \mathbb{R} \setminus \{0\}$ semleges elem, hiszen $1 \cdot a = a \cdot 1 = a$ minden $a$-ra.
  - *Inverz elem:* Minden $a \in \mathbb{R} \setminus \{0\}$ esetén az $a^{-1} = \frac{1}{a} \in \mathbb{R} \setminus \{0\}$ kétoldali multiplikatív inverz: $a \cdot \frac{1}{a} = \frac{1}{a} \cdot a = 1$.
  - *Kommutativitás:* A valós szorzás kommutatív: $ab = ba$.
- *Gyűrű vagy test-e?* Definíció szerint a gyűrű és a test két műveletet (összeadást és szorzást) feltételez; itt csupán a szorzás volt megadva, így a struktúra az $\mathbb{R}$ valós test multiplikatív csoportja ($\mathbb{R}^\times$).

**(3) A $2 \times 2$-es valós mátrixok ($\mathbb{R}^{2 \times 2}, +, \cdot$)**

- **Gyűrűt alkot** (pontosabban: **egységelemes, nem kommutatív gyűrűt**).
  - *$(\mathbb{R}^{2 \times 2}, +)$ Abel-csoport:*
    - Zárt az összeadásra.
    - Az összeadás asszociatív és kommutatív.
    - A nullelem a $0 = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}$ zérusmátrix.
    - Minden $A$ mátrix additív inverze a $-A$ mátrix.
  - *A mátrixszorzás tulajdonságai:*
    - Zárt a szorzásra.
    - Asszociatív: $(AB)C = A(BC)$.
    - Mindkét oldalról disztributív az összeadásra nézve: $A(B + C) = AB + AC$ és $(A + B)C = AC + BC$.
    - Van multiplikatív egységelem: az $I_2 = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$ egységmátrix.
  - *Nem kommutatív:* Általában $AB \ne BA$. Például:
    $$A = \begin{pmatrix} 0 & 1 \\ 0 & 0 \end{pmatrix}, \quad B = \begin{pmatrix} 0 & 0 \\ 1 & 0 \end{pmatrix} \implies AB = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \quad BA = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}.$$
  - *Nem test:* Nem kommutatív, továbbá nem minden nem nulla elemnek van inverze (például a $\det A = 0$ determinánsú nemnulla mátrixok nem invertálhatók, és nullosztók is léteznek, mint a fenti $A^2 = 0$).

**(4) $K = \{a + b\sqrt{2} \mid a, b \in \mathbb{Q}\}$ a szokásos valós összeadásra és szorzásra nézve**

- **Testet alkot** (ez a racionális számok testének $\mathbb{Q}(\sqrt{2})$ másodfokú algebrai testbővítése).
  - *Részgyűrű-tulajdonságok:* Mivel $K \subset \mathbb{R}$, a műveletek asszociativitása, kommutativitása és disztributivitása automatikusan öröklődik $\mathbb{R}$-ből.
  - *Zártság összeadásra és kivonásra:*
    $$(a + b\sqrt{2}) \pm (c + d\sqrt{2}) = (a \pm c) + (b \pm d)\sqrt{2} \in K,$$
    mivel $a \pm c \in \mathbb{Q}$ és $b \pm d \in \mathbb{Q}$.
    A nullelem $0 = 0 + 0\sqrt{2} \in K$.
  - *Zártság szorzásra:*
    $$(a + b\sqrt{2})(c + d\sqrt{2}) = (ac + 2bd) + (ad + bc)\sqrt{2} \in K,$$
    mivel $ac + 2bd \in \mathbb{Q}$ és $ad + bc \in \mathbb{Q}$.
    Az egységelem $1 = 1 + 0\sqrt{2} \in K$.
  - *Multiplikatív inverz létezése:*
    Legyen $x = a + b\sqrt{2} \in K \setminus \{0\}$.
    Mivel $\sqrt{2}$ irracionális, $a + b\sqrt{2} = 0 \iff a = b = 0$.
    Ezért $a^2 - 2b^2 \ne 0$ (hiszen ha $a^2 - 2b^2 = 0$ lenne, akkor $b \ne 0$ esetén $\sqrt{2} = |a/b| \in \mathbb{Q}$ lenne, ami ellentmondás; $b = 0$ esetén pedig $a = 0$ adódna).
    Gyöktelenítve a nevezőt:
    $$\frac{1}{a + b\sqrt{2}} = \frac{a - b\sqrt{2}}{(a + b\sqrt{2})(a - b\sqrt{2})} = \frac{a}{a^2 - 2b^2} - \frac{b}{a^2 - 2b^2}\sqrt{2}.$$
    Itt $\frac{a}{a^2 - 2b^2} \in \mathbb{Q}$ és $-\frac{b}{a^2 - 2b^2} \in \mathbb{Q}$, tehát $x^{-1} \in K$.
  - Minden nem nulla elem invertálható, a szorzás kommutatív és $1 \ne 0$, így $K$ **test**. (Mivel test, egyben integritási tartomány, kommutatív egységelemes gyűrű, az összeadásra nézve Abel-csoport, és a nemnulla elemei a szorzásra nézve Abel-csoportot alkotnak.)

---

## 2. feladat

Keressük meg a $\mathbb{Z}_{12}$ és a $\mathbb{Z}_{15}$ gyűrűkben az összes nullosztót és az összes invertálható elemet. Létezik-e olyan másodfokú polinom $\mathbb{Z}_{15}[x]$-ben, amelynek 2-nél több gyöke van?

**Megoldás.**

Egy tetszőleges $\mathbb{Z}_m$ maradékosztály-gyűrűben egy $a \in \mathbb{Z}_m$ elemre:
- **Invertálható**, ha létezik $x \in \mathbb{Z}_m$, hogy $ax \equiv 1 \pmod m$. Ez pontosan akkor teljesül, ha $\operatorname{lnko}(a, m) = 1$. Az invertálható elemek száma $\varphi(m)$.
- **Nullosztó** (nem nulla nullosztó): olyan $a \ne 0$ elem, amelyhez létezik $b \ne 0$, hogy $ab \equiv 0 \pmod m$. Ez pontosan akkor teljesül, ha $\operatorname{lnko}(a, m) > 1$ és $a \ne 0$.

**(a) A $\mathbb{Z}_{12}$ gyűrű vizsgálata ($\mathbb{Z}_{12} = \{0, 1, 2, \dots, 11\}$)**

- **Invertálható elemek:** azok az elemek, amelyek relatív prímek 12-höz ($\varphi(12) = 12 \cdot (1 - 1/2)(1 - 1/3) = 4$ darab):
  $$\{1, 5, 7, 11\}.$$
  *Inverzek:*
  - $1 \cdot 1 = 1 \implies 1^{-1} = 1$
  - $5 \cdot 5 = 25 \equiv 1 \pmod{12} \implies 5^{-1} = 5$
  - $7 \cdot 7 = 49 \equiv 1 \pmod{12} \implies 7^{-1} = 7$
  - $11 \cdot 11 = (-1)^2 = 1 \pmod{12} \implies 11^{-1} = 11$.
  (A $\mathbb{Z}_{12}^\times$ egységcsoport izomorf a $\mathbb{Z}_2 \times \mathbb{Z}_2$ Klein-féle négyescsoporttal.)
- **Nullosztók:** a 12-höz nem relatív prím nemnulla elemek:
  $$\{2, 3, 4, 6, 8, 9, 10\}.$$
  *Konkrét párok:*
  - $2 \cdot 6 = 12 \equiv 0$
  - $3 \cdot 4 = 12 \equiv 0$
  - $4 \cdot 3 = 12 \equiv 0$
  - $6 \cdot 2 = 12 \equiv 0$
  - $8 \cdot 3 = 24 \equiv 0$
  - $9 \cdot 4 = 36 \equiv 0$
  - $10 \cdot 6 = 60 \equiv 0$.
- A $0$ elem $0 \cdot b = 0$ minden $b$-re, de a standard definíció szerint a nullosztók nem nulla elemek.

**(b) A $\mathbb{Z}_{15}$ gyűrű vizsgálata ($\mathbb{Z}_{15} = \{0, 1, 2, \dots, 14\}$)**

- **Invertálható elemek:** a 15-höz relatív prím elemek ($\varphi(15) = (3 - 1)(5 - 1) = 8$ darab):
  $$\{1, 2, 4, 7, 8, 11, 13, 14\}.$$
  *Inverzek:*
  - $1^{-1} = 1$
  - $2 \cdot 8 = 16 \equiv 1 \implies 2^{-1} = 8, \ 8^{-1} = 2$
  - $4 \cdot 4 = 16 \equiv 1 \implies 4^{-1} = 4$
  - $7 \cdot 13 = 91 = 6 \cdot 15 + 1 \equiv 1 \implies 7^{-1} = 13, \ 13^{-1} = 7$
  - $11 \cdot 11 = 121 = 8 \cdot 15 + 1 \equiv 1 \implies 11^{-1} = 11$
  - $14 \cdot 14 = (-1)^2 \equiv 1 \implies 14^{-1} = 14$.
- **Nullosztók:** a 15-höz nem relatív prím nemnulla elemek:
  $$\{3, 5, 6, 9, 10, 12\}.$$
  *Konkrét párok:*
  - A 3 többszörösei az 5-tel szorozva adnak nullát: $3 \cdot 5 = 15 \equiv 0$, $6 \cdot 5 = 30 \equiv 0$, $9 \cdot 5 = 45 \equiv 0$, $12 \cdot 5 = 60 \equiv 0$.
  - Az 5 többszörösei a 3-mal szorozva adnak nullát: $5 \cdot 3 = 15 \equiv 0$, $10 \cdot 3 = 30 \equiv 0$.

**(c) Létezik-e olyan másodfokú polinom $\mathbb{Z}_{15}[x]$-ben, amelynek 2-nél több gyöke van?**

**Igen, létezik.**

*Példa:* Tekintsük az
$$f(x) = x^2 - 1$$
polinomot $\mathbb{Z}_{15}[x]$-ben.
Egy $c \in \mathbb{Z}_{15}$ pontosan akkor gyöke $f$-nek, ha $c^2 \equiv 1 \pmod{15}$.
A kínai maradéktétel szerint a $c^2 \equiv 1 \pmod{15}$ kongruencia ekvivalens a következő rendszerrel:
$$\begin{cases} c^2 \equiv 1 \pmod 3, \\ c^2 \equiv 1 \pmod 5. \end{cases}$$
Mivel $\mathbb{Z}_3$ és $\mathbb{Z}_5$ testek, a megoldások:
- Modulo 3: $c \equiv \pm 1 \pmod 3$, azaz $c \in \{1, 2\}$.
- Modulo 5: $c \equiv \pm 1 \pmod 5$, azaz $c \in \{1, 4\}$.

A kínai maradéktétel $2 \times 2 = 4$ darab különböző megoldást ad $\mathbb{Z}_{15}$-ben:
1. $c \equiv 1 \pmod 3$ és $c \equiv 1 \pmod 5 \implies c = 1$. ($1^2 - 1 = 0$)
2. $c \equiv -1 \pmod 3$ és $c \equiv -1 \pmod 5 \implies c = 14$. ($14^2 - 1 = 195 = 15 \cdot 13 \equiv 0$)
3. $c \equiv 1 \pmod 3$ és $c \equiv -1 \pmod 5 \implies c = 4$. ($4^2 - 1 = 15 \equiv 0$)
4. $c \equiv -1 \pmod 3$ és $c \equiv 1 \pmod 5 \implies c = 11$. ($11^2 - 1 = 120 = 15 \cdot 8 \equiv 0$)

Az $f(x) = x^2 - 1$ másodfokú polinomnak tehát **4 különböző gyöke van $\mathbb{Z}_{15}$-ben: $\{1, 4, 11, 14\}$**. Ez szigorúan nagyobb, mint 2.

(Egy másik egyszerű példa: $g(x) = x(x - 1) = x^2 - x$, amelynek gyökei $c \in \{0, 1, 6, 10\}$, szintén 4 darab gyök.)

::: elmelet
**Elméleti háttér.** Az a tétel, miszerint egy $n$-edfokú polinomnak legfeljebb $n$ gyöke lehet, csak **integritási tartományok** (nullosztómentes gyűrűk, így különösen testek) felett érvényes. Ha a gyűrű nem nullosztómentes, akkor egy szorzat $g(x)h(x) = 0$ úgy is teljesülhet, hogy sem $g(x)$, sem $h(x)$ nem nulla, csupán értékeik nullosztópárt alkotnak (például $(4 - 1)(4 + 1) = 3 \cdot 5 = 15 \equiv 0$).
:::

---

## 3. feladat

Adjunk meg olyan elsőfokú $f, g \in \mathbb{Z}_{10}[x]$ polinomokat, amelyek szorzata legfeljebb elsőfokú! Milyen esetben fordulhat elő általánosan egy $R$ gyűrű felett, hogy $\deg(fg) < \deg(f) + \deg(g)$?

**Megoldás.**

**(a) Konkrét példa $\mathbb{Z}_{10}[x]$-ben:**

Legyen:
$$f(x) = 2x + 1, \qquad g(x) = 5x + 1.$$
Mindkét polinom elsőfokú ($\deg f = 1$ és $\deg g = 1$), mivel a főegyütthatóik $2 \ne 0$ és $5 \ne 0$ a $\mathbb{Z}_{10}$ gyűrűben.
Szorzatuk:
$$f(x)g(x) = (2x + 1)(5x + 1) = 10x^2 + 2x + 5x + 1 \equiv 7x + 1 \pmod{10}.$$
A szorzatpolinom $7x + 1$, amelynek foka **1**, tehát legfeljebb elsőfokú:
$$\deg(fg) = 1 < 1 + 1 = \deg(f) + \deg(g).$$

(Egy másik példa: $f(x) = 2x$ és $g(x) = 5x$, ekkor $f(x)g(x) = 10x^2 \equiv 0$, a nullapolinom foka definíció szerint $-\infty \le 1$.)

**(b) Általános feltétel egy tetszőleges $R$ gyűrű felett:**

Legyenek $f, g \in R[x]$ nem nulla polinomok, amelyek foka $\deg f = n \ge 0$ és $\deg g = m \ge 0$. Írjuk fel őket az együtthatóikkal:
$$f(x) = a_n x^n + a_{n-1} x^{n-1} + \dots + a_0, \qquad (a_n \ne 0),$$
$$g(x) = b_m x^m + b_{m-1} x^{m-1} + \dots + b_0, \qquad (b_m \ne 0).$$
A polinomok szorzásának definíciója szerint az $fg$ szorzat legmagasabb fokú lehetséges tagja:
$$fg(x) = (a_n b_m) x^{n+m} + \sum_{k=0}^{n+m-1} c_k x^k.$$
A szorzat foka pontosan akkor lesz szigorúan kisebb, mint $n + m = \deg(f) + \deg(g)$, ha az $x^{n+m}$ tag eltűnik, azaz:
$$a_n b_m = 0.$$
Mivel feltevésünk szerint $a_n \ne 0$ és $b_m \ne 0$, ez a feltétel azt jelenti, hogy:
- Az $R$ gyűrű **nem nullosztómentes**, és
- a két polinom főegyütthatói, $a_n$ és $b_m$, olyan **nullosztók** $R$-ben, amelyek szorzata nulla ($a_n b_m = 0$).

Összefoglalva: $\deg(fg) < \deg(f) + \deg(g)$ **pontosan akkor fordulhat elő, ha a két polinom főegyütthatójának szorzata a gyűrű nulleleme: $a_n b_m = 0$**. Nullosztómentes gyűrűben (integritási tartományban, testben) ez soha nem fordulhat elő, ott mindig $\deg(fg) = \deg(f) + \deg(g)$.

---

## 4. feladat

Legyen $R$ egy kommutatív, egységelemes gyűrű. Igazoljuk, hogy az $R[x]$ polinomgyűrű pontosan akkor nullosztómentes, ha maga az $R$ gyűrű is nullosztómentes.

**Bizonyítás.**

A feladat egy ekvivalenciát fogalmaz meg, így mindkét irányt bizonyítanunk kell.

**1. Szükségesség ($\implies$):**
Tegyük fel, hogy az $R[x]$ polinomgyűrű nullosztómentes.
Az $R$ gyűrű azonosítható az $R[x]$ gyűrű nulladfokú (konstans) polinomjaiból és a nullapolinomból álló részgyűrűjével:
$$R \cong \{ c \in R[x] \mid c \text{ konstans polinom} \}.$$
Tegyük fel, hogy $a, b \in R$ elemekre $ab = 0$.
Tekintsük $a$-t és $b$-t mint konstans polinomokat: $f(x) = a \in R[x]$ és $g(x) = b \in R[x]$.
Ekkor a szorzatpolinom $(fg)(x) = ab = 0$, ami az $R[x]$ nullapolinomja.
Mivel $R[x]$ a feltétel szerint nullosztómentes, két polinom szorzata csak úgy lehet a nullapolinom, ha legalább az egyik tényező a nullapolinom:
$$f = 0 \quad \text{vagy} \quad g = 0 \implies a = 0 \quad \text{vagy} \quad b = 0.$$
Tehát az $R$ gyűrűben sincsenek nullosztók: $R$ nullosztómentes.

**2. Elégségesség ($\impliedby$):**
Tegyük fel, hogy az $R$ gyűrű nullosztómentes.
Legyenek $f, g \in R[x]$ nem nulla polinomok. Meg kell mutatnunk, hogy a szorzatuk sem lehet a nullapolinom ($fg \ne 0$).
Mivel $f \ne 0$ és $g \ne 0$, mindkettőnek létezik foka: legyen $\deg f = n \ge 0$ és $\deg g = m \ge 0$.
A polinomokat írjuk fel az együtthatóikkal:
$$f(x) = \sum_{i=0}^n a_i x^i, \quad a_n \ne 0, \qquad g(x) = \sum_{j=0}^m b_j x^j, \quad b_m \ne 0.$$
A két polinom szorzata:
$$fg(x) = \sum_{k=0}^{n+m} c_k x^k, \quad \text{ahol} \quad c_k = \sum_{i+j=k} a_i b_j.$$
A legmagasabb fokú tag, azaz $x^{n+m}$ együtthatója:
$$c_{n+m} = a_n b_m.$$
Mivel $R$ nullosztómentes, és $a_n \ne 0, b_m \ne 0$, ezért
$$a_n b_m \ne 0.$$
Ez azt jelenti, hogy az $fg$ polinomnak legalább egy együtthatója (nevezetesen $c_{n+m}$) nem nulla, így $fg \ne 0$, sőt $\deg(fg) = n + m$.
Tehát $R[x]$-ben nem létezik két nem nulla polinom, amelynek szorzata nulla, vagyis $R[x]$ nullosztómentes. $\blacksquare$

---

## 5. feladat

Bontsuk fel a $10(x^2 - 3)(x^2 + 4)$ polinomot $\mathbb{C}, \mathbb{R}, \mathbb{Q}$ és $\mathbb{Z}$ felett felbonthatatlanok (irreducibilisek) szorzatára.

**Megoldás.**

Jelöljük a vizsgált polinomot $P(x)$-szel:
$$P(x) = 10(x^2 - 3)(x^2 + 4).$$

**(a) $\mathbb{C}$ felett:**
$\mathbb{C}$ algebrailag zárt test, így $\mathbb{C}[x]$-ben a felbonthatatlan elemek pontosan az elsőfokú polinomok. A nemnulla konstansok a testben invertálhatók (egységek).
- Az $x^2 - 3 = 0$ egyenlet gyökei: $x = \pm \sqrt{3}$. Tehát $x^2 - 3 = (x - \sqrt{3})(x + \sqrt{3})$.
- Az $x^2 + 4 = 0$ egyenlet gyökei: $x = \pm 2i$. Tehát $x^2 + 4 = (x - 2i)(x + 2i)$.
A felbontás $\mathbb{C}$ felett:
$$P(x) = 10(x - \sqrt{3})(x + \sqrt{3})(x - 2i)(x + 2i).$$
(Minden tényező elsőfokú, így irreducibilis.)

**(b) $\mathbb{R}$ felett:**
$\mathbb{R}[x]$-ben a felbonthatatlan elemek:
1. az összes elsőfokú polinom,
2. a negatív diszkriminánsú ($D < 0$) másodfokú polinomok.
- $x^2 - 3 = (x - \sqrt{3})(x + \sqrt{3})$, mindkét tényező valós elsőfokú polinom ($\pm\sqrt{3} \in \mathbb{R}$).
- $x^2 + 4$ valós együtthatós másodfokú polinom, diszkriminánsa $D = 0^2 - 4 \cdot 1 \cdot 4 = -16 < 0$, nincsenek valós gyökei, így $\mathbb{R}$ felett irreducibilis.
- A $10 \in \mathbb{R}^\times$ invertálható konstans (egység).
A felbontás $\mathbb{R}$ felett:
$$P(x) = 10(x - \sqrt{3})(x + \sqrt{3})(x^2 + 4).$$

**(c) $\mathbb{Q}$ felett:**
$\mathbb{Q}$ felett a felbonthatatlan tényezők kereséséhez:
- Az $x^2 - 3$ másodfokú polinom gyökei $\pm\sqrt{3} \notin \mathbb{Q}$. Mivel másodfokú és nincs racionális gyöke (6. feladat), $x^2 - 3$ irreducibilis $\mathbb{Q}$ felett.
- Az $x^2 + 4$ másodfokú polinom gyökei $\pm 2i \notin \mathbb{Q}$. Nincs racionális gyöke, így $x^2 + 4$ is irreducibilis $\mathbb{Q}$ felett.
- A $10 \in \mathbb{Q}^\times$ invertálható skalár (egység).
A felbontás $\mathbb{Q}$ felett:
$$P(x) = 10(x^2 - 3)(x^2 + 4).$$

**(d) $\mathbb{Z}$ felett:**
A $\mathbb{Z}$ gyűrű **nem test**, az egységei csupán az $\{1, -1\}$ számok. Ezért $\mathbb{Z}[x]$-ben az egész együtthatós konstansokat is fel kell bontani $\mathbb{Z}$-beli irreducibilis elemek (prímszámok) szorzatára:
$$10 = 2 \cdot 5.$$
A polinomtényezőkre:
- $x^2 - 3$ és $x^2 + 4$ főegyütthatója 1, együtthatóik relatív prímek (primitív polinomok).
- Mivel primitívek és $\mathbb{Q}$ felett irreducibilisek, a Gauss-lemma következményeként irreducibilisek a $\mathbb{Z}[x]$ gyűrűben is.
A felbontás $\mathbb{Z}$ felett (felbonthatatlan egész számok és primitív irreducibilis polinomok szorzata):
$$P(x) = 2 \cdot 5 \cdot (x^2 - 3)(x^2 + 4).$$
(A felbontás tényezői a $2, 5 \in \mathbb{Z}[x]$ nulladfokú, valamint az $x^2 - 3, x^2 + 4 \in \mathbb{Z}[x]$ másodfokú irreducibilis elemek; egységszerestől, azaz előjeltől eltekintve egyértelműen.)

---

## 6. feladat

Legyen $K$ egy test, és $f \in K[x]$ egy másod- vagy harmadfokú polinom. Bizonyítsuk be, hogy $f$ pontosan akkor irreducibilis $K$ felett, ha nincs gyöke a $K$ testben. Mutassunk példát arra, hogy negyedfokú polinomokra ez az állítás már nem feltétlenül igaz.

**Bizonyítás.**

Legyen $\deg f \in \{2, 3\}$. Az állítás két irányát külön látjuk be:

**1. Ha $f$-nek van gyöke $K$-ban, akkor felbontható (nem irreducibilis):**
Tegyük fel, hogy létezik olyan $c \in K$, amelyre $f(c) = 0$.
A gyöktényező kiemelhetőségének tétele (Bézout tétele) szerint létezik olyan $g \in K[x]$ polinom, hogy
$$f(x) = (x - c)g(x).$$
Mivel $K$ test, a fokszámtétel szerint:
$$\deg f = \deg(x - c) + \deg g = 1 + \deg g \implies \deg g = \deg f - 1.$$
Mivel $\deg f \in \{2, 3\}$, a $g$ polinom foka $\deg g \in \{1, 2\}$.
Mivel mindkét tényező ($x - c$ és $g$) foka legalább 1, egyikük sem invertálható $K[x]$-ben (a test feletti polinomgyűrű egységei pontosan a nem nulla konstansok, $K^\times$).
Ezért $f$ felbomlik két alacsonyabb fokú, nem egység polinom szorzatára, tehát **$f$ felbontható (nem irreducibilis)** $K$ felett.
Kontrapozícióval: ha $f$ irreducibilis $K$ felett, akkor nincs gyöke $K$-ban.

**2. Ha $f$ felbontható, akkor van gyöke $K$-ban:**
Tegyük fel, hogy $f$ nem irreducibilis $K$ felett. Ekkor léteznek olyan $g, h \in K[x]$ nem konstans polinomok, hogy
$$f(x) = g(x)h(x), \quad \text{ahol} \quad \deg g \ge 1, \ \deg h \ge 1.$$
A fokszámok összege:
$$\deg g + \deg h = \deg f \in \{2, 3\}.$$
- Ha $\deg f = 2$, akkor $\deg g + \deg h = 2 \implies \deg g = 1$ és $\deg h = 1$.
- Ha $\deg f = 3$, akkor $\deg g + \deg h = 3 \implies$ a felbontásban az egyik tényező foka 1, a másiké 2.
Mindkét esetben a tényezők között **biztosan szerepel legalább egy elsőfokú polinom**.
Legyen ez mondjuk $g(x) = ax + b$, ahol $a, b \in K$ és $a \ne 0$.
Mivel $K$ test, az $a \ne 0$ elemnek létezik $a^{-1} \in K$ inverze. Ekkor a
$$c = -a^{-1}b \in K$$
elem a $g$ polinom gyöke: $g(c) = a(-a^{-1}b) + b = -b + b = 0$.
Ekkor $f(c) = g(c)h(c) = 0 \cdot h(c) = 0$, tehát $c \in K$ az $f$ polinomnak is gyöke.
Kontrapozícióval: ha $f$-nek nincs gyöke $K$-ban, akkor $f$ irreducibilis. $\blacksquare$

**(b) Negyedfokú ellenpélda:**

Tekintsük a következő negyedfokú polinomot a valós számok $\mathbb{R}$ teste felett:
$$f(x) = (x^2 + 1)^2 = x^4 + 2x^2 + 1 \in \mathbb{R}[x].$$
- **Nincs valós gyöke:** Minden $x \in \mathbb{R}$ esetén $x^2 \ge 0$, így $x^2 + 1 \ge 1$, tehát $f(x) = (x^2 + 1)^2 \ge 1 > 0$. Nincs olyan $c \in \mathbb{R}$, amelyre $f(c) = 0$.
- **Mégsem irreducibilis:** Maga a konstrukció mutatja, hogy $f(x) = (x^2 + 1)(x^2 + 1)$ két másodfokú valós polinom szorzata, ahol egyik tényező sem egység $\mathbb{R}[x]$-ben. Tehát $f$ felbontható $\mathbb{R}$ felett.

Ugyanez a példa $\mathbb{Q}$ felett is működik, vagy vehetjük $\mathbb{Q}$ felett az
$$f(x) = (x^2 - 2)(x^2 - 3) = x^4 - 5x^2 + 6 \in \mathbb{Q}[x]$$
polinomot, amelynek gyökei $\pm\sqrt{2}, \pm\sqrt{3} \notin \mathbb{Q}$, tehát nincs racionális gyöke, mégis két másodfokú racionális polinom szorzata.

---

## 7. feladat

Hány olyan $f$ legfeljebb harmadfokú polinom van $\mathbb{Z}_3[x]$-ben, amely minden $c \in \mathbb{Z}_3$ esetén $f(c) = c$?

**Megoldás.**

A $\mathbb{Z}_3 = \{0, 1, 2\}$ három elemű test felett keresünk olyan $f(x) \in \mathbb{Z}_3[x]$ polinomokat, amelyekre $\deg f \le 3$, és
$$f(0) = 0, \qquad f(1) = 1, \qquad f(2) = 2.$$
Tekintsük a
$$g(x) = f(x) - x$$
polinomot. Mivel $\deg f \le 3$, a $g(x)$ fokszáma is legfeljebb 3 ($\deg g \le 3$).
A feltétel pontosan azt jelenti, hogy a $\mathbb{Z}_3$ test minden eleme gyöke a $g(x)$ polinomnak:
$$g(0) = f(0) - 0 = 0, \qquad g(1) = f(1) - 1 = 0, \qquad g(2) = f(2) - 2 = 0.$$
Mivel $\mathbb{Z}_3$ test, a gyöktényezők kiemelésének tétele szerint $g(x)$ osztható a különböző gyökökhöz tartozó gyöktényezők szorzatával:
$$(x - 0)(x - 1)(x - 2) \mid g(x).$$
Végezzük el a beszorzást $\mathbb{Z}_3$-ban (ahol $-2 \equiv 1$):
$$(x - 0)(x - 1)(x - 2) = x(x - 1)(x + 1) = x(x^2 - 1) = x^3 - x.$$
(Ez összhangban van a kis Fermat-tétellel is: minden $c \in \mathbb{Z}_3$-ra $c^3 \equiv c \pmod 3$, azaz $c^3 - c = 0$.)

Tehát az $(x^3 - x)$ harmadfokú polinom osztója a legfeljebb harmadfokú $g(x)$ polinomnak.
Ezért $g(x)$ csak az $(x^3 - x)$ konstansszorosa lehet:
$$g(x) = k \cdot (x^3 - x), \qquad \text{ahol } k \in \mathbb{Z}_3.$$
Ebből $f(x)$ kifejezhető:
$$f(x) = x + g(x) = x + k(x^3 - x) = k x^3 + (1 - k)x.$$
Mivel a $\mathbb{Z}_3$ testnek pontosan 3 eleme van, a $k \in \{0, 1, 2\}$ paraméternek 3 lehetséges értéke van, és mind a háromhoz különböző, legfeljebb harmadfokú polinom tartozik:

1. $k = 0$:
   $$f_1(x) = x$$
2. $k = 1$:
   $$f_2(x) = x^3$$
3. $k = 2$:
   $$f_3(x) = 2x^3 + (1 - 2)x = 2x^3 - x \equiv 2x^3 + 2x \pmod 3.$$

*Ellenőrzés behelyettesítéssel:*
- $f_1(c) = c$ nyilvánvalóan teljesül minden $c$-re.
- $f_2(0) = 0$, $f_2(1) = 1^3 = 1$, $f_2(2) = 2^3 = 8 \equiv 2 \pmod 3$.
- $f_3(0) = 0$, $f_3(1) = 2(1) + 2(1) = 4 \equiv 1 \pmod 3$, $f_3(2) = 2(8) + 2(2) = 16 + 4 = 20 \equiv 2 \pmod 3$.

Tehát **pontosan 3** ilyen polinom létezik.

---

## 8. feladat

Legyen $R$ gyűrű, $r, s \in R$, és $m, n$ egész számok. Igazoljuk az alábbiakat:

(1) $(-n)r$ az $nr$ ellentettje,

(2) $mr + nr = (m + n)r$,

(3) $n(mr) = (nm)r$,

(4) $n(r + s) = nr + ns$,

(5) $n(rs) = (nr)s = r(ns)$.

**Bizonyítás.**

*Definíció:* Egy gyűrű elemének egész számmal való szorzását az $\langle R, + \rangle$ additív csoportban értelmezzük:
- $0 \cdot r = 0_R$ (ahol $0_R$ az $R$ nulleleme),
- ha $n > 0$, akkor $nr = \underbrace{r + r + \dots + r}_{n \text{ db}}$,
- ha $n < 0$, akkor $nr = -((-n)r) = \underbrace{(-r) + (-r) + \dots + (-r)}_{|n| \text{ db}}$.

**(1) $(-n)r$ az $nr$ ellentettje, azaz $(-n)r = -(nr)$:**

- Ha $n = 0$: $(-0)r = 0r = 0_R$, és $-(0r) = -0_R = 0_R$.
- Ha $n > 0$: a definíció szerint $(-n)r = -(nr)$.
- Ha $n < 0$: legyen $n = -k$, ahol $k > 0$. Ekkor $-n = k > 0$.
  A definíció szerint $nr = (-k)r = -(kr)$, így az ellentettjének ellentettje:
  $$-(nr) = -(-(kr)) = kr = (-n)r.$$
Tehát minden $n \in \mathbb{Z}$ esetén $(-n)r = -(nr)$.

**(2) $mr + nr = (m + n)r$:**

Az $\langle R, + \rangle$ Abel-csoport, az összeadás kommutatív és asszociatív.
- Ha $m, n \ge 0$: $m$ darab $r$ és $n$ darab $r$ összege az asszociativitás miatt $(m + n)$ darab $r$ összege, ami $(m + n)r$.
- Ha $m, n \le 0$: legyen $m = -k, n = -\ell$ ($k, \ell \ge 0$). Ekkor
  $$mr + nr = -(kr) + (-(\ell r)) = -((k + \ell)r) = (-(k + \ell))r = (m + n)r.$$
- Ha különböző előjelűek, tegyük fel, hogy $m \ge 0$ és $n = -k \le 0$.
  - Ha $m \ge k$: az $m$ darab $r$-ből levonva $k$ darab $r$-et, a kommutativitás és az $r + (-r) = 0_R$ miatt $m - k$ darab $r$ marad:
    $$mr + nr = mr - kr = (m - k)r = (m + n)r.$$
  - Ha $m < k$: hasonlóan $-(k - m)r = (m - k)r = (m + n)r$.
Az azonosság tehát minden $m, n \in \mathbb{Z}$ esetén érvényes.

**(3) $n(mr) = (nm)r$:**

- Ha $n \ge 0$, bizonyítsunk $n$ szerinti teljes indukcióval:
  - Bázis: $n = 0$: $0(mr) = 0_R = (0 \cdot m)r$.
  - Indukciós lépés: tegyük fel, hogy $n(mr) = (nm)r$. Ekkor a (2) azonosság felhasználásával:
    $$(n + 1)(mr) = n(mr) + mr = (nm)r + 1(mr) = (nm + m)r = ((n + 1)m)r.$$
- Ha $n < 0$, legyen $n = -k$ ($k > 0$). Az (1) pont és az előző eset alapján:
  $$n(mr) = (-k)(mr) = -(k(mr)) = -((km)r) = (-(km))r = ((-k)m)r = (nm)r.$$
Így az állítás minden $n \in \mathbb{Z}$-re igaz.

**(4) $n(r + s) = nr + ns$:**

- Ha $n = 0$: $0(r + s) = 0_R = 0r + 0s$.
- Ha $n > 0$, indukció $n$-re:
  - $n = 1$: $1(r + s) = r + s = 1r + 1s$.
  - Lépés: $(n + 1)(r + s) = n(r + s) + (r + s) = (nr + ns) + (r + s)$.
    Mivel $\langle R, + \rangle$ Abel-csoport, a tagok átrendezhetők:
    $$(nr + r) + (ns + s) = (n + 1)r + (n + 1)s.$$
- Ha $n < 0$, legyen $n = -k$ ($k > 0$). Felhasználva az (1) pontot és az Abel-csoportbeli $-(a + b) = -a - b$ azonosságot:
  $$n(r + s) = -(k(r + s)) = -(kr + ks) = -(kr) + (-(ks)) = nr + ns.$$

**(5) $n(rs) = (nr)s = r(ns)$:**

- Ha $n = 0$: $0(rs) = 0_R$. Másrészt $(0r)s = 0_R \cdot s = 0_R$ és $r(0s) = r \cdot 0_R = 0_R$ (a gyűrűben a nullával való szorzás mindig nullát ad).
- Ha $n > 0$, indukció $n$-re:
  - $n = 1$: $1(rs) = rs = (1r)s = r(1s)$.
  - Lépés: tegyük fel, hogy $n(rs) = (nr)s = r(ns)$. Ekkor:
    $$(n + 1)(rs) = n(rs) + rs = (nr)s + rs = (nr + r)s = ((n + 1)r)s,$$
    ahol felhasználtuk a gyűrűbeli jobboldali disztributivitást.
    Hasonlóan a baloldali disztributivitással:
    $$(n + 1)(rs) = n(rs) + rs = r(ns) + rs = r(ns + s) = r((n + 1)s).$$
- Ha $n < 0$, legyen $n = -k$ ($k > 0$). Bármely gyűrűben $(-a)b = -(ab) = a(-b)$. Így:
  $$n(rs) = -(k(rs)) = -((kr)s) = (-(kr))s = (nr)s,$$
  és
  $$n(rs) = -(k(rs)) = -(r(ks)) = r(-(ks)) = r(ns).$$
Ezzel mind az öt azonosságot igazoltuk. $\blacksquare$

---

## 9. feladat

Legyen $\mathcal{A}$ a számelméleti függvények halmaza, azaz az $f \colon \mathbb{N}^+ \to \mathbb{C}$ függvényeké. Definiáljuk ezen a halmazon az összeadást tagonként, a szorzást pedig a Dirichlet-konvolúcióval:
$$(f * g)(n) = \sum_{d \mid n} f(d)g\left(\frac{n}{d}\right).$$
Bizonyítsuk be, hogy az $(\mathcal{A}, +, *)$ egy kommutatív, egységelemes gyűrű. Mi lesz a szorzásra vonatkozó egységelem?

**Bizonyítás.**

**(a) $(\mathcal{A}, +)$ Abel-csoport:**
- *Zártság:* Tetszőleges $f, g \in \mathcal{A}$ esetén $(f + g)(n) = f(n) + g(n) \in \mathbb{C}$ minden $n \in \mathbb{N}^+$-ra, így $f + g \in \mathcal{A}$.
- *Asszociativitás és kommutativitás:* Közvetlenül a komplex számok összeadásának asszociativitásából és kommutativitásából adódik tagonként:
  $$((f + g) + h)(n) = (f(n) + g(n)) + h(n) = f(n) + (g(n) + h(n)) = (f + (g + h))(n),$$
  $$(f + g)(n) = f(n) + g(n) = g(n) + f(n) = (g + f)(n).$$
- *Nullelem:* Az azonosan nulla függvény: $\mathbf{0}(n) = 0$ minden $n \in \mathbb{N}^+$ esetén. Ekkor $(f + \mathbf{0})(n) = f(n) + 0 = f(n)$.
- *Additív inverz:* A $(-f)(n) = -f(n)$ függvény, amelyre $(f + (-f))(n) = f(n) - f(n) = 0 = \mathbf{0}(n)$.

**(b) A szorzás ($*$) kommutatív:**
Amikor $d$ végigfut $n$ összes pozitív osztóján, a $d' = \frac{n}{d}$ hányados szintén $n$ összes pozitív osztóján fut végig (fordított sorrendben). Így:
$$(f * g)(n) = \sum_{d \mid n} f(d)g\left(\frac{n}{d}\right) = \sum_{d' \mid n} f\left(\frac{n}{d'}\right)g(d') = \sum_{d' \mid n} g(d')f\left(\frac{n}{d'}\right) = (g * f)(n).$$
Tehát $f * g = g * f$.

**(c) A szorzás ($*$) asszociatív:**
Írjuk fel a konvolúciót az $ab = n$ alakú rendezett számpárokra vett összegként:
$$((f * g) * h)(n) = \sum_{ab = n} (f * g)(a) h(b) = \sum_{ab = n} \left( \sum_{cd = a} f(c)g(d) \right) h(b) = \sum_{cdb = n} f(c)g(d)h(b).$$
Hasonlóan:
$$(f * (g * h))(n) = \sum_{cd = n} f(c)(g * h)(d) = \sum_{cd = n} f(c)\left( \sum_{ab = d} g(a)h(b) \right) = \sum_{cab = n} f(c)g(a)h(b).$$
A két összeg teljesen megegyezik: mindkettő az $n$ szám összes olyan $(a, b, c)$ pozitív egészekből álló rendezett számhármasára összegzi az $f(a)g(b)h(c)$ szorzatot, amelyre $abc = n$.
Tehát $((f * g) * h) = (f * (g * h))$.

**(d) Disztributivitás:**
Mivel $*$ kommutatív, elegendő a bal oldali disztributivitást igazolni:
$$(f * (g + h))(n) = \sum_{d \mid n} f(d)(g + h)\left(\frac{n}{d}\right) = \sum_{d \mid n} f(d)\left( g\left(\frac{n}{d}\right) + h\left(\frac{n}{d}\right) \right)$$
$$= \sum_{d \mid n} f(d)g\left(\frac{n}{d}\right) + \sum_{d \mid n} f(d)h\left(\frac{n}{d}\right) = (f * g)(n) + (f * h)(n).$$
Tehát $f * (g + h) = f * g + f * h$.

**(e) A szorzásra vonatkozó egységelem:**
Olyan $\varepsilon \in \mathcal{A}$ függvényt keresünk, amelyre minden $f \in \mathcal{A}$ és minden $n \in \mathbb{N}^+$ esetén $(f * \varepsilon)(n) = f(n)$.
Definiáljuk az $\varepsilon$ függvényt a következőképpen:
$$\varepsilon(n) = \begin{cases} 1, & \text{ha } n = 1, \\ 0, & \text{ha } n > 1. \end{cases}$$
Számítsuk ki a konvolúciót tetszőleges $f$-re:
$$(f * \varepsilon)(n) = \sum_{d \mid n} f(d)\varepsilon\left(\frac{n}{d}\right).$$
A szummában az $\varepsilon\left(\frac{n}{d}\right)$ tényező pontosan akkor nem nulla (értéke 1), ha $\frac{n}{d} = 1$, azaz $d = n$. Minden más $d < n$ osztóra $\frac{n}{d} > 1$, így $\varepsilon\left(\frac{n}{d}\right) = 0$.
Ezért az összeg egyetlen tagra redukálódik:
$$(f * \varepsilon)(n) = f(n)\varepsilon(1) = f(n) \cdot 1 = f(n).$$
Mivel a szorzás kommutatív, $(\varepsilon * f)(n) = f(n)$ is automatikusan teljesül.
Tehát $\varepsilon$ a szorzás kétoldali egységeleme.

Mindezek alapján $(\mathcal{A}, +, *)$ **kommutatív, egységelemes gyűrű** (amelyet a szakirodalomban Dirichlet-gyűrűnek is neveznek), és szorzási egységeleme az $\varepsilon(n) = \begin{cases} 1, & n = 1 \\ 0, & n > 1 \end{cases}$ függvény. $\blacksquare$

---

## 10. feladat

Bontsuk fel irreducibilis tényezők szorzatára az $x^4 - 1$ polinomot a $\mathbb{Z}_2[x]$, a $\mathbb{Z}_3[x]$ és a $\mathbb{Z}_5[x]$ polinomgyűrűkben.

**Megoldás.**

Tetszőleges kommutatív gyűrű felett érvényes az algebrai azonosság:
$$x^4 - 1 = (x^2 - 1)(x^2 + 1) = (x - 1)(x + 1)(x^2 + 1).$$

**(a) $\mathbb{Z}_2[x]$ felett:**
A 2 karakterisztikájú testben $-1 \equiv 1$, így $x - 1 = x + 1$.
Továbbá a „frissdiák-álom” azonosság szerint $(a + b)^2 = a^2 + b^2$, így:
$$x^2 + 1 = (x + 1)^2.$$
Ebből:
$$x^4 - 1 = x^4 + 1 = (x^2 + 1)^2 = ((x + 1)^2)^2 = (x + 1)^4.$$
Mivel $x + 1$ elsőfokú, irreducibilis $\mathbb{Z}_2[x]$-ben.
A felbontás:
$$x^4 - 1 = (x + 1)^4.$$

**(b) $\mathbb{Z}_3[x]$ felett:**
$\mathbb{Z}_3$-ban $x - 1 = x + 2$, így:
$$x^4 - 1 = (x - 1)(x + 1)(x^2 + 1) = (x + 2)(x + 1)(x^2 + 1).$$
Vizsgáljuk az $x^2 + 1$ másodfokú polinomot:
- Helyettesítsük be $\mathbb{Z}_3 = \{0, 1, 2\}$ elemeit:
  $$0^2 + 1 = 1 \ne 0, \qquad 1^2 + 1 = 2 \ne 0, \qquad 2^2 + 1 = 5 \equiv 2 \ne 0.$$
- Mivel $x^2 + 1$ másodfokú és nincs gyöke a $\mathbb{Z}_3$ testben, a 6. feladat értelmében **irreducibilis** $\mathbb{Z}_3$ felett.
Az $x - 1$ és $x + 1$ tényezők elsőfokúak, tehát irreducibilisek.
A felbontás:
$$x^4 - 1 = (x - 1)(x + 1)(x^2 + 1) \qquad (\text{vagy } (x + 2)(x + 1)(x^2 + 1)).$$

**(c) $\mathbb{Z}_5[x]$ felett:**
$\mathbb{Z}_5$-ben $1 \equiv -4$, így $x^2 + 1 = x^2 - 4 = (x - 2)(x + 2)$.
(Valóban: $2^2 + 1 = 5 \equiv 0$ és $3^2 + 1 = 10 \equiv 0$, ahol $3 \equiv -2 \pmod 5$.)
Így a polinom gyöktényezőkre bomlik:
$$x^4 - 1 = (x - 1)(x + 1)(x - 2)(x + 2).$$
$\mathbb{Z}_5$ elemeivel felírva (mivel $+1 \equiv -4$, $+2 \equiv -3$):
$$x^4 - 1 = (x - 1)(x - 2)(x - 3)(x - 4) = (x + 4)(x + 3)(x + 2)(x + 1).$$
Mivel mind a négy tényező elsőfokú, irreducibilisek $\mathbb{Z}_5[x]$-ben.
(Megjegyzés: a kis Fermat-tétel szerint minden $c \in \mathbb{Z}_5 \setminus \{0\}$ elemre $c^4 \equiv 1 \pmod 5$, így a $\mathbb{Z}_5^\times$ mind a 4 eleme gyöke $x^4 - 1$-nek.)

---

## 11. feladat

Bontsuk gyöktényezős alakra az $x^{27} - 1$ polinomot a $\mathbb{Z}_3$ test felett.

**Megoldás.**

A $\mathbb{Z}_3$ test 3 karakterisztikájú ($p = 3$).
Karakterisztika $p$ esetén tetszőleges kommutatív gyűrűben a binomiális tételből következik a Frobenius-azonosság:
$$(a - b)^p = a^p - b^p.$$
Ezt $p = 3$-ra alkalmazva:
$$(x - 1)^3 = x^3 - 1^3 = x^3 - 1.$$
Alkalmazzuk ezt egymás után háromszor (vagyis $p^k = 3^3 = 27$-re):
$$(x - 1)^9 = ((x - 1)^3)^3 = (x^3 - 1)^3 = (x^3)^3 - 1 = x^9 - 1,$$
$$(x - 1)^{27} = ((x - 1)^9)^3 = (x^9 - 1)^3 = (x^9)^3 - 1 = x^{27} - 1.$$
Mivel $x - 1$ elsőfokú, a gyöktényezős alak:
$$x^{27} - 1 = (x - 1)^{27} \qquad (\text{vagy } (x + 2)^{27}).$$
A polinomnak egyetlen gyöke van a $\mathbb{Z}_3$ testben, az $x = 1$, mégpedig 27-szeres multiplicitással.

---

## 12. feladat

A Schönemann–Eisenstein-kritérium az alábbi polinomok közül melyekre alkalmazható közvetlenül: $x^7 + 6x^2 + 15$, $x^7 + 6x^2 + 18$, $x^7 + 10x^2 + 8$, illetve $x^7 + n$?

**Megoldás.**

Idézzük fel a kritériumot: az $f(x) = a_k x^k + \dots + a_1 x + a_0 \in \mathbb{Z}[x]$ polinomra a kritérium akkor alkalmazható egy $p$ prím segítségével, ha:
1. $p \nmid a_k$,
2. $p \mid a_i$ minden $0 \le i \le k - 1$ esetén,
3. $p^2 \nmid a_0$.

A „közvetlenül alkalmazható” kifejezés azt jelenti, hogy a polinomra magára (helyettesítés vagy változóeltolás nélkül) teljesülnek a fenti feltételek valamely $p$ prímre.

**(1) $f_1(x) = x^7 + 6x^2 + 15$**

- Főegyüttható: $a_7 = 1$.
- A többi együttható: $a_6 = a_5 = a_4 = a_3 = a_1 = 0$, továbbá $a_2 = 6$ és $a_0 = 15$.
- A nulla együtthatókat bármely prím osztja. Olyan $p$ prímet keresünk, amely osztja $6$-ot és $15$-öt is:
  $$\operatorname{lnko}(6, 15) = 3 \implies p = 3.$$
- Ellenőrizzük $p = 3$-ra:
  1. $3 \nmid a_7 = 1$,
  2. $3 \mid a_i$ minden $0 \le i \le 6$ esetén ($3 \mid 6$ és $3 \mid 15$, a többi 0),
  3. $p^2 = 9 \nmid a_0 = 15$ (mivel $15 / 9 \notin \mathbb{Z}$).
- Mindhárom feltétel teljesül, tehát a Schönemann–Eisenstein-kritérium **közvetlenül alkalmazható** ($p = 3$-mal).

**(2) $f_2(x) = x^7 + 6x^2 + 18$**

- Főegyüttható: $a_7 = 1$. A nemnulla együtthatók: $a_2 = 6, a_0 = 18$.
- A közös prímosztók $p = 2$ és $p = 3$.
  - *Próbáljuk $p = 3$-ra:* $3 \mid 6$ és $3 \mid 18$, azonban $p^2 = 9 \mid 18$ ($18 = 2 \cdot 9$), így a 3. feltétel nem teljesül $p = 3$-ra.
  - *Próbáljuk $p = 2$-re:*
    1. $2 \nmid a_7 = 1$,
    2. $2 \mid a_i$ minden $0 \le i \le 6$-ra (mivel $2 \mid 6$, $2 \mid 18$, és a többi együttható 0),
    3. $p^2 = 4 \nmid a_0 = 18$ (mivel $18 = 4 \cdot 4 + 2$, nem osztható 4-gyel).
- A feltételek $p = 2$-re teljesülnek! Tehát a kritérium erre a polinomra is **közvetlenül alkalmazható** ($p = 2$-vel).

**(3) $f_3(x) = x^7 + 10x^2 + 8$**

- Főegyüttható: $a_7 = 1$. Nemnulla együtthatók: $a_2 = 10, a_0 = 8$.
- A közös prímosztók: $\operatorname{lnko}(10, 8) = 2$, tehát egyedül a $p = 2$ jöhet szóba.
- Ellenőrzés $p = 2$-re:
  - $p^2 = 4 \mid a_0 = 8$. A 3. feltétel sérül ($p^2 \mid a_0$).
- Más szóba jöhető prímszám nincs, így a Schönemann–Eisenstein-kritérium erre a polinomra **közvetlenül nem alkalmazható**.

**(4) $f_4(x) = x^7 + n$ ($n \in \mathbb{Z}$)**

- Főegyüttható: $a_7 = 1$. A nem konstans alacsonyabb fokú tagok együtthatói mind nullák ($a_1 = \dots = a_6 = 0$), amelyeket minden prím oszt. A konstans tag $a_0 = n$.
- Egy $p$ prímre a feltételek:
  1. $p \nmid 1$ (mindig igaz),
  2. $p \mid a_i$ minden $i \le 6$-ra $\iff p \mid n$,
  3. $p^2 \nmid n$.
- Tehát a kritérium **pontosan akkor alkalmazható közvetlenül, ha létezik olyan $p$ prímszám, amelyre $p \mid n$, de $p^2 \nmid n$** (azaz $n$-nek van legalább egy olyan prímosztója, amely pontosan az első hatványon szerepel $n$ kanonikus alakjában).
  - Alkalmazható például, ha $n$ négyzetmentes és $|n| > 1$ (pl. $n = 2, 3, 5, 6, 10, \dots$), vagy ha van egyszeres prímtényezője (pl. $n = 12 = 2^2 \cdot 3$-ra $p = 3$-mal).
  - Nem alkalmazható közvetlenül, ha $n = 0, \pm 1$, vagy ha minden prímosztója legalább a második hatványon szerepel (az úgynevezett négyzet-teljes vagy „powerful” számokra: $n = 4, 8, 9, 16, 27, 32, 36, \dots$).

---

## 13. feladat

Bizonyítsuk be az $f(x) = x^3 - 3x + 1$ polinomról, hogy irreducibilis $\mathbb{Q}$ felett, egy megfelelő eltolás segítségével.

**Megoldás.**

Az $f(x) = x^3 - 3x + 1$ polinom együtthatói: $a_3 = 1, a_2 = 0, a_1 = -3, a_0 = 1$.
Mivel a konstans tag $a_0 = 1$, nincs olyan prím, amely osztaná az összes alacsonyabb fokú tagot, így közvetlenül nem alkalmazható az Eisenstein-kritérium.

Alkalmazzunk egy $x = y + c$ változóeltolást ($c \in \mathbb{Z}$). Ha a $g(y) = f(y + c)$ polinom irreducibilis $\mathbb{Q}$ felett, akkor maga az $f(x) = g(x - c)$ polinom is irreducibilis $\mathbb{Q}$ felett (ugyanis az $x \mapsto y + c$ leképezés a $\mathbb{Q}[x]$ polinomgyűrű automorfizmusa, amely megőrzi a felbonthatóságot/felbonthatatlanságot).

**1. megoldás: $x = y - 1$ eltolás ($c = -1$)**

Helyettesítsünk $x = y - 1$-et az $f(x)$ polinomba:
$$\begin{aligned}
g(y) = f(y - 1) &= (y - 1)^3 - 3(y - 1) + 1 \\
&= (y^3 - 3y^2 + 3y - 1) - 3y + 3 + 1 \\
&= y^3 - 3y^2 + 3.
\end{aligned}$$
A kapott $g(y) = y^3 - 3y^2 + 3$ polinom együtthatói:
- Főegyüttható: $b_3 = 1$,
- További együtthatók: $b_2 = -3$, $b_1 = 0$, $b_0 = 3$.

Alkalmazzuk a Schönemann–Eisenstein-kritériumot a $p = 3$ prímszámmal:
1. $p = 3 \nmid b_3 = 1$,
2. $3 \mid b_2 = -3$, $3 \mid b_1 = 0$, és $3 \mid b_0 = 3$,
3. $p^2 = 9 \nmid b_0 = 3$ (mivel $3$ nem osztható $9$-cel).

Mindhárom feltétel teljesül, ezért $g(y)$ irreducibilis $\mathbb{Q}$ felett.
Következésképpen az eredeti $f(x) = x^3 - 3x + 1$ polinom is **irreducibilis $\mathbb{Q}$ felett**.

*(Megjegyzés: az $x = y + 2$ eltolás is működik: $f(y + 2) = (y + 2)^3 - 3(y + 2) + 1 = y^3 + 6y^2 + 9y + 3$, amelyre szintén $p = 3$-mal alkalmazható az Eisenstein-kritérium.)*

---

## 14. feladat

Igazoljuk, hogy az $f(x) = x^4 + x^3 + x^2 + x + 1$ irreducibilis $\mathbb{Q}$ felett.

**Bizonyítás.**

A megadott polinom az 5. körosztási polinom:
$$f(x) = \Phi_5(x) = \frac{x^5 - 1}{x - 1}.$$
Végezzük el az $x = y + 1$ helyettesítést:
$$g(y) = f(y + 1) = \frac{(y + 1)^5 - 1}{(y + 1) - 1} = \frac{(y + 1)^5 - 1}{y}.$$
Fejtsük ki a számlálót a binomiális tétel segítségével:
$$(y + 1)^5 = y^5 + \binom{5}{1}y^4 + \binom{5}{2}y^3 + \binom{5}{3}y^2 + \binom{5}{4}y + 1 = y^5 + 5y^4 + 10y^3 + 10y^2 + 5y + 1.$$
Ebből 1-et kivonva, majd $y$-nal elosztva kapjuk:
$$g(y) = y^4 + 5y^3 + 10y^2 + 10y + 5.$$
A $g(y)$ polinom együtthatói:
- $a_4 = 1$,
- $a_3 = 5$,
- $a_2 = 10$,
- $a_1 = 10$,
- $a_0 = 5$.

Alkalmazzuk a Schönemann–Eisenstein-kritériumot a $p = 5$ prímszámmal:
1. $p = 5 \nmid a_4 = 1$,
2. $5 \mid a_3 = 5$, $5 \mid a_2 = 10$, $5 \mid a_1 = 10$, $5 \mid a_0 = 5$,
3. $p^2 = 25 \nmid a_0 = 5$ (hiszen $5$ nem osztható $25$-tel).

A kritérium feltételei maradéktalanul teljesülnek, így $g(y)$ irreducibilis $\mathbb{Q}$ felett.
Mivel az $x \mapsto y + 1$ eltolás a $\mathbb{Q}[x]$ polinomgyűrű izomorfizmusa, az eredeti $f(x) = x^4 + x^3 + x^2 + x + 1$ polinom is **irreducibilis $\mathbb{Q}$ felett**. $\blacksquare$

---

## 15. feladat

Igaz-e az $5x^2 \mid 4x^3$ oszthatóság rendre a $\mathbb{C}, \mathbb{R}, \mathbb{Q}, \mathbb{Z}$ feletti polinomok körében?

**Megoldás.**

Egy tetszőleges $R$ kommutatív gyűrű feletti $R[x]$ polinomgyűrűben $g(x) \mid f(x)$ pontosan akkor teljesül, ha létezik olyan $h(x) \in R[x]$ polinom, amelyre
$$f(x) = g(x) \cdot h(x).$$
Esetünkben $f(x) = 4x^3$ és $g(x) = 5x^2$.
Ha létezik megfelelő $h(x)$, akkor a fokszámok alapján $\deg h = \deg f - \deg g = 3 - 2 = 1$, tehát $h(x) = c_1 x + c_0$.
Ekkor:
$$5x^2(c_1 x + c_0) = 5c_1 x^3 + 5c_0 x^2 = 4x^3.$$
Az együtthatókat összehasonlítva:
$$5c_1 = 4 \implies c_1 = \frac{4}{5}, \qquad 5c_0 = 0 \implies c_0 = 0.$$
Így az egyetlen lehetséges hányados:
$$h(x) = \frac{4}{5}x.$$

Vizsgáljuk meg az egyes számköröket:

- **$\mathbb{C}$ felett:** $\frac{4}{5} \in \mathbb{C}$, így $h(x) = \frac{4}{5}x \in \mathbb{C}[x]$. Az oszthatóság **IGAZ**.
- **$\mathbb{R}$ felett:** $\frac{4}{5} \in \mathbb{R}$, így $h(x) = \frac{4}{5}x \in \mathbb{R}[x]$. Az oszthatóság **IGAZ**.
- **$\mathbb{Q}$ felett:** $\frac{4}{5} \in \mathbb{Q}$, így $h(x) = \frac{4}{5}x \in \mathbb{Q}[x]$. Az oszthatóság **IGAZ**.
- **$\mathbb{Z}$ felett:** A $\mathbb{Z}[x]$ gyűrűben a polinomok együtthatóinak egész számoknak kell lenniük. Mivel $\frac{4}{5} \notin \mathbb{Z}$, a $h(x) = \frac{4}{5}x$ nem eleme a $\mathbb{Z}[x]$ gyűrűnek, és más polinom sem elégítheti ki az egyenlőséget. Tehát $\mathbb{Z}[x]$-ben $5x^2 \nmid 4x^3$. Az oszthatóság **NEM IGAZ**.

Összefoglalva:

| Gyűrű | $\mathbb{C}[x]$ | $\mathbb{R}[x]$ | $\mathbb{Q}[x]$ | $\mathbb{Z}[x]$ |
|:---:|:---:|:---:|:---:|:---:|
| $5x^2 \mid 4x^3$ | **Igaz** | **Igaz** | **Igaz** | **Nem igaz** |

---

## 16. feladat

Osszuk el maradékosan az $x^4 - 3x^3 + x - 2$ polinomot a $2x^2 - x + 1$ polinommal a valós számok teste felett.

**Megoldás.**

Olyan $q(x), r(x) \in \mathbb{R}[x]$ polinomokat keresünk, amelyekre
$$x^4 - 3x^3 + x - 2 = (2x^2 - x + 1) q(x) + r(x), \qquad \deg r < \deg(2x^2 - x + 1) = 2.$$

Végezzük el a polinomosztást lépésről lépésre:

$$\begin{array}{l}
\phantom{-} (x^4 - 3x^3 + 0x^2 + x - 2) : (2x^2 - x + 1) = \frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8} \\
\underline{-(x^4 - \frac{1}{2}x^3 + \frac{1}{2}x^2)} \\
\phantom{-(x^4} -\frac{5}{2}x^3 - \frac{1}{2}x^2 + x - 2 \\
\phantom{-(x^4} \underline{-(-\frac{5}{2}x^3 + \frac{5}{4}x^2 - \frac{5}{4}x)} \\
\phantom{-(x^4-\frac{5}{2}x^3} -\frac{7}{4}x^2 + \frac{9}{4}x - 2 \\
\phantom{-(x^4-\frac{5}{2}x^3} \underline{-(-\frac{7}{4}x^2 + \frac{7}{8}x - \frac{7}{8})} \\
\phantom{-(x^4-\frac{5}{2}x^3-\frac{7}{4}x^2} \frac{11}{8}x - \frac{9}{8}
\end{array}$$

*A lépések részletesen:*
1. $\frac{x^4}{2x^2} = \frac{1}{2}x^2$.
   Visszaszorozva: $\frac{1}{2}x^2(2x^2 - x + 1) = x^4 - \frac{1}{2}x^3 + \frac{1}{2}x^2$.
   Kivonva: $(-3 - (-\frac{1}{2}))x^3 + (0 - \frac{1}{2})x^2 + x - 2 = -\frac{5}{2}x^3 - \frac{1}{2}x^2 + x - 2$.
2. $\frac{-\frac{5}{2}x^3}{2x^2} = -\frac{5}{4}x$.
   Visszaszorozva: $-\frac{5}{4}x(2x^2 - x + 1) = -\frac{5}{2}x^3 + \frac{5}{4}x^2 - \frac{5}{4}x$.
   Kivonva: $(-\frac{1}{2} - \frac{5}{4})x^2 + (1 - (-\frac{5}{4}))x - 2 = -\frac{7}{4}x^2 + \frac{9}{4}x - 2$.
3. $\frac{-\frac{7}{4}x^2}{2x^2} = -\frac{7}{8}$.
   Visszaszorozva: $-\frac{7}{8}(2x^2 - x + 1) = -\frac{7}{4}x^2 + \frac{7}{8}x - \frac{7}{8}$.
   Kivonva: $(\frac{9}{4} - \frac{7}{8})x + (-2 - (-\frac{7}{8})) = \frac{11}{8}x - \frac{9}{8}$.

Mivel $\deg\left(\frac{11}{8}x - \frac{9}{8}\right) = 1 < 2$, az eljárás véget ért.

**Eredmény:**
- **Hányados:** $q(x) = \frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8}$
- **Maradék:** $r(x) = \frac{11}{8}x - \frac{9}{8}$

*Ellenőrzés visszaszorzással:*
$$(2x^2 - x + 1)\left(\frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8}\right) + \left(\frac{11}{8}x - \frac{9}{8}\right)$$
$$= \left(x^4 - \frac{5}{2}x^3 - \frac{7}{4}x^2 - \frac{1}{2}x^3 + \frac{5}{4}x^2 + \frac{7}{8}x + \frac{1}{2}x^2 - \frac{5}{4}x - \frac{7}{8}\right) + \frac{11}{8}x - \frac{9}{8}$$
$$= x^4 - 3x^3 + 0x^2 + \left(\frac{7}{8} - \frac{10}{8} + \frac{11}{8}\right)x + \left(-\frac{7}{8} - \frac{9}{8}\right) = x^4 - 3x^3 + x - 2. \quad \checkmark$$

---

## 17. feladat

Legyen $f(x) = 3x^4 + 2x^2 + x + 4$ és $g(x) = 2x^2 + 1$. Végezzük el az $f(x)$ polinom maradékos osztását a $g(x)$ polinommal a $\mathbb{Z}_5[x]$ polinomgyűrűben.

**Megoldás.**

A $\mathbb{Z}_5$ testben számolunk, ahol $2^{-1} = 3$ (mivel $2 \cdot 3 = 6 \equiv 1 \pmod 5$).
Olyan $q(x), r(x) \in \mathbb{Z}_5[x]$ polinomokat keresünk, amelyekre
$$f(x) = g(x)q(x) + r(x), \qquad \deg r < \deg g = 2.$$

**1. lépés:**
A legmagasabb fokú tagok hányadosa:
$$\frac{3x^4}{2x^2} = (3 \cdot 2^{-1})x^2 = (3 \cdot 3)x^2 = 9x^2 \equiv 4x^2 \pmod 5.$$
Szorozzuk vissza az osztót $4x^2$-tel:
$$4x^2 \cdot (2x^2 + 1) = 8x^4 + 4x^2 \equiv 3x^4 + 4x^2 \pmod 5.$$
Vonjuk ki $f(x)$-ből:
$$(3x^4 + 2x^2 + x + 4) - (3x^4 + 4x^2) = (2 - 4)x^2 + x + 4 = -2x^2 + x + 4 \equiv 3x^2 + x + 4 \pmod 5.$$

**2. lépés:**
A legmagasabb fokú tagok hányadosa:
$$\frac{3x^2}{2x^2} = 3 \cdot 2^{-1} = 3 \cdot 3 = 9 \equiv 4 \pmod 5.$$
Szorozzuk vissza az osztót $4$-gyel:
$$4 \cdot (2x^2 + 1) = 8x^2 + 4 \equiv 3x^2 + 4 \pmod 5.$$
Vonjuk ki az előző maradékból:
$$(3x^2 + x + 4) - (3x^2 + 4) = x.$$

Mivel $\deg(x) = 1 < \deg g = 2$, a maradékos osztás véget ért.

**Eredmény:**
- **Hányados:** $q(x) = 4x^2 + 4$
- **Maradék:** $r(x) = x$

*Ellenőrzés $\mathbb{Z}_5[x]$-ben:*
$$g(x)q(x) + r(x) = (2x^2 + 1)(4x^2 + 4) + x = 8x^4 + 8x^2 + 4x^2 + 4 + x$$
$$= 8x^4 + 12x^2 + x + 4 \equiv 3x^4 + 2x^2 + x + 4 \pmod 5 = f(x). \quad \checkmark$$

---

## 18. feladat

Mi a maradék, ha az $x^6 + x^3 + 1$ polinomot osztjuk $x^2 - x + 1$-gyel? Az eredményt indokoljuk meg formális polinomosztás nélkül is.

**Megoldás.**

**A keresett maradék: $r(x) = 1$.**

*Indoklás formális polinomosztás nélkül:*

**1. módszer (Algebrai azonossággal):**
Ismert a köbök összegére vonatkozó azonosság:
$$(x + 1)(x^2 - x + 1) = x^3 + 1.$$
Ebből következik, hogy
$$x^3 + 1 \equiv 0 \pmod{x^2 - x + 1} \implies x^3 \equiv -1 \pmod{x^2 - x + 1}.$$
Az $x^6 + x^3 + 1$ polinomban az $x^6 = (x^3)^2$, így az $x^3 \equiv -1$ helyettesítést elvégezve:
$$x^6 + x^3 + 1 = (x^3)^2 + x^3 + 1 \equiv (-1)^2 + (-1) + 1 = 1 - 1 + 1 = 1 \pmod{x^2 - x + 1}.$$
Mivel az $1$ konstans polinom foka $0$, ami szigorúan kisebb, mint az osztó foka ($\deg(x^2 - x + 1) = 2$), a maradékos osztás egyértelműsége miatt a maradék pontosan **$1$**.

A közvetlen szorzattá alakítás is azonnal kiadja az összefüggést:
$$x^6 + x^3 + 1 - 1 = x^6 + x^3 = x^3(x^3 + 1) = x^3(x + 1)(x^2 - x + 1).$$
Átrendezve:
$$x^6 + x^3 + 1 = (x^2 - x + 1) \cdot x^3(x + 1) + 1 = (x^2 - x + 1)(x^4 + x^3) + 1.$$
Ez a maradékos osztás alakja, ahol a hányados $q(x) = x^4 + x^3$, a maradék pedig $r(x) = 1$.

**2. módszer (Gyökök behelyettesítésével):**
Az osztó másodfokú, így a maradék legfeljebb elsőfokú: $r(x) = ax + b$.
Az osztó $x^2 - x + 1 = 0$ egyenletének gyökei a primitív 6. egységgyökök: $\omega_{1,2} = \frac{1 \pm i\sqrt{3}}{2} = e^{\pm i\pi/3}$.
Ezekre $\omega^3 = -1$ és $\omega^6 = 1$.
Behelyettesítve $\omega$-t a polinomosztás $f(x) = (x^2 - x + 1)q(x) + r(x)$ egyenlőségébe:
$$f(\omega) = \omega^6 + \omega^3 + 1 = 1 + (-1) + 1 = 1.$$
Másrészt $f(\omega) = 0 \cdot q(\omega) + r(\omega) = a\omega + b$.
Tehát $a\omega + b = 1$ kell teljesüljön mindkét gyökre. Mivel $\omega \notin \mathbb{R}$, ez csak $a = 0, b = 1$ esetén állhat fenn, amiből $r(x) = 1$.

---

## 19. feladat

Határozzuk meg az $x^{100} + 2x^{51} - 3x^2 + 4$ polinom maradékát, ha elosztjuk $x^2 + 1$-gyel, illetve $x^2 - 1$-gyel.

**Megoldás.**

Jelöljük a polinomot $f(x) = x^{100} + 2x^{51} - 3x^2 + 4$-gyel.
Mivel mindkét osztó másodfokú, a maradék mindkét esetben legfeljebb elsőfokú:
$$r(x) = ax + b.$$

**(a) Osztás $x^2 + 1$-gyel:**

Modulo $x^2 + 1$ számolva $x^2 \equiv -1$.
Ekkor a magasabb hatványok:
- $x^{100} = (x^2)^{50} \equiv (-1)^{50} = 1$,
- $x^{51} = (x^2)^{25} \cdot x \equiv (-1)^{25} \cdot x = -x$,
- $x^2 \equiv -1$.

Helyettesítsük be ezeket $f(x)$-be:
$$\begin{aligned}
f(x) &\equiv x^{100} + 2x^{51} - 3x^2 + 4 \\
&\equiv 1 + 2(-x) - 3(-1) + 4 \\
&= 1 - 2x + 3 + 4 \\
&= -2x + 8 \pmod{x^2 + 1}.
\end{aligned}$$
Mivel $\deg(-2x + 8) = 1 < \deg(x^2 + 1) = 2$, a maradék:
$$r_1(x) = -2x + 8.$$

*(Ellenőrzés az $x^2 + 1 = 0$ gyökeivel, $x = \pm i$: $f(i) = i^{100} + 2i^{51} - 3i^2 + 4 = 1 + 2(-i) - 3(-1) + 4 = 8 - 2i$. A maradékra $r_1(i) = ai + b = -2i + 8$, tökéletes egyezés.)*

**(b) Osztás $x^2 - 1$-gyel:**

Modulo $x^2 - 1$ számolva $x^2 \equiv 1$.
Ekkor a hatványok:
- $x^{100} = (x^2)^{50} \equiv 1^{50} = 1$,
- $x^{51} = (x^2)^{25} \cdot x \equiv 1^{25} \cdot x = x$,
- $x^2 \equiv 1$.

Helyettesítsük be ezeket $f(x)$-be:
$$\begin{aligned}
f(x) &\equiv x^{100} + 2x^{51} - 3x^2 + 4 \\
&\equiv 1 + 2(x) - 3(1) + 4 \\
&= 1 + 2x - 3 + 4 \\
&= 2x + 2 \pmod{x^2 - 1}.
\end{aligned}$$
Mivel $\deg(2x + 2) = 1 < \deg(x^2 - 1) = 2$, a maradék:
$$r_2(x) = 2x + 2.$$

*(Ellenőrzés az $x = \pm 1$ gyökökkel: $f(1) = 1 + 2 - 3 + 4 = 4$, $r_2(1) = 2(1) + 2 = 4$; továbbá $f(-1) = 1 - 2 - 3 + 4 = 0$, $r_2(-1) = 2(-1) + 2 = 0$. Tökéletes egyezés.)*

---

## 20. feladat

Tudjuk, hogy egy $f(x) \in \mathbb{R}[x]$ polinomot az $x^2 - 2x + 2$ polinommal osztva a maradék $2x - 3$. Határozzuk meg az $f(1 + i)$ helyettesítési értéket.

**Megoldás.**

A maradékos osztás tétele szerint létezik olyan $q(x) \in \mathbb{R}[x]$ hányadospolinom, amelyre
$$f(x) = (x^2 - 2x + 2) q(x) + (2x - 3).$$
Helyettesítsünk $x = 1 + i$-t a fenti egyenlőségbe.
Számítsuk ki először az osztó értékét az $x = 1 + i$ helyen:
$$\begin{aligned}
(1 + i)^2 - 2(1 + i) + 2 &= (1 + 2i + i^2) - 2 - 2i + 2 \\
&= (1 + 2i - 1) - 2i \\
&= 2i - 2i = 0.
\end{aligned}$$
(Ez geometriailag is nyilvánvaló: az $x = 1 + i$ számra $x - 1 = i \implies (x - 1)^2 = -1 \implies x^2 - 2x + 1 = -1 \implies x^2 - 2x + 2 = 0$, tehát $1 + i$ gyöke az $x^2 - 2x + 2$ polinomnak.)

Mivel az osztó értéke $0$, az első tag kiesik:
$$(x^2 - 2x + 2) q(x) \Big|_{x = 1 + i} = 0 \cdot q(1 + i) = 0.$$
Így az $f(1 + i)$ értéke megegyezik a maradékpolinom helyettesítési értékével:
$$f(1 + i) = 2(1 + i) - 3 = 2 + 2i - 3 = -1 + 2i.$$

A keresett érték tehát:
$$f(1 + i) = -1 + 2i.$$

---

## 21. feladat

Az euklideszi algoritmussal határozzuk meg az $f(x) = x^4 - 4x^3 + 5x^2 - 4x + 4$ és a $g(x) = x^3 - 3x^2 + 4x - 2$ polinomok kitüntetett közös osztóját a racionális számok teste felett.

**Megoldás.**

A racionális számok $\mathbb{Q}$ teste feletti polinomgyűrűben a kitüntetett közös osztó az a normált (főegyütthatója 1) közös osztó, amelynek minden más közös osztó többszöröse (azaz az euklideszi algoritmus utolsó nem nulla maradékának normált alakja).

Végezzük el az euklideszi algoritmust:

**1. lépés: Osszuk el $f(x)$-et $g(x)$-szel:**
$$\begin{array}{l}
\phantom{-} (x^4 - 4x^3 + 5x^2 - 4x + 4) : (x^3 - 3x^2 + 4x - 2) = x - 1 \\
\underline{-(x^4 - 3x^3 + 4x^2 - 2x)} \\
\phantom{-(x^4} -x^3 + x^2 - 2x + 4 \\
\phantom{-(x^4} \underline{-(-x^3 + 3x^2 - 4x + 2)} \\
\phantom{-(x^4-x^3} -2x^2 + 2x + 2
\end{array}$$
Az első hányados $q_1(x) = x - 1$, az első maradék:
$$r_1(x) = -2x^2 + 2x + 2.$$

**2. lépés: Osszuk el $g(x)$-et az $r_1(x)$ maradékkal:**
$$g(x) = x^3 - 3x^2 + 4x - 2, \qquad r_1(x) = -2x^2 + 2x + 2.$$
A számolást végezhetjük közvetlenül $r_1(x)$-szel:
- $\frac{x^3}{-2x^2} = -\frac{1}{2}x$.
  Visszaszorozva: $-\frac{1}{2}x(-2x^2 + 2x + 2) = x^3 - x^2 - x$.
  Kivonva: $(x^3 - 3x^2 + 4x - 2) - (x^3 - x^2 - x) = -2x^2 + 5x - 2$.
- $\frac{-2x^2}{-2x^2} = 1$.
  Visszaszorozva: $1 \cdot (-2x^2 + 2x + 2) = -2x^2 + 2x + 2$.
  Kivonva: $(-2x^2 + 5x - 2) - (-2x^2 + 2x + 2) = 3x - 4$.

A második hányados $q_2(x) = -\frac{1}{2}x + 1$, a második maradék:
$$r_2(x) = 3x - 4.$$

**3. lépés: Osszuk el $r_1(x)$-et az $r_2(x)$ maradékkal:**
$$r_1(x) = -2x^2 + 2x + 2, \qquad r_2(x) = 3x - 4.$$
- $\frac{-2x^2}{3x} = -\frac{2}{3}x$.
  Visszaszorozva: $-\frac{2}{3}x(3x - 4) = -2x^2 + \frac{8}{3}x$.
  Kivonva: $(-2x^2 + 2x + 2) - (-2x^2 + \frac{8}{3}x) = \left(2 - \frac{8}{3}\right)x + 2 = -\frac{2}{3}x + 2$.
- $\frac{-\frac{2}{3}x}{3x} = -\frac{2}{9}$.
  Visszaszorozva: $-\frac{2}{9}(3x - 4) = -\frac{2}{3}x + \frac{8}{9}$.
  Kivonva: $\left(-\frac{2}{3}x + 2\right) - \left(-\frac{2}{3}x + \frac{8}{9}\right) = 2 - \frac{8}{9} = \frac{10}{9}$.

A harmadik hányados $q_3(x) = -\frac{2}{3}x - \frac{2}{9}$, a harmadik maradék:
$$r_3 = \frac{10}{9} \ne 0.$$

**4. lépés: Következő osztás:**
Mivel $r_3 = \frac{10}{9}$ egy nem nulla konstans, a következő lépésben a $(3x - 4)$ polinomot $\frac{10}{9}$-cel osztva a maradék $0$ lesz:
$$3x - 4 = \left(\frac{27}{10}x - \frac{18}{5}\right) \cdot \frac{10}{9} + 0.$$

Az utolsó nem nulla maradék a $\frac{10}{9}$ konstans.
Mivel a racionális számok teste felett minden nem nulla konstans invertálható (egység), az asszociáltság erejéig az 1-gyel egyenértékű. A kitüntetett (normált) legnagyobb közös osztó:
$$\operatorname{lnko}(f, g) = 1.$$
A két polinom tehát **relatív prím** $\mathbb{Q}[x]$-ben.

*Ellenőrzés faktorizációval:*
- $f(x) = x^4 - 4x^3 + 5x^2 - 4x + 4 = (x - 2)^2 (x^2 + 1)$, melynek komplex gyökei $2$ (kétszeres) és $\pm i$.
- $g(x) = x^3 - 3x^2 + 4x - 2 = (x - 1)(x^2 - 2x + 2)$, melynek komplex gyökei $1$ és $1 \pm i$.
A két polinomnak nincs közös gyöke a komplex számok testében, így $\mathbb{Q}[x]$-ben sincs közös osztójuk az egységeken (konstansokon) kívül. Tehát $\operatorname{lnko}(f, g) = 1$.

---

## 22. feladat

Mi lesz az $x^{12} - 1$ és az $x^{18} - 1$ polinomok legnagyobb közös osztója? Igazoljuk az eredményt, és fogalmazzunk meg egy általános sejtést az $x^n - 1$ és $x^m - 1$ polinomok közös osztójára.

**Megoldás.**

**(a) Az $x^{12} - 1$ és $x^{18} - 1$ legnagyobb közös osztója:**

**Az eredmény: $\operatorname{lnko}(x^{12} - 1, x^{18} - 1) = x^6 - 1$.**

*Igazolás euklideszi algoritmussal:*
Végezzük el a maradékos osztást a két polinom között:
$$x^{18} - 1 = x^6(x^{12} - 1) + (x^6 - 1).$$
Itt az osztó $x^{12} - 1$, a hányados $x^6$, a maradék pedig $x^6 - 1$.
Mivel $\deg(x^6 - 1) = 6 < 12 = \deg(x^{12} - 1)$, ez valóban a maradékos osztás alakja.

A következő lépésben az $x^{12} - 1$ polinomot osztjuk a kapott $x^6 - 1$ maradékkal:
Mivel $12 = 6 \cdot 2$, a két négyzet különbségének azonossága szerint:
$$x^{12} - 1 = (x^6)^2 - 1 = (x^6 - 1)(x^6 + 1) + 0.$$
A maradék $0$.
Az euklideszi algoritmus utolsó nem nulla maradéka $x^6 - 1$, amely normált, így ez a kitüntetett legnagyobb közös osztó:
$$\operatorname{lnko}(x^{12} - 1, x^{18} - 1) = x^6 - 1.$$

*(Igazolás komplex egységgyökökkel: Az $x^{12} - 1$ gyökei a 12. komplex egységgyökök, az $x^{18} - 1$ gyökei a 18. egységgyökök. Egy $\zeta$ egységgyök pontosan akkor közös gyök, ha rendje osztja 12-t és 18-at is, azaz rendje osztja $\operatorname{lnko}(12, 18) = 6$-ot. Tehát a közös gyökök éppen a 6. egységgyökök, és mivel minden gyök egyszeres, a kitüntetett közös osztó $\prod_{\zeta^6 = 1}(x - \zeta) = x^6 - 1$.)*

**(b) Általános sejtés és bizonyítás:**

> **Tétel (Sejtés).** Tetszőleges $n, m \in \mathbb{N}^+$ pozitív egészek esetén:
> $$\operatorname{lnko}(x^n - 1, x^m - 1) = x^{\operatorname{lnko}(n, m)} - 1.$$

*Bizonyítás:*
A bizonyítás kulcsa, hogy megmutatjuk: a polinomokon végzett euklideszi algoritmus lépésről lépésre párhuzamosan fut a kitevőkön végzett közönséges euklideszi algoritmussal.

Tegyük fel, hogy $m \ge n$. Osszuk el $m$-et maradékosan $n$-nel az egész számok körében:
$$m = qn + r, \qquad \text{ahol } 0 \le r < n.$$
Írjuk fel az $x^m - 1$ polinomot:
$$\begin{aligned}
x^m - 1 &= x^{qn + r} - 1 \\
&= x^r(x^{qn} - 1) + (x^r - 1).
\end{aligned}$$
Mivel $x^n - 1 \mid (x^n)^q - 1 = x^{qn} - 1$ (az $y^q - 1 = (y - 1)(y^{q-1} + \dots + 1)$ azonosság alapján $y = x^n$-nel), létezik olyan $Q(x)$ polinom, hogy $x^{qn} - 1 = Q(x)(x^n - 1)$.
Ezért:
$$x^m - 1 = x^r Q(x) \cdot (x^n - 1) + (x^r - 1).$$
Itt:
- Ha $r > 0$, akkor $\deg(x^r - 1) = r < n = \deg(x^n - 1)$, így az $x^m - 1$ polinomnak az $x^n - 1$-gyel való osztási maradéka pontosan **$x^r - 1$**.
- Ha $r = 0$, akkor $x^r - 1 = x^0 - 1 = 0$, tehát a maradék $0$.

Ez azt jelenti, hogy ha a kitevők euklideszi algoritmusa a következő lépésekből áll:
$$\begin{aligned}
m &= q_1 n + r_1, \\
n &= q_2 r_1 + r_2, \\
r_1 &= q_3 r_2 + r_3, \\
&\ \ \vdots \\
r_{k-1} &= q_{k+1} r_k + 0, \qquad \text{ahol } r_k = \operatorname{lnko}(n, m),
\end{aligned}$$
akkor a megfelelő polinomok euklideszi algoritmusa pontosan a következő:
$$\begin{aligned}
x^m - 1 &= Q_1(x)(x^n - 1) + (x^{r_1} - 1), \\
x^n - 1 &= Q_2(x)(x^{r_1} - 1) + (x^{r_2} - 1), \\
&\ \ \vdots \\
x^{r_{k-1}} - 1 &= Q_{k+1}(x)(x^{r_k} - 1) + 0.
\end{aligned}$$
Az utolsó nem nulla maradék a polinomok körében tehát:
$$x^{r_k} - 1 = x^{\operatorname{lnko}(n, m)} - 1.$$
Mivel ez a polinom normált (főegyütthatója 1), ez adja a kitüntetett legnagyobb közös osztót. $\blacksquare$
