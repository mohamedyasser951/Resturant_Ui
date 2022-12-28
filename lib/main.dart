import 'package:flutter/material.dart';
import 'package:resturant/modules/layout/home.dart';
import 'package:resturant/modules/login/login.dart';
import 'package:resturant/modules/register/register.dart';
import 'package:resturant/modules/tips/onboarding/onboarding.dart';

import 'modules/card/card.dart';
import 'modules/product/product_detail.dart';
import 'modules/spalash/spalsh_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffFF0000),
      ),
      home:Tips(),
    );
  }
}

  