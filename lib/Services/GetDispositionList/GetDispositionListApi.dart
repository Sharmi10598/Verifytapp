// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Model/AuditModel/AuditByDeviceModel.dart';
import '../../Model/DispositionListModel/DispositionModel.dart';

class DispListapi {
  static Future<DispositionDataModel> getData() async {
    int resCode = 500;

    try {
      log('ConstantValues.token::${ConstantValues.token}');
      final response = await http.get(
        Uri.parse(
            "http://91.203.133.224:92/api/WareSmart/v1/GetDispositionList"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": 'bearer ' + ConstantValues.token,
        },
      );

      log("DispList sts:::" "${response.statusCode.toString()}");
      // log("DispList Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return DispositionDataModel.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return DispositionDataModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return DispositionDataModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log("DispList Catch:" + e.toString());
      return DispositionDataModel.error(resCode, "$e");
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
