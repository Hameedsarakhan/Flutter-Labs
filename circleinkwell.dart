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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(), //add to ScrollView
              child: Row(
                children: [
                  InkWell(
                    onLongPress: () {
                      print("blue");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Text("B"),
                    ),
                  ),
                  InkWell(
                    onLongPress: () {
                      print("yellow");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.yellow,
                      child: Text("Y"),
                    ),
                  ),
                  InkWell(
                    onLongPress: () {
                      print("red");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: Text("R"),
                    ),
                  ),
                  InkWell(
                    onLongPress: () {
                      print("green");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                      child: Text("G"),
                    ),
                  ),
                  InkWell(
                    onLongPress: () {
                      print("orange");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.orange,
                      child: Text("O"),
                    ),
                  ),
                  InkWell(
                    onLongPress: () {
                      print("purple");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.purple,
                      child: Text("P"),
                    ),
                  ),
                  InkWell(
                    onLongPress: () {
                      print("pink");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.pink,
                      child: Text("P"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


