
function [s] = newton(G, dG, h, s0, yk, xkp1, tolerance, maxIter)
    iter  = 0;
    err   = 1;
    s     = s0;
    while err > tolerance
        snp1 = s - (G(h, s, yk, xkp1) / dG(h, s, yk, xkp1));
        %err   = abs(snp1 - s);
        err   = abs(G(h, s, yk, xkp1));
        iter  = iter + 1;
        
        if (iter >= maxIter)
            error('Maximale Iteration erreicht!');
        end
        
        s = snp1;
    end
    fprintf('s0=%5.3f s=%5.3f iter=%d\n', s0, s, iter);
end
