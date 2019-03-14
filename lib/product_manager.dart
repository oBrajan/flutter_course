import 'package:flutter/material.dart';
import 'package:flutter_course/product_control.dart';
import 'package:flutter_course/products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct) {
    print('[ProductManagert Widget]: Contractor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManagert Widget]: createState');

    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _product = [];

  @override
  void initState() {
    super.initState();
    print('[ProductManagert Widget]: initState');

    _product.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManagert Widget]: didUpdateWidget');

    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _product.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManagert Widget]: build');

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Products(_product)
      ],
    );
  }
}
