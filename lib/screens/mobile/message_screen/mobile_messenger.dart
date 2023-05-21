import 'package:flutter/material.dart';
import 'package:link/widgets/chat_list.dart';
import 'package:link/widgets/searchbar.dart';
import 'package:link/widgets/user_card.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(body: const ChatList(), headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { return [const SliverAppBar(flexibleSpace: UserCard(), collapsedHeight: 200, expandedHeight: 200,), SliverPersistentHeader(delegate: , pinned: true,)]; },physics: const BouncingScrollPhysics(),
      
    );
  }
}
