import 'package:flutter/material.dart';
import 'package:rsvg_app/screens/routes/app_router.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter  = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RSVG',
      theme: ThemeData(
        fontFamily: 'Avenir',
        primarySwatch: Colors.blue, 
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}

