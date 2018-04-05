import 'package:flutter/material.dart';
import 'package:flutter_chatapp/ChatScreen.dart';


class HomePage extends StatelessWidget {
  String chtter = "Chatter";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(chtter),
      ),
      body: new ChatScreen()
    );
  }
}
