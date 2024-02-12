/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 4, 2021 at 5:50:06 PM
 *********************************************/
int n=...;
range planet=1..n;
float c[planet][planet]=...;
float f[planet]=...;
float d[planet]=...;
float u[planet]=...;
dvar float+ x[planet][planet];
dvar boolean y[planet];


 
minimize (sum(i in planet, j in planet) c[i][j]*x[i][j]) + (sum(i in planet) f[i]*y[i]);
subject to
{
 forall (j in 1..5)
   sum(i in 1..5) x[i][j]==d[j];
   

   
forall (i in 1..5)
  sum(j in planet) x[i][j]<=(u[i]*y[i]);
}

