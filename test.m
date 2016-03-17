img=imread('lena.jpg');
figure(1);
t=lineary_imagefilter(img);
figure(2);
y=lineary_imagefilter(t);
figure(3);
n=lineary_imagefilter(y);
figure(4);
m=lineary_imagefilter(n);
m1=m;
figure(5);
for i=1:10;
    m1=lineary_imagefilter(m1);
end;
imwrite(t,'Lena1.jpg','jpg');
imwrite(y,'Lena2.jpg','jpg');
imwrite(n,'Lena3.jpg','jpg');
imwrite(m,'Lena4.jpg','jpg');
imwrite(m1,'Lena5.jpg','jpg');



 