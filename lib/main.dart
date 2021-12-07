import 'package:coffe_app/src/pages/coffee_concept_home.dart';
import 'package:coffe_app/src/pages/main_coffee_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CoffeConceptHome(),
    );
  }
}
