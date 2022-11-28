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
        color: Colors.grey,
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
            lg: 12,
            child: Center(child: Text("Mission Vission Goal")),
          ),
          ResponsiveGridCol(
              lg: 4,
              child: Container(
                height: 475,
                margin: EdgeInsets.only(right: 8.0, left: 8),
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 150,
                      height: 50,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 350,
                      height: 200,
                      color: Colors.grey,
                    )
                  ],
                ),
              )),
          ResponsiveGridCol(
              lg: 4,
              child: Container(
                height: 475,
                margin: EdgeInsets.only(right: 8.0, left: 8),
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 150,
                      height: 50,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 350,
                      height: 200,
                      color: Colors.grey,
                    )
                  ],
                ),
              )),
          ResponsiveGridCol(
              lg: 4,
              child: Container(
                height: 475,
                margin: EdgeInsets.only(right: 8.0, left: 8),
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 150,
                      height: 50,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: 350,
                      height: 200,
                      color: Colors.grey,
                    )
                  ],
                ),
              ))
        ]));
  }
}
