import 'package:flutter/material.dart';
import 'package:flutter_try/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text('${model.title}, ${model.counter}'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: model.navigateToScreen),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}