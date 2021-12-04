function cdata = centralized(data,dim)
%   dim=1指按行中心化,dim=2指按列，默认按列
    if (~exist('dim','var'))
        dim=2;
    elseif (ischar(dim) || isstring(dim))
        dim=0;
        M=mean(data(:));
    end
    if dim > 0
        r=size(data,dim);
        for k=1:r
            data(:,k)=data(:,k)-mean(data(:,k));
        end
    else
        data=data-M;
    end
    
    cdata=data;
end
