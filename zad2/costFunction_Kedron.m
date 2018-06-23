## Copyright (C) 2018 mkked
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
## @deftypefn {} {@var{retval} =} costFunction_Kedron (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: mkked <mkked@DESKTOP-5SPUH0O>
## Created: 2018-05-26

function cost = costFunction_Kedron (xReal,yReal,W)
  yApp = polyval(W,xReal);
  e = (yReal-yApp);
  cost = e'*e;
  m = length(yReal);
  cost = cost / 2/ m;
endfunction