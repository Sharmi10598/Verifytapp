import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:verifytapp/Constant/Configuration.dart';
import 'package:verifytapp/Constant/ConstantRoutes.dart';
import 'package:verifytapp/Constant/Helper.dart';
import 'package:verifytapp/DBHelper/DBOperations.dart';
import 'package:verifytapp/Model/ScanPostModel/ScanPostDataaModel.dart';
import 'package:verifytapp/Pages/OutWard/Widgets/OutwardScree.dart';
import 'package:verifytapp/Pages/DashBoardPages/Widgets/HomePage.dart';
import 'package:verifytapp/Pages/Inward/widgets/InwardScreen.dart';
import '../../Constant/ConstantSapValues.dart';
import '../../Constant/LocalUrl/GetLocalUrl.dart';
import '../../Constant/Screen.dart';
import '../../DBHelper/DBHelpers.dart';
import '../../Model/AuditModel/AuditByDeviceModel.dart';
import '../../Pages/AuditPages/Screens/AuditScreens.dart';
import '../../Pages/ConfigPage/ConfigPageScreen.dart';
import '../../Services/GetAuditApi/GetAuditByDeviceAPI.dart';

class DashBoardCtrlProvider extends ChangeNotifier {
  init() {
    // checkNeworkConnectivity();
    notifyListeners();
  }

  Config configg = Config();
  checkNeworkConnectivity() async {
    bool? noNetbool = await configg.haveNoInterNet();
    if (noNetbool == false) {
      log('netboolnetboolnetbool::$noNetbool');
      callGetAuditApi();
    } else {
      log('falsefalsddddde');
      await getAuditBydeviceData();
    }
    notifyListeners();
  }

  getAuditBydeviceData() async {
    openAuditList = [];
    Database db = (await DBHelper.getInstance())!;
    List<Map<String, Object?>> result2 =
        await DBOperation.getAuditByDervice(db);
    log('result2result2result2result2result2::${result2.length}');
    if (result2.isNotEmpty) {
      for (var i = 0; i < result2.length; i++) {
        if (result2[i]['Status'].toString() == 'Open' ||
            result2[i]['Status'].toString() == 'In-Process' ||
            result2[i]['Status'].toString() == 'Starting') {
          openAuditList.add(GetAuditDataModel(
              auditFrom: result2[i]['AuditFrom'].toString(),
              user: result2[i]['User'].toString(),
              percent: result2[i]['Percent'] != null
                  ? double.parse(result2[i]['Percent'].toString())
                  : 0,
              unitsScanned: result2[i]['UnitsScanned'] != null
                  ? int.parse(result2[i]['UnitsScanned'].toString())
                  : 0,
              totalItems: result2[i]['TotalItems'] != null
                  ? int.parse(result2[i]['TotalItems'].toString())
                  : 0,
              auditTo: result2[i]['AuditTo'].toString(),
              // blockTrans: bool.parse(result2[i][' blockTrans'].toString()),
              createdBy: result2[i]['CreatedBy'] != null
                  ? int.parse(result2[i]['CreatedBy'].toString())
                  : 0,
              createdDatetime: result2[i]['CreatedDatetime'].toString(),
              docDate: result2[i]['DocDate'].toString(),
              docEntry: result2[i]['DocEntry'] != null
                  ? int.parse(result2[i]['DocEntry'].toString())
                  : 0,
              docNum: result2[i]['DocNum'] != null
                  ? int.parse(result2[i]['DocNum'].toString())
                  : 0,
              endDate: result2[i]['EndDate'].toString(),
              remarks: result2[i]['Remarks'].toString(),
              // repeat: result2[i]['repeat'] != null
              //     ? bool.parse(result2[i]['repeat'].toString())
              //     : false,
              repeatDay: result2[i]['RepeatDay'] != null
                  ? int.parse(result2[i]['RepeatDay'].toString())
                  : 0,
              repeatFrequency: result2[i]['RepeatFrequency'].toString(),
              scheduleName: result2[i]['ScheduleName'].toString(),
              startDate: result2[i]['StartDate'].toString(),
              status: result2[i]['Status'].toString(),
              traceid: result2[i]['Traceid'].toString(),
              updatedBy: result2[i]['UpdatedBy'] != null
                  ? int.parse(result2[i]['UpdatedBy'].toString())
                  : 0,
              updatedDatetime: result2[i]['UpdatedDatetime'].toString(),
              whsCode: result2[i]['WhsCode'] != null
                  ? result2[i]['WhsCode'].toString()
                  : '',
              deviceCode: ''));
        }
      }
    }
  }

  int selectedIndex = 0;
  List<GetAuditDataModel> openAuditList = [];
  List<GetAuditDataModel> getAllAuditList = [];

  List<Widget> widgetOptions = [
    const HomePage(),
    const AuditAllScreens(),
    const BinScreenPage(),
    const SearchScreenPage(),
    const ConfigScreenPage()
    //  Text('Config',
    //     style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void onItemTapped(int index) {
    // log('index::$index');
    selectedIndex = 0;
    selectedIndex = index;

    notifyListeners();
  }

  // List<GetDisPositonList> dispositionDataList = [];
  // callDispValApi() async {
  //   Database db = (await DBHelper.getInstance())!;
  //   dispositionDataList = []; connectionStatusconnectionStatus:
  //   await DispListapi.getData().then((value) async {
  //     if (value.stsCode >= 200 && value.stsCode <= 210) {
  //       dispositionDataList = value.dispositionData;
  //       DBOperation.insertDispData(db, dispositionDataList);
  //     } else if (value.stsCode >= 400 && value.stsCode <= 400) {
  //       notifyListeners();
  //     }
  //   });
  // }

  // List<AuditScannLogDataModel> auditScannData = [];
  // String errorMsg = '';
  // callScannLockedApi(
  //   BuildContext context,
  //   ThemeData theme,
  // ) async {
  //   errorMsg = '';
  //   List<ScanDataPost> scandatax = [];
  //   List<CheckList> checklistt = [];
  //   Database db = (await DBHelper.getInstance())!;
  //   List<Map<String, Object?>> result2 = await DBOperation.getscandataData(db);
  //   List<Map<String, Object?>> result3 = await DBOperation.getchecklistData(db);
  //   if (result2.isNotEmpty && result3.isNotEmpty) {
  //     for (var ij = 0; ij < result3.length; ij++) {
  //       checklistt.add(CheckList(
  //           attachurl: result3[ij]['Attachurl'].toString(),
  //           auditid: int.parse(result3[ij]['Auditid'].toString()),
  //           checklistcode: result3[ij]['Checklistcode'].toString(),
  //           checklistvalue: result3[ij]['Checklistvalue'].toString()));
  //     }
  //     for (var i = 0; i < result2.length; i++) {
  //       scandatax.add(ScanDataPost(
  //           auditid: int.parse(result2[i]['Auditid'].toString()),
  //           bincode: result2[i]['Bincode'].toString(),
  //           devicecode: result2[i]['Devicecode'].toString(),
  //           ismanual: result2[i]['Ismanual'] != null
  //               ? int.parse(result2[i]['Ismanual'].toString())
  //               : 0,
  //           itemCode: result2[i]['ItemCode'].toString(),
  //           notes: result2[i]['Notes'].toString(),
  //           quantity: double.parse(result2[i]['Quantity'].toString()),
  //           scandatetime: result2[i]['Scandatetime'].toString(),
  //           serialbatch: result2[i]['Serialbatch'].toString(),
  //           stockstatus: result2[i]['Stockstatus'].toString(),
  //           templateid: int.parse(result2[i]['Templateid'].toString()),
  //           scanguid: result2[i]['scanguid'].toString(),
  //           whscode: result2[i]['Whscode'].toString(),
  //           checklist: checklistt));
  //     }

  //     ScannLockedAPiApi.checklist = checklistt;
  //     await ScannLockedAPiApi.getData(scandatax).then((value) async {
  //       if (value.stsCode >= 200 && value.stsCode <= 210) {
  //         auditScannData = value.scannData;
  //         log('getAuditList::${auditScannData.length}');
  //         notifyListeners();
  //       } else if (value.stsCode >= 400 && value.stsCode <= 410) {
  //         errorMsg = value.exception;
  //         apiResponseDialog(context, theme, errorMsg);
  //         notifyListeners();
  //       }
  //     });
  //     notifyListeners();
  //   }
  // }

  void onItemDetTapped(
    int index,
  ) {
    log('Index ItemDet::$index');
    selectedIndex = index;
    notifyListeners();
    Get.offAllNamed(ConstantRoutes.dashboard);
  }

  apiResponseDialog(BuildContext context, ThemeData theme, String apiRes) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, st) {
            // final theme=Theme.of(context)
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              insetPadding: const EdgeInsets.all(20),
              contentPadding: EdgeInsets.zero,
              content: Container(
                  padding: EdgeInsets.zero,
                  width: Screens.width(context),
                  //  height: Screens.bodyheight(context)*0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8))),
                      width: Screens.width(context),
                      height: Screens.bodyheight(context) * 0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: Screens.width(context) * 0.8,
                            child: Center(
                                child: Text("Alert",
                                    style: theme.textTheme.bodyLarge!
                                        .copyWith(color: Colors.white))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Screens.padingHeight(context) * 0.02,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(apiRes),
                    ),
                    SizedBox(
                      height: Screens.padingHeight(context) * 0.02,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            foregroundColor: Colors.white,
                            backgroundColor: theme.primaryColor),
                        onPressed: () {
                          Get.back();
                          // context.read<DashBoardCtrlProvider>().selectedIndex =
                          //     1;
                          // Get.offAllNamed(ConstantRoutes.dashboard);
                        },
                        child: const Text('Ok'))
                  ])),
            );
          });
        });
  }

  setURL() async {
    String? getCustUrl = await HelperFunctions.getHostDSP();
    String? getStockUrl = await HelperFunctions.getStockHostDSP();

    log('getStockUrlget:$getStockUrl');
    String hostip = '';
    if (getCustUrl != null) {
      for (int i = 0; i < getCustUrl.length; i++) {
        if (getCustUrl[i] == ":") {
          break;
        }
        // log("for ${hostip}");
        hostip = hostip + getCustUrl[i];
      }
    }

    // log("for last ${hostip}");
    HelperFunctions.saveHostSP(hostip);
    // ConstantValues.userNamePM = await HelperFunctions.getUserName();
    Url.queryApi = "${getCustUrl.toString()}/api/";
    Url.stockSnapApi = "${getStockUrl.toString()}/api/";
    log('  Url.queryApi Url.queryApi333::${Url.queryApi}:::stockSnapApi::${Url.stockSnapApi}');
  }

  callGetAuditApi() async {
    Database db = (await DBHelper.getInstance())!;
    List<GetAuditDataModel> getAuditList2 = [];
    String? deviceId = await HelperFunctions.getDeviceIDSharedPreference();
    await GetAuditByDeviceApi.getData(deviceId!).then((value) async {
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        getAuditList2 = value.auditData;
        log('getAllAuditList::${getAuditList2.length}');
        openAuditList = [];
        DBOperation.truncateAuditByDevice(db);
        DBOperation.insertAuditByDervice(db, getAuditList2);
        List<Map<String, Object?>> result2 =
            await DBOperation.getAuditByDervice(db);
        if (result2.isNotEmpty) {
          for (var i = 0; i < result2.length; i++) {
            if (result2[i]['Status'].toString() == 'Open' ||
                result2[i]['Status'].toString() == 'In-Process' ||
                result2[i]['Status'].toString() == 'Starting') {
              openAuditList.add(GetAuditDataModel(
                  auditFrom: result2[i]['AuditFrom'].toString(),
                  user: result2[i]['User'].toString(),
                  percent: result2[i]['Percent'] != null
                      ? double.parse(result2[i]['Percent'].toString())
                      : 0,
                  unitsScanned: result2[i]['UnitsScanned'] != null
                      ? int.parse(result2[i]['UnitsScanned'].toString())
                      : 0,
                  totalItems: result2[i]['TotalItems'] != null
                      ? int.parse(result2[i]['TotalItems'].toString())
                      : 0,
                  auditTo: result2[i]['AuditTo'].toString(),
                  // blockTrans: bool.parse(result2[i][' blockTrans'].toString()),
                  createdBy: result2[i]['CreatedBy'] != null
                      ? int.parse(result2[i]['CreatedBy'].toString())
                      : 0,
                  createdDatetime: result2[i]['CreatedDatetime'].toString(),
                  docDate: result2[i]['DocDate'].toString(),
                  docEntry: result2[i]['DocEntry'] != null
                      ? int.parse(result2[i]['DocEntry'].toString())
                      : 0,
                  docNum: result2[i]['DocNum'] != null
                      ? int.parse(result2[i]['DocNum'].toString())
                      : 0,
                  endDate: result2[i]['EndDate'].toString(),
                  remarks: result2[i]['Remarks'].toString(),
                  // repeat: result2[i]['repeat'] != null
                  //     ? bool.parse(result2[i]['repeat'].toString())
                  //     : false,
                  repeatDay: result2[i]['RepeatDay'] != null
                      ? int.parse(result2[i]['RepeatDay'].toString())
                      : 0,
                  repeatFrequency: result2[i]['RepeatFrequency'].toString(),
                  scheduleName: result2[i]['ScheduleName'].toString(),
                  startDate: result2[i]['StartDate'].toString(),
                  status: result2[i]['Status'].toString(),
                  traceid: result2[i]['Traceid'].toString(),
                  updatedBy: result2[i]['UpdatedBy'] != null
                      ? int.parse(result2[i]['UpdatedBy'].toString())
                      : 0,
                  updatedDatetime: result2[i]['UpdatedDatetime'].toString(),
                  whsCode: result2[i]['WhsCode'] != null
                      ? result2[i]['WhsCode'].toString()
                      : '',
                  deviceCode: ''));
            }
          }
        }
        // for (var i = 0; i < getAllAuditList.length; i++) {
        // if (getAllAuditList[i].status == 'Open' ||
        //     getAllAuditList[i].status == 'In-Process') {
        //   openAuditList.add(GetAuditDataModel(
        //         isStarting: false,
        //         auditFrom: getAllAuditList[i].auditFrom,
        //         auditTo: getAllAuditList[i].auditTo,
        //         deviceCode: getAllAuditList[i].deviceCode,
        //         user: getAllAuditList[i].user,
        //         percent: getAllAuditList[i].percent,
        //         blockTrans: getAllAuditList[i].blockTrans,
        //         unitsScanned: getAllAuditList[i].unitsScanned,
        //         totalItems: getAllAuditList[i].totalItems,
        //         createdBy: getAllAuditList[i].createdBy,
        //         createdDatetime: getAllAuditList[i].createdDatetime,
        //         docDate: getAllAuditList[i].docDate,
        //         docEntry: getAllAuditList[i].docEntry,
        //         docNum: getAllAuditList[i].docNum,
        //         endDate: getAllAuditList[i].endDate,
        //         remarks: getAllAuditList[i].remarks,
        //         repeat: getAllAuditList[i].repeat,
        //         repeatDay: getAllAuditList[i].repeatDay,
        //         repeatFrequency: getAllAuditList[i].repeatFrequency,
        //         scheduleName: getAllAuditList[i].scheduleName,
        //         startDate: getAllAuditList[i].startDate,
        //         status: getAllAuditList[i].status,
        //         traceid: getAllAuditList[i].traceid,
        //         updatedBy: getAllAuditList[i].updatedBy,
        //         updatedDatetime: getAllAuditList[i].updatedDatetime,
        //         whsCode: getAllAuditList[i].whsCode));
        //   }
        //   notifyListeners();
        // }
        notifyListeners();
      } else if (value.stsCode >= 400 && value.stsCode <= 410) {
        notifyListeners();
      }
    });
    notifyListeners();
  }
}
