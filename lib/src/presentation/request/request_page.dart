import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/presentation/request/request_provider.dart';
import 'package:prueba_tecnica/src/presentation/request/request_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RequestProvider(),
      child: const RequestScreen(),
    );
  }
}
