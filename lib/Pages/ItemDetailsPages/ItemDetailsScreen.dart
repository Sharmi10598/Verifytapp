import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:verifytapp/Constant/Screen.dart';
import 'package:verifytapp/Controllers/AuditController/AuditControllers.dart';
import 'package:verifytapp/DBHelper/DBOperations.dart';
import '../../Controllers/ConfigPageController/ConfigScreenController.dart';
import '../../Controllers/DashBoardController/DashBoradControllers.dart';
import '../../DBHelper/DBHelpers.dart';
import '../../driftDB/driftTablecreation.dart';
import '../../driftDB/driftoperation.dart';
import '../QrScannerPage/QrPage.dart';

class ItemDetails extends StatefulWidget {
  ItemDetails({super.key, required this.title});
  String title;
  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> with WidgetsBindingObserver {
  bool bincodeScan = false;
  bool batchCodeScan = false;
  bool itemCodeScan = false;
  bool bincode = false;

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

  Future<void> _checkAutomaticTimeZoneSetting() async {
    bool isAutomatic;
    String networkTimeStatuss = '';
    _networkTimeStatus = '';
    try {
      isAutomatic = await platform.invokeMethod('checkNetworkTime');
      networkTimeStatuss = isAutomatic ? 'Enabled' : 'Disabled';
      _networkTimeStatus = networkTimeStatuss;

      if (_networkTimeStatus == 'Enabled') {
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    callTimeEnableMethod();
    // context.read<AuditCtrlProvider>().mycontroller[3].text = '';
    // context.read<AuditCtrlProvider>().mycontroller[4].text = '';
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          titleTextStyle:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Container(
            // height: Screens.bodyheight(context),
            padding: EdgeInsets.only(
              top: Screens.padingHeight(context) * 0.015,
              right: Screens.width(context) * 0.03,
              left: Screens.width(context) * 0.03,
              bottom: Screens.padingHeight(context) * 0.015,
            ),
            color: Colors.grey[300],
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(
                      top: Screens.bodyheight(context) * 0.01,
                      bottom: Screens.bodyheight(context) * 0.01),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          Database db = (await DBHelper.getInstance())!;
                          // DBOperation.truncateScanpostDataT(db);
                          // DBOperation.truncateCheckListT(db);
                        },
                        child: Text(
                            'Total Items Audited - ${context.watch<AuditCtrlProvider>().fetchAuditForDetails.totalItems ?? 0}',
                            style: theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: Screens.bodyheight(context) * 0.01),
                          child: const Divider(
                            thickness: 1.5,
                          )),
                      Text(
                          'Total Quantities Scanned - ${context.watch<AuditCtrlProvider>().fetchAuditForDetails.unitsScanned ?? 0}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 15))
                    ],
                  ),
                ),
                SizedBox(
                  height: Screens.bodyheight(context) * 0.02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        // context
                        //     .read<AuditCtrlProvider>()
                        //     .checkListformCreation(context, theme, 2);
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        // color: Colors.green,
                        width: Screens.padingHeight(context) * 0.3,
                        child: Text('Scan the Items',
                            style: theme.textTheme.bodyLarge?.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 17)),
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            foregroundColor: Colors.white,
                            backgroundColor: theme.primaryColor),
                        onPressed: () {
                          context.read<AuditCtrlProvider>().clearbtn();
                        },
                        child: const Text("Clear"))
                  ],
                ),

                // today only working for desings and api's functionality for bin scanning page and Audit actions page sir,
                // tomorrow will be complete local tables and other configurations
                SizedBox(
                  height: Screens.bodyheight(context) * 0.015,
                ),
                Form(
                  key: context.watch<AuditCtrlProvider>().formkey[2],
                  child: Column(
                    children: [
                      Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: TextFormField(
                          controller: context
                              .watch<AuditCtrlProvider>()
                              .mycontroller[2],
                          onTap: () {
                            context
                                    .read<AuditCtrlProvider>()
                                    .mycontroller[2]
                                    .text =
                                context
                                    .read<AuditCtrlProvider>()
                                    .mycontroller[2]
                                    .text;
                            context
                                .read<AuditCtrlProvider>()
                                .mycontroller[2]
                                .selection = TextSelection(
                              baseOffset: 0,
                              extentOffset: context
                                  .read<AuditCtrlProvider>()
                                  .mycontroller[2]
                                  .text
                                  .length,
                            );
                          },
                          onEditingComplete: () {
                            context.read<AuditCtrlProvider>().afterScanbinCode(
                                context,
                                theme,
                                'BinCode',
                                context
                                    .read<AuditCtrlProvider>()
                                    .mycontroller[2]
                                    .text);
                            context
                                .read<AuditCtrlProvider>()
                                .disableKeyBoard(context);
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '*Scan Bin';
                            } else if (value.isEmpty) {
                              return '';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            suffixIcon: ConfigController.isScanner == true
                                ? null
                                : IconButton(
                                    onPressed: () async {
                                      final database =
                                          (await AppDatabase.initialize())!;

                                      Database db =
                                          (await DBHelper.getInstance())!;
                                      // await driftoperation
                                      //     .getallLineColumnproduct(database);
                                      // await DBOperation.getBinInAuditLineData(db);
                                      ScannerPageState.bincodeScan = true;
                                      context
                                          .read<AuditCtrlProvider>()
                                          .mycontroller[4]
                                          .text = '';
                                      context
                                          .read<AuditCtrlProvider>()
                                          .mycontroller[3]
                                          .text = '';

                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => ScannerPage()));
                                    },
                                    icon: const Icon(Icons.qr_code_2_sharp)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Screens.width(context) * 0.03,
                                vertical: Screens.fullHeight(context) * 0.01),
                            labelText: 'Scan Bin',
                            labelStyle: theme.textTheme.bodyLarge
                                ?.copyWith(color: Colors.grey),
                            focusedBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            errorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Screens.bodyheight(context) * 0.01,
                ),
                Form(
                  key: context.watch<AuditCtrlProvider>().formkey[3],
                  child: Column(
                    children: [
                      Container(
                        color: context
                                .watch<AuditCtrlProvider>()
                                .mycontroller[2]
                                .text
                                .isNotEmpty
                            ? Colors.white
                            : Colors.grey[300],
                        alignment: Alignment.center,
                        child: TextFormField(
                          autofocus: context
                                  .watch<AuditCtrlProvider>()
                                  .mycontroller[2]
                                  .text
                                  .isNotEmpty
                              ? true
                              : false,
                          readOnly: context
                                  .watch<AuditCtrlProvider>()
                                  .mycontroller[2]
                                  .text
                                  .isEmpty
                              ? true
                              : false,
                          controller: context
                              .watch<AuditCtrlProvider>()
                              .mycontroller[3],
                          onTap: () {
                            context
                                    .read<AuditCtrlProvider>()
                                    .mycontroller[3]
                                    .text =
                                context
                                    .read<AuditCtrlProvider>()
                                    .mycontroller[3]
                                    .text;
                            context
                                .read<AuditCtrlProvider>()
                                .mycontroller[3]
                                .selection = TextSelection(
                              baseOffset: 0,
                              extentOffset: context
                                  .read<AuditCtrlProvider>()
                                  .mycontroller[3]
                                  .text
                                  .length,
                            );

                            // context
                            //         .read<AuditCtrlProvider>()
                            //         .mycontroller[3]
                            //         .text =
                            //     context
                            //         .read<AuditCtrlProvider>()
                            //         .mycontroller[3]
                            //         .text;
                            // context
                            //     .read<AuditCtrlProvider>()
                            //     .mycontroller[3]
                            //     .selection = TextSelection(
                            //   baseOffset: 0,
                            //   extentOffset: context
                            //       .read<AuditCtrlProvider>()
                            //       .mycontroller[3]
                            //       .text
                            //       .length,
                            // );
                          },
                          onChanged: (value) {},
                          onEditingComplete: () async {
                            if (context
                                .read<AuditCtrlProvider>()
                                .formkey[2]
                                .currentState!
                                .validate()) {
                              context
                                  .read<AuditCtrlProvider>()
                                  .afterScanSerialBatch(
                                    context,
                                    theme,
                                    'SerailBatch',
                                    context
                                        .read<AuditCtrlProvider>()
                                        .mycontroller[3]
                                        .text,
                                  );
                            }
                            context
                                .read<AuditCtrlProvider>()
                                .mycontroller[3]
                                .selection = TextSelection(
                              baseOffset: 0,
                              extentOffset: context
                                  .read<AuditCtrlProvider>()
                                  .mycontroller[3]
                                  .text
                                  .length,
                            );
                            if (ConfigController.isScanner == false) {
                              // FocusScope.of(context).unfocus();
                            }
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Scan Serial Batch';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            suffixIcon: ConfigController.isScanner == true
                                ? null
                                : IconButton(
                                    onPressed: () {
                                      if (context
                                          .read<AuditCtrlProvider>()
                                          .formkey[2]
                                          .currentState!
                                          .validate()) {
                                        ScannerPageState.batchCodeScan = true;
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => ScannerPage()));
                                      }
                                    },
                                    icon: const Icon(Icons.qr_code_2_sharp)),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Screens.width(context) * 0.03,
                                vertical: Screens.fullHeight(context) * 0.01),
                            labelText: 'Scan Serial Batch',
                            labelStyle: theme.textTheme.bodyLarge
                                ?.copyWith(color: Colors.grey),
                            focusedBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            errorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Screens.bodyheight(context) * 0.01,
                      ),
                      Container(
                        color: context
                                .watch<AuditCtrlProvider>()
                                .mycontroller[2]
                                .text
                                .isNotEmpty
                            ? Colors.white
                            : Colors.grey[300],
                        alignment: Alignment.center,
                        child: TextFormField(
                          readOnly: context
                                      .watch<AuditCtrlProvider>()
                                      .freezeItemCode ==
                                  true
                              ? true
                              : false,
                          onTap: () {
                            if (context
                                .read<AuditCtrlProvider>()
                                .formkey[2]
                                .currentState!
                                .validate()) {
                              context
                                      .read<AuditCtrlProvider>()
                                      .mycontroller[4]
                                      .text =
                                  context
                                      .read<AuditCtrlProvider>()
                                      .mycontroller[4]
                                      .text;
                              context
                                  .read<AuditCtrlProvider>()
                                  .mycontroller[4]
                                  .selection = TextSelection(
                                baseOffset: 0,
                                extentOffset: context
                                    .read<AuditCtrlProvider>()
                                    .mycontroller[4]
                                    .text
                                    .length,
                              );
                            }
                          },
                          controller: context
                              .watch<AuditCtrlProvider>()
                              .mycontroller[4],
                          // onEditingComplete: () {
                          //   context.read<AuditCtrlProvider>().afterScanSerialBatch(
                          //       context,
                          //       theme,
                          //       'ItemCode',
                          //       context
                          //           .read<AuditCtrlProvider>()
                          //           .mycontroller[4]
                          //           .text,
                          //       context
                          //           .read<AuditCtrlProvider>()
                          //           .mycontroller[2]
                          //           .text);
                          // },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Item Code';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Screens.width(context) * 0.03,
                                vertical: Screens.fullHeight(context) * 0.01),
                            labelText: 'Item Code',
                            labelStyle: theme.textTheme.bodyLarge
                                ?.copyWith(color: Colors.grey),
                            focusedBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            errorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Screens.bodyheight(context) * 0.01,
                      ),
                      Container(
                        color: context
                                .watch<AuditCtrlProvider>()
                                .mycontroller[2]
                                .text
                                .isNotEmpty
                            ? Colors.white
                            : Colors.grey[300],
                        alignment: Alignment.center,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          readOnly:
                              context.watch<AuditCtrlProvider>().freezeqty ==
                                          true ||
                                      context
                                          .watch<AuditCtrlProvider>()
                                          .mycontroller[2]
                                          .text
                                          .isEmpty
                                  ? true
                                  : false,
                          controller: context
                              .watch<AuditCtrlProvider>()
                              .mycontroller[5],
                          onTap: () {
                            if (context
                                .read<AuditCtrlProvider>()
                                .formkey[2]
                                .currentState!
                                .validate()) {
                              context
                                      .read<AuditCtrlProvider>()
                                      .mycontroller[5]
                                      .text =
                                  context
                                      .read<AuditCtrlProvider>()
                                      .mycontroller[5]
                                      .text;
                              context
                                  .read<AuditCtrlProvider>()
                                  .mycontroller[5]
                                  .selection = TextSelection(
                                baseOffset: 0,
                                extentOffset: context
                                    .read<AuditCtrlProvider>()
                                    .mycontroller[5]
                                    .text
                                    .length,
                              );
                            }
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Quantity';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Screens.width(context) * 0.03,
                                vertical: Screens.fullHeight(context) * 0.01),
                            labelText: 'Enter Quantity',
                            labelStyle: theme.textTheme.bodyLarge
                                ?.copyWith(color: Colors.grey),
                            focusedBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black54),
                            ),
                            focusedErrorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                            errorBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Screens.padingHeight(context) * 0.02,
                ),
                context.watch<AuditCtrlProvider>().dispvalList.isNotEmpty
                    ? Container(
                        child: Wrap(
                            spacing: 5.0, // width
                            runSpacing: 10.0, // height
                            children: context
                                .watch<AuditCtrlProvider>()
                                .listContainersCustomertags(
                                  theme,
                                  context,
                                )),
                      )
                    // ? Container(
                    //     // color: Colors.white,
                    //     child: Center(
                    //       child: Wrap(
                    //           spacing: 5.0, // width
                    //           runSpacing: 10.0, // height
                    //           children: context
                    //               .read<AuditCtrlProvider>()
                    //               .listContainersCustomertags(theme, context)),
                    //     ),
                    //   )
                    : Container(),
                SizedBox(
                  height: Screens.bodyheight(context) * 0.02,
                ),
                Container(
                  width: Screens.width(context) * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.only(
                    top: Screens.bodyheight(context) * 0.01,
                    right: Screens.width(context) * 0.02,
                    left: Screens.width(context) * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'SKU : ${context.watch<AuditCtrlProvider>().itemCode.isNotEmpty ? context.watch<AuditCtrlProvider>().itemCode : context.watch<AuditCtrlProvider>().mycontroller[4].text}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 15)),
                      Text(
                          'Item Name :${context.watch<AuditCtrlProvider>().itemName}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 15)),
                      // Text('S/N: S9012223JKKH',
                      //     style: theme.textTheme.bodyLarge?.copyWith(
                      //         fontWeight: FontWeight.w500, fontSize: 15)),
                      Text(
                          'BIN : ${context.watch<AuditCtrlProvider>().mycontroller[2].text}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 15)),
                      Text(
                          'Scanned at : ${context.watch<AuditCtrlProvider>().scanTime}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 15)),
                      Text(
                          'Condition : ${context.watch<AuditCtrlProvider>().isSelectedCusTag}',
                          style: theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 15)),
                      SizedBox(
                        height: Screens.padingHeight(context) * 0.01,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: Screens.padingHeight(context) * 0.07,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 50,
          margin: const EdgeInsets.only(right: 10, left: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                foregroundColor: Colors.white,
                backgroundColor: theme.primaryColor),
            onPressed: () {
              if (context
                      .read<AuditCtrlProvider>()
                      .formkey[2]
                      .currentState!
                      .validate() &&
                  context
                      .read<AuditCtrlProvider>()
                      .formkey[3]
                      .currentState!
                      .validate()) {
                context.read<AuditCtrlProvider>().checknextbtn(
                    context,
                    theme,
                    context.read<AuditCtrlProvider>().mycontroller[3].text,
                    context.read<AuditCtrlProvider>().mycontroller[4].text);
              }

              // context
              //     .read<AuditCtrlProvider>()
              //     .callScannLockedApi(context, theme);
            },
            child: const Center(
              child: Text('Next'),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_comment_rounded),
                label: 'Audit',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: 'Bin',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'Config',
              ),
            ],
            currentIndex: context.watch<DashBoardCtrlProvider>().selectedIndex,
            selectedItemColor: const Color(0xFF009292),
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(
              color: Color(0xFF009292),
            ),
            showUnselectedLabels: true,
            onTap: context.read<DashBoardCtrlProvider>().onItemDetTapped,
          ),
        ));
  }
}
//  linemaster limitresult::S00001-3::001@:: vSerailBatchSerailBatchxx:
// [log] linemaster limitresult::S00002DRESSINGTABLE-3::002 DRESSING TABLE:: B04
// [log] linemaster limitresult::S00006SILDUMMY-3::006 SIL dummy:: B015
// [log] linemaster limitresult::S00006SILDUMMYITEM-3::006 SIL dummy item:: B02
// [log] linemaster limitresult::S00006SILDUMMYITEM10-3::006 SIL dummy item10:: B09
// [log] linemaster limitresult::S00006SILDUMMYITEM11-3::006 SIL dummy item11:: B014
// [log] linemaster limitresult::S00006SILDUMMYITEM12-3::006 SIL dummy item12:: B013
// [log] linemaster limitresult::S00006SILDUMMYITEM120-3::006 SIL dummy item120:: B020
// [log] linemaster limitresult::S00006SILDUMMYITEM13-3::006 SIL dummy item13:: B019
// [log] linemaster limitresult::S00006SILDUMMYITEM14-3::006 SIL dummy item14:: B02
// [log] linemaster limitresult::S00006SILDUMMYITEM15-3::006 SIL dummy item15:: B05
// [log] linemaster limitresult::S00006SILDUMMYITEM16-3::006 SIL dummy item16:: B04
// [log] linemaster limitresult::S00006SILDUMMYITEM18-3::006 SIL dummy item18:: B03
// [log] linemaster limitresult::S00006SILDUMMYITEM19-3::006 SIL dummy item19:: B06
// [log] linemaster limitresult::S00006SILDUMMYITEM2-3::006 SIL dummy item2:: B03
// [log] linemaster limitresult::S00006SILDUMMYITEM21-3::006 SIL dummy item21:: B09
//  linemaster limitresult::S00006SILDUMMYITEM23-3::006 SIL dummy item23:: B015
// [log] linemaster limitresult::S00006SILDUMMYITEM24-3::006 SIL dummy item24:: B017
// [log] linemaster limitresult::S00006SILDUMMYITEM25-3::006 SIL dummy item25:: B04
// [log] linemaster limitresult::S00006SILDUMMYITEM26-3::006 SIL dummy item26:: B08
// [log] linemaster limitresult::S00006SILDUMMYITEM27-3::006 SIL dummy item27:: B07
// [log] linemaster limitresult::S00006SILDUMMYITEM28-3::006 SIL dummy item28:: B03
// [log] linemaster limitresult::S00006SILDUMMYITEM29-3::006 SIL dummy item29:: B06
// [log] linemaster limitresult::S00006SILDUMMYITEM3-3::006 SIL dummy item3:: B020
// [log] linemaster limitresult::S00006SILDUMMYITEM30-3::006 SIL dummy item30:: B08
// [log] linemaster limitresult::S00006SILDUMMYITEM31-3::006 SIL dummy item31:: B018
// [log] linemaster limitresult::S00006SILDUMMYITEM32-3::006 SIL dummy item32:: B015
// [log] linemaster limitresult::S00006SILDUMMYITEM35-3::006 SIL dummy item35:: B03
// [log] linemaster limitresult::S00006SILDUMMYITEM36-3::006 SIL dummy item36:: B015
// [log] linemaster limitresult::S00006SILDUMMYITEM37-3::006 SIL dummy item37:: B04
// [log] linemaster limitresult::S00006SILDUMMYITEM39-3::006 SIL dummy item39:: B015
