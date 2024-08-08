import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:verifytapp/Constant/ConstantRoutes.dart';
import 'package:verifytapp/Constant/Screen.dart';
import 'package:verifytapp/Controllers/DashBoardController/DashBoradControllers.dart';

import '../../timezonesetting.dart';
import 'PendingAudit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initConnectivity();
    checkConnectivity();
    connectivitySubscription =
        connectivity.onConnectivityChanged.listen(updateConnectionStatus);
  }

  final Connectivity connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> connectivitySubscription;
  List<ConnectivityResult> connectionStatus = [ConnectivityResult.none];

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

  bool isConnected = false;
  Future<bool> isNetworkConnected() async {
    late List<ConnectivityResult> result;
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet) {
      log('xxxxxxxx');
      return true;
    } else {
      log('yyyyyyyyyyyy');
      return false;
    }
  }

  Future<void> checkConnectivity() async {
    isConnected = false;
    bool hasConnected = await isNetworkConnected();
    setState(() {
      isConnected = hasConnected;
    });
    log("isConnectedisConnected::$isConnected");
  }

  void updateConnectionStatus(List<ConnectivityResult> result) {
    connectionStatus = result;
    // log('connectionStatusconnectionStatus2::$connectionStatus');
  }

  @override
  void dispose() {
    connectivitySubscription.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        height: Screens.padingHeight(context),
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: const Text('Home'),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: Screens.width(context) * 0.03,
                    right: Screens.width(context) * 0.03,
                    top: Screens.bodyheight(context) * 0.015),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     (MaterialPageRoute(
                            //         builder: (context) => NetworkTimeCheck())));
                            // context
                            //     .read<DashBoardCtrlProvider>()
                            //     .onItemTapped(1);
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: Screens.width(context) * 0.015,
                                right: Screens.width(context) * 0.015,
                                top: Screens.bodyheight(context) * 0.01),
                            width: Screens.width(context) * 0.46,
                            height: Screens.bodyheight(context) * 0.13,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.shopping_cart,
                                      color: theme.primaryColor,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        context
                                            .read<DashBoardCtrlProvider>()
                                            .selectedIndex = 1;

                                        Get.offAllNamed(
                                            ConstantRoutes.dashboard);
                                      },
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Screens.bodyheight(context) * 0.01,
                                ),
                                Text(
                                  'Outward',
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: Screens.bodyheight(context) * 0.015,
                                ),
                                Text(
                                  'Orders, Pickup, Deliveries',
                                  style: theme.textTheme.bodySmall?.copyWith(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: Screens.width(context) * 0.01,
                              right: Screens.width(context) * 0.01,
                              top: Screens.bodyheight(context) * 0.01),
                          width: Screens.width(context) * 0.46,
                          height: Screens.bodyheight(context) * 0.13,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.purple,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context
                                          .read<DashBoardCtrlProvider>()
                                          .selectedIndex = 1;

                                      Get.offAllNamed(ConstantRoutes.dashboard);
                                    },
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Screens.bodyheight(context) * 0.01,
                              ),
                              Text(
                                'Audit Schedules',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: Screens.bodyheight(context) * 0.015,
                              ),
                              Text(
                                'Stock Audit, Reconcillation',
                                style: theme.textTheme.bodySmall?.copyWith(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Screens.bodyheight(context) * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: Screens.width(context) * 0.01,
                              right: Screens.width(context) * 0.01,
                              top: Screens.bodyheight(context) * 0.01),
                          width: Screens.width(context) * 0.46,
                          height: Screens.bodyheight(context) * 0.13,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.bar_chart_outlined,
                                      color: Colors.indigo),
                                  GestureDetector(
                                    onTap: () {
                                      context
                                          .read<DashBoardCtrlProvider>()
                                          .selectedIndex = 1;

                                      Get.offAllNamed(ConstantRoutes.dashboard);
                                    },
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Screens.bodyheight(context) * 0.01,
                              ),
                              Text(
                                'Reports',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Stock Reports, Pending Order, Putaway',
                                style: theme.textTheme.bodySmall?.copyWith(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: Screens.width(context) * 0.01,
                              right: Screens.width(context) * 0.01,
                              top: Screens.bodyheight(context) * 0.01),
                          width: Screens.width(context) * 0.43,
                          height: Screens.bodyheight(context) * 0.13,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Screens.bodyheight(context) * 0.015,
            ),
            Container(
              padding: EdgeInsets.only(
                left: Screens.width(context) * 0.03,
              ),
              child: Text(
                'Overview',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Screens.bodyheight(context) * 0.01,
            ),
            Container(
              padding: EdgeInsets.only(
                left: Screens.width(context) * 0.03,
                right: Screens.width(context) * 0.02,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: Screens.width(context) * 0.01,
                          right: Screens.width(context) * 0.02,
                          top: Screens.bodyheight(context) * 0.01),
                      width: Screens.width(context) * 0.39,
                      height: Screens.bodyheight(context) * 0.09,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          // const Icon(
                          //   Icons.badge_rounded,
                          //   color: Colors.grey,
                          // ),
                          Center(
                            child: Text(
                              'New Orders',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              '4',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.cyan,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //   ],
                          // ),
                          SizedBox(
                            height: Screens.bodyheight(context) * 0.01,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Screens.width(context) * 0.025,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: Screens.width(context) * 0.01,
                          right: Screens.width(context) * 0.02,
                          top: Screens.bodyheight(context) * 0.01),
                      width: Screens.width(context) * 0.39,
                      height: Screens.bodyheight(context) * 0.09,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          // const Icon(
                          //   Icons.delete,
                          //   color: Colors.grey,
                          // ),
                          Center(
                            child: Text(
                              'Empty Bins',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              '32',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.cyan,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //   ],
                          // ),
                          SizedBox(
                            height: Screens.bodyheight(context) * 0.01,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: Screens.width(context) * 0.025,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: Screens.width(context) * 0.01,
                          right: Screens.width(context) * 0.02,
                          top: Screens.bodyheight(context) * 0.01),
                      width: Screens.width(context) * 0.39,
                      height: Screens.bodyheight(context) * 0.09,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          // const Icon(
                          //   Icons.shopping_cart,
                          //   color: Colors.grey,
                          // ),
                          Center(
                            child: Text(
                              'Putaway',
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              '30',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.cyan,
                                  fontSize: 17,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          //   ],
                          // ),
                          SizedBox(
                            height: Screens.bodyheight(context) * 0.01,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Screens.bodyheight(context) * 0.015,
            ),
            const PendingAudits(),
          ],
        ),
      ),
    );
  }
}
