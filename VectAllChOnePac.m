 function VectAllChOnePac( OPACpac,config )
%% CONSTRUCCIÓN VECTOR UN_PACIENTE_TODOS_CANALES
%% Número de Registros por carpeta
 DirP=['Pac' num2str(OPACpac)];
 MyFolderInfo = dir(DirP);
 FolderInfo = struct2cell(MyFolderInfo)';
 NReg=length(FolderInfo(:,1));
 RegsOPAC=FolderInfo(3:NReg,1); %Los registros se detallan desde la fila 3 de FolderInfo
%  NRegsOPAC = length(RegsOPAC(:,1));

%% Número de Segmentos Utilizados
DivsNSeg=split(RegsOPAC,{'reg','tim'});
nSegOPAC=char(DivsNSeg{1,2});

%% Concatenación registros de carpeta

VectOPAC=[];

for ChOPAC=1:config.nCanales 
    NameOPAC=['VectOPOCdePac' num2str(OPACpac) 'Ch' num2str(ChOPAC) 'sec' num2str(config.nSecuencia) 'reg' nSegOPAC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's'];
    fprintf('Vector: %s \n',NameOPAC);  
    ValOPAC=load(NameOPAC);
    VectOPAC=[VectOPAC,ValOPAC.valIntPre];
end

%% Concatenación de Clases
[RowVectOPAC,ColumVectOPAC]=size(VectOPAC);
VectIntOPAC=zeros(RowVectOPAC/2,1);
VectPreOPAC=ones(RowVectOPAC/2,1);
VectIntPreOPAC=[VectIntOPAC;VectPreOPAC];
VectLblOPAC=[VectIntPreOPAC,VectOPAC];

%% Guardado archivos
NameVectIntPre=['VectOPACdePac' num2str(OPACpac) 'sec' num2str(config.nSecuencia) 'reg' nSegOPAC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's'];
pathOPAC='pathOnePacAllCh';
SaveParFor( config,pathOPAC,NameVectIntPre,VectOPAC );
  
NameLblIntPre=['VectlblOPACdePac' num2str(OPACpac) 'sec' num2str(config.nSecuencia) 'reg' nSegOPAC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv'];
pathLblOPAC='pathOnePacAllChLabels';
TableTotal = array2table(VectLblOPAC,'VariableNames',config.FeaturesAllChannel');
writetable(TableTotal,fullfile(config.(pathLblOPAC),NameLblIntPre));

 end

