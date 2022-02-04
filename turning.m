function [A, r, theta, g, c] = turning(i, r, hi_2, c, h, omega)
    A = rotate_by_x(i);
    A = inv(A);
    r = (A * r')';
    u = acos(r(1)/norm(r));
    w = 1/norm(r) - hi_2/power(norm(c),2);
    A1 = sqrt(hi_2*hi_2/power(norm(c),4) + 2*h/power(norm(c),2));
    theta = acos(w/A1);
    g = u - theta;
    if (~isnan(omega))
        A = rotate_by_z(omega) * rotate_by_x(i);
    else
        A = rotate_by_z(g);
    end
    A = inv(A);
    r = (A * r')';
    A = rotate_by_x(i) * rotate_by_z(g);
    A = inv(A);
    c = A * c';
end

