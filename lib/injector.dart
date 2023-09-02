import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:project_aws/core/client.dart';
import 'package:project_aws/core/dio_module.dart';
import 'package:project_aws/data/api/api.dart';
import 'package:project_aws/data/usecase/get_aws_data.dart';
import 'package:project_aws/data/usecase/post_auth.dart';
import 'package:project_aws/helper/preferences_helper.dart';
import 'package:project_aws/views/bloc/auth/auth_bloc.dart';
import 'package:project_aws/views/bloc/aws_data/aws_data_bloc.dart';
import 'package:project_aws/views/bloc/theme/theme_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

void init() {
  locator.registerLazySingleton<AwsCenterModule>(
    () => AwsCenterModule(baseUrl: dotenv.get('URL')),
  );

  locator.registerLazySingleton<AwsCenterClient>(
    () => AwsCenterClient(dioModule: locator<AwsCenterModule>()),
  );

  locator.registerLazySingleton<PreferencesHelper>(
    () => PreferencesHelper(SharedPreferences.getInstance()),
  );

  // data
  locator.registerLazySingleton<RemoteAwsCenterDatasource>(
    () => RemoteAwsCenterDatasourceImpl(dioModule: locator<AwsCenterModule>()),
  );

  locator.registerLazySingleton<GetAwsData>(
    () => GetAwsData(locator()),
  );

  locator.registerLazySingleton<PostAuth>(
    () => PostAuth(locator()),
  );

  locator.registerFactory<AuthBloc>(
    () => AuthBloc(locator(), locator()),
  );

  locator.registerFactory<AwsDataBloc>(
    () => AwsDataBloc(locator(), locator()),
  );

  locator.registerFactory<ThemeBloc>(() => ThemeBloc());
}
