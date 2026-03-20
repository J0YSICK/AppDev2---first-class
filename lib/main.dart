import 'package:flutter/material.dart';
import 'userModel.dart';
import 'constants.dart';
import 'API_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestAPI(),
    );
  }
}

class RestAPI extends StatefulWidget {
  const RestAPI({super.key});

  @override
  State<RestAPI> createState() => _RestAPIState();
}

class _RestAPIState extends State<RestAPI> {

  late List<UserModel>? _userModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await API_service().getUsers());
    Future.delayed(Duration(seconds: 2)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' REST API'),
          centerTitle: true,

        ),
        backgroundColor: Colors.greenAccent,
        body: _userModel == null || _userModel!.isEmpty ?
        Center(
          child: CircularProgressIndicator(),
        ) : ListView.builder(
            itemCount: _userModel!.length, itemBuilder: (context, index) {
          return Card(
              child:
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_userModel![index].id.toString()),
                      Text(_userModel![index].username),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(_userModel![index].email),
                      Text(_userModel![index].website),
                      Text(_userModel![index].address.city),
                      Text(_userModel![index].address.geo.lat),
                      Text(_userModel![index].address.geo.lng),
                      Text(_userModel![index].company.catchPhrase),
                    ],
                  )
                ],
              )
          );
        }
        )
    );
  }
}

