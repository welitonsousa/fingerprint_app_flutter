import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget text({@required String text, double size = 16, Color color = Colors.white, bool center = true}){
  if (center) return Center(child: Text('$text',textAlign: TextAlign.center, style: TextStyle(fontSize: size, color: color),));
  else return Text('$text',textAlign: TextAlign.center, style: TextStyle(fontSize: size, color: color));
}