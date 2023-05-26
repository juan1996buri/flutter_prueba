// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/domain/repositories/product_repository.dart';
import 'package:prueba_tecnica/src/domain/repositories/product_repository_imp.dart';
import 'package:prueba_tecnica/src/presentation/home/home_provider.dart';
import 'package:prueba_tecnica/src/presentation/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ProductRepository>(
          create: (_) => ProductRepositoryImp(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
