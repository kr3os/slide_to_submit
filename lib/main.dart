import 'package:flutter/material.dart';

import 'widget/slide_widget.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide App',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideToSubmitWidget(
                color: Colors.blueGrey,
                text: 'Slide to Submit...',
                icon: Icons.arrow_right_alt,
                onSubmit: (onFinish, onError) async {
                  onFinish();
                }
              ),
              SizedBox(height: 15,),
              SlideToSubmitWidget(
                color: Colors.blue,
                text: 'GO on',
                icon: Icons.arrow_right_alt,
                onSubmit: (onFinish, onError) async {
                  onError();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}