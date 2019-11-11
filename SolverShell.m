%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%  SOLVER SHELL  %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ---------------------  DESCRIPTION  -----------------------% 
% This function iterates the solver over the different mesh 
% sizes specifyed in the 'InputData.m'  file. 
%
% -----------------  INPUT PARAMETERS  --------------------%
% N  =  Number of Mesh nodes
% L  =  Domai Length 
%
% -----------------  OUTPUT PARAMETERS  -------------------%
% u_next  = 
% v_next  =  
%
% ---------------  COMPUTE PARAMETERS  --------------------%
% d  =  CV face length
% L  =  Domai Length 
%
% ----------------------  DATA STORED  ----------------------% 
%
% max_error_conv  = Saves  Convective error for postprocessing
% max_error_diff  = Saves  Diffusive error for postprocessing


function [u_next, v_next] = SolverShell(L,N)

%---- Generate random predictive velocity field ----

% -- NUMERICAL VELOCITY FIELD -- %

u_p = VelocityField (N);
v_p = VelocityField (N);

%---- Solve predictive pressure ----
pp = pseudo_p(u_p,v_p,L);

%---- Solve u_n+1 for calculated pressure ---
[grad_ppx,grad_ppy] = grad(pp,L);

u_next = u_p-grad_ppx;
v_next = v_p-grad_ppy;

end