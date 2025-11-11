% Plot real vs. predicted electricity consumption for Tucson
addpath(fullfile('..','src'));

tbl = readtable('../data/tucsonAZ.csv');
y = tbl.elecuse;      
s = 12;               

Ngrid = 0:8;
Kgrid = 0:3;
criterion = 'bic';

best = select_model(y, s, Ngrid, Kgrid, criterion);
yhat = predict_in_sample(y, s, best.coef);

MSE = mean((y(best.N+1:end) - yhat).^2);
fprintf('Best model: N=%d, K=%d, score=%.3f\n', best.N, best.K, best.score);
fprintf('In-sample MSE = %.6f\n', MSE);

figure;
plot(y, '-b', 'LineWidth', 0.8, 'DisplayName', 'y'); hold on;
plot(best.N+1:length(y), yhat, '-r', 'LineWidth', 0.8, 'DisplayName', 'yhat');
xlabel('Time (months)');
ylabel('Electric use (normalized)');
title('Electric use - Tucson');
legend('Location','best');
grid on;
