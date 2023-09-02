// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/styles/typography.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/extension.dart';
import 'package:project_aws/utils/text_scaling.dart';

class CustomDialog extends StatelessWidget {
  final String message;
  final void Function()? onButtonTap;
  const CustomDialog({
    Key? key,
    required this.message,
    required this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 600),
            padding: EdgeInsets.only(
              left: Constant.standardPadding,
              top: Constant.standardPadding * 3,
              right: Constant.standardPadding,
              bottom: Constant.standardPadding,
            ),
            margin: EdgeInsets.only(top: Constant.standardPadding * 3),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: MyColors.kWhite,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: MyColors.kBlack.withOpacity(.7),
                  offset: const Offset(0, 2),
                  blurRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Error',
                  style: MyTypography.kDisplayMedDark,
                  textAlign: TextAlign.center,
                  textScaleFactor: TextScaling.getFactorMobile(context),
                ),
                Constant.standardPadding.ph,
                Text(
                  message,
                  style: MyTypography.kBodyTextDark,
                  textAlign: TextAlign.center,
                  textScaleFactor: TextScaling.getFactorMobile(context),
                ),
                (Constant.standardPadding * 2).ph,
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: Constant.kPaddingVerticalStandard,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.kMainDarkColor,
                          padding: Constant.kPaddingHorizontalStandard,
                          shape: const StadiumBorder(),
                          shadowColor:
                              MyColors.kMainLightColor.withOpacity(.7)),
                      onPressed: onButtonTap,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Constant.standardPadding * 5,
                          vertical: Constant.standardPadding / 3,
                        ),
                        child: Text(
                          "Retry",
                          style: MyTypography.kDisplayMedLight
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: Constant.standardPadding,
            right: Constant.standardPadding,
            child: CircleAvatar(
              backgroundColor: Colors.red[600],
              radius: Constant.standardPadding * 3,
              child: Icon(
                Icons.error_outline_rounded,
                color: MyColors.kWhite,
                size: Constant.standardPadding * 4,
              ),
            ),
          )
        ],
      ),
    );
  }
}
