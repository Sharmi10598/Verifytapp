import 'dart:developer';

import 'package:sqflite/sqlite_api.dart';
import 'package:verifytapp/DBModel/ItemTable/LineDBTable.dart';
import 'package:verifytapp/Model/ScanPostModel/ScanPostDataaModel.dart';

import '../DBModel/CheckListDB/CheckListTDB.dart';
import '../Model/AuditModel/AuditActionModel.dart';
import '../Model/AuditModel/AuditByDeviceModel.dart';
import '../DBModel/DispositionListDB/DispositionListTDB.dart';
import '../DBModel/GetAuditByDevice/GetAuditByDeviceDBModel.dart';
import '../DBModel/ItemTable/HeaderDataTable.dart';
import '../DBModel/ScanDataPostDB/ScandatapostTDB.dart';
import '../DBModel/ScanDataPostDB/checklistDBB.dart';
import '../Model/CheckListModel/CheckLstModel.dart';
import '../Model/DispositionListModel/DispositionModel.dart';

class DBOperation {
  static Future insertAuditByDervice(
      Database db, List<GetAuditDataModel> values) async {
    var data = values.map((e) => e.toMap()).toList();
    var batch = db.batch();
    data.forEach((es) async {
      batch.insert(auditDataModelTableDB, es);
    });
    await batch.commit();
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $auditDataModelTableDB
     ''');
    log("QuotationFilteDB result:: ${result}");
  }

  static Future<List<Map<String, Object?>>> getAuditByDervice(
      Database db) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $auditDataModelTableDB
''');
    return result;
  }

  // static updateActionTable(int id, String status, Database db) async {
  //   final List<Map<String, Object?>> result = await db.rawQuery('''
  //     UPDATE $auditDataModelTableDB
  //   SET Status = "$status" WHERE Id = $id;
  //   ''');
  //   return result;
  // }
  static Future insertAuditHeaderData(
      Database db, List<HeaderData> values) async {
    var data = values.map((e) => e.toMap()).toList();
    var batch = db.batch();
    data.forEach((es) async {
      batch.insert(headerMasterTableDB, es);
    });
    await batch.commit();
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $headerMasterTableDB
     ''');
    log("HeadData insert result:: ${result.length}");
  }

  static Future insertscanpostData(
      Database db, List<ScanDataPost> values) async {
    var data = values.map((e) => e.toMap()).toList();
    var batch = db.batch();
    data.forEach((es) async {
      batch.insert(scanpostTabled, es);
    });
    await batch.commit();
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $scanpostTabled
     ''');
    log("scanpost result:: ${result}");
  }

  static Future<List<Map<String, Object?>>> getscandataData(Database db) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $scanpostTabled
''');
    log("scanpost Result::${result.toString()}");
    return result;
  }

// Serialbatch
// ItemCode
  static Future<List<Map<String, Object?>>> checkScandata(
      Database db, String serialbatch, String itemCode) async {
    log('''
SELECT * from $scanpostTabled where Serialbatch="$serialbatch" and ItemCode="$itemCode"
''');
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $scanpostTabled where Serialbatch="$serialbatch" and ItemCode="$itemCode"
''');
    log("checkScandata Result::${result.length.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> getchecklistAllData(
    Database db,
  ) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $scanchecklisttdb
''');
    log("scanchecklisttdb Result::${result.length.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> getchecklistData(
      Database db, int auditId) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $scanchecklisttdb where Auditid = $auditId
''');
    log("scanchecklisttdb Result::${result.length.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> getDeleteScanlistData(
      Database db, int auditId) async {
//     delete from SalesPay where docentry = $docEntry

    final List<Map<String, Object?>> result = await db.rawQuery('''
 delete from $scanpostTabled where Auditid = $auditId
''');
    log("scanchecklisttdb Result::${result.length.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> getDeletechecklistData(
      Database db, int auditId) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
delete from from $scanchecklisttdb where Auditid = $auditId
''');
    log("scanchecklisttdb Result::${result.length.toString()}");
    return result;
  }

  static Future insertchecklistData(
      Database db, List<DispListData> values) async {
    var data = values.map((e) => e.toMap()).toList();
    var batch = db.batch();
    data.forEach((es) async {
      batch.insert(scanchecklisttdb, es);
    });
    await batch.commit();
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $scanchecklisttdb
     ''');
    log("DispListData result:: ${result.length}");
  }

  static Future insertDispData(
      Database db, List<GetDisPositonList> values) async {
    var data = values.map((e) => e.toMap()).toList();
    var batch = db.batch();
    data.forEach((es) async {
      batch.insert(disPositonListDBT, es);
    });
    await batch.commit();
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $disPositonListDBT
     ''');
    log("Insert DispListData:: ${result.length}");
  }

  static Future<List<Map<String, Object?>>> getDispDataList(Database db) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT DISTINCT DisPositionVal FROM $disPositonListDBT where DisPositionVal IS NOT NULL
''');
    // log("disPositonListDBT Result::${result.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> getAllDispDataList(
    Database db,
    int dispCode,
  ) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * FROM $disPositonListDBT where DispID=$dispCode
''');
    log("Selected disPositonListDBT Result::${result.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> getAuditHeaderData(
      Database db) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $headerMasterTableDB
''');
    log("HeadDataDBTable Result::${result.length.toString()}");
    return result;
  }

  static Future insertAuditLineData(Database db, List<LineData> values) async {
    var data = values.map((e) => e.toMap()).toList();
    var batch = db.batch();
    data.forEach((es) async {
      batch.insert('LineDataTable', es);
    });
    await batch.commit();
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $lineDataDBTable
     ''');
    log("LineData result:: ${result.length}");
  }

  static Future<List<Map<String, Object?>>> getAuditLineData(
      Database db) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $lineDataDBTable
''');
    log("lineDataDBTable Result::${result.length.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> checkBinInAuditLineData(
      Database db, String columnVal, String binNum) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT * from $lineDataDBTable where $columnVal='$binNum'
''');
    log("checkBinInAuditLineData Result::${result.length.toString()}");
    return result;
  }

  static Future<List<Map<String, Object?>>> getBinInAuditLineData(
    Database db,
  ) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT BinCode, ItemCode, SerailBatch from $lineDataDBTable LIMIT 10
''');
    log("BinCode Result::${result.toString()}");
    return result;
  }

  // static Future insertCheckListData(
  //     Database db, List<CheckListLineData> values) async {
  //   var data = values.map((e) => e.toMap()).toList();
  //   var batch = db.batch();
  //   data.forEach((es) async {
  //     batch.insert(checkListDataDB, es);
  //   });
  //   await batch.commit();
  //   List<Map<String, Object?>> result = await db.rawQuery('''
  //   select * from $checkListDataDB
  //    ''');
  //   log("checkListDataDB result:: ${result.length}");
  // }

  static Future<List<Map<String, Object?>>> getCheckListData(
    Database db,
  ) async {
    final List<Map<String, Object?>> result = await db.rawQuery('''
SELECT *  from $checkListDataDB 
''');
    log("CheckListData Result::${result.toString()}");
    return result;
  }

  static Future<void> truncateAuditByDevice(Database db) async {
    await db.rawQuery('delete from $auditDataModelTableDB');
  }

  static Future<void> truncateAuditHeader(Database db) async {
    await db.rawQuery('delete from $headerMasterTableDB');
  }

  static Future<void> truncateAuditLine(Database db) async {
    await db.rawQuery('delete from $lineDataDBTable');
  }

  static Future<void> truncatedispval(Database db) async {
    await db.rawQuery('delete from $disPositonListDBT');
  }

  static Future<void> truncheckListDataDB(Database db) async {
    await db.rawQuery('delete from $checkListDataDB');
  }

  static Future<void> truncateScanpostDataT(Database db) async {
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $scanpostTabled
     ''');
    log("scanpost result:: ${result.length}");
    await db.rawQuery('delete from $scanpostTabled');
    List<Map<String, Object?>> result2 = await db.rawQuery('''
    select * from $scanpostTabled
     ''');
    log("scanpost result:: ${result2.length}");
  }

  static Future<void> truncateCheckListT(Database db) async {
    List<Map<String, Object?>> result = await db.rawQuery('''
    select * from $scanchecklisttdb
     ''');
    log("checklis11 result:: ${result.length}");
    await db.rawQuery('delete from $scanchecklisttdb');
    List<Map<String, Object?>> result2 = await db.rawQuery('''
    select * from $scanchecklisttdb
     ''');
    log("checklis22 result:: ${result2.length}");
  }
}
