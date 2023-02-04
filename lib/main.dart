import 'package:flutter/material.dart';
import 'package:new_app26/homepage.dart';
import 'package:new_app26/login.dart';
import 'package:new_app26/routes/routes.dart';
import 'package:new_app26/store/store.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: Mystore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      // home: loginpage(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerators.generateRoute,
    );
  }
}
