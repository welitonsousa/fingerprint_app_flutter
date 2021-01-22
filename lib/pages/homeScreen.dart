import 'package:app_beacon/pages/biometryScreen.dart';
import 'package:app_beacon/utils/constants.dart';
import 'package:app_beacon/utils/pushScreen.dart';
import 'package:app_beacon/widgets/profile.dart';
import 'package:app_beacon/widgets/text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMain,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        text(text: 'Home Screen', size: 20),
        CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: true,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
          ),
          itemCount: persons.length,
          itemBuilder: (BuildContext context, int itemIndex) => Container(
            child: GestureDetector(
              child: Profile.rounded(name: persons[itemIndex], size: 120),
              onTap: () => push(context: context, screen: BiometryScreen()),
            ),
          ),
        ),
      ],
    );
  }
}
