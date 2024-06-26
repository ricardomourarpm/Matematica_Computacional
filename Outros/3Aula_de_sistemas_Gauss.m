# Sem escolha de pivot

M=[1 2 0 1 4; 2 4 1 3 7; 1 2 -1 2 3; 2 1 0 -3 7]
R=M
R(2,:)=R(2,:)-R(2,1)/R(1,1)*R(1,:)
R(3,:)=R(3,:)-R(3,1)/R(1,1)*R(1,:)
R(4,:)=R(4,:)-R(4,1)/R(1,1)*R(1,:)

R([2 4],:)=R([4 2],:)

R(4,:)=R(4,:)-R(4,3)/R(3,3)*R(3,:)

w=R(4,5)/R(4,4)
z=(R(3,5)-R(3,4)*w)/R(3,3)
y=(R(2,5)-R(2,3)*z-R(2,4)*w)/R(2,2)
x=(R(1,5)-R(1,2)*y-R(1,3)*z-R(1,4)*w)/R(1,1)

X1=[x y z w]

# Com escolha parcial seria o m�ximo por coluna

# Com escolha total de pivot seria o m�ximo por linha e coluna n�o utilizada

R=M

max(max(abs(M(:,1:4))))



R(1,:)=R(1,:)-R(1,2)/R(2,2)*R(2,:)
R(3,:)=R(3,:)-R(3,2)/R(2,2)*R(2,:)
R(4,:)=R(4,:)-R(4,2)/R(2,2)*R(2,:)

R([1 2 3 4],:)=R([2 4 1 3],:)

R

max(max(abs(R(2:4,1:4))))

R(3,:)=R(3,:)-R(3,4)/R(2,4)*R(2,:)
R(4,:)=R(4,:)-R(4,4)/R(2,4)*R(2,:)

max(max(abs(R(3:4,1:4))))

R(3,:)=R(3,:)-R(3,3)/R(4,3)*R(4,:)


x=R(3,5)/R(3,1)
z=(R(4,5)-R(4,1)*x)/R(4,3)
w=(R(2,5)-R(2,1)*x-R(2,3)*z)/R(2,4)
y=(R(1,5)-R(1,1)*x-R(1,3)*z-R(1,4)*w)/R(1,2)

X2=[x y z w]


X1==X2


# Elimina��o de Gauss-Jordan

A=[-1 9 2 3; 11 3 -5 -2; 0 -4 1 0; 1 -2 -1 -1]
Id=eye(4)

MA=cat(2,A,Id)

R=MA

R(2,:)=R(2,:)-R(2,1)/R(1,1)*R(1,:)
R(3,:)=R(3,:)-R(3,1)/R(1,1)*R(1,:)
R(4,:)=R(4,:)-R(4,1)/R(1,1)*R(1,:)

R(1,:)=R(1,:)-R(1,2)/R(2,2)*R(2,:)
R(3,:)=R(3,:)-R(3,2)/R(2,2)*R(2,:)
R(4,:)=R(4,:)-R(4,2)/R(2,2)*R(2,:)

R(1,:)=R(1,:)-R(1,3)/R(3,3)*R(3,:)
R(2,:)=R(2,:)-R(2,3)/R(3,3)*R(3,:)
R(4,:)=R(4,:)-R(4,3)/R(3,3)*R(3,:)

R(1,:)=R(1,:)-R(1,4)/R(4,4)*R(4,:)
R(2,:)=R(2,:)-R(2,4)/R(4,4)*R(4,:)
R(3,:)=R(3,:)-R(3,4)/R(4,4)*R(4,:)

R(1,:)=R(1,:)/R(1,1)
R(2,:)=R(2,:)/R(2,2)
R(3,:)=R(3,:)/R(3,3)
R(4,:)=R(4,:)/R(4,4)

InvA=R(:,5:8)