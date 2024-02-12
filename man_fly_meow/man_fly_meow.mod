/*********************************************
 * OPL 12.10.0.0 Model
 * Author: tt_sina
 * Creation Date: Nov 12, 2021 at 11:48:16 PM
 *********************************************/
using CP;
int n=9;                                                 //x[1]==M
range adad=1..n;                                         //x[2]==A
                                                         //x[3]==N
dvar int x[adad] in 0..9;                                //x[4]==F
                                                         //x[5]==L
                                                         //x[6]==Y
                                                         //x[7]==E
subject to                                               //x[8]==O
                                                         //x[9]==W
{
 allDifferent (all(i in adad) x[i]);
x[1]!=0;  
x[4]!=0;    
(100*x[1])+(10*x[2])+(1*x[3])+(100*x[4])+(10*x[5])+(1*x[6])==(1000*x[1])+(100*x[7])+(10*x[8])+(1*x[9]);
}





 