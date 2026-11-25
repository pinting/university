## A III. rész összefoglalása

- **Gráf, egyszerű gráf, izomorfia:**
  - *Elmélet:* $G = (V, E)$; hurokél (két azonos végpont), többszörös él (párhuzamos élek). Egyszerű gráf: hurok- és többszörös él nélküli. Izomorfia: olyan $f\colon V(G) \to V(H)$ bijekció a csúcshalmazok között, amely éltartó ($uv \in E(G) \iff f(u)f(v) \in E(H)$). Komplementer gráf: $\overline{G} = (V, \binom{V}{2} \setminus E)$.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Egyszerű gráf élszáma: $0 \le |E(G)| \le \binom{n}{2} = \frac{n(n-1)}{2}$.
    - Komplementer élszáma: $e(G) + e(\overline{G}) = \binom{n}{2}$.
    - Önkomplementer gráf ($G \cong \overline{G}$): $e(G) = \frac{1}{2}\binom{n}{2} = \frac{n(n-1)}{4} \implies n \equiv 0 \text{ vagy } 1 \pmod 4$.
  - *Gyakorlati megközelítés:*
    - *Izomorfia igazolása:* adjunk meg egy explicit $f$ bijekciót a csúcsok között, és ellenőrizzük, hogy a szomszédsági viszonyok éppen megegyeznek.
    - *Izomorfia cáfolata (invariánsok):* keressünk olyan gráftulajdonságot, amelyben a két gráf eltér: csúcsszám ($n$), élszám ($e$), rendezett fokszámsorozat, adott hosszúságú körök száma (pl. van-e benne $C_3$ vagy $C_5$), átmérő, vagy szomszédos csúcspárok fokszámai (pl. fut-e él két 3-fokú csúcs között).
    - *Önkomplementer konstrukció:* $n=4$-re az út ($P_4$), $n=5$-re az ötszög ($C_5$).

- **Kézfogási lemma és fokszámok:**
  - *Elmélet:* $\deg(v)$ a $v$-re illeszkedő élek száma (hurokél kettővel számít). Kézfogási lemma: minden él pontosan két végpontnál járul hozzá a fokszámokhoz.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Kézfogási lemma: $\sum_{v \in V} \deg(v) = 2|E| = 2e$.
    - Paritási következmény: a páratlan fokú csúcsok száma mindig páros: $|\{v \in V : \deg(v) \equiv 1 \pmod 2\}| \equiv 0 \pmod 2$.
    - Átlagfokszám korlátai: $\delta(G) \le \overline{d} = \frac{2e}{n} \le \Delta(G)$.
    - Két diszjunkt halmaz ($A, B$) közötti élek: $\sum_{u \in A} \deg_B(u) = \sum_{v \in B} \deg_A(v) = e(A, B)$.
  - *Gyakorlati megközelítés:*
    - *Létezés cáfolata paritással:* ha egy feladatban megadott fokszámok között páratlan sok páratlan szám szerepel, azonnal kijelenthető, hogy ilyen gráf egyáltalán nem létezik (még többszörös élekkel sem).
    - *Ismeretlen fokszám meghatározása:* ha $n-1$ csúcs foka adott, a fokszámösszeg párossága meghatározza az utolsó csúcs paritását; egyszerű gráfban $0 \le \deg(v) \le n-1$ szűkíti a lehetséges értékeket.
    - *Kétoldali számlálás:* bipartite struktúrákban (pl. csapatok mérkőzései, sakktábla mezői) az éleket a két partíció felől összegezve egyenletet kapunk.

- **Séták, vonalak, utak, körök:**
  - *Elmélet:* Séta (csúcsok, élek ismétlődhetnek), vonal (élek különbözők), út (csúcsok különbözők, így élek is), kör (zárt út, hossza egyszerű gráfban $\ge 3$).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - $k$ csúcsú út hossza: $k - 1$ él; $k$ csúcsú kör hossza: $k$ él.
    - Távolság-axiómák: $d(u, v) \ge 0$, $d(u, u) = 0$, $d(u, v) = d(v, u)$, és háromszög-egyenlőtlenség: $d(u, w) \le d(u, v) + d(v, w)$.
    - Séta $\implies$ út lemma: ha van séta két csúcs között, akkor létezik legfeljebb olyan hosszú út is (a legrövidebb séta mindig út).
    - Kör létezése: ha minden csúcsra $\deg(v) \ge 2$, akkor a gráfban garantáltan van kör (a leghosszabb út végpontjának minden szomszédja az úton van).
  - *Gyakorlati megközelítés:*
    - *Körmentesség igazolása:* mutassuk meg, hogy leghosszabb út végpontjából nem indulhat visszafelé él (vagy hogy a gráf fa/erdő).
    - *Rövidítés (hurokeltávolítás):* ha egy sétában egy csúcs ismétlődik ($u \dots w \dots w \dots v$), a közbenső kört kivágva rövidebb sétához jutunk; az eljárás végén egyszerű utat kapunk.
    - *Átmérő számítása:* futtassunk BFS-t a csúcsokból, az átmérő a leghosszabb legrövidebb út hossza: $\operatorname{diam}(G) = \max_{u, v} d(u, v)$.

- **Összefüggőség és komponensek:**
  - *Elmélet:* A „van köztük séta” reláció ekvivalenciareláció a csúcshalmazon; az ekvivalenciaosztályok a gráf maximális összefüggő részgráfjai, az összefüggő komponensek (számuk $c$).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Összefüggő gráf élszáma: $e \ge n - 1$.
    - Nem összefüggő egyszerű gráf ($c \ge 2$) maximális élszáma: $e \le \binom{n-1}{2}$ (a legsűrűbb eset: $K_{n-1}$ és egy izolált csúcs).
    - Összefüggőségi garancia élszámból: ha $e > \binom{n-1}{2}$, akkor $G$ garantáltan összefüggő.
    - Összefüggőségi garancia fokszámból: ha $\forall v \in V: \deg(v) \ge \frac{n-1}{2}$, akkor $G$ összefüggő.
    - Komponensek összegzése: $n = \sum_{i=1}^c n_i$, $e = \sum_{i=1}^c e_i \le \sum_{i=1}^c \binom{n_i}{2}$.
  - *Gyakorlati megközelítés:*
    - *Komponensek szétbontása:* BFS vagy DFS indítása egy tetszőleges pontból; az elért csúcsok alkotnak egy komponenst. Ha maradt fedetlen pont, onnan új bejárást indítunk.
    - *Komplementer trükk:* ha $G$ nem összefüggő ($c \ge 2$), a komplementer gráfja, $\overline{G}$ mindig összefüggő, és átmérője $\operatorname{diam}(\overline{G}) \le 2$ (különböző komponensek csúcsai között közvetlen él fut, azonos komponensbeliekhez egy másik komponens csúcsán át vezet 2 hosszú út).

- **Fa, levelek és ekvivalens jellemzések:**
  - *Elmélet:* Fa = összefüggő, körmentes gráf. Erdő = körmentes gráf (komponensei fák). Levél = 1 fokú csúcs.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Fa élszáma: $e = n - 1$.
    - $c$ komponensű erdő élszáma: $e = n - c$.
    - Levelek száma: minden $n \ge 2$ csúcsú fának van legalább 2 levele: $|\{v : \deg(v) = 1\}| \ge 2$.
    - A fák 6 ekvivalens jellemzése ($n$ csúcsú $G$-re):
      1. $G$ fa (összefüggő és körmentes);
      2. $G$ minimális összefüggő (bármely élét törölve szétesik);
      3. $G$ maximális körmentes (bármely új élt behúzva kör keletkezik);
      4. $G$ összefüggő és $e = n - 1$;
      5. $G$ körmentes és $e = n - 1$;
      6. bármely két csúcsa között pontosan egy út vezet.
    - Belső fokszámok és levelek: $\sum_{v: \deg(v) \ge 3} (\deg(v) - 2) = (\text{levelek száma}) - 2$ (ha $\deg \ge 1$).
  - *Gyakorlati megközelítés:*
    - *Fa igazolása feladatban:* elegendő a fenti 6 tulajdonság közül KETTŐT belátni (pl. körmentes és $e = n - 1$, vagy összefüggő és $e = n - 1$), a többi 4 azonnal következik.
    - *Levélletépéses indukció:* fákra vonatkozó állítások bizonyításának alapeszköze: letépünk egy 1 fokú levelet az élével együtt (a maradék $n-1$ csúcsú fa), alkalmazzuk az indukciós feltevést, majd visszacsatoljuk a levelet.
    - *Fokszám-egyenlet fákra:* ha adott, hogy a fában csak bizonyos fokszámok szerepelnek, a $\sum d_i = 2(n-1)$ és $\sum 1 = n$ egyenletrendszerrel a csúcsszám vagy a levelek száma közvetlenül kiszámítható.

- **Feszítőfa és minimális összsúlyú feszítőfa (MST):**
  - *Elmélet:* Feszítőfa = feszítő részgráf, amely fa (minden csúcsot tartalmaz, $n - 1$ élű). Minden összefüggő gráfnak van. Minimális összsúlyú feszítőfa: $w(T) = \sum_{e \in T} w(e)$ minimális.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Feszítőfa élszáma mindig $e(T) = n - 1$.
    - Törölhető felesleges körélek száma összefüggő gráfban: $e - n + 1$ (ciklomatikus szám / körrang).
    - Vágási tulajdonság (Cut property): bármely $S \subset V$ vágást keresztező legkisebb súlyú él része valamely MST-nek.
    - Körtulajdonság (Cycle property): bármely kör szigorúan legnagyobb súlyú éle nem szerepelhet egyetlen MST-ben sem.
  - *Gyakorlati megközelítés:*
    - *Kruskal-algoritmus (optimista, él-orientált):*
      1. Rendezzük az éleket súly szerint növekvő sorrendbe: $w(e_1) \le w(e_2) \le \dots \le w(e_m)$.
      2. Mohón vegyük be a következő legolcsóbb élt, ha az a már kiválasztottakkal nem zár be kört.
      3. Pontosan $n - 1$ él bevétele után megállunk $\implies$ a kapott feszítőfa garantáltan minimális összsúlyú.
    - *Pesszimista algoritmus (körbontó):*
      1. Keressünk egy kört a gráfban.
      2. Töröljük a kör legdrágább élét (ha a törlés után a gráf összefüggő marad).
      3. Ismételjük, amíg van kör $\implies$ a végén megmaradó $n - 1$ élű gráf MST.
    - *MST-k számlálása:* ha minden élsúly különböző, az MST egyértelmű. Ha egyenlő súlyú élek vannak, a Kruskal-algoritmus azonos súlyú blokkjain belül választható alternatívák számait összeszorozva kapjuk a minimális feszítőfák számát.

- **Cayley-tétel és Prüfer-kód:**
  - *Elmélet:* Címkézett fák $V = [n]$. Prüfer-kód: bijekció az $n$ csúcsú címkézett fák és $[n]^{n-2}$ sorozatok között.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Cayley-tétel: az $n$ csúcsú címkézett fák száma:
      $$T_n = n^{n-2}$$
    - Prüfer-kód hossza: $n - 2$.
    - Fokszám és kód-előfordulás: a $v$ csúcs pontosan $\deg(v) - 1$-szer szerepel a Prüfer-kódban.
    - Levelek a kódban: $\deg(v) = 1 \iff v$ NEM szerepel a Prüfer-kódban.
    - Adott fokszámsorozatú címkézett fák száma (multinomiális együttható):
      $$\frac{(n-2)!}{\prod_{i=1}^n (d_i - 1)!}$$
    - Olyan fák száma, ahol az 1-es csúcs foka $d$: $\binom{n-2}{d-1}(n-1)^{n-2-(d-1)}$; speciálisan ha az 1-es csúcs levél: $(n-1)^{n-2}$.
  - *Gyakorlati megközelítés:*
    - *Fa $\to$ Prüfer-kód kódolás:*
      1. Keresd meg a fa pillanatnyi legkisebb címkéjű levelét.
      2. Írd fel a szomszédját a kódba.
      3. Töröld a levelet az élével együtt.
      4. Ismételd $n - 2$-szer.
    - *Prüfer-kód $\to$ Fa dekódolás:*
      1. Írd fel a még fel nem használt csúcsokat: $\{1, 2, \dots, n\}$.
      2. Keresd meg a legkisebb olyan csúcsot, amely **nem szerepel a hátralévő kódban**.
      3. Kösd össze a kód legelső elemével.
      4. Húzd ki a csúcsot a listából és az első elemet a kódból.
      5. A kód elfogytakor maradó 2 csúcsot kösd össze egy éllel!
    - *Kód alakja:* csupa egyforma szám $(c, c, \dots, c) \implies$ $c$ közepű csillag ($K_{1, n-1}$); csupa különböző szám a kódban $\implies$ útgráf.

- **Fokszámsorozatok realizálása:**
  - *Elmélet:* $d_1 \le d_2 \le \dots \le d_n$ megvalósítható-e gráfként? I. Hurok és többszörös él megengedett; II. Hurokmentes multigráf; III. Egyszerű gráf; +1. Fa.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - I. Típus (multigráf hurokkal): $\sum d_i$ páros.
    - II. Típus (hurokmentes multigráf): $\sum d_i$ páros ÉS $d_n \le \sum_{i=1}^{n-1} d_i$.
    - III. Típus (Erdős–Gallai-tétel egyszerű gráfra, csökkenő $D_1 \ge \dots \ge D_n$ sorrendre): $\sum D_i$ páros ÉS minden $1 \le k \le n$-re:
      $$\sum_{i=1}^k D_i \le k(k-1) + \sum_{i=k+1}^n \min(D_i, k)$$
    - +1. Típus (Fa, $d_i \ge 1$): pontosan akkor realizálható fával, ha $\sum_{i=1}^n d_i = 2(n-1)$.
  - *Gyakorlati megközelítés:*
    - *Havel–Hakimi algoritmus (lépésről lépésre egyszerű gráfra):*
      1. Rendezzük a fokszámigényeket csökkenő sorrendbe: $(D_1, D_2, \dots, D_n)$.
      2. Hagyjuk el a legnagyobb $D_1 = \Delta$ elemet.
      3. Vonjunk le 1-et a rákövetkező $\Delta$ darab legfelső tagból: $(D_2 - 1, D_3 - 1, \dots, D_{\Delta+1} - 1, D_{\Delta+2}, \dots)$.
      4. Rendezzük újra csökkenőbe a kapott sorozatot.
      5. Ismételjük: ha csupa 0-hoz érünk $\implies$ REALIZÁLHATÓ (a behúzott élek adják a konstrukciót). Ha negatív tag keletkezne vagy nincs elég elem a levonáshoz $\implies$ NEM REALIZÁLHATÓ.
    - *Gyors ellenőrzések egyszerű gráfra:* $\Delta \le n - 1$; ha van $n-1$ fokú csúcs, mellette nem állhat 0 fokú; a kézfogási összeg páros.

- **Reguláris gráfok:**
  - *Elmélet:* Minden csúcs foka azonos: $\forall v \in V: \deg(v) = r$ ($r$-reguláris gráf).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Élszám: $e = \frac{n \cdot r}{2} \implies n \cdot r = 2e$ páros.
    - Páratlan fokszám paritása: ha $r$ páratlan, akkor a csúcsszám $n$ szükségképpen páros (pl. 3-reguláris gráfnak páros sok csúcsa van).
    - Egyszerű gráfban: $0 \le r \le n - 1$.
    - Komplementer: $r$-reguláris egyszerű gráf komplementere $(n - 1 - r)$-reguláris.
  - *Gyakorlati megközelítés:*
    - *Szerkezet kis $r$-ekre:*
      - $r=0$: üres gráf (csupa izolált pont).
      - $r=1$: diszjunkt független élek uniója (teljes párosítás, $n$ páros).
      - $r=2$: diszjunkt körök uniója ($C_{k_1} \cup C_{k_2} \dots$).
      - $r=3$ (köbös gráf): páros $n$; konstrukció: $n$ hosszú kör szemközti/átellenes húrokkal ($v_i$ összekötve $v_{i+n/2}$-vel).
    - *Létezési feladatok:* adott $n$ és $r$ esetén ha $n \cdot r$ páros és $r \le n - 1$, mindig létezik $r$-reguláris egyszerű gráf.

- **Euler-séta és Euler-körséta:**
  - *Elmélet:* Euler-séta: minden élen pontosan egyszer áthaladó vonal. Euler-körséta: zárt Euler-séta (visszatér a kiindulópontjába).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Euler-körséta létezése $\iff$ a gráf összefüggő (az izolált pontoktól eltekintve) ÉS minden csúcs foka páros:
      $$\forall v \in V: \deg(v) \equiv 0 \pmod 2$$
    - Nyílt Euler-séta létezése $\iff$ a gráf összefüggő ÉS a páratlan fokú csúcsok száma pontosan 2:
      $$|\{v \in V : \deg(v) \text{ páratlan}\}| = 2$$
      (A séta az egyik páratlan csúcsból indul és a másikban végződik).
    - Éllefedés vonalakkal: ha egy összefüggő gráfban $2k$ páratlan fokú csúcs van ($k \ge 1$), az élek minimálisan $k$ darab élidegen vonallal fedhetők le.
  - *Gyakorlati megközelítés:*
    - *Eldöntési algoritmus:* hagyjuk el az izolált csúcsokat; ellenőrizzük az összefüggőséget; számoljuk meg a páratlan fokú csúcsokat ($0 \implies$ zárt Euler-körséta; $2 \implies$ nyílt Euler-séta; egyébként nincs).
    - *Hierholzer-algoritmus konstrukcióhoz:* induljunk el tetszőleges pontból és járjunk be egy kört a még szabad éleken; ha maradt be nem járt él, a meglévő kör egy érintett csúcsából indítsunk újabb körvonalat a maradék éleken, és fűzzük be az eredetibe.

- **Hamilton-út és Hamilton-kör (szükséges feltételek):**
  - *Elmélet:* Hamilton-út: minden csúcsot pontosan egyszer tartalmazó út ($n - 1$ él). Hamilton-kör: minden csúcsot tartalmazó kör ($n$ él). Eldöntése NP-teljes feladat.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Vágási feltétel Hamilton-körre: bármely nemüres $S \subset V$ csúcshalmazra a $G - S$ gráf komponenseinek száma:
      $$c(G - S) \le |S|$$
    - Vágási feltétel Hamilton-útra: bármely $S \subset V$ csúcshalmazra:
      $$c(G - S) \le |S| + 1$$
    - Páros gráfban ($G(A, B)$):
      - van Hamilton-kör $\implies |A| = |B|$;
      - van Hamilton-út $\implies ||A| - |B|| \le 1$.
  - *Gyakorlati megközelítés (Cáfolati receptek):*
    - *Csúcstörléses cáfolat ($S$ megadása):* keressünk egy olyan $S$ csúcshalmazt (pl. elvágó csúcsok, csillagközepek), amelynek elhagyásával a megmaradó komponensek száma meghaladja $|S|$-et (útnál $|S|+1$-et) $\implies$ NEM lehet Hamilton-kör/út.
    - *Fokszámkényszeres cáfolat (2-fokú csúcsok):* Hamilton-körben minden csúcsból pontosan 2 él szerepel. Ha egy csúcs foka 2, mindkét éle kötelező. Ha ezáltal egy másik csúcshoz már 3 kötelező él futna be, vagy a kötelező élek egy $n$-nél rövidebb kört zárnak be $\implies$ NEM lehet Hamilton-kör.
    - *Petersen-gráf cáfolata:* külső ötszög és belső csillag közötti küllők számlálása paritással (a feltételezett Hamilton-kör nem tartalmazhat 5 hosszú kört részgráfként).

- **Hamilton-kör elégséges feltételei (Dirac és Ore):**
  - *Elmélet:* Ha a gráf csúcsainak foka elég nagy, a gráfban garantáltan létezik Hamilton-kör.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Ore-tétel ($n \ge 3$, egyszerű gráf): ha bármely két **nem szomszédos** $u, v$ csúcspárra:
      $$\deg(u) + \deg(v) \ge n \implies G\text{-ben van Hamilton-kör.}$$
    - Dirac-tétel ($n \ge 3$, egyszerű gráf): ha minden csúcsra:
      $$\deg(v) \ge \frac{n}{2} \implies G\text{-ben van Hamilton-kör.}$$
      (A Dirac-tétel az Ore-tétel speciális esete, mert $\deg(u) + \deg(v) \ge \frac{n}{2} + \frac{n}{2} = n$).
    - Élszám alapú elégséges feltétel ($n \ge 3$, egyszerű gráf): ha $e > \binom{n-1}{2} + 1 \implies G$-ben van Hamilton-kör.
  - *Gyakorlati megközelítés:*
    - *Elégségesség ellenőrzése:* nézzük meg a minimális fokszámot: ha $\delta(G) \ge n/2$, Dirac azonnal adja a választ. Ha van kisebb fokú csúcs, de minden nem szomszédos pár fokszámösszege $\ge n$, az Ore-tétel alkalmazható.
    - *Típushiba elkerülése:* Dirac és Ore CSAK ELÉGSÉGES feltételek! Ha nem teljesülnek, abból NEM következik, hogy nincs Hamilton-kör (pl. a $C_n$ körgráf sem teljesíti $n \ge 5$-re, mégis van benne Hamilton-kör). Cáfolathoz a szükséges feltételeket kell használni!

- **Csúcsszínezés és kromatikus szám:**
  - *Elmélet:* Jó csúcsszínezés: $uv \in E \implies c(u) \ne c(v)$. Kromatikus szám: $\chi(G)$ a minimális színszám. A színosztályok diszjunkt független csúcshalmazok: $V = \bigcup_{i=1}^k V_i$.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Alapvető szendvics-korlát:
      $$\omega(G) \le \chi(G) \le \Delta(G) + 1$$
      (Alsó korlát a klikkszám $\omega(G)$, felső korlát a mohó színezés).
    - Független számból adódó alsó korlát:
      $$\chi(G) \ge \frac{n}{\alpha(G)}$$
    - Brooks-tétel: ha $G$ összefüggő egyszerű gráf, és $G \ne K_n$, valamint $G \ne C_{2k+1}$:
      $$\chi(G) \le \Delta(G)$$
    - Nevezetes értékek: $\chi(K_n) = n$; $\chi(C_{2k+1}) = 3$; $\chi(C_{2k}) = 2$; $\chi(\text{fa}) = 2$ ($n \ge 2$).
  - *Gyakorlati megközelítés:*
    - *$\chi(G)$ meghatározása (alsó és felső becslés illesztése):*
      1. **Alsó korlát ($\chi \ge k$):** mutassunk $K_k$ teljes részgráfot ($\omega \ge k$), VAGY páratlan kört ($k=3$), VAGY alkalmazzuk a $\chi \ge \lceil n/\alpha(G) \rceil$ összefüggést.
      2. **Felső korlát ($\chi \le k$):** készítsünk konkrét jó színezést $k$ színnel (adjuk meg a független színosztályokat).
      3. Ha a két szám egybeesik, a kromatikus szám bizonyítottan $k$.
    - *Mohó színezés heurisztika:* csökkenő fokszám szerinti sorrendben színezve a mohó algoritmus a gyakorlatban gyakran $\Delta + 1$-nél jóval kevesebb színt használ.

- **Páros gráfok és 2-színezhetőség:**
  - *Elmélet:* $G$ páros (kétosztályú) $\iff \chi(G) \le 2 \iff V = A \cup B$ és minden él $A$ és $B$ között fut.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Páros gráfok karakterizációja: $G$ páros $\iff$ $G$-ben nincs páratlan kör (minden köre páros hosszúságú).
    - Maximális élszám egyszerű páros gráfban:
      $$e \le |A| \cdot |B| \le \lfloor n^2 / 4 \rfloor$$
      (Mantel-tétel, 54. szakasz: háromszögmentes gráfra is ez a korlát; egyenlőség a kiegyensúlyozott $K_{\lfloor n/2 \rfloor, \lceil n/2 \rceil}$ teljes páros gráfra áll fenn).
    - Speciálisan: minden fa páros gráf; minden páros gráf háromszögmentes ($\omega \le 2$).
  - *Gyakorlati megközelítés:*
    - *BFS rétegezés (2-színezés előállítása és páratlan kör detektálása):*
      1. Válasszunk ki egy $v_0$ gyökeret, és osszuk rétegekre a csúcsokat a távolságuk szerint: $L_i = \{u : d(v_0, u) = i\}$.
      2. Legyen $A = \bigcup L_{\text{páros}}$ és $B = \bigcup L_{\text{páratlan}}$.
      3. Ha fut él rétegen belül ($u, v \in L_i$) $\implies$ a legközelebbi közös őssel páratlan kör keletkezik $\implies$ a gráf NEM páros!
      4. Ha minden él szomszédos rétegek között fut $\implies$ a gráf PÁROS, és $(A, B)$ a jó 2-színezés.
    - *Párosság cáfolata:* mutassunk rá egyetlen páratlan körre (háromszög, ötszög stb.).

- **Számítási bonyolultság a színezésben:**
  - *Elmélet:* Mely színezési problémák oldhatók meg gyorsan (polinomiális időben), és melyek számítástudományi szempontból nehezek?
  - *Kötelező osztályozás & tételek:*
    - $\chi(G) \le 2$ eldöntése: $\mathcal{O}(n + e)$ lineáris idő (BFS-sel) $\implies \mathbf{P}$.
    - $\chi(G) \le 3$ eldöntése: **NP-teljes** (Karp, 1972).
    - $\chi(G) \le k$ eldöntése ($k \ge 3$ rögzített): **NP-teljes**.
    - Kromatikus szám $\chi(G)$ pontos értéke: **NP-nehéz**.
    - Élszínezési osztály eldöntése ($\chi' = \Delta$ vs $\Delta + 1$): **NP-teljes** (Holyer, 1981), még 3-reguláris gráfokra is.
  - *Gyakorlati megközelítés:*
    - 2-színezhetőségre mindig adható hatékony, egzakt algoritmus (BFS).
    - $k \ge 3$-színezhetőség esetén általános algoritmus helyett struktúratulajdonságokra (klikk, független szám, Brooks-tétel, mohó heurisztika) kell támaszkodni.

- **Élszínezés és élkromatikus szám (Vizing és Kőnig):**
  - *Elmélet:* Jó élszínezés: közös csúcsú élek különböző színűek. Élkromatikus szám: $\chi'(G)$ vagy $\chi_e(G)$. Az azonos színű élek független élhalmazt (párosítást) alkotnak.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Triviális alsó korlát: $\chi'(G) \ge \Delta(G)$.
    - Vizing-tétel (egyszerű gráfra):
      $$\Delta(G) \le \chi'(G) \le \Delta(G) + 1$$
      (1. osztály: $\chi' = \Delta$; 2. osztály: $\chi' = \Delta + 1$).
    - Kőnig élszínezési tétele: minden páros gráf 1. osztályú:
      $$G \text{ páros} \implies \chi'(G) = \Delta(G)$$
    - Páratlan kör: $\chi'(C_{2k+1}) = 3 = \Delta + 1$ (2. osztályú).
    - Teljes gráfok: $\chi'(K_{2n}) = 2n - 1 = \Delta$ (1. osztály); $\chi'(K_{2n+1}) = 2n + 1 = \Delta + 1$ (2. osztály).
    - Túlzsúfoltsági korlát (páratlan $n$-re): ha $e > \Delta \cdot \frac{n-1}{2} \implies \chi'(G) = \Delta + 1$.
  - *Gyakorlati megközelítés:*
    - *Élszínezési feladatok menete:*
      1. Állapítsuk meg $\Delta(G)$-t. A válasz kizárólag $\Delta$ vagy $\Delta + 1$ lehet!
      2. Ha a gráf páros $\implies$ azonnal $\chi' = \Delta$ (Kőnig).
      3. Ha $n$ páratlan és $e > \Delta \lfloor n/2 \rfloor \implies$ azonnal $\chi' = \Delta + 1$ (2. osztály).
      4. Ha 1. osztályú, bontsuk fel az élhalmazt $\Delta$ darab független párosításra.
    - *Körmérkőzéses bajnokság fordulói:* $n$ csapat mérkőzéseinek fordulókba osztása megegyezik a $K_n$ élszínezésével (páros $n$-re $n-1$ forduló, páratlan $n$-re $n$ forduló).

- **Síkbarajzolható gráfok és tartományaik:**
  - *Elmélet:* Metszésmentes síkrajz Jordan-ívekkel. A síkrajz $t$ darab tartományra (lapra) osztja a síkot ($t - 1$ belső, 1 külső végtelen tartomány).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Tartományok száma: $t \ge 1$.
    - Él-tartomány kettős leszámlálás:
      $$\sum_{T} \deg(T) = 2e$$
      (ahol $\deg(T)$ a tartományt határoló zárt séta élszáma; a híd él mindkét oldalról ugyanazt a tartományt határolja, így 2-vel számít).
    - Ha van kör és a gráf egyszerű: $\forall T: \deg(T) \ge 3 \implies 3t \le 2e \iff t \le \frac{2}{3}e$.
  - *Gyakorlati megközelítés:*
    - *Síkrajz megadása:* konkrét koordinátákkal vagy síkbeli elrendezéssel mutassuk be a metszésmentességet (pl. $K_4$-nél a negyedik pont a háromszög belsejében).
    - *Külső tartomány felcserélhetősége:* sztereografikus vetítéssel bármelyik belső tartomány "kifordítható" külső tartománnyá anélkül, hogy a tartománystruktúra megváltozna.

- **Euler-formula síkgráfokra:**
  - *Elmélet:* Összefüggő síkbarajzolt gráfban a csúcsok, élek és tartományok topológiai összefüggése invariáns a gráf alakjára.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Összefüggő síkgráfra ($c = 1$):
      $$n - e + t = 2$$
    - Általános, $c$ komponensű síkgráfra:
      $$n - e + t = c + 1$$
    - Invariáns lépés: körél törlésekor $e \to e - 1$ és $t \to t - 1$, így $n - e + t$ állandó marad; feszítőfára $n - (n - 1) + 1 = 2$.
  - *Gyakorlati megközelítés:*
    - *Hiányzó paraméter meghatározása:* $n$ és $e$ ismeretében (pl. fokszámokból) a tartományok száma közvetlenül adódik: $t = e - n + 2$.
    - *Tartományméretek egyenletrendszere:* ha a gráfban csak $k$-szög és $l$-szög tartományok vannak ($t_k$ és $t_l$), akkor a $\begin{cases} t_k + t_l = t = e - n + 2 \\ k \cdot t_k + l \cdot t_l = 2e \end{cases}$ lineáris egyenletrendszer megoldásával megkapjuk az egyes laptípusok darabszámát.

- **Élszám-korlátok síkbarajzolható gráfokban:**
  - *Elmélet:* A kettős leszámlálás és az Euler-formula együtteséből felső korlát adódik az egyszerű síkgráfok élszámára.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Általános egyszerű síkgráf ($n \ge 3$):
      $$e \le 3n - 6$$
      (Egyenlőség pontosan a triangulációkban áll fenn: $e = 3n - 6$ és $t = 2n - 4$).
    - Kört tartalmazó, legalább $p \ge 3$ bőségű síkgráf (minden kör hossza $\ge p$):
      $$e \le \frac{p}{p - 2}(n - 2)$$
    - Háromszögmentes és páros síkgráf ($p = 4$, $n \ge 3$):
      $$e \le 2n - 4$$
      (Egyenlőség $n \ge 4$ esetén négyszögelésben: $e = 2n - 4$ és $t = n - 2$).
    - Minimális fokszám korlát: minden egyszerű síkgráfban létezik legfeljebb 5 fokú csúcs:
      $$\delta(G) \le 5$$
      (Bizonyítás: ha $\delta \ge 6$ lenne, akkor $2e = \sum \deg \ge 6n \implies e \ge 3n > 3n - 6$, ellentmondás).
    - Háromszögmentes síkgráfban: $\delta(G) \le 3$ (mivel $2e \le 4n - 8 < 4n$).
  - *Gyakorlati megközelítés:*
    - *Nem-síkbarajzolhatóság azonnali élszám-cáfolata:*
      - ha $n \ge 3$ és $e > 3n - 6 \implies$ a gráf NEM síkbarajzolható.
      - ha a gráf páros (vagy háromszögmentes) és $e > 2n - 4 \implies$ a gráf NEM síkbarajzolható.
    - *Átlagfokszám korlát:* síkgráfban az átlagos fokszám szigorúan 6 alatti: $\overline{d} = \frac{2e}{n} < 6$.

- **Nem síkbarajzolható gráfok és Kuratowski-tétel:**
  - *Elmélet:* A síkbarajzolhatóság két fundamentális akadálya a $K_5$ és a $K_{3,3}$. Soros bővítés (élfelosztás): $uv$ él helyére $u - w - v$ út beszúrása; ez a síkbeliséget nem változtatja meg.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - $K_5$: $n = 5, e = 10 \implies 10 \le 3(5) - 6 = 9$ (ellentmondás $\implies K_5$ nem síkgráf).
    - $K_{3,3}$: páros, $n = 6, e = 9 \implies 9 \le 2(6) - 4 = 8$ (ellentmondás $\implies K_{3,3}$ nem síkgráf).
    - Kuratowski-tétel: $G$ síkbarajzolható $\iff$ nem tartalmaz olyan részgráfot, amely $K_5$-tel vagy $K_{3,3}$-mal topologikusan izomorf (felosztott $K_5$ vagy $K_{3,3}$).
    - Wagner-tétel (minorkarakterizáció): $G$ síkbarajzolható $\iff$ sem $K_5$, sem $K_{3,3}$ nem minorja $G$-nek.
  - *Gyakorlati megközelítés:*
    - *Kuratowski-részgráf keresése feladatokban:*
      1. Ha $e \le 3n - 6$, az élszám-korlát nem dönt.
      2. *Felosztott $K_{3,3}$ keresése:* keressünk 6 csúcsot két hármas csoportban: $A = \{a_1, a_2, a_3\}$ és $B = \{b_1, b_2, b_3\}$, és keressünk közöttük 9 belsőleg diszjunkt utat minden $(a_i, b_j)$ párra.
      3. *Felosztott $K_5$ keresése:* keressünk 5 kulcscsúcsot, amelyek között mind a 10 párra csúcsdiszjunkt út fut.
      4. Klasszikus ZH-példa: a Petersen-gráf ($n=10, e=15 \le 24$) nem síkbarajzolható, mert felosztott $K_{3,3}$-at tartalmaz.

- **Gráfok a gömbön és a tóruszon:**
  - *Elmélet:* Gömbre metszés nélkül rajzolható $\iff$ síkbarajzolható (sztereografikus vetítés és inverze). Tórusz = úszógumi felület (1 lyukú zárt felület, $g = 1$). A $g$-fülű felület Euler-karakterisztikája: $\chi(S_g) = 2 - 2g$.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Gömb és sík: $n - e + t = 2 \implies e \le 3n - 6$.
    - Tórusz Euler-formulája (cellás felbontásra):
      $$n - e + t = 0$$
    - Élszám-korlát tóruszon egyszerű gráfra ($3t \le 2e \implies t \le \frac{2}{3}e$ behelyettesítésével):
      $$n - e + \frac{2}{3}e \ge 0 \iff e \le 3n$$
    - Teljes gráfok tóruszon: $K_5, K_6, K_7$ lerajzolható tóruszra! ($K_7$-re $n=7, e=21 = 3 \cdot 7$, pontosan eléri a korlátot).
    - $K_8$ már NEM rajzolható a tóruszra ($e = 28 > 3 \cdot 8 = 24$).
    - Heawood-tétel tóruszra: a tóruszra rajzolható gráfok kromatikus száma legfeljebb 7 ($\chi(G) \le 7$, és $K_7$ miatt ez éles).
  - *Gyakorlati megközelítés:*
    - *Tórusz szemléltetése síkon:* egy négyzet szemközti oldalainak azonosításával (felső-alsó és jobb-bal élek összeragasztása). A négyzet szélén kilépő él a szemközti oldalon lép be.
    - *Felületi élszám-korlát levezetése:* tetszőleges felületre írjuk fel az $n - e + t = \chi(S)$ összefüggést, majd a $3t \le 2e$ (vagy bőség esetén $pt \le 2e$) korlátot behelyettesítve határozzuk meg az élszám maximumát.

- **Euler-féle poliédertétel és a szabályos testek:**
  - *Elmélet:* Konvex poliéder gömbre és síkra vetítve egy összefüggő síkgráfot ad. $c$: csúcsok száma, $\text{é}$: élek száma, $l$: lapok (tartományok) száma.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Euler-féle poliédertétel:
      $$c - \text{é} + l = 2$$
    - Szabályos testek alapegyenlete (minden lap $p$-szög, minden csúcsban $q$ lap találkozik: $pl = 2\text{é}$ és $qc = 2\text{é}$):
      $$\frac{1}{p} + \frac{1}{q} = \frac{1}{2} + \frac{1}{\text{é}} > \frac{1}{2} \qquad (p \ge 3, q \ge 3)$$
    - Az 5 Platóni szabályos test:
      - Tetraéder: $(p, q) = (3, 3) \implies c = 4, \text{é} = 6, l = 4$
      - Kocka (hexaéder): $(p, q) = (4, 3) \implies c = 8, \text{é} = 12, l = 6$
      - Oktaéder: $(p, q) = (3, 4) \implies c = 6, \text{é} = 12, l = 8$
      - Dodekaéder: $(p, q) = (5, 3) \implies c = 20, \text{é} = 30, l = 12$
      - Ikozaéder: $(p, q) = (3, 5) \implies c = 12, \text{é} = 30, l = 20$
    - Euler–Poincaré-tétel $n$-dimenziós konvex politópra:
      $$\sum_{k=0}^{n-1} (-1)^k f_k = 1 - (-1)^n$$
    - $n$-dimenziós kocka ($Q_n$) $k$-dimenziós lapjainak száma: $f_k(Q_n) = \binom{n}{k}2^{n-k}$.
  - *Gyakorlati megközelítés:*
    - *Poliéder-feladatok kettős leszámlálással:* írjuk fel a $\sum k \cdot l_k = 2\text{é}$ és $\sum m \cdot c_m = 2\text{é}$ összefüggéseket a különböző laptípusokra és csúcsfokokra, majd helyettesítsünk a $c - \text{é} + l = 2$ képletbe (pl. csonkított ikozaéder / futball-labda ötszögeinek és hatszögeinek száma).

- **Tartományszínezés és a duális gráf:**
  - *Elmélet:* Élben szomszédos tartományok különböző színűek. Duális gráf ($G^*$): minden tartományba csúcsot teszünk; a határoló éleken át duális éleket húzunk.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Duális paraméterei összefüggő síkgráfra:
      $$n^* = t, \quad e^* = e, \quad t^* = n$$
    - Duális csúcs foka: $\deg_{G^*}(T) = \deg(T)$ (a tartomány határának élszáma).
    - Dualitás tétele:
      $$G \text{ tartományszínezése} \iff G^* \text{ csúcsszínezése}$$
      A szükséges színek minimális száma pontosan $\chi(G^*)$.
    - Kétszeres dualitás: összefüggő síkgráfra $(G^*)^* \cong G$ (ön-duálisnak azt a gráfot nevezzük, amelyre $G^* \cong G$).
    - Szabályos testek duálisai: Kocka $\leftrightarrow$ Oktaéder; Dodekaéder $\leftrightarrow$ Ikozaéder; Tetraéder $\leftrightarrow$ Tetraéder (ön-duális).
  - *Gyakorlati megközelítés:*
    - *Duális megrajzolása:* tegyünk egy csúcsot minden tartományba (a külsőbe is); minden határoló élen keresztül húzzunk egy élet a két szomszédos tartomány csúcsa közé. Hídból hurokél lesz; több közös határéből többszörös él lesz.
    - *Rajzfüggőség:* nem 3-szorosan összefüggő gráf esetén a duális izomorfia-típusa függhet a síkrajztól!

- **Síkgráfok színezése (Négyszín-, Ötszín- és Hatszíntétel, Fáry-tétel):**
  - *Elmélet:* Síkbarajzolható gráfok csúcsainak és tartományainak színezése.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Négyszín-tétel (Appel–Haken, 1976): minden egyszerű síkgráfra $\chi(G) \le 4$.
    - Ötszín-tétel (Heawood, 1890): minden egyszerű síkgráfra $\chi(G) \le 5$.
    - Hatszíntétel: minden egyszerű síkgráfra $\chi(G) \le 6$.
    - Fáry-tétel (1948): minden egyszerű síkgráf lerajzolható egyenes szakaszokkal is.
    - Grötzsch-tétel: minden háromszögmentes síkbarajzolható gráfra $\chi(G) \le 3$.
  - *Gyakorlati megközelítés:*
    - *Hatszíntétel bizonyítási algoritmusa (levágás):* keressünk egy $\deg(v) \le 5$ csúcsot (létezik, mert $\delta \le 5$), töröljük az éleivel, színezzük a maradékot 6 színnel, majd visszatéve a szomszédai legfeljebb 5 színt foglalnak le $\implies$ marad szabad szín $v$-nek.
    - *Ötszín-tétel bizonyítási algoritmusa (összehúzás):* $\deg(v) = 5$ esetén a szomszédai között van két nem szomszédos ($x, y$, mert $K_5$ nem síkgráf); húzzuk össze $x$-et és $y$-t $v$-be, színezzük az $n-2$ csúcsú síkgráfot 5 színnel, majd szétnyitáskor $x$ és $y$ azonos színt kap $\implies v$ szomszédai legfeljebb 4 színt foglalnak, jut neki az 5. szín.

- **Gráfparaméterek: független és lefogó halmazok (Gallai-tételek):**
  - *Elmélet:* $\alpha(G)$: független csúcsok max. száma; $\tau(G)$: lefogó csúcsok min. száma; $\nu(G)$: független élek (párosítás) max. száma; $\rho(G)$: lefogó élek min. száma (izolált pont nélkül).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Nyilvánvaló korlátok:
      $$\nu(G) \le \tau(G) \quad \text{és} \quad \alpha(G) \le \rho(G)$$
    - Gallai-tétel csúcsokra:
      $$\alpha(G) + \tau(G) = n$$
      (ugyanis $U \subseteq V$ független $\iff V \setminus U$ lefogó csúcshalmaz).
    - Gallai-tétel élekre (ha nincs izolált csúcs):
      $$\nu(G) + \rho(G) = n$$
    - Kőnig-tétel páros gráfokra: $\nu(G) = \tau(G)$ és $\alpha(G) = \rho(G)$.
    - Nevezetes értékek:
      - $K_n$ ($n \ge 2$): $\alpha = 1, \tau = n - 1, \nu = \lfloor n/2 \rfloor, \rho = \lceil n/2 \rceil$.
      - $C_n$ ($n \ge 3$): $\alpha = \lfloor n/2 \rfloor, \tau = \lceil n/2 \rceil, \nu = \lfloor n/2 \rfloor, \rho = \lceil n/2 \rceil$.
      - $K_{a, b}$ ($1 \le a \le b$): $\alpha = b, \tau = a, \nu = a, \rho = b$.
  - *Gyakorlati megközelítés:*
    - *Négy paraméter meghatározása:* elegendő kettőt kiszámítani (egyet a csúcs-, egyet az élparaméterek közül, pl. $\alpha$-t és $\nu$-t), a másik kettő a Gallai-azonosságokból ($\tau = n - \alpha$ és $\rho = n - \nu$) azonnal adódik.
    - *$\alpha(G)$ kiszámítása klikkfedéssel:* ha a gráf csúcsai lefedhetők $k$ darab diszjunkt klikkel, akkor $\alpha(G) \le k$. Ha sikerül $k$ elemű független csúcshalmazt találni, akkor $\alpha(G) = k$.

- **Párosítások (Hall-, Frobenius-, Tutte- és Kőnig-tétel):**
  - *Elmélet:* Párosítás: $M \subseteq E$ független élhalmaz. Maximális párosítás ($|M| = \nu(G)$); teljes párosítás ($|M| = n/2$, minden csúcs fedett).
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Kőnig párosítási tétele: páros gráfban a maximális párosítás mérete egyenlő a minimális lefogó csúcshalmaz méretével:
      $$\nu(G) = \tau(G)$$
    - Hall-feltétel és Hall-tétel: $G(A, B)$ páros gráfban létezik $A$-t fedő párosítás $\iff$
      $$\forall X \subseteq A: \quad |N(X)| \ge |X|$$
    - Frobenius-tétel: $G(A, B)$-ben létezik teljes párosítás $\iff$
      $$|A| = |B| \quad \text{ÉS} \quad \forall X \subseteq A: |N(X)| \ge |X|$$
    - Tutte-tétel (általános gráfra): $G$-ben létezik teljes párosítás $\iff$
      $$\forall S \subseteq V(G): \quad c_{\mathrm{ptl}}(G - S) \le |S|$$
      (ahol $c_{\mathrm{ptl}}(G - S)$ a páratlan csúcsszámú komponensek száma).
    - Reguláris páros gráfok tétele: minden $r$-reguláris ($r \ge 1$) páros gráfban van teljes párosítás ($\nu = n/2$), és élkromatikus száma $\chi'(G) = r$.
    - Mátrixos bástyaelhelyezés: a $0$–$1$ párosítási mátrixban van nem-nulla szorzat a kifejtésben $\iff$ van teljes párosítás; a teljes párosítások száma $\operatorname{per}(M)$.
  - *Gyakorlati megközelítés:*
    - *Javító utas algoritmus (magyar módszer):*
      1. Induljunk egy mohó párosításból (piros élek).
      2. Ha van fedetlen $u \in A$ csúcs, keressünk alternáló utat (fekete-piros-fekete... éleken) egy fedetlen $v \in B$ csúcsba.
      3. Ha találunk, felcseréljük a piros és fekete éleket az út mentén $\implies$ a párosítás mérete 1-gyel nő.
      4. Egy párosítás pontosan akkor maximális, ha NEM létezik hozzá javító út!
    - *Hall-feltétel cáfolata:* ha nincs $A$-t fedő párosítás, mutassunk egy szűk keresztmetszetet: egy konkrét $X \subseteq A$ részhalmazt, amelyre $|N(X)| < |X|$ (pl. 3 embernek csak 2 közös ismerőse van).
    - *Tutte-feltétel cáfolata:* mutassunk olyan $S \subseteq V$ csúcshalmazt, amelynek elhagyásával több páratlan komponens keletkezik, mint $|S|$ (pl. páratlan csúcsszámú gráfra $S = \emptyset$ esetén $c_{\mathrm{ptl}} \ge 1 > 0$).

- **Deficites Hall-tétel és Kőnig-tétel:**
  - *Elmélet:* Az $X \subseteq A$ hiánya $|X| - |N(X)|$; a gráf hiánya $d = \max_{X \subseteq A}(|X| - |N(X)|) \ge 0$. Ha a Hall-feltétel $d$ híján teljesül, legfeljebb $d$ csúcs marad fedetlen.
  - *Kötelező (egyenlőtlenségek) & képletek:*
    - Deficites Hall-tétel: $\nu(G) = |A| - \max_{X \subseteq A}\big(|X| - |N(X)|\big)$.
    - Kőnig-tétel: páros gráfban $\nu = \tau$; lefogó halmazként közvetlenül adódik a Hall-bizonyítás javító utas ábrájából $L = A_2 \cup B_1$, illetve a deficites Hall-tételből $(A \setminus X) \cup N(X)$ a maximális hiányú $X$-re. Izolált csúcs nélküli páros gráfban $\alpha = \rho$.
  - *Gyakorlati megközelítés:*
    - *Maximalitás igazolása:* egy $k$ élű párosítás mellé mutassunk egy $k$ elemű lefogó csúcshalmazt (vagy egy $|A| - k$ hiányú $X$ halmazt) — ez bizonyítja, hogy nagyobb párosítás nincs.

- **Stabil párosítások:**
  - *Elmélet:* $n$ nő ($X_1,\dots,X_n$), $n$ férfi ($Y_1,\dots,Y_n$), szigorú preferencialisták ($Y_j >_{X_i} Y_k$). Instabilitás (blokkoló pár / kölcsönös él): $(X_i, Y_j)$ és $(X_k, Y_l)$ párokra $Y_l >_{X_i} Y_j$ és $X_i >_{Y_l} X_k$. Stabil: nincs ilyen instabilitás.
  - *Kötelező tétel:* Gale–Shapley (1962): stabil teljes párosítás mindig létezik; a leányvásár / késleltetett elfogadási (leánykérő) algoritmus legfeljebb $n^2$ kérés után stabil párosítást ad, amely **férfi-optimális** ($Y$-optimális) és **nő-pesszimális** ($X$-pesszimális).
  - *Gyakorlati megközelítés:* futtassuk az algoritmust körönként (a pár nélküli férfiak a listájuk következő nőjét kérik meg, a nők a jobb ajánlatot lebegtetik tovább), majd ellenőrizzük, hogy egyik férfi által jobban kedvelt nőnél sem áll előbbre a kérő a nő jelenlegi párjánál.

---
