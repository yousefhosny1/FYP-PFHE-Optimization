format short
clear all
clc

%% Initalize the Parameters
fun = @gwo;
N= 60; % Population size
D = 7;  % Dimension of the problem
lb = [0.1   0.1     0.002       0.0001      100        0.001    1];   
ub = [1   1     0.01        0.0002      1000       0.01     200];  
itermax = 500; % Max. Iteration

for z=1:10
%% Generating the initial population
for i = 1:N
    for j=1:D
        pos(i,j) = lb(j)+rand.*(ub(j)-lb(j));
    end
end

%% Evaluate the objective function
fx = fun(pos);

%% Initialize gbest
[fminvalue, ind] = min(fx);
gbest = pos(ind,:);

%% GWO main loop start
iter = 1;
while iter <= itermax
    Fgbest = fminvalue;
    a = 2-2*iter/itermax;
    for i=1:N
        X = pos(i,:);
        pos1 = pos;
        A1 = 2.*a.*rand(1,D)-a;
        C1 = 2.*rand(1,D);
        [alpha, alphaind] = min(fx);
        alphapos = pos1(alphaind,:);
        Dalpha = abs(C1.*alphapos - X);
        X1 = alphapos - A1.*Dalpha;
        pos1(alphaind,:) = [];
        fx1 = fun(pos1);
        [bet, betind] = min(fx1);
        betpos = pos1(betind,:);
        A2 = 2.*a.*rand(1,D)-a;
        C2 = 2.*rand(1,D);
        Dbet = abs(C2.*betpos - X);
        X2 = betpos - A2.*Dbet;
        pos1(betind, :) = [];
        fx1 = fun(pos1);
        [detla, deltaind] = min(fx1);
        deltapos = pos1(deltaind,:);
        A3 = 2.*a.*rand(1,D)-a;
        C3 = 2.*rand(1,D);
        Ddelta = abs(C3.*deltapos - X);
        X3 = deltapos - A3.*Ddelta;
        Xnew = (X1 + X2 + X3)./3;
        Xnew = max(Xnew, lb);
        Xnew = min(Xnew, ub);
        fnew = fun(Xnew);
        % Greedy Selection
        if fnew < fx(i)
            pos (i,:) = Xnew;
            fx (i, :) = fnew;
        end
    end
        % Update GBEST (destination)
        [fmin, find] = min(fx);
        if fmin < Fgbest
            Fgbest = fmin;
            gbest = pos(find,:);
        end
        
        % Memorize the Best
        [optval, optind] = min(fx);
        BestFx(iter) = optval;
        BestX(iter,:) = pos(optind,:);
        
        % Show iteration information
        disp (['Iteration' num2str(iter) ... 
            ': Best Cost = ' num2str(BestFx(iter))]);
        
        % Plotting the result
        plot (BestFx,'k', 'LineWidth', 2);
        xlabel ('Iteration Number');
        ylabel ('Total Annual Cost (TAC)');
        title ('Convergence Vs Iteration');
        grid on
        
        iter = iter + 1;

end
saveas(figure(1),[pwd (sprintf('/70 Pop/GWO_70_%d.png',z))]);

%store value
Data(z,1)=alpha;
Data(z,2:8)=alphapos;

end
xlswrite('C:\Users\youse\Desktop\GWO-MODIFY\70 Pop\results.xls',Data)
        
        