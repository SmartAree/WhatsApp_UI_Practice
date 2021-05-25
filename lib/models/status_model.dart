

class StatusModel {

  String name;
  String time;
  String avatar;

  StatusModel({required this.name, required this.time, required this.avatar});

}

List<StatusModel> statusData = [
  StatusModel(name: 'Hira', time: '1:45 pm', avatar: 'images/girl6.jpg',),
  StatusModel(name: 'Zeeshan',  time: '2 hours ago', avatar: 'images/boy1.jpg', ),
  StatusModel(name: 'Sonam',  time: '9 hours ago', avatar: 'images/boy2.jpg', ),
  StatusModel(name: 'Fawaz', time: '7:19 pm', avatar: 'images/girl5.jpg', ),
  StatusModel(name: 'Prakash',  time: '6:3 am', avatar: 'images/girl1.jpg',),

];