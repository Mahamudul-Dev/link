import 'package:flutter/material.dart';
import 'package:link/screens/web/web_chat_screen.dart';
import 'package:link/screens/web/web_messenger.dart';

class WebScreenHolder extends StatelessWidget {
  const WebScreenHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [const WebMessenger(), const WebChatScreen()],
    ));
  }
}
