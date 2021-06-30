%% Borrar carpetas para evitar Sobreescritura

%% Borrado Carpeta Features
whichfolder = 'Features';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_por_drops
whichfolder = 'SeleccionPorDrops';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'SeleccionRegsExtrac';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'AllPac_AllCh';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'AllPac_OneCh';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'AllPac_OneCh_Labels';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'OnePac_AllCh';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'OnePac_AllCh_Labels';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'Pac1';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'Pac1_Labels';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'Pac2';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'Pac2_Labels';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'Pac3';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end

%% Borrado Carpeta Seleccion_registros_extraccion
whichfolder = 'Pac3_Labels';
dinfo = dir(fullfile(whichfolder,'*.*'));
%dinfo(dinfo.isdir) = [];    %remove the directories from consideration
for K = 1 : length(dinfo)
  thisfile = fullfile(whichfolder, dinfo(K).name);
  delete(thisfile);
end