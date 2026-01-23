import 'package:flutter/material.dart';

void main(){
  runApp(myHomePage());
}

class myHomePage extends StatelessWidget {
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCounterApp(),
    );
  }
}

class MyCounterApp extends StatefulWidget {
  const MyCounterApp({super.key});
  // state class captures the present state/context
  @override
  State<MyCounterApp> createState() => _MyCounterAppState();
}

// this class reruns the engine to display the new state

// there is a method setState that triggers the context
class _MyCounterAppState extends State<MyCounterApp> {
  int counter = 0;
  void add(){
    setState(() {
      counter++;
    });
  }

  void substract(){
    if(counter >= 1){
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter page"),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: add, child: Text("+")),
            SizedBox(height: 20),
            Text('${counter}'),
            SizedBox(height: 20),
            ElevatedButton(onPressed: substract, child: Text("-")),
          ],
        )
      )
    );
  }
}


