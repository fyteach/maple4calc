# Arc Lengths and Areas of Surfaces of Revolutions

- **Arc length:**

  The length $L$ of an arc: $y=f(x)$, $a\leq x \leq b$ is
  $$
  L=\int_a^b\sqrt{1+\left(\frac{\mathrm{d} y}{\mathrm{d} x}\right)^2}~\mathrm{d} x=\int_{f(a)}^{f(b)}\sqrt{1+\left(\frac{\mathrm{d} y}{\mathrm{d} x}\right)^2}~\mathrm{d} y.
  $$

- **Surface area of a revolution**

  The area $S$ of the surface rotating an arc: $y=f(x)$, $a\leq x \leq b$ about the $x$-axis is
  $$
  S=2\pi\int r\mathrm{d} s = 2\pi\int y\mathrm{d} s,
  $$
  and about the $y$-axis is
  $$
  S=2\pi\int r\mathrm{d} s = 2\pi\int x\mathrm{d} s,
  $$
  where
  $$\mathrm{d} s=\sqrt{1+\left(\frac{\mathrm{d} y}{\mathrm{d} x}\right)^2}~\mathrm{d} x = \sqrt{1+\left(\frac{\mathrm{d} y}{\mathrm{d} x}\right)^2}~\mathrm{d} y.
  $$
  The integral limits depend on whether you use $\mathrm{d} x$ or $\mathrm{d}y$ in the integral.

In Maple, the package `Student[Calculus1]` provides commands to investigate arc length and surface area of revolutions:
`ArcLength(f(x), x = a..b, opts)}`
`SurfaceOfRevolution(f(x), x = a..b, opts)}`

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-1"><strong>(\#exm:unnamed-chunk-1) </strong></span>
Set up an integral and evaluate the integral for the length of the curve  defined by
$$
f(x)=\sqrt{x},\qquad 1\leq x\leq 4.
$$
Plot $f(x)$ together with the arc length function in the same coordinate system.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # Load the package

    with(Student[Calculus1])

    # Set up an integral

    ArcLength(sqrt(x),x=1..4,output=integral)

    # Evaluate the integral

    ArcLength(sqrt(x),x=1..4)

    # Plot the function and the arc length function

    ArcLength(sqrt(x), x=1..4, output=plot)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{example}<div class="example"><span class="example" id="exm:unnamed-chunk-3"><strong>(\#exm:unnamed-chunk-3) </strong></span>
Set up an integral and evaluate the integral for the area of the surface obtained by rotating the curve defined by
$$
f(x)=\sqrt{x},\qquad 1\leq x\leq 4
$$
about the $y$-axis. Plot the surface of the revolution.
</div>\EndKnitrBlock{example}

\BeginKnitrBlock{solution}<div class="solution">\iffalse{} <span class="solution"><em>Solution. </em></span>  \fi{}<br>

    # Load the package (skip if the package was already loaded)

    with(Student[Calculus1])

    # Plot the surface

    SurfaceOfRevolution(sqrt(x), x=1..4, output=plot, axis=vertical)

    # Set up an integral

    SurfaceOfRevolution(sqrt(x),x=1..4,output=integral, axis=vertical)

    # Evaluate the integral

    SurfaceOfRevolution(sqrt(x),x=1..4, axis=vertical)
</div>\EndKnitrBlock{solution}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-5"><strong>(\#exr:unnamed-chunk-5) </strong></span>
Set up an integral and evaluate the integral for the length of the arc defined by
$$
f(x)=\ln x, \qquad 1\leq x\leq 2.
$$
Plot $f(x)$ together with the arc length function in the same coordinate system.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-6"><strong>(\#exr:unnamed-chunk-6) </strong></span>
Plot the surface obtained by rotating the curve defined by
$$
f(x)=\frac{\cos x}{x}, \qquad 0\leq x\leq 4\pi
$$
about the $y$-axis. Set up an integral for the area of the surface.
</div>\EndKnitrBlock{exercise}

\BeginKnitrBlock{exercise}<div class="exercise"><span class="exercise" id="exr:unnamed-chunk-7"><strong>(\#exr:unnamed-chunk-7) </strong></span>
Find the area of the surface obtained by rotating the curve defined by 
$$
f(x)=\sqrt{1+x^2},\qquad 0\leq x\leq 3.
$$
</div>\EndKnitrBlock{exercise}
