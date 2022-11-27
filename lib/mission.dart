import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Mission extends StatelessWidget {
  const Mission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 400,
        color: Colors.grey,
        child: ResponsiveGridRow(children: [
          ResponsiveGridCol(
              child: Container(
            color: Colors.red,
          ))
        ]));
  }
}
