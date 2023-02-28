import 'package:flutter/material.dart';
import 'package:social_flutter/screens/chats.dart';
import 'package:social_flutter/screens/friend_request.dart';
import 'package:social_flutter/screens/home.dart';
import 'package:social_flutter/screens/market_place.dart';
import 'package:social_flutter/screens/notification.dart';
import 'package:social_flutter/screens/videos.dart';

class MainPage extends StatefulWidget {
  static const routeName = 'mainpage';
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  List pages = [
    const HomeScreen(),
    const FriendRequestScreen(),
    const ChatScreen(),
    const NotificationScreen(),
    const VideoScreen(),
    const MarketPlaceScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],

      // bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 25,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              size: 25,
            ),
            label: 'Friend',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.send,
              size: 25,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add,
              size: 25,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.live_tv,
              size: 25,
            ),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              size: 25,
            ),
            label: 'Shop',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
