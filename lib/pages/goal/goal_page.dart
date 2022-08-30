// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_calorie_counter_app/constant/app_assets.dart';
import 'package:flutter_calorie_counter_app/constant/app_colors.dart';
import 'package:flutter_calorie_counter_app/pages/step/steps_page.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({Key? key}) : super(key: key);

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  final List itemImageNamesList = [
    AppAssets.imSurface,
    AppAssets.imBicep,
    AppAssets.imLightningBolt,
    AppAssets.imSleep,
    AppAssets.imBlood,
    AppAssets.imFlat,
  ];

  final List itemNamesList = [
    "Lose Weight",
    "Build Muscle",
    "Increase Energy",
    "Improve Sleep",
    "Manage Glucose",
    "Be Healthier",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What are your goals?",
              style: TextStyle(
                fontSize: 21,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Select all that apply",
              style:
                  TextStyle(fontSize: 13, color: Colors.black.withOpacity(.3)),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: _gridView(size),
            ),
            const SizedBox(
              height: 44,
            ),
            _appButton(size),
            const SizedBox(
              height: 36,
            ),
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

  Widget _gridView(Size size) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: index % 3 == 0
                  ? AppColors.primaryColor
                  : AppColors.lightGreyColor,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: size.width * .2,
                  height: size.width * .2,
                  child: Image.asset(itemImageNamesList[index])),
              Text(itemNamesList[index]),
            ],
          ),
        );
      },
    );
  }

}
