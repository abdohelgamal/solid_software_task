import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_task/core/color_generator.dart';
import 'package:solid_software_task/view_models/colors_view_model.dart';
import 'package:solid_software_task/views/home_screen.dart';

///The start of the app with the [MaterialApp] and the initializing
///structure of the application
class AppInit extends StatelessWidget {
  ///A constructor of the homme page [Widget] that creates the object of
  ///the [AppInit] and adds it into the [Widget] tree
  const AppInit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorsViewModel(ColorGenerator(Random())),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
