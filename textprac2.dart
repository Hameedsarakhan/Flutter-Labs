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
  bool _isExpanded = false;

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is my practice app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('NavBar')),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.cyan,
            child: Center(
              child: GestureDetector(
                onTap: _handleTap,
                child: Text(
                  "It seems there was a mistake in your query regarding the container. Let me clarify and ensure everything is correct and concise. The",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  maxLines: _isExpanded ? null : 2,
                  overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
