import 'package:flutter/material.dart';

class ShoppingItem {
  ShoppingItem(
      {required this.title, required this.description, this.isBought = false});

  String title;
  String description;
  bool isBought;
}

class ShoppingItemWidget extends StatelessWidget {
  final ShoppingItem item;

  ShoppingItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      height: item.isBought ? 200 : 100,
      constraints: const BoxConstraints(
        minWidth: 150,
        maxWidth: 400,
        minHeight: 100,
        maxHeight: 200,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.network('https://via.placeholder.com/150'),
              const SizedBox(height: 8),
              Text(
                item.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              if (item.isBought)
                Text(
                  item.description,
                  style: const TextStyle(fontSize: 16),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
