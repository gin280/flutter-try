import 'package:flutter/material.dart';
import 'package:flutter_try/app/locator.dart';
import 'package:flutter_try/app/router.gr.dart';
import 'package:flutter_try/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';


void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.homeView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}