// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Constant/LocalUrl/GetLocalUrl.dart';
import '../../Model/AuditModel/AuditByDeviceModel.dart';
import '../../Model/SyncExternalStockApi/SyncExternalStockApiModel.dart';

class SyncExternalStockApi {
  // static String whsCode = '';

  static Future<StockSnapModel> getData(String whsCode) async {
    int resCode = 500;

    try {
      log(Url.stockSnapApi + "Test/SyncExternalStockSnap?WhscCode=$whsCode");
      final response = await http.get(
        Uri.parse(
            Url.stockSnapApi + "Test/SyncExternalStockSnap?WhscCode=$whsCode"),
        headers: {
          "x-api-key": "JBPb2z+4Vk/Ip73sS+yN1g==",
          // "Authorization": 'bearer ' + ConstantValues.token,
        },
      );

      log("StockSna sts:::" "${response.statusCode.toString()}");
      // log("StockSna Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return StockSnapModel.fromJson(response.body, response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("SnapModel: error");
        return StockSnapModel.issue(response.body, response.statusCode);
      } else {
        log("SnapModel::" + json.decode(response.body).toString());
        return StockSnapModel.issue(
          response.body,
          response.statusCode,
        );
      }
    } catch (e) {
      log("SnapModel Catch:" + e.toString());
      return StockSnapModel.issue(
        "$e",
        resCode,
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
