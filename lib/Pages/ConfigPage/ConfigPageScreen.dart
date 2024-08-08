import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:verifytapp/Constant/Screen.dart';
import 'package:verifytapp/Controllers/ConfigPageController/ConfigScreenController.dart';

class ConfigScreenPage extends StatefulWidget {
  const ConfigScreenPage({super.key});

  @override
  State<ConfigScreenPage> createState() => _ConfigScreenPageState();
}

class _ConfigScreenPageState extends State<ConfigScreenPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: const Text('Config'),
          ),
          Container(
              alignment: Alignment.centerLeft,
              width: Screens.padingHeight(context) * 0.5,
              padding: EdgeInsets.only(
                  top: Screens.padingHeight(context) * 0.02,
                  left: Screens.width(context) * 0.03,
                  right: Screens.width(context) * 0.03),
              child: Transform.scale(
                scale: 1,
                child: SwitchListTile(
                  title: SizedBox(
                      width: Screens.padingHeight(context) * 0.5,
                      child: const Text("Is this handled scanner")),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: ConfigController.isScanner,
                  onChanged: (bool value) {
                    setState(() {
                      ConfigController.isScanner =
                          value; //update value when sitch changed
                    });
                  },
                ),
              )),
        ],
      ),
    );
  }
}
