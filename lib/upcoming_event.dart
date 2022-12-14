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
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
            childAspectRatio: 0.8,
            children: [
              getEvents("assets/images/bermel.jpg"),
              getEvents("assets/images/karate.jpg"),
              getEvents("assets/images/tsedey.jpg"),
              getEvents("assets/images/rophnan.jpg"),
              getEvents("assets/images/karate.jpg"),
              getEvents("assets/images/womenleft.jpg"),
              getEvents("assets/images/buyethiopian.jpg"),
              getEvents("assets/images/codingtime.jpg"),
              getEvents("assets/images/yelem.jpg"),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink)),
              onPressed: () {},
              child: Text(
                "Load More",
                style: TextStyle(fontSize: 11),
              ))
        ],
      ),
    );
  }

  Card getEvents(String imagename) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    image: DecorationImage(
                        image: AssetImage(imagename), fit: BoxFit.cover)),
              ),
              Opacity(
                opacity: 0.8,
                child: Container(
                  padding: EdgeInsets.only(left: 8.0, top: 32),
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
                SizedBox(
                  height: 8.0,
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
                            fontSize: 10.0,
                            color: Colors.pink,
                          )),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.pink)),
                        onPressed: () {},
                        child: Text(
                          "Detail",
                          style: TextStyle(fontSize: 11.0),
                        )),
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
