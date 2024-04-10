%Determina a forma reduzida associada a uma matriz M,
%em cada passo o pivô escolhido é sempre o elemento no lugar (k,k)
%Devolve a matriz M reduzida, com indicação da linha i1,i2,...,im e da coluna j1,j2,...,jm
%onde fica o pivô correspondente
function barA=gaussreduce(M)
  m=rows(M);  
  n=columns(M);
    if(n<m) error("Tem mais linhas do que colunas"); endif;
  barA=M;
  for k=1:m;  %k representa o pivô que pretendemos determinar.
    s=barA(k,k);if(s==0) error("Encontrou-se um zero na diagonal"); endif;
  for h=k+1:m;  %Processo de eliminação
                  %Transformamos as linhas k+1,k+2,...,m de maneira que passem a ser 0
                  %as suas entradas na posição k 
      barA(h,:)=barA(h,:)-(barA(h,k)/s)*barA(k,:);
              %Elimina para deixar zeros
    endfor;
  endfor;
endfunction;  