import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prudential_interview/widgets/power_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      radius: size.height * 0.03,
                      backgroundColor: const Color.fromARGB(255, 16, 23, 31),
                      child: Icon(
                        Icons.clear_all_rounded,
                        color: Colors.white,
                        size: size.height * 0.035,
                      ),
                    ))),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 16, 23, 31),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sunny,
                      color: Colors.grey[350],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: size.height * 0.02,
                      backgroundColor: Colors.white,
                      child: const Icon(
                        Icons.nights_stay,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.015, left: size.width * 0.06),
            child: Text(
              "Welcome, Rifat!".tr,
              style: TextStyle(
                  fontSize: size.height * 0.048,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.009, left: size.width * 0.06),
            child: Text(
              "Here are what you have asked for".tr,
              style: TextStyle(
                  fontSize: size.height * 0.02,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            margin: EdgeInsets.only(
                top: size.height * 0.02,
                left: size.width * 0.06,
                right: size.width * 0.06),
            color: const Color.fromARGB(255, 11, 41, 37),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.17,
                  child: Row(
                    children: [
                      Icon(
                        Icons.cloud_sync_rounded,
                        size: size.height * 0.16,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: size.width * 0.15,
                      ),
                      SizedBox(
                        height: size.height * 0.17,
                        child: Column(
                          children: [
                            RichText(
                                text: TextSpan(
                                    text: '29',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.07),
                                    children: [
                                  TextSpan(
                                    text: ' °C ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.02),
                                  ),
                                  TextSpan(
                                    text: ' | °F',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: size.height * 0.02),
                                  ),
                                ])),
                            Text(
                              'Thunderstorm',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.02),
                            ),
                            Text(
                              'Cardiff, UK',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: size.height * 0.02),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                // labels
                SizedBox(
                  height: size.height * 0.14,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // first
                        Wrap(
                          direction: Axis.vertical,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(
                              Icons.air,
                              color: Colors.white70,
                            ),
                            Text(
                              '10 Km/h',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.02),
                            ),
                            Text(
                              'Wind',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: size.height * 0.02),
                            ),
                          ],
                        ),

                        // second
                        Wrap(
                          direction: Axis.vertical,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(
                              Icons.bubble_chart_rounded,
                              color: Colors.white70,
                            ),
                            Text(
                              '90%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.02),
                            ),
                            Text(
                              'Precipitation',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: size.height * 0.02),
                            ),
                          ],
                        ),

                        // third
                        Wrap(
                          direction: Axis.vertical,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(
                              Icons.water_drop_rounded,
                              color: Colors.white70,
                            ),
                            Text(
                              '45%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.height * 0.02),
                            ),
                            Text(
                              'Humidity',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: size.height * 0.02),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // my devices section
          SizedBox(
            height: size.height * 0.06,
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.width * 0.01,
                  left: size.width * 0.06,
                  right: size.width * 0.06),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Devices",
                    style: TextStyle(
                        fontSize: size.height * 0.03,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontSize: size.height * 0.02,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),

          // last 2 cards
          SizedBox(
            height: size.height * 0.21,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PowerCards(
                  topIcon: Icons.table_chart,
                  title: 'AC',
                  subtitle: 'Consuming 5KWh',
                  toggleIcon: Icons.toggle_on,
                  isToggleOn: true,
                  isColor: true,
                ),
                PowerCards(
                  topIcon: Icons.table_chart,
                  title: 'Lights',
                  subtitle: 'Consumes 1KWh',
                  toggleIcon: Icons.toggle_off,
                  isToggleOn: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
