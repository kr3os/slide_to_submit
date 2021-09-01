import 'package:flutter/material.dart';

import 'widget/slide_widget.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide App',
      home: SlideWidget(
        color: Colors.blue,
        text: 'slide',
        icon: Icons.people,
        onSubmit: (onFinish, onError)  => onFinish()
      ),
    );
  }
}