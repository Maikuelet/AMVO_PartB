%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%  VELOCITY FIELD  %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ---------------------  DESCRIPTION  -----------------------% 
% This function computes the velocity field for the case of
% study. It is defined inside the code. 
%
% -----------------  INPUT PARAMETERS  --------------------%
% N  =  Number of Mesh nodes
%
% -----------------  OUTPUT PARAMETERS  -------------------%
% u  = Velocity field [m/s]
%
%
% ----------------------  DATA STORED  ----------------------% 
% u = Data for the velocity field in a [N+2][N+2] matrix 




function [u] = VelocityField (N)

    u = zeros (N+2,N+2);
    
    u (2:N+1,2:N+1) = 2*rand(N)-1; %generate a random field [-1,1]
    
    u = halo_update (u);
    
    
end
    