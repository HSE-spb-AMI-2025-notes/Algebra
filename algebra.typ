== Теорема
$cal(A); v -> v$ - оператор $U <= V$ - инв. подпростр. \
Сначала выбрали базис $U$, потом дополнили до базиса $V$ \
Тогда матрица $[cal(A)] = mat([cal(A)|_U], cal(B);0, [cal(overline(A))|_(V\/U)])$ \ $cal(A): v-> v, cal(A) |_U: u -> u$, $cal(A|_(V\\U)) : v\\u -> v\\ u$ \
Заметим, что по теореме об $det$ блочной матрицы \
$X_A = det ([cal(A)|_U] - t E) dot det([cal(overline(A))|_(V\\U)] - t E) = X_(A|_U) dot X_(overline(A)|_(V\\U))$ 

== Утверждение
$cal(A): v -> v$ - линейный \
$v = v_1 xor v_2, v_i$ - инв. подпростр. \
Тогда выберем $v_1 dots v_k$ - базис $v_1$, $v_(k+1) dots v_n$ - базис $v_2$ - базис $v$ тогда \
$[cal(A)] = mat([cal(A)|_(v_1)], 0;0, [cal(A|_v_2)])$ оба блока нулевые, так как $v_1, v_2$ инвариантны \
Обобщение $v = v_1 xor dots xor v_k$ $v_i$ - инв. подпространства, тогда матрица будет ну вообще очев как выглядеть, лень рисовать \

самый лучший случай $k=n, dim v_i = 1$, $cal(A)$ - диагонализуемый

== Теорема Гамильтона-Кэли
напоминание гомоморфизм-эвалюации: $R$ - $K$-алгебра $R$ - кольцо + векторное пространство над $k$, такое что $(k a) b = a(k b) = k (a b), a,b in R, k in K$, например $k[t], M_n (k), L i n (v,v)$ - $K$-алгебра \
$cal(A) in R$, тогда $exists!$ гомоморфизм $K$-алгебры $e v: k[t] -> R$, который $k[t] |-> cal(A)$, смысл в том, что $f ~> f(cal(A))$ \
$t |-> cal(A), t^k |-> cal(A)^k, t+2 |-> cal(A) + 2 id$

мораль $cal(A) compose cal(A) - id = (cal(A) - id) compose (cal(A) + id)$ \
$cal(A)^2 - cal(B)^2 != (cal(A) - cal(B)) compose (cal(A) + cal(B))$, так как $cal(A) compose cal(B) != cal(B) compose cal(A)$
== Собственно сама теорема
$cal(A) in L i n (v,v). X_cal(A) (cal(A)) = 0, A in M_n (k) X_A (A) = 0$ 
=== Доказательство (неверное)
$X_cal(A) (cal(A)) = det(cal(A) - t E) = det (cal(A) - cal(A) E) = det (0) = 0$

=== Доказательство
пусть $k$ - алгебраически замкнуто (например $k = CC$) и будем доказывать индукцией по размерности $V$ \ 
База $dim V = 1$ \
$A = (a), X_A (t) = a - t, x_A (A) = a dot E - A = (a) - (a) = (0)$

Переход $n -> n+1:$

$dim V = n + 1, k$ - алг. замкнуто $=> X_A$ имеет корень, то есть собственное число $lambda. exists v_0: cal(A) v_0 = lambda v_0, v_0, v_1, dots v_n$ - базис $v$ \
знаем $[cal(A)] = mat(lambda,B;0, cal(overline(A))
_(V\/(chevron v_0 chevron.r)))$ $chevron v_0 chevron.r$ - одномерное инвариантное подпространство \
Важное отступлениее $[cal(A)] = mat( [cal(A)_1] ,, *; 0, [cal(A)_2],; 0, 0, [cal(A)]_k)$ \
тогда $det[ cal(A) - t E] = product det (cal(A_i) - t E)$, то есть $X_A = product X_A_i$ \

Знаем по И.П, что $X_(cal(overline(A))) (cal(overline(A))) = 0: v\/_(chevron v_0 chevron.r) -> v \/_(chevron v_0 chevron.r)$ \
$X_overline(A) (t) = a_n t^n + a_(n-1) t^(n-1) + dots + a_0, a_n overline(A)^n + a_(n-1) overline(A)^(n-1) + dots a_0 id = 0$ \
$forall overline(v) in v\/_(chevron v_0, chevron.r) a_n cal(overline(A))^n (v) + dots + a_0 dot overline(v) = overline(0)$ \
то есть $overline( a_n cal(A)^n (v) + dots a_0 v ) = 0$, то есть $a_n overline(cal(A))^n (v)+ dots + a_b v in chevron v_0 chevron.r, forall v in V$ 

$X_A (t) = (lambda - t) X_overline(A) (t)$ \ знаем: $forall v in V: X_(overline(cal(A))) cal(A) (v) = k dot v_0$ \
$X_cal(A) (cal(A)) (v) = (lambda id - cal(A)) dot X_overline(cal(A)) (cal(A)) (v) = (cal(A) id - cal(A)) (k v_0) = lambda k v_0 - k cal(A) v_0 = 0 forall v in V qed$ \
Почему верно для любого поля?
$k$ - поле $exists $ алг-замкнутое поле $L, k <= L$ \
$A in M_n (k) <= M_n (L)$, $X_A (A) = 0$ в $M_n (l)$, то $X_A (A) = 0$ в $M_n (k)$ \

пример $n=2$ \
$cal(A) = (a,b;c,d) X_A = t^2 - (a+d) t + (a d - b c)$
$a+d = T r(A)$ - сумма диаг. элементов (отступление $A in (a_(i j))_(i = 1 dots n, j = 1 dots n)$, $T r(A) = sum a_(i i)$ - коэфф. при $t^(n-1)$ в $X_A (t)$ - не меняется при замене базисаб как следствие $sum a_(i i) = sum lambda_i$ \ аналогично $product lambda_i = plus.minus$ свободный член, $X_A (t)$ - $det(A)$) 

$2 times 2$ \
$A^2 = k_1 A + k_2 E, k_1 = T r (A), k_2 = - det(A)$
$E , A, A^2, A^3, A^4 $ - л.з (очев), по факту $E, A, A^2$ - л.з \

== Теорема
$cal(A): v -> v$ - лин. оператор \
Пусть нашли $p in k[t], p(cal(A)) = 0$ и пусть $p = p_1 dots p_2, (p_1, p_2) = 1$

Тогда
+ $ker(p_i (cal(A)))$ - инвариантное пространство 
+ $v = ker p_1 (cal(A)) xor ker p_2 (cal(A))$ / $ker p(cal(A)) = V$ /

Пример $cal(A)^2 = id, p = t^2 - 1 = (t-1)(t+1), t-1 = p_1, t+1 = p_2, V = ker(cal(A) - E) xor ker(cal(A) + E) = {v | cal(A) v = v} xor {v | cal(A) v = -v}$ \
$v = (v + cal(A) (v))/2 + (v - cal(A)(v))/2$ \

=== Доказательство
1. $ker p_i (cal(A))$ - инвариантно: $v in ker p_i (cal(A)) => cal(A) v in ker(p_i (cal(A))), p_i(cal(A)) (cal(A) v) = p_i (cal(A)) compose cal(A) (v) = cal(A) compose p_i (cal(A)) (v) = cal(A) (0) = 0$ ($v in ker p_i$) 
2. $(p_1, p_2) = 1 => q_1, q_2 in k[t]$, т.ч. $p_1 q_1 + p_2 q_2 = 1$ \ $p_1 (cal(A)) compose q_1 (cal(A)) + p_2 (cal(A)) q_2 (cal(A)) = id $, то есть $p_1 (cal(A)) (q_1 (cal(A)) (v)) + p_2 (cal(A)) (q_2 (cal(A)) (v)) = v$, заметим, что $p_2 (cal(A)) (v_2) = p_2 (cal(A)) compose p_1 (cal(A)) (dots) = 0$, то есть $v_2 in ker p_2 (cal(A))$ аналогично $v_1 in ker p_2 (cal(A))$ \ Доказали, что $v = v_1 + v_2$, осталось доказать, что $v_1 inter v_2 = {0}, q_1 p_1 + q_2 p_2 = 1, exists v in ker p_1 (cal(A)) inter ker p_2 (cal(A))$, $v in q_1 (cal(A)) p_1 (cal(A)) v + q_2 (cal(A))p_2 (cal(A))(v) = q_1 (cal(A)) (0) + q_2 (cal(A))(0) = 0$

Пусть $p = X_A = p_1^(a_1) p_2^(a_2) dots p_k ^(a_k)$ $p_i$ - неприводимы, $p_i != p_j$ по тереоме $v =  xor.big ker(p_i^(a_i) (cal(A)))$ - сумма аннутяторных подпространств / $p = (p_1 p_2) p_3, v = ker (p_1 p_2^(a_2)) xor ker p_3 (cal(A))= (ker(p_1 (cal(A))) xor ker p_2 (cal(A))) xor ker p_3 (cal(A)) (p_"new" = p_1 p_2, p_1 p_2 |_(ker (p_1 p_2)) =0)$ и так далее /

Пусть $k$ - алг. замкнутое $p_i = t - lambda_i, ker (t- lambda_i)^(a_i) = W_lambda_i$ - корневое подпространство соответствующее $lambda_i$ / $a_i$ - алг. кратность $lambda_i$ / 

$v_lambda_i = {v_i | cal(A) v = lambda_i v} = ker (cal(A) - lambda_i id) <= ker (cal(A) - d_i id)^(a_i) = w_lambda_i$, то есть $v_lambda_i <= w_lambda_i$ / если $m_(a | g) (lambda_i) = m g (lambda_i) => v_lambda_i = w_lambda_i$

== Теорема о Жорд. форме
$cal(A): v -> v$ - лин. над $k$ - а. замкн. тогда $exists$ базис $v$ (Жорданов базис) \
такй что $[cal(A)] = mat(J_k_1 (lambda_i_1), 0,0; dots, dots, dots; 0, 0, J_(k_n) (lambda_i_k))$, $lambda_1, dots lambda_k$ - собственные числа $lambda(A), k_i in NN$ \
$J_k (lambda) =$ матричка у которой на основной диагонали лямбдики, а под ними единички $ =lambda E + J_k (0)$ - из теоремы в Ж Ф нильпотентна
=== Доказательство 
$X_A (t) = product_(i=1)^k (t-lambda_i)^(a_i)$ ($k$ - а.з) \
знаем: $v = xor.big_(i=1)^k w_lambda_i$ \
лемма $X_cal(A)_w_i (t) = (t - lambda_i)^(a_i)$ \
Доказательство леммы: знаем $product (t - lambda_i)^(a_i) = X_cal(A) (t) = product X_cal(A)_w_i (t)$ \ пусть $X_(cal(A) |_w_i) $ делится на $t-lambda_i$ \
$exists $ соб. вектор $v_i in W_i, cal(A) v_i = lambda_j v_i, (cal(A) lambda_i) id v_i = (lambda_j - lambda_i) v_i, 0 = (cal(A) - lambda_i id)^(a_i) v_i = (lambda_j - lambda_i)^(a_i) v_i => lambda_i = lambda_j$ 

$X_(cal(A) |_w_i) = (t- lambda_i)^(a_i) => (cal(A_i) - lambda_i id)^(a_i) = 0$, где $cal(A)_i = cal(A) |_w_i$ \
то есть $cal(A)_i - d_i id$ - нильпотентный оператор, по теореме о ЖФ нильп. оператора $exists$ базис $w_i$ $[cal(A)_i - d_i id]_(B_i) = $ какая-то страшная матрица, хз как ее рисовать \
$[cal(A)_i]_B_i = [A_i - lambda_i id]_(B_i) + [lambda dot id]_B_i = $ снова какая-то херабора = $[A |_w_i]_B_i$ 

Возьмем Базис (в $V$)

$B = union B_i$ тогда 
$[cal(A)]B = mat([cal(A)|_w_1]_B_1,,  0; , dots.down, ; 0,, [cal(A) |_w_k]_B_k) = $ имеет вид как в условии 

== О единственности Жордановой Формы
+ Пусть $B$ - нильп и нашли базис из Жордановых цепочек $v_(1, k_1) -> dots -> v_(1, 2) -> v_(1,1) -> 0, v_(2, k_2) -> dots -> v_(2,2) -> v_(2,1) -> 0, dots$

Утверждение $ker B^k = chevron v_(i,j) | j <= k chevron.r$ 
доказательство $v_(i,j) in ker B^k$ / $B^j (v_(i,j)) = 0$/ \
$v = sum a_(i j) v_(i j), exists i, j > k, a_(i j) != 0, B^k (v) = a_(i, j) v_(i, j -k) +$ другие базисные $!= 0$ 

$dim ker B^k = b_k$, заметим, что $b_k$ возрастает $b_k - b_(k-1) = abs( v_(i,j) | j = k)$ - это количество цепочек длины $>= k$, поэтому количество цепочек длины $k = $ количество цепочек длины $>= k$ - количество цепочек $>= k+1 = b_k - b_(k-1) - (b_(k+1) b_k) = 2 b_k - b_(k-1) - b_(k+1) = 2 dim ker B^(k) - dim ker B^(k-1) - dim ker B^(k+1)$ это выражение зависит только от $B$, следовательно набор длин цепоек определен одназначно, то есть жорданова форма единственна (с точностью до перестановки формы)

=== ремарка Ж. Базис не единственный

Общий случай: $lambda_i$ - определены однозначно - корни $X_A (t)$ $V = xor W_i$, $W_i$ - цепочки длины ($k_i$) \
Пусть есть Ж. Форма для $A$, тогда количество блоков $J_k (lambda)$ равно $2 dim (ker (A - lambda_i E))^k - dim ker (A - lambda_i E)^(k-1) - dim ker (A - lambda_i E)^(k+1)$, знаем, что это так на $W_i$, а на остальных $xor_(j-i) W_j$ $A - lambda_i E$ - невырожд. $=> ker (A - lambda_i E)^(a_i) = 0$

=== ремарка 
$2 dim ker B^k - dim ker B^(k-1) - dim ker B^(k+1) = (2n - 2 dim Im) - (n - dim Im) - (n - dim Im) = r k B^(n+1) + r k B^(n-1) - 2 r k B^n$ 

== Пример
Возведение матрицы в степень
== Теорема Матричная переформулировка
$forall A in M_N (k), exists c in G L (n,k): C A C^(-1) = mat(J_1 (lambda_(i 1)),,  0; , dots.down, ; 0,, J_k (lambda_(i k)))$ \
$C A C^(-1) = mat( J_1, 0;0, J_k) = J, A = C^(-1) J C, A^n  = (C^(-1) J C)^n = C^(-1) J C C^(-1) J C dots  = C^(-1) J^n C$ \
$J_k (lambda) J_k (0) + lambda E, J_k (lambda)^n = (J_k (0) + lambda E)^n = sum_(i=0)^n C_n^i J^i_k (0) lambda^(n-i)$ \
$(J_k (0))^i$ диагональка из единичек уходит вниз на $i$ позиций $i < k$ \
$(J_k (0))^l = 0, l >= k$

Итого $J_k (lambda)^n = sum_(i=1)^(k-1) C_n^i lambda^(n-i) (mat) = mat(lambda^n ,,,,; n lambda^(n-1);(n (n-1))/2 lambda^(n-2); dots.v, dots.down; ,, n lambda^(n-1), lambda^n)$ \
$A^n = C^(-1) J^n C$ $C, C^(-1)$ - фиксирована 

При каких условиях $(A^n |_(i j))$ - ограничена $J^n$ ограничена если $abs(lambda_i) <= 1$ иначе $lambda^n -> oo$ и $lambda = 1$ - все блоки размера 1, если все собственные числа $<1$ $J^n (lambda) -> 0 => A^n -> 0$ в общем случае компоненты $A^n$ растут как $O^* (abs(lambda_"max")^n)$

= Канон. форма оператора для не аз поля
+ Вещественная жорд. форма
$cal(A): V-> V$ над $RR$, НУО: $A in M_n (RR), cal(A) (X) = A X, X in RR^n$ \
$A in M_n (RR) subset M_n (CC)$, собственные чисал $A: lambda_1, overline(lambda_1), lambda_2, overline(lambda_2), dots, lambda_k, overline(lambda_k), underbrace(lambda_(k+1)", " dots ", " lambda_(k+s), in RR)$ \
$X_A (t) in RR[t] => X_A (t) = (product(t-lambda_i) (t-overline(lambda_i)) underbrace(product_(i=k+1)^(k+s) (t-lambda_i), in RR )$

\
$forall i in 1..k$ найдем $x_i in RR^n, A x_i = lambda_i x_i$
$=> overline( A x_i) = overline(lambda_i x_i)$ \
$=> overline(A) overline(x_i) = overline(lambda_i) overline(x_i) => A overline(x_i) = overline(lambda_i) overline(x_i)$, $overline(x_i)$ - собтсвенный вектор для $overline(lambda_i)$ \
Пусть $A$ - диаг. $lambda_i in RR, (i > k)$ можно найти $A x_i = lambda_i x_i$ \
$x_i in RR^n$ 

$x_1, overline(x_1), dots x_k, overline(x_k), x_(k+1) dots x_(k+s)$ - базис из собственных векторов в $CC^n$, (при этом $x_(k+1) dots x_(k+s) in RR^n$) 

это базис из собственных векторов, а мы хотим переделать это в не совсем базис из собственных векторов, но зато вещественных

Осуществим такую замену базиса: $(x_k, overline(x_k)) -> (x_k + overline(x_k), (x_k - overline(x_k))i )$ - пара из $RR^n$ \

В новом базисе $[cal(A)]$ имеет вид следующий $mat(a_1, b_1; -b_1, a_2;,, a_2,b_2;,, -b_2, a_2;,,,,a_k b_k;,,,,-b_k a_k;,,,,,, dots;,,,,,,,, lambda_(k+1);,,,,,,,,,;,,,,,,,, ,dots;,,,,,,,,,, lambda_(k+s))$ - канон форма над $RR$ (что-то типа $a_i = (lambda_i + overline(lambda_i))/2, b_i = (lambda_i + overline(lambda_i))/(2i)$)

== Пример
$cal(A): RR^2 -> RR^2$ - поворот на $alpha$, сосбтвенные числа $cos alpha plus.minus i sin alpha$ \
$mat(cos alpha + i sin alpha , 0;0, cos alpha - i sin alpha)$ - ж.ф в $CC^2$, $mat(cos alpha, - sin alpha; sin alpha, cos alpha)$ - в $RR^2$

В общем случае: ($cal(A)$ не диаг в $CC^2$) 

$J^RR = $ стер гад

2)  Фробениусова Форма \
$V$ - векторное п. над $k$, $cal(A) in L i n (V, V)$ \
Выберем $v_0 != 0, v_0 in V$ строим последовательность $v_k = cal(A)^k v_0, v_k = cal(A) (v_(k-1))$ \
Получаем $v_0, v_1, dots v_k, dots$, существует такой $s$, такой что $v_0, v_1 dots v_(s-1)$ - ЛНЗ, $v_0, v_1, dots v_s$ - ЛЗ

То есть $v_s = a_0 v_0 + a_1 v_1 + dots + a_(s-1) v_(s-1)$ \


== Утверждение
+ $chevron v_0, v_1, dots chevron.r = V_v_0$ - инв. подпростр.

+ $chevron v_0, v_1, dots chevron.r = chevron v_0, v_1, dots, v_(s-1) chevron.r,$ $v_0, v_1, dots v_(s-1)$ - базис $V_v_0$
+ $[cal(A)]|_(V_v_0) = mat(0,0, dots, 0, a_0;1, 0 ,dots, 0, a_1;0,1, dots, ;dots,dots,dots,dots, dots; 0,0, dots, 1,a_(s-1))$ - Фробениусова клетка $, cal(A) v_0 = v_1, cal(A) v_1 = v_2, cal(A) v_(s-1) = a_0 v_0 + a_1 v_1 + dots + a_(s-1) v_(s-1)$ 

=== Доказательство
+ Очев $cal(A) v_i = v_(i+1)$  
+ $v_s = cal(A) v_(s-1) in chevron v_0, dots v_(s-1), v_(s+1) = cal(A) (v_s) in cal(A) (chevron v_0 dots v_(s-1) chevron.r) subset chevron v_0, dots v_s chevron.r in chevron v_0, dots v_(s-1) chevron.r$ и так далее \ v_2 - стер гад
+ Очев

== Замечание-упр
Пусть $cal(A)$ - диаг $[cal(A)] = mat(lambda_1,0,0,0,0;0,lambda_2;,,lambda_3;,,,dots.down;,,,,lambda_n), lambda_i != lambda_j$ 

Упр: пусть $v_0 = sum_(i=1)^n a_i v_i, v_i$ - с.в. и $a_i != 0 forall i$ - (типичная (базовая) ситуация) 

Тогда $v_0, v_1, dots v_(n-1)$ - ЛНЗ. и матрица $cal(A)$ в полученном базисе Фробениусова клетка

Чему равен хар. многочлен такой матрицы? 

Утв: $cal(X)_t$ $mat(0,0, dots, 0, a_0;1, 0 ,dots, 0, a_1;0,1, dots, ;dots,dots,dots,dots, dots; 0,0, dots, 1,a_(n-1)) = plus.minus (t^n - a_(n-1)t^(n-1) - a_(n-2) t^(n-2) - dots - a_0))$ (вспомните т. Гамильтона-Кэли) $forall v_k: v_(k+n) = a_(n-1) v_(k+n-1) + a_(n-2) v_(k+n-2) dots$

Дальше можно искать собственные числа

== Теорема
$cal(A): V-> V$, тогда в $V $  $exists$ базис относительно которого $[cal(A)] = mat( Phi_1, 0;0, Phi_2, ;,, dots.down;,,, Phi_k)$ $Phi(i)$ - Фр. клетка соотв. многочлену $phi_i$ при этом $product phi_i = cal(X)_(cal(A)) (t)  $  \ $(product_(i=1)^k (cal(X)_(cal(A) |_v_i) (t)))$ 
и $phi_i = p_i^(a_i)$ - степень неприводимого

= Двойственность
(не)хотим геометрию на векторных пространствах

ГЛАВНАЯ ОПЕРАЦИЯ - скалярное произведение: $V times V -> K, (v_1 + v_2) dot v_3 = v_1 v_3 + v_2 v_3, f(v_1 + v_2, v_3) = f(v_1, v_3) + f(v_2, v_3)$ - линейность по первому аргументу, ну и по второму аналогично \
Скалярное произведение - Билинейная форма \

Начнем с линейных - лин. отобр $V-> K$ 

== Определение
$V$ - в.п над $K$. Двойственное пространство $V^*$ - это $L i n (V, K)$

== Пример
$V = RR^3, f in V^* : f : {vec(x,y,z)} => RR$, например $X in (RR^3)^*, X vec(a_1, a_2, a_3) = a_1$ - лин. отобра, аналогично $y, z$ 

коорд. функции
== Определение
$V$ - конечномерное пространство $v_1, dots v_n$ - базис. Двойственный базис : $v_1^*, dots, v_n^* in V^*$ \

$v_i^* (v_j) = cases(1", если" i =j, 0 "иначе")$ 
(знаем лин отобр. однозначно задается значениями на базисе)

Утверждение: это действительно базис $V^*$

=== Доказательство: 
лнз-ть: пусть $sum_(i=1)^n a_i v_i^* = 0, forall k (sum a_i v_i^*) (v_k) = sum a_i v_i^* (v_k) = 0 + 0 + dots + 0 = a_k$

$sum a_i v_i^* = 0 => sum a_i v_i^* (v) = 0 forall v$ в частности $a_k = 0 forall k$

$v_1^*, dots v_n^*$ - порожд: $forall f in V^*: f(v_i) = c_i$ \
Рассмотрим $overline(f) = sum c_i v_i^*$, знаем $sum c_i v_i^* (v_i) = c_i = f(v_i), f in chevron v_1^* dots v_n^* chevron.r$ \
== Замечания

+ Важна конечномерность
${v_k}$ - беск. базис $-> {v_k^*}$ - "двойственный базис" фанфакт: ЛНЗ, но не порожд. 

2. $V$ конечномерно $=> exists$ "естест. изморфизм" $V equiv (V^*)^*$ естест. $V^* tilde.equiv V$ но не естественно

== Глупое замечание
$v_i -> v_i^*$ зависит не толька от $v_i$, но и от всего базиса 

== Какая-то хрень

Расссмотрим $V^(**) := (V^*)^* = L i n (L i n (v, k), k)$ - второе двойственное

Элементы $v$ можно называть векторами, элементы $v^*$ ковекторами, $v^(**)$ коковектора и так далее

== Теорема

Существует естественное инъективное линейное отображение $e v: v -> v^(**)$, если $v$ конечномерно, то это изоморфизм

=== Доказательство
Определим $e v$:
$v in V, e v(v) in V^(**)$
Для $forall f in V^*: e v (v) (f) := f(v)$

Заметим, что:

+ $e v(v) in v^(**)$ $e v (v) (f_1 + k f_2) = e v(v)(f_1) + k e v(v) (f_2)$ $<=> (f_1 + k f_2) (v) = f_1(v) + k f_2 (v)$ определение суммы линейных отображений
+ $e v: v -> v^(**)$ - линейно. $v |-> e v(v)$ \ $e v(v_1 + v_2) = e v(v_1) + e v (v_2) <=> e v(v_1 + v_2) (f) = e v (v_1) (f) + e v(v_2) (f) forall f in V^*, f(v_1 + v_2) = f(v_1) + f(v_2)$ - верно, так как $f in V^*$ линейно
+ $e v$ инъективно: $<=> ker e v  =0$, то есть $v != 0 => e v(v) != 0$ \ $v != 0 => exists$ базис ${v} union {v_i}_(i in I)$ рассмотрим $f: f(a v + sum a_i v_i) = a, f in V^* f(v) = 1 != 0, e v (v) (f) != 0, e v(v) != 0$


$dim V < oo, e v : v -> v^(**)$ - инъ

$dim (v) <= dim (v^(**))$

Но знаем, что $dim V = dim V^* = (dim V^*)^*$
$e v$ инъекция $<=>$ сюръекция (теорема о ядре и образе)

Таким образом можно отождествить вектора и коковектора: $e v(v) ~> v$ при таком отождествлении

$f$ - ковектор, $v$ - вектор $v in V, f in V^*$

$f(v) = v(f)$

Что значит естественный
+ ествественный = кононичный
$v = v^*$ но не каноничный

Базис $e_1 |-> e_1^*, dots e_n |-> e_n^*$ двойственный базис. Это изоморфизм, но не каноничный (зависит от базиса)

$e v: v -> v^(**)$ не зависит от выбора базиса (описывается инвариантом)

== Категории и функторы

категория: 
- объекты ob (c)
- мофризмы
- $forall x, y in o b (c) ->  m o r (x ,y)$ множество
примеры sets - категория множеств, морфизмы - любое отображение

vect(k) - категория векторных пространств над $k$. морфизмы - линейно обратная

== Определение
Функтор: $F: c_1 -> c_2$ - категории $o b (c_1) -> o b (c_2), x |-> F(x)$

$m o r(X, Y) -> m o r(F X, F Y)$ - ковариантный
$m o r(X, Y) -> m o r(F Y, F X)$ - контравариантный

== Пример
$F: s e t s -> v e c t(k)$

${x_1, x_2, dots x_k} -> <x_1, dots x_k > = {a_i x_i | a_i in k}$

$x -> v_x$

$cal(A): X -> Y |-> F(cal(A)) V_X -> V_Y$

$x_i |-> y_i$ задаем линейное отображение на базисе

$g: v e c t(k) -> s e t s$ забывающий $x -> x, cal(A) -> cal(A)$

продолжим соответственно

$V |-> V^*$ до контрав. функторах

$v e c t(V) -> v e c t(K)$

то есть зададим отображение

$L i n(u, v) -> L i n (v^*, u^*), forall u ,v$ ${f |->^(cal(A)^*) f compose cal(A)}$

== Утверждение
+ это соответствие линейно, корректно \ $cal(A)^* in L i n(v^*, u^*)$ - очев
+ $(cal(A) compose cal(B))^* = cal(B)^* compose cal(A)^*$ - условие фунториальности (для контравариантности)

=== Доказательство 2
$W ->^(f compose cal(A) compose cal(B) = cal(B)^* (cal(A) (f)) = (cal(A) compose cal(B))^* (f)) k$

$W -> U -> V -> k$ между $W -> U$ отображение $cal(B)$, между $U -> V$ отображение $cal(A)$, между $U$ и $k$ отображение $f compose cal(A) = cal(A)^* (f)$, $V -> k$ отображение $f$

= Евклидовы ($RR$) и Унитарные пространства ($CC$)

== Определение
Евклидовы пространство $(V, f)$

$V$ - векторные пространства над $RR$, $f : V times V -> RR$ (скалярное произведение), такое что 
+ $f(u_1 + u_2, v) = f(u_1, v) + f(u_2, v)$, $f (k u,v) = k f(u, v)$ и по второму аргументу (биленейность)
+ $f(x,y) = f(y,x)$ - симметричность
+ $v != 0 => f(v, v) > 0$. Положительная определенность $(f(0,0) = 0)$

== Замечание
1 и 2 имеют смысл над $forall$ полем $k$

1) биленейная форма

1,2) симметрическая билинейная форма

== Главный пример
$V = RR^n$, $f (vec(x_1, dots.v, x_n), vec(y_1,dots.v,y_n)) = x_1 y_1 + x_2 y_2 + dots + x_n y_n$

$(v, v) >= 0, forall v =>$ положим $norm(v):= sqrt((v,v))$ / $f(u,v) = (u,v)$ /

$(u,v) -> rho(u,v) = norm(u - v)$ - расстояние

Аксиомы метрического пространства
+ $rho(u,v) > 0, u != v$
+ $rho(u,v) = rho(v,y)$
+ $rho(u,v) + rho(v, w) >= rho(u,v) forall u,v,w$

== Неравенство Коши-Буняковскго-Шварца
$V$ - евклидово пространство, $forall u,v in V$

$(u,v)^2 <= (u,u) (v,v)$

КБШ - неравенство треугольника

$abs( ((u,v))/(norm(u) dot norm(v))) <= 1, (u != 0, v != 0) => exists alpha in [0, pi]: cos alpha = ((u,v))/(norm(u), norm(v))$

по определению $alpha = angle (u,v)$

== Упражнение

$(u,v)^2 = (u,u) dot (v,v) <=> u$ и $v$ лнз

$u,v$ - лнз $<=> angle (u,v) = 0 or pi$

== Определение
$u,v$ ортогональны, если угол равен пи на два, а скалярное произведение равно 0

== Определение
$u_1, dots u_k$ - ортогональная система (О С)

Если $(u_i, u_j) = 0$ при $i != 0$

$u_1, dots u_k$ - ортонормированная система

если к тоу же $norm(u_i) = 1$

Базис ортог. систему - ортгональный базис 

Базис + ортонормированная система - ортонормированный базис (ОНБ)

== Утверждение

$u_1, dots,  u_k$  ортог. система, $u_i != 0$

${u_i/norm(u_i)}$ - ортнорм. система

$(u_i/norm(u_i), u_j/norm(u_j)) = 1/(norm(u_i) norm(u_j)) (u_i, u_j) = 0 (i = j) or ((u_i, u_i))/(norm(u_i) norm(u_i)) = 1 (i = j)$

== Утверждение
$u_1, dots u_k$ - ортогональая система $u_i != 0 forall u_i => u_i dots u_k$ - лнз

=== Доказательство

пусть $sum a_i u_i = 0 => forall j: o (0, u_j) = (sum a_i u_i, u_j) = sum a_i (u_i, u_j) = a_j (u_j, u_j) =>$ все $a_j = 0$

== Утверждение
$e_1, dots e_n$ - ОНБ, $v in V: v = sum a_i e_i, v -> vec(a_1, dots.v, a_n)$

Тогда $a_i = (v, e_i)$

=== Доказательство

$(v, e_i) = (sum a_j e_j, e_i) = sum a_j (e_j, e_i) = a_i dot 1 = a_i$

== пример
$vec(1, 0, dots, 0), vec(0,1,dots,0)$ - ОНБ в стандартном $RR^n$

== Теорема
В любом евклидовом пространстве есть ОНБ (докажем как всегда для конечномерных)

Это следствие более общей теоремы

== Ортоганализация Грамма-Шмидта

Пусть $v_1, v_k in V$ - лнз - евклидово пространство

Тогда существует ортонормированная система $e_1, e_2, dots e_k$, такая что $forall i <= k. chevron e_1, dots e_i chevron.r = chevron v_1 dots v_i chevron.r$

Применим теорему Г-Ш к базису $v_1, v_2, dots v_n$, получим $chevron e_1, dots e_n chevron.r = chevron v_1, dots v_n chevron.r = V$

Доказалаи предыдущую теорему

== Доказательсвто Г-Ш
Индукция по $k$

база $k = 1, v_1$ - лнз, то есть $v_1 != 0, e_1:= v_1/norm(v_1), chevron e_1 chevron.r = chevron v_1 chevron.r$

Переход $k -> k+1$

$v_1 dots v_k, v_(k+1)$ - лнз. применим индукционное предположение для $v_1, v_2 dots v_k$ 

$e_1, dots e_k$ - ОНС $chevron e_1, dots e_i chevron.r = chevron v_1, dots v_i chevron.r$

В частности $chevron e_1, dots e_k chevron.r = chevron v_1, v_2 dots v_k chevron.r$

Заметим, что $chevron v_1, v_2 dots v_k, v_(k+1) chevron.r = chevron e_1, dots e_k, v_(k+1) chevron.r = chevron e_1, dots e_k, v_(k+1) - sum a_i e_i$ ищем $u_(k+1) = v_(k+1) - sum a_i e_i$, такие что $chevron e_1, dots, e_k, u_(k+1) chevron.r$ - ортогональная система

Хотим $(u_(k+1), e_i) = 0 forall i = 1 dots k$

Но $(u_(k+1), e_i) = (v_(k+1) - sum a_j e_j, e_i) = (v_(k+1), e_i) - sum_(j) a_j (e_j, e_i) = (v_(k+1), e_i) - a_i$, то есть $a_i := chevron v_(k+1), e_k chevron.r$

$chevron e_1 dots e_k, u_(k+1) chevron.r$ - ортгональная система

$chevron e_1, dots, e_k, u_(k+1)/norm(u_(k+1)) chevron.r$ - ортонорм. система и выполнены условия линейной оболочки

= Ортогональное дополнение
== Определение
Пусть $V$ - евклидово пространство, $U <= V$ определим $U^(bot) = {v in V | (u, v) = 0 forall u in U}$

== Лемма
$U^(bot) <= V$ (даже если $U ! <= V$)

$v_1, v_2 in U^(bot) (v_1, u) = (v_2, u) = 0 forall u in U => (v_1 + v_2, u) = (v_1, u) + (v_2, u) = 0$ и умножение на скаляр

== Теорема
+ $(U^(bot))^(bot) = U$
+ $dim U + dim U^(bot) = dim V$
+ $V = U xor U^(bot)$

=== Доказательсво
$3=> 2$ очев (свойства прямой суммы)

$2 => 1: dim (U^(bot))^(bot) = dim V - dim U^bot = dim V - (dim V - dim U) = dim U$: $dim (U^bot)^bot = dim U$

С другой стороны $U <= (U^bot)^bot,  "fix" u in U, (u,v) = 0 forall v in U^bot => u in (U^bot)^bot$

$=>$ одно пространство содержится в дрогом пространстве, а размерности совпадают $U = (U^bot)^bot$ $qed$

Докажим пункт $3$

$u_1, u_2, dots u_k$ - базис $U$

$u_1, dots u_k, dots u_n$ - базис $V$

Применим Грама-Шмидта

$u_1 dots u_n -> e_1 dots e_k, e_(k+1) dots e_n$ - ОНБ

При этом $chevron e_1 dots e_k chevron.r = chevron u_1, u_k chevron.r = U$

Теперь ясно, что $V = chevron e_1, dots e_k chevron.r xor chevron e_(k+1) dots e_n chevron.r = U xor chevron e_(k+1) dots e_n chevron.r$ при этом $chevron e_(k+1) dots e_n chevron.r = U^bot$

$v in U^bot, v = sum a_i e_i$

$v in U^bot <=> (v,u) = 0 forall u in U <==>^"бил"  forall i (v, e_i) = 0$

$<=> (v, e_i) = 0, a_k = (sum a_j e_j, e_i) = 0$, то есть $sum a_i e_i in U^bot <=> a_1 = a_2 = dots a_k = 0 <=> v in chevron e_(k+1) dots e_n chevron.r$, то есть $chevron e_(k+1) dots e_n chevron.r = U^bot$

Дополнения
$U_1, U_2 <= V$

$(U_1, U_2)^bot = U_1^bot inter U_2^bot$

$(U_1 inter U_2)^bot = U_1^bot + U_2^bot$

== Проекция на подпространство

$U <= V, v in V$ по предыдущей теореме

$exists ! v_U in U, v_bot in U^bot: v = v_U + v_bot$

$v_U$ называется проекцией $V$ на $U$ $v - v_U in U^bot$

== Теорема
$norm(v_bot) = min_(u in U) (d(v,u))$, $norm(v_bot)$ называется расстоянием от $v$ до $U$

== Теорема Пифагора
+ $v_1 dots v_k$ - ортогнальная система в евклидовом пространстве, тогда $norm(v_1 + dots + v_k)^2 = sum_(i=1)^k norm(v_i)^2$
+ $e_1 dots e_n$ - ортонормированный базис в $V$. $vec(a_1,dots.v,a_n)$ - векторы $v$ в $e_1, dots, e_n => norm(v) = sqrt(sum a_i^2)$ 

=== Доказательство
+ $(v_1 + dots v_, v_1 + dots v_k) = sum_(i,j = 1)^k underbrace((v_i, v_j), 0  "при" i != j) = sum norm(v_i)^2$

+ по $1$ $v = sum a_i e_i, {a_i e_i}$ - ортогональная система. $norm(v)^2 = sum norm(a_i e_i)^2 = sum a_i^2 (e_j, e_i) = sum a_i^2$

== Доказательство леммы
пусть $u in U$

$d(v,u)^2 = (v-u, v-u) = (v-v_U + v_U - u, v-v_U + v_U - u) = (v_bot + (v_U - u), v_bot + (v_U - u)) = norm(v_bot)^2 + norm(v_U - u)^2 >= norm(v_bot)^2 qed$

= Билинейные квадартичные формы

== напоминание
$V$ - в.п над $K$. Билинейная форма на $V$ это $f: V times V -> K$

$f$ называется симм, если $f(u,v) = f(v,u) forall u, v in V$

$f$ кососимметрично если $f(u,u) = 0 forall u in V$

$f$ антисимметричная, если $f(u,v) = -f(v,u), forall u,v in V$

Значем: char $K != 2$ кососимметричность $<=>$ антисимметричность

У нас $"char" K != 2$

Ясно, что билинейная форма задается значениями на бизисных векторах

пусть $v_1 dots v_n$ - базис $V$

Матрица Грама $A_f$ в базисе $v_1 dots v_n$ это $(a_(i j))_(i = 1 dots n, j = 1 dots n), a_(i j) = f(v_i, v_j)$

Пусть $x, y in V, cal(X), cal(Y) in K^n$ - их координаты в $v_1 dots v_n$, тогда $cal(X) = vec(x_1, dots, x_n), cal(Y) = vec(y_1, dots, y_n)$

$f(cal(X), cal(Y)) = f(sum x_i v_i, sum y_j v_j) =^"бил" sum_(i,j=1)^n x_i y_i f(v_i, v_j) = sum_(i,j=1)^n x_i a_(i j) y_j$ доказали такое:
предположение: $f$ - бил. форма на $V, v_1, dots v_n$ - базис

$A_j$ - матрица Грама. $x, y in V, cal(X), cal(Y)$ - координаты, тогда $f(x,y)j = X^T A_f Y$

$v_1 dots v_n$ - базисы

$C$ - матрица перехода

== Лемма

$A in M_n (k)$  $forall X, Y in K^n$

=== Доказательство
(упр)

$X, Y = vec(0,0,1,dots.v, 0), X^T = A Y = X^Y B Y => A = B$

$A_f$ - матрица Грама в базисе $v_1, dots v_n$

$F_f$ - м. Г. в базисе $v_1', dots, v_n'$

Тогда $f(x,y) = X^T A_f Y = (X')^T A'_f Y'$

$(C X')^T A_f Y' = (X')^T A_f' Y'$

$forall X', Y': (X')^T C^T A_f C Y' = (X')^T A'_f Y'$

по лемме $A'_f = C^T A_f C$

итого, формула замены базиса 
$A' = C^T A C$ для форм $, A = C^(-1) A C$ - для линейных

== Заметим, что
+ $f$ - симметрично $<=> A_f = A_f^T$ $(a_(i j) = a_(j i))$
+ $f$ - кососиммтерчно $<=> A_f = -A_f^T (a_(i j) = -a_(j i))$

=== Доказательство
$=>$ по определению симметричности и кососимметричности

$<=$ из билинейности или из формулы $f(X, Y) = X^T A Y, f(Y,X) = Y^T A X$

пусть $A^T = A$

$(X^T A Y)^T = Y^T A^T X^(T T) = Y^T A X$

$(X^T A Y)^T = Y^T A X => X^T A Y = Y^T A X$

$f(x,y) = f(y,x)$

== Определение
$f$ - бил. форма на $V$

$f$ называется невырожденной, если $forall v in V: f(v,y) =0, forall u in V => v = 0$

== Определение
$f$ - билинейная форма

Положим $f_V (u) = f(v,u)$

Тогда $f_V : V -> K$ - линейно, то есть $f_V in V^*, f_V = F_V^l$

Аналогично $f_v^r (u) = f(u,v)$

Таким образом, имеем отображение $cal(A)_f^l: v -> v^*, v |-> f_V^l$

$cal(A)_f^r : V -> V^*, v |-> f_V^r$

из линейности по второму аргументу следует что $cal(A)_f^l, cal(A)_f^r$ - линейные

== Теорема
Следующие утверждения равносильны
+ $f$ - невырождены
+ $f(u,v) = 0 forall u => v = 0$ (невырожденность по второму аргументу)
+ $cal(A)_f^l$ - изоморфизм
+ $cal(A)_f^r$ - изоморфизм
+ $A_f$ - невырожденное

=== Доказательство

$1 <=> 2$: $f$ невырожденное $<=> f_V != 0 forall v != 0 <=> ker A_f^l {0} <=> cal(A)_f^l $ - инъекция $<=> cal(A)_f^l$ - изоморфизм $dim V = dim V^*$

$1 => 3: A_f$ - вырожденная $=>$ пусть $x != 0$ $A_f X = 0 => forall Y Y^T A_f X = 0$, то есть $f(y,x) = 0 forall y$, где $x = sum x_i v_i, X =vec(x_1, dots,x_n)$ - противоречие

Пусть $f(y,x) = 0$ $forall y$, то есть $Y^T A_f X = 0$ $forall Y in K^n$

где $Y, X$ - координаты $Y, X$ $Y^T vec(c_1, dots, c_n) = 0 forall Y^T$ подстановка $Y^T = (0 dots 1 dots 0) => c_i = 0, A_f X = 0 => X = 0$ ($A_f$ невыржденная)


Пусть теперь $K = RR$, НУО $V = RR^n, f(vec(x_1"," dots x_n, y_1"," dots y_n)) = sum a_(i j) x_i y_j$ - билин. форма $a_(i j)$ - матрица Грама

$f$ - симм $<=> a_(i j) = a_(j i)$ как понять, положительную определенность $(f(x, x) > 0, x !=0)$

то есть как понять, верно ли, что $RR^n, f$ - евклидово

Пусть $f$ положительно определено, $(RR^n, f)$ - евклидово, знаем, что тогда в евклидовом пространстве есть ОНБ

Матрица Грама в ОНБ: $A_f = mat(1,0,0;0,1,0;0,0,1) = E$

Заметим, что в другом базисе
$A'_f = C^T A_f C = C^T C, det(C^t C) = det (C^T) det (C) = det(C^2) > 0$

Если $f$ положительно определена

Итого $f$ положительно определена $=> det(A_f) > 0$ необходимое условиеf

== Критерий Сильвестра

$V$ - пространство над $RR$, $f$ - симм билин форма $A$ - матрица Грама в базисе $v_1, dots v_n$

$A_i - i x i$ - уголовая подматрица $A_i = (a_(k l))_(k, l <= i)$ тогда $f$ - положительно определена $<=> det (A_i) > 0$

=== Доказательство

$f$ полож. определена $f |_(chevron v_1 dots v_i chevron.r)$ - пол. определена $det$ этой формы $>0$, матрица $f |_(chevron v_1 dots v_i chevron.r)$ это и есть $A_i$

$<==$

Индукция по размерности база $1$

База $n = 1, A = (a), f(x_1, y_1) = a x_1 y_1, f(x, x) = a x^2 > 0$ если $x >0$, а $x != 0$

$n -> n+1$

$dim V = n + 1, A -> A_1, A_2, A_(n+1), det(A_i) > 0$

Рассмотрим $overline(v) = chevron v_1, dots v_n chevron.r <= V$, тогда матрица Грама - это матрица $A_n$

$A = mat(A_n, *; *, x)$ по индукционному предположению $f|_(chevron v_1 dots v_n chevron.r)$ - пол определена $=> (chevron v_1 dots v_n chevron.r, f|_(chevron v_1, dots v_n chevron.r))$ - евклодово пространство $=>$ есть ОНБ, $e_1 dots e_n$

Хотим сделать замену $v_(n+1)' = v_(n+1) - sum a_i e_i : f(v'_(n+1), e_i) = 0$

$f(v'_(n+1),e_i) = f(v_(n+1), e_i) - sum_j a_j f(e_j, e_i) = f(v_(n+1), e_j) - a_j$, то есть положим $f(v_(n+1), e_i) = a_j$ положительно определенная матрица

Заметим, что $forall v in chevron v_1, dots, v_n chevron.r = chevron e_1 dots e_n chevron.r$

$f(v'_(n+1), v) = f(v'_(n+1), sum b_i e_i) = 0$

$(v_1 dots v_n, v_(n+1)) -> (v_1 dots v_n, v_(n+1) - v in chevron v_1dots v_n chevron.r)$ - базис $V$

В нем матрица Грама Имеет следующий вид $mat(A_n,0;0,y) = A'$ ее определитель отличается от стаорого $det(A') = det(A_(n+1)) dot det(C)^2 > 0$ победа.

$det(A_n) > 0, det(A_n) dot y > 0 => y > 0$

$f$ - положительно определена

$forall V: f(overline(v),overline(v)) = f(sum_(i=1)^n a_i v_i + a_(i+1) v_(i+1), sum_(i=1)^n a_i v_i + a_(i+1) v_(i+1)) = f(v+a v_(i+1), v+a v_(i+1)) = f(v,v) + a (v, v_(i+1)) + a f(v_(i+1), v) + a^2 f(v_(i+1), v_(i+1)) = f(v,v) + a^2 y >= 0, f(overline(v), overline(v)) = 0 => cases(f(v,v) = 0, a^2 y = 0) => cases(v = 0, a=0) => overline(v) = 0$

= Квадратичные формы

пусть $f$ - симм. билинейная форма, $"char" k != 2$

положим $q_f (v) := f(v,v)$

$q_f : v-> k$ квадратичная форма, соответствующая $f$

== Свойство
$q_f (a v) = a^2 q_f (v)$ - однородность степени 2

В координатах $A = (a_(i j))$ - матрица Грама $q_f (v) = f(v,v) = sum a_(i j) x_i x_j => sum a_(i i) x_i ^2 + sum_(i < j) 2 a_(i j) x_i x_j$

== Теорема
Билинейная форма однозначно восстанавливается по соотв. квадратичной

=== Доказательство
$f(x+y, x+y) = f(x,x) + f(y,y) + 2 f(x,y) => f(x,y) = (f(x+y, x+y) - f(x,x) - f(y,y))/2 = (q_f (x+y) - q_f (x) - q_f (y))/2$

== Теорема

Пусть $f$ билинейная форма на пространстве $V$

$q_f$ - соотв. квадратичная форма

$v_1 dots v_n$ базис $X -> vec(x_1, dots, x_n)$ - векторы в $V$

Тогда $exists$ базис $v'_1, dots v'_n$

$q_f ((vec(x'_1, dots, x'_n))) = sum a_i x_i^2$

Другими словами $A_f$ диагональна в $v'_1 dots v'_n$

== Замечание

Замена базиса соотв. замене коорд.

$x'_1 = sum a_(1 i) x_i, x'_n = sum a_(n i) x_i, x_i = sum b_(i j) x'_j$

переформулировка: любой однородных квадартичный многочлен от $n$ переменных $sum a_i x_i^2 + sum a_(i j) x_i x_j$ невырожден. лин. заменой переменных приводится к $sum b_i x_i^2$

=== Доказательство
скип

== Квадратичные формы в $RR$ и $CC$

$CC: f -> sum a_i x_i^2 = sum sqrt(a_i x_i)^2 = sum x'_i$ если $a_i != 0$ $(x'_i_1)^2 + (x'_i_2)^2 + dots (x'_i_k)^2$

$A_f = mat(1,0,0,;0,1,0,;0,0,0)$ - полуединичная матрица

Заметим, что если $k != n$ $A_f vec(0,0,0, dots,1) = vec(0,0,0,dots,0) => f$ вырожденная 

Над $CC$ любоая невырожденая квадратичная форма приводится к виду $q (y_1 dots y_n) = sum_(i=1)^n y_i^2$

Над $RR$ то же, но $ a_i x_i^2 = "sign"(a_i) (sqrt(abs(a_i)) x_i)^2 $

$q(y_1 dots y_n) = y_1^2 + dots + y_k^2 - y_(k+1)^2 - y_(l)^2$, $l <= n$, если $f$ невырожденная, то $n = l$

== Теорема (закон инерции)

числа $k, l$ не зависят от способа диагонализации

=== Доказательство

$n - (k+l) = dim "Rad"(f) = dim {u | f(u,v) = 0 forall v in V} = dim {u | f_U = 0} = dim ker A_f$

== Знаем

над $RR forall$ форма приводима к виду $x_1^2 + dots x_u^2 - x_(k+1)^2 - x_l^2, k + l <=n$

Матрица Грама: Сначала единички, потом минус единицчку по диагонали, $k$ и $l$ однозначно определены (закон инерции)

=== Доказательство
Покажем, что $k$ однозначно определено

Пусть $q$ - квадратичная форма $A_q = mat(E_k;,-E_l;,,0)$ в базисе ${e_i}$, $A'_q = mat(E'_k;,-E'_l;,,0)$ в базисе ${e'_l}$

Пусть не умоляя общности $k != k'$ и $k' > k$

На подпространстве $u = chevron e_(k+1), e_(k+2), dots e_n chevron.r$ имеем $(A|_u)_q$ матрица имеет вид (минус единички на диагонали, потом нолики), то есть $q(x_(k+1) dots x_n) = -x_(k+1)^2 -x_n^2$ - неположительно определено, то есть $q(x) <= 0 forall x in u$

на подпространстве $u' = chevron e'_1 dots e'_k chevron.r, A = E$, то есть $A |_U$ положительно определена

$dim u = n-k, dim u' = k', dim u + dim u' = n-k + k' > 0 => U inter U' != {0}, u in U inter U', u in U => q (u) <=0, u in U' => q(u) > 0$ - противоречие

== Напоминание

$A = A^T$ - матрица симм. билинейной формы (квадратичной)

Все угловые миноыр $A$ положитлеьны $<=>$ форма положительно определена

/$A$ называется положитлеьной матрицей /$A = A^T$ и все угловые миноры $>0$ ($<=> forall$ минор симметрично относитално диагонали))

$f$ - положительно определена, $=> (RR^n, f)$ - евклидово пространство $=>$ там есть ОНБ, то есть $A_f = E$

Знаем, что $A, A'$ - матрицы одной формы $<=>$ $exists$ обратимая $C$, такая что $C^T A C = A'$

У нас $A' = A, A = E -> A = C^T C$

== Теорема
$A$ - положительная матрица $<=> exists$ обратимая $C: A = C^T C$ (Разложение Холецкого)

$A = C^T E C => A$ - матрица Грама для ск. произведения в некотором базисе $=> A$ - положительны

== Лемма
$A in M_n (k), k^n, (vec(x_1,x_2, dots,x_n), vec(y_1, y_2,dots,y_n)):= sum x_i y_i$, $f$ - симметрическая билинейная форма с матрицей $A$ в стандартном базисе. Тогда
+ $f(X, Y) = (A X, Y)$
+ $f(X, Y) = (X, A^T, Y)$

=== Доказательство
Очев

$f(A X, Y) = X^T A Y = (Y^T A^T X)^T$

= Унитазные пространства

Хотим геометрию для $V$ над $CC$

Проблема:

$f(x,y) = sum x_i y_i, x_i, y_i in CC$, плохая формула, так как $f(x,x) = sum x_i^2 in.not RR$, правильная $f(x,x) = sum x_i overline(x_i), f(x,y) = sum x_i overline(y_i)$

== Определение
$V$ над $CC$

$f: V times V -> CC$ называется полуторалинейной формой, если:

$forall v in v, f(-,v): V -> CC$ - линейно

$f(u,-): V -> CC$ - полулинейно ($f(u, v_1 + v_2) = f (u,v_1) + f(u, v_2)$, $f(u, lambda v) = overline(lambda) f(u,v)$) 

== Определение

$1,5$ лин. форма называется эрмитовой, если $forall u, v in V: f(v,u) = overline(f(u,v))$

== Пример
$f(x,y) = sum x_i overline(y_i)$ - эрмитова форма

== Замечание

$f$ - эрмитова, $f(u,u) = overline(f(u,u))$, то есть $f(u,u) in RR$

== Определение
Унитарным пространство называется пара $(V, f), V$ - векторное пространство над $CC$, $f$ - эрмитова положительно определенная форма ($f(u,u) > 0$ при $u != 0$)

Переносим знания с $RR$ и билинейных форма

$f$ - эрмитова, $v_1, dots v_n$ - базис $V$

Матрица Грама $A = (f(v_i,v_j))_(i=1 dots n, j= 1dots n)$

$f(v_i, v_j) = overline(f(v_j, v_i))$, то есть $A$ удовлетворяет уровнению $overline(A^T) = A$ - эрмитова матрица (определение)

$a_(i i) in RR$

Пусть $x,y in V, X, Y$ - векторы в ${v_i}$

$f(x,y) = X^T A overline(Y) = sum a_(i j) x_i overline(y_j)$ (упр), $y = sum y_i v_i$

$X = C X', Y = C Y'$, то $A_"new" = C^T A overline(C)$, Теорема Грама-Шмидта сохраняется дословно, в частности в $forall$ унитарном пространстве есть ОНБ

$V = U xor U^bot$ сохраняются $dim U^bot = n - dim U$

$(,) - $ стандартное произведение в $CC^n$

$f$ - форма с матрицей $A$, тогда $f(X, Y) = (A X, Y) = (X, overline(A)^T Y)$ $(a x dot overline(y)) = x dot overline( overline(a) y)$

Расстояния определяются обычным образом, $d(x,y) = sqrt((x-y, x-y))$

Углы только между прямыми $(in [0, pi/2])$

Операторы в Евклидовых и унитарных пространствах

== Определение
Пусть $V$ - евклидово унитарное пространство, если 

а) $(cal(A) u, v) = (u, cal(A) v), forall u,v in v$

б) ортгональным (над $RR$) / унитарным над $CC$ если $(cal(A) u, cal(A) v) = (u,v)$

1. Самосопряженные операторы

1.1. Матрица

$e_1, dots e_n$ - ОНБ в $V$

$cal(A) $ с/c $<=> (cal(A) (sum a_i e_i), sum b_j e_j) = (sum a_i e_i, cal(A)(sum b_j, e_j))$ $<=>$ линейность $cal(A)$ + 1.5 линейность $(,)$

$(cal(A) e_i, e_j) = (e_i, cal(A) e_j) forall i,j = 1 dots n$

$A$ - матрица $cal(A)$ $(cal(A) e_i, e_j) = (sum a_i e_k, e_j) = a_j sum(e_j, e_j) = a_(j i)$

$(e_i, cal(A) e_j) = (e_i, sum a_(k j) e_k) = overline(a_(i j)) (e_i, e_i) = overline(a_(i j))$

$cal(A)$ эрмитова матрица ($A = A^T$ если $K = RR$)

== Лемма 1
Собственные числа с/с оператора вещественны
=== Доказательство
$cal(A)$ - с/c, $cal(A) x = lambda x, x != 0, (cal(A)x, x) = (x, cal(A) x)$

$(lambda x, x) = (x, lambda x)$

$lambda (x,x) = overline(lambda) (x,x)$ $<=> x != 0, lambda = overline(lambda), lambda in RR$ 

== Следствие 

$cal(A)$ - c/с в еквлидом пространстве $V, cal(X)_(cal(A))(t) in RR[x]$ тогда $cal(X)_(cal(A))(t) = (t-a_1) dot (t-a_n)$ в $RR[t]$

=== Доказательство

$A$ - матрица $cal(A)$ в ОНБ, $cal(X)_(cal(A)) = cal(X)_A$

$A in M_n (RR) subset M_n (CC), A = A^T = overline(A^T) =>$ в $CC^n$ оператор $x |-> A x$ самосопряженный

$=> cal(X)_A (t) = (t-a_1) dots (t-a_n)$ в $CC$ ($CC$ - алг. замкнуто)

по Лемме 1 все $a_i in RR$

== Лемма 2

$V$ - еквлидово/унитарно, $cal(A)$ - самосопр.

$U <= V$ - инв. подпростр.

Тогда $U^bot$ - инв. подпростр. $V = U xor U^bot$

=== Доказательство

Надо $v in U^bot => cal(A)(v) in U^bot, v in U^bot <=> (u,v) = 0, forall u in U, (v,u) = 0 forall u in U$

Тогда $(cal(A) v, u) = (v, cal(A) u)) = 0, forall u in U => cal(A)(v) in U^bot$

== Теорема

Следующие условия равносильны

+ $cal(A)$ - с/с
+ существуеют ОНБ: $[cal(A)] = mat(a_1;,dots;,,a_n), a_i in RR$

Геом. смысл: самосопря.енные операторы - композицие растяжений/сжатий в попарно перпендикулярных направлениях

$2 => 1 overline(mat(a_1;,dots;,,a_n)^T) = mat(overline(a_1);,dots;,,overline(a_n))$

$A = overline(A^T) <=> cal(A)$ с/с

$1 => 2$

индукция по $dim V$

База: $n=1, [cal(A)] = (a), a in RR$ так как это собсвтенное число

Переход $n-> n+1$

$dim V = n+1$

Знаем: корни $cal(X)_cal(A)$ вещ.

$exists a_0 in RR$ - корень $cal(X)_cal(A)$

$exists v_0: cal(A) (v_0) = a_0 v_0$

$chevron v_0 chevron.r$ - инв. подпространство

== Лемма
$chevron v_0 chevron.r^T = V'$ - инв. подпростр

$cal(A) |_V': V' -> V'$ - с/c оператор

$dim V' n => exists$ ОНБ $e_1 dots e_n$ в $V'$

$[cal(A)|_V'] = mat(a_1;,dots;,, a_n)$ ОНБ из собственноых векторов

Знаем $v = chevron v_0 chevron.r xor chevron v_0 chevron.r^bot = chevron v_0 chevron.r xor V' = chevron v_0 chevron.r xor chevron e_1 dots e_n chevron.r$

$v_0, e_1 dots e_n$ - Базис . $V$ - орт.

$e_o = v_0/norm(v_0) => e_0 dots e_n$ - ОНБ и $cal(A) = mat(a_0,;,a_1;)$

== Оценка кв. формы
$a^2 + b^2>=2 a b >= -(a^2 + b^2)$

$2 a b$ кв. форма в $RR^2$ 

$abs(vec(a,b))^2 >= 2 a b >= - abs(vec(a,b))^2$

Обобщение

пусть $q$ - кв. форма в $RR^n$

$q vec(x_1, dots, x_n) = sum a_(i j) x_i x_j$

хотим $? <= q vec(x_1,dots,x_n) <= ?$ если знаем $sum x_i^2$

== Теорема

$lambda_min norm(X)^2 <= q(X) <= lambda_max norm(X)^2$, при чем оценка точная

=== Доказательство

$q(x) = f(x,x) = (A x, x)$

$A = A^T$, $A$ - с/с на $RR^n$

$exists$ ОНБ из собственных векторов для $e_1 dots e_n$ для $A$, $A e_i = lambda_i e_i$

$x = sum a_i e_i$

$(A x, x) = (cal(A) (sum a_i e_i), sum a_i e_i) = (sum lambda_i a_i e_i, sum a_j e_j) = sum lambda_i a_i^2 = q(x)$

$lambda_min sum a_i^2 <= sum lambda_i a_i^2 <= sum lambda_max a_i^2 = lambda_max sum a_i^2$

$sum a_i^2 = (sum a_i e_i, sum a_i e_i) = norm(sum a_i e_i)^2 = norm(x)^2$

Итого получии, что хотели

== Пример

$2 a b = a b + b a + 0a^2 + 0b^2$

$A = mat(0,1;1,0), cal(X)_A (t) = det mat(-t,1;1,-t) = (t-1(t+1))$

$lambda_min = -1, lambda_max = 1, -(a^2 + b^2) <= 2 a b <= a^2 + b^2$

Точная оценка: возьмем $x - e_lambda_min, x = e_lambda_max$

== Следствия

$q $ - пол. определена $lambda_min > 0$, то есть dct c.ч > 0

$q$ - пол. определена, $exists epsilon > 0: q(x) > epsilon norm(x)^2$

== Теорема
Слудующие условия равносильны
$A$ - ортог. $cal(A) in L i n (V)$

+ $cal(A)$ - ортогональный
+ $norm(cal(A) (u)) = norm(u) forall u in V$
+ В ОНБ $(A = [cal(A)])$ $A^T A = E = A A^T$
3'. Столбцы $A$ - ОНБ в $RR^n$

3". Строчки $A$ - онб в $RR^n$

4. $forall$ ОНБ $e_1 dots e_n: cal(A) (e_1) dots cal(A) (e_n)$ - ОНБ
5. $exists$ ОНБ $e_1 dots e_n: cal(A) (e_1) dots cal(A) (e_n)$ - ОНБ

=== Доказательство

2. $<=> (cal(A)(u), cal(A)(u)) = (u,u) forall u$
1. $(cal(A) (u), cal(A) (v)) = (u,v)$

$1=>2$ очев

$2=> 1$ ...

$1,2 => 4,5$

$(cal(A) e_i, cal(A) e_j) = (e_i, e_j) = 0 (i != j) or 1 (i = j) => $ ОНБ $->$ ОНБ

$5 => 2: e_1 dots e_n -> cal(A) e_1 dots cal(A) e_n$ - ОНБ

$sum a_i e_i -> sum a_i cal(A) (e_i)$

$norm(sum a_i e_i) = sum a_i^2 = norm(sum a_i cal(A) (e_i))$ $e_i$ - ОНБ. $cal(A) (e_i)$ - ОНБ

$norm(X) = norm(cal(A) X)$

3. $f(x,y) = (A X, Y) = (X, A^T Y)$, $f$ - форма с матрицей $A$

$(cal(A) x, cal(A) y) = (x,y), forall x,y in V$

В ОНБ $(A X, A Y) = (X, Y)$

$(A X, A Y) = (X, A^T A Y)$

Итого:
$cal(A)$ - орт. $<=> forall X, Y in RR^n, (X,Y) = (X, A^T A Y) <=> forall x (X, Y - A^T A Y) = 0$, то есть $forall Y: Y - A^T A Y = 0 => A^T A Y = Y => A^T A = E <=> A A^T = E$

$A A^T = E$, то есть $r_i r_i^T = cases(1 i =j, 0 i != j), {r_i}$ - ОНБ

Аналогично со столбцами

== Замечание

$V$ унитарное, $cal(A)$ - унитарное 

примерно то же, но $A overline(A^T) = E, overline(A^T) = A^(-1)$

упражнение: что c $1<=>2$

== отступление
сопряженное отображение

$u, v$ (евкл, унитарные), $cal(A) in L i n (u,v)$

$cal(B)$ называется сопряженным к $cal(A) (cal(B) in L i n (V,U))$, если $(cal(A) U, V) = (U, cal(B) V), forall u in U, forall v in V$

частны случай $V = U, cal(A), cal(A)^* in L i n (U,U)$ обозначение $cal(B)=cal(A)^*$

== Теорема
$cal(A)^* exists !$

=== Доказательство

1. случай
Пусть ${e_i}, {f_i}$ - два ортонорм базиса в $U$ и $V$

$[cal(A)]_({e_i}, {f_i}) = A [cal(B)]_({e_i}, {f_i}) = cal(B)$

Тогда условие $(cal(A) u, v) = (u, cal(B) v) forall u, v$

превращается в $overline(a_(i j)) = overline(b_(j i))$

$A = (a_(i j)), B = (b_(i j))$

(аналогично проверке) условие $A = A^*$, то есть $B = A^* <=> B = overline(A^T)$ (в ОНБ базисах)

2. случай

$cal(A)^*$ строится так $v -> u, u -> tilde.equiv u^*, or v tilde.equiv v%*, v^* -> u^*$

$A^*: v^* -> u^*, f |-> f compose cal(A) in u^*$

$v tilde.equiv v^*$ - изоморфизм. $v |-> f_v, f_v (u) = (u,v)$

== Вернемся к ортог/унитарным операторым

Одно из определение $cal(A) -$ ортог/унит $<=>$ столбцы $A$ - ОНБ в $RR^n (CC^n), A = [cal(A)]$ в ОНБ, то есть $A$ - матрица перехода между двумя ОНБ

== Теорема о самосопр. операторах

$cal(A)$ - с/с $<=> exists$ ОНБ из собственных векторов и эти собственные числа вещественны. 

== Доказательство
Пусть $A = [cal(A)]$ в некотором ОНБ, тогда теорема говорит, что $exists$ матрица перехода $C$, такая что $C^(-1) A C = $ (матричка с $u_i$ на диагональке и ноликами в остальных потаенных местах)

$a_i in RR$, знаем: $C$ - орт/унитарные $C^(-1) = C^*$

ИтогоШ: (матр. переформулировка теоремы о с/с операторах)

Пусть $A in M_n (RR) \/ M_n (CC) и A = A^T \/ A = overline(A^T)$

Тогда $exists C: C^(*) = C^(-1)$ и $C^* A C = $ (матричка с ашками на диагональке и ноликами в других местах)

$V$ - евкл. $A in M_n (RR), A = A^T$

$exists: C^T A C = mat(a_1,0,0;,dots.down ;0,0,a_n)$

то есть доказали: Теорема $q$ на $V$ кв. форма $=> exists$ ортог. замена координат, то есть $q(x'_1, dots, x'_n) = sum a_i (x'_i)^2, q(x_1 dots x_n) = sum a_(i j) x_i x_j$

== каноническая форма унитарного оператора
== Теорема 
След. условия равносильны, $V$ - унит. пространство $cal(A) in L i n (v,v)$

+ $cal(A)$ - унитарный
+ $exists$ онб $[cal(A)] = mat(z_1,0,0;,dots.down ;0,0,z_n)$ и $abs(z_i) = 1 forall i (z_i in CC)$
=== Доказательство

$2 => 1$

$cal(A)$ - унитарный $<=> A^(-1) = overline(A^T), A = [cal(A)]$ в ОНБ

$overline(mat(z_1,0,0;,dots.down ;0,0,z_n)^T) = mat(overline(z_1),0,0;,dots.down ;0,0,overline(z_n)) = mat(z_1,0,0;,dots.down ;0,0,z_n)^(-1)$


Знаем, что c/c оператор: $cal(A)^* = cal(A)$, ортог/унит оператор $cal(A)^* = cal(A)^(-1)$

Самосопр. операторы - векторные пространства, только над $RR$

$(cal(A) + cal(B))^* = cal(A)^* + cal(B)^* = cal(A) + cal(B)$

$(k cal(A))^* = overline(k) cal(A)^* = k cal(A)^* = k cal(A), k in RR$

Ортог. операоторы - группа по умножению

Пусть $A, B$ ортог, $A^* = A^(-1), B^* = B^(-1), (A B)^* = B^* A^* = B^(-1) A^(-1) = (A B)^(-1)$ 

$1 => 2$

пусть $cal(A)$ - унитарный, тогда все собственные числа по модулю равны 1. $cal(A) x = lambda x, x != 0, cal(A)^* = A^(-1), (A x, y) = (x, cal(A)^(-1) y) forall x,y, y = x: (cal(A) x, x) = (x, cal(A)^(-1) x)$

$(lambda x, x) = (x, 1/lambda x)$

$lambda(x, x) = overline(1/lambda) (x, x)$

$lambda = overline(1/lambda)$, то есть $overline(lambda) = 1 <=> abs(lambda) = 1$

$cal(A)$ - унитарный: $V$ - инв. подпространство отн. $A$ $(U <= V)$

Тогда $U^bot$ - инвариантно

=== Доказательство
$cal(A)$ - унитарно $=> cal(A)$ обратим

$cal(A)$ - обр. $U$ - подпространсто $cal(A) (u) <= u => cal(A) (u) = u$, то есть $U$ - нив. пространство $A^(-1), cal(A)^(-1) (u)$

теперь пусть $v in U^bot$ хотим $cal(A) (v) in U^bot$

$forall u in U, (cal(A) v, u) = (v, cal(A)^*, u) = (v, cal(A)^(-1) u) = 0$, то есть $cal(A) (v) bot U, cal(A) (v) in U^bot$

=== Доказательство

$1 => 2$  из пунктов 1 и 2 так же, как в теореме о самосопряженном операторе

Структура ортогональных операторов
$O_n$ - группа орт. операторв в $RR^n$, или $O_n= {A in M_n (RR) | A^T = A^(-1)}$

$O (V)$ - орт. операторы на пространстве $V, dim V = n, O(V) tilde.equiv O_n (V)$

$n = 1. O_1 = {1,-1}$

$n = 1: O_2 {mat(cos alpha, - sin alpha; sin alpha, cos alpha) union mat(cos alpha, sin alpha; sin alpha, -cos alpha)}$ (первый это поворот на альфа, второй матрица симметрии относительно прямой)

у первой матрице нет собственных чисел, они равны $cos alpha plus.minus i sin alpha$

$n = 2k + 1$
$X_A (t)$ имеет степень $2k+1$, а знаечит имеет корень $lambda = plus.minus 1, abs(lambda) = 1$ в нечетномерном пространстве ортог. преобразование имеет неподвижную ось

== Теорема о канонической форме ортогонального оператора

$V$ - евклидово пространство, $cal(A) in L i n (v, v)$ - орт.

Тогда $exists$ базис $V$, такой что $[cal(A)] = mat([B_1], 0,0;,dots.down,;0,0,[plus.minus 1]) , B_i = mat(cos (alpha_i), -sin alpha_i; sin alpha_i, cos alpha_i)$ - матрица поворота

Геом. формулировка $forall$ ортог. оператор - композиция двум. поворотов $cal(B)$ отрогональн. плокскостям, и симметрий отностиельно гиперплоскости

=== Доказательство
(skip-trick)

считаем, что $V = RR^n$, переходим в $CC^n$ - унитарное

там есть ОНБ из собственных столбцов (но они не вещественные #emoji.face.sad)

Преобразуем $v : cal(A) (v) = (cos alpha + i sin alpha) v, sin alpha != 0 => A(overline(v)) = (cos alpha - i sin alpha) overline(v)$ делаем замену $v, overline(v) -> ((v+overline(v))/sqrt(2), (v-overline(v))/sqrt(2) )$ - базис одного блока

= Полярное разложение
Мысль: породить все операторы ортогональными и самосопряженными

Положительные операторы:
== Определение
$cal(A) in L i n (v,v)$ называется положтельным, если $cal(A) = cal(A)^*$ и $(cal(A) x, x) >0 forall x != 0$

$(cal(A) x, x) >= 0$ - неотр

Геом смысл:

$forall$ вектор отклоняется меньше, чем на $pi/2$

$cal(A)$ положительный $=> cal(A)$ невырожденный

== Утверждение
Пусть $cal(A) = cal(A)^*$

тогда $cal(A) > 0 (cal(A >= 0))$ если все собственные числа $cal(A) > 0$

$cal(A) > 0, cal(A x) = lambda x, (cal(A) x, x) = lambda(x, x) > 0 => lambda > 0$

Пусть все $lambda_i > 0, x = sum x_i e_i, cal(A) a_i = lambda_i e_i, (A x, x) = (sum lambda_i a_i e_i, sum a_i e_i) = sum lambda_i a_i^2 > 0$

== Теорема
Пусть $cal(A) > 0$, тогда $exists ! cal(B) >0 : cal(A) = cal(B)^2, cal(B) = sqrt(cal(A))$

=== Доказательство
существование:
$cal(A) = cal(A)^*$, значит существует ОНБ $[cal(A)]$ (матрица диагональная, извлечь корень это просто корень из ашек. рассмотри $[cal(B)]_{e_i} = mat(sqrt(a_i),0,0;0,dots.down,0; 0,0,sqrt(a_n)) = cal(B)$

единственность:

Пусть $a$ - с.ч $cal(A)$, знаем, что $V = xor.big V_a^((A))$

$B^2 = A, b$ - с.ч $B$

$V = xor.big V_b^((B))$

$B x = b x, B^2 x = b^2 x, A x = b^2 x$, то есть $V_b^((B)) <= V_(b^2)^((A))$

$dim V_(sqrt(a))^((B)) <= dim V_a^((A))$, но $sum dim V_b^((B)) = dim V, sum dim V_a^((A)) = dim V => dim V_sqrt(a)^((B)) = dim V_a^((A))$

Значит, что $forall a$ - с.ч $A$

$B |_V_a = sqrt(a) dot i d => B$ - опр. однозначно

== Теорема (полярное разложение)

Пусть $V$ - евклидово пространство, $cal(A) in L i n (v,v)$ - невырожденный

Тогда
+ $exists! s = s^*, s > 0, u = (u^-1)^*$ ортог, такое что $cal(A) = s compose u$

+ $exists! s_1 = s_1^*, s_1 > 0, u_1$ - ортог, $cal(A) = u_1 compose s_1$

=== Доказательство

Единственность

$cal(A) = s u$

$cal(A) cal(A)^* = s u (s u)^* = s u u^* s^* = s s^* = s^2 > 0$ (очев)

$A A^* = s^2, s = sqrt(cal(A) cal(A)^*)$ восстанавливается однозначно по предыдущей теореме

$u = s^(-1) cal(A)$ тоже восстаналвивается однозначно, $s$ невырожденный, так как он больше 0

Существование

Докажем, что $cal(A) cal(A)^* > 0$

$(cal(A) cal(A^()))^* = cal(A)^(**) cal(A)^* = cal(A) cal(A)^*$

$(cal(A) cal(A)^* x, x) = (cal(A)^* x, cal(A)^* x) > 0$

в общем случае $cal(A) cal(A)^* >= 0$

$exists! s > 0$, такое что $s^2 = cal(A) cal(A)^*$, положим $u = s^(-1) cal(A), s u = s s^(-1) cal(A) = cal(A)$

$u$ - ортог: $u u^*= (s^(-1) cal(A)) (s^(-1) cal(A))^* = s^(-1) cal(A) cal(A)^* (s^(-1))^* = s^(-1) s^2 (s^(-1))^* = s (s^(-1))^* = s s^(-1) = i d$

Второй случай, когда хотим $cal(A) = u_1 s_1$ аналогично только $cal(A) cal(A)^* ~> cal(A)^* cal(A)$

== Упражнение

$cal(A) = u_1 s_1, cal(A) = s u => u = u_1, s_1 = u^(-1) s u$ пости uwu, но нет

== Оговорка

Если отказываться от невырожденности $cal(A)$, то разложение существует, но неединственное, например $cal(A) = 0 = o dot u$, $u$ может быть любым

$forall A in M_n (RR), exists s, u in M_n (RR), A = s dot u, s = s^T, u dot u^T = E$

= Сингулярное разложение

$U, V$ - евкл. пространства, $cal(A) in L i n (u,v)$

$A = [cal(A)]_({e_i}, {f_i}), {e_i}$ - базис $U$, ${f_i}$ - базис $V$

== Теорема
$exists$ ОНБ ${e_i} in U, {f_i} in V$, так что $cal(A) e_i = lambda_i f_i forall i = 1 dots n, n = dim U$

считаем, что $lambda_i > 0$ при $i = 1 dots k, lambda_i = 0$ при $i = k+1 dots n$

=== Доказательство
$u ->^cal(A) v ->^(cal(A)^*) u$

$cal(A)^(*) cal(A) in L i n (u,u), cal(A)^*, cal(A) > 0$ (аналогично)

то есть существует ОНБ $e_i$

$cal(A) e_i = mu_i e_i, mu_i > 0, i = 1 dots k, mu_i = 0, i = k+1 dots n$

$overline(f_i) = cal(A) (e_i), i = 1 dots k, (overline(f_i), overline(f_j)) = (cal(A) e_i, cal(A) e_j) = (e_j, cal(A)^(*) cal(A) e_j) = (e_i, mu_j e_j) = 0, i != j or mu_j, i = j, abs(overline(f_i))^2 = mu_i$

$f_i := (overline(f_i))/sqrt(mu_i)$ - ОНС, дополним $f_1 dots f_k$ до ОНБ (Грам-Шмидт)

теперь $cal(A) (e_i) = overline(f_i) = sqrt(mu_i) f_i, lambda_i = sqrt(mu_i)$ - синг. числа. 

Теорема доказан

== Оговорка

для $A = A^T > 0$ сингулярные числа = собственные


== Матричная переформулировка

Пусть $A im M_(n ,m) (RR), exists cal(A): RR^m -> RR^n, cal(A) x = A X$

$A$ - Матрица $cal(A)$ в ОНБ

по пред. теореме $[cal(A)] = mat(lambda_1,0,0;0,dots.down,0;0,0,lambda_n)$ в других ОНБ

все матрицы перехода  - ортог $=> A = C overline(A) D, overline(A), C, D$ - квадратные
