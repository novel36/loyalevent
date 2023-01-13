import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.only(top: 16.0),
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                footerContactInfo(
                    icon: const Icon(Icons.phone), contactInfo: "0989680816"),
                footerContactInfo(
                    icon: const Icon(Icons.email),
                    contactInfo: "novelwolde36@gmail.com"),
                footerContactInfo(
                    icon: const Icon(Icons.location_on),
                    contactInfo: "Addis abeba,4 killo"),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Colors.grey,
              thickness: 0.0,
              height: 5,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Loyal events",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              )),
                          Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              )),
                          Container(
                            height: 40,
                            width: 300,
                            margin: EdgeInsets.only(right: 16.0, left: 8.0),
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: "Enter your feedback",
                              hintStyle: TextStyle(
                                  fontSize: 12, color: Colors.white60),
                              suffixIcon: Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                              enabledBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(8.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(25.0),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveValue(context,
                        defaultValue: 64.0,
                        valueWhen: [
                          Condition.smallerThan(name: TABLET, value: 8.0)
                        ]).value,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        right: 8.0,
                        top: ResponsiveValue(context,
                            defaultValue: 20.0,
                            valueWhen: [
                              Condition.smallerThan(name: TABLET, value: 20.0)
                            ]).value!),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Services",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Exhibition",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                "Conference",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text("Festival",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                              Text("Party",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                              Text(
                                "Seminar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: ResponsiveValue(context,
                        defaultValue: 64.0,
                        valueWhen: [
                          Condition.smallerThan(name: TABLET, value: 8.0)
                        ]).value,
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleWhen: [Condition.largerThan(name: MOBILE)],
                    child: Container(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Follow us on ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )),
                            Expanded(
                              flex: 2,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.facebook,
                                          color: Colors.white, size: 19),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.facebook,
                                          color: Colors.white, size: 19),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Google",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.facebook,
                                          color: Colors.white, size: 19),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Twitter",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.smallerThan(name: TABLET)],
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.pink,
                    size: 32,
                  ),
                  SizedBox(
                    width: 32.0,
                  ),
                  Icon(
                    Icons.facebook,
                    color: Colors.pink,
                    size: 32,
                  ),
                  SizedBox(
                    width: 32.0,
                  ),
                  Icon(Icons.facebook, color: Colors.pink, size: 32),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            alignment: Alignment.center,
            height: ResponsiveValue(context, defaultValue: 25.0, valueWhen: [
              Condition.smallerThan(name: TABLET, value: 40.0)
            ]).value,
            color: Colors.white10,
            child: Text(
              "Copyright",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }

  Container footerContactInfo({Icon? icon, String? contactInfo}) {
    return Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
          child: icon!,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          contactInfo!,
          style: TextStyle(fontSize: 10, color: Colors.white),
        )
      ]),
    );
  }
}
