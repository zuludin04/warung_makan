import 'dart:isolate';
import 'dart:ui';

import 'package:warung_makan/core/utils/notification_helper.dart';
import 'package:warung_makan/data/source/remote/restauran_api_provider.dart';
import 'package:warung_makan/main.dart';

final ReceivePort port = ReceivePort();

class BackgroundService {
  static BackgroundService _service;
  static String _isolateName = 'isolate';
  static SendPort _uiSendPort;

  BackgroundService._createObject();

  factory BackgroundService() {
    if (_service == null) {
      _service = BackgroundService._createObject();
    }
    return _service;
  }

  void initializeIsolate() {
    IsolateNameServer.registerPortWithName(
      port.sendPort,
      _isolateName,
    );
  }

  static Future<void> callback() async {
    final NotificationHelper _notificationHelper = NotificationHelper();
    var restaurants = RestaurantApiProvider();
    var result = await restaurants.loadRestaurantList();
    await _notificationHelper.showNotification(
        flutterLocalNotificationsPlugin, result);

    _uiSendPort ??= IsolateNameServer.lookupPortByName(_isolateName);
    _uiSendPort?.send(null);
  }

  Future<void> someTask() async {
    print('Execute some process');
  }
}
