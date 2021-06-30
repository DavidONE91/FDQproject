function SaveParFor( config,pathPac,MatrizF,valIntPre )
%% FUNCIÓN PARA GUARDAR UN ARCHIVO .MAT.
%Se realiza de esta forma por el uso de Parallel Computer Toolbox (parfor)
save(fullfile(config.(pathPac),MatrizF),'valIntPre');

end

