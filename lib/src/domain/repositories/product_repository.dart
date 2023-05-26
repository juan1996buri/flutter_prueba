import 'package:prueba_tecnica/src/domain/models/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> findAllProducts();
}
