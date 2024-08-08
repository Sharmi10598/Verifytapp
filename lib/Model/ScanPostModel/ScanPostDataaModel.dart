// [
//   {
// "auditid": 2,
// "whscode": "W001",
// "bincode": "B00324",
// "itemcode": "001@",
// "serialbatch": "Test",
// "quantity": 10,
// "stockstatus": "open",
// "notes": "text",
// "devicecode": "DC0912",
// "scandatetime": "2024-07-21T06:18:28.120Z",
// "ismanual": 1,
// "templateid": 1,
// "scanguid": "C664B016-FADE-44BE-BBC7-76D08F824CA2",
//     "checklist": [
//       {
// "auditid": 2,
// "checklistcode": "Check1",
// "checklistvalue": "1",
// "attachurl": "string"
//       }
//     ] }]

import '../../DBModel/ScanDataPostDB/ScandatapostTDB.dart';
import '../../DBModel/ScanDataPostDB/checklistDBB.dart';

class ScanDataPost {
  int? auditid;
  String? whscode;
  String? bincode;
  String? itemCode;
  String? serialbatch;
  double? quantity;
  String? stockstatus;
  String? notes;
  String? devicecode;
  String? scandatetime;
  int? ismanual;
  int? templateid;
  String? scanguid;
  List<DispListData> checklist;
  ScanDataPost(
      {this.auditid,
      this.bincode,
      this.scanguid,
      this.devicecode,
      required this.checklist,
      this.ismanual,
      this.itemCode,
      this.notes,
      this.quantity,
      this.scandatetime,
      this.serialbatch,
      this.stockstatus,
      this.templateid,
      this.whscode});

  // Map<String, dynamic> tojson() {
  //   Map<String, dynamic> data = <String, dynamic>{
  //     "AddressName": AddressName,
  //     "Street": Street,
  //     "ZipCode": ZipCode,
  //     "City": City,
  //     "Country": Country,
  //     "State": State,
  //     "AddressType": AddressType,
  //     "AddressName2": AddressName2,
  //     "AddressName3": AddressName3,
  //   };
  //   return data;
  // }
  Map<String, dynamic> tojson() {
    Map<String, dynamic> data = <String, dynamic>{
      "auditid": auditid,
      "whscode": whscode,
      "bincode": bincode,
      "itemcode": itemCode,
      "serialbatch": serialbatch,
      "quantity": quantity,
      "stockstatus": stockstatus,
      "notes": notes,
      "devicecode": devicecode,
      "scandatetime": scandatetime,
      "ismanual": ismanual,
      "templateid": templateid,
      "scanguid": scanguid,
      "checklist": checklist.map((e) => e.toMap()).toList(),
    };
    return data;
  }

  Map<String, Object?> toMap() => {
        ScanPostTableDBT.auditid: auditid,
        ScanPostTableDBT.bincode: bincode,
        ScanPostTableDBT.devicecode: devicecode,
        ScanPostTableDBT.ismanual: ismanual,
        ScanPostTableDBT.itemCode: itemCode,
        ScanPostTableDBT.quantity: quantity,
        ScanPostTableDBT.notes: notes,
        ScanPostTableDBT.scandatetime: scandatetime,
        ScanPostTableDBT.serialbatch: serialbatch,
        ScanPostTableDBT.stockstatus: stockstatus,
        ScanPostTableDBT.templateid: templateid,
        ScanPostTableDBT.whscode: whscode,
        ScanPostTableDBT.scanguid: scanguid,
      };
}

class DispListData {
  int? auditid;
  String? checklistcode;
  String? checklistvalue;
  String? attachurl;
  DispListData(
      {required this.attachurl,
      required this.auditid,
      required this.checklistcode,
      required this.checklistvalue});

  Map<String, dynamic> tojson2() {
    Map<String, dynamic> data = <String, dynamic>{
      "auditid": auditid,
      "checklistcode": checklistcode,
      "checklistvalue": checklistvalue,
      "attachurl": attachurl
    };
    return data;
  }

  Map<String, Object?> toMap() => {
        CheckListDBT.attachurl: attachurl,
        CheckListDBT.auditid: auditid,
        CheckListDBT.checklistcode: checklistcode,
        CheckListDBT.checklistvalue: checklistvalue
      };
}
