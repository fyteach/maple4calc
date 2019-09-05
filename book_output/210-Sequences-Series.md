# Sequences and Series

A sequence is a list of numbers in a definite order (indexed by integers). A series may be considered as the limit of the sequence of partial sums.

When the sequence is explicitly defined by an mathematical expression $a_n=f(n)$, Maple has the following command to list numbers of the sequence `seq(f, i=m..n, step)`.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:seq-eg"><strong>(\#exm:seq-eg) </strong></span>
Find the first 10 terms of the sequence $\{\frac{1}{n(n+1)}\}_{n=1}^\infty$. Determine whether the sequence $\{\frac{1}{n(n+1)}\}$ is convergent or divergent.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # using seq

    seq(1/(n*(n+1)), n=1..10)

The sequence converges to $0$.
</div>\EndKnitrBlock{solution}

For a series $\sum a_n$, normally it is not easy to find explicit expression for the partial sum $s_n=\sum\limits_{k=1}^n a_k$. However, if sequence  is defined by an mathematical expression $a_n=f(n)$, we may find values of partial sums recursively use a `for/from loop` statement in Maple:

    for *counter* from *initial* by *increment* to *final* do
        statement_sequence;
    end do;

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-2"><strong>(\#exm:unnamed-chunk-2) </strong></span>
Find the first 20 partial sums $s_k=\sum_{n=1}^{n}a_n$ of the infinite series
$$
\sum_{n=0}^\infty\frac1{2^n}=1+\frac12+\frac14+\frac18+\cdots.
$$
Determine whether the series $\sum_{n=0}^\infty\frac1{2^n}$ is convergent or divergent.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # Set up s when n=0

    s:=1

    # Find 10 terms using `for/from loop`

    for n from 1 to 10 do
        s:=s+1/(2^n);
    end do;

The series converges to 2.
</div>\EndKnitrBlock{solution}

Of course, we may also use `for/from loop` to list numbers of a sequence.

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}Second solution to example \@ref(exm:seq-eg).

    # using `for/from loop`

    for n from 1 to 10 do
        1/(n*(n+1);
    end do;
</div>\EndKnitrBlock{solution}

When the sequence is defined by a recurrence formula like the Fibonacci sequence, we will need to Maple how to interpret the formula. For that purpose, we use a procedure, which encloses a sequence of statements between `proc(...)` and `end proc`, to define the formula in Maple.

For example, the following is a procedure that defines a function $a(x)=\sqrt{x}-\frac{1}{\sqrt{x}}$:

    a:=proc(x) sqrt(x)-1/sqrt{x}; end proc;

To structure codes in a procedure, you may use `Code Edit Region` which can be find in the `Insert menu`.
To execute codes within this region, click `Execute Code` from the `Edit` menu, or use the shortcut command `Ctrl+E`.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-5"><strong>(\#exm:unnamed-chunk-5) </strong></span>
The Fibonacci sequence is defined by $fib(0)=0$, $fib(1)=1$ and $fib(n)=fib(n-1)+fic(n-2)$.
Find the first 20 Fibonacci numbers.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}
We first define a function $fib(n)$ which returns the $n$-th Fibonacci number.

    fib := proc (n::nonnegint)
        if 2 <= n then
            return fib(n-1)+fib(n-2):
        else
            return n:
        end if;
    end proc

Now we can use either `seq()` or `for/from loop`.

seq(fib(n), n=0..19)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-7"><strong>(\#exr:unnamed-chunk-7) </strong></span>
Find the first 20 terms of the sequence
$$
\{\sin{\frac{\pi}{n}}\}_{n=1}^\infty.
$$
Determine whether the sequence $\{\sin{\frac{\pi}{n}}\}$ is convergent or divergent.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-8"><strong>(\#exr:unnamed-chunk-8) </strong></span>
Find the first 20 partial sums $s_k=\sum_{n=1}^{n}a_n$ of the infinite series
$$\sum_{n=0}^\infty\frac1n=1+\frac12+\frac13+\frac14+\cdots.
$$
Determine whether the series $\sum_{n=0}^\infty\frac1n$ is convergent or divergent.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-9"><strong>(\#exr:unnamed-chunk-9) </strong></span>
Find the 20th to 30th Fibonacci numbers.
</div>\EndKnitrBlock{exercise}
