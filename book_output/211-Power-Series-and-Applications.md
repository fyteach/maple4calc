# Power Series

A power series is a series with a variable $x$:
$$
\sum\limits_{n=0}^{\infty} c_nx^n=c_0+c_1x+c_2x^2+c_3x^3+\cdots.
$$

More generally, a series of the form

\begin{equation}
\sum\limits_{n=0}^{\infty} c_n(x-a)^n=c_0+c_1(x-a)+c_2(x-a)^2+c_3(x-a)^3+\cdots
(\#eq:Taylor-series)
\end{equation}

is called a power series at $a$.

We call a positive number $R$ the radius of convergence of the power series \ref@(eq:Taylor-series) if the power series converges whenever $\left|x-a\right|<R$ and diverges whenever  $\left|x-a\right|>R$.

If a function $f$ has a power series representation, i.e.
$$
f(x)=\sum_{n=0}^\infty c_n(x-a)^n,\quad\quad \left|x-a\right|<R,
$$
then its coefficients are given by $c_n=\dfrac{f^{(n)}(a)}{n!}.$

<!-- This representation is called a Taylor expansion.

Given a differentiable function $f(x)$, we can use Maple command `taylor(f, x=a, n)` to find its Taylor expansion at $x=a$ up to the $n$-th order.

We also have Maple command `TaylorApproximation` supported by the package `Student[Calculus1]` which provides more details about Taylor expansion.

TaylorApproximation(sin(x), x=-1, order=1..10, output=animation, view=[-5..3, DEFAULT]); -->

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-1"><strong>(\#exm:unnamed-chunk-1) </strong></span>
Find the interval of convergence of the power series
$$
\sum\limits_{n=1}^{\infty}\dfrac{(-2)^nx^n}{n^3}.
$$
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # Find the abs(a_{n+1}/a_n)

    q:=abs((-2)^(n+1)(n+1)^3/(-2)^(n+1)(n+1)^3);

    # Find the limit of q

    r:=limit(simplify(q), n=infinity)

    # Find the interval of convergence

    solve(abs(x)<1/r, x)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-3"><strong>(\#exm:unnamed-chunk-3) </strong></span>
Find the Taylor expansion of the function $f(x)=\dfrac{1}{x-2}$ at $x=0$ up to the 5-th order. Plot $f(x)$ and the $5$-th order Taylor polynomial together.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # Find the Taylor expansion.

    ftaylor:=taylor(1/(x-2), x = 0, 5)

    # convert the Taylor series into a polynomial

    fpoly:=convert(ftaylor, polynom)

    # Plot the functions

    plot([1/(x-2), fpoly], x=-1..1)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-5"><strong>(\#exr:unnamed-chunk-5) </strong></span>
Find the interval of convergence of the power series 
$$
\sum\limits_{n=1}^{\infty}\dfrac{(-4)^nx^n}{\sqrt{n}}.
$$
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-6"><strong>(\#exr:unnamed-chunk-6) </strong></span>
Find the Taylor expansion of the function $f(x)=\sin x$ at $x=0$ up to the 5-th order. Plot $f(x)$ and the $5$-th order Taylor polynomial together over the interval $[-\pi,\pi]$.
</div>\EndKnitrBlock{exercise}
