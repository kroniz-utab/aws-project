import 'package:flutter/material.dart';
import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/styles/typography.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/text_scaling.dart';

class ParameterGrid extends StatelessWidget {
  final IconData icons;
  final String title;
  final String value;
  const ParameterGrid({
    Key? key,
    required this.icons,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.kWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icons,
            size: Constant.standardPadding *
                2 *
                TextScaling.getFactorMobile(context),
            color: MyColors.kMainLightColor,
          ),
          Text(
            title,
            style: MyTypography.kBodyTextDark,
            textScaleFactor: TextScaling.getFactorMobile(context),
          ),
          Text(
            value,
            style: MyTypography.kDisplaySmallDark,
            textScaleFactor: TextScaling.getFactorMobile(context),
          )
        ],
      ),
    );
  }
}
