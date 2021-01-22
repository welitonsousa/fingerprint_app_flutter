import 'package:app_beacon/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile {
  static Widget rounded(
      {@required String name, double size = 90}) {
    return Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(
              'assets/img/$name.png',
            ),
          ),
        ),
        text(text: '$name', size: size / 10)
      ],
    );
  }
}
