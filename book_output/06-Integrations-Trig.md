# Integrations Involving Trigonometric Functions

## Integrations of trigonometric functions

When evaluating integrations of trigonometric functions, one idea is to reduce the total degree (power) of trigonometric functions using trigonometric identities.

In Maple, you may use the command `combine` to rewrite the expression.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-1"><strong>(\#exm:unnamed-chunk-1) </strong></span>
Rewrite $\cos^4x$ into an expression with single terms and evaluate the integral $\int \cos^4x\mathrm{d} x$.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # combine terms into a single term
    combine((cos(x))^4)
    # use DiffTutor to evaluate the integral of the resulting function.
    with(Student[Calculus1])
    IntTutor(%, x)
</div>\EndKnitrBlock{solution}

You may compare the above solution with the solution given by `IntTutor((cos(x))^4, x)`.

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-3"><strong>(\#exr:unnamed-chunk-3) </strong></span>
Evaluate the integral
$$
\int \tan ^{5} x \mathrm{d} x
$$
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-4"><strong>(\#exr:unnamed-chunk-4) </strong></span>
Evaluate the integral
$$
\int \sin 5 x \sin^2 x \mathrm{d} x
$$
</div>\EndKnitrBlock{exercise}

## Trigonometric Substitution

Surely, you may learn some trigonometric substitution tricks using `IntTutor`.

Here I want to introduce another useful command which when integrating functions, we may need to complete a square and then do a substitution. In Maple, we can complete squares using the command `CompleteSquare(f, x)` which supported by the package `Student[Precalculus]`.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-5"><strong>(\#exm:unnamed-chunk-5) </strong></span>
Evaluate the integral
$$
\int\dfrac{1}{x^2+x+1} \mathrm{d} x.
$$
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

We first complete the square for the denominator.

    #load package Student[Precalculus]
    with(Student[Precalculus])
    #Complete square for the denominator
    CompleteSquare(x^2+x+1, x)

Now you may try `DiffTutor` and/or evaluate it by hand.

    #load package Student[Calculus1]
    with(Student[Calculus1])
    DiffTutor(1/%, x)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-7"><strong>(\#exr:unnamed-chunk-7) </strong></span>
Evaluate the integral
$$
\int \sqrt{3+2 x-x^{2}} \mathrm{d} x
$$
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-8"><strong>(\#exr:unnamed-chunk-8) </strong></span>
Evaluate the integral
$$
\int_{0}^{\pi / 2} \frac{\cos t}{\sqrt{1+\sin ^{2} t}} \mathrm{d} t
$$
</div>\EndKnitrBlock{exercise}
