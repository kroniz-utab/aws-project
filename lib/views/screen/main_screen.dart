// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/styles/typography.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/enum.dart';
import 'package:project_aws/utils/text_scaling.dart';
import 'package:project_aws/views/provider/theme_provider.dart';
import 'package:project_aws/views/widget/parameter_section.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen>
    with WidgetsBindingObserver {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    timer = Timer.periodic(const Duration(minutes: 5), (timer) {
      ref.read(themeProvider.notifier).change();
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeSituation = ref.watch(themeProvider).state;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -(Constant.screenHeight(context) / 16),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 700),
              child: Image.asset(
                themeSituation == SituationEnum.night
                    ? 'assets/img/Blood.png'
                    : themeSituation == SituationEnum.morning
                        ? 'assets/img/Sun.png'
                        : 'assets/img/Moon.png',
                fit: BoxFit.cover,
                width: Constant.screenWidth(context),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: Constant.kPaddingAllStandard.copyWith(
              left: Constant.standardPadding * 1.5,
              top: Constant.screenHeight(context) / 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AWS Stamet Nabire',
                  style: themeSituation == SituationEnum.morning
                      ? MyTypography.kDisplaySmallDark
                      : MyTypography.kDisplaySmallLight,
                  textScaleFactor: TextScaling.getFactorMobile(context),
                ),
                Text(
                  '32.0 \u2103',
                  style: themeSituation == SituationEnum.morning
                      ? MyTypography.kDisplayLargeDark.copyWith(fontSize: 68)
                      : MyTypography.kDisplayLargeLight.copyWith(fontSize: 68),
                  textScaleFactor: TextScaling.getFactorMobile(context),
                ),
                StreamBuilder(
                  stream: Stream.periodic(const Duration(seconds: 1)),
                  builder: (context, snapshot) {
                    final date = DateTime.now();
                    final clock =
                        DateFormat('yyyy-MM-dd hh:mm:ss').format(date);

                    return Text(
                      'UTC Time : $clock',
                      style: themeSituation == SituationEnum.morning
                          ? MyTypography.kBodyTextDark
                          : MyTypography.kBodyTextLight,
                      textScaleFactor: TextScaling.getFactorMobile(context),
                    );
                  },
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: Constant.screenHeight(context) / 4,
            ),
            child: DraggableScrollableSheet(
              minChildSize: 0.37 * TextScaling.getFactorMobile(context),
              initialChildSize: 0.37 * TextScaling.getFactorMobile(context),
              maxChildSize: 1 * TextScaling.getFactorMobile(context) > 1
                  ? 1
                  : 1 * TextScaling.getFactorMobile(context),
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: MyColors.kWhite,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.only(
                    top: Constant.standardPadding / 6,
                    left: Constant.standardPadding,
                    right: Constant.standardPadding,
                  ),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        controller: scrollController,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ParameterSection()],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
