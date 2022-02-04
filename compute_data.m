function [hi_2, h, r, r_v, c, E, i, omega, g, theta, p, e, a, A, direction] = compute_data(G, eps, b1, b2, bc)
[hi_2, r, r_v, c, h, E] = compute_general_consts (G, b1, b2, bc);
[i, omega, direction] = compute_orbit_oriantaion (c, eps);
[p, e, a] = determinate_traectory(c, hi_2, h);
[A, r, theta, g, c] = turning(i, r, hi_2, c, h, omega);
end