import 'dart:convert';
import 'dart:developer';

class GetCancelModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<GeRescheduleDataModel> auditData;
  String exception;
  GetCancelModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.auditData,
      required this.stsCode});
  factory GetCancelModel.fromJson(Map<String, dynamic> json, int statuzCode) {
    // Map<String, dynamic>
    if (json['data'] != null) {
      // log('message::${jsonDecode(json['data'])}');
      // var list = jsonDecode(json['data']) as List;
      // List<GeRescheduleDataModel> dataList =
      //     list.map((data) => GeRescheduleDataModel.fromJson(data)).toList();
      // log('Test message11');

      return GetCancelModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          auditData: []);
    } else {
      return GetCancelModel(
          exception: json['respDesc'],
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          auditData: []);
    }
  }

  factory GetCancelModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return GetCancelModel(
        exception: exp['respDesc'],
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: statuzCode,
        auditData: []
        // data: null
        );
  }

  factory GetCancelModel.issue2(
    int rescode,
    String exp,
  ) {
    return GetCancelModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        auditData: []
        // data: null
        );
  }

  factory GetCancelModel.error(int rescode, String exp) {
    return GetCancelModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        auditData: []
        // data: null
        );
  }
}

class GeRescheduleDataModel {}
