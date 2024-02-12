/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 4, 2021 at 11:54:27 AM
 *********************************************/
int n=...;
range city=1..n;
float d[city][city]=...;
dvar boolean x[city][city];

range ss = 1..ftoi(round(2^n));
{int} sub [s in ss] = {i | i in 1..n: (s div ftoi(2^(i-1))) mod 2 == 1};
 
minimize sum(i in city, j in city) d[i][j]*x[i][j];
subject to
{
 forall (i in city)
   sum(j in city) x[i][j]==1;
  forall(j in city)
    sum(i in city) x[i][j]==1;
   
   

 
 forall (r in city) 
   x[r][r]==0;    
   
forall (s in ss: 2<card(sub[s])<n) sum(i, j in sub[s]) x[i][j] <= card(sub[s])-1; 

  }