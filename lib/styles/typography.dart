import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_aws/styles/colors.dart';

class MyTypography {
  MyTypography._();

  static TextStyle kDisplayLargeLight = GoogleFonts.rubik(
    color: MyColors.kWhite,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kDisplayMedLight = GoogleFonts.rubik(
    color: MyColors.kWhite,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static TextStyle kDisplaySmallLight = GoogleFonts.rubik(
    color: MyColors.kWhite,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: .25,
  );

  static TextStyle kBodyTextLight = GoogleFonts.rubik(
    color: MyColors.kWhite,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: .15,
  );

  static TextStyle kDisplayLargeDark = GoogleFonts.rubik(
    color: MyColors.kBlack,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static TextStyle kDisplayMedDark = GoogleFonts.rubik(
    color: MyColors.kBlack,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static TextStyle kDisplaySmallDark = GoogleFonts.rubik(
    color: MyColors.kBlack,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: .25,
  );

  static TextStyle kBodyTextDark = GoogleFonts.rubik(
    color: MyColors.kBlack,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: .15,
  );
}
