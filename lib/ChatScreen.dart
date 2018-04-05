import 'package:flutter/material.dart';
import 'package:flutter_chatapp/ChatMessage.dart';


 class ChatScreen extends StatefulWidget {
   @override
   _ChatScreenState createState() => new _ChatScreenState();
 }

 class _ChatScreenState extends State<ChatScreen> {
//naming any variable start with '_' are private variable
 TextEditingController _textController = new TextEditingController();
 final List<ChatMessage> _messages = <ChatMessage>[];

 void handleSubmit(String text){
   _textController.clear();
   ChatMessage chatMessage = new ChatMessage(
     text:text);
   setState((){
     _messages.insert(0, chatMessage);
   });
 }

   Widget _textComposer(){
     return new IconTheme(
       data: new IconThemeData(color: Colors.lightBlueAccent),
       child: new Container(
         margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
              decoration: new InputDecoration.collapsed(hintText: "Enter your message"),
              controller: _textController,
              onSubmitted: handleSubmit,
            ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed:()=> handleSubmit(_textController.text)),
            )
          ],
        ),
       ),
     );
   }
   @override
   Widget build(BuildContext context) {
     return  new Column(
       children: <Widget>[
         new Flexible(child:
         new ListView.builder(
           itemBuilder: (_,int index)=>_messages[index],
           itemCount: _messages.length
           ,padding: const EdgeInsets.all(8.0),
           reverse: true,)
         ),
         new Divider(
           height: 1.0,),
         new Container(
           decoration: new BoxDecoration(color: Theme.of(context).cardColor),
           child: _textComposer(),
         )
       ],
     );
   }
 }
