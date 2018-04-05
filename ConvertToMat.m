
clear
clc
close all

% transform the .csv to .mat

M=csvread('iris_dataset.csv');
save('iris_dataset.mat','M');