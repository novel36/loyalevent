import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.only(top: 16.0),
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Icon(Icons.phone),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.pink),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "+251989680816",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ]),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Icon(Icons.email),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.pink),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "novelwolde36@gmail.com",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ]),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: Icon(Icons.location_on),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.pink),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Addis abeba,4 killo",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Divider(
              color: Colors.grey,
              thickness: 0.0,
              height: 5,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Loyal events",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              )),
                          Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              )),
                          Container(
                            height: 40,
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
                    width: 64,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Services",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            )),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Exhibition",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Conference",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("Festival",
                                  style: TextStyle(color: Colors.white)),
                              Text("Party",
                                  style: TextStyle(color: Colors.white)),
                              Text(
                                "Seminar",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 64,
                  ),
                  Container(
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
                                    color: Colors.white, fontSize: 24),
                              )),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.facebook, color: Colors.white),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Facebook",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.facebook, color: Colors.white),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Google",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.facebook, color: Colors.white),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Twitter",
                                      style: TextStyle(color: Colors.white),
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
                  Expanded(
                    child: Container(
                      //     child: Image(
                      //   image: AssetImage("assets/images/buna.jpg",),
                      // )
                      child: Text("image goes here"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 60,
            color: Colors.white10,
            child: Text(
              "Copyright",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
