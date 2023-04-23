clc;
clear all;
close all;

%%For Activity_1 Pinching 
Pinch=xlsread('Pinching.csv');
Pinching= [Pinch; Pinch];


%%For Activity_2 HairPulling
Hair=xlsread('HairPulling.csv');
HairPulling= [Hair; Hair];

%%For Activity_3 Cutting 
Cutt=xlsread('Cutting.csv');
Cutting= [Cutt; Cutt];

%%For Activity_4 Hitting
Hit=xlsread('Hitting.csv');
Hitting= [Hit; Hit];

%%For Activity_5 Slapping 
Slap=xlsread('Slapping.csv');
Slaping= [Slap; Slap];

%%For Activity_6 Schratching 
Schrat=xlsread('Schratching.csv');
Schratching= [Schrat; Schrat];

%%For Activity_7 Choking
Chok=xlsread('Choaking.csv');
Choking= [Chok; Chok];

%%For Activity_8 Reading
Read=xlsread('Reading.csv');
Reading= [Read; Read];

%%For Activity_9 Walking
Walk=xlsread('Walking.csv');
Walking= [Walk; Walk];

%%For Activity_10 SitStand 
SitStand=xlsread('SitStand.csv');
SitStanding= [SitStand; SitStand];


Pinching_N=Pinching(1:8030,:);
HairPulling_N=HairPulling(1:8030,:);
Cutting_N=Cutting(1:8030,:);
Hitting_N=Hitting(1:8030,:);
Slaping_N=Slaping(1:8030,:);
Schratching_N=Schratching(1:8030,:);
Choking_N=Choking(1:8030,:);
Reading_N=Reading(1:8030,:);
Walking_N=Walking(1:8030,:);
SitStanding_N=SitStanding(1:8030,:);

Data = [Pinching_N; HairPulling_N; Cutting_N; Hitting_N; Slaping_N; Schratching_N; Choking_N; Reading_N; Walking_N; SitStanding_N];


for i=1:80300
[c_data] = ABC_Feature_Extration(Data(i,:));
result(i,:)=struct2array(c_data);
end
 
piOne=0*ones(8030,1);
hpOne=1*ones(8030,1);
cutOne=2*ones(8030,1);
hitOne=3*ones(8030,1);
slapOne=4*ones(8030,1);
schOne=5*ones(8030,1);
choOne=6*ones(8030,1);
readOne=7*ones(8030,1);
walkOne=8*ones(8030,1);
sitstandOne=9*ones(8030,1);

label= [piOne; hpOne; cutOne; hitOne; slapOne; schOne; choOne; readOne; walkOne; sitstandOne];
resultClass=[result label];

 csvwrite('Selfharm_New.csv',resultClass);

