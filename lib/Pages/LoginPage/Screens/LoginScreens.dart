import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:verifytapp/Pages/LoginPage/Widgets/HeaderPage.dart';

import '../../../Controllers/LoginController/LoginControllers.dart';

class LoginPageScreens extends StatefulWidget {
  const LoginPageScreens({super.key});

  @override
  State<LoginPageScreens> createState() => _LoginPageScreensState();
}

class _LoginPageScreensState extends State<LoginPageScreens>
    with WidgetsBindingObserver {
  final Connectivity connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> connectivitySubscription;
  List<ConnectivityResult> connectionStatus = [ConnectivityResult.none];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      callTimeEnableMethod();
      // context.read<LoginController>().clear();
      // context.read<LoginController>().init();
      initConnectivity();
      connectivitySubscription =
          connectivity.onConnectivityChanged.listen(updateConnectionStatus);
    });
  }

  static const platform = MethodChannel('com.buson.verifytapp/time');
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

  Future<void> _checkAutomaticTimeZoneSetting() async {
    bool isAutomatic;
    String networkTimeStatuss = '';
    _networkTimeStatus = '';
    try {
      isAutomatic = await platform.invokeMethod('checkNetworkTime');
      networkTimeStatuss = isAutomatic ? 'Enabled' : 'Disabled';
      _networkTimeStatus = networkTimeStatuss;

      if (_networkTimeStatus == 'Enabled') {
        context.read<LoginController>().clear();
        context.read<LoginController>().init();
        // ScaffoldMessenger.of(context).showSnackBar(
        //   const SnackBar(
        //     content: Text('Automatic time zone is already enabled.'),
        //     duration: Duration(seconds: 2),
        //   ),
        // );
      } else if (_networkTimeStatus == 'Disabled') {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                content:
                    const Text('Enable Network-Provided Time on Your Device '),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
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

  // @override
  // void dispose() {
  //   WidgetsBinding.instance.removeObserver(this);
  //   super.dispose();
  // }

  Future<void> initConnectivity() async {
    late List<ConnectivityResult> result;
    try {
      result = await connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }

    if (!mounted) {
      return Future.value(null);
    }

    return updateConnectionStatus(result);
  }

  void updateConnectionStatus(List<ConnectivityResult> result) {
    connectionStatus = result;
    // log('connectionStatusconnectionStatus::$connectionStatus');
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: const SingleChildScrollView(
        child: LoginHeader(),
      ),
    ));
  }

  // Container(
  //   child: ClipPath(
  //     clipper: MyCustomClipper2(),
  //     child: Container(
  //       color: Colors.blue,
  //     ),
  //   ),
  // )
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double offset = 130;
    Path path = Path();
    path.moveTo(-450, height - (height - offset));
    path.quadraticBezierTo(
        width / 4, 2 * offset, width / 0.5, height - (height - offset));
    path.quadraticBezierTo(3 * width / 4, 0, width, height - (height - offset));
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double width = size.width;
    double height = size.height;
    double offset = 130;
    Path path = Path();
    path.moveTo(width, height - (height - offset)); // Start from the right edge
    path.quadraticBezierTo(3 * width / 4, 2 * offset, width / 2,
        height - (height - offset)); // Adjust control points
    path.quadraticBezierTo(
        width / 4, 0, 0, height - (height - offset)); // Adjust control points
    path.lineTo(0, height); // Move to the bottom left
    path.lineTo(width, height); // Move to the bottom right
    path.lineTo(width, 0); // Move to the top right
    path.close(); // Close the path

    // double width = size.width;
    // double height = size.height;
    // double offset = 130;
    // Path path = Path();
    // path.moveTo(0, height - (height - offset));
    // path.quadraticBezierTo(
    //     width / 4, 2 * offset, width / 2, height - (height - offset));
    // path.quadraticBezierTo(3 * width / 4, 0, width, height - (height - offset));
    // path.lineTo(width, height);
    // path.lineTo(0, height);
    // path.lineTo(0, 0);
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    final lowPoint = size.height - 30;
    final highPoint = size.height - 60;

    // path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);

    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    // path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.blue.shade400
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0029148, size.height * 0.3942480);
    path_0.quadraticBezierTo(size.width * 0.1636094, size.height * 0.2269531,
        size.width * 0.2830000, size.height * 0.2126270);
    path_0.cubicTo(
        size.width * 0.3981562,
        size.height * 0.1848438,
        size.width * 0.5020445,
        size.height * 0.2245605,
        size.width * 0.6929432,
        size.height * 0.1750293);
    path_0.quadraticBezierTo(size.width * 0.8927165, size.height * 0.1125879,
        size.width * 1.0066043, size.height * 0.0004);
//
    path_0.quadraticBezierTo(size.width * 1.0042673, size.height * 0.4903613,
        size.width * 1.0038654, size.height * 0.7);
    path_0.cubicTo(
        //bottom right
        size.width * 1.2,
        size.height * 0.5,
        size.width * 0.85,
        size.height * 0.85,
        size.width * 0.575,
        size.height * 0.82);
    path_0.cubicTo(
        //bottom left
        size.width * 0.3752122,
        size.height * 0.8031445,
        size.width * 0.3185438,
        size.height * 0.8368359,
        size.width * 0.2239296,
        size.height * 0.8752051);
    path_0.quadraticBezierTo(size.width * 0.0939983, size.height * 0.9381152,
        size.width * 0.0049393, size.height * 1.0085059);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
