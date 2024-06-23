import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is my practice app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Text('NavBar')),
          body: ListView(
              scrollDirection:Axis.horizontal,
              children:[
                Text('hi',style:TextStyle(fontSize:25)),
                SizedBox(height:10),
                Text('hi',style:TextStyle(fontSize:25)),
                SizedBox(height:10),
                Text('hi',style:TextStyle(fontSize:25)),
                SizedBox(height:10),
                Text('hi',style:TextStyle(fontSize:25)),
              ]
          )
      ),
    );
  }
}
