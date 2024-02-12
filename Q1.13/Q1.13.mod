/*********************************************
 * OPL 12.10.0.0 Model
 * Author: Mehdi
 * Creation Date: 2 ÂÈÇä 1400 åž.Ô. at 19:48:33
 *********************************************/
using CP;
int m=3;
dvar int+ x[1..m][1..m] in 1..m*m;
float A = m*(((m^2)+1)/2);
subject to
{
allDifferent  (all (i in 1..m, j in 1..m) x[i][j]);

  forall (i in 1..m)
    sum (j in 1..m) x[i][j] == A;
  forall (j in 1..m)
    sum (i in 1..m) x[i][j] == A;
  
  sum (r in 1..m) x[r][r] == A;
  sum (b in 0..m-1) x[b+1][m-b] == A;  
}