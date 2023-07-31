import 'package:flutter/material.dart';

class PowerCards extends StatelessWidget {
  final IconData? topIcon;
  final String title;
  final String subtitle;
  final IconData? toggleIcon;
  final bool isToggleOn;
  final bool isColor;
  const PowerCards(
      {super.key,
      required this.topIcon,
      required this.title,
      required this.subtitle,
      required this.toggleIcon,
      this.isToggleOn = false,
      this.isColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: const Color.fromARGB(255, 11, 41, 37),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            Icon(
              topIcon,
              size: size.height * 0.08,
              color: isColor ? Colors.blue : Colors.yellow,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontSize: size.height * 0.02),
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.white60, fontSize: size.height * 0.02),
            ),
            Icon(
              toggleIcon,
              size: size.height * 0.03,
              color: isToggleOn ? Colors.blue : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

// class PowerCardsData {
//   final IconData? topIcon;
//   final String title;
//   final String subtitle;
//   final IconData? toggleIcon;
//   // final bool isToggleOn;
//   PowerCardsData(
//       {required this.topIcon,
//       required this.title,
//       required this.subtitle,
//       required this.toggleIcon});
// }

// class Power {
//   List<PowerCardsData> cardsData = [
//     PowerCardsData(
//         topIcon: Icons.table_chart,
//         title: 'AC',
//         subtitle: 'Consuming 5KWh',
//         toggleIcon: Icons.toggle_on),
//     PowerCardsData(
//         topIcon: Icons.lightbulb_outline_rounded,
//         title: 'Lights',
//         subtitle: 'Consumes 1KWh',
//         toggleIcon: Icons.toggle_off),
//   ];
// }
