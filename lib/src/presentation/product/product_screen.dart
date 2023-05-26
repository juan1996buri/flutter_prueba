// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/src/config/theme/theme.dart';
import 'package:prueba_tecnica/src/domain/models/product_entity.dart';
import 'package:prueba_tecnica/src/presentation/product/product_provider.dart';
import 'package:prueba_tecnica/src/presentation/product/product_search_delegate.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: ProductSearchDelegate(provider: provider),
                );
              },
              child: const Icon(
                Icons.search,
                size: 30,
              )),
          FutureBuilder(
            future: context.watch<ProductProvider>().findAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text('Error'),
                );
              } else if (snapshot.hasData) {
                return Expanded(child: ProductsList(products: snapshot.data!));
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({super.key, required this.products});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisExtent: 250),
      itemBuilder: (context, index) {
        final itemProduct = products[index];
        return Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemProduct.title!,
                  maxLines: 2,
                  style: titleItemCardOfCardStyle,
                ),
                Expanded(
                  child: Center(
                    child: Image.network(
                      itemProduct.image!,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(itemProduct.description!,
                    maxLines: 2,
                    style: const TextStyle(fontWeight: FontWeight.w400)),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  decoration: const BoxDecoration(
                      color: ThemeColors.peachPink,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    itemProduct.category!,
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '\$ ${itemProduct.price}',
                  style: GoogleFonts.poppins(
                    color: ThemeColors.earthOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
