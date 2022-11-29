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
                        children: [
                          Container(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Loyal events",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
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
                                    border: OutlineInputBorder(),
                                    suffixIcon: Icon(Icons.send))),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        // color: Colors.cyan,
                        ),
                  ),
                  Expanded(
                    child: Container(
                        // color: Colors.purple,
                        ),
                  ),
                  Expanded(
                    child: Container(
                        // color: Colors.blueGrey,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            child: Text("Copyright"),
          )
        ],
      ),
    );
  }
}
