
import 'package:flutter/material.dart';

class GamePlay extends StatefulWidget{
  String player1="";
  String player2="";
  GamePlay(this.player1,this.player2);


  @override
  State<GamePlay> createState() => _GamePlayState(this.player1,this.player2);
}

class _GamePlayState extends State<GamePlay> {
  List tab = ["", "", "", "", "", "", "", "", "",];
  bool x_turn = true;
  int x_score = 0;
  int o_score = 0;
  int click =0;
  String player1="";
  String player2="";
  _GamePlayState(this.player1,this.player2);

  // String player1="a";
  // String player2="d";

  check(){
    click++;
    if(tab[0] == tab[1] && tab[0]==tab[2] && tab [0] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if(tab[3] == tab[4] && tab[3]==tab[5]&& tab [3] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if(tab[6] == tab[7] && tab[6]==tab[8]&& tab [6] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if(tab[0] == tab[3] && tab[0]==tab[6]&& tab [0] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if(tab[1] == tab[4] && tab[1]==tab[7]&& tab [1] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if(tab[2] == tab[5] && tab[8]==tab[2]&& tab [2] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if(tab[0] == tab[4] && tab[0]==tab[8]&& tab [0] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if(tab[2] == tab[4] && tab[6]==tab[2]&& tab [2] != ""){
      tab = ["", "", "", "", "", "", "", "", "",];
      x_turn?x_score++:o_score++;
      click = 0;
    }
    else if (click ==9){
      click = 0;
      tab = ["", "", "", "", "", "", "", "", "",];
    }
    x_turn = !x_turn;
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("X",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            Text("O",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text( "${player1}"
                      "\nScore: $x_score",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber
                    ),
                  ),
                ),
                Expanded(
                  child: Text( "${player2}"
                      "\nScore: $o_score",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      if(tab[0] == ""){
                        if(x_turn){
                          tab[0] = "X";
                        }
                        else{
                          tab[0] = "O";
                        }
                        check();
                      }
                      setState
                        (() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[0],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[1] == ""){
                        if(x_turn){
                          tab[1] = "X";
                        }
                        else{
                          tab[1] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[1],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[2] == ""){
                        if(x_turn){
                          tab[2] = "X";
                        }
                        else{
                          tab[2] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[2],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[3] == ""){
                        if(x_turn){
                          tab[3] = "X";
                        }
                        else{
                          tab[3] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[3],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[4] == ""){
                        if(x_turn){
                          tab[4] = "X";
                        }
                        else{
                          tab[4] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[4],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[5] == ""){
                        if(x_turn){
                          tab[5] = "X";
                        }
                        else{
                          tab[5] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[5],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[6] == ""){
                        if(x_turn){
                          tab[6] = "X";
                        }
                        else{
                          tab[6] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[6],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[7] == ""){
                        if(x_turn){
                          tab[7] = "X";
                        }
                        else{
                          tab[7] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[7],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){

                      if(tab[8] == ""){
                        if(x_turn){
                          tab[8] = "X";
                        }
                        else{
                          tab[8] = "O";
                        }
                        check();
                      }
                      setState(() {

                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(top: 20),
                      height: 150,
                      width: 100,
                      color: Colors.white,
                      child: Text(tab[8],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber
                        ),
                      ),
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






