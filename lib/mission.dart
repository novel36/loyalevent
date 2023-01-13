import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Mission extends StatelessWidget {
  const Mission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: ResponsiveValue(context,
                defaultValue: 64.0,
                valueWhen: [
              Condition.smallerThan(name: TABLET, value: 8.0)
            ]).value!),
        alignment: Alignment.center,
        // color: Colors.grey,
        child: ResponsiveGridRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResponsiveGridCol(
                lg: 12,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                      child: Text(
                    "Our",
                    style: TextStyle(fontSize: 28),
                  )),
                ),
              ),
              missionVisionGoal(
                title: "Mission",
                childImage: Lottie.asset(
                  'assets/mission.json',
                ),
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              ),
              missionVisionGoal(
                title: "Vision",
                childImage: Lottie.asset(
                  'assets/vision.json',
                ),
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              ),
              missionVisionGoal(
                title: "Goal",
                childImage: Lottie.asset(
                  'assets/goal.json',
                ),
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              )
            ]));
  }

  ResponsiveGridCol missionVisionGoal({
    required String title,
    Widget,
    required Widget childImage,
    required String description,
  }) {
    return ResponsiveGridCol(
        lg: 4,
        child: Card(
          child: Container(
            height: 380,
            margin: EdgeInsets.only(right: 8.0, left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 80, height: 80, child: childImage),
                SizedBox(
                  height: 16,
                ),
                Container(
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Text(title, style: TextStyle(fontSize: 18))),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 1.0,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(description,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center),
                )
              ],
            ),
          ),
        ));
  }
}
