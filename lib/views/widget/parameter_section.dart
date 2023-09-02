// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:project_aws/data/entity/aws_data.dart';
import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/text_scaling.dart';
import 'package:project_aws/views/widget/parameter_grid.dart';
import 'package:project_aws/views/widget/parameter_grid_svg.dart';

class ParameterSection extends StatelessWidget {
  final AwsData data;
  const ParameterSection({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: const [
            MyColors.kMainLightColor,
            MyColors.kWhite,
          ],
          radius: .5 * TextScaling.getFactorMobile(context),
          focal: Alignment.center,
        ),
      ),
      child: GridView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: Constant.kPaddingVerticalStandard,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 6 / 5,
        ),
        children: [
          ParameterGridSvg(
            path: 'assets/svg/thermometer_gain.svg',
            title: 'Temp. Max',
            value: data.airTempMax == null ? '--' : '${data.airTempMax}\u2103',
          ),
          ParameterGridSvg(
            path: 'assets/svg/thermometer_loss.svg',
            title: 'Temp. Min',
            value: data.airTempMin == null ? '--' : '${data.airTempMin}\u2103',
          ),
          ParameterGrid(
            icons: Icons.water_drop_outlined,
            title: 'Humidity',
            value: data.humidity == null ? '--' : '${data.humidity} %',
          ),
          ParameterGrid(
            icons: Icons.air_rounded,
            title: 'Wind Speed',
            value: data.windSpeed == null ? '--' : '${data.windSpeed} m/s',
          ),
          ParameterGrid(
            icons: Icons.explore_outlined,
            title: 'Wind Direction',
            value: data.windDirection == null
                ? '--'
                : '${data.windDirection}\u00B0',
          ),
          ParameterGrid(
            icons: Icons.speed,
            title: 'Air Pressure',
            value:
                data.airPressure == null ? '--' : '${data.airPressure}\u00B0',
          ),
          ParameterGridSvg(
            path: 'assets/svg/rainy.svg',
            title: 'Rainfall',
            value: data.rainfall == null ? '--' : '${data.rainfall} mm',
          ),
          ParameterGrid(
            icons: Icons.wb_sunny_outlined,
            title: 'Solar Radiation',
            value: data.solarRad == null ? '--' : '${data.solarRad} W/m\u00b2',
          ),
          ParameterGridSvg(
            path: 'assets/svg/evaporation.svg',
            title: 'Pan Evapor.',
            value: data.panEva == null ? '--' : '${data.panEva} mm',
          ),
        ],
      ),
    );
  }
}
