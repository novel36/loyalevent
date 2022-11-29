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
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
            lg: 12,
            child: Center(child: Text("Mission Vission Goal")),
          ),
          ResponsiveGridCol(
              lg: 3,
              child: Card(
                child: Container(
                  height: 475,
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
                          alignment: Alignment.center,
                          child:
                              Text("Mission", style: TextStyle(fontSize: 24))),
                      Divider(
                        color: Colors.grey,
                        height: 1.0,
                      ),
                      Container(
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(fontSize: 18)),
                      )
                    ],
                  ),
                ),
              )),
          ResponsiveGridCol(
              lg: 4,
              child: Card(
                child: Container(
                  height: 475,
                  margin: EdgeInsets.only(right: 8.0, left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 150,
                          height: 150,
                          child: Icon(Icons.person, size: 56)),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child:
                              Text("Vision", style: TextStyle(fontSize: 24))),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(fontSize: 18)),
                      )
                    ],
                  ),
                ),
              )),
          ResponsiveGridCol(
              lg: 4,
              child: Card(
                child: Container(
                  height: 475,
                  margin: EdgeInsets.only(right: 8.0, left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 150,
                          height: 150,
                          child: Icon(Icons.person, size: 56)),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                          width: 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text("Goal", style: TextStyle(fontSize: 24))),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 350,
                        height: 200,
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(fontSize: 18)),
                      )
                    ],
                  ),
                ),
              )),
        ]));
  }
}
