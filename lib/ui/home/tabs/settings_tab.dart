import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:warung_makan/core/utils/background_service.dart';
import 'package:warung_makan/core/utils/date_time_helper.dart';

class SettingsTab extends StatefulWidget {
  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  Future<SharedPreferences> _preferences = SharedPreferences.getInstance();
  Future<bool> _isActive;

  @override
  void initState() {
    _isActive = _preferences
        .then((value) => value.getBool('NOTIFICATION_STATUS') ?? false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Material(
          child: ListTile(
            title: Text('Recommend Restaurant'),
            trailing: FutureBuilder<bool>(
              future: _isActive,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();
                  default:
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      return Switch.adaptive(
                        value: snapshot.data,
                        onChanged: _changeNotification,
                      );
                    }
                }
              },
            ),
          ),
        )
      ],
    );
  }

  Future<void> _changeNotification(bool active) async {
    if (active) {
      await AndroidAlarmManager.periodic(
        Duration(hours: 24),
        1,
        BackgroundService.callback,
        startAt: DateTimeHelper.format(),
        exact: true,
        wakeup: true,
      );
    } else {
      await AndroidAlarmManager.cancel(1);
    }

    var prefs = await _preferences;
    setState(() {
      _isActive =
          prefs.setBool('NOTIFICATION_STATUS', active).then((value) => active);
    });
  }
}