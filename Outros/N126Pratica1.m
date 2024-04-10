#
#Script-file da primeira aula pr�tica da cadeira N126-Matem�tica Computacional
#
#
#
#Com isto entra na linha de comandos de windows, e executa um 'change codepage'
#muda a p�gina de c�digos, e retorna a Octave
#
#A seguinte linha indica que mostre tudo, no formato standard e n�o interromper at� que indiquemos
format;more; echo("on");
#
#
##VARI�VEIS NUM�RICAS###
#
#
#Quando um n�mero � introduzido em Octave, ser� interpretado como real,
#e representado  na mem�ria atrav�s do formato IEEE754, em ponto flutuante.
#Para especificar que o valor introduzido � um n�mero inteiro ('int'),
#um natural (unsigned integer 'uint'), com tamanho pequeno, m�dio, grande
#ou muito grande, temos que especific�-lo atrav�s de
# 'int8'; 'uint8'; 'int16'; 'uint16'; 'int32'; 'uint32'; 'int64'; 'uint64'
#
p_flut=87; p_8=int8(87); p_16=int16(87); p_32=int32(87); p_64=int64(87);
#
#Usamos 'input' para pedir dados ao usu�rio. Aproveite as pausas para ver o input e o output
#Na seguinte linha usamos input para interromper a execu��o.
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#A instru��o disp ('display') proporciona uma representa��o no ecr� do valor guardado numa vari�vel. 
#A simples vista, pode parecer que todas as vari�veis antes definidas s�o iguais
#
disp(p_flut); disp(p_8); disp(p_16); disp(p_32); disp(p_64);
#
#A instru��o whos aplicada a uma s�rie de caracteres (Podemos usar o s�mbolo * como comodim)
#proporciona informa��o sobre se alguma vari�vel foi definida com esse nome,
#sobre qual o tipo da vari�vel, e veja OS BYTES DE MEM�RIA QUE OCUPA A VARI�VEL
#
whos("p*");
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#A instru��o clear elimina todos os nomes de vari�veis e todos os valores guardados.
#A instru��o clear(...) elimina as vari�veis escolhidas.
#
clear ("p_64"); whos("p*");
#
#Algumas constantes s�o j� conhecidas por Octave, e s�o guardadas nas vari�veis pi,e,I.
#Existem outras 'constantes' como NaN ou Inf.
#N�o aparecem na lista de vari�veis, mas s�o reconhecidas como uma fun��o interna.
#Devemos evitar definir vari�veis com estes nomes
p=pi; disp(p); disp(I); disp(Inf); disp(NaN);
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#Podemos alterar a representa��o dada por disp se indicamos um formato espec�fico,
#com a instru��o 'format long' (Existem mais posibilidades, como 'short', 'long', 'short e', 'long e', 'bit', 'rat', e muitos outros
#A instru��o format isolada, sem indicar formato, devolve a Octave ao modo de representa��o por defeito
#
format("long"); disp(p); format("short","e"); disp(p); format("rat"); disp(p); format; disp(p);
disp(p_8); disp(p_16);format("bit"); disp(p_8); disp(p_16);disp(p_flut);
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#Observemos como s�o representados os n�meros -10,-9,-8,...,8,9,10
#Usamos a instru��o 'cast' para transformar a lista no formato 'int8'
#Usamos 'echo off' para que n�o mostre todas as instru��es repetidas dentro do for
#format bit; for i=cast(-10:10,"int8") printf("%10.5g=v => bits=",i);disp(i); endfor;
echo("off");format("bit");
for i=cast(-10:10,"int8") printf("%10.5g=v => bits=",i);disp(i); endfor;
format;echo("on");
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#Repetimos agora com outro formato, para comparar
#format bit; for i=cast(-10:10,"double") printf("%10.5g=v => bits=",i);disp(i); endfor;
echo("off");format("bit");
for i=cast(-10:10,"double") printf("%10.5g=v => bits=",i);disp(i); endfor; 
printf("       Inf=v => bits=");disp(Inf);printf("       NaN=v => bits="); disp(NaN);
format;echo("on");
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#Pedimos que nos indique o m�nimo e m�ximo inteiro para uma vari�vel de tipo 'int8':
#
intervalo=[intmin("int8"),intmax("int8")];disp(intervalo);
#
#Para n�meros em ponto flutuante h� diferentes valores do nosso interesse:
#
format("long"); disp(flintmax);disp(realmax);disp(eps);disp(realmin);
#
#Veja a documenta��o de flintmax, realmax, e indique porque s�o diferentes.
#Veja a documenta��o de eps e de realmin, e indique porque s�o diferentes
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#
##ARREDONDAMENTOS###
#
#
#A fun��o 'arred' programada na pasta de trabalho mostra como � guardado um valor
#real x, se ficamos com p algarismos na mantissa, em base b
#
x=123; xa=arred(x,4,2); disp(xa);
#
#Para ver o que aconteceu, mostremos esse valor como inteiro, em nota��o bin�ria
format("bit"); disp(int8(xa)); format;
#
#Vamos criar uma lista de n�meros entre -12 e 12, a intervalos de 1/1000, tirando o 0
#
xn=-12:0.001:-0.001;xp=0.001:0.001:12;x=[xn,xp];
#
#Vamos agora criar a mesma lista arredondada, com 4 algarismos bin�rios
#
xa=arred(x,4,2);
#
#Criamos agora a lista 'delta' do erro relativo entre o valor x e o arredondado,
#e fazemos uma representa��o gr�fica
#
#delta=(x-xa)./x;
#plot(x,delta);
#
#A representa��o foi feita com o 'kit' gr�fico "fltk". Existe tamb�m outro
#
#available_graphics_toolkits;
#
echo("off");
