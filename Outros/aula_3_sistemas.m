A=[1 1; 1000 990]
B=[2 ; 1.98]

function cramer(A,B)
  a=det(A);
  n=length(A);
  C=1:n;
  for (i=1:n)
    D=A;
    D(:,i)=B;
    C(i)=det(D);
  endfor
  C=C/a;
  disp(C)
 end 
 
 cramer(A,B)
 
 
 A=[1 1 1; 1 2 1; 0 0 1]
 B=[1; 2; 1]
 
 #################################
 
 A=[1 2 3; 3 -4 -5; -8 7 6]
 
 C=[1/3 2/3 1; -3/5 4/5 1; 1 -7/8 -6/8]
 
 max(abs(A'))
 
A./[3;-5;-8]


###########################

A=[3 7 57; 11 23 -1; 23 -27 5];



max(sum(abs(A)))

max(sum(abs(A')))

############

norm(A)
norm(A,1)

K=@(A) norm(A,2)*norm(inv(A),2)

