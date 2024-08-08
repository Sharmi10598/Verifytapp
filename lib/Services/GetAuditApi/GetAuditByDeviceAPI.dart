// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Constant/LocalUrl/GetLocalUrl.dart';
import '../../Model/AuditModel/AuditByDeviceModel.dart';

class GetAuditByDeviceApi {
  static Future<GetAuditModel> getData(String deviceID) async {
    int resCode = 500;

    try {
      log('deviceID.deviceID::${deviceID}');
      log("ConstantValues.token::${ConstantValues.token}");
      final response = await http.get(
        Uri.parse(Url.queryApi +
            "WareSmart/v1/GetAuditByDevice?DeviceCode=$deviceID"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": 'bearer ' + ConstantValues.token,
        },
      );

      log("GetAudit sts:::" "${response.statusCode.toString()}");
      log("AuditByDevice Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return GetAuditModel.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return GetAuditModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return GetAuditModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log("Catch:" + e.toString());
      return GetAuditModel.error(resCode, "$e");
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
