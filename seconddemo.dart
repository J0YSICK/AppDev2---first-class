import 'package:flutter/material.dart';

void main(){
  runApp(MySecondApp());
}

class MySecondApp extends StatelessWidget {
  const MySecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySecondDemo(),
    );
  }
}

class MySecondDemo extends StatelessWidget {
  const MySecondDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Second Program"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hello", style: TextStyle(fontSize: 40), ),
            SizedBox(height:20),
            Text("Vanier"),
            SizedBox(height:30),
            ElevatedButton(
              //anonymous function
                onPressed: (){
                  // code to pop a message
                  ScaffoldMessenger.of(context).
                  showSnackBar(SnackBar(content: Text("Login Successful")));
                },
                child: Text("Login")),
            SizedBox(height:30,),
            Container(
              height: 200,
              width: 300,
              color: Colors.redAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/lion.jpg',height:200, fit: BoxFit.cover),
                SizedBox(width: 20),
                Image.asset('assets/lion1.jpg',height:200, fit: BoxFit.cover)
              ],
            ),
            Icon(
              Icons.beach_access,
              color: Colors.amber,
              size: 30,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.amber,
              size: 30,
            ),
          ],
        )

      )
    );
  }
}

