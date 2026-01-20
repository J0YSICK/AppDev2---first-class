import 'package:flutter/material.dart';

//this package gets me all the functions that will be
//used to run the code in material

void main() {
  //First layer / starting point
  runApp(
      MyFirstApp()); //runApp is the method to call the design class. i.e. MyFirstClass
}

//Second layer
class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDemo(),
    );
  }
}

//Third layer in which the app is designed
class MyDemo extends StatelessWidget {
  const MyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My First Program'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text("Hi", style: TextStyle(fontSize: 40),),
              SizedBox(height:20,),
              Text("Vanier"),
              SizedBox(height:30,),
              Text("Mobile"),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: (){

                  },
                  child: Text("Login")),
            ],
          ),
        ));
  }
}
