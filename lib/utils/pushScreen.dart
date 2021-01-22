import 'package:flutter/material.dart';

push({BuildContext context, screen}){
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}