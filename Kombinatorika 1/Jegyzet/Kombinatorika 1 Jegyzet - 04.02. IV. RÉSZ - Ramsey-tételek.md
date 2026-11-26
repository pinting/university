## 52. Ramsey tétele

> **Feladat (Fazekas Tünde *Ramsey tételéről* című anyagának bevezető példája nyomán).** Igaz-e, hogy egy $6$ fős társaságban biztosan van $3$ ember, akik mind jóban vannak egymással ($3$ fős **klikk**), vagy $3$, akik páronként nem kedvelik egymást ($3$-as **antiklikk**)? (Feltesszük, hogy a kedvelés – nem kedvelés kölcsönös.)

Fogalmazzuk át gráfokra: a csúcsok a társaság $6$ tagja, az élek a kedvelési viszonyok. Egy $3$ fős klikk egy háromszög ($\triangle$) a $G$ gráfban, egy $3$-as antiklikk pedig három független csúcs — vagyis egy háromszög a $\overline{G}$ komplementer gráfban. Így szimmetrikusabb a megfogalmazás, ha a $K_6$ teljes gráf összes élét **két színnel színezzük**: **pirosra** az eredeti éleket (kedvelés), **kékre** a nem-éleket (nem kedvelés). A kérdés ekkor: **lesz-e biztosan piros vagy kék háromszög?**

*Igen.* Válasszunk egy tetszőleges csúcsot. Ebből $5$ él indul, két színnel színezve; a skatulyaelv szerint legalább $3$ azonos színű, mondjuk piros. Tekintsük az ezekkel elért $3$ csúcsot:

- ha közöttük van legalább egy piros él, akkor az a kiinduló csúccsal együtt **piros háromszöget** alkot;
- ha közöttük nincs piros él, akkor mind a három összekötő él kék, tehát **kék háromszöget** kapunk. $\blacksquare$

Mivel $K_6 \subset K_7 \subset K_8 \subset \dots$, az állítás automatikusan igaz minden $n \ge 6$ csúcsú teljes gráfra is. **$K_5$-ben azonban még nem igaz:** a $K_5$ éleit színezzük úgy, hogy egy ötszög ($C_5$) élei legyenek pirosak, az átlók (egy ötágú csillag élei) pedig kékek. Mindkét színosztály egy-egy ötszög, így nincs egyszínű háromszög (a piros kör komplementere ugyanilyen ötszög).

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=1.0,
  pt/.style={circle, draw=black, fill=black, inner sep=1.6pt},
  red/.style={draw=red!75!black, very thick},
  blue/.style={draw=blue!70!black, thick, dashed}
]
  \foreach \i in {0,1,2,3,4} { \coordinate (p\i) at (90 + 72*\i:1.4); }
  \draw[red] (p0) -- (p1) -- (p2) -- (p3) -- (p4) -- (p0);
  \draw[blue] (p0) -- (p2) -- (p4) -- (p1) -- (p3) -- (p0);
  \foreach \i in {0,1,2,3,4} { \node[pt] at (p\i) {}; }
  \node[align=center] at (0, -2.05) {\footnotesize A $K_5$ egyszínű háromszög nélküli színezése: \\ \footnotesize piros (folytonos) ötszög, kék (szaggatott) csillag.};
\end{tikzpicture}
\end{adjustbox}
\end{center}

### Általánosítás és a Ramsey-számok

Természetes általánosítás: adott $k$-hoz milyen $n$-re igaz, hogy a $K_n$ éleit tetszőlegesen két színnel (pirosra és kékre) színezve lesz egyszínű (minden éle piros vagy minden éle kék) $k$ csúcsú teljes részgráf? Sőt általánosabban, eltérő méreteket is előírhatunk a két színnek:

> **Tétel (Ramsey, 1930).** Minden $k, l \ge 1$ egészhez van olyan $n$, hogy bármely $n$ csúcsú egyszerű gráfban van $k$ csúcsú teljes részgráf ($K_k$) vagy $l$ csúcsú üres részgráf ($l$ független csúcs).
>
> Ekvivalens alak: a $K_n$ éleit akárhogyan színezzük pirosra és kékre, lesz **piros $K_k$** vagy **kék $K_l$**.

Első pillantásra nem nyilvánvaló, hogy egyáltalán **létezik** ilyen $n$. Ha például megpróbáljuk ugyanazt a közvetlen felezést, mint $K_6$-nál: egy csúcsból $n - 1$ él indul, így valamelyik színből legalább $\lceil \frac{n-1}{2} \rceil$ megy egy részhalmazba — de egyetlen lépésben e csúcsok között még nem garantált az egyszínű $K_k$ vagy $K_l$. Annyi biztos, hogy ha egy adott $n$-re igaz az állítás, akkor minden $\ge n$ csúcsszámra is igaz lesz (hiszen a nagyobb teljes gráf tartalmazza a $K_n$-et). Ezért érdemes a legkisebb jó csúcsszámot keresni.

> **Definíció (Ramsey-szám).** Az $R(k, l)$ **Ramsey-szám** a legkisebb olyan $n$, amelyre a $K_n$ éleinek bármely piros–kék színezésében van piros $K_k$ vagy kék $K_l$.

Az $R(k, l) = n$ állítás tehát két dolgot jelent: (1) $K_n$ **minden** piros–kék színezésében van piros $K_k$ vagy kék $K_l$ ($R(k, l) \le n$), és (2) $K_{n-1}$-nek **van** olyan színezése, amelyben egyik sincs ($R(k, l) > n - 1$). Egyetlen konkrét színezés tehát mindig csak **alsó becslést** adhat; felső becsléshez minden színezést le kell fedni.

**Egyszerű tulajdonságok és kis értékek:**

- $R(k, l) = R(l, k)$, mert a két szín szerepe szimmetrikus.
- $R(2, l) = l$ és $R(k, 2) = k$: a $K_l$ egy színezésében vagy van legalább egy piros él (ez már egy piros $K_2$), vagy nincs piros él — ekkor viszont mind a $\binom{l}{2}$ él kék, tehát az egész gráf egy kék $K_l$. Az $n = l - 1$ csúcson a csupa kék színezésben egyik sincs. *(Megállapodás szerint $R(1, l) = 1$, hiszen egy csúcs már $K_1$.)*
- Az előző feladat éppen azt mutatta meg, hogy $R(3, 3) = 6$.

### Bevezető példa a felső becslésre: $R(3, 4) \le 10$ és $R(3, 4) \le 9$

Vegyük észre, hogy $R(3, 3) = 6 = 3 + 3 = R(2, 3) + R(3, 2)$. Ez felveti a kérdést: igaz-e általában az $R(k, l) \le R(k-1, l) + R(k, l-1)$ becslés? Próbáljuk ki először $R(3, 4)$-re! Ha a képlet igaz, akkor
$$R(3, 4) \le R(2, 4) + R(3, 3) = 4 + 6 = 10.$$

**Igazoljuk közvetlenül, hogy $R(3, 4) \le 10$!** Tekintsük $K_{10}$ egy tetszőleges piros–kék színezését, és válasszunk ki egy „**kedvenc csúcsot**”. Ebből $9$ él indul ki. Az alábbi két eset egyikének teljesülnie kell:

- **I. eset: a kedvenc csúcsból $< R(2, 4) = 4$ (azaz legfeljebb $3$) piros él indul.**
  Ekkor a maradék (kék éllel elért) oldalon legalább $9 - 3 = 6 = R(3, 3)$ csúcs van. (A legfeljebb $3$ piros szomszédból itt nem jutnánk $K_4$-ig, ha nincs közöttük piros él — a másik oldalon viszont elég csúcs van!) Ezen a legalább $6$ kék szomszédban $R(3, 3) = 6$ miatt vagy van piros $K_3$ ($\checkmark$), vagy van kék $\triangle$, amely a kedvenc csúccsal együtt **kék $K_4$-et** alkot ($\checkmark$).
- **II. eset: a kedvenc csúcsból legalább $4$ piros él indul.**
  Ha e legalább $4$ csúcs között van piros él, az a kedvenc csúccsal **piros $K_3$-at** ad ($\checkmark$). Ha nincs közöttük piros él, akkor mind a négy (vagy több) csúcs között csupa kék él fut, tehát van **kék $K_4$** ($\checkmark$).

Ez bizonyítja, hogy $10$ csúcsra biztosan teljesül, de **lehet, hogy kevesebb is elég**. Nézzük meg $n = 9$-re!

> **Állítás.** $R(3, 4) \le 9$.

*Bizonyítás.* Tekintsük $K_9$ egy tetszőleges piros–kék színezését. Ha van olyan csúcs, amelyből $\ge 4$ piros él indul, az a II. eset szerint kész ($\checkmark$); ha pedig van olyan, amelyből $\le 2$ piros él indul, akkor abból legalább $8 - 2 = 6$ kék él indul, ami az I. eset szerint kész ($\checkmark$).

Mivel *bármely* csúcs kinevezhető kedvenc csúcsnak, csak akkor maradhatna el a piros $K_3$ és a kék $K_4$, ha **minden** csúcsból pontosan $3$ piros (és $5$ kék) él indulna ki. Ekkor azonban a piros élek gráfjában $9$ csúcs mindegyikének foka $3$ volna, így a fokszámösszeg $9 \cdot 3 = 27$ — páratlan! Ez ellentmond a kézfogási lemmának. Tehát $n = 9$ is elég. $\blacksquare$

*(Feladat: $n = 8$-ra már nem igaz — ezt lentebb a $K_8$ színezésével és $R(4,4)=18$ segítségével is belátjuk.)*

### Az Erdős–Szekeres-egyenlőtlenség és a binomiális felső becslés

Most lássuk ugyanezt a gondolatmenetet általánosan!

> **Tétel (Erdős–Szekeres-egyenlőtlenség).** Minden $k, l \ge 3$ esetén (illetve $k, l \ge 2$-re is, ha $R(1, \cdot) = 1$)
> $$R(k, l) \le R(k - 1, l) + R(k, l - 1).$$

*Bizonyítás.* Legyen $n = R(k - 1, l) + R(k, l - 1)$, és színezzük a $K_n$ éleit tetszőlegesen pirosra és kékre. Válasszunk ki egy kedvenc csúcsot; ennek $n - 1$ szomszédja van.

- **I. eset:** a kedvenc csúcsból legfeljebb $R(k - 1, l) - 1$ piros él indul. Ekkor legalább
  $$(n - 1) - \big(R(k - 1, l) - 1\big) = n - R(k - 1, l) = R(k, l - 1)$$
  kék él indul belőle. A kék szomszédok legalább $R(k, l - 1)$ elemű halmazában az $R(k, l - 1)$ definíciója szerint vagy van piros $K_k$ ($\checkmark$), vagy van kék $K_{l-1}$, amelyhez a kedvenc csúcsot hozzávéve kék $K_l$-t kapunk ($\checkmark$).
- **II. eset:** a kedvenc csúcsból legalább $R(k - 1, l)$ piros él indul. E piros szomszédok között az $R(k - 1, l)$ definíciója szerint vagy van piros $K_{k-1}$ — amely a kedvenc csúccsal együtt piros $K_k$-t ad ($\checkmark$) —, vagy van kék $K_l$ ($\checkmark$). $\blacksquare$

Ez a tétel egyúttal Ramsey tételének véges bizonyítását is adja ($k + l$ szerinti teljes indukcióval). Ha az $R(k, l)$-re kapott rekurzív felső korlátokat táblázatba foglaljuk ($k, l \ge 2$), a táblázatban éppen **az 1-esek nélküli Pascal-háromszög** jelenik meg (minden mező a felette és a tőle balra álló mező összege):

| $k \backslash l$ | $2$ | $3$ | $4$ | $5$ |
|:-:|:-:|:-:|:-:|:-:|
| **$2$** | $2$ | $3$ | $4$ | $5$ |
| **$3$** | $3$ | $6$ | $10$ | $15$ |
| **$4$** | $4$ | $10$ | $20$ | |
| **$5$** | $5$ | $15$ | | |

Így a felső becslés explicit binomiális alakra hozható:

> **Következmény (Erdős–Szekeres).** Minden $k, l \ge 2$ esetén (sőt $k, l \ge 1$-re is)
> $$R(k, l) \le \binom{k + l - 2}{k - 1}.$$
> Speciálisan ($k = l$), minden $k \ge 3$-ra
> $$R(k, k) \le \binom{2k - 2}{k - 1} < 2^{2k - 2} \approx 4^k,$$
> továbbá magára a középső binomiális együtthatóra $\frac{2^{2k - 2}}{2k - 2} < \binom{2k - 2}{k - 1} < 2^{2k - 2}$ teljesül.

*Bizonyítás.* Teljes indukció $k + l$ szerint. Az alapeset ($k = 2$, $l$ tetszőleges, illetve $l = 2$, $k$ tetszőleges) teljesül: $R(2, l) = l = \binom{l}{1}$ és $R(k, 2) = k = \binom{k}{k-1}$. Az indukciós lépésben az Erdős–Szekeres-egyenlőtlenséget és a Pascal-azonosságot ($\binom{N}{K-1} + \binom{N}{K} = \binom{N+1}{K}$) használva:
$$R(k, l) \le R(k - 1, l) + R(k, l - 1) \le \binom{k + l - 3}{k - 2} + \binom{k + l - 3}{k - 1} = \binom{k + l - 2}{k - 1}.$$
Speciálisan $k = l$ esetén $\binom{2k-2}{k-1}$ a Pascal-háromszög $(2k-2)$-edik sorának legnagyobb (középső) eleme. A sor összes elemének összege $2^{2k-2}$. Mivel $k \ge 3$-ra a két szélső $1$-es összege $\binom{2k-2}{0} + \binom{2k-2}{2k-2} = 2 < \binom{2k-2}{k-1}$, a középső elem kisebb a sor összegénél ($2^{2k-2} = \frac{1}{4}\cdot 4^k < 4^k$), ugyanakkor a maradék $2k - 3$ tag mindegyike legfeljebb $\binom{2k-2}{k-1}$, tehát
$$2^{2k-2} = 2 + \sum_{j=1}^{2k-3}\binom{2k-2}{j} < \big(1 + (2k-3)\big)\binom{2k-2}{k-1} = (2k-2)\binom{2k-2}{k-1},$$
vagyis $\frac{2^{2k-2}}{2k-2} < \binom{2k-2}{k-1}$. $\blacksquare$

### Alsó becslés $R(k, k)$-ra: Erdős tétele

Felső becslésünk már van ($\sim 4^k$). Tudunk-e **alsó becslést** adni $R(k, k)$-ra? Nagy $n$-ekre konkrét „jó” (egyszínű $K_k$-mentes) színezést konstruálni nem járható út. Erdős Pál 1947-ben ehelyett **megszámolta**, hány rossz színezés létezhet legfeljebb!

> **Tétel (Erdős, 1947).** Minden $k \ge 2$ esetén
> $$R(k, k) > 2^{\frac{k - 1}{2}}$$
> (egész kitevővel $R(k, k) > 2^{\lfloor \frac{k-1}{2} \rfloor}$, pontosabban pedig $R(k, k) \ge \lfloor 2^{\frac{k-1}{2}} \rfloor + 1 > 2^{\frac{k-1}{2}}$).

*Bizonyítás.* $k = 2$-re $R(2, 2) = 2 > \sqrt{2}$ nyilvánvaló. Legyen tehát $k \ge 3$. Rögzítsünk egy $n \ge 1$ csúcsszámot, és számoljuk meg a $K_n$ két színnel való színezéseit:

- A $K_n$ összes két színnel (pirossal és kékkel) való színezésének száma:
  $$2^{\binom{n}{2}}.$$
- Hány olyan („rossz”) színezés van, amelyben **létezik** egyszínű $K_k$?
  1. Válasszuk ki a $k$ csúcsú „kis klikket” $\binom{n}{k}$-féleképpen.
  2. E kis klikk $\binom{k}{2}$ darab éle mind azonos színű legyen: ehhez $2$ szín közül választhatunk.
  3. A maradék („nagy klikk mínusz kis klikk”) $\binom{n}{2} - \binom{k}{2}$ darab él színe tetszőleges lehet: $2^{\binom{n}{2} - \binom{k}{2}}$-féleképpen.
  Egy színezésben több egyszínű $K_k$ is lehet, így az összes rossz színezés számára ez egy (túlszámoló, „durva”) felső becslést ad:
  $$(\text{egyszínű } K_k\text{-t tartalmazó színezések száma}) \le 2 \cdot \binom{n}{k} \cdot 2^{\binom{n}{2} - \binom{k}{2}}.$$

Ha ez a szám **szigorúan kisebb** az összes színezés számánál, azaz
$$2 \cdot \binom{n}{k} \cdot 2^{\binom{n}{2} - \binom{k}{2}} < 2^{\binom{n}{2}},$$
akkor marad olyan színezése $K_n$-nek, amelyben **nincs** egyszínű $K_k$, vagyis $R(k, k) > n$.

Becsüljük felül $\binom{n}{k}$-t ($k \ge 3$ és $n \ge 1$ esetén szigorúan; $n < k$-ra pedig $0 < \frac{n^k}{k!}$):
$$\binom{n}{k} = \frac{n(n-1)\cdots(n-k+1)}{k!} < \frac{n^k}{k!}.$$
Elég tehát, ha $n$-re teljesül:
$$\frac{n^k}{k!} \cdot 2 \cdot 2^{\binom{n}{2} - \binom{k}{2}} \le 2^{\binom{n}{2}} \iff \frac{2 \cdot n^k}{k! \cdot 2^{\binom{k}{2}}} \le 1.$$
Válasszuk $n = \big\lfloor 2^{\frac{k-1}{2}} \big\rfloor$-nek! Ekkor $n^k \le \big(2^{\frac{k-1}{2}}\big)^k = 2^{\frac{k(k-1)}{2}} = 2^{\binom{k}{2}}$, ezért a $2^{\binom{k}{2}}$ tényező kiesik, és
$$\frac{2 \cdot n^k}{k! \cdot 2^{\binom{k}{2}}} \le \frac{2}{k!} < 1 \qquad (k \ge 3\text{-tól igaz!}).$$
Tehát $n = \lfloor 2^{\frac{k-1}{2}} \rfloor$-re létezik egyszínű $K_k$-mentes színezés, vagyis $R(k, k) \ge \lfloor 2^{\frac{k-1}{2}} \rfloor + 1 > 2^{\frac{k-1}{2}}$. $\blacksquare$

Az alsó és a felső becslést összevetve ($k \ge 3$):
$$2^{\lfloor \frac{k-1}{2} \rfloor} < R(k, k) \le \binom{2k-2}{k-1} < 2^{2k-2},$$
vagyis a növekedési rendet tekintve lényegében
$$(\sqrt{2})^k < R(k, k) < 4^k.$$
Az alsó korlát $\sqrt{2}$-es alapja lényegében azóta sem javult. A felső korlát $4$-es alapja azonban javult: $4$ helyett újabb eredmények alapján kisebb alap is igaz (kb. $3{,}8^k$; az előadáson említett nagyságrend: „kb. $3{,}5$”).

### Aszimmetrikus Ramsey-számok ($R(s, t)$) és pontos értékek

Ha $s$ kicsi rögzített szám, és $t$ nő, az Erdős–Szekeres-becslés polinomot ad $t$-ben:

- $s = 3$-ra: $R(3, t) \le \binom{3 + t - 2}{2} = \frac{(t + 1)t}{2} < t^2$ (ha $t \ge 2$).
- $s = 4$-re: $R(4, t) \le \binom{4 + t - 2}{3} = \frac{(t + 2)(t + 1)t}{6} < t^3$ (ha $t \ge 2$).
- Általánosan: $R(s, t)$ felső korlátja egy $(s - 1)$-edfokú polinom $t$-ben, azaz $R(s, t) \lesssim t^{s - 1}$ ($O(t^{s-1})$).

Az igazi nagyságrendek meghatározásában komoly áttörések születtek:

- $s = 3$-ra: **Ajtai–Komlós–Szemerédi** (felső korlát) és **Kim** (alsó korlát) eredményei szerint a $t^2$ nagyságrend $\frac{t^2}{\log t}$-re javítható ($R(3, t) = \Theta\big(\frac{t^2}{\log t}\big)$).
- $s = 4$-re: **Mattheus és Verstraete** alsó korlátja $\approx \frac{t^3}{\log^4 t}$ ($R(4, t) = \Omega\big(\frac{t^3}{\log^4 t}\big)$).
- $s \ge 5$-re: **Bradač** (Domagoj Bradač) ért el áttörést az aszimmetrikus alsó korlátokban.

A kis Ramsey-számok ismert **pontos értékei**:

| $k \backslash l$ | $2$ | $3$ | $4$ | $5$ | $6$ |
|:-:|:-:|:-:|:-:|:-:|:-:|
| **$2$** | $2$ | $3$ | $4$ | $5$ | $6$ |
| **$3$** | $3$ | $6$ | $9$ | $14$ | $18$ |
| **$4$** | $4$ | $9$ | $18$ | | |

Kiemelendő, hogy $R(3, 6) = 18$-at magyar matematikus, **Kéry Gerzson** (1964; a jegyzetben „Kéri Gerzson” alakban is) határozta meg. *(Az $R(5, 5)$ értékét ma sem ismerjük, csak azt tudjuk, hogy $43$ és $46$ közé esik. Erdős Pál egy híres mondása szerint ha egy földönkívüli hatalom az $R(5, 5)$ kiszámítását követelné tőlünk, a Föld összes számítógépét és matematikusát rá kellene állítani; ha az $R(6, 6)$-ot, inkább a támadásra kellene felkészülni.)*

### Alsó becslések és konkrét színezések: $R(4, 4) = 18$ és $R(3, 4) = 9$

**1. $R(4, 4) = 18$ és a Paley-gráf.** A felső korlát $R(4, 4) \le R(3, 4) + R(4, 3) = 9 + 9 = 18$. Hogy $17$ csúcs még nem elég, azt a $17$-csúcsú **Paley-gráf** mutatja:

- A csúcsok a $\bmod\ 17$ maradékosztályok ($\{0, 1, \dots, 16\}$).
- Két csúcs között akkor van **piros** él, ha a különbségük **kvadratikus maradék** modulo $17$ (különben kék az él).
- Miért jól definiált (irányítatlan) a színezés? Mert modulo $17$ a $-1 \equiv 16 = 4^2$ maga is kvadratikus maradék! Így ha $a - b$ kvadratikus maradék, akkor $b - a = -(a - b) \equiv 4^2 (a - b)$ is az.

*(Megjegyzés: az előadáson e téma kapcsán **Nagy Zoltán Lóránt** is említésre került. A Paley-gráfban sem piros $K_4$, sem kék $K_4$ nincs, így $R(4, 4) > 17$, tehát $R(4, 4) = 18$.)*

::: kiegeszites
**Kiegészítés — miért nincs egyszínű $K_4$ a $17$-csúcsú Paley-gráfban?** A nemnulla kvadratikus maradékok halmaza modulo $17$:
$$Q = \{1, 2, 4, 8, 9, 13, 15, 16\}$$
(hiszen $(\pm 1)^2 \equiv 1$, $(\pm 2)^2 \equiv 4$, $(\pm 3)^2 \equiv 9$, $(\pm 4)^2 \equiv 16$, $(\pm 5)^2 \equiv 8$, $(\pm 6)^2 \equiv 2$, $(\pm 7)^2 \equiv 15$, $(\pm 8)^2 \equiv 13 \pmod{17}$), a nemmaradékok pedig $N = \{3, 5, 6, 7, 10, 11, 12, 14\}$. Ha minden csúcsot megszorzunk egy kvadratikus nemmaradékkal (például $3$-mal), a különbségek $Q$-ból $N$-be és $N$-ből $Q$-ba kerülnek, vagyis a gráf izomorf a komplementerével. Elég tehát megmutatni, hogy **piros $K_4$ nincs**.

Tegyük fel indirekt, hogy $\{x_1, x_2, x_3, x_4\}$ piros $K_4$. Minden csúcsból kivonhatjuk $x_1$-et (az eltolás nem változtatja a különbségeket), így feltehető, hogy $x_1 = 0$, ekkor pedig $x_2, x_3, x_4 \in Q$. Ezután minden csúcsot megszorozhatunk $x_2^{-1}$-gyel (ami szintén $Q$-beli, így a szorzás megőrzi a $Q$-beliséget), tehát feltehető, hogy $x_2 = 1$. Ekkor $x_3, x_4 \in Q \setminus \{1\}$ olyan elemek, amelyekre $x_3 - 1 \in Q$, $x_4 - 1 \in Q$, és $x_4 - x_3 \in Q$. Ellenőrizve a $Q \setminus \{1\} = \{2, 4, 8, 9, 13, 15, 16\}$ elemeit, csak háromra igaz, hogy eggyel kisebb társuk is $Q$-ban van:
$$2 - 1 = 1 \in Q, \qquad 9 - 1 = 8 \in Q, \qquad 16 - 1 = 15 \in Q$$
(a többire $3, 7, 12, 14 \in N$). Tehát $x_3, x_4 \in \{2, 9, 16\}$. Ám e három szám bármely kettőjének különbsége modulo $17$ a $\{3, 7, 10, 14\} \subseteq N$ halmazba esik ($9 - 2 = 7$, $16 - 9 = 7$, $16 - 2 = 14$), így $x_4 - x_3 \notin Q$ — ellentmondás. $\blacksquare$
:::

**2. $R(3, 4) = 9$ alsó korlátja kétféleképpen.**

- **Konstruktívan ($K_8$ színezése):** A $K_8$ csúcsait számozzuk körbe $0, 1, \dots, 7$-tel, és kössük össze $i$-t $j$-vel **piros** éllel, ha a nyolcszög oldaláról vagy hosszú (fő) átlójáról van szó — vagyis $j - i \equiv \pm 1$ vagy $4 \pmod 8$ —, a többi él legyen kék. Piros háromszög nincs (két különböző piros szomszéd különbsége modulo $8$ csak $\pm 2$ vagy $\pm 3$ lehet — egyik sem piros). Kék $K_4$ sincs, mert az $\{0, \dots, 7\}$ halmaznak csak két olyan $4$ elemű részhalmaza van, amelyben semelyik két elem nem szomszédos a körön: $\{0, 2, 4, 6\}$ és $\{1, 3, 5, 7\}$, és mindkettőben van $4$ különbségű, azaz piros pár. Tehát $R(3, 4) > 8$.
- **Közvetve az $R(4, 4) = 18$ értékéből:** Mivel $18 = R(4, 4) \le R(3, 4) + R(4, 3) = 2\,R(3, 4)$, $8$ nem lehet, mert akkor $R(4, 4) \le 8 + 8 = 16$ volna! Az $R(3, 4) \le 9$ becsléssel együtt tehát ismét $R(3, 4) = 9$ adódik.

### Végtelen Ramsey-tétel és gráf-Ramsey

**Végtelen sok csúcsú teljes gráfra.** Mi történik, ha egy megszámlálhatóan végtelen teljes gráf ($K_\infty$) éleit színezzük pirosra és kékre?

> **Tétel (végtelen Ramsey-tétel).** Ha a $K_\infty$ teljes gráf éleit két színnel (pirossal és kékkel) színezzük, akkor van benne **végtelen** egyszínű teljes részgráf.

*Bizonyítás (a „kedvenc csúcs” módszerével).* Válasszunk egy kedvenc $v_1$ csúcsot. Ebből végtelen sok él indul ki, így valamelyik színből biztosan végtelen sok indul — legyen ez például a piros. Jelölje $A_1$ azokat a csúcsokat, amelyekbe $v_1$-ből piros él vezet ($|A_1| = \infty$).

Most $A_1$-ből válasszunk egy újabb kedvenc $v_2 \in A_1$ csúcsot. Ebből $A_1$ többi csúcsába ismét végtelen sok él indul, így valamelyik színből (például a kékből) végtelen sok; legyen ezek végpontjainak halmaza $A_2 \subset A_1$ ($|A_2| = \infty$). Folytassuk ezt minden $i \ge 1$-re: kapunk egy $v_1, v_2, v_3, \dots$ csúcssorozatot és egymásba skatulyázott végtelen halmazokat ($A_1 \supset A_2 \supset A_3 \supset \dots$) úgy, hogy minden $i$-re a $v_i$-ből $A_i$ összes csúcsába vezető él azonos színű ($P$ vagy $K$).

Mivel minden $j > i$ esetén $v_j \in A_i$, a $v_i v_j$ él színe csak az $i$ csúcstól függ (például ha $v_1$-nél piros volt, $v_2$-nél kék, akkor $v_2 v_3$ kék, de $v_1 v_3$ biztos piros, mert $v_3 \in A_2 \subset A_1$, és $v_1$-ből $A_1$-be csak piros él megy). Minden $v_i$ csúcshoz rendeljünk hozzá egy $P$ vagy $K$ betűt aszerint, milyen színű élek indulnak belőle előre. Mivel végtelen sok $v_i$ csúcsunk van és csak $2$ szín, a skatulyaelv végtelen változata szerint valamelyik szín — legyen mondjuk a $P$ — végtelen sokszor előfordul. A $P$ betűt viselő végtelen sok $v_i$ csúcs között minden él piros, tehát egy **végtelen piros teljes részgráfot** alkotnak. $\blacksquare$

*(Ezzel a területtel — a végtelen Ramsey-gráfokkal — kiemelten **Komjáth Péter** foglalkozott.)*

**Gráf-Ramsey.** Általánosíthatjuk a kérdést úgy is, hogy a kiindulási gráf nem feltétlenül teljes gráf, és/vagy a keresett egyszínű részgráfok nem teljes gráfok ($K_k, K_l$), hanem tetszőleges $G_1, G_2$ gráfok — például keressünk $5$-hosszú piros vagy $5$-hosszú kék kört ($R(C_5, C_5)$), vagy vizsgáljuk, milyen nem teljes $F$ gráfok színezésében kényszeríthető ki egy adott $H$ egyszínű másolata ($F \to (H, H)$).

## 53. Többszínű Ramsey-tételek és a Schur-tétel

Mi történik, ha nem két, hanem $s \ge 3$ színnel színezzük a teljes gráf éleit?

> **Definíció.** Az $R(k_1, k_2, \dots, k_s)$ **többszínű Ramsey-szám** a legkisebb olyan $n$, amelyre a $K_n$ éleit tetszőlegesen színezve $s$ színnel valamely $i \in \{1, \dots, s\}$-re lesz $k_i$ darab csúcs, amelyek közötti összes él $i$-edik színű (vagyis van **$i$-edik színű $K_{k_i}$**). Speciálisan $R(a, b, c)$ a legkisebb $n$, amelyre a $K_n$ bármely piros–kék–sárga színezésében van piros $K_a$, kék $K_b$ vagy sárga $K_c$.

*(Hogy ilyen $n$ valóban létezik — s így a legkisebb ilyen $n$ is jól definiált —, azt mindjárt a színösszevonás módszerével igazoljuk. Először azonban nézzük meg a csupa háromszögre vonatkozó konkrét felső becsléseket!)*

### Csupa háromszög: $R(3, 3, 3) \le 17$ és az általános $t$-színű eset

> **Állítás.** $R(3, 3, 3) \le 17$: a $K_{17}$ éleinek bármely háromszínezésében (piros–kék–sárga) van egyszínű háromszög.

*Bizonyítás.* Válasszunk egy kedvenc csúcsot; ebből $16$ él indul. Mivel $16 > 3 \cdot 5$, a skatulyaelv szerint valamelyik színből, mondjuk pirosból, legalább $6$ él indul ki. Tekintsük az ezekkel elért legalább $6$ csúcsot:

- ha közöttük van piros él, akkor az a kedvenc csúccsal **piros háromszöget** ad;
- ha nincs közöttük piros él, akkor ez a legalább $6$ csúcs csak két színnel (kékkel és sárgával) van színezve, és mivel $R(3, 3) = 6$, biztosan van köztük kék vagy sárga háromszög. $\blacksquare$

*(Ismert, hogy valójában $R(3, 3, 3) = 17$, vagyis $16$ csúcson még létezik egyszínű háromszög nélküli háromszínezés — Greenwood és Gleason, 1955.)*

A bizonyítás közvetlenül általánosítható $t$ színre. Jelölje $R_t = R(\underbrace{3, 3, \dots, 3}_{t\text{ db}})$ a $t$ színű esetet ($R_1 = 3$, $R_2 = 6$).

> **Tétel.** Minden $t \ge 2$ esetén
> $$R(\underbrace{3, 3, \dots, 3}_{t\text{ db}}) \le t\big(R(\underbrace{3, 3, \dots, 3}_{t-1\text{ db}}) - 1\big) + 1 + 1 = t \cdot R(\underbrace{3, 3, \dots, 3}_{t-1\text{ db}}) - t + 2.$$

*Bizonyítás.* Legyen az átláthatóság kedvéért $m = R_{t-1}$, és induljunk ki $n = t(m - 1) + 1 + 1$ csúcsból. Válasszunk egy kedvenc csúcsot (ez az egyik $+1$), amelyből így $t(m - 1) + 1$ él indul ki. Osszuk a szomszédait $t$ „kupacba” aszerint, milyen színű él vezet beléjük a kedvenc csúcsból. A skatulyaelv szerint valamelyik kupacban (mondjuk az első színűben) legalább $m = R_{t-1}$ csúcs van (mert $t(m - 1)$ csúccsal még nem, de $+1$-gyel már igen).

Ha ebben a legalább $R_{t-1}$ csúcsú kupacban van az első színű él, az a kedvenc csúccsal együtt az első színű háromszöget ad. Ha nincs ilyen él, akkor a kupac élei csak a maradék $t - 1$ színt viselik, így $m = R_{t-1}$ definíciója szerint biztosan van benne egyszínű háromszög a többi szín valamelyikéből. $\blacksquare$

> **Következmény.** Minden $t \ge 1$ esetén
> $$R(\underbrace{3, 3, \dots, 3}_{t\text{ db}}) \le 1 + \lfloor e \cdot t! \rfloor.$$

Az előadáson ezt a következményt bizonyítás nélkül mondtuk ki.

::: kiegeszites
**Kiegészítés — a $1 + \lfloor e \cdot t! \rfloor$ korlát levezetése.** Legyen $a_t = R_t - 1$; ekkor $a_t \le t\,a_{t-1} + 1$ és $a_1 = 2$. $t!$-sal osztva $\frac{a_t}{t!} \le \frac{a_{t-1}}{(t-1)!} + \frac{1}{t!}$, és mivel $\frac{a_1}{1!} = 2 = \frac{1}{0!} + \frac{1}{1!}$,
$$\frac{a_t}{t!} \le \sum_{j=0}^{t}\frac{1}{j!} < e.$$
A $t!\sum_{j=0}^{t}\frac{1}{j!}$ egész szám, és kisebb $e \cdot t!$-nál, tehát legfeljebb $\lfloor e \cdot t! \rfloor$. Így $R_t = a_t + 1 \le 1 + \lfloor e \cdot t! \rfloor$. $\blacksquare$

*(Ugyanez a $\sum \frac{1}{j!}$ összeg jelent meg a fixpontmentes permutációknál, a 8. szakaszban. Ellenőrzés: $1 + \lfloor 2e \rfloor = 6$, $1 + \lfloor 6e \rfloor = 17$, és $t = 4$-re a korlát $66$.)*
:::

### A többszínű Ramsey-tétel igazolása: színösszevonás

Miért értelmes egyáltalán $R(k_1, k_2, \dots, k_s)$ tetszőleges $k_1, \dots, k_s$-re — vagyis miért létezik mindig ilyen véges $n$?

> **Tétel (többszínű Ramsey-tétel).** Az $R(k_1, k_2, \dots, k_s)$ szám minden $s \ge 1$ és $k_1, \dots, k_s \ge 1$ esetén véges, és minden $s \ge 3$-ra
> $$R(k_1, k_2, k_3, \dots, k_s) \le R\big(R(k_1, k_2), k_3, \dots, k_s\big).$$

*Bizonyítás (színösszevonás — a színek száma szerinti teljes indukció).* Az $s = 2$ esetre már tudjuk, hogy a Ramsey-szám létezik és véges ($s = 1$-re pedig $R(k_1) = k_1$). Tegyük fel, hogy $(s - 1)$ színre már értelmes a Ramsey-szám, és vonjuk össze az első két színt (**piros + kék = lila**): így $s - 1$ színt kapunk (a lila, valamint a $3., \dots, s$-edik szín). Legyen $\ell = R(k_1, k_2)$, és vegyünk
$$n = R(\ell, k_3, \dots, k_s) = R\big(R(k_1, k_2), k_3, \dots, k_s\big)$$
csúcsot. A $K_n$ bármely $s$-színezését $(s-1)$-színezésnek tekintve (piros és kék helyett lilával) az indukciós feltevés szerint vagy valamely $i \ge 3$-ra van $i$-edik színű $K_{k_i}$, vagy van egy $\ell = R(k_1, k_2)$ csúcsú **lila** teljes részgráf. Ez utóbbi élei az eredeti színezésben csak pirosak vagy kékek lehetnek, így $R(k_1, k_2)$ definíciója szerint biztosan tartalmaz $k_1$ csúcsú piros vagy $k_2$ csúcsú kék teljes részgráfot. $\blacksquare$

### Felső becslések általános többszínű Ramsey-számokra

Két módszert láttunk, és mindkettő általánosan használható:

- **Színösszevonás:** néhány színt egynek tekintünk, például $R(k_1, k_2, k_3) \le R\big(k_1, R(k_2, k_3)\big)$.
- **A háromszöges bizonyítás lemásolása:** egy $v$ csúcs éleit színenként szétválogatva, ugyanúgy, mint két színnél, kapjuk, hogy
$$R(k_1, \dots, k_s) \le \sum_{i=1}^{s} R(k_1, \dots, k_{i-1}, k_i - 1, k_{i+1}, \dots, k_s) - s + 2.$$
Valóban: ha $N$ a jobb oldal, akkor $v$-ből $N - 1 = \sum_i \big(R(\dots, k_i - 1, \dots) - 1\big) + 1$ él indul, így valamelyik $i$-edik színből legalább $R(\dots, k_i - 1, \dots)$; ezek végpontjai között van $j$-edik színű $K_{k_j}$ valamely $j \ne i$-re, vagy $i$-edik színű $K_{k_i - 1}$, amely $v$-vel $K_{k_i}$-t ad. $s = 2$-re ez az előző szakasz tétele.

*Példa.* $R(3, 3, 4)$-re a második módszer — felhasználva, hogy $R(2, b, c) = R(b, c)$ (az első színből egyetlen él már $K_2$) — azt adja, hogy
$$R(3, 3, 4) \le R(2, 3, 4) + R(3, 2, 4) + R(3, 3, 3) - 1 = 9 + 9 + 17 - 1 = 34,$$
míg az első két szín összevonása csak $R(3,3,4) \le R(6, 4) \le \binom{8}{3} = 56$-ot ad.

### Schur tétele

Ramsey tételének egy meglepő számelméleti alkalmazása:

> **Tétel (Schur, 1916).** Minden $t \ge 1$ esetén van olyan $n$, hogy az $\{1, 2, \dots, n\}$ számokat akárhogyan színezzük $t$ színnel, lesz három (nem feltétlenül különböző) **egyszínű** $x, y, z$ szám, amelyre $x + y = z$. Ehhez $n \ge R_t - 1$ elég, így például $n \ge \lfloor e \cdot t! \rfloor$.

*Bizonyítás.* Legyen $n = R_t - 1$, és színezzük az $[n]$ számait $t$ színnel. Tekintsük a $K_{n+1}$ teljes gráfot az $1, 2, \dots, n+1$ csúcsokon, és az $\{i, j\}$ élt színezzük az $|i - j| \in [n]$ szám színére. Mivel $n + 1 = R_t$, van egyszínű háromszög, mondjuk az $i < j < k$ csúcsokon. Legyen
$$x = j - i, \qquad y = k - j, \qquad z = k - i.$$
Ezek a háromszög három élének színét viselik, tehát egyszínűek, és $x + y = z$. $\blacksquare$

*Példa.* Két színre $R_2 - 1 = 5$: az $\{1, \dots, 5\}$ bármely kétszínezésében van egyszínű megoldás. Az $\{1, 2, 3, 4\}$ viszont kiszínezhető jól: az $\{1, 4\}$ legyen piros, a $\{2, 3\}$ kék ($1 + 1 = 2$, $1 + 3 = 4$, $2 + 2 = 4$ mind vegyes színű). Az $5$ tehát a legkisebb jó $n$ két színre.
