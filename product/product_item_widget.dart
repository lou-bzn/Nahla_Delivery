import 'package:nahla/product/product_detail_screen.dart';
import 'product_item.dart';
import 'package:flutter/material.dart';
import 'package:nahla/common_widgets/add_to_cart.dart';

class ProdcutItemCardWiget extends StatelessWidget {
  const ProdcutItemCardWiget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final padding = const EdgeInsets.all(10.0);
  final GroceryItem product;
  final double width = 160;
  final double height = 200;
  final Color borderColor = const Color.fromARGB(255, 250, 184, 12);
  final double borderRadius = 5;
  final double opacity = 0.5;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: Center(
              child: imageWidget(),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          productName(),
          productDescription(),
          Row(children: [
            productPrice(),
            const Spacer(),
            Align(alignment: const Alignment(0.9, 0), child: addWidget()),
          ]),
        ]),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => productDetail(
                    nameProduct: product.name, product: product)));
      },
    );
  }

  Widget imageWidget() {
    return SizedBox(
        height: 80, width: 150, child: Image.asset(product.imagePath));
  }

  Widget addWidget() {
    return GestureDetector(
        onTap: () => ProductsVM(),
        child: Container(
          height: 25,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromARGB(255, 250, 184, 12)),
          child: Row(
            children: const [
              Spacer(),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
              Text(
                "ADD",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
        ));
  }

  Widget productName() {
    return SizedBox(
        child: Text(product.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )));
  }

  Widget productDescription() {
    return SizedBox(
        child: Text(
      product.description,
      style: const TextStyle(
          fontSize: 14, color: Color.fromARGB(255, 105, 101, 101)),
    ));
  }

  Widget productPrice() {
    return SizedBox(
        child: Text(
      "${product.price.toStringAsFixed(0)}\DA",
      style: const TextStyle(fontSize: 14),
    ));
  }
}
