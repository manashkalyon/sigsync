function plot_objs = makeplot(file)
    hold on;
    f = csvread(file);
    colsize = size(f,2);
    
    timeax = f(:,1);
    
    celldat = {};
    plot_objs = [];
    
    for i = 2:colsize
        celldat{i-1} = horzcat(timeax,f(:,i));
    end
    
    for i = 1:length(celldat)
        plot_objs(i) = plot(celldat{i}(:,1),celldat{i}(:,2));
    end
    
    
end
