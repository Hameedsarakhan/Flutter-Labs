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
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is my practice app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Scrollview')),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Color.fromARGB(255, 23, 198, 93),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        width: 50,
                        height: 50,
                        color: Color.fromARGB(255, 198, 198, 23),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        width: 50,
                        height: 50,
                        color: Color.fromARGB(255, 23, 198, 93),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        width: 50,
                        height: 50,
                        color: Color.fromARGB(255, 198, 23, 105),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        width: 50,
                        height: 50,
                        color: Color.fromARGB(255, 198, 137, 23),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        width: 50,
                        height: 50,
                        color: Color.fromARGB(255, 38, 23, 198),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: double.infinity,
                height: 140,
                color: Colors.cyan,
              ),
              const SizedBox(height: 2),
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.green,
              ),
              const SizedBox(height: 2),
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.cyan,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
