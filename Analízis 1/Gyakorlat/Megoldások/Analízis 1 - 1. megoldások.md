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
