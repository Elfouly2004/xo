import 'package:flutter/material.dart';
import 'package:xo/Gameplay.dart';
import 'package:xo/home.dart';


class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  String Player1 ="";

  String Player2 =" ";

  bool check= false;

  GlobalKey<FormState> formkey1= GlobalKey <FormState>();
  GlobalKey<FormState> formkey2= GlobalKey <FormState>();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
        
           SizedBox(
             height: 100,
           ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  iconSize: 30,
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    },));
                  },
                )
              ],
            ),

            SizedBox(
              height: 150,
            ),


           Padding(
             padding: const EdgeInsets.all(25.0),
             child: Form(
               key: formkey1,
             child: TextFormField(
               style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30,),
             keyboardType: TextInputType.name,
             decoration: InputDecoration(
               fillColor: Colors.white,
               filled: true,
               border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
               labelText: "Player1 Name",
               prefixIcon: Icon(Icons.favorite_outlined),
               hintText: "Enter your name",
               iconColor: Colors.white,
             ),

               onChanged:(value) { //value = abdelrahman     &&  player1 = abdelrahman    ===>  Player1=(value)
                 Player1=(value);
               },

               validator: (value) {
                 if(value!.isEmpty||value==null){
                  return "PLAYER NAME";
                 }
                 else{
                   return (null);
                 }
               },
             ),
           ),
           ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: formkey2,
              child: TextFormField(
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 30,),
                keyboardType: TextInputType.name,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
                  labelText: "Player2 Name",
                  prefixIcon: Icon(Icons.favorite_outlined),
                  iconColor: Colors.white,
                  hintText: "Enter your name",
                ),

                onChanged:(value) {
                  Player2=(value);
                },
                validator: (value) {
                  if(value!.isEmpty||value==null){
                    return "ENTER PLAYER NAME";
                  } else{
                    return (null);
                  }
                },
              ),
            ),
            ),
        
            SizedBox(
              height: 50,
            ),
        
        
        
        
        SizedBox(
          height: 100,
        ),
        
         Center(
           child: InkWell(
             onTap: () {
               if(formkey1.currentState!.validate()==true&&formkey2.currentState!.validate()==true){
                 Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return GamePlay(Player1, Player2);
                 },
                 )
                 );
               }

             },
             child: Container(
               height: 80,
               width: 200,
               decoration: BoxDecoration(color: Colors.white ,borderRadius: BorderRadius.circular(30),
               ),
               child: Center(child: Text("let`s play",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 30),)),
             ),
           ),
         ),
        
          ],
        
        ),
      ),


    );
  }
}
