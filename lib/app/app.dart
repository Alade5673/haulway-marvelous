import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haulway_mobile/core/app_routes.dart';
import 'package:haulway_mobile/core/theme.dart';
import 'package:haulway_mobile/shared/extensions.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(context.deviceWidth, context.deviceHeight),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          theme: ThemeDataClass.darkTheme(),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRoute.routes,
        );
      },
    );
  }
}
