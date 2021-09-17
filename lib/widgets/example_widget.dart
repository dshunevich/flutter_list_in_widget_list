import 'package:flutter/material.dart';

class TwoStrings {
  final String text;
  final String text2;

  TwoStrings({
    required this.text,
    required this.text2,
  });
}

class ExampleWidget extends StatelessWidget {
  final List<TwoStrings> textData = [
    TwoStrings(text: '1', text2: 'a'),
    TwoStrings(text: '2', text2: 'b'),
    TwoStrings(text: '3', text2: 'c'),
    TwoStrings(text: '4', text2: 'd'),
    TwoStrings(text: '5', text2: 'i'),
    TwoStrings(text: '6', text2: 'f'),
  ];

  ExampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    //the same
    List<Widget> testFields = [];
    for (var data in textData) {
      final widget = TextWrapper(twoStrings: data);
      testFields.add(widget);
    }
    */

    final List<Widget> textFields = textData
        .map((TwoStrings twoStrings) => TextWrapper(
              twoStrings: twoStrings,
            ))
        .toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: textFields,
    );
  }
}

class TextWrapper extends StatelessWidget {
  final TwoStrings twoStrings;

  const TextWrapper({
    Key? key,
    required this.twoStrings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(twoStrings.text, style: TextStyle(fontSize: 20)),
        Spacer(),
        Text(twoStrings.text2, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
