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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello and welcome to this lab Sarah!",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      print("login");
                    },
                    child: Text("Login"),
                    //style: TextButton.styleFrom(primary: Colors.green),
                  ),
                  SizedBox(width: 10), // Adding space between buttons
                  TextButton(
                    onPressed: () {
                      print("signup");
                    },
                    child: Text("Signup"),
                    //style: TextButton.styleFrom(primary: Colors.cyan),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
