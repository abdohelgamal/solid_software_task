import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software_task/view_models/colors_state.dart';
import 'package:solid_software_task/view_models/colors_view_model.dart';

///A [Widget] class that represents the [HomeScreen]
class HomeScreen extends StatelessWidget {
  ///A constructor of the homme page [Widget] that creates the object of
  ///the [HomeScreen] and adds it into the [Widget] tree
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double _fontSize = 20;
    const Duration animationDuration = Duration(milliseconds: 500);
    final ColorsViewModel viewModel = context.read<ColorsViewModel>();

    return Scaffold(
      body: BlocBuilder<ColorsViewModel, ColorsState>(
        builder: (context, state) => GestureDetector(
          onTap: viewModel.changeColor,
          child: AnimatedContainer(
            duration: animationDuration,
            color: state.backgroundColor,
            alignment: Alignment.center,
            child: AnimatedDefaultTextStyle(
              style: TextStyle(
                color: state.textColor,
                backgroundColor: Colors.transparent,
                fontSize: _fontSize,
              ),
              duration: animationDuration,
              child: const Text(
                'Hey there',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
