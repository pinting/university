<!-- Generated file, do not edit! Source: Analízis 1/Gyakorlat/Megoldások/, regenerate with: make concat -->

# Analízis 1 – 1. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Osztályozás:** 2 db. zh (várható időpontok: 1. ZH. évfolyam vagy csoportzh (a tanteremhelyzet függvényében): november 3-a kedd, 14:00–16:00 (vagy 3-a kedd 16:15–18:00), 2. ZH. csoportzh: december 9-e szerda, 10:15–12:00), $6 \le$ röpzh $\le 10$, a legrosszabb kettő eredményét eldobom, gyakorlati jegy = 40% 1.zh + 40% 2.zh + 20% rzh ± (órai munka).
>
> **Javítási/pótlási lehetőség:** a pótzhn (várható időpont: december 17-e csütörtök, 14:00–16:00).
>
> A gyakorlatokon való részvétel kötelező. Ha valaki a gyakorlatok 1/4-énél (azaz 6 alkalomnál) többről hiányzik, akkor a gyakorlatvezető csak rendkívüli, igazolt esetben, többletfeladatok teljesítésének előírása után adhat gyakorlati jegyet. Ha valaki a gyakorlatoknak több mint a harmadánál (azaz 8 alkalomnál) többről hiányzik, akkor a gyakorlat érvénytelen.

## 1. feladat

Az egyenlőtlenségre vonatkozó definíciókat használva mutassuk meg, hogy

a) $0 = |x|$ acsa $x = 0$;

b) $|a \cdot b| = |a| \cdot |b|$;

c) $|x - a| < \varepsilon$ acsa $a - \varepsilon < x < a + \varepsilon$.

**Megoldás.**

Az abszolút érték definíciója: $|x| = x$, ha $x \ge 0$, és $|x| = -x$, ha $x < 0$. Ebből azonnal $|x| \ge 0$ minden $x$-re.

a) Ha $x = 0$, akkor $x \ge 0$ miatt $|x| = x = 0$. Megfordítva, legyen $|x| = 0$. Ha $x \ge 0$, akkor $x = |x| = 0$. Ha $x < 0$ volna, akkor $|x| = -x > 0$ lenne, ellentmondás. Tehát $x = 0$.

b) Esetszétválasztás az előjelek szerint.

- $a \ge 0$, $b \ge 0$: ekkor $ab \ge 0$, így $|ab| = ab = |a|\,|b|$.
- $a \ge 0$, $b < 0$: ekkor $ab \le 0$, így $|ab| = -ab = a \cdot (-b) = |a|\,|b|$. (Ha $ab = 0$, akkor $|ab| = 0 = -ab$ is igaz.)
- $a < 0$, $b \ge 0$: szimmetrikus az előzővel: $|ab| = -ab = (-a)\,b = |a|\,|b|$.
- $a < 0$, $b < 0$: ekkor $ab > 0$, így $|ab| = ab = (-a)(-b) = |a|\,|b|$.

c) Először belátjuk: ha $\varepsilon > 0$, akkor $|y| < \varepsilon \iff -\varepsilon < y < \varepsilon$.

Ha $y \ge 0$, akkor $|y| = y$, és $-\varepsilon < 0 \le y$ mindig teljesül, tehát mindkét oldal $y < \varepsilon$-nal ekvivalens. Ha $y < 0$, akkor $|y| = -y$, és $y < 0 < \varepsilon$ mindig teljesül, tehát mindkét oldal $-y < \varepsilon$, azaz $y > -\varepsilon$ állítással ekvivalens.

Ezt $y = x - a$-ra alkalmazva:
$$|x - a| < \varepsilon \iff -\varepsilon < x - a < \varepsilon \iff a - \varepsilon < x < a + \varepsilon,$$
ahol az utolsó lépésben mindhárom oldalhoz $a$-t adtunk (az egyenlőtlenség ekkor megmarad). $\blacksquare$

::: elmelet
**Elméleti háttér — abszolút érték, rendezési axiómák, környezetek.**

*A rendezés axiómái.* A valós számokon adott a $<$ reláció, amely (1) **trichotóm**: bármely $x, y$-ra pontosan egy teljesül az $x < y$, $x = y$, $y < x$ közül; (2) **tranzitív**; (3) **az összeadással kompatibilis**: $x < y \Rightarrow x + z < y + z$; (4) **a szorzással kompatibilis**: $x < y$ és $0 < z$ esetén $xz < yz$. Ezekből következik minden „iskolai” szabály: például negatív számmal szorozva az egyenlőtlenség megfordul, $x^2 \ge 0$, és $0 < 1$.

*Az abszolút érték.* $|x| = x$, ha $x \ge 0$, és $|x| = -x$, ha $x < 0$. Tömören $|x| = \max\{x, -x\}$, és geometriailag $|x - a|$ az $x$ és az $a$ pont **távolsága** a számegyenesen. Alaptulajdonságai:

1. $|x| \ge 0$, és $|x| = 0 \iff x = 0$ (a feladat a) része);
2. $|xy| = |x|\,|y|$ (b) rész), ebből $|-x| = |x|$ és $\left|\frac{x}{y}\right| = \frac{|x|}{|y|}$;
3. $|x| \le c \iff -c \le x \le c$ (a c) rész nem szigorú változata);
4. **háromszög-egyenlőtlenség:** $|x + y| \le |x| + |y|$. *Bizonyítás:* a 3. pont szerint $-|x| \le x \le |x|$ és $-|y| \le y \le |y|$; összeadva $-(|x| + |y|) \le x + y \le |x| + |y|$, ami ismét a 3. pont szerint éppen az állítás;
5. **fordított háromszög-egyenlőtlenség:** $\big||x| - |y|\big| \le |x - y|$ (a 4. pontot az $x = (x - y) + y$ felbontásra alkalmazva $|x| - |y| \le |x - y|$, és a szerepcserével a másik irány).

*Környezetek.* Az $a$ pont $\varepsilon$ sugarú környezete $K_\varepsilon(a) = (a - \varepsilon, a + \varepsilon) = \{x : |x - a| < \varepsilon\}$ — ez a c) rész tartalma. A határérték definíciói („minden $\varepsilon > 0$-hoz van küszöb, amelytől kezdve $|a_n - A| < \varepsilon$”) ezt a nyelvet használják: a távolságra vonatkozó egyenlőtlenséget mindig két egyenlőtlenségre bontjuk szét.

*Módszertani megjegyzés.* Az esetekkel definiált fogalmak (abszolút érték, előjel, egészrész) tulajdonságait esetszétválasztással bizonyítjuk; ügyelni kell arra, hogy az esetek **lefedjék** az összes lehetőséget (itt: $x \ge 0$ vagy $x < 0$), és mindegyikben csak az axiómákat használjuk.
:::

## 2. feladat

Legyen $a, b$ racionális, $c, d$ irracionális. Mit mondhatunk $a + b$, $a + c$, $c + d$, $ab$, $ac$ és $cd$-ről?

**Megoldás.**

- $a + b \in \mathbb{Q}$ és $ab \in \mathbb{Q}$, mert $\mathbb{Q}$ test, zárt az összeadásra és a szorzásra.
- $a + c$ **mindig irracionális**: ha $a + c = r \in \mathbb{Q}$ volna, akkor $c = r - a \in \mathbb{Q}$ lenne, ellentmondás.
- $ac$: ha $a = 0$, akkor $ac = 0$ racionális; ha $a \neq 0$, akkor $ac$ **irracionális**, mert $ac = r \in \mathbb{Q}$ esetén $c = r/a \in \mathbb{Q}$ volna.
- $c + d$ **lehet racionális és irracionális is**: $\sqrt{2} + (-\sqrt{2}) = 0 \in \mathbb{Q}$, míg $\sqrt{2} + \sqrt{2} = 2\sqrt{2} \notin \mathbb{Q}$ (az előző pont szerint, hiszen $2 \neq 0$ racionális).
- $cd$ **szintén lehet mindkettő**: $\sqrt{2}\cdot\sqrt{2} = 2 \in \mathbb{Q}$, míg $\sqrt{2}\cdot\sqrt{3} = \sqrt{6} \notin \mathbb{Q}$.

Az utóbbi igazolása: ha $\sqrt{6} = p/q$ lenne ($p, q \in \mathbb{N}$, relatív prímek), akkor $p^2 = 6q^2$, így $2 \mid p^2$, tehát $2 \mid p$, $p = 2p'$, és $4p'^2 = 6q^2$, azaz $2p'^2 = 3q^2$. Ekkor $2 \mid 3q^2$, tehát $2 \mid q$ – ellentmondás a relatív prímséggel.

::: elmelet
**Elméleti háttér — számtestek és az irracionalitás.**

*Test.* Egy halmaz két művelettel (összeadás, szorzás) **test**, ha mindkét művelet asszociatív és kommutatív, van nullelem és egységelem, minden elemnek van ellentettje, minden nem nulla elemnek van reciproka, és teljesül a disztributivitás. A $\mathbb{Q}$ és az $\mathbb{R}$ test, az irracionális számok halmaza ($\mathbb{R} \setminus \mathbb{Q}$) viszont nem az: még az összeadásra sem zárt.

*A bizonyítások sémája.* Ha $c \notin \mathbb{Q}$ és $a \in \mathbb{Q}$, akkor
$$a + c \in \mathbb{Q} \implies c = (a + c) - a \in \mathbb{Q}, \qquad ac \in \mathbb{Q},\ a \ne 0 \implies c = \frac{ac}{a} \in \mathbb{Q},$$
mert $\mathbb{Q}$ zárt a kivonásra és a nem nulla számmal való osztásra. Ez **indirekt bizonyítás**: a tagadásból ellentmondásra jutunk. Két irracionális számnál ilyen „visszafordítás” nincs, ezért ott csak példák döntenek.

*Irracionalitási bizonyítások.* A $\sqrt2$ (és a megoldásbeli $\sqrt6$) irracionalitásának sémája: ha $\sqrt{m} = \frac pq$ **redukált** tört, akkor $p^2 = mq^2$, és egy alkalmas $p$ prímosztó (itt a $2$) a számlálót és a nevezőt is osztaná. Általánosan: *egy pozitív egész $m$ négyzetgyöke vagy egész, vagy irracionális* — ha $\sqrt m = \frac pq$ redukált tört volna $q > 1$-gyel, akkor $q$ egy $r$ prímosztója osztaná $p^2 = mq^2$-et, tehát $p$-t is, ellentmondás. Így $\sqrt2, \sqrt3, \sqrt6$ irracionális, a $\sqrt4$ nem.

*Sűrűség.* Bármely két valós szám között van racionális és irracionális szám is (az arkhimédészi tulajdonság következménye); a $\mathbb{Q}$ „sok lyukat” tartalmaz, ezeket tölti ki a teljességi axióma.
:::

## 3. feladat

Mutassuk meg, hogy $2^n > n^2$, ha $n \ge N_0$. Adjuk meg a lehető legkisebb $N_0$-t!

**Megoldás.**

Az első néhány érték:

| $n$ | 1 | 2 | 3 | 4 | 5 | 6 |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $2^n$ | 2 | 4 | 8 | 16 | 32 | 64 |
| $n^2$ | 1 | 4 | 9 | 16 | 25 | 36 |

Tehát $n = 2, 3, 4$ esetén nem igaz az állítás, $n = 5$-re igaz. Teljes indukcióval megmutatjuk, hogy minden $n \ge 5$-re $2^n > n^2$.

*Kezdőlépés:* $n = 5$: $32 > 25$.

*Indukciós lépés:* tegyük fel, hogy $2^n > n^2$ valamely $n \ge 5$-re. Ekkor
$$2^{n+1} = 2 \cdot 2^n > 2n^2 = n^2 + n^2 \ge n^2 + 2n + 1 = (n+1)^2,$$
ahol felhasználtuk, hogy $n^2 \ge 2n + 1$, ami $(n-1)^2 \ge 2$ miatt minden $n \ge 3$-ra igaz.

Mivel $n = 4$-re az egyenlőtlenség nem teljesül, a lehető legkisebb küszöb $N_0 = 5$.

::: elmelet
**Elméleti háttér — teljes indukció, küszöbindex, a hatványfüggvény és az exponenciális növekedés.**

*A teljes indukció elve.* Ha $P(n)$ egy állítás, $P(N_0)$ igaz, és minden $n \ge N_0$-ra $P(n) \Rightarrow P(n+1)$, akkor $P(n)$ igaz minden $n \ge N_0$-ra. (A $\mathbb{N}$ jólrendezettségéből következik: ha volna hamis eset, a legkisebb hamis $n$-re $P(n-1)$ igaz, $P(n)$ hamis volna.) **Erős indukció:** ha $P(N_0), \dots, P(n)$ együtt maga után vonja $P(n+1)$-et, a következtetés ugyanaz.

*Az indukciós lépés szerkezete.* A $2^{n+1} > (n+1)^2$ bizonyításánál a $2^{n+1} = 2 \cdot 2^n$ felbontással az indukciós feltevésre vezetjük vissza a bal oldalt, és az eltérést egy **segédegyenlőtlenség** pótolja: $2n^2 \ge (n+1)^2 \iff n^2 - 2n - 1 \ge 0 \iff (n-1)^2 \ge 2$, ami $n \ge 3$-ra igaz. Itt látszik a gyakori csapda: a segédegyenlőtlenség érvényességi tartománya ($n \ge 3$) és az állításé ($n \ge 5$) különbözhet; az indukció kezdőpontja a kettő közül a nagyobbik, és ott külön ellenőrizni kell a kezdőlépést.

*A „legkisebb küszöb”.* A legkisebb $N_0$ meghatározásához két dolog kell: (1) $n \ge N_0$-ra az állítás igaz (indukció), (2) $n = N_0 - 1$-re hamis (ellenpélda). Figyeljünk: a $2^n > n^2$ az $n = 1$-re igaz, $n = 2, 3, 4$-re hamis — tehát a kérdés az, hogy *ettől kezdve mindig* igaz legyen.

*Mi van a háttérben?* Az exponenciális függvény minden hatványfüggvénynél gyorsabban nő: minden $k$-ra és $a > 1$-re $\frac{n^k}{a^n} \to 0$. Ez a sorozatok fejezetben a „nevezetes határértékek” egyike lesz; egy elemi bizonyítása: $a = 1 + h$ esetén a binomiális tétel szerint $a^n \ge \binom{n}{k+1}h^{k+1}$, ami $n^{k+1}$ nagyságrendű.
:::

## 4. feladat

Bizonyítsuk be az úgynevezett *binomiális tételt*, azaz hogy
$$(a + b)^n = \binom{n}{0} a^n + \binom{n}{1} a^{n-1} b + \dots + \binom{n}{n} b^n.$$

**Megoldás.**

Először a **Pascal-azonosságot** igazoljuk: $1 \le k \le n$ esetén $\binom{n}{k} + \binom{n}{k-1} = \binom{n+1}{k}$. Valóban,
$$\binom{n}{k} + \binom{n}{k-1} = \frac{n!}{k!\,(n-k)!} + \frac{n!}{(k-1)!\,(n-k+1)!} = \frac{n!\,\big((n-k+1) + k\big)}{k!\,(n-k+1)!} = \frac{(n+1)!}{k!\,(n+1-k)!}.$$

A tételt $n$ szerinti indukcióval bizonyítjuk; tömören: $(a+b)^n = \sum_{k=0}^{n} \binom{n}{k} a^{n-k} b^k$.

*Kezdőlépés:* $n = 1$: $(a+b)^1 = \binom{1}{0}a + \binom{1}{1}b$. (Az $n = 0$ eset is igaz: $1 = \binom{0}{0}$.)

*Indukciós lépés:* tegyük fel az állítást $n$-re. Ekkor
$$(a+b)^{n+1} = (a+b)\sum_{k=0}^{n}\binom{n}{k}a^{n-k}b^k = \sum_{k=0}^{n}\binom{n}{k}a^{n+1-k}b^k + \sum_{k=0}^{n}\binom{n}{k}a^{n-k}b^{k+1}.$$
A második összegben $j = k + 1$ új indexet bevezetve az $\sum_{j=1}^{n+1}\binom{n}{j-1}a^{n+1-j}b^j$ alakot kapjuk. A két összeget összevonva:
$$(a+b)^{n+1} = a^{n+1} + \sum_{k=1}^{n}\left[\binom{n}{k} + \binom{n}{k-1}\right]a^{n+1-k}b^k + b^{n+1} = \sum_{k=0}^{n+1}\binom{n+1}{k}a^{n+1-k}b^k,$$
a Pascal-azonosság és $\binom{n+1}{0} = \binom{n+1}{n+1} = 1$ miatt. $\blacksquare$

::: elmelet
**Elméleti háttér — binomiális együtthatók és a binomiális tétel.**

*Definíció és kombinatorikus jelentés.* $\binom{n}{k} = \frac{n!}{k!\,(n-k)!}$ ($0 \le k \le n$) egy $n$ elemű halmaz $k$ elemű részhalmazainak száma. Tulajdonságai: $\binom n0 = \binom nn = 1$, szimmetria $\binom nk = \binom{n}{n-k}$, és a **Pascal-azonosság** $\binom{n}{k-1} + \binom nk = \binom{n+1}{k}$. Az utóbbi kombinatorikusan: az $[n+1]$ halmaz $k$ elemű részhalmazai vagy tartalmazzák az $n+1$-et (ekkor a többi $k-1$ elem $[n]$-ből jön), vagy nem.

*A binomiális tétel két bizonyítása.* (1) Indukcióval, ahogy a megoldásban: a szorzás után az összegzési index eltolásával a két összeg azonos hatványú tagjait párosítjuk, és a Pascal-azonosság adja az új együtthatót. (2) Kombinatorikusan: $(a+b)^n = (a+b)(a+b)\cdots(a+b)$ kifejtésében minden tagot úgy kapunk, hogy mind az $n$ tényezőből $a$-t vagy $b$-t választunk; az $a^{n-k}b^k$ tag annyiszor keletkezik, ahányféleképpen kiválasztható az a $k$ tényező, amelyből $b$-t veszünk: $\binom nk$-szor.

*Az indexeltolás technikája.* $\sum_{k=0}^{n} c_k b^{k+1} = \sum_{j=1}^{n+1} c_{j-1}b^j$: az új index $j = k + 1$, a határok is eltolódnak. Ez a sorok és összegek kezelésének alapművelete (teleszkopikus összegeknél, hatványsoroknál is).

*Következmények, amelyeket az analízisben használunk.*

- $a = b = 1$: $\sum_k \binom nk = 2^n$; $a = 1$, $b = -1$: $\sum_k (-1)^k\binom nk = 0$ ($n \ge 1$).
- **Bernoulli-egyenlőtlenség** $h \ge 0$-ra: $(1 + h)^n \ge 1 + nh$ (az első két tag), sőt $(1+h)^n \ge \binom n2 h^2$; ezekből például $\sqrt[n]{n} \to 1$ és $q^n \to 0$ ($|q| < 1$) bizonyítható.
- Az $\left(1 + \frac1n\right)^n$ sorozat monotonitásának egyik bizonyítása is a binomiális kifejtésen alapul.
:::

## 5. feladat

Döntsük el az alábbi halmazokról, hogy alulról korlátosak-e, felülről korlátosak-e, korlátosak-e, és hogy van-e legkisebb illetve legnagyobb elemük?

a) prímszámok halmaza, b) pozitív számok halmaza, c) $[-5, -2)$, d) $\{\frac{1}{n} : n \in \mathbb{N}\}$, e) $\{x \in \mathbb{R} : x \le 73\}$, f) $\{x \in \mathbb{Q} : x \le 73\}$, g) $\{x \in \mathbb{R} : x \le \sqrt{2}\}$, h) $\{x \in \mathbb{Q} : x \le \sqrt{2}\}$.

**Megoldás.**

Jelölés: „a.k." = alulról korlátos, „f.k." = felülről korlátos.

a) **Prímszámok:** a.k. (pl. 2 alsó korlát), nem f.k. (végtelen sok prím van – Eukleidész), tehát nem korlátos. Legkisebb elem: $2$; legnagyobb nincs.

b) **Pozitív számok** $(0, \infty)$: a.k. (0 alsó korlát), nem f.k. (az arkhimédészi tulajdonság szerint bármely $K$-nál van nagyobb természetes szám), nem korlátos. Legkisebb elem nincs (ha $x > 0$, akkor $x/2$ kisebb pozitív szám), legnagyobb sincs.

c) $[-5, -2)$: korlátos. Minimum: $-5$. Maximum nincs: ha $x \in [-5, -2)$, akkor $\frac{x + (-2)}{2}$ is a halmazban van, és nagyobb $x$-nél. (A szuprémum $-2$.)

d) $\{\frac{1}{n} : n \in \mathbb{N}\}$: korlátos ($0 < \frac1n \le 1$). Maximum: $1$ ($n = 1$). Minimum nincs: $\frac{1}{n+1} < \frac{1}{n}$. Az infimum $0$: ha $\varepsilon > 0$, az **arkhimédészi tulajdonság** miatt van $n > 1/\varepsilon$, azaz $\frac{1}{n} < \varepsilon$, így semmilyen pozitív szám nem alsó korlát.

e) $\{x \in \mathbb{R} : x \le 73\} = (-\infty, 73]$: f.k., nem a.k., maximum $73$, minimum nincs.

f) $\{x \in \mathbb{Q} : x \le 73\}$: f.k., nem a.k. (tartalmazza a $-n$ egészeket), maximum $73$ (hiszen $73 \in \mathbb{Q}$), minimum nincs.

g) $\{x \in \mathbb{R} : x \le \sqrt{2}\}$: f.k., nem a.k., maximum $\sqrt{2}$, minimum nincs.

h) $\{x \in \mathbb{Q} : x \le \sqrt{2}\}$: f.k. (pl. $\sqrt2$ vagy $2$ felső korlát), nem a.k., minimum nincs. **Maximum sincs:** $\sqrt{2} \notin \mathbb{Q}$, így a halmaz minden $q$ eleme $q < \sqrt{2}$, és $\mathbb{Q}$ sűrűsége miatt van $q'$ racionális szám, amelyre $q < q' < \sqrt{2}$. A szuprémum $\sqrt{2}$, de az nem eleme a halmaznak.

::: elmelet
**Elméleti háttér — korlátosság, minimum és maximum, a $\mathbb{Q}$ és az $\mathbb{R}$ különbsége.**

*Definíciók.* Legyen $\emptyset \ne H \subseteq \mathbb{R}$.

- $H$ **felülről korlátos**, ha $\exists K \in \mathbb{R}\ \forall x \in H: x \le K$ ($K$ egy **felső korlát**); **alulról korlátos** hasonlóan; **korlátos**, ha mindkettő, ekvivalensen $\exists K\ \forall x \in H: |x| \le K$.
- $M$ a $H$ **maximuma** (legnagyobb eleme), ha $M \in H$ és $M$ felső korlát. A maximum, ha van, egyértelmű.

*Nemlétezés bizonyítása.* „Nincs maximum” azt jelenti: $\forall x \in H\ \exists y \in H: y > x$ — minden elemhez mutatunk nagyobbat ($\frac{x + \sup H}{2}$, $\frac{x}{2}$, $\frac{1}{n+1}$ stb.). „Nem felülről korlátos”: $\forall K\ \exists x \in H: x > K$.

*Az arkhimédészi tulajdonság.* $\forall x \in \mathbb{R}\ \exists n \in \mathbb{N}: n > x$; ekvivalens alakja: $\forall \varepsilon > 0\ \exists n: \frac1n < \varepsilon$. A teljességi axiómából következik: ha $\mathbb{N}$ felülről korlátos volna, lenne $s = \sup \mathbb{N}$, és $s - 1$ nem volna felső korlát, tehát $n > s - 1$ valamely $n \in \mathbb{N}$-re — de akkor $n + 1 > s$, ellentmondás. Ezzel látjuk, hogy $\{\frac1n\}$ infimuma $0$.

*Sűrűség.* Ha $a < b$ valós, van $q \in \mathbb{Q}$, hogy $a < q < b$: válasszunk $n$-t, amelyre $\frac1n < b - a$, és legyen $m$ a legkisebb egész, amelyre $\frac mn > a$; ekkor $\frac{m}{n} \le a + \frac1n < b$.

*Miért nincs maximuma a $\{q \in \mathbb{Q} : q \le \sqrt2\}$ halmaznak?* Mert $\sqrt 2 \notin \mathbb Q$, és a sűrűség miatt minden ilyen $q$ és $\sqrt2$ közé fér egy racionális szám. Ugyanez a halmaz a **racionális számok körében** nem rendelkezik legkisebb felső korláttal (bármely racionális felső korlátnál van kisebb racionális felső korlát) — ez a $\mathbb{Q}$ „hiányossága”, amelyet a teljességi axióma szüntet meg $\mathbb{R}$-ben.

*Végtelen sok prím.* (Eukleidész) Ha $p_1, \dots, p_k$ volna az összes prím, a $p_1\cdots p_k + 1$ szám egyik prímosztója sem lehetne köztük — ellentmondás. Ezért a prímek halmaza felülről nem korlátos.
:::

## 6. feladat

Legyen $H$ egy valós számokból álló halmaz. A $H$ halmaz milyen tulajdonságait fejezik ki az alábbi állítások?

a) $(\forall x \in \mathbb{R})(\exists y \in H)(x < y)$;

b) $(\forall x \in H)(\exists y \in \mathbb{R})(x < y)$;

c) $(\forall x \in H)(\exists y \in H)(x < y)$.

**Megoldás.**

a) Bármely valós számnál van nagyobb eleme $H$-nak: **$H$ felülről nem korlátos** (és így nem üres).

b) $H$ minden eleménél van nagyobb valós szám – ez **minden** $H \subset \mathbb{R}$-re igaz (pl. $y = x + 1$), tehát **semmit sem mond** $H$-ról.

c) $H$ minden eleménél van nagyobb eleme $H$-nak: **$H$-nak nincs legnagyobb eleme** (maximuma). Pl. $(-\infty, 1)$ teljesíti, $(-\infty, 1]$ nem. (Ha $H \neq \emptyset$, ebből következik, hogy $H$ végtelen; az üres halmaz üresen teljesíti.)

::: elmelet
**Elméleti háttér — kvantoros állítások olvasása és tagadása.**

*Sorrend.* A $\forall x\ \exists y$ alakban $y$ függhet $x$-től („minden $x$-hez van $y$”), a $\exists y\ \forall x$ alakban egyetlen $y$ jó minden $x$-hez. Ezért $\exists y\ \forall x\ P(x, y) \Rightarrow \forall x\ \exists y\ P(x, y)$, de visszafelé általában nem.

*Tagadás.* $\neg(\forall x\ P(x)) \equiv \exists x\ \neg P(x)$ és $\neg(\exists x\ P(x)) \equiv \forall x\ \neg P(x)$: a kvantorok „átfordulnak”, az állítás tagadódik. A korlátos kvantor ($\forall x \in H$) ugyanígy viselkedik: $\neg(\forall x \in H\ P(x)) \equiv \exists x \in H\ \neg P(x)$.

*Alkalmazás a feladatra.*

- „$H$ felülről korlátos”: $\exists K \in \mathbb{R}\ \forall y \in H: y \le K$. Tagadása: $\forall K \in \mathbb{R}\ \exists y \in H: y > K$ — ez az a) állítás (a betűk más nevűek).
- „$H$-nak van maximuma”: $\exists y \in H\ \forall x \in H: x \le y$. Tagadása: $\forall y \in H\ \exists x \in H: x > y$ — ez a c) állítás.
- A b) állítás azért üres tartalmú, mert a $y$ egy **nagyobb** halmazból ($\mathbb{R}$) választható, és $\mathbb{R}$-nek nincs legnagyobb eleme.

*Az üres halmaz.* $\forall x \in \emptyset\ P(x)$ mindig igaz („üresen teljesül”), $\exists x \in \emptyset\ P(x)$ mindig hamis. Ezért a c) állítást az üres halmaz is teljesíti, az a)-t viszont nem.

*Kapcsolat a határértékkel.* A $\lim a_n = A$ definíciója ($\forall \varepsilon > 0\ \exists N\ \forall n \ge N: |a_n - A| < \varepsilon$) három kvantort tartalmaz; tagadása — „nem $A$ a határérték” — $\exists \varepsilon > 0\ \forall N\ \exists n \ge N: |a_n - A| \ge \varepsilon$. A kvantorok helyes tagadása az analízis minden indirekt bizonyításának alapja.
:::

## 7. feladat

Legyen $A = (0, 1)$, $B = [-\sqrt{2}, \sqrt{2}]$,
$$C^+ = \left\{\frac{1}{2^n} + \frac{1}{2^m} : n \in \mathbb{N},\ m \in \mathbb{N}\right\}, \quad C^- = \left\{\frac{1}{2^n} - \frac{1}{2^m} : n \in \mathbb{N},\ m \in \mathbb{N}\right\},$$
$$D = \left\{\frac{1}{n} + m : n \in \mathbb{N},\ m \in \mathbb{N}\right\}, \quad E = \left\{\frac{1}{n} : n \in \mathbb{N}\right\}, \quad F = \left\{-\frac{1}{n} : n \in \mathbb{N}\right\}.$$
Határozzuk meg – amennyiben léteznek – a fenti halmazok szuprémumát, infimumát, maximumát, minimumát.

**Megoldás.**

Itt $\mathbb{N} = \{1, 2, 3, \dots\}$.

**$A = (0, 1)$:** $\sup A = 1$, $\inf A = 0$, maximum és minimum nincs (nyílt intervallum: $x \in A$ esetén $\frac{x+1}{2}$ és $\frac{x}{2}$ is $A$-ban van).

**$B = [-\sqrt2, \sqrt2]$:** $\max B = \sup B = \sqrt{2}$, $\min B = \inf B = -\sqrt{2}$.

**$C^+$:** mivel $\frac{1}{2^n} \le \frac12$, minden elem $\le 1$, és $n = m = 1$-re az elem éppen $1$: $\max C^+ = \sup C^+ = 1$. Minden elem pozitív, és $\inf C^+ = 0$: adott $\varepsilon > 0$-hoz (arkhimédészi tulajdonság) van $n$, amelyre $\frac{2}{2^n} < \varepsilon$, és akkor $\frac{1}{2^n} + \frac{1}{2^n} < \varepsilon$. Minimum nincs (a $0$ nem eleme).

**$C^-$:** $\frac{1}{2^n} - \frac{1}{2^m} < \frac{1}{2^n} \le \frac12$, tehát $\frac12$ felső korlát, és nem eleme a halmaznak. Az $n = 1$, $m \to \infty$ választással az $\frac12 - \frac{1}{2^m}$ elemek tetszőlegesen megközelítik $\frac12$-et, így $\sup C^- = \frac12$, maximum nincs. A halmaz szimmetrikus a $0$-ra ($n$ és $m$ felcserélésével az elem előjelet vált), így $\inf C^- = -\frac12$, minimum nincs.

**$D$:** $\frac1n + m > m \ge 1$, és $m = 1$, $n \to \infty$ esetén az elemek tetszőlegesen közel kerülnek $1$-hez: $\inf D = 1$, minimum nincs. $D$ felülről nem korlátos ($m$ tetszőleges), így szuprémuma (a valós számok között) és maximuma nincs.

**$E$:** $\max E = \sup E = 1$, $\inf E = 0$, minimum nincs (ld. 5. d).

**$F = -E$:** $\min F = \inf F = -1$, $\sup F = 0$, maximum nincs.

::: elmelet
**Elméleti háttér — szuprémum, infimum és a teljességi axióma.**

*Definíció.* A felülről korlátos $H \ne \emptyset$ halmaz **szuprémuma** a legkisebb felső korlátja: $s = \sup H$, ha $s$ felső korlát, és minden $s' < s$ már nem felső korlát. **Infimum:** a legnagyobb alsó korlát. $\inf H = -\sup(-H)$, ahol $-H = \{-x : x \in H\}$ (az $F = -E$ példája).

*Teljességi (szuprémum-) axióma.* Minden nem üres, felülről korlátos $H \subseteq \mathbb{R}$ halmaznak van szuprémuma (a valós számok között). A $\mathbb{Q}$ erre nem teljesíti: a $\{q \in \mathbb{Q} : q^2 < 2\}$ halmaznak nincs racionális szuprémuma.

*Az $\varepsilon$-es jellemzés (ezt használjuk a gyakorlatban).* $s = \sup H$ pontosan akkor, ha

1. $\forall x \in H: x \le s$, és
2. $\forall \varepsilon > 0\ \exists x \in H: x > s - \varepsilon$.

A 2. pont azt mondja, hogy $s - \varepsilon$ már nem felső korlát. A feladatban a 2. pontot úgy ellenőrizzük, hogy a halmazból egy **sorozatot** választunk, amely $s$-hez tart (például $\frac12 - \frac{1}{2^m} \to \frac12$); ez a „sorozatos jellemzés”: $s = \sup H \iff s$ felső korlát és van $x_n \in H$, $x_n \to s$.

*Maximum és szuprémum.* Ha $H$-nak van maximuma, az a szuprémum is. Megfordítva, a szuprémum pontosan akkor maximum, ha eleme a halmaznak. Nyílt intervallumnak és a $\{\frac1n\}$-típusú halmazok „határpontjának” ezért van szuprémuma/infimuma, de nincs maximuma/minimuma.

*Kiterjesztett jelölés.* Ha $H$ felülről nem korlátos, $\sup H = +\infty$-t írunk (a $D$ halmaz); ez a bővített számegyenes konvenciója, nem valós szám.

*Hasznos számítási szabályok.* Ha $A + B = \{a + b : a \in A, b \in B\}$, akkor $\sup(A + B) = \sup A + \sup B$; $c > 0$-ra $\sup(cA) = c\sup A$, $c < 0$-ra $\sup(cA) = c\inf A$. A $C^+$ és $C^-$ halmazok ilyen összegként is felfoghatók ($C^- = E' + (-E')$, ahol $E' = \{2^{-n}\}$), innen $\sup C^- = \frac12 + 0$ és $\inf C^- = 0 - \frac12$.
:::

## 8. feladat

Legyen $A \cap B \neq \emptyset$. Mit tudunk mondani $\sup A$, $\sup B$ és $\sup(A \cup B)$, $\sup(A \cap B)$, illetve $\sup(A \setminus B)$ kapcsolatáról?

**Megoldás.**

**$\sup(A \cup B) = \max\{\sup A, \sup B\}$** (ha valamelyik nem korlátos felülről, akkor az unió sem, és mindkét oldal $+\infty$). Bizonyítás: legyen $s = \max\{\sup A, \sup B\}$. Ekkor minden $x \in A \cup B$-re $x \le s$, tehát $s$ felső korlát. Ha $s' < s$, és mondjuk $s = \sup A$, akkor van $a \in A \subset A \cup B$, amelyre $a > s'$, így $s'$ nem felső korlát. Tehát $s$ a legkisebb felső korlát.

**$\sup(A \cap B) \le \min\{\sup A, \sup B\}$**, mert $A \cap B \subset A$ és $A \cap B \subset B$, a részhalmaz szuprémuma pedig nem nagyobb (a feltétel szerint $A \cap B \ne \emptyset$, így a szuprémum létezik, ha $A$ vagy $B$ korlátos). Egyenlőség nem feltétlenül áll: $A = \{0, 2\}$, $B = \{0, 3\}$ esetén $\sup(A \cap B) = 0 < 2 = \min\{2, 3\}$.

**$\sup(A \setminus B)$:** ha $A \setminus B \neq \emptyset$, akkor $\sup(A \setminus B) \le \sup A$, és lehet egyenlőség is, szigorú egyenlőtlenség is: $A = \{1, 2\}$, $B = \{2\}$: $\sup(A \setminus B) = 1 < 2$; $A = \{1, 3\}$, $B = \{1\}$: $\sup(A \setminus B) = 3 = \sup A$. $\sup B$-vel nincs általános összefüggés (az előző két példában egyszer kisebb, egyszer nagyobb nála). Ha $A \subset B$, akkor $A \setminus B = \emptyset$, és a szuprémum nem is értelmezett. Mindig igaz viszont, hogy $A \setminus B \ne \emptyset$ esetén $\sup A = \max\{\sup(A \setminus B), \sup(A \cap B)\}$, hiszen $A = (A \setminus B) \cup (A \cap B)$.

::: elmelet
**Elméleti háttér — a szuprémum és a halmazműveletek.**

*Monotonitás.* Ha $\emptyset \ne A \subseteq B$ és $B$ felülről korlátos, akkor $\sup A \le \sup B$: a $\sup B$ felső korlátja $B$-nek, így $A$-nak is, a $\sup A$ pedig a *legkisebb* felső korlát. (Ugyanígy $\inf A \ge \inf B$.)

*Unió.* $\sup(A \cup B) = \max\{\sup A, \sup B\}$ — a bizonyítás a szuprémum két tulajdonságát ellenőrzi: (1) felső korlát, (2) nincs kisebb. Indukcióval véges sok halmazra is igaz; **végtelen sok** halmaz uniójára $\sup\bigcup_i A_i = \sup_i \sup A_i$ (a jobb oldal lehet $+\infty$ akkor is, ha minden $A_i$ korlátos, például $A_i = \{i\}$).

*Metszet és különbség.* Csak a monotonitásból adódó egyenlőtlenségek igazak: $\sup(A \cap B) \le \min\{\sup A, \sup B\}$ és $\sup(A \setminus B) \le \sup A$. Egyenlőség általában nem áll, mert a metszet „elveszítheti” a nagy elemeket. A bizonyítás és az ellenpéldák szerepe: egy *általános* egyenlőtlenséget bizonyítunk, az egyenlőség *általános* érvényességét ellenpéldával cáfoljuk.

*Létezési feltételek.* A szuprémum csak nem üres halmazra értelmes: ezért kell az $A \cap B \ne \emptyset$ feltétel (és az $A \setminus B \ne \emptyset$ külön kikötése). Ha a halmaz felülről nem korlátos, a $\sup = +\infty$ konvencióval az unióra vonatkozó képlet továbbra is érvényes.

*Kapcsolódó gondolat.* A $\sup A = \max\{\sup(A \setminus B), \sup(A \cap B)\}$ azonosság a $\sup$ „additív” viselkedése a halmaz felbontására — ezt használjuk majd a limsup kiszámításánál is: egy sorozat limsupja a részsorozatainak limsupjai közül a legnagyobb, ha a részsorozatok indexhalmazai lefedik $\mathbb{N}$-et (véges sok részsorozat esetén).
:::

## 9*. feladat

A négyzetrácspontokon egy bolha ugrál. Az origóból indul, és egyforma hosszú és egyforma irányú ugrásokat hajt végre. Minden ugrás után mi rácsaphatunk egy rácspontra. Van-e olyan stratégia, amivel biztosan le tudjuk csapni?

**Megoldás.**

**Van ilyen stratégia.** A bolha ugrásvektora egy rögzített, ismeretlen $v = (a, b) \in \mathbb{Z}^2$ (az egyforma hosszú és irányú ugrások miatt minden ugrás ugyanaz a vektor), így a $k$-adik ugrás után a $k \cdot v$ rácsponton van.

A $\mathbb{Z}^2$ halmaz megszámlálható, tehát sorba rendezhető: $v_1, v_2, v_3, \dots$ (pl. a $\max(|a|, |b|) = 0, 1, 2, \dots$ „négyzetes héjak" szerint, mindegyik héj véges sok pontját valamilyen sorrendben). **Stratégia:** a $k$-adik ugrás után a $k \cdot v_k$ pontra csapunk le.

A bolha tényleges ugrásvektora szerepel a felsorolásban, mondjuk $v = v_K$. A $K$-adik ugrás után a bolha a $K \cdot v_K$ pontban van, és mi éppen oda csapunk – tehát legkésőbb ekkor eltaláljuk.

::: elmelet
**Elméleti háttér — megszámlálható halmazok és a „minden hipotézis sorra kerül” módszer.**

*Definíció.* Egy $H$ halmaz **megszámlálhatóan végtelen**, ha van $\mathbb{N} \to H$ bijekció, vagyis elemei egy $h_1, h_2, \dots$ sorozatba rendezhetők, amelyben minden elem pontosan egyszer szerepel. **Megszámlálható**, ha véges vagy megszámlálhatóan végtelen.

*Alapvető példák.* $\mathbb{N}$, $\mathbb{Z}$ ($0, 1, -1, 2, -2, \dots$), $\mathbb{N} \times \mathbb{N}$ és $\mathbb{Z} \times \mathbb{Z}$ (átlók vagy „héjak” szerint felsorolva — a $\max(|a|, |b|) = r$ héj $8r$ pontból áll, $r \ge 1$), $\mathbb{Q}$ (törtek, mint számpárok). Megszámlálható halmazok megszámlálható uniója is megszámlálható. Az $\mathbb{R}$ viszont **nem** megszámlálható (Cantor átlós eljárása vagy a Cantor-féle közösrész-tétel alapján).

*A stratégia logikája.* A bolha pályáját két ismeretlen egész szám, $(a, b)$ határozza meg: a „hipotézisek” halmaza $\mathbb{Z}^2$, megszámlálható. A $k$-adik időpontban a $k$-adik hipotézist teszteljük, és a teszt a hipotézis alapján pontosan megjósolható helyre csap. Mivel a valódi hipotézis valamikor (véges időn belül) sorra kerül, a stratégia biztosan nyer. Ha a bolha kezdőpontja is ismeretlen volna ($(p, q) + k(a, b)$), a hipotézisek halmaza $\mathbb{Z}^4$ lenne — szintén megszámlálható, a stratégia ugyanúgy működik. Ha viszont a bolha **valós** vektorral ugrálhatna (nem rácspontokra), a hipotézisek halmaza $\mathbb{R}^2$ volna, nem megszámlálható, és ilyen stratégia nem létezik.

*Ugyanez a gondolat máshol.* Így látjuk be például, hogy az algebrai számok halmaza megszámlálható (egész együtthatós polinomokból megszámlálhatóan sok van, mindegyiknek véges sok gyöke), és ezért „majdnem minden” valós szám transzcendens.
:::

## 10*. feladat

A derékszögű koordinátarendszerben bizonyos rácspontokat megmérgeztek úgy, hogy minden $n$-re az $x + y \le n$ tartományban legfeljebb $n$ mérgezett pont van. Egy bolha az origóból indulva ugrál, mindig vagy a $(0, 1)$, vagy az $(1, 0)$ vektorral ugrik. Bizonyítsuk be, hogy létezik olyan végtelen útvonal, ami elkerüli a mérgezett pontokat.

**Megoldás.**

Jelölje $D_n = \{(x, y) \in \mathbb{Z}^2 : x, y \ge 0,\ x + y = n\}$ az $n$-edik „átlót" ($n + 1$ pont), és $p_n$ a $D_n$-en lévő mérgezett pontok számát. A bolha minden ugrással a következő átlóra lép. A feltétel: $p_0 + p_1 + \dots + p_n \le n$ minden $n$-re; speciálisan $p_0 = 0$, az origó nincs megmérgezve.

Legyen $R_n \subseteq D_n$ azon pontok halmaza, ahová a bolha az origóból mérgezett pont érintése nélkül eljuthat. **Állítás:** $|R_n| \ge n + 1 - (p_0 + \dots + p_n) \ge 1$.

*Bizonyítás indukcióval.* $R_0 = \{(0,0)\}$, $|R_0| = 1 = 1 - p_0$. Tegyük fel, hogy $|R_n| = r \ge 1$, és $R_n$ pontjainak $x$-koordinátái $x_1 < x_2 < \dots < x_r$. Ezekből egy ugrással a $D_{n+1}$ azon pontjaiba juthatunk, amelyek $x$-koordinátája $x_i$ (felfelé ugrás) vagy $x_i + 1$ (jobbra ugrás). Az $\{x_1, \dots, x_r, x_r + 1\}$ halmaz már $r + 1$ különböző elemű, tehát legalább $r + 1$ pont érhető el $D_{n+1}$-en, ezek közül legfeljebb $p_{n+1}$ mérgezett. Így
$$|R_{n+1}| \ge r + 1 - p_{n+1} \ge (n + 1 - p_0 - \dots - p_n) + 1 - p_{n+1} = n + 2 - (p_0 + \dots + p_{n+1}) \ge 1.$$

**Végtelen út (König-lemma).** Nevezzünk egy biztonságosan elérhető $P$ pontot *jónak*, ha $P$-ből minden későbbi átlóra el lehet jutni biztonságos úton. Az origó jó, mert minden $R_N$ nemüres. Ha $P$ jó, akkor (legfeljebb kettő) biztonságos szomszédja közül valamelyik jó: ha egyik sem volna az, akkor mindegyik szomszédból csak egy-egy véges $N_Q$ átlóig lehetne eljutni, és $P$-ből sem lehetne $\max N_Q$-nál messzebbre jutni – ellentmondás. Így az origóból indulva lépésenként mindig jó pontra ugorva egy végtelen, mérgezett pontot elkerülő utat kapunk. $\blacksquare$

::: elmelet
**Elméleti háttér — invariánsok indukcióval és a König-lemma.**

*Számolási invariáns.* A bizonyítás első része azt tartja fenn indukcióval, hogy az $n$-edik átlón az elérhető biztonságos pontok száma legalább $n + 1 - (\text{az első } n \text{ átló mérgezett pontjainak száma}) \ge 1$. A kulcs egy **injektivitási** megfigyelés: az $r$ elérhető pontból egy lépéssel legalább $r + 1$ különböző pont érhető el a következő átlón (a legjobboldalibbikből jobbra lépve egy új pont is). Ez a „növekedés” versenyez a mérgezett pontok gyűlésével, és a feltétel ($\le n$ méreg az első $n$ átlón) éppen annyit enged meg, hogy mindig maradjon elérhető pont.

*König-lemma.* *Ha egy fa végtelen sok csúcsú, és minden csúcsának véges sok gyereke van, akkor van benne a gyökértől induló végtelen út.* Bizonyítás: a gyökérnek végtelen sok leszármazottja van; mivel véges sok gyereke van, valamelyiknek szintén végtelen sok leszármazottja van (különben véges sok véges halmaz uniója véges volna); erre a gyerekre lépve ugyanez ismételhető, és ez egy végtelen utat ad. A feladatban a fa csúcsai a biztonságos véges utak, a gyerekek a $\le 2$ folytatás; a „végtelen sok leszármazott” helyett azt használtuk, hogy „minden átlóig el lehet jutni” — ugyanaz a gondolat.

*Miért nem elég az első rész?* Abból, hogy minden $N$-re van biztonságos út az $N$-edik átlóig, még nem következik közvetlenül egy *végtelen* biztonságos út: a különböző $N$-ekhez tartozó utak teljesen eltérők lehetnek. A König-lemma a „minden véges szinten van” állításból a „végtelenben is van” állításra tér át — ez a **kompaktsági** érvelés egy formája, amelynek analízisbeli megfelelője a Bolzano–Weierstrass-tétel (minden korlátos sorozatnak van konvergens részsorozata, amelyet hasonló „felezéses, mindig a végtelen részt választjuk” eljárással kapunk).
:::

## Röpzhra

Háromszög-egyenlőtlenség, felső/alsó korlát, korlátos halmaz, min, max, teljességi tulajdonság/axióma, Arkhimédész-féle tulajdonság/axióma.

# Analízis 1 – 2. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Osztályozás:** 2 db. zh (várható időpontok: 1. ZH. évfolyam vagy csoportzh (a tanteremhelyzet függvényében): november 3-a kedd, 14:00–16:00 (vagy 3-a kedd 16:15–18:00), 2. ZH. csoportzh: december 9-e szerda, 10:15–12:00), $6 \le$ röpzh $\le 10$, a legrosszabb kettő eredményét eldobom, gyakorlati jegy = 40% 1.zh + 40% 2.zh + 20% rzh ± (órai munka).
>
> **Javítási/pótlási lehetőség:** a pótzhn (várható időpont: december 17-e csütörtök, 14:00–16:00).
>
> A gyakorlatokon való részvétel kötelező. Ha valaki a gyakorlatok 1/4-énél (azaz 6 alkalomnál) többről hiányzik, akkor a gyakorlatvezető csak rendkívüli, igazolt esetben, többletfeladatok teljesítésének előírása után adhat gyakorlati jegyet. Ha valaki a gyakorlatoknak több mint a harmadánál (azaz 8 alkalomnál) többről hiányzik, akkor a gyakorlat érvénytelen.

## 11. feladat

A Cantor-tulajdonságban megköveteltük, hogy az egymásba skatulyázott intervallumsorozat korlátos, zárt és nemüres intervallumokból álljon. Ellenőrizzük, hogy a Cantor-tulajdonság állítása nem marad igaz, ha bármelyik feltételt elhagyjuk.

**Megoldás.**

A Cantor-tulajdonság: ha $I_1 \supseteq I_2 \supseteq \dots$ korlátos, zárt, nemüres intervallumok, akkor $\bigcap_{n} I_n \neq \emptyset$. Minden feltételhez mutatunk ellenpéldát, amelyben a többi feltétel teljesül, de a metszet üres.

- **Korlátosság elhagyása:** $I_n = [n, \infty)$. Zártak, nemüresek, egymásba skatulyázottak, de $\bigcap_n I_n = \emptyset$: bármely $x \in \mathbb{R}$-hez az arkhimédészi tulajdonság szerint van $n > x$, és $x \notin I_n$.
- **Zártság elhagyása:** $I_n = (0, \frac{1}{n}]$ (vagy $(0, \frac1n)$). Korlátosak, nemüresek, egymásba skatulyázottak, de $\bigcap_n I_n = \emptyset$: ha $x \le 0$, akkor $x \notin I_1$; ha $x > 0$, akkor van $n$, hogy $\frac1n < x$, és $x \notin I_n$.
- **Nemüresség elhagyása:** ha valamelyik $I_n = \emptyset$ (pl. az „$[1, 0]$" intervallum), akkor a metszet nyilván üres. Ez triviális, de mutatja, hogy a feltétel nem hagyható el.

(Megjegyzés: az *egymásba skatulyázottság* is lényeges: $I_n = [n, n]$ korlátos, zárt, nemüres intervallumok, de metszetük üres.)

::: elmelet
**Elméleti háttér — a Cantor-tulajdonság és a feltételek szükségessége.**

*A tétel.* (Cantor-féle közösrész-tétel) Ha $[a_1, b_1] \supseteq [a_2, b_2] \supseteq \dots$ korlátos, zárt, nemüres intervallumok, akkor $\bigcap_{n} [a_n, b_n] \ne \emptyset$. *Bizonyítás a teljességi axiómából:* az egymásba skatulyázottság miatt $a_1 \le a_2 \le \dots \le b_2 \le b_1$, és minden $a_n \le b_m$ (ha $n \le m$, akkor $a_n \le a_m \le b_m$; ha $n > m$, akkor $a_n \le b_n \le b_m$). Így $A = \{a_n\}$ felülről korlátos, $\xi = \sup A$ létezik, $a_n \le \xi$ minden $n$-re, és mivel minden $b_m$ felső korlátja $A$-nak, $\xi \le b_m$. Tehát $\xi \in [a_n, b_n]$ minden $n$-re. Ha még $b_n - a_n \to 0$ is teljesül, a közös pont egyértelmű.

*A logikai szerkezet.* Egy „ha $F_1$ és $F_2$ és $F_3$, akkor $K$” alakú tétel feltételeinek **függetlenségét** úgy mutatjuk meg, hogy minden $i$-re adunk egy példát, amelyben $F_i$ hamis, a többi feltétel igaz, és $K$ hamis. Ha ilyen példa nincs, a feltétel valójában fölösleges (a többiből következik).

*Mi „szökik meg” az ellenpéldákban?*

- $[n, \infty)$: a közös pont a végtelenbe menekülne — ez a **korlátosság** szerepe. (Itt az arkhimédészi tulajdonság mutatja, hogy egyetlen valós szám sincs mindegyikben.)
- $(0, \frac1n]$: a közös pont a $0$ lenne, de az egyik végpontot kihagytuk — ez a **zártság** szerepe. A $[0, \frac1n]$ intervallumok metszete már $\{0\}$.
- A **nemüresség** a tétel értelmességéhez kell; a skatulyázottság nélkül pedig nincs miért közös pont legyen.

*Kapcsolat a teljességgel.* A $\mathbb{Q}$-ban a Cantor-tulajdonság nem teljesül: a $\sqrt 2$ tizedes közelítéseiből képzett $[1, 2] \supseteq [1{,}4;\ 1{,}5] \supseteq [1{,}41;\ 1{,}42] \supseteq \dots$ racionális végpontú intervallumoknak nincs közös *racionális* pontja. Az arkhimédészi tulajdonsággal együtt a Cantor-tulajdonság a teljességi axiómával ekvivalens (19. feladat).
:::

## 12. feladat

Bizonyítsuk be, hogy $\lg 6$ irracionális!

**Megoldás.**

$\lg 6 = \log_{10} 6 > 0$, mert $6 > 1$. Tegyük fel, hogy $\lg 6 = \frac{p}{q}$, ahol $p, q$ pozitív egészek. Ekkor $10^{p/q} = 6$, azaz
$$10^p = 6^q \iff 2^p \cdot 5^p = 2^q \cdot 3^q.$$
Mivel $q \ge 1$, a jobb oldal osztható 3-mal, a bal oldal viszont nem (a prímtényezős felbontás egyértelmű, és abban csak a 2 és az 5 szerepel). Ellentmondás, tehát $\lg 6$ irracionális. $\blacksquare$

::: elmelet
**Elméleti háttér — logaritmus, irracionalitás és a számelmélet alaptétele.**

*A logaritmus.* $\log_a b = c \iff a^c = b$ ($a > 0$, $a \ne 1$, $b > 0$); $\lg = \log_{10}$. A $\lg 6 = \frac pq$ feltevést ezért egy **hatványegyenletre** fordítjuk le: $10^{p/q} = 6 \iff 10^p = 6^q$ (mindkét oldalt $q$-adik hatványra emelve, ami pozitív számokra ekvivalens átalakítás).

*A számelmélet alaptétele.* Minden $n \ge 2$ egész felírható prímek szorzataként, és ez a felírás a tényezők sorrendjétől eltekintve **egyértelmű**. Következmény: ha két pozitív egész egyenlő, prímtényezős felbontásukban minden prím ugyanazzal a kitevővel szerepel. A feladatban a $3$ kitevője a bal oldalon $0$, a jobbon $q \ge 1$ — ellentmondás. (Ugyanígy a $2$ és az $5$ kitevőjéből is: $p = q$ és $p = 0$.)

*Általánosítás.* $\log_a b$ racionális pontosan akkor, ha $a$ és $b$ ugyanannak a számnak racionális kitevős hatványai. Például $\log_2 8 = 3$, $\log_4 8 = \frac32$, de $\log_2 3$, $\lg 2$, $\lg 6$ irracionális. Sőt (Gelfond–Schneider-tétel) ezek a számok **transzcendensek** is — ennek bizonyítása azonban messze túlmegy az alapkurzuson.

*Miért fontos a $p, q > 0$ előjel?* $\lg 6 > 0$, ezért feltehető $p, q \ge 1$; így a hatványozás egész kitevőkkel történik, és az egyenlőség két pozitív *egész* szám egyenlősége. Negatív kitevővel törtek jelennének meg, és az érvelést először át kellene rendezni.
:::

## 13. feladat

30 gyerek egy $5 \times 6$-os téglalap alakú rács pontjaiban áll. Minden sorból kiválasztjuk a legmagasabbat, majd ezek közül a legalacsonyabbat. Legyen ez a gyerek $A$. Ezután minden oszlopból kiválasztjuk a legalacsonyabbat, majd ezek közül a legmagasabbat. Legyen ez a gyerek $B$. Hogyan viszonyul egymáshoz $A$ és $B$ magassága?

**Megoldás.**

**$B$ nem magasabb $A$-nál**, azaz $m(B) \le m(A)$ (ahol $m$ a magasság).

Legyen $A$ az $i$-edik sorban, $B$ a $j$-edik oszlopban, és legyen $C$ az $i$-edik sor és a $j$-edik oszlop metszéspontjában álló gyerek. Mivel $A$ a saját sorának legmagasabbja, $m(C) \le m(A)$. Mivel $B$ a saját oszlopának legalacsonyabbja, $m(B) \le m(C)$. Így
$$m(B) \le m(C) \le m(A).$$

Mindkét eset előfordulhat. Ha minden gyerek egyforma magas, egyenlőség áll. Szigorú egyenlőtlenségre példa: az $(i, j)$ pozícióban álló gyerek legyen 2 egység magas, ha $i + j$ páratlan, és 1 egység, ha $i + j$ páros (sakktábla-mintázat). Ekkor minden sorban a legmagasabb 2 egység, tehát $m(A) = 2$; minden oszlopban a legalacsonyabb 1 egység, tehát $m(B) = 1 < 2$. (Különböző magasságokkal is elérhető: kissé „zavarjuk meg" a magasságokat.) Ha minden magasság különböző, akkor vagy $A = B$, vagy $B$ alacsonyabb.

::: elmelet
**Elméleti háttér — a minimax-egyenlőtlenség (sup inf $\le$ inf sup).**

*Állítás.* Bármely $m_{ij}$ ($i \in I$, $j \in J$) értékekre
$$\max_{j}\min_{i} m_{ij} \;\le\; \min_{i}\max_{j} m_{ij},$$
végtelen indexhalmazokra pedig $\sup_j \inf_i m_{ij} \le \inf_i \sup_j m_{ij}$.

*Bizonyítás.* Rögzített $i_0, j_0$ mellett
$$\min_i m_{ij_0} \le m_{i_0j_0} \le \max_j m_{i_0j}.$$
A bal oldal csak $j_0$-tól, a jobb csak $i_0$-tól függ; a bal oldal tehát kisebb-egyenlő a jobb oldal *minimumánál* $i_0$-ban, majd ennek a bal oldal *maximuma* $j_0$-ban is. A feladat megoldása pontosan ezt csinálja a $C = m_{i_0j_0}$ közvetítő elemmel.

*Mikor egyenlőség?* Ha van **nyeregpont**: egy elem, amely a sorában maximális és az oszlopában minimális. Ekkor ez az elem egyszerre $A$ és $B$ (ha a magasságok különbözők). Ha nincs nyeregpont, szigorú egyenlőtlenség áll (mint a sakktábla-mintánál).

*Hol találkozunk vele újra?*

- **Játékelmélet:** két játékos, az egyik sort, a másik oszlopot választ; a $\max\min$ az a nyereség, amelyet az oszlopválasztó mindenképp biztosíthat, a $\min\max$ amennyit a sorválasztó legfeljebb enged. Neumann János minimax-tétele szerint kevert stratégiákkal egyenlőség áll.
- **Analízis:** a $\liminf$ és a $\limsup$ definíciója ($\sup_N\inf_{n \ge N}$, illetve $\inf_N\sup_{n\ge N}$) ugyanilyen szerkezetű, és $\liminf a_n \le \limsup a_n$ hasonló „közvetítő elemes” érveléssel látható be.
:::

## 14. feladat

Ha létezik, akkor $\sup H$ egyértelmű.

**Megoldás.**

A szuprémum a legkisebb felső korlát. Tegyük fel, hogy $s$ és $s'$ is szuprémuma $H$-nak. A trichotómia szerint $s < s'$, $s = s'$ vagy $s > s'$.

Ha $s < s'$ volna, akkor $s$ olyan felső korlát lenne, amely kisebb $s'$-nél, ellentmondva annak, hogy $s'$ a *legkisebb* felső korlát. Ugyanígy $s > s'$ sem lehet. Tehát $s = s'$. $\blacksquare$

::: elmelet
**Elméleti háttér — egyértelműségi bizonyítások.**

*Séma.* Egy „legfeljebb egy ilyen objektum van” állítást úgy bizonyítunk, hogy két ilyen objektumot ($s$ és $s'$) veszünk, és megmutatjuk, hogy egyenlők. Rendezett halmazokban ehhez az **antiszimmetria** kell: $s \le s'$ és $s' \le s$ együtt $s = s'$-t ad.

*A szuprémum esetében.* $s$ és $s'$ is felső korlát, és mindkettő a legkisebb: $s$ legkisebb, $s'$ felső korlát, tehát $s \le s'$; szerepcserével $s' \le s$. A megoldás trichotómiás érvelése ugyanez indirekt formában.

*A „legkisebb felső korlát” mint legkisebb elem.* Jelölje $F(H)$ a $H$ felső korlátainak halmazát. Ez **felfelé zárt** (egy felső korlátnál nagyobb szám is felső korlát), és $\sup H = \min F(H)$. Ezért a szuprémum egyértelműsége a minimum egyértelműségének speciális esete. A teljességi axióma pontosan azt mondja ki, hogy $F(H)$-nak — ha nem üres — van minimuma (és nem csak infimuma).

*Hol fontos?* A $\sup H$, $\lim a_n$, $\lim_{x\to a} f(x)$ jelölések csak azért értelmesek, mert a jelölt objektum egyértelmű. A határérték egyértelműségét (egy sorozatnak legfeljebb egy határértéke van) hasonlóan, a $\frac\varepsilon2$-es környezetek diszjunktságával bizonyítjuk: ha $A \ne B$ volna mindkettő határérték, $\varepsilon = \frac{|A - B|}{2}$-vel a sorozat tagjai egy indextől kezdve egyszerre volnának $A$ és $B$ $\varepsilon$-környezetében, amelyek diszjunktak.
:::

## 15. feladat

Bizonyítsuk be, hogy $x^2 + \frac{1}{x^2} \ge 2$, ha $x \neq 0$.

**Megoldás.**

Ha $x \ne 0$, akkor
$$x^2 + \frac{1}{x^2} - 2 = \left(x - \frac{1}{x}\right)^2 \ge 0,$$
amiből az állítás következik. Egyenlőség pontosan akkor van, ha $x = \frac1x$, azaz $x = \pm 1$. (Ugyanez a számtani–mértani közép egyenlőtlenségből: $\frac{x^2 + 1/x^2}{2} \ge \sqrt{x^2 \cdot \frac{1}{x^2}} = 1$.)

::: elmelet
**Elméleti háttér — teljes négyzetté alakítás és a közepek közötti egyenlőtlenség két tagra.**

*Alapelv.* Minden valós $y$-ra $y^2 \ge 0$, egyenlőséggel pontosan $y = 0$-ra. Egy egyenlőtlenség bizonyításának egyik legtisztább módja, ha a két oldal különbségét **négyzetek összegeként** írjuk fel.

*A két tagra vonatkozó számtani–mértani egyenlőtlenség.* Ha $u, v \ge 0$, akkor
$$\frac{u + v}{2} - \sqrt{uv} = \frac{(\sqrt u - \sqrt v)^2}{2} \ge 0,$$
egyenlőség pontosan $u = v$ esetén. A feladat ennek speciális esete $u = x^2$, $v = \frac{1}{x^2}$-tel (szorzatuk $1$).

*Következmények.*

- Pozitív $t$-re $t + \frac1t \ge 2$ (egyenlőség: $t = 1$); negatív $t$-re $t + \frac1t \le -2$.
- Rögzített szorzatú két pozitív szám összege akkor minimális, ha egyenlők; rögzített összegűek szorzata akkor maximális (téglalapok közül adott kerületnél a négyzet területe a legnagyobb).
- **Közepek láncolata** két pozitív számra: harmonikus $\le$ mértani $\le$ számtani $\le$ négyzetes közép:
$$\frac{2}{\frac1u + \frac1v} \le \sqrt{uv} \le \frac{u + v}{2} \le \sqrt{\frac{u^2 + v^2}{2}},$$
mindegyik egyenlőség pontosan $u = v$-re.

*Tipikus hiba.* Az $x^2 + \frac{1}{x^2} \ge 2$ bizonyításakor nem szabad „$x = 1$-et behelyettesíteni” — az csak az egyenlőség esetét mutatja. Egy általános állításhoz minden $x \ne 0$-ra érvényes érvelés kell.
:::

## 16. feladat

Bizonyítsuk be, hogy a) $n! \le n^n$, b) $n! \le \left(\frac{n+1}{2}\right)^n$.

**Megoldás.**

a) $n! = 1 \cdot 2 \cdots n$, és minden tényező legfeljebb $n$, így $n! \le n \cdot n \cdots n = n^n$.

b) A számtani–mértani közép egyenlőtlenség az $1, 2, \dots, n$ számokra:
$$\sqrt[n]{1 \cdot 2 \cdots n} \le \frac{1 + 2 + \dots + n}{n} = \frac{n(n+1)/2}{n} = \frac{n+1}{2}.$$
Mindkét oldalt $n$-edik hatványra emelve: $n! \le \left(\frac{n+1}{2}\right)^n$. $\blacksquare$

(Másik bizonyítás: párosítsuk a $k$ és $n + 1 - k$ tényezőket; $k(n+1-k) \le \left(\frac{n+1}{2}\right)^2$, és $(n!)^2 = \prod_{k=1}^n k(n+1-k)$.)

::: elmelet
**Elméleti háttér — a számtani–mértani közép egyenlőtlenség ($n$ tagra) és a faktoriális becslése.**

*Tétel.* Ha $a_1, \dots, a_n \ge 0$, akkor
$$\sqrt[n]{a_1a_2\cdots a_n} \le \frac{a_1 + a_2 + \dots + a_n}{n},$$
egyenlőséggel pontosan akkor, ha $a_1 = \dots = a_n$.

*Egy bizonyítás (teljes indukció, „cserés” lépéssel).* $n = 1$-re nyilvánvaló. Legyen $A$ a számtani közép; ha mind egyenlő, kész. Különben van $a_i < A$ és $a_j > A$. Cseréljük $a_i$-t $A$-ra és $a_j$-t $a_i + a_j - A$-ra: az összeg (és így $A$) nem változik, a szorzat viszont nő, mert
$$A(a_i + a_j - A) - a_ia_j = (A - a_i)(a_j - A) > 0.$$
Minden csere eggyel növeli az $A$-val egyenlő tagok számát, így legfeljebb $n - 1$ csere után minden tag $A$, a szorzat $A^n$. Mivel a szorzat végig nőtt, az eredeti szorzat legfeljebb $A^n$.

*Alkalmazás szorzatokra.* Szorzat felső becsléséhez a tényezők összegét kell ismerni: $1 + 2 + \dots + n = \frac{n(n+1)}{2}$, így $n! \le \left(\frac{n+1}{2}\right)^n$. Az a) rész durvább ($n! \le n^n$), de egyszerűbb: minden tényezőt a legnagyobbal becsültünk.

*Mennyire jók ezek a becslések?* A **Stirling-formula** szerint $n! \approx \sqrt{2\pi n}\left(\frac{n}{e}\right)^n$. Ehhez képest $n^n$ kb. $e^n$-szer, $\left(\frac{n+1}{2}\right)^n$ kb. $\left(\frac e2\right)^n$-szer nagyobb — mindkettő exponenciálisan túlbecsül, de a b) sokkal jobb. Alsó becslésként $n! \ge \left(\frac n2\right)^{n/2}$ (21. feladat) és $n! \ge \left(\frac ne\right)^n$ (az $e^n = \sum \frac{n^k}{k!} \ge \frac{n^n}{n!}$ egyenlőtlenségből) is jól használható.
:::

## 17. feladat

Mutassuk meg, hogy ha $A, B \subset \mathbb{R}$, $A \neq \emptyset$, $B \neq \emptyset$, akkor $\sup (A + B) = \sup A + \sup B$.

**Megoldás.**

Itt $A + B = \{a + b : a \in A,\ b \in B\}$.

*Ha $A$ és $B$ felülről korlátos*, legyen $s = \sup A$, $t = \sup B$.

- $s + t$ felső korlát: minden $a \in A$, $b \in B$ esetén $a + b \le s + t$.
- Legkisebb: legyen $\varepsilon > 0$. A szuprémum definíciója miatt van $a \in A$, amelyre $a > s - \frac{\varepsilon}{2}$, és van $b \in B$, amelyre $b > t - \frac{\varepsilon}{2}$. Ekkor $a + b > s + t - \varepsilon$, tehát $s + t - \varepsilon$ nem felső korlát.

Így $\sup(A + B) = s + t$.

*Ha pl. $A$ felülről nem korlátos*, akkor $A + B$ sem: rögzített $b \in B$ és tetszőleges $K$ esetén van $a \in A$, $a > K - b$, és $a + b > K$. Ekkor mindkét oldal $+\infty$ (a bővített számegyenesen), tehát az egyenlőség ebben az értelemben is fennáll. $\blacksquare$

::: elmelet
**Elméleti háttér — szuprémum és a halmazműveletek; a „$\frac\varepsilon2$-trükk”.**

*A szuprémum $\varepsilon$-os jellemzése.* $s = \sup H$ pontosan akkor, ha (1) $s$ felső korlátja $H$-nak, és (2) minden $\varepsilon > 0$-hoz van $h \in H$, $h > s - \varepsilon$. Az (1) feltétel azt mondja, hogy $s$ „nem túl kicsi”, a (2), hogy „nem túl nagy”.

*Összeghalmaz.* $A + B = \{a + b : a \in A, b \in B\}$ (Minkowski-összeg). A bizonyítás két lépése:

1. $a + b \le \sup A + \sup B$ — a felső korlátok összeadódnak;
2. adott $\varepsilon$-hoz mindkét halmazból $\frac\varepsilon2$-nél jobb közelítést választunk, az összeg hibája $< \frac\varepsilon2 + \frac\varepsilon2 = \varepsilon$.

A „$\frac\varepsilon2$-trükk” lényege, hogy a megengedett hibát előre szétosztjuk a részek között. Ugyanez a gondolat bizonyítja, hogy konvergens sorozatok összege konvergens és $\lim(a_n + b_n) = \lim a_n + \lim b_n$.

*Kapcsolódó szabályok* (nem üres, korlátos $A$, $B$ esetén):

- $\inf(A + B) = \inf A + \inf B$;
- $\sup(-A) = -\inf A$;
- $\sup(cA) = c \sup A$, ha $c \ge 0$;
- $\sup(A \cdot B) = \sup A \cdot \sup B$ **csak** nemnegatív elemű halmazokra igaz (például $A = B = \{-2, 1\}$ esetén $A \cdot B = \{4, -2, 1\}$, $\sup = 4 \ne 1$).

*A bővített számegyenes.* Ha valamelyik halmaz felülről nem korlátos, $\sup = +\infty$; az $s + (+\infty) = +\infty$ konvenció mellett a tétel ekkor is érvényes. ($\infty - \infty$ viszont nem értelmezett — ezért nem igaz egyszerűen $\sup(A - B) = \sup A - \sup B$; helyesen $\sup(A - B) = \sup A - \inf B$.)
:::

## 18. feladat

a) Bizonyítsuk be, hogy $(1 + x)^r \le 1 + rx$, ha $r \in \mathbb{Q}$, $0 < r < 1$ és $x \ge -1$.

b) Bizonyítsuk be, hogy $(1 + x)^r \ge 1 + rx$, ha $r \in \mathbb{Q}$, $r > 1$ és $x \ge -1$.

**Megoldás.**

a) Legyen $r = \frac{p}{q}$, ahol $0 < p < q$ egészek, és $x \ge -1$, így $1 + x \ge 0$. Alkalmazzuk a számtani–mértani közép egyenlőtlenséget a következő $q$ darab nemnegatív számra: $p$ darab $(1 + x)$ és $q - p$ darab $1$:
$$(1+x)^{p/q} = \sqrt[q]{(1+x)^p \cdot 1^{q-p}} \le \frac{p(1+x) + (q - p)}{q} = 1 + \frac{p}{q}x = 1 + rx.$$

b) Legyen $r > 1$ racionális, $x \ge -1$.

- Ha $1 + rx < 0$, akkor a jobb oldal negatív, a bal oldal $(1+x)^r \ge 0$, kész.
- Ha $1 + rx \ge 0$: legyen $y = rx \ge -1$. Az a) részt az $\frac{1}{r} \in (0, 1)$ racionális kitevővel és $y$-nal alkalmazva:
$$(1 + y)^{1/r} \le 1 + \frac{y}{r} = 1 + x.$$
Mindkét oldal nemnegatív, és a $t \mapsto t^r$ függvény $[0, \infty)$-en monoton nő, így $r$-edik hatványra emelve $1 + y \le (1 + x)^r$, azaz $1 + rx \le (1 + x)^r$. $\blacksquare$

::: elmelet
**Elméleti háttér — a Bernoulli-egyenlőtlenség családja.**

*Egész kitevő.* Ha $x \ge -1$ és $n \in \mathbb{N}$, akkor $(1 + x)^n \ge 1 + nx$. Bizonyítás indukcióval: $(1+x)^{n+1} = (1+x)^n(1+x) \ge (1 + nx)(1 + x) = 1 + (n+1)x + nx^2 \ge 1 + (n+1)x$ — itt kell az $1 + x \ge 0$ feltétel (hogy a szorzásnál az egyenlőtlenség iránya megmaradjon). Egyenlőség pontosan $x = 0$ vagy $n = 1$ esetén.

*Racionális (és valós) kitevő.* Ha $x \ge -1$:
$$(1 + x)^r \le 1 + rx \quad (0 \le r \le 1), \qquad (1+x)^r \ge 1 + rx \quad (r \ge 1 \text{ vagy } r \le 0).$$
A megoldás a $0 < r < 1$ esetet a **súlyozott** számtani–mértani egyenlőtlenségre vezeti vissza ($p$ darab $1 + x$ és $q - p$ darab $1$), az $r > 1$ esetet pedig a $t \mapsto t^r$ szigorú monotonitásával az előzőre. Valós kitevőre folytonossággal (vagy deriválással) terjeszthető ki.

*Geometriai jelentés.* Az $f(x) = (1 + x)^r$ függvény érintője a $0$ pontban az $y = 1 + rx$ egyenes. $r > 1$-re $f$ konvex, így a grafikonja az érintő **felett** van; $0 < r < 1$-re konkáv, így **alatta**. A Bernoulli-egyenlőtlenség tehát a konvexitás egy speciális esete — ezt a 9. feladatlapon a konvex függvények tárgyalásánál látjuk majd általánosan.

*Alkalmazások.* Küszöbindexek keresése ($\sqrt[n]{a} - 1 \le \frac{a - 1}{n}$), az $\left(1 + \frac1n\right)^n$ sorozat monotonitása, és a $q^n \to 0$ ($|q| < 1$) határérték bizonyítása: $\frac{1}{|q|} = 1 + h$-val $\frac{1}{|q|^n} \ge 1 + nh$, tehát $|q|^n \le \frac{1}{1 + nh} \to 0$.
:::

## 19. feladat

Mutassuk meg, hogy az arkhimédészi és a Cantor-tulajdonságokból / axiómákból levezethető a teljességi tulajdonság / axióma.

**Megoldás.**

Tegyük fel, hogy a rendezett testben teljesül az arkhimédészi és a Cantor-tulajdonság. Legyen $H \neq \emptyset$ felülről korlátos; megmutatjuk, hogy van szuprémuma.

**Felezéses eljárás.** Legyen $h \in H$ és $a_0 = h - 1$ (ez *nem* felső korlát), $b_0$ pedig egy felső korlát. Ha $[a_n, b_n]$ már adott, legyen $c = \frac{a_n + b_n}{2}$; ha $c$ felső korlát, akkor $[a_{n+1}, b_{n+1}] = [a_n, c]$, különben $[a_{n+1}, b_{n+1}] = [c, b_n]$. Indukcióval minden $n$-re: $a_n$ nem felső korlát, $b_n$ felső korlát, és $b_n - a_n = \frac{b_0 - a_0}{2^n}$.

Az intervallumok korlátosak, zártak, nemüresek és egymásba skatulyázottak, így a Cantor-tulajdonság miatt van $\xi \in \bigcap_n [a_n, b_n]$.

Az **arkhimédészi tulajdonság** miatt bármely $\delta > 0$-hoz van $n$, amelyre $\frac{b_0 - a_0}{2^n} < \delta$ (hiszen $2^n \ge n$, és van $n > \frac{b_0 - a_0}{\delta}$).

- **$\xi$ felső korlát:** ha volna $h \in H$, $h > \xi$, akkor $\delta = h - \xi$-hez választva $n$-et: $b_n \le \xi + (b_n - a_n) < \xi + \delta = h$, tehát $b_n$ nem volna felső korlát – ellentmondás.
- **$\xi$ a legkisebb felső korlát:** ha $\eta < \xi$ is felső korlát volna, akkor $\delta = \xi - \eta$-hoz választva $n$-et: $a_n \ge \xi - (b_n - a_n) > \xi - \delta = \eta$. Mivel $\eta$ felső korlát, az $a_n > \eta$ is az lenne – ellentmondás.

Tehát $\xi = \sup H$. $\blacksquare$

(Az arkhimédészi tulajdonság nem hagyható el: nem arkhimédészi rendezett testekben a felezett intervallumok hossza nem tart 0-hoz.)

::: elmelet
**Elméleti háttér — a teljesség ekvivalens megfogalmazásai.**

*Mit jelent a teljesség?* A $\mathbb{Q}$ és az $\mathbb{R}$ is rendezett test; a különbség az, hogy $\mathbb{R}$-ben „nincsenek lyukak”. Ezt több, egymással ekvivalens axiómával lehet kifejezni. Rendezett testben ekvivalensek:

1. **szuprémum-axióma:** minden nem üres, felülről korlátos halmaznak van szuprémuma;
2. **arkhimédészi + Cantor-tulajdonság** (a feladat ezt mutatja meg az 1. irányban);
3. **monoton konvergencia:** minden monoton, korlátos sorozat konvergens;
4. **Bolzano–Weierstrass:** minden korlátos sorozatnak van konvergens részsorozata;
5. **arkhimédészi tulajdonság + Cauchy-kritérium:** minden Cauchy-sorozat konvergens;
6. **Dedekind-tulajdonság:** ha $\mathbb R = A \cup B$, $A, B \ne \emptyset$, és $A$ minden eleme kisebb $B$ minden eleménél, akkor van egy „vágópont”, amely $A$ legnagyobb vagy $B$ legkisebb eleme.

*Az intervallumfelezés módszere.* A bizonyításban két **invariánst** tartunk fenn: a bal végpont soha nem felső korlát, a jobb végpont mindig az. A Cantor-tulajdonság ad egy közös $\xi$ pontot, az arkhimédészi tulajdonság pedig azt, hogy az intervallumok hossza ($\frac{b_0 - a_0}{2^n}$) tetszőlegesen kicsivé válik. Ebből két indirekt érvelés mutatja, hogy $\xi$ felső korlát, és nincs nála kisebb. Ugyanez a módszer bizonyítja a Bolzano–Weierstrass-tételt (mindig azt a felet választjuk, amelyben a sorozatnak végtelen sok tagja van) és a Bolzano-féle közbülsőérték-tételt (mindig azt a felet, amelynek végpontjaiban a függvény előjele különböző).

*Miért kell az arkhimédészi tulajdonság?* Léteznek nem arkhimédészi rendezett testek (például a racionális törtfüggvények teste alkalmas rendezéssel), amelyekben „végtelen kicsi” elemek vannak: pozitívak, de minden $\frac1n$-nél kisebbek. Ott az $\frac{1}{2^n}$ hosszúságok nem tartanak $0$-hoz, és a felezéses érvelés összeomlik.
:::

## 20. feladat

Adott felszínű téglatestek közül melyiknek a legnagyobb a térfogata?

**Megoldás.**

Legyenek az élek $a, b, c > 0$, a felszín $F = 2(ab + bc + ca)$ rögzített, a térfogat $V = abc$. A számtani–mértani közép egyenlőtlenség az $ab$, $bc$, $ca$ számokra:
$$V^{2/3} = \sqrt[3]{ab \cdot bc \cdot ca} \le \frac{ab + bc + ca}{3} = \frac{F}{6}.$$
Tehát $V \le \left(\frac{F}{6}\right)^{3/2}$, és egyenlőség pontosan akkor áll, ha $ab = bc = ca$, azaz $a = b = c$. **Adott felszínű téglatestek közül a kocka térfogata a legnagyobb** (élhossza $\sqrt{F/6}$).

::: elmelet
**Elméleti háttér — feltételes szélsőérték a közepek egyenlőtlenségével.**

*A módszer.* Ha egy $f$ mennyiséget kell maximalizálni egy $g = \text{állandó}$ feltétel mellett, keressünk olyan $u_1, \dots, u_k \ge 0$ mennyiségeket, hogy

- $u_1 + \dots + u_k$ a feltétel szerint állandó, és
- $f$ a $u_1\cdots u_k$ szorzat monoton függvénye.

Ekkor a számtani–mértani egyenlőtlenség $f$-re felső korlátot ad, és ezt a korlátot pontosan akkor éri el, ha $u_1 = \dots = u_k$ — **ha ez a feltétellel összeegyeztethető**, megtaláltuk a maximumot.

*A feladatban.* $u_1 = ab$, $u_2 = bc$, $u_3 = ca$, összegük $\frac F2$, szorzatuk $V^2$. Az egyenlőség $ab = bc = ca$ esetén, vagyis $a = b = c = \sqrt{F/6}$-ra teljesül — ez egy létező téglatest (kocka), tehát a korlát el is érhető, és ez a maximum.

*Fordított kérdések.* Adott térfogatú téglatestek közül a kocka felszíne a legkisebb (ugyanaz az egyenlőtlenség, másik irányból olvasva). Adott élhossz-összegűek közül ($a + b + c$ rögzített) a kocka térfogata a legnagyobb ($u_i = a, b, c$). Az izoperimetrikus jellegű feladatok közös tanulsága: a szimmetrikus helyzet az extremális.

*Ellenőrzendő buktató.* A közepekkel kapott korlát csak akkor maximum, ha az egyenlőség esete *megvalósítható*. Például ha a feladat egész élhosszakat írna elő, és $\sqrt{F/6}$ nem egész, a korlát nem érhető el — ilyenkor más módszer kell. A differenciálszámítás (Lagrange-multiplikátorok) ugyanezt a választ adja, de a közepes módszer elemibb és rögtön a globális maximumot adja.
:::

## 21. feladat

Mutassuk meg, hogy $100^n < n!$, ha $n$ elegendően nagy.

**Megoldás.**

**Explicit küszöb:** $n > 20\,000$ esetén $100^n < n!$.

Az $n!$ szorzatban a $\lceil n/2 \rceil \le k \le n$ tényezők száma legalább $\frac{n}{2}$, és mindegyikük legalább $\frac{n}{2}$; a többi tényező legalább $1$. Így
$$n! \ge \left(\frac{n}{2}\right)^{n/2}.$$
Ha $n > 20\,000$, akkor $\frac{n}{2} > 10\,000 = 100^2$, így
$$n! \ge \left(\frac{n}{2}\right)^{n/2} > \left(100^2\right)^{n/2} = 100^n. \qquad \blacksquare$$

(Megjegyzés: a $c_n = \frac{100^n}{n!}$ sorozatra $\frac{c_{n+1}}{c_n} = \frac{100}{n+1}$, ami $n \ge 199$-re legfeljebb $\frac12$; így $c_n \to 0$, ami szintén mutatja az állítást, csak kevésbé explicit küszöbbel.)

::: elmelet
**Elméleti háttér — növekedési rendek: $a^n \ll n! \ll n^n$.**

*Állítás.* Minden rögzített $a > 0$-ra $\frac{a^n}{n!} \to 0$, és $\frac{n!}{n^n} \to 0$. Vagyis a faktoriális minden exponenciálisnál gyorsabban, de $n^n$-nél lassabban nő.

*Két bizonyítási módszer.*

1. **Közvetlen alsó becslés:** a szorzat felső felében legalább $\frac n2$ darab, egyenként legalább $\frac n2$ nagyságú tényező van, így $n! \ge \left(\frac{n}{2}\right)^{n/2}$, és ez minden $a^n$-t legyőz, mihelyt $\frac n2 > a^2$. Ez **explicit küszöböt** ad.
2. **Hányados-módszer:** a $c_n = \frac{a^n}{n!}$ sorozatra $\frac{c_{n+1}}{c_n} = \frac{a}{n+1}$. Ha $n + 1 \ge 2a$, ez legfeljebb $\frac12$, így egy $N$ indextől $c_{N+k} \le \frac{c_N}{2^k} \to 0$. Ez az ötlet a **hányadoskritérium** magja (sorozatokra és később sorokra).

Hasonlóan $\frac{n!}{n^n} = \frac1n \cdot \frac2n \cdots \frac nn \le \frac1n \to 0$.

*A növekedési skála.* Ha $f(n) \ll g(n)$ azt jelöli, hogy $\frac{f(n)}{g(n)} \to 0$, akkor
$$\log n \ll n^\varepsilon \ll n^k \ll a^n \ll n! \ll n^n \qquad (\varepsilon > 0,\ k \in \mathbb N,\ a > 1).$$
Ezek a nevezetes határértékek a sorozatok fejezetében rendszeresen előkerülnek (pl. $\frac{n^k}{2^n} \to 0$, $\frac{2^n}{n!} \to 0$), és a határozatlan alakú határértékek kiszámításának alapjai.

*Megjegyzés a „elegendően nagy” kifejezésről.* Az „$n$ elegendően nagy” azt jelenti: $\exists N_0\ \forall n > N_0$. Nem kell a legkisebb küszöb — elég egy olyan, amelyre az érvelés működik. Ez a határérték-definíciók kvantorszerkezete.
:::

## 22. feladat

Keressünk olyan $N_0$ számot, hogy $\forall n > N_0$ esetén teljesüljön, hogy

a) $\left(1 + \frac{1}{n}\right)^n \ge 2$, b) $\sqrt[n]{2} < 1{,}01$.

**Megoldás.**

a) A Bernoulli-egyenlőtlenség szerint $\left(1 + \frac1n\right)^n \ge 1 + n \cdot \frac{1}{n} = 2$ **minden** $n \ge 1$-re, tehát bármely $N_0$ (pl. $N_0 = 0$) megfelel.

b) $\sqrt[n]{2} < 1{,}01 \iff 2 < 1{,}01^n$. A Bernoulli-egyenlőtlenség szerint $1{,}01^n \ge 1 + \frac{n}{100}$, ami $n > 100$ esetén $2$-nél nagyobb. Tehát **$N_0 = 100$ megfelel.**

(A legjobb küszöb: $1{,}01^n > 2 \iff n > \frac{\ln 2}{\ln 1{,}01} \approx 69{,}66$, tehát $n \ge 70$-re teljesül, $N_0 = 69$. A feladat azonban csak *egy* megfelelő $N_0$-t kér.)

::: elmelet
**Elméleti háttér — küszöbindexek és nevezetes határértékek.**

*Küszöbindex.* Egy „$\forall n > N_0$” típusú állításban $N_0$ megtalálásához nem kell az egyenlőtlenséget megoldani: elég egy olyan **egyszerűbb, gyengébb** becslés, amelyből az állítás következik, és amelyből $N_0$ leolvasható. A Bernoulli-egyenlőtlenség erre ideális: lineáris alsó korlátot ad egy hatványra.

*Két nevezetes határérték, amelyhez a feladat kapcsolódik.*

- **$\sqrt[n]{a} \to 1$** ($a > 0$). Ha $a \ge 1$, legyen $\sqrt[n]{a} = 1 + h_n$, $h_n \ge 0$. A Bernoulli-egyenlőtlenség szerint $a = (1 + h_n)^n \ge 1 + nh_n$, tehát $0 \le h_n \le \frac{a - 1}{n} \to 0$. Ebből explicit küszöb is jön: $\sqrt[n]{a} < 1 + \varepsilon$, ha $n > \frac{a - 1}{\varepsilon}$ (a feladatban $a = 2$, $\varepsilon = 0{,}01$: $n > 100$). Ha $0 < a < 1$, a reciprokra alkalmazzuk.
- **$\left(1 + \frac1n\right)^n \to e \approx 2{,}718$.** A sorozat szigorúan monoton nő (például a számtani–mértani egyenlőtlenséggel, az $1$ és $n$ darab $1 + \frac1n$ számra), korlátos ($< 3$), ezért konvergens; a határértéke az $e$ szám. Az a) rész ($\ge 2$) ennek a legelső, nagyon durva alsó becslése.

*A legjobb küszöb és a logaritmus.* A pontos küszöb $1{,}01^n > 2 \iff n > \log_{1{,}01} 2 = \frac{\ln 2}{\ln 1{,}01}$. Mivel $\ln(1 + x) \approx x$ kis $x$-re, ez körülbelül $\frac{0{,}693}{0{,}01} \approx 69{,}3$ — innen a pénzügyekben ismert „$70$-es szabály”: $p\%$-os növekedéssel kb. $\frac{70}{p}$ periódus alatt duplázódik egy mennyiség. A Bernoulli-becslés ($n > 100$) ennél gyengébb, mert az $(1 + x)^n$ hatványt csak az első két taggal becsüli.
:::

## Röpzhra

Cantor-féle tulajdonság/axióma, számtani/mértani/harmonikus közepek definíciója és a köztük fennálló egyenlőtlenségek, Bernoulli-egyenlőtlenség.

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

# Analízis 1 – 5. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 44. feladat

Mondjuk ki a $\lim\limits_{n \to \infty} a_n = -\infty$ definícióját és annak tagadását.

**Megoldás.**

**Definíció:** $\lim_{n\to\infty} a_n = -\infty$, ha
$$\forall K \in \mathbb{R}\ \exists N \in \mathbb{N}\ \forall n \ge N : a_n < K.$$

**Tagadás:** $\lim a_n \ne -\infty$, ha
$$\exists K \in \mathbb{R}\ \forall N \in \mathbb{N}\ \exists n \ge N : a_n \ge K,$$
azaz van olyan $K$, amelynél nem kisebb tagja végtelen sok van a sorozatnak.

::: elmelet
**Elméleti háttér — tágabb értelemben vett határérték és a környezetek egységes nyelve.**

*Környezetek a bővített számegyenesen.* $\overline{\mathbb R} = \mathbb R \cup \{-\infty, +\infty\}$. Egy $a \in \mathbb R$ pont környezetei a $(a - \varepsilon, a + \varepsilon)$ intervallumok, a $+\infty$ környezetei a $(K, +\infty)$, a $-\infty$ környezetei a $(-\infty, K)$ félegyenesek. Ezzel a három definíció egyetlen mondatba foglalható:

> $a_n \to A \in \overline{\mathbb{R}}$, ha $A$ minden $U$ környezetéhez van $N$, hogy $n \ge N$ esetén $a_n \in U$.

*A $-\infty$ definíciója.* $a_n \to -\infty$, ha $\forall K\ \exists N\ \forall n \ge N: a_n < K$. Elég negatív $K$-kat nézni (ha a definíció minden negatív $K$-ra teljesül, akkor nagyobbakra is). Ekvivalensen: $-a_n \to +\infty$.

*Tagadás és szemléletes jelentés.* $a_n \not\to -\infty$ pontosan akkor, ha van egy $K$, amelynél nem kisebb tag végtelen sok van — vagyis van egy **alulról korlátos részsorozat**. Például a $(-1)^n n$ sorozat nem tart $-\infty$-hez (a páros indexű tagok $+\infty$-hez tartanak), és $+\infty$-hez sem.

*Kapcsolat a korlátossággal.* Ha $a_n \to -\infty$, a sorozat felülről korlátos, de alulról nem. A megfordítás nem igaz: a $-n$ és $0$ felváltva ($0, -2, 0, -4, \dots$) felülről korlátos, alulról nem, mégsem tart $-\infty$-hez — a „csak véges sok kivétel” feltétel hiányzik.

*Hibalehetőség.* A $-\infty$ nem valós szám, ezért „$|a_n - (-\infty)| < \varepsilon$” értelmetlen; a végtelen határértéket mindig a $K$-s definícióval kezeljük.
:::

## 45. feladat

Mutassuk meg, hogy $\lim\limits_{n \to \infty} a_n = \infty$ acsa, ha $\forall K \in \mathbb{R}$-re az $(a_n)$-nek csak véges sok tagja kisebb $K$-nál.

**Megoldás.**

($\Rightarrow$) Legyen $\lim a_n = \infty$ és $K \in \mathbb{R}$. A definíció szerint van $N$, hogy $n \ge N$ esetén $a_n > K$. Így $K$-nál kisebb tag csak az $a_1, \dots, a_{N-1}$ között lehet: véges sok.

($\Leftarrow$) Legyen $K \in \mathbb{R}$ tetszőleges. A feltételt $K + 1$-re alkalmazva csak véges sok $n$ index van, amelyre $a_n < K + 1$; legyen $N$ ezek mindegyikénél nagyobb. Ekkor $n \ge N$ esetén $a_n \ge K + 1 > K$. Tehát $\lim a_n = \infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — „majdnem minden” tag: egy indextől kezdve $\iff$ véges sok kivétellel.**

*Terminológia.* Azt mondjuk, hogy egy tulajdonság a sorozat **majdnem minden** tagjára teljesül, ha csak véges sok tagra nem teljesül. Ez ekvivalens azzal, hogy egy indextől kezdve minden tagra teljesül: ha $n \ge N$-re teljesül, a kivételek az $1, \dots, N - 1$ indexek között vannak; ha pedig a kivételes indexek véges halmaza $E$, akkor $N = \max E + 1$ (vagy $N = 1$, ha $E = \emptyset$) jó küszöb.

*A határérték-definíciók ezen a nyelven.*

- $a_n \to a \iff$ minden $\varepsilon > 0$-ra majdnem minden tag az $(a - \varepsilon, a + \varepsilon)$ környezetben van;
- $a_n \to +\infty \iff$ minden $K$-ra majdnem minden tag nagyobb $K$-nál;
- $s$ **sűrűsödési értéke** a sorozatnak $\iff$ minden $\varepsilon > 0$-ra **végtelen sok** tag van $(s - \varepsilon, s + \varepsilon)$-ban.

A konvergencia és a sűrűsödési érték közti különbség tehát pontosan a „majdnem minden” és a „végtelen sok” különbsége.

*A $K + 1$-trükk.* A feladat feltétele „$a_n < K$ csak véges sokszor”, vagyis majdnem minden tagra $a_n \ge K$; a definícióhoz $a_n > K$ kell. A szigorú egyenlőtlenséget a feltétel $K + 1$-re való alkalmazásával kapjuk. Általános tanulság: a definíciókban a $<$ és $\le$ (illetve $>$ és $\ge$) felcserélhető, mert a korlát kis eltolásával egyikből a másik következik.

*Átrendezés.* Ha egy sorozat tagjait átrendezzük (bijektív indexcserével), a „majdnem minden tag” tulajdonság megmarad — ezért az átrendezés nem változtat a határértéken. Ugyanígy véges sok tag elhagyása, hozzávétele vagy megváltoztatása sem.
:::

## 46. feladat

Adjunk meg adott $K$-hoz $n_K$-t a következő sorozatok esetében:

a) $n - \sqrt{n}$; b) $(1 + \dots + n)/n$; c) $(\sqrt{1} + \sqrt{2} + \dots + \sqrt{n})/n$; d) $\dfrac{n^2 - 10n}{10n + 100}$; e) $2^n/n$.

**Megoldás.**

Feltehető $K > 0$. Olyan $n_K$-t adunk, amelytől kezdve $a_n > K$.

a) $n - \sqrt n = \sqrt n(\sqrt n - 1)$. Ha $n \ge 4$, akkor $\sqrt n - 1 \ge \frac{\sqrt n}{2}$, így $n - \sqrt n \ge \frac n2 > K$, ha $n > 2K$. **$n_K = \max\{4, \lfloor 2K \rfloor + 1\}$.**

b) $\frac{1 + \dots + n}{n} = \frac{n+1}{2} > K \iff n > 2K - 1$. **$n_K = \lfloor 2K \rfloor$** (vagy bármely nagyobb).

c) Az $\frac{n}{2} \le k \le n$ indexű tagokból legalább $\frac n2$ darab van, és mindegyik legalább $\sqrt{n/2}$. Így
$$\frac{\sqrt1 + \dots + \sqrt n}{n} \ge \frac{1}{n} \cdot \frac{n}{2} \sqrt{\frac n2} = \frac{\sqrt n}{2\sqrt2} > K, \quad \text{ha } n > 8K^2.$$
**$n_K = \lfloor 8K^2 \rfloor + 1$.**

d) Ha $n \ge 20$, akkor $10n \le \frac{n^2}{2}$, tehát $n^2 - 10n \ge \frac{n^2}{2}$, és $100 \le 5n$, tehát $10n + 100 \le 15n$. Így
$$\frac{n^2 - 10n}{10n + 100} \ge \frac{n^2/2}{15n} = \frac{n}{30} > K, \quad \text{ha } n > 30K.$$
**$n_K = \max\{20, \lfloor 30K \rfloor + 1\}$.**

e) A binomiális tétel szerint $n \ge 2$-re $2^n = (1 + 1)^n \ge \binom n2 = \frac{n(n-1)}{2}$, így $\frac{2^n}{n} \ge \frac{n - 1}{2} > K$, ha $n > 2K + 1$. **$n_K = \lfloor 2K \rfloor + 2$.**

::: elmelet
**Elméleti háttér — $+\infty$-be tartás igazolása és nevezetes alsó becslések.**

*Majoráns elv végtelen határértékre.* Ha egy indextől $a_n \ge b_n$ és $b_n \to +\infty$, akkor $a_n \to +\infty$ (ugyanazzal a küszöbbel, vagy annál későbbivel). Ezért elég $a_n$-t egy egyszerű, „nyilvánvalóan” végtelenbe tartó $b_n$-nel alulról becsülni, és a $b_n > K$ egyenlőtlenséget megoldani.

*Becslési fogások.*

1. **Domináns tag kiemelése:** $n - \sqrt n = \sqrt n(\sqrt n - 1)$; ha a kisebb rendű tag a domináns tag legfeljebb felét „eszi meg”, az eredmény legalább a domináns tag fele.
2. **A „nagy fél” módszer:** egy $n$ tagú, növő tagú összeg legalább az utolsó $\frac n2$ tag összege, és az mindegyik legalább a középső tag. Így $\sum_{k=1}^n \sqrt k \ge \frac n2\sqrt{\frac n2}$ (pontosan $\sum \sqrt k \approx \frac23 n^{3/2}$).
3. **Racionális kifejezésnél** a számlálót alulról, a nevezőt felülről becsüljük egy-egy egytagú kifejezéssel (pl. $n^2 - 10n \ge \frac{n^2}{2}$, $10n + 100 \le 15n$ elég nagy $n$-re).
4. **Binomiális tétel:** $2^n = (1 + 1)^n \ge \binom{n}{k}$ bármely $k$-ra, így $2^n$ minden polinomot legyőz: $\frac{2^n}{n^k} \ge \frac{\binom{n}{k+1}}{n^k} \to \infty$.

*A küszöb formája.* Egy $n > f(K)$ feltételből $n_K = \lfloor f(K) \rfloor + 1$ adódik; ha az alkalmazott becslés csak $n \ge n_0$-ra érvényes, a küszöb $\max\{n_0, \lfloor f(K) \rfloor + 1\}$. Ezt a maximumot nem szabad elfelejteni — a becslés érvényességi tartománya is része az érvelésnek.

*Összevetés a műveleti szabályokkal.* Ha nem kell explicit küszöb, a $+\infty$ határérték gyorsabban adódik: például $\frac{n^2 - 10n}{10n + 100} = n \cdot \frac{1 - 10/n}{10 + 100/n}$, ahol a második tényező $\frac{1}{10} > 0$-hoz tart, így a szorzat $+\infty$-hez (a „$\infty \cdot c$, $c > 0$” típus nem kritikus).
:::

## 47. feladat

Bizonyítandó, hogy egy konvergens sorozatnak mindig van legkisebb vagy legnagyobb tagja.

**Megoldás.**

Legyen $a_n \to a$. Ha minden tag $a$, akkor minden tag egyszerre legkisebb és legnagyobb. Különben van $a_m \ne a$; tegyük fel, hogy $a_m > a$ (az $a_m < a$ eset szimmetrikus, és ott legkisebb tagot kapunk).

Legyen $\varepsilon = a_m - a > 0$. A konvergencia miatt van $N$, hogy $n \ge N$ esetén $a_n < a + \varepsilon = a_m$. Ebből $m < N$ (különben $a_m < a_m$ volna). Legyen $M = \max\{a_1, \dots, a_{N-1}\}$ – véges halmaz maximuma, és $M \ge a_m$. Ekkor:

- $n < N$ esetén $a_n \le M$ (definíció szerint),
- $n \ge N$ esetén $a_n < a_m \le M$.

Tehát $M$ a sorozat legnagyobb tagja. $\blacksquare$

Példák: $\frac1n$-nek van legnagyobb tagja ($1$), de legkisebb nincs; $\frac{(-1)^n}{n}$-nek mindkettő van.

::: elmelet
**Elméleti háttér — konvergens sorozat szerkezete: korlátosság és szélsőértékek.**

*Konvergens sorozat korlátos.* Ha $a_n \to a$, akkor $\varepsilon = 1$-hez van $N$, hogy $n \ge N$-re $|a_n| < |a| + 1$, így minden tag abszolút értéke legfeljebb $\max\{|a_1|, \dots, |a_{N-1}|, |a| + 1\}$. Ez a „fej + farok” módszer legegyszerűbb alkalmazása.

*A feladat állítása élesebb.* Nem csak korlátok vannak, hanem a sorozat **el is éri** valamelyik szélső értékét: ha van a határérték fölötti tag, a maximum létezik; ha van alatta levő, a minimum. A bizonyítás kulcsa, hogy a farok egy indextől kezdve a határérték egy olyan környezetében marad, amely a kiválasztott tagot már nem tartalmazza, így a maximumot a véges fejben lehet megkeresni.

*Pontosabban:* ha $a_n \to a$, akkor

- ha van $a_m > a$, a sorozatnak van legnagyobb tagja;
- ha van $a_m < a$, van legkisebb tagja;
- ha egyik sincs, a sorozat állandó, és mindkettő van.

Így mindkét szélső tag hiánya csak divergens sorozatnál fordulhat elő (52. feladat).

*A sorozat értékkészletének lezártja.* Konvergens sorozat esetén a $\{a_n\}$ halmaz szuprémuma vagy maximum (eléri), vagy éppen a határérték ($\frac1n$-nél az infimum $0 = \lim$). Általában: $\sup\{a_n\} \in \{a_n\} \cup \{\lim a_n\}$.

*Kapcsolat a későbbi tételekkel.* Ugyanez a gondolat jelenik meg a Weierstrass-tételben (zárt intervallumon folytonos függvény felveszi a maximumát): ott a Bolzano–Weierstrass-tétel biztosítja, hogy egy maximumhoz tartó sorozatnak legyen konvergens részsorozata, és a folytonosság, hogy a határpontban a függvény felvegye az értéket.
:::

## 48. feladat

Bizonyítsuk be, hogy ha $A \subset \mathbb{R}$, $A \neq \emptyset$ és $\sup A = \alpha \notin A$, akkor létezik olyan $(a_n)$ sorozat, amelyre $\forall n \in \mathbb{N}$-re $a_n \in A$, $(a_n)$ szigorúan monoton növekedő és $a_n \to \alpha$. Igaz-e az állítás akkor is, ha $\alpha \in A$?

**Megoldás.**

**Konstrukció.** Legyen $a_1 \in A$ tetszőleges; mivel $\alpha \notin A$, $a_1 < \alpha$. Ha $a_n < \alpha$ már adott, legyen
$$c_n = \max\left\{a_n,\ \alpha - \frac1n\right\} < \alpha.$$
Mivel $c_n < \alpha = \sup A$, a $c_n$ nem felső korlát, így van $a_{n+1} \in A$, amelyre $a_{n+1} > c_n$. Mivel $a_{n+1} \le \alpha$ és $\alpha \notin A$, $a_{n+1} < \alpha$.

Ekkor $a_{n+1} > a_n$ (szigorúan monoton nő), és $\alpha - \frac1n < a_{n+1} < \alpha$, tehát a rendőrelv szerint $a_n \to \alpha$. $\blacksquare$

**Ha $\alpha \in A$, az állítás nem igaz általában:** $A = \{0\}$ esetén $\sup A = 0 \in A$, de $A$-ban nincs szigorúan monoton növő sorozat. (Lehet igaz is, pl. $A = [0, 1]$ és $a_n = 1 - \frac1n$; ez akkor teljesül, ha $\alpha$ balról torlódási pontja $A$-nak.)

::: elmelet
**Elméleti háttér — a szuprémum sorozatos jellemzése és a rendőrelv.**

*Sorozatos jellemzés.* Legyen $A \ne \emptyset$ felülről korlátos. Ekkor $\alpha = \sup A$ pontosan akkor, ha $\alpha$ felső korlát, és van olyan $a_n \in A$ sorozat, amelyre $a_n \to \alpha$. (Ha $\alpha$ felső korlát és $a_n \to \alpha$, akkor minden $\alpha' < \alpha$-hoz van $a_n > \alpha'$, így $\alpha'$ nem felső korlát. Megfordítva, a szuprémum definíciója minden $n$-re ad egy $a_n \in A$-t az $(\alpha - \frac1n, \alpha]$ intervallumban.) A feladat ennek egy élesítése: a sorozat **szigorúan monoton** is választható, ha $\alpha \notin A$.

*A konstrukció két célja egyszerre.* A $c_n = \max\{a_n, \alpha - \frac1n\}$ választás egyetlen lépésben két dolgot biztosít: az új tag nagyobb az előzőnél (monotonitás), és közelebb van $\alpha$-hoz $\frac1n$-nél (konvergencia). Ez a „két feltétel maximumán túllépés” gyakori technika rekurzív konstrukcióknál.

*Rendőrelv.* Ha egy indextől $a_n \le b_n \le c_n$, és $a_n \to L$, $c_n \to L$, akkor $b_n \to L$. *Bizonyítás:* adott $\varepsilon$-hoz egy indextől $L - \varepsilon < a_n$ és $c_n < L + \varepsilon$, így $L - \varepsilon < b_n < L + \varepsilon$. Végtelen határértékre „egyoldali rendőrelv” is van: ha $a_n \le b_n$ és $a_n \to +\infty$, akkor $b_n \to +\infty$.

*Torlódási pont.* Az $\alpha$ pont az $A$ halmaz **torlódási pontja**, ha minden környezete végtelen sok $A$-beli pontot tartalmaz; ekvivalensen van $A \setminus \{\alpha\}$-beli, $\alpha$-hoz tartó sorozat. A feladat szerint ha $\sup A \notin A$, akkor a szuprémum torlódási pont (sőt balról). Ha $\sup A \in A$, akkor $\sup A$ lehet **izolált pont** is (mint $A = \{0\}$ vagy $A = [0, 1] \cup \{2\}$ esetén a $2$) — ekkor nincs hozzá tartó szigorúan monoton sorozat. Ez a fogalom a függvények határértékének definíciójában (az értelmezési tartomány torlódási pontjában vett határérték) lesz fontos.
:::

## 49. feladat

a) $\sqrt[n]{2^n + 3^n + 1000n^3} \to ?$ b) $\dfrac{1}{n^2} + \dfrac{2}{n^2} + \dots + \dfrac{n}{n^2} \to ?$ c) $\sqrt[n]{1 + \frac{1}{2} + \dots + \frac{1}{n}} \to ?$

**Megoldás.**

a) $\sqrt[n]{2^n + 3^n + 1000n^3} \to 3$. Becslés:
$$3 = \sqrt[n]{3^n} \le \sqrt[n]{2^n + 3^n + 1000n^3} \le \sqrt[n]{3^n(2 + 1000n^3)} = 3\sqrt[n]{2 + 1000n^3}.$$
Továbbá $1 \le \sqrt[n]{2 + 1000n^3} \le \sqrt[n]{1002}\cdot\left(\sqrt[n]{n}\right)^3 \to 1 \cdot 1 = 1$. A rendőrelv szerint a határérték $3$.

b) $\frac{1 + 2 + \dots + n}{n^2} = \frac{n(n+1)}{2n^2} = \frac12 + \frac{1}{2n} \to \frac12$.

c) $1 \le 1 + \frac12 + \dots + \frac1n \le n$, így $1 \le \sqrt[n]{1 + \frac12 + \dots + \frac1n} \le \sqrt[n]{n} \to 1$. A határérték $1$.

::: elmelet
**Elméleti háttér — $n$-edik gyökök határértéke és a domináns tag elve.**

*Alaphatárértékek.* $\sqrt[n]{c} \to 1$ minden $c > 0$-ra és $\sqrt[n]{n} \to 1$ (38. f, j). Ezekből $\sqrt[n]{n^k} = (\sqrt[n]{n})^k \to 1$ és $\sqrt[n]{P(n)} \to 1$ minden pozitív értékű polinomra: polinomiális tényezők az $n$-edik gyök alatt „eltűnnek”.

*A domináns tag elve.* Ha $a_1, \dots, a_k > 0$ rögzített számok, akkor
$$\sqrt[n]{a_1^n + a_2^n + \dots + a_k^n} \to \max\{a_1, \dots, a_k\}.$$
*Bizonyítás:* legyen $M$ a maximum; ekkor $M^n \le \sum a_i^n \le kM^n$, így $M \le \sqrt[n]{\sum a_i^n} \le \sqrt[n]{k}\,M \to M$, és a rendőrelv adja az állítást. A feladatban polinomiális tag ($1000n^3$) is szerepel, de az $n$-edik gyök alatt ez is csak egy $1$-hez tartó szorzót ad. (Ez a $\max$-norma közelítése: $\|x\|_p \to \|x\|_\infty$, ha $p \to \infty$.)

*Számtani átlagok.* Az $\frac{1}{n^2}\sum_{k=1}^n k$ típusú kifejezéseknél zárt összegképletet használunk ($\sum k = \frac{n(n+1)}{2}$, $\sum k^2 = \frac{n(n+1)(2n+1)}{6}$). Ezek Riemann-összegek előfutárai: $\frac1n\sum_{k=1}^n \frac kn \to \int_0^1 x\,dx = \frac12$.

*A harmonikus összeg nagyságrendje.* $1 \le H_n = 1 + \frac12 + \dots + \frac1n \le n$, ami a c) részhez elég. Pontosabban $H_n \approx \ln n + \gamma$ ($\gamma \approx 0{,}577$ az Euler–Mascheroni-állandó), így $H_n \to \infty$, de nagyon lassan; az $n$-edik gyök alatt pedig ez is $1$-hez tartó szorzót ad: $\sqrt[n]{H_n} \to 1$.
:::

## 50. feladat

Példák konstruálásával mutassuk meg, hogy ha $a_n \to 0$ és $b_n \to +\infty$, akkor $a_n b_n$ kritikus.

**Megoldás.**

$a_n \to 0$, $b_n \to +\infty$ esetén az $a_n b_n$ szorzat bármi lehet („$0 \cdot \infty$" kritikus típus):

| $a_n$ | $b_n$ | $a_n b_n$ | határérték |
|:---:|:---:|:---:|:---:|
| $\frac{c}{n}$ | $n$ | $c$ | $c$ (tetszőleges valós) |
| $\frac1n$ | $n^2$ | $n$ | $+\infty$ |
| $-\frac1n$ | $n^2$ | $-n$ | $-\infty$ |
| $\frac{1}{n^2}$ | $n$ | $\frac1n$ | $0$ |
| $\frac{(-1)^n}{n}$ | $n$ | $(-1)^n$ | nincs határérték |

Tehát a tényezők határértékéből nem lehet következtetni a szorzatéra.

::: elmelet
**Elméleti háttér — határérték és műveletek; kritikus típusok.**

*A műveleti tételek.* Ha $a_n \to a$ és $b_n \to b$ (véges határértékek), akkor $a_n \pm b_n \to a \pm b$, $a_nb_n \to ab$, és $b \ne 0$ esetén $\frac{a_n}{b_n} \to \frac ab$. Végtelen határértékekre a bővített számegyenesen érvényes szabályok: $a + \infty = \infty$ ($a > -\infty$), $a \cdot \infty = \infty$ ($a > 0$), $\frac{a}{\pm\infty} = 0$ ($a$ véges), stb.

*Kritikus (határozatlan) típusok.* A következő esetekben a tagok határértékéből **nem** határozható meg a művelet eredményének határértéke:
$$\infty - \infty, \qquad 0 \cdot (\pm\infty), \qquad \frac00, \qquad \frac{\pm\infty}{\pm\infty}, \qquad \frac{a}{0}\ (a \ne 0),$$
valamint hatványoknál $1^\infty$, $0^0$, $\infty^0$. A kritikusságot úgy mutatjuk meg, hogy **ugyanabba a típusba** eső sorozatpárokra **különböző** eredményeket (vagy divergenciát) mutatunk — elég öt jól választott példa, mint a táblázatban.

*Hogyan oldjuk fel a kritikus alakot?* Átalakítással, amely a „harcban álló” tényezők nagyságrendjét összeveti: kiemelés, gyöktelenítés, egyszerűsítés, nevezetes határértékek ($\frac{n^k}{a^n} \to 0$ stb.). A $0 \cdot \infty$ alak például $\frac{0}{0}$ vagy $\frac{\infty}{\infty}$ alakra írható: $a_nb_n = \frac{a_n}{1/b_n}$.

*Miért fontos a tényezők nagyságrendje?* A $0 \cdot \infty$ szorzat határértékét az dönti el, hogy $a_n$ „milyen gyorsan” tart $0$-hoz ahhoz képest, ahogy $b_n$ a végtelenbe. Ez a későbbi L'Hospital-szabály és a Taylor-polinomos közelítés motivációja: a határozatlan alakok kiszámítása a nagyságrendek pontos összevetése.
:::

## 51. feladat

Mutassuk meg, hogy ha $a_n \to 0$ és $a_n \neq 0$, akkor $\frac{1}{|a_n|} \to \infty$.

**Megoldás.**

Legyen $K > 0$. Az $a_n \to 0$ definícióját $\varepsilon = \frac1K$-ra alkalmazva van $N$, hogy $n \ge N$ esetén $0 < |a_n| < \frac1K$ (a pozitivitás az $a_n \neq 0$ feltételből jön). Ekkor $\frac{1}{|a_n|} > K$. Tehát $\frac{1}{|a_n|} \to +\infty$. $\blacksquare$

::: elmelet
**Elméleti háttér — nullsorozat reciproka és a $\frac{1}{0}$ alak.**

*Állítás és megfordítása.* Ha $a_n \to 0$ és $a_n \ne 0$, akkor $\frac{1}{|a_n|} \to +\infty$; megfordítva, ha $b_n \to \pm\infty$, akkor $\frac{1}{b_n} \to 0$. A bizonyítás a két definíció „szótára”: $|a_n| < \varepsilon \iff \frac{1}{|a_n|} > \frac{1}{\varepsilon}$, és a $K = \frac1\varepsilon$ megfeleltetés kölcsönösen egyértelmű a pozitív számok között.

*Előjeles változat.* Ha $a_n \to 0$ és egy indextől $a_n > 0$, akkor $\frac{1}{a_n} \to +\infty$ (jelölés: $a_n \to 0^+$); ha $a_n < 0$, akkor $-\infty$. Ha $a_n$ előjele végtelen sokszor változik, $\frac{1}{a_n}$ divergens és tágabb értelemben sincs határértéke (például $a_n = \frac{(-1)^n}{n}$, $\frac{1}{a_n} = (-1)^n n$). Ezért a $\frac{c}{0}$ ($c \ne 0$) alak **nem** feltétlenül végtelen — csak az abszolút érték az.

*A $\frac{a}{0}$ alak a kritikusak között.* A $\frac{1}{a_n}$ határértéke ($+\infty$, $-\infty$ vagy nincs) az előjeltől függ, így a $\frac{c}{0}$ típus kritikus, de „jól kezelhető”: az abszolút érték mindig végtelenbe tart.

*Hol használjuk?* Függvényhatárértékeknél: $\lim_{x \to 0^+}\frac1x = +\infty$, $\lim_{x \to 0^-}\frac1x = -\infty$, így $\lim_{x \to 0}\frac1x$ nem létezik — ez a féloldali határértékek egyik legegyszerűbb példája. Az átviteli elv szerint ez éppen a feladat állításának függvényes változata.
:::

## 52. feladat

Van-e olyan sorozat, amelyik korlátos, de se minimuma, se maximuma nincs?

**Megoldás.**

**Van.** Például $a_n = (-1)^n\left(1 - \frac1n\right)$: tagjai $0, \frac12, -\frac23, \frac34, -\frac45, \dots$

- Korlátos: $|a_n| < 1$.
- A páros indexű tagok $1 - \frac1n$ szigorúan nőnek és tartanak $1$-hez, de sosem érik el, így $\sup = 1$, és maximum nincs (minden pozitív tagnál van nagyobb).
- Hasonlóan a páratlan indexű tagok szigorúan csökkennek $-1$-hez, így minimum sincs.

(A 47. feladat szerint egy ilyen sorozat szükségképpen divergens.)

::: elmelet
**Elméleti háttér — korlátosság, szuprémum és elérhetőség.**

*Szuprémum és maximum különbsége.* Egy korlátos sorozat tagjainak halmazára a teljességi axióma szerint mindig létezik $\sup$ és $\inf$; a maximum és a minimum viszont csak akkor, ha ezeket a sorozat fel is veszi. A $\sup$ el nem éréséhez az kell, hogy legyen egy szigorúan növő részsorozat, amely a $\sup$-hoz tart — és ez a $\sup$ ekkor a sorozat egy **sűrűsödési értéke**.

*A példa szerkezete.* A $(-1)^n\left(1 - \frac1n\right)$ sorozatnak két sűrűsödési értéke van, $1$ és $-1$; a páros indexű részsorozat alulról közelít az $1$-hez, a páratlan indexű felülről a $-1$-hez. Mivel egyik szélső értéket sem éri el, sem maximuma, sem minimuma nincs.

*limsup és liminf.* Korlátos sorozatra $\limsup a_n$ a legnagyobb, $\liminf a_n$ a legkisebb sűrűsödési érték; itt $\limsup = 1 = \sup$ és $\liminf = -1 = \inf$. Általában $\inf a_n \le \liminf a_n \le \limsup a_n \le \sup a_n$, és a sorozat pontosan akkor konvergens, ha $\liminf = \limsup$ (véges).

*Összefüggés a 47. feladattal.* Ha egy sorozatnak sem maximuma, sem minimuma nincs, akkor $\sup a_n$ és $\inf a_n$ is sűrűsödési érték. Ha konvergens volna, mindkettő a határértékkel egyezne, tehát $\sup = \inf$, és a sorozat állandó volna — de állandó sorozatnak van maximuma. Így az ilyen sorozat szükségképpen divergens.

*Bolzano–Weierstrass.* Minden korlátos sorozatnak van konvergens részsorozata — ezért a korlátos sorozatoknak mindig van legalább egy sűrűsödési értéke. A példában kettő is van; egy korlátos sorozatnak akár végtelen sok (sőt kontinuum sok) sűrűsödési értéke is lehet.
:::

## 53. feladat

Határozzuk meg az alábbi sorozatok határértékét.

a) $a_n = \dfrac{3n + 16}{4n - 25}$, b) $b_n = n \cdot \left(\sqrt{1 + \dfrac{1}{n}} - 1\right)$, c) $c_n = \dfrac{1}{n} \cdot \dfrac{n^2 + 1}{n^3 + 1}$, d) $d_n = \dfrac{5 - 2n^2}{4 + n}$,

e) $e_n = \dfrac{\sin(n) + n}{n}$, f) $f_n = \dfrac{2n^3 + 3\sqrt{n}}{1 - n^3}$, g) $g_n = \sqrt[n]{n + 5^n}$, h) $h_n = \dfrac{2^n + n!}{n^n - n^{1000}}$,

i) $i_n = \sqrt[n]{n^n - 5^n}$, j) $j_n = \dfrac{\sin(n)}{n}$, k) $k_n = \dfrac{5n^2 + (-1)^n}{8n}$, l) $l_n = \dfrac{6n + 2n^2 \cdot (-1)^n}{n^2}$.

**Megoldás.**

a) $a_n = \dfrac{3 + 16/n}{4 - 25/n} \to \dfrac34$.

b) $b_n = n\left(\sqrt{1 + \frac1n} - 1\right) = \dfrac{1}{\sqrt{1 + \frac1n} + 1} \to \dfrac12$ (gyöktelenítés, ld. 38. g).

c) $c_n = \dfrac{n^2 + 1}{n(n^3 + 1)} = \dfrac{1/n^2 + 1/n^4}{1 + 1/n^3} \to 0$.

d) $d_n = \dfrac{5 - 2n^2}{4 + n} \to -\infty$. Ha $n \ge 4$, akkor $5 - 2n^2 \le -n^2$ és $0 < 4 + n \le 2n$, így $d_n \le -\frac{n^2}{2n} = -\frac n2 \to -\infty$.

e) $e_n = 1 + \dfrac{\sin n}{n} \to 1$, mert $\left|\frac{\sin n}{n}\right| \le \frac1n \to 0$.

f) $f_n = \dfrac{2 + 3n^{-5/2}}{n^{-3} - 1} \to \dfrac{2}{-1} = -2$.

g) $5 = \sqrt[n]{5^n} \le \sqrt[n]{n + 5^n} \le \sqrt[n]{2 \cdot 5^n} = 5\sqrt[n]2 \to 5$, mert $n \le 5^n$. Tehát $g_n \to 5$.

h) $h_n \to 0$. Ha $n \ge 1001$, akkor $n^{n - 1000} \ge 2$, így $n^n - n^{1000} \ge \frac{n^n}{2} > 0$. Továbbá $n \ge 4$-re $2^n \le n!$, így a számláló legfeljebb $2 \cdot n!$. Tehát
$$0 < h_n \le \frac{2\,n!}{n^n/2} = 4 \cdot \frac{n!}{n^n} = 4 \cdot \frac1n \cdot \frac2n \cdots \frac nn \le \frac{4}{n} \to 0.$$

i) $i_n = \sqrt[n]{n^n - 5^n} = n\sqrt[n]{1 - (5/n)^n}$ (értelmes $n \ge 5$-re). Ha $n \ge 10$, akkor $(5/n)^n \le 2^{-n} \le \frac12$, így $\sqrt[n]{1 - (5/n)^n} \ge \sqrt[n]{1/2} \ge \frac12$, és $i_n \ge \frac n2 \to +\infty$.

j) $|j_n| = \left|\frac{\sin n}{n}\right| \le \frac1n \to 0$, tehát $j_n \to 0$.

k) $k_n \ge \dfrac{5n^2 - 1}{8n} \ge \dfrac{4n^2}{8n} = \dfrac n2 \to +\infty$.

l) $l_n = \dfrac6n + 2(-1)^n$: a páros indexű részsorozat $2$-höz, a páratlan indexű $-2$-höz tart, tehát $(l_n)$ **divergens** (nincs határértéke).

::: elmelet
**Elméleti háttér — a határérték-számítás alapeszközei.**

*1. Racionális törtek.* Ha $p(n) = a_kn^k + \dots$ és $q(n) = b_ln^l + \dots$ ($a_k, b_l \ne 0$), akkor $\frac{p(n)}{q(n)}$ határértéke $k < l$ esetén $0$, $k = l$ esetén $\frac{a_k}{b_l}$, $k > l$ esetén $\pm\infty$ ($\frac{a_k}{b_l}$ előjele szerint). Bizonyítás: osszunk $n^l$-lel (vagy $n^k$-val), és alkalmazzuk a műveleti tételeket, $\frac{1}{n^j} \to 0$ ($j \ge 1$).

*2. Korlátos szor nullsorozat.* Ha $|b_n| \le C$ és $a_n \to 0$, akkor $a_nb_n \to 0$, mert $|a_nb_n| \le C|a_n|$. Ez kezeli a $\sin n$, $(-1)^n$ típusú „oszcilláló” tényezőket ($\frac{\sin n}{n} \to 0$); figyeljünk, hogy a $\sin n$ maga divergens, tehát a műveleti tétel nem alkalmazható közvetlenül.

*3. Rendőrelv.* $n$-edik gyököknél a domináns taggal alulról és a tagok számával szorozva felülről becslünk ($5 \le \sqrt[n]{n + 5^n} \le 5\sqrt[n]2$).

*4. Nagyságrendek.* $n^k \ll a^n \ll n! \ll n^n$ ($a > 1$). Az $\frac{n!}{n^n} = \frac1n \cdot \frac2n \cdots \frac nn \le \frac1n$ becslés és a $2^n \le n!$ ($n \ge 4$) indukciós egyenlőtlenség elég a h) részhez.

*5. Részsorozatok és divergencia.* Konvergens sorozat minden részsorozata ugyanahhoz tart. Ezért ha két részsorozat különböző határértékű (az l) részben a páros és páratlan indexűek: $2$ és $-2$), a sorozat divergens. Megfordítva: ha a páros és a páratlan indexű részsorozat **ugyanahhoz** tart, akkor a sorozat is (mert e két részsorozat lefedi az összes indexet).

*6. Kiemelés $n$-edik gyökből.* $\sqrt[n]{n^n - 5^n} = n\sqrt[n]{1 - (5/n)^n}$: a domináns tagot kiemeljük, a maradékot alulról becsüljük. Hasonló alakok gyakran előfordulnak a gyökkritérium alkalmazásakor sorok konvergenciájánál.

*Ellenőrzés.* Egy kiszámolt határértéket érdemes nagy $n$-re numerikusan is megnézni: például $a_{1000} = \frac{3016}{3975} \approx 0{,}759$, közel a $\frac34$-hez.
:::

## 54. feladat

Bizonyítsuk be, hogy ha $|a_{n+1} - a_n| \le 2^{-n}$ minden $n$-re, akkor $(a_n)$ konvergens.

**Megoldás.**

A Cauchy-kritériumot ellenőrizzük. Ha $m > n$, akkor a háromszög-egyenlőtlenség és a mértani sor összegképlete szerint
$$|a_m - a_n| \le \sum_{k=n}^{m-1} |a_{k+1} - a_k| \le \sum_{k=n}^{m-1} 2^{-k} < \sum_{k=n}^{\infty} 2^{-k} = 2^{1-n}.$$
Adott $\varepsilon > 0$-hoz válasszunk $N$-et úgy, hogy $2^{1-N} < \varepsilon$. Ekkor minden $m > n \ge N$-re $|a_m - a_n| < \varepsilon$, tehát $(a_n)$ Cauchy-sorozat, így ($\mathbb{R}$ teljessége miatt) konvergens. $\blacksquare$

::: elmelet
**Elméleti háttér — Cauchy-kritérium, teleszkopikus becslés, mértani sor.**

*A Cauchy-kritérium.* Egy valós sorozat pontosan akkor konvergens, ha Cauchy-sorozat. A „$\Leftarrow$” irány bizonyításának vázlata: (1) a Cauchy-sorozat korlátos ($\varepsilon = 1$-gyel); (2) a Bolzano–Weierstrass-tétel szerint van konvergens részsorozata, $a_{n_k} \to a$; (3) a Cauchy-tulajdonság miatt az egész sorozat is $a$-hoz tart: $|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a|$, és mindkét tag kicsi, ha $n$ és $k$ elég nagy. A kritérium a $\mathbb{R}$ teljességén múlik: $\mathbb{Q}$-ban a $\sqrt2$ tizedes közelítései Cauchy-sorozatot alkotnak, mégsincs racionális határértékük.

*Teleszkopikus becslés.* $a_m - a_n = \sum_{k=n}^{m-1}(a_{k+1} - a_k)$, így a háromszög-egyenlőtlenséggel
$$|a_m - a_n| \le \sum_{k=n}^{m-1}|a_{k+1} - a_k|.$$
Ha a jobb oldali tagok egy **konvergens sor** tagjaival becsülhetők, akkor a jobb oldal a sor maradéka, amely $0$-hoz tart.

*Mértani sor.* $\sum_{k=n}^\infty q^k = \frac{q^n}{1 - q}$ ($|q| < 1$); itt $q = \frac12$-del $\sum_{k \ge n}2^{-k} = 2^{1-n}$. A $2^{1-N} < \varepsilon$ küszöb $N > 1 + \log_2\frac1\varepsilon$.

*Általánosítás (abszolút konvergencia).* Ha $\sum |a_{k+1} - a_k| < \infty$, akkor $(a_n)$ konvergens — ez a sorok elméletében az **abszolút konvergenciából következik a konvergencia** tétel. Fordítva nem igaz: a $\sum \frac{(-1)^k}{k}$ sor részletösszegei konvergálnak, pedig $\sum \frac1k = \infty$.

*Kontrakció.* Ha $|a_{n+1} - a_n| \le q\,|a_n - a_{n-1}|$ valamely $q < 1$-re, akkor $|a_{n+1} - a_n| \le q^{n-1}|a_2 - a_1|$, és a fenti érvelés szerint a sorozat konvergens. Ez a **Banach-féle fixponttétel** magja, amely rekurzív sorozatok ($a_{n+1} = f(a_n)$, $|f'| \le q < 1$) konvergenciáját biztosítja.
:::

## Röpzhra

**Definíciók:** megszámlálhatóan végtelen halmaz, megszámlálható halmaz, algebrai/transzcendens szám.

**Tételek:** határérték és alapműveletek, Bolzano–Weierstrass-tétel és a hozzá szükséges lemma, Cauchy-kritérium.

# Analízis 1 – 6. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

## 55. feladat

Bizonyítsuk be, hogy az egész számokból képezhető véges sorozatok száma megszámlálható.

**Megoldás.**

Legyen $\varphi : \mathbb{Z} \to \mathbb{N}^+$ injekció, pl. $\varphi(z) = 2z$, ha $z > 0$, és $\varphi(z) = 1 - 2z$, ha $z \le 0$. Jelölje $p_1 = 2, p_2 = 3, p_3 = 5, \dots$ a prímeket. Rendeljük a $(z_1, \dots, z_k)$ véges sorozathoz a
$$\Phi(z_1, \dots, z_k) = p_1^{\varphi(z_1)} \cdot p_2^{\varphi(z_2)} \cdots p_k^{\varphi(z_k)}$$
természetes számot (az üres sorozathoz az $1$-et). A számelmélet alaptétele (a prímtényezős felbontás egyértelműsége) és $\varphi(z_i) \ge 1$ miatt $\Phi$-ből visszaolvasható a hossz és minden tag, tehát $\Phi$ injektív. Így a véges sorozatok halmaza legfeljebb megszámlálható; mivel végtelen (az egytagú sorozatok már $\mathbb{Z}$-vel ekvivalensek), **megszámlálhatóan végtelen**.

(Másik út: a $k$ hosszú sorozatok halmaza $\mathbb{Z}^k$, ami megszámlálható, és megszámlálható sok megszámlálható halmaz uniója megszámlálható.)

::: elmelet
**Elméleti háttér — megszámlálhatóság: injekciók, kódolás, uniók.**

*Alapfogalmak.* Két halmaz **ekvivalens** (egyenlő számosságú, $A \sim B$), ha van köztük bijekció. $A$ **megszámlálhatóan végtelen**, ha $A \sim \mathbb{N}$; **legfeljebb megszámlálható**, ha véges vagy megszámlálhatóan végtelen.

*Három kényelmes kritérium.* Egy nem üres $A$ halmazra ekvivalensek:

1. $A$ legfeljebb megszámlálható;
2. van $A \to \mathbb{N}$ **injekció**;
3. van $\mathbb{N} \to A$ **szürjekció** (az elemei felsorolhatók, ismétlésekkel is).

Ezért megszámlálhatóság bizonyításához elég egy injektív „kódolást” vagy egy (nem feltétlenül ismétlésmentes) felsorolást adni. Végtelen részhalmaza révén pedig a halmaz legalább megszámlálható.

*A prímhatvány-kódolás (Gödel-számozás).* A $(z_1, \dots, z_k) \mapsto 2^{\varphi(z_1)}3^{\varphi(z_2)}\cdots p_k^{\varphi(z_k)}$ kódolás a **számelmélet alaptételén** (a prímfelbontás egyértelműségén) alapul: a kódból a kitevők, így a tagok visszaolvashatók. A $\varphi(z) \ge 1$ feltétel biztosítja, hogy a hossz is látszódjon (a $k$-adik prím szerepel, a $(k+1)$-edik nem). Ugyanezt a kódolást használta Gödel a nemteljességi tételében formulák számokkal való azonosítására.

*Uniók.* Megszámlálható sok, legfeljebb megszámlálható halmaz uniója legfeljebb megszámlálható. Bizonyítás: ha $A_k = \{a_{k1}, a_{k2}, \dots\}$, akkor $\bigcup_k A_k$ az $(k, j) \mapsto a_{kj}$ szürjekció képe $\mathbb{N} \times \mathbb{N}$-ről, és $\mathbb{N} \times \mathbb{N}$ megszámlálható (átlós felsorolás). (A felsorolások kiválasztása a megszámlálható kiválasztási axiómát használja, ami az analízisben szokásosan megengedett.)

*Következmények.* $\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{Z}^k$, a véges sorozatok, a véges részhalmazok, a polinomok (egész vagy racionális együtthatóval), a véges szövegek (egy véges ábécé fölött) halmaza mind megszámlálható. Ezzel szemben a **végtelen** $0$–$1$ sorozatok halmaza (azaz $\mathcal{P}(\mathbb{N})$) már nem (Cantor átlós érvelése, 62. feladat).
:::

## 56. feladat

Határozzuk meg az alábbi sorozatok határértékét.

(a) $a_n = \sqrt[n]{2n + \sqrt{n}}$, (b) $b_n = \dfrac{n^7 - 6n^6 + 5n^5 - n - 1}{n^3 + n^2 + n + 1}$, (c) $c_n = \dfrac{n^3 + n^2\sqrt{n} - \sqrt{n} + 1}{2n^3 - 6n + \sqrt{n} - 2}$,

(d) $d_n = \sqrt[n]{\dfrac{1}{n} - \dfrac{2}{n^2}}$, (e) $e_n = \sqrt[n]{2^n + 17n^2 + 3^n}$, (f) $f_n = \dfrac{\sqrt{2n + 1}}{\sqrt{3n + 4}}$,

(g) $g_n = \sqrt{\dfrac{n + 1}{n + 2}}$, (h) $h_n = \dfrac{7^n - 7^{-n}}{7^n + 7^{-n}}$, (i) $i_n = \dfrac{(2n + 3)^5 \cdot (18n + 17)^{15}}{(6n + 5)^{20}}$,

(j) $j_n = \dfrac{\sqrt{4n^2 + 2n + 100}}{\sqrt[3]{6n^3 - 7n^2 + 2}}$, (k) $k_n = \dfrac{\sqrt[4]{n^3 + 6}}{\sqrt[3]{n^2 + 3n - 2}}$, (l) $l_n = n \cdot (\sqrt{n + 1} - \sqrt{n})$,

(m) $m_n = \dfrac{2^n + 5^n}{3^n + 1}$, (q) $q_n = n \cdot (\sqrt{n^2 + n} - \sqrt{n^2 - n})$.

**Megoldás.**

(a) $1 \le \sqrt[n]{2n + \sqrt n} \le \sqrt[n]{3n} = \sqrt[n]3\,\sqrt[n]n \to 1$, tehát $a_n \to 1$.

(b) $n^3$-nel osztva: $b_n = \dfrac{n^4 - 6n^3 + 5n^2 - n^{-2} - n^{-3}}{1 + n^{-1} + n^{-2} + n^{-3}} \to +\infty$, hiszen a számláló $n^4(1 - 6/n + \dots) \to +\infty$, a nevező $\to 1$.

(c) $n^3$-nel osztva: $c_n = \dfrac{1 + n^{-1/2} - n^{-5/2} + n^{-3}}{2 - 6n^{-2} + n^{-5/2} - 2n^{-3}} \to \dfrac12$.

(d) Ha $n \ge 4$, akkor $\frac{2}{n^2} \le \frac{1}{2n}$, így $\frac{1}{2n} \le \frac1n - \frac{2}{n^2} \le \frac1n$, és
$$\frac{1}{\sqrt[n]{2n}} \le d_n \le \frac{1}{\sqrt[n]{n}}.$$
Mindkét korlát $1$-hez tart, tehát $d_n \to 1$.

(e) $3 \le \sqrt[n]{2^n + 17n^2 + 3^n} \le 3\sqrt[n]{2 + 17n^2} \to 3$ (ld. 49. a), tehát $e_n \to 3$.

(f) $f_n = \sqrt{\dfrac{2 + 1/n}{3 + 4/n}} \to \sqrt{\dfrac23}$ (ha $x_n \to x \ge 0$, akkor $\sqrt{x_n} \to \sqrt x$).

(g) $g_n = \sqrt{\dfrac{1 + 1/n}{1 + 2/n}} \to 1$.

(h) $7^n$-nel osztva: $h_n = \dfrac{1 - 49^{-n}}{1 + 49^{-n}} \to 1$.

(i) Minden tényezőt $n$-nel osztva:
$$i_n = \frac{(2 + 3/n)^5 (18 + 17/n)^{15}}{(6 + 5/n)^{20}} \to \frac{2^5 \cdot 18^{15}}{6^{20}} = \frac{2^5 \cdot 3^{15} \cdot 6^{15}}{6^{20}} = \frac{2^5 \cdot 3^{15}}{2^5 \cdot 3^5} = 3^{10} = 59\,049.$$

(j) $j_n = \dfrac{n\sqrt{4 + 2/n + 100/n^2}}{n\sqrt[3]{6 - 7/n + 2/n^3}} \to \dfrac{2}{\sqrt[3]{6}}$.

(k) $k_n = \dfrac{n^{3/4}(1 + 6/n^3)^{1/4}}{n^{2/3}(1 + 3/n - 2/n^2)^{1/3}} = n^{1/12} \cdot \dfrac{(1 + 6/n^3)^{1/4}}{(1 + 3/n - 2/n^2)^{1/3}} \to +\infty$, mert $n^{1/12} \to \infty$, a tört pedig $1$-hez tart.

(l) $l_n = \dfrac{n}{\sqrt{n+1} + \sqrt n} \ge \dfrac{n}{2\sqrt{2n}} = \dfrac{\sqrt n}{2\sqrt2} \to +\infty$.

(m) $m_n \ge \dfrac{5^n}{2 \cdot 3^n} = \dfrac12\left(\dfrac53\right)^n \to +\infty$ (mert $3^n + 1 \le 2 \cdot 3^n$).

(q) Gyöktelenítve:
$$q_n = \frac{n \cdot 2n}{\sqrt{n^2+n} + \sqrt{n^2-n}} = \frac{2n}{\sqrt{1 + 1/n} + \sqrt{1 - 1/n}} \ge \frac{2n}{2\sqrt2} \to +\infty.$$

::: elmelet
**Elméleti háttér — határérték-számítás: műveletek, folytonos függvények, domináns tag.**

*Műveleti tételek.* Ha $a_n \to a$, $b_n \to b$ ($a, b \in \mathbb{R}$), akkor $a_n + b_n \to a + b$, $a_nb_n \to ab$, $\frac{a_n}{b_n} \to \frac ab$ ($b \ne 0$). Ezek a bővített számegyenesre is kiterjeszthetők, kivéve a kritikus eseteket.

*Hatványok és gyökök.* Ha $a_n \to a$, akkor $a_n^k \to a^k$ (szorzatszabály), és $a_n \ge 0$, $a \ge 0$ esetén $\sqrt[k]{a_n} \to \sqrt[k]{a}$. Az utóbbi $a > 0$-ra az $x^k - y^k = (x - y)(x^{k-1} + \dots + y^{k-1})$ azonosságból: $|\sqrt[k]{a_n} - \sqrt[k]{a}| \le \frac{|a_n - a|}{\sqrt[k]{a}^{\,k-1}}$; $a = 0$-ra közvetlenül a definícióból. Általános elv (a függvények folytonosságánál): **folytonos függvény felcserélhető a határértékkel**.

*A domináns tag módszere törtekre.* Ha a számlálóban és a nevezőben különböző (akár tört kitevős) hatványok összegei állnak, osszunk a nevező legnagyobb hatványával. A legnagyobb kitevők különbsége dönt: $n^{a}/n^{b} = n^{a - b}$, ami $a > b$-re $\infty$, $a = b$-re $1$, $a < b$-re $0$. A k) részben $\frac34 - \frac23 = \frac1{12} > 0$, ezért a határérték $+\infty$ — bár „nagyon lassan”: $n^{1/12}$ még $n = 10^{12}$-re is csak $10$.

*Szorzat és hatvány domináns tagja.* Az i) rész mutatja: egy polinomszorzat domináns tagja a tényezők domináns tagjainak szorzata, így $(2n + 3)^5(18n + 17)^{15} \sim 2^5 18^{15} n^{20}$. Mivel a nevező is huszadfokú, a határérték a főegyütthatók hányadosa.

*Exponenciálisok.* $a^n$, $b^n$ összegeiben a legnagyobb alap dominál: $\frac{2^n + 5^n}{3^n + 1} \sim \left(\frac53\right)^n \to \infty$, $\frac{7^n - 7^{-n}}{7^n + 7^{-n}} \to 1$. (Az utóbbi a $\tanh(n\ln 7)$ — hiperbolikus tangens —, amely $1$-hez tart.)

*Gyökös különbségek.* Az l), q) részekben gyöktelenítés után a számláló és a nevező nagyságrendje: $l_n \sim \frac{\sqrt n}{2}$, $q_n \sim n$. Itt a gyöktelenítés nélküli „$\infty \cdot 0$” alakból semmi sem olvasható le.
:::

## 57. feladat

Adjunk példákat arra, hogy $a_n - b_n \to 0$, de $a_n/b_n$ nem tart 1-hez, illetve $a_n/b_n \to 1$, de $a_n - b_n$ nem tart 0-hoz.

**Megoldás.**

- $a_n - b_n \to 0$, de $a_n/b_n \not\to 1$: $a_n = \frac2n$, $b_n = \frac1n$. Ekkor $a_n - b_n = \frac1n \to 0$, de $a_n/b_n = 2$.
- $a_n/b_n \to 1$, de $a_n - b_n \not\to 0$: $a_n = n + 1$, $b_n = n$. Ekkor $\frac{a_n}{b_n} = 1 + \frac1n \to 1$, de $a_n - b_n = 1$. (Vagy $a_n = n^2 + n$, $b_n = n^2$: a különbség $n \to \infty$.)

::: elmelet
**Elméleti háttér — aszimptotikus egyenlőség és a különbség.**

*Definíció.* $a_n \sim b_n$ (**aszimptotikusan egyenlők**), ha $\frac{a_n}{b_n} \to 1$. Ez a „relatív hiba” kicsinysége: $\frac{a_n - b_n}{b_n} \to 0$. Ezzel szemben $a_n - b_n \to 0$ az „abszolút hiba” kicsinysége.

*Kapcsolatuk.*

- Ha $b_n$ korlátos *és* $|b_n| \ge c > 0$ (a $0$-tól elválasztott), akkor a kettő ekvivalens: $\frac{a_n}{b_n} - 1 = \frac{a_n - b_n}{b_n}$, és $\frac{1}{|b_n|} \le \frac1c$.
- Nullsorozatoknál az abszolút hiba mindig kicsi, a relatív hiba bármi lehet (az első példa).
- Végtelenbe tartó sorozatoknál a relatív hiba lehet kicsi, miközben az abszolút hiba nagy (a második példa).

*Nevezetes aszimptotikák.* $\sqrt{n+1} - \sqrt n \sim \frac{1}{2\sqrt n}$; $\binom{n}{2} \sim \frac{n^2}{2}$; $1 + 2 + \dots + n \sim \frac{n^2}{2}$; $H_n = 1 + \frac12 + \dots + \frac1n \sim \ln n$; **Stirling-formula:** $n! \sim \sqrt{2\pi n}\left(\frac ne\right)^n$ — itt a két oldal *különbsége* a végtelenbe tart, csak a hányados tart $1$-hez.

*Miért fontos a megkülönböztetés?* Az $\sim$ reláció szorzásra és osztásra „jól viselkedik” ($a_n \sim b_n$, $c_n \sim d_n \Rightarrow a_nc_n \sim b_nd_n$), összeadásra és kivonásra **nem**: $n + 1 \sim n$ és $-n \sim -n$, de $(n + 1) + (-n) = 1 \not\sim 0$. Ezért határozatlan különbségeknél ($\infty - \infty$) nem szabad a tagokat aszimptotikus megfelelőikkel helyettesíteni — ez a határérték-számítás egyik leggyakoribb hibaforrása.
:::

## 58. feladat

Vizsgáljuk meg monotonitás szempontjából a következő sorozatokat! Konvergálnak-e? Ha igen, akkor hova?

a) $a_1 = 1$, $a_{n+1} = \sqrt{2a_n}$; b) $b_1 = 0$, $b_{n+1} = \dfrac{1}{3 - b_n}$.

**Megoldás.**

a) **Korlátosság:** indukcióval $1 \le a_n < 2$. $a_1 = 1$; ha $1 \le a_n < 2$, akkor $a_{n+1} = \sqrt{2a_n} \in [\sqrt2, 2)$.

**Monotonitás:**
$$a_{n+1} - a_n = \sqrt{2a_n} - a_n = \sqrt{a_n}\left(\sqrt2 - \sqrt{a_n}\right) > 0,$$
mert $0 < a_n < 2$. Tehát szigorúan monoton nő.

Monoton és korlátos, így konvergens; legyen $a_n \to A \ge 1$. A rekurzióban határértéket véve $A = \sqrt{2A}$, $A^2 = 2A$, és $A \neq 0$ miatt **$A = 2$**. (Explicit alak: $a_n = 2^{1 - 2^{1-n}}$.)

b) A fixpontok: $x = \frac{1}{3 - x} \iff x^2 - 3x + 1 = 0 \iff x = \frac{3 \pm \sqrt5}{2}$. Legyen $\alpha = \frac{3 - \sqrt5}{2} \approx 0{,}382$; ekkor $\alpha(3 - \alpha) = 1$.

**Korlátosság:** indukcióval $0 \le b_n < \alpha$. $b_1 = 0$. Ha $0 \le b_n < \alpha$, akkor $3 - b_n > 3 - \alpha > 0$, így $0 < b_{n+1} = \frac{1}{3 - b_n} < \frac{1}{3 - \alpha} = \alpha$.

**Monotonitás:** a $g(x) = \frac{1}{3 - x}$ függvény $(-\infty, 3)$-on szigorúan monoton nő. $b_1 = 0 < \frac13 = b_2$, és ha $b_n < b_{n+1}$, akkor $b_{n+1} = g(b_n) < g(b_{n+1}) = b_{n+2}$. Tehát szigorúan monoton nő.

Így konvergens; ha $b_n \to B \in [0, \alpha]$, akkor $B = \frac{1}{3 - B}$, tehát $B$ fixpont, és $B \le \alpha$ miatt **$B = \alpha = \frac{3 - \sqrt5}{2}$**.

::: elmelet
**Elméleti háttér — rekurzív sorozatok és fixpontok részletesen.**

*Az eljárás lépései* ($a_{n+1} = g(a_n)$):

1. **Fixpontok** meghatározása: $x = g(x)$. Ezek a lehetséges határértékek (ha $g$ folytonos).
2. **Invariáns intervallum** keresése, amely tartalmazza a kezdőértéket, és amelyet $g$ önmagába visz; ebből indukcióval korlát.
3. **Monotonitás:** vagy az $a_{n+1} - a_n = g(a_n) - a_n$ előjeléből (a $g(x) - x$ függvény előjele az invariáns intervallumon), vagy — ha $g$ monoton nő — az első két tag összehasonlításából indukcióval.
4. **Konvergencia** a monoton konvergencia tételéből, és a **határérték** a fixpontegyenletből, a korlátok alapján kiválasztva.

*A $g(x) - x$ előjele mint térkép.* Az a) részben $g(x) - x = \sqrt{2x} - x > 0$ a $(0, 2)$ intervallumon: ott a sorozat nő, és a következő fixpont, a $2$ felé halad. A b) részben $g(x) - x = \frac{1 - 3x + x^2}{3 - x}$, ami a $[0, \alpha)$ intervallumon pozitív: a sorozat $\alpha$ felé nő. Általában a fixpontok közötti intervallumokon a sorozat a $g(x) - x$ előjele szerint halad, és — ha a fixpontot nem lépheti át (ezt adja a $g$ monotonitása) — a legközelebbi fixponthoz tart.

*Vonzó és taszító fixpontok.* Ha $g$ differenciálható, és $|g'(A)| < 1$, a fixpont **vonzó** (a közeli kezdőértékekről a sorozat hozzá tart); ha $|g'(A)| > 1$, **taszító**. A b) részben $g'(x) = \frac{1}{(3 - x)^2}$, így $g'(\alpha) = \alpha^2 \approx 0{,}146 < 1$ (vonzó), $g'(\beta) = \beta^2 \approx 6{,}85 > 1$ (taszító), ahol $\beta = \frac{3 + \sqrt5}{2}$. Ez magyarázza, miért nem a $\beta$ a határérték.

*Explicit alak.* Az a) részben $\log_2 a_{n+1} = \frac{1 + \log_2 a_n}{2}$, vagyis $c_n = 1 - \log_2 a_n$-re $c_{n+1} = \frac{c_n}{2}$, $c_1 = 1$, így $c_n = 2^{1-n}$ és $a_n = 2^{1 - 2^{1-n}} \to 2$. Explicit képlet ritkán van; a monoton-korlátos módszer akkor is működik, ha nincs.
:::

## 59. feladat

Bizonyítsuk be, hogy $\mathbb{R} \setminus \mathbb{Q}$ nem megszámlálható, pontosabban $(\mathbb{R} \setminus \mathbb{Q}) \sim \mathbb{R}$.

**Megoldás.**

**Nem megszámlálható:** ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható volna, akkor $\mathbb{R} = \mathbb{Q} \cup (\mathbb{R} \setminus \mathbb{Q})$ két megszámlálható halmaz uniójaként megszámlálható lenne – de $\mathbb{R}$ nem megszámlálható (Cantor).

**$(\mathbb{R} \setminus \mathbb{Q}) \sim \mathbb{R}$ („Hilbert-szálloda"):** legyen $\mathbb{Q} = \{q_1, q_2, \dots\}$ egy felsorolás, és $s_n = \sqrt2 + n$ ($n \in \mathbb{N}$) – ezek különböző irracionális számok; $S = \{s_1, s_2, \dots\}$. Definiáljuk $f : \mathbb{R} \to \mathbb{R} \setminus \mathbb{Q}$-t:
$$f(q_n) = s_{2n}, \qquad f(s_n) = s_{2n-1}, \qquad f(x) = x \text{ egyébként}.$$
$f$ a $\mathbb{Q} \cup S$ halmazt bijektíven képezi $S$-re (a racionálisok a páros, $S$ elemei a páratlan indexű helyekre kerülnek), a maradék $(\mathbb{R}\setminus\mathbb{Q}) \setminus S$ halmazon pedig az identitás. Tehát $f$ bijekció $\mathbb{R}$ és $\mathbb{R} \setminus \mathbb{Q}$ között. $\blacksquare$

::: elmelet
**Elméleti háttér — számosságok: $\mathbb{R}$ nem megszámlálható, és a „Hilbert-szálloda”.**

*Cantor tétele.* $\mathbb{R}$ nem megszámlálható. *Bizonyítás a Cantor-tulajdonsággal:* tegyük fel, hogy $\mathbb{R} = \{x_1, x_2, \dots\}$. Válasszunk $I_1$ zárt intervallumot, amely nem tartalmazza $x_1$-et; $I_1$-ben egy $I_2$ zárt intervallumot, amely nem tartalmazza $x_2$-t; és így tovább. A Cantor-tulajdonság szerint van $\xi \in \bigcap I_n$, de $\xi \ne x_n$ minden $n$-re, mert $x_n \notin I_n$. Ellentmondás. (Alternatíva: Cantor átlós eljárása tizedes törtekkel.)

*Irracionálisak.* Ha $\mathbb{R} \setminus \mathbb{Q}$ megszámlálható volna, $\mathbb{R}$ két megszámlálható halmaz uniójaként az lenne. Tehát „sokkal több” irracionális szám van, mint racionális — pedig mindkettő sűrű.

*Megszámlálható halmaz elnyelése.* Ha $X$ végtelen, és $C$ megszámlálható, akkor $X \cup C \sim X$. A bizonyítás ötlete (Hilbert-szálloda): $X$-ben kiválasztunk egy megszámlálható $S = \{s_1, s_2, \dots\}$ részhalmazt, és a $C \cup S$ elemeit „összetoljuk” $S$-be: a $C$ elemei a páros, az $S$ elemei a páratlan sorszámú helyekre kerülnek; $X \setminus S$ elemei helyben maradnak. (A szálloda-hasonlat: egy teli, végtelen szállodában minden vendéget a szobaszáma kétszeresébe költöztetünk, és a felszabaduló páratlan szobákba végtelen sok új vendég fér.)

*Számosság-aritmetika.* Ugyanezzel a gondolattal: $\mathbb{R} \sim (0, 1) \sim [0, 1] \sim \mathbb{R} \setminus \mathbb{Q} \sim$ az irracionálisak bármely nyílt intervallumban. A végtelen halmazok számossága nem változik, ha megszámlálható sok elemet hozzáveszünk vagy elhagyunk (feltéve, hogy nem megszámlálható marad a halmaz). A **kontinuumhipotézis** (hogy nincs számosság $\mathbb{N}$ és $\mathbb{R}$ között) a szokásos axiómákból sem nem bizonyítható, sem nem cáfolható (Gödel, Cohen).
:::

## 60*. feladat

*(Ábra: a számegyenesre állított, különböző magasságú és szélességű „T" betűk; mindegyik T szára egy-egy pontban áll a számegyenesen, a T-k nem metszik egymást.)*

a) Tudunk-e az ábrának megfelelően diszjunkt T-betűket rakni a racionális számokra? (A T-betűk magasságát és (nem nulla) szélességét szabadon választhatjuk meg.)

b) Tudunk-e az ábrának megfelelően diszjunkt T-betűket rakni az irracionális számokra?

**Megoldás.**

Egy $x$ pontra állított T-betű: szára az $\{x\} \times [0, h]$ szakasz, kalapja a $[x - w, x + w] \times \{h\}$ szakasz ($h, w > 0$). Két T, az $x < y$ pontokon, akkor metszi egymást, ha az alacsonyabbik (vagy egyforma magasság esetén bármelyik) kalapja eléri a másik szárát: ha $h_y \le h_x$, a metszés feltétele $y - w_y \le x$ (a magasabb kalap az alacsonyabb T fölött halad el).

a) **Igen.** Legyen $\mathbb{Q} = \{q_1, q_2, \dots\}$. A $q_n$-re állított T magassága legyen $h_n = \frac1n$, félszélessége $w_1 = 1$, illetve $n \ge 2$-re
$$w_n = \frac12 \min\{|q_n - q_k| : k < n\} > 0.$$
Ha $k < n$, akkor $T_n$ az alacsonyabb, és kalapja nem éri el $q_k$-t, mert $w_n < |q_n - q_k|$; $T_k$ kalapja pedig $T_n$ fölött halad. Így a T-k páronként diszjunktak.

b) **Nem.** Tegyük fel, hogy minden irracionális $x$-re áll egy $(h_x, w_x)$ méretű T, és ezek diszjunktak. Mivel
$$\mathbb{R} \setminus \mathbb{Q} = \bigcup_{n=1}^{\infty} \left\{x \notin \mathbb{Q} : w_x \ge \tfrac1n\right\},$$
és a bal oldal nem megszámlálható, valamelyik $H_n = \{x : w_x \ge \frac1n\}$ nem megszámlálható. Osszuk a számegyenest $\frac1n$ hosszú $[\frac{k}{n}, \frac{k+1}{n})$ intervallumokra (megszámlálható sok); valamelyikbe $H_n$ legalább két pontja esik: $x < y$, $y - x < \frac1n$. Ha $h_x \ge h_y$, akkor $y$ kalapja ($w_y \ge \frac1n > y - x$) eléri az $x$ szárát a $h_y \le h_x$ magasságban; ha $h_y > h_x$, akkor szimmetrikusan $x$ kalapja metszi $y$ szárát. Ellentmondás.

::: elmelet
**Elméleti háttér — a végtelen skatulyaelv és a megszámlálható konstrukciók.**

*Végtelen skatulyaelv.* Ha egy nem megszámlálható halmazt megszámlálható sok részre bontunk, valamelyik rész nem megszámlálható. (Különben a halmaz megszámlálható sok megszámlálható halmaz uniója, tehát megszámlálható volna.) Hasonlóan: ha végtelen halmazt véges sok részre bontunk, valamelyik rész végtelen.

*A b) rész szerkezete.* A T-k „vastagságát” a $w_x$ félszélesség méri. A nem megszámlálható irracionálishalmazt a $\{w_x \ge \frac1n\}$ részekre bontva a végtelen skatulyaelv ad egy nem megszámlálható $H_n$-t, amelyben minden T legalább $\frac1n$ széles. Egy második skatulyázás (a $\frac1n$ hosszú intervallumok megszámlálhatók) két, egymáshoz $\frac1n$-nél közelebbi pontot ad $H_n$-ben, és ezek T-i ütköznek.

*Az a) rész szerkezete.* Megszámlálható halmazon **egyszerű rekurzióval** dolgozhatunk: a $q_n$-re állított T méreteit csak a korábbi, véges sok T-hez kell igazítani (a minimum pozitív, mert véges sok pozitív szám minimuma). Ugyanez a technika ad például olyan függvényt, amely minden racionális pontban szakad, de az irracionálisakban folytonos (Riemann-függvény), és **nincs** olyan, amely fordítva viselkedik — ennek bizonyítása is egy számossági (Baire-féle) érvelés.

*Hasonló jelenségek.* Bármely diszjunkt, nem degenerált intervallumokból álló halmazrendszer megszámlálható (mindegyik tartalmaz egy racionális számot, és ezek különbözők). A síkban diszjunkt „nyolcasok” rendszere is legfeljebb megszámlálható lehet, míg diszjunkt körvonalakból kontinuum sok van (koncentrikus körök). Az ilyen feladatok közös kulcsa: egy „vastag” objektum mindig tartalmaz egy racionális (megszámlálható halmazból vett) „tanút”.
:::

## 61. feladat

Bizonyítsuk be, hogy az algebrai számok halmaza megszámlálható.

**Megoldás.**

Egy szám algebrai, ha gyöke egy nem nulla, egész együtthatós polinomnak. Az egész együtthatós polinomok az együtthatóik véges sorozatával azonosíthatók, így az 55. feladat szerint megszámlálhatóan sokan vannak: $P_1, P_2, \dots$. Minden nem nulla $P_k$-nak legfeljebb $\deg P_k$ (valós vagy komplex) gyöke van, tehát az algebrai számok halmaza
$$\bigcup_{k} \{x : P_k(x) = 0\}$$
megszámlálható sok véges halmaz uniója, így megszámlálható. Végtelen, mert tartalmazza $\mathbb{Q}$-t ($p/q$ a $qx - p$ gyöke). $\blacksquare$

(Következmény: létezik transzcendens szám, sőt a valós számok „majdnem mind" transzcendensek.)

::: elmelet
**Elméleti háttér — algebrai és transzcendens számok.**

*Definíció.* Egy (valós vagy komplex) szám **algebrai**, ha gyöke egy nem azonosan nulla, egész (ekvivalensen: racionális) együtthatós polinomnak; különben **transzcendens**. Minden racionális szám algebrai ($qx - p$), a $\sqrt2$ is ($x^2 - 2$), a $\sqrt[3]{2} + \sqrt3$ is (az algebrai számok testet alkotnak).

*A gyökök száma.* Egy $d$-edfokú, nem nulla polinomnak legfeljebb $d$ gyöke van: ha $\alpha$ gyök, a polinom osztható $(x - \alpha)$-val (gyöktényező-leválasztás), és a hányados $(d-1)$-edfokú, így indukcióval.

*Cantor érvelése.* Az egész együtthatós polinomok megszámlálhatók (55. feladat), mindegyiknek véges sok gyöke van, így az algebrai számok halmaza megszámlálható. Mivel $\mathbb{R}$ nem megszámlálható, **léteznek transzcendens számok**, sőt a valós számok „szinte mind” transzcendensek (az algebrai számok halmazának Lebesgue-mértéke $0$).

*Konkrét transzcendens számok.* Cantor érve nem mutat meg egyetlen konkrét transzcendens számot sem. Konkrét példák: Liouville száma $\sum_{k=1}^\infty 10^{-k!}$ (1844, az első ismert), $e$ (Hermite, 1873), $\pi$ (Lindemann, 1882 — ebből következik, hogy a kör négyszögesítése körzővel és vonalzóval lehetetlen), $2^{\sqrt2}$ (Gelfond–Schneider). Hogy $e + \pi$ vagy $e\pi$ transzcendens-e, máig nyitott kérdés.

*Egy finomabb számlálás.* A polinomokat a **magasságuk** szerint is felsorolhatjuk: $h(P) = \deg P + \sum |a_i|$. Adott $h$-hoz csak véges sok polinom tartozik, így a $h = 1, 2, 3, \dots$ szerinti felsorolás közvetlenül is megszámlálja a polinomokat — ez a Cantor által használt eredeti módszer.
:::

## 62. feladat

Bizonyítsuk be, hogy $\mathbb{N}$ összes részhalmazainak halmaza kontinuum számosságú.

**Megoldás.**

A Schröder–Bernstein-tétel szerint elég kölcsönösen injektív leképezéseket megadni $\mathcal{P}(\mathbb{N})$ és $\mathbb{R}$ között.

- **$\mathcal{P}(\mathbb{N}) \to \mathbb{R}$:** $A \mapsto \sum_{n \in A} 10^{-n}$, azaz annak a $0$-s és $1$-es jegyekből álló tizedes törtnek az értéke, amelynek $n$-edik jegye $1$ pontosan akkor, ha $n \in A$. Mivel a jegyek között nincs $9$, a tizedes alak egyértelmű, így különböző halmazokhoz különböző szám tartozik: a leképezés injektív.
- **$\mathbb{R} \to \mathcal{P}(\mathbb{N})$:** $x \mapsto \{q \in \mathbb{Q} : q < x\} \subseteq \mathbb{Q}$. Injektív, mert $x < y$ esetén a racionális számok sűrűsége miatt van $q \in \mathbb{Q}$, $x < q < y$, amely $y$ képében benne van, $x$ képében nincs. Mivel $\mathbb{Q} \sim \mathbb{N}$, ez $\mathcal{P}(\mathbb{Q}) \sim \mathcal{P}(\mathbb{N})$ révén injekció $\mathcal{P}(\mathbb{N})$-be.

Tehát $\mathcal{P}(\mathbb{N}) \sim \mathbb{R}$, azaz $\mathcal{P}(\mathbb{N})$ kontinuum számosságú. $\blacksquare$

::: elmelet
**Elméleti háttér — kontinuum számosság, Cantor-tétel és Schröder–Bernstein.**

*Schröder–Bernstein-tétel.* Ha van $f : A \to B$ és $g : B \to A$ injekció, akkor van $A \to B$ bijekció. (Bizonyítás vázlata: az $A$ elemeit aszerint osztályozzuk, hogy az $f$ és $g^{-1}$ felváltott visszakövetése $A$-ban, $B$-ben vagy sehol nem akad el; az első és harmadik osztályon $f$-et, a másodikon $g^{-1}$-et használjuk.) Ezzel a számosságok összehasonlítása „$\le$” értelemben antiszimmetrikus.

*A két injekció.*

- $\mathcal{P}(\mathbb{N}) \hookrightarrow \mathbb{R}$: a karakterisztikus sorozat ($0$–$1$ sorozat) tizedes törtként olvasva. A $10$-es alap és a csak $0$, $1$ jegyek miatt két különböző sorozat különböző számot ad (a $\dots0999\dots = \dots1000\dots$ kétértelműség itt nem fordulhat elő). Kettes alappal ez nem volna injektív ($0{,}0111\ldots_2 = 0{,}1_2$).
- $\mathbb{R} \hookrightarrow \mathcal{P}(\mathbb{Q})$: $x \mapsto \{q \in \mathbb{Q} : q < x\}$, a **Dedekind-szelet**. Injektív a racionálisok sűrűsége miatt. (Dedekind éppen így *konstruálta* a valós számokat a racionálisokból: a valós számok a racionálisok „alsó szeletei”.)

*Cantor tétele.* Semmilyen $A$ halmazra nincs $A \to \mathcal{P}(A)$ szürjekció; így $|\mathcal{P}(A)| > |A|$. *Bizonyítás:* ha $f : A \to \mathcal{P}(A)$, legyen $D = \{a \in A : a \notin f(a)\}$. Ha $D = f(d)$ volna, akkor $d \in D \iff d \notin f(d) = D$ — ellentmondás. Speciálisan $|\mathbb{R}| = |\mathcal{P}(\mathbb{N})| > |\mathbb{N}|$, és $|\mathcal{P}(\mathbb{R})| > |\mathbb{R}|$: a végtelen számosságok sora nem ér véget.

*Kontinuum számosságú halmazok.* $\mathbb{R}$, bármely nem degenerált intervallum, $\mathbb{R}^n$, $\mathbb{C}$, a végtelen $0$–$1$ sorozatok, a valós sorozatok ($\mathbb{R}^{\mathbb{N}}$), a folytonos $\mathbb{R} \to \mathbb{R}$ függvények (ezeket a racionális pontokon felvett értékük meghatározza). Ezzel szemben az összes $\mathbb{R} \to \mathbb{R}$ függvény halmaza már nagyobb számosságú.
:::

## Röpzhra

**Definíciók:** halmazok ekvivalenciája, kontinuum számosság, $\limsup\limits_{n\to\infty} a_n$, $\liminf\limits_{n\to\infty} a_n$, sorozatok sűrűsödési értékei.

**Tételek:** $\lim\limits_{n\to\infty} a_n = a \in \mathbb{R}$ karakterizálása $\limsup$-pal és $\liminf$-fel, $\limsup\limits_{n\to\infty} a_n = a \in \mathbb{R}$ és sűrűsödési értékek.

# Analízis 1 – 7. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 63. feladat

Határozzuk meg a következő sorozatok $\liminf$-jét és $\limsup$-ját!

a) $a_n = (-1)^n\left(2 + \dfrac{3}{n}\right)$, b) $b_n = 1 + 2 \cdot (-1)^{n+1} + (-1)^{\frac{n(n-1)}{2}}$, c) $\dfrac{1}{2}, \dfrac{1}{3}, \dfrac{2}{3}, \dfrac{1}{4}, \dfrac{2}{4}, \dfrac{3}{4}, \dfrac{1}{5}, \dfrac{2}{5}, \dots$

**Megoldás.**

a) A páros indexű tagok $2 + \frac{3}{n} \to 2$, a páratlan indexűek $-2 - \frac3n \to -2$. A sűrűsödési értékek: $\{-2, 2\}$, így **$\liminf a_n = -2$, $\limsup a_n = 2$**.

b) Az $\frac{n(n-1)}{2}$ paritása $n$ szerint 4-es periódusú: $n \equiv 0, 1 \pmod 4$ esetén páros, $n \equiv 2, 3 \pmod 4$ esetén páratlan. Így a sorozat 4-es periódusú:

| $n \bmod 4$ | 1 | 2 | 3 | 0 |
|:---:|:---:|:---:|:---:|:---:|
| $2(-1)^{n+1}$ | $+2$ | $-2$ | $+2$ | $-2$ |
| $(-1)^{n(n-1)/2}$ | $+1$ | $-1$ | $-1$ | $+1$ |
| $b_n$ | $4$ | $-2$ | $2$ | $0$ |

A sűrűsödési értékek $\{-2, 0, 2, 4\}$, így **$\liminf b_n = -2$, $\limsup b_n = 4$**.

c) A sorozat a $\frac{k}{m}$ ($m \ge 2$, $1 \le k \le m - 1$) törtek felsorolása. Minden tag $(0, 1)$-ben van, $\frac1m \to 0$ és $\frac{m-1}{m} \to 1$ részsorozatok. Sőt minden $x \in [0, 1]$ sűrűsödési érték (minden $(0,1)$-beli racionális szám végtelen sokszor szerepel bővített alakokban, és ezek sűrűek). Így **$\liminf = 0$, $\limsup = 1$**.

::: elmelet
**Elméleti háttér — sűrűsödési értékek, $\limsup$ és $\liminf$.**

*Részsorozat.* Ha $n_1 < n_2 < \dots$ szigorúan növő indexsorozat, az $(a_{n_k})$ sorozat az $(a_n)$ **részsorozata**. Konvergens sorozat minden részsorozata ugyanahhoz tart; a fordítottja nem igaz, de ha a sorozat véges sok olyan részsorozatra bomlik (az indexhalmazok lefedik $\mathbb{N}$-et), amelyek mind ugyanahhoz tartanak, akkor az egész is.

*Sűrűsödési érték.* $s \in \overline{\mathbb R}$ az $(a_n)$ **sűrűsödési értéke**, ha van hozzá tartó részsorozat; ekvivalensen (véges $s$-re) $s$ minden környezete végtelen sok tagot tartalmaz. Jelölje $S$ a sűrűsödési értékek halmazát. A **Bolzano–Weierstrass-tétel** szerint korlátos sorozatra $S \ne \emptyset$; tágabb értelemben ($\pm\infty$-t is megengedve) mindig $S \ne \emptyset$.

*$\limsup$ és $\liminf$.* $\limsup a_n = \max S$ és $\liminf a_n = \min S$ — a 65. feladat szerint a maximum és a minimum létezik (az $S$ halmaz zárt). Ekvivalens definíció: $\limsup a_n = \lim_{n\to\infty}\sup_{k \ge n}a_k$, $\liminf a_n = \lim_{n\to\infty}\inf_{k \ge n}a_k$.

*Gyakorlati számolás.* Ha a sorozat véges sok konvergens részsorozatra bontható (páros/páratlan indexek, maradékosztályok modulo $m$), akkor $S$ pontosan ezek határértékeinek halmaza — más sűrűsödési érték nem lehet, mert minden részsorozatnak végtelen sok tagja esik valamelyik osztályba. A b) részben a $4$-es periódus miatt négy állandó részsorozat van.

*Végtelen sok sűrűsödési érték.* A c) sorozatban minden $\frac pq \in (0, 1)$ végtelen sokszor szerepel ($\frac{p}{q} = \frac{2p}{2q} = \dots$), és a racionálisok sűrűek, ezért $S = [0, 1]$: egy sorozat sűrűsödési értékeinek halmaza lehet egy egész intervallum is. (Általában: $S$ mindig zárt halmaz, és minden nem üres zárt halmaz előáll egy sorozat sűrűsödési értékeinek halmazaként.)
:::

## 64. feladat

Bizonyítsuk be, hogy $\lim\limits_{n\to\infty} a_n = a \in \mathbb{R}$ ekvivalens azzal, hogy $\limsup\limits_{n\to\infty} a_n = \liminf\limits_{n\to\infty} a_n = a$.

**Megoldás.**

Használjuk a $\limsup a_n = \lim_{n\to\infty} M_n$, $\liminf a_n = \lim_{n\to\infty} m_n$ jellemzést, ahol $M_n = \sup_{k \ge n} a_k$ (monoton fogyó) és $m_n = \inf_{k \ge n} a_k$ (monoton növő). Nyilván $m_n \le a_n \le M_n$.

($\Leftarrow$) Ha $M_n \to a$ és $m_n \to a$, akkor a rendőrelv szerint $a_n \to a$.

($\Rightarrow$) Ha $a_n \to a$, akkor adott $\varepsilon > 0$-hoz van $N$, hogy $k \ge N$ esetén $a - \varepsilon < a_k < a + \varepsilon$. Így $n \ge N$-re $a - \varepsilon \le m_n \le M_n \le a + \varepsilon$, tehát $M_n \to a$ és $m_n \to a$, azaz $\limsup a_n = \liminf a_n = a$. $\blacksquare$

(Ha a $\limsup$-ot a legnagyobb sűrűsödési értékként definiáltuk, a 65. feladat mutatja, hogy a két definíció megegyezik.)

::: elmelet
**Elméleti háttér — a „farkak” és a konvergencia jellemzése $\limsup$-pal, $\liminf$-fel.**

*A farkak szuprémuma és infimuma.* Az $n$-edik farok $\{a_k : k \ge n\}$; legyen $M_n = \sup_{k \ge n} a_k$ és $m_n = \inf_{k \ge n} a_k$. Ha $n$ nő, a farok szűkül, ezért $M_n$ **monoton fogyó**, $m_n$ **monoton növő** (a szuprémum monotonitása, 1. feladatlap). Monoton sorozatnak a bővített számegyenesen mindig van határértéke, így
$$\limsup a_n = \lim M_n = \inf_n M_n, \qquad \liminf a_n = \lim m_n = \sup_n m_n$$
mindig létezik $\overline{\mathbb{R}}$-ben. Mindig $m_n \le a_n \le M_n$, így $\liminf a_n \le \limsup a_n$.

*A tétel.* $a_n \to a \in \mathbb{R} \iff \liminf a_n = \limsup a_n = a$. A „$\Leftarrow$” irány a rendőrelv ($m_n \le a_n \le M_n$), a „$\Rightarrow$” irány abból jön, hogy ha egy indextől minden tag az $(a - \varepsilon, a + \varepsilon)$-ban van, a farok szuprémuma és infimuma is az $[a - \varepsilon, a + \varepsilon]$-ban van. Végtelen határértékre ugyanez: $a_n \to +\infty \iff \liminf a_n = +\infty$.

*Mire jó?* A $\limsup$ és $\liminf$ **mindig létezik**, a határérték nem. Ezért becslésekben kényelmes: ha egy sorozatról csak egyenlőtlenségeket tudunk (például $a_n \le b_n + \frac1n$), $\limsup$-okra áttérve ($\limsup a_n \le \limsup b_n$) nem kell előre tudni, hogy a határértékek léteznek. A végén a konvergenciát a két érték egyezése adja.

*A gyökkritérium előzetes.* A $\sum a_n$ sor konvergenciáját a $\limsup \sqrt[n]{|a_n|}$ értéke dönti el ($< 1$: konvergens, $> 1$: divergens) — itt a $\limsup$ azért kell, mert $\sqrt[n]{|a_n|}$-nek gyakran nincs határértéke.
:::

## 65. feladat

Bizonyítsuk be, hogy ha $\limsup\limits_{n\to\infty} a_n = a \in \mathbb{R}$, akkor $a = \sup\{x \in \mathbb{R} : x \text{ az } (a_n) \text{ sorozat sűrűsödési értéke}\}$.

**Megoldás.**

Legyen $a = \limsup a_n = \lim M_n$, ahol $M_n = \sup_{k \ge n} a_k \downarrow a$ (így $M_n \ge a$ minden $n$-re). Megmutatjuk, hogy $a$ sűrűsödési érték, és minden sűrűsödési érték legfeljebb $a$; ekkor $a$ a sűrűsödési értékek halmazának maximuma, tehát szuprémuma is.

**$a$ sűrűsödési érték.** Legyen $\varepsilon > 0$ és $N$ tetszőleges. Van $N' \ge N$, amelyre $M_{N'} < a + \varepsilon$. Mivel $M_{N'} \ge a > a - \varepsilon$, a szuprémum definíciója szerint van $k \ge N'$, amelyre $a_k > a - \varepsilon$; és $a_k \le M_{N'} < a + \varepsilon$. Tehát az $(a - \varepsilon, a + \varepsilon)$ környezet tetszőlegesen nagy indexű tagot tartalmaz, azaz végtelen sokat: $a$ sűrűsödési érték.

**Minden sűrűsödési érték $\le a$.** Ha $a_{n_j} \to x$ egy részsorozat, akkor $a_{n_j} \le M_{n_j}$, és $M_{n_j} \to a$, így határátmenettel $x \le a$.

Tehát $a = \max\{x : x \text{ sűrűsödési érték}\} = \sup\{\dots\}$. $\blacksquare$

::: elmelet
**Elméleti háttér — a két $\limsup$-definíció egyezése.**

*A két definíció.* (1) $\limsup a_n = \lim_n \sup_{k \ge n} a_k$ (a farkak szuprémumainak határértéke); (2) $\limsup a_n = \sup S$, ahol $S$ a sűrűsödési értékek halmaza. A feladat az ekvivalenciát mutatja meg véges értékre, sőt azt is, hogy $\sup S$ maximum.

*A bizonyítás két lépése.*

1. **$a$ sűrűsödési érték.** A farkak szuprémumai felülről közelítenek $a$-hoz, és mindegyik farokban van az $a$-hoz közeli tag (a szuprémum $\varepsilon$-os jellemzése). Mivel ez *minden* farokra igaz, tetszőlegesen nagy indexű, $a$-hoz közeli tag van — vagyis végtelen sok.
2. **Minden sűrűsödési érték $\le a$.** Egy részsorozat tagjai a megfelelő farok szuprémuma alatt maradnak ($a_{n_j} \le M_{n_j}$), és mivel **egyenlőtlenség határátmenetben megmarad** (ha $x_n \le y_n$ és mindkettő konvergens, akkor $\lim x_n \le \lim y_n$), a határértékük is $\le a$.

*Egy részsorozat explicit kiválasztása.* Az 1. lépésből közvetlenül is készíthető $a$-hoz tartó részsorozat: $n_1$ legyen olyan, hogy $|a_{n_1} - a| < 1$; ha $n_j$ megvan, $n_{j+1} > n_j$ legyen olyan, hogy $|a_{n_{j+1}} - a| < \frac{1}{j+1}$. Ilyen mindig van, mert végtelen sok tag esik minden környezetbe. Ez az „indexek rekurzív kiválasztása” a részsorozatos bizonyítások standard lépése.

*Az egyenlőtlenség határátmenetben.* Ha $x_n \le y_n$ (egy indextől), $x_n \to x$, $y_n \to y$, akkor $x \le y$. *Bizonyítás:* ha $x > y$ volna, $\varepsilon = \frac{x - y}{2}$-vel egy indextől $x_n > x - \varepsilon = y + \varepsilon > y_n$, ellentmondás. Figyelem: **szigorú** egyenlőtlenség nem marad meg ($\frac1n > 0$, de a határérték $0$).
:::

## 66. feladat

Mutassuk meg, hogy $\limsup\limits_{n\to\infty} a_n = a \in \mathbb{R}$ acsa, ha $\forall \varepsilon > 0$-ra $a_n > a + \varepsilon$ csak véges sok $n$-re és $a_n > a - \varepsilon$ végtelen sok $n$-re.

**Megoldás.**

Ismét $M_n = \sup_{k \ge n} a_k$, és $\limsup a_n = \lim M_n$.

($\Rightarrow$) Legyen $M_n \downarrow a$ és $\varepsilon > 0$. Van $N$, hogy $M_N < a + \varepsilon$, így $n \ge N$-re $a_n \le M_N < a + \varepsilon$: csak véges sok $n$-re lehet $a_n > a + \varepsilon$. Másrészt minden $N$-re $M_N \ge a > a - \varepsilon$, így van $k \ge N$, $a_k > a - \varepsilon$: végtelen sok ilyen $k$ van.

($\Leftarrow$) Legyen $\varepsilon > 0$. Mivel csak véges sok $n$-re $a_n > a + \varepsilon$, van $N$, hogy $n \ge N$ esetén $a_n \le a + \varepsilon$, így $M_n \le a + \varepsilon$ (a sorozat felülről korlátos, $M_n$ véges). Mivel végtelen sok $n$-re $a_n > a - \varepsilon$, minden $n$-re van $k \ge n$ ilyen, tehát $M_n > a - \varepsilon$. Így $n \ge N$-re $|M_n - a| \le \varepsilon$, vagyis $M_n \to a$, $\limsup a_n = a$. $\blacksquare$

::: elmelet
**Elméleti háttér — a $\limsup$ $\varepsilon$-os jellemzése és a „végtelen sok / véges sok” nyelv.**

*A jellemzés.* Véges $a$-ra $\limsup a_n = a$ pontosan akkor, ha minden $\varepsilon > 0$-ra

1. $a_n > a + \varepsilon$ csak **véges sok** $n$-re (azaz majdnem minden tag $\le a + \varepsilon$), és
2. $a_n > a - \varepsilon$ **végtelen sok** $n$-re.

A $\liminf$-re ugyanez megfordított egyenlőtlenségekkel.

*Párhuzam a szuprémummal.* A szuprémum jellemzése: (1') minden elem $\le s$, (2') van elem $> s - \varepsilon$. A $\limsup$-nál a „minden” helyett „majdnem minden” (véges sok kivétellel), a „van” helyett „végtelen sok” áll. A $\limsup$ tehát a sorozat „aszimptotikus szuprémuma”: véges sok tag megváltoztatása nem befolyásolja, és a „kiugró” korai tagok nem számítanak.

*Végtelen értékek.* $\limsup a_n = +\infty \iff$ a sorozat felülről nem korlátos; $\limsup a_n = -\infty \iff a_n \to -\infty$.

*Hogyan használjuk a gyakorlatban?*

- **Felső becslés** $\limsup a_n \le c$-re: elég megmutatni, hogy minden $\varepsilon$-ra egy indextől $a_n \le c + \varepsilon$.
- **Alsó becslés** $\limsup a_n \ge c$-re: elég egy részsorozat, amely $c$-hez (vagy annál nagyobbhoz) tart.

*Példa.* $a_n = \sin n$: minden $\varepsilon$-ra végtelen sok $n$-re $\sin n > 1 - \varepsilon$ (mert az $n \bmod 2\pi$ maradékok sűrűek a $[0, 2\pi]$-ben, $\pi$ irracionalitása miatt), és soha $\sin n > 1$. Így $\limsup \sin n = 1$, és hasonlóan $\liminf \sin n = -1$; sőt a sűrűsödési értékek halmaza az egész $[-1, 1]$.
:::

## 67. feladat

a) $\displaystyle\sum_{n=2}^{\infty} \frac{7 \cdot 2^n}{3^{n-1}} = ?$;

b) $\dfrac{1}{1 \cdot 4} + \dfrac{1}{4 \cdot 7} + \dots + \dfrac{1}{(3n-2)(3n+1)} + \dots = ?$

**Megoldás.**

a) $\dfrac{7 \cdot 2^n}{3^{n-1}} = 21\left(\dfrac23\right)^n$, és a mértani sor összegképletével
$$\sum_{n=2}^{\infty} 21\left(\frac23\right)^n = 21 \cdot \frac{(2/3)^2}{1 - 2/3} = 21 \cdot \frac{4/9}{1/3} = 21 \cdot \frac43 = 28.$$

b) Parciális törtekre bontás: $\dfrac{1}{(3n-2)(3n+1)} = \dfrac13\left(\dfrac{1}{3n-2} - \dfrac{1}{3n+1}\right)$. A részletösszeg teleszkopikus:
$$S_N = \frac13\left[\left(1 - \frac14\right) + \left(\frac14 - \frac17\right) + \dots + \left(\frac{1}{3N-2} - \frac{1}{3N+1}\right)\right] = \frac13\left(1 - \frac{1}{3N+1}\right) \to \frac13.$$
A sor összege $\dfrac13$.

::: elmelet
**Elméleti háttér — végtelen sorok: részletösszeg, mértani sor, teleszkopikus sor.**

*Definíció.* A $\sum_{n=1}^\infty a_n$ sor **konvergens**, ha az $S_N = a_1 + \dots + a_N$ **részletösszegek** sorozata konvergens; ekkor a sor **összege** $\lim S_N$. A sor tehát nem „végtelen sok szám összeadása”, hanem egy sorozat határértéke.

*Mértani sor.* $\sum_{n=0}^{N-1} q^n = \frac{1 - q^N}{1 - q}$ ($q \ne 1$), így $|q| < 1$ esetén $q^N \to 0$ miatt
$$\sum_{n=0}^\infty q^n = \frac{1}{1 - q}, \qquad \sum_{n=k}^\infty cq^n = \frac{cq^k}{1 - q} = \frac{\text{első tag}}{1 - \text{hányados}}.$$
$|q| \ge 1$ esetén a sor divergens (a tagok nem tartanak $0$-hoz). Az a) részben ügyelni kell az **első tagra**: $n = 2$-nél $21 \cdot \frac49 = \frac{28}{3}$, és ezt osztjuk $1 - \frac23$-dal.

*Teleszkopikus sor.* Ha $a_n = b_n - b_{n+1}$, akkor $S_N = b_1 - b_{N+1}$, és a sor pontosan akkor konvergens, ha $(b_n)$ az, összege $b_1 - \lim b_n$. A parciális törtekre bontás: $\frac{1}{(3n-2)(3n+1)} = \frac{A}{3n - 2} + \frac{B}{3n + 1}$, ahol $1 = A(3n + 1) + B(3n - 2)$; $n = \frac23$-ot helyettesítve $A = \frac13$, $n = -\frac13$-ot $B = -\frac13$. Általában $\frac{1}{(an + b)(an + b + d)} = \frac1d\left(\frac{1}{an + b} - \frac{1}{an + b + d}\right)$.

*Szükséges feltétel.* Ha $\sum a_n$ konvergens, akkor $a_n = S_n - S_{n-1} \to 0$. Nem elégséges: $\sum\frac1n$ divergens. A konvergencia eldöntésére a Cauchy-kritérium ($\sum_{k=n}^m a_k$ kicsi minden elég nagy $n \le m$-re), pozitív tagú soroknál az összehasonlító-, hányados- és gyökkritérium szolgál.

*Nevezetes összegek.* $\sum_{n=1}^\infty \frac{1}{n(n+1)} = 1$ (teleszkopikus), $\sum_{n=0}^\infty \frac{1}{n!} = e$, $\sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6}$ (Euler; a konvergencia az előzőből és $\frac{1}{n^2} < \frac{1}{n(n-1)}$-ből látszik, az érték kiszámítása mélyebb).
:::

## 68. feladat

Bizonyítsuk be, hogy
$$\liminf x_n + \liminf y_n \le \liminf(x_n + y_n) \le \limsup x_n + \liminf y_n.$$
Adjunk példákat, amikor $<$ áll fenn.

**Megoldás.**

Feltesszük, hogy a sorozatok korlátosak (különben a $\pm\infty$-re vonatkozó szokásos konvenciókkal ugyanígy megy, ha az összegek értelmesek). Jelölje $m_n(x) = \inf_{k \ge n} x_k$, $M_n(x) = \sup_{k \ge n} x_k$.

**Első egyenlőtlenség.** Minden $k \ge n$-re $x_k + y_k \ge m_n(x) + m_n(y)$, így $m_n(x + y) \ge m_n(x) + m_n(y)$. Határátmenettel $\liminf(x_n + y_n) \ge \liminf x_n + \liminf y_n$.

**Második egyenlőtlenség.** Minden $k \ge n$-re $x_k + y_k \le M_n(x) + y_k$, így az infimumot véve $m_n(x + y) \le M_n(x) + m_n(y)$. Határátmenettel $\liminf(x_n + y_n) \le \limsup x_n + \liminf y_n$. $\blacksquare$

**Példák szigorú egyenlőtlenségre:**

- $x_n = (-1)^n$, $y_n = (-1)^{n+1}$: $\liminf x_n + \liminf y_n = -2 < 0 = \liminf(x_n + y_n)$.
- $x_n = y_n = (-1)^n$: $\liminf(x_n + y_n) = -2 < 0 = 1 + (-1) = \limsup x_n + \liminf y_n$.

::: elmelet
**Elméleti háttér — $\liminf$, $\limsup$ és az összeadás.**

*Az infimum szuperadditív.* Ugyanazon indexhalmazon $\inf_k(x_k + y_k) \ge \inf_k x_k + \inf_k y_k$, mert minden $k$-ra $x_k + y_k \ge \inf x + \inf y$ (egy alsó korlát). Egyenlőség általában nincs: a két infimum különböző indexeken „valósulhat meg”. Hasonlóan a szuprémum szubadditív: $\sup(x + y) \le \sup x + \sup y$.

*A teljes egyenlőtlenséglánc* (korlátos sorozatokra):
$$\liminf x_n + \liminf y_n \le \liminf(x_n + y_n) \le \liminf x_n + \limsup y_n \le \limsup(x_n + y_n) \le \limsup x_n + \limsup y_n.$$
(A feladat második egyenlőtlensége a $x$ és $y$ szerepcseréjével ugyanez.) A középső tagok mutatják: ha az egyik sorozat konvergens, például $y_n \to y$, akkor $\liminf(x_n + y_n) = \liminf x_n + y$ és $\limsup(x_n + y_n) = \limsup x_n + y$ — konvergens sorozat hozzáadása „eltolja” a sűrűsödési értékeket.

*Szorzatra* (nemnegatív, korlátos sorozatokra) hasonlóan $\liminf x_n \cdot \liminf y_n \le \liminf x_ny_n \le \liminf x_n \cdot \limsup y_n$.

*Mi a tanulság a példákból?* Ha a két sorozat „ellenütemben” oszcillál ($(-1)^n$ és $(-1)^{n+1}$), az összeg kisimul, és a $\liminf$ nagyobb lesz a $\liminf$-ek összegénél. Ha „egyszerre” oszcillálnak, az oszcilláció felerősödik. A $\liminf$ és a $\limsup$ tehát nem lineáris — csak egyenlőtlenségeket tudunk mondani, és ezeket a sorozatok összehangoltsága dönti el.

*Végtelen értékek.* Ha valamelyik $\pm\infty$, az egyenlőtlenségek a bővített számegyenesen is érvényesek, feltéve, hogy nem lép fel $\infty - \infty$ (például $x_n = n$, $y_n = -n$ esetén a bal oldal értelmetlen).
:::

## 69. feladat

Ábrázoljuk az $\left\{\frac{1}{x}\right\}$ és az $x \cdot \left[\frac{1}{x}\right]$ függvényeket.

**Megoldás.**

![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA0gAAAIwCAYAAAC84UvDAAAAOnRFWHRTb2Z0d2FyZQBNYXRwbG90bGliIHZlcnNpb24zLjExLjIsIGh0dHBzOi8vbWF0cGxvdGxpYi5vcmcvgI3uAAAAAAlwSFlzAAAewgAAHsIBbtB1PgAAx6FJREFUeJzs3XeYE9X6B/BvsrvsspXee5GiSJUiICogRSyAYEMRG1YURcEfdlGxe7mKiooXQUClCAIWRKQKKNJEepNeF5a2Nfn9Ec7sbHaSTJKZnMzk+3me+9x1WbInybKZb973vMfhdrvdICIiIiIiIjhlL4CIiIiIiChaMCARERERERFdwIBERERERER0AQMSERERERHRBQxIREREREREFzAgERERERERXcCAREREREREdAEDEhERERER0QUMSERERERERBcwIBEREREREV3AgERERERERHQBAxIREREREdEFDEhEREREREQXMCARERERERFdwIBERERERER0AQMSERERERHRBQxIREREREREFzAgERERERERXcCAREREREREdAEDEhERERER0QUMSERERERERBcwIBEREREREV3AgERERERERHQBAxIREREREdEFDEhEREREREQXMCARERERERFdwIBERERERER0AQMSERERERHRBQxIREREREREFzAgERFRRKxYsQL9+/dHnTp1kJycDIfDge3bt8teVtBGjRqFuLg4ZGRkoGnTphg2bBiOHz8ue1lERGQQBiQiIjLd1q1bceWVV+Lbb7/Frl27cP78eb9fv2/fPnzzzTd47LHH0KpVKyQkJMDhcKBhw4ZBf+877rgDDocD77//foirL87lciErKwvr16/HO++8gxtuuMGw2yYiIrkcbrfbLXsRRERkb88//zxeeeUVZGRk4Ntvv0W7du2Qmprq8+vj4+NRUFBQ7PMNGjTA5s2bdX/fgoICVKxYEcePH8f27dtRt27dkNbvzeVy4dixYxg7dixeeuklAJ4QWL9+fUNun4iI5GEFiYiITCdCzXXXXYeuXbv6DUcAUL16dfTv3x/vv/8+/vjjDwwcODCk77ts2TIcP34cjRo1MiwcAYDT6USFChXw3HPPISkpCQCCCm5ERBS94mUvgIiI7O/MmTMAgAoVKuj6+l27dhX57/j40F6uvv/+ewDA9ddfH9LfDyQuLg5lypTBgQMHcPr0aVO+BxERRRYrSEREZDqXywUAcDgcEf2+IiBdd911RT4v9iVVq1YN2dnZmn/30UcfhcPhQEZGBtasWePze4j7JO4jERFZGwMSERHZ0rZt27BlyxaUK1cO7dq1K/Jno0aNQmJiIvbv34+xY8cW+7ujRo3CBx98gMTERMyaNQvNmzeP1LKJiEgyBiQiIjKdaLFLTEyM2PecPXs2AODaa6+F01n05a5mzZp48MEHAQCjR49W1gcAn3/+OZ577jnExcVh8uTJuPLKK/1+H3Gf1LdBRETWxYBERESmys3NxdatWwEAlSpVitj39dVeJzz77LPIyMjA0aNHlRHgs2fPxuDBgwEAY8eORZ8+fQJ+H7Gv6u+//zZg1UREJBsDEhERmaKgoAC7d+/Go48+iqNHj8LpdKJHjx4R+d6ZmZlYtmwZSpQogWuuuUbza8qWLYunn34aAPDOO+9gzpw5uOWWW1BQUIBRo0bh/vvv1/W9evbsCcBTeZoyZQoyMzPBEzSIiKyLAYmIiAz37LPPIj4+HrVr18a4cePQsGFDfPvtt6hXr15Evv+8efOQn5+Pq666CmlpaT6/7vHHH0eVKlVw8uRJXHfddTh//jyGDBmCkSNH6v5eI0aMwNChQ5GYmIjbbrsNZcqUgdPpZEWJiMiiGJCIiMh0CQkJyMjIiNj3C9ReJyQnJxepFImzl4IRHx+PjIyMYvuciIjImvjbnIiIDDdq1Cjk5eVh06ZN6Nu3LzZs2IBevXph7969pn/vvLw8/PjjjwACB6R169bhvffeU/67oKAg6FHk//nPf/Diiy/i9OnT+OCDD3DkyBG4XC5ccsklwS+eiIikY0AiIiJTxMfHo2HDhpgwYQJSUlKQnZ2NefPmmf59Fy9ejFOnTqFp06aoUaOGz6/btWsXunfvjlOnTqF169YAgOnTp2PVqlVBfb+ZM2cCAG699VY8/PDDKF++fMTPeyIiIuMwIBERkalSUlKUasq///5r+vfT01535MgRXHPNNTh06BC6du2KJUuWoFOnTgCA4cOHB/X9RFWsTZs2Ia6YiIiiCQMSERGZTuw/ys3NNf17BQpIp0+fRvfu3bF9+3a0atUKM2bMQIkSJfDqq68CAH777Tf88MMPur9fXl4eACA9PT3MlRMRUTRgQCIiItOJljOzx19v3LgRO3fuRKVKlXDZZZcV+/OcnBzccMMNWLNmDerXr4958+YhNTUVANC+fXtlDPmIESPgcrl0fU9xn9hWR0RkDwxIREQUdQYMGACHw6H87/PPPwcAbNmypcjnvceGi+pRr169igUWl8uFAQMGYOHChahUqRJ++uknlC9fvsjXvPrqq3A4HFi/fj2++uorE+8hERFFKwYkIiIyXXx8PADPlDgzzZ49G4B2e93DDz+MadOmISMjAz/++CNq165d7GuaN2+Ovn37AgCef/55XS2B4j6J+0hERNbmcPO4byIiMtntt9+OyZMno1+/fvjmm29M+R5Hjx5FpUqVkJiYiGPHjiE5OdmU76OWnZ2NtLQ05Ofn44cffkD37t1N/55ERGQuVpCIiMh0l156KQBg3rx5mDt3Ls6cOWP495g7dy5cLhc6d+5sejhyu904fPgwnn/+eeTn5wMAzz0iIrIJBiQiIjLdbbfdhtTUVJw9exa9evVCWloaHA4Htm/fbtj30DPe2wijRo2C0+lEpUqV8NZbbwEAevTogWrVqpn6fYmIKDLYME1ERKarXr06li5dijfffBMrVqzAgQMHkJ2dbej3mD59uqG354/T6URqairq1KmDnj17Bn12EhERRS/uQSIiIiIiIrqALXZEREREREQXMCARERERERFdwIBERERERER0AQMSERERERHRBQxIREREREREFzAgERERERERXcCAREREREREdAEDEhERERER0QUMSERERERERBcwIBEREREREV3AgERERERERHQBAxIREREREdEFDEgRlp+fj5UrVyI/P1/2UsgAfD7tg8+lvQwdOhQPPvggn0+b4L9P++BzaS92fT4ZkIiIiIiIiC5gQCIiIiIiIrqAAYmIiIiIiOgCBiQiIiIiIqILGJCIiIiIiIguYEAiIiIiIiK6gAGJiIiIiIjoAgYkIiIiIiKiCxiQiIiIiIiILmBAIiIiIiIiuoABiYiIiIiI6AIGJCIiIiIiogsYkIiIiIiIiC5gQCIiIiIiIrqAAYmIiIiIiOgCBiQiIiIiIqILGJCIiIiIiIguYEAiIiIiIiK6gAGJiIiIiIjoAgYkIiIiIiKiCxiQiIiIiIiILmBAIiIiIiIiuoABiYiIiIiI6AIGJCIiIiIiogsYkIiIiIiIiC5gQCIiIiIiIrqAAYmIiIiIiOgCBiQiIiIiIqILGJCIiIiIiIguYEAiIiIiIiK6gAGJiIiIiIjoAgYkIiIiIiKiCxiQiIiIiIiILmBAIiIiIiIiuoABiYiIiIiI6AIGJCIiIiIiogsYkIiIiIiIiC5gQCIiIiIiIrqAAYmIiIiIiOgCBiQiIiIiIqILGJCIiIiIiIguYEAiIiIiIiK6IF72AgBg8+bN+P777/Hbb78hJycHo0ePRqtWrYK+nZMnT+KTTz7BqlWr4HK50KJFCwwePBgVKlQwYdVERERERGQ30gNS69at8ccffxT53LFjx4K+nV27duGKK67Avn37lM999913+O9//4vffvsNjRs3DnutRERERERkb9Jb7Pbu3YsGDRpg2LBh6N69e8i3c+edd2Lfvn1o27YtpkyZgm+//RZdunTB0aNHceutt8Llchm4aiIiIiIisiPpFaSVK1eiRo0aAIBHHnkkpNv4888/sXTpUtSpUwcLFixAcnIyAODGG2/EZZddhrVr12LBggXo2rWrYesmIiIiIiL7kV5BEuEoHD/99BMA4N5771XCEQDEx8fj4YcfBgD8+OOPYX8fIiIiIiKyN+kByQibNm0C4NnP5K1t27YAgH/++SeiayIiIiIiIuuR3mJnhOPHjwMAKlWqVOzPxOfE1+iVn58f/sI0FBQUFPl/srZFixbhjz/+QNOmTWUvhcKUk5OD/fv3R+VzmZOTgxIlSsDhcIR9W263GwAMuS0r4O9ae+Brp30UFBRg+/btKF26NOrUqSN7ORQms/9txsfLiSq2CEh5eXkAgISEhGJ/Jj4nvkav1atXh78wP9auXWvq7ZP5zp07h1tvvRX5+fk4evQo+vfvL3tJFIa33noLv/76Kx544AHccMMNspej2LdvH4YOHYoaNWrgrbfegtMZeuHf5XJhxIgROHHiBN577z2kpaX5/foNGzbgvffew3XXXYfevXsX+/OZM2di/vz5GDp0KOrXrw8AyMzMxOuvv4769evjvvvuQ15eHkaPHo2SJUviySefxMSJE7Ft2zbceeedmDBhApo0aYKtW7eiVKlSOHLkCEqUKIGsrCzk5eUhNzcXOTk5yMnJQV5envI/X29glShRArNmzQIAZGdnA/D8rt29ezcefPDBYl8fHx+PpKQklCxZEikpKUhJSUF6ejqSk5ORkpKCkiVLokSJEihXrhxcLhfi4+NRrlw55OXlwe124+KLL8by5cvRokULlCpVCitX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FgISAAAAAFgISAAAAABgISABAAAAgIWABAAAAAAWAhIAAAAAWAhIAAAAAGAJ83cFmoLc3Fzt2LFDhw4dUllZmdavX6/ExES3fz4/P18//elPq93/wgsv6Nvf/rY3qopalJWV6dChQ9qxY4dyc3PVuXNnvfjii3Uq69ixY9q6dau++uortW3bVt///vf1f//3f16uMWpSXl6ut99+W/v27VNhYaF69uypjIwMdezY0e0yFi9erJycnCr3paWlafr06d6qbpN35coVvfHGG/r3v/+t8PBwpaSkaMqUKYqIiPBLOaif+vaB2dnZ2rRpU5X7oqKi9MYbb3irqqjFjRs3tHPnTmVnZ+v69et68sknlZ6e7nE5xhhlZWVpz549KiwsVPfu3ZWRkaF77723AWqN6nDdKsmgwRQVFZlevXoZSS5fZ86c8aicb775plIZzl+7d+9uoFcAZ7t27TKtW7d2+dv369evTmWtXbvWhISEVGrLZ5991ruVRrWKiorMqFGjKrVBTEyM2bt3r9vlDB8+vNpzc8aMGQ34CpqWY8eOmfj4+Ep/4/79+5urV6/6vBzUjzf6wHXr1lV77sXFxTVc5eFi/vz5Jjw83OXvv3z5co/LKS4uNg899FCltoyOjja7du1qgJqjIq5b72IEqQGVlpbqs88+U5cuXfTYY49p3759On78eJ3Le+CBBzRr1qxK2/v27VufasJNX3/9ta5du6bhw4dr9OjRWrp0aZ3K+fjjjzVv3jzZbDb94he/UEpKinJycvSHP/xBq1evVkpKip544gnvVh6VLFmyRHv27FG7du30zDPPKCEhQVlZWdq+fbsmTZqks2fPKi4uzq2yIiMj9ec//7nS9q5du3q72k1SaWmpJkyYoEuXLmnEiBGaOnWqbt26pZdffllHjx7VrFmztGXLFp+Vg/rxdh/43HPPaeDAgS7bGA30nZycHDVv3lzjxo1TZGSkNm/eXKdyli1bpp07dyohIUHPPvusEhMTtX37dmVlZWny5MnKzc3VPffc493KwwXXrU78ndCCWWlpqfn0008d39s/GalrEs/IyPByDeGJr7/+2uTl5RljjCkoKKjzCNLkyZONJPOb3/zGZftbb71lJJmhQ4d6o7qowa1bt0yLFi1MeHi4OXnypMu+J554wkgya9ascaus4cOHm6ioqAaoJey2bdtmJJkhQ4aYkpISx/ZLly6Z1q1bG5vNZr788kuflYP68VYfaB9B2rFjR0NUE27Kyckxt2/fNsYY86c//alOI0jFxcUmJibGhIWFuVw3GWPMxIkTjSTz4osveq3OqBrXrXexSEMDCg0NVa9evfxdDXhJ+/bt1aZNm3qXs3PnTkVEROjpp5922f6DH/xA9913nw4fPqwrV67U+/egev/85z9169YtjR07Vj169HDZN3/+fEnS3//+d39UDVXIzs6WJM2ZM0dhYXcnPrRt21YZGRkyxuiDDz7wWTmoH/rA4NKzZ0+Fh4fXq4yDBw+qoKBAjzzySKXrJvpk3+G69S4CUiOSm5uruXPnasqUKZo/f7527twpY4y/qwUP/Pe//9W1a9fUp08fRUdHV9o/bNgwGWP02Wef+aF2Tcenn34q6c7fu6LBgwcrLCzMcYw7ysrKtGLFCk2ZMkUzZszQpk2bVFBQ4LX6NnU1tVdKSorLMb4oB3XXEH3ge++9p6lTpyojI0MrVqzQ6dOnvVll+EBN5+bAgQPVrFkzzs1GqDFft3IPUiNy8OBBHTx40PH96tWr9cADD2j79u1u3ysB/8rLy5MktWvXrsr97du3lyRdvnzZZ3Vqimpqh7CwMMXHx3vUBsXFxVq0aJHj+40bN2rRokXKyspyXHij7mpqL0/OGW+Vg7priD7wj3/8o8v3S5Ys0dKlS7V48eI61hK+VtP7IiQkRAkJCfr66699XS3UU2O+biUg1SAvL08zZ850+/jk5GQtX768QerSqlUrTZo0Sf3795d0Z3nUN998U/v379e0adO0bdu2Bvm9wWTHjh0eLfs6depUPfroo16tw+3btyVVfwOxffv//vc/r/7eYJSZmanc3Fy3j9+0aZPjBl932uH27dsyxshms9VYbmhoqMaNG6fU1FTFx8friy++0JtvvqmzZ8/qscce05kzZ9SqVSu364nKamovT84Zb5WDuvN2H9inTx+NHz9eSUlJunbtmnbt2qUPPvhAS5YsUVJSkiZPnuydiqNBufO+KCsrU2lpqcv0WASuxn7dyrusBjdv3tTbb7/t9vHDhw9vkHq0bNmyytVbnnrqKd1///3KysrShQsXPFqjvik6deqUR+2Zmprq9TpERUVJkgoLC6vcb99uPw7V27t3r44cOeL28evXr3f82512aNGiRa3hSJLeeustJSQkuGzLzMxUWlqaDhw4oK1bt1a5ig/c59xesbGxLvs8OWe8VQ7qzpt94MSJEzVr1iyX83TOnDl6+eWXNWfOHL3yyisEpEbCnfdFREQE4aiRCIbrVt5pNYiPj9ff/vY3t4/3xg38VWnWrJmaNWtWaXtycrJGjRqlrKwsnTp1KqDfaIHg8ccf17e+9S23j7d/6uFN9geQVjfyYd/eqVMnr//uYLNy5UpdvXrV7eNbtmzp+HdN7XD9+nVdvny50uIN1akYjqQ7n3bOmDFDBw4c0MmTJ92uI6rWsWNH5eTkKDc3V9/5zndc9nlyznirHNSdN/vA+Pj4KrfPmDFDCxYs4NxrRGp6XxQWFurixYvq0qWLr6uFOgqG61YCUg1atGihCRMm+LsaNbKv9FPVGxGuunfvru7du/u1DrGxsUpKStKZM2d09uxZdevWzbGvsLBQH374oVq0aKHk5GQ/1rJx+N73vlfnnx00aJCkO6tprVixwmWffRUz+zF1xbnpPYMGDdLu3bu1c+fOSsHGvrKVO+3lrXJQd77oA2/cuKHbt29z7jUizn3y73//e5d92dnZMsZwbgaJxvJ/I6vYNQJbtmxRTk6Oy7bS0lKtXr1aBw4cUFRUlPr16+en2sFT9tA9e/Zsxzx7Y4zmz5+vwsJCjRs3LuA7jsZuwIAB6tKli44cOaKNGzc6tl+6dMlxY/fEiRNrLefjjz/Wjh07VF5e7rL9o48+0rJlyyQ13NTbpsR+zqxatcplhbLs7Gy98847uueee5SWluazclA/3uoDV61apfz8fJdteXl5ysjIkMS515j07dtX3bt317Fjx/Tqq686tufl5TkWwHGnT0ZgCIrrVn89gKmpWLhwoUlPTzfp6ekmISHBSDIPP/ywY9u5c+ccx165csWkp6eb2bNnu5SRnp5uJJmuXbua0aNHmwcffNAkJiYaSUaSWbVqlY9fVdNkb5/09HQzfvx4I8nExcU5tj311FMux7/33nsmPT3dbN261WX75cuXHe3XoUMHM3bsWJOUlGQkmaioKHPq1Clfvqwmy/7QUElm4MCBZsyYMSYuLs5IMiNGjDDl5eUux9vPZecHiW7dutVIMm3btjUpKSlmzJgxplevXo5yU1JSTFlZma9fWlCyP1w0MjLSpKWlmdTUVBMSEmIkmbVr17ocW11f6mk5aBie9oHV9aX2duzbt6959NFHzbBhw0xkZKSjnBMnTvjyZTVZ9vZJT083gwYNMpJM7969Hds2b97scvyiRYsqXf8YY8w777zj6DsHDBjg0ienpKRU6pPRMLhuvYOA1MCGDh3qeENU9fXJJ584jj1//ryRZHr06OFSxvbt282AAQMq/WxiYqJ59dVXffyKmi57+1T31bVrV5fj16xZYySZ559/vlJZx44dM71793b5+Y4dO5p9+/b56uXAGLNhwwYTHR3t0g4PPfSQycvLq3Ss/Vw+fvy4Y9vZs2fNhAkTTHh4uEsZERERZtq0aSY/P9+XLyeo3bx50/zwhz80NpvN5e+8dOnSSsdW15d6Wg4ajid9YHV9aWZmpomPj6/UFw8dOtT861//8tVLafLs7VPdV2Zmpsvxw4cPr3T9Y/faa6+ZmJgYl58fPXq0uXjxoo9eDbhuvcNmTCN5YlMj9Y9//KPGJ4KPHj3asRZ8UVGR3n//fcXGxlY5zePLL7/UmTNnVFRUpE6dOqlPnz4KDQ1tsLrDlb19qhMdHa2HH37Y8f3Zs2d19OhRJScnq3fv3pWON8bo6NGj+uqrr9SmTRsNGTKE9vSDmzdv6vDhw7p586Z69OihpKSkKo+zn8tpaWmVVkDLz8/XyZMndfHiRbVq1Ur9+/dXTEyML6rf5Jw/f14nTpxQWFiYBg0a5LL4hl1tfam75aBhudsH1tSXlpSU6PTp0/r8888VHh6u5ORkFtrwMXv7VKdnz57q06eP4/v9+/fr8uXLLtc/zm7duqXDhw+rsLCwxj4ZDYPr1jsISAAAAABgYZEGAAAAALAQkAAAAADAQkACAAAAAAsBCQAAAAAsBCQAAAAAsBCQAAAAAMBCQAIAAAAACwEJAAAAACwEJAAAAACwEJAAAAAAwEJAAgAAAAALAQkAAAAALAQkAAAAALAQkAAAAADAQkACAAAAAAsBCQAAAAAsBCQAAAAAsBCQAAAAAMBCQAIAAAAACwEJAAAAACwEJAAAAACwEJAAAAAAwEJAAgAAAAALAQkAAAAALAQkAAAAALAQkAAAAADAQkACAAAAAAsBCQAAAAAsBCQAAAAAsBCQAAAAAMBCQAIAAAAACwEJAAAAACwEJAAAAACw/D+yk4ZZvgR0AgAAAABJRU5ErkJggg==){width=100%}

**$\{1/x\}$** ($x \neq 0$): ha $\frac{1}{k+1} < x \le \frac1k$ ($k \in \mathbb{N}$), akkor $k \le \frac1x < k + 1$, így $\{1/x\} = \frac1x - k$: hiperbolaív, amely $x = \frac1k$-ban $0$, és $x \to \frac{1}{k+1}+0$ esetén $1$-hez tart (azt nem éri el). $x > 1$-re $\{1/x\} = \frac1x$, $x < -1$-re $\{1/x\} = 1 + \frac1x$. A negatív oldalon, $-\frac1k < x \le -\frac{1}{k+1}$ esetén $\{1/x\} = \frac1x + k + 1$. Az értékek mindig $[0, 1)$-ben vannak; $0$ közelében a függvény végtelen sokszor „végigszalad" a $[0, 1)$ intervallumon, ezért $0$-ban nincs határértéke.

![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA0gAAAIwCAYAAAC84UvDAAAAOnRFWHRTb2Z0d2FyZQBNYXRwbG90bGliIHZlcnNpb24zLjExLjIsIGh0dHBzOi8vbWF0cGxvdGxpYi5vcmcvgI3uAAAAAAlwSFlzAAAewgAAHsIBbtB1PgAAdTNJREFUeJzt3XmcjeX/x/H3mRVjGWQXsu/ZsowlZJctEVIMohhkzxLlxzfZ0liyj0qIQpF934oia/Z8E7KvM2af+/fHnHO+prHMcmbumTOv5+PhUe77Ptf5HLdznPdc1/25LYZhGAIAAAAAyMXsAgAAAAAgpSAgAQAAAIAVAQkAAAAArAhIAAAAAGBFQAIAAAAAKwISAAAAAFgRkAAAAADAioAEAAAAAFYEJAAAAACwIiABAAAAgBUBCQAAAACsCEgAAAAAYEVAAgAAAAArAhIAAAAAWBGQAAAAAMCKgAQAAAAAVgQkAAAAALAiIAEAAACAFQEJAAAAAKwISAAAAABgRUACAAAAACsCEgAAAABYEZAAAAAAwIqABAAAAABWBCQAAAAAsCIgAQAAAIAVAQkAAAAArAhIAAAAAGBFQAIAAAAAKwISACBV+Oijj2SxWGL8ev31180uK14WL14c6zWULVvW7LIAAI8gIAEAnM6ZM2e0aNEivfPOOypdurRcXFwSHKgqVqwoi8WiLVu2JEGlAICUxs3sAgAAiI9XXnnlqWHl1KlTKlWqlEOe69KlSzp8+LAyZ86sl19+OdHjde7cWZ07d5YkTZs2TQMGDEj0mAAAx2IGCQDgVCwWi4oVK6auXbtq7ty5OnHihKpWrZqgsX788UdJUuPGjeXu7u7IMgEAKRQzSAAAp1KiRAmdOXMmxjaLxZKgsdasWSNJatmyZaLrAgCkDswgAQDi5Msvv5TFYpGLi4sOHTr02GNWrlwpV1dXWSwWzZkzJ5krdKygoCBt375drq6uatq0qX27YRiqXLmyLBbLE5fdhYeHq1GjRrJYLCpcuLCuXr2aXGUDABKJgAQAiJO33npL5cqVk2EYGjVqVKz9O3fuVKdOnRQVFaWxY8eqV69eJlTpOBs3blRoaKh8fHyUPXt2+3aLxaIJEyZIknbt2qVNmzbFeJxhGOratas2b96snDlzatOmTcqdO3ey1g4ASDgCEgAgTlxcXPTJJ59IktavX6+9e/fa9x09elStWrVSaGio/Pz89OGHH5pVpsM8bXldw4YN1aBBA0mKFRYHDRqkJUuWKHPmzNqwYYOKFi2a9MUCAByGgAQAiLPmzZvbl5WNHDlSkvTf//5XTZo00b1799ShQwf5+/ubWaJDREVFad26dZKkFi1aPPaYTz/9VBaLRb/++qtWr15t3/bZZ5/J09NTq1evVsWKFZOrZACAgxCQAADxMnHiREnRS+qWLVumxo0b659//lGjRo301VdfxbkhQpUqVWSxWFS9evWkLDdBfvnlF12/fl3FihVTiRIlHntMpUqV1KFDB0nS6NGjtWjRIg0fPlwuLi5asmSJ6tWrl5wlAwAchIAEAIiXqlWrqm3btpKkjh076syZM6patapWrlzpNK2w49q9bty4cfLw8NCxY8fk6+srwzD0xRdf6LXXXkuOMgEASYCABACIt0dvcFq0aFH99NNP8vLyMrEix7IFpCctr7MpXLhwjBD10UcfqWfPnklaGwAgaXEfJABAvDx48EB9+/a1//7hw4fKkCFDvMf57bffHFmWw1y4cEEnTpxQ1qxZVbNmzace+8MPP2jVqlX23xuGkdTlAQCSGDNIAIA4Cw0NVatWrfT777+rePHiypIli65cuaLPP//c7NIc5scff5QkNWvWTG5uT/454u7du9WhQwdFRkaqatWqkqQpU6bo+vXryVInACBpEJAAAHESFRWlzp07a/v27cqbN682bdqkQYMGSYru3nb79m2TK3SMuCyvO3r0qFq0aKGQkBD16dNHO3fuVL58+RQYGKj/+7//S65SAQBJgIAEAIiTPn366LvvvpO3t7c2bNigggULasCAAcqRI4fu3bun8ePHm11iot27d0+7du2Su7u7mjRp8thjLly4YG9r3q5dO/n7+ytdunT2ez/NmTNH58+fT86yAQAOREACADzTmDFjNHv2bKVLl04//vijypUrJ0nKmDGjPvjgA0nSzJkzdfHiRTPLTLQNGzYoPDxcderUUZYsWWLtv379ur2tef369bV48WK5uET/U9qtWzcVKVJE4eHhsW4eCwBIPQhIAICnmjVrlsaOHStXV1ctW7ZMtWvXjrG/d+/eypcvn0JDQ+2zKGarUKGCLBaL/df+/fslSd9//32M7a1bt47xuKctr3vw4IGaNWums2fPqmLFilq9erU8PDzs+93d3fXRRx9Jkr799lsd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P3682SUhgXhvOpdly5YpJCSE8+kkeH86D86lc3HW85kiAtKFCxfUsGFD3blzR1u2bFGlSpXi9fjixYtLko4cOaJatWrF2GdLtLZj4iqpp/RcXV1NmzaE43z88cfas2ePTp8+rXnz5snHx0etWrUyuywkAu9N58L5dC6cT+fBuXQuznY+TW/ScPz4cdWsWVP37t3Ttm3b4h2OJOnll1+WJH399dexltktWrRIklSvXr1E1wr8m4eHh4YPH26fxezbt6/+/PNPc4sCAABAgpkakA4cOKCXX35ZwcHBWrVqlQoWLKi7d+/G+PXvi77u3bune/fuxdhWr149FS1aVPv379c777yjc+fO6a+//tLgwYO1bt065cmTRy1atEjOl4Y0JFeuXJoxY4YkKTAwUL6+vgoODja5KgAAACSEqQFp7ty5un37tu7evavatWsra9assX4dO3YsxmNy5cql7Nmzx9jm5uamBQsWyNPTUwsWLFCxYsVUqFAhTZkyRa6urpo3b57Sp0+fnC8NaUyjRo3Ut29fSdKxY8c0YsQIkysCAABAQpgakDJkyKAsWbI89de/L/jy9va2L2d6VJ06dbR//361bdtWzz//vPLly6cWLVpo9+7dat68eTK9IqRlo0aNsndb+fLLL7V8+XKTKwIAAEB8mXo1lb+/v/z9/eP1mKtXrz5x34svvqjvvvsusWUBCeLu7q758+erbt26unXrlgYOHKjy5curZMmSZpcGAACAODK9SQPgTPLly6c5c+bIYrHo4cOH8vX1VVBQkNllAQAAII4ISICD1a9fX4MGDZIknT59WoMHD37sTYwBAACQ8hCQgCQwbNgw1a5dW5L07bffavHixSZXBAAAgLggIAFJwNXVVXPnzlWuXLkkRQem48ePm1wVAAAAnoWABCSRXLlyad68eXJxcVFISIh8fX11//59s8sCAADAUxCQgCRUq1Yt+z2Rzp8/rwEDBnA9EgAAQApGQAKS2Pvvv69XXnlFkrRq1SotXLjQ5IoAAADwJAQkIIm5uLho9uzZyps3ryRp5MiR+v33302uCgAAAI9DQAKSQfbs2bVgwQK5ubkpLCxMvr6+unv3rtllAQAA4F8ISEAyqVatmsaMGSNJunjxovz8/LgeCQAAIIUhIAHJqHfv3mrWrJkkad26dZo1a5bJFQEAAOBRBCQgGVksFs2YMUMFChSQJH388cfav3+/yVUBAADAhoAEJDNvb28FBATIw8NDERER6t69u27dumV2WQAAABABCTBFxYoVNW7cOEnSlStX9O677yoqKsrkqgAAAEBAAkzSvXt3tW7dWpK0detWTZs2zdR6AAAAQEACTGOxWDRt2jQVKVJEkvSf//xHe/bsMbkqAACAtI2ABJgoc+bMCggIULp06RQVFaV33nlH165dM7ssAACANIuABJisbNmy+vTTTyVJ165dU8+ePRUZGWlyVQAAAGkTAQlIATp37qwOHTpIknbv3m0PTAAAAEheBCQgBbBYLJo0aZJKlCghSZoyZYq2bdtmclUAAABpDwEJSCG8vLy0aNEiZciQQYZhqFevXrpy5YrZZQEAAKQpBCQgBSlRooSmTp0qSbp165Z69Oih8PBwk6sCAABIOwhIQArTvn17denSRZL0yy+/aPz48SZXBAAAkHYQkIAU6JNPPlG5cuUkSf7+/tqwYYPJFQEAAKQNBCQgBUqXLp0CAgKUMWNGSVLv3r118eJFk6sCAABwfgQkIIUqXLiw/P39JUl3795Vt27dFBYWZnJVAAAAzo2ABKRgrVu3Vs+ePSVJhw4d0ujRo02uCAAAwLkRkIAU7uOPP1alSpUkSXPnztUPP/xgckUAAADOi4AEpHCenp5auHChsmTJIknq27ev/vzzT5OrAgAAcE4EJCAVKFCggGbNmiVJCgwMlK+vr4KDg02uCgAAwPkQkIBUomnTpurbt68k6dixYxoxYoTJFQEAADgfAhKQiowaNUrVqlWTJH355Zdavny5yRUBAAA4FwISkIq4u7tr/vz5yp49uyRp4MCBOnXqlMlVAQAAOA8CEpDK5MuXT3PmzJHFYtHDhw/l6+uroKAgs8sCAABwCgQkIBWqX7++Bg0aJEk6ffq0hgwZIsMwTK4KAAAg9SMgAanUsGHDVLt2bUnSsmXL9M0335hcEQAAQOpHQAJSKVdXV82dO1e5cuWSJA0dOlQnTpwwuSoAAIDUjYAEpGK5cuXSvHnz5OLiopCQEHXt2lX37983uywAAIBUi4AEpHK1atXS8OHDJUnnz5/XgAEDuB4JAAAggQhIgBMYMGCA6tevL0latWqVFi5caHJFAAAAqRMBCXACLi4umjNnjvLkySNJGjlypH7//XeTqwIAAEh9CEiAk8iePbsWLlwoNzc3hYWFydfXV3fv3jW7LAAAgFSFgAQ4kWrVqmn06NGSpIsXL8rPz4/rkQAAAOKBgAQ4mT59+qhZs2aSpHXr1mnWrFkmVwQAAJB6EJAAJ2OxWDRjxgwVKFBAkvTxxx9r//79JlcFAACQOhCQACfk7e2tgIAAeXh4KCIiQt27d9etW7fMLgsAACDFIyABTqpixYoaN26cJOnKlSt69913FRUVZXJVAAAAKRsBCXBi3bt3V+vWrSVJW7du1bRp00ytBwAAIKUjIAFOzGKxaNq0aSpSpIgk6T//+Y/27NljclUAAAApFwEJcHKZM2dWQECA0qVLp6ioKL3zzju6fv262WUBAACkSAQkIA0oW7asPv30U0nStWvX1LNnT0VGRppcFQAAQMpDQHqCe/fumV0C4FCdO3fWG2+8IUnatWuXJk6caHJFAAAAKQ8B6QleeOEFdezYUVeuXDG7FMAhLBaLJk+erBIlSkiSJk+erG3btplcFQAAQMpCQHqKjRs3ysfHR4sXL5ZhGGaXAySal5eXAgIClCFDBhmGoV69evFDAAAAgEcQkJ6gXbt2kqT79++rX79+ateunS5dumRyVUDilSxZUlOnTpUk3bp1Sz169FB4eLjJVQEAAKQMBKQnmDNnjpYsWaI8efJIkrZt2yYfHx8tWrSI2SSkeu3bt9fbb78tSfrll180fvx4kysCAABIGQhIT9GkSRPt3btXHTt2lCQFBgZq4MCBatOmjf766y+TqwMS55NPPlHZsmUlSf7+/tqwYYPJFQEAAJiPgPQM3t7emjlzpr799lvlzZtXUnQHsFq1amnevHmKiooyuUIgYdKnT6+AgABlzJhRktS7d29dvHjR5KoAAADMRUCKo4YNG2rfvn32ZUlBQUEaNmyYWrZsqT///NPk6oCEKVKkiPz9/SVJd+/eVbdu3RQWFmZyVQAAAOYhIMVD5syZNW3aNK1cuVLPP/+8JGnfvn2qXbu2Zs2axY03kSq1bt1aPXv2lCQdOnRIo0ePNrkiAAAA8xCQEqBu3bras2ePevToIUkKDg7WqFGj1KxZM505c8bk6oD4+/jjj1WpUiVJ0ty5c/XDDz+YXBEAAIA5UkRAOnfunD777DO1atVKTZo00cGDB+M9Rps2bdSkSZPH/lq3bp3Da86UKZMmTpyoNWvW6IUXXpAk/frrr3r55Zfl7++viIgIhz8nkFQ8PT21cOFCZcmSRZLUt29flo4CAIA0yc3sAnx8fPTzzz/H2Pb+++/He5zNmzcrKCjosftat26dgMripmbNmtq1a5fGjx+vOXPmKDQ0VB999JF+/PFHTZ8+XaVKlUqy5wYcqUCBApo1a5befPNNBQYGytfXVxs2bFD69OnNLg0AACDZmD6D9Oeff6pIkSJ6//331ahRo0SNVaZMGa1fvz7Wr+bNmzuo2sfz8vLSf/7zH/30008qWrSopOhrOerVq6cpU6ZwE06kGk2bNlXfvn0lSceOHdOIESNMrggAACB5mR6Qfv75Z/sSu2LFiiVqLG9v78cusbM1VEhq1atX186dO+Xn5ycXFxeFhYVp/PjxatiwoY4fP54sNQCJNWrUKFWtWlWS9OWXX2rFihUmVwQAAJB8TA9Itut3nEX69Ok1duxYbdiwQSVKlJAkHT16VPXr19eECRNooYwUz93dXQsWLFC2bNkkSQMHDtTp06dNrgoAACB5mB6QHOnatWvy8/NTy5Yt1a1bNy1atEghISGm1FKlShXt2LFDAwcOlKurqyIiIjRx4kQ1atRIZ8+eNaUmIK7y5cun2bNny2KxKCgoSL6+vk+8xg8AAMCZmN6kwZHOnTunc+fO2X8fEBCg8ePHa926dfFevueILnSurq764IMP1LRpU/Xr108nT57UH3/8offff19nz57V0KFD5enpmejngXls975yxntg1a1bVwMGDNDUqVN16tQpDRo0SNOnT5fFYjG7tCQxc+ZMzZkzR5999pleeeUVs8uBgzjjezMtcubP2rSGc+lckvp8urmZE1UshmEYpjzzY/j5+WnmzJlav369mjRpEq/H5s+fX61bt1aVKlXk5eWlU6dOad68efr7779VpkwZHTlyRK6urnEeb//+/fEt/6nCw8P17bffatmyZfa/RM8//7wGDhyokiVLOvS5AEeJjIzUyJEjdeTIEUnRHSYbN25sclVJY8iQITp+/Lhy5syp+fPny93d3eySkAiLFi2SJHXt2tXUOgAACVetWjVTntdpAtKdO3eUNWvWWNuqVq2qc+fOaefOnapTp06cx0uq+xgdPXpUvXr10vnz5yVJLi4ueu+99zR06FDaKadCkZGROnz4sCpUqBCvAJ6aXLt2TfXr19eNGzeULl06rV+/XmXKlDG7LIcLCAjQsGHDJEkTJ07ki3UqN2TIEIWEhGjatGlO+95MS9LCZ21awbl0Lkl9Ps2aQXKaJXb/Dke2ba+//romTJigM2fOxCsgJdUJKV++vKZNm6Z9+/Zp8uTJCg8P18yZM7Vx40ZNnz7dtKSMxHF1dTXtTZzU8uXLp/nz56tNmzYKCQlRjx49tHXrVmXOnNns0hzqzTff1JQpU3T9+nVNmzZNb731FktgnYAzvzfTIs6n8+BcOhdnO59O1aThcf755x9JUoYMGUyu5H/c3Nw0YMAA7dixQ5UqVZIUff1Us2bNNGLECC6GR4pTu3ZtDR8+XJJ0/vx5DRgwQClo8tkhPDw81LFjR0nSlStXtHjxYpMrAgAAZnCKgLRq1Spt2bIlxrbIyEgtWLBAixcvlouLi2rWrGlSdU9WqlQpbdiwQR999JE8PT1lGIZmz56tOnXqaO/evWaXB8QwYMAA1a9fX1L0e27hwoUmV+R4DRo0UIECBSRJU6dONa0LJgAAMI/pAWnSpEn2G7quWbNGUvSNKm3b9uzZE+P4li1bqnnz5jG27d+/Xw0bNlT27Nn10ksvqVatWsqbN6969OihyMhI9e/fXwULFky21xQfbm5u6tevn3bu3KmXXnpJknThwgW1aNFCQ4YMUWBgoMkVAtFcXFw0Z84c5cmTR5I0cuRI/f777yZX5Vhubm4aOHCgpOjZ56+++srkigAAQHIzPSAdOXJEGzdu1MaNG3Xx4kVJ0sGDB+3brl69GuP4TZs2aePGjTG2vf7663r11Vd17949/fbbb9q7d6+uX7+uXLlyaeLEiZo8eXKyvZ6EKl68uNatW6dx48bZmzUsWLBANWvW1I4dO8wtDrDKnj27Fi5cKDc3N4WFhcnX11d37941uyyHateunQoVKiRJmjZtmoKDg80tCAAAJCvTr6YaOnSoOnfu/MT9FStWjPH7NWvWxLr2oUqVKlqzZo3u37+vs2fP6t69e8qTJ49KlCghFxfTM2Ccubq6qnfv3mrSpIn69eunffv26e+//9Zrr72mt99+W2PHjnW6C+OR+lSrVk2jR4/W6NGjdfHiRfn5+enrr792mvsjubu7a8iQIerTp4+uXr2qL7/8Uu+++67ZZQEAgGRiekAqX768ypcvH+fjGzZs+MR9mTNnVuXKlR1RlqkKFy6sH3/8UQsWLNDYsWMVFBSkr776Slu2bNG0adPUoEEDs0tEGtenTx/98ssvWrdundatW6dZs2apT58+ZpflMO3atdPUqVN1/vx5TZs2TW+//XaKavQCAACSTuqZXkljXFxc9M4772jPnj329uRXrlxR+/bt1adPH6db1oTUxWKxaMaMGfaGBh9//LEOHDhgclWO4+bmpsGDB0uSrl+/roCAAJMrAgAAyYWAlMIVLFhQq1at0tSpU5UxY0ZJ0tKlS+Xj46MNGzaYXB3SMm9vby1cuFDu7u6KiIhQt27ddOvWLbPLcpi2bduqWLFikiR/f3/a7wMAkEYQkFIBi8Wirl27at++fapXr54k6erVq+rUqZN69eql27dvm1wh0qpKlSpp3LhxkqJnON977z1FRUWZXJVjuLm5aciQIZKkGzduOGVbcwAAEBsBKRXJnz+/vvvuO/n7+9ubNaxYsUI+Pj72FulAcuvRo4datWolSdqyZYs+//xzkytynDZt2qh48eKSomeRaLsPAIDzIyClMhaLRZ07d9a+ffvUqFEjSdHXSHTp0kXdunXTzZs3Ta4QaY3FYtHnn3+uwoULS5LGjx/vNDc6dnV1tc8i3bp1SwsWLDC5IgAAkNQISKlU3rx5tXTpUs2ePVve3t6SpNWrV6tGjRpauXJlrFboQFLKnDmzFi1aJE9PT0VFRalHjx66fv262WU5ROvWrVWyZElJ0vTp0/XgwQOTKwIAAEmJgJSKWSwWtW/fXj///LOaN28uKfqn3D169FCXLl107do1kytEWlK2bFl9+umnkqRr166pZ8+eioyMNLmqxHN1ddXQoUMlSbdv39a8efNMrggAACQlApITyJUrl7766ivNmzdP2bJlkyStXbtWNWrU0PLly5lNQrJ566239MYbb0iSdu3apYkTJ5pckWO0bNlSpUuXliTNmDFD9+/fN7kiAACQVAhITsJisaht27b6+eef7RfM3717V++++646deqkK1eumFwh0gKLxaLJkyerRIkSkqTJkydr27ZtJleVeC4uLho2bJik6PfV3LlzTa4IAAAkFQKSk8mRI4cCAgK0aNEi5ciRQ5K0ceNG+fj46JtvvmE2CUnOy8tLAQEBypAhgwzDUK9evZwioDdv3lxly5aVJM2cOZNZJAAAnBQByUm1bNlSP//8s9q1aydJun//vvr27at27drp0qVLJlcHZ1eyZElNnTpV0v+uiwsPDze5qsR5dBbp3r17+uKLL0yuCAAAJAUCkhPLli2b5syZo2+++Ua5c+eWJG3btk0+Pj5atGgRs0lIUu3bt9fbb78tSfrll180fvx4kytKvGbNmql8+fKSpC+++EL37t0zuSIAAOBoBKQ0oGnTptq3b586duwoSQoMDNTAgQPVpk0b/fXXXyZXB2f2ySef2Jel+fv7a8OGDSZXlDgWi0UffPCBpOhZ2VmzZplcEQAAcDQCUhrh7e2tmTNn6ttvv1XevHklRXcZq1WrlubNm6eoqCiTK4QzSp8+vQICApQxY0ZJUu/evXXx4kWTq0qcxo0bq2LFipKiZ5Hu3LljckUAAMCRCEhpTMOGDbVv3z770qegoCANGzZMLVu21J9//mlydXBGRYoUkb+/v6ToDnDdunVTWFiYyVUlnMVisV+LFBgYyCwSAABOhoCUBmXOnFnTpk3TypUr9fzzz0uS9u3bp9q1a+uLL75wipt7ImVp3bq13nnnHUnSoUOHNHr0aJMrSpyGDRuqUqVKkqQ5c+bo9u3bSfZc4eHhmjhxolatWpVkzwEAAP6HgJSG1a1bV3v27FH37t0lScHBwRo5cqSaN2+us2fPmlwdnM3YsWPtS9Pmzp2rH3/80eSKEu7Ra5ECAwM1c+bMJHuuLVu2aMKECerRo4fOnTuXZM8DAACiEZDSuEyZMmnSpEn68ccfVahQIUnSgQMHVKdOHfn7+ysiIsLcAuE0PD09tXDhQmXJkkWS1Ldv31S9rPOVV15RlSpVJEUHvps3bybJ8xQpUkSSZBiGli5dmiTPAQAA/oeABElSrVq1tHv3bvXq1UsWi0WhoaH66KOP1KRJE508edLs8uAkChYsaL9m58GDB/L19VVISIjJVSWMxWLR8OHDJUVfyzdjxowkeZ7ixYvbg9iyZctYAgsAQBIjIMHOy8tLn3zyiX766ScVLVpUUvT1IvXq1dOUKVNS/Y0+kTI0bdpUfn5+kqRjx45pxIgRJleUcHXr1lW1atUkSfPnz9eNGzeS5Hk6deokSfrnn3+0ffv2JHkOAAAQjYCEWKpXr66dO3fKz89PLi4uCgsL0/jx49WwYUMdP37c7PLgBD788ENVrVpVkrRo0SKtWLHC5IoS5tFrkR4+fGjv1udor732mtKnTy9JWrJkSZI8BwAAiEZAwmOlT59eY8eO1YYNG1S8eHFJ0tGjR1W/fn1NmDAhVbdphvnc3d21YMECZcuWTZI0cOBAnT592uSqEqZOnTqqUaOGJGnhwoW6du2aw58jc+bMevXVVyVJ69at495LAAAkIQISnqpKlSrasWOHBgwYIFdXV0VERGjixIl65ZVXdOTIEbPLQyqWL18+zZ49WxaLRUFBQfL19VVQUJDZZcXbo9ciBQcHJ9kskm2ZXVhYmL7//vskeQ4AAEBAQhykS5dOH374oTZv3qzSpUtLkk6cOKEGDRpo3LhxCg0NNblCpFYNGjTQwIEDJUmnTp3SkCFDZBiGyVXFX61atVSrVi1JUkBAgK5everw56hdu7b9vmUsswMAIOkQkBBnFSpU0LZt2zRkyBC5ubkpMjJSU6dOVd26dXXw4EGzy0Mq9cEHH6h27dqSoru0ffPNNyZXlDC2a5FCQkI0bdo0h4/v4uKiDh06SJIOHz6sP/74w+HPAQAACEiIJw8PDw0fPlxbt25V+fLlJUmnT59W48aNNWbMGAUHB5tcIVIbV1dXzZ07Vzlz5pQkDR06VCdOnDC5qvjz8fHRyy+/LEn68ssvdeXKFYc/h22ZnaRUGyQBAEjpCEhIkHLlymnz5s0aOXKk3N3dFRUVpenTp+vll1/W/v37zS4PqUyuXLk0b948ubi4KCQkRF27dtX9+/fNLivehg0bJkkKDQ3V559/7vDxCxYsaF/Kt2LFClrvAwCQBAhISDB3d3cNGjRI27dvV8WKFSVJ586dU7NmzTRixIhUecE9zFO7dm37MrXz589rwIABqe56pOrVq6tu3bqSomeRLl265PDnsM0i3bx5U5s2bXL4+AAApHUEJCRa6dKltXHjRo0ZM0aenp4yDEOzZ89WnTp1tHfvXrPLQyoycOBA1a9fX5K0atUqLVy40OSK4s8W8sLCwpLkWqQWLVooY8aMkuLfrCEyMlJt27ZV3bp1dfPmTYfXBgCAMyAgwSHc3NzUv39/7dy5U1WqVJEkXbhwQS1atNDQoUMVGBhocoVIDVxcXDR79mzlyZNHkjRy5EgdPnzY3KLiqWrVqnrllVckSV9//bXDZ5G8vLzUunVrSdKmTZt0/fr1OD/2/v372r59u44ePUonPAAAnoCABIcqXry41q9fr3Hjxil9+vSSpPnz56tWrVrauXOnydUhNXjuuee0YMECubq6KiwsTL6+vrp3757ZZcWLbRYpPDxcU6dOdfj4tmV2kZGRWr58eZwflzVrVhUtWlSStH79eofXBQCAMyAgweFcXV3Vu3dv7dq1SzVq1JAkXbx4UW3atNGAAQNS5cX3SF7Vq1fX6NGjJUl//fWX/Pz8UtX1SJUrV1bDhg0lSYsXL9bFixcdOn61atXsQWfJkiXx+rNp0qSJJOnAgQMsswMA4DEISEgyRYoU0Zo1a/Tpp5/Ky8tLUvSF6z4+PtqyZYvJ1SGl8/Pzs3+Z/+mnn/TFF1+YXFH82GaRIiIiNGXKFIeObbFY1LFjR0nRN9j9/fff4/zYpk2bSpIMw9DmzZsdWhcAAM6AgIQk5eLionfeeUd79uxRnTp1JElXrlxR+/bt1adPH929e9fcApFiWSwWzZo1SwUKFJAkffTRRzpw4IDJVcVdxYoV7QFv6dKl+u9//+vQ8d944w25uLjYx4+rl156SVmzZpXEMjsAAB6HgIRkUbBgQa1atUpTp061d+BaunSpfHx8tGHDBpOrQ0rl7e2thQsXyt3dXREREerWrZtu3bpldllxZrsvUkREhCZPnuzQsfPmzat69epJkr777juFhITE6XFubm5q1KiRJGn79u1xfhwAAGkFAQnJxmKxqGvXrtq3b5/9i93Vq1fVqVMn9erVS7dv3za5QqRElSpV0rhx4yRFzz6+9957ioqKMrmquHnxxRfVrFkzSdK3336rP//806Hj25o13Lt3T+vWrYvz4xo3bixJCgoK0p49e554XGRkpDZv3qwbN24krlAAAFIRAhKSXf78+fXdd9/J399fmTNnliStWLFCPj4+WrNmjcnVISXq0aOHWrVqJUnasmWLPv/8c5MrijvbLFJkZKTDr0Vq2rSpvL29JcXvnkj169eXu7u7JGnjxo1PPG7mzJl644031LVr18SUCQBAqkJAgiksFos6d+6sffv22Zf7XL9+XV26dFG3bt3oroUYLBaLPv/8cxUuXFiSNH78+FRzE+Jy5crp1VdflRQ9i3T+/HmHjZ0uXTq9/vrrkqKXy12+fDlOj8ucObNq1qwpKfo6pCd1wQsNDZUk/fzzz8wiAQDSDAISTJU3b14tXbpUX3zxhf0n4atXr1aNGjW0cuXKVNXaGUkrc+bMWrRokTw9PRUVFaUePXrE6yapZrLNIkVFRWnSpEkOHdu2zM4wDH377bdxfpytm92VK1d07Nixxx5jC1GSnroUDwAAZ0JAguksFoveeOMN7du3T82bN5ck3bp1Sz169FCXLl107do1kytESlG2bFl9+umnkqRr166pZ8+eioyMNLmqZytTpox9ieB3332ns2fPOmzsF198UaVLl5YUv3si2TrsSXpio5TKlSsrXbp0kpRqZuwAAEgsAhJSjNy5c+urr77SvHnzlC1bNknS2rVr5ePjo+XLlzObBEnSW2+9pTfeeEOStGvXLk2cONHkiuJm6NChslgsDp9Fslgs9lmkP//8U/v374/T455//nmVKVNG0pMDkqenp6pWrSpJ2r17d6z9Dx480P79+1NN0wwAAOKCgIQUxWKxqG3btvr555/tP3G/c+eO3n33XXXq1ElXrlwxuUKYzWKxaPLkySpevLgkafLkydq2bZvJVT1bqVKl1Lp1a0nS999/r1OnTjls7Pbt28vNzU2S9M0338T5cbZZpMOHDz/xvVWrVi1J0tmzZ3X16tUY+95++201bdpUCxcuTEjZAACkSAQkpEg5cuRQQECAFi1apBw5ckiK7rbl4+Ojb775htmkNM7Ly0uLFi1ShgwZZBiGevXqlSrC85AhQ2SxWGQYhkNnkZ577jl76+4ffvhBQUFBcXrco8vsNm3a9NhjbAFJir3MztZMZe3atfGqFwCAlIyAhBStZcuW2rdvn71T1/3799W3b1+1a9dOly5dMrk6mKlkyZL2ttm2a9bCw8NNrurpSpYsqbZt20qKbkZy8uRJh41tW2YXGBioH3/8MU6PqVixonLlyiXpycvsKlWqpAwZMkiK3aihYsWKkqRDhw6limvBAACICwISUrzs2bNr7ty5+uabb5Q7d25J0rZt2+Tj46NFixYxm5SGvfHGG3rrrbckSb/88ovGjx9vckXPNmTIELm4uMgwDIdeP9WgQQP7bGtc74nk4uJib7O/c+fOx848eXh42K9D+ndAqlKliqToUHbmzBlJ0dcljRgxIl5L/QAASEkISEg1mjZtqn379qljx46Sor+UDRw4UK+99pouXrxocnUwy4QJE+zNBvz9/Z9649OUoFixYvYZ0R9++EEnTpxwyLju7u5q3769pOilcP/973/j9Dhbu+/Q0FDt2LHjscfYltmdP38+xlJGW0CSpN9++01S9A8vZs+erf79+9OBEgCQKhGQkKp4e3tr5syZ+vbbb5U3b15J0T/5rlmzpubPn083rTQoffr0CggIUMaMGSVJ7733nv7++2+Tq3q6IUOGyNXVVZLsbcsdwbbMTor7LFKdOnXsrbyftMzuSdchlShRwv7nfvDgQUlS1qxZJUXf8+no0aPxqB4AgJSBgIRUqWHDhtq3b5/efvttSVJQUJCGDh2qVq1a6c8//zS5OiS3okWL6vPPP5ck3b17V76+vgoLCzO5qicrUqSIfbZn7dq1T7xRa3yVKlVKlSpVkiQtW7YsTj8wyJAhg+rWrSspulHD4x5TsWJFeXl5SYrZ7tvV1dV+HZJtBqlcuXL2/ceOHdP9+/dVt25dtWzZMkWfEwAAbAhISLUyZ86sadOm6fvvv1f+/PklRf90u3bt2vriiy+4aDyNadOmjd555x1J0U0DxowZY3JFTzd48OAknUW6dOmSdu3aFafH2LrZ3bhxwz4T9Ch3d3dVq1ZNUuxOdpUrV5YknTp1SoGBgcqaNav9/Xj06FGdPHlSR48e1Z49e7jZLAAgVSAgIdWrV6+e9u7dq27dukmSgoODNXLkSDVv3lxnz541uTokp7Fjx9pnNObMmRPnbm5meOGFF9ShQwdJ0rp163TkyBGHjPvaa6/J09NTUtyX2dkaNUhPXmZXu3ZtSdKFCxdidJC0XYcUFRWlw4cPS/rfLNLx48dVoEAB+7GnTp3SqFGj1LJlS926dSuOrwgAgORFQIJTyJQpkyZPnqwffvhBhQoVkiQdOHBAderUkb+/vyIiIswtEMnC09NTCxcuVJYsWSRJffv2TdFLLgcPHmy/waujZpG8vb3VvHlzSdHL9+7du/fMx+TOndu+NO9JAalmzZr2/390Jsg2gyTFXmb3559/KkOGDPbzceLECX3xxRfas2ePli5dquvXrzPTCwBIcQhIcCq1a9fW7t271atXL1ksFoWGhuqjjz5SkyZNHHrPGaRcBQsW1KxZsyRFt5z29fVVSEiIyVU9XsGCBe1dGTds2KDff//dIePaltmFhIRo1apVcXqMbZndyZMn9ddff8XaX6FCBXtDhkevQ8qVK5d9SZ1ted6j1yGdPHlSJUuWlCSdPXtW3t7ekqKbq5QpU0atW7eOxysDACDpEZDgdLy8vPTJJ5/op59+UpEiRSRFX5NSr149TZ06NcXfTBSJ17RpU/n5+UmKbhQwYsQIkyt6skGDBtlnkSZMmOCQMV9++WV7l8e43o/I1u5bevwskpubm2rUqCHpyfdD+u2332QYhsqXL2/fd/ToUXtAOnXqlIoWLSpJOnfunCIjI7V37169+eab9pv+AgBgNgISnFb16tW1a9cu+fn5ycXFRWFhYRo3bpwaNWrksHvPIOX68MMP7Tc4XbRokVasWGFyRY9XoEABde7cWZK0efNm+zK1xHB1dbXPTB08eFCnT59+5mNKly5tnwl61jK7ixcvxrj3mG2Z3bVr13T58mXlz5/fPlN07NgxlSpVSlL0jJ4tuN25c8f++PXr12v8+PHq16+fQ14/AACJQUCCU0ufPr3Gjh2rDRs2qHjx4pKkI0eOqF69epowYQJth52Yu7u7FixYoGzZskmSBg4cGKegYIaBAwfK3d1dkuOuRbIFJElaunTpM4+3WCz2WaS9e/fq/v37sY6xNWqQYs4iPXrD2F9//VUWi8W+zO7YsWP2GSRJ9nbhjxt/8eLF6tq1q8aPH889zQAApiEgIU2oUqWKduzYoQEDBsjV1VURERGaOHGiXnnlFYd1D0PKky9fPs2ePVtS9L2yfH19FRQUZHJVseXPn19vvfWWJGnr1q06cOBAoscsXLiwqlevLkn69ttv49SoxHYdUkREhLZs2RJrf/ny5ZUpUyZJMQNS+fLl7csEbdchlS1bVlL0sjrbUldJzww+V65c0ZQpU1S7dm1mkwAApiAgIc1Ily6dPvzwQ23atMm+5OfEiRNq0KCBxo0bp9DQUJMrRFJo0KCBBg0aJCn6y/qQIUNkGIbJVcU2YMAAeXh4SHLctUi2Zg3Xrl3Ttm3bnnl8zZo17Y0YHrfMztXVVT4+PpKiA5LtzzF9+vT2GSNbQLJdhxQWFqbbt2/bZ/IenTmyPdfjnDx5Uo0aNVLPnj119+7dZ9YOAICjEJCQ5lSsWFHbt2/XkCFD5ObmpsjISE2dOlV169Z97E0ykfoNGzZMtWrVkiQtW7Yszo0LklO+fPnUpUsXSdKOHTv0yy+/JHrMVq1aKUOGDJLi1qzBw8NDr7zyiqTo66Ee19DE9ud46dKlGN3ubNchHTlyROHh4TE62R0/fty+zO7KlStycYn+p8c2G2VbXvg43333nV588UV9++23z6wfAABHICAhTfLw8NDw4cO1detW+xe506dPq3HjxhozZoyCg4NNrhCO5Obmprlz5ypnzpySpKFDh6bIRh3vv/++/SavjrgWKVOmTGrVqpWk6BmhuNyc1bbM7t69e9q/f3+s/Y9eh/Rou29bQAoJCdGJEydUrFgx+2t5tJPduXPn7DePdXV1jdPrePDggd577z3Vrl1b//zzT5weAwBAQhGQkKaVK1dOW7Zs0YgRI+Tu7q6oqChNnz5ddevWfeyXQ6ReuXPn1rx58+Ti4qKQkBD5+vrqwYMHZpcVQ548eeyzSDt37tS+ffsSPaZtmV14eLi+++67Zx7fsGFD+wzP45bZlSlTxn7j10dvGPtoo4bffvtN7u7u9qWsj84gBQYG2rvl2Za1xrX1/okTJ1SmTBkNGzYsRS6TBAA4hxQTkK5cuaKlS5dq0aJFunz5coLH+fvvv7Vq1Sp9//33+vPPPx1YIZyVu7u7Bg8erO3bt6tixYqSom9o2axZM40YMUIPHz40uUI4Su3atfXBBx9Iip7JGDBgQIr7ov3+++8rXbp0khxzLZKPj48KFSokSVqyZMkzj8+WLZuqVasmKbr99r//fFxdXe3tvnfv3m3fX7hwYWXNmlVS7EYN/+5klzlzZklK8LVF8+bNU548eWjiAABIEqYHpIkTJ6pKlSrKnz+/OnXqJF9fXx07dize40RGRurdd99VwYIF9dprr+n1119XkSJF9Oabb3LxPeKkdOnS2rhxo8aMGSNPT08ZhqHZs2erdu3aMX5SjtRt4MCBql+/viRp5cqVCggIMLmimHLnzi1fX19J0Y0Q/n1T1viyWCz2lt/Hjh2L0+erbZndhQsXdObMmVj7bQHpn3/+0YULF+zPY1tm9+9GDffv34/RkMFisUiK+8zR44SFhalRo0aqWLEiLcEBAA5lekCaOnWqDh48qDx58uiFF15I8DgffPCB5syZI3d3dzVv3tx+cfKSJUvk5+fnwIrhzNzc3NS/f3/t3LnTvmTowoULatGihYYOHarAwECTK0Riubi4aPbs2cqTJ48kacSIETp8+LC5Rf1L//79lT59eknRs0iJneXq2LGjPZTEpVmDLSBJ0saNG2Ptf9Z1SOfOndOdO3fsM0hSdFOHHDlySJJDZ2X/+usvPffccxo7dqzDxgQApG2mB6Rhw4bp119/1aVLl9SsWbMEjXH16lX5+/srXbp02rt3r9auXavVq1fr0KFD8vb21sKFC3X27FkHVw5nVrx4ca1fv17/93//Z1/uNH/+fNWqVUs7d+40uTok1nPPPacFCxbI1dVVYWFh8vX11b1798wuyy5nzpzq3r27JGnfvn3atWtXosbLnz+/6tSpIym6K9yzbpBcrFgxFS1aVFL0Mrt/K126tH053aMzXLaAJEXPIpUpU8YezB5t1HDt2jX7cbbW5ok1bdo05cqVyyFjAQDSNtMD0oABA1SlShX7P6IJsWbNGoWFhalLly4xLhQuUaKE/Pz8FBUVpZUrVzqiXKQhrq6u6tOnj3bv3q0aNWpIki5evKg2bdpowIABMe7ngtSnevXqGj16tKToWYh+/fqlqOuR+vbta2/R7YhZpDfffFOSdPv27cc2X/g32yzSr7/+qps3b8bY5+LiYl9mt3fvXnttjwak3377TZkyZVLhwoUlxWzUcOHCBXl5eUl6+r2Q4is8PFyHDh1y2HgAgLTJ9IDkCLZ/EBs1ahRrX+PGjWMcA8RXkSJFtGbNGk2YMMH+hfXLL7+Uj48P1yalcn5+fvYgsH79ev34448mV/Q/OXLkUI8ePSRJ+/fv144dOxI1XvPmze3NEeLSrMH25xIVFaXNmzfH2m+7H9LVq1d17tw5SVLWrFntM0+265BsbfQfnUEKDg7W888/L0n2jnlxbfn9LH/88YdDxgEApF1uZhfgCLaud7afVD7Ktu3SpUvxGjMiIiLxhT1GZGRkjP8i9ejWrZvq16+vgQMHas+ePbpy5Yp8fX21ePFizmcq5u/vrwYNGujixYvavXt3ijqX7733nubPn6+HDx8qICAgxrU/8eXu7q7WrVvrq6++0pYtW3Tnzh37jVofp1KlSsqaNavu3LmjzZs3q127djH222ZVpejrkGzXkFaqVEnnzp3TwYMHFR4erjJlymj16tW6cuWK/T5UkuTt7S0p+r5JkuM+E2/duhXj8zsyMlJr1qyxL1l8GhcXF7m5ucnd3T3Grxw5cigqKkoWi0WFChXS/fv3ZbFY1L17d40dO1b9+/dX1apV1aNHD7388ssaNWqU7t27J19fX+XLl0/Tp0+3P8eSJUsUEBCg8ePHq2rVqjGePyoqSkOGDNG1a9c0c+ZMezv1Jzlx4oRGjBihjh07qkOHDvH8k4rp3r17GjZsmAoVKqRhw4YlalWHo61Zs0Zr165Vq1atUtT7E/F3+vRpLV++XMWLF1eFChXMLgcOkNTfa93czIkqThGQgoKCJMn+0/1H2ZZv2I6JK9tPP5NKSrsoHHE3fPhwbdiwQUuWLFHx4sXl6urK+UzlPvzwQ61YsUL169dPceeya9eu+uKLL+Tt7Z3ozyUfHx8tX75cGTJk0NGjR+3X1z1JvXr1tHLlSkVGRsZ67qioKBUqVEj//e9/dfv2bfv+4sWLS5LSp0+vQ4cOKXfu3LJYLHJzc5Orq6syZcqkBw8eKG/evJIkLy8vBQYGysPDQ2FhYbJYLIlaTpg+fXodPHjQHrwOHz6soUOHxumxUVFRCgsLi3WN1pUrV+z/f/ToUfv/X758WWfOnNG8efO0bds2HTlyRGfPnlXTpk31ww8/2K/Pateunby8vBQZGalRo0YpMDDQfg3cow4fPqyvv/5aUnSHRVsXwCf54IMPdOTIEd26dUvFihWL02t8ktmzZ+uHH36QJL388ssOuzYssY4eParhw4crKipKmTJl4jqzVCoiIkIrVqzQkiVLFBERoTJlythnm+EckurfTtttJ5KbUwQk293aH3fhsa3F97O+CPzbo2vpHSkyMlKHDx9WhQoVHLakBMnvpZde0ocffqiIiAgdOXKE85nKVa5cWa+++mqKfG9WrlxZo0aNcshP0SpXrqzatWvLzc3N3mThacqXL693331XZcqUkbu7e6z969at099//22/f5gUPYNUvXp1FSxYULly5VLlypVVokQJZcyYUUWLFtXmzZt148YNVa5cWa+//rrKlSunP/74Q7ly5dKFCxeUNWtW3b59W4GBgQoJCdHDhw8VGBiou3fv6u7du7p9+7Zu376tO3fu6O7duwoMDLT/5LJcuXLq1q2bJGnZsmUKCQlRhQoVHNoG3NXV1f58N27ckCSVLFnSvpLhhRdeUOXKlTVv3jxJ0Q1BateuLYvFoqNHj9o7YdapUyfWvzOrVq2yP0fr1q2feo7++usvHTlyRFJ0kE3Mv1lXr161X5dWu3btGLODZrp27Zq6dOmiqKgopUuXTj4+Pinu/YlnO3HihPr162e/xYCLi4saNmzIuXQSzvq91ikCkq117OXLl2O0lZX+t7TOdkxcJfWUnqurq2nThnA8zqfzSInn0pH12Nqbx/V5H21882+5c+dW7ty5Y2338fGJ8ftHxyhevLh9lsl2nVO+fPkk6ZkzJgnh6urq0CXTXl5eun//vrJly6bbt29LkkqVKmVvh16+fHm5ubnp999/lxQdSm3hct++ffZx6tSpE+O8GoZhH6NGjRrP/DdrxYoV9v9/6623EvV3ZMaMGfYfJg4fPjxF/P2PjIxU7969df36dUnRjUoKFiyYIt+feLywsDBNnTpVU6dOtb8HS5QooWnTpklKmZ+1SDhnO59O0aTBFooe/cfHxnYR/b+DEwAgbbDdKNcRbE0lHg2Gzz33nO7cuSMpehbr5s2b9hvoPhoObf8e5cuXT4UKFYox7qlTp/TXX39J+l9zoSeJiorS0qVLJUkVKlRQ6dKlE/x6Ll++rEWLFkmS6tatq+rVqyd4LEf69NNP7ffY6tixo0PPIZLekSNH9Morr2jixImKiIiQq6urBg4cqB07diTZCh3AkZwiINnunzRv3jz7T/Sk6JsR+vv7S4ru4AQASHsmTJigtm3bJmoMW9MC27VNj17z+ugMVfny5WN0TbV9GYyIiLD/EM+25O5Rj7Zef/RGvY+zZ88e/f3335KkTp06xfu1PGratGn25ekffPBBosZylK1bt2rKlCmSopcvTpw4MUU1jcCThYaGaty4cWrQoIFOnDghSSpTpoy2bNmiUaNG2S+JAFI60+fCdu/erfPnz0uK/gmaJG3evFlXr16VFL22umDBgvbjv/76axmGobffftu+rUyZMnr11Ve1du1aVa9eXT179pS7u7v9BrG1atWyt6QFAKQ98+bN0+zZs1W8eHH7bE982BpH2AKSTcaMGWM0cShbtqy9a53FYlGlSpUkSceOHdODBw8kyX4PqUfZAlKxYsVUpEiRp9Zia9Pu4eGRqOB36dIle1OI+vXrx+qqZ4bLly/r3XfflWEY8vLyUkBAgLy8vJKssywc5+DBg/Lz89Pp06clRS/RHTRokAYMGJBimn4AcWV6QJozZ46++eabGNumTp1q//8VK1bECEjvvPOOIiIiYgQkSVq4cKEaNGigo0ePasiQIfbtxYoVi9M9PwAAzs3V1VXnz5/Xtm3b1L59+0Q1b7DdKLpEiRI6fvy4JKlQoULKnDlzjI5+tntP2ZaLSYrVrv3GjRv67bffJElNmzZ95vOuWbNGUvTqibg023iSzz77LEXNHoWHh6tHjx66deuWpOj6SpQoYXJVeJbg4GBNmDBBM2fOtL+nXnzxRc2YMUNlypQxuTogYUwPSP++UPXf/r1O+6233nrsP2o5cuTQr7/+quXLl+vAgQOKiopSpUqV1KFDh8e2/wYApE3169fXzZs39d577+nbb79N0Bj//POPpOglYLbwU7ZsWUVFRdmX2D16rYWt5XeBAgVUoECBGGNt2rTJPkP1rOV1q1atUnBwsKTELa/7+++/tXjxYklSw4YNn9qMI7mMGzdO+/fvlyR16dJFr7/+uskV4Vn279+vvn372m8W7eHhoaFDh6pv376P7XwJpBamB6SePXuqZ8+ecT7e1jr1cTw8PNS5c2d17tzZEaUBAJzYF198oeHDh6tNmzb2pgpx4erqal8uV6hQIfsqiPLly+vs2bP22SVb6IiIiNAvv/wi6enL67Jly6aXXnrpqc9tWxGRJ08e1atXL841/9uUKVMUHh4uSRo2bFiCx3GU9evX25cmlitXTp988onJFeFpgoKCNH78eM2ZM8ce7itVqqTp06erVKlSJlcHJJ5TNGkAACAhChQooIMHD+qzzz6Tl5fXU49Nnz69JClnzpz2bY9eW1GuXLkYN9S1BaTDhw/b73/07+V1ISEh2r59u6To7nVPu4/ImTNn9Ouvv0qSOnTokOB7jvz111/2oNWkSRP7dVJmuXjxonr37i0p+pqugICAeN+7EMln7969qlOnjmbPni3DMOTp6amPPvpIGzZsIBzBaRCQAABpXpcuXfTHH3+odevW9lbe/2brpGa7rkiK/km6Tbly5ezXEnl5ealkyZKS/tfeW1KshkG7d+/Ww4cPJT27vbettbeUuNblkydPtjc9MHv2KDQ0VN26ddO9e/ckSdOnT1fhwoVNrQmPFxgYqKFDh6pFixb2GdeqVatq165d6tevn1PdAwcgIAEAIClTpkxauHCh1qxZo2LFisXab+tgZ5u5yZw5s/3eRdmzZ1eePHnsM0gVKlSwf2G0XaNUqFAh5c+fP8aY69evlxQ9E/W0JXMRERH266WqVaumokWLJug1XrhwQcuWLZMU3eThxRdfTNA4jjJmzBj7NVs9e/ZUq1atTK0Hj7dz507VqlVL8+fPlxQ9mzp+/Hj99NNPj32vAKkdAQkAgEfUqFFDO3bs0MiRI2Pcf8fWIMg241OyZEkdO3ZMUvTs0cOHD+33frEtrwsPD7c3Hvj37JFhGNq4caN9X6ZMmZ5Y0/bt2+23v0hMc4bJkycrMjJSkvmzR6tXr9bcuXMlRV+/MnbsWFPrQWz379/XgAED1KZNG128eFGS5OPjo927d+u9995L8DJPIKUjIAEA8C/p06fXoEGDdObMGZUrVy7GtUbXrl2TFH0biTNnzkiKDkhHjhyxhyhbB7vff//dvgzv39cfHTlyxN4N71ntvW2NIDJkyKDWrVsn6DWdP3/ePgv16quvqly5cgkaxxHOnz+vfv36SZK8vb21cOFC7pWTwmzZskU+Pj768ssvJUUvG504caJ+/PFHlkHC6RGQAAB4guzZs2vLli3asGGDXF1dlTVrVnubbW9vb/u1POXLl7dffyT9LyDZ2ntLsTvY2ZbXSU+//uj27dv2TnctW7Z86kzT00yePNke4MycPQoODpavr6+9ccUXX3wRq/U5zHP37l316dNH7du3t98EuU6dOtqzZ4969OjxxGv0AGfC33IAAJ7C3d1dFSpU0P79++33DpIUY3lR2bJl7QEpX758ypMnj6T/BaQiRYoob968Mca1La8rV65crGuTHvXdd9/Zb+ia0OV1Z8+e1YoVKyRFhywzb+A5fPhw+811+/Xr98zmFEg+GzZskI+Pj70hSMaMGTV16lStWrVKBQsWNLk6IPnQcgQAgDgoXLiwChUqpI8++kiSdOnSJUnRy/GKFi1qb9Bgmz0KCwvTgQMHJMWePbp06ZKOHj0q6dnd62wtuQsWLCgfH58E1W6bPbJYLBo6dGiCxnCE5cuX66uvvpIkVa9eXSNHjjStFvzP7du3NXz4cHuIlqJvqDxt2rSnhnfAWRGQAACIIxcXF/u1M7abmdavX19Xr161X09ka9Bw6NAhe0OHf19/tGnTJvv/P+36o+PHj9uDVMeOHRO0vOn06dP67rvvJEmtW7dW6dKl4z2GI5w6dUoDBw6UFL10cf78+XJ3dzelFvzPmjVrNGTIEF2/fl1SdHfG8ePHq1OnTjGalABpCQEJAIAEGDp0qGrUqKGKFStq586d9u22gBSX64/y5Mnz1FbbtuYMFoslwfc+mjRpkgzDkMVi0ZAhQxI0RmIFBQXJ19dXDx8+lMVi0Zw5c2ItOUTyunnzpoYOHarVq1fbtzVu3FhTpkzh3CDNIyABAJAArq6uqlu3rqT/3UQ2W7ZsKl++vKT/BaRixYopd+7c9scFBgba743UqFGjJ84KhYWF2Wd+6tSpo+effz7eNZ48eVKrVq2SJLVt29Z+89rkZBiGBg8erNOnT0uSBg8erPr16yd7HYhmGIZWrVqlYcOG6datW5KiG45MmDBB7dq1Y9YIEAEJAIBEa968uRYsWKBixYopQ4YMCg0NtV9/9O/7H23fvt3edOFpy+s2bdpk/wKb0OYMEydOlGEYcnFxMW32aPHixfb24nXq1DH1Gqi07tq1axoyZIjWrl1r3/bqq69q0qRJypUrl4mVASkLAQkAgERycXFRmzZt7L8/duyYQkJCJMUOSLaW3enTp491bdKjbM0ZMmXKpObNm8e7pj/++EM//PCDJOn1119XsWLF4j1GYh0/ftzeUjxXrlyaM2cONxc1gWEYWrFihYYPH647d+5Iir4O7NNPP1WbNm2YNQL+hYAEAICD5c6dW1myZJGXl1eM5WSRkZH2Bg316tVT+vTpH/v4a9euafPmzZKkNm3aKEOGDPGu4dNPP5UUvRTQjNmj+/fvy9fXVyEhIXJxcdG8efOYpTDBlStXNGjQIHtbeSm6WcfEiRP13HPPmVgZkHIRkAAAcLD8+fPr999/l6enZ4wQ9Ouvv9qXzT2tvffy5csVGRkpKWHL644fP641a9ZIktq3b68iRYrEe4zEMAxD/fv31/nz5yVJI0aMiDWThqRlGIaWLFmikSNH6v79+5KkHDlyaPLkyWrRooXJ1QEpGwEJAIAk4O3tHWub7af4FovliQHJ9sVWim7w8NJLL8X7uR+dPRo8eHC8H59YCxYssC/ve+WVV/T+++8new1p2aVLl/T+++9r27Zt9m3t2rXTJ598omzZsplYGZA6EJAAAEgmf/zxhySpUqVKypkz52OPOXTokL3jW0LuRXP06FH99NNPkqQ33nhDL7zwQiIqjr9Dhw7ZbwCbN29ezZ49O0H3b0L8GYahL7/8UqNHj1ZgYKCk6FbyU6ZMUZMmTUyuDkg9CEgAACSTd999V1FRUfrggw+eeIxt9sjFxUXt27eP93PYZo/c3NySffbo7t276tatm8LDw+Xm5qYFCxYoe/bsyVpDWnXx4kX1798/xj25OnXqpPHjxytLliwmVgakPgQkAACSSb169VSvXr0n7g8ODtb3338vKXppWp48eeI1/u+//26/CW3Hjh1VqFChBNcaX4ZhqE+fPrp48aIkacyYMapWrVqyPX9aFRUVpYULF+rjjz9WUFCQpOiZu2nTpqlBgwYmVwekTgQkAABSiHXr1tkvqE9Ic4ZHZ48GDRrk0NqeZebMmfZw1qxZM/Xu3TtZnz8t+vPPP9W/f3/t3bvXvu3tt9/W2LFjlTlzZhMrA1I3AhIAACnEN998I0nKmjVrvK8ZOXjwoL2FeOfOnVWgQAGH1/ckv/zyiz7++GNJUsGCBTVjxgzurZOEIiMjNXfuXI0bN07BwcGSpOeff16ff/656tata25xgBMgIAEAkEL8/PPPkqI7jnl6esbrsRMmTJAkubu7a+DAgQ6v7Ulu3bql7t27KzIyUh4eHlq4cOFjO/jBMc6ePau+ffvqwIED9m09evTQhx9+qEyZMplYGeA8CEgAAKQQ7733ng4fPqwBAwbE63EHDhzQ1q1bJUlvvfWW8ufPnxTlxRIVFaV3331X//zzjyRp/PjxqlixYrI8d1oTERGhWbNm6ZNPPlFoaKgk6YUXXpC/v79q1qxpcnWAcyEgAQCQQowePTpBj7Nde+Th4RHvcJUY06ZNswezNm3aqFu3bsn23GnJyZMn1bdvXx06dEhS9H20evXqpZEjR8rLy8vk6gDnQ0ACACAV++WXX7R9+3ZJUpcuXZQvX75ked49e/boP//5jySpSJEi+uyzz7juyMHCw8Pl7++vSZMmKSwsTJJUtGhR+fv7q3r16iZXBzgvAhIAAKmYbfbI09NT77//frI857Vr1/TOO+8oKipK6dKlU0BAAF3THOz48ePy8/PT0aNHJUXfF6t3794aPny40qdPb3J1gHMjIAEAkEr9/PPP9huDdunSJd73TUqIyMhI9ezZU9euXZMUHdDKli2b5M+bVoSFhWnq1KmaOnWqIiIiJEklSpTQ9OnTVaVKFZOrA9IGAhIAAKmUrXNdunTpkm326NNPP9Xu3bslSR06dFDnzp2T5XnTgiNHjsjPz08nTpyQJLm6uqp///4aMmRIvLsaAkg4AhIAAKnQgQMH7EHF19dXuXPnTvLn3Lp1q6ZMmSIpelZj0qRJXHfkAKGhoZo0aZI+//xzRUZGSpJKly6tGTNmqEKFCuYWB6RBBCQAAFKh69evS5IyZsyofv36JfnzXb58We+++64Mw1CGDBm0aNEiOqg5wMGDB+Xn56fTp09Lktzc3DRw4EANHDhQHh4eJlcHpE0EJAAAUqHmzZsrICBAxYoVU65cuZL0ucLDw9WjRw/dunVLkjR16lSVKFEiSZ/T2QUHB2vChAmaOXOmoqKiJEnly5fXjBkzuKYLMBkBCQCAVMhisahVq1bJ8lzjxo3T/v37JUU3g2jfvn2yPK+z2r9/v/r27atz585Jktzd3TV06FD169dP7u7uJlcHgIAEAACeaP369Zo+fbokqVy5cvrkk09Mrij1CgoK0vjx4zVnzhwZhiFJqlSpkqZPn65SpUqZXB0AGwISAAB4rIsXL6p3796Soq91CggIULp06UyuKnXau3ev+vXrpwsXLkiKvm/V8OHD1bt3b7m58XUMSEl4RwIAgFhCQ0PVrVs33bt3T5I0ffp0FS5c2OSqUp/AwEB9/PHHWrBggX3bSy+9pOnTp6t48eImVgbgSQhIAAAgljFjxujQoUOSpJ49eybb9U7OZOfOnerXr5/+/vtvSVL69Ok1cuRI9erVS66uriZXB+BJCEgAACCG1atXa+7cuZKir5EZO3asyRWlLvfv39eYMWP05Zdf2rf5+PjI39+fWTggFSAgAQAAu/Pnz9vvq5QlSxYtXLiQ+/HEw5YtW/T+++/rypUrkiQvLy+NHj1a3bt3l4uLi8nVAYgLAhIAAJAUfW+ebt26KTAwUJI0a9YsFShQwOSqUoe7d+9q5MiRWrp0qX1bnTp19Pnnn6tgwYImVgYgvghIAABAkjRixAgdO3ZMktS3b181bdrU5IpShw0bNmjgwIG6evWqpOiOf2PHjlWXLl1ksVhMrg5AfBGQAACAli9fbr9mplq1aho1apTJFaV8t2/f1vDhw7VixQr7tnr16unzzz9X/vz5TawMQGIQkAAASOOioqI0cuRISVL27Nk1f/58ubu7m1xVyrZmzRoNGTJE169flyRlzpxZ48aN05tvvsmsEZDKEZAAAIBeeOEFhYWFad68ecqXL5/Z5aRYN2/e1NChQ7V69Wr7tkaNGmnq1KnKmzeveYUBcBgCEgAAaZyLi4s2btyo4OBgZciQwexyUiTDMLRq1SoNGzZMt27dkiR5e3trwoQJateuHbNGgBMhIAEAAFksFsLRE1y7dk1DhgzR2rVr7duaN2+uyZMnK1euXCZWBiApEJAAAAAewzAMrVixQsOHD9edO3ckSdmyZdOnn36q1157jVkjwEkRkAAAAP7lypUrGjRokDZu3Gjf1qpVK02cOFE5cuQwsTIASY2ABAAAYGUYhpYsWaKRI0fq/v37kqQcOXJo0qRJatmypcnVAUgOBCQAAABJly5d0vvvv69t27bZt7Vr106ffPKJsmXLZmJlAJITAQkAAKRphmHoyy+/1OjRoxUYGChJyp07t6ZMmaKmTZuaXB2A5EZAAgAAadZff/2l/v37a9euXfZtHTt21Pjx4+Xt7W1eYQBMQ0ACAABpTlRUlBYsWKCxY8cqKChIkpQ3b1599tlnatiwocnVATATAQkAAKQpf/75p/r166d9+/bZt7399tsaO3asMmfObGJlAFICAhIAAEgTIiMjNXfuXI0bN07BwcGSpOeff16ff/656tata25xAFIMAhIAAHB6Z8+eVd++fXXgwAH7tu7du2v06NHKlCmTiZUBSGkISAAAwGlFRERo1qxZ+uSTTxQaGipJKlSokPz9/VWrVi2TqwOQEhGQAACAUzp58qT69u2rQ4cOSZIsFot69uypUaNGycvLy+TqAKRUBCQAAOBUwsPD5e/vr0mTJiksLEySVLRoUfn7+6t69eomVwcgpSMgAQAAp3H8+HH5+fnp6NGjkiQXFxf17t1bw4cPV/r06U2uDkBqQEACAACpXlhYmKZOnaqpU6cqIiJCklS8eHHNmDFDVapUMbk6AKlJigtIhmHIYrHE+3GhoaEyDOOx+9zd3eXq6prY0gAAQAp05MgR+fn56cSJE5IkV1dX9evXT0OGDFG6dOlMrg5AauNidgGStG3bNtWuXVvp0qWTp6enqlWrpjVr1sRrjOzZsyt9+vSP/TVv3rwkqhwAAJglNDRU48aNU4MGDezhqHTp0tq8ebM+/PBDwhGABDF9BmnNmjVq3bq1oqKiJEV3mDlw4IBatmypxYsX680334zzWBaLRR4eHrG2u7mZ/jIBAIADHTx4UH5+fjp9+rSk6H/rBwwYoEGDBj32uwAAxJWpM0ihoaHq3bu3oqKiNGLECN2/f19BQUGaNGmSJKlfv366f/9+nMfz8fFRSEhIrF89evRIqpcAAACSUXBwsMaMGaPGjRvbw1H58uW1detWDR8+nHAEINFMDUibN2/WpUuXVL9+fY0fP16ZMmVS+vTpNXjwYLVv3163b9/W6tWrzSwRAACkEAcOHNDLL7+s6dOnKyoqSu7u7ho5cqQ2b96scuXKmV0eACdhakDavXu3JKlDhw6x9nXq1CnGMfFhW64HAABSv6CgIM2ZM0ctWrTQuXPnJEkVK1bU9u3bNWjQILm7u5tcIQBnYmpAOn/+vCSpbNmysfbZfhJk+yCMiz/++EP58+eXq6ursmXLptatW2v//v2OKRYAACS7iIgItW3bVqtXr5ZhGPL09NSYMWO0ceNGlS5d2uzyADghU7sX2K4vypo1a6x92bJli3FMXNy5c0d37tyRxWLRnTt39MMPP2jt2rVavHjxY2epnsZ2DwVHi4yMjPFfpG6cT+fBuXROnM/ULyQkRMePH5ckVa5cWf7+/ipWrJikpPu3GkmHz1rnktTn06xGaxbjSTcPSgaNGjXS5s2bdfLkSZUsWTLGvtu3byt79uyqVKmSDh48+Myx3njjDb3zzjuqUqWKMmTIoNOnT2vixIlavHixsmTJor/++ktZsmSJc23MPAFA6rVo0SJJUteuXU2tA45x7tw53bp1S1WqVOG+hkAaUq1aNVOe19QZJFtguXXrVqx9t2/fjnHMs3z77bcxfl+uXDl9/fXXunr1qrZs2aLt27erdevWca6tcuXKcT42PiIjI3X48GFVqFCBD3knwPl0HpxL57Js2TKFhIRwPp1EhQoVeH86CT5rnYuznk9TA5JtivzYsWOqWbNmjH1HjhyRJBUvXjxRz1GjRg1t2bJFN27ciNfjknpKz9XVlfszORHOp/PgXDoXzqdz4Xw6D86lc3G282lqk4Y6depIkhYvXhxr31dffSVJevnllxM8flRUlHbs2CFJyp07d4LHAQAAAJA2mBqQXnnlFb3wwgvau3ev/Pz8dOnSJV27dk2jRo3Sjz/+qFy5cqlly5YxHhMaGqrQ0NAY28aNGyc/Pz/t2rVLly9f1s2bN7Vnzx61adNGu3fvVrZs2VS3bt1kfGUAAAAAUiNT58Lc3d01b948NW3aVDNnztTMmTPt+1xcXDR79mx5eXnFeEyWLFkUERERo3NNUFBQrMfbeHh4aMGCBcqUKVPSvRAAAAAATsHUGSQpehZpz549at68uXLkyKHs2bOrYcOG2rZt22ObKqRLl07p0qWLse3DDz/U/Pnz1bBhQ+XPn1+ZMmVS8eLF1aNHDx06dChezRkAAAAApF0p4mqqqlWrau3atXE69u7du7G2ZciQQd27d1f37t0dXBkAAACAtMT0GSQAAAAASCkISAAAAABgRUACAAAAACsCEgAAAABYEZAAAAAAwIqABAAAAABWBCQAAAAAsCIgAQAAAIAVAQkAAAAArAhIAAAAAGBFQAIAAAAAKwISAAAAAFgRkAAAAADAioAEAAAAAFYEJAAAAACwIiABAAAAgBUBCQAAAACsCEgAAAAAYEVAAgAAAAArAhIAAAAAWBGQAAAAAMCKgAQAAAAAVgQkAAAAALAiIAEAAACAFQEJAAAAAKwISAAAAABgRUACAAAAACsCEgAAAABYEZAAAAAAwIqABAAAAABWBCQAAAAAsCIgAQAAAIAVAQkAAAAArAhIAAAAAGBFQAIAAAAAKwISAAAAAFgRkAAAAADAioAEAAAAAFYEJAAAAACwIiABAAAAgBUBCQAAAACsCEgAAAAAYEVAAgAAAAArAhIAAAAAWBGQAAAAAMCKgAQAAAAAVgQkAAAAALAiIAEAAACAFQEJAAAAAKwISAAAAABgRUACAAAAACsCEgAAAABYEZAAAAAAwIqABAAAAABWBCQAAAAAsCIgAQAAAIAVAQkAAAAArAhIAAAAAGBFQAIAAAAAKwISAAAAAFgRkAAAAADAys3sAiQpKChIixYt0oEDBxQVFaVKlSrJ19dX3t7epowDAAAAIG0yPSBdunRJdevW1fnz5+3bFi9erClTpmjHjh0qWrRoso4DAAAAIO0yfYld165ddf78eb344ouaN2+eAgIC5OPjo8uXL6tDhw4yDCNZxwEAAACQdpk6g3T48GFt3bpVBQoU0O7du5UpUyZJUqdOnVSpUiUdPHhQO3bsUL169ZJlHAAAAABpm6kzSBs2bJAkvfPOO/ZQI0keHh7q27evJGndunXJNg4AAACAtM3UgHTixAlJUvXq1WPtq1GjhiTpjz/+SLZxAAAAAKRtpi6xu3nzpiQpT548sfblzZs3xjHJMc6jBgwYEK/j4yMkJETLli1LsvGRvDifzoNz6TyuXbsmwzA0ZMgQs0uBg/D+dB737t1TYGCgoqKizC4FDhAVFSUXF8fPubi4uGj58uUOHzcuTA1I4eHhkiR3d/dY+2zbQkNDk22cR4WEhMTr+PhK6vGRvDifzoNz6RxsjXk4n86F8+kcHjx4oKCgILPLAJ7I1IDk5eUlSQoMDIy1z7YtY8aMyTbOo6ZPnx6v4+MqMjJShw8fVoUKFeTq6pokz4Hkw/l0HpxL5zJkyBCFhIRo2rRpnE8nwPvTeURGRurbb7/VTz/9REhyAoZhKDAwUBkzZpTFYnHo2PH97u5Ipgak/PnzS5LOnz+vSpUqxdh37tw5SdLzzz+fbOM8ys0taf9oXF1dk/w5kHw4n86Dc+lcOJ/OhfPpHEqUKKFOnTpxLp1ARESEDh48qMqVKzvV+TS1SUOVKlUkSevXr4+1z9Z1znZMcowDAAAAIG0zNSC1aNFC6dKl0+LFi7Vjxw779t9//12zZs2Sq6ur2rZtm2zjAAAAAEjbTA1Izz33nIYNG6bw8HC98sorqlWrlurVq6dq1aopMDBQfn5+KlSoUIzHtG/fPlbYScg4AAAAAPBvpi8WHDNmjEJCQjR16lTt3btXUvQa4969e2vy5Mmxjv/xxx8VERGR6HEAAAAA4N9MD0gWi0UTJkzQ0KFDdfjwYUVFRal8+fLKmTPnY49fsWKFvX1rYsYBAAAAgH8zPSDZZMuWTfXr13/mcS1atHDIOAAAAADwb6ZegwQAAAAAKQkBCQAAAACsCEgAAAAAYEVAAgAAAAArAhIAAAAAWBGQAAAAAMCKgAQAAAAAVgQkAAAAALAiIAEAAACAFQEJAAAAAKwISAAAAABgRUACAAAAACsCEgAAAABYEZAAAAAAwMpiGIZhdhEAAAAAkBIwgwQAAAAAVgQkAAAAALAiIAEAAACAFQEJAAAAAKwISAAAAABgRUACAAAAACsCEgAAAABYEZAAAAAAwIqABAAAAABWbmYXkBacP39ea9as0c8//6zIyEjNmDFDuXPnjvPj7969qx49ejxx/5gxY1SuXDlHlIpniIyM1M8//6w1a9bo/PnzeuGFFzRp0qQEjXXkyBEtXbpUly5dUo4cOdSmTRvVqVPHwRXjaaKiovT9999r27ZtCgwMVMmSJdWlSxflz58/zmN8+OGHOnny5GP3NWrUSD179nRUuWnerVu39OWXX+ro0aNyd3eXj4+P3nzzTXl4eJgyDhInsZ+BGzZs0Pz58x+7z8vLS19++aWjSsUz3L9/Xxs3btSGDRt07949dezYUW3bto33OIZhaOXKldqyZYsCAwNVvHhxdenSRQUKFEiCqvEkfG+VZCDJBAcHG6VLlzYkxfh19uzZeI3zzz//xBrj0V+bN29OoleAR23atMnInj17jD/7F198MUFjTZs2zXBxcYl1LgcNGuTYovFEwcHBRoMGDWKdg0yZMhlbt26N8zg1a9Z84nuzV69eSfgK0pYjR44YOXPmjPVnXKFCBeP27dvJPg4SxxGfgdOnT3/iey9LlixJVzxiGDx4sOHu7h7jz////u//4j1OSEiI0bhx41jnMmPGjMamTZuSoHL8G99b/4cZpCQUERGhP/74Q4ULF1aLFi20bds2HTt2LMHj1a1bV3369Im1vXz58okpE3F0+fJl3blzRzVr1lTDhg310UcfJWic3377TQMGDJDFYlHv3r3l4+OjkydPaurUqZoyZYp8fHz02muvObZ4xDJ69Ght2bJFefLk0cCBA5UrVy6tXLlSq1ev1htvvKFz584pS5YscRorXbp0+vrrr2NtL1KkiKPLTpMiIiL0+uuv6/r166pdu7Z8fX318OFD+fv76/Dhw+rTp4+WLFmSbOMgcRz9GfjBBx+ocuXKMbYxG5h8Tp48qfTp06tVq1ZKly6dFi9enKBxPv74Y23cuFG5cuXSoEGDlDt3bq1evVorV65Uhw4ddP78eXl7ezu2eMTA99ZHmJ3QnFlERIRx4sQJ++9tPxlJaBLv0qWLgytEfFy+fNm4ceOGYRiG8eDBgwTPIHXo0MGQZPznP/+JsX358uWGJKNatWqOKBdP8fDhQyNDhgyGu7u7cerUqRj7XnvtNUOS8dlnn8VprJo1axpeXl5JUCVsvvvuO0OSUbVqVSM8PNy+/fr160b27NkNi8ViXLx4MdnGQeI46jPQNoO0Zs2apCgTcXTy5EkjLCzMMAzDCAgISNAMUkhIiJEpUybDzc0txvcmwzCM9u3bG5KMSZMmOaxmPB7fW/+HJg1JyNXVVaVLlza7DDhI3rx59dxzzyV6nI0bN8rDw0N9+/aNsb1du3YqWLCgDhw4oFu3biX6efBku3bt0sOHD/Xqq6+qRIkSMfYNHjxYkrRu3TozSsNjbNiwQZLUv39/ubn9b+FDjhw51KVLFxmGofXr1yfbOEgcPgOdS8mSJeXu7p6oMfbs2aMHDx6oadOmsb438ZmcfPje+j8EpFTk/Pnzev/99/Xmm29q8ODB2rhxowzDMLssxMOVK1d0584dlS1bVhkzZoy1v0aNGjIMQ3/88YcJ1aUdJ06ckBT95/1vL730ktzc3OzHxEVkZKTGjx+vN998U7169dL8+fP14MEDh9Wb1j3tfPn4+MQ4JjnGQcIlxWfg2rVr5evrqy5dumj8+PE6c+aMI0tGMnjae7Ny5cry9PTkvZkKpebvrVyDlIrs2bNHe/bssf9+ypQpqlu3rlavXh3nayVgrhs3bkiS8uTJ89j9efPmlSTdvHkz2WpKi552Htzc3JQzZ854nYOQkBCNGjXK/vu5c+dq1KhRWrlypf2LNxLuaecrPu8ZR42DhEuKz8A5c+bE+P3o0aP10Ucf6cMPP0xglUhuT/t74eLioly5cuny5cvJXRYSKTV/byUgPcWNGzf03nvvxfn4UqVK6f/+7/+SpJZs2bLpjTfeUIUKFSRFt0f96quvtGPHDnXv3l3fffddkjyvM1mzZk282r76+vqqefPmDq0hLCxM0pMvILZtDw0NdejzOqNhw4bp/PnzcT5+/vz59gt843IewsLCZBiGLBbLU8d1dXVVq1atVKtWLeXMmVN//fWXvvrqK507d04tWrTQ2bNnlS1btjjXidiedr7i855x1DhIOEd/BpYtW1atW7dWsWLFdOfOHW3atEnr16/X6NGjVaxYMXXo0MExhSNJxeXvRWRkpCIiImIsj0XKldq/t/K37CmCgoL0/fffx/n4mjVrJkkdWbNmfWz3Fj8/P1WvXl0rV67U1atX49WjPi06ffp0vM5nrVq1HF6Dl5eXJCkwMPCx+23bbcfhybZu3aqDBw/G+fgZM2bY/z8u5yFDhgzPDEeStHz5cuXKlSvGtmHDhqlRo0bauXOnli5d+tguPoi7R89X5syZY+yLz3vGUeMg4Rz5Gdi+fXv16dMnxvu0f//+8vf3V//+/TVz5kwCUioRl78XHh4ehKNUwhm+t/I37Sly5sypFStWxPl4R1zA/zienp7y9PSMtb1UqVJq0KCBVq5cqdOnT6fov2gpQcuWLVWoUKE4H2/7qYcj2W5A+qSZD9v2559/3uHP7WwmTpyo27dvx/n4rFmz2v//aefh3r17unnzZqzmDU/y73AkRf+0s1evXtq5c6dOnToV5xrxePnz59fJkyd1/vx5VaxYMca++LxnHDUOEs6Rn4E5c+Z87PZevXppyJAhvPdSkaf9vQgMDNS1a9dUuHDh5C4LCeQM31sJSE+RIUMGvf7662aX8VS2Tj+P+4uImIoXL67ixYubWkPmzJlVrFgxnT17VufOnVPRokXt+wIDA7V7925lyJBBpUqVMrHK1KF+/foJfmyVKlUkRXfTGj9+fIx9ti5mtmMSivem41SpUkWbN2/Wxo0bYwUbW2eruJwvR42DhEuOz8D79+8rLCyM914q8uhn8qeffhpj34YNG2QYBu9NJ5Fa/m2ki10qsGTJEp08eTLGtoiICE2ZMkU7d+6Ul5eXXnzxRZOqQ3zZQne/fv3s6+wNw9DgwYMVGBioVq1apfgPjtSuUqVKKly4sA4ePKi5c+fat1+/ft1+YXf79u2fOc5vv/2mNWvWKCoqKsb2X375RR9//LGkpFt6m5bY3jOTJ0+O0aFsw4YNWrVqlby9vdWoUaNkGweJ46jPwMmTJ+vu3bsxtt24cUNdunSRxHsvNSlfvryKFy+uI0eOaNasWfbtN27csDfAictnMlIGp/jeatYNmNKK4cOHG23btjXatm1r5MqVy5BkNGnSxL7twoUL9mNv3bpltG3b1ujXr1+MMdq2bWtIMooUKWI0bNjQeOWVV4zcuXMbkgxJxuTJk5P5VaVNtvPTtm1bo3Xr1oYkI0uWLPZtfn5+MY5fu3at0bZtW2Pp0qUxtt+8edN+/vLly2e8+uqrRrFixQxJhpeXl3H69OnkfFlplu2moZKMypUrG82aNTOyZMliSDJq165tREVFxTje9l5+9EaiS5cuNSQZOXLkMHx8fIxmzZoZpUuXto/r4+NjREZGJvdLc0q2m4umS5fOaNSokVGrVi3DxcXFkGRMmzYtxrFP+iyN7zhIGvH9DHzSZ6ntPJYvX95o3ry5UaNGDSNdunT2cY4fP56cLyvNsp2ftm3bGlWqVDEkGWXKlLFvW7x4cYzjR40aFev7j2EYxqpVq+yfnZUqVYrxmezj4xPrMxlJg++t0QhISaxatWr2vxCP+/X777/bj/37778NSUaJEiVijLF69WqjUqVKsR6bO3duY9asWcn8itIu2/l50q8iRYrEOP6zzz4zJBkjR46MNdaRI0eMMmXKxHh8/vz5jW3btiXXy4FhGLNnzzYyZswY4zw0btzYuHHjRqxjbe/lY8eO2bedO3fOeP311w13d/cYY3h4eBjdu3c37t69m5wvx6kFBQUZnTp1MiwWS4w/548++ijWsU/6LI3vOEg68fkMfNJn6bBhw4ycOXPG+iyuVq2a8euvvybXS0nzbOfnSb+GDRsW4/iaNWvG+v5jM2/ePCNTpkwxHt+wYUPj2rVryfRqwPfWaBbDSCV3bEqltm/f/tQ7gjds2NDeCz44OFg//fSTMmfO/NhlHhcvXtTZs2cVHBys559/XmXLlpWrq2uS1Y6YbOfnSTJmzKgmTZrYf3/u3DkdPnxYpUqVUpkyZWIdbxiGDh8+rEuXLum5555T1apVOZ8mCAoK0oEDBxQUFKQSJUqoWLFijz3O9l5u1KhRrA5od+/e1alTp3Tt2jVly5ZNFSpUUKZMmZKj/DTn77//1vHjx+Xm5qYqVarEaL5h86zP0riOg6QV18/Ap32WhoeH68yZM/rvf/8rd3d3lSpVikYbycx2fp6kZMmSKlu2rP33O3bs0M2bN2N8/3nUw4cPdeDAAQUGBj71MxlJg++t0QhIAAAAAGBFkwYAAAAAsCIgAQAAAIAVAQkAAAAArAhIAAAAAGBFQAIAAAAAKwISAAAAAFgRkAAAAADAioAEAAAAAFYEJAAAAACwIiABAAAAgBUBCQAAAACsCEgAAAAAYEVAAgAAAAArAhIAAAAAWBGQAAAAAMCKgAQAAAAAVgQkAAAAALAiIAEAAACAFQEJAAAAAKwISAAAAABgRUACAAAAACsCEgAAAABYEZAAAAAAwIqABAAAAABWBCQAAAAAsCIgAQAAAIAVAQkAAAAArAhIAAAAAGBFQAIAAAAAKwISAAAAAFgRkAAAAADAioAEAAAAAFYEJAAAAACw+n8f1Vp4XLOIdQAAAABJRU5ErkJggg==){width=100%}

**$x \cdot [1/x]$**: mivel $[1/x] = \frac1x - \{1/x\}$, ezért $x[1/x] = 1 - x\{1/x\}$. Ha $\frac{1}{k+1} < x \le \frac1k$, akkor $x[1/x] = kx$: egy $\frac{k}{k+1}$-től $1$-ig emelkedő szakasz. $x > 1$-re az érték $0$, $x \le -1$-re $-x$ (pontosan $x = -1$-ben $1$). Mivel $0 \le \{1/x\} < 1$, a grafikon $x > 0$-ra az $y = 1 - x$ és $y = 1$, $x < 0$-ra az $y = 1$ és $y = 1 - x$ egyenesek között halad, így $\lim_{x \to 0} x[1/x] = 1$ (ld. 83. f).

::: elmelet
**Elméleti háttér — egészrész, törtrész és a szakaszonkénti vizsgálat.**

*Definíciók.* $[x]$ (egészrész) a legnagyobb $x$-nél nem nagyobb egész: $[x] \le x < [x] + 1$. $\{x\} = x - [x] \in [0, 1)$ a törtrész. Tulajdonságok: $[x + n] = [x] + n$ és $\{x + n\} = \{x\}$ minden egész $n$-re ($\{x\}$ $1$ szerint periodikus); $[-x] = -[x] - 1$, ha $x \notin \mathbb{Z}$. Negatív számoknál figyelem: $[-2{,}3] = -3$, $\{-2{,}3\} = 0{,}7$.

*Összetett függvények vizsgálata.* Az $f(g(x))$ alakú függvényeknél, ahol $f$ szakaszonként adott (itt $[\cdot]$ vagy $\{\cdot\}$), azokat az $x$-intervallumokat keressük, amelyeken $g(x)$ egyetlen szakaszban marad. Itt $g(x) = \frac1x$, és $k \le \frac1x < k + 1 \iff \frac{1}{k+1} < x \le \frac1k$ ($x > 0$). Ezeken az intervallumokon a függvény képlete egyszerű ($\frac1x - k$, illetve $kx$), és a grafikon „darabokból” rakható össze. Ahogy $x \to 0^+$, a darabok egyre rövidebbek ($\frac1k - \frac{1}{k+1} = \frac{1}{k(k+1)}$).

*Határérték rendőrelvvel.* $x \cdot [1/x] = 1 - x\{1/x\}$, és $0 \le x\{1/x\} < |x|$ (pozitív $x$-re), így $|x[1/x] - 1| < |x| \to 0$. A függvény a $0$-ban nincs értelmezve, mégis van határértéke ($1$): a határérték nem függ a pontbeli értéktől.

*Határérték hiánya.* $\{1/x\}$-nek a $0$-ban nincs határértéke: az átviteli elv szerint elég két, $0$-hoz tartó sorozat, amelyeken a függvényértékek különböző határértékhez tartanak. Például $x_n = \frac1n$-re $\{1/x_n\} = 0$, $x_n = \frac{2}{2n + 1}$-re $\{1/x_n\} = \frac12$. Sőt minden $c \in [0, 1)$ elérhető így: a függvény a $0$ körül „minden értéket végtelen sokszor felvesz”.
:::

## 70. feladat

Létezik-e $[0, 1]$-en korlátos függvény, aminek nincs legnagyobb értéke?

**Megoldás.**

**Igen.** Például
$$f(x) = \begin{cases} x, & 0 \le x < 1, \\ 0, & x = 1. \end{cases}$$
$f$ korlátos ($0 \le f < 1$), értékkészlete $[0, 1)$, amelynek szuprémuma $1$, de ezt $f$ sehol sem veszi fel – nincs legnagyobb értéke. (Folytonos függvénnyel ez Weierstrass tétele miatt lehetetlen volna.)

::: elmelet
**Elméleti háttér — korlátosság, szuprémum és a Weierstrass-tétel.**

*Függvény korlátossága.* $f : D \to \mathbb{R}$ felülről korlátos, ha az $R(f) = f(D)$ értékkészlet az. Ekkor a teljességi axióma szerint létezik $\sup f = \sup R(f)$, de $f$ nem feltétlenül veszi fel (nincs **abszolút maximuma**). Az abszolút maximumhely olyan $x_0$, amelyre $f(x) \le f(x_0)$ minden $x \in D$-re.

*Weierstrass tétele.* Ha $f$ **folytonos** egy **korlátos és zárt** $[a, b]$ intervallumon, akkor korlátos, és felveszi a maximumát és a minimumát. *Bizonyítás vázlata:* legyen $M = \sup f$ (először azt is meg kell mutatni, hogy véges), és $x_n \in [a, b]$ olyan, hogy $f(x_n) \to M$. A Bolzano–Weierstrass-tétel szerint van konvergens részsorozat, $x_{n_k} \to x_0 \in [a, b]$ (a zártság miatt a határ is az intervallumban van). A folytonosság miatt $f(x_{n_k}) \to f(x_0)$, így $f(x_0) = M$.

*A feltételek szükségessége.* Mindhárom feltétel kell:

- **folytonosság** nélkül: a feladat példája ($x \mapsto x$ az $[0, 1)$-en, $f(1) = 0$);
- **zártság** nélkül: $f(x) = x$ a $(0, 1)$-en — nincs maximuma, sem minimuma;
- **korlátosság** nélkül: $f(x) = x$ a $[0, \infty)$-en — felülről sem korlátos.

Sőt folytonosság nélkül a korlátosság is elveszhet: $f(x) = \frac1x$, $f(0) = 0$ a $[0, 1]$-en nem korlátos.

*Lokális szélsőérték.* $x_0$ **lokális maximumhely**, ha van környezete, amelyben $f(x) \le f(x_0)$. Abszolút maximumhely mindig lokális is, fordítva nem. Differenciálható függvény belső lokális szélsőértékhelyén a derivált $0$ (Fermat) — ez a szélsőérték-keresés fő eszköze lesz.
:::

## 71. feladat

Keressük meg $f(x) = \dfrac{2x - 3}{3x - 2}$ inverzét az $\mathbb{R} \setminus \{\frac{2}{3}\}$ halmazon.

**Megoldás.**

Legyen $y = \frac{2x - 3}{3x - 2}$. Ekkor $y(3x - 2) = 2x - 3$, azaz $x(3y - 2) = 2y - 3$, így $y \neq \frac23$ esetén
$$x = \frac{2y - 3}{3y - 2}.$$
Az $y = \frac23$ értéket $f$ nem veszi fel (különben $3(2x - 3) = 2(3x - 2)$, azaz $-9 = -4$ volna). Tehát $f : \mathbb{R} \setminus \{\frac23\} \to \mathbb{R} \setminus \{\frac23\}$ bijekció, és
$$f^{-1}(x) = \frac{2x - 3}{3x - 2} = f(x),$$
vagyis **$f$ önmaga inverze** ($f \circ f = \mathrm{id}$).

::: elmelet
**Elméleti háttér — injektivitás, inverz függvény, törtlineáris függvények.**

*Inverz.* Ha $f : A \to B$ bijekció, az $f^{-1} : B \to A$ inverz az az egyetlen függvény, amelyre $f^{-1}(f(x)) = x$ ($x \in A$) és $f(f^{-1}(y)) = y$ ($y \in B$). Injektív $f$ esetén $f : A \to f(A)$ bijekció, így az értékkészleten mindig invertálható. A grafikon: $f^{-1}$ grafikonja $f$ grafikonjának tükörképe az $y = x$ egyenesre.

*Kiszámítás.* Az $y = f(x)$ egyenletet $x$-re oldjuk meg; ha minden $y \in B$-re pontosan egy megoldás van, az adja $f^{-1}(y)$-t. A megoldhatóság vizsgálata egyúttal az **értékkészletet** is megadja (itt $y = \frac23$-ra nincs megoldás).

*Törtlineáris (Möbius-) függvények.* $f(x) = \frac{ax + b}{cx + d}$, $ad - bc \ne 0$, $c \ne 0$. Az értelmezési tartomány $\mathbb{R} \setminus \{-\frac dc\}$, az értékkészlet $\mathbb{R} \setminus \{\frac ac\}$ (a vízszintes aszimptota), és az inverz
$$f^{-1}(y) = \frac{dy - b}{-cy + a},$$
ami ismét törtlineáris. A mátrixos szemlélet: $f \leftrightarrow \begin{pmatrix} a & b \\ c & d\end{pmatrix}$, a kompozíciónak a mátrixok szorzata, az inverznek az inverz mátrix (konstans szorzó erejéig) felel meg. **Involúció** ($f^{-1} = f$) pontosan akkor, ha $a = -d$ (vagy $f$ az identitás).

*A feladatban.* $a = 2$, $b = -3$, $c = 3$, $d = -2$: $ad - bc = -4 + 9 = 5 \ne 0$, és $a = -d$, ezért $f \circ f = \mathrm{id}$. Ellenőrzés: $f(f(x)) = \frac{2\frac{2x-3}{3x-2} - 3}{3\frac{2x-3}{3x-2} - 2} = \frac{4x - 6 - 9x + 6}{6x - 9 - 6x + 4} = \frac{-5x}{-5} = x$.

*A grafikon szimmetriája.* Involúció grafikonja szimmetrikus az $y = x$ egyenesre (önmaga tükörképe).
:::

## 72. feladat

Létezik-e olyan monoton függvény, melyre

a) $D(f) = [0, 1]$, $R(f) = (0, 1)$;

b) $D(f) = [0, 1]$, $R(f) = [0, 1] \cup [2, 3]$;

c) $D(f) = [0, 1]$, $R(f) = [0, 1) \cup [2, 3]$;

d) $D(f) = [0, 1]$, $R(f) = [0, 1) \cup (2, 3]$.

**Megoldás.**

Monoton (nem feltétlenül szigorúan) függvényről van szó. Kulcsészrevétel: ha $f$ monoton nő $[0, 1]$-en, akkor $f(0) = \min R(f)$ és $f(1) = \max R(f)$ (csökkenőre fordítva) – tehát **$R(f)$-nek van minimuma és maximuma**. Továbbá $R(f)$ bármely „szeletének" ősképe egy intervallum.

a) **Nem létezik:** $(0, 1)$-nek nincs minimuma.

b) **Létezik:**
$$f(x) = \begin{cases} 2x, & 0 \le x \le \frac12, \\ 2, & \frac12 < x \le \frac34, \\ 4x - 1, & \frac34 < x \le 1, \end{cases}$$
monoton növő, és $R(f) = [0, 1] \cup [2, 3]$. (*Szigorúan* monoton függvénnyel nem lehet: a $[0,1]$ és $[2,3]$ ősképei olyan intervallumok, amelyek $[0,1]$-et két részre bontják, és a nyílt végű rész képe szigorú monotonitás mellett nem tartalmazhatná a megfelelő végpontot.)

c) **Létezik, akár szigorúan monoton is:**
$$f(x) = \begin{cases} 2x, & 0 \le x < \frac12, \\ 2x + 1, & \frac12 \le x \le 1, \end{cases} \qquad R(f) = [0, 1) \cup [2, 3].$$

d) **Nem létezik.** Ha $f$ növő, a $[0, 1)$ ősképe $0$-t tartalmazó intervallum, $(2, 3]$ ősképe $1$-et tartalmazó intervallum. Ha az első $[0, a]$ alakú, akkor $f(a) = \max f([0, a]) = \max [0, 1)$ – nincs ilyen. Ha az első $[0, a)$, akkor a második $[a, 1]$, és $f(a) = \min (2, 3]$ – nincs ilyen. Csökkenő $f$-re ugyanígy (a szerepek felcserélődnek).

::: elmelet
**Elméleti háttér — monoton függvények értékkészlete és ugrásai.**

*Szélsőértékek.* Ha $f$ monoton nő $[a, b]$-n, akkor $f(a) \le f(x) \le f(b)$ minden $x$-re, így $R(f)$-nek van minimuma ($f(a)$) és maximuma ($f(b)$). Ezért a nyílt $(0, 1)$ értékkészlet lehetetlen.

*Féloldali határértékek.* Monoton függvénynek minden pontban léteznek a féloldali határértékei: növő $f$-re $f(x_0 - 0) = \sup_{x < x_0} f(x)$ és $f(x_0 + 0) = \inf_{x > x_0} f(x)$, és $f(x_0 - 0) \le f(x_0) \le f(x_0 + 0)$. Monoton függvény szakadásai tehát csak **ugrások** lehetnek. Az ugrás az értékkészletben egy „hézagot” hagy: a $(f(x_0 - 0), f(x_0 + 0))$ intervallumból legfeljebb az $f(x_0)$ érték vehető fel.

*Az értékkészlet szerkezete.* Növő $f$ esetén minden $y \in R(f)$ ősképe egy intervallum (esetleg egy pont), és az ősképek „sorban” következnek. Ezért ha $R(f) = A \cup B$, ahol $A$ minden eleme kisebb $B$ minden eleménél, akkor $f^{-1}(A)$ egy kezdőszelet, $f^{-1}(B)$ a maradék; a kettő határpontja vagy az egyikhez tartozik, és ott $f$ értéke $A$ maximuma vagy $B$ minimuma. Ha egyik sem létezik (mint a d) részben), ellentmondásra jutunk.

*Megszámlálhatóság.* Monoton függvénynek legfeljebb megszámlálhatóan sok szakadási pontja van: minden ugráshoz rendeljünk egy racionális számot a $(f(x_0 - 0), f(x_0 + 0))$ hézagból; a hézagok diszjunktak, így a hozzárendelés injektív.

*Szigorú monotonitás.* Szigorúan monoton függvény injektív, így minden értéket legfeljebb egyszer vesz fel — konstans szakasza nincs. Ezért a b) részben (ahol egy értéket, a $2$-t „ki kell tölteni” egy egész szakaszon a hézag áthidalásához, vagy egy határpontban két értéket kellene felvenni) csak nem szigorúan monoton függvény jó. Szigorúan monoton és **folytonos** függvény értékkészlete egy intervallum (Bolzano-tétel), és ilyenkor az inverz is folytonos.
:::

## 73. feladat

Legyen $f$ és $g$ értelmezve $\mathbb{R}$-en, és legyen

a) $f$ páros, $g$ páratlan;

b) $f$ páros, $g$ páros;

c) $f$ páratlan, $g$ páratlan.

Mit tudunk mondani az a), b), illetve c) esetekben az $f + g$, $f - g$, $f \cdot g$, illetve $f \circ g$ függvények páros, illetve páratlan voltáról?

**Megoldás.**

$f$ páros: $f(-x) = f(x)$; $g$ páratlan: $g(-x) = -g(x)$.

**a) $f$ páros, $g$ páratlan.**

- $f \pm g$: általában **se nem páros, se nem páratlan** (pl. $f = 1$, $g = x$: $1 + x$). Pontosabban: $f + g$ páros $\iff g \equiv 0$, és páratlan $\iff f \equiv 0$ (ha pl. $f + g$ páros, akkor $g = (f + g) - f$ páros és páratlan is, tehát $0$).
- $f \cdot g$ **páratlan**: $f(-x)g(-x) = -f(x)g(x)$.
- $f \circ g$ **páros**: $f(g(-x)) = f(-g(x)) = f(g(x))$. (Ugyanígy $g \circ f$ is páros.)

**b) $f$, $g$ páros:** $f \pm g$, $f \cdot g$ és $f \circ g$ is **páros**; $f(g(-x)) = f(g(x))$.

**c) $f$, $g$ páratlan:** $f \pm g$ **páratlan**, $f \cdot g$ **páros** ($(-f)(-g) = fg$), $f \circ g$ **páratlan**: $f(g(-x)) = f(-g(x)) = -f(g(x))$.

::: elmelet
**Elméleti háttér — paritás, és a műveletek „előjelszabályai”.**

*Definíciók.* Legyen $D(f)$ szimmetrikus a $0$-ra. $f$ **páros**, ha $f(-x) = f(x)$ (a grafikon szimmetrikus az $y$ tengelyre), **páratlan**, ha $f(-x) = -f(x)$ (a grafikon középpontosan szimmetrikus az origóra; ha $0 \in D(f)$, akkor $f(0) = 0$). Példák: $x^{2k}$, $|x|$, $\cos x$ párosak; $x^{2k+1}$, $\sin x$, $\operatorname{sgn} x$ páratlanok; az $[x]$ egészrész se nem páros, se nem páratlan.

*Szorzat: előjelszabály.* Ha a páros függvényt $+1$-gyel, a páratlant $-1$-gyel jelöljük, a szorzat paritása a jelek szorzata: páros $\cdot$ páros = páros, páros $\cdot$ páratlan = páratlan, páratlan $\cdot$ páratlan = páros (mint $x \cdot x = x^2$). Ugyanez a hányadosra.

*Kompozíció.* $f \circ g$-ben a belső függvény paritása dönt először: ha $g$ páros, $f \circ g$ mindig páros ($f(g(-x)) = f(g(x))$, $f$-től függetlenül!); ha $g$ páratlan, $f \circ g$ paritása $f$-é. Páratlan $\circ$ páratlan = páratlan (mint $\sin(x^3)$), páros $\circ$ páratlan = páros (mint $\cos(x^3)$).

*Összeg.* Azonos paritású függvények összege megtartja a paritást (a páros és a páratlan függvények is egy-egy **alteret** alkotnak); vegyes paritásnál az összeg csak akkor páros vagy páratlan, ha az egyik tag azonosan nulla (74. b).

*Mire jó a paritás?* Integráloknál: páratlan függvény integrálja szimmetrikus intervallumon $0$, párosé a fél intervallum kétszerese. Hatványsoroknál: páros függvény Taylor-sorában csak páros kitevők szerepelnek. Grafikonrajzolásnál: elég a $[0, \infty)$ részt megrajzolni.
:::

## 74. feladat

a) Konstruáljunk olyan $f : \mathbb{R} \to \mathbb{R}$ függvényt, mely se nem páros, se nem páratlan.

b) Adjuk meg az összes olyan $f : \mathbb{R} \to \mathbb{R}$ függvényt, mely egyszerre páros és páratlan.

c) Mutassuk meg, hogy minden $f : \mathbb{R} \to \mathbb{R}$ függvény előáll mint egy páros és egy páratlan függvény összege.

**Megoldás.**

a) $f(x) = x + 1$: $f(1) = 2$, $f(-1) = 0$, így se $f(-1) = f(1)$, se $f(-1) = -f(1)$ nem teljesül.

b) Ha $f$ páros és páratlan, akkor $f(x) = f(-x) = -f(x)$, tehát $f(x) = 0$ minden $x$-re. **Csak az azonosan nulla függvény.**

c) Legyen
$$p(x) = \frac{f(x) + f(-x)}{2}, \qquad q(x) = \frac{f(x) - f(-x)}{2}.$$
Ekkor $p(-x) = p(x)$, $q(-x) = -q(x)$, és $p + q = f$. (A felbontás egyértelmű: ha $f = p + q = p' + q'$, akkor $p - p' = q' - q$ páros és páratlan, tehát a b) szerint $0$.)

::: elmelet
**Elméleti háttér — a páros–páratlan felbontás és a direkt összeg.**

*Egyértelmű felbontás.* Minden $f : \mathbb{R} \to \mathbb{R}$ függvény egyértelműen
$$f = f_{\text{ps}} + f_{\text{ptl}}, \qquad f_{\text{ps}}(x) = \frac{f(x) + f(-x)}{2}, \quad f_{\text{ptl}}(x) = \frac{f(x) - f(-x)}{2}.$$
*Hogyan lehet erre rájönni?* Ha $f = p + q$ ($p$ páros, $q$ páratlan), akkor $f(-x) = p(x) - q(x)$; a két egyenletet összeadva és kivonva $p$ és $q$ kifejezhető. Ez az „analízis-szintézis” módszer: feltesszük, hogy van megoldás, kiszámoljuk, minek kell lennie, majd ellenőrizzük, hogy az tényleg megoldás.

*Példák.* $e^x = \cosh x + \sinh x$, ahol $\cosh x = \frac{e^x + e^{-x}}{2}$ (páros) és $\sinh x = \frac{e^x - e^{-x}}{2}$ (páratlan); polinomnál a páros és a páratlan fokú tagok összege; $\frac{1}{1 - x} = \frac{1}{1 - x^2} + \frac{x}{1 - x^2}$.

*Lineáris algebrai szemlélet.* A valós függvények $V$ vektorterében a páros függvények $V_+$ és a páratlanok $V_-$ altere; $V_+ \cap V_- = \{0\}$ (b) rész) és $V_+ + V_- = V$ (c) rész), így $V = V_+ \oplus V_-$ **direkt összeg**. A felbontás a $T f(x) = f(-x)$ lineáris leképezés **sajátaltereire** bontás: $T^2 = I$, a sajátértékek $\pm 1$, és $\frac{I + T}{2}$, $\frac{I - T}{2}$ a két sajátaltérre vetítő projekciók.

*Általánosítás.* Ugyanígy minden mátrix egyértelműen felbomlik szimmetrikus és ferdén szimmetrikus részre: $A = \frac{A + A^T}{2} + \frac{A - A^T}{2}$ (itt $T$ a transzponálás).
:::

## 75*. feladat

a) Létezik-e olyan $f : \mathbb{R} \to \mathbb{R}$ függvény, ami minden $(a, b)$, $a < b$ intervallumon minden egész értéket fölvesz?

b) Létezik-e olyan $f : \mathbb{R} \to \mathbb{R}$ függvény, ami minden $(a, b)$, $a < b$ intervallumon minden racionális értéket fölvesz?

c) Létezik-e olyan $f : \mathbb{R} \to \mathbb{R}$ függvény, ami minden $(a, b)$, $a < b$ intervallumon minden valós értéket fölvesz?

**Megoldás.**

Felhasználjuk: minden $(a, b)$ intervallumban minden elég nagy $q$ prímre van $\frac{p}{q}$ alakú, *pontosan* $q$ nevezőjű tört. Ugyanis ha $q > \frac{2}{b - a}$, akkor van két szomszédos $\frac{k}{q}, \frac{k+1}{q} \in (a, b)$, és $k$, $k + 1$ közül legfeljebb az egyik osztható $q$-val.

a) **Igen.** Legyen $(z_j)$ egész számok olyan sorozata, amelyben minden egész végtelen sokszor szerepel (pl. a 43. feladat mintájára), és $\pi_j$ a $j$-edik prím. Legyen
$$f\left(\frac{p}{\pi_j}\right) = z_j, \text{ ha } \tfrac{p}{\pi_j} \text{ ilyen nevezőjű egyszerűsíthetetlen tört}, \qquad f(x) = 0 \text{ egyébként}.$$
Adott $(a, b)$ és $m \in \mathbb{Z}$ esetén van tetszőlegesen nagy $j$, amelyre $z_j = m$, és elég nagy $j$-re van $\pi_j$ nevezőjű tört $(a, b)$-ben; ott $f = m$.

b) **Igen**, ugyanígy, csak $(z_j)$ helyett olyan $(r_j)$ racionális sorozattal, amelyben minden racionális szám végtelen sokszor szerepel ($\mathbb{Q} \times \mathbb{N}$ megszámlálható, ezt soroljuk fel, és az első koordinátát vesszük).

c) **Igen.** Tekintsük az $x \sim y \iff x - y \in \mathbb{Q}$ ekvivalenciarelációt. Minden osztály $x + \mathbb{Q}$ alakú, tehát sűrű: minden $(a, b)$ intervallum minden osztályt metsz. Az osztályok száma kontinuum (minden osztály megszámlálható, és $\mathbb{R}$ ezek uniója), így van egy $\Phi$ bijekció az osztályok halmazáról $\mathbb{R}$-re (ehhez a kiválasztási axiómát használjuk). Legyen $f(x) = \Phi(x + \mathbb{Q})$. Bármely $(a, b)$ és $c \in \mathbb{R}$ esetén a $\Phi^{-1}(c)$ osztálynak van pontja $(a, b)$-ben, ott $f = c$.

(Kiválasztási axióma nélkül is konstruálható ilyen függvény, pl. Conway 13-as számrendszerre épülő függvénye.)

::: elmelet
**Elméleti háttér — patologikus függvények: sűrűség és számosság.**

*Mit jelent a feltétel?* „$f$ minden $(a, b)$ intervallumon felvesz minden egész (racionális, valós) értéket” — vagyis minden $c$ értékre az $f^{-1}(c)$ szinthalmaz **sűrű**. A szinthalmazok páronként diszjunktak, tehát egy ilyen $f$-hez sok diszjunkt, sűrű halmaz kell: a)-ban megszámlálhatóan sok, c)-ben kontinuum sok.

*A konstrukciós eszközök.*

- **Megszámlálható sok diszjunkt sűrű halmaz:** a „pontosan $q$ nevezőjű” törtek halmazai ($q$ prím) diszjunktak, és bármely intervallumba belenyúlnak, ha $q$ elég nagy. Egy olyan sorozattal, amely minden értéket végtelen sokszor felvesz, minden értékhez végtelen sok ilyen halmaz jut — így minden intervallumban felbukkan. (Ugyanezt a 42. feladat $\mathbb Q + k\sqrt2$ halmazai is megtennék.)
- **Kontinuum sok diszjunkt sűrű halmaz:** a $\mathbb{Q}$ szerinti mellékosztályok $x + \mathbb{Q}$. Minden osztály megszámlálható, és $\mathbb{R}$ az uniójuk, ezért az osztályok száma kontinuum (megszámlálható sok osztály uniója megszámlálható volna). Egy bijekció az osztályok és $\mathbb{R}$ között a **kiválasztási axiómát** igényli.

*Darboux-tulajdonság.* Egy függvény **Darboux-tulajdonságú** (közbülsőérték-tulajdonságú), ha minden intervallumon minden két felvett érték közötti értéket is felvesz. A c) rész függvénye ilyen, mégis **sehol sem folytonos** — vagyis a közbülsőérték-tulajdonság nem jellemzi a folytonosságot. (A derivált függvények viszont mindig Darboux-tulajdonságúak, Darboux tétele szerint.)

*Conway függvénye.* A kiválasztási axióma nélkül is adható konkrét c)-beli függvény: J. H. Conway „13-as alapú” függvénye a szám 13-as számrendszerbeli alakjának végéből olvas ki egy tetszőleges valós számot, és minden intervallumban minden ilyen „vég” előfordul. Ez mutatja, hogy a patológia nem a kiválasztási axióma terméke, csak a konstrukció egyszerűsödik vele.

*Tanulság.* Az analízis „furcsa” függvényei (Dirichlet-függvény, Riemann-függvény, Conway-függvény) a fogalmak határait jelölik ki: megmutatják, mely tulajdonságok függetlenek egymástól, és miért kell a tételekben a feltételeket pontosan kimondani.
:::

## Röpzhra

**Definíciók:** sorok, harmonikus sor, valós függvények megszorítása, grafikonja, racionális törtfüggvények, $\operatorname{sgn} x$, $[x]$, $\{x\}$, páros/páratlan, periodikus, korlátos, (szigorúan) monoton növő/csökkenő függvény, abszolút és lokális max./min.

**Tételek:** Cauchy-kritérium sorokra.

# Analízis 1 – 8. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 76. feladat

Van-e olyan nem konstans függvény, ami minden racionális szám szerint periodikus? Hát minden irracionális szám szerint?

**Megoldás.**

**Racionális periódusok: van.** A Dirichlet-függvény
$$D(x) = \begin{cases} 1, & x \in \mathbb{Q}, \\ 0, & x \notin \mathbb{Q} \end{cases}$$
nem konstans, és minden $q \in \mathbb{Q}$ periódusa: $x + q \in \mathbb{Q} \iff x \in \mathbb{Q}$, így $D(x + q) = D(x)$.

**Minden irracionális szám szerint periodikus: csak a konstans függvény.** Legyen $x, y \in \mathbb{R}$ tetszőleges, $d = y - x$. Ha $d$ irracionális, akkor $f(y) = f(x + d) = f(x)$. Ha $d$ racionális, írjuk $d = \sqrt2 + (d - \sqrt2)$ alakba, ahol mindkét tag irracionális; így $f(y) = f(x + \sqrt2 + (d - \sqrt2)) = f(x + \sqrt2) = f(x)$. (Negatív periódus $p$ esetén $f(x + p) = f(x)$ abból következik, hogy $-p$ periódus, és $f(x) = f((x + p) + (-p))$.) Tehát $f$ konstans.

::: elmelet
**Elméleti háttér — periodikus függvények és a periódusok csoportja.**

*Definíció.* $p \ne 0$ az $f : \mathbb{R} \to \mathbb{R}$ függvény **periódusa**, ha $f(x + p) = f(x)$ minden $x$-re. A periódusok halmaza (a $0$-val kiegészítve) **additív részcsoport** $\mathbb R$-ben: ha $p$ és $r$ periódus, akkor $f(x + p + r) = f(x + p) = f(x)$ és $f(x) = f((x - p) + p) = f(x - p)$, így $p + r$ és $-p$ is periódus.

*A részcsoportok szerkezete.* $\mathbb{R}$ minden additív $G$ részcsoportja vagy **diszkrét** ($G = \{kp : k \in \mathbb{Z}\}$ valamely $p \ge 0$-ra), vagy **sűrű** $\mathbb{R}$-ben. Ha $G$-nek van legkisebb pozitív eleme $p$, akkor $G = p\mathbb{Z}$ (különben a maradékos osztás kisebb pozitív elemet adna); ha nincs, $G$ elemei tetszőlegesen kicsik, és többszöröseik sűrűn lefedik a számegyenest.

*Következmények.*

- Ha egy **folytonos** függvény periódusainak csoportja sűrű, a függvény konstans: $f(x) = f(0)$ minden periódusra, és a periódusok sűrűek, így a folytonosság miatt mindenütt. A Dirichlet-függvény a folytonosság nélküli ellenpélda.
- Két periódus, $p$ és $r$ esetén, ha $\frac pr$ irracionális, a $\{kp + lr\}$ csoport sűrű — folytonos függvénynél ez már konstanst ad. Ezért például $\sin x + \sin(\sqrt2 x)$ nem periodikus.
- Ha **minden irracionális** szám periódus, a generált csoport $\mathbb{R}$ (minden szám két irracionális összege), így bármely függvény konstans.

*A legkisebb periódus.* A „periódus” szónál gyakran a legkisebb pozitív periódusra gondolunk (például $\sin$-nél $2\pi$). Ez nem mindig létezik: a Dirichlet-függvény minden pozitív racionális szám szerint periodikus, legkisebb pozitív periódusa nincs; a konstans függvénynek minden szám periódusa.
:::

## 77. feladat

Létezik-e $f : \mathbb{R} \to \mathbb{R}$ függvény, melynek minden pontban szigorú lokális maximuma van?

**Megoldás.**

**Nem létezik.** Megmutatjuk, hogy bármely $f : \mathbb{R} \to \mathbb{R}$ szigorú lokális maximumhelyeinek halmaza megszámlálható; $\mathbb{R}$ viszont nem az.

Ha $x$ szigorú lokális maximumhely, akkor van olyan $(p_x, q_x)$ intervallum racionális végpontokkal, hogy $x \in (p_x, q_x)$, és minden $y \in (p_x, q_x)$, $y \neq x$ esetén $f(y) < f(x)$. Az $x \mapsto (p_x, q_x) \in \mathbb{Q}^2$ hozzárendelés injektív: ha $x \neq x'$-hez ugyanaz az intervallum tartozna, akkor mindkettő benne lenne, így $f(x') < f(x)$ és $f(x) < f(x')$ is teljesülne – ellentmondás. Mivel $\mathbb{Q}^2$ megszámlálható, a szigorú lokális maximumhelyek is legfeljebb megszámlálhatóan sokan vannak. $\blacksquare$

::: elmelet
**Elméleti háttér — lokális szélsőértékek és megszámlálhatósági érvek.**

*Definíciók.* $x_0$ **lokális maximumhely**, ha van $\delta > 0$, hogy $|x - x_0| < \delta$ esetén $f(x) \le f(x_0)$; **szigorú**, ha $0 < |x - x_0| < \delta$ esetén $f(x) < f(x_0)$. A szigorú lokális maximumhelyek „elkülönülnek” egymástól: két ilyen pont nem lehet egymás $\delta$-környezetében mindkettőnek a saját $\delta$-jával.

*A racionális környezetek trükkje.* Minden $x$ ponthoz és $\delta > 0$-hoz van racionális végpontú $(p, q)$ intervallum, hogy $x \in (p, q) \subseteq (x - \delta, x + \delta)$ ($\mathbb Q$ sűrűsége). A racionális végpontú intervallumokból megszámlálhatóan sok van ($\mathbb{Q}^2$). Ha a hozzárendelés injektív, a pontok halmaza megszámlálható.

*A tétel általánosan.* Bármely $f : \mathbb{R} \to \mathbb{R}$ függvény szigorú lokális szélsőértékhelyeinek halmaza megszámlálható. Ugyanígy megszámlálható:

- egy monoton függvény szakadási helyeinek halmaza (minden ugráshoz egy racionális szám a hézagból);
- egy tetszőleges függvény azon pontjainak halmaza, ahol a bal és jobb oldali határérték létezik, de különbözik;
- a síkban diszjunkt nyílt körlapok (vagy betűk, „nyolcasok”) bármely rendszere.

*Nem szigorú esetben más a helyzet.* A konstans függvénynek minden pont lokális maximumhelye (nem szigorú), és ilyenből kontinuum sok van. A Riemann-függvénynek (87. feladat) minden racionális pont szigorú lokális maximumhelye — ez megszámlálható sok, összhangban a tétellel —, az irracionálisak pedig nem szigorú lokális minimumhelyek.

*Kapcsolódás a differenciálszámításhoz.* Differenciálható függvény belső lokális szélsőértékhelyén $f'(x_0) = 0$ (Fermat-tétel). A feladat eredménye azt mutatja, hogy a „sok” szélsőértékhely mindig a nem szigorú fajtából kerül ki.
:::

## 78. feladat

Bizonyítsuk be, hogy $x^k$ szigorúan konvex $[0, \infty)$-ben, minden $k > 1$ egész számra.

**Megoldás.**

Használjuk a konvexitás jellemzését a különbségi hányados függvénnyel: $f$ akkor és csak akkor szigorúan konvex az $I$ intervallumon, ha minden $a \in I$-re az
$$m_a(x) = \frac{f(x) - f(a)}{x - a} \qquad (x \in I,\ x \neq a)$$
függvény szigorúan monoton nő.

$f(x) = x^k$ esetén ($k \ge 2$ egész) az $x^k - a^k = (x - a)(x^{k-1} + x^{k-2}a + \dots + a^{k-1})$ azonosság szerint
$$m_a(x) = \sum_{j=0}^{k-1} x^j a^{k-1-j}.$$
Ha $a \ge 0$, ez $x$-nek nemnegatív együtthatós polinomja, amelyben az $x^{k-1}$ tag együtthatója $1$; $[0, \infty)$-en minden tag monoton nő, az $x^{k-1}$ tag pedig ($k - 1 \ge 1$ miatt) szigorúan. Tehát $m_a$ szigorúan monoton nő $[0, \infty) \setminus \{a\}$-n, és így $x^k$ szigorúan konvex $[0, \infty)$-ben. $\blacksquare$

::: elmelet
**Elméleti háttér — konvex függvények: definíció és jellemzések.**

*Definíció.* $f$ **konvex** az $I$ intervallumon, ha minden $x, y \in I$ és $\lambda \in [0, 1]$ esetén
$$f(\lambda x + (1 - \lambda)y) \le \lambda f(x) + (1 - \lambda)f(y),$$
azaz a grafikon minden húrja a grafikon felett (vagy rajta) halad. **Szigorúan konvex**, ha $x \ne y$ és $\lambda \in (0, 1)$ esetén szigorú egyenlőtlenség áll. **Konkáv**, ha $-f$ konvex.

*Jellemzés a különbségi hányadossal.* Legyen $m_a(x) = \frac{f(x) - f(a)}{x - a}$ (a $(a, f(a))$ és $(x, f(x))$ pontokon átmenő húr meredeksége). Ekkor
$$f \text{ konvex } I\text{-n} \iff \text{minden } a \in I\text{-re } m_a \text{ monoton nő } I \setminus \{a\}\text{-n}.$$
Ekvivalens alak a **három húr egyenlőtlensége**: $x < y < z$ esetén
$$\frac{f(y) - f(x)}{y - x} \le \frac{f(z) - f(x)}{z - x} \le \frac{f(z) - f(y)}{z - y}.$$
Ez a definícióból $y = \lambda x + (1 - \lambda)z$ helyettesítéssel és átrendezéssel adódik.

*Hatványfüggvények.* Az $x^k - a^k = (x - a)\sum_{j=0}^{k-1}x^ja^{k-1-j}$ azonosság a húr meredekségét polinommá teszi: $m_a(x) = x^{k-1} + x^{k-2}a + \dots + a^{k-1}$, amely $[0, \infty)$-en $x$-ben szigorúan nő. A negatív félegyenesen páratlan $k$-ra $x^k$ konkáv, páros $k$-ra konvex — ezért szerepel a feladatban a $[0, \infty)$.

*Differenciálható függvényekre* (későbbi eszköz): $f$ konvex $\iff$ $f'$ monoton nő $\iff$ (kétszer differenciálhatónál) $f'' \ge 0$. Például $(x^k)'' = k(k-1)x^{k-2} \ge 0$ ($x \ge 0$). A húros jellemzés előnye, hogy deriválás nélkül is működik.

*Fontos tulajdonságok.* Konvex függvény egy nyílt intervallumon folytonos, minden pontban vannak egyoldali deriváltjai, és lokális minimuma egyben globális minimum.
:::

## 79. feladat

Az előadáson bizonyítással szerepelt a Jensen-egyenlőtlenség két tagra. A több tagra vonatkozó változatot csak kimondtuk:

*$f$ acsa konvex $I$-n, ha $\forall x_1, \dots, x_n \in I$ és $\forall p_1, \dots, p_n > 0$, $p_1 + \dots + p_n = 1$ esetén*
$$f(p_1 x_1 + \dots + p_n x_n) \le p_1 f(x_1) + \dots + p_n f(x_n).$$
Bizonyítsuk be!

**Megoldás.**

Az az irány, hogy a több tagú egyenlőtlenségből következik a konvexitás, triviális: $n = 2$-re éppen a definíciót kapjuk. A másik irányt $n$ szerinti indukcióval bizonyítjuk; $n = 1$ triviális, $n = 2$ a definíció.

*Indukciós lépés* $n \to n + 1$: legyenek $p_1, \dots, p_{n+1} > 0$, összegük $1$, és $s = p_1 + \dots + p_n = 1 - p_{n+1} \in (0, 1)$. Legyen
$$y = \frac{p_1 x_1 + \dots + p_n x_n}{s}.$$
Ez az $x_1, \dots, x_n$ pontok súlyozott átlaga ($\frac{p_i}{s} > 0$, összegük 1), így $\min x_i \le y \le \max x_i$, tehát $y \in I$. Ekkor $p_1 x_1 + \dots + p_{n+1}x_{n+1} = s\,y + p_{n+1}x_{n+1}$, és a két tagú Jensen-egyenlőtlenség, majd az indukciós feltevés (a $\frac{p_i}{s}$ súlyokkal) szerint
$$f\Big(\sum_{i=1}^{n+1} p_i x_i\Big) \le s\,f(y) + p_{n+1}f(x_{n+1}) \le s\sum_{i=1}^{n}\frac{p_i}{s}f(x_i) + p_{n+1}f(x_{n+1}) = \sum_{i=1}^{n+1}p_i f(x_i). \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — a Jensen-egyenlőtlenség és a konvex kombinációk.**

*Konvex kombináció.* Az $x_1, \dots, x_n$ pontok **konvex kombinációja** a $\sum p_ix_i$ pont, ahol $p_i \ge 0$, $\sum p_i = 1$. Egy intervallum (általában: egy konvex halmaz) zárt a konvex kombinációkra: a súlyozott átlag a legkisebb és a legnagyobb pont közé esik.

*A Jensen-egyenlőtlenség.* Ha $f$ konvex $I$-n, $x_i \in I$, $p_i > 0$, $\sum p_i = 1$, akkor
$$f\Big(\sum p_ix_i\Big) \le \sum p_if(x_i),$$
röviden: **$f$(átlag) $\le$ átlag($f$)**. Szigorúan konvex $f$ esetén egyenlőség pontosan akkor, ha minden $x_i$ egyenlő.

*Az indukció ötlete: „összevonás és újranormálás”.* Az első $n$ pontot egyetlen ponttá vonjuk össze, $y = \sum_{i \le n}\frac{p_i}{s}x_i$, súllyal $s$. Az $\frac{p_i}{s}$ súlyok összege $1$, tehát az indukciós feltevés alkalmazható rájuk, a kéttagú Jensen pedig $y$-ra és $x_{n+1}$-re. Az $y \in I$ ellenőrzése nem formalitás: ha $I$ nem volna intervallum, $f(y)$ értelmetlen lehetne.

*Alkalmazások.*

- $f(x) = x^2$: $\left(\frac{\sum a_i}{n}\right)^2 \le \frac{\sum a_i^2}{n}$ (számtani–négyzetes közép).
- $f(x) = -\ln x$ (konvex): $\ln\frac{\sum a_i}{n} \ge \frac{\sum\ln a_i}{n}$, azaz **számtani–mértani közép** egyenlőtlenség.
- $f(x) = \frac1x$ ($x > 0$): a számtani és harmonikus közép közötti egyenlőtlenség.
- Valószínűségszámításban: $f(\mathbb{E}X) \le \mathbb{E}f(X)$, ha $f$ konvex.

*Geometriai jelentés.* A $(x_i, f(x_i))$ pontok konvex burka a grafikon fölött helyezkedik el, és az $\left(\sum p_ix_i, \sum p_if(x_i)\right)$ súlypont ebben a burokban van — tehát a grafikon fölött.
:::

## 80. feladat

Bizonyítsuk be, hogy ha $a_1, \dots, a_n \ge 0$ és $k > 1$ egész, akkor
$$\frac{a_1 + \dots + a_n}{n} \le \sqrt[k]{\frac{a_1^k + \dots + a_n^k}{n}}.$$

**Megoldás.**

A 78. feladat szerint $f(x) = x^k$ konvex $[0, \infty)$-ben. A Jensen-egyenlőtlenség a $p_i = \frac1n$ súlyokkal:
$$\left(\frac{a_1 + \dots + a_n}{n}\right)^k \le \frac{a_1^k + \dots + a_n^k}{n}.$$
Mindkét oldal nemnegatív, és a $t \mapsto \sqrt[k]{t}$ függvény monoton nő, így $k$-adik gyököt vonva kapjuk az állítást. $\blacksquare$ (Egyenlőség pontosan akkor, ha $a_1 = \dots = a_n$, a szigorú konvexitás miatt.)

::: elmelet
**Elméleti háttér — hatványközepek és a közepek hierarchiája.**

*Hatványközép.* Nemnegatív $a_1, \dots, a_n$ számok $r$-edik hatványközepe ($r \ne 0$)
$$M_r = \left(\frac{a_1^r + \dots + a_n^r}{n}\right)^{1/r},$$
és $M_0$ a mértani közép (ez a $r \to 0$ határérték). Nevezetes esetek: $M_{-1}$ harmonikus, $M_0$ mértani, $M_1$ számtani, $M_2$ négyzetes közép, $M_\infty = \max a_i$, $M_{-\infty} = \min a_i$.

*Hatványközép-egyenlőtlenség.* Ha $r < s$, akkor $M_r \le M_s$, egyenlőséggel pontosan akkor, ha minden $a_i$ egyenlő. A feladat az $r = 1$, $s = k$ eset; a bizonyítás a Jensen-egyenlőtlenség az $f(x) = x^k$ konvex függvénnyel, majd a monoton $k$-adik gyökvonás. Általánosan: $f(x) = x^{s/r}$ konvex, ha $s/r > 1$ ($r > 0$), és ezt az $a_i^r$ számokra alkalmazzuk.

*Miért kell nemnegatív?* Negatív számokra $x^k$ nem konvex (páratlan $k$-nál), és a $k$-adik gyök sem monoton/értelmezett úgy, ahogy kell. Például $a_1 = -1$, $a_2 = 1$, $k = 3$-ra a bal oldal $0$, a jobb oldal $\sqrt[3]{0} = 0$ — itt még egyenlő, de $a_1 = -2$, $a_2 = 1$: bal oldal $-\frac12$, jobb oldal $\sqrt[3]{-\frac72} \approx -1{,}52$ — az egyenlőtlenség megfordul.

*Alkalmazás: becslések.* $\sum_{i=1}^n a_i \le \sqrt{n\sum a_i^2}$ (a négyzetes közép becslése, a Cauchy–Schwarz-egyenlőtlenség speciális esete). Ilyen becslések adják például a sorok konvergenciakritériumaiban vagy a hibabecslésekben a „négyzetösszeg kontrollálja az összeget” elvet.

*Egyenlőség esete.* $x^k$ szigorúan konvex $[0, \infty)$-ben ($k \ge 2$), így a Jensen-egyenlőtlenségben egyenlőség csak akkor lehet, ha minden $a_i$ egyenlő. Ezt a szélsőérték-feladatoknál használjuk: a korlát akkor éles, ha minden változó egyenlő.
:::

## 81. feladat

Bizonyítsuk be, hogy ha $f$ konvex, de nem szigorúan konvex az $I$ intervallumban, akkor $I$-nek van olyan részintervalluma, amelyben $f$ lineáris.

**Megoldás.**

Mivel $f$ nem szigorúan konvex, vannak $a < b$ pontok $I$-ben és $\lambda \in (0, 1)$, hogy $c = \lambda a + (1 - \lambda)b$ esetén
$$f(c) = \lambda f(a) + (1 - \lambda) f(b)$$
(a konvexitás miatt itt $\le$ áll, és nem szigorú). Legyen $L$ az $(a, f(a))$ és $(b, f(b))$ pontokon átmenő egyenes (lineáris függvény). A konvexitás miatt $f \le L$ az $[a, b]$ intervallumon, és $f(c) = L(c)$.

**Állítás:** $f = L$ az egész $[a, b]$-n. Tegyük fel, hogy valamely $x \in (a, c)$-re $f(x) < L(x)$. Ekkor $c$ az $x$ és $b$ között van: $c = \mu x + (1 - \mu) b$ valamely $\mu \in (0, 1)$-re, és
$$f(c) \le \mu f(x) + (1 - \mu) f(b) < \mu L(x) + (1 - \mu) L(b) = L(c),$$
hiszen $L$ lineáris. Ez ellentmond $f(c) = L(c)$-nek. Ugyanígy $x \in (c, b)$-re (ekkor $c$ az $a$ és $x$ között van). Tehát $f$ lineáris az $[a, b]$ részintervallumon. $\blacksquare$

::: elmelet
**Elméleti háttér — konvex, de nem szigorúan konvex: lineáris szakaszok.**

*A húr-tulajdonság erősítése.* Ha egy konvex $f$ grafikonja egy $c \in (a, b)$ belső pontban rajta van az $(a, f(a))$–$(b, f(b))$ húron, akkor az egész $[a, b]$ szakaszon rajta van. A bizonyítás lényege: ha valahol a húr alatt volna, egy kisebb húr ($x$-től $b$-ig) a $c$ pontot szigorúan a nagy húr alá szorítaná.

*Ekvivalens megfogalmazások.* Egy konvex $f$-re ekvivalens:

1. $f$ nem szigorúan konvex $I$-n;
2. van $I$-nek olyan nem degenerált részintervalluma, amelyen $f$ lineáris (affin: $f(x) = mx + c$);
3. (differenciálható $f$-re) $f'$ nem szigorúan monoton, vagyis valahol konstans;
4. (kétszer differenciálható $f$-re) $f''$ azonosan $0$ egy részintervallumon.

*Példák.* $|x|$ konvex, nem szigorúan: a $(-\infty, 0]$ és $[0, \infty)$ félegyeneseken lineáris. $\max\{x, x^2\}$ a $[0, 1]$-en lineáris, máshol szigorúan konvex. Az $x^4$ szigorúan konvex, pedig $f''(0) = 0$ — tehát a szigorú konvexitáshoz nem kell $f'' > 0$ mindenhol, elég, hogy $f''$ ne legyen azonosan nulla egyetlen intervallumon sem.

*Miért fontos?* Szélsőértékeknél: szigorúan konvex függvény minimumhelye (ha van) egyértelmű; nem szigorúan konvexnek a minimumhelyei egy intervallumot alkothatnak. A Jensen-egyenlőtlenségben az egyenlőség esete is a szigorúságon múlik: lineáris szakaszon a pontok különbözők lehetnek egyenlőség mellett.

*A bizonyítás technikája.* A konvexitás definícióját nem a „nagy” háromszögre, hanem egy ügyesen választott **kisebb** húrra alkalmaztuk, amelynek egyik végpontja a vizsgált $x$ pont. Ez a „lokalizálás” gyakori fogás konvexitási bizonyításokban.
:::

## 82. feladat

Bizonyítsuk be, hogy

a) $\sqrt{x}$ szigorúan konkáv $[0, \infty)$-ben;

b) $\sqrt[k]{x}$ szigorúan konkáv $[0, \infty)$-ben minden $k > 1$ egészre.

**Megoldás.**

Szigorú konkávitás $\iff$ minden $a$-ra az $m_a(x) = \frac{f(x) - f(a)}{x - a}$ különbségi hányados szigorúan monoton **fogy**.

a) $f(x) = \sqrt x$: $m_a(x) = \dfrac{\sqrt x - \sqrt a}{x - a} = \dfrac{1}{\sqrt x + \sqrt a}$ ($x \ne a$, $x, a \ge 0$). A nevező $x$-ben szigorúan nő, tehát $m_a$ szigorúan fogy: $\sqrt x$ szigorúan konkáv $[0, \infty)$-ben.

b) $f(x) = \sqrt[k]{x}$: legyen $u = \sqrt[k]{x}$, $v = \sqrt[k]{a}$; ekkor $x - a = u^k - v^k$, és
$$m_a(x) = \frac{u - v}{u^k - v^k} = \frac{1}{u^{k-1} + u^{k-2}v + \dots + v^{k-1}}.$$
A nevező pozitív (nem lehet $u = v = 0$, mert $x \ne a$), és $u$-ban – így $x$-ben – szigorúan nő, tehát $m_a$ szigorúan fogy: $\sqrt[k]{x}$ szigorúan konkáv. $\blacksquare$

::: elmelet
**Elméleti háttér — konkáv függvények, gyökfüggvények.**

*Konkávitás.* $f$ konkáv, ha $-f$ konvex, azaz a húrok a grafikon **alatt** haladnak: $f(\lambda x + (1 - \lambda)y) \ge \lambda f(x) + (1 - \lambda)f(y)$. Jellemzés: $m_a(x)$ monoton **fogy** minden $a$-ra.

*Gyökfüggvények.* A $\sqrt[k]{x}$ az $x^k$ inverze a $[0, \infty)$-en. Általános tény: ha $g$ szigorúan növő és konvex, akkor $g^{-1}$ szigorúan növő és konkáv (a grafikon az $y = x$ egyenesre tükröződik, és a tükrözés a „felfelé domború” alakot „lefelé domborúvá” alakítja). A megoldás közvetlenül számol: a húr meredeksége
$$m_a(x) = \frac{\sqrt[k]{x} - \sqrt[k]{a}}{x - a} = \frac{1}{u^{k-1} + u^{k-2}v + \dots + v^{k-1}}, \qquad u = \sqrt[k]x,\ v = \sqrt[k]a,$$
ami pontosan az $x^k$ függvény $u$ és $v$ közti húrjának reciproka — ez az inverz függvény húrjának geometriai jelentése.

*Következmények.*

- **Jensen konkáv függvényre:** $\sqrt[k]{\text{átlag}} \ge \text{átlag}(\sqrt[k]{\cdot})$, például $\sqrt{\frac{a + b}{2}} \ge \frac{\sqrt a + \sqrt b}{2}$.
- **Szubadditivitás:** konkáv, $f(0) \ge 0$ függvény szubadditív a $[0, \infty)$-en: $f(a + b) \le f(a) + f(b)$. Így $\sqrt{a + b} \le \sqrt a + \sqrt b$.
- A $\ln x$ szigorúan konkáv; ebből jön a számtani–mértani egyenlőtlenség (a Jensen-egyenlőtlenség logaritmikus alakja).

*A végpont kérdése.* A $0$ pontban a $\sqrt x$ „függőleges érintővel” indul ($m_0(x) = \frac{1}{\sqrt x} \to \infty$), de a konkávitás a zárt $[0, \infty)$ intervallumon is érvényes — a húros jellemzés a végpontot is kezeli, ellentétben a második derivált feltétellel, amely a $0$-ban nem is értelmes.
:::

## 83. feladat

Adott $\varepsilon > 0$-hoz alkalmas $\delta_\varepsilon$-t keresve határozzuk meg a következő határértékeket:

a) $\lim\limits_{x \to 2} 3x^2 + 6$, b) $\lim\limits_{x \to 1/2} \dfrac{1}{x}$, c) $\lim\limits_{x \to 2} \sqrt{x}$,

d) $\lim\limits_{x \to 0} \dfrac{x^2 - 1}{2x^2 - x - 1}$, e) $\lim\limits_{x \to 0} x\left\{\dfrac{1}{x}\right\}$, f) $\lim\limits_{x \to 0} x\left[\dfrac{1}{x}\right]$.

**Megoldás.**

a) $\lim_{x\to2} (3x^2 + 6) = 18$. $|3x^2 + 6 - 18| = 3|x - 2|\,|x + 2|$. Ha $|x - 2| < 1$, akkor $|x + 2| < 5$, így a kifejezés $< 15|x - 2|$. **$\delta_\varepsilon = \min\{1, \varepsilon/15\}$.**

b) $\lim_{x\to1/2} \frac1x = 2$. $\left|\frac1x - 2\right| = \frac{2|x - \frac12|}{|x|}$. Ha $|x - \frac12| < \frac14$, akkor $x > \frac14$, így a kifejezés $< 8|x - \frac12|$. **$\delta_\varepsilon = \min\{\frac14, \frac\varepsilon8\}$.**

c) $\lim_{x\to2} \sqrt x = \sqrt2$. $|\sqrt x - \sqrt2| = \frac{|x - 2|}{\sqrt x + \sqrt2} \le \frac{|x-2|}{\sqrt2}$. **$\delta_\varepsilon = \min\{2, \sqrt2\,\varepsilon\}$** (a $\delta \le 2$ az értelmezési tartomány miatt).

d) $2x^2 - x - 1 = (2x + 1)(x - 1)$ és $x^2 - 1 = (x - 1)(x + 1)$, így $x \ne 1$-re a függvény $\frac{x + 1}{2x + 1}$, és a határérték $\frac{0+1}{0+1} = 1$. $\left|\frac{x+1}{2x+1} - 1\right| = \frac{|x|}{|2x + 1|}$. Ha $|x| < \frac14$, akkor $|2x + 1| > \frac12$, így a kifejezés $< 2|x|$. **$\delta_\varepsilon = \min\{\frac14, \frac\varepsilon2\}$**, a határérték $1$.

e) $0 \le \{1/x\} < 1$ miatt $|x\{1/x\} - 0| \le |x|$. **A határérték $0$, $\delta_\varepsilon = \varepsilon$.**

f) $x[1/x] = x\left(\frac1x - \{1/x\}\right) = 1 - x\{1/x\}$, így $|x[1/x] - 1| \le |x|$. **A határérték $1$, $\delta_\varepsilon = \varepsilon$.**

::: elmelet
**Elméleti háttér — a függvényhatárérték $\varepsilon$–$\delta$ definíciója és a $\delta$ megkeresése.**

*Definíció (Cauchy).* Legyen $a$ a $D(f)$ torlódási pontja. $\lim_{x \to a} f(x) = b$, ha
$$\forall \varepsilon > 0\ \exists \delta > 0\ \forall x \in D(f): \ 0 < |x - a| < \delta \implies |f(x) - b| < \varepsilon.$$
A $0 < |x - a|$ feltétel miatt a függvény $a$-beli értéke (ha egyáltalán értelmezett) **nem számít** — ezért van határértéke például a d) rész függvényének az $x = 1$-ben, ahol nincs is értelmezve.

*Receptek $\delta$ kereséséhez.*

1. **Faktorizálás:** $|f(x) - b| = |x - a| \cdot |g(x)|$ alakra hozás (polinomoknál mindig lehetséges, mert $f(x) - f(a)$ osztható $x - a$-val).
2. **Lokalizálás:** előre kikötjük, hogy $|x - a| < r$ (például $r = 1$ vagy $r = \frac{|a|}{2}$), és ezen a környezeten felülről becsüljük $|g(x)|$-et egy $C$ konstanssal. Hányadosnál a **nevezőt alulról** kell becsülni, hogy ne kerülhessen közel $0$-hoz.
3. **Összerakás:** $\delta = \min\left\{r, \frac{\varepsilon}{C}\right\}$; a minimum garantálja, hogy mindkét feltétel teljesül.

*Gyakori hiba.* A $\delta$ nem függhet $x$-től — csak $\varepsilon$-tól (és $a$-tól). A „$\delta = \frac{\varepsilon}{3|x + 2|}$” típusú válasz hibás; ezért kell a lokalizálás.

*Egyszerűsítés határérték előtt.* A d) részben $\frac{x^2 - 1}{2x^2 - x - 1} = \frac{x + 1}{2x + 1}$ minden $x \ne 1$-re. A határérték csak a pont környezetétől függ, így egyszerűsíthetünk a $0$ közelében. (Az $x \to 1$ határérték is innen jönne: $\frac{2}{3}$, a „$\frac00$” alak ellenére.)

*Becslés korlátos tényezővel.* Az e)–f) részben a $\{1/x\}$ tényező korlátos ($[0, 1)$-ben), a másik tényező ($x$) $0$-hoz tart: „korlátos szor nullába tartó $\to 0$”. Ilyenkor $\delta = \varepsilon$ is megfelel.

*Kapcsolat a folytonossággal.* Ha $a \in D(f)$ és $\lim_{x\to a}f(x) = f(a)$, akkor $f$ **folytonos** $a$-ban. Az a)–c) részek függvényei folytonosak a vizsgált pontokban, így a határérték egyszerűen a behelyettesítési érték — a $\delta$ megkeresése a folytonosság bizonyítása.
:::

## 84. feladat

Mutassuk meg, hogy $\lim\limits_{x \to a} f(x) = b$ acsa, ha $\lim\limits_{x \to a-0} f(x) = \lim\limits_{x \to a+0} f(x) = b$.

**Megoldás.**

($\Rightarrow$) Ha minden $\varepsilon$-hoz van $\delta$, hogy $0 < |x - a| < \delta$ esetén $|f(x) - b| < \varepsilon$, akkor ez speciálisan $a < x < a + \delta$ és $a - \delta < x < a$ esetén is teljesül, tehát mindkét egyoldali határérték $b$.

($\Leftarrow$) Adott $\varepsilon$-hoz a bal oldali határérték ad $\delta_1$-et ($a - \delta_1 < x < a \Rightarrow |f(x) - b| < \varepsilon$), a jobb oldali $\delta_2$-t. $\delta = \min\{\delta_1, \delta_2\}$ esetén $0 < |x - a| < \delta$-ból $|f(x) - b| < \varepsilon$. $\blacksquare$

(Feltettük, hogy $a$ mindkét oldalról torlódási pontja $D(f)$-nek; ha csak az egyik oldalról, akkor a határérték az ottani egyoldali határértékkel egyezik meg.)

::: elmelet
**Elméleti háttér — egyoldali határértékek.**

*Definíció.* $\lim_{x \to a+0} f(x) = b$ (jobb oldali határérték), ha minden $\varepsilon > 0$-hoz van $\delta > 0$, hogy $a < x < a + \delta$, $x \in D(f)$ esetén $|f(x) - b| < \varepsilon$. A bal oldali ugyanígy, $a - \delta < x < a$-val. (Feltétel: $a$ a $D(f) \cap (a, \infty)$, illetve $D(f) \cap (-\infty, a)$ torlódási pontja.) Más jelölések: $f(a+0)$, $f(a^+)$, $\lim_{x \downarrow a}$.

*A tétel.* Ha $a$ mindkét oldalról torlódási pontja $D(f)$-nek, akkor $\lim_{x\to a}f(x) = b \iff f(a-0) = f(a+0) = b$. A bizonyítás kulcsa: a pontozott környezet a két félkörnyezet uniója, és két $\delta$ közül a kisebbik mindkét oldalon megfelel („$\min$-trükk”).

*Tipikus alkalmazás: határérték nemlétezésének kimutatása.* Ha a két egyoldali határérték létezik, de különbözik, a kétoldali nem létezik. Példák:

- $\operatorname{sgn} x$: $f(0-0) = -1$, $f(0+0) = 1$;
- $[x]$ egész helyeken: $[n - 0] = n - 1$, $[n + 0] = n$;
- $\frac{1}{x}$ a $0$-ban: $-\infty$, illetve $+\infty$ (tágabb értelemben).

*Szakadások osztályozása.* Ha $f$ nem folytonos $a$-ban, akkor: **megszüntethető** szakadás, ha $\lim_{x\to a} f(x)$ létezik (véges), de $\ne f(a)$ (vagy $f(a)$ nem értelmezett); **elsőfajú (ugrás)**, ha mindkét egyoldali határérték létezik és véges, de különböznek; **másodfajú**, ha valamelyik egyoldali határérték nem létezik vagy végtelen (például $\sin\frac1x$ vagy $\{\frac1x\}$ a $0$-ban). Monoton függvénynek csak ugrásai lehetnek.

*Egyoldali határérték monoton függvényre.* Ha $f$ monoton nő, a bal oldali határérték mindig létezik: $f(a - 0) = \sup_{x < a}f(x)$ — a szuprémum $\varepsilon$-os jellemzéséből. Ez a sorozatok monoton konvergencia-tételének függvényes megfelelője.
:::

## 85. feladat

Adjuk meg a $B(0, 1)$, $\dot{B}(0, 1)$, $\mathbb{N}$, $\mathbb{Q}$ és az $\{1/n : n \in \mathbb{N}\}$ halmazok torlódási pontjait!

**Megoldás.**

$a$ torlódási pontja $H$-nak, ha minden pontozott környezete tartalmaz $H$-beli pontot.

- $B(0, 1) = (-1, 1)$: torlódási pontjai $[-1, 1]$.
- $\dot B(0, 1) = (-1, 0) \cup (0, 1)$: torlódási pontjai szintén $[-1, 1]$ (a $0$ is, bár nem eleme).
- $\mathbb{N}$: nincs (valós) torlódási pontja – bármely $x$-nek van olyan pontozott környezete, amely nem tartalmaz természetes számot. (A bővített számegyenesen $+\infty$ torlódási pont.)
- $\mathbb{Q}$: minden valós szám torlódási pont ($\mathbb{Q}$ sűrű), azaz a halmaz $\mathbb{R}$.
- $\{\frac1n : n \in \mathbb{N}\}$: egyetlen torlódási pont a $0$ (bármely más pontnak van olyan környezete, amelyben legfeljebb egy eleme van a halmaznak).

::: elmelet
**Elméleti háttér — környezetek, torlódási pontok, izolált pontok.**

*Fogalmak.* $B(a, r) = (a - r, a + r)$ a nyílt környezet, $\dot B(a, r) = B(a, r) \setminus \{a\}$ a **pontozott** környezet. Az $a \in \mathbb{R}$ pont a $H$ halmaz

- **torlódási pontja**, ha minden pontozott környezete tartalmaz $H$-beli pontot — ekvivalensen: minden környezete **végtelen sok** $H$-beli pontot tartalmaz, illetve van $a$-hoz tartó, $H \setminus \{a\}$-beli sorozat;
- **izolált pontja**, ha $a \in H$, de nem torlódási pont (van olyan környezete, amelyben $H$-nak csak $a$ az eleme);
- **belső pontja**, ha van olyan környezete, amely teljesen $H$-ban van.

A torlódási pontok halmaza a $H'$ (**derivált halmaz**); $H \cup H'$ a $H$ **lezártja**. $H$ **zárt**, ha $H' \subseteq H$.

*A példák tanulságai.* $(-1, 1)$ torlódási pontjai a $[-1, 1]$ — a végpontok is, bár nem elemek. A pontozott $\dot B(0, 1)$-ből a $0$ kimarad, de torlódási pont marad: egyetlen pont elhagyása a torlódási pontokon nem változtat. $\mathbb{N}$ minden pontja izolált. $\{\frac1n\}$ minden eleme izolált, egyetlen torlódási pontja a $0$, amely nem eleme. $\mathbb{Q}$ torlódási pontjai: az egész $\mathbb R$.

*Bolzano–Weierstrass halmazokra.* Minden korlátos, végtelen valós halmaznak van torlódási pontja. (Válasszunk belőle különböző elemekből álló sorozatot; ennek van konvergens részsorozata, és határértéke torlódási pont.)

*Miért fontos a határértéknél?* A $\lim_{x \to a} f(x)$ csak akkor értelmes, ha $a$ a $D(f)$ torlódási pontja — különben a definíció feltétele üresen teljesülne, és **bármely** $b$ „határérték” volna. Izolált pontban ezért nem beszélünk határértékről (de folytonosságról igen: minden függvény folytonos az értelmezési tartománya izolált pontjaiban).
:::

## 86. feladat

Mutassuk meg, hogy ha $\lim\limits_{x \to a} f(x) = b < c = \lim\limits_{x \to a} g(x)$, akkor létezik az $a$-nak olyan $\dot{U}$ pontozott környezete, hogy minden $x \in \dot{U}$-ra $f(x) < g(x)$.

**Megoldás.**

Legyen $\varepsilon = \frac{c - b}{2} > 0$. A határértékek definíciója szerint van $\delta_1$, hogy $0 < |x - a| < \delta_1$ esetén $f(x) < b + \varepsilon = \frac{b + c}{2}$, és van $\delta_2$, hogy $0 < |x - a| < \delta_2$ esetén $g(x) > c - \varepsilon = \frac{b + c}{2}$. Legyen $\delta = \min\{\delta_1, \delta_2\}$ és $\dot U = (a - \delta, a + \delta) \setminus \{a\}$. Ekkor minden $x \in \dot U$-ra
$$f(x) < \frac{b + c}{2} < g(x). \qquad \blacksquare$$

::: elmelet
**Elméleti háttér — határérték és egyenlőtlenségek.**

*Előjeltartás.* Ha $\lim_{x \to a} f(x) = b > 0$, akkor $a$-nak van pontozott környezete, amelyben $f(x) > 0$ (sőt $f(x) > \frac b2$). Ez a feladat $g \equiv 0$ speciális esete, és a legegyszerűbb „határérték $\Rightarrow$ lokális tulajdonság” állítás.

*A feladat állítása és megfordítása.* Ha $\lim f < \lim g$, akkor egy pontozott környezetben $f < g$. **Megfordítva** csak gyenge egyenlőtlenség igaz: ha egy pontozott környezetben $f(x) \le g(x)$ (sőt akár $f(x) < g(x)$), és mindkét határérték létezik, akkor $\lim f \le \lim g$. Szigorú egyenlőtlenség nem öröklődik: $f(x) = 0 < g(x) = x^2$ ($x \ne 0$), de mindkét határérték $0$-ban $0$.

*A bizonyítás mintája.* Két különböző határértéket diszjunkt környezetekkel választunk szét: $\varepsilon = \frac{c - b}{2}$, így a $b$ és $c$ körüli $\varepsilon$-környezetek éppen a $\frac{b + c}{2}$ pontban „érnek össze”. Mindkét függvényhez megkeressük a saját $\delta$-ját, és a kisebbiket vesszük. Ugyanez a minta bizonyítja a határérték egyértelműségét (indirekten: ha $b < c$ is határérték volna, ugyanaz a függvény egyszerre volna $\frac{b + c}{2}$ alatt és felett).

*Rendőrelv függvényekre.* Ha egy pontozott környezetben $f \le h \le g$, és $\lim f = \lim g = b$, akkor $\lim h = b$. A 83. e)–f) feladatban ez a $0 \le x\{1/x\} \le x$ ($x > 0$) becsléssel adódik.

*Sorozatos megfelelő.* Sorozatokra: ha $a_n \to a$, $b_n \to b$ és $a < b$, akkor egy indextől $a_n < b_n$. Az átviteli elv a függvényes és a sorozatos változatot összeköti.
:::

## 87. feladat

Legyen $R(x)$ a Riemann-függvény, azaz $R(0) = 1$, $R(p/q) = 1/q$, ha $x = p/q$, $(p, q) = 1$, $q > 0$, végül $R(x) = 0$, ha $x \notin \mathbb{Q}$. Periodikus-e $R$? Hol vannak a globális és lokális maximum- és minimumhelyei? $\lim\limits_{x \to 0} R(x) = ?$, $\lim\limits_{x \to \sqrt{2}} R(x) = ?$ és $\lim\limits_{x \to 0} \operatorname{sgn}^2(R(x)) = ?$

**Megoldás.**

**Periodicitás:** $R$ periodikus, periódusa $1$. Ha $x \notin \mathbb{Q}$, akkor $x + 1 \notin \mathbb{Q}$. Ha $x = \frac pq$ egyszerűsíthetetlen, akkor $x + 1 = \frac{p + q}{q}$, és $(p + q, q) = (p, q) = 1$, tehát a nevező ugyanaz; és $R(0) = R(1) = 1$ (a $0 = \frac01$ konvencióval összhangban). A legkisebb pozitív periódus $1$: nem egész racionális $r = \frac ab$ ($b > 1$) esetén $R(0 + r) = \frac1b \ne 1 = R(0)$, irracionális $r$-re $R(r) = 0 \ne R(0)$.

**Globális szélsőértékek:** maximum értéke $1$, az egész számokban ($q = 1$); minimum értéke $0$, minden irracionális pontban.

**Lokális szélsőértékek:**

- Minden racionális $\frac pq$ **szigorú lokális maximumhely**: egy korlátos intervallumban csak véges sok legfeljebb $q$ nevezőjű tört van, így $\frac pq$-nak van olyan pontozott környezete, amelyben minden pontban $R < \frac1q$.
- Minden irracionális pont **lokális (nem szigorú) minimumhely**, hiszen ott $R = 0$ a globális minimum.
- Irracionális pont nem lokális maximumhely (közelében vannak pozitív értékek), racionális pont nem lokális minimumhely (közelében vannak irracionálisok, ahol $R = 0$).

**Határértékek:** minden $a \in \mathbb{R}$-re $\lim_{x \to a} R(x) = 0$. Adott $\varepsilon > 0$-hoz az $(a - 1, a + 1)$ intervallumban csak véges sok olyan tört van, amelynek nevezője $\le 1/\varepsilon$; legyen $\delta$ kisebb, mint ezek $a$-tól vett (nem nulla) távolsága. Ekkor $0 < |x - a| < \delta$ esetén $0 \le R(x) < \varepsilon$. Tehát
$$\lim_{x \to 0} R(x) = 0, \qquad \lim_{x \to \sqrt2} R(x) = 0.$$

$\operatorname{sgn}^2(R(x)) = 1$, ha $x \in \mathbb{Q}$, és $0$, ha $x \notin \mathbb{Q}$ – ez a Dirichlet-függvény. **$\lim_{x \to 0} \operatorname{sgn}^2(R(x))$ nem létezik**, mert $0$ minden pontozott környezetében felveszi a $0$ és az $1$ értéket is.

::: elmelet
**Elméleti háttér — a Riemann- és a Dirichlet-függvény.**

*Kulcslemma.* Bármely korlátos $[c, d]$ intervallumban csak **véges sok** olyan racionális szám van, amelynek (egyszerűsített) nevezője legfeljebb $N$: minden $q \le N$ nevezőhöz legfeljebb $q(d - c) + 1$ számláló tartozik.

*Határérték mindenütt $0$.* Adott $\varepsilon$-hoz csak a véges sok, $\frac1\varepsilon$-nál nem nagyobb nevezőjű tört „rossz”; $\delta$ legyen kisebb, mint ezeknek az $a$-tól vett (pozitív) távolsága. A $\delta$-környezetben (az $a$ kivételével) minden pontban $0 \le R(x) < \varepsilon$. Tehát $\lim_{x \to a}R(x) = 0$ **minden** $a$-ra.

*Folytonosság.* $R$ pontosan ott folytonos, ahol $R(a) = 0$, vagyis az **irracionális** pontokban; a racionális pontokban megszüntethető szakadása van (a határérték $0$, a függvényérték pozitív). Érdekes: ez a függvény Riemann-integrálható (integrálja $0$), pedig megszámlálhatóan sok szakadása van — a Lebesgue-kritérium szerint a szakadási pontok „nullmértékű” halmaza nem akadálya az integrálhatóságnak. (Fordított szerepű függvény — racionálisokban folytonos, irracionálisokban szakad — viszont nem létezik, a Baire-tétel miatt.)

*Dirichlet-függvény.* $D(x) = 1$, ha $x \in \mathbb{Q}$, és $0$ különben. Mivel a racionálisak és az irracionálisak is sűrűek, minden pont minden környezetében felveszi mindkét értéket, így **sehol nincs határértéke**, és sehol sem folytonos. A feladatban $\operatorname{sgn}^2(R(x)) = D(x)$: egy kompozíció, amely a „mindenütt határértéke van” $R$-ből a „sehol nincs határértéke” $D$-t csinálja. Ez mutatja, hogy a határérték és a kompozíció felcserélése nem automatikus: $\lim_{x\to 0} \operatorname{sgn}^2(R(x)) \ne \operatorname{sgn}^2(\lim_{x\to0} R(x)) = 0$, mert a $\operatorname{sgn}^2$ függvény a $0$-ban nem folytonos.

*Kompozíció határértéke.* Ha $\lim_{x\to a} g(x) = c$ és $\lim_{y \to c} f(y) = d$, akkor $\lim_{x\to a} f(g(x)) = d$ — **feltéve**, hogy $g(x) \ne c$ egy pontozott környezetben, vagy $f$ folytonos $c$-ben. Itt egyik sem teljesül ($R(x) = 0$ az irracionálisokban, és $\operatorname{sgn}^2$ nem folytonos $0$-ban), ezért nem alkalmazható.
:::

## Röpzhra

**Definíciók:** konvexitás, gyenge konvexitás.

**Tételek:** konvexitás karakterizálása $m_a(x)$-szel, Jensen-egyenlőtlenség (két változat), számtani és négyzetes közép közötti egyenlőtlenség.

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

# Analízis 1 – 10. feladatlap – megoldások

### I. Mat. BSc Analízis 1 · 2026/27 első félév

> **Évfolyamzh:** november 3-a kedd, 10:00–12:00, helyszín: Északi Tömb 0.83 Eötvös terem (keddi előadás helyszíne).

## 99. feladat

Bizonyítsuk be, hogy ha $f$ folytonos egy pontban, akkor $|f|$ is folytonos ugyanitt. Fordítva, $|f|$ folytonosságából következik-e $f$ folytonossága?

**Megoldás.**

**$f$ folytonos $\Rightarrow$ $|f|$ folytonos.** A fordított háromszög-egyenlőtlenség szerint
$$\big||f(x)| - |f(a)|\big| \le |f(x) - f(a)|.$$
Ha $\varepsilon > 0$-hoz $\delta$ olyan, hogy $|x - a| < \delta$, $x \in D(f)$ esetén $|f(x) - f(a)| < \varepsilon$, akkor ugyanez a $\delta$ jó $|f|$-re is. $\blacksquare$

**A megfordítás nem igaz.** Legyen
$$f(x) = \begin{cases} 1 & \text{ha } x \ge 0, \\ -1 & \text{ha } x < 0. \end{cases}$$
Ekkor $|f| \equiv 1$ mindenhol folytonos, de $f$ a $0$-ban nem folytonos ($f(-\frac1n) = -1 \not\to 1 = f(0)$). (Sőt, $f(x) = 1$, ha $x \in \mathbb{Q}$, és $-1$ különben: ez sehol sem folytonos, $|f|$ pedig konstans.)

(Egy esetben mégis igaz a megfordítás: ha $f(a) = 0$. Ekkor $|f(x) - f(a)| = \big||f(x)| - |f(a)|\big|$, így $|f|$ folytonossága $a$-ban éppen $f$ folytonossága.)

::: elmelet
**Elméleti háttér — kompozíció és folytonosság; mit őriz meg a $|\cdot|$.**

*Kompozíció.* Ha $f$ folytonos $a$-ban és $h$ folytonos $f(a)$-ban, akkor $h \circ f$ folytonos $a$-ban. *Bizonyítás:* $\varepsilon$-hoz $h$ folytonossága ad $\eta$-t ($|u - f(a)| < \eta \Rightarrow |h(u) - h(f(a))| < \varepsilon$), $\eta$-hoz $f$ folytonossága ad $\delta$-t ($|x - a| < \delta \Rightarrow |f(x) - f(a)| < \eta$). A $h(u) = |u|$ esetben $\eta = \varepsilon$, mert $|u|$ 1-Lipschitz (fordított háromszög-egyenlőtlenség).

*Lipschitz-függvények.* Ha $|h(u) - h(v)| \le L|u - v|$, akkor $h \circ f$ minden olyan pontban folytonos, ahol $f$, és $\delta$ a $\frac{\varepsilon}{L}$-hez tartozó $f$-beli $\delta$. Ilyen az $|\cdot|$ ($L = 1$), a $\max(\cdot, 0)$, a $\sin$ és a $\cos$ ($L = 1$).

*A megfordítás és a „$0$ pont”.* A megfordítás általában hamis, mert $|\cdot|$ nem injektív. Ott viszont igaz, ahol $f(a) = 0$: az $|f(x) - 0| = ||f(x)| - 0|$ azonosság miatt a két folytonosság ugyanazt jelenti. Más pontokban is igaz, ha tudjuk, hogy $f$ egy környezetben állandó előjelű (ott $f = \pm|f|$). A tanulság: $|f|$ folytonossága csak az előjelváltások helyén „hallgat el” információt.

*A $\pm 1$ értékű Dirichlet-típusú példa.* $f = 2D - 1$ sehol sem folytonos, $|f| \equiv 1$ mindenhol az. Ez a legélesebb ellenpélda: a kompozíció egy *mindenhol* szakadó függvényből *mindenhol* folytonosat csinál.

*Kapcsolat a pozitív és negatív részhez.* $f^+ = \max(f, 0)$ és $f^- = \max(-f, 0)$; $f = f^+ - f^-$ és $|f| = f^+ + f^-$. A 100. feladat szerint ezek folytonosak, ha $f$ az — ezt az integrálelméletben (a Lebesgue-integrál felépítésénél) gyakran használjuk.
:::

## 100. feladat

Bizonyítsuk be, hogy ha $f$ és $g$ folytonosak az $a$ pontban, akkor $\max(f, g)$ és $\min(f, g)$ is azok.

**Megoldás.**

Minden $u, v \in \mathbb{R}$-re
$$\max(u, v) = \frac{u + v + |u - v|}{2}, \qquad \min(u, v) = \frac{u + v - |u - v|}{2}$$
(ha $u \ge v$, a számláló $2u$, illetve $2v$; ha $u < v$, fordítva). Így
$$\max(f, g) = \frac{f + g + |f - g|}{2}, \qquad \min(f, g) = \frac{f + g - |f - g|}{2}.$$
$f - g$ folytonos $a$-ban, a 99. feladat szerint $|f - g|$ is, és folytonos függvények összege, különbsége, konstansszorosa folytonos. $\blacksquare$

::: elmelet
**Elméleti háttér — a $\max$ és $\min$ algebrai alakja; hálóműveletek.**

*A képlet eredete.* Két szám számtani közepe $\frac{u + v}{2}$, a fél távolságuk $\frac{|u - v|}{2}$; a nagyobbik szám a közép plusz a fél távolság, a kisebbik a közép mínusz a fél távolság:
$$\max(u, v) = \frac{u + v}{2} + \frac{|u - v|}{2}, \qquad \min(u, v) = \frac{u + v}{2} - \frac{|u - v|}{2}.$$

*A folytonosság öröklődése.* Mivel a $\max$ és a $\min$ a $+$, $-$, $\cdot\frac12$ és $|\cdot|$ műveletekből épül fel, és ezek mind „folytonosságot őrzők”, a $\max(f, g)$ és $\min(f, g)$ is folytonos, ahol $f$ és $g$ az. Indukcióval: véges sok folytonos függvény maximuma és minimuma folytonos.

*Végtelen sok függvény?* Végtelen sok folytonos függvény szuprémuma már nem feltétlenül folytonos: $f_n(x) = \min(1, nx)$ a $[0, 1]$-en, $\sup_n f_n = 1$ az $x > 0$ helyeken és $0$ az $x = 0$-ban — szakad. (Folytonos függvények szuprémuma mindig **alulról félig folytonos**.)

*Lipschitz-tulajdonság.* $|\max(u, v) - \max(u', v')| \le \max(|u - u'|, |v - v'|)$, vagyis a $\max$ egy „1-Lipschitz” kétváltozós függvény; ez a becslés közvetlenül is adja a folytonosságot.

*Alkalmazások.* A **vágás**: $\max(m, \min(f, M))$ az $f$-et az $[m, M]$ sávba „vágja”, és megőrzi a folytonosságot. Az **abszolút érték** maga is $\max(f, -f)$. Darabonként lineáris függvények (töröttvonalak) mindig felírhatók lineáris függvények $\max$-$\min$ kombinációjaként — így folytonosságuk is innen jön.
:::

## 101. feladat

Bizonyítsuk be, hogy ha $f, g \in C[0, 1]$ és $\forall x \in \mathbb{Q} \cap [0, 1]$-re $f(x) = g(x)$, akkor $\forall x \in [0, 1]$-re $f(x) = g(x)$.

**Megoldás.**

Legyen $x \in [0, 1]$ tetszőleges. A racionális számok sűrűk, ezért van olyan $r_n \in \mathbb{Q} \cap [0, 1]$ sorozat, amelyre $r_n \to x$. (Pl. $r_n = [nx]/n$: $0 \le r_n \le x$ és $x - \frac1n < r_n \le x$.) $f$ és $g$ folytonos $x$-ben, így az átviteli elv szerint
$$f(x) = \lim_{n \to \infty} f(r_n) = \lim_{n \to \infty} g(r_n) = g(x),$$
mert $f(r_n) = g(r_n)$ minden $n$-re. $\blacksquare$

::: elmelet
**Elméleti háttér — sűrű halmaz és folytonos függvények egyértelműsége.**

*A tétel.* Ha $f, g$ folytonosak egy $I$ intervallumon, és egy $I$-ben sűrű $S$ halmazon egyenlők, akkor $I$-n mindenhol egyenlők. Ekvivalensen: egy folytonos függvény, amely egy sűrű halmazon $0$, azonosan $0$.

*A bizonyítás két eleme.*

1. **Sűrűség $\Rightarrow$ approximáló sorozat:** minden $x \in I$-hez van $r_n \in S$, $r_n \to x$. A racionálisokra explicit is: $r_n = \frac{[nx]}{n}$, hiszen $nx - 1 < [nx] \le nx$ miatt $x - \frac1n < r_n \le x$.
2. **Folytonosság $\Rightarrow$ sorozatos megőrzés:** $f(r_n) \to f(x)$ (átviteli elv).

*Következmények és alkalmazások.*

- **Függvényegyenletek:** ha $f$ folytonos és $f(x + y) = f(x) + f(y)$ (Cauchy-egyenlet), akkor előbb az egészekre, majd a racionálisokra $f(q) = qf(1)$ adódik, és a tétel szerint $f(x) = cx$ minden valós $x$-re. Folytonosság nélkül vannak „vad” megoldások is (kiválasztási axiómával).
- **A hatványozás kiterjesztése:** $a^x$-et először racionális $x$-re definiáljuk, majd valós $x$-re folytonos kiterjesztéssel; a tétel garantálja, hogy legfeljebb egy ilyen folytonos kiterjesztés van.
- **Számosság:** egy folytonos $\mathbb R \to \mathbb R$ függvényt a racionális pontokon felvett értékei (megszámlálhatóan sok szám) meghatároznak, ezért a folytonos függvények halmaza kontinuum számosságú — „sokkal kevesebb”, mint az összes függvényé.

*Miért kell a folytonosság?* A Dirichlet-függvény és a $0$ függvény a racionálisokon nem egyezik, de az irracionálisokon (ami szintén sűrű) igen — és mégis különbözők. A folytonosság nélkül egy sűrű halmazon felvett értékek semmit sem árulnak el a többiről.
:::

## 102. feladat

Tegyük fel, hogy $f$ monoton növő $[a, b]$-ben és minden $f(a)$ és $f(b)$ közötti értéket felvesz. Mutassuk meg, hogy $f \in C[a, b]$.

**Megoldás.**

**Jobbról folytonosság $c \in [a, b)$-ben.** Legyen $\varepsilon > 0$.

- Ha $f(c) = f(b)$, akkor a monotonitás miatt $f$ konstans $[c, b]$-n, így $c$-ben jobbról folytonos.
- Ha $f(c) < f(b)$, legyen $y = \min\{f(c) + \frac\varepsilon2,\ f(b)\}$. Ekkor $f(a) \le f(c) < y \le f(b)$, tehát a feltétel szerint van olyan $\xi \in [a, b]$, amelyre $f(\xi) = y$. Mivel $f(\xi) > f(c)$ és $f$ monoton nő, $\xi > c$. Legyen $\delta = \xi - c > 0$. Ha $c \le x < c + \delta$, akkor
$$f(c) \le f(x) \le f(\xi) = y < f(c) + \varepsilon.$$
  Tehát $|f(x) - f(c)| < \varepsilon$.

**Balról folytonosság $c \in (a, b]$-ben** ugyanígy, $y = \max\{f(c) - \frac\varepsilon2,\ f(a)\}$ választással: ha $f(c) = f(a)$, akkor $f$ konstans $[a, c]$-n; különben $f(a) \le y < f(c)$, a felvevő hely $\xi < c$, és $\xi < x \le c$ esetén $f(c) - \varepsilon < y = f(\xi) \le f(x) \le f(c)$.

Mindkét oldalról folytonos minden belső pontban, a végpontokban a megfelelő oldalról, tehát $f \in C[a, b]$. $\blacksquare$

(Szemléletesen: monoton függvénynek csak **ugrásos** szakadása lehet, és egy ugrás kihagy egy egész értékintervallumot. Ezt zárja ki a feltétel.)

::: elmelet
**Elméleti háttér — monoton függvények: féloldali határértékek, ugrások, Darboux-tulajdonság.**

*Féloldali határértékek létezése.* Ha $f$ monoton nő $I$-n és $c$ belső pont, akkor
$$f(c - 0) = \sup_{x < c} f(x), \qquad f(c + 0) = \inf_{x > c} f(x),$$
és $f(c - 0) \le f(c) \le f(c + 0)$. *Bizonyítás:* a $\{f(x) : x < c\}$ halmaz felülről korlátos ($f(c)$-vel), szuprémuma $s$; adott $\varepsilon$-hoz van $x_0 < c$, $f(x_0) > s - \varepsilon$, és a monotonitás miatt $x_0 < x < c$-re $s - \varepsilon < f(x) \le s$.

*A szakadások szerkezete.* Monoton függvény $c$-ben pontosan akkor folytonos, ha $f(c - 0) = f(c) = f(c + 0)$; különben **ugrás** van (elsőfajú szakadás), és az ugrás nagysága $f(c + 0) - f(c - 0) > 0$. Másodfajú szakadása monoton függvénynek nem lehet.

*Ugrás $\Rightarrow$ kihagyott értékek.* Ha $f(c) < f(c + 0)$, akkor az $(f(c), f(c + 0))$ intervallum értékeit $f$ nem veszi fel: $x \le c$-re $f(x) \le f(c)$, $x > c$-re $f(x) \ge f(c + 0)$. Ez a feladat érvelésének „belső magja”: a Darboux-tulajdonság kizárja az ugrásokat.

*Megszámlálható sok szakadás.* Az ugrások hézagai páronként diszjunkt nyílt intervallumok, mindegyikben van racionális szám, így egy monoton függvény szakadási helyeinek halmaza legfeljebb megszámlálható. (Lehet végtelen és sűrű is: $f(x) = \sum_{q_n < x} 2^{-n}$, ahol $(q_n)$ a racionálisok felsorolása — ez szigorúan nő, és pontosan a racionálisokban szakad.)

*Összefoglalva monoton $f : [a, b] \to \mathbb R$-re:* folytonos $\iff$ Darboux-tulajdonságú $\iff$ értékkészlete az $[f(a), f(b)]$ intervallum. Általános függvényekre az első implikáció ($\Rightarrow$, Bolzano) igaz, a második nem (110. feladat).
:::

## 103. feladat

Van-e olyan $(5, +\infty)$-en folytonos függvény, melyre $\lim\limits_{x \to 5+0} f(x) = +\infty$, de $f$ az 5 egyetlen pontozott jobboldali környezetében sem monoton.

**Megoldás.**

**Van.** Legyen
$$f(x) = \frac{1}{x - 5}\left(2 + \sin\frac{1}{x - 5}\right), \qquad x > 5.$$

- *Folytonos* $(5, \infty)$-en, mert folytonos függvények szorzata és kompozíciója.
- *$+\infty$-hez tart:* $2 + \sin(\dots) \ge 1$, ezért $f(x) \ge \frac{1}{x - 5} \to +\infty$, ha $x \to 5 + 0$.
- *Nem monoton* egyetlen $(5, 5 + \delta)$ környezetben sem. Legyen $t = \frac{1}{x - 5}$, ekkor $f = t(2 + \sin t)$, és $x \mapsto t$ szigorúan fogyó bijekció $(5, 5 + \delta) \to (\frac1\delta, \infty)$. Legyen $t_n = \frac\pi2 + 2n\pi$ és $s_n = \frac{3\pi}2 + 2n\pi$. Ekkor
$$t_n(2 + \sin t_n) = 3t_n = \tfrac{3\pi}2 + 6n\pi, \qquad s_n(2 + \sin s_n) = s_n = \tfrac{3\pi}2 + 2n\pi.$$
  $n \ge 1$-re $t_n < s_n < t_{n+1}$, és a hozzájuk tartozó függvényértékek: nagy, kicsi, nagy ($\tfrac{3\pi}2 + 6n\pi > \tfrac{3\pi}2 + 2n\pi < \tfrac{3\pi}2 + 6(n+1)\pi$). Adott $\delta$-hoz $n$-et elég nagynak választva $t_n > \frac1\delta$, így a megfelelő három $x$ pont $(5, 5 + \delta)$-ban van. Ott $f$ értékei fel-le-fel váltakoznak, tehát $f$ nem monoton.

::: elmelet
**Elméleti háttér — végtelen határérték, oszcilláció és „lokális” tulajdonságok.**

*A határérték mint „aszimptotikus” információ.* $\lim_{x\to 5+0}f(x) = +\infty$ azt jelenti, hogy minden $P$-hez van egy jobboldali félkörnyezet, ahol $f > P$. Ez a függvény *nagyságáról* szól, nem a *változásáról*: a monotonitás, a deriválhatóság, a konvexitás mind független tőle.

*A konstrukció elve: „alsó becslés $\times$ oszcilláló, korlátos, pozitív tényező”.* Ha $g(x) \to +\infty$ és $1 \le h(x) \le 3$, akkor $g(x)h(x) \ge g(x) \to +\infty$. A $h(x) = 2 + \sin\frac{1}{x - 5}$ minden környezetben végtelen sokszor oszcillál $1$ és $3$ között, és a szorzat ezt az oszcillációt — felnagyítva — örökli. A $t = \frac{1}{x - 5}$ helyettesítés a „$x \to 5 + 0$” vizsgálatot „$t \to +\infty$”-re alakítja, ahol az oszcilláció szokásos periodikus.

*Nem monotonitás igazolása.* Egy függvény egy intervallumon **nem monoton**, ha van benne $x_1 < x_2 < x_3$, amelyre $f(x_2) > \max(f(x_1), f(x_3))$ vagy $f(x_2) < \min(f(x_1), f(x_3))$ (egy „csúcs” vagy „völgy”). A feladatban ilyen hármasok minden félkörnyezetben vannak.

*Kapcsolódó jelenségek.*

- $x\sin\frac1x \to 0$, de a $0$ egyetlen környezetében sem monoton;
- $x^2\sin\frac1x$ ($0$-ban $0$) differenciálható a $0$-ban ($f'(0) = 0$), mégsem monoton semmilyen környezetben — tehát $f'(0) > 0$ sem garantálná a lokális monotonitást, ha $f'$ nem folytonos (vö. $x + 2x^2\sin\frac1x$);
- folytonos, sehol sem monoton függvények is léteznek (Weierstrass sehol sem differenciálható függvénye).

*Tanulság.* A határérték-definíció „$\forall$ korlát $\exists$ környezet” szerkezete semmit sem mond a környezeten belüli viselkedésről. Ha monotonitásra van szükség (például integrálok becslésénél), azt külön kell igazolni.
:::

## 104. feladat

a) Legyen $f$ konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = \infty$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

b\*) Legyen $f$ szigorúan konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = \infty$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

c) Legyen $f$ konvex $\mathbb{R}$-en és tegyük fel, hogy $\lim\limits_{x \to -\infty} f(x) = 0$. Lehetséges-e, hogy $\lim\limits_{x \to \infty} f(x) = -\infty$?

**Megoldás.**

**a) Igen.** $f(x) = -x$ lineáris, tehát konvex (a konvexitási egyenlőtlenség egyenlőséggel teljesül), és $\lim_{-\infty} f = +\infty$, $\lim_{+\infty} f = -\infty$.

**b) Igen.** Legyen $f(x) = \sqrt{x^2 + 1} - 2x$.

- *Határértékek:* $x < 0$-ra $f(x) \ge -2x \to +\infty$ ($x \to -\infty$). $x \ge 0$-ra $\sqrt{x^2 + 1} \le x + 1$ (négyzetre emelve $x^2 + 1 \le x^2 + 2x + 1$), így $f(x) \le 1 - x \to -\infty$ ($x \to +\infty$).
- *Szigorú konvexitás:* a $-2x$ lineáris tag nem változtat rajta, elég $h(x) = \sqrt{x^2 + 1}$-re belátni. Legyen $x \ne y$, $\lambda \in (0, 1)$, $\mu = 1 - \lambda$. Mindkét oldal pozitív, ezért elég a négyzeteket összehasonlítani. Az $1 = (\lambda + \mu)^2$ felírással
$$h(\lambda x + \mu y)^2 = \lambda^2 x^2 + \mu^2 y^2 + 2\lambda\mu xy + \lambda^2 + \mu^2 + 2\lambda\mu,$$
$$\big(\lambda h(x) + \mu h(y)\big)^2 = \lambda^2(x^2 + 1) + \mu^2(y^2 + 1) + 2\lambda\mu\sqrt{(x^2 + 1)(y^2 + 1)}.$$
  A különbség $2\lambda\mu\big[\sqrt{(x^2 + 1)(y^2 + 1)} - (xy + 1)\big]$. Mivel $(x^2 + 1)(y^2 + 1) - (xy + 1)^2 = (x - y)^2 > 0$, a gyök nagyobb $|xy + 1| \ge xy + 1$-nél, tehát a különbség pozitív: $h(\lambda x + \mu y) < \lambda h(x) + \mu h(y)$.

(Ha az exponenciális függvény már ismert: $f(x) = e^{-x} - x$ is jó.)

**c) Nem.** Megmutatjuk, hogy ekkor $f$ monoton növő és $f \ge 0$.

Konvex függvényre $z < x < y$ esetén a húrok meredeksége nő:
$$\frac{f(x) - f(z)}{x - z} \le \frac{f(y) - f(x)}{y - x}.$$
Tegyük fel, hogy valamely $x < y$-ra $f(x) > f(y)$, azaz $m = \frac{f(x) - f(y)}{y - x} > 0$. Ekkor minden $z < x$-re $\frac{f(x) - f(z)}{x - z} \le -m$, vagyis
$$f(z) \ge f(x) + m(x - z) \xrightarrow{z \to -\infty} +\infty,$$
ellentmondásban $\lim_{-\infty} f = 0$-val. Tehát $f$ monoton növő. Ekkor $z < x$-re $f(z) \le f(x)$, és $z \to -\infty$-nel $0 \le f(x)$. Így $f \ge 0$, és $\lim_{+\infty} f = -\infty$ lehetetlen. (Sőt, $\lim_{+\infty} f$ létezik, és $[0, \infty]$-beli.)

::: elmelet
**Elméleti háttér — konvex függvények globális viselkedése.**

*A három húr lemma.* Konvex $f$-re $z < x < y$ esetén
$$\frac{f(x) - f(z)}{x - z} \le \frac{f(y) - f(z)}{y - z} \le \frac{f(y) - f(x)}{y - x}.$$
Következmény: a $x \mapsto \frac{f(x) - f(x_0)}{x - x_0}$ meredekség monoton nő, így konvex függvénynek minden belső pontban léteznek egyoldali deriváltjai, és $f'_-(x) \le f'_+(x)$.

*Konvex függvény alakja a végtelenben.* Egy $\mathbb{R}$-en konvex függvény a következő három típus egyike:

1. monoton nő (ha minden húr meredeksége $\ge 0$);
2. monoton fogy;
3. előbb fogy, aztán nő (van minimumhelye vagy minimumtartománya).

Ha valahol negatív meredekségű húr van, akkor attól balra a függvény legalább lineárisan nő a $-\infty$ felé haladva ($f(z) \ge f(x) + m(x - z)$): ez a c) rész kulcsa. Ha tehát $\lim_{-\infty}f$ véges, nincs negatív meredekség, és $f$ monoton nő.

*Konvex függvény és érintő.* Konvex függvény grafikonja minden támasztóegyenese (érintője) **felett** van: $f(x) \ge f(x_0) + m(x - x_0)$ minden $m \in [f'_-(x_0), f'_+(x_0)]$-ra. Ezért konvex függvény legalább egy lineáris függvénnyel alulról becsülhető — de ez a lineáris függvény lehet csökkenő, így $+\infty$-ben $-\infty$-hez tarthat (a)–b) rész).

*Szigorú konvexitás bizonyítása.* A b) részben a négyzetre emelés ötlete: mindkét oldal pozitív, így az egyenlőtlenség a négyzetek közötti egyenlőtlenséggel ekvivalens, és az a **Cauchy–Schwarz-egyenlőtlenségre** vezet: $(x^2 + 1)(y^2 + 1) \ge (xy + 1)^2$, egyenlőség pontosan $x = y$-ra. Geometriailag $\sqrt{x^2 + 1}$ a $(x, 1)$ vektor hossza, és a konvexitás a háromszög-egyenlőtlenség: $\|\lambda u + \mu v\| \le \lambda\|u\| + \mu\|v\|$ (minden norma konvex). Ha a deriválás már ismert: $h''(x) = (x^2 + 1)^{-3/2} > 0$.

*Lineáris tag hozzáadása.* $f$ (szigorúan) konvex $\iff$ $f + (ax + b)$ (szigorúan) konvex — a konvexitás csak a „görbületről” szól, egy lineáris tag pedig nem görbít.
:::

## 105. feladat

Mutassuk meg, hogy az $x^7 - 3x^2 + 5 = 0$ egyenletnek van valós gyöke.

**Megoldás.**

$p(x) = x^7 - 3x^2 + 5$ polinom, tehát mindenhol folytonos.
$$p(-1) = -1 - 3 + 5 = 1 > 0, \qquad p(-2) = -128 - 12 + 5 = -135 < 0.$$
A Bolzano-tétel szerint van $c \in (-2, -1)$, amelyre $p(c) = 0$. $\blacksquare$

(Általában: minden páratlan fokszámú valós polinomnak van valós gyöke, mert $\pm\infty$-ben ellentétes előjelű végtelenhez tart.)

::: elmelet
**Elméleti háttér — a Bolzano-tétel és a gyökök lokalizálása.**

*Bolzano-tétel.* Ha $f \in C[a, b]$ és $f(a)f(b) < 0$, akkor van $c \in (a, b)$, $f(c) = 0$. *Bizonyítás (intervallumfelezés):* legyen $[a_0, b_0] = [a, b]$; ha $f$ a felezőpontban $0$, kész; különben azt a felét tartjuk meg, amelynek végpontjaiban $f$ előjele különböző. A Cantor-tulajdonság adta $c$ közös pontra $f(a_n) \to f(c)$ és $f(b_n) \to f(c)$, valamint $f(a_n)f(b_n) < 0$, így $f(c)^2 \le 0$, azaz $f(c) = 0$.

*Numerikus módszer.* A bizonyítás egyben algoritmus (**bisection**): $n$ lépés után a gyököt $\frac{b - a}{2^n}$ pontossággal ismerjük. A feladatban: $p(-1) = 1$, $p(-2) = -135$, $p(-1{,}5) \approx -17{,}1 - 6{,}75 + 5 < 0$, tehát a gyök a $(-1{,}5;\ -1)$-ben van; $p(-1{,}25) \approx -4{,}77 - 4{,}69 + 5 < 0$, így $(-1{,}25;\ -1)$-ben; és így tovább.

*Páratlan fokú polinomok.* Ha $\deg p = n$ páratlan, a főegyüttható pozitív, akkor $p(x) \to +\infty$ ($x \to \infty$) és $p(x) \to -\infty$ ($x \to -\infty$), így van $x_1$, ahol $p < 0$, és $x_2$, ahol $p > 0$; a Bolzano-tétel szerint van valós gyök. Páros fokra ez nem igaz ($x^2 + 1$).

*Hány gyök van?* A Bolzano-tétel csak létezést ad. A gyökök számához más eszköz kell: monotonitás (szigorúan monoton függvénynek legfeljebb egy gyöke van), a derivált előjelvizsgálata, vagy a Descartes-féle előjelszabály. Itt $p'(x) = 7x^6 - 6x$, és a vizsgálat azt mutatja, hogy $p$-nek pontosan egy valós gyöke van.

*Miért fontos a folytonosság és az intervallum?* $f(x) = \frac1x$ a $[-1, 1]$ végpontjain ellentétes előjelű, mégsincs gyöke (nem folytonos a $0$-ban). A $\mathbb{Q}$-n értelmezett $x^2 - 2$ a $[1, 2] \cap \mathbb Q$ végpontjain ellentétes előjelű, és nincs racionális gyöke — a Bolzano-tétel a valós számok teljességén múlik.
:::

## 106. feladat

Tegyük föl, hogy $f \in C[a, b]$ és $x_1, \dots, x_n \in [a, b]$. Mutassuk meg, hogy $\exists\, c \in [a, b]$, hogy $f(c) = \dfrac{f(x_1) + \dots + f(x_n)}{n}$.

**Megoldás.**

Legyen $A = \frac{f(x_1) + \dots + f(x_n)}{n}$, és válasszunk indexeket úgy, hogy $f(x_i) = \min_k f(x_k)$ és $f(x_j) = \max_k f(x_k)$. A számtani közép a legkisebb és a legnagyobb érték között van:
$$f(x_i) \le A \le f(x_j).$$
Ha $x_i = x_j$, akkor minden érték egyenlő, és $c = x_i$ jó. Különben $f$ folytonos az $x_i$ és $x_j$ által határolt zárt intervallumon, amely része $[a, b]$-nek. A Bolzano-tétel (közbülsőérték-tétel) szerint ott felveszi az $f(x_i)$ és $f(x_j)$ közötti $A$ értéket. $\blacksquare$

::: elmelet
**Elméleti háttér — a közbülsőérték-tétel és az átlagérték.**

*Közbülsőérték-tétel.* Ha $f \in C[\alpha, \beta]$ és $y$ az $f(\alpha)$ és $f(\beta)$ között van, akkor van $c \in [\alpha, \beta]$, $f(c) = y$. (A Bolzano-tétel az $f - y$ függvényre.) Következmény a Weierstrass-tétellel együtt: **folytonos függvény korlátos zárt intervallumon felvett értékeinek halmaza a $[\min f, \max f]$ intervallum**.

*Az átlag a szélsők között van.* Bármely $u_1, \dots, u_n$ számokra $\min u_i \le \frac{u_1 + \dots + u_n}{n} \le \max u_i$, sőt súlyozott átlagra is ($\sum p_iu_i$, $p_i \ge 0$, $\sum p_i = 1$). Így bármely súlyozott átlag is felvétetik: van $c$, amelyre $f(c) = \sum p_if(x_i)$.

*Az integrál középértéktétele.* Ennek folytonos változata: ha $f \in C[a, b]$, akkor van $c \in [a, b]$, amelyre
$$f(c) = \frac{1}{b - a}\int_a^b f(x)\,dx,$$
mert az integrálközép is a minimum és a maximum között van. A feladat ennek „diszkrét” előzménye: a függvényértékek átlagát a függvény valahol felveszi.

*Miért kell a folytonosság?* Az $f = \operatorname{sgn}$ a $[-1, 1]$-en a $-1$ és $1$ pontokban $-1$, illetve $1$, átlaguk $0$ — ezt ugyan felveszi ($c = 0$), de az $f(x) = 1$ ($x \ge 0$), $-1$ ($x < 0$) függvény a $0$ átlagot nem veszi fel. Ugrásos függvénynél az értékkészlet „lyukas” lehet.

*Általánosítás: összefüggő halmazok.* Folytonos függvény összefüggő halmazt összefüggő halmazba visz (topológiai alak). $\mathbb{R}$-ben az összefüggő halmazok éppen az intervallumok, így a közbülsőérték-tétel ennek speciális esete.
:::

## 107. feladat

Tegyük fel, hogy $f, g \in C[0, 1]$ és $(f(0) - g(0))(f(1) - g(1)) < 0$. Mutassuk meg, hogy az $f(x) = g(x)$ egyenletnek van megoldása a $(0, 1)$-ben.

**Megoldás.**

$h = f - g \in C[0, 1]$, és a feltétel szerint $h(0) \cdot h(1) < 0$. A Bolzano-tétel szerint van $c \in (0, 1)$, amelyre $h(c) = 0$, azaz $f(c) = g(c)$. ($c$ nem végpont, mert $h(0) \ne 0$ és $h(1) \ne 0$.) $\blacksquare$

::: elmelet
**Elméleti háttér — egyenletek megoldhatósága folytonossági érvekkel.**

*Visszavezetés zérushely-keresésre.* Az $f(x) = g(x)$ egyenlet megoldásai a $h = f - g$ zérushelyei. Ha $h$ folytonos és a két végpontban ellentétes előjelű, a Bolzano-tétel megoldást garantál a nyílt intervallumban. A grafikus jelentés: két folytonos grafikon, amelyek közül az egyik a bal végen fent, a jobb végen lent van, metszi egymást.

*Tipikus alkalmazások.*

- **Fixpont:** $f(x) = x$ (109. feladat): $h(x) = f(x) - x$.
- **Egyenlő magasság:** ha egy hegymászó reggel 8-kor indul és este 8-ra felér a csúcsra, másnap reggel 8-kor ugyanazon az úton lefelé indul, akkor van olyan időpont, amikor mindkét napon ugyanott volt ($h = $ a két nap pozícióinak különbsége).
- **Átellenes pontok:** az egyenlítő mentén mindig van két átellenes pont, ahol a hőmérséklet ugyanaz ($h(\theta) = T(\theta) - T(\theta + \pi)$, és $h(\theta + \pi) = -h(\theta)$).
- **Húrtétel:** ha $f \in C[0, 1]$ és $f(0) = f(1)$, akkor minden $n$-re van $x$, amelyre $f(x) = f(x + \frac1n)$ (a $g(x) = f(x + \frac1n) - f(x)$ értékeinek összege a $0, \frac1n, \dots$ pontokban $0$, így nem lehet mind azonos előjelű).

*Szigorú egyenlőtlenség a végpontokban.* A $(f(0) - g(0))(f(1) - g(1)) < 0$ feltétel kizárja, hogy a megoldás egy végpont legyen; ha csak $\le 0$ állna, a megoldás $[0, 1]$-ben lenne (esetleg a végpontban).

*Egyértelműség.* Ha $h$ ráadásul szigorúan monoton, pontosan egy megoldás van. Ez gyakran a deriváltból látszik ($h' > 0$), vagy abból, hogy $f$ nő és $g$ fogy.
:::

## 108. feladat

a) T.f.h. $f \in C[a, b]$. Mutassuk meg, hogy ha $f$ minden $R(f)$-beli értéket pontosan egyszer vesz fel, akkor szigorúan monoton.

b) Létezik-e $f \in C[a, b]$, mely minden $R(f)$-beli értéket pontosan kétszer vesz fel?

c) T.f.h. $f \in C[a, b]$. Mutassuk meg, hogy ha $f$ minden $R(f)$-beli értéket legfeljebb kétszer vesz fel, akkor három szigorúan monoton darabból áll.

**Megoldás.**

**a)** A feltétel szerint $f$ injektív.

*Lemma: ha $x < y < z$, akkor $f(y)$ szigorúan $f(x)$ és $f(z)$ között van.* A három érték injektivitás miatt különböző. Tegyük fel, hogy $f(y) > \max\{f(x), f(z)\}$, és legyen $\max\{f(x), f(z)\} < v < f(y)$. A Bolzano-tétel szerint $v$-t $f$ felveszi $(x, y)$-ban és $(y, z)$-ben is, ez két különböző hely – ellentmondás. Ugyanígy $f(y) < \min\{f(x), f(z)\}$ sem lehet.

Legyen most (pl.) $f(a) < f(b)$; a másik eset $-f$-re visszavezethető. Belátjuk, hogy $x < y$ esetén $f(x) < f(y)$.

- A lemma szerint minden $a < x < b$-re $f(a) < f(x) < f(b)$. Így ha $x = a$ vagy $y = b$, kész vagyunk.
- Ha $a < x < y$: a lemma az $(a, x, y)$ hármasra azt adja, hogy $f(x)$ szigorúan $f(a)$ és $f(y)$ között van. Mivel $f(a) < f(x)$, csak $f(x) < f(y)$ lehet. $\blacksquare$

**b) Nem létezik.** Tegyük fel, hogy $f$ ilyen. $f$ nem konstans (különben minden értéket végtelen sokszor venne fel), így a Weierstrass-tétel szerinti $m = \min f$ és $M = \max f$ különbözők. Mindkettőt pontosan két helyen veszi fel, ez négy különböző pont, közülük legfeljebb kettő végpont. Van tehát olyan szélsőértékhely, amely $(a, b)$-be esik. Feltehetjük, hogy ez maximumhely (különben $-f$-et nézzük), legyen ez $\xi$, a másik maximumhely $\eta$. Feltehetjük azt is, hogy $\eta > \xi$ (különben az $x \mapsto a + b - x$ tükrözést alkalmazzuk).

Mivel $M$-et csak $\xi$-ben és $\eta$-ban veszi fel, $f(a) < M$ ($a < \xi$), és a $w = \frac{\xi + \eta}2$ pontban is $f(w) < M$. Legyen
$$\max\{f(a), f(w)\} < y < M.$$
A Bolzano-tétel szerint $f$ felveszi $y$-t az $(a, \xi)$, a $(\xi, w)$ és a $(w, \eta)$ intervallumban is, ez három különböző hely – ellentmondás. $\blacksquare$

**c)** Belátjuk: vannak $a \le c_1 \le c_2 \le b$ pontok, hogy $f$ szigorúan monoton az $[a, c_1]$, $[c_1, c_2]$, $[c_2, b]$ intervallumokon (azaz legfeljebb három szigorúan monoton darabból áll).

*0. lépés.* $f$ semmilyen (nem elfajuló) részintervallumon sem konstans, különben ott egy értéket végtelen sokszor venne fel.

*1. lépés (öt pont).* Nincsenek olyan $x_1 < x_2 < x_3 < x_4 < x_5$ pontok, amelyekre $y_i = f(x_i)$ jelöléssel
$$y_1 < y_2 > y_3 < y_4 > y_5$$
(és $-f$-re alkalmazva: a fordított, $y_1 > y_2 < y_3 > y_4 < y_5$ minta sem lehetséges).

- Ha $y_1 < y_4$: legyen $\max\{y_1, y_3\} < v < \min\{y_2, y_4\}$. Ezt $f$ felveszi $(x_1, x_2)$-ben, $(x_2, x_3)$-ban és $(x_3, x_4)$-ben – háromszor.
- Ha $y_5 < y_2$: legyen $\max\{y_3, y_5\} < v < \min\{y_2, y_4\}$. Ezt felveszi $(x_2, x_3)$-ban, $(x_3, x_4)$-ben és $(x_4, x_5)$-ben – háromszor.
- Ha egyik sem: $y_2 \le y_5 < y_4 \le y_1 < y_2$, ellentmondás.

*2. lépés (legfeljebb két belső szélsőértékhely).* Legyen $T$ a $(a, b)$-beli lokális szélsőértékhelyek halmaza. Ha $t \in T$, akkor $f(t)$-t legfeljebb még egy helyen veszi fel, így $t$ egy kis pontozott környezetében $f(x) \ne f(t)$: a lokális szélsőérték **szigorú**. Tegyük fel, hogy $t_1 < t_2 < t_3 \in T$. Válasszunk $u_i < t_i < v_i$ pontokat olyan közel, hogy $v_1 < u_2$, $v_2 < u_3$, és $f(u_i), f(v_i) < f(t_i)$, ha $t_i$ maximumhely, illetve $>$, ha minimumhely. A
$$u_1 < t_1 < v_1 < u_2 < t_2 < v_2 < u_3 < t_3 < v_3$$
pontsorozatban a szomszédos értékek közötti „lépések” előjele minden $t_i$-nél szigorúan vált. (Ha két szomszédos érték egyenlő, pl. $f(v_1) = f(u_2)$, hagyjuk el $u_2$-t: a $v_1 \to t_2$ lépés előjele ugyanaz, mint az $u_2 \to t_2$ lépésé.) Legalább három előjelváltás van, tehát legalább négy azonos előjelű „szakasz”. Ezek végpontjait véve öt pontot kapunk szigorúan váltakozó értékekkel – ez az 1. lépés szerint lehetetlen. Tehát $|T| \le 2$.

*3. lépés.* Legyenek $c_1 \le c_2$ a $T$ elemei (ha kevesebb van, a hiányzókat $b$-nek vesszük). Legyen $[\alpha, \beta]$ az $[a, c_1]$, $[c_1, c_2]$, $[c_2, b]$ intervallumok egyike; ennek belsejében nincs $T$-beli pont. $f$ injektív $[\alpha, \beta]$-n: ha $\alpha \le x < z \le \beta$ és $f(x) = f(z)$ volna, akkor $f$ nem konstans $[x, z]$-n (0. lépés), így a Weierstrass-tétel szerint felvett maximuma vagy minimuma eltér $f(x)$-től. Ezt egy $s \in (x, z)$ belső pontban veszi fel, ami lokális szélsőértékhely, tehát $s \in T \cap (\alpha, \beta)$ – ellentmondás. Az a) rész szerint $f$ szigorúan monoton $[\alpha, \beta]$-n. $\blacksquare$

(Három darab tényleg kellhet: a $(0, 2)$, $(1, 3)$, $(2, 0)$, $(3, 1)$ pontokat összekötő töröttvonal minden értéket legfeljebb kétszer vesz fel, és fel–le–fel halad.)

::: elmelet
**Elméleti háttér — injektív folytonos függvények és a „csúcsok” számolása.**

*Alaptétel.* Intervallumon folytonos és injektív függvény szigorúan monoton. A bizonyítás kulcslemmája: ha $x < y < z$, akkor $f(y)$ szigorúan $f(x)$ és $f(z)$ között van — különben egy, a „csúcs” ($f(y)$) és a két szomszéd közötti értéket a függvény a csúcs mindkét oldalán felvenné (Bolzano), ellentmondva az injektivitásnak.

*Következmények.* (1) Folytonos, szigorúan monoton függvény inverze is folytonos és szigorúan monoton (a 98. feladat elméleti háttere). (2) Egy folytonos függvény, amely minden értéket pontosan egyszer vesz fel, „nem fordulhat vissza”. (3) Nincs olyan folytonos $f : \mathbb{R} \to \mathbb{R}$, amely minden értékét pontosan kétszer venné fel (a b) rész $\mathbb R$-re is kiterjeszthető, bár a bizonyítás ott más, mert nincs maximum). Ezzel szemben minden értéket pontosan **háromszor** felvevő folytonos függvény $\mathbb R$-en létezik (cikcakkos „lépcső”).

*A b) rész érvelésének szerkezete.* (1) Weierstrass-tétel: van minimum és maximum. (2) Számolás: 4 szélsőértékhely, legfeljebb 2 végpont, így van belső szélsőértékhely. (3) Egy belső maximumhely közelében az éppen a maximum alatti értékeket a függvény mindkét oldalon felveszi; a második maximumhely további két felvételt ad — összesen három. A „csúcs mindkét oldalán felvett értékek” gondolata minden ilyen számolás alapja.

*A c) rész: lokális szélsőértékek és monoton darabok.* A legfeljebb kétszeres felvétel miatt minden lokális szélsőérték szigorú, és legfeljebb két belső lokális szélsőértékhely lehet (különben a „hullámok” egy értéket háromszor kényszerítenének ki). A szélsőértékhelyek között a függvény injektív, így az alaptétel szerint szigorúan monoton. Ugyanez az érvelés általánosabban is működik: ha egy folytonos függvény minden értéket legfeljebb $k$-szor vesz fel, akkor véges sok szigorúan monoton darabból áll, és a darabok száma $k$-val felülről becsülhető.

*Differenciálható esetben* a monoton darabok határai a derivált előjelváltásainak helyei; a folytonossági érvelés azonban deriválhatóság nélkül is működik — ez a Bolzano- és a Weierstrass-tétel ereje.
:::

## 109. feladat

Egy kukac alszik a $[0, 1]$ intervallumban. Először egyenletesen elnyúlik a 0 és 1 között (egyik vége a 0-ban a másik vége az 1-ben). Majd felébred és fészkelődni kezd. A fészkelődés után is a $[0, 1]$-ben marad és nem szakad el. Mutassuk meg, hogy van olyan pontja, amelyik ugyanoda került a fészkelődés után, ahol eredetileg volt.

**Megoldás.**

*Modell.* A kukac eredetileg $x$-ben levő pontja a fészkelődés után az $f(x)$ helyre kerül. Mivel a kukac a $[0, 1]$-ben marad, $f : [0, 1] \to [0, 1]$; mivel nem szakad el, $f$ folytonos. Olyan $c$ pontot keresünk, amelyre $f(c) = c$ (**fixpont**).

Legyen $g(x) = f(x) - x$, ez folytonos $[0, 1]$-en, és
$$g(0) = f(0) \ge 0, \qquad g(1) = f(1) - 1 \le 0.$$
Ha $g(0) = 0$ vagy $g(1) = 0$, akkor $c = 0$, illetve $c = 1$ jó. Különben $g(0) > 0 > g(1)$, és a Bolzano-tétel szerint van $c \in (0, 1)$, amelyre $g(c) = 0$, azaz $f(c) = c$. $\blacksquare$

::: elmelet
**Elméleti háttér — fixponttételek.**

*Egydimenziós Brouwer-tétel.* Minden folytonos $f : [a, b] \to [a, b]$ függvénynek van fixpontja. A $g(x) = f(x) - x$ a végpontokban $g(a) \ge 0$, $g(b) \le 0$, így a Bolzano-tétel szerint van zérushelye. A modellezés lépései: (1) a fizikai feltételek („a kukac a $[0, 1]$-ben marad”, „nem szakad el”) matematikai tulajdonságokká fordítása ($f : [0,1] \to [0,1]$, folytonos); (2) a kérdés („van-e helyben maradt pont”) egyenletté fordítása ($f(c) = c$).

*Mi kell hozzá?* Mindkét feltétel lényeges:

- folytonosság nélkül: $f(x) = 1$ ($x < \frac12$), $0$ ($x \ge \frac12$) — nincs fixpont;
- ha a kép nem marad az intervallumban: $f(x) = x + 1$ — nincs fixpont;
- nyílt intervallumon: $f(x) = \frac x2$ a $(0, 1)$-en — a fixpont ($0$) kiesett.

*Magasabb dimenzióban.* **Brouwer fixponttétele:** a zárt $n$ dimenziós gömb (vagy kocka) minden folytonos önmagába képezésének van fixpontja. Szemléletes következmények: egy pohár víz megkeverése után mindig van egy pont, amely ugyanott van; egy térképet az ábrázolt ország területére leejtve van egy pont, amely pontosan a valódi helye fölött fekszik. A bizonyítás $n \ge 2$-re már topológiai eszközöket igényel (Sperner-lemma vagy homológia).

*Banach fixponttétele.* Ha $f$ **kontrakció** ($|f(x) - f(y)| \le q|x - y|$, $q < 1$) egy zárt intervallumon, akkor a fixpont **egyértelmű**, és az $x_{n+1} = f(x_n)$ iteráció bármely kezdőpontból hozzá konvergál. Ez konstruktív (algoritmust ad), a Brouwer-tétel csak létezést.
:::

## 110. feladat

Egy függvény Darboux tulajdonságú az $I \subset \mathbb{R}$ intervallumban, ha $\forall a, b \in I$, $a < b$-re teljesül, hogy minden olyan $y$-hoz, ami $f(a)$ és $f(b)$ közé esik található $c \in (a, b)$, hogy $f(c) = y$.

a) Mutassuk meg, hogy a folytonos függvények rendelkeznek a Darboux tulajdonsággal.

b) Adjunk példát olyan függvényre, ami rendelkezik a Darboux tulajdonsággal $I = \mathbb{R}$-en, de nem folytonos.

c\*) Adjunk példát olyan függvényre, ami rendelkezik a Darboux tulajdonsággal $I = \mathbb{R}$-en, de egyetlen pontban sem folytonos.

**Megoldás.**

**a)** Legyen $f$ folytonos $I$-n, $a < b \in I$, és $y$ szigorúan $f(a)$ és $f(b)$ között. $f \in C[a, b]$, és $h = f - y$ a két végpontban ellentétes előjelű. A Bolzano-tétel szerint van $c \in (a, b)$, amelyre $h(c) = 0$, azaz $f(c) = y$. $\blacksquare$

**b)** Legyen
$$f(x) = \begin{cases} \sin\dfrac1x & \text{ha } x \ne 0, \\ 0 & \text{ha } x = 0. \end{cases}$$

- *Nem folytonos a $0$-ban:* $x_n = \frac{1}{\pi/2 + 2n\pi} \to 0$, de $f(x_n) = 1 \not\to 0 = f(0)$.
- *Darboux-tulajdonságú.* Először: minden $\varepsilon > 0$-ra $f$ a $(0, \varepsilon)$ intervallumon felvesz minden $[-1, 1]$-beli értéket. Ha $y = \sin\theta$, $\theta \in [-\frac\pi2, \frac\pi2]$, akkor $x = \frac{1}{\theta + 2n\pi} \in (0, \varepsilon)$ elég nagy $n$-re, és $f(x) = y$. $f$ páratlan, ezért ugyanez igaz $(-\varepsilon, 0)$-ra is.

  Legyen $a < b$ és $y$ szigorúan $f(a)$ és $f(b)$ között; ekkor $y \in (-1, 1)$.
  - Ha $0 \notin [a, b]$, akkor $f$ folytonos $[a, b]$-n, és alkalmazható az a) rész.
  - Ha $0 \in [a, b]$, akkor $(a, b)$ tartalmaz egy $(0, \varepsilon)$ vagy $(-\varepsilon, 0)$ intervallumot (ha $a < 0$, akkor az utóbbit, ha $a = 0$, az előbbit), és ott $f$ minden $[-1, 1]$-beli értéket felvesz, így $y$-t is.

**c\*)** Minden $x \in \mathbb{R}$-re írjuk fel a törtrészét kettes számrendszerben: $\{x\} = 0{,}d_1 d_2 d_3 \dots_{(2)}$, ahol $d_k \in \{0, 1\}$, és nem csupa 1-es a jegyek vége (így a felírás egyértelmű). Legyen
$$f(x) = \limsup_{n \to \infty} \frac{d_1 + d_2 + \dots + d_n}{n} \in [0, 1],$$
az első $n$ jegy átlagának limesz szuperiorja.

*Kulcsállítás: $f$ minden nyílt intervallumon minden $[0, 1]$-beli értéket felvesz.* Legyen $(a, b)$ tetszőleges és $y \in [0, 1]$.

1. Van olyan $p \in \mathbb{Z}$, $m \in \mathbb{N}$, hogy $J = [\frac{p}{2^m}, \frac{p + 1}{2^m}) \subset (a, b)$ (elég $\frac1{2^m} < \frac{b - a}2$). A $J$-beli számok törtrészének első $m$ kettedes jegye rögzített. Az $(m + 1)$-edik jegytől kezdve viszont bármilyen (nem csupa 1-esre végződő) $0$–$1$ sorozat előfordul: $x = \frac{p}{2^m} + \frac{t}{2^m}$, $t \in [0, 1)$ esetén ezek a jegyek éppen $t$ jegyei.
2. Válasszunk egy $(e_k)$ $0$–$1$ sorozatot, amelynek átlagai $y$-hoz tartanak, és nem végződik csupa 1-esre. $y < 1$-re pl. $e_k = [ky] - [(k - 1)y]$: ekkor $e_1 + \dots + e_n = [ny]$, és $\frac{[ny]}{n} \to y$. (Csupa 1-esre végződés esetén valamely $n_0$-tól $[ny] = n - \text{konst}$ volna, ami $y < 1$-re lehetetlen.) $y = 1$-re legyen $e_k = 0$, ha $k$ kettő-hatvány, különben $1$.
3. Az 1. pont szerinti $x \in J$, amelynek jegyei az $(m + 1)$-edik helytől $e_1, e_2, \dots$, kielégíti:
$$\frac{d_1 + \dots + d_{m+n}}{m + n} = \frac{(d_1 + \dots + d_m) + (e_1 + \dots + e_n)}{m + n} \to y,$$
   mert az első zárójel korlátos ($\le m$). Tehát $f(x) = y$.

*Következmények.*

- **Darboux-tulajdonságú:** $R(f) \subseteq [0, 1]$, így ha $y$ az $f(a)$ és $f(b)$ között van, akkor $y \in [0, 1]$, és a kulcsállítás szerint $(a, b)$-ben felvétetik.
- **Sehol sem folytonos:** bármely $x_0$ bármely környezetében $f$ felveszi a $0$-t és az $1$-et is, így van olyan $x$, amelyre $|f(x) - f(x_0)| \ge \frac12$. $\varepsilon = \frac12$-hez tehát nincs jó $\delta$.

(Ismert másik példa a **Conway-féle 13-as számrendszerbeli függvény**, amely ugyanígy minden intervallumon minden valós értéket felvesz. Kiválasztási axiómával is készíthető ilyen függvény: az $x + \mathbb{Q}$ mellékosztályok mind sűrűk, és kontinuum sokan vannak, így egy $\varphi : \mathbb{R}/\mathbb{Q} \to \mathbb{R}$ bijekcióval $f(x) = \varphi(x + \mathbb{Q})$ minden intervallumon minden értéket felvesz.)

::: elmelet
**Elméleti háttér — a Darboux-tulajdonság helye a folytonossághoz képest.**

*Definíció és viszony.* Egy függvény **Darboux-tulajdonságú** egy intervallumon, ha bármely két felvett érték közötti minden értéket is felvesz a megfelelő pontok között; ekvivalensen: intervallum képe intervallum. A Bolzano-tétel szerint folytonos $\Rightarrow$ Darboux. A megfordítás hamis, és a kudarc fokozatai:

1. **Egy szakadás:** $\sin\frac1x$ ($0$-ban $0$) — a $0$ minden környezetében minden $[-1, 1]$-beli értéket felvesz, ezért a „lyuk” nem akadályozza a közbülsőértékek felvételét.
2. **Sehol sem folytonos:** a c) rész függvénye minden intervallumon minden $[0, 1]$-beli értéket felvesz (a kettedes jegyek átlagának limsupja „tetszőlegesen hangolható” a jegyek végének megválasztásával).

*Mikor ekvivalens?* Monoton függvényekre (102. feladat), és olyan függvényekre, amelyeknek minden szinthalmaza zárt (ekkor a Darboux-tulajdonság már folytonosságot ad).

*Deriváltak.* **Darboux tétele:** ha $f$ differenciálható egy intervallumon, akkor $f'$ Darboux-tulajdonságú — akkor is, ha $f'$ nem folytonos. Például $f(x) = x^2\sin\frac1x$ ($f(0) = 0$) deriváltja $2x\sin\frac1x - \cos\frac1x$, $f'(0) = 0$: ez szakad a $0$-ban, mégis Darboux-tulajdonságú. Következmény: egy ugrásos függvény (pl. $\operatorname{sgn}$) **nem lehet** derivált függvény.

*A c) rész konstrukciójának ötlete.* A kettedes tört **első véges sok jegye** határozza meg, melyik kis intervallumban van a szám; a **végtelen sok hátralevő jegy** viszont szabadon választható, és egy „aszimptotikus” mennyiség (az átlag limsupja) csak ezektől függ. Ezért minden intervallumban minden érték elérhető. Ugyanez a gondolat — lokálisan a véges kezdet, globálisan a végtelen „farok” — jelenik meg a limsup tulajdonságaiban is (véges sok tag nem befolyásolja).

*Mérhetőség.* A c) rész függvénye mérhető (Lebesgue értelemben), sőt a „szinte minden” $x$-re $f(x) = \frac12$ (Borel normálisszám-tétele: majdnem minden szám kettedes jegyeinek átlaga $\frac12$-hez tart). A függvény tehát „majdnem mindenhol” konstans, és mégis minden intervallumon minden értéket felvesz.
:::

## Röpzhra

**Definíciók:** folytonosság, féloldali folytonosság, $f \in C[a, b]$.

**Tételek:** határérték és alapműveletek, határérték és kompozíció, egyenlőtlenségek és határérték (két tétel), átviteli elv folytonos függvényekre.
