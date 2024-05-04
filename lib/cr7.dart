import 'package:flutter/material.dart';


class forms extends StatelessWidget{
  TextEditingController form1 = TextEditingController();
  String ? nameOfplayer1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF006B79),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: TextFormField(
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: "Saira"
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Name of Player 1",
                    label: Text("Player 1", style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: "Saira"
                    ),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                  controller: form1,
                  // onChanged: (value){
                  //   nameOfplayer1 = value;
                  // },

                ),
              ),
            ),
            InkWell(
              onTap: (){
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context){
                //       return GamePlay();
                //     })
                // );
                print(form1.text);
                print(nameOfplayer1);
              },
              child: Container(
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.all(10),
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                ),
                child: Text("Go",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF006B79)
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}