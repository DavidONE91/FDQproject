clear
clc
tic
tf=[];
cont=0;

for Pac=1:3
    for Ch=1:16 
        cont=cont+1;
        RegFor=['RegsTotalAnalisisPac' num2str(Pac) 'Ch' num2str(Ch)];
        RegParFor=['parRegsTotalAnalisisPac' num2str(Pac) 'Ch' num2str(Ch)];
        RegForVal=load(RegFor);
        RegParForVal=load(RegParFor);
        RegForValMat=RegForVal.val;
        RegParForValMat=RegParForVal.val;
        tf(cont,1) = strcmp(RegForValMat,RegParForValMat);
    end
end

if sum(tf)== 48 
    fprintf('Resultados de For y ParFor SI concuerdan\n');
else
    fprintf('Resultados de For y ParFor NO concuerdan\n');
end

toc