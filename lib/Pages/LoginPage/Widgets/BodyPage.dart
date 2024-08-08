import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:verifytapp/Constant/Screen.dart';
import 'package:verifytapp/Controllers/LoginController/LoginControllers.dart';

import 'SettingPage.dart';

class LoginBodyPage extends StatefulWidget {
  const LoginBodyPage({super.key});

  @override
  State<LoginBodyPage> createState() => _LoginBodyPageState();
}

class _LoginBodyPageState extends State<LoginBodyPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      child: Form(
        key: context.read<LoginController>().formkeys[0],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: context.watch<LoginController>().erroMsgVisble,
              child: Container(
                padding: EdgeInsets.only(
                    left: Screens.width(context) * 0.05,
                    right: Screens.width(context) * 0.09),
                alignment: Alignment.center,
                width: Screens.width(context),
                child: Column(
                  children: [
                    Text(
                      LoginController.errorMsh,
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: Colors.red),
                      maxLines: 4,
                    ),
                    SizedBox(
                      height: Screens.bodyheight(context) * 0.02,
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                  left: Screens.width(context) * 0.09,
                  right: Screens.width(context) * 0.09),
              child: TextFormField(
                controller: context.read<LoginController>().mycontroller[0],
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Username';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: Screens.width(context) * 0.03,
                      vertical: Screens.fullHeight(context) * 0.01),
                  labelText: 'User Code',
                  labelStyle: theme.textTheme.bodyMedium
                      ?.copyWith(color: Colors.black54),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Screens.fullHeight(context) * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: Screens.width(context) * 0.09,
                  right: Screens.width(context) * 0.09),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Password';
                  }
                  return null;
                },
                controller: context.read<LoginController>().mycontroller[1],
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: Screens.width(context) * 0.03,
                      vertical: Screens.fullHeight(context) * 0.01),
                  labelText: 'Password',
                  labelStyle: theme.textTheme.bodyMedium
                      ?.copyWith(color: Colors.black54),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide:
                        const BorderSide(width: 1.5, color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Screens.fullHeight(context) * 0.02,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: Screens.width(context) * 0.09,
                  right: Screens.width(context) * 0.09),
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: context.read<LoginController>().isloading == true
                      ? null
                      : () {
                          setState(() {
                            context
                                .read<LoginController>()
                                .validateMethod(context);
                          });
                        },
                  child: Container(
                      alignment: Alignment.center,
                      height: Screens.fullHeight(context) * 0.055,
                      width: Screens.width(context) * 0.7,
                      child: context.watch<LoginController>().isloading == true
                          ? Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : Text('Sign In',
                              style: theme.textTheme.bodyMedium
                                  ?.copyWith(color: Colors.black)))),
            ),
            SizedBox(
              height: Screens.fullHeight(context) * 0.015,
            ),
            Container(
              padding: EdgeInsets.only(
                  left: Screens.width(context) * 0.13,
                  right: Screens.width(context) * 0.09),
              child: Row(
                children: [
                  Container(
                      child: Text("Don't have an account?",
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(color: Colors.white))),
                  TextButton(
                      onPressed: () {},
                      child: Text("Sign Up",
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(color: Colors.white))),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    left: Screens.width(context) * 0.11,
                    right: Screens.width(context) * 0.09),
                child: TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?",
                        style: theme.textTheme.bodyMedium
                            ?.copyWith(color: Colors.white)))),
            SizedBox(height: Screens.fullHeight(context) * 0.05),
            Container(
              padding: EdgeInsets.only(left: Screens.width(context) * 0.05),
              child: IconButton(
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, st) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.all(0),
                              content: SettingWidget(
                                theme: theme,
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
