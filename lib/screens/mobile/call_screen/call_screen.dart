import 'package:avatar_glow/avatar_glow.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:link/styles/link_colors.dart';

class CallScreen extends StatelessWidget {
  final avater;
  final username;
  const CallScreen({super.key, required this.avater, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              size: 20,
            ),
            SizedBox(width: 10),
            Text(
              'End-to-end encrypted',
              style: TextStyle(color: platinum, fontSize: 14),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            username,
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: platinum),
          ),
        ),
        AvatarGlow(
            animate: true,
            glowColor: platinum,
            shape: BoxShape.circle,
            endRadius: 120.0,
            child: Material(
              shape: const CircleBorder(),
              child: CircleAvatar(
                backgroundColor: raisinBlack,
                foregroundImage: CachedNetworkImageProvider(avater),
                radius: 60,
              ),
            )),
      ]),
      bottomSheet: BottomSheet(
          enableDrag: false,
          backgroundColor: raisinBlack,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          onClosing: () {},
          builder: (context) {
            return Container(
              height: 300,
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
              child: Column(
                children: [
                  const Text(
                    'Calling...',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 7,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: ashBlack,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            FontAwesomeIcons.volumeHigh,
                            color: platinum,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.mic,
                            size: 35,
                            color: platinum,
                          ),
                        ),
                        InkWell(
                            onTap: () => Get.back(),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.call_end,
                                color: platinum,
                                size: 35,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
