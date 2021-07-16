import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/const/size.dart';
import 'package:prashantapp/const/strings.dart';
import 'package:prashantapp/widgets/login/button_widget.dart';
import 'package:prashantapp/widgets/login/textFieldWidget.dart';
import 'package:prashantapp/widgets/login/wave_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            child: Text(
              // _page.state.toString(),
              AppStrings.login,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  hintText: AppStrings.mobileNumber,
                  obscureText: false,
                  prefixIconData: Icons.mobile_friendly,
                  suffixIconData: Icons.check,
                  // onChanged: (value) {
                  //   // model.isValidEmail(value);
                  // },
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextFieldWidget(
                      hintText: AppStrings.dob,
                      obscureText: false,
                      prefixIconData: Icons.date_range_outlined,
                      suffixIconData: Icons.visibility_off,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      AppStrings.forgotPassword,
                      style: TextStyle(
                        color: AppColors.mediumBlue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  // onTap: () => {_page.add(HomeEvent())},
                  child: ButtonWidget(
                    title: AppStrings.login,
                    hasBorder: false,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  // onTap: () => _page.add(AccountEvent()),
                  child: ButtonWidget(
                    title: AppStrings.signup,
                    hasBorder: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
