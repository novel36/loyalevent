import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  Testimonial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Testimonial",
            style: TextStyle(fontSize: 32),
          ),
          Expanded(
            child: CarouselSlider(
              items: [
                Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.passthrough,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned.fill(
                      child: Card(
                        child: Container(
                          alignment: Alignment.topCenter,
                          width: 300,
                          padding:
                              EdgeInsets.only(top: 48, right: 32, left: 32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Singer"),
                              Text("Teddy Afiro"),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: -40.0,
                        child: Container(
                          height: 80,
                          width: 180,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image:
                                      AssetImage("assets/images/events.jpg"))),
                        )),
                  ],
                ),
              ],
              options: CarouselOptions(
                height: 300.0,
                enlargeCenterPage: true,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
