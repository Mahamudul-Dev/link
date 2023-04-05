import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:link/data/profile.dart';

class UserCard extends StatelessWidget {
  const UserCard() : super();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: profiles.length,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 95,
          height: 140,
          margin: const EdgeInsets.only(bottom: 52),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0x72000000),
                blurRadius: 34,
                offset: Offset(20, 24),
              ),
            ],
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                    profiles[index].userProfilePic.toString()),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0x00292f3f), Color(0xcc292f3f)],
            ),
          ),
          child: Stack(children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(125, 0, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  profiles[index].userName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.circle,
                  color: Colors.green,
                  size: 20,
                ))
          ]),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        width: 12.0,
      ),
    );
  }
}
