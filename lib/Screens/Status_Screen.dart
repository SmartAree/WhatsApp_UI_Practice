import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/Icon_buttons.dart';
import 'package:whatsapp_ui/models/status_model.dart';
import '../constants.dart';

class StatusScreen extends StatefulWidget {

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/girl1.jpg'),
        child: Icon(Icons.add),
    ),
      title: Text('my status', style: kNamestyle),
      subtitle: Text('Tap to add status update'),
      trailing: Container(
        width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).accentColor
          ),
          child: IconButtons(icon: Icons.edit,)),
      onTap: (){
        print('my status details');
      },
    ),
        Divider(height: 10.0,),
        Padding(padding: EdgeInsets.only( left: 20.0),
          child: Align(alignment: Alignment.topLeft,
          child: Text('Recent updates', style: kTimestyle,),),),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/girl3.jpg'),
          ),
          title: Text('Fariha', style: kNamestyle),
          subtitle: Text('7 hours ago'),
          onTap: (){
            print('show status');
          },
        ),
        Flexible(child: ListView.builder(
          itemCount: statusData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(statusData[i].avatar),
                  ),
                  title: Text(
                      statusData[i].name, style: kNamestyle
                  ),
                  subtitle: Text(
                      statusData[i].time,
                      style: kMsgstyle
                  ),

                  onTap: (){
                    print('show status');
                  },
                ),
                Divider(
                  height: 10.0,
                )

              ],
            ),
        ),
        )


      ],);
  }
}
