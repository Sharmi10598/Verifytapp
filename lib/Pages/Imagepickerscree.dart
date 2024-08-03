// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:provider/provider.dart';
// import '../../../Constant/ConstantRoutes.dart';
// import '../../../Constant/ConstantSapValues.dart';
// import '../../../Constant/Screen.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:file_picker/file_picker.dart';

// import '../Controllers/AuditController/AuditControllers.dart';

// class PhotoViewer extends StatefulWidget {
//   const PhotoViewer({Key? key}) : super(key: key);

//   @override
//   State<PhotoViewer> createState() => PhotoViewState();
// }

// class PhotoViewState extends State<PhotoViewer> {
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
//   }
//   Future imagetoBinary2(ImageSource source,BuildContext context) async {
//     List<File> filesz=[];
//     // await LocationTrack.checkcamlocation();
//     final image = await ImagePicker().pickImage(source: source);
//     if (image == null) return;
//     log("image::$image");
//      log("image22::${image.name}");
//     // files.add(File());
//     // if(filedata.isEmpty){
//  filedata.clear();
//  filesz.clear();
//     // }
//       filesz.add(File(image.path));
    
   
//  log("filesz lenghthhhhh::::::${filedata.length}");
//     if (files.length <= 4) {
//       for (int i = 0; i < filesz.length; i++) {
//         files.add(filesz[i]);
//         List<int> intdata = filesz[i].readAsBytesSync();
//          String fileName = filesz[i].path.split('/').last;
//           String fileBytes = base64Encode(intdata);
//          Directory tempDir = await getTemporaryDirectory();
//           String tempPath = tempDir.path;
//             String fullPath = '${tempDir.path}/$fileName';
//               if(Platform.isAndroid){
// filedata.add(FilesData(
//             fileBytes: base64Encode(intdata),
//             fileName: fullPath
//             // files[i].path.split('/').last
//             ));
//              }else{
//               filedata.add(FilesData(
//             fileBytes: base64Encode(intdata),
//             fileName: image.path
//             // files[i].path.split('/').last
//             ));
//              }
//         // filedata.add(FilesData(
//         //     fileBytes: base64Encode(intdata),
//         //     fileName: fullPath));
//         log("filename::$fullPath");
//         log("filename::${filedata[i].fileName}");

//         // callProfileUpdateApi1(filedata[i].fileName,image.name,context);
//       }
//       // log("filesz lenghthhhhh::::::" + filedata.length.toString());

//       // return null;
//     } else {
     
//       // showtoast();
//     }
//     log("camera fileslength${files.length}");
//     log("camera filesdatalength${filedata.length}");
//     // showtoast();

//   }
//   sheetbottom(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     final theme = Theme.of(context);
//     {
//       showModalBottomSheet(
//         context: context,
//         builder: (context) {
//           return Wrap(
//             children: [
//               SizedBox(
//                   height: Screens.padingHeight(context) * 0.13,
//                   width: Screens.width(context) * 0.35,
//                   child: IconButton(
//                     color: theme.primaryColor,
//                     onPressed: () {
//                       selectattachment(context);
//                       Navigator.pop(context);
//                     },
//                     icon: const Icon(
//                       Icons.image,
//                       size: 60,
//                     ),
//                   )),
//               SizedBox(
//                   height: Screens.padingHeight(context) * 0.13,
//                   width: Screens.width(context) * 0.4,
//                   child: IconButton(
//                     color: theme.primaryColor,
//                     onPressed: () {
//                       imagetoBinary2(ImageSource.camera, context);
//                       Navigator.pop(context);
//                     },
//                     icon: const Icon(
//                       Icons.add_a_photo,
//                       size: 60,
//                     ),
//                   ))
//             ],
//           );
//         },
//       );
//     }
//   }

//   List<File> files = [];
//   FilePickerResult? result;
//   List<FilesData> filedata = [];

//   selectattachment(BuildContext context) async {
//     List<File> filesz = [];
//     log(files.length.toString());

//     result = await FilePicker.platform.pickFiles(allowMultiple: false);

//     if (result != null) {
//       log("image::$result");
//       log("image22::${result!.names.remove}");

//       String? urlimage = result!.names[0];
//       log("urlimage::$urlimage");
//       // if(filedata.isEmpty){
//       files.clear();
//       filesz.clear();
//       filedata.clear();
//       // }

//       log("filedata::${filedata.length}");

//       filesz = result!.paths.map((path) => File(path!)).toList();

//       // if (filesz.length != 0) {
//       //  int remainingSlots = 1 - files.length;
//       if (filesz.length <= 1) {
//         for (int i = 0; i < filesz.length; i++) {
//           // createAString();

//           // showtoast();
//           files.add(filesz[i]);
//           log("Files Lenght :::::${files.length}");
//           List<int> intdata = filesz[i].readAsBytesSync();
//           filedata.add(FilesData(
//               fileBytes: base64Encode(intdata), fileName: filesz[i].path));

//           //New
//           // XFile? photoCompressedFile =await testCompressAndGetFile(filesz[i],filesz[i].path);
//           // await FileStorage.writeCounter('${photoCompressedFile!.name}_1', photoCompressedFile);
//           //

//           // callProfileUpdateApi1(
//           //     filedata[i].fileName, urlimage.toString(), context);
//           // log("filedata222::${filedata.length}");
//           // return null;
//         }
//       } else {
//         // showtoast();
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return Scaffold(
//         backgroundColor: Colors.black,
//         // key: scaffoldKey,
//         appBar: AppBar(
//             leading: IconButton(
//                 onPressed: () {
//                   // Get.toNamed(ConstantRoutes.newprofile);
//                 },
//                 icon: Icon(Icons.arrow_back, color: theme.primaryColor)),
//             automaticallyImplyLeading: false,
//             backgroundColor: Colors.white,
//             centerTitle: true,
//             title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                     alignment: Alignment.center,
//                     child: Text(
//                       "Profile Photo",
//                       textAlign: TextAlign.center,
//                       style: theme.textTheme.titleLarge?.copyWith(
//                           color: theme.primaryColor,
//                           fontWeight: FontWeight.normal),
//                     )),
//                 IconButton(
//                     onPressed: () {
//                       sheetbottom(context);
//                     },
//                     icon: Icon(Icons.edit, color: theme.primaryColor))
//               ],
//             )),
//         body: SizedBox(
//           width: Screens.width(context),
//           height: Screens.bodyheight(context),
//           child: Stack(
//             children: [
//               InteractiveViewer(
//                   scaleEnabled: true,
//                   panEnabled: true,
//                   minScale: 0.5,
//                   maxScale: 4,
//                   child: ConstantValues.profilepic!.isNotEmpty
//                       ? Container(
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(
//                                       "${ConstantValues.profilepic}"),
//                                   fit: BoxFit.cover)),
//                         )
//                       : Container(
//                           decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               image: DecorationImage(
//                                   image: AssetImage("Assets/avatar.png"),
//                                   fit: BoxFit.cover)))),
//               Visibility(
//                 visible: context.watch<NewProfileController>().isprogress,
//                 child: Container(
//                   width: Screens.width(context),
//                   height: Screens.bodyheight(context),
//                   color: Colors.white54,
//                   child: const Center(child: CircularProgressIndicator()),
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }
