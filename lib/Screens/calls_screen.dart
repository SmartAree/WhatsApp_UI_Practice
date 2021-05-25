import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/callDetail_screen.dart';
import 'package:whatsapp_ui/constants.dart';
import 'package:whatsapp_ui/models/call_model.dart';

class CallScreen extends StatefulWidget {

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: callData.length,
          itemBuilder: (context, index) =>
              Column(children: [
                Divider(
                  height: 10.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(callData[index].avatar),
                  ),
                  title: Text(
                      callData[index].name, style: kNamestyle
                  ),
                  subtitle: Row(children:[
                    Container(
                      child: callData[index].callType,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(callData[index].time, style: kTimestyle),
                    )
                  ]),
                  trailing: Icon(Icons.call, color: Theme.of(context).primaryColor,),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CallDetails()));
                  },
                )
              ],)
      ),
    );
  }
}
