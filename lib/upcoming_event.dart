import 'package:flutter/material.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 750,
      // color: Colors.grey,
      child: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 2.0,
            children: [
              Card(
                child: Row(
                  children: [
                    // Image(image: AssetImage('assets/images/event1.jpg'),),8
                    Container(
                      width: 350,
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/images/party.jpg'),
                      //         fit: BoxFit.cover)
                      //         ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Music For Life",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("Book")),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("More...")),
                                      ],
                                    )
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Meskel square"),
                                    Text("thu : 8:30")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    // Image(image: AssetImage('assets/images/event1.jpg'),),8
                    Container(
                      width: 350,
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage('assets/images/event1.jpg'),
                      //         fit: BoxFit.cover)),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Timiket",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("Book")),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("More...")),
                                      ],
                                    )
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Meskel square"),
                                    Text("thu : 8:30")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    // Image(image: AssetImage('assets/images/event1.jpg'),),8
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //     image: AssetImage('assets/images/events.jpg'),
                          //     fit: BoxFit.cover)
                          ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Timeket be Gonder",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("Book")),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("More...")),
                                      ],
                                    )
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Meskel square"),
                                    Text("thu : 8:30")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    // Image(image: AssetImage('assets/images/event1.jpg'),),8
                    Container(
                      width: 350,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //     image: AssetImage('assets/images/event2.jpg'),
                          //     fit: BoxFit.cover)
                          ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Great Ethiopian Run",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups."),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("Book")),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        ElevatedButton(
                                            style: ButtonStyle(),
                                            onPressed: () {},
                                            child: Text("More...")),
                                      ],
                                    )
                                  ],
                                )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Meskel square"),
                                    Text("thu : 8:30")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
