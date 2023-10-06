import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:plantworld/constants.dart';

class PlantPage extends StatefulWidget {
  const PlantPage({super.key});

  @override
  State<PlantPage> createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kLightColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28), color: Colors.white),
            margin: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.keyboard_backspace_rounded,
                          size: 25,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_today_outlined,
                          size: 25,
                        ))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Monsterra',
                  style: TextStyle(fontSize: 29, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Added 23.04.23',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: Colors.grey.shade400),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.water_drop_outlined,
                                    size: 25, color: kGreenColor),
                                Text(
                                  '27%',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Text(
                              'Humidity',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade500),
                            )
                          ],
                        ),
                        SizedBox(height: 50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.thermostat_outlined,
                                  size: 25,
                                  color: kGreenColor,
                                ),
                                Text(
                                  '37°C',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Text(
                              'Temperature',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade500),
                            )
                          ],
                        ),
                        SizedBox(height: 50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.light_mode_outlined,
                                    size: 25, color: kGreenColor),
                                Text(
                                  '27%',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Text(
                              'Light',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade500),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: Image.network(
                      'https://media.istockphoto.com/id/1334790507/vector/3d-vector-floor-house-green-plant-palm-in-white-pot-isolated-on-white-illustration-icon.jpg?s=612x612&w=0&k=20&c=dGsYtSp66z31VWTzpwtlZJCDHvbfieGwDSargtfyTxY=',
                      fit: BoxFit.fitWidth,
                    ))
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(horizontal: 17, vertical: 16),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    kDarkColor,
                    kDarkColor,
                    kDarkColor
                  ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Watering Schedule',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                Text(
                                  'Added 23.04.23',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            CircularPercentIndicator(
                              backgroundColor: Colors.grey.shade300,
                              radius: 20.0,
                              lineWidth: 2.1,
                              percent: 0.6,
                              center: Icon(
                                Icons.water_drop_outlined,
                                color: kGreenColor,
                              ),
                              progressColor: kGreenColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 170,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, snapshot) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: snapshot == 0
                                        ? kGreenColor
                                        : kLightColor,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '10',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w200,
                                            color: snapshot == 0
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Container(
                                          margin: EdgeInsets.all(1.5),
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              color: Colors.white),
                                          child: Icon(
                                            Icons.water_drop_outlined,
                                            color: snapshot == 0
                                                ? kGreenColor
                                                : Colors.black,
                                          ))
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          'Watering',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
