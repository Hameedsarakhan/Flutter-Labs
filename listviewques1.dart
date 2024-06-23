import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );}}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var name = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ListView with Expanded Example",
          style: TextStyle(color: Colors.white, fontSize: 20,),
        ),
        backgroundColor: Colors.blue,),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.label),
                SizedBox(width:10),
                Expanded(child: Text(name[index], style: TextStyle(fontSize: 18),),),
              ],
            ),
          );
        },
      ),
    );}}