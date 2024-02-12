/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Dec 3, 2021 at 7:54:35 PM
 *********************************************/
int n=10;
range tedad= 1..n;
dvar float+ x[tedad];

minimize((10*x[1])+(7*x[2])+(-1*x[3])+(12*x[4])+(-2*x[5])
+(-8*x[6])+(3*x[7])+(1*x[8])+(-5*x[9])+(-3*x[10]));

subject to
{
((-3*x[1])+(-12*x[2])+(8*x[3])+(1*x[4])+(7*x[9])+(-2*x[10]))<=8;

((1*x[2])+(-10*x[3])+(5*x[5])+(-1*x[6])+(7*x[7])+(1*x[8]))<=13;

((-5*x[1])+(-3*x[2])+(1*x[3])+(-2*x[8])+(-1*x[10]))<=-6;

((5*x[1])+(3*x[2])+(-1*x[3])+(2*x[4])+(1*x[10]))<=6;

((4*x[3])+(-2*x[4])+(5*x[6])+(1*x[7])+(-9*x[8])+(2*x[9]))<=8;

((9*x[2])+(-12*x[4])+(7*x[5])+(-6*x[6])+(2*x[8])+(15*x[9])+(3*x[10]))<=12;

((8*x[1])+(5*x[2])+(-2*x[3])+(-7*x[4])+(1*x[5])+(-5*x[7])+(10*x[9]))<=16;
forall (i in tedad)
  x[i]<=1;
x[1]==1;
x[9]==1;
x[4]==0;
x[7]==1;
}