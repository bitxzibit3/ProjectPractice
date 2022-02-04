function [matrix] = rotate_by_x(phi)
matrix = [[1,0,0];[0,cos(phi),-sin(phi)];[0, sin(phi),cos(phi)]];
end

