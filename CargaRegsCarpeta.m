function [ output_args ] = Untitled5( input_args )

%% Carga de registros de carpeta
MyFolderInfoOPOC = dir('SeleccionRegsExtrac');
FolderInfoOPOC = struct2cell(MyFolderInfoOPOC)';
NRegOPOC=length(FolderInfoOPOC(:,1));
RegsOPOC=FolderInfoOPOC(3:NRegOPOC,1); %Los registros se detallan desde la fila 3 de FolderInfo
NumRegsOPOC = length(RegsOPOC(:,1));

end

