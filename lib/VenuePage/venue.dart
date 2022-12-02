import 'package:flutter/material.dart';
import 'package:loyalevent/footer.dart';
import 'package:loyalevent/next_event.dart';
import 'package:loyalevent/upcoming_event.dart';

class VenuePage extends StatefulWidget {
  const VenuePage({Key? key}) : super(key: key);

  @override
  State<VenuePage> createState() => _VenuePageState();
}

class _VenuePageState extends State<VenuePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 16.0,
              ),
              Text(
                "Event Venues in Ethiopia",
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
                    child:
                        Text("Meeting", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.pink,
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text("Conference",
                        style: TextStyle(color: Colors.white)),
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
                      "Music",
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
        EventVenues(),
        SizedBox(height: 32),
        // Footer
        Footer(),
      ],
    );
  }
}

class EventVenues extends StatelessWidget {
  const EventVenues({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      // height: 750,
      // color: Colors.grey,
      child: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 1.0,
            children: [
              Card(
                  child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/hyattregency.jpg'),
                                      fit: BoxFit.cover)))),
                      Expanded(
                          flex: 1,
                          child: Container(
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Hyatt Regency Addis Ababa",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Hyatt Regency Addis Hotel, is one of best Events and conferences place in ethiopia. The Luxury Collection, is at the heart of the revival of Addis Ababa and Ethiopia as the city is the headquarters of the African Union.",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              )))
                    ]),
              )),
              Card(
                  child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/party.jpg'),
                                      fit: BoxFit.cover)))),
                      Expanded(
                          flex: 1,
                          child: Container(
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Millennium Hall",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Millennium Hall is a Banquet & Hall located in Addis Ababa and one of best place for Events and conferences in Ethiopia.",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )))
                    ]),
              )),
              Card(
                  child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/sheraton.jpg'),
                                      fit: BoxFit.cover)))),
                      Expanded(
                          flex: 1,
                          child: Container(
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sheraton Addis Ababa",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      "Sheraton Addis Hotel, is one of best Events and conferences place in ethiopia. ",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )))
                    ]),
              )),
              Card(
                  child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/skylighthotel.jpeg'),
                                      fit: BoxFit.cover)))),
                      Expanded(
                          flex: 1,
                          child: Container(
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Skylight Hotel Addis Ababa",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                        "Skylight Hotel is professionally polished for your corporate meetings, Events and conferences in Ethiopia, Addis Ababa with a range of 13 meeting rooms of your choice.",
                                        style: TextStyle(fontSize: 12))
                                  ],
                                ),
                              )))
                    ]),
              )),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Load more..."))
        ],
      ),
    );
  }
}
