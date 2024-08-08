import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../Constant/Screen.dart';
import '../../../Controllers/AuditController/AuditControllers.dart';
import '../../../Model/ScanPostModel/ScanPostDataaModel.dart';

class GetImageFilePage extends StatefulWidget {
  const GetImageFilePage({super.key});

  @override
  State<GetImageFilePage> createState() => _GetImageFilePageState();
}

class _GetImageFilePageState extends State<GetImageFilePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                  '${context.watch<AuditCtrlProvider>().getckeckDataListForm55[0].templateName}',
                  style: theme.textTheme.bodyLarge?.copyWith(fontSize: 18),
                )),
            Container(
                padding: EdgeInsets.only(
                  top: Screens.padingHeight(context) * 0.02,
                ),
                height: Screens.padingHeight(context) * 0.45,
                width: Screens.width(context),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: context
                        .watch<AuditCtrlProvider>()
                        .getckeckDataListForm55
                        .length,
                    itemBuilder: (context, index) {
                      var litstagex = context
                          .watch<AuditCtrlProvider>()
                          .getckeckDataListForm55[index]
                          .listValue!
                          .split(',');
                      context
                          .watch<AuditCtrlProvider>()
                          .chkListController[index]
                          .text = 'x';
                      return Column(
                        children: [
                          Container(
                            // height: Screens.padingHeight(context) * 0.06,
                            width: Screens.width(context),
                            child: TextField(
                              readOnly: true,
                              controller: context
                                  .watch<AuditCtrlProvider>()
                                  .chkListController[index],
                              decoration: InputDecoration(
                                labelText:
                                    '${context.watch<AuditCtrlProvider>().getckeckDataListForm55[index].checklistName}',
                                suffixIcon: Container(
                                  padding: EdgeInsets.only(
                                      left: Screens.width(context) * 0.03),
                                  height: Screens.padingHeight(context) * 0.07,
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
                                                      BorderRadius.circular(4),
                                                  color: litstagex[indexx] ==
                                                          context
                                                              .watch<
                                                                  AuditCtrlProvider>()
                                                              .getckeckDataListForm55[
                                                                  index]
                                                              .isselectlistval!
                                                      ? theme.primaryColor
                                                          .withOpacity(0.3)
                                                      : Colors.white,
                                                  border: Border.all(
                                                      color: theme.primaryColor,
                                                      width: 1)),
                                              padding: EdgeInsets.only(
                                                  left: Screens.width(context) *
                                                      0.03,
                                                  right:
                                                      Screens.width(context) *
                                                          0.03),
                                              height: Screens.padingHeight(
                                                      context) *
                                                  0.043,
                                              child: IconButton(
                                                  icon: context
                                                              .watch<
                                                                  AuditCtrlProvider>()
                                                              .getckeckDataListForm55[
                                                                  index]
                                                              .acceptAttach ==
                                                          true
                                                      ? Icon(Icons.attach_file,
                                                          color: theme
                                                              .primaryColor)
                                                      : Container(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Text(
                                                            litstagex[indexx]
                                                                .toString(),
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                    color: theme
                                                                        .primaryColor),
                                                          ),
                                                        ),
                                                  onPressed: () {
                                                    if (context
                                                            .read<
                                                                AuditCtrlProvider>()
                                                            .getckeckDataListForm55[
                                                                index]
                                                            .acceptAttach ==
                                                        true) {
                                                      setState(() {
                                                        context
                                                            .read<
                                                                AuditCtrlProvider>()
                                                            .imageBottomSheet(
                                                                context);

                                                        log('urlImageurlImage:${context.read<AuditCtrlProvider>().urlImage}');

                                                        context.read<AuditCtrlProvider>().checklistdata.add(DispListData(
                                                            attachurl: context
                                                                    .read<
                                                                        AuditCtrlProvider>()
                                                                    .urlImage
                                                                    .isNotEmpty
                                                                ? context
                                                                    .read<
                                                                        AuditCtrlProvider>()
                                                                    .urlImage
                                                                : '',
                                                            auditid: context
                                                                .read<
                                                                    AuditCtrlProvider>()
                                                                .getckeckDataListForm55[
                                                                    index]
                                                                .docEntry,
                                                            checklistcode: context
                                                                .read<
                                                                    AuditCtrlProvider>()
                                                                .getckeckDataListForm55[
                                                                    index]
                                                                .checklistCode,
                                                            checklistvalue: context
                                                                .read<
                                                                    AuditCtrlProvider>()
                                                                .isSelectedCusTag));
                                                      });
                                                    } else {
                                                      setState(() {
                                                        if (context
                                                                .read<
                                                                    AuditCtrlProvider>()
                                                                .isselected ==
                                                            true) {
                                                          context
                                                              .read<
                                                                  AuditCtrlProvider>()
                                                              .isselected = false;
                                                        } else {
                                                          context
                                                              .read<
                                                                  AuditCtrlProvider>()
                                                              .isselected = true;
                                                        }

                                                        context
                                                                .read<
                                                                    AuditCtrlProvider>()
                                                                .getckeckDataListForm55[
                                                                    index]
                                                                .isselectlistval =
                                                            litstagex[indexx];

                                                        log('indexxindexxindexx::$context.read<AuditCtrlProvider>().isselected');
                                                        if (litstagex[indexx] ==
                                                            context
                                                                .read<
                                                                    AuditCtrlProvider>()
                                                                .getckeckDataListForm55[
                                                                    index]
                                                                .isselectlistval!) {}
                                                        context
                                                                .read<
                                                                    AuditCtrlProvider>()
                                                                .getckeckDataListForm55[
                                                                    index]
                                                                .isselectlistval ==
                                                            true;
                                                        log('${context.read<AuditCtrlProvider>().getckeckDataListForm55[index].isselectlistval}');
                                                        log('message list::${litstagex[indexx]}');

                                                        log('messageXXXXXXX:${context.read<AuditCtrlProvider>().getckeckDataListForm55[index].checklistCode}');
                                                        context
                                                            .read<
                                                                AuditCtrlProvider>()
                                                            .checklistdata
                                                            .add(DispListData(
                                                                attachurl: '',
                                                                auditid: context
                                                                    .read<
                                                                        AuditCtrlProvider>()
                                                                    .getckeckDataListForm55[
                                                                        index]
                                                                    .docEntry,
                                                                checklistcode: context
                                                                    .read<
                                                                        AuditCtrlProvider>()
                                                                    .getckeckDataListForm55[
                                                                        index]
                                                                    .checklistCode,
                                                                checklistvalue: context
                                                                    .read<
                                                                        AuditCtrlProvider>()
                                                                    .isSelectedCusTag));
                                                      });
                                                    }

                                                    log('checklistdatachecklistdata::${context.read<AuditCtrlProvider>().checklistdata[0].attachurl}');
                                                  }),
                                            ),
                                            SizedBox(
                                                width: Screens.width(context) *
                                                    0.02),
                                            context
                                                            .read<
                                                                AuditCtrlProvider>()
                                                            .getckeckDataListForm55[
                                                                index]
                                                            .acceptAttach ==
                                                        true &&
                                                    context
                                                        .read<
                                                            AuditCtrlProvider>()
                                                        .filedata
                                                        .isNotEmpty
                                                ? Text(context
                                                    .read<AuditCtrlProvider>()
                                                    .filedata[0]
                                                    .fileName)
                                                : Container(),
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
                                  context
                                      .read<AuditCtrlProvider>()
                                      .addTag(text);
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: Screens.padingHeight(context) * 0.015,
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
              onPressed: () {
                Get.back();
              },

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
  }
}
