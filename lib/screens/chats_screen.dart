import 'package:aitchat/widgets/category_selector.dart';
import 'package:aitchat/widgets/recent_chats.dart';
import 'package:aitchat/widgets/recent_contacts.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategorySelector(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                )
            ),
            child: Column(
              children: <Widget>[
                RecentContacts(),
                RecentChats()
              ],
            ),
          ),
        )
      ],
    );
  }
}
