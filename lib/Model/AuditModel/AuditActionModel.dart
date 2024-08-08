import 'dart:convert';
import 'dart:developer';
import '../../DBModel/ItemTable/HeaderDataTable.dart';
import '../../DBModel/ItemTable/LineDBTable.dart';

class GetAuditActionModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  // List<GetAuditActionDataModel> auditData;
  GetAuditActionMainDataModel? auditData;
  String exception;
  GetAuditActionModel(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.auditData,
      required this.stsCode});
  factory GetAuditActionModel.fromJson(dynamic json, int statuzCode) {
    // Map<String, dynamic>
    if (statuzCode == 200) {
      // log('message::XXXXXXXXXXXXXXX111');
      // var list = jsonDecode(json['data']) as List;
      // List<GetAuditActionMainDataModel> dataList = list
      //     .map((data) => GetAuditActionMainDataModel.fromJson(data))
      //     .toList();

      return GetAuditActionModel(
        exception: '',
        respCode: json['respCode'],
        respDesc: json['respDesc'],
        respType: json['respType'],
        stsCode: statuzCode,
        auditData:
            GetAuditActionMainDataModel.fromJson(jsonDecode(json['data'])),
      );
      // GetAuditActionMainDataModel.fromJson(json['data']));
    } else {
      return GetAuditActionModel(
          exception: json['respDesc'],
          respCode: json['respCode'],
          respDesc: json['respDesc'],
          respType: json['respType'],
          stsCode: statuzCode,
          auditData: null);
    }
  }

  factory GetAuditActionModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return GetAuditActionModel(
        exception: exp['respDesc'],
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: statuzCode,
        auditData: null
        // data: null
        );
  }

  factory GetAuditActionModel.issue2(
    int rescode,
    String exp,
  ) {
    return GetAuditActionModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        auditData: null
        // data: null
        );
  }

  factory GetAuditActionModel.error(int rescode, String exp) {
    return GetAuditActionModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        auditData: null
        // data: null
        );
  }
}

class GetAuditActionMainDataModel {
  List<HeaderData> auditHeaderData;
  List<LineData> auditLineData;
  List<BinMasterData> binMassterList;

  GetAuditActionMainDataModel(
      {required this.auditHeaderData,
      required this.auditLineData,
      required this.binMassterList});
  factory GetAuditActionMainDataModel.fromJson(
    Map<String, dynamic> jsons,
  ) {
    // log("message::XXXXXXXXXXXXXXX2222");
    var headerList = jsons['Head'] as List;
    List<HeaderData> headerDataList =
        headerList.map((data) => HeaderData.fromJson(data)).toList();
    // log('headerDataListheaderDataList::${headerDataList.length}');
    var list = jsons['Line'] as List;
    List<LineData> lineDataList =
        list.map((data) => LineData.fromJson(data)).toList();

    // log('lineDataListlineDataListlineDataListlineDataList::${lineDataList.length}');
    List<BinMasterData> binDataList = [];
    // log("message::XXXXXXXXXXXXXXX333333333333333:::${jsons['Bin'].toString()}");
    // log("message::XXXXXXXXXXXXXXX44444");

    if (jsons['Bin'].toString() == "[]") {
      // log("message::XXXXXXXXXXXXXXX4555");
    } else {
      // log("message::XXXXXXXXXXXXXXX6666");
      var binList = jsons['Bin'] as List;
      binDataList =
          binList.map((data) => BinMasterData.fromJson(data)).toList();
      // log('binDataListbinDataList::${binDataList[0].auditId}');
    }

    return GetAuditActionMainDataModel(
        binMassterList: binDataList,
        auditHeaderData: headerDataList,
        auditLineData: lineDataList);
  }
}

class HeaderData {
  int auditScheduleID;
  int id;
  String itemName;
  String itemCode;
  String itemType;
  String brand;
  String category;
  String subCategory;
  String itemDescription;
  int itemDisposition;
  String modelNo;
  String partCode;
  String sKUCode;
  String brandCode;
  String itemGroup;
  String specification;
  String sizeCapacity;
  String color;
  String clasification;
  String uoM;
  dynamic length;
  dynamic width;
  dynamic height;
  dynamic weight;
  dynamic volume;
  String inwardUoM;
  dynamic inwardPackQty;
  String outwardUoM;
  dynamic outwardPackQty;
  bool isPerishable;
  bool hasExpiryDate;
  int expiryDays;
  int isFragile;
  double taxRate;
  String textNote;
  int movingType;
  String manageBy;
  String imageURL;
  String status;
  int createdBy;
  String createdDateTime;
  String updatedBy;
  String updatedDateTime;
  int dispID;
  String traceid;
  HeaderData({
    required this.auditScheduleID,
    required this.id,
    required this.itemName,
    required this.itemCode,
    required this.dispID,
    required this.itemType,
    required this.brand,
    required this.category,
    required this.subCategory,
    required this.itemDescription,
    required this.modelNo,
    required this.itemDisposition,
    required this.partCode,
    required this.sKUCode,
    required this.brandCode,
    required this.itemGroup,
    required this.specification,
    required this.sizeCapacity,
    required this.color,
    required this.clasification,
    required this.uoM,
    required this.length,
    required this.width,
    required this.height,
    required this.weight,
    required this.volume,
    required this.inwardUoM,
    required this.inwardPackQty,
    required this.outwardUoM,
    required this.outwardPackQty,
    required this.isPerishable,
    required this.hasExpiryDate,
    required this.expiryDays,
    required this.isFragile,
    required this.taxRate,
    required this.textNote,
    required this.movingType,
    required this.manageBy,
    required this.imageURL,
    required this.status,
    required this.createdBy,
    required this.createdDateTime,
    required this.updatedBy,
    required this.updatedDateTime,
    required this.traceid,
  });

  factory HeaderData.fromJson(Map<String, dynamic> jsons) {
    // log("gggg::" + jsons.length.toString() + "hhh" + jsons['Id'].toString());
    return HeaderData(
      auditScheduleID: jsons['AuditSchedule_ID'],
      id: jsons['Id'],
      itemDisposition: jsons['ItemDisposition'] ?? 0,
      itemName: jsons['ItemName'] ?? '',
      itemCode: jsons['ItemCode'] ?? '',
      itemType: jsons['ItemType'] ?? '',
      brand: jsons['Brand'] ?? '',
      category: jsons['Category'] ?? '',
      subCategory: jsons['SubCategory'] ?? '',
      itemDescription: jsons['ItemDescription'] ?? '',
      modelNo: jsons['ModelNo'] ?? '',
      partCode: jsons['PartCode'] ?? '',
      sKUCode: jsons['SKUCode'] ?? '',
      brandCode: jsons['BrandCode'] ?? '',
      itemGroup: jsons['ItemGroup'] ?? '',
      specification: jsons['Specification'] ?? '',
      sizeCapacity: jsons['SizeCapacity'] ?? '',
      color: jsons['Color'] ?? '',
      clasification: jsons['Clasification'] ?? '',
      uoM: jsons['UoM'] ?? '',
      length: jsons['Length'] ?? 0.0,
      width: jsons['Width'] ?? 0.0,
      height: jsons['Height'] ?? 0.0,
      weight: jsons['Weight'] ?? 0.0,
      volume: jsons['Volume'] ?? 0.0,
      inwardUoM: jsons['InwardUoM'] ?? '',
      inwardPackQty: jsons['InwardPackQty'] ?? 0.0,
      outwardUoM: jsons['OutwardUoM'] ?? '',
      outwardPackQty: jsons['OutwardPackQty'] ?? 0.0,
      isPerishable: jsons['isPerishable'] ?? false,
      hasExpiryDate: jsons['hasExpiryDate'] ?? false,
      expiryDays: jsons['ExpiryDays'] ?? 0,
      isFragile: jsons['isFragile'] ?? 0,
      taxRate: jsons['TaxRate'] ?? 0.0,
      textNote: jsons['TextNote'] ?? '',
      movingType: jsons['MovingType'] ?? 0,
      manageBy: jsons['ManageBy'] ?? '',
      imageURL: jsons['ImageURL'] ?? '',
      status: jsons['Status'] ?? '',
      createdBy: jsons['CreatedBy'] ?? 0,
      createdDateTime: jsons['CreatedDateTime'] ?? '',
      updatedBy: jsons['UpdatedBy'] ?? '',
      updatedDateTime: jsons['UpdatedDateTime'] ?? '',
      traceid: jsons['traceid'] ?? '',
      dispID: jsons['DispID'] ?? 0,

      //DispID
    );
  }
  Map<String, Object?> toMap() => {
        HeaderTableDB.auditScheduleID: auditScheduleID,
        HeaderTableDB.id: id,
        HeaderTableDB.itemName: itemName,
        HeaderTableDB.itemCode: itemCode,
        HeaderTableDB.itemType: itemType,
        HeaderTableDB.brand: brand,
        HeaderTableDB.category: category,
        HeaderTableDB.subCategory: subCategory,
        HeaderTableDB.itemDescription: itemDescription,
        HeaderTableDB.modelNo: modelNo,
        HeaderTableDB.partCode: partCode,
        HeaderTableDB.sKUCode: sKUCode,
        HeaderTableDB.brandCode: brandCode,
        HeaderTableDB.itemGroup: itemGroup,
        HeaderTableDB.specification: specification,
        HeaderTableDB.sizeCapacity: sizeCapacity,
        HeaderTableDB.color: color,
        HeaderTableDB.clasification: clasification,
        HeaderTableDB.uoM: uoM,
        HeaderTableDB.length: length,
        HeaderTableDB.width: width,
        HeaderTableDB.height: height,
        HeaderTableDB.weight: weight,
        HeaderTableDB.volume: volume,
        HeaderTableDB.inwardUoM: inwardUoM,
        HeaderTableDB.inwardPackQty: inwardPackQty,
        HeaderTableDB.outwardUoM: outwardUoM,
        HeaderTableDB.outwardPackQty: outwardPackQty,
        HeaderTableDB.isPerishable: isPerishable,
        HeaderTableDB.hasExpiryDate: hasExpiryDate,
        HeaderTableDB.expiryDays: expiryDays,
        HeaderTableDB.isFragile: isFragile,
        HeaderTableDB.taxRate: taxRate,
        HeaderTableDB.textNote: textNote,
        HeaderTableDB.movingType: movingType,
        HeaderTableDB.manageBy: manageBy,
        HeaderTableDB.imageURL: imageURL,
        HeaderTableDB.status: status,
        HeaderTableDB.createdBy: createdBy,
        HeaderTableDB.createdDateTime: createdDateTime,
        HeaderTableDB.updatedBy: updatedBy,
        HeaderTableDB.updatedDateTime: updatedDateTime,
        HeaderTableDB.traceid: traceid,
      };
}

// {\"AutoID\":40446065,\"ScheduleID\":79,\"WhsCode\":\"W001\",\"ItemCode\":\"71226\",\"BinCode\":\"B06\",\"SerailBatch\":\"S0071226-3\",
// \"AltSerialBatch\":null,\"Quantity\":1.00,\"StockStatus\":null,\"UoM\":null,\"CreatedBy\":5,\"CreatedDatetime\":\"2024-08-06T16:40:46.19\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,\"traceid\":\"aa59d8ce-110a-4047-a534-0f29976acbb5\",\"DispID\":1,\"InDate\":\"2024-08-06T00:00:00\",\"ExpDate\":\"2030-01-27T00:00:00\"}
class LineData {
  int? autoId;
  int? scheduleId;
  String? whsCode;
  String? itemCode;
  String? binCode;
  String? serailBatch;
  String? altSerialBatch;
  double? quantity;
  String? inDate;
  String? expDate;
  String? uoM;
  int? createdBy;
  String? createdDatetime;
  int? itemDisposition;
  String? updatedBy;
  String? updatedDatetime;
  String? traceid;
  LineData(
      {this.autoId,
      this.binCode,
      this.itemDisposition,
      this.createdBy,
      this.inDate,
      required this.altSerialBatch,
      this.expDate,
      this.createdDatetime,
      this.itemCode,
      this.quantity,
      this.scheduleId,
      this.serailBatch,
      this.traceid,
      this.uoM,
      this.updatedBy,
      this.updatedDatetime,
      this.whsCode});
  factory LineData.fromJson(Map<String, dynamic> jsons) {
    return LineData(
        autoId: jsons['AutoID'] ?? 0,
        binCode: jsons['BinCode'] ?? '',
        inDate: jsons['InDate'] ?? '',
        expDate: jsons['ExpDate'] ?? '',
        altSerialBatch: jsons['AltSerialBatch'] ?? '',
        createdBy: jsons['CreatedBy'] ?? 0,
        createdDatetime: jsons['CreatedDatetime'] ?? '',
        itemCode: jsons['ItemCode'] ?? '',
        quantity: jsons['Quantity'] ?? 0.0,
        scheduleId: jsons['ScheduleID'] ?? 0,
        itemDisposition: jsons['ItemDisposition'] ?? 0,
        serailBatch: jsons['SerailBatch'] ?? '',
        traceid: jsons['traceid'] ?? '',
        uoM: jsons['UoM'] ?? '',
        updatedBy: jsons['UpdatedBy'] ?? "",
        updatedDatetime: jsons['UpdatedDatetime'] ?? '',
        whsCode: jsons['WhsCode'] ?? '');
  }
  Map<String, Object?> toMap() => {
        ActionLineDBTable.autoId: autoId,
        ActionLineDBTable.binCode: binCode,
        ActionLineDBTable.createdBy: createdBy,
        ActionLineDBTable.createdDatetime: createdDatetime,
        ActionLineDBTable.itemCode: itemCode,
        ActionLineDBTable.quantity: quantity,
        ActionLineDBTable.scheduleId: scheduleId,
        ActionLineDBTable.serailBatch: serailBatch,
        ActionLineDBTable.traceid: traceid,
        ActionLineDBTable.uoM: uoM,
        ActionLineDBTable.updatedBy: updatedBy,
        ActionLineDBTable.updatedDatetime: updatedDatetime,
        ActionLineDBTable.whsCode: whsCode,
      };
}

class BinMasterData {
  int auditId;
  String? binCode;
  String? whsCode;
  String? areaCode;
  String? zoneCode;
  String? rackCode;
  int status;

  BinMasterData(
      {required this.areaCode,
      required this.auditId,
      required this.binCode,
      required this.rackCode,
      required this.status,
      required this.whsCode,
      required this.zoneCode});
// {\"AuditID\":26,\"BinCode\":\"WC001\",\"WhsCode\":\"W001\",\"AreaCode\":\"AC1234\",\"ZoneCode\":\"Zone12345\",\"RackCode\":\"RK8005\",\"Status\":1}

  factory BinMasterData.fromJson(Map<String, dynamic> jsons) {
    // log('NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN');
    return BinMasterData(
        areaCode: jsons['AreaCode'] != null ? jsons['AreaCode'].toString() : '',
        auditId: jsons['AuditID'] ?? 0,
        binCode: jsons['BinCode'] != null ? jsons['BinCode'].toString() : '',
        rackCode: jsons['RackCode'] != null ? jsons['RackCode'].toString() : '',
        status: jsons['Status'] ?? 0,
        whsCode: jsons['WhsCode'] != null ? jsons['WhsCode'].toString() : '',
        zoneCode:
            jsons['ZoneCode'] != null ? jsons['ZoneCode'].toString() : '');
  }
}




// class GetAuditActionDataModel {
//   String remarks;
//   String status;
//   String createdDatetime;
//   int createdBy;
//   int updatedBy;
//   String updatedDatetime;
//   String traceid;
//   int docEntry;
//   int docNum;
//   String docDate;
//   String scheduleName;
//   String auditFrom;
//   String auditTo;
//   bool repeat;
//   String repeatFrequency;
//   int repeatDay;
//   String startDate;
//   String endDate;
//   String whsCode;
//   bool blockTrans;

//   GetAuditActionDataModel(
//       {required this.auditFrom,
//       required this.auditTo,
//       required this.blockTrans,
//       required this.createdBy,
//       required this.createdDatetime,
//       required this.docDate,
//       required this.docEntry,
//       required this.docNum,
//       required this.endDate,
//       required this.remarks,
//       required this.repeat,
//       required this.repeatDay,
//       required this.repeatFrequency,
//       required this.scheduleName,
//       required this.startDate,
//       required this.status,
//       required this.traceid,
//       required this.updatedBy,
//       required this.updatedDatetime,
//       required this.whsCode});
//   // {DocEntry: 4, DocNum: 2400014, DocDate: 2024-07-10T00:00:00, ScheduleName: TEST3, AuditFrom: 2024-07-10T00:00:00, AuditTo: 2024-07-15T00:00:00, Repeat: true,
//   //RepeatFrequency: Monthly, RepeatDay: 6, StartDate: 2024-04-10T00:00:00, EndDate: 2025-08-10T00:00:00, WhsCode: W001, BlockTrans: true, Remarks: Test, Status: Open,
//   //CreatedBy: 1, CreatedDatetime: 2024-07-10T16:50:29.943, UpdatedBy: null, UpdatedDatetime: null, traceid: 6432a2c8-627e-48d5-b6f4-209b1281e6d6}
//   factory GetAuditActionDataModel.fromJson(Map<String, dynamic> json) {
//     return GetAuditActionDataModel(
//       auditFrom: json['AuditFrom'] ?? '',
//       auditTo: json['AuditTo'] ?? '',
//       blockTrans: json['BlockTrans'],
//       createdBy: json['CreatedBy'],
//       createdDatetime: json['CreatedDatetime'] ?? '',
//       docDate: json['DocDate'] ?? '',
//       docEntry: json['DocEntry'],
//       docNum: json['DocNum'],
//       endDate: json['EndDate'] ?? '',
//       remarks: json['Remarks'] ?? '',
//       repeat: json['Repeat'],
//       repeatDay: json['RepeatDay'],
//       repeatFrequency: json['RepeatFrequency'] ?? '',
//       scheduleName: json['ScheduleName'] ?? '',
//       startDate: json['StartDate'] ?? '',
//       status: json['Status'] ?? '',
//       traceid: json['traceid'] ?? '',
//       updatedBy: json['UpdatedBy'] ?? 0,
//       updatedDatetime: json['UpdatedDatetime'] ?? '',
//       whsCode: json['WhsCode'] ?? '',
//     );
//   }
// }
