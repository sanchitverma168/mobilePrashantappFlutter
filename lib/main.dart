import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_bloc.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_state.dart';
import 'package:prashantapp/pages/dashboard.dart';
import 'package:prashantapp/pages/dashboard/home.dart';

void main() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor:Colors.transparent ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColors.appPrimaryColor,
      ),
      home: BlocProvider(
        create: (context) => PageTransitionBloc(HandleDrawerPageState(Home(),0)),
        child: Dashboard(),
      ),
    );
  }
}
