import 'package:flutter/material.dart';
import 'package:flutter_chatapp/HomePage.dart';


void main(){
  runApp(new MyApp());
}
 
 // ignore: must_be_immutable
 class MyApp extends StatelessWidget {

  String chatApp="Chat App";
   @override
   Widget build(BuildContext context) {
     return new MaterialApp(
       title:(chatApp),
       home: new HomePage(),
     );
   }
 }
 