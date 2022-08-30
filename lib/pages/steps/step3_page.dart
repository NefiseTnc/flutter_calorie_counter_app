import 'package:flutter/material.dart';
import 'package:flutter_calorie_counter_app/components/app_button.dart';
import 'package:flutter_calorie_counter_app/components/app_radio_button.dart';
import 'package:flutter_calorie_counter_app/components/step_value_widget.dart';
import 'package:flutter_calorie_counter_app/constant/app_colors.dart';
import 'package:flutter_calorie_counter_app/pages/steps/step4_page.dart';

class Step3Page extends StatefulWidget {
  const Step3Page({Key? key}) : super(key: key);

  @override
  State<Step3Page> createState() => _Step3PageState();
}

class _Step3PageState extends State<Step3Page> {
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
                  "What's your sex?",
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
                  "Step 3 of 4",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const StepValueWidget(
                  stepValue: .75,
                ),
                const SizedBox(
                  height: 56,
                ),
                //custom radio button
                Container(
                  width: size.width,
                  height: size.height * .07,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGreyColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.female),
                          Text("Female"),
                        ],
                      ),
                      const AppRadioButton(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: size.width,
                  height: size.height * .07,
                  decoration: const BoxDecoration(
                    color: AppColors.lightGreyColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.male),
                          Text("Male"),
                        ],
                      ),
                      const AppRadioButton(),
                    ],
                  ),
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
                          builder: (context) => const Step4Page(),
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
