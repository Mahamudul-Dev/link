import 'package:intl/intl.dart';
import 'package:link/models/call_model.dart';

final List<CallModel> calls = [
  CallModel(
      uid: 017,
      username: 'Elon Musk',
      profilePic:
          'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1500w,f_auto,q_auto:best/rockcms/2022-04/220421-elon-musk-al-1017-a6eece.jpg',
      time: DateTime.now(),
      duration: '1 hour',
      isVideo: false,
      isOnline: true),
  CallModel(
      uid: 01916302617,
      username: 'Mark Zuckerberg',
      profilePic:
          'https://cdn.britannica.com/99/236599-050-1199AD2C/Mark-Zuckerberg-2019.jpg',
      time: DateTime.now(),
      duration: '1 hour',
      isVideo: true,
      isOnline: false),
];
