// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:new_app26/addtocart.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:new_app26/data/data.dart';

class detailpage extends StatelessWidget {
 final item catalog;

  const detailpage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,iconTheme: IconThemeData(color: Colors.black),),
        bottomNavigationBar:     ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mOnly(right: 16),
                children: [
                  " \$${catalog.price}".text.lg.bold.make(),
              addtocart(catalog: catalog).wh(120, 40)
                ],
              ).p20().w20(context),
          
        
        body: 
        Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image).p12().h32(context),
              
              ),
              Expanded(child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEX,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    
                    children: [
                       Center(child: catalog.name.text.xl4.bold.make().p1()),
                       SizedBox(height: 5,),
              Center(child: catalog.description.text.bold.textStyle(context.captionStyle,).make()),
              
                    ],
                    
                  ).py12(),
                  

                ),
                
                
                ),
                
                ),
                
               
          ],
          
        ),
        
        
      ),
      
    );
  }
}
