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
            appBar: AppBar(title: const Text('Scrollview')),
            body:SingleChildScrollView(
                child:Column(
                    children:[
                      Container(
                        height:100,
                        color:Colors.cyan,
                      ),
                      Container(
                        height:100,
                        color:Colors.green,
                      ),
                      Container(
                        height:100,
                        color:Colors.cyan,
                      ),
                      Container(
                        height:100,
                        color:Colors.yellow,
                      ),
                      Container(
                        height:100,
                        color:Colors.black,
                      ),
                      Container(
                        height:100,
                        color:Colors.cyan,

                      )
                    ]
                )
            )
        )
    );
  }}