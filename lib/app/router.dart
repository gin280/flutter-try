import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_try/views/counter/counter_screen.dart';
import 'package:flutter_try/views/home/home_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeView homeView;
  CounterScreen counterScreen;
}