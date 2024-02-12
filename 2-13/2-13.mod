/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 5, 2021 at 12:43:26 AM
 *********************************************/
int n=...;  // tedade computerha
range com=1..n;
float d[com][com]=...;
dvar boolean x[com][com];

range ss = 1..ftoi(round(2^n));
{int} sub [s in ss] = {i | i in 1..n: (s div ftoi(2^(i-1))) mod 2 == 1};


minimize sum(i in com, j in com) d[i][j]*x[i][j];
subject to
{
 sum(i in com, j in com) x[i][j]==n-1;
   

 
 forall (r in com) 
   x[r][r]==0;    
   
forall (s in ss: 1<card(sub[s])<n) sum(i, j in sub[s]) x[i][j] <= card(sub[s])-1; 

  }
 
 
 
 