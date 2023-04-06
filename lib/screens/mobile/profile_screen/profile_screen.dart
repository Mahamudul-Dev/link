import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:link/data/profile.dart';
import 'package:link/styles/link_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: raisinBlack,
      appBar: AppBar(),
      body: ListView(
        children: [
          const Text(
            'Profile',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15.0),
          Container(
            height: 200,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
            decoration: BoxDecoration(
                color: deepGrey, borderRadius: BorderRadius.circular(15)),
            child: Stack(children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_square,
                      color: platinum,
                    )),
              ),
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: charcoal,
                        radius: 45,
                        foregroundImage: CachedNetworkImageProvider(
                            profiles[0].userProfilePic),
                      ),
                      Text(
                        profiles[0].userName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: platinum,
                            overflow: TextOverflow.ellipsis),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        '@mohammad',
                        style: TextStyle(color: platinum, fontSize: 18),
                      )
                    ]),
              ),
            ]),
          )
        ],
      ),
      bottomSheet: BottomSheet(
          enableDrag: false,
          backgroundColor: deepGrey,
          constraints: BoxConstraints.tight(Size(
              MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height / 2)),
          onClosing: () {},
          builder: (context) {
            return ListView(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.people_alt_rounded),
                        SizedBox(height: 8.0),
                        Text('200 +')
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.people_alt_rounded),
                        SizedBox(height: 8.0),
                        Text('200 +')
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.people_alt_rounded),
                        SizedBox(height: 8.0),
                        Text('200 +')
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Bio',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          profiles[0].about ?? 'Nothing to show..',
                          textAlign: TextAlign.justify,
                        )
                      ]),
                ),
              ],
            );
          }),
    );
  }
}
