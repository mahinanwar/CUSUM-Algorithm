function g = algoCUSUM()

%%
x=x1;
% x(1001:10000)= 1.5*x(1001:10000);
N = 20;
T = 50000;
Nb = round(T/N);
clear LLR
sig0=std(x0);
sig0=(0.04)^2;
u0=0;
u1=0;

for i=N+1:T
    in11 = i-N; in12 = i+N;
    in01 = in11-2*N; in02 = in11-1;
    if in01<=0
        in01=1;
    end
    if i>N
        sig0 = std(x(in01:in02));
        if sig0>0.04
            sig0=0.04^2;
        end
        u0 = mean(x(in01:in02));
    end
    sig1 = std(x(in11:in12));
    if sig1<0.07/3^2
        sig1 = 0.07/3^2;
    end

    u1 = mean(x(in11:in12));
    LLR(i-N) = calculateLLR(x1(i),u0,sig0,u1,sig1);
     if rem(i,500)==0
        i
    end
end


clear g
g(1)=0;
for i = 2:T-N-6
    g(i) = g(i-1)+LLR(i+6);
    
    if rem(i,500)==0
        i
    end
    g(i) = max([0,g(i)]);
end
t=2000;
xi=(1:length(g))/1000;
semilogy(xi(5:t),g(5:t))
