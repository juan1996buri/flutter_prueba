import 'package:prueba_tecnica/src/domain/models/product_entity.dart';
import 'package:prueba_tecnica/src/domain/repositories/product_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class ProductRepositoryImp extends ProductRepository {
  @override
  Future<List<ProductEntity>> findAllProducts() async {
    final response = await http
        .get(Uri.parse('https://fakestoreapi.com/products'), headers: {
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      return productEntityFromJson(response.body);
    } else {
      throw Exception();
    }
  }
}
