function answer = questionB(xi,n)
    x = 1;
    fact = 1;
    answer = 1;
    
    for i = 1:n
        x = x * xi;
        fact = fact * i;
        answer = answer + (x/fact);
    end
end
