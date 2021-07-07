import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_bloc.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_event.dart';
import 'package:prashantapp/widgets/login/button_widget.dart';

class RequestPage extends StatefulWidget {
  RequestPage({Key? key}) : super(key: key);

  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    final _page = BlocProvider.of<PageTransitionBloc>(context);
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Coming Soon"),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => _page.add(HomeEvent()),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ButtonWidget(
                  hasBorder: true,
                  title: "Go Back",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
