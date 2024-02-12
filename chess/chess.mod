/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 9, 2021 at 8:21:42 PM
 *********************************************/
using CP;
int n=512;
range adad=1..n;
dvar int+ x[adad] in 1..n;

subject to
{
  allDifferent (all(i in adad) x[i]);
  
  forall(i in 1..n-1)
    forall(j in i+1..n)
      abs(x[j]-x[i])!=j-i;
    
}
