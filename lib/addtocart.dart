import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app26/store/store.dart';
import 'package:velocity_x/velocity_x.dart';

import 'data/cartdata.dart';
import 'data/data.dart';

class addtocart extends StatelessWidget {
  final item catalog;
  addtocart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  // final _cart = cartmodel();//wanted cart from cart model

  @override
  Widget build(BuildContext context) {
    VxState.watch(context,
        on: [AddMutation,RemoveMutation]); //what thing you want to listen until add mutation or rebuild
    final cartmodel _cart = (VxState.store as Mystore).cart;//acessing the cart
 

    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all(StadiumBorder())),
      onPressed: () {
        if (!isInCart) {//performs only when the cart is empty
         // isInCart = isInCart.toggle();

          
          AddMutation(catalog);
          //   setState(() {});
        }
      },
      child: isInCart ? Icon(Icons.done) : Text("Add To Cart"),
    );
  }
}
