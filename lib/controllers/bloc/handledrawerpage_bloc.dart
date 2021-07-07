import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_event.dart';
import 'package:prashantapp/controllers/bloc/handledrawerpage_state.dart';
import 'package:prashantapp/pages/dashboard/account.dart';
import 'package:prashantapp/pages/dashboard/home.dart';
import 'package:prashantapp/pages/dashboard/home/request.dart';
import 'package:prashantapp/pages/dashboard/home/send.dart';
import 'package:prashantapp/pages/dashboard/settings.dart';

// enum PageTransitionEvent { increment, decrement }

class PageTransitionBloc
    extends Bloc<HandleDrawerPageEvent, HandleDrawerPageState> {
  PageTransitionBloc(HandleDrawerPageState initialState) : super(initialState);

  int get initialValue => 0;

  @override
  Stream<HandleDrawerPageState> mapEventToState(
      HandleDrawerPageEvent event) async* {
    if (event is HomeEvent)
      yield state.copywith(body: Home(), index: 0);
    else if (event is AccountEvent)
      yield state.copywith(body: Account(), index: 1);
    else if (event is SettingsEvent)
      yield state.copywith(body: Settings(), index: 2);
    else if (event is SendEvent)
      yield state.copywith(body: SendPage(), index: 0);
    else if (event is RequestEvent)
      yield state.copywith(body: RequestPage(), index: 0);
  }
}
