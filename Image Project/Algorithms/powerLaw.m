function Newimage=powerLaw(oldim,gamma)%gamma<1?Brightness and gamma >1?Darkness
oldim=im2double(oldim);
[row, col, ch]=size(oldim);
Newimage=zeros(row,col,ch);
for k=1:ch
    for i=1:row
      for j=1:col
          Newimage(i,j,k)=power((oldim(i,j,k)),gamma);
      end
    end
end
Newimage=constrast(Newimage,0,255);

figure;subplot(1,2,1), imshow(oldim),title('old');
subplot(1,2,2), imshow(Newimage),title('new');






end