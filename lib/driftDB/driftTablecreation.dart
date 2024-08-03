import 'dart:io';
import 'package:drift/native.dart';
import 'package:drift/drift.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
part 'driftTablecreation.g.dart';
//  {\"AuditSchedule_ID\":26,\"Id\":57,\"ItemName\":\"TVC GIFT SS UTENSIL FLASK\",\"ItemCode\":\".SS UTENSIL FLASK\",\"ItemType\":null,\"Brand\":\"TVC\",
//\"Category\":\"SA\",\"SubCategory\":\"GIFT\",\"ItemDescription\":null,\"ModelNo\":null,\"PartCode\":null,\"SKUCode\":null,\"BrandCode\":null,\"ItemGroup\":null,
//\"Specification\":null,\"SizeCapacity\":null,\"Color\":null,\"Clasification\":null,\"UoM\":null,\"Length\":null,\"Width\":null,\"Height\":null,\"Weight\":null,
//\"Volume\":null,\"InwardUoM\":null,\"InwardPackQty\":null,\"OutwardUoM\":null,\"OutwardPackQty\":null,\"isPerishable\":null,\"hasExpiryDate\":null,\"ExpiryDays\":null,
//\"isFragile\":null,\"TaxRate\":null,\"TextNote\":null,\"MovingType\":null,\"ManageBy\":\"B\",\"ImageURL\":null,\"Status\":\"Active\",\"CreatedBy\":1,
//\"CreatedDateTime\":\"2024-07-11T18:37:32.033\",\"UpdatedBy\":\"1\",\"UpdatedDateTime\":null,\"traceid\":\"26344002-95fc-4ee6-a0e2-f6f2cceb0527\"},

class DriftItemMaster extends Table {
  IntColumn get IMid => integer().autoIncrement()();
  IntColumn get auditScheduleID =>
      integer().named("AuditSchedule_ID").nullable()();
  IntColumn get id => integer().named("Id").nullable()();
  IntColumn get itemDisposition =>
      integer().named("ItemDisposition").nullable()();
  IntColumn get dispId => integer().named("DispID").nullable()();
  TextColumn get itemCode => text().named("ItemCode").nullable()();
  TextColumn get itemType => text().named("ItemType").nullable()();

  TextColumn get itemName => text().named("ItemName").nullable()();
  TextColumn get category => text().named("Category").nullable()();
  TextColumn get subCategory => text().named("SubCategory").nullable()();
  TextColumn get brand => text().named("Brand").nullable()();
  TextColumn get itemDescription =>
      text().named("ItemDescription").nullable()();
  TextColumn get modelNo => text().named("ModelNo").nullable()();
  TextColumn get partCode => text().named("PartCode").nullable()();
  TextColumn get skucode => text().named("Skucode").nullable()();
  TextColumn get brandCode => text().named("BrandCode").nullable()();
  TextColumn get itemGroup => text().named("ItemGroup").nullable()();
  TextColumn get specification => text().named("Specification").nullable()();
  TextColumn get sizeCapacity => text().named("SizeCapacity").nullable()();
  TextColumn get clasification => text().named("Clasification").nullable()();
  TextColumn get updatedDateTime =>
      text().named("UpdatedDateTime").nullable()();
  TextColumn get uoM => text().named("UoM").nullable()();
  RealColumn get taxRate => real().named("TaxRate").nullable()();
  TextColumn get imageUrl1 => text().named("ImageURL").nullable()();
  TextColumn get textNote => text().named("TextNote").nullable()();
  TextColumn get status => text().named("Status").nullable()();
  IntColumn get movingType => integer().named("MovingType").nullable()();
  TextColumn get traceId => text().named("traceid").nullable()();
  TextColumn get updatedBy => text().named("UpdatedBy").nullable()();
  IntColumn get createdBy => integer().named("CreatedBy").nullable()();
  RealColumn get lengthh => real().named("Length").nullable()();
  RealColumn get width => real().named("Width").nullable()();
  RealColumn get height => real().named("Height").nullable()();
  RealColumn get weight => real().named("Weight").nullable()();
  RealColumn get volume => real().named("Volume").nullable()();
  TextColumn get inwardUoM => text().named("InwardUoM").nullable()();
  RealColumn get inwardPackQty => real().named("InwardPackQty").nullable()();
  TextColumn get outwardUoM => text().named("OutwardUoM").nullable()();
  RealColumn get outwardPackQty => real().named("OutwardPackQty").nullable()();
  BoolColumn get isPerishable => boolean().named("isPerishable").nullable()();
  BoolColumn get hasExpiryDate => boolean().named("hasExpiryDate").nullable()();
  IntColumn get expiryDays => integer().named("ExpiryDays").nullable()();
  IntColumn get isFragile => integer().named("isFragile").nullable()();
  TextColumn get manageBy => text().named("ManageBy").nullable()();
  TextColumn get createdDateTime =>
      text().named("CreatedDateTime").nullable()();
  TextColumn get color => text().named('Color').nullable()();
// hasExpiryDate
  @override
  String get tableName => 'drifitemmaster';
}

// {\"AutoID\":370665,\"ScheduleID\":11,\"WhsCode\":\"W001\",\"ItemCode\":\"001@\",\"BinCode\":\"B011\",\"SerailBatch\":\"S00001-3\",\"Quantity\":1.00,
// \"UoM\":null,\"CreatedBy\":5,\"CreatedDatetime\":\"2024-07-23T12:31:13.98\",\"UpdatedBy\":null,\"UpdatedDatetime\":null,\"traceid\":\"a87bc362-b243-4dd4-8a13-68a7ac5b2ac0\"},
class DriftLineMaster extends Table {
  IntColumn get IMid => integer().autoIncrement()();
  IntColumn get autoId => integer().named("AutoID").nullable()();
  IntColumn get scheduleID => integer().named("ScheduleID").nullable()();

  TextColumn get whsCode => text().named("WhsCode").nullable()();
  IntColumn get itemDisposition =>
      integer().named("ItemDisposition").nullable()();
  TextColumn get itemCode => text().named("ItemCode").nullable()();
  TextColumn get binCode => text().named("BinCode").nullable()();

  TextColumn get serialbatch => text().named("SerailBatch").nullable()();
  RealColumn get quantity => real().named("Quantity").nullable()();

  TextColumn get uom => text().named("UoM").nullable()();
  IntColumn get createdBy => integer().named("CreatedBy").nullable()();
  TextColumn get createdDatetime =>
      text().named("CreatedDatetime").nullable()();
  TextColumn get inDate => text().named("InDate").nullable()();
  TextColumn get expDate => text().named("ExpDate").nullable()();

  TextColumn get updatedBy => text().named("UpdatedBy").nullable()();
  TextColumn get updatedDatetime =>
      text().named("UpdatedDatetime").nullable()();
  TextColumn get traceid => text().named("traceid").nullable()();

// hasExpiryDate InDate ExpDate
  @override
  String get tableName => 'driftstocksnapmaster';
}

class DriftScanPostMaster extends Table {
  IntColumn get IMid => integer().autoIncrement()();
  IntColumn get auditid => integer().named("auditid").nullable()();
  TextColumn get whscode => text().named("whscode").nullable()();
  TextColumn get bincode => text().named("bincode").nullable()();
  TextColumn get itemcode => text().named("itemcode").nullable()();
  TextColumn get serialbatch => text().named("serialbatch").nullable()();
  RealColumn get quantity => real().named("quantity").nullable()();
  TextColumn get stockstatus => text().named("stockstatus").nullable()();
  TextColumn get notes => text().named("notes").nullable()();
  TextColumn get devicecode => text().named("devicecode").nullable()();
  TextColumn get scandatetime => text().named("scandatetime").nullable()();
  IntColumn get ismanual => integer().named("ismanual").nullable()();
  IntColumn get templateid => integer().named("templateid").nullable()();
  TextColumn get scanguid => text().named("scanguid").nullable()();
  @override
  String get tableName => 'driftscanpostdatatable';
}

class DriftDispMaster extends Table {
  IntColumn get IMid => integer().autoIncrement()();
  IntColumn get auditid => integer().named("auditid").nullable()();
  TextColumn get checklistcode => text().named("checklistcode").nullable()();
  TextColumn get checklistvalue => text().named("checklistvalue").nullable()();
  TextColumn get attachurl => text().named("attachurl").nullable()();
  @override
  String get tableName => 'driftdisptable';
}

class DriftBinMaster extends Table {
  TextColumn get areaCode => text().named("AreaCode").nullable()();
  IntColumn get auditId => integer().named("Auditid").nullable()();
  TextColumn get binCode => text().named("Bincode").nullable()();
  TextColumn get rackCode => text().named("RackCode").nullable()();
  IntColumn get status => integer().named("Status").nullable()();
  TextColumn get whsCode => text().named("Whscode").nullable()();
  TextColumn get zoneCode => text().named("ZoneCode").nullable()();
  @override
  String get tableName => 'driftbinmaster';
}

// areaCode: json['AreaCode'].toString() ?? '',    binCode: json['BinCode'] ?? '',
//       brand: json['Brand'] ?? '',
//       category: json['Category'] ?? '',
//       createdBy: json['CreatedBy'] ?? 0,
//       createdDateTime: json['CreatedDateTime'] ?? '',
//       checklistTemplate: json['Checklist_Template'] ?? 0,
//       disposition: json['Disposition'] ?? '',
//       docEntry: json['DocEntry'] ?? 0,
//       forAgesAbove: json['ForAgesAbove'] ?? 0,
//       hasExpiryDate: json['hasExpiryDate'] ?? false,
//       isFragile: json['isFragile'] ?? 0,
//       itemCode: json['ItemCode'] ?? '',
//       itemStatus: json['ItemStatus'] ?? '',
//       manageBy: json['ManageBy'] ?? '',
//       previousDispute: json['Previous_Dispute'] ?? false,
//       serialBatch: json['SerialBatch'] ?? '',
//       serialBatchManualTyped: json['SerialBatch_ManualTyped'] ?? false,
//       sizeCapacity: json['SizeCapacity'] ?? '',
//       specification: json['Specification'] ?? '',
//       status: json['Status'] ?? false,
//       subCategory: json['SubCategory'] ?? '',
//       traceid: json['traceid'] ?? '',
//       updatedBy: json['UpdatedBy'] ?? '',
//       updatedDateTime: json['UpdatedDateTime'] ?? '',
//       whileOffline: json['WhileOffline'] ?? false,
//       whsCode: json['WhsCode'] ?? '',
//       zoneCode: json['ZoneCode'] ?? '',
class CheckListHeaderMaster extends Table {
  TextColumn get areaCode => text().named("AreaCode").nullable()();
  IntColumn get docEntry => integer().named("DocEntry").nullable()();
  TextColumn get binCode => text().named("BinCode").nullable()();
  TextColumn get rackCode => text().named("RackCode").nullable()();
  BoolColumn get status => boolean().named("Status").nullable()();
  TextColumn get whsCode => text().named("WhsCode").nullable()();
  TextColumn get zoneCode => text().named("ZoneCode").nullable()();
  TextColumn get category => text().named("Category").nullable()();
  TextColumn get brand => text().named("Brand").nullable()();
  IntColumn get createdBy => integer().named("CreatedBy").nullable()();
  TextColumn get createdDateTime =>
      text().named("CreatedDateTime").nullable()();
  IntColumn get checklistTemplate =>
      integer().named("ChecklistTemplate").nullable()();
  TextColumn get disposition => text().named("Disposition").nullable()();
  IntColumn get forAgesAbove => integer().named("ForAgesAbove").nullable()();
  BoolColumn get hasExpiryDate => boolean().named("hasExpiryDate").nullable()();
  IntColumn get isFragile => integer().named("isFragile").nullable()();
  TextColumn get itemCode => text().named("ItemCode").nullable()();
  TextColumn get itemStatus => text().named("ItemStatus").nullable()();
  TextColumn get manageBy => text().named("ManageBy").nullable()();
  BoolColumn get previousDispute =>
      boolean().named("PreviousDispute").nullable()();
  BoolColumn get serialBatchManualTyped =>
      boolean().named("SerialBatchManualTyped").nullable()();
  TextColumn get serialBatch => text().named("SerialBatch").nullable()();
  TextColumn get sizeCapacity => text().named("SizeCapacity").nullable()();
  TextColumn get specification => text().named("Specification").nullable()();
  TextColumn get subCategory => text().named("SubCategory").nullable()();
  TextColumn get updatedBy => text().named("UpdatedBy").nullable()();
  TextColumn get updatedDateTime =>
      text().named("UpdatedDateTime").nullable()();
  BoolColumn get whileOffline => boolean().named("WhileOffline").nullable()();
  TextColumn get traceid => text().named("traceid").nullable()();
  @override
  String get tableName => 'driftchecklistheader';
}

class DriftCheckLineMaster extends Table {
  IntColumn get docEntry => integer().named("docEntry").nullable()();
  IntColumn get docEntry1 => integer().named("docEntry1").nullable()();
  TextColumn get templateName => text().named("templateName").nullable()();
  TextColumn get checklistCode => text().named("checklistCode").nullable()();
  TextColumn get checklistName => text().named("checklistName").nullable()();
  TextColumn get listValue => text().named("listValue").nullable()();
  BoolColumn get acceptAttach => boolean().named("acceptAttach").nullable()();
  BoolColumn get acceptMultiValue =>
      boolean().named("acceptMultiValue").nullable()();
  BoolColumn get isMandaory => boolean().named("isMandaory").nullable()();
  IntColumn get createdBy => integer().named("createdBy").nullable()();
  TextColumn get createdDatetime =>
      text().named("createdDatetime").nullable()();
  TextColumn get updatedBy => text().named("updatedBy").nullable()();
  TextColumn get updatedDatetime =>
      text().named("updatedDatetime").nullable()();
  TextColumn get traceid => text().named("traceid").nullable()();

  @override
  String get tableName => 'driftchecklinemaster';
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }
    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [
  DriftItemMaster,
  DriftLineMaster,
  DriftBinMaster,
  CheckListHeaderMaster,
  DriftCheckLineMaster,
  DriftScanPostMaster,
  DriftDispMaster
])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
  static AppDatabase? _instance;
  static AppDatabase get instance {
    if (_instance == null) {
      throw Exception(
          "AppDatabase not initialized. Call AppDatabase.initialize() first.");
    }
    return _instance!;
  }

  static Future<AppDatabase?> initialize() async {
    if (_instance == null) {
      final directory = await getApplicationDocumentsDirectory();
      final path = join(directory.path, 'db.sqlite');

      _instance = AppDatabase(NativeDatabase(File(path)));
    }
    return _instance;
  }
}
