// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Model/AuditModel/AuditActionModel.dart';
import '../../Model/BinDetailsModel/BinBlockModel.dart';

class BinLockedAPi {
  static Future<AuditBinBlockModel> getData(BinPostData binpostDat) async {
    int resCode = 500;

    try {
      log('ConstantValues.token::${ConstantValues.token}');
      log('http://91.203.133.224:92/api/WareSmart/v1/PostAuditBinBlock');
      final response = await http.post(
          Uri.parse(
              'http://91.203.133.224:92/api/WareSmart/v1/PostAuditBinBlock'),
          headers: {
            "accept": "/",
            "Authorization": 'bearer ' + ConstantValues.token,
            "content-type": "application/json",
          },
          body: jsonEncode([
            {
              "auditid": 25,
              "bincode": "B011",
              "devicecode": "Dc001",
              "scantime": "2024-07-24T04:55:26.139Z"
            }
          ]));
      log('BinBlock ccc' +
          jsonEncode([
            {
              "auditid": binpostDat.auditid,
              "bincode": binpostDat.bincode,
              "devicecode": binpostDat.devicecode,
              "scantime": binpostDat.scantime
            }
          ]));
      // body: jsonEncode([
      //   {
      //     "auditid": 5,
      //     "bincode": "B00323",
      //     "devicecode": "6578658",
      //     "scantime": "2024-07-20T06:46:27.282Z"
      //   }
      // ]));

      log("BinLocked sts:::" "${response.statusCode.toString()}");
      // log("BinLocked Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return AuditBinBlockModel.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return AuditBinBlockModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return AuditBinBlockModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log("BinLocked Catch:" + e.toString());
      return AuditBinBlockModel.error(resCode, "$e");
    }
  }
}

class BinPostData {
  int? auditid;
  String? bincode;
  String? devicecode;
  String? scantime;
  BinPostData({this.auditid, this.bincode, this.devicecode, this.scantime});
}
// body: jsonEncode({
//             "deviceCode": "${postLoginData.deviceCode}",
//             "userName":"${postLoginData.username}",
//             "password": postLoginData.password.toString().isEmpty || postLoginData.password == null?"null":"${postLoginData.password}",
//             "licenseKey":postLoginData.licenseKey.toString().isEmpty  || postLoginData.licenseKey == null?"null": "${postLoginData.licenseKey}",
//            "fcmToken":"${postLoginData.fcmToken}"
//           }));
