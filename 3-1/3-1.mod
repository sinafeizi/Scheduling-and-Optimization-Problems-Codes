/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 13, 2021 at 2:51:36 PM
 *********************************************/
using CP;
int m=...;
int n=...;
dvar int z[1..2];
dvar int y[1..2];
 
range bish=1..y[1];
range kam=1..y[2];
int a[1..m][1..n]=...;
range sub_bish = 1..ftoi(round(2^y[1]));
range sub_kam = 1..ftoi(round(2^y[2]));
{int} sub1[s in sub_bish] = {i | i in(1..y[1]): (s div ftoi(2^(i-1))) mod 2 == 1};
{int} sub2[s in sub_kam] = {i | i in (1..y[2]): (s div ftoi(2^(i-1))) mod 2 == 1};





dvar int x[1..(ftoi(round(2^m))-1)][1..(ftoi(round(2^n))-1)];
subject to
{
 z[1]==m;
 z[2]==n;  
 y[1]==max(i in 1..2) z[i];
 y[2]==min(i in 1..2) z[i];
 
forall (s in sub_kam: 0<card(sub2[s])<(y[2]+1))
      forall (r in sub_bish: sub1[r]==s)
        ///ba in 2ta forall tamame zir majmoe haye momken ba ham moghayese mishan,
        // inja bayad dastoore mohasebeye determinan ra nevesht
        
            
  }
