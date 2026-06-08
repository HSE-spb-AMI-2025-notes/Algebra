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

= Теория групп

+ Абелевы группы (коммутативность) (числа (элементы полей, колец), вектора)
+ Не Абелевы группы (перестановки, матрицы (относитально умножения) $<->$ операторы, обычно операции = композиция)

Абелевы - сильно проще
+ алгоритмически
пусть $a = chevron a, b chevron.r$, элементы $G$ произведения $a,b,a^(-1), b^(-1)$


Рассмотри $product_n$ - провизведения длины $<= n$

+ $G$ - абелева
$g in product_n, g = a^k, b^l, abs(k), abs(l) <= n$

$abs(product_n) <= (2n+1)^2$

+ $G$ - не абелева
$a = underbrace(a b a dots b dots a, n) => abs(product_n) >= 2^n$
== пример 2
$G = chevron a,b chevron.r, a^n = e, b^m = e$

$G$ - абелева $abs(G) <= n dot m, G = {a^k b^l | k <= n, l <= m}$


$G$ - неабелева $abs(G) = oo$

пример $n=m=2, a^2=b^2=e$

$G_0$ -  Перестановки натурального ряда ${f: NN -> NN | f - "биекция"}$

$G <= G_0, G = chevron a, b chevron.r, a = (1 2)(34)(56)dots(2k->2k-1)$
$b=(23)(45)(67) (2k -> 2k+1)$

$a^2 = b^2 = id$

$b a = 1->3 -> 5 -> 7$ $dots->6->4->2 -> 14->2 -> 214->2 -> 214->2 -> 21$

$(b a)^k != id, "ord"(b a) = oo, abs(chevron a"," b chevron.r) = oo$

== Структурная теория

$V$ - конечномерное векторная пространство над $k$

$V equiv k^n$

для групп (произвольных) - ООООЧЕНЬ сложная  (бесконечный зоопарк, в котором можно вылавливать какие-то классификации, какие-то кусочки, что-то там, какой-то сложный вайб, кабзда короче)

Для Абелевых групп: линейная алгебра + (конечно порожденных)

== Определение
$G$ называется конечно-порожденной, если $exists g_1, dots, g_n in G : G = chevron g_1, dots g_n chevron.r$

$G$ - абелева $<=> G = {g_1^(a_1), g_2^(a_2), dots g_k^(a_k) | a_1,dots a_k in ZZ}$

Будем записывать аддитивно:
$a dot b =: a + b, e-> 0, a^(-1) -> -a$

== Как устроены конечнопорожденные Абелевы группы?

 частный случай 1:

 $G$ - конечно-порожденная абелева

 $forall g != e: "ord"(g) = p$
 (упрежнение $p$ - простое)

 То есть $forall g in G: underbrace(g + g + dots + g, p)= 0$

 $a in Z: a dot g = underbrace(g + dots + g, a)$ ;

 Можно опрделеить умножжение $g |-> overline(a) g, overline(a) in ZZ\/ p ZZ$

 $G$ - абелева группа + умножение на элементы $ZZ \/ p ZZ$ - поле

 $G$ - векторное пространство над $ZZ\/ p ZZ$ - конечномерное, т. как $G$ - конечномерное

 $G tilde.equiv (ZZ\/ p ZZ)^n = ZZ\/ZZ times ZZ\/p ZZ times dots times ZZ \/ p ZZ$

 $abs(G) = p^n$

 Пример 2

 $G$ - конечно порожденная Абелева

 $forall g != 0: "ord" g = oo$ (группа без кручения, то есть не крутая)

 $G = chevron g_1, dots g_n chevron.r$

 Пусть $n = 2$

 $G = chevron a, b chevron.r, G = {k a + l b | k,l in ZZ}$

 Случай 1:

пусть $k a + l b != k' a + l' b, G <-> vec(k,l) in ZZ^2$ (биекция)

Гомоморизм $k a + l b + k' a + l' b = (k+k') a + (l + l') b$

$=> G tilde.equiv ZZ^2$ как группа.$G$ - свободная (так говорят, я верю) - есть безис. ${a,b}$ - базис $G$

Случа 2:

$k a + l b = k' a + l' b$

$<=> exists m,n in ZZ: m a + n b = 0$

выберем $m,n: m in NN, m -$ min среди таких

случай 2.1:

$(m,n) = d > 1$

$m = d m', n = d n',  d(m'a + n' b) = 0 => m'a + n' b = 0, m' < m$ противоречие с выбором $m$

случай 2ю2

$(m,n) = 1 => k,l in ZZ, m k - n l = 1$

Докажем, что тогда $a,b in chevron m a + n b, l a + k b chevron.r$

Например $x(m a + n b) + y (l a + k b) = a$ хотим $x,y in ZZ$

$cases(x m + y l = 1, x k + y k = 0) => cases(x = (dots)/(m k - n l = 1), y = (dots)/(m k - n l = 1)) => x, y in ZZ$

Итого $chevron m a + n b, l a + k b chevron.r = chevron a, b chevron.r$

то есть у нас получилось, что $chevron a, b chevron.r = chevron l a + k b chevron.r = chevron c chevron.r$


$G = chevron c chevron.r$ - циклическая группа

$"ord" c = oo$

$G = {c^k | c in ZZ}, <-> {k | k in ZZ}, G tilde.equiv ZZ$

Итого

$G tilde.equiv ZZ^2 or G tilde.equiv ZZ^1$

== Замечание

$2a - 3 b = 0, 2a = 3b$

$a in.not chevron b chevron.r, b in.not chevron a, chevron.r, chevron a chevron.r != G, chevron b chevron.r != G$

$chevron a,b chevron.r = G$

$a,b$ - min порождающая система (по включению)

но не базис

== Теорема

$G$ - конечно порожденная абелева без кручения

$=> exists n in NN: G tilde.equiv ZZ^n$

В общем случае:

$G$ - конечно пор. абелева группа, тогда $G$ изоморфан произведению циклических, то есть $G tilde.equiv ZZ times ZZ times dots times Z times ZZ \/ m_1 ZZ times Z\/ m_2 ZZ dots times ZZ\/ m_n ZZ$

Частный случай $G$ - конечная абелева группа ($=>$ конечно порожденная) $=>$ это произведение групп вычетов по разным модулям



= Важнейшие неабалевы группа (дофига важный. %\$@ бумажный)

+ $S_n$ - группа перестановок

+ $G L (n, k)$ - обр. матрицы $n times n$ над полем $k$

$S_n$ - можно ре. как подгруппу в $G L (n)$

$pi in S_n, $ оператор (обрат) $e_1 -> e_(pi(1)) e_2 -> e_(pi(2)) ~> A_pi$ - опер. $-> A_pi in G L (n, k)$

Ясно: 

$A_(pi_1 compose pi_2) = A_pi_1 dot A_pi_2$

инъ. гомоморфизм
$S_n ->^i G L (n,k)$

$S_n tilde.equiv i (S_n)$ - подгруппа $G L (n,k)$

== Теорем Кэли

$G$ - конечная группа

$=> exists n: G$ изоморфно некоторой подгруппе $S_n$
== Доказательство
$G = {g_1, dots g_n}: g := abs(G)$


$g in GG, cases(g g_1 = g_(pi(1)), dots, g g_n = g_(pi(n)))$

$g a = g b => a = b, a g = b g => a = b$

 поэтому $g_(pi(i)) != g_(pi(j))$ при $i != j$

тое сть $pi$ - перестановка $pi = pi_g$

построили отображение

$I: G -> S_n (g |-> pi_g)$

+ I инъект. из свойства сокр
+ I - гомоморфизм $pi_(g_1 g_2) = pi_g_1 compose pi_g_2$

$G tilde.equiv I(G)$

$G -> I(G)$ биекция, гомоморфзим

= Подгруппы и факторгруппы

$H <= G$ - подгруппа (замкнута относительно операций)

$ZZ -> ZZ\/ n ZZ$

Задача описать $G$ прмерно эквивалентно задаче описать $H$  и описать $G$ по модулю $H$

== Определение

пусть $H <= G, g in G$

$g H = {g dot h | h in H}$ - правый смежный класс $g$ по $H$

$H g$ - левый смежный класс

(если $G$ абелева, то $g H = H g$)

В частности $e H = H = H e$

== Лемма
Отношения на $G$

$u tilde_L v <=> u v^(-1) in H$

$u tilde_R v <=> v^(-1) u in H$

Тогда это отношения эквивалентности, их классы эквивалентности - это левые/правые смежные классы

=== Доказательство

Рефлексивность: $ u u^(-1) = e in H$

Симметричность: $u v^(-1) in H => v u^(-1) (u v^(-1))^(-1) in H$

Транзитивность $u tilde v, v tilde w$

$u v^(-1) in H, v w^(-1) in H, (u v^(-1)) (v w^(-1)) = u w^(-1) in H => u tilde w$

Класс эквивалетности: $v$ - fix, класс $overline(v_L)$

$u tilde v$ если $u v^(-1) in H$ $u v^(-1) = h in H, u = h v, h in H$

$u in H v$

== Знаем: классы эквивалентны дизъюнкты

$G = union.big_(g in G) H g = union.big_(h in H) g H$ - диз.

== Пример

$G = ZZ, H = chevron n, chevron.r$

$ZZ = (n ZZ) union (1+ n ZZ) union (2 + n ZZ) dots$

 Количество смежных классов - индекс $H$

$abs(G : H)$ - левый или правый? все равно

== Теорема Лагранжа
$abs(G) < oo, H <= G, abs(G) = abs(G : H) dot abs(H)$ в частности $abs(H) | abs(G)$

=== Доказательство
$forall h in G: abs(g H) = abs(H)$

$G$ - объединение $abs(G : H)$ классов мощности $abs(H)$


== Следствие
$forall g in G: abs(G) dots.v "ord"(g)$

=== Доказательство

$H:= chevron g chevron.r$

знаем $abs(H) = "ord"(g)$
$=>$ применяем теорему Лагранжа

== упраженине
$G$ - бексноечно, но все равно $abs(G : H)_l = abs(G : H)_r$


$G\/H$ - множество правых смежных классов

$H \/ G$ - левых

Хотим группу на классах

$overline(g_1) dot overline(g_2) := overline(g_1 g_2)$

$g_1 H dot g_2 H:= g_1 g_2 H$

Может быть:

$overline(g_1) = overline(g'_1), overline(g_2) = overline(g'_2)$

$overline(g_1 g_2) != overline(g'_1 g'_2)$

== Определение
$G$ - группа $H <= G$

$H$ называется нормальной группой ($H lt.tri.eq G$) Если выполено одно из $<=>$ утверждений:

+ $g_1 tilde_L g'_1, g_2 tilde_L g'_2 => g_1 g_2 tilde_l g'_1 g'_2$
1' то же для правых

2. $g H = H g forall h$ левые и правые смеждные классы совпадают
3. $forall h in H forall g in H: g^(-1) h g in H, H$ - замкнута отосительно сопряжения
3'. $g^(-1) H g = H$

=== Доказательство

$2 <=> 3:$

$2 => 3: g in G, h in H, g^(-1) h in g^(-1) H tilde.equiv H g^(-1)$, то есть $exists h' g^(-1) h = h' g^(-1)$

$=> g^(-1) h g = h' g^(-1) g = h' in H$

$3 => 2: h g in H g$ знаем $g^(-1) h g in H, g^(-1) h g in h' => h g = g h' in g H$ 

Итого $H g subset g H$ аналогично $g H subset H g$ $=> g H = H g$


$2 => 1:$

$overline(g_1) = overline(g'_1)$

$g_1 in overline(g'_1), g_1 = h g'_1$

$g_1 (g'_1)^(-1) in H, g_2 (g'_2)^(-1) in H$

Хотим доказать, то $H in.rev (g_1 g_2) (g'_1 g'_2)^(-1) = g_1 g_2 (g'_2)^(-1) (g'_1)^(-1) = g_1 h (g'_1)^(-1) ==^(g_1 H = H g_1) = h' g_1 (g'_1)^(-1) in H$

$H lt.tri.eq G =>$ умножение $overline(g_1) dot overline(g_2) = overline(g_1 g_2)$ задает структуру группы на $G\/ H$ (очев)

Полученная группа называется факторгруппой ($G$ - конечна $=> abs(G\/H) = abs(G)/abs(H)$)

по $G\/ H$ и $H$ восстановиться вообще говоря неоднозначно

== Пример
$G = S_3$

$H_1 = chevron (1 2) chevron.r$

$H_2 = chevron (123) chevron.r$

$H_1 lt.tri.eq.not G$, $(13)(12)(13)^(-1) = (13)(12)(13) = (23) in.not H_1$

$abs(G\/ H_2) = 6/3 = 2, H_2 = {id, (123), (132)}$

$H_2 lt.tri.eq G: G = i d dot H union (1 2) dot H$

$G \/ H = {overline(i d), overline((12))}$ на самом деле $H_2 = A_3$ - четные перестановки $G\/ H_2 = ZZ\/ 2 ZZ$

= Гомоморфизмы и теоремы о гомоморфизмах

== Определение
$Im f = {f(g) | g in G_1}, ker f = {g in G_1 | f(g) = e_G_2}$

== Теорема
+ $ Im f, ker j$ - подгруппы (в $G_1, G_2$)
+ $ker f lt.tri.eq G_1$
+ $g_1 \/ ker f tilde.equiv Im f$

=== Доказательство
+ так же, как в линале
+ $g in G_1, h in ker f, f(g^(-1) h g) = f(g)^(-1) f(h) f(g) = f(g)^(-1) e f(g) = e => g^(-1) h g in ker f, ker f lt.tri.eq G_1$

+ смысл: каждый смежный класс $a dot ker f$ это полный прообраз одного элемента в $G_2$ ($b = f(a)$) $f(a h) = f(a) forall h in ker f$

строим изоморфизм $overline(f): G_1 \/ ker f -> I m f$

типичный элемент множества $G_1\/ker f g (ker f) |-> f(g)$

$overline(g): overline(f)(overline(g)):= f (g)$

+ $overline(f)$ корректно задано, то есть если $g dot ker f = g' dot ker f => f(g) = f(g')$ очев, так как $g' = g dot h, f(g') = f(g) dot f(h) = f(g)$ \  $overline(f) (overline(g)) = f(g) in I m f$ по определению
+ $overline(f)$ гомоморфизм, так как $overline(f) (overline(g_1) dot overline(g_2)) = overline(f)(overline(g_1 g_2)) = f (g_1 g_2) = f(g_1) f(g_2) = overline(f)(overline(g_1)) dot overline(f) (overline(g_2))$

+ $overline(f)$ сюръективно по определению ($x in I m f <=> x = f(g) = overline(f) (overline(g))$)
+ $overline(f)$ инъективно: \ $overline(f) (overline(g_1)) = overline(f)(overline(g_2)) <==> f(g_1) = f(g_2) <=> f(g_1 g_2^(-1)) = e <=> g_1 g_2^(-1) in ker f <=> overline(g_1) = overline(g_2)$

== Самый хороший пример

Пусть $G_1 = RR^*, G_2 = RR^*_+, f: G_1 -> G_2, f(x) = abs(x), I m f = G_2, ker f = {plus.minus 1}$ Вывод: $RR^*\/RR_+^* tilde.equiv {plus.minus 1}$

Наоборот. $f(x) = "sign" x = x/abs(x), I m f_2 = {plus.minus 1}, ker f_2 = RR_+$

$RR^* \/ {plus.minus 1} = RR_+^*$

Пример

$G_1 = G L (n, k), f = det: G L (n, k) -> k^*$

$I m f = k^*$

$ker f = S L (n,k) = {A | det A = 1}$

$G L (n,k)\/ S L (n,k) tilde.equiv k^*$, при этом ни в каком разумном смысле $G L (n,k) \/ k^* tilde.equiv.not S L (n,k)$

$G L (n,k)$ есть подгруппы изоморфные $k$, например ${mat(a,0,0;0,dots.down,0;0,0,1) | a in k^*}$

но все эти подгуппы не нормальны

Пример

$G = ZZ, H = chevron n chevron.r = N ZZ, ZZ-> ZZ\/ n ZZ, a |-> overline(a)_n$

$ker f = chevron n chevron.r$

но $ZZ \/ n ZZ$ нельзя реализовать как подгруппу в $ZZ$ (в $ZZ$ нет элементов конечного порядка)

(${0,1,dots,n-1}$ не подгруппа в $ZZ$)

$G ~> (G\/ H, H)$

Вопрос: можно ли зная $H$ и $G \/ H$ восстановить $G$?

$G_1, G_2, ? G : G_1 <= G, G\/G_1 = G_2$

Пример $G = G_1 times G_2$, выберем $overline(G)_1 <= overline(G_1) = {(g, e) | g in G_1}$ очев $overline(G_1) tilde.equiv G_1, g <-> (g,e)$

$p: G_1 times G_2 -> G_2, (g_1, g_2) -> g_2$ - гомоморфизм и $ker p = overline(G_1), G \/ overline(G_1) tilde.equiv G_2$

Вообще говоря $G tilde.equiv.not H times (G \/ H)$ если $H lt.tri.eq G$ (см. другие. примеры)

$G_ 1 = G_2 = ZZ\/ 2 ZZ$

1) $ZZ\/ 2 ZZ times ZZ\/2 ZZ$

2) $ZZ\/ 4 ZZ, G_2 = chevron overline(2) chevron.r, G_1 tilde.equiv ZZ\/ 2 ZZ$

$abs(G \/ G_1) = 4/2 = 2$

$G \/ G_1 tilde.equiv ZZ \/ 2 ZZ$, но $ZZ\/ 4 ZZ tilde.equiv.not ZZ\/ 2 ZZ times ZZ\/ 2 ZZ$

Пусть $G_1, G_2 <= G$ когда можно утверждать, что $G tilde.equiv G_1 times G_2$

== Утвержднеие

Следующие наборы условия равносильны:

1. $m : G_1 times G_2 -> G, (g_1, g_2) |-> g_1 g_2$ - изоморфизм

2.
  1. $G_1 inter G_2 = {e}$
  2. $forall g in G exists g_1, g_2: g = g_1 g_2 (g_i in G_i)$
  3. $forall g_1 in G_1, g_2 in G_2 g_1 g_2 = g_2 g_1$

3. Первые два такие же, как и во втором, однако третье: $G_1, G_2 lt.tri.eq G$

=== Доказательство

$1 <=> 2$

$m$ сюръективно равносильно условию 2

$m$ гомоморфизм $<=> m( (g_1, g_2) (g'_1, g'_2)) = m (g_1, g_2) dot m (g'_1, g'_2)$

$m(g_1 g'_1, g_2 g'_2) = m (g_1, g_2) m (g'_1, g'_2)$

$g_1 g'_1 g_2 g'_2 = g_1 g_2 g'_1 g'_2$

$g'_1 g_2 = g_2 g'_1$ а это в точности условие 3

$m$ инъективен $<=> m(g_1, g_2) = m (g'_1, g'_2) => g_1 = g'_1, g_2 = g'_2$, то есть $g_1 g_2 = g'_1 g'_2 => g_1 = g'_1, g_2 = g'_2$

$(g'_1)^(-1) g_1 = (g'_2) g_2^(-1) => (g'_1)^(-1) g_1 = g'_2 g_2^(-1) = e, forall g_1, g'_1 in G_1, g_2, g'_2 in G_2$

$g''_2 = g''_2 => g''_1 = g''_2 = e$, то есть $G_1 inter G_2 = {e}$

Знаем. что если $G$ конечная и абелева, то можно разложить до циклических $G = ZZ\/ n_1 ZZ times dots times ZZ\/ n_k ZZ$

В общее случае: можно делать разложение $G -> (G_1, G_2), G\/ G_1 tilde.equiv G_2,(G_1, G_2) -> (G_1, G_3, G_4), G_3 <= G_2, G_2 \/ G_3 tilde.equiv G_4, ->$ и так далее

== Теорема Фейта-Томпсона

$abs(G)$ конечная группа нечетная порядка, тогда $G$ раскладывается до циклических

== Определение

$G$ назыается простой, если 

$H lt.tri.eq => H = G or H = {e}$

Ясно, что процесс выше приводит $forall$ конечную группу к набору простых групп

$abs(G) = n, abs(H) = n_1, abs(G\/ H) = n_2, n = n_1 dot n_2$

== Пример

$n in NN, k$ - поле, $abs(k) < oo$

$S L (n, k) = {A in M_n (k) | det A = 1}$ не проста и конечна, если поле конечно

Но $S L (n,k) \/ {mat(a,0;0,a) | a in k^*} = P S L (n,k)$ - проективная группа

$(a E) A = A( a E) =>$ это нормальная подгруппа 

Вот уже проективная группа обычно проста, то есть $(n,k) -> P S L (n,k)$ - матричная серия простых групп

== Теорема CSFG

$G$ - проста, тогда либо:
+ $G tilde.equiv ZZ \/ p ZZ, p$ простое
+ $G tilde.equiv A_n, n>= 5$
+ либо одная из матричных $(n,k)$ серйи (примерно 20 штук)
+ либо одна из 26 исключитальных групп

= Действие группы на множестве

== Определение

$G$ - группа, $M$ - множество действие $G$ на $M$ ($G arrow.cw.half M$)

это бинарная операция $G times M -> M$, такая что 

+ $(g_1 g_2) dot m = g_1 (g_2 m)$
+ $e m = m forall m in M$

== Пример 

$m = k^n, G L (n,k) arrow.cw.half k^n$

$G = S_n, m = I_n = {1,2,dots, n}$

$S_n arrow.cw.half I_n$ по определению $forall x in I_n pi x = pi(x)$

$S_n arrow.cw.half I_n times I_n, pi(x,y) = (pi x, pi x), S_n arrow.cw.half 2 I_n pi {x_1, x_2} = {pi(x_1), dots pi (x_k)}$

== Пример

$Gamma$ - помеценные графы на $n$ вершинах $S_n arrow.cw.half Gamma$

== Пример

$M = CC, G = S_3,  G arrow.cw.half: s = (1 2), r = (1 2 3), S_3 = chevron s, r chevron.r$ положим $r dot x = (-1/2 + sqrt(3)/2 i) x = e^((2 pi i)/3 x)$

$s dot x = overline(x)$

$r x = e^((2 pi i)/3) x) x$

$s x  = - x$

действие для $ZZ \/ 3 ZZ times ZZ\/ 2 ZZ$

== Утверждение

Задание действия $G$ на $M$ равносильно заданию гомоморфизма $pi: G -> S (M)$ биекция $M -> M$

Пусть $G times M -> M$ действие

$forall g in G: exists f g: M -> M, m |-> g m, $ (очев есть обратные просто домножение на $g^(-1)$)

$pi M -> S(M), g |-> f g$ - гомоморфизм $f g_1 g_2 = f g_1 g g_2, t_e = i d$ аксиома 2

$H o m (G times M, M) tilde.equiv H o m(G, H o m(M, M))$

Обратно:

Пусть задано $pi$, тогда определим $g dot m = pi (g) (m)$ аксиомы - упр.

= Орбиты и стабилизаторы

== Определение
$G arrow.cw.half M, m in M, G m = {g m | g in G}$ - орбита $M$

$G_m = {g in G | g dot m = m}$ - стабилизатор

$G m subset M$

$G_m <= G$ - подгруппа очев $g_2 m = m , g_1 m = m, (g_2 g_1) m = g_2 (g_1 m) = g_2 m = m$

== Замечание
Определеим $~$ на $M$

$m_1 ~ m_2$ если $g in G: g m_1 = m_2$ это отношение эквивалентности (очев)

Орбита это очевидно класс эквивалентности

$M$ - дизъюнктное объединение орбит

(действие $G$ задано отдельно на какой-то орбите)

== Лемма

$G arrow.cw.half M, m in M, G_m = H, G = union.big g H$

Тогда $g H = {g' in G | g' m = g m}$

=== Доказательство
$g' in g H, g' = g dot h, h (m) = m, g' m = (g h) m = g(h m) = g m$

Обратно

Пусть $g' m = g m => g^(-1) g' m = e m, g^(-1) g' m = m <=> g^(-1) g' in H => g' in g H$

Таким образом 

$exists$ биекция между ${g G_m | g in G}$

и элементами вида $g m$, то есть $G m$

Вывод $abs(G : G_m) = abs(G m)$ - длина орбиты

Пусть $G, M$ - конечные

$abs(G)/abs(G_m) = abs(G m)$, то есть

$G arrow.cw.half M => abs(G) = abs(G m) dot abs(G_m)$

== Пример

Сколько самосовмещений у куба

$O_3$ - ортогональные преобразованеия в $RR^3$

$k$ - куб с центром в $O$

$G <= O_3, G = {g in O_3 | g k = k}$

Ясно, что $g$ однозначно задается тремя точками

$abs(G) = abs(G dot 1) = abs(G_1) = 8 dot abs(G_1) = 8 dot abs((G_1) dot 2) dot abs(G_(1,2)) = 8 3 dot abs(G_(1,2)) = 8,3 abs(G_(1,2) 3) dot abs(G_(1,2,3)) = 8 dot 3 dot 2 abs({id}) = 48$

Пусть $S_n arrow.cw.half 2^(I_n), m = {1,2,3,dots k}$

$abs(G m) = C_n^k$

$G_m pi: {1 dots k} ->^pi {1 dots k}, {k+1 dots n} ->^pi -> {k+1 dots n}$

$abs(G_m) = k! (n-k!), abs(G) = n!$

$n! = C_n^k (k!) (n-k)!$

== Лемма Бернсайда

$G arrow.cw.half M, G, M$ - конечные

$F i x (g) = {m in M | g m = m}$

количество орбит действия равно среднему рзамеру фиксатора, то есть $(sum_(g in G) abs(F i x (g)))/abs(G)$

=== Доказательство

$T := {(g,m) | g m = m}$

$abs(T) = union_g abs((g,m) | g m =m) = sum abs(F i x (g))$

С другой стороны $abs(T) = abs(union_(m in M) {(g,m) | g m = m}) = sum_(m in M) abs(G_m)$

Итого $sum_(g in G) abs(F i x(g)) = sum_(m in M) abs(G_m) = sum_(m in M) abs(G)/(abs(G m)) = abs(G) sum_(m in M) 1/abs(G m)$

Орбита длины $k$ вносит в сумму вклад $1/k$, а таких ребят $k$ и получается единичка, поэтому общая сумма $sum_(m in M) 1/abs(G m) = 1 + dots + 1 =$ количество орбит

$=> $ количество орбит $= (sum (F i x (g)))/abs(G)$


= Перестановки

$n in NN, pi in S_n, G = chevron pi chevron.r$

$I_n = {1,2, dots, n}, S_n arrow.cw.half I_n$

$G arrow.cw.half I_n => I_n = union.big C_i$ - дизъюнктное объединение $C_i$ - орбиты отн. $G$

$C_i: x_i -> pi x_i -> pi^2 x_i -> dots -> pi^k x_i -> x_i$ - орбита

$pi^k x_i = pi^l x_i, k > l => pi ^(k-l) x_i = x_i$

$pi -> Gamma_pi$ - граф перестановки, перестановки $I_n$, стрелки $x -> pi(x)$

$Gamma_pi$ - объединение непересекающихся циклов длин

$k_1, k_2, dots k_s (k_1, k_2, dots k_s)$ - цикловой тип перестановки

цикловая запись $(x pi(x) pi^2 (x) dots) (y, pi(y), pi^2(y))$

== Пример

$n = 10, pi(x) = 3 x mod 10$

$Gamma_pi: 1 -> 3 -> 9 -> 7 -> 1, 2 -> 6 -> 8 -> 4 -> 2, 5 -> 5, 10 -> 10$, цикл. тип $4 + 4 + 1 + 1$, цикл. запись $(1397)(2684)=pi$

$(1397) = pi_1$ - цикл, $1,2,5,4,10,6,8$ петли

$(2684) = pi_2$ аналогично

$pi = pi_1 pi_2 = pi_2 pi_1$

== Общее утверждение

Любая перестановка раскладывается единственным образом в произведение независимых циклов (в точности до порядка множителей)

=== Доказательство
Используем доказательство методом Антипова: 

(существование доказали)

Единственность упр

== Утверждение

$pi$ - перестановки типа $k_1 + k_2 + dots + k_s => "ord" pi = "НОК" (k_1, dots k_s) = abs(chevron pi chevron.r)$

Пусть теперь $pi_1, dots, pi_k in S_n$

Сколько и какие перестановки выражаются через $pi_1, dots, pi_k?$

Рассмотриваем $G = chevron pi_1, dots, pi_k chevron.r$, хотим знать

+ $abs(G) = ?$
+ $pi in S_n, pi in G ?$ если да, то как выражается через $pi_1, pi_2, dots pi_k$

$G arrow.cw.half I_n, abs(G) = abs(G dot 1) dot abs(G_1), G_1 arrow.cw.half {2,3,dots,n}, abs(G_1) = abs(G_1 dots 2) dots abs((G_1)_2 = G_(1,2))$ дальше итерируем...

Получаем, что $abs(G) = abs(G 1) dot abs(G_1 2) dots abs(G_(1,2) 3) dots abs(G_(1,2,dots,n-1) n) dot abs(G_(1,2,dots n))$

$G >= G_1 (= G^1) >= G_(1,2) (= G^2) >= G_(1,2,3) (= G^3)$

== Общая задача

$G = chevron g_1, g_2, dots g_n chevron.r, H <= G, G\/ H = {x_1 H, x_2 H, dots x_k H} (forall x in G exists i: x H = x_i H)$

считаем, что $x_1 = e, x_1 H = H$

Обозначение: $overline(x) = x_i$ если $x H = x_i H (exists ! i) <=> x_i^(-1) x in H$ 

== Теорема (Лемма Шрайера)

$S = {overline(g_i x_i)^(-1) g_j x_i}_(i = 1 dots k, j = 1 dots n)$ - порожд. система для $H$

=== Доказательство

+ $overline(g_j x_i)^(-1) (g_j x_i) in H$ - по построению

$(overline(x)^(-1)) dot x_i$, то есть $S subset H$

Пусть $h in H$, хотим $h = s_1^(plus.minus 1) dots s_l^(plus.minus 1), s_i in S$

$h in G. h = g^(plus.minus 1)_i_1 g^(plus.minus 1)_i_2 dots g^(plus.minus 1)_i_l$

$x^(-1)_i_0 h = x^(-1)_i_0 g^(plus.minus 1)_i_1 x_i_1 x^(-1)_i_1 g^(plus.minus 1)_i_2 x_i_2 x^(-1)i_2 dots x_i_(l-1) x^(-1)_i_(l-1) g^(plus.minus 1)_i_l x_i_l$, где $x_i_l = e$

$x_i_(l-1), x_i_(l-2) dots x_i_0$ определяем последовательно, так чтобы $forall s: x^(-1)i_(s-1) g^(plus.minus 1)_i_s x_i_s$ это элемент $S$ или обратный к элементу $s$

случай 1 хотим $x^(-1)_i_(s-1) g_i_s x_i_s in S, x_i_(s-1): overline(g_i_s x_i_s) =>$ ок, $overline(g_i_s x_i_s)^(-1) g_i_s x_i_s in S$

случай 2. Хотим $x^(-1)_i_(s-1) g^(-1)i_s x_i_s = (x^(-1)_i_s g_i_s x_i_(s-1))^(-1)$

Хотим $x^(-1)_i_s g_i_s x_i_(s-1) in S$, то есть $x_i_s = overline(g_i_s x_i_(s-1)) <=> x_i_s H = g_i_s x_i_(s-1) H$

$g^(-1)_i_s x_i_s H = x_i_(s-1) H <=> x_i_(s-1) overline(g^(-1)_s x_i_s)$ можем так выбрать $x^(-1)_i_1$

Итого $x^(-1)_i_0 h = s^(plus.minus 1)_1 s^(plus.minus 1)_2 dots s^(plus.minus 1)_l, s_i in S$, хотели так выразить $h$

$x_i in H => s^(plus.minus 1)_1 dots s^(plus.minus 1)_l in H => x^(-1)_i_0 h in H => x_i_0 in H = e H => x_i_0 = e => h  = s^(plus.minus 1)_1 s^(plus.minus 1)_2 dots s^(plus.minus 1)_l$

Возвращаеся в $S_n$

$П = chevron pi_1 dots pi_m chevron.r <= s_n$

$pi_i =: pi^((0))_i$

Шаг $abs(G^k) = abs(G^(k) (k+1)) dot abs(G^(k+1))$

Знаем $G^k = {pi^((k))_1, pi^((k))_2, dots, pi^((k))_(i_k)}$

Орбита $G^(k) dot (k+1)$

Рисуем общий (тотальный граф)

Для $pi^((k))_1, pi^((k))_2, dots pi^((k))_i_k$


Тогда $G^K (k+1)$ - компонента связности $k+1$

Напоминание $G arrow.cw.half M, m in M, g in G, g G_m = {g' in G | g' m = g m}$ $<->$ один элемент орбиты $m$ (а именно $g_m$)

У нас $G^(k+1) (G^k)_(k+1)$

$G^k (k+1) = {k_1, k_2, dots k_s}$

$forall k_i exists g_i: g_i (k+1) = k_i, g_i = (pi^((k))_i_1)^(plus.minus 1) dots (pi^((k))_i_k)^(plus.minus 1)$

путь из $k+1$ в $k_i$ в общем графе

Переобозначим $g_i = x_i^((k))$

Теперь $G^k\/ G^(k+1) = {x_1^((k)) G^(k+1), x_2^((k)) G^(k+1) dots x^((k))_s_k G^(k+1)}$

Есть порождающая система для $G^k$ и предъявили смежный класс $=>$ находим $G^(k+1) chevron {pi_i^(k+1)} chevron.r$

Переходим к следующему $k$

Итог (алгоритм Шрайера-Симса)

построили ${x^((j))_i}_(j = 0, 1, dots n-1, i = 1,2,dots s_j)$ - сильная база

$forall x_i^((j))$ знаем его выражение через начальный набор перестановок

$abs(G)$ - научились считать (на любом шаге знаем $abs(G^k (k+1))$)



== Теорема (Membership Test)

$chevron {x_i^((j))} chevron.r = G$, более того любой элемент $S_n$ эффективно выражается через $x_i^((j))$ или выражается, что он $in.not G$

=== Доказательство

$pi in S_n, pi dot 1 in G dot 1$ если нет, то $pi in.not G$, а иначе знаем, что $exists ! x_i^((0))$, такой что $pi dot 1 = x^((0))_i_0 dot 1$

$pi_1 = (x^((0))_i_0)^(-1) pi, pi_1 dot 1 = 1, pi_1 in (s_n)_1$

$x^((0))_i_0 in G$, так что $pi in G <=> pi_1 in G$

Если $pi_1 dot 2 in.not G_1 dot 2 => pi_1 in.not G_1 => pi_1 in.not G$ иначе существует $x^((1))_i_1$, такой, что $pi_1 dot 2 = x^((2))_i_2 dot 2$, то есть $(x^((2))_i_1)^(-1) pi_1 in G_(1,2)$

Продолжаем ...

Либо $exists k: pi_k (k+1) in.not G_k (k+1) => pi_k in.not G, pi in.not G$

Либо $exists s: pi_s = i d, (x^((s))_i_s)^(-1) dots (x^((1))_i_1)^(-1) (x^((0))_i_0)^(-1) pi = id$

$<=> pi = x^((0))_i_0 x^((1))_i_1 dots x^((s))_i_s$

$G$ - группа

Верно ли, что все $min$ (по включению) порождающие системы равномощны?

нет: $s_n = chevron {(i j)} chevron.r = chevron (1 2) (2 3) dots (n-1, n) chevron.r$ - $min$ по включению (если выкенем, то будет две орбиты)

$min$ по количеству $S_n = chevron (12), (123 dots n) chevron.r$

Положим $dim G$ - $min$ размер системы образующих

$\"dim\" G$ не монотонная:

== Пример

$S_(2n) \"dim\" S_(2n) = 2, H <= S_(2n), H = chevron (12) (34) (56) dots (2n-1)(2n) chevron.r = chevron s_1, s_2 dots s_n chevron.r$

$s_i^2 = id, s_i s_j = s_j s_i, abs(H) = 2^n$

$H = {s_i_1 s_i_2 dots s_i_k | i_1 < i_2 < dots < i_k}, forall h in H : h^2 = e => h_1 dots h_k in H => abs(chevron h_1 dots h_k chevron.r) <= 2^k$

У $H$ нет порождающей системы меньше $n$

== Теорема

$H <= S_n, exists h_1, dots h_k, chevron h_1 dots h_k chevron.r = H? k <= n/2$

=== Доказательство

сложно, использует CFSG

Докажем оченку $k < n$

== Доказательство

нам кидают по очереди 

$u_1, u_2, u_3 dots in S_n$

$H_i = chevron u_1, dots u_i chevron.r$

Построим $Gamma_(u_1 dots u_i)$ - граф

Вершины $I_n$. стрелки: $forall i$ рассмотри $k_i = min {k | u_i (k) != k}$ (номер первого подвижного элемента) и нарисуем $e_i: k_i ->^(u_i) u_i (k_i)$, $e_1, dots e_i$ - ребра $Gamma_(u_1, dots u_i)$

Докажем: на каждом шаге можем найти систему $v_1^i, v_2^i, dots v^i_s_i in S_n: chevron v_16i v_2^i dots v^i_s_i chevron.r = H_i$ и граф был бы лесом (лучше бы шел бы)

Отсюда следует $s_i < n$

То есть то, что надо (система из $< n$ образующих)

База $i = 1$ (ясно)

переход $k -> k+ 1$

$H_k = chevron v^k_1, v^k_2, dots v^k_(s_k)  chevron.r$  добавили $u_(k+1)$

$H_(k+1) = chevron u_1, dots, u_(k+1) chevron.r = chevron v_1^k, v^k_2, dots v^k_(s_k) u_(k+1) chevron.r$

$Gamma_(v^k dots v^(k)_s_k, u_(k+1))$ - лес, то ок

Пусть возник цикл

$v_1^(k+1) = v_1^k dots v^(k+1)_s_k = v^k_(s_k), v^(k+1)_(s_k + 1) = u_(k+1)$

Докажем: на каждом шаге можем найти систему

$v^(plus.minus 1)_i_l v^(plus.minus 1)_i_(l-1) v^(plus.minus 1)_i_1 (k_1) = k_n$

Заменим $v_i_1 -> v^(plus.minus 1)_i_l dots v^(plus.minus 1)_i_1 = v^"new"_i_1$

$chevron v_1, v_2, dots v_(s_(k+1)) chevron.r = H_(k+1)$

Но теперь $v^"new"_i_1 (k_1) = k_1$ новый граф может иметь цикл, тогда повторим операцию

Процесс закончится: увеличивается сумма номеров в началах стрелок $(k_1  ->^(v_i)) ~> (k_(> k_1) ->^(v_i)) => $  придем к ацикличному графу