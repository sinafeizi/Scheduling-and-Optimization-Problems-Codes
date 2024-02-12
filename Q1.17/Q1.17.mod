/*********************************************
 * OPL 12.10.0.0 Model
 * Author: Mehdi
 * Creation Date: 2 ÂÈÇä 1400 åž.Ô. at 22:48:34
 *********************************************/
using CP;
int n=16;
dvar int+ v[1..n+1] in 0..n;
dvar int+ e[1..n] in 1..n;
subject to
{

  allDifferent (all(i in 1..n) v[i]);
  v[1] == v[n+1];
  allDifferent (all(r in 1..n) e[r]);
  forall (i in 1..n)
    e[i] == abs (v[i]-v[i+1]);
  
}