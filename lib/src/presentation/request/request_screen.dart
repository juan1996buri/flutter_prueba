// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/presentation/request/request_amount.dart';
import 'package:prueba_tecnica/src/presentation/request/request_move_money.dart';
import 'package:prueba_tecnica/src/presentation/request/request_provider.dart';
import '../../config/theme/theme.dart';
import '../widget/title_section.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<RequestProvider>(context);
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                const Spacer(),
                TextButton.icon(
                  onPressed: () {
                    context
                        .read<RequestProvider>()
                        .changeCurrentValue(currenState: !provider.isActive);
                  },
                  icon: const Icon(FontAwesomeIcons.eye,
                      color: ThemeColors.mintGreen),
                  label: Text(
                    'Montos',
                    style: itemMountStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const RequestAmount(),
            const TitleSection(title: 'Mueve tu plata'),
            const RequestMoveMoney(),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: ThemeColors.lightCyan,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.sackDollar,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Ver todos mis productos',
                      style: titleButtomStyle,
                    ),
                    const Spacer(),
                    const Icon(
                      FontAwesomeIcons.chevronRight,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const TitleSection(title: 'Tenemos para ti'),
            SizedBox(
              height: 160,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemExtent: size.width * 0.9,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color:
                            index.isOdd ? Colors.blueAccent : Colors.blueGrey),
                    child: Row(
                      children: [
                        Expanded(child: Image.asset('assets/person.png')),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                'Abre tu inversion',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Expanded(
                                child: Text(
                                  'Nos ocupamos de que tu dinero trabaje pora ti',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
