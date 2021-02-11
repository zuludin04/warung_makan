import 'dart:async';

import 'package:flutter/material.dart';
import 'package:warung_makan/core/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _splashTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Warung Makan'),
      ),
    );
  }

  _splashTime() {
    var duration = Duration(seconds: 1);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, RestaurantPageRoute);
    });
  }
}