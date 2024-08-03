import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:verifytapp/Controllers/AuditController/AuditControllers.dart';

import '../../../Constant/Configuration.dart';
import '../../../Constant/Screen.dart';
import '../../ItemDetailsPages/ItemDetailsScreen.dart';

class AuditingCompletedScreen extends StatefulWidget {
  const AuditingCompletedScreen({super.key});

  @override
  State<AuditingCompletedScreen> createState() =>
      _AuditingCompletedScreenState();
}

class _AuditingCompletedScreenState extends State<AuditingCompletedScreen> {
  @override
  Config config = Config();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.only(
          left: Screens.width(context) * 0.02,
          right: Screens.width(context) * 0.02),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Screens.padingHeight(context) * 0.01,
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: Screens.padingHeight(context) * 0.07,
            ),
            height: Screens.padingHeight(context) * 0.825,
            child: context.watch<AuditCtrlProvider>().isLoading == true &&
                    context.watch<AuditCtrlProvider>().errorMsg.isEmpty &&
                    context
                        .watch<AuditCtrlProvider>()
                        .completedAuditList
                        .isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                      color: theme.primaryColor,
                    ),
                  )
                : context.watch<AuditCtrlProvider>().isLoading == false &&
                        context.watch<AuditCtrlProvider>().errorMsg.isEmpty &&
                        context
                            .watch<AuditCtrlProvider>()
                            .completedAuditList
                            .isEmpty
                    ? Container(
                        child: Center(child: Text('No Data..')),
                      )
                    : ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: context
                            .watch<AuditCtrlProvider>()
                            .completedAuditList
                            .length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 0,
                            child: GestureDetector(
                              onDoubleTap: () {
                                // context
                                //     .read<AuditCtrlProvider>()
                                //     .fetchOpenDetails(context
                                //         .read<AuditCtrlProvider>()
                                //         .completedAuditList[index]);
                                // context
                                //     .read<AuditCtrlProvider>()
                                //     .showOpenDialog(
                                //         context,
                                //         theme,
                                //         context
                                //             .read<AuditCtrlProvider>()
                                //             .completedAuditList[index]
                                //             .docEntry);
                              },
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ItemDetails(
                                            title:
                                                '#${context.read<AuditCtrlProvider>().completedAuditList[index].docNum} - ${context.read<AuditCtrlProvider>().completedAuditList[index].scheduleName}')));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black26)),
                                padding: EdgeInsets.all(
                                    Screens.padingHeight(context) * 0.008),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: Screens.width(context) * 0.6,
                                          child: Text(
                                              context
                                                  .watch<AuditCtrlProvider>()
                                                  .completedAuditList[index]
                                                  .scheduleName,
                                              style: theme.textTheme.titleMedium
                                                  ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: Screens.width(context) * 0.29,
                                          child: Text(
                                            context
                                                    .watch<AuditCtrlProvider>()
                                                    .completedAuditList[index]
                                                    .percent
                                                    .toString() +
                                                "%",
                                            // context
                                            //         .watch<AuditCtrlProvider>()
                                            //         .auditList[index]
                                            //         .percentage!
                                            //         .isNotEmpty
                                            //     ? context
                                            //         .watch<AuditCtrlProvider>()
                                            //         .auditList[index]
                                            //         .percentage!
                                            //     : '',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(
                                                    color: Colors.cyan,
                                                    fontSize: 17,
                                                    fontWeight:
                                                        FontWeight.normal),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            'Scheduled at ${config.alignDate(context.watch<AuditCtrlProvider>().completedAuditList[index].auditFrom)}',
                                            style: theme.textTheme.bodyMedium
                                                ?.copyWith(color: Colors.grey)),
                                        Container(
                                          width: Screens.width(context) * 0.29,
                                          alignment: Alignment.center,
                                          child: Text(
                                            context
                                                .watch<AuditCtrlProvider>()
                                                .completedAuditList[index]
                                                .status!,
                                            style: theme.textTheme.bodyMedium?.copyWith(
                                                color: context
                                                            .watch<
                                                                AuditCtrlProvider>()
                                                            .completedAuditList[
                                                                index]
                                                            .status ==
                                                        'Re-Audit'
                                                    ? Colors.red
                                                    : Colors.cyan,
                                                fontSize: 17,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade100,
                                              width: 0.4)),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                'Location : ${context.watch<AuditCtrlProvider>().completedAuditList[index].whsCode}',
                                                style: theme
                                                    .textTheme.bodyMedium
                                                    ?.copyWith(
                                                        color: Colors.grey)),
                                            Text(
                                                'Audit By ${context.watch<AuditCtrlProvider>().openAuditList[index].whsCode}',
                                                //  ${context.watch<AuditCtrlProvider>().completedAuditList[index].

                                                // }',
                                                style: theme.textTheme.bodySmall
                                                    ?.copyWith(
                                                        color: Colors.grey))
                                          ],
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          width: Screens.width(context) * 0.29,
                                          child: Text(
                                            context
                                                .watch<AuditCtrlProvider>()
                                                .completedAuditList[index]
                                                .unitsScanned
                                                .toString(), // context
                                            //     .watch<AuditCtrlProvider>()
                                            //     .auditList[index]
                                            //     .unit!,
                                            style: theme.textTheme.bodyMedium?.copyWith(
                                                color: context
                                                            .watch<
                                                                AuditCtrlProvider>()
                                                            .completedAuditList[
                                                                index]
                                                            .status ==
                                                        'Re-Audit'
                                                    ? Colors.red
                                                    : Colors.cyan,
                                                fontSize: 17,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
          ),
          SizedBox(
            height: Screens.padingHeight(context) * 0.05,
          ),
        ],
      ),
    ));
  }
}
