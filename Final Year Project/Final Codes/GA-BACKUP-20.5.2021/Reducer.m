function Z = Reducer(x)
% Defining Parameters

% Objective the Function
elec = 20e-03;
tao = 5000;
Cph = 1122;
Cpc = 1073;
mc = 2;
mh = 1.66;
TempH = 900;
TempC = 200;
Prh = 0.731;
Prc = 0.694;
Cmin = mh * Cph;
Cmax = mc * Cpc;
Cr = Cmin / Cmax;
roi = 0.1;
Z = 10;
Acf = (roi)/(1-(1+roi)^-Z);



of = ((Acf * 90 * ((x(1)*x(2)*x(7)*(1+2*x(5)*(x(3)-x(4)))) + (x(1)*x(2)*x(7)*(1+2*x(5)*(x(3)-x(4)))))^0.6)) + (((tao*elec*(((2)*( (9.6243*(((1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))/4.01e-05)^-0.7422*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^-0.1856*( x(4) / x(6))^0.3053*( x(4) / ((1 / x(5) ) - x(4)))^-0.2659)*(1+7.669e-08*(((1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))/4.01e-05)^4.429*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^0.920*( x(4) / x(6))^3.767*( x(4) / ((1 / x(5) ) - x(4)))^0.236)^0.1)*x(1)*(( 1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7)))^2))/((0.6296)*( ((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))*10e-4)*mh)/(0.6*0.6296))+((tao*elec*(((2)*( (9.6243*(((2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4))))) / 3.36e-05)^-0.7422*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^-0.1856*( x(4) / x(6))^0.3053*( x(4) / ((1 / x(5) ) - x(4)))^-0.2659)*(1+7.669e-08*(((2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4))))) / 3.36e-05)^4.429*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^0.920*( x(4) / x(6))^3.767*( x(4) / ((1 / x(5) ) - x(4)))^0.236)^0.1)*x(2)*(( 2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1)))^2))/((0.9638)*( ((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))*10e-4)*mc)/(0.6*0.9638)));

% Defining the Constraints
c0=[];
c0(1)=0.134-(((1/x(5)-x(4)))/(x(3)-x(4)));                                 % <=0 type constraints
c0(2)=(((1/x(5)-x(4)))/(x(3)-x(4)))-0.997;                                 % <=0 type constraints
c0(3)=0.012-(x(4)/x(6));
c0(4)=(x(4)/x(6))-0.048;
c0(5)=0.041-(x(4)/((1/x(5)-x(4))));
c0(6)=(x(4)/((1/x(5)-x(4))))-0.121;
c0(7)=120-(((1.66/((x(3)-x(4))*(1-x(5)*x(4))*x(1)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(4.01*10^-5));
c0(8)=(((1.66/((x(3)-x(4))*(1-x(5)*x(4))*x(1)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(4.01*10^-5))-10000;
c0(9)=120-(((2.00/((x(3)-x(4))*(1-x(5)*x(4))*x(2)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(3.36*10^-5));
c0(10)=(((2.00/((x(3)-x(4))*(1-x(5)*x(4))*x(2)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(3.36*10^-5))-10000;
c0(11)=(((2*(9.6243*((((1.66/((x(3)-x(4))*(1-x(5)*x(4))*x(1)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(4.01*10^-5))^-0.7422)*((((1/x(5)-x(4)))/(x(3)-x(4)))^-0.1856)*((x(4)/x(6))^0.3053)*((x(4)/((1/x(5)-x(4))))^-0.2659)*(1+(7.669*10^-8)*((((1.66/((x(3)-x(4))*(1-x(5)*x(4))*x(1)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(4.01*10^-5))^4.429)*((((1/x(5)-x(4)))/(x(3)-x(4)))^0.920)*((x(4)/x(6))^3.767)*((x(4)/((1/x(5)-x(4))))^0.236))^0.1)*x(2)*(1.66/((x(3)-x(4))*(1-x(5)*x(4))*x(1)*x(7)))^2)/(0.6296*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))*10^-3))-9.5;
c0(12)=(((2*(9.6243*((((2.00/((x(3)-x(4))*(1-x(5)*x(4))*x(2)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(3.36*10^-5))^-0.7422)*((((1/x(5)-x(4)))/(x(3)-x(4)))^-0.1856)*((x(4)/x(6))^0.3053)*((x(4)/((1/x(5)-x(4))))^-0.2659)*(1+(7.669*10^-8)*((((2.00/((x(3)-x(4))*(1-x(5)*x(4))*x(2)*x(7)))*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))/(3.36*10^-5))^4.429)*((((1/x(5)-x(4)))/(x(3)-x(4)))^0.920)*((x(4)/x(6))^3.767)*((x(4)/((1/x(5)-x(4))))^0.236))^0.1)*x(1)*(2.00/((x(3)-x(4))*(1-x(5)*x(4))*x(2)*x(7)))^2)/(0.9638*((4*((1/x(5))-x(4))*x(6)*(x(3)-x(4)))/(2*(((1/x(5))-x(4))*x(6)+(x(3)-x(4))*x(6)+(x(3)-x(4))*x(4))+x(4)*((1/x(5))-x(4)))))*10^-3))-8;
c0(13)=(x(3) - 2*x(4) + x(7)*(2*x(3)+2*x(4)))-1.5;
c0(14)=1068.9 - (((1 - exp((1/Cr)*( ((1 / ((1/(((((0.6522*(((1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))/4.01e-05)^-0.5403*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^-0.1541*( x(4) / x(6))^0.1499*( x(4) / ((1 / x(5) ) - x(4)))^-0.0678)*(1+5.269e-05*(((1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))/4.01e-05)^1.34*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^0.504*( x(4) / x(6))^0.456*( x(4) / ((1 / x(5) ) - x(4)))^-1.055)^0.1) *(1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7)))* 1122 * 0.731^(-2/3))*10^-3)*( x(1)*x(2)*x(7)*(1+2*x(5)*(x(3)-x(4))))))+(1/(((((0.6522*(((2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4))))) / 3.36e-05)^-0.5403*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^-0.1541*( x(4) / x(6))^0.1499*( x(4) / ((1 / x(5) ) - x(4)))^-0.0678)*(1+5.269e-05*(((2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4))))) / 3.36e-05)^1.34*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^0.504*( x(4) / x(6))^0.456*( x(4) / ((1 / x(5) ) - x(4)))^-1.055)^0.1) * (2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * 1073 * 0.694^(-2/3))*10^-3)*( x(1)*x(2)*x(7)*(1+2*x(5)*(x(3)-x(4)))))))) / (mh * Cph))*10^3)^0.22*(exp(-Cr*(((1 / ((1/(((((0.6522*(((1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))/4.01e-05)^-0.5403*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^-0.1541*( x(4) / x(6))^0.1499*( x(4) / ((1 / x(5) ) - x(4)))^-0.0678)*(1+5.269e-05*(((1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4)))))/4.01e-05)^1.34*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^0.504*( x(4) / x(6))^0.456*( x(4) / ((1 / x(5) ) - x(4)))^-1.055)^0.1) *(1.66 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(2)*x(7)))* 1122 * 0.731^(-2/3))*10^-3)*( x(1)*x(2)*x(7)*(1+2*x(5)*(x(3)-x(4))))))+(1/(((((0.6522*(((2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4))))) / 3.36e-05)^-0.5403*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^-0.1541*( x(4) / x(6))^0.1499*( x(4) / ((1 / x(5) ) - x(4)))^-0.0678)*(1+5.269e-05*(((2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * (((4)*(((1 / x(5) ) - x(4)))*(x(6))*(x(3) - x(4)))/(2*((((1 / x(5) ) - x(4))*x(6))+(x(3)-x(4))*x(6)+(x(3) - x(4))*x(4))+x(4)*((1 / x(5) ) - x(4))))) / 3.36e-05)^1.34*(((1 / x(5) ) - x(4)) / (x(3) - x(4)))^0.504*( x(4) / x(6))^0.456*( x(4) / ((1 / x(5) ) - x(4)))^-1.055)^0.1) * (2 / ((x(3) - x(4))*(1 - x(5)*x(4))*x(1)*(x(7)+1))) * 1073 * 0.694^(-2/3))*10^-3)*( x(1)*x(2)*x(7)*(1+2*x(5)*(x(3)-x(4)))))))) / (mh * Cph))*10^3)^0.78)-1))) * Cmin * (TempH - TempC))*10^-3);

% Defining penalty for each constraint
for i=1:length(c0)
 if c0(i)>0
 c(i)=1;
 else
 c(i)=0;
 end
end
penalty=10000; % penalty on each constraint violation

% Solving
Z=of+penalty*sum(c);


