/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 12, 2021 at 9:10:04 PM
 *********************************************/
int n=...;  // tedade ro'os
int s=...;  // rase shoroo
int f=...;  // rase payan
range ras=1..n;
float w[ras][ras]=...;
dvar boolean x[ras][ras];




minimize sum(i in ras, j in ras) w[i][j]*x[i][j];
subject to
{

 
 ((sum(j in ras) x[s][j])-(sum (k in ras) x[k][s]))==1; // mahdoodiate rase shoroo
 ((sum(j in ras) x[f][j])-(sum (k in ras) x[k][f]))==-1; // mahdoodiate rase payan
 forall (i in ras: i!=s && i!=f)                         // mahdoodiathaye sayere ro'os
   ((sum(j in ras) x[i][j])-(sum (k in ras) x[k][i]))==0;
   
   

  }