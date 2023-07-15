NumAgents = 50; %number of agents

Q=rand(NumAgents, 2);

numdays = 100;

M = 100; %xdir of your world
N = 100; %ydir

TotalTime = 0;
if TotalTime M <= N
    TotalTime = M;
else
    TotalTime = N;
end

%initialize agent move to don't move
xmove=0;
ymove=0;
TW = zeros(M, N);%reset world  to have no agents
TW(1,:)=5;
TW(:,N)=5;
TW(M,:)=5;
TW(:,1)=5;

for days=1:numdays
    days
    P=ones(NumAgents,2); %starting position for all agents (1,1)
    for time = 1:TotalTime-1
        W = zeros(M, N);%reset world  to have no agents

        for agent = 1:NumAgents

           
            %compute the xdirection move as 0 or 1
            %if TW(P(agent,1)+1, P(agent,2)+1)== 1
            %xmove = 1;
            %ymove = 1;

            %else
            if TW(P(agent,1)+1,P(agent,2)) < (0.5 * NumAgents)
              
                Q(agent,1) = abs(Q(agent,1) - TW(P(agent,1)+1,P(agent,2)) * NumAgents);
            else
                Q(agent,1) = abs(Q(agent,1) - 0.5 * NumAgents);
            end  
            
            if TW(P(agent,1),P(agent,2)+1) > (0.5 * NumAgents)
                
                Q(agent,2) = abs(Q(agent,2) - TW(P(agent,1),P(agent,2)+1) * NumAgents);
            else
                Q(agent,2) = abs(Q(agent,2) - 0.5 * NumAgents);
            end  
            

            if rand(1)>Q(agent,1)
                xmove=0;
            else
                xmove=1;
            end

            if rand(1)>Q(agent,2)
                ymove=0;
            else
                ymove=1;
            end


            %end
            if (P(agent,2) + ymove) > N
                continue
            else
                P(agent, 2)=P(agent, 2) + ymove;
            end
            if (P(agent,1) + xmove) > M
                continue
            else
                P(agent, 1)=P(agent, 1) + xmove;
            end
            W(P(agent,1), P(agent,2)) = 1;

        end%agent loop
        TW=TW+W;
        %visualize current locations with W
        heatmap(TW);
        colormap(jet(1000))
        drawnow

    end%time loop
end %days loop

STW = sort(TW(:));
mv = max(STW);

dp = sum(STW(:) >= 25);
ndp = M*N-dp;

cells = [ndp dp];
cellsCat = categorical(cells,[ndp dp],{'non-desire path cells','desire path cells'});
h = histogram(cellsCat,'BarWidth',0.5);
