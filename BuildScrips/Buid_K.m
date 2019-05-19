function K = Buid_K(k)

    
    n = length(k)-1;
    K = zeros(n,n);
    if n == 1
        K(1,1) = k(1)+k(2);
    elseif n==2
        K(1,1) = k(1)+k(2);
        K(1,2) = -k(2);
        K(2,1) = -k(2);
        K(2,2) = k(2)+k(3);
    else
    K(1,1) = k(1)+k(2);
    K(1,2) = -k(2);
    K(n,n) = k(n)+k(n+1);
    K(n,n-1) = -k(n);
    
    for i = 2:n-1
        K(i,i) = k(i)+k(i+1);
        K(i,i-1) = -k(i);
        K(i,i+1) = -k(i+1);
    end
    end
end