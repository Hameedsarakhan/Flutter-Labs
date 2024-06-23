import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'InkWell Widget',
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, // Changed to vertical scroll
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.lightBlueAccent,
                      margin: const EdgeInsets.all(11),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.yellow,
                      margin: const EdgeInsets.all(11),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.pinkAccent,
                      margin: const EdgeInsets.all(11),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.lightBlueAccent,
                      margin: const EdgeInsets.all(11),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.purpleAccent,
                      margin: const EdgeInsets.all(11),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                color: Colors.green,
                margin: const EdgeInsets.all(11),
              ),
              Container(
                height: 100,
                color: Colors.purple,
                margin: const EdgeInsets.all(11),
              ),
              Container(
                height: 100,
                color: Colors.pink,
                margin: const EdgeInsets.all(11),
              ),
              Container(
                height: 100,
                color: Colors.tealAccent,
                margin: const EdgeInsets.all(11),
              ),
              Container(
                height: 100,
                color: Colors.blueGrey,
                margin: const EdgeInsets.all(11),
              ),
              Container(
                height: 100,
                color: Colors.orange,
                margin: const EdgeInsets.all(11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
