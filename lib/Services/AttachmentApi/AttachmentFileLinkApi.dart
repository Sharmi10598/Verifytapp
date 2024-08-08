import 'package:http/http.dart' as http;
import 'dart:developer';
import '../../../Constant/ConstantSapValues.dart';
import '../../Constant/Configuration.dart';
import '../../Constant/LocalUrl/GetLocalUrl.dart';

class OrderAttachmentApiApi {
  static Future<String> getData(String filename) async {
    int resCode = 500;
    try {
      Config config = Config();
      log('filenamefilenameapi::${filename}');
      var url = Uri.parse(Url.queryApi +
          'WareSmart/v1/UploadMedia?filename=${filename.split('/').last}');
      print("url: ${url}");
      var request = http.MultipartRequest('POST', url);
      var file = await http.MultipartFile.fromPath(
        'formFile',
        "${filename}",
        filename: '${filename.split('/').last}',
      );
      log("aaa::" + filename.toString());
      request.files.add(file);
      var headers = {
        'accept': '/',
        'Authorization': 'bearer ${ConstantValues.token}',
        // "Location": '${ConstantValues.EncryptedSetup}',
        // "content-type": "application/json",
      };
      request.headers.addAll(headers);
      var response = await request.send();
      log("Attachment SCode::" + response.statusCode.toString());

      var resposbody = await response.stream.bytesToString();
      log("file ${resposbody.toString()} :::parames::" +
          response.statusCode.toString());
      if (response.statusCode >= 200 && response.statusCode <= 210) {
        // log("palss");

        return resposbody.toString();
      } else {
        return "No Data Found..!!";
      }
    } catch (e) {
      log("eerrorattachments::" + e.toString());
      return "No Data Found..!!";
    }
  }
}
