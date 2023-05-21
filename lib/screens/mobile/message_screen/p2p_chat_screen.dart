import 'package:cached_network_image/cached_network_image.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/controllers/message_controllers/p2pchat_controller.dart';
import 'package:link/models/chat_model.dart';
import 'package:link/screens/mobile/call_screen/call_screen.dart';
import 'package:link/styles/link_colors.dart';
import 'package:link/widgets/message_view.dart';

import 'package:flutter/foundation.dart' as foundation;

class P2PChatScreen extends StatelessWidget {
  final Chat chat;
  const P2PChatScreen({required this.chat}) : super();

  @override
  Widget build(BuildContext context) {
    final P2PChatController controller = Get.put(P2PChatController());
    
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Material(
                    elevation: 4.0,
                    borderRadius: BorderRadius.circular(100),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: raisinBlack,
                      foregroundImage: CachedNetworkImageProvider(
                          chat.profilePic.toString()),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(chat.userName)
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => Get.to(CallScreen(
                    username: chat.userName,
                    avater: chat.profilePic,
                  )),
                  child: const Icon(
                    Icons.call,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 8.0),
                const InkWell(
                  child: Icon(Icons.video_call, size: 25),
                ),
                const SizedBox(width: 8.0),
                InkWell(
                  onTap: () => showModalBottomSheet(
                      isScrollControlled: true,
                      useSafeArea: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      context: context,
                      builder: (context) => buildProfileSheet(chat)),
                  child: const Icon(Icons.menu_rounded, size: 25),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: MessageView(chat: chat)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildBottomMessageBar(context, controller.messegeEditingController),
                bottomEmojiPicker()
              ],
            )
          ),
        ],
      ),
    );
  }
}

// profile sheet screen----------------->
Widget buildProfileSheet(Chat chat) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Padding(
        padding: const EdgeInsets.only(
            top: 20.0, left: 20.0, right: 20.0, bottom: 8.0),
        child: CircleAvatar(
          radius: 45,
          backgroundColor: raisinBlack,
          foregroundImage:
              CachedNetworkImageProvider(chat.profilePic.toString()),
        ),
      ),
      Text(
        chat.userName,
        style: const TextStyle(fontSize: 22),
      ),
      const SizedBox(height: 8.0),
      Text(
        chat.bio.toString(),
        style: const TextStyle(fontSize: 16),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'About: ',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              chat.about.toString(),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
            left: 20.0, right: 20.0, bottom: 5.0, top: 10.0),
        child: Row(
          children: [
            const Text(
              'UID: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(chat.uid.toString(), style: const TextStyle(fontSize: 16))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
        child: Row(
          children: [
            const Text(
              'E-mail: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(chat.email.toString(), style: const TextStyle(fontSize: 16))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
        child: Row(
          children: [
            const Text(
              'Gender: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(chat.gender.toString(), style: const TextStyle(fontSize: 16))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
        child: Row(
          children: [
            const Text(
              'Age: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(chat.age.toString(), style: const TextStyle(fontSize: 16))
          ],
        ),
      ),
      const SizedBox(height: 10.0),
      ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(electricPurple)),
          onPressed: () {},
          child: const Text(
            'Block',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: platinum),
          )),
      const SizedBox(height: 10.0)
    ],
  );
}

// message field--------------->
Widget buildBottomMessageBar(
    BuildContext context, TextEditingController controller) {
  return Row(
    children: [
      Expanded(
        child: Container(
          margin:
              const EdgeInsets.only(left: 10, right: 10, bottom: 18, top: 12),
          padding: const EdgeInsets.only(left: 16),
          decoration: const BoxDecoration(
            color: raisinBlack,
            borderRadius: BorderRadiusDirectional.horizontal(
                start: Radius.circular(56), end: Radius.circular(56)),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.emoji_emotions,
                    color: platinum,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextField(
                    controller: controller,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Type your message',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  //onTap: () => _permissionHandler.storage_permission(),
                  child: Icon(
                    Icons.attach_file,
                    color: platinum,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0, left: 3.0),
        child: FloatingActionButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              print(controller.text);
            },
            backgroundColor: electricPurple,
            child: controller.text != null
                ? const Icon(
                    Icons.send,
                    color: platinum,
                  )
                : const Icon(
                    Icons.mic,
                    color: platinum,
                  )),
      ),
    ],
  );
}


// imoji picker ----------->
Widget bottomEmojiPicker(){
  return EmojiPicker(
    onBackspacePressed: () {
        // Do something when the user taps the backspace button (optional)
        // Set it to null to hide the Backspace-Button
    },
    //textEditingController: textEditionController, // pass here the same [TextEditingController] that is connected to your input field, usually a [TextFormField]
    config: Config(
        columns: 7,
        emojiSizeMax: 32 * (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.30 : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
        verticalSpacing: 0,
        horizontalSpacing: 0,
        gridPadding: EdgeInsets.zero,
        initCategory: Category.RECENT,
        bgColor: const Color(0xFFF2F2F2),
        indicatorColor: Colors.blue,
        iconColor: Colors.grey,
        iconColorSelected: Colors.blue,
        backspaceColor: Colors.blue,
        skinToneDialogBgColor: Colors.white,
        skinToneIndicatorColor: Colors.grey,
        enableSkinTones: true,
        showRecentsTab: true,
        recentsLimit: 28,
        noRecents: const Text(
          'No Recents',
          style: TextStyle(fontSize: 20, color: Colors.black26),
          textAlign: TextAlign.center,
        ), // Needs to be const Widget
        loadingIndicator: const SizedBox.shrink(), // Needs to be const Widget
        tabIndicatorAnimDuration: kTabScrollDuration,    
        categoryIcons: const CategoryIcons(),
        buttonMode: ButtonMode.MATERIAL,
    ),
);
}

