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
          body:Center(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child:InkWell(
                  onDoubleTap:(){
                    print("tapped");},
                  onLongPress:(){
                    print("tapped on long press");},
                  child: CircleAvatar(
                      child:Icon(
                        Icons.home,
                        color:Colors.white,
                      )
                  )
              ),
            ),
          ),
        )
    );
  }
}


