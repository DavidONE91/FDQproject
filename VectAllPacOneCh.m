function VectAllPacOneCh( APOCch,config )

%% CONSTRUCCIÓN VECTOR TODOS_PACIENTES_UN_CANAL

%% Determinar número de segmentos
DirP='Pac1';
MyFolderInfo = dir(DirP);
FolderInfo = struct2cell(MyFolderInfo)';
NReg=length(FolderInfo(:,1));
RegsAPOC(:,1)=FolderInfo(3:NReg,1); %Los registros se detallan desde la fila 3 de FolderInfo
% NRegsAPOC = length(RegsAPOC(:,1));
DivsRegsAPOC=split(RegsAPOC(1,1),{'reg','tim'});
nSegAPOC=char(DivsRegsAPOC{2,1});
%% Concatenación de Pacientes

fprintf('Canal= %d\n',APOCch);
VectAPOCInt=[];
VectAPOCPre=[];

for PacAPOC=1:config.nPacientes
    
NameAPOC=['VectOPOCdePac' num2str(PacAPOC) 'Ch' num2str(APOCch) 'sec' num2str(config.nSecuencia) 'reg' nSegAPOC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's'];
fprintf('Vector= %s\n',NameAPOC);
ValAPOC=load(NameAPOC);
ValAPOCtot=ValAPOC.valIntPre;
[rowValAPOCtot,columValAPOCtot]=size(ValAPOCtot);
ValAPOCInt=ValAPOCtot(1:rowValAPOCtot/2,:);
ValAPOCPre=ValAPOCtot(rowValAPOCtot/2+1:rowValAPOCtot,:);

VectAPOCInt=[VectAPOCInt;ValAPOCInt];
VectAPOCPre=[VectAPOCPre;ValAPOCPre];

end

VectAPOCIntPre=[VectAPOCInt;VectAPOCPre];

%% Concatenación con Clases

[RowVectAPOC,ColumVectAPOC]=size(VectAPOCIntPre);
VectIntAPOC=zeros(RowVectAPOC/2,1);
VectPreAPOC=ones(RowVectAPOC/2,1);
VectTotAPOC=[VectIntAPOC;VectPreAPOC];
VectTotLblAPOC=[VectTotAPOC,VectAPOCIntPre];

%% Guardar Archivo .mat

NameAPOCout=['VectAPOCdeCh' num2str(APOCch) 'sec' num2str(config.nSecuencia) 'reg' nSegAPOC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's'];
pathAPOC='pathAllPacOneCh';
SaveParFor( config,pathAPOC,NameAPOCout,VectAPOCIntPre );
  
%% Guardar Archivo .csv con Etiquetas

NameLblAPOCout=['VectlblAPOCdeCh' num2str(APOCch) 'sec' num2str(config.nSecuencia) 'reg' nSegAPOC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv'];
pathLblAPOC='pathAllPacOneChLabels';
TableTotal = array2table(VectTotLblAPOC,'VariableNames',config.Features');
writetable(TableTotal,fullfile(config.(pathLblAPOC),NameLblAPOCout));

end

