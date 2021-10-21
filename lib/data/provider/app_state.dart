import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  bool _logged = false;
  bool _init = false;

  AppState();

  bool get isLogged => _logged;
  bool get isInit => _init;

  void setLogged(bool was) {
    _logged = was;

    notifyListeners();
  }

  void setInit() {
    _init = true;

    notifyListeners();
  }
}
