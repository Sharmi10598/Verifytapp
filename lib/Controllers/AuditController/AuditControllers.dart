import 'dart:convert';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sqflite/sqflite.dart';
import '../../Model/CheckListModel/CheckLstModel.dart';
import '../../Model/DispositionListModel/DispositionModel.dart';
import '../../Model/ScanPostModel/ScanPostDataaModel.dart';
import '../../Services/loadCompleteApi.dart';
import '../../driftDB/driftTablecreation.dart';
import '../../driftDB/driftoperation.dart';
import '../ConfigPageController/ConfigScreenController.dart';
import 'Dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:verifytapp/Constant/Configuration.dart';
import 'package:verifytapp/DBHelper/DBOperations.dart';
import '../../Constant/Helper.dart';
import '../../Constant/Screen.dart';
import '../../DBHelper/DBHelpers.dart';
import '../../Model/AuditModel/AuditActionModel.dart';
import '../../Model/AuditModel/AuditModels.dart';
import '../../Model/AuditModel/AuditByDeviceModel.dart';
import '../../Model/BinDetailsModel/DefaultBinModel.dart';
import '../../Model/BinDetailsModel/ScannLogModel.dart';
import '../../Model/UserDetailsModel/UserDetailsModels.dart';
import '../../Services/BinLockApi/BinLockedApi.dart';
import '../../Services/BinLockApi/ScannlogAPI.dart';
import '../../Services/GetAuditApi/AuditActionApi.dart';
import '../../Services/GetAuditApi/AuditCancelApi.dart';
import '../../Services/GetAuditApi/AuditRescheduleApi.dart';
import '../../Services/GetAuditApi/GetAuditByDeviceAPI.dart';
import '../../Services/GetBinDetailsApi/GetDefaultBinDetApi.dart';
import '../../Services/UserDetails/userDetailsApi.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:uuid/uuid.dart';

class AuditCtrlProvider extends ChangeNotifier {
  List<AuditModelList> auditList = [];
  Config config = Config();

  init(BuildContext context, ThemeData theme) async {
    final database = (await AppDatabase.initialize())!;
    // callDispValApi();
    audioPlayer = AudioPlayer();

    Database db = (await DBHelper.getInstance())!;
    clearAllData();
    callGetAuditApi(context, theme);
    getCheckListForm();
    checkDeviceType();
    checkNeworkConnectivity(context, theme);
    // await driftoperation.getallLineproduct(database);
    // await driftoperation.getallproduct(database);
  }

  // getcheckListdata() async {
  //   Database db = (await DBHelper.getInstance())!;
  //   // await DBOperation.truncheckListDataDB(db);
  //   // await callCheckListApi();
  //   List<Map<String, Object?>> checkListResult2 =
  //       await DBOperation.getCheckListData(db);
  //   for (var i = 0; i < checkListResult2.length; i++) {
  //     getCkeckDataList.add(CheckListLineData(
  //         checklistName: checkListResult2[i]['ChecklistName'].toString(),
  //         acceptAttach:
  //             bool.parse(checkListResult2[i]['AcceptAttach'].toString()),
  //         acceptMultiValue:
  //             bool.parse(checkListResult2[i]['AcceptMultiValue'].toString()),
  //         checklistCode: checkListResult2[i]['ChecklistCode'].toString(),
  //         createdBy: int.parse(checkListResult2[i]['CreatedBy'].toString()),
  //         createdDatetime: checkListResult2[i]['ChecklistName'].toString(),
  //         docEntry: int.parse(checkListResult2[i]['DocEntry'].toString()),
  //         docEntry1: int.parse(checkListResult2[i]['DocEntry1'].toString()),
  //         isMandaory: bool.parse(checkListResult2[i]['isMandaory'].toString()),
  //         listValue: checkListResult2[i]['ListValue'].toString(),
  //         templateName: checkListResult2[i]['TemplateName'].toString(),
  //         traceid: checkListResult2[i]['Traceid'].toString(),
  //         updatedBy: checkListResult2[i]['UpdatedBy'].toString(),
  //         updatedDatetime: checkListResult2[i]['UpdatedDatetime'].toString()));
  //   }

  //   notifyListeners();
  // }

  // List<CheckListLineData> ckeckLineDataList = [];
  // List<CheckListHeader> ckeckHeaderDataList = [];
  // callCheckListApi() async {
  //   final database = (await AppDatabase.initialize())!;

  //   // Database db = (await DBHelper.getInstance())!;
  //   ckeckLineDataList = [];
  //   ckeckHeaderDataList = [];
  //   await CheckListtApi.getData().then((value) async {
  //     if (value.stsCode >= 200 && value.stsCode <= 210) {
  //       ckeckLineDataList = value.listData!.lineData;
  //       ckeckHeaderDataList = value.listData!.headerData;
  //       await driftoperation.insertCheckListHeader(
  //           ckeckHeaderDataList, database);
  //       await driftoperation.inserCheckLinedatabase(
  //           ckeckLineDataList, database);
  //       List<CheckListLineData> getckeckDataList =
  //           await driftoperation.getcheckListMasterdata(database);
  //       log('ckeckDataList:::${ckeckLineDataList.length}');
  //     } else if (value.stsCode >= 400 && value.stsCode <= 400) {
  //       notifyListeners();
  //     }
  //   });
  // }

  bool freezeqty = false;
  bool freezeItemCode = true;

  List<LineData> lineresult = [];
  List<HeaderData> headerresult = [];
  List<CheckListData> getCkeckDataList = [];

  clearAllData() async {
    String firDt = DateTime.now().toString();
    log("CCCCCCCCCCCCCCCC:::" + config.firstDate());
    getAuditList = [];
    openAuditList = [];
    completedAuditList = [];
    upcomingtAuditList = [];
    dispAllvalList = [];
    scandata = [];
    assignvalue = '';
    checklistdata = [];
    isLoading = true;
    mycontroller = List.generate(20, (i) => TextEditingController());
    apidate = '';
    isClickedStart = false;
    errorMsg = '';
    freezeqty = false;
    isSelectedCusTag = '';
    itemCode = '';
    skuCosde = '';
    serialBatch = '';
    auditList = [];
    scanTime = '';
    dispvalList = [];
    notifyListeners();
  }

  Future imagetoBinary2(ImageSource source, BuildContext context) async {
    List<File> filesz = [];
    // await LocationTrack.checkcamlocation();
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    log("image::$image");
    log("image22::${image.name}");
    // files.add(File());
    // if(filedata.isEmpty){
    filedata.clear();
    filesz.clear();
    // }
    filesz.add(File(image.path));

    log("filesz lenghthhhhh::::::${filedata.length}");
    if (files.length <= 4) {
      for (int i = 0; i < filesz.length; i++) {
        files.add(filesz[i]);
        List<int> intdata = filesz[i].readAsBytesSync();
        String fileName = filesz[i].path.split('/').last;
        String fileBytes = base64Encode(intdata);
        Directory tempDir = await getTemporaryDirectory();
        String tempPath = tempDir.path;
        String fullPath = '${tempDir.path}/$fileName';
        if (Platform.isAndroid) {
          filedata.add(
              FilesData(fileBytes: base64Encode(intdata), fileName: fullPath
                  // files[i].path.split('/').last
                  ));
        } else {
          filedata.add(
              FilesData(fileBytes: base64Encode(intdata), fileName: image.path
                  // files[i].path.split('/').last
                  ));
        }
        // filedata.add(FilesData(
        //     fileBytes: base64Encode(intdata),
        //     fileName: fullPath));
        log("filename::$fullPath");
        log("filename::${filedata[i].fileName}");

        // callProfileUpdateApi1(filedata[i].fileName,image.name,context);
      }
      // log("filesz lenghthhhhh::::::" + filedata.length.toString());
      notifyListeners();

      // return null;
    } else {
      // showtoast();
    }
    log("camera fileslength${files.length}");
    log("camera filesdatalength${filedata.length}");
    notifyListeners();

    // showtoast();
  }

  sheetbottom(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Wrap(
            children: [
              SizedBox(
                  height: Screens.padingHeight(context) * 0.13,
                  width: Screens.width(context) * 0.35,
                  child: IconButton(
                    color: theme.primaryColor,
                    onPressed: () {
                      selectattachment(context);
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.image,
                      size: 60,
                    ),
                  )),
              SizedBox(
                  height: Screens.padingHeight(context) * 0.13,
                  width: Screens.width(context) * 0.4,
                  child: IconButton(
                    color: theme.primaryColor,
                    onPressed: () {
                      imagetoBinary2(ImageSource.camera, context);
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.add_a_photo,
                      size: 60,
                    ),
                  ))
            ],
          );
        },
      );
    }
  }

  List<File> files = [];
  FilePickerResult? result;
  List<FilesData> filedata = [];

  disableKeyBoard(BuildContext context) {
    log('message un focusssss1111:::');
    FocusScope.of(context).unfocus();
    notifyListeners();
  }

  selectattachment(BuildContext context) async {
    List<File> filesz = [];
    log(files.length.toString());
    log('filessssssssssssssssssssss');
    // result = await FilePicker.platform.pickFiles(allowMultiple: false);
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      log("image::$result");
      log("image22::${result!.names.remove}");

      String? urlimage = result!.names[0];
      log("urlimage::$urlimage");
      // if(filedata.isEmpty){
      files.clear();
      filesz.clear();
      filedata.clear();
      // }

      log("filedata::${filedata.length}");

      filesz = result!.paths.map((path) => File(path!)).toList();

      // if (filesz.length != 0) {
      //  int remainingSlots = 1 - files.length;
      if (filesz.length <= 1) {
        for (int i = 0; i < filesz.length; i++) {
          // createAString();

          // showtoast();
          files.add(filesz[i]);
          log("Files Lenght :::::${files.length}");
          List<int> intdata = filesz[i].readAsBytesSync();
          filedata.add(FilesData(
              fileBytes: base64Encode(intdata), fileName: filesz[i].path));
          notifyListeners();

          //New
          // XFile? photoCompressedFile =await testCompressAndGetFile(filesz[i],filesz[i].path);
          // await FileStorage.writeCounter('${photoCompressedFile!.name}_1', photoCompressedFile);
          //

          // callProfileUpdateApi1(
          //     filedata[i].fileName, urlimage.toString(), context);
          // log("filedata222::${filedata.length}");
          // return null;
        }
      } else {
        // showtoast();
        notifyListeners();
      }
      notifyListeners();
    }
  }

  String isSelectedCusTag = '';
  selectCustomerTag(String code) {
    isSelectedCusTag = code;
    notifyListeners();
  }

  selectFirstTapVal() {
    if (dispvalList.isNotEmpty) {
      isSelectedCusTag = dispvalList[0].dispListVal.toString();
      notifyListeners();
    }
  }

  List<Widget> listContainersCustomertags(
      ThemeData theme, BuildContext context) {
    return List.generate(
        dispvalList.length,
        (index) => InkWell(
              onTap: () {
                isSelectedCusTag = '';
                selectCustomerTag(dispvalList[index].dispListVal.toString());
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: isSelectedCusTag ==
                            dispvalList[index].dispListVal.toString()
                        ? theme.primaryColor.withOpacity(0.2)
                        : Colors.white,
                    border: Border.all(color: theme.primaryColor, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Text(dispvalList[index].dispListVal.toString(),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: isSelectedCusTag ==
                              dispvalList[index].dispListVal.toString()
                          ? theme.primaryColor //,Colors.white
                          : theme.primaryColor,
                    )),
              ),
              //  Container(
              //   width: Screens.width(context) * 0.3,
              //   height: Screens.bodyheight(context) * 0.05,
              //   alignment: Alignment.center,
              // decoration: BoxDecoration(
              //     color: isSelectedCusTag ==
              //             dispvalList[index].dispListVal.toString()
              //         ? theme.primaryColor.withOpacity(0.2)
              //         : Colors.white,
              //     border: Border.all(color: theme.primaryColor, width: 1),
              //     borderRadius: BorderRadius.circular(10)),
              //   child: Text(dispvalList[index].dispListVal.toString(),
              //       // maxLines: 8,
              //       overflow: TextOverflow.ellipsis,
              //       textAlign: TextAlign.center,
              //       style: theme.textTheme.bodySmall?.copyWith(
              //         fontSize: 15,
              // color: isSelectedCusTag ==
              //         dispvalList[index].dispListVal.toString()
              //     ? theme.primaryColor //,Colors.white
              //     : theme.primaryColor,
              //       )),
              // ),
            ));
  }

// DispID
// DisPositionVal
  String isSelectedCusTagcode = '';
  List<GetDisPositonList> dispvalList = [];
  List<GetDisPositonList> dispAllvalList = [];

//   getdispValList() async {
//     dispvalList = [];
//     dispAllvalList = [];
//     Database db = (await DBHelper.getInstance())!;
//     List<Map<String, Object?>> result2 = await DBOperation.getDispDataList(db);

// // for (var i = 0; i < dispAllvalList.length; i++) {
// //   if () {

// //   }
// // }

//     if (result2.isNotEmpty) {
//       for (var i = 0; i < result2.length; i++) {
  // dispvalList.add(GetDisPositonList(
  //     // dispID: int.parse(result2[i]['DispID'].toString()),
  //     dispListVal: result2[i]['DisPositionVal'] != null
  //         ? result2[i]['DisPositionVal'].toString()
  //         : ''));
//       }
//       notifyListeners();
//     }
//     notifyListeners();
//   }

  Future<void> checkDeviceType() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      String model = androidInfo.model.toLowerCase();
      String manufacturer = androidInfo.manufacturer.toLowerCase();

      // Add custom logic for known scanner models
      if (model.contains('ct50') || model.contains('ct60')) {
        print('This device is a scanner');
      } else {
        print('This device is a mobile phone');
      }
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      String model = iosInfo.utsname.machine.toLowerCase();

      // Add custom logic for known scanner models
      if (model.contains('scanner_model_identifier')) {
        print('This device is a scanner');
      } else {
        print('This device is a mobile phone');
      }
    } else {
      print('Unsupported platform');
    }
  }

  bool isLoading = true;
  List<GetAuditDataModel> getAuditList = [];
  List<GetAuditDataModel> getAuditList2 = [];
  List<GetAuditDataModel> openAuditList = [];
  List<GetAuditDataModel> completedAuditList = [];
  List<GetAuditDataModel> upcomingtAuditList = [];
  bool isClickedStart = false;
  FetchAuditDetais fetchAuditForDetails = FetchAuditDetais();

  List<GlobalKey<FormState>> formkey =
      List.generate(20, (i) => GlobalKey<FormState>());

  List<TextEditingController> mycontroller =
      List.generate(20, (i) => TextEditingController());
  List<TextEditingController> chkListController =
      List.generate(100, (i) => TextEditingController());
  fetchOpenDetails(GetAuditDataModel fetchAuditDetais2) {
    fetchAuditForDetails = FetchAuditDetais(
        totalItems: fetchAuditDetais2.totalItems,
        unitsScanned: fetchAuditDetais2.unitsScanned,
        auditFrom: fetchAuditDetais2.auditFrom,
        deviceCode: fetchAuditDetais2.deviceCode,
        user: fetchAuditDetais2.user,
        auditTo: fetchAuditDetais2.auditTo,
        blockTrans: fetchAuditDetais2.blockTrans,
        createdBy: fetchAuditDetais2.createdBy,
        createdDatetime: fetchAuditDetais2.createdDatetime,
        docDate: fetchAuditDetais2.docDate,
        docEntry: fetchAuditDetais2.docEntry,
        percent: fetchAuditDetais2.percent,
        docNum: fetchAuditDetais2.docNum,
        endDate: fetchAuditDetais2.endDate,
        remarks: fetchAuditDetais2.remarks,
        repeat: fetchAuditDetais2.repeat,
        repeatDay: fetchAuditDetais2.repeatDay,
        repeatFrequency: fetchAuditDetais2.repeatFrequency,
        scheduleName: fetchAuditDetais2.scheduleName,
        startDate: fetchAuditDetais2.startDate,
        status: fetchAuditDetais2.status,
        traceid: fetchAuditDetais2.traceid,
        updatedBy: fetchAuditDetais2.updatedBy,
        updatedDatetime: fetchAuditDetais2.updatedDatetime,
        whsCode: fetchAuditDetais2.whsCode);
    log('XXXXX:::${fetchAuditForDetails.deviceCode}');
  }

  String errorMsg = '';
  String? deviceId = '';
  callGetAuditApi(BuildContext context, ThemeData theme) async {
    // final theme = Theme.of(context);
    Database db = (await DBHelper.getInstance())!;
    getAuditList = [];
    getAuditList2 = [];
    openAuditList = [];
    completedAuditList = [];
    upcomingtAuditList = [];
    errorMsg = '';
    isLoading = true;
    deviceId = await HelperFunctions.getDeviceIDSharedPreference();
    await GetAuditByDeviceApi.getData(deviceId!).then((value) async {
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        log('value.auditData lengyth::${value.auditData.length}');
        getAuditList = value.auditData;
        isLoading = false;
        log('getAuditList::${getAuditList.length}');
        splitAuditJob();
        notifyListeners();
      } else if (value.stsCode >= 400 && value.stsCode <= 410) {
        errorMsg = value.exception;
        apiResponseDialog(context, theme, errorMsg);
        isLoading = false;
        notifyListeners();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Check Your Internet..!!'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
          dismissDirection: DismissDirection.up,
        ));
        notifyListeners();
      }
    });
    notifyListeners();
  }

  List<HeaderData> auditActionHeaderList = [];
  List<LineData> auditActionLineList = [];
  List<BinMasterData> auditActionBinMasterList = [];

  List<GetUserDataModel> usetDetailData = [];

  // showSnackBars(String e, Color color) {
  //   Get.showSnackbar(GetSnackBar(
  //     title: "Warning",
  //     message: e,
  //   ));
  // }
  List<CheckListLineData> getckeckDataListForm = [];
  getCheckListForm() async {
    final database = (await AppDatabase.initialize())!;

    getckeckDataListForm =
        await driftoperation.getcheckListLineMasterdata(database);
    for (var i = 0; i < getckeckDataListForm.length; i++) {
      // log('getckeckDataListForm::${getckeckDataListForm[i].checklistName}');
    }
    notifyListeners();
  }

  final List<String> _tags = ["flutter", "fluttercampus"];

  void _addTag(String tag) {
    _tags.add(tag);
  }

  void _removeTag(String tag) {
    _tags.remove(tag);
  }

  List<CheckListLineData> getckeckDataListForm55 = [];
  checkListformCreation(BuildContext context, ThemeData theme, int dispnum) {
    List<String> listval = [];
    if (getckeckDataListForm.isNotEmpty) {
      getckeckDataListForm55 = [];
      checklistdata = [];
      for (var i = 0; i < getckeckDataListForm.length; i++) {
        if (getckeckDataListForm[i].docEntry == 2) {
          getckeckDataListForm55.add(CheckListLineData(
              checklistName: getckeckDataListForm[i].checklistName,
              acceptAttach: getckeckDataListForm[i].acceptAttach,
              acceptMultiValue: getckeckDataListForm[i].acceptMultiValue,
              checklistCode: getckeckDataListForm[i].checklistCode,
              createdBy: getckeckDataListForm[i].createdBy,
              createdDatetime: getckeckDataListForm[i].createdDatetime,
              docEntry: getckeckDataListForm[i].docEntry,
              docEntry1: getckeckDataListForm[i].docEntry1,
              isMandaory: getckeckDataListForm[i].isMandaory,
              listValue: getckeckDataListForm[i].listValue,
              isselectlistval: '',
              templateName: getckeckDataListForm[i].templateName,
              traceid: getckeckDataListForm[i].traceid,
              updatedBy: getckeckDataListForm[i].updatedBy,
              updatedDatetime: getckeckDataListForm[i].updatedDatetime));
        }
        notifyListeners();
      }
      showingBottomSheet(context, theme);
    }
    notifyListeners();
  }

  String isSelectMethod(List<CheckListselect> chklistttt, String val) {
    log('vallllll:$val');
    // log('val2:' + chklistttt[0].listval.toString());
    // log('val3:' + chklistttt[1].listval.toString());
    if (val.isEmpty) {
      return '';
    } else {
      var result = chklistttt.where((test) => test.listval == val);
      List result2 = result.toList();
      if (result2.isEmpty) {
        return val;
      } else {
        return '';
      }
    }
  }

  List<String> selectedassignto = [];
  String? assignvalue = '';
  bool isselected = false;
  itemselectassignto(
    String itemvalue,
  ) {
    log('itemvalueitemvalue:$itemvalue');
    // if (selectionTag == true) {
    log(selectedassignto.toString());
    selectedassignto.add(
      itemvalue,
    );
    // } else {
    //   selectedassignto.remove(itemvalue);
    // }
    assignvalue = selectedassignto.join(', ');
    log('assignvalueassignvalue:${assignvalue!.toString()}');
    notifyListeners();
  }

  var selectAnsx = '';
  showingBottomSheet(
    BuildContext context,
    ThemeData theme,
  ) {
    assignvalue = '';
    List<String> selectAns = [];
    List<CheckListselect> chklisttttx = [];
    int? i;
    selectAnsx = '';
    selectedassignto = [];
    log('assignvalueassignvaluezzz::$assignvalue');
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (BuildContext context, setSt) {
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: Screens.width(context) * 0.03,
                    top: Screens.padingHeight(context) * 0.02,
                    right: Screens.width(context) * 0.03,
                    bottom: Screens.padingHeight(context) * 0.03),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: Screens.width(context),
                        alignment: Alignment.center,
                        child: Text(
                          '${getckeckDataListForm55[0].templateName}',
                          style:
                              theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                        )),
                    Container(
                        padding: EdgeInsets.only(
                          top: Screens.padingHeight(context) * 0.02,
                        ),
                        height: Screens.padingHeight(context) * 0.45,
                        width: Screens.width(context),
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: getckeckDataListForm55.length,
                            itemBuilder: (context, index) {
                              var litstagex = getckeckDataListForm55[index]
                                  .listValue!
                                  .split(',');
                              // for (var i = 0; i < litstagex.length; i++) {
                              //   chklistttt.add(CheckListselect(
                              //       indx: index,
                              //       listval: litstagex[i],
                              //       issele: false));
                              // }
                              chkListController[index].text = 'x';
                              return Column(
                                children: [
                                  Container(
                                    // height: Screens.padingHeight(context) * 0.06,
                                    width: Screens.width(context),
                                    child: TextField(
                                      readOnly: true,
                                      controller: chkListController[index],
                                      decoration: InputDecoration(
                                        labelText:
                                            '${getckeckDataListForm55[index].checklistName}',
                                        suffixIcon: Container(
                                          padding: EdgeInsets.only(
                                              left: Screens.width(context) *
                                                  0.03),
                                          height:
                                              Screens.padingHeight(context) *
                                                  0.07,
                                          width: Screens.width(context),
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount:
                                                // getckeckDataListForm55[index]
                                                //     .listValue!
                                                //     .split(',')
                                                litstagex.length,
                                            itemBuilder: (context, indexx) {
                                              return Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                          color: litstagex[
                                                                      indexx] ==
                                                                  getckeckDataListForm55[
                                                                          index]
                                                                      .isselectlistval!
                                                              ? theme
                                                                  .primaryColor
                                                                  .withOpacity(
                                                                      0.3)
                                                              : Colors.white,
                                                          border: Border.all(
                                                              color: theme
                                                                  .primaryColor,
                                                              width: 1)),
                                                      padding: EdgeInsets.only(
                                                          left: Screens.width(
                                                                  context) *
                                                              0.03,
                                                          right: Screens.width(
                                                                  context) *
                                                              0.03),
                                                      height:
                                                          Screens.padingHeight(
                                                                  context) *
                                                              0.043,
                                                      child: IconButton(
                                                          icon: getckeckDataListForm55[
                                                                          index]
                                                                      .acceptAttach ==
                                                                  true
                                                              ? Icon(
                                                                  Icons
                                                                      .attach_file,
                                                                  color: theme
                                                                      .primaryColor)
                                                              : Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                    litstagex[
                                                                            indexx]
                                                                        .toString(),
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyLarge
                                                                        ?.copyWith(
                                                                            color:
                                                                                theme.primaryColor),
                                                                  ),
                                                                ),
                                                          onPressed: () {
                                                            if (getckeckDataListForm55[
                                                                        index]
                                                                    .acceptAttach ==
                                                                true) {
                                                              sheetbottom(
                                                                  context);
                                                            } else {
                                                              setSt(
                                                                () {
                                                                  if (isselected ==
                                                                      true) {
                                                                    isselected =
                                                                        false;
                                                                  } else {
                                                                    isselected =
                                                                        true;
                                                                  }
                                                                  setSt(() {
                                                                    getckeckDataListForm55[index]
                                                                            .isselectlistval =
                                                                        litstagex[
                                                                            indexx];
                                                                  });
                                                                  // isselected =
                                                                  //     !isselected;

                                                                  log('indexxindexxindexx::$isselected');
                                                                  if (litstagex[
                                                                          indexx] ==
                                                                      getckeckDataListForm55[
                                                                              index]
                                                                          .isselectlistval!) {}

                                                                  // print(
                                                                  //     '${litstagex[indexx]} sdfsdf::${getckeckDataListForm55[index].isselectlistval}');

                                                                  getckeckDataListForm55[
                                                                              index]
                                                                          .isselectlistval ==
                                                                      true;
                                                                  log('${getckeckDataListForm55[index].isselectlistval}');
                                                                  log('message list::${litstagex[indexx]}');

                                                                  // for (var i = 0;
                                                                  //     i <
                                                                  //         chklistttt
                                                                  //             .length;
                                                                  //     i++) {
                                                                  //   checlist22 = CheckListselect(
                                                                  //       indx: chklistttt[
                                                                  //               i]
                                                                  //           .indx,
                                                                  //       listval: chklistttt[
                                                                  //               i]
                                                                  //           .listval);
                                                                  // }
                                                                },
                                                              );

                                                              checklistdata.add(DispListData(
                                                                  attachurl: '',
                                                                  auditid: getckeckDataListForm55[
                                                                          index]
                                                                      .docEntry,
                                                                  checklistcode:
                                                                      getckeckDataListForm55[
                                                                              index]
                                                                          .checklistCode,
                                                                  checklistvalue:
                                                                      isSelectedCusTag));
                                                            }

                                                            log('checklistdatachecklistdata::${checklistdata.length}');
                                                          }),
                                                    ),
                                                    SizedBox(
                                                        width: Screens.width(
                                                                context) *
                                                            0.02)
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        border: const OutlineInputBorder(),
                                      ),
                                      onSubmitted: (text) {
                                        if (text.isNotEmpty) {
                                          _addTag(text);
                                        }
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        Screens.padingHeight(context) * 0.015,
                                  )
                                ],
                              );
                            })),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          foregroundColor: Colors.white,
                          backgroundColor: theme.primaryColor),
                      onPressed: () {},

                      // context
                      //     .read<AuditCtrlProvider>()
                      //     .callScannLockedApi(context, theme);

                      child: const Center(
                        child: Text('OK'),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
        });
  }

  checkTableEmpty(
    BuildContext context,
    ThemeData theme,
    String apiRes,
    String actionName,
    int docEntry,
    int indx,
  ) async {
    final database = (await AppDatabase.initialize())!;
    List<LineData> getlineresult =
        await driftoperation.ckeckLineproduct(database, docEntry);

    List<HeaderData> getheaderresult =
        await driftoperation.checkHeaderproduct(database, docEntry);

    log('getlineresult11::${getlineresult.length} :::getheaderresult11::${getheaderresult.length}');
    if (getlineresult.isNotEmpty && getheaderresult.isNotEmpty) {
      actionResetDialog(
        context,
        theme,
        apiRes,
        actionName,
        docEntry,
        indx,
      );

      // List<LineData> getlineresult22 =
      //     await driftoperation.getallLineproduct(database);
      // log('getlineresult222 length::${getlineresult22.length}');
    } else {
      String mssgg2 =
          'This Operation may take few minutes. Closing the application may interrupt the process. \n Do you want to continue ?';
      actionwarningDialog(context, theme, mssgg2, 'Start', docEntry, indx);
    }
    notifyListeners();
  }

  void callGetAuditActionApi(BuildContext context, ThemeData theme,
      String actionName, int docEntry, int indx) async {
    Get.back();

    Database db = (await DBHelper.getInstance())!;
    final database = (await AppDatabase.initialize())!;

    auditActionHeaderList = [];
    auditActionLineList = [];
    errorMsg = '';
    openAuditList[indx].isStarting = true;

    // Future.delayed(Duration(seconds: 15)).then(
    //   (value) {
    //     openAuditList[indx].isStarting = false;
    //     notifyListeners();
    //   },
    // );

    notifyListeners();
    await GetAuditActionApi.getData(actionName, docEntry).then((value) async {
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        auditActionHeaderList = value.auditData!.auditHeaderData;
        auditActionLineList = value.auditData!.auditLineData;
        auditActionBinMasterList = value.auditData!.binMassterList;

        if (auditActionHeaderList.isNotEmpty) {
          await driftoperation.insertdriftdatabase(
              auditActionHeaderList, database);
        }
        if (auditActionLineList.isNotEmpty) {
          await driftoperation.insertdriftLinedatabase(
              auditActionLineList, database);
        }
        if (auditActionBinMasterList.isNotEmpty) {
          await driftoperation.insertBinMasterdatabase(
              auditActionBinMasterList, database);
        }

        List<LineData> getlineresult =
            await driftoperation.getallLineproduct(database);
        List<HeaderData> getheaderresult =
            await driftoperation.getallproduct(database);
        List<BinMasterData> getbinresult =
            await driftoperation.getBinMasterdata(database);
        openAuditList[indx].isStarting = false;
        await callGetAuditApi(context, theme);
        log('headerresult::${getheaderresult.length}::lineresult::${getlineresult.length}:::BinResult::${getbinresult.length}');
        if (getheaderresult.isNotEmpty && getlineresult.isNotEmpty) {
          await LoadCompleteDataApi.getData(docEntry).then((value) async {
            if (value.stsCode == 200) {
              log('Successsssss');
            }
          });

          apiResponseDialog(context, theme, 'Data downloaded successfully');
          // const snackBar2 = SnackBar(
          //   content: Text('Data downloaded successfully'),
          //   backgroundColor: Colors.greenAccent,
          //   elevation: 10,
          //   behavior: SnackBarBehavior.floating,
          //   margin: EdgeInsets.all(5),
          //   dismissDirection: DismissDirection.up,
          // );
          // ScaffoldMessenger.of(context).showSnackBar(snackBar2);
          notifyListeners();
        }
        // else {
        //   const snackBar2 = SnackBar(
        //     content: Text('Data downloading failed..!!'),
        //     backgroundColor: Colors.greenAccent,
        //     elevation: 10,
        //     behavior: SnackBarBehavior.floating,
        //     margin: EdgeInsets.all(5),
        //     dismissDirection: DismissDirection.up,
        //   );
        //   ScaffoldMessenger.of(context).showSnackBar(snackBar2);
        //   ScaffoldMessenger.of(context).removeCurrentSnackBar();

        //   notifyListeners();
        // }
        notifyListeners();
      } else if (value.stsCode >= 400 && value.stsCode <= 410) {
        openAuditList[indx].isStarting = false;
        errorMsg = value.exception;
        apiResponseDialog(context, theme, errorMsg);
        isLoading = false;
        notifyListeners();
      } else {
        openAuditList[indx].isStarting = false;
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Check Your Internet..!!'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
          dismissDirection: DismissDirection.up,
        ));
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
      }
    });
    notifyListeners();
  }

// dataSucessMsg(){
//     showDialog(
//               context: context,
//               builder: (context) {
//                 return AlertDialog(
//                   content: Container(
//                     child: Column(
//                       children: [
//                         const Text('Data downloaded successfully'),
//                         SizedBox(
//                           width: Screens.width(context) * 0.8,
//                           height: Screens.padingHeight(context) * 0.06,
//                           child: ElevatedButton(
//                               onPressed: () async {
//                                 Get.back();
//                                 disableKeyBoard(context);
//                                 notifyListeners();
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: theme.primaryColor,
//                                 foregroundColor: Colors.white,
//                                 textStyle: const TextStyle(),
//                                 shape: const RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(8),
//                                   bottomRight: Radius.circular(8),
//                                 )),
//                               ),
//                               child: const Text("Ok")),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               });
// }
  AudioPlayer? audioPlayer;

  List<LineData> listScanBatch = [];
  void playAudio(String assetPath) async {
    await audioPlayer!.play(AssetSource(assetPath));
    notifyListeners();
  }

  afterScanbinCode(BuildContext context, ThemeData theme, String columnName,
      String binValues) async {
    final database = (await AppDatabase.initialize())!;
    // Database db = (await DBHelper.getInstance())!;
    listScanBatch = await driftoperation.getdriftallLineColumn(
        database, columnName, binValues);
    // List<Map<String, Object?>> result2 =
    //     await DBOperation.checkBinInAuditLineData(db, columnName, binValues);
    callBinBlockApi(context, theme, binValues);
    if (listScanBatch.isNotEmpty) {
      log('AudioPlayAudioPlay');
      // /D/Sharmila/verifytapp/asset/sounds/bin_selection.mp3
      playAudio('sounds/bin_selection.mp3');
    }
    notifyListeners();
    if (listScanBatch.isEmpty) {
      // Get.back();
      playAudio('sounds/Invalid_bin.mp3');

      ///D/Sharmila/verifytapp/assets/sounds/Invalid_bin.mp3
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                  width: Screens.width(context) * 0.8,
                  height: Screens.padingHeight(context) * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Screens.width(context) * 0.8,
                        alignment: Alignment.center,
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
                  padding: const EdgeInsets.all(10),
                  width: Screens.width(context) * 0.8,
                  child: const Text(
                      'Scanned bin is not in the stock table and item master table'),
                ),
                SizedBox(
                  height: Screens.padingHeight(context) * 0.02,
                ),
                SizedBox(
                  width: Screens.width(context) * 0.8,
                  height: Screens.padingHeight(context) * 0.06,
                  child: ElevatedButton(
                      onPressed: () async {
                        Get.back();
                        disableKeyBoard(context);
                        notifyListeners();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.primaryColor,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        )),
                      ),
                      child: const Text("Ok")),
                ),
              ],
            ),
          );
        },
      );
    }
    notifyListeners();
  }

  onChangetext(String newval) {
    String val = newval;
    mycontroller[3].clear();
    mycontroller[3].text = val;
    notifyListeners();
  }

  clearbtn() {
    scandata = [];
    checklistdata = [];
    skuCosde = '';
    itemCode = '';
    scanTime = '';
    itemName = '';
    dispCode = null;
    serialBatch = '';
    mycontroller[3].text = '';
    mycontroller[4].text = '';
    mycontroller[5].text = '';
    dispvalList = [];
    notifyListeners();
  }

  Uuid uuid = const Uuid();
  List<ScanDataPost> scandata = [];
  List<DispListData> checklistdata = [];
  String skuCosde = '';
  String itemCode = '';
  String scanTime = '';
  String itemName = '';
  int? dispCode;
  String serialBatch = '';
  String mangedBy = '';
  afterScanSerialBatch(
    BuildContext context,
    ThemeData theme,
    String serialbatchh,
    String scanbatchval,
  ) async {
    itemCode = '';
    skuCosde = '';
    dispvalList = [];
    scanTime = '';
    mangedBy = '';
    String? whsCode = '';
    whsCode = await HelperFunctions.getWhsCode();
    final database = (await AppDatabase.initialize())!;
    Database db = (await DBHelper.getInstance())!;
    List<LineData> lineItemResult =
        await driftoperation.getdriftallserialLineColumn(
      database,
      serialbatchh,
      scanbatchval,
    );
    log('scandatascandata length111::${scandata.length}');
    // List<LineData> result2 = await driftoperation.getdriftallLineColumn(
    //     database, columnName, binValues);
    // List<Map<String, Object?>> result2 =
    //     await DBOperation.checkBinInAuditLineData(db, columnName, binValues);
    if (lineItemResult.isNotEmpty) {
      playAudio('sounds/scan_serial_correct.mp3');
      for (var i = 0; i < lineItemResult.length; i++) {
        itemCode = lineItemResult[i].itemCode!;
        mycontroller[4].text = lineItemResult[i].itemCode!;
        for (var ik = 0; ik < dispAllvalList.length; ik++) {
          if (lineItemResult[i].itemDisposition == dispAllvalList[ik].dispID) {}
        }
      }
    }
    mycontroller[3].text = scanbatchval;
    serialBatch = scanbatchval;
    itemCode = mycontroller[4].text;
    scanTime = config.currentDatepdf();

    log('itemCodeitemCodeitemCode::$itemCode');
    List<HeaderData> headeItemResult =
        await driftoperation.getItemCodeInHeader(database, itemCode);
    log('headeItemResultheadeItemResult::${headeItemResult.length}');
    if (headeItemResult.isNotEmpty) {
      // for (int ij = 0; ij < headeItemResult.length; ij++) {
      log('manageby:${headeItemResult[0].manageBy}');
      // if (headeItemResult[0].itemCode == lineItemResult[i].itemCode) {
      itemCode = headeItemResult[0].itemCode.toString();
      skuCosde = headeItemResult[0].sKUCode.toString();
      itemName = headeItemResult[0].itemName.toString();
      dispCode = headeItemResult[0].itemDisposition;
      mycontroller[4].text = headeItemResult[0].itemCode.toString();
      mangedBy = headeItemResult[0].manageBy;
      log('headeItemResult[0].dispID::${headeItemResult[0].itemDisposition}');
      List<Map<String, Object?>> dispResult2 =
          await DBOperation.getAllDispDataList(
              db, headeItemResult[0].itemDisposition);
      for (var im = 0; im < dispResult2.length; im++) {
        dispvalList.add(GetDisPositonList(
            dispID: int.parse(dispResult2[im]['DispID'].toString()),
            dispListVal: dispResult2[im]['DisPositionVal'] != null
                ? dispResult2[im]['DisPositionVal'].toString()
                : ''));
      }
      if (dispvalList.isNotEmpty) {
        selectFirstTapVal();
      }
      log('headeItemResult[0].manageByheadeItemResult[0].manageBy::${headeItemResult[0].manageBy}');
      if (headeItemResult[0].manageBy == "S") {
        freezeqty = true;
        serialNumberItemQty(context, theme, lineItemResult, 0);
        notifyListeners();
      } else if (headeItemResult[0].manageBy == "B") {
        freezeqty = false;
        batchIncreaseQty(lineItemResult, 0);
        notifyListeners();
      }
      List<Checklisttemplate>? dispResult2x;

      int offline = whileOffline == true ? 1 : 0;

      // dispResult2x = await driftoperation.checkListPopup(
      //     database, scanbatchval, dispCode.toString(), offline, 0);
      // if (dispResult2x[0].templateid != null) {
      //   checkListformCreation(context, theme, dispResult2x[0].templateid!);
      //   notifyListeners();
      // }
    }

    // }
    // driftoperation.insertscanpostdatabase(scandata, database);
    // driftoperation.insertchecklistdatabase(checklistdata, database);
    // driftoperation.getscandataproduct(database);
    // driftoperation.getchecklistproduct(database);
    // callBinBlockApi(context, theme, binValues);
    notifyListeners();
    // } else {
    if (lineItemResult.isEmpty) {
      freezeItemCode = false;
      playAudio('sounds/scan_serial_wrong.mp3');
      if (mycontroller[5].text.isNotEmpty) {
        incQty = int.parse(mycontroller[5].text);
        mycontroller[5].text = (incQty + 1).toString();
        for (var ix = 0; ix < scandata.length; ix++) {
          if (scandata[ix].serialbatch == mycontroller[3].text &&
              scandata[ix].itemCode == mycontroller[4].text) {
            scandata[ix].quantity = double.parse(mycontroller[5].text);
            log('scandata[ix].quantity scandata[ix].quantity::${scandata[ix].quantity}');
          }
        }
        notifyListeners();
      } else {
        String uuiDeviceId = uuid.v1();
        mycontroller[5].text = 1.toString();
        notifyListeners();
        scandata.add(ScanDataPost(
            auditid: fetchAuditForDetails.docEntry,
            bincode: mycontroller[2].text,
            devicecode: fetchAuditForDetails.deviceCode,
            ismanual: 0,
            itemCode: mycontroller[4].text,
            notes: '',
            quantity: double.parse(mycontroller[5].text),
            scandatetime: config.firstDate(),
            serialbatch: scanbatchval,
            stockstatus: isSelectedCusTag,
            scanguid: uuiDeviceId,
            templateid: null,
            whscode: whsCode,
            checklist: checklistdata));
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: theme.primaryColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                  width: Screens.width(context) * 0.8,
                  height: Screens.padingHeight(context) * 0.06,
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
                  padding: const EdgeInsets.all(10),
                  width: Screens.width(context) * 0.8,
                  child: const Text(
                      'Scanned number is not in the stock table and item master table'),
                ),
                SizedBox(
                  height: Screens.padingHeight(context) * 0.02,
                ),
                SizedBox(
                  width: Screens.width(context) * 0.8,
                  height: Screens.padingHeight(context) * 0.06,
                  child: ElevatedButton(
                      onPressed: () async {
                        Get.back();
                        mycontroller[3].selection = TextSelection(
                          baseOffset: 0,
                          extentOffset: mycontroller[3].text.length,
                        );
                        notifyListeners();
                        // disableKeyBoard(context);
                        notifyListeners();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.primaryColor,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        )),
                      ),
                      child: const Text("Ok")),
                ),
              ],
            ),
          );
        },
      );
    } else {
      mycontroller[3].selection = TextSelection(
        baseOffset: 0,
        extentOffset: mycontroller[3].text.length,
      );
      notifyListeners();
    }
    if (ConfigController.isScanner == false) {
      // disableKeyBoard(context);
    }
    notifyListeners();
  }

  checknextbtn(BuildContext context, ThemeData theme, String serialbtch,
      String itemcode) async {
    Database db = (await DBHelper.getInstance())!;
    if (mangedBy == 'S') {
      callNextBtnMethod(context, theme, serialbtch, itemcode);
      notifyListeners();
    } else {
      if (scandata.isNotEmpty) {
        playAudio('sounds/next_click.mp3');

        // //D/Sharmila/verifytapp/assets/sounds/next_click.mp3
        await DBOperation.insertscanpostData(db, scandata);
        await DBOperation.insertchecklistData(db, checklistdata);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text('Scanned data inserted successfully..!'),
            backgroundColor: Colors.green,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
            dismissDirection: DismissDirection.up,
          ),
        );
        notifyListeners();
        mycontroller[3].text = '';
        mycontroller[4].text = '';
        mycontroller[5].text = '';
        skuCosde = '';
        itemCode = '';
        scanTime = '';
        itemName = '';
        serialBatch = '';
        dispAllvalList = [];
        selectFirstTapVal();
        notifyListeners();
      }
    }
  }

  callNextBtnMethod(BuildContext context, ThemeData theme, String srialbtchx,
      String itemcodex) async {
    Database db = (await DBHelper.getInstance())!;
    List<Map<String, Object?>> result2 = await DBOperation.getscandataData(db);
    List<Map<String, Object?>> result3 =
        await DBOperation.getchecklistAllData(db);
    log("result22222:${result2.length} ==result3:::${result3.length}");

    List<Map<String, Object?>> checkScanItem =
        await DBOperation.checkScandata(db, srialbtchx, itemcodex);
    if (scandata.isNotEmpty) {
      playAudio('sounds/next_click.mp3');
      if (checkScanItem.isEmpty) {
        await DBOperation.insertscanpostData(db, scandata);
        await DBOperation.insertchecklistData(db, checklistdata);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text('Scanned data inserted successfully..!'),
            backgroundColor: Colors.green,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
            dismissDirection: DismissDirection.up,
          ),
        );
        notifyListeners();
        mycontroller[3].text = '';
        mycontroller[4].text = '';
        mycontroller[5].text = '';
        skuCosde = '';
        itemCode = '';
        scanTime = '';
        itemName = '';
        serialBatch = '';
        dispAllvalList = [];
        selectFirstTapVal();
        notifyListeners();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(seconds: 1),
            content: Text('This item already inserted..!!'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
            dismissDirection: DismissDirection.up,
          ),
        );

        // }
      }
      notifyListeners();
    }

    notifyListeners();
  }

  callBinBlockApi(
      BuildContext context, ThemeData theme, String binpostdata) async {
    errorMsg = '';
    mycontroller[2].text = binpostdata;
    String? deviceId = await HelperFunctions.getDeviceIDSharedPreference();
    BinPostData? binpostDat = BinPostData();
    binpostDat = BinPostData(
        auditid: fetchAuditForDetails.docEntry,
        bincode: binpostdata,
        devicecode: fetchAuditForDetails.deviceCode,
        scantime: DateTime.now().toString());
    await BinLockedAPi.getData(binpostDat).then((value) async {
      log('messagessss');
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        isClickedStart = false;
        log('respDescrespDesc::${value.respDesc}');
        notifyListeners();
      } else if (value.stsCode >= 400 && value.stsCode <= 410) {
        errorMsg = value.exception;
        notifyListeners();
      }
    });
    notifyListeners();
  }

  List<GetDisPositonList> dispositionDataList = [];
  // callDispValApi() async {
  //   Database db = (await DBHelper.getInstance())!;
  //   dispositionDataList = [];
  //   await DispListapi.getData().then((value) async {
  //     if (value.stsCode >= 200 && value.stsCode <= 210) {
  //       dispositionDataList = value.dispositionData;
  //       DBOperation.insertDispData(db, dispositionDataList);
  //     } else if (value.stsCode >= 400 && value.stsCode <= 400) {
  //       notifyListeners();
  //     }
  //   });
  // }
  checkNeworkConnectivity(
    BuildContext context,
    ThemeData theme,
  ) async {
    bool? netbool = await config.haveInterNet();
    if (netbool == true) {
      whileOffline = false;
      callScannLockedApi(
        context,
        theme,
      );
    } else {
      whileOffline = true;
    }
    notifyListeners();
  }

  List<AuditScannLogDataModel> auditScannData = [];
  callScannLockedApi(
    BuildContext context,
    ThemeData theme,
  ) async {
    auditScannData = [];
    errorMsg = '';
    List<ScanDataPost> scandatax = [];
    List<DispListData> checklistt = [];

    Database db = (await DBHelper.getInstance())!;
    List<Map<String, Object?>> result2 = await DBOperation.getscandataData(db);
    // List<Map<String, Object?>> result3 = await DBOperation.getchecklistData(
    //   db,
    // );
    if (result2.isNotEmpty) {
      //   for (var ij = 0; ij < result3.length; ij++) {
      //     // if (int.parse(result2[i]['Auditid'].toString()) ==
      //     //     int.parse(result3[ij]['Auditid'].toString())) {
      //   checklistt.add(CheckList(
      //       attachurl: result3[ij]['Attachurl'].toString(),
      //       auditid: int.parse(result3[ij]['Auditid'].toString()),
      //       checklistcode: result3[ij]['Checklistcode'].toString(),
      //       checklistvalue: result3[ij]['Checklistvalue'].toString()));
      // }
      for (var i = 0; i < result2.length; i++) {
        checklistt = [];
        List<Map<String, Object?>> result3 = await DBOperation.getchecklistData(
            db, int.parse(result2[i]['Auditid'].toString()));
        for (var ij = 0; ij < result3.length; ij++) {
          checklistt.add(DispListData(
              attachurl: result3[ij]['Attachurl'].toString(),
              auditid: int.parse(result3[ij]['Auditid'].toString()),
              checklistcode: result3[ij]['Checklistcode'].toString(),
              checklistvalue: result3[ij]['Checklistvalue'].toString()));
        }
        scandatax.add(ScanDataPost(
            auditid: int.parse(result2[i]['Auditid'].toString()),
            bincode: result2[i]['Bincode'].toString(),
            devicecode: result2[i]['Devicecode'].toString(),
            ismanual: result2[i]['Ismanual'] != null
                ? int.parse(result2[i]['Ismanual'].toString())
                : 0,
            itemCode: result2[i]['ItemCode'].toString(),
            notes: result2[i]['Notes'].toString(),
            quantity: double.parse(result2[i]['Quantity'].toString()),
            scandatetime: result2[i]['Scandatetime'].toString(),
            serialbatch: result2[i]['Serialbatch'].toString(),
            stockstatus: result2[i]['Stockstatus'].toString(),
            templateid: int.parse(result2[i]['Templateid'].toString()),
            scanguid: result2[i]['scanguid'].toString(),
            whscode: result2[i]['Whscode'].toString(),
            checklist: checklistt));
        // }
      }
      ScannLockedAPiApi.checklist = checklistt;
      await ScannLockedAPiApi.getData(scandatax).then((value) async {
        if (value.stsCode >= 200 && value.stsCode <= 210) {
          auditScannData = value.scannData;
          // for (var ij = 0; ij < result3.length; ij++) {
          //   await DBOperation.getDeletechecklistData(
          //       db, int.parse(result3[ij]['Auditid'].toString()));
          // }
          for (var i = 0; i < result2.length; i++) {
            await DBOperation.getDeleteScanlistData(
              db,
              int.parse(result2[i]['Auditid'].toString()),
            );
          }
          log('getAuditList::${auditScannData.length}');
          notifyListeners();
        } else if (value.stsCode >= 400 && value.stsCode <= 410) {
          errorMsg = value.exception;
          // apiResponseDialog(context, theme, errorMsg);
          isLoading = false;
          notifyListeners();
        }
      });
      notifyListeners();
    }
  }

  callGetuserDetailsnApi(
    int docEntry,
    BuildContext context,
    ThemeData theme,
  ) async {
    usetDetailData = [];
    errorMsg = '';
    isLoading = true;
    await GetuserDetailsApi.getData(docEntry).then((value) async {
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        usetDetailData = value.userData;
        isLoading = false;
        log('UsetDetailData::${usetDetailData.length}');
        notifyListeners();
      } else if (value.stsCode >= 400 && value.stsCode <= 410) {
        errorMsg = value.exception;
        apiResponseDialog(context, theme, errorMsg);

        isLoading = false;
        notifyListeners();
      }
    });
    notifyListeners();
  }

  List<GetBinData> getBinList = [];
  int incQty = 0;
  bool isManualtype = false;
  bool whileOffline = false;

  addscanneddata(List<LineData> lineItemResult, int i) {
    String uuiDeviceId = uuid.v1();

    log('checklistdatachecklistdata::${uuiDeviceId.toString()}');
    scandata.add(ScanDataPost(
        auditid: fetchAuditForDetails.docEntry,
        bincode: lineItemResult[i].binCode,
        devicecode: fetchAuditForDetails.deviceCode,
        ismanual: 0,
        itemCode: lineItemResult[i].itemCode,
        notes: '',
        quantity: double.parse(mycontroller[5].text),
        scandatetime: config.firstDate(),
        serialbatch: lineItemResult[i].serailBatch,
        stockstatus: isSelectedCusTag,
        scanguid: uuiDeviceId,
        templateid: lineItemResult[i].itemDisposition,
        whscode: lineItemResult[i].whsCode,
        checklist: checklistdata));
    log('scandatascandata length3333::${scandata.length}');
  }

  serialNumberItemQty(BuildContext context, ThemeData theme,
      List<LineData> lineItemResultx, int i) {
    int qtyval = 0;
    if (mycontroller[5].text.isEmpty) {
      mycontroller[5].text = 1.toString();
      addscanneddata(lineItemResultx, i);
      log('scandatascandata length222::${scandata.length}');
      notifyListeners();
    } else {
      qtyval = int.parse(mycontroller[5].text);
      log('mycontroller[5].text:${mycontroller[5].text}:::qtyval::$qtyval');
      qtyval = qtyval + int.parse(mycontroller[5].text);
      mycontroller[5].text = qtyval.toString();
      if (qtyval < 1) {
        mycontroller[5].text = 1.toString();
      } else if (qtyval > 1) {
        mycontroller[5].text = 1.toString();

        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                contentPadding: EdgeInsets.zero,
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8))),
                      width: Screens.width(context),
                      height: Screens.bodyheight(context) * 0.06,
                      child: Container(
                        // width: Screens.width(context) * 0.75,
                        child: Center(
                            child: Text("Alert",
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(color: Colors.white))),
                      ),
                    ),
                    SizedBox(
                      height: Screens.padingHeight(context) * 0.02,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      child: const Text(
                        'You are not permit the scanning this item. However, Already scanned this itemcode',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: Screens.padingHeight(context) * 0.02,
                    ),
                    Container(
                      width: Screens.width(context) * 0.9,
                      height: Screens.bodyheight(context) * 0.06,
                      child: ElevatedButton(
                          onPressed: () async {
                            // context
                            //     .read<AuditCtrlProvider>()
                            //     .apiResponseDialog(context, theme, 'Success');
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.primaryColor,
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                          ),
                          child: const Text("OK")),
                    ),
                  ],
                ),
              );
            });
        notifyListeners();
      }
      notifyListeners();
    }
  }

  batchIncreaseQty(List<LineData> lineItemResult, int i) {
    if (mycontroller[5].text.isNotEmpty) {
      incQty = int.parse(mycontroller[5].text);
      mycontroller[5].text = (incQty + 1).toString();

      for (var ix = 0; ix < scandata.length; ix++) {
        if (scandata[ix].serialbatch == mycontroller[3].text &&
            scandata[ix].itemCode == mycontroller[4].text) {
          scandata[ix].quantity = double.parse(mycontroller[5].text);
          log('scandata[ix].quantity scandata[ix].quantity::${scandata[ix].quantity}');
        }
      }
      notifyListeners();
    } else {
      mycontroller[5].text = 1.toString();
      notifyListeners();
      addscanneddata(lineItemResult, i);
    }
    // for (var i = 0; i < lineItemResult.length; i++) {

    // }
    // }
    log('mycontroller[4]::${mycontroller[4].text}');
  }

  callGetBinNumApiApi(
    int docEntry,
    BuildContext context,
    ThemeData theme,
  ) async {
    getBinList = [];
    errorMsg = '';
    isLoading = true;
    await GetBinNumApi.getData(docEntry).then((value) async {
      if (value.stsCode >= 200 && value.stsCode <= 210) {
        getBinList = value.binData;
        isLoading = false;
        // getBinList[0].binCode = '1234656';
        mycontroller[2].text = getBinList[0].binCode ?? '';
        log('getBinList::${getBinList.length}');
        notifyListeners();
      } else if (value.stsCode >= 400 && value.stsCode <= 410) {
        errorMsg = value.exception;
        // apiResponseDialog(context, theme, errorMsg);

        isLoading = false;
        notifyListeners();
      }
    });
    notifyListeners();
  }

  splitAuditJob() {
    log('getAuditListgetAuditList::${getAuditList.length}');
    if (getAuditList.isNotEmpty) {
      for (var i = 0; i < getAuditList.length; i++) {
        // log("getAuditList[i].status::${getAuditList[i].status}");
        if (getAuditList[i].status == 'Open' ||
            getAuditList[i].status == 'Starting' ||
            getAuditList[i].status == 'In-Process') {
          openAuditList.add(GetAuditDataModel(
              auditFrom: getAuditList[i].auditFrom ?? '',
              auditTo: getAuditList[i].auditTo,
              blockTrans: getAuditList[i].blockTrans,
              createdBy: getAuditList[i].createdBy,
              createdDatetime: getAuditList[i].createdDatetime,
              docDate: getAuditList[i].docDate,
              deviceCode: getAuditList[i].deviceCode,
              isStarting: false,
              percent: getAuditList[i].percent,
              docEntry: getAuditList[i].docEntry,
              docNum: getAuditList[i].docNum,
              endDate: getAuditList[i].endDate,
              remarks: getAuditList[i].remarks,
              repeat: getAuditList[i].repeat,
              repeatDay: getAuditList[i].repeatDay,
              repeatFrequency: getAuditList[i].repeatFrequency,
              scheduleName: getAuditList[i].scheduleName,
              startDate: getAuditList[i].startDate,
              status: getAuditList[i].status,
              traceid: getAuditList[i].traceid,
              updatedBy: getAuditList[i].updatedBy,
              user: getAuditList[i].user,
              updatedDatetime: getAuditList[i].updatedDatetime,
              whsCode: getAuditList[i].whsCode,
              unitsScanned: getAuditList[i].unitsScanned,
              totalItems: getAuditList[i].totalItems));
        } else if (getAuditList[i].status == 'Completed' ||
            getAuditList[i].status == 'Closed') {
          completedAuditList.add(GetAuditDataModel(
              auditFrom: getAuditList[i].auditFrom,
              percent: getAuditList[i].percent,
              deviceCode: getAuditList[i].deviceCode,
              auditTo: getAuditList[i].auditTo,
              blockTrans: getAuditList[i].blockTrans,
              unitsScanned: getAuditList[i].unitsScanned,
              totalItems: getAuditList[i].totalItems,
              createdBy: getAuditList[i].createdBy,
              createdDatetime: getAuditList[i].createdDatetime,
              isStarting: false,
              docDate: getAuditList[i].docDate,
              user: getAuditList[i].user,
              docEntry: getAuditList[i].docEntry,
              docNum: getAuditList[i].docNum,
              endDate: getAuditList[i].endDate,
              remarks: getAuditList[i].remarks,
              repeat: getAuditList[i].repeat,
              repeatDay: getAuditList[i].repeatDay,
              repeatFrequency: getAuditList[i].repeatFrequency,
              scheduleName: getAuditList[i].scheduleName,
              startDate: getAuditList[i].startDate,
              status: getAuditList[i].status,
              traceid: getAuditList[i].traceid,
              updatedBy: getAuditList[i].updatedBy,
              updatedDatetime: getAuditList[i].updatedDatetime,
              whsCode: getAuditList[i].whsCode));
        } else if (getAuditList[i].status == 'Upcoming' ||
            getAuditList[i].status == 'Draft') {
          upcomingtAuditList.add(GetAuditDataModel(
              auditFrom: getAuditList[i].auditFrom,
              auditTo: getAuditList[i].auditTo,
              unitsScanned: getAuditList[i].unitsScanned,
              percent: getAuditList[i].percent,
              totalItems: getAuditList[i].totalItems,
              deviceCode: getAuditList[i].deviceCode,
              user: getAuditList[i].user,
              blockTrans: getAuditList[i].blockTrans,
              isStarting: false,
              createdBy: getAuditList[i].createdBy,
              createdDatetime: getAuditList[i].createdDatetime,
              docDate: getAuditList[i].docDate,
              docEntry: getAuditList[i].docEntry,
              docNum: getAuditList[i].docNum,
              endDate: getAuditList[i].endDate,
              remarks: getAuditList[i].remarks,
              repeat: getAuditList[i].repeat,
              repeatDay: getAuditList[i].repeatDay,
              repeatFrequency: getAuditList[i].repeatFrequency,
              scheduleName: getAuditList[i].scheduleName,
              startDate: getAuditList[i].startDate,
              status: getAuditList[i].status,
              traceid: getAuditList[i].traceid,
              updatedBy: getAuditList[i].updatedBy,
              updatedDatetime: getAuditList[i].updatedDatetime,
              whsCode: getAuditList[i].whsCode));
        }
      }
    }
  }

  // auditDataMethod() {
  //   auditList = [];
  //   auditList = [
  //     AuditModelList(
  //         auditby: 'Mr.Ravish',
  //         description: 'Monthly AC Stock Audit',
  //         location: 'Main Warehouse',
  //         percentage: '23%',
  //         scheduleDate: '21-06-2024',
  //         status: 'Completed',
  //         unit: '2304 Units'),
  //     AuditModelList(
  //         auditby: 'Mr. Ravish',
  //         description: 'Daily Mobile Stock Audit',
  //         location: 'Main Warehouse',
  //         percentage: '',
  //         scheduleDate: '26-05-2024',
  //         status: 'Not Started',
  //         unit: '1550 Units'),
  //     AuditModelList(
  //         auditby: 'Mr.Kevin',
  //         description: 'Weekly HA Items Audit',
  //         location: 'TNV1 Stroe',
  //         percentage: '',
  //         scheduleDate: '21-04-2024',
  //         status: 'Re-Audit',
  //         unit: '2304 Units')
  //   ];
  //   notifyListeners();
  // }

  String validteText = '';
  String apiResponse = '';
  validateReschedule(
      BuildContext context, ThemeData theme, int docentry) async {
    apiResponse = '';
    if (formkey[0].currentState!.validate()) {
      DateTime date = DateTime.now();
      String chooseddate;
      chooseddate =
          "${date.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year}";
      log('${chooseddate.toString()} == ${mycontroller[0].text}');
      if (chooseddate == mycontroller[0].text) {
        validteText = 'Please enter future date';
        notifyListeners();
      } else {
        validteText = '';
        await GetAuditRescheduleApi.getData(docentry, apidate)
            .then((value) async {
          if (value.stsCode >= 200 && value.stsCode <= 210) {
            apiResponse = value.respDesc;
            isLoading = false;
            Get.back();
            apiResponseDialog(context, theme, apiResponse);
            log('getBinList::${getBinList.length}');
            notifyListeners();
          } else if (value.stsCode >= 400 && value.stsCode <= 410) {
            errorMsg = value.exception;
            Get.back();
            apiResponseDialog(context, theme, errorMsg);
            isLoading = false;
            notifyListeners();
          }
        });
        notifyListeners();
      }
      notifyListeners();
    }
  }

  actionResetDialog(BuildContext context, ThemeData theme, String apiRes,
      String actionName, int docEntry, int indx) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, st) {
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
                                child: Text("Warning",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Screens.width(context) * 0.445,
                          height: Screens.bodyheight(context) * 0.06,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: theme.primaryColor,

                                // primary: theme.primaryColor,
                                textStyle: const TextStyle(color: Colors.white),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(0),
                                )),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text(
                                "Continue",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(
                          width: Screens.width(context) * 0.445,
                          height: Screens.bodyheight(context) * 0.06,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: theme.primaryColor,

                                // primary: theme.primaryColor,
                                textStyle: const TextStyle(color: Colors.white),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(8),
                                )),
                              ),
                              onPressed: () async {
                                final database =
                                    (await AppDatabase.initialize())!;
                                await driftoperation.deleteBinListItemById(
                                    docEntry, database);

                                await driftoperation.deleteListItemById(
                                    docEntry, database);
                                await driftoperation.deletHeaderItemById(
                                    docEntry, database);
                                Get.back();
                                String mssgg2 =
                                    'This Operation may take few minutes. Closing the application may interrupt the process.\n Do you want to continue ?';
                                actionwarningDialog(context, theme, mssgg2,
                                    'Start', docEntry, indx);
                              },
                              child: const Text(
                                "Reset",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    ),

                    // Row(
                    //   children: [
                    //     ElevatedButton(
                    //         style: ElevatedButton.styleFrom(
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(8)),
                    //             foregroundColor: Colors.white,
                    //             backgroundColor: theme.primaryColor),
                    //         onPressed: () {
                    //           Get.back();
                    //         },
                    //         child: const Text('Cancel')),
                    //     ElevatedButton(
                    //         style: ElevatedButton.styleFrom(
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(8)),
                    //             foregroundColor: Colors.white,
                    //             backgroundColor: theme.primaryColor),
                    //         onPressed: () {
                    //   Get.back();
                    //   callGetAuditActionApi(
                    //       context, theme, actionName, docEntry, indx);
                    // },
                    //         child: const Text('Ok')),
                    //   ],
                    // )
                  ])),
            );
          });
        });
  }

  actionwarningDialog(BuildContext context, ThemeData theme, String apiRes,
      String actionName, int docEntry, int indx) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, st) {
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
                                child: Text("Warning",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: Screens.width(context) * 0.445,
                          height: Screens.bodyheight(context) * 0.06,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: theme.primaryColor,

                                // primary: theme.primaryColor,
                                textStyle: const TextStyle(color: Colors.white),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(0),
                                )),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text(
                                "No",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(
                          width: Screens.width(context) * 0.445,
                          height: Screens.bodyheight(context) * 0.06,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: theme.primaryColor,

                                // primary: theme.primaryColor,
                                textStyle: const TextStyle(color: Colors.white),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(8),
                                )),
                              ),
                              onPressed: () {
                                Get.back();
                                callGetAuditActionApi(
                                    context, theme, actionName, docEntry, indx);
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    ),

                    // Row(
                    //   children: [
                    //     ElevatedButton(
                    //         style: ElevatedButton.styleFrom(
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(8)),
                    //             foregroundColor: Colors.white,
                    //             backgroundColor: theme.primaryColor),
                    //         onPressed: () {
                    //           Get.back();
                    //         },
                    //         child: const Text('Cancel')),
                    //     ElevatedButton(
                    //         style: ElevatedButton.styleFrom(
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(8)),
                    //             foregroundColor: Colors.white,
                    //             backgroundColor: theme.primaryColor),
                    //         onPressed: () {
                    //   Get.back();
                    //   callGetAuditActionApi(
                    //       context, theme, actionName, docEntry, indx);
                    // },
                    //         child: const Text('Ok')),
                    //   ],
                    // )
                  ])),
            );
          });
        });
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

  validateAbort(
    int docEntry,
    BuildContext context,
    ThemeData theme,
  ) async {
    if (formkey[1].currentState!.validate()) {
      await GetAuditCancelApi.getData(docEntry, mycontroller[1].text)
          .then((value) async {
        if (value.stsCode >= 200 && value.stsCode <= 210) {
          apiResponse = value.respDesc;
          isLoading = false;
          Get.back();

          apiResponseDialog(context, theme, apiResponse);
        } else if (value.stsCode >= 400 && value.stsCode <= 410) {
          errorMsg = value.exception;
          Get.back();
          apiResponseDialog(context, theme, errorMsg);
          isLoading = false;
          notifyListeners();
        }
      });
      notifyListeners();
    }
  }

  msgFromAoi() {}

  String apidate = '';
  void showDate(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050),
    ).then((value) {
      if (value == null) {
        return;
      }
      String chooseddate = value.toString();
      var date = DateTime.parse(chooseddate);
      chooseddate = "";
      chooseddate =
          "${date.day.toString().padLeft(2, '0')}-${date.month.toString().padLeft(2, '0')}-${date.year}";
      apidate =
          "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
      print(apidate);

      mycontroller[0].text = chooseddate;
      notifyListeners();
    });
  }

  File? source1;
  Directory? copyTo;
  Future<File> getPathOFDB() async {
    final dbFolder = await getDatabasesPath();
    File source1 = File('$dbFolder/Verifyt.db');
    return Future.value(source1);
  }

  Future<Directory> getDirectory() async {
    Directory copyTo = Directory("storage/emulated/0/Verifyt Backup");
    log('copyTocopyTocopyTo::$copyTo');
    return Future.value(copyTo);
  }

  Future<bool> getPermissionStorage() async {
    try {
      var statusStorage = await Permission.storage.status;
      if (statusStorage.isDenied) {
        Permission.storage.request();
        return Future.value(false);
      }
      if (statusStorage.isGranted) {
        log('storage Permission Allowed');
        return Future.value(true);
      }
    } catch (e) {
      saveDBShowSnackBars("$e", Colors.red);
    }
    return Future.value(false);
  }

  saveDBShowSnackBars(String e, Color color) {
    Get.showSnackbar(GetSnackBar(
      duration: const Duration(seconds: 3),
      title: "Warning..",
      message: e,
      backgroundColor: Colors.green,
    ));
  }

  Future<String> createDirectory() async {
    try {
      await copyTo!.create();
      String newPath = copyTo!.path;
      createDBFile(newPath);
      return newPath;
    } catch (e) {
      print('datata1111::$e');
      saveDBShowSnackBars("$e", Colors.red);
    }
    return 'null';
  }

  createDBFile(String path) async {
    try {
      String getPath = "$path/Verifyt.db";
      log("getPath::$getPath");
      await source1!.copy(getPath);
      saveDBShowSnackBars("Created!!...", Colors.green);
    } catch (e) {
      log('pathpathpathpath:$path');
      saveDBShowSnackBars("$e", Colors.red);
    }
  }
}

class CheckListselect {
  String? listval;
  int? indx;
  bool? issele;
  CheckListselect({this.indx, this.listval, this.issele});
}

class Checklisttemplate {
  int? templateid;
  Checklisttemplate({required this.templateid});
}

class FilesData {
  String fileBytes;
  String fileName;
  // String filepath;

  FilesData({
    required this.fileBytes,
    required this.fileName,
  });
}
// DBOperation.insertAuditByDervice(db, getAuditList2);

// for (var i = 0; i < 4; i++) {
//   DBOperation.updateActionTable(i, 'Open', db);
// }
// List<Map<String, Object?>> result2 =
//     await DBOperation.getAuditByDervice(db);
// for (var i = 0; i < result2.length; i++) {
//   getAuditList.add(GetAuditDataModel(
//       auditFrom: result2[i]['AuditFrom'].toString(),
//       user: result2[i]['User'].toString(),
//       percent: result2[i]['Percent'] != null
//           ? double.parse(result2[i]['Percent'].toString())
//           : 0,
//       unitsScanned: result2[i]['UnitsScanned'] != null
//           ? int.parse(result2[i]['UnitsScanned'].toString())
//           : 0,
//       totalItems: result2[i]['TotalItems'] != null
//           ? int.parse(result2[i]['TotalItems'].toString())
//           : 0,
//       auditTo: result2[i]['AuditTo'].toString(),
//       // blockTrans: bool.parse(result2[i][' blockTrans'].toString()),
//       createdBy: result2[i]['CreatedBy'] != null
//           ? int.parse(result2[i]['CreatedBy'].toString())
//           : 0,
//       createdDatetime: result2[i]['CreatedDatetime'].toString(),
//       docDate: result2[i]['DocDate'].toString(),
//       docEntry: result2[i]['DocEntry'] != null
//           ? int.parse(result2[i]['DocEntry'].toString())
//           : 0,
//       docNum: result2[i]['DocNum'] != null
//           ? int.parse(result2[i]['DocNum'].toString())
//           : 0,
//       endDate: result2[i]['EndDate'].toString(),
//       remarks: result2[i]['Remarks'].toString(),
//       // repeat: result2[i]['repeat'] != null
//       //     ? bool.parse(result2[i]['repeat'].toString())
//       //     : false,
//       repeatDay: result2[i]['RepeatDay'] != null
//           ? int.parse(result2[i]['RepeatDay'].toString())
//           : 0,
//       repeatFrequency: result2[i]['RepeatFrequency'].toString(),
//       scheduleName: result2[i]['ScheduleName'].toString(),
//       startDate: result2[i]['StartDate'].toString(),
//       status: result2[i]['Status'].toString(),
//       traceid: result2[i]['Traceid'].toString(),
//       updatedBy: result2[i]['UpdatedBy'] != null
//           ? int.parse(result2[i]['UpdatedBy'].toString())
//           : 0,
//       updatedDatetime: result2[i]['UpdatedDatetime'].toString(),
//       whsCode: result2[i]['WhsCode'] != null
//           ? result2[i]['WhsCode'].toString()
//           : ''));
// }
