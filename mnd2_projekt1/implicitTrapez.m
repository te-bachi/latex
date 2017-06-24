function [x, y] = implicitTrapez(f, G, dG, h, Xend, y0, tolerance, maxIter)
    n       = round(Xend / h);
    x       = zeros(n + 1, 1);
    y       = zeros(n + 1, 1);
    y(1)  = y0;
    
    for i = 1:n
        x(i + 1) = x(i) + h;
        k1       = newton(G, dG, h, y(i), y(i), x(i + 1), tolerance, maxIter);
        y(i+1)   = y(i) + h *(f(x(i), y(i)) + f(x(i) + h,k1)) / 2;
    end;
end