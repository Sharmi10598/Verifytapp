// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Model/AuditModel/RescheduleModel.dart';

class GetAuditRescheduleApi {
  static Future<GetRescheduleModel> getData(
      int docEntry, String rescheduleDate) async {
    int resCode = 500;

    try {
      log('ConstantValues.token::${ConstantValues.token}');
      log('http://91.203.133.224:92/api/WareSmart/v1/PostAuditReshedule/$docEntry/$rescheduleDate');
      final response = await http.post(
        Uri.parse(
            'http://91.203.133.224:92/api/WareSmart/v1/PostAuditReschedule/$docEntry/$rescheduleDate'),
        headers: {
          "accept": "/",
          "Authorization": 'bearer ' + ConstantValues.token,
        },
      );
      log("Reschedule sts:::" "${response.statusCode.toString()}");
      log("Reschedule Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return GetRescheduleModel.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return GetRescheduleModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return GetRescheduleModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log("Catch:" + e.toString());
      return GetRescheduleModel.error(resCode, "$e");
    }
  }
}

// body: jsonEncode({
//             "deviceCode": "${postLoginData.deviceCode}",
//             "userName":"${postLoginData.username}",
//             "password": postLoginData.password.toString().isEmpty || postLoginData.password == null?"null":"${postLoginData.password}",
//             "licenseKey":postLoginData.licenseKey.toString().isEmpty  || postLoginData.licenseKey == null?"null": "${postLoginData.licenseKey}",
//            "fcmToken":"${postLoginData.fcmToken}"
//           }));
