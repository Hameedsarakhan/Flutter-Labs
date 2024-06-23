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
    var name = ['Item1', 'Item2', 'Item3', 'Item4', 'Item5'];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.separated Example", style: TextStyle(color:
        Colors.white, fontSize: 20,),),
        backgroundColor: Colors.blue,),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name[index],style:TextStyle(color: Colors.white,fontSize: 18)),
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.0), color:
              Colors.blueAccent,),),);
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,),
        itemCount: name.length,),
    );}}