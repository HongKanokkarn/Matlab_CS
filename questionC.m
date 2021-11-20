function ans = questionC(x_in,n)
    x = 1;
    fact = 1;
    ans = 1;
    
    
    
    if x_in >= 0
        for i = 1:n
            x = x * x_in;
            fact = fact*i;
            ans = ans + (x/fact);
        end
    else
        ans = 1/questionC(abs(x_in),n);
    end
end
        