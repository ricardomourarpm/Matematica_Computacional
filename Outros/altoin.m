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
## @deftypefn {Function File} {@var{retval} =} altoin (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: user <user@USER-PC>
## Created: 2014-03-24

function num = altoin (algar,b)
  algar=cast(algar,"int16"); b=cast(b,"int64"); num=int64(0);
  n=columns(algar);
  for i=1:n; 
    num=num*b+cast(algar(i),"int64"); #(((0*b+a_n)*b+a_{n-1})*b+a_{n-2})*b+a_{n-3}+....+a_1
   endfor;
endfunction
