# Algebra és számelmélet – 11. feladatsor

## 1. feladat

Két multiplikatív függvény szorzata, illetve hányadosa multiplikatív.

## 2. feladat

Két additív függvény összege, illetve különbsége additív.

## 3. feladat

Legyen $f$ számelméleti függvény, $f(n) > 0$ minden $n$ természetes számra. Igazoljuk, hogy ha $f$ multiplikatív, akkor $\log f$ additív.

## 4. feladat

Az alábbi $f \colon \mathbb{N} \to \mathbb{R}$ függvények közül melyek multiplikatívak, melyek additívak?
$$f(n) = n^3, \qquad f(n) = 2^{\omega(n)}, \qquad f(n) = n + 2.$$
($\omega(n)$ az $n$ különböző prímosztóinak számát jelöli)

## 5. feladat

A von Mangoldt-féle $\Lambda$ függvény definíciója a következő:
$$\Lambda(n) = \begin{cases} \log p, & \text{ha } n = p^\alpha, \text{ ahol } p \text{ prím és } \alpha \ge 1, \\ 0, & \text{különben.} \end{cases}$$
Igazoljuk, hogy $\Lambda$ additív.

## 6. feladat

Bizonyítsuk, hogy
(1) $\sum_{d \mid n} \mu(d) = \lfloor 1/n \rfloor$,
(2) (házi feladat) $\sum_{d \mid n} \Lambda(d) = \log n$.

## 7. feladat

Melyek azok a pozitív egész számok, amelyeknek pontosan 3 pozitív osztójuk van?

## 8. feladat

Jelölje $d(n)$ az $n$ pozitív egész szám osztóinak számát. Lássuk be, hogy minden $n \ge 1$ esetén fennáll a $d(n) \le 2\sqrt{n}$ egyenlőtlenség.

## 9. feladat

Igazoljuk, hogy $\prod_{t \mid n} t = n^{d(n)/2}$.

## 10. feladat

Oldjuk meg a $\sigma(x) = x + 7$ egyenletet a pozitív egész számok halmazán.

## 11. feladat

Keressük meg az összes olyan pozitív egész $x$ számot, amelyre $\varphi(x) = x - 1$ teljesül.

## 12. feladat

Keressük meg azt a pozitív egész $n$ számot, amelyre teljesül, hogy az osztóinak száma $d(n) = 6$, az osztóinak összege pedig $\sigma(n) = 28$.

## 13. feladat

Legyenek $f, g$ számelméleti függvények. Az $(f * g)(n) = \sum_{d \mid n} f(d)g(n/d)$ képlettel megadott számelméleti függvény az $f$ és $g$ Dirichlet-konvolúciója. Igazoljuk a következőket:

(1) $f * g = g * f$,

(2) $(f * g) * h = f * (g * h)$,

(3) Ha $f$ és $g$ multiplikatívak, akkor $f * g$ multiplikatív,

ahol $f, g, h$ tetszőleges számelméleti függvények.

## 14. feladat

Írjuk fel a Möbius-féle megfordítási formulát a Dirichlet-konvolúció segítségével.

## 15. feladat

Igazoljuk, hogy tetszőleges $n$ pozitív egész számra $\varphi(n) = n \sum_{d \mid n} \frac{\mu(d)}{d}$ teljesül.

## 16. feladat

Bizonyítsuk az alábbi összefüggést:
$$\sum_{t \mid n} \mu(t) d\left(\frac{n}{t}\right) = 1.$$

## 17. feladat

Bizonyítsuk be, hogy ha $n$ egy tökéletes szám, akkor az osztóinak reciprokösszege pontosan 2, azaz $\sum_{d \mid n} \frac{1}{d} = 2$.

## 18. feladat

Mutassuk meg, hogy egyetlen $p$ prímszám, illetve $p^k$ prímhatvány sem lehet tökéletes szám ($k \ge 1$).

## 19. feladat

Számítsuk ki a következő összeget:
$$\sum_{d \mid n} \mu(d)\sigma\left(\frac{n}{d}\right).$$

## 20. feladat

Legyen az $f(x)$ függvény értelmezve minden $x \in [0, 1]$ racionális számra, és definiáljuk a következőket:
$$F(n) = \sum_{k=1}^n f\left(\frac{k}{n}\right) \quad \text{és} \quad F_1(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n f\left(\frac{k}{n}\right).$$

(1) Mutassuk meg, hogy $F_1 = \mu * F$.

(2) Bizonyítsuk be, hogy
$$\mu(n) = \sum_{\substack{k=1 \\ (k, n)=1}}^n \left(\cos \frac{2\pi k}{n} + i \sin \frac{2\pi k}{n}\right).$$

## 21. feladat

Legyen $F, G \colon (0, \infty) \to \mathbb{R}$, és legyen $\alpha$ egy teljesen multiplikatív függvény. Mutassuk meg, hogy
$$G(x) = \sum_{n \le x} \alpha(n) F\left(\frac{x}{n}\right) \quad \text{minden } x \in (0, \infty) \text{ esetén}$$
akkor és csak akkor teljesül, ha
$$F(x) = \sum_{n \le x} \mu(n)\alpha(n) G\left(\frac{x}{n}\right) \quad \text{minden } x \in (0, \infty) \text{ esetén}.$$
