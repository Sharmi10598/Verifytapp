import 'dart:convert';
import 'dart:developer';

class AuditScannLogModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<AuditScannLogDataModel> scannData;
  String exception;
  AuditScannLogModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.scannData,
      required this.stsCode});
  factory AuditScannLogModel.fromJson(
      Map<String, dynamic> json, int statuzCode) {
    // Map<String, dynamic>
    if (json['data'] != null) {
      // log('message::${jsonDecode(json['data'])}');
      var list = jsonDecode(json['data']) as List;
      // List<AuditScannLogDataModel> dataList =
      //     list.map((data) => AuditScannLogDataModel.fromJson(data)).toList();
      log('Test message11');

      return AuditScannLogModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          scannData: json['data']);
    } else {
      return AuditScannLogModel(
          exception: json['respDesc'],
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          scannData: []);
    }
  }

  factory AuditScannLogModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return AuditScannLogModel(
        exception: exp['respDesc'],
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: statuzCode,
        scannData: []
        // data: null
        );
  }

  factory AuditScannLogModel.issue2(
    int rescode,
    String exp,
  ) {
    return AuditScannLogModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        scannData: []
        // data: null
        );
  }

  factory AuditScannLogModel.error(int rescode, String exp) {
    return AuditScannLogModel(
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

class AuditScannLogDataModel {}
