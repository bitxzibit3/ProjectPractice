function [b1, b2, bc] = rotating_r_and_v(b1, b2, bc, A)
b1.r = A * (b1.r)';
b1.v = A * (b1.v)';

b2.r = A * (b2.r)';
b2.v = A * (b2.v)';

bc.r = A * (bc.r)';
bc.v = A * (bc.v)';
end

