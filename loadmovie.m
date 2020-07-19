function moviestruct = loadmovie(filepath)

 % --------Syntax---------
% % moviestruct = loadmovie(filepath)
 % --------Descrip--------
% % Generates a 3-d UINT8 struct of all frames from the movie in
% "filepath".
 % -----------------------

v = VideoReader(filepath);


vidWidth = v.Width;
vidHeight = v.Height;
moviestruct = struct('cdata',zeros(vidHeight,vidWidth,3,'uint8'),'colormap',[]);

k = 1;
while hasFrame(v)
    moviestruct(k).cdata = readFrame(v);
    k=k+1;
end
end
