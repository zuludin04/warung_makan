import 'package:flutter/material.dart';
import 'package:warung_makan/core/utils/constants.dart';
import 'package:warung_makan/ui/router.dart';
import 'package:warung_makan/di/injector.dart' as inject;

Future<void> main() async {
  await inject.inject();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Warung Makan',
      theme: ThemeData(
        primaryColorDark: Color(0xFFF8AC83),
        primaryColorLight: Color(0xfffef0e8),
        primaryColor: Color(0xFFf25b0a),
        accentColor: Color(0xfff1ac18),
        dividerColor: Color(0xffbdbdbd),
        fontFamily: 'Raleway',
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: generateRoute,
      initialRoute: RestaurantPageRoute,
    );
  }
}
