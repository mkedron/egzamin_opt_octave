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
## @deftypefn {} {@var{retval} =} drawPlot (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: mkked <mkked@DESKTOP-5SPUH0O>
## Created: 2018-04-21

#rysowanie wykresu
function W = drawPlot(X,Y,n)
  W=polyfit(X,Y,n);
  x=linspace(0,1,100);
  y=polyval(W,x);
  figure(n);
  hold on;
  plot(X,Y,"o");
  plot(x,y,'-');
  xlabel("X");
  ylabel("Y");
  fname = ["plot" mat2str(n) ".png"];
  print(fname)
  close(n)
endfunction