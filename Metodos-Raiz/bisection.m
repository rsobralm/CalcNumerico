function app = bisection(f,a,b,limit) 
    do
        fa = f(a);
        fb = f(b);
        xi = (a+b)/2;
        fxi = f(xi);
        disp(strcat("a: ", num2str(a), " b: ",num2str(b), " xi: ", num2str(xi), " f(a) = ", num2str(fa), " f(b) = ", num2str(fb), " f(xi) = ", num2str(fxi)));
        
        if((fa * fxi) < 0)
            b = xi;
        else
            a = xi;
        endif

    until(abs(fxi) < limit)
    
    app = fxi;
endfunction