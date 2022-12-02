import 'dart:html';

import 'package:flutter/material.dart';
import 'package:loyalevent/Contactus/contactus.dart';
import 'package:loyalevent/EventPage/event.dart';
import 'package:loyalevent/Home/home.dart';
import 'package:loyalevent/VenuePage/venue.dart';
import 'package:loyalevent/footer.dart';
import 'package:loyalevent/mission.dart';
import 'package:loyalevent/next_event.dart';
import 'package:loyalevent/testimonial.dart';
import 'package:loyalevent/upcoming_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(
        vsync: this, length: 5, animationDuration: Duration(seconds: 0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          flexibleSpace: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.loyalty,
                            size: 36,
                          ),
                          SizedBox(width: 16),
                          Text(
                            "Loyal Events",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: 32),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              _controller.animateTo(
                                0,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                "Home",
                                style: TextStyle(color: Colors.pink),
                              ),
                            )),
                        SizedBox(
                          width: 8.0,
                        ),
                        TextButton(
                            onPressed: () {
                              _controller.animateTo(1);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Event"),
                            )),
                        SizedBox(
                          width: 8.0,
                        ),
                        TextButton(
                            onPressed: () {
                              _controller.animateTo(2);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Venue"),
                            )),
                        SizedBox(
                          width: 8.0,
                        ),
                        TextButton(
                            onPressed: () {
                              _controller.animateTo(3);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Gallery"),
                            )),
                        SizedBox(
                          width: 8.0,
                        ),
                        TextButton(
                            onPressed: () {
                              _controller.animateTo(4);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text("Contact us"),
                            )),
                        SizedBox(
                          width: 16.0,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text("Register"),
                            )),
                      ],
                    ),
                  )),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              HomePage(),
              EventPage(),
              VenuePage(),
              Container(
                color: Colors.green,
                child: Text("Gallery"),
              ),
              ContactUs()
            ]));
  }
}
