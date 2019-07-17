# Integrations  of Rational Functions by Partial Fractions

In Maple, we can factor a polynomial using the command `factor(polynomial)` or find partial fraction decomposition using  `convert(function, parfrac)`.

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-1"><strong>(\#exm:unnamed-chunk-1) </strong></span>
Find the sum of partial fractions for the rational function
$$
f(x)=\frac{x^3+4x+3}{x^4+5x^2+4}
$$
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>
This can be done easily in Maple:

    #use the command convert
    convert((x^3+4*x+3)/(x^4+5x^2+4), parfrac)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-3"><strong>(\#exr:unnamed-chunk-3) </strong></span>
Find the sum of partial fractions for the rational function
$$
f(x)=\frac{x^{4}}{\left(x^{2}-x+1\right)\left(x^{2}+2\right)^{2}}.
$$
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-4"><strong>(\#exr:unnamed-chunk-4) </strong></span>
Find the sum of partial fraction and evaluate the integral

$$
\int \frac{2}{3x^{2}+2x-1} \mathrm{d} x
$$
</div>\EndKnitrBlock{exercise}


\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-5"><strong>(\#exr:unnamed-chunk-5) </strong></span>
Find the sum of partial fraction and evaluate the integral

$$
\int \frac{x^{3}+6 x-2}{x^{4}+6 x^{2}} \mathrm{d} x
$$
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-6"><strong>(\#exr:unnamed-chunk-6) </strong></span>
Find the sum of partial fraction and evaluate the integral

$$
\int \frac{\sin x}{\cos ^{2} x-3 \cos x} d x
$$
</div>\EndKnitrBlock{exercise}
