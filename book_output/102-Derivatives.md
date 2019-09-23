# Derivatives

## Derivative Functions

What makes derivative so important in modern mathematics is the ideal of linearly approximating curves using tangent lines. Geometrically, the derivative of a function $f$ at a point $x=a$ is the slope of the line tangent to $f$ at $x=a$. Using limits (if it exists), the derivative is defined as
$$
f'(a):=\lim\limits_{x\to a}\frac{f(x)-f(a)}{x-a}.
$$

Consider $a$ as a variable, we may define a function called the derivative function. In terms of limits, the derivative function of a function $f$, denoted by $f'$ is given by
$$
f'(x)=\lim\limits_{h\to 0}\frac{f(x+h)-f(x)}{h}.
$$

Using limit laws, we can show that differentiable functions are continuous.

Geometrically, the graph of differentiable function locally is flat without any hole or jump.

All [elementary functions](https://en.wikipedia.org/wiki/Elementary_function) are differentiable over their domain. But there are also many functions which are not differential everywhere in their domain.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-1"><strong>(\#exm:unnamed-chunk-1) </strong></span>
Use the graph of the function $f(x)=|x-1|$ to identify a $x$ value where $f$ is not differential. Verify your finding using the definition of differentiability.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}
First plot the function.

    f:= x-> abs(x)

    plot(f(x), x=-2..2)

You will see the function is not flat near $x=1$. To verify that, we calculate the limit of the difference quotient for all $x$ and then evaluate the resulting function at $x=1$.

    diffquot:=(f(x+h)-f(x))/h

    derlimit:= limit(diffquot, h=0)

    evalf(subs(x=1, derlimit))
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-3"><strong>(\#exr:unnamed-chunk-3) </strong></span>
Determine whether the function
$$
f(x)=\begin{cases}
x\sin\left(\frac1x\right) & x\neq 0\\
0 & x=0
\end{cases}
$$
is differential at $x=0$ using the definition of the differentiability.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-4"><strong>(\#exr:unnamed-chunk-4) </strong></span>
Determine whether the function
$$
f(x)=\begin{cases}
x^2\cos\left(\frac1x\right) & x\neq 0\\
0 & x=0
\end{cases}
$$
is differential at $x=0$ using the definition of the differentiability.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-5"><strong>(\#exr:unnamed-chunk-5) </strong></span>
Using the definition to find the derivative for $y=\sin x$.
</div>\EndKnitrBlock{exercise}

## Calculating Derivatives

Calculating a derivative in Maple is as easy as calculating a limit. The command for differentiation is `diff(function, variable)`. For higher derivatives, you may simply repeat the variable or use `[variable$n]` to indicate the $n$ times differentiation.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-6"><strong>(\#exm:unnamed-chunk-6) </strong></span>
Calculate the first derivative and the second derivative for the function
$$
f(x)=\frac{2}{\sqrt{2\sin^2 x + 1}}.
$$
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}
First represent the function rule simply by `f`.

    f:=2/(sqrt(2*(sin(x))^2+1))

Calculate the first derivative and denote the derivative by `f1`.

    f1:=diff(f, x);

Calculate the second derivative and denote the derivative by `f2`. You may use one of the following three commands.

    f2:=diff(f1, x)
    f2:=diff(f, x, x)
    f2:=diff(f, [x$2])
</div>\EndKnitrBlock{solution}

Maple also has a tutoring command for differentiation: `DiffTutor(function, variable)` which is again supported by the subpackage `Student[Calculus1]`. However, `DiffTutor` only works for the first derivative.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-8"><strong>(\#exm:unnamed-chunk-8) </strong></span>
Calculate the derivative for $g(x)=\frac{x^2-2x-x^{-3}}{\sqrt{x}}$ by hand and compare your calculation the the result given by `DiffTutor`.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}
By hand, we may simplify the expression using rational exponents first and then apply derivative rules.
$$
g'(x)=(x^{\frac32}-2x^{\frac12}-x^{-\frac72})'=\frac32\sqrt{x}-\frac{1}{\sqrt{x}}+\frac{7}{2x^4\sqrt{x}}=\frac{3x^5-2x^4+7}{2x^4\sqrt{x}}.
$$

To see the result from `DiffTutor`, we use the following command. Remember to load the `Student[Calculus1]` first.

    with(Student[Calculus1])
    DiffTutor((x^2-2*x-x^(-3))/sqrt(x), x)

Here is how does the output look like

![The derivative of a function obtained by the DiffTutor command](figs/DiffTutor-Example.png)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-10"><strong>(\#exr:unnamed-chunk-10) </strong></span>
Calculate the first derivative for the function $y=2x^{-1}-3\sqrt{x}$ by hand and by Maple. Compare two results. Are they different? If so, can you explain the difference?
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-11"><strong>(\#exr:unnamed-chunk-11) </strong></span>
Calculate the first derivative for the function $y=x\sin^{-1}(x)$ by hand and by Maple. Compare two results. Are they different? If so, can you explain the difference?
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-12"><strong>(\#exr:unnamed-chunk-12) </strong></span>
Calculate the first derivative for the function $y=\frac{\cos(x)+\sin x}{x}$ by hand and by Maple. Compare two results. Are they different? If so, can you explain the difference?
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-13"><strong>(\#exr:unnamed-chunk-13) </strong></span>
Calculate the $3$-th derivative for the function $y=\sin x\cos x$ by hand and by Maple. Can you find a formula for the $n$-th derivative of the function?
</div>\EndKnitrBlock{exercise}
