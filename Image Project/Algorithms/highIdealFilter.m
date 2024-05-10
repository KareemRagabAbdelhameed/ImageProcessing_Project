function Ift=highIdealFilter(Image,D0)

ft=fft2(Image);
fts=fftshift(ft);
Real=real(fts);
Im=imag(fts);
D_value=0;
[M,N,ch]=size(Image);
if(ch~=1)
    Image=rgb2gray(Image);
end
filter=zeros(size(Image));
%%%fill filter
for k=1:ch
    for u=1:M
        for v=1:N
            D_value=power((power(u-M/2,2)+power(v-N/2,2)),.5);
            if D_value<D0 || D_value == D0
               filter(u,v,k)=1-1;
            else
                filter(u,v,k)=1-0;
            end

        end
    end
end
%%%multiplication
for k=1:ch
    for r=1:M
        for col=1:N
            Real(r,col,k)=Real(r,col,k)*filter(r,col,k);
            Im(r,col,k)=Im(r,col,k)*filter(r,col,k);
            
        end
    end
end
         
FT=ifftshift(Real+i*Im);
Ift=ifft2(FT);


Ift=uint8(Ift);
figure;subplot(1,2,1),imshow(Image),title('oreginal');
subplot(1,2,2),imshow(Ift),title('high Ideal Filter');










end
