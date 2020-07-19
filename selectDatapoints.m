function [x,y] = selectDatapoints(ax)
    % Remove any pre-existing rectanlges (if any)
    delete(findall(ax, 'Type',  'images.roi.Rectangle'))
    
    % Get coordinates of all data points in the axes
    xyobj = findall(ax.Children, '-Property','xData'); 
    xydata = get(xyobj, {'XData','YData'});
    xydataMat = cell2mat(xydata'); 
    
    % change title of axes to instructions, in red
    originalTitle = get(ax.Title, {'String', 'Color'}); 
    set(ax.Title, 'String', 'Draw rectangle around desired datapoints', 'Color', 'r')
    % allow user to draw rectangle; see more options:
    % https://www.mathworks.com/help/images/ref/drawrectangle.html
    pan(ax, 'off') %turn off panning so the interaction doesn't drag the data.
    roi = drawrectangle(ax); 
    
    % quit if figure is closed
    if ~isvalid(roi)
       x = []; 
       y = []; 
       return
    end
    
    % Return original title
    set(ax.Title, 'String', originalTitle{1}, 'Color', originalTitle{2})
    
    % determine which coordinates are within the ROI
    isIn = xydataMat(1,:) >= roi.Position(1) & xydataMat(1,:) <= sum(roi.Position([1,3])) ...
        & xydataMat(2,:) >= roi.Position(2) & xydataMat(2,:) <= sum(roi.Position([2,4])); 
    
    % Delete ROI
    delete(roi)
    
    % Return outputs
    x = xydataMat(1,isIn); 
    y = xydataMat(2,isIn);    
end