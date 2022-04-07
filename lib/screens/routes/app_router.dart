import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsvg_app/screens/home_screen.dart';
import 'package:rsvg_app/screens/login_screen.dart';


class AppRouter{
  Route onGenerateRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case '/' : 
      return MaterialPageRoute(builder: (_)=>LoginScreen());
        break;
          case '/' : 
      return MaterialPageRoute(builder: (_)=>HomeScreen());
        case '/' : 
      return MaterialPageRoute(builder: (_)=>LoginScreen());
        break;
          case '/' : 
      return MaterialPageRoute(builder: (_)=>LoginScreen());
        break;
          case '/' : 
      return MaterialPageRoute(builder: (_)=>LoginScreen());
        break;
          case '/' : 
      return MaterialPageRoute(builder: (_)=>LoginScreen());
        break;
      default:
    }
    return null;
  }
}