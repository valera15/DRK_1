﻿program z_2;
var x,y: real;
  begin
{ x^(1/3), если x<-7
  tg(x)*x^2, если -7<=x<1
  -x*x^(1/3)-x^(0,1*x), если 1<=x}
/// интервал [-9;3] с шагом 0,1
    x:=-9;
    while x<=3 do
     begin
      if x<-7 then 
        y:= power(x,1/3);
      if (x>=-7) and (x<1) then 
        y:= (sin(x)/cos(x)) * power (x,2);
      if x>=1 then
        y:= power(x,1/3)-power(x,(0.1*x));
        writeln ('x = ',x);
      if y=y then 
        writeln ('y = ',y)
         else 
        writeln ('y = корней нет');
      x:= x+0.1;
      x:= x*10; 
      x:= round(x);
      x:= x/10;   
     end;
  end.
