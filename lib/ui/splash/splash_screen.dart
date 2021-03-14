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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/restaurant.png', height: 64, width: 64),
            SizedBox(height: 10.0),
            Text(
              'Warung Makan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _splashTime() {
    var duration = Duration(seconds: 1);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, HomePageRoute);
    });
  }
}
