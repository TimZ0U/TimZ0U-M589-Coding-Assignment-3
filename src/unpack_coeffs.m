function coef = unpack_coeffs(beta, N, K)

    coef.c = beta(1);
    coef.d = beta(2);
    coef.a = beta(3:N+2);
    coef.alpha = beta(N+2+1 : N+K+2);
    coef.beta  = beta(N+K+2+1 : N+2*K+2);
end

