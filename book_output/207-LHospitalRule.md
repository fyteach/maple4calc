# L'Hospital's Rule

In Maple, supported by the package, `Student[Calculus1]`, the command `LimitTutor` can show step-by-step solutions of evaluating limits.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-1"><strong>(\#exm:unnamed-chunk-1) </strong></span>
Evaluate the limit
$$
\lim\limits_{x\to \infty}(1+x)^{1/\ln(x)}
$$
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # load the package Student[Calculus1].
    with(Student[Calculus1])
    #Find the limit step-by-step using LimitTutor
    LimitTutor((1+x)^(1/ln(x)), x = infinity)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-3"><strong>(\#exr:unnamed-chunk-3) </strong></span>
Estimate the limit
$$
\lim\limits_{x\to 1}\frac{x^2-2x+1}{x^2-x}
$$
by graphing and verify your estimation.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-4"><strong>(\#exr:unnamed-chunk-4) </strong></span>
Evaluate the limit
$$
\lim\limits_{x\to \infty} x-\ln(x).
$$
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-5"><strong>(\#exr:unnamed-chunk-5) </strong></span>
Evaluate the limit
$$
\lim\limits_{x\to \infty} x\tan(\frac1x).
$$
</div>\EndKnitrBlock{exercise}
