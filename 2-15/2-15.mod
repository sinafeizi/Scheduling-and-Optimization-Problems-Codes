/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 5, 2021 at 2:12:56 AM
 *********************************************/
int n=...;  // tedade gereh-ha
range gereh=1..n;
float z[gereh][gereh]=...;
dvar float+ x[gereh][gereh];
maximize x[8][1];
subject to
{
 forall (i in gereh, j in gereh) // mahdoodiat haye zarfiat
   x[i][j]<=z[i][j];
 
 x[1][2]== x[2][4]+x[2][5]; // mahdoodiat haye baghaye jaryan
 x[1][3]== x[3][4]+x[3][5];
 x[2][4]+x[3][4]== x[4][6]+x[4][7];
 x[2][5]+x[3][5]== x[5][6]+x[5][7];
 x[4][6]+x[5][6]== x[6][8];
 x[4][7]+x[5][7]== x[7][8]; 
 
 x[6][8]+x[7][8]== x[8][1]; // mahdoodiat haye mabda maghsad
 x[1][2]+x[1][3]== x[8][1];
  }