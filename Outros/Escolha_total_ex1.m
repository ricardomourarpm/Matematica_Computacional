A=[6.708 1.732 1 5; 8.66 2.236 1 5; 2.236 1.732 3 5]
B=[5;5;5]
X=[1;1;1]
# Escolha parcial de pivot
max(A)
A(1,:)=A(1,:)-A(1,1)/A(2,1)*A(2,:)
A(3,:)=A(3,:)-A(3,1)/A(2,1)*A(2,:)
A=[0 3.695E-6 2.254E-1 1.127; 8.66 2.236 1 5; 0 1.155 2.742 3.709]
max(A(1,:),A(3,:))
A(1,:)=A(1,:)-A(1,2)/A(3,2)*A(3,:)
A=[0 0 2.254E-1 1.127; 8.66 2.236 1 5; 0 1.155 2.742 3.709]
#Por substituição inversa
X(3,1)=A(1,4)/A(1,3)
X(2,1)=(A(3,4)-A(3,3)*z)/A(3,2)
X(1,1)=(A(2,4)-A(2,3)*z-A(2,2)*y)/A(2,1)

A=[6.708 1.732 1; 8.66 2.236 1; 2.236 1.732 3]
A\B
