import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:prashantapp/pages/dashboard/home.dart';

class HandleDrawerPageState extends Equatable {
  HandleDrawerPageState(this.body, this.index);
  Widget body = Home();
  int index = 0;
  int get initialValue => 0;
  HandleDrawerPageState copywith({Widget? body, int? index}) {
    return HandleDrawerPageState(body ?? this.body, index ?? this.index);
  }

  @override
  List<Object?> get props => [body, index];
}
