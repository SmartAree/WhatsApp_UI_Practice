import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants.dart';

class CallDetails extends StatefulWidget {

  @override
  _CallDetailsState createState() => _CallDetailsState();
}

class _CallDetailsState extends State<CallDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(onPressed: (){print('mesg triggered');},
                icon: Icon(Icons.message)),
            IconButton(onPressed: (){print('three dots clicked');},
                icon: Icon(Icons.more_vert)),
          ],
          titleSpacing: 0.0,
          title: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 6.0),
                child: Text('Call Info', style: kNamestyle,),),
            ],
          )
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius:25.0,
                  backgroundImage: AssetImage('images/girl6.jpg'),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 6.0, right: 150.0),
                child: Text('Nirmal', style: kNamestyle,),),
              IconButton(onPressed: (){print('call triggered');},
                  icon: Icon(Icons.call, color: Theme.of(context).primaryColor,)),
              IconButton(onPressed: (){print('video call triggered');},
                  icon: Icon(Icons.video_call, color: Theme.of(context).primaryColor,)),
            ],
          ),
          Divider(
            height: 10.0,
          ),
          Text('Today', style: kTimestyle,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.call_received, color: Colors.green,),
              title: Text(
                  'Outgoing call', style: TextStyle(
                fontSize: 20.0,
              )
              ),
              subtitle: Text(
                  '6:00 PM',
                  style: kMsgstyle
              ),
              trailing: Text(
                  'Call declined', style: kTimestyle
              ),
            ),
          )
        ]
      ),
    );
  }
}
