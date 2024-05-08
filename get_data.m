
tdis=[0:0.1:24];
tt=[0 2 4 8 12 16 24];

cc={'b','g','r','c','m','y','k'};

%% Exp 1 Bcereus
iBac=1;Dat.Bac{iBac}='Bcereus';
iExp=1;Dat.Exp{iBac,iExp}='BZK-EUG';
%

%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[1.13E+06 1.09E+08 8.73E+08 3.10E+09 7.70E+09 9.30E+09 2.19E+09 ];
Dat.N{iBac,iExp,iCur,2}=[1.30E+06 7.17E+07 1.00E+09 4.93E+09 4.33E+09 2.93E+09 2.61E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='BZK8';
Dat.N{iBac,iExp,iCur,1}=[1.33E+06 8.87E+05 1.02E+05 3.93E+06 1.25E+07 3.80E+07 1.20E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.78E+06 8.27E+05 9.90E+04 4.83E+06 8.30E+06 1.83E+07 6.97E+07 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='EUG800';
Dat.N{iBac,iExp,iCur,1}=[1.22E+06 1.09E+07 8.73E+07 9.43E+07 7.70E+07 9.30E+07 2.60E+07  ];
Dat.N{iBac,iExp,iCur,2}=[1.34E+06 7.17E+06 1.00E+08 9.27E+07 4.33E+07 2.93E+07 6.63E+07 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='BZK8-EUG800';
Dat.N{iBac,iExp,iCur,1}=[1.32E+06 1.83E+03 1.03E+03 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[1.43E+06 2.13E+03 4.33E+02 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];

%% Exp 2 Bcereus
%
iBac=1;Dat.Bac{iBac}='Bcereus';
iExp=2;Dat.Exp{iBac,iExp}='BZK-CAR';
%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[1.73E+06 6.30E+07 5.60E+08 9.50E+08 2.01E+09 2.64E+09 1.58E+09 ];
Dat.N{iBac,iExp,iCur,2}=[1.33E+06 9.80E+07 1.00E+09 1.42E+09 3.70E+09 3.50E+09 1.34E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='BZK4';
Dat.N{iBac,iExp,iCur,1}=[2.25E+06 1.10E+06 2.87E+05 2.08E+06 1.17E+07 1.44E+07 1.99E+08 ];
Dat.N{iBac,iExp,iCur,2}=[2.40E+06 1.19E+06 5.30E+05 2.46E+06 1.90E+07 1.72E+07 2.31E+08 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='CAR100';
Dat.N{iBac,iExp,iCur,1}=[2.31E+06 1.95E+06 3.73E+06 2.07E+07 1.20E+08 7.13E+07 1.18E+08 ];
Dat.N{iBac,iExp,iCur,2}=[2.52E+06 2.59E+06 2.26E+06 3.10E+07 1.24E+08 1.28E+08 2.32E+08 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='BZK4-CAR100';
Dat.N{iBac,iExp,iCur,1}=[1.67E+06 7.00E+02 9.00E+01 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[1.32E+06 3.33E+02 9.00E+01 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];

%% Exp 3 Bcereus
%
iBac=1;Dat.Bac{iBac}='Bcereus';
iExp=3;Dat.Exp{iBac,iExp}='DDAC-CAR';
%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[1.14E+06 3.50E+07 9.70E+08 1.56E+09 3.20E+09 9.13E+09 8.90E+09 ];
Dat.N{iBac,iExp,iCur,2}=[1.71E+06 3.00E+07 6.67E+08 2.20E+09 6.97E+09 7.93E+09 7.17E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='DDAC1';
Dat.N{iBac,iExp,iCur,1}=[2.57E+06 2.23E+05 2.77E+07 1.06E+08 1.41E+08 1.33E+08 1.48E+09 ];
Dat.N{iBac,iExp,iCur,2}=[2.47E+06 3.40E+05 4.07E+07 1.23E+08 9.97E+07 2.13E+08 1.84E+08 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='CAR100';
Dat.N{iBac,iExp,iCur,1}=[1.06E+06 7.13E+05 5.33E+06 2.37E+07 8.63E+07 9.50E+07 1.30E+08 ];
Dat.N{iBac,iExp,iCur,2}=[9.37E+05 9.27E+05 1.19E+07 9.13E+07 6.00E+07 7.00E+07 1.35E+08 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='DDAC1-CAR100';
Dat.N{iBac,iExp,iCur,1}=[1.05E+06 9.00E+01 9.00E+01 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[1.50E+06 9.00E+01 9.00E+01 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];


%% Exp 4 Bcereus
%
iBac=1;Dat.Bac{iBac}='Bcereus';
iExp=4;Dat.Exp{iBac,iExp}='DDAC-EUG';
%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[2.07E+06 5.60E+07 3.60E+08 2.34E+09 7.70E+09 5.67E+09 3.83E+09 ];
Dat.N{iBac,iExp,iCur,2}=[1.82E+06 5.20E+07 7.73E+08 2.02E+09 4.27E+09 8.30E+09 5.50E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='DDAC05';
Dat.N{iBac,iExp,iCur,1}=[1.43E+06 3.73E+07 7.77E+07 1.38E+08 2.70E+08 3.43E+08 3.93E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.37E+06 2.53E+07 1.42E+08 3.23E+08 4.80E+08 5.33E+08 7.27E+08 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='EUG800';
Dat.N{iBac,iExp,iCur,1}=[1.31E+06 8.87E+06 6.63E+07 1.88E+08 9.33E+07 9.53E+07 1.84E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.30E+06 9.57E+06 5.40E+07 8.93E+07 2.03E+08 8.03E+07 7.83E+07 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='DDAC05-EUG800';
Dat.N{iBac,iExp,iCur,1}=[1.36E+06 6.17E+03 2.67E+03 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[1.11E+06 3.67E+03 2.60E+03 9.00E+01 9.00E+01 9.00E+01  9.00E+01 ];


%% Exp 1 E coli
%
iBac=2;Dat.Bac{iBac}='Ecoli';
iExp=1;Dat.Exp{iBac,iExp}='BZK-CAR';
%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[1.11E+06 6.03E+07 6.00E+08 7.63E+08 2.45E+09 1.92E+09 1.54E+09 ];
Dat.N{iBac,iExp,iCur,2}=[1.09E+06 1.15E+08 8.97E+08 1.50E+09 2.57E+09 2.53E+09 2.41E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='BZK4';
Dat.N{iBac,iExp,iCur,1}=[9.57E+05 1.29E+06 9.20E+05 9.67E+07 2.78E+08 4.77E+08 1.18E+09 ];
Dat.N{iBac,iExp,iCur,2}=[8.87E+05 1.67E+06 1.01E+06 1.31E+08 2.48E+08 2.57E+08 1.03E+09 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='CAR200';
Dat.N{iBac,iExp,iCur,1}=[1.00E+06 1.95E+06 3.73E+06 2.07E+07 1.20E+08 7.13E+07 1.18E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.14E+06 2.59E+06 2.26E+06 3.10E+07 1.24E+08 1.28E+08 2.32E+08 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='BZK4-CAR200'; 
Dat.N{iBac,iExp,iCur,1}=[8.67E+05 8.97E+03 4.40E+03 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[8.00E+05 8.80E+03 5.00E+03 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];


%% Exp 2 E coli
%
iBac=2;Dat.Bac{iBac}='Ecoli';
iExp=2;Dat.Exp{iBac,iExp}='DDAC-CAR';
%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[1.74E+06 5.60E+07 1.64E+09 1.95E+09 2.58E+09 1.94E+09 1.67E+09 ];
Dat.N{iBac,iExp,iCur,2}=[1.44E+06 1.03E+08 1.87E+09 2.24E+09 3.47E+09 3.53E+09 2.21E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='DDAC1';
Dat.N{iBac,iExp,iCur,1}=[2.26E+06 2.43E+05 4.27E+05 7.60E+07 1.56E+08 4.23E+08 6.83E+08 ];
Dat.N{iBac,iExp,iCur,2}=[2.84E+06 3.63E+05 7.20E+05 7.03E+07 2.52E+08 7.17E+08 8.57E+08 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='CAR200';
Dat.N{iBac,iExp,iCur,1}=[2.40E+06 2.53E+06 4.60E+06 2.02E+07 2.79E+07 4.90E+07 1.33E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.46E+06 4.57E+06 2.19E+06 2.77E+07 7.30E+07 8.23E+07 7.00E+07 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='DDAC1-CAR200'; 
Dat.N{iBac,iExp,iCur,1}=[1.20E+06 1.50E+03 1.27E+02 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[2.53E+06 2.33E+03 9.67E+01 9.00E+01 9.00E+01 9.00E+01 9.00E+01 ];


%% Exp 3 E coli
%
iBac=2;Dat.Bac{iBac}='Ecoli';
iExp=3;Dat.Exp{iBac,iExp}='BZK-EUG';
%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[3.57E+05 1.11E+08 9.30E+08 2.47E+09 3.80E+09 2.82E+09 2.55E+09 ];
Dat.N{iBac,iExp,iCur,2}=[2.53E+06 6.30E+07 5.67E+08 1.82E+09 2.36E+09 1.73E+09 1.39E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='BZK16';
Dat.N{iBac,iExp,iCur,1}=[9.43E+05 1.29E+04 1.77E+04 2.13E+05 1.68E+06 9.53E+07 1.86E+09 ];
Dat.N{iBac,iExp,iCur,2}=[8.87E+05 1.28E+04 1.91E+04 2.11E+05 2.48E+06 8.53E+07 1.03E+09 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='EUG800';
Dat.N{iBac,iExp,iCur,1}=[1.45E+06 1.90E+06 1.82E+07 2.70E+07 1.00E+08 2.18E+08 3.50E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.48E+06 1.52E+06 2.09E+07 4.20E+07 9.37E+07 2.57E+08 6.93E+08 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='BZK16-EUG800'; 
Dat.N{iBac,iExp,iCur,1}=[8.63E+05 2.17E+04 5.07E+03 9.00E+02 8.67E+02 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[8.33E+05 2.40E+04 8.13E+03 1.60E+03 9.00E+01 9.00E+01 9.00E+01 ];

%% Exp 4 E coli
%
iBac=2;Dat.Bac{iBac}='Ecoli';
iExp=4;Dat.Exp{iBac,iExp}='DDAC-EUG';
%
iCur=1;
Dat.cur{iBac,iExp,iCur}='Control';
Dat.N{iBac,iExp,iCur,1}=[1.04E+06 1.11E+08 5.67E+08 2.30E+09 3.97E+09 2.50E+09 5.80E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.33E+06 6.90E+07 9.30E+08 2.70E+09 4.97E+09 5.40E+09 1.37E+09 ];

iCur=2;
Dat.cur{iBac,iExp,iCur}='DDAC05';
Dat.N{iBac,iExp,iCur,1}=[9.53E+05 4.57E+07 2.93E+08 9.87E+08 2.28E+09 2.11E+09 1.39E+09 ];
Dat.N{iBac,iExp,iCur,2}=[8.60E+05 2.60E+07 3.23E+08 1.42E+09 2.43E+09 2.80E+09 2.55E+09 ];

iCur=3;
Dat.cur{iBac,iExp,iCur}='EUG800';
Dat.N{iBac,iExp,iCur,1}=[1.14E+06 1.62E+06 1.10E+07 6.90E+07 1.35E+08 3.23E+08 1.80E+08 ];
Dat.N{iBac,iExp,iCur,2}=[1.14E+06 1.27E+06 9.83E+06 9.83E+07 1.31E+08 4.13E+08 1.05E+08 ];

iCur=4;
Dat.cur{iBac,iExp,iCur}='DDAC05-EUG800'; 
Dat.N{iBac,iExp,iCur,1}=[1.19E+06 4.23E+04 2.43E+04 5.00E+02 9.00E+01 9.00E+01 9.00E+01 ];
Dat.N{iBac,iExp,iCur,2}=[1.17E+06 3.50E+04 2.43E+04 2.00E+02 9.00E+01 9.00E+01 9.00E+01 ];


%%
for iBac=1:size(Dat.N,1)
    for iExp=1:size(Dat.N,2)
        for iCur=1:size(Dat.N,3)
            Dat.logNmea{iBac,iExp,iCur}=mean([log10(Dat.N{iBac,iExp,iCur,1});log10(Dat.N{iBac,iExp,iCur,2})]);
            Dat.logNstd{iBac,iExp,iCur}=std([log10(Dat.N{iBac,iExp,iCur,1});log10(Dat.N{iBac,iExp,iCur,2})]);
        end
    end
end
return