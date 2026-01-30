import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AxisAlignmentDemo(),
    );
  }
}

class AxisAlignmentDemo extends StatelessWidget {
  const AxisAlignmentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Image.asset(
        'assets/mountain.jpg',
        fit: BoxFit.fill,
      ),
      SizedBox(
        height: 50,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lake Oischenchen',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                ' Montreal ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              SizedBox(
                width: 3,
              ),
              Text("41"),
              SizedBox(
                width: 3,
              )
            ],
          )
        ]),
      ),
      SizedBox(
        height: 20,
      ),
      //3rd row
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "CALL",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.near_me,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "ROUTE",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "SHARE",
                  style: TextStyle(color: Colors.blue),
                )
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, "
          "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute "
          "irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim "
          "id est laborum.",
          style: TextStyle(fontSize: 14),
          softWrap: true,
        ),
      )
    ])));
  }
}
