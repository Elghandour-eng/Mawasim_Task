import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mawasim_task/core/color_manager/color_manager.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';
import 'core/router/router.dart';
import 'features/login_feature/login_view.dart';
//import 'package:flutter/services.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  /** To Close LandScape */
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MawasimTask());
}

class MawasimTask extends StatelessWidget {
  const MawasimTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 16.sp,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: ColorManager.textColor1,
                fontFamily: 'Tajawal'),
            headline4: TextStyle(
                fontSize: 13.sp,
                //fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: ColorManager.textColor2,
                decoration: TextDecoration.underline,
                fontFamily: 'Tajawal'),
            headline5: TextStyle(
                fontSize: 13.sp,
                //fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: ColorManager.textColor1,
                decoration: TextDecoration.underline,
                fontFamily: 'Tajawal'),
            headline3: TextStyle(
                fontSize: 16.sp,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                color: ColorManager.textColor2,
                fontFamily: 'Tajawal'),
            headline2: TextStyle(
              fontSize: 14.0.sp,
              fontFamily: 'Tajawal',
              color: ColorManager.textColor2,
            ),
          ),
        ),

        //const for now
        home: const LoginView(),
      ),
    );
  }
}
