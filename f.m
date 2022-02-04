function temp = f(time, summm, cur_vector, m, tao, G)
    n_summ = summm * tao + cur_vector * time / (G * m);
    temp = n_summ * G * m;
end

