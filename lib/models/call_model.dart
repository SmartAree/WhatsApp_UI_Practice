import 'package:flutter/material.dart';

class CallModel {

  String name;
  Icon callType;
  String time;
  String avatar;

  CallModel({required this.name, required this.callType, required this.time, required this.avatar});

  static Icon callReceived = Icon(Icons.call_received, color: Colors.green, size: 18.0,);
  static Icon callMissed = Icon(Icons.call_missed, color: Colors.red,
  size: 18.0,);
}

List<CallModel> callData = [
  CallModel(name: 'Nirmal', time: '1:45', avatar: 'images/girl6.jpg', callType: CallModel.callReceived ),
  CallModel(name: 'Mirza',  time: '10:45', avatar: 'images/boy1.jpg', callType: CallModel.callReceived),
  CallModel(name: 'Ahmed',  time: '1:00', avatar: 'images/boy2.jpg', callType: CallModel.callMissed),
  CallModel(name: 'Sonia', time: '7:19', avatar: 'images/girl5.jpg', callType: CallModel.callReceived),
  CallModel(name: 'Fariha',  time: '6:3', avatar: 'images/girl1.jpg', callType: CallModel.callMissed),

];


