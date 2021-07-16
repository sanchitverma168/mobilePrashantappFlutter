import 'package:flutter/material.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/const/icons.dart';
import 'package:prashantapp/const/images.dart';
import 'package:prashantapp/widgets/dashboard/line_chart.dart';
import 'package:prashantapp/widgets/dashboard/shortcut_box.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var _page;
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              // SizedBox(height: AppSizes(context).tp,),
              TopHeader(),
              SizedBox(height: 20),
              Graph(),
              Divider(height: 10),
              SendRequestButton(_page),
              SizedBox(height: 30),
              LastTransaction(),
              Card(
                shadowColor: Colors.black26,
                elevation: 4,
                child: ListTile(
                  title: RichText(
                    text: TextSpan(
                        text: "Rs. ",
                        style: TextStyle(color: Colors.black),
                        children: [TextSpan(text: "500")]),
                  ),
                  trailing:
                      Icon(Icons.receipt, color: AppColors.appPrimaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LastTransaction extends StatelessWidget {
  const LastTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text("Last Transaction"),
        )
      ],
    );
  }
}
class SendRequestButton extends StatelessWidget {
  SendRequestButton(
    this.page, {
    Key? key,
  }) : super(key: key);
  final  page;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          // onTap: () => page.add(SendEvent()),
          child: ShortCut(
            transform: true,
            text: "    Send    ",
            color: Colors.blue.shade400,
            icon: AppIcons.send,
          ),
        ),
        GestureDetector(
          // onTap: () => page.add(RequestEvent()),
          child: ShortCut(
            transform: false,
            text: "Request",
            color: Colors.red.shade400,
            icon: Icons.receipt_long,
          ),
        ),
      ],
    );
  }
}

class Graph extends StatelessWidget {
  const Graph({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: AppColors.appSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text("Last 12 Months"),
                ),
              ],
            ),
            SizedBox(height: 5),
            LineChartSample2(),
          ],
        ),
      ),
    );
  }
}

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 25.0, left: 20.0, right: 8.0, bottom: 8.0),
      child: Row(
        children: [
          GestureDetector(
            // onTap: () => _page.add(AccountEvent()),
            child: CircleAvatar(
                radius: 30, backgroundImage: AssetImage(AppImages.profileimg)),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcom Sanchit"),
              Text("Here your last 12 months report")
            ],
          )
        ],
      ),
    );
  }
}
