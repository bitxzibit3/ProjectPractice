function [p, e, a] = determinate_traectory(c, hi2, h)
        p = power(norm(c),2) / hi2;
        e = sqrt(1 + 2*h*power(norm(c),2)/(hi2*hi2));
        a = p/(1-e*e);
        if ((0<=e) && (e<1))
            disp("Эллипс")
        else
            disp("Гипербола")
        end
end