import 'package:flutter_try/app/locator.dart';
import 'package:flutter_try/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToScreen() async {
    await _navigationService.navigateTo(Routes.counterScreen);
  }

  String _title = 'Home View';
  String get title => _title;

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
