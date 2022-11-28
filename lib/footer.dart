import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.deepPurple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 80,
                    color: Colors.lime,
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    color: Colors.lime,
                  ),
                  Container(
                    height: 100,
                    width: 80,
                    color: Colors.lime,
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.0,
            height: 5,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 80,
              color: Colors.pinkAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.pink,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 30,
                            width: 65,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 200,
                            color: Colors.grey,
                          ),
                          Container(
                            height: 30,
                            width: 100,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.cyan,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            child: Text("Copyright"),
          )
        ],
      ),
    );
  }
}
