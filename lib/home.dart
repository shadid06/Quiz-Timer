import 'package:flutter/material.dart';

import 'quizpage.dart';

class HomePage extends StatefulWidget{
  _HomePageState createState()=>  _HomePageState();
}
class  _HomePageState extends State<HomePage>{
  List<String> images=[
   'images/linux.png',
    'images/java.png'

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page"
        ),
      ),
      body: ListView(
        children: <Widget>[
          customCard("Python",images[0]),
          customCard("Java",images[1]),
        ],
      ),
    );
  }
  Widget customCard(String title,String image){
    return Padding(padding: EdgeInsets.all(24),
    child: InkWell(
      onTap: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          return getjson(title);
        }));
      },
      child: Material(
        color: Colors.yellowAccent,
        elevation: 10.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.symmetric(
                vertical: 10.0
              ),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  child: ClipOval(
                    child: Image(
                        image: AssetImage(image),
                    ),
                  ),
                ),
              ),
              ),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Text(
                    "This description kdjfk jfowkc ldc ueow qpkpd crw eofjrue lfklvkm oeeoir kmflf kjhdfiue ioefiwj",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    );
  }

}