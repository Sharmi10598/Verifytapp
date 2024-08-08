import 'package:flutter/material.dart';

import '../../../Constant/Screen.dart';

class BinScreenPage extends StatefulWidget {
  const BinScreenPage({super.key});

  @override
  State<BinScreenPage> createState() => _BinScreenPageState();
}

class _BinScreenPageState extends State<BinScreenPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            AppBar(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,

              centerTitle: true,
              automaticallyImplyLeading: false,
              // ignore: prefer_const_constructors
              title: Text('Bin'),
            ),
            Container(
              height: Screens.padingHeight(context),
              child: Center(
                child: Text('No data to load..!!!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
