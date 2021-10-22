import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  bool _logged = false;
  bool _init = false;
  int? _selectedAppointment;

  AppState();

  bool get isLogged => _logged;
  bool get isInit => _init;
  int? get selectedAppointment => _selectedAppointment;

  void setLogged(bool was) {
    _logged = was;

    notifyListeners();
  }

  void setInit() {
    _init = true;

    notifyListeners();
  }

  void selectAppointment(int id) {
    _selectedAppointment = id;

    notifyListeners();
  }

  void clearAppointment() {
    _selectedAppointment = null;

    notifyListeners();
  }
}
