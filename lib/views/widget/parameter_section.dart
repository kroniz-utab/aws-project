import 'package:flutter/material.dart';
import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/text_scaling.dart';
import 'package:project_aws/views/widget/parameter_grid.dart';

class ParameterSection extends StatelessWidget {
  const ParameterSection({
    super.key,
  });

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
        children: const [
          ParameterGrid(
            icons: Icons.dew_point,
            title: 'Dew Point',
            value: '32.0 \u2103',
          ),
          ParameterGrid(
            icons: Icons.air_rounded,
            title: 'Wind Speed',
            value: '2.5 m/s',
          ),
          ParameterGrid(
            icons: Icons.explore_outlined,
            title: 'Wind Direction',
            value: '188\u00B0',
          ),
          ParameterGrid(
            icons: Icons.water_drop_outlined,
            title: 'Humidity',
            value: '88.8 %',
          ),
          ParameterGrid(
            icons: Icons.speed,
            title: 'Air Pressure',
            value: '188\u00B0',
          ),
          ParameterGrid(
            icons: Icons.water_drop_outlined,
            title: 'Rainfall',
            value: '2 mm',
          ),
          ParameterGrid(
            icons: Icons.wb_sunny_outlined,
            title: 'Solar Radiation',
            value: '1720 W/m\u00b2',
          ),
          ParameterGrid(
            icons: Icons.wb_sunny_outlined,
            title: 'Net Radiation',
            value: '1720 W/m\u00b2',
          ),
          ParameterGrid(
            icons: Icons.wb_sunny_outlined,
            title: 'Ref. Radiation',
            value: '1720 W/m\u00b2',
          ),
        ],
      ),
    );
  }
}
