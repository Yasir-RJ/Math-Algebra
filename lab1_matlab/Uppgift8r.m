%% A)  Bestäm tre oberoende ekvationer för strömmarna i1, i2 och i3

% R1*i1+R2*i2       =v1  ....(ekv1)
%       R2*i2+R3*i3 =v2  ....(ekv2)
%    i1-   i2+   i3 =0   ....(ekv3)
% V1 =12 volt, V2= 10 volt, R1 =10 ohm, R2=5 ohm och R3= 15 ohm. 
% 10*i1+5*i2 =12
% 5*i2+15*i3 =10
% i1-i2+i3 =0

%% B) Lös systemet i A
% dvs bestäm strömmarna i1, i2 och i3.

syms i1 i2 i3
ekv1 = 10*i1+5*i2 ==12
ekv2 = 5*i2+15*i3 ==10
ekv3 = i1-i2+i3 ==0
[X,Y,Z]=solve(ekv1,ekv2,ekv3,i1,i2,i3);
S=[X,Y,Z] % gör strömmarna i1, i2 och i3 som vektor
fprintf('i1 = %.4f mA\n',double(X))
fprintf('i2 = %.4f mA\n',double(Y))
fprintf('i3 = %.4f mA\n',double(Z))
