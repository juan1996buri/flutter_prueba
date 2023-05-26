import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/src/config/theme/theme.dart';
import 'package:prueba_tecnica/src/presentation/education/education_page.dart';
import 'package:prueba_tecnica/src/presentation/home/home_provider.dart';
import 'package:prueba_tecnica/src/presentation/menu/menu_page.dart';
import 'package:prueba_tecnica/src/presentation/product/product_page.dart';
import 'package:prueba_tecnica/src/presentation/request/request_page.dart';
import 'package:prueba_tecnica/src/presentation/start/start_page.dart';
import 'home_appbar.dart';
import 'home_bottom_navigationBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<Widget> _widgetOptions = <Widget>[
    RequestPage(),
    ProductPage(),
    StartPage(),
    EducationPage(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: ThemeColors.lightwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HomeAppBar(),
          _widgetOptions.elementAt(provider.selectedIndex),
        ],
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
