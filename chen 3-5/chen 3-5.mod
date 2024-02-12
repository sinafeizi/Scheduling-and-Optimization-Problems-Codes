/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 5, 2021 at 4:45:15 AM
 *********************************************/
int n=3;
range tarh=1..n;

dvar float v[1..2];
dvar boolean x[tarh];
dvar float+ z;
dvar float+ y;

minimize z;


subject to
{
sum (i in tarh) x[i]==1;
 
 y>=410;
 
0.1*y<=z+(1000000*(1-x[1]));
30+(0.4*(y-400))<=z+(1000000*(1-x[2]));
40+(0.6*(max (j in 1..2) v[j]))<=z+(1000000*(1-x[3]));

v[1]==0;
v[2]==y-600;
}
