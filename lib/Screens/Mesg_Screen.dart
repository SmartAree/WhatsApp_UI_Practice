import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';
import 'package:whatsapp_ui/constants.dart';

class MesgScreen extends StatefulWidget {
  @override
  _MesgScreenState createState() => _MesgScreenState();
}
class _MesgScreenState extends State<MesgScreen> {

  ScrollController _myController = ScrollController();

  @override
  Widget build(BuildContext context) {

    //this can start your chat from the bottom.
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _myController.jumpTo(_myController.position.maxScrollExtent);
    });
    return ListView(
      controller: _myController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Hey! How are you?', textAlign: TextAlign.right),
        ),

        Bubble(
          style: kSenderStyle,
          child: const Text('Hi, I am good!'),
        ),
        Bubble(
          style: kSenderStyle,
          child: const Text('What about you?'),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Are you coming today?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('I am great.Thank you!', textAlign: TextAlign.right),
        ),
        Bubble(
         style: kSenderStyle,
          child: const Text('Yes. I am excited!'),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Cool!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Hey! How are you?', textAlign: TextAlign.right),
        ),

        Bubble(
          style: kSenderStyle,
          child: const Text('Hi, I am good!'),
        ),
        Bubble(
          style: kSenderStyle,
          child: const Text('What about you?'),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Are you coming today?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('I am great.Thank you!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: kSenderStyle,
          child: const Text('Yes. I am excited!'),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Cool!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Hey! How are you?', textAlign: TextAlign.right),
        ),

        Bubble(
          style: kSenderStyle,
          child: const Text('Hi, I am good!'),
        ),
        Bubble(
          style: kSenderStyle,
          child: const Text('What about you?'),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Are you coming today?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('I am great.Thank you!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: kSenderStyle,
          child: const Text('Yes. I am excited!'),
        ),
        Bubble(
          style: kReceiverStyle,
          child: const Text('Cool!', textAlign: TextAlign.right),
        ),

    ]
    );
  }
}
