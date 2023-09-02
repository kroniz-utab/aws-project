// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'package:project_aws/data/entity/aws_data.dart';
import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/styles/typography.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/enum.dart';
import 'package:project_aws/utils/text_scaling.dart';
import 'package:project_aws/views/bloc/aws_data/aws_data_bloc.dart';
import 'package:project_aws/views/bloc/theme/theme_bloc.dart';
import 'package:project_aws/views/provider/data_provider.dart';
import 'package:project_aws/views/widget/custom_dialog.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    final data = ref.watch(dataProvider);
    final dFormat = DateFormat('yyyy-MM-dd hh:mm:ss');
    return Scaffold(
      body: BlocListener<AwsDataBloc, AwsDataState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loadign: () {},
            success: (data) {
              ref.read(dataProvider.notifier).state = data;
            },
            error: (failure) {
              showDialog(
                context: context,
                builder: (context) {
                  return CustomDialog(
                    message: failure.message,
                    onButtonTap: () {
                      context
                          .read<AwsDataBloc>()
                          .add(const AwsDataEvent.started());
                      Navigator.pop(context);
                    },
                  );
                },
              );
            },
          );
        },
        child: Stack(
          children: [
            Positioned(
              top: -(Constant.screenHeight(context) / 16),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 700),
                child: BlocBuilder<ThemeBloc, ThemeState>(
                  builder: (context, state) {
                    return state.when(
                      morning: (path) => buildBgImage(path, context),
                      evening: (path) => buildBgImage(path, context),
                      night: (path) => buildBgImage(path, context),
                    );
                  },
                ),
              ),
            ),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return state.when(
                  morning: (path) =>
                      buildBannerInfo(context, data, SituationEnum.morning),
                  evening: (path) =>
                      buildBannerInfo(context, data, SituationEnum.evening),
                  night: (path) =>
                      buildBannerInfo(context, data, SituationEnum.night),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(
                top: Constant.screenHeight(context) / 4,
              ),
              child: DraggableScrollableSheet(
                minChildSize: 0.37 * TextScaling.getFactorMobile(context),
                initialChildSize: 0.37 * TextScaling.getFactorMobile(context),
                maxChildSize: .57 * TextScaling.getFactorMobile(context) > 1
                    ? .57
                    : .57 * TextScaling.getFactorMobile(context),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ParameterSection(data: data),
                              Container(
                                padding: EdgeInsets.only(
                                  left: Constant.standardPadding,
                                  right: Constant.standardPadding,
                                  bottom: Constant.standardPadding,
                                ),
                                width: double.infinity,
                                child: Text(
                                  'Last Update : ${data.tanggal == null ? '2020-01-01 00:00:00' : dFormat.format(data.tanggal!)}',
                                  style: MyTypography.kBodyTextDark.copyWith(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              )
                            ],
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
      ),
    );
  }

  Container buildBannerInfo(
    BuildContext context,
    AwsData data,
    SituationEnum themeSituation,
  ) {
    return Container(
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
            data.airTemp == null ? '--' : '${data.airTemp}\u2103',
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
                  DateFormat('yyyy-MM-dd hh:mm:ss').format(date.toUtc());
              if (date.second == 2 && date.minute % 10 == 1) {
                context.read<AwsDataBloc>().add(const AwsDataEvent.started());
                context.read<ThemeBloc>().add(const ThemeEvent.change());
              }

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
    );
  }

  Image buildBgImage(String path, BuildContext context) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
      width: Constant.screenWidth(context),
      height: Constant.screenHeight(context),
    );
  }
}
