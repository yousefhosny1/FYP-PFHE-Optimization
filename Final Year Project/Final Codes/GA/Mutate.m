function y = Mutate(x, mu, sigma)

    flag = (rand(size(x)) < mu);

    y = x;
    r = randn(size(x));
    y(flag) = x(flag) + sigma*r(flag);
    
end