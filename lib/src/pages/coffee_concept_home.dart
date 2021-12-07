import 'package:coffe_app/src/models/coffee.dart';
import 'package:coffe_app/src/pages/main_coffee_page.dart';
import 'package:flutter/material.dart';

class CoffeConceptHome extends StatelessWidget {
  const CoffeConceptHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          Navigator.of(context).push(PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 750),
              pageBuilder: (context, animation, _) {
                return FadeTransition(
                  opacity: animation,
                  child: MainCoffeePage(),
                );
              }));
        },
        child: Stack(
          children: [
            SizedBox.expand(
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFA89276), Colors.white]))),
            ),
            Positioned(
              height: size.height * 0.4,
              left: 0,
              right: 0,
              top: size.height * 0.15,
              child: Hero(
                  tag: coffess[6].name, child: Image.asset(coffess[6].image)),
            ),
            Positioned(
              height: size.height * 0.7,
              left: 0,
              right: 0,
              bottom: 0,
              child: Hero(
                  tag: coffess[7].name,
                  child: Image.asset(coffess[7].image, fit: BoxFit.cover)),
            ),
            Positioned(
              height: size.height,
              left: 0,
              right: 0,
              bottom: -size.height * 0.8,
              child: Hero(
                  tag: coffess[8].name,
                  child: Image.asset(coffess[8].image, fit: BoxFit.cover)),
            ),
            Positioned(
              height: 140,
              left: 0,
              right: 0,
              bottom: size.height * 0.25,
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
