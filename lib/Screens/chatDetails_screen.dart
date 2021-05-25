import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Mesg_Screen.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/models/Icon_buttons.dart';


class ChatDetails extends StatefulWidget {

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {

  static final borderDecor = OutlineInputBorder(
    borderSide: new BorderSide(color: Colors.white,),
    borderRadius: new BorderRadius.circular(50.0),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){print('video call clicked');},
              icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){print('phone clicked');},
              icon: Icon(Icons.phone)),
          IconButton(onPressed: (){print('three dots clicked');},
              icon: Icon(Icons.more_vert)),
        ],
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('images/girl1.jpg'),
            ),
            Padding(padding: EdgeInsets.only(left: 6.0),
            child: Text('Fariha', style: kNamestyle,),),
          ],
        )
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
              child: MesgScreen()),
          Container(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Flexible(
                   child: TextFormField(
                     decoration: InputDecoration(
                       filled: true,
                       fillColor: Color(0xFF075e54),
                         contentPadding: const EdgeInsets.only(left: 14.0, bottom: 1.0, top: 5.0),
                       focusedBorder: borderDecor,
                         enabledBorder: borderDecor,
                       //***** ICONS *****
                       prefixIcon: IconButtons(icon: Icons.emoji_emotions_outlined,),
                       suffixIcon: IconButtons(icon: Icons.camera_alt,),
                       suffix: IconButtons(icon: Icons.animation,),
                       hintText: 'Type a message',
                       hintStyle: kHintTextStyle
                   ),
                   ),
                 ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF25d366),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(14),
                  ),
                    onPressed: (){
                    print('voice chat enabled');
                    },
                    child: Icon(Icons.mic))

              ]),
          ),
        ],
      ),
      );
  }
}

