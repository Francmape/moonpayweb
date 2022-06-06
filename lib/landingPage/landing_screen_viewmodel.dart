import 'package:flutter/foundation.dart';

class LandingScreenViewModel extends ChangeNotifier {
  LandingScreenViewModel() {
    //Initialize
  }

  //Setting navbar business web menu button
  bool _businessWebMenuOpened = false;
  bool get businessMenuOpened => _businessWebMenuOpened;
  setBusinessWebMenuOpened(bool open) {
    _businessWebMenuOpened = open;
    notifyListeners();
  }

  //Setting navbar business mobile menu button
  bool _businessMobileMenuOpened = false;
  bool get businessMobileMenuOpened => _businessMobileMenuOpened;
  setBusinessMobileMenuOpened(bool open) {
    _businessMobileMenuOpened = open;
    notifyListeners();
  }
}
