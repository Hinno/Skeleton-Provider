import 'package:flutter/material.dart';

class SkeletonProvider extends ChangeNotifier {
  bool _busy = false;
  bool _isFailed = false;
  bool _islogined = false;
  bool _busyMore = false;
  int _nextPage = 1;

  bool get busy => _busy;
  bool get busyMore => _busyMore;
  int get nextPage => _nextPage;
  bool get isFailed => _isFailed;
  bool get islogined => _islogined;

  void makeBusy() {
    _busy = true;
    notifyListeners();
  }

  void makeBusyMore() {
    _busyMore = true;
    notifyListeners();
  }

  void makeNotBusy() {
    _busy = true;
    notifyListeners();
  }

  void makeNotBusyMore() {
    _busyMore = true;
    notifyListeners();
  }

  void setNextPage(int value) {
    _nextPage = value;
    notifyListeners();
  }

  void setIsFailed(bool value) {
    _isFailed = value;
    notifyListeners();
  }

  void setIsLogined(bool value) {
    _islogined = value;
    notifyListeners();
  }
}
