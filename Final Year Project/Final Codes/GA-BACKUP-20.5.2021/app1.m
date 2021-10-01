clc;
clear;
close all;

%% Problem Definition

problem.CostFunction = @(x) Reducer(x);
problem.nVar = 7;               % Number of Variables
problem.VarMin = [1   1     0.002       0.0001      100        0.001    1];        % Lower Bounds
problem.VarMax = [1   1     0.01        0.0002      1000       0.01     200];      % Upper Bounds

%% GA Parameters
for z=1:10;
params.MaxIt = 100;
params.nPop = 310;

params.beta = 1;
params.pC = 1;
params.gamma = 0.1;
params.mu = 0.02;
params.sigma = 0.1;

%% Run GA

out = RunGA(problem, params);


%% Results

figure(1);
% plot(out.bestcost, 'LineWidth', 2);
semilogy(out.bestcost, 'LineWidth', 2);
xlabel('Iterations');
ylabel('Best Cost');
grid on;
%save figure
saveas(figure(1),[pwd (sprintf('/310 Pop/GA_nosample_60_%d.png',z))]);

%store value
Data(z,1)=out.bestsol.Cost;
Data(z,2:8)=out.bestsol.Position;
end
xlswrite('C:\Users\youse\Desktop\GA-MODIFY\310 Pop\results.xls',Data)

