function app = secant(f, x_kp, xk, limit)

    do
        
        f_xkp = f(x_kp);
        f_xk = f(xk);
        x_kn = (x_kp*f_xk - xk*f_xkp)/(f_xk - f_xkp);

        disp(strcat("x_k-1: ", num2str(x_kp), " x_k: ", num2str(xk)," f(x_k-1): ",num2str(f_xkp), " f(x_k): ", num2str(f_xk), " x_k+1 = ",
        num2str(x_kn)));

        x_kp = xk;
        xk = x_kn;

    until(abs(f_xk) < limit)

    app = xk;
endfunction