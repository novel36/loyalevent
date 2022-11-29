import 'package:flutter/material.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 700,
      // color: Colors.grey,
      child: GridView.count(
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
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/party.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Music For Life"),
                            Text(
                                "Music For Life Music For Life Music For Life Music For Life Music For Life Music For Life"),
                          ],
                        )),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
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
                      image: DecorationImage(
                          image: AssetImage('assets/images/party.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Music For Life"),
                            Text(
                                "Music For Life Music For Life Music For Life Music For Life Music For Life Music For Life"),
                          ],
                        )),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
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
                      image: DecorationImage(
                          image: AssetImage('assets/images/event3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Music For Life"),
                            Text(
                                "Music For Life Music For Life Music For Life Music For Life Music For Life Music For Life"),
                          ],
                        )),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
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
                      image: DecorationImage(
                          image: AssetImage('assets/images/assetone.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Music For Life"),
                            Text(
                                "Music For Life Music For Life Music For Life Music For Life Music For Life Music For Life"),
                          ],
                        )),
                        Expanded(
                          child: Container(
                            color: Colors.grey,
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
    );
  }
}
