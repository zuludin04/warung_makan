import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:flutter/material.dart';
import 'package:warung_makan/core/utils/background_service.dart';
import 'package:warung_makan/core/utils/date_time_helper.dart';

class SettingsTab extends StatefulWidget {
  @override
  _SettingsTabState createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Material(
          child: ListTile(
            title: Text('Recommend Restaurant'),
            trailing: Switch.adaptive(value: _isActive, onChanged: _changeNotification),
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
    setState(() => _isActive = active);
  }
}