import 'dart:ui';

import 'package:flutter/material.dart';

import 'data/data.dart';

class itemwidget extends StatelessWidget {
  final item items; //item is a class items is its object
  const itemwidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
 
    return Card(
      child: ListTile(
        onTap: () {
          print("${items.name} pressed");
        },
        leading: Image.network(items.image),
        title: Text(
          items.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          items.description,
          style: TextStyle(fontSize: 10),
        ),
        trailing: Text("\$${items.price.toString()}"),
      ),
    );
  }
}
