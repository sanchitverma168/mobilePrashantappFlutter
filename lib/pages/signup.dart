import 'package:flutter/material.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/const/size.dart';
import 'package:prashantapp/const/strings.dart';
import 'package:prashantapp/widgets/login/button_widget.dart';
import 'package:prashantapp/widgets/login/textFieldWidget.dart';
import 'package:prashantapp/widgets/login/wave_widget.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: AppSizes(context).loginScreenHeading().first,
            color: AppColors.mediumBlue,
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen
                ? AppSizes(context).loginScreenanimatedwidget()
                : 0.0,
            child: WaveWidget(
              size: AppSizes(context).size!,
              yOffset: AppSizes(context).size!.height / 3.0,
              color: AppColors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  AppStrings.signup,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  hintText: AppStrings.fullName,
                  obscureText: false,
                  prefixIconData: Icons.person,
                  suffixIconData: Icons.check,
                  // onChanged: (value) {
                  //   // model.isValidEmail(value);
                  // },
                ),
                SizedBox(height: 10.0),
                TextFieldWidget(
                  hintText: AppStrings.mobileNumber,
                  obscureText: false,
                  prefixIconData: Icons.mobile_friendly,
                  suffixIconData: Icons.check,
                  // onChanged: (value) {
                  //   // model.isValidEmail(value);
                  // },
                ),
                SizedBox(height: 10.0),
                TextFieldWidget(
                  hintText: AppStrings.dob,
                  obscureText: false,
                  prefixIconData: Icons.date_range_outlined,
                  suffixIconData: Icons.check,
                ),
                SizedBox(
                  height: 20.0,
                ),
                ButtonWidget(
                  title: AppStrings.signup,
                  hasBorder: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
