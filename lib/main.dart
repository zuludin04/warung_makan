import 'package:flutter/material.dart';
import 'package:warung_makan/ui/router.dart';
import 'package:warung_makan/utils/constants.dart';
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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: generateRoute,
      initialRoute: RestaurantPageRoute,
    );
  }
}
