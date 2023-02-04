import 'package:new_app26/data/cartdata.dart';
import 'package:new_app26/data/data.dart';
import 'package:velocity_x/velocity_x.dart';

class Mystore extends VxStore {
  //only for initializing
  //because thre are only two pages we are mainpulating
  late catalogmodel catalog;
  //with htis code we shouldnit again make the fuction singleton
  late cartmodel cart;
  Mystore() //initializing the value of catalogmodel and cart model
  {
    catalog = catalogmodel();
    cart = cartmodel();

    ///cart model lai singleton banaeko xa cart lai catalog dinu prxa tei bhaera tsle item haru nikalna sakxa
    cart.catalog = catalog;
    //converting every stateful widget to stateless widget and removing the sin
    //singleton fucntions
  }
}
//mutation to perform action
