import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant/common/style.dart';
import 'package:restaurant/ui/bookmark_page.dart';
import 'package:restaurant/ui/list_restaurant.dart';
import 'package:restaurant/ui/notification_page.dart';
import 'package:restaurant/ui/setting_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

int indexBottomNav = 0;
List<Widget> widgetOptions = [
  ListRestaurant(),
  BookmarkPage(),
  NotificationPage(),
  SettingPage(),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(indexBottomNav),
      bottomNavigationBar: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: HomeColor),
          SalomonBottomBarItem(
              icon: Icon(Icons.bookmark),
              title: Text("Bookmark"),
              selectedColor: BookmarkColor),
          SalomonBottomBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notification"),
              selectedColor: NotificationColor),
          SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Setting"),
              selectedColor: settingColor),
        ],
        onTap: (index) {
          setState(() {
            indexBottomNav = index;
          });
        },
        currentIndex: indexBottomNav,
      ),
    );
  }
}
