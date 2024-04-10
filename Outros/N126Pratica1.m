#
#Script-file da primeira aula prática da cadeira N126-Matemática Computacional
#
#
#
#Com isto entra na linha de comandos de windows, e executa um 'change codepage'
#muda a página de códigos, e retorna a Octave
#
#A seguinte linha indica que mostre tudo, no formato standard e não interromper até que indiquemos
format;more; echo("on");
#
#
##VARIÁVEIS NUMÉRICAS###
#
#
#Quando um número é introduzido em Octave, será interpretado como real,
#e representado  na memória através do formato IEEE754, em ponto flutuante.
#Para especificar que o valor introduzido é um número inteiro ('int'),
#um natural (unsigned integer 'uint'), com tamanho pequeno, médio, grande
#ou muito grande, temos que especificá-lo através de
# 'int8'; 'uint8'; 'int16'; 'uint16'; 'int32'; 'uint32'; 'int64'; 'uint64'
#
p_flut=87; p_8=int8(87); p_16=int16(87); p_32=int32(87); p_64=int64(87);
#
#Usamos 'input' para pedir dados ao usuário. Aproveite as pausas para ver o input e o output
#Na seguinte linha usamos input para interromper a execução.
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#A instrução disp ('display') proporciona uma representação no ecrã do valor guardado numa variável. 
#A simples vista, pode parecer que todas as variáveis antes definidas são iguais
#
disp(p_flut); disp(p_8); disp(p_16); disp(p_32); disp(p_64);
#
#A instrução whos aplicada a uma série de caracteres (Podemos usar o símbolo * como comodim)
#proporciona informação sobre se alguma variável foi definida com esse nome,
#sobre qual o tipo da variável, e veja OS BYTES DE MEMÓRIA QUE OCUPA A VARIÁVEL
#
whos("p*");
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#A instrução clear elimina todos os nomes de variáveis e todos os valores guardados.
#A instrução clear(...) elimina as variáveis escolhidas.
#
clear ("p_64"); whos("p*");
#
#Algumas constantes são já conhecidas por Octave, e são guardadas nas variáveis pi,e,I.
#Existem outras 'constantes' como NaN ou Inf.
#Não aparecem na lista de variáveis, mas são reconhecidas como uma função interna.
#Devemos evitar definir variáveis com estes nomes
p=pi; disp(p); disp(I); disp(Inf); disp(NaN);
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#Podemos alterar a representação dada por disp se indicamos um formato específico,
#com a instrução 'format long' (Existem mais posibilidades, como 'short', 'long', 'short e', 'long e', 'bit', 'rat', e muitos outros
#A instrução format isolada, sem indicar formato, devolve a Octave ao modo de representação por defeito
#
format("long"); disp(p); format("short","e"); disp(p); format("rat"); disp(p); format; disp(p);
disp(p_8); disp(p_16);format("bit"); disp(p_8); disp(p_16);disp(p_flut);
#
input("Carregue ENTER para continuar");
#
#---------------------------------------------------------------
more;
#
#Observemos como são representados os números -10,-9,-8,...,8,9,10
#Usamos a instrução 'cast' para transformar a lista no formato 'int8'
#Usamos 'echo off' para que não mostre todas as instruções repetidas dentro do for
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
#Pedimos que nos indique o mínimo e máximo inteiro para uma variável de tipo 'int8':
#
intervalo=[intmin("int8"),intmax("int8")];disp(intervalo);
#
#Para números em ponto flutuante há diferentes valores do nosso interesse:
#
format("long"); disp(flintmax);disp(realmax);disp(eps);disp(realmin);
#
#Veja a documentação de flintmax, realmax, e indique porque são diferentes.
#Veja a documentação de eps e de realmin, e indique porque são diferentes
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
#A função 'arred' programada na pasta de trabalho mostra como é guardado um valor
#real x, se ficamos com p algarismos na mantissa, em base b
#
x=123; xa=arred(x,4,2); disp(xa);
#
#Para ver o que aconteceu, mostremos esse valor como inteiro, em notação binária
format("bit"); disp(int8(xa)); format;
#
#Vamos criar uma lista de números entre -12 e 12, a intervalos de 1/1000, tirando o 0
#
xn=-12:0.001:-0.001;xp=0.001:0.001:12;x=[xn,xp];
#
#Vamos agora criar a mesma lista arredondada, com 4 algarismos binários
#
xa=arred(x,4,2);
#
#Criamos agora a lista 'delta' do erro relativo entre o valor x e o arredondado,
#e fazemos uma representação gráfica
#
#delta=(x-xa)./x;
#plot(x,delta);
#
#A representação foi feita com o 'kit' gráfico "fltk". Existe também outro
#
#available_graphics_toolkits;
#
echo("off");
