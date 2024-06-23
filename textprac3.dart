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
        body: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Bottom Right',
              style: TextStyle(color: Color.fromARGB(255, 230, 119, 119)),
            ),
          ),
        ),
      ),
    );
  }
}


