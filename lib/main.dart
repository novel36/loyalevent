import 'dart:html';

import 'package:flutter/material.dart';
import 'package:loyalevent/mission.dart';
import 'package:loyalevent/next_event.dart';
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
                    color: Colors.grey,
                    height: 50,
                    width: 100,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                      child: Container(
                    color: Colors.grey,
                    height: 50,
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
                          height: 100,
                          width: 300,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 100,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 45,
                              width: 100,
                              color: Colors.grey,
                            )
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
            Container(
              height: 400,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            // Footer
            Container(
              height: 500,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
