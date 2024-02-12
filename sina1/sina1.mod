/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 3, 2021 at 8:44:37 PM
 *********************************************/
using CP;
int n=8;
dvar int x[1..n] in 1..n;
subject to
{
  allDifferent(all(i in 1..n) x[i]);
  forall (i in 1..n-1)
    forall (j in i+1..n)
     abs(x[i]-x[j])!=j-i;
}