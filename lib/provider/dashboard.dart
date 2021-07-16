import 'package:flutter/cupertino.dart';
import 'package:prashantapp/const/enums.dart';
import 'package:prashantapp/pages/dashboard/account.dart';
import 'package:prashantapp/pages/dashboard/home.dart';
import 'package:prashantapp/pages/dashboard/settings.dart';

class DashboardProvider extends ChangeNotifier {
  PageControl _page = PageControl.home;
  PageControl get page => _page;
  Widget _body = Home();
  get body => this._body;

  set body(value) => this._body = value;

  swtichpage(PageControl page) {
    switch (page) {
      case PageControl.home:
        _page = PageControl.home;
        _body = Home();
        break;
      case PageControl.account:
        _page = PageControl.account;
        _body = Account();
        break;
      case PageControl.settings:
        _page = PageControl.settings;
        _body = Settings();
        break;
      default:
        _page = PageControl.home;
        break;
    }
    notifyListeners();
  }
}
