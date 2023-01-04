import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NextEvent extends StatelessWidget {
  const NextEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: ResponsiveValue(context,
          defaultValue: 250.0,
          valueWhen: [Condition.smallerThan(name: MOBILE, value: 200.0)]).value,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            height: 70,
            child: Text(
              "Next Event Will Start In",
              style: TextStyle(
                  fontSize: ResponsiveValue(context,
                      defaultValue: 28.0,
                      valueWhen: [
                        Condition.smallerThan(name: TABLET, value: 24.0)
                      ]).value,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          height: ResponsiveValue(context,
                              defaultValue: 90.0,
                              valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 60.0)
                              ]).value,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          child: Text(
                            "02",
                            style: TextStyle(
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 48.0,
                                    valueWhen: [
                                      Condition.smallerThan(
                                          name: TABLET, value: 26.0)
                                    ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: ResponsiveValue(context,
                              defaultValue: 16.0,
                              valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 8.0)
                              ]).value,
                        ),
                        Text(
                          "Days",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: ResponsiveValue(context,
                          defaultValue: 32.0,
                          valueWhen: [
                            Condition.smallerThan(name: TABLET, value: 16.0)
                          ]).value,
                    ),
                    Column(
                      children: [
                        Container(
                          height: ResponsiveValue(context,
                              defaultValue: 90.0,
                              valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 60.0)
                              ]).value,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          alignment: Alignment.center,
                          child: Text(
                            "09",
                            style: TextStyle(
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 48.0,
                                    valueWhen: [
                                      Condition.smallerThan(
                                          name: TABLET, value: 26.0)
                                    ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: ResponsiveValue(context,
                              defaultValue: 16.0,
                              valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 8.0)
                              ]).value,
                        ),
                        Text(
                          "Hours",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: ResponsiveValue(context,
                          defaultValue: 32.0,
                          valueWhen: [
                            Condition.smallerThan(name: MOBILE, value: 16.0)
                          ]).value,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: ResponsiveValue(context,
                              defaultValue: 90.0,
                              valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: 60.0)
                              ]).value,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          child: Text(
                            "45",
                            style: TextStyle(
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 48.0,
                                    valueWhen: [
                                      Condition.smallerThan(
                                          name: MOBILE, value: 26.0)
                                    ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: ResponsiveValue(context,
                              defaultValue: 16.0,
                              valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 8.0)
                              ]).value,
                        ),
                        Text(
                          "Minutes",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: ResponsiveValue(context,
                          defaultValue: 32.0,
                          valueWhen: [
                            Condition.smallerThan(name: MOBILE, value: 16.0)
                          ]).value,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: ResponsiveValue(context,
                              defaultValue: 90.0,
                              valueWhen: [
                                Condition.smallerThan(name: MOBILE, value: 60.0)
                              ]).value,
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          child: Text(
                            "15",
                            style: TextStyle(
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 48.0,
                                    valueWhen: [
                                      Condition.smallerThan(
                                          name: MOBILE, value: 26.0)
                                    ]).value,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: ResponsiveValue(context,
                              defaultValue: 16.0,
                              valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 8.0)
                              ]).value,
                        ),
                        Text(
                          "Seconds",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
