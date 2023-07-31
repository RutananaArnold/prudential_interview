import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color activeColor;
  final bool isNotified;
  final bool isActive;
  final GestureTapCallback? onTap;
  const BottomBarItem(
      {super.key,
      required this.icon,
      this.onTap,
      this.color = const Color(0xFF3E4249),
      this.activeColor = Colors.blue,
      this.isActive = false,
      this.isNotified = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isNotified
              ? Stack(children: <Widget>[
                  Icon(
                    icon,
                    size: 26,
                    color: isActive ? activeColor : color,
                  ),
                  const Positioned(
                    top: 5.0,
                    right: 0,
                    left: 8.0,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.brightness_1,
                          size: 10.0, color: Colors.blue),
                    ),
                  )
                ])
              : Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isActive
                        ? Colors.white.withOpacity(.15)
                        : Colors.transparent,
                  ),
                  child: Icon(icon,
                      size: 26, color: isActive ? activeColor : color),
                )
        ],
      ),
    );
  }
}
