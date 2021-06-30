function SelecRegsExtrac( chsre,config )

%% IGUALDAD DE REGISTROS PARA LOS 3 PACIENTES
% Iguala el número de registros para todos los pacientes, basado en el mínimo 
% número de registros entre los 3.

config.ch = chsre;
    
%% Nombres Registros de Entrada 

RegsTotPac1Canal=['RegsTotalAnalisisPac1Ch' num2str(config.ch)];
RegsTotPac2Canal=['RegsTotalAnalisisPac2Ch' num2str(config.ch)];
%RegsTotPac3Canal=['RegsTotalAnalisisPac3Ch' num2str(config.ch)];

%% Cálculo del mínimo número de registros entre los 3 pacientes

RegsPac1 = load(fullfile(config.pathselecDrops,RegsTotPac1Canal));
RegsPac2 = load(fullfile(config.pathselecDrops,RegsTotPac2Canal));
%RegsPac3 = load(fullfile(config.pathselecDrops,RegsTotPac3Canal));

[nRegsPac1,m1] = size(RegsPac1.val); %nRegsPac=número de registros del paciente
[nRegsPac2,m2] = size(RegsPac2.val); %nRegsPac=número de registros del paciente
%[nRegsPac3,m3] = size(RegsPac3.val); %nRegsPac=número de registros del paciente

nRegsMinTotal = min([nRegsPac1,nRegsPac2]); % Se crea un array del número de registros de los 3 pacientes dentro de la función 'min'

%% Vectores de registros finales por paciente

vectPac1 = [1:nRegsMinTotal/2,nRegsPac1/2+1:nRegsPac1/2+nRegsMinTotal/2];
vectPac2 = [1:nRegsMinTotal/2,nRegsPac2/2+1:nRegsPac2/2+nRegsMinTotal/2];
%vectPac3 = [1:nRegsMinTotal/2,nRegsPac3/2+1:nRegsPac3/2+nRegsMinTotal/2];

%% Nombres Registros de Salida

RegsExtPac1Canal=['RegsParaExtraccionPac1Ch' num2str(config.ch)];
RegsExtPac2Canal=['RegsParaExtraccionPac2Ch' num2str(config.ch)];
%RegsExtPac3Canal=['RegsParaExtraccionPac3Ch' num2str(config.ch)];

%% Escritura de archivos

val= RegsPac1.val(vectPac1',:);
save(fullfile(config.pathselecExtrac,RegsExtPac1Canal),'val');

val= RegsPac2.val(vectPac2',:);
save(fullfile(config.pathselecExtrac,RegsExtPac2Canal),'val');

% val= RegsPac3.val(vectPac3',:);
% save(fullfile(config.pathselecExtrac,RegsExtPac3Canal),'val');

end

