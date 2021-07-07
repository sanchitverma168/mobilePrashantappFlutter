import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/const/size.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_bloc.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_event.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_state.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final _page = BlocProvider.of<PageTransitionBloc>(context);

    return BlocBuilder<PageTransitionBloc, HandleDrawerPageState>(
      builder: (BuildContext context, HandleDrawerPageState state) {
        return Scaffold(
          body: state.body,
          bottomNavigationBar: CurvedNavigationBar(
            color: AppColors.appPrimaryColor,
            backgroundColor: Colors.white,
            buttonBackgroundColor: state.index == 0
                ? AppColors.appPrimaryColor
                : state.index == 1
                    ? AppColors.appPrimaryColor
                    : state.index == 2
                        ? AppColors.appPrimaryColor
                        : Colors.white,
            height: AppSizes(context).bnbh(),
            items: <Widget>[
              Icon(Icons.home,
                  size: 30,
                  color: state.index == 0 ? AppColors.appSecondaryColor : Colors.white),
              Icon(Icons.person,
                  size: 30,
                  color: state.index == 1 ? AppColors.appSecondaryColor : Colors.white),
              Icon(Icons.settings,
                  size: 30,
                  color: state.index == 2 ? AppColors.appSecondaryColor : Colors.white),
            ],
            onTap: (index) {
              switch (index) {
                case 0:
                  _page.add(HomeEvent());
                  break;
                case 1:
                  _page.add(AccountEvent());
                  break;
                case 2:
                  _page.add(SettingsEvent());
                  break;
              }
              //Handle button tap
            },
            index: state.index,
          ),
        );
      },
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Drawer(
        elevation: 5,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  height: AppSizes(context).dsh(),
                  color: AppColors.mediumBlue,
                  child: Center(
                      child: Text(
                    "App Name",
                    style: TextStyle(color: AppColors.white),
                  )),
                )),
            SingleChildScrollView(
              padding: EdgeInsets.all(0),
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(Icons.home, color: Colors.black),
                      tileColor: AppColors.appSecondaryColor,
                      title: Text("Home")),
                  ListTile(
                      leading: Icon(Icons.person, color: AppColors.mediumBlue),
                      title: Text("Account")),
                  ListTile(
                      leading:
                          Icon(Icons.settings, color: AppColors.mediumBlue),
                      title: Text("Settings")),
                  ListTile(
                      leading: Icon(Icons.logout, color: AppColors.mediumBlue),
                      title: Text("Log Out")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
