// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Constant/Screen.dart';
import '../../../Controllers/LoginController/LoginControllers.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({
    required this.theme,
    Key? key,
  }) : super(key: key);
  final ThemeData theme;
  @override
  State<SettingWidget> createState() => SettingWidgetState();
}

class SettingWidgetState extends State<SettingWidget> {
  Future<SharedPreferences> pref = SharedPreferences.getInstance();
  disableKeyBoard(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  saveTenantId() async {
    final pref2 = await pref;
    if (pref2.getString('tenantId') != null) {
      context.read<LoginController>().mycontroller[3].text =
          pref2.getString('tenantId')!;
    } else {
      context.read<LoginController>().mycontroller[3].text = '';
    }
  }

  @override
  initState() {
    super.initState();
    saveTenantId();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Screens.width(context),
              height: Screens.fullHeight(context) * 0.05,
              color: widget.theme.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: Screens.fullHeight(context) * 0.02,
                      right: Screens.fullHeight(context) * 0.02,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Configure',
                      style: widget.theme.textTheme.bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        // size: Screens.fullHeight(context) * 0.025,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Screens.fullHeight(context) * 0.02,
            ),
            Form(
              key: context.read<LoginController>().formkeys[1],
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: Screens.width(context) * 0.02,
                      right: Screens.width(context) * 0.02,
                    ),
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: TextFormField(
                      autofocus: true,
                      controller:
                          context.read<LoginController>().mycontroller[3],
                      cursorColor: Colors.grey,
                      //keyboardType: TextInputType.number,
                      onChanged: (v) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter the customer id';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Customer ID',
                        hintStyle: widget.theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.grey),
                        filled: false,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Screens.fullHeight(context) * 0.02,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  context.read<LoginController>().settingvalidate(context);
                });
                // context.read<LoginController>().loadSettings();
              },
              child: Container(
                alignment: Alignment.center,
                height: Screens.fullHeight(context) * 0.045,
                decoration: BoxDecoration(
                  color: widget.theme.primaryColor,
                ),
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Ok',
                      textAlign: TextAlign.center,
                      style: widget.theme.textTheme.bodyLarge
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
