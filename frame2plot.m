function [plotobj] = frame2plot(ax,dat)
    
    dat = csvread(dat);
    
    numcols = size(dat);
    numcols = numcols(2);
    
    cellarr = {};
    plotobj = {};
    
    oc = 2; 
    for i = 1:numcols 
        cellarr{i} = horzcat(dat(:,1),dat(:,oc));
        oc=oc + 1;
        
        pltob = plot(ax,cellarr{i}(:,1),cellarr{i}(:,2));
        plotobj{i} = pltob;
        if oc > numcols
            break
        end
    end
    
    
   
    %plotobj = cellarr;
    

end
