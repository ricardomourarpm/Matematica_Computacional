## Copyright (C) 2014 user
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} arred (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: user <user@USER-PC>
## Created: 2014-03-23

#### Função ARRED ####

## Esta função exige introduzir un número ou lista de números com precissão dupla,
## o número de algarismos na mantissa (incluido o primeiro), e a base escolhida.
## O valor devolvido é um número com precissão dupla, que representa como ficaria o número de entrada depois de 
## fazer um arredondamento por corte com p algarismos em base b



function devolve = arred (x, p ,b)
b=fix(b); p=fix(p); #fix determina a parte inteira, tira a fração
listanulos=find(x==0); #determinamos se na lista x aparece algum número que é 0
                  #para os números zero, o que é feito a seguir não teria sentido
                  #a começar com o cálculo do expoente, que para zero seria expoente -Inf
expoente=floor(log(abs(x))/log(b)); #Aqui calculamos o expoente (o caso 0 produz NaN)
fator=power(b,expoente-p+1); #Vamos ter que retirar uma potência de b
devolve=fator.*round(x./fator); #Aqui ajustamos os p algarismos
              ##Nesta linha, para fazer ajustamentos por corte,
              ##Em lugar de usar round (arredondamento ao inteiro mais próximo),
              ##poderiamos usar fix (arredondamento por eliminação da parte fracionária)
devolve(listanulos)=0; #aqui eliminamos os NaN e voltamos a escrever 0 nos lugares apropriados
endfunction