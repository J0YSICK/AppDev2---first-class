import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: NamedRoutingDemo(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/landingPage': (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> groceryList = ['milk', 'bread', 'vegetables', 'chicken',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/landingPage', arguments: groceryList);
            },
                child: Text('click'))
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    final List<String>? container = ModalRoute.of(context)?.settings.arguments as List<String>?;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Once again"),
            SizedBox(height:10),

            Expanded(child: ListView.builder(itemCount: container?.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(container![index], textAlign: TextAlign.center,),
                  );
                }),),
          ],
        ),
      ),
    );
  }
}


