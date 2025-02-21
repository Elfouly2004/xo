import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo/Gameplay.dart';
import 'package:xo/home.dart';
import 'package:xo/login.dart';

void main(){
  runApp(XoApp());
}

class XoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "XO Abdelrahman",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}
