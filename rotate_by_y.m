function [matrix] = rotate_by_y(phi)
matrix = [[cos(phi),0,sin(phi)];[0,1,0];[-sin(phi), 0, cos(phi)]];
end

