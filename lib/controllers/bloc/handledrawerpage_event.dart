import 'package:equatable/equatable.dart';

abstract class HandleDrawerPageEvent extends Equatable {
  const HandleDrawerPageEvent();
  @override
  List<Object> get props => [];
}

class HomeEvent extends HandleDrawerPageEvent {
  const HomeEvent();

  List<Object> get props => [];
}

class AccountEvent extends HandleDrawerPageEvent {
  const AccountEvent();

  List<Object> get props => [];
}

class SettingsEvent extends HandleDrawerPageEvent {
  const SettingsEvent();

  List<Object> get props => [];
}

class SendEvent extends HandleDrawerPageEvent {
  const SendEvent();

  List<Object> get props => [];
}

class RequestEvent extends HandleDrawerPageEvent {
  const RequestEvent();

  List<Object> get props => [];
}
