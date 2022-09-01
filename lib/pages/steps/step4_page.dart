import 'package:flutter/material.dart';
import 'package:flutter_calorie_counter_app/components/app_button.dart';
import 'package:flutter_calorie_counter_app/components/step_value_widget.dart';
import 'package:flutter_calorie_counter_app/constant/app_colors.dart';
import 'package:flutter_calorie_counter_app/pages/goal_page.dart';

class Step4Page extends StatefulWidget {
  const Step4Page({Key? key}) : super(key: key);

  @override
  State<Step4Page> createState() => _Step4PageState();
}

class _Step4PageState extends State<Step4Page> {
  var selectedWeightType = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What's your Birthday?",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "This helps us create your personalized plan",
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(.3)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Step 4 of 4",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const StepValueWidget(
                  stepValue: 1,
                ),
                const SizedBox(
                  height: 56,
                ),
                //datetime
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * .25,
                      height: size.height * .08,
                      decoration: BoxDecoration(
                        color: AppColors.lightGreyColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Month",
                                  style: TextStyle(color: Colors.grey)),
                              Text("May",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18)),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_down_sharp))
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: size.width * .25,
                      height: size.height * .08,
                      decoration: BoxDecoration(
                        color: AppColors.lightGreyColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Day", style: TextStyle(color: Colors.grey)),
                              Text("17",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18)),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_down_sharp))
                        ],
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      width: size.width * .25,
                      height: size.height * .08,
                      decoration: BoxDecoration(
                        color: AppColors.lightGreyColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Year",
                                  style: TextStyle(color: Colors.grey)),
                              Text("1991",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18)),
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.keyboard_arrow_down_sharp))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.security,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "All of your information is confidential",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  text: "Containe",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GoalPage(),
                        ));
                  },
                ),
                const SizedBox(
                  height: 36,
                ),
              ],
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
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          )),
    );
  }
}
