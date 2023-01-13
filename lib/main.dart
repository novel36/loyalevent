import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loyalevent/Contactus/contactus.dart';
import 'package:loyalevent/EventPage/event.dart';
import 'package:loyalevent/Gallery.dart';
import 'package:loyalevent/Home/home.dart';
import 'package:loyalevent/VenuePage/venue.dart';
import 'package:loyalevent/footer.dart';
import 'package:loyalevent/mission.dart';
import 'package:loyalevent/next_event.dart';
import 'package:loyalevent/testimonial.dart';
import 'package:loyalevent/upcoming_event.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          minWidth: 350,
          breakpoints: const [
            ResponsiveBreakpoint.resize(380, name: MOBILE),
            ResponsiveBreakpoint.resize(800, name: TABLET),
            ResponsiveBreakpoint.autoScaleDown(1000, name: DESKTOP),
          ]),
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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentSelectedColor = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
        vsync: this, length: 5, animationDuration: Duration(seconds: 0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              AppBar(
                backgroundColor: Color.fromARGB(255, 207, 67, 57),
                title: Text("Loyalevent"),
                leading: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
              ),
              NavButton(buttonIndex: 0, text: "Home"),
              NavButton(buttonIndex: 1, text: "Event"),
              NavButton(buttonIndex: 2, text: "Venue"),
              NavButton(buttonIndex: 3, text: "Gallery"),
              NavButton(buttonIndex: 4, text: "Contact us"),
              ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Register"),
                  )),
            ],
          ),
        ),
        appBar: AppBar(
          leading: ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.smallerThan(name: DESKTOP)],
            child: IconButton(
              onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          toolbarHeight: ResponsiveValue(context,
                  defaultValue: 50.0,
                  valueWhen: [Condition.smallerThan(name: TABLET, value: 60.0)])
              .value,
          flexibleSpace: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 8.0,
                  ),
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
                                fontSize: ResponsiveValue(context,
                                    defaultValue: 26.0,
                                    valueWhen: [
                                      Condition.smallerThan(
                                          name: TABLET, value: 20.0)
                                    ]).value,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleWhen: [Condition.largerThan(name: TABLET)],
                    child: SizedBox(
                      width: 70,
                    ),
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleWhen: [Condition.largerThan(name: TABLET)],
                    child: Expanded(
                        child: Container(
                      padding: EdgeInsets.only(left: 32),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NavButton(buttonIndex: 0, text: "Home"),
                          SizedBox(
                            width: 8.0,
                          ),
                          NavButton(buttonIndex: 1, text: "Event"),
                          SizedBox(
                            width: 8.0,
                          ),
                          NavButton(buttonIndex: 2, text: "Venue"),
                          SizedBox(
                            width: 8.0,
                          ),
                          NavButton(buttonIndex: 3, text: "Gallery"),
                          SizedBox(
                            width: 8.0,
                          ),
                          NavButton(buttonIndex: 4, text: "Contact us"),
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
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleWhen: [Condition.largerThan(name: TABLET)],
                    child: SizedBox(
                      width: 50,
                    ),
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
              gallery(),
              ContactUs()
            ]));
  }

  TextButton NavButton({String? text, required int buttonIndex}) {
    return TextButton(
        style: ButtonStyle(alignment: Alignment.centerLeft),
        onPressed: () {
          _controller.animateTo(
            buttonIndex,
          );
          setState(() {
            currentSelectedColor = buttonIndex;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Text(
            text!,
            style: TextStyle(
                color: currentSelectedColor == buttonIndex
                    ? Colors.pink
                    : Colors.blue),
          ),
        ));
  }
}
