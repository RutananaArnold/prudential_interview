// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'screens/profile_screen.dart';
import 'widgets/bottom_bar_item.dart';
import 'screens/home_screen.dart';

class Index extends StatefulWidget {
  int currentIndex;
  Index({super.key, this.currentIndex = 0});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> tabs = [
    const HomeScreen(),
    const UserProfile(),
    Container(),
    Container(),
    Container(),
  ];

  List<IconData> tapIcons = [
    Icons.home_rounded,
    Icons.graphic_eq_rounded,
    Icons.mic_rounded,
    Icons.videocam_rounded,
    Icons.notifications
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: tabs[widget.currentIndex],
      bottomNavigationBar: getBottomBar(),
    );
  }

  Widget getBottomBar() {
    return Container(
      height: 75,
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 15),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              tapIcons.length,
              (index) => BottomBarItem(
                    icon: tapIcons[index],
                    isActive: widget.currentIndex == index,
                    onTap: () {
                      setState(() {
                        widget.currentIndex = index;
                      });
                    },
                  ))),
    );
  }
}
