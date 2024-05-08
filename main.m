clear all
close all
figure
set(gcf,'OuterPosition',[-1          35        2564        1406])


get_data

problem.f='cost';
opts.prob_bound=1;
opts.maxtime=1;
opts.local.solver='fmincon';

nBAC=size(Dat.N,1);
nexp=size(Dat.N,2);
ncur=size(Dat.N,3);
for iBac=1:nBAC
    for iExp=1:nexp
        clear ll
        for iCur=1:ncur
            %%% OPT
            try 
                prev=load('results','Dat');
            problem.x_0=prev.Dat.xbest{iBac,iExp,iCur};
            catch
                disp('No previous best soluction used as starting point')
            end
            if iCur==1
                problem.x_U=[100 	100     0 	1 	1   ];
                problem.x_L=[0      6.5  	0 	1 	1e-6];
                %  problem.x_0=[0          6.5               0      1     1e-6];
            end
            dat.x=Dat.logNmea{iBac,iExp,iCur};
            dat.std=Dat.logNstd{iBac,iExp,iCur};
            dat.t=tt;
            R=ess_kernel(problem,opts,dat);
            
            %%% plot
            [t,xx]=ode15s(@model,tdis,dat.x(1),[],R.xbest);
            xx(xx<2)=2;
            Dat.logNsim{iBac,iExp,iCur}=xx;
            Dat.xbest{iBac,iExp,iCur}=R.xbest;
            Dat.fbest{iBac,iExp,iCur}=R.fbest;
            if iCur==1
                problem.x_U=[R.xbest(1) R.xbest(2) 500   	1  1];
                problem.x_L=[0,         6.5         0       0  1e-6];
            end
            
            subplot(nBAC,nexp,iExp+(iBac-1)*nexp),errorbar(dat.t,dat.x,dat.std,'.','color',cc{iCur});hold on
            subplot(nBAC,nexp,iExp+(iBac-1)*nexp),plot(dat.t,dat.x,'*',tdis,xx,'color',cc{iCur},'HandleVisibility','off');
            % 1 mu, 2 x_m, 3 k, 4 m, 5 a0
            mod='Model=';
            if R.xbest(1)>1e-3
                mod=[mod,' Logistic'];
                if R.xbest(5)<1
                    mod=[mod,' withLag'];
                end
            end

            if R.xbest(3)>0
                mod=[mod,' Bactericide'];
                if R.xbest(4)<1
                    mod=[mod,'Hom'];
                end
            end
            ll{iCur}=[Dat.cur{iBac,iExp,iCur},' AIC=',num2str(R.fbest),'  ',mod];
            Dat.tsim{iBac,iExp,iCur}=tdis;
            Dat.xsim{iBac,iExp,iCur}=xx;
            Dat.model{iBac,iExp,iCur}=mod;
        end
        
        ylim([0,10])
        legend(ll,'location','best')
        legend show
        title([Dat.Bac{iBac},'    ',Dat.Exp{iBac,iExp}])
        drawnow
    end

end
save results
hgsave('results')
get_excel
delete 'ess_report.mat'



