# VI. RÉSZ: REND, PRIMITÍV GYÖK, DISZKRÉT LOGARITMUS

A hatodik részben a hatványok maradékait vizsgáljuk közelebbről. Az Euler–Fermat-tétel szerint $a^{\varphi(m)} \equiv 1$, de gyakran már egy kisebb kitevő is $1$-et ad; a legkisebb ilyen kitevő a **rend**. Azok a számok, amelyeknek a rendje a lehető legnagyobb, a **primitív gyökök**: ezek hatványai az összes redukált maradékosztályt befutják, így segítségükkel a szorzás összeadássá alakítható — ez a **diszkrét logaritmus**. A rész végén megnézzük, hogyan épül erre a modern kriptográfia egyik alapköve, a Diffie–Hellman-kulcscsere.

## 19. Rend

Az Euler–Fermat-tételből következik, hogy ha $(a, m) = 1$, akkor van olyan $t$ pozitív egész, amelyre
$$a^t \equiv 1 \pmod m, \qquad (19.1)$$
például $t = \varphi(m)$ vagy $t = k\varphi(m)$. Az azonban egyáltalán nem biztos, hogy a legkisebb ilyen pozitív $t$ éppen $\varphi(m)$: az esetek többségében van $\varphi(m)$-nél kisebb pozitív $t$ is.

> **19.1. Definíció.** Legyen $(a, m) = 1$. Az $a$ **rendje** modulo $m$ az a legkisebb $t$ pozitív egész, amelyre
> $$a^t \equiv 1 \pmod m,$$
> vagyis $a^t \equiv 1$, de $0 < i < t$ esetén $a^i \not\equiv 1 \pmod m$. Jelölése: $o_m(a)$ (olvasva: „ordó $a$ modulo $m$”).

**Példa.** $o_{10}(3) = 4$, mert
$$3^1 \equiv 3, \quad 3^2 \equiv 9, \quad 3^3 \equiv 7, \quad 3^4 \equiv 1 \pmod{10}.$$

Modulo $7$ az $a$ hatványainak maradékai (a sor végén az $a$ rendje):

| $a$ | $a^1$ | $a^2$ | $a^3$ | $a^4$ | $a^5$ | $a^6$ | $o_7(a)$ |
|---|---|---|---|---|---|---|---|
| $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ | $1$ |
| $2$ | $2$ | $4$ | $1$ | $2$ | $4$ | $1$ | $3$ |
| $3$ | $3$ | $2$ | $6$ | $4$ | $5$ | $1$ | $6$ |
| $4$ | $4$ | $2$ | $1$ | $4$ | $2$ | $1$ | $3$ |
| $5$ | $5$ | $4$ | $6$ | $2$ | $3$ | $1$ | $6$ |
| $6$ | $6$ | $1$ | $6$ | $1$ | $6$ | $1$ | $2$ |

Minden sorban a hatványok periodikusan ismétlődnek, és a periódus hossza éppen a rend; az első $1$-es helye adja meg a rendet. Modulo $17$ az $a = 1, 2, \dots, 16$ számok rendjei:

| $a$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ |
|---|---|---|---|---|---|---|---|---|
| $o_{17}(a)$ | $1$ | $8$ | $16$ | $4$ | $16$ | $16$ | $16$ | $8$ |

| $a$ | $9$ | $10$ | $11$ | $12$ | $13$ | $14$ | $15$ | $16$ |
|---|---|---|---|---|---|---|---|---|
| $o_{17}(a)$ | $8$ | $16$ | $16$ | $16$ | $4$ | $16$ | $8$ | $2$ |

Megfigyelhetjük, hogy minden rend osztója $\varphi(17) = 16$-nak. Ezt hamarosan bebizonyítjuk.

Az Euler–Fermat-tétel következménye:

> **19.2. Állítás.** Ha $(a, m) = 1$, akkor $o_m(a) \le \varphi(m)$.

A rend definíciójából világos:

> **19.3. Állítás.** Ha $(a, m) = (b, m) = 1$ és $a \equiv b \pmod m$, akkor $o_m(a) = o_m(b)$.

Ha $(a, m) > 1$, a rend nem létezik: legyen $d = (a, m) > 1$; ekkor $d \mid a^t$ minden $t \ge 1$-re, így $d \nmid a^t - 1$. Ha viszont $a^t \equiv 1 \pmod m$ volna, akkor $d \mid m \mid a^t - 1$ — ellentmondás.

### 19.1. A rend alaptulajdonságai

> **19.4. Tétel.** Legyen $(a, m) = 1$ és $t \in \mathbb{N}$. Ekkor
> $$a^t \equiv 1 \pmod m \iff o_m(a) \mid t.$$

*Bizonyítás.* Ha $o_m(a) \mid t$, azaz $t = o_m(a) \cdot x$, akkor
$$a^t = \left(a^{o_m(a)}\right)^x \equiv 1^x = 1 \pmod m.$$
Megfordítva, tegyük fel, hogy $a^t \equiv 1$. Osszuk el $t$-t maradékosan $o_m(a)$-val: $t = o_m(a)\, x + y$, ahol $0 \le y < o_m(a)$. Ekkor
$$1 \equiv a^t = \left(a^{o_m(a)}\right)^x a^y \equiv a^y \pmod m. \qquad (19.2)$$
De $y < o_m(a)$, és a rend a legkisebb *pozitív* kitevő, amelyre a hatvány $1$; így csak $y = 0$ lehet, vagyis $o_m(a) \mid t$. $\blacksquare$

> **19.5. Tétel.** Legyen $(a, m) = 1$ és $u, v \in \mathbb{N}$. Ekkor
> $$a^u \equiv a^v \pmod m \iff u \equiv v \pmod{o_m(a)}.$$

*Bizonyítás.* Szimmetria miatt feltehetjük, hogy $u \ge v$. Mivel $(a, m) = 1$, a kongruenciát $a^v$-vel egyszerűsíthetjük (6.2. Tétel), majd a 19.4. Tételt alkalmazzuk:
$$a^u \equiv a^v \iff a^{u-v} \equiv 1 \iff o_m(a) \mid u - v \iff u \equiv v \pmod{o_m(a)}. \ \blacksquare$$

A 19.5. Tétel azt mondja, hogy **a hatványok kitevőjével modulo a rend számolhatunk** — ez pontosítja a 7. fejezet „a kitevőt modulo $\varphi(m)$ redukálhatjuk” megjegyzését.

> **19.6. Tétel.** Ha $(a, m) = 1$, akkor $o_m(a) \mid \varphi(m)$.

*Bizonyítás.* Az Euler–Fermat-tétel szerint $a^{\varphi(m)} \equiv 1$, így a 19.4. Tétel szerint $o_m(a) \mid \varphi(m)$. $\blacksquare$

**Kidolgozott példa.** Számítsuk ki $13$ rendjét modulo $59$! Mivel $(13, 59) = 1$, a rend létezik, és a 19.6. Tétel szerint osztója $\varphi(59) = 58 = 2 \cdot 29$-nek:
$$o_{59}(13) \in \{1, 2, 29, 58\}.$$
Végignézzük az eseteket: $13^1 \not\equiv 1$; $13^2 = 169 = 3 \cdot 59 - 8 \equiv -8 \not\equiv 1$. A $13^{29}$-et ismételt négyzetre emeléssel számoljuk ki:
$$13^4 \equiv (-8)^2 = 64 \equiv 5, \quad 13^8 \equiv 5^2 = 25, \quad 13^{16} \equiv 25^2 = 625 = 10 \cdot 59 + 35 \equiv -24 \pmod{59},$$
és $29 = 16 + 8 + 4 + 1$ miatt
$$13^{29} = 13^{16} \cdot 13^8 \cdot 13^4 \cdot 13 \equiv (-24) \cdot 25 \cdot 5 \cdot 13 \equiv -1 \not\equiv 1 \pmod{59}.$$
(Részletesen: $(-24) \cdot 25 = -600 \equiv -600 + 590 = -10$; $-10 \cdot 5 = -50 \equiv 9$; $9 \cdot 13 = 117 = 2 \cdot 59 - 1 \equiv -1$.) Kizárásos alapon $o_{59}(13) = 58$.

## 20. Primitív gyökök

A primitív gyököket Gauss definiálta a *Disquisitiones Arithmeticae* (1801) című művében. A fogalomnak ma is nagy jelentősége van a kriptográfiai alkalmazások miatt, de a maradékosztályok gyors összeszorzásánál is hasznos; erről a következő fejezetekben lesz szó.

> **20.1. Definíció.** A $g$ számot **primitív gyöknek** nevezzük modulo $m$, ha
> $$o_m(g) = \varphi(m).$$

Egy szám primitív gyök voltát tehát úgy ellenőrizzük, hogy kiszámoljuk a rendjét. Az előző fejezet modulo $17$ táblázata szerint a rend $8$ esetben maximális ($= \varphi(17) = 16$), így modulo $17$ összesen $8$ primitív gyök van:
$$3, 5, 6, 7, 10, 11, 12, 14.$$
Modulo $7$ a primitív gyökök a $3$ és az $5$.

**Hogyan ellenőrizzük gyorsan?** Ha $(a, m) = 1$, akkor $a^{\varphi(m)} \equiv 1$-et fölösleges ellenőrizni (az Euler–Fermat-tétel miatt igaz). Mivel $o_m(a) \mid \varphi(m)$, csak azt kell ellenőrizni, hogy $\varphi(m)$ valódi osztóira $a^d \not\equiv 1$. Sőt, ennél kevesebb is elég:

::: kiegeszites
**Kiegészítés: elég a maximális valódi osztókat ellenőrizni.** Legyen $(a, m) = 1$, és $q_1, \dots, q_s$ a $\varphi(m)$ különböző prímosztói. Ekkor $a$ pontosan akkor primitív gyök, ha
$$a^{\varphi(m)/q_i} \not\equiv 1 \pmod m \qquad (i = 1, \dots, s).$$
Valóban, ha $t = o_m(a) < \varphi(m)$, akkor $t$ valódi osztója $\varphi(m)$-nek, így $\frac{\varphi(m)}{t} > 1$-nek van egy $q_i$ prímosztója; ekkor $t \mid \frac{\varphi(m)}{q_i}$, és a 19.4. Tétel szerint $a^{\varphi(m)/q_i} \equiv 1$. Például modulo $23$ ($\varphi(23) = 22 = 2 \cdot 11$) az $5$ primitív gyök, mert $5^{11} \equiv -1 \not\equiv 1$ és $5^2 = 25 \equiv 2 \not\equiv 1 \pmod{23}$.
:::

> **20.2. Tétel.** A $g$ szám pontosan akkor primitív gyök modulo $m$, ha az
> $$1, g, g^2, \dots, g^{\varphi(m) - 1}$$
> számok redukált maradékrendszert alkotnak modulo $m$.

*Bizonyítás.* Tegyük fel, hogy $g$ primitív gyök. A 6.11. Tétel szerint három dolgot kell ellenőrizni. A számok száma $\varphi(m)$, és $(g, m) = 1$ miatt mindegyik relatív prím $m$-hez. Páronként inkongruensek: ha $0 \le i < j \le \varphi(m) - 1$ és $g^i \equiv g^j$, akkor a 19.5. Tétel szerint $i \equiv j \pmod{\varphi(m)}$, ami ezekre az $i, j$-kre csak $i = j$ esetén lehet.

Megfordítva, ha a fenti hatványok redukált maradékrendszert alkotnak, akkor $(g, m) = 1$, tehát $o_m(g)$ létezik, és $o_m(g) \le \varphi(m)$. A $g, g^2, \dots, g^{\varphi(m)-1}$ hatványok egyike sem lehet $1$-gyel kongruens, hiszen az $1 = g^0$ is a rendszerben van, és az elemek páronként inkongruensek. Tehát $o_m(g) = \varphi(m)$. $\blacksquare$

**Ez a primitív gyökök lényege:** egy primitív gyök hatványai *minden* redukált maradékosztályt pontosan egyszer előállítanak. Modulo $7$ például a $3$ hatványai: $3^0 = 1$, $3^1 = 3$, $3^2 \equiv 2$, $3^3 \equiv 6$, $3^4 \equiv 4$, $3^5 \equiv 5$ — mind a hat nem nulla maradék.

### Mely modulusokra létezik primitív gyök?

> **20.3. Tétel.** Az $m > 1$ modulusra nézve pontosan akkor létezik primitív gyök, ha
> $$m = 2, \quad m = 4, \quad m = p^\alpha \quad \text{vagy} \quad m = 2p^\alpha,$$
> ahol $p$ páratlan prím és $\alpha \ge 1$ egész.

Például $m \le 30$ esetén primitív gyök pontosan a $2, 3, 4, 5, 6, 7, 9, 10, 11, 13, 14, 17, 18, 19, 22, 23, 25, 26, 27, 29$ modulusokra létezik; a $8, 12, 15, 16, 20, 21, 24, 28, 30$ modulusokra nem. Modulo $8$ például minden páratlan szám négyzete $1$, tehát minden redukált maradékosztály rendje legfeljebb $2 < \varphi(8) = 4$.

A tételt teljes általánosságában nem bizonyítjuk. Először (a jegyzet vázlatos gondolatmenetét pontosítva) belátjuk, hogy ha $m$ nem ilyen alakú, akkor nincs primitív gyök. A másik irányt — hogy ilyen alakú $m$-re van — csak abban az esetben látjuk be, amikor $m$ prím; ez a 20.4. Tétel következménye lesz.

*A „csak akkor” irány bizonyítása.* Ha $m$ nem a felsorolt alakok egyike, akkor két eset lehetséges.

**A) $m = 2^k$, $k \ge 3$.** Megmutatjuk, hogy minden páratlan $a$-ra $a^{2^{k-2}} \equiv 1 \pmod{2^k}$. Mivel $\varphi(2^k) = 2^{k-1}$, ebből következik, hogy minden rend legfeljebb $\frac{\varphi(m)}{2}$. Indukció $k$ szerint: $k = 3$-ra $a^2 \equiv 1 \pmod 8$, hiszen $a^2 - 1 = (a - 1)(a + 1)$ két szomszédos páros szám szorzata, így osztható $8$-cal. Ha $a^{2^{k-2}} = 1 + 2^k s$, akkor négyzetre emelve
$$a^{2^{k-1}} = 1 + 2^{k+1}s + 2^{2k}s^2 \equiv 1 \pmod{2^{k+1}}.$$

**B) $m = uv$, ahol $(u, v) = 1$ és $u, v > 2$.** (Ilyen felbontás van, ha $m$-nek két különböző páratlan prímosztója van — legyen $u$ az egyik prímhatvány-tényező —, vagy ha $m = 2^k p^\alpha$ alakú $k \ge 2$-vel: $u = 2^k$, $v = p^\alpha$.) Ekkor $\varphi(u)$ és $\varphi(v)$ páros (mert $u, v > 2$ — ez a képletből látszik), így legkisebb közös többszörösükre
$$L = [\varphi(u), \varphi(v)] \le \frac{\varphi(u)\varphi(v)}{2} = \frac{\varphi(m)}{2}.$$
Ha $(a, m) = 1$, akkor az Euler–Fermat-tétel szerint $a^{\varphi(u)} \equiv 1 \pmod u$ és $a^{\varphi(v)} \equiv 1 \pmod v$, így (mivel $L$ mindkettőnek többszöröse) $a^L \equiv 1 \pmod u$ és $\pmod v$, és a 13. fejezet lemmája szerint $a^L \equiv 1 \pmod m$. Tehát minden rend legfeljebb $L < \varphi(m)$.

Mindkét esetben nincs olyan elem, amelynek rendje $\varphi(m)$, tehát nincs primitív gyök. (Végül vegyük észre, hogy minden $m$, amely nem $2, 4, p^\alpha, 2p^\alpha$ alakú, valóban az A) vagy a B) esetbe tartozik: ha van két különböző páratlan prímosztója, B); ha egy páratlan prímosztója van, akkor $m = 2^k p^\alpha$ és $k \ge 2$, ez is B); ha nincs páratlan prímosztója, akkor $m = 2^k$ és $k \ge 3$, ez A).) $\blacksquare$

### Az adott rendű elemek száma prím modulus esetén

A következő tétel pontosan megadja, hány elemnek van adott rendje modulo $p$.

> **20.4. Tétel.** Legyen $p$ prím, és jelölje $h(d)$ az $1, 2, \dots, p - 1$ számok közül azoknak a számát, amelyek rendje modulo $p$ éppen $d$. Ekkor $h(d) = 0$, ha $d \nmid p - 1$, továbbá
> $$h(d) = \varphi(d), \qquad \text{ha } d \mid p - 1.$$

**Példa.** Modulo $13$ ($p - 1 = 12$): $h(1) = 1$, $h(2) = 1$, $h(3) = 2$, $h(4) = 2$, $h(6) = 2$, $h(12) = 4$ — éppen $\varphi(1), \varphi(2), \varphi(3), \varphi(4), \varphi(6), \varphi(12)$, és összegük $12$.

A tételből következik a 20.3. Tétel speciális esete: **ha $m = p$ prím, akkor létezik primitív gyök**, hiszen $h(p - 1) = \varphi(p - 1) \ge 1$. Sőt, ekkor a primitív gyökök száma (modulo $p$) éppen $\varphi(p - 1) = \varphi(\varphi(p))$.

*Bizonyítás.* Mivel minden rend osztója $\varphi(p) = p - 1$-nek, $h(d) = 0$, ha $d \nmid p - 1$. Minden $x \in \{1, \dots, p - 1\}$-nek pontosan egy rendje van, ezért
$$\sum_{d \mid p - 1} h(d) = p - 1. \qquad (20.1)$$

**Állítás: $h(d) \le \varphi(d)$ minden $d \mid p - 1$-re.** Ha nincs $d$-edrendű elem, akkor $h(d) = 0 \le \varphi(d)$. Tegyük fel, hogy van egy $d$-edrendű $a$ elem. Az
$$x^d \equiv 1 \pmod p \qquad (20.2)$$
kongruenciának a fokszámtétel (14.4. Tétel) szerint legfeljebb $d$ megoldása van. Az $a^0, a^1, \dots, a^{d-1}$ hatványok páronként inkongruensek (19.5. Tétel), és mind megoldásai (20.2)-nek, hiszen $(a^t)^d = (a^d)^t \equiv 1$. Tehát (20.2) megoldásai *pontosan* ezek. Minden $d$-edrendű elem megoldása (20.2)-nek, így szükségképpen $a^t$ alakú valamely $0 \le t \le d - 1$-gyel. Melyik $a^t$-nek $d$ a rendje? A 19.4. Tétel szerint
$$(a^t)^x \equiv 1 \iff a^{tx} \equiv 1 \iff d \mid tx \iff \frac{d}{(t, d)} \mid x,$$
tehát $a^t$ rendje $\frac{d}{(t, d)}$, ami pontosan akkor $d$, ha $(t, d) = 1$. Ilyen $t$ a $0, 1, \dots, d - 1$ számok között $\varphi(d)$ darab van. Így ebben az esetben $h(d) = \varphi(d)$; összességében tehát mindig $h(d) \le \varphi(d)$.

**Befejezés.** (20.1)-et és a 17.22. Tételt ($\sum_{d \mid n}\varphi(d) = n$, amelyet itt 20.5. Lemmaként idézünk) felhasználva:
$$p - 1 = \sum_{d \mid p - 1} h(d) \le \sum_{d \mid p - 1}\varphi(d) = p - 1.$$
Itt egyenlőségnek kell állnia, ami csak úgy lehet, ha minden $d \mid p - 1$-re $h(d) = \varphi(d)$. $\blacksquare$

> **20.6. Tétel.** Legyen $p$ prím és $g$ primitív gyök modulo $p$.
>
> (i) A $g^i$ hatvány pontosan akkor primitív gyök, ha $(i, p - 1) = 1$.
>
> (ii) A páronként inkongruens primitív gyökök száma $\varphi(p - 1)$.

*Bizonyítás.* (i) A 20.4. Tétel bizonyításában látott módon $g^i$ rendje $\frac{p-1}{(i, p - 1)}$, ami pontosan akkor $p - 1$, ha $(i, p - 1) = 1$. (Másképp: $g^i$ primitív gyök $\iff$ $g^i, g^{2i}, \dots, g^{(p-1)i}$ redukált maradékrendszer modulo $p$ $\iff$ $i, 2i, \dots, (p - 1)i$ teljes maradékrendszer modulo $p - 1$ $\iff$ $(i, p - 1) = 1$.)

(ii) A 20.2. Tétel szerint minden redukált maradékosztály $g^i$ alakú pontosan egy $0 \le i \le p - 2$-vel, és (i) szerint közülük $\varphi(p - 1)$ primitív gyök. $\blacksquare$

**Példa.** Modulo $17$ a $3$ primitív gyök, és $(i, 16) = 1$ pontosan a páratlan $i$-kre; így a primitív gyökök $3^1, 3^3, 3^5, \dots, 3^{15}$, vagyis (kiszámolva) $3, 10, 5, 11, 14, 7, 12, 6$ — a táblázatból látott $8$ szám.

**Egy hasznos megjegyzés.** Ha $p$ páratlan prím és $g$ primitív gyök modulo $p$, akkor
$$g^{\frac{p-1}{2}} \equiv -1 \pmod p.$$
Valóban, a kis Fermat-tétel szerint $p \mid g^{p-1} - 1 = \left(g^{\frac{p-1}{2}} - 1\right)\left(g^{\frac{p-1}{2}} + 1\right)$, és az első tényezőt $p$ nem oszthatja, mert $g$ rendje $p - 1 > \frac{p-1}{2}$. Így $g^{\frac{p-1}{2} + a} \equiv -g^a \pmod p$ is teljesül: a hatványtáblázat második fele az első fele ellentettje. (Modulo $17$: $3^8 \equiv 16 \equiv -1$.)

## 21. Diszkrét logaritmus (index)

Gauss a logaritmusfüggvény moduláris megfelelőjét is megalkotta.

> **21.1. Definíció.** Legyen $p$ prím, $g$ primitív gyök modulo $p$, és $(a, p) = 1$. Az $a$ szám $g$ alapú **diszkrét logaritmusán** vagy **indexén** azt a $0 \le k \le p - 2$ egészet értjük, amelyre
> $$a \equiv g^k \pmod p.$$
> Jelölése: $k = \operatorname{ind}_g a$.

A definíció értelmes: a 20.2. Tétel szerint minden redukált maradékosztály pontosan egy ilyen $k$-val áll elő. Ha $a \equiv b \pmod p$, akkor nyilván $\operatorname{ind}_g a = \operatorname{ind}_g b$. A 19.5. Tétel szerint (hiszen $o_p(g) = p - 1$)
$$g^s \equiv g^t \pmod p \iff s \equiv t \pmod{p - 1}.$$
Ebből adódnak a logaritmusazonosságok megfelelői:

> **Tétel.** Ha $(a, p) = (b, p) = 1$, akkor
> $$\operatorname{ind}_g(ab) \equiv \operatorname{ind}_g a + \operatorname{ind}_g b \pmod{p - 1}, \qquad \operatorname{ind}_g(a^k) \equiv k \operatorname{ind}_g a \pmod{p - 1}.$$

*Bizonyítás.* $g^{\operatorname{ind} a + \operatorname{ind} b} = g^{\operatorname{ind} a}\, g^{\operatorname{ind} b} \equiv ab \equiv g^{\operatorname{ind}(ab)}$, és a kitevők a 19.5. Tétel szerint modulo $p - 1$ kongruensek. A második ugyanígy: $g^{k \operatorname{ind} a} \equiv a^k$. $\blacksquare$

A valós logaritmussal ellentétben azonban ha ábrázoljuk a diszkrét logaritmus függvényt, akkor a megszokott sima görbe helyett szabálytalanul szétszórt pontokat kapunk, amelyek eloszlása véletlenszerűnek tűnik. Modulo $31$ például a $g = 3$ primitív gyökkel $\operatorname{ind}_3 2 = 24$, $\operatorname{ind}_3 5 = 20$, $\operatorname{ind}_3 7 = 28$, $\operatorname{ind}_3 10 = 14$ — és valóban $24 + 20 = 44 \equiv 14 \pmod{30}$, ahogy $10 = 2 \cdot 5$ miatt lennie kell. Éppen ez a „véletlenszerűség” teszi a diszkrét logaritmust alkalmassá kriptográfiai célokra (22. fejezet).

**Hatvány- és indextáblázat modulo 13.** A $g = 2$ primitív gyök modulo $13$. A hatványtáblázat:

| $j$ | $0$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $2^j \bmod 13$ | $1$ | $2$ | $4$ | $8$ | $3$ | $6$ | $12$ | $11$ | $9$ | $5$ | $10$ | $7$ |

Az indextáblázatot úgy kapjuk, hogy a moduláris hatványozás inverz műveletét végezzük, azaz a két sor szerepét felcseréljük (például mivel a hatványtáblázatban a $9$ alatt az $5$ áll, az indextáblázatban az $5$ alatt áll a $9$):

| $a$ | $1$ | $2$ | $3$ | $4$ | $5$ | $6$ | $7$ | $8$ | $9$ | $10$ | $11$ | $12$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| $\operatorname{ind}_2 a$ | $0$ | $1$ | $4$ | $2$ | $9$ | $5$ | $11$ | $3$ | $8$ | $10$ | $7$ | $6$ |

### 21.1. Binom kongruenciák megoldása indextáblázattal

Az $x^k \equiv a$ alakú kongruenciákat **binom kongruenciáknak** nevezzük. Megoldásukat egy példán mutatjuk be.

**Példa.** Oldjuk meg az
$$5x^{22} \equiv 6 \pmod{13}$$
kongruenciát! Először megnézzük, hogy $x \equiv 0$ megoldás-e: nem ($0 \not\equiv 6$). Elég tehát az $(x, 13) = 1$ esetet vizsgálni; ekkor $\operatorname{ind} x$ létezik, és nyugodtan írhatunk minden számot a primitív gyök hatványaként. Válasszuk a $g = 2$ primitív gyököt és a fenti táblázatokat. Ekkor
$$2^{\operatorname{ind}_2 5} \cdot \left(2^{\operatorname{ind}_2 x}\right)^{22} \equiv 2^{\operatorname{ind}_2 6}, \qquad 2^{\operatorname{ind}_2 5 + 22\operatorname{ind}_2 x} \equiv 2^{\operatorname{ind}_2 6} \pmod{13},$$
így a kitevők kongruensek modulo $o_{13}(2) = \varphi(13) = 12$:
$$\operatorname{ind}_2 5 + 22\operatorname{ind}_2 x \equiv \operatorname{ind}_2 6 \pmod{12}.$$
Az indextáblázatból $\operatorname{ind}_2 5 = 9$, $\operatorname{ind}_2 6 = 5$:
$$9 + 22\operatorname{ind}_2 x \equiv 5 \pmod{12}, \qquad 22\operatorname{ind}_2 x \equiv -4 \equiv 8, \qquad 10\operatorname{ind}_2 x \equiv 8 \pmod{12}.$$
Ez lineáris kongruencia; $(10, 12) = 2 \mid 8$, tehát két megoldása van. $2$-vel osztva $5\operatorname{ind}_2 x \equiv 4 \pmod 6$, amelynek megoldása $\operatorname{ind}_2 x \equiv 2 \pmod 6$ ($5 \cdot 2 = 10 \equiv 4$). Tehát
$$\operatorname{ind}_2 x \equiv 2 \ \text{vagy}\ 8 \pmod{12}, \qquad x \equiv 2^2 \ \text{vagy}\ 2^8 \pmod{13},$$
és a hatványtáblázat szerint
$$x \equiv 4 \ \text{vagy}\ 9 \pmod{13}.$$
(Ellenőrzés: $4^{22} \equiv 4^{10}$, mert $4^{12} \equiv 1$; $4^{10} = 2^{20} \equiv 2^8 \equiv 9$, és $5 \cdot 9 = 45 \equiv 6$. ✓)

**Indextáblázatok a gyakorlatban.** Régebben előre elkészített indextáblázatokat használtak a maradékosztályok szorzásához (C. G. J. Jacobi például 1839-ben adott ki ilyen táblázatokat az $1000$ alatti prímekre). Az alapgondolat ugyanaz, mint a logaritmustábláé: ha $(a, m) = (b, m) = 1$, akkor
$$ab \equiv g^{\operatorname{ind} a} \cdot g^{\operatorname{ind} b} = g^{\operatorname{ind} a + \operatorname{ind} b} \pmod m,$$
így a szorzás összeadássá egyszerűsödik. A táblázatot egy modulusra elég egyszer elkészíteni, utána bármely szorzáshoz használható. Természetesen ez csak akkor működik, ha modulo $m$ létezik primitív gyök, azaz $m = 2, 4, p^\alpha$ vagy $2p^\alpha$ ($p$ páratlan prím).

### A binom kongruenciák megoldhatósága

> **21.2. Tétel.** Legyen $p$ prím és $(a, p) = 1$. Az
> $$x^k \equiv a \pmod p \qquad (21.1)$$
> kongruencia pontosan akkor oldható meg, ha
> $$a^{\frac{p-1}{(k, p-1)}} \equiv 1 \pmod p. \qquad (21.2)$$
> Megoldhatóság esetén a páronként inkongruens megoldások száma $(k, p - 1)$.

*Bizonyítás.* Rögzítsünk egy $g$ primitív gyököt, és keressük a megoldást $x \equiv g^{\operatorname{ind} x}$ alakban (az $x \equiv 0$ nem megoldás, mert $p \nmid a$). Ekkor (21.1) a $g^{k \operatorname{ind} x} \equiv g^{\operatorname{ind} a}$ alakba írható, ami a 19.5. Tétel szerint ekvivalens a
$$k \operatorname{ind} x \equiv \operatorname{ind} a \pmod{p - 1} \qquad (21.3)$$
lineáris kongruenciával az $\operatorname{ind} x$ ismeretlenre. Ez a 8.1. Tétel szerint pontosan akkor oldható meg, ha
$$(k, p - 1) \mid \operatorname{ind} a, \qquad (21.4)$$
és ekkor $(k, p - 1)$ megoldása van modulo $p - 1$; ezek az $x \equiv g^{\operatorname{ind} x}$ megfeleltetés révén $(k, p - 1)$ inkongruens $x$-et adnak modulo $p$.

Végül megmutatjuk, hogy (21.4) ekvivalens (21.2)-vel. Legyen $e = (k, p - 1)$. Ekkor
$$a^{\frac{p-1}{e}} \equiv \left(g^{\operatorname{ind} a}\right)^{\frac{p-1}{e}} = g^{\operatorname{ind} a \cdot \frac{p-1}{e}} \pmod p,$$
és a 19.4. Tétel szerint ez pontosan akkor $\equiv 1$, ha
$$p - 1 \ \Big|\ \operatorname{ind} a \cdot \frac{p-1}{e} \iff \frac{p-1}{e} \cdot e \ \Big|\ \operatorname{ind} a \cdot \frac{p-1}{e} \iff e \mid \operatorname{ind} a. \ \blacksquare$$

**Példa.** Oldható-e az $x^3 \equiv 5 \pmod{13}$ kongruencia? Itt $(3, 12) = 3$, és $5^{12/3} = 5^4 = 625 = 48 \cdot 13 + 1 \equiv 1$, tehát megoldható, és $3$ megoldása van. Az indextáblázattal: $3\operatorname{ind}_2 x \equiv \operatorname{ind}_2 5 = 9 \pmod{12}$, azaz $\operatorname{ind}_2 x \equiv 3 \pmod 4$, tehát $\operatorname{ind}_2 x \in \{3, 7, 11\}$, és $x \equiv 8, 11, 7 \pmod{13}$. (Ellenőrzés: $7^3 = 343 = 26 \cdot 13 + 5$.)

## 22. Diffie–Hellman-kulcscsere

Ha a modulus nagyon nagy, a diszkrét logaritmus kiszámítása — a moduláris hatványozással ellentétben — nagyon lassú. Erre a különbségre épül a kriptográfia egyik leghíresebb eljárása, a **Diffie–Hellman-kulcscsere** (Whitfield Diffie és Martin Hellman, 1976), amely Ralph Merkle egy ötletén alapul. Ez a nyilvános kulcsú kriptográfia egyik legfontosabb fejezete: a felek úgy állapodnak meg egy közös titkos kulcsban, hogy *teljes kommunikációjuk nyilvános*, mégsem tudja más kitalálni a kulcsot.

Tegyük fel, hogy Aliz és Bob, akik egymástól távol vannak (mondjuk más-más országban), attól tartanak, hogy a csatornát, amelyen kommunikálnak (telefon vagy e-mail), lehallgatják. Hogyan állapodhatnak meg egy közös titkos kulcsban? Tekintsük a legegyszerűbb esetet, amikor a közös kulcs egy (véletlen) nem nulla maradékosztály modulo $p$, ahol $p$ egy nagy prím.

**Az eljárás.**

1. Aliz és Bob nyilvánosan megállapodik egy $p$ prímben és egy $g$ primitív gyökben modulo $p$. (Az sem feltétlenül szükséges, hogy $g$ primitív gyök legyen; elég, ha a rendje nagyon nagy.)
2. Aliz választ egy titkos $a$ egészet ($1 \le a \le p - 1$), Bob egy titkos $b$-t. Ezeket soha senkinek nem mondják el.
3. Aliz kiszámítja és nyilvánosan elküldi Bobnak $A \equiv g^a \pmod p$-t; Bob ugyanígy elküldi Aliznak $B \equiv g^b \pmod p$-t.
4. Aliz kiszámítja $B^a \equiv (g^b)^a = g^{ab}$-t, Bob pedig $A^b \equiv (g^a)^b = g^{ab}$-t. **A közös titkos kulcs $g^{ab} \bmod p$.**

Mindkét számolás egyetlen gyors moduláris hatványozás (7. fejezet).

**Egy játékpélda.** Legyen $p = 23$ és $g = 5$ (primitív gyök modulo $23$). Aliz titkos száma $a = 6$, Bobé $b = 15$. Aliz elküldi az $A = 5^6 \bmod 23 = 8$ számot, Bob a $B = 5^{15} \bmod 23 = 19$ számot. Aliz kiszámítja $19^6 \bmod 23 = 2$-t, Bob $8^{15} \bmod 23 = 2$-t: a közös kulcs $2$. (A valóságban $p$ több száz jegyű.)

**Mit lát a lehallgató?** Tegyük fel, hogy Éva lehallgatja a csatornát. Az $a$ és $b$ számokat nem ismeri — Aliz és Bob „fejben tartotta” őket —, de megszerzi a
$$p, \quad g, \quad g^a \bmod p, \quad g^b \bmod p$$
értékeket. A közös kulcs kiszámításához a következő problémát kell megoldania.

> **Diffie–Hellman-probléma (DHP).** A $p$ prím, a $g$ primitív gyök, valamint $g^a$ és $g^b \pmod p$ ismeretében számítsuk ki $g^{ab} \pmod p$-t.
>
> **Sejtés.** A Diffie–Hellman-problémára nincs gyors algoritmus.

Az eljárás biztonsága azon múlik, hogy Éva — elegendően nagy $p$ esetén — még nagyon gyors számítógépekkel sem tudja belátható időn belül megoldani a DHP-t. Egy szorosan kapcsolódó probléma:

> **Diszkrét logaritmus probléma (DLP).** Adott $c$ ($p \nmid c$) és $g$ primitív gyök esetén számítsuk ki azt az $x$-et, amelyre $c \equiv g^x \pmod p$.

Világos, hogy ha a DLP-re volna gyors algoritmus, akkor a DHP-re is: $g^a$-ból kiszámítanánk $a = \operatorname{ind}_g(g^a)$-t, majd moduláris hatványozással $(g^b)^a = g^{ab}$-t. Fordítva azonban nem világos, hogy a DHP gyors megoldásából következne-e a DLP gyors megoldása. Az általános feltételezés az, hogy a két probléma lényegében ekvivalens, de ez csak sejtés.

Az eljárás könnyen általánosítható tetszőleges (nagy) ciklikus csoportokra, ahol a primitív gyök szerepét a csoport generátoreleme veszi át. A gyakorlatban ma sokszor elliptikus görbéken definiált csoportokat használnak, mert ugyanakkora biztonsághoz ott sokkal kisebb számok is elegendők.

## A VI. rész összefoglalása

- **Rend:** $o_m(a)$ a legkisebb $t > 0$, amelyre $a^t \equiv 1 \pmod m$ (csak $(a, m) = 1$ esetén létezik). $a^t \equiv 1 \iff o_m(a) \mid t$; $a^u \equiv a^v \iff u \equiv v \pmod{o_m(a)}$; $o_m(a) \mid \varphi(m)$. Az $a^k$ rendje $\frac{o_m(a)}{(k, o_m(a))}$.
- **Primitív gyök:** $o_m(g) = \varphi(m)$; ekvivalensen $g$ hatványai redukált maradékrendszert alkotnak. Pontosan $m = 2, 4, p^\alpha, 2p^\alpha$ esetén létezik. Ellenőrzés: $g^{\varphi(m)/q} \not\equiv 1$ minden $q \mid \varphi(m)$ prímre.
- **Prím modulus:** minden $d \mid p - 1$-re pontosan $\varphi(d)$ darab $d$-edrendű elem van; a primitív gyökök száma $\varphi(p - 1)$, és $g^i$ pontosan akkor primitív gyök, ha $(i, p - 1) = 1$. $g^{(p-1)/2} \equiv -1$.
- **Index:** $a \equiv g^{\operatorname{ind} a}$; $\operatorname{ind}(ab) \equiv \operatorname{ind} a + \operatorname{ind} b$, $\operatorname{ind}(a^k) \equiv k \operatorname{ind} a \pmod{p - 1}$. A binom kongruencia lineárissá válik: $x^k \equiv a \pmod p$ pontosan akkor oldható meg, ha $a^{(p-1)/(k, p-1)} \equiv 1$, és ekkor $(k, p - 1)$ megoldása van.
- **Diffie–Hellman:** nyilvános $p, g$; titkos $a, b$; nyilvános $g^a, g^b$; közös kulcs $g^{ab}$. Biztonsága a DHP (és a vele rokon DLP) nehézségén múlik.

## Feladatok a VI. részhez

1. Határozzuk meg modulo $11$ minden nem nulla maradékosztály rendjét, és soroljuk fel a primitív gyököket.
2. Bizonyítsuk be, hogy ha $o_m(a) = t$, akkor $o_m(a^k) = \frac{t}{(t, k)}$.
3. Mutassuk meg, hogy modulo $15$ nincs primitív gyök, közvetlenül a rendek kiszámításával.
4. A modulo $13$ indextáblázat segítségével oldjuk meg: a) $x^5 \equiv 3 \pmod{13}$; b) $x^4 \equiv 2 \pmod{13}$.
5. Legyen $p$ prím. Bizonyítsuk be primitív gyök segítségével, hogy
$$1^k + 2^k + \dots + (p - 1)^k \equiv \begin{cases} -1 \pmod p, & \text{ha } p - 1 \mid k, \\ 0 \pmod p, & \text{ha } p - 1 \nmid k. \end{cases}$$
6. Végezzük el a Diffie–Hellman-kulcscserét a $p = 11$, $g = 2$, $a = 4$, $b = 7$ adatokkal.
7. Bizonyítsuk be, hogy ha $p$ páratlan prím és $g$ primitív gyök modulo $p$, akkor az $x^2 \equiv a \pmod p$ ($p \nmid a$) kongruencia pontosan akkor oldható meg, ha $\operatorname{ind}_g a$ páros.

### Megoldási útmutatók

1. A rendek ($a = 1, \dots, 10$): $1, 10, 5, 5, 5, 10, 10, 10, 5, 2$. Primitív gyökök: $2, 6, 7, 8$ (számuk $\varphi(10) = 4$).
2. $(a^k)^x \equiv 1 \iff t \mid kx \iff \frac{t}{(t,k)} \mid \frac{k}{(t,k)}x \iff \frac{t}{(t,k)} \mid x$, mert $\left(\frac{t}{(t,k)}, \frac{k}{(t,k)}\right) = 1$.
3. $\varphi(15) = 8$, a redukált maradékok $1, 2, 4, 7, 8, 11, 13, 14$, rendjeik $1, 4, 2, 4, 4, 2, 4, 2$ — egyik sem $8$. (A 20.3. Tétel B) esete: $15 = 3 \cdot 5$, $[\varphi(3), \varphi(5)] = 4$.)
4. a) $(5, 12) = 1$, egy megoldás: $5\operatorname{ind} x \equiv \operatorname{ind} 3 = 4 \pmod{12}$; $5^{-1} \equiv 5 \pmod{12}$, így $\operatorname{ind} x \equiv 20 \equiv 8$, $x \equiv 2^8 \equiv 9$. b) $(4, 12) = 4$, és $2^{12/4} = 8 \not\equiv 1$, tehát nincs megoldás (az indexekkel: $4\operatorname{ind} x \equiv \operatorname{ind} 2 = 1 \pmod{12}$, és $4 \nmid 1$).
5. Az $1, \dots, p - 1$ maradékok éppen $g^0, g^1, \dots, g^{p-2}$, így az összeg $\sum_{j=0}^{p-2} (g^k)^j$. Ha $p - 1 \mid k$, minden tag $1$, az összeg $p - 1 \equiv -1$. Különben $g^k \not\equiv 1$, és a mértani sor összegképlete szerint $(g^k - 1) \cdot S = g^{k(p-1)} - 1 \equiv 0$, ahonnan ($g^k - 1$-gyel egyszerűsítve) $S \equiv 0$.
6. $A = 2^4 = 16 \equiv 5$, $B = 2^7 = 128 \equiv 7$; Aliz: $7^4 = 2401 \equiv 3$, Bob: $5^7 \equiv 3 \pmod{11}$. A közös kulcs $3$.
7. Ha $x \equiv g^y$, akkor $x^2 \equiv g^{2y}$, és $g^{2y} \equiv a \iff 2y \equiv \operatorname{ind} a \pmod{p - 1}$, ami pontosan akkor oldható meg, ha $(2, p - 1) = 2 \mid \operatorname{ind} a$. (Ez a 21.2. Tétel $k = 2$ esete, és a következő fejezet kiindulópontja.)

---
