import 'package:flutter/material.dart';
import 'package:xo/login.dart';

class box extends StatefulWidget {
  String Player1="";
  String Player2="";

  box(this.Player1,this.Player2);

  @override
  State<box> createState() => _boxState(this.Player1,this.Player2);
}

class _boxState extends State<box> {
List tab=["", "", "", "", "", "", "", "", "",];
bool X_turn=true;
int click=0;
  int x_score=0;
  int o_score=0;

  check(){
    click++;
    if(tab[0]==tab[1]&&tab[0]==tab[2]&& tab[0]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;

    }else if(tab[3]==tab[4]&&tab[3]==tab[5]&& tab[3]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;
    }
    else if(tab[6]==tab[7]&&tab[7]==tab[8]&& tab[6]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;
    } else if(tab[0]==tab[3]&&tab[0]==tab[6]&& tab[0]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;
    } else if(tab[1]==tab[4]&&tab[1]==tab[7]&& tab[1]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;
    }else if(tab[2]==tab[5]&&tab[2]==tab[8]&& tab[2]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;
    }else if(tab[0]==tab[4]&&tab[0]==tab[8]&& tab[0]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;
    }else if(tab[2]==tab[4]&&tab[2]==tab[6]&& tab[2]!=""){
      tab=["", "", "", "", "", "", "", "", "",];
      X_turn?x_score++:o_score++;
      click=0;
    }
    else if(click==9){
      tab=["", "", "", "", "", "", "", "", "",];
      click=0;
    }
    X_turn=!X_turn;

  }

  String Player1="";
  String Player2="";
  _boxState(this.Player1,this.Player2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,),
      drawer: Drawer(),
      backgroundColor: Colors.black,
      body:
      Column(
        children: [

          Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             IconButton(
               iconSize: 30,
               icon: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return login();
               },));
             },
             )
        ],
        ),


          SizedBox(
            height: 40,
          ),


          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text(" Player1 :${Player1} \n "
                     "score: ${x_score}" ,style: TextStyle(color: Colors.white,fontSize: 20),),

                 Text(" Player2:${Player2} \n "
                     "score: ${o_score}" ,style: TextStyle(color: Colors.white,fontSize: 20),),

               ],
            ),
          ),



          SizedBox(
            height: 100,
          ),


      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            InkWell(
              onTap: () {
                if(tab[0]==""){
                  if(X_turn){
                    tab[0]="X";
                  }else(
                  tab[0]="O"
                  );
                  check();
                }
                setState(() {

                });

              },
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text("${tab[0]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            InkWell(
              onTap: () {
                if (tab[1]==""){
                  if(X_turn){
                    tab[1]="X";
                  }else{
                    tab[1]="O";
                  }
                  check();
                }

                setState(() {

                });

              },
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text("${tab[1]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),



            InkWell(
              onTap: () {
                if(tab[2]==""){
                  if(X_turn){
                    tab[2]="X";
                  }else{
                    tab[2]="O";
                  }
                  check();
                }

                setState(() {

                });

              },
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text("${tab[2]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

          ],
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            InkWell(
              onTap: () {
              if(tab[3]==""){
                if(X_turn){
                  tab[3]="X";
                }else{
                  tab[3]="O";
                }
                check();
              }
              setState(() {

              });
              },
              child: Container(
                width: 100,
                height: 100,
                child: Center(child: Text("${tab[3]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),

            InkWell(
              onTap: () {
             if(tab[4]==""){
               if(X_turn){
                 tab[4]="X";
               }else{
                 tab[4]="O";
               }
               check();
             }
             setState(() {

             });
              },
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                    child: Text("${tab[4]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),



            InkWell(
              onTap: () {
              if(tab[5]==""){
                if(X_turn){
                  tab[5]="X";
                }else{
                  tab[5]="O";
                }
                check();
              }
              setState(() {

              });
              },
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                    child: Text("${tab[5]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ),
          ],
        ),
      ),

       Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
               mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                  onTap: () {
                    if(tab[6]==""){
                      if(X_turn){
                        tab[6]="X";
                      }else{
                        tab[6]="O";
                      }
                      check();
                    }
                    setState(() {

                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Center(
                        child: Text("${tab[6]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    if(tab[7]==""){
                      if(X_turn){
                        tab[7]="X";
                      }else{
                        tab[7]="O";
                      }
                      check();
                    }
                    setState(() {

                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Center(
                        child: Text("${tab[7]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),


                InkWell(
                  onTap: () {
                    if(tab[8]==""){
                      if(X_turn){
                        tab[8]="X";
                      }else{
                        tab[8]="O";
                      }
                      check();
                    }
                    setState(() {

                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Center(
                        child: Text("${tab[8]}",style: TextStyle(fontSize: 50,color: Colors.black),)),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),


              ],
            ),
          ),


        ],
          ),
    );
  }
}
