function out_im = lineary_imagefilter(img);
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
[rows,cols]=size(img);
im=double(img);
out_im=double(img);
marg=1;
for i=1+marg:rows-marg
    for j=1+marg:cols-marg
        m=abs(im(i-1,j)-im(i+1,j));
        n=abs(im(i,j-1)-im(i,j+1));
        a=1/2*(im(i-1,j)+im(i+1,j));
        b=1/2*(im(i,j-1)+im(i,j+1));
        if m>n
            out_im(i,j)=b;
        else
            out_im(i,j)=a;
        end
   
    end
end
out_im=uint8(out_im);
imshow(out_im);
end

