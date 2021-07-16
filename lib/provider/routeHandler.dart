import 'package:flutter/cupertino.dart';
import 'package:prashantapp/const/enums.dart';
import 'package:prashantapp/utils/internetconnection.dart';

class RouteHandler extends ChangeNotifier {
  Status _status = Status.Uninitialized;
  Status get status => _status;
/* Variables Declarition Ended
  
  */
  initAuthProvider() async {
    if (await InternetConnection().isConnected()) {
      // _status = await SharedData().islogin()
      //     ? await isUsernameandpasswordCorrect()
      //         ? Status.Authenticated
      //         : Status.Unauthenticated
      //     : Status.Unauthenticated;
    } else {
      _status = Status.NOINTERNETCONNECTION;
    }
    _status = Status.Authenticated;
    notifyListeners();
  }

  Future login(String id, String password) async {
    // _status = Status.Authenticating;
    // bool _login = true;
    // var response = await API().login(id, password);
    // var jsondata = json.decode(response);
    // var responsemsg = QuickSendResponse.fromJson(jsondata);
    // if (responsemsg.status == errorCode[ErrorType.INCORRECT_LOGIN]) {
    //   _login = false;
    //   _responsemsg = msg[ErrorType.INCORRECT_LOGIN];
    // } else if (responsemsg.status == errorCode[ErrorType.LOGIN_SUCESS]) {
    //   _status = Status.Authenticated;
    //   setMessageLoginScreen = null;
    //   SharedData().setlogincredentials(id, password);
    // }
    // if (!_login) {
    //   setMessageLoginScreen = TextData.invalidCredentails;
    //   setMessageonLoginScreen = true;
    // } else
    _status = Status.Authenticated;

    // setProcessingonLoginScreen = false;
    notifyListeners();
  }

  Future<bool> register(
      String fullname, String mobile, String email, String location) async {
    // var response = await API().register(fullname, mobile, email, location);
    // if (json.decode(response)["status"] == 202.toString()) {
    //   registrationSuccess = true;
    // } else
    //   registrationError = true;
    // messageShow = true;
    _status = Status.Authenticated;
    notifyListeners();
    return true;
  }
}
