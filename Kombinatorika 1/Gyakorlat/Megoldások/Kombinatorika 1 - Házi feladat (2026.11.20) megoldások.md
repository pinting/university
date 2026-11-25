# Kombinatorika 1 – Házi feladat (2026.11.20-ra) – megoldások

### Kombinatorika 1 normál · Házi feladat · 2026.11.20.

*(Az eredeti 1. feladat megoldása az [5. megoldások] 86. feladatánál található.)*

## 1. feladat (az eredeti lap 2. feladata)

A $G$ egyszerű, élsúlyozott gráfban legyen $T_1$ és $T_2$ két különböző minimális feszítőfa. Bizonyítsd be, hogy minden $k$ pozitív egészre ugyanannyi $k$ súlyú él szerepel $T_1$-ben, mint $T_2$-ben.

**Megoldás.**

A feladat állítását két különböző, egyaránt teljes bizonyítással is igazoljuk (az első közvetlenül az élcserére, a második a Kruskal-algoritmusra épít).

**1. bizonyítás (indukcióval és szimmetrikus élcserével — vö. 85*. feladat):**

Bizonyítsuk az állítást teljes indukcióval a két fa eltérő éleinek számára, $d = |E(T_1) \setminus E(T_2)|$-re. (Mivel $G$ csúcshalmaza véges, a két $n - 1$ élű feszítőfában $d \ge 0$ véges egész.)

- *Alapeset ($d = 0$):* Ha $E(T_1) \setminus E(T_2) = \emptyset$, akkor $|E(T_1)| = |E(T_2)|$ miatt $T_1 = T_2$, tehát minden $k$ súlyú élből ugyanannyi van a két fában.
- *Indukciós lépés ($d \ge 1$):* Válasszunk egy tetszőleges $e \in E(T_1) \setminus E(T_2)$ élt. A gyakorlatról ismert **85*. feladat** szerint létezik olyan $f \in E(T_2) \setminus E(T_1)$ él, amelyre mind $T'_1 = T_1 - e + f$, mind $T'_2 = T_2 - f + e$ feszítőfa.
  *(Ennek közvetlen igazolása: a $T_1 - e$ erdő két komponensre, egy $(A, B)$ csúcsvágásra bontja $V(G)$-t; a $T_2 + e$ gráfban keletkező egyetlen alapkör az $e$ élet $T_2$-beli élekből álló úttal kerüli meg $A$-tól $B$-ig, így van ezen a körön egy $A$ és $B$ között futó $f \in E(T_2)$ él, amely nyilván nem lehet $E(T_1)$-ben. Ekkor $T_1 - e + f$ összeköti a két komponenst, tehát feszítőfa, $T_2 - f + e$ pedig az alapkör egy élét cseréli ki, így szintén feszítőfa.)*

  Mivel $T_1$ és $T_2$ **minimális** feszítőfák, egyetlen feszítőfa összsúlya sem lehet kisebb náluk:
  $$w(T_1) \le w(T'_1) = w(T_1) - w(e) + w(f) \implies w(e) \le w(f),$$
  $$w(T_2) \le w(T'_2) = w(T_2) - w(f) + w(e) \implies w(f) \le w(e).$$
  A kettőből együtt:
  $$w(e) = w(f).$$
  Következésképpen $T'_1 = T_1 - e + f$ is minimális feszítőfa, és mivel a kicserélt $e$ és $f$ élek súlya megegyezik, minden $k$-ra **ugyanannyi $k$ súlyú él van $T'_1$-ben, mint $T_1$-ben**. Másrészt $f \in E(T_2)$, ezért $|E(T'_1) \setminus E(T_2)| = d - 1$. Az indukciós feltevés szerint $T'_1$-ben és $T_2$-ben minden $k$ súlyú él ugyanannyiszor szerepel, tehát $T_1$-ben és $T_2$-ben is. $\blacksquare$

**2. bizonyítás (a Kruskal-algoritmussal):**

A megjegyzés szerint mind $T_1$, mind $T_2$ megkapható a Kruskal-algoritmussal az élek (azonos súlyokon belüli) megfelelő sorba rendezésével. Rögzítsünk egy tetszőleges $k \ge 1$ pozitív egészt, és jelölje $G_{\le k}$ a $G$-nek azt a részgráfját, amely $V(G)$ összes csúcsából és a legfeljebb $k$ súlyú élekből áll.

Vizsgáljuk meg, hol tart a Kruskal-algoritmus egy tetszőleges $T$ minimális feszítőfa felépítésekor pontosan akkor, amikor **az összes legfeljebb $k$ súlyú élet megvizsgálta**:
- Az algoritmus csak a $\le k$ súlyú élek közül vett be éleket $T$-be, és egy olyan $uv \in E(G_{\le k})$ élt csak akkor hagyhatott ki, ha $u$ és $v$ már ugyanabban az addig felépített komponensben volt.
- Ezért $T_{\le k}$ (a $T$-beli legfeljebb $k$ súlyú élek erdeje) **pontosan ugyanazokra az összefüggő komponensekre osztja $V(G)$-t, mint a teljes $G_{\le k}$ részgráf**!
- Ha $G_{\le k}$-nak $c(G_{\le k})$ darab összefüggő komponense van ($n = |V(G)|$ csúcson), akkor egy minden komponenst kifeszítő erdőnek komponensenként $(|C_i| - 1)$, összesen tehát **pontosan $n - c(G_{\le k})$ éle** van — függetlenül attól, milyen sorrendben választotta a Kruskal-algoritmus az azonos súlyú éleket!

Ugyanez igaz $k - 1$-re is ($c(G_{\le 0}) = n$, mivel minden élsúly pozitív egész), így a pontosan $k$ súlyú élek száma mind $T_1$-ben, mind $T_2$-ben:
$$\big(n - c(G_{\le k})\big) - \big(n - c(G_{\le k-1})\big) = c(G_{\le k-1}) - c(G_{\le k}),$$
ami kizárólag a $G$ gráftól függ, nem magától a feszítőfától. $\blacksquare$

*(Megjegyzés a hibás megoldáshoz: ha egy $4$ csúcsú gráfban egy $4$-kör két átlójával együtt ad két feszítőfát, például az egyikben $2, 2, 2$, a másikban $1, 2, 3$ súlyú élekkel, a súlyösszegük ugyan mindkét esetben $6$, mégis eltér a súlyeloszlás — de ott az $1$-es súlyú él miatt $6$ nem minimális, hiszen létezik olcsóbb fa!)*

::: elmelet
**Elméleti háttér — minimális feszítőfák súlyeloszlásának egyértelműsége.** Ezt a tételt a kombinatorikus optimalizálásban a minimális feszítőfák **erős ekvivalencia-tulajdonságának** nevezik (általánosítása a matroidok mohó algoritmusára is érvényes). Nemcsak az összsúly egyértelmű minden minimális feszítőfában, hanem a súlyok teljes multihalmaza is — és az 1. bizonyítás egyben azt is megmutatja, hogy bármely két minimális feszítőfa azonos súlyú egyesével végzett élcserékkel átvihető egymásba.
:::
