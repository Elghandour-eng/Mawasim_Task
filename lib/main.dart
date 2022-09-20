import 'package:flutter/material.dart';
import 'package:mawasim_task/features/login_feature/units/login_view.dart';
import 'package:mawasim_task/widgets/pop_scaffold.dart';

import 'core/router/router.dart';

void main() {
  runApp(MawasimTask());
}

class MawasimTask extends StatelessWidget {
  const MawasimTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => PopScaffold(child: child),
      //const for now
      home:const LoginView(),
    );
  }
}
