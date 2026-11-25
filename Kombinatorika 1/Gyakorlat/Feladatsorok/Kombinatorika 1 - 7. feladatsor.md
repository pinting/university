# Kombinatorika 1 – 7. feladatsor

### Kombinatorika 1 normál · 2026.

**Kuratowski tétele.** Egy véges gráf pontosan akkor nem síkbarajzolható, ha valamelyik részgráfja a $K_5$ vagy a $K_{3,3}$ *soros bővítése (felosztása)*. Soros bővítéskor minden élbe tetszőleges számú (akár nulla) új, másodfokú csúcsot hozunk létre.

**Euler-féle poliédertétel.** Ha egy összefüggő síkgráfnak $n$ csúcsa, $e$ éle és $t$ tartománya van (a külsőt is beleszámítva), akkor $n - e + t = 2$.

**Élszámbecslés.** Legyen $G$ egy $n \ge 3$ csúcsú, $e$ élű *egyszerű* síkgráf. Ekkor $e \le 3n - 6$.

*Bizonyítás.* Az egyszerűség feltevése szerint $G$-ben nincs hurokél, és bármely két különböző csúcsot legfeljebb egy él köt össze. Egy élt **hídnak** nevezünk, ha törlése növeli a gráf összefüggő komponenseinek számát. Egy él pontosan akkor híd, ha egyetlen körön sem fekszik. Tegyük fel először, hogy $G$ összefüggő. Járjuk körbe mind a $t$ tartomány határát, a külsőét is. Minden él mindkét oldalát pontosan egyszer járjuk be. Ha az él híd, akkor ugyanannak a tartománynak a határán járjuk be oda és vissza. A határhosszak összege tehát $2e$.

Minden tartomány határhossza legalább $3$; valóban, az $1$ hosszú határhoz hurokél, a két különböző élből álló $2$ hosszú határhoz párhuzamos élek kellenének, ezeket az egyszerűség kizárja. Ha a teljes határ egyetlen él oda-vissza bejárásából állna, mindkét végpontja elsőfokú volna (különben ott másik élen folytatódna a bejárás). Az összefüggőség miatt ekkor a gráf $K_2$ volna, holott $n \ge 3$.

A $t$ tartomány határainak hosszát összeadva így $3t \le 2e$. Az Euler-formula szerint $t = e - n + 2$, tehát
$$3(e - n + 2) = 3t \le 2e, \qquad \text{amiből} \qquad e \le 3n - 6.$$
Ha több komponens van, rajzoljuk őket egymás mellé, majd a külső tartományban húzott új élekkel sorban kössük össze őket. Az így kapott összefüggő, egyszerű síkgráfnak is $n$ csúcsa van, és tartalmazza az eredeti gráf összes élét. Ezért az eredeti gráfban is $e \le 3n - 6$.

---

## 106. feladat

Egy térképen az országok összefüggő tartományok. Két ország akkor szomszédos, ha van közös határszakaszuk.

a) Egy nemzetközi konferencián egy asztalnál öt különböző ország egy-egy képviselője ül. Bizonyítsd be, hogy van köztük kettő, akiknek az országa nem szomszédos!

b) Adj meg olyan térképet, amelyen négy ország közül bármely kettő szomszédos!

## 107. feladat

Síkbarajzolhatók-e az alábbi gráfok? Nemleges válasz esetén Kuratowski tételével indokolj! Az ábrákon csak a megjelölt pontok csúcsok.

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=white, inner sep=1.7pt, thick}
]
  % a) Haziko K4 alappal
  \begin{scope}[xshift=0cm]
    \node[pt] (T) at (0, 1.95) {};
    \node[pt] (UL) at (-0.65, 1.0) {};
    \node[pt] (UR) at (0.65, 1.0) {};
    \node[pt] (BL) at (-0.65, -0.2) {};
    \node[pt] (BR) at (0.65, -0.2) {};
    \draw (T) -- (UL) -- (UR) -- (T);
    \draw (UL) -- (BL) -- (BR) -- (UR);
    \draw (UL) -- (BR);
    \draw (UR) -- (BL);
    \node at (0, -0.85) {\textbf{a)}};
  \end{scope}

  % b) Hatszog + 3 foatlo (K3,3)
  \begin{scope}[xshift=2.8cm, yshift=0.85cm]
    \foreach \i/\ang in {1/90, 2/30, 3/-30, 4/-90, 5/-150, 6/150} {
      \node[pt] (b\i) at (\ang:1.05) {};
    }
    \draw (b1) -- (b2) -- (b3) -- (b4) -- (b5) -- (b6) -- (b1);
    \draw (b1) -- (b4); \draw (b2) -- (b5); \draw (b3) -- (b6);
    \node at (0, -1.70) {\textbf{b)}};
  \end{scope}

  % c) Hatszog + fuggoleges + 2 vizszintes (hasab)
  \begin{scope}[xshift=5.6cm, yshift=0.85cm]
    \foreach \i/\ang in {1/90, 2/30, 3/-30, 4/-90, 5/-150, 6/150} {
      \node[pt] (c\i) at (\ang:1.05) {};
    }
    \draw (c1) -- (c2) -- (c3) -- (c4) -- (c5) -- (c6) -- (c1);
    \draw (c1) -- (c4); \draw (c6) -- (c2); \draw (c5) -- (c3);
    \node at (0, -1.70) {\textbf{c)}};
  \end{scope}

  % d) Hetszog C_7^2
  \begin{scope}[xshift=8.5cm, yshift=0.85cm]
    \foreach \i in {0,...,6} {
      \pgfmathsetmacro{\ang}{90 - \i * 360 / 7}
      \node[pt] (d\i) at (\ang:1.05) {};
    }
    \draw (d0) -- (d1) -- (d2) -- (d3) -- (d4) -- (d5) -- (d6) -- (d0);
    \draw (d0) -- (d2) -- (d4) -- (d6) -- (d1) -- (d3) -- (d5) -- (d0);
    \node at (0, -1.70) {\textbf{d)}};
  \end{scope}

  % e) Petersen-graf
  \begin{scope}[xshift=11.5cm, yshift=0.85cm]
    \foreach \i/\ang in {1/90, 2/18, 3/-54, 4/-126, 5/162} {
      \node[pt] (eo\i) at (\ang:1.05) {};
      \node[pt] (ei\i) at (\ang:0.48) {};
    }
    \draw (eo1) -- (eo2) -- (eo3) -- (eo4) -- (eo5) -- (eo1);
    \draw (ei1) -- (ei3) -- (ei5) -- (ei2) -- (ei4) -- (ei1);
    \foreach \i in {1,...,5} {
      \draw (eo\i) -- (ei\i);
    }
    \node at (0, -1.70) {\textbf{e)}};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

## 108. feladat

Síkbarajzolhatók-e az alábbi gráfok? Ha igen, adj keresztezésmentes rajzot! Ha nem, bizonyítsd be!

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[scale=0.95,
  pt/.style={circle, draw=black, fill=black, inner sep=1.9pt}
]
  % a) 8 csucs, 13 el
  \begin{scope}[xshift=0cm]
    \node[pt] (Lt) at (0, 2.0) {};
    \node[pt] (Mt) at (1.15, 2.0) {};
    \node[pt] (Rt) at (2.3, 2.0) {};
    \node[pt] (Et) at (3.6, 2.0) {};
    \node[pt] (Mm) at (1.15, 0.7) {};
    \node[pt] (Lb) at (0, 0) {};
    \node[pt] (Rb) at (2.3, 0) {};
    \node[pt] (Eb) at (3.6, 0) {};
    \draw (Lt) -- (Mt) -- (Rt);
    \draw (Lb) -- (Rb) -- (Eb);
    \draw (Lt) -- (Lb); \draw (Rt) -- (Rb); \draw (Et) -- (Eb);
    \draw (Lt) -- (Mm); \draw (Lb) -- (Mt); \draw (Mt) -- (Eb);
    \draw (Mm) -- (Rt); \draw (Mm) -- (Et); \draw (Rb) -- (Et);
    \node at (1.8, -0.65) {\textbf{a)}};
  \end{scope}

  % b) Negyzet alapu antihasab (8 csucs, 16 el)
  \begin{scope}[xshift=6.5cm, yshift=0.85cm]
    \node[pt] (o1) at (90:1.3) {};
    \node[pt] (o2) at (18:1.3) {};
    \node[pt] (o3) at (-54:1.3) {};
    \node[pt] (o4) at (-126:1.3) {};
    \node[pt] (o5) at (162:1.3) {};
    \node[pt] (i1) at (-0.52, 0.402) {};
    \node[pt] (i2) at (-0.70, -0.25) {};
    \node[pt] (i3) at (0.58, -0.25) {};
    \draw (o1) -- (o2) -- (o3) -- (o4) -- (o5) -- (o1);
    \draw (o5) -- (i1) -- (o2); \draw (o1) -- (i1) -- (i2);
    \draw (o5) -- (i2) -- (o4); \draw (i2) -- (o3);
    \draw (o1) -- (i3) -- (o2); \draw (o4) -- (i3) -- (o3);
    \node at (0, -1.50) {\textbf{b)}};
  \end{scope}

  % c) 8 csucs, 17 el
  \begin{scope}[xshift=9.2cm]
    \node[pt] (Bl) at (0, 0) {};
    \node[pt] (Bm) at (1.3, 0) {};
    \node[pt] (Br) at (3.1, 0) {};
    \node[pt] (Tr) at (2.6, 2.0) {};
    \node[pt] (Tl) at (0.85, 2.0) {};
    \node[pt] (Lu) at (0, 1.35) {};
    \node[pt] (Ml) at (0.65, 0.70) {};
    \node[pt] (Mr) at (1.55, 0.70) {};
    \draw (Bl) -- (Bm) -- (Br) -- (Tr) -- (Tl) -- (Lu) -- (Bl);
    \draw (Lu) -- (Ml) -- (Bl);
    \draw (Bm) -- (Ml) -- (Mr) -- (Bm);
    \draw (Mr) -- (Br);
    \draw (Tl) -- (Ml) -- (Tr);
    \draw (Tl) -- (Mr) -- (Tr);
    \draw (Tl) -- (Br);
    \node at (1.55, -0.65) {\textbf{c)}};
  \end{scope}
\end{tikzpicture}
\end{adjustbox}
\end{center}

## 109. feladat

Mutass példát ugyanannak a gráfnak két olyan síkbeli lerajzolására, amelyek duálisai nem izomorfak!

## 110. feladat

Egy gömbre keresztezés nélkül felrajzolunk egy egyszerű, $16$ élű, $4$-reguláris gráfot (azaz minden csúcs foka négy). Hány tartománya lesz?

## 111. feladat

Egy $20$ csúcsú konvex poliédernek $12$ lapja van. Hány oldala van egy lapjának, ha tudjuk, hogy ez a szám minden lapra azonos?

## 112. feladat

a) Igaz-e, hogy minden $n$ csúcsú, legfeljebb $3n - 6$ élű gráf síkbarajzolható?

b) Ha nem volt előadáson, igazold, hogy egy $n \ge 3$ csúcsú egyszerű, páros síkgráfnak legfeljebb $2n - 4$ éle van! Gyengíthető-e a párosság feltétele úgy, hogy ugyanez az élkorlát érvényben maradjon?

## 113. feladat

Egy hurokélmentes gráf maximális fokszáma $d$. Bizonyítsd be, hogy a csúcsai $d + 1$ színnel kiszínezhetők!

## 114. feladat

Legyen $T$ a síkbarajzolt $G$ gráf egy tetszőleges tartománya. Mutasd meg, hogy $G$ úgy is lerajzolható a síkban, hogy a $T$-t határoló élek a végtelen tartományt határolják!

## 115. feladat

Mi a duálisa a következő síkgráfoknak?

a) $C_n$ \qquad b) $K_4$ \qquad c) a kocka élhálózata \qquad d) az oktaéder élhálózata

## 116. feladat

Mutasd meg, hogy ha a síkbarajzolt $G$ gráf minden tartományának határhossza páros, akkor $G$ páros gráf! A tartomány határán a hidakat kétszer számoljuk.

## 117. feladat

Mutasd meg, hogy a $K_8$ bármely síkbeli lerajzolásában a) legalább $10$, b) legalább $14$ élkereszteződés van! A rajzon szomszédos élek csak a közös végpontjukban találkoznak, és egy kereszteződésben pontosan két él vesz részt.

## 118. feladat

Bizonyítsd be, hogy $\chi(G) \le 6$ minden olyan hurokélmentes $G$ gráfra, amely legfeljebb öt élének elhagyásával síkbarajzolhatóvá tehető!

## 119. feladat

Bizonyítsd be, hogy tetszőleges hurokélmentes $G$ gráfra $e(G) \ge \binom{\chi(G)}{2}$, ahol $e(G)$ a gráf éleinek száma. Összefüggő gráfra mikor áll fenn egyenlőség?

## 120. feladat

Határozd meg a következő gráfok kromatikus számát és élkromatikus számát!

a) a $K_n$ teljes gráf \qquad b) a $K_{n,m}$ teljes páros gráf \qquad c) a $C_n$ kör

d) a Petersen-gráf \qquad e) egy $20$ csúcsú fa \qquad f) egy $C_n$ kör egy átlóval

g) a $G$ gráf, ahol $V(G) = \{1, 2, \dots, 100\}$, és $ij \in E(G) \iff 0 < |i - j| \le 2$.

## 121. feladat

a) Mutass végtelen sok $n$-re olyan $n$ csúcsú, $n$ élű gráfot, amely nem síkbarajzolható!

b) Mutasd meg, hogy minden $n$ csúcsú, $n$ élű összefüggő gráf síkbarajzolható!

c) Mutass végtelen sok $n$-re olyan $n$ csúcsú, $n + 3$ élű, összefüggő gráfot, amely nem síkbarajzolható!

## 122. feladat

A $K_{7,7}$ teljes páros gráf élhalmazát két részre osztottuk. Lehetséges-e, hogy mindkét rész síkbarajzolható gráfot határoz meg?

## 123. feladat

Igazold, hogy ha egy összefüggő, síkbarajzolt gráfban minden fokszám páros, akkor a tartományai kiszínezhetők sakktáblaszerűen két színnel úgy, hogy az élben szomszédos tartományok színe különböző legyen!

## Házi feladat

## 124. feladat (házi feladat)

A $K_4$, $K_7$, $K_{4,5}$ és $K_{7,2}$ gráfok közül melyek síkbarajzolhatók?

## 125. feladat (házi feladat)

Egy egyszerű gráf tartalmaz három különböző, páronként éldiszjunkt feszítőfát. Mutasd meg, hogy van olyan részgráfja, amely a $K_5$ vagy a $K_{3,3}$ soros bővítése!

## 126. feladat (házi feladat)

Egy egyszerű, $n$ csúcsú síkgráf valamennyi csúcsa egy közös tartomány határán fekszik. Legfeljebb hány éle, illetve hány tartománya lehet a gráfnak?
