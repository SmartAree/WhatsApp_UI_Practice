import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final icon;

  IconButtons({this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Colors.white70,),
      onPressed: (){
        print('button triggered');
      },
    );
  }
}
