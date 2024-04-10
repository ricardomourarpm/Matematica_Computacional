%Este código aplica o método de substituição direta para calcular a a solução dum sistema LX=B
%onde L é matriz quadrada triangular inferior, com entradas 1 na diagonal. 

function solu=subslower(L,b)
  m=rows(L);
  n=columns(L);
 
   if(n!=m) error("Não quadrada");endif;
   if(any(any(L!=tril(L)))) error("Não triangular inferior");endif;
   if(any(diag(L)!=1)) error("Não 1 na diagonal"); endif;
 
   solu=b;
    for k=2:n;
    solu(k,:)=solu(k,:)-L(k,1:k-1)*solu(1:k-1,:);   
    endfor;
 
 endfunction;
  