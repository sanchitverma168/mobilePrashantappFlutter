import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/pages/dashboard.dart';
import 'package:prashantapp/pages/error.dart';
import 'package:prashantapp/pages/loading.dart';
import 'package:prashantapp/pages/login.dart';
import 'package:provider/provider.dart';
import 'provider/routeHandler.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppColors.appPrimaryColor));
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RouteHandler()),
      ],
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: AppColors.appPrimaryColor,
          secondaryHeaderColor: AppColors.appSecondaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => new Router(),
        },
      ),
    ),
  );
}

class Router extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<RouteHandler>(
        builder: (context, user, child) {
          switch (user.status) {
            case Status.Uninitialized:
              return AndroidLoading();
            case Status.Unauthenticated:
              return LoginPage();
            case Status.Authenticated:
              return Dashboard();
            case Status.NOINTERNETCONNECTION:
              return ErrorPage();
            default:
              return LoginPage();
          }
        },
      ),
    );
  }
}
