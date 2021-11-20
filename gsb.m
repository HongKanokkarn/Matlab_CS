%Kanokkarn Pinkeaw 6222790147
function [Q,R]=gsb(A)
n=size(A,1);
Q=zeros(n);
R=zeros(n);
for j=1:n
    v(:,j)=A(:,j);
end
for j=1:n
        R(j,j)= norm(v(:,j));
        Q(:,j)= v(:,j)/R(j,j);
        for i=j+1:n
            R(j,i)=Q(:,j)'*v(:,i);
            v(:,i)=v(:,i)-R(j,i)*Q(:,j);
        end
end
