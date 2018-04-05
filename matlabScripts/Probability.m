% ? ¡¯Normal¡¯ Gaussian distribution (¡¯mu¡¯ and ¡¯sigma¡¯ parameters);
% ? ¡¯Uniform¡¯ Uniform distribution (¡¯lower¡¯ and ¡¯upper¡¯ parameters); 
% ? ¡¯Binomial¡¯ Binomial distribution (¡¯N¡¯ and ¡¯p¡¯ parameters);
% ? ¡¯Beta¡¯ Beta distribution (¡¯a¡¯ and ¡¯b¡¯ parameters);

X = makedist('Normal','mu',3,'sigma',4)

% X.pdf(5) %pdf at x = 5
% X.cdf(3) %CDF for x = 3
% X.icdf(0.05) %inverse CDF for alpha = 0.05

% X.random(100,1)
normrnd(0,1,100,1)