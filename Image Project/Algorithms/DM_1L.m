function x =DM_1L(img,fact)


x=repmat(-1,size(img,1)*fact,size(img,2)*fact,3);%repeat matrix of new size and values (-1)
I=1;
J=1;

%put main points
for k=1:3
for(i=1:fact:size(img,1)*fact)%1?old rows
    for(j=1:fact:size(img,2)*fact)%1?old col
       x(i,j,k)=img(I,J,k);
       
        if(J+1<=size(img,2))
        J=J+1;
        else
            J=1;
        end
        
    end
  if I+1<=size(img,1)
    I=I+1;
  else
      I=1;
  end
  
    J=1;
end
end

%----------------------
for k=1:3
for i=1:size(x,1)
    for j=1:fact:size(x,2)
        if(j+fact<=size(x,2)&& x(i,j+fact,k)~=-1)
        if(x(i,j,k)>x(i,j+fact,k))
            u=1;
            for(a=j+fact-1:-1:j+1)
                x(i,a,k)=round((x(i,j,k)-x(i,j+fact,k))/fact)*u+x(i,j+fact,k);
                u=u+1;
            end
        elseif(x(i,j,k)<=x(i,j+fact,k))
            u=1;
              for(a=j+1:j+fact-1)
                x(i,a,k)=round((x(i,j+fact,k)-x(i,j,k))/fact)*u+x(i,j,k);
                u=u+1;
              end
                
        end
        else
            for(a=j:size(x,2))
            x(i,a,k)=x(i,j,k);
            
            end
            
        end
        
            
    end
end
end

%----------------------------

for k=1:3
 for j=1:size(x,2)
     for(i=1:fact:size(x,1))
        if i+fact<= size(x,1) && x(i+fact,j,k)~=-1
         if x(i,j,k)<=x(i+fact,j,k)
             u=1;
         for a=i+1:i+fact-1
             x(a,j,k)=round((x(i+fact,j,k)-x(i,j,k))/fact)*u+x(i,j,k);
             u=u+1;
         end
         else
             u=1;
             for a=i+fact-1:-1:i+1
             x(a,j,k)=round((x(i,j,k)-x(i+fact,j,k))/fact)*u+x(i+fact,j,k);
             end
         
         end
        else
           for(a=i:size(x,1))
            x(a,j,k)=x(i,j,k);
            
            end
        end
     end
 end
end
   x=uint8(x);
figure,imshow(img),title('Original')
figure,imshow(x),title('Resized')
end

