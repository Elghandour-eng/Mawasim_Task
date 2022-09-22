import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/color_manager/color_manager.dart';
import 'package:mawasim_task/features/sign_up_feature/bloc/bloc.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';
import 'package:services_repository/services_repository.dart';
import 'core/app_constants/constants.dart';
import 'core/router/router.dart';
import 'core/utils/observer.dart';
import 'features/login_feature/bloc/bloc.dart';
import 'features/login_feature/login_view.dart';
//import 'package:flutter/services.dart';
import 'package:auth_repo/auth_repo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  /** To Close LandScape */
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  /** Bloc Observer */
  Bloc.observer = AppBlocObserver();
  runApp(
      /** Repos of App */
      MultiRepositoryProvider(
    providers: [
      RepositoryProvider<AuthenticationRepository>(
          create: (context) => AuthenticationRepository()),
      RepositoryProvider<ServicesRepository>(
          create: (context) => ServicesRepository()),
    ],
    child: const MawasimTask(),
  ));
}

class MawasimTask extends StatelessWidget {
  const MawasimTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SignInBloc>(
              create: (context) => SignInBloc(
                    authenticationRepository:
                        RepositoryProvider.of<AuthenticationRepository>(
                            context),
                  )),
          BlocProvider<SignUpBloc>(
              create: (context) => SignUpBloc(
                authenticationRepository:
                RepositoryProvider.of<AuthenticationRepository>(
                    context),
              )),
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) => MaterialApp(
            navigatorKey: navigatorKey,
            onGenerateRoute: onGenerateRoute,
            debugShowCheckedModeBanner: false,
            builder: (context, child) => PopScaffold(child: child),
            theme: ThemeData(
                scaffoldBackgroundColor: ColorManager.scaffoldBackGroundColor,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
                textTheme: textTheme),

            //const for now
            home: const LoginView(),
          ),
        ));
  }
}
