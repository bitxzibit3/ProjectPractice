function [r1, r2, M, E] = compute_traectory(time, E, T, n, e, a, b1, b2, bc, A)
    M = n * (time - T);
    if (0 < e) && (e < 1)
        E = M + e * sin(E);
        x = a * (cos(E) - e);
        y = a * sqrt(1 - e * e) * sin(E);
        r0 = [x,y,0];
        rc = [0,0,0];
        b1.r = rc - r0 * (b2.m/ bc.m);
        b2.r = rc + r0 * (b1.m / bc.m);
        b1.r = (A \ (b1.r)');
        b2.r = (A \ (b2.r)');
        r1 = [b1.r(1), b1.r(2)];
        r2 = [b2.r(1), b2.r(2)];
    else %new
        H = E / 1i;
        x = a * (ch(H) - e);
        y = -a * sqrt(e * e - 1) * sh(H);
        r0 = [x,y,0];
        rc = [0,0,0];
        b1.r = rc - r0 * (b2.m/ bc.m);
        b2.r = rc + r0 * (b1.m / bc.m);
        b1.r = (A \ (b1.r)');
        b2.r = (A \ (b2.r)');
        r1 = [b1.r(1), b1.r(2)];
        r2 = [b2.r(1), b2.r(2)];
    end
end

