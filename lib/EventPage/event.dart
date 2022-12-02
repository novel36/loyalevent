import 'package:flutter/material.dart';
import 'package:loyalevent/footer.dart';
import 'package:loyalevent/mission.dart';
import 'package:loyalevent/next_event.dart';
import 'package:loyalevent/testimonial.dart';
import 'package:loyalevent/upcoming_event.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // hero

        // next event
        NextEvent(),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Discover  All Upcoming  Events in Ethiopia",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 32.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.pink),
                      color: Colors.white,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text("All", style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    width: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.pink,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text("Music", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.pink,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text("Art", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.pink,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                    child: Text(
                      "Conference",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        // upcoming event
        UpcomingEvent(),
        SizedBox(height: 32),
        // Footer
        Footer(),
      ],
    );
  }
}
