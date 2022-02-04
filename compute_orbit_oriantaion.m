function [i, omega, direction] = compute_orbit_oriantaion(c, eps)
        i = compute_angle_from_vectors(c, [0.0,0.0,1.0]);
        % q_intersect - направлящий вектор прямой пересечения  OXY с (с1X + c2Y +c3z=0)
        q_intersect = cross(c, [0.0,0.0,1.0]);
        if ((i<eps) || abs(pi - i)<eps)
            omega = nan;
        else
            omega = compute_angle_from_vectors(q_intersect, [1.0, 0.0, 0.0]);
        end
        if ((0 <= i) && (i < pi/2))
            direction = "WtoE";
        else
            direction = "EtoW";
        end
end

