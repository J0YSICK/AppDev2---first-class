import 'package:flutter/material.dart';
void main() {
  runApp(MyPage());
}
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LakeView(),
    );
  }
}
class LakeView extends StatelessWidget {
  const LakeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/mountain.jpg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Lake Oischenchen', style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text(' Swiss Lake ')

                  ],

                ),
                Icon(Icons.star,
                color: Colors.red,),
                Text('46')
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Column(
                  children: [
                    Icon(
                      Icons.navigation,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 10,),
                    Text('CALL'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.navigation,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 10,),
                    Text('CALL'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.navigation,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 10,),
                    Text('CALL'),
                  ],
                ),

              ],
            )


          ],
        ),
      ),
    );
  }
}
