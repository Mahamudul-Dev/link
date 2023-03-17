import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/models/chat_model.dart';
import 'package:link/screens/mobile/message_screen/group_chat_screen.dart';
import 'package:link/screens/mobile/message_screen/p2p_chat_screen.dart';

class ChatController extends GetxController {
  Chat? messeages;

  goChat(BuildContext context, Chat chat) {
    if (Platform.isWindows ||
        Platform.isLinux ||
        Platform.isMacOS ||
        MediaQuery.of(context).size.width > 900) {
      messeages = chat;
      update();
    } else {
      chat.isGroup != null
          ? Get.to(const GroupChatScreen())
          : Get.to(P2PChatScreen(
              chat: chat,
            ));
    }
  }
}
