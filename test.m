img=imread('lena.jpg');
figure(1);
t=lineary_imagefilter(img);
figure(2);
y=lineary_imagefilter(t);
n=lineary_imagefilter(y);
figure(3);
p=lineary_imagefilter(n);
m=lineary_imagefilter(p);
m1=m;
figure(4);
for i=1:15;
    m1=lineary_imagefilter(m1);
end;

imwrite(t,'Lena1.jpg','jpg');
imwrite(n,'Lena2.jpg','jpg');
imwrite(m,'Lena3.jpg','jpg');
imwrite(m1,'Lena4.jpg','jpg');




 