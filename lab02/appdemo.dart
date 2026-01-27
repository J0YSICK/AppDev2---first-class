import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LakeProject(),
    );
  }
}

class LakeProject extends StatelessWidget {
  const LakeProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/mountain.jpg', fit: BoxFit.fill,),
            Row(
              children: [
                SizedBox(height: 50,),
                Column(
                  children: [
                    Text("Title"),
                    Text("Description"),
                  ],
                ),
                Column(
                  children: [

                  ],
                )

              ]
            )


          ],
        ),
      ),
    );
  }
}

