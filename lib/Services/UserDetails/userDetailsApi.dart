// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Model/AuditModel/AuditActionModel.dart';
import '../../Model/UserDetailsModel/UserDetailsModels.dart';

class GetuserDetailsApi {
  static Future<GetUserModel> getData(int docEntry) async {
    int resCode = 500;

    try {
      log('http://91.203.133.224:92/api/WareSmart/v1/GetAuditUserDetails/6');
      final response = await http.get(
        Uri.parse(
            "http://91.203.133.224:92/api/WareSmart/v1/GetAuditUserDetails/6"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": 'bearer ' + ConstantValues.token,
        },
      );

      log("UserDetails sts:::" "${response.statusCode.toString()}");
      log("UserDetails Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return GetUserModel.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return GetUserModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return GetUserModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log("Catch:" + e.toString());
      return GetUserModel.error(resCode, "$e");
    }
  }
}
