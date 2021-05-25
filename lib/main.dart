import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/home_page.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Color(0xFF075e54),
    accentColor: Color(0xFF25d366),
  ),
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));