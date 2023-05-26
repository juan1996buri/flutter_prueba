// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/domain/repositories/product_repository.dart';
import 'package:prueba_tecnica/src/presentation/product/product_provider.dart';
import 'package:prueba_tecnica/src/presentation/product/product_screen.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          ProductProvider(productRepository: context.read<ProductRepository>()),
      child: const ProductScreen(),
    );
  }
}
