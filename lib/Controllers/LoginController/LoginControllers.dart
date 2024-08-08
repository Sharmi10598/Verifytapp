import 'dart:async';
import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqlite_api.dart';
import '../../Constant/Configuration.dart';
import '../../Constant/ConstantRoutes.dart';
import '../../Constant/ConstantSapValues.dart';
import '../../Constant/Helper.dart';
import '../../Constant/LocalUrl/GetLocalUrl.dart';
import '../../Constant/Screen.dart';
import '../../DBHelper/DBHelpers.dart';
import '../../DBHelper/DBOperations.dart';
import '../../Model/CheckListModel/CheckLstModel.dart';
import '../../Model/DispositionListModel/DispositionModel.dart';
import '../../Model/LoginModel/loginmodel.dart';
import '../../Pages/SplashScree/SplashPage.dart';
import '../../Services/GetDispositionList/CheckListApi.dart';
import '../../Services/GetDispositionList/GetDispositionListApi.dart';
import '../../Services/LoginAPI/loginApi.dart';
import 'package:flutter/services.dart';

import '../../Services/TenentApi/TenentidApi.dart';
import '../../driftDB/driftTablecreation.dart';
import '../../driftDB/driftoperation.dart';

class LoginController extends ChangeNotifier {
  // LoginController() {
  //   clear();
  // }
  List<TextEditingController> mycontroller =
      List.generate(20, (i) => TextEditingController());
  List<GlobalKey<FormState>> formkeys =
      List.generate(50, (i) => GlobalKey<FormState>());
  bool isloading = false;
  bool progrestext = false;
  bool erroMsgVisble = false;
  bool settingError = false;

  Future<SharedPreferences> pref = SharedPreferences.getInstance();

  static String errorMsh = '';
  clear() async {
    Database db = (await DBHelper.getInstance())!;
    mycontroller[0].clear();
    mycontroller[1].clear();
    mycontroller[3].clear();
    DBOperation.truncatedispval(db);
    //  await HelperFunctions.clearHost();
    await HelperFunctions.clearCheckedTennetIDSharedPref();
    // await HelperFunctions.clearhostIP();
    erroMsgVisble = true;
    settingError = true;
    notifyListeners();
  }

  void settingvalidate(BuildContext context) async {
    // await checkLoc();
    final pref2 = await pref;

    notifyListeners();
    if (formkeys[1].currentState!.validate()) {
      await pref2.setString(
        'tenantId',
        mycontroller[3].text.toString(),
      );
      callGetTenentIdApi(context);
      progrestext = true;
      errorMsh = "";
      erroMsgVisble = false;
      settingError = false;
      progrestext = false;
      notifyListeners();
      Navigator.pop(context);
    }
  }

  init() {
    if (mycontroller[3].text.isEmpty && errorMsh.isEmpty) {
      errorMsh = "Complete the setup..!!";
      notifyListeners();
    }
  }

  List<GetDisPositonList> dispositionDataList = [];
  List<CheckListLineData> ckeckLineDataList = [];
  List<CheckListHeader> ckeckHeaderDataList = [];

  callDispValApi() async {
    Database db = (await DBHelper.getInstance())!;
    dispositionDataList = [];
    await DispListapi.getData().then((value) async {
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        dispositionDataList = value.dispositionData;
        DBOperation.insertDispData(db, dispositionDataList);
      } else if (value.stsCode >= 400 && value.stsCode <= 400) {
        notifyListeners();
      }
    });
  }

//CheckListtApi
  callCheckListApi() async {
    final database = (await AppDatabase.initialize())!;

    // Database db = (await DBHelper.getInstance())!;
    ckeckLineDataList = [];
    ckeckHeaderDataList = [];
    await CheckListtApi.getData().then((value) async {
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        ckeckLineDataList = value.listData!.lineData;
        log('ckeckLineDataListckeckLineDataList::${ckeckLineDataList.length}');
        ckeckHeaderDataList = value.listData!.headerData;
        await driftoperation.insertCheckListHeader(
            ckeckHeaderDataList, database);
        await driftoperation.inserCheckLinedatabase(
            ckeckLineDataList, database);
        List<CheckListLineData> getckeckDataList =
            await driftoperation.getcheckListLineMasterdata(database);
        log('ckeckDataList:::${ckeckLineDataList.length}');
      } else if (value.stsCode >= 400 && value.stsCode <= 400) {
        notifyListeners();
      }
    });
  }

//   final firebaseMessaging = FirebaseMessaging.instance;
//  Future<String?> getToken() async {
//     return await firebaseMessaging.getToken();
//   }
  validateMethod(BuildContext context) async {
    if (formkeys[0].currentState!.validate()) {
      if (mycontroller[3].text.toString().trim().isEmpty) {
        errorMsh = "Complete the setup..!!";
      } else {
        isloading = true;
        notifyListeners();
        PostLoginData postLoginData = PostLoginData();
        String? fcm2 = await HelperFunctions.getFCMTokenSharedPreference();
        if (fcm2 == null) {
          fcm2 = "HGHJGFGHGGFD897657JKGJH";
          // fcm2 = (await getToken())!;
          print("FCM Token: $fcm2");
          await HelperFunctions.saveFCMTokenSharedPreference(fcm2);
        }
        String? deviceID = await HelperFunctions.getDeviceIDSharedPreference();
        log("deviceID:::$deviceID");
        if (deviceID == null) {
          deviceID = await Config.getdeviceId();
          print("deviceID::$deviceID");
          await HelperFunctions.saveDeviceIDSharedPreference(deviceID!);
          notifyListeners();
        }
        postLoginData.tenentID = mycontroller[3].text.toString().trim();
        await HelperFunctions.saveTenetIDSharedPreference1(
            mycontroller[3].text);
        postLoginData.deviceCode =
            await HelperFunctions.getDeviceIDSharedPreference();

        postLoginData.fcmToken =
            await HelperFunctions.getFCMTokenSharedPreference();

        postLoginData.username = mycontroller[0].text;
        postLoginData.password = mycontroller[1].text;
        String? model = await Config.getdeviceModel();
        String? brand = await Config.getdeviceBrand();

        postLoginData.devicename = '$brand $model';
        await HelperFunctions.saveTenetIDSharedPreference(
            mycontroller[3].text.toString().trim());
        ConstantValues.tenentID =
            await HelperFunctions.getTenetIDSharedPreference();

        await LoginAPi.getData(postLoginData).then((value) async {
          if (value.resCode! >= 200 && value.resCode! <= 200) {
            isloading = false;
            erroMsgVisble = false;
            errorMsh = '';
            await HelperFunctions.savewhseCode(value.whsCode!);
            String? whsCode = await HelperFunctions.getWhsCode();
            log('whsCodewhsCodewhsCodewhsCode::::$whsCode');
            ConstantValues.userNamePM = mycontroller[0].text;
            await HelperFunctions.saveUserName(mycontroller[0].text);

            await HelperFunctions.saveLogginUserCodeSharedPreference(
                mycontroller[0].text);
            await HelperFunctions.savePasswordSharedPreference(
                mycontroller[1].text);

            // await HelperFunctions.saveSapUrlSharedPreference(
            //     value.data!.endPointUrl);
            await HelperFunctions.saveTokenSharedPreference(value.token!);
            ConstantValues.token =
                (await HelperFunctions.getTokenSharedPreference())!;
            // await HelperFunctions.saveTenetIDSharedPreference(
            //     value.data!.tenantId);
            // await HelperFunctions.saveUserIDSharedPreference(
            //     value.data!.UserID);
            // ConstantValues.UserId = value.data!.UserID;
            // ConstantValues.Usercode = value.data!.userCode;
            // ConstantValues.Whsecode = value.data!.whsecode.toString();
            await HelperFunctions.saveUserLoggedInSharedPreference(true);

            log("message");

            // await HelperFunctions.savedbUserName(value.data!.UserID);

            // await HelperFunctions.saveUserType(value.data!.userType);
            // await HelperFunctions.savewhseCode(value.data!.whsecode!);

            mycontroller[0].clear();
            mycontroller[1].clear();
            callDispValApi();
            callCheckListApi();
            Get.offAllNamed(ConstantRoutes.dashboard);
            // } else if (value.loginstatus!.toLowerCase().contains("failed") &&
            //     value.data == null) {
            //   isloading = false;
            //   erroMsgVisble = true;
            //   errorMsh = value.loginMsg!;
            //   notifyListeners();
            // }
            notifyListeners();
          } else if (value.resCode! >= 400 && value.resCode! <= 410) {
            erroMsgVisble = true;
            isloading = false;
            errorMsh = value.excep!;
            log("errorMsh::$errorMsh");
            notifyListeners();
          } else {
            if (value.excep == 'No route to host') {
              isloading = false;
              erroMsgVisble = true;
              errorMsh = 'Check your Internet Connection...!!';
            } else if (value.loginMsg == "Catch") {
              isloading = false;
              erroMsgVisble = true;
              errorMsh =
                  '${value.resCode!}..!!Network Issue..\nTry again Later..!!';
            } else {
              isloading = false;
              erroMsgVisble = true;
              errorMsh = '${value.resCode!}..!!${value.excep!}';
            }
            notifyListeners();
          }
        });
      }
    }
  }

  callGetTenentIdApi(BuildContext context) {
    String? customerid = "";
    String? stocksnap = "";

    TenantIdApi.getData(mycontroller[3].text).then((value) async {
      if (value.stcode! >= 200 && value.stcode! <= 210) {
        if (value.customeridUrl != null) {
          customerid = value.customeridUrl;
          stocksnap = value.stocksnapUrl;
          print("url method::" + customerid.toString());
          await HelperFunctions.saveHostSP(customerid!.trim());
          await HelperFunctions.saveStockHostSP(stocksnap!.trim());
          await HelperFunctions.saveTenetIDSharedPreference(
              mycontroller[3].text.toString().trim());
          setURL();
          errorMsh = "";
          erroMsgVisble = false;
          settingError = false;
          notifyListeners();
        }
      } else if (value.stcode! >= 400 && value.stcode! <= 410) {
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Check Your Internet..!!'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
          dismissDirection: DismissDirection.up,
        ));
      }
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
    // HelperFunctions.saveHostSP(hostip);
    // ConstantValues.userNamePM = await HelperFunctions.getUserName();
    Url.queryApi = "${getCustUrl.toString()}/api/";
    Url.stockSnapApi = "${getStockUrl.toString()}/api/";
    log('  Url.queryApi Url.queryApi::${Url.queryApi}:::stockSnapApi::${Url.stockSnapApi}');
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
  // Map<String, dynamic> _settings = {};
  // Future<void> loadSettings() async {
  //   final settings = await DateTimeSettings.getDateTimeSettings();

  //   _settings = settings;
  //   log('Date Format: ${_settings['dateFormat']}');
  //   log('Time Format: ${_settings['timeFormat']}');
  //   log('Auto Time: ${_settings['autoTime']}');
  //   log('Auto Timezone: ${_settings['autoTimezone']}');
  //   notifyListeners();
  // }
}

// class DateTimeSettings {
//   static const platform = MethodChannel('com.example.app/datetime');

//   static Future<Map<String, dynamic>> getDateTimeSettings() async {
//     try {
//       final Map<String, dynamic> result =
//           await platform.invokeMethod('getDateTimeSettings');
//       return result;
//     } on PlatformException catch (e) {
//       print("Failed to get date and time settings: '${e.message}'.");
//       return {};
//     }
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:verifytapp/Constant/ConstantRoutes.dart';

// class LogincontrollProvider extends ChangeNotifier {
//   List<TextEditingController> mycontroller =
//       List.generate(10, (i) => TextEditingController());
//   GlobalKey<FormState> formkey1 = GlobalKey<FormState>();

//   init() {
//     clearAllData();
//   }

//   clearAllData() {
//     mycontroller = List.generate(10, (i) => TextEditingController());
//     notifyListeners();
//   }

//   signinMethod(BuildContext context) {
//     if (formkey1.currentState!.validate()) {
//       Get.offAllNamed(ConstantRoutes.dashboard);
//       notifyListeners();
//     } else {}
//   }
// }

// // class RPSCustomPainter extends CustomPainter {
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     // Layer 1

// //     Paint paint_fill_0 = Paint()
// //       ..color = Colors.blue.shade400
// //       ..style = PaintingStyle.fill
// //       ..strokeWidth = size.width * 0.00
// //       ..strokeCap = StrokeCap.butt
// //       ..strokeJoin = StrokeJoin.miter;

// //     Path path_0 = Path();
// //     path_0.moveTo(size.width * 0.0029148, size.height * 0.3942480);
// //     path_0.quadraticBezierTo(size.width * 0.1636094, size.height * 0.2269531,
// //         size.width * 0.2830000, size.height * 0.2126270);
// //     path_0.cubicTo(
// //         size.width * 0.3981562,
// //         size.height * 0.1848438,
// //         size.width * 0.5020445,
// //         size.height * 0.2245605,
// //         size.width * 0.6929432,
// //         size.height * 0.1750293);
// //     path_0.quadraticBezierTo(size.width * 0.8927165, size.height * 0.1125879,
// //         size.width * 1.0066043, size.height * 0.0004);
// // //
// //     path_0.quadraticBezierTo(size.width * 1.0042673, size.height * 0.4903613,
// //         size.width * 1.0038654, size.height * 0.7);
// //     path_0.cubicTo(
// //         //bottom right
// //         size.width * 1.2,
// //         size.height * 0.5,
// //         size.width * 0.85,
// //         size.height * 0.85,
// //         size.width * 0.575,
// //         size.height * 0.82);
// //     path_0.cubicTo(
// //         //bottom left
// //         size.width * 0.3752122,
// //         size.height * 0.8031445,
// //         size.width * 0.3185438,
// //         size.height * 0.8368359,
// //         size.width * 0.2239296,
// //         size.height * 0.8752051);
// //     path_0.quadraticBezierTo(size.width * 0.0939983, size.height * 0.9381152,
// //         size.width * 0.0049393, size.height * 1.0085059);

// //     canvas.drawPath(path_0, paint_fill_0);

// //     // Layer 1

// //     Paint paint_stroke_0 = Paint()
// //       ..color = const Color.fromARGB(255, 33, 150, 243)
// //       ..style = PaintingStyle.stroke
// //       ..strokeWidth = size.width * 0.00
// //       ..strokeCap = StrokeCap.butt
// //       ..strokeJoin = StrokeJoin.miter;

// //     canvas.drawPath(path_0, paint_stroke_0);
// //   }

// //   @override
// //   bool shouldRepaint(covariant CustomPainter oldDelegate) {
// //     return true;
// //   }
// // }
