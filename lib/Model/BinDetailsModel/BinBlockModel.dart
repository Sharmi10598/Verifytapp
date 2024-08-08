import 'dart:convert';
import 'dart:developer';

class AuditBinBlockModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<AuditBinBlockDataModel> scannData;
  String exception;
  AuditBinBlockModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.scannData,
      required this.stsCode});
  factory AuditBinBlockModel.fromJson(
      Map<String, dynamic> json, int statuzCode) {
    // Map<String, dynamic>
    if (statuzCode >= 200 && statuzCode <= 210) {
      // List<AuditBinBlockDataModel> dataList = [];
      // if (json['data'] != null) {
      //   log('message::${jsonDecode(json['data'])}');
      //   var list = jsonDecode(json['data']) as List;
      //   List<AuditBinBlockDataModel> dataList =
      //       list.map((data) => AuditBinBlockDataModel.fromJson(data)).toList();
      // }
      return AuditBinBlockModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          scannData: []);
    } else {
      return AuditBinBlockModel(
          exception: json['respDesc'],
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          scannData: []);
    }
  }

  factory AuditBinBlockModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return AuditBinBlockModel(
        exception: exp['respDesc'],
        respCode: exp['respCode'],
        respDesc: exp['respDesc'],
        respType: exp['respType'],
        stsCode: statuzCode,
        scannData: []
        // data: null
        );
  }

  factory AuditBinBlockModel.issue2(
    int rescode,
    String exp,
  ) {
    return AuditBinBlockModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        scannData: []
        // data: null
        );
  }

  factory AuditBinBlockModel.error(int rescode, String exp) {
    return AuditBinBlockModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        scannData: []
        // data: null
        );
  }
}

class AuditBinBlockDataModel {}
