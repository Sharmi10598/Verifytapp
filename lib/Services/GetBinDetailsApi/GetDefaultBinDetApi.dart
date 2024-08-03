// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Model/BinDetailsModel/DefaultBinModel.dart';

class GetBinNumApi {
  static Future<GetDefaultBinModel> getData(int docEntry) async {
    int resCode = 500;

    try {
      log('ConstantValues.token::${ConstantValues.token}');
      log('http://91.203.133.224:92/api/WareSmart/v1/GetAuditUserDefaultBin?DocEntry=$docEntry');
      final response = await http.post(
        Uri.parse(
            'http://91.203.133.224:92/api/WareSmart/v1/GetAuditUserDefaultBin?DocEntry=$docEntry'),
        headers: {
          "accept": "/",
          "Authorization": 'bearer ' + ConstantValues.token,
        },
      );
      log("BinDetails sts:::" "${response.statusCode.toString()}");
      log("BinDetails Res:::" "${response.body.toString()}");

      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return GetDefaultBinModel.fromJson(
            json.decode(response.body) as Map<String, Object?>,
            response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return GetDefaultBinModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return GetDefaultBinModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log("BinDetails Catch:" + e.toString());
      return GetDefaultBinModel.error(resCode, "$e");
    }
  }
}
