import 'package:flutter/material.dart';
import 'package:urban_toast/screens/home_screen/components/promo_card.dart';
import 'package:urban_toast/screens/home_screen/components/top_ribbon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitBuilder(context);
          } else {
            return _landscapeBuilder(context);
          }
        },
      
    );
  }
}

Widget _portraitBuilder(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height,
    child: SingleChildScrollView(
      child: Column(
        children: [
          TopRibbon(),
          PromoCard()
        ],
      ),
    ),
  );
}

Widget _landscapeBuilder(BuildContext context) {
  return Center(
    child: Text('Touchable'),
  );
}
