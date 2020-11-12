function [chunks] = chunkit(inds,dat,fs,be,en)
dbstop if error

inds(:,3)=1:size(inds,1);


chunks=nan(size(inds,1),round(fs*[en+be])+1);
f=0;
for x=1:size(inds,1)    
    dum=cevent2cstream(inds(x,:),dat(:,1));

    f=f+1;

    strt=min(find(dum(:,2)==x));
    
    beg=strt-round(be*fs);
    
    eng=strt+round(en*fs);

    lng=[be*fs]+[en*fs]+1;

    if beg<=0
        seg=dat(1:eng,2);
        pad=nan(1,lng-numel(seg));

        chunks(f,:)=[pad seg'];
    elseif eng>size(dat,1)
        seg=dat(beg:end,2);
        pad=nan(1,lng-numel(seg));

        chunks(f,:)=[seg' pad]; 
    elseif isempty(beg)
        chunks(f,:)=nan(1,lng);
    else
        chunks(f,:)=dat(beg:eng,2);
    end 

end

end