# III. RÉSZ: FÜGGVÉNYEK ÉS RELÁCIÓK

## 13. A függvény fogalma

**Definíció (függvény).** Legyenek $A$ és $B$ adott halmazok. Ha minden $a \in A$ elemhez hozzá van rendelve egy $b \in B$ elem, akkor ezt a hozzárendelést **függvénynek** nevezzük; jelölése $f : A \to B$. (Létezik ennél absztraktabb, halmazelméleti definíció is, amely a függvényt rendezett párok halmazaként adja meg; ehhez a relációk fogalmára lesz szükségünk, lásd a 16. szakaszt.)

- Az $A$ halmaz az $f$ **értelmezési tartománya**; jelölése $D(f)$.
- A
 $$C = \{b : \exists a \in A,\ b = f(a)\} = f(A)$$
 halmaz az $f$ **értékkészlete**; jelölése $R(f)$.

Fontos megkülönböztetni $B$-t (ahova a függvény „képez") és $R(f)$-et (amit ténylegesen felvesz). A kettő egybeesése külön tulajdonság, lásd alább.

## 14. Injektív, szürjektív, bijektív függvények; az inverz

**Definíció (injektivitás).** Az $f : A \to B$ függvény **injektív**, ha bármely $a_1, a_2 \in A$, $a_1 \neq a_2$ esetén $f(a_1) \neq f(a_2)$. Más szóval: különböző helyeken különböző értéket vesz fel, azaz minden érték legfeljebb egyszer fordul elő.

**Definíció (szürjektivitás).** Az $f : A \to B$ függvény **szürjektív** (más néven ráképezés), ha $R(f) = B$, vagyis minden $b \in B$ elemet felvesz.

**Definíció (bijektivitás).** Az $f : A \to B$ függvény **bijektív** (kölcsönösen egyértelmű), ha egyszerre injektív és szürjektív.

**Definíció (kép).** Ha $H \subset A$, akkor $f(H) = \{f(x) : x \in H\}$ a $H$ **képe**. Speciálisan $R(f) = f(A)$.

**Definíció (inverz függvény).** Ha $f : A \to B$ bijektív, akkor azt a hozzárendelést, amely minden $b \in B = R(f)$ elemhez azt az egyértelműen meghatározott $a \in A$ elemet rendeli, amelyre $f(a) = b$, az $f$ **inverzének** nevezzük; jelölése $f^{-1}$.

Ekkor
$$D(f^{-1}) = R(f) = B, \qquad R(f^{-1}) = D(f) = A,$$
$f^{-1}$ maga is bijektív, és nyilvánvalóan $(f^{-1})^{-1} = f$.

A bijektivitás mindkét fele szükséges: az injektivitás biztosítja, hogy a hozzárendelés *egyértelmű*, a szürjektivitás pedig azt, hogy *minden* $b$-hez legyen mit rendelni.

## 15. Kompozíció és az identikus függvény

**Definíció (összetett függvény).** Ha $f : A \to B$ és $g : C \to D$ függvények, akkor az $f$ és $g$ **összetétele** (kompozíciója) az a $h$ függvény, amelyre
$$h(a) = g(f(a))$$
minden olyan $a \in D(f) = A$ helyen, ahol $f(a) \in C = D(g)$. Jelölése $g \circ f$.

A leggyakoribb eset az, amikor $Y = B = C$, azaz $f : X \to Y$, $g : Y \to Z$ és $R(f) \subset Y = D(g)$; ekkor $g \circ f : X \to Z$. Nyilvánvaló, hogy $R(g \circ f) \subset R(g)$.

**Definíció (identikus függvény).** Azt az $f : A \to A$ függvényt, amelyre minden $a \in A$ esetén $f(a) = a$, az $A$ halmaz **identikus függvényének** nevezzük; jelölése $\mathrm{id}_A$.

**Megjegyzés.** Ha $f : A \to B$ bijektív, akkor
$$f^{-1} \circ f = \mathrm{id}_A, \qquad f \circ f^{-1} = \mathrm{id}_B.$$

**Tétel.** Legyen $f : A \to B$ és $g : B \to A$. Ekkor $g = f^{-1}$ akkor és csak akkor, ha egyszerre teljesül
$$\text{(I)}\quad g \circ f = \mathrm{id}_A \qquad \text{és} \qquad \text{(II)}\quad f \circ g = \mathrm{id}_B.$$

**Megjegyzés (a két feltétel függetlensége).** Fontos, hogy (I) $\not\Rightarrow$ (II) és (II) $\not\Rightarrow$ (I). Ellenpélda az első irányra: legyen $A = B = \mathbb{N}$,
$$f(n) = n + 1, \qquad g(n) = \begin{cases} n - 1 & \text{ha } n > 1, \\ 1 & \text{ha } n = 1. \end{cases}$$
Ekkor $g(f(n)) = g(n+1) = n$ minden $n \in \mathbb{N}$-re, tehát (I) fennáll. Ugyanakkor $f(g(1)) = f(1) = 2 \neq 1$, tehát (II) nem teljesül. (Az ok: $f$ injektív, de nem szürjektív.)

## 16. Rendezett n-esek, sorozatok, Descartes-szorzat, relációk

**Definíció ($n$-tagú sorozat).** Az $\{1, 2, \dots, n\}$ halmazon értelmezett függvényeket **$n$-tagú sorozatoknak** nevezzük. Ha $a : \{1, \dots, n\} \to A$, akkor jelölése
$$(a(1), a(2), \dots, a(n)) = (a_1, a_2, \dots, a_n) = \{a_i\}_{i=1}^{n}.$$
Más néven **rendezett $n$-es**. Az $n = 2$ eset a **rendezett pár**.

**Definíció (Descartes-szorzat).** Az $A$-beli rendezett párok halmaza, $A \times A$, az $A$ önmagával vett **Descartes-szorzata**. Általánosabban: adott $A$ és $B$ halmazok esetén azon $a : \{1,2\} \to A \cup B$ rendezett párok halmazát, amelyekre $a(1) \in A$ és $a(2) \in B$, az $A$ és $B$ Descartes-szorzatának nevezzük; jelölése $A \times B$.

**Megjegyzés.** Formálisan $(A \times A) \times A \neq A \times (A \times A)$, de mindkettő természetes módon azonosítható a rendezett hármasok halmazával, $A \times A \times A$-val. Ezért a zárójelezést a gyakorlatban elhagyjuk.

**Definíció (végtelen sorozat).** Az $\mathbb{N}$-en értelmezett függvényeket **(végtelen) sorozatoknak** nevezzük. Ha $a : \mathbb{N} \to A$, akkor jelölése
$$(a(1), a(2), \dots) = (a_1, a_2, \dots) = \{a_n\}_{n=1}^{\infty}.$$

**Definíció (reláció).** **Relációnak** nevezünk minden olyan halmazt, amelynek elemei rendezett párok. Ha $R \subset A \times B$, akkor $R$ az $A$ és $B$ feletti reláció. Ha $(a, b) \in R$, akkor azt mondjuk, hogy $a$ és $b$ **$R$-relációban állnak**, ellenkező esetben nem.

**Példa.** Az $(n, m) \in \mathbb{N} \times \mathbb{N}$ pár akkor áll az **oszthatósági** relációban, ha $n$ osztja $m$-et, azaz $n \mid m$.

Ez a definíció mutatja meg, hogyan tehető a függvényfogalom is halmazelméletileg precízzé: egy függvény nem más, mint olyan reláció, amelyben minden $a$ első koordinátához pontosan egy $b$ második koordináta tartozik.

---
