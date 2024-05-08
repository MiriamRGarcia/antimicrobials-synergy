function [dx] = model(t,x,p);
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

lag=p(5)/(p(5)+(1-p(5))*exp(-p(1)*t));
logistic=(p(1)/log(10))*(1-10^(x-p(2)));
bactericide=p(3)*p(4)*(t+1e-6)^(p(4)-1);

dx=lag*logistic-bactericide;


end

