import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/domain/models/product_entity.dart';
import 'package:prueba_tecnica/src/domain/repositories/product_repository.dart';

class ProductProvider extends ChangeNotifier {
  ProductProvider({required ProductRepository productRepository})
      : _productRepository = productRepository;

  final ProductRepository _productRepository;

  Future<List<ProductEntity>> findAllProducts() async {
    return await _productRepository.findAllProducts();
  }
}
