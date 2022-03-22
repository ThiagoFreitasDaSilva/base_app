import 'package:flutter/material.dart';
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

    return MaterialApp(
      title: 'Micro Frontends',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: super.generateRoute,
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseAPPRoutes => {};

  //Listagem de microapps
  @override
  List<MicroAPP> get microAPPs => [];
}
