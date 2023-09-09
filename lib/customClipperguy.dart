import 'package:flutter/material.dart';

class customClipperguy extends CustomClipper<Path> {

  //alternatively use shapemaker.web.app to make the custom shape and click on getcode to get the custom code for that shape. 

@override
Path getClip(Size size){
  double w = size.width;
  double h = size.height;

  final path = Path();

  path.lineTo(0, 200);
  path.quadraticBezierTo(
    w * 0.5,
    h ,
    w, 
    h - 20);
  path.lineTo(w, 0);
  path.close();

  return path;

}

@override
bool shouldReclip(CustomClipper<Path> oldClipper){
  return false;
}
}