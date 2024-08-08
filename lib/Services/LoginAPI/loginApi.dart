// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/Configuration.dart';
import '../../Constant/ConstantSapValues.dart';
import '../../Constant/Encripted.dart';
import '../../Constant/Helper.dart';
import '../../Constant/LocalUrl/GetLocalUrl.dart';
import '../../Model/LoginModel/loginmodel.dart';

//QP1A.190711.020
class LoginAPi {
  static Future<LoginModel> getData(PostLoginData postLoginData) async {
    int resCode = 500;

    try {
      log(Url.queryApi + "WareSmart/v1/MobileLogin");
      final response = await http.post(
          // http://216.48.189.191:4041/api/WareSmart/v1/MobileLogin
          Uri.parse(Url.queryApi + "WareSmart/v1/MobileLogin"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            "tenantId": "${postLoginData.tenentID}", //WareSmart
            "userCode": "${postLoginData.username}", //U003
            "password": "${postLoginData.password}", //SINE90
            "deviceCode": "${postLoginData.deviceCode}",
            // "${postLoginData.deviceCode}", //HGAFSH88798 or YUTYY7575775
            "devicename": "${postLoginData.devicename}", //SAMSUNG
            "fcmToken": "${postLoginData.fcmToken}",
            "ip": "",
            "ssid": "",
            "lattitude": 0,
            "longitude": 0
          }));
      log("Login Req Body::" +
          jsonEncode({
            "tenantId": "${postLoginData.tenentID}", //WareSmart
            "userCode": "${postLoginData.username}", //U003
            "password": "${postLoginData.password}", //SINE90
            "deviceCode": "${postLoginData.deviceCode}", //HGAFSH88798
            "devicename": "${postLoginData.devicename}", //SAMSUNG
            "fcmToken": "${postLoginData.fcmToken}",
            "ip": "",
            "ssid": "",
            "lattitude": 0,
            "longitude": 0
          }).toString());

      log("Login sts:::" "${response.statusCode.toString()}");
      log("Login Res::" "${response.body}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        Config config = new Config();
        Map<String, dynamic> tokenNew3 = json.decode(response.body);
        // log("tokenNew3:::" + tokenNew3['data'].toString());
        Map<String, dynamic> jres =
            config.parseJwt("${tokenNew3['data'].toString()}");
        // log("ABCD7333:::" + jres.toString());
        EncryptData Encrupt = new EncryptData();
        String? testData2 = Encrupt.decryption(jres['encryptedClaims']);

        Map<String, dynamic> jres2 = jsonDecode("$testData2");
        log("jres2:::" + jres2.toString());
        Map<String, dynamic> tokenNew = json.decode(response.body);
        // Utils.token = tokenNew['token'];
        HelperFunctions.saveTokenSharedPreference(tokenNew['data']);
        // log("token::::" + tokenNew['data'].toString());
        ConstantValues.token = tokenNew['data'];
        return LoginModel.fromJson(
            jres2, json.decode(response.body), response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return LoginModel.issue(
            response.statusCode, json.decode(response.body));
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return LoginModel.issue(
            response.statusCode, json.decode(response.body));
      }
    } catch (e) {
      log("Catch:" + e.toString());
      return LoginModel.error(resCode, "$e");
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
