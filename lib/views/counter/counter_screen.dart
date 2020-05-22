import 'package:flutter/material.dart';
import 'package:flutter_try/views/counter/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: Text('Flutter Demo Home Page'),
              ),
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${model.counter}', //                           <-- view model
                    style: Theme.of(context).textTheme.display1,
                  ),
                ],
              )),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  model
                      .increment(); //                                <-- view model
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
      )
    );
  }
}
