import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationsManger {
  // Singleton instance from Filters Manager class.
  static final instance = NotificationsManger._();
  factory NotificationsManger() => instance;
  NotificationsManger._() {
    // initialize notifications settings
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _initialize();
  }
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  Time _scheduleTime = Time(18, 0, 0);
  void _initialize() async {
    // initialise the plugin.
    var androidSettings = AndroidInitializationSettings('icon');
    var iosSettings = IOSInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
    );

    var initializationSettings =
    InitializationSettings(androidSettings, iosSettings);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  //  scheduleAtParticularTime();
  }
}
