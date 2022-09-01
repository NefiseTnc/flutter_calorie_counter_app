import 'package:flutter/material.dart';
import 'package:flutter_calorie_counter_app/components/app_button.dart';
import 'package:flutter_calorie_counter_app/constant/app_colors.dart';
import 'package:graphic/graphic.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFAFBFC),
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * .5,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Weight Chart - kg"),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25)),
                                    color: AppColors.lightGreyColor),
                                child: const Text("Annually")),
                            Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25),
                                      bottomRight: Radius.circular(25)),
                                ),
                                child: const Text("Monthly")),
                          ]),
                    ],
                  ),
                  Expanded(
                    child: Chart(
                      data: const [
                        {'genre': 'Jan', 'sold': 50},
                        {'genre': 'Feb', 'sold': 115},
                        {'genre': 'Mar', 'sold': 150},
                        {'genre': 'Apr', 'sold': 75},
                        {'genre': 'May', 'sold': 45},
                      ],
                      variables: {
                        'genre': Variable(
                          accessor: (Map map) => map['genre'] as String,
                        ),
                        'sold': Variable(
                          accessor: (Map map) => map['sold'] as num,
                        ),
                      },
                      elements: [
                        IntervalElement(
                            color: ColorAttr(value: AppColors.primaryColor))
                      ],
                      axes: [
                        Defaults.horizontalAxis,
                        Defaults.verticalAxis,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: size.width,
              height: size.height * .31,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width,
                      height: size.height * .20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Weight",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Divider(),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "100 Kg",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text("Starting"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "100 Kg",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text("Latest"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "90 Kg",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primaryColor),
                                  ),
                                  SizedBox(height: 5),
                                  Text("Goal"),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Divider(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 35,
                    child: AppButton(
                      text: "Add New Measurement",
                      iconData: Icons.add,
                      radius: 25,
                      width: size.width * .6,
                      height: size.height * .05,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade300, shape: BoxShape.circle),
        ),
      ),
      centerTitle: true,
      title: const Text(
        "Goals",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.grey))
      ],
    );
  }
}
