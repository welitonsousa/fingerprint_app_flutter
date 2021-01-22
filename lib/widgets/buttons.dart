import 'package:app_beacon/utils/constants.dart';
import 'package:app_beacon/widgets/text.dart';
import 'package:flutter/material.dart';

class Buttons {
  static Widget loginButton({
    @required Function onPressed,
    String label = 'No label',
  }) {
    return RaisedButton(
      onPressed: onPressed,
      color: Color(0XFF68e77e),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      child: Container(
          height: 50, child: text(text: label, color: colorSecondary, size: 18)),
    );
  }
}
