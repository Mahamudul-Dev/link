import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/controllers/message_controllers/chat_controller.dart';
import 'package:link/styles/link_colors.dart';
import 'package:link/widgets/chat_bar.dart';

class WebChatScreen extends StatelessWidget {
  const WebChatScreen() : super();

  @override
  Widget build(BuildContext context) {
    final ChatController _controller = Get.put(ChatController());
    return Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/desktop_chat_bg.png'),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //ChatBar(profilePic: _controller.messeages!.profilePic, name: 'name')
          ],
        ));
  }
}
