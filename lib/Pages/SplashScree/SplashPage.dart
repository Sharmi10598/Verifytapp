import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:verifytapp/Constant/ConstantRoutes.dart';
import 'package:verifytapp/Constant/Screen.dart';
import 'package:verifytapp/Controllers/LoginController/LoginControllers.dart';
import 'package:verifytapp/Pages/LoginPage/Screens/LoginScreens.dart';
import '../../Constant/Configuration.dart';
import '../../Constant/ConstantSapValues.dart';
import '../../Constant/Helper.dart';
import '../../Model/LoginModel/loginmodel.dart';
import '../../Services/LoginAPI/loginApi.dart';

class SplashScreenpage extends StatefulWidget {
  const SplashScreenpage({super.key});

  @override
  State<SplashScreenpage> createState() => SplashScreenpageState();
}

class SplashScreenpageState extends State<SplashScreenpage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    callTimeEnableMethod();
  }

  String userName = '';
  static String erroMsgg = '';

  String passWord = '';
  bool isLoading = true;

  static const platform = MethodChannel('com.example.verifytapp/time');
  String _networkTimeStatus = 'Unknown';
  Future<void> _openDateTimeSettings() async {
    Get.back();
    try {
      await platform.invokeMethod('openDateTimeSettings');
      // Wait for a short time to allow settings to be applied.
      await Future.delayed(const Duration(seconds: 1));
      // Recheck the status after navigating to settings.
      _checkAutomaticTimeZoneSetting();
    } on PlatformException catch (e) {
      // Handle error if needed
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkAutomaticTimeZoneSetting();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  Future<void> _checkAutomaticTimeZoneSetting() async {
    bool isAutomatic;
    String networkTimeStatuss = '';
    _networkTimeStatus = '';
    try {
      isAutomatic = await platform.invokeMethod('checkNetworkTime');
      networkTimeStatuss = isAutomatic ? 'Enabled' : 'Disabled';
      _networkTimeStatus = networkTimeStatuss;

      if (_networkTimeStatus == 'Enabled') {
        await checkLoginPage();
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(
        //     content: Text('Automatic time zone is already enabled.'),
        //     duration: Duration(seconds: 2),
        //   ),
        // );
      } else if (_networkTimeStatus == 'Disabled') {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content:
                    const Text('Enable Network-Provided Time on Your Device '),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _openDateTimeSettings();
                      },
                      child: const Text('Ok'))
                ],
              );
            });
      }
    } on PlatformException catch (e) {
      isAutomatic = false;
    }
    // setState(() {
    //   _isAutomaticTimeZoneEnabled = isAutomatic;
    // if (_isAutomaticTimeZoneEnabled) {
    //   // _updateCurrentDateTime();
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text('Automatic time zone is already enabled.'),
    //       duration: Duration(seconds: 2),
    //     ),
    //   );
    // }
    // });
  }

  callTimeEnableMethod() {
    // WidgetsBinding.instance.addObserver(this);
    _networkTimeStatus = '';
    _checkAutomaticTimeZoneSetting();
  }

  validateMethod(BuildContext context) async {
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
    }
    postLoginData.tenentID =
        (await HelperFunctions.getTenetIDSharedPreference1())!;
    postLoginData.deviceCode =
        await HelperFunctions.getDeviceIDSharedPreference();

    postLoginData.fcmToken =
        await HelperFunctions.getFCMTokenSharedPreference();

    postLoginData.username = userName;
    postLoginData.password = passWord;
    String? model = await Config.getdeviceModel();
    String? brand = await Config.getdeviceBrand();

    postLoginData.devicename = '$brand $model';
    ConstantValues.tenentID =
        await HelperFunctions.getTenetIDSharedPreference();

    await LoginAPi.getData(postLoginData).then((value) async {
      if (value.resCode! >= 200 && value.resCode! <= 200) {
        await HelperFunctions.saveTokenSharedPreference(value.token!);
        ConstantValues.token = value.token!;
        await HelperFunctions.savewhseCode(value.whsCode!);
        String? whsCode = await HelperFunctions.getWhsCode();
        log('whsCodewhsCodewhsCodewhsCode::::$whsCode');
        await HelperFunctions.saveUserLoggedInSharedPreference(true);
        Get.offAllNamed(ConstantRoutes.dashboard);

        log("message");
      } else if (value.resCode! >= 400 && value.resCode! <= 410) {
        log('value.respDescvalue.respDesc::${value.respDesc}');
        userName = '';
        passWord = '';
        LoginController.errorMsh = value.respDesc.toString();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPageScreens()));
        // errorMsh = 'Check your Internet Connection...!!';
      }
    });
  }

  checkLoginPage() async {
    // log(await HelperFunctions.getLogginUserCodeSharedPreference());
    userName = await HelperFunctions.getLogginUserCodeSharedPreference() ?? '';
    passWord = await HelperFunctions.getPasswordSharedPreference() ?? '';
    // ConstantValues.token = (await HelperFunctions.getTokenSharedPreference())!;
    log("userName $userName");
    log("passWord$passWord");
    Future.delayed(const Duration(seconds: 3), () async {
      isLoading = false;
      if (userName.isNotEmpty && passWord.isNotEmpty) {
        // ConstantValues.token =
        //     (await HelperFunctions.getTokenSharedPreference())!;
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => DashboardScreens()));
        await validateMethod(context);
      } else {
        setState(() {
          log('message1111');
          userName = '';
          passWord = '';
          Get.offAllNamed(ConstantRoutes.login);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/DesignerSplash.png'))),
        height: Screens.fullHeight(context),
        width: Screens.width(context),
        child: Container(
          child: const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        ),
        // child: const Image(image: AssetImage('assets/Designer.png')),
      ),
    );
  }
}
