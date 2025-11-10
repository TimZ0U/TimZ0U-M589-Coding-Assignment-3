function yF = forecast(y, s, coef, H)
y = y(:);               
T = numel(y);           
N = numel(coef.a);      
K = numel(coef.alpha);  


yF = zeros(H,1);
for h = 1:H
    t = T + h;

    seasonal = 0;
    for k=1:K
        seasonal = seasonal + coef.alpha(k)*cos(2*pi*k*t/s) + coef.beta(k)*sin(2*pi*k*t/s);
    end

    prediction = coef.c + coef.d * t + seasonal;

    for i = 1:N
        if h-i <= 0
            prediction = prediction + coef.a(i)*y(T-(i-1));
        else
            prediction = prediction + coef.a(i)*yF(h-i);
        end
    end
    yF(h) = prediction;
end
end
