import 'dart:developer';
import 'package:drift/drift.dart' as drift;
import 'package:drift/drift.dart';
import 'package:verifytapp/Model/AuditModel/AuditActionModel.dart';
import 'package:verifytapp/driftDB/driftTablecreation.dart';
import '../Controllers/AuditController/AuditControllers.dart';
import '../DBModel/ItemTable/HeaderDataTable.dart';
import '../Model/CheckListModel/CheckLstModel.dart';
import '../Model/ScanPostModel/ScanPostDataaModel.dart';

class driftoperation {
  static Future<void> insertdriftdatabase(
      List<HeaderData> dataList, AppDatabase database) async {
    final stopwatch = Stopwatch()..start();
    // final database = AppDatabase.instance;
    const int batchSize = 10000; // Adjust based on your performance tests

    await database.transaction(() async {
      for (int i = 0; i < dataList.length; i += batchSize) {
        await database.batch((Batch batch) {
          for (int j = i; j < i + batchSize && j < dataList.length; j++) {
            final data = dataList[j];
            batch.insert(
              database.driftItemMaster,
              DriftItemMasterCompanion(
                auditScheduleID: drift.Value(data.auditScheduleID),
                id: drift.Value(data.id),
                itemCode: drift.Value(data.itemCode),
                itemName: drift.Value(data.itemName),
                itemType: drift.Value(data.itemType),
                category: drift.Value(data.category),
                brand: drift.Value(data.brand),
                itemDescription: drift.Value(data.itemDescription),
                modelNo: drift.Value(data.modelNo),
                partCode: drift.Value(data.partCode),
                skucode: drift.Value(data.sKUCode),
                brandCode: drift.Value(data.brandCode),
                itemGroup: drift.Value(data.itemGroup),
                specification: drift.Value(data.specification),
                sizeCapacity: drift.Value(data.sizeCapacity),
                clasification: drift.Value(data.clasification),
                uoM: drift.Value(data.uoM),
                imageUrl1: drift.Value(data.imageURL),
                textNote: drift.Value(data.textNote),
                status: drift.Value(data.status),
                movingType: drift.Value(data.movingType),
                color: drift.Value(data.color),
                height: drift.Value(data.height),
                hasExpiryDate: drift.Value(data.hasExpiryDate),
                subCategory: drift.Value(data.subCategory),
                itemDisposition: drift.Value(data.itemDisposition),
                width: drift.Value(data.width),
                lengthh: drift.Value(data.length),
                volume: drift.Value(data.volume),
                inwardPackQty: drift.Value(data.inwardPackQty),
                inwardUoM: drift.Value(data.inwardUoM),
                isFragile: drift.Value(data.isFragile),
                isPerishable: drift.Value(data.isPerishable),
                IMid: drift.Value(data.id),
                traceId: drift.Value(data.traceid),
                createdBy: drift.Value(data.createdBy),
                createdDateTime: drift.Value(data.createdDateTime),
                updatedBy: drift.Value(data.updatedBy),
                updatedDateTime: drift.Value(data.updatedDateTime),
                outwardPackQty: drift.Value(data.outwardPackQty),
                outwardUoM: drift.Value(data.outwardUoM),
                manageBy: drift.Value(data.manageBy),
                expiryDays: drift.Value(data.expiryDays),
                taxRate: drift.Value(data.taxRate),
              ),
            );
          }
        });
      }
    });

    stopwatch.stop();
    log('Inserted ${dataList.length} records in ${stopwatch.elapsedMilliseconds} ms');
  }

  static Future<void> insertdriftLinedatabase(
      List<LineData> dataList, AppDatabase database) async {
    final stopwatch = Stopwatch()..start();
    // final database = AppDatabase.instance;
    const int batchSize = 5000; // Adjust based on your performance tests
    await database.transaction(() async {
      for (int i = 0; i < dataList.length; i += batchSize) {
        await database.batch((Batch batch) {
          for (int j = i; j < i + batchSize && j < dataList.length; j++) {
            final data = dataList[j];
            batch.insert(
                database.driftLineMaster,
                DriftLineMasterCompanion(
                  itemCode: drift.Value(data.itemCode),
                  autoId: drift.Value(data.autoId),
                  serialbatch: drift.Value(data.serailBatch),
                  binCode: drift.Value(data.binCode),
                  quantity: drift.Value(data.quantity),
                  createdBy: drift.Value(data.createdBy),
                  itemDisposition: drift.Value(data.itemDisposition),
                  inDate: drift.Value(data.inDate),
                  expDate: drift.Value(data.expDate),
                  createdDatetime: drift.Value(data.createdDatetime),
                  traceid: drift.Value(data.serailBatch),
                  uom: drift.Value(data.uoM),
                  updatedBy: drift.Value(data.updatedBy),
                  scheduleID: drift.Value(data.scheduleId),
                  updatedDatetime: drift.Value(data.updatedDatetime),
                  whsCode: drift.Value(data.whsCode),
                ));
          }
        });
      }
    });

    stopwatch.stop();
    log('LineTable ${dataList.length} records in ${stopwatch.elapsedMilliseconds} ms');
  }

  static Future<void> insertscanpostdatabase(
      List<ScanDataPost> dataList, AppDatabase database) async {
    final stopwatch = Stopwatch()..start();
    // final database = AppDatabase.instance;
    const int batchSize = 1; // Adjust based on your performance tests
    await database.transaction(() async {
      for (int i = 0; i < dataList.length; i += batchSize) {
        await database.batch((Batch batch) {
          for (int j = i; j < i + batchSize && j < dataList.length; j++) {
            final data = dataList[j];
            batch.insert(
              database.driftScanPostMaster,
              DriftScanPostMasterCompanion(
                whscode: drift.Value(data.whscode),
                bincode: drift.Value(data.bincode),
                itemcode: drift.Value(data.itemCode),
                ismanual: drift.Value(data.ismanual),
                notes: drift.Value(data.notes),
                devicecode: drift.Value(data.devicecode),
                auditid: drift.Value(data.auditid),
                serialbatch: drift.Value(data.serialbatch),
                quantity: drift.Value(data.quantity),
                templateid: drift.Value(data.templateid),
                stockstatus: drift.Value(data.stockstatus),
                scandatetime: drift.Value(data.scandatetime),
              ),
            );
          }
        });
      }
    });

    stopwatch.stop();
    log('LineTable ${dataList.length} records in ${stopwatch.elapsedMilliseconds} ms');
  }

// "checklist": [
//       {
//         "auditid": 2,
//         "checklistcode": "Check1",
//         "checklistvalue": "1",
//         "attachurl": "string"
//       }
//     ]
  static Future<void> insertchecklistdatabase(
      List<DispListData> dataList, AppDatabase database) async {
    final stopwatch = Stopwatch()..start();
    const int batchSize = 1; // Adjust based on your performance tests
    await database.transaction(() async {
      for (int i = 0; i < dataList.length; i += batchSize) {
        await database.batch((Batch batch) {
          for (int j = i; j < i + batchSize && j < dataList.length; j++) {
            final data = dataList[j];
            batch.insert(
              database.driftDispMaster,
              DriftDispMasterCompanion(
                auditid: drift.Value(data.auditid),
                checklistcode: drift.Value(data.checklistcode),
                checklistvalue: drift.Value(data.checklistvalue),
                attachurl: drift.Value(data.attachurl),
              ),
            );
          }
        });
      }
    });

    stopwatch.stop();
    print(
        'LineTable ${dataList.length} records in ${stopwatch.elapsedMilliseconds} ms');
  }

// {\"AuditID\":26,\"BinCode\":\"1\",\"WhsCode\":\"W001\",\"AreaCode\":\"AC1234\",\"ZoneCode\":\"ZC0033\",\"RackCode\":\"RK9001\",\"Status\":1},
  static Future<void> insertBinMasterdatabase(
      List<BinMasterData> dataList, AppDatabase database) async {
    final stopwatch = Stopwatch()..start();
    // final database = AppDatabase.instance;
    const int batchSize = 5000; // Adjust based on your performance tests
    await database.transaction(() async {
      // log('dataList[j]::::${dataList[0].auditId}');
      for (int i = 0; i < dataList.length; i += batchSize) {
        await database.batch((Batch batch) {
          for (int j = i; j < i + batchSize && j < dataList.length; j++) {
            final data = dataList[j];
            batch.insert(
              database.driftBinMaster,
              DriftBinMasterCompanion(
                areaCode: drift.Value(data.areaCode),
                auditId: drift.Value(data.auditId),
                binCode: drift.Value(data.binCode),
                whsCode: drift.Value(data.whsCode),
                zoneCode: drift.Value(data.zoneCode),
                status: drift.Value(data.status),
                rackCode: drift.Value(data.rackCode),
              ),
            );
          }
        });
      }
    });

    stopwatch.stop();
    log('BinMaster ${dataList.length} records in ${stopwatch.elapsedMilliseconds} ms');
  }

  static Future<void> insertCheckListHeader(
      List<CheckListHeader> dataList, AppDatabase database) async {
    final stopwatch = Stopwatch()..start();
    // final database = AppDatabase.instance;
    const int batchSize = 5000; // Adjust based on your performance tests
    await database.transaction(() async {
      // log('dataList[j]::::${dataList[0].areaCode}');
      for (int i = 0; i < dataList.length; i += batchSize) {
        await database.batch((Batch batch) {
          for (int j = i; j < i + batchSize && j < dataList.length; j++) {
            final data = dataList[j];
            batch.insert(
              database.checkListHeaderMaster,
              CheckListHeaderMasterCompanion(
                areaCode: drift.Value(data.areaCode),
                docEntry: drift.Value(data.docEntry),
                binCode: drift.Value(data.areaCode),
                rackCode: drift.Value(data.rackCode),
                status: drift.Value(data.status),
                whsCode: drift.Value(data.whsCode),
                zoneCode: drift.Value(data.zoneCode),
                category: drift.Value(data.category),
                createdBy: drift.Value(data.createdBy),
                createdDateTime: drift.Value(data.createdDateTime),
                checklistTemplate: drift.Value(data.checklistTemplate),
                disposition: drift.Value(data.disposition),
                forAgesAbove: drift.Value(data.forAgesAbove),
                hasExpiryDate: drift.Value(data.hasExpiryDate),
                isFragile: drift.Value(data.isFragile),
                itemCode: drift.Value(data.itemCode),
                itemStatus: drift.Value(data.itemStatus),
                manageBy: drift.Value(data.manageBy),
                previousDispute: drift.Value(data.previousDispute),
                serialBatchManualTyped:
                    drift.Value(data.serialBatchManualTyped),
                serialBatch: drift.Value(data.serialBatch),
                sizeCapacity: drift.Value(data.sizeCapacity),
                specification: drift.Value(data.specification),
                subCategory: drift.Value(data.sizeCapacity),
                updatedBy: drift.Value(data.updatedBy),
                updatedDateTime: drift.Value(data.updatedDateTime),
                whileOffline: drift.Value(data.whileOffline),
                traceid: drift.Value(data.traceid),
              ),
            );
          }
        });
      }
    });

    stopwatch.stop();
    log('ChecklistHeader ${dataList.length} records in ${stopwatch.elapsedMilliseconds} ms');
  }

  static Future<void> inserCheckLinedatabase(
      List<CheckListLineData> dataList, AppDatabase database) async {
    final stopwatch = Stopwatch()..start();
    // final database = AppDatabase.instance;
    const int batchSize = 1; // Adjust based on your performance tests
    await database.transaction(() async {
      for (int i = 0; i < dataList.length; i += batchSize) {
        await database.batch((Batch batch) {
          for (int j = i; j < i + batchSize && j < dataList.length; j++) {
            final data = dataList[j];
            batch.insert(
              database.driftCheckLineMaster,
              DriftCheckLineMasterCompanion(
                docEntry: drift.Value(data.docEntry),
                docEntry1: drift.Value(data.docEntry1),
                acceptAttach: drift.Value(data.acceptAttach),
                acceptMultiValue: drift.Value(data.acceptMultiValue),
                createdBy: drift.Value(data.createdBy),
                checklistCode: drift.Value(data.checklistCode),
                checklistName: drift.Value(data.checklistName),
                createdDatetime: drift.Value(data.createdDatetime),
                templateName: drift.Value(data.templateName),
                traceid: drift.Value(data.traceid),
                isMandaory: drift.Value(data.isMandaory),
                updatedBy: drift.Value(data.updatedBy),
                updatedDatetime: drift.Value(data.updatedDatetime),
                listValue: drift.Value(data.listValue),
              ),
            );
          }
        });
      }
    });

    stopwatch.stop();
    log('CheckLineList ${dataList.length} records in ${stopwatch.elapsedMilliseconds} ms');
  }

// limit: 1,
//CheckListselect
  static Future<List<Checklisttemplate>> checkListPopup(
      AppDatabase database,
      String serialbatch,
      String disposition,
      int whileoffline,
      int manualtype) async {
    // Top 1----mani sir
    // isnull(datediff(day, isnull(a.indate, getdate()), getdate()),1) >= isNull(d.ForAgesAbove,1) and
    // --  (b.Brand = d.Brand or  'All' = d.Brand) AND
    final result = await database
        .customSelect('''Select d.ChecklistTemplate From driftstocksnapmaster a 
 left join drifitemmaster b on a.ItemCode = b.ItemCode 
 left join driftbinmaster c on a.BinCode = c.Bincode 
 left join driftchecklistheader d on (a.BinCode = d.BinCode or  'All' = d.BinCode)  
  AND(c.RackCode = d.RackCode or  'All' = d.RackCode)  
  AND(c.AreaCode = d.AreaCode or  'All' = d.AreaCode)  
 AND(c.ZoneCode = d.ZoneCode or  'All' = d.ZoneCode)  
  AND(a.WhsCode = d.WhsCode or  'All' = d.WhsCode)  
 AND(b.Category = d.Category or  'All' = d.Category)  
 AND(b.SubCategory = d.SubCategory or  'All' = d.SubCategory)  
 AND (b.Brand = d.Brand or  'All' = d.Brand) 
 AND(b.hasExpiryDate = d.hasExpiryDate or  '' = IfNULL (d.hasExpiryDate,''))  
 AND(b.isFragile = d.isFragile or  '' = IfNULL (d.isFragile,''))  
AND (b.ItemCode = d.ItemCode or  'All' = d.ItemCode)  
AND (b.Status = d.ItemStatus or  'All' = d.ItemStatus)  
 AND(b.ManageBy = d.ManageBy or  'All' = d.ManageBy)  
AND (a.SerailBatch = d.SerialBatch or 'All' = d.SerialBatch)  
 AND(d.Disposition = '$disposition' or 'All' = d.Disposition)  
AND IfNULL(datediff(day, IfNULL(a.indate, getdate()), getdate()),1) >= IfNULL(d.ForAgesAbove,1) 
AND (d.SerialBatchManualTyped = '$manualtype' or '' = IfNULL (d.SerialBatchManualTyped , ''))  
AND (d.WhileOffline = '$whileoffline' or '' = IfNULL (d.WhileOffline , ''))
 where a.SerailBatch ='$serialbatch'
 LIMIT 1
''').get();
    return result.map((row) {
      log('resultresultresultresult::${row.read<int?>('ChecklistTemplate')}');

      return Checklisttemplate(templateid: row.read<int?>('ChecklistTemplate'));
    }).toList();
  }

  static Future<List<CheckListLineData>> getcheckListLineMasterdata(
      AppDatabase database) async {
    final result =
        await database.customSelect("Select * from driftchecklinemaster").get();
    // log("CheckLine resultresult::${result.toList()}");
    return result.map((row) {
      return CheckListLineData(
        docEntry: row.read<int?>('docEntry') ?? 0,
        docEntry1: row.read<int?>('docEntry1') ?? 0,
        checklistCode: row.read<String?>('checklistCode') ?? '',
        checklistName: row.read<String?>('checklistName') ?? '',
        createdBy: row.read<int?>('createdBy') ?? 0,
        createdDatetime: row.read<String?>('createdDatetime') ?? '',
        acceptAttach: row.read<bool?>('acceptAttach') ?? false,
        acceptMultiValue: row.read<bool?>('acceptMultiValue') ?? false,
        isMandaory: row.read<bool?>('isMandaory') ?? false,
        listValue: row.read<String?>('listValue') ?? '',
        templateName: row.read<String?>('templateName') ?? '',
        traceid: row.read<String?>('traceid') ?? '',
        updatedBy: row.read<String?>('updatedBy') ?? '',
        updatedDatetime: row.read<String?>('updatedDatetime') ?? '',
      );
    }).toList();
  }

// DriftCheckListMasterCompanion
  static Future<List<BinMasterData>> getBinMasterdata(
      AppDatabase database) async {
    final result =
        await database.customSelect("Select * from driftbinmaster").get();
    log("driftBinMaster resultresult::${result.length}");
    return result.map((row) {
      return BinMasterData(
        areaCode: row.read<String?>('AreaCode') ?? '',
        auditId: row.read<int?>('Auditid') ?? 0,
        binCode: row.read<String?>('Bincode') ?? '',
        rackCode: row.read<String?>('RackCode') ?? '',
        status: row.read<int?>('Status') ?? 0,
        whsCode: row.read<String?>('Whscode') ?? '',
        zoneCode: row.read<String?>('ZoneCode') ?? '',
      );
    }).toList();
  }

  static Future<List<BinMasterData>> checkBinMasterdata(
      AppDatabase database, String bincode) async {
    final result = await database
        .customSelect("Select * from driftbinmaster where Bincode='$bincode'")
        .get();
    log("driftBinMastercheck resultresult::${result.length}");
    return result.map((row) {
      return BinMasterData(
        areaCode: row.read<String?>('AreaCode') ?? '',
        auditId: row.read<int?>('Auditid') ?? 0,
        binCode: row.read<String?>('Bincode') ?? '',
        rackCode: row.read<String?>('RackCode') ?? '',
        status: row.read<int?>('Status') ?? 0,
        whsCode: row.read<String?>('Whscode') ?? '',
        zoneCode: row.read<String?>('ZoneCode') ?? '',
      );
    }).toList();
  }

  static Future<List<DispListData>> getDisplistproduct(
      AppDatabase database) async {
    final result =
        await database.customSelect("Select * from driftchecklisttable").get();
    log("checklist resultresult::" + result.length.toString());
    return result.map((row) {
      return DispListData(
        auditid: row.read<int?>('auditid') ?? 0,
        checklistcode: row.read<String?>('checklistcode') ?? '',
        checklistvalue: row.read<String?>('checklistvalue') ?? '',
        attachurl: row.read<String?>('attachurl') ?? '',
      );
    }).toList();
  }

  static Future<List<ScanDataPost>> getscandataproduct(
      AppDatabase database) async {
    final result = await database
        .customSelect("Select * from driftscanpostdatatable")
        .get();
    log("scanpostdata resultresult::${result.length}");
    return result.map((row) {
      return ScanDataPost(
          auditid: row.read<int?>('auditid') ?? 0,
          bincode: row.read<String?>('bincode') ?? '',
          devicecode: row.read<String?>('devicecode') ?? '',
          ismanual: row.read<int?>('ismanual') ?? 0,
          itemCode: row.read<String?>('itemcode') ?? '',
          notes: row.read<String?>('notes') ?? '',
          quantity: row.read<double?>('quantity') ?? 0,
          scandatetime: row.read<String?>('scandatetime') ?? '',
          serialbatch: row.read<String?>('serialbatch') ?? '',
          stockstatus: row.read<String?>('stockstatus') ?? '',
          templateid: row.read<int?>('templateid') ?? 0,
          scanguid: row.read<String?>('scanguid') ?? '',
          whscode: row.read<String?>('whscode') ?? '',
          checklist: []);
    }).toList();
  }

  static Future deleteListItemById(int id, AppDatabase database) async {
    // return (delete(items)..where((tbl) => tbl.id.equals(id))).go();
    var result = database.customStatement(
        "delete from driftstocksnapmaster where ScheduleId=$id");
    // log("fgfff::" + result.toString());

    return result;
  }

  static Future deleteBinListItemById(int id, AppDatabase database) async {
    // return (delete(items)..where((tbl) => tbl.id.equals(id))).go();
    var result = database
        .customStatement("delete from driftbinmaster where Auditid=$id");
    // log("fgfff::" + result.toString());
    return result;
  }

  static Future deletHeaderItemById(int id, AppDatabase database) async {
    // return (delete(items)..where((tbl) => tbl.id.equals(id))).go();
    var result = database.customStatement(
        "delete from drifitemmaster where AuditSchedule_ID=$id");
    // log("fgfff::" + result.toString());
    return result;
  }

//delete full table
  static Future deleteBinListItem(AppDatabase database) async {
    // return (delete(items)..where((tbl) => tbl.id.equals(id))).go();
    var result = database.customStatement("delete from driftbinmaster");
    // log("fgfff::" + result.toString());
    return result;
  }

  static Future deleteListItem(AppDatabase database) async {
    // return (delete(items)..where((tbl) => tbl.id.equals(id))).go();
    var result = database.customStatement("delete from driftstocksnapmaster");
    // log("fgfff::" + result.toString());

    return result;
  }

  static Future deletHeaderItem(AppDatabase database) async {
    // return (delete(items)..where((tbl) => tbl.id.equals(id))).go();
    var result = database.customStatement("delete from drifitemmaster");
    // log("fgfff::" + result.toString());
    return result;
  }

  static Future<List<LineData>> ckeckLineproduct(
    AppDatabase database,
    int id,
  ) async {
    final result = await database
        .customSelect(
            "Select * from driftstocksnapmaster where ScheduleId= $id")
        .get();
    log("stocksnap resultresult::" + result.length.toString());
    return result.map((row) {
      return LineData(
        autoId: row.read<int?>('AutoID') ?? 0,
        binCode: row.read<String?>('BinCode') ?? '',
        itemDisposition: row.read<int?>('ItemDisposition') ?? 0,
        createdBy: row.read<int?>('CreatedBy') ?? 0,
        createdDatetime: row.read<String?>('CreatedDatetime') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
        quantity: row.read<double?>('Quantity') ?? 0.0,
        scheduleId: row.read<int?>('ScheduleId') ?? 0,
        altSerialBatch: row.read<String?>('AltSerialBatch') ?? '',
        serailBatch: row.read<String?>('SerailBatch') ?? '',
        inDate: row.read<String?>('InDate') ?? '',
        expDate: row.read<String?>('ExpDate') ?? '',
        traceid: row.read<String?>('traceid') ?? '',
        uoM: row.read<String?>('UoM') ?? '',
        updatedBy: row.read<String?>('UpdatedBy') ?? '',
        updatedDatetime: row.read<String?>('UpdatedDatetime') ?? '',
        whsCode: row.read<String?>('WhsCode') ?? '',
      );
    }).toList();
  }

  static Future<List<LineData>> getallLineproduct(AppDatabase database) async {
    final result =
        await database.customSelect("Select * from driftstocksnapmaster").get();
    log("Allstocksnap resultresult::" + result.length.toString());
    return result.map((row) {
      return LineData(
        autoId: row.read<int?>('AutoID') ?? 0,
        binCode: row.read<String?>('BinCode') ?? '',
        itemDisposition: row.read<int?>('ItemDisposition') ?? 0,
        createdBy: row.read<int?>('CreatedBy') ?? 0,
        createdDatetime: row.read<String?>('CreatedDatetime') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
        quantity: row.read<double?>('Quantity') ?? 0.0,
        scheduleId: row.read<int?>('ScheduleId') ?? 0,
        serailBatch: row.read<String?>('SerailBatch') ?? '',
        inDate: row.read<String?>('InDate') ?? '',
        expDate: row.read<String?>('ExpDate') ?? '',
        traceid: row.read<String?>('traceid') ?? '',
        uoM: row.read<String?>('UoM') ?? '',
        updatedBy: row.read<String?>('UpdatedBy') ?? '',
        updatedDatetime: row.read<String?>('UpdatedDatetime') ?? '',
        whsCode: row.read<String?>('WhsCode') ?? '',
        altSerialBatch: row.read<String?>('AltSerialBatch') ?? '',
      );
    }).toList();
  }

  static Future<List<LineData>> getallLineColumnproduct(
      AppDatabase database) async {
    final result = await database
        .customSelect(
            "SELECT BinCode, ItemCode, SerailBatch, AltSerialBatch from driftstocksnapmaster limit(10)")
        .get();
    return result.map((row) {
      // log("linemaster limitresult::${row.read<String?>('SerailBatch')}::${row.read<String?>('ItemCode')}:: ${row.read<String?>('BinCode')}");

      return LineData(
        binCode: row.read<String?>('BinCode') ?? '',
        serailBatch: row.read<String?>('SerailBatch') ?? '',
        altSerialBatch: row.read<String?>('AltSerialBatch') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
      );
    }).toList();
  }

// linemaster resultresult::S00001-3
// [log] linemaster SerailBatch::S00002DRESSINGTABLE-3
// [log] linemaster SerailBatch::S00006SILDUMMY-3
// [log] linemaster SerailBatch::S00006SILDUMMYITEM-3
// [log] linemaster SerailBatch::S00006SILDUMMYITEM10-3
// [log] linemaster SerailBatch::S00006SILDUMMYITEM11-3
// [log] linemaster SerailBatch::S00006SILDUMMYITEM12-3
// [log] linemaster SerailBatch::S00006SILDUMMYITEM120-3
// [log] linemaster SerailBatch::S00006SILDUMMYITEM13-3
// [log] linemaster SerailBatch::S00006SILDUMMYITEM14-3

  // static Future getdriftallLineColumn(
  //     AppDatabase database, String columnVal, String binNum) async {
  static Future<List<LineData>> getdriftallLineColumn(
      AppDatabase database, String columnVal, String binNum) async {
    final result = await database
        .customSelect(
            "SELECT * from driftstocksnapmaster where $columnVal='$binNum'")
        .get();
    log("lineColumn resultresult::${result.length}");
    return result.map((row) {
      // log("linemaster resultresult::${row.read<String?>('ItemCode')}");

      return LineData(
        autoId: row.read<int?>('AutoID') ?? 0,
        binCode: row.read<String?>('BinCode') ?? '',
        itemDisposition: row.read<int?>('ItemDisposition') ?? 0,
        createdBy: row.read<int?>('CreatedBy') ?? 0,
        createdDatetime: row.read<String?>('CreatedDatetime') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
        quantity: row.read<double?>('Quantity') ?? 0.0,
        scheduleId: row.read<int?>('ScheduleId') ?? 0,
        serailBatch: row.read<String?>('SerailBatch') ?? '',
        altSerialBatch: row.read<String?>('AltSerialBatch') ?? '',
        traceid: row.read<String?>('traceid') ?? '',
        uoM: row.read<String?>('UoM') ?? '',
        updatedBy: row.read<String?>('UpdatedBy') ?? '',
        updatedDatetime: row.read<String?>('UpdatedDatetime') ?? '',
        whsCode: row.read<String?>('WhsCode') ?? '',
        inDate: row.read<String?>('InDate') ?? '',
        expDate: row.read<String?>('ExpDate') ?? '',
      );
    }).toList();
  }

//InDate ExpDate
  static Future<List<LineData>> getdriftallserialLineColumn(
    AppDatabase database,
    String columnVal,
    String columnVal2,
  ) async {
    final result = await database
        .customSelect(
            "SELECT * from driftstocksnapmaster where SerailBatch='$columnVal2' or AltSerialBatch='$columnVal2'")
        .get();
    log("lineSerColumn resultresult::${result.length}");
    return result.map((row) {
      log("checkserialbatch result::${row.read<String?>('AutoID')}");
      return LineData(
        autoId: row.read<int?>('AutoID') ?? 0,
        binCode: row.read<String?>('BinCode') ?? '',
        itemDisposition: row.read<int?>('ItemDisposition') ?? 0,
        inDate: row.read<String?>('InDate') ?? '',
        expDate: row.read<String?>('ExpDate') ?? '',
        createdBy: row.read<int?>('CreatedBy') ?? 0,
        createdDatetime: row.read<String?>('CreatedDatetime') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
        quantity: row.read<double?>('Quantity') ?? 0.0,
        scheduleId: row.read<int?>('ScheduleId') ?? 0,
        altSerialBatch: row.read<String?>('AltSerialBatch') ?? '',
        serailBatch: row.read<String?>('SerailBatch') ?? '',
        traceid: row.read<String?>('traceid') ?? '',
        uoM: row.read<String?>('UoM') ?? '',
        updatedBy: row.read<String?>('UpdatedBy') ?? '',
        updatedDatetime: row.read<String?>('UpdatedDatetime') ?? '',
        whsCode: row.read<String?>('WhsCode') ?? '',
      );
    }).toList();
  }

  static Future<List<HeaderData>> getItemCodeInHeader(
      AppDatabase database, String itemCode) async {
    final result = await database
        .customSelect("Select * from drifitemmaster where ItemCode='$itemCode'")
        .get();
    log("ItemCode result::" + result.length.toString());
    return result.map((row) {
      return HeaderData(
        auditScheduleID: row.read<int?>('AuditSchedule_ID') ?? 0,
        id: row.read<int?>('Id') ?? 0,
        itemDisposition: row.read<int?>('ItemDisposition') ?? 0,
        itemType: row.read<String?>('ItemType') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
        brand: row.read<String?>('Brand') ?? '',
        category: row.read<String?>('Category') ?? '',
        itemName: row.read<String?>('ItemName') ?? '',
        brandCode: row.read<String?>('BrandCode') ?? '',
        clasification: row.read<String?>('Clasification') ?? '',
        color: row.read<String?>('Color') ?? '',
        itemDescription: row.read<String?>('ItemDescription') ?? '',
        itemGroup: row.read<String?>('ItemGroup') ?? '',
        modelNo: row.read<String?>('ModelNo') ?? '',
        movingType: row.read<int?>('MovingType') ?? 0,
        partCode: row.read<String?>('PartCode') ?? '',
        sizeCapacity: row.read<String?>('SizeCapacity') ?? '',
        status: row.read<String?>('Status') ?? '',
        taxRate: row.read<double?>('TaxRate') ?? 0.0,
        textNote: row.read<String?>('TextNote') ?? '',
        uoM: row.read<String?>('UoM') ?? '',
        imageURL: row.read<String?>('ImageURL') ?? '',
        inwardPackQty: row.read<double?>('InwardPackQty') ?? 0.0,
        inwardUoM: row.read<String?>('InwardUoM') ?? '',
        isFragile: row.read<int?>('isFragile') ?? 0,
        isPerishable: row.read<bool?>('isPerishable') ?? false,
        length: row.read<double?>('Length') ?? 0.0,
        manageBy: row.read<String?>('ManageBy') ?? '',
        outwardUoM: row.read<String?>('OutwardUoM') ?? '',
        outwardPackQty: row.read<double?>('OutwardPackQty') ?? 0.0,
        sKUCode: row.read<String?>('SizeCapacity') ?? '',
        specification: row.read<String?>('Status') ?? '',
        subCategory: row.read<String?>('SubCategory') ?? '',
        weight: row.read<double?>('Weight') ?? 0.0,
        width: row.read<double?>('Width') ?? 0.0,
        updatedBy: row.read<String?>('UpdatedBy') ?? '',
        updatedDateTime: row.read<String?>('UpdatedDateTime') ?? '',
        createdBy: row.read<int?>('CreatedBy') ?? 0,
        createdDateTime: row.read<String?>('CreatedDateTime') ?? '',
        hasExpiryDate: row.read<bool?>('hasExpiryDate') ?? false,
        height: row.read<double?>('Height') ?? 0.0,
        volume: row.read<double?>('Volume') ?? 0.0,
        traceid: row.read<String?>('traceid') ?? '',
        expiryDays: row.read<int?>('ExpiryDays') ?? 0,
        dispID: row.read<int?>('DispID') ?? 0,
      );
    }).toList();
  }

  static Future<List<HeaderData>> checkHeaderproduct(
      AppDatabase database, int id) async {
    final result = await database
        .customSelect(
            "Select * from drifitemmaster where AuditSchedule_ID=$id ")
        .get();
    log("resultresult::" + result.length.toString());
    return result.map((row) {
      return HeaderData(
        auditScheduleID: row.read<int?>('AuditSchedule_ID') ?? 0,
        id: row.read<int?>('Id') ?? 0,
        itemDisposition: row.read<int?>('ItemDisposition') ?? 0,
        itemType: row.read<String?>('ItemType') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
        brand: row.read<String?>('Brand') ?? '',
        category: row.read<String?>('Category') ?? '',
        itemName: row.read<String?>('ItemName') ?? '',
        brandCode: row.read<String?>('BrandCode') ?? '',
        clasification: row.read<String?>('Clasification') ?? '',
        color: row.read<String?>('Color') ?? '',
        itemDescription: row.read<String?>('ItemDescription') ?? '',
        itemGroup: row.read<String?>('ItemGroup') ?? '',
        modelNo: row.read<String?>('ModelNo') ?? '',
        movingType: row.read<int?>('MovingType') ?? 0,
        partCode: row.read<String?>('PartCode') ?? '',
        sizeCapacity: row.read<String?>('SizeCapacity') ?? '',
        status: row.read<String?>('Status') ?? '',
        taxRate: row.read<double?>('TaxRate') ?? 0.0,
        textNote: row.read<String?>('TextNote') ?? '',
        uoM: row.read<String?>('UoM') ?? '',
        imageURL: row.read<String?>('ImageURL') ?? '',
        inwardPackQty: row.read<double?>('InwardPackQty') ?? 0.0,
        inwardUoM: row.read<String?>('InwardUoM') ?? '',
        isFragile: row.read<int?>('isFragile') ?? 0,
        isPerishable: row.read<bool?>('isPerishable') ?? false,
        length: row.read<double?>('Length') ?? 0.0,
        manageBy: row.read<String?>('ManageBy') ?? '',
        outwardUoM: row.read<String?>('OutwardUoM') ?? '',
        outwardPackQty: row.read<double?>('OutwardPackQty') ?? 0.0,
        sKUCode: row.read<String?>('SizeCapacity') ?? '',
        specification: row.read<String?>('Status') ?? '',
        subCategory: row.read<String?>('SubCategory') ?? '',
        weight: row.read<double?>('Weight') ?? 0.0,
        width: row.read<double?>('Width') ?? 0.0,
        updatedBy: row.read<String?>('UpdatedBy') ?? '',
        updatedDateTime: row.read<String?>('UpdatedDateTime') ?? '',
        createdBy: row.read<int?>('CreatedBy') ?? 0,
        createdDateTime: row.read<String?>('CreatedDateTime') ?? '',
        hasExpiryDate: row.read<bool?>('hasExpiryDate') ?? false,
        height: row.read<double?>('Height') ?? 0.0,
        volume: row.read<double?>('Volume') ?? 0.0,
        traceid: row.read<String?>('traceid') ?? '',
        expiryDays: row.read<int?>('ExpiryDays') ?? 0,
        dispID: row.read<int?>('DispID') ?? 0,
      );
    }).toList();
  }

  static Future<List<HeaderData>> getallproduct(AppDatabase database) async {
    final result =
        await database.customSelect("Select * from drifitemmaster").get();
    log("resultresult::" + result.length.toString());
    return result.map((row) {
      return HeaderData(
        auditScheduleID: row.read<int?>('AuditSchedule_ID') ?? 0,
        id: row.read<int?>('Id') ?? 0,
        itemDisposition: row.read<int?>('ItemDisposition') ?? 0,
        itemType: row.read<String?>('ItemType') ?? '',
        itemCode: row.read<String?>('ItemCode') ?? '',
        brand: row.read<String?>('Brand') ?? '',
        category: row.read<String?>('Category') ?? '',
        itemName: row.read<String?>('ItemName') ?? '',
        brandCode: row.read<String?>('BrandCode') ?? '',
        clasification: row.read<String?>('Clasification') ?? '',
        color: row.read<String?>('Color') ?? '',
        itemDescription: row.read<String?>('ItemDescription') ?? '',
        itemGroup: row.read<String?>('ItemGroup') ?? '',
        modelNo: row.read<String?>('ModelNo') ?? '',
        movingType: row.read<int?>('MovingType') ?? 0,
        partCode: row.read<String?>('PartCode') ?? '',
        sizeCapacity: row.read<String?>('SizeCapacity') ?? '',
        status: row.read<String?>('Status') ?? '',
        taxRate: row.read<double?>('TaxRate') ?? 0.0,
        textNote: row.read<String?>('TextNote') ?? '',
        uoM: row.read<String?>('UoM') ?? '',
        imageURL: row.read<String?>('ImageURL') ?? '',
        inwardPackQty: row.read<double?>('InwardPackQty') ?? 0.0,
        inwardUoM: row.read<String?>('InwardUoM') ?? '',
        isFragile: row.read<int?>('isFragile') ?? 0,
        isPerishable: row.read<bool?>('isPerishable') ?? false,
        length: row.read<double?>('Length') ?? 0.0,
        manageBy: row.read<String?>('ManageBy') ?? '',
        outwardUoM: row.read<String?>('OutwardUoM') ?? '',
        outwardPackQty: row.read<double?>('OutwardPackQty') ?? 0.0,
        sKUCode: row.read<String?>('SizeCapacity') ?? '',
        specification: row.read<String?>('Status') ?? '',
        subCategory: row.read<String?>('SubCategory') ?? '',
        weight: row.read<double?>('Weight') ?? 0.0,
        width: row.read<double?>('Width') ?? 0.0,
        updatedBy: row.read<String?>('UpdatedBy') ?? '',
        updatedDateTime: row.read<String?>('UpdatedDateTime') ?? '',
        createdBy: row.read<int?>('CreatedBy') ?? 0,
        createdDateTime: row.read<String?>('CreatedDateTime') ?? '',
        hasExpiryDate: row.read<bool?>('hasExpiryDate') ?? false,
        height: row.read<double?>('Height') ?? 0.0,
        volume: row.read<double?>('Volume') ?? 0.0,
        traceid: row.read<String?>('traceid') ?? '',
        expiryDays: row.read<int?>('ExpiryDays') ?? 0,
        dispID: row.read<int?>('DispID') ?? 0,
      );
    }).toList();
  }
}
// Select  d.ChecklistTemplate From driftstocksnapmaster a
//  left join drifitemmaster b on a.ItemCode = b.ItemCode
//  left join driftbinmaster c on a.BinCode = c.Bincode
//  left join driftchecklistheader d on
//  (a.BinCode = d.BinCode or  'All' = d.BinCode) AND
//  (c.RackCode = d.RackCode or  'All' = d.RackCode) AND
//  (c.AreaCode = d.AreaCode or  'All' = d.AreaCode) AND
//  (c.ZoneCode = d.ZoneCode or  'All' = d.ZoneCode) AND
//  (a.WhsCode = d.WhsCode or  'All' = d.WhsCode) AND
//  (b.Category = d.Category or  'All' = d.Category) AND
//  (b.SubCategory = d.SubCategory or  'All' = d.SubCategory) AND
//  (b.Brand = d.Brand or  'All' = d.Brand) AND
//  (b.hasExpiryDate = d.hasExpiryDate or  '' = IS NULL(d.hasExpiryDate,'')) AND
//  (b.isFragile = d.isFragile or  '' = IS NULL(d.isFragile,'')) AND
//  (b.ItemCode = d.ItemCode or  'All' = d.ItemCode) AND
//  (b.Status = d.ItemStatus or  'All' = d.ItemStatus) AND
//  (b.ManageBy = d.ManageBy or  'All' = d.ManageBy) AND
//  (a.SerailBatch = d.SerialBatch or 'All' = d.SerialBatch) and
//  (d.Disposition = 'null' or 'All' = d.Disposition) and
//  (d.SerialBatchManualTyped = 0 or '' = IS NULL(d.SerialBatchManualTyped , '')) and
//  (d.WhileOffline = 0 or '' = IS NULL(d.WhileOffline , ''))
//  where
//   a.SerailBatch = "S00001-3"
