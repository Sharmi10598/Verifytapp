import 'dart:convert';
import 'dart:developer';

class GetRescheduleModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<GeRescheduleDataModel> auditData;
  String exception;
  GetRescheduleModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.auditData,
      required this.stsCode});
  factory GetRescheduleModel.fromJson(
      Map<String, dynamic> json, int statuzCode) {
    // Map<String, dynamic>
    if (statuzCode == 200) {
      // log('message::${jsonDecode(json['data'])}');
      // var list = jsonDecode(json['data']) as List;
      // List<GeRescheduleDataModel> dataList =
      //     list.map((data) => GeRescheduleDataModel.fromJson(data)).toList();
      // log('Test message11');

      return GetRescheduleModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          auditData: []);
    } else {
      return GetRescheduleModel(
          exception: json['respDesc'],
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          auditData: []);
    }
  }

  factory GetRescheduleModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return GetRescheduleModel(
        exception: exp['respDesc'],
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: statuzCode,
        auditData: []
        // data: null
        );
  }

  factory GetRescheduleModel.issue2(
    int rescode,
    String exp,
  ) {
    return GetRescheduleModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        auditData: []
        // data: null
        );
  }

  factory GetRescheduleModel.error(int rescode, String exp) {
    return GetRescheduleModel(
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
