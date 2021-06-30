 function VectAllPacAllCh( config )
%% CREACIÓN VECTOR TODOS_PACIENTES_TODOS_CANALES

%% Enlistado de Matrices de Carpeta
DirP='OnePac_AllCh';
MyFolderInfo = dir(DirP);
FolderInfo = struct2cell(MyFolderInfo)';
NReg=length(FolderInfo(:,1));
RegsAPAC(:,1)=FolderInfo(3:NReg,1); %Los registros se detallan desde la fila 3 de FolderInfo
NRegsAPAC = length(RegsAPAC(:,1));
DivsRegsAPAC=split(RegsAPAC(1,1),{'reg','tim'});
nSegAPAC=char(DivsRegsAPAC{2,1});

VectAPACInt=[];
VectAPACPre=[];

%% Concatenación de los 3 Pacientes
     for APACpac=2:config.nPacientes+1
                   
NameAPAC=['VectOPACdePac' num2str(APACpac-1) 'sec' num2str(config.nSecuencia) 'reg' nSegAPAC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's'];
fprintf('Vector= %s\n',NameAPAC);
StructAPAC=load(NameAPAC);
ValAPACtot=StructAPAC.valIntPre;
[rowValAPACtot,columValAPACtot]=size(ValAPACtot);
ValAPACInt=ValAPACtot(1:rowValAPACtot/2,:);
ValAPACPre=ValAPACtot(rowValAPACtot/2+1:rowValAPACtot,:);

VectAPACInt=[VectAPACInt;ValAPACInt];
VectAPACPre=[VectAPACPre;ValAPACPre];

     end
     
     VectAPACt=[VectAPACInt;VectAPACPre];
%% Concatenación con Clases

[RowVectAPAC,ColumVectAPAC]=size(VectAPACt);
VectIntAPAC=zeros(RowVectAPAC/2,1);
VectPreAPAC=ones(RowVectAPAC/2,1);
VectTotAPAC=[VectIntAPAC;VectPreAPAC];
VectTotLblAPAC=[VectTotAPAC,VectAPACt];

%% Guardar Archivo .mat

NameAPACout=['VectAPACsec' num2str(config.nSecuencia) 'reg' nSegAPAC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's'];
pathAPAC='pathAllPacAllCh';
SaveParFor( config,pathAPAC,NameAPACout,VectAPACt );
  

%% Guardar Archivo .csv con Etiquetas

NameLblAPACout=['VectlblAPACsec' num2str(config.nSecuencia) 'reg' nSegAPAC 'tim' num2str(config.iniseg) 's' num2str(config.finseg) 's.csv'];
pathLblAPAC='pathAllPacAllCh';
TableTotal = array2table(VectTotLblAPAC,'VariableNames',config.FeaturesAllChannel');
writetable(TableTotal,fullfile(config.(pathLblAPAC),NameLblAPACout));

end



