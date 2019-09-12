import 'package:flutter/material.dart';
import 'dart:async';
import 'package:quiztimer/home.dart';

class Splash extends StatefulWidget{
  _SpalshState createState()=> _SpalshState();
}

class  _SpalshState extends State<Splash>{
  @override
  void initState() {
 Timer(Duration(seconds: 3), (){
   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
 });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Text(
          "Quiz Timer",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white
          ),
        ),
      ),
    );
  }

}