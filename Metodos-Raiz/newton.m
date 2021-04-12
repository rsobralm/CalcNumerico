function app = newton(f, xk, limit)
    
    x_kk = xk;

    do  
        xk = x_kk;
        f_xk = f(xk);
        d_xk = deriv(f,xk);
        x_kk = xk - f_xk/d_xk;

        disp(strcat("x_k: ", num2str(xk), " f(x_k): ",num2str(f_xk), " f!(x_k): ", num2str(d_xk), " x_k+1 = ",
        num2str(x_kk)));

    until(abs(f_xk) < limit && abs(x_kk - xk) < limit)
   
    app = xk;
endfunction