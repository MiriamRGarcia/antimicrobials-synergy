clear all
filename=['results','.xlsx'];
load results
delete(filename)
%
for iBac=1:size(Dat.Bac,2)
    for iExp=1:size(Dat.Exp,2)
        for iCur=1:size(Dat.cur,3)
            aa{1,1}='Sampling times';
            aa{1,2}='mean log10(N)';
            aa{1,3}='std log10(N)';
            aa{1,4}='';
            aa{1,5}='Simulated times';
            aa{1,6}='Simulated data';
            aa{1,7}=Dat.model{iBac,iExp,iCur};
            aa{1,8}='p1';
            aa{1,9}='p2';
            aa{1,10}='p3';
            aa{1,11}='p4';
            aa{1,12}='p5';
            aa{1,13}='AIC';
            cont=2;
            
            for ii=1:size(tt,2);
                aa{cont,1}=tt(ii);
                aa{cont,2}=Dat.logNmea{iBac,iExp,iCur}(ii);
                aa{cont,3}=Dat.logNstd{iBac,iExp,iCur}(ii);
                cont=cont+1;
            end
            
            cont=2;
            for ii=1:size(tdis,2)
                aa{cont,5}=tdis(ii);
                aa{cont,6}=Dat.xsim{iBac,iExp,iCur}(ii);
                if ii==1
                    aa{cont,8}=Dat.xbest{iBac,iExp,iCur}(1);
                    aa{cont,9}=Dat.xbest{iBac,iExp,iCur}(2);
                    aa{cont,10}=Dat.xbest{iBac,iExp,iCur}(3);
                    aa{cont,11}=Dat.xbest{iBac,iExp,iCur}(4);
                    aa{cont,12}=Dat.xbest{iBac,iExp,iCur}(5);
                    aa{cont,13}=Dat.fbest{iBac,iExp,iCur};
                end
                cont=cont+1;
            end

            writetable(table(aa),filename,'Sheet',[Dat.Bac{iBac},' ',Dat.Exp{iBac,iExp},' ',Dat.cur{iBac,iExp,iCur}],'WriteVariableNames',0)

        end
    end
end



