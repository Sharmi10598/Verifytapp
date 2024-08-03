import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkTimeCheck extends StatefulWidget {
  @override
  _NetworkTimeCheckState createState() => _NetworkTimeCheckState();
}

class _NetworkTimeCheckState extends State<NetworkTimeCheck>
    with WidgetsBindingObserver {
  static const platform = MethodChannel('com.example.verifytapp/time');
  String _networkTimeStatus = 'Unknown';
  Future<void> _openDateTimeSettings() async {
    Get.back();
    try {
      await platform.invokeMethod('openDateTimeSettings');
      // Wait for a short time to allow settings to be applied.
      await Future.delayed(const Duration(seconds: 1));
      // Recheck the status after navigating to settings.
      _checkAutomaticTimeZoneSetting();
    } on PlatformException catch (e) {
      // Handle error if needed
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkAutomaticTimeZoneSetting();
    }
  }

  Future<void> _checkAutomaticTimeZoneSetting() async {
    bool isAutomatic;
    String networkTimeStatuss = '';
    _networkTimeStatus = '';
    try {
      isAutomatic = await platform.invokeMethod('checkNetworkTime');
      networkTimeStatuss = isAutomatic ? 'Enabled' : 'Disabled';
      _networkTimeStatus = networkTimeStatuss;

      if (_networkTimeStatus == 'Enabled') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Automatic time zone is already enabled.'),
            duration: Duration(seconds: 2),
          ),
        );
      } else if (_networkTimeStatus == 'Disabled') {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content:
                    const Text('Enable Network-Provided Time on Your Device '),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                        _openDateTimeSettings();
                      },
                      child: const Text('Ok'))
                ],
              );
            });
      }
    } on PlatformException catch (e) {
      isAutomatic = false;
    }
    // setState(() {
    //   _isAutomaticTimeZoneEnabled = isAutomatic;
    // if (_isAutomaticTimeZoneEnabled) {
    //   // _updateCurrentDateTime();
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text('Automatic time zone is already enabled.'),
    //       duration: Duration(seconds: 2),
    //     ),
    //   );
    // }
    // });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _networkTimeStatus = '';
    _checkAutomaticTimeZoneSetting();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Network-provided time is: $_networkTimeStatus'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Check Network Time'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/intl.dart';

// class TimeZoneSettingsPage extends StatefulWidget {
//   const TimeZoneSettingsPage({super.key});

//   @override
//   _TimeZoneSettingsPageState createState() => _TimeZoneSettingsPageState();
// }

// class _TimeZoneSettingsPageState extends State<TimeZoneSettingsPage>
//     with WidgetsBindingObserver {
//   // static const platform2 =
//   //     MethodChannel('com.example.verifytapp/openDateTimeSettings');
//   // bool _isAutomaticTimeZoneEnabled = false;
//   // String _currentDateTime = '';
//   // String _currentTimeZone = '';

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this);
//     // _checkAutomaticTimeZoneSetting();
//     // _openDateTimeSettings();
//     // _openDateSettings();
//     method();
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     if (state == AppLifecycleState.resumed) {
//       // _checkAutomaticTimeZoneSetting();
//     }
//   }

//   method() async {
//     await NetworkTimeService.isNetworkTimeEnabled();
//     await NetworkTimeService.setNetworkTimeEnabled(true);
//   }

//   static const platform = MethodChannel('com.example.verifytapp/settings');

//   Future<void> _openDateSettings() async {
//     try {
//       bool isTimeEnble = await platform.invokeMethod('isNetworkTimeEnabled');

//       if (isTimeEnble == true) {
//         log('message time is enable');
//       } else {
//         log('message time is disable');
//       }
//     } on PlatformException catch (e) {
//       print("Failed to open date settings: '${e.message}'.");
//     }
//   }
//   // Future<void> _checkAutomaticTimeZoneSetting() async {
//   //   bool isAutomatic;
//   //   try {
//   //     isAutomatic = await platform.invokeMethod('isAutomaticTimeZoneEnabled');
//   //   } on PlatformException catch (e) {
//   //     isAutomatic = false;
//   //   }

//   //   setState(() {
//   //     _isAutomaticTimeZoneEnabled = isAutomatic;
//   //     if (_isAutomaticTimeZoneEnabled) {
//   //       _updateCurrentDateTime();
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         const SnackBar(
//   //           content: Text('Automatic time zone is already enabled.'),
//   //           duration: Duration(seconds: 2),
//   //         ),
//   //       );
//   //     }
//   //   });
//   // }

//   // Future<void> _openDateTimeSettings() async {
//   //   try {
//   //     bool isAutomaticTime;

//   //     isAutomaticTime = await platform2.invokeMethod('openDateTimeSettings');
//   //     // Wait for a short time to allow settings to be applied.
//   //     await Future.delayed(const Duration(seconds: 1));

//   //     if (isAutomaticTime = false) {
//   //       log("time and date isd falese");
//   //     }
//   //     // Recheck the status after navigating to settings.
//   //     // _checkAutomaticTimeZoneSetting();
//   //   } on PlatformException catch (e) {}
//   // }

//   // void _updateCurrentDateTime() {
//   //   final now = DateTime.now();
//   //   final formatter = DateFormat('yyyy-MM-dd – kk:mm');
//   //   final formatted = formatter.format(now);
//   //   final timeZoneName = now.timeZoneName;
//   //   final timeZoneOffset = now.timeZoneOffset;
//   //   final timeZoneString = 'UTC${timeZoneOffset.isNegative ? '-' : '+'}'
//   //       '${timeZoneOffset.inHours.toString().padLeft(2, '0')}:'
//   //       '${(timeZoneOffset.inMinutes % 60).toString().padLeft(2, '0')}';

//   //   setState(() {
//   //     _currentDateTime = formatted;
//   //     _currentTimeZone = '$timeZoneName ($timeZoneString)';
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Time Zone Settings'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 // _openDateTimeSettings();
//               },
//               child: const Text('Enable Automatic Time Zone'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // _openDateTimeSettings();
//               },
//               child: const Text('Enable Automatic Date and Time'),
//             ),
//             // const SizedBox(height: 20),
//             // if (_isAutomaticTimeZoneEnabled) ...[
//             //   Text('Current Date and Time: $_currentDateTime'),
//             //   Text('Current Time Zone: $_currentTimeZone'),
//             // ],
//           ],
//         ),
//       ),
//     );
//   }
// }

// class NetworkTimeService {
//   static const _channel = MethodChannel('com.example.verifytapp/settings');

//   static Future<bool> isNetworkTimeEnabled() async {
//     final bool isEnabled = await _channel.invokeMethod('isNetworkTimeEnabled');
//     return isEnabled;
//   }

//   static Future<void> setNetworkTimeEnabled(bool enabled) async {
//     await _channel.invokeMethod('setNetworkTimeEnabled', enabled);
//   }
// }
