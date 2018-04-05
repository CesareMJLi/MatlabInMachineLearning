clear
clc
close all

% for the iris_dataset
% we have Sepal Length/Sepal Width/Petal Length/Petal Width
% we have N=150 sample
% we have 3 species, Iris Setosa/ Iris Vieginica/ Iris Versicolor

% Linear Regression: feature xn-petal length/////target yn-petal width

%% Initialization
load iris_dataset.mat;

% figure();
% gplotmatrix(M');
x = M(:,3)';
t = M(:,4)';

figure();
plot(x,t,'bo');
xlabel('petal length');
ylabel('petal width');

%% Preprocessing
x = zscore(x);
t = zscore(t);
figure();
plot(x,t,'bo');
% normalize the data

%% Fit
fit_specifications = fittype( {'1', 'x'}, 'independent', 'x', 'dependent', 't', 'coefficients', {'w0', 'w1'} );
[fitresult, gof] = fit( x', t', fit_specifications);
% X must be a matrix with one or two columns.

hold on;
plot(fitresult);

% %% Other fit functions
% ls_model = fitlm(x,t);


%% By hand regreession
n_sample = length(x)
Phi = [ones(n_sample,1) x']
% Phi is a two column matix
mpinv = pinv(Phi' * Phi) * Phi';
% help pinv
w = mpinv * t';

hat_t = Phi * w;
bar_t = mean(t');
SSR = sum((t'-hat_t).^2)
R_squared = 1 - SSR / sum((t'-bar_t).^2)

%% Ridge and lasso
lambda = 10^(-10);
ridge_coeff = ridge(t', Phi, lambda);

[lasso_coeff, lasso_fit] = lasso(Phi, t');







