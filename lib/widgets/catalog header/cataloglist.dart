// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:new_app26/data/cartdata.dart';
import 'package:new_app26/widgets/detail.dart';

import '../../addtocart.dart';
import '../../data/data.dart';

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return !context.isMobile
        ? GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
            itemCount: catalogmodel.items.length,
            itemBuilder: (context, index) {
              final catalog = catalogmodel.items[index];
              return InkWell(
                child: catalogitem(
                  catalog: catalog,
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detailpage(catalog: catalog),
                  ),
                ),
              );
            },
          )
        : ListView.builder(
            itemCount: catalogmodel.items.length,
            itemBuilder: (context, index) {
              final catalog = catalogmodel.items[index];
              return InkWell(
                child: catalogitem(
                  catalog: catalog,
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => detailpage(catalog: catalog),
                  ),
                ),
              );
            },
          );
  }
}

class catalogitem extends StatelessWidget {
  final item catalog;
  const catalogitem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children2 = [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)
                .p1()
                .color(Colors.white70)
                .box
                .roundedLg
                .make()
                .p8()
                .wPCT(context: context, widthPCT: context.isMobile?40:20),
          ),
          Expanded(
            
              child:
               Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.bold.make().p1(),
              catalog.description.text.textStyle(context.captionStyle).make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mOnly(right: 16),
                children: [
                  " \$${catalog.price}".text.bold.make(),
                  addtocart(catalog: catalog),
                ],
              )
            ],
          ))
        ];
    return VxBox(
      
      child: context.isMobile? Row(
        children: children2,
      )
      :Column(
        children: children2,
      ),
    ).white.rounded.square(150).make().py(16);
  }
}
  //  GridView.builder(
  //     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
  //     crossAxisCount: 2
  //     ) , 
  //     itemBuilder:(context, index) {
      
  //   },);