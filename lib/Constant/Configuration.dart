import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:intl/intl.dart';

class Config {
  static Future<String?> getdeviceBrand() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'

      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.name; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.brand; // unique ID on Android
    }
    return null;
  }

  static Future<String?> getdeviceModel() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'

      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.model; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.model; // unique ID on Android
    }
    return null;
  }

  static Future<String?> getdeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'

      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id; // unique ID on Android
    }
    return null;
  }

  Future<bool> haveInterNet() async {
    final result = await Connectivity().checkConnectivity();
    final hasInternet = result != ConnectivityResult.none;
    log('hasInternethasInternet:$hasInternet');
    return hasInternet;
  }

  String currentDatepdf() {
    DateTime now = DateTime.now();

    String currentDateTime =
        "${now.day.toString().padLeft(2, '0')}-${now.month.toString().padLeft(2, '0')}-${now.year.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    print("date: " + currentDateTime.toString());
    return currentDateTime;
  }

  String aligndateforsiteout(String date) {
    String inputDateString = "$date";
    DateTime inputDate = DateFormat("dd-MM-yyyy").parse(inputDateString);

    String formattedDate =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(inputDate);
    log("formattedDate:::" + formattedDate.toString());
    return formattedDate;
  }

  String firstDate() {
    DateTime now = DateTime.now();

    String currentDateTime =
        "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${"1".toString().padLeft(2, '0')}T${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}Z";
    print("date: " + currentDateTime.toString());
    return currentDateTime;
  }

  Map<String, dynamic> parseJwt(String token) {
    // log("String token::$token");

    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = decodeBase64(parts[1]);
    // log("payload"+payload.toString());
    final payloadMap = json.decode(payload);
    log("payloadMap::$payloadMap");
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }

  String decodeBase64(String str) {
    //'-', '+' 62nd char of encoding,  '_', '/' 63rd char of encoding
    String output = str.replaceAll('-', '+').replaceAll('_', '/');
    switch (output.length % 4) {
      // Pad with trailing '='
      case 0: // No pad chars in this case
        break;
      case 2: // Two pad chars
        output += '==';
        break;
      case 3: // One pad char
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }

  String alignDate(String date) {
    // log("message"+date);
    if (date == 'null' || date.isEmpty) {
      return '';
    }
    var dates = DateTime.parse(date);
    // print(
    //     "${dates.day.toString().padLeft(2, '0')}-${dates.month.toString().padLeft(2, '0')}-${dates.year}");
    return "${dates.day.toString().padLeft(2, '0')}-${dates.month.toString().padLeft(2, '0')}-${dates.year}";
  }
}
