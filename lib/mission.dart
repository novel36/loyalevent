import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Mission extends StatelessWidget {
  const Mission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 64.0),
        alignment: Alignment.center,
        // color: Colors.grey,
        child: ResponsiveGridRow(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResponsiveGridCol(
                lg: 12,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                      child: Text(
                    "Our Mission ...",
                    style: TextStyle(fontSize: 38),
                  )),
                ),
              ),
              ResponsiveGridCol(
                  lg: 4,
                  child: Card(
                    elevation: 6.0,
                    child: Container(
                      height: 480,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0)),
                      margin: EdgeInsets.only(right: 8.0, left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 80,
                              height: 80,
                              child: Icon(Icons.person, size: 56)),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              width: 150,
                              height: 50,
                              margin: EdgeInsets.all(16.0),
                              alignment: Alignment.center,
                              child: Text("Mission",
                                  style: TextStyle(fontSize: 24))),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 48.0),
                            child: Divider(
                              color: Colors.grey,
                              height: 1.0,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                            width: 350,
                            height: 200,
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  )),
              ResponsiveGridCol(
                  lg: 4,
                  child: Card(
                    elevation: 6.0,
                    child: Container(
                      height: 480,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0)),
                      margin: EdgeInsets.only(right: 8.0, left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 80,
                              height: 80,
                              child: Icon(Icons.person, size: 56)),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              width: 150,
                              height: 50,
                              margin: EdgeInsets.all(16.0),
                              alignment: Alignment.center,
                              child: Text("Vission",
                                  style: TextStyle(fontSize: 24))),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 48.0),
                            child: Divider(
                              color: Colors.grey,
                              height: 1.0,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                            width: 350,
                            height: 200,
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  )),
              ResponsiveGridCol(
                  lg: 4,
                  child: Card(
                    elevation: 6.0,
                    child: Container(
                      height: 480,
                      margin: EdgeInsets.only(right: 8.0, left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              width: 80,
                              height: 80,
                              child: Icon(Icons.person, size: 56)),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                              width: 150,
                              height: 50,
                              margin: EdgeInsets.all(16.0),
                              alignment: Alignment.center,
                              child:
                                  Text("Goal", style: TextStyle(fontSize: 24))),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 48.0),
                            child: Divider(
                              color: Colors.grey,
                              height: 1.0,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Container(
                            width: 350,
                            height: 200,
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  ))
            ]));
  }
}
