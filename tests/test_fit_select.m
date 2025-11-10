addpath(fullfile('..','src'));
% tiny synthetic
s=12; T=80; t=(1:T)'; y = sin(2*pi*t/s) + 0.5*cos(2*pi*t/s) + 0.1*randn(T,1);
best = select_model(y, s, 0:4, 0:3, 'bic');
disp(best.N); disp(best.K);  % not asserting exact, just sanity printing
