// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_new, non_constant_identifier_names, unnecessary_string_interpolations, unused_local_variable, avoid_print

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../Constant/ConstantSapValues.dart';
import '../../Model/AuditModel/AuditActionModel.dart';

class GetAuditActionApi {
  static Future<GetAuditActionModel> getData(
      String actionName, int docEntry) async {
    int resCode = 500;

    try {
      log('http://91.203.133.224:92/api/WareSmart/v1/LoadAuditItems/$docEntry/$actionName');
      final response = await http.get(
        Uri.parse(
            "http://91.203.133.224:92/api/WareSmart/v1/LoadAuditItems/26/$actionName"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": 'bearer ' + ConstantValues.token,
        },
      );

      log("$actionName sts:::" "${response.statusCode.toString()}");
      // log("$actionName Res:::" "${response.body.toString()}");
// {"respType":"success","respCode":"WS100","respDesc":"Operation completed successfully",
//"data":"{ \"Head\":[{\"AuditSchedule_ID\":26,\"Id\":57,\"ItemName\":\"TVC GIFT SS UTENSIL FLASK\",\"ItemCode\":\".SS UTENSIL FLASK\",\"ItemType\":null,\"Brand\":\"TVC\",
//\"Category\":\"SA\",\"SubCategory\":\"GIFT\",\"ItemDescription\":null,\"ModelNo\":null,\"PartCode\":null,\"SKUCode\":null,\"BrandCode\":null,\"ItemGroup\":null,
//\"Specification\":null,\"SizeCapacity\":null,\"Color\":null,\"Clasification\":null,\"UoM\":null,\"Length\":null,\"Width\":null,\"Height\":null,\"Weight\":null,
//\"Volume\":null,\"InwardUoM\":null,\"InwardPackQty\":null,\"OutwardUoM\":null,\"OutwardPackQty\":null,\"isPerishable\":null,\"hasExpiryDate\":null,\"ExpiryDays\":null,
//\"isFragile\":null,\"TaxRate\":null,\"TextNote\":null,\"MovingType\":null,\"ManageBy\":\"B\",\"ImageURL\":null,\"Status\":\"Active\",\"CreatedBy\":1,
//\"CreatedDateTime\":\"2024-07-11T18:37:32.033\",\"UpdatedBy\":\"1\",\"UpdatedDateTime\":null,\"traceid\":\"26344002-95fc-4ee6-a0e2-f6f2cceb0527\"},
      resCode = response.statusCode;
      if (response.statusCode == 200) {
        return GetAuditActionModel.fromJson(
            json.decode(response.body), response.statusCode);
      } else if (response.statusCode >= 400 && response.statusCode <= 410) {
        print("Error: error");
        return GetAuditActionModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      } else {
        log("APIERRor::" + json.decode(response.body).toString());
        return GetAuditActionModel.issue(response.statusCode,
            json.decode(response.body), response.statusCode);
      }
    } catch (e) {
      log(" Action Catch:" + e.toString());
      return GetAuditActionModel.error(resCode, "$e");
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
