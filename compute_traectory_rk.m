function [r1_c, r2_c, summ, r1, r2, rk] = compute_traectory_rk(time, summ, r1, r2, v02, v01, tao, G, m1, m2, bc_r, bc_v)
    rc = bc_r + bc_v * time;
    k1 = f(tao, summ, [0., 0., 0.], -m1, tao, G);
    k2 = f(3 * tao / 2, summ, (k1 * tao / 2), -m1, tao, G);
    k3 = f(3 * tao / 2, summ, (k2 * tao / 2), -m1, tao, G);
    k4 = f(2 * tao, summ, k3 * tao, -m1, tao, G);
    r2 = r2 + v02 * tao + (k1 + k2 * 2 + k3 * 2 + k4) / 6;
    k1 = f(tao, summ, [0., 0., 0.], m2, tao, G);
    k2 = f(3 * tao / 2, summ, (k1 * tao / 2), m2, tao, G);
    k3 = f(3 * tao / 2, summ, (k2 * tao / 2), m2, tao, G);
    k4 = f(2 * tao, summ, k3 * tao, m2, tao, G);
    r1 = r1 + v01 * tao + (k1 + k2 * 2 + k3 * 2 + k4) / 6;
    rk = r2 - r1;
    summ = summ + (rk / power(norm(rk), 3)) * tao;
    temp1 = r1 - rc;
    r1_c = [temp1(1), temp1(2)];
    temp2 = r2 - rc;
    r2_c = [temp2(1), temp2(2)];
end

