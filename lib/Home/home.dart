import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:loyalevent/footer.dart';
import 'package:loyalevent/mission.dart';
import 'package:loyalevent/next_event.dart';
import 'package:loyalevent/testimonial.dart';
import 'package:loyalevent/upcoming_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // hero
        Container(
            padding: EdgeInsets.only(left: 96.0),
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      width: 350,
                      child: Text(
                        "A good place to Find the perfect event",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
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
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          alignment: Alignment.center,
                          color: Colors.purple,
                          child: Text(
                            "About us",
                            style: TextStyle(fontSize: 16, color: Colors.white),
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
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                    bottom: 40,
                    right: 64,
                    child: Container(
                      color: Colors.grey,
                      width: 200,
                      height: 200,
                    ))
              ],
            ),
            height: 450,
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
    );
  }
}
