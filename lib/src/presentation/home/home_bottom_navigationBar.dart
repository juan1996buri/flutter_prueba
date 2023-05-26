import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:prueba_tecnica/src/config/theme/theme.dart';
import 'package:prueba_tecnica/src/presentation/home/home_provider.dart';

class HomeItemNavigationBar {
  HomeItemNavigationBar(
      {required this.icon, required this.title, required this.currentIndex});
  final IconData icon;
  final String title;
  final int currentIndex;
}

List<HomeItemNavigationBar> productsItemNavigationBar = [
  HomeItemNavigationBar(
    icon: FontAwesomeIcons.cartShopping,
    title: 'Solicitar',
    currentIndex: 0,
  ),
  HomeItemNavigationBar(
    icon: Icons.monetization_on_sharp,
    title: 'Productos',
    currentIndex: 1,
  ),
  HomeItemNavigationBar(
    icon: Icons.home,
    title: 'Inicio',
    currentIndex: 2,
  ),
  HomeItemNavigationBar(
    icon: FontAwesomeIcons.graduationCap,
    title: 'Education',
    currentIndex: 3,
  ),
  HomeItemNavigationBar(
    icon: Icons.menu,
    title: 'Menu',
    currentIndex: 4,
  ),
];

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return BottomAppBar(
      height: 80,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(productsItemNavigationBar.length, (index) {
            final itemNavigator = productsItemNavigationBar[index];
            return Expanded(
              child: InkWell(
                onTap: () {
                  context.read<HomeProvider>().changeSelectedIndex(
                      currentIndex: itemNavigator.currentIndex);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      itemNavigator.icon,
                      color:
                          provider.selectedIndex == itemNavigator.currentIndex
                              ? ThemeColors.mintGreen
                              : ThemeColors.softLilac,
                    ),
                    Text(
                      itemNavigator.title,
                      style: TextStyle(
                        color:
                            provider.selectedIndex == itemNavigator.currentIndex
                                ? ThemeColors.mintGreen
                                : ThemeColors.softLilac,
                      ),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
