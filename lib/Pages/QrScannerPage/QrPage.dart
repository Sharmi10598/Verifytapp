import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';
import 'package:verifytapp/Controllers/AuditController/AuditControllers.dart';

import '../ItemDetailsPages/ItemDetailsScreen.dart';

class ScannerPage extends StatefulWidget {
  @override
  ScannerPageState createState() => ScannerPageState();
}

// callBinBlockApi
class ScannerPageState extends State<ScannerPage> {
  String? barcode;
  MobileScannerController cameraController =
      MobileScannerController(detectionSpeed: DetectionSpeed.noDuplicates);
  List<Barcode> barcodes = [];
  static bool bincodeScan = false;
  static bool batchCodeScan = false;
  static bool itemCodeScan = false;
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Scanner'),
      ),
      body: Column(
        children: [
          Expanded(
            child: MobileScanner(
              controller: cameraController,
              onDetect: (capture) {
                barcodes = capture.barcodes;
                for (var barcode in barcodes) {
                  if (bincodeScan == true) {
                    log('barcode.rawValue::${barcode.rawValue}');
                    scanBinCode(theme, barcode.rawValue!);
                  } else if (batchCodeScan == true) {
                    log('Batch.rawValue::${barcode.rawValue}');
                    scanBatchCode(theme, barcode.rawValue!);
                  }
                  // else if (itemCodeScan == true) {
                  //   log('itemcode.rawValue::${barcode.rawValue}');
                  //   scanItemCode(theme, barcode.rawValue!);
                  // }
                }
              },
            ),
          ),
          // if (barcode != null)
          //   Padding(
          //     padding: const EdgeInsets.all(16.0),
          //     child: Text(
          //       'Barcode found: $barcode',
          //       style: const TextStyle(fontSize: 18),
          //     ),
          //   ),
        ],
      ),
    );
  }

// [log] linemaster itecode::001@
// [log] linemaster itecode::002 DRESSING TABLE
// [log] linemaster itecode::006 SIL dummy
// [log] linemaster itecode::006 SIL dummy item
// [log] linemaster itecode::006 SIL dummy item10
// [log] linemaster itecode::006 SIL dummy item11
// [log] linemaster itecode::006 SIL dummy item12
// [log] linemaster itecode::006 SIL dummy item120
// [log] linemaster itecode::006 SIL dummy item13
// [log] linemaster itecode::006 SIL dummy item14
  scanBinCode(ThemeData theme, String binValues) async {
    Navigator.pop(context);
    log('binValuesbinValues:$binValues');
    // BinCode Result::[{BinCode: B011}, {BinCode: B04}, {BinCode: B015}, {BinCode: B02}, {BinCode: B09}, {BinCode: B014}, {BinCode: B013},
    //s {BinCode: B020}, {BinCode: B019}, {BinCode: B02}]
    context
        .read<AuditCtrlProvider>()
        .afterScanbinCode(context, theme, 'BinCode', binValues);
    bincodeScan = false;
    // context.read<AuditCtrlProvider>().disableKeyBoard(context);
  }

  scanBatchCode(ThemeData theme, String binValues) {
    Navigator.pop(context);
    if (context.read<AuditCtrlProvider>().formkey[2].currentState!.validate()) {
      log('SerailBatchSerailBatchxx::$binValues');

      context.read<AuditCtrlProvider>().afterScanSerialBatch(
            context,
            theme,
            'SerailBatch',
            binValues,
            // context.read<AuditCtrlProvider>().mycontroller[2].text
          );
      // context.read<AuditCtrlProvider>().callBinBlockApi(context, theme);
      batchCodeScan = false;
    }
  }

  // scanItemCode(ThemeData theme, String binValues) {
  //   // context.read<AuditCtrlProvider>().callBinBlockApi(context, theme);
  //   Navigator.pop(context);
  //   // context.read<AuditCtrlProvider>().mycontroller[4].text = binValues;

  //   context.read<AuditCtrlProvider>().afterScanSerialBatch(
  //       context,
  //       theme,
  //       'ItemCode',
  //       binValues,
  //       context.read<AuditCtrlProvider>().mycontroller[2].text);
  //   itemCodeScan = false;
  // }
}

// class qrscanner extends StatefulWidget {
//   qrscanner({Key? key}) : super(key: key);

//   @override
//   State<qrscanner> createState() => qrscannerState();
// }

// class qrscannerState extends State<qrscanner> {
//   static bool orderscan = false;
  

  // MobileScannerController cameraController =
  //     MobileScannerController(detectionSpeed: DetectionSpeed.noDuplicates);
//   // OrderNewController? orderNewController;
//   List<Barcode> barcodes = [];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {
//       barcodes.clear();
//     });
//     log("barcodes:::" + barcodes.toString());
//   }

//   DateTime? currentBackPressTime;
//   Future<bool> onbackpress() {
//     DateTime now = DateTime.now();

//     if (currentBackPressTime == null ||
//         now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
//       currentBackPressTime = now;
//       Get.back();
//       return Future.value(true);
//     } else {
//       return Future.value(true);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: onbackpress,
//       child: Scaffold(
//         appBar: AppBar(
//           // leading: GestureDetector(
//           //   onTap: (){
//           //     Get.back();
//           //   },
//           //   child: Icon(Icons.arrow_back,color: Colors.amber,)),
//           title: Text("Mobile Scanner"),
//         ),
//         body: GestureDetector(
//           onHorizontalDragUpdate: (details) {
//             // Check if the user is swiping from left to right
//             print(details.primaryDelta);
//             // if (details.primaryDelta! > ConstantValues.slidevalue!) {
//             //   setState(() {
//             Navigator.pop(context);
//             // Get.offAllNamed(ConstantRoutes.ordertab);
//             // });
//             // }
//           },
//           child: MobileScanner(
//             controller: cameraController,
            // onDetect: (capture) {
            //   barcodes = capture.barcodes;
            //   for (var barcode in barcodes) {
            //     if (orderscan == true) {
            //       context.read<AuditCtrlProvider>().getBinList[0].binCode =
            //           barcode.rawValue ?? '';
            //       Navigator.pop(context);
            //       orderscan = false;

            //       // context.read<OrderNewController>().scanneddataget(barcode.rawValue ??'',context);
            //     }
            //   }
            // },
//           ),
//         ),
//       ),
//     );
//   }
// }
//   showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           insetPadding: EdgeInsets.zero,
//                           contentPadding: EdgeInsets.zero,
//                           content: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: theme.primaryColor,
//                                     borderRadius: const BorderRadius.only(
//                                         topLeft: Radius.circular(8),
//                                         topRight: Radius.circular(8))),
//                                 width: Screens.width(context) * 0.8,
//                                 height: Screens.padingHeight(context) * 0.06,
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Container(
//                                       width: Screens.width(context) * 0.6,
//                                       child: Center(
//                                           child: Text("Success",
//                                               style: theme.textTheme.bodyLarge!
//                                                   .copyWith(
//                                                       color: Colors.white))),
//                                     ),
//                                     IconButton(
//                                         onPressed: () {
//                                           Get.back();
//                                         },
//                                         icon: const Icon(Icons.close,
//                                             color: Colors.white))
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: Screens.padingHeight(context) * 0.02,
//                               ),
//                               const Text('Scanned Successfully'),
//                               SizedBox(
//                                 height: Screens.padingHeight(context) * 0.02,
//                               ),
//                               Container(
//                                 width: Screens.width(context) * 0.8,
//                                 height: Screens.padingHeight(context) * 0.06,
//                                 child: ElevatedButton(
//                                     onPressed: () async {
//                                       Navigator.pop(context);
//                                     },
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: theme.primaryColor,
//                                       foregroundColor: Colors.white,
//                                       textStyle: const TextStyle(),
//                                       shape: const RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.only(
//                                         bottomLeft: Radius.circular(10),
//                                         bottomRight: Radius.circular(10),
//                                       )),
//                                     ),
//                                     child: const Text("Ok")),
//                               ),
//                             ],
//                           ),
//                         );
//                       },
//                     );
//                     context.read<AuditCtrlProvider>().increaseQty();
//                   } else {
                    // Navigator.pop(context);

                    // showDialog(
                    //   context: context,
                    //   builder: (BuildContext context) {
                    //     return AlertDialog(
                    //       insetPadding: EdgeInsets.zero,
                    //       contentPadding: EdgeInsets.zero,
                    //       content: Column(
                    //         mainAxisSize: MainAxisSize.min,
                    //         children: [
                    //           Container(
                    //             decoration: BoxDecoration(
                    //                 color: theme.primaryColor,
                    //                 borderRadius: const BorderRadius.only(
                    //                     topLeft: Radius.circular(8),
                    //                     topRight: Radius.circular(8))),
                    //             width: Screens.width(context) * 0.8,
                    //             height: Screens.padingHeight(context) * 0.06,
                    //             child: Row(
                    //               mainAxisAlignment:
                    //                   MainAxisAlignment.spaceBetween,
                    //               children: [
                    //                 Container(
                    //                   width: Screens.width(context) * 0.6,
                    //                   child: Center(
                    //                       child: Text("Success",
                    //                           style: theme.textTheme.bodyLarge!
                    //                               .copyWith(
                    //                                   color: Colors.white))),
                    //                 ),
                    //                 IconButton(
                    //                     onPressed: () {
                    //                       Get.back();
                    //                     },
                    //                     icon: const Icon(Icons.close,
                    //                         color: Colors.white))
                    //               ],
                    //             ),
                    //           ),
                    //           SizedBox(
                    //             height: Screens.padingHeight(context) * 0.02,
                    //           ),
                    //           const Text(
                    //               'Scanned bin is not in the stock and item table'),
                    //           SizedBox(
                    //             height: Screens.padingHeight(context) * 0.02,
                    //           ),
                    //           Container(
                    //             width: Screens.width(context) * 0.8,
                    //             height: Screens.padingHeight(context) * 0.06,
                    //             child: ElevatedButton(
                    //                 onPressed: () async {
                    //                   Navigator.pop(context);
                    //                 },
                    //                 style: ElevatedButton.styleFrom(
                    //                   backgroundColor: theme.primaryColor,
                    //                   foregroundColor: Colors.white,
                    //                   textStyle: const TextStyle(),
                    //                   shape: const RoundedRectangleBorder(
                    //                       borderRadius: BorderRadius.only(
                    //                     bottomLeft: Radius.circular(10),
                    //                     bottomRight: Radius.circular(10),
                    //                   )),
                    //                 ),
                    //                 child: const Text("Ok")),
                    //           ),
                    //         ],
                    //       ),
                    //     );
                    //   },
                    // );
//                   }