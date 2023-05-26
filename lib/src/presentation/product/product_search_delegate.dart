// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/domain/models/product_entity.dart';
import 'package:prueba_tecnica/src/presentation/product/product_provider.dart';
import 'package:prueba_tecnica/src/presentation/product/product_screen.dart';

class ProductSearchDelegate extends SearchDelegate<ProductEntity> {
  final ProductProvider provider;

  ProductSearchDelegate({required this.provider});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          FontAwesomeIcons.chevronLeft,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: provider.findAllProducts(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Error'),
          );
        } else if (snapshot.hasData) {
          final newList = snapshot.data!.where((item) {
            return item.title!
                .toLowerCase()
                .contains(query.trim().toLowerCase());
          }).toList();
          return ProductsList(products: newList);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
