import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/data/calls.dart';
import 'package:link/screens/mobile/friends_screen/friend_list_screen.dart';
import 'package:link/styles/link_colors.dart';
import 'package:link/widgets/rounded_icon_button.dart';
import 'package:link/widgets/searchbar.dart';
import 'package:timeago/timeago.dart' as timeago;


class CallHistoryScreen extends StatelessWidget {
  const CallHistoryScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 45),
            child: CustomSearchBar(
              onAddTap: () {
                Get.to(const FriendListScreen());
              },
              onSearchTap: () {},
            )),
        body: ListView.builder(
          itemCount: calls.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: raisinBlack,
                  foregroundImage:
                      CachedNetworkImageProvider(calls[index].profilePic),
                ),
                title: Text(
                  calls[index].username,
                  style: const TextStyle(fontSize: 16, color: platinum),
                ),
                subtitle: Row(
                  children: [
                    const Icon(
                      Icons.call_missed,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 3.0),
                    const Text(
                      'Missed',
                      style: TextStyle(color: Colors.red),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      child: Text('|'),
                    ),
                    Text(timeago.format(calls[index].time))
                  ],
                ),
                trailing: calls[index].isVideo
                    ? const RoundedIconButton(
                        color: pictonBlue,
                        iconColor: platinum,
                        icon: Icons.video_call_rounded)
                    : const RoundedIconButton(
                        color: electricPurple,
                        iconColor: platinum,
                        icon: Icons.call));
          },
        ));
  }
}
