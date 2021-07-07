import 'package:flutter/material.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/widgets/account.dart/card_data.dart';
import 'package:prashantapp/widgets/login/button_widget.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardData(title: "Name", text: "Sanchit Verma"),
        CardData(title: "Mobile Number", text: "123456789"),
        CardData(title: "Email", text: "demo@gmail.com"),
        CardData(title: "Address", text: "GhantaGhar Etah"),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                child: Text(
                  "Update Password",
                  style: TextStyle(color: AppColors.appPrimaryColor),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal:8.0,vertical:8.0),
         child: ButtonWidget(title: "Contact US",hasBorder: true,),
       )
      ],
    );
  }
}
