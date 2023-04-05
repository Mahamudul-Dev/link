import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:link/data/profile.dart';
import 'package:link/styles/link_colors.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar() : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.084,
      color: raisinBlack,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: raisinBlack,
            foregroundImage:
                CachedNetworkImageProvider(profiles[1].userProfilePic),
          ),
          title: Text(profiles[0].userName),
          trailing: InkWell(
            onTap: () {},
            child: const Icon(Icons.menu),
          ),
        ),
      ),
    );
  }
}
