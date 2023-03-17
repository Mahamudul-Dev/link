import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:link/styles/link_colors.dart';

class ChatBar extends StatelessWidget {
  final String profilePic;
  final String name;

  const ChatBar({super.key, required this.profilePic, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.084,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10),
      color: raisinBlack,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: raisinBlack,
            foregroundImage: CachedNetworkImageProvider(profilePic),
          )
        ],
      ),
    );
  }
}
