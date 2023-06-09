import 'dart:async';
import 'package:fill_in_the_gap/app/base/result_state.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:get/get.dart';



abstract class BaseController extends GetxController  {
  late StreamSubscription<InternetConnectionStatus> _connectionListener;

  final _pageStateController = const ResultState.idle().obs;

  ResultState get pageState => _pageStateController.value;

  ResultState updatePageState(final ResultState state) =>
      _pageStateController(state);

  ResultState showLoading() => updatePageState(const ResultState.loading());

  ResultState resetPageState() => updatePageState(const ResultState.idle());

  ResultState hideLoading() => resetPageState();

  @override
  void onInit() {
    _connectionListener =
        InternetConnectionChecker().onStatusChange.listen((final status) {
          //realDebugPrint('status of override-->$status');
          switch (status) {
            case InternetConnectionStatus.connected:
              updatePageState(const ResultState.idle());
              break;
            case InternetConnectionStatus.disconnected:
              updatePageState(const ResultState.lostConnection());
              break;
          }
        });
    super.onInit();
  }


  @override
  void dispose() {
    _connectionListener.cancel();
    super.dispose();
  }
}
