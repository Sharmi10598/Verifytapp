// {"respType":"Success","respCode":"WS100","respDesc":"Data Retrived Succesfully",
//"data":"[{\"DocEntry\":6,\"UserCode\":\"U001\",\"User_ID\":1,\"UserName\":\"John Doe\",\"AuditRole\":\"Auditor\"}]"}
import 'dart:convert';
import 'dart:developer';

class GetUserModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<GetUserDataModel> userData;
  String exception;
  GetUserModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.userData,
      required this.stsCode});
  factory GetUserModel.fromJson(Map<String, dynamic> json, int statuzCode) {
    if (json['data'] != null) {
      // log('message::${jsonDecode(json['data'])}');
      var list = jsonDecode(json['data']) as List;
      List<GetUserDataModel> dataList =
          list.map((data) => GetUserDataModel.fromJson(data)).toList();
      // log('Test message11');

      return GetUserModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          userData: dataList);
    } else {
      return GetUserModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          userData: []);
    }
  }

  factory GetUserModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return GetUserModel(
        exception: exp['respDesc'],
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: statuzCode,
        userData: []
        // data: null
        );
  }

  factory GetUserModel.issue2(
    int rescode,
    String exp,
  ) {
    return GetUserModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        userData: []
        // data: null
        );
  }

  factory GetUserModel.error(int rescode, String exp) {
    return GetUserModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        userData: []
        // data: null
        );
  }
}

// /"data":"[{\"DocEntry\":6,\"UserCode\":\"U001\",\"User_ID\":1,\"UserName\":\"John Doe\",\"AuditRole\":\"Auditor\"}
class GetUserDataModel {
  int docentry;
  String userCode;
  int userid;
  String username;
  String auditRole;
  GetUserDataModel(
      {required this.auditRole,
      required this.docentry,
      required this.userCode,
      required this.userid,
      required this.username});

  factory GetUserDataModel.fromJson(Map<String, dynamic> json) {
    return GetUserDataModel(
        auditRole: json['AuditRole'] ?? '',
        docentry: json['DocEntry'],
        userCode: json['UserCode'] ?? '',
        userid: json['User_ID'],
        username: json['UserName'] ?? '');
  }
}
