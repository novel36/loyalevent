import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Testimonial extends StatelessWidget {
  Testimonial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveValue(context,
              defaultValue: 550.0,
              valueWhen: [Condition.smallerThan(name: TABLET, value: 400.0)])
          .value!,
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
                          width: ResponsiveValue(context,
                              defaultValue: 300.0,
                              valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 0.0)
                              ]).value!,
                          padding: EdgeInsets.only(
                              top: ResponsiveValue(context,
                                  defaultValue: 48.0,
                                  valueWhen: [
                                    Condition.smallerThan(
                                        name: TABLET, value: 32.0)
                                  ]).value!,
                              right: ResponsiveValue(context,
                                  defaultValue: 32.0,
                                  valueWhen: [
                                    Condition.smallerThan(
                                        name: TABLET, value: 8.0)
                                  ]).value!,
                              left:
                                  ResponsiveValue(context, defaultValue: 32.0, valueWhen: [
                                Condition.smallerThan(name: TABLET, value: 8.0)
                              ]).value!),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Singer"),
                              Text("Teddy Afiro"),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.all(ResponsiveValue(context,
                                    defaultValue: 8.0,
                                    valueWhen: [
                                      Condition.smallerThan(
                                          name: TABLET, value: 2.0)
                                    ]).value!),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                                  style: TextStyle(fontSize: 12),
                                ),
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
                              // color: Colors.black,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                      "assets/images/teddyafiro.jpg"))),
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
                viewportFraction: ResponsiveValue(context,
                    defaultValue: 0.45,
                    valueWhen: [
                      Condition.smallerThan(name: TABLET, value: 0.8)
                    ]).value!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
