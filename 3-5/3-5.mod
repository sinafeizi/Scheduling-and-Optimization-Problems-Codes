/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Dec 2, 2021 at 1:12:08 PM
 *********************************************/
int n=4;
range tedad= 1..n;
dvar boolean x[tedad];

maximize((16*x[1])+(22*x[2])+(12*x[3])+(8*x[4]));

subject to
{
((5*x[1])+(7*x[2])+(4*x[3])+(3*x[4]))<=14;
x[1]==0;
}
