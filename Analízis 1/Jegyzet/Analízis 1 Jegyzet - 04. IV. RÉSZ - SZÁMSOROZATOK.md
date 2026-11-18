# IV. RÉSZ: SZÁMSOROZATOK

## 17. Monotonitás, korlátosság; az (eₙ) sorozat

Innentől kezdve $\mathbb{R}$-beli sorozatokkal, azaz $a : \mathbb{N} \to \mathbb{R}$ függvényekkel foglalkozunk.

**Definíció (monotonitás).** Az $(a_n)$ sorozat

- **monoton növekedő**, ha minden $n \in \mathbb{N}$-re $a_n \le a_{n+1}$;
- **monoton csökkenő**, ha minden $n$-re $a_n \ge a_{n+1}$;
- **szigorúan monoton növekedő**, illetve **csökkenő**, ha a fenti egyenlőtlenségek szigorúak ($<$, illetve $>$).

**Definíció (korlátosság).** Az $(a_n)$ sorozat felülről korlátos, ha az
$$\{a_n : n \in \mathbb{N}\} \subset \mathbb{R}$$
halmaz az. Hasonlóan értelmezzük az alulról korlátosságot és a korlátosságot.

**Példák.** Érdemes négy alapesetet szem előtt tartani, mert végig ezek szolgálnak majd ellenpéldaként:

| sorozat | monotonitás | korlátosság | szemléletes viselkedés |
|---|---|---|---|
| $a_n = \frac{1}{n}$ | szigorúan monoton csökkenő | korlátos | „egyre közelebb kerül $0$-hoz" |
| $b_n = (-1)^n$ | nem monoton | korlátos | „ide-oda ugrál" |
| $c_n = n$ | szigorúan monoton növekedő | alulról korlátos, felülről nem | „minden határon túl nő" |
| $d_n = (-1)^n n$ | nem monoton | nem korlátos | se nem tart sehova, se nem korlátos |

Most bizonyítunk egy állítást, amely az egész félév egyik legfontosabb konstrukciójához vezet.

**Állítás.** Az
$$e_n = \left(1 + \frac{1}{n}\right)^n$$
sorozat szigorúan monoton növekedő.

*Bizonyítás.* Azt kell megmutatnunk, hogy
$$\left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n+1}\right)^{n+1}.$$
Alkalmazzuk a számtani–mértani egyenlőtlenséget $(n+1)$ számra: vegyük $n$ darab $\left(1 + \frac{1}{n}\right)$ számot és egy darab $1$-est. Mivel nem mind egyenlő, az egyenlőtlenség szigorú:
$$\sqrt[n+1]{\left(1 + \tfrac{1}{n}\right)^n \cdot 1} < \frac{n\left(1 + \frac{1}{n}\right) + 1}{n+1} = \frac{n + 1 + 1}{n+1} = 1 + \frac{1}{n+1}.$$
Mindkét oldalt az $(n+1)$-edik hatványra emelve éppen a kívánt egyenlőtlenséget kapjuk. $\blacksquare$

Hasonlóan megmutatható, hogy a
$$d_n = \left(1 + \frac{1}{n}\right)^{n+1}$$
sorozat szigorúan monoton **csökkenő**. A két sorozat tehát „közrefogja" egymást, és — mint a 63. szakaszban látni fogjuk — közös határértékük az $e$ szám.

Numerikusan:
$$e_1 = 2, \quad e_2 = 2{,}25, \quad \dots, \quad e_{100} = 2{,}704813829\dots, \quad e_{1000} = 2{,}716923932\dots,$$
és a sorozat egyre közelebb kerül az
$$e = 2{,}7182818\dots$$
számhoz. Hangsúlyozzuk: ez egyelőre **puszta tapasztalat**, nem bizonyítás — ahhoz előbb tisztáznunk kell, mit is jelent az, hogy „egyre közelebb kerül". Ugyanez a helyzet az $1{,}4;\ 1{,}41;\ 1{,}414;\ \dots$ sorozattal, amely „egyre közelebb kerül" $\sqrt{2}$-höz.

## 18. A sorozat határértéke

**Definíció (határérték).** Az $(a_n)$ sorozat **határértéke** az $a \in \mathbb{R}$ szám, ha minden $\varepsilon > 0$ számhoz létezik olyan $n_\varepsilon$ küszöbindex, amelyre minden $n \ge n_\varepsilon$ esetén
$$|a_n - a| < \varepsilon.$$

A definíció szerkezete a döntő: **először** adják meg a tűrést ($\varepsilon$), és **utána** keressük a küszöböt ($n_\varepsilon$), amely függhet $\varepsilon$-tól. (Az $n \ge n_\varepsilon$ helyett $n > n_\varepsilon$ is írható, és sokan $n_0$-t használnak jelölésként; ez lényegtelen.)

Az $|a_n - a| < \varepsilon$ feltétel szemléletes átfogalmazása:
$$a_n \in B(a, \varepsilon) = \{x \in \mathbb{R} : |x - a| < \varepsilon\} = (a - \varepsilon,\ a + \varepsilon),$$
ahol $B(a,\varepsilon)$ az $a$ pont **$\varepsilon$ sugarú nyílt környezete** (más jelöléssel $U_\varepsilon(a)$, a német *Umgebung* szó nyomán).

**Jelölések.**
$$\lim_{n \to \infty} a_n = a, \qquad a_n \to a \ \text{ha } n \to +\infty, \qquad a_n \to a, \qquad \lim a_n = a.$$

**Definíció.** Ha $(a_n)$-nek van **véges** határértéke, akkor a sorozat **konvergens**. Ha nem konvergens, akkor **divergens**.

**Példák.**

- $\displaystyle \lim_{n\to\infty} \frac{(-1)^n}{2n} = 0$. Adott $\varepsilon$-hoz a küszöb megkereshető; például $\varepsilon = 0{,}01$ esetén $n_\varepsilon = 50$ megfelel. Fontos: **$n_\varepsilon$ nem egyértelmű**, minden nála nagyobb szám is jó küszöb.
- $\displaystyle \lim_{n\to\infty} (-1)^n n$ nem létezik.
- Az $a_n = n$ és a $b_n = (-1)^n$ sorozat is divergens; mindkettő a definíció tagadásával igazolható.

## 19. A határérték alaptulajdonságai

**Tétel (átfogalmazás véges sok kivétellel).** A következő két állítás ekvivalens:

- **(A)** $a_n \to a$, ha $n \to +\infty$.
- **(B)** Minden $\varepsilon > 0$ esetén az $(a_n)$ sorozatnak csak **véges sok** (indexű) tagja esik $B(a,\varepsilon)$-on kívülre.

*Bizonyítás.* **(A) $\Rightarrow$ (B):** legyen $\varepsilon > 0$ adott. A definíció szerint van olyan $n_\varepsilon$, hogy $n \ge n_\varepsilon$ esetén $a_n \in B(a,\varepsilon)$. Így legfeljebb az első $n_\varepsilon - 1$ tag lehet a környezeten kívül, ami véges sok.

**(B) $\Rightarrow$ (A):** legyen $\varepsilon > 0$ adott. (B) szerint véges sok olyan $n$ van, amelyre $a_n \notin B(a,\varepsilon)$. Válasszuk $n_\varepsilon$-t ezek mindegyikénél nagyobbra. Ekkor minden $n \ge n_\varepsilon$ esetén $a_n \in B(a,\varepsilon)$. $\blacksquare$

Ez az átfogalmazás rendkívül hasznos: azt mondja, hogy a határérték szempontjából a sorozat **eleje közömbös**.

**Tétel (a határérték egyértelműsége).** Ha $a_n \to a$ és $a_n \to b$, akkor $a = b$.

**Tétel.** Ha $a_n \to a$, akkor $(a_{n+1} - a_n) \to 0$.

*Bizonyítás.* Legyen $\varepsilon' > 0$. Mivel $a_n \to a$, van olyan $n_{\varepsilon'}$, hogy minden $n \ge n_{\varepsilon'}$ esetén $|a_n - a| < \varepsilon'$. Ekkor ugyanerre az $n$-re $|a_{n+1} - a| < \varepsilon'$ is fennáll (hiszen $n + 1 > n \ge n_{\varepsilon'}$). A háromszög-egyenlőtlenséggel, a „nulla hozzáadásának" trükkjét alkalmazva:
$$|a_{n+1} - a_n| = |a_{n+1} - a + a - a_n| \le |a_{n+1} - a| + |a_n - a| < 2\varepsilon'.$$
Ha tehát egy $\varepsilon > 0$ adott, válasszuk $\varepsilon' = \frac{\varepsilon}{2}$-t, és az ehhez tartozó $n_{\varepsilon'}$ küszöb jó lesz az $(a_{n+1} - a_n) \to 0$ állításhoz. $\blacksquare$

**Figyelem — a megfordítás hamis!** Abból, hogy $a_{n+1} - a_n \to 0$, **nem** következik, hogy $(a_n)$ konvergens. Ellenpéldát a 28. szakaszban adunk ($a_n = \sum_{k=1}^n \frac{1}{\sqrt{k}}$).

**Tétel.** Ha $a_n \to a$, akkor $(a_n)$ korlátos.

*Bizonyítás.* Alkalmazzuk az előző átfogalmazást $\varepsilon = 1$-gyel: a $B(a,1)$ környezeten kívül csak véges sok tag van. Ezek abszolút értékei közül van legnagyobb, legyen ez $K_0$-nál kisebb. A környezetbe eső tagokra $|a_n| < |a| + 1$. Így a
$$K \stackrel{\text{def}}{=} \max\{K_0,\ |a| + 1\}$$
választás korlát. $\blacksquare$

**Figyelem — a megfordítás itt is hamis:** a $(-1)^n$ sorozat korlátos, de nem konvergens.

## 20. Részsorozatok

**Definíció (részsorozat).** Legyen adott az $(a_n)$ sorozat, továbbá az indexek egy szigorúan növekedő sorozata:
$$n_1 < n_2 < \dots < n_k < \dots, \qquad \{n_1, n_2, \dots\} \subset \mathbb{N}.$$
Ekkor a $b_k = a_{n_k}$ ($k = 1, 2, \dots$) sorozatot az $(a_n)$ **részsorozatának** nevezzük.

**Példa.** Legyen $a_n = (-1)^n$, és válasszuk a páros indexeket: $n_k = 2k$. Ekkor
$$b_k = a_{2k} = (-1)^{2k} = 1,$$
azaz az azonosan $1$ sorozat. Megfigyelés: **$(a_n)$ divergens, de van konvergens részsorozata.** Ez lesz a Bolzano–Weierstrass-tétel csírája.

**Tétel.** Ha $a_n \to a$, akkor tetszőleges $(a_{n_k})$ részsorozatára $a_{n_k} \to a$.

*Bizonyítás.* Minden $\varepsilon > 0$-ra az $(a_n)$-nek csak véges sok tagja esik $B(a,\varepsilon)$-on kívülre; ekkor a részsorozatnak is legfeljebb ennyi. $\blacksquare$

**Tétel (a rendezés öröklődése).** Ha minden $n$-re $a_n \le b_n$, továbbá $a_n \to a$ és $b_n \to b$, akkor $a \le b$.

*Bizonyítás.* Indirekt. Tegyük fel, hogy $b < a$, és legyen
$$\varepsilon \stackrel{\text{def}}{=} \frac{a - b}{2} > 0.$$
Válasszunk $n_{\varepsilon,1}$-et és $n_{\varepsilon,2}$-t úgy, hogy
$$\text{(I)}\ \forall n \ge n_{\varepsilon,1}: |a_n - a| < \varepsilon, \qquad \text{(II)}\ \forall n \ge n_{\varepsilon,2}: |b_n - b| < \varepsilon,$$
és legyen $n_\varepsilon = \max\{n_{\varepsilon,1}, n_{\varepsilon,2}\}$. Ha $n \ge n_\varepsilon$, akkor (I) és (II) egyszerre teljesül, tehát
$$a_n > a - \varepsilon = a - \frac{a-b}{2} = \frac{a+b}{2}, \qquad b_n < b + \varepsilon = b + \frac{a-b}{2} = \frac{a+b}{2}.$$
Eszerint $a_n > \frac{a+b}{2} > b_n$, ami ellentmond az $a_n \le b_n$ feltevésnek. $\blacksquare$

**Figyelem — a szigorú egyenlőtlenség nem öröklődik!** Ha minden $n$-re $a_n < b_n$, $a_n \to a$ és $b_n \to b$, abból **nem** következik, hogy $a < b$; csak $a \le b$. Ellenpélda: $a_n = \frac{1}{2n}$, $b_n = \frac{1}{n}$; itt $a_n < b_n$ minden $n$-re, mégis $a = b = 0$.

**További alapvető ekvivalenciák.** $a_n \to a \iff a_n - a \to 0$, valamint $a_n \to 0 \iff |a_n| \to 0$.

## 21. Monoton és korlátos sorozatok

Ez a tétel az első hely, ahol a teljességi axióma közvetlenül munkába lép.

**Tétel.** Ha $(a_n)$ monoton növekedő és felülről korlátos, akkor konvergens, és
$$a_n \to a = \sup\{a_n : n \in \mathbb{N}\} \in \mathbb{R}.$$

*Bizonyítás.* A halmaz nem üres és felülről korlátos, tehát a teljességi axióma szerint létezik $a = \sup\{a_n\}$. Legyen $\varepsilon > 0$. Mivel $a$ a **legkisebb** felső korlát, $a - \varepsilon$ már **nem** felső korlát, tehát létezik olyan $n_\varepsilon$ index, amelyre
$$a_{n_\varepsilon} > a - \varepsilon.$$
A monotonitás miatt minden $n \ge n_\varepsilon$ esetén
$$a_n \ge a_{n_\varepsilon} > a - \varepsilon,$$
másrészt $a$ felső korlát, tehát $a_n \le a$. Így minden $n \ge n_\varepsilon$-ra $a_n \in B(a,\varepsilon)$, ami éppen a konvergenciát jelenti. $\blacksquare$

Természetesen ugyanígy: monoton csökkenő, alulról korlátos sorozat konvergál az infimumához.

## 22. Tágabb értelemben vett határérték

Az $a_n = n$ és $b_n = \sqrt{n}$ sorozatok monoton növekedők, de nem korlátosak; szemléletesen „$+\infty$-hez tartanak". Ezt is precízzé tesszük.

**Definíció.** Az $(a_n)$ sorozat határértéke $+\infty$, ha minden $K \in \mathbb{R}$-hez létezik olyan $n_K$, hogy minden $n \ge n_K$ esetén
$$a_n > K.$$

A környezet-nyelvezet ide is kiterjeszthető: legyen
$$B(+\infty, K) \stackrel{\text{def}}{=} (K, +\infty)$$
a $+\infty$ **$K$-környezete**; ekkor a definíció úgy szól, hogy $a_n \in B(+\infty, K)$ minden elég nagy $n$-re. Jelölés:
$$\lim_{n\to\infty} a_n = +\infty, \qquad a_n \to +\infty.$$
Ilyenkor azt mondjuk, hogy $(a_n)$ **a $+\infty$-hez divergál**. Hasonlóan definiáljuk a $\lim_{n\to\infty} a_n = -\infty$ esetet a $B(-\infty,K) = (-\infty, K)$ környezettel.

**A sorozatok osztályozása.** Minden $(a_n)$ sorozatra **pontosan az egyik** teljesül:

| | |
|---|---|
| **konvergens**: $a_n \to a \in \mathbb{R}$ | $\Big\}$ van határértéke ($\overline{\mathbb{R}}$-ben) |
| **divergens**: $a_n \to +\infty$ | |
| **divergens**: $a_n \to -\infty$ | |
| **divergens**: $(a_n)$ nem tart sehova (oszcillálva divergál) | nincs határértéke |

**Tétel.** A következők ekvivalensek:

- **(A)** $\lim_{n\to\infty} a_n = +\infty$.
- **(B)** Minden $K \in \mathbb{R}$-re az $(a_n)$-nek csak véges sok tagja kisebb vagy egyenlő $K$-nál (azaz esik $B(+\infty,K)$-n kívülre).

## 23. Átrendezések és a sorozat megváltoztatása

**Definíció (átrendezés).** Ha adott az $(a_n)$ sorozat és egy $f : \mathbb{N} \to \mathbb{N}$ **bijekció**, akkor a $b_n = a_{f(n)}$ sorozatot az $(a_n)$ **átrendezésének** nevezzük.

**Tétel.** Ha $a_n \to \alpha \in \overline{\mathbb{R}}$, és $(b_n)$ az alábbi négy eljárás véges sokszori alkalmazásával keletkezik $(a_n)$-ből, akkor $b_n \to \alpha$:

1. **(I)** átrendezés;
2. **(II)** bizonyos (akár végtelen sok) tag véges sokszori megismétlése;
3. **(III)** véges sok tag hozzávétele;
4. **(IV)** véges sok tag elhagyása.

Ezek az eljárások tehát „határérték-semlegesek". (Figyelem: a *sorok* esetében a helyzet gyökeresen más lesz — ott az átrendezés megváltoztathatja az összeget.)

## 24. A rendőrelv

**Tétel (rendőrelv, más néven csendőrszabály vagy közrefogási elv).** Ha van olyan $n_0$, hogy minden $n \ge n_0$ esetén
$$a_n \le b_n \le c_n,$$
továbbá
$$\lim_{n\to\infty} a_n = \lim_{n\to\infty} c_n = a,$$
akkor $\lim_{n\to\infty} b_n = a$.

*Bizonyítás.* Legyen $\varepsilon > 0$ adott. Létezik $n_{\varepsilon,1}$ és $n_{\varepsilon,2}$ úgy, hogy $n \ge n_{\varepsilon,1}$ esetén $|a_n - a| < \varepsilon$, és $n \ge n_{\varepsilon,2}$ esetén $|c_n - a| < \varepsilon$. Legyen
$$n_\varepsilon = \max\{n_{\varepsilon,1},\ n_{\varepsilon,2},\ n_0\}.$$
Ekkor minden $n \ge n_\varepsilon$-ra
$$a - \varepsilon < a_n \le b_n \le c_n < a + \varepsilon,$$
azaz $|b_n - a| < \varepsilon$. $\blacksquare$

**Tétel (a „félrendőrelv").** Ha minden $n \ge n_0$-ra $a_n \le b_n$ és $a_n \to +\infty$, akkor $b_n \to +\infty$.

**Alkalmazás.** Számítsuk ki $\displaystyle \lim_{n\to\infty} \sqrt[n]{2^n + n^2}$-t. Korábban (gyakorlaton) beláttuk, hogy $2^n \ge n^2$, ha $n \ge 5$. Ezért elég nagy $n$-re
$$2 = \sqrt[n]{2^n} \le \sqrt[n]{2^n + n^2} \le \sqrt[n]{2 \cdot 2^n} = \sqrt[n]{2} \cdot 2.$$
A bal oldal állandóan $2$, a jobb oldal pedig $2$-höz tart (mert $\sqrt[n]{2} \to 1$). A rendőrelv szerint tehát a középső sorozat határértéke is $2$.

## 25. Műveletek és határérték

**Definíció.** Adott $(a_n)$ és $(b_n)$ sorozatok esetén $(a_n + b_n)$ az **összegük**, $(a_n \cdot b_n)$ a **szorzatuk**, és ha minden $n$-re $b_n \neq 0$, akkor $\left(\frac{a_n}{b_n}\right)$ a **hányadosuk**.

**Tétel.** Ha $a_n \to a \in \mathbb{R}$ és $b_n \to b \in \mathbb{R}$, akkor

1. **(I)** $a_n + b_n \to a + b$;
2. **(II)** $a_n b_n \to ab$;
3. **(III)** ha minden $n$-re $b_n \neq 0$ és $b \neq 0$, akkor $\frac{a_n}{b_n} \to \frac{a}{b}$;
4. **(IV)** ha $a_n \to 0$ és $(b_n)$ korlátos, akkor $a_n b_n \to 0$.

*Bizonyítás.*

**(II) — a szorzat.** Mivel $a_n \to a$ és $b_n \to b$, mindkét sorozat korlátos; válasszunk olyan $K$-t, hogy minden $n$-re $|a_n| \le K$ és $|b_n| \le K$ (ekkor $|a| \le K$ és $|b| \le K$ is teljesül). Legyen $\varepsilon > 0$, és válasszunk $n_\varepsilon$-t úgy, hogy $n \ge n_\varepsilon$ esetén $|a_n - a| < \varepsilon$ és $|b_n - b| < \varepsilon$. Az ismert trükkel (nullát adunk hozzá):
$$|a_n b_n - ab| = |a_n b_n - a_n b + a_n b - ab| = |a_n(b_n - b) + b(a_n - a)| \le |a_n||b_n - b| + |b||a_n - a| < K\varepsilon + K\varepsilon = 2K\varepsilon.$$
Így $\tilde{\varepsilon} = 2K\varepsilon$-hoz $n_\varepsilon$ megfelelő küszöb; vagy megfordítva: adott $\tilde\varepsilon$-hoz indulásból $\varepsilon = \frac{\tilde\varepsilon}{2K}$-t választva pontosan a definíciót kapjuk.

**(III) — a hányados.** Elég belátni, hogy $\frac{1}{b_n} \to \frac{1}{b}$; ebből és (II)-ből
$$\frac{a_n}{b_n} = a_n \cdot \frac{1}{b_n} \to a \cdot \frac{1}{b} = \frac{a}{b}.$$
Legyen $\varepsilon > 0$. Válasszuk $n_\varepsilon$-t úgy, hogy $n \ge n_\varepsilon$ esetén egyszerre teljesüljön
$$|b_n - b| < \varepsilon \qquad \text{és} \qquad |b_n - b| < \frac{|b|}{2}.$$
A második feltételből következik, hogy $|b_n| > \frac{|b|}{2}$, vagyis a nevező nem „omlik össze". Ekkor
$$\left| \frac{1}{b_n} - \frac{1}{b} \right| = \left| \frac{b - b_n}{b_n b} \right| = \frac{|b - b_n|}{|b_n| \cdot |b|} \le \frac{\varepsilon}{\frac{|b|}{2} \cdot |b|} = \frac{2\varepsilon}{|b|^2},$$
ami $\varepsilon$ alkalmas választásával tetszőlegesen kicsivé tehető. $\blacksquare$

**Tétel.** Ha $a_n \to +\infty$ és $(b_n)$ alulról korlátos, akkor $a_n + b_n \to +\infty$.

*Bizonyítás.* Legyen $K_0$ olyan, hogy minden $n$-re $b_n \ge K_0$. Adott $K$-hoz létezik $n_K$, hogy $n \ge n_K$ esetén $a_n > K - K_0$. Ekkor
$$a_n + b_n > (K - K_0) + K_0 = K. \qquad \blacksquare$$

Ebből következik két szokásos „szimbolikus" szabály:
$$\big(a_n \to +\infty \ \wedge \ b_n \to b\big) \implies a_n + b_n \to +\infty \qquad (\text{``} +\infty + a = +\infty \text{''}),$$
$$\big(a_n \to +\infty \ \wedge \ b_n \to +\infty\big) \implies a_n + b_n \to +\infty \qquad (\text{``} +\infty + \infty = +\infty \text{''}).$$
(Mindkét esetben azért alkalmazható a tétel, mert a $(b_n)$ konvergens, illetve $+\infty$-hez divergáló sorozat szükségképpen alulról korlátos.)

## 26. Kritikus (határozatlan) határértékek

Ha $a_n \to +\infty$ és $b_n \to -\infty$, akkor az $a_n + b_n$ összegről **semmit sem mondhatunk általánosságban**; ezt nevezzük **kritikus** (határozatlan) határértéknek. Az alábbi példák mutatják, hogy minden viselkedés előfordulhat:

- $a_n = n$, $b_n = -n$: ekkor $a_n + b_n = 0 \to 0$.
- $a_n = n$, $b_n = (-1)^n 2n$: ekkor $a_n + b_n$ oszcillálva divergál.
- $a_n = 2n$, $b_n = -n$: ekkor $a_n + b_n = n \to +\infty$.

**További tételek.**

- Ha $a_n \to a > 0$ és $b_n \to \pm\infty$, akkor $a_n b_n \to \pm\infty$.
- Az $a_n \to 0$, $b_n \to +\infty$ eset a szorzatra nézve **kritikus**.
- Ha $a_n \to \infty$, akkor $\frac{1}{a_n} \to 0$.
- Ha $a_n \to 0$ és minden $n$-re $a_n \neq 0$, akkor $\frac{1}{|a_n|} \to +\infty$.

**Az összeg határértéke, táblázatosan** ($a_n \to$ sorok, $b_n \to$ oszlopok):

| $\lim(a_n + b_n)$ | $b$ | $+\infty$ | $-\infty$ |
|---|---|---|---|
| $a$ | $a + b$ | $+\infty$ | $-\infty$ |
| $+\infty$ | $+\infty$ | $+\infty$ | **kritikus** |
| $-\infty$ | $-\infty$ | **kritikus** | $-\infty$ |

**A szorzat határértéke, táblázatosan:**

| $\lim(a_n b_n)$ | $b > 0$ | $0$ | $b < 0$ | $+\infty$ | $-\infty$ |
|---|---|---|---|---|---|
| $a > 0$ | $ab$ | $0$ | $ab$ | $+\infty$ | $-\infty$ |
| $0$ | $0$ | $0$ | $0$ | **kritikus** | **kritikus** |
| $a < 0$ | $ab$ | $0$ | $ab$ | $-\infty$ | $+\infty$ |
| $+\infty$ | $+\infty$ | **kritikus** | $-\infty$ | $+\infty$ | $-\infty$ |
| $-\infty$ | $-\infty$ | **kritikus** | $+\infty$ | $-\infty$ | $+\infty$ |

## 27. A Bolzano–Weierstrass-tétel

**Lemma.** Minden sorozatnak van monoton részsorozata.

*Bizonyítás.* Nevezzük az $a_k$ tagot **csúcselemnek**, ha minden $m \ge k$ esetén $a_m \le a_k$ (vagyis utána már soha nem lesz nagyobb tag).

**a) eset: végtelen sok csúcs van.** Legyenek ezek $a_{k_1}, a_{k_2}, \dots$ ($k_1 < k_2 < \dots$). Ez részsorozat, és a csúcs definíciója szerint
$$a_{k_1} \ge a_{k_2} \ge a_{k_3} \ge \dots,$$
tehát monoton csökkenő.

**b) eset: véges sok csúcs van.** Ekkor létezik olyan $s_1$ index, hogy minden $m \ge s_1$ esetén $a_m$ **nem** csúcs. Egy nem csúcselemhez viszont a definíció tagadása szerint van olyan $m' > m$, amelyre $a_{m'} > a_m$. Induljunk $k_1 = s_1$-ből: létezik $k_2 > k_1$ úgy, hogy $a_{k_2} > a_{k_1}$; majd létezik $k_3 > k_2$ úgy, hogy $a_{k_3} > a_{k_2}$; és így tovább. A kapott részsorozat szigorúan monoton növekedő. $\blacksquare$

**Tétel (Bolzano–Weierstrass).** Minden korlátos sorozatnak van konvergens részsorozata.

*Bizonyítás.* A lemma szerint van monoton részsorozata; ez a részsorozat korlátos (hiszen az egész sorozat az), és korlátos monoton sorozat a 21. szakasz tétele szerint konvergens. $\blacksquare$

**Tétel.** Ha $(a_n)$ felülről (alulról) nem korlátos, akkor van $+\infty$-hez ($-\infty$-hez) divergáló részsorozata.

## 28. A Cauchy-kritérium

Térjünk vissza a 19. szakaszban ígért ellenpéldára. Legyen
$$a_n = 1 + \frac{1}{\sqrt{2}} + \dots + \frac{1}{\sqrt{n}} = \sum_{k=1}^n \frac{1}{\sqrt{k}}.$$
Egyrészt minden tag legalább $\frac{1}{\sqrt{n}}$, tehát
$$a_n \ge n \cdot \frac{1}{\sqrt{n}} = \sqrt{n} \to +\infty,$$
vagyis a sorozat divergens. Másrészt
$$a_{n+1} - a_n = \frac{1}{\sqrt{n+1}} \to 0.$$
Ez bizonyítja, hogy
$$a_{n+1} - a_n \to 0 \not\Rightarrow (a_n) \ \text{konvergens}.$$
A szomszédos tagok közeledése tehát nem elég. Mi a helyes feltétel? Az, hogy *minden* elég kései tagpár közel legyen egymáshoz — nem csak a szomszédosak.

**Tétel (Cauchy-kritérium).** Az $(a_n)$ sorozat akkor és csak akkor konvergens, ha minden $\varepsilon > 0$-hoz létezik olyan $n_\varepsilon$, hogy minden $n, m \ge n_\varepsilon$ esetén
$$|a_n - a_m| < \varepsilon.$$

*Bizonyítás.*

**($\Rightarrow$) Szükségesség.** Legyen $a_n \to a \in \mathbb{R}$. Adott $\varepsilon > 0$-hoz van olyan $n_\varepsilon$, hogy $n \ge n_\varepsilon$ esetén $|a_n - a| < \frac{\varepsilon}{2}$. Ekkor minden $n, m \ge n_\varepsilon$-ra
$$|a_n - a_m| = |a_n - a + a - a_m| \le |a_n - a| + |a - a_m| < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon.$$

**($\Leftarrow$) Elégségesség.** Ez a nehezebb irány, és itt használjuk a teljességet (a Bolzano–Weierstrass-tételen keresztül).

*Első lépés: a sorozat korlátos.* Alkalmazzuk a feltételt $\varepsilon_0 = 1$-re: van olyan $n_1$, hogy minden $n, m \ge n_1$-re $|a_n - a_m| < 1$. Speciálisan minden $m \ge n_1$-re $|a_{n_1} - a_m| < 1$, azaz $|a_m| < |a_{n_1}| + 1$. Az első $n_1 - 1$ tag véges sok, így a
$$K = \max\{|a_{n_1}| + 1,\ |a_1|,\ \dots,\ |a_{n_1 - 1}|\}$$
korlát megfelelő.

*Második lépés: van konvergens részsorozat.* A Bolzano–Weierstrass-tétel szerint létezik olyan $(a_{n_k})$ részsorozat és $a \in \mathbb{R}$, hogy $a_{n_k} \to a$, ha $k \to +\infty$.

*Harmadik lépés: az egész sorozat ehhez az $a$-hoz tart.* Legyen $\varepsilon > 0$ adott. Van olyan $k_\varepsilon$, hogy minden $k \ge k_\varepsilon$-ra $|a_{n_k} - a| < \varepsilon$; és van olyan $n_\varepsilon$, hogy minden $n, m \ge n_\varepsilon$-ra $|a_n - a_m| < \varepsilon$. Válasszunk olyan $k$-t, amelyre egyszerre $k \ge k_\varepsilon$ és $n_k \ge n_\varepsilon$ (ez lehetséges, hiszen $n_k \to \infty$). Ekkor minden $n \ge n_\varepsilon$-ra
$$|a_n - a| \le |a_n - a_{n_k}| + |a_{n_k} - a| < \varepsilon + \varepsilon = 2\varepsilon,$$
ami a konvergenciát jelenti. $\blacksquare$

A Cauchy-kritérium óriási előnye, hogy **a határérték ismerete nélkül** dönt a konvergenciáról. Tipikus alkalmazás: ha $|a_{n+1} - a_n| \le \frac{1}{2^n}$ minden $n$-re, akkor $(a_n)$ konvergens (a mértani sor összegzésével a Cauchy-feltétel közvetlenül ellenőrizhető).

---
