import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/screens/mobile/call_screen/random_call_screen.dart';
import 'package:link/styles/link_colors.dart';
import 'package:link/widgets/friend_list.dart';

class FriendListScreen extends StatelessWidget {
  const FriendListScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Friend list',
            style: TextStyle(color: platinum),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Get.to(RandomCallScreen()),
                child: const Icon(
                  Icons.wifi_tethering,
                  size: 28,
                ),
              ),
            )
          ],
        ),
        body: const FriendList(isCallScreen: true));
  }
}
