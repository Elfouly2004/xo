import 'package:flutter/material.dart';
import 'package:xo/page1.dart';
import 'Gameplay.dart';
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Center(
            //   child: CircleAvatar(
            //     backgroundImage: AssetImage("assets/images/1.jpg",)
            //     ,//backgroundColor: Colors.white,
            //     radius: 100,
            //   ),
            // ),

           Row(),


           SizedBox(height: 40,),


           //Row(),
            Container(
              margin: EdgeInsets.only(bottom: 60),
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                color:Colors.orangeAccent,
                border: Border.all(
                    color:Colors.white,
                    width: 6),

                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("XO",
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                    ),),

                  SizedBox(height: 30),
                  Text("GAME PLAY",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigoAccent,
                        letterSpacing: 5
                    ),),
                ],
              ),
            ),


            Text("Designed by",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),


            SizedBox(height: 30),



            Text("❤️_Donia sameh_❤️",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreenAccent,
              ),),


            InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return page1();
                    })
                );
              },


              child: Container(
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.all(10),
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(35)),
                ),
                child: Text("PLAY",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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