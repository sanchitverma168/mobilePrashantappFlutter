import 'package:flutter/material.dart';
import 'package:prashantapp/provider/routeHandler.dart';
import 'package:provider/provider.dart';

class AndroidLoading extends StatelessWidget {
  initAuthProvider(context) async {
    // if (await SharedData().isNotfirsttime) SharedData().setfirstime(true);
    Provider.of<RouteHandler>(context, listen: false).initAuthProvider();
  }

  @override
  Widget build(BuildContext context) {
    initAuthProvider(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.red,
            ),
            Text("TextData.loading")
          ],
        ),
      ),
    );
  }
}
