import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';


const kNamestyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.0
);

const kMsgstyle = TextStyle(
    color: Colors.grey,
    fontSize: 15.0
);

const kTimestyle = TextStyle(
    color: Colors.grey,
    fontSize: 13.0
);

const kHintTextStyle = TextStyle(
    color: Colors.white70,
    fontSize: 20.0
);


const kSenderStyle = BubbleStyle(
  margin: const BubbleEdges.only(top: 10),
  alignment: Alignment.topLeft,
  nip: BubbleNip.leftTop,
);

const kReceiverStyle = BubbleStyle(
  margin: const BubbleEdges.only(top: 10),
  alignment: Alignment.topRight,
  nip: BubbleNip.rightTop,
  color: const Color.fromRGBO(225, 255, 199, 1),);