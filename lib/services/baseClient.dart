import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert' show json, utf8;
import 'package:prashantapp/services/app_exceptions.dart';

class BaseCLient {
  BaseCLient(_);
  static const int TIME_OUT_DURATION = 20;
  //get
  Future<dynamic> get(String baseURl, String api) async {
    var uri = Uri.parse(baseURl + api);
    try {
      var response =
          await http.get(uri).timeout(Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection :", uri.toString());
    } on TimeoutException {
      ApiNotRespondingException(
          "Server didn't Responded in time", uri.toString());
    }
  }

  //post
  Future<dynamic> post(String baseURl, String api, String payloadObj) async {
    var uri = Uri.parse(baseURl + api);
    var payload = json.decode(payloadObj);
    try {
      var response = await http
          .post(uri, body: payload)
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException("No Internet Connection :", uri.toString());
    } on TimeoutException {
      ApiNotRespondingException(
          "Server didn't Responded in time", uri.toString());
    }
  }
  //put
  //delete

  dynamic _processResponse(http.Response response) {
    var responseJson = utf8.decode(response.bodyBytes);
    final String _reqUrl = response.request!.url.toString();
    switch (response.statusCode) {
      case 200:
        return responseJson;
      case 400:
        throw BadRequestException(responseJson, _reqUrl);
      case 401:
      case 403:
        throw UnauthorizedException(responseJson, _reqUrl);
      case 201:
      case 500:
      default:
        throw FetchDataException(
            "Error Occured with code : ${response.statusCode}", _reqUrl);
    }
  }
}
