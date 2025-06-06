import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitBuilder(context);
          } else {
            return _landscapeBuilder(context);
          }
        },
      ),
      
    );
  }
}

Widget _portraitBuilder(BuildContext context) {
  return SingleChildScrollView();
}

Widget _landscapeBuilder(BuildContext context) {
  return SingleChildScrollView();
}
