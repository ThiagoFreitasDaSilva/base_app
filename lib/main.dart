import 'package:base_app/app/pages/splash.page.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_login/app/micro_app_login.resolver.dart';
import 'package:micro_core/app/base_app.dart';
import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/micro_core.dart';

void main() {
  runApp(BaseAPPImpl());
}

class BaseAPPImpl extends StatelessWidget with BaseAPP {
  @override
  Widget build(BuildContext context) {
    super.registerRouters();
    super.registerListeners();

    return MaterialApp(
      title: 'Micro Frontends',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      initialRoute: '/splash-page',
      onGenerateRoute: super.generateRoute,
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseAPPRoutes => {
        '/splash-page': (_, __) => const SplashPage(),
      };

  //Listagem de microapps
  @override
  List<MicroAPP> get microAPPs => [
        MicroAPPLoginResolver(),
      ];
}
