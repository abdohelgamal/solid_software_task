import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_task/core/color_generator.dart';
import 'package:solid_software_task/view_models/colors_state.dart';

///The controller or the (viewmodel) that controlls when to rebuild the screen
class ColorsViewModel extends Cubit<ColorsState> {

  ///An [IColorGenerator] variable to use in generation of the colors randomly
  final IColorGenerator colorGenerator;

  ///The constructor of the bloc , It initiates the the bloc class with an
  ///object that implements the [IColorGenerator] and with an initial state of
  ///the background color [Colors.white] and text color [Colors.blue]
  ColorsViewModel(this.colorGenerator) : super(ColorsState.initial());

  ///This function emits a new state with a new color to rebuild
  ///the screen with this new color
  void changeColor() {
    final Color bgColor = colorGenerator.generateNewColor();
    final Color textColor = Color.fromRGBO(
      255 - bgColor.red,
      255 - bgColor.green,
      255 - bgColor.blue,
      1,
    );
    emit(
      ColorsState(bgColor, textColor),
    );
  }
}
