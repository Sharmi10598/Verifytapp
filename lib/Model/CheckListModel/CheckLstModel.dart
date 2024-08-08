// {
//     "respType": "Success",
//     "respCode": "WS100",
//     "respDesc": "Data Retrieved Successfully",
//     "data": "[{\"DocEntry\":2,\"TemplateName\":\"Sales Return\",\"DocEntry1\":2,\"ChecklistCode\":\"C1\",\"ChecklistName\":\"Is Product Good\",
//\"ListValue\":\"yes,no\",\"AcceptAttach\":false,\"AcceptMultiValue\":false,\"isMandaory\":true,\"CreatedBy\":1,\"CreatedDatetime\":\"2024-07-24T00:00:00\",
//\"UpdatedBy\":null,\"UpdatedDatetime\":null,\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"},{\"DocEntry\":2,\"TemplateName\":\"Sales Return\",
//\"DocEntry1\":2,\"ChecklistCode\":\"C2\",\"ChecklistName\":\"Accessories available ?\",\"ListValue\":\"yes,no\",\"AcceptAttach\":false,\"AcceptMultiValue\":false,
//\"isMandaory\":true,\"CreatedBy\":1,\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,
//\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"},{\"DocEntry\":2,\"TemplateName\":\"Sales Return\",\"DocEntry1\":2,\"ChecklistCode\":\"C3\",
//\"ChecklistName\":\"Box Opened ?\",\"ListValue\":\"Yes,No\",\"AcceptAttach\":false,\"AcceptMultiValue\":false,\"isMandaory\":true,\"CreatedBy\":1,
//\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"},
//{\"DocEntry\":2,\"TemplateName\":\"Sales Return\",\"DocEntry1\":2,\"ChecklistCode\":\"C4\",\"ChecklistName\":\"Repacked Properly ?\",\"ListValue\":\"Yes,No\",
//\"AcceptAttach\":false,\"AcceptMultiValue\":false,\"isMandaory\":true,\"CreatedBy\":1,\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,
//\"UpdatedDatetime\":null,\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"},{\"DocEntry\":2,\"TemplateName\":\"Sales Return\",\"DocEntry1\":2,\"ChecklistCode\":\"C5\",
//\"ChecklistName\":\"Product Picture\",\"ListValue\":null,\"AcceptAttach\":true,\"AcceptMultiValue\":true,\"isMandaory\":true,\"CreatedBy\":1,
//\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"},
//{\"DocEntry\":3,\"TemplateName\":\"Furniture\",\"DocEntry1\":3,\"ChecklistCode\":\"C6\",\"ChecklistName\":\"Any Dents\",\"ListValue\":\"Yes,No\",
//\"AcceptAttach\":false,\"AcceptMultiValue\":false,\"isMandaory\":true,\"CreatedBy\":1,\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,
//\"UpdatedDatetime\":null,\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"},{\"DocEntry\":3,\"TemplateName\":\"Furniture\",\"DocEntry1\":3,\"ChecklistCode\":\"C7\",
//\"ChecklistName\":\"Any Scratches\",\"ListValue\":\"Yes,No\",\"AcceptAttach\":false,\"AcceptMultiValue\":false,\"isMandaory\":true,\"CreatedBy\":1,
//\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"},
//{\"DocEntry\":3,\"TemplateName\":\"Furniture\",\"DocEntry1\":3,\"ChecklistCode\":\"C8\",\"ChecklistName\":\"Photo\",\"ListValue\":null,\"AcceptAttach\":true,
//\"AcceptMultiValue\":true,\"isMandaory\":true,\"CreatedBy\":1,\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,
//\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"}]"
// }

import 'dart:convert';
import 'dart:developer';

import '../../DBModel/CheckListDB/CheckListTDB.dart';

class GetCheckListnModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  CheckListData? listData;

  String exception;
  GetCheckListnModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.listData,
      required this.stsCode});
  factory GetCheckListnModel.fromJson(dynamic json, int statuzCode) {
    // Map<String, dynamic>
    if (statuzCode == 200) {
      log('message::XXXXXXXXXXXXXXX111');
      // var list = jsonDecode(json['data']) as List;
      // List<CheckListData> dataList =
      //     list.map((data) => CheckListData.fromJson(data)).toList();

      return GetCheckListnModel(
        exception: '',
        respCode: json['respCode'],
        respDesc: json['respDesc'],
        respType: json['respType'],
        stsCode: statuzCode,
        listData: CheckListData.fromJson(jsonDecode(json['data'])),
        // GetAuditActionMainDataModel.fromJson(jsonDecode(json['data'])
        // ),
      );
      // GetAuditActionMainDataModel.fromJson(json['data']));
    } else {
      return GetCheckListnModel(
          exception: json['respDesc'],
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          listData: null);
    }
  }

  factory GetCheckListnModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return GetCheckListnModel(
        exception: exp['respDesc'],
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: statuzCode,
        listData: null
        // data: null
        );
  }

  factory GetCheckListnModel.issue2(
    int rescode,
    String exp,
  ) {
    return GetCheckListnModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        listData: null
        // data: null
        );
  }

  factory GetCheckListnModel.error(int rescode, String exp) {
    return GetCheckListnModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        listData: null
        // data: null
        );
  }
}

class CheckListData {
  List<CheckListHeader> headerData;
  List<CheckListLineData> lineData;
  CheckListData({required this.headerData, required this.lineData});
  factory CheckListData.fromJson(
    Map<String, dynamic> jsons,
  ) {
    ("message::XXXXXXXXXXXXXXX2222");
    var headerList = jsons['Head'] as List;
    List<CheckListHeader> headerDataList =
        headerList.map((data) => CheckListHeader.fromJson(data)).toList();
    var lineList = jsons['Line'] as List;
    List<CheckListLineData> lineDataList =
        lineList.map((data) => CheckListLineData.fromJson(data)).toList();
    return CheckListData(headerData: headerDataList, lineData: lineDataList);
  }
}

class CheckListHeader {
  int docEntry;
  String whsCode;
  String zoneCode;
  String rackCode;
  String areaCode;
  String binCode;
  String itemCode;
  String category;
  String brand;
  String subCategory;
  String specification;
  String sizeCapacity;
  bool hasExpiryDate;
  int isFragile;
  String manageBy;
  String itemStatus;
  String serialBatch;
  String disposition;
  bool whileOffline;
  int forAgesAbove;
  bool serialBatchManualTyped;
  bool previousDispute;
  int checklistTemplate;
  bool status;
  int createdBy;
  String createdDateTime;
  String updatedBy;
  String updatedDateTime;
  String traceid;

  CheckListHeader(
      {required this.areaCode,
      required this.binCode,
      required this.brand,
      required this.category,
      required this.rackCode,
      required this.createdBy,
      required this.createdDateTime,
      required this.checklistTemplate,
      required this.disposition,
      required this.docEntry,
      required this.forAgesAbove,
      required this.hasExpiryDate,
      required this.isFragile,
      required this.itemCode,
      required this.itemStatus,
      required this.manageBy,
      required this.previousDispute,
      required this.serialBatch,
      required this.serialBatchManualTyped,
      required this.sizeCapacity,
      required this.specification,
      required this.status,
      required this.subCategory,
      required this.traceid,
      required this.updatedBy,
      required this.updatedDateTime,
      required this.whileOffline,
      required this.whsCode,
      required this.zoneCode});
// [{\"DocEntry\":1,\"WhsCode\":\"W001\",\"AreaCode\":\"A001\",\"ZoneCode\":\"Z001\",\"RackCode\":\"R001\",\"BinCode\":\"B001\",\"ItemCode\":\"A120D\",\"Brand\":\"LG\",
// \"Category\":\"LED\",\"SubCategory\":\"OLED\",\"Specification\":\"NO\",\"SizeCapacity\":\"NO\",\"hasExpiryDate\":true,\"isFragile\":1,\"ManageBy\":\"S\",
// \"ItemStatus\":\"Active\",\"SerialBatch\":\"S0000\",\"Disposition\":\"1\",\"WhileOffline\":true,\"ForAgesAbove\":300,\"SerialBatch_ManualTyped\":true,
// \"Previous_Dispute\":true,\"Checklist_Template\":1,\"Status\":true,\"CreatedBy\":1,\"CreatedDateTime\":\"2024-07-21T00:00:00\",\"UpdatedBy\":\"1\",
// \"UpdatedDateTime\":\"2024-07-21T00:00:00\",\"traceid\":\"c87a8466-d7e8-4259-9dc8-6a03be8f444c\"}]

  factory CheckListHeader.fromJson(Map<String, dynamic> json) {
    return CheckListHeader(
      areaCode: json['AreaCode'].toString() ?? '',
      rackCode: json['RackCode'].toString() ?? '',
      binCode: json['BinCode'] ?? '',
      brand: json['Brand'] ?? '',
      category: json['Category'] ?? '',
      createdBy: json['CreatedBy'] ?? 0,
      createdDateTime: json['CreatedDateTime'] ?? '',
      checklistTemplate: json['Checklist_Template'] ?? 0,
      disposition: json['Disposition'] ?? '',
      docEntry: json['DocEntry'] ?? 0,
      forAgesAbove: json['ForAgesAbove'] ?? 0,
      hasExpiryDate: json['hasExpiryDate'] ?? false,
      isFragile: json['isFragile'] ?? 0,
      itemCode: json['ItemCode'] ?? '',
      itemStatus: json['ItemStatus'] ?? '',
      manageBy: json['ManageBy'] ?? '',
      previousDispute: json['Previous_Dispute'] ?? false,
      serialBatch: json['SerialBatch'] ?? '',
      serialBatchManualTyped: json['SerialBatch_ManualTyped'] ?? false,
      sizeCapacity: json['SizeCapacity'] ?? '',
      specification: json['Specification'] ?? '',
      status: json['Status'] ?? false,
      subCategory: json['SubCategory'] ?? '',
      traceid: json['traceid'] ?? '',
      updatedBy: json['UpdatedBy'] ?? '',
      updatedDateTime: json['UpdatedDateTime'] ?? '',
      whileOffline: json['WhileOffline'] ?? false,
      whsCode: json['WhsCode'] ?? '',
      zoneCode: json['ZoneCode'] ?? '',
    );
  }
}

class CheckListLineData {
  int? docEntry;
  int? docEntry1;
  String? isselectlistval;
  String? templateName;
  String? checklistCode;
  String? checklistName;
  String? listValue;
  bool? acceptAttach;
  bool? acceptMultiValue;
  bool? isMandaory;
  int? createdBy;
  String? createdDatetime;
  String? updatedBy;
  String? updatedDatetime;
  String? traceid;
  CheckListLineData(
      {required this.checklistName,
      this.isselectlistval,
      required this.acceptAttach,
      required this.acceptMultiValue,
      required this.checklistCode,
      required this.createdBy,
      required this.createdDatetime,
      required this.docEntry,
      required this.docEntry1,
      required this.isMandaory,
      required this.listValue,
      required this.templateName,
      required this.traceid,
      required this.updatedBy,
      required this.updatedDatetime});
// {\"DocEntry\":3,\"TemplateName\":\"Furniture\",\"DocEntry1\":3,\"ChecklistCode\":\"C8\",\"ChecklistName\":\"Photo\",\"ListValue\":null,\"AcceptAttach\":true,
// \"AcceptMultiValue\":true,\"isMandaory\":true,\"CreatedBy\":1,\"CreatedDatetime\":\"2024-07-24T00:00:00\",\"UpdatedBy\":null,
// \"UpdatedDatetime\":null,\"traceid\":\"ff034a19-c155-4f56-8568-902514081e79\"}
  factory CheckListLineData.fromJson(Map<String, dynamic> json) {
    return CheckListLineData(
      checklistName: json['ChecklistName'].toString() ?? '',
      acceptAttach: json['AcceptAttach'] ?? false,
      acceptMultiValue: json['AcceptMultiValue'] ?? false,
      checklistCode: json['ChecklistCode'].toString() ?? '',
      createdBy: json['CreatedBy'] ?? 0,
      createdDatetime: json['CreatedDatetime'].toString() ?? '',
      docEntry: json['DocEntry'] ?? 0,
      docEntry1: json['DocEntry1'] ?? 0,
      isMandaory: json['isMandaory'] ?? false,
      listValue: json['ListValue'].toString() ?? '',
      templateName: json['TemplateName'].toString() ?? '',
      traceid: json['traceid'].toString() ?? '',
      updatedBy: json['UpdatedBy'].toString() ?? '',
      updatedDatetime: json['UpdatedDatetime'].toString() ?? '',
    );
  }
  // // Map<String, Object?> toMap() => {
  // //       CheckListDataTable.acceptAttach: acceptAttach,
  // //       CheckListDataTable.acceptMultiValue: acceptMultiValue,
  // //       CheckListDataTable.checklistCode: checklistCode,
  // //       CheckListDataTable.checklistName: checklistName,
  // //       CheckListDataTable.createdBy: createdBy,
  // //       CheckListDataTable.createdDatetime: createdDatetime,
  // //       CheckListDataTable.docEntry: docEntry,
  // //       CheckListDataTable.docEntry1: docEntry1,
  // //       CheckListDataTable.isMandaory: isMandaory,
  // //       CheckListDataTable.listValue: listValue,
  // //       CheckListDataTable.templateName: templateName,
  // //       CheckListDataTable.traceid: traceid,
  // //       CheckListDataTable.updatedBy: updatedBy,
  // //       CheckListDataTable.updatedDatetime: updatedDatetime,
  //     };
}
