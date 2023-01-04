import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      // height: 750,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Upcoming Events",
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(
            height: 16.0,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: ResponsiveValue(context,
                    defaultValue: 4,
                    valueWhen: [Condition.smallerThan(name: TABLET, value: 1)])
                .value!,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: 1.0,
            children: [
              //  width: 350,
              //     height: 400,
              getEvents(),
              getEvents(),
              getEvents(),
              getEvents(),
              getEvents(),
              getEvents(),
              getEvents(),
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

  Card getEvents() {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Container(
                // color: Colors.red,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    image: DecorationImage(
                        image: AssetImage("assets/images/asset1.jpg"))),
              ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    "7 Days left",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Timket",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Meskel adebabay ,Addis abeba",
                  style: TextStyle(fontSize: 12),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(0))),
                      child: Text("Book Now",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.pink,
                          )),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    TextButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(0))),
                        onPressed: () {},
                        child: Text("Detail",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.pink,
                            ))),
                    SizedBox(
                      width: 16.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
    ));
  }
}
