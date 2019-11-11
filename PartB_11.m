%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%  CODE B (Pressure - Velocity)  %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% Adrian Granados de la Torre  %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%  Miquel Altadill Llasat  %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%  Francesc Garcia-Duran   %%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%  Sergi Tarroc Gil   %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% -----------------------  DESCRIPTION  -------------------------% 
% This file contains all the functions needed to solve the case of
% study. This code section shows the function structure. You can 
% find a description of how each function works inside each own file.
%
% The Final Report document shows the theorical development of the
% problem. 


clear all
more off

InputData

tic;
[u_next, v_next] = SolverShell(L,N);

PostProcessors (L,u_next,v_next);

toc;
fprintf('Solver Time %f\n',toc); 
