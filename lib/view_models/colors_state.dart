import 'package:flutter/material.dart';

///A class for the state of the view model
class ColorsState {
  ///A parameter to identify the new background color of the state
  final Color backgroundColor;

  ///A parameter to identify the new text color of the state
  final Color textColor;

  ///The class constructor , It recieves the new colors of the new state that
  ///controlls the state of the screen to change its color background
  ///and the color of the text in it
  const ColorsState(this.backgroundColor, this.textColor);

  ///This constructor creates a state object with initial
  ///colors [Colors.white]for background and [Colors.blue] for text
  factory ColorsState.initial() {
    return const ColorsState(Colors.white, Colors.blue);
  }
}
