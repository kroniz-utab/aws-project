import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:project_aws/styles/colors.dart';

class RotateSquareBackground extends StatelessWidget {
  const RotateSquareBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
        width: 1.2 * screenSize.width,
        height: 1.2 * screenSize.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: LinearGradient(
            begin: const Alignment(-0.2, -0.8),
            end: Alignment.bottomCenter,
            colors: [
              MyColors.kMainDarkColor.withOpacity(0),
              MyColors.kMainColor.withOpacity(.1),
              MyColors.kMainLightColor.withOpacity(.4),
            ],
          ),
        ),
      ),
    );
  }
}
