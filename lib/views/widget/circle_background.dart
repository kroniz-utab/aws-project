import 'package:flutter/material.dart';
import 'package:project_aws/styles/colors.dart';

class CircleBackground extends StatelessWidget {
  const CircleBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: 1.5 * screenSize.width,
      height: 1.5 * screenSize.width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: const Alignment(.7, .8),
          end: const Alignment(.6, -1.1),
          colors: [
            MyColors.kMainDarkColor.withOpacity(0),
            MyColors.kMainColor.withOpacity(.1),
            MyColors.kMainLightColor.withOpacity(.3),
          ],
        ),
      ),
    );
  }
}
