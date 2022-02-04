function [b1, b2, bc] = init_data(b1, b2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
b1.m = input ('m первого тела: ');
b1.v = input ('v первого тела: ');
b1.r = input ('r первого тела: ');
b2.m = input ('m второго тела: ');
b2.v = input ('v второго тела: ');
b2.r = input ('r второго тела: ');
bc.m = (b1.m + b2.m);
bc.r = (b1.r * b1.m + b2.r * b2.m)/ bc.m;
bc.v = (b1.v * b1.m + b2.v * b2.m)/ bc.m;
end

