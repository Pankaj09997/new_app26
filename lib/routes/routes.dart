import 'package:flutter/material.dart';
import 'package:new_app26/data/data.dart';
import 'package:new_app26/homepage.dart';
import 'package:new_app26/widgets/cart.dart';
import 'package:new_app26/widgets/catalog%20header/cataloglist.dart';
import 'package:new_app26/widgets/detail.dart';
import 'package:new_app26/widgets/settings.dart';

import '../login.dart';

class RouteGenerators {
  static get catalog => null;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => loginpage());
        break;
      case '/homepage':
        return MaterialPageRoute(builder: (_) => homepage());
        break;
        case '/detail':
        return MaterialPageRoute(builder: (context) => detailpage(catalog: catalog));
        break;
        case '/cart':
        return MaterialPageRoute(builder: (_) => cart());
        break;
         case '/settings':
        return MaterialPageRoute(builder: (_) => settingspage());
        break;

      default:
        return error();
    }
  }
  static Route<dynamic> error()
  {
   return MaterialPageRoute(builder:(_){
    return Scaffold(
      appBar: AppBar(title: Text("Error!")),
    );
   });
  }
}
