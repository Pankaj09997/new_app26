// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert"; //alllows us to convert or decode json data


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app26/data/cartdata.dart';

import 'package:new_app26/store/store.dart';

import 'package:new_app26/widgets/cart.dart';
import 'package:new_app26/widgets/catalog%20header/catalogheader.dart';
import 'package:new_app26/widgets/catalog%20header/cataloglist.dart';
import 'package:new_app26/widgets/drawer.dart';
import 'package:new_app26/widgets/settings.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:new_app26/data/data.dart';


import 'itemwidget.dart';

class homepage extends StatefulWidget {
  //home page
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
 
  //home page states
  @override
  void initState() {
    //data entry point
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 2));
    var json = await rootBundle.loadString("assets/json/data.json");
    var decodeddata = jsonDecode(json);
    var productdata = decodeddata["products"];
    catalogmodel.items = List.from(productdata)
        .map<item>((Item) => item.fromMap(Item))
        .toList(); //converrting the item  that is in map into the list
    setState(() {}); //for update
  }

  @override
  Widget build(BuildContext context) {
    final _cart =(VxState.store as Mystore).cart;
    var scaffold = Scaffold(
      
     backgroundColor:Theme.of(context).canvasColor,
     
      appBar: AppBar(actions: [
        
        InkWell(child: Icon(CupertinoIcons.settings,size: 30,).p20(),
        onTap:() => Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new settingspage()),
          ) , 
        ),
        
        
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      
      ),

      
      
      floatingActionButton: VxBuilder(
        mutations: {AddMutation,RemoveMutation},
        builder:(context, _, status) => 
         FloatingActionButton(
          
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new cart()),
            );
      
          },
      
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.black,
          ),
          backgroundColor:Colors.white ,
      
        ).badge(color: Colors.black,size: 20,textStyle:TextStyle(color: Colors.white,fontWeight: FontWeight.bold) ,count: _cart.items.length,),
      ),
      
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerfiles(),
              if (catalogmodel.items != null && catalogmodel.items.isNotEmpty)
                Cataloglist().py12().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )

            ],
          ),

        ),
      ),
      drawer: Mydrawer(),
    );
    return scaffold;
  }
}
//  VxBadgePosition position = VxBadgePosition.rightTop,