function [J] = cost(p,dat)


%%%% sim model
[t,xx]=ode15s(@model,dat.t,dat.x(1),[],p);
xx(xx<2)=2;

% AIC
nd=size(xx,1)-1;
np=0;
if p(3)>0
    np=np+1;
    if p(4)<1
        np=np+1;
    end
end

if p(1)>1e-3
    np=np+2;
    if p(5)<1
        np=np+1;
    end
end

wls=((xx'-dat.x)/0.5).^2;
AIC_wls=nd*log(sum(wls)/nd)+2*(np+1);
AICc=AIC_wls+(2*np^2+2*np)/(nd-np-1);
J=AIC_wls;

end

