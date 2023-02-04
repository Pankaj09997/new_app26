import 'package:flutter/foundation.dart';
import 'package:new_app26/data/data.dart';
import 'package:new_app26/itemwidget.dart';
import 'package:new_app26/store/store.dart';
import 'package:velocity_x/velocity_x.dart';

class cartmodel {
  

  //catalog fields
  late catalogmodel _catalog;
  //catalog items access through ids
  final List<int> _itemids = [];
  //constructing a getter function to get the catalog
  catalogmodel get catalog => _catalog;
  //setting the catalog
  set catalog(catalogmodel newcatalog) {
    assert(newcatalog != null);
    _catalog = newcatalog;
  }

  //get items in the cart or displays items in the cart
  List<item> get items =>
   _itemids.map((id) => 
   _catalog.getById(id)).toList();
//to sum the total price we have to do:
  num get totalprice => items.fold(
        0,
        (total, current) => total + current.price,
      );
  //add items
  // void add(item Item) {
  //   _itemids.add(Item.id);
  // }

  //subtract items
  // void remove(item Item) {
  //   _itemids.remove(Item.id);
  // }
}
//for performing any action
class AddMutation extends VxMutation<Mystore>
{
   final item  Item;

  AddMutation(this.Item);//constructor banaera matrai Item snga access grna sakinxa 
  @override

  perform() {
  store?.cart._itemids.add(Item.id);//item ids id access itemid id access
  //store item ids add
  }

  
}
class RemoveMutation extends VxMutation<Mystore>
{
   final item  Item;

  RemoveMutation(this.Item);
  @override

  perform() {
  store!.cart._itemids.remove(Item.id);//item ids id access itemid id access
  //store item ids add
  }

  
}