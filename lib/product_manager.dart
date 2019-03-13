import 'package:flutter/material.dart';
import 'package:flutter_course/products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _product = ['Food Paradise'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _product.add("Advanced Food Tester");
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_product)
      ],
    );
  }
}
