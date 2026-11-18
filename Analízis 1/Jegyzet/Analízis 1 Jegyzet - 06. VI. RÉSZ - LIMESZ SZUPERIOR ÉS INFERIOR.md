# VI. RÉSZ: LIMESZ SZUPERIOR ÉS INFERIOR

## 33. A limsup és a liminf definíciója

Az eddigiekben láttuk, hogy egy sorozatnak nem feltétlenül van határértéke. Van azonban két mennyiség, amely **mindig** létezik a bővített számegyenesen, és amely a sorozat „felső" és „alsó" végső viselkedését méri.

**Definíció.** Legyen $(a_n)$ tetszőleges valós sorozat. Minden $n$-re legyen
$$M_n = \sup\{a_k : k = n, n+1, \dots\} \in \overline{\mathbb{R}}, \qquad m_n = \inf\{a_k : k = n, n+1, \dots\} \in \overline{\mathbb{R}}.$$

Ahogy $n$ nő, a halmaz, amelyen a szuprémumot vesszük, egyre szűkül, tehát
$$M_{n+1} \le M_n \qquad \text{és} \qquad m_{n+1} \ge m_n.$$
Az $(M_n)$ sorozat tehát monoton csökkenő, az $(m_n)$ monoton növekedő; így mindkettőnek létezik határértéke $\overline{\mathbb{R}}$-ben. Ezeket nevezzük:
a **limesz szuperiort**
$$\lim_{n\to\infty} M_n \stackrel{\text{def}}{=} \limsup_{n\to\infty} a_n = \overline{\lim_{n\to\infty}}\, a_n \in \overline{\mathbb{R}},$$
illetve a **limesz inferiort**
$$\lim_{n\to\infty} m_n \stackrel{\text{def}}{=} \liminf_{n\to\infty} a_n = \underline{\lim_{n\to\infty}}\, a_n \in \overline{\mathbb{R}}.$$

**Alapvető összefüggések.** Nyilvánvalóan
$$\underline{\lim}\, a_n = -\overline{\lim}\, (-a_n),$$
továbbá minden $n$-re $m_n \le M_n$, tehát
$$\underline{\lim}\, a_n \le \overline{\lim}\, a_n.$$

**Példák.**

1. $\overline{\lim}\, (-1)^n = 1$, $\underline{\lim}\, (-1)^n = -1$.
2. Ha $(q_n)$ a $[0,1] \cap \mathbb{Q}$ halmaz egy sorozatba rendezése (ami a 29. szakasz szerint lehetséges), akkor $\overline{\lim}\, q_n = 1$ és $\underline{\lim}\, q_n = 0$.

**Tétel.** $\displaystyle \lim_{n\to\infty} a_n = a \in \overline{\mathbb{R}} \iff \limsup_{n\to\infty} a_n = \liminf_{n\to\infty} a_n = a$.

Vagyis a határérték létezése pontosan azt jelenti, hogy a felső és az alsó végső viselkedés egybeesik.

## 34. Sűrűsödési értékek

**Definíció.** Az $a \in \overline{\mathbb{R}}$ szám az $(a_n)$ sorozat **sűrűsödési értéke**, ha létezik olyan $(a_{n_k})$ részsorozat, amelyre $a_{n_k} \to a$.

**Példák.**

- A fenti $(q_n)$ sorozat sűrűsödési értékei a $[0,1]$ intervallum **összes** pontja.
- A $(-1)^n$ sorozat sűrűsödési értékeinek halmaza $\{-1, 1\}$.

**Tétel.** Minden $(a_n)$ sorozatra
$$\limsup_{n\to\infty} a_n = \max\{x \in \overline{\mathbb{R}} : x \ \text{az} \ (a_n) \ \text{sűrűsödési értéke}\}.$$

A limesz szuperior tehát a **legnagyobb sűrűsödési érték** — és a tétel egyben azt is állítja, hogy ez a maximum létezik (nemcsak szuprémum).

---
