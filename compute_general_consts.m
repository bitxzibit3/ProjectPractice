function [hi_2, r, r_v, c, h, E] = compute_general_consts(G, b1, b2, bc)
        hi_2 = G * bc.m;
        r = b2.r - b1.r;
        r_v = b2.v - b1.v;
        c = cross(r,r_v);
        h = power(norm(r_v),2)/2 - hi_2/norm(r);
        E = cross(r_v,c)/hi_2 - r/norm(r);
end