// { "respType": "Success","respCode": "WS100", "respDesc": "Data Retrived Succesfully",
//"data": "[{\"DocEntry\":4,\"DocNum\":2400014,\"DocDate\":\"2024-07-10T00:00:00\",\"ScheduleName\":\"TEST3\", \"AuditFrom\":\"2024-07-10T00:00:00\",\"AuditTo\":\"2024-07-15T00:00:00\",
//\"Repeat\":true,\"RepeatFrequency\":\"Monthly\",\"RepeatDay\":6,\"StartDate\":\"2024-04-10T00:00:00\",\"EndDate\":\"2025-08-10T00:00:00\",\"WhsCode\":\"W001\",\"BlockTrans\":true,
//\"Remarks\":\"Test\",\"Status\":\"Open\",\"CreatedBy\":1,\"CreatedDatetime\":\"2024-07-10T16:50:29.943\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,
//\"traceid\":\"6432a2c8-627e-48d5-b6f4-209b1281e6d6\"}]" }
import 'dart:convert';
import 'dart:developer';

import 'package:get/get_connect/http/src/request/request.dart';
import 'package:verifytapp/DBModel/GetAuditByDevice/GetAuditByDeviceDBModel.dart';

class GetAuditModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<GetAuditDataModel> auditData;
  String exception;
  GetAuditModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.auditData,
      required this.stsCode});
  factory GetAuditModel.fromJson(Map<String, dynamic> json, int statuzCode) {
    // Map<String, dynamic>
    if (json['data'] != null) {
      // log('message::${jsonDecode(json['data'])}');
      var list = jsonDecode(json['data']) as List;
      List<GetAuditDataModel> dataList =
          list.map((data) => GetAuditDataModel.fromJson(data)).toList();
      log('Test message11');

      return GetAuditModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          auditData: dataList);
    } else {
      return GetAuditModel(
          exception: '',
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          auditData: []);
    }
  }

  factory GetAuditModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return GetAuditModel(
        exception: exp['respDesc'],
        respCode: exp['respCode'],
        respDesc: exp['respDesc'],
        respType: exp['respType'],
        stsCode: statuzCode,
        auditData: []
        // data: null
        );
  }

  factory GetAuditModel.issue2(
    int rescode,
    String exp,
  ) {
    return GetAuditModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        auditData: []
        // data: null
        );
  }

  factory GetAuditModel.error(int rescode, String exp) {
    return GetAuditModel(
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

// {DocEntry:7,DocNum:2400020,DocDate:2024-07-09T00:00:00,ScheduleName:NewSchedule,AuditFrom:2024-07-09T00:00:00,AuditTo:2024-08-09T00:00:00,Repeat:true,RepeatFrequency:weekly,
//RepeatDay:4,StartDate:2024-07-09T00:00:00,EndDate:2024-08-09T00:00:00,WhsCode:W001,BlockTrans:true,Remarks:test,Status:Open,CancelReason:null,CreatedBy:1,
//CreatedDatetime:2024-07-11T17:47:17.21,UpdatedBy:null,UpdatedDatetime:null,traceid:ea3483dc-74e6-4235-acc0-caa7b1046a12,User:U001-John Doe,UnitsScanned:0,
//TotalItems:0,Perc:0.00}

class GetAuditDataModel {
  String user;
  bool? isStarting;
  int unitsScanned;
  double percent;
  int totalItems;
  String remarks;
  String status;
  String createdDatetime;
  int createdBy;
  int updatedBy;
  String updatedDatetime;
  String traceid;
  int docEntry;
  String deviceCode;
  int docNum;
  String docDate;
  String scheduleName;
  String auditFrom;
  String auditTo;
  bool? repeat;
  String repeatFrequency;
  int repeatDay;
  String startDate;
  String endDate;
  String whsCode;
  bool? blockTrans;

  GetAuditDataModel(
      {required this.auditFrom,
      required this.user,
      required this.percent,
      this.isStarting,
      required this.unitsScanned,
      required this.totalItems,
      required this.auditTo,
      required this.deviceCode,
      this.blockTrans,
      required this.createdBy,
      required this.createdDatetime,
      required this.docDate,
      required this.docEntry,
      required this.docNum,
      required this.endDate,
      required this.remarks,
      this.repeat,
      required this.repeatDay,
      required this.repeatFrequency,
      required this.scheduleName,
      required this.startDate,
      required this.status,
      required this.traceid,
      required this.updatedBy,
      required this.updatedDatetime,
      required this.whsCode});
//  {DocEntry:7,DocNum:2400020,DocDate:2024-07-09T00:00:00,ScheduleName:NewSchedule,AuditFrom:2024-07-09T00:00:00,AuditTo:2024-08-09T00:00:00,Repeat:true,RepeatFrequency:weekly,
//RepeatDay:4,StartDate:2024-07-09T00:00:00,EndDate:2024-08-09T00:00:00,WhsCode:W001,BlockTrans:true,Remarks:test,Status:Open,CancelReason:null,CreatedBy:1,
//CreatedDatetime:2024-07-11T17:47:17.21,UpdatedBy:null,UpdatedDatetime:null,traceid:ea3483dc-74e6-4235-acc0-caa7b1046a12,User:U001-John Doe,UnitsScanned:0,TotalItems:0,
//Perc:0.00}
  factory GetAuditDataModel.fromJson(Map<String, dynamic> json) {
    return GetAuditDataModel(
      auditFrom: json['AuditFrom'] ?? '',
      deviceCode: json['DeviceCode'] ?? '',
      unitsScanned: json['UnitsScanned'] ?? '',
      totalItems: json['TotalItems'] ?? 0,
      percent: json['Perc'] ?? 0,
      auditTo: json['AuditTo'] ?? '',
      blockTrans: json['BlockTrans'],
      createdBy: json['CreatedBy'],
      createdDatetime: json['CreatedDatetime'] ?? '',
      docDate: json['DocDate'] ?? '',
      docEntry: json['DocEntry'],
      docNum: json['DocNum'],
      endDate: json['EndDate'] ?? '',
      remarks: json['Remarks'] ?? '',
      repeat: json['Repeat'],
      repeatDay: json['RepeatDay'],
      repeatFrequency: json['RepeatFrequency'] ?? '',
      scheduleName: json['ScheduleName'] ?? '',
      startDate: json['StartDate'] ?? '',
      status: json['Status'] ?? '',
      traceid: json['traceid'] ?? '',
      updatedBy: json['UpdatedBy'] ?? 0,
      updatedDatetime: json['UpdatedDatetime'] ?? '',
      whsCode: json['WhsCode'] ?? '',
      user: json['User'] ?? '',
    );
  }
  Map<String, Object?> toMap() => {
        GetAuditDataModelDB.docEntry: docEntry,
        GetAuditDataModelDB.docNum: docNum,
        GetAuditDataModelDB.docDate: docDate,
        GetAuditDataModelDB.user: user,
        GetAuditDataModelDB.auditFrom: auditFrom,
        GetAuditDataModelDB.auditTo: auditTo,
        GetAuditDataModelDB.blockTrans: blockTrans,
        GetAuditDataModelDB.createdBy: createdBy,
        GetAuditDataModelDB.createdDatetime: createdDatetime,
        GetAuditDataModelDB.endDate: endDate,
        GetAuditDataModelDB.percent: percent,
        GetAuditDataModelDB.remarks: remarks,
        GetAuditDataModelDB.repeat: repeat,
        GetAuditDataModelDB.repeatFrequency: repeatFrequency,
        GetAuditDataModelDB.scheduleName: scheduleName,
        GetAuditDataModelDB.startDate: startDate,
        GetAuditDataModelDB.status: status,
        GetAuditDataModelDB.unitsScanned: unitsScanned,
        GetAuditDataModelDB.totalItems: totalItems,
        GetAuditDataModelDB.traceid: traceid,
        GetAuditDataModelDB.updatedBy: updatedBy,
        GetAuditDataModelDB.updatedDatetime: updatedDatetime,
        GetAuditDataModelDB.whsCode: whsCode,
      };
}

class FetchAuditDetais {
  String? remarks;
  String? status;
  String? createdDatetime;
  int? createdBy;
  String? deviceCode;
  int? updatedBy;
  String? updatedDatetime;
  String? traceid;
  int? docEntry;
  int? docNum;
  String? docDate;
  String? scheduleName;
  String? auditFrom;
  String? auditTo;
  bool? repeat;
  String? repeatFrequency;
  int? repeatDay;
  String? startDate;
  bool? isStarting;
  String? endDate;
  String? whsCode;
  String? user;
  int? unitsScanned;
  int? totalItems;
  double? percent;
  bool? blockTrans;

  FetchAuditDetais(
      {this.auditFrom,
      this.auditTo,
      this.percent,
      this.unitsScanned,
      this.totalItems,
      this.user,
      this.blockTrans,
      this.isStarting,
      this.createdBy,
      this.deviceCode,
      this.createdDatetime,
      this.docDate,
      this.docEntry,
      this.docNum,
      this.endDate,
      this.remarks,
      this.repeat,
      this.repeatDay,
      this.repeatFrequency,
      this.scheduleName,
      this.startDate,
      this.status,
      this.traceid,
      this.updatedBy,
      this.updatedDatetime,
      this.whsCode});
}
