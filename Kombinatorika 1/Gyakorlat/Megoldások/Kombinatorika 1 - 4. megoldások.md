# Kombinatorika 1 – 4. feladatsor – megoldások

### Kombinatorika 1 normál · 2026.

## 56. feladat

Legyen a $G$ gráf csúcsainak halmaza $\{1, 2, \dots, 100\}$. Határozzuk meg $G$ éleinek és összefüggőségi komponenseinek számát, ha az éleket a következőképpen adjuk meg: $i$ és $j$ pontosan akkor van összekötve, ha

a) $i - j$ páratlan;

b) $i - j$ osztható 3-mal és $i \neq j$;

c) $|i - j| = 3$ vagy $|i - j| = 8$? (A három részben három különböző gráfról van szó.)

**Megoldás.**

a) $i - j$ páratlan $\iff$ $i$ és $j$ különböző paritású. A gráf a teljes páros gráf $K_{50,50}$: egyik osztály a páratlan, másik a páros számok. **Élek száma $50 \cdot 50 = 2500$, komponens 1.**

b) Az élek a mod 3 maradékosztályokon belül futnak, és egy osztályon belül bármely kettő össze van kötve. Három teljes gráf:

- az $1$ maradékú osztály $\{1, 4, \dots, 100\}$: 34 elem;
- a $2$ maradékú $\{2, \dots, 98\}$: 33 elem;
- a $0$ maradékú $\{3, \dots, 99\}$: 33 elem.

**Élek száma $\binom{34}{2} + 2\binom{33}{2} = 561 + 2 \cdot 528 = 1617$, komponens 3.**

c) $|i - j| = 3$ párból $97$ van ($i = 1, \dots, 97$), $|i - j| = 8$ párból $92$. **Élek száma $97 + 92 = 189$.**

**Komponens 1:** megmutatjuk, hogy minden $i$ össze van kötve $i + 1$-gyel.

- Ha $i \le 91$: $i \to i + 3 \to i + 6 \to i + 9 \to i + 1$ (lépések: $+3, +3, +3, -8$; minden csúcs $1$ és $100$ közé esik).
- Ha $i \ge 92$ (és $i \le 99$): $i \to i - 8 \to i - 5 \to i - 2 \to i + 1$ (lépések: $-8, +3, +3, +3$).

## 57. feladat

Egy körmérkőzéses sakkversenyen 27-en indultak. Lehetett olyan pillanat, amikor mindenki pontosan 9 ellenfélen volt túl?

**Megoldás.**

**Nem.** Ha mindenki pontosan 9 meccsen lett volna túl, akkor a lejátszott meccsek gráfjában (27 csúcs, él = lejátszott meccs) minden fokszám 9 lenne. A fokszámok összege $27 \cdot 9 = 243$ páratlan volna. Ez lehetetlen, mert a fokszámösszeg az élszám kétszerese.

## 58. feladat

Mutass olyan négy, öt, illetve hat csúcsú egyszerű gráfot, ami izomorf a komplementerével! (Egy egyszerű $G$ gráf komplementere az a gráf, melynek csúcsai $G$ csúcsai, és két (különböző) csúcsot pontosan akkor köt össze él, ha $G$-ben nincs köztük él.)

**Megoldás.**

- **4 csúcs:** a $P_4$ út: $a - b - c - d$. Komplementerének élei $ac$, $ad$, $bd$, ez a $c - a - d - b$ út, tehát szintén $P_4$.
- **5 csúcs:** a $C_5$ kör. A komplementere az 5 átló, ami szintén 5 hosszú kör (az „ötágú csillag").
- **6 csúcs: nincs ilyen.** Önkomplementer gráfban $G$ és $\overline G$ együtt $\binom n2$ élt tartalmaz, és egyenlő sok élük van. Tehát $G$-nek $\frac{n(n-1)}{4}$ éle van, ami $n = 6$-ra $\frac{15}{2}$, nem egész. (Lásd a 69. feladatot is.)

## 59. feladat

Egy 6 pontú, egyszerű, összefüggő gráfban van 1, 2, 3, 4 és 5 fokú csúcs is. Adjuk meg az összes olyan értéket, ami a hatodik csúcs foka lehet!

**Megoldás.**

**A hatodik csúcs foka csak 3 lehet.**

- A fokszámösszeg $1 + 2 + 3 + 4 + 5 + x$ páros, így $x$ páratlan. Összefüggő gráfban nincs 0 fokú csúcs, és $x \le 5$, tehát $x \in \{1, 3, 5\}$.
- **$x = 5$ nem lehet:** két 5-ödfokú csúcs mindegyike mind a többi csúccsal szomszédos. Így minden csúcs foka legalább 2 lenne, de van 1-edfokú.
- **$x = 1$ nem lehet:** az 5-ödfokú csúcs mindenkivel szomszédos. A két 1-edfokú csúcsnak más szomszédja nincs. A 4-edfokú csúcs így legfeljebb az 5-ödfokúval, a 2-edfokúval és a 3-adfokúval lehet szomszédos: csak 3 szomszéd.
- **$x = 3$ megvalósítható:** legyenek a fokok $v_1 : 5$, $v_2 : 4$, $v_3, v_4 : 3$, $v_5 : 2$, $v_6 : 1$. Élek: $v_1$ mind az öt másikkal, valamint $v_2v_3$, $v_2v_4$, $v_2v_5$, $v_3v_4$. A gráf összefüggő, mert $v_1$ mindenkivel szomszédos.

## 60. feladat

Bizonyítsuk be, hogy egy $n$ csúcsú, egyszerű $G$ gráfra az alábbi állítások közül bármely kettő ekvivalens egymással:

a) $G$ fa (azaz összefüggő és körmentes)

b) $G$ összefüggő és $n - 1$ éle van

c) $G$ körmentes és $n - 1$ éle van

d) $G$ minimálisan összefüggő gráf (azaz összefüggő, de bármely élét elhagyva már nem lenne az)

e) $G$ maximálisan körmentes gráf (azaz körmentes, de bármely két csúcsa közé élt húzva már nem lenne az)

f) $G$-ben bármely két csúcs között pontosan egy út vezet.

**Megoldás.**

Megmutatjuk, hogy mindegyik állítás ekvivalens az a)-val. Két segédállítás:

**1. lemma.** Minden legalább 2 csúcsú fában van elsőfokú csúcs (sőt kettő, ld. 61. a)). Vegyünk egy leghosszabb $v_0 v_1 \dots v_m$ utat ($m \ge 1$). $v_0$-nak nincs az úton kívüli szomszédja, különben az út meghosszabbítható lenne. Az úton csak $v_1$ lehet a szomszédja, mert $v_i$ ($i \ge 2$) szomszédsága kört adna. Tehát $\deg v_0 = 1$.

**2. lemma.** Az $n$ csúcsú fának $n - 1$ éle van. Indukció $n$ szerint. Egy elsőfokú csúcsot az élével együtt elhagyva $n - 1$ csúcsú fát kapunk: összefüggő marad, mert a levél nem belső pontja egyetlen útnak sem, és körmentes marad.

**a) $\Leftrightarrow$ f).**

- ($\Rightarrow$) Összefüggés miatt van út bármely két csúcs között. Ha két különböző $u$–$v$ út volna, a szétválásuk és az első újra-találkozásuk közti két szakasz kört alkotna.
- ($\Leftarrow$) Az utak létezése miatt $G$ összefüggő. Ha volna kör, annak két szomszédos csúcsa között két út vezetne: maga az él, és a kör többi része.

**a) $\Leftrightarrow$ d).** Összefüggő $G$-ben az $e = uv$ él elhagyása pontosan akkor tartja meg az összefüggőséget, ha $e$ rajta van egy körön. Ha $G - e$-ben van $u$–$v$ út, az $e$-vel kört ad. Fordítva: ha $e$ körön van, a kör többi része helyettesíti. Tehát egy összefüggő gráf pontosan akkor minimálisan összefüggő, ha egyik éle sincs körön, azaz körmentes.

**a) $\Leftrightarrow$ e).**

- ($\Rightarrow$) Fában bármely nem szomszédos $u, v$ között van út, ehhez az $uv$ élt hozzávéve kör keletkezik. Tehát a fa maximálisan körmentes.
- ($\Leftarrow$) Ha a körmentes $G$ nem volna összefüggő, két különböző komponense közé húzott él nem hozna létre kört, mert nincs még út a végpontjai között. Ez ellentmond a maximalitásnak.

**a) $\Rightarrow$ b), c):** a 2. lemma.

**b) $\Rightarrow$ a).** Amíg van kör, hagyjuk el egy körön levő élét: ez nem rontja el az összefüggőséget. Végül összefüggő, körmentes feszítő részgráfot, azaz fát kapunk, amelynek $n - 1$ éle van. Mivel $G$-nek is $n - 1$ éle volt, nem hagytunk el semmit, tehát $G$ körmentes.

**c) $\Rightarrow$ a).** Ha a körmentes $G$-nek $k$ komponense van, $n_1, \dots, n_k$ csúccsal, akkor mindegyik fa. Az élszám $\sum (n_i - 1) = n - k$. Ez $n - 1$, így $k = 1$: $G$ összefüggő.

Mivel mind a hat állítás ekvivalens a)-val, bármely kettő ekvivalens egymással. $\blacksquare$

## 61. feladat

a) Bizonyítsuk be, hogy minden fában van legalább 2 elsőfokú csúcs!

b) Igazoljuk, hogy ha egy fában van $k$-adfokú csúcs, akkor legalább $k$ darab elsőfokú csúcs van benne!

c) Hány éle van egy $n$ pontú $k$ komponensű, körmentes egyszerű gráfnak?

**Megoldás.**

a) (Legalább 2 csúcsú fára.) Az $n$ csúcsú fa fokszámösszege $2(n - 1)$, és minden fok legalább 1. Ha legfeljebb egy elsőfokú csúcs volna, a fokszámösszeg legalább $1 + 2(n - 1) > 2(n - 1)$ lenne. (Vagy: egy leghosszabb út mindkét végpontja elsőfokú, ld. 60. feladat, 1. lemma.)

b) Legyen $L$ az elsőfokú csúcsok száma, $v$ a $k$-adfokú csúcs, $k \ge 2$. ($k = 1$-re az a) rész adja.) Mivel $\sum \deg = 2n - 2$,
$$\sum_{u} (\deg u - 2) = -2.$$
Az elsőfokú csúcsok $-1$-gyel járulnak hozzá, $v$ $(k - 2)$-vel, a többi csúcs ($\deg \ge 2$) nemnegatívval. Így $-2 \ge -L + (k - 2)$, azaz **$L \ge k$**. $\blacksquare$

(Szemléletesen: a $v$-ből induló $k$ él mindegyikén elindulva és a fában tovább haladva egy-egy különböző levélben kell véget érni.)

c) Mindegyik komponens fa: az $n_i$ csúcsú komponensnek $n_i - 1$ éle van. Az élszám $\sum_{i=1}^k (n_i - 1) =$ **$n - k$**.

## 62. feladat

a) Mutasd meg, hogy bármely egyszerű gráfban van két csúcs, melyeknek ugyanannyi a foka! Igaz-e ez nem feltétlenül egyszerű gráfokra is?

b) Bizonyítsd be, hogy egy egyszerű gráfban a páratlan fokú csúcsok száma páros!

c) Melyek azok a gráfok, amelyekben bármely két élnek van közös végpontja?

**Megoldás.**

a) Legyen $n \ge 2$. A fokszámok a $\{0, 1, \dots, n - 1\}$ halmazból kerülnek ki. A $0$ és az $n - 1$ nem fordulhat elő egyszerre: az $(n - 1)$-edfokú csúcs mindenkivel szomszédos, így nincs izolált csúcs. Tehát $n$ csúcsra legfeljebb $n - 1$ különböző érték jut, és a skatulya-elv szerint két csúcs foka egyenlő.

**Nem egyszerű gráfra nem igaz.** Példa: csúcsok $a, b, c$, élek: $ab$ és két párhuzamos $bc$ él. Ekkor $\deg a = 1$, $\deg b = 3$, $\deg c = 2$.

b) $\sum_v \deg v = 2|E|$ páros. A páros fokú csúcsok összege páros, így a páratlan fokú csúcsok fokainak összege is páros. Ez csak úgy lehet, ha páros sok páratlan fokú csúcs van. $\blacksquare$

c) (Egyszerű gráfokra, az izolált csúcsoktól eltekintve.) **Csillagok (egy csúcs, amely minden élnek végpontja) és a háromszög.**

Ezek jók. Fordítva, tegyük fel, hogy nincs minden élen rajta levő közös csúcs. Legyen $e_1 = ab$. Nem minden él tartalmazza $a$-t, de kell olyan él, ami igen, különben minden él tartalmazná $b$-t, és $b$ közös csúcs volna. Legyen $e_2 = ac$, ahol $c \neq b$. Van $a$-t nem tartalmazó $e_3$ él; ez $e_1$-et és $e_2$-t is metszi, így $e_3 = bc$.

Bármely további él metszi $ab$-t, $bc$-t és $ca$-t is. Ehhez két végpontja $\{a, b, c\}$-ben kell legyen: egyetlen $\{a,b,c\}$-beli végpont legfeljebb két élet metsz a háromból. Egyszerű gráfban ez csak $ab$, $bc$ vagy $ca$ lehet. Tehát a gráf a háromszög.

(Nem egyszerű gráfban ezek többszörös élekkel, illetve a csillag középpontjában hurokélekkel is előfordulhatnak.)

## 63. feladat

Bizonyítsd be, hogy egy hattagú társaságban van három ember, akik ismerik egymást, vagy van három olyan ember, akik közül senki sem ismeri a másik kettőt!

**Megoldás.**

Gráffal: 6 csúcs (emberek), él = ismeretség. Legyen $v$ egy ember; az 5 másik közül a skatulya-elv szerint legalább 3-at ismer, vagy legalább 3-at nem ismer.

- **Legalább 3-at ismer**, legyenek $x, y, z$. Ha közülük két ember ismeri egymást, azok $v$-vel együtt három kölcsönös ismerős. Ha nem, akkor $x, y, z$ közül senki sem ismeri a másik kettőt.
- **Legalább 3-at nem ismer:** ugyanez a komplementer gráfban, a szerepek felcserélésével. $\blacksquare$

(Ez az $R(3, 3) \le 6$ Ramsey-állítás. 5 emberre nem igaz: az ötszög és komplementere is háromszögmentes.)

## 64. feladat

a) Mutassuk meg, hogy ha egy véges gráf minden pontjának foka legalább kettő, akkor a gráfban van kör! Igaz-e, hogy bármely pont benne van egy körben? (És mi a helyzet végtelen gráfok esetén?)

b) Mutassuk meg, hogy ha egy véges egyszerű gráf minden pontjának foka legalább $k$, akkor a gráfban van olyan kör, mely legalább $k + 1$ csúcsot tartalmaz!

**Megoldás.**

a) Ha van hurokél vagy többszörös él, az már kör (1, ill. 2 hosszú). Különben vegyünk egy leghosszabb $P = v_0 v_1 \dots v_m$ utat; véges gráfban ilyen van. $v_0$-nak $v_1$-en kívül van még szomszédja, mert foka legalább 2. Ez a szomszéd az úton van (különben $P$ meghosszabbítható lenne), legyen $v_i$, $i \ge 2$. Ekkor $v_0 v_1 \dots v_i v_0$ kör. $\blacksquare$

**Nem minden pont van körön.** Két háromszöget kössünk össze egy $w$ csúcson átmenő 2 hosszú úttal. Minden fok legalább 2, de $w$ nincs körön: mindkét éle elvágó él.

**Végtelen gráfokra az állítás hamis:** a kétirányban végtelen út ($\mathbb{Z}$, szomszédos egészek összekötve) minden csúcsa másodfokú, de nincs benne kör.

b) Legyen $k \ge 2$, és $P = v_0 v_1 \dots v_m$ egy leghosszabb út. $v_0$ minden szomszédja az úton van (maximalitás). Egyszerű gráfban ezek különböző csúcsok, és legalább $k$ darab van, így a legtávolabbi, $v_i$ indexére $i \ge k$. A $v_0 v_1 \dots v_i v_0$ kör $i + 1 \ge k + 1$ csúcsot tartalmaz. $\blacksquare$

## 65. feladat

Mutasd meg, hogy ha $G$ tetszőleges egyszerű gráf, akkor $G$ és $\overline{G}$ ($G$ komplementere) közül legalább az egyik összefüggő! Lehet-e $G$ és $\overline{G}$ is összefüggő, ha a csúcsok száma legalább kettő?

**Megoldás.**

Tegyük fel, hogy $G$ nem összefüggő. Megmutatjuk, hogy $\overline G$ összefüggő. Legyen $u, v$ két csúcs.

- Ha $G$ különböző komponenseiben vannak, akkor $G$-ben nem szomszédosak, tehát $\overline G$-ben igen.
- Ha $G$ ugyanazon komponensében vannak, legyen $w$ egy másik komponensbeli csúcs. Ekkor $uw, vw \in E(\overline G)$, így $u - w - v$ út $\overline G$-ben.

**Lehet mindkettő összefüggő, ha $n \ge 4$**, például a $P_4$ út: önkomplementer (58. feladat). Általában a $P_n$ út komplementere $n \ge 4$-re összefüggő.

$n = 2$ és $n = 3$ esetén nem lehet. $n = 2$-re egy él és az üres gráf a két lehetőség. $n = 3$-ra az összefüggő gráfok a $P_3$ és a $K_3$; komplementerük $K_2 + K_1$, illetve az üres gráf, egyik sem összefüggő.

## 66. feladat

Igazold, hogy ha $G$ összefüggő gráf, akkor $G$-ben bármely két leghosszabb útnak van közös csúcsa! Igaz-e az állítás nem összefüggő gráfra is?

**Megoldás.**

Tegyük fel, hogy $P$ és $Q$ két leghosszabb út (hosszuk $L$ él), amelyeknek nincs közös csúcsa. Az összefüggőség miatt van út $P$ egy csúcsából $Q$ egy csúcsába. Vegyük a legrövidebbet, $R$-t, a $p \in P$ és $q \in Q$ végpontokkal. Ennek belső csúcsai nincsenek $P \cup Q$-ban, és hossza legalább 1.

$p$ két részre vágja $P$-t; a hosszabbik rész, $P'$ hossza legalább $L/2$. Ugyanígy $Q$-nak van legalább $L/2$ hosszú, $q$-ban végződő $Q'$ része. A $P' + R + Q'$ út hossza legalább $\frac L2 + 1 + \frac L2 = L + 1$, ellentmondás. $\blacksquare$

**Nem összefüggő gráfra nem igaz:** két diszjunkt él (2 komponens). Mindkettő leghosszabb út, és nincs közös csúcsuk.

## 67. feladat

Van-e olyan egyszerű gráf, amelyben a csúcsok foka

a) $3, 3, 3, 2, 2, 2, 1, 1, 1$? b) $6, 6, 5, 4, 4, 3, 2, 2, 1$? c) $7, 7, 7, 6, 6, 6, 5, 5, 5$? d) $1, 3, 3, 4, 5, 6, 6$?

e) $5, 2, 2, 2, 1$? f) $5, 5, 2, 2, 1, 1$? g) $6, 6, 6, 6, 3, 3, 2, 2$?

**Megoldás.**

Hasznos eszközök:

- a fokszámösszeg páros;
- egyszerű $n$ csúcsú gráfban a fok legfeljebb $n - 1$;
- a Havel–Hakimi-algoritmus: a legnagyobb $d$ fokú csúcsot elhagyva a következő $d$ legnagyobb fokot 1-gyel csökkentjük, és a sorozat pontosan akkor realizálható, ha a kapott sorozat az;
- az Erdős–Gallai-feltétel: $\sum_{i \le k} d_i \le k(k-1) + \sum_{i > k}\min(d_i, k)$ minden $k$-ra, csökkenő sorrendben.

a) **Van.** Havel–Hakimi (minden lépésben a legnagyobb fokú csúcsot hagyjuk el, és a következő ennyi fokot csökkentjük, majd rendezünk):
$$3,3,3,2,2,2,1,1,1 \to 2,2,2,2,1,1,1,1 \to 2,1,1,1,1,1,1 \to 1,1,1,1,0,0.$$
A maradék négy 1-es két független él, tehát a sorozat realizálható.

Konkrét példa: egy $C_6$ kör, amelynek három (nem szomszédos) csúcsához egy-egy függő élt kötünk. A fokok $3,3,3,2,2,2,1,1,1$.

b) **Nincs:** a fokszámösszeg $33$ páratlan.

c) **Van.** A komplementer fokai ($8 - d$): $1,1,1,2,2,2,3,3,3$. Ilyen gráf: két diszjunkt háromszög, az egyik háromszög csúcsaihoz egy-egy függő él a három maradék csúcsból. (Az egyik háromszög csúcsai 3-adfokúak, a másiké 2-odfokúak, a függő csúcsok 1-edfokúak.) Ennek komplementere a keresett gráf.

d) **Nincs:** 7 csúcs, két 6-odfokú csúcs mindenkivel szomszédos, így minden fok legalább 2. Az 1-es fok lehetetlen.

e) **Nincs:** 5 csúcson a fok legfeljebb 4.

f) **Nincs:** 6 csúcs, két 5-ödfokú csúcs miatt minden fok legalább 2.

g) **Nincs.** Az Erdős–Gallai-feltétel $k = 4$-re sérül:
$$6 + 6 + 6 + 6 = 24 > 4 \cdot 3 + (3 + 3 + 2 + 2) = 22.$$
Szemléletesen: a négy 6-odfokú csúcs egymás között legfeljebb 6 élt, azaz 12 fokot használ el. Kifelé még $24 - 12 = 12$ élvég kellene, de a többi négy csúcs fokainak összege csak $10$.

## 68. feladat

Melyik az a legnagyobb $X$ szám, melyre a $8, 8, 7, 5, 4, 4, 3, 2, 1, X$ számsorozat realizálható egy egyszerű gráf fokszámsorozataként?

**Megoldás.**

**$X = 6$.**

- 10 csúcs van, így $X \le 9$. A fokszámösszeg $42 + X$ páros, tehát $X$ páros: $X \le 8$.
- **$X = 8$ nem jó.** A sorozat $8,8,8,7,5,4,4,3,2,1$, és az Erdős–Gallai-feltétel $k = 3$-ra sérül: $8 + 8 + 8 = 24 > 3 \cdot 2 + (3 + 3 + 3 + 3 + 2 + 1) = 21$.
- **$X = 6$ jó.** A sorozat $8,8,7,6,5,4,4,3,2,1$. Havel–Hakimi:
$$8,8,7,6,5,4,4,3,2,1 \to 7,6,5,4,3,3,2,1,1 \to 5,4,3,2,2,1,1,0 \to 3,2,1,1,1,0,0 \to 1,1,0,0,0,0,$$
  ami egyetlen él, realizálható.

## 69. feladat

Igazold, hogy minden önkomplementer gráf összefüggő és csúcsszáma 4-gyel osztva 0 vagy 1 maradékot ad! *Önkomplementer:* olyan egyszerű gráf, amely izomorf a komplementerével.

**Megoldás.**

**Összefüggőség:** a 65. feladat szerint $G$ és $\overline G$ közül az egyik összefüggő. Mivel izomorfak, mindkettő az.

**Csúcsszám:** $G$ és $\overline G$ élhalmaza diszjunkt, uniójuk $K_n$ élhalmaza, és élszámuk egyenlő. Így $|E(G)| = \frac{n(n-1)}{4}$, tehát $4 \mid n(n - 1)$. $n$ és $n - 1$ közül pontosan egy páros, annak oszthatónak kell lennie 4-gyel. Tehát $n \equiv 0$ vagy $n \equiv 1 \pmod 4$. $\blacksquare$

## 70. feladat

a) Legyen $G$ egy $n$ csúcsú egyszerű gráf, melyben minden pont foka legalább $(n - 1)/2$. Mutassuk meg, hogy $G$ összefüggő! Mutassunk ellenpéldát nem egyszerű $G$ esetén!

b) Legyen $G$ egy $n$ csúcsú egyszerű gráf, melyben bármely két nem szomszédos pont fokszámának összege legalább $n - 1$. Mutassuk meg, hogy $G$ összefüggő. És ha $G$ nem egyszerű?

**Megoldás.**

a) Legyen $u, v$ két nem szomszédos csúcs. Szomszédságaik $V \setminus \{u, v\}$-ben vannak, ami $n - 2$ elemű, és
$$|N(u)| + |N(v)| \ge \frac{n-1}{2} + \frac{n-1}{2} = n - 1 > n - 2.$$
Tehát van közös szomszédjuk, azaz bármely két csúcs távolsága legfeljebb 2, és $G$ összefüggő. $\blacksquare$

**Nem egyszerű gráfra hamis.** Két csúcs, mindegyiken egy hurokél ($n = 2$, a fokok $2 \ge \frac12$), de nincs köztük él. Nagyobb példa: két diszjunkt, sok párhuzamos élt tartalmazó komponens.

b) Ugyanaz a bizonyítás: két nem szomszédos $u, v$-re $|N(u)| + |N(v)| = \deg u + \deg v \ge n - 1 > n - 2$, így van közös szomszéd. $\blacksquare$

**Nem egyszerű gráfra ez is hamis**, ugyanazzal a példával: a két hurkos csúcs nem szomszédos, fokszámösszegük $4 \ge 1$, és a gráf nem összefüggő. (A bizonyítás ott bukik el, hogy a fokszám nem egyezik a szomszédok számával.)

## 71. feladat

Adott négy darab egyenként ötcsúcsú fa, négy páronként diszjunkt csúcshalmazon. A négy fában szereplő összesen 20 csúcs közül néhány összekötésével hány különböző módon egészíthető ki ez a négy fa egyetlen nagy fává, ha a csúcsokat címkézettnek tekintjük?

**Megoldás.**

**$5^4 \cdot 20^2 = 250\,000$ féleképpen.**

Pontosan 3 új élt kell behúzni, és ezeknek a négy fát (mint „szuper-csúcsokat") fává kell összekötniük. Általános tétel: $k$ komponens, $n_1, \dots, n_k$ csúccsal, összesen $n$ csúcs, pontosan
$$n_1 n_2 \cdots n_k \cdot n^{k-2}$$
módon köthető össze egyetlen fává.

*Indoklás.* Rögzítsük, milyen fát alkotnak a komponensek egymás között. Ha az $i$-edik komponens foka ebben a fában $d_i$, ilyen fa a Prüfer-kód szerint $\frac{(k-2)!}{\prod (d_i - 1)!}$ van. Az $i$-edik komponensből induló $d_i$ él végpontját $n_i^{d_i}$ féleképpen választhatjuk. Összegezve a multinomiális tétellel:
$$\sum_{d_1 + \dots + d_k = 2k - 2} \frac{(k-2)!}{\prod(d_i - 1)!}\prod n_i^{d_i} = \prod n_i \cdot (n_1 + \dots + n_k)^{k-2}.$$

Itt $k = 4$, $n_i = 5$, $n = 20$: $5^4 \cdot 20^2 = 625 \cdot 400 = 250\,000$.

## 72. feladat (házi feladat)

Elhelyezhető-e 15 ló egy $100 \times 100$-as sakktáblára úgy, hogy mindegyik

a) pontosan három másik lovat üssön?

b) pontosan kettő másik lovat üssön?

**Megoldás.**

Tekintsük azt a gráfot, amelynek csúcsai a 15 ló, és két ló között akkor van él, ha ütik egymást.

a) **Nem.** A gráf 3-reguláris lenne 15 csúcson, így a fokszámösszeg $45$ páratlan volna.

b) **Nem.** Ha mindenki pontosan két másikat üt, a gráf 2-reguláris, azaz diszjunkt körök uniója. A ló mindig ellenkező színű mezőre lép, ezért a gráf páros: minden él egy fehér és egy fekete mező között fut. Így minden köre páros hosszú, és a körök összes csúcsszáma páros. 15 páratlan, ellentmondás.

## 73. feladat (házi feladat)

Legyen $k \ge 2$. Az $n$ csúcsú $G$ egyszerű gráfnak legalább $(k - 1)n$ éle van. Bizonyítsd be, hogy ekkor van $G$-ben legalább $k + 1$ hosszú kör.

**Megoldás.**

Hagyjunk el ismételten egy-egy legfeljebb $(k - 1)$-edfokú csúcsot (a pillanatnyi gráfban), amíg van ilyen. Minden lépés legfeljebb $k - 1$ élt töröl.

Ha a folyamat az összes csúcsot elhagyná, összesen legfeljebb $(k - 1)(n - 1)$ élt törölnénk: az utolsó csúcs már izolált. Ez kevesebb, mint $(k - 1)n \le |E(G)|$, ellentmondás.

Tehát a folyamat egy nem üres $H$ részgráfnál áll meg, amelyben minden fok legalább $k$. A 64. b) feladat szerint $H$-ban, így $G$-ben is van legalább $k + 1$ csúcsú, azaz legalább $k + 1$ hosszú kör. $\blacksquare$

## 74. feladat (házi feladat)

Egy összefüggő gráfban minden fokszám páros. Bizonyítsd be, hogy ha kitöröljük egy élét, továbbra is összefüggő marad.

**Megoldás.**

Hagyjuk el az $e = uv$ élt. Tegyük fel, hogy $G - e$ nem összefüggő, és legyen $C$ az $u$-t tartalmazó komponense. Ekkor $v \notin C$, különben $e$ elhagyása nem bontaná szét a gráfot.

$C$-ben $u$ foka $\deg_G u - 1$, ami páratlan, minden más csúcs foka változatlan, tehát páros. Így $C$-ben pontosan egy páratlan fokú csúcs van. Ez ellentmond annak, hogy minden gráfban páros sok páratlan fokú csúcs van (62. b)). Tehát $G - e$ összefüggő. $\blacksquare$

(Másképp: $G$-ben van Euler-kör. Ebből $e$-t elhagyva egy Euler-vonal marad, ami minden élt és így minden csúcsot bejár.)
