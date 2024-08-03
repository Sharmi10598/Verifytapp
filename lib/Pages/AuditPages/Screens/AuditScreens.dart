import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:verifytapp/Constant/Screen.dart';
import 'package:verifytapp/Pages/AuditPages/Widgets/AuditOpenPage.dart';

import '../../../Controllers/AuditController/AuditControllers.dart';
import '../Widgets/AuditCompletedPage.dart';
import '../Widgets/AuditUpComingPage.dart';

class AuditAllScreens extends StatefulWidget {
  const AuditAllScreens({super.key});

  @override
  State<AuditAllScreens> createState() => _AuditAllScreensState();
}

class _AuditAllScreensState extends State<AuditAllScreens> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AuditCtrlProvider>().init(context, Theme.of(context));
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.white,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.blue,
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Open',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                    child: Text('Completed',
                        style: TextStyle(color: Colors.white))),
                Tab(
                    child: Text('Upcoming',
                        style: TextStyle(color: Colors.white))),
              ],
            ),
            title: const Text('Audit'),
            actions: []),
        body: const TabBarView(
          children: [
            AuditingOpenScreen(),
            AuditingCompletedScreen(),
            AuditingUpComingScreen(),
            // Center(child: Text('Completed')),
            // Center(child: Text('UpComing')),
          ],
        ),
      ),
    );
  }
}
