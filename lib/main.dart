import 'dart:html';

import 'package:flutter/material.dart';
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

class _MyHomePageState extends State<MyHomePage> {
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
                    // color: Colors.grey,
                    padding: EdgeInsets.only(left: 32),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: () {}, child: Text("Home")),
                        TextButton(onPressed: () {}, child: Text("Event")),
                        TextButton(onPressed: () {}, child: Text("Venue")),
                        TextButton(onPressed: () {}, child: Text("Gallery")),
                        TextButton(onPressed: () {}, child: Text("Contact us")),
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
        body: ListView(
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
        ));
  }
}
