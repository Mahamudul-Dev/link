import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/controllers/message_controllers/chat_controller.dart';
import 'package:link/data/chat.dart';
import 'package:link/styles/link_colors.dart';

class ChatList extends StatelessWidget {
  const ChatList() : super();

  @override
  Widget build(BuildContext context) {
    // dependency injection
    final ChatController _controller = Get.put(ChatController());
    return ListView.builder(
      itemCount: chats.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => _controller.goChat(context, chats[index]),
          child: ListTile(
            title: Text(
              chats[index].userName.toString(),
              style: const TextStyle(fontSize: 18),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                chats[index].messages!.last.message.toString(),
                style: const TextStyle(fontSize: 15),
              ),
            ),
            leading: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(100),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: raisinBlack,
                foregroundImage: CachedNetworkImageProvider(
                    chats[index].profilePic.toString()),
              ),
            ),
            trailing: Text(chats[index].messages!.last.timeStamp),
          ),
        );
      },
    );
  }
}
