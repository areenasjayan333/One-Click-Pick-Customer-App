import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:plantworld/plantPage.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import 'constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  late PageController pageController;
  List<String> plantImages = [
    'https://media.istockphoto.com/id/1334790507/vector/3d-vector-floor-house-green-plant-palm-in-white-pot-isolated-on-white-illustration-icon.jpg?s=612x612&w=0&k=20&c=dGsYtSp66z31VWTzpwtlZJCDHvbfieGwDSargtfyTxY=',
    'https://img.freepik.com/premium-photo/green-oasis-potted-plant-flourishing-canvas_935856-492.jpg',
    'https://media.istockphoto.com/id/463123467/photo/plant-isolated-in-the-pot.jpg?s=612x612&w=0&k=20&c=DxTzKmvVp79fj2UzWQjVJNKWHHqu4mxLoJnkSo-VEe0=',
    'https://hortology.co.uk/cdn/shop/products/Aspidistra-Cast-Iron-Plant-Beth-Ball-Matt-White-Planter_b7654923-d940-401c-9932-d2c9c531dbd4.jpg?v=1618657179',
    'https://mobileimages.lowes.com/productimages/24b59aa9-a314-46cf-8ba9-097b386e2bbf/00625536.jpg?size=pdhism'
        'https://media.istockphoto.com/id/1334790507/vector/3d-vector-floor-house-green-plant-palm-in-white-pot-isolated-on-white-illustration-icon.jpg?s=612x612&w=0&k=20&c=dGsYtSp66z31VWTzpwtlZJCDHvbfieGwDSargtfyTxY=',
    'https://media.istockphoto.com/id/1334790507/vector/3d-vector-floor-house-green-plant-palm-in-white-pot-isolated-on-white-illustration-icon.jpg?s=612x612&w=0&k=20&c=dGsYtSp66z31VWTzpwtlZJCDHvbfieGwDSargtfyTxY=',
    'https://www.shutterstock.com/image-photo/monstera-pot-isolated-on-white-250nw-1828614449.jpg',
    'https://media.istockphoto.com/id/463123467/photo/plant-isolated-in-the-pot.jpg?s=612x612&w=0&k=20&c=DxTzKmvVp79fj2UzWQjVJNKWHHqu4mxLoJnkSo-VEe0=',
    'https://hortology.co.uk/cdn/shop/products/Aspidistra-Cast-Iron-Plant-Beth-Ball-Matt-White-Planter_b7654923-d940-401c-9932-d2c9c531dbd4.jpg?v=1618657179',
    'https://hortology.co.uk/cdn/shop/products/Aglaonema-Maria-Chinese-Evergreen-17x50cm-Noor-Plant-Pot-Velvet-Green-23x20cm_600x.jpg?v=1684763176'
        'https://media.istockphoto.com/id/1334790507/vector/3d-vector-floor-house-green-plant-palm-in-white-pot-isolated-on-white-illustration-icon.jpg?s=612x612&w=0&k=20&c=dGsYtSp66z31VWTzpwtlZJCDHvbfieGwDSargtfyTxY='
  ];
  @override
  void initState() {
    super.initState();

    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff151615),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  SizedBox(
                    height: 26,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 22,
                    backgroundImage: NetworkImage(
                        'https://www.gadssolutions.in/assets/img/team/team-5.jpeg'),
                  ),
                  SizedBox(height: 100),
                  RotatedBox(
                    quarterTurns: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        WaterDropNavBar(
                          inactiveIconColor: Colors.transparent,
                          waterDropColor: Color(0xffF2F2F2),
                          bottomPadding: 0,
                          backgroundColor: Colors.transparent,
                          iconSize: 15,
                          onItemSelected: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                            pageController.animateToPage(
                              selectedIndex,
                              duration: const Duration(milliseconds: 10),
                              curve: Curves.easeOut,
                            );
                          },
                          selectedIndex: selectedIndex,
                          barItems: [
                            BarItem(
                              filledIcon: Icons.circle_rounded,
                              outlinedIcon: Icons.circle_outlined,
                            ),
                            BarItem(
                              filledIcon: Icons.circle_rounded,
                              outlinedIcon: Icons.circle_outlined,
                            ),
                            BarItem(
                              filledIcon: Icons.circle_rounded,
                              outlinedIcon: Icons.circle_outlined,
                            ),
                            BarItem(
                              filledIcon: Icons.circle_rounded,
                              outlinedIcon: Icons.circle_outlined,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        RotatedBox(
                          quarterTurns: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Stores',
                                  style: selectedIndex == 3
                                      ? TextStyle(color: Color(0xffF2F2F2))
                                      : TextStyle(color: kGreenColor)),
                              SizedBox(width: 60),
                              Text('Articles',
                                  style: selectedIndex == 2
                                      ? TextStyle(color: Color(0xffF2F2F2))
                                      : TextStyle(color: kGreenColor)),
                              SizedBox(width: 46),
                              Text('Plants',
                                  style: selectedIndex == 1
                                      ? TextStyle(color: Color(0xffF2F2F2))
                                      : TextStyle(color: kGreenColor)),
                              SizedBox(width: 52),
                              Text('Schedule',
                                  style: selectedIndex == 0
                                      ? TextStyle(color: Color(0xffF2F2F2))
                                      : TextStyle(color: kGreenColor)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(47)),
                        color: Color(0xffF2F2F2)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 26.0, vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'All Plants',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.filter_list_rounded),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: ((BuildContext context, index) {
                              return plantItems(
                                  name: 'Abacus', image: plantImages[index]);
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(47)),
                        color: Color(0xffF2F2F2)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 26.0, vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'All Plants',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.filter_list_rounded),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(47)),
                        color: Color(0xffF2F2F2)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 26.0, vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'All Plants',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.filter_list_rounded),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: ((BuildContext context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PlantPage(),
                                      ));
                                },
                                child: plantItems(
                                    name: 'Abacus', image: plantImages[index]),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          focusColor: Colors.green,
          // elevation: 30,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlantPage(),
                ));
          },
          child: Icon(
            Icons.add,
            size: 26,
            color: Colors.white,
          ),
          backgroundColor: kGreenColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(60.0))),
        ),
      ),
    );
  }

  Container plantItems({required String name, required String image}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28), color: Colors.white),
      margin: EdgeInsets.symmetric(horizontal: 26, vertical: 13),
      padding: EdgeInsets.all(19),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
                height: 200,
                width: double.infinity,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: CircularPercentIndicator(
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
              ),
            ],
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.water_drop_outlined,
                          size: 17, color: kGreenColor),
                      Text(
                        '27%',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Text(
                    'Humidity',
                    style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.thermostat_outlined,
                        size: 17,
                        color: kGreenColor,
                      ),
                      Text(
                        '27°C',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Text(
                    'Temperature',
                    style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.light_mode_outlined,
                          size: 17, color: kGreenColor),
                      Text(
                        '27%',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Text(
                    'Light',
                    style: TextStyle(fontSize: 9, color: Colors.grey.shade500),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
