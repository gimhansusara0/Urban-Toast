import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

           Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Center(
              child: Image.asset(
                Theme.of(context).brightness == Brightness.dark ? 'assets/images/logo/logo-black.png' : 'assets/images/logo/logo-white.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
           ),

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor
              ),
            )
          ],
        ),
      ),
    );
  }
}