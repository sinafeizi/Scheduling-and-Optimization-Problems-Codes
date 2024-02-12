/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Dec 4, 2021 at 9:08:00 PM
 *********************************************/
int n=4;
range tedad= 1..n;
dvar float+ x[tedad];

maximize((5*x[1])+(4*x[2])+(4*x[3])+(2*x[4]));

subject to
{
((5*x[1])+(1*x[2])+(3*x[3])+(2*x[4]))<=15;
x[1]+x[2]+x[3]+x[4]<=6;
x[1]>=3;
}
