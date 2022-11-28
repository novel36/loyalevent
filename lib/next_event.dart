import 'dart:html';

import 'package:flutter/material.dart';

class NextEvent extends StatelessWidget {
  const NextEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 300,
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
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          ),
          SizedBox(
            height: 16,
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
                          alignment: Alignment.center,
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          child: Text(
                            "02",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Days",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          alignment: Alignment.center,
                          child: Text(
                            "09",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Hours",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          child: Text(
                            "45",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Minutes",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid)),
                          child: Text(
                            "15",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 16,
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
