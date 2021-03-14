import 'package:flutter/material.dart';

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

  void _changeNotification(bool active) {
    setState(() {
      _isActive = active;
      if (active) {
        print('activate notification');
      } else {
        print('disable notification');
      }
    });
  }
}