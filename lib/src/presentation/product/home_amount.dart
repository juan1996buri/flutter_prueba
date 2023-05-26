// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/config/theme/theme.dart';

class _AmountElement {
  IconData icon;
  String title;
  String value;

  _AmountElement(
      {required this.icon, required this.title, required this.value});
}

List<_AmountElement> _amountElements = [
  _AmountElement(icon: FontAwesomeIcons.box, title: 'Bolsillos', value: '0'),
  _AmountElement(icon: Icons.flag, title: 'Metas', value: '0'),
  _AmountElement(icon: FontAwesomeIcons.boxArchive, title: 'Baúl', value: '0')
];

class HomeAmount extends StatelessWidget {
  const HomeAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 7,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 180,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tienes Disponible',
                          style: titleOfCardStyle,
                        ),
                        Text(
                          '\$ 0',
                          style: priceOfCardStyle,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(end: 10),
                    child: Icon(
                      FontAwesomeIcons.chevronRight,
                      color: ThemeColors.softLilac,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                  itemCount: _amountElements.length,
                  scrollDirection: Axis.horizontal,
                  itemExtent: size.width / 3,
                  itemBuilder: (context, index) {
                    final itemElement = _amountElements[index];
                    return SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    itemElement.icon,
                                    color: ThemeColors.mintGreen,
                                  ),
                                  Text(
                                    itemElement.title,
                                    style: titleItemCardOfCardStyle,
                                  ),
                                ],
                              ),
                              Text(
                                '\$ ${itemElement.value}',
                                style: const TextStyle(
                                    color: ThemeColors.softLilac,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
