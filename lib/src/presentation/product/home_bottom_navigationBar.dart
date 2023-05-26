import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeItemNavigationBar {
  HomeItemNavigationBar(
      {required this.icon, required this.title, required this.selectedIndex});
  final IconData icon;
  final String title;
  final bool selectedIndex;
}

List<HomeItemNavigationBar> productsItemNavigationBar = [
  HomeItemNavigationBar(
    icon: FontAwesomeIcons.cartShopping,
    title: 'Solicitar',
    selectedIndex: false,
  ),
  HomeItemNavigationBar(
    icon: Icons.monetization_on_sharp,
    title: 'Productos',
    selectedIndex: false,
  ),
  HomeItemNavigationBar(
    icon: Icons.home,
    title: 'Solicitud',
    selectedIndex: false,
  ),
  HomeItemNavigationBar(
    icon: FontAwesomeIcons.graduationCap,
    title: 'Inicio',
    selectedIndex: false,
  ),
  HomeItemNavigationBar(
    icon: Icons.menu,
    title: 'Educacion',
    selectedIndex: false,
  ),
];

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 80,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(productsItemNavigationBar.length, (index) {
            final itemNavigator = productsItemNavigationBar[index];
            return Expanded(
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(itemNavigator.icon),
                    Text(itemNavigator.title),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
