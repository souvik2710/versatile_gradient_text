import 'package:flutter/material.dart';

class VersatileGradientText extends StatelessWidget {
  //this widget takes only two color
  //TileMode can be changed :optional
  //from enum VersatileGradientType we can get the type og gradient we want
  //later will be adding the Alignment also as a pass variable
  //enum used to segregate the types of gradient
  // till date only two color is supported for gradient colors for simplicity and ease of use

  final Color colorOne;
  final Color colorTwo;
  final double fontSize;
  final TileMode tileModePass;
  final VersatileGradientType versatileGradientType;
  final String textString;

  VersatileGradientText(
      {required this.textString,
      required this.colorOne,
      required this.colorTwo,
      required this.fontSize,
      this.tileModePass = TileMode.mirror,
      this.versatileGradientType = VersatileGradientType.radial});
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return fetchGradient(
            versatileGradientType: versatileGradientType,
            bounds: bounds,
            colorOne: colorOne,
            colorTwo: colorTwo,
            fontSize: fontSize,
            tileModePass: tileModePass);
      },
      child: Text(
        '$textString',
        style: TextStyle(color: Colors.white, fontSize: fontSize),
      ),
    );
  }
}

enum VersatileGradientType { radial, linear, sweep }

Shader fetchGradient(
    {required VersatileGradientType versatileGradientType,
    required Rect bounds,
    required Color colorOne,
    required Color colorTwo,
    required double fontSize,
    required TileMode tileModePass}) {
  switch (versatileGradientType) {
    case VersatileGradientType.radial:
      return RadialGradient(
        center: Alignment.topLeft,
        radius: 1.0,
        colors: [colorOne, colorTwo],
        tileMode: tileModePass,
      ).createShader(bounds);
    case VersatileGradientType.linear:
      return LinearGradient(
        begin: Alignment.topLeft,
        colors: [colorOne, colorTwo],
        tileMode: tileModePass,
      ).createShader(bounds);
    case VersatileGradientType.sweep:
      return SweepGradient(
        center: Alignment.topLeft,
        colors: [colorOne, colorTwo],
        tileMode: tileModePass,
      ).createShader(bounds);
    default:
      return LinearGradient(
        begin: Alignment.topLeft,
        colors: [colorOne, colorTwo],
        tileMode: tileModePass,
      ).createShader(bounds);
  }
}
