// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/config/theme/theme.dart';

class MoveItemElement {
  IconData icon;
  String title;
  bool selectedItem;
  MoveItemElement({
    required this.icon,
    required this.title,
    required this.selectedItem,
  });
}

List<MoveItemElement> moveItemElements = [
  MoveItemElement(
      icon: FontAwesomeIcons.rightLeft,
      title: 'Transferir',
      selectedItem: false),
  MoveItemElement(
      icon: FontAwesomeIcons.rotate, title: 'Recargar', selectedItem: false),
  MoveItemElement(
      icon: FontAwesomeIcons.cartShopping, title: 'Pedir', selectedItem: false),
  MoveItemElement(
      icon: FontAwesomeIcons.moneyBill, title: 'Retirar', selectedItem: false),
  MoveItemElement(
      icon: FontAwesomeIcons.creditCard, title: 'Pagar', selectedItem: false),
  MoveItemElement(
      icon: FontAwesomeIcons.circlePlus, title: 'Nuevo', selectedItem: true),
  MoveItemElement(
      icon: FontAwesomeIcons.creditCard,
      title: 'Datáfono',
      selectedItem: false),
  MoveItemElement(
      icon: FontAwesomeIcons.gears, title: 'Servicios', selectedItem: false),
];

class RequestMoveMoney extends StatelessWidget {
  const RequestMoveMoney({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: size.height * 0.23,
      width: size.width,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: moveItemElements.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: size.width / 4),
        itemBuilder: (context, index) {
          final moveItem = moveItemElements[index];
          return Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: ThemeColors.softLilac),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  moveItem.icon,
                  color: ThemeColors.mintGreen,
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                      color: moveItem.selectedItem
                          ? ThemeColors.earthOrange
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    moveItem.title,
                    style: moveItem.selectedItem
                        ? const TextStyle(color: Colors.white)
                        : itemMoveCardStyle,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
