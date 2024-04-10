%Este c�digo aplica o m�todo de substitui��o direta para calcular a a solu��o dum sistema LX=B
%onde L � matriz quadrada triangular inferior, com entradas 1 na diagonal. 

function solu=subslower(L,b)
  m=rows(L);
  n=columns(L);
 
   if(n!=m) error("N�o quadrada");endif;
   if(any(any(L!=tril(L)))) error("N�o triangular inferior");endif;
   if(any(diag(L)!=1)) error("N�o 1 na diagonal"); endif;
 
   solu=b;
    for k=2:n;
    solu(k,:)=solu(k,:)-L(k,1:k-1)*solu(1:k-1,:);   
    endfor;
 
 endfunction;
  