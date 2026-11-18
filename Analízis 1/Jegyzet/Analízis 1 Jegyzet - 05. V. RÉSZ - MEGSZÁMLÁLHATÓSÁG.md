# V. RÉSZ: MEGSZÁMLÁLHATÓSÁG

## 29. Megszámlálható halmazok; ℚ megszámlálható

**Definíció.** Az $A$ halmaz **megszámlálhatóan végtelen**, ha elemei sorozatba rendezhetők, azaz létezik $f : \mathbb{N} \to A$ bijekció; ekkor $a_n = f(n)$.

**Definíció.** Az $A$ halmaz **megszámlálható**, ha véges vagy megszámlálhatóan végtelen.

**Tétel.** $\mathbb{Q}$ megszámlálhatóan végtelen.

*Bizonyítás.* Konstruáljuk meg a felsorolást menetekben. Az **$n$-edik menetben** soroljuk fel azokat a $[-n, n]$ intervallumba eső, legfeljebb $n$ nevezőjű törteket, amelyeket korábban még nem soroltunk fel.

- 1. menet ($[-1,1]$, nevező legfeljebb $1$): $-1,\ 0,\ 1$.
- 2. menet ($[-2,2]$, nevező legfeljebb $2$): $-2,\ -\frac{3}{2},\ -\frac{1}{2},\ \frac{1}{2},\ \frac{3}{2},\ 2$.
- és így tovább.

Minden menetben csak **véges sok** új törtet írunk fel, és minden racionális szám előbb-utóbb sorra kerül (ha $\frac{p}{q}$ tetszőleges racionális, akkor a $\max\{|p|, q\}$-adik menetben már biztosan). Az így kapott sorozat:
$$-1,\ 0,\ 1,\ -2,\ -\tfrac{3}{2},\ -\tfrac{1}{2},\ \tfrac{1}{2},\ \tfrac{3}{2},\ 2,\ \dots$$
Egy másik szokásos bizonyítás a törteket táblázatba rendezi (soronként azonos nevezővel), és **átlósan** járja be a táblázatot; ez is minden törtet elér véges sok lépésben. $\blacksquare$

## 30. Algebrai és transzcendens számok

**Definíció.** Az $\alpha \in \mathbb{C}$ szám **algebrai**, ha gyöke egy nem azonosan nulla, egész együtthatós polinomnak.

**Példa.** $\sqrt{2}$ algebrai, hiszen gyöke az $x^2 - 2 = 0$ egyenletnek.

**Tétel.** Az algebrai számok halmaza megszámlálható.

(A bizonyítás vázlata: minden fokszámhoz és minden együttható-korláthoz csak véges sok polinom tartozik, és minden polinomnak véges sok gyöke van; így az algebrai számok megszámlálható sok véges halmaz uniójaként állnak elő.)

**Definíció.** Egy szám **transzcendens**, ha nem algebrai. Ilyen például $\pi$ és $e$ — bár mindkettő transzcendenciájának bizonyítása messze túlmutat a bevezető analízis keretein.

## 31. ℝ nem megszámlálható

**Tétel.** $\mathbb{R}$ nem megszámlálhatóan végtelen. (Ebből azonnal következik, hogy **létezik transzcendens szám**, sőt „majdnem minden" valós szám az.)

*Bizonyítás (a Cantor-féle tulajdonság segítségével).* Indirekt. Tegyük fel, hogy $\mathbb{R} = \{c_n : n \in \mathbb{N}\}$, azaz az összes valós szám felsorolható.

Konstruáljunk egymásba skatulyázott zárt intervallumokat úgy, hogy sorra „kizárjuk" a felsorolás tagjait:

- Válasszunk $a_1 < b_1$-et úgy, hogy $c_1 \notin [a_1, b_1]$ (ez mindig lehetséges, hiszen egyetlen pont nem tölti ki a számegyenest).
- Válasszunk $a_1 \le a_2 < b_2 \le b_1$-et úgy, hogy $c_2 \notin [a_2, b_2]$.
- Általában: ha $[a_{n-1}, b_{n-1}]$ már megvan, válasszunk $a_{n-1} \le a_n < b_n \le b_{n-1}$-et úgy, hogy $c_n \notin [a_n, b_n]$. (Ez lehetséges: $[a_{n-1}, b_{n-1}]$-et három részre osztva legalább az egyik nem tartalmazza $c_n$-t.)

A Cantor-féle tulajdonság szerint
$$\exists c \in \bigcap_{n=1}^{\infty} [a_n, b_n].$$
Ez a $c$ minden $n$-re benne van $[a_n, b_n]$-ben, míg $c_n$ nincs benne; tehát minden $n$-re $c \neq c_n$. Így $c$ olyan valós szám, amely nem szerepel a felsorolásban — ellentmondás. $\blacksquare$

**Tétel.** $\mathbb{R} \setminus \mathbb{Q}$ (az irracionális számok halmaza) nem megszámlálható.

(Valóban: ha megszámlálható volna, akkor $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R}\setminus\mathbb{Q})$ két megszámlálható halmaz uniójaként megszámlálható lenne.)

## 32. Számosság

**Definíció.** Az $A$ és $B$ halmazok **ekvivalensek** (azonos számosságúak), ha létezik $\varphi : A \to B$ bijekció; jelölés: $A \sim B$.

Ez ekvivalenciareláció:
$$A \sim A, \qquad A \sim B \iff B \sim A, \qquad (A \sim B \ \wedge\ B \sim C) \implies A \sim C.$$

Ezzel a nyelvvel:

- $A$ megszámlálhatóan végtelen $\iff A \sim \mathbb{N}$.
- $A$ **kontinuum számosságú** $\iff A \sim \mathbb{R}$.

**Tétel.** $\mathbb{R} \setminus \mathbb{Q} \sim \mathbb{R}$, azaz az irracionális számok halmaza kontinuum számosságú.

---
