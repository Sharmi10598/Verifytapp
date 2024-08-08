// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Model/AuditModel/AuditByDeviceModel.dart';
import '../../Model/GetTenentIdmodel/TenentIdModel.dart';
import '../../Model/SyncExternalStockApi/SyncExternalStockApiModel.dart';

class TenantIdApi {
  // static String whsCode = '';

  static Future<GetUrlModel> getData(String tenentid) async {
    int resCode = 500;

    try {
      log('ConstantValues.token::${ConstantValues.token}');
      final response = await http.get(
        Uri.parse(
            "http://91.203.133.224:92/api/WareSmart/v1/GetCustomerUrl?TenantId=$tenentid"),
        headers: {
          'accept': '/',
        },
      );

      log("TenantId sts:::" "${response.statusCode.toString()}");
      log("TenantId Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return GetUrlModel.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("TenantId: error");
        return GetUrlModel.issue(
          response.statusCode,
          response.body,
        );
      } else {
        log("TenantId::" + json.decode(response.body).toString());
        return GetUrlModel.issue(
          response.statusCode,
          response.body,
        );
      }
    } catch (e) {
      log("TenantId Catch:" + e.toString());
      return GetUrlModel.issue(
        resCode,
        "$e",
      );
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
