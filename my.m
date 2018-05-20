y1=imread('cam1.jpg');
imshow(y1);
x1=rgb2gray(y1);
bw1=edge(x1,'sobel',.02,'nothinning');
imshow(bw1);
%y2=imread('edit.jpg');
%x2=rgb2gray(y2);
%bw2=edge(x2,'sobel',.02,'nothinning');
%figure,imshow(bw2);
%k=imabsdiff(bw1,bw2);
%figure,imshow(k);
%BW = roipoly(bw1);
%k=imabsdiff(bw1,BW);
BW=imread('cam1roi.jpg');
k=BW&bw1;
w=fspecial('average');
g=imfilter(k,w);
%figure,imshow(g);
c=[0 648 648 0];
r=[135 135 413 413];
roi1=roipoly(g,c,r);
%figure,imshow(roi1);
r=[0 0 225 225];
roi3=roipoly(g,c,r);
%figure,imshow(roi3);
newbw1=g-roi1;
newbw2=g-roi3;
r=[0 0 135 135 225 225 413 413];
c=[0 648 648 0 0 648 648 0];
roi2=roipoly(g,c,r);
newbw3=g-roi2;
%figure,imshow(roi2);
figure,imshow(newbw1);
figure,imshow(newbw2);
%figure,imshow(newbw3);
newbw1=newbw1&g;
newbw2=newbw2&g;
newbw3=newbw3&g;
count1=nnz(newbw1)
count2=nnz(newbw2)
count3=nnz(newbw3)
s=serial('COM1','BaudRate',9600,'DataBits',8);
try
fopen(s);
if count1<1000 && count3<5000
    fprintf(s,'e');
end
if count1<1000 && count3>=5000
    fprintf(s,'d');
else fprintf(s,'c');
end
catch err
    %h = msgbox('Its because PORTS are virtually Shorted and not Physically');
    %msgbox=('Its because PORTS are virtually Shorted and not Physically');
fclose(s);
end
%y3=gradient(z1);
%SE = eye(5);
%bw3 = imerode(k,SE);
%figure,imshow(bw3);
%count1 = 92416
%count2 =189698
%count3 =159548