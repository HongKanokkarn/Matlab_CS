function inv = questionA(A)
    [n,~] = size(A);
    [L,U,P] = lu(A);
    I = eye(n);
    inv = zeros(n);
    
    for i = 1:n
        i_hat = P*I(:,i);
        zero_hat = zeros(size(i_hat));
        for j = 1:n
            zero_hat(j) = i_hat(j)/L(j,j);
            for k = j+1:n
                i_hat(k) = i_hat(k) - (L(k,j)*zero_hat(j));
            end
        end
        
        i_x = zeros(size(zero_hat));
        for j = n:-1:1
            i_x(j) = zero_hat(j)/U(j,j);
            for k = 1:j-1
                zero_hat(k) = zero_hat(k) - (U(k,j)*i_x(j));
            end
        end
        
        inv(:,i) = i_x;
        
    end
end  
          