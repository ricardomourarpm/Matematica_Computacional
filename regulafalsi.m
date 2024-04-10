function y = regulafalsi(f, a, b, tolerance, max_iter, debug = false)
    if(f(a) * f(b) >= 0)
        error("Error in following condition: f(a) * f(b) < 0")
    endif

    n_iter = 0;

    printf("Iter \t");
    printf("a \t");
    printf("b \t");
    printf("c \t");
    printf("f(c) \n");

    while(n_iter < max_iter)
        c = (a*f(b) - b*f(a)) / (f(b)-f(a));

        printf("%d \t", n_iter + 1);
        printf("%f \t", a);
        printf("%f \t", b);
        printf("%f \t", c);
        printf("%f \n", f(c));

        y = c;

        if(f(c) == 0 || (b - a) / 2 < tolerance)
            return
        endif

        n_iter += 1;
        
        if(f(c) * f(a) > 0) % They have same sign
            a = c;
        else
            b = c;
        endif
    endwhile
endfunction

hold('on')
fn = @(x) x .^ 3 - x - 2
fplot(fn, [-2, 2])
root = regulafalsi(fn, 1, 2, 10 .^ -5, 30)
plot(root, 0, "color", "r")
hold('off')