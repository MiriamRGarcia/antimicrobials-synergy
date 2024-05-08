clear all
clc

get_data
load results
disp('Note that I need to multiply K by ln(10) to be consistent and represent the growth in cfus not in log-cfus, <<<< see line with pp(3)=pp(3)*log(10)')
disp('Press enter to continue')
pause

nBAC=size(Dat.N,1);
nexp=size(Dat.N,2);
ncur=size(Dat.N,3);
cont=1;

for iBac=1:nBAC
    for iExp=1:nexp
        clear ll
        for iCur=1:ncur
            pp=prev.Dat.xbest{iBac,iExp,iCur};
            pp(3)=pp(3)*log(10);
            
            mod='';
            if pp(1)>1e-3
                mod=[mod,'Logistic + '];
                if pp(5)<1
                    mod=[mod,'with Lag + '];
                end
            end

            if pp(3)>0 & pp(4)<1
                mod=[mod,'Hom + '];
            end
            if pp(3)>0 & pp(4)==1
                    mod=[mod,'Chick-Watson + '];
            end
            
            p{1}=num2str(pp(1),'%.2f');
            p{2}=num2str(pp(2),'%.2f');
            p{5}=num2str(pp(5),'%.2f'); %%a0
            p{3}=num2str(pp(3),'%.2f');
            p{4}=num2str(pp(4),'%.2f');
                    if pp(5)==1
                p{5}=num2str(1);
            end
            
            if pp(1)<1e-3
                p{1}=num2str(0);
                p{2}='-';
                p{5}='-';
            end
    
            
     
            
            if pp(4)==1
                p{4}=num2str(1);
            end
            
                   if pp(3)==0
                p{3}=num2str(0);
                p{4}='-';
                   end
            
            if iBac==1 & iExp==1 & iCur==1

                ll{iCur}=['\multirow{16}[2]{*}{\rotatebox[origin=c]{90}{\textit{B. cereus}}}'];
                bla{cont,1}=ll{iCur};disp(bla{cont,1});cont=cont+1;

            end
            if iBac==2 & iExp==1 & iCur==1
                ll{iCur}=['\\'];
                bla{cont,1}=ll{iCur};disp(bla{cont,1});cont=cont+1;
                
                ll{iCur}=['\multirow{16}[2]{*}{\rotatebox[origin=c]{90}{\textit{E. coli}}}'];
                bla{cont,1}=ll{iCur};disp(bla{cont,1});cont=cont+1;

            end
            
  
            ll{iCur}=['&',Dat.cur{iBac,iExp,iCur},' & ',mod(1:end-3),' & ',p{1},' & ',p{2},' & ',p{5},' & ',p{3},' & ',p{4},'\\'];%[p(1) p(2) p(5) p(3) p(4)]
            bla{cont,1}=ll{iCur};%disp(bla{cont,1});
            cont=cont+1;
            disp([p{1},' & ',p{2},' & ',p{5},' & ',p{3},' & ',p{4},'\\'])
 
            
            
        end

    end

end




