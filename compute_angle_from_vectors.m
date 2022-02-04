function [angle] = compute_angle_from_vectors(a, b)
angle = acos(dot (a, b) / (norm(a) * norm(b)));
end