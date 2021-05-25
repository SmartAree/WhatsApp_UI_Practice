import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Chats_Screen.dart';
import 'package:whatsapp_ui/Screens/Status_Screen.dart';
import 'package:whatsapp_ui/Screens/calls_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // to allow for non-null fields, that did not have to be immediately initialized.
  late TabController _tabController;

  List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt),),
    Tab(text: 'CHATS',),
    Tab(text: 'STATUS',),
    Tab(text: 'CALLS',),
  ];

  @override
  void initState() {
    //vsync is the property that represents the TickerProvider (i.e., Tick is similar to clock's tick which means that at every certain duration TickerProvider will render the class state and redraw the object.)
   _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
   ..addListener(() {
     setState(() {
     });
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',),
        actions: [
          IconButton(onPressed: (){
            print('search clicked');
          }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){
            print('three dots clicked');
          }, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: _tabController,
            indicatorColor: Colors.white70,
            tabs: topTabs
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ],
      ),
      floatingActionButton: _getFAB(),
    );
  }
  _getFAB(){
    if(_tabController.index == 1){
      return FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message, color: Colors.white,),
        onPressed: () => print('open chats')
      );
    } else if (_tabController.index == 2) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.camera_alt, color: Colors.white,),
          onPressed: () => print('open camera')
      );
    } else if (_tabController.index == 3) {
      return FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: Icon(Icons.call, color: Colors.white,),
          onPressed: () => print('open call')
      );
    }
  }
}


