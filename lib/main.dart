import 'package:flutter/material.dart';
import 'package:travelapp/onboarding/page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static Map<int, Color> color = {
    50: Color.fromRGBO(142, 189, 219, .1),
    100: Color.fromRGBO(142, 189, 219, .2),
    200: Color.fromRGBO(142, 189, 219, .3),
    300: Color.fromRGBO(142, 189, 219, .4),
    400: Color.fromRGBO(142, 189, 219, .5),
    500: Color.fromRGBO(142, 189, 219, .6),
    600: Color.fromRGBO(142, 189, 219, .7),
    700: Color.fromRGBO(142, 189, 219, .8),
    800: Color.fromRGBO(142, 189, 219, .9),
    900: Color.fromRGBO(142, 189, 219, 1),
  };

  MaterialColor colorPrimary = MaterialColor(0xff8ebddb, color);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelapp',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: colorPrimary,
      ),
      home: TravelIntro(),
    );
  }
}
