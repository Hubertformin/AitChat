import 'package:aitchat/screens/chats_screen.dart';
import 'package:aitchat/screens/contacts_screen.dart';
import 'package:aitchat/screens/settings_screen.dart';
import 'package:aitchat/utilities/aitchat_icons.dart';
import 'package:aitchat/widgets/recent_contacts.dart';
import 'package:aitchat/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
import 'package:aitchat/widgets/category_selector.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;
  List<Widget> screens = <Widget>[
    ContactsScreen(),
    ChatsScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Ait Chat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//        leading: IconButton(
//          icon: Icon(Icons.menu),
//          iconSize: 30.0,
//          color: Colors.white,
//          onPressed: () { },
//        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Contacts'),
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person_pin),
          ),
          BottomNavigationBarItem(
            title: Text('Chats'),
            icon: Icon(AitChatFonts.chat)
          ),
          BottomNavigationBarItem(
            title: Text('Settings'),
            icon: Icon(Icons.settings)
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
        elevation: 8.0,
        onTap: _onItemTapped,
      ),
    );
  }
}
