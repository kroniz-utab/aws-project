import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_aws/styles/colors.dart';
import 'package:project_aws/styles/typography.dart';
import 'package:project_aws/utils/constant.dart';
import 'package:project_aws/utils/enum.dart';
import 'package:project_aws/utils/extension.dart';
import 'package:project_aws/views/bloc/auth/auth_bloc.dart';
import 'package:project_aws/views/bloc/aws_data/aws_data_bloc.dart';
import 'package:project_aws/views/bloc/theme/theme_bloc.dart';
import 'package:project_aws/views/provider/splash_provider.dart';
import 'package:project_aws/views/widget/circle_background.dart';
import 'package:project_aws/views/widget/rotate_square_background.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.read<AuthBloc>().add(const AuthEvent.started());
        context.read<ThemeBloc>().add(const ThemeEvent.change());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final splashState = ref.watch(splashProvider);
    final messageState = ref.watch(messageProvider);
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {
              ref.read(splashProvider.notifier).state = SplashStateEnum.loading;
            },
            success: (data) {
              context.read<AwsDataBloc>().add(const AwsDataEvent.started());
              Navigator.pushReplacementNamed(context, '/home');
            },
            error: (failure) {
              ref.read(splashProvider.notifier).state = SplashStateEnum.failed;
              ref.read(messageProvider.notifier).state = failure.message;
            },
          );
        },
        child: Stack(
          children: [
            const Positioned(
              bottom: -250,
              left: -200,
              child: CircleBackground(),
            ),
            const Positioned(
              top: -250,
              right: -200,
              child: RotateSquareBackground(),
            ),
            SizedBox(
              height: Constant.screenHeight(context),
              width: Constant.screenWidth(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/bmkg_logo.png',
                    height: 100,
                  ),
                  Constant.standardPadding.ph,
                  Text(
                    'AWS Nabire',
                    style: MyTypography.kDisplayMedDark,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: Constant.standardPadding,
              left: Constant.standardPadding,
              right: Constant.standardPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ver. 1.0.0',
                    style: MyTypography.kDisplaySmallDark,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Copyright by',
                    style: MyTypography.kBodyTextDark,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Stasiun Meteorologi Nabire',
                    style: MyTypography.kBodyTextDark,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Positioned(
              bottom: Constant.screenHeight(context) / 6,
              left: Constant.standardPadding,
              right: Constant.standardPadding,
              child: splashState == SplashStateEnum.loading
                  ? onLoading()
                  : onFailed(messageState),
            ),
            // splashState == SplashStateEnum.loading ?
          ],
        ),
      ),
    );
  }

  Center onLoading() {
    return const Center(
      child: CircularProgressIndicator(
        color: MyColors.kMainDarkColor,
        strokeWidth: 2,
      ),
    );
  }

  Column onFailed(String messageState) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          messageState,
          style: MyTypography.kBodyTextDark,
          textAlign: TextAlign.center,
        ),
        Constant.standardPadding.ph,
        GestureDetector(
          onTap: () {
            ref.read(splashProvider.notifier).state = SplashStateEnum.loading;
            context.read<AuthBloc>().add(const AuthEvent.started());
          },
          child: const Icon(
            Icons.refresh_outlined,
            size: 32,
            color: MyColors.kMainDarkColor,
          ),
        )
      ],
    );
  }
}
