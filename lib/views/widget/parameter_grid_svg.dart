// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/styles/typography.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/text_scaling.dart';

class ParameterGridSvg extends StatelessWidget {
  final String path;
  final String title;
  final String value;
  const ParameterGridSvg({
    Key? key,
    required this.path,
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
          SvgPicture.asset(
            path,
            height: Constant.standardPadding *
                2 *
                TextScaling.getFactorMobile(context),
            width: Constant.standardPadding *
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
