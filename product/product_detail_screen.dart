import 'package:flutter/material.dart';
import 'package:nahla/product/product_item_detailles_widget.dart';
import 'package:nahla/product/product_item.dart';
import 'package:nahla/product/product_item_widget.dart';

late final GroceryItem product1 = RelatedProducts[0];
late final GroceryItem product2 = RelatedProducts[1];
late final GroceryItem product3 = RelatedProducts[2];
late final GroceryItem product4 = RelatedProducts[3];
late int x = 1;

class productDetail extends StatelessWidget {
  final String nameProduct;
  GroceryItem product;
  productDetail({
    Key? key,
    required this.nameProduct,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 240, 230),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Align(
          alignment: const Alignment(-1.25, 0.28),
          child: Text(
            nameProduct,
            style: const TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: const Alignment(0, -0.8),
            child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: 1,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      buildItemDetailles(1, product),
                    ],
                  );
                })),
          )
        ],
      ));

  Widget REP() => const Text(
        'RELATED PRODUCTS',
        style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
        textAlign: TextAlign.left,
      );
  Widget buildItemDetailles(int index, GroceryItem productX) => Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ProdcutItemCardWigetDetailles(
            product: productX,
            itembnumber: x,
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: const Alignment(-0.8, 0),
            child: REP(),
          ),
          const SizedBox(
            height: 15,
          ),
          relatedproducts(),
          const SizedBox(
            height: 20,
          )
        ],
      );
  Widget relatedproducts() => SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 16,
            ),
            ProdcutItemCardWiget(product: product1),
            const SizedBox(
              width: 35,
            ),
            ProdcutItemCardWiget(product: product4),
            const SizedBox(
              width: 35,
            ),
            ProdcutItemCardWiget(product: product2),
            const SizedBox(
              width: 35,
            ),
            ProdcutItemCardWiget(product: product3),
            const SizedBox(
              width: 35,
            ),
          ],
        ),
      );
}
