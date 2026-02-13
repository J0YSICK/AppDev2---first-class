import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyNavigationDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyNavigationDemo extends StatelessWidget {
  //const MyNavigationDemo({super.key});
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  List<String> groceryList = ['milk', 'bread', 'vegetables', 'chicken',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('First screen here'),
          centerTitle: true,

      ),
      body: Center(
          child: Column(
            children: [
              Text('First screen with user data'),
              SizedBox(height: 10,),
              TextField(
                  controller: login,
                  decoration: InputDecoration(
                      labelText: 'Enter your login credentials'
                  )
              ),
              SizedBox(height:10,),
              TextField(
                  controller: password,
                  decoration: InputDecoration(
                      labelText: 'Enter your password'
                  )
              ),
              ElevatedButton(
                  onPressed: (){
                    // call the Navigator class that helps to connect the second screen
                    //MPR used for default
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondScreen(
                      data0: login.text,
                      data1: password.text,
                      container: groceryList
                    ) ));

                  },
                  child: Text('Move')),

            ],
          )
      )


    );
  }
}

class MySecondScreen extends StatelessWidget {
  final String data0;
  final String data1;
  final List<String> container;
  const MySecondScreen({required this.data0, required this.data1, required this.container});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: [
            Text('Welcome to the second screen'),
            SizedBox(height: 10,),
            Text('User login: $data0'),
            Text('User password: $data1'),
            SizedBox(height: 20,),
            Expanded(child: ListView.builder(itemCount: container.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(container[index], textAlign: TextAlign.center,),

                  );
                }),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Go Back'))
          ],
        ),
      ),
    );
  }
}


