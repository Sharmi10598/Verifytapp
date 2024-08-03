import 'dart:async';

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../Constant/Screen.dart';
import '../../../Controllers/DashBoardController/DashBoradControllers.dart';
import '../Widgets/NavigationScreen.dart';

class DashboardScreens extends StatefulWidget {
  const DashboardScreens({super.key});

  @override
  State<DashboardScreens> createState() => _DashboardScreensState();
}

class _DashboardScreensState extends State<DashboardScreens> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<DashBoardCtrlProvider>().init();
      context.read<DashBoardCtrlProvider>().onItemTapped;
      context.read<DashBoardCtrlProvider>().onItemDetTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => context.read<DashBoardCtrlProvider>().selectedIndex == 0
          ? onBackPressExit()
          : onBackPressHome(context),
      child: Scaffold(
          body: Center(
            child: context
                .watch<DashBoardCtrlProvider>()
                .widgetOptions
                .elementAt(context.read<DashBoardCtrlProvider>().selectedIndex),
          ),
          bottomNavigationBar: const NavigationBtnScreens()),
    );
  }

  DateTime? currentBackPressHome;
  Future<bool> onBackPressHome(BuildContext context) {
    DateTime now = DateTime.now();
    if (currentBackPressHome == null ||
        now.difference(currentBackPressHome!) > const Duration(seconds: 2)) {
      currentBackPressHome = now;
      context.read<DashBoardCtrlProvider>().onItemTapped(0);
      return Future.value(false);
    }
    return Future.value(false);
  }

  Future<bool> onBackPressExit() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            insetPadding: const EdgeInsets.all(10),
            contentPadding: const EdgeInsets.all(0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            // title: Text("Are you sure?"),
            // content: Text("Do you want to exit?"),
            content: SizedBox(
              width: Screens.width(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: Screens.width(context),
                    height: Screens.bodyheight(context) * 0.06,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,

                          textStyle: const TextStyle(
                              // fontSize: 12,
                              ),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )), //Radius.circular(6)
                        ),
                        child: const Text("Alert",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white))),
                  ),
                  SizedBox(
                    height: Screens.padingHeight(context) * 0.01,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 40),
                      width: Screens.width(context) * 0.85,
                      child: const Divider(
                        color: Colors.grey,
                      )),
                  Container(
                      alignment: Alignment.center,
                      // width: Screens.width(context)*0.5,
                      // padding: EdgeInsets.only(left:20),
                      child: const Text(
                        "Are you sure",
                        style: TextStyle(fontSize: 15),
                      )),
                  SizedBox(
                    height: Screens.padingHeight(context) * 0.01,
                  ),
                  Container(
                      alignment: Alignment.center,
                      // padding: EdgeInsets.only(left:20),
                      child: const Text("Do you want to exit?",
                          style: TextStyle(fontSize: 15))),
                  Container(
                      padding: const EdgeInsets.only(left: 40),
                      width: Screens.width(context) * 0.85,
                      child: const Divider(color: Colors.grey)),
                  SizedBox(
                    height: Screens.bodyheight(context) * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Screens.width(context) * 0.47,
                        height: Screens.bodyheight(context) * 0.06,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,

                              // primary: theme.primaryColor,
                              textStyle: const TextStyle(color: Colors.white),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(0),
                              )),
                            ),
                            onPressed: () {
                              exit(0);
                            },
                            child: const Text(
                              "Yes",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: Screens.width(context) * 0.47,
                        height: Screens.bodyheight(context) * 0.06,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,

                              // primary: theme.primaryColor,
                              textStyle: const TextStyle(color: Colors.white),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(10),
                              )),
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pop(false);
                              });
                              // context.read<EnquiryUserContoller>().checkDialogCon();
                            },
                            child: const Text(
                              "No",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // actions: [
            //   TextButton(
            //     onPressed: () => Navigator.of(context).pop(false),
            //     child: Text("No"),
            //   ),
            //   TextButton(
            //       onPressed: () {
            //         exit(0);
            //       },
            //       child: Text("yes"))
            // ],
          ),
        )) ??
        false;
  }
}
