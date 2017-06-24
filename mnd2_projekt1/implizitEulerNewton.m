function [x, y] = implizitEulerNewton(G, dG, h, Xend, y0, tolerance, maxIter)
    n       = round(Xend / h);
    x       = zeros(n + 1, 1);
    y       = zeros(n + 1, 1);
    y(1)  = y0;
    for i = 1:n
        x(i + 1) = x(i) + h;
        y(i + 1) = newton(G, dG, h, y(i), y(i), x(i + 1), tolerance, maxIter);
    end
end