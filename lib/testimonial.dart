import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  Testimonial({
    Key? key,
  }) : super(key: key);

  final List<Color> kMixedColors = [
    Color(0xff71A5D7),
    Color(0xff72CCD4),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.all(16.0),
      color: Colors.grey,
      child: Column(
        children: [
          Text("hell on earth"),
          CarouselSlider(
            items: [
              Container(color: Colors.red),
              Container(color: Colors.purple),
              Container(color: Colors.green),
            ],
            options: CarouselOptions(
              height: 380.0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
