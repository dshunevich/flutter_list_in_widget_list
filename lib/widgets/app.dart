import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_flutter_app/widgets/example_widget.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleWidget(),
    );
  }
}
