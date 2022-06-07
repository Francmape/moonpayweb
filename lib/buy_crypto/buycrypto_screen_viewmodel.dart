import 'dart:developer';

import 'package:flutter/foundation.dart';

class BuyCryptoScreenViewModel extends ChangeNotifier {
  BuyCryptoScreenViewModel() {
    //Initialize
  }

  //Setting buy BTC menu button
  bool _buyBTCMenuOpened = false;
  bool get businessMenuOpened => _buyBTCMenuOpened;
  setBuyBTCMenuOpened(bool open) {
    _buyBTCMenuOpened = open;
    log(_buyBTCMenuOpened.toString());
    notifyListeners();
  }
}
