import 'package:flutter/material.dart';
import 'package:link/widgets/chat_list.dart';
import 'package:link/widgets/searchbar.dart';
import 'package:link/widgets/web/profile_bar.dart';

class WebMessenger extends StatelessWidget {
  const WebMessenger() : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Column(
            children: [
              // current user profile bar
              const ProfileBar(),
              // chat search bar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: CustomSearchBar(
                  onAddTap: () {},
                  onSearchTap: () {},
                ),
              )
            ],
          ),
          // chat list
          const Expanded(child: ChatList())
        ],
      ),
    );
  }
}
