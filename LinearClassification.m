clear
clc
close all
% linear classification
load iris_dataset.mat

x=zscore(irisInputs([1 2], :)');
t=irisTargets(1,:)';
gplotmatrix(x,[],t);

%% Perceptron
net = perceptron;
net = train(net, x', t');

n_samples = size(x,1)
perc_t = t;
perc_t(perc_t == 0) = -1;
ind = randperm(n_samples);

perc_t = perc_t(ind);
x_perc = x(ind,:);

w = ones(1,3)
for jj = 1:10
    for ii = 1:n_samples
        if sign(w*[1 x_perc(ii,:)]') ~= perc_t(ii)
            w = w+[1 x_perc(ii,:)]' * perc_t(ii);
        end
    end
end

figure()
gscatter(x(:,1),x(:,2),perc_t);
hold on

s = -2:0.01:2.5
plot(s,~(s*new.IW{1}(1) + net.b{1})/net.IW{1}(2),'k');
plot(s,~(s*w(2)+w(1))/w(3),'r');

%% Logistic Regression

t = t+1;
[B, dev, stats] = mnrfit(x,t);

[t, ~] = find(irisTargets ~= 0);
[B_mul, dev_mul, stats_mul] = mnrfit(x,t);

%% Naive Bayes

nb_model = fitcnb(x,t);
nb_model.DistributionParameters
nb_model.Prior

param = nb_model.DistributionParameters;
prior = cumsum(nb_model.Prior);
n_dim = size(param,2);

n_gen = 1000;
gendata = zeros(n_gen,n_dim);
gentarget = zeros(n_gen,1);

for ii = 1:n_gen
    gentarget(ii) = find(prior > rand(),1);
    for jj = 1:n_dim
        mu = param{gentarget(ii),jj}(1);
        sigma = param{gentarget(ii),jj}(2);
        gendata(ii,jj) = normrnd(mu,sigma);
    end
end


%% KNN

knn_model = fitcknn(x, t, 'NumNeighbors', 3);
%% 