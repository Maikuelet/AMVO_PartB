%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%  POSTPROCESOR %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% --------------------  DESCRIPTION  -----------------------% 
% This function works with the data stored for turning it into
% visual data. (Exampe: Plots)
%

function PostProcessors (L, p1, p2)
   
    %---- Verify u_n+1 is divergence free ----
    div_next = div(p1,p2,L);
    
    max_div = max(max(abs(div_next)));
    
    fprintf('Maximum Divergence =  %e\n ',max_div); 

    

end

