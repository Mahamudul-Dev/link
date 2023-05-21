import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:link/data/profile.dart';
import 'package:link/screens/mobile/call_screen/call_history_screen.dart';
import 'package:link/screens/mobile/message_screen/mobile_messenger.dart';
import 'package:link/screens/mobile/profile_screen/profile_screen.dart';
import 'package:link/styles/link_colors.dart';

class MobileScreenHolder extends StatefulWidget {
  const MobileScreenHolder() : super();

  @override
  State<MobileScreenHolder> createState() => _MobileScreenHolderState();
}

class _MobileScreenHolderState extends State<MobileScreenHolder> {
  var screens = [const MessengerScreen(), const CallHistoryScreen()];
  var currentScreens = 0;
  double value = 0;
  var menuIcons = [Icons.menu_rounded, Icons.menu_open_rounded];
  var defaultMenuIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: raisinBlack,
        ),
        SafeArea(
          child: Material(
            child: Container(
              color: raisinBlack,
              width: 225,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                    child: DrawerHeader(
                        child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              setState(() {
                                value == 1 ? value = 0 : value = 1;
                                defaultMenuIcon == 0
                                    ? defaultMenuIcon = 1
                                    : defaultMenuIcon = 0;
                              });
                            });
                          },
                          child: Container(
                              height: 35,
                              width: 30,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: charcoal),
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 18,
                              )),
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () => Get.to(const ProfileScreen()),
                              child: CircleAvatar(
                                minRadius: 40,
                                maxRadius: 50,
                                backgroundColor: raisinBlack,
                                foregroundImage: CachedNetworkImageProvider(
                                    profiles[0].userProfilePic),
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              profiles[0].userName,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ],
                    )),
                  ),
                  Expanded(
                      child: ListView(
                    children: const [
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.usd,
                          color: platinum,
                        ),
                        title: Text(
                          'Pricing',
                          style: TextStyle(color: platinum, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: platinum,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.store,
                          color: platinum,
                          size: 28,
                        ),
                        title: Text(
                          'Marketplace',
                          style: TextStyle(color: platinum, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: platinum,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.robot,
                          color: platinum,
                          size: 28,
                        ),
                        title: Text(
                          'Jarvis',
                          style: TextStyle(color: platinum, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: platinum,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wallet,
                          color: platinum,
                          size: 28,
                        ),
                        title: Text(
                          'Wallet',
                          style: TextStyle(color: platinum, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: platinum,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.settings,
                          color: platinum,
                          size: 28,
                        ),
                        title: Text(
                          'Settings',
                          style: TextStyle(color: platinum, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: platinum,
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: platinum,
                          size: 28,
                        ),
                        title: Text(
                          'Log out',
                          style: TextStyle(color: platinum, fontSize: 16),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: platinum,
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
        TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: const Duration(milliseconds: 500),
            builder: (_, double val, __) {
              return (Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi / 6) * val),
                child: Scaffold(
                    appBar: AppBar(
                      leading: IconButton(
                          onPressed: () {
                            setState(() {
                              value == 1 ? value = 0 : value = 1;
                              defaultMenuIcon == 0
                                  ? defaultMenuIcon = 1
                                  : defaultMenuIcon = 0;
                            });
                          },
                          icon: Icon(menuIcons[defaultMenuIcon])),
                      title: const Text('Link'),
                      backgroundColor: charcoal,
                      actions: [
                        Stack(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.notifications)),
                            Positioned(
                              bottom: 9.0,
                              right: 10.0,
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: pictonBlue),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    body: screens[currentScreens],
                    bottomNavigationBar: GNav(
                      color: Colors.white,
                      activeColor: Colors.white,
                      tabBackgroundColor: slateGrayTransparent,
                      padding: const EdgeInsets.all(15.0),
                      style: GnavStyle.google,
                      gap: 8,
                      onTabChange: (index) {
                        return setState(() {
                          currentScreens = index;
                        });
                      },
                      tabs: const [
                        GButton(
                          icon: Icons.chat_rounded,
                          text: 'Messege',
                        ),
                        GButton(
                          icon: Icons.call_rounded,
                          text: 'Call',
                        ),
                        GButton(
                          icon: Icons.group_work_outlined,
                          text: 'Meeting',
                        ),
                        GButton(
                          icon: Icons.groups_outlined,
                          text: 'Group',
                        ),
                      ],
                    )),
              ));
            }),
      ],
    );
  }
}
