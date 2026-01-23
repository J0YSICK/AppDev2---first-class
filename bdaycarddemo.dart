import 'package:flutter/material.dart';

void main(){
  runApp(birthdayApp());
}

class birthdayApp extends StatelessWidget {
  const birthdayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bdayCardDemo(),
    );
  }
}

class bdayCardDemo extends StatelessWidget {
  const bdayCardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Happy Birthday", style: TextStyle(fontSize: 40),),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image.asset('assets/bdaycake.jpg', fit: BoxFit.cover),
            SizedBox(height: 100,),
            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).
              showSnackBar(SnackBar(content: Text("You are one year older!")));
            }, child: Text("Surprise")),
            SizedBox(height: 200),
            Text("To my dearest friend ____")
          ],
        ),
      ),
    );
  }
}

