// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../../Constant/ConstantSapValues.dart';
import '../../Constant/LocalUrl/GetLocalUrl.dart';
import '../../Model/LoadCompleteModel.dart';

class LoadCompleteDataApi {
  static Future<LoadComplete> getData(int docEntry) async {
    int resCode = 500;

    try {
      // log('ConstantValues.token::${ConstantValues.token}');
      log(Url.queryApi +
          'WareSmart/v1/PostAuditLoadComplete?AuditId=$docEntry');
      final response = await http.post(
        Uri.parse(Url.queryApi +
            'WareSmart/v1/PostAuditLoadComplete?AuditId=$docEntry'),
        headers: {
          "accept": "/",
          "Authorization": 'bearer ' + ConstantValues.token,
        },
      );

      log("LoadComplete sts:::" "${response.statusCode.toString()}");
      // log("LoadComplete Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return LoadComplete.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return LoadComplete.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log(" LoadComplete APIERRor::" + json.decode(response.body).toString());
        return LoadComplete.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log("LoadComplete Catch:" + e.toString());
      return LoadComplete.error(resCode, "$e");
    }
  }
}
