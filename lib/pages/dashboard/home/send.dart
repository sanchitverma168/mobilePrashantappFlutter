import 'package:flutter/material.dart';
import 'package:prashantapp/widgets/login/button_widget.dart';

class SendPage extends StatefulWidget {
  SendPage({Key? key}) : super(key: key);

  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("Coming Soon"),
            GestureDetector(
              // onTap: () => _page.add(HomeEvent()),
              child: ButtonWidget(
                hasBorder: false,
                title: "Go Back",
              ),
            )
          ],
        ),
      ),
    );
  }
}
