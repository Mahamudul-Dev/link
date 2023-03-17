import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:link/data/profile.dart';
import 'package:link/styles/link_colors.dart';
import 'package:link/widgets/rounded_icon_button.dart';

class FriendList extends StatelessWidget {
  final bool isCallScreen;
  const FriendList({super.key, required this.isCallScreen});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: raisinBlack,
              foregroundImage:
                  CachedNetworkImageProvider(profiles[index].userProfilePic),
            ),
            title: Text(
              profiles[index].userName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isCallScreen
                      ? const InkWell(
                          child: RoundedIconButton(
                              color: gunmetal,
                              iconColor: platinum,
                              icon: Icons.message_rounded))
                      : const SizedBox.shrink(),
                  const InkWell(
                      child: RoundedIconButton(
                          color: electricPurple,
                          iconColor: platinum,
                          icon: Icons.call)),
                  const InkWell(
                      child: RoundedIconButton(
                          color: pictonBlue,
                          iconColor: platinum,
                          icon: Icons.video_call_rounded))
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(
              color: slateGray,
              thickness: 0.8,
            ),
        itemCount: profiles.length);
  }
}
