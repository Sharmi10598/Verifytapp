// {
//     "respType": "Success",
//     "respCode": "WS100",
//     "respDesc": "Data Retrived Succesfully",
//     "data": "[{\"BinCode\":null}]"
// }

import 'dart:convert';
import 'dart:developer';

class GetDefaultBinModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<GetBinData> binData;
  String exception;
  GetDefaultBinModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.binData,
      required this.stsCode});
  factory GetDefaultBinModel.fromJson(
      Map<String, dynamic> json, int statuzCode) {
    // Map<String, dynamic>
    if (json['data'] != null) {
      // log('message::${jsonDecode(json['data'])}');
      var list = jsonDecode(json['data']) as List;
      List<GetBinData> dataList =
          list.map((data) => GetBinData.fromJson(data)).toList();
      // log('Test message11');

      return GetDefaultBinModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          binData: dataList);
    } else {
      return GetDefaultBinModel(
          exception: json['respDesc'],
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          binData: []);
    }
  }

  factory GetDefaultBinModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return GetDefaultBinModel(
        exception: exp['respDesc'],
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: statuzCode,
        binData: []
        // data: null
        );
  }

  factory GetDefaultBinModel.issue2(
    int rescode,
    String exp,
  ) {
    return GetDefaultBinModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        binData: []
        // data: null
        );
  }

  factory GetDefaultBinModel.error(int rescode, String exp) {
    return GetDefaultBinModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        binData: []
        // data: null
        );
  }
}

class GetBinData {
  String binCode;
  GetBinData({
    required this.binCode,
  });
  factory GetBinData.fromJson(Map<String, dynamic> json) {
    return GetBinData(binCode: json['BinCode'] ?? '');
  }
}
