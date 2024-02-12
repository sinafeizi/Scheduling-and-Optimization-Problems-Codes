/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 4, 2021 at 9:53:07 AM
 *********************************************/
int n=...;
range city=1..n;
float d[city][city]=...;
dvar boolean x[city][city];

tuple       edge        {int i; int j;}
setof(edge) Edges       = {<i,j> |  i,j in city};
tuple Subtour { int size; int subtour[city]; }


minimize sum(i in city, j in city) d[i][j]*x[i][j];
subject to
{
 forall (i in city)
   sum(j in city) x[i][j]==1;
  forall(j in city)
    sum(i in city) x[i][j]==1;
   
 
 forall (r in city) 
   x[r][r]==0;    
   
   
  }