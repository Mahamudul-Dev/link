import 'package:flutter/material.dart';
import 'package:link/widgets/chat_list.dart';
import 'package:link/widgets/searchbar.dart';
import 'package:link/widgets/user_card.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          onAddTap: () {},
          onSearchTap: () {},
        ),
        const SizedBox(height: 200, child: UserCard()),
        const Expanded(child: ChatList())
      ],
    );
  }
}
