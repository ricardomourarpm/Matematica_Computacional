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
## @deftypefn {Function File} {@var{retval} =} intoal (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: user <user@USER-PC>
## Created: 2014-03-24

#### Função intoal (Inteiro to algarismos), admite como entrada um inteiro,
## e devolve a sequência de algarismos, em base b.

function algar = intoal (num, b)
  b=cast(b,"int64");num=cast(num,"int64");i=1; algar(1)=int16(0);
  while(num!=0)
    algar(i)=cast(mod(num,b),"int16"); #Isto retira o resto da divisão
    num=idivide(num,b); #Isto fica com o quociente da divisão
    i=i+1;
    endwhile;
  algar=fliplr(algar); #Isto vira o conjunto de algarismos, trocanto esquerda por direita  
  endfunction
