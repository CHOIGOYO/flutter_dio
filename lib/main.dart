import 'package:flutter/material.dart';

import 'dio_server.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: (){server.getReq();}, child: Text('Get')),
          ElevatedButton(onPressed: (){server.postReq();}, child: Text('Post')),
          ElevatedButton(onPressed: (){server.getReqWzQuery();}, child: Text('GET WITH QUERY')),
        ],
      ),
    );
  }
}

