import 'package:flutter/material.dart';
import 'package:flutter_calorie_counter_app/components/app_button.dart';
import 'package:flutter_calorie_counter_app/components/step_value_widget.dart';
import 'package:flutter_calorie_counter_app/pages/steps/step2_page.dart';

import '../../constant/app_colors.dart';

class Step1Page extends StatefulWidget {
  const Step1Page({Key? key}) : super(key: key);

  @override
  State<Step1Page> createState() => _Step1PageState();
}

class _Step1PageState extends State<Step1Page> {
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
                  "What's your latest weight?",
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "You can update your weight anytime",
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(.3)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Step 1 of 4",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const StepValueWidget(
                  stepValue: .25,
                ),
                const SizedBox(
                  height: 56,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.lightGreyColor,
                    border: InputBorder.none,
                    hintText: "Enter Weight",
                    suffixIcon: Container(
                      width: size.width * .25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWeightType = 0;
                                });
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(8),
                                  width: size.width * .125,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25)),
                                    color: selectedWeightType == 0
                                        ? AppColors.primaryColor
                                        : Colors.white,
                                  ),
                                  child: const Text("lb")),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedWeightType = 1;
                                });
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(8),
                                  width: size.width * .125,
                                  decoration: BoxDecoration(
                                    color: selectedWeightType == 1
                                        ? AppColors.primaryColor
                                        : Colors.white,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        bottomRight: Radius.circular(25)),
                                  ),
                                  child: const Text("kg")),
                            ),
                          ]),
                    ),
                  ),
                ),
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
                  text: "Continue",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Step2Page(),
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
