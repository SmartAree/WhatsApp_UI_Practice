import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/chatDetails_screen.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/models/chatModels.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: chatData.length,
          itemBuilder: (context, index) =>
          Column(children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
               backgroundImage: AssetImage(chatData[index].avatar),
              ),
              title: Text(
                chatData[index].name, style: kNamestyle
              ),
              subtitle: Text(
                chatData[index].message,
                style: kMsgstyle
              ),
              trailing: Text(
                chatData[index].time, style: kTimestyle
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatDetails()));
              },
            )
          ],)
          ),
    );
  }
}
