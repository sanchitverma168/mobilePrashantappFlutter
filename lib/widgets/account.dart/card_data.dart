import 'package:flutter/material.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/const/size.dart';

class CardData extends StatefulWidget {
  final String? title, text;
  final bool visible;
  final bool value;
  CardData(
      {Key? key,
      required this.title,
      this.text,
      this.visible = false,
      this.value = false})
      : super(key: key);

  @override
  _CardDataState createState() => _CardDataState();
}

class _CardDataState extends State<CardData> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: AppColors.appPrimaryColor,
      child: Container(
        color: Colors.yellow.shade100,
        height: AppSizes(context).apch(),
        child: widget.value == false
            ? Row(
                children: [
                  Expanded(
                      flex: 1, child: Center(child: Text("${widget.title} :"))),
                       Expanded(flex: 1, child: Text(widget.text!))
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(child: Text("${widget.title} :")),
                  Switch(value: false, onChanged: (value) => {})
                ],
              ),
      ),
    );
  }
}
