clear     %clear the workspace
clc       %clear the command window
close all %close all the previously opened figures

% help function_name

% initialize variables
a = 15;
b = 5;

c = a+b;

% reserved variables
% i, j, pi, eps, Inf, Nan

% if a > b
%     fprintf('a is greater than b!\n')
% elseif a<b
%     fprintf('a is smaller than b!\n')
% else
%     fprintf('a equals b\n')
% end

% ind = 10;
% while ind>0
%     fprintf('i value is %i\n', ind)
%     ind = ind - 1;
% end

% for ii = %vector
% end

% switch a
%     case 5
%         fprintf('a is 5!')
%     case 10
%         fprintf('a is 10')
%     otherwise
%         fprintf('ERROR')
% end


row_vec=[1,2,3,4,5];

col_vec=[1;2;3;4;5];

% ii=4;
% row_vec(ii)
% index start from 1

% idx=logical([0 1 0 1 1])
% row_vec(idx)

% row_vec=[row_vec,row_vec]
% % concat row vec
% row_vec(end+1)=5
% % add a 5 into the end of rv

% row_vec=[4 7 2]
% row_vec(8)=10

% column_vec=row_vec'
% % transpose of matrix

% val_ini=9;
% step=15;
% val_end=223;
% % v=[val_ini:step:val_end]
% % % v= val_ini:step:val_end
% % % v= val_ini:val_end
% 
% % n_points=20;
% % linspace(val_ini, val_end, n_points)

% row_vec=5:15
% indexes=[1,8,3];
% sub_vec1=row_vec(indexes)
% indexes=1:4;
% sub_vec2=row_vec(indexes)
% log_indexes=logical([1 0 0 0 1 0 0 1 0 0 0 0]);
% sub_vec3=row_vec(log_indexes)


% A=[1,2;3,4];
% % B=[1 2;3 4]
% 
% A(1,2);
% A(3);
% 
% aa=A(:)
% % get all values in A

% A = zeros(5)
% A = zeros(3,4)
% A = ones(5)
% A = rand(4)


% A = eye(5);
% a = A(:,3) ;
% % select column
% b = A(2,:);
% %select row
% 
% A(:,3) = 2
% A(3:end,3:end)=1
% A(:,3) = [1:5]


% a = [1 2 3];
% b = [1 2 4];
% % c = a+b
% % c = c*2
% 
% % c = [1;2;3];
% % a*c

% length(v) %length of vector
% numel(M) %number of element in a matrix
% size(M) %vectof of the matrix dimensions
% find(p) % indexes of a vector satisfying p
% round() % round of a number
% ceil(x) % round toward positive infinity
% floor(x) % round toward negative infinity
% fix(x) % round toward 0
% max(v) % maximum
% min(v) % minimum
% mean(v) % average value of a vector
% mod(m,n) % module n operation
% sin(x) %sine
% cos(x) %cosine
% exp(x) %base e exponential
% log(x) %base e logarithm

% disp('Hello world');
% fprintf('%s\n','It is me');

% cell_vec = cell(3,1); %instantiate a cell vector of dimension 3x1
% cell_vec{1} = 1;
% cell_vec{2} = 'hello';
% cell_vec{3} = zeros(4);
% cell_vec

% a = 0; b = 1;
% a && b %and
% % a & b %bit by bit and
% a || b %or
% % a | b %bit by bit or
% ~a %not bit by bit
% a == b %equal
% a ~= b %not equal
% a > b %greater
% a < b %smaller

















