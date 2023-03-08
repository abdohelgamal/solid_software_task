import 'dart:math';
import 'package:flutter/material.dart';

///A class reponsible for generating a new random [Color]
///It implements the [IColorGenerator]
class ColorGenerator implements IColorGenerator {
  final Random _random;

  ///A constructor that gets an instance of the [Random] to be used
  const ColorGenerator(this._random);

  ///This function creates a new [Color] by giving a new [int]
  ///number >= 0 and < 256 to the colors red , green and blue
  ///plus a random [double] value  >= 0.0 and < 1.0 to the opacity
  ///and then gives all these values to a [Color] objects and then returns it
  @override
  Color generateNewColor() {
    final int red = _random.nextInt(256);
    final int green = _random.nextInt(256);
    final int blue = _random.nextInt(256);
    final double opacity = _random.nextDouble();

    return Color.fromRGBO(red, green, blue, opacity);
  }
}

///An interface class reponsible for defining the form of
///the implemented classes
abstract class IColorGenerator {
  ///Abstract function that defines the shape of it with no implemenation
  Color generateNewColor();
}
