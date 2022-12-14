import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_improved_scrolling/flutter_improved_scrolling.dart';
import 'package:lottie/lottie.dart';
import 'package:loyalevent/footer.dart';
import 'package:loyalevent/mission.dart';
import 'package:loyalevent/next_event.dart';
import 'package:loyalevent/testimonial.dart';
import 'package:loyalevent/upcoming_event.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/utils/responsive_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollControllerVertical = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ImprovedScrolling(
      scrollController: scrollControllerVertical,
      enableMMBScrolling: true,
      enableKeyboardScrolling: true,
      enableCustomMouseWheelScrolling: true,
      mmbScrollConfig: MMBScrollConfig(
        customScrollCursor: const DefaultCustomScrollCursor(),
      ),
      keyboardScrollConfig: KeyboardScrollConfig(
        homeScrollDurationBuilder: (currentScrollOffset, minScrollOffset) {
          return const Duration(milliseconds: 40);
        },
        endScrollDurationBuilder: (currentScrollOffset, maxScrollOffset) {
          return const Duration(milliseconds: 200);
        },
      ),
      customMouseWheelScrollConfig: const CustomMouseWheelScrollConfig(
        scrollAmountMultiplier: 4.0,
        scrollDuration: Duration(milliseconds: 350),
      ),
      child: ListView(
        controller: scrollControllerVertical,
        children: [
          // hero
          Container(
              padding: EdgeInsets.only(
                  left: ResponsiveValue(context,
                      defaultValue: 106.0,
                      valueWhen: [
                    Condition.smallerThan(name: TABLET, value: 32.0)
                  ]).value!),
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Column(
                    mainAxisAlignment: kIsWeb
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    crossAxisAlignment: kIsWeb
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 180,
                        width: 350,
                        child: Text(
                          "A good place to Find the perfect event",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ResponsiveValue(context,
                                  defaultValue: 48.0,
                                  valueWhen: const [
                                    Condition.smallerThan(
                                        name: TABLET, value: 38.0),
                                  ]).value,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "We can make Your dream come true",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      ResponsiveVisibility(
                          visible: false,
                          visibleWhen: [Condition.largerThan(name: MOBILE)],
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                alignment: Alignment.center,
                                color: Colors.purple,
                                child: Text(
                                  "About us",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                alignment: Alignment.center,
                                color: Colors.deepPurple,
                                child: Text(
                                  "Book Events",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ],
                          )),
                      ResponsiveVisibility(
                          visible: false,
                          visibleWhen: [Condition.smallerThan(name: TABLET)],
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                alignment: Alignment.center,
                                color: Colors.purple,
                                child: Text(
                                  "About us",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                                alignment: Alignment.center,
                                color: Colors.deepPurple,
                                child: Text(
                                  "Book Events",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                  ResponsiveVisibility(
                    visible: false,
                    visibleWhen: [Condition.largerThan(name: TABLET)],
                    child: Positioned(
                        right: 64,
                        child: Container(
                          width: 400,
                          child: Lottie.asset(
                            'assets/intro.json',
                          ),
                          height: 400,
                        )),
                  )
                ],
              ),
              height: 400,
              color: Colors.red),
          SizedBox(height: 20),
          // next event
          NextEvent(),
          SizedBox(height: 20),
          // upcoming event
          UpcomingEvent(), SizedBox(height: 20),
          // mission
          Mission(), SizedBox(height: 20),
          // testimonial
          Testimonial(),
          SizedBox(height: 20),
          // Footer
          Footer(),
        ],
      ),
    );
  }
}
