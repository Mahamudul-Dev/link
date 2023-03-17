import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/models/chat_model.dart';
import 'package:link/widgets/my_message_card.dart';
import 'package:link/widgets/sender_message_card.dart';

class MessageView extends StatelessWidget {
  final Chat chat;
  const MessageView({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/mobile_chat_bg.png'),
      )),
      child: ListView.builder(
        itemCount: chat.messages!.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return chat.messages![index].uid.isEqual(017)
              ? MyMessegeCard(
                  message: chat.messages![index].message,
                  time: chat.messages![index].timeStamp,
                )
              : SenderMessegeCard(
                  message: chat.messages![index].message,
                  time: chat.messages![index].timeStamp,
                );
        },
      ),
    );
  }
}
