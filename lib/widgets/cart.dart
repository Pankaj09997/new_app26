import 'package:flutter/material.dart';
import 'package:new_app26/data/data.dart';
import 'package:velocity_x/velocity_x.dart';

import '../data/cartdata.dart';
import '../store/store.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          cartitems()
              .p32()
              .expand(), //tells us that we are going to input something
          Divider(),
          carttotal(),
        ],
      ),
    );
  }
}

class carttotal extends StatelessWidget {
  const carttotal({super.key});

  @override
  Widget build(BuildContext context) {
    final cartmodel _cart = (VxState.store as Mystore).cart;

    return Container(
      child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              VxConsumer(
                  notifications: {},
                  builder: (context, store, status) =>
                    "Total :\$${_cart.totalprice}"
                        .text
                        .xl
                        .color(Colors.black)
                        .make()
                        .px8(),
                 
                  mutations: {RemoveMutation}),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: "Buy".text.make(),
              ).px8().wh(120, 40)
            ],
          )),
    );
  }
}

class cartitems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final cartmodel _cart = (VxState.store as Mystore).cart;

    return _cart.items.isEmpty
        ? "Cart Is Empty".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (BuildContext context, int index) => ListTile(
              leading: Icon(Icons.done,color: Colors.blueAccent,),
              trailing: IconButton(
                onPressed:() => 
                  RemoveMutation(_cart.items[index]),
                  // setState(() {//update

                  // });
                
                icon: Icon(Icons.remove_circle_outline,color: Colors.redAccent,),
              ),
              //catalog models bata items lai access grera harek item ko index
              //change bhae sngai name print grdai janxa
              title: catalogmodel.items[index].name.text.make(),
            ),
          );
  }
}
