import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:prashantapp/const/colors.dart';
import 'package:prashantapp/const/enums.dart';
import 'package:prashantapp/const/size.dart';
import 'package:prashantapp/provider/dashboard.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // final _page = BlocProvider.of<PageTransitionBloc>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DashboardProvider(),
        ),
      ],
      child: Consumer<DashboardProvider>(builder: (context, user, child) {
        return Scaffold(
          body: user.body,
          bottomNavigationBar: CurvedNavigationBar(
            color: AppColors.appPrimaryColor,
            backgroundColor: Colors.white,
            buttonBackgroundColor: user.page == PageControl.home
                ? AppColors.appPrimaryColor
                : user.page == PageControl.account
                    ? AppColors.appPrimaryColor
                    : user.page == PageControl.settings
                        ? AppColors.appPrimaryColor
                        : Colors.white,
            height: AppSizes(context).bnbh(),
            items: <Widget>[
              Icon(
                Icons.home,
                size: 30,
                color: user.page == PageControl.home
                    ? AppColors.appSecondaryColor
                    : Colors.white,
              ),
              Icon(
                Icons.person,
                size: 30,
                color: user.page == PageControl.account
                    ? AppColors.appSecondaryColor
                    : Colors.white,
              ),
              Icon(
                Icons.settings,
                size: 30,
                color: user.page == PageControl.settings
                    ? AppColors.appSecondaryColor
                    : Colors.white,
              ),
            ],
            onTap: (index) {
              switch (index) {
                case 0:
                  user.swtichpage(PageControl.home);
                  break;
                case 1:
                  user.swtichpage(PageControl.account);
                  break;
                case 2:
                  user.swtichpage(PageControl.settings);
                  break;
              }
              //Handle button tap
              // },
              // index: state.index,
            },
          ),
        );
      }),
    );
  }
}
