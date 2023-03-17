class CallModel {
  final int uid;
  final String username;
  final String profilePic;
  final String time;
  final String duration;
  final bool isVideo;
  final bool isOnline;

  CallModel(
      {required this.uid,
      required this.username,
      required this.profilePic,
      required this.time,
      required this.duration,
      required this.isVideo,
      required this.isOnline});
}
