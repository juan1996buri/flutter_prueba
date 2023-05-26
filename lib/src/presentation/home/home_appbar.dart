import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba_tecnica/src/config/theme/theme.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kTextTabBarHeight / 0.7,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
          color: ThemeColors.mintGreen,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Row(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.webconsultas.com/sites/default/files/styles/wc_adaptive_image__small__webp/public/articulos/perfil-resilencia_jpg.webp'),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '!Hola¡',
                    style: titleAppBarStyle,
                  ),
                  Text(
                    'Tania',
                    style: nameAppBarStyle,
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.lock,
                      color: ThemeColors.smokyWhite,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: ThemeColors.earthOrange,
                      radius: 8,
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 11,
                      ),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.whatsapp,
                      color: ThemeColors.smokyWhite,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.campaign,
                      color: ThemeColors.smokyWhite,
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                        backgroundColor: ThemeColors.earthOrange,
                        radius: 8,
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
