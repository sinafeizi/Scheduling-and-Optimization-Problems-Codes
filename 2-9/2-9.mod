/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 4, 2021 at 9:58:44 PM
 *********************************************/
int n=...;// tedade kole manategh
int m=...;// tedade kole dakalha
range mantaghe=1..n;
range dakal=1..m;

float p[mantaghe]=...;
float c[dakal]=...;



dvar boolean x[mantaghe];
dvar boolean d[dakal];


 
maximize sum(i in mantaghe) p[i]*x[i];

subject to
{
 sum(i in dakal) c[i]*d[i]<=10;
 
 x[1]==max(i in 1..3: i!=2) d[i];
 x[2]==max(i in 1..4: i!=2 && i!=3) d[i];
 x[3]==max(i in 1..2) d[i];
 x[4]==max(i in 4..5) d[i];
 x[5]==max(i in 2..5: i!=3 && i!=4) d[i];
 x[6]==max(i in 1..3: i!=2) d[i];
 x[7]==max(i in 2..5: i!=3 && i!=4) d[i];
 x[8]==max(i in 2..4: i!=3) d[i];
 x[9]==max(i in 3..4) d[i];
 x[10]==max(i in 3..6: i!=4 && i!=5) d[i];
 x[11]==max(i in 5..6) d[i];
 x[12]==max(i in 5..6) d[i];
}

 
